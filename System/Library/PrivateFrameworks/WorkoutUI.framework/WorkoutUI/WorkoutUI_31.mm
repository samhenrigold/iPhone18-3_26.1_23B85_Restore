uint64_t closure #1 in closure #1 in closure #1 in closure #1 in AlertMultipleConfigurationView.body.getter@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, void **a3@<X2>, uint64_t a4@<X8>)
{
  v5 = a2;
  v8 = type metadata accessor for AlertConfigurationContext();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1[3];
  v21[2] = a1[2];
  v21[3] = v12;
  v21[4] = a1[4];
  v13 = a1[1];
  v21[0] = *a1;
  v21[1] = v13;
  v14 = type metadata accessor for AlertMultipleConfigurationView(0);
  AlertConfigurationView.viewForConfigurationType(_:sessionContext:)(v5, a3 + *(v14 + 32), a4);
  v15 = *a3;
  (*(v9 + 104))(v11, *MEMORY[0x277D7E4C0], v8);
  v16 = AlertConfigurationType.navigationTitle(activityType:context:)(v15, v11, v5);
  v18 = v17;
  (*(v9 + 8))(v11, v8);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA012_ConditionalD0VyAEyAEyAA9TupleViewVy07WorkoutB0011AlertsEntryG0V_AGyAH05PacerijG0VSg_AH04RaceijG0VSgtGSgtGAH013HeartRateZonejG0VGAEyA2JGGAEyAEyAH010TimeSplitsG0VSgAH08DistanceqG0VSgGAEyAH05TrackjG0VSgAH010PowerZonesjG0VSgGGGAH23NillableNavigationTitleVGMd, &_s7SwiftUI15ModifiedContentVyAA012_ConditionalD0VyAEyAEyAA9TupleViewVy07WorkoutB0011AlertsEntryG0V_AGyAH05PacerijG0VSg_AH04RaceijG0VSgtGSgtGAH013HeartRateZonejG0VGAEyA2JGGAEyAEyAH010TimeSplitsG0VSgAH08DistanceqG0VSgGAEyAH05TrackjG0VSgAH010PowerZonesjG0VSgGGGAH23NillableNavigationTitleVGMR);
  v20 = (a4 + *(result + 36));
  *v20 = v16;
  v20[1] = v18;
  return result;
}

uint64_t closure #2 in closure #1 in closure #1 in AlertMultipleConfigurationView.body.getter@<X0>(WorkoutUI::AlertConfigurationType a1@<W0>, uint64_t a2@<X1>, Swift::String *a3@<X8>)
{
  v6 = AlertConfigurationType.localizedTitle(activityType:)(*a2, a1);
  v8 = v7;
  __swift_project_boxed_opaque_existential_1((a2 + 24), *(a2 + 48));
  v10 = AlertConfigurationView.valueForConfigurationType(_:)(a1);
  result = v10._countAndFlagsBits;
  a3->_countAndFlagsBits = v6;
  a3->_object = v8;
  a3[1] = v10;
  return result;
}

uint64_t closure #2 in AlertMultipleConfigurationView.body.getter@<X0>(uint64_t a1@<X8>)
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
  v4._object = 0x800000020CB94110;
  v4._countAndFlagsBits = 0xD000000000000029;
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

uint64_t protocol witness for View.body.getter in conformance AlertMultipleConfigurationView()
{
  closure #2 in AlertMultipleConfigurationView.body.getter(v1);
  AlertMultipleConfigurationView.footerText.getter();
  lazy protocol witness table accessor for type String and conformance String();
  Text.init<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4TextV07WorkoutB031UnstackedSectionSpacingModifier33_B33B451D6D59C74C7A089BCD2EE64343LLVGMd, &_s7SwiftUI15ModifiedContentVyAA4TextV07WorkoutB031UnstackedSectionSpacingModifier33_B33B451D6D59C74C7A089BCD2EE64343LLVGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA9EmptyViewVAA7ForEachVySay07WorkoutB022AlertConfigurationTypeOGAjA08ModifiedD0VyAA14NavigationLinkVyAH0n5LabelF0VAA4ListVys5NeverOAMyACyACyACyAA05TupleF0VyAH011AlertsEntryF0V_AWyAH05PacertuF0VSg_AH04RacetuF0VSgtGSgtGAH013HeartRateZoneuF0VGACyA2YGGACyACyAH010TimeSplitsF0VSgAH014DistanceSplitsF0VSgGACyAH05TrackuF0VSgAH010PowerZonesuF0VSgGGGAH08NillableN5TitleVGGGAA31AccessibilityAttachmentModifierVGSgGGMd, &_s7SwiftUI19_ConditionalContentVyAA9EmptyViewVAA7ForEachVySay07WorkoutB022AlertConfigurationTypeOGAjA08ModifiedD0VyAA14NavigationLinkVyAH0n5LabelF0VAA4ListVys5NeverOAMyACyACyACyAA05TupleF0VyAH011AlertsEntryF0V_AWyAH05PacertuF0VSg_AH04RacetuF0VSgtGSgtGAH013HeartRateZoneuF0VGACyA2YGGACyACyAH010TimeSplitsF0VSgAH014DistanceSplitsF0VSgGACyAH05TrackuF0VSgAH010PowerZonesuF0VSgGGGAH08NillableN5TitleVGGGAA31AccessibilityAttachmentModifierVGSgGGMR);
  lazy protocol witness table accessor for type ModifiedContent<Text, UnstackedSectionSpacingModifier> and conformance <> ModifiedContent<A, B>();
  lazy protocol witness table accessor for type _ConditionalContent<EmptyView, ForEach<[AlertConfigurationType], AlertConfigurationType, ModifiedContent<NavigationLink<NavigationLabelView, List<Never, ModifiedContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<TupleView<(AlertsEntryView, TupleView<(PacerAlertsEntryView?, RaceAlertsEntryView?)>?)>, HeartRateZoneEntryView>, _ConditionalContent<AlertsEntryView, AlertsEntryView>>, _ConditionalContent<_ConditionalContent<TimeSplitsView?, DistanceSplitsView?>, _ConditionalContent<TrackEntryView?, PowerZonesEntryView?>>>, NillableNavigationTitle>>>, AccessibilityAttachmentModifier>?>> and conformance <> _ConditionalContent<A, B>();
  return Section<>.init(header:footer:content:)();
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<EmptyView, ForEach<[AlertConfigurationType], AlertConfigurationType, ModifiedContent<NavigationLink<NavigationLabelView, List<Never, ModifiedContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<TupleView<(AlertsEntryView, TupleView<(PacerAlertsEntryView?, RaceAlertsEntryView?)>?)>, HeartRateZoneEntryView>, _ConditionalContent<AlertsEntryView, AlertsEntryView>>, _ConditionalContent<_ConditionalContent<TimeSplitsView?, DistanceSplitsView?>, _ConditionalContent<TrackEntryView?, PowerZonesEntryView?>>>, NillableNavigationTitle>>>, AccessibilityAttachmentModifier>?>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<EmptyView, ForEach<[AlertConfigurationType], AlertConfigurationType, ModifiedContent<NavigationLink<NavigationLabelView, List<Never, ModifiedContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<TupleView<(AlertsEntryView, TupleView<(PacerAlertsEntryView?, RaceAlertsEntryView?)>?)>, HeartRateZoneEntryView>, _ConditionalContent<AlertsEntryView, AlertsEntryView>>, _ConditionalContent<_ConditionalContent<TimeSplitsView?, DistanceSplitsView?>, _ConditionalContent<TrackEntryView?, PowerZonesEntryView?>>>, NillableNavigationTitle>>>, AccessibilityAttachmentModifier>?>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<EmptyView, ForEach<[AlertConfigurationType], AlertConfigurationType, ModifiedContent<NavigationLink<NavigationLabelView, List<Never, ModifiedContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<TupleView<(AlertsEntryView, TupleView<(PacerAlertsEntryView?, RaceAlertsEntryView?)>?)>, HeartRateZoneEntryView>, _ConditionalContent<AlertsEntryView, AlertsEntryView>>, _ConditionalContent<_ConditionalContent<TimeSplitsView?, DistanceSplitsView?>, _ConditionalContent<TrackEntryView?, PowerZonesEntryView?>>>, NillableNavigationTitle>>>, AccessibilityAttachmentModifier>?>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA9EmptyViewVAA7ForEachVySay07WorkoutB022AlertConfigurationTypeOGAjA08ModifiedD0VyAA14NavigationLinkVyAH0n5LabelF0VAA4ListVys5NeverOAMyACyACyACyAA05TupleF0VyAH011AlertsEntryF0V_AWyAH05PacertuF0VSg_AH04RacetuF0VSgtGSgtGAH013HeartRateZoneuF0VGACyA2YGGACyACyAH010TimeSplitsF0VSgAH014DistanceSplitsF0VSgGACyAH05TrackuF0VSgAH010PowerZonesuF0VSgGGGAH08NillableN5TitleVGGGAA31AccessibilityAttachmentModifierVGSgGGMd, &_s7SwiftUI19_ConditionalContentVyAA9EmptyViewVAA7ForEachVySay07WorkoutB022AlertConfigurationTypeOGAjA08ModifiedD0VyAA14NavigationLinkVyAH0n5LabelF0VAA4ListVys5NeverOAMyACyACyACyAA05TupleF0VyAH011AlertsEntryF0V_AWyAH05PacertuF0VSg_AH04RacetuF0VSgtGSgtGAH013HeartRateZoneuF0VGACyA2YGGACyACyAH010TimeSplitsF0VSgAH014DistanceSplitsF0VSgGACyAH05TrackuF0VSgAH010PowerZonesuF0VSgGGGAH08NillableN5TitleVGGGAA31AccessibilityAttachmentModifierVGSgGGMR);
    lazy protocol witness table accessor for type ForEach<[AlertConfigurationType], AlertConfigurationType, ModifiedContent<NavigationLink<NavigationLabelView, List<Never, ModifiedContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<TupleView<(AlertsEntryView, TupleView<(PacerAlertsEntryView?, RaceAlertsEntryView?)>?)>, HeartRateZoneEntryView>, _ConditionalContent<AlertsEntryView, AlertsEntryView>>, _ConditionalContent<_ConditionalContent<TimeSplitsView?, DistanceSplitsView?>, _ConditionalContent<TrackEntryView?, PowerZonesEntryView?>>>, NillableNavigationTitle>>>, AccessibilityAttachmentModifier>?> and conformance <> ForEach<A, B, C>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<EmptyView, ForEach<[AlertConfigurationType], AlertConfigurationType, ModifiedContent<NavigationLink<NavigationLabelView, List<Never, ModifiedContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<TupleView<(AlertsEntryView, TupleView<(PacerAlertsEntryView?, RaceAlertsEntryView?)>?)>, HeartRateZoneEntryView>, _ConditionalContent<AlertsEntryView, AlertsEntryView>>, _ConditionalContent<_ConditionalContent<TimeSplitsView?, DistanceSplitsView?>, _ConditionalContent<TrackEntryView?, PowerZonesEntryView?>>>, NillableNavigationTitle>>>, AccessibilityAttachmentModifier>?>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ForEach<[AlertConfigurationType], AlertConfigurationType, ModifiedContent<NavigationLink<NavigationLabelView, List<Never, ModifiedContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<TupleView<(AlertsEntryView, TupleView<(PacerAlertsEntryView?, RaceAlertsEntryView?)>?)>, HeartRateZoneEntryView>, _ConditionalContent<AlertsEntryView, AlertsEntryView>>, _ConditionalContent<_ConditionalContent<TimeSplitsView?, DistanceSplitsView?>, _ConditionalContent<TrackEntryView?, PowerZonesEntryView?>>>, NillableNavigationTitle>>>, AccessibilityAttachmentModifier>?> and conformance <> ForEach<A, B, C>()
{
  result = lazy protocol witness table cache variable for type ForEach<[AlertConfigurationType], AlertConfigurationType, ModifiedContent<NavigationLink<NavigationLabelView, List<Never, ModifiedContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<TupleView<(AlertsEntryView, TupleView<(PacerAlertsEntryView?, RaceAlertsEntryView?)>?)>, HeartRateZoneEntryView>, _ConditionalContent<AlertsEntryView, AlertsEntryView>>, _ConditionalContent<_ConditionalContent<TimeSplitsView?, DistanceSplitsView?>, _ConditionalContent<TrackEntryView?, PowerZonesEntryView?>>>, NillableNavigationTitle>>>, AccessibilityAttachmentModifier>?> and conformance <> ForEach<A, B, C>;
  if (!lazy protocol witness table cache variable for type ForEach<[AlertConfigurationType], AlertConfigurationType, ModifiedContent<NavigationLink<NavigationLabelView, List<Never, ModifiedContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<TupleView<(AlertsEntryView, TupleView<(PacerAlertsEntryView?, RaceAlertsEntryView?)>?)>, HeartRateZoneEntryView>, _ConditionalContent<AlertsEntryView, AlertsEntryView>>, _ConditionalContent<_ConditionalContent<TimeSplitsView?, DistanceSplitsView?>, _ConditionalContent<TrackEntryView?, PowerZonesEntryView?>>>, NillableNavigationTitle>>>, AccessibilityAttachmentModifier>?> and conformance <> ForEach<A, B, C>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI7ForEachVySay07WorkoutB022AlertConfigurationTypeOGAfA15ModifiedContentVyAA14NavigationLinkVyAD0K9LabelViewVAA4ListVys5NeverOAIyAA012_ConditionalJ0VyASyASyAA05TupleN0VyAD011AlertsEntryN0V_AUyAD05PacerstN0VSg_AD04RacestN0VSgtGSgtGAD013HeartRateZonetN0VGASyA2WGGASyASyAD010TimeSplitsN0VSgAD014DistanceSplitsN0VSgGASyAD05TracktN0VSgAD010PowerZonestN0VSgGGGAD08NillableK5TitleVGGGAA31AccessibilityAttachmentModifierVGSgGMd, &_s7SwiftUI7ForEachVySay07WorkoutB022AlertConfigurationTypeOGAfA15ModifiedContentVyAA14NavigationLinkVyAD0K9LabelViewVAA4ListVys5NeverOAIyAA012_ConditionalJ0VyASyASyAA05TupleN0VyAD011AlertsEntryN0V_AUyAD05PacerstN0VSg_AD04RacestN0VSgtGSgtGAD013HeartRateZonetN0VGASyA2WGGASyASyAD010TimeSplitsN0VSgAD014DistanceSplitsN0VSgGASyAD05TracktN0VSgAD010PowerZonestN0VSgGGGAD08NillableK5TitleVGGGAA31AccessibilityAttachmentModifierVGSgGMR);
    lazy protocol witness table accessor for type ModifiedContent<NavigationLink<NavigationLabelView, List<Never, ModifiedContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<TupleView<(AlertsEntryView, TupleView<(PacerAlertsEntryView?, RaceAlertsEntryView?)>?)>, HeartRateZoneEntryView>, _ConditionalContent<AlertsEntryView, AlertsEntryView>>, _ConditionalContent<_ConditionalContent<TimeSplitsView?, DistanceSplitsView?>, _ConditionalContent<TrackEntryView?, PowerZonesEntryView?>>>, NillableNavigationTitle>>>, AccessibilityAttachmentModifier>? and conformance <A> A?();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ForEach<[AlertConfigurationType], AlertConfigurationType, ModifiedContent<NavigationLink<NavigationLabelView, List<Never, ModifiedContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<TupleView<(AlertsEntryView, TupleView<(PacerAlertsEntryView?, RaceAlertsEntryView?)>?)>, HeartRateZoneEntryView>, _ConditionalContent<AlertsEntryView, AlertsEntryView>>, _ConditionalContent<_ConditionalContent<TimeSplitsView?, DistanceSplitsView?>, _ConditionalContent<TrackEntryView?, PowerZonesEntryView?>>>, NillableNavigationTitle>>>, AccessibilityAttachmentModifier>?> and conformance <> ForEach<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<NavigationLink<NavigationLabelView, List<Never, ModifiedContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<TupleView<(AlertsEntryView, TupleView<(PacerAlertsEntryView?, RaceAlertsEntryView?)>?)>, HeartRateZoneEntryView>, _ConditionalContent<AlertsEntryView, AlertsEntryView>>, _ConditionalContent<_ConditionalContent<TimeSplitsView?, DistanceSplitsView?>, _ConditionalContent<TrackEntryView?, PowerZonesEntryView?>>>, NillableNavigationTitle>>>, AccessibilityAttachmentModifier>? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<NavigationLink<NavigationLabelView, List<Never, ModifiedContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<TupleView<(AlertsEntryView, TupleView<(PacerAlertsEntryView?, RaceAlertsEntryView?)>?)>, HeartRateZoneEntryView>, _ConditionalContent<AlertsEntryView, AlertsEntryView>>, _ConditionalContent<_ConditionalContent<TimeSplitsView?, DistanceSplitsView?>, _ConditionalContent<TrackEntryView?, PowerZonesEntryView?>>>, NillableNavigationTitle>>>, AccessibilityAttachmentModifier>? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type ModifiedContent<NavigationLink<NavigationLabelView, List<Never, ModifiedContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<TupleView<(AlertsEntryView, TupleView<(PacerAlertsEntryView?, RaceAlertsEntryView?)>?)>, HeartRateZoneEntryView>, _ConditionalContent<AlertsEntryView, AlertsEntryView>>, _ConditionalContent<_ConditionalContent<TimeSplitsView?, DistanceSplitsView?>, _ConditionalContent<TrackEntryView?, PowerZonesEntryView?>>>, NillableNavigationTitle>>>, AccessibilityAttachmentModifier>? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA14NavigationLinkVy07WorkoutB00E9LabelViewVAA4ListVys5NeverOACyAA012_ConditionalD0VyANyANyAA05TupleI0VyAF011AlertsEntryI0V_APyAF05PacernoI0VSg_AF04RacenoI0VSgtGSgtGAF013HeartRateZoneoI0VGANyA2RGGANyANyAF010TimeSplitsI0VSgAF08DistancevI0VSgGANyAF05TrackoI0VSgAF010PowerZonesoI0VSgGGGAF08NillableE5TitleVGGGAA31AccessibilityAttachmentModifierVGSgMd, &_s7SwiftUI15ModifiedContentVyAA14NavigationLinkVy07WorkoutB00E9LabelViewVAA4ListVys5NeverOACyAA012_ConditionalD0VyANyANyAA05TupleI0VyAF011AlertsEntryI0V_APyAF05PacernoI0VSg_AF04RacenoI0VSgtGSgtGAF013HeartRateZoneoI0VGANyA2RGGANyANyAF010TimeSplitsI0VSgAF08DistancevI0VSgGANyAF05TrackoI0VSgAF010PowerZonesoI0VSgGGGAF08NillableE5TitleVGGGAA31AccessibilityAttachmentModifierVGSgMR);
    lazy protocol witness table accessor for type ModifiedContent<NavigationLink<NavigationLabelView, List<Never, ModifiedContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<TupleView<(AlertsEntryView, TupleView<(PacerAlertsEntryView?, RaceAlertsEntryView?)>?)>, HeartRateZoneEntryView>, _ConditionalContent<AlertsEntryView, AlertsEntryView>>, _ConditionalContent<_ConditionalContent<TimeSplitsView?, DistanceSplitsView?>, _ConditionalContent<TrackEntryView?, PowerZonesEntryView?>>>, NillableNavigationTitle>>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<NavigationLink<NavigationLabelView, List<Never, ModifiedContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<TupleView<(AlertsEntryView, TupleView<(PacerAlertsEntryView?, RaceAlertsEntryView?)>?)>, HeartRateZoneEntryView>, _ConditionalContent<AlertsEntryView, AlertsEntryView>>, _ConditionalContent<_ConditionalContent<TimeSplitsView?, DistanceSplitsView?>, _ConditionalContent<TrackEntryView?, PowerZonesEntryView?>>>, NillableNavigationTitle>>>, AccessibilityAttachmentModifier>? and conformance <A> A?);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<NavigationLink<NavigationLabelView, List<Never, ModifiedContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<TupleView<(AlertsEntryView, TupleView<(PacerAlertsEntryView?, RaceAlertsEntryView?)>?)>, HeartRateZoneEntryView>, _ConditionalContent<AlertsEntryView, AlertsEntryView>>, _ConditionalContent<_ConditionalContent<TimeSplitsView?, DistanceSplitsView?>, _ConditionalContent<TrackEntryView?, PowerZonesEntryView?>>>, NillableNavigationTitle>>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<NavigationLink<NavigationLabelView, List<Never, ModifiedContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<TupleView<(AlertsEntryView, TupleView<(PacerAlertsEntryView?, RaceAlertsEntryView?)>?)>, HeartRateZoneEntryView>, _ConditionalContent<AlertsEntryView, AlertsEntryView>>, _ConditionalContent<_ConditionalContent<TimeSplitsView?, DistanceSplitsView?>, _ConditionalContent<TrackEntryView?, PowerZonesEntryView?>>>, NillableNavigationTitle>>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<NavigationLink<NavigationLabelView, List<Never, ModifiedContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<TupleView<(AlertsEntryView, TupleView<(PacerAlertsEntryView?, RaceAlertsEntryView?)>?)>, HeartRateZoneEntryView>, _ConditionalContent<AlertsEntryView, AlertsEntryView>>, _ConditionalContent<_ConditionalContent<TimeSplitsView?, DistanceSplitsView?>, _ConditionalContent<TrackEntryView?, PowerZonesEntryView?>>>, NillableNavigationTitle>>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA14NavigationLinkVy07WorkoutB00E9LabelViewVAA4ListVys5NeverOACyAA012_ConditionalD0VyANyANyAA05TupleI0VyAF011AlertsEntryI0V_APyAF05PacernoI0VSg_AF04RacenoI0VSgtGSgtGAF013HeartRateZoneoI0VGANyA2RGGANyANyAF010TimeSplitsI0VSgAF08DistancevI0VSgGANyAF05TrackoI0VSgAF010PowerZonesoI0VSgGGGAF08NillableE5TitleVGGGAA31AccessibilityAttachmentModifierVGMd, &_s7SwiftUI15ModifiedContentVyAA14NavigationLinkVy07WorkoutB00E9LabelViewVAA4ListVys5NeverOACyAA012_ConditionalD0VyANyANyAA05TupleI0VyAF011AlertsEntryI0V_APyAF05PacernoI0VSg_AF04RacenoI0VSgtGSgtGAF013HeartRateZoneoI0VGANyA2RGGANyANyAF010TimeSplitsI0VSgAF08DistancevI0VSgGANyAF05TrackoI0VSgAF010PowerZonesoI0VSgGGGAF08NillableE5TitleVGGGAA31AccessibilityAttachmentModifierVGMR);
    lazy protocol witness table accessor for type NavigationLink<NavigationLabelView, List<Never, ModifiedContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<TupleView<(AlertsEntryView, TupleView<(PacerAlertsEntryView?, RaceAlertsEntryView?)>?)>, HeartRateZoneEntryView>, _ConditionalContent<AlertsEntryView, AlertsEntryView>>, _ConditionalContent<_ConditionalContent<TimeSplitsView?, DistanceSplitsView?>, _ConditionalContent<TrackEntryView?, PowerZonesEntryView?>>>, NillableNavigationTitle>>> and conformance NavigationLink<A, B>(&lazy protocol witness table cache variable for type NavigationLink<NavigationLabelView, List<Never, ModifiedContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<TupleView<(AlertsEntryView, TupleView<(PacerAlertsEntryView?, RaceAlertsEntryView?)>?)>, HeartRateZoneEntryView>, _ConditionalContent<AlertsEntryView, AlertsEntryView>>, _ConditionalContent<_ConditionalContent<TimeSplitsView?, DistanceSplitsView?>, _ConditionalContent<TrackEntryView?, PowerZonesEntryView?>>>, NillableNavigationTitle>>> and conformance NavigationLink<A, B>, &_s7SwiftUI14NavigationLinkVy07WorkoutB00C9LabelViewVAA4ListVys5NeverOAA15ModifiedContentVyAA012_ConditionalK0VyANyANyAA05TupleG0VyAD011AlertsEntryG0V_APyAD05PacernoG0VSg_AD04RacenoG0VSgtGSgtGAD013HeartRateZoneoG0VGANyA2RGGANyANyAD010TimeSplitsG0VSgAD08DistancevG0VSgGANyAD05TrackoG0VSgAD010PowerZonesoG0VSgGGGAD08NillableC5TitleVGGGMd, &_s7SwiftUI14NavigationLinkVy07WorkoutB00C9LabelViewVAA4ListVys5NeverOAA15ModifiedContentVyAA012_ConditionalK0VyANyANyAA05TupleG0VyAD011AlertsEntryG0V_APyAD05PacernoG0VSg_AD04RacenoG0VSgtGSgtGAD013HeartRateZoneoG0VGANyA2RGGANyANyAD010TimeSplitsG0VSgAD08DistancevG0VSgGANyAD05TrackoG0VSgAD010PowerZonesoG0VSgGGGAD08NillableC5TitleVGGGMR, MEMORY[0x277CDD938]);
    _s7SwiftUI31AccessibilityAttachmentModifierVAcA04ViewE0AAWlTm_7(&lazy protocol witness table cache variable for type AccessibilityAttachmentModifier and conformance AccessibilityAttachmentModifier, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<NavigationLink<NavigationLabelView, List<Never, ModifiedContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<TupleView<(AlertsEntryView, TupleView<(PacerAlertsEntryView?, RaceAlertsEntryView?)>?)>, HeartRateZoneEntryView>, _ConditionalContent<AlertsEntryView, AlertsEntryView>>, _ConditionalContent<_ConditionalContent<TimeSplitsView?, DistanceSplitsView?>, _ConditionalContent<TrackEntryView?, PowerZonesEntryView?>>>, NillableNavigationTitle>>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

double closure #1 in NavigationLabelView.body.getter@<D0>(uint64_t a5@<X8>)
{
  lazy protocol witness table accessor for type String and conformance String();

  v6 = Text.init<A>(_:)();
  v8 = v7;
  v10 = v9;
  static Font.subheadline.getter();
  v11 = Text.font(_:)();
  v32 = v12;
  v33 = v11;
  v31 = v13;
  v34 = v14;

  outlined consume of Text.Storage(v6, v8, v10 & 1);

  v15 = Text.init<A>(_:)();
  v17 = v16;
  LOBYTE(v8) = v18;
  static Font.footnote.getter();
  v19 = Text.font(_:)();
  v21 = v20;
  LOBYTE(v6) = v22;

  outlined consume of Text.Storage(v15, v17, v8 & 1);

  static Color.secondary.getter();
  v23 = Text.foregroundColor(_:)();
  v25 = v24;
  v27 = v26;
  v29 = v28;

  outlined consume of Text.Storage(v19, v21, v6 & 1);

  *a5 = v33;
  *(a5 + 8) = v32;
  *(a5 + 16) = v31 & 1;
  *(a5 + 24) = v34;
  *(a5 + 32) = v23;
  *(a5 + 40) = v25;
  *(a5 + 48) = v27 & 1;
  *(a5 + 56) = v29;
  outlined copy of Text.Storage(v33, v32, v31 & 1);

  outlined copy of Text.Storage(v23, v25, v27 & 1);

  outlined consume of Text.Storage(v23, v25, v27 & 1);

  outlined consume of Text.Storage(v33, v32, v31 & 1);

  return result;
}

double protocol witness for View.body.getter in conformance NavigationLabelView@<D0>(uint64_t a2@<X8>)
{
  v3 = static HorizontalAlignment.leading.getter();
  v14 = 1;
  closure #1 in NavigationLabelView.body.getter(&v9);
  v15 = v9;
  v16 = v10;
  v17 = v11;
  v18 = v12;
  v19[0] = v9;
  v19[1] = v10;
  v19[2] = v11;
  v19[3] = v12;
  outlined init with copy of TupleView<(Text, ModifiedContent<Text, BodyHyphenation>)>(&v15, &v8);
  outlined destroy of TupleView<(Text, ModifiedContent<Text, BodyHyphenation>)>(v19);
  *&v13[55] = v18;
  *&v13[39] = v17;
  *&v13[23] = v16;
  *&v13[7] = v15;
  v4 = *v13;
  *(a2 + 33) = *&v13[16];
  result = *&v13[32];
  v6 = *&v13[48];
  *(a2 + 49) = *&v13[32];
  *(a2 + 65) = v6;
  v7 = v14;
  *a2 = v3;
  *(a2 + 8) = 0;
  *(a2 + 16) = v7;
  *(a2 + 80) = *&v13[63];
  *(a2 + 17) = v4;
  return result;
}

uint64_t outlined init with copy of AlertMultipleConfigurationView(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AlertMultipleConfigurationView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of AlertMultipleConfigurationView(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AlertMultipleConfigurationView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in closure #1 in AlertMultipleConfigurationView.body.getter@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for AlertMultipleConfigurationView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return closure #1 in closure #1 in AlertMultipleConfigurationView.body.getter(a1, v6, a2);
}

uint64_t outlined init with copy of AlertConfigurationStateManaging(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<TupleView<(AlertsEntryView, TupleView<(PacerAlertsEntryView?, RaceAlertsEntryView?)>?)>, HeartRateZoneEntryView>, _ConditionalContent<AlertsEntryView, AlertsEntryView>>, _ConditionalContent<_ConditionalContent<TimeSplitsView?, DistanceSplitsView?>, _ConditionalContent<TrackEntryView?, PowerZonesEntryView?>>>, NillableNavigationTitle> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<TupleView<(AlertsEntryView, TupleView<(PacerAlertsEntryView?, RaceAlertsEntryView?)>?)>, HeartRateZoneEntryView>, _ConditionalContent<AlertsEntryView, AlertsEntryView>>, _ConditionalContent<_ConditionalContent<TimeSplitsView?, DistanceSplitsView?>, _ConditionalContent<TrackEntryView?, PowerZonesEntryView?>>>, NillableNavigationTitle> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<TupleView<(AlertsEntryView, TupleView<(PacerAlertsEntryView?, RaceAlertsEntryView?)>?)>, HeartRateZoneEntryView>, _ConditionalContent<AlertsEntryView, AlertsEntryView>>, _ConditionalContent<_ConditionalContent<TimeSplitsView?, DistanceSplitsView?>, _ConditionalContent<TrackEntryView?, PowerZonesEntryView?>>>, NillableNavigationTitle> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA012_ConditionalD0VyAEyAEyAA9TupleViewVy07WorkoutB0011AlertsEntryG0V_AGyAH05PacerijG0VSg_AH04RaceijG0VSgtGSgtGAH013HeartRateZonejG0VGAEyA2JGGAEyAEyAH010TimeSplitsG0VSgAH08DistanceqG0VSgGAEyAH05TrackjG0VSgAH010PowerZonesjG0VSgGGGAH23NillableNavigationTitleVGMd, &_s7SwiftUI15ModifiedContentVyAA012_ConditionalD0VyAEyAEyAA9TupleViewVy07WorkoutB0011AlertsEntryG0V_AGyAH05PacerijG0VSg_AH04RaceijG0VSgtGSgtGAH013HeartRateZonejG0VGAEyA2JGGAEyAEyAH010TimeSplitsG0VSgAH08DistanceqG0VSgGAEyAH05TrackjG0VSgAH010PowerZonesjG0VSgGGGAH23NillableNavigationTitleVGMR);
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<TupleView<(AlertsEntryView, TupleView<(PacerAlertsEntryView?, RaceAlertsEntryView?)>?)>, HeartRateZoneEntryView>, _ConditionalContent<AlertsEntryView, AlertsEntryView>>, _ConditionalContent<_ConditionalContent<TimeSplitsView?, DistanceSplitsView?>, _ConditionalContent<TrackEntryView?, PowerZonesEntryView?>>> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type NillableNavigationTitle and conformance NillableNavigationTitle();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<TupleView<(AlertsEntryView, TupleView<(PacerAlertsEntryView?, RaceAlertsEntryView?)>?)>, HeartRateZoneEntryView>, _ConditionalContent<AlertsEntryView, AlertsEntryView>>, _ConditionalContent<_ConditionalContent<TimeSplitsView?, DistanceSplitsView?>, _ConditionalContent<TrackEntryView?, PowerZonesEntryView?>>>, NillableNavigationTitle> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<TupleView<(AlertsEntryView, TupleView<(PacerAlertsEntryView?, RaceAlertsEntryView?)>?)>, HeartRateZoneEntryView>, _ConditionalContent<AlertsEntryView, AlertsEntryView>>, _ConditionalContent<_ConditionalContent<TimeSplitsView?, DistanceSplitsView?>, _ConditionalContent<TrackEntryView?, PowerZonesEntryView?>>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<_ConditionalContent<TupleView<(AlertsEntryView, TupleView<(PacerAlertsEntryView?, RaceAlertsEntryView?)>?)>, HeartRateZoneEntryView>, _ConditionalContent<AlertsEntryView, AlertsEntryView>>, _ConditionalContent<_ConditionalContent<TimeSplitsView?, DistanceSplitsView?>, _ConditionalContent<TrackEntryView?, PowerZonesEntryView?>>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<_ConditionalContent<TupleView<(AlertsEntryView, TupleView<(PacerAlertsEntryView?, RaceAlertsEntryView?)>?)>, HeartRateZoneEntryView>, _ConditionalContent<AlertsEntryView, AlertsEntryView>>, _ConditionalContent<_ConditionalContent<TimeSplitsView?, DistanceSplitsView?>, _ConditionalContent<TrackEntryView?, PowerZonesEntryView?>>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyACyACyAA9TupleViewVy07WorkoutB0011AlertsEntryF0V_AEyAF05PacerhiF0VSg_AF04RacehiF0VSgtGSgtGAF013HeartRateZoneiF0VGACyA2HGGACyACyAF010TimeSplitsF0VSgAF08DistancepF0VSgGACyAF05TrackiF0VSgAF010PowerZonesiF0VSgGGGMd, &_s7SwiftUI19_ConditionalContentVyACyACyAA9TupleViewVy07WorkoutB0011AlertsEntryF0V_AEyAF05PacerhiF0VSg_AF04RacehiF0VSgtGSgtGAF013HeartRateZoneiF0VGACyA2HGGACyACyAF010TimeSplitsF0VSgAF08DistancepF0VSgGACyAF05TrackiF0VSgAF010PowerZonesiF0VSgGGGMR);
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<TupleView<(AlertsEntryView, TupleView<(PacerAlertsEntryView?, RaceAlertsEntryView?)>?)>, HeartRateZoneEntryView>, _ConditionalContent<AlertsEntryView, AlertsEntryView>> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<TimeSplitsView?, DistanceSplitsView?>, _ConditionalContent<TrackEntryView?, PowerZonesEntryView?>> and conformance <> _ConditionalContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<_ConditionalContent<TupleView<(AlertsEntryView, TupleView<(PacerAlertsEntryView?, RaceAlertsEntryView?)>?)>, HeartRateZoneEntryView>, _ConditionalContent<AlertsEntryView, AlertsEntryView>>, _ConditionalContent<_ConditionalContent<TimeSplitsView?, DistanceSplitsView?>, _ConditionalContent<TrackEntryView?, PowerZonesEntryView?>>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<TupleView<(AlertsEntryView, TupleView<(PacerAlertsEntryView?, RaceAlertsEntryView?)>?)>, HeartRateZoneEntryView>, _ConditionalContent<AlertsEntryView, AlertsEntryView>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<TupleView<(AlertsEntryView, TupleView<(PacerAlertsEntryView?, RaceAlertsEntryView?)>?)>, HeartRateZoneEntryView>, _ConditionalContent<AlertsEntryView, AlertsEntryView>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<TupleView<(AlertsEntryView, TupleView<(PacerAlertsEntryView?, RaceAlertsEntryView?)>?)>, HeartRateZoneEntryView>, _ConditionalContent<AlertsEntryView, AlertsEntryView>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyACyAA9TupleViewVy07WorkoutB0011AlertsEntryF0V_AEyAF05PacerhiF0VSg_AF04RacehiF0VSgtGSgtGAF013HeartRateZoneiF0VGACyA2HGGMd, &_s7SwiftUI19_ConditionalContentVyACyAA9TupleViewVy07WorkoutB0011AlertsEntryF0V_AEyAF05PacerhiF0VSg_AF04RacehiF0VSgtGSgtGAF013HeartRateZoneiF0VGACyA2HGGMR);
    lazy protocol witness table accessor for type _ConditionalContent<TupleView<(AlertsEntryView, TupleView<(PacerAlertsEntryView?, RaceAlertsEntryView?)>?)>, HeartRateZoneEntryView> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type _ConditionalContent<AlertsEntryView, AlertsEntryView> and conformance <> _ConditionalContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<TupleView<(AlertsEntryView, TupleView<(PacerAlertsEntryView?, RaceAlertsEntryView?)>?)>, HeartRateZoneEntryView>, _ConditionalContent<AlertsEntryView, AlertsEntryView>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<TupleView<(AlertsEntryView, TupleView<(PacerAlertsEntryView?, RaceAlertsEntryView?)>?)>, HeartRateZoneEntryView> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<TupleView<(AlertsEntryView, TupleView<(PacerAlertsEntryView?, RaceAlertsEntryView?)>?)>, HeartRateZoneEntryView> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<TupleView<(AlertsEntryView, TupleView<(PacerAlertsEntryView?, RaceAlertsEntryView?)>?)>, HeartRateZoneEntryView> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA9TupleViewVy07WorkoutB0011AlertsEntryF0V_AEyAF05PacerhiF0VSg_AF04RacehiF0VSgtGSgtGAF013HeartRateZoneiF0VGMd, &_s7SwiftUI19_ConditionalContentVyAA9TupleViewVy07WorkoutB0011AlertsEntryF0V_AEyAF05PacerhiF0VSg_AF04RacehiF0VSgtGSgtGAF013HeartRateZoneiF0VGMR);
    lazy protocol witness table accessor for type NavigationLink<NavigationLabelView, List<Never, ModifiedContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<TupleView<(AlertsEntryView, TupleView<(PacerAlertsEntryView?, RaceAlertsEntryView?)>?)>, HeartRateZoneEntryView>, _ConditionalContent<AlertsEntryView, AlertsEntryView>>, _ConditionalContent<_ConditionalContent<TimeSplitsView?, DistanceSplitsView?>, _ConditionalContent<TrackEntryView?, PowerZonesEntryView?>>>, NillableNavigationTitle>>> and conformance NavigationLink<A, B>(&lazy protocol witness table cache variable for type TupleView<(AlertsEntryView, TupleView<(PacerAlertsEntryView?, RaceAlertsEntryView?)>?)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVy07WorkoutB0011AlertsEntryD0V_ACyAD05PacerfgD0VSg_AD04RacefgD0VSgtGSgtGMd, &_s7SwiftUI9TupleViewVy07WorkoutB0011AlertsEntryD0V_ACyAD05PacerfgD0VSg_AD04RacefgD0VSgtGSgtGMR, MEMORY[0x277CE14C0]);
    _s7SwiftUI31AccessibilityAttachmentModifierVAcA04ViewE0AAWlTm_7(&lazy protocol witness table cache variable for type HeartRateZoneEntryView and conformance HeartRateZoneEntryView, type metadata accessor for HeartRateZoneEntryView, &protocol conformance descriptor for HeartRateZoneEntryView);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<TupleView<(AlertsEntryView, TupleView<(PacerAlertsEntryView?, RaceAlertsEntryView?)>?)>, HeartRateZoneEntryView> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<AlertsEntryView, AlertsEntryView> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<AlertsEntryView, AlertsEntryView> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<AlertsEntryView, AlertsEntryView> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB015AlertsEntryViewVAFGMd, &_s7SwiftUI19_ConditionalContentVy07WorkoutB015AlertsEntryViewVAFGMR);
    _s7SwiftUI31AccessibilityAttachmentModifierVAcA04ViewE0AAWlTm_7(&lazy protocol witness table cache variable for type AlertsEntryView and conformance AlertsEntryView, type metadata accessor for AlertsEntryView, &protocol conformance descriptor for AlertsEntryView);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<AlertsEntryView, AlertsEntryView> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<TimeSplitsView?, DistanceSplitsView?>, _ConditionalContent<TrackEntryView?, PowerZonesEntryView?>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<TimeSplitsView?, DistanceSplitsView?>, _ConditionalContent<TrackEntryView?, PowerZonesEntryView?>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<TimeSplitsView?, DistanceSplitsView?>, _ConditionalContent<TrackEntryView?, PowerZonesEntryView?>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyACy07WorkoutB014TimeSplitsViewVSgAD08DistancegH0VSgGACyAD010TrackEntryH0VSgAD010PowerZoneskH0VSgGGMd, &_s7SwiftUI19_ConditionalContentVyACy07WorkoutB014TimeSplitsViewVSgAD08DistancegH0VSgGACyAD010TrackEntryH0VSgAD010PowerZoneskH0VSgGGMR);
    lazy protocol witness table accessor for type _ConditionalContent<TimeSplitsView?, DistanceSplitsView?> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type _ConditionalContent<TrackEntryView?, PowerZonesEntryView?> and conformance <> _ConditionalContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<TimeSplitsView?, DistanceSplitsView?>, _ConditionalContent<TrackEntryView?, PowerZonesEntryView?>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<TimeSplitsView?, DistanceSplitsView?> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<TimeSplitsView?, DistanceSplitsView?> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<TimeSplitsView?, DistanceSplitsView?> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB014TimeSplitsViewVSgAD08DistancegH0VSgGMd, &_s7SwiftUI19_ConditionalContentVy07WorkoutB014TimeSplitsViewVSgAD08DistancegH0VSgGMR);
    lazy protocol witness table accessor for type TimeSplitsView? and conformance <A> A?();
    lazy protocol witness table accessor for type DistanceSplitsView? and conformance <A> A?();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<TimeSplitsView?, DistanceSplitsView?> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TimeSplitsView? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type TimeSplitsView? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type TimeSplitsView? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s9WorkoutUI14TimeSplitsViewVSgMd, &_s9WorkoutUI14TimeSplitsViewVSgMR);
    lazy protocol witness table accessor for type TimeSplitsView and conformance TimeSplitsView();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TimeSplitsView? and conformance <A> A?);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TimeSplitsView and conformance TimeSplitsView()
{
  result = lazy protocol witness table cache variable for type TimeSplitsView and conformance TimeSplitsView;
  if (!lazy protocol witness table cache variable for type TimeSplitsView and conformance TimeSplitsView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TimeSplitsView and conformance TimeSplitsView);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DistanceSplitsView? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type DistanceSplitsView? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type DistanceSplitsView? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s9WorkoutUI18DistanceSplitsViewVSgMd, &_s9WorkoutUI18DistanceSplitsViewVSgMR);
    lazy protocol witness table accessor for type DistanceSplitsView and conformance DistanceSplitsView();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DistanceSplitsView? and conformance <A> A?);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DistanceSplitsView and conformance DistanceSplitsView()
{
  result = lazy protocol witness table cache variable for type DistanceSplitsView and conformance DistanceSplitsView;
  if (!lazy protocol witness table cache variable for type DistanceSplitsView and conformance DistanceSplitsView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DistanceSplitsView and conformance DistanceSplitsView);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<TrackEntryView?, PowerZonesEntryView?> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<TrackEntryView?, PowerZonesEntryView?> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<TrackEntryView?, PowerZonesEntryView?> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB014TrackEntryViewVSgAD010PowerZonesgH0VSgGMd, &_s7SwiftUI19_ConditionalContentVy07WorkoutB014TrackEntryViewVSgAD010PowerZonesgH0VSgGMR);
    lazy protocol witness table accessor for type TrackEntryView? and conformance <A> A?();
    lazy protocol witness table accessor for type PowerZonesEntryView? and conformance <A> A?();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<TrackEntryView?, PowerZonesEntryView?> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TrackEntryView? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type TrackEntryView? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type TrackEntryView? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s9WorkoutUI14TrackEntryViewVSgMd, &_s9WorkoutUI14TrackEntryViewVSgMR);
    lazy protocol witness table accessor for type TrackEntryView and conformance TrackEntryView();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TrackEntryView? and conformance <A> A?);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TrackEntryView and conformance TrackEntryView()
{
  result = lazy protocol witness table cache variable for type TrackEntryView and conformance TrackEntryView;
  if (!lazy protocol witness table cache variable for type TrackEntryView and conformance TrackEntryView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TrackEntryView and conformance TrackEntryView);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PowerZonesEntryView? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type PowerZonesEntryView? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type PowerZonesEntryView? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s9WorkoutUI19PowerZonesEntryViewVSgMd, &_s9WorkoutUI19PowerZonesEntryViewVSgMR);
    _s7SwiftUI31AccessibilityAttachmentModifierVAcA04ViewE0AAWlTm_7(&lazy protocol witness table cache variable for type PowerZonesEntryView and conformance PowerZonesEntryView, type metadata accessor for PowerZonesEntryView, &protocol conformance descriptor for PowerZonesEntryView);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PowerZonesEntryView? and conformance <A> A?);
  }

  return result;
}

uint64_t _s7SwiftUI31AccessibilityAttachmentModifierVAcA04ViewE0AAWlTm_7(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t lazy protocol witness table accessor for type NavigationLabelView and conformance NavigationLabelView()
{
  result = lazy protocol witness table cache variable for type NavigationLabelView and conformance NavigationLabelView;
  if (!lazy protocol witness table cache variable for type NavigationLabelView and conformance NavigationLabelView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NavigationLabelView and conformance NavigationLabelView);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NavigationLabelView(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for NavigationLabelView(uint64_t result, int a2, int a3)
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

unint64_t lazy protocol witness table accessor for type Section<ModifiedContent<Text, UnstackedSectionSpacingModifier>, _ConditionalContent<EmptyView, ForEach<[AlertConfigurationType], AlertConfigurationType, ModifiedContent<NavigationLink<NavigationLabelView, List<Never, ModifiedContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<TupleView<(AlertsEntryView, TupleView<(PacerAlertsEntryView?, RaceAlertsEntryView?)>?)>, HeartRateZoneEntryView>, _ConditionalContent<AlertsEntryView, AlertsEntryView>>, _ConditionalContent<_ConditionalContent<TimeSplitsView?, DistanceSplitsView?>, _ConditionalContent<TrackEntryView?, PowerZonesEntryView?>>>, NillableNavigationTitle>>>, AccessibilityAttachmentModifier>?>>, Text> and conformance <> Section<A, B, C>()
{
  result = lazy protocol witness table cache variable for type Section<ModifiedContent<Text, UnstackedSectionSpacingModifier>, _ConditionalContent<EmptyView, ForEach<[AlertConfigurationType], AlertConfigurationType, ModifiedContent<NavigationLink<NavigationLabelView, List<Never, ModifiedContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<TupleView<(AlertsEntryView, TupleView<(PacerAlertsEntryView?, RaceAlertsEntryView?)>?)>, HeartRateZoneEntryView>, _ConditionalContent<AlertsEntryView, AlertsEntryView>>, _ConditionalContent<_ConditionalContent<TimeSplitsView?, DistanceSplitsView?>, _ConditionalContent<TrackEntryView?, PowerZonesEntryView?>>>, NillableNavigationTitle>>>, AccessibilityAttachmentModifier>?>>, Text> and conformance <> Section<A, B, C>;
  if (!lazy protocol witness table cache variable for type Section<ModifiedContent<Text, UnstackedSectionSpacingModifier>, _ConditionalContent<EmptyView, ForEach<[AlertConfigurationType], AlertConfigurationType, ModifiedContent<NavigationLink<NavigationLabelView, List<Never, ModifiedContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<TupleView<(AlertsEntryView, TupleView<(PacerAlertsEntryView?, RaceAlertsEntryView?)>?)>, HeartRateZoneEntryView>, _ConditionalContent<AlertsEntryView, AlertsEntryView>>, _ConditionalContent<_ConditionalContent<TimeSplitsView?, DistanceSplitsView?>, _ConditionalContent<TrackEntryView?, PowerZonesEntryView?>>>, NillableNavigationTitle>>>, AccessibilityAttachmentModifier>?>>, Text> and conformance <> Section<A, B, C>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI7SectionVyAA15ModifiedContentVyAA4TextV07WorkoutB009UnstackedC15SpacingModifier33_B33B451D6D59C74C7A089BCD2EE64343LLVGAA012_ConditionalE0VyAA9EmptyViewVAA7ForEachVySayAH22AlertConfigurationTypeOGAtEyAA14NavigationLinkVyAH015NavigationLabelV0VAA4ListVys5NeverOAEyANyANyANyAA05TupleV0VyAH011AlertsEntryV0V_A3_yAH016PacerAlertsEntryV0VSg_AH015RaceAlertsEntryV0VSgtGSgtGAH018HeartRateZoneEntryV0VGANyA5_A5_GGANyANyAH010TimeSplitsV0VSgAH014DistanceSplitsV0VSgGANyAH010TrackEntryV0VSgAH015PowerZonesEntryV0VSgGGGAH23NillableNavigationTitleVGGGAA023AccessibilityAttachmentJ0VGSgGGAGGMd, ":L\t");
    lazy protocol witness table accessor for type ModifiedContent<Text, UnstackedSectionSpacingModifier> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type _ConditionalContent<EmptyView, ForEach<[AlertConfigurationType], AlertConfigurationType, ModifiedContent<NavigationLink<NavigationLabelView, List<Never, ModifiedContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<TupleView<(AlertsEntryView, TupleView<(PacerAlertsEntryView?, RaceAlertsEntryView?)>?)>, HeartRateZoneEntryView>, _ConditionalContent<AlertsEntryView, AlertsEntryView>>, _ConditionalContent<_ConditionalContent<TimeSplitsView?, DistanceSplitsView?>, _ConditionalContent<TrackEntryView?, PowerZonesEntryView?>>>, NillableNavigationTitle>>>, AccessibilityAttachmentModifier>?>> and conformance <> _ConditionalContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Section<ModifiedContent<Text, UnstackedSectionSpacingModifier>, _ConditionalContent<EmptyView, ForEach<[AlertConfigurationType], AlertConfigurationType, ModifiedContent<NavigationLink<NavigationLabelView, List<Never, ModifiedContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<TupleView<(AlertsEntryView, TupleView<(PacerAlertsEntryView?, RaceAlertsEntryView?)>?)>, HeartRateZoneEntryView>, _ConditionalContent<AlertsEntryView, AlertsEntryView>>, _ConditionalContent<_ConditionalContent<TimeSplitsView?, DistanceSplitsView?>, _ConditionalContent<TrackEntryView?, PowerZonesEntryView?>>>, NillableNavigationTitle>>>, AccessibilityAttachmentModifier>?>>, Text> and conformance <> Section<A, B, C>);
  }

  return result;
}

uint64_t outlined init with copy of TupleView<(Text, ModifiedContent<Text, BodyHyphenation>)>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA4TextV_AA15ModifiedContentVyAE07WorkoutB015BodyHyphenationVGtGMd, &_s7SwiftUI9TupleViewVyAA4TextV_AA15ModifiedContentVyAE07WorkoutB015BodyHyphenationVGtGMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of TupleView<(Text, ModifiedContent<Text, BodyHyphenation>)>(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA4TextV_AA15ModifiedContentVyAE07WorkoutB015BodyHyphenationVGtGMd, &_s7SwiftUI9TupleViewVyAA4TextV_AA15ModifiedContentVyAE07WorkoutB015BodyHyphenationVGtGMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t lazy protocol witness table accessor for type NavigationLink<NavigationLabelView, List<Never, ModifiedContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<TupleView<(AlertsEntryView, TupleView<(PacerAlertsEntryView?, RaceAlertsEntryView?)>?)>, HeartRateZoneEntryView>, _ConditionalContent<AlertsEntryView, AlertsEntryView>>, _ConditionalContent<_ConditionalContent<TimeSplitsView?, DistanceSplitsView?>, _ConditionalContent<TrackEntryView?, PowerZonesEntryView?>>>, NillableNavigationTitle>>> and conformance NavigationLink<A, B>(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t protocol witness for Identifiable.id.getter in conformance PowerZonesBarChartElement@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

void PowerZonesBarChart.init(livePowerZones:)(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v30 = type metadata accessor for PowerZonesBarChartElement(0);
  v5 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v7 = (&v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = MEMORY[0x277D84F90];
  if (!a1)
  {
    v14 = 0;
    v15 = 1;
    v16 = 1;
LABEL_24:
    *a2 = v8;
    *(a2 + 8) = v14;
    *(a2 + 16) = v15 & 1;
    *(a2 + 17) = v16 & 1;
    return;
  }

  v9 = dispatch thunk of LiveZones.zones.getter();
  v10 = v9 >> 62;
  if (v9 >> 62)
  {
    goto LABEL_21;
  }

  v11 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v11)
  {
LABEL_22:

LABEL_23:
    v14 = dispatch thunk of LiveZones.currentZoneIndex.getter();
    v15 = v24;
    v16 = dispatch thunk of LiveZones.isStale.getter();

    goto LABEL_24;
  }

  while (1)
  {
    v12 = v9;
    v32 = v8;
    v9 = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v11 & ~(v11 >> 63), 0);
    if (v11 < 0)
    {
      break;
    }

    v8 = v32;
    v25 = a1;
    v26 = a2;
    v28 = v11;
    if (v10)
    {
      v27 = v12 & 0xFFFFFFFFFFFFFF8;
      v9 = __CocoaSet.count.getter();
      v13 = v12;
      v29 = v9;
    }

    else
    {
      v13 = v12;
      v27 = v12 & 0xFFFFFFFFFFFFFF8;
      v29 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v17 = 0;
    a1 = v13 & 0xC000000000000001;
    while (v17 < v29)
    {
      if (a1)
      {
        MEMORY[0x20F30C990](v17);
      }

      else
      {
        if (v17 >= *(v27 + 16))
        {
          goto LABEL_20;
        }
      }

      v31 = ++v17;
      v18 = dispatch thunk of CustomStringConvertible.description.getter();
      a2 = v19;
      dispatch thunk of LiveZone.elapsedTimeInZone.getter();
      v21 = v20;
      UUID.init()();

      *v7 = v18;
      v7[1] = a2;
      v7[2] = v21;
      v32 = v8;
      v10 = *(v8 + 16);
      v22 = *(v8 + 24);
      if (v10 >= v22 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v10 + 1, 1);
        v8 = v32;
      }

      *(v8 + 16) = v10 + 1;
      v9 = outlined init with take of PowerZonesBarChartElement(v7, v8 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v10);
      if (v28 == v17)
      {

        a2 = v26;
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    v23 = v9;
    v11 = __CocoaSet.count.getter();
    v9 = v23;
    if (!v11)
    {
      goto LABEL_22;
    }
  }

  __break(1u);
}

uint64_t type metadata accessor for PowerZonesBarChartElement(uint64_t a1)
{
  result = type metadata singleton initialization cache for PowerZonesBarChartElement;
  if (!type metadata singleton initialization cache for PowerZonesBarChartElement)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PowerZonesBarChart.body.getter@<X0>(uint64_t a1@<X8>)
{
  v29 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6Charts5ChartVy7SwiftUI7ForEachVySaySi6offset_07WorkoutD0013PowerZonesBarB7ElementV7elementtGSiAA0B7ContentPAAE12cornerRadius_5styleQr12CoreGraphics7CGFloatV_AD18RoundedCornerStyleOtFQOyAnAE7opacityyQrSdFQOyAnAE010foregroundW0yQrqd__AD05ShapeW0Rd__lFQOyAA0K4MarkV_AD5ColorVQo__Qo__Qo_GGMd, &_s6Charts5ChartVy7SwiftUI7ForEachVySaySi6offset_07WorkoutD0013PowerZonesBarB7ElementV7elementtGSiAA0B7ContentPAAE12cornerRadius_5styleQr12CoreGraphics7CGFloatV_AD18RoundedCornerStyleOtFQOyAnAE7opacityyQrSdFQOyAnAE010foregroundW0yQrqd__AD05ShapeW0Rd__lFQOyAA0K4MarkV_AD5ColorVQo__Qo__Qo_GGMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v24 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP6ChartsE10chartXAxis7contentQrqd__yXE_tAD11AxisContentRd__lFQOyAD5ChartVyAA7ForEachVySaySi6offset_07WorkoutB0013PowerZonesBarJ7ElementV7elementtGSiAD0jI0PADE12cornerRadius_5styleQr12CoreGraphics7CGFloatV_AA18RoundedCornerStyleOtFQOyAsDE7opacityyQrSdFQOyAsDE15foregroundStyleyQrqd__AA10ShapeStyleRd__lFQOyAD0Q4MarkV_AA5ColorVQo__Qo__Qo_GG_AD0H5MarksVyAD0H10ValueLabelVyAA012_ConditionalI0VyAA08ModifiedI0VyA18_yA18_yA18_yAA4TextVAA14_PaddingLayoutVGAA30_EnvironmentKeyWritingModifierVyA5_SgGGAA24_BackgroundStyleModifierVyA5_GGAA11_ClipEffectVyAA0Z9RectangleVGGA20_GGGQo_Md, &_s7SwiftUI4ViewP6ChartsE10chartXAxis7contentQrqd__yXE_tAD11AxisContentRd__lFQOyAD5ChartVyAA7ForEachVySaySi6offset_07WorkoutB0013PowerZonesBarJ7ElementV7elementtGSiAD0jI0PADE12cornerRadius_5styleQr12CoreGraphics7CGFloatV_AA18RoundedCornerStyleOtFQOyAsDE7opacityyQrSdFQOyAsDE15foregroundStyleyQrqd__AA10ShapeStyleRd__lFQOyAD0Q4MarkV_AA5ColorVQo__Qo__Qo_GG_AD0H5MarksVyAD0H10ValueLabelVyAA012_ConditionalI0VyAA08ModifiedI0VyA18_yA18_yA18_yAA4TextVAA14_PaddingLayoutVGAA30_EnvironmentKeyWritingModifierVyA5_SgGGAA24_BackgroundStyleModifierVyA5_GGAA11_ClipEffectVyAA0Z9RectangleVGGA20_GGGQo_MR);
  v7 = *(v6 - 8);
  v27 = v6;
  v28 = v7;
  MEMORY[0x28223BE20](v6);
  v9 = &v24 - v8;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP6ChartsE10chartYAxis7contentQrqd__yXE_tAD11AxisContentRd__lFQOyAcDE0E5XAxisAFQrqd__yXE_tAdGRd__lFQOyAD5ChartVyAA7ForEachVySaySi6offset_07WorkoutB0013PowerZonesBarK7ElementV7elementtGSiAD0kI0PADE12cornerRadius_5styleQr12CoreGraphics7CGFloatV_AA18RoundedCornerStyleOtFQOyAtDE7opacityyQrSdFQOyAtDE15foregroundStyleyQrqd__AA10ShapeStyleRd__lFQOyAD0R4MarkV_AA5ColorVQo__Qo__Qo_GG_AD0H5MarksVyAD0H10ValueLabelVyAA012_ConditionalI0VyAA08ModifiedI0VyA19_yA19_yA19_yAA4TextVAA14_PaddingLayoutVGAA30_EnvironmentKeyWritingModifierVyA6_SgGGAA24_BackgroundStyleModifierVyA6_GGAA11_ClipEffectVyAA16RoundedRectangleVGGA21_GGGQo__A13_yA15_yA17_yA21_A21_GGGQo_Md, &_s7SwiftUI4ViewP6ChartsE10chartYAxis7contentQrqd__yXE_tAD11AxisContentRd__lFQOyAcDE0E5XAxisAFQrqd__yXE_tAdGRd__lFQOyAD5ChartVyAA7ForEachVySaySi6offset_07WorkoutB0013PowerZonesBarK7ElementV7elementtGSiAD0kI0PADE12cornerRadius_5styleQr12CoreGraphics7CGFloatV_AA18RoundedCornerStyleOtFQOyAtDE7opacityyQrSdFQOyAtDE15foregroundStyleyQrqd__AA10ShapeStyleRd__lFQOyAD0R4MarkV_AA5ColorVQo__Qo__Qo_GG_AD0H5MarksVyAD0H10ValueLabelVyAA012_ConditionalI0VyAA08ModifiedI0VyA19_yA19_yA19_yAA4TextVAA14_PaddingLayoutVGAA30_EnvironmentKeyWritingModifierVyA6_SgGGAA24_BackgroundStyleModifierVyA6_GGAA11_ClipEffectVyAA16RoundedRectangleVGGA21_GGGQo__A13_yA15_yA17_yA21_A21_GGGQo_MR);
  v25 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v24 = &v24 - v10;
  v12 = v1[1];
  v13 = *(v1 + 16);
  v14 = *(v1 + 17);
  v34 = *v1;
  v11 = v34;
  v35 = v12;
  v36 = v13;
  v37 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7ForEachVySaySi6offset_07WorkoutB025PowerZonesBarChartElementV7elementtGSi6Charts0J7ContentPAJE12cornerRadius_5styleQr12CoreGraphics7CGFloatV_AA18RoundedCornerStyleOtFQOyAlJE7opacityyQrSdFQOyAlJE010foregroundW0yQrqd__AA05ShapeW0Rd__lFQOyAJ0I4MarkV_AA5ColorVQo__Qo__Qo_GMd, &_s7SwiftUI7ForEachVySaySi6offset_07WorkoutB025PowerZonesBarChartElementV7elementtGSi6Charts0J7ContentPAJE12cornerRadius_5styleQr12CoreGraphics7CGFloatV_AA18RoundedCornerStyleOtFQOyAlJE7opacityyQrSdFQOyAlJE010foregroundW0yQrqd__AA05ShapeW0Rd__lFQOyAJ0I4MarkV_AA5ColorVQo__Qo__Qo_GMR);
  lazy protocol witness table accessor for type ForEach<[(offset: Int, element: PowerZonesBarChartElement)], Int, <<opaque return type of ChartContent.cornerRadius(_:style:)>>.0> and conformance <> ForEach<A, B, C>();
  Chart.init(content:)();
  v30 = v11;
  v31 = v12;
  v32 = v13;
  v33 = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6Charts9AxisMarksVyAA0B10ValueLabelVy7SwiftUI19_ConditionalContentVyAF08ModifiedI0VyAJyAJyAJyAF4TextVAF14_PaddingLayoutVGAF30_EnvironmentKeyWritingModifierVyAF5ColorVSgGGAF016_BackgroundStyleQ0VyASGGAF11_ClipEffectVyAF16RoundedRectangleVGGALGGGMd, &_s6Charts9AxisMarksVyAA0B10ValueLabelVy7SwiftUI19_ConditionalContentVyAF08ModifiedI0VyAJyAJyAJyAF4TextVAF14_PaddingLayoutVGAF30_EnvironmentKeyWritingModifierVyAF5ColorVSgGGAF016_BackgroundStyleQ0VyASGGAF11_ClipEffectVyAF16RoundedRectangleVGGALGGGMR);
  v16 = lazy protocol witness table accessor for type Chart<ForEach<[(offset: Int, element: PowerZonesBarChartElement)], Int, <<opaque return type of ChartContent.cornerRadius(_:style:)>>.0>> and conformance Chart<A>(&lazy protocol witness table cache variable for type Chart<ForEach<[(offset: Int, element: PowerZonesBarChartElement)], Int, <<opaque return type of ChartContent.cornerRadius(_:style:)>>.0>> and conformance Chart<A>, &_s6Charts5ChartVy7SwiftUI7ForEachVySaySi6offset_07WorkoutD0013PowerZonesBarB7ElementV7elementtGSiAA0B7ContentPAAE12cornerRadius_5styleQr12CoreGraphics7CGFloatV_AD18RoundedCornerStyleOtFQOyAnAE7opacityyQrSdFQOyAnAE010foregroundW0yQrqd__AD05ShapeW0Rd__lFQOyAA0K4MarkV_AD5ColorVQo__Qo__Qo_GGMd, &_s6Charts5ChartVy7SwiftUI7ForEachVySaySi6offset_07WorkoutD0013PowerZonesBarB7ElementV7elementtGSiAA0B7ContentPAAE12cornerRadius_5styleQr12CoreGraphics7CGFloatV_AD18RoundedCornerStyleOtFQOyAnAE7opacityyQrSdFQOyAnAE010foregroundW0yQrqd__AD05ShapeW0Rd__lFQOyAA0K4MarkV_AD5ColorVQo__Qo__Qo_GGMR, MEMORY[0x277CBB3F8]);
  v17 = MEMORY[0x277CBB460];
  v18 = lazy protocol witness table accessor for type Chart<ForEach<[(offset: Int, element: PowerZonesBarChartElement)], Int, <<opaque return type of ChartContent.cornerRadius(_:style:)>>.0>> and conformance Chart<A>(&lazy protocol witness table cache variable for type AxisMarks<AxisValueLabel<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _EnvironmentKeyWritingModifier<Color?>>, _BackgroundStyleModifier<Color>>, _ClipEffect<RoundedRectangle>>, Text>>> and conformance AxisMarks<A>, &_s6Charts9AxisMarksVyAA0B10ValueLabelVy7SwiftUI19_ConditionalContentVyAF08ModifiedI0VyAJyAJyAJyAF4TextVAF14_PaddingLayoutVGAF30_EnvironmentKeyWritingModifierVyAF5ColorVSgGGAF016_BackgroundStyleQ0VyASGGAF11_ClipEffectVyAF16RoundedRectangleVGGALGGGMd, &_s6Charts9AxisMarksVyAA0B10ValueLabelVy7SwiftUI19_ConditionalContentVyAF08ModifiedI0VyAJyAJyAJyAF4TextVAF14_PaddingLayoutVGAF30_EnvironmentKeyWritingModifierVyAF5ColorVSgGGAF016_BackgroundStyleQ0VyASGGAF11_ClipEffectVyAF16RoundedRectangleVGGALGGGMR, MEMORY[0x277CBB460]);
  View.chartXAxis<A>(content:)();
  (*(v3 + 8))(v5, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s6Charts9AxisMarksVyAA0B10ValueLabelVy7SwiftUI19_ConditionalContentVyAF4TextVAJGGGMd, &_s6Charts9AxisMarksVyAA0B10ValueLabelVy7SwiftUI19_ConditionalContentVyAF4TextVAJGGGMR);
  v38 = v2;
  v39 = v15;
  v40 = v16;
  v41 = v18;
  swift_getOpaqueTypeConformance2();
  lazy protocol witness table accessor for type Chart<ForEach<[(offset: Int, element: PowerZonesBarChartElement)], Int, <<opaque return type of ChartContent.cornerRadius(_:style:)>>.0>> and conformance Chart<A>(&lazy protocol witness table cache variable for type AxisMarks<AxisValueLabel<_ConditionalContent<Text, Text>>> and conformance AxisMarks<A>, &_s6Charts9AxisMarksVyAA0B10ValueLabelVy7SwiftUI19_ConditionalContentVyAF4TextVAJGGGMd, &_s6Charts9AxisMarksVyAA0B10ValueLabelVy7SwiftUI19_ConditionalContentVyAF4TextVAJGGGMR, v17);
  v19 = v24;
  v20 = v27;
  View.chartYAxis<A>(content:)();
  (*(v28 + 8))(v9, v20);
  if (v14)
  {
    v21 = 0.5;
  }

  else
  {
    v21 = 1.0;
  }

  v22 = v29;
  (*(v25 + 32))(v29, v19, v26);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewP6ChartsE10chartYAxis7contentQrqd__yXE_tAF04AxisD0Rd__lFQOyAeFE0G5XAxisAHQrqd__yXE_tAfIRd__lFQOyAF5ChartVyAA7ForEachVySaySi6offset_07WorkoutB0013PowerZonesBarL7ElementV7elementtGSiAF0lD0PAFE12cornerRadius_5styleQr12CoreGraphics7CGFloatV_AA18RoundedCornerStyleOtFQOyAvFE7opacityyQrSdFQOyAvFE15foregroundStyleyQrqd__AA10ShapeStyleRd__lFQOyAF0S4MarkV_AA5ColorVQo__Qo__Qo_GG_AF0J5MarksVyAF0J10ValueLabelVyAA012_ConditionalD0VyACyACyACyACyAA4TextVAA14_PaddingLayoutVGAA30_EnvironmentKeyWritingModifierVyA8_SgGGAA24_BackgroundStyleModifierVyA8_GGAA11_ClipEffectVyAA16RoundedRectangleVGGA21_GGGQo__A15_yA17_yA19_yA21_A21_GGGQo_AA14_OpacityEffectVGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewP6ChartsE10chartYAxis7contentQrqd__yXE_tAF04AxisD0Rd__lFQOyAeFE0G5XAxisAHQrqd__yXE_tAfIRd__lFQOyAF5ChartVyAA7ForEachVySaySi6offset_07WorkoutB0013PowerZonesBarL7ElementV7elementtGSiAF0lD0PAFE12cornerRadius_5styleQr12CoreGraphics7CGFloatV_AA18RoundedCornerStyleOtFQOyAvFE7opacityyQrSdFQOyAvFE15foregroundStyleyQrqd__AA10ShapeStyleRd__lFQOyAF0S4MarkV_AA5ColorVQo__Qo__Qo_GG_AF0J5MarksVyAF0J10ValueLabelVyAA012_ConditionalD0VyACyACyACyACyAA4TextVAA14_PaddingLayoutVGAA30_EnvironmentKeyWritingModifierVyA8_SgGGAA24_BackgroundStyleModifierVyA8_GGAA11_ClipEffectVyAA16RoundedRectangleVGGA21_GGGQo__A15_yA17_yA19_yA21_A21_GGGQo_AA14_OpacityEffectVGMR);
  *(v22 + *(result + 36)) = v21;
  return result;
}

double closure #1 in PowerZonesBarChart.body.getter(uint64_t a1, uint64_t a2, __int16 a3)
{
  specialized _copySequenceToContiguousArray<A>(_:)(a1);
  swift_getKeyPath();
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3 & 1;
  *(v6 + 33) = HIBYTE(a3) & 1;
  v7 = swift_allocObject();
  *(v7 + 16) = partial apply for closure #1 in closure #1 in PowerZonesBarChart.body.getter;
  *(v7 + 24) = v6;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySi6offset_9WorkoutUI25PowerZonesBarChartElementV7elementtGMd, &_sSaySi6offset_9WorkoutUI25PowerZonesBarChartElementV7elementtGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s6Charts12ChartContentPAAE12cornerRadius_5styleQr12CoreGraphics7CGFloatV_7SwiftUI18RoundedCornerStyleOtFQOyAcAE7opacityyQrSdFQOyAcAE010foregroundN0yQrqd__AI05ShapeN0Rd__lFQOyAA7BarMarkV_AI5ColorVQo__Qo__Qo_Md, &_s6Charts12ChartContentPAAE12cornerRadius_5styleQr12CoreGraphics7CGFloatV_7SwiftUI18RoundedCornerStyleOtFQOyAcAE7opacityyQrSdFQOyAcAE010foregroundN0yQrqd__AI05ShapeN0Rd__lFQOyAA7BarMarkV_AI5ColorVQo__Qo__Qo_MR);
  lazy protocol witness table accessor for type Chart<ForEach<[(offset: Int, element: PowerZonesBarChartElement)], Int, <<opaque return type of ChartContent.cornerRadius(_:style:)>>.0>> and conformance Chart<A>(&lazy protocol witness table cache variable for type [(offset: Int, element: PowerZonesBarChartElement)] and conformance [A], &_sSaySi6offset_9WorkoutUI25PowerZonesBarChartElementV7elementtGMd, &_sSaySi6offset_9WorkoutUI25PowerZonesBarChartElementV7elementtGMR, MEMORY[0x277D83980]);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s6Charts12ChartContentPAAE7opacityyQrSdFQOyAcAE15foregroundStyleyQrqd__7SwiftUI05ShapeF0Rd__lFQOyAA7BarMarkV_AF5ColorVQo__Qo_Md, &_s6Charts12ChartContentPAAE7opacityyQrSdFQOyAcAE15foregroundStyleyQrqd__7SwiftUI05ShapeF0Rd__lFQOyAA7BarMarkV_AF5ColorVQo__Qo_MR);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s6Charts12ChartContentPAAE15foregroundStyleyQrqd__7SwiftUI05ShapeE0Rd__lFQOyAA7BarMarkV_AE5ColorVQo_Md, &_s6Charts12ChartContentPAAE15foregroundStyleyQrqd__7SwiftUI05ShapeE0Rd__lFQOyAA7BarMarkV_AE5ColorVQo_MR);
  type metadata accessor for BarMark();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  ForEach<>.init(_:id:content:)();
  return result;
}

uint64_t closure #1 in closure #1 in PowerZonesBarChart.body.getter@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X3>, int a4@<W4>, uint64_t a5@<X8>)
{
  v45 = a4;
  v43 = a1;
  v44 = a3;
  v49 = a5;
  v6 = type metadata accessor for RoundedCornerStyle();
  v47 = *(v6 - 8);
  v48 = v6;
  MEMORY[0x28223BE20](v6);
  v46 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6Charts14PlottableValueVySdGMd, &_s6Charts14PlottableValueVySdGMR);
  MEMORY[0x28223BE20](v8 - 8);
  v37 = &v35 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6Charts14PlottableValueVySSGMd, &_s6Charts14PlottableValueVySSGMR);
  MEMORY[0x28223BE20](v10 - 8);
  v11 = type metadata accessor for BarMark();
  v38 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6Charts12ChartContentPAAE15foregroundStyleyQrqd__7SwiftUI05ShapeE0Rd__lFQOyAA7BarMarkV_AE5ColorVQo_Md, &_s6Charts12ChartContentPAAE15foregroundStyleyQrqd__7SwiftUI05ShapeE0Rd__lFQOyAA7BarMarkV_AE5ColorVQo_MR);
  v15 = *(v14 - 8);
  v39 = v14;
  v40 = v15;
  MEMORY[0x28223BE20](v14);
  v17 = &v35 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6Charts12ChartContentPAAE7opacityyQrSdFQOyAcAE15foregroundStyleyQrqd__7SwiftUI05ShapeF0Rd__lFQOyAA7BarMarkV_AF5ColorVQo__Qo_Md, &_s6Charts12ChartContentPAAE7opacityyQrSdFQOyAcAE15foregroundStyleyQrqd__7SwiftUI05ShapeF0Rd__lFQOyAA7BarMarkV_AF5ColorVQo__Qo_MR);
  v19 = *(v18 - 8);
  v41 = v18;
  v42 = v19;
  MEMORY[0x28223BE20](v18);
  v36 = &v35 - v20;
  LocalizedStringKey.init(stringLiteral:)();
  v21 = a2[1];
  v50 = *a2;
  v51 = v21;

  static PlottableValue.value(_:_:)();

  LocalizedStringKey.init(stringLiteral:)();
  v50 = a2[2];
  static PlottableValue.value(_:_:)();

  BarMark.init<A, B>(x:y:width:height:stacking:)();
  v50 = specialized static PowerZonesBarChartModel.barMarkColor(for:)(v43);
  v22 = MEMORY[0x277CE0F78];
  v23 = MEMORY[0x277CBB400];
  v24 = MEMORY[0x277CE0F60];
  ChartContent.foregroundStyle<A>(_:)();

  (*(v38 + 8))(v13, v11);
  v50 = v11;
  v51 = v22;
  v52 = v23;
  v53 = v24;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v26 = v36;
  v27 = v39;
  ChartContent.opacity(_:)();
  v28 = v17;
  v29 = v27;
  (*(v40 + 8))(v28, v27);
  v30 = v46;
  v31 = v47;
  v32 = v48;
  (*(v47 + 104))(v46, *MEMORY[0x277CE0118], v48);
  v50 = v29;
  v51 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v33 = v41;
  ChartContent.cornerRadius(_:style:)();
  (*(v31 + 8))(v30, v32);
  return (*(v42 + 8))(v26, v33);
}

uint64_t closure #2 in PowerZonesBarChart.body.getter(uint64_t a1, uint64_t a2, __int16 a3)
{
  v6 = type metadata accessor for AxisMarkValues();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = type metadata accessor for AxisMarkPosition();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = type metadata accessor for AxisMarkPreset();
  MEMORY[0x28223BE20](v8 - 8);
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  *(v9 + 32) = a3 & 1;
  *(v9 + 33) = HIBYTE(a3) & 1;

  static AxisMarkPreset.automatic.getter();
  static AxisMarkPosition.automatic.getter();
  static AxisMarkValues.automatic.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s6Charts14AxisValueLabelVy7SwiftUI19_ConditionalContentVyAD08ModifiedH0VyAHyAHyAHyAD4TextVAD14_PaddingLayoutVGAD30_EnvironmentKeyWritingModifierVyAD5ColorVSgGGAD016_BackgroundStyleP0VyAQGGAD11_ClipEffectVyAD16RoundedRectangleVGGAJGGMd, &_s6Charts14AxisValueLabelVy7SwiftUI19_ConditionalContentVyAD08ModifiedH0VyAHyAHyAHyAD4TextVAD14_PaddingLayoutVGAD30_EnvironmentKeyWritingModifierVyAD5ColorVSgGGAD016_BackgroundStyleP0VyAQGGAD11_ClipEffectVyAD16RoundedRectangleVGGAJGGMR);
  lazy protocol witness table accessor for type Chart<ForEach<[(offset: Int, element: PowerZonesBarChartElement)], Int, <<opaque return type of ChartContent.cornerRadius(_:style:)>>.0>> and conformance Chart<A>(&lazy protocol witness table cache variable for type AxisValueLabel<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _EnvironmentKeyWritingModifier<Color?>>, _BackgroundStyleModifier<Color>>, _ClipEffect<RoundedRectangle>>, Text>> and conformance AxisValueLabel<A>, &_s6Charts14AxisValueLabelVy7SwiftUI19_ConditionalContentVyAD08ModifiedH0VyAHyAHyAHyAD4TextVAD14_PaddingLayoutVGAD30_EnvironmentKeyWritingModifierVyAD5ColorVSgGGAD016_BackgroundStyleP0VyAQGGAD11_ClipEffectVyAD16RoundedRectangleVGGAJGGMd, &_s6Charts14AxisValueLabelVy7SwiftUI19_ConditionalContentVyAD08ModifiedH0VyAHyAHyAHyAD4TextVAD14_PaddingLayoutVGAD30_EnvironmentKeyWritingModifierVyAD5ColorVSgGGAD016_BackgroundStyleP0VyAQGGAD11_ClipEffectVyAD16RoundedRectangleVGGAJGGMR, MEMORY[0x277CBB338]);
  return AxisMarks.init(preset:position:values:content:)();
}

uint64_t closure #1 in closure #2 in PowerZonesBarChart.body.getter(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4, double a5)
{
  v5 = type metadata accessor for AxisValueLabelOrientation();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = type metadata accessor for AxisValueLabelCollisionResolution();
  MEMORY[0x28223BE20](v6 - 8);
  static AxisValueLabelCollisionResolution.automatic.getter();
  static AxisValueLabelOrientation.automatic.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEyAEyAA4TextVAA14_PaddingLayoutVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA016_BackgroundStyleL0VyANGGAA11_ClipEffectVyAA16RoundedRectangleVGGAGGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEyAEyAA4TextVAA14_PaddingLayoutVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA016_BackgroundStyleL0VyANGGAA11_ClipEffectVyAA16RoundedRectangleVGGAGGMR);
  lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _EnvironmentKeyWritingModifier<Color?>>, _BackgroundStyleModifier<Color>>, _ClipEffect<RoundedRectangle>>, Text> and conformance <> _ConditionalContent<A, B>();
  return AxisValueLabel.init(centered:anchor:multiLabelAlignment:collisionResolution:offsetsMarks:orientation:horizontalSpacing:verticalSpacing:content:)();
}

unint64_t closure #1 in closure #1 in closure #2 in PowerZonesBarChart.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0VyAGyAGyAGyAA4TextVAA14_PaddingLayoutVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA016_BackgroundStyleM0VyAPGGAA11_ClipEffectVyAA16RoundedRectangleVGGAI_GMd, &_s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0VyAGyAGyAGyAA4TextVAA14_PaddingLayoutVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA016_BackgroundStyleM0VyAPGGAA11_ClipEffectVyAA16RoundedRectangleVGGAI_GMR);
  MEMORY[0x28223BE20](v8);
  v10 = &v53[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextVAA14_PaddingLayoutVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA016_BackgroundStyleK0VyALGGAA11_ClipEffectVyAA16RoundedRectangleVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextVAA14_PaddingLayoutVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA016_BackgroundStyleK0VyALGGAA11_ClipEffectVyAA16RoundedRectangleVGGMR);
  MEMORY[0x28223BE20](v11);
  v13 = &v53[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v14);
  v16 = &v53[-v15];
  if ((a3 & 1) != 0 || AxisValue.index.getter() != a2)
  {
    result = AxisValue.index.getter();
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v46 = result;
      if (result < *(a1 + 16))
      {
        v47 = *(type metadata accessor for PowerZonesBarChartElement(0) - 8);
        v48 = (a1 + ((*(v47 + 80) + 32) & ~*(v47 + 80)) + *(v47 + 72) * v46);
        v49 = v48[1];
        v66 = *v48;
        v67 = v49;
        lazy protocol witness table accessor for type String and conformance String();

        *v10 = Text.init<A>(_:)();
        *(v10 + 1) = v50;
        v10[16] = v51 & 1;
        *(v10 + 3) = v52;
        swift_storeEnumTagMultiPayload();
        lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _EnvironmentKeyWritingModifier<Color?>>, _BackgroundStyleModifier<Color>>, _ClipEffect<RoundedRectangle>> and conformance <> ModifiedContent<A, B>();
        return _ConditionalContent<>.init(storage:)();
      }
    }

    __break(1u);
    goto LABEL_15;
  }

  result = AxisValue.index.getter();
  if ((result & 0x8000000000000000) != 0)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v18 = result;
  if (result >= *(a1 + 16))
  {
LABEL_16:
    __break(1u);
    return result;
  }

  v61 = a4;
  v19 = *(type metadata accessor for PowerZonesBarChartElement(0) - 8);
  v20 = (a1 + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * v18);
  v21 = v20[1];
  v66 = *v20;
  v67 = v21;
  lazy protocol witness table accessor for type String and conformance String();

  v22 = Text.init<A>(_:)();
  v58 = v23;
  v59 = v22;
  LODWORD(v57) = v24;
  v60 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy7SwiftUI4EdgeO3SetVGMd, &_ss23_ContiguousArrayStorageCy7SwiftUI4EdgeO3SetVGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20CB5DA80;
  v27 = static Edge.Set.leading.getter();
  *(inited + 32) = v27;
  v28 = static Edge.Set.trailing.getter();
  *(inited + 33) = v28;
  v29 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v27)
  {
    v29 = Edge.Set.init(rawValue:)();
  }

  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v28)
  {
    v29 = Edge.Set.init(rawValue:)();
  }

  EdgeInsets.init(_all:)();
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v38 = v57 & 1;
  v65 = v57 & 1;
  v64 = 0;
  v57 = static Color.black.getter();
  KeyPath = swift_getKeyPath();
  v39 = AxisValue.index.getter();
  v55 = specialized static PowerZonesBarChartModel.barMarkColor(for:)(v39);
  v54 = static Edge.Set.all.getter();
  v40 = &v13[*(v11 + 36)];
  v41 = *(type metadata accessor for RoundedRectangle() + 20);
  v42 = *MEMORY[0x277CE0118];
  v43 = type metadata accessor for RoundedCornerStyle();
  (*(*(v43 - 8) + 104))(&v40->i8[v41], v42, v43);
  *v40 = vdupq_n_s64(0x7FF0000000000000uLL);
  *(v40->i16 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11_ClipEffectVyAA16RoundedRectangleVGMd, &_s7SwiftUI11_ClipEffectVyAA16RoundedRectangleVGMR) + 36)) = 256;
  v44 = v58;
  *v13 = v59;
  *(v13 + 1) = v44;
  v13[16] = v38;
  *(v13 + 17) = v66;
  *(v13 + 5) = *(&v66 + 3);
  *(v13 + 3) = v60;
  v13[32] = v29;
  *(v13 + 33) = *v63;
  *(v13 + 9) = *&v63[3];
  *(v13 + 5) = v31;
  *(v13 + 6) = v33;
  *(v13 + 7) = v35;
  *(v13 + 8) = v37;
  v13[72] = 0;
  *(v13 + 73) = *v62;
  *(v13 + 19) = *&v62[3];
  v45 = v57;
  *(v13 + 10) = KeyPath;
  *(v13 + 11) = v45;
  *(v13 + 12) = v55;
  v13[104] = v54;
  outlined init with take of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _EnvironmentKeyWritingModifier<Color?>>, _BackgroundStyleModifier<Color>>, _ClipEffect<RoundedRectangle>>(v13, v16);
  outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _EnvironmentKeyWritingModifier<Color?>>, _BackgroundStyleModifier<Color>>, _ClipEffect<RoundedRectangle>>(v16, v10);
  swift_storeEnumTagMultiPayload();
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _EnvironmentKeyWritingModifier<Color?>>, _BackgroundStyleModifier<Color>>, _ClipEffect<RoundedRectangle>> and conformance <> ModifiedContent<A, B>();
  _ConditionalContent<>.init(storage:)();
  return outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _EnvironmentKeyWritingModifier<Color?>>, _BackgroundStyleModifier<Color>>, _ClipEffect<RoundedRectangle>>(v16);
}

uint64_t closure #3 in PowerZonesBarChart.body.getter()
{
  v0 = type metadata accessor for AxisMarkValues();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = type metadata accessor for AxisMarkPosition();
  MEMORY[0x28223BE20](v1 - 8);
  v2 = type metadata accessor for AxisMarkPreset();
  MEMORY[0x28223BE20](v2 - 8);
  static AxisMarkPreset.automatic.getter();
  static AxisMarkPosition.automatic.getter();
  static AxisMarkValues.automatic.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s6Charts14AxisValueLabelVy7SwiftUI19_ConditionalContentVyAD4TextVAHGGMd, &_s6Charts14AxisValueLabelVy7SwiftUI19_ConditionalContentVyAD4TextVAHGGMR);
  lazy protocol witness table accessor for type Chart<ForEach<[(offset: Int, element: PowerZonesBarChartElement)], Int, <<opaque return type of ChartContent.cornerRadius(_:style:)>>.0>> and conformance Chart<A>(&lazy protocol witness table cache variable for type AxisValueLabel<_ConditionalContent<Text, Text>> and conformance AxisValueLabel<A>, &_s6Charts14AxisValueLabelVy7SwiftUI19_ConditionalContentVyAD4TextVAHGGMd, &_s6Charts14AxisValueLabelVy7SwiftUI19_ConditionalContentVyAD4TextVAHGGMR, MEMORY[0x277CBB338]);
  return AxisMarks.init(preset:position:values:content:)();
}

uint64_t closure #1 in closure #3 in PowerZonesBarChart.body.getter(uint64_t a1, double a2)
{
  v2 = type metadata accessor for AxisValueLabelOrientation();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = type metadata accessor for AxisValueLabelCollisionResolution();
  MEMORY[0x28223BE20](v3 - 8);
  static AxisValueLabelCollisionResolution.automatic.getter();
  static AxisValueLabelOrientation.automatic.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA4TextVAEGMd, &_s7SwiftUI19_ConditionalContentVyAA4TextVAEGMR);
  lazy protocol witness table accessor for type _ConditionalContent<Text, Text> and conformance <> _ConditionalContent<A, B>();
  return AxisValueLabel.init(centered:anchor:multiLabelAlignment:collisionResolution:offsetsMarks:orientation:horizontalSpacing:verticalSpacing:content:)();
}

double closure #1 in closure #1 in closure #3 in PowerZonesBarChart.body.getter@<D0>(_OWORD *a1@<X8>)
{
  v27 = a1;
  v1 = type metadata accessor for FloatingPointRoundingRule();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Duration.TimeFormatStyle.Pattern();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Duration.TimeFormatStyle();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AxisValue.as<A>(_:)();
  if (BYTE8(v33))
  {
    static Duration.seconds(_:)();
    v26 = v13;
    (*(v2 + 104))(v4, *MEMORY[0x277D84670], v1);
    static Duration.TimeFormatStyle.Pattern.minuteSecond(padMinuteToLength:fractionalSecondsLength:roundFractionalSeconds:)();
    (*(v2 + 8))(v4, v1);
    static FormatStyle<>.time(pattern:)();
    (*(v6 + 8))(v8, v5);
    _s10Foundation4UUIDVACSHAAWlTm_1(&lazy protocol witness table cache variable for type Duration.TimeFormatStyle and conformance Duration.TimeFormatStyle, MEMORY[0x277CC9FB0], MEMORY[0x277CC9FA8]);
    Duration.formatted<A>(_:)();
    (*(v10 + 8))(v12, v9);
    lazy protocol witness table accessor for type String and conformance String();
    v28 = Text.init<A>(_:)();
    v29 = v15;
    v30 = v14 & 1;
    v31 = v16;
    v32 = 1;
  }

  else
  {
    static Duration.seconds(_:)();
    v26 = v17;
    (*(v2 + 104))(v4, *MEMORY[0x277D84670], v1);
    static Duration.TimeFormatStyle.Pattern.minuteSecond(padMinuteToLength:fractionalSecondsLength:roundFractionalSeconds:)();
    (*(v2 + 8))(v4, v1);
    static FormatStyle<>.time(pattern:)();
    (*(v6 + 8))(v8, v5);
    _s10Foundation4UUIDVACSHAAWlTm_1(&lazy protocol witness table cache variable for type Duration.TimeFormatStyle and conformance Duration.TimeFormatStyle, MEMORY[0x277CC9FB0], MEMORY[0x277CC9FA8]);
    Duration.formatted<A>(_:)();
    (*(v10 + 8))(v12, v9);
    lazy protocol witness table accessor for type String and conformance String();
    v28 = Text.init<A>(_:)();
    v29 = v18;
    v30 = v19 & 1;
    v31 = v20;
    v32 = 0;
  }

  _ConditionalContent<>.init(storage:)();
  result = *&v33;
  v22 = v34;
  v23 = v35;
  v24 = v27;
  *v27 = v33;
  v24[1] = v22;
  *(v24 + 32) = v23;
  return result;
}

uint64_t outlined init with take of PowerZonesBarChartElement(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PowerZonesBarChartElement(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in PowerZonesBarChart.body.getter(uint64_t (*a1)(void, void, void))
{
  if (*(v1 + 33))
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return a1(*(v1 + 16), *(v1 + 24), v2 | *(v1 + 32));
}

__n128 __swift_memcpy18_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.chartYAxis<A>(content:)>>.0, _OpacityEffect> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.chartYAxis<A>(content:)>>.0, _OpacityEffect> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.chartYAxis<A>(content:)>>.0, _OpacityEffect> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewP6ChartsE10chartYAxis7contentQrqd__yXE_tAF04AxisD0Rd__lFQOyAeFE0G5XAxisAHQrqd__yXE_tAfIRd__lFQOyAF5ChartVyAA7ForEachVySaySi6offset_07WorkoutB0013PowerZonesBarL7ElementV7elementtGSiAF0lD0PAFE12cornerRadius_5styleQr12CoreGraphics7CGFloatV_AA18RoundedCornerStyleOtFQOyAvFE7opacityyQrSdFQOyAvFE15foregroundStyleyQrqd__AA10ShapeStyleRd__lFQOyAF0S4MarkV_AA5ColorVQo__Qo__Qo_GG_AF0J5MarksVyAF0J10ValueLabelVyAA012_ConditionalD0VyACyACyACyACyAA4TextVAA14_PaddingLayoutVGAA30_EnvironmentKeyWritingModifierVyA8_SgGGAA24_BackgroundStyleModifierVyA8_GGAA11_ClipEffectVyAA16RoundedRectangleVGGA21_GGGQo__A15_yA17_yA19_yA21_A21_GGGQo_AA14_OpacityEffectVGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewP6ChartsE10chartYAxis7contentQrqd__yXE_tAF04AxisD0Rd__lFQOyAeFE0G5XAxisAHQrqd__yXE_tAfIRd__lFQOyAF5ChartVyAA7ForEachVySaySi6offset_07WorkoutB0013PowerZonesBarL7ElementV7elementtGSiAF0lD0PAFE12cornerRadius_5styleQr12CoreGraphics7CGFloatV_AA18RoundedCornerStyleOtFQOyAvFE7opacityyQrSdFQOyAvFE15foregroundStyleyQrqd__AA10ShapeStyleRd__lFQOyAF0S4MarkV_AA5ColorVQo__Qo__Qo_GG_AF0J5MarksVyAF0J10ValueLabelVyAA012_ConditionalD0VyACyACyACyACyAA4TextVAA14_PaddingLayoutVGAA30_EnvironmentKeyWritingModifierVyA8_SgGGAA24_BackgroundStyleModifierVyA8_GGAA11_ClipEffectVyAA16RoundedRectangleVGGA21_GGGQo__A15_yA17_yA19_yA21_A21_GGGQo_AA14_OpacityEffectVGMR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ViewP6ChartsE10chartXAxis7contentQrqd__yXE_tAD11AxisContentRd__lFQOyAD5ChartVyAA7ForEachVySaySi6offset_07WorkoutB0013PowerZonesBarJ7ElementV7elementtGSiAD0jI0PADE12cornerRadius_5styleQr12CoreGraphics7CGFloatV_AA18RoundedCornerStyleOtFQOyAsDE7opacityyQrSdFQOyAsDE15foregroundStyleyQrqd__AA10ShapeStyleRd__lFQOyAD0Q4MarkV_AA5ColorVQo__Qo__Qo_GG_AD0H5MarksVyAD0H10ValueLabelVyAA012_ConditionalI0VyAA08ModifiedI0VyA18_yA18_yA18_yAA4TextVAA14_PaddingLayoutVGAA30_EnvironmentKeyWritingModifierVyA5_SgGGAA24_BackgroundStyleModifierVyA5_GGAA11_ClipEffectVyAA0Z9RectangleVGGA20_GGGQo_Md, &_s7SwiftUI4ViewP6ChartsE10chartXAxis7contentQrqd__yXE_tAD11AxisContentRd__lFQOyAD5ChartVyAA7ForEachVySaySi6offset_07WorkoutB0013PowerZonesBarJ7ElementV7elementtGSiAD0jI0PADE12cornerRadius_5styleQr12CoreGraphics7CGFloatV_AA18RoundedCornerStyleOtFQOyAsDE7opacityyQrSdFQOyAsDE15foregroundStyleyQrqd__AA10ShapeStyleRd__lFQOyAD0Q4MarkV_AA5ColorVQo__Qo__Qo_GG_AD0H5MarksVyAD0H10ValueLabelVyAA012_ConditionalI0VyAA08ModifiedI0VyA18_yA18_yA18_yAA4TextVAA14_PaddingLayoutVGAA30_EnvironmentKeyWritingModifierVyA5_SgGGAA24_BackgroundStyleModifierVyA5_GGAA11_ClipEffectVyAA0Z9RectangleVGGA20_GGGQo_MR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s6Charts9AxisMarksVyAA0B10ValueLabelVy7SwiftUI19_ConditionalContentVyAF4TextVAJGGGMd, &_s6Charts9AxisMarksVyAA0B10ValueLabelVy7SwiftUI19_ConditionalContentVyAF4TextVAJGGGMR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s6Charts5ChartVy7SwiftUI7ForEachVySaySi6offset_07WorkoutD0013PowerZonesBarB7ElementV7elementtGSiAA0B7ContentPAAE12cornerRadius_5styleQr12CoreGraphics7CGFloatV_AD18RoundedCornerStyleOtFQOyAnAE7opacityyQrSdFQOyAnAE010foregroundW0yQrqd__AD05ShapeW0Rd__lFQOyAA0K4MarkV_AD5ColorVQo__Qo__Qo_GGMd, &_s6Charts5ChartVy7SwiftUI7ForEachVySaySi6offset_07WorkoutD0013PowerZonesBarB7ElementV7elementtGSiAA0B7ContentPAAE12cornerRadius_5styleQr12CoreGraphics7CGFloatV_AD18RoundedCornerStyleOtFQOyAnAE7opacityyQrSdFQOyAnAE010foregroundW0yQrqd__AD05ShapeW0Rd__lFQOyAA0K4MarkV_AD5ColorVQo__Qo__Qo_GGMR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s6Charts9AxisMarksVyAA0B10ValueLabelVy7SwiftUI19_ConditionalContentVyAF08ModifiedI0VyAJyAJyAJyAF4TextVAF14_PaddingLayoutVGAF30_EnvironmentKeyWritingModifierVyAF5ColorVSgGGAF016_BackgroundStyleQ0VyASGGAF11_ClipEffectVyAF16RoundedRectangleVGGALGGGMd, &_s6Charts9AxisMarksVyAA0B10ValueLabelVy7SwiftUI19_ConditionalContentVyAF08ModifiedI0VyAJyAJyAJyAF4TextVAF14_PaddingLayoutVGAF30_EnvironmentKeyWritingModifierVyAF5ColorVSgGGAF016_BackgroundStyleQ0VyASGGAF11_ClipEffectVyAF16RoundedRectangleVGGALGGGMR);
    lazy protocol witness table accessor for type Chart<ForEach<[(offset: Int, element: PowerZonesBarChartElement)], Int, <<opaque return type of ChartContent.cornerRadius(_:style:)>>.0>> and conformance Chart<A>(&lazy protocol witness table cache variable for type Chart<ForEach<[(offset: Int, element: PowerZonesBarChartElement)], Int, <<opaque return type of ChartContent.cornerRadius(_:style:)>>.0>> and conformance Chart<A>, &_s6Charts5ChartVy7SwiftUI7ForEachVySaySi6offset_07WorkoutD0013PowerZonesBarB7ElementV7elementtGSiAA0B7ContentPAAE12cornerRadius_5styleQr12CoreGraphics7CGFloatV_AD18RoundedCornerStyleOtFQOyAnAE7opacityyQrSdFQOyAnAE010foregroundW0yQrqd__AD05ShapeW0Rd__lFQOyAA0K4MarkV_AD5ColorVQo__Qo__Qo_GGMd, &_s6Charts5ChartVy7SwiftUI7ForEachVySaySi6offset_07WorkoutD0013PowerZonesBarB7ElementV7elementtGSiAA0B7ContentPAAE12cornerRadius_5styleQr12CoreGraphics7CGFloatV_AD18RoundedCornerStyleOtFQOyAnAE7opacityyQrSdFQOyAnAE010foregroundW0yQrqd__AD05ShapeW0Rd__lFQOyAA0K4MarkV_AD5ColorVQo__Qo__Qo_GGMR, MEMORY[0x277CBB3F8]);
    v1 = MEMORY[0x277CBB460];
    lazy protocol witness table accessor for type Chart<ForEach<[(offset: Int, element: PowerZonesBarChartElement)], Int, <<opaque return type of ChartContent.cornerRadius(_:style:)>>.0>> and conformance Chart<A>(&lazy protocol witness table cache variable for type AxisMarks<AxisValueLabel<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _EnvironmentKeyWritingModifier<Color?>>, _BackgroundStyleModifier<Color>>, _ClipEffect<RoundedRectangle>>, Text>>> and conformance AxisMarks<A>, &_s6Charts9AxisMarksVyAA0B10ValueLabelVy7SwiftUI19_ConditionalContentVyAF08ModifiedI0VyAJyAJyAJyAF4TextVAF14_PaddingLayoutVGAF30_EnvironmentKeyWritingModifierVyAF5ColorVSgGGAF016_BackgroundStyleQ0VyASGGAF11_ClipEffectVyAF16RoundedRectangleVGGALGGGMd, &_s6Charts9AxisMarksVyAA0B10ValueLabelVy7SwiftUI19_ConditionalContentVyAF08ModifiedI0VyAJyAJyAJyAF4TextVAF14_PaddingLayoutVGAF30_EnvironmentKeyWritingModifierVyAF5ColorVSgGGAF016_BackgroundStyleQ0VyASGGAF11_ClipEffectVyAF16RoundedRectangleVGGALGGGMR, MEMORY[0x277CBB460]);
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type Chart<ForEach<[(offset: Int, element: PowerZonesBarChartElement)], Int, <<opaque return type of ChartContent.cornerRadius(_:style:)>>.0>> and conformance Chart<A>(&lazy protocol witness table cache variable for type AxisMarks<AxisValueLabel<_ConditionalContent<Text, Text>>> and conformance AxisMarks<A>, &_s6Charts9AxisMarksVyAA0B10ValueLabelVy7SwiftUI19_ConditionalContentVyAF4TextVAJGGGMd, &_s6Charts9AxisMarksVyAA0B10ValueLabelVy7SwiftUI19_ConditionalContentVyAF4TextVAJGGGMR, v1);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.chartYAxis<A>(content:)>>.0, _OpacityEffect> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PowerZonesBarChart(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 18))
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

uint64_t storeEnumTagSinglePayload for PowerZonesBarChart(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 18) = 1;
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

    *(result + 18) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t type metadata completion function for PowerZonesBarChartElement(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t _s10Foundation4UUIDVACSHAAWlTm_1(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t partial apply for closure #1 in closure #2 in PowerZonesBarChart.body.getter(uint64_t a1, double a2)
{
  if (*(v2 + 33))
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  return closure #1 in closure #2 in PowerZonesBarChart.body.getter(a1, *(v2 + 16), *(v2 + 24), v3 | *(v2 + 32), a2);
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _EnvironmentKeyWritingModifier<Color?>>, _BackgroundStyleModifier<Color>>, _ClipEffect<RoundedRectangle>>, Text> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _EnvironmentKeyWritingModifier<Color?>>, _BackgroundStyleModifier<Color>>, _ClipEffect<RoundedRectangle>>, Text> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _EnvironmentKeyWritingModifier<Color?>>, _BackgroundStyleModifier<Color>>, _ClipEffect<RoundedRectangle>>, Text> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEyAEyAA4TextVAA14_PaddingLayoutVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA016_BackgroundStyleL0VyANGGAA11_ClipEffectVyAA16RoundedRectangleVGGAGGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEyAEyAA4TextVAA14_PaddingLayoutVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA016_BackgroundStyleL0VyANGGAA11_ClipEffectVyAA16RoundedRectangleVGGAGGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _EnvironmentKeyWritingModifier<Color?>>, _BackgroundStyleModifier<Color>>, _ClipEffect<RoundedRectangle>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _EnvironmentKeyWritingModifier<Color?>>, _BackgroundStyleModifier<Color>>, _ClipEffect<RoundedRectangle>>, Text> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _EnvironmentKeyWritingModifier<Color?>>, _BackgroundStyleModifier<Color>>, _ClipEffect<RoundedRectangle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _EnvironmentKeyWritingModifier<Color?>>, _BackgroundStyleModifier<Color>>, _ClipEffect<RoundedRectangle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _EnvironmentKeyWritingModifier<Color?>>, _BackgroundStyleModifier<Color>>, _ClipEffect<RoundedRectangle>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextVAA14_PaddingLayoutVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA016_BackgroundStyleK0VyALGGAA11_ClipEffectVyAA16RoundedRectangleVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextVAA14_PaddingLayoutVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA016_BackgroundStyleK0VyALGGAA11_ClipEffectVyAA16RoundedRectangleVGGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _EnvironmentKeyWritingModifier<Color?>>, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type Chart<ForEach<[(offset: Int, element: PowerZonesBarChartElement)], Int, <<opaque return type of ChartContent.cornerRadius(_:style:)>>.0>> and conformance Chart<A>(&lazy protocol witness table cache variable for type _ClipEffect<RoundedRectangle> and conformance _ClipEffect<A>, &_s7SwiftUI11_ClipEffectVyAA16RoundedRectangleVGMd, &_s7SwiftUI11_ClipEffectVyAA16RoundedRectangleVGMR, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _EnvironmentKeyWritingModifier<Color?>>, _BackgroundStyleModifier<Color>>, _ClipEffect<RoundedRectangle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _EnvironmentKeyWritingModifier<Color?>>, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _EnvironmentKeyWritingModifier<Color?>>, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _EnvironmentKeyWritingModifier<Color?>>, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA14_PaddingLayoutVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA016_BackgroundStyleK0VyALGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA14_PaddingLayoutVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA016_BackgroundStyleK0VyALGGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type Chart<ForEach<[(offset: Int, element: PowerZonesBarChartElement)], Int, <<opaque return type of ChartContent.cornerRadius(_:style:)>>.0>> and conformance Chart<A>(&lazy protocol witness table cache variable for type _BackgroundStyleModifier<Color> and conformance _BackgroundStyleModifier<A>, &_s7SwiftUI24_BackgroundStyleModifierVyAA5ColorVGMd, &_s7SwiftUI24_BackgroundStyleModifierVyAA5ColorVGMR, MEMORY[0x277CE0728]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _EnvironmentKeyWritingModifier<Color?>>, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA4TextVAA14_PaddingLayoutVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMd, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA14_PaddingLayoutVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMR);
    lazy protocol witness table accessor for type ModifiedContent<Text, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type Chart<ForEach<[(offset: Int, element: PowerZonesBarChartElement)], Int, <<opaque return type of ChartContent.cornerRadius(_:style:)>>.0>> and conformance Chart<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Color?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVSgGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVSgGMR, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t specialized static PowerZonesBarChartModel.barMarkColor(for:)(uint64_t a1)
{
  v2 = type metadata accessor for Color.RGBColorSpace();
  v5 = MEMORY[0x28223BE20](v2);
  if (a1 <= 2)
  {
    if (a1 <= 2)
    {
LABEL_8:
      (*(v4 + 104))(&v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277CE0EE0], v5);
      return Color.init(_:red:green:blue:opacity:)();
    }
  }

  else if (a1 <= 6)
  {
    goto LABEL_8;
  }

  return static Color.gray.getter();
}

uint64_t outlined init with take of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _EnvironmentKeyWritingModifier<Color?>>, _BackgroundStyleModifier<Color>>, _ClipEffect<RoundedRectangle>>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextVAA14_PaddingLayoutVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA016_BackgroundStyleK0VyALGGAA11_ClipEffectVyAA16RoundedRectangleVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextVAA14_PaddingLayoutVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA016_BackgroundStyleK0VyALGGAA11_ClipEffectVyAA16RoundedRectangleVGGMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _EnvironmentKeyWritingModifier<Color?>>, _BackgroundStyleModifier<Color>>, _ClipEffect<RoundedRectangle>>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextVAA14_PaddingLayoutVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA016_BackgroundStyleK0VyALGGAA11_ClipEffectVyAA16RoundedRectangleVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextVAA14_PaddingLayoutVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA016_BackgroundStyleK0VyALGGAA11_ClipEffectVyAA16RoundedRectangleVGGMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _EnvironmentKeyWritingModifier<Color?>>, _BackgroundStyleModifier<Color>>, _ClipEffect<RoundedRectangle>>(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextVAA14_PaddingLayoutVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA016_BackgroundStyleK0VyALGGAA11_ClipEffectVyAA16RoundedRectangleVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextVAA14_PaddingLayoutVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA016_BackgroundStyleK0VyALGGAA11_ClipEffectVyAA16RoundedRectangleVGGMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t partial apply for closure #1 in closure #1 in PowerZonesBarChart.body.getter@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  if (*(v3 + 33))
  {
    v4 = 256;
  }

  else
  {
    v4 = 0;
  }

  return closure #1 in closure #1 in PowerZonesBarChart.body.getter(a1, a2, *(v3 + 24), v4 | *(v3 + 32), a3);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@unowned Int, @in_guaranteed PowerZonesBarChartElement) -> (@out <<opaque return type of ChartContent.cornerRadius(_:style:)>>.0)(char *a1)
{
  v3 = *(v1 + 16);
  v4 = *a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_9WorkoutUI25PowerZonesBarChartElementV7elementtMd, &_sSi6offset_9WorkoutUI25PowerZonesBarChartElementV7elementtMR);
  return v3(v4, &a1[*(v5 + 48)]);
}

uint64_t WorkoutTimeProvidedView.provider.getter()
{
  specialized WorkoutTimeProvidedView.provider.getter();

  return swift_unknownObjectRetain();
}

uint64_t key path getter for WorkoutTimeProvidedView.provider : <A>WorkoutTimeProvidedView<A>@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>, uint64_t a4@<X3>)
{
  type metadata accessor for WorkoutTimeProvidedView(0, *(a1 + a2 - 16), *(a1 + a2 - 8), a4);
  *a3 = specialized WorkoutTimeProvidedView.provider.getter();

  return swift_unknownObjectRetain();
}

uint64_t WorkoutTimeProvidedView.provider.setter(uint64_t a1)
{
  result = swift_unknownObjectRelease();
  *(v1 + 8) = a1;
  return result;
}

uint64_t WorkoutTimeProvidedView.init(provider:paused:)@<X0>(char a2@<W1>, uint64_t a5@<X8>)
{
  result = ObservedObject.init(wrappedValue:)();
  *a5 = result;
  *(a5 + 8) = v8;
  *(a5 + 16) = a2;
  return result;
}

uint64_t WorkoutTimeProvidedView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v78 = a2;
  v79 = type metadata accessor for AccessibilityTraits();
  v77 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v76 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AccessibilityChildBehavior();
  v74 = *(v5 - 8);
  v75 = v5;
  MEMORY[0x28223BE20](v5);
  v70 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = type metadata accessor for Date();
  v7 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v9 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v58 - v11;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI24PausableTimelineScheduleVy05SwiftB008PeriodicdE0VGMd, &_s9WorkoutUI24PausableTimelineScheduleVy05SwiftB008PeriodicdE0VGMR);
  MEMORY[0x28223BE20](v61);
  v62 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v58 - v15;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA12TimelineViewVy07WorkoutB008PausableE8ScheduleVyAA08PeriodiceI0VGAA4TextVGAF15MetricValueFontVGAA30_EnvironmentKeyWritingModifierVyAA15LayoutDirectionOGGAA01_d5ShapeR0VyAA16RoundedRectangleVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA12TimelineViewVy07WorkoutB008PausableE8ScheduleVyAA08PeriodiceI0VGAA4TextVGAF15MetricValueFontVGAA30_EnvironmentKeyWritingModifierVyAA15LayoutDirectionOGGAA01_d5ShapeR0VyAA16RoundedRectangleVGGMR);
  MEMORY[0x28223BE20](v67);
  v60 = &v58 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA15ModifiedContentVyAIyAIyAA08TimelineC0Vy07WorkoutB008PausableL8ScheduleVyAA08PeriodiclO0VGAA4TextVGAL15MetricValueFontVGAA30_EnvironmentKeyWritingModifierVyAA15LayoutDirectionOGGAA01_k5ShapeX0VyAA16RoundedRectangleVGG_Qo_Md, &_s7SwiftUI4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA15ModifiedContentVyAIyAIyAA08TimelineC0Vy07WorkoutB008PausableL8ScheduleVyAA08PeriodiclO0VGAA4TextVGAL15MetricValueFontVGAA30_EnvironmentKeyWritingModifierVyAA15LayoutDirectionOGGAA01_k5ShapeX0VyAA16RoundedRectangleVGG_Qo_MR);
  v19 = *(v18 - 8);
  v72 = v18;
  v73 = v19;
  MEMORY[0x28223BE20](v18);
  v68 = &v58 - v20;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyACyACyACyAA08TimelineE0Vy07WorkoutB008PausableL8ScheduleVyAA08PeriodiclO0VGAA4TextVGAL15MetricValueFontVGAA30_EnvironmentKeyWritingModifierVyAA15LayoutDirectionOGGAA01_d5ShapeX0VyAA16RoundedRectangleVGG_Qo_AA0i10AttachmentX0VGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyACyACyACyAA08TimelineE0Vy07WorkoutB008PausableL8ScheduleVyAA08PeriodiclO0VGAA4TextVGAL15MetricValueFontVGAA30_EnvironmentKeyWritingModifierVyAA15LayoutDirectionOGGAA01_d5ShapeX0VyAA16RoundedRectangleVGG_Qo_AA0i10AttachmentX0VGMR);
  MEMORY[0x28223BE20](v71);
  v69 = &v58 - v21;
  v22 = v2[1];
  v59 = *v2;
  v23 = *(v2 + 16);
  v24 = *(a1 + 16);
  v25 = *(a1 + 24);
  swift_unknownObjectRetain();
  dispatch thunk of TimeProviding.timelineStartDate.getter();
  swift_unknownObjectRelease();
  swift_unknownObjectRetain();
  v63 = v25;
  dispatch thunk of TimeProviding.timelineFrequency.getter();
  swift_unknownObjectRelease();
  v26 = *(v7 + 16);
  v64 = v12;
  v27 = v80;
  v26(v9, v12, v80);
  PeriodicTimelineSchedule.init(from:by:)();
  v28 = *(v7 + 8);
  v65 = v7 + 8;
  v66 = v28;
  v28(v12, v27);
  v16[*(v61 + 36)] = v23;
  v29 = swift_allocObject();
  *(v29 + 16) = v24;
  *(v29 + 24) = v25;
  *(v29 + 32) = v59;
  *(v29 + 40) = v22;
  *(v29 + 48) = v23;
  outlined init with copy of PausableTimelineSchedule<PeriodicTimelineSchedule>(v16, v62);
  v30 = swift_allocObject();
  *(v30 + 16) = partial apply for closure #1 in WorkoutTimeProvidedView.body.getter;
  *(v30 + 24) = v29;
  _s9WorkoutUI24PausableTimelineScheduleVy05SwiftB008PeriodicdE0VGACyxGAD0dE0AAWlTm_2(&lazy protocol witness table cache variable for type PausableTimelineSchedule<PeriodicTimelineSchedule> and conformance PausableTimelineSchedule<A>, &_s9WorkoutUI24PausableTimelineScheduleVy05SwiftB008PeriodicdE0VGMd, &_s9WorkoutUI24PausableTimelineScheduleVy05SwiftB008PeriodicdE0VGMR, &protocol conformance descriptor for PausableTimelineSchedule<A>);
  swift_unknownObjectRetain();
  v31 = v60;
  TimelineView<>.init(_:content:)();
  outlined destroy of PausableTimelineSchedule<PeriodicTimelineSchedule>(v16, &_s9WorkoutUI24PausableTimelineScheduleVy05SwiftB008PeriodicdE0VGMd, &_s9WorkoutUI24PausableTimelineScheduleVy05SwiftB008PeriodicdE0VGMR);
  KeyPath = swift_getKeyPath();
  v33 = v31 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA12TimelineViewVy07WorkoutB008PausableE8ScheduleVyAA08PeriodiceI0VGAA4TextVGAF15MetricValueFontVGMd, &_s7SwiftUI15ModifiedContentVyAA12TimelineViewVy07WorkoutB008PausableE8ScheduleVyAA08PeriodiceI0VGAA4TextVGAF15MetricValueFontVGMR) + 36);
  *v33 = 256;
  *(v33 + 8) = KeyPath;
  *(v33 + 16) = 0;
  v34 = swift_getKeyPath();
  v35 = (v31 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA12TimelineViewVy07WorkoutB008PausableE8ScheduleVyAA08PeriodiceI0VGAA4TextVGAF15MetricValueFontVGAA30_EnvironmentKeyWritingModifierVyAA15LayoutDirectionOGGMd, &_s7SwiftUI15ModifiedContentVyACyAA12TimelineViewVy07WorkoutB008PausableE8ScheduleVyAA08PeriodiceI0VGAA4TextVGAF15MetricValueFontVGAA30_EnvironmentKeyWritingModifierVyAA15LayoutDirectionOGGMR) + 36));
  v36 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA15LayoutDirectionOGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA15LayoutDirectionOGMR) + 28);
  v37 = *MEMORY[0x277CDFA88];
  v38 = type metadata accessor for LayoutDirection();
  (*(*(v38 - 8) + 104))(v35 + v36, v37, v38);
  *v35 = v34;
  v39 = v67;
  v40 = (v31 + *(v67 + 36));
  v41 = *(type metadata accessor for RoundedRectangle() + 20);
  v42 = *MEMORY[0x277CE0118];
  v43 = type metadata accessor for RoundedCornerStyle();
  (*(*(v43 - 8) + 104))(&v40[v41], v42, v43);
  __asm { FMOV            V0.2D, #5.0 }

  *v40 = _Q0;
  v40[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21_ContentShapeModifierVyAA16RoundedRectangleVGMd, &_s7SwiftUI21_ContentShapeModifierVyAA16RoundedRectangleVGMR) + 36)] = 0;
  v49 = v70;
  static AccessibilityChildBehavior.ignore.getter();
  v50 = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<TimelineView<PausableTimelineSchedule<PeriodicTimelineSchedule>, Text>, MetricValueFont>, _EnvironmentKeyWritingModifier<LayoutDirection>>, _ContentShapeModifier<RoundedRectangle>> and conformance <> ModifiedContent<A, B>();
  v51 = v68;
  View.accessibilityElement(children:)();
  (*(v74 + 8))(v49, v75);
  outlined destroy of PausableTimelineSchedule<PeriodicTimelineSchedule>(v31, &_s7SwiftUI15ModifiedContentVyACyACyAA12TimelineViewVy07WorkoutB008PausableE8ScheduleVyAA08PeriodiceI0VGAA4TextVGAF15MetricValueFontVGAA30_EnvironmentKeyWritingModifierVyAA15LayoutDirectionOGGAA01_d5ShapeR0VyAA16RoundedRectangleVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA12TimelineViewVy07WorkoutB008PausableE8ScheduleVyAA08PeriodiceI0VGAA4TextVGAF15MetricValueFontVGAA30_EnvironmentKeyWritingModifierVyAA15LayoutDirectionOGGAA01_d5ShapeR0VyAA16RoundedRectangleVGGMR);
  type metadata accessor for ElapsedTimeFormatter();
  swift_unknownObjectRetain();
  v52 = v64;
  Date.init()();
  dispatch thunk of TimeProviding.elapsedTime(at:)();
  swift_unknownObjectRelease();
  v66(v52, v80);
  v83 = static ElapsedTimeFormatter.accessibilityStringFromElapsedTime(_:)();
  v84 = v53;
  v81 = v39;
  v82 = v50;
  swift_getOpaqueTypeConformance2();
  lazy protocol witness table accessor for type String and conformance String();
  v54 = v69;
  v55 = v72;
  View.accessibilityLabel<A>(_:)();

  (*(v73 + 8))(v51, v55);
  v56 = v76;
  static AccessibilityTraits.updatesFrequently.getter();
  MEMORY[0x20F308AB0](v56, v71);
  (*(v77 + 8))(v56, v79);
  return sub_20C691190(v54);
}

uint64_t closure #1 in WorkoutTimeProvidedView.body.getter@<X0>(uint64_t a4@<X8>)
{
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI12TimelineViewV7ContextVyAA011EveryMinuteC8ScheduleVs5NeverO_GMd, &_s7SwiftUI12TimelineViewV7ContextVyAA011EveryMinuteC8ScheduleVs5NeverO_GMR);
  TimelineView.Context.date.getter();
  dispatch thunk of TimeProviding.elapsedTime(at:)();
  swift_unknownObjectRelease();
  (*(v6 + 8))(v8, v5);
  v17 = Double.safeValueForFormatting()();
  if (v9)
  {
    v10 = 0.0;
  }

  else
  {
    v10 = *&v17.is_nil;
  }

  type metadata accessor for ElapsedTimeFormatter();
  v16[0] = MEMORY[0x20F305C20](0, 0, v10);
  v16[1] = v11;
  lazy protocol witness table accessor for type String and conformance String();
  result = Text.init<A>(_:)();
  *a4 = result;
  *(a4 + 8) = v13;
  *(a4 + 16) = v14 & 1;
  *(a4 + 24) = v15;
  return result;
}

uint64_t WorkoutTimeProvidedView_Previews.MockTimeProvider.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtCV9WorkoutUI32WorkoutTimeProvidedView_Previews16MockTimeProvider_timelineStartDate;
  v2 = type metadata accessor for Date();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for TimeProviding.timelineStartDate.getter in conformance WorkoutTimeProvidedView_Previews.MockTimeProvider@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtCV9WorkoutUI32WorkoutTimeProvidedView_Previews16MockTimeProvider_timelineStartDate;
  v4 = type metadata accessor for Date();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance WorkoutTimeProvidedView_Previews.MockTimeProvider@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for WorkoutTimeProvidedView_Previews.MockTimeProvider(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a2 = result;
  return result;
}

uint64_t specialized closure #1 in TimelineView<>.init(_:content:)@<X0>(uint64_t a1@<X0>, void (*a2)(__int128 *__return_ptr, char *)@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI12TimelineViewV7ContextVyAA011EveryMinuteC8ScheduleVs5NeverO_GMd, &_s7SwiftUI12TimelineViewV7ContextVyAA011EveryMinuteC8ScheduleVs5NeverO_GMR);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v16 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI12TimelineViewV7ContextVy07WorkoutB008PausableC8ScheduleVyAA08PeriodiccH0VGAA4TextV_GMd, &_s7SwiftUI12TimelineViewV7ContextVy07WorkoutB008PausableC8ScheduleVyAA08PeriodiccH0VGAA4TextV_GMR);
  v13 = *(v11 - 8);
  result = v11 - 8;
  if (*(v13 + 64) == v8)
  {
    (*(v7 + 16))(v10, a1, v6);
    a2(&v16, v10);
    result = (*(v7 + 8))(v10, v6);
    v14 = v17;
    v15 = v18;
    *a3 = v16;
    *(a3 + 16) = v14;
    *(a3 + 24) = v15;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t outlined init with copy of PausableTimelineSchedule<PeriodicTimelineSchedule>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI24PausableTimelineScheduleVy05SwiftB008PeriodicdE0VGMd, &_s9WorkoutUI24PausableTimelineScheduleVy05SwiftB008PeriodicdE0VGMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<TimelineView<PausableTimelineSchedule<PeriodicTimelineSchedule>, Text>, MetricValueFont>, _EnvironmentKeyWritingModifier<LayoutDirection>>, _ContentShapeModifier<RoundedRectangle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<TimelineView<PausableTimelineSchedule<PeriodicTimelineSchedule>, Text>, MetricValueFont>, _EnvironmentKeyWritingModifier<LayoutDirection>>, _ContentShapeModifier<RoundedRectangle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<TimelineView<PausableTimelineSchedule<PeriodicTimelineSchedule>, Text>, MetricValueFont>, _EnvironmentKeyWritingModifier<LayoutDirection>>, _ContentShapeModifier<RoundedRectangle>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA12TimelineViewVy07WorkoutB008PausableE8ScheduleVyAA08PeriodiceI0VGAA4TextVGAF15MetricValueFontVGAA30_EnvironmentKeyWritingModifierVyAA15LayoutDirectionOGGAA01_d5ShapeR0VyAA16RoundedRectangleVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA12TimelineViewVy07WorkoutB008PausableE8ScheduleVyAA08PeriodiceI0VGAA4TextVGAF15MetricValueFontVGAA30_EnvironmentKeyWritingModifierVyAA15LayoutDirectionOGGAA01_d5ShapeR0VyAA16RoundedRectangleVGGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<TimelineView<PausableTimelineSchedule<PeriodicTimelineSchedule>, Text>, MetricValueFont>, _EnvironmentKeyWritingModifier<LayoutDirection>> and conformance <> ModifiedContent<A, B>();
    _s9WorkoutUI24PausableTimelineScheduleVy05SwiftB008PeriodicdE0VGACyxGAD0dE0AAWlTm_2(&lazy protocol witness table cache variable for type _ContentShapeModifier<RoundedRectangle> and conformance _ContentShapeModifier<A>, &_s7SwiftUI21_ContentShapeModifierVyAA16RoundedRectangleVGMd, &_s7SwiftUI21_ContentShapeModifierVyAA16RoundedRectangleVGMR, MEMORY[0x277CE0470]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<TimelineView<PausableTimelineSchedule<PeriodicTimelineSchedule>, Text>, MetricValueFont>, _EnvironmentKeyWritingModifier<LayoutDirection>>, _ContentShapeModifier<RoundedRectangle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<TimelineView<PausableTimelineSchedule<PeriodicTimelineSchedule>, Text>, MetricValueFont>, _EnvironmentKeyWritingModifier<LayoutDirection>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<TimelineView<PausableTimelineSchedule<PeriodicTimelineSchedule>, Text>, MetricValueFont>, _EnvironmentKeyWritingModifier<LayoutDirection>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<TimelineView<PausableTimelineSchedule<PeriodicTimelineSchedule>, Text>, MetricValueFont>, _EnvironmentKeyWritingModifier<LayoutDirection>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA12TimelineViewVy07WorkoutB008PausableE8ScheduleVyAA08PeriodiceI0VGAA4TextVGAF15MetricValueFontVGAA30_EnvironmentKeyWritingModifierVyAA15LayoutDirectionOGGMd, &_s7SwiftUI15ModifiedContentVyACyAA12TimelineViewVy07WorkoutB008PausableE8ScheduleVyAA08PeriodiceI0VGAA4TextVGAF15MetricValueFontVGAA30_EnvironmentKeyWritingModifierVyAA15LayoutDirectionOGGMR);
    lazy protocol witness table accessor for type ModifiedContent<TimelineView<PausableTimelineSchedule<PeriodicTimelineSchedule>, Text>, MetricValueFont> and conformance <> ModifiedContent<A, B>();
    _s9WorkoutUI24PausableTimelineScheduleVy05SwiftB008PeriodicdE0VGACyxGAD0dE0AAWlTm_2(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<LayoutDirection> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA15LayoutDirectionOGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA15LayoutDirectionOGMR, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<TimelineView<PausableTimelineSchedule<PeriodicTimelineSchedule>, Text>, MetricValueFont>, _EnvironmentKeyWritingModifier<LayoutDirection>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<TimelineView<PausableTimelineSchedule<PeriodicTimelineSchedule>, Text>, MetricValueFont> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<TimelineView<PausableTimelineSchedule<PeriodicTimelineSchedule>, Text>, MetricValueFont> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<TimelineView<PausableTimelineSchedule<PeriodicTimelineSchedule>, Text>, MetricValueFont> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA12TimelineViewVy07WorkoutB008PausableE8ScheduleVyAA08PeriodiceI0VGAA4TextVGAF15MetricValueFontVGMd, &_s7SwiftUI15ModifiedContentVyAA12TimelineViewVy07WorkoutB008PausableE8ScheduleVyAA08PeriodiceI0VGAA4TextVGAF15MetricValueFontVGMR);
    lazy protocol witness table accessor for type TimelineView<PausableTimelineSchedule<PeriodicTimelineSchedule>, Text> and conformance <> TimelineView<A, B>();
    lazy protocol witness table accessor for type MetricValueFont and conformance MetricValueFont();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<TimelineView<PausableTimelineSchedule<PeriodicTimelineSchedule>, Text>, MetricValueFont> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TimelineView<PausableTimelineSchedule<PeriodicTimelineSchedule>, Text> and conformance <> TimelineView<A, B>()
{
  result = lazy protocol witness table cache variable for type TimelineView<PausableTimelineSchedule<PeriodicTimelineSchedule>, Text> and conformance <> TimelineView<A, B>;
  if (!lazy protocol witness table cache variable for type TimelineView<PausableTimelineSchedule<PeriodicTimelineSchedule>, Text> and conformance <> TimelineView<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI12TimelineViewVy07WorkoutB008PausableC8ScheduleVyAA08PeriodiccG0VGAA4TextVGMd, &_s7SwiftUI12TimelineViewVy07WorkoutB008PausableC8ScheduleVyAA08PeriodiccG0VGAA4TextVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TimelineView<PausableTimelineSchedule<PeriodicTimelineSchedule>, Text> and conformance <> TimelineView<A, B>);
  }

  return result;
}

uint64_t _s9WorkoutUI24PausableTimelineScheduleVy05SwiftB008PeriodicdE0VGACyxGAD0dE0AAWlTm_2(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t outlined destroy of PausableTimelineSchedule<PeriodicTimelineSchedule>(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t type metadata instantiation function for WorkoutTimeProvidedView(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t getEnumTagSinglePayload for WorkoutTimeProvidedView(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t storeEnumTagSinglePayload for WorkoutTimeProvidedView(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t type metadata accessor for WorkoutTimeProvidedView_Previews.MockTimeProvider(uint64_t a1)
{
  result = type metadata singleton initialization cache for WorkoutTimeProvidedView_Previews.MockTimeProvider;
  if (!type metadata singleton initialization cache for WorkoutTimeProvidedView_Previews.MockTimeProvider)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for WorkoutTimeProvidedView_Previews.MockTimeProvider(uint64_t a1)
{
  result = type metadata accessor for Date();
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

uint64_t _s7SwiftUI31AccessibilityAttachmentModifierVAcA04ViewE0AAWlTm_8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t @objc static CustomLayerTypeView.layerClass.getter(uint64_t a1)
{
  swift_getObjCClassMetadata();
  static CustomLayerTypeView.layerClass.getter();

  return swift_getObjCClassFromMetadata();
}

id CustomLayerTypeView.init(frame:)(double a1, double a2, double a3, double a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = type metadata accessor for CustomLayerTypeView(0, *((*MEMORY[0x277D85000] & *v8) + 0x50), a7, a8);
  v15.receiver = v8;
  v15.super_class = v13;
  return objc_msgSendSuper2(&v15, sel_initWithFrame_, a1, a2, a3, a4);
}

id CustomLayerTypeView.init(coder:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for CustomLayerTypeView(0, *((*MEMORY[0x277D85000] & *v4) + 0x50), a3, a4);
  v9.receiver = v4;
  v9.super_class = v6;
  v7 = objc_msgSendSuper2(&v9, sel_initWithCoder_, a1);

  if (v7)
  {
  }

  return v7;
}

id CustomLayerTypeView.__deallocating_deinit(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for CustomLayerTypeView(0, *((*MEMORY[0x277D85000] & *v4) + 0x50), a3, a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

void TimePicker.init(formattingManager:goal:showHour:showSecond:lastWorkoutValue:minimumValue:editMode:context:)(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, double a10@<D0>, uint64_t a11, uint64_t a12, char a13, uint64_t a14)
{
  v15 = a6;
  v16 = a5;
  v23 = *(a14 + 24);
  v24 = *(a14 + 32);
  *(a9 + 40) = *a14;
  *(a9 + 48) = *(a14 + 8);
  *(a9 + 64) = v23;
  *(a9 + 72) = v24;
  type metadata accessor for TimePickerViewModel(0);
  swift_allocObject();
  v25 = a1;

  v26 = a4;
  TimePickerViewModel.init(formattingManager:goal:showHour:showSecond:lastWorkoutValue:minimumValue:)(v25, a2, a3, v26, v16, v15, a7, a8 & 1, a10);

  State.init(wrappedValue:)();

  *a9 = v28;
  *(a9 + 8) = v29;
  *(a9 + 16) = a11;
  *(a9 + 24) = a12;
  *(a9 + 32) = a13;
}

uint64_t TimePicker.init(formattingManager:goal:showHour:showSecond:lastWorkoutValue:color:minimumValue:editMode:displayImage:style:)@<X0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, char a11, uint64_t a12, uint64_t a13, char a14, char a15, char *a16)
{
  v17 = a5;
  v29 = *a16;
  type metadata accessor for TimePickerViewModel(0);
  swift_allocObject();
  swift_retain_n();
  v24 = a1;

  v25 = a4;
  TimePickerViewModel.init(formattingManager:goal:showHour:showSecond:lastWorkoutValue:minimumValue:)(v24, a2, a3, v25, v17, a6, a8, a11 & 1, a10);

  State.init(wrappedValue:)();

  *a9 = v30;
  *(a9 + 8) = v31;
  *(a9 + 16) = a12;
  *(a9 + 24) = a13;
  *(a9 + 32) = a14;
  *(a9 + 40) = v29;
  *(a9 + 56) = 0;
  *(a9 + 64) = 0;
  *(a9 + 48) = a7;
  *(a9 + 72) = a15;
  return result;
}

double TimePicker.body.getter@<D0>(uint64_t a2@<X8>)
{
  v5 = *v2;
  v4 = v2[1];
  v6 = v2[2];
  v16 = *(v2 + 40);
  v7 = v2[6];
  v8 = v2[7];
  v9 = v2[8];
  v10 = *(v2 + 72);
  if (static Platform.current.getter())
  {
    *&v19 = v5;
    *(&v19 + 1) = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy07WorkoutB019TimePickerViewModelCGMd, &_s7SwiftUI5StateVy07WorkoutB019TimePickerViewModelCGMR);
    State.wrappedValue.getter();
    type metadata accessor for TimePickerViewModel(0);
    State.init(wrappedValue:)();
    v17 = v19;
    _s7SwiftUI19_ConditionalContentV7StorageOy07WorkoutB015TimePickerPhoneVAF0gH5WatchV_GWOi0_(&v17);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy07WorkoutB019TimePickerViewModelCGMd, &_s7SwiftUI5StateVy07WorkoutB019TimePickerViewModelCGMR);
    State.wrappedValue.getter();
    *&v19 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySbGMd, &_s7SwiftUI7BindingVySbGMR);
    Binding.projectedValue.getter();
    LOBYTE(v19) = v16;
    *(&v19 + 1) = v7;
    *&v20 = v8;
    *(&v20 + 1) = v9;
    LOBYTE(v21) = v10;

    TimePickerPhone.init(viewModel:editMode:context:)(v17, *(&v17 + 1), v18, &v19, &v17);
    _s7SwiftUI19_ConditionalContentV7StorageOy07WorkoutB015TimePickerPhoneVAF0gH5WatchV_GWOi_(&v17);
  }

  lazy protocol witness table accessor for type TimePickerPhone and conformance TimePickerPhone();
  lazy protocol witness table accessor for type TimePickerWatch and conformance TimePickerWatch();
  _ConditionalContent<>.init(storage:)();
  v11 = v26;
  *(a2 + 96) = v25;
  *(a2 + 112) = v11;
  *(a2 + 128) = v27;
  *(a2 + 144) = v28;
  v12 = v22;
  *(a2 + 32) = v21;
  *(a2 + 48) = v12;
  v13 = v24;
  *(a2 + 64) = v23;
  *(a2 + 80) = v13;
  result = *&v19;
  v15 = v20;
  *a2 = v19;
  *(a2 + 16) = v15;
  return result;
}

unint64_t lazy protocol witness table accessor for type TimePickerPhone and conformance TimePickerPhone()
{
  result = lazy protocol witness table cache variable for type TimePickerPhone and conformance TimePickerPhone;
  if (!lazy protocol witness table cache variable for type TimePickerPhone and conformance TimePickerPhone)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TimePickerPhone and conformance TimePickerPhone);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TimePickerWatch and conformance TimePickerWatch()
{
  result = lazy protocol witness table cache variable for type TimePickerWatch and conformance TimePickerWatch;
  if (!lazy protocol witness table cache variable for type TimePickerWatch and conformance TimePickerWatch)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TimePickerWatch and conformance TimePickerWatch);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TimePicker(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 73))
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

uint64_t storeEnumTagSinglePayload for TimePicker(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t lazy protocol witness table accessor for type _ConditionalContent<TimePickerPhone, TimePickerWatch> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<TimePickerPhone, TimePickerWatch> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<TimePickerPhone, TimePickerWatch> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB015TimePickerPhoneVAD0fG5WatchVGMd, &_s7SwiftUI19_ConditionalContentVy07WorkoutB015TimePickerPhoneVAD0fG5WatchVGMR);
    lazy protocol witness table accessor for type TimePickerPhone and conformance TimePickerPhone();
    lazy protocol witness table accessor for type TimePickerWatch and conformance TimePickerWatch();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<TimePickerPhone, TimePickerWatch> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

Swift::Int IntervalSecondaryMetric.DisplayType.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F30CD90](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance IntervalSecondaryMetric.DisplayType()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F30CD90](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance IntervalSecondaryMetric.DisplayType(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  MEMORY[0x20F30CD90](v2);
  return Hasher._finalize()();
}

void static IntervalSecondaryMetric.displayType(for:activityMoveMode:)(uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = WorkoutStep.activityType.getter();
  v10 = 1;
  v11 = [objc_opt_self() fiui:1 activitySupportsMetricType:v9 activityType:a2 activityMoveMode:?];

  v12 = WorkoutStep.goal.getter();
  v13 = [v12 goalTypeIdentifier];

  if (v13 <= 1)
  {
    if (v13)
    {
      if (v13 == 1)
      {
        goto LABEL_14;
      }

      goto LABEL_11;
    }

LABEL_8:
    if (v11)
    {
      v10 = 0;
    }

    else
    {
      v10 = 2;
    }

    goto LABEL_14;
  }

  if (v13 == 2)
  {
    goto LABEL_8;
  }

  if (v13 == 3)
  {
    v10 = v11 ^ 1;
    goto LABEL_14;
  }

LABEL_11:
  static WOLog.core.getter();

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v23 = v22;
    *v16 = 136315138;
    v17 = WorkoutStep.goal.getter();
    [v17 goalTypeIdentifier];

    v18 = _HKWorkoutGoalType.description.getter();
    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, &v23);

    *(v16 + 4) = v20;
    v21 = v22;
    __swift_destroy_boxed_opaque_existential_0(v22);
    MEMORY[0x20F30E080](v21, -1, -1);
    MEMORY[0x20F30E080](v16, -1, -1);
  }

  (*(v6 + 8))(v8, v5);
  v10 = 2;
LABEL_14:
  *a3 = v10;
}

void IntervalSecondaryMetric.init(intervalsMetricsPublisher:workoutStatePublisher:step:formattingManager:activityType:activityMoveMode:)(uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  type metadata accessor for IntervalsMetricsPublisher();
  _s11WorkoutCore25IntervalsMetricsPublisherCAC7Combine16ObservableObjectAAWlTm_4(&lazy protocol witness table cache variable for type IntervalsMetricsPublisher and conformance IntervalsMetricsPublisher, MEMORY[0x277D7E518], MEMORY[0x277D7E510]);

  *a7 = ObservedObject.init(wrappedValue:)();
  a7[1] = v12;
  type metadata accessor for WorkoutStatePublisher();
  _s11WorkoutCore25IntervalsMetricsPublisherCAC7Combine16ObservableObjectAAWlTm_4(&lazy protocol witness table cache variable for type WorkoutStatePublisher and conformance WorkoutStatePublisher, MEMORY[0x277D7DA88], MEMORY[0x277D7DA78]);
  v13 = ObservedObject.init(wrappedValue:)();
  v15 = v14;

  a7[2] = v13;
  a7[3] = v15;
  a7[4] = a3;
  a7[5] = a4;
  a7[6] = a5;
  a7[7] = a6;
}

uint64_t IntervalSecondaryMetric.body.getter@<X0>(uint64_t a1@<X8>)
{
  v54 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v46 - v3;
  v5 = type metadata accessor for WorkoutTimeView(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACy07WorkoutB00E8TimeViewVAA24_ForegroundStyleModifierVyAA5ColorVGGAD12MetricDetailVGMd, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB00E8TimeViewVAA24_ForegroundStyleModifierVyAA5ColorVGGAD12MetricDetailVGMR);
  MEMORY[0x28223BE20](v49);
  v47 = &v46 - v8;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyACy07WorkoutB024DistanceDetailMetricViewVAA08ModifiedD0VyAJyAF0f4TimeJ0VAA24_ForegroundStyleModifierVyAA5ColorVGGAF0iH0VGGAJyAJyAA9RectangleVAA07_HiddenO0VGAA12_FrameLayoutVG_GMd, &_s7SwiftUI19_ConditionalContentV7StorageOyACy07WorkoutB024DistanceDetailMetricViewVAA08ModifiedD0VyAJyAF0f4TimeJ0VAA24_ForegroundStyleModifierVyAA5ColorVGGAF0iH0VGGAJyAJyAA9RectangleVAA07_HiddenO0VGAA12_FrameLayoutVG_GMR);
  MEMORY[0x28223BE20](v51);
  v53 = (&v46 - v9);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOy07WorkoutB024DistanceDetailMetricViewVAA08ModifiedD0VyAJyAF0f4TimeJ0VAA24_ForegroundStyleModifierVyAA5ColorVGGAF0iH0VG_GMd, &_s7SwiftUI19_ConditionalContentV7StorageOy07WorkoutB024DistanceDetailMetricViewVAA08ModifiedD0VyAJyAF0f4TimeJ0VAA24_ForegroundStyleModifierVyAA5ColorVGGAF0iH0VG_GMR);
  MEMORY[0x28223BE20](v48);
  v11 = &v46 - v10;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB024DistanceDetailMetricViewVAA08ModifiedD0VyAHyAD0e4TimeI0VAA24_ForegroundStyleModifierVyAA5ColorVGGAD0hG0VGGMd, &_s7SwiftUI19_ConditionalContentVy07WorkoutB024DistanceDetailMetricViewVAA08ModifiedD0VyAHyAD0e4TimeI0VAA24_ForegroundStyleModifierVyAA5ColorVGGAD0hG0VGGMR);
  MEMORY[0x28223BE20](v52);
  v50 = &v46 - v12;
  v13 = *(v1 + 40);
  static IntervalSecondaryMetric.displayType(for:activityMoveMode:)(*(v1 + 56), &v55);
  if (v55)
  {
    if (v55 == 1)
    {

      IntervalsMetricsPublisher.intervalStartDate.getter();

      *v7 = swift_getKeyPath();
      v7[8] = 0;
      *(v7 + 2) = swift_getKeyPath();
      v7[24] = 0;
      v14 = v5[6];
      v15 = type metadata accessor for Date();
      (*(*(v15 - 8) + 56))(&v7[v14], 1, 1, v15);
      v16 = v5[7];

      outlined assign with copy of Date?(v4, &v7[v14]);
      v7[v16] = 0;
      v17 = &v7[v5[8]];
      type metadata accessor for WorkoutStatePublisher();
      _s11WorkoutCore25IntervalsMetricsPublisherCAC7Combine16ObservableObjectAAWlTm_4(&lazy protocol witness table cache variable for type WorkoutStatePublisher and conformance WorkoutStatePublisher, MEMORY[0x277D7DA88], MEMORY[0x277D7DA78]);
      v18 = ObservedObject.init(wrappedValue:)();
      v20 = v19;
      _s10Foundation4DateVSgWOhTm_3(v4, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      *v17 = v18;
      v17[1] = v20;
      v21 = static Color.white.getter();
      v22 = v47;
      outlined init with copy of WorkoutTimeView(v7, v47);
      *(v22 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB00E8TimeViewVAA24_ForegroundStyleModifierVyAA5ColorVGGMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB00E8TimeViewVAA24_ForegroundStyleModifierVyAA5ColorVGGMR) + 36)) = v21;
      outlined destroy of WorkoutTimeView(v7);
      if (one-time initialization token for WorkoutUIBundle != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v23 = WorkoutUIBundle.super.isa;
      v61._object = 0xE000000000000000;
      v24.value._countAndFlagsBits = 0x617A696C61636F4CLL;
      v24.value._object = 0xEB00000000656C62;
      v25._object = 0x800000020CB9FCB0;
      v25._countAndFlagsBits = 0xD00000000000001BLL;
      v26._countAndFlagsBits = 0;
      v26._object = 0xE000000000000000;
      v61._countAndFlagsBits = 0;
      v27 = NSLocalizedString(_:tableName:bundle:value:comment:)(v25, v24, v23, v26, v61);

      v28 = [objc_opt_self() secondaryLabelColor];
      v29 = Color.init(uiColor:)();
      v30 = (v22 + *(v49 + 36));
      *v30 = v27;
      v30[1]._countAndFlagsBits = v29;
      v30[1]._object = 0x4008000000000000;
      outlined init with copy of ModifiedContent<ModifiedContent<WorkoutTimeView, _ForegroundStyleModifier<Color>>, MetricDetail>(v22, v11, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB00E8TimeViewVAA24_ForegroundStyleModifierVyAA5ColorVGGAD12MetricDetailVGMd, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB00E8TimeViewVAA24_ForegroundStyleModifierVyAA5ColorVGGAD12MetricDetailVGMR);
      swift_storeEnumTagMultiPayload();
      lazy protocol witness table accessor for type DistanceDetailMetricView and conformance DistanceDetailMetricView();
      lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<WorkoutTimeView, _ForegroundStyleModifier<Color>>, MetricDetail> and conformance <> ModifiedContent<A, B>();
      v31 = v50;
      _ConditionalContent<>.init(storage:)();
      outlined init with copy of ModifiedContent<ModifiedContent<WorkoutTimeView, _ForegroundStyleModifier<Color>>, MetricDetail>(v31, v53, &_s7SwiftUI19_ConditionalContentVy07WorkoutB024DistanceDetailMetricViewVAA08ModifiedD0VyAHyAD0e4TimeI0VAA24_ForegroundStyleModifierVyAA5ColorVGGAD0hG0VGGMd, &_s7SwiftUI19_ConditionalContentVy07WorkoutB024DistanceDetailMetricViewVAA08ModifiedD0VyAHyAD0e4TimeI0VAA24_ForegroundStyleModifierVyAA5ColorVGGAD0hG0VGGMR);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA9RectangleVAA15_HiddenModifierVGAA12_FrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACyAA9RectangleVAA15_HiddenModifierVGAA12_FrameLayoutVGMR);
      lazy protocol witness table accessor for type _ConditionalContent<DistanceDetailMetricView, ModifiedContent<ModifiedContent<WorkoutTimeView, _ForegroundStyleModifier<Color>>, MetricDetail>> and conformance <> _ConditionalContent<A, B>();
      lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Rectangle, _HiddenModifier>, _FrameLayout> and conformance <> ModifiedContent<A, B>();
      _ConditionalContent<>.init(storage:)();
      _s10Foundation4DateVSgWOhTm_3(v31, &_s7SwiftUI19_ConditionalContentVy07WorkoutB024DistanceDetailMetricViewVAA08ModifiedD0VyAHyAD0e4TimeI0VAA24_ForegroundStyleModifierVyAA5ColorVGGAD0hG0VGGMd, &_s7SwiftUI19_ConditionalContentVy07WorkoutB024DistanceDetailMetricViewVAA08ModifiedD0VyAHyAD0e4TimeI0VAA24_ForegroundStyleModifierVyAA5ColorVGGAD0hG0VGGMR);
      return _s10Foundation4DateVSgWOhTm_3(v22, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB00E8TimeViewVAA24_ForegroundStyleModifierVyAA5ColorVGGAD12MetricDetailVGMd, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB00E8TimeViewVAA24_ForegroundStyleModifierVyAA5ColorVGGAD12MetricDetailVGMR);
    }

    else
    {
      static Alignment.center.getter();
      _FrameLayout.init(width:height:alignment:)();
      v42 = v57;
      v43 = v58;
      v44 = v59;
      v45 = v53;
      *v53 = v56;
      *(v45 + 8) = v42;
      v45[2] = v43;
      *(v45 + 24) = v44;
      *(v45 + 2) = v60;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA9RectangleVAA15_HiddenModifierVGAA12_FrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACyAA9RectangleVAA15_HiddenModifierVGAA12_FrameLayoutVGMR);
      lazy protocol witness table accessor for type _ConditionalContent<DistanceDetailMetricView, ModifiedContent<ModifiedContent<WorkoutTimeView, _ForegroundStyleModifier<Color>>, MetricDetail>> and conformance <> _ConditionalContent<A, B>();
      lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Rectangle, _HiddenModifier>, _FrameLayout> and conformance <> ModifiedContent<A, B>();
      return _ConditionalContent<>.init(storage:)();
    }
  }

  else
  {

    IntervalsMetricsPublisher.intervalDistance.getter();
    v34 = v33;

    v35 = v13;
    v36 = FIUIDistanceTypeForActivityType();
    v37 = WorkoutStep.goal.getter();
    v38 = NLSessionActivityGoal.isTimeAndDistanceGoal()();

    *v11 = v34;
    v39 = 42;
    if (v38)
    {
      v39 = 0;
    }

    *(v11 + 1) = v35;
    *(v11 + 2) = v36;
    *(v11 + 3) = 0;
    v11[32] = 1;
    *(v11 + 5) = v39;
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type DistanceDetailMetricView and conformance DistanceDetailMetricView();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<WorkoutTimeView, _ForegroundStyleModifier<Color>>, MetricDetail> and conformance <> ModifiedContent<A, B>();
    v40 = v35;
    v41 = v50;
    _ConditionalContent<>.init(storage:)();
    outlined init with copy of ModifiedContent<ModifiedContent<WorkoutTimeView, _ForegroundStyleModifier<Color>>, MetricDetail>(v41, v53, &_s7SwiftUI19_ConditionalContentVy07WorkoutB024DistanceDetailMetricViewVAA08ModifiedD0VyAHyAD0e4TimeI0VAA24_ForegroundStyleModifierVyAA5ColorVGGAD0hG0VGGMd, &_s7SwiftUI19_ConditionalContentVy07WorkoutB024DistanceDetailMetricViewVAA08ModifiedD0VyAHyAD0e4TimeI0VAA24_ForegroundStyleModifierVyAA5ColorVGGAD0hG0VGGMR);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA9RectangleVAA15_HiddenModifierVGAA12_FrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACyAA9RectangleVAA15_HiddenModifierVGAA12_FrameLayoutVGMR);
    lazy protocol witness table accessor for type _ConditionalContent<DistanceDetailMetricView, ModifiedContent<ModifiedContent<WorkoutTimeView, _ForegroundStyleModifier<Color>>, MetricDetail>> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Rectangle, _HiddenModifier>, _FrameLayout> and conformance <> ModifiedContent<A, B>();
    _ConditionalContent<>.init(storage:)();

    return _s10Foundation4DateVSgWOhTm_3(v41, &_s7SwiftUI19_ConditionalContentVy07WorkoutB024DistanceDetailMetricViewVAA08ModifiedD0VyAHyAD0e4TimeI0VAA24_ForegroundStyleModifierVyAA5ColorVGGAD0hG0VGGMd, &_s7SwiftUI19_ConditionalContentVy07WorkoutB024DistanceDetailMetricViewVAA08ModifiedD0VyAHyAD0e4TimeI0VAA24_ForegroundStyleModifierVyAA5ColorVGGAD0hG0VGGMR);
  }
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<DistanceDetailMetricView, ModifiedContent<ModifiedContent<WorkoutTimeView, _ForegroundStyleModifier<Color>>, MetricDetail>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<DistanceDetailMetricView, ModifiedContent<ModifiedContent<WorkoutTimeView, _ForegroundStyleModifier<Color>>, MetricDetail>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<DistanceDetailMetricView, ModifiedContent<ModifiedContent<WorkoutTimeView, _ForegroundStyleModifier<Color>>, MetricDetail>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB024DistanceDetailMetricViewVAA08ModifiedD0VyAHyAD0e4TimeI0VAA24_ForegroundStyleModifierVyAA5ColorVGGAD0hG0VGGMd, &_s7SwiftUI19_ConditionalContentVy07WorkoutB024DistanceDetailMetricViewVAA08ModifiedD0VyAHyAD0e4TimeI0VAA24_ForegroundStyleModifierVyAA5ColorVGGAD0hG0VGGMR);
    lazy protocol witness table accessor for type DistanceDetailMetricView and conformance DistanceDetailMetricView();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<WorkoutTimeView, _ForegroundStyleModifier<Color>>, MetricDetail> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<DistanceDetailMetricView, ModifiedContent<ModifiedContent<WorkoutTimeView, _ForegroundStyleModifier<Color>>, MetricDetail>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<WorkoutTimeView, _ForegroundStyleModifier<Color>>, MetricDetail> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<WorkoutTimeView, _ForegroundStyleModifier<Color>>, MetricDetail> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<WorkoutTimeView, _ForegroundStyleModifier<Color>>, MetricDetail> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACy07WorkoutB00E8TimeViewVAA24_ForegroundStyleModifierVyAA5ColorVGGAD12MetricDetailVGMd, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB00E8TimeViewVAA24_ForegroundStyleModifierVyAA5ColorVGGAD12MetricDetailVGMR);
    lazy protocol witness table accessor for type ModifiedContent<WorkoutTimeView, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type MetricDetail and conformance MetricDetail();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<WorkoutTimeView, _ForegroundStyleModifier<Color>>, MetricDetail> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<WorkoutTimeView, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<WorkoutTimeView, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<WorkoutTimeView, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB00E8TimeViewVAA24_ForegroundStyleModifierVyAA5ColorVGGMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB00E8TimeViewVAA24_ForegroundStyleModifierVyAA5ColorVGGMR);
    _s11WorkoutCore25IntervalsMetricsPublisherCAC7Combine16ObservableObjectAAWlTm_4(&lazy protocol witness table cache variable for type WorkoutTimeView and conformance WorkoutTimeView, type metadata accessor for WorkoutTimeView, &protocol conformance descriptor for WorkoutTimeView);
    lazy protocol witness table accessor for type _ForegroundStyleModifier<Color> and conformance _ForegroundStyleModifier<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<WorkoutTimeView, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t _s11WorkoutCore25IntervalsMetricsPublisherCAC7Combine16ObservableObjectAAWlTm_4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Rectangle, _HiddenModifier>, _FrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Rectangle, _HiddenModifier>, _FrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Rectangle, _HiddenModifier>, _FrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA9RectangleVAA15_HiddenModifierVGAA12_FrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACyAA9RectangleVAA15_HiddenModifierVGAA12_FrameLayoutVGMR);
    lazy protocol witness table accessor for type ModifiedContent<Rectangle, _HiddenModifier> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Rectangle, _HiddenModifier>, _FrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Rectangle, _HiddenModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Rectangle, _HiddenModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Rectangle, _HiddenModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA9RectangleVAA15_HiddenModifierVGMd, &_s7SwiftUI15ModifiedContentVyAA9RectangleVAA15_HiddenModifierVGMR);
    lazy protocol witness table accessor for type Rectangle and conformance Rectangle();
    lazy protocol witness table accessor for type _HiddenModifier and conformance _HiddenModifier();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Rectangle, _HiddenModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t outlined init with copy of ModifiedContent<ModifiedContent<WorkoutTimeView, _ForegroundStyleModifier<Color>>, MetricDetail>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t _s10Foundation4DateVSgWOhTm_3(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t lazy protocol witness table accessor for type IntervalSecondaryMetric.DisplayType and conformance IntervalSecondaryMetric.DisplayType()
{
  result = lazy protocol witness table cache variable for type IntervalSecondaryMetric.DisplayType and conformance IntervalSecondaryMetric.DisplayType;
  if (!lazy protocol witness table cache variable for type IntervalSecondaryMetric.DisplayType and conformance IntervalSecondaryMetric.DisplayType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IntervalSecondaryMetric.DisplayType and conformance IntervalSecondaryMetric.DisplayType);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for IntervalSecondaryMetric(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t storeEnumTagSinglePayload for IntervalSecondaryMetric(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for IntervalSecondaryMetric.DisplayType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for IntervalSecondaryMetric.DisplayType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<DistanceDetailMetricView, ModifiedContent<ModifiedContent<WorkoutTimeView, _ForegroundStyleModifier<Color>>, MetricDetail>>, ModifiedContent<ModifiedContent<Rectangle, _HiddenModifier>, _FrameLayout>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<DistanceDetailMetricView, ModifiedContent<ModifiedContent<WorkoutTimeView, _ForegroundStyleModifier<Color>>, MetricDetail>>, ModifiedContent<ModifiedContent<Rectangle, _HiddenModifier>, _FrameLayout>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<DistanceDetailMetricView, ModifiedContent<ModifiedContent<WorkoutTimeView, _ForegroundStyleModifier<Color>>, MetricDetail>>, ModifiedContent<ModifiedContent<Rectangle, _HiddenModifier>, _FrameLayout>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyACy07WorkoutB024DistanceDetailMetricViewVAA08ModifiedD0VyAHyAD0e4TimeI0VAA24_ForegroundStyleModifierVyAA5ColorVGGAD0hG0VGGAHyAHyAA9RectangleVAA07_HiddenN0VGAA12_FrameLayoutVGGMd, &_s7SwiftUI19_ConditionalContentVyACy07WorkoutB024DistanceDetailMetricViewVAA08ModifiedD0VyAHyAD0e4TimeI0VAA24_ForegroundStyleModifierVyAA5ColorVGGAD0hG0VGGAHyAHyAA9RectangleVAA07_HiddenN0VGAA12_FrameLayoutVGGMR);
    lazy protocol witness table accessor for type _ConditionalContent<DistanceDetailMetricView, ModifiedContent<ModifiedContent<WorkoutTimeView, _ForegroundStyleModifier<Color>>, MetricDetail>> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Rectangle, _HiddenModifier>, _FrameLayout> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<DistanceDetailMetricView, ModifiedContent<ModifiedContent<WorkoutTimeView, _ForegroundStyleModifier<Color>>, MetricDetail>>, ModifiedContent<ModifiedContent<Rectangle, _HiddenModifier>, _FrameLayout>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

id NSUnitLength.hkUnit.getter()
{
  v0 = objc_opt_self();
  v1 = [v0 miles];
  _sSo12NSUnitLengthCMaTm_2(0, &lazy cache variable for type metadata for NSUnitLength, 0x277CCAE20);
  v2 = static NSObject.== infix(_:_:)();

  if (v2)
  {
    v3 = [objc_opt_self() mileUnit];
  }

  else
  {
    v4 = [v0 yards];
    v5 = static NSObject.== infix(_:_:)();

    if (v5)
    {
      v3 = [objc_opt_self() yardUnit];
    }

    else
    {
      v6 = [v0 kilometers];
      v7 = static NSObject.== infix(_:_:)();

      if (v7)
      {
        v3 = [objc_opt_self() meterUnitWithMetricPrefix_];
      }

      else
      {
        v8 = [v0 meters];
        v9 = static NSObject.== infix(_:_:)();

        if ((v9 & 1) == 0)
        {
          result = _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
          return result;
        }

        v3 = [objc_opt_self() meterUnit];
      }
    }
  }

  return v3;
}

id HKUnit.unitLength.getter()
{
  v0 = objc_opt_self();
  v1 = [v0 mileUnit];
  _sSo12NSUnitLengthCMaTm_2(0, &lazy cache variable for type metadata for HKUnit, 0x277CCDAB0);
  v2 = static NSObject.== infix(_:_:)();

  if (v2)
  {
    v3 = &selRef_miles;
  }

  else
  {
    v4 = [v0 yardUnit];
    v5 = static NSObject.== infix(_:_:)();

    if (v5)
    {
      v3 = &selRef_yards;
    }

    else
    {
      v6 = [v0 meterUnitWithMetricPrefix_];
      v7 = static NSObject.== infix(_:_:)();

      if (v7)
      {
        v3 = &selRef_kilometers;
      }

      else
      {
        v8 = [v0 meterUnit];
        v9 = static NSObject.== infix(_:_:)();

        if ((v9 & 1) == 0)
        {
          result = _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
          return result;
        }

        v3 = &selRef_meters;
      }
    }
  }

  v10 = [objc_opt_self() *v3];

  return v10;
}

uint64_t _sSo12NSUnitLengthCMaTm_2(uint64_t a1, unint64_t *a2, void *a3)
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

double MetricPlatterConstants.init()@<D0>(uint64_t a1@<X8>)
{
  v2 = objc_opt_self();
  v3 = [v2 currentDevice];
  v4 = specialized UIDevice.screenType.getter();

  v5 = dbl_20CB82280[v4];
  v6 = objc_opt_self();
  v7 = [v6 mainScreen];
  [v7 scale];
  v9 = v8;

  v10 = [v6 mainScreen];
  [v10 nativeScale];
  v12 = v11;

  if (v9 != v12)
  {
    v13 = [v6 mainScreen];
    [v13 scale];
    v15 = v14;

    v16 = [v6 mainScreen];
    [v16 nativeScale];
    v18 = v17;

    v5 = v5 * (v15 / v18 * 0.95);
  }

  *a1 = v5;
  *(a1 + 8) = xmmword_20CB821F0;
  *(a1 + 24) = xmmword_20CB82200;
  result = 0.0;
  *(a1 + 40) = xmmword_20CB82210;
  return result;
}

uint64_t getEnumTagSinglePayload for MetricPlatterConstants(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 56))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for MetricPlatterConstants(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
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

  *(result + 56) = v3;
  return result;
}

void specialized Dictionary.subscript.setter(uint64_t a1, void *a2)
{
  if (*(a1 + 24))
  {
    sub_20C691270(a1, v6);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v5 = *v2;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v6, a2, isUniquelyReferenced_nonNull_native);

    *v2 = v5;
  }

  else
  {
    outlined destroy of OS_dispatch_queue.SchedulerOptions?(a1, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
    specialized Dictionary._Variant.removeValue(forKey:)(a2, v6);

    outlined destroy of OS_dispatch_queue.SchedulerOptions?(v6, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
  }
}

uint64_t specialized Dictionary.subscript.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, isUniquelyReferenced_nonNull_native);
    v7 = type metadata accessor for UUID();
    result = (*(*(v7 - 8) + 8))(a2, v7);
    *v2 = v20;
  }

  else
  {
    v9 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if (v10)
    {
      v11 = v9;
      v12 = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v2;
      v21 = *v3;
      if (!v12)
      {
        specialized _NativeDictionary.copy()();
        v13 = v21;
      }

      v14 = *(v13 + 48);
      v15 = type metadata accessor for UUID();
      v16 = *(v15 - 8);
      v17 = *(v16 + 8);
      v17(v14 + *(v16 + 72) * v11, v15);

      specialized _NativeDictionary._delete(at:)(v11, v13);
      result = (v17)(a2, v15);
      *v3 = v13;
    }

    else
    {
      v18 = type metadata accessor for UUID();
      v19 = *(*(v18 - 8) + 8);

      return v19(a2, v18);
    }
  }

  return result;
}

{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v21 - v7;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9, v11) == 1)
  {
    outlined destroy of OS_dispatch_queue.SchedulerOptions?(a1, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v14 = specialized __RawDictionaryStorage.find<A>(_:)();
    if (v15)
    {
      v16 = v14;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v18 = *v3;
      v22 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        specialized _NativeDictionary.copy()();
        v18 = v22;
      }

      (*(v10 + 32))(v8, *(v18 + 56) + *(v10 + 72) * v16, v9);
      specialized _NativeDictionary._delete(at:)(v16, v18);
      *v3 = v18;
      (*(v10 + 56))(v8, 0, 1, v9);
    }

    else
    {
      (*(v10 + 56))(v8, 1, 1, v9);
    }

    return outlined destroy of OS_dispatch_queue.SchedulerOptions?(v8, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  }

  else
  {
    (*(v10 + 32))(v13, a1, v9);
    v19 = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v3;
    result = specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v13, a2, v19);
    *v3 = v22;
  }

  return result;
}

void specialized Dictionary.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v3;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v14;
  }

  else
  {
    v9 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    v11 = v10;

    if (v11)
    {
      v12 = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v4;
      v15 = *v4;
      if (!v12)
      {
        specialized _NativeDictionary.copy()();
        v13 = v15;
      }

      specialized _NativeDictionary._delete(at:)(v9, v13);
      *v4 = v13;
    }
  }
}

uint64_t specialized Collection.first.getter(uint64_t a1)
{
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = __CocoaSet.startIndex.getter();
    v5 = v4;
    v6 = __CocoaSet.endIndex.getter();
    v8 = v7;
    v9 = MEMORY[0x20F30C820](v3, v5, v6, v7);
    outlined consume of Set<UIScene>.Index._Variant(v6, v8, 1);
    if (v9)
    {
LABEL_3:
      outlined consume of Set<UIScene>.Index._Variant(v3, v5, v2 != 0);
      return 0;
    }
  }

  else
  {
    v3 = _HashTable.startBucket.getter();
    v5 = *(a1 + 36);
    if (v3 == 1 << *(a1 + 32))
    {
      goto LABEL_3;
    }
  }

  specialized Set.subscript.getter(v3, v5, v2 != 0, a1);
  v12 = v11;
  outlined consume of Set<UIScene>.Index._Variant(v3, v5, v2 != 0);
  return v12;
}

uint64_t InactiveAppearanceAnimationCoordinator.assertionAcquiredSubject.getter()
{
  v1 = OBJC_IVAR___WOInactiveAppearanceAnimationCoordinator____lazy_storage___assertionAcquiredSubject;
  if (*(v0 + OBJC_IVAR___WOInactiveAppearanceAnimationCoordinator____lazy_storage___assertionAcquiredSubject))
  {
    v2 = *(v0 + OBJC_IVAR___WOInactiveAppearanceAnimationCoordinator____lazy_storage___assertionAcquiredSubject);
  }

  else
  {
    v3 = v0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine18PassthroughSubjectCySbs5NeverOGMd, &_s7Combine18PassthroughSubjectCySbs5NeverOGMR);
    swift_allocObject();
    v2 = PassthroughSubject.init()();
    *(v3 + v1) = v2;
  }

  return v2;
}

uint64_t InactiveAppearanceAnimationCoordinator.onAssertionAcquired.getter()
{
  v1 = OBJC_IVAR___WOInactiveAppearanceAnimationCoordinator____lazy_storage___onAssertionAcquired;
  if (*(v0 + OBJC_IVAR___WOInactiveAppearanceAnimationCoordinator____lazy_storage___onAssertionAcquired))
  {
    v2 = *(v0 + OBJC_IVAR___WOInactiveAppearanceAnimationCoordinator____lazy_storage___onAssertionAcquired);
  }

  else
  {
    InactiveAppearanceAnimationCoordinator.assertionAcquiredSubject.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine18PassthroughSubjectCySbs5NeverOGMd, &_s7Combine18PassthroughSubjectCySbs5NeverOGMR);
    lazy protocol witness table accessor for type AnyPublisher<Bool, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type PassthroughSubject<Bool, Never> and conformance PassthroughSubject<A, B>, &_s7Combine18PassthroughSubjectCySbs5NeverOGMd, &_s7Combine18PassthroughSubjectCySbs5NeverOGMR, MEMORY[0x277CBCE20]);
    v2 = Publisher.eraseToAnyPublisher()();

    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t InactiveAppearanceAnimationCoordinator.animationsInProgress.getter()
{
  v1 = OBJC_IVAR___WOInactiveAppearanceAnimationCoordinator_animations;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v12 = MEMORY[0x277D84F90];
  if (v2 >> 62)
  {
    goto LABEL_22;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
  {

    if (!i)
    {
      break;
    }

    v4 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x20F30C990](v4, v2);
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_21;
        }

        v5 = *(v2 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter(&v11);

      if (v11 == 1)
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      else
      {
      }

      ++v4;
      if (v7 == i)
      {
        v8 = v12;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    ;
  }

  v8 = MEMORY[0x277D84F90];
LABEL_16:

  if (v8 < 0 || (v8 & 0x4000000000000000) != 0)
  {
    v9 = __CocoaSet.count.getter();
  }

  else
  {
    v9 = *(v8 + 16);
  }

  return v9;
}

char *InactiveAppearanceAnimationCoordinator.__allocating_init(traitEnvironment:deviceSupportsAlwaysOnTime:)(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  v5 = objc_allocWithZone(v2);
  return InactiveAppearanceAnimationCoordinator.init(traitEnvironment:deviceSupportsAlwaysOnTime:)(a1, v3);
}

char *InactiveAppearanceAnimationCoordinator.init(traitEnvironment:deviceSupportsAlwaysOnTime:)(uint64_t a1, char a2)
{
  v20[1] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v20 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVySbs5NeverOGSo17OS_dispatch_queueCGMd, &_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVySbs5NeverOGSo17OS_dispatch_queueCGMR);
  v8 = *(v7 - 8);
  v21 = v7;
  v22 = v8;
  MEMORY[0x28223BE20](v7);
  v10 = v20 - v9;
  *&v2[OBJC_IVAR___WOInactiveAppearanceAnimationCoordinator_assertion] = 0;
  *&v2[OBJC_IVAR___WOInactiveAppearanceAnimationCoordinator_assertionTimeout] = 0x4014000000000000;
  *&v2[OBJC_IVAR___WOInactiveAppearanceAnimationCoordinator____lazy_storage___assertionAcquiredSubject] = 0;
  *&v2[OBJC_IVAR___WOInactiveAppearanceAnimationCoordinator____lazy_storage___onAssertionAcquired] = 0;
  *&v2[OBJC_IVAR___WOInactiveAppearanceAnimationCoordinator_onAssertionAcquiredCancellable] = 0;
  v11 = MEMORY[0x277D84F90];
  *&v2[OBJC_IVAR___WOInactiveAppearanceAnimationCoordinator_animations] = MEMORY[0x277D84F90];
  v12 = OBJC_IVAR___WOInactiveAppearanceAnimationCoordinator_animationCancellables;
  *&v2[v12] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC9WorkoutUI27InactiveAppearanceAnimationC_7Combine11Cancellable_pTt0g5Tf4g_n(v11);
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v2[OBJC_IVAR___WOInactiveAppearanceAnimationCoordinator_deviceSupportsAlwaysOnTime] = a2;
  v13 = type metadata accessor for InactiveAppearanceAnimationCoordinator();
  v25.receiver = v2;
  v25.super_class = v13;
  v14 = objc_msgSendSuper2(&v25, sel_init);
  v24 = InactiveAppearanceAnimationCoordinator.onAssertionAcquired.getter();
  _sSo17OS_dispatch_queueCMaTm_2(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  v15 = static OS_dispatch_queue.main.getter();
  v23 = v15;
  v16 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  (*(*(v16 - 8) + 56))(v6, 1, 1, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVySbs5NeverOGMd, &_s7Combine12AnyPublisherVySbs5NeverOGMR);
  lazy protocol witness table accessor for type AnyPublisher<Bool, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<Bool, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVySbs5NeverOGMd, &_s7Combine12AnyPublisherVySbs5NeverOGMR, MEMORY[0x277CBCD90]);
  lazy protocol witness table accessor for type OS_dispatch_queue and conformance OS_dispatch_queue(&lazy protocol witness table cache variable for type OS_dispatch_queue and conformance OS_dispatch_queue, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78, MEMORY[0x277D85228]);
  Publisher.receive<A>(on:options:)();
  outlined destroy of OS_dispatch_queue.SchedulerOptions?(v6, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMR);

  swift_allocObject();
  swift_unknownObjectWeakInit();

  lazy protocol witness table accessor for type AnyPublisher<Bool, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.ReceiveOn<AnyPublisher<Bool, Never>, OS_dispatch_queue> and conformance Publishers.ReceiveOn<A, B>, &_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVySbs5NeverOGSo17OS_dispatch_queueCGMd, &_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVySbs5NeverOGSo17OS_dispatch_queueCGMR, MEMORY[0x277CBCD60]);
  v17 = v21;
  v18 = Publisher<>.sink(receiveValue:)();
  swift_unknownObjectRelease();

  (*(v22 + 8))(v10, v17);
  *&v14[OBJC_IVAR___WOInactiveAppearanceAnimationCoordinator_onAssertionAcquiredCancellable] = v18;

  return v14;
}

double closure #1 in InactiveAppearanceAnimationCoordinator.init(traitEnvironment:deviceSupportsAlwaysOnTime:)(_BYTE *a1, uint64_t a2)
{
  LOBYTE(v2) = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  inited = swift_initStackObject();
  *(inited + 1) = xmmword_20CB5DA80;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = &_ss23_ContiguousArrayStorageCySi6offset_11WorkoutCore11MetricValueV7elementtGMd;
  if (!Strong)
  {
    v10 = MEMORY[0x277D83A80];
    inited[7] = MEMORY[0x277D839F8];
    inited[8] = v10;
    inited[4] = 0;
    goto LABEL_6;
  }

  v6 = OBJC_IVAR___WOInactiveAppearanceAnimationCoordinator_animations;
  v7 = Strong;
  swift_beginAccess();
  v8 = *&v7[v6];

  if (v8 >> 62)
  {
    goto LABEL_22;
  }

  for (i = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
  {

    v44 = MEMORY[0x277D83B88];
    v45 = MEMORY[0x277D83C10];
    *&v43 = i;
    sub_20C691270(&v43, (inited + 4));
LABEL_6:
    v11 = MEMORY[0x277D839F0];
    inited[12] = MEMORY[0x277D839B0];
    inited[13] = v11;
    *(inited + 72) = v2;
    v12 = static os_log_type_t.default.getter();
    specialized static Log.print(_:type:_:)("starting inactive appearance animations=%d assertion_acquired=%{BOOL}d", 70, 2, v12, inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss7CVarArg_pMd, &_ss7CVarArg_pMR);
    swift_arrayDestroy();
    swift_beginAccess();
    v13 = swift_unknownObjectWeakLoadStrong();
    if (!v13)
    {
      break;
    }

    v15 = v5[463];
    inited = v13;
    swift_beginAccess();
    v2 = *(inited + v15);

    v42 = MEMORY[0x277D84F90];
    if (v2 >> 62)
    {
      v16 = __CocoaSet.count.getter();
      if (!v16)
      {
LABEL_24:
        v20 = MEMORY[0x277D84F90];
LABEL_25:

        if (v20 < 0 || (v20 & 0x4000000000000000) != 0)
        {
          goto LABEL_40;
        }

        for (j = *(v20 + 16); j; j = __CocoaSet.count.getter())
        {
          v21 = 0;
          v22 = v20 & 0xC000000000000001;
          v23 = &unk_20CB823C8;
          v24 = &unk_20CB823F0;
          v25 = MEMORY[0x277D84F90];
          v39 = v20;
          while (1)
          {
            if (v22)
            {
              v26 = MEMORY[0x20F30C990](v21, v20);
            }

            else
            {
              if (v21 >= *(v20 + 16))
              {
                goto LABEL_39;
              }

              v26 = *(v20 + 8 * v21 + 32);
            }

            v27 = v26;
            v28 = v21 + 1;
            if (__OFADD__(v21, 1))
            {
              break;
            }

            swift_getKeyPath();
            swift_getKeyPath();
            static Published.subscript.getter(&v42);

            v29 = v42;
            v30 = static os_log_type_t.default.getter();
            if (v29)
            {
              specialized static Log.print(_:type:_:)("inactive appearance animation already started", 45, 2, v30, v25);
            }

            else
            {
              specialized static Log.print(_:type:_:)("started inactive appearance animation", 37, 2, v30, v25);
              swift_getKeyPath();
              swift_getKeyPath();
              LOBYTE(v42) = 1;
              v31 = v24;
              v32 = v27;
              static Published.subscript.setter();
              v33 = v22;
              v34 = v23;
              v35 = *&v32[OBJC_IVAR____TtC9WorkoutUI27InactiveAppearanceAnimation_animation];
              v36 = swift_allocObject();
              *(v36 + 16) = v32;
              v37 = v32;
              v24 = v31;
              v25 = MEMORY[0x277D84F90];
              v38 = v37;
              v35(partial apply for implicit closure #2 in implicit closure #1 in InactiveAppearanceAnimation.start(), v36);
              v23 = v34;
              v22 = v33;
              v20 = v39;
            }

            ++v21;
            if (v28 == j)
            {
              goto LABEL_41;
            }
          }

          __break(1u);
LABEL_39:
          __break(1u);
LABEL_40:
          ;
        }

LABEL_41:

        return result;
      }
    }

    else
    {
      v16 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v16)
      {
        goto LABEL_24;
      }
    }

    v17 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v18 = MEMORY[0x20F30C990](v17, v2);
      }

      else
      {
        if (v17 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_21;
        }

        v18 = *(v2 + 8 * v17 + 32);
      }

      v19 = v18;
      v5 = (v17 + 1);
      if (__OFADD__(v17, 1))
      {
        break;
      }

      inited = swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter(&v41);

      if (v41)
      {
      }

      else
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        inited = &v42;
        specialized ContiguousArray._endMutation()();
      }

      ++v17;
      if (v5 == v16)
      {
        v20 = v42;
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    ;
  }

  return result;
}

double InactiveAppearanceAnimationCoordinator.startAnimation(_:)(void (*a1)(uint64_t (*)(), void, double), uint64_t a2)
{
  v3 = v2;
  v46 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy9WorkoutUI27InactiveAppearanceAnimationC5StateO_GMd, &_s7Combine9PublishedV9PublisherVy9WorkoutUI27InactiveAppearanceAnimationC5StateO_GMR);
  v44 = *(v5 - 8);
  v45 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v41 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO6FilterVy_AA9PublishedV9PublisherVy9WorkoutUI27InactiveAppearanceAnimationC5StateO_GGMd, &_s7Combine10PublishersO6FilterVy_AA9PublishedV9PublisherVy9WorkoutUI27InactiveAppearanceAnimationC5StateO_GGMR);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v41 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy9WorkoutUI27InactiveAppearanceAnimationC5StateOGMd, &_s7Combine9PublishedVy9WorkoutUI27InactiveAppearanceAnimationC5StateOGMR);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v41 - v14;
  v16 = *(v3 + OBJC_IVAR___WOInactiveAppearanceAnimationCoordinator_deviceSupportsAlwaysOnTime);
  v17 = static os_log_type_t.default.getter();
  if (v16 == 1)
  {
    v42 = v9;
    v43 = v8;
    specialized static Log.print(_:type:_:)("inactive appearance animation will start", 40, 2, v17, MEMORY[0x277D84F90]);
    v18 = type metadata accessor for InactiveAppearanceAnimation(0);
    v19 = objc_allocWithZone(v18);
    v20 = OBJC_IVAR____TtC9WorkoutUI27InactiveAppearanceAnimation__state;
    LOBYTE(v47[0]) = 0;
    Published.init(initialValue:)();
    (*(v13 + 32))(&v19[v20], v15, v12);
    v21 = &v19[OBJC_IVAR____TtC9WorkoutUI27InactiveAppearanceAnimation_animation];
    *v21 = v46;
    *(v21 + 1) = a2;
    v48.receiver = v19;
    v48.super_class = v18;

    v22 = objc_msgSendSuper2(&v48, sel_init);
    v23 = OBJC_IVAR___WOInactiveAppearanceAnimationCoordinator_animations;
    swift_beginAccess();
    v24 = v22;
    MEMORY[0x20F30BCF0]();
    if (*((*(v3 + v23) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v3 + v23) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    swift_endAccess();
    swift_beginAccess();
    Published.projectedValue.getter();
    swift_endAccess();
    lazy protocol witness table accessor for type AnyPublisher<Bool, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Published<InactiveAppearanceAnimation.State>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVy9WorkoutUI27InactiveAppearanceAnimationC5StateO_GMd, &_s7Combine9PublishedV9PublisherVy9WorkoutUI27InactiveAppearanceAnimationC5StateO_GMR, MEMORY[0x277CBCEC8]);
    v25 = v45;
    Publisher.filter(_:)();
    (*(v44 + 8))(v7, v25);
    v26 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v27 = swift_allocObject();
    *(v27 + 16) = v26;
    *(v27 + 24) = v24;
    lazy protocol witness table accessor for type AnyPublisher<Bool, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.Filter<Published<InactiveAppearanceAnimation.State>.Publisher> and conformance Publishers.Filter<A>, &_s7Combine10PublishersO6FilterVy_AA9PublishedV9PublisherVy9WorkoutUI27InactiveAppearanceAnimationC5StateO_GGMd, &_s7Combine10PublishersO6FilterVy_AA9PublishedV9PublisherVy9WorkoutUI27InactiveAppearanceAnimationC5StateO_GGMR, MEMORY[0x277CBCC90]);
    v28 = v24;
    v29 = v43;
    v30 = Publisher<>.sink(receiveValue:)();

    (*(v42 + 8))(v11, v29);
    v47[3] = type metadata accessor for AnyCancellable();
    v47[4] = MEMORY[0x277CBCDA0];
    v47[0] = v30;
    swift_beginAccess();
    v31 = v28;

    specialized Dictionary.subscript.setter(v47, v31);
    swift_endAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v33 = [Strong traitCollection];
      swift_unknownObjectRelease();
      v34 = [v33 activeAppearance];

      if (v34 == 1)
      {
        v35 = static os_log_type_t.default.getter();
        specialized static Log.print(_:type:_:)("appearance active, start inactive appearance animation", 54, 2, v35, MEMORY[0x277D84F90]);
        InactiveAppearanceAnimation.start()();
      }
    }

    v36 = OBJC_IVAR___WOInactiveAppearanceAnimationCoordinator_assertion;
    v37 = *(v3 + OBJC_IVAR___WOInactiveAppearanceAnimationCoordinator_assertion);
    if (v37 && ([v37 isAcquired] & 1) != 0)
    {
      v38 = static os_log_type_t.default.getter();
      [*(v3 + v36) restartTimeoutTimer];
      InactiveAppearanceAnimation.start()();
    }

    else
    {
      InactiveAppearanceAnimationCoordinator.acquireAssertion()();
    }
  }

  else
  {
    v39 = specialized static Log.print(_:type:_:)("device doesn't support inactive appearance, start animation", 59, 2, v17, MEMORY[0x277D84F90]);
    v46(closure #1 in InactiveAppearanceAnimationCoordinator.startAnimation(_:), 0, v39);
  }

  return result;
}

void closure #3 in InactiveAppearanceAnimationCoordinator.startAnimation(_:)(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    InactiveAppearanceAnimationCoordinator.animationDidEnd(_:)(a3);
  }
}

double thunk for @escaping @callee_unowned @convention(block) (@unowned @escaping @callee_unowned @convention(block) () -> ()) -> ()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7[4] = a1;
  v7[5] = a2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 1107296256;
  v7[2] = thunk for @escaping @callee_guaranteed () -> ();
  v7[3] = &block_descriptor_37_0;
  v4 = _Block_copy(v7);
  v5 = *(a3 + 16);

  v5(a3, v4);
  _Block_release(v4);

  return result;
}

void InactiveAppearanceAnimationCoordinator.animationDidEnd(_:)(void *a1)
{
  v3 = v1;
  v5 = OBJC_IVAR___WOInactiveAppearanceAnimationCoordinator_animationCancellables;
  swift_beginAccess();
  v6 = *(v1 + v5);
  if (!*(v6 + 16))
  {
    goto LABEL_6;
  }

  v7 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if ((v8 & 1) == 0)
  {

LABEL_6:
    v21 = 0;
    v19 = 0u;
    v20 = 0u;
    goto LABEL_7;
  }

  outlined init with copy of Cancellable(*(v6 + 56) + 40 * v7, &v19);

  if (*(&v20 + 1))
  {
    outlined init with copy of Cancellable(&v19, v18);
    outlined destroy of OS_dispatch_queue.SchedulerOptions?(&v19, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
    v2 = v18[4];
    __swift_project_boxed_opaque_existential_1(v18, v18[3]);
    dispatch thunk of Cancellable.cancel()();
    __swift_destroy_boxed_opaque_existential_1(v18);
    goto LABEL_8;
  }

LABEL_7:
  outlined destroy of OS_dispatch_queue.SchedulerOptions?(&v19, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
LABEL_8:
  swift_beginAccess();
  specialized Dictionary._Variant.removeValue(forKey:)(a1, &v19);
  outlined destroy of OS_dispatch_queue.SchedulerOptions?(&v19, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
  swift_endAccess();
  v9 = OBJC_IVAR___WOInactiveAppearanceAnimationCoordinator_animations;
  swift_beginAccess();
  v10 = a1;
  inited = specialized MutableCollection._halfStablePartition(isSuffixElement:)((v3 + v9), v10);

  v12 = *(v3 + v9);
  if (!(v12 >> 62))
  {
    v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v13 >= inited)
    {
      goto LABEL_10;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v13 = __CocoaSet.count.getter();
  if (v13 < inited)
  {
    goto LABEL_18;
  }

LABEL_10:
  specialized Array.replaceSubrange<A>(_:with:)(inited, v13);
  swift_endAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20CB5DA80;
  *(inited + 32) = InactiveAppearanceAnimationCoordinator.animationsInProgress.getter();
  v2 = MEMORY[0x277D83B88];
  v5 = MEMORY[0x277D83C10];
  *(inited + 56) = MEMORY[0x277D83B88];
  *(inited + 64) = v5;
  v14 = *(v3 + v9);
  if (!(v14 >> 62))
  {
    v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_12;
  }

LABEL_19:
  v15 = __CocoaSet.count.getter();
LABEL_12:
  *(inited + 96) = v2;
  *(inited + 104) = v5;
  *(inited + 72) = v15;
  v16 = static os_log_type_t.default.getter();
  specialized static Log.print(_:type:_:)("inactive appearance animation did end. animations_in_progress=%d animations=%d", 78, 2, v16, inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss7CVarArg_pMd, &_ss7CVarArg_pMR);
  swift_arrayDestroy();
  if (!*(v3 + OBJC_IVAR___WOInactiveAppearanceAnimationCoordinator_assertion))
  {
    return;
  }

  v17 = *(v3 + v9);
  if (!(v17 >> 62))
  {
    if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return;
    }

    goto LABEL_15;
  }

  if (!__CocoaSet.count.getter())
  {
LABEL_15:
    InactiveAppearanceAnimationCoordinator.invalidateAssertion()();
  }
}

void InactiveAppearanceAnimationCoordinator.acquireAssertion()()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v23[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  _sSo17OS_dispatch_queueCMaTm_2(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  *v5 = static OS_dispatch_queue.main.getter();
  (*(v3 + 104))(v5, *MEMORY[0x277D85200], v2);
  v6 = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v5, v2);
  if (v6)
  {
    v7 = [objc_opt_self() sharedApplication];
    v8 = [v7 connectedScenes];

    _sSo17OS_dispatch_queueCMaTm_2(0, &lazy cache variable for type metadata for UIScene, 0x277D75940);
    lazy protocol witness table accessor for type OS_dispatch_queue and conformance OS_dispatch_queue(&lazy protocol witness table cache variable for type UIScene and conformance NSObject, &lazy cache variable for type metadata for UIScene, 0x277D75940, MEMORY[0x277D85378]);
    v9 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v10 = specialized Collection.first.getter(v9);

    if (v10)
    {
      v11 = OBJC_IVAR___WOInactiveAppearanceAnimationCoordinator_assertion;
      v12 = *(v1 + OBJC_IVAR___WOInactiveAppearanceAnimationCoordinator_assertion);
      v13 = static os_log_type_t.default.getter();
      if (v12)
      {
        specialized static Log.print(_:type:_:)("inactive appearance animation assertion already in the process of acquiring", 75, 2, v13, MEMORY[0x277D84F90]);
      }

      else
      {
        v15 = MEMORY[0x277D84F90];
        specialized static Log.print(_:type:_:)("acquiring inactive appearance animation assertion", 49, 2, v13, MEMORY[0x277D84F90]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
        v16 = swift_allocObject();
        *(v16 + 16) = xmmword_20CB61A30;
        *(v16 + 32) = [objc_opt_self() requestLiveUpdatingForScene_];
        *(v16 + 40) = [objc_opt_self() requestUnrestrictedFramerateForScene_];
        *(v16 + 48) = [objc_opt_self() ignoreWhenBacklightInactivates];
        *(v16 + 56) = [objc_opt_self() timeoutAfterInterval_];
        v17 = objc_opt_self();
        v18 = MEMORY[0x20F30BAD0](0xD000000000000025, 0x800000020CBA0230);
        _sSo17OS_dispatch_queueCMaTm_2(0, &lazy cache variable for type metadata for BLSAttribute, 0x277CF0878);
        isa = Array._bridgeToObjectiveC()().super.isa;

        v20 = [v17 acquireWithExplanation:v18 observer:v1 attributes:isa];

        v21 = *(v1 + v11);
        *(v1 + v11) = v20;

        v22 = static os_log_type_t.default.getter();
        specialized static Log.print(_:type:_:)("Inactive appearance animation assertion was created", 51, 2, v22, v15);
      }
    }

    else
    {
      v14 = static os_log_type_t.error.getter();
      specialized static Log.print(_:type:_:)("Unable to find scene for UIApplication when acquiring BLSAssertion", 66, 2, v14, MEMORY[0x277D84F90]);
      InactiveAppearanceAnimationCoordinator.assertionAcquiredSubject.getter();
      v23[15] = 0;
      PassthroughSubject.send(_:)();
    }
  }

  else
  {
    __break(1u);
  }
}

void InactiveAppearanceAnimationCoordinator.invalidateAssertion()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20CB5DA70;
  v3 = OBJC_IVAR___WOInactiveAppearanceAnimationCoordinator_assertion;
  v9 = *(v0 + OBJC_IVAR___WOInactiveAppearanceAnimationCoordinator_assertion);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo12BLSAssertionCSgMd, &_sSo12BLSAssertionCSgMR);
  v4 = Optional.description.getter();
  v6 = v5;
  *(inited + 56) = MEMORY[0x277D837D0];
  *(inited + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(inited + 32) = v4;
  *(inited + 40) = v6;
  v7 = static os_log_type_t.default.getter();
  specialized static Log.print(_:type:_:)("Invalidating inactive appearance animation assertion=%@", 55, 2, v7, inited, v9);
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1((inited + 32));
  [*(v1 + v3) invalidate];
  v8 = *(v1 + v3);
  *(v1 + v3) = 0;
}

id InactiveAppearanceAnimationCoordinator.__deallocating_deinit()
{
  InactiveAppearanceAnimationCoordinator.invalidateAssertion()();
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InactiveAppearanceAnimationCoordinator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id InactiveAppearanceAnimationCoordinator.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

double InactiveAppearanceAnimationCoordinator.assertionWasAcquired(_:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20CB5DA70;
  v3 = [a1 description];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  *(inited + 56) = MEMORY[0x277D837D0];
  *(inited + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(inited + 32) = v4;
  *(inited + 40) = v6;
  v7 = static os_log_type_t.default.getter();
  specialized static Log.print(_:type:_:)("Acquired inactive appearance animation assertion. assertion=%@", 62, 2, v7, inited);
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1((inited + 32));
  InactiveAppearanceAnimationCoordinator.assertionAcquiredSubject.getter();
  PassthroughSubject.send(_:)();

  return result;
}

void InactiveAppearanceAnimationCoordinator.assertion(_:didFailToAcquireWithError:)(void *a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20CB5DA80;
  v4 = [a1 description];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v8 = MEMORY[0x277D837D0];
  *(inited + 56) = MEMORY[0x277D837D0];
  v9 = lazy protocol witness table accessor for type String and conformance String();
  *(inited + 64) = v9;
  *(inited + 32) = v5;
  *(inited + 40) = v7;
  swift_getErrorValue();
  v10 = Error.errorDescription.getter();
  *(inited + 96) = v8;
  *(inited + 104) = v9;
  *(inited + 72) = v10;
  *(inited + 80) = v11;
  v12 = static os_log_type_t.error.getter();
  specialized static Log.print(_:type:_:)("inactive appearance animation assertion failed to acquire. assertion=%@ \nerror=%@", 81, 2, v12, inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss7CVarArg_pMd, &_ss7CVarArg_pMR);
  swift_arrayDestroy();
  InactiveAppearanceAnimationCoordinator.assertionAcquiredSubject.getter();
  PassthroughSubject.send(_:)();

  InactiveAppearanceAnimationCoordinator.invalidateAssertion()();
}

void InactiveAppearanceAnimationCoordinator.assertion(_:didCancelWithError:)(void *a1, uint64_t a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20CB5DA80;
  v7 = [a1 description];
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  v11 = MEMORY[0x277D837D0];
  *(inited + 56) = MEMORY[0x277D837D0];
  v12 = lazy protocol witness table accessor for type String and conformance String();
  *(inited + 64) = v12;
  *(inited + 32) = v8;
  *(inited + 40) = v10;
  v26[0] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pSgMd, _ss5Error_pSgMR);
  v13 = Optional.description.getter();
  *(inited + 96) = v11;
  *(inited + 104) = v12;
  *(inited + 72) = v13;
  *(inited + 80) = v14;
  v15 = static os_log_type_t.error.getter();
  specialized static Log.print(_:type:_:)("inactive appearance animation assertion cancelled. assertion=%@ \nerror=%@", 73, 2, v15, inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss7CVarArg_pMd, &_ss7CVarArg_pMR);
  swift_arrayDestroy();
  v16 = OBJC_IVAR___WOInactiveAppearanceAnimationCoordinator_animationCancellables;
  swift_beginAccess();
  v17 = *(v3 + v16);
  v18 = 1 << *(v17 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & *(v17 + 64);
  v21 = (v18 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v22 = 0;
  while (v20)
  {
    v23 = v22;
LABEL_9:
    v24 = __clz(__rbit64(v20));
    v20 &= v20 - 1;
    outlined init with copy of Cancellable(*(v17 + 56) + 40 * (v24 | (v23 << 6)), v26);
    __swift_project_boxed_opaque_existential_1(v26, v26[3]);
    dispatch thunk of Cancellable.cancel()();
    __swift_destroy_boxed_opaque_existential_1(v26);
  }

  while (1)
  {
    v23 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v23 >= v21)
    {

      *(v3 + v16) = MEMORY[0x277D84F98];

      v25 = OBJC_IVAR___WOInactiveAppearanceAnimationCoordinator_animations;
      swift_beginAccess();
      *(v3 + v25) = MEMORY[0x277D84F90];

      InactiveAppearanceAnimationCoordinator.invalidateAssertion()();
      return;
    }

    v20 = *(v17 + 64 + 8 * v23);
    ++v22;
    if (v20)
    {
      v22 = v23;
      goto LABEL_9;
    }
  }

  __break(1u);
}

double specialized Dictionary._Variant.removeValue(forKey:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v11 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v9 = v11;
    }

    sub_20C691270((*(v9 + 56) + 40 * v7), a2);
    specialized _NativeDictionary._delete(at:)(v7, v9);
    *v3 = v9;
  }

  else
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

void specialized _NativeDictionary._delete(at:)(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v11 = *(a2 + 40);
      v12 = *(*(a2 + 48) + 8 * v6);
      v13 = NSObject._rawHashValue(seed:)(v11);

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 >= v8 && v3 >= v14)
        {
LABEL_15:
          v17 = *(a2 + 48);
          v18 = (v17 + 8 * v3);
          v19 = (v17 + 8 * v6);
          if (v3 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
          }

          v20 = *(a2 + 56);
          v21 = v20 + 40 * v3;
          v22 = (v20 + 40 * v6);
          if (v3 != v6 || v21 >= v22 + 40)
          {
            v9 = *v22;
            v10 = v22[1];
            *(v21 + 32) = *(v22 + 4);
            *v21 = v9;
            *(v21 + 16) = v10;
            v3 = v6;
          }
        }
      }

      else if (v14 >= v8 || v3 >= v14)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v23 = *(a2 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v25;
    ++*(a2 + 36);
  }
}

{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v12 = _HashTable.previousHole(before:)();
    v13 = v11;
    v37 = (v12 + 1) & v11;
    v15 = *(v5 + 16);
    v14 = v5 + 16;
    v38 = *(v14 + 56);
    v35 = (v14 - 8);
    v36 = v15;
    do
    {
      v16 = v8;
      v17 = v38 * v10;
      v18 = v13;
      v19 = v14;
      v36(v7, *(a2 + 48) + v38 * v10, v4);
      lazy protocol witness table accessor for type UUID and conformance UUID();
      v20 = dispatch thunk of Hashable._rawHashValue(seed:)();
      (*v35)(v7, v4);
      v13 = v18;
      v21 = v20 & v18;
      if (a1 >= v37)
      {
        if (v21 >= v37 && a1 >= v21)
        {
LABEL_15:
          v24 = *(a2 + 48);
          v25 = v24 + v38 * a1;
          v26 = v24 + v17 + v38;
          v27 = v38 * a1 < v17 || v25 >= v26;
          v14 = v19;
          if (v27)
          {
            swift_arrayInitWithTakeFrontToBack();
            v13 = v18;
            v8 = v16;
          }

          else
          {
            v28 = v38 * a1 == v17;
            v8 = v16;
            if (!v28)
            {
              swift_arrayInitWithTakeBackToFront();
              v13 = v18;
            }
          }

          v29 = *(a2 + 56);
          v30 = (v29 + 8 * a1);
          v31 = (v29 + 8 * v10);
          if (a1 != v10 || v30 >= v31 + 1)
          {
            *v30 = *v31;
            a1 = v10;
          }

          goto LABEL_4;
        }
      }

      else if (v21 >= v37 || a1 >= v21)
      {
        goto LABEL_15;
      }

      v14 = v19;
      v8 = v16;
LABEL_4:
      v10 = (v10 + 1) & v13;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v32 = *(a2 + 16);
  v33 = __OFSUB__(v32, 1);
  v34 = v32 - 1;
  if (v33)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v34;
    ++*(a2 + 36);
  }
}

{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      Hasher.init(_seed:)();

      String.hash(into:)();
      v9 = Hasher._finalize()();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }
}

unint64_t specialized _NativeDictionary._delete(at:)(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    while (1)
    {
      v9 = *(*(a2 + 48) + v6);
      Hasher.init(_seed:)();
      MEMORY[0x20F30CD90](v9);
      result = Hasher._finalize()();
      v10 = result & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v10 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v11 = *(a2 + 48);
      v12 = (v11 + v3);
      v13 = (v11 + v6);
      if (v3 != v6 || v12 >= v13 + 1)
      {
        *v12 = *v13;
      }

      v14 = *(a2 + 56);
      v15 = *(*(type metadata accessor for UUID() - 8) + 72);
      v16 = v15 * v3;
      result = v14 + v15 * v3;
      v17 = v15 * v6;
      v18 = v14 + v15 * v6 + v15;
      if (v16 < v17 || result >= v18)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v16 == v17)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v10 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v10)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

void specialized Set.subscript.getter(unint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v7 = a4;
      }

      else
      {
        v7 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x20F30C870](a1, a2, v7);
      _sSo17OS_dispatch_queueCMaTm_2(0, &lazy cache variable for type metadata for UIScene, 0x277D75940);
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    _sSo17OS_dispatch_queueCMaTm_2(0, &lazy cache variable for type metadata for UIScene, 0x277D75940);
    if (__CocoaSet.Index.age.getter() != *(a4 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    __CocoaSet.Index.element.getter();
    swift_dynamicCast();
    v4 = v15;
    v8 = NSObject._rawHashValue(seed:)(*(a4 + 40));
    v9 = -1 << *(a4 + 32);
    v6 = v8 & ~v9;
    if ((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
    {
      v10 = ~v9;
      do
      {
        v11 = *(*(a4 + 48) + 8 * v6);
        v12 = static NSObject.== infix(_:_:)();

        if (v12)
        {
          goto LABEL_19;
        }

        v6 = (v6 + 1) & v10;
      }

      while (((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    __break(1u);
  }

  if ((v6 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= v6)
  {
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (v6 >> 6) + 56) >> v6) & 1) == 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_19:
  }

  v13 = *(*(a4 + 48) + 8 * v6);

  v14 = v13;
}

unint64_t lazy protocol witness table accessor for type UUID and conformance UUID()
{
  result = lazy protocol witness table cache variable for type UUID and conformance UUID;
  if (!lazy protocol witness table cache variable for type UUID and conformance UUID)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UUID and conformance UUID);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UUID and conformance UUID;
  if (!lazy protocol witness table cache variable for type UUID and conformance UUID)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UUID and conformance UUID);
  }

  return result;
}

double specialized InactiveAppearanceAnimationCoordinator.startAnimation(_:)(uint64_t a1, void (*a2)(double), uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy9WorkoutUI27InactiveAppearanceAnimationC5StateO_GMd, &_s7Combine9PublishedV9PublisherVy9WorkoutUI27InactiveAppearanceAnimationC5StateO_GMR);
  v42 = *(v6 - 8);
  v43 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v42 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO6FilterVy_AA9PublishedV9PublisherVy9WorkoutUI27InactiveAppearanceAnimationC5StateO_GGMd, &_s7Combine10PublishersO6FilterVy_AA9PublishedV9PublisherVy9WorkoutUI27InactiveAppearanceAnimationC5StateO_GGMR);
  v44 = *(v9 - 8);
  v45 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v42 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy9WorkoutUI27InactiveAppearanceAnimationC5StateOGMd, &_s7Combine9PublishedVy9WorkoutUI27InactiveAppearanceAnimationC5StateOGMR);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v42 - v14;
  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  *(v16 + 24) = a3;
  v17 = *(a1 + OBJC_IVAR___WOInactiveAppearanceAnimationCoordinator_deviceSupportsAlwaysOnTime);

  v18 = static os_log_type_t.default.getter();
  if (v17 == 1)
  {
    specialized static Log.print(_:type:_:)("inactive appearance animation will start", 40, 2, v18, MEMORY[0x277D84F90]);
    v19 = type metadata accessor for InactiveAppearanceAnimation(0);
    v20 = objc_allocWithZone(v19);
    v21 = OBJC_IVAR____TtC9WorkoutUI27InactiveAppearanceAnimation__state;
    LOBYTE(v46[0]) = 0;
    Published.init(initialValue:)();
    (*(v13 + 32))(&v20[v21], v15, v12);
    v22 = &v20[OBJC_IVAR____TtC9WorkoutUI27InactiveAppearanceAnimation_animation];
    *v22 = partial apply for closure #3 in WorkoutAlertPresenter.notifyUser(with:);
    v22[1] = v16;
    v47.receiver = v20;
    v47.super_class = v19;

    v23 = objc_msgSendSuper2(&v47, sel_init);
    v24 = OBJC_IVAR___WOInactiveAppearanceAnimationCoordinator_animations;
    swift_beginAccess();
    v25 = v23;
    MEMORY[0x20F30BCF0]();
    if (*((*(a1 + v24) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a1 + v24) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    swift_endAccess();
    swift_beginAccess();
    Published.projectedValue.getter();
    swift_endAccess();
    lazy protocol witness table accessor for type AnyPublisher<Bool, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Published<InactiveAppearanceAnimation.State>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVy9WorkoutUI27InactiveAppearanceAnimationC5StateO_GMd, &_s7Combine9PublishedV9PublisherVy9WorkoutUI27InactiveAppearanceAnimationC5StateO_GMR, MEMORY[0x277CBCEC8]);
    v26 = v43;
    Publisher.filter(_:)();
    (*(v42 + 8))(v8, v26);
    v27 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v28 = swift_allocObject();
    *(v28 + 16) = v27;
    *(v28 + 24) = v25;
    lazy protocol witness table accessor for type AnyPublisher<Bool, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.Filter<Published<InactiveAppearanceAnimation.State>.Publisher> and conformance Publishers.Filter<A>, &_s7Combine10PublishersO6FilterVy_AA9PublishedV9PublisherVy9WorkoutUI27InactiveAppearanceAnimationC5StateO_GGMd, &_s7Combine10PublishersO6FilterVy_AA9PublishedV9PublisherVy9WorkoutUI27InactiveAppearanceAnimationC5StateO_GGMR, MEMORY[0x277CBCC90]);
    v29 = v25;
    v30 = v45;
    v31 = Publisher<>.sink(receiveValue:)();

    (*(v44 + 8))(v11, v30);
    v46[3] = type metadata accessor for AnyCancellable();
    v46[4] = MEMORY[0x277CBCDA0];
    v46[0] = v31;
    swift_beginAccess();
    v32 = v29;

    specialized Dictionary.subscript.setter(v46, v32);
    swift_endAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v34 = [Strong traitCollection];
      swift_unknownObjectRelease();
      v35 = [v34 activeAppearance];

      if (v35 == 1)
      {
        v36 = static os_log_type_t.default.getter();
        specialized static Log.print(_:type:_:)("appearance active, start inactive appearance animation", 54, 2, v36, MEMORY[0x277D84F90]);
        InactiveAppearanceAnimation.start()();
      }
    }

    v37 = OBJC_IVAR___WOInactiveAppearanceAnimationCoordinator_assertion;
    v38 = *(a1 + OBJC_IVAR___WOInactiveAppearanceAnimationCoordinator_assertion);
    if (v38 && ([v38 isAcquired] & 1) != 0)
    {
      v39 = static os_log_type_t.default.getter();
      [*(a1 + v37) restartTimeoutTimer];
      InactiveAppearanceAnimation.start()();
    }

    else
    {
      InactiveAppearanceAnimationCoordinator.acquireAssertion()();
    }
  }

  else
  {
    v40 = specialized static Log.print(_:type:_:)("device doesn't support inactive appearance, start animation", 59, 2, v18, MEMORY[0x277D84F90]);
    a2(v40);
  }

  return result;
}

unint64_t specialized Collection.firstIndex(where:)(unint64_t a1, uint64_t a2)
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
    _sSo17OS_dispatch_queueCMaTm_2(0, &lazy cache variable for type metadata for NSObject, 0x277D82BB8);
    v8 = static NSObject.== infix(_:_:)();

    if (v8)
    {
      return v5;
    }

    if (__OFADD__(v5++, 1))
    {
      goto LABEL_16;
    }
  }
}

double specialized InactiveAppearanceAnimationCoordinator.startAnimation(_:)(uint64_t a1, void (**a2)(void, void))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy9WorkoutUI27InactiveAppearanceAnimationC5StateO_GMd, &_s7Combine9PublishedV9PublisherVy9WorkoutUI27InactiveAppearanceAnimationC5StateO_GMR);
  v42 = *(v4 - 8);
  v43 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v40 - v5;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO6FilterVy_AA9PublishedV9PublisherVy9WorkoutUI27InactiveAppearanceAnimationC5StateO_GGMd, &_s7Combine10PublishersO6FilterVy_AA9PublishedV9PublisherVy9WorkoutUI27InactiveAppearanceAnimationC5StateO_GGMR);
  v7 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v9 = &v40 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy9WorkoutUI27InactiveAppearanceAnimationC5StateOGMd, &_s7Combine9PublishedVy9WorkoutUI27InactiveAppearanceAnimationC5StateOGMR);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v40 - v12;
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  v15 = *(a1 + OBJC_IVAR___WOInactiveAppearanceAnimationCoordinator_deviceSupportsAlwaysOnTime);
  _Block_copy(a2);
  v16 = static os_log_type_t.default.getter();
  if (v15 == 1)
  {
    v41 = v7;
    specialized static Log.print(_:type:_:)("inactive appearance animation will start", 40, 2, v16, MEMORY[0x277D84F90]);
    v17 = type metadata accessor for InactiveAppearanceAnimation(0);
    v18 = objc_allocWithZone(v17);
    v19 = OBJC_IVAR____TtC9WorkoutUI27InactiveAppearanceAnimation__state;
    LOBYTE(aBlock[0]) = 0;
    Published.init(initialValue:)();
    (*(v11 + 32))(&v18[v19], v13, v10);
    v20 = &v18[OBJC_IVAR____TtC9WorkoutUI27InactiveAppearanceAnimation_animation];
    *v20 = partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned @escaping @callee_unowned @convention(block) () -> ()) -> ();
    v20[1] = v14;
    v45.receiver = v18;
    v45.super_class = v17;

    v21 = objc_msgSendSuper2(&v45, sel_init);
    v22 = OBJC_IVAR___WOInactiveAppearanceAnimationCoordinator_animations;
    swift_beginAccess();
    v23 = v21;
    MEMORY[0x20F30BCF0]();
    if (*((*(a1 + v22) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a1 + v22) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    swift_endAccess();
    swift_beginAccess();
    Published.projectedValue.getter();
    swift_endAccess();
    lazy protocol witness table accessor for type AnyPublisher<Bool, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Published<InactiveAppearanceAnimation.State>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVy9WorkoutUI27InactiveAppearanceAnimationC5StateO_GMd, &_s7Combine9PublishedV9PublisherVy9WorkoutUI27InactiveAppearanceAnimationC5StateO_GMR, MEMORY[0x277CBCEC8]);
    v24 = v43;
    Publisher.filter(_:)();
    (*(v42 + 8))(v6, v24);
    v25 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v26 = swift_allocObject();
    *(v26 + 16) = v25;
    *(v26 + 24) = v23;
    lazy protocol witness table accessor for type AnyPublisher<Bool, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.Filter<Published<InactiveAppearanceAnimation.State>.Publisher> and conformance Publishers.Filter<A>, &_s7Combine10PublishersO6FilterVy_AA9PublishedV9PublisherVy9WorkoutUI27InactiveAppearanceAnimationC5StateO_GGMd, &_s7Combine10PublishersO6FilterVy_AA9PublishedV9PublisherVy9WorkoutUI27InactiveAppearanceAnimationC5StateO_GGMR, MEMORY[0x277CBCC90]);
    v27 = v23;
    v28 = v44;
    v29 = Publisher<>.sink(receiveValue:)();

    (*(v41 + 8))(v9, v28);
    v47 = type metadata accessor for AnyCancellable();
    v48 = MEMORY[0x277CBCDA0];
    aBlock[0] = v29;
    swift_beginAccess();
    v30 = v27;

    specialized Dictionary.subscript.setter(aBlock, v30);
    swift_endAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v32 = [Strong traitCollection];
      swift_unknownObjectRelease();
      v33 = [v32 activeAppearance];

      if (v33 == 1)
      {
        v34 = static os_log_type_t.default.getter();
        specialized static Log.print(_:type:_:)("appearance active, start inactive appearance animation", 54, 2, v34, MEMORY[0x277D84F90]);
        InactiveAppearanceAnimation.start()();
      }
    }

    v35 = OBJC_IVAR___WOInactiveAppearanceAnimationCoordinator_assertion;
    v36 = *(a1 + OBJC_IVAR___WOInactiveAppearanceAnimationCoordinator_assertion);
    if (v36 && ([v36 isAcquired] & 1) != 0)
    {
      v37 = static os_log_type_t.default.getter();
      [*(a1 + v35) restartTimeoutTimer];
      InactiveAppearanceAnimation.start()();
    }

    else
    {
      InactiveAppearanceAnimationCoordinator.acquireAssertion()();
    }
  }

  else
  {
    specialized static Log.print(_:type:_:)("device doesn't support inactive appearance, start animation", 59, 2, v16, MEMORY[0x277D84F90]);
    v48 = closure #1 in InactiveAppearanceAnimationCoordinator.startAnimation(_:);
    v49 = 0;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    v47 = &block_descriptor_27;
    v38 = _Block_copy(aBlock);
    (a2)[2](a2, v38);
    _Block_release(v38);
  }

  return result;
}

unint64_t specialized MutableCollection._halfStablePartition(isSuffixElement:)(unint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  result = specialized Collection.firstIndex(where:)(*a1, a2);
  v7 = result;
  if (v2)
  {
    return v7;
  }

  if (v6)
  {
    if (v4 >> 62)
    {
      return __CocoaSet.count.getter();
    }

    return *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v8 = result + 1;
  if (__OFADD__(result, 1))
  {
    __break(1u);
    return result;
  }

  v9 = &lazy cache variable for type metadata for NSObject;
  v25 = a1;
  while (1)
  {
    if (v4 >> 62)
    {
      if (v8 == __CocoaSet.count.getter())
      {
        return v7;
      }
    }

    else if (v8 == *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v7;
    }

    if ((v4 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x20F30C990](v8, v4);
      goto LABEL_15;
    }

    if ((v8 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v8 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_40;
    }

    v11 = *(v4 + 8 * v8 + 32);
LABEL_15:
    v12 = v11;
    _sSo17OS_dispatch_queueCMaTm_2(0, v9, 0x277D82BB8);
    v13 = static NSObject.== infix(_:_:)();

    if ((v13 & 1) == 0)
    {
      if (v7 != v8)
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v14 = MEMORY[0x20F30C990](v7, v4);
          v15 = MEMORY[0x20F30C990](v8, v4);
        }

        else
        {
          if ((v7 & 0x8000000000000000) != 0)
          {
            goto LABEL_44;
          }

          v16 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v7 >= v16)
          {
            goto LABEL_45;
          }

          if (v8 >= v16)
          {
            goto LABEL_46;
          }

          v17 = *(v4 + 32 + 8 * v8);
          v14 = *(v4 + 32 + 8 * v7);
          v15 = v17;
        }

        v18 = v15;
        v19 = v9;
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v4 & 0x8000000000000000) != 0 || (v4 & 0x4000000000000000) != 0)
        {
          v4 = specialized _ArrayBuffer._consumeAndCreateNew()();
          v20 = (v4 >> 62) & 1;
        }

        else
        {
          LODWORD(v20) = 0;
        }

        v21 = v4 & 0xFFFFFFFFFFFFFF8;
        v22 = *((v4 & 0xFFFFFFFFFFFFFF8) + 8 * v7 + 0x20);
        *((v4 & 0xFFFFFFFFFFFFFF8) + 8 * v7 + 0x20) = v18;

        if ((v4 & 0x8000000000000000) != 0 || v20)
        {
          v4 = specialized _ArrayBuffer._consumeAndCreateNew()();
          v21 = v4 & 0xFFFFFFFFFFFFFF8;
          if ((v8 & 0x8000000000000000) != 0)
          {
LABEL_37:
            __break(1u);
            return v7;
          }
        }

        else if ((v8 & 0x8000000000000000) != 0)
        {
          goto LABEL_37;
        }

        if (v8 >= *(v21 + 16))
        {
          goto LABEL_43;
        }

        v9 = v19;
        v23 = v21 + 8 * v8;
        v24 = *(v23 + 32);
        *(v23 + 32) = v14;

        *v25 = v4;
      }

      v10 = __OFADD__(v7++, 1);
      if (v10)
      {
        goto LABEL_42;
      }
    }

    v10 = __OFADD__(v8++, 1);
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

double block_copy_helper_27(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t outlined destroy of OS_dispatch_queue.SchedulerOptions?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t lazy protocol witness table accessor for type OS_dispatch_queue and conformance OS_dispatch_queue(unint64_t *a1, unint64_t *a2, void *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    _sSo17OS_dispatch_queueCMaTm_2(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t _sSo17OS_dispatch_queueCMaTm_2(uint64_t a1, unint64_t *a2, void *a3)
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

double outlined consume of Set<UIScene>.Index._Variant(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type AnyPublisher<Bool, Never> and conformance AnyPublisher<A, B>(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t objectdestroy_3Tm_0()
{

  return swift_deallocObject();
}

uint64_t InactiveAppearanceAnimation.state.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v1);

  return v1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance InactiveAppearanceAnimation.State()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F30CD90](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance InactiveAppearanceAnimation.State(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  MEMORY[0x20F30CD90](v2);
  return Hasher._finalize()();
}

Swift::Void __swiftcall InactiveAppearanceAnimation.start()()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v7);

  v1 = v7;
  v2 = static os_log_type_t.default.getter();
  if (v1)
  {
    specialized static Log.print(_:type:_:)("inactive appearance animation already started", 45, 2, v2, MEMORY[0x277D84F90]);
  }

  else
  {
    specialized static Log.print(_:type:_:)("started inactive appearance animation", 37, 2, v2, MEMORY[0x277D84F90]);
    swift_getKeyPath();
    swift_getKeyPath();
    v3 = v0;
    static Published.subscript.setter();
    v4 = *&v3[OBJC_IVAR____TtC9WorkoutUI27InactiveAppearanceAnimation_animation];
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    v6 = v3;
    v4(_s9WorkoutUI27InactiveAppearanceAnimationC5startyyFyycACcfu_yycfu0_TA_0, v5);
  }
}

uint64_t implicit closure #2 in implicit closure #1 in InactiveAppearanceAnimation.start()(void *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = a1;
  return static Published.subscript.setter();
}

id InactiveAppearanceAnimation.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InactiveAppearanceAnimation(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for InactiveAppearanceAnimation(uint64_t a1)
{
  result = type metadata singleton initialization cache for InactiveAppearanceAnimation;
  if (!type metadata singleton initialization cache for InactiveAppearanceAnimation)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for InactiveAppearanceAnimation(uint64_t a1)
{
  type metadata accessor for Published<InactiveAppearanceAnimation.State>();
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for Published<InactiveAppearanceAnimation.State>()
{
  if (!lazy cache variable for type metadata for Published<InactiveAppearanceAnimation.State>)
  {
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Published<InactiveAppearanceAnimation.State>);
    }
  }
}

uint64_t getEnumTagSinglePayload for InactiveAppearanceAnimation.State(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for InactiveAppearanceAnimation.State(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type InactiveAppearanceAnimation.State and conformance InactiveAppearanceAnimation.State()
{
  result = lazy protocol witness table cache variable for type InactiveAppearanceAnimation.State and conformance InactiveAppearanceAnimation.State;
  if (!lazy protocol witness table cache variable for type InactiveAppearanceAnimation.State and conformance InactiveAppearanceAnimation.State)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InactiveAppearanceAnimation.State and conformance InactiveAppearanceAnimation.State);
  }

  return result;
}

void key path getter for InactiveAppearanceAnimation.state : InactiveAppearanceAnimation(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v3);

  *a2 = v3;
}

uint64_t key path setter for InactiveAppearanceAnimation.state : InactiveAppearanceAnimation(char *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return static Published.subscript.setter();
}

UIImage *UIImage.withRoundedCorners(_:in:)(double a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v11 = 0.0;
  v80.origin.x = 0.0;
  v80.origin.y = 0.0;
  v80.size.width = 0.0;
  v80.size.height = 0.0;
  v73.origin.x = a2;
  v73.origin.y = a3;
  v73.size.width = a4;
  v73.size.height = a5;
  if (CGRectEqualToRect(v73, v80))
  {
    return 0;
  }

  v69 = a1;
  if (a2 != 0.0)
  {
    v13 = [objc_opt_self() mainScreen];
    [v13 scale];
    v15 = v14;

    v11 = CGRound(v15 * a2) / v15;
  }

  v16 = 0.0;
  v17 = 0.0;
  if (a3 != 0.0)
  {
    v18 = [objc_opt_self() mainScreen];
    [v18 scale];
    v20 = v19;

    v17 = CGRound(v20 * a3) / v20;
  }

  v74.origin.x = a2;
  v74.origin.y = a3;
  v74.size.width = a4;
  v74.size.height = a5;
  Width = CGRectGetWidth(v74);
  if (Width != 0.0)
  {
    v22 = Width;
    v23 = [objc_opt_self() mainScreen];
    [v23 scale];
    v25 = v24;

    v16 = CGRound(v22 * v25) / v25;
  }

  v75.origin.x = a2;
  v75.origin.y = a3;
  v75.size.width = a4;
  v75.size.height = a5;
  Height = CGRectGetHeight(v75);
  v27 = 0.0;
  v28 = 0.0;
  if (Height != 0.0)
  {
    v29 = Height;
    v30 = [objc_opt_self() mainScreen];
    [v30 scale];
    v32 = v31;

    v28 = CGRound(v29 * v32) / v32;
  }

  [v5 size];
  if (v33 != 0.0)
  {
    v34 = v33;
    v35 = [objc_opt_self() mainScreen];
    [v35 scale];
    v37 = v36;

    v27 = CGRound(v34 * v37) / v37;
  }

  [v5 size];
  v71 = 0.0;
  v39 = 0.0;
  if (v38 != 0.0)
  {
    v40 = v38;
    v41 = [objc_opt_self() mainScreen];
    [v41 scale];
    v43 = v42;

    v39 = CGRound(v40 * v43) / v43;
  }

  v76.origin.x = v11;
  v76.origin.y = v17;
  v76.size.width = v16;
  v76.size.height = v28;
  v44 = CGRectGetWidth(v76) / v27;
  v77.origin.x = v11;
  v77.origin.y = v17;
  v77.size.width = v16;
  v77.size.height = v28;
  v45 = CGRectGetHeight(v77) / v39;
  if (v44 > v45)
  {
    v46 = v44;
  }

  else
  {
    v46 = v45;
  }

  v47 = v27 * v46;
  if (v47 != 0.0)
  {
    v48 = [objc_opt_self() mainScreen];
    [v48 scale];
    v50 = v49;

    v71 = CGRound(v47 * v50) / v50;
  }

  v51 = v39 * v46;
  v70 = 0.0;
  v52 = 0.0;
  if (v51 != 0.0)
  {
    v53 = [objc_opt_self() mainScreen];
    [v53 scale];
    v55 = v54;

    v52 = CGRound(v51 * v55) / v55;
  }

  v78.origin.x = v11;
  v78.origin.y = v17;
  v78.size.width = v16;
  v78.size.height = v28;
  v56 = CGRectGetWidth(v78) - v71;
  v79.origin.x = v11;
  v79.origin.y = v17;
  v79.size.width = v16;
  v79.size.height = v28;
  v57 = v11 + v56 * 0.5;
  v58 = v17 + (CGRectGetHeight(v79) - v52) * 0.5;
  if (v57 != 0.0)
  {
    v59 = [objc_opt_self() mainScreen];
    [v59 scale];
    v61 = v60;

    v70 = CGRound(v57 * v61) / v61;
  }

  v62 = 0.0;
  if (v58 != 0.0)
  {
    v63 = [objc_opt_self() mainScreen];
    [v63 scale];
    v65 = v64;

    v62 = CGRound(v58 * v65) / v65;
  }

  v72.width = v16;
  v72.height = v28;
  UIGraphicsBeginImageContextWithOptions(v72, 0, 0.0);
  v66 = [objc_opt_self() bezierPathWithRoundedRect:v11 cornerRadius:{v17, v16, v28, v69}];
  [v66 addClip];
  [v5 drawInRect_];
  v67 = UIGraphicsGetImageFromCurrentImageContext();
  v68 = UIGraphicsGetImageFromCurrentImageContext();

  return v67;
}

void WorkoutUIController.end(_:with:endReason:)(void *a1, void *a2)
{
  v3 = specialized WorkoutUIController.withSourceRevision(_:)(a2);
  if (a1)
  {
    v4 = v3;
    WorkoutUIController.handleWorkoutSessionCompletion(with:workout:)(v3, a1);
  }

  else
  {
    __break(1u);
  }
}

void WorkoutUIController.update(_:with:workoutIsFinal:)(void *a1, void *a2)
{
  v3 = specialized WorkoutUIController.withSourceRevision(_:)(a2);
  if (a1)
  {
    v4 = v3;
    WorkoutUIController.handleWorkoutSessionCompletion(with:workout:)(v3, a1);
  }

  else
  {
    __break(1u);
  }
}

void WorkoutUIController.didDiscardWorkout(_:)(void *a1)
{
  if (a1)
  {
    WorkoutUIController.handleWorkoutSessionCompletion(with:workout:)(0, a1);
  }

  else
  {
    __break(1u);
  }
}

void *specialized WorkoutUIController.withSourceRevision(_:)(void *a1)
{
  if (a1)
  {
    v2 = a1;
    v3 = [v2 sourceRevision];
    v4 = [v3 source];

    LOBYTE(v3) = [v4 _hasFirstPartyBundleID];
    if ((v3 & 1) == 0)
    {
      v5 = [objc_opt_self() _localDeviceSource];
      v6 = [objc_opt_self() processInfo];
      [v6 operatingSystemVersion];
      v11 = v12;
      v7 = v13;

      v8 = objc_allocWithZone(MEMORY[0x277CCDA18]);
      v12 = v11;
      v13 = v7;
      v9 = [v8 initWithSource:v5 version:0 productType:0 operatingSystemVersion:&v12];
      [v2 _setSourceRevision_];
    }
  }

  return a1;
}

uint64_t WorkoutSessionDeviceObserver.deinit()
{
  [*(v0 + 16) removeStateObserver_];
  WorkoutSessionDeviceObserver.stopObserving()();

  __swift_destroy_boxed_opaque_existential_0Tm_3((v0 + 24));

  return v0;
}

uint64_t WorkoutSessionDeviceObserver.__deallocating_deinit()
{
  WorkoutSessionDeviceObserver.deinit();

  return swift_deallocClassInstance();
}

Swift::Void __swiftcall WorkoutSessionDeviceObserver.stopObserving()()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v6 = *(v1 + 72);
  if ((v6 & 0xC000000000000001) != 0)
  {

    v7 = __CocoaSet.count.getter();

    if (!v7)
    {
      return;
    }
  }

  else if (!*(v6 + 16))
  {
    return;
  }

  static WOLog.devices.getter();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_20C66F000, v8, v9, "WorkoutSessionDeviceObserver stop observing", v10, 2u);
    MEMORY[0x20F30E080](v10, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  v11 = *(v1 + 72);
  if ((v11 & 0xC000000000000001) != 0)
  {

    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for AnyCancellable();
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_1(&lazy protocol witness table cache variable for type AnyCancellable and conformance AnyCancellable, MEMORY[0x277CBCDA8], MEMORY[0x277CBCDB0]);
    Set.Iterator.init(_cocoa:)();
    v13 = v28;
    v12 = v29;
    v14 = v30;
    v15 = v31;
    v16 = v32;
  }

  else
  {
    v17 = -1 << *(v11 + 32);
    v12 = v11 + 56;
    v14 = ~v17;
    v18 = -v17;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v16 = v19 & *(v11 + 56);
    swift_bridgeObjectRetain_n();
    v15 = 0;
    v13 = v11;
  }

  v27[1] = v14;
  v20 = (v14 + 64) >> 6;
  if (v13 < 0)
  {
    goto LABEL_20;
  }

  while (1)
  {
    v21 = v15;
    v22 = v16;
    v23 = v15;
    if (!v16)
    {
      break;
    }

LABEL_18:
    v24 = (v22 - 1) & v22;
    v25 = *(*(v13 + 48) + ((v23 << 9) | (8 * __clz(__rbit64(v22)))));

    if (!v25)
    {
LABEL_24:
      outlined consume of Set<AnyCancellable>.Iterator._Variant(v13);

      *(v1 + 72) = MEMORY[0x277D84FA0];

      return;
    }

    while (1)
    {
      AnyCancellable.cancel()();

      v15 = v23;
      v16 = v24;
      if ((v13 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_20:
      v26 = __CocoaSet.Iterator.next()();
      if (v26)
      {
        v27[2] = v26;
        type metadata accessor for AnyCancellable();
        swift_dynamicCast();
        v23 = v15;
        v24 = v16;
        if (v27[3])
        {
          continue;
        }
      }

      goto LABEL_24;
    }
  }

  while (1)
  {
    v23 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v23 >= v20)
    {
      goto LABEL_24;
    }

    v22 = *(v12 + 8 * v23);
    ++v21;
    if (v22)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
}

Swift::Void __swiftcall WorkoutSessionDeviceObserver.startObserving()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v24 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySay11WorkoutCore0D6DeviceVG_GMd, "bS\t");
  v25 = *(v5 - 8);
  v26 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v24 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9ReceiveOnVy_AA9PublishedV9PublisherVySay11WorkoutCore0G6DeviceVG_GSo17OS_dispatch_queueCGMd, &_s7Combine10PublishersO9ReceiveOnVy_AA9PublishedV9PublisherVySay11WorkoutCore0G6DeviceVG_GSo17OS_dispatch_queueCGMR);
  v27 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v15 = *(v1 + 72);
  if ((v15 & 0xC000000000000001) != 0)
  {

    v16 = __CocoaSet.count.getter();

    if (v16)
    {
      return;
    }
  }

  else if (*(v15 + 16))
  {
    return;
  }

  v24 = v8;
  static WOLog.devices.getter();
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_20C66F000, v17, v18, "WorkoutSessionDeviceObserver start observing", v19, 2u);
    MEMORY[0x20F30E080](v19, -1, -1);
  }

  (*(v12 + 8))(v14, v11);
  dispatch thunk of WorkoutDevicesProvider.$devices.getter();
  _sSo17OS_dispatch_queueCMaTm_3(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  v20 = static OS_dispatch_queue.main.getter();
  v28 = v20;
  v21 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  (*(*(v21 - 8) + 56))(v4, 1, 1, v21);
  lazy protocol witness table accessor for type Published<[WorkoutDevice]>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type Published<[WorkoutDevice]>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVySay11WorkoutCore0D6DeviceVG_GMd, "bS\t", MEMORY[0x277CBCEC8]);
  lazy protocol witness table accessor for type OS_dispatch_queue and conformance OS_dispatch_queue();
  v22 = v26;
  Publisher.receive<A>(on:options:)();
  outlined destroy of OS_dispatch_queue.SchedulerOptions?(v4);

  (*(v25 + 8))(v7, v22);
  swift_allocObject();
  swift_weakInit();
  lazy protocol witness table accessor for type Published<[WorkoutDevice]>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type Publishers.ReceiveOn<Published<[WorkoutDevice]>.Publisher, OS_dispatch_queue> and conformance Publishers.ReceiveOn<A, B>, &_s7Combine10PublishersO9ReceiveOnVy_AA9PublishedV9PublisherVySay11WorkoutCore0G6DeviceVG_GSo17OS_dispatch_queueCGMd, &_s7Combine10PublishersO9ReceiveOnVy_AA9PublishedV9PublisherVySay11WorkoutCore0G6DeviceVG_GSo17OS_dispatch_queueCGMR, MEMORY[0x277CBCD60]);
  v23 = v24;
  Publisher<>.sink(receiveValue:)();

  (*(v27 + 8))(v10, v23);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();
}

void closure #1 in WorkoutSessionDeviceObserver.startObserving()(uint64_t *a1, uint64_t a2)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v29 - v8;
  v10 = *a1;
  static WOLog.devices.getter();

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v31 = v4;
    v14 = v13;
    v15 = swift_slowAlloc();
    v30 = v3;
    v16 = v6;
    v17 = v15;
    v32[0] = v15;
    *v14 = 136315138;
    v18 = type metadata accessor for WorkoutDevice();
    v19 = MEMORY[0x20F30BD20](v10, v18);
    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, v32);

    *(v14 + 4) = v21;
    _os_log_impl(&dword_20C66F000, v11, v12, "WorkoutSessionDeviceObserver observed device change devices=%s", v14, 0xCu);
    v22 = __swift_destroy_boxed_opaque_existential_0Tm_3(v17);
    v23 = v17;
    v6 = v16;
    v3 = v30;
    MEMORY[0x20F30E080](v23, -1, -1, v22);
    v24 = v14;
    v4 = v31;
    MEMORY[0x20F30E080](v24, -1, -1);
  }

  v25 = *(v4 + 8);
  v25(v9, v3);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    WorkoutSessionDeviceObserver.evaluateShowingHeartRate(for:)(v10);
    WorkoutSessionDeviceObserver.evaluateShowingPedometerMetrics(for:)(v10);
  }

  else
  {
    static WOLog.devices.getter();
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_20C66F000, v26, v27, "self nil when observing device change to evaluate in-session behavior", v28, 2u);
      MEMORY[0x20F30E080](v28, -1, -1);
    }

    v25(v6, v3);
  }
}

void WorkoutSessionDeviceObserver.evaluateShowingHeartRate(for:)(uint64_t a1)
{
  v3 = type metadata accessor for Logger();
  v38 = *(v3 - 8);
  v39 = v3;
  MEMORY[0x28223BE20](v3);
  v36 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v35 = &v34 - v6;
  v40 = type metadata accessor for WorkoutDeviceType();
  v7 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for WorkoutDevice();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [*(v1 + 16) sessionActivity];
  v37 = NLSessionActivity.coreLiveWorkoutConfiguration.getter();

  v16 = 0;
  v17 = *(a1 + 16);
  v41 = a1;
  v42 = v17;
  v18 = (v7 + 8);
  do
  {
    v19 = v16;
    if (v42 == v16)
    {
      v21 = v37;
      dispatch thunk of LiveWorkoutConfiguration.devicesSupportHeartRate.getter();
      goto LABEL_9;
    }

    (*(v11 + 16))(v14, v41 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v16++, v10);
    WorkoutDevice.type.getter();
    v20 = WorkoutDeviceType.supportsHeartRate.getter();
    (*v18)(v9, v40);
    (*(v11 + 8))(v14, v10);
  }

  while ((v20 & 1) == 0);
  v21 = v37;
  if ((dispatch thunk of LiveWorkoutConfiguration.devicesSupportHeartRate.getter() & 1) == 0)
  {
    v22 = v35;
    static WOLog.devices.getter();
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_20C66F000, v23, v24, "Connected devices support heart rate, updating liveWorkoutConfiguration", v25, 2u);
      MEMORY[0x20F30E080](v25, -1, -1);
    }

    (*(v38 + 8))(v22, v39);
    dispatch thunk of LiveWorkoutConfiguration.devicesSupportHeartRate.setter();

    return;
  }

LABEL_9:
  v26 = v36;
  static WOLog.devices.getter();
  v27 = v21;
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = v42 != v19;
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v43 = v32;
    *v31 = 136315650;
    *(v31 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001ELL, 0x800000020CBA0530, &v43);
    *(v31 + 12) = 1024;
    *(v31 + 14) = dispatch thunk of LiveWorkoutConfiguration.devicesSupportHeartRate.getter() & 1;

    *(v31 + 18) = 1024;
    *(v31 + 20) = v30;
    _os_log_impl(&dword_20C66F000, v28, v29, "%s liveWorkoutConfiguration.devicesSupportHeartRate=%{BOOL}d devicesSupportHeartRate=%{BOOL}d", v31, 0x18u);
    v33 = __swift_destroy_boxed_opaque_existential_0Tm_3(v32);
    MEMORY[0x20F30E080](v32, -1, -1, v33);
    MEMORY[0x20F30E080](v31, -1, -1);
  }

  else
  {
  }

  (*(v38 + 8))(v26, v39);
}

void WorkoutSessionDeviceObserver.evaluateShowingPedometerMetrics(for:)(uint64_t a1)
{
  v3 = type metadata accessor for Logger();
  v37 = *(v3 - 8);
  v38 = v3;
  MEMORY[0x28223BE20](v3);
  v36 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v35 = &v35 - v6;
  v40 = type metadata accessor for WorkoutDeviceType();
  v7 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for WorkoutDevice();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [*(v1 + 16) sessionActivity];
  v43 = NLSessionActivity.coreLiveWorkoutConfiguration.getter();

  v16 = 0;
  v17 = *(a1 + 16);
  v41 = a1;
  v42 = v17;
  v39 = v11 + 16;
  v18 = (v7 + 8);
  do
  {
    v19 = v16;
    if (v42 == v16)
    {
      v22 = v43;
      dispatch thunk of LiveWorkoutConfiguration.devicesSupportPedometer.getter();
      goto LABEL_9;
    }

    (*(v11 + 16))(v14, v41 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v16++, v10);
    WorkoutDevice.type.getter();
    v20 = LiveWorkoutConfiguration.configuration.getter();
    v21 = dispatch thunk of WorkoutConfiguration.activityType.getter();

    LOBYTE(v20) = WorkoutDeviceType.supportsPedometer(activityType:)();
    (*v18)(v9, v40);
    (*(v11 + 8))(v14, v10);
  }

  while ((v20 & 1) == 0);
  v22 = v43;
  if ((dispatch thunk of LiveWorkoutConfiguration.devicesSupportPedometer.getter() & 1) == 0)
  {
    v23 = v35;
    static WOLog.devices.getter();
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_20C66F000, v24, v25, "Connected devices support pedometer, updating liveWorkoutConfiguration", v26, 2u);
      MEMORY[0x20F30E080](v26, -1, -1);
    }

    (*(v37 + 8))(v23, v38);
    dispatch thunk of LiveWorkoutConfiguration.devicesSupportPedometer.setter();

    return;
  }

LABEL_9:
  v27 = v36;
  static WOLog.devices.getter();
  v28 = v22;
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = v42 != v19;
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v44 = v33;
    *v32 = 136315650;
    *(v32 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000025, 0x800000020CBA0500, &v44);
    *(v32 + 12) = 1024;
    *(v32 + 14) = dispatch thunk of LiveWorkoutConfiguration.devicesSupportPedometer.getter() & 1;

    *(v32 + 18) = 1024;
    *(v32 + 20) = v31;
    _os_log_impl(&dword_20C66F000, v29, v30, "%s liveWorkoutConfiguration.devicesSupportPedometer=%{BOOL}d devicesSupportPedometer=%{BOOL}d", v32, 0x18u);
    v34 = __swift_destroy_boxed_opaque_existential_0Tm_3(v33);
    MEMORY[0x20F30E080](v33, -1, -1, v34);
    MEMORY[0x20F30E080](v32, -1, -1);
  }

  else
  {
  }

  (*(v37 + 8))(v27, v38);
}

void WorkoutSessionDeviceObserver.recordWorkoutDevices(_:)(uint64_t a1)
{
  v2 = type metadata accessor for WorkoutDevice();
  v3 = *(v2 - 8);
  v4.n128_f64[0] = MEMORY[0x28223BE20](v2);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  if (v7)
  {
    v9 = *(v3 + 16);
    v8 = v3 + 16;
    v10 = a1 + ((*(v8 + 64) + 32) & ~*(v8 + 64));
    v22 = *(v8 + 56);
    v23 = v9;
    v11 = (v8 - 8);
    v12 = MEMORY[0x277D84F90];
    v21[1] = v8;
    v9(v6, v10, v2, v4);
    while (1)
    {
      v14 = WorkoutDevice.productModel.getter();
      v16 = v15;
      (*v11)(v6, v2);
      if (v16)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v12 + 2) + 1, 1, v12);
        }

        v18 = *(v12 + 2);
        v17 = *(v12 + 3);
        if (v18 >= v17 >> 1)
        {
          v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1, v12);
        }

        *(v12 + 2) = v18 + 1;
        v13 = &v12[16 * v18];
        *(v13 + 4) = v14;
        *(v13 + 5) = v16;
      }

      v10 += v22;
      if (!--v7)
      {
        break;
      }

      v23(v6, v10, v2, v4);
    }
  }

  v19 = [*(v21[0] + 16) analyticsEventBuilder];
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v19 recordSensorTypes_];
}

unint64_t lazy protocol witness table accessor for type OS_dispatch_queue and conformance OS_dispatch_queue()
{
  result = lazy protocol witness table cache variable for type OS_dispatch_queue and conformance OS_dispatch_queue;
  if (!lazy protocol witness table cache variable for type OS_dispatch_queue and conformance OS_dispatch_queue)
  {
    _sSo17OS_dispatch_queueCMaTm_3(255, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OS_dispatch_queue and conformance OS_dispatch_queue);
  }

  return result;
}

uint64_t outlined destroy of OS_dispatch_queue.SchedulerOptions?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_1(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double __swift_destroy_boxed_opaque_existential_0Tm_3(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    (*(v1 + 8))();
  }

  return result;
}

id specialized WorkoutSessionDeviceObserver.init(workout:sessionControls:sessionViewModel:)(void *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v38 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v36 = *(v11 - 8);
  v37 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x277D84F90];
  if (MEMORY[0x277D84F90] >> 62 && __CocoaSet.count.getter())
  {
    _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC7Combine14AnyCancellableC_Tt0g5Tf4g_n(MEMORY[0x277D84F90]);
  }

  else
  {
    v15 = MEMORY[0x277D84FA0];
  }

  *(v3 + 72) = v15;
  type metadata accessor for WorkoutDevicesProvider();
  v16 = static WorkoutDevicesProvider.shared.getter();
  *(v4 + 80) = v16;
  *(v4 + 16) = a1;
  outlined init with copy of SessionControls(a2, v4 + 24);
  *(v4 + 64) = a3;
  v17 = objc_opt_self();
  v39 = a2;
  v18 = v17;
  v19 = v16;
  v20 = a1;

  result = [v18 sharedConnection];
  if (result)
  {
    v22 = result;
    v41 = _sSo17OS_dispatch_queueCMaTm_3(0, &lazy cache variable for type metadata for MCProfileConnection, 0x277D262A0);
    v42 = MEMORY[0x277D7E770];
    aBlock[0] = v22;
    v23 = type metadata accessor for CoreAnalyticsReporter();
    swift_allocObject();
    v24 = CoreAnalyticsReporter.init()();
    v45 = v23;
    v46 = MEMORY[0x277D7DDF8];
    v44 = v24;
    type metadata accessor for SessionSensorUnavailableEvaluator();
    swift_allocObject();
    v25 = v20;
    *(v4 + 88) = SessionSensorUnavailableEvaluator.init(workout:devicesProvider:healthDataSubmissionAllowedProvider:coreAnalyticsReporter:)();
    _sSo17OS_dispatch_queueCMaTm_3(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
    v26 = static OS_dispatch_queue.main.getter();
    v27 = swift_allocObject();
    *(v27 + 16) = v25;
    *(v27 + 24) = v4;
    v42 = partial apply for closure #1 in WorkoutSessionDeviceObserver.init(workout:sessionControls:sessionViewModel:);
    v43 = v27;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    v41 = &block_descriptor_28;
    v28 = _Block_copy(aBlock);
    v29 = v25;

    static DispatchQoS.unspecified.getter();
    aBlock[0] = v14;
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_1(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type Published<[WorkoutDevice]>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x277D83970]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x20F30C1F0](0, v13, v10, v28);
    _Block_release(v28);

    (*(v38 + 8))(v10, v8);
    (*(v36 + 8))(v13, v37);
    v30 = dispatch thunk of WorkoutDevicesProvider.devices.getter();
    WorkoutSessionDeviceObserver.evaluateShowingHeartRate(for:)(v30);

    v31 = dispatch thunk of WorkoutDevicesProvider.devices.getter();
    WorkoutSessionDeviceObserver.evaluateShowingPedometerMetrics(for:)(v31);

    LOBYTE(v25) = dispatch thunk of WorkoutDevicesProvider.pairedWatchNearby.getter();
    LOBYTE(v22) = dispatch thunk of WorkoutDevicesProvider.pairedWatchUnlockedAndOnWrist.getter();
    v32 = [*(v4 + 16) analyticsEventBuilder];
    [v32 recordPairedWatchNearby_];

    v33 = [*(v4 + 16) analyticsEventBuilder];
    [v33 recordPairedWatchUnlockedAndOnWrist_];

    v34 = dispatch thunk of WorkoutDevicesProvider.devices.getter();
    WorkoutSessionDeviceObserver.recordWorkoutDevices(_:)(v34);

    WorkoutSessionDeviceObserver.startObserving()();
    __swift_destroy_boxed_opaque_existential_0Tm_3(v39);
    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t _sSo17OS_dispatch_queueCMaTm_3(uint64_t a1, unint64_t *a2, void *a3)
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

double block_copy_helper_28(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t lazy protocol witness table accessor for type Published<[WorkoutDevice]>.Publisher and conformance Published<A>.Publisher(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

Swift::Int SessionPauseResumeAction.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F30CD90](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance SessionPauseResumeAction()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F30CD90](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance SessionPauseResumeAction(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  MEMORY[0x20F30CD90](v2);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type SessionPauseResumeAction and conformance SessionPauseResumeAction()
{
  result = lazy protocol witness table cache variable for type SessionPauseResumeAction and conformance SessionPauseResumeAction;
  if (!lazy protocol witness table cache variable for type SessionPauseResumeAction and conformance SessionPauseResumeAction)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SessionPauseResumeAction and conformance SessionPauseResumeAction);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SessionPauseResumeAction(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SessionPauseResumeAction(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

double Font.Weight.uiFontWeight.getter(double a1)
{
  static Font.Weight.ultraLight.getter();
  if (static Font.Weight.== infix(_:_:)())
  {
    v1 = MEMORY[0x277D74438];
  }

  else
  {
    static Font.Weight.thin.getter();
    if (static Font.Weight.== infix(_:_:)())
    {
      v1 = MEMORY[0x277D74428];
    }

    else
    {
      static Font.Weight.light.getter();
      if (static Font.Weight.== infix(_:_:)())
      {
        v1 = MEMORY[0x277D74408];
      }

      else
      {
        static Font.Weight.regular.getter();
        v2 = static Font.Weight.== infix(_:_:)();
        v1 = MEMORY[0x277D74418];
        if ((v2 & 1) == 0)
        {
          static Font.Weight.medium.getter();
          if (static Font.Weight.== infix(_:_:)())
          {
            v1 = MEMORY[0x277D74410];
          }

          else
          {
            static Font.Weight.semibold.getter();
            if (static Font.Weight.== infix(_:_:)())
            {
              v1 = MEMORY[0x277D74420];
            }

            else
            {
              static Font.Weight.bold.getter();
              if (static Font.Weight.== infix(_:_:)())
              {
                v1 = MEMORY[0x277D743F8];
              }

              else
              {
                static Font.Weight.heavy.getter();
                if (static Font.Weight.== infix(_:_:)())
                {
                  v1 = MEMORY[0x277D74400];
                }

                else
                {
                  static Font.Weight.black.getter();
                  if (static Font.Weight.== infix(_:_:)())
                  {
                    v1 = MEMORY[0x277D743E8];
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return *v1;
}

uint64_t TargetZone.ZoneType.stepperText(activityType:)(void *a1)
{
  v3 = type metadata accessor for TargetZone.ZoneType();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, v1, v3, v5);
  v8 = (*(v4 + 88))(v7, v3);
  if (v8 == *MEMORY[0x277D7DE48] || v8 == *MEMORY[0x277D7DE40] || v8 == *MEMORY[0x277D7DE60])
  {
    goto LABEL_30;
  }

  if (v8 == *MEMORY[0x277D7DE70] || v8 == *MEMORY[0x277D7DE58])
  {
    if ([a1 effectiveTypeIdentifier] == 13)
    {
      if (one-time initialization token for WorkoutUIBundle != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v12 = WorkoutUIBundle.super.isa;
      v22 = 0xE000000000000000;
      v13 = 0xD000000000000024;
      v14 = 0x800000020CBA0640;
    }

    else
    {
      if (one-time initialization token for WorkoutUIBundle != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v12 = WorkoutUIBundle.super.isa;
      v22 = 0xE000000000000000;
      v14 = 0x800000020CBA0620;
      v13 = 0xD00000000000001CLL;
    }

    v16 = 0x617A696C61636F4CLL;
    v17 = 0xEB00000000656C62;
  }

  else
  {
    if (v8 != *MEMORY[0x277D7DE68] && v8 != *MEMORY[0x277D7DE50])
    {
      while (1)
      {
LABEL_30:
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
      }
    }

    if (one-time initialization token for WorkoutUIBundle != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v12 = WorkoutUIBundle.super.isa;
    v22 = 0xE000000000000000;
    v16 = 0x617A696C61636F4CLL;
    v17 = 0xEB00000000656C62;
    v13 = 0xD00000000000001FLL;
    v14 = 0x800000020CBA0600;
  }

  v18._countAndFlagsBits = 0;
  v18._object = 0xE000000000000000;
  v19 = 0;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v13, *&v16, v12, v18, *(&v22 - 1))._countAndFlagsBits;

  return countAndFlagsBits;
}

uint64_t TargetZone.ZoneType.stepperColor.getter()
{
  v1 = type metadata accessor for TargetZone.ZoneType();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5, v0, v1, v3);
  v6 = (*(v2 + 88))(v5, v1);
  if (v6 == *MEMORY[0x277D7DE48] || v6 == *MEMORY[0x277D7DE40] || v6 == *MEMORY[0x277D7DE60])
  {
    goto LABEL_20;
  }

  if (v6 == *MEMORY[0x277D7DE70] || v6 == *MEMORY[0x277D7DE58])
  {
    return static Color.white.getter();
  }

  if (v6 != *MEMORY[0x277D7DE68] && v6 != *MEMORY[0x277D7DE50])
  {
    while (1)
    {
LABEL_20:
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  return static Color.blue.getter();
}

id TargetZone.ZoneType.minimumPaceRangeValue(activityType:userDistanceUnit:)(void *a1, uint64_t a2)
{
  if (a2 == 3 || a2 == 2)
  {
    return [a1 effectiveTypeIdentifier];
  }

  _StringGuts.grow(_:)(36);
  MEMORY[0x20F30BC00](0xD000000000000014, 0x800000020CBA0830);
  type metadata accessor for FIUIDistanceUnit(0);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x20F30BC00](0x70757320746F6E20, 0xEE00646574726F70);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

id TargetZone.ZoneType.maximumPaceRangeValue(activityType:userDistanceUnit:)(void *a1, uint64_t a2)
{
  if ((a2 & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    result = [a1 effectiveTypeIdentifier];
    if (result != 13)
    {
      result = [a1 effectiveTypeIdentifier];
      if (result == 37)
      {
        return [a1 isIndoor];
      }
    }
  }

  else
  {
    _StringGuts.grow(_:)(36);
    MEMORY[0x20F30BC00](0xD000000000000014, 0x800000020CBA0830);
    type metadata accessor for FIUIDistanceUnit(0);
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x20F30BC00](0x70757320746F6E20, 0xEE00646574726F70);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

id TargetZone.ZoneType.minimumRangeValue(activityType:userDistanceUnit:)(void *a1, uint64_t a2)
{
  v5 = type metadata accessor for TargetZone.ZoneType();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v9, v2, v5, v7);
  result = (*(v6 + 88))(v9, v5);
  if (result == *MEMORY[0x277D7DE48] || result == *MEMORY[0x277D7DE40] || result == *MEMORY[0x277D7DE60])
  {
    return TargetZone.ZoneType.minimumPaceRangeValue(activityType:userDistanceUnit:)(a1, a2);
  }

  if (result == *MEMORY[0x277D7DE70] || result == *MEMORY[0x277D7DE58])
  {
    return [a1 effectiveTypeIdentifier];
  }

  v14 = result == *MEMORY[0x277D7DE68] || result == *MEMORY[0x277D7DE50];
  if (!v14 && result != *MEMORY[0x277D7DE78])
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

double TargetZone.ZoneType.pickerStepInUserUnit(activityType:)(void *a1)
{
  v2 = type metadata accessor for TargetZone.PrimaryType();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = v14 - v7;
  TargetZone.ZoneType.primaryType.getter();
  (*(v3 + 104))(v5, *MEMORY[0x277D7DEC0], v2);
  lazy protocol witness table accessor for type TargetZone.PrimaryType and conformance TargetZone.PrimaryType();
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v14[1] == v14[0])
  {
    v9 = *(v3 + 8);
    v9(v5, v2);
    v9(v8, v2);
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v12 = *(v3 + 8);
    v12(v5, v2);
    v12(v8, v2);

    result = 5.0;
    if ((v11 & 1) == 0)
    {
      return result;
    }
  }

  v13 = [a1 effectiveTypeIdentifier];
  result = 10.0;
  if (v13 == 13)
  {
    return 1.0;
  }

  return result;
}

id TargetZone.ZoneType.maximumRangeValue(activityType:userDistanceUnit:)(void *a1, uint64_t a2)
{
  v5 = type metadata accessor for TargetZone.ZoneType();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v9, v2, v5, v7);
  result = (*(v6 + 88))(v9, v5);
  if (result == *MEMORY[0x277D7DE48] || result == *MEMORY[0x277D7DE40] || result == *MEMORY[0x277D7DE60])
  {
    return TargetZone.ZoneType.maximumPaceRangeValue(activityType:userDistanceUnit:)(a1, a2);
  }

  if (result != *MEMORY[0x277D7DE70] && result != *MEMORY[0x277D7DE58])
  {
    v14 = result == *MEMORY[0x277D7DE68] || result == *MEMORY[0x277D7DE50];
    if (!v14 && result != *MEMORY[0x277D7DE78])
    {
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  return result;
}

uint64_t TargetZone.ZoneType.headerTextLow(activityType:)(uint64_t a1)
{
  v2 = type metadata accessor for TargetZone.ZoneType();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TargetZone.PrimaryType();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  TargetZone.ZoneType.primaryType.getter();
  if ((*(v7 + 88))(v9, v6) == *MEMORY[0x277D7DEC0])
  {
    v10 = FIUIDistanceTypeForActivityType();
    if (MEMORY[0x20F30D340](v10) != 4)
    {
      if (one-time initialization token for WorkoutUIBundle != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v11 = WorkoutUIBundle.super.isa;
      v22._object = 0xE000000000000000;
      v12.value._countAndFlagsBits = 0x617A696C61636F4CLL;
      v12.value._object = 0xEB00000000656C62;
      v13._countAndFlagsBits = 0xD000000000000016;
      v13._object = 0x800000020CBA07F0;
      v14._countAndFlagsBits = 0;
      v14._object = 0xE000000000000000;
      v22._countAndFlagsBits = 0;
      countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v13, v12, v11, v14, v22)._countAndFlagsBits;

      return countAndFlagsBits;
    }
  }

  else
  {
    (*(v7 + 8))(v9, v6);
  }

  (*(v3 + 16))(v5, v1, v2);
  if ((*(v3 + 88))(v5, v2) == *MEMORY[0x277D7DE78])
  {
    return 0;
  }

  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v16 = WorkoutUIBundle.super.isa;
  v23._object = 0xE000000000000000;
  v17.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v17.value._object = 0xEB00000000656C62;
  v18._object = 0x800000020CB945C0;
  v18._countAndFlagsBits = 0xD000000000000011;
  v19._countAndFlagsBits = 0;
  v19._object = 0xE000000000000000;
  v23._countAndFlagsBits = 0;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v18, v17, v16, v19, v23)._countAndFlagsBits;

  (*(v3 + 8))(v5, v2);
  return countAndFlagsBits;
}

uint64_t TargetZone.ZoneType.headerTextHigh(activityType:)(uint64_t a1)
{
  v2 = type metadata accessor for TargetZone.ZoneType();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TargetZone.PrimaryType();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  TargetZone.ZoneType.primaryType.getter();
  if ((*(v7 + 88))(v9, v6) == *MEMORY[0x277D7DEC0])
  {
    v10 = FIUIDistanceTypeForActivityType();
    if (MEMORY[0x20F30D340](v10) != 4)
    {
      if (one-time initialization token for WorkoutUIBundle != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v11 = WorkoutUIBundle.super.isa;
      v22._object = 0xE000000000000000;
      v12.value._countAndFlagsBits = 0x617A696C61636F4CLL;
      v12.value._object = 0xEB00000000656C62;
      v13._countAndFlagsBits = 0xD000000000000016;
      v13._object = 0x800000020CBA0810;
      v14._countAndFlagsBits = 0;
      v14._object = 0xE000000000000000;
      v22._countAndFlagsBits = 0;
      countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v13, v12, v11, v14, v22)._countAndFlagsBits;

      return countAndFlagsBits;
    }
  }

  else
  {
    (*(v7 + 8))(v9, v6);
  }

  (*(v3 + 16))(v5, v1, v2);
  if ((*(v3 + 88))(v5, v2) == *MEMORY[0x277D7DE78])
  {
    return 0;
  }

  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v16 = WorkoutUIBundle.super.isa;
  v23._object = 0xE000000000000000;
  v17.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v17.value._object = 0xEB00000000656C62;
  v18._object = 0x800000020CB945E0;
  v18._countAndFlagsBits = 0xD000000000000011;
  v19._countAndFlagsBits = 0;
  v19._object = 0xE000000000000000;
  v23._countAndFlagsBits = 0;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v18, v17, v16, v19, v23)._countAndFlagsBits;

  (*(v3 + 8))(v5, v2);
  return countAndFlagsBits;
}

unint64_t lazy protocol witness table accessor for type TargetZone.PrimaryType and conformance TargetZone.PrimaryType()
{
  result = lazy protocol witness table cache variable for type TargetZone.PrimaryType and conformance TargetZone.PrimaryType;
  if (!lazy protocol witness table cache variable for type TargetZone.PrimaryType and conformance TargetZone.PrimaryType)
  {
    type metadata accessor for TargetZone.PrimaryType();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TargetZone.PrimaryType and conformance TargetZone.PrimaryType);
  }

  return result;
}

uint64_t SeymourDataSource.__allocating_init(seymourSampleContentProvider:seymourSubscriptionProvider:seymourAvailabilityProvider:externalSeymourSessionStatusProvider:)(void *a1, void *a2, void *a3, void *a4, uint64_t a5)
{
  v10 = a1[3];
  v9 = a1[4];
  v11 = a1[5];
  v12 = __swift_mutable_project_boxed_opaque_existential_2(a1, v10);
  ObjectType = swift_getObjectType();
  v14 = swift_getObjectType();
  *&v17 = swift_getObjectType();
  *(&v17 + 1) = v9;
  v15 = specialized SeymourDataSource.__allocating_init(seymourSampleContentProvider:seymourSubscriptionProvider:seymourAvailabilityProvider:externalSeymourSessionStatusProvider:)(v12, a2, a3, a4, v19, v10, v14, ObjectType, v17, v11, a5);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_2(a1);
  return v15;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_2(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

void key path getter for SeymourDataSource.isAvailable : SeymourDataSource(_BYTE *a4@<X8>)
{
  key path getter for SeymourDataSource.isAvailable : SeymourDataSource(a4);
}

{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v5);

  *a4 = v5;
}

void key path getter for SeymourDataSource.subscriptionStatus : SeymourDataSource(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v3);

  *a2 = v3;
}

uint64_t key path setter for SeymourDataSource.subscriptionStatus : SeymourDataSource(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t SeymourDataSource.subscriptionStatus.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v1);

  return v1;
}

uint64_t key path setter for SeymourDataSource.$subscriptionStatus : SeymourDataSource(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy9WorkoutUI25SeymourSubscriptionStatusO_GMd, &_s7Combine9PublishedV9PublisherVy9WorkoutUI25SeymourSubscriptionStatusO_GMR);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v13 - v9;
  v11 = *(v4 + 16);
  v11(&v13 - v9, a1, v3, v8);
  (v11)(v6, v10, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy9WorkoutUI25SeymourSubscriptionStatusOGMd, &_s7Combine9PublishedVy9WorkoutUI25SeymourSubscriptionStatusOGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v4 + 8))(v10, v3);
}

uint64_t key path setter for SeymourDataSource.isAvailable : SeymourDataSource(char *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t SeymourDataSource.isAvailable.getter(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v3);

  return v3;
}

uint64_t key path getter for SeymourDataSource.$isAvailable : SeymourDataSource(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t *a5, uint64_t *a6)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t key path setter for SeymourDataSource.$isAvailable : SeymourDataSource(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v16 - v12;
  v14 = *(v7 + 16);
  v14(&v16 - v12, a1, v6, v11);
  (v14)(v9, v13, v6);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v7 + 8))(v13, v6);
}

uint64_t SeymourDataSource.$isAvailable.getter(void *a1, uint64_t *a2, uint64_t *a3)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t SeymourDataSource.init(seymourSampleContentProvider:seymourSubscriptionProvider:seymourAvailabilityProvider:externalSeymourSessionStatusProvider:)(void *a1, void *a2, void *a3, void *a4, uint64_t a5)
{
  v22[0] = a5;
  v10 = a1[3];
  v9 = a1[4];
  v11 = a1[5];
  v12 = __swift_mutable_project_boxed_opaque_existential_2(a1, v10);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v15, v13);
  ObjectType = swift_getObjectType();
  v18 = swift_getObjectType();
  v19 = swift_getObjectType();
  v20 = specialized SeymourDataSource.init(seymourSampleContentProvider:seymourSubscriptionProvider:seymourAvailabilityProvider:externalSeymourSessionStatusProvider:)(v15, a2, a3, a4, v22[1], v10, v18, ObjectType, v19, v9, v11, v22[0]);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_2(a1);
  return v20;
}

Swift::Void __swiftcall SeymourDataSource.hideSampleContent()()
{
  v1 = *(v0 + OBJC_IVAR____TtC9WorkoutUI17SeymourDataSource_seymourSampleContentProvider + 24);
  v2 = *(v0 + OBJC_IVAR____TtC9WorkoutUI17SeymourDataSource_seymourSampleContentProvider + 40);
  __swift_project_boxed_opaque_existential_2((v0 + OBJC_IVAR____TtC9WorkoutUI17SeymourDataSource_seymourSampleContentProvider), v1);
  (*(v2 + 16))(v1, v2);
}

Swift::Void __swiftcall SeymourDataSource.showSampleContent()()
{
  v1 = *(v0 + OBJC_IVAR____TtC9WorkoutUI17SeymourDataSource_seymourSampleContentProvider + 24);
  v2 = *(v0 + OBJC_IVAR____TtC9WorkoutUI17SeymourDataSource_seymourSampleContentProvider + 40);
  __swift_project_boxed_opaque_existential_2((v0 + OBJC_IVAR____TtC9WorkoutUI17SeymourDataSource_seymourSampleContentProvider), v1);
  (*(v2 + 24))(v1, v2);
}

uint64_t SeymourDataSource.deinit()
{
  v1 = OBJC_IVAR____TtC9WorkoutUI17SeymourDataSource__isAvailable;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v4 = OBJC_IVAR____TtC9WorkoutUI17SeymourDataSource__subscriptionStatus;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy9WorkoutUI25SeymourSubscriptionStatusOGMd, &_s7Combine9PublishedVy9WorkoutUI25SeymourSubscriptionStatusOGMR);
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v3(v0 + OBJC_IVAR____TtC9WorkoutUI17SeymourDataSource__isSampleContentHidden, v2);
  v3(v0 + OBJC_IVAR____TtC9WorkoutUI17SeymourDataSource__isExternalSessionActive, v2);
  __swift_destroy_boxed_opaque_existential_2((v0 + OBJC_IVAR____TtC9WorkoutUI17SeymourDataSource_seymourSampleContentProvider));
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v0;
}

uint64_t SeymourDataSource.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC9WorkoutUI17SeymourDataSource__isAvailable;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v4 = OBJC_IVAR____TtC9WorkoutUI17SeymourDataSource__subscriptionStatus;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy9WorkoutUI25SeymourSubscriptionStatusOGMd, &_s7Combine9PublishedVy9WorkoutUI25SeymourSubscriptionStatusOGMR);
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v3(v0 + OBJC_IVAR____TtC9WorkoutUI17SeymourDataSource__isSampleContentHidden, v2);
  v3(v0 + OBJC_IVAR____TtC9WorkoutUI17SeymourDataSource__isExternalSessionActive, v2);
  __swift_destroy_boxed_opaque_existential_2((v0 + OBJC_IVAR____TtC9WorkoutUI17SeymourDataSource_seymourSampleContentProvider));
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance SeymourDataSource@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for SeymourDataSource(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a2 = result;
  return result;
}

uint64_t SeymourDataSource.subscriptionDidUpdate(with:)(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t SeymourDataSource.availabilityDidUpdate(with:)(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t SeymourDataSource.isHiddenDidUpdate(with:)(char a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t @objc SeymourDataSource.isHiddenDidUpdate(with:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t specialized SeymourDataSource.init(seymourSampleContentProvider:seymourSubscriptionProvider:seymourAvailabilityProvider:externalSeymourSessionStatusProvider:)(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v24[3] = a6;
  v24[4] = a10;
  v24[5] = a11;
  __swift_allocate_boxed_opaque_existential_2(v24);
  (*(*(a6 - 8) + 32))();
  outlined init with copy of SeymourSampleContentObservable & SeymourSampleContentProviding(v24, a5 + OBJC_IVAR____TtC9WorkoutUI17SeymourDataSource_seymourSampleContentProvider);
  *(a5 + OBJC_IVAR____TtC9WorkoutUI17SeymourDataSource_seymourSubscriptionProvider) = a2;
  *(a5 + OBJC_IVAR____TtC9WorkoutUI17SeymourDataSource_seymourAvailabilityProvider) = a3;
  v17 = (a5 + OBJC_IVAR____TtC9WorkoutUI17SeymourDataSource_externalSeymourSessionStatusProvider);
  *v17 = a4;
  v17[1] = a12;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  [a3 availability];
  swift_beginAccess();
  Published.init(initialValue:)();
  swift_endAccess();
  [a2 subscriptionStatus];
  swift_beginAccess();
  Published.init(initialValue:)();
  swift_endAccess();
  (*(a11 + 8))(a6, a11);
  swift_beginAccess();
  Published.init(initialValue:)();
  swift_endAccess();
  ObjectType = swift_getObjectType();
  [a4 externalSessionActive];
  swift_beginAccess();
  Published.init(initialValue:)();
  swift_endAccess();
  v18 = *(a10 + 8);

  v18(v19, a6, a10);

  [a2 addObserver_];

  swift_unknownObjectRelease();

  [a3 addObserver_];

  swift_unknownObjectRelease();
  v20 = *(a12 + 16);

  v20(v21, ObjectType, a12);

  __swift_destroy_boxed_opaque_existential_2(v24);
  return a5;
}

uint64_t specialized SeymourDataSource.__allocating_init(seymourSampleContentProvider:seymourSubscriptionProvider:seymourAvailabilityProvider:externalSeymourSessionStatusProvider:)(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, uint64_t a11)
{
  v22 = a7;
  v23 = a8;
  v21 = a9;
  v16 = *(a6 - 8);
  MEMORY[0x28223BE20](a1);
  v18 = &v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SeymourDataSource(0);
  v19 = swift_allocObject();
  (*(v16 + 16))(v18, a1, a6);
  return specialized SeymourDataSource.init(seymourSampleContentProvider:seymourSubscriptionProvider:seymourAvailabilityProvider:externalSeymourSessionStatusProvider:)(v18, a2, a3, a4, v19, a6, v22, v23, v21, *(&v21 + 1), a10, a11);
}

double __swift_destroy_boxed_opaque_existential_2(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    (*(v1 + 8))();
  }

  return result;
}

uint64_t type metadata accessor for SeymourDataSource(uint64_t a1)
{
  result = type metadata singleton initialization cache for SeymourDataSource;
  if (!type metadata singleton initialization cache for SeymourDataSource)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for SeymourDataSource(uint64_t a1)
{
  _s7Combine9PublishedVySbGMaTm_0(319, &lazy cache variable for type metadata for Published<Bool>, MEMORY[0x277D839B0]);
  if (v1 <= 0x3F)
  {
    _s7Combine9PublishedVySbGMaTm_0(319, &lazy cache variable for type metadata for Published<SeymourSubscriptionStatus>, &type metadata for SeymourSubscriptionStatus);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void _s7Combine9PublishedVySbGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t *__swift_allocate_boxed_opaque_existential_2(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

void specialized SetAlgebra<>.init(arrayLiteral:)(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
}

uint64_t specialized Sequence.first(where:)@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  ViewModel = type metadata accessor for TrainingLoadViewModel(0);
  v8 = *(ViewModel - 8);
  MEMORY[0x28223BE20](ViewModel);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a2 + 16);
  if (v11)
  {
    v18 = a3;
    v12 = a2 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v13 = *(v8 + 72);
    while (1)
    {
      outlined init with copy of TrainingLoadViewModel(v12, v10);
      v14 = a1(v10);
      if (v3)
      {
        return outlined destroy of TrainingLoadViewModel(v10);
      }

      if (v14)
      {
        break;
      }

      outlined destroy of TrainingLoadViewModel(v10);
      v12 += v13;
      if (!--v11)
      {
        v15 = 1;
        a3 = v18;
        return (*(v8 + 56))(a3, v15, 1, ViewModel);
      }
    }

    a3 = v18;
    outlined init with take of TrainingLoadViewModel(v10, v18);
    v15 = 0;
  }

  else
  {
    v15 = 1;
  }

  return (*(v8 + 56))(a3, v15, 1, ViewModel);
}

uint64_t specialized Sequence.first(where:)(uint64_t (*a1)(char *, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 8;
  }

  v6 = (a3 + 32);
  while (1)
  {
    v8 = *v6++;
    v7 = v8;
    v11 = v8;
    v9 = a1(&v11, a2);
    if (v3 || (v9 & 1) != 0)
    {
      break;
    }

    if (!--v4)
    {
      return 8;
    }
  }

  return v7;
}

uint64_t specialized Sequence.first(where:)(uint64_t (*a1)(uint64_t *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
LABEL_16:
    v5 = __CocoaSet.count.getter();
    if (v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v5 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
LABEL_3:
      v6 = 0;
      do
      {
        if ((a3 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x20F30C990](v6, a3);
          v8 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
LABEL_13:
            __break(1u);
LABEL_14:

            return v7;
          }
        }

        else
        {
          if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_16;
          }

          v7 = *(a3 + 8 * v6 + 32);

          v8 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            goto LABEL_13;
          }
        }

        v12 = v7;
        v9 = a1(&v12);
        if (v3)
        {
          goto LABEL_14;
        }

        if (v9)
        {
          return v7;
        }

        ++v6;
      }

      while (v8 != v5);
    }
  }

  return 0;
}

uint64_t specialized Sequence.first(where:)@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v4 = v3;
  v61 = a1;
  v62 = a2;
  v57 = a3;
  v5 = type metadata accessor for DayIndex();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v72 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v60 = &v57 - v9;
  MEMORY[0x28223BE20](v10);
  v58 = &v57 - v11;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSNsSxRzSZ6StrideRpzrlE5IndexOy9HealthKit03DayB0V_G_AHtMd, &_sSNsSxRzSZ6StrideRpzrlE5IndexOy9HealthKit03DayB0V_G_AHtMR);
  MEMORY[0x28223BE20](v68);
  v66 = &v57 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSNsSxRzSZ6StrideRpzrlE5IndexOy9HealthKit03DayB0V_GMd, &_sSNsSxRzSZ6StrideRpzrlE5IndexOy9HealthKit03DayB0V_GMR);
  MEMORY[0x28223BE20](v13 - 8);
  v63 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v64 = &v57 - v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v57 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v57 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9HealthKit8DayIndexVSgMd, &_s9HealthKit8DayIndexVSgMR);
  MEMORY[0x28223BE20](v23 - 8);
  v74 = &v57 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySNy9HealthKit8DayIndexVGGMd, &_ss16IndexingIteratorVySNy9HealthKit8DayIndexVGGMR);
  v26 = v25 - 8;
  MEMORY[0x28223BE20](v25);
  v28 = &v57 - v27;
  outlined init with copy of (lower: DayIndex, upper: DayIndex)(v4, &v57 - v27, &_sSNy9HealthKit8DayIndexVGMd, &_sSNy9HealthKit8DayIndexVGMR);
  v29 = *(v26 + 44);
  (*(v6 + 16))(&v28[v29], v4, v5);
  v31 = *(v6 + 56);
  v6 += 56;
  v30 = v31;
  v31(&v28[v29], 0, 1, v5);
  v69 = v22;
  v70 = (v6 - 8);
  v76 = (v6 - 24);
  v77 = (v6 - 48);
  v67 = v19;
  v71 = v6;
  v65 = v31;
  v73 = v29;
  while (1)
  {
    v30(v22, 1, 1, v5);
    v32 = *(v68 + 48);
    v33 = v28;
    v34 = v66;
    outlined init with copy of (lower: DayIndex, upper: DayIndex)(&v28[v29], v66, &_sSNsSxRzSZ6StrideRpzrlE5IndexOy9HealthKit03DayB0V_GMd, &_sSNsSxRzSZ6StrideRpzrlE5IndexOy9HealthKit03DayB0V_GMR);
    outlined init with copy of (lower: DayIndex, upper: DayIndex)(v22, v34 + v32, &_sSNsSxRzSZ6StrideRpzrlE5IndexOy9HealthKit03DayB0V_GMd, &_sSNsSxRzSZ6StrideRpzrlE5IndexOy9HealthKit03DayB0V_GMR);
    v35 = *v70;
    if ((*v70)(v34, 1, v5) == 1)
    {
      _s9WorkoutUI21TrainingLoadViewModelVSgWOhTm_0(v22, &_sSNsSxRzSZ6StrideRpzrlE5IndexOy9HealthKit03DayB0V_GMd, &_sSNsSxRzSZ6StrideRpzrlE5IndexOy9HealthKit03DayB0V_GMR);
      v36 = v28;
      if (v35(v34 + v32, 1, v5) == 1)
      {
        _s9WorkoutUI21TrainingLoadViewModelVSgWOhTm_0(v34, &_sSNsSxRzSZ6StrideRpzrlE5IndexOy9HealthKit03DayB0V_GMd, &_sSNsSxRzSZ6StrideRpzrlE5IndexOy9HealthKit03DayB0V_GMR);
LABEL_19:
        _s9WorkoutUI21TrainingLoadViewModelVSgWOhTm_0(v36, &_ss16IndexingIteratorVySNy9HealthKit8DayIndexVGGMd, &_ss16IndexingIteratorVySNy9HealthKit8DayIndexVGGMR);
        v56 = 1;
        v30 = v65;
        v65(v74, 1, 1, v5);
        v55 = v57;
        return (v30)(v55, v56, 1, v5);
      }

      goto LABEL_7;
    }

    v37 = v67;
    outlined init with copy of (lower: DayIndex, upper: DayIndex)(v34, v67, &_sSNsSxRzSZ6StrideRpzrlE5IndexOy9HealthKit03DayB0V_GMd, &_sSNsSxRzSZ6StrideRpzrlE5IndexOy9HealthKit03DayB0V_GMR);
    if (v35(v34 + v32, 1, v5) == 1)
    {
      _s9WorkoutUI21TrainingLoadViewModelVSgWOhTm_0(v69, &_sSNsSxRzSZ6StrideRpzrlE5IndexOy9HealthKit03DayB0V_GMd, &_sSNsSxRzSZ6StrideRpzrlE5IndexOy9HealthKit03DayB0V_GMR);
      (*v77)(v37, v5);
      v36 = v28;
LABEL_7:
      _s9WorkoutUI21TrainingLoadViewModelVSgWOhTm_0(v34, &_sSNsSxRzSZ6StrideRpzrlE5IndexOy9HealthKit03DayB0V_G_AHtMd, &_sSNsSxRzSZ6StrideRpzrlE5IndexOy9HealthKit03DayB0V_G_AHtMR);
      goto LABEL_9;
    }

    v38 = v58;
    (*v76)(v58, v34 + v32, v5);
    lazy protocol witness table accessor for type DayIndex and conformance DayIndex(&lazy protocol witness table cache variable for type DayIndex and conformance DayIndex, MEMORY[0x277CCB6A8], MEMORY[0x277CCB6C0]);
    v59 = dispatch thunk of static Equatable.== infix(_:_:)();
    v39 = *v77;
    (*v77)(v38, v5);
    _s9WorkoutUI21TrainingLoadViewModelVSgWOhTm_0(v69, &_sSNsSxRzSZ6StrideRpzrlE5IndexOy9HealthKit03DayB0V_GMd, &_sSNsSxRzSZ6StrideRpzrlE5IndexOy9HealthKit03DayB0V_GMR);
    v39(v67, v5);
    _s9WorkoutUI21TrainingLoadViewModelVSgWOhTm_0(v34, &_sSNsSxRzSZ6StrideRpzrlE5IndexOy9HealthKit03DayB0V_GMd, &_sSNsSxRzSZ6StrideRpzrlE5IndexOy9HealthKit03DayB0V_GMR);
    v36 = v33;
    if (v59)
    {
      goto LABEL_19;
    }

LABEL_9:
    v40 = v73;
    v41 = v64;
    outlined init with copy of (lower: DayIndex, upper: DayIndex)(v36 + v73, v64, &_sSNsSxRzSZ6StrideRpzrlE5IndexOy9HealthKit03DayB0V_GMd, &_sSNsSxRzSZ6StrideRpzrlE5IndexOy9HealthKit03DayB0V_GMR);
    result = (v35)(v41, 1, v5);
    if (result == 1)
    {
      goto LABEL_23;
    }

    v43 = *v76;
    (*v76)(v74, v41, v5);
    v44 = v63;
    outlined init with take of (lower: DayIndex, upper: DayIndex)(v36 + v40, v63, &_sSNsSxRzSZ6StrideRpzrlE5IndexOy9HealthKit03DayB0V_GMd, &_sSNsSxRzSZ6StrideRpzrlE5IndexOy9HealthKit03DayB0V_GMR);
    result = (v35)(v44, 1, v5);
    if (result == 1)
    {
      break;
    }

    v45 = v60;
    v43(v60, v44, v5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSNy9HealthKit8DayIndexVGMd, &_sSNy9HealthKit8DayIndexVGMR);
    lazy protocol witness table accessor for type DayIndex and conformance DayIndex(&lazy protocol witness table cache variable for type DayIndex and conformance DayIndex, MEMORY[0x277CCB6A8], MEMORY[0x277CCB6C0]);
    v46 = dispatch thunk of static Equatable.== infix(_:_:)();
    v30 = v65;
    v28 = v36;
    if (v46)
    {
      v47 = v45;
      v48 = *v77;
      (*v77)(v47, v5);
      v49 = 1;
      v29 = v73;
    }

    else
    {
      v78 = 1;
      lazy protocol witness table accessor for type DayIndex and conformance DayIndex(&lazy protocol witness table cache variable for type DayIndex and conformance DayIndex, MEMORY[0x277CCB6A8], MEMORY[0x277CCB6C8]);
      v29 = v73;
      dispatch thunk of Strideable.advanced(by:)();
      v50 = v45;
      v48 = *v77;
      (*v77)(v50, v5);
      v49 = 0;
    }

    v30((v36 + v29), v49, 1, v5);
    v51 = v74;
    v30(v74, 0, 1, v5);
    v52 = v72;
    v43(v72, v51, v5);
    v53 = v75;
    v54 = v61(v52);
    v75 = v53;
    if (v53)
    {
      v48(v72, v5);
      return _s9WorkoutUI21TrainingLoadViewModelVSgWOhTm_0(v36, &_ss16IndexingIteratorVySNy9HealthKit8DayIndexVGGMd, &_ss16IndexingIteratorVySNy9HealthKit8DayIndexVGGMR);
    }

    if (v54)
    {
      _s9WorkoutUI21TrainingLoadViewModelVSgWOhTm_0(v36, &_ss16IndexingIteratorVySNy9HealthKit8DayIndexVGGMd, &_ss16IndexingIteratorVySNy9HealthKit8DayIndexVGGMR);
      v55 = v57;
      v43(v57, v72, v5);
      v56 = 0;
      return (v30)(v55, v56, 1, v5);
    }

    v48(v72, v5);
    v22 = v69;
  }

  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t static TrainingLoadViewModelProvider.createDayRange(now:days:gregorianCalendar:)@<X0>(uint64_t a1@<X0>, void (*a2)(char *, uint64_t, uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v48 = a2;
  v49 = a3;
  v46 = a4;
  v47 = a1;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9HealthKit8DayIndexV5lower_AC5uppertMd, &_s9HealthKit8DayIndexV5lower_AC5uppertMR);
  MEMORY[0x28223BE20](v44);
  v39 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v41 = &v36 - v6;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSNy9HealthKit8DayIndexVGMd, &_sSNy9HealthKit8DayIndexVGMR);
  MEMORY[0x28223BE20](v45);
  v42 = &v36 - v7;
  v8 = type metadata accessor for Calendar();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DayIndex();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v20);
  v23 = &v36 - v22;
  (*(v13 + 16))(v15, v47, v12, v21);
  v24 = *(v9 + 16);
  v47 = v8;
  v43 = v9 + 16;
  v24(v11, v49, v8);
  v40 = v11;
  DayIndex.init(date:calendar:)();
  static DayIndex.- infix(_:_:)();
  lazy protocol witness table accessor for type DayIndex and conformance DayIndex(&lazy protocol witness table cache variable for type DayIndex and conformance DayIndex, MEMORY[0x277CCB6A8], MEMORY[0x277CCB6B8]);
  v25 = v23;
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if (result)
  {
    v48 = v24;
    v27 = v17[2];
    v28 = v41;
    v38 = v19;
    v27(v41, v19, v16);
    v29 = v39;
    v30 = v44;
    v31 = v28 + *(v44 + 48);
    v37 = v25;
    v27(v31, v25, v16);
    outlined init with copy of (lower: DayIndex, upper: DayIndex)(v28, v29, &_s9HealthKit8DayIndexV5lower_AC5uppertMd, &_s9HealthKit8DayIndexV5lower_AC5uppertMR);
    v32 = *(v30 + 48);
    v33 = v17[4];
    v34 = v42;
    v33(v42, v29, v16);
    v35 = v17[1];
    v35(v29 + v32, v16);
    outlined init with take of (lower: DayIndex, upper: DayIndex)(v28, v29, &_s9HealthKit8DayIndexV5lower_AC5uppertMd, &_s9HealthKit8DayIndexV5lower_AC5uppertMR);
    v33(&v34[*(v45 + 36)], v29 + *(v30 + 48), v16);
    v35(v29, v16);
    v48(v40, v49, v47);
    GregorianDayRange.init(dayIndexRange:gregorianCalendar:)();
    v35(v38, v16);
    return (v35)(v37, v16);
  }

  else
  {
    __break(1u);
  }

  return result;
}

BOOL protocol witness for SetAlgebra.insert(_:) in conformance TrainingLoadViewModelProviderOptions(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *protocol witness for SetAlgebra.remove(_:) in conformance TrainingLoadViewModelProviderOptions@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *protocol witness for SetAlgebra.update(with:) in conformance TrainingLoadViewModelProviderOptions@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void *protocol witness for RawRepresentable.init(rawValue:) in conformance TrainingLoadViewModelProviderOptions@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance TrainingLoadViewModelProvider.TaskType()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F30CD90](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance TrainingLoadViewModelProvider.TaskType(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  MEMORY[0x20F30CD90](v2);
  return Hasher._finalize()();
}

double closure #1 in TrainingLoadViewModelProvider.TaskHolder.workoutsTaskFinished.setter(uint64_t a1, char a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    *(Strong + 24) = a2 & 1;
  }

  return result;
}

double TrainingLoadViewModelProvider.TaskHolder.workoutsTaskFinished.setter(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v20 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DispatchQoS();
  v11 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v4 + 16);
  v14 = swift_allocObject();
  swift_weakInit();
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  *(v15 + 24) = a1;
  aBlock[4] = a3;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = a4;
  v16 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v21 = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type DayIndex and conformance DayIndex(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  _sSay8Dispatch0A13WorkItemFlagsVGSayxGSTsWlTm_2(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x20F30C1F0](0, v13, v10, v16);
  _Block_release(v16);
  (*(v20 + 8))(v10, v8);
  (*(v11 + 8))(v13, v19);

  return result;
}

double closure #1 in TrainingLoadViewModelProvider.TaskHolder.workoutsByActivityTaskFinished.setter(uint64_t a1, char a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    *(Strong + 25) = a2 & 1;
  }

  return result;
}

double closure #1 in TrainingLoadViewModelProvider.TaskHolder.allDayTaskFinished.setter(uint64_t a1, char a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    *(Strong + 26) = a2 & 1;
  }

  return result;
}

void TrainingLoadViewModelProvider.TaskHolder.cancelAll()()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static WOLog.trainingLoad.getter();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    aBlock[0] = v9;
    *v8 = 136446210;
    v10 = _typeName(_:qualified:)();
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, aBlock);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_20C66F000, v6, v7, "[%{public}s] Canceling All Tasks", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x20F30E080](v9, -1, -1);
    MEMORY[0x20F30E080](v8, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  v13 = *(v1 + 16);
  v14 = swift_allocObject();
  *(v14 + 16) = partial apply for closure #1 in TrainingLoadViewModelProvider.TaskHolder.cancelAll();
  *(v14 + 24) = v1;
  aBlock[4] = thunk for @callee_guaranteed () -> ()partial apply;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_172_0;
  v15 = _Block_copy(aBlock);

  dispatch_sync(v13, v15);
  _Block_release(v15);
  LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

  if (v13)
  {
    __break(1u);
  }
}

double closure #1 in TrainingLoadViewModelProvider.TaskHolder.cancelAll()(void *a1)
{
  v2 = MEMORY[0x277D84F78];
  if (a1[4])
  {

    MEMORY[0x20F30BE00](v3, v2 + 8, MEMORY[0x277D84A98], MEMORY[0x277D84AC0]);
  }

  if (a1[5])
  {

    MEMORY[0x20F30BE00](v5, v2 + 8, MEMORY[0x277D84A98], MEMORY[0x277D84AC0]);
  }

  if (a1[6])
  {

    MEMORY[0x20F30BE00](v6, v2 + 8, MEMORY[0x277D84A98], MEMORY[0x277D84AC0]);
  }

  if (a1[8])
  {

    MEMORY[0x20F30BE00](v7, v2 + 8, MEMORY[0x277D84A98], MEMORY[0x277D84AC0]);
  }

  return result;
}

double closure #1 in TrainingLoadViewModelProvider.TaskHolder.add(task:_:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t (*)(), uint64_t, __n128), uint64_t a4)
{
  v24[1] = a4;
  v25 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v24 - v7;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = v24 - v14;
  UUID.init()();
  v24[0] = *(v10 + 16);
  (v24[0])(v8, v15, v9);
  (*(v10 + 56))(v8, 0, 1, v9);
  swift_beginAccess();
  specialized Dictionary.subscript.setter(v8, a2);
  swift_endAccess();
  if (a2)
  {
    if (a2 == 1)
    {
      if (*(a1 + 48))
      {

        MEMORY[0x20F30BE00](v16, MEMORY[0x277D84F78] + 8, MEMORY[0x277D84A98], MEMORY[0x277D84AC0]);
      }

      *(a1 + 26) = 0;
    }

    else
    {
      if (*(a1 + 40))
      {

        MEMORY[0x20F30BE00](v18, MEMORY[0x277D84F78] + 8, MEMORY[0x277D84A98], MEMORY[0x277D84AC0]);
      }

      *(a1 + 25) = 0;
    }
  }

  else
  {
    if (*(a1 + 32))
    {

      MEMORY[0x20F30BE00](v17, MEMORY[0x277D84F78] + 8, MEMORY[0x277D84A98], MEMORY[0x277D84AC0]);
    }

    *(a1 + 24) = 0;
  }

  v19 = swift_allocObject();
  swift_weakInit();
  (v24[0])(v12, v15, v9);
  v20 = (*(v10 + 80) + 25) & ~*(v10 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = v19;
  *(v21 + 24) = a2;
  (*(v10 + 32))(v21 + v20, v12, v9);

  v22 = (v25)(partial apply for closure #1 in closure #1 in TrainingLoadViewModelProvider.TaskHolder.add(task:_:), v21);

  (*(v10 + 8))(v15, v9);

  *(a1 + qword_20CB82D98[a2]) = v22;

  return result;
}

double closure #1 in closure #1 in TrainingLoadViewModelProvider.TaskHolder.add(task:_:)(uint64_t a1, int a2, uint64_t a3)
{
  v24 = a3;
  v25 = a2;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v26 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v16 = *(Strong + 16);
    v23 = v7;
    v22 = v16;

    v17 = swift_allocObject();
    swift_beginAccess();
    swift_weakLoadStrong();
    swift_weakInit();

    (*(v11 + 16))(&v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v24, v10);
    v18 = (*(v11 + 80) + 25) & ~*(v11 + 80);
    v19 = swift_allocObject();
    *(v19 + 16) = v17;
    *(v19 + 24) = v25;
    (*(v11 + 32))(v19 + v18, v13, v10);
    aBlock[4] = partial apply for closure #1 in closure #1 in closure #1 in TrainingLoadViewModelProvider.TaskHolder.add(task:_:);
    aBlock[5] = v19;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_102;
    v20 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    v27 = MEMORY[0x277D84F90];
    lazy protocol witness table accessor for type DayIndex and conformance DayIndex(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    _sSay8Dispatch0A13WorkItemFlagsVGSayxGSTsWlTm_2(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v21 = v22;
    MEMORY[0x20F30C1F0](0, v9, v6, v20);
    _Block_release(v20);

    (*(v4 + 8))(v6, v3);
    (*(v26 + 8))(v9, v23);
  }

  return result;
}

double closure #1 in closure #1 in closure #1 in TrainingLoadViewModelProvider.TaskHolder.add(task:_:)(uint64_t a1, int a2, uint64_t a3)
{
  v47 = a3;
  v48 = a2;
  v3 = type metadata accessor for Logger();
  v46 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v45 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v44 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
  MEMORY[0x28223BE20](v8);
  v10 = &v43 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v43 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v43 - v18;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return result;
  }

  v22 = Strong;
  swift_beginAccess();
  v23 = *(v22 + 56);
  v24 = *(v23 + 16);
  v43 = v3;
  if (v24 && (v25 = specialized __RawDictionaryStorage.find<A>(_:)(), (v26 & 1) != 0))
  {
    (*(v6 + 16))(v19, *(v23 + 56) + *(v6 + 72) * v25, v5);
    v27 = 0;
  }

  else
  {
    v27 = 1;
  }

  v28 = *(v6 + 56);
  v28(v19, v27, 1, v5);
  swift_endAccess();
  (*(v6 + 16))(v16, v47, v5);
  v28(v16, 0, 1, v5);
  v29 = *(v8 + 48);
  outlined init with copy of (lower: DayIndex, upper: DayIndex)(v16, v10, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  outlined init with copy of (lower: DayIndex, upper: DayIndex)(v19, &v10[v29], &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v30 = *(v6 + 48);
  if (v30(v10, 1, v5) == 1)
  {
    _s9WorkoutUI21TrainingLoadViewModelVSgWOhTm_0(v16, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    if (v30(&v10[v29], 1, v5) == 1)
    {
      _s9WorkoutUI21TrainingLoadViewModelVSgWOhTm_0(v10, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
LABEL_16:
      _s9WorkoutUI21TrainingLoadViewModelVSgWOhTm_0(v19, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      if (v48)
      {
        if (v48 == 1)
        {
          *(v22 + 26) = 1;
        }

        else
        {
          *(v22 + 25) = 1;
        }
      }

      else
      {
        *(v22 + 24) = 1;
      }

      return result;
    }

    goto LABEL_11;
  }

  outlined init with copy of (lower: DayIndex, upper: DayIndex)(v10, v13, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  if (v30(&v10[v29], 1, v5) == 1)
  {
    _s9WorkoutUI21TrainingLoadViewModelVSgWOhTm_0(v16, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    (*(v6 + 8))(v13, v5);
LABEL_11:
    _s9WorkoutUI21TrainingLoadViewModelVSgWOhTm_0(v10, &_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
    goto LABEL_12;
  }

  v39 = &v10[v29];
  v40 = v44;
  (*(v6 + 32))(v44, v39, v5);
  lazy protocol witness table accessor for type DayIndex and conformance DayIndex(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
  v41 = dispatch thunk of static Equatable.== infix(_:_:)();
  v42 = *(v6 + 8);
  v42(v40, v5);
  _s9WorkoutUI21TrainingLoadViewModelVSgWOhTm_0(v16, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v42(v13, v5);
  _s9WorkoutUI21TrainingLoadViewModelVSgWOhTm_0(v10, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  if (v41)
  {
    goto LABEL_16;
  }

LABEL_12:
  v31 = v45;
  static WOLog.trainingLoad.getter();
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v50[0] = v35;
    *v34 = 136315138;
    v49 = v48;
    v36 = String.init<A>(reflecting:)();
    v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v37, v50);

    *(v34 + 4) = v38;
    _os_log_impl(&dword_20C66F000, v32, v33, "Stale task %s requested finish, but a newer task is running. Ignoring.", v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v35);
    MEMORY[0x20F30E080](v35, -1, -1);
    MEMORY[0x20F30E080](v34, -1, -1);
  }

  (*(v46 + 8))(v31, v43);
  _s9WorkoutUI21TrainingLoadViewModelVSgWOhTm_0(v19, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  return result;
}

uint64_t TrainingLoadViewModelProvider.TaskHolder.deinit()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static WOLog.trainingLoad.getter();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_20C66F000, v6, v7, "Canceling our model queries in deinit of the TaskHolder.", v8, 2u);
    MEMORY[0x20F30E080](v8, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  TrainingLoadViewModelProvider.TaskHolder.cancelAll()();

  return v1;
}

uint64_t TrainingLoadViewModelProvider.TaskHolder.__deallocating_deinit()
{
  TrainingLoadViewModelProvider.TaskHolder.deinit();

  return swift_deallocClassInstance();
}

uint64_t TrainingLoadViewModelProvider.TaskHolder.init()()
{
  v9 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v3 = v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OS_dispatch_queue.Attributes();
  MEMORY[0x28223BE20](v4);
  v5 = type metadata accessor for DispatchQoS();
  MEMORY[0x28223BE20](v5 - 8);
  v8[1] = type metadata accessor for NSNumber(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  static DispatchQoS.unspecified.getter();
  v10 = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type DayIndex and conformance DayIndex(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  _sSay8Dispatch0A13WorkItemFlagsVGSayxGSTsWlTm_2(&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v1 + 104))(v3, *MEMORY[0x277D85260], v9);
  *(v0 + 16) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v0 + 24) = 0;
  *(v0 + 26) = 0;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  v6 = MEMORY[0x277D84F98];
  *(v0 + 48) = 0;
  *(v0 + 56) = v6;
  *(v0 + 64) = 0;
  return v0;
}

uint64_t TrainingLoadViewModelProvider.isFaking.getter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type DayIndex and conformance DayIndex(&lazy protocol witness table cache variable for type TrainingLoadViewModelProvider and conformance TrainingLoadViewModelProvider, type metadata accessor for TrainingLoadViewModelProvider, &protocol conformance descriptor for TrainingLoadViewModelProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 24);
}

void key path getter for TrainingLoadViewModelProvider.isFaking : TrainingLoadViewModelProvider(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type DayIndex and conformance DayIndex(&lazy protocol witness table cache variable for type TrainingLoadViewModelProvider and conformance TrainingLoadViewModelProvider, type metadata accessor for TrainingLoadViewModelProvider, &protocol conformance descriptor for TrainingLoadViewModelProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 24);
}

void TrainingLoadViewModelProvider.isFaking.setter(char a1)
{
  if (*(v1 + 24) == (a1 & 1))
  {
    *(v1 + 24) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    lazy protocol witness table accessor for type DayIndex and conformance DayIndex(&lazy protocol witness table cache variable for type TrainingLoadViewModelProvider and conformance TrainingLoadViewModelProvider, type metadata accessor for TrainingLoadViewModelProvider, &protocol conformance descriptor for TrainingLoadViewModelProvider);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

void TrainingLoadViewModelProvider._dayRange.didset(uint64_t a1)
{
  v2 = v1;
  v45 = *v1;
  v4 = type metadata accessor for GregorianDayRange();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v41[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v10 = &v41[-v9];
  v11 = type metadata accessor for Logger();
  v51 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v41[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  static WOLog.trainingLoad.getter();
  v14 = *(v5 + 16);
  v48 = v10;
  v14(v10, a1, v4);

  v50 = v13;
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();

  v49 = v15;
  v17 = os_log_type_enabled(v15, v16);
  v46 = v14;
  v47 = v5 + 16;
  if (v17)
  {
    v18 = swift_slowAlloc();
    v44 = a1;
    v19 = v18;
    v43 = swift_slowAlloc();
    v54[0] = v43;
    *v19 = 136446722;
    v20 = _typeName(_:qualified:)();
    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, v54);
    v45 = v11;
    v23 = v22;

    *(v19 + 4) = v23;
    *(v19 + 12) = 2080;
    swift_getKeyPath();
    v53 = v2;
    lazy protocol witness table accessor for type DayIndex and conformance DayIndex(&lazy protocol witness table cache variable for type TrainingLoadViewModelProvider and conformance TrainingLoadViewModelProvider, type metadata accessor for TrainingLoadViewModelProvider, &protocol conformance descriptor for TrainingLoadViewModelProvider);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v24 = OBJC_IVAR____TtC9WorkoutUI29TrainingLoadViewModelProvider__dayRange;
    swift_beginAccess();
    v14(v7, v2 + v24, v4);
    lazy protocol witness table accessor for type DayIndex and conformance DayIndex(&lazy protocol witness table cache variable for type GregorianDayRange and conformance GregorianDayRange, MEMORY[0x277D0FEB8], MEMORY[0x277D0FED0]);
    v25 = dispatch thunk of CustomStringConvertible.description.getter();
    v26 = v7;
    v28 = v27;
    v42 = v16;
    v29 = *(v5 + 8);
    v29(v26, v4);
    v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v28, v54);

    *(v19 + 14) = v30;
    *(v19 + 22) = 2080;
    v31 = v48;
    v32 = dispatch thunk of CustomStringConvertible.description.getter();
    v34 = v33;
    v29(v31, v4);
    v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v34, v54);

    *(v19 + 24) = v35;
    v36 = v49;
    _os_log_impl(&dword_20C66F000, v49, v42, "[%{public}s] Updating Day Range to %s oldValue %s", v19, 0x20u);
    v37 = v43;
    swift_arrayDestroy();
    MEMORY[0x20F30E080](v37, -1, -1);
    MEMORY[0x20F30E080](v19, -1, -1);

    (*(v51 + 8))(v50, v45);
  }

  else
  {

    v29 = *(v5 + 8);
    v29(v48, v4);
    (*(v51 + 8))(v50, v11);
    v26 = v7;
  }

  swift_getKeyPath();
  v54[0] = v2;
  lazy protocol witness table accessor for type DayIndex and conformance DayIndex(&lazy protocol witness table cache variable for type TrainingLoadViewModelProvider and conformance TrainingLoadViewModelProvider, type metadata accessor for TrainingLoadViewModelProvider, &protocol conformance descriptor for TrainingLoadViewModelProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v38 = OBJC_IVAR____TtC9WorkoutUI29TrainingLoadViewModelProvider__dayRange;
  swift_beginAccess();
  v46(v26, v2 + v38, v4);
  lazy protocol witness table accessor for type DayIndex and conformance DayIndex(&lazy protocol witness table cache variable for type GregorianDayRange and conformance GregorianDayRange, MEMORY[0x277D0FEB8], MEMORY[0x277D0FEC8]);
  LOBYTE(v38) = dispatch thunk of static Equatable.== infix(_:_:)();
  v29(v26, v4);
  if ((v38 & 1) == 0)
  {
    v39 = OBJC_IVAR____TtC9WorkoutUI29TrainingLoadViewModelProvider__isFetchingDataForNewDateRange;
    swift_beginAccess();
    if (*(v2 + v39) == 1)
    {
      *(v2 + v39) = 1;
      TrainingLoadViewModelProvider._isFetchingDataForNewDateRange.didset(&unk_20CB82910, &OBJC_IVAR____TtC9WorkoutUI29TrainingLoadViewModelProvider__isFetchingDataForNewDateRange, "[%{public}s] isFetchingDataForNewDateRange: %{BOOL}d");
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      *&v41[-16] = v2;
      v41[-8] = 1;
      v52 = v2;
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }

    TrainingLoadViewModelProvider.startQuery(isFaking:)(0);
  }
}

void (*TrainingLoadViewModelProvider._dayRange.modify(uint64_t *a1))(char **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x90uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = type metadata accessor for GregorianDayRange();
  v5[10] = v6;
  v7 = *(v6 - 8);
  v8 = v7;
  v5[11] = v7;
  v9 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v9);
    v10 = malloc(v9);
  }

  v11 = v10;
  v12 = OBJC_IVAR____TtC9WorkoutUI29TrainingLoadViewModelProvider__dayRange;
  v5[14] = v10;
  v5[15] = v12;
  swift_beginAccess();
  v13 = *(v8 + 16);
  v5[16] = v13;
  v5[17] = (v8 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v13(v11, v1 + v12, v6);
  return TrainingLoadViewModelProvider._dayRange.modify;
}

void TrainingLoadViewModelProvider._dayRange.modify(char **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 16);
  v4 = *(*a1 + 14);
  v5 = *(*a1 + 15);
  v6 = *(*a1 + 12);
  v7 = *(*a1 + 13);
  v8 = *(*a1 + 10);
  v9 = *(*a1 + 11);
  v10 = *(*a1 + 9);
  if (a2)
  {
    v3(*(*a1 + 13), v4, v8);
    v3(v6, (v10 + v5), v8);
    swift_beginAccess();
    (*(v9 + 24))(v10 + v5, v7, v8);
    swift_endAccess();
    TrainingLoadViewModelProvider._dayRange.didset(v6);
    v11 = *(v9 + 8);
    v11(v6, v8);
  }

  else
  {
    v3(*(*a1 + 13), (v10 + v5), v8);
    swift_beginAccess();
    (*(v9 + 24))(v10 + v5, v4, v8);
    swift_endAccess();
    TrainingLoadViewModelProvider._dayRange.didset(v7);
    v11 = *(v9 + 8);
  }

  v11(v7, v8);
  v11(v4, v8);
  free(v4);
  free(v7);
  free(v6);

  free(v2);
}

uint64_t key path getter for TrainingLoadViewModelProvider.dayRange : TrainingLoadViewModelProvider@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type DayIndex and conformance DayIndex(&lazy protocol witness table cache variable for type TrainingLoadViewModelProvider and conformance TrainingLoadViewModelProvider, type metadata accessor for TrainingLoadViewModelProvider, &protocol conformance descriptor for TrainingLoadViewModelProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC9WorkoutUI29TrainingLoadViewModelProvider__dayRange;
  swift_beginAccess();
  v5 = type metadata accessor for GregorianDayRange();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t key path setter for TrainingLoadViewModelProvider.dayRange : TrainingLoadViewModelProvider(uint64_t a1)
{
  v2 = type metadata accessor for GregorianDayRange();
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, a1, v3);
  return TrainingLoadViewModelProvider.dayRange.setter(v5);
}

uint64_t TrainingLoadViewModelProvider.dayRange.getter@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v6 = v1;
  lazy protocol witness table accessor for type DayIndex and conformance DayIndex(&lazy protocol witness table cache variable for type TrainingLoadViewModelProvider and conformance TrainingLoadViewModelProvider, type metadata accessor for TrainingLoadViewModelProvider, &protocol conformance descriptor for TrainingLoadViewModelProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = OBJC_IVAR____TtC9WorkoutUI29TrainingLoadViewModelProvider__dayRange;
  swift_beginAccess();
  v4 = type metadata accessor for GregorianDayRange();
  return (*(*(v4 - 8) + 16))(a1, v6 + v3, v4);
}

uint64_t type metadata accessor for TrainingLoadViewModelProvider(uint64_t a1)
{
  result = type metadata singleton initialization cache for TrainingLoadViewModelProvider;
  if (!type metadata singleton initialization cache for TrainingLoadViewModelProvider)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t TrainingLoadViewModelProvider.dayRange.setter(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for GregorianDayRange();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v17 - v9;
  v11 = OBJC_IVAR____TtC9WorkoutUI29TrainingLoadViewModelProvider__dayRange;
  swift_beginAccess();
  v12 = *(v5 + 16);
  v12(v10, v2 + v11, v4);
  lazy protocol witness table accessor for type DayIndex and conformance DayIndex(&lazy protocol witness table cache variable for type GregorianDayRange and conformance GregorianDayRange, MEMORY[0x277D0FEB8], MEMORY[0x277D0FEC8]);
  v19 = a1;
  LOBYTE(a1) = dispatch thunk of static Equatable.== infix(_:_:)();
  v18 = *(v5 + 8);
  v18(v10, v4);
  if (a1)
  {
    v12(v10, v19, v4);
    v12(v7, v2 + v11, v4);
    swift_beginAccess();
    (*(v5 + 24))(v2 + v11, v10, v4);
    swift_endAccess();
    TrainingLoadViewModelProvider._dayRange.didset(v7);
    v13 = v18;
    v18(v7, v4);
    v13(v10, v4);
    return (v13)(v19, v4);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v16 = v19;
    *(&v17 - 2) = v2;
    *(&v17 - 1) = v16;
    v20 = v2;
    lazy protocol witness table accessor for type DayIndex and conformance DayIndex(&lazy protocol witness table cache variable for type TrainingLoadViewModelProvider and conformance TrainingLoadViewModelProvider, type metadata accessor for TrainingLoadViewModelProvider, &protocol conformance descriptor for TrainingLoadViewModelProvider);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    return (v18)(v19, v4);
  }
}

uint64_t closure #1 in TrainingLoadViewModelProvider.dayRange.setter(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GregorianDayRange();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v16[-v10];
  v12 = *(v5 + 16);
  v12(&v16[-v10], a2, v4, v9);
  v13 = OBJC_IVAR____TtC9WorkoutUI29TrainingLoadViewModelProvider__dayRange;
  swift_beginAccess();
  (v12)(v7, a1 + v13, v4);
  swift_beginAccess();
  (*(v5 + 24))(a1 + v13, v11, v4);
  swift_endAccess();
  TrainingLoadViewModelProvider._dayRange.didset(v7);
  v14 = *(v5 + 8);
  v14(v7, v4);
  return (v14)(v11, v4);
}

uint64_t (*TrainingLoadViewModelProvider.dayRange.modify(uint64_t *a1))()
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
  v4[5] = OBJC_IVAR____TtC9WorkoutUI29TrainingLoadViewModelProvider___observationRegistrar;
  *v4 = v1;
  v4[6] = lazy protocol witness table accessor for type DayIndex and conformance DayIndex(&lazy protocol witness table cache variable for type TrainingLoadViewModelProvider and conformance TrainingLoadViewModelProvider, type metadata accessor for TrainingLoadViewModelProvider, &protocol conformance descriptor for TrainingLoadViewModelProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = TrainingLoadViewModelProvider._dayRange.modify(v4);
  return TrainingLoadViewModelProvider.dayRange.modify;
}

double TrainingLoadViewModelProvider._viewModels.setter(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC9WorkoutUI29TrainingLoadViewModelProvider__viewModels;
  swift_beginAccess();
  *(v2 + v4) = a1;

  swift_getKeyPath();
  lazy protocol witness table accessor for type DayIndex and conformance DayIndex(&lazy protocol witness table cache variable for type TrainingLoadViewModelProvider and conformance TrainingLoadViewModelProvider, type metadata accessor for TrainingLoadViewModelProvider, &protocol conformance descriptor for TrainingLoadViewModelProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5 = *(v2 + OBJC_IVAR____TtC9WorkoutUI29TrainingLoadViewModelProvider__unitTest_updatedViewModels);
  swift_getKeyPath();

  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5(v6);

  return result;
}

uint64_t (*TrainingLoadViewModelProvider._viewModels.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC9WorkoutUI29TrainingLoadViewModelProvider__viewModels;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return TrainingLoadViewModelProvider._viewModels.modify;
}

void TrainingLoadViewModelProvider._viewModels.modify(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[3];
    swift_getKeyPath();
    *v3 = v4;
    lazy protocol witness table accessor for type DayIndex and conformance DayIndex(&lazy protocol witness table cache variable for type TrainingLoadViewModelProvider and conformance TrainingLoadViewModelProvider, type metadata accessor for TrainingLoadViewModelProvider, &protocol conformance descriptor for TrainingLoadViewModelProvider);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v5 = *(v4 + OBJC_IVAR____TtC9WorkoutUI29TrainingLoadViewModelProvider__unitTest_updatedViewModels);
    swift_getKeyPath();
    *v3 = v4;

    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v5(v6);
  }

  free(v3);
}

double key path getter for TrainingLoadViewModelProvider.viewModels : TrainingLoadViewModelProvider@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type DayIndex and conformance DayIndex(&lazy protocol witness table cache variable for type TrainingLoadViewModelProvider and conformance TrainingLoadViewModelProvider, type metadata accessor for TrainingLoadViewModelProvider, &protocol conformance descriptor for TrainingLoadViewModelProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC9WorkoutUI29TrainingLoadViewModelProvider__viewModels;
  swift_beginAccess();
  *a2 = *(v3 + v4);

  return result;
}

double TrainingLoadViewModelProvider.viewModels.getter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type DayIndex and conformance DayIndex(&lazy protocol witness table cache variable for type TrainingLoadViewModelProvider and conformance TrainingLoadViewModelProvider, type metadata accessor for TrainingLoadViewModelProvider, &protocol conformance descriptor for TrainingLoadViewModelProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();

  return result;
}

double TrainingLoadViewModelProvider.viewModels.setter(uint64_t a1)
{
  swift_beginAccess();

  ViewModelV_Tt1g5 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ9WorkoutUI21TrainingLoadViewModelV_Tt1g5(v2, a1);

  if (ViewModelV_Tt1g5)
  {
    return TrainingLoadViewModelProvider._viewModels.setter(a1);
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  lazy protocol witness table accessor for type DayIndex and conformance DayIndex(&lazy protocol witness table cache variable for type TrainingLoadViewModelProvider and conformance TrainingLoadViewModelProvider, type metadata accessor for TrainingLoadViewModelProvider, &protocol conformance descriptor for TrainingLoadViewModelProvider);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return result;
}

void partial apply for closure #1 in TrainingLoadViewModelProvider.viewModels.setter()
{
  partial apply for closure #1 in TrainingLoadViewModelProvider.viewModels.setter();
}

{

  TrainingLoadViewModelProvider._viewModels.setter(v0);
}

uint64_t (*TrainingLoadViewModelProvider.viewModels.modify(uint64_t *a1))()
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
  v4[5] = OBJC_IVAR____TtC9WorkoutUI29TrainingLoadViewModelProvider___observationRegistrar;
  *v4 = v1;
  v4[6] = lazy protocol witness table accessor for type DayIndex and conformance DayIndex(&lazy protocol witness table cache variable for type TrainingLoadViewModelProvider and conformance TrainingLoadViewModelProvider, type metadata accessor for TrainingLoadViewModelProvider, &protocol conformance descriptor for TrainingLoadViewModelProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = TrainingLoadViewModelProvider._viewModels.modify(v4);
  return TrainingLoadViewModelProvider.viewModels.modify;
}

uint64_t (*TrainingLoadViewModelProvider._isFetchingDataForNewDateRange.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return TrainingLoadViewModelProvider._isFetchingDataForNewDateRange.modify;
}

uint64_t (*TrainingLoadViewModelProvider.isFetchingDataForNewDateRange.modify(uint64_t *a1))()
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
  v4[5] = OBJC_IVAR____TtC9WorkoutUI29TrainingLoadViewModelProvider___observationRegistrar;
  *v4 = v1;
  v4[6] = lazy protocol witness table accessor for type DayIndex and conformance DayIndex(&lazy protocol witness table cache variable for type TrainingLoadViewModelProvider and conformance TrainingLoadViewModelProvider, type metadata accessor for TrainingLoadViewModelProvider, &protocol conformance descriptor for TrainingLoadViewModelProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = TrainingLoadViewModelProvider._isFetchingDataForNewDateRange.modify(v4);
  return TrainingLoadViewModelProvider.isFetchingDataForNewDateRange.modify;
}

uint64_t TrainingLoadViewModelProvider._isFetchingDataForNewDateRange.didset(uint64_t a1, uint64_t *a2, const char *a3)
{
  v25 = a1;
  v6 = v3;
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static WOLog.trainingLoad.getter();
  swift_retain_n();
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v23 = a2;
    v14 = v13;
    v15 = swift_slowAlloc();
    v24 = a3;
    v16 = v15;
    v27 = v15;
    *v14 = 136446466;
    v17 = _typeName(_:qualified:)();
    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, &v27);

    *(v14 + 4) = v19;
    *(v14 + 12) = 1024;
    swift_getKeyPath();
    v26 = v3;
    lazy protocol witness table accessor for type DayIndex and conformance DayIndex(&lazy protocol witness table cache variable for type TrainingLoadViewModelProvider and conformance TrainingLoadViewModelProvider, type metadata accessor for TrainingLoadViewModelProvider, &protocol conformance descriptor for TrainingLoadViewModelProvider);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v20 = *v23;
    swift_beginAccess();
    LODWORD(v20) = *(v6 + v20);

    *(v14 + 14) = v20;

    _os_log_impl(&dword_20C66F000, v11, v12, v24, v14, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x20F30E080](v16, -1, -1);
    MEMORY[0x20F30E080](v14, -1, -1);
  }

  else
  {
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t (*TrainingLoadViewModelProvider._isLoadingWorkoutViewModelForTheFirstTime.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return TrainingLoadViewModelProvider._isLoadingWorkoutViewModelForTheFirstTime.modify;
}

uint64_t TrainingLoadViewModelProvider._isFetchingDataForNewDateRange.modify(uint64_t a1, char a2, uint64_t a3, uint64_t *a4, const char *a5, ...)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return TrainingLoadViewModelProvider._isFetchingDataForNewDateRange.didset(a3, a4, a5);
  }

  return result;
}

void key path getter for TrainingLoadViewModelProvider.isFetchingDataForNewDateRange : TrainingLoadViewModelProvider(uint64_t *a1@<X0>, uint64_t *a3@<X4>, _BYTE *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type DayIndex and conformance DayIndex(&lazy protocol witness table cache variable for type TrainingLoadViewModelProvider and conformance TrainingLoadViewModelProvider, type metadata accessor for TrainingLoadViewModelProvider, &protocol conformance descriptor for TrainingLoadViewModelProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v7 = *a3;
  swift_beginAccess();
  *a4 = *(v6 + v7);
}

uint64_t TrainingLoadViewModelProvider.isFetchingDataForNewDateRange.getter(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type DayIndex and conformance DayIndex(&lazy protocol witness table cache variable for type TrainingLoadViewModelProvider and conformance TrainingLoadViewModelProvider, type metadata accessor for TrainingLoadViewModelProvider, &protocol conformance descriptor for TrainingLoadViewModelProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *a2;
  swift_beginAccess();
  return *(v2 + v4);
}

void TrainingLoadViewModelProvider.isFetchingDataForNewDateRange.setter(char a1, uint64_t *a2, uint64_t a3, uint64_t a4, const char *a5, ...)
{
  v9 = a1 & 1;
  v10 = *a2;
  swift_beginAccess();
  if (*(v5 + v10) == v9)
  {
    *(v5 + v10) = v9;
    TrainingLoadViewModelProvider._isFetchingDataForNewDateRange.didset(a3, a2, a5);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    lazy protocol witness table accessor for type DayIndex and conformance DayIndex(&lazy protocol witness table cache variable for type TrainingLoadViewModelProvider and conformance TrainingLoadViewModelProvider, type metadata accessor for TrainingLoadViewModelProvider, &protocol conformance descriptor for TrainingLoadViewModelProvider);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t (*TrainingLoadViewModelProvider.isLoadingWorkoutViewModelForTheFirstTime.modify(uint64_t *a1))()
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
  v4[5] = OBJC_IVAR____TtC9WorkoutUI29TrainingLoadViewModelProvider___observationRegistrar;
  *v4 = v1;
  v4[6] = lazy protocol witness table accessor for type DayIndex and conformance DayIndex(&lazy protocol witness table cache variable for type TrainingLoadViewModelProvider and conformance TrainingLoadViewModelProvider, type metadata accessor for TrainingLoadViewModelProvider, &protocol conformance descriptor for TrainingLoadViewModelProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = TrainingLoadViewModelProvider._isLoadingWorkoutViewModelForTheFirstTime.modify(v4);
  return TrainingLoadViewModelProvider.isLoadingWorkoutViewModelForTheFirstTime.modify;
}

void TrainingLoadViewModelProvider.dayRange.modify(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v3 = v3[4];
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  free(v3);
}

uint64_t TrainingLoadViewModelProvider.__allocating_init(dayRange:healthStore:)(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for GregorianDayRange();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4, v6);
  v12 = 7;
  v9 = specialized TrainingLoadViewModelProvider.__allocating_init(dayRange:healthStore:options:)(v8, a2, &v12);

  (*(v5 + 8))(a1, v4);
  return v9;
}

uint64_t TrainingLoadViewModelProvider.__allocating_init(dayRange:healthStore:options:)(uint64_t a1, void *a2, uint64_t *a3)
{
  v4 = specialized TrainingLoadViewModelProvider.__allocating_init(dayRange:healthStore:options:)(a1, a2, a3);

  return v4;
}

uint64_t closure #1 in TrainingLoadViewModelProvider.init(dayRange:healthStore:options:)@<X0>(uint64_t a1@<X1>, unsigned int *a2@<X2>, uint64_t a3@<X8>)
{
  v15[0] = a3;
  v15[1] = a1;
  DataType = type metadata accessor for TrainingLoadDataType();
  v5 = *(DataType - 8);
  MEMORY[0x28223BE20](DataType);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Calendar();
  MEMORY[0x28223BE20](v8 - 8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSNy9HealthKit8DayIndexVGMd, &_sSNy9HealthKit8DayIndexVGMR);
  MEMORY[0x28223BE20](v9 - 8);
  SummaryQueryDescriptor = type metadata accessor for TrainingLoadSummaryQueryDescriptor();
  v11 = *(SummaryQueryDescriptor - 8);
  MEMORY[0x28223BE20](SummaryQueryDescriptor);
  v13 = v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  GregorianDayRange.dayIndexRange.getter();
  GregorianDayRange.gregorianCalendar.getter();
  (*(v5 + 104))(v7, *a2, DataType);
  TrainingLoadSummaryQueryDescriptor.init(morningIndexRange:gregorianCalendar:typeOfLoad:)();
  TrainingLoadSummaryQueryDescriptor.currentAndUpdatingDaySummaryCollections(for:)();
  return (*(v11 + 8))(v13, SummaryQueryDescriptor);
}

uint64_t closure #3 in TrainingLoadViewModelProvider.init(dayRange:healthStore:options:)(uint64_t a1, uint64_t a2)
{
  v13[1] = a2;
  DataType = type metadata accessor for TrainingLoadDataType();
  v3 = *(DataType - 8);
  MEMORY[0x28223BE20](DataType);
  v5 = (v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for Calendar();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSNy9HealthKit8DayIndexVGMd, &_sSNy9HealthKit8DayIndexVGMR);
  MEMORY[0x28223BE20](v7 - 8);
  SummaryQueryDescriptor = type metadata accessor for TrainingLoadSummaryQueryDescriptor();
  v9 = *(SummaryQueryDescriptor - 8);
  MEMORY[0x28223BE20](SummaryQueryDescriptor);
  v11 = v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  GregorianDayRange.dayIndexRange.getter();
  GregorianDayRange.gregorianCalendar.getter();
  *v5 = 13;
  (*(v3 + 104))(v5, *MEMORY[0x277D0FED8], DataType);
  TrainingLoadSummaryQueryDescriptor.init(morningIndexRange:gregorianCalendar:typeOfLoad:)();
  TrainingLoadSummaryQueryDescriptor.currentAndUpdatingDaySummaryCollections(for:)();
  return (*(v9 + 8))(v11, SummaryQueryDescriptor);
}

uint64_t TrainingLoadViewModelProvider.viewModel(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v26 = a2;
  v5 = type metadata accessor for GregorianDayRange();
  v24 = *(v5 - 8);
  v25 = v5;
  MEMORY[0x28223BE20](v5);
  v23 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  DataType = type metadata accessor for TrainingLoadDataType();
  v21 = *(DataType - 8);
  v22 = DataType;
  MEMORY[0x28223BE20](DataType);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI21TrainingLoadViewModelVSgMd, &_s9WorkoutUI21TrainingLoadViewModelVSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v21 - v11;
  TrainingLoadViewModelProvider.ensureQueriesAreRunning()();
  swift_getKeyPath();
  v29 = v2;
  lazy protocol witness table accessor for type DayIndex and conformance DayIndex(&lazy protocol witness table cache variable for type TrainingLoadViewModelProvider and conformance TrainingLoadViewModelProvider, type metadata accessor for TrainingLoadViewModelProvider, &protocol conformance descriptor for TrainingLoadViewModelProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v13 = OBJC_IVAR____TtC9WorkoutUI29TrainingLoadViewModelProvider__viewModels;
  swift_beginAccess();
  v14 = *(v3 + v13);
  v27 = a1;

  specialized Sequence.first(where:)(partial apply for closure #1 in TrainingLoadViewModelProvider.viewModel(for:), v14, v12);

  ViewModel = type metadata accessor for TrainingLoadViewModel(0);
  v16 = *(*(ViewModel - 8) + 48);
  if (v16(v12, 1, ViewModel) != 1)
  {
    return outlined init with take of TrainingLoadViewModel(v12, v26);
  }

  (*(v21 + 16))(v9, a1, v22);
  swift_getKeyPath();
  v28 = v3;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v17 = OBJC_IVAR____TtC9WorkoutUI29TrainingLoadViewModelProvider__dayRange;
  swift_beginAccess();
  v18 = v3 + v17;
  v19 = v23;
  (*(v24 + 16))(v23, v18, v25);
  TrainingLoadViewModel.init(dataType:dayRange:chronologicalTrainingLoadDaySummaries:)(v9, v19, MEMORY[0x277D84F90], v26);
  result = (v16)(v12, 1, ViewModel);
  if (result != 1)
  {
    return _s9WorkoutUI21TrainingLoadViewModelVSgWOhTm_0(v12, &_s9WorkoutUI21TrainingLoadViewModelVSgMd, &_s9WorkoutUI21TrainingLoadViewModelVSgMR);
  }

  return result;
}

void TrainingLoadViewModelProvider.ensureQueriesAreRunning()()
{
  OS_dispatch_queue.sync<A>(execute:)();
  if (v2 == 1)
  {
    TrainingLoadViewModelProvider.startWorkoutsQuery()();
  }

  OS_dispatch_queue.sync<A>(execute:)();
  if (v1 == 1)
  {
    TrainingLoadViewModelProvider.startAllDayQuery()();
  }

  OS_dispatch_queue.sync<A>(execute:)();
  if (v0 == 1)
  {
    TrainingLoadViewModelProvider.startWorkoutsByActivityTypeQuery(useFakeData:)(0);
  }
}

void TrainingLoadViewModelProvider.startWorkoutsQuery()()
{
  v1 = v0;
  v2 = *v0;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScsy13HealthBalance38TrainingLoadSampleDaySummaryCollectionVs5Error_pGMd, &_sScsy13HealthBalance38TrainingLoadSampleDaySummaryCollectionVs5Error_pGMR);
  v3 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v77 = &v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v70 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSNy9HealthKit8DayIndexVGMd, &_sSNy9HealthKit8DayIndexVGMR);
  MEMORY[0x28223BE20](v8 - 8);
  v82 = &v70 - v9;
  SampleDaySummaryCollection = type metadata accessor for TrainingLoadSampleDaySummaryCollection();
  v85 = *(SampleDaySummaryCollection - 8);
  v86 = SampleDaySummaryCollection;
  MEMORY[0x28223BE20](SampleDaySummaryCollection);
  v84 = (&v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  DataType = type metadata accessor for TrainingLoadDataType();
  v89 = *(DataType - 8);
  MEMORY[0x28223BE20](DataType);
  v88 = &v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = type metadata accessor for GregorianDayRange();
  v91 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v90 = (&v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = type metadata accessor for Logger();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v70 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  static WOLog.trainingLoad.getter();
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  v21 = os_log_type_enabled(v19, v20);
  v80 = v3;
  v79 = v7;
  v78 = v2;
  v83 = DataType;
  if (v21)
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    aBlock[0] = v23;
    *v22 = 136446210;
    v24 = _typeName(_:qualified:)();
    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, aBlock);

    *(v22 + 4) = v26;
    _os_log_impl(&dword_20C66F000, v19, v20, "[%{public}s] Spinning up startWorkoutsQuery", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v23);
    v27 = v23;
    DataType = v83;
    MEMORY[0x20F30E080](v27, -1, -1);
    MEMORY[0x20F30E080](v22, -1, -1);
  }

  (*(v16 + 8))(v18, v15);
  swift_getKeyPath();
  v28 = OBJC_IVAR____TtC9WorkoutUI29TrainingLoadViewModelProvider___observationRegistrar;
  aBlock[0] = v1;
  v29 = lazy protocol witness table accessor for type DayIndex and conformance DayIndex(&lazy protocol witness table cache variable for type TrainingLoadViewModelProvider and conformance TrainingLoadViewModelProvider, type metadata accessor for TrainingLoadViewModelProvider, &protocol conformance descriptor for TrainingLoadViewModelProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v30 = *(v1 + 24);
  swift_getKeyPath();
  v32 = v90;
  v31 = v91;
  v33 = v91 + 2;
  if (v30)
  {
    aBlock[0] = v1;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v34 = OBJC_IVAR____TtC9WorkoutUI29TrainingLoadViewModelProvider__dayRange;
    swift_beginAccess();
    v35 = v87;
    (v31[2])(v32, v1 + v34, v87);
    v36 = v82;
    GregorianDayRange.dayIndexRange.getter();
    (v31[1])(v32, v35);
    v37 = v84;
    static TrainingLoadSampleDaySummaryCollection.fake(inDayRange:separateByActivityType:)();
    _s9WorkoutUI21TrainingLoadViewModelVSgWOhTm_0(v36, &_sSNy9HealthKit8DayIndexVGMd, &_sSNy9HealthKit8DayIndexVGMR);
    v39 = v88;
    v38 = v89;
    (*(v89 + 104))(v88, *MEMORY[0x277D0FEE8], DataType);
    TrainingLoadViewModelProvider.update(for:dataType:)(v37, v39);
    (*(v38 + 8))(v39, DataType);
    (*(v85 + 8))(v37, v86);
    TrainingLoadViewModelProvider.TaskHolder.workoutsTaskFinished.setter(0, &unk_28239FA80, partial apply for closure #1 in TrainingLoadViewModelProvider.TaskHolder.workoutsTaskFinished.setter, &block_descriptor_165);
  }

  else
  {
    aBlock[0] = v1;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v75 = v28;
    v40 = OBJC_IVAR____TtC9WorkoutUI29TrainingLoadViewModelProvider__dayRange;
    swift_beginAccess();
    v41 = v87;
    v76 = v31[2];
    v76(v32, v1 + v40, v87);
    v42 = *MEMORY[0x277D0FEE8];
    v43 = v89;
    v74 = v33;
    v44 = *(v89 + 104);
    v45 = v88;
    v72 = v42;
    v71 = v44;
    v44(v88);
    specialized static DemoUtilities.fetchTrainingLoadSampleDaySummary(dayRange:dataType:)(v32, v45);
    v73 = v29;
    v47 = v46;
    v89 = *(v43 + 8);
    (v89)(v45, DataType);
    v50 = v31[1];
    v48 = v31 + 1;
    v49 = v50;
    v50(v32, v41);
    v70 = v47;
    if (v47)
    {
      swift_getKeyPath();
      v91 = v48;
      aBlock[0] = v1;
      v51 = v45;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v76(v32, v1 + v40, v41);
      GregorianDayRange.dayIndexRange.getter();
      v49(v32, v41);
      v52 = v84;
      TrainingLoadSampleDaySummaryCollection.init(morningIndexRange:daySummaries:)();
      v53 = v83;
      v71(v51, v72, v83);
      TrainingLoadViewModelProvider.update(for:dataType:)(v52, v51);
      (v89)(v51, v53);
      ViewModel = TrainingLoadViewModelProvider.TaskHolder.workoutsTaskFinished.setter(0, &unk_28239FA80, partial apply for closure #1 in TrainingLoadViewModelProvider.TaskHolder.workoutsTaskFinished.setter, &block_descriptor_165);
      (*(v85 + 8))(v52, v86, ViewModel);
    }

    else
    {
      v91 = v49;
      v55 = v76;
      v56 = *(v1 + OBJC_IVAR____TtC9WorkoutUI29TrainingLoadViewModelProvider_makeWorkoutLoadSummaryCollectionSequence);
      if (v56)
      {
        v89 = *(v1 + OBJC_IVAR____TtC9WorkoutUI29TrainingLoadViewModelProvider_makeWorkoutLoadSummaryCollectionSequence + 8);
        swift_getKeyPath();
        v57 = v41;
        aBlock[0] = v1;
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v58 = v90;
        v55(v90, v1 + v40, v57);
        v59 = v77;
        v56(v58);
        (v91)(v58, v57);
        v61 = v80;
        v60 = v81;
        v62 = v79;
        (*(v80 + 32))(v79, v59, v81);
        v63 = *(v1 + 16);
        v64 = swift_allocObject();
        v65 = swift_weakInit();
        v91 = &v70;
        MEMORY[0x28223BE20](v65);
        *(&v70 - 4) = v64;
        *(&v70 - 3) = v62;
        *(&v70 - 2) = v78;
        v66 = *(v63 + 16);
        v67 = swift_allocObject();
        *(v67 + 16) = v63;
        *(v67 + 24) = 0;
        *(v67 + 32) = partial apply for closure #1 in TrainingLoadViewModelProvider.startWorkoutsQuery();
        *(v67 + 40) = &v70 - 6;
        v68 = swift_allocObject();
        *(v68 + 16) = closure #1 in TrainingLoadViewModelProvider.TaskHolder.add(task:_:)partial apply;
        *(v68 + 24) = v67;
        aBlock[4] = thunk for @callee_guaranteed () -> ()partial apply;
        aBlock[5] = v68;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
        aBlock[3] = &block_descriptor_152;
        v69 = _Block_copy(aBlock);

        dispatch_sync(v66, v69);
        _Block_release(v69);
        LOBYTE(v63) = swift_isEscapingClosureAtFileLocation();

        if (v63)
        {
          __break(1u);
        }

        else
        {
          (*(v61 + 8))(v62, v60);
        }
      }

      else
      {
        TrainingLoadViewModelProvider.TaskHolder.workoutsTaskFinished.setter(1, &unk_28239FA80, partial apply for closure #1 in TrainingLoadViewModelProvider.TaskHolder.workoutsTaskFinished.setter, &block_descriptor_165);
      }
    }
  }
}

uint64_t closure #1 in closure #1 in TrainingLoadViewModelProvider.startWorkoutsQuery()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[10] = a7;
  v8[11] = a8;
  v8[8] = a5;
  v8[9] = a6;
  v8[7] = a4;
  DataType = type metadata accessor for TrainingLoadDataType();
  v8[12] = DataType;
  v8[13] = *(DataType - 8);
  v8[14] = swift_task_alloc();
  v10 = type metadata accessor for Logger();
  v8[15] = v10;
  v8[16] = *(v10 - 8);
  v8[17] = swift_task_alloc();
  v8[18] = swift_task_alloc();
  SampleDaySummaryCollection = type metadata accessor for TrainingLoadSampleDaySummaryCollection();
  v8[19] = SampleDaySummaryCollection;
  v8[20] = *(SampleDaySummaryCollection - 8);
  v8[21] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13HealthBalance38TrainingLoadSampleDaySummaryCollectionVSgMd, &_s13HealthBalance38TrainingLoadSampleDaySummaryCollectionVSgMR);
  v8[22] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScs8IteratorVy13HealthBalance38TrainingLoadSampleDaySummaryCollectionVs5Error_p_GMd, &_sScs8IteratorVy13HealthBalance38TrainingLoadSampleDaySummaryCollectionVs5Error_p_GMR);
  v8[23] = v12;
  v8[24] = *(v12 - 8);
  v8[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in closure #1 in TrainingLoadViewModelProvider.startWorkoutsQuery(), 0, 0);
}

uint64_t closure #1 in closure #1 in TrainingLoadViewModelProvider.startWorkoutsQuery()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScsy13HealthBalance38TrainingLoadSampleDaySummaryCollectionVs5Error_pGMd, &_sScsy13HealthBalance38TrainingLoadSampleDaySummaryCollectionVs5Error_pGMR);
  MEMORY[0x20F30BE10](v1);
  swift_beginAccess();
  *(v0 + 232) = *MEMORY[0x277D0FEE8];
  v2 = swift_task_alloc();
  *(v0 + 208) = v2;
  *v2 = v0;
  v2[1] = closure #1 in closure #1 in TrainingLoadViewModelProvider.startWorkoutsQuery();
  v3 = *(v0 + 176);
  v4 = *(v0 + 184);

  return MEMORY[0x2822005A8](v3, 0, 0, v4, v0 + 40);
}

{

  if (v0)
  {
    v1 = closure #1 in closure #1 in TrainingLoadViewModelProvider.startWorkoutsQuery();
  }

  else
  {
    v1 = closure #1 in closure #1 in TrainingLoadViewModelProvider.startWorkoutsQuery();
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

{
  v25 = v0;
  v1 = *(v0 + 176);
  v2 = *(v0 + 152);
  v3 = *(v0 + 160);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = (*(*(v0 + 192) + 8))(*(v0 + 200), *(v0 + 184));
    (*(v0 + 72))(v4);

    v5 = *(v0 + 8);

    return v5();
  }

  else
  {
    (*(v3 + 32))(*(v0 + 168), v1, v2);
    static WOLog.trainingLoad.getter();
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    v9 = os_log_type_enabled(v7, v8);
    v10 = *(v0 + 144);
    v11 = *(v0 + 120);
    v12 = *(v0 + 128);
    if (v9)
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v24 = v14;
      *v13 = 136446210;
      v15 = _typeName(_:qualified:)();
      v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, &v24);

      *(v13 + 4) = v17;
      _os_log_impl(&dword_20C66F000, v7, v8, "[%{public}s] Received Workout load day summaries", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v14);
      MEMORY[0x20F30E080](v14, -1, -1);
      MEMORY[0x20F30E080](v13, -1, -1);
    }

    (*(v12 + 8))(v10, v11);
    Strong = swift_weakLoadStrong();
    *(v0 + 216) = Strong;
    if (Strong)
    {
      (*(*(v0 + 104) + 104))(*(v0 + 112), *(v0 + 232), *(v0 + 96));
      type metadata accessor for MainActor();
      *(v0 + 224) = static MainActor.shared.getter();
      v20 = dispatch thunk of Actor.unownedExecutor.getter();

      return MEMORY[0x2822009F8](closure #1 in closure #1 in TrainingLoadViewModelProvider.startWorkoutsQuery(), v20, v19);
    }

    else
    {
      (*(*(v0 + 160) + 8))(*(v0 + 168), *(v0 + 152));
      v21 = swift_task_alloc();
      *(v0 + 208) = v21;
      *v21 = v0;
      v21[1] = closure #1 in closure #1 in TrainingLoadViewModelProvider.startWorkoutsQuery();
      v22 = *(v0 + 176);
      v23 = *(v0 + 184);

      return MEMORY[0x2822005A8](v22, 0, 0, v23, v0 + 40);
    }
  }
}

{
  v1 = v0[21];
  v3 = v0[13];
  v2 = v0[14];
  v4 = v0[12];

  TrainingLoadViewModelProvider.update(for:dataType:)(v1, v2);

  (*(v3 + 8))(v2, v4);

  return MEMORY[0x2822009F8](closure #1 in closure #1 in TrainingLoadViewModelProvider.startWorkoutsQuery(), 0, 0);
}

{
  (*(v0[20] + 8))(v0[21], v0[19]);
  v1 = swift_task_alloc();
  v0[26] = v1;
  *v1 = v0;
  v1[1] = closure #1 in closure #1 in TrainingLoadViewModelProvider.startWorkoutsQuery();
  v2 = v0[22];
  v3 = v0[23];

  return MEMORY[0x2822005A8](v2, 0, 0, v3, v0 + 5);
}

{
  v24 = v0;
  (*(*(v0 + 192) + 8))(*(v0 + 200), *(v0 + 184));
  v1 = *(v0 + 40);
  static WOLog.trainingLoad.getter();
  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 128);
    v22 = *(v0 + 136);
    v6 = *(v0 + 120);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v23 = v8;
    *v7 = 136446466;
    v9 = _typeName(_:qualified:)();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v23);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2080;
    *(v0 + 48) = v1;
    v12 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v13 = String.init<A>(reflecting:)();
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v23);

    *(v7 + 14) = v15;
    _os_log_impl(&dword_20C66F000, v3, v4, "[%{public}s] Received error for Workout load summary query: %s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F30E080](v8, -1, -1);
    MEMORY[0x20F30E080](v7, -1, -1);

    v16 = (*(v5 + 8))(v22, v6);
  }

  else
  {
    v18 = *(v0 + 128);
    v17 = *(v0 + 136);
    v19 = *(v0 + 120);

    v16 = (*(v18 + 8))(v17, v19);
  }

  (*(v0 + 72))(v16);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  outlined init with copy of (lower: DayIndex, upper: DayIndex)(a3, v25 - v10, &_sScPSgMd, &_sScPSgMR);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    _s9WorkoutUI21TrainingLoadViewModelVSgWOhTm_0(v11, &_sScPSgMd, &_sScPSgMR);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}