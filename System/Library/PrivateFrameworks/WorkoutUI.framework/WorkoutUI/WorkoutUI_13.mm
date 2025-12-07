uint64_t outlined init with take of TrainingLoadViewModel.ChartPoint(uint64_t a1, uint64_t a2)
{
  View = type metadata accessor for TrainingLoadViewModel.ChartPoint(0);
  (*(*(View - 8) + 32))(a2, a1, View);
  return a2;
}

uint64_t getEnumTagSinglePayload for MirrorStackedMetricsView(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t storeEnumTagSinglePayload for MirrorStackedMetricsView(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id closure #1 in closure #1 in MirrorStackedMetricsView.body.getter@<X0>(uint64_t a1@<X1>, int a2@<W2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v34 = a4;
  v35 = type metadata accessor for AccessibilityChildBehavior();
  v33 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore17MetricPlatterTypeOSgMd, &_s11WorkoutCore17MetricPlatterTypeOSgMR);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v30 - v10;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyACyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGACyACyACyACyACyACyAD07CadencegH0VAA05EmptyH0VGA8_GA8_GACyAD015ElevationChangegH0VAD07CurrenttgH0VGGACyACyAD05PowergH0VA21_GACyA21_AD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD0p6DetailgH0VGACyAwFGGACyACyAFA21_GACyA21_AA08ModifiedD0VyA37_yAD0emH0VAD0G6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGACyACyACyACyA31_AWGACyAD012StrideLengthgH0VA56_GGACyACyAD019VerticalOscillationgH0VA60_GACyAD013GroundContactmgH0VA63_GGGACyACyA15_AD016DownhillRunCountgH0VGACyA10_AA6HStackVyAA05TupleH0VyA37_yAA4TextVAD0G9ValueFontVG_A37_yA37_yA75_AD0G19DescriptionCoreFontVGAD26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGMd, &_s7SwiftUI19_ConditionalContentVyACyACyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGACyACyACyACyACyACyAD07CadencegH0VAA05EmptyH0VGA8_GA8_GACyAD015ElevationChangegH0VAD07CurrenttgH0VGGACyACyAD05PowergH0VA21_GACyA21_AD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD0p6DetailgH0VGACyAwFGGACyACyAFA21_GACyA21_AA08ModifiedD0VyA37_yAD0emH0VAD0G6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGACyACyACyACyA31_AWGACyAD012StrideLengthgH0VA56_GGACyACyAD019VerticalOscillationgH0VA60_GACyAD013GroundContactmgH0VA63_GGGACyACyA15_AD016DownhillRunCountgH0VGACyA10_AA6HStackVyAA05TupleH0VyA37_yAA4TextVAD0G9ValueFontVG_A37_yA37_yA75_AD0G19DescriptionCoreFontVGAD26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGMR);
  MEMORY[0x28223BE20](v32);
  v13 = &v30 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA012_ConditionalD0VyAEyAEyAEyAEyAEy07WorkoutB016EnergyMetricViewVAHGAEyAF09HeartRatehI0VAF0jk9AggregatehI0VGGAEyAEyAmF04ZonehI0VGAEyAF06TimeInmhI0VAQGGGAEyAEyAEyAtF04PacehI0VGAEyA2YGGAEyA_AEyAF08DistancehI0VAF04LapshI0VGGGGAEyAEyAEyAEyAEyAEyAF07CadencehI0VAA05EmptyI0VGA10_GA10_GAEyAF015ElevationChangehI0VAF07CurrentuhI0VGGAEyAEyAF05PowerhI0VA23_GAEyA23_AF014FlightsClimbedhI0VGGGAEyAEyAEyAF015SegmentDurationhI0VAF0q6DetailhI0VGAEyAyHGGAEyAEyAHA23_GAEyA23_ACyACyAF0fnI0VAF0H6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGAEyAEyAEyAEyA33_AYGAEyAF012StrideLengthhI0VA56_GGAEyAEyAF019VerticalOscillationhI0VA60_GAEyAF013GroundContactnhI0VA63_GGGAEyAEyA17_AF016DownhillRunCounthI0VGAEyA12_AA6HStackVyAA05TupleI0VyACyAA4TextVAF0H9ValueFontVG_ACyACyA75_AF0H19DescriptionCoreFontVGAF26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGAA31AccessibilityAttachmentModifierVGMd, &_s7SwiftUI15ModifiedContentVyAA012_ConditionalD0VyAEyAEyAEyAEyAEy07WorkoutB016EnergyMetricViewVAHGAEyAF09HeartRatehI0VAF0jk9AggregatehI0VGGAEyAEyAmF04ZonehI0VGAEyAF06TimeInmhI0VAQGGGAEyAEyAEyAtF04PacehI0VGAEyA2YGGAEyA_AEyAF08DistancehI0VAF04LapshI0VGGGGAEyAEyAEyAEyAEyAEyAF07CadencehI0VAA05EmptyI0VGA10_GA10_GAEyAF015ElevationChangehI0VAF07CurrentuhI0VGGAEyAEyAF05PowerhI0VA23_GAEyA23_AF014FlightsClimbedhI0VGGGAEyAEyAEyAF015SegmentDurationhI0VAF0q6DetailhI0VGAEyAyHGGAEyAEyAHA23_GAEyA23_ACyACyAF0fnI0VAF0H6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGAEyAEyAEyAEyA33_AYGAEyAF012StrideLengthhI0VA56_GGAEyAEyAF019VerticalOscillationhI0VA60_GAEyAF013GroundContactnhI0VA63_GGGAEyAEyA17_AF016DownhillRunCounthI0VGAEyA12_AA6HStackVyAA05TupleI0VyACyAA4TextVAF0H9ValueFontVG_ACyACyA75_AF0H19DescriptionCoreFontVGAF26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGAA31AccessibilityAttachmentModifierVGMR);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v30 - v15;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA012_ConditionalD0VyAEyAEyAEyAEyAEy07WorkoutB016EnergyMetricViewVAHGAEyAF09HeartRatehI0VAF0jk9AggregatehI0VGGAEyAEyAmF04ZonehI0VGAEyAF06TimeInmhI0VAQGGGAEyAEyAEyAtF04PacehI0VGAEyA2YGGAEyA_AEyAF08DistancehI0VAF04LapshI0VGGGGAEyAEyAEyAEyAEyAEyAF07CadencehI0VAA05EmptyI0VGA10_GA10_GAEyAF015ElevationChangehI0VAF07CurrentuhI0VGGAEyAEyAF05PowerhI0VA23_GAEyA23_AF014FlightsClimbedhI0VGGGAEyAEyAEyAF015SegmentDurationhI0VAF0q6DetailhI0VGAEyAyHGGAEyAEyAHA23_GAEyA23_ACyACyAF0fnI0VAF0H6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGAEyAEyAEyAEyA33_AYGAEyAF012StrideLengthhI0VA56_GGAEyAEyAF019VerticalOscillationhI0VA60_GAEyAF013GroundContactnhI0VA63_GGGAEyAEyA17_AF016DownhillRunCounthI0VGAEyA12_AA6HStackVyAA05TupleI0VyACyAA4TextVAF0H9ValueFontVG_ACyACyA75_AF0H19DescriptionCoreFontVGAF26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGAA31AccessibilityAttachmentModifierVGAA30_EnvironmentKeyWritingModifierVyAF0fI5StyleOGGMd, &_s7SwiftUI15ModifiedContentVyACyAA012_ConditionalD0VyAEyAEyAEyAEyAEy07WorkoutB016EnergyMetricViewVAHGAEyAF09HeartRatehI0VAF0jk9AggregatehI0VGGAEyAEyAmF04ZonehI0VGAEyAF06TimeInmhI0VAQGGGAEyAEyAEyAtF04PacehI0VGAEyA2YGGAEyA_AEyAF08DistancehI0VAF04LapshI0VGGGGAEyAEyAEyAEyAEyAEyAF07CadencehI0VAA05EmptyI0VGA10_GA10_GAEyAF015ElevationChangehI0VAF07CurrentuhI0VGGAEyAEyAF05PowerhI0VA23_GAEyA23_AF014FlightsClimbedhI0VGGGAEyAEyAEyAF015SegmentDurationhI0VAF0q6DetailhI0VGAEyAyHGGAEyAEyAHA23_GAEyA23_ACyACyAF0fnI0VAF0H6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGAEyAEyAEyAEyA33_AYGAEyAF012StrideLengthhI0VA56_GGAEyAEyAF019VerticalOscillationhI0VA60_GAEyAF013GroundContactnhI0VA63_GGGAEyAEyA17_AF016DownhillRunCounthI0VGAEyA12_AA6HStackVyAA05TupleI0VyACyAA4TextVAF0H9ValueFontVG_ACyACyA75_AF0H19DescriptionCoreFontVGAF26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGAA31AccessibilityAttachmentModifierVGAA30_EnvironmentKeyWritingModifierVyAF0fI5StyleOGGMR);
  MEMORY[0x28223BE20](v31);
  v18 = &v30 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA012_ConditionalD0VyAEyAEyAEyAEyAEy07WorkoutB016EnergyMetricViewVAHGAEyAF09HeartRatehI0VAF0jk9AggregatehI0VGGAEyAEyAmF04ZonehI0VGAEyAF06TimeInmhI0VAQGGGAEyAEyAEyAtF04PacehI0VGAEyA2YGGAEyA_AEyAF08DistancehI0VAF04LapshI0VGGGGAEyAEyAEyAEyAEyAEyAF07CadencehI0VAA05EmptyI0VGA10_GA10_GAEyAF015ElevationChangehI0VAF07CurrentuhI0VGGAEyAEyAF05PowerhI0VA23_GAEyA23_AF014FlightsClimbedhI0VGGGAEyAEyAEyAF015SegmentDurationhI0VAF0q6DetailhI0VGAEyAyHGGAEyAEyAHA23_GAEyA23_ACyACyAF0fnI0VAF0H6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGAEyAEyAEyAEyA33_AYGAEyAF012StrideLengthhI0VA56_GGAEyAEyAF019VerticalOscillationhI0VA60_GAEyAF013GroundContactnhI0VA63_GGGAEyAEyA17_AF016DownhillRunCounthI0VGAEyA12_AA6HStackVyAA05TupleI0VyACyAA4TextVAF0H9ValueFontVG_ACyACyA75_AF0H19DescriptionCoreFontVGAF26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGAA31AccessibilityAttachmentModifierVGAA30_EnvironmentKeyWritingModifierVyAF0fI5StyleOGGAA21_TraitWritingModifierVyAA12_LayoutTraitVyAF0fI14StyleLayoutKeyVGGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA012_ConditionalD0VyAEyAEyAEyAEyAEy07WorkoutB016EnergyMetricViewVAHGAEyAF09HeartRatehI0VAF0jk9AggregatehI0VGGAEyAEyAmF04ZonehI0VGAEyAF06TimeInmhI0VAQGGGAEyAEyAEyAtF04PacehI0VGAEyA2YGGAEyA_AEyAF08DistancehI0VAF04LapshI0VGGGGAEyAEyAEyAEyAEyAEyAF07CadencehI0VAA05EmptyI0VGA10_GA10_GAEyAF015ElevationChangehI0VAF07CurrentuhI0VGGAEyAEyAF05PowerhI0VA23_GAEyA23_AF014FlightsClimbedhI0VGGGAEyAEyAEyAF015SegmentDurationhI0VAF0q6DetailhI0VGAEyAyHGGAEyAEyAHA23_GAEyA23_ACyACyAF0fnI0VAF0H6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGAEyAEyAEyAEyA33_AYGAEyAF012StrideLengthhI0VA56_GGAEyAEyAF019VerticalOscillationhI0VA60_GAEyAF013GroundContactnhI0VA63_GGGAEyAEyA17_AF016DownhillRunCounthI0VGAEyA12_AA6HStackVyAA05TupleI0VyACyAA4TextVAF0H9ValueFontVG_ACyACyA75_AF0H19DescriptionCoreFontVGAF26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGAA31AccessibilityAttachmentModifierVGAA30_EnvironmentKeyWritingModifierVyAF0fI5StyleOGGAA21_TraitWritingModifierVyAA12_LayoutTraitVyAF0fI14StyleLayoutKeyVGGGMR);
  MEMORY[0x28223BE20](v19);
  v21 = &v30 - v20;
  v22 = type metadata accessor for MetricPlatterType();
  (*(*(v22 - 8) + 56))(v11, 1, 1, v22);
  static MetricViewBuilder.view(metricType:metricPlatterType:formattingManager:activityType:metricsPublisher:)(a1, v11, *(a3 + 16), *(a3 + 32), *(a3 + 8), v13);
  outlined destroy of MetricPlatterType?(v11, &_s11WorkoutCore17MetricPlatterTypeOSgMd, &_s11WorkoutCore17MetricPlatterTypeOSgMR);
  result = MEMORY[0x20F30D420](a1);
  if (result)
  {
    v24 = result;
    v26 = a1 == 7 || a1 == 2;
    if ((a2 & v26) != 0)
    {
      v27 = 6;
    }

    else
    {
      v27 = 2;
    }

    static String._unconditionallyBridgeFromObjectiveC(_:)();

    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentElevationMetricView>>, _ConditionalContent<_ConditionalContent<Power();
    View.accessibilityIdentifier(_:)();

    outlined destroy of MetricPlatterType?(v13, &_s7SwiftUI19_ConditionalContentVyACyACyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGACyACyACyACyACyACyAD07CadencegH0VAA05EmptyH0VGA8_GA8_GACyAD015ElevationChangegH0VAD07CurrenttgH0VGGACyACyAD05PowergH0VA21_GACyA21_AD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD0p6DetailgH0VGACyAwFGGACyACyAFA21_GACyA21_AA08ModifiedD0VyA37_yAD0emH0VAD0G6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGACyACyACyACyA31_AWGACyAD012StrideLengthgH0VA56_GGACyACyAD019VerticalOscillationgH0VA60_GACyAD013GroundContactmgH0VA63_GGGACyACyA15_AD016DownhillRunCountgH0VGACyA10_AA6HStackVyAA05TupleH0VyA37_yAA4TextVAD0G9ValueFontVG_A37_yA37_yA75_AD0G19DescriptionCoreFontVGAD26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGMd, &_s7SwiftUI19_ConditionalContentVyACyACyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGACyACyACyACyACyACyAD07CadencegH0VAA05EmptyH0VGA8_GA8_GACyAD015ElevationChangegH0VAD07CurrenttgH0VGGACyACyAD05PowergH0VA21_GACyA21_AD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD0p6DetailgH0VGACyAwFGGACyACyAFA21_GACyA21_AA08ModifiedD0VyA37_yAD0emH0VAD0G6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGACyACyACyACyA31_AWGACyAD012StrideLengthgH0VA56_GGACyACyAD019VerticalOscillationgH0VA60_GACyAD013GroundContactmgH0VA63_GGGACyACyA15_AD016DownhillRunCountgH0VGACyA10_AA6HStackVyAA05TupleH0VyA37_yAA4TextVAD0G9ValueFontVG_A37_yA37_yA75_AD0G19DescriptionCoreFontVGAD26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGMR);
    KeyPath = swift_getKeyPath();
    outlined init with take of ModifiedContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentElevationMetricView>>, _ConditionalContent<_ConditionalContent<PowerMet(v16, v18, &_s7SwiftUI15ModifiedContentVyAA012_ConditionalD0VyAEyAEyAEyAEyAEy07WorkoutB016EnergyMetricViewVAHGAEyAF09HeartRatehI0VAF0jk9AggregatehI0VGGAEyAEyAmF04ZonehI0VGAEyAF06TimeInmhI0VAQGGGAEyAEyAEyAtF04PacehI0VGAEyA2YGGAEyA_AEyAF08DistancehI0VAF04LapshI0VGGGGAEyAEyAEyAEyAEyAEyAF07CadencehI0VAA05EmptyI0VGA10_GA10_GAEyAF015ElevationChangehI0VAF07CurrentuhI0VGGAEyAEyAF05PowerhI0VA23_GAEyA23_AF014FlightsClimbedhI0VGGGAEyAEyAEyAF015SegmentDurationhI0VAF0q6DetailhI0VGAEyAyHGGAEyAEyAHA23_GAEyA23_ACyACyAF0fnI0VAF0H6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGAEyAEyAEyAEyA33_AYGAEyAF012StrideLengthhI0VA56_GGAEyAEyAF019VerticalOscillationhI0VA60_GAEyAF013GroundContactnhI0VA63_GGGAEyAEyA17_AF016DownhillRunCounthI0VGAEyA12_AA6HStackVyAA05TupleI0VyACyAA4TextVAF0H9ValueFontVG_ACyACyA75_AF0H19DescriptionCoreFontVGAF26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGAA31AccessibilityAttachmentModifierVGMd, &_s7SwiftUI15ModifiedContentVyAA012_ConditionalD0VyAEyAEyAEyAEyAEy07WorkoutB016EnergyMetricViewVAHGAEyAF09HeartRatehI0VAF0jk9AggregatehI0VGGAEyAEyAmF04ZonehI0VGAEyAF06TimeInmhI0VAQGGGAEyAEyAEyAtF04PacehI0VGAEyA2YGGAEyA_AEyAF08DistancehI0VAF04LapshI0VGGGGAEyAEyAEyAEyAEyAEyAF07CadencehI0VAA05EmptyI0VGA10_GA10_GAEyAF015ElevationChangehI0VAF07CurrentuhI0VGGAEyAEyAF05PowerhI0VA23_GAEyA23_AF014FlightsClimbedhI0VGGGAEyAEyAEyAF015SegmentDurationhI0VAF0q6DetailhI0VGAEyAyHGGAEyAEyAHA23_GAEyA23_ACyACyAF0fnI0VAF0H6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGAEyAEyAEyAEyA33_AYGAEyAF012StrideLengthhI0VA56_GGAEyAEyAF019VerticalOscillationhI0VA60_GAEyAF013GroundContactnhI0VA63_GGGAEyAEyA17_AF016DownhillRunCounthI0VGAEyA12_AA6HStackVyAA05TupleI0VyACyAA4TextVAF0H9ValueFontVG_ACyACyA75_AF0H19DescriptionCoreFontVGAF26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGAA31AccessibilityAttachmentModifierVGMR);
    v29 = &v18[*(v31 + 36)];
    *v29 = KeyPath;
    v29[8] = v27;
    outlined init with take of ModifiedContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentElevationMetricView>>, _ConditionalContent<_ConditionalContent<PowerMet(v18, v21, &_s7SwiftUI15ModifiedContentVyACyAA012_ConditionalD0VyAEyAEyAEyAEyAEy07WorkoutB016EnergyMetricViewVAHGAEyAF09HeartRatehI0VAF0jk9AggregatehI0VGGAEyAEyAmF04ZonehI0VGAEyAF06TimeInmhI0VAQGGGAEyAEyAEyAtF04PacehI0VGAEyA2YGGAEyA_AEyAF08DistancehI0VAF04LapshI0VGGGGAEyAEyAEyAEyAEyAEyAF07CadencehI0VAA05EmptyI0VGA10_GA10_GAEyAF015ElevationChangehI0VAF07CurrentuhI0VGGAEyAEyAF05PowerhI0VA23_GAEyA23_AF014FlightsClimbedhI0VGGGAEyAEyAEyAF015SegmentDurationhI0VAF0q6DetailhI0VGAEyAyHGGAEyAEyAHA23_GAEyA23_ACyACyAF0fnI0VAF0H6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGAEyAEyAEyAEyA33_AYGAEyAF012StrideLengthhI0VA56_GGAEyAEyAF019VerticalOscillationhI0VA60_GAEyAF013GroundContactnhI0VA63_GGGAEyAEyA17_AF016DownhillRunCounthI0VGAEyA12_AA6HStackVyAA05TupleI0VyACyAA4TextVAF0H9ValueFontVG_ACyACyA75_AF0H19DescriptionCoreFontVGAF26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGAA31AccessibilityAttachmentModifierVGAA30_EnvironmentKeyWritingModifierVyAF0fI5StyleOGGMd, &_s7SwiftUI15ModifiedContentVyACyAA012_ConditionalD0VyAEyAEyAEyAEyAEy07WorkoutB016EnergyMetricViewVAHGAEyAF09HeartRatehI0VAF0jk9AggregatehI0VGGAEyAEyAmF04ZonehI0VGAEyAF06TimeInmhI0VAQGGGAEyAEyAEyAtF04PacehI0VGAEyA2YGGAEyA_AEyAF08DistancehI0VAF04LapshI0VGGGGAEyAEyAEyAEyAEyAEyAF07CadencehI0VAA05EmptyI0VGA10_GA10_GAEyAF015ElevationChangehI0VAF07CurrentuhI0VGGAEyAEyAF05PowerhI0VA23_GAEyA23_AF014FlightsClimbedhI0VGGGAEyAEyAEyAF015SegmentDurationhI0VAF0q6DetailhI0VGAEyAyHGGAEyAEyAHA23_GAEyA23_ACyACyAF0fnI0VAF0H6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGAEyAEyAEyAEyA33_AYGAEyAF012StrideLengthhI0VA56_GGAEyAEyAF019VerticalOscillationhI0VA60_GAEyAF013GroundContactnhI0VA63_GGGAEyAEyA17_AF016DownhillRunCounthI0VGAEyA12_AA6HStackVyAA05TupleI0VyACyAA4TextVAF0H9ValueFontVG_ACyACyA75_AF0H19DescriptionCoreFontVGAF26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGAA31AccessibilityAttachmentModifierVGAA30_EnvironmentKeyWritingModifierVyAF0fI5StyleOGGMR);
    v21[*(v19 + 36)] = v27;
    static AccessibilityChildBehavior.combine.getter();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentElevationMetricView>();
    View.accessibilityElement(children:)();
    (*(v33 + 8))(v8, v35);
    return outlined destroy of MetricPlatterType?(v21, &_s7SwiftUI15ModifiedContentVyACyACyAA012_ConditionalD0VyAEyAEyAEyAEyAEy07WorkoutB016EnergyMetricViewVAHGAEyAF09HeartRatehI0VAF0jk9AggregatehI0VGGAEyAEyAmF04ZonehI0VGAEyAF06TimeInmhI0VAQGGGAEyAEyAEyAtF04PacehI0VGAEyA2YGGAEyA_AEyAF08DistancehI0VAF04LapshI0VGGGGAEyAEyAEyAEyAEyAEyAF07CadencehI0VAA05EmptyI0VGA10_GA10_GAEyAF015ElevationChangehI0VAF07CurrentuhI0VGGAEyAEyAF05PowerhI0VA23_GAEyA23_AF014FlightsClimbedhI0VGGGAEyAEyAEyAF015SegmentDurationhI0VAF0q6DetailhI0VGAEyAyHGGAEyAEyAHA23_GAEyA23_ACyACyAF0fnI0VAF0H6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGAEyAEyAEyAEyA33_AYGAEyAF012StrideLengthhI0VA56_GGAEyAEyAF019VerticalOscillationhI0VA60_GAEyAF013GroundContactnhI0VA63_GGGAEyAEyA17_AF016DownhillRunCounthI0VGAEyA12_AA6HStackVyAA05TupleI0VyACyAA4TextVAF0H9ValueFontVG_ACyACyA75_AF0H19DescriptionCoreFontVGAF26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGAA31AccessibilityAttachmentModifierVGAA30_EnvironmentKeyWritingModifierVyAF0fI5StyleOGGAA21_TraitWritingModifierVyAA12_LayoutTraitVyAF0fI14StyleLayoutKeyVGGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA012_ConditionalD0VyAEyAEyAEyAEyAEy07WorkoutB016EnergyMetricViewVAHGAEyAF09HeartRatehI0VAF0jk9AggregatehI0VGGAEyAEyAmF04ZonehI0VGAEyAF06TimeInmhI0VAQGGGAEyAEyAEyAtF04PacehI0VGAEyA2YGGAEyA_AEyAF08DistancehI0VAF04LapshI0VGGGGAEyAEyAEyAEyAEyAEyAF07CadencehI0VAA05EmptyI0VGA10_GA10_GAEyAF015ElevationChangehI0VAF07CurrentuhI0VGGAEyAEyAF05PowerhI0VA23_GAEyA23_AF014FlightsClimbedhI0VGGGAEyAEyAEyAF015SegmentDurationhI0VAF0q6DetailhI0VGAEyAyHGGAEyAEyAHA23_GAEyA23_ACyACyAF0fnI0VAF0H6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGAEyAEyAEyAEyA33_AYGAEyAF012StrideLengthhI0VA56_GGAEyAEyAF019VerticalOscillationhI0VA60_GAEyAF013GroundContactnhI0VA63_GGGAEyAEyA17_AF016DownhillRunCounthI0VGAEyA12_AA6HStackVyAA05TupleI0VyACyAA4TextVAF0H9ValueFontVG_ACyACyA75_AF0H19DescriptionCoreFontVGAF26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGAA31AccessibilityAttachmentModifierVGAA30_EnvironmentKeyWritingModifierVyAF0fI5StyleOGGAA21_TraitWritingModifierVyAA12_LayoutTraitVyAF0fI14StyleLayoutKeyVGGGMR);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t protocol witness for View.body.getter in conformance MirrorStackedMetricsView@<X0>(uint64_t a2@<X8>)
{
  v5 = *(v2 + 2);
  v4 = *(v2 + 3);
  v6 = *(v2 + 4);
  v20 = *v2;
  MetricsPublisher.workoutStatePublisher.getter();
  v7 = WorkoutStatePublisher.mirroringToCompanion.getter();

  v8 = specialized MirrorMetricsViewStackedLayout.init(verticallyCenter:)();
  *a2 = v9 & 1;
  *(a2 + 8) = v8;
  *(a2 + 16) = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA11_LayoutRootVy07WorkoutB0013MirrorMetricsd7StackedF0VGAA7ForEachVySaySi6offset_So19HKWorkoutMetricTypeV7elementtGSiAA0D0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA15ModifiedContentVyAZyAZyAA012_ConditionalZ0VyA0_yA0_yA0_yA0_yA0_yAH06EnergypD0VA2_GA0_yAH09HeartRatepD0VAH018HeartRateAggregatepD0VGGA0_yA0_yA7_AH04ZonepD0VGA0_yAH010TimeInZonepD0VA11_GGGA0_yA0_yA0_yA14_AH04PacepD0VGA0_yA19_A19_GGA0_yA21_A0_yAH08DistancepD0VAH04LapspD0VGGGGA0_yA0_yA0_yA0_yA0_yA0_yAH07CadencepD0VAA05EmptyD0VGA32_GA32_GA0_yAH015ElevationChangepD0VAH016CurrentElevationpD0VGGA0_yA0_yAH05PowerpD0VA45_GA0_yA45_AH014FlightsClimbedpD0VGGGA0_yA0_yA0_yAH015SegmentDurationpD0VAH014DistanceDetailpD0VGA0_yA19_A2_GGA0_yA0_yA2_A45_GA0_yA45_AZyAZyAH0h4TimeD0VAH0P6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGA0_yA0_yA0_yA0_yA55_A19_GA0_yAH012StrideLengthpD0VA78_GGA0_yA0_yAH019VerticalOscillationpD0VA82_GA0_yAH017GroundContactTimepD0VA85_GGGA0_yA0_yA39_AH016DownhillRunCountpD0VGA0_yA34_AA6HStackVyAA05TupleD0VyAZyAA4TextVAH0P9ValueFontVG_AZyAZyA97_AH0P19DescriptionCoreFontVGAH26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGAA0V18AttachmentModifierVGAA30_EnvironmentKeyWritingModifierVyAH0hD5StyleOGGAA21_TraitWritingModifierVyAA01_F5TraitVyAH0hd5StyleF3KeyVGGG_Qo_GGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA11_LayoutRootVy07WorkoutB0013MirrorMetricsd7StackedF0VGAA7ForEachVySaySi6offset_So19HKWorkoutMetricTypeV7elementtGSiAA0D0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA15ModifiedContentVyAZyAZyAA012_ConditionalZ0VyA0_yA0_yA0_yA0_yA0_yAH06EnergypD0VA2_GA0_yAH09HeartRatepD0VAH018HeartRateAggregatepD0VGGA0_yA0_yA7_AH04ZonepD0VGA0_yAH010TimeInZonepD0VA11_GGGA0_yA0_yA0_yA14_AH04PacepD0VGA0_yA19_A19_GGA0_yA21_A0_yAH08DistancepD0VAH04LapspD0VGGGGA0_yA0_yA0_yA0_yA0_yA0_yAH07CadencepD0VAA05EmptyD0VGA32_GA32_GA0_yAH015ElevationChangepD0VAH016CurrentElevationpD0VGGA0_yA0_yAH05PowerpD0VA45_GA0_yA45_AH014FlightsClimbedpD0VGGGA0_yA0_yA0_yAH015SegmentDurationpD0VAH014DistanceDetailpD0VGA0_yA19_A2_GGA0_yA0_yA2_A45_GA0_yA45_AZyAZyAH0h4TimeD0VAH0P6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGA0_yA0_yA0_yA0_yA55_A19_GA0_yAH012StrideLengthpD0VA78_GGA0_yA0_yAH019VerticalOscillationpD0VA82_GA0_yAH017GroundContactTimepD0VA85_GGGA0_yA0_yA39_AH016DownhillRunCountpD0VGA0_yA34_AA6HStackVyAA05TupleD0VyAZyAA4TextVAH0P9ValueFontVG_AZyAZyA97_AH0P19DescriptionCoreFontVGAH26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGAA0V18AttachmentModifierVGAA30_EnvironmentKeyWritingModifierVyAH0hD5StyleOGGAA21_TraitWritingModifierVyAA01_F5TraitVyAH0hd5StyleF3KeyVGGG_Qo_GGMR);
  specialized _copySequenceToContiguousArray<A>(_:)(v4);
  v19[2] = v11;
  swift_getKeyPath();
  v12 = swift_allocObject();
  *(v12 + 16) = (v7 & 1) == 0;
  *(v12 + 24) = *v2;
  *(v12 + 40) = v5;
  *(v12 + 48) = v4;
  *(v12 + 56) = v6;
  v13 = swift_allocObject();
  *(v13 + 16) = partial apply for closure #1 in closure #1 in MirrorStackedMetricsView.body.getter;
  *(v13 + 24) = v12;
  outlined init with copy of ObservedObject<MetricsPublisher>(&v20, v19);
  v14 = v5;

  v15 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySi6offset_So19HKWorkoutMetricTypeV7elementtGMd, &_sSaySi6offset_So19HKWorkoutMetricTypeV7elementtGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA15ModifiedContentVyAIyAIyAA012_ConditionalK0VyAKyAKyAKyAKyAKy07WorkoutB0012EnergyMetricC0VANGAKyAL09HeartRateoC0VAL0pq9AggregateoC0VGGAKyAKyAsL04ZoneoC0VGAKyAL06TimeInsoC0VAWGGGAKyAKyAKyAzL04PaceoC0VGAKyA3_A3_GGAKyA5_AKyAL08DistanceoC0VAL04LapsoC0VGGGGAKyAKyAKyAKyAKyAKyAL07CadenceoC0VAA05EmptyC0VGA16_GA16_GAKyAL015ElevationChangeoC0VAL016CurrentElevationoC0VGGAKyAKyAL05PoweroC0VA29_GAKyA29_AL014FlightsClimbedoC0VGGGAKyAKyAKyAL015SegmentDurationoC0VAL0w6DetailoC0VGAKyA3_ANGGAKyAKyANA29_GAKyA29_AIyAIyAL0mtC0VAL0O6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGAKyAKyAKyAKyA39_A3_GAKyAL012StrideLengthoC0VA62_GGAKyAKyAL019VerticalOscillationoC0VA66_GAKyAL013GroundContacttoC0VA69_GGGAKyAKyA23_AL016DownhillRunCountoC0VGAKyA18_AA6HStackVyAA05TupleC0VyAIyAA4TextVAL0O9ValueFontVG_AIyAIyA81_AL0O19DescriptionCoreFontVGAL26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGAA0G18AttachmentModifierVGAA30_EnvironmentKeyWritingModifierVyAL0mC5StyleOGGAA21_TraitWritingModifierVyAA12_LayoutTraitVyAL0mC14StyleLayoutKeyVGGG_Qo_Md, &_s7SwiftUI4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA15ModifiedContentVyAIyAIyAA012_ConditionalK0VyAKyAKyAKyAKyAKy07WorkoutB0012EnergyMetricC0VANGAKyAL09HeartRateoC0VAL0pq9AggregateoC0VGGAKyAKyAsL04ZoneoC0VGAKyAL06TimeInsoC0VAWGGGAKyAKyAKyAzL04PaceoC0VGAKyA3_A3_GGAKyA5_AKyAL08DistanceoC0VAL04LapsoC0VGGGGAKyAKyAKyAKyAKyAKyAL07CadenceoC0VAA05EmptyC0VGA16_GA16_GAKyAL015ElevationChangeoC0VAL016CurrentElevationoC0VGGAKyAKyAL05PoweroC0VA29_GAKyA29_AL014FlightsClimbedoC0VGGGAKyAKyAKyAL015SegmentDurationoC0VAL0w6DetailoC0VGAKyA3_ANGGAKyAKyANA29_GAKyA29_AIyAIyAL0mtC0VAL0O6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGAKyAKyAKyAKyA39_A3_GAKyAL012StrideLengthoC0VA62_GGAKyAKyAL019VerticalOscillationoC0VA66_GAKyAL013GroundContacttoC0VA69_GGGAKyAKyA23_AL016DownhillRunCountoC0VGAKyA18_AA6HStackVyAA05TupleC0VyAIyAA4TextVAL0O9ValueFontVG_AIyAIyA81_AL0O19DescriptionCoreFontVGAL26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGAA0G18AttachmentModifierVGAA30_EnvironmentKeyWritingModifierVyAL0mC5StyleOGGAA21_TraitWritingModifierVyAA12_LayoutTraitVyAL0mC14StyleLayoutKeyVGGG_Qo_MR);
  _sSaySi6offset_So19HKWorkoutMetricTypeV7elementtGSayxGSksWlTm_1(&lazy protocol witness table cache variable for type [(offset: Int, element: HKWorkoutMetricType)] and conformance [A], &_sSaySi6offset_So19HKWorkoutMetricTypeV7elementtGMd, &_sSaySi6offset_So19HKWorkoutMetricTypeV7elementtGMR, MEMORY[0x277D83980]);
  v16 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA012_ConditionalD0VyAEyAEyAEyAEyAEy07WorkoutB016EnergyMetricViewVAHGAEyAF09HeartRatehI0VAF0jk9AggregatehI0VGGAEyAEyAmF04ZonehI0VGAEyAF06TimeInmhI0VAQGGGAEyAEyAEyAtF04PacehI0VGAEyA2YGGAEyA_AEyAF08DistancehI0VAF04LapshI0VGGGGAEyAEyAEyAEyAEyAEyAF07CadencehI0VAA05EmptyI0VGA10_GA10_GAEyAF015ElevationChangehI0VAF07CurrentuhI0VGGAEyAEyAF05PowerhI0VA23_GAEyA23_AF014FlightsClimbedhI0VGGGAEyAEyAEyAF015SegmentDurationhI0VAF0q6DetailhI0VGAEyAyHGGAEyAEyAHA23_GAEyA23_ACyACyAF0fnI0VAF0H6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGAEyAEyAEyAEyA33_AYGAEyAF012StrideLengthhI0VA56_GGAEyAEyAF019VerticalOscillationhI0VA60_GAEyAF013GroundContactnhI0VA63_GGGAEyAEyA17_AF016DownhillRunCounthI0VGAEyA12_AA6HStackVyAA05TupleI0VyACyAA4TextVAF0H9ValueFontVG_ACyACyA75_AF0H19DescriptionCoreFontVGAF26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGAA31AccessibilityAttachmentModifierVGAA30_EnvironmentKeyWritingModifierVyAF0fI5StyleOGGAA21_TraitWritingModifierVyAA12_LayoutTraitVyAF0fI14StyleLayoutKeyVGGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA012_ConditionalD0VyAEyAEyAEyAEyAEy07WorkoutB016EnergyMetricViewVAHGAEyAF09HeartRatehI0VAF0jk9AggregatehI0VGGAEyAEyAmF04ZonehI0VGAEyAF06TimeInmhI0VAQGGGAEyAEyAEyAtF04PacehI0VGAEyA2YGGAEyA_AEyAF08DistancehI0VAF04LapshI0VGGGGAEyAEyAEyAEyAEyAEyAF07CadencehI0VAA05EmptyI0VGA10_GA10_GAEyAF015ElevationChangehI0VAF07CurrentuhI0VGGAEyAEyAF05PowerhI0VA23_GAEyA23_AF014FlightsClimbedhI0VGGGAEyAEyAEyAF015SegmentDurationhI0VAF0q6DetailhI0VGAEyAyHGGAEyAEyAHA23_GAEyA23_ACyACyAF0fnI0VAF0H6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGAEyAEyAEyAEyA33_AYGAEyAF012StrideLengthhI0VA56_GGAEyAEyAF019VerticalOscillationhI0VA60_GAEyAF013GroundContactnhI0VA63_GGGAEyAEyA17_AF016DownhillRunCounthI0VGAEyA12_AA6HStackVyAA05TupleI0VyACyAA4TextVAF0H9ValueFontVG_ACyACyA75_AF0H19DescriptionCoreFontVGAF26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGAA31AccessibilityAttachmentModifierVGAA30_EnvironmentKeyWritingModifierVyAF0fI5StyleOGGAA21_TraitWritingModifierVyAA12_LayoutTraitVyAF0fI14StyleLayoutKeyVGGGMR);
  v17 = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentElevationMetricView>();
  v19[0] = v16;
  v19[1] = v17;
  swift_getOpaqueTypeConformance2();
  return ForEach<>.init(_:id:content:)();
}

void MirrorMetricsViewStackedLayout.sizeThatFits(proposal:subviews:cache:)(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, char a7)
{
  if ((a7 & 1) != 0 && (a4 & 1) == 0 && (a2 & 1) == 0)
  {
    v7 = specialized MirrorMetricsViewStackedLayout.determineHalfWidthPairs(subviews:)(a5);
    type metadata accessor for LayoutSubviews();
    _s9WorkoutUI19HeartRateMetricViewVAC05SwiftB00F0AAWlTm_0(&lazy protocol witness table cache variable for type LayoutSubviews and conformance LayoutSubviews, MEMORY[0x277CDF7F8], MEMORY[0x277CDF820]);
    dispatch thunk of Collection.startIndex.getter();
    dispatch thunk of Collection.endIndex.getter();
    v8 = dispatch thunk of Collection.distance(from:to:)();
    v9 = *(v7 + 16);

    if (__OFSUB__(v8, v9))
    {
      __break(1u);
    }

    else
    {
      MetricPlatterConstants.init()(v10);
      MetricPlatterConstants.init()(v10);
    }
  }
}

void MirrorMetricsViewStackedLayout.placeSubviews(in:proposal:subviews:cache:)(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, double a5, double a6, uint64_t a7, char a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, char a13)
{
  v42 = a4;
  v43 = a3;
  v41 = type metadata accessor for LayoutSubview();
  v18 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v20 = &v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for LayoutSubviews();
  _s9WorkoutUI19HeartRateMetricViewVAC05SwiftB00F0AAWlTm_0(&lazy protocol witness table cache variable for type LayoutSubviews and conformance LayoutSubviews, MEMORY[0x277CDF7F8], MEMORY[0x277CDF820]);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  if (dispatch thunk of Collection.distance(from:to:)() > 8)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v21 = specialized MirrorMetricsViewStackedLayout.determineHalfWidthPairs(subviews:)(a11);
  if (a8)
  {
    v46.origin.x = a1;
    v46.origin.y = a2;
    v46.size.height = v42;
    v46.size.width = v43;
    CGRectGetWidth(v46);
  }

  if (a10)
  {
    v22 = v18;
    v47.origin.x = a1;
    v47.origin.y = a2;
    v47.size.height = v42;
    v47.size.width = v43;
    CGRectGetHeight(v47);
  }

  else
  {
    v22 = v18;
  }

  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  if (__OFSUB__(dispatch thunk of Collection.distance(from:to:)(), *(v21 + 16)))
  {
    goto LABEL_27;
  }

  MetricPlatterConstants.init()(v44);
  MetricPlatterConstants.init()(v44);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  v23 = dispatch thunk of Collection.distance(from:to:)();
  if ((v23 & 0x8000000000000000) == 0)
  {
    if (!v23)
    {
LABEL_24:

      return;
    }

    v24 = 0;
    v25 = 0;
    v26 = *(v21 + 16);
    v27 = v43;
    v39 = a11;
    v40 = (v21 + 40);
    v28 = -v26;
    v29 = v23;
LABEL_12:
    v30 = v25++;
    v31 = -1;
    v32 = v40;
    while (1)
    {
      if (v28 + v31 == -1)
      {
        v34 = 1;
        goto LABEL_20;
      }

      if (++v31 >= *(v21 + 16))
      {
        break;
      }

      v33 = *v32;
      if (*(v32 - 1) == v30)
      {
        v34 = 0;
LABEL_20:
        v35 = a1;
        v36 = a2;
        v37 = v42;
        CGRectGetMidX(*(&v27 - 2));
        LayoutSubviews.subscript.getter();
        MetricPlatterConstants.init()(v44);
        static UnitPoint.topLeading.getter();
        v44[0] = 0;
        v45 = 0;
        LayoutSubview.place(at:anchor:proposal:)();
        (*(v22 + 8))(v20, v41);
        if (v34)
        {
          if (__OFADD__(v24++, 1))
          {
            __break(1u);
            goto LABEL_24;
          }
        }

        v27 = v43;
        if (v25 == v29)
        {
          goto LABEL_24;
        }

        goto LABEL_12;
      }

      v32 += 2;
      if (v33 == v30)
      {
        v34 = 1;
        goto LABEL_20;
      }
    }

    __break(1u);
    goto LABEL_26;
  }

LABEL_28:
  __break(1u);
}

uint64_t protocol witness for Layout.explicitAlignment(of:in:proposal:subviews:cache:) in conformance MirrorMetricsViewStackedLayout(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  return protocol witness for Layout.explicitAlignment(of:in:proposal:subviews:cache:) in conformance MirrorMetricsViewStackedLayout(a1, a2, a3, a4, a5, a6, a7, a8, a9, MEMORY[0x277CE1158]);
}

{
  return protocol witness for Layout.explicitAlignment(of:in:proposal:subviews:cache:) in conformance MirrorMetricsViewStackedLayout(a1, a2, a3, a4, a5, a6, a7, a8, a9, MEMORY[0x277CE1160]);
}

uint64_t (*protocol witness for Animatable.animatableData.modify in conformance MirrorMetricsViewStackedLayout(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = Animatable<>.animatableData.modify();
  return protocol witness for Animatable.animatableData.modify in conformance MirrorMetricsViewStackedLayout;
}

void protocol witness for Animatable.animatableData.modify in conformance MirrorMetricsViewStackedLayout(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

double specialized MirrorMetricsViewStackedLayout.init(verticallyCenter:)()
{
  v0 = objc_opt_self();

  v1 = objc_opt_self();
  v2 = [v1 mainScreen];
  [v2 scale];
  v4 = v3;

  v5 = [v1 mainScreen];
  [v5 nativeScale];
  v7 = v6;

  if (v4 == v7)
  {
    v8 = 54.0;
  }

  else
  {
    v8 = 44.0;
  }

  v9 = [v1 mainScreen];
  [v9 scale];
  v11 = v10;

  v12 = [v1 mainScreen];
  [v12 nativeScale];
  v14 = v13;

  if (v11 == v14)
  {
    v15 = 57.0;
  }

  else
  {
    v15 = 67.0;
  }

  v16 = [v0 currentDevice];
  v17 = specialized UIDevice.screenType.getter();

  if (v17 <= 4u)
  {
    if (v17 >= 3u)
    {
      v8 = v15;
    }
  }

  else
  {
    if (v17 > 7u)
    {
      if (v17 == 8)
      {
        *&v18 = 62.0;
      }

      else
      {
        *&v18 = 66.0;
      }
    }

    else if (v17 == 5 || v17 == 6)
    {
      *&v18 = 57.0;
    }

    else
    {
      *&v18 = 60.0;
    }

    v8 = *&v18;
  }

  v19 = [v1 mainScreen];
  [v19 scale];
  v21 = v20;

  v22 = [v1 mainScreen];
  [v22 nativeScale];
  v24 = v23;

  if (v21 != v24)
  {
    v25 = [v1 mainScreen];
    [v25 scale];
    v27 = v26;

    v28 = [v1 mainScreen];
    [v28 nativeScale];
    v30 = v29;

    return v8 * (v27 / v30 * 0.95);
  }

  return v8;
}

uint64_t outlined init with copy of ObservedObject<MetricsPublisher>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI14ObservedObjectVy11WorkoutCore16MetricsPublisherCGMd, &_s7SwiftUI14ObservedObjectVy11WorkoutCore16MetricsPublisherCGMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentElevationMetricView>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentElevationMetri;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentElevationMetri)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA012_ConditionalD0VyAEyAEyAEyAEyAEy07WorkoutB016EnergyMetricViewVAHGAEyAF09HeartRatehI0VAF0jk9AggregatehI0VGGAEyAEyAmF04ZonehI0VGAEyAF06TimeInmhI0VAQGGGAEyAEyAEyAtF04PacehI0VGAEyA2YGGAEyA_AEyAF08DistancehI0VAF04LapshI0VGGGGAEyAEyAEyAEyAEyAEyAF07CadencehI0VAA05EmptyI0VGA10_GA10_GAEyAF015ElevationChangehI0VAF07CurrentuhI0VGGAEyAEyAF05PowerhI0VA23_GAEyA23_AF014FlightsClimbedhI0VGGGAEyAEyAEyAF015SegmentDurationhI0VAF0q6DetailhI0VGAEyAyHGGAEyAEyAHA23_GAEyA23_ACyACyAF0fnI0VAF0H6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGAEyAEyAEyAEyA33_AYGAEyAF012StrideLengthhI0VA56_GGAEyAEyAF019VerticalOscillationhI0VA60_GAEyAF013GroundContactnhI0VA63_GGGAEyAEyA17_AF016DownhillRunCounthI0VGAEyA12_AA6HStackVyAA05TupleI0VyACyAA4TextVAF0H9ValueFontVG_ACyACyA75_AF0H19DescriptionCoreFontVGAF26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGAA31AccessibilityAttachmentModifierVGAA30_EnvironmentKeyWritingModifierVyAF0fI5StyleOGGAA21_TraitWritingModifierVyAA12_LayoutTraitVyAF0fI14StyleLayoutKeyVGGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA012_ConditionalD0VyAEyAEyAEyAEyAEy07WorkoutB016EnergyMetricViewVAHGAEyAF09HeartRatehI0VAF0jk9AggregatehI0VGGAEyAEyAmF04ZonehI0VGAEyAF06TimeInmhI0VAQGGGAEyAEyAEyAtF04PacehI0VGAEyA2YGGAEyA_AEyAF08DistancehI0VAF04LapshI0VGGGGAEyAEyAEyAEyAEyAEyAF07CadencehI0VAA05EmptyI0VGA10_GA10_GAEyAF015ElevationChangehI0VAF07CurrentuhI0VGGAEyAEyAF05PowerhI0VA23_GAEyA23_AF014FlightsClimbedhI0VGGGAEyAEyAEyAF015SegmentDurationhI0VAF0q6DetailhI0VGAEyAyHGGAEyAEyAHA23_GAEyA23_ACyACyAF0fnI0VAF0H6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGAEyAEyAEyAEyA33_AYGAEyAF012StrideLengthhI0VA56_GGAEyAEyAF019VerticalOscillationhI0VA60_GAEyAF013GroundContactnhI0VA63_GGGAEyAEyA17_AF016DownhillRunCounthI0VGAEyA12_AA6HStackVyAA05TupleI0VyACyAA4TextVAF0H9ValueFontVG_ACyACyA75_AF0H19DescriptionCoreFontVGAF26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGAA31AccessibilityAttachmentModifierVGAA30_EnvironmentKeyWritingModifierVyAF0fI5StyleOGGAA21_TraitWritingModifierVyAA12_LayoutTraitVyAF0fI14StyleLayoutKeyVGGGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentElevationMetricView>>, _ConditionalC();
    _sSaySi6offset_So19HKWorkoutMetricTypeV7elementtGSayxGSksWlTm_1(&lazy protocol witness table cache variable for type _TraitWritingModifier<_LayoutTrait<WorkoutViewStyleLayoutKey>> and conformance _TraitWritingModifier<A>, &_s7SwiftUI21_TraitWritingModifierVyAA07_LayoutC0Vy07WorkoutB00g9ViewStyleF3KeyVGGMd, &_s7SwiftUI21_TraitWritingModifierVyAA07_LayoutC0Vy07WorkoutB00g9ViewStyleF3KeyVGGMR, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentElevationMetri);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentElevationMetri;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentElevationMetri)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA012_ConditionalD0VyAEyAEyAEyAEyAEy07WorkoutB016EnergyMetricViewVAHGAEyAF09HeartRatehI0VAF0jk9AggregatehI0VGGAEyAEyAmF04ZonehI0VGAEyAF06TimeInmhI0VAQGGGAEyAEyAEyAtF04PacehI0VGAEyA2YGGAEyA_AEyAF08DistancehI0VAF04LapshI0VGGGGAEyAEyAEyAEyAEyAEyAF07CadencehI0VAA05EmptyI0VGA10_GA10_GAEyAF015ElevationChangehI0VAF07CurrentuhI0VGGAEyAEyAF05PowerhI0VA23_GAEyA23_AF014FlightsClimbedhI0VGGGAEyAEyAEyAF015SegmentDurationhI0VAF0q6DetailhI0VGAEyAyHGGAEyAEyAHA23_GAEyA23_ACyACyAF0fnI0VAF0H6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGAEyAEyAEyAEyA33_AYGAEyAF012StrideLengthhI0VA56_GGAEyAEyAF019VerticalOscillationhI0VA60_GAEyAF013GroundContactnhI0VA63_GGGAEyAEyA17_AF016DownhillRunCounthI0VGAEyA12_AA6HStackVyAA05TupleI0VyACyAA4TextVAF0H9ValueFontVG_ACyACyA75_AF0H19DescriptionCoreFontVGAF26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGAA31AccessibilityAttachmentModifierVGAA30_EnvironmentKeyWritingModifierVyA46_SgGGA96_yAF0fI5StyleOGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA012_ConditionalD0VyAEyAEyAEyAEyAEy07WorkoutB016EnergyMetricViewVAHGAEyAF09HeartRatehI0VAF0jk9AggregatehI0VGGAEyAEyAmF04ZonehI0VGAEyAF06TimeInmhI0VAQGGGAEyAEyAEyAtF04PacehI0VGAEyA2YGGAEyA_AEyAF08DistancehI0VAF04LapshI0VGGGGAEyAEyAEyAEyAEyAEyAF07CadencehI0VAA05EmptyI0VGA10_GA10_GAEyAF015ElevationChangehI0VAF07CurrentuhI0VGGAEyAEyAF05PowerhI0VA23_GAEyA23_AF014FlightsClimbedhI0VGGGAEyAEyAEyAF015SegmentDurationhI0VAF0q6DetailhI0VGAEyAyHGGAEyAEyAHA23_GAEyA23_ACyACyAF0fnI0VAF0H6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGAEyAEyAEyAEyA33_AYGAEyAF012StrideLengthhI0VA56_GGAEyAEyAF019VerticalOscillationhI0VA60_GAEyAF013GroundContactnhI0VA63_GGGAEyAEyA17_AF016DownhillRunCounthI0VGAEyA12_AA6HStackVyAA05TupleI0VyACyAA4TextVAF0H9ValueFontVG_ACyACyA75_AF0H19DescriptionCoreFontVGAF26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGAA31AccessibilityAttachmentModifierVGAA30_EnvironmentKeyWritingModifierVyA46_SgGGA96_yAF0fI5StyleOGGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentElevationMetricView>>, _ConditionalC();
    _s7SwiftUI24_ForegroundStyleModifierVyAA5ColorVGACyxGAA04ViewE0AAWlTm_3(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<WorkoutViewStyle> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy07WorkoutB00G9ViewStyleOGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy07WorkoutB00G9ViewStyleOGMR, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentElevationMetri);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentElevationMetricView>>, _ConditionalC()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentElevationMetricView>>, _Condit;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentElevationMetricView>>, _Condit)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA012_ConditionalD0VyAEyAEyAEyAEyAEy07WorkoutB016EnergyMetricViewVAHGAEyAF09HeartRatehI0VAF0jk9AggregatehI0VGGAEyAEyAmF04ZonehI0VGAEyAF06TimeInmhI0VAQGGGAEyAEyAEyAtF04PacehI0VGAEyA2YGGAEyA_AEyAF08DistancehI0VAF04LapshI0VGGGGAEyAEyAEyAEyAEyAEyAF07CadencehI0VAA05EmptyI0VGA10_GA10_GAEyAF015ElevationChangehI0VAF07CurrentuhI0VGGAEyAEyAF05PowerhI0VA23_GAEyA23_AF014FlightsClimbedhI0VGGGAEyAEyAEyAF015SegmentDurationhI0VAF0q6DetailhI0VGAEyAyHGGAEyAEyAHA23_GAEyA23_ACyACyAF0fnI0VAF0H6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGAEyAEyAEyAEyA33_AYGAEyAF012StrideLengthhI0VA56_GGAEyAEyAF019VerticalOscillationhI0VA60_GAEyAF013GroundContactnhI0VA63_GGGAEyAEyA17_AF016DownhillRunCounthI0VGAEyA12_AA6HStackVyAA05TupleI0VyACyAA4TextVAF0H9ValueFontVG_ACyACyA75_AF0H19DescriptionCoreFontVGAF26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGAA31AccessibilityAttachmentModifierVGAA30_EnvironmentKeyWritingModifierVyAF0fI5StyleOGGMd, &_s7SwiftUI15ModifiedContentVyACyAA012_ConditionalD0VyAEyAEyAEyAEyAEy07WorkoutB016EnergyMetricViewVAHGAEyAF09HeartRatehI0VAF0jk9AggregatehI0VGGAEyAEyAmF04ZonehI0VGAEyAF06TimeInmhI0VAQGGGAEyAEyAEyAtF04PacehI0VGAEyA2YGGAEyA_AEyAF08DistancehI0VAF04LapshI0VGGGGAEyAEyAEyAEyAEyAEyAF07CadencehI0VAA05EmptyI0VGA10_GA10_GAEyAF015ElevationChangehI0VAF07CurrentuhI0VGGAEyAEyAF05PowerhI0VA23_GAEyA23_AF014FlightsClimbedhI0VGGGAEyAEyAEyAF015SegmentDurationhI0VAF0q6DetailhI0VGAEyAyHGGAEyAEyAHA23_GAEyA23_ACyACyAF0fnI0VAF0H6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGAEyAEyAEyAEyA33_AYGAEyAF012StrideLengthhI0VA56_GGAEyAEyAF019VerticalOscillationhI0VA60_GAEyAF013GroundContactnhI0VA63_GGGAEyAEyA17_AF016DownhillRunCounthI0VGAEyA12_AA6HStackVyAA05TupleI0VyACyAA4TextVAF0H9ValueFontVG_ACyACyA75_AF0H19DescriptionCoreFontVGAF26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGAA31AccessibilityAttachmentModifierVGAA30_EnvironmentKeyWritingModifierVyAF0fI5StyleOGGMR);
    lazy protocol witness table accessor for type ModifiedContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentElevationMetricView>>, _ConditionalContent<_Conditio();
    _sSaySi6offset_So19HKWorkoutMetricTypeV7elementtGSayxGSksWlTm_1(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<WorkoutViewStyle> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy07WorkoutB00G9ViewStyleOGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy07WorkoutB00G9ViewStyleOGMR, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentElevationMetricView>>, _Condit);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentElevationMetricView>>, _Condit;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentElevationMetricView>>, _Condit)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA012_ConditionalD0VyAEyAEyAEyAEyAEy07WorkoutB016EnergyMetricViewVAHGAEyAF09HeartRatehI0VAF0jk9AggregatehI0VGGAEyAEyAmF04ZonehI0VGAEyAF06TimeInmhI0VAQGGGAEyAEyAEyAtF04PacehI0VGAEyA2YGGAEyA_AEyAF08DistancehI0VAF04LapshI0VGGGGAEyAEyAEyAEyAEyAEyAF07CadencehI0VAA05EmptyI0VGA10_GA10_GAEyAF015ElevationChangehI0VAF07CurrentuhI0VGGAEyAEyAF05PowerhI0VA23_GAEyA23_AF014FlightsClimbedhI0VGGGAEyAEyAEyAF015SegmentDurationhI0VAF0q6DetailhI0VGAEyAyHGGAEyAEyAHA23_GAEyA23_ACyACyAF0fnI0VAF0H6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGAEyAEyAEyAEyA33_AYGAEyAF012StrideLengthhI0VA56_GGAEyAEyAF019VerticalOscillationhI0VA60_GAEyAF013GroundContactnhI0VA63_GGGAEyAEyA17_AF016DownhillRunCounthI0VGAEyA12_AA6HStackVyAA05TupleI0VyACyAA4TextVAF0H9ValueFontVG_ACyACyA75_AF0H19DescriptionCoreFontVGAF26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGAA31AccessibilityAttachmentModifierVGAA30_EnvironmentKeyWritingModifierVyA46_SgGGMd, &_s7SwiftUI15ModifiedContentVyACyAA012_ConditionalD0VyAEyAEyAEyAEyAEy07WorkoutB016EnergyMetricViewVAHGAEyAF09HeartRatehI0VAF0jk9AggregatehI0VGGAEyAEyAmF04ZonehI0VGAEyAF06TimeInmhI0VAQGGGAEyAEyAEyAtF04PacehI0VGAEyA2YGGAEyA_AEyAF08DistancehI0VAF04LapshI0VGGGGAEyAEyAEyAEyAEyAEyAF07CadencehI0VAA05EmptyI0VGA10_GA10_GAEyAF015ElevationChangehI0VAF07CurrentuhI0VGGAEyAEyAF05PowerhI0VA23_GAEyA23_AF014FlightsClimbedhI0VGGGAEyAEyAEyAF015SegmentDurationhI0VAF0q6DetailhI0VGAEyAyHGGAEyAEyAHA23_GAEyA23_ACyACyAF0fnI0VAF0H6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGAEyAEyAEyAEyA33_AYGAEyAF012StrideLengthhI0VA56_GGAEyAEyAF019VerticalOscillationhI0VA60_GAEyAF013GroundContactnhI0VA63_GGGAEyAEyA17_AF016DownhillRunCounthI0VGAEyA12_AA6HStackVyAA05TupleI0VyACyAA4TextVAF0H9ValueFontVG_ACyACyA75_AF0H19DescriptionCoreFontVGAF26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGAA31AccessibilityAttachmentModifierVGAA30_EnvironmentKeyWritingModifierVyA46_SgGGMR);
    lazy protocol witness table accessor for type ModifiedContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentElevationMetricView>>, _ConditionalContent<_Conditio();
    _s7SwiftUI24_ForegroundStyleModifierVyAA5ColorVGACyxGAA04ViewE0AAWlTm_3(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Color?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVSgGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVSgGMR, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentElevationMetricView>>, _Condit);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentElevationMetricView>>, _ConditionalContent<_Conditio()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentElevationMetricView>>, _ConditionalContent<_Co;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentElevationMetricView>>, _ConditionalContent<_Co)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA012_ConditionalD0VyAEyAEyAEyAEyAEy07WorkoutB016EnergyMetricViewVAHGAEyAF09HeartRatehI0VAF0jk9AggregatehI0VGGAEyAEyAmF04ZonehI0VGAEyAF06TimeInmhI0VAQGGGAEyAEyAEyAtF04PacehI0VGAEyA2YGGAEyA_AEyAF08DistancehI0VAF04LapshI0VGGGGAEyAEyAEyAEyAEyAEyAF07CadencehI0VAA05EmptyI0VGA10_GA10_GAEyAF015ElevationChangehI0VAF07CurrentuhI0VGGAEyAEyAF05PowerhI0VA23_GAEyA23_AF014FlightsClimbedhI0VGGGAEyAEyAEyAF015SegmentDurationhI0VAF0q6DetailhI0VGAEyAyHGGAEyAEyAHA23_GAEyA23_ACyACyAF0fnI0VAF0H6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGAEyAEyAEyAEyA33_AYGAEyAF012StrideLengthhI0VA56_GGAEyAEyAF019VerticalOscillationhI0VA60_GAEyAF013GroundContactnhI0VA63_GGGAEyAEyA17_AF016DownhillRunCounthI0VGAEyA12_AA6HStackVyAA05TupleI0VyACyAA4TextVAF0H9ValueFontVG_ACyACyA75_AF0H19DescriptionCoreFontVGAF26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGAA31AccessibilityAttachmentModifierVGMd, &_s7SwiftUI15ModifiedContentVyAA012_ConditionalD0VyAEyAEyAEyAEyAEy07WorkoutB016EnergyMetricViewVAHGAEyAF09HeartRatehI0VAF0jk9AggregatehI0VGGAEyAEyAmF04ZonehI0VGAEyAF06TimeInmhI0VAQGGGAEyAEyAEyAtF04PacehI0VGAEyA2YGGAEyA_AEyAF08DistancehI0VAF04LapshI0VGGGGAEyAEyAEyAEyAEyAEyAF07CadencehI0VAA05EmptyI0VGA10_GA10_GAEyAF015ElevationChangehI0VAF07CurrentuhI0VGGAEyAEyAF05PowerhI0VA23_GAEyA23_AF014FlightsClimbedhI0VGGGAEyAEyAEyAF015SegmentDurationhI0VAF0q6DetailhI0VGAEyAyHGGAEyAEyAHA23_GAEyA23_ACyACyAF0fnI0VAF0H6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGAEyAEyAEyAEyA33_AYGAEyAF012StrideLengthhI0VA56_GGAEyAEyAF019VerticalOscillationhI0VA60_GAEyAF013GroundContactnhI0VA63_GGGAEyAEyA17_AF016DownhillRunCounthI0VGAEyA12_AA6HStackVyAA05TupleI0VyACyAA4TextVAF0H9ValueFontVG_ACyACyA75_AF0H19DescriptionCoreFontVGAF26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGAA31AccessibilityAttachmentModifierVGMR);
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentElevationMetricView>>, _ConditionalContent<_ConditionalContent<Power();
    _s9WorkoutUI19HeartRateMetricViewVAC05SwiftB00F0AAWlTm_0(&lazy protocol witness table cache variable for type AccessibilityAttachmentModifier and conformance AccessibilityAttachmentModifier, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentElevationMetricView>>, _ConditionalContent<_Co);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ModifiedContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentElevationMetricView>>, _ConditionalContent<_Co;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentElevationMetricView>>, _ConditionalContent<_Co)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA012_ConditionalD0VyAEyAEyAEyAEyAEy07WorkoutB016EnergyMetricViewVAHGAEyAF09HeartRatehI0VAF0jk9AggregatehI0VGGAEyAEyAmF04ZonehI0VGAEyAF06TimeInmhI0VAQGGGAEyAEyAEyAtF04PacehI0VGAEyA2YGGAEyA_AEyAF08DistancehI0VAF04LapshI0VGGGGAEyAEyAEyAEyAEyAEyAF07CadencehI0VAA05EmptyI0VGA10_GA10_GAEyAF015ElevationChangehI0VAF07CurrentuhI0VGGAEyAEyAF05PowerhI0VA23_GAEyA23_AF014FlightsClimbedhI0VGGGAEyAEyAEyAF015SegmentDurationhI0VAF0q6DetailhI0VGAEyAyHGGAEyAEyAHA23_GAEyA23_ACyACyAF0fnI0VAF0H6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGAEyAEyAEyAEyA33_AYGAEyAF012StrideLengthhI0VA56_GGAEyAEyAF019VerticalOscillationhI0VA60_GAEyAF013GroundContactnhI0VA63_GGGAEyAEyA17_AF016DownhillRunCounthI0VGAEyA12_AA6HStackVyAA05TupleI0VyACyAA4TextVAF0H9ValueFontVG_ACyACyA75_AF0H19DescriptionCoreFontVGAF26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGAA30_EnvironmentKeyWritingModifierVyAF0fI5StyleOGGMd, &_s7SwiftUI15ModifiedContentVyAA012_ConditionalD0VyAEyAEyAEyAEyAEy07WorkoutB016EnergyMetricViewVAHGAEyAF09HeartRatehI0VAF0jk9AggregatehI0VGGAEyAEyAmF04ZonehI0VGAEyAF06TimeInmhI0VAQGGGAEyAEyAEyAtF04PacehI0VGAEyA2YGGAEyA_AEyAF08DistancehI0VAF04LapshI0VGGGGAEyAEyAEyAEyAEyAEyAF07CadencehI0VAA05EmptyI0VGA10_GA10_GAEyAF015ElevationChangehI0VAF07CurrentuhI0VGGAEyAEyAF05PowerhI0VA23_GAEyA23_AF014FlightsClimbedhI0VGGGAEyAEyAEyAF015SegmentDurationhI0VAF0q6DetailhI0VGAEyAyHGGAEyAEyAHA23_GAEyA23_ACyACyAF0fnI0VAF0H6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGAEyAEyAEyAEyA33_AYGAEyAF012StrideLengthhI0VA56_GGAEyAEyAF019VerticalOscillationhI0VA60_GAEyAF013GroundContactnhI0VA63_GGGAEyAEyA17_AF016DownhillRunCounthI0VGAEyA12_AA6HStackVyAA05TupleI0VyACyAA4TextVAF0H9ValueFontVG_ACyACyA75_AF0H19DescriptionCoreFontVGAF26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGAA30_EnvironmentKeyWritingModifierVyAF0fI5StyleOGGMR);
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentElevationMetricView>>, _ConditionalContent<_ConditionalContent<Power();
    lazy protocol witness table accessor for type ZStack<TupleView<(ModifiedContent<MirrorArcView, AccessibilityAttachmentModifier>, ModifiedContent<MetricText, _FrameLayout>)>> and conformance ZStack<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<WorkoutViewStyle> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy07WorkoutB00G9ViewStyleOGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy07WorkoutB00G9ViewStyleOGMR, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentElevationMetricView>>, _ConditionalContent<_Co);
  }

  return result;
}

uint64_t outlined init with take of ModifiedContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentElevationMetricView>>, _ConditionalContent<_ConditionalContent<PowerMet(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t outlined destroy of MetricPlatterType?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t getEnumTagSinglePayload for MirrorMetricsViewStackedLayout(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[24])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for MirrorMetricsViewStackedLayout(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t _sSaySi6offset_So19HKWorkoutMetricTypeV7elementtGSayxGSksWlTm_1(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

unint64_t lazy protocol witness table accessor for type MirrorMetricsViewStackedLayout and conformance MirrorMetricsViewStackedLayout()
{
  result = lazy protocol witness table cache variable for type MirrorMetricsViewStackedLayout and conformance MirrorMetricsViewStackedLayout;
  if (!lazy protocol witness table cache variable for type MirrorMetricsViewStackedLayout and conformance MirrorMetricsViewStackedLayout)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MirrorMetricsViewStackedLayout and conformance MirrorMetricsViewStackedLayout);
  }

  return result;
}

uint64_t _s9WorkoutUI19HeartRateMetricViewVAC05SwiftB00F0AAWlTm_0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t specialized MirrorMetricsViewStackedLayout.determineHalfWidthPairs(subviews:)(uint64_t a1)
{
  v35 = type metadata accessor for LayoutSubview();
  v2 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for LayoutSubviews();
  _s9WorkoutUI19HeartRateMetricViewVAC05SwiftB00F0AAWlTm_0(&lazy protocol witness table cache variable for type LayoutSubviews and conformance LayoutSubviews, MEMORY[0x277CDF7F8], MEMORY[0x277CDF820]);
  v4 = dispatch thunk of Collection.count.getter();
  v5 = MEMORY[0x277D84F90];
  if (v4)
  {
    v6 = v4;
    v37 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4 & ~(v4 >> 63), 0);
    v5 = v37;
    result = dispatch thunk of Collection.startIndex.getter();
    if (v6 < 0)
    {
LABEL_38:
      __break(1u);
      return result;
    }

    v33 = (v2 + 16);
    do
    {
      v8 = dispatch thunk of Collection.subscript.read();
      v9 = v34;
      v10 = v35;
      (*v33)(v34);
      v8(v36, 0);
      lazy protocol witness table accessor for type WorkoutViewStyleLayoutKey and conformance WorkoutViewStyleLayoutKey();
      LayoutSubview.subscript.getter();
      (*(v2 + 8))(v9, v10);
      v11 = v36[0];
      v37 = v5;
      v12 = a1;
      v14 = *(v5 + 16);
      v13 = *(v5 + 24);
      if (v14 >= v13 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1);
        v5 = v37;
      }

      *(v5 + 16) = v14 + 1;
      *(v5 + v14 + 32) = v11;
      dispatch thunk of Collection.formIndex(after:)();
      --v6;
      a1 = v12;
    }

    while (v6);
  }

  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  result = dispatch thunk of Collection.distance(from:to:)();
  if (result < 0)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v15 = result;
  if (result)
  {
    v16 = 0;
    v17 = v5 + 32;
    v18 = MEMORY[0x277D84F90];
    while (2)
    {
      v20 = v16++;
      v21 = *(v18 + 16);
      v22 = (v18 + 40);
      v23 = v21 + 1;
      while (--v23)
      {
        v25 = *(v22 - 1);
        v24 = *v22;
        v22 += 2;
        if (v25 == v20 || v24 == v20)
        {
          goto LABEL_11;
        }
      }

      v27 = *(v5 + 16);
      if (v20 < v27)
      {
        v28 = *(v17 + v20);
        if (v28 == 5)
        {
          if (v16 >= v27)
          {
            goto LABEL_11;
          }
        }

        else if (v16 >= v27 || v28 != 6)
        {
          goto LABEL_11;
        }

        if (*(v17 + v16) - 5 <= 1)
        {
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v21 + 1, 1, v18);
            v18 = result;
          }

          v31 = *(v18 + 16);
          v30 = *(v18 + 24);
          if (v31 >= v30 >> 1)
          {
            result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v30 > 1), v31 + 1, 1, v18);
            v18 = result;
          }

          *(v18 + 16) = v31 + 1;
          v19 = v18 + 16 * v31;
          *(v19 + 32) = v20;
          *(v19 + 40) = v16;
        }

LABEL_11:
        if (v16 == v15)
        {
          goto LABEL_35;
        }

        continue;
      }

      break;
    }

    __break(1u);
    goto LABEL_37;
  }

  v18 = MEMORY[0x277D84F90];
LABEL_35:

  return v18;
}

unint64_t lazy protocol witness table accessor for type WorkoutViewStyleLayoutKey and conformance WorkoutViewStyleLayoutKey()
{
  result = lazy protocol witness table cache variable for type WorkoutViewStyleLayoutKey and conformance WorkoutViewStyleLayoutKey;
  if (!lazy protocol witness table cache variable for type WorkoutViewStyleLayoutKey and conformance WorkoutViewStyleLayoutKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkoutViewStyleLayoutKey and conformance WorkoutViewStyleLayoutKey);
  }

  return result;
}

uint64_t type metadata completion function for TrainingLoadDayWidgetSystemSmallView(uint64_t a1)
{
  result = type metadata accessor for TrainingLoadDayEntry(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t TrainingLoadDayWidgetSystemSmallView.body.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss19PartialRangeThroughVy7SwiftUI15DynamicTypeSizeOGMd, &_ss19PartialRangeThroughVy7SwiftUI15DynamicTypeSizeOGMR);
  MEMORY[0x28223BE20](v1);
  v3 = v10 - v2;
  DayWidgetSystemSmallContentView = type metadata accessor for TrainingLoadDayWidgetSystemSmallContentView(0);
  MEMORY[0x28223BE20](DayWidgetSystemSmallContentView);
  v6 = v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of TrainingLoadDayEntry(v0, v6);
  *&v6[*(DayWidgetSystemSmallContentView + 24)] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA16RedactionReasonsV_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA16RedactionReasonsV_GMR);
  swift_storeEnumTagMultiPayload();
  v10[1] = 0x4034000000000000;
  lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
  ScaledMetric.init(wrappedValue:)();
  v7 = *MEMORY[0x277CDFA10];
  v8 = type metadata accessor for DynamicTypeSize();
  (*(*(v8 - 8) + 104))(v3, v7, v8);
  lazy protocol witness table accessor for type DynamicTypeSize and conformance DynamicTypeSize(&lazy protocol witness table cache variable for type DynamicTypeSize and conformance DynamicTypeSize, MEMORY[0x277CDFA28], MEMORY[0x277CDFA48]);
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if (result)
  {
    lazy protocol witness table accessor for type DynamicTypeSize and conformance DynamicTypeSize(&lazy protocol witness table cache variable for type TrainingLoadDayWidgetSystemSmallContentView and conformance TrainingLoadDayWidgetSystemSmallContentView, type metadata accessor for TrainingLoadDayWidgetSystemSmallContentView, &protocol conformance descriptor for TrainingLoadDayWidgetSystemSmallContentView);
    lazy protocol witness table accessor for type PartialRangeThrough<DynamicTypeSize> and conformance PartialRangeThrough<A>(&lazy protocol witness table cache variable for type PartialRangeThrough<DynamicTypeSize> and conformance PartialRangeThrough<A>, &_ss19PartialRangeThroughVy7SwiftUI15DynamicTypeSizeOGMd, &_ss19PartialRangeThroughVy7SwiftUI15DynamicTypeSizeOGMR, MEMORY[0x277D84470]);
    View.dynamicTypeSize<A>(_:)();
    outlined destroy of PartialRangeThrough<DynamicTypeSize>(v3, &_ss19PartialRangeThroughVy7SwiftUI15DynamicTypeSizeOGMd, &_ss19PartialRangeThroughVy7SwiftUI15DynamicTypeSizeOGMR);
    return outlined destroy of TrainingLoadDayWidgetSystemSmallContentView(v6);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t type metadata accessor for TrainingLoadDayWidgetSystemSmallView(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined init with copy of TrainingLoadDayEntry(uint64_t a1, uint64_t a2)
{
  DayEntry = type metadata accessor for TrainingLoadDayEntry(0);
  (*(*(DayEntry - 8) + 16))(a2, a1, DayEntry);
  return a2;
}

uint64_t TrainingLoadDayWidgetSystemSmallContentView.redactionReasons.getter@<X0>(void *a1@<X8>)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA16RedactionReasonsV_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA16RedactionReasonsV_GMR);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  DayWidgetSystemSmallContentView = type metadata accessor for TrainingLoadDayWidgetSystemSmallContentView(0);
  outlined init with copy of ModifiedContent<TrainingLoadDayView, _FlexFrameLayout>(v1 + *(DayWidgetSystemSmallContentView + 24), v9, &_s7SwiftUI11EnvironmentV7ContentOyAA16RedactionReasonsV_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA16RedactionReasonsV_GMR);
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

uint64_t TrainingLoadDayWidgetSystemSmallContentView.loadBandTodayPercentage.getter()
{
  v1 = v0;
  v2 = type metadata accessor for RedactionReasons();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v18 - v7;
  TrainingLoadDayWidgetSystemSmallContentView.redactionReasons.getter((&v18 - v7));
  v9 = MEMORY[0x277CDFB98];
  lazy protocol witness table accessor for type DynamicTypeSize and conformance DynamicTypeSize(&lazy protocol witness table cache variable for type RedactionReasons and conformance RedactionReasons, MEMORY[0x277CDFB98], MEMORY[0x277CDFBA8]);
  dispatch thunk of SetAlgebra.init()();
  lazy protocol witness table accessor for type DynamicTypeSize and conformance DynamicTypeSize(&lazy protocol witness table cache variable for type RedactionReasons and conformance RedactionReasons, v9, MEMORY[0x277CDFBA0]);
  v10 = dispatch thunk of static Equatable.== infix(_:_:)();
  v11 = *(v3 + 8);
  v11(v5, v2);
  v11(v8, v2);
  if (v10)
  {
    countAndFlagsBits = *(v1 + *(type metadata accessor for TrainingLoadDayEntry(0) + 24));
  }

  else
  {
    if (one-time initialization token for WorkoutUIBundle != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v13 = WorkoutUIBundle.super.isa;
    v19._object = 0xE000000000000000;
    v14.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v14.value._object = 0xEB00000000656C62;
    v15._object = 0x800000020CB97BE0;
    v15._countAndFlagsBits = 0xD000000000000021;
    v16._countAndFlagsBits = 0;
    v16._object = 0xE000000000000000;
    v19._countAndFlagsBits = 0;
    countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v15, v14, v13, v16, v19)._countAndFlagsBits;
  }

  return countAndFlagsBits;
}

uint64_t TrainingLoadDayWidgetSystemSmallContentView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v34 = a1;
  v3 = type metadata accessor for ContainerBackgroundPlacement();
  v32 = *(v3 - 8);
  v33 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVy07WorkoutB0015TrainingLoadDayE0VAA16_FlexFrameLayoutVG_AA6SpacerVAGyAA0E0PAAE10fontDesignyQrAA4FontV0Q0OSgFQOyAGyAGyAGyACyAEyAA4TextV_AYtGGAA24_ForegroundStyleModifierVyAA5ColorVGGAA022_EnvironmentKeyWritingV0VyATSgGGA7_y12CoreGraphics7CGFloatVGG_Qo_ALGtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVy07WorkoutB0015TrainingLoadDayE0VAA16_FlexFrameLayoutVG_AA6SpacerVAGyAA0E0PAAE10fontDesignyQrAA4FontV0Q0OSgFQOyAGyAGyAGyACyAEyAA4TextV_AYtGGAA24_ForegroundStyleModifierVyAA5ColorVGGAA022_EnvironmentKeyWritingV0VyATSgGGA7_y12CoreGraphics7CGFloatVGG_Qo_ALGtGGMR);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v28 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACy07WorkoutB0015TrainingLoadDayG0VAA16_FlexFrameLayoutVG_AA6SpacerVACyAA0G0PAAE10fontDesignyQrAA4FontV0Q0OSgFQOyACyACyACyAEyAGyAA4TextV_AYtGGAA24_ForegroundStyleModifierVyAA5ColorVGGAA022_EnvironmentKeyWritingV0VyATSgGGA7_y12CoreGraphics7CGFloatVGG_Qo_ALGtGGALGMd, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACy07WorkoutB0015TrainingLoadDayG0VAA16_FlexFrameLayoutVG_AA6SpacerVACyAA0G0PAAE10fontDesignyQrAA4FontV0Q0OSgFQOyACyACyACyAEyAGyAA4TextV_AYtGGAA24_ForegroundStyleModifierVyAA5ColorVGGAA022_EnvironmentKeyWritingV0VyATSgGGA7_y12CoreGraphics7CGFloatVGG_Qo_ALGtGGALGMR);
  MEMORY[0x28223BE20](v9);
  v11 = &v28 - v10;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE19containerBackground3for9alignment7contentQrAA09ContainerE9PlacementV_AA9AlignmentVqd__yXEtAaBRd__lFQOyAA15ModifiedContentVyAA6VStackVyAA05TupleC0VyAMy07WorkoutB0015TrainingLoadDayC0VAA16_FlexFrameLayoutVG_AA6SpacerVAMyAcAE10fontDesignyQrAA4FontV0Y0OSgFQOyAMyAMyAMyAOyAQyAA4TextV_A5_tGGAA24_ForegroundStyleModifierVyAA5ColorVGGAA30_EnvironmentKeyWritingModifierVyA0_SgGGA15_y12CoreGraphics7CGFloatVGG_Qo_AVGtGGAVG_A11_Qo_Md, &_s7SwiftUI4ViewPAAE19containerBackground3for9alignment7contentQrAA09ContainerE9PlacementV_AA9AlignmentVqd__yXEtAaBRd__lFQOyAA15ModifiedContentVyAA6VStackVyAA05TupleC0VyAMy07WorkoutB0015TrainingLoadDayC0VAA16_FlexFrameLayoutVG_AA6SpacerVAMyAcAE10fontDesignyQrAA4FontV0Y0OSgFQOyAMyAMyAMyAOyAQyAA4TextV_A5_tGGAA24_ForegroundStyleModifierVyAA5ColorVGGAA30_EnvironmentKeyWritingModifierVyA0_SgGGA15_y12CoreGraphics7CGFloatVGG_Qo_AVGtGGAVG_A11_Qo_MR);
  v29 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v13 = &v28 - v12;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE10unredactedQryFQOyAcAE19containerBackground3for9alignment7contentQrAA09ContainerF9PlacementV_AA9AlignmentVqd__yXEtAaBRd__lFQOyAA15ModifiedContentVyAA6VStackVyAA05TupleC0VyANy07WorkoutB0015TrainingLoadDayC0VAA16_FlexFrameLayoutVG_AA6SpacerVANyAcAE10fontDesignyQrAA4FontV0Z0OSgFQOyANyANyANyAPyARyAA4TextV_A6_tGGAA24_ForegroundStyleModifierVyAA5ColorVGGAA30_EnvironmentKeyWritingModifierVyA1_SgGGA16_y12CoreGraphics7CGFloatVGG_Qo_AWGtGGAWG_A12_Qo__Qo_Md, &_s7SwiftUI4ViewPAAE10unredactedQryFQOyAcAE19containerBackground3for9alignment7contentQrAA09ContainerF9PlacementV_AA9AlignmentVqd__yXEtAaBRd__lFQOyAA15ModifiedContentVyAA6VStackVyAA05TupleC0VyANy07WorkoutB0015TrainingLoadDayC0VAA16_FlexFrameLayoutVG_AA6SpacerVANyAcAE10fontDesignyQrAA4FontV0Z0OSgFQOyANyANyANyAPyARyAA4TextV_A6_tGGAA24_ForegroundStyleModifierVyAA5ColorVGGAA30_EnvironmentKeyWritingModifierVyA1_SgGGA16_y12CoreGraphics7CGFloatVGG_Qo_AWGtGGAWG_A12_Qo__Qo_MR);
  v31 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v15 = &v28 - v14;
  *v8 = static HorizontalAlignment.center.getter();
  *(v8 + 1) = 0;
  v8[16] = 0;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA15ModifiedContentVy07WorkoutB0015TrainingLoadDayD0VAA010_FlexFrameG0VG_AA6SpacerVAKyAA0D0PAAE10fontDesignyQrAA4FontV0S0OSgFQOyAKyAKyAKyAA0F0VyAIyAA4TextV_A3_tGGAA24_ForegroundStyleModifierVyAA5ColorVGGAA022_EnvironmentKeyWritingX0VyAXSgGGA13_y12CoreGraphics7CGFloatVGG_Qo_APGtGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA15ModifiedContentVy07WorkoutB0015TrainingLoadDayD0VAA010_FlexFrameG0VG_AA6SpacerVAKyAA0D0PAAE10fontDesignyQrAA4FontV0S0OSgFQOyAKyAKyAKyAA0F0VyAIyAA4TextV_A3_tGGAA24_ForegroundStyleModifierVyAA5ColorVGGAA022_EnvironmentKeyWritingX0VyAXSgGGA13_y12CoreGraphics7CGFloatVGG_Qo_APGtGGMR);
  closure #1 in TrainingLoadDayWidgetSystemSmallContentView.body.getter(v2, &v8[*(v16 + 44)]);
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  outlined init with take of VStack<TupleView<(ModifiedContent<TrainingLoadDayView, _FlexFrameLayout>, Spacer, ModifiedContent<<<opaque return type of View.fontDesign(_:)>>.0, _FlexFrameLayout>)>>(v8, v11, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVy07WorkoutB0015TrainingLoadDayE0VAA16_FlexFrameLayoutVG_AA6SpacerVAGyAA0E0PAAE10fontDesignyQrAA4FontV0Q0OSgFQOyAGyAGyAGyACyAEyAA4TextV_AYtGGAA24_ForegroundStyleModifierVyAA5ColorVGGAA022_EnvironmentKeyWritingV0VyATSgGGA7_y12CoreGraphics7CGFloatVGG_Qo_ALGtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVy07WorkoutB0015TrainingLoadDayE0VAA16_FlexFrameLayoutVG_AA6SpacerVAGyAA0E0PAAE10fontDesignyQrAA4FontV0Q0OSgFQOyAGyAGyAGyACyAEyAA4TextV_AYtGGAA24_ForegroundStyleModifierVyAA5ColorVGGAA022_EnvironmentKeyWritingV0VyATSgGGA7_y12CoreGraphics7CGFloatVGG_Qo_ALGtGGMR);
  v17 = &v11[*(v9 + 36)];
  v18 = v44;
  *(v17 + 4) = v43;
  *(v17 + 5) = v18;
  *(v17 + 6) = v45;
  v19 = v40;
  *v17 = v39;
  *(v17 + 1) = v19;
  v20 = v42;
  *(v17 + 2) = v41;
  *(v17 + 3) = v20;
  static ContainerBackgroundPlacement.widget.getter();
  static Alignment.center.getter();
  v21 = lazy protocol witness table accessor for type ModifiedContent<VStack<TupleView<(ModifiedContent<TrainingLoadDayView, _FlexFrameLayout>, Spacer, ModifiedContent<<<opaque return type of View.fontDesign(_:)>>.0, _FlexFrameLayout>)>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>();
  v22 = MEMORY[0x277CE0F70];
  v23 = MEMORY[0x277CE0F78];
  View.containerBackground<A>(for:alignment:content:)();
  (*(v32 + 8))(v5, v33);
  outlined destroy of ModifiedContent<VStack<TupleView<(ModifiedContent<TrainingLoadDayView, _FlexFrameLayout>, Spacer, ModifiedContent<<<opaque return type of View.fontDesign(_:)>>.0, _FlexFrameLayout>)>>, _FlexFrameLayout>(v11, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACy07WorkoutB0015TrainingLoadDayG0VAA16_FlexFrameLayoutVG_AA6SpacerVACyAA0G0PAAE10fontDesignyQrAA4FontV0Q0OSgFQOyACyACyACyAEyAGyAA4TextV_AYtGGAA24_ForegroundStyleModifierVyAA5ColorVGGAA022_EnvironmentKeyWritingV0VyATSgGGA7_y12CoreGraphics7CGFloatVGG_Qo_ALGtGGALGMd, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACy07WorkoutB0015TrainingLoadDayG0VAA16_FlexFrameLayoutVG_AA6SpacerVACyAA0G0PAAE10fontDesignyQrAA4FontV0Q0OSgFQOyACyACyACyAEyAGyAA4TextV_AYtGGAA24_ForegroundStyleModifierVyAA5ColorVGGAA022_EnvironmentKeyWritingV0VyATSgGGA7_y12CoreGraphics7CGFloatVGG_Qo_ALGtGGALGMR);
  v35 = v9;
  v36 = v23;
  v37 = v21;
  v38 = v22;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v25 = v28;
  View.unredacted()();
  (*(v29 + 8))(v13, v25);
  v35 = v25;
  v36 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v26 = v30;
  View.widgetAccentable(_:)();
  return (*(v31 + 8))(v15, v26);
}

uint64_t closure #1 in TrainingLoadDayWidgetSystemSmallContentView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v97 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4FontV6DesignOSgMd, &_s7SwiftUI4FontV6DesignOSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v89 = &v77 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE10fontDesignyQrAA4FontV0E0OSgFQOyAA15ModifiedContentVyAKyAKyAA6VStackVyAA05TupleC0VyAA4TextV_AQtGGAA24_ForegroundStyleModifierVyAA5ColorVGGAA022_EnvironmentKeyWritingN0VyAFSgGGA_y12CoreGraphics7CGFloatVGG_Qo_Md, &_s7SwiftUI4ViewPAAE10fontDesignyQrAA4FontV0E0OSgFQOyAA15ModifiedContentVyAKyAKyAA6VStackVyAA05TupleC0VyAA4TextV_AQtGGAA24_ForegroundStyleModifierVyAA5ColorVGGAA022_EnvironmentKeyWritingN0VyAFSgGGA_y12CoreGraphics7CGFloatVGG_Qo_MR);
  v93 = *(v5 - 8);
  v94 = v5;
  MEMORY[0x28223BE20](v5);
  v92 = &v77 - v6;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE10fontDesignyQrAA4FontV0G0OSgFQOyACyACyACyAA6VStackVyAA05TupleE0VyAA4TextV_AQtGGAA24_ForegroundStyleModifierVyAA5ColorVGGAA022_EnvironmentKeyWritingN0VyAHSgGGA_y12CoreGraphics7CGFloatVGG_Qo_AA16_FlexFrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE10fontDesignyQrAA4FontV0G0OSgFQOyACyACyACyAA6VStackVyAA05TupleE0VyAA4TextV_AQtGGAA24_ForegroundStyleModifierVyAA5ColorVGGAA022_EnvironmentKeyWritingN0VyAHSgGGA_y12CoreGraphics7CGFloatVGG_Qo_AA16_FlexFrameLayoutVGMR);
  MEMORY[0x28223BE20](v90);
  v96 = &v77 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v91 = &v77 - v9;
  MEMORY[0x28223BE20](v10);
  v95 = &v77 - v11;
  v12 = type metadata accessor for RedactionReasons();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v77 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v77 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9WidgetKit0A13RenderingModeVSgMd, &_s9WidgetKit0A13RenderingModeVSgMR);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v77 - v20;
  DayView = type metadata accessor for TrainingLoadDayView(0);
  MEMORY[0x28223BE20](DayView);
  v23 = (&v77 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v24);
  v85 = &v77 - v25;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB019TrainingLoadDayViewVAA16_FlexFrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB019TrainingLoadDayViewVAA16_FlexFrameLayoutVGMR);
  MEMORY[0x28223BE20](v84);
  v88 = &v77 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v29 = &v77 - v28;
  MEMORY[0x28223BE20](v30);
  v98 = &v77 - v31;
  DayEntry = type metadata accessor for TrainingLoadDayEntry(0);
  v32 = (a1 + *(DayEntry + 20));
  v33 = *v32;
  v79 = *(v32 + 8);
  v34 = type metadata accessor for WidgetRenderingMode();
  v35 = *(*(v34 - 8) + 56);
  v83 = v21;
  v35(v21, 1, 1, v34);
  v87 = a1;
  TrainingLoadDayWidgetSystemSmallContentView.redactionReasons.getter(v18);
  v36 = MEMORY[0x277CDFB98];
  v81 = lazy protocol witness table accessor for type DynamicTypeSize and conformance DynamicTypeSize(&lazy protocol witness table cache variable for type RedactionReasons and conformance RedactionReasons, MEMORY[0x277CDFB98], MEMORY[0x277CDFBA8]);
  dispatch thunk of SetAlgebra.init()();
  v80 = lazy protocol witness table accessor for type DynamicTypeSize and conformance DynamicTypeSize(&lazy protocol witness table cache variable for type RedactionReasons and conformance RedactionReasons, v36, MEMORY[0x277CDFBA0]);
  LOBYTE(a1) = dispatch thunk of static Equatable.== infix(_:_:)();
  v37 = *(v13 + 8);
  v37(v15, v12);
  v86 = v13 + 8;
  v37(v18, v12);
  v38 = a1 ^ 1;
  DayViewModel = type metadata accessor for TrainingLoadDayViewModel(0);
  v40 = DayViewModel;
  v41 = 1;
  if ((v79 & 1) == 0)
  {
    *(v23 + *(DayViewModel + 28)) = 0x3FE3333333333333;
    *v23 = v33;
    TrainingLoadBand.init(fractionalDifferenceFromChronicBaseline:)();
    TrainingLoadBand.valueRangeForBand(baseline:)();
    v41 = 0;
    v42 = (v23 + *(v40 + 24));
    *v42 = v43;
    v42[1] = v44;
  }

  (*(*(v40 - 8) + 56))(v23, v41, 1, v40);
  v45 = DayView;
  outlined init with take of WidgetRenderingMode?(v83, v23 + *(DayView + 20), &_s9WidgetKit0A13RenderingModeVSgMd, &_s9WidgetKit0A13RenderingModeVSgMR);
  *(v23 + *(v45 + 24)) = v38 & 1;
  v46 = v85;
  outlined init with take of TrainingLoadDayView(v23, v85, v47);
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  outlined init with take of TrainingLoadDayView(v46, v29, v48);
  v49 = &v29[*(v84 + 36)];
  v50 = v106[9];
  *(v49 + 4) = v106[8];
  *(v49 + 5) = v50;
  *(v49 + 6) = v106[10];
  v51 = v106[5];
  *v49 = v106[4];
  *(v49 + 1) = v51;
  v52 = v106[7];
  *(v49 + 2) = v106[6];
  *(v49 + 3) = v52;
  outlined init with take of WidgetRenderingMode?(v29, v98, &_s7SwiftUI15ModifiedContentVy07WorkoutB019TrainingLoadDayViewVAA16_FlexFrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB019TrainingLoadDayViewVAA16_FlexFrameLayoutVGMR);
  v85 = static HorizontalAlignment.leading.getter();
  v105 = 1;
  v53 = v87;
  closure #1 in closure #1 in TrainingLoadDayWidgetSystemSmallContentView.body.getter(v87, v106);
  *&v104[7] = v106[0];
  *&v104[23] = v106[1];
  *&v104[39] = v106[2];
  *&v104[55] = v106[3];
  LODWORD(v84) = v105;
  TrainingLoadDayWidgetSystemSmallContentView.redactionReasons.getter(v18);
  dispatch thunk of SetAlgebra.init()();
  LOBYTE(v46) = dispatch thunk of static Equatable.== infix(_:_:)();
  v37(v15, v12);
  v37(v18, v12);
  if (v46)
  {
    v86 = *(v53 + *(DayEntry + 32));
  }

  else
  {
    v86 = static Color.gray.getter();
  }

  type metadata accessor for TrainingLoadDayWidgetSystemSmallContentView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI12ScaledMetricVy12CoreGraphics7CGFloatVGMd, &_s7SwiftUI12ScaledMetricVy12CoreGraphics7CGFloatVGMR);
  ScaledMetric.wrappedValue.getter();
  static Font.Weight.semibold.getter();
  v54 = *MEMORY[0x277CE09A0];
  v55 = type metadata accessor for Font.Design();
  v56 = *(v55 - 8);
  v57 = *(v56 + 104);
  v58 = v89;
  v57(v89, v54, v55);
  v59 = *(v56 + 56);
  v59(v58, 0, 1, v55);
  v60 = static Font.system(size:weight:design:)();
  outlined destroy of PartialRangeThrough<DynamicTypeSize>(v58, &_s7SwiftUI4FontV6DesignOSgMd, &_s7SwiftUI4FontV6DesignOSgMR);
  KeyPath = swift_getKeyPath();
  v62 = swift_getKeyPath();
  *(&v100[1] + 1) = *&v104[16];
  *(&v100[2] + 1) = *&v104[32];
  *(&v100[3] + 1) = *&v104[48];
  v99 = v85;
  LOBYTE(v100[0]) = v84;
  *(v100 + 1) = *v104;
  *&v100[4] = *&v104[63];
  *(&v100[4] + 1) = v86;
  *&v101 = KeyPath;
  *(&v101 + 1) = v60;
  *&v102 = v62;
  *(&v102 + 1) = 0x3FE3333333333333;
  v57(v58, v54, v55);
  v59(v58, 0, 1, v55);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA6VStackVyAA9TupleViewVyAA4TextV_AItGGAA24_ForegroundStyleModifierVyAA5ColorVGGAA022_EnvironmentKeyWritingK0VyAA4FontVSgGGASy12CoreGraphics7CGFloatVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA6VStackVyAA9TupleViewVyAA4TextV_AItGGAA24_ForegroundStyleModifierVyAA5ColorVGGAA022_EnvironmentKeyWritingK0VyAA4FontVSgGGASy12CoreGraphics7CGFloatVGGMR);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(Text, Text)>>, _ForegroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>> and conformance <> ModifiedContent<A, B>();
  v63 = v92;
  View.fontDesign(_:)();
  outlined destroy of PartialRangeThrough<DynamicTypeSize>(v58, &_s7SwiftUI4FontV6DesignOSgMd, &_s7SwiftUI4FontV6DesignOSgMR);
  v103[4] = v100[3];
  v103[5] = v100[4];
  v103[6] = v101;
  v103[7] = v102;
  v103[0] = v99;
  v103[1] = v100[0];
  v103[2] = v100[1];
  v103[3] = v100[2];
  outlined destroy of PartialRangeThrough<DynamicTypeSize>(v103, &_s7SwiftUI15ModifiedContentVyACyACyAA6VStackVyAA9TupleViewVyAA4TextV_AItGGAA24_ForegroundStyleModifierVyAA5ColorVGGAA022_EnvironmentKeyWritingK0VyAA4FontVSgGGASy12CoreGraphics7CGFloatVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA6VStackVyAA9TupleViewVyAA4TextV_AItGGAA24_ForegroundStyleModifierVyAA5ColorVGGAA022_EnvironmentKeyWritingK0VyAA4FontVSgGGASy12CoreGraphics7CGFloatVGGMR);
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v64 = v91;
  (*(v93 + 32))(v91, v63, v94);
  v65 = (v64 + *(v90 + 36));
  v66 = v100[4];
  v65[4] = v100[3];
  v65[5] = v66;
  v65[6] = v101;
  v67 = v100[0];
  *v65 = v99;
  v65[1] = v67;
  v68 = v100[2];
  v65[2] = v100[1];
  v65[3] = v68;
  v69 = v95;
  outlined init with take of VStack<TupleView<(ModifiedContent<TrainingLoadDayView, _FlexFrameLayout>, Spacer, ModifiedContent<<<opaque return type of View.fontDesign(_:)>>.0, _FlexFrameLayout>)>>(v64, v95, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE10fontDesignyQrAA4FontV0G0OSgFQOyACyACyACyAA6VStackVyAA05TupleE0VyAA4TextV_AQtGGAA24_ForegroundStyleModifierVyAA5ColorVGGAA022_EnvironmentKeyWritingN0VyAHSgGGA_y12CoreGraphics7CGFloatVGG_Qo_AA16_FlexFrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE10fontDesignyQrAA4FontV0G0OSgFQOyACyACyACyAA6VStackVyAA05TupleE0VyAA4TextV_AQtGGAA24_ForegroundStyleModifierVyAA5ColorVGGAA022_EnvironmentKeyWritingN0VyAHSgGGA_y12CoreGraphics7CGFloatVGG_Qo_AA16_FlexFrameLayoutVGMR);
  v70 = v98;
  v71 = v88;
  outlined init with copy of ModifiedContent<TrainingLoadDayView, _FlexFrameLayout>(v98, v88, &_s7SwiftUI15ModifiedContentVy07WorkoutB019TrainingLoadDayViewVAA16_FlexFrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB019TrainingLoadDayViewVAA16_FlexFrameLayoutVGMR);
  v72 = v96;
  sub_20C67F2D8(v69, v96);
  v73 = v97;
  outlined init with copy of ModifiedContent<TrainingLoadDayView, _FlexFrameLayout>(v71, v97, &_s7SwiftUI15ModifiedContentVy07WorkoutB019TrainingLoadDayViewVAA16_FlexFrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB019TrainingLoadDayViewVAA16_FlexFrameLayoutVGMR);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB019TrainingLoadDayViewVAA16_FlexFrameLayoutVG_AA6SpacerVACyAA0I0PAAE10fontDesignyQrAA4FontV0O0OSgFQOyACyACyACyAA6VStackVyAA05TupleI0VyAA4TextV_AYtGGAA24_ForegroundStyleModifierVyAA5ColorVGGAA022_EnvironmentKeyWritingV0VyAPSgGGA7_y12CoreGraphics7CGFloatVGG_Qo_AHGtMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB019TrainingLoadDayViewVAA16_FlexFrameLayoutVG_AA6SpacerVACyAA0I0PAAE10fontDesignyQrAA4FontV0O0OSgFQOyACyACyACyAA6VStackVyAA05TupleI0VyAA4TextV_AYtGGAA24_ForegroundStyleModifierVyAA5ColorVGGAA022_EnvironmentKeyWritingV0VyAPSgGGA7_y12CoreGraphics7CGFloatVGG_Qo_AHGtMR);
  v75 = v73 + *(v74 + 48);
  *v75 = 0x4028000000000000;
  *(v75 + 8) = 0;
  sub_20C67F2D8(v72, v73 + *(v74 + 64));
  outlined destroy of ModifiedContent<VStack<TupleView<(ModifiedContent<TrainingLoadDayView, _FlexFrameLayout>, Spacer, ModifiedContent<<<opaque return type of View.fontDesign(_:)>>.0, _FlexFrameLayout>)>>, _FlexFrameLayout>(v69, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE10fontDesignyQrAA4FontV0G0OSgFQOyACyACyACyAA6VStackVyAA05TupleE0VyAA4TextV_AQtGGAA24_ForegroundStyleModifierVyAA5ColorVGGAA022_EnvironmentKeyWritingN0VyAHSgGGA_y12CoreGraphics7CGFloatVGG_Qo_AA16_FlexFrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE10fontDesignyQrAA4FontV0G0OSgFQOyACyACyACyAA6VStackVyAA05TupleE0VyAA4TextV_AQtGGAA24_ForegroundStyleModifierVyAA5ColorVGGAA022_EnvironmentKeyWritingN0VyAHSgGGA_y12CoreGraphics7CGFloatVGG_Qo_AA16_FlexFrameLayoutVGMR);
  outlined destroy of PartialRangeThrough<DynamicTypeSize>(v70, &_s7SwiftUI15ModifiedContentVy07WorkoutB019TrainingLoadDayViewVAA16_FlexFrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB019TrainingLoadDayViewVAA16_FlexFrameLayoutVGMR);
  outlined destroy of ModifiedContent<VStack<TupleView<(ModifiedContent<TrainingLoadDayView, _FlexFrameLayout>, Spacer, ModifiedContent<<<opaque return type of View.fontDesign(_:)>>.0, _FlexFrameLayout>)>>, _FlexFrameLayout>(v72, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE10fontDesignyQrAA4FontV0G0OSgFQOyACyACyACyAA6VStackVyAA05TupleE0VyAA4TextV_AQtGGAA24_ForegroundStyleModifierVyAA5ColorVGGAA022_EnvironmentKeyWritingN0VyAHSgGGA_y12CoreGraphics7CGFloatVGG_Qo_AA16_FlexFrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE10fontDesignyQrAA4FontV0G0OSgFQOyACyACyACyAA6VStackVyAA05TupleE0VyAA4TextV_AQtGGAA24_ForegroundStyleModifierVyAA5ColorVGGAA022_EnvironmentKeyWritingN0VyAHSgGGA_y12CoreGraphics7CGFloatVGG_Qo_AA16_FlexFrameLayoutVGMR);
  return outlined destroy of PartialRangeThrough<DynamicTypeSize>(v71, &_s7SwiftUI15ModifiedContentVy07WorkoutB019TrainingLoadDayViewVAA16_FlexFrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB019TrainingLoadDayViewVAA16_FlexFrameLayoutVGMR);
}

double closure #1 in closure #1 in TrainingLoadDayWidgetSystemSmallContentView.body.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for RedactionReasons();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v37 - v9;
  TrainingLoadDayWidgetSystemSmallContentView.redactionReasons.getter((&v37 - v9));
  v11 = MEMORY[0x277CDFB98];
  lazy protocol witness table accessor for type DynamicTypeSize and conformance DynamicTypeSize(&lazy protocol witness table cache variable for type RedactionReasons and conformance RedactionReasons, MEMORY[0x277CDFB98], MEMORY[0x277CDFBA8]);
  dispatch thunk of SetAlgebra.init()();
  lazy protocol witness table accessor for type DynamicTypeSize and conformance DynamicTypeSize(&lazy protocol witness table cache variable for type RedactionReasons and conformance RedactionReasons, v11, MEMORY[0x277CDFBA0]);
  v12 = dispatch thunk of static Equatable.== infix(_:_:)();
  v13 = *(v5 + 8);
  v13(v7, v4);
  v13(v10, v4);
  if (v12)
  {
    v14 = (a1 + *(type metadata accessor for TrainingLoadDayEntry(0) + 28));
    countAndFlagsBits = *v14;
    object = v14[1];
  }

  else
  {
    if (one-time initialization token for WorkoutUIBundle != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v17 = WorkoutUIBundle.super.isa;
    v42._object = 0xE000000000000000;
    v18._countAndFlagsBits = 0x45554C41564F4ELL;
    v19.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v19.value._object = 0xEB00000000656C62;
    v18._object = 0xE700000000000000;
    v20._countAndFlagsBits = 0;
    v20._object = 0xE000000000000000;
    v42._countAndFlagsBits = 0;
    v21 = NSLocalizedString(_:tableName:bundle:value:comment:)(v18, v19, v17, v20, v42);
    countAndFlagsBits = v21._countAndFlagsBits;
    object = v21._object;
  }

  DayWidgetSystemSmallContent = countAndFlagsBits;
  v40 = object;
  lazy protocol witness table accessor for type String and conformance String();
  v22 = Text.init<A>(_:)();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  DayWidgetSystemSmallContent = TrainingLoadDayWidgetSystemSmallContentView.loadBandTodayPercentage.getter();
  v40 = v29;
  v30 = Text.init<A>(_:)();
  v32 = v31;
  v38 = v26 & 1;
  LOBYTE(DayWidgetSystemSmallContent) = v26 & 1;
  v34 = v33 & 1;
  v41 = v33 & 1;
  *a2 = v22;
  *(a2 + 8) = v24;
  *(a2 + 16) = v26 & 1;
  *(a2 + 24) = v28;
  *(a2 + 32) = v30;
  *(a2 + 40) = v31;
  *(a2 + 48) = v33 & 1;
  *(a2 + 56) = v35;
  outlined copy of Text.Storage(v22, v24, v26 & 1);

  outlined copy of Text.Storage(v30, v32, v34);

  outlined consume of Text.Storage(v30, v32, v34);

  outlined consume of Text.Storage(v22, v24, v38);

  return result;
}

uint64_t closure #2 in TrainingLoadDayWidgetSystemSmallContentView.body.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for Color.RGBColorSpace();
  v3 = MEMORY[0x28223BE20](v2);
  (*(v5 + 104))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277CE0EE0], v3);
  result = Color.init(_:red:green:blue:opacity:)();
  *a1 = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type CGFloat and conformance CGFloat()
{
  result = lazy protocol witness table cache variable for type CGFloat and conformance CGFloat;
  if (!lazy protocol witness table cache variable for type CGFloat and conformance CGFloat)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CGFloat and conformance CGFloat);
  }

  return result;
}

uint64_t outlined destroy of TrainingLoadDayWidgetSystemSmallContentView(uint64_t a1)
{
  DayWidgetSystemSmallContentView = type metadata accessor for TrainingLoadDayWidgetSystemSmallContentView(0);
  (*(*(DayWidgetSystemSmallContentView - 8) + 8))(a1, DayWidgetSystemSmallContentView);
  return a1;
}

void type metadata completion function for TrainingLoadDayWidgetSystemSmallContentView(uint64_t a1)
{
  type metadata accessor for TrainingLoadDayEntry(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for ScaledMetric<CGFloat>(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Environment<RedactionReasons>(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata accessor for ScaledMetric<CGFloat>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ScaledMetric<CGFloat>)
  {
    lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
    v1 = type metadata accessor for ScaledMetric();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ScaledMetric<CGFloat>);
    }
  }
}

void type metadata accessor for Environment<RedactionReasons>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Environment<RedactionReasons>)
  {
    type metadata accessor for RedactionReasons();
    v1 = type metadata accessor for Environment();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Environment<RedactionReasons>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<VStack<TupleView<(ModifiedContent<TrainingLoadDayView, _FlexFrameLayout>, Spacer, ModifiedContent<<<opaque return type of View.fontDesign(_:)>>.0, _FlexFrameLayout>)>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(ModifiedContent<TrainingLoadDayView, _FlexFrameLayout>, Spacer, ModifiedContent<<<opaque return type of View.fontDesign(_:)>>.0, _FlexFrameLayout>)>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(ModifiedContent<TrainingLoadDayView, _FlexFrameLayout>, Spacer, ModifiedContent<<<opaque return type of View.fontDesign(_:)>>.0, _FlexFrameLayout>)>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACy07WorkoutB0015TrainingLoadDayG0VAA16_FlexFrameLayoutVG_AA6SpacerVACyAA0G0PAAE10fontDesignyQrAA4FontV0Q0OSgFQOyACyACyACyAEyAGyAA4TextV_AYtGGAA24_ForegroundStyleModifierVyAA5ColorVGGAA022_EnvironmentKeyWritingV0VyATSgGGA7_y12CoreGraphics7CGFloatVGG_Qo_ALGtGGALGMd, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACy07WorkoutB0015TrainingLoadDayG0VAA16_FlexFrameLayoutVG_AA6SpacerVACyAA0G0PAAE10fontDesignyQrAA4FontV0Q0OSgFQOyACyACyACyAEyAGyAA4TextV_AYtGGAA24_ForegroundStyleModifierVyAA5ColorVGGAA022_EnvironmentKeyWritingV0VyATSgGGA7_y12CoreGraphics7CGFloatVGG_Qo_ALGtGGALGMR);
    lazy protocol witness table accessor for type PartialRangeThrough<DynamicTypeSize> and conformance PartialRangeThrough<A>(&lazy protocol witness table cache variable for type VStack<TupleView<(ModifiedContent<TrainingLoadDayView, _FlexFrameLayout>, Spacer, ModifiedContent<<<opaque return type of View.fontDesign(_:)>>.0, _FlexFrameLayout>)>> and conformance VStack<A>, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVy07WorkoutB0015TrainingLoadDayE0VAA16_FlexFrameLayoutVG_AA6SpacerVAGyAA0E0PAAE10fontDesignyQrAA4FontV0Q0OSgFQOyAGyAGyAGyACyAEyAA4TextV_AYtGGAA24_ForegroundStyleModifierVyAA5ColorVGGAA022_EnvironmentKeyWritingV0VyATSgGGA7_y12CoreGraphics7CGFloatVGG_Qo_ALGtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVy07WorkoutB0015TrainingLoadDayE0VAA16_FlexFrameLayoutVG_AA6SpacerVAGyAA0E0PAAE10fontDesignyQrAA4FontV0Q0OSgFQOyAGyAGyAGyACyAEyAA4TextV_AYtGGAA24_ForegroundStyleModifierVyAA5ColorVGGAA022_EnvironmentKeyWritingV0VyATSgGGA7_y12CoreGraphics7CGFloatVGG_Qo_ALGtGGMR, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(ModifiedContent<TrainingLoadDayView, _FlexFrameLayout>, Spacer, ModifiedContent<<<opaque return type of View.fontDesign(_:)>>.0, _FlexFrameLayout>)>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t outlined init with take of TrainingLoadDayView(uint64_t a1, uint64_t a2, double a3)
{
  DayView = type metadata accessor for TrainingLoadDayView(0);
  (*(*(DayView - 8) + 32))(a2, a1, DayView);
  return a2;
}

uint64_t outlined init with take of WidgetRenderingMode?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(Text, Text)>>, _ForegroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(Text, Text)>>, _ForegroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(Text, Text)>>, _ForegroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA6VStackVyAA9TupleViewVyAA4TextV_AItGGAA24_ForegroundStyleModifierVyAA5ColorVGGAA022_EnvironmentKeyWritingK0VyAA4FontVSgGGASy12CoreGraphics7CGFloatVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA6VStackVyAA9TupleViewVyAA4TextV_AItGGAA24_ForegroundStyleModifierVyAA5ColorVGGAA022_EnvironmentKeyWritingK0VyAA4FontVSgGGASy12CoreGraphics7CGFloatVGGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<VStack<TupleView<(Text, Text)>>, _ForegroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type PartialRangeThrough<DynamicTypeSize> and conformance PartialRangeThrough<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<CGFloat> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGMR, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(Text, Text)>>, _ForegroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<VStack<TupleView<(Text, Text)>>, _ForegroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<VStack<TupleView<(Text, Text)>>, _ForegroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<VStack<TupleView<(Text, Text)>>, _ForegroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyAA4TextV_AItGGAA24_ForegroundStyleModifierVyAA5ColorVGGAA022_EnvironmentKeyWritingK0VyAA4FontVSgGGMd, &_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyAA4TextV_AItGGAA24_ForegroundStyleModifierVyAA5ColorVGGAA022_EnvironmentKeyWritingK0VyAA4FontVSgGGMR);
    lazy protocol witness table accessor for type ModifiedContent<VStack<TupleView<(Text, Text)>>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type PartialRangeThrough<DynamicTypeSize> and conformance PartialRangeThrough<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Font?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMR, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<VStack<TupleView<(Text, Text)>>, _ForegroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<VStack<TupleView<(Text, Text)>>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(Text, Text)>>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(Text, Text)>>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA4TextV_AItGGAA24_ForegroundStyleModifierVyAA5ColorVGGMd, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA4TextV_AItGGAA24_ForegroundStyleModifierVyAA5ColorVGGMR);
    lazy protocol witness table accessor for type PartialRangeThrough<DynamicTypeSize> and conformance PartialRangeThrough<A>(&lazy protocol witness table cache variable for type VStack<TupleView<(Text, Text)>> and conformance VStack<A>, &_s7SwiftUI6VStackVyAA9TupleViewVyAA4TextV_AGtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA4TextV_AGtGGMR, MEMORY[0x277CE1198]);
    lazy protocol witness table accessor for type PartialRangeThrough<DynamicTypeSize> and conformance PartialRangeThrough<A>(&lazy protocol witness table cache variable for type _ForegroundStyleModifier<Color> and conformance _ForegroundStyleModifier<A>, &_s7SwiftUI24_ForegroundStyleModifierVyAA5ColorVGMd, &_s7SwiftUI24_ForegroundStyleModifierVyAA5ColorVGMR, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(Text, Text)>>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type PartialRangeThrough<DynamicTypeSize> and conformance PartialRangeThrough<A>(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t outlined init with take of VStack<TupleView<(ModifiedContent<TrainingLoadDayView, _FlexFrameLayout>, Spacer, ModifiedContent<<<opaque return type of View.fontDesign(_:)>>.0, _FlexFrameLayout>)>>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t outlined destroy of ModifiedContent<VStack<TupleView<(ModifiedContent<TrainingLoadDayView, _FlexFrameLayout>, Spacer, ModifiedContent<<<opaque return type of View.fontDesign(_:)>>.0, _FlexFrameLayout>)>>, _FlexFrameLayout>(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t outlined destroy of PartialRangeThrough<DynamicTypeSize>(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t outlined init with copy of ModifiedContent<TrainingLoadDayView, _FlexFrameLayout>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t getEnumTagSinglePayload for TransitionDotView(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 32))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
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

uint64_t storeEnumTagSinglePayload for TransitionDotView(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

void closure #1 in closure #1 in TransitionDotView.body.getter(uint64_t *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v40 = a4;
  v10 = type metadata accessor for EnvironmentValues();
  v36 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  v39 = static HorizontalAlignment.center.getter();
  v44 = 1;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v14 = v45;
  v15 = v46;
  v16 = v47;
  v17 = v48;
  v37 = v50;
  v38 = v49;
  if ((a3 & 1) == 0)
  {

    static os_log_type_t.fault.getter();
    v21 = static Log.runtimeIssuesLog.getter();
    v35 = v10;
    v22 = v17;
    v23 = v15;
    v24 = v16;
    v25 = v13;
    v26 = v14;
    v27 = v21;
    os_log(_:dso:log:_:_:)();

    v14 = v26;
    v13 = v25;
    v16 = v24;
    v15 = v23;
    v17 = v22;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    v28 = outlined consume of Environment<Bool>.Content(a2, 0);
    (*(v36 + 8))(v12, v35, v28);
    if (v43 != 1)
    {
      goto LABEL_3;
    }

LABEL_7:
    v19 = v40;
    v20 = 0.4;
    goto LABEL_8;
  }

  if (a2)
  {
    goto LABEL_7;
  }

LABEL_3:
  v18 = v40;
  if (!v13 || (v18 = v13 + 1, !__OFADD__(v13, 1)))
  {
    v19 = v40;
    v20 = v18 / v40 * 0.85 + 0.15;
LABEL_8:
    LOBYTE(v43) = v15;
    v42 = v17;
    v41 = 1;
    v29 = v44;
    v30 = 360.0 / v19 * v13 * 0.0174532925;
    static UnitPoint.center.getter();
    v31 = v38;
    *a5 = v39;
    *(a5 + 8) = 0;
    *(a5 + 16) = v29;
    *(a5 + 24) = v14;
    *(a5 + 32) = v15;
    *(a5 + 40) = v16;
    *(a5 + 48) = v17;
    v32 = v37;
    *(a5 + 56) = v31;
    *(a5 + 64) = v32;
    *(a5 + 72) = v20;
    *(a5 + 80) = 0;
    *(a5 + 88) = 1;
    *(a5 + 96) = v30;
    *(a5 + 104) = v33;
    *(a5 + 112) = v34;
    return;
  }

  __break(1u);
}

uint64_t protocol witness for View.body.getter in conformance TransitionDotView@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  result = static Alignment.top.getter();
  *a1 = result;
  a1[1] = v8;
  if (v5 < 0)
  {
    __break(1u);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_ZStackLayoutVAA7ForEachVySnySiGSiAA15ModifiedContentVyAA6VStackVyAA05TupleD0VyALyALyAA6CircleVAA06_FrameG0VGAA14_OpacityEffectVG_AA6SpacerVtGGAA09_RotationQ0VGGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_ZStackLayoutVAA7ForEachVySnySiGSiAA15ModifiedContentVyAA6VStackVyAA05TupleD0VyALyALyAA6CircleVAA06_FrameG0VGAA14_OpacityEffectVG_AA6SpacerVtGGAA09_RotationQ0VGGGMR);
    swift_getKeyPath();
    v9 = swift_allocObject();
    *(v9 + 16) = v3;
    *(v9 + 24) = v4;
    *(v9 + 32) = v5;
    *(v9 + 40) = v6;
    outlined copy of Environment<Bool>.Content(v3, v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySiGMd, &_sSnySiGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACyACyAA6CircleVAA12_FrameLayoutVGAA14_OpacityEffectVG_AA6SpacerVtGGAA09_RotationL0VGMd, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACyACyAA6CircleVAA12_FrameLayoutVGAA14_OpacityEffectVG_AA6SpacerVtGGAA09_RotationL0VGMR);
    lazy protocol witness table accessor for type Range<Int> and conformance <> Range<A>();
    lazy protocol witness table accessor for type ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<Circle, _FrameLayout>, _OpacityEffect>, Spacer)>>, _RotationEffect> and conformance <> ModifiedContent<A, B>();
    return ForEach<>.init(_:id:content:)();
  }

  return result;
}

double outlined consume of Environment<Bool>.Content(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

double outlined copy of Environment<Bool>.Content(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<Circle, _FrameLayout>, _OpacityEffect>, Spacer)>>, _RotationEffect> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<Circle, _FrameLayout>, _OpacityEffect>, Spacer)>>, _RotationEffect> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<Circle, _FrameLayout>, _OpacityEffect>, Spacer)>>, _RotationEffect> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACyACyAA6CircleVAA12_FrameLayoutVGAA14_OpacityEffectVG_AA6SpacerVtGGAA09_RotationL0VGMd, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACyACyAA6CircleVAA12_FrameLayoutVGAA14_OpacityEffectVG_AA6SpacerVtGGAA09_RotationL0VGMR);
    lazy protocol witness table accessor for type VStack<TupleView<(ModifiedContent<ModifiedContent<Circle, _FrameLayout>, _OpacityEffect>, Spacer)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type VStack<TupleView<(ModifiedContent<ModifiedContent<Circle, _FrameLayout>, _OpacityEffect>, Spacer)>> and conformance VStack<A>, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA6CircleVAA12_FrameLayoutVGAA14_OpacityEffectVG_AA6SpacerVtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA6CircleVAA12_FrameLayoutVGAA14_OpacityEffectVG_AA6SpacerVtGGMR, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<Circle, _FrameLayout>, _OpacityEffect>, Spacer)>>, _RotationEffect> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type VStack<TupleView<(ModifiedContent<ModifiedContent<Circle, _FrameLayout>, _OpacityEffect>, Spacer)>> and conformance VStack<A>(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t getEnumTagSinglePayload for MirrorArcView(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t storeEnumTagSinglePayload for MirrorArcView(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

void *closure #1 in MirrorArcView.body.getter@<X0>(uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  GeometryProxy.size.getter();
  GeometryProxy.size.getter();
  GeometryProxy.size.getter();
  GeometryProxy.size.getter();
  v5 = static Alignment.center.getter();
  v7 = v6;
  closure #1 in closure #1 in MirrorArcView.body.getter(a2);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v12, __src, sizeof(v12));
  outlined init with copy of TupleView<(ModifiedContent<_StrokedShape<Path>, _ForegroundStyleModifier<Color>>, _StrokedShape<Path>, ModifiedContent<VStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(HStack<TupleView<(Spacer, ModifiedContent<Text, _FrameLayout>)>>, ModifiedContent<Spacer, _FrameLayout>, HStack<TupleView<(ModifiedContent<Text, _FrameLayout>, Spacer)>>)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _ForegroundStyleModifier<Color>>, ModifiedContent<Spacer, _FrameLayout>)>>, _FlexFrameLayout>)>(__dst, &v9, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA13_StrokedShapeVyAA4PathVGAA24_ForegroundStyleModifierVyAA5ColorVGG_AjEyAA6VStackVyACyAA6SpacerV_AEyAEyAEyAA6HStackVyACyAVyACyAT_AEyAA4TextVAA12_FrameLayoutVGtGG_AEyAtZGAVyACyA__ATtGGtGG07WorkoutB025MetricDescriptionCoreFontVGA7_26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGAOGA2_tGGAA05_FlexrS0VGtGMd, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA13_StrokedShapeVyAA4PathVGAA24_ForegroundStyleModifierVyAA5ColorVGG_AjEyAA6VStackVyACyAA6SpacerV_AEyAEyAEyAA6HStackVyACyAVyACyAT_AEyAA4TextVAA12_FrameLayoutVGtGG_AEyAtZGAVyACyA__ATtGGtGG07WorkoutB025MetricDescriptionCoreFontVGA7_26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGAOGA2_tGGAA05_FlexrS0VGtGMR);
  outlined destroy of TupleView<(ModifiedContent<_StrokedShape<Path>, _ForegroundStyleModifier<Color>>, _StrokedShape<Path>, ModifiedContent<VStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(HStack<TupleView<(Spacer, ModifiedContent<Text, _FrameLayout>)>>, ModifiedContent<Spacer, _FrameLayout>, HStack<TupleView<(ModifiedContent<Text, _FrameLayout>, Spacer)>>)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _ForegroundStyleModifier<Color>>, ModifiedContent<Spacer, _FrameLayout>)>>, _FlexFrameLayout>)>(v12, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA13_StrokedShapeVyAA4PathVGAA24_ForegroundStyleModifierVyAA5ColorVGG_AjEyAA6VStackVyACyAA6SpacerV_AEyAEyAEyAA6HStackVyACyAVyACyAT_AEyAA4TextVAA12_FrameLayoutVGtGG_AEyAtZGAVyACyA__ATtGGtGG07WorkoutB025MetricDescriptionCoreFontVGA7_26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGAOGA2_tGGAA05_FlexrS0VGtGMd, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA13_StrokedShapeVyAA4PathVGAA24_ForegroundStyleModifierVyAA5ColorVGG_AjEyAA6VStackVyACyAA6SpacerV_AEyAEyAEyAA6HStackVyACyAVyACyAT_AEyAA4TextVAA12_FrameLayoutVGtGG_AEyAtZGAVyACyA__ATtGGtGG07WorkoutB025MetricDescriptionCoreFontVGA7_26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGAOGA2_tGGAA05_FlexrS0VGtGMR);
  *a3 = v5;
  a3[1] = v7;
  return memcpy(a3 + 2, __dst, 0x308uLL);
}

uint64_t closure #1 in closure #1 in MirrorArcView.body.getter(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = v1;
  v10 = v9;
  v11 = type metadata accessor for Color.RGBColorSpace();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v18[8] = v8;
  v18[9] = v7;
  v18[10] = v5;
  Path.init(_:)();
  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  (*(v12 + 104))(v14, *MEMORY[0x277CE0EE0], v11);
  v15 = Color.init(_:red:green:blue:opacity:)();
  *&v18[2] = v8;
  v18[3] = v7;
  v18[4] = v5;
  v18[5] = v3;
  Path.init(_:)();
  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  v16 = static HorizontalAlignment.center.getter();
  v43 = 0;
  closure #3 in closure #1 in closure #1 in MirrorArcView.body.getter(v33);
  memcpy(v54, v33, sizeof(v54));
  memcpy(v55, v33, 0x1D8uLL);
  outlined init with copy of TupleView<(ModifiedContent<_StrokedShape<Path>, _ForegroundStyleModifier<Color>>, _StrokedShape<Path>, ModifiedContent<VStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(HStack<TupleView<(Spacer, ModifiedContent<Text, _FrameLayout>)>>, ModifiedContent<Spacer, _FrameLayout>, HStack<TupleView<(ModifiedContent<Text, _FrameLayout>, Spacer)>>)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _ForegroundStyleModifier<Color>>, ModifiedContent<Spacer, _FrameLayout>)>>, _FlexFrameLayout>)>(v54, v32, &_s7SwiftUI9TupleViewVyAA6SpacerV_AA15ModifiedContentVyAGyAGyAA6HStackVyACyAIyACyAE_AGyAA4TextVAA12_FrameLayoutVGtGG_AGyAeMGAIyACyAN_AEtGGtGG07WorkoutB025MetricDescriptionCoreFontVGAV26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGAA24_ForegroundStyleModifierVyAA5ColorVGGAQtGMd, &_s7SwiftUI9TupleViewVyAA6SpacerV_AA15ModifiedContentVyAGyAGyAA6HStackVyACyAIyACyAE_AGyAA4TextVAA12_FrameLayoutVGtGG_AGyAeMGAIyACyAN_AEtGGtGG07WorkoutB025MetricDescriptionCoreFontVGAV26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGAA24_ForegroundStyleModifierVyAA5ColorVGGAQtGMR);
  outlined destroy of TupleView<(ModifiedContent<_StrokedShape<Path>, _ForegroundStyleModifier<Color>>, _StrokedShape<Path>, ModifiedContent<VStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(HStack<TupleView<(Spacer, ModifiedContent<Text, _FrameLayout>)>>, ModifiedContent<Spacer, _FrameLayout>, HStack<TupleView<(ModifiedContent<Text, _FrameLayout>, Spacer)>>)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _ForegroundStyleModifier<Color>>, ModifiedContent<Spacer, _FrameLayout>)>>, _FlexFrameLayout>)>(v55, &_s7SwiftUI9TupleViewVyAA6SpacerV_AA15ModifiedContentVyAGyAGyAA6HStackVyACyAIyACyAE_AGyAA4TextVAA12_FrameLayoutVGtGG_AGyAeMGAIyACyAN_AEtGGtGG07WorkoutB025MetricDescriptionCoreFontVGAV26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGAA24_ForegroundStyleModifierVyAA5ColorVGGAQtGMd, &_s7SwiftUI9TupleViewVyAA6SpacerV_AA15ModifiedContentVyAGyAGyAA6HStackVyACyAIyACyAE_AGyAA4TextVAA12_FrameLayoutVGtGG_AGyAeMGAIyACyAN_AEtGGtGG07WorkoutB025MetricDescriptionCoreFontVGAV26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGAA24_ForegroundStyleModifierVyAA5ColorVGGAQtGMR);
  memcpy(&v42[7], v54, 0x1D8uLL);
  LOBYTE(v3) = v43;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v29[2] = v51;
  v29[3] = v52;
  v29[4] = v53;
  v29[1] = v50;
  v29[0] = v49;
  v30 = v15;
  *&v21[5] = v15;
  v21[2] = v51;
  v21[3] = v52;
  v21[4] = v53;
  v21[0] = v49;
  v21[1] = v50;
  v31[2] = v46;
  v31[3] = v47;
  v31[4] = v48;
  v31[1] = v45;
  v31[0] = v44;
  *(&v21[6] + 8) = v45;
  *(&v21[7] + 8) = v46;
  *(&v21[8] + 8) = v47;
  *(&v21[9] + 8) = v48;
  *(&v21[5] + 8) = v44;
  v32[0] = v16;
  LOBYTE(v32[1]) = v3;
  memcpy(&v32[1] + 1, v42, 0x1DFuLL);
  v32[35] = v26;
  v32[36] = v27;
  v32[37] = v28;
  v32[31] = v22;
  v32[32] = v23;
  v32[34] = v25;
  v32[33] = v24;
  memcpy(&v21[10] + 8, v32, 0x260uLL);
  memcpy(v10, v21, 0x308uLL);
  v33[0] = v16;
  v33[1] = 0;
  LOBYTE(v33[2]) = v3;
  memcpy(&v33[2] + 1, v42, 0x1DFuLL);
  v38 = v26;
  v39 = v27;
  v40 = v28;
  v34 = v22;
  v35 = v23;
  v37 = v25;
  v36 = v24;
  outlined init with copy of TupleView<(ModifiedContent<_StrokedShape<Path>, _ForegroundStyleModifier<Color>>, _StrokedShape<Path>, ModifiedContent<VStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(HStack<TupleView<(Spacer, ModifiedContent<Text, _FrameLayout>)>>, ModifiedContent<Spacer, _FrameLayout>, HStack<TupleView<(ModifiedContent<Text, _FrameLayout>, Spacer)>>)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _ForegroundStyleModifier<Color>>, ModifiedContent<Spacer, _FrameLayout>)>>, _FlexFrameLayout>)>(v29, v19, &_s7SwiftUI15ModifiedContentVyAA13_StrokedShapeVyAA4PathVGAA24_ForegroundStyleModifierVyAA5ColorVGGMd, &_s7SwiftUI15ModifiedContentVyAA13_StrokedShapeVyAA4PathVGAA24_ForegroundStyleModifierVyAA5ColorVGGMR);
  outlined init with copy of TupleView<(ModifiedContent<_StrokedShape<Path>, _ForegroundStyleModifier<Color>>, _StrokedShape<Path>, ModifiedContent<VStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(HStack<TupleView<(Spacer, ModifiedContent<Text, _FrameLayout>)>>, ModifiedContent<Spacer, _FrameLayout>, HStack<TupleView<(ModifiedContent<Text, _FrameLayout>, Spacer)>>)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _ForegroundStyleModifier<Color>>, ModifiedContent<Spacer, _FrameLayout>)>>, _FlexFrameLayout>)>(v31, v19, &_s7SwiftUI13_StrokedShapeVyAA4PathVGMd, &_s7SwiftUI13_StrokedShapeVyAA4PathVGMR);
  outlined init with copy of TupleView<(ModifiedContent<_StrokedShape<Path>, _ForegroundStyleModifier<Color>>, _StrokedShape<Path>, ModifiedContent<VStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(HStack<TupleView<(Spacer, ModifiedContent<Text, _FrameLayout>)>>, ModifiedContent<Spacer, _FrameLayout>, HStack<TupleView<(ModifiedContent<Text, _FrameLayout>, Spacer)>>)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _ForegroundStyleModifier<Color>>, ModifiedContent<Spacer, _FrameLayout>)>>, _FlexFrameLayout>)>(v32, v19, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA6SpacerV_ACyACyACyAA6HStackVyAGyAKyAGyAI_ACyAA4TextVAA12_FrameLayoutVGtGG_ACyAiOGAKyAGyAP_AItGGtGG07WorkoutB025MetricDescriptionCoreFontVGAX26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGAA24_ForegroundStyleModifierVyAA5ColorVGGAStGGAA05_FlexkL0VGMd, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA6SpacerV_ACyACyACyAA6HStackVyAGyAKyAGyAI_ACyAA4TextVAA12_FrameLayoutVGtGG_ACyAiOGAKyAGyAP_AItGGtGG07WorkoutB025MetricDescriptionCoreFontVGAX26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGAA24_ForegroundStyleModifierVyAA5ColorVGGAStGGAA05_FlexkL0VGMR);
  outlined destroy of TupleView<(ModifiedContent<_StrokedShape<Path>, _ForegroundStyleModifier<Color>>, _StrokedShape<Path>, ModifiedContent<VStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(HStack<TupleView<(Spacer, ModifiedContent<Text, _FrameLayout>)>>, ModifiedContent<Spacer, _FrameLayout>, HStack<TupleView<(ModifiedContent<Text, _FrameLayout>, Spacer)>>)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _ForegroundStyleModifier<Color>>, ModifiedContent<Spacer, _FrameLayout>)>>, _FlexFrameLayout>)>(v33, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA6SpacerV_ACyACyACyAA6HStackVyAGyAKyAGyAI_ACyAA4TextVAA12_FrameLayoutVGtGG_ACyAiOGAKyAGyAP_AItGGtGG07WorkoutB025MetricDescriptionCoreFontVGAX26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGAA24_ForegroundStyleModifierVyAA5ColorVGGAStGGAA05_FlexkL0VGMd, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA6SpacerV_ACyACyACyAA6HStackVyAGyAKyAGyAI_ACyAA4TextVAA12_FrameLayoutVGtGG_ACyAiOGAKyAGyAP_AItGGtGG07WorkoutB025MetricDescriptionCoreFontVGAX26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGAA24_ForegroundStyleModifierVyAA5ColorVGGAStGGAA05_FlexkL0VGMR);
  v41[2] = v46;
  v41[3] = v47;
  v41[4] = v48;
  v41[1] = v45;
  v41[0] = v44;
  outlined destroy of TupleView<(ModifiedContent<_StrokedShape<Path>, _ForegroundStyleModifier<Color>>, _StrokedShape<Path>, ModifiedContent<VStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(HStack<TupleView<(Spacer, ModifiedContent<Text, _FrameLayout>)>>, ModifiedContent<Spacer, _FrameLayout>, HStack<TupleView<(ModifiedContent<Text, _FrameLayout>, Spacer)>>)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _ForegroundStyleModifier<Color>>, ModifiedContent<Spacer, _FrameLayout>)>>, _FlexFrameLayout>)>(v41, &_s7SwiftUI13_StrokedShapeVyAA4PathVGMd, &_s7SwiftUI13_StrokedShapeVyAA4PathVGMR);
  v19[2] = v51;
  v19[3] = v52;
  v19[4] = v53;
  v19[0] = v49;
  v19[1] = v50;
  v20 = v15;
  return outlined destroy of TupleView<(ModifiedContent<_StrokedShape<Path>, _ForegroundStyleModifier<Color>>, _StrokedShape<Path>, ModifiedContent<VStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(HStack<TupleView<(Spacer, ModifiedContent<Text, _FrameLayout>)>>, ModifiedContent<Spacer, _FrameLayout>, HStack<TupleView<(ModifiedContent<Text, _FrameLayout>, Spacer)>>)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _ForegroundStyleModifier<Color>>, ModifiedContent<Spacer, _FrameLayout>)>>, _FlexFrameLayout>)>(v19, &_s7SwiftUI15ModifiedContentVyAA13_StrokedShapeVyAA4PathVGAA24_ForegroundStyleModifierVyAA5ColorVGGMd, &_s7SwiftUI15ModifiedContentVyAA13_StrokedShapeVyAA4PathVGAA24_ForegroundStyleModifierVyAA5ColorVGGMR);
}

uint64_t closure #3 in closure #1 in closure #1 in MirrorArcView.body.getter@<X0>(uint64_t a2@<X8>)
{
  v3 = static VerticalAlignment.center.getter();
  v11[0] = 0;
  closure #1 in closure #3 in closure #1 in closure #1 in MirrorArcView.body.getter(__src);
  memcpy(__dst, __src, 0x129uLL);
  memcpy(v22, __src, 0x129uLL);
  outlined init with copy of TupleView<(ModifiedContent<_StrokedShape<Path>, _ForegroundStyleModifier<Color>>, _StrokedShape<Path>, ModifiedContent<VStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(HStack<TupleView<(Spacer, ModifiedContent<Text, _FrameLayout>)>>, ModifiedContent<Spacer, _FrameLayout>, HStack<TupleView<(ModifiedContent<Text, _FrameLayout>, Spacer)>>)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _ForegroundStyleModifier<Color>>, ModifiedContent<Spacer, _FrameLayout>)>>, _FlexFrameLayout>)>(__dst, v27, &_s7SwiftUI9TupleViewVyAA6HStackVyACyAA6SpacerV_AA15ModifiedContentVyAA4TextVAA12_FrameLayoutVGtGG_AIyAgMGAEyACyAN_AGtGGtGMd, &_s7SwiftUI9TupleViewVyAA6HStackVyACyAA6SpacerV_AA15ModifiedContentVyAA4TextVAA12_FrameLayoutVGtGG_AIyAgMGAEyACyAN_AGtGGtGMR);
  outlined destroy of TupleView<(ModifiedContent<_StrokedShape<Path>, _ForegroundStyleModifier<Color>>, _StrokedShape<Path>, ModifiedContent<VStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(HStack<TupleView<(Spacer, ModifiedContent<Text, _FrameLayout>)>>, ModifiedContent<Spacer, _FrameLayout>, HStack<TupleView<(ModifiedContent<Text, _FrameLayout>, Spacer)>>)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _ForegroundStyleModifier<Color>>, ModifiedContent<Spacer, _FrameLayout>)>>, _FlexFrameLayout>)>(v22, &_s7SwiftUI9TupleViewVyAA6HStackVyACyAA6SpacerV_AA15ModifiedContentVyAA4TextVAA12_FrameLayoutVGtGG_AIyAgMGAEyACyAN_AGtGGtGMd, &_s7SwiftUI9TupleViewVyAA6HStackVyACyAA6SpacerV_AA15ModifiedContentVyAA4TextVAA12_FrameLayoutVGtGG_AIyAgMGAEyACyAN_AGtGGtGMR);
  memcpy(&__src[7], __dst, 0x129uLL);
  v18[0] = v3;
  v18[1] = 0;
  v19 = 0;
  memcpy(v20, __src, sizeof(v20));
  specialized View.metricDescriptionFont(multiline:)(0, v23);
  outlined destroy of TupleView<(ModifiedContent<_StrokedShape<Path>, _ForegroundStyleModifier<Color>>, _StrokedShape<Path>, ModifiedContent<VStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(HStack<TupleView<(Spacer, ModifiedContent<Text, _FrameLayout>)>>, ModifiedContent<Spacer, _FrameLayout>, HStack<TupleView<(ModifiedContent<Text, _FrameLayout>, Spacer)>>)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _ForegroundStyleModifier<Color>>, ModifiedContent<Spacer, _FrameLayout>)>>, _FlexFrameLayout>)>(v18, &_s7SwiftUI6HStackVyAA9TupleViewVyACyAEyAA6SpacerV_AA15ModifiedContentVyAA4TextVAA12_FrameLayoutVGtGG_AIyAgMGACyAEyAN_AGtGGtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyACyAEyAA6SpacerV_AA15ModifiedContentVyAA4TextVAA12_FrameLayoutVGtGG_AIyAgMGACyAEyAN_AGtGGtGGMR);
  v4 = [objc_opt_self() secondaryLabelColor];
  v5 = Color.init(uiColor:)();
  if (one-time initialization token for heroHeight != -1)
  {
    swift_once();
  }

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v6 = v13;
  v7 = v14;
  v8 = v15;
  v9 = v16;
  v26 = 1;
  v25 = v14;
  v24 = v16;
  v12[400] = 1;
  memcpy(v27, v23, 0x180uLL);
  v27[48] = v5;
  memcpy(&v12[7], v27, 0x188uLL);
  *a2 = 0;
  *(a2 + 8) = 1;
  memcpy((a2 + 9), v12, 0x18FuLL);
  *(a2 + 408) = 0;
  *(a2 + 416) = 1;
  *(a2 + 424) = v6;
  *(a2 + 432) = v7;
  *(a2 + 440) = v8;
  *(a2 + 448) = v9;
  *(a2 + 456) = v17;
  memcpy(__src, v23, sizeof(__src));
  v29 = v5;
  outlined init with copy of TupleView<(ModifiedContent<_StrokedShape<Path>, _ForegroundStyleModifier<Color>>, _StrokedShape<Path>, ModifiedContent<VStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(HStack<TupleView<(Spacer, ModifiedContent<Text, _FrameLayout>)>>, ModifiedContent<Spacer, _FrameLayout>, HStack<TupleView<(ModifiedContent<Text, _FrameLayout>, Spacer)>>)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _ForegroundStyleModifier<Color>>, ModifiedContent<Spacer, _FrameLayout>)>>, _FlexFrameLayout>)>(v27, v11, &_s7SwiftUI15ModifiedContentVyACyACyAA6HStackVyAA9TupleViewVyAEyAGyAA6SpacerV_ACyAA4TextVAA12_FrameLayoutVGtGG_ACyAiMGAEyAGyAN_AItGGtGG07WorkoutB025MetricDescriptionCoreFontVGAV26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGAA24_ForegroundStyleModifierVyAA5ColorVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA6HStackVyAA9TupleViewVyAEyAGyAA6SpacerV_ACyAA4TextVAA12_FrameLayoutVGtGG_ACyAiMGAEyAGyAN_AItGGtGG07WorkoutB025MetricDescriptionCoreFontVGAV26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGAA24_ForegroundStyleModifierVyAA5ColorVGGMR);
  return outlined destroy of TupleView<(ModifiedContent<_StrokedShape<Path>, _ForegroundStyleModifier<Color>>, _StrokedShape<Path>, ModifiedContent<VStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(HStack<TupleView<(Spacer, ModifiedContent<Text, _FrameLayout>)>>, ModifiedContent<Spacer, _FrameLayout>, HStack<TupleView<(ModifiedContent<Text, _FrameLayout>, Spacer)>>)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _ForegroundStyleModifier<Color>>, ModifiedContent<Spacer, _FrameLayout>)>>, _FlexFrameLayout>)>(__src, &_s7SwiftUI15ModifiedContentVyACyACyAA6HStackVyAA9TupleViewVyAEyAGyAA6SpacerV_ACyAA4TextVAA12_FrameLayoutVGtGG_ACyAiMGAEyAGyAN_AItGGtGG07WorkoutB025MetricDescriptionCoreFontVGAV26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGAA24_ForegroundStyleModifierVyAA5ColorVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA6HStackVyAA9TupleViewVyAEyAGyAA6SpacerV_ACyAA4TextVAA12_FrameLayoutVGtGG_ACyAiMGAEyAGyAN_AItGGtGG07WorkoutB025MetricDescriptionCoreFontVGAV26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGAA24_ForegroundStyleModifierVyAA5ColorVGGMR);
}

uint64_t closure #1 in closure #3 in closure #1 in closure #1 in MirrorArcView.body.getter@<X0>(uint64_t a2@<X8>)
{
  v20 = static VerticalAlignment.center.getter();
  LOBYTE(v50[0]) = 0;
  closure #1 in closure #1 in closure #3 in closure #1 in closure #1 in MirrorArcView.body.getter(&v58);
  v31 = *&v59[16];
  v32 = *&v59[32];
  v33 = *&v59[48];
  v34 = *&v59[64];
  v29 = v58;
  v30 = *v59;
  v35[2] = *&v59[16];
  v35[3] = *&v59[32];
  v35[4] = *&v59[48];
  v35[5] = *&v59[64];
  v35[0] = v58;
  v35[1] = *v59;
  outlined init with copy of TupleView<(ModifiedContent<_StrokedShape<Path>, _ForegroundStyleModifier<Color>>, _StrokedShape<Path>, ModifiedContent<VStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(HStack<TupleView<(Spacer, ModifiedContent<Text, _FrameLayout>)>>, ModifiedContent<Spacer, _FrameLayout>, HStack<TupleView<(ModifiedContent<Text, _FrameLayout>, Spacer)>>)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _ForegroundStyleModifier<Color>>, ModifiedContent<Spacer, _FrameLayout>)>>, _FlexFrameLayout>)>(&v29, v46, &_s7SwiftUI9TupleViewVyAA6SpacerV_AA15ModifiedContentVyAA4TextVAA12_FrameLayoutVGtGMd, &_s7SwiftUI9TupleViewVyAA6SpacerV_AA15ModifiedContentVyAA4TextVAA12_FrameLayoutVGtGMR);
  outlined destroy of TupleView<(ModifiedContent<_StrokedShape<Path>, _ForegroundStyleModifier<Color>>, _StrokedShape<Path>, ModifiedContent<VStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(HStack<TupleView<(Spacer, ModifiedContent<Text, _FrameLayout>)>>, ModifiedContent<Spacer, _FrameLayout>, HStack<TupleView<(ModifiedContent<Text, _FrameLayout>, Spacer)>>)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _ForegroundStyleModifier<Color>>, ModifiedContent<Spacer, _FrameLayout>)>>, _FlexFrameLayout>)>(v35, &_s7SwiftUI9TupleViewVyAA6SpacerV_AA15ModifiedContentVyAA4TextVAA12_FrameLayoutVGtGMd, &_s7SwiftUI9TupleViewVyAA6SpacerV_AA15ModifiedContentVyAA4TextVAA12_FrameLayoutVGtGMR);
  *&v22[39] = v31;
  *&v22[55] = v32;
  *&v22[71] = v33;
  *&v22[87] = v34;
  *&v22[7] = v29;
  *&v22[23] = v30;
  v3 = v50[0];
  if (one-time initialization token for heroHeight != -1)
  {
    swift_once();
  }

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v38 = 1;
  v37 = v24;
  v36 = v26;
  v4 = static VerticalAlignment.center.getter();
  LOBYTE(v50[0]) = 0;
  closure #2 in closure #1 in closure #3 in closure #1 in closure #1 in MirrorArcView.body.getter(&v58);
  v41 = *&v59[16];
  v42 = *&v59[32];
  *v43 = *&v59[48];
  *&v43[9] = *&v59[57];
  v39 = v58;
  v40 = *v59;
  *(v45 + 9) = *&v59[57];
  v44[2] = *&v59[16];
  v44[3] = *&v59[32];
  v45[0] = *&v59[48];
  v44[0] = v58;
  v44[1] = *v59;
  outlined init with copy of TupleView<(ModifiedContent<_StrokedShape<Path>, _ForegroundStyleModifier<Color>>, _StrokedShape<Path>, ModifiedContent<VStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(HStack<TupleView<(Spacer, ModifiedContent<Text, _FrameLayout>)>>, ModifiedContent<Spacer, _FrameLayout>, HStack<TupleView<(ModifiedContent<Text, _FrameLayout>, Spacer)>>)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _ForegroundStyleModifier<Color>>, ModifiedContent<Spacer, _FrameLayout>)>>, _FlexFrameLayout>)>(&v39, v46, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA4TextVAA12_FrameLayoutVG_AA6SpacerVtGMd, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA4TextVAA12_FrameLayoutVG_AA6SpacerVtGMR);
  outlined destroy of TupleView<(ModifiedContent<_StrokedShape<Path>, _ForegroundStyleModifier<Color>>, _StrokedShape<Path>, ModifiedContent<VStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(HStack<TupleView<(Spacer, ModifiedContent<Text, _FrameLayout>)>>, ModifiedContent<Spacer, _FrameLayout>, HStack<TupleView<(ModifiedContent<Text, _FrameLayout>, Spacer)>>)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _ForegroundStyleModifier<Color>>, ModifiedContent<Spacer, _FrameLayout>)>>, _FlexFrameLayout>)>(v44, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA4TextVAA12_FrameLayoutVG_AA6SpacerVtGMd, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA4TextVAA12_FrameLayoutVG_AA6SpacerVtGMR);
  *&v21[39] = v41;
  *&v21[55] = v42;
  *&v21[71] = *v43;
  *&v21[7] = v39;
  *&v21[23] = v40;
  v5 = v50[0];
  v46[0] = v20;
  v46[1] = 0;
  v47[0] = v3;
  *&v47[33] = *&v22[32];
  *&v47[17] = *&v22[16];
  *&v47[1] = *v22;
  *&v47[96] = *&v22[95];
  *&v47[81] = *&v22[80];
  *&v47[65] = *&v22[64];
  *&v47[49] = *&v22[48];
  v48 = v4;
  v49[0] = v50[0];
  *&v49[17] = *&v21[16];
  *&v49[1] = *v21;
  v6 = *&v43[9];
  *&v49[81] = *&v43[9];
  *&v49[65] = *&v21[64];
  *&v49[49] = *&v21[48];
  *&v49[33] = *&v21[32];
  v7 = *v47;
  v8 = *&v47[32];
  *(a2 + 32) = *&v47[16];
  *(a2 + 48) = v8;
  *a2 = v20;
  *(a2 + 16) = v7;
  v9 = *&v47[48];
  v10 = *&v47[80];
  *(a2 + 80) = *&v47[64];
  *(a2 + 96) = v10;
  *(a2 + 64) = v9;
  v11 = *&v49[16];
  *(a2 + 232) = *&v49[32];
  v12 = v48;
  v13 = *v49;
  *(a2 + 216) = v11;
  *(a2 + 200) = v13;
  *(a2 + 184) = v12;
  v14 = *&v49[48];
  v15 = *&v49[80];
  *(a2 + 264) = *&v49[64];
  *(a2 + 280) = v15;
  *(a2 + 248) = v14;
  v53 = *&v21[16];
  v52 = *v21;
  v16 = v38;
  v17 = v37;
  v18 = v36;
  *(a2 + 112) = *&v47[96];
  *(a2 + 120) = 0;
  *(a2 + 128) = v16;
  *(a2 + 136) = v23;
  *(a2 + 144) = v17;
  *(a2 + 152) = v25;
  *(a2 + 160) = v18;
  *(a2 + 168) = v27;
  *(a2 + 176) = v28;
  *(a2 + 296) = v49[96];
  v50[0] = v4;
  v50[1] = 0;
  v51 = v5;
  v57 = v6;
  v56 = *&v21[64];
  v55 = *&v21[48];
  v54 = *&v21[32];
  outlined init with copy of TupleView<(ModifiedContent<_StrokedShape<Path>, _ForegroundStyleModifier<Color>>, _StrokedShape<Path>, ModifiedContent<VStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(HStack<TupleView<(Spacer, ModifiedContent<Text, _FrameLayout>)>>, ModifiedContent<Spacer, _FrameLayout>, HStack<TupleView<(ModifiedContent<Text, _FrameLayout>, Spacer)>>)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _ForegroundStyleModifier<Color>>, ModifiedContent<Spacer, _FrameLayout>)>>, _FlexFrameLayout>)>(v46, &v58, &_s7SwiftUI6HStackVyAA9TupleViewVyAA6SpacerV_AA15ModifiedContentVyAA4TextVAA12_FrameLayoutVGtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA6SpacerV_AA15ModifiedContentVyAA4TextVAA12_FrameLayoutVGtGGMR);
  outlined init with copy of TupleView<(ModifiedContent<_StrokedShape<Path>, _ForegroundStyleModifier<Color>>, _StrokedShape<Path>, ModifiedContent<VStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(HStack<TupleView<(Spacer, ModifiedContent<Text, _FrameLayout>)>>, ModifiedContent<Spacer, _FrameLayout>, HStack<TupleView<(ModifiedContent<Text, _FrameLayout>, Spacer)>>)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _ForegroundStyleModifier<Color>>, ModifiedContent<Spacer, _FrameLayout>)>>, _FlexFrameLayout>)>(&v48, &v58, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAA4TextVAA12_FrameLayoutVG_AA6SpacerVtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAA4TextVAA12_FrameLayoutVG_AA6SpacerVtGGMR);
  outlined destroy of TupleView<(ModifiedContent<_StrokedShape<Path>, _ForegroundStyleModifier<Color>>, _StrokedShape<Path>, ModifiedContent<VStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(HStack<TupleView<(Spacer, ModifiedContent<Text, _FrameLayout>)>>, ModifiedContent<Spacer, _FrameLayout>, HStack<TupleView<(ModifiedContent<Text, _FrameLayout>, Spacer)>>)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _ForegroundStyleModifier<Color>>, ModifiedContent<Spacer, _FrameLayout>)>>, _FlexFrameLayout>)>(v50, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAA4TextVAA12_FrameLayoutVG_AA6SpacerVtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAA4TextVAA12_FrameLayoutVG_AA6SpacerVtGGMR);
  *&v59[49] = *&v22[48];
  *&v59[65] = *&v22[64];
  *v60 = *&v22[80];
  *&v59[1] = *v22;
  *&v59[17] = *&v22[16];
  v58 = v20;
  v59[0] = v3;
  *&v60[15] = *&v22[95];
  *&v59[33] = *&v22[32];
  return outlined destroy of TupleView<(ModifiedContent<_StrokedShape<Path>, _ForegroundStyleModifier<Color>>, _StrokedShape<Path>, ModifiedContent<VStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(HStack<TupleView<(Spacer, ModifiedContent<Text, _FrameLayout>)>>, ModifiedContent<Spacer, _FrameLayout>, HStack<TupleView<(ModifiedContent<Text, _FrameLayout>, Spacer)>>)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _ForegroundStyleModifier<Color>>, ModifiedContent<Spacer, _FrameLayout>)>>, _FlexFrameLayout>)>(&v58, &_s7SwiftUI6HStackVyAA9TupleViewVyAA6SpacerV_AA15ModifiedContentVyAA4TextVAA12_FrameLayoutVGtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA6SpacerV_AA15ModifiedContentVyAA4TextVAA12_FrameLayoutVGtGGMR);
}

uint64_t closure #1 in closure #1 in closure #3 in closure #1 in closure #1 in MirrorArcView.body.getter@<X0>(uint64_t a2@<X8>)
{
  lazy protocol witness table accessor for type String and conformance String();

  v3 = Text.init<A>(_:)();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  static Alignment.trailing.getter();
  _FrameLayout.init(width:height:alignment:)();
  *&v23 = v3;
  *(&v23 + 1) = v5;
  LOBYTE(v24) = v7 & 1;
  *(&v24 + 1) = v9;
  v10 = v20;
  v25 = v20;
  v11 = v21;
  v26 = v21;
  *&v18[39] = v20;
  v12 = v22;
  v27 = v22;
  *&v18[71] = v22;
  *&v18[55] = v21;
  *&v18[23] = v24;
  *&v18[7] = v23;
  v13 = *v18;
  *(a2 + 25) = *&v18[16];
  *(a2 + 9) = v13;
  v14 = *&v18[64];
  *(a2 + 88) = *&v18[79];
  *(a2 + 73) = v14;
  v15 = *&v18[32];
  *(a2 + 57) = *&v18[48];
  *(a2 + 41) = v15;
  v19 = 1;
  *a2 = 0;
  *(a2 + 8) = 1;
  v28[0] = v3;
  v28[1] = v5;
  v29 = v7 & 1;
  v30 = v9;
  v32 = v11;
  v33 = v12;
  v31 = v10;
  outlined init with copy of TupleView<(ModifiedContent<_StrokedShape<Path>, _ForegroundStyleModifier<Color>>, _StrokedShape<Path>, ModifiedContent<VStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(HStack<TupleView<(Spacer, ModifiedContent<Text, _FrameLayout>)>>, ModifiedContent<Spacer, _FrameLayout>, HStack<TupleView<(ModifiedContent<Text, _FrameLayout>, Spacer)>>)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _ForegroundStyleModifier<Color>>, ModifiedContent<Spacer, _FrameLayout>)>>, _FlexFrameLayout>)>(&v23, v17, &_s7SwiftUI15ModifiedContentVyAA4TextVAA12_FrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA4TextVAA12_FrameLayoutVGMR);
  return outlined destroy of TupleView<(ModifiedContent<_StrokedShape<Path>, _ForegroundStyleModifier<Color>>, _StrokedShape<Path>, ModifiedContent<VStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(HStack<TupleView<(Spacer, ModifiedContent<Text, _FrameLayout>)>>, ModifiedContent<Spacer, _FrameLayout>, HStack<TupleView<(ModifiedContent<Text, _FrameLayout>, Spacer)>>)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _ForegroundStyleModifier<Color>>, ModifiedContent<Spacer, _FrameLayout>)>>, _FlexFrameLayout>)>(v28, &_s7SwiftUI15ModifiedContentVyAA4TextVAA12_FrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA4TextVAA12_FrameLayoutVGMR);
}

uint64_t closure #2 in closure #1 in closure #3 in closure #1 in closure #1 in MirrorArcView.body.getter@<X0>(uint64_t a2@<X8>)
{
  lazy protocol witness table accessor for type String and conformance String();

  v3 = Text.init<A>(_:)();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  static Alignment.leading.getter();
  _FrameLayout.init(width:height:alignment:)();
  *&v21 = v3;
  *(&v21 + 1) = v5;
  LOBYTE(v22) = v7 & 1;
  *(&v22 + 1) = v9;
  v10 = v18;
  v11 = v19;
  v12 = v19;
  v23 = v18;
  v24 = v19;
  v13 = v20;
  v14 = v20;
  v25 = v20;
  v17[80] = 1;
  *(a2 + 32) = v18;
  *(a2 + 48) = v11;
  *(a2 + 64) = v13;
  v15 = v22;
  *a2 = v21;
  *(a2 + 16) = v15;
  *(a2 + 80) = 0;
  *(a2 + 88) = 1;
  v26[0] = v3;
  v26[1] = v5;
  v27 = v7 & 1;
  v28 = v9;
  v30 = v12;
  v31 = v14;
  v29 = v10;
  outlined init with copy of TupleView<(ModifiedContent<_StrokedShape<Path>, _ForegroundStyleModifier<Color>>, _StrokedShape<Path>, ModifiedContent<VStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(HStack<TupleView<(Spacer, ModifiedContent<Text, _FrameLayout>)>>, ModifiedContent<Spacer, _FrameLayout>, HStack<TupleView<(ModifiedContent<Text, _FrameLayout>, Spacer)>>)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _ForegroundStyleModifier<Color>>, ModifiedContent<Spacer, _FrameLayout>)>>, _FlexFrameLayout>)>(&v21, v17, &_s7SwiftUI15ModifiedContentVyAA4TextVAA12_FrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA4TextVAA12_FrameLayoutVGMR);
  return outlined destroy of TupleView<(ModifiedContent<_StrokedShape<Path>, _ForegroundStyleModifier<Color>>, _StrokedShape<Path>, ModifiedContent<VStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(HStack<TupleView<(Spacer, ModifiedContent<Text, _FrameLayout>)>>, ModifiedContent<Spacer, _FrameLayout>, HStack<TupleView<(ModifiedContent<Text, _FrameLayout>, Spacer)>>)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _ForegroundStyleModifier<Color>>, ModifiedContent<Spacer, _FrameLayout>)>>, _FlexFrameLayout>)>(v26, &_s7SwiftUI15ModifiedContentVyAA4TextVAA12_FrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA4TextVAA12_FrameLayoutVGMR);
}

uint64_t protocol witness for View.body.getter in conformance MirrorArcView@<X0>(void *(**a1)@<X0>(uint64_t *a2@<X8>)@<X8>)
{
  v3 = *(v1 + 48);
  v10[2] = *(v1 + 32);
  v10[3] = v3;
  v11 = *(v1 + 64);
  v4 = *(v1 + 16);
  v10[0] = *v1;
  v10[1] = v4;
  v5 = swift_allocObject();
  v6 = *(v1 + 48);
  *(v5 + 48) = *(v1 + 32);
  *(v5 + 64) = v6;
  *(v5 + 80) = *(v1 + 64);
  v7 = *(v1 + 16);
  *(v5 + 16) = *v1;
  *(v5 + 32) = v7;
  *a1 = partial apply for closure #1 in MirrorArcView.body.getter;
  a1[1] = v5;
  return outlined init with copy of MirrorArcView(v10, v9);
}

uint64_t outlined init with copy of TupleView<(ModifiedContent<_StrokedShape<Path>, _ForegroundStyleModifier<Color>>, _StrokedShape<Path>, ModifiedContent<VStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(HStack<TupleView<(Spacer, ModifiedContent<Text, _FrameLayout>)>>, ModifiedContent<Spacer, _FrameLayout>, HStack<TupleView<(ModifiedContent<Text, _FrameLayout>, Spacer)>>)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _ForegroundStyleModifier<Color>>, ModifiedContent<Spacer, _FrameLayout>)>>, _FlexFrameLayout>)>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t outlined destroy of TupleView<(ModifiedContent<_StrokedShape<Path>, _ForegroundStyleModifier<Color>>, _StrokedShape<Path>, ModifiedContent<VStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(HStack<TupleView<(Spacer, ModifiedContent<Text, _FrameLayout>)>>, ModifiedContent<Spacer, _FrameLayout>, HStack<TupleView<(ModifiedContent<Text, _FrameLayout>, Spacer)>>)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _ForegroundStyleModifier<Color>>, ModifiedContent<Spacer, _FrameLayout>)>>, _FlexFrameLayout>)>(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t lazy protocol witness table accessor for type GeometryReader<ZStack<TupleView<(ModifiedContent<_StrokedShape<Path>, _ForegroundStyleModifier<Color>>, _StrokedShape<Path>, ModifiedContent<VStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(HStack<TupleView<(Spacer, ModifiedContent<Text, _FrameLayout>)>>, ModifiedContent<Spacer, _FrameLayout>, HStack<TupleView<(ModifiedContent<Text, _FrameLayout>, Spacer)>>)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _ForegroundStyleModifier<Color>>, ModifiedContent<Spacer, _FrameLayout>)>>, _FlexFrameLayout>)>>> and conformance GeometryReader<A>()
{
  result = lazy protocol witness table cache variable for type GeometryReader<ZStack<TupleView<(ModifiedContent<_StrokedShape<Path>, _ForegroundStyleModifier<Color>>, _StrokedShape<Path>, ModifiedContent<VStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(HStack<TupleView<(Spacer, ModifiedContent<Text, _FrameLayout>)>>, ModifiedContent<Spacer, _FrameLayout>, HStack<TupleView<(ModifiedContent<Text, _FrameLayout>, Spacer)>>)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _ForegroundStyleModifier<Color>>, ModifiedContent<Spacer, _FrameLayout>)>>, _FlexFrameLayout>)>>> and conformance GeometryReader<A>;
  if (!lazy protocol witness table cache variable for type GeometryReader<ZStack<TupleView<(ModifiedContent<_StrokedShape<Path>, _ForegroundStyleModifier<Color>>, _StrokedShape<Path>, ModifiedContent<VStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(HStack<TupleView<(Spacer, ModifiedContent<Text, _FrameLayout>)>>, ModifiedContent<Spacer, _FrameLayout>, HStack<TupleView<(ModifiedContent<Text, _FrameLayout>, Spacer)>>)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _ForegroundStyleModifier<Color>>, ModifiedContent<Spacer, _FrameLayout>)>>, _FlexFrameLayout>)>>> and conformance GeometryReader<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI14GeometryReaderVyAA6ZStackVyAA9TupleViewVyAA15ModifiedContentVyAA13_StrokedShapeVyAA4PathVGAA24_ForegroundStyleModifierVyAA5ColorVGG_AnIyAA6VStackVyAGyAA6SpacerV_AIyAIyAIyAA6HStackVyAGyAZyAGyAX_AIyAA4TextVAA12_FrameLayoutVGtGG_AIyAXA2_GAZyAGyA3__AXtGGtGG07WorkoutB025MetricDescriptionCoreFontVGA11_26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGASGA6_tGGAA05_FlexuV0VGtGGGMd, &_s7SwiftUI14GeometryReaderVyAA6ZStackVyAA9TupleViewVyAA15ModifiedContentVyAA13_StrokedShapeVyAA4PathVGAA24_ForegroundStyleModifierVyAA5ColorVGG_AnIyAA6VStackVyAGyAA6SpacerV_AIyAIyAIyAA6HStackVyAGyAZyAGyAX_AIyAA4TextVAA12_FrameLayoutVGtGG_AIyAXA2_GAZyAGyA3__AXtGGtGG07WorkoutB025MetricDescriptionCoreFontVGA11_26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGASGA6_tGGAA05_FlexuV0VGtGGGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeometryReader<ZStack<TupleView<(ModifiedContent<_StrokedShape<Path>, _ForegroundStyleModifier<Color>>, _StrokedShape<Path>, ModifiedContent<VStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(HStack<TupleView<(Spacer, ModifiedContent<Text, _FrameLayout>)>>, ModifiedContent<Spacer, _FrameLayout>, HStack<TupleView<(ModifiedContent<Text, _FrameLayout>, Spacer)>>)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _ForegroundStyleModifier<Color>>, ModifiedContent<Spacer, _FrameLayout>)>>, _FlexFrameLayout>)>>> and conformance GeometryReader<A>);
  }

  return result;
}

void *SaveCopyButton.init(workoutConfiguration:isAlreadyStored:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  type metadata accessor for WorkoutConfigurationDataSource();
  _s11WorkoutCore0A23ConfigurationDataSourceCAC7Combine16ObservableObjectAAWlTm_0(&lazy protocol witness table cache variable for type WorkoutConfigurationDataSource and conformance WorkoutConfigurationDataSource, MEMORY[0x277D7DC28], MEMORY[0x277D7DC20]);
  *a3 = EnvironmentObject.init()();
  *(a3 + 8) = v6;
  result = State.init(wrappedValue:)();
  *(a3 + 40) = v8;
  *(a3 + 48) = v9;
  *(a3 + 16) = a1;
  *(a3 + 24) = a2;
  *(a3 + 32) = 0;
  return result;
}

void one-time initialization function for confirmButtonTitle()
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
  v2._object = 0x800000020CB97C10;
  v2._countAndFlagsBits = 0xD000000000000023;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  v5._countAndFlagsBits = 0;
  v4 = NSLocalizedString(_:tableName:bundle:value:comment:)(v2, v1, v0, v3, v5);

  static SaveCopyButton.confirmButtonTitle = v4;
}

void one-time initialization function for saveButtonTitle()
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
  v2._object = 0x800000020CB97C40;
  v2._countAndFlagsBits = 0xD000000000000019;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  v5._countAndFlagsBits = 0;
  v4 = NSLocalizedString(_:tableName:bundle:value:comment:)(v2, v1, v0, v3, v5);

  static SaveCopyButton.saveButtonTitle = v4;
}

uint64_t SaveCopyButton.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA6HStackVyAA9TupleViewVyAA6SpacerV_AA012_ConditionalD0VyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGAQySiSgGGACyAoYGGAKtGGGAA017_AllowsHitTestingO0VG07WorkoutB0018DisabledAppearanceO0VGMd, &_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA6HStackVyAA9TupleViewVyAA6SpacerV_AA012_ConditionalD0VyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGAQySiSgGGACyAoYGGAKtGGGAA017_AllowsHitTestingO0VG07WorkoutB0018DisabledAppearanceO0VGMR);
  MEMORY[0x28223BE20](v3);
  v5 = &v18[-v4];
  v6 = v1[1];
  v23 = *v1;
  *v24 = v6;
  *&v24[16] = v1[2];
  *&v24[32] = *(v1 + 6);
  v7 = swift_allocObject();
  v8 = v1[1];
  *(v7 + 16) = *v1;
  *(v7 + 32) = v8;
  *(v7 + 48) = v1[2];
  *(v7 + 64) = *(v1 + 6);
  v19 = &v23;
  outlined init with copy of SaveCopyButton(&v23, &v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA9TupleViewVyAA6SpacerV_AA19_ConditionalContentVyAA08ModifiedH0VyAKyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGAOySiSgGGAKyAmWGGAGtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA6SpacerV_AA19_ConditionalContentVyAA08ModifiedH0VyAKyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGAOySiSgGGAKyAmWGGAGtGGMR);
  lazy protocol witness table accessor for type HStack<TupleView<(Spacer, _ConditionalContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>>, Spacer)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type HStack<TupleView<(Spacer, _ConditionalContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>>, Spacer)>> and conformance HStack<A>, &_s7SwiftUI6HStackVyAA9TupleViewVyAA6SpacerV_AA19_ConditionalContentVyAA08ModifiedH0VyAKyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGAOySiSgGGAKyAmWGGAGtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA6SpacerV_AA19_ConditionalContentVyAA08ModifiedH0VyAKyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGAOySiSgGGAKyAmWGGAGtGGMR, MEMORY[0x277CE1138]);
  Button.init(action:label:)();
  v25 = *&v24[8];
  v21 = *&v24[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd, &_s7SwiftUI5StateVySbGMR);
  State.wrappedValue.getter();
  v9 = v20;
  v5[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA6HStackVyAA9TupleViewVyAA6SpacerV_AA012_ConditionalD0VyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGAQySiSgGGACyAoYGGAKtGGGAA017_AllowsHitTestingO0VGMd, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA6HStackVyAA9TupleViewVyAA6SpacerV_AA012_ConditionalD0VyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGAQySiSgGGACyAoYGGAKtGGGAA017_AllowsHitTestingO0VGMR) + 36)] = (v9 & 1) == 0;
  v20 = v25;
  State.projectedValue.getter();
  v10 = *(&v21 + 1);
  v11 = v22;
  v12 = &v5[*(v3 + 36)];
  *v12 = v21;
  *(v12 + 1) = v10;
  v12[16] = v11;
  v20 = *&v24[24];
  State.projectedValue.getter();
  v13 = swift_allocObject();
  v14 = *v24;
  *(v13 + 16) = v23;
  *(v13 + 32) = v14;
  *(v13 + 48) = *&v24[16];
  *(v13 + 64) = *&v24[32];
  outlined init with copy of SaveCopyButton(&v23, &v21);
  type metadata accessor for LocationDisambiguation(0);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Button<HStack<TupleView<(Spacer, _ConditionalContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>>, Spacer)>>>, _AllowsHitTestingModifier>, DisabledAppearanceModifier> and conformance <> ModifiedContent<A, B>();
  _s11WorkoutCore0A23ConfigurationDataSourceCAC7Combine16ObservableObjectAAWlTm_0(&lazy protocol witness table cache variable for type LocationDisambiguation and conformance LocationDisambiguation, type metadata accessor for LocationDisambiguation, &protocol conformance descriptor for LocationDisambiguation);
  View.sheet<A>(isPresented:onDismiss:content:)();

  outlined destroy of ModifiedContent<ModifiedContent<Button<HStack<TupleView<(Spacer, _ConditionalContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>>, Spacer)>>>, _AllowsHitTestingModifier>, DisabledAppearanceModifier>(v5, &_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA6HStackVyAA9TupleViewVyAA6SpacerV_AA012_ConditionalD0VyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGAQySiSgGGACyAoYGGAKtGGGAA017_AllowsHitTestingO0VG07WorkoutB0018DisabledAppearanceO0VGMd, &_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA6HStackVyAA9TupleViewVyAA6SpacerV_AA012_ConditionalD0VyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGAQySiSgGGACyAoYGGAKtGGGAA017_AllowsHitTestingO0VG07WorkoutB0018DisabledAppearanceO0VGMR);
  KeyPath = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaDRd__lFQOyACyACyAA6ButtonVyAA6HStackVyAA05TupleE0VyAA6SpacerV_AA012_ConditionalD0VyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGA_ySiSgGGACyAYA7_GGAUtGGGAA017_AllowsHitTestingV0VG07WorkoutB0018DisabledAppearanceV0VG_A17_22LocationDisambiguationVQo_A_yAA5ColorVSgGGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaDRd__lFQOyACyACyAA6ButtonVyAA6HStackVyAA05TupleE0VyAA6SpacerV_AA012_ConditionalD0VyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGA_ySiSgGGACyAYA7_GGAUtGGGAA017_AllowsHitTestingV0VG07WorkoutB0018DisabledAppearanceV0VG_A17_22LocationDisambiguationVQo_A_yAA5ColorVSgGGMR);
  v17 = (a1 + *(result + 36));
  *v17 = KeyPath;
  v17[1] = 0;
  return result;
}

void closure #1 in SaveCopyButton.body.getter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12[-v3];
  v18 = *(a1 + 24);
  v16 = *(a1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd, &_s7SwiftUI5StateVySbGMR);
  State.wrappedValue.getter();
  if ((v14 & 1) == 0)
  {
    v5 = *(a1 + 16);
    if ((WorkoutConfiguration.requiresDisambiguation.getter() & 1) == 0)
    {

      if (*a1)
      {
        v10 = *a1;
        WorkoutConfigurationDataSource.saveManagedConfigurationIfNeeded(_:)();

        v16 = v18;
        LOBYTE(v14) = 1;
        State.wrappedValue.setter();
        return;
      }

      type metadata accessor for WorkoutConfigurationDataSource();
      _s11WorkoutCore0A23ConfigurationDataSourceCAC7Combine16ObservableObjectAAWlTm_0(&lazy protocol witness table cache variable for type WorkoutConfigurationDataSource and conformance WorkoutConfigurationDataSource, MEMORY[0x277D7DC28], MEMORY[0x277D7DC20]);
      EnvironmentObject.error()();
      __break(1u);
      goto LABEL_14;
    }

    swift_getObjectType();
    if (!swift_conformsToProtocol2() || !v5)
    {

      v16 = *(a1 + 40);
      v14 = *(a1 + 40);
      v17 = *(&v16 + 1);
      outlined init with copy of _ConditionalContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>>(&v17, &v13, &_s7SwiftUI11AnyLocationCySbGSgMd, &_s7SwiftUI11AnyLocationCySbGSgMR);
      State.wrappedValue.getter();
      v13 = v16;
      v12[15] = (v15 & 1) == 0;
      State.wrappedValue.setter();
      outlined destroy of ModifiedContent<ModifiedContent<Button<HStack<TupleView<(Spacer, _ConditionalContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>>, Spacer)>>>, _AllowsHitTestingModifier>, DisabledAppearanceModifier>(&v16, &_s7SwiftUI5StateVySbGMd, &_s7SwiftUI5StateVySbGMR);
      return;
    }

    swift_getObjectType();
    *&v16 = v5;
    UUID.init()();
    v6 = type metadata accessor for UUID();
    (*(*(v6 - 8) + 56))(v4, 0, 1, v6);
    dispatch thunk of ForcedDisambiguating.copyWithForcedDisambiguation(uuid:)();
    outlined destroy of ModifiedContent<ModifiedContent<Button<HStack<TupleView<(Spacer, _ConditionalContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>>, Spacer)>>>, _AllowsHitTestingModifier>, DisabledAppearanceModifier>(v4, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v4 = v14;
    if (v14)
    {
      v7 = *a1;
      if (*a1)
      {
        v8 = v14;
        v9 = v7;
        WorkoutConfigurationDataSource.saveManagedConfigurationIfNeeded(_:)();

        v16 = v18;
        LOBYTE(v17) = 1;
        *&v14 = *(&v18 + 1);
        outlined init with copy of _ConditionalContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>>(&v14, &v13, &_s7SwiftUI11AnyLocationCySbGSgMd, &_s7SwiftUI11AnyLocationCySbGSgMR);
        State.wrappedValue.setter();

        outlined destroy of ModifiedContent<ModifiedContent<Button<HStack<TupleView<(Spacer, _ConditionalContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>>, Spacer)>>>, _AllowsHitTestingModifier>, DisabledAppearanceModifier>(&v18, &_s7SwiftUI5StateVySbGMd, &_s7SwiftUI5StateVySbGMR);
        return;
      }

LABEL_14:
      type metadata accessor for WorkoutConfigurationDataSource();
      _s11WorkoutCore0A23ConfigurationDataSourceCAC7Combine16ObservableObjectAAWlTm_0(&lazy protocol witness table cache variable for type WorkoutConfigurationDataSource and conformance WorkoutConfigurationDataSource, MEMORY[0x277D7DC28], MEMORY[0x277D7DC20]);
      v11 = v4;
      EnvironmentObject.error()();
      __break(1u);
      return;
    }
  }
}

uint64_t closure #2 in SaveCopyButton.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = static VerticalAlignment.center.getter();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA6SpacerV_AA19_ConditionalContentVyAA08ModifiedK0VyAOyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGASySiSgGGAOyAQA_GGAKtGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA6SpacerV_AA19_ConditionalContentVyAA08ModifiedK0VyAOyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGASySiSgGGAOyAQA_GGAKtGGMR);
  return closure #1 in closure #2 in SaveCopyButton.body.getter(a1, a2 + *(v4 + 44));
}

uint64_t closure #1 in closure #2 in SaveCopyButton.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0VyAGyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGAKySiSgGGAGyAiSG_GMd, &_s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0VyAGyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGAKySiSgGGAGyAiSG_GMR);
  MEMORY[0x28223BE20](v47);
  v5 = &v43 - v4;
  v6 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGAGySiSgGGMd, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGAGySiSgGGMR);
  MEMORY[0x28223BE20](v7);
  v9 = &v43 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGAIySiSgGGAEyAgQGGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGAIySiSgGGAEyAgQGGMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v43 - v14;
  v49 = *(a1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd, &_s7SwiftUI5StateVySbGMR);
  State.wrappedValue.getter();
  if (v48 == 1)
  {
    v44 = v7;
    v45 = v12;
    v46 = a2;
    LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v16._countAndFlagsBits = 0;
    v16._object = 0xE000000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v16);
    Image.init(systemName:)();
    LocalizedStringKey.StringInterpolation.appendInterpolation(_:)();

    v17._countAndFlagsBits = 32;
    v17._object = 0xE100000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v17);
    if (one-time initialization token for confirmButtonTitle != -1)
    {
      swift_once();
    }

    LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(static SaveCopyButton.confirmButtonTitle);
    v18._countAndFlagsBits = 0;
    v18._object = 0xE000000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v18);
    LocalizedStringKey.init(stringInterpolation:)();
    v19 = Text.init(_:tableName:bundle:comment:)();
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v26 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGMd, &_s7SwiftUI15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGMR) + 36)];
    v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGMR) + 28);
    v28 = *MEMORY[0x277CE1050];
    v29 = type metadata accessor for Image.Scale();
    (*(*(v29 - 8) + 104))(v26 + v27, v28, v29);
    *v26 = swift_getKeyPath();
    *v9 = v19;
    *(v9 + 1) = v21;
    v9[16] = v23 & 1;
    *(v9 + 3) = v25;
    KeyPath = swift_getKeyPath();
    v31 = &v9[*(v44 + 36)];
    *v31 = KeyPath;
    *(v31 + 1) = 0;
    v31[16] = 1;
    outlined init with copy of _ConditionalContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>>(v9, v5, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGAGySiSgGGMd, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGAGySiSgGGMR);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGMd, &_s7SwiftUI15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedContent<A, B>();
    _ConditionalContent<>.init(storage:)();
    outlined destroy of ModifiedContent<ModifiedContent<Button<HStack<TupleView<(Spacer, _ConditionalContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>>, Spacer)>>>, _AllowsHitTestingModifier>, DisabledAppearanceModifier>(v9, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGAGySiSgGGMd, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGAGySiSgGGMR);
    v12 = v45;
    a2 = v46;
  }

  else
  {
    if (one-time initialization token for saveButtonTitle != -1)
    {
      swift_once();
    }

    v49 = static SaveCopyButton.saveButtonTitle;
    lazy protocol witness table accessor for type String and conformance String();

    v32 = Text.init<A>(_:)();
    v34 = v33;
    v36 = v35;
    v38 = v37;
    v39 = swift_getKeyPath();
    *v5 = v32;
    *(v5 + 1) = v34;
    v5[16] = v36 & 1;
    *(v5 + 3) = v38;
    *(v5 + 4) = v39;
    *(v5 + 5) = 0;
    v5[48] = 1;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGMd, &_s7SwiftUI15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedContent<A, B>();
    _ConditionalContent<>.init(storage:)();
  }

  outlined init with copy of _ConditionalContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>>(v15, v12, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGAIySiSgGGAEyAgQGGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGAIySiSgGGAEyAgQGGMR);
  *a2 = 0;
  *(a2 + 8) = 1;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6SpacerV_AA19_ConditionalContentVyAA08ModifiedE0VyAGyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGAKySiSgGGAGyAiSGGACtMd, &_s7SwiftUI6SpacerV_AA19_ConditionalContentVyAA08ModifiedE0VyAGyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGAKySiSgGGAGyAiSGGACtMR);
  outlined init with copy of _ConditionalContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>>(v12, a2 + *(v40 + 48), &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGAIySiSgGGAEyAgQGGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGAIySiSgGGAEyAgQGGMR);
  v41 = a2 + *(v40 + 64);
  *v41 = 0;
  *(v41 + 8) = 1;
  outlined destroy of ModifiedContent<ModifiedContent<Button<HStack<TupleView<(Spacer, _ConditionalContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>>, Spacer)>>>, _AllowsHitTestingModifier>, DisabledAppearanceModifier>(v15, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGAIySiSgGGAEyAgQGGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGAIySiSgGGAEyAgQGGMR);
  return outlined destroy of ModifiedContent<ModifiedContent<Button<HStack<TupleView<(Spacer, _ConditionalContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>>, Spacer)>>>, _AllowsHitTestingModifier>, DisabledAppearanceModifier>(v12, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGAIySiSgGGAEyAgQGGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGAIySiSgGGAEyAgQGGMR);
}

uint64_t closure #3 in SaveCopyButton.body.getter@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = swift_allocObject();
  v6 = *(a1 + 16);
  *(v5 + 16) = *a1;
  *(v5 + 32) = v6;
  *(v5 + 48) = *(a1 + 32);
  *(v5 + 64) = *(a1 + 48);
  *a2 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMR);
  swift_storeEnumTagMultiPayload();
  v7 = type metadata accessor for LocationDisambiguation(0);
  v8 = v7[6];
  *(a2 + v8) = 0;
  v9 = (a2 + v7[7]);
  *(a2 + v7[5]) = v4;
  *(a2 + v8) = 1;
  *v9 = partial apply for closure #1 in closure #3 in SaveCopyButton.body.getter;
  v9[1] = v5;
  v10 = v4;
  return outlined init with copy of SaveCopyButton(a1, v12);
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Button<HStack<TupleView<(Spacer, _ConditionalContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>>, Spacer)>>>, _AllowsHitTestingModifier>, DisabledAppearanceModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Button<HStack<TupleView<(Spacer, _ConditionalContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>>, Spacer)>>>, _AllowsHitTestingModifier>, DisabledAppearanceModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Button<HStack<TupleView<(Spacer, _ConditionalContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>>, Spacer)>>>, _AllowsHitTestingModifier>, DisabledAppearanceModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA6HStackVyAA9TupleViewVyAA6SpacerV_AA012_ConditionalD0VyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGAQySiSgGGACyAoYGGAKtGGGAA017_AllowsHitTestingO0VG07WorkoutB0018DisabledAppearanceO0VGMd, &_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA6HStackVyAA9TupleViewVyAA6SpacerV_AA012_ConditionalD0VyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGAQySiSgGGACyAoYGGAKtGGGAA017_AllowsHitTestingO0VG07WorkoutB0018DisabledAppearanceO0VGMR);
    lazy protocol witness table accessor for type ModifiedContent<Button<HStack<TupleView<(Spacer, _ConditionalContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>>, Spacer)>>>, _AllowsHitTestingModifier> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type DisabledAppearanceModifier and conformance DisabledAppearanceModifier();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Button<HStack<TupleView<(Spacer, _ConditionalContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>>, Spacer)>>>, _AllowsHitTestingModifier>, DisabledAppearanceModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Button<HStack<TupleView<(Spacer, _ConditionalContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>>, Spacer)>>>, _AllowsHitTestingModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Button<HStack<TupleView<(Spacer, _ConditionalContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>>, Spacer)>>>, _AllowsHitTestingModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Button<HStack<TupleView<(Spacer, _ConditionalContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>>, Spacer)>>>, _AllowsHitTestingModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA6HStackVyAA9TupleViewVyAA6SpacerV_AA012_ConditionalD0VyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGAQySiSgGGACyAoYGGAKtGGGAA017_AllowsHitTestingO0VGMd, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA6HStackVyAA9TupleViewVyAA6SpacerV_AA012_ConditionalD0VyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGAQySiSgGGACyAoYGGAKtGGGAA017_AllowsHitTestingO0VGMR);
    lazy protocol witness table accessor for type HStack<TupleView<(Spacer, _ConditionalContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>>, Spacer)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type Button<HStack<TupleView<(Spacer, _ConditionalContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>>, Spacer)>>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA6HStackVyAA9TupleViewVyAA6SpacerV_AA19_ConditionalContentVyAA08ModifiedI0VyAMyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGAQySiSgGGAMyAoYGGAItGGGMd, &_s7SwiftUI6ButtonVyAA6HStackVyAA9TupleViewVyAA6SpacerV_AA19_ConditionalContentVyAA08ModifiedI0VyAMyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGAQySiSgGGAMyAoYGGAItGGGMR, MEMORY[0x277CDF028]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Button<HStack<TupleView<(Spacer, _ConditionalContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>>, Spacer)>>>, _AllowsHitTestingModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DisabledAppearanceModifier and conformance DisabledAppearanceModifier()
{
  result = lazy protocol witness table cache variable for type DisabledAppearanceModifier and conformance DisabledAppearanceModifier;
  if (!lazy protocol witness table cache variable for type DisabledAppearanceModifier and conformance DisabledAppearanceModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DisabledAppearanceModifier and conformance DisabledAppearanceModifier);
  }

  return result;
}

uint64_t closure #1 in closure #3 in SaveCopyButton.body.getter(uint64_t a1, id *a2)
{
  if (*a2)
  {
    v2 = *a2;
    WorkoutConfigurationDataSource.saveManagedConfigurationIfNeeded(_:)();

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd, &_s7SwiftUI5StateVySbGMR);
    return State.wrappedValue.setter();
  }

  else
  {
    type metadata accessor for WorkoutConfigurationDataSource();
    _s11WorkoutCore0A23ConfigurationDataSourceCAC7Combine16ObservableObjectAAWlTm_0(&lazy protocol witness table cache variable for type WorkoutConfigurationDataSource and conformance WorkoutConfigurationDataSource, MEMORY[0x277D7DC28], MEMORY[0x277D7DC20]);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t DisabledAppearanceModifier.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v41 = a1;
  v48 = a5;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyAA01_e9Modifier_D0Vy07WorkoutB0018DisabledAppearanceI0VG_Qo_AA022_EnvironmentKeyWritingI0VyAA5ColorVSgGGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyAA01_e9Modifier_D0Vy07WorkoutB0018DisabledAppearanceI0VG_Qo_AA022_EnvironmentKeyWritingI0VyAA5ColorVSgGGMR);
  MEMORY[0x28223BE20](v39);
  v9 = &v39 - v8;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyACyAeAE10fontWeightyQrAA4FontV0K0VSgFQOyAA01_e9Modifier_D0Vy07WorkoutB0018DisabledAppearanceM0VG_Qo_AA022_EnvironmentKeyWritingM0VyAA5ColorVSgGG_AA08BorderediG0VQo_AA06_TraitsM0VyAA017ListRowBackgroundvR0VGGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyACyAeAE10fontWeightyQrAA4FontV0K0VSgFQOyAA01_e9Modifier_D0Vy07WorkoutB0018DisabledAppearanceM0VG_Qo_AA022_EnvironmentKeyWritingM0VyAA5ColorVSgGG_AA08BorderediG0VQo_AA06_TraitsM0VyAA017ListRowBackgroundvR0VGGMR);
  MEMORY[0x28223BE20](v47);
  v40 = &v39 - v10;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0VyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonI0Rd__lFQOyAGyAiAE10fontWeightyQrAA4FontV0M0VSgFQOyAA01_g9Modifier_D0Vy07WorkoutB0018DisabledAppearanceO0VG_Qo_AA022_EnvironmentKeyWritingO0VyAA08AnyShapeI0VSgGG_AA08BorderedkI0VQo_AA06_TraituO0VyAA017ListRowBackgroundyT0VGGAGyAiAEAJyQrqd__AaKRd__lFQOyAGyAxZyAA5ColorVSgGG_A5_Qo_A11_G_GMd, &_s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0VyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonI0Rd__lFQOyAGyAiAE10fontWeightyQrAA4FontV0M0VSgFQOyAA01_g9Modifier_D0Vy07WorkoutB0018DisabledAppearanceO0VG_Qo_AA022_EnvironmentKeyWritingO0VyAA08AnyShapeI0VSgGG_AA08BorderedkI0VQo_AA06_TraituO0VyAA017ListRowBackgroundyT0VGGAGyAiAEAJyQrqd__AaKRd__lFQOyAGyAxZyAA5ColorVSgGG_A5_Qo_A11_G_GMR);
  MEMORY[0x28223BE20](v45);
  v46 = &v39 - v11;
  v12 = type metadata accessor for BorderedButtonStyle();
  v42 = *(v12 - 8);
  v43 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyAA01_e9Modifier_D0Vy07WorkoutB0018DisabledAppearanceI0VG_Qo_AA022_EnvironmentKeyWritingI0VyAA13AnyShapeStyleVSgGGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyAA01_e9Modifier_D0Vy07WorkoutB0018DisabledAppearanceI0VG_Qo_AA022_EnvironmentKeyWritingI0VyAA13AnyShapeStyleVSgGGMR);
  MEMORY[0x28223BE20](v15);
  v17 = &v39 - v16;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyACyAeAE10fontWeightyQrAA4FontV0K0VSgFQOyAA01_e9Modifier_D0Vy07WorkoutB0018DisabledAppearanceM0VG_Qo_AA022_EnvironmentKeyWritingM0VyAA08AnyShapeG0VSgGG_AA08BorderediG0VQo_AA06_TraitsM0VyAA017ListRowBackgroundwR0VGGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyACyAeAE10fontWeightyQrAA4FontV0K0VSgFQOyAA01_e9Modifier_D0Vy07WorkoutB0018DisabledAppearanceM0VG_Qo_AA022_EnvironmentKeyWritingM0VyAA08AnyShapeG0VSgGG_AA08BorderediG0VQo_AA06_TraitsM0VyAA017ListRowBackgroundwR0VGGMR);
  MEMORY[0x28223BE20](v44);
  v19 = &v39 - v18;
  v50 = a2;
  v51 = a3;
  v52 = a4;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySbGMd, &_s7SwiftUI7BindingVySbGMR);
  MEMORY[0x20F30B100](&v49, v20);
  v21 = v49;
  static Font.Weight.semibold.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21_ViewModifier_ContentVy07WorkoutB0018DisabledAppearanceD0VGMd, &_s7SwiftUI21_ViewModifier_ContentVy07WorkoutB0018DisabledAppearanceD0VGMR);
  lazy protocol witness table accessor for type HStack<TupleView<(Spacer, _ConditionalContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>>, Spacer)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type _ViewModifier_Content<DisabledAppearanceModifier> and conformance _ViewModifier_Content<A>, &_s7SwiftUI21_ViewModifier_ContentVy07WorkoutB0018DisabledAppearanceD0VGMd, &_s7SwiftUI21_ViewModifier_ContentVy07WorkoutB0018DisabledAppearanceD0VGMR, MEMORY[0x277CE04B0]);
  View.fontWeight(_:)();
  if (v21 == 1)
  {
    v22 = [objc_opt_self() systemGray2Color];
    v23 = Color.init(uiColor:)();
    KeyPath = swift_getKeyPath();
    v50 = v23;
    v25 = AnyShapeStyle.init<A>(_:)();
    v26 = &v17[*(v15 + 36)];
    *v26 = KeyPath;
    v26[1] = v25;
    BorderedButtonStyle.init()();
    lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>> and conformance <> ModifiedContent<A, B>();
    _s11WorkoutCore0A23ConfigurationDataSourceCAC7Combine16ObservableObjectAAWlTm_0(&lazy protocol witness table cache variable for type BorderedButtonStyle and conformance BorderedButtonStyle, MEMORY[0x277CDDEE0], MEMORY[0x277CDDED0]);
    v27 = v43;
    View.buttonStyle<A>(_:)();
    (*(v42 + 8))(v14, v27);
    outlined destroy of ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>(v17, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyAA01_e9Modifier_D0Vy07WorkoutB0018DisabledAppearanceI0VG_Qo_AA022_EnvironmentKeyWritingI0VyAA13AnyShapeStyleVSgGGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyAA01_e9Modifier_D0Vy07WorkoutB0018DisabledAppearanceI0VG_Qo_AA022_EnvironmentKeyWritingI0VyAA13AnyShapeStyleVSgGGMR);
    v50 = static Color.clear.getter();
    *&v19[*(v44 + 36)] = AnyView.init<A>(_:)();
    v28 = &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyACyAeAE10fontWeightyQrAA4FontV0K0VSgFQOyAA01_e9Modifier_D0Vy07WorkoutB0018DisabledAppearanceM0VG_Qo_AA022_EnvironmentKeyWritingM0VyAA08AnyShapeG0VSgGG_AA08BorderediG0VQo_AA06_TraitsM0VyAA017ListRowBackgroundwR0VGGMd;
    v29 = &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyACyAeAE10fontWeightyQrAA4FontV0K0VSgFQOyAA01_e9Modifier_D0Vy07WorkoutB0018DisabledAppearanceM0VG_Qo_AA022_EnvironmentKeyWritingM0VyAA08AnyShapeG0VSgGG_AA08BorderediG0VQo_AA06_TraitsM0VyAA017ListRowBackgroundwR0VGGMR;
    outlined init with copy of ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _TraitWritingModifier<ListRowBackgroundTraitKey>>(v19, v46, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyACyAeAE10fontWeightyQrAA4FontV0K0VSgFQOyAA01_e9Modifier_D0Vy07WorkoutB0018DisabledAppearanceM0VG_Qo_AA022_EnvironmentKeyWritingM0VyAA08AnyShapeG0VSgGG_AA08BorderediG0VQo_AA06_TraitsM0VyAA017ListRowBackgroundwR0VGGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyACyAeAE10fontWeightyQrAA4FontV0K0VSgFQOyAA01_e9Modifier_D0Vy07WorkoutB0018DisabledAppearanceM0VG_Qo_AA022_EnvironmentKeyWritingM0VyAA08AnyShapeG0VSgGG_AA08BorderediG0VQo_AA06_TraitsM0VyAA017ListRowBackgroundwR0VGGMR);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _TraitWritingModifier<ListRowBackgroundTraitKey>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _TraitWritingModifier<ListRowBackgroundTraitKey>> and conformance <> ModifiedContent<A, B>();
    _ConditionalContent<>.init(storage:)();
    v30 = v19;
  }

  else
  {
    v31 = static Color.white.getter();
    v32 = swift_getKeyPath();
    v33 = &v9[*(v39 + 36)];
    *v33 = v32;
    v33[1] = v31;
    BorderedButtonStyle.init()();
    lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>();
    _s11WorkoutCore0A23ConfigurationDataSourceCAC7Combine16ObservableObjectAAWlTm_0(&lazy protocol witness table cache variable for type BorderedButtonStyle and conformance BorderedButtonStyle, MEMORY[0x277CDDEE0], MEMORY[0x277CDDED0]);
    v34 = v40;
    v35 = v43;
    View.buttonStyle<A>(_:)();
    (*(v42 + 8))(v14, v35);
    outlined destroy of ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>(v9, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyAA01_e9Modifier_D0Vy07WorkoutB0018DisabledAppearanceI0VG_Qo_AA022_EnvironmentKeyWritingI0VyAA5ColorVSgGGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyAA01_e9Modifier_D0Vy07WorkoutB0018DisabledAppearanceI0VG_Qo_AA022_EnvironmentKeyWritingI0VyAA5ColorVSgGGMR);
    v50 = static Color.clear.getter();
    v36 = AnyView.init<A>(_:)();
    v37 = v46;
    *(v34 + *(v47 + 36)) = v36;
    v28 = &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyACyAeAE10fontWeightyQrAA4FontV0K0VSgFQOyAA01_e9Modifier_D0Vy07WorkoutB0018DisabledAppearanceM0VG_Qo_AA022_EnvironmentKeyWritingM0VyAA5ColorVSgGG_AA08BorderediG0VQo_AA06_TraitsM0VyAA017ListRowBackgroundvR0VGGMd;
    v29 = &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyACyAeAE10fontWeightyQrAA4FontV0K0VSgFQOyAA01_e9Modifier_D0Vy07WorkoutB0018DisabledAppearanceM0VG_Qo_AA022_EnvironmentKeyWritingM0VyAA5ColorVSgGG_AA08BorderediG0VQo_AA06_TraitsM0VyAA017ListRowBackgroundvR0VGGMR;
    outlined init with copy of ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _TraitWritingModifier<ListRowBackgroundTraitKey>>(v34, v37, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyACyAeAE10fontWeightyQrAA4FontV0K0VSgFQOyAA01_e9Modifier_D0Vy07WorkoutB0018DisabledAppearanceM0VG_Qo_AA022_EnvironmentKeyWritingM0VyAA5ColorVSgGG_AA08BorderediG0VQo_AA06_TraitsM0VyAA017ListRowBackgroundvR0VGGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyACyAeAE10fontWeightyQrAA4FontV0K0VSgFQOyAA01_e9Modifier_D0Vy07WorkoutB0018DisabledAppearanceM0VG_Qo_AA022_EnvironmentKeyWritingM0VyAA5ColorVSgGG_AA08BorderediG0VQo_AA06_TraitsM0VyAA017ListRowBackgroundvR0VGGMR);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _TraitWritingModifier<ListRowBackgroundTraitKey>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _TraitWritingModifier<ListRowBackgroundTraitKey>> and conformance <> ModifiedContent<A, B>();
    _ConditionalContent<>.init(storage:)();
    v30 = v34;
  }

  return outlined destroy of ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>(v30, v28, v29);
}

uint64_t getEnumTagSinglePayload for SaveCopyButton(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t storeEnumTagSinglePayload for SaveCopyButton(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

unint64_t lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaDRd__lFQOyACyACyAA6ButtonVyAA6HStackVyAA05TupleE0VyAA6SpacerV_AA012_ConditionalD0VyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGA_ySiSgGGACyAYA7_GGAUtGGGAA017_AllowsHitTestingV0VG07WorkoutB0018DisabledAppearanceV0VG_A17_22LocationDisambiguationVQo_A_yAA5ColorVSgGGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaDRd__lFQOyACyACyAA6ButtonVyAA6HStackVyAA05TupleE0VyAA6SpacerV_AA012_ConditionalD0VyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGA_ySiSgGGACyAYA7_GGAUtGGGAA017_AllowsHitTestingV0VG07WorkoutB0018DisabledAppearanceV0VG_A17_22LocationDisambiguationVQo_A_yAA5ColorVSgGGMR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA6HStackVyAA9TupleViewVyAA6SpacerV_AA012_ConditionalD0VyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGAQySiSgGGACyAoYGGAKtGGGAA017_AllowsHitTestingO0VG07WorkoutB0018DisabledAppearanceO0VGMd, &_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA6HStackVyAA9TupleViewVyAA6SpacerV_AA012_ConditionalD0VyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGAQySiSgGGACyAoYGGAKtGGGAA017_AllowsHitTestingO0VG07WorkoutB0018DisabledAppearanceO0VGMR);
    type metadata accessor for LocationDisambiguation(255);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Button<HStack<TupleView<(Spacer, _ConditionalContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>>, Spacer)>>>, _AllowsHitTestingModifier>, DisabledAppearanceModifier> and conformance <> ModifiedContent<A, B>();
    _s11WorkoutCore0A23ConfigurationDataSourceCAC7Combine16ObservableObjectAAWlTm_0(&lazy protocol witness table cache variable for type LocationDisambiguation and conformance LocationDisambiguation, type metadata accessor for LocationDisambiguation, &protocol conformance descriptor for LocationDisambiguation);
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type HStack<TupleView<(Spacer, _ConditionalContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>>, Spacer)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Color?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVSgGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVSgGMR, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DisabledAppearanceModifier(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for DisabledAppearanceModifier(uint64_t result, int a2, int a3)
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

unint64_t lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyAA01_e9Modifier_D0Vy07WorkoutB0018DisabledAppearanceI0VG_Qo_AA022_EnvironmentKeyWritingI0VyAA5ColorVSgGGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyAA01_e9Modifier_D0Vy07WorkoutB0018DisabledAppearanceI0VG_Qo_AA022_EnvironmentKeyWritingI0VyAA5ColorVSgGGMR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI21_ViewModifier_ContentVy07WorkoutB0018DisabledAppearanceD0VGMd, &_s7SwiftUI21_ViewModifier_ContentVy07WorkoutB0018DisabledAppearanceD0VGMR);
    lazy protocol witness table accessor for type HStack<TupleView<(Spacer, _ConditionalContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>>, Spacer)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type _ViewModifier_Content<DisabledAppearanceModifier> and conformance _ViewModifier_Content<A>, &_s7SwiftUI21_ViewModifier_ContentVy07WorkoutB0018DisabledAppearanceD0VGMd, &_s7SwiftUI21_ViewModifier_ContentVy07WorkoutB0018DisabledAppearanceD0VGMR, MEMORY[0x277CE04B0]);
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type HStack<TupleView<(Spacer, _ConditionalContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>>, Spacer)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Color?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVSgGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVSgGMR, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t _s11WorkoutCore0A23ConfigurationDataSourceCAC7Combine16ObservableObjectAAWlTm_0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyAA01_e9Modifier_D0Vy07WorkoutB0018DisabledAppearanceI0VG_Qo_AA022_EnvironmentKeyWritingI0VyAA13AnyShapeStyleVSgGGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyAA01_e9Modifier_D0Vy07WorkoutB0018DisabledAppearanceI0VG_Qo_AA022_EnvironmentKeyWritingI0VyAA13AnyShapeStyleVSgGGMR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI21_ViewModifier_ContentVy07WorkoutB0018DisabledAppearanceD0VGMd, &_s7SwiftUI21_ViewModifier_ContentVy07WorkoutB0018DisabledAppearanceD0VGMR);
    lazy protocol witness table accessor for type HStack<TupleView<(Spacer, _ConditionalContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>>, Spacer)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type _ViewModifier_Content<DisabledAppearanceModifier> and conformance _ViewModifier_Content<A>, &_s7SwiftUI21_ViewModifier_ContentVy07WorkoutB0018DisabledAppearanceD0VGMd, &_s7SwiftUI21_ViewModifier_ContentVy07WorkoutB0018DisabledAppearanceD0VGMR, MEMORY[0x277CE04B0]);
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type HStack<TupleView<(Spacer, _ConditionalContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>>, Spacer)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<AnyShapeStyle?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGMR, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t outlined init with copy of ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _TraitWritingModifier<ListRowBackgroundTraitKey>>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t outlined destroy of ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t objectdestroyTm_31()
{

  return swift_deallocObject();
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGAGySiSgGGMd, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGAGySiSgGGMR);
    lazy protocol witness table accessor for type ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type HStack<TupleView<(Spacer, _ConditionalContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>>, Spacer)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Int?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVySiSgGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVySiSgGMR, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGMd, &_s7SwiftUI15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGMR);
    lazy protocol witness table accessor for type HStack<TupleView<(Spacer, _ConditionalContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>>, Spacer)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Image.Scale> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGMR, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type HStack<TupleView<(Spacer, _ConditionalContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>>, Spacer)>> and conformance HStack<A>(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

unint64_t lazy protocol witness table accessor for type ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGMd, &_s7SwiftUI15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGMR);
    lazy protocol witness table accessor for type HStack<TupleView<(Spacer, _ConditionalContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>>, Spacer)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Int?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVySiSgGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVySiSgGMR, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t outlined init with copy of _ConditionalContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t outlined destroy of ModifiedContent<ModifiedContent<Button<HStack<TupleView<(Spacer, _ConditionalContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>>, Spacer)>>>, _AllowsHitTestingModifier>, DisabledAppearanceModifier>(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _TraitWritingModifier<ListRowBackgroundTraitKey>>, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _TraitWritingModifier<ListRowBackgroundTraitKey>>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _TraitWritingModifier<ListRowBackgroundTraitKey>>, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _TraitWritingModifier<ListRowBackgroundTraitKey>>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _TraitWritingModifier<ListRowBackgroundTraitKey>>, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _TraitWritingModifier<ListRowBackgroundTraitKey>>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonH0Rd__lFQOyAEyAgAE10fontWeightyQrAA4FontV0L0VSgFQOyAA01_f9Modifier_D0Vy07WorkoutB0018DisabledAppearanceN0VG_Qo_AA022_EnvironmentKeyWritingN0VyAA08AnyShapeH0VSgGG_AA08BorderedjH0VQo_AA06_TraittN0VyAA017ListRowBackgroundxS0VGGAEyAgAEAHyQrqd__AaIRd__lFQOyAEyAvXyAA5ColorVSgGG_A3_Qo_A9_GGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonH0Rd__lFQOyAEyAgAE10fontWeightyQrAA4FontV0L0VSgFQOyAA01_f9Modifier_D0Vy07WorkoutB0018DisabledAppearanceN0VG_Qo_AA022_EnvironmentKeyWritingN0VyAA08AnyShapeH0VSgGG_AA08BorderedjH0VQo_AA06_TraittN0VyAA017ListRowBackgroundxS0VGGAEyAgAEAHyQrqd__AaIRd__lFQOyAEyAvXyAA5ColorVSgGG_A3_Qo_A9_GGMR);
    lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _TraitWritingModifier<ListRowBackgroundTraitKey>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _TraitWritingModifier<ListRowBackgroundTraitKey>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _TraitWritingModifier<ListRowBackgroundTraitKey>>, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _TraitWritingModifier<ListRowBackgroundTraitKey>>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

uint64_t type metadata accessor for AlertsButton(uint64_t a1)
{
  result = type metadata singleton initialization cache for AlertsButton;
  if (!type metadata singleton initialization cache for AlertsButton)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for AlertsButton(uint64_t a1)
{
  type metadata accessor for EnvironmentObject<ConfigurationNavigationModel>(319);
  if (v1 <= 0x3F)
  {
    _sSo23FIUIWorkoutActivityTypeCMaTm_3(319, &lazy cache variable for type metadata for FIUIWorkoutActivityType, 0x277D0A810);
    if (v2 <= 0x3F)
    {
      _sSo23FIUIWorkoutActivityTypeCMaTm_3(319, &lazy cache variable for type metadata for FIUIFormattingManager, 0x277D0A7E8);
      if (v3 <= 0x3F)
      {
        type metadata accessor for AlertConfigurationContext();
        if (v4 <= 0x3F)
        {
          type metadata accessor for Binding<[TargetZone]>(319, &lazy cache variable for type metadata for Binding<[TargetZone]>, &_sSay11WorkoutCore10TargetZoneCGMd, &_sSay11WorkoutCore10TargetZoneCGMR, MEMORY[0x277CE11F8]);
          if (v5 <= 0x3F)
          {
            type metadata accessor for Binding<HeartRateTargetZone>(319, &lazy cache variable for type metadata for Binding<HeartRateTargetZone>, MEMORY[0x277D7E2E8], MEMORY[0x277CE11F8]);
            if (v6 <= 0x3F)
            {
              type metadata accessor for Binding<HeartRateTargetZone>(319, &lazy cache variable for type metadata for Binding<PowerZonesAlertTargetZone>, MEMORY[0x277D7E580], MEMORY[0x277CE11F8]);
              if (v7 <= 0x3F)
              {
                type metadata accessor for Binding<HeartRateTargetZone>(319, &lazy cache variable for type metadata for WorkoutConfiguration?, MEMORY[0x277D7DA50], MEMORY[0x277D83D88]);
                if (v8 <= 0x3F)
                {
                  type metadata accessor for HKActivityMoveMode(319);
                  if (v9 <= 0x3F)
                  {
                    type metadata accessor for Binding<[TargetZone]>(319, &lazy cache variable for type metadata for State<AlertConfigurationViewModel?>, &_s9WorkoutUI27AlertConfigurationViewModelCSgMd, &_s9WorkoutUI27AlertConfigurationViewModelCSgMR, MEMORY[0x277CE10B8]);
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

uint64_t _sSo23FIUIWorkoutActivityTypeCMaTm_3(uint64_t a1, unint64_t *a2, void *a3)
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

void type metadata accessor for Binding<HeartRateTargetZone>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void type metadata accessor for Binding<[TargetZone]>(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
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

uint64_t AlertsButton.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE15navigationTitleyQrqd__SyRd__lFQOy07WorkoutB0018AlertConfigurationC0V_SSQo_Md, &_s7SwiftUI4ViewPAAE15navigationTitleyQrqd__SyRd__lFQOy07WorkoutB0018AlertConfigurationC0V_SSQo_MR);
  MEMORY[0x28223BE20](v52);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI14NavigationLinkVyAA19_ConditionalContentVyAA6HStackVyAEyAEyAA9TupleViewVyAA4TextV_AA6SpacerVAA08ModifiedF0VyAkA30_EnvironmentKeyWritingModifierVyAA0J9AlignmentOGGtGAOyAOyAK07WorkoutB017HeaderHyphenationVGATGGs5NeverOGGAOyAW023AlignedLeadingAccessoryfI0VyAEyAEyAOyAA5ImageVAA016_ForegroundStyleP0VyAA14TintShapeStyleVGGA14_GA2_GAA6VStackVyAEyAEyAIyA__AUtGA_GA2_GGGAQyAA5ColorVSgGGGAA0I0PAAE15navigationTitleyQrqd__SyRd__lFQOyAW018AlertConfigurationI0V_SSQo_GMd, &_s7SwiftUI14NavigationLinkVyAA19_ConditionalContentVyAA6HStackVyAEyAEyAA9TupleViewVyAA4TextV_AA6SpacerVAA08ModifiedF0VyAkA30_EnvironmentKeyWritingModifierVyAA0J9AlignmentOGGtGAOyAOyAK07WorkoutB017HeaderHyphenationVGATGGs5NeverOGGAOyAW023AlignedLeadingAccessoryfI0VyAEyAEyAOyAA5ImageVAA016_ForegroundStyleP0VyAA14TintShapeStyleVGGA14_GA2_GAA6VStackVyAEyAEyAIyA__AUtGA_GA2_GGGAQyAA5ColorVSgGGGAA0I0PAAE15navigationTitleyQrqd__SyRd__lFQOyAW018AlertConfigurationI0V_SSQo_GMR);
  v53 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v47 - v5;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA4ViewPAAE5sheet4item9onDismiss7contentQrAA7BindingVyqd__SgG_yycSgqd_0_qd__cts12IdentifiableRd__AaFRd_0_r0_lFQOyAA6ButtonVyAA14NavigationLinkVyACyAA6HStackVyACyACyAA05TupleF0VyAA4TextV_AA6SpacerVAA08ModifiedD0VyA_AA30_EnvironmentKeyWritingModifierVyAA0S9AlignmentOGGtGA3_yA3_yA_07WorkoutB017HeaderHyphenationVGA8_GGs5NeverOGGA3_yA11_023AlignedLeadingAccessorydF0VyACyACyA3_yAA5ImageVAA016_ForegroundStyleY0VyAA14TintShapeStyleVGGA30_GA18_GAA6VStackVyACyACyAYyA15__A9_tGA15_GA18_GGGA5_yAA5ColorVSgGGGAA05EmptyF0VGG_A11_018AlertConfigurationF5ModelCAA0oF0VyAgAE7toolbarAKQrqd__yXE_tAA07ToolbarD0Rd__lFQOyA3_yA11_018AlertConfigurationF0VA43_G_AA07ToolbarD7BuilderV10buildBlockyQrxAAA55_RzlFZQOy_AA11ToolbarItemVyytASyAA07DefaultN5LabelVGGQo_Qo_GQo_AUyA45_AgAE15navigationTitleyQrqd__SyRd__lFQOyA57__SSQo_G_GMd, &_s7SwiftUI19_ConditionalContentV7StorageOyAA4ViewPAAE5sheet4item9onDismiss7contentQrAA7BindingVyqd__SgG_yycSgqd_0_qd__cts12IdentifiableRd__AaFRd_0_r0_lFQOyAA6ButtonVyAA14NavigationLinkVyACyAA6HStackVyACyACyAA05TupleF0VyAA4TextV_AA6SpacerVAA08ModifiedD0VyA_AA30_EnvironmentKeyWritingModifierVyAA0S9AlignmentOGGtGA3_yA3_yA_07WorkoutB017HeaderHyphenationVGA8_GGs5NeverOGGA3_yA11_023AlignedLeadingAccessorydF0VyACyACyA3_yAA5ImageVAA016_ForegroundStyleY0VyAA14TintShapeStyleVGGA30_GA18_GAA6VStackVyACyACyAYyA15__A9_tGA15_GA18_GGGA5_yAA5ColorVSgGGGAA05EmptyF0VGG_A11_018AlertConfigurationF5ModelCAA0oF0VyAgAE7toolbarAKQrqd__yXE_tAA07ToolbarD0Rd__lFQOyA3_yA11_018AlertConfigurationF0VA43_G_AA07ToolbarD7BuilderV10buildBlockyQrxAAA55_RzlFZQOy_AA11ToolbarItemVyytASyAA07DefaultN5LabelVGGQo_Qo_GQo_AUyA45_AgAE15navigationTitleyQrqd__SyRd__lFQOyA57__SSQo_G_GMR);
  MEMORY[0x28223BE20](v56);
  v8 = &v47 - v7;
  v48 = type metadata accessor for AlertsButton(0);
  v9 = *(v48 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v48);
  v11 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA14NavigationLinkVyAA19_ConditionalContentVyAA6HStackVyAGyAGyAA9TupleViewVyAA4TextV_AA6SpacerVAA08ModifiedG0VyAmA30_EnvironmentKeyWritingModifierVyAA0K9AlignmentOGGtGAQyAQyAM07WorkoutB017HeaderHyphenationVGAVGGs5NeverOGGAQyAY023AlignedLeadingAccessorygJ0VyAGyAGyAQyAA5ImageVAA016_ForegroundStyleQ0VyAA14TintShapeStyleVGGA16_GA4_GAA6VStackVyAGyAGyAKyA1__AWtGA1_GA4_GGGASyAA5ColorVSgGGGAA05EmptyJ0VGGMd, &_s7SwiftUI6ButtonVyAA14NavigationLinkVyAA19_ConditionalContentVyAA6HStackVyAGyAGyAA9TupleViewVyAA4TextV_AA6SpacerVAA08ModifiedG0VyAmA30_EnvironmentKeyWritingModifierVyAA0K9AlignmentOGGtGAQyAQyAM07WorkoutB017HeaderHyphenationVGAVGGs5NeverOGGAQyAY023AlignedLeadingAccessorygJ0VyAGyAGyAQyAA5ImageVAA016_ForegroundStyleQ0VyAA14TintShapeStyleVGGA16_GA4_GAA6VStackVyAGyAGyAKyA1__AWtGA1_GA4_GGGASyAA5ColorVSgGGGAA05EmptyJ0VGGMR);
  v49 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v55 = &v47 - v12;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE5sheet4item9onDismiss7contentQrAA7BindingVyqd__SgG_yycSgqd_0_qd__cts12IdentifiableRd__AaBRd_0_r0_lFQOyAA6ButtonVyAA14NavigationLinkVyAA19_ConditionalContentVyAA6HStackVyASyASyAA05TupleC0VyAA4TextV_AA6SpacerVAA08ModifiedO0VyAyA30_EnvironmentKeyWritingModifierVyAA0R9AlignmentOGGtGA1_yA1_yAY07WorkoutB017HeaderHyphenationVGA6_GGs5NeverOGGA1_yA9_023AlignedLeadingAccessoryoC0VyASyASyA1_yAA5ImageVAA016_ForegroundStyleX0VyAA14TintShapeStyleVGGA28_GA16_GAA6VStackVyASyASyAWyA13__A7_tGA13_GA16_GGGA3_yAA5ColorVSgGGGAA05EmptyC0VGG_A9_018AlertConfigurationC5ModelCAA0lC0VyAcAE7toolbarAGQrqd__yXE_tAA07ToolbarO0Rd__lFQOyA1_yA9_018AlertConfigurationC0VA41_G_AA07ToolbarO7BuilderV10buildBlockyQrxAAA53_RzlFZQOy_AA11ToolbarItemVyytAOyAA07DefaultK5LabelVGGQo_Qo_GQo_Md, &_s7SwiftUI4ViewPAAE5sheet4item9onDismiss7contentQrAA7BindingVyqd__SgG_yycSgqd_0_qd__cts12IdentifiableRd__AaBRd_0_r0_lFQOyAA6ButtonVyAA14NavigationLinkVyAA19_ConditionalContentVyAA6HStackVyASyASyAA05TupleC0VyAA4TextV_AA6SpacerVAA08ModifiedO0VyAyA30_EnvironmentKeyWritingModifierVyAA0R9AlignmentOGGtGA1_yA1_yAY07WorkoutB017HeaderHyphenationVGA6_GGs5NeverOGGA1_yA9_023AlignedLeadingAccessoryoC0VyASyASyA1_yAA5ImageVAA016_ForegroundStyleX0VyAA14TintShapeStyleVGGA28_GA16_GAA6VStackVyASyASyAWyA13__A7_tGA13_GA16_GGGA3_yAA5ColorVSgGGGAA05EmptyC0VGG_A9_018AlertConfigurationC5ModelCAA0lC0VyAcAE7toolbarAGQrqd__yXE_tAA07ToolbarO0Rd__lFQOyA1_yA9_018AlertConfigurationC0VA41_G_AA07ToolbarO7BuilderV10buildBlockyQrxAAA53_RzlFZQOy_AA11ToolbarItemVyytAOyAA07DefaultK5LabelVGGQo_Qo_GQo_MR);
  v51 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v50 = &v47 - v13;
  v14 = AlertsButton.makeViewModel()();
  v15 = static Platform.current.getter();
  v61 = a1;
  v60 = v4;
  v59 = v8;
  v54 = v14;
  if (v15)
  {
    v55 = &v47;
    MEMORY[0x28223BE20](v15);

    AlertConfigurationView.init(viewModel:)(v16, &v63);
    if (one-time initialization token for WorkoutUIBundle != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v17 = WorkoutUIBundle.super.isa;
    v73._object = 0xE000000000000000;
    v18.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v18.value._object = 0xEB00000000656C62;
    v19._object = 0x800000020CB94110;
    v19._countAndFlagsBits = 0xD000000000000029;
    v20._countAndFlagsBits = 0;
    v20._object = 0xE000000000000000;
    v73._countAndFlagsBits = 0;
    v21 = NSLocalizedString(_:tableName:bundle:value:comment:)(v19, v18, v17, v20, v73);

    v62 = v21;
    v22 = lazy protocol witness table accessor for type AlertConfigurationView and conformance AlertConfigurationView();
    v23 = lazy protocol witness table accessor for type String and conformance String();
    v24 = MEMORY[0x277D837D0];
    View.navigationTitle<A>(_:)();

    v69 = v64;
    v70 = v65;
    v71 = v66;
    v72 = v67;
    v68 = v63;
    outlined destroy of AlertConfigurationView(&v68);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA6HStackVyACyACyAA9TupleViewVyAA4TextV_AA6SpacerVAA08ModifiedD0VyAiA30_EnvironmentKeyWritingModifierVyAA0H9AlignmentOGGtGAMyAMyAI07WorkoutB017HeaderHyphenationVGARGGs5NeverOGGAMyAU023AlignedLeadingAccessorydG0VyACyACyAMyAA5ImageVAA016_ForegroundStyleN0VyAA09TintShapeY0VGGA12_GA0_GAA6VStackVyACyACyAGyAY_AStGAYGA0_GGGAOyAA5ColorVSgGGGMd, &_s7SwiftUI19_ConditionalContentVyAA6HStackVyACyACyAA9TupleViewVyAA4TextV_AA6SpacerVAA08ModifiedD0VyAiA30_EnvironmentKeyWritingModifierVyAA0H9AlignmentOGGtGAMyAMyAI07WorkoutB017HeaderHyphenationVGARGGs5NeverOGGAMyAU023AlignedLeadingAccessorydG0VyACyACyAMyAA5ImageVAA016_ForegroundStyleN0VyAA09TintShapeY0VGGA12_GA0_GAA6VStackVyACyACyAGyAY_AStGAYGA0_GGGAOyAA5ColorVSgGGGMR);
    lazy protocol witness table accessor for type _ConditionalContent<HStack<_ConditionalContent<_ConditionalContent<TupleView<(Text, Spacer, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>>, ModifiedContent<AlignedLeadingAccessoryContentView<_ConditionalContent<_ConditionalContent<ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>, ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>>, Never>, VStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>>>, _EnvironmentKeyWritingModifier<Color?>>> and conformance <> _ConditionalContent<A, B>();
    *&v63 = &type metadata for AlertConfigurationView;
    *(&v63 + 1) = v24;
    *&v64 = v22;
    *(&v64 + 1) = v23;
    swift_getOpaqueTypeConformance2();
    NavigationLink.init(destination:label:)();
    v25 = v53;
    v26 = v60;
    (*(v53 + 16))(v59, v6, v60);
    swift_storeEnumTagMultiPayload();
    v27 = type metadata accessor for AlertConfigurationViewModel(255);
    v28 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI14NavigationViewVyAA0D0PAAE7toolbar7contentQrqd__yXE_tAA14ToolbarContentRd__lFQOyAA08ModifiedH0Vy07WorkoutB0018AlertConfigurationD0VAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AA0gH7BuilderV10buildBlockyQrxAaHRzlFZQOy_AA0G4ItemVyytAA6ButtonVyAA07DefaultV5LabelVGGQo_Qo_GMd, &_s7SwiftUI14NavigationViewVyAA0D0PAAE7toolbar7contentQrqd__yXE_tAA14ToolbarContentRd__lFQOyAA08ModifiedH0Vy07WorkoutB0018AlertConfigurationD0VAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AA0gH7BuilderV10buildBlockyQrxAaHRzlFZQOy_AA0G4ItemVyytAA6ButtonVyAA07DefaultV5LabelVGGQo_Qo_GMR);
    v29 = lazy protocol witness table accessor for type NavigationLink<_ConditionalContent<HStack<_ConditionalContent<_ConditionalContent<TupleView<(Text, Spacer, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>>, ModifiedContent<AlignedLeadingAccessoryContentView<_ConditionalContent<_ConditionalContent<ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>, ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>>, Never>, VStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>>>, _EnvironmentKeyWritingModifier<Color?>>>, EmptyView> and conformance NavigationLink<A, B>(&lazy protocol witness table cache variable for type Button<NavigationLink<_ConditionalContent<HStack<_ConditionalContent<_ConditionalContent<TupleView<(Text, Spacer, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>>, ModifiedContent<AlignedLeadingAccessoryContentView<_ConditionalContent<_ConditionalContent<ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>, ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>>, Never>, VStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>>>, _EnvironmentKeyWritingModifier<Color?>>>, EmptyView>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA14NavigationLinkVyAA19_ConditionalContentVyAA6HStackVyAGyAGyAA9TupleViewVyAA4TextV_AA6SpacerVAA08ModifiedG0VyAmA30_EnvironmentKeyWritingModifierVyAA0K9AlignmentOGGtGAQyAQyAM07WorkoutB017HeaderHyphenationVGAVGGs5NeverOGGAQyAY023AlignedLeadingAccessorygJ0VyAGyAGyAQyAA5ImageVAA016_ForegroundStyleQ0VyAA14TintShapeStyleVGGA16_GA4_GAA6VStackVyAGyAGyAKyA1__AWtGA1_GA4_GGGASyAA5ColorVSgGGGAA05EmptyJ0VGGMd, &_s7SwiftUI6ButtonVyAA14NavigationLinkVyAA19_ConditionalContentVyAA6HStackVyAGyAGyAA9TupleViewVyAA4TextV_AA6SpacerVAA08ModifiedG0VyAmA30_EnvironmentKeyWritingModifierVyAA0K9AlignmentOGGtGAQyAQyAM07WorkoutB017HeaderHyphenationVGAVGGs5NeverOGGAQyAY023AlignedLeadingAccessorygJ0VyAGyAGyAQyAA5ImageVAA016_ForegroundStyleQ0VyAA14TintShapeStyleVGGA16_GA4_GAA6VStackVyAGyAGyAKyA1__AWtGA1_GA4_GGGASyAA5ColorVSgGGGAA05EmptyJ0VGGMR, MEMORY[0x277CDF028]);
    v30 = _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_6(&lazy protocol witness table cache variable for type AlertConfigurationViewModel and conformance AlertConfigurationViewModel, type metadata accessor for AlertConfigurationViewModel, &protocol conformance descriptor for AlertConfigurationViewModel);
    v31 = lazy protocol witness table accessor for type NavigationLink<_ConditionalContent<HStack<_ConditionalContent<_ConditionalContent<TupleView<(Text, Spacer, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>>, ModifiedContent<AlignedLeadingAccessoryContentView<_ConditionalContent<_ConditionalContent<ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>, ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>>, Never>, VStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>>>, _EnvironmentKeyWritingModifier<Color?>>>, EmptyView> and conformance NavigationLink<A, B>(&lazy protocol witness table cache variable for type NavigationView<<<opaque return type of View.toolbar<A>(content:)>>.0> and conformance NavigationView<A>, &_s7SwiftUI14NavigationViewVyAA0D0PAAE7toolbar7contentQrqd__yXE_tAA14ToolbarContentRd__lFQOyAA08ModifiedH0Vy07WorkoutB0018AlertConfigurationD0VAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AA0gH7BuilderV10buildBlockyQrxAaHRzlFZQOy_AA0G4ItemVyytAA6ButtonVyAA07DefaultV5LabelVGGQo_Qo_GMd, &_s7SwiftUI14NavigationViewVyAA0D0PAAE7toolbar7contentQrqd__yXE_tAA14ToolbarContentRd__lFQOyAA08ModifiedH0Vy07WorkoutB0018AlertConfigurationD0VAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AA0gH7BuilderV10buildBlockyQrxAaHRzlFZQOy_AA0G4ItemVyytAA6ButtonVyAA07DefaultV5LabelVGGQo_Qo_GMR, MEMORY[0x277CDD978]);
    *&v63 = v57;
    *(&v63 + 1) = v27;
    *&v64 = v28;
    *(&v64 + 1) = v29;
    *&v65 = v30;
    *(&v65 + 1) = v31;
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type NavigationLink<_ConditionalContent<HStack<_ConditionalContent<_ConditionalContent<TupleView<(Text, Spacer, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>>, ModifiedContent<AlignedLeadingAccessoryContentView<_ConditionalContent<_ConditionalContent<ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>, ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>>, Never>, VStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>>>, _EnvironmentKeyWritingModifier<Color?>>>, EmptyView> and conformance NavigationLink<A, B>(&lazy protocol witness table cache variable for type NavigationLink<_ConditionalContent<HStack<_ConditionalContent<_ConditionalContent<TupleView<(Text, Spacer, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>>, ModifiedContent<AlignedLeadingAccessoryContentView<_ConditionalContent<_ConditionalContent<ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>, ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>>, Never>, VStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>>>, _EnvironmentKeyWritingModifier<Color?>>>, <<opaque return type of View.navigationTitle<A>(_, &_s7SwiftUI14NavigationLinkVyAA19_ConditionalContentVyAA6HStackVyAEyAEyAA9TupleViewVyAA4TextV_AA6SpacerVAA08ModifiedF0VyAkA30_EnvironmentKeyWritingModifierVyAA0J9AlignmentOGGtGAOyAOyAK07WorkoutB017HeaderHyphenationVGATGGs5NeverOGGAOyAW023AlignedLeadingAccessoryfI0VyAEyAEyAOyAA5ImageVAA016_ForegroundStyleP0VyAA14TintShapeStyleVGGA14_GA2_GAA6VStackVyAEyAEyAIyA__AUtGA_GA2_GGGAQyAA5ColorVSgGGGAA0I0PAAE15navigationTitleyQrqd__SyRd__lFQOyAW018AlertConfigurationI0V_SSQo_GMd, &_s7SwiftUI14NavigationLinkVyAA19_ConditionalContentVyAA6HStackVyAEyAEyAA9TupleViewVyAA4TextV_AA6SpacerVAA08ModifiedF0VyAkA30_EnvironmentKeyWritingModifierVyAA0J9AlignmentOGGtGAOyAOyAK07WorkoutB017HeaderHyphenationVGATGGs5NeverOGGAOyAW023AlignedLeadingAccessoryfI0VyAEyAEyAOyAA5ImageVAA016_ForegroundStyleP0VyAA14TintShapeStyleVGGA14_GA2_GAA6VStackVyAEyAEyAIyA__AUtGA_GA2_GGGAQyAA5ColorVSgGGGAA0I0PAAE15navigationTitleyQrqd__SyRd__lFQOyAW018AlertConfigurationI0V_SSQo_GMR, MEMORY[0x277CDD938]);
    _ConditionalContent<>.init(storage:)();

    return (*(v25 + 8))(v6, v26);
  }

  else
  {
    outlined init with copy of AlertsButton(v2, &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AlertsButton);
    v33 = (*(v9 + 80) + 16) & ~*(v9 + 80);
    v47 = v33 + v10;
    v34 = (v33 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
    v35 = v14;
    v36 = swift_allocObject();
    _s9WorkoutUI12AlertsButtonVWObTm_0(v11, v36 + v33, type metadata accessor for AlertsButton);
    v52 = &v47;
    *(v36 + v34) = v35;
    MEMORY[0x28223BE20](v35);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI14NavigationLinkVyAA19_ConditionalContentVyAA6HStackVyAEyAEyAA9TupleViewVyAA4TextV_AA6SpacerVAA08ModifiedF0VyAkA30_EnvironmentKeyWritingModifierVyAA0J9AlignmentOGGtGAOyAOyAK07WorkoutB017HeaderHyphenationVGATGGs5NeverOGGAOyAW023AlignedLeadingAccessoryfI0VyAEyAEyAOyAA5ImageVAA016_ForegroundStyleP0VyAA14TintShapeStyleVGGA14_GA2_GAA6VStackVyAEyAEyAIyA__AUtGA_GA2_GGGAQyAA5ColorVSgGGGAA05EmptyI0VGMd, &_s7SwiftUI14NavigationLinkVyAA19_ConditionalContentVyAA6HStackVyAEyAEyAA9TupleViewVyAA4TextV_AA6SpacerVAA08ModifiedF0VyAkA30_EnvironmentKeyWritingModifierVyAA0J9AlignmentOGGtGAOyAOyAK07WorkoutB017HeaderHyphenationVGATGGs5NeverOGGAOyAW023AlignedLeadingAccessoryfI0VyAEyAEyAOyAA5ImageVAA016_ForegroundStyleP0VyAA14TintShapeStyleVGGA14_GA2_GAA6VStackVyAEyAEyAIyA__AUtGA_GA2_GGGAQyAA5ColorVSgGGGAA05EmptyI0VGMR);
    v53 = MEMORY[0x277CDD938];
    lazy protocol witness table accessor for type NavigationLink<_ConditionalContent<HStack<_ConditionalContent<_ConditionalContent<TupleView<(Text, Spacer, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>>, ModifiedContent<AlignedLeadingAccessoryContentView<_ConditionalContent<_ConditionalContent<ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>, ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>>, Never>, VStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>>>, _EnvironmentKeyWritingModifier<Color?>>>, EmptyView> and conformance NavigationLink<A, B>(&lazy protocol witness table cache variable for type NavigationLink<_ConditionalContent<HStack<_ConditionalContent<_ConditionalContent<TupleView<(Text, Spacer, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>>, ModifiedContent<AlignedLeadingAccessoryContentView<_ConditionalContent<_ConditionalContent<ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>, ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>>, Never>, VStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>>>, _EnvironmentKeyWritingModifier<Color?>>>, EmptyView> and conformance NavigationLink<A, B>, &_s7SwiftUI14NavigationLinkVyAA19_ConditionalContentVyAA6HStackVyAEyAEyAA9TupleViewVyAA4TextV_AA6SpacerVAA08ModifiedF0VyAkA30_EnvironmentKeyWritingModifierVyAA0J9AlignmentOGGtGAOyAOyAK07WorkoutB017HeaderHyphenationVGATGGs5NeverOGGAOyAW023AlignedLeadingAccessoryfI0VyAEyAEyAOyAA5ImageVAA016_ForegroundStyleP0VyAA14TintShapeStyleVGGA14_GA2_GAA6VStackVyAEyAEyAIyA__AUtGA_GA2_GGGAQyAA5ColorVSgGGGAA05EmptyI0VGMd, &_s7SwiftUI14NavigationLinkVyAA19_ConditionalContentVyAA6HStackVyAEyAEyAA9TupleViewVyAA4TextV_AA6SpacerVAA08ModifiedF0VyAkA30_EnvironmentKeyWritingModifierVyAA0J9AlignmentOGGtGAOyAOyAK07WorkoutB017HeaderHyphenationVGATGGs5NeverOGGAOyAW023AlignedLeadingAccessoryfI0VyAEyAEyAOyAA5ImageVAA016_ForegroundStyleP0VyAA14TintShapeStyleVGGA14_GA2_GAA6VStackVyAEyAEyAIyA__AUtGA_GA2_GGGAQyAA5ColorVSgGGGAA05EmptyI0VGMR, MEMORY[0x277CDD938]);
    Button.init(action:label:)();
    v63 = *(v2 + *(v48 + 52));
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy07WorkoutB027AlertConfigurationViewModelCSgGMd, &_s7SwiftUI5StateVy07WorkoutB027AlertConfigurationViewModelCSgGMR);
    State.projectedValue.getter();
    v48 = v68;
    v52 = v69;
    outlined init with copy of AlertsButton(v2, v11, type metadata accessor for AlertsButton);
    v37 = swift_allocObject();
    _s9WorkoutUI12AlertsButtonVWObTm_0(v11, v37 + v33, type metadata accessor for AlertsButton);
    v38 = type metadata accessor for AlertConfigurationViewModel(0);
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI14NavigationViewVyAA0D0PAAE7toolbar7contentQrqd__yXE_tAA14ToolbarContentRd__lFQOyAA08ModifiedH0Vy07WorkoutB0018AlertConfigurationD0VAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AA0gH7BuilderV10buildBlockyQrxAaHRzlFZQOy_AA0G4ItemVyytAA6ButtonVyAA07DefaultV5LabelVGGQo_Qo_GMd, &_s7SwiftUI14NavigationViewVyAA0D0PAAE7toolbar7contentQrqd__yXE_tAA14ToolbarContentRd__lFQOyAA08ModifiedH0Vy07WorkoutB0018AlertConfigurationD0VAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AA0gH7BuilderV10buildBlockyQrxAaHRzlFZQOy_AA0G4ItemVyytAA6ButtonVyAA07DefaultV5LabelVGGQo_Qo_GMR);
    v40 = lazy protocol witness table accessor for type NavigationLink<_ConditionalContent<HStack<_ConditionalContent<_ConditionalContent<TupleView<(Text, Spacer, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>>, ModifiedContent<AlignedLeadingAccessoryContentView<_ConditionalContent<_ConditionalContent<ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>, ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>>, Never>, VStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>>>, _EnvironmentKeyWritingModifier<Color?>>>, EmptyView> and conformance NavigationLink<A, B>(&lazy protocol witness table cache variable for type Button<NavigationLink<_ConditionalContent<HStack<_ConditionalContent<_ConditionalContent<TupleView<(Text, Spacer, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>>, ModifiedContent<AlignedLeadingAccessoryContentView<_ConditionalContent<_ConditionalContent<ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>, ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>>, Never>, VStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>>>, _EnvironmentKeyWritingModifier<Color?>>>, EmptyView>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA14NavigationLinkVyAA19_ConditionalContentVyAA6HStackVyAGyAGyAA9TupleViewVyAA4TextV_AA6SpacerVAA08ModifiedG0VyAmA30_EnvironmentKeyWritingModifierVyAA0K9AlignmentOGGtGAQyAQyAM07WorkoutB017HeaderHyphenationVGAVGGs5NeverOGGAQyAY023AlignedLeadingAccessorygJ0VyAGyAGyAQyAA5ImageVAA016_ForegroundStyleQ0VyAA14TintShapeStyleVGGA16_GA4_GAA6VStackVyAGyAGyAKyA1__AWtGA1_GA4_GGGASyAA5ColorVSgGGGAA05EmptyJ0VGGMd, &_s7SwiftUI6ButtonVyAA14NavigationLinkVyAA19_ConditionalContentVyAA6HStackVyAGyAGyAA9TupleViewVyAA4TextV_AA6SpacerVAA08ModifiedG0VyAmA30_EnvironmentKeyWritingModifierVyAA0K9AlignmentOGGtGAQyAQyAM07WorkoutB017HeaderHyphenationVGAVGGs5NeverOGGAQyAY023AlignedLeadingAccessorygJ0VyAGyAGyAQyAA5ImageVAA016_ForegroundStyleQ0VyAA14TintShapeStyleVGGA16_GA4_GAA6VStackVyAGyAGyAKyA1__AWtGA1_GA4_GGGASyAA5ColorVSgGGGAA05EmptyJ0VGGMR, MEMORY[0x277CDF028]);
    *&v46 = _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_6(&lazy protocol witness table cache variable for type AlertConfigurationViewModel and conformance AlertConfigurationViewModel, type metadata accessor for AlertConfigurationViewModel, &protocol conformance descriptor for AlertConfigurationViewModel);
    *(&v46 + 1) = lazy protocol witness table accessor for type NavigationLink<_ConditionalContent<HStack<_ConditionalContent<_ConditionalContent<TupleView<(Text, Spacer, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>>, ModifiedContent<AlignedLeadingAccessoryContentView<_ConditionalContent<_ConditionalContent<ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>, ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>>, Never>, VStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>>>, _EnvironmentKeyWritingModifier<Color?>>>, EmptyView> and conformance NavigationLink<A, B>(&lazy protocol witness table cache variable for type NavigationView<<<opaque return type of View.toolbar<A>(content:)>>.0> and conformance NavigationView<A>, &_s7SwiftUI14NavigationViewVyAA0D0PAAE7toolbar7contentQrqd__yXE_tAA14ToolbarContentRd__lFQOyAA08ModifiedH0Vy07WorkoutB0018AlertConfigurationD0VAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AA0gH7BuilderV10buildBlockyQrxAaHRzlFZQOy_AA0G4ItemVyytAA6ButtonVyAA07DefaultV5LabelVGGQo_Qo_GMd, &_s7SwiftUI14NavigationViewVyAA0D0PAAE7toolbar7contentQrqd__yXE_tAA14ToolbarContentRd__lFQOyAA08ModifiedH0Vy07WorkoutB0018AlertConfigurationD0VAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AA0gH7BuilderV10buildBlockyQrxAaHRzlFZQOy_AA0G4ItemVyytAA6ButtonVyAA07DefaultV5LabelVGGQo_Qo_GMR, MEMORY[0x277CDD978]);
    v41 = v50;
    v42 = v57;
    v43 = v55;
    View.sheet<A, B>(item:onDismiss:content:)();

    (*(v49 + 8))(v43, v42);
    v44 = v51;
    v45 = v58;
    (*(v51 + 16))(v59, v41, v58);
    swift_storeEnumTagMultiPayload();
    *&v68 = v42;
    *(&v68 + 1) = v38;
    *&v69 = v39;
    *(&v69 + 1) = v40;
    v70 = v46;
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type NavigationLink<_ConditionalContent<HStack<_ConditionalContent<_ConditionalContent<TupleView<(Text, Spacer, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>>, ModifiedContent<AlignedLeadingAccessoryContentView<_ConditionalContent<_ConditionalContent<ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>, ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>>, Never>, VStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>>>, _EnvironmentKeyWritingModifier<Color?>>>, EmptyView> and conformance NavigationLink<A, B>(&lazy protocol witness table cache variable for type NavigationLink<_ConditionalContent<HStack<_ConditionalContent<_ConditionalContent<TupleView<(Text, Spacer, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>>, ModifiedContent<AlignedLeadingAccessoryContentView<_ConditionalContent<_ConditionalContent<ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>, ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>>, Never>, VStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>>>, _EnvironmentKeyWritingModifier<Color?>>>, <<opaque return type of View.navigationTitle<A>(_, &_s7SwiftUI14NavigationLinkVyAA19_ConditionalContentVyAA6HStackVyAEyAEyAA9TupleViewVyAA4TextV_AA6SpacerVAA08ModifiedF0VyAkA30_EnvironmentKeyWritingModifierVyAA0J9AlignmentOGGtGAOyAOyAK07WorkoutB017HeaderHyphenationVGATGGs5NeverOGGAOyAW023AlignedLeadingAccessoryfI0VyAEyAEyAOyAA5ImageVAA016_ForegroundStyleP0VyAA14TintShapeStyleVGGA14_GA2_GAA6VStackVyAEyAEyAIyA__AUtGA_GA2_GGGAQyAA5ColorVSgGGGAA0I0PAAE15navigationTitleyQrqd__SyRd__lFQOyAW018AlertConfigurationI0V_SSQo_GMd, &_s7SwiftUI14NavigationLinkVyAA19_ConditionalContentVyAA6HStackVyAEyAEyAA9TupleViewVyAA4TextV_AA6SpacerVAA08ModifiedF0VyAkA30_EnvironmentKeyWritingModifierVyAA0J9AlignmentOGGtGAOyAOyAK07WorkoutB017HeaderHyphenationVGATGGs5NeverOGGAOyAW023AlignedLeadingAccessoryfI0VyAEyAEyAOyAA5ImageVAA016_ForegroundStyleP0VyAA14TintShapeStyleVGGA14_GA2_GAA6VStackVyAEyAEyAIyA__AUtGA_GA2_GGGAQyAA5ColorVSgGGGAA0I0PAAE15navigationTitleyQrqd__SyRd__lFQOyAW018AlertConfigurationI0V_SSQo_GMR, v53);
    _ConditionalContent<>.init(storage:)();

    return (*(v44 + 8))(v41, v45);
  }
}

uint64_t AlertsButton.makeViewModel()()
{
  v1 = v0;
  v2 = type metadata accessor for AlertConfigurationSessionContext();
  v65 = *(v2 - 8);
  v66 = v2;
  MEMORY[0x28223BE20](v2);
  v64 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ConfigurationType();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AlertConfigurationContext();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v62 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v50 - v12;
  v59 = type metadata accessor for AlertConfigurationViewModel.ViewModelContainer(0);
  MEMORY[0x28223BE20](v59);
  v61 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v50 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = (&v50 - v19);
  v21 = type metadata accessor for AlertsButton(0);
  (*(v9 + 16))(v13, v1 + v21[7], v8);
  v22 = (*(v9 + 88))(v13, v8);
  v23 = *MEMORY[0x277D7E4B8];
  v63 = v8;
  v56 = v5;
  v57 = v4;
  v60 = v9;
  v55 = v23;
  if (v22 == v23)
  {
    (*(v9 + 96))(v13, v8);
    v58 = *(v5 + 32);
    v58(v7, v13, v4);
    v54 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI21LocalBindingViewModelC_0A4Core17ConfigurationTypeOtMd, &_s9WorkoutUI21LocalBindingViewModelC_0A4Core17ConfigurationTypeOtMR) + 48);
    v24 = (v1 + v21[8]);
    v69 = *v24;
    v70 = *(v24 + 1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySay11WorkoutCore10TargetZoneCGGMd, &_s7SwiftUI7BindingVySay11WorkoutCore10TargetZoneCGGMR);
    Binding.projectedValue.getter();
    v53 = v67;
    v52 = v68;
    v25 = (v1 + v21[9]);
    v69 = *v25;
    v70 = *(v25 + 1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy11WorkoutCore19HeartRateTargetZoneCGMd, &_s7SwiftUI7BindingVy11WorkoutCore19HeartRateTargetZoneCGMR);
    Binding.projectedValue.getter();
    v26 = v67;
    v51 = v68;
    v27 = (v1 + v21[10]);
    v69 = *v27;
    v70 = *(v27 + 1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy11WorkoutCore25PowerZonesAlertTargetZoneCGMd, &_s7SwiftUI7BindingVy11WorkoutCore25PowerZonesAlertTargetZoneCGMR);
    Binding.projectedValue.getter();
    v28 = v67;
    type metadata accessor for LocalBindingViewModel(0);
    v50 = v68;
    v29 = swift_allocObject();
    ObservationRegistrar.init()();
    *(v29 + 16) = v53;
    *(v29 + 24) = v52;
    *(v29 + 40) = v26;
    *(v29 + 48) = v51;
    *(v29 + 64) = v28;
    *(v29 + 72) = v50;
    *v20 = v29;
    v58(v20 + v54, v7, v4);
  }

  else
  {
    if (v22 != *MEMORY[0x277D7E4C0])
    {
      result = _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
      return result;
    }

    v30 = *(v1 + 16);
    v31 = *(v1 + 24);
    type metadata accessor for ActivityPersistingViewModel(0);
    swift_allocObject();
    v32 = v30;
    v33 = v31;
    v34 = specialized ActivityPersistingViewModel.init(activityType:formattingManager:)(v32, v33);

    *v20 = v34;
  }

  swift_storeEnumTagMultiPayload();
  outlined init with copy of AlertsButton(v20, v17, type metadata accessor for AlertConfigurationViewModel.ViewModelContainer);
  v35 = *(v1 + 16);
  v36 = *(v1 + 24);
  v37 = *(v1 + v21[11]);
  v58 = *(v1 + v21[12]);
  (*(v65 + 104))(v64, *MEMORY[0x277D7E690], v66);
  type metadata accessor for AlertConfigurationViewModel(0);
  v38 = swift_allocObject();
  v39 = v37;
  v40 = v35;
  v41 = v36;
  ObservationRegistrar.init()();
  outlined destroy of AlertConfigurationViewModel.ViewModelContainer(v20);
  outlined init with copy of AlertsButton(v17, v38 + OBJC_IVAR____TtC9WorkoutUI27AlertConfigurationViewModel_container, type metadata accessor for AlertConfigurationViewModel.ViewModelContainer);
  *(v38 + 16) = v40;
  *(v38 + 24) = v41;
  v42 = v17;
  v43 = v61;
  _s9WorkoutUI12AlertsButtonVWObTm_0(v42, v61, type metadata accessor for AlertConfigurationViewModel.ViewModelContainer);
  if (swift_getEnumCaseMultiPayload() == 1)
  {

    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI21LocalBindingViewModelC_0A4Core17ConfigurationTypeOtMd, &_s9WorkoutUI21LocalBindingViewModelC_0A4Core17ConfigurationTypeOtMR);
    v45 = v62;
    (*(v56 + 32))(v62, v43 + *(v44 + 48), v57);
    v46 = v63;
    v47 = v60;
    v48 = v55;
  }

  else
  {
    outlined destroy of AlertConfigurationViewModel.ViewModelContainer(v43);
    v48 = *MEMORY[0x277D7E4C0];
    v45 = v62;
    v46 = v63;
    v47 = v60;
  }

  (*(v47 + 104))(v45, v48, v46);
  (*(v47 + 32))(v38 + OBJC_IVAR____TtC9WorkoutUI27AlertConfigurationViewModel_configurationContext, v45, v46);
  *(v38 + OBJC_IVAR____TtC9WorkoutUI27AlertConfigurationViewModel_workoutConfiguration) = v37;
  *(v38 + OBJC_IVAR____TtC9WorkoutUI27AlertConfigurationViewModel_activityMoveMode) = v58;
  (*(v65 + 32))(v38 + OBJC_IVAR____TtC9WorkoutUI27AlertConfigurationViewModel_sessionContext, v64, v66);
  return v38;
}

uint64_t closure #1 in AlertsButton.body.getter(uint64_t a1, uint64_t a2)
{
  type metadata accessor for AlertsButton(0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy07WorkoutB027AlertConfigurationViewModelCSgGMd, &_s7SwiftUI5StateVy07WorkoutB027AlertConfigurationViewModelCSgGMR);
  return State.wrappedValue.setter();
}

uint64_t closure #2 in AlertsButton.body.getter(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA6HStackVyACyACyAA9TupleViewVyAA4TextV_AA6SpacerVAA08ModifiedD0VyAiA30_EnvironmentKeyWritingModifierVyAA0H9AlignmentOGGtGAMyAMyAI07WorkoutB017HeaderHyphenationVGARGGs5NeverOGGAMyAU023AlignedLeadingAccessorydG0VyACyACyAMyAA5ImageVAA016_ForegroundStyleN0VyAA09TintShapeY0VGGA12_GA0_GAA6VStackVyACyACyAGyAY_AStGAYGA0_GGGAOyAA5ColorVSgGGGMd, &_s7SwiftUI19_ConditionalContentVyAA6HStackVyACyACyAA9TupleViewVyAA4TextV_AA6SpacerVAA08ModifiedD0VyAiA30_EnvironmentKeyWritingModifierVyAA0H9AlignmentOGGtGAMyAMyAI07WorkoutB017HeaderHyphenationVGARGGs5NeverOGGAMyAU023AlignedLeadingAccessorydG0VyACyACyAMyAA5ImageVAA016_ForegroundStyleN0VyAA09TintShapeY0VGGA12_GA0_GAA6VStackVyACyACyAGyAY_AStGAYGA0_GGGAOyAA5ColorVSgGGGMR);
  lazy protocol witness table accessor for type _ConditionalContent<HStack<_ConditionalContent<_ConditionalContent<TupleView<(Text, Spacer, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>>, ModifiedContent<AlignedLeadingAccessoryContentView<_ConditionalContent<_ConditionalContent<ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>, ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>>, Never>, VStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>>>, _EnvironmentKeyWritingModifier<Color?>>> and conformance <> _ConditionalContent<A, B>();
  return NavigationLink.init(destination:label:)();
}

uint64_t AlertsButton.platformAlertsButtonLabel()@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB0023AlignedLeadingAccessoryD4ViewVyAA012_ConditionalD0VyAHyACyAA5ImageVAA24_ForegroundStyleModifierVyAA09TintShapeM0VGGAPGs5NeverOGAA6VStackVyAHyAHyAA05TupleI0VyACyACyAA4TextVAD17HeaderHyphenationVGAA022_EnvironmentKeyWritingN0VyAA0T9AlignmentOGG_ACyAZA6_GtGA7_GASGGGA3_yAA5ColorVSgGGMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB0023AlignedLeadingAccessoryD4ViewVyAA012_ConditionalD0VyAHyACyAA5ImageVAA24_ForegroundStyleModifierVyAA09TintShapeM0VGGAPGs5NeverOGAA6VStackVyAHyAHyAA05TupleI0VyACyACyAA4TextVAD17HeaderHyphenationVGAA022_EnvironmentKeyWritingN0VyAA0T9AlignmentOGG_ACyAZA6_GtGA7_GASGGGA3_yAA5ColorVSgGGMR);
  MEMORY[0x28223BE20](v4);
  v6 = &v26 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA6HStackVyACyACyAA9TupleViewVyAA4TextV_AA6SpacerVAA08ModifiedD0VyAkA30_EnvironmentKeyWritingModifierVyAA0I9AlignmentOGGtGAOyAOyAK07WorkoutB017HeaderHyphenationVGATGGs5NeverOGGAOyAW023AlignedLeadingAccessorydH0VyACyACyAOyAA5ImageVAA016_ForegroundStyleO0VyAA09TintShapeZ0VGGA14_GA2_GAA6VStackVyACyACyAIyA__AUtGA_GA2_GGGAQyAA5ColorVSgGG_GMd, &_s7SwiftUI19_ConditionalContentV7StorageOyAA6HStackVyACyACyAA9TupleViewVyAA4TextV_AA6SpacerVAA08ModifiedD0VyAkA30_EnvironmentKeyWritingModifierVyAA0I9AlignmentOGGtGAOyAOyAK07WorkoutB017HeaderHyphenationVGATGGs5NeverOGGAOyAW023AlignedLeadingAccessorydH0VyACyACyAOyAA5ImageVAA016_ForegroundStyleO0VyAA09TintShapeZ0VGGA14_GA2_GAA6VStackVyACyACyAIyA__AUtGA_GA2_GGGAQyAA5ColorVSgGG_GMR);
  MEMORY[0x28223BE20](v7);
  v9 = &v26 - v8;
  if (static Platform.current.getter())
  {
    v29 = static VerticalAlignment.center.getter();
    closure #1 in AlertsButton.watchAlertsButtonLabel()(v2, v6);
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI34AlignedLeadingAccessoryContentViewVy05SwiftB0012_ConditionalF0VyAFyAD08ModifiedF0VyAD5ImageVAD24_ForegroundStyleModifierVyAD09TintShapeM0VGGAPGs5NeverOGAD6VStackVyAFyAFyAD05TupleG0VyAHyAHyAD4TextVAA17HeaderHyphenationVGAD022_EnvironmentKeyWritingN0VyAD0T9AlignmentOGG_AHyAZA6_GtGA7_GASGGGMd, &_s9WorkoutUI34AlignedLeadingAccessoryContentViewVy05SwiftB0012_ConditionalF0VyAFyAD08ModifiedF0VyAD5ImageVAD24_ForegroundStyleModifierVyAD09TintShapeM0VGGAPGs5NeverOGAD6VStackVyAFyAFyAD05TupleG0VyAHyAHyAD4TextVAA17HeaderHyphenationVGAD022_EnvironmentKeyWritingN0VyAD0T9AlignmentOGG_AHyAZA6_GtGA7_GASGGGMR);
    v11 = v10[13];
    v28 = v4;
    v12 = &v6[v11];
    v27 = static HorizontalAlignment.leading.getter();
    v39 = 1;
    closure #1 in closure #2 in AlertsButton.watchAlertsButtonLabel()(v2, &v33);
    v42 = v35;
    v43 = v36;
    v44[0] = v37[0];
    *(v44 + 11) = *(v37 + 11);
    v40 = v33;
    v41 = v34;
    *(v49 + 11) = *(v37 + 11);
    v47 = v35;
    v48 = v36;
    v49[0] = v37[0];
    v45 = v33;
    v46 = v34;
    v30 = a1;
    outlined init with copy of _ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>(&v40, v32, &_s7SwiftUI19_ConditionalContentVyACyAA9TupleViewVyAA08ModifiedD0VyAGyAA4TextV07WorkoutB017HeaderHyphenationVGAA30_EnvironmentKeyWritingModifierVyAA0H9AlignmentOGG_AGyAiRGtGASGs5NeverOGMd, &_s7SwiftUI19_ConditionalContentVyACyAA9TupleViewVyAA08ModifiedD0VyAGyAA4TextV07WorkoutB017HeaderHyphenationVGAA30_EnvironmentKeyWritingModifierVyAA0H9AlignmentOGG_AGyAiRGtGASGs5NeverOGMR);
    outlined destroy of _ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>(&v45, &_s7SwiftUI19_ConditionalContentVyACyAA9TupleViewVyAA08ModifiedD0VyAGyAA4TextV07WorkoutB017HeaderHyphenationVGAA30_EnvironmentKeyWritingModifierVyAA0H9AlignmentOGG_AGyAiRGtGASGs5NeverOGMd, &_s7SwiftUI19_ConditionalContentVyACyAA9TupleViewVyAA08ModifiedD0VyAGyAA4TextV07WorkoutB017HeaderHyphenationVGAA30_EnvironmentKeyWritingModifierVyAA0H9AlignmentOGG_AGyAiRGtGASGs5NeverOGMR);
    *&v38[39] = v42;
    *&v38[55] = v43;
    *&v38[71] = v44[0];
    *&v38[82] = *(v44 + 11);
    *&v38[7] = v40;
    *&v38[23] = v41;
    v13 = *&v38[32];
    *(v12 + 65) = *&v38[48];
    v14 = *&v38[80];
    *(v12 + 81) = *&v38[64];
    *(v12 + 97) = v14;
    v15 = *v38;
    *(v12 + 33) = *&v38[16];
    *(v12 + 49) = v13;
    v16 = v39;
    *v12 = v27;
    *(v12 + 1) = 0;
    v12[16] = v16;
    *(v12 + 113) = *&v38[96];
    *(v12 + 17) = v15;
    *&v6[v10[14]] = 0x4022000000000000;
    *&v6[v10[15]] = v29;
    v17 = static Color.white.getter();
    KeyPath = swift_getKeyPath();
    v19 = &v6[*(v28 + 36)];
    *v19 = KeyPath;
    v19[1] = v17;
    outlined init with copy of _ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>(v6, v9, &_s7SwiftUI15ModifiedContentVy07WorkoutB0023AlignedLeadingAccessoryD4ViewVyAA012_ConditionalD0VyAHyACyAA5ImageVAA24_ForegroundStyleModifierVyAA09TintShapeM0VGGAPGs5NeverOGAA6VStackVyAHyAHyAA05TupleI0VyACyACyAA4TextVAD17HeaderHyphenationVGAA022_EnvironmentKeyWritingN0VyAA0T9AlignmentOGG_ACyAZA6_GtGA7_GASGGGA3_yAA5ColorVSgGGMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB0023AlignedLeadingAccessoryD4ViewVyAA012_ConditionalD0VyAHyACyAA5ImageVAA24_ForegroundStyleModifierVyAA09TintShapeM0VGGAPGs5NeverOGAA6VStackVyAHyAHyAA05TupleI0VyACyACyAA4TextVAD17HeaderHyphenationVGAA022_EnvironmentKeyWritingN0VyAA0T9AlignmentOGG_ACyAZA6_GtGA7_GASGGGA3_yAA5ColorVSgGGMR);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA19_ConditionalContentVyAEyAA9TupleViewVyAA4TextV_AA6SpacerVAA08ModifiedE0VyAiA30_EnvironmentKeyWritingModifierVyAA0H9AlignmentOGGtGAMyAMyAI07WorkoutB017HeaderHyphenationVGARGGs5NeverOGGMd, &_s7SwiftUI6HStackVyAA19_ConditionalContentVyAEyAA9TupleViewVyAA4TextV_AA6SpacerVAA08ModifiedE0VyAiA30_EnvironmentKeyWritingModifierVyAA0H9AlignmentOGGtGAMyAMyAI07WorkoutB017HeaderHyphenationVGARGGs5NeverOGGMR);
    lazy protocol witness table accessor for type NavigationLink<_ConditionalContent<HStack<_ConditionalContent<_ConditionalContent<TupleView<(Text, Spacer, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>>, ModifiedContent<AlignedLeadingAccessoryContentView<_ConditionalContent<_ConditionalContent<ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>, ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>>, Never>, VStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>>>, _EnvironmentKeyWritingModifier<Color?>>>, EmptyView> and conformance NavigationLink<A, B>(&lazy protocol witness table cache variable for type HStack<_ConditionalContent<_ConditionalContent<TupleView<(Text, Spacer, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>> and conformance HStack<A>, &_s7SwiftUI6HStackVyAA19_ConditionalContentVyAEyAA9TupleViewVyAA4TextV_AA6SpacerVAA08ModifiedE0VyAiA30_EnvironmentKeyWritingModifierVyAA0H9AlignmentOGGtGAMyAMyAI07WorkoutB017HeaderHyphenationVGARGGs5NeverOGGMd, &_s7SwiftUI6HStackVyAA19_ConditionalContentVyAEyAA9TupleViewVyAA4TextV_AA6SpacerVAA08ModifiedE0VyAiA30_EnvironmentKeyWritingModifierVyAA0H9AlignmentOGGtGAMyAMyAI07WorkoutB017HeaderHyphenationVGARGGs5NeverOGGMR, MEMORY[0x277CE1138]);
    lazy protocol witness table accessor for type ModifiedContent<AlignedLeadingAccessoryContentView<_ConditionalContent<_ConditionalContent<ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>, ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>>, Never>, VStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>();
    _ConditionalContent<>.init(storage:)();
    return outlined destroy of _ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>(v6, &_s7SwiftUI15ModifiedContentVy07WorkoutB0023AlignedLeadingAccessoryD4ViewVyAA012_ConditionalD0VyAHyACyAA5ImageVAA24_ForegroundStyleModifierVyAA09TintShapeM0VGGAPGs5NeverOGAA6VStackVyAHyAHyAA05TupleI0VyACyACyAA4TextVAD17HeaderHyphenationVGAA022_EnvironmentKeyWritingN0VyAA0T9AlignmentOGG_ACyAZA6_GtGA7_GASGGGA3_yAA5ColorVSgGGMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB0023AlignedLeadingAccessoryD4ViewVyAA012_ConditionalD0VyAHyACyAA5ImageVAA24_ForegroundStyleModifierVyAA09TintShapeM0VGGAPGs5NeverOGAA6VStackVyAHyAHyAA05TupleI0VyACyACyAA4TextVAD17HeaderHyphenationVGAA022_EnvironmentKeyWritingN0VyAA0T9AlignmentOGG_ACyAZA6_GtGA7_GASGGGA3_yAA5ColorVSgGGMR);
  }

  else
  {
    v21 = static VerticalAlignment.center.getter();
    v39 = 1;
    closure #1 in AlertsButton.phoneAlertsButtonLabel()(v2, &v33);
    v42 = v35;
    v43 = v36;
    v44[0] = v37[0];
    *(v44 + 11) = *(v37 + 11);
    v40 = v33;
    v41 = v34;
    *(v49 + 11) = *(v37 + 11);
    v47 = v35;
    v48 = v36;
    v49[0] = v37[0];
    v45 = v33;
    v46 = v34;
    outlined init with copy of _ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>(&v40, v32, &_s7SwiftUI19_ConditionalContentVyACyAA9TupleViewVyAA4TextV_AA6SpacerVAA08ModifiedD0VyAgA30_EnvironmentKeyWritingModifierVyAA0G9AlignmentOGGtGAKyAKyAG07WorkoutB017HeaderHyphenationVGAPGGs5NeverOGMd, &_s7SwiftUI19_ConditionalContentVyACyAA9TupleViewVyAA4TextV_AA6SpacerVAA08ModifiedD0VyAgA30_EnvironmentKeyWritingModifierVyAA0G9AlignmentOGGtGAKyAKyAG07WorkoutB017HeaderHyphenationVGAPGGs5NeverOGMR);
    outlined destroy of _ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>(&v45, &_s7SwiftUI19_ConditionalContentVyACyAA9TupleViewVyAA4TextV_AA6SpacerVAA08ModifiedD0VyAgA30_EnvironmentKeyWritingModifierVyAA0G9AlignmentOGGtGAKyAKyAG07WorkoutB017HeaderHyphenationVGAPGGs5NeverOGMd, &_s7SwiftUI19_ConditionalContentVyACyAA9TupleViewVyAA4TextV_AA6SpacerVAA08ModifiedD0VyAgA30_EnvironmentKeyWritingModifierVyAA0G9AlignmentOGGtGAKyAKyAG07WorkoutB017HeaderHyphenationVGAPGGs5NeverOGMR);
    *&v31[39] = v42;
    *&v31[55] = v43;
    *&v31[71] = v44[0];
    *&v31[82] = *(v44 + 11);
    *&v31[7] = v40;
    *&v31[23] = v41;
    v22 = *&v31[32];
    *(v9 + 65) = *&v31[48];
    v23 = *&v31[80];
    *(v9 + 81) = *&v31[64];
    *(v9 + 97) = v23;
    v24 = *v31;
    *(v9 + 33) = *&v31[16];
    *(v9 + 49) = v22;
    v25 = v39;
    *v9 = v21;
    *(v9 + 1) = 0;
    v9[16] = v25;
    *(v9 + 113) = *&v31[96];
    *(v9 + 17) = v24;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA19_ConditionalContentVyAEyAA9TupleViewVyAA4TextV_AA6SpacerVAA08ModifiedE0VyAiA30_EnvironmentKeyWritingModifierVyAA0H9AlignmentOGGtGAMyAMyAI07WorkoutB017HeaderHyphenationVGARGGs5NeverOGGMd, &_s7SwiftUI6HStackVyAA19_ConditionalContentVyAEyAA9TupleViewVyAA4TextV_AA6SpacerVAA08ModifiedE0VyAiA30_EnvironmentKeyWritingModifierVyAA0H9AlignmentOGGtGAMyAMyAI07WorkoutB017HeaderHyphenationVGARGGs5NeverOGGMR);
    lazy protocol witness table accessor for type NavigationLink<_ConditionalContent<HStack<_ConditionalContent<_ConditionalContent<TupleView<(Text, Spacer, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>>, ModifiedContent<AlignedLeadingAccessoryContentView<_ConditionalContent<_ConditionalContent<ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>, ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>>, Never>, VStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>>>, _EnvironmentKeyWritingModifier<Color?>>>, EmptyView> and conformance NavigationLink<A, B>(&lazy protocol witness table cache variable for type HStack<_ConditionalContent<_ConditionalContent<TupleView<(Text, Spacer, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>> and conformance HStack<A>, &_s7SwiftUI6HStackVyAA19_ConditionalContentVyAEyAA9TupleViewVyAA4TextV_AA6SpacerVAA08ModifiedE0VyAiA30_EnvironmentKeyWritingModifierVyAA0H9AlignmentOGGtGAMyAMyAI07WorkoutB017HeaderHyphenationVGARGGs5NeverOGGMd, &_s7SwiftUI6HStackVyAA19_ConditionalContentVyAEyAA9TupleViewVyAA4TextV_AA6SpacerVAA08ModifiedE0VyAiA30_EnvironmentKeyWritingModifierVyAA0H9AlignmentOGGtGAMyAMyAI07WorkoutB017HeaderHyphenationVGARGGs5NeverOGGMR, MEMORY[0x277CE1138]);
    lazy protocol witness table accessor for type ModifiedContent<AlignedLeadingAccessoryContentView<_ConditionalContent<_ConditionalContent<ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>, ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>>, Never>, VStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>();
    return _ConditionalContent<>.init(storage:)();
  }
}

uint64_t closure #3 in AlertsButton.body.getter(void *a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE7toolbar7contentQrqd__yXE_tAA14ToolbarContentRd__lFQOyAA08ModifiedG0Vy07WorkoutB0018AlertConfigurationC0VAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AA0fG7BuilderV10buildBlockyQrxAaFRzlFZQOy_AA0F4ItemVyytAA6ButtonVyAA07DefaultU5LabelVGGQo_Qo_Md, &_s7SwiftUI4ViewPAAE7toolbar7contentQrqd__yXE_tAA14ToolbarContentRd__lFQOyAA08ModifiedG0Vy07WorkoutB0018AlertConfigurationC0VAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AA0fG7BuilderV10buildBlockyQrxAaFRzlFZQOy_AA0F4ItemVyytAA6ButtonVyAA07DefaultU5LabelVGGQo_Qo_MR);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB022AlertConfigurationViewVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB022AlertConfigurationViewVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMR);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI21ToolbarContentBuilderV10buildBlockyQrxAA0cD0RzlFZQOy_AA0C4ItemVyytAA6ButtonVyAA07DefaultI5LabelVGGQo_Md, &_s7SwiftUI21ToolbarContentBuilderV10buildBlockyQrxAA0cD0RzlFZQOy_AA0C4ItemVyytAA6ButtonVyAA07DefaultI5LabelVGGQo_MR);
  lazy protocol witness table accessor for type ModifiedContent<AlertConfigurationView, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI11ToolbarItemVyytAA6ButtonVyAA07DefaultE5LabelVGGMd, &_s7SwiftUI11ToolbarItemVyytAA6ButtonVyAA07DefaultE5LabelVGGMR);
  lazy protocol witness table accessor for type NavigationLink<_ConditionalContent<HStack<_ConditionalContent<_ConditionalContent<TupleView<(Text, Spacer, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>>, ModifiedContent<AlignedLeadingAccessoryContentView<_ConditionalContent<_ConditionalContent<ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>, ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>>, Never>, VStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>>>, _EnvironmentKeyWritingModifier<Color?>>>, EmptyView> and conformance NavigationLink<A, B>(&lazy protocol witness table cache variable for type ToolbarItem<(), Button<DefaultButtonLabel>> and conformance ToolbarItem<A, B>, &_s7SwiftUI11ToolbarItemVyytAA6ButtonVyAA07DefaultE5LabelVGGMd, &_s7SwiftUI11ToolbarItemVyytAA6ButtonVyAA07DefaultE5LabelVGGMR, MEMORY[0x277CDD7A8]);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return NavigationView.init(content:)();
}

uint64_t closure #1 in closure #3 in AlertsButton.body.getter(uint64_t a1, uint64_t a2)
{

  AlertConfigurationView.init(viewModel:)(v2, v6);
  KeyPath = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB022AlertConfigurationViewVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB022AlertConfigurationViewVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21ToolbarContentBuilderV10buildBlockyQrxAA0cD0RzlFZQOy_AA0C4ItemVyytAA6ButtonVyAA07DefaultI5LabelVGGQo_Md, &_s7SwiftUI21ToolbarContentBuilderV10buildBlockyQrxAA0cD0RzlFZQOy_AA0C4ItemVyytAA6ButtonVyAA07DefaultI5LabelVGGQo_MR);
  lazy protocol witness table accessor for type ModifiedContent<AlertConfigurationView, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>();
  v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI11ToolbarItemVyytAA6ButtonVyAA07DefaultE5LabelVGGMd, &_s7SwiftUI11ToolbarItemVyytAA6ButtonVyAA07DefaultE5LabelVGGMR);
  v4 = lazy protocol witness table accessor for type NavigationLink<_ConditionalContent<HStack<_ConditionalContent<_ConditionalContent<TupleView<(Text, Spacer, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>>, ModifiedContent<AlignedLeadingAccessoryContentView<_ConditionalContent<_ConditionalContent<ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>, ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>>, Never>, VStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>>>, _EnvironmentKeyWritingModifier<Color?>>>, EmptyView> and conformance NavigationLink<A, B>(&lazy protocol witness table cache variable for type ToolbarItem<(), Button<DefaultButtonLabel>> and conformance ToolbarItem<A, B>, &_s7SwiftUI11ToolbarItemVyytAA6ButtonVyAA07DefaultE5LabelVGGMd, &_s7SwiftUI11ToolbarItemVyytAA6ButtonVyAA07DefaultE5LabelVGGMR, MEMORY[0x277CDD7A8]);
  *&v8[0] = v3;
  *(&v8[0] + 1) = v4;
  swift_getOpaqueTypeConformance2();
  View.toolbar<A>(content:)();
  v8[2] = v6[2];
  v8[3] = v6[3];
  v8[4] = v6[4];
  v8[5] = KeyPath;
  v8[0] = v6[0];
  v8[1] = v6[1];
  return outlined destroy of _ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>(v8, &_s7SwiftUI15ModifiedContentVy07WorkoutB022AlertConfigurationViewVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB022AlertConfigurationViewVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMR);
}

uint64_t closure #1 in closure #1 in closure #3 in AlertsButton.body.getter(uint64_t a1)
{
  v2 = type metadata accessor for ToolbarItemPlacement();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11ToolbarItemVyytAA6ButtonVyAA07DefaultE5LabelVGGMd, &_s7SwiftUI11ToolbarItemVyytAA6ButtonVyAA07DefaultE5LabelVGGMR);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9[-v5];
  static ToolbarItemPlacement.topBarLeading.getter();
  v10 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA07DefaultC5LabelVGMd, &_s7SwiftUI6ButtonVyAA07DefaultC5LabelVGMR);
  lazy protocol witness table accessor for type NavigationLink<_ConditionalContent<HStack<_ConditionalContent<_ConditionalContent<TupleView<(Text, Spacer, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>>, ModifiedContent<AlignedLeadingAccessoryContentView<_ConditionalContent<_ConditionalContent<ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>, ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>>, Never>, VStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>>>, _EnvironmentKeyWritingModifier<Color?>>>, EmptyView> and conformance NavigationLink<A, B>(&lazy protocol witness table cache variable for type Button<DefaultButtonLabel> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA07DefaultC5LabelVGMd, &_s7SwiftUI6ButtonVyAA07DefaultC5LabelVGMR, MEMORY[0x277CDF028]);
  ToolbarItem<>.init(placement:content:)();
  v7 = lazy protocol witness table accessor for type NavigationLink<_ConditionalContent<HStack<_ConditionalContent<_ConditionalContent<TupleView<(Text, Spacer, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>>, ModifiedContent<AlignedLeadingAccessoryContentView<_ConditionalContent<_ConditionalContent<ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>, ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>>, Never>, VStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>>>, _EnvironmentKeyWritingModifier<Color?>>>, EmptyView> and conformance NavigationLink<A, B>(&lazy protocol witness table cache variable for type ToolbarItem<(), Button<DefaultButtonLabel>> and conformance ToolbarItem<A, B>, &_s7SwiftUI11ToolbarItemVyytAA6ButtonVyAA07DefaultE5LabelVGGMd, &_s7SwiftUI11ToolbarItemVyytAA6ButtonVyAA07DefaultE5LabelVGGMR, MEMORY[0x277CDD7A8]);
  MEMORY[0x20F3098F0](v6, v3, v7);
  return (*(v4 + 8))(v6, v3);
}

uint64_t closure #1 in closure #1 in closure #1 in closure #3 in AlertsButton.body.getter(uint64_t a1)
{
  v2 = type metadata accessor for AlertsButton(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = type metadata accessor for ButtonRole();
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static ButtonRole.confirm.getter();
  outlined init with copy of AlertsButton(a1, &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AlertsButton);
  v8 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v9 = swift_allocObject();
  _s9WorkoutUI12AlertsButtonVWObTm_0(&v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8, type metadata accessor for AlertsButton);
  return MEMORY[0x20F30AF90](v7, partial apply for closure #1 in closure #1 in closure #1 in closure #1 in closure #3 in AlertsButton.body.getter, v9);
}

uint64_t closure #1 in closure #1 in closure #1 in closure #1 in closure #3 in AlertsButton.body.getter(uint64_t a1)
{
  type metadata accessor for AlertsButton(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy07WorkoutB027AlertConfigurationViewModelCSgGMd, &_s7SwiftUI5StateVy07WorkoutB027AlertConfigurationViewModelCSgGMR);
  return State.wrappedValue.setter();
}

void closure #1 in AlertsButton.phoneAlertsButtonLabel()(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = type metadata accessor for AlertConfigurationContext();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v75 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AlertsButton(0);
  (*(v5 + 16))(v7, a1 + v8[7], v4);
  v9 = (*(v5 + 88))(v7, v4);
  v10 = *MEMORY[0x277D7E4B8];
  v84 = a2;
  if (v9 == v10)
  {
    (*(v5 + 96))(v7, v4);
    v82 = v7;
    if (one-time initialization token for WorkoutUIBundle != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v11 = WorkoutUIBundle.super.isa;
    v122._object = 0xE000000000000000;
    v12.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v12.value._object = 0xEB00000000656C62;
    v13._object = 0x800000020CB97CD0;
    v13._countAndFlagsBits = 0xD000000000000026;
    v14._countAndFlagsBits = 0;
    v14._object = 0xE000000000000000;
    v122._countAndFlagsBits = 0;
    v15 = NSLocalizedString(_:tableName:bundle:value:comment:)(v13, v12, v11, v14, v122);

    *v116 = v15;
    lazy protocol witness table accessor for type String and conformance String();
    v16 = Text.init<A>(_:)();
    v18 = v17;
    v20 = v19;
    static Color.primary.getter();
    v79 = Text.foregroundColor(_:)();
    v80 = v21;
    v83 = v22;
    v81 = v23;

    outlined consume of Text.Storage(v16, v18, v20 & 1);

    v24 = a1 + v8[8];
    *v116 = *v24;
    *&v116[8] = *(v24 + 8);
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySay11WorkoutCore10TargetZoneCGGMd, &_s7SwiftUI7BindingVySay11WorkoutCore10TargetZoneCGGMR);
    MEMORY[0x20F30B100](&v105, v25);
    v26 = v105;
    v27 = a1 + v8[9];
    *v116 = *v27;
    *&v116[8] = *(v27 + 8);
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy11WorkoutCore19HeartRateTargetZoneCGMd, &_s7SwiftUI7BindingVy11WorkoutCore19HeartRateTargetZoneCGMR);
    MEMORY[0x20F30B100](&v105, v28);
    v29 = v105;
    v30 = *(a1 + 16);
    v31 = *(a1 + 24);
    v32 = a1 + v8[10];
    *v116 = *v32;
    *&v116[8] = *(v32 + 8);
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy11WorkoutCore25PowerZonesAlertTargetZoneCGMd, &_s7SwiftUI7BindingVy11WorkoutCore25PowerZonesAlertTargetZoneCGMR);
    MEMORY[0x20F30B100](&v105, v33);
    v34 = v105;
    v35 = specialized static AlertsButton.singleAlertDescription(targetZones:heartRateTargetZone:activityType:formattingManager:powerZonesAlertTargetZone:)(v26, v29, v30, v31, v105);
    v37 = v36;

    *v116 = v35;
    *&v116[8] = v37;
    v38 = Text.init<A>(_:)();
    v40 = v39;
    LOBYTE(v37) = v41;
    static Color.secondary.getter();
    v42 = Text.foregroundColor(_:)();
    v75[0] = v43;
    v45 = v44;
    v47 = v46;

    outlined consume of Text.Storage(v38, v40, v37 & 1);

    KeyPath = swift_getKeyPath();
    v88 = v81 & 1;
    v87 = v81 & 1;
    v86 = 1;
    v85 = v45 & 1;
    v76 = v45 & 1;
    v49 = v79;
    *&v90 = v79;
    *(&v90 + 1) = v83;
    LOBYTE(v91) = v81 & 1;
    v50 = v81 & 1;
    *(&v91 + 1) = v80;
    *&v92 = 0;
    BYTE8(v92) = 1;
    v51 = v42;
    v52 = v75[0];
    *&v93 = v42;
    *(&v93 + 1) = v75[0];
    LOBYTE(v94[0]) = v45 & 1;
    *(&v94[0] + 1) = v47;
    *&v94[1] = KeyPath;
    v53 = v47;
    BYTE8(v94[1]) = 2;
    v95 = v90;
    v96 = v91;
    *(v99 + 9) = *(v94 + 9);
    v98 = v93;
    v99[0] = v94[0];
    v97 = v92;
    LOBYTE(v47) = v81 & 1;
    v81 &= 1u;
    outlined copy of Text.Storage(v79, v83, v50);

    v54 = v51;
    v78 = v51;
    v55 = v51;
    v56 = v52;
    outlined copy of Text.Storage(v55, v52, v45 & 1);

    v57 = v83;
    outlined copy of Text.Storage(v49, v83, v47);

    outlined copy of Text.Storage(v54, v56, v45 & 1);
    v75[1] = v53;

    v77 = KeyPath;

    outlined consume of Text.Storage(v54, v56, v45 & 1);

    outlined consume of Text.Storage(v49, v57, v88);

    v120 = 0;
    v117 = v97;
    v118 = v98;
    *v119 = v99[0];
    *&v119[9] = *(v99 + 9);
    *v116 = v95;
    *&v116[16] = v96;
    v119[25] = 0;
    outlined init with copy of _ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>(&v90, &v105, &_s7SwiftUI4TextV_AA6SpacerVAA15ModifiedContentVyAcA30_EnvironmentKeyWritingModifierVyAA0C9AlignmentOGGtMd, &_s7SwiftUI4TextV_AA6SpacerVAA15ModifiedContentVyAcA30_EnvironmentKeyWritingModifierVyAA0C9AlignmentOGGtMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA4TextV_AA6SpacerVAA15ModifiedContentVyAeA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGtGMd, &_s7SwiftUI9TupleViewVyAA4TextV_AA6SpacerVAA15ModifiedContentVyAeA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGtGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4TextV07WorkoutB017HeaderHyphenationVGAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGMd, &_s7SwiftUI15ModifiedContentVyACyAA4TextV07WorkoutB017HeaderHyphenationVGAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGMR);
    lazy protocol witness table accessor for type NavigationLink<_ConditionalContent<HStack<_ConditionalContent<_ConditionalContent<TupleView<(Text, Spacer, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>>, ModifiedContent<AlignedLeadingAccessoryContentView<_ConditionalContent<_ConditionalContent<ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>, ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>>, Never>, VStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>>>, _EnvironmentKeyWritingModifier<Color?>>>, EmptyView> and conformance NavigationLink<A, B>(&lazy protocol witness table cache variable for type TupleView<(Text, Spacer, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA4TextV_AA6SpacerVAA15ModifiedContentVyAeA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGtGMd, &_s7SwiftUI9TupleViewVyAA4TextV_AA6SpacerVAA15ModifiedContentVyAeA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGtGMR, MEMORY[0x277CE14C0]);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>> and conformance <> ModifiedContent<A, B>();
    _ConditionalContent<>.init(storage:)();
    v107 = v113;
    v108 = v114;
    *v109 = v115[0];
    *&v109[10] = *(v115 + 10);
    v105 = v111;
    v106 = v112;
    v121 = 0;
    v110 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA9TupleViewVyAA4TextV_AA6SpacerVAA08ModifiedD0VyAgA30_EnvironmentKeyWritingModifierVyAA0G9AlignmentOGGtGAKyAKyAG07WorkoutB017HeaderHyphenationVGAPGGMd, &_s7SwiftUI19_ConditionalContentVyAA9TupleViewVyAA4TextV_AA6SpacerVAA08ModifiedD0VyAgA30_EnvironmentKeyWritingModifierVyAA0G9AlignmentOGGtGAKyAKyAG07WorkoutB017HeaderHyphenationVGAPGGMR);
    lazy protocol witness table accessor for type _ConditionalContent<TupleView<(Text, Spacer, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>> and conformance <> _ConditionalContent<A, B>();
    _ConditionalContent<>.init(storage:)();
    outlined destroy of _ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>(&v90, &_s7SwiftUI4TextV_AA6SpacerVAA15ModifiedContentVyAcA30_EnvironmentKeyWritingModifierVyAA0C9AlignmentOGGtMd, &_s7SwiftUI4TextV_AA6SpacerVAA15ModifiedContentVyAcA30_EnvironmentKeyWritingModifierVyAA0C9AlignmentOGGtMR);
    outlined consume of Text.Storage(v78, v56, v76);

    outlined consume of Text.Storage(v49, v83, v81);

    v102 = v117;
    v103 = v118;
    v104[0] = *v119;
    *(v104 + 11) = *&v119[11];
    v100 = *v116;
    v101 = *&v116[16];
    v58 = type metadata accessor for ConfigurationType();
    (*(*(v58 - 8) + 8))(v82, v58);
LABEL_9:
    v72 = v103;
    v73 = v84;
    v84[2] = v102;
    v73[3] = v72;
    v73[4] = v104[0];
    *(v73 + 75) = *(v104 + 11);
    v74 = v101;
    *v73 = v100;
    v73[1] = v74;
    return;
  }

  if (v9 == *MEMORY[0x277D7E4C0])
  {
    if (one-time initialization token for WorkoutUIBundle != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v59 = WorkoutUIBundle.super.isa;
    v123._object = 0xE000000000000000;
    v60.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v60.value._object = 0xEB00000000656C62;
    v61._countAndFlagsBits = 0xD000000000000029;
    v61._object = 0x800000020CB94110;
    v62._countAndFlagsBits = 0;
    v62._object = 0xE000000000000000;
    v123._countAndFlagsBits = 0;
    v63 = NSLocalizedString(_:tableName:bundle:value:comment:)(v61, v60, v59, v62, v123);

    *v116 = v63;
    lazy protocol witness table accessor for type String and conformance String();
    v64 = Text.init<A>(_:)();
    v66 = v65;
    v68 = v67;
    v70 = v69;
    v71 = swift_getKeyPath();
    v121 = v68 & 1;
    v120 = 1;
    *v116 = v64;
    *&v116[8] = v66;
    v116[16] = v68 & 1;
    *&v116[24] = v70;
    *&v117 = v71;
    BYTE8(v117) = 0;
    v119[25] = 1;
    outlined copy of Text.Storage(v64, v66, v68 & 1);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA4TextV_AA6SpacerVAA15ModifiedContentVyAeA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGtGMd, &_s7SwiftUI9TupleViewVyAA4TextV_AA6SpacerVAA15ModifiedContentVyAeA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGtGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4TextV07WorkoutB017HeaderHyphenationVGAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGMd, &_s7SwiftUI15ModifiedContentVyACyAA4TextV07WorkoutB017HeaderHyphenationVGAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGMR);
    lazy protocol witness table accessor for type NavigationLink<_ConditionalContent<HStack<_ConditionalContent<_ConditionalContent<TupleView<(Text, Spacer, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>>, ModifiedContent<AlignedLeadingAccessoryContentView<_ConditionalContent<_ConditionalContent<ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>, ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>>, Never>, VStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>>>, _EnvironmentKeyWritingModifier<Color?>>>, EmptyView> and conformance NavigationLink<A, B>(&lazy protocol witness table cache variable for type TupleView<(Text, Spacer, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA4TextV_AA6SpacerVAA15ModifiedContentVyAeA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGtGMd, &_s7SwiftUI9TupleViewVyAA4TextV_AA6SpacerVAA15ModifiedContentVyAeA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGtGMR, MEMORY[0x277CE14C0]);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>> and conformance <> ModifiedContent<A, B>();
    _ConditionalContent<>.init(storage:)();
    v107 = v113;
    v108 = v114;
    *v109 = v115[0];
    *&v109[10] = *(v115 + 10);
    v105 = v111;
    v106 = v112;
    v89[0] = 0;
    v110 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA9TupleViewVyAA4TextV_AA6SpacerVAA08ModifiedD0VyAgA30_EnvironmentKeyWritingModifierVyAA0G9AlignmentOGGtGAKyAKyAG07WorkoutB017HeaderHyphenationVGAPGGMd, &_s7SwiftUI19_ConditionalContentVyAA9TupleViewVyAA4TextV_AA6SpacerVAA08ModifiedD0VyAgA30_EnvironmentKeyWritingModifierVyAA0G9AlignmentOGGtGAKyAKyAG07WorkoutB017HeaderHyphenationVGAPGGMR);
    lazy protocol witness table accessor for type _ConditionalContent<TupleView<(Text, Spacer, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>> and conformance <> _ConditionalContent<A, B>();
    _ConditionalContent<>.init(storage:)();
    outlined consume of Text.Storage(v64, v66, v68 & 1);

    v102 = v117;
    v103 = v118;
    v104[0] = *v119;
    *(v104 + 11) = *&v119[11];
    v100 = *v116;
    v101 = *&v116[16];
    goto LABEL_9;
  }

  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t closure #1 in AlertsButton.watchAlertsButtonLabel()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyACyAA08ModifiedD0VyAA5ImageVAA24_ForegroundStyleModifierVyAA09TintShapeI0VGGAOGs5NeverO_GMd, &_s7SwiftUI19_ConditionalContentV7StorageOyACyAA08ModifiedD0VyAA5ImageVAA24_ForegroundStyleModifierVyAA09TintShapeI0VGGAOGs5NeverO_GMR);
  MEMORY[0x28223BE20](v25);
  v4 = &v23 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0VyAA5ImageVAA24_ForegroundStyleModifierVyAA09TintShapeI0VGGAO_GMd, &_s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0VyAA5ImageVAA24_ForegroundStyleModifierVyAA09TintShapeI0VGGAO_GMR);
  MEMORY[0x28223BE20](v5);
  v7 = &v23 - v6;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA5ImageVAA24_ForegroundStyleModifierVyAA09TintShapeH0VGGAMGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA5ImageVAA24_ForegroundStyleModifierVyAA09TintShapeH0VGGAMGMR);
  MEMORY[0x28223BE20](v24);
  v9 = &v23 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5ImageVAA24_ForegroundStyleModifierVyAA09TintShapeG0VGGMd, &_s7SwiftUI15ModifiedContentVyAA5ImageVAA24_ForegroundStyleModifierVyAA09TintShapeG0VGGMR);
  MEMORY[0x28223BE20](v10);
  v12 = (&v23 - v11);
  v13 = type metadata accessor for AlertConfigurationContext();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for AlertsButton(0);
  (*(v14 + 16))(v16, a1 + *(v17 + 28), v13);
  v18 = (*(v14 + 88))(v16, v13);
  if (v18 == *MEMORY[0x277D7E4B8])
  {
    (*(v14 + 96))(v16, v13);
    v19 = Image.init(_internalSystemName:)();
    TintShapeStyle.init()();
    *v12 = v19;
    outlined init with copy of _ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>(v12, v7, &_s7SwiftUI15ModifiedContentVyAA5ImageVAA24_ForegroundStyleModifierVyAA09TintShapeG0VGGMd, &_s7SwiftUI15ModifiedContentVyAA5ImageVAA24_ForegroundStyleModifierVyAA09TintShapeG0VGGMR);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>> and conformance <> ModifiedContent<A, B>();
    _ConditionalContent<>.init(storage:)();
    outlined init with copy of _ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>(v9, v4, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA5ImageVAA24_ForegroundStyleModifierVyAA09TintShapeH0VGGAMGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA5ImageVAA24_ForegroundStyleModifierVyAA09TintShapeH0VGGAMGMR);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>, ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>> and conformance <> _ConditionalContent<A, B>();
    _ConditionalContent<>.init(storage:)();
    outlined destroy of _ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>(v9, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA5ImageVAA24_ForegroundStyleModifierVyAA09TintShapeH0VGGAMGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA5ImageVAA24_ForegroundStyleModifierVyAA09TintShapeH0VGGAMGMR);
    outlined destroy of _ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>(v12, &_s7SwiftUI15ModifiedContentVyAA5ImageVAA24_ForegroundStyleModifierVyAA09TintShapeG0VGGMd, &_s7SwiftUI15ModifiedContentVyAA5ImageVAA24_ForegroundStyleModifierVyAA09TintShapeG0VGGMR);
    v20 = type metadata accessor for ConfigurationType();
    return (*(*(v20 - 8) + 8))(v16, v20);
  }

  else if (v18 == *MEMORY[0x277D7E4C0])
  {
    v22 = Image.init(systemName:)();
    TintShapeStyle.init()();
    *v12 = v22;
    outlined init with copy of _ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>(v12, v7, &_s7SwiftUI15ModifiedContentVyAA5ImageVAA24_ForegroundStyleModifierVyAA09TintShapeG0VGGMd, &_s7SwiftUI15ModifiedContentVyAA5ImageVAA24_ForegroundStyleModifierVyAA09TintShapeG0VGGMR);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>> and conformance <> ModifiedContent<A, B>();
    _ConditionalContent<>.init(storage:)();
    outlined init with copy of _ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>(v9, v4, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA5ImageVAA24_ForegroundStyleModifierVyAA09TintShapeH0VGGAMGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA5ImageVAA24_ForegroundStyleModifierVyAA09TintShapeH0VGGAMGMR);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>, ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>> and conformance <> _ConditionalContent<A, B>();
    _ConditionalContent<>.init(storage:)();
    outlined destroy of _ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>(v9, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA5ImageVAA24_ForegroundStyleModifierVyAA09TintShapeH0VGGAMGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA5ImageVAA24_ForegroundStyleModifierVyAA09TintShapeH0VGGAMGMR);
    return outlined destroy of _ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>(v12, &_s7SwiftUI15ModifiedContentVyAA5ImageVAA24_ForegroundStyleModifierVyAA09TintShapeG0VGGMd, &_s7SwiftUI15ModifiedContentVyAA5ImageVAA24_ForegroundStyleModifierVyAA09TintShapeG0VGGMR);
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

void closure #1 in closure #2 in AlertsButton.watchAlertsButtonLabel()(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = type metadata accessor for AlertConfigurationContext();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AlertsButton(0);
  (*(v5 + 16))(v7, a1 + v8[7], v4);
  v9 = (*(v5 + 88))(v7, v4);
  v10 = *MEMORY[0x277D7E4B8];
  v83 = a2;
  if (v9 == v10)
  {
    (*(v5 + 96))(v7, v4);
    v76 = v7;
    if (one-time initialization token for WorkoutUIBundle != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v11 = WorkoutUIBundle.super.isa;
    v120._object = 0xE000000000000000;
    v12.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v12.value._object = 0xEB00000000656C62;
    v13._object = 0x800000020CB97CD0;
    v13._countAndFlagsBits = 0xD000000000000026;
    v14._countAndFlagsBits = 0;
    v14._object = 0xE000000000000000;
    v120._countAndFlagsBits = 0;
    v15 = NSLocalizedString(_:tableName:bundle:value:comment:)(v13, v12, v11, v14, v120);

    *v114 = v15;
    lazy protocol witness table accessor for type String and conformance String();
    v16 = Text.init<A>(_:)();
    v80 = v17;
    v81 = v16;
    v74 = v18;
    v82 = v19;
    KeyPath = swift_getKeyPath();
    v20 = a1 + v8[8];
    *v114 = *v20;
    *&v114[8] = *(v20 + 8);
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySay11WorkoutCore10TargetZoneCGGMd, &_s7SwiftUI7BindingVySay11WorkoutCore10TargetZoneCGGMR);
    MEMORY[0x20F30B100](&v103, v21);
    v22 = v103;
    v23 = a1 + v8[9];
    *v114 = *v23;
    *&v114[8] = *(v23 + 8);
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy11WorkoutCore19HeartRateTargetZoneCGMd, &_s7SwiftUI7BindingVy11WorkoutCore19HeartRateTargetZoneCGMR);
    MEMORY[0x20F30B100](&v103, v24);
    v25 = v103;
    v27 = *(a1 + 16);
    v26 = *(a1 + 24);
    v28 = a1 + v8[10];
    *v114 = *v28;
    *&v114[8] = *(v28 + 8);
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy11WorkoutCore25PowerZonesAlertTargetZoneCGMd, &_s7SwiftUI7BindingVy11WorkoutCore25PowerZonesAlertTargetZoneCGMR);
    MEMORY[0x20F30B100](&v103, v29);
    v30 = v103;
    v31 = specialized static AlertsButton.singleAlertDescription(targetZones:heartRateTargetZone:activityType:formattingManager:powerZonesAlertTargetZone:)(v22, v25, v27, v26, v103);
    v33 = v32;

    *v114 = v31;
    *&v114[8] = v33;
    v34 = Text.init<A>(_:)();
    v36 = v35;
    LOBYTE(v33) = v37;
    static Font.footnote.getter();
    v38 = Text.font(_:)();
    v40 = v39;
    v42 = v41;

    outlined consume of Text.Storage(v34, v36, v33 & 1);

    static Color.secondary.getter();
    v78 = Text.foregroundColor(_:)();
    v44 = v43;
    LOBYTE(v22) = v45;
    v47 = v46;

    outlined consume of Text.Storage(v38, v40, v42 & 1);

    v77 = swift_getKeyPath();
    v86 = v74 & 1;
    v85 = v74 & 1;
    LOBYTE(v36) = v22 & 1;
    v84 = v22 & 1;
    v48 = v81;
    *&v88 = v81;
    *(&v88 + 1) = v80;
    LOBYTE(v89) = v74 & 1;
    v49 = v74 & 1;
    *(&v89 + 1) = v82;
    *&v90 = KeyPath;
    BYTE8(v90) = 0;
    v50 = v78;
    *&v91 = v78;
    *(&v91 + 1) = v44;
    v79 = v44;
    LOBYTE(v92[0]) = v36;
    *(&v92[0] + 1) = v47;
    *&v92[1] = v77;
    v51 = v47;
    BYTE8(v92[1]) = 0;
    v93 = v88;
    v94 = v89;
    *(v97 + 9) = *(v92 + 9);
    v96 = v91;
    v97[0] = v92[0];
    v95 = v90;
    LOBYTE(v47) = v74 & 1;
    v74 &= 1u;
    outlined copy of Text.Storage(v81, v80, v49);

    LOBYTE(v33) = v36;
    outlined copy of Text.Storage(v50, v44, v36);

    v52 = v48;
    v53 = v80;
    outlined copy of Text.Storage(v52, v80, v47);

    v54 = v79;
    outlined copy of Text.Storage(v50, v79, v33);
    v73[1] = v51;

    outlined consume of Text.Storage(v50, v54, v33);

    v55 = v81;
    outlined consume of Text.Storage(v81, v53, v86);

    v118 = 0;
    v115 = v95;
    v116 = v96;
    *v117 = v97[0];
    *&v117[9] = *(v97 + 9);
    *v114 = v93;
    *&v114[16] = v94;
    v117[25] = 0;
    outlined init with copy of _ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>(&v88, &v103, &_s7SwiftUI15ModifiedContentVyACyAA4TextV07WorkoutB017HeaderHyphenationVGAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGG_ACyAeNGtMd, &_s7SwiftUI15ModifiedContentVyACyAA4TextV07WorkoutB017HeaderHyphenationVGAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGG_ACyAeNGtMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAA4TextV07WorkoutB017HeaderHyphenationVGAA30_EnvironmentKeyWritingModifierVyAA0G9AlignmentOGG_AEyAgPGtGMd, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAA4TextV07WorkoutB017HeaderHyphenationVGAA30_EnvironmentKeyWritingModifierVyAA0G9AlignmentOGG_AEyAgPGtGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4TextV07WorkoutB017HeaderHyphenationVGAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGMd, &_s7SwiftUI15ModifiedContentVyACyAA4TextV07WorkoutB017HeaderHyphenationVGAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGMR);
    lazy protocol witness table accessor for type NavigationLink<_ConditionalContent<HStack<_ConditionalContent<_ConditionalContent<TupleView<(Text, Spacer, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>>, ModifiedContent<AlignedLeadingAccessoryContentView<_ConditionalContent<_ConditionalContent<ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>, ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>>, Never>, VStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>>>, _EnvironmentKeyWritingModifier<Color?>>>, EmptyView> and conformance NavigationLink<A, B>(&lazy protocol witness table cache variable for type TupleView<(ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAA4TextV07WorkoutB017HeaderHyphenationVGAA30_EnvironmentKeyWritingModifierVyAA0G9AlignmentOGG_AEyAgPGtGMd, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAA4TextV07WorkoutB017HeaderHyphenationVGAA30_EnvironmentKeyWritingModifierVyAA0G9AlignmentOGG_AEyAgPGtGMR, MEMORY[0x277CE14C0]);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>> and conformance <> ModifiedContent<A, B>();
    _ConditionalContent<>.init(storage:)();
    v105 = v111;
    v106 = v112;
    *v107 = v113[0];
    *&v107[10] = *(v113 + 10);
    v103 = v109;
    v104 = v110;
    v119 = 0;
    v108 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA9TupleViewVyAA08ModifiedD0VyAGyAA4TextV07WorkoutB017HeaderHyphenationVGAA30_EnvironmentKeyWritingModifierVyAA0H9AlignmentOGG_AGyAiRGtGASGMd, &_s7SwiftUI19_ConditionalContentVyAA9TupleViewVyAA08ModifiedD0VyAGyAA4TextV07WorkoutB017HeaderHyphenationVGAA30_EnvironmentKeyWritingModifierVyAA0H9AlignmentOGG_AGyAiRGtGASGMR);
    lazy protocol witness table accessor for type _ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>> and conformance <> _ConditionalContent<A, B>();
    _ConditionalContent<>.init(storage:)();
    outlined destroy of _ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>(&v88, &_s7SwiftUI15ModifiedContentVyACyAA4TextV07WorkoutB017HeaderHyphenationVGAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGG_ACyAeNGtMd, &_s7SwiftUI15ModifiedContentVyACyAA4TextV07WorkoutB017HeaderHyphenationVGAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGG_ACyAeNGtMR);
    outlined consume of Text.Storage(v78, v79, v33);

    outlined consume of Text.Storage(v55, v53, v74);

    v100 = v115;
    v101 = v116;
    v102[0] = *v117;
    *(v102 + 11) = *&v117[11];
    v98 = *v114;
    v99 = *&v114[16];
    v56 = type metadata accessor for ConfigurationType();
    (*(*(v56 - 8) + 8))(v76, v56);
LABEL_9:
    v70 = v101;
    v71 = v83;
    v83[2] = v100;
    v71[3] = v70;
    v71[4] = v102[0];
    *(v71 + 75) = *(v102 + 11);
    v72 = v99;
    *v71 = v98;
    v71[1] = v72;
    return;
  }

  if (v9 == *MEMORY[0x277D7E4C0])
  {
    if (one-time initialization token for WorkoutUIBundle != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v57 = WorkoutUIBundle.super.isa;
    v121._object = 0xE000000000000000;
    v58.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v58.value._object = 0xEB00000000656C62;
    v59._countAndFlagsBits = 0xD000000000000029;
    v59._object = 0x800000020CB94110;
    v60._countAndFlagsBits = 0;
    v60._object = 0xE000000000000000;
    v121._countAndFlagsBits = 0;
    v61 = NSLocalizedString(_:tableName:bundle:value:comment:)(v59, v58, v57, v60, v121);

    *v114 = v61;
    lazy protocol witness table accessor for type String and conformance String();
    v62 = Text.init<A>(_:)();
    v64 = v63;
    v66 = v65;
    v68 = v67;
    v69 = swift_getKeyPath();
    v119 = v66 & 1;
    v118 = 1;
    *v114 = v62;
    *&v114[8] = v64;
    v114[16] = v66 & 1;
    *&v114[24] = v68;
    *&v115 = v69;
    BYTE8(v115) = 0;
    v117[25] = 1;
    outlined copy of Text.Storage(v62, v64, v66 & 1);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAA4TextV07WorkoutB017HeaderHyphenationVGAA30_EnvironmentKeyWritingModifierVyAA0G9AlignmentOGG_AEyAgPGtGMd, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAA4TextV07WorkoutB017HeaderHyphenationVGAA30_EnvironmentKeyWritingModifierVyAA0G9AlignmentOGG_AEyAgPGtGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4TextV07WorkoutB017HeaderHyphenationVGAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGMd, &_s7SwiftUI15ModifiedContentVyACyAA4TextV07WorkoutB017HeaderHyphenationVGAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGMR);
    lazy protocol witness table accessor for type NavigationLink<_ConditionalContent<HStack<_ConditionalContent<_ConditionalContent<TupleView<(Text, Spacer, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>>, ModifiedContent<AlignedLeadingAccessoryContentView<_ConditionalContent<_ConditionalContent<ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>, ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>>, Never>, VStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>>>, _EnvironmentKeyWritingModifier<Color?>>>, EmptyView> and conformance NavigationLink<A, B>(&lazy protocol witness table cache variable for type TupleView<(ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAA4TextV07WorkoutB017HeaderHyphenationVGAA30_EnvironmentKeyWritingModifierVyAA0G9AlignmentOGG_AEyAgPGtGMd, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAA4TextV07WorkoutB017HeaderHyphenationVGAA30_EnvironmentKeyWritingModifierVyAA0G9AlignmentOGG_AEyAgPGtGMR, MEMORY[0x277CE14C0]);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>> and conformance <> ModifiedContent<A, B>();
    _ConditionalContent<>.init(storage:)();
    v105 = v111;
    v106 = v112;
    *v107 = v113[0];
    *&v107[10] = *(v113 + 10);
    v103 = v109;
    v104 = v110;
    v87[0] = 0;
    v108 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA9TupleViewVyAA08ModifiedD0VyAGyAA4TextV07WorkoutB017HeaderHyphenationVGAA30_EnvironmentKeyWritingModifierVyAA0H9AlignmentOGG_AGyAiRGtGASGMd, &_s7SwiftUI19_ConditionalContentVyAA9TupleViewVyAA08ModifiedD0VyAGyAA4TextV07WorkoutB017HeaderHyphenationVGAA30_EnvironmentKeyWritingModifierVyAA0H9AlignmentOGG_AGyAiRGtGASGMR);
    lazy protocol witness table accessor for type _ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>> and conformance <> _ConditionalContent<A, B>();
    _ConditionalContent<>.init(storage:)();
    outlined consume of Text.Storage(v62, v64, v66 & 1);

    v100 = v115;
    v101 = v116;
    v102[0] = *v117;
    *(v102 + 11) = *&v117[11];
    v98 = *v114;
    v99 = *&v114[16];
    goto LABEL_9;
  }

  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t partial apply for closure #1 in AlertsButton.body.getter()
{
  v1 = *(type metadata accessor for AlertsButton(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return closure #1 in AlertsButton.body.getter(v0 + v2, v3);
}

uint64_t partial apply for closure #3 in AlertsButton.body.getter(void *a1)
{
  v3 = *(type metadata accessor for AlertsButton(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return closure #3 in AlertsButton.body.getter(a1, v4);
}

unint64_t lazy protocol witness table accessor for type AlertConfigurationView and conformance AlertConfigurationView()
{
  result = lazy protocol witness table cache variable for type AlertConfigurationView and conformance AlertConfigurationView;
  if (!lazy protocol witness table cache variable for type AlertConfigurationView and conformance AlertConfigurationView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AlertConfigurationView and conformance AlertConfigurationView);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<HStack<_ConditionalContent<_ConditionalContent<TupleView<(Text, Spacer, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>>, ModifiedContent<AlignedLeadingAccessoryContentView<_ConditionalContent<_ConditionalContent<ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>, ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>>, Never>, VStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>>>, _EnvironmentKeyWritingModifier<Color?>>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<HStack<_ConditionalContent<_ConditionalContent<TupleView<(Text, Spacer, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>>, ModifiedContent<AlignedLeadingAccessoryContentView<_ConditionalContent<_ConditionalContent<ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>, ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>>, Never>, VStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>>>, _EnvironmentKeyWritingModifier<Color?>>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<HStack<_ConditionalContent<_ConditionalContent<TupleView<(Text, Spacer, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>>, ModifiedContent<AlignedLeadingAccessoryContentView<_ConditionalContent<_ConditionalContent<ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>, ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>>, Never>, VStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>>>, _EnvironmentKeyWritingModifier<Color?>>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA6HStackVyACyACyAA9TupleViewVyAA4TextV_AA6SpacerVAA08ModifiedD0VyAiA30_EnvironmentKeyWritingModifierVyAA0H9AlignmentOGGtGAMyAMyAI07WorkoutB017HeaderHyphenationVGARGGs5NeverOGGAMyAU023AlignedLeadingAccessorydG0VyACyACyAMyAA5ImageVAA016_ForegroundStyleN0VyAA09TintShapeY0VGGA12_GA0_GAA6VStackVyACyACyAGyAY_AStGAYGA0_GGGAOyAA5ColorVSgGGGMd, &_s7SwiftUI19_ConditionalContentVyAA6HStackVyACyACyAA9TupleViewVyAA4TextV_AA6SpacerVAA08ModifiedD0VyAiA30_EnvironmentKeyWritingModifierVyAA0H9AlignmentOGGtGAMyAMyAI07WorkoutB017HeaderHyphenationVGARGGs5NeverOGGAMyAU023AlignedLeadingAccessorydG0VyACyACyAMyAA5ImageVAA016_ForegroundStyleN0VyAA09TintShapeY0VGGA12_GA0_GAA6VStackVyACyACyAGyAY_AStGAYGA0_GGGAOyAA5ColorVSgGGGMR);
    lazy protocol witness table accessor for type NavigationLink<_ConditionalContent<HStack<_ConditionalContent<_ConditionalContent<TupleView<(Text, Spacer, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>>, ModifiedContent<AlignedLeadingAccessoryContentView<_ConditionalContent<_ConditionalContent<ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>, ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>>, Never>, VStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>>>, _EnvironmentKeyWritingModifier<Color?>>>, EmptyView> and conformance NavigationLink<A, B>(&lazy protocol witness table cache variable for type HStack<_ConditionalContent<_ConditionalContent<TupleView<(Text, Spacer, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>> and conformance HStack<A>, &_s7SwiftUI6HStackVyAA19_ConditionalContentVyAEyAA9TupleViewVyAA4TextV_AA6SpacerVAA08ModifiedE0VyAiA30_EnvironmentKeyWritingModifierVyAA0H9AlignmentOGGtGAMyAMyAI07WorkoutB017HeaderHyphenationVGARGGs5NeverOGGMd, &_s7SwiftUI6HStackVyAA19_ConditionalContentVyAEyAA9TupleViewVyAA4TextV_AA6SpacerVAA08ModifiedE0VyAiA30_EnvironmentKeyWritingModifierVyAA0H9AlignmentOGGtGAMyAMyAI07WorkoutB017HeaderHyphenationVGARGGs5NeverOGGMR, MEMORY[0x277CE1138]);
    lazy protocol witness table accessor for type ModifiedContent<AlignedLeadingAccessoryContentView<_ConditionalContent<_ConditionalContent<ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>, ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>>, Never>, VStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<HStack<_ConditionalContent<_ConditionalContent<TupleView<(Text, Spacer, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>>, ModifiedContent<AlignedLeadingAccessoryContentView<_ConditionalContent<_ConditionalContent<ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>, ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>>, Never>, VStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>>>, _EnvironmentKeyWritingModifier<Color?>>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<AlignedLeadingAccessoryContentView<_ConditionalContent<_ConditionalContent<ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>, ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>>, Never>, VStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<AlignedLeadingAccessoryContentView<_ConditionalContent<_ConditionalContent<ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>, ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>>, Never>, VStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<AlignedLeadingAccessoryContentView<_ConditionalContent<_ConditionalContent<ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>, ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>>, Never>, VStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB0023AlignedLeadingAccessoryD4ViewVyAA012_ConditionalD0VyAHyACyAA5ImageVAA24_ForegroundStyleModifierVyAA09TintShapeM0VGGAPGs5NeverOGAA6VStackVyAHyAHyAA05TupleI0VyACyACyAA4TextVAD17HeaderHyphenationVGAA022_EnvironmentKeyWritingN0VyAA0T9AlignmentOGG_ACyAZA6_GtGA7_GASGGGA3_yAA5ColorVSgGGMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB0023AlignedLeadingAccessoryD4ViewVyAA012_ConditionalD0VyAHyACyAA5ImageVAA24_ForegroundStyleModifierVyAA09TintShapeM0VGGAPGs5NeverOGAA6VStackVyAHyAHyAA05TupleI0VyACyACyAA4TextVAD17HeaderHyphenationVGAA022_EnvironmentKeyWritingN0VyAA0T9AlignmentOGG_ACyAZA6_GtGA7_GASGGGA3_yAA5ColorVSgGGMR);
    lazy protocol witness table accessor for type NavigationLink<_ConditionalContent<HStack<_ConditionalContent<_ConditionalContent<TupleView<(Text, Spacer, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>>, ModifiedContent<AlignedLeadingAccessoryContentView<_ConditionalContent<_ConditionalContent<ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>, ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>>, Never>, VStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>>>, _EnvironmentKeyWritingModifier<Color?>>>, EmptyView> and conformance NavigationLink<A, B>(&lazy protocol witness table cache variable for type AlignedLeadingAccessoryContentView<_ConditionalContent<_ConditionalContent<ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>, ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>>, Never>, VStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>>> and conformance AlignedLeadingAccessoryContentView<A, B>, &_s9WorkoutUI34AlignedLeadingAccessoryContentViewVy05SwiftB0012_ConditionalF0VyAFyAD08ModifiedF0VyAD5ImageVAD24_ForegroundStyleModifierVyAD09TintShapeM0VGGAPGs5NeverOGAD6VStackVyAFyAFyAD05TupleG0VyAHyAHyAD4TextVAA17HeaderHyphenationVGAD022_EnvironmentKeyWritingN0VyAD0T9AlignmentOGG_AHyAZA6_GtGA7_GASGGGMd, &_s9WorkoutUI34AlignedLeadingAccessoryContentViewVy05SwiftB0012_ConditionalF0VyAFyAD08ModifiedF0VyAD5ImageVAD24_ForegroundStyleModifierVyAD09TintShapeM0VGGAPGs5NeverOGAD6VStackVyAFyAFyAD05TupleG0VyAHyAHyAD4TextVAA17HeaderHyphenationVGAD022_EnvironmentKeyWritingN0VyAD0T9AlignmentOGG_AHyAZA6_GtGA7_GASGGGMR, &protocol conformance descriptor for AlignedLeadingAccessoryContentView<A, B>);
    lazy protocol witness table accessor for type NavigationLink<_ConditionalContent<HStack<_ConditionalContent<_ConditionalContent<TupleView<(Text, Spacer, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>>, ModifiedContent<AlignedLeadingAccessoryContentView<_ConditionalContent<_ConditionalContent<ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>, ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>>, Never>, VStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>>>, _EnvironmentKeyWritingModifier<Color?>>>, EmptyView> and conformance NavigationLink<A, B>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Color?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVSgGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVSgGMR, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<AlignedLeadingAccessoryContentView<_ConditionalContent<_ConditionalContent<ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>, ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>>, Never>, VStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA4TextV07WorkoutB017HeaderHyphenationVGAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGMd, &_s7SwiftUI15ModifiedContentVyACyAA4TextV07WorkoutB017HeaderHyphenationVGAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGMR);
    lazy protocol witness table accessor for type ModifiedContent<Text, HeaderHyphenation> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type NavigationLink<_ConditionalContent<HStack<_ConditionalContent<_ConditionalContent<TupleView<(Text, Spacer, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>>, ModifiedContent<AlignedLeadingAccessoryContentView<_ConditionalContent<_ConditionalContent<ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>, ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>>, Never>, VStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>>>, _EnvironmentKeyWritingModifier<Color?>>>, EmptyView> and conformance NavigationLink<A, B>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<TextAlignment> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA13TextAlignmentOGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA13TextAlignmentOGMR, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<TupleView<(Text, Spacer, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<TupleView<(Text, Spacer, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<TupleView<(Text, Spacer, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA9TupleViewVyAA4TextV_AA6SpacerVAA08ModifiedD0VyAgA30_EnvironmentKeyWritingModifierVyAA0G9AlignmentOGGtGAKyAKyAG07WorkoutB017HeaderHyphenationVGAPGGMd, &_s7SwiftUI19_ConditionalContentVyAA9TupleViewVyAA4TextV_AA6SpacerVAA08ModifiedD0VyAgA30_EnvironmentKeyWritingModifierVyAA0G9AlignmentOGGtGAKyAKyAG07WorkoutB017HeaderHyphenationVGAPGGMR);
    lazy protocol witness table accessor for type NavigationLink<_ConditionalContent<HStack<_ConditionalContent<_ConditionalContent<TupleView<(Text, Spacer, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>>, ModifiedContent<AlignedLeadingAccessoryContentView<_ConditionalContent<_ConditionalContent<ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>, ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>>, Never>, VStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>>>, _EnvironmentKeyWritingModifier<Color?>>>, EmptyView> and conformance NavigationLink<A, B>(&lazy protocol witness table cache variable for type TupleView<(Text, Spacer, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA4TextV_AA6SpacerVAA15ModifiedContentVyAeA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGtGMd, &_s7SwiftUI9TupleViewVyAA4TextV_AA6SpacerVAA15ModifiedContentVyAeA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGtGMR, MEMORY[0x277CE14C0]);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<TupleView<(Text, Spacer, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

uint64_t specialized static AlertsButton.singleAlertDescription(targetZones:heartRateTargetZone:activityType:formattingManager:powerZonesAlertTargetZone:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v92 = a3;
  v9 = type metadata accessor for PowerZonesAlertZoneType();
  v83 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v77 - v13;
  MEMORY[0x28223BE20](v15);
  v81 = &v77 - v16;
  v17 = type metadata accessor for HeartRateZoneType();
  v89 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v88 = &v77 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v77 - v20;
  v22 = type metadata accessor for TargetZone.ZoneType();
  MEMORY[0x28223BE20](v22);
  MEMORY[0x28223BE20](v23);
  v25.n128_f64[0] = MEMORY[0x28223BE20](v24);
  v79 = v11;
  v80 = &v77 - v26;
  v90 = a2;
  v91 = a4;
  v85 = a5;
  v86 = v27;
  v87 = v28;
  v84 = v9;
  v77 = v29;
  v78 = v30;
  v82 = v14;
  if (a1 >> 62)
  {
LABEL_15:
    v31 = __CocoaSet.count.getter();
    if (v31)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v31 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v31)
    {
LABEL_3:
      v32 = 0;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          MEMORY[0x20F30C990](v32, a1, v25);
          v33 = v32 + 1;
          if (__OFADD__(v32, 1))
          {
LABEL_12:
            __break(1u);
LABEL_13:
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
            v34 = swift_allocObject();
            *(v34 + 16) = xmmword_20CB5DA80;
            v35 = v80;
            TargetZone.type.getter();
            v36 = TargetZone.ZoneType.displayString(activityType:)();
            v38 = v37;
            (*(v86 + 8))(v35, v87);
            *(v34 + 32) = v36;
            *(v34 + 40) = v38;
            *(v34 + 48) = TargetZone.displayString(formattingManager:activityType:)();
            *(v34 + 56) = v39;
            v93 = v34;
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
            lazy protocol witness table accessor for type NavigationLink<_ConditionalContent<HStack<_ConditionalContent<_ConditionalContent<TupleView<(Text, Spacer, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>>, ModifiedContent<AlignedLeadingAccessoryContentView<_ConditionalContent<_ConditionalContent<ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>, ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>>, Never>, VStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>>>, _EnvironmentKeyWritingModifier<Color?>>>, EmptyView> and conformance NavigationLink<A, B>(&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR, MEMORY[0x277D83958]);
            countAndFlagsBits = BidirectionalCollection<>.joined(separator:)();

            return countAndFlagsBits;
          }
        }

        else
        {
          if (v32 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_15;
          }

          v33 = v32 + 1;
          if (__OFADD__(v32, 1))
          {
            goto LABEL_12;
          }
        }

        if (dispatch thunk of TargetZone.enabled.getter())
        {
          goto LABEL_13;
        }

        ++v32;
      }

      while (v33 != v31);
    }
  }

  HeartRateTargetZone.type.getter();
  v42 = v88;
  v41 = v89;
  (*(v89 + 104))(v88, *MEMORY[0x277D7E138], v17);
  _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_6(&lazy protocol witness table cache variable for type HeartRateZoneType and conformance HeartRateZoneType, MEMORY[0x277D7E150], MEMORY[0x277D7E158]);
  v43 = dispatch thunk of static Equatable.== infix(_:_:)();
  v44 = *(v41 + 8);
  v44(v42, v17);
  v44(v21, v17);
  if ((v43 & 1) == 0)
  {
    return MEMORY[0x20F305B10](v91, v92);
  }

  v45 = v81;
  dispatch thunk of PowerZonesAlertTargetZone.type.getter();
  v46 = *MEMORY[0x277D7E418];
  v47 = v82;
  v48 = v83;
  v49 = v84;
  (*(v83 + 104))(v82, *MEMORY[0x277D7E418], v84);
  _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_6(&lazy protocol witness table cache variable for type PowerZonesAlertZoneType and conformance PowerZonesAlertZoneType, MEMORY[0x277D7E438], MEMORY[0x277D7E448]);
  v50 = dispatch thunk of static Equatable.== infix(_:_:)();
  v51 = *(v48 + 8);
  v51(v47, v49);
  v51(v45, v49);
  if (v50)
  {
    if (one-time initialization token for WorkoutUIBundle != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v52 = WorkoutUIBundle.super.isa;
    v95._object = 0xE000000000000000;
    v53.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v53.value._object = 0xEB00000000656C62;
    v54._object = 0x800000020CB97DC0;
    v54._countAndFlagsBits = 0xD000000000000016;
    v55._countAndFlagsBits = 0;
    v55._object = 0xE000000000000000;
    v95._countAndFlagsBits = 0;
    countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v54, v53, v52, v55, v95)._countAndFlagsBits;

    return countAndFlagsBits;
  }

  v57 = v79;
  dispatch thunk of PowerZonesAlertTargetZone.type.getter();
  v58 = (*(v48 + 88))(v57, v49);
  if (v58 == *MEMORY[0x277D7E428])
  {
    (*(v48 + 96))(v57, v49);
    v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSd5value_11WorkoutCore10TargetZoneC0E4TypeO4modetMd, &_sSd5value_11WorkoutCore10TargetZoneC0E4TypeO4modetMR);
    v61 = v86;
    v60 = v87;
    v62 = v78;
    (*(v86 + 32))(v78, &v57[*(v59 + 48)], v87);
LABEL_24:
    v63 = TargetZone.ZoneType.displayString(activityType:)();
    v65 = v64;
    v66 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x277D84F90]);
    v68 = *(v66 + 2);
    v67 = *(v66 + 3);
    if (v68 >= v67 >> 1)
    {
      v66 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v67 > 1), v68 + 1, 1, v66);
    }

    (*(v61 + 8))(v62, v60);
    *(v66 + 2) = v68 + 1;
    v69 = &v66[16 * v68];
    *(v69 + 4) = v63;
    *(v69 + 5) = v65;
    goto LABEL_33;
  }

  v61 = v86;
  v60 = v87;
  if (v58 == *MEMORY[0x277D7E430])
  {
    v51(v57, v49);
    goto LABEL_32;
  }

  if (v58 == *MEMORY[0x277D7E420])
  {
    (*(v48 + 96))(v57, v49);
    v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySdG5range_11WorkoutCore10TargetZoneC0E4TypeO4modetMd, &_sSnySdG5range_11WorkoutCore10TargetZoneC0E4TypeO4modetMR);
    v62 = v77;
    (*(v61 + 32))(v77, &v57[*(v70 + 48)], v60);
    goto LABEL_24;
  }

  if (v58 == v46)
  {
LABEL_32:
    v66 = MEMORY[0x277D84F90];
LABEL_33:
    v71 = PowerZonesAlertTargetZone.displayString(formattingManager:activityType:)();
    v73 = v72;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v66 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v66 + 2) + 1, 1, v66);
    }

    v75 = *(v66 + 2);
    v74 = *(v66 + 3);
    if (v75 >= v74 >> 1)
    {
      v66 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v74 > 1), v75 + 1, 1, v66);
    }

    *(v66 + 2) = v75 + 1;
    v76 = &v66[16 * v75];
    *(v76 + 4) = v71;
    *(v76 + 5) = v73;
    v93 = v66;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type NavigationLink<_ConditionalContent<HStack<_ConditionalContent<_ConditionalContent<TupleView<(Text, Spacer, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>>, ModifiedContent<AlignedLeadingAccessoryContentView<_ConditionalContent<_ConditionalContent<ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>, ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>>, Never>, VStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>>>, _EnvironmentKeyWritingModifier<Color?>>>, EmptyView> and conformance NavigationLink<A, B>(&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR, MEMORY[0x277D83958]);
    countAndFlagsBits = BidirectionalCollection<>.joined(separator:)();

    return countAndFlagsBits;
  }

  v93 = 0;
  v94 = 0xE000000000000000;
  _StringGuts.grow(_:)(54);
  MEMORY[0x20F30BC00](0xD000000000000034, 0x800000020CB97D00);
  MEMORY[0x20F30BC00](0xD000000000000071, 0x800000020CB97D40);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_6(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t lazy protocol witness table accessor for type _ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA9TupleViewVyAA08ModifiedD0VyAGyAA4TextV07WorkoutB017HeaderHyphenationVGAA30_EnvironmentKeyWritingModifierVyAA0H9AlignmentOGG_AGyAiRGtGASGMd, &_s7SwiftUI19_ConditionalContentVyAA9TupleViewVyAA08ModifiedD0VyAGyAA4TextV07WorkoutB017HeaderHyphenationVGAA30_EnvironmentKeyWritingModifierVyAA0H9AlignmentOGG_AGyAiRGtGASGMR);
    lazy protocol witness table accessor for type NavigationLink<_ConditionalContent<HStack<_ConditionalContent<_ConditionalContent<TupleView<(Text, Spacer, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>>, ModifiedContent<AlignedLeadingAccessoryContentView<_ConditionalContent<_ConditionalContent<ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>, ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>>, Never>, VStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>>>, _EnvironmentKeyWritingModifier<Color?>>>, EmptyView> and conformance NavigationLink<A, B>(&lazy protocol witness table cache variable for type TupleView<(ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAA4TextV07WorkoutB017HeaderHyphenationVGAA30_EnvironmentKeyWritingModifierVyAA0G9AlignmentOGG_AEyAgPGtGMd, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAA4TextV07WorkoutB017HeaderHyphenationVGAA30_EnvironmentKeyWritingModifierVyAA0G9AlignmentOGG_AEyAgPGtGMR, MEMORY[0x277CE14C0]);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA5ImageVAA24_ForegroundStyleModifierVyAA09TintShapeG0VGGMd, &_s7SwiftUI15ModifiedContentVyAA5ImageVAA24_ForegroundStyleModifierVyAA09TintShapeG0VGGMR);
    lazy protocol witness table accessor for type NavigationLink<_ConditionalContent<HStack<_ConditionalContent<_ConditionalContent<TupleView<(Text, Spacer, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>>, ModifiedContent<AlignedLeadingAccessoryContentView<_ConditionalContent<_ConditionalContent<ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>, ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>>, Never>, VStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>>>, _EnvironmentKeyWritingModifier<Color?>>>, EmptyView> and conformance NavigationLink<A, B>(&lazy protocol witness table cache variable for type _ForegroundStyleModifier<TintShapeStyle> and conformance _ForegroundStyleModifier<A>, &_s7SwiftUI24_ForegroundStyleModifierVyAA09TintShapeD0VGMd, &_s7SwiftUI24_ForegroundStyleModifierVyAA09TintShapeD0VGMR, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t outlined init with copy of _ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>, ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>, ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>, ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA5ImageVAA24_ForegroundStyleModifierVyAA09TintShapeH0VGGAMGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA5ImageVAA24_ForegroundStyleModifierVyAA09TintShapeH0VGGAMGMR);
    lazy protocol witness table accessor for type ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>, ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<AlertConfigurationView, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<AlertConfigurationView, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<AlertConfigurationView, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB022AlertConfigurationViewVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB022AlertConfigurationViewVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMR);
    lazy protocol witness table accessor for type AlertConfigurationView and conformance AlertConfigurationView();
    lazy protocol witness table accessor for type NavigationLink<_ConditionalContent<HStack<_ConditionalContent<_ConditionalContent<TupleView<(Text, Spacer, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>>, ModifiedContent<AlignedLeadingAccessoryContentView<_ConditionalContent<_ConditionalContent<ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>, ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>>, Never>, VStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>>>, _EnvironmentKeyWritingModifier<Color?>>>, EmptyView> and conformance NavigationLink<A, B>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Color?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVSgGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVSgGMR, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<AlertConfigurationView, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t outlined destroy of _ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t lazy protocol witness table accessor for type NavigationLink<_ConditionalContent<HStack<_ConditionalContent<_ConditionalContent<TupleView<(Text, Spacer, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>>, ModifiedContent<AlignedLeadingAccessoryContentView<_ConditionalContent<_ConditionalContent<ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>, ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>>, Never>, VStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>>>, _EnvironmentKeyWritingModifier<Color?>>>, EmptyView> and conformance NavigationLink<A, B>(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t objectdestroy_3Tm()
{
  v1 = (type metadata accessor for AlertsButton(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v1[9];
  v4 = type metadata accessor for AlertConfigurationContext();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);

  v5 = v2 + v1[11];

  v6 = v2 + v1[12];

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in closure #1 in closure #3 in AlertsButton.body.getter()
{
  v1 = *(type metadata accessor for AlertsButton(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return closure #1 in closure #1 in closure #1 in closure #1 in closure #3 in AlertsButton.body.getter(v2);
}

uint64_t outlined init with copy of AlertsButton(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of AlertConfigurationViewModel.ViewModelContainer(uint64_t a1)
{
  v2 = type metadata accessor for AlertConfigurationViewModel.ViewModelContainer(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t _s9WorkoutUI12AlertsButtonVWObTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<<<opaque return type of View.sheet<A, B>(item:onDismiss:content:)>>.0, NavigationLink<_ConditionalContent<HStack<_ConditionalContent<_ConditionalContent<TupleView<(Text, Spacer, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>>, ModifiedContent<AlignedLeadingAccessoryContentView<_ConditionalContent<_ConditionalContent<ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>, ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>>, Never>, VStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>>>, _Envir()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<<<opaque return type of View.sheet<A, B>(item:onDismiss:content:)>>.0, NavigationLink<_ConditionalContent<HStack<_ConditionalContent<_ConditionalContent<TupleView<(Text, Spacer, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>>, ModifiedContent<AlignedLeadingAccessoryContentView<_ConditionalContent<_ConditionalContent<ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>, ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>>, Never>, VStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>>>, ;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<<<opaque return type of View.sheet<A, B>(item:onDismiss:content:)>>.0, NavigationLink<_ConditionalContent<HStack<_ConditionalContent<_ConditionalContent<TupleView<(Text, Spacer, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>>, ModifiedContent<AlignedLeadingAccessoryContentView<_ConditionalContent<_ConditionalContent<ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>, ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>>, Never>, VStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>>>, )
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE5sheet4item9onDismiss7contentQrAA7BindingVyqd__SgG_yycSgqd_0_qd__cts12IdentifiableRd__AaDRd_0_r0_lFQOyAA6ButtonVyAA14NavigationLinkVyACyAA6HStackVyACyACyAA05TupleE0VyAA4TextV_AA6SpacerVAA08ModifiedD0VyAyA30_EnvironmentKeyWritingModifierVyAA0R9AlignmentOGGtGA1_yA1_yAY07WorkoutB017HeaderHyphenationVGA6_GGs5NeverOGGA1_yA9_023AlignedLeadingAccessorydE0VyACyACyA1_yAA5ImageVAA016_ForegroundStyleX0VyAA14TintShapeStyleVGGA28_GA16_GAA6VStackVyACyACyAWyA13__A7_tGA13_GA16_GGGA3_yAA5ColorVSgGGGAA05EmptyE0VGG_A9_018AlertConfigurationE5ModelCAA0nE0VyAeAE7toolbarAIQrqd__yXE_tAA07ToolbarD0Rd__lFQOyA1_yA9_018AlertConfigurationE0VA41_G_AA07ToolbarD7BuilderV10buildBlockyQrxAAA53_RzlFZQOy_AA11ToolbarItemVyytAQyAA07DefaultM5LabelVGGQo_Qo_GQo_ASyA43_AeAE15navigationTitleyQrqd__SyRd__lFQOyA55__SSQo_GGMd, &_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE5sheet4item9onDismiss7contentQrAA7BindingVyqd__SgG_yycSgqd_0_qd__cts12IdentifiableRd__AaDRd_0_r0_lFQOyAA6ButtonVyAA14NavigationLinkVyACyAA6HStackVyACyACyAA05TupleE0VyAA4TextV_AA6SpacerVAA08ModifiedD0VyAyA30_EnvironmentKeyWritingModifierVyAA0R9AlignmentOGGtGA1_yA1_yAY07WorkoutB017HeaderHyphenationVGA6_GGs5NeverOGGA1_yA9_023AlignedLeadingAccessorydE0VyACyACyA1_yAA5ImageVAA016_ForegroundStyleX0VyAA14TintShapeStyleVGGA28_GA16_GAA6VStackVyACyACyAWyA13__A7_tGA13_GA16_GGGA3_yAA5ColorVSgGGGAA05EmptyE0VGG_A9_018AlertConfigurationE5ModelCAA0nE0VyAeAE7toolbarAIQrqd__yXE_tAA07ToolbarD0Rd__lFQOyA1_yA9_018AlertConfigurationE0VA41_G_AA07ToolbarD7BuilderV10buildBlockyQrxAAA53_RzlFZQOy_AA11ToolbarItemVyytAQyAA07DefaultM5LabelVGGQo_Qo_GQo_ASyA43_AeAE15navigationTitleyQrqd__SyRd__lFQOyA55__SSQo_GGMR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6ButtonVyAA14NavigationLinkVyAA19_ConditionalContentVyAA6HStackVyAGyAGyAA9TupleViewVyAA4TextV_AA6SpacerVAA08ModifiedG0VyAmA30_EnvironmentKeyWritingModifierVyAA0K9AlignmentOGGtGAQyAQyAM07WorkoutB017HeaderHyphenationVGAVGGs5NeverOGGAQyAY023AlignedLeadingAccessorygJ0VyAGyAGyAQyAA5ImageVAA016_ForegroundStyleQ0VyAA14TintShapeStyleVGGA16_GA4_GAA6VStackVyAGyAGyAKyA1__AWtGA1_GA4_GGGASyAA5ColorVSgGGGAA05EmptyJ0VGGMd, &_s7SwiftUI6ButtonVyAA14NavigationLinkVyAA19_ConditionalContentVyAA6HStackVyAGyAGyAA9TupleViewVyAA4TextV_AA6SpacerVAA08ModifiedG0VyAmA30_EnvironmentKeyWritingModifierVyAA0K9AlignmentOGGtGAQyAQyAM07WorkoutB017HeaderHyphenationVGAVGGs5NeverOGGAQyAY023AlignedLeadingAccessorygJ0VyAGyAGyAQyAA5ImageVAA016_ForegroundStyleQ0VyAA14TintShapeStyleVGGA16_GA4_GAA6VStackVyAGyAGyAKyA1__AWtGA1_GA4_GGGASyAA5ColorVSgGGGAA05EmptyJ0VGGMR);
    type metadata accessor for AlertConfigurationViewModel(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI14NavigationViewVyAA0D0PAAE7toolbar7contentQrqd__yXE_tAA14ToolbarContentRd__lFQOyAA08ModifiedH0Vy07WorkoutB0018AlertConfigurationD0VAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AA0gH7BuilderV10buildBlockyQrxAaHRzlFZQOy_AA0G4ItemVyytAA6ButtonVyAA07DefaultV5LabelVGGQo_Qo_GMd, &_s7SwiftUI14NavigationViewVyAA0D0PAAE7toolbar7contentQrqd__yXE_tAA14ToolbarContentRd__lFQOyAA08ModifiedH0Vy07WorkoutB0018AlertConfigurationD0VAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AA0gH7BuilderV10buildBlockyQrxAaHRzlFZQOy_AA0G4ItemVyytAA6ButtonVyAA07DefaultV5LabelVGGQo_Qo_GMR);
    lazy protocol witness table accessor for type NavigationLink<_ConditionalContent<HStack<_ConditionalContent<_ConditionalContent<TupleView<(Text, Spacer, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>>, ModifiedContent<AlignedLeadingAccessoryContentView<_ConditionalContent<_ConditionalContent<ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>, ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>>, Never>, VStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>>>, _EnvironmentKeyWritingModifier<Color?>>>, EmptyView> and conformance NavigationLink<A, B>(&lazy protocol witness table cache variable for type Button<NavigationLink<_ConditionalContent<HStack<_ConditionalContent<_ConditionalContent<TupleView<(Text, Spacer, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>>, ModifiedContent<AlignedLeadingAccessoryContentView<_ConditionalContent<_ConditionalContent<ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>, ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>>, Never>, VStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>>>, _EnvironmentKeyWritingModifier<Color?>>>, EmptyView>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA14NavigationLinkVyAA19_ConditionalContentVyAA6HStackVyAGyAGyAA9TupleViewVyAA4TextV_AA6SpacerVAA08ModifiedG0VyAmA30_EnvironmentKeyWritingModifierVyAA0K9AlignmentOGGtGAQyAQyAM07WorkoutB017HeaderHyphenationVGAVGGs5NeverOGGAQyAY023AlignedLeadingAccessorygJ0VyAGyAGyAQyAA5ImageVAA016_ForegroundStyleQ0VyAA14TintShapeStyleVGGA16_GA4_GAA6VStackVyAGyAGyAKyA1__AWtGA1_GA4_GGGASyAA5ColorVSgGGGAA05EmptyJ0VGGMd, &_s7SwiftUI6ButtonVyAA14NavigationLinkVyAA19_ConditionalContentVyAA6HStackVyAGyAGyAA9TupleViewVyAA4TextV_AA6SpacerVAA08ModifiedG0VyAmA30_EnvironmentKeyWritingModifierVyAA0K9AlignmentOGGtGAQyAQyAM07WorkoutB017HeaderHyphenationVGAVGGs5NeverOGGAQyAY023AlignedLeadingAccessorygJ0VyAGyAGyAQyAA5ImageVAA016_ForegroundStyleQ0VyAA14TintShapeStyleVGGA16_GA4_GAA6VStackVyAGyAGyAKyA1__AWtGA1_GA4_GGGASyAA5ColorVSgGGGAA05EmptyJ0VGGMR, MEMORY[0x277CDF028]);
    _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_6(&lazy protocol witness table cache variable for type AlertConfigurationViewModel and conformance AlertConfigurationViewModel, type metadata accessor for AlertConfigurationViewModel, &protocol conformance descriptor for AlertConfigurationViewModel);
    lazy protocol witness table accessor for type NavigationLink<_ConditionalContent<HStack<_ConditionalContent<_ConditionalContent<TupleView<(Text, Spacer, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>>, ModifiedContent<AlignedLeadingAccessoryContentView<_ConditionalContent<_ConditionalContent<ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>, ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>>, Never>, VStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>>>, _EnvironmentKeyWritingModifier<Color?>>>, EmptyView> and conformance NavigationLink<A, B>(&lazy protocol witness table cache variable for type NavigationView<<<opaque return type of View.toolbar<A>(content:)>>.0> and conformance NavigationView<A>, &_s7SwiftUI14NavigationViewVyAA0D0PAAE7toolbar7contentQrqd__yXE_tAA14ToolbarContentRd__lFQOyAA08ModifiedH0Vy07WorkoutB0018AlertConfigurationD0VAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AA0gH7BuilderV10buildBlockyQrxAaHRzlFZQOy_AA0G4ItemVyytAA6ButtonVyAA07DefaultV5LabelVGGQo_Qo_GMd, &_s7SwiftUI14NavigationViewVyAA0D0PAAE7toolbar7contentQrqd__yXE_tAA14ToolbarContentRd__lFQOyAA08ModifiedH0Vy07WorkoutB0018AlertConfigurationD0VAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AA0gH7BuilderV10buildBlockyQrxAaHRzlFZQOy_AA0G4ItemVyytAA6ButtonVyAA07DefaultV5LabelVGGQo_Qo_GMR, MEMORY[0x277CDD978]);
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type NavigationLink<_ConditionalContent<HStack<_ConditionalContent<_ConditionalContent<TupleView<(Text, Spacer, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>>, ModifiedContent<AlignedLeadingAccessoryContentView<_ConditionalContent<_ConditionalContent<ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>, ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>>, Never>, VStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>>>, _EnvironmentKeyWritingModifier<Color?>>>, EmptyView> and conformance NavigationLink<A, B>(&lazy protocol witness table cache variable for type NavigationLink<_ConditionalContent<HStack<_ConditionalContent<_ConditionalContent<TupleView<(Text, Spacer, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>>, ModifiedContent<AlignedLeadingAccessoryContentView<_ConditionalContent<_ConditionalContent<ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>, ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>>, Never>, VStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>>>, _EnvironmentKeyWritingModifier<Color?>>>, <<opaque return type of View.navigationTitle<A>(_, &_s7SwiftUI14NavigationLinkVyAA19_ConditionalContentVyAA6HStackVyAEyAEyAA9TupleViewVyAA4TextV_AA6SpacerVAA08ModifiedF0VyAkA30_EnvironmentKeyWritingModifierVyAA0J9AlignmentOGGtGAOyAOyAK07WorkoutB017HeaderHyphenationVGATGGs5NeverOGGAOyAW023AlignedLeadingAccessoryfI0VyAEyAEyAOyAA5ImageVAA016_ForegroundStyleP0VyAA14TintShapeStyleVGGA14_GA2_GAA6VStackVyAEyAEyAIyA__AUtGA_GA2_GGGAQyAA5ColorVSgGGGAA0I0PAAE15navigationTitleyQrqd__SyRd__lFQOyAW018AlertConfigurationI0V_SSQo_GMd, &_s7SwiftUI14NavigationLinkVyAA19_ConditionalContentVyAA6HStackVyAEyAEyAA9TupleViewVyAA4TextV_AA6SpacerVAA08ModifiedF0VyAkA30_EnvironmentKeyWritingModifierVyAA0J9AlignmentOGGtGAOyAOyAK07WorkoutB017HeaderHyphenationVGATGGs5NeverOGGAOyAW023AlignedLeadingAccessoryfI0VyAEyAEyAOyAA5ImageVAA016_ForegroundStyleP0VyAA14TintShapeStyleVGGA14_GA2_GAA6VStackVyAEyAEyAIyA__AUtGA_GA2_GGGAQyAA5ColorVSgGGGAA0I0PAAE15navigationTitleyQrqd__SyRd__lFQOyAW018AlertConfigurationI0V_SSQo_GMR, MEMORY[0x277CDD938]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<<<opaque return type of View.sheet<A, B>(item:onDismiss:content:)>>.0, NavigationLink<_ConditionalContent<HStack<_ConditionalContent<_ConditionalContent<TupleView<(Text, Spacer, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>>, ModifiedContent<AlignedLeadingAccessoryContentView<_ConditionalContent<_ConditionalContent<ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>, ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>>, Never>, VStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>>>,);
  }

  return result;
}

uint64_t type metadata accessor for MirrorSpeedometerPlatterView(uint64_t a1)
{
  result = type metadata singleton initialization cache for MirrorSpeedometerPlatterView;
  if (!type metadata singleton initialization cache for MirrorSpeedometerPlatterView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for MirrorSpeedometerPlatterView(uint64_t a1)
{
  type metadata accessor for ObservedObject<MetricsPublisher>(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for ObservedObject<WorkoutStatePublisher>(319);
    if (v2 <= 0x3F)
    {
      _sSo21FIUIFormattingManagerCMaTm_0(319, &lazy cache variable for type metadata for FIUIFormattingManager, 0x277D0A7E8);
      if (v3 <= 0x3F)
      {
        type metadata accessor for MetricPlatterType();
        if (v4 <= 0x3F)
        {
          _sSo21FIUIFormattingManagerCMaTm_0(319, &lazy cache variable for type metadata for FIUIWorkoutActivityType, 0x277D0A810);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void type metadata accessor for ObservedObject<MetricsPublisher>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ObservedObject<MetricsPublisher>)
  {
    type metadata accessor for MetricsPublisher();
    _s11WorkoutCore16MetricsPublisherCAC7Combine16ObservableObjectAAWlTm_1(&lazy protocol witness table cache variable for type MetricsPublisher and conformance MetricsPublisher, MEMORY[0x277D7E090], MEMORY[0x277D7E088]);
    v1 = type metadata accessor for ObservedObject();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ObservedObject<MetricsPublisher>);
    }
  }
}

void type metadata accessor for ObservedObject<WorkoutStatePublisher>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ObservedObject<WorkoutStatePublisher>)
  {
    type metadata accessor for WorkoutStatePublisher();
    _s11WorkoutCore16MetricsPublisherCAC7Combine16ObservableObjectAAWlTm_1(&lazy protocol witness table cache variable for type WorkoutStatePublisher and conformance WorkoutStatePublisher, MEMORY[0x277D7DA88], MEMORY[0x277D7DA78]);
    v1 = type metadata accessor for ObservedObject();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ObservedObject<WorkoutStatePublisher>);
    }
  }
}

BOOL MirrorSpeedometerPlatterView.speedUnavailable()()
{
  type metadata accessor for MirrorSpeedometerPlatterView(0);
  v0 = FIUIDistanceTypeForActivityType();
  if (MEMORY[0x20F30D340](v0) == 4)
  {
    MetricsPublisher.currentPace.getter();
    if (v1 >= 0.0)
    {
      _sSo21FIUIFormattingManagerCMaTm_0(0, &lazy cache variable for type metadata for NSObject, 0x277D82BB8);
      _sSo21FIUIFormattingManagerCMaTm_0(0, &lazy cache variable for type metadata for FIUIWorkoutActivityType, 0x277D0A810);
      v2 = static FIUIWorkoutActivityType.indoorCycle.getter();
      v3 = static NSObject.== infix(_:_:)();

      if (v3)
      {
        return 0;
      }
    }
  }

  v4 = FIUIDistanceTypeForActivityType();
  if (MEMORY[0x20F30D340](v4) != 4)
  {
    return 0;
  }

  if (WorkoutStatePublisher.gpsUnavailable.getter())
  {
    return 1;
  }

  MetricsPublisher.currentPace.getter();
  return v6 < 0.0;
}

void MirrorSpeedometerPlatterView.value.getter()
{
  if (MirrorSpeedometerPlatterView.speedUnavailable()())
  {
    if (one-time initialization token for WorkoutUIBundle != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v1 = WorkoutUIBundle.super.isa;
    v11._object = 0xE000000000000000;
    v2.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v2.value._object = 0xEB00000000656C62;
    v3._object = 0x800000020CB97E50;
    v3._countAndFlagsBits = 0xD00000000000001ALL;
    v4._countAndFlagsBits = 0;
    v4._object = 0xE000000000000000;
    v11._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v3, v2, v1, v4, v11);
    goto LABEL_7;
  }

  v5 = *(v0 + 32);
  v6 = [objc_opt_self() meterUnit];
  MetricsPublisher.currentPace.getter();
  v8 = [objc_opt_self() quantityWithUnit:v6 doubleValue:v7];

  type metadata accessor for MirrorSpeedometerPlatterView(0);
  v9 = FIUIDistanceTypeForActivityType();
  v10 = MEMORY[0x20F30D340](v9);
  v1 = [v5 localizedPaceStringWithDistance:v8 overDuration:v10 paceFormat:FIUIDistanceTypeForActivityType() distanceType:1.0];

  if (v1)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
LABEL_7:

    return;
  }

  __break(1u);
}

uint64_t closure #1 in MirrorSpeedometerPlatterView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v147 = a2;
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyACyACy07WorkoutB016EnergyMetricViewVAHGACyAF09HeartRatehI0VAF0jk9AggregatehI0VGGACyACyAmF04ZonehI0VGACyAF06TimeInmhI0VAQGG_GMd, &_s7SwiftUI19_ConditionalContentV7StorageOyACyACy07WorkoutB016EnergyMetricViewVAHGACyAF09HeartRatehI0VAF0jk9AggregatehI0VGGACyACyAmF04ZonehI0VGACyAF06TimeInmhI0VAQGG_GMR);
  MEMORY[0x28223BE20](v144);
  v143 = v129 - v3;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyACy07WorkoutB016EnergyMetricViewVAHGACyAF09HeartRatehI0VAF0jk9AggregatehI0VG_GMd, &_s7SwiftUI19_ConditionalContentV7StorageOyACy07WorkoutB016EnergyMetricViewVAHGACyAF09HeartRatehI0VAF0jk9AggregatehI0VG_GMR);
  MEMORY[0x28223BE20](v141);
  v139 = v129 - v4;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOy07WorkoutB019HeartRateMetricViewVAF0gh9AggregateiJ0V_GMd, &_s7SwiftUI19_ConditionalContentV7StorageOy07WorkoutB019HeartRateMetricViewVAF0gh9AggregateiJ0V_GMR);
  MEMORY[0x28223BE20](v135);
  v134 = v129 - v5;
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB019HeartRateMetricViewVAD0fg9AggregatehI0VGMd, &_s7SwiftUI19_ConditionalContentVy07WorkoutB019HeartRateMetricViewVAD0fg9AggregatehI0VGMR);
  MEMORY[0x28223BE20](v140);
  v136 = v129 - v6;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGMd, &_s7SwiftUI19_ConditionalContentVyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGMR);
  MEMORY[0x28223BE20](v142);
  v137 = v129 - v7;
  v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGMd, &_s7SwiftUI19_ConditionalContentVyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGMR);
  MEMORY[0x28223BE20](v190);
  v138 = v129 - v8;
  v133 = type metadata accessor for HeartRateMetricView(0);
  MEMORY[0x28223BE20](v133);
  v149 = v129 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v191 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyACyACyACyACyACy07WorkoutB016EnergyMetricViewVAHGACyAF09HeartRatehI0VAF0jk9AggregatehI0VGGACyACyAmF04ZonehI0VGACyAF06TimeInmhI0VAQGGGACyACyACyAtF04PacehI0VGACyA2YGGACyA_ACyAF08DistancehI0VAF04LapshI0VGGGGACyACyACyACyACyACyAF07CadencehI0VAA05EmptyI0VGA10_GA10_GACyAF015ElevationChangehI0VAF07CurrentuhI0VGGACyACyAF05PowerhI0VA23_GACyA23_AF014FlightsClimbedhI0VGGGACyACyACyAF015SegmentDurationhI0VAF0q6DetailhI0VGACyAyHGGACyACyAHA23_GACyA23_AA08ModifiedD0VyA39_yAF0fnI0VAF0H6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGACyACyACyACyA33_AYGACyAF012StrideLengthhI0VA58_GGACyACyAF019VerticalOscillationhI0VA62_GACyAF013GroundContactnhI0VA65_GGGACyACyA17_AF016DownhillRunCounthI0VGACyA12_AA6HStackVyAA05TupleI0VyA39_yAA4TextVAF0H9ValueFontVG_A39_yA39_yA77_AF0H19DescriptionCoreFontVGAF26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGG_GMd, &_s7SwiftUI19_ConditionalContentV7StorageOyACyACyACyACyACy07WorkoutB016EnergyMetricViewVAHGACyAF09HeartRatehI0VAF0jk9AggregatehI0VGGACyACyAmF04ZonehI0VGACyAF06TimeInmhI0VAQGGGACyACyACyAtF04PacehI0VGACyA2YGGACyA_ACyAF08DistancehI0VAF04LapshI0VGGGGACyACyACyACyACyACyAF07CadencehI0VAA05EmptyI0VGA10_GA10_GACyAF015ElevationChangehI0VAF07CurrentuhI0VGGACyACyAF05PowerhI0VA23_GACyA23_AF014FlightsClimbedhI0VGGGACyACyACyAF015SegmentDurationhI0VAF0q6DetailhI0VGACyAyHGGACyACyAHA23_GACyA23_AA08ModifiedD0VyA39_yAF0fnI0VAF0H6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGACyACyACyACyA33_AYGACyAF012StrideLengthhI0VA58_GGACyACyAF019VerticalOscillationhI0VA62_GACyAF013GroundContactnhI0VA65_GGGACyACyA17_AF016DownhillRunCounthI0VGACyA12_AA6HStackVyAA05TupleI0VyA39_yAA4TextVAF0H9ValueFontVG_A39_yA39_yA77_AF0H19DescriptionCoreFontVGAF26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGG_GMR);
  MEMORY[0x28223BE20](v191);
  v189 = v129 - v10;
  v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyACyACyACyACy07WorkoutB016EnergyMetricViewVAHGACyAF09HeartRatehI0VAF0jk9AggregatehI0VGGACyACyAmF04ZonehI0VGACyAF06TimeInmhI0VAQGGGACyACyACyAtF04PacehI0VGACyA2YGGACyA_ACyAF08DistancehI0VAF04LapshI0VGGGGACyACyACyACyACyACyAF07CadencehI0VAA05EmptyI0VGA10_GA10_GACyAF015ElevationChangehI0VAF07CurrentuhI0VGGACyACyAF05PowerhI0VA23_GACyA23_AF014FlightsClimbedhI0VGGGACyACyACyAF015SegmentDurationhI0VAF0q6DetailhI0VGACyAyHGGACyACyAHA23_GACyA23_AA08ModifiedD0VyA39_yAF0fnI0VAF0H6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGG_GMd, &_s7SwiftUI19_ConditionalContentV7StorageOyACyACyACyACy07WorkoutB016EnergyMetricViewVAHGACyAF09HeartRatehI0VAF0jk9AggregatehI0VGGACyACyAmF04ZonehI0VGACyAF06TimeInmhI0VAQGGGACyACyACyAtF04PacehI0VGACyA2YGGACyA_ACyAF08DistancehI0VAF04LapshI0VGGGGACyACyACyACyACyACyAF07CadencehI0VAA05EmptyI0VGA10_GA10_GACyAF015ElevationChangehI0VAF07CurrentuhI0VGGACyACyAF05PowerhI0VA23_GACyA23_AF014FlightsClimbedhI0VGGGACyACyACyAF015SegmentDurationhI0VAF0q6DetailhI0VGACyAyHGGACyACyAHA23_GACyA23_AA08ModifiedD0VyA39_yAF0fnI0VAF0H6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGG_GMR);
  MEMORY[0x28223BE20](v178);
  v185 = v129 - v11;
  v192 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyACyACyACy07WorkoutB016EnergyMetricViewVAHGACyAF09HeartRatehI0VAF0jk9AggregatehI0VGGACyACyAmF04ZonehI0VGACyAF06TimeInmhI0VAQGGGACyACyACyAtF04PacehI0VGACyA2YGGACyA_ACyAF08DistancehI0VAF04LapshI0VGGG_GMd, &_s7SwiftUI19_ConditionalContentV7StorageOyACyACyACy07WorkoutB016EnergyMetricViewVAHGACyAF09HeartRatehI0VAF0jk9AggregatehI0VGGACyACyAmF04ZonehI0VGACyAF06TimeInmhI0VAQGGGACyACyACyAtF04PacehI0VGACyA2YGGACyA_ACyAF08DistancehI0VAF04LapshI0VGGG_GMR);
  MEMORY[0x28223BE20](v192);
  v182 = (v129 - v12);
  v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGMd, &_s7SwiftUI19_ConditionalContentVyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGMR);
  MEMORY[0x28223BE20](v176);
  v183 = v129 - v13;
  v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGACyACyACyACyACyACyAD07CadencegH0VAA05EmptyH0VGA8_GA8_GACyAD015ElevationChangegH0VAD07CurrenttgH0VGGACyACyAD05PowergH0VA21_GACyA21_AD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD0p6DetailgH0VGACyAwFGGACyACyAFA21_GACyA21_AA08ModifiedD0VyA37_yAD0emH0VAD0G6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGMd, &_s7SwiftUI19_ConditionalContentVyACyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGACyACyACyACyACyACyAD07CadencegH0VAA05EmptyH0VGA8_GA8_GACyAD015ElevationChangegH0VAD07CurrenttgH0VGGACyACyAD05PowergH0VA21_GACyA21_AD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD0p6DetailgH0VGACyAwFGGACyACyAFA21_GACyA21_AA08ModifiedD0VyA37_yAD0emH0VAD0G6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGMR);
  MEMORY[0x28223BE20](v177);
  v184 = v129 - v14;
  v186 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA012_ConditionalD0VyAEyAEyAEyAEyAEy07WorkoutB016EnergyMetricViewVAHGAEyAF09HeartRatehI0VAF0jk9AggregatehI0VGGAEyAEyAmF04ZonehI0VGAEyAF06TimeInmhI0VAQGGGAEyAEyAEyAtF04PacehI0VGAEyA2YGGAEyA_AEyAF08DistancehI0VAF04LapshI0VGGGGAEyAEyAEyAEyAEyAEyAF07CadencehI0VAA05EmptyI0VGA10_GA10_GAEyAF015ElevationChangehI0VAF07CurrentuhI0VGGAEyAEyAF05PowerhI0VA23_GAEyA23_AF014FlightsClimbedhI0VGGGAEyAEyAEyAF015SegmentDurationhI0VAF0q6DetailhI0VGAEyAyHGGAEyAEyAHA23_GAEyA23_ACyACyAF0fnI0VAF0H6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGAEyAEyAEyAEyA33_AYGAEyAF012StrideLengthhI0VA56_GGAEyAEyAF019VerticalOscillationhI0VA60_GAEyAF013GroundContactnhI0VA63_GGGAEyAEyA17_AF016DownhillRunCounthI0VGAEyA12_AA6HStackVyAA05TupleI0VyACyAA4TextVAF0H9ValueFontVG_ACyACyA75_AF0H19DescriptionCoreFontVGAF26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGAA30_EnvironmentKeyWritingModifierVyAF0fI5StyleOGGMd, &_s7SwiftUI15ModifiedContentVyAA012_ConditionalD0VyAEyAEyAEyAEyAEy07WorkoutB016EnergyMetricViewVAHGAEyAF09HeartRatehI0VAF0jk9AggregatehI0VGGAEyAEyAmF04ZonehI0VGAEyAF06TimeInmhI0VAQGGGAEyAEyAEyAtF04PacehI0VGAEyA2YGGAEyA_AEyAF08DistancehI0VAF04LapshI0VGGGGAEyAEyAEyAEyAEyAEyAF07CadencehI0VAA05EmptyI0VGA10_GA10_GAEyAF015ElevationChangehI0VAF07CurrentuhI0VGGAEyAEyAF05PowerhI0VA23_GAEyA23_AF014FlightsClimbedhI0VGGGAEyAEyAEyAF015SegmentDurationhI0VAF0q6DetailhI0VGAEyAyHGGAEyAEyAHA23_GAEyA23_ACyACyAF0fnI0VAF0H6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGAEyAEyAEyAEyA33_AYGAEyAF012StrideLengthhI0VA56_GGAEyAEyAF019VerticalOscillationhI0VA60_GAEyAF013GroundContactnhI0VA63_GGGAEyAEyA17_AF016DownhillRunCounthI0VGAEyA12_AA6HStackVyAA05TupleI0VyACyAA4TextVAF0H9ValueFontVG_ACyACyA75_AF0H19DescriptionCoreFontVGAF26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGAA30_EnvironmentKeyWritingModifierVyAF0fI5StyleOGGMR);
  MEMORY[0x28223BE20](v186);
  v148 = v129 - v15;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA15ModifiedContentVyAA012_ConditionalK0VyAKyAKyAKyAKyAKy07WorkoutB0012EnergyMetricC0VANGAKyAL09HeartRateoC0VAL0pq9AggregateoC0VGGAKyAKyAsL04ZoneoC0VGAKyAL06TimeInsoC0VAWGGGAKyAKyAKyAzL04PaceoC0VGAKyA3_A3_GGAKyA5_AKyAL08DistanceoC0VAL04LapsoC0VGGGGAKyAKyAKyAKyAKyAKyAL07CadenceoC0VAA05EmptyC0VGA16_GA16_GAKyAL015ElevationChangeoC0VAL016CurrentElevationoC0VGGAKyAKyAL05PoweroC0VA29_GAKyA29_AL014FlightsClimbedoC0VGGGAKyAKyAKyAL015SegmentDurationoC0VAL0w6DetailoC0VGAKyA3_ANGGAKyAKyANA29_GAKyA29_AIyAIyAL0mtC0VAL0O6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGAKyAKyAKyAKyA39_A3_GAKyAL012StrideLengthoC0VA62_GGAKyAKyAL019VerticalOscillationoC0VA66_GAKyAL013GroundContacttoC0VA69_GGGAKyAKyA23_AL016DownhillRunCountoC0VGAKyA18_AA6HStackVyAA05TupleC0VyAIyAA4TextVAL0O9ValueFontVG_AIyAIyA81_AL0O19DescriptionCoreFontVGAL26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGAA30_EnvironmentKeyWritingModifierVyAL0mC5StyleOGG_Qo_Md, &_s7SwiftUI4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA15ModifiedContentVyAA012_ConditionalK0VyAKyAKyAKyAKyAKy07WorkoutB0012EnergyMetricC0VANGAKyAL09HeartRateoC0VAL0pq9AggregateoC0VGGAKyAKyAsL04ZoneoC0VGAKyAL06TimeInsoC0VAWGGGAKyAKyAKyAzL04PaceoC0VGAKyA3_A3_GGAKyA5_AKyAL08DistanceoC0VAL04LapsoC0VGGGGAKyAKyAKyAKyAKyAKyAL07CadenceoC0VAA05EmptyC0VGA16_GA16_GAKyAL015ElevationChangeoC0VAL016CurrentElevationoC0VGGAKyAKyAL05PoweroC0VA29_GAKyA29_AL014FlightsClimbedoC0VGGGAKyAKyAKyAL015SegmentDurationoC0VAL0w6DetailoC0VGAKyA3_ANGGAKyAKyANA29_GAKyA29_AIyAIyAL0mtC0VAL0O6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGAKyAKyAKyAKyA39_A3_GAKyAL012StrideLengthoC0VA62_GGAKyAKyAL019VerticalOscillationoC0VA66_GAKyAL013GroundContacttoC0VA69_GGGAKyAKyA23_AL016DownhillRunCountoC0VGAKyA18_AA6HStackVyAA05TupleC0VyAIyAA4TextVAL0O9ValueFontVG_AIyAIyA81_AL0O19DescriptionCoreFontVGAL26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGAA30_EnvironmentKeyWritingModifierVyAL0mC5StyleOGG_Qo_MR);
  v164 = *(v146 - 8);
  MEMORY[0x28223BE20](v146);
  v163 = v129 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v162 = v129 - v18;
  MEMORY[0x28223BE20](v19);
  v145 = v129 - v20;
  MEMORY[0x28223BE20](v21);
  v161 = v129 - v22;
  MEMORY[0x28223BE20](v23);
  v159 = v129 - v24;
  MEMORY[0x28223BE20](v25);
  v179 = v129 - v26;
  MEMORY[0x28223BE20](v27);
  v181 = v129 - v28;
  MEMORY[0x28223BE20](v29);
  v180 = v129 - v30;
  v187 = type metadata accessor for AccessibilityChildBehavior();
  v193 = *(v187 - 8);
  MEMORY[0x28223BE20](v187);
  v32 = v129 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for Color.RGBColorSpace();
  v34 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v36 = v129 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6ZStackVyAA9TupleViewVyACy07WorkoutB009MirrorArcG0VAA31AccessibilityAttachmentModifierVG_ACyAH10MetricTextVAA12_FrameLayoutVGtGGAA022_EnvironmentKeyWritingM0VyAH0hG5StyleOGGAA011_ForegrounduM0VyAA5ColorVGGMd, &_s7SwiftUI15ModifiedContentVyACyAA6ZStackVyAA9TupleViewVyACy07WorkoutB009MirrorArcG0VAA31AccessibilityAttachmentModifierVG_ACyAH10MetricTextVAA12_FrameLayoutVGtGGAA022_EnvironmentKeyWritingM0VyAH0hG5StyleOGGAA011_ForegrounduM0VyAA5ColorVGGMR);
  MEMORY[0x28223BE20](v37);
  v39 = (v129 - v38);
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA15ModifiedContentVyAIyAA6ZStackVyAA05TupleC0VyAIy07WorkoutB009MirrorArcC0VAA0G18AttachmentModifierVG_AIyAN10MetricTextVAA12_FrameLayoutVGtGGAA022_EnvironmentKeyWritingR0VyAN0nC5StyleOGGAA011_ForegroundzR0VyAA5ColorVGG_Qo_Md, &_s7SwiftUI4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA15ModifiedContentVyAIyAA6ZStackVyAA05TupleC0VyAIy07WorkoutB009MirrorArcC0VAA0G18AttachmentModifierVG_AIyAN10MetricTextVAA12_FrameLayoutVGtGGAA022_EnvironmentKeyWritingR0VyAN0nC5StyleOGGAA011_ForegroundzR0VyAA5ColorVGG_Qo_MR);
  v160 = *(v158 - 8);
  MEMORY[0x28223BE20](v158);
  v156 = v129 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41);
  v157 = v129 - v42;
  *v39 = static Alignment.center.getter();
  v39[1] = v43;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_ZStackLayoutVAA05TupleD0VyAA15ModifiedContentVy07WorkoutB009MirrorArcD0VAA31AccessibilityAttachmentModifierVG_AKyAL10MetricTextVAA06_FrameG0VGtGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_ZStackLayoutVAA05TupleD0VyAA15ModifiedContentVy07WorkoutB009MirrorArcD0VAA31AccessibilityAttachmentModifierVG_AKyAL10MetricTextVAA06_FrameG0VGtGGMR);
  closure #1 in closure #1 in MirrorSpeedometerPlatterView.body.getter(a1, v39 + *(v44 + 44));
  KeyPath = swift_getKeyPath();
  v46 = v39 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ZStackVyAA9TupleViewVyACy07WorkoutB009MirrorArcG0VAA31AccessibilityAttachmentModifierVG_ACyAH10MetricTextVAA12_FrameLayoutVGtGGAA022_EnvironmentKeyWritingM0VyAH0hG5StyleOGGMd, &_s7SwiftUI15ModifiedContentVyAA6ZStackVyAA9TupleViewVyACy07WorkoutB009MirrorArcG0VAA31AccessibilityAttachmentModifierVG_ACyAH10MetricTextVAA12_FrameLayoutVGtGGAA022_EnvironmentKeyWritingM0VyAH0hG5StyleOGGMR) + 36);
  *v46 = KeyPath;
  v46[8] = 4;
  (*(v34 + 104))(v36, *MEMORY[0x277CE0EE0], v33);
  *(v39 + *(v37 + 36)) = Color.init(_:red:green:blue:opacity:)();
  v165 = v32;
  static AccessibilityChildBehavior.combine.getter();
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ZStack<TupleView<(ModifiedContent<MirrorArcView, AccessibilityAttachmentModifier>, ModifiedContent<MetricText, _FrameLayout>)>>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>();
  View.accessibilityElement(children:)();
  v47 = *(v193 + 8);
  v193 += 8;
  v188 = v47;
  v48 = v187;
  v47(v32, v187);
  outlined destroy of ModifiedContent<ModifiedContent<ZStack<TupleView<(ModifiedContent<MirrorArcView, AccessibilityAttachmentModifier>, ModifiedContent<MetricText, _FrameLayout>)>>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, _ForegroundStyleModifier<Color>>(v39, &_s7SwiftUI15ModifiedContentVyACyAA6ZStackVyAA9TupleViewVyACy07WorkoutB009MirrorArcG0VAA31AccessibilityAttachmentModifierVG_ACyAH10MetricTextVAA12_FrameLayoutVGtGGAA022_EnvironmentKeyWritingM0VyAH0hG5StyleOGGAA011_ForegrounduM0VyAA5ColorVGGMd, &_s7SwiftUI15ModifiedContentVyACyAA6ZStackVyAA9TupleViewVyACy07WorkoutB009MirrorArcG0VAA31AccessibilityAttachmentModifierVG_ACyAH10MetricTextVAA12_FrameLayoutVGtGGAA022_EnvironmentKeyWritingM0VyAH0hG5StyleOGGAA011_ForegrounduM0VyAA5ColorVGGMR);
  v49 = *(a1 + 32);
  v50 = *(a1 + *(type metadata accessor for MirrorSpeedometerPlatterView(0) + 32));
  v51 = *(a1 + 8);
  MetricsPublisher.averagePace.getter();
  v53 = v52;
  v54 = v51;
  MetricsPublisher.workoutStatePublisher.getter();
  LOBYTE(v36) = WorkoutStatePublisher.gpsUnavailable.getter();

  v55 = swift_getKeyPath();
  *&v207 = v49;
  *(&v207 + 1) = 8;
  *&v208 = v50;
  *(&v208 + 1) = v55;
  LOBYTE(v209) = 0;
  *(&v209 + 1) = v53;
  LOBYTE(v210) = v36 & 1;
  v212 = 0;
  v211 = 0;
  v205 = v209;
  v206[0] = v210;
  *&v206[1] = 0;
  v203 = v207;
  v204 = v208;
  v213 = 0;
  BYTE8(v206[1]) = 0;
  v131 = v49;
  v130 = v50;
  outlined init with copy of PaceMetricView(&v207, &v194);
  v132 = lazy protocol witness table accessor for type PaceMetricView and conformance PaceMetricView();
  _ConditionalContent<>.init(storage:)();
  v205 = v196;
  v206[0] = *v197;
  *(v206 + 9) = *&v197[9];
  v203 = v194;
  v204 = v195;
  v214 = 1;
  BYTE9(v206[1]) = 1;
  v129[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB020TimeInZoneMetricViewVAD04PaceiJ0VGMd, &_s7SwiftUI19_ConditionalContentVy07WorkoutB020TimeInZoneMetricViewVAD04PaceiJ0VGMR);
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB014PaceMetricViewVAFGMd, &_s7SwiftUI19_ConditionalContentVy07WorkoutB014PaceMetricViewVAFGMR);
  v129[2] = lazy protocol witness table accessor for type _ConditionalContent<TimeInZoneMetricView, PaceMetricView> and conformance <> _ConditionalContent<A, B>();
  v154 = lazy protocol witness table accessor for type _ConditionalContent<PaceMetricView, PaceMetricView> and conformance <> _ConditionalContent<A, B>(&lazy protocol witness table cache variable for type _ConditionalContent<PaceMetricView, PaceMetricView> and conformance <> _ConditionalContent<A, B>, &_s7SwiftUI19_ConditionalContentVy07WorkoutB014PaceMetricViewVAFGMd, &_s7SwiftUI19_ConditionalContentVy07WorkoutB014PaceMetricViewVAFGMR, lazy protocol witness table accessor for type PaceMetricView and conformance PaceMetricView);
  _ConditionalContent<>.init(storage:)();
  v196 = v201;
  *v197 = v202[0];
  *&v197[10] = *(v202 + 10);
  v194 = v199;
  v195 = v200;
  v215 = 0;
  v198 = 0;
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACy07WorkoutB020TimeInZoneMetricViewVAD04PaceiJ0VGACyA2HGGMd, &_s7SwiftUI19_ConditionalContentVyACy07WorkoutB020TimeInZoneMetricViewVAD04PaceiJ0VGACyA2HGGMR);
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACy07WorkoutB014PaceMetricViewVAFGACyAD08DistancegH0VAD04LapsgH0VGGMd, &_s7SwiftUI19_ConditionalContentVyACy07WorkoutB014PaceMetricViewVAFGACyAD08DistancegH0VAD04LapsgH0VGGMR);
  v151 = lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>> and conformance <> _ConditionalContent<A, B>();
  v150 = lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>> and conformance <> _ConditionalContent<A, B>();
  _ConditionalContent<>.init(storage:)();
  v56 = v206[0];
  v57 = v182;
  v182[2] = v205;
  v57[3] = v56;
  *(v57 + 59) = *(v206 + 11);
  v58 = v204;
  *v57 = v203;
  v57[1] = v58;
  swift_storeEnumTagMultiPayload();
  v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyACy07WorkoutB020TimeInZoneMetricViewVAD04PaceiJ0VGACyA2HGGACyAjCyAD08DistanceiJ0VAD04LapsiJ0VGGGMd, &_s7SwiftUI19_ConditionalContentVyACyACy07WorkoutB020TimeInZoneMetricViewVAD04PaceiJ0VGACyA2HGGACyAjCyAD08DistanceiJ0VAD04LapsiJ0VGGGMR);
  v174 = lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>> and conformance <> _ConditionalContent<A, B>();
  v173 = lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>> and conformance <> _ConditionalContent<A, B>();
  v59 = v183;
  _ConditionalContent<>.init(storage:)();
  outlined init with copy of _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>(v59, v185, &_s7SwiftUI19_ConditionalContentVyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGMd, &_s7SwiftUI19_ConditionalContentVyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGMR);
  swift_storeEnumTagMultiPayload();
  v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyACyACyACyACy07WorkoutB017CadenceMetricViewVAA05EmptyH0VGAFGAFGACyAD015ElevationChangegH0VAD07CurrentjgH0VGGACyACyAD05PowergH0VASGACyAsD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD014DistanceDetailgH0VGACyAD04PacegH0VAD06EnergygH0VGGACyACyA6_ASGACyAsA08ModifiedD0VyA11_yAD0e4TimeH0VAD0gS0VGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGMd, &_s7SwiftUI19_ConditionalContentVyACyACyACyACyACy07WorkoutB017CadenceMetricViewVAA05EmptyH0VGAFGAFGACyAD015ElevationChangegH0VAD07CurrentjgH0VGGACyACyAD05PowergH0VASGACyAsD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD014DistanceDetailgH0VGACyAD04PacegH0VAD06EnergygH0VGGACyACyA6_ASGACyAsA08ModifiedD0VyA11_yAD0e4TimeH0VAD0gS0VGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGMR);
  v171 = lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>> and conformance <> _ConditionalContent<A, B>();
  v170 = lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentElevationMetricView>>, _ConditionalContent<_ConditionalContent<PowerMetricView, PowerMetricView>, _ConditionalContent<PowerMetricView, FlightsClimbedMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<SegmentDurationMetricView, DistanceDetailMetricView>, _ConditionalContent<PaceMetricView, EnergyMetricView>>, _ConditionalContent<_ConditionalContent<EnergyMetricView, PowerMetricView>, _ConditionalContent<PowerMetricView, ModifiedContent<ModifiedContent<WorkoutTimeView, MetricDetail>, _ForegroundStyleModifier<Color>>>>>> and conformance <> _ConditionalContent<A, B>();
  v60 = v184;
  _ConditionalContent<>.init(storage:)();
  outlined destroy of ModifiedContent<ModifiedContent<ZStack<TupleView<(ModifiedContent<MirrorArcView, AccessibilityAttachmentModifier>, ModifiedContent<MetricText, _FrameLayout>)>>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, _ForegroundStyleModifier<Color>>(v59, &_s7SwiftUI19_ConditionalContentVyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGMd, &_s7SwiftUI19_ConditionalContentVyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGMR);
  outlined init with copy of _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>(v60, v189, &_s7SwiftUI19_ConditionalContentVyACyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGACyACyACyACyACyACyAD07CadencegH0VAA05EmptyH0VGA8_GA8_GACyAD015ElevationChangegH0VAD07CurrenttgH0VGGACyACyAD05PowergH0VA21_GACyA21_AD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD0p6DetailgH0VGACyAwFGGACyACyAFA21_GACyA21_AA08ModifiedD0VyA37_yAD0emH0VAD0G6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGMd, &_s7SwiftUI19_ConditionalContentVyACyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGACyACyACyACyACyACyAD07CadencegH0VAA05EmptyH0VGA8_GA8_GACyAD015ElevationChangegH0VAD07CurrenttgH0VGGACyACyAD05PowergH0VA21_GACyA21_AD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD0p6DetailgH0VGACyAwFGGACyACyAFA21_GACyA21_AA08ModifiedD0VyA37_yAD0emH0VAD0G6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGMR);
  swift_storeEnumTagMultiPayload();
  v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyACyACy07WorkoutB024DistanceDetailMetricViewVAD04PacehI0VGACyAD012StrideLengthhI0VAKGGACyACyAD019VerticalOscillationhI0VAOGACyAD017GroundContactTimehI0VARGGGACyACyAD015ElevationChangehI0VAD016DownhillRunCounthI0VGACyAA05EmptyI0VAA6HStackVyAA05TupleI0VyAA08ModifiedD0VyAA4TextVAD0H9ValueFontVG_A6_yA6_yA8_AD0H19DescriptionCoreFontVGAD26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGMd, &_s7SwiftUI19_ConditionalContentVyACyACyACy07WorkoutB024DistanceDetailMetricViewVAD04PacehI0VGACyAD012StrideLengthhI0VAKGGACyACyAD019VerticalOscillationhI0VAOGACyAD017GroundContactTimehI0VARGGGACyACyAD015ElevationChangehI0VAD016DownhillRunCounthI0VGACyAA05EmptyI0VAA6HStackVyAA05TupleI0VyAA08ModifiedD0VyAA4TextVAD0H9ValueFontVG_A6_yA6_yA8_AD0H19DescriptionCoreFontVGAD26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGMR);
  v168 = lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentElevationMetricView>>, _ConditionalContent<_ConditionalContent<PowerMetricView, PowerMet();
  v167 = lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<DistanceDetailMetricView, PaceMetricView>, _ConditionalContent<StrideLengthMetricView, StrideLengthMetricView>>, _ConditionalContent<_ConditionalContent<VerticalOscillationMetricView, VerticalOscillationMetricView>, _ConditionalContent<GroundContactTimeMetricView, GroundContactTimeMetricView>>>, _ConditionalContent<_ConditionalContent<ElevationChangeMetricView, DownhillRunCountMetricView>, _ConditionalContent<EmptyView, HStack<TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>>>>> and conformance <> _ConditionalContent<A, B>();
  v61 = v148;
  _ConditionalContent<>.init(storage:)();
  outlined destroy of PaceMetricView(&v207);
  outlined destroy of ModifiedContent<ModifiedContent<ZStack<TupleView<(ModifiedContent<MirrorArcView, AccessibilityAttachmentModifier>, ModifiedContent<MetricText, _FrameLayout>)>>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, _ForegroundStyleModifier<Color>>(v60, &_s7SwiftUI19_ConditionalContentVyACyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGACyACyACyACyACyACyAD07CadencegH0VAA05EmptyH0VGA8_GA8_GACyAD015ElevationChangegH0VAD07CurrenttgH0VGGACyACyAD05PowergH0VA21_GACyA21_AD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD0p6DetailgH0VGACyAwFGGACyACyAFA21_GACyA21_AA08ModifiedD0VyA37_yAD0emH0VAD0G6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGMd, &_s7SwiftUI19_ConditionalContentVyACyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGACyACyACyACyACyACyAD07CadencegH0VAA05EmptyH0VGA8_GA8_GACyAD015ElevationChangegH0VAD07CurrenttgH0VGGACyACyAD05PowergH0VA21_GACyA21_AD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD0p6DetailgH0VGACyAwFGGACyACyAFA21_GACyA21_AA08ModifiedD0VyA37_yAD0emH0VAD0G6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGMR);
  v62 = swift_getKeyPath();
  v63 = v61 + *(v186 + 36);
  *v63 = v62;
  *(v63 + 8) = 5;
  v64 = v165;
  static AccessibilityChildBehavior.combine.getter();
  v166 = lazy protocol witness table accessor for type ModifiedContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentElevationMetricView>>, _ConditionalContent<_Conditio();
  View.accessibilityElement(children:)();
  v188(v64, v48);
  outlined destroy of ModifiedContent<ModifiedContent<ZStack<TupleView<(ModifiedContent<MirrorArcView, AccessibilityAttachmentModifier>, ModifiedContent<MetricText, _FrameLayout>)>>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, _ForegroundStyleModifier<Color>>(v61, &_s7SwiftUI15ModifiedContentVyAA012_ConditionalD0VyAEyAEyAEyAEyAEy07WorkoutB016EnergyMetricViewVAHGAEyAF09HeartRatehI0VAF0jk9AggregatehI0VGGAEyAEyAmF04ZonehI0VGAEyAF06TimeInmhI0VAQGGGAEyAEyAEyAtF04PacehI0VGAEyA2YGGAEyA_AEyAF08DistancehI0VAF04LapshI0VGGGGAEyAEyAEyAEyAEyAEyAF07CadencehI0VAA05EmptyI0VGA10_GA10_GAEyAF015ElevationChangehI0VAF07CurrentuhI0VGGAEyAEyAF05PowerhI0VA23_GAEyA23_AF014FlightsClimbedhI0VGGGAEyAEyAEyAF015SegmentDurationhI0VAF0q6DetailhI0VGAEyAyHGGAEyAEyAHA23_GAEyA23_ACyACyAF0fnI0VAF0H6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGAEyAEyAEyAEyA33_AYGAEyAF012StrideLengthhI0VA56_GGAEyAEyAF019VerticalOscillationhI0VA60_GAEyAF013GroundContactnhI0VA63_GGGAEyAEyA17_AF016DownhillRunCounthI0VGAEyA12_AA6HStackVyAA05TupleI0VyACyAA4TextVAF0H9ValueFontVG_ACyACyA75_AF0H19DescriptionCoreFontVGAF26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGAA30_EnvironmentKeyWritingModifierVyAF0fI5StyleOGGMd, &_s7SwiftUI15ModifiedContentVyAA012_ConditionalD0VyAEyAEyAEyAEyAEy07WorkoutB016EnergyMetricViewVAHGAEyAF09HeartRatehI0VAF0jk9AggregatehI0VGGAEyAEyAmF04ZonehI0VGAEyAF06TimeInmhI0VAQGGGAEyAEyAEyAtF04PacehI0VGAEyA2YGGAEyA_AEyAF08DistancehI0VAF04LapshI0VGGGGAEyAEyAEyAEyAEyAEyAF07CadencehI0VAA05EmptyI0VGA10_GA10_GAEyAF015ElevationChangehI0VAF07CurrentuhI0VGGAEyAEyAF05PowerhI0VA23_GAEyA23_AF014FlightsClimbedhI0VGGGAEyAEyAEyAF015SegmentDurationhI0VAF0q6DetailhI0VGAEyAyHGGAEyAEyAHA23_GAEyA23_ACyACyAF0fnI0VAF0H6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGAEyAEyAEyAEyA33_AYGAEyAF012StrideLengthhI0VA56_GGAEyAEyAF019VerticalOscillationhI0VA60_GAEyAF013GroundContactnhI0VA63_GGGAEyAEyA17_AF016DownhillRunCounthI0VGAEyA12_AA6HStackVyAA05TupleI0VyACyAA4TextVAF0H9ValueFontVG_ACyACyA75_AF0H19DescriptionCoreFontVGAF26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGAA30_EnvironmentKeyWritingModifierVyAF0fI5StyleOGGMR);
  MetricsPublisher.heartRateMetricsPublisher.getter();
  v65 = HeartRateMetricsPublisher.currentHeartRate.getter();
  LOBYTE(v33) = v66;

  MetricsPublisher.heartRateMetricsPublisher.getter();
  v67 = v133;
  v68 = v149;
  HeartRateMetricsPublisher.currentHeartRateValueType.getter();

  MetricsPublisher.heartRateMetricsPublisher.getter();
  LOBYTE(v48) = HeartRateMetricsPublisher.isStaleHeartRate.getter();

  MetricsPublisher.workoutStatePublisher.getter();
  LOBYTE(v61) = WorkoutStatePublisher.workoutPaused.getter();

  MetricsPublisher.workoutStatePublisher.getter();
  LOBYTE(v64) = WorkoutStatePublisher.lowPowerModeAnimationSuspended.getter();

  v69 = &v68[v67[9]];
  *v69 = swift_getKeyPath();
  v69[8] = 0;
  v70 = &v68[v67[10]];
  *v70 = swift_getKeyPath();
  v70[8] = 0;
  v71 = &v68[v67[11]];
  *v71 = swift_getKeyPath();
  v71[8] = 0;
  *&v68[v67[12]] = 0x3FD6666666666666;
  v72 = &v68[v67[13]];
  *v72 = 0;
  *(v72 + 1) = 0;
  *v68 = v65;
  v68[8] = v33 & 1;
  v68[v67[6]] = v48 & 1;
  v68[v67[7]] = v61 & 1;
  v68[v67[8]] = v64 & 1;
  outlined init with copy of HeartRateMetricView(v68, v134);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for HeartRateAggregateMetricView(0);
  _s11WorkoutCore16MetricsPublisherCAC7Combine16ObservableObjectAAWlTm_1(&lazy protocol witness table cache variable for type HeartRateMetricView and conformance HeartRateMetricView, type metadata accessor for HeartRateMetricView, &protocol conformance descriptor for HeartRateMetricView);
  _s11WorkoutCore16MetricsPublisherCAC7Combine16ObservableObjectAAWlTm_1(&lazy protocol witness table cache variable for type HeartRateAggregateMetricView and conformance HeartRateAggregateMetricView, type metadata accessor for HeartRateAggregateMetricView, &protocol conformance descriptor for HeartRateAggregateMetricView);
  v73 = v136;
  _ConditionalContent<>.init(storage:)();
  outlined init with copy of _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>(v73, v139, &_s7SwiftUI19_ConditionalContentVy07WorkoutB019HeartRateMetricViewVAD0fg9AggregatehI0VGMd, &_s7SwiftUI19_ConditionalContentVy07WorkoutB019HeartRateMetricViewVAD0fg9AggregatehI0VGMR);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB016EnergyMetricViewVAFGMd, &_s7SwiftUI19_ConditionalContentVy07WorkoutB016EnergyMetricViewVAFGMR);
  lazy protocol witness table accessor for type _ConditionalContent<PaceMetricView, PaceMetricView> and conformance <> _ConditionalContent<A, B>(&lazy protocol witness table cache variable for type _ConditionalContent<EnergyMetricView, EnergyMetricView> and conformance <> _ConditionalContent<A, B>, &_s7SwiftUI19_ConditionalContentVy07WorkoutB016EnergyMetricViewVAFGMd, &_s7SwiftUI19_ConditionalContentVy07WorkoutB016EnergyMetricViewVAFGMR, lazy protocol witness table accessor for type EnergyMetricView and conformance EnergyMetricView);
  lazy protocol witness table accessor for type _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView> and conformance <> _ConditionalContent<A, B>();
  v74 = v137;
  _ConditionalContent<>.init(storage:)();
  outlined destroy of ModifiedContent<ModifiedContent<ZStack<TupleView<(ModifiedContent<MirrorArcView, AccessibilityAttachmentModifier>, ModifiedContent<MetricText, _FrameLayout>)>>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, _ForegroundStyleModifier<Color>>(v73, &_s7SwiftUI19_ConditionalContentVy07WorkoutB019HeartRateMetricViewVAD0fg9AggregatehI0VGMd, &_s7SwiftUI19_ConditionalContentVy07WorkoutB019HeartRateMetricViewVAD0fg9AggregatehI0VGMR);
  outlined init with copy of _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>(v74, v143, &_s7SwiftUI19_ConditionalContentVyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGMd, &_s7SwiftUI19_ConditionalContentVyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGMR);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACy07WorkoutB028HeartRateAggregateMetricViewVAD04ZoneiJ0VGACyAD06TimeInkiJ0VAHGGMd, &_s7SwiftUI19_ConditionalContentVyACy07WorkoutB028HeartRateAggregateMetricViewVAD04ZoneiJ0VGACyAD06TimeInkiJ0VAHGGMR);
  lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>> and conformance <> _ConditionalContent<A, B>();
  lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>> and conformance <> _ConditionalContent<A, B>();
  v75 = v138;
  _ConditionalContent<>.init(storage:)();
  outlined destroy of ModifiedContent<ModifiedContent<ZStack<TupleView<(ModifiedContent<MirrorArcView, AccessibilityAttachmentModifier>, ModifiedContent<MetricText, _FrameLayout>)>>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, _ForegroundStyleModifier<Color>>(v74, &_s7SwiftUI19_ConditionalContentVyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGMd, &_s7SwiftUI19_ConditionalContentVyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGMR);
  outlined init with copy of _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>(v75, v182, &_s7SwiftUI19_ConditionalContentVyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGMd, &_s7SwiftUI19_ConditionalContentVyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGMR);
  swift_storeEnumTagMultiPayload();
  v76 = v183;
  _ConditionalContent<>.init(storage:)();
  outlined destroy of ModifiedContent<ModifiedContent<ZStack<TupleView<(ModifiedContent<MirrorArcView, AccessibilityAttachmentModifier>, ModifiedContent<MetricText, _FrameLayout>)>>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, _ForegroundStyleModifier<Color>>(v75, &_s7SwiftUI19_ConditionalContentVyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGMd, &_s7SwiftUI19_ConditionalContentVyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGMR);
  v77 = v76;
  outlined init with copy of _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>(v76, v185, &_s7SwiftUI19_ConditionalContentVyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGMd, &_s7SwiftUI19_ConditionalContentVyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGMR);
  swift_storeEnumTagMultiPayload();
  v78 = v184;
  _ConditionalContent<>.init(storage:)();
  outlined destroy of ModifiedContent<ModifiedContent<ZStack<TupleView<(ModifiedContent<MirrorArcView, AccessibilityAttachmentModifier>, ModifiedContent<MetricText, _FrameLayout>)>>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, _ForegroundStyleModifier<Color>>(v77, &_s7SwiftUI19_ConditionalContentVyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGMd, &_s7SwiftUI19_ConditionalContentVyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGMR);
  outlined init with copy of _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>(v78, v189, &_s7SwiftUI19_ConditionalContentVyACyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGACyACyACyACyACyACyAD07CadencegH0VAA05EmptyH0VGA8_GA8_GACyAD015ElevationChangegH0VAD07CurrenttgH0VGGACyACyAD05PowergH0VA21_GACyA21_AD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD0p6DetailgH0VGACyAwFGGACyACyAFA21_GACyA21_AA08ModifiedD0VyA37_yAD0emH0VAD0G6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGMd, &_s7SwiftUI19_ConditionalContentVyACyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGACyACyACyACyACyACyAD07CadencegH0VAA05EmptyH0VGA8_GA8_GACyAD015ElevationChangegH0VAD07CurrenttgH0VGGACyACyAD05PowergH0VA21_GACyA21_AD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD0p6DetailgH0VGACyAwFGGACyACyAFA21_GACyA21_AA08ModifiedD0VyA37_yAD0emH0VAD0G6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGMR);
  swift_storeEnumTagMultiPayload();
  v79 = v148;
  _ConditionalContent<>.init(storage:)();
  outlined destroy of ModifiedContent<ModifiedContent<ZStack<TupleView<(ModifiedContent<MirrorArcView, AccessibilityAttachmentModifier>, ModifiedContent<MetricText, _FrameLayout>)>>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, _ForegroundStyleModifier<Color>>(v78, &_s7SwiftUI19_ConditionalContentVyACyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGACyACyACyACyACyACyAD07CadencegH0VAA05EmptyH0VGA8_GA8_GACyAD015ElevationChangegH0VAD07CurrenttgH0VGGACyACyAD05PowergH0VA21_GACyA21_AD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD0p6DetailgH0VGACyAwFGGACyACyAFA21_GACyA21_AA08ModifiedD0VyA37_yAD0emH0VAD0G6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGMd, &_s7SwiftUI19_ConditionalContentVyACyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGACyACyACyACyACyACyAD07CadencegH0VAA05EmptyH0VGA8_GA8_GACyAD015ElevationChangegH0VAD07CurrenttgH0VGGACyACyAD05PowergH0VA21_GACyA21_AD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD0p6DetailgH0VGACyAwFGGACyACyAFA21_GACyA21_AA08ModifiedD0VyA37_yAD0emH0VAD0G6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGMR);
  outlined destroy of HeartRateMetricView(v149);
  v80 = swift_getKeyPath();
  v81 = v79 + *(v186 + 36);
  *v81 = v80;
  *(v81 + 8) = 5;
  v82 = v165;
  static AccessibilityChildBehavior.combine.getter();
  View.accessibilityElement(children:)();
  v188(v82, v187);
  outlined destroy of ModifiedContent<ModifiedContent<ZStack<TupleView<(ModifiedContent<MirrorArcView, AccessibilityAttachmentModifier>, ModifiedContent<MetricText, _FrameLayout>)>>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, _ForegroundStyleModifier<Color>>(v79, &_s7SwiftUI15ModifiedContentVyAA012_ConditionalD0VyAEyAEyAEyAEyAEy07WorkoutB016EnergyMetricViewVAHGAEyAF09HeartRatehI0VAF0jk9AggregatehI0VGGAEyAEyAmF04ZonehI0VGAEyAF06TimeInmhI0VAQGGGAEyAEyAEyAtF04PacehI0VGAEyA2YGGAEyA_AEyAF08DistancehI0VAF04LapshI0VGGGGAEyAEyAEyAEyAEyAEyAF07CadencehI0VAA05EmptyI0VGA10_GA10_GAEyAF015ElevationChangehI0VAF07CurrentuhI0VGGAEyAEyAF05PowerhI0VA23_GAEyA23_AF014FlightsClimbedhI0VGGGAEyAEyAEyAF015SegmentDurationhI0VAF0q6DetailhI0VGAEyAyHGGAEyAEyAHA23_GAEyA23_ACyACyAF0fnI0VAF0H6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGAEyAEyAEyAEyA33_AYGAEyAF012StrideLengthhI0VA56_GGAEyAEyAF019VerticalOscillationhI0VA60_GAEyAF013GroundContactnhI0VA63_GGGAEyAEyA17_AF016DownhillRunCounthI0VGAEyA12_AA6HStackVyAA05TupleI0VyACyAA4TextVAF0H9ValueFontVG_ACyACyA75_AF0H19DescriptionCoreFontVGAF26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGAA30_EnvironmentKeyWritingModifierVyAF0fI5StyleOGGMd, &_s7SwiftUI15ModifiedContentVyAA012_ConditionalD0VyAEyAEyAEyAEyAEy07WorkoutB016EnergyMetricViewVAHGAEyAF09HeartRatehI0VAF0jk9AggregatehI0VGGAEyAEyAmF04ZonehI0VGAEyAF06TimeInmhI0VAQGGGAEyAEyAEyAtF04PacehI0VGAEyA2YGGAEyA_AEyAF08DistancehI0VAF04LapshI0VGGGGAEyAEyAEyAEyAEyAEyAF07CadencehI0VAA05EmptyI0VGA10_GA10_GAEyAF015ElevationChangehI0VAF07CurrentuhI0VGGAEyAEyAF05PowerhI0VA23_GAEyA23_AF014FlightsClimbedhI0VGGGAEyAEyAEyAF015SegmentDurationhI0VAF0q6DetailhI0VGAEyAyHGGAEyAEyAHA23_GAEyA23_ACyACyAF0fnI0VAF0H6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGAEyAEyAEyAEyA33_AYGAEyAF012StrideLengthhI0VA56_GGAEyAEyAF019VerticalOscillationhI0VA60_GAEyAF013GroundContactnhI0VA63_GGGAEyAEyA17_AF016DownhillRunCounthI0VGAEyA12_AA6HStackVyAA05TupleI0VyACyAA4TextVAF0H9ValueFontVG_ACyACyA75_AF0H19DescriptionCoreFontVGAF26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGAA30_EnvironmentKeyWritingModifierVyAF0fI5StyleOGGMR);
  v129[1] = v54;
  MetricsPublisher.fastestPace.getter();
  v84 = v83;
  MetricsPublisher.workoutStatePublisher.getter();
  LOBYTE(v82) = WorkoutStatePublisher.gpsUnavailable.getter();

  v85 = swift_getKeyPath();
  v86 = v130;
  *&v216 = v131;
  *(&v216 + 1) = 48;
  *&v217 = v130;
  *(&v217 + 1) = v85;
  LOBYTE(v218) = 0;
  *(&v218 + 1) = v84;
  LOBYTE(v219) = v82 & 1;
  v220 = 0;
  v221 = 0;
  v205 = v218;
  v206[0] = v219;
  *&v206[1] = 0;
  v203 = v216;
  v204 = v217;
  v222 = 1;
  BYTE8(v206[1]) = 1;
  v149 = v131;
  v144 = v86;
  outlined init with copy of PaceMetricView(&v216, &v194);
  _ConditionalContent<>.init(storage:)();
  v205 = v196;
  v206[0] = *v197;
  *(v206 + 9) = *&v197[9];
  v203 = v194;
  v204 = v195;
  v223 = 1;
  BYTE9(v206[1]) = 1;
  _ConditionalContent<>.init(storage:)();
  v196 = v201;
  *v197 = v202[0];
  *&v197[10] = *(v202 + 10);
  v194 = v199;
  v195 = v200;
  v224 = 0;
  v198 = 0;
  _ConditionalContent<>.init(storage:)();
  v87 = v206[0];
  v88 = v182;
  v182[2] = v205;
  v88[3] = v87;
  *(v88 + 59) = *(v206 + 11);
  v89 = v204;
  *v88 = v203;
  v88[1] = v89;
  swift_storeEnumTagMultiPayload();
  v90 = v183;
  _ConditionalContent<>.init(storage:)();
  outlined init with copy of _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>(v90, v185, &_s7SwiftUI19_ConditionalContentVyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGMd, &_s7SwiftUI19_ConditionalContentVyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGMR);
  swift_storeEnumTagMultiPayload();
  v91 = v184;
  _ConditionalContent<>.init(storage:)();
  outlined destroy of ModifiedContent<ModifiedContent<ZStack<TupleView<(ModifiedContent<MirrorArcView, AccessibilityAttachmentModifier>, ModifiedContent<MetricText, _FrameLayout>)>>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, _ForegroundStyleModifier<Color>>(v90, &_s7SwiftUI19_ConditionalContentVyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGMd, &_s7SwiftUI19_ConditionalContentVyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGMR);
  outlined init with copy of _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>(v91, v189, &_s7SwiftUI19_ConditionalContentVyACyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGACyACyACyACyACyACyAD07CadencegH0VAA05EmptyH0VGA8_GA8_GACyAD015ElevationChangegH0VAD07CurrenttgH0VGGACyACyAD05PowergH0VA21_GACyA21_AD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD0p6DetailgH0VGACyAwFGGACyACyAFA21_GACyA21_AA08ModifiedD0VyA37_yAD0emH0VAD0G6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGMd, &_s7SwiftUI19_ConditionalContentVyACyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGACyACyACyACyACyACyAD07CadencegH0VAA05EmptyH0VGA8_GA8_GACyAD015ElevationChangegH0VAD07CurrenttgH0VGGACyACyAD05PowergH0VA21_GACyA21_AD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD0p6DetailgH0VGACyAwFGGACyACyAFA21_GACyA21_AA08ModifiedD0VyA37_yAD0emH0VAD0G6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGMR);
  swift_storeEnumTagMultiPayload();
  _ConditionalContent<>.init(storage:)();
  outlined destroy of PaceMetricView(&v216);
  outlined destroy of ModifiedContent<ModifiedContent<ZStack<TupleView<(ModifiedContent<MirrorArcView, AccessibilityAttachmentModifier>, ModifiedContent<MetricText, _FrameLayout>)>>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, _ForegroundStyleModifier<Color>>(v91, &_s7SwiftUI19_ConditionalContentVyACyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGACyACyACyACyACyACyAD07CadencegH0VAA05EmptyH0VGA8_GA8_GACyAD015ElevationChangegH0VAD07CurrenttgH0VGGACyACyAD05PowergH0VA21_GACyA21_AD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD0p6DetailgH0VGACyAwFGGACyACyAFA21_GACyA21_AA08ModifiedD0VyA37_yAD0emH0VAD0G6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGMd, &_s7SwiftUI19_ConditionalContentVyACyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGACyACyACyACyACyACyAD07CadencegH0VAA05EmptyH0VGA8_GA8_GACyAD015ElevationChangegH0VAD07CurrenttgH0VGGACyACyAD05PowergH0VA21_GACyA21_AD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD0p6DetailgH0VGACyAwFGGACyACyAFA21_GACyA21_AA08ModifiedD0VyA37_yAD0emH0VAD0G6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGMR);
  v92 = swift_getKeyPath();
  v93 = v79 + *(v186 + 36);
  *v93 = v92;
  *(v93 + 8) = 5;
  v94 = v165;
  static AccessibilityChildBehavior.combine.getter();
  View.accessibilityElement(children:)();
  v188(v94, v187);
  outlined destroy of ModifiedContent<ModifiedContent<ZStack<TupleView<(ModifiedContent<MirrorArcView, AccessibilityAttachmentModifier>, ModifiedContent<MetricText, _FrameLayout>)>>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, _ForegroundStyleModifier<Color>>(v79, &_s7SwiftUI15ModifiedContentVyAA012_ConditionalD0VyAEyAEyAEyAEyAEy07WorkoutB016EnergyMetricViewVAHGAEyAF09HeartRatehI0VAF0jk9AggregatehI0VGGAEyAEyAmF04ZonehI0VGAEyAF06TimeInmhI0VAQGGGAEyAEyAEyAtF04PacehI0VGAEyA2YGGAEyA_AEyAF08DistancehI0VAF04LapshI0VGGGGAEyAEyAEyAEyAEyAEyAF07CadencehI0VAA05EmptyI0VGA10_GA10_GAEyAF015ElevationChangehI0VAF07CurrentuhI0VGGAEyAEyAF05PowerhI0VA23_GAEyA23_AF014FlightsClimbedhI0VGGGAEyAEyAEyAF015SegmentDurationhI0VAF0q6DetailhI0VGAEyAyHGGAEyAEyAHA23_GAEyA23_ACyACyAF0fnI0VAF0H6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGAEyAEyAEyAEyA33_AYGAEyAF012StrideLengthhI0VA56_GGAEyAEyAF019VerticalOscillationhI0VA60_GAEyAF013GroundContactnhI0VA63_GGGAEyAEyA17_AF016DownhillRunCounthI0VGAEyA12_AA6HStackVyAA05TupleI0VyACyAA4TextVAF0H9ValueFontVG_ACyACyA75_AF0H19DescriptionCoreFontVGAF26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGAA30_EnvironmentKeyWritingModifierVyAF0fI5StyleOGGMd, &_s7SwiftUI15ModifiedContentVyAA012_ConditionalD0VyAEyAEyAEyAEyAEy07WorkoutB016EnergyMetricViewVAHGAEyAF09HeartRatehI0VAF0jk9AggregatehI0VGGAEyAEyAmF04ZonehI0VGAEyAF06TimeInmhI0VAQGGGAEyAEyAEyAtF04PacehI0VGAEyA2YGGAEyA_AEyAF08DistancehI0VAF04LapshI0VGGGGAEyAEyAEyAEyAEyAEyAF07CadencehI0VAA05EmptyI0VGA10_GA10_GAEyAF015ElevationChangehI0VAF07CurrentuhI0VGGAEyAEyAF05PowerhI0VA23_GAEyA23_AF014FlightsClimbedhI0VGGGAEyAEyAEyAF015SegmentDurationhI0VAF0q6DetailhI0VGAEyAyHGGAEyAEyAHA23_GAEyA23_ACyACyAF0fnI0VAF0H6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGAEyAEyAEyAEyA33_AYGAEyAF012StrideLengthhI0VA56_GGAEyAEyAF019VerticalOscillationhI0VA60_GAEyAF013GroundContactnhI0VA63_GGGAEyAEyA17_AF016DownhillRunCounthI0VGAEyA12_AA6HStackVyAA05TupleI0VyACyAA4TextVAF0H9ValueFontVG_ACyACyA75_AF0H19DescriptionCoreFontVGAF26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGAA30_EnvironmentKeyWritingModifierVyAF0fI5StyleOGGMR);
  MetricsPublisher.distance.getter();
  v96 = v95;
  v97 = FIUIDistanceTypeForActivityType();
  MetricsPublisher.trackRunningMetricsPublisher.getter();
  v98 = TrackRunningMetricsPublisher.trackRunningCoordinator.getter();

  v99 = dispatch thunk of TrackRunningCoordinator.preferredDistanceUnit.getter();
  LOBYTE(v91) = v100;

  v101 = swift_getKeyPath();
  v227 = v91 & 1;
  v225 = 0;
  *&v203 = v96;
  *(&v203 + 1) = v149;
  *&v204 = v97;
  *(&v204 + 1) = v99;
  LOBYTE(v205) = v91 & 1;
  *(&v205 + 1) = *v226;
  DWORD1(v205) = *&v226[3];
  *(&v205 + 1) = v101;
  LOWORD(v206[0]) = 0;
  v102 = v149;
  outlined copy of Environment<WorkoutViewStyle>.Content(v101, 0);
  lazy protocol witness table accessor for type DistanceMetricView and conformance DistanceMetricView();
  lazy protocol witness table accessor for type LapsMetricView and conformance LapsMetricView();
  _ConditionalContent<>.init(storage:)();
  v203 = v194;
  v204 = v195;
  v205 = v196;
  LOWORD(v206[0]) = *v197;
  v228 = 1;
  BYTE9(v206[1]) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB018DistanceMetricViewVAD04LapsgH0VGMd, &_s7SwiftUI19_ConditionalContentVy07WorkoutB018DistanceMetricViewVAD04LapsgH0VGMR);
  lazy protocol witness table accessor for type _ConditionalContent<DistanceMetricView, LapsMetricView> and conformance <> _ConditionalContent<A, B>();
  _ConditionalContent<>.init(storage:)();
  v196 = v201;
  *v197 = v202[0];
  *&v197[10] = *(v202 + 10);
  v194 = v199;
  v195 = v200;
  v229 = 1;
  v198 = 1;
  _ConditionalContent<>.init(storage:)();
  v103 = v206[0];
  v104 = v182;
  v182[2] = v205;
  v104[3] = v103;
  *(v104 + 59) = *(v206 + 11);
  v105 = v204;
  *v104 = v203;
  v104[1] = v105;
  swift_storeEnumTagMultiPayload();
  v106 = v183;
  _ConditionalContent<>.init(storage:)();
  outlined init with copy of _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>(v106, v185, &_s7SwiftUI19_ConditionalContentVyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGMd, &_s7SwiftUI19_ConditionalContentVyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGMR);
  swift_storeEnumTagMultiPayload();
  v107 = v184;
  _ConditionalContent<>.init(storage:)();
  outlined destroy of ModifiedContent<ModifiedContent<ZStack<TupleView<(ModifiedContent<MirrorArcView, AccessibilityAttachmentModifier>, ModifiedContent<MetricText, _FrameLayout>)>>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, _ForegroundStyleModifier<Color>>(v106, &_s7SwiftUI19_ConditionalContentVyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGMd, &_s7SwiftUI19_ConditionalContentVyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGMR);
  outlined init with copy of _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>(v107, v189, &_s7SwiftUI19_ConditionalContentVyACyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGACyACyACyACyACyACyAD07CadencegH0VAA05EmptyH0VGA8_GA8_GACyAD015ElevationChangegH0VAD07CurrenttgH0VGGACyACyAD05PowergH0VA21_GACyA21_AD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD0p6DetailgH0VGACyAwFGGACyACyAFA21_GACyA21_AA08ModifiedD0VyA37_yAD0emH0VAD0G6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGMd, &_s7SwiftUI19_ConditionalContentVyACyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGACyACyACyACyACyACyAD07CadencegH0VAA05EmptyH0VGA8_GA8_GACyAD015ElevationChangegH0VAD07CurrenttgH0VGGACyACyAD05PowergH0VA21_GACyA21_AD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD0p6DetailgH0VGACyAwFGGACyACyAFA21_GACyA21_AA08ModifiedD0VyA37_yAD0emH0VAD0G6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGMR);
  swift_storeEnumTagMultiPayload();
  _ConditionalContent<>.init(storage:)();

  outlined consume of Environment<WorkoutViewStyle>.Content(v101, 0);
  outlined destroy of ModifiedContent<ModifiedContent<ZStack<TupleView<(ModifiedContent<MirrorArcView, AccessibilityAttachmentModifier>, ModifiedContent<MetricText, _FrameLayout>)>>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, _ForegroundStyleModifier<Color>>(v107, &_s7SwiftUI19_ConditionalContentVyACyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGACyACyACyACyACyACyAD07CadencegH0VAA05EmptyH0VGA8_GA8_GACyAD015ElevationChangegH0VAD07CurrenttgH0VGGACyACyAD05PowergH0VA21_GACyA21_AD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD0p6DetailgH0VGACyAwFGGACyACyAFA21_GACyA21_AA08ModifiedD0VyA37_yAD0emH0VAD0G6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGMd, &_s7SwiftUI19_ConditionalContentVyACyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGACyACyACyACyACyACyAD07CadencegH0VAA05EmptyH0VGA8_GA8_GACyAD015ElevationChangegH0VAD07CurrenttgH0VGGACyACyAD05PowergH0VA21_GACyA21_AD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD0p6DetailgH0VGACyAwFGGACyACyAFA21_GACyA21_AA08ModifiedD0VyA37_yAD0emH0VAD0G6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGMR);
  v108 = swift_getKeyPath();
  v109 = v79 + *(v186 + 36);
  *v109 = v108;
  *(v109 + 8) = 5;
  static AccessibilityChildBehavior.combine.getter();
  v110 = v159;
  View.accessibilityElement(children:)();
  v188(v94, v187);
  outlined destroy of ModifiedContent<ModifiedContent<ZStack<TupleView<(ModifiedContent<MirrorArcView, AccessibilityAttachmentModifier>, ModifiedContent<MetricText, _FrameLayout>)>>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, _ForegroundStyleModifier<Color>>(v79, &_s7SwiftUI15ModifiedContentVyAA012_ConditionalD0VyAEyAEyAEyAEyAEy07WorkoutB016EnergyMetricViewVAHGAEyAF09HeartRatehI0VAF0jk9AggregatehI0VGGAEyAEyAmF04ZonehI0VGAEyAF06TimeInmhI0VAQGGGAEyAEyAEyAtF04PacehI0VGAEyA2YGGAEyA_AEyAF08DistancehI0VAF04LapshI0VGGGGAEyAEyAEyAEyAEyAEyAF07CadencehI0VAA05EmptyI0VGA10_GA10_GAEyAF015ElevationChangehI0VAF07CurrentuhI0VGGAEyAEyAF05PowerhI0VA23_GAEyA23_AF014FlightsClimbedhI0VGGGAEyAEyAEyAF015SegmentDurationhI0VAF0q6DetailhI0VGAEyAyHGGAEyAEyAHA23_GAEyA23_ACyACyAF0fnI0VAF0H6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGAEyAEyAEyAEyA33_AYGAEyAF012StrideLengthhI0VA56_GGAEyAEyAF019VerticalOscillationhI0VA60_GAEyAF013GroundContactnhI0VA63_GGGAEyAEyA17_AF016DownhillRunCounthI0VGAEyA12_AA6HStackVyAA05TupleI0VyACyAA4TextVAF0H9ValueFontVG_ACyACyA75_AF0H19DescriptionCoreFontVGAF26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGAA30_EnvironmentKeyWritingModifierVyAF0fI5StyleOGGMd, &_s7SwiftUI15ModifiedContentVyAA012_ConditionalD0VyAEyAEyAEyAEyAEy07WorkoutB016EnergyMetricViewVAHGAEyAF09HeartRatehI0VAF0jk9AggregatehI0VGGAEyAEyAmF04ZonehI0VGAEyAF06TimeInmhI0VAQGGGAEyAEyAEyAtF04PacehI0VGAEyA2YGGAEyA_AEyAF08DistancehI0VAF04LapshI0VGGGGAEyAEyAEyAEyAEyAEyAF07CadencehI0VAA05EmptyI0VGA10_GA10_GAEyAF015ElevationChangehI0VAF07CurrentuhI0VGGAEyAEyAF05PowerhI0VA23_GAEyA23_AF014FlightsClimbedhI0VGGGAEyAEyAEyAF015SegmentDurationhI0VAF0q6DetailhI0VGAEyAyHGGAEyAEyAHA23_GAEyA23_ACyACyAF0fnI0VAF0H6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGAEyAEyAEyAEyA33_AYGAEyAF012StrideLengthhI0VA56_GGAEyAEyAF019VerticalOscillationhI0VA60_GAEyAF013GroundContactnhI0VA63_GGGAEyAEyA17_AF016DownhillRunCounthI0VGAEyA12_AA6HStackVyAA05TupleI0VyACyAA4TextVAF0H9ValueFontVG_ACyACyA75_AF0H19DescriptionCoreFontVGAF26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGAA30_EnvironmentKeyWritingModifierVyAF0fI5StyleOGGMR);
  v193 = *(v160 + 16);
  v111 = v156;
  v112 = v158;
  (v193)(v156, v157, v158);
  v113 = *(v164 + 16);
  v114 = v161;
  v115 = v146;
  v113(v161, v180, v146);
  v116 = v145;
  v113(v145, v181, v115);
  v113(v162, v179, v115);
  v117 = v110;
  v118 = v115;
  v113(v163, v117, v115);
  v119 = v147;
  (v193)(v147, v111, v112);
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA15ModifiedContentVyAIyAA6ZStackVyAA05TupleC0VyAIy07WorkoutB009MirrorArcC0VAA0G18AttachmentModifierVG_AIyAN10MetricTextVAA12_FrameLayoutVGtGGAA022_EnvironmentKeyWritingR0VyAN0nC5StyleOGGAA011_ForegroundzR0VyAA5ColorVGG_Qo__AcAEAdEQrAG_tFQOyAIyAA012_ConditionalK0VyA13_yA13_yA13_yA13_yA13_yAN06EnergysC0VA15_GA13_yAN09HeartRatesC0VAN018HeartRateAggregatesC0VGGA13_yA13_yA20_AN04ZonesC0VGA13_yAN010TimeInZonesC0VA24_GGGA13_yA13_yA13_yA27_AN04PacesC0VGA13_yA32_A32_GGA13_yA34_A13_yAN08DistancesC0VAN04LapssC0VGGGGA13_yA13_yA13_yA13_yA13_yA13_yAN07CadencesC0VAA05EmptyC0VGA45_GA45_GA13_yAN015ElevationChangesC0VAN016CurrentElevationsC0VGGA13_yA13_yAN05PowersC0VA58_GA13_yA58_AN014FlightsClimbedsC0VGGGA13_yA13_yA13_yAN015SegmentDurationsC0VAN014DistanceDetailsC0VGA13_yA32_A15_GGA13_yA13_yA15_A58_GA13_yA58_AIyAIyAN0n4TimeC0VAN0S6DetailVGA9_GGGGGGA13_yA13_yA13_yA13_yA68_A32_GA13_yAN012StrideLengthsC0VA86_GGA13_yA13_yAN019VerticalOscillationsC0VA90_GA13_yAN017GroundContactTimesC0VA93_GGGA13_yA13_yA52_AN016DownhillRunCountsC0VGA13_yA47_AA6HStackVyAMyAIyAA0T0VAN0S9ValueFontVG_AIyAIyA103_AN0S19DescriptionCoreFontVGAN26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGA3_G_Qo_A121_A121_A121_tMd, &_s7SwiftUI4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA15ModifiedContentVyAIyAA6ZStackVyAA05TupleC0VyAIy07WorkoutB009MirrorArcC0VAA0G18AttachmentModifierVG_AIyAN10MetricTextVAA12_FrameLayoutVGtGGAA022_EnvironmentKeyWritingR0VyAN0nC5StyleOGGAA011_ForegroundzR0VyAA5ColorVGG_Qo__AcAEAdEQrAG_tFQOyAIyAA012_ConditionalK0VyA13_yA13_yA13_yA13_yA13_yAN06EnergysC0VA15_GA13_yAN09HeartRatesC0VAN018HeartRateAggregatesC0VGGA13_yA13_yA20_AN04ZonesC0VGA13_yAN010TimeInZonesC0VA24_GGGA13_yA13_yA13_yA27_AN04PacesC0VGA13_yA32_A32_GGA13_yA34_A13_yAN08DistancesC0VAN04LapssC0VGGGGA13_yA13_yA13_yA13_yA13_yA13_yAN07CadencesC0VAA05EmptyC0VGA45_GA45_GA13_yAN015ElevationChangesC0VAN016CurrentElevationsC0VGGA13_yA13_yAN05PowersC0VA58_GA13_yA58_AN014FlightsClimbedsC0VGGGA13_yA13_yA13_yAN015SegmentDurationsC0VAN014DistanceDetailsC0VGA13_yA32_A15_GGA13_yA13_yA15_A58_GA13_yA58_AIyAIyAN0n4TimeC0VAN0S6DetailVGA9_GGGGGGA13_yA13_yA13_yA13_yA68_A32_GA13_yAN012StrideLengthsC0VA86_GGA13_yA13_yAN019VerticalOscillationsC0VA90_GA13_yAN017GroundContactTimesC0VA93_GGGA13_yA13_yA52_AN016DownhillRunCountsC0VGA13_yA47_AA6HStackVyAMyAIyAA0T0VAN0S9ValueFontVG_AIyAIyA103_AN0S19DescriptionCoreFontVGAN26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGA3_G_Qo_A121_A121_A121_tMR);
  v113((v119 + v120[12]), v114, v118);
  v113((v119 + v120[16]), v116, v118);
  v121 = v162;
  (v113)(v119 + v120[20]);
  v122 = v119 + v120[24];
  v123 = v163;
  v113(v122, v163, v118);
  v124 = *(v164 + 8);
  v124(v159, v118);
  v124(v179, v118);
  v124(v181, v118);
  v125 = v118;
  v124(v180, v118);
  v126 = *(v160 + 8);
  v127 = v158;
  v126(v157, v158);
  v124(v123, v125);
  v124(v121, v125);
  v124(v116, v125);
  v124(v161, v125);
  return (v126)(v156, v127);
}

double closure #1 in closure #1 in MirrorSpeedometerPlatterView.body.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB013MirrorArcViewVAA31AccessibilityAttachmentModifierVGMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB013MirrorArcViewVAA31AccessibilityAttachmentModifierVGMR);
  MEMORY[0x28223BE20](v4);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v27 - v8;
  v29 = a1;
  static Animation.default.getter();
  withAnimation<A>(_:_:)();

  MirrorSpeedometerPlatterView.value.getter();
  v11 = v10;
  v28 = v12;
  v13 = [*(a1 + 32) localizedSpeedUnitStringForActivityType_];
  if (v13)
  {
    v14 = v13;
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;
  }

  else
  {
    v15 = 0;
    v17 = 0;
  }

  if (one-time initialization token for heroHeight != -1)
  {
    swift_once();
  }

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  outlined init with copy of _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>(v9, v6, &_s7SwiftUI15ModifiedContentVy07WorkoutB013MirrorArcViewVAA31AccessibilityAttachmentModifierVGMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB013MirrorArcViewVAA31AccessibilityAttachmentModifierVGMR);
  outlined init with copy of _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>(v6, a2, &_s7SwiftUI15ModifiedContentVy07WorkoutB013MirrorArcViewVAA31AccessibilityAttachmentModifierVGMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB013MirrorArcViewVAA31AccessibilityAttachmentModifierVGMR);
  v18 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB013MirrorArcViewVAA31AccessibilityAttachmentModifierVG_ACyAD10MetricTextVAA12_FrameLayoutVGtMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB013MirrorArcViewVAA31AccessibilityAttachmentModifierVG_ACyAD10MetricTextVAA12_FrameLayoutVGtMR) + 48);
  v19 = v28;
  *&v33 = v11;
  *(&v33 + 1) = v28;
  *&v34 = v15;
  *(&v34 + 1) = v17;
  v35 = 0uLL;
  LOWORD(v36) = 0;
  *(&v36 + 1) = 0;
  *v37 = 0;
  *&v37[24] = v31;
  *&v37[8] = v30;
  *&v37[40] = v32;
  v20 = v33;
  v21 = v34;
  v22 = v36;
  *(v18 + 32) = 0uLL;
  *(v18 + 48) = v22;
  *v18 = v20;
  *(v18 + 16) = v21;
  v23 = *v37;
  v24 = *&v37[16];
  v25 = *&v37[32];
  *(v18 + 112) = *&v37[48];
  *(v18 + 80) = v24;
  *(v18 + 96) = v25;
  *(v18 + 64) = v23;
  outlined init with copy of _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>(&v33, v38, &_s7SwiftUI15ModifiedContentVy07WorkoutB010MetricTextVAA12_FrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB010MetricTextVAA12_FrameLayoutVGMR);
  outlined destroy of ModifiedContent<ModifiedContent<ZStack<TupleView<(ModifiedContent<MirrorArcView, AccessibilityAttachmentModifier>, ModifiedContent<MetricText, _FrameLayout>)>>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, _ForegroundStyleModifier<Color>>(v9, &_s7SwiftUI15ModifiedContentVy07WorkoutB013MirrorArcViewVAA31AccessibilityAttachmentModifierVGMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB013MirrorArcViewVAA31AccessibilityAttachmentModifierVGMR);
  v38[0] = v11;
  v38[1] = v19;
  v38[2] = v15;
  v38[3] = v17;
  v38[4] = 0;
  v38[5] = 0;
  v39 = 0;
  v40 = 0;
  v41 = 0;
  v42 = v30;
  v43 = v31;
  v44 = v32;
  outlined destroy of ModifiedContent<ModifiedContent<ZStack<TupleView<(ModifiedContent<MirrorArcView, AccessibilityAttachmentModifier>, ModifiedContent<MetricText, _FrameLayout>)>>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, _ForegroundStyleModifier<Color>>(v38, &_s7SwiftUI15ModifiedContentVy07WorkoutB010MetricTextVAA12_FrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB010MetricTextVAA12_FrameLayoutVGMR);
  outlined destroy of ModifiedContent<ModifiedContent<ZStack<TupleView<(ModifiedContent<MirrorArcView, AccessibilityAttachmentModifier>, ModifiedContent<MetricText, _FrameLayout>)>>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, _ForegroundStyleModifier<Color>>(v6, &_s7SwiftUI15ModifiedContentVy07WorkoutB013MirrorArcViewVAA31AccessibilityAttachmentModifierVGMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB013MirrorArcViewVAA31AccessibilityAttachmentModifierVGMR);
  return result;
}

void closure #1 in closure #1 in closure #1 in MirrorSpeedometerPlatterView.body.getter(uint64_t a1)
{
  v2 = 0.0;
  if (!MirrorSpeedometerPlatterView.speedUnavailable()())
  {
    MetricsPublisher.currentPace.getter();
    v2 = v3;
  }

  v4 = *(a1 + 32);
  v5 = [v4 unitManager];
  if (!v5)
  {
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    return;
  }

  v6 = v5;
  v7 = [v5 userDistanceCyclingUnit];

  LODWORD(v6) = MEMORY[0x20F30D2D0](v7);
  v8 = type metadata accessor for MirrorSpeedometerPlatterView(0);
  v9 = 40;
  if (v6)
  {
    v9 = 36;
  }

  v10 = *(a1 + *(v8 + v9));
  MetricsPublisher.fastestPace.getter();
  v12 = v11;
  *&v50[0] = 0;
  lazy protocol witness table accessor for type Int and conformance Int();
  v13 = BinaryInteger.formatted()();
  v14 = [objc_opt_self() meterUnit];
  v15 = [v4 unitManager];
  if (!v15)
  {
    goto LABEL_25;
  }

  v16 = v15;
  v17 = [v15 userDistanceCyclingUnit];

  LODWORD(v17) = MEMORY[0x20F30D2D0](v17);
  v18 = type metadata accessor for MirrorSpeedometerPlatterView(0);
  v19 = 40;
  if (v17)
  {
    v19 = 36;
  }

  v20 = *(a1 + *(v18 + v19));
  MetricsPublisher.fastestPace.getter();
  if (v20 <= v21)
  {
    v20 = v21;
  }

  v22 = [objc_opt_self() quantityWithUnit:v14 doubleValue:v20];

  v23 = [v4 localizedPaceStringWithDistance:v22 overDuration:4 paceFormat:0 unitStyle:2 decimalTrimmingMode:FIUIDistanceTypeForActivityType() distanceType:1.0];
  if (!v23)
  {
    goto LABEL_26;
  }

  v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v26 = v25;

  if (one-time initialization token for lineWidth != -1)
  {
    swift_once();
  }

  v27 = static MirrorRingConstants.lineWidth;
  v28 = objc_opt_self();
  v29 = [v28 currentDevice];
  v30 = specialized UIDevice.screenType.getter();

  v31 = dbl_20CB6D4D0[v30];
  v32 = objc_opt_self();
  v33 = [v32 mainScreen];
  [v33 scale];
  v35 = v34;

  v36 = [v32 mainScreen];
  [v36 nativeScale];
  v38 = v37;

  if (v35 != v38)
  {
    v39 = [v32 mainScreen];
    [v39 scale];
    v41 = v40;

    v42 = [v32 mainScreen];
    [v42 nativeScale];
    v44 = v43;

    v31 = v31 * (v41 / v44 * 0.95);
  }

  if (v10 > v12)
  {
    v45 = v10;
  }

  else
  {
    v45 = v12;
  }

  v46 = 0.0;
  if (v2 >= 0.0)
  {
    v46 = v2;
  }

  if (v45 < v46)
  {
    v46 = v45;
  }

  *&v47 = v46;
  *(&v47 + 1) = v45;
  *&v48 = v24;
  *(&v48 + 1) = v26;
  *&v49 = v27;
  *(&v49 + 1) = 0x3FE867B5F1BEF49DLL;
  lazy protocol witness table accessor for type MirrorArcView and conformance MirrorArcView();
  View.accessibilityHidden(_:)();
  v50[2] = v48;
  v50[3] = v49;
  v51 = v31;
  v50[0] = v47;
  v50[1] = v13;
  outlined destroy of MirrorArcView(v50);
}

uint64_t protocol witness for View.body.getter in conformance MirrorSpeedometerPlatterView@<X0>(_BYTE *a1@<X8>)
{
  *a1 = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA11_LayoutRootVy07WorkoutB0025MirrorHeroGraphicsMetricsdF0VGAA05TupleD0VyAA0D0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA15ModifiedContentVyAUyAA6ZStackVyAMyAUyAH0i3ArcD0VAA0Q18AttachmentModifierVG_AUyAH10MetricTextVAA06_FrameF0VGtGGAA022_EnvironmentKeyWritingY0VyAH0hD5StyleOGGAA016_ForegroundStyleY0VyAA5ColorVGG_Qo__AoAEApQQrAS_tFQOyAUyAA012_ConditionalU0VyA22_yA22_yA22_yA22_yA22_yAH06EnergyzD0VA24_GA22_yAH09HeartRatezD0VAH018HeartRateAggregatezD0VGGA22_yA22_yA29_AH04ZonezD0VGA22_yAH010TimeInZonezD0VA33_GGGA22_yA22_yA22_yA36_AH04PacezD0VGA22_yA41_A41_GGA22_yA43_A22_yAH08DistancezD0VAH04LapszD0VGGGGA22_yA22_yA22_yA22_yA22_yA22_yAH07CadencezD0VAA05EmptyD0VGA54_GA54_GA22_yAH015ElevationChangezD0VAH016CurrentElevationzD0VGGA22_yA22_yAH05PowerzD0VA67_GA22_yA67_AH014FlightsClimbedzD0VGGGA22_yA22_yA22_yAH015SegmentDurationzD0VAH014DistanceDetailzD0VGA22_yA41_A24_GGA22_yA22_yA24_A67_GA22_yA67_AUyAUyAH0h4TimeD0VAH0Z6DetailVGA18_GGGGGGA22_yA22_yA22_yA22_yA77_A41_GA22_yAH012StrideLengthzD0VA95_GGA22_yA22_yAH019VerticalOscillationzD0VA99_GA22_yAH017GroundContactTimezD0VA102_GGGA22_yA22_yA61_AH016DownhillRunCountzD0VGA22_yA56_AA6HStackVyAMyAUyAA4TextVAH0Z9ValueFontVG_AUyAUyA112_AH0Z19DescriptionCoreFontVGAH26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGA12_G_Qo_A130_A130_A130_tGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA11_LayoutRootVy07WorkoutB0025MirrorHeroGraphicsMetricsdF0VGAA05TupleD0VyAA0D0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA15ModifiedContentVyAUyAA6ZStackVyAMyAUyAH0i3ArcD0VAA0Q18AttachmentModifierVG_AUyAH10MetricTextVAA06_FrameF0VGtGGAA022_EnvironmentKeyWritingY0VyAH0hD5StyleOGGAA016_ForegroundStyleY0VyAA5ColorVGG_Qo__AoAEApQQrAS_tFQOyAUyAA012_ConditionalU0VyA22_yA22_yA22_yA22_yA22_yAH06EnergyzD0VA24_GA22_yAH09HeartRatezD0VAH018HeartRateAggregatezD0VGGA22_yA22_yA29_AH04ZonezD0VGA22_yAH010TimeInZonezD0VA33_GGGA22_yA22_yA22_yA36_AH04PacezD0VGA22_yA41_A41_GGA22_yA43_A22_yAH08DistancezD0VAH04LapszD0VGGGGA22_yA22_yA22_yA22_yA22_yA22_yAH07CadencezD0VAA05EmptyD0VGA54_GA54_GA22_yAH015ElevationChangezD0VAH016CurrentElevationzD0VGGA22_yA22_yAH05PowerzD0VA67_GA22_yA67_AH014FlightsClimbedzD0VGGGA22_yA22_yA22_yAH015SegmentDurationzD0VAH014DistanceDetailzD0VGA22_yA41_A24_GGA22_yA22_yA24_A67_GA22_yA67_AUyAUyAH0h4TimeD0VAH0Z6DetailVGA18_GGGGGGA22_yA22_yA22_yA22_yA77_A41_GA22_yAH012StrideLengthzD0VA95_GGA22_yA22_yAH019VerticalOscillationzD0VA99_GA22_yAH017GroundContactTimezD0VA102_GGGA22_yA22_yA61_AH016DownhillRunCountzD0VGA22_yA56_AA6HStackVyAMyAUyAA4TextVAH0Z9ValueFontVG_AUyAUyA112_AH0Z19DescriptionCoreFontVGAH26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGA12_G_Qo_A130_A130_A130_tGGMR);
  return closure #1 in MirrorSpeedometerPlatterView.body.getter(v1, &a1[*(v3 + 44)]);
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ZStack<TupleView<(ModifiedContent<MirrorArcView, AccessibilityAttachmentModifier>, ModifiedContent<MetricText, _FrameLayout>)>>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ZStack<TupleView<(ModifiedContent<MirrorArcView, AccessibilityAttachmentModifier>, ModifiedContent<MetricText, _FrameLayout>)>>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ZStack<TupleView<(ModifiedContent<MirrorArcView, AccessibilityAttachmentModifier>, ModifiedContent<MetricText, _FrameLayout>)>>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA6ZStackVyAA9TupleViewVyACy07WorkoutB009MirrorArcG0VAA31AccessibilityAttachmentModifierVG_ACyAH10MetricTextVAA12_FrameLayoutVGtGGAA022_EnvironmentKeyWritingM0VyAH0hG5StyleOGGAA011_ForegrounduM0VyAA5ColorVGGMd, &_s7SwiftUI15ModifiedContentVyACyAA6ZStackVyAA9TupleViewVyACy07WorkoutB009MirrorArcG0VAA31AccessibilityAttachmentModifierVG_ACyAH10MetricTextVAA12_FrameLayoutVGtGGAA022_EnvironmentKeyWritingM0VyAH0hG5StyleOGGAA011_ForegrounduM0VyAA5ColorVGGMR);
    lazy protocol witness table accessor for type ModifiedContent<ZStack<TupleView<(ModifiedContent<MirrorArcView, AccessibilityAttachmentModifier>, ModifiedContent<MetricText, _FrameLayout>)>>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ZStack<TupleView<(ModifiedContent<MirrorArcView, AccessibilityAttachmentModifier>, ModifiedContent<MetricText, _FrameLayout>)>> and conformance ZStack<A>(&lazy protocol witness table cache variable for type _ForegroundStyleModifier<Color> and conformance _ForegroundStyleModifier<A>, &_s7SwiftUI24_ForegroundStyleModifierVyAA5ColorVGMd, &_s7SwiftUI24_ForegroundStyleModifierVyAA5ColorVGMR, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ZStack<TupleView<(ModifiedContent<MirrorArcView, AccessibilityAttachmentModifier>, ModifiedContent<MetricText, _FrameLayout>)>>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ZStack<TupleView<(ModifiedContent<MirrorArcView, AccessibilityAttachmentModifier>, ModifiedContent<MetricText, _FrameLayout>)>>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ZStack<TupleView<(ModifiedContent<MirrorArcView, AccessibilityAttachmentModifier>, ModifiedContent<MetricText, _FrameLayout>)>>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ZStack<TupleView<(ModifiedContent<MirrorArcView, AccessibilityAttachmentModifier>, ModifiedContent<MetricText, _FrameLayout>)>>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6ZStackVyAA9TupleViewVyACy07WorkoutB009MirrorArcG0VAA31AccessibilityAttachmentModifierVG_ACyAH10MetricTextVAA12_FrameLayoutVGtGGAA022_EnvironmentKeyWritingM0VyAH0hG5StyleOGGMd, &_s7SwiftUI15ModifiedContentVyAA6ZStackVyAA9TupleViewVyACy07WorkoutB009MirrorArcG0VAA31AccessibilityAttachmentModifierVG_ACyAH10MetricTextVAA12_FrameLayoutVGtGGAA022_EnvironmentKeyWritingM0VyAH0hG5StyleOGGMR);
    lazy protocol witness table accessor for type ZStack<TupleView<(ModifiedContent<MirrorArcView, AccessibilityAttachmentModifier>, ModifiedContent<MetricText, _FrameLayout>)>> and conformance ZStack<A>(&lazy protocol witness table cache variable for type ZStack<TupleView<(ModifiedContent<MirrorArcView, AccessibilityAttachmentModifier>, ModifiedContent<MetricText, _FrameLayout>)>> and conformance ZStack<A>, &_s7SwiftUI6ZStackVyAA9TupleViewVyAA15ModifiedContentVy07WorkoutB009MirrorArcE0VAA31AccessibilityAttachmentModifierVG_AGyAH10MetricTextVAA12_FrameLayoutVGtGGMd, &_s7SwiftUI6ZStackVyAA9TupleViewVyAA15ModifiedContentVy07WorkoutB009MirrorArcE0VAA31AccessibilityAttachmentModifierVG_AGyAH10MetricTextVAA12_FrameLayoutVGtGGMR, MEMORY[0x277CE11A8]);
    lazy protocol witness table accessor for type ZStack<TupleView<(ModifiedContent<MirrorArcView, AccessibilityAttachmentModifier>, ModifiedContent<MetricText, _FrameLayout>)>> and conformance ZStack<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<WorkoutViewStyle> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy07WorkoutB00G9ViewStyleOGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy07WorkoutB00G9ViewStyleOGMR, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ZStack<TupleView<(ModifiedContent<MirrorArcView, AccessibilityAttachmentModifier>, ModifiedContent<MetricText, _FrameLayout>)>>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t _s11WorkoutCore16MetricsPublisherCAC7Combine16ObservableObjectAAWlTm_1(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t lazy protocol witness table accessor for type _ConditionalContent<PaceMetricView, PaceMetricView> and conformance <> _ConditionalContent<A, B>(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

uint64_t outlined init with copy of HeartRateMetricView(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HeartRateMetricView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of HeartRateMetricView(uint64_t a1)
{
  v2 = type metadata accessor for HeartRateMetricView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with copy of _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t outlined destroy of ModifiedContent<ModifiedContent<ZStack<TupleView<(ModifiedContent<MirrorArcView, AccessibilityAttachmentModifier>, ModifiedContent<MetricText, _FrameLayout>)>>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, _ForegroundStyleModifier<Color>>(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t _sSo21FIUIFormattingManagerCMaTm_0(uint64_t a1, unint64_t *a2, void *a3)
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

unint64_t lazy protocol witness table accessor for type MirrorArcView and conformance MirrorArcView()
{
  result = lazy protocol witness table cache variable for type MirrorArcView and conformance MirrorArcView;
  if (!lazy protocol witness table cache variable for type MirrorArcView and conformance MirrorArcView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MirrorArcView and conformance MirrorArcView);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _VariadicView.Tree<_LayoutRoot<MirrorHeroGraphicsMetricsViewLayout>, TupleView<(<<opaque return type of View.accessibilityElement(children:)>>.0, <<opaque return type of View.accessibilityElement(children:)>>.0, <<opaque return type of View.accessibilityElement(children:)>>.0, <<opaque return type of View.accessibilityElement(children:)>>.0, <<opaque return type of View.accessibilityElement(children:)>>.0)>> and conformance <> _VariadicView.Tree<A, B>()
{
  result = lazy protocol witness table cache variable for type _VariadicView.Tree<_LayoutRoot<MirrorHeroGraphicsMetricsViewLayout>, TupleView<(<<opaque return type of View.accessibilityElement(children:)>>.0, <<opaque return type of View.accessibilityElement(children:)>>.0, <<opaque return type of View.accessibilityElement(children:)>>.0, <<opaque return type of View.accessibilityElement(children:)>>.0, <<opaque return type of View.accessibilityElement(children:)>>.0)>> and conformance <> _VariadicView.Tree<A, B>;
  if (!lazy protocol witness table cache variable for type _VariadicView.Tree<_LayoutRoot<MirrorHeroGraphicsMetricsViewLayout>, TupleView<(<<opaque return type of View.accessibilityElement(children:)>>.0, <<opaque return type of View.accessibilityElement(children:)>>.0, <<opaque return type of View.accessibilityElement(children:)>>.0, <<opaque return type of View.accessibilityElement(children:)>>.0, <<opaque return type of View.accessibilityElement(children:)>>.0)>> and conformance <> _VariadicView.Tree<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA11_LayoutRootVy07WorkoutB0025MirrorHeroGraphicsMetricsdF0VGAA05TupleD0VyAA0D0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA15ModifiedContentVyAUyAA6ZStackVyAMyAUyAH0i3ArcD0VAA0Q18AttachmentModifierVG_AUyAH10MetricTextVAA06_FrameF0VGtGGAA022_EnvironmentKeyWritingY0VyAH0hD5StyleOGGAA016_ForegroundStyleY0VyAA5ColorVGG_Qo__AoAEApQQrAS_tFQOyAUyAA012_ConditionalU0VyA22_yA22_yA22_yA22_yA22_yAH06EnergyzD0VA24_GA22_yAH09HeartRatezD0VAH018HeartRateAggregatezD0VGGA22_yA22_yA29_AH04ZonezD0VGA22_yAH010TimeInZonezD0VA33_GGGA22_yA22_yA22_yA36_AH04PacezD0VGA22_yA41_A41_GGA22_yA43_A22_yAH08DistancezD0VAH04LapszD0VGGGGA22_yA22_yA22_yA22_yA22_yA22_yAH07CadencezD0VAA05EmptyD0VGA54_GA54_GA22_yAH015ElevationChangezD0VAH016CurrentElevationzD0VGGA22_yA22_yAH05PowerzD0VA67_GA22_yA67_AH014FlightsClimbedzD0VGGGA22_yA22_yA22_yAH015SegmentDurationzD0VAH014DistanceDetailzD0VGA22_yA41_A24_GGA22_yA22_yA24_A67_GA22_yA67_AUyAUyAH0h4TimeD0VAH0Z6DetailVGA18_GGGGGGA22_yA22_yA22_yA22_yA77_A41_GA22_yAH012StrideLengthzD0VA95_GGA22_yA22_yAH019VerticalOscillationzD0VA99_GA22_yAH017GroundContactTimezD0VA102_GGGA22_yA22_yA61_AH016DownhillRunCountzD0VGA22_yA56_AA6HStackVyAMyAUyAA4TextVAH0Z9ValueFontVG_AUyAUyA112_AH0Z19DescriptionCoreFontVGAH26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGA12_G_Qo_A130_A130_A130_tGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA11_LayoutRootVy07WorkoutB0025MirrorHeroGraphicsMetricsdF0VGAA05TupleD0VyAA0D0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA15ModifiedContentVyAUyAA6ZStackVyAMyAUyAH0i3ArcD0VAA0Q18AttachmentModifierVG_AUyAH10MetricTextVAA06_FrameF0VGtGGAA022_EnvironmentKeyWritingY0VyAH0hD5StyleOGGAA016_ForegroundStyleY0VyAA5ColorVGG_Qo__AoAEApQQrAS_tFQOyAUyAA012_ConditionalU0VyA22_yA22_yA22_yA22_yA22_yAH06EnergyzD0VA24_GA22_yAH09HeartRatezD0VAH018HeartRateAggregatezD0VGGA22_yA22_yA29_AH04ZonezD0VGA22_yAH010TimeInZonezD0VA33_GGGA22_yA22_yA22_yA36_AH04PacezD0VGA22_yA41_A41_GGA22_yA43_A22_yAH08DistancezD0VAH04LapszD0VGGGGA22_yA22_yA22_yA22_yA22_yA22_yAH07CadencezD0VAA05EmptyD0VGA54_GA54_GA22_yAH015ElevationChangezD0VAH016CurrentElevationzD0VGGA22_yA22_yAH05PowerzD0VA67_GA22_yA67_AH014FlightsClimbedzD0VGGGA22_yA22_yA22_yAH015SegmentDurationzD0VAH014DistanceDetailzD0VGA22_yA41_A24_GGA22_yA22_yA24_A67_GA22_yA67_AUyAUyAH0h4TimeD0VAH0Z6DetailVGA18_GGGGGGA22_yA22_yA22_yA22_yA77_A41_GA22_yAH012StrideLengthzD0VA95_GGA22_yA22_yAH019VerticalOscillationzD0VA99_GA22_yAH017GroundContactTimezD0VA102_GGGA22_yA22_yA61_AH016DownhillRunCountzD0VGA22_yA56_AA6HStackVyAMyAUyAA4TextVAH0Z9ValueFontVG_AUyAUyA112_AH0Z19DescriptionCoreFontVGAH26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGA12_G_Qo_A130_A130_A130_tGGMR);
    lazy protocol witness table accessor for type ZStack<TupleView<(ModifiedContent<MirrorArcView, AccessibilityAttachmentModifier>, ModifiedContent<MetricText, _FrameLayout>)>> and conformance ZStack<A>(&lazy protocol witness table cache variable for type _LayoutRoot<MirrorHeroGraphicsMetricsViewLayout> and conformance _LayoutRoot<A>, &_s7SwiftUI11_LayoutRootVy07WorkoutB0029MirrorHeroGraphicsMetricsViewC0VGMd, &_s7SwiftUI11_LayoutRootVy07WorkoutB0029MirrorHeroGraphicsMetricsViewC0VGMR, MEMORY[0x277CDF510]);
    lazy protocol witness table accessor for type ZStack<TupleView<(ModifiedContent<MirrorArcView, AccessibilityAttachmentModifier>, ModifiedContent<MetricText, _FrameLayout>)>> and conformance ZStack<A>( &lazy protocol witness table cache variable for type TupleView<(<<opaque return type of View.accessibilityElement(children:)>>.0, <<opaque return type of View.accessibilityElement(children:)>>.0, <<opaque return type of View.accessibilityElement(children:)>>.0, <<opaque return type of View.accessibilityElement(children:)>>.0, <<opaque return type of View.accessibilityElement(children:)>>.0)> and conformance TupleView<A>,  &_s7SwiftUI9TupleViewVyAA0D0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA15ModifiedContentVyAKyAA6ZStackVyACyAKy07WorkoutB009MirrorArcD0VAA0H18AttachmentModifierVG_AKyAN10MetricTextVAA12_FrameLayoutVGtGGAA022_EnvironmentKeyWritingR0VyAN0nD5StyleOGGAA011_ForegroundzR0VyAA5ColorVGG_Qo__AeAEAfGQrAI_tFQOyAKyAA012_ConditionalL0VyA13_yA13_yA13_yA13_yA13_yAN06EnergysD0VA15_GA13_yAN09HeartRatesD0VAN018HeartRateAggregatesD0VGGA13_yA13_yA20_AN04ZonesD0VGA13_yAN010TimeInZonesD0VA24_GGGA13_yA13_yA13_yA27_AN04PacesD0VGA13_yA32_A32_GGA13_yA34_A13_yAN08DistancesD0VAN04LapssD0VGGGGA13_yA13_yA13_yA13_yA13_yA13_yAN07CadencesD0VAA05EmptyD0VGA45_GA45_GA13_yAN015ElevationChangesD0VAN016CurrentElevationsD0VGGA13_yA13_yAN05PowersD0VA58_GA13_yA58_AN014FlightsClimbedsD0VGGGA13_yA13_yA13_yAN015SegmentDurationsD0VAN014DistanceDetailsD0VGA13_yA32_A15_GGA13_yA13_yA15_A58_GA13_yA58_AKyAKyAN0n4TimeD0VAN0S6DetailVGA9_GGGGGGA13_yA13_yA13_yA13_yA68_A32_GA13_yAN012StrideLengthsD0VA86_GGA13_yA13_yAN019VerticalOscillationsD0VA90_GA13_yAN017GroundContactTimesD0VA93_GGGA13_yA13_yA52_AN016DownhillRunCountsD0VGA13_yA47_AA6HStackVyACyAKyAA0T0VAN0S9ValueFontVG_AKyAKyA103_AN0S19DescriptionCoreFontVGAN26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGA3_G_Qo_A121_A121_A121_tGMd,  &_s7SwiftUI9TupleViewVyAA0D0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA15ModifiedContentVyAKyAA6ZStackVyACyAKy07WorkoutB009MirrorArcD0VAA0H18AttachmentModifierVG_AKyAN10MetricTextVAA12_FrameLayoutVGtGGAA022_EnvironmentKeyWritingR0VyAN0nD5StyleOGGAA011_ForegroundzR0VyAA5ColorVGG_Qo__AeAEAfGQrAI_tFQOyAKyAA012_ConditionalL0VyA13_yA13_yA13_yA13_yA13_yAN06EnergysD0VA15_GA13_yAN09HeartRatesD0VAN018HeartRateAggregatesD0VGGA13_yA13_yA20_AN04ZonesD0VGA13_yAN010TimeInZonesD0VA24_GGGA13_yA13_yA13_yA27_AN04PacesD0VGA13_yA32_A32_GGA13_yA34_A13_yAN08DistancesD0VAN04LapssD0VGGGGA13_yA13_yA13_yA13_yA13_yA13_yAN07CadencesD0VAA05EmptyD0VGA45_GA45_GA13_yAN015ElevationChangesD0VAN016CurrentElevationsD0VGGA13_yA13_yAN05PowersD0VA58_GA13_yA58_AN014FlightsClimbedsD0VGGGA13_yA13_yA13_yAN015SegmentDurationsD0VAN014DistanceDetailsD0VGA13_yA32_A15_GGA13_yA13_yA15_A58_GA13_yA58_AKyAKyAN0n4TimeD0VAN0S6DetailVGA9_GGGGGGA13_yA13_yA13_yA13_yA68_A32_GA13_yAN012StrideLengthsD0VA86_GGA13_yA13_yAN019VerticalOscillationsD0VA90_GA13_yAN017GroundContactTimesD0VA93_GGGA13_yA13_yA52_AN016DownhillRunCountsD0VGA13_yA47_AA6HStackVyACyAKyAA0T0VAN0S9ValueFontVG_AKyAKyA103_AN0S19DescriptionCoreFontVGAN26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGA3_G_Qo_A121_A121_A121_tGMR,  MEMORY[0x277CE14C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _VariadicView.Tree<_LayoutRoot<MirrorHeroGraphicsMetricsViewLayout>, TupleView<(<<opaque return type of View.accessibilityElement(children:)>>.0, <<opaque return type of View.accessibilityElement(children:)>>.0, <<opaque return type of View.accessibilityElement(children:)>>.0, <<opaque return type of View.accessibilityElement(children:)>>.0, <<opaque return type of View.accessibilityElement(children:)>>.0)>> and conformance <> _VariadicView.Tree<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ZStack<TupleView<(ModifiedContent<MirrorArcView, AccessibilityAttachmentModifier>, ModifiedContent<MetricText, _FrameLayout>)>> and conformance ZStack<A>(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

char *WorkoutCountdownAnimatedViewRepresentable.makeUIView(context:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = swift_allocObject();
  v9[2] = a2;
  v9[3] = a3;
  v9[4] = a4;
  v9[5] = a5;
  v10 = &a2[OBJC_IVAR____TtC9WorkoutUI28WorkoutCountdownAnimatedView_onCountdownCompleted];
  swift_beginAccess();
  v11 = *v10;
  v12 = v10[1];
  *v10 = partial apply for closure #1 in WorkoutCountdownAnimatedViewRepresentable.makeUIView(context:);
  v10[1] = v9;
  v13 = a2;

  outlined copy of (@escaping @callee_guaranteed () -> ())?(a4, a5);
  _s9WorkoutUI0A13CountdownStepOIegn_SgWOe_0(v11, v12);
  WorkoutCountdownAnimatedView.prepare()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI26UIViewRepresentableContextVy07WorkoutB00f21CountdownAnimatedViewD0VGMd, &_s7SwiftUI26UIViewRepresentableContextVy07WorkoutB00f21CountdownAnimatedViewD0VGMR);
  UIViewRepresentableContext.coordinator.getter();
  v14 = [objc_allocWithZone(MEMORY[0x277D75B80]) initWithTarget:v17 action:sel_viewTap];

  v15 = v14;
  [v13 addGestureRecognizer_];
  UIViewRepresentableContext.coordinator.getter();
  [v15 setDelegate_];

  return v13;
}

double closure #1 in WorkoutCountdownAnimatedViewRepresentable.makeUIView(context:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (*(a2 + 17) != 5)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    lazy protocol witness table accessor for type SessionViewModel and conformance SessionViewModel();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

Swift::Void __swiftcall WorkoutCountdownAnimatedViewRepresentable.skipCountdown()()
{
  v3 = v2;
  v4 = v1;
  v5 = v0;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = v21 - v11;
  swift_getKeyPath();
  v21[1] = v4;
  lazy protocol witness table accessor for type SessionViewModel and conformance SessionViewModel();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v13 = OBJC_IVAR____TtC9WorkoutUI16SessionViewModel__supportsTapToSkipCountdown;
  swift_beginAccess();
  if (*(v4 + v13) == 1)
  {
    static WOLog.app.getter();
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_20C66F000, v14, v15, "Skipping countdown", v16, 2u);
      MEMORY[0x20F30E080](v16, -1, -1);
    }

    (*(v7 + 8))(v12, v6);
    v17 = [*(*(v5 + OBJC_IVAR____TtC9WorkoutUI28WorkoutCountdownAnimatedView_countdownRingView) + OBJC_IVAR____TtC9WorkoutUI24WorkoutCountdownRingView_animator) cancelAnimations];
    if (v3)
    {
      v3(v17);
    }
  }

  else
  {
    static WOLog.app.getter();
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_20C66F000, v18, v19, "supportsTapToSkipCountdown is false, not skipping countdown", v20, 2u);
      MEMORY[0x20F30E080](v20, -1, -1);
    }

    (*(v7 + 8))(v9, v6);
  }
}

Swift::Void __swiftcall WorkoutCountdownAnimatedViewRepresentable.Coordinator.viewTap()()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static WOLog.app.getter();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_20C66F000, v6, v7, "Countdown view tapped", v8, 2u);
    MEMORY[0x20F30E080](v8, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  v9 = *(v1 + OBJC_IVAR____TtCV9WorkoutUI41WorkoutCountdownAnimatedViewRepresentable11Coordinator_parent + 16);
  v10 = *(v1 + OBJC_IVAR____TtCV9WorkoutUI41WorkoutCountdownAnimatedViewRepresentable11Coordinator_parent + 24);
  v11 = *(v1 + OBJC_IVAR____TtCV9WorkoutUI41WorkoutCountdownAnimatedViewRepresentable11Coordinator_parent);

  outlined copy of (@escaping @callee_guaranteed () -> ())?(v9, v10);
  WorkoutCountdownAnimatedViewRepresentable.skipCountdown()();

  _s9WorkoutUI0A13CountdownStepOIegn_SgWOe_0(v9, v10);
}

id WorkoutCountdownAnimatedViewRepresentable.Coordinator.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WorkoutCountdownAnimatedViewRepresentable.Coordinator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t getEnumTagSinglePayload for WorkoutCountdownAnimatedViewRepresentable(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t storeEnumTagSinglePayload for WorkoutCountdownAnimatedViewRepresentable(uint64_t result, int a2, int a3)
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

void *protocol witness for UIViewRepresentable.makeCoordinator() in conformance WorkoutCountdownAnimatedViewRepresentable@<X0>(void *a1@<X8>)
{
  v4 = *v1;
  v3 = *(v1 + 8);
  v6 = *(v1 + 16);
  v5 = *(v1 + 24);
  v7 = type metadata accessor for WorkoutCountdownAnimatedViewRepresentable.Coordinator();
  v8 = objc_allocWithZone(v7);
  v9 = &v8[OBJC_IVAR____TtCV9WorkoutUI41WorkoutCountdownAnimatedViewRepresentable11Coordinator_parent];
  *v9 = v4;
  *(v9 + 1) = v3;
  *(v9 + 2) = v6;
  *(v9 + 3) = v5;
  v10 = v4;

  outlined copy of (@escaping @callee_guaranteed () -> ())?(v6, v5);
  v12.receiver = v8;
  v12.super_class = v7;
  result = objc_msgSendSuper2(&v12, sel_init);
  *a1 = result;
  return result;
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance WorkoutCountdownAnimatedViewRepresentable(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type WorkoutCountdownAnimatedViewRepresentable and conformance WorkoutCountdownAnimatedViewRepresentable();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance WorkoutCountdownAnimatedViewRepresentable(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type WorkoutCountdownAnimatedViewRepresentable and conformance WorkoutCountdownAnimatedViewRepresentable();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void protocol witness for View.body.getter in conformance WorkoutCountdownAnimatedViewRepresentable(uint64_t a1)
{
  lazy protocol witness table accessor for type WorkoutCountdownAnimatedViewRepresentable and conformance WorkoutCountdownAnimatedViewRepresentable();
  UIViewRepresentable.body.getter();
  __break(1u);
}

unint64_t lazy protocol witness table accessor for type WorkoutCountdownAnimatedViewRepresentable and conformance WorkoutCountdownAnimatedViewRepresentable()
{
  result = lazy protocol witness table cache variable for type WorkoutCountdownAnimatedViewRepresentable and conformance WorkoutCountdownAnimatedViewRepresentable;
  if (!lazy protocol witness table cache variable for type WorkoutCountdownAnimatedViewRepresentable and conformance WorkoutCountdownAnimatedViewRepresentable)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkoutCountdownAnimatedViewRepresentable and conformance WorkoutCountdownAnimatedViewRepresentable);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkoutCountdownAnimatedViewRepresentable and conformance WorkoutCountdownAnimatedViewRepresentable;
  if (!lazy protocol witness table cache variable for type WorkoutCountdownAnimatedViewRepresentable and conformance WorkoutCountdownAnimatedViewRepresentable)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkoutCountdownAnimatedViewRepresentable and conformance WorkoutCountdownAnimatedViewRepresentable);
  }

  return result;
}

char *specialized WorkoutCountdownAnimatedViewRepresentable.init(sessionViewModel:onCountdownStep:onCountdownSkipped:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  v24[0] = a1;
  lazy protocol witness table accessor for type SessionViewModel and conformance SessionViewModel();

  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  v6 = *(a1 + 24);
  WorkoutConfiguration.colors.getter(v24);

  v8 = v24[0];
  v7 = v24[1];
  v10 = v24[2];
  v9 = v24[3];

  swift_getKeyPath();
  v23[0] = a1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v11 = *(a1 + 24);

  WorkoutConfiguration.colors.getter(v23);

  v12 = v23[0];
  v13 = v23[1];
  v14 = v23[2];
  v15 = v23[3];

  v16 = objc_allocWithZone(type metadata accessor for WorkoutCountdownAnimatedView());
  v17 = WorkoutCountdownAnimatedView.init(diameter:thickness:isOpaque:topColor:bottomColor:)(1, v10, v13, 255.0, 17.5);
  v18 = &v17[OBJC_IVAR____TtC9WorkoutUI28WorkoutCountdownAnimatedView_onCountdownStep];
  swift_beginAccess();
  v19 = *v18;
  v20 = v18[1];
  *v18 = a2;
  v18[1] = a3;
  v21 = v17;
  _s9WorkoutUI0A13CountdownStepOIegn_SgWOe_0(v19, v20);

  return v21;
}

void specialized WorkoutCountdownAnimatedViewRepresentable.updateUIView(_:context:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type SessionViewModel and conformance SessionViewModel();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  if (*(a3 + 16) == 1)
  {
    type metadata accessor for WorkoutSignposter();
    v5 = static WorkoutSignposter.shared.getter();
    dispatch thunk of WorkoutSignposter.emit(signpost:)();

    [*(*(a2 + OBJC_IVAR____TtC9WorkoutUI28WorkoutCountdownAnimatedView_countdownRingView) + OBJC_IVAR____TtC9WorkoutUI24WorkoutCountdownRingView_animator) beginAnimations];
    if (*(a3 + 16))
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }

    else
    {
      *(a3 + 16) = 0;
    }
  }
}

unint64_t lazy protocol witness table accessor for type SessionViewModel and conformance SessionViewModel()
{
  result = lazy protocol witness table cache variable for type SessionViewModel and conformance SessionViewModel;
  if (!lazy protocol witness table cache variable for type SessionViewModel and conformance SessionViewModel)
  {
    type metadata accessor for SessionViewModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SessionViewModel and conformance SessionViewModel);
  }

  return result;
}

uint64_t EmbeddedIntervalConfigurationView.init(intervalConfiguration:formattingManager:referenceIntervalWorkoutConfiguration:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

void EmbeddedIntervalConfigurationView.body.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = IntervalWorkoutConfiguration.intervalWorkout.getter();
  v5 = IntervalWorkout.blocks.getter();

  if (!(v5 >> 62))
  {

LABEL_3:
    swift_getKeyPath();
    v6 = swift_allocObject();
    v6[2] = v1;
    v6[3] = v2;
    v6[4] = v3;
    v7 = v3;
    v8 = v1;
    v9 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySiGMd, &_sSnySiGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOy07WorkoutB0012BlockSectionC0V_Qo_Md, &_s7SwiftUI4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOy07WorkoutB0012BlockSectionC0V_Qo_MR);
    lazy protocol witness table accessor for type Range<Int> and conformance <> Range<A>();
    lazy protocol witness table accessor for type BlockSectionView and conformance BlockSectionView();
    swift_getOpaqueTypeConformance2();
    ForEach<>.init(_:id:content:)();
    return;
  }

  v10 = __CocoaSet.count.getter();

  if ((v10 & 0x8000000000000000) == 0)
  {
    goto LABEL_3;
  }

  __break(1u);
}

void closure #1 in EmbeddedIntervalConfigurationView.body.getter(unint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = type metadata accessor for AccessibilityChildBehavior();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v12 = IntervalWorkoutConfiguration.intervalWorkout.getter();
  v13 = IntervalWorkout.blocks.getter();

  if ((v13 & 0xC000000000000001) == 0)
  {
    if ((v11 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v11 < *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v12 = *(v13 + 8 * v11 + 32);

      goto LABEL_5;
    }

    __break(1u);
LABEL_15:
    a4 = MEMORY[0x20F30C990](v11, v13);
    goto LABEL_10;
  }

  v12 = MEMORY[0x20F30C990](v11, v13);
LABEL_5:

  if (!a4)
  {
LABEL_11:
    v16[1] = v12;
    v16[2] = a3;
    v16[3] = a4;

    v15 = a3;
    static AccessibilityChildBehavior.combine.getter();
    lazy protocol witness table accessor for type BlockSectionView and conformance BlockSectionView();
    View.accessibilityElement(children:)();

    (*(v8 + 8))(v10, v7);

    return;
  }

  v14 = IntervalWorkoutConfiguration.intervalWorkout.getter();
  v13 = IntervalWorkout.blocks.getter();

  if ((v13 & 0xC000000000000001) != 0)
  {
    goto LABEL_15;
  }

  if ((v11 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v11 < *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    a4 = *(v13 + 8 * v11 + 32);

LABEL_10:

    goto LABEL_11;
  }

  __break(1u);
}

unint64_t lazy protocol witness table accessor for type BlockSectionView and conformance BlockSectionView()
{
  result = lazy protocol witness table cache variable for type BlockSectionView and conformance BlockSectionView;
  if (!lazy protocol witness table cache variable for type BlockSectionView and conformance BlockSectionView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BlockSectionView and conformance BlockSectionView);
  }

  return result;
}

void protocol witness for View.body.getter in conformance EmbeddedIntervalConfigurationView(double a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = IntervalWorkoutConfiguration.intervalWorkout.getter();
  v6 = IntervalWorkout.blocks.getter();

  if (!(v6 >> 62))
  {

LABEL_3:
    swift_getKeyPath();
    v7 = swift_allocObject();
    v7[2] = v2;
    v7[3] = v3;
    v7[4] = v4;
    v8 = v4;
    v9 = v2;
    v10 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySiGMd, &_sSnySiGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOy07WorkoutB0012BlockSectionC0V_Qo_Md, &_s7SwiftUI4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOy07WorkoutB0012BlockSectionC0V_Qo_MR);
    lazy protocol witness table accessor for type Range<Int> and conformance <> Range<A>();
    lazy protocol witness table accessor for type BlockSectionView and conformance BlockSectionView();
    swift_getOpaqueTypeConformance2();
    ForEach<>.init(_:id:content:)();
    return;
  }

  v11 = __CocoaSet.count.getter();

  if ((v11 & 0x8000000000000000) == 0)
  {
    goto LABEL_3;
  }

  __break(1u);
}

uint64_t getEnumTagSinglePayload for EmbeddedIntervalConfigurationView(uint64_t *a1, int a2)
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

uint64_t storeEnumTagSinglePayload for EmbeddedIntervalConfigurationView(uint64_t result, int a2, int a3)
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

unint64_t lazy protocol witness table accessor for type ForEach<Range<Int>, Int, <<opaque return type of View.accessibilityElement(children:)>>.0> and conformance <> ForEach<A, B, C>()
{
  result = lazy protocol witness table cache variable for type ForEach<Range<Int>, Int, <<opaque return type of View.accessibilityElement(children:)>>.0> and conformance <> ForEach<A, B, C>;
  if (!lazy protocol witness table cache variable for type ForEach<Range<Int>, Int, <<opaque return type of View.accessibilityElement(children:)>>.0> and conformance <> ForEach<A, B, C>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI7ForEachVySnySiGSiAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOy07WorkoutB0012BlockSectionE0V_Qo_GMd, &_s7SwiftUI7ForEachVySnySiGSiAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOy07WorkoutB0012BlockSectionE0V_Qo_GMR);
    lazy protocol witness table accessor for type BlockSectionView and conformance BlockSectionView();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ForEach<Range<Int>, Int, <<opaque return type of View.accessibilityElement(children:)>>.0> and conformance <> ForEach<A, B, C>);
  }

  return result;
}

uint64_t objectdestroyTm_32()
{

  return swift_deallocObject();
}

uint64_t MultisportMedallionView.isLuminanceReduced.getter()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *v0;
  if (*(v0 + 8) != 1)
  {

    static os_log_type_t.fault.getter();
    v6 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    v7 = outlined consume of Environment<Bool>.Content(v5, 0);
    (*(v2 + 8))(v4, v1, v7);
    LOBYTE(v5) = v9[15];
  }

  return v5 & 1;
}

uint64_t MultisportMedallionView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v31[1] = a1;
  v32 = type metadata accessor for AccessibilityChildBehavior();
  v2 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v4 = v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA6ZStackVyAEy07WorkoutB0015MedallionCircleE0V_AGyAJ0I6FigureVAA31AccessibilityAttachmentModifierVGtGGAA013_TraitWritingO0VyAA06ZIndexP3KeyVGGAA17_FlipForRTLEffectVG_AA012_ConditionalG0VyAEyAGyAGyAlXGAPGSg_ALSgtGAIyAEyAGyAGyAA7CapsuleVAA012_EnvironmentsqO0VyAA5ColorVSgGGAA12_FrameLayoutVG_AGyAGyAGyAGyAA4TextVAA14_PaddingLayoutVGA23_GAUyAA014LayoutPrioritypS0VGGAPGtGGGtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA6ZStackVyAEy07WorkoutB0015MedallionCircleE0V_AGyAJ0I6FigureVAA31AccessibilityAttachmentModifierVGtGGAA013_TraitWritingO0VyAA06ZIndexP3KeyVGGAA17_FlipForRTLEffectVG_AA012_ConditionalG0VyAEyAGyAGyAlXGAPGSg_ALSgtGAIyAEyAGyAGyAA7CapsuleVAA012_EnvironmentsqO0VyAA5ColorVSgGGAA12_FrameLayoutVG_AGyAGyAGyAGyAA4TextVAA14_PaddingLayoutVGA23_GAUyAA014LayoutPrioritypS0VGGAPGtGGGtGGMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = (v31 - v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyACyAA6ZStackVyAGy07WorkoutB0015MedallionCircleG0V_ACyAJ0I6FigureVAA31AccessibilityAttachmentModifierVGtGGAA013_TraitWritingO0VyAA06ZIndexP3KeyVGGAA17_FlipForRTLEffectVG_AA012_ConditionalD0VyAGyACyACyAlXGAPGSg_ALSgtGAIyAGyACyACyAA7CapsuleVAA012_EnvironmentsqO0VyAA5ColorVSgGGAA12_FrameLayoutVG_ACyACyACyACyAA4TextVAA14_PaddingLayoutVGA23_GAUyAA014LayoutPrioritypS0VGGAPGtGGGtGGA23_GMd, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyACyAA6ZStackVyAGy07WorkoutB0015MedallionCircleG0V_ACyAJ0I6FigureVAA31AccessibilityAttachmentModifierVGtGGAA013_TraitWritingO0VyAA06ZIndexP3KeyVGGAA17_FlipForRTLEffectVG_AA012_ConditionalD0VyAGyACyACyAlXGAPGSg_ALSgtGAIyAGyACyACyAA7CapsuleVAA012_EnvironmentsqO0VyAA5ColorVSgGGAA12_FrameLayoutVG_ACyACyACyACyAA4TextVAA14_PaddingLayoutVGA23_GAUyAA014LayoutPrioritypS0VGGAPGtGGGtGGA23_GMR);
  MEMORY[0x28223BE20](v8);
  v10 = v31 - v9;
  v11 = *(v1 + 48);
  v34 = *(v1 + 32);
  v35 = v11;
  v12 = *(v1 + 80);
  v36 = *(v1 + 64);
  v37 = v12;
  v38 = *(v1 + 96);
  v13 = *(v1 + 16);
  v33[0] = *v1;
  v33[1] = v13;
  v14 = -(*&v34 * *&v36);
  *v7 = static VerticalAlignment.center.getter();
  v7[1] = v14;
  *(v7 + 16) = 0;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAKyAA6ZStackVyAIy07WorkoutB0015MedallionCircleD0V_AKyAN0L6FigureVAA31AccessibilityAttachmentModifierVGtGGAA013_TraitWritingR0VyAA06ZIndexS3KeyVGGAA17_FlipForRTLEffectVG_AA012_ConditionalJ0VyAIyAKyAKyAPA0_GATGSg_APSgtGAMyAIyAKyAKyAA7CapsuleVAA012_EnvironmentvtR0VyAA5ColorVSgGGAA06_FrameG0VG_AKyAKyAKyAKyAA4TextVAA08_PaddingG0VGA27_GAYyAA0g8PrioritysV0VGGATGtGGGtGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAKyAA6ZStackVyAIy07WorkoutB0015MedallionCircleD0V_AKyAN0L6FigureVAA31AccessibilityAttachmentModifierVGtGGAA013_TraitWritingR0VyAA06ZIndexS3KeyVGGAA17_FlipForRTLEffectVG_AA012_ConditionalJ0VyAIyAKyAKyAPA0_GATGSg_APSgtGAMyAIyAKyAKyAA7CapsuleVAA012_EnvironmentvtR0VyAA5ColorVSgGGAA06_FrameG0VG_AKyAKyAKyAKyAA4TextVAA08_PaddingG0VGA27_GAYyAA0g8PrioritysV0VGGATGtGGGtGGMR);
  closure #1 in MultisportMedallionView.body.getter(v33, v7 + *(v15 + 44));
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy7SwiftUI4EdgeO3SetVGMd, &_ss23_ContiguousArrayStorageCy7SwiftUI4EdgeO3SetVGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20CB5EA80;
  v17 = static Edge.Set.top.getter();
  *(inited + 32) = v17;
  v18 = static Edge.Set.bottom.getter();
  *(inited + 33) = v18;
  v19 = static Edge.Set.leading.getter();
  *(inited + 34) = v19;
  v20 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v17)
  {
    v20 = Edge.Set.init(rawValue:)();
  }

  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v18)
  {
    v20 = Edge.Set.init(rawValue:)();
  }

  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v19)
  {
    v20 = Edge.Set.init(rawValue:)();
  }

  EdgeInsets.init(_all:)();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  outlined init with take of HStack<TupleView<(ModifiedContent<ModifiedContent<ZStack<TupleView<(MedallionCircleView, ModifiedContent<WorkoutFigure, AccessibilityAttachmentModifier>)>>, _TraitWritingModifier<ZIndexTraitKey>>, _FlipForRTLEffect>, _ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<MedallionCircleView, _TraitWritingModifier<ZIndexTraitKey>>, AccessibilityAttachmentModifier>?, MedallionCircleView?)>, ZStack<TupleView<(ModifiedContent<ModifiedContent<Capsule, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _PaddingLayout>, _TraitWritingModifier<LayoutPriorityTraitKey>>, AccessibilityAttachmentModifier>)>>>)>>(v7, v10, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA6ZStackVyAEy07WorkoutB0015MedallionCircleE0V_AGyAJ0I6FigureVAA31AccessibilityAttachmentModifierVGtGGAA013_TraitWritingO0VyAA06ZIndexP3KeyVGGAA17_FlipForRTLEffectVG_AA012_ConditionalG0VyAEyAGyAGyAlXGAPGSg_ALSgtGAIyAEyAGyAGyAA7CapsuleVAA012_EnvironmentsqO0VyAA5ColorVSgGGAA12_FrameLayoutVG_AGyAGyAGyAGyAA4TextVAA14_PaddingLayoutVGA23_GAUyAA014LayoutPrioritypS0VGGAPGtGGGtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA6ZStackVyAEy07WorkoutB0015MedallionCircleE0V_AGyAJ0I6FigureVAA31AccessibilityAttachmentModifierVGtGGAA013_TraitWritingO0VyAA06ZIndexP3KeyVGGAA17_FlipForRTLEffectVG_AA012_ConditionalG0VyAEyAGyAGyAlXGAPGSg_ALSgtGAIyAEyAGyAGyAA7CapsuleVAA012_EnvironmentsqO0VyAA5ColorVSgGGAA12_FrameLayoutVG_AGyAGyAGyAGyAA4TextVAA14_PaddingLayoutVGA23_GAUyAA014LayoutPrioritypS0VGGAPGtGGGtGGMR);
  v29 = &v10[*(v8 + 36)];
  *v29 = v20;
  *(v29 + 1) = v22;
  *(v29 + 2) = v24;
  *(v29 + 3) = v26;
  *(v29 + 4) = v28;
  v29[40] = 0;
  static AccessibilityChildBehavior.combine.getter();
  lazy protocol witness table accessor for type ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ZStack<TupleView<(MedallionCircleView, ModifiedContent<WorkoutFigure, AccessibilityAttachmentModifier>)>>, _TraitWritingModifier<ZIndexTraitKey>>, _FlipForRTLEffect>, _ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<MedallionCircleView, _TraitWritingModifier<ZIndexTraitKey>>, AccessibilityAttachmentModifier>?, MedallionCircleView?)>, ZStack<TupleView<(ModifiedContent<ModifiedContent<Capsule, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _PaddingLayout>, _TraitWritingModifier<LayoutPriorityTraitKey>>, AccessibilityAttachmentModifier>)>>>)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
  View.accessibilityElement(children:)();
  (*(v2 + 8))(v4, v32);
  return outlined destroy of ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ZStack<TupleView<(MedallionCircleView, ModifiedContent<WorkoutFigure, AccessibilityAttachmentModifier>)>>, _TraitWritingModifier<ZIndexTraitKey>>, _FlipForRTLEffect>, _ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<MedallionCircleView, _TraitWritingModifier<ZIndexTraitKey>>, AccessibilityAttachmentModifier>?, MedallionCircleView?)>, ZStack<TupleView<(ModifiedContent<ModifiedContent<Capsule, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _PaddingLayout>, _TraitWritingModifier<LayoutPriorityTraitKey>>, AccessibilityAttachmentModifier>)>>>)>>, _PaddingLayout>(v10, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyACyAA6ZStackVyAGy07WorkoutB0015MedallionCircleG0V_ACyAJ0I6FigureVAA31AccessibilityAttachmentModifierVGtGGAA013_TraitWritingO0VyAA06ZIndexP3KeyVGGAA17_FlipForRTLEffectVG_AA012_ConditionalD0VyAGyACyACyAlXGAPGSg_ALSgtGAIyAGyACyACyAA7CapsuleVAA012_EnvironmentsqO0VyAA5ColorVSgGGAA12_FrameLayoutVG_ACyACyACyACyAA4TextVAA14_PaddingLayoutVGA23_GAUyAA014LayoutPrioritypS0VGGAPGtGGGtGGA23_GMd, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyACyAA6ZStackVyAGy07WorkoutB0015MedallionCircleG0V_ACyAJ0I6FigureVAA31AccessibilityAttachmentModifierVGtGGAA013_TraitWritingO0VyAA06ZIndexP3KeyVGGAA17_FlipForRTLEffectVG_AA012_ConditionalD0VyAGyACyACyAlXGAPGSg_ALSgtGAIyAGyACyACyAA7CapsuleVAA012_EnvironmentsqO0VyAA5ColorVSgGGAA12_FrameLayoutVG_ACyACyACyACyAA4TextVAA14_PaddingLayoutVGA23_GAUyAA014LayoutPrioritypS0VGGAPGtGGGtGGA23_GMR);
}

uint64_t closure #1 in MultisportMedallionView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v83 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ZStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA7CapsuleVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12_FrameLayoutVG_AGyAGyAGyAGyAA4TextVAA08_PaddingO0VGAWGAA06_TraitkL0VyAA0o8PriorityrJ0VGGAA023AccessibilityAttachmentL0VGtGGMd, &_s7SwiftUI6ZStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA7CapsuleVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12_FrameLayoutVG_AGyAGyAGyAGyAA4TextVAA08_PaddingO0VGAWGAA06_TraitkL0VyAA0o8PriorityrJ0VGGAA023AccessibilityAttachmentL0VGtGGMR);
  MEMORY[0x28223BE20](v3);
  v5 = (&v70 - v4);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA9TupleViewVyAA08ModifiedD0VyAIy07WorkoutB0015MedallionCircleG0VAA21_TraitWritingModifierVyAA06ZIndexL3KeyVGGAA023AccessibilityAttachmentN0VGSg_ALSgtGAA6ZStackVyAGyAIyAIyAA7CapsuleVAA012_EnvironmentpmN0VyAA5ColorVSgGGAA12_FrameLayoutVG_AIyAIyAIyAIyAA4TextVAA08_PaddingX0VGA14_GANyAA0x8PrioritylP0VGGATGtGG_GMd, &_s7SwiftUI19_ConditionalContentV7StorageOyAA9TupleViewVyAA08ModifiedD0VyAIy07WorkoutB0015MedallionCircleG0VAA21_TraitWritingModifierVyAA06ZIndexL3KeyVGGAA023AccessibilityAttachmentN0VGSg_ALSgtGAA6ZStackVyAGyAIyAIyAA7CapsuleVAA012_EnvironmentpmN0VyAA5ColorVSgGGAA12_FrameLayoutVG_AIyAIyAIyAIyAA4TextVAA08_PaddingX0VGA14_GANyAA0x8PrioritylP0VGGATGtGG_GMR);
  MEMORY[0x28223BE20](v6);
  v8 = &v70 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEy07WorkoutB0015MedallionCircleD0VAA21_TraitWritingModifierVyAA06ZIndexJ3KeyVGGAA023AccessibilityAttachmentL0VGSg_AHSgtGMd, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEy07WorkoutB0015MedallionCircleD0VAA21_TraitWritingModifierVyAA06ZIndexJ3KeyVGGAA023AccessibilityAttachmentL0VGSg_AHSgtGMR);
  MEMORY[0x28223BE20](v9);
  v80 = &v70 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACy07WorkoutB019MedallionCircleViewVAA21_TraitWritingModifierVyAA06ZIndexI3KeyVGGAA023AccessibilityAttachmentK0VGMd, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB019MedallionCircleViewVAA21_TraitWritingModifierVyAA06ZIndexI3KeyVGGAA023AccessibilityAttachmentK0VGMR);
  v77 = *(v11 - 8);
  v78 = v11;
  MEMORY[0x28223BE20](v11);
  v76 = &v70 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACy07WorkoutB019MedallionCircleViewVAA21_TraitWritingModifierVyAA06ZIndexI3KeyVGGAA023AccessibilityAttachmentK0VGSgMd, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB019MedallionCircleViewVAA21_TraitWritingModifierVyAA06ZIndexI3KeyVGGAA023AccessibilityAttachmentK0VGSgMR);
  MEMORY[0x28223BE20](v13 - 8);
  v79 = &v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v70 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA9TupleViewVyAA08ModifiedD0VyAGy07WorkoutB0015MedallionCircleF0VAA21_TraitWritingModifierVyAA06ZIndexK3KeyVGGAA023AccessibilityAttachmentM0VGSg_AJSgtGAA6ZStackVyAEyAGyAGyAA7CapsuleVAA012_EnvironmentolM0VyAA5ColorVSgGGAA12_FrameLayoutVG_AGyAGyAGyAGyAA4TextVAA08_PaddingW0VGA12_GALyAA0w8PrioritykO0VGGARGtGGGMd, &_s7SwiftUI19_ConditionalContentVyAA9TupleViewVyAA08ModifiedD0VyAGy07WorkoutB0015MedallionCircleF0VAA21_TraitWritingModifierVyAA06ZIndexK3KeyVGGAA023AccessibilityAttachmentM0VGSg_AJSgtGAA6ZStackVyAEyAGyAGyAA7CapsuleVAA012_EnvironmentolM0VyAA5ColorVSgGGAA12_FrameLayoutVG_AGyAGyAGyAGyAA4TextVAA08_PaddingW0VGA12_GALyAA0w8PrioritykO0VGGARGtGGGMR);
  MEMORY[0x28223BE20](v18 - 8);
  v82 = &v70 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v70 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6ZStackVyAA9TupleViewVy07WorkoutB0015MedallionCircleG0V_ACyAH0H6FigureVAA31AccessibilityAttachmentModifierVGtGGAA013_TraitWritingN0VyAA06ZIndexO3KeyVGGAA17_FlipForRTLEffectVGMd, &_s7SwiftUI15ModifiedContentVyACyAA6ZStackVyAA9TupleViewVy07WorkoutB0015MedallionCircleG0V_ACyAH0H6FigureVAA31AccessibilityAttachmentModifierVGtGGAA013_TraitWritingN0VyAA06ZIndexO3KeyVGGAA17_FlipForRTLEffectVGMR);
  v24 = v23 - 8;
  MEMORY[0x28223BE20](v23);
  v81 = &v70 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v28 = (&v70 - v27);
  *v28 = static Alignment.center.getter();
  v28[1] = v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_ZStackLayoutVAA05TupleD0Vy07WorkoutB0015MedallionCircleD0V_AA15ModifiedContentVyAJ0I6FigureVAA31AccessibilityAttachmentModifierVGtGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_ZStackLayoutVAA05TupleD0Vy07WorkoutB0015MedallionCircleD0V_AA15ModifiedContentVyAJ0I6FigureVAA31AccessibilityAttachmentModifierVGtGGMR);
  closure #1 in closure #1 in MultisportMedallionView.body.getter(a1, v28 + *(v30 + 44));
  *(v28 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ZStackVyAA9TupleViewVy07WorkoutB0015MedallionCircleG0V_ACyAH0H6FigureVAA31AccessibilityAttachmentModifierVGtGGAA013_TraitWritingN0VyAA06ZIndexO3KeyVGGMd, &_s7SwiftUI15ModifiedContentVyAA6ZStackVyAA9TupleViewVy07WorkoutB0015MedallionCircleG0V_ACyAH0H6FigureVAA31AccessibilityAttachmentModifierVGtGGAA013_TraitWritingN0VyAA06ZIndexO3KeyVGGMR) + 36)) = 0x3FF0000000000000;
  v31 = *(v24 + 44);
  v32 = a1;
  *(v28 + v31) = 1;
  v33 = *(a1 + 48);
  if (v33 <= 2)
  {
    v73 = v6;
    v74 = v9;
    v72 = v8;
    v75 = v3;
    if (v33 < 1)
    {
      v36 = v17;
      (*(v77 + 56))(v17, 1, 1, v78);
    }

    else
    {
      v34 = *(v32 + 32);
      v35 = v34 + *(v32 + 72);
      v36 = v17;
      if (one-time initialization token for secondaryPlatterColor != -1)
      {
        swift_once();
      }

      v70 = v32;
      v37 = static MultiSportWorkoutConfiguration.secondaryPlatterColor;
      v38 = Color.init(uiColor:)();
      v86 = v35;
      v87 = v34;
      v88 = v38;
      v89 = 0x3FE8000000000000;
      if (one-time initialization token for WorkoutUIBundle != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v39 = WorkoutUIBundle.super.isa;
      v90._object = 0xE000000000000000;
      v40.value._countAndFlagsBits = 0x617A696C61636F4CLL;
      v40.value._object = 0xEB00000000656C62;
      v41._object = 0x800000020CB97020;
      v41._countAndFlagsBits = 0xD000000000000017;
      v42._countAndFlagsBits = 0;
      v42._object = 0xE000000000000000;
      v90._countAndFlagsBits = 0;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v41, v40, v39, v42, v90);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v43 = swift_allocObject();
      v44 = MEMORY[0x277D83B88];
      *(v43 + 16) = xmmword_20CB5DA70;
      v45 = MEMORY[0x277D83C10];
      *(v43 + 56) = v44;
      *(v43 + 64) = v45;
      *(v43 + 32) = v33;
      v46 = static String.localizedStringWithFormat(_:_:)();
      v48 = v47;

      v84 = v46;
      v85 = v48;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB019MedallionCircleViewVAA21_TraitWritingModifierVyAA06ZIndexI3KeyVGGMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB019MedallionCircleViewVAA21_TraitWritingModifierVyAA06ZIndexI3KeyVGGMR);
      lazy protocol witness table accessor for type ModifiedContent<MedallionCircleView, _TraitWritingModifier<ZIndexTraitKey>> and conformance <> ModifiedContent<A, B>();
      lazy protocol witness table accessor for type String and conformance String();
      v49 = v76;
      View.accessibilityLabel<A>(_:)();

      outlined init with take of HStack<TupleView<(ModifiedContent<ModifiedContent<ZStack<TupleView<(MedallionCircleView, ModifiedContent<WorkoutFigure, AccessibilityAttachmentModifier>)>>, _TraitWritingModifier<ZIndexTraitKey>>, _FlipForRTLEffect>, _ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<MedallionCircleView, _TraitWritingModifier<ZIndexTraitKey>>, AccessibilityAttachmentModifier>?, MedallionCircleView?)>, ZStack<TupleView<(ModifiedContent<ModifiedContent<Capsule, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _PaddingLayout>, _TraitWritingModifier<LayoutPriorityTraitKey>>, AccessibilityAttachmentModifier>)>>>)>>(v49, v36, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB019MedallionCircleViewVAA21_TraitWritingModifierVyAA06ZIndexI3KeyVGGAA023AccessibilityAttachmentK0VGMd, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB019MedallionCircleViewVAA21_TraitWritingModifierVyAA06ZIndexI3KeyVGGAA023AccessibilityAttachmentK0VGMR);
      (*(v77 + 56))(v36, 0, 1, v78);
      if (v33 == 2)
      {
        v50 = *(v70 + 32);
        v51 = *(v70 + 72);
        v52 = v72;
        if (one-time initialization token for tertiaryPlatterColor != -1)
        {
          swift_once();
        }

        v53 = v50 + v51;
        v54 = static MultiSportWorkoutConfiguration.tertiaryPlatterColor;
        v55 = Color.init(uiColor:)();
        v56 = v50;

        goto LABEL_14;
      }
    }

    v56 = 0.0;
    v55 = 0;
    v53 = 0.0;
    v52 = v72;
LABEL_14:
    v71 = v36;
    v62 = v79;
    outlined init with copy of ZStack<TupleView<(ModifiedContent<ModifiedContent<Capsule, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _PaddingLayout>, _TraitWritingModifier<LayoutPriorityTraitKey>>, AccessibilityAttachmentModifier>)>>(v36, v79, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB019MedallionCircleViewVAA21_TraitWritingModifierVyAA06ZIndexI3KeyVGGAA023AccessibilityAttachmentK0VGSgMd, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB019MedallionCircleViewVAA21_TraitWritingModifierVyAA06ZIndexI3KeyVGGAA023AccessibilityAttachmentK0VGSgMR);
    v63 = v80;
    outlined init with copy of ZStack<TupleView<(ModifiedContent<ModifiedContent<Capsule, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _PaddingLayout>, _TraitWritingModifier<LayoutPriorityTraitKey>>, AccessibilityAttachmentModifier>)>>(v62, v80, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB019MedallionCircleViewVAA21_TraitWritingModifierVyAA06ZIndexI3KeyVGGAA023AccessibilityAttachmentK0VGSgMd, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB019MedallionCircleViewVAA21_TraitWritingModifierVyAA06ZIndexI3KeyVGGAA023AccessibilityAttachmentK0VGSgMR);
    v64 = v63 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACy07WorkoutB019MedallionCircleViewVAA21_TraitWritingModifierVyAA06ZIndexI3KeyVGGAA023AccessibilityAttachmentK0VGSg_AFSgtMd, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB019MedallionCircleViewVAA21_TraitWritingModifierVyAA06ZIndexI3KeyVGGAA023AccessibilityAttachmentK0VGSg_AFSgtMR) + 48);
    *v64 = v53;
    *(v64 + 8) = v56;
    *(v64 + 16) = v55;
    outlined destroy of ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ZStack<TupleView<(MedallionCircleView, ModifiedContent<WorkoutFigure, AccessibilityAttachmentModifier>)>>, _TraitWritingModifier<ZIndexTraitKey>>, _FlipForRTLEffect>, _ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<MedallionCircleView, _TraitWritingModifier<ZIndexTraitKey>>, AccessibilityAttachmentModifier>?, MedallionCircleView?)>, ZStack<TupleView<(ModifiedContent<ModifiedContent<Capsule, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _PaddingLayout>, _TraitWritingModifier<LayoutPriorityTraitKey>>, AccessibilityAttachmentModifier>)>>>)>>, _PaddingLayout>(v62, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB019MedallionCircleViewVAA21_TraitWritingModifierVyAA06ZIndexI3KeyVGGAA023AccessibilityAttachmentK0VGSgMd, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB019MedallionCircleViewVAA21_TraitWritingModifierVyAA06ZIndexI3KeyVGGAA023AccessibilityAttachmentK0VGSgMR);
    outlined init with copy of ZStack<TupleView<(ModifiedContent<ModifiedContent<Capsule, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _PaddingLayout>, _TraitWritingModifier<LayoutPriorityTraitKey>>, AccessibilityAttachmentModifier>)>>(v63, v52, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEy07WorkoutB0015MedallionCircleD0VAA21_TraitWritingModifierVyAA06ZIndexJ3KeyVGGAA023AccessibilityAttachmentL0VGSg_AHSgtGMd, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEy07WorkoutB0015MedallionCircleD0VAA21_TraitWritingModifierVyAA06ZIndexJ3KeyVGGAA023AccessibilityAttachmentL0VGSg_AHSgtGMR);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<ModifiedContent<ZStack<TupleView<(MedallionCircleView, ModifiedContent<WorkoutFigure, AccessibilityAttachmentModifier>)>>, _TraitWritingModifier<ZIndexTraitKey>>, _FlipForRTLEffect>, _ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<MedallionCircleView, _TraitWritingModifier<ZIndexTraitKey>>, AccessibilityAttachmentModifier>?, MedallionCircleView?)>, ZStack<TupleView<(ModifiedContent<ModifiedContent<Capsule, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _PaddingLayout>, _TraitWritingModifier<LayoutPriorityTraitKey>>, AccessibilityAttachmentModifier>)>>>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type TupleView<(ModifiedContent<ModifiedContent<MedallionCircleView, _TraitWritingModifier<ZIndexTraitKey>>, AccessibilityAttachmentModifier>?, MedallionCircleView?)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEy07WorkoutB0015MedallionCircleD0VAA21_TraitWritingModifierVyAA06ZIndexJ3KeyVGGAA023AccessibilityAttachmentL0VGSg_AHSgtGMd, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEy07WorkoutB0015MedallionCircleD0VAA21_TraitWritingModifierVyAA06ZIndexJ3KeyVGGAA023AccessibilityAttachmentL0VGSg_AHSgtGMR, MEMORY[0x277CE14C0]);
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<ModifiedContent<ZStack<TupleView<(MedallionCircleView, ModifiedContent<WorkoutFigure, AccessibilityAttachmentModifier>)>>, _TraitWritingModifier<ZIndexTraitKey>>, _FlipForRTLEffect>, _ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<MedallionCircleView, _TraitWritingModifier<ZIndexTraitKey>>, AccessibilityAttachmentModifier>?, MedallionCircleView?)>, ZStack<TupleView<(ModifiedContent<ModifiedContent<Capsule, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _PaddingLayout>, _TraitWritingModifier<LayoutPriorityTraitKey>>, AccessibilityAttachmentModifier>)>>>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type ZStack<TupleView<(ModifiedContent<ModifiedContent<Capsule, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _PaddingLayout>, _TraitWritingModifier<LayoutPriorityTraitKey>>, AccessibilityAttachmentModifier>)>> and conformance ZStack<A>, &_s7SwiftUI6ZStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA7CapsuleVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12_FrameLayoutVG_AGyAGyAGyAGyAA4TextVAA08_PaddingO0VGAWGAA06_TraitkL0VyAA0o8PriorityrJ0VGGAA023AccessibilityAttachmentL0VGtGGMd, &_s7SwiftUI6ZStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA7CapsuleVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12_FrameLayoutVG_AGyAGyAGyAGyAA4TextVAA08_PaddingO0VGAWGAA06_TraitkL0VyAA0o8PriorityrJ0VGGAA023AccessibilityAttachmentL0VGtGGMR, MEMORY[0x277CE11A8]);
    _ConditionalContent<>.init(storage:)();

    outlined destroy of ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ZStack<TupleView<(MedallionCircleView, ModifiedContent<WorkoutFigure, AccessibilityAttachmentModifier>)>>, _TraitWritingModifier<ZIndexTraitKey>>, _FlipForRTLEffect>, _ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<MedallionCircleView, _TraitWritingModifier<ZIndexTraitKey>>, AccessibilityAttachmentModifier>?, MedallionCircleView?)>, ZStack<TupleView<(ModifiedContent<ModifiedContent<Capsule, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _PaddingLayout>, _TraitWritingModifier<LayoutPriorityTraitKey>>, AccessibilityAttachmentModifier>)>>>)>>, _PaddingLayout>(v63, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEy07WorkoutB0015MedallionCircleD0VAA21_TraitWritingModifierVyAA06ZIndexJ3KeyVGGAA023AccessibilityAttachmentL0VGSg_AHSgtGMd, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEy07WorkoutB0015MedallionCircleD0VAA21_TraitWritingModifierVyAA06ZIndexJ3KeyVGGAA023AccessibilityAttachmentL0VGSg_AHSgtGMR);
    v59 = v71;
    v60 = &_s7SwiftUI15ModifiedContentVyACy07WorkoutB019MedallionCircleViewVAA21_TraitWritingModifierVyAA06ZIndexI3KeyVGGAA023AccessibilityAttachmentK0VGSgMd;
    v61 = &_s7SwiftUI15ModifiedContentVyACy07WorkoutB019MedallionCircleViewVAA21_TraitWritingModifierVyAA06ZIndexI3KeyVGGAA023AccessibilityAttachmentK0VGSgMR;
    goto LABEL_15;
  }

  *v5 = static Alignment.center.getter();
  v5[1] = v57;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_ZStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAKyAA7CapsuleVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA06_FrameG0VG_AKyAKyAKyAKyAA4TextVAA08_PaddingG0VGA_GAA06_TraitnO0VyAA0g8PrioritytM0VGGAA023AccessibilityAttachmentO0VGtGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_ZStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAKyAA7CapsuleVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA06_FrameG0VG_AKyAKyAKyAKyAA4TextVAA08_PaddingG0VGA_GAA06_TraitnO0VyAA0g8PrioritytM0VGGAA023AccessibilityAttachmentO0VGtGGMR);
  closure #2 in closure #1 in MultisportMedallionView.body.getter(v32, v5 + *(v58 + 44));
  outlined init with copy of ZStack<TupleView<(ModifiedContent<ModifiedContent<Capsule, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _PaddingLayout>, _TraitWritingModifier<LayoutPriorityTraitKey>>, AccessibilityAttachmentModifier>)>>(v5, v8, &_s7SwiftUI6ZStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA7CapsuleVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12_FrameLayoutVG_AGyAGyAGyAGyAA4TextVAA08_PaddingO0VGAWGAA06_TraitkL0VyAA0o8PriorityrJ0VGGAA023AccessibilityAttachmentL0VGtGGMd, &_s7SwiftUI6ZStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA7CapsuleVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12_FrameLayoutVG_AGyAGyAGyAGyAA4TextVAA08_PaddingO0VGAWGAA06_TraitkL0VyAA0o8PriorityrJ0VGGAA023AccessibilityAttachmentL0VGtGGMR);
  swift_storeEnumTagMultiPayload();
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<ModifiedContent<ZStack<TupleView<(MedallionCircleView, ModifiedContent<WorkoutFigure, AccessibilityAttachmentModifier>)>>, _TraitWritingModifier<ZIndexTraitKey>>, _FlipForRTLEffect>, _ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<MedallionCircleView, _TraitWritingModifier<ZIndexTraitKey>>, AccessibilityAttachmentModifier>?, MedallionCircleView?)>, ZStack<TupleView<(ModifiedContent<ModifiedContent<Capsule, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _PaddingLayout>, _TraitWritingModifier<LayoutPriorityTraitKey>>, AccessibilityAttachmentModifier>)>>>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type TupleView<(ModifiedContent<ModifiedContent<MedallionCircleView, _TraitWritingModifier<ZIndexTraitKey>>, AccessibilityAttachmentModifier>?, MedallionCircleView?)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEy07WorkoutB0015MedallionCircleD0VAA21_TraitWritingModifierVyAA06ZIndexJ3KeyVGGAA023AccessibilityAttachmentL0VGSg_AHSgtGMd, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEy07WorkoutB0015MedallionCircleD0VAA21_TraitWritingModifierVyAA06ZIndexJ3KeyVGGAA023AccessibilityAttachmentL0VGSg_AHSgtGMR, MEMORY[0x277CE14C0]);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<ModifiedContent<ZStack<TupleView<(MedallionCircleView, ModifiedContent<WorkoutFigure, AccessibilityAttachmentModifier>)>>, _TraitWritingModifier<ZIndexTraitKey>>, _FlipForRTLEffect>, _ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<MedallionCircleView, _TraitWritingModifier<ZIndexTraitKey>>, AccessibilityAttachmentModifier>?, MedallionCircleView?)>, ZStack<TupleView<(ModifiedContent<ModifiedContent<Capsule, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _PaddingLayout>, _TraitWritingModifier<LayoutPriorityTraitKey>>, AccessibilityAttachmentModifier>)>>>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type ZStack<TupleView<(ModifiedContent<ModifiedContent<Capsule, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _PaddingLayout>, _TraitWritingModifier<LayoutPriorityTraitKey>>, AccessibilityAttachmentModifier>)>> and conformance ZStack<A>, &_s7SwiftUI6ZStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA7CapsuleVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12_FrameLayoutVG_AGyAGyAGyAGyAA4TextVAA08_PaddingO0VGAWGAA06_TraitkL0VyAA0o8PriorityrJ0VGGAA023AccessibilityAttachmentL0VGtGGMd, &_s7SwiftUI6ZStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA7CapsuleVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12_FrameLayoutVG_AGyAGyAGyAGyAA4TextVAA08_PaddingO0VGAWGAA06_TraitkL0VyAA0o8PriorityrJ0VGGAA023AccessibilityAttachmentL0VGtGGMR, MEMORY[0x277CE11A8]);
  _ConditionalContent<>.init(storage:)();
  v59 = v5;
  v60 = &_s7SwiftUI6ZStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA7CapsuleVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12_FrameLayoutVG_AGyAGyAGyAGyAA4TextVAA08_PaddingO0VGAWGAA06_TraitkL0VyAA0o8PriorityrJ0VGGAA023AccessibilityAttachmentL0VGtGGMd;
  v61 = &_s7SwiftUI6ZStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA7CapsuleVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12_FrameLayoutVG_AGyAGyAGyAGyAA4TextVAA08_PaddingO0VGAWGAA06_TraitkL0VyAA0o8PriorityrJ0VGGAA023AccessibilityAttachmentL0VGtGGMR;
LABEL_15:
  outlined destroy of ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ZStack<TupleView<(MedallionCircleView, ModifiedContent<WorkoutFigure, AccessibilityAttachmentModifier>)>>, _TraitWritingModifier<ZIndexTraitKey>>, _FlipForRTLEffect>, _ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<MedallionCircleView, _TraitWritingModifier<ZIndexTraitKey>>, AccessibilityAttachmentModifier>?, MedallionCircleView?)>, ZStack<TupleView<(ModifiedContent<ModifiedContent<Capsule, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _PaddingLayout>, _TraitWritingModifier<LayoutPriorityTraitKey>>, AccessibilityAttachmentModifier>)>>>)>>, _PaddingLayout>(v59, v60, v61);
  v65 = v83;
  v66 = v81;
  outlined init with copy of ZStack<TupleView<(ModifiedContent<ModifiedContent<Capsule, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _PaddingLayout>, _TraitWritingModifier<LayoutPriorityTraitKey>>, AccessibilityAttachmentModifier>)>>(v28, v81, &_s7SwiftUI15ModifiedContentVyACyAA6ZStackVyAA9TupleViewVy07WorkoutB0015MedallionCircleG0V_ACyAH0H6FigureVAA31AccessibilityAttachmentModifierVGtGGAA013_TraitWritingN0VyAA06ZIndexO3KeyVGGAA17_FlipForRTLEffectVGMd, &_s7SwiftUI15ModifiedContentVyACyAA6ZStackVyAA9TupleViewVy07WorkoutB0015MedallionCircleG0V_ACyAH0H6FigureVAA31AccessibilityAttachmentModifierVGtGGAA013_TraitWritingN0VyAA06ZIndexO3KeyVGGAA17_FlipForRTLEffectVGMR);
  v67 = v82;
  outlined init with copy of ZStack<TupleView<(ModifiedContent<ModifiedContent<Capsule, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _PaddingLayout>, _TraitWritingModifier<LayoutPriorityTraitKey>>, AccessibilityAttachmentModifier>)>>(v22, v82, &_s7SwiftUI19_ConditionalContentVyAA9TupleViewVyAA08ModifiedD0VyAGy07WorkoutB0015MedallionCircleF0VAA21_TraitWritingModifierVyAA06ZIndexK3KeyVGGAA023AccessibilityAttachmentM0VGSg_AJSgtGAA6ZStackVyAEyAGyAGyAA7CapsuleVAA012_EnvironmentolM0VyAA5ColorVSgGGAA12_FrameLayoutVG_AGyAGyAGyAGyAA4TextVAA08_PaddingW0VGA12_GALyAA0w8PrioritykO0VGGARGtGGGMd, &_s7SwiftUI19_ConditionalContentVyAA9TupleViewVyAA08ModifiedD0VyAGy07WorkoutB0015MedallionCircleF0VAA21_TraitWritingModifierVyAA06ZIndexK3KeyVGGAA023AccessibilityAttachmentM0VGSg_AJSgtGAA6ZStackVyAEyAGyAGyAA7CapsuleVAA012_EnvironmentolM0VyAA5ColorVSgGGAA12_FrameLayoutVG_AGyAGyAGyAGyAA4TextVAA08_PaddingW0VGA12_GALyAA0w8PrioritykO0VGGARGtGGGMR);
  outlined init with copy of ZStack<TupleView<(ModifiedContent<ModifiedContent<Capsule, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _PaddingLayout>, _TraitWritingModifier<LayoutPriorityTraitKey>>, AccessibilityAttachmentModifier>)>>(v66, v65, &_s7SwiftUI15ModifiedContentVyACyAA6ZStackVyAA9TupleViewVy07WorkoutB0015MedallionCircleG0V_ACyAH0H6FigureVAA31AccessibilityAttachmentModifierVGtGGAA013_TraitWritingN0VyAA06ZIndexO3KeyVGGAA17_FlipForRTLEffectVGMd, &_s7SwiftUI15ModifiedContentVyACyAA6ZStackVyAA9TupleViewVy07WorkoutB0015MedallionCircleG0V_ACyAH0H6FigureVAA31AccessibilityAttachmentModifierVGtGGAA013_TraitWritingN0VyAA06ZIndexO3KeyVGGAA17_FlipForRTLEffectVGMR);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6ZStackVyAA9TupleViewVy07WorkoutB0015MedallionCircleG0V_ACyAH0H6FigureVAA31AccessibilityAttachmentModifierVGtGGAA013_TraitWritingN0VyAA06ZIndexO3KeyVGGAA17_FlipForRTLEffectVG_AA012_ConditionalD0VyAGyACyACyAjVGANGSg_AJSgtGAEyAGyACyACyAA7CapsuleVAA012_EnvironmentrpN0VyAA5ColorVSgGGAA12_FrameLayoutVG_ACyACyACyACyAA4TextVAA14_PaddingLayoutVGA21_GASyAA014LayoutPriorityoR0VGGANGtGGGtMd, &_s7SwiftUI15ModifiedContentVyACyAA6ZStackVyAA9TupleViewVy07WorkoutB0015MedallionCircleG0V_ACyAH0H6FigureVAA31AccessibilityAttachmentModifierVGtGGAA013_TraitWritingN0VyAA06ZIndexO3KeyVGGAA17_FlipForRTLEffectVG_AA012_ConditionalD0VyAGyACyACyAjVGANGSg_AJSgtGAEyAGyACyACyAA7CapsuleVAA012_EnvironmentrpN0VyAA5ColorVSgGGAA12_FrameLayoutVG_ACyACyACyACyAA4TextVAA14_PaddingLayoutVGA21_GASyAA014LayoutPriorityoR0VGGANGtGGGtMR);
  outlined init with copy of ZStack<TupleView<(ModifiedContent<ModifiedContent<Capsule, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _PaddingLayout>, _TraitWritingModifier<LayoutPriorityTraitKey>>, AccessibilityAttachmentModifier>)>>(v67, v65 + *(v68 + 48), &_s7SwiftUI19_ConditionalContentVyAA9TupleViewVyAA08ModifiedD0VyAGy07WorkoutB0015MedallionCircleF0VAA21_TraitWritingModifierVyAA06ZIndexK3KeyVGGAA023AccessibilityAttachmentM0VGSg_AJSgtGAA6ZStackVyAEyAGyAGyAA7CapsuleVAA012_EnvironmentolM0VyAA5ColorVSgGGAA12_FrameLayoutVG_AGyAGyAGyAGyAA4TextVAA08_PaddingW0VGA12_GALyAA0w8PrioritykO0VGGARGtGGGMd, &_s7SwiftUI19_ConditionalContentVyAA9TupleViewVyAA08ModifiedD0VyAGy07WorkoutB0015MedallionCircleF0VAA21_TraitWritingModifierVyAA06ZIndexK3KeyVGGAA023AccessibilityAttachmentM0VGSg_AJSgtGAA6ZStackVyAEyAGyAGyAA7CapsuleVAA012_EnvironmentolM0VyAA5ColorVSgGGAA12_FrameLayoutVG_AGyAGyAGyAGyAA4TextVAA08_PaddingW0VGA12_GALyAA0w8PrioritykO0VGGARGtGGGMR);
  outlined destroy of ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ZStack<TupleView<(MedallionCircleView, ModifiedContent<WorkoutFigure, AccessibilityAttachmentModifier>)>>, _TraitWritingModifier<ZIndexTraitKey>>, _FlipForRTLEffect>, _ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<MedallionCircleView, _TraitWritingModifier<ZIndexTraitKey>>, AccessibilityAttachmentModifier>?, MedallionCircleView?)>, ZStack<TupleView<(ModifiedContent<ModifiedContent<Capsule, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _PaddingLayout>, _TraitWritingModifier<LayoutPriorityTraitKey>>, AccessibilityAttachmentModifier>)>>>)>>, _PaddingLayout>(v22, &_s7SwiftUI19_ConditionalContentVyAA9TupleViewVyAA08ModifiedD0VyAGy07WorkoutB0015MedallionCircleF0VAA21_TraitWritingModifierVyAA06ZIndexK3KeyVGGAA023AccessibilityAttachmentM0VGSg_AJSgtGAA6ZStackVyAEyAGyAGyAA7CapsuleVAA012_EnvironmentolM0VyAA5ColorVSgGGAA12_FrameLayoutVG_AGyAGyAGyAGyAA4TextVAA08_PaddingW0VGA12_GALyAA0w8PrioritykO0VGGARGtGGGMd, &_s7SwiftUI19_ConditionalContentVyAA9TupleViewVyAA08ModifiedD0VyAGy07WorkoutB0015MedallionCircleF0VAA21_TraitWritingModifierVyAA06ZIndexK3KeyVGGAA023AccessibilityAttachmentM0VGSg_AJSgtGAA6ZStackVyAEyAGyAGyAA7CapsuleVAA012_EnvironmentolM0VyAA5ColorVSgGGAA12_FrameLayoutVG_AGyAGyAGyAGyAA4TextVAA08_PaddingW0VGA12_GALyAA0w8PrioritykO0VGGARGtGGGMR);
  outlined destroy of ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ZStack<TupleView<(MedallionCircleView, ModifiedContent<WorkoutFigure, AccessibilityAttachmentModifier>)>>, _TraitWritingModifier<ZIndexTraitKey>>, _FlipForRTLEffect>, _ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<MedallionCircleView, _TraitWritingModifier<ZIndexTraitKey>>, AccessibilityAttachmentModifier>?, MedallionCircleView?)>, ZStack<TupleView<(ModifiedContent<ModifiedContent<Capsule, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _PaddingLayout>, _TraitWritingModifier<LayoutPriorityTraitKey>>, AccessibilityAttachmentModifier>)>>>)>>, _PaddingLayout>(v28, &_s7SwiftUI15ModifiedContentVyACyAA6ZStackVyAA9TupleViewVy07WorkoutB0015MedallionCircleG0V_ACyAH0H6FigureVAA31AccessibilityAttachmentModifierVGtGGAA013_TraitWritingN0VyAA06ZIndexO3KeyVGGAA17_FlipForRTLEffectVGMd, &_s7SwiftUI15ModifiedContentVyACyAA6ZStackVyAA9TupleViewVy07WorkoutB0015MedallionCircleG0V_ACyAH0H6FigureVAA31AccessibilityAttachmentModifierVGtGGAA013_TraitWritingN0VyAA06ZIndexO3KeyVGGAA17_FlipForRTLEffectVGMR);
  outlined destroy of ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ZStack<TupleView<(MedallionCircleView, ModifiedContent<WorkoutFigure, AccessibilityAttachmentModifier>)>>, _TraitWritingModifier<ZIndexTraitKey>>, _FlipForRTLEffect>, _ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<MedallionCircleView, _TraitWritingModifier<ZIndexTraitKey>>, AccessibilityAttachmentModifier>?, MedallionCircleView?)>, ZStack<TupleView<(ModifiedContent<ModifiedContent<Capsule, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _PaddingLayout>, _TraitWritingModifier<LayoutPriorityTraitKey>>, AccessibilityAttachmentModifier>)>>>)>>, _PaddingLayout>(v67, &_s7SwiftUI19_ConditionalContentVyAA9TupleViewVyAA08ModifiedD0VyAGy07WorkoutB0015MedallionCircleF0VAA21_TraitWritingModifierVyAA06ZIndexK3KeyVGGAA023AccessibilityAttachmentM0VGSg_AJSgtGAA6ZStackVyAEyAGyAGyAA7CapsuleVAA012_EnvironmentolM0VyAA5ColorVSgGGAA12_FrameLayoutVG_AGyAGyAGyAGyAA4TextVAA08_PaddingW0VGA12_GALyAA0w8PrioritykO0VGGARGtGGGMd, &_s7SwiftUI19_ConditionalContentVyAA9TupleViewVyAA08ModifiedD0VyAGy07WorkoutB0015MedallionCircleF0VAA21_TraitWritingModifierVyAA06ZIndexK3KeyVGGAA023AccessibilityAttachmentM0VGSg_AJSgtGAA6ZStackVyAEyAGyAGyAA7CapsuleVAA012_EnvironmentolM0VyAA5ColorVSgGGAA12_FrameLayoutVG_AGyAGyAGyAGyAA4TextVAA08_PaddingW0VGA12_GALyAA0w8PrioritykO0VGGARGtGGGMR);
  return outlined destroy of ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ZStack<TupleView<(MedallionCircleView, ModifiedContent<WorkoutFigure, AccessibilityAttachmentModifier>)>>, _TraitWritingModifier<ZIndexTraitKey>>, _FlipForRTLEffect>, _ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<MedallionCircleView, _TraitWritingModifier<ZIndexTraitKey>>, AccessibilityAttachmentModifier>?, MedallionCircleView?)>, ZStack<TupleView<(ModifiedContent<ModifiedContent<Capsule, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _PaddingLayout>, _TraitWritingModifier<LayoutPriorityTraitKey>>, AccessibilityAttachmentModifier>)>>>)>>, _PaddingLayout>(v66, &_s7SwiftUI15ModifiedContentVyACyAA6ZStackVyAA9TupleViewVy07WorkoutB0015MedallionCircleG0V_ACyAH0H6FigureVAA31AccessibilityAttachmentModifierVGtGGAA013_TraitWritingN0VyAA06ZIndexO3KeyVGGAA17_FlipForRTLEffectVGMd, &_s7SwiftUI15ModifiedContentVyACyAA6ZStackVyAA9TupleViewVy07WorkoutB0015MedallionCircleG0V_ACyAH0H6FigureVAA31AccessibilityAttachmentModifierVGtGGAA013_TraitWritingN0VyAA06ZIndexO3KeyVGGAA17_FlipForRTLEffectVGMR);
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ZStack<TupleView<(MedallionCircleView, ModifiedContent<WorkoutFigure, AccessibilityAttachmentModifier>)>>, _TraitWritingModifier<ZIndexTraitKey>>, _FlipForRTLEffect>, _ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<MedallionCircleView, _TraitWritingModifier<ZIndexTraitKey>>, AccessibilityAttachmentModifier>?, MedallionCircleView?)>, ZStack<TupleView<(ModifiedContent<ModifiedContent<Capsule, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _PaddingLayout>, _TraitWritingModifier<LayoutPriorityTraitKey>>, AccessibilityAttachmentModifier>)>>>)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ZStack<TupleView<(MedallionCircleView, ModifiedContent<WorkoutFigure, AccessibilityAttachmentModifier>)>>, _TraitWritingModifier<ZIndexTraitKey>>, _FlipForRTLEffect>, _ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<MedallionCircleView, _TraitWritingModifier<ZIndexTraitKey>>, AccessibilityAttachmentModifier>?, MedallionCircleView?)>, ZStack<TupleView<(ModifiedContent<ModifiedContent<Capsule, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _PaddingLayout>, _TraitWritingModifier<LayoutPriorityTraitKey>>, AccessibilityAttachmentModifier>)>>>)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ZStack<TupleView<(MedallionCircleView, ModifiedContent<WorkoutFigure, AccessibilityAttachmentModifier>)>>, _TraitWritingModifier<ZIndexTraitKey>>, _FlipForRTLEffect>, _ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<MedallionCircleView, _TraitWritingModifier<ZIndexTraitKey>>, AccessibilityAttachmentModifier>?, MedallionCircleView?)>, ZStack<TupleView<(ModifiedContent<ModifiedContent<Capsule, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _PaddingLayout>, _TraitWritingModifier<LayoutPriorityTraitKey>>, AccessibilityAttachmentModifier>)>>>)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyACyAA6ZStackVyAGy07WorkoutB0015MedallionCircleG0V_ACyAJ0I6FigureVAA31AccessibilityAttachmentModifierVGtGGAA013_TraitWritingO0VyAA06ZIndexP3KeyVGGAA17_FlipForRTLEffectVG_AA012_ConditionalD0VyAGyACyACyAlXGAPGSg_ALSgtGAIyAGyACyACyAA7CapsuleVAA012_EnvironmentsqO0VyAA5ColorVSgGGAA12_FrameLayoutVG_ACyACyACyACyAA4TextVAA14_PaddingLayoutVGA23_GAUyAA014LayoutPrioritypS0VGGAPGtGGGtGGA23_GMd, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyACyAA6ZStackVyAGy07WorkoutB0015MedallionCircleG0V_ACyAJ0I6FigureVAA31AccessibilityAttachmentModifierVGtGGAA013_TraitWritingO0VyAA06ZIndexP3KeyVGGAA17_FlipForRTLEffectVG_AA012_ConditionalD0VyAGyACyACyAlXGAPGSg_ALSgtGAIyAGyACyACyAA7CapsuleVAA012_EnvironmentsqO0VyAA5ColorVSgGGAA12_FrameLayoutVG_ACyACyACyACyAA4TextVAA14_PaddingLayoutVGA23_GAUyAA014LayoutPrioritypS0VGGAPGtGGGtGGA23_GMR);
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<ModifiedContent<ZStack<TupleView<(MedallionCircleView, ModifiedContent<WorkoutFigure, AccessibilityAttachmentModifier>)>>, _TraitWritingModifier<ZIndexTraitKey>>, _FlipForRTLEffect>, _ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<MedallionCircleView, _TraitWritingModifier<ZIndexTraitKey>>, AccessibilityAttachmentModifier>?, MedallionCircleView?)>, ZStack<TupleView<(ModifiedContent<ModifiedContent<Capsule, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _PaddingLayout>, _TraitWritingModifier<LayoutPriorityTraitKey>>, AccessibilityAttachmentModifier>)>>>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type HStack<TupleView<(ModifiedContent<ModifiedContent<ZStack<TupleView<(MedallionCircleView, ModifiedContent<WorkoutFigure, AccessibilityAttachmentModifier>)>>, _TraitWritingModifier<ZIndexTraitKey>>, _FlipForRTLEffect>, _ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<MedallionCircleView, _TraitWritingModifier<ZIndexTraitKey>>, AccessibilityAttachmentModifier>?, MedallionCircleView?)>, ZStack<TupleView<(ModifiedContent<ModifiedContent<Capsule, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _PaddingLayout>, _TraitWritingModifier<LayoutPriorityTraitKey>>, AccessibilityAttachmentModifier>)>>>)>> and conformance HStack<A>, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA6ZStackVyAEy07WorkoutB0015MedallionCircleE0V_AGyAJ0I6FigureVAA31AccessibilityAttachmentModifierVGtGGAA013_TraitWritingO0VyAA06ZIndexP3KeyVGGAA17_FlipForRTLEffectVG_AA012_ConditionalG0VyAEyAGyAGyAlXGAPGSg_ALSgtGAIyAEyAGyAGyAA7CapsuleVAA012_EnvironmentsqO0VyAA5ColorVSgGGAA12_FrameLayoutVG_AGyAGyAGyAGyAA4TextVAA14_PaddingLayoutVGA23_GAUyAA014LayoutPrioritypS0VGGAPGtGGGtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA6ZStackVyAEy07WorkoutB0015MedallionCircleE0V_AGyAJ0I6FigureVAA31AccessibilityAttachmentModifierVGtGGAA013_TraitWritingO0VyAA06ZIndexP3KeyVGGAA17_FlipForRTLEffectVG_AA012_ConditionalG0VyAEyAGyAGyAlXGAPGSg_ALSgtGAIyAEyAGyAGyAA7CapsuleVAA012_EnvironmentsqO0VyAA5ColorVSgGGAA12_FrameLayoutVG_AGyAGyAGyAGyAA4TextVAA14_PaddingLayoutVGA23_GAUyAA014LayoutPrioritypS0VGGAPGtGGGtGGMR, MEMORY[0x277CE1138]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ZStack<TupleView<(MedallionCircleView, ModifiedContent<WorkoutFigure, AccessibilityAttachmentModifier>)>>, _TraitWritingModifier<ZIndexTraitKey>>, _FlipForRTLEffect>, _ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<MedallionCircleView, _TraitWritingModifier<ZIndexTraitKey>>, AccessibilityAttachmentModifier>?, MedallionCircleView?)>, ZStack<TupleView<(ModifiedContent<ModifiedContent<Capsule, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _PaddingLayout>, _TraitWritingModifier<LayoutPriorityTraitKey>>, AccessibilityAttachmentModifier>)>>>)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void closure #1 in closure #1 in MultisportMedallionView.body.getter(double *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB00E6FigureVAA31AccessibilityAttachmentModifierVGMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB00E6FigureVAA31AccessibilityAttachmentModifierVGMR);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v31 - v12;
  v14 = a1[4];
  v15 = a1[9];
  if (one-time initialization token for primaryPlatterColor != -1)
  {
    swift_once();
  }

  v16 = static MultiSportWorkoutConfiguration.primaryPlatterColor;
  v17 = Color.init(uiColor:)();
  v19 = *(a1 + 2);
  v18 = *(a1 + 3);
  if (a1[7])
  {
    v32 = v5;
    v33 = v4;
    v39 = *(a1 + 8);
    v20 = *a1;
    v38 = *a1;
    v21 = v39;
    v22 = v19;
    v23 = v18;
    if (v21 != 1)
    {
      outlined init with copy of ZStack<TupleView<(ModifiedContent<ModifiedContent<Capsule, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _PaddingLayout>, _TraitWritingModifier<LayoutPriorityTraitKey>>, AccessibilityAttachmentModifier>)>>(&v38, &v34, &_s7SwiftUI11EnvironmentVySbGMd, &_s7SwiftUI11EnvironmentVySbGMR);
      v31[3] = static os_log_type_t.fault.getter();
      v24 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();
      outlined destroy of ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ZStack<TupleView<(MedallionCircleView, ModifiedContent<WorkoutFigure, AccessibilityAttachmentModifier>)>>, _TraitWritingModifier<ZIndexTraitKey>>, _FlipForRTLEffect>, _ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<MedallionCircleView, _TraitWritingModifier<ZIndexTraitKey>>, AccessibilityAttachmentModifier>?, MedallionCircleView?)>, ZStack<TupleView<(ModifiedContent<ModifiedContent<Capsule, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _PaddingLayout>, _TraitWritingModifier<LayoutPriorityTraitKey>>, AccessibilityAttachmentModifier>)>>>)>>, _PaddingLayout>(&v38, &_s7SwiftUI11EnvironmentVySbGMd, &_s7SwiftUI11EnvironmentVySbGMR);
      (*(v32 + 8))(v7, v33);
      LOBYTE(v20) = v34;
    }

    v25 = LOBYTE(v20) ^ 1;
  }

  else
  {
    v26 = v19;
    v27 = v18;
    v25 = 0;
  }

  v28 = *(a1 + 40);
  v34 = v19;
  v35 = v28 & 1;
  v36 = v18;
  v37 = v25 & 1;
  lazy protocol witness table accessor for type WorkoutFigure and conformance WorkoutFigure();
  View.accessibilitySortPriority(_:)();
  v29 = v34;

  outlined init with copy of ZStack<TupleView<(ModifiedContent<ModifiedContent<Capsule, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _PaddingLayout>, _TraitWritingModifier<LayoutPriorityTraitKey>>, AccessibilityAttachmentModifier>)>>(v13, v10, &_s7SwiftUI15ModifiedContentVy07WorkoutB00E6FigureVAA31AccessibilityAttachmentModifierVGMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB00E6FigureVAA31AccessibilityAttachmentModifierVGMR);
  *a2 = v14 + v15;
  *(a2 + 8) = v14;
  *(a2 + 16) = v17;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI19MedallionCircleViewV_05SwiftB015ModifiedContentVyAA0A6FigureVAD31AccessibilityAttachmentModifierVGtMd, &_s9WorkoutUI19MedallionCircleViewV_05SwiftB015ModifiedContentVyAA0A6FigureVAD31AccessibilityAttachmentModifierVGtMR);
  outlined init with copy of ZStack<TupleView<(ModifiedContent<ModifiedContent<Capsule, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _PaddingLayout>, _TraitWritingModifier<LayoutPriorityTraitKey>>, AccessibilityAttachmentModifier>)>>(v10, a2 + *(v30 + 48), &_s7SwiftUI15ModifiedContentVy07WorkoutB00E6FigureVAA31AccessibilityAttachmentModifierVGMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB00E6FigureVAA31AccessibilityAttachmentModifierVGMR);

  outlined destroy of ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ZStack<TupleView<(MedallionCircleView, ModifiedContent<WorkoutFigure, AccessibilityAttachmentModifier>)>>, _TraitWritingModifier<ZIndexTraitKey>>, _FlipForRTLEffect>, _ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<MedallionCircleView, _TraitWritingModifier<ZIndexTraitKey>>, AccessibilityAttachmentModifier>?, MedallionCircleView?)>, ZStack<TupleView<(ModifiedContent<ModifiedContent<Capsule, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _PaddingLayout>, _TraitWritingModifier<LayoutPriorityTraitKey>>, AccessibilityAttachmentModifier>)>>>)>>, _PaddingLayout>(v13, &_s7SwiftUI15ModifiedContentVy07WorkoutB00E6FigureVAA31AccessibilityAttachmentModifierVGMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB00E6FigureVAA31AccessibilityAttachmentModifierVGMR);
  outlined destroy of ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ZStack<TupleView<(MedallionCircleView, ModifiedContent<WorkoutFigure, AccessibilityAttachmentModifier>)>>, _TraitWritingModifier<ZIndexTraitKey>>, _FlipForRTLEffect>, _ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<MedallionCircleView, _TraitWritingModifier<ZIndexTraitKey>>, AccessibilityAttachmentModifier>?, MedallionCircleView?)>, ZStack<TupleView<(ModifiedContent<ModifiedContent<Capsule, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _PaddingLayout>, _TraitWritingModifier<LayoutPriorityTraitKey>>, AccessibilityAttachmentModifier>)>>>)>>, _PaddingLayout>(v10, &_s7SwiftUI15ModifiedContentVy07WorkoutB00E6FigureVAA31AccessibilityAttachmentModifierVGMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB00E6FigureVAA31AccessibilityAttachmentModifierVGMR);
}

uint64_t closure #2 in closure #1 in MultisportMedallionView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v78 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4FontV6DesignOSgMd, &_s7SwiftUI4FontV6DesignOSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v71 - v4;
  v6 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextVAA14_PaddingLayoutVGAGGAA21_TraitWritingModifierVyAA0g8PriorityH3KeyVGGAA023AccessibilityAttachmentJ0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextVAA14_PaddingLayoutVGAGGAA21_TraitWritingModifierVyAA0g8PriorityH3KeyVGGAA023AccessibilityAttachmentJ0VGMR);
  MEMORY[0x28223BE20](v7 - 8);
  v77 = &v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v76 = &v71 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA7CapsuleVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12_FrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACyAA7CapsuleVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12_FrameLayoutVGMR);
  MEMORY[0x28223BE20](v11);
  v75 = &v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v71 - v14;
  v16 = *MEMORY[0x277CE0118];
  v17 = type metadata accessor for RoundedCornerStyle();
  (*(*(v17 - 8) + 104))(v15, v16, v17);
  if (one-time initialization token for tertiaryPlatterColor != -1)
  {
    swift_once();
  }

  v18 = static MultiSportWorkoutConfiguration.tertiaryPlatterColor;
  v19 = Color.init(uiColor:)();
  KeyPath = swift_getKeyPath();
  v21 = &v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA7CapsuleVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMd, &_s7SwiftUI15ModifiedContentVyAA7CapsuleVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMR) + 36)];
  *v21 = KeyPath;
  v21[1] = v19;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v22 = &v15[*(v11 + 36)];
  v23 = v92;
  *v22 = v91;
  *(v22 + 1) = v23;
  *(v22 + 2) = v93;
  LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v24._countAndFlagsBits = 43;
  v24._object = 0xE100000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v24);
  v73 = *(a1 + 48);
  *&v94[0] = v73;
  LocalizedStringKey.StringInterpolation.appendInterpolation<A>(_:specifier:)();
  v25._countAndFlagsBits = 0;
  v25._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v25);
  LocalizedStringKey.init(stringInterpolation:)();
  v26 = Text.init(_:tableName:bundle:comment:)();
  v28 = v27;
  LOBYTE(KeyPath) = v29;
  static Font.Weight.medium.getter();
  v74 = v15;
  v72 = a1;
  v30 = *MEMORY[0x277CE09A0];
  v31 = type metadata accessor for Font.Design();
  v32 = *(v31 - 8);
  (*(v32 + 104))(v5, v30, v31);
  (*(v32 + 56))(v5, 0, 1, v31);
  static Font.system(size:weight:design:)();
  outlined destroy of ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ZStack<TupleView<(MedallionCircleView, ModifiedContent<WorkoutFigure, AccessibilityAttachmentModifier>)>>, _TraitWritingModifier<ZIndexTraitKey>>, _FlipForRTLEffect>, _ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<MedallionCircleView, _TraitWritingModifier<ZIndexTraitKey>>, AccessibilityAttachmentModifier>?, MedallionCircleView?)>, ZStack<TupleView<(ModifiedContent<ModifiedContent<Capsule, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _PaddingLayout>, _TraitWritingModifier<LayoutPriorityTraitKey>>, AccessibilityAttachmentModifier>)>>>)>>, _PaddingLayout>(v5, &_s7SwiftUI4FontV6DesignOSgMd, &_s7SwiftUI4FontV6DesignOSgMR);
  v33 = Text.font(_:)();
  v35 = v34;
  LOBYTE(v31) = v36;

  outlined consume of Text.Storage(v26, v28, KeyPath & 1);

  v37 = *(v72 + 24);
  Color.init(uiColor:)();
  Color.opacity(_:)();

  v38 = Text.foregroundColor(_:)();
  v71 = v39;
  LOBYTE(v32) = v40;
  v42 = v41;

  outlined consume of Text.Storage(v33, v35, v31 & 1);

  LOBYTE(v26) = static Edge.Set.leading.getter();
  EdgeInsets.init(_all:)();
  v44 = v43;
  v46 = v45;
  v48 = v47;
  v50 = v49;
  LOBYTE(v82) = v32 & 1;
  v81[0] = 0;
  LOBYTE(v33) = static Edge.Set.trailing.getter();
  EdgeInsets.init(_all:)();
  LOBYTE(v94[0]) = 0;
  *&v82 = v38;
  *(&v82 + 1) = v71;
  LOBYTE(v83) = v32 & 1;
  *(&v83 + 1) = v42;
  LOBYTE(v84) = v26;
  *(&v84 + 1) = v44;
  *&v85 = v46;
  *(&v85 + 1) = v48;
  *&v86 = v50;
  BYTE8(v86) = 0;
  LOBYTE(v87) = v33;
  *(&v87 + 1) = v51;
  *&v88 = v52;
  *(&v88 + 1) = v53;
  *&v89 = v54;
  BYTE8(v89) = 0;
  v90 = 0x3FF0000000000000;
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v55 = WorkoutUIBundle.super.isa;
  v96._object = 0xE000000000000000;
  v56.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v56.value._object = 0xEB00000000656C62;
  v57._object = 0x800000020CB97020;
  v57._countAndFlagsBits = 0xD000000000000017;
  v58._countAndFlagsBits = 0;
  v58._object = 0xE000000000000000;
  v96._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v57, v56, v55, v58, v96);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v59 = swift_allocObject();
  *(v59 + 16) = xmmword_20CB5DA70;
  v60 = MEMORY[0x277D83C10];
  *(v59 + 56) = MEMORY[0x277D83B88];
  *(v59 + 64) = v60;
  *(v59 + 32) = v73;
  v61 = static String.localizedStringWithFormat(_:_:)();
  v63 = v62;

  v79 = v61;
  v80 = v63;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA14_PaddingLayoutVGAGGAA21_TraitWritingModifierVyAA0g8PriorityH3KeyVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA14_PaddingLayoutVGAGGAA21_TraitWritingModifierVyAA0g8PriorityH3KeyVGGMR);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _PaddingLayout>, _TraitWritingModifier<LayoutPriorityTraitKey>> and conformance <> ModifiedContent<A, B>();
  lazy protocol witness table accessor for type String and conformance String();
  v64 = v76;
  View.accessibilityLabel<A>(_:)();

  v94[6] = v88;
  v94[7] = v89;
  v95 = v90;
  v94[2] = v84;
  v94[3] = v85;
  v94[4] = v86;
  v94[5] = v87;
  v94[0] = v82;
  v94[1] = v83;
  outlined destroy of ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ZStack<TupleView<(MedallionCircleView, ModifiedContent<WorkoutFigure, AccessibilityAttachmentModifier>)>>, _TraitWritingModifier<ZIndexTraitKey>>, _FlipForRTLEffect>, _ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<MedallionCircleView, _TraitWritingModifier<ZIndexTraitKey>>, AccessibilityAttachmentModifier>?, MedallionCircleView?)>, ZStack<TupleView<(ModifiedContent<ModifiedContent<Capsule, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _PaddingLayout>, _TraitWritingModifier<LayoutPriorityTraitKey>>, AccessibilityAttachmentModifier>)>>>)>>, _PaddingLayout>(v94, &_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA14_PaddingLayoutVGAGGAA21_TraitWritingModifierVyAA0g8PriorityH3KeyVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA14_PaddingLayoutVGAGGAA21_TraitWritingModifierVyAA0g8PriorityH3KeyVGGMR);
  v66 = v74;
  v65 = v75;
  outlined init with copy of ZStack<TupleView<(ModifiedContent<ModifiedContent<Capsule, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _PaddingLayout>, _TraitWritingModifier<LayoutPriorityTraitKey>>, AccessibilityAttachmentModifier>)>>(v74, v75, &_s7SwiftUI15ModifiedContentVyACyAA7CapsuleVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12_FrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACyAA7CapsuleVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12_FrameLayoutVGMR);
  v67 = v77;
  outlined init with copy of ZStack<TupleView<(ModifiedContent<ModifiedContent<Capsule, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _PaddingLayout>, _TraitWritingModifier<LayoutPriorityTraitKey>>, AccessibilityAttachmentModifier>)>>(v64, v77, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextVAA14_PaddingLayoutVGAGGAA21_TraitWritingModifierVyAA0g8PriorityH3KeyVGGAA023AccessibilityAttachmentJ0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextVAA14_PaddingLayoutVGAGGAA21_TraitWritingModifierVyAA0g8PriorityH3KeyVGGAA023AccessibilityAttachmentJ0VGMR);
  v68 = v78;
  outlined init with copy of ZStack<TupleView<(ModifiedContent<ModifiedContent<Capsule, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _PaddingLayout>, _TraitWritingModifier<LayoutPriorityTraitKey>>, AccessibilityAttachmentModifier>)>>(v65, v78, &_s7SwiftUI15ModifiedContentVyACyAA7CapsuleVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12_FrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACyAA7CapsuleVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12_FrameLayoutVGMR);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA7CapsuleVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12_FrameLayoutVG_ACyACyACyACyAA4TextVAA08_PaddingL0VGASGAA06_TraithI0VyAA0l8PriorityoG0VGGAA023AccessibilityAttachmentI0VGtMd, &_s7SwiftUI15ModifiedContentVyACyAA7CapsuleVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12_FrameLayoutVG_ACyACyACyACyAA4TextVAA08_PaddingL0VGASGAA06_TraithI0VyAA0l8PriorityoG0VGGAA023AccessibilityAttachmentI0VGtMR);
  outlined init with copy of ZStack<TupleView<(ModifiedContent<ModifiedContent<Capsule, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _PaddingLayout>, _TraitWritingModifier<LayoutPriorityTraitKey>>, AccessibilityAttachmentModifier>)>>(v67, v68 + *(v69 + 48), &_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextVAA14_PaddingLayoutVGAGGAA21_TraitWritingModifierVyAA0g8PriorityH3KeyVGGAA023AccessibilityAttachmentJ0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextVAA14_PaddingLayoutVGAGGAA21_TraitWritingModifierVyAA0g8PriorityH3KeyVGGAA023AccessibilityAttachmentJ0VGMR);
  outlined destroy of ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ZStack<TupleView<(MedallionCircleView, ModifiedContent<WorkoutFigure, AccessibilityAttachmentModifier>)>>, _TraitWritingModifier<ZIndexTraitKey>>, _FlipForRTLEffect>, _ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<MedallionCircleView, _TraitWritingModifier<ZIndexTraitKey>>, AccessibilityAttachmentModifier>?, MedallionCircleView?)>, ZStack<TupleView<(ModifiedContent<ModifiedContent<Capsule, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _PaddingLayout>, _TraitWritingModifier<LayoutPriorityTraitKey>>, AccessibilityAttachmentModifier>)>>>)>>, _PaddingLayout>(v64, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextVAA14_PaddingLayoutVGAGGAA21_TraitWritingModifierVyAA0g8PriorityH3KeyVGGAA023AccessibilityAttachmentJ0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextVAA14_PaddingLayoutVGAGGAA21_TraitWritingModifierVyAA0g8PriorityH3KeyVGGAA023AccessibilityAttachmentJ0VGMR);
  outlined destroy of ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ZStack<TupleView<(MedallionCircleView, ModifiedContent<WorkoutFigure, AccessibilityAttachmentModifier>)>>, _TraitWritingModifier<ZIndexTraitKey>>, _FlipForRTLEffect>, _ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<MedallionCircleView, _TraitWritingModifier<ZIndexTraitKey>>, AccessibilityAttachmentModifier>?, MedallionCircleView?)>, ZStack<TupleView<(ModifiedContent<ModifiedContent<Capsule, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _PaddingLayout>, _TraitWritingModifier<LayoutPriorityTraitKey>>, AccessibilityAttachmentModifier>)>>>)>>, _PaddingLayout>(v66, &_s7SwiftUI15ModifiedContentVyACyAA7CapsuleVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12_FrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACyAA7CapsuleVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12_FrameLayoutVGMR);
  outlined destroy of ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ZStack<TupleView<(MedallionCircleView, ModifiedContent<WorkoutFigure, AccessibilityAttachmentModifier>)>>, _TraitWritingModifier<ZIndexTraitKey>>, _FlipForRTLEffect>, _ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<MedallionCircleView, _TraitWritingModifier<ZIndexTraitKey>>, AccessibilityAttachmentModifier>?, MedallionCircleView?)>, ZStack<TupleView<(ModifiedContent<ModifiedContent<Capsule, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _PaddingLayout>, _TraitWritingModifier<LayoutPriorityTraitKey>>, AccessibilityAttachmentModifier>)>>>)>>, _PaddingLayout>(v67, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextVAA14_PaddingLayoutVGAGGAA21_TraitWritingModifierVyAA0g8PriorityH3KeyVGGAA023AccessibilityAttachmentJ0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextVAA14_PaddingLayoutVGAGGAA21_TraitWritingModifierVyAA0g8PriorityH3KeyVGGAA023AccessibilityAttachmentJ0VGMR);
  return outlined destroy of ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ZStack<TupleView<(MedallionCircleView, ModifiedContent<WorkoutFigure, AccessibilityAttachmentModifier>)>>, _TraitWritingModifier<ZIndexTraitKey>>, _FlipForRTLEffect>, _ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<MedallionCircleView, _TraitWritingModifier<ZIndexTraitKey>>, AccessibilityAttachmentModifier>?, MedallionCircleView?)>, ZStack<TupleView<(ModifiedContent<ModifiedContent<Capsule, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _PaddingLayout>, _TraitWritingModifier<LayoutPriorityTraitKey>>, AccessibilityAttachmentModifier>)>>>)>>, _PaddingLayout>(v65, &_s7SwiftUI15ModifiedContentVyACyAA7CapsuleVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12_FrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACyAA7CapsuleVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12_FrameLayoutVGMR);
}

__n128 __swift_memcpy104_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for MultisportMedallionView(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
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

uint64_t storeEnumTagSinglePayload for MultisportMedallionView(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

unint64_t lazy protocol witness table accessor for type ModifiedContent<MedallionCircleView, _TraitWritingModifier<ZIndexTraitKey>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<MedallionCircleView, _TraitWritingModifier<ZIndexTraitKey>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<MedallionCircleView, _TraitWritingModifier<ZIndexTraitKey>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB019MedallionCircleViewVAA21_TraitWritingModifierVyAA06ZIndexI3KeyVGGMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB019MedallionCircleViewVAA21_TraitWritingModifierVyAA06ZIndexI3KeyVGGMR);
    lazy protocol witness table accessor for type MedallionCircleView and conformance MedallionCircleView();
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<ModifiedContent<ZStack<TupleView<(MedallionCircleView, ModifiedContent<WorkoutFigure, AccessibilityAttachmentModifier>)>>, _TraitWritingModifier<ZIndexTraitKey>>, _FlipForRTLEffect>, _ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<MedallionCircleView, _TraitWritingModifier<ZIndexTraitKey>>, AccessibilityAttachmentModifier>?, MedallionCircleView?)>, ZStack<TupleView<(ModifiedContent<ModifiedContent<Capsule, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _PaddingLayout>, _TraitWritingModifier<LayoutPriorityTraitKey>>, AccessibilityAttachmentModifier>)>>>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type _TraitWritingModifier<ZIndexTraitKey> and conformance _TraitWritingModifier<A>, &_s7SwiftUI21_TraitWritingModifierVyAA06ZIndexC3KeyVGMd, &_s7SwiftUI21_TraitWritingModifierVyAA06ZIndexC3KeyVGMR, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<MedallionCircleView, _TraitWritingModifier<ZIndexTraitKey>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MedallionCircleView and conformance MedallionCircleView()
{
  result = lazy protocol witness table cache variable for type MedallionCircleView and conformance MedallionCircleView;
  if (!lazy protocol witness table cache variable for type MedallionCircleView and conformance MedallionCircleView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MedallionCircleView and conformance MedallionCircleView);
  }

  return result;
}

uint64_t outlined init with take of HStack<TupleView<(ModifiedContent<ModifiedContent<ZStack<TupleView<(MedallionCircleView, ModifiedContent<WorkoutFigure, AccessibilityAttachmentModifier>)>>, _TraitWritingModifier<ZIndexTraitKey>>, _FlipForRTLEffect>, _ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<MedallionCircleView, _TraitWritingModifier<ZIndexTraitKey>>, AccessibilityAttachmentModifier>?, MedallionCircleView?)>, ZStack<TupleView<(ModifiedContent<ModifiedContent<Capsule, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _PaddingLayout>, _TraitWritingModifier<LayoutPriorityTraitKey>>, AccessibilityAttachmentModifier>)>>>)>>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _PaddingLayout>, _TraitWritingModifier<LayoutPriorityTraitKey>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _PaddingLayout>, _TraitWritingModifier<LayoutPriorityTraitKey>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _PaddingLayout>, _TraitWritingModifier<LayoutPriorityTraitKey>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA14_PaddingLayoutVGAGGAA21_TraitWritingModifierVyAA0g8PriorityH3KeyVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA14_PaddingLayoutVGAGGAA21_TraitWritingModifierVyAA0g8PriorityH3KeyVGGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<ModifiedContent<ZStack<TupleView<(MedallionCircleView, ModifiedContent<WorkoutFigure, AccessibilityAttachmentModifier>)>>, _TraitWritingModifier<ZIndexTraitKey>>, _FlipForRTLEffect>, _ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<MedallionCircleView, _TraitWritingModifier<ZIndexTraitKey>>, AccessibilityAttachmentModifier>?, MedallionCircleView?)>, ZStack<TupleView<(ModifiedContent<ModifiedContent<Capsule, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _PaddingLayout>, _TraitWritingModifier<LayoutPriorityTraitKey>>, AccessibilityAttachmentModifier>)>>>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type _TraitWritingModifier<LayoutPriorityTraitKey> and conformance _TraitWritingModifier<A>, &_s7SwiftUI21_TraitWritingModifierVyAA014LayoutPriorityC3KeyVGMd, &_s7SwiftUI21_TraitWritingModifierVyAA014LayoutPriorityC3KeyVGMR, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _PaddingLayout>, _TraitWritingModifier<LayoutPriorityTraitKey>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA4TextVAA14_PaddingLayoutVGAGGMd, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA14_PaddingLayoutVGAGGMR);
    lazy protocol witness table accessor for type ModifiedContent<Text, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Text, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Text, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Text, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4TextVAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA4TextVAA14_PaddingLayoutVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Text, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<ModifiedContent<ZStack<TupleView<(MedallionCircleView, ModifiedContent<WorkoutFigure, AccessibilityAttachmentModifier>)>>, _TraitWritingModifier<ZIndexTraitKey>>, _FlipForRTLEffect>, _ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<MedallionCircleView, _TraitWritingModifier<ZIndexTraitKey>>, AccessibilityAttachmentModifier>?, MedallionCircleView?)>, ZStack<TupleView<(ModifiedContent<ModifiedContent<Capsule, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _PaddingLayout>, _TraitWritingModifier<LayoutPriorityTraitKey>>, AccessibilityAttachmentModifier>)>>>)>> and conformance HStack<A>(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

unint64_t lazy protocol witness table accessor for type WorkoutFigure and conformance WorkoutFigure()
{
  result = lazy protocol witness table cache variable for type WorkoutFigure and conformance WorkoutFigure;
  if (!lazy protocol witness table cache variable for type WorkoutFigure and conformance WorkoutFigure)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkoutFigure and conformance WorkoutFigure);
  }

  return result;
}

uint64_t outlined init with copy of ZStack<TupleView<(ModifiedContent<ModifiedContent<Capsule, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _PaddingLayout>, _TraitWritingModifier<LayoutPriorityTraitKey>>, AccessibilityAttachmentModifier>)>>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t outlined destroy of ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ZStack<TupleView<(MedallionCircleView, ModifiedContent<WorkoutFigure, AccessibilityAttachmentModifier>)>>, _TraitWritingModifier<ZIndexTraitKey>>, _FlipForRTLEffect>, _ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<MedallionCircleView, _TraitWritingModifier<ZIndexTraitKey>>, AccessibilityAttachmentModifier>?, MedallionCircleView?)>, ZStack<TupleView<(ModifiedContent<ModifiedContent<Capsule, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _PaddingLayout>, _TraitWritingModifier<LayoutPriorityTraitKey>>, AccessibilityAttachmentModifier>)>>>)>>, _PaddingLayout>(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

double specialized static Log.print(_:type:_:)(const char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  v6 = *(a5 + 16);
  if (v6 > 3)
  {
    if (v6 > 5)
    {
      if (v6 == 6)
      {
        if (one-time initialization token for logger != -1)
        {
          swift_once();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
        v16 = swift_allocObject();
        *(v16 + 16) = xmmword_20CB6DA70;
        outlined init with copy of CVarArg(a5 + 32, v16 + 32);
        outlined init with copy of CVarArg(a5 + 72, v16 + 72);
        outlined init with copy of CVarArg(a5 + 112, v16 + 112);
        outlined init with copy of CVarArg(a5 + 152, v16 + 152);
        outlined init with copy of CVarArg(a5 + 192, v16 + 192);
        v8 = a5 + 232;
        v9 = v16 + 232;
      }

      else
      {
        if (v6 != 7)
        {
          return result;
        }

        if (one-time initialization token for logger != -1)
        {
          swift_once();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
        v12 = swift_allocObject();
        *(v12 + 16) = xmmword_20CB6DA60;
        outlined init with copy of CVarArg(a5 + 32, v12 + 32);
        outlined init with copy of CVarArg(a5 + 72, v12 + 72);
        outlined init with copy of CVarArg(a5 + 112, v12 + 112);
        outlined init with copy of CVarArg(a5 + 152, v12 + 152);
        outlined init with copy of CVarArg(a5 + 192, v12 + 192);
        outlined init with copy of CVarArg(a5 + 232, v12 + 232);
        v8 = a5 + 272;
        v9 = v12 + 272;
      }
    }

    else if (v6 == 4)
    {
      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_20CB6DA90;
      outlined init with copy of CVarArg(a5 + 32, v14 + 32);
      outlined init with copy of CVarArg(a5 + 72, v14 + 72);
      outlined init with copy of CVarArg(a5 + 112, v14 + 112);
      v8 = a5 + 152;
      v9 = v14 + 152;
    }

    else
    {
      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_20CB6DA80;
      outlined init with copy of CVarArg(a5 + 32, v10 + 32);
      outlined init with copy of CVarArg(a5 + 72, v10 + 72);
      outlined init with copy of CVarArg(a5 + 112, v10 + 112);
      outlined init with copy of CVarArg(a5 + 152, v10 + 152);
      v8 = a5 + 192;
      v9 = v10 + 192;
    }

    goto LABEL_36;
  }

  if (v6 > 1)
  {
    if (v6 == 2)
    {
      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v15 = swift_allocObject();
      *(v15 + 16) = xmmword_20CB5DA80;
      outlined init with copy of CVarArg(a5 + 32, v15 + 32);
      v8 = a5 + 72;
      v9 = v15 + 72;
    }

    else
    {
      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_20CB5EA80;
      outlined init with copy of CVarArg(a5 + 32, v11 + 32);
      outlined init with copy of CVarArg(a5 + 72, v11 + 72);
      v8 = a5 + 112;
      v9 = v11 + 112;
    }

LABEL_36:
    outlined init with copy of CVarArg(v8, v9);
    os_log(_:dso:log:type:_:)();

    return result;
  }

  if (v6)
  {
    if (v6 != 1)
    {
      return result;
    }

    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_20CB5DA70;
    v8 = a5 + 32;
    v9 = v7 + 32;
    goto LABEL_36;
  }

  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  os_log(_:dso:log:type:_:)();
  return result;
}

uint64_t outlined init with copy of CVarArg(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t SafetyMonitorManager._mostLikelyReceiverHandle.didset()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  static WOLog.safety.getter();
  v5 = v0;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v23 = v21;
    *v8 = 136315650;
    v10 = v5;
    v11 = [v10 description];
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v1;
    v14 = v13;

    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v14, &v23);

    *(v8 + 4) = v15;
    *(v8 + 12) = 2080;
    *(v8 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000019, 0x800000020CB97FD0, &v23);
    *(v8 + 22) = 2112;
    swift_getKeyPath();
    v22 = v10;
    lazy protocol witness table accessor for type SafetyMonitorManager and conformance SafetyMonitorManager(&lazy protocol witness table cache variable for type SafetyMonitorManager and conformance SafetyMonitorManager, type metadata accessor for SafetyMonitorManager, &protocol conformance descriptor for SafetyMonitorManager);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v16 = *&v10[OBJC_IVAR____TtC9WorkoutUI20SafetyMonitorManager__mostLikelyReceiverHandle];
    *(v8 + 24) = v16;
    *v9 = v16;
    v17 = v16;
    _os_log_impl(&dword_20C66F000, v6, v7, "%s, %s: suggestedRecipient updated to %@", v8, 0x20u);
    _sSo8NSObjectCSgWOhTm_2(v9, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x20F30E080](v9, -1, -1);
    v18 = v21;
    swift_arrayDestroy();
    MEMORY[0x20F30E080](v18, -1, -1);
    MEMORY[0x20F30E080](v8, -1, -1);

    return (*(v2 + 8))(v4, v20);
  }

  else
  {

    return (*(v2 + 8))(v4, v1);
  }
}

void *SafetyMonitorManager.mostLikelyReceiverHandle.getter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type SafetyMonitorManager and conformance SafetyMonitorManager(&lazy protocol witness table cache variable for type SafetyMonitorManager and conformance SafetyMonitorManager, type metadata accessor for SafetyMonitorManager, &protocol conformance descriptor for SafetyMonitorManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + OBJC_IVAR____TtC9WorkoutUI20SafetyMonitorManager__mostLikelyReceiverHandle);
  v2 = v1;
  return v1;
}

void SafetyMonitorManager.mostLikelyReceiverHandle.setter(void *a1)
{
  v3 = OBJC_IVAR____TtC9WorkoutUI20SafetyMonitorManager__mostLikelyReceiverHandle;
  v4 = *(v1 + OBJC_IVAR____TtC9WorkoutUI20SafetyMonitorManager__mostLikelyReceiverHandle);
  if (!v4)
  {
    if (!a1)
    {
      v8 = 0;
      v6 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    lazy protocol witness table accessor for type SafetyMonitorManager and conformance SafetyMonitorManager(&lazy protocol witness table cache variable for type SafetyMonitorManager and conformance SafetyMonitorManager, type metadata accessor for SafetyMonitorManager, &protocol conformance descriptor for SafetyMonitorManager);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  type metadata accessor for SMHandle();
  v5 = v4;
  v6 = a1;
  v7 = static NSObject.== infix(_:_:)();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v1 + v3);
LABEL_8:
  *(v1 + v3) = a1;
  v10 = v6;

  SafetyMonitorManager._mostLikelyReceiverHandle.didset();
}

uint64_t SafetyMonitorManager.sessionID.getter@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  lazy protocol witness table accessor for type SafetyMonitorManager and conformance SafetyMonitorManager(&lazy protocol witness table cache variable for type SafetyMonitorManager and conformance SafetyMonitorManager, type metadata accessor for SafetyMonitorManager, &protocol conformance descriptor for SafetyMonitorManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = OBJC_IVAR____TtC9WorkoutUI20SafetyMonitorManager__sessionID;
  swift_beginAccess();
  return outlined init with copy of UUID?(v5 + v3, a1);
}

uint64_t SafetyMonitorManager.sessionID.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v10 - v4;
  v6 = OBJC_IVAR____TtC9WorkoutUI20SafetyMonitorManager__sessionID;
  swift_beginAccess();
  outlined init with copy of UUID?(v1 + v6, v5);
  v7 = specialized SafetyMonitorManager.shouldNotifyObservers<A>(_:_:)(v5, a1);
  _sSo8NSObjectCSgWOhTm_2(v5, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  if (v7)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v10[-2] = v1;
    v10[-1] = a1;
    v10[2] = v1;
    lazy protocol witness table accessor for type SafetyMonitorManager and conformance SafetyMonitorManager(&lazy protocol witness table cache variable for type SafetyMonitorManager and conformance SafetyMonitorManager, type metadata accessor for SafetyMonitorManager, &protocol conformance descriptor for SafetyMonitorManager);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    outlined init with copy of UUID?(a1, v5);
    swift_beginAccess();
    outlined assign with take of UUID?(v5, v1 + v6);
    swift_endAccess();
  }

  return _sSo8NSObjectCSgWOhTm_2(a1, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
}

uint64_t closure #1 in SafetyMonitorManager.sessionID.setter(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9 - v5;
  outlined init with copy of UUID?(a2, &v9 - v5);
  v7 = OBJC_IVAR____TtC9WorkoutUI20SafetyMonitorManager__sessionID;
  swift_beginAccess();
  outlined assign with take of UUID?(v6, a1 + v7);
  return swift_endAccess();
}

uint64_t SafetyMonitorManager.hasActiveSession.getter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type SafetyMonitorManager and conformance SafetyMonitorManager(&lazy protocol witness table cache variable for type SafetyMonitorManager and conformance SafetyMonitorManager, type metadata accessor for SafetyMonitorManager, &protocol conformance descriptor for SafetyMonitorManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + OBJC_IVAR____TtC9WorkoutUI20SafetyMonitorManager__hasActiveSession);
}

void key path getter for SafetyMonitorManager.hasActiveSession : SafetyMonitorManager(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type SafetyMonitorManager and conformance SafetyMonitorManager(&lazy protocol witness table cache variable for type SafetyMonitorManager and conformance SafetyMonitorManager, type metadata accessor for SafetyMonitorManager, &protocol conformance descriptor for SafetyMonitorManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + OBJC_IVAR____TtC9WorkoutUI20SafetyMonitorManager__hasActiveSession);
}

void SafetyMonitorManager.hasActiveSession.setter(char a1)
{
  if (*(v1 + OBJC_IVAR____TtC9WorkoutUI20SafetyMonitorManager__hasActiveSession) == (a1 & 1))
  {
    *(v1 + OBJC_IVAR____TtC9WorkoutUI20SafetyMonitorManager__hasActiveSession) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    lazy protocol witness table accessor for type SafetyMonitorManager and conformance SafetyMonitorManager(&lazy protocol witness table cache variable for type SafetyMonitorManager and conformance SafetyMonitorManager, type metadata accessor for SafetyMonitorManager, &protocol conformance descriptor for SafetyMonitorManager);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t SafetyMonitorManager.sessionStartEntryTypeForMetric.getter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type SafetyMonitorManager and conformance SafetyMonitorManager(&lazy protocol witness table cache variable for type SafetyMonitorManager and conformance SafetyMonitorManager, type metadata accessor for SafetyMonitorManager, &protocol conformance descriptor for SafetyMonitorManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + OBJC_IVAR____TtC9WorkoutUI20SafetyMonitorManager__sessionStartEntryTypeForMetric);
}

void key path getter for SafetyMonitorManager.sessionStartEntryTypeForMetric : SafetyMonitorManager(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type SafetyMonitorManager and conformance SafetyMonitorManager(&lazy protocol witness table cache variable for type SafetyMonitorManager and conformance SafetyMonitorManager, type metadata accessor for SafetyMonitorManager, &protocol conformance descriptor for SafetyMonitorManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + OBJC_IVAR____TtC9WorkoutUI20SafetyMonitorManager__sessionStartEntryTypeForMetric);
}

double SafetyMonitorManager.sessionStartEntryTypeForMetric.setter(uint64_t a1)
{
  if (*(v1 + OBJC_IVAR____TtC9WorkoutUI20SafetyMonitorManager__sessionStartEntryTypeForMetric) != a1)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    lazy protocol witness table accessor for type SafetyMonitorManager and conformance SafetyMonitorManager(&lazy protocol witness table cache variable for type SafetyMonitorManager and conformance SafetyMonitorManager, type metadata accessor for SafetyMonitorManager, &protocol conformance descriptor for SafetyMonitorManager);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

NSObject *SafetyMonitorManager.init()()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v39 = *(v2 - 8);
  v40 = v2;
  MEMORY[0x28223BE20](v2);
  v38 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = OBJC_IVAR____TtC9WorkoutUI20SafetyMonitorManager_sessionDetailsHandlerManager;
  type metadata accessor for HandlerManager();
  swift_allocObject();
  *&v0[v4] = HandlerManager.init()();
  *&v0[OBJC_IVAR____TtC9WorkoutUI20SafetyMonitorManager__mostLikelyReceiverHandle] = 0;
  v5 = OBJC_IVAR____TtC9WorkoutUI20SafetyMonitorManager__sessionID;
  v6 = type metadata accessor for UUID();
  v7 = *(*(v6 - 8) + 56);
  v7(&v1[v5], 1, 1, v6);
  v7(&v1[v5], 1, 1, v6);
  v1[OBJC_IVAR____TtC9WorkoutUI20SafetyMonitorManager__hasActiveSession] = 0;
  *&v1[OBJC_IVAR____TtC9WorkoutUI20SafetyMonitorManager__sessionStartEntryTypeForMetric] = 0;
  v8 = OBJC_IVAR____TtC9WorkoutUI20SafetyMonitorManager_manager;
  *&v1[v8] = [objc_allocWithZone(MEMORY[0x277D4AB68]) init];
  ObservationRegistrar.init()();
  v9 = type metadata accessor for SafetyMonitorManager(0);
  v47.receiver = v1;
  v47.super_class = v9;
  v10 = objc_msgSendSuper2(&v47, sel_init);
  *(swift_allocObject() + 16) = v10;
  v11 = v10;

  dispatch thunk of HandlerManager.initiatorEndSessionHandler.setter();

  *(swift_allocObject() + 16) = v11;
  v12 = v11;

  dispatch thunk of HandlerManager.safeResponseToTriggerPrompt.setter();

  *(swift_allocObject() + 16) = v12;
  v13 = v12;

  dispatch thunk of HandlerManager.stageMessageHandler.setter();

  *(swift_allocObject() + 16) = v13;
  v14 = v13;

  dispatch thunk of HandlerManager.resizeViewHandler.setter();

  v15 = [objc_allocWithZone(MEMORY[0x277D4AB18]) initWithRequireEligibility:1 requireContact:1 requireNonBlockedContact:1 requireOnlyFavoritedHandles:1 requireOnlyPastSessionRecipients:1];
  v16 = OBJC_IVAR____TtC9WorkoutUI20SafetyMonitorManager_manager;
  v17 = *&v14[OBJC_IVAR____TtC9WorkoutUI20SafetyMonitorManager_manager];
  v18 = swift_allocObject();
  *(v18 + 16) = v14;
  v45 = partial apply for closure #1 in SafetyMonitorManager.init();
  v46 = v18;
  aBlock = MEMORY[0x277D85DD0];
  v42 = 1107296256;
  v43 = thunk for @escaping @callee_guaranteed (@guaranteed [SMHandle]?, @guaranteed Error?) -> ();
  v44 = &block_descriptor_71;
  v19 = _Block_copy(&aBlock);
  v20 = v14;
  v21 = v17;

  [v21 fetchMostLikelyReceiverHandlesWithOptions:v15 handler:v19];
  _Block_release(v19);

  v22 = *&v14[v16];
  v23 = swift_allocObject();
  *(v23 + 16) = v20;
  v45 = partial apply for closure #2 in SafetyMonitorManager.init();
  v46 = v23;
  aBlock = MEMORY[0x277D85DD0];
  v42 = 1107296256;
  v43 = thunk for @escaping @callee_guaranteed (@guaranteed SMSessionManagerState?, @unowned Bool, @guaranteed Error?) -> ();
  v44 = &block_descriptor_77;
  v24 = _Block_copy(&aBlock);
  v25 = v20;
  v26 = v22;

  [v26 fetchCurrentSessionStateWithHandler_];
  _Block_release(v24);

  v27 = *&v14[v16];
  v28 = swift_allocObject();
  *(v28 + 16) = v25;
  v45 = partial apply for closure #3 in SafetyMonitorManager.init();
  v46 = v28;
  v29 = v38;
  aBlock = MEMORY[0x277D85DD0];
  v42 = 1107296256;
  v43 = thunk for @escaping @callee_guaranteed (@guaranteed SMSessionManagerState?, @unowned Bool, @guaranteed Error?) -> ();
  v44 = &block_descriptor_83;
  v30 = _Block_copy(&aBlock);
  v31 = v27;

  [v31 startMonitoringSessionStateWithHandler_];
  _Block_release(v30);

  static WOLog.safety.getter();
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&dword_20C66F000, v32, v33, "[SafetyCheckIn] started monitoring session state", v34, 2u);
    MEMORY[0x20F30E080](v34, -1, -1);
    v35 = v25;
  }

  else
  {
    v35 = v32;
    v32 = v15;
    v15 = v25;
  }

  (*(v39 + 8))(v29, v40);
  return v25;
}

void closure #1 in SafetyMonitorManager.init()(unint64_t a1, void *a2, void *a3)
{
  v47 = a3;
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v44 - v10;
  static WOLog.safety.getter();

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  if (!os_log_type_enabled(v12, v13))
  {

    v19 = v6[1];
    v19(v11, v5);
    if (!a2)
    {
      goto LABEL_16;
    }

LABEL_10:
    static WOLog.safety.getter();
    v20 = v47;
    v21 = a2;
    v22 = Logger.logObject.getter();
    v23 = a2;
    v24 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v22, v24))
    {
      v25 = swift_slowAlloc();
      v45 = v8;
      v26 = v25;
      v27 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v49 = v44;
      *v26 = 136315650;
      v28 = v20;
      v47 = v6;
      v29 = v28;
      v30 = [v28 description];
      v46 = v5;
      v31 = v30;
      v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v34 = v33;

      v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v34, &v49);

      *(v26 + 4) = v35;
      *(v26 + 12) = 2080;
      *(v26 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x292874696E69, 0xE600000000000000, &v49);
      *(v26 + 22) = 2112;
      v36 = v23;
      v37 = _swift_stdlib_bridgeErrorToNSError();
      *(v26 + 24) = v37;
      *v27 = v37;
      _os_log_impl(&dword_20C66F000, v22, v24, "%s, %s: error during receiver fetch, %@", v26, 0x20u);
      _sSo8NSObjectCSgWOhTm_2(v27, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x20F30E080](v27, -1, -1);
      v38 = v44;
      swift_arrayDestroy();
      MEMORY[0x20F30E080](v38, -1, -1);
      MEMORY[0x20F30E080](v26, -1, -1);

      v19(v45, v46);
    }

    else
    {

      v19(v8, v5);
    }

    return;
  }

  v44 = a2;
  v45 = v8;
  v14 = v6;
  v15 = swift_slowAlloc();
  v16 = swift_slowAlloc();
  v49 = v16;
  *v15 = 136315138;
  v46 = v5;
  if (!a1)
  {
    goto LABEL_14;
  }

  if (a1 >> 62)
  {
    if (__CocoaSet.count.getter())
    {
      goto LABEL_5;
    }

LABEL_14:
    v18 = 0;
    goto LABEL_15;
  }

  if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_14;
  }

LABEL_5:
  if ((a1 & 0xC000000000000001) != 0)
  {
    v17 = MEMORY[0x20F30C990](0, a1);
  }

  else
  {
    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_28;
    }

    v17 = *(a1 + 32);
  }

  v18 = v17;
LABEL_15:
  v48 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8SMHandleCSgMd, &_sSo8SMHandleCSgMR);
  v39 = Optional.description.getter();
  v41 = v40;

  v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v41, &v49);

  *(v15 + 4) = v42;
  _os_log_impl(&dword_20C66F000, v12, v13, "[SafetyCheckIn] fetched most likely receiver: %s", v15, 0xCu);
  __swift_destroy_boxed_opaque_existential_0(v16);
  MEMORY[0x20F30E080](v16, -1, -1);
  MEMORY[0x20F30E080](v15, -1, -1);

  v6 = v14;
  v19 = v14[1];
  v5 = v46;
  v19(v11, v46);
  a2 = v44;
  v8 = v45;
  if (v44)
  {
    goto LABEL_10;
  }

LABEL_16:
  if (!a1)
  {
    v43 = 0;
    goto LABEL_23;
  }

  if (a1 >> 62)
  {
    v43 = __CocoaSet.count.getter();
    if (!v43)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v43 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v43)
    {
LABEL_23:
      SafetyMonitorManager.mostLikelyReceiverHandle.setter(v43);
      return;
    }
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
LABEL_28:
    v43 = MEMORY[0x20F30C990](0, a1);
    goto LABEL_23;
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v43 = *(a1 + 32);
    goto LABEL_23;
  }

  __break(1u);
}

double thunk for @escaping @callee_guaranteed (@guaranteed [SMHandle]?, @guaranteed Error?) -> ()(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    type metadata accessor for SMHandle();
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v6 = a3;
  v5(v4, a3);

  return result;
}

void closure #2 in SafetyMonitorManager.init()(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v87 = a4;
  v6 = type metadata accessor for UUID();
  v84 = *(v6 - 8);
  v85 = v6;
  MEMORY[0x28223BE20](v6);
  v81 = &v78 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v82 = &v78 - v9;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x28223BE20](v83);
  v80 = &v78 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v78 - v12;
  v14 = type metadata accessor for Logger();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v90 = &v78 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v78 - v18;
  static WOLog.safety.getter();
  v20 = a1;
  v21 = a3;
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();
  v24 = v20;

  v25 = v23;
  v26 = os_log_type_enabled(v22, v23);
  v88 = v15;
  v89 = v14;
  v86 = a1;
  if (v26)
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v79 = swift_slowAlloc();
    v92 = v79;
    *v27 = 136315650;
    if (a1)
    {
      v29 = v24;
      v30 = [v24 isActiveState];
    }

    else
    {
      v30 = 2;
      v29 = v24;
    }

    v91 = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSbSgMd, &_sSbSgMR);
    v32 = Optional.description.getter();
    v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v33, &v92);

    *(v27 + 4) = v34;
    *(v27 + 12) = 2080;
    if (v86 && (v35 = [v29 configuration]) != 0)
    {
      v36 = v35;
      v37 = [v35 sessionID];

      static UUID._unconditionallyBridgeFromObjectiveC(_:)();
      v38 = 0;
    }

    else
    {
      v38 = 1;
    }

    (*(v84 + 56))(v13, v38, 1, v85);
    v39 = Optional.description.getter();
    v41 = v40;
    _sSo8NSObjectCSgWOhTm_2(v13, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v41, &v92);

    *(v27 + 14) = v42;
    *(v27 + 22) = 2112;
    if (a3)
    {
      v43 = a3;
      v44 = _swift_stdlib_bridgeErrorToNSError();
      v45 = v44;
    }

    else
    {
      v44 = 0;
      v45 = 0;
    }

    v46 = v88;
    *(v27 + 24) = v44;
    *v28 = v45;
    _os_log_impl(&dword_20C66F000, v22, v25, "[SafetyCheckIn] fetched current session state (isActiveState: %s, sessionID:  %s, error: %@)", v27, 0x20u);
    _sSo8NSObjectCSgWOhTm_2(v28, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x20F30E080](v28, -1, -1);
    v47 = v79;
    swift_arrayDestroy();
    MEMORY[0x20F30E080](v47, -1, -1);
    MEMORY[0x20F30E080](v27, -1, -1);

    v31 = *(v46 + 8);
    v31(v19, v89);
  }

  else
  {

    v31 = *(v15 + 8);
    v31(v19, v14);
    v29 = v24;
  }

  v48 = v87;
  v49 = v90;
  if (a3)
  {
    static WOLog.safety.getter();
    v50 = a3;
    v51 = v48;
    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v87 = swift_slowAlloc();
      v92 = v87;
      *v54 = 136315650;
      v56 = v51;
      v57 = [v56 description];
      v58 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v60 = v59;

      v61 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v58, v60, &v92);

      *(v54 + 4) = v61;
      *(v54 + 12) = 2080;
      *(v54 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x292874696E69, 0xE600000000000000, &v92);
      *(v54 + 22) = 2112;
      v62 = a3;
      v63 = _swift_stdlib_bridgeErrorToNSError();
      *(v54 + 24) = v63;
      *v55 = v63;
      _os_log_impl(&dword_20C66F000, v52, v53, "%s, %s: error during session state fetch, %@", v54, 0x20u);
      _sSo8NSObjectCSgWOhTm_2(v55, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x20F30E080](v55, -1, -1);
      v64 = v87;
      swift_arrayDestroy();
      MEMORY[0x20F30E080](v64, -1, -1);
      MEMORY[0x20F30E080](v54, -1, -1);

      v65 = v90;
    }

    else
    {

      v65 = v49;
    }

    v31(v65, v89);
  }

  else if (v86)
  {
    v66 = [v29 configuration];
    if (v66)
    {
      v67 = v66;
      v68 = [v66 sessionID];

      v69 = v81;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v70 = v84;
      v71 = v82;
      v72 = v69;
      v73 = v85;
      (*(v84 + 32))(v82, v72, v85);
      v74 = v80;
      (*(v70 + 16))(v80, v71, v73);
      (*(v70 + 56))(v74, 0, 1, v73);
      SafetyMonitorManager.sessionID.setter(v74);
      (*(v70 + 8))(v71, v73);
    }

    v75 = [v29 isActiveState];
    v76 = v75;
    if (v75 == v48[OBJC_IVAR____TtC9WorkoutUI20SafetyMonitorManager__hasActiveSession])
    {
      v48[OBJC_IVAR____TtC9WorkoutUI20SafetyMonitorManager__hasActiveSession] = v75;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      *(&v78 - 2) = v48;
      *(&v78 - 8) = v76;
      v92 = v48;
      lazy protocol witness table accessor for type SafetyMonitorManager and conformance SafetyMonitorManager(&lazy protocol witness table cache variable for type SafetyMonitorManager and conformance SafetyMonitorManager, type metadata accessor for SafetyMonitorManager, &protocol conformance descriptor for SafetyMonitorManager);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }
  }
}

void thunk for @escaping @callee_guaranteed (@guaranteed SMSessionManagerState?, @unowned Bool, @guaranteed Error?) -> ()(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = *(a1 + 32);

  v9 = a2;
  v8 = a4;
  v7(a2, a3, a4);
}

void closure #3 in SafetyMonitorManager.init()(void *a1, int a2, void *a3, uint64_t a4)
{
  v58 = a2;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x28223BE20](v62);
  v8 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v59 = &v54 - v10;
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  static WOLog.safety.getter();
  v15 = a1;
  v16 = a3;
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  v64 = v15;

  v60 = a3;
  v61 = v18;
  v19 = os_log_type_enabled(v17, v18);
  v63 = a1;
  if (v19)
  {
    v55 = v17;
    v20 = v12;
    v57 = a4;
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v66 = v23;
    *v21 = 136315906;
    v56 = v8;
    if (a1)
    {
      v24 = [v64 isActiveState];
    }

    else
    {
      v24 = 2;
    }

    v26 = v59;
    v65 = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSbSgMd, &_sSbSgMR);
    v27 = Optional.description.getter();
    v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v28, &v66);

    *(v21 + 4) = v29;
    *(v21 + 12) = 1024;
    *(v21 + 14) = v58 & 1;
    *(v21 + 18) = 2080;
    v30 = v20;
    if (v63)
    {
      v31 = [v64 configuration];
      v32 = v55;
      if (v31)
      {
        v33 = v31;
        v34 = [v31 sessionID];

        static UUID._unconditionallyBridgeFromObjectiveC(_:)();
        v35 = 0;
      }

      else
      {
        v35 = 1;
      }
    }

    else
    {
      v35 = 1;
      v32 = v55;
    }

    v36 = type metadata accessor for UUID();
    (*(*(v36 - 8) + 56))(v26, v35, 1, v36);
    v37 = Optional.description.getter();
    v39 = v38;
    _sSo8NSObjectCSgWOhTm_2(v26, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v39, &v66);

    *(v21 + 20) = v40;
    *(v21 + 28) = 2112;
    if (v60)
    {
      v41 = v60;
      v42 = _swift_stdlib_bridgeErrorToNSError();
      v43 = v42;
    }

    else
    {
      v42 = 0;
      v43 = 0;
    }

    v8 = v56;
    *(v21 + 30) = v42;
    *v22 = v43;
    _os_log_impl(&dword_20C66F000, v32, v61, "[SafetyCheckIn] session monitor changed state (isActiveState: %s, isActiveDevice: %{BOOL}d, sessionID:  %s, error: %@)", v21, 0x26u);
    _sSo8NSObjectCSgWOhTm_2(v22, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x20F30E080](v22, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x20F30E080](v23, -1, -1);
    MEMORY[0x20F30E080](v21, -1, -1);

    (*(v30 + 8))(v14, v11);
    a4 = v57;
    v25 = v63;
    if (!v63)
    {
      goto LABEL_18;
    }
  }

  else
  {

    (*(v12 + 8))(v14, v11);
    v25 = v63;
    if (!v63)
    {
      goto LABEL_18;
    }
  }

  v44 = [v64 configuration];
  if (v44)
  {
    v45 = v8;
    v46 = v44;
    v47 = [v44 sessionID];

    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    v48 = type metadata accessor for UUID();
    (*(*(v48 - 8) + 56))(v45, 0, 1, v48);
    SafetyMonitorManager.sessionID.setter(v45);
    goto LABEL_19;
  }

LABEL_18:
  v49 = type metadata accessor for UUID();
  (*(*(v49 - 8) + 56))(v8, 1, 1, v49);
  SafetyMonitorManager.sessionID.setter(v8);
  if (!v25)
  {
    v51 = 0;
    v52 = (a4 + OBJC_IVAR____TtC9WorkoutUI20SafetyMonitorManager__hasActiveSession);
    if (*(a4 + OBJC_IVAR____TtC9WorkoutUI20SafetyMonitorManager__hasActiveSession))
    {
      goto LABEL_20;
    }

    goto LABEL_22;
  }

LABEL_19:
  v50 = [v64 isActiveState];
  v51 = v50;
  v52 = (a4 + OBJC_IVAR____TtC9WorkoutUI20SafetyMonitorManager__hasActiveSession);
  if (v50 != *(a4 + OBJC_IVAR____TtC9WorkoutUI20SafetyMonitorManager__hasActiveSession))
  {
LABEL_20:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    *(&v54 - 2) = a4;
    *(&v54 - 8) = v51;
    v66 = a4;
    lazy protocol witness table accessor for type SafetyMonitorManager and conformance SafetyMonitorManager(&lazy protocol witness table cache variable for type SafetyMonitorManager and conformance SafetyMonitorManager, type metadata accessor for SafetyMonitorManager, &protocol conformance descriptor for SafetyMonitorManager);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    return;
  }

LABEL_22:
  *v52 = v51;
}

id SafetyMonitorManager.__deallocating_deinit()
{
  v1 = *&v0[OBJC_IVAR____TtC9WorkoutUI20SafetyMonitorManager_manager];
  aBlock[4] = closure #1 in SafetyMonitorManager.deinit;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_12;
  v2 = _Block_copy(aBlock);
  v3 = v1;
  [v3 stopMonitoringSessionStateWithHandler_];
  _Block_release(v2);

  v5.receiver = v0;
  v5.super_class = type metadata accessor for SafetyMonitorManager(0);
  return objc_msgSendSuper2(&v5, sel_dealloc);
}

uint64_t closure #1 in SafetyMonitorManager.deinit(void *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static WOLog.safety.getter();
  v6 = a1;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    if (a1)
    {
      v11 = a1;
      v12 = _swift_stdlib_bridgeErrorToNSError();
      v13 = v12;
    }

    else
    {
      v12 = 0;
      v13 = 0;
    }

    *(v9 + 4) = v12;
    *v10 = v13;
    _os_log_impl(&dword_20C66F000, v7, v8, "[SafetyCheckIn] stopped monitoring session state, error: %@", v9, 0xCu);
    _sSo8NSObjectCSgWOhTm_2(v10, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x20F30E080](v10, -1, -1);
    MEMORY[0x20F30E080](v9, -1, -1);
  }

  return (*(v3 + 8))(v5, v2);
}

void thunk for @escaping @callee_guaranteed (@guaranteed Error?) -> ()(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

double block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t type metadata accessor for SafetyMonitorManager(uint64_t a1)
{
  result = type metadata singleton initialization cache for SafetyMonitorManager;
  if (!type metadata singleton initialization cache for SafetyMonitorManager)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void SafetyMonitorManager.submitCheckInRemindersResponseMetric(reason:workoutActivityType:)(uint64_t a1, uint64_t a2, char a3)
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type SafetyMonitorManager and conformance SafetyMonitorManager(&lazy protocol witness table cache variable for type SafetyMonitorManager and conformance SafetyMonitorManager, type metadata accessor for SafetyMonitorManager, &protocol conformance descriptor for SafetyMonitorManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC9WorkoutUI20SafetyMonitorManager__sessionStartEntryTypeForMetric;
  v5 = *(v3 + OBJC_IVAR____TtC9WorkoutUI20SafetyMonitorManager__sessionStartEntryTypeForMetric);
  if (v5 == 9)
  {
    type metadata accessor for MetricsManager();
    static MetricsManager.submitWorkoutAlwaysPromptResponse(reason:workoutActivityType:)();
    v5 = *(v3 + v4);
  }

  if (v5)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    *(v3 + v4) = 0;
  }
}

double SafetyMonitorManager.initiatorEndSessionHandler()()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  static WOLog.safety.getter();
  v5 = v0;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v21 = v20;
    *v8 = 136315394;
    v9 = v5;
    v10 = [v9 description];
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v1;
    v13 = v12;

    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v13, &v21);

    *(v8 + 4) = v14;
    *(v8 + 12) = 2080;
    *(v8 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001CLL, 0x800000020CB980E0, &v21);
    _os_log_impl(&dword_20C66F000, v6, v7, "%s, %s: end session", v8, 0x16u);
    v15 = v20;
    swift_arrayDestroy();
    MEMORY[0x20F30E080](v15, -1, -1);
    MEMORY[0x20F30E080](v8, -1, -1);

    (*(v2 + 8))(v4, v19);
  }

  else
  {

    (*(v2 + 8))(v4, v1);
  }

  type metadata accessor for SessionViewModel();
  static SessionViewModel.shared.getter();
  *(swift_allocObject() + 16) = v5;
  v16 = v5;
  SessionViewModel.endSession(with:)();

  return result;
}

void closure #1 in SafetyMonitorManager.initiatorEndSessionHandler()(void *a1, void *a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v8 = a1;
    static WOLog.safety.getter();
    v9 = a1;
    v10 = a2;
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v27 = v4;
      v14 = v13;
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v28 = v26;
      *v14 = 136315650;
      v15 = v10;
      v16 = [v15 description];
      v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v19 = v18;

      v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v19, &v28);

      *(v14 + 4) = v20;
      *(v14 + 12) = 2080;
      *(v14 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001CLL, 0x800000020CB980E0, &v28);
      *(v14 + 22) = 2112;
      v21 = a1;
      v22 = _swift_stdlib_bridgeErrorToNSError();
      *(v14 + 24) = v22;
      v23 = v25;
      *v25 = v22;
      _os_log_impl(&dword_20C66F000, v11, v12, "%s, %s: end session error, %@", v14, 0x20u);
      _sSo8NSObjectCSgWOhTm_2(v23, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x20F30E080](v23, -1, -1);
      v24 = v26;
      swift_arrayDestroy();
      MEMORY[0x20F30E080](v24, -1, -1);
      MEMORY[0x20F30E080](v14, -1, -1);

      (*(v5 + 8))(v7, v27);
    }

    else
    {

      (*(v5 + 8))(v7, v4);
    }
  }
}

double SafetyMonitorManager.safeResponseToTriggerPromptHandler()()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  static WOLog.safety.getter();
  v5 = v0;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v21 = v20;
    *v8 = 136315394;
    v9 = v5;
    v10 = [v9 description];
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v1;
    v13 = v12;

    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v13, &v21);

    *(v8 + 4) = v14;
    *(v8 + 12) = 2080;
    *(v8 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000024, 0x800000020CB980B0, &v21);
    _os_log_impl(&dword_20C66F000, v6, v7, "%s, %s: safe response to trigger prompt", v8, 0x16u);
    v15 = v20;
    swift_arrayDestroy();
    MEMORY[0x20F30E080](v15, -1, -1);
    MEMORY[0x20F30E080](v8, -1, -1);

    (*(v2 + 8))(v4, v19);
  }

  else
  {

    (*(v2 + 8))(v4, v1);
  }

  type metadata accessor for SessionViewModel();
  static SessionViewModel.shared.getter();
  *(swift_allocObject() + 16) = v5;
  v16 = v5;
  SessionViewModel.safeResponseToTriggerPrompt(with:)();

  return result;
}

void closure #1 in SafetyMonitorManager.safeResponseToTriggerPromptHandler()(void *a1, void *a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v8 = a1;
    static WOLog.safety.getter();
    v9 = a1;
    v10 = a2;
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v27 = v4;
      v14 = v13;
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v28 = v26;
      *v14 = 136315650;
      v15 = v10;
      v16 = [v15 description];
      v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v19 = v18;

      v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v19, &v28);

      *(v14 + 4) = v20;
      *(v14 + 12) = 2080;
      *(v14 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000024, 0x800000020CB980B0, &v28);
      *(v14 + 22) = 2112;
      v21 = a1;
      v22 = _swift_stdlib_bridgeErrorToNSError();
      *(v14 + 24) = v22;
      v23 = v25;
      *v25 = v22;
      _os_log_impl(&dword_20C66F000, v11, v12, "%s, %s: safe response to trigger prompt error, %@", v14, 0x20u);
      _sSo8NSObjectCSgWOhTm_2(v23, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x20F30E080](v23, -1, -1);
      v24 = v26;
      swift_arrayDestroy();
      MEMORY[0x20F30E080](v24, -1, -1);
      MEMORY[0x20F30E080](v14, -1, -1);

      (*(v5 + 8))(v7, v27);
    }

    else
    {

      (*(v5 + 8))(v7, v4);
    }
  }
}

uint64_t SafetyMonitorManager.stageMessageHandler()()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  static WOLog.safety.getter();
  v5 = v0;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v18 = v1;
    v9 = v8;
    v10 = swift_slowAlloc();
    v19 = v10;
    *v9 = 136315394;
    v11 = v5;
    v12 = [v11 description];
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v15, &v19);

    *(v9 + 4) = v16;
    *(v9 + 12) = 2080;
    *(v9 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000015, 0x800000020CB98090, &v19);
    _os_log_impl(&dword_20C66F000, v6, v7, "%s, %s: stage message", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F30E080](v10, -1, -1);
    MEMORY[0x20F30E080](v9, -1, -1);

    return (*(v2 + 8))(v4, v18);
  }

  else
  {

    return (*(v2 + 8))(v4, v1);
  }
}

uint64_t SafetyMonitorManager.resizeViewHandler()()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  static WOLog.safety.getter();
  v5 = v0;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v18 = v1;
    v9 = v8;
    v10 = swift_slowAlloc();
    v19 = v10;
    *v9 = 136315394;
    v11 = v5;
    v12 = [v11 description];
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v15, &v19);

    *(v9 + 4) = v16;
    *(v9 + 12) = 2080;
    *(v9 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000013, 0x800000020CB98070, &v19);
    _os_log_impl(&dword_20C66F000, v6, v7, "%s, %s: resize view", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F30E080](v10, -1, -1);
    MEMORY[0x20F30E080](v9, -1, -1);

    return (*(v2 + 8))(v4, v18);
  }

  else
  {

    return (*(v2 + 8))(v4, v1);
  }
}

id SafetyMonitorManager.messageComposeViewController(_:didFinishWith:)(void *a1, uint64_t a2)
{
  v5 = *&v2[OBJC_IVAR____TtC9WorkoutUI20SafetyMonitorManager_manager];
  v6 = swift_allocObject();
  *(v6 + 16) = v2;
  v17 = partial apply for closure #1 in SafetyMonitorManager.messageComposeViewController(_:didFinishWith:);
  v18 = v6;
  v13 = MEMORY[0x277D85DD0];
  v14 = 1107296256;
  v15 = thunk for @escaping @callee_guaranteed (@guaranteed SMSessionManagerState?, @unowned Bool, @guaranteed Error?) -> ();
  v16 = &block_descriptor_3;
  v7 = _Block_copy(&v13);
  v8 = v2;

  [v5 fetchCurrentSessionStateWithHandler_];
  _Block_release(v7);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = a2;
  v17 = partial apply for closure #2 in SafetyMonitorManager.messageComposeViewController(_:didFinishWith:);
  v18 = v9;
  v13 = MEMORY[0x277D85DD0];
  v14 = 1107296256;
  v15 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed SMCurrentWorkoutSnapshot?, @guaranteed Error?) -> ();
  v16 = &block_descriptor_9;
  v10 = _Block_copy(&v13);
  v11 = v8;

  [v5 fetchCurrentWorkoutSnapshotWithCompletion_];
  _Block_release(v10);
  return [a1 dismissViewControllerAnimated:1 completion:0];
}

void closure #1 in SafetyMonitorManager.messageComposeViewController(_:didFinishWith:)(void *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v35 - v8;
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    static WOLog.safety.getter();
    v15 = a4;
    v16 = a3;
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v38 = v37;
      *v19 = 136315650;
      v20 = v15;
      v21 = [v20 description];
      v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v36 = v10;
      v23 = v22;
      v25 = v24;

      v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v25, &v38);

      *(v19 + 4) = v26;
      *(v19 + 12) = 2080;
      *(v19 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002ELL, 0x800000020CB98120, &v38);
      *(v19 + 22) = 2112;
      v27 = a3;
      v28 = _swift_stdlib_bridgeErrorToNSError();
      *(v19 + 24) = v28;
      v29 = v35;
      *v35 = v28;
      _os_log_impl(&dword_20C66F000, v17, v18, "%s, %s: error during session state fetch, %@", v19, 0x20u);
      _sSo8NSObjectCSgWOhTm_2(v29, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x20F30E080](v29, -1, -1);
      v30 = v37;
      swift_arrayDestroy();
      MEMORY[0x20F30E080](v30, -1, -1);
      MEMORY[0x20F30E080](v19, -1, -1);

      (*(v11 + 8))(v14, v36);
    }

    else
    {

      (*(v11 + 8))(v14, v10);
    }
  }

  else if (a1)
  {
    v31 = [a1 configuration];
    if (v31)
    {
      v32 = v31;
      v33 = [v31 sessionID];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v34 = type metadata accessor for UUID();
      (*(*(v34 - 8) + 56))(v9, 0, 1, v34);
      SafetyMonitorManager.sessionID.setter(v9);
    }
  }
}

void closure #2 in SafetyMonitorManager.messageComposeViewController(_:didFinishWith:)(void *a1, void *a2, char *a3, uint64_t a4)
{
  v56 = type metadata accessor for CheckInControllerDismissalReason();
  v8 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v46 - v12;
  v14 = type metadata accessor for Logger();
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2)
  {
    if (a1)
    {
      v40 = [a1 activityType];
      v41 = 0;
      if (a4)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v40 = 0;
      v41 = 1;
      if (a4)
      {
        goto LABEL_9;
      }
    }

LABEL_13:
    v44 = MEMORY[0x277D4AF48];
    goto LABEL_14;
  }

  v54 = v15;
  v55 = a4;
  static WOLog.safety.getter();
  v19 = a3;
  v20 = a2;
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.error.getter();

  v53 = v22;
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v51 = v13;
    v24 = v23;
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v57[0] = v49;
    *v24 = 136315650;
    v25 = v19;
    v26 = [v25 description];
    v50 = v14;
    v27 = a3;
    v28 = v26;
    v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v47 = v21;
    v30 = v29;
    v52 = v8;
    v32 = v31;

    a3 = v27;
    v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v32, v57);
    v8 = v52;

    *(v24 + 4) = v33;
    *(v24 + 12) = 2080;
    *(v24 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002ELL, 0x800000020CB98120, v57);
    *(v24 + 22) = 2112;
    v34 = a2;
    v35 = _swift_stdlib_bridgeErrorToNSError();
    *(v24 + 24) = v35;
    v37 = v47;
    v36 = v48;
    *v48 = v35;
    _os_log_impl(&dword_20C66F000, v37, v53, "%s, %s: error during workout snapshot fetch, %@", v24, 0x20u);
    _sSo8NSObjectCSgWOhTm_2(v36, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x20F30E080](v36, -1, -1);
    v38 = v49;
    swift_arrayDestroy();
    MEMORY[0x20F30E080](v38, -1, -1);
    v39 = v24;
    v13 = v51;
    MEMORY[0x20F30E080](v39, -1, -1);

    (*(v54 + 8))(v18, v50);
  }

  else
  {

    (*(v54 + 8))(v18, v14);
  }

  v40 = 0;
  v41 = 1;
  a4 = v55;
  if (!v55)
  {
    goto LABEL_13;
  }

LABEL_9:
  if (a4 == 1)
  {
    swift_getKeyPath();
    v57[0] = a3;
    lazy protocol witness table accessor for type SafetyMonitorManager and conformance SafetyMonitorManager(&lazy protocol witness table cache variable for type SafetyMonitorManager and conformance SafetyMonitorManager, type metadata accessor for SafetyMonitorManager, &protocol conformance descriptor for SafetyMonitorManager);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v42 = OBJC_IVAR____TtC9WorkoutUI20SafetyMonitorManager__sessionID;
    swift_beginAccess();
    outlined init with copy of UUID?(&a3[v42], v13);
    v43 = type metadata accessor for UUID();
    LODWORD(v42) = (*(*(v43 - 8) + 48))(v13, 1, v43);
    _sSo8NSObjectCSgWOhTm_2(v13, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    if (v42 != 1)
    {
      v44 = MEMORY[0x277D4AF50];
LABEL_14:
      v45 = v56;
      (*(v8 + 104))(v10, *v44, v56);
      SafetyMonitorManager.submitCheckInRemindersResponseMetric(reason:workoutActivityType:)(v10, v40, v41);
      (*(v8 + 8))(v10, v45);
    }
  }
}

void thunk for @escaping @callee_guaranteed @Sendable (@guaranteed SMCurrentWorkoutSnapshot?, @guaranteed Error?) -> ()(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

void type metadata completion function for SafetyMonitorManager(uint64_t a1)
{
  type metadata accessor for UUID?(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for ObservationRegistrar();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void type metadata accessor for UUID?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for UUID?)
  {
    type metadata accessor for UUID();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for UUID?);
    }
  }
}

uint64_t outlined init with copy of UUID?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t specialized SafetyMonitorManager.shouldNotifyObservers<A>(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v21 - v12;
  v15 = *(v14 + 56);
  outlined init with copy of UUID?(a1, &v21 - v12);
  outlined init with copy of UUID?(a2, &v13[v15]);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    outlined init with copy of UUID?(v13, v10);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v13[v15], v4);
      lazy protocol witness table accessor for type SafetyMonitorManager and conformance SafetyMonitorManager(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
      v18 = dispatch thunk of static Equatable.== infix(_:_:)();
      v19 = *(v5 + 8);
      v19(v7, v4);
      v19(v10, v4);
      _sSo8NSObjectCSgWOhTm_2(v13, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v17 = v18 ^ 1;
      return v17 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_6;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
LABEL_6:
    _sSo8NSObjectCSgWOhTm_2(v13, &_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
    v17 = 1;
    return v17 & 1;
  }

  _sSo8NSObjectCSgWOhTm_2(v13, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v17 = 0;
  return v17 & 1;
}

uint64_t outlined assign with take of UUID?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t _sSo8NSObjectCSgWOhTm_2(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t lazy protocol witness table accessor for type SafetyMonitorManager and conformance SafetyMonitorManager(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t partial apply for closure #1 in SafetyMonitorManager.mostLikelyReceiverHandle.setter()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v2 + OBJC_IVAR____TtC9WorkoutUI20SafetyMonitorManager__mostLikelyReceiverHandle);
  *(v2 + OBJC_IVAR____TtC9WorkoutUI20SafetyMonitorManager__mostLikelyReceiverHandle) = v1;
  v4 = v1;

  return SafetyMonitorManager._mostLikelyReceiverHandle.didset();
}

unint64_t type metadata accessor for SMHandle()
{
  result = lazy cache variable for type metadata for SMHandle;
  if (!lazy cache variable for type metadata for SMHandle)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for SMHandle);
  }

  return result;
}

void closure #1 in SafetyMonitorManager.hasActiveSession.setterpartial apply()
{
  partial apply for closure #1 in SafetyMonitorManager.hasActiveSession.setter();
}

{
  partial apply for closure #1 in SafetyMonitorManager.hasActiveSession.setter();
}

double NLWorkoutSplitStorage.defaultTargetValue(activityType:)(void *a1)
{
  v3 = [v1 type];
  v4 = [a1 effectiveTypeIdentifier];
  if (v3 == 2)
  {
    result = 600.0;
    if (v4 <= 51)
    {
      if (v4 == 13)
      {
        return result;
      }

      if (v4 == 24)
      {
        return 1800.0;
      }

      return 300.0;
    }

    if (v4 != 52 && v4 != 70)
    {
      return 300.0;
    }
  }

  else if (v4 == 37 && ![a1 isIndoor])
  {
    return 1609.34;
  }

  else if ([a1 effectiveTypeIdentifier] == 13 && !objc_msgSend(a1, sel_isIndoor))
  {
    return 8046.72;
  }

  else
  {
    return 0.0;
  }

  return result;
}

double static HeartRateZone.defaultLowRangeValue(activityType:)(void *a1)
{
  v1 = [a1 effectiveTypeIdentifier];
  v2 = v1 == 37 || v1 == 13;
  result = 120.0;
  if (v2)
  {
    return 130.0;
  }

  return result;
}

double static HeartRateZone.defaultUpperRangeValue(activityType:)(void *a1)
{
  v1 = [a1 effectiveTypeIdentifier];
  v2 = v1 == 37 || v1 == 13;
  result = 140.0;
  if (v2)
  {
    return 150.0;
  }

  return result;
}

id TargetZone.ZoneType.defaultLowRangeValue(activityType:)(void *a1)
{
  v3 = type metadata accessor for TargetZone.ZoneType();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, v1, v3, v5);
  result = (*(v4 + 88))(v7, v3);
  if (result == *MEMORY[0x277D7DE48] || result == *MEMORY[0x277D7DE40] || result == *MEMORY[0x277D7DE60])
  {
    return [a1 effectiveTypeIdentifier];
  }

  if (result == *MEMORY[0x277D7DE70] || result == *MEMORY[0x277D7DE58])
  {
    return [a1 effectiveTypeIdentifier];
  }

  v12 = result == *MEMORY[0x277D7DE68] || result == *MEMORY[0x277D7DE50];
  if (!v12 && result != *MEMORY[0x277D7DE78])
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

id TargetZone.ZoneType.defaultUpperRangeValue(activityType:)(void *a1)
{
  v3 = type metadata accessor for TargetZone.ZoneType();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, v1, v3, v5);
  result = (*(v4 + 88))(v7, v3);
  if (result == *MEMORY[0x277D7DE48] || result == *MEMORY[0x277D7DE40] || result == *MEMORY[0x277D7DE60])
  {
    return [a1 effectiveTypeIdentifier];
  }

  if (result == *MEMORY[0x277D7DE70] || result == *MEMORY[0x277D7DE58])
  {
    return [a1 effectiveTypeIdentifier];
  }

  v12 = result == *MEMORY[0x277D7DE68] || result == *MEMORY[0x277D7DE50];
  if (!v12 && result != *MEMORY[0x277D7DE78])
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

id TargetZone.ZoneType.defaultTargetValue(activityType:)(void *a1)
{
  v3 = type metadata accessor for TargetZone.ZoneType();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, v1, v3, v5);
  result = (*(v4 + 88))(v7, v3);
  if (result == *MEMORY[0x277D7DE48] || result == *MEMORY[0x277D7DE40] || result == *MEMORY[0x277D7DE60])
  {
    return [a1 effectiveTypeIdentifier];
  }

  if (result == *MEMORY[0x277D7DE70] || result == *MEMORY[0x277D7DE58])
  {
    return [a1 effectiveTypeIdentifier];
  }

  v12 = result == *MEMORY[0x277D7DE68] || result == *MEMORY[0x277D7DE50];
  if (!v12 && result != *MEMORY[0x277D7DE78])
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

double key path getter for TrainingLoadEffortExplanationView.onNext : TrainingLoadEffortExplanationView@<D0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (a1 + *(type metadata accessor for TrainingLoadEffortExplanationView(0) + 20));
  v5 = *v3;
  v4 = v3[1];
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  *a2 = _sIeg_ytIegr_TRTA_0;
  a2[1] = v6;

  return result;
}

void key path setter for TrainingLoadEffortExplanationView.onNext : TrainingLoadEffortExplanationView(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = (a2 + *(type metadata accessor for TrainingLoadEffortExplanationView(0) + 20));

  *v6 = _sytIegr_Ieg_TRTA_0;
  v6[1] = v5;
}

uint64_t TrainingLoadEffortExplanationView.onNext.getter()
{
  v1 = *(v0 + *(type metadata accessor for TrainingLoadEffortExplanationView(0) + 20));

  return v1;
}

uint64_t type metadata accessor for TrainingLoadEffortExplanationView(uint64_t a1)
{
  result = type metadata singleton initialization cache for TrainingLoadEffortExplanationView;
  if (!type metadata singleton initialization cache for TrainingLoadEffortExplanationView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void TrainingLoadEffortExplanationView.onNext.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for TrainingLoadEffortExplanationView(0) + 20));

  *v5 = a1;
  v5[1] = a2;
}

uint64_t TrainingLoadEffortExplanationView.isStandalone.setter(char a1)
{
  result = type metadata accessor for TrainingLoadEffortExplanationView(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t TrainingLoadEffortExplanationView.init(isStandalone:onNext:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  *a4 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMR);
  swift_storeEnumTagMultiPayload();
  EffortExplanationView = type metadata accessor for TrainingLoadEffortExplanationView(0);
  *(a4 + EffortExplanationView[6]) = a1;
  v9 = (a4 + EffortExplanationView[5]);
  *v9 = a2;
  v9[1] = a3;
  result = FIShouldTrackTrainingLoad();
  v11 = a4 + EffortExplanationView[7];
  *v11 = result;
  *(v11 + 1) = 0;
  return result;
}

uint64_t TrainingLoadEffortExplanationView.message.getter()
{
  if (*(v0 + *(type metadata accessor for TrainingLoadEffortExplanationView(0) + 24)) == 1)
  {
    if (one-time initialization token for WorkoutUIBundle != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v1 = WorkoutUIBundle.super.isa;
    v9 = 0xE000000000000000;
    v2 = 0xD00000000000003ELL;
    v3 = 0x800000020CB98410;
  }

  else
  {
    if (one-time initialization token for WorkoutUIBundle != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v1 = WorkoutUIBundle.super.isa;
    v9 = 0xE000000000000000;
    v3 = 0x800000020CB983D0;
    v2 = 0xD000000000000033;
  }

  v4.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v4.value._object = 0xEB00000000656C62;
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  v6 = 0;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v2, v4, v1, v5, *(&v9 - 1))._countAndFlagsBits;

  return countAndFlagsBits;
}

__n128 TrainingLoadEffortExplanationView.body.getter@<Q0>(uint64_t a1@<X8>)
{
  v48 = a1;
  EffortExplanationView = type metadata accessor for TrainingLoadEffortExplanationView(0);
  v3 = *(EffortExplanationView - 8);
  v42 = EffortExplanationView - 8;
  v44 = v3;
  MEMORY[0x28223BE20](EffortExplanationView - 8);
  v45 = v4;
  v46 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI10ScrollViewVyAA05TupleD0Vy07WorkoutB026TrainingLoadOnboardingCoreV_AA15ModifiedContentVyAJyAJyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0M9AlignmentOGGAA14_PaddingLayoutVGATGAA0D0PAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAJyAJyAJyAJyAJyAJyAJyAA6ToggleVyALGATGATGANyAA4FontVSgGGAA016_BackgroundStyleQ0VyAA5ColorVGGAA11_ClipEffectVyAA7CapsuleVGGAA01_l9ShapeKindQ0VyA19_GGATG_SbQo_AJyAJyAJyAlTGAQGATGtGGMd, &_s7SwiftUI10ScrollViewVyAA05TupleD0Vy07WorkoutB026TrainingLoadOnboardingCoreV_AA15ModifiedContentVyAJyAJyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0M9AlignmentOGGAA14_PaddingLayoutVGATGAA0D0PAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAJyAJyAJyAJyAJyAJyAJyAA6ToggleVyALGATGATGANyAA4FontVSgGGAA016_BackgroundStyleQ0VyAA5ColorVGGAA11_ClipEffectVyAA7CapsuleVGGAA01_l9ShapeKindQ0VyA19_GGATG_SbQo_AJyAJyAJyAlTGAQGATGtGGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v41 - v10;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA06ScrollG0VyAGy07WorkoutB026TrainingLoadOnboardingCoreV_ACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0N9AlignmentOGGAA14_PaddingLayoutVGAVGAA0G0PAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyACyACyACyACyACyACyACyAA6ToggleVyANGAVGAVGAPyAA4FontVSgGGAA016_BackgroundStyleR0VyAA5ColorVGGAA11_ClipEffectVyAA7CapsuleVGGAA01_d9ShapeKindR0VyA21_GGAVG_SbQo_ACyACyACyAnVGASGAVGtGG_AA6SpacerVtGGAA06_InsetgR0VyAJ0jkL6ButtonVGGMd, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA06ScrollG0VyAGy07WorkoutB026TrainingLoadOnboardingCoreV_ACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0N9AlignmentOGGAA14_PaddingLayoutVGAVGAA0G0PAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyACyACyACyACyACyACyACyAA6ToggleVyANGAVGAVGAPyAA4FontVSgGGAA016_BackgroundStyleR0VyAA5ColorVGGAA11_ClipEffectVyAA7CapsuleVGGAA01_d9ShapeKindR0VyA21_GGAVG_SbQo_ACyACyACyAnVGASGAVGtGG_AA6SpacerVtGGAA06_InsetgR0VyAJ0jkL6ButtonVGGMR);
  MEMORY[0x28223BE20](v43);
  v13 = &v41 - v12;
  *v13 = static HorizontalAlignment.center.getter();
  *(v13 + 1) = 0;
  v13[16] = 0;
  v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA06ScrollD0VyAIy07WorkoutB026TrainingLoadOnboardingCoreV_AA15ModifiedContentVyAPyAPyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0Q9AlignmentOGGAA08_PaddingG0VGAZGAA0D0PAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAPyAPyAPyAPyAPyAPyAPyAA6ToggleVyARGAZGAZGATyAA4FontVSgGGAA016_BackgroundStyleU0VyAA5ColorVGGAA11_ClipEffectVyAA7CapsuleVGGAA01_p9ShapeKindU0VyA25_GGAZG_SbQo_APyAPyAPyArZGAWGAZGtGG_AA6SpacerVtGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA06ScrollD0VyAIy07WorkoutB026TrainingLoadOnboardingCoreV_AA15ModifiedContentVyAPyAPyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0Q9AlignmentOGGAA08_PaddingG0VGAZGAA0D0PAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAPyAPyAPyAPyAPyAPyAPyAA6ToggleVyARGAZGAZGATyAA4FontVSgGGAA016_BackgroundStyleU0VyAA5ColorVGGAA11_ClipEffectVyAA7CapsuleVGGAA01_p9ShapeKindU0VyA25_GGAZG_SbQo_APyAPyAPyArZGAWGAZGtGG_AA6SpacerVtGGMR) + 44);
  v47 = v13;
  v15 = &v13[v14];
  v49 = v1;
  static Axis.Set.vertical.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVy07WorkoutB026TrainingLoadOnboardingCoreV_AA15ModifiedContentVyAHyAHyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0L9AlignmentOGGAA14_PaddingLayoutVGARGAA0D0PAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAHyAHyAHyAHyAHyAHyAHyAA6ToggleVyAJGARGARGALyAA4FontVSgGGAA016_BackgroundStyleP0VyAA5ColorVGGAA11_ClipEffectVyAA7CapsuleVGGAA01_k9ShapeKindP0VyA17_GGARG_SbQo_AHyAHyAHyAjRGAOGARGtGMd, &_s7SwiftUI9TupleViewVy07WorkoutB026TrainingLoadOnboardingCoreV_AA15ModifiedContentVyAHyAHyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0L9AlignmentOGGAA14_PaddingLayoutVGARGAA0D0PAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAHyAHyAHyAHyAHyAHyAHyAA6ToggleVyAJGARGARGALyAA4FontVSgGGAA016_BackgroundStyleP0VyAA5ColorVGGAA11_ClipEffectVyAA7CapsuleVGGAA01_k9ShapeKindP0VyA17_GGARG_SbQo_AHyAHyAHyAjRGAOGARGtGMR);
  lazy protocol witness table accessor for type TupleView<(TrainingLoadOnboardingCore, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _PaddingLayout>, _PaddingLayout>, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0, ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _EnvironmentKeyWritingModifier<TextAlignment>>, _PaddingLayout>)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type TupleView<(TrainingLoadOnboardingCore, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _PaddingLayout>, _PaddingLayout>, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0, ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _EnvironmentKeyWritingModifier<TextAlignment>>, _PaddingLayout>)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVy07WorkoutB026TrainingLoadOnboardingCoreV_AA15ModifiedContentVyAHyAHyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0L9AlignmentOGGAA14_PaddingLayoutVGARGAA0D0PAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAHyAHyAHyAHyAHyAHyAHyAA6ToggleVyAJGARGARGALyAA4FontVSgGGAA016_BackgroundStyleP0VyAA5ColorVGGAA11_ClipEffectVyAA7CapsuleVGGAA01_k9ShapeKindP0VyA17_GGARG_SbQo_AHyAHyAHyAjRGAOGARGtGMd, &_s7SwiftUI9TupleViewVy07WorkoutB026TrainingLoadOnboardingCoreV_AA15ModifiedContentVyAHyAHyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0L9AlignmentOGGAA14_PaddingLayoutVGARGAA0D0PAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAHyAHyAHyAHyAHyAHyAHyAA6ToggleVyAJGARGARGALyAA4FontVSgGGAA016_BackgroundStyleP0VyAA5ColorVGGAA11_ClipEffectVyAA7CapsuleVGGAA01_k9ShapeKindP0VyA17_GGARG_SbQo_AHyAHyAHyAjRGAOGARGtGMR, MEMORY[0x277CE14C0]);
  ScrollView.init(_:showsIndicators:content:)();
  v16 = *(v6 + 16);
  v16(v8, v11, v5);
  v16(v15, v8, v5);
  v17 = &v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI10ScrollViewVyAA05TupleD0Vy07WorkoutB026TrainingLoadOnboardingCoreV_AA15ModifiedContentVyAJyAJyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0M9AlignmentOGGAA14_PaddingLayoutVGATGAA0D0PAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAJyAJyAJyAJyAJyAJyAJyAA6ToggleVyALGATGATGANyAA4FontVSgGGAA016_BackgroundStyleQ0VyAA5ColorVGGAA11_ClipEffectVyAA7CapsuleVGGAA01_l9ShapeKindQ0VyA19_GGATG_SbQo_AJyAJyAJyAlTGAQGATGtGG_AA6SpacerVtMd, &_s7SwiftUI10ScrollViewVyAA05TupleD0Vy07WorkoutB026TrainingLoadOnboardingCoreV_AA15ModifiedContentVyAJyAJyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0M9AlignmentOGGAA14_PaddingLayoutVGATGAA0D0PAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAJyAJyAJyAJyAJyAJyAJyAA6ToggleVyALGATGATGANyAA4FontVSgGGAA016_BackgroundStyleQ0VyAA5ColorVGGAA11_ClipEffectVyAA7CapsuleVGGAA01_l9ShapeKindQ0VyA19_GGATG_SbQo_AJyAJyAJyAlTGAQGATGtGG_AA6SpacerVtMR) + 48)];
  *v17 = 0;
  v17[8] = 1;
  v18 = *(v6 + 8);
  v18(v11, v5);
  v18(v8, v5);
  v19 = static HorizontalAlignment.center.getter();
  v20 = *(v1 + *(v42 + 32));
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  v21 = v20 == 0;
  if (v20)
  {
    v22 = 0xEB000000004E4F54;
  }

  else
  {
    v22 = 0x800000020CB98270;
  }

  if (v21)
  {
    v23 = 0xD00000000000002FLL;
  }

  else
  {
    v23 = 0x5455425F454E4F44;
  }

  swift_beginAccess();
  v24 = WorkoutUIBundle.super.isa;
  v58._object = 0xE000000000000000;
  v25.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v25.value._object = 0xEB00000000656C62;
  v26._countAndFlagsBits = v23;
  v26._object = v22;
  v27._countAndFlagsBits = 0;
  v27._object = 0xE000000000000000;
  v58._countAndFlagsBits = 0;
  v28 = NSLocalizedString(_:tableName:bundle:value:comment:)(v26, v25, v24, v27, v58);

  v29 = v46;
  outlined init with copy of TrainingLoadEffortExplanationView(v1, v46, type metadata accessor for TrainingLoadEffortExplanationView);
  v30 = (*(v44 + 80) + 16) & ~*(v44 + 80);
  v31 = swift_allocObject();
  outlined init with take of TrainingLoadEffortExplanationView(v29, v31 + v30);
  v32 = VerticalEdge.rawValue.getter();
  LOBYTE(v29) = MEMORY[0x20F309EB0]((2 * v32));
  v33 = static SafeAreaRegions.container.getter();
  v50 = 1;
  v34 = v47;
  v35 = &v47[*(v43 + 36)];
  *v35 = v28;
  *(v35 + 2) = partial apply for closure #1 in closure #2 in TrainingLoadEffortExplanationView.body.getter;
  *(v35 + 3) = v31;
  *(v35 + 4) = v33;
  *(v35 + 5) = 0;
  v35[48] = 1;
  v35[49] = v29;
  *(v35 + 7) = v19;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v36 = v48;
  sub_20C67FBA8(v34, v48);
  v37 = v36 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyAA06ScrollG0VyAGy07WorkoutB026TrainingLoadOnboardingCoreV_ACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0N9AlignmentOGGAA14_PaddingLayoutVGAVGAA0G0PAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyACyACyACyACyACyACyACyAA6ToggleVyANGAVGAVGAPyAA4FontVSgGGAA016_BackgroundStyleR0VyAA5ColorVGGAA11_ClipEffectVyAA7CapsuleVGGAA01_d9ShapeKindR0VyA21_GGAVG_SbQo_ACyACyACyAnVGASGAVGtGG_AA6SpacerVtGGAA06_InsetgR0VyAJ0jkL6ButtonVGGAA010_FlexFrameU0VGMd, &_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyAA06ScrollG0VyAGy07WorkoutB026TrainingLoadOnboardingCoreV_ACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0N9AlignmentOGGAA14_PaddingLayoutVGAVGAA0G0PAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyACyACyACyACyACyACyACyAA6ToggleVyANGAVGAVGAPyAA4FontVSgGGAA016_BackgroundStyleR0VyAA5ColorVGGAA11_ClipEffectVyAA7CapsuleVGGAA01_d9ShapeKindR0VyA21_GGAVG_SbQo_ACyACyACyAnVGASGAVGtGG_AA6SpacerVtGGAA06_InsetgR0VyAJ0jkL6ButtonVGGAA010_FlexFrameU0VGMR) + 36);
  v38 = v56;
  *(v37 + 64) = v55;
  *(v37 + 80) = v38;
  *(v37 + 96) = v57;
  v39 = v52;
  *v37 = v51;
  *(v37 + 16) = v39;
  result = v54;
  *(v37 + 32) = v53;
  *(v37 + 48) = result;
  return result;
}

uint64_t closure #1 in closure #1 in TrainingLoadEffortExplanationView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v175 = a2;
  EffortExplanationView = type metadata accessor for TrainingLoadEffortExplanationView(0);
  v4 = *(EffortExplanationView - 8);
  v169 = EffortExplanationView;
  v170 = v4;
  MEMORY[0x28223BE20](EffortExplanationView);
  v171 = v5;
  v172 = &v167 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyAA6ToggleVyAA4TextVGAA14_PaddingLayoutVGAJGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_BackgroundStyleL0VyAA5ColorVGGAA11_ClipEffectVyAA7CapsuleVGGAA01_d9ShapeKindL0VyA1_GGAJGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyAA6ToggleVyAA4TextVGAA14_PaddingLayoutVGAJGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_BackgroundStyleL0VyAA5ColorVGGAA11_ClipEffectVyAA7CapsuleVGGAA01_d9ShapeKindL0VyA1_GGAJGMR);
  MEMORY[0x28223BE20](v174);
  v173 = &v167 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAA15ModifiedContentVyAHyAHyAHyAHyAHyAHyAA6ToggleVyAA4TextVGAA14_PaddingLayoutVGAOGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_BackgroundStyleQ0VyAA5ColorVGGAA11_ClipEffectVyAA7CapsuleVGGAA01_i9ShapeKindQ0VyA6_GGAOG_SbQo_Md, &_s7SwiftUI4ViewPAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAA15ModifiedContentVyAHyAHyAHyAHyAHyAHyAA6ToggleVyAA4TextVGAA14_PaddingLayoutVGAOGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_BackgroundStyleQ0VyAA5ColorVGGAA11_ClipEffectVyAA7CapsuleVGGAA01_i9ShapeKindQ0VyA6_GGAOG_SbQo_MR);
  v201 = *(v7 - 8);
  v202 = v7;
  MEMORY[0x28223BE20](v7);
  v200 = &v167 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v204 = &v167 - v10;
  v203 = type metadata accessor for Font.Leading();
  v205 = *(v203 - 8);
  MEMORY[0x28223BE20](v203);
  v190 = &v167 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for AttributeContainer();
  MEMORY[0x28223BE20](v12 - 8);
  OnboardingCore = type metadata accessor for TrainingLoadOnboardingCore(0);
  MEMORY[0x28223BE20](OnboardingCore);
  v199 = &v167 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = (&v167 - v16);
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v18 = WorkoutUIBundle.super.isa;
  v19._countAndFlagsBits = 0xD000000000000031;
  v276._object = 0xE000000000000000;
  v20.value._object = 0xEB00000000656C62;
  v19._object = 0x800000020CB982D0;
  v20.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v21._countAndFlagsBits = 0;
  v21._object = 0xE000000000000000;
  v276._countAndFlagsBits = 0;
  v22 = NSLocalizedString(_:tableName:bundle:value:comment:)(v19, v20, v18, v21, v276);

  TrainingLoadEffortExplanationView.message.getter();
  v180 = a1;
  AttributeContainer.init()();
  AttributedString.init(_:attributes:)();
  v17->_countAndFlagsBits = 0xD000000000000028;
  v17->_object = 0x800000020CB982A0;
  v17[1] = v22;
  v23 = WorkoutUIBundle.super.isa;
  v277._object = 0xE000000000000000;
  v24._object = 0x800000020CB98310;
  v24._countAndFlagsBits = 0xD000000000000039;
  v25.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v25.value._object = 0xEB00000000656C62;
  v26._countAndFlagsBits = 0;
  v26._object = 0xE000000000000000;
  v277._countAndFlagsBits = 0;
  v27 = NSLocalizedString(_:tableName:bundle:value:comment:)(v24, v25, v23, v26, v277);

  v254 = v27;
  v185 = lazy protocol witness table accessor for type String and conformance String();
  v28 = Text.init<A>(_:)();
  v198 = v17;
  v30 = v29;
  v32 = v31;
  static Font.body.getter();
  v184 = *MEMORY[0x277CE0A10];
  v33 = v205;
  v34 = *(v205 + 104);
  v182 = v205 + 104;
  *v183 = v34;
  v35 = v190;
  v36 = v203;
  v34(v190);
  Font.leading(_:)();

  v37 = *(v33 + 8);
  v205 = v33 + 8;
  v181 = v37;
  v37(v35, v36);
  v38 = Text.font(_:)();
  v40 = v39;
  LOBYTE(v36) = v41;

  outlined consume of Text.Storage(v28, v30, v32 & 1);

  v42 = objc_opt_self();
  v168 = v42;
  v43 = [v42 secondaryLabelColor];
  v254._countAndFlagsBits = Color.init(uiColor:)();
  v44 = Text.foregroundStyle<A>(_:)();
  v195 = v45;
  v196 = v44;
  LOBYTE(v28) = v46;
  v197 = v47;
  outlined consume of Text.Storage(v38, v40, v36 & 1);

  KeyPath = swift_getKeyPath();
  v194 = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v178 = v49;
  v179 = v48;
  v176 = v51;
  v177 = v50;
  v191 = v28 & 1;
  LOBYTE(v232._countAndFlagsBits) = v28 & 1;
  LOBYTE(v224) = 0;
  v192 = static Edge.Set.vertical.getter();
  EdgeInsets.init(_all:)();
  v188 = v53;
  v189 = v52;
  v186 = v55;
  v187 = v54;
  LOBYTE(v254._countAndFlagsBits) = 0;
  v56 = WorkoutUIBundle.super.isa;
  v57._countAndFlagsBits = 0xD000000000000032;
  v278._object = 0xE000000000000000;
  v57._object = 0x800000020CB98350;
  v58.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v58.value._object = 0xEB00000000656C62;
  v59._countAndFlagsBits = 0;
  v59._object = 0xE000000000000000;
  v278._countAndFlagsBits = 0;
  v60 = NSLocalizedString(_:tableName:bundle:value:comment:)(v57, v58, v56, v59, v278);

  v232 = v60;
  v61 = (v180 + *(v169 + 28));
  LODWORD(v169) = *v61;
  v167 = *(v61 + 1);
  LOBYTE(v224) = v169;
  *(&v224 + 1) = v167;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd, &_s7SwiftUI5StateVySbGMR);
  State.projectedValue.getter();
  v62 = v173;
  Toggle<>.init<A>(_:isOn:)();
  LOBYTE(v56) = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v64 = v63;
  v66 = v65;
  v68 = v67;
  v70 = v69;
  v71 = v62 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ToggleVyAA4TextVGAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA6ToggleVyAA4TextVGAA14_PaddingLayoutVGMR) + 36);
  *v71 = v56;
  *(v71 + 8) = v64;
  *(v71 + 16) = v66;
  *(v71 + 24) = v68;
  *(v71 + 32) = v70;
  *(v71 + 40) = 0;
  LOBYTE(v56) = static Edge.Set.vertical.getter();
  EdgeInsets.init(_all:)();
  v73 = v72;
  v75 = v74;
  v77 = v76;
  v79 = v78;
  v80 = v62 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6ToggleVyAA4TextVGAA14_PaddingLayoutVGAJGMd, &_s7SwiftUI15ModifiedContentVyACyAA6ToggleVyAA4TextVGAA14_PaddingLayoutVGAJGMR) + 36);
  *v80 = v56;
  *(v80 + 8) = v73;
  *(v80 + 16) = v75;
  *(v80 + 24) = v77;
  *(v80 + 32) = v79;
  *(v80 + 40) = 0;
  static Font.body.getter();
  v81 = v190;
  v82 = v203;
  (*v183)(v190, v184, v203);
  Font.leading(_:)();

  v181(v81, v82);
  static Font.Weight.semibold.getter();
  v83 = Font.weight(_:)();

  v84 = swift_getKeyPath();
  v85 = (v62 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA6ToggleVyAA4TextVGAA14_PaddingLayoutVGAJGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA6ToggleVyAA4TextVGAA14_PaddingLayoutVGAJGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGMR) + 36));
  *v85 = v84;
  v85[1] = v83;
  v86 = [v42 secondarySystemGroupedBackgroundColor];
  v87 = Color.init(uiColor:)();
  LOBYTE(v84) = static Edge.Set.all.getter();
  v88 = v62 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA6ToggleVyAA4TextVGAA14_PaddingLayoutVGAJGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_BackgroundStyleL0VyAA5ColorVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA6ToggleVyAA4TextVGAA14_PaddingLayoutVGAJGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_BackgroundStyleL0VyAA5ColorVGGMR) + 36);
  *v88 = v87;
  *(v88 + 8) = v84;
  v89 = v62 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyAA6ToggleVyAA4TextVGAA14_PaddingLayoutVGAJGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_BackgroundStyleL0VyAA5ColorVGGAA11_ClipEffectVyAA7CapsuleVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA6ToggleVyAA4TextVGAA14_PaddingLayoutVGAJGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_BackgroundStyleL0VyAA5ColorVGGAA11_ClipEffectVyAA7CapsuleVGGMR) + 36);
  v90 = *MEMORY[0x277CE0118];
  v91 = type metadata accessor for RoundedCornerStyle();
  v92 = *(*(v91 - 8) + 104);
  v92(v89, v90, v91);
  *(v89 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11_ClipEffectVyAA7CapsuleVGMd, &_s7SwiftUI11_ClipEffectVyAA7CapsuleVGMR) + 36)) = 256;
  v93 = v62 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA6ToggleVyAA4TextVGAA14_PaddingLayoutVGAJGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_BackgroundStyleL0VyAA5ColorVGGAA11_ClipEffectVyAA7CapsuleVGGAA01_d9ShapeKindL0VyA1_GGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA6ToggleVyAA4TextVGAA14_PaddingLayoutVGAJGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_BackgroundStyleL0VyAA5ColorVGGAA11_ClipEffectVyAA7CapsuleVGGAA01_d9ShapeKindL0VyA1_GGMR) + 36);
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI25_ContentShapeKindModifierVyAA7CapsuleVGMd, &_s7SwiftUI25_ContentShapeKindModifierVyAA7CapsuleVGMR);
  static ContentShapeKinds.accessibility.getter();
  v92(v93, v90, v91);
  *(v93 + *(v94 + 36)) = 0;
  LOBYTE(v93) = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v95 = v62 + *(v174 + 36);
  *v95 = v93;
  *(v95 + 8) = v96;
  *(v95 + 16) = v97;
  *(v95 + 24) = v98;
  *(v95 + 32) = v99;
  *(v95 + 40) = 0;
  LOBYTE(v254._countAndFlagsBits) = v169;
  v254._object = v167;
  State.wrappedValue.getter();
  LOBYTE(v254._countAndFlagsBits) = v232._countAndFlagsBits;
  v100 = v172;
  outlined init with copy of TrainingLoadEffortExplanationView(v180, v172, type metadata accessor for TrainingLoadEffortExplanationView);
  v101 = (*(v170 + 80) + 16) & ~*(v170 + 80);
  v102 = swift_allocObject();
  outlined init with take of TrainingLoadEffortExplanationView(v100, v102 + v101);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Toggle<Text>, _PaddingLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _BackgroundStyleModifier<Color>>, _ClipEffect<Capsule>>, _ContentShapeKindModifier<Capsule>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Toggle<Text>, _PaddingLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _BackgroundStyleModifier<Color>>, _ClipEffect<Capsule>>, _ContentShapeKindModifier<Capsule>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyAA6ToggleVyAA4TextVGAA14_PaddingLayoutVGAJGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_BackgroundStyleL0VyAA5ColorVGGAA11_ClipEffectVyAA7CapsuleVGGAA01_d9ShapeKindL0VyA1_GGAJGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyAA6ToggleVyAA4TextVGAA14_PaddingLayoutVGAJGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_BackgroundStyleL0VyAA5ColorVGGAA11_ClipEffectVyAA7CapsuleVGGAA01_d9ShapeKindL0VyA1_GGAJGMR, lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Toggle<Text>, _PaddingLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _BackgroundStyleModifier<Color>>, _ClipEffect<Capsule>>, _ContentShapeKindModifier<Capsule>> and conformance <> ModifiedContent<A, B>);
  View.onChange<A>(of:initial:_:)();

  outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Toggle<Text>, _PaddingLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _BackgroundStyleModifier<Color>>, _ClipEffect<Capsule>>, _ContentShapeKindModifier<Capsule>>, _PaddingLayout>(v62, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyAA6ToggleVyAA4TextVGAA14_PaddingLayoutVGAJGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_BackgroundStyleL0VyAA5ColorVGGAA11_ClipEffectVyAA7CapsuleVGGAA01_d9ShapeKindL0VyA1_GGAJGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyAA6ToggleVyAA4TextVGAA14_PaddingLayoutVGAJGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_BackgroundStyleL0VyAA5ColorVGGAA11_ClipEffectVyAA7CapsuleVGGAA01_d9ShapeKindL0VyA1_GGAJGMR);
  v103 = WorkoutUIBundle.super.isa;
  v279._object = 0xE000000000000000;
  v104._object = 0x800000020CB98390;
  v104._countAndFlagsBits = 0xD000000000000039;
  v105.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v105.value._object = 0xEB00000000656C62;
  v106._countAndFlagsBits = 0;
  v106._object = 0xE000000000000000;
  v279._countAndFlagsBits = 0;
  v107 = NSLocalizedString(_:tableName:bundle:value:comment:)(v104, v105, v103, v106, v279);

  v254 = v107;
  v108 = Text.init<A>(_:)();
  v110 = v109;
  LOBYTE(v100) = v111;
  static Font.subheadline.getter();
  v112 = v203;
  (*v183)(v81, v184, v203);
  Font.leading(_:)();

  v181(v81, v112);
  v113 = Text.font(_:)();
  v115 = v114;
  LOBYTE(v92) = v116;

  outlined consume of Text.Storage(v108, v110, v100 & 1);

  v117 = [v168 secondaryLabelColor];
  v254._countAndFlagsBits = Color.init(uiColor:)();
  v190 = Text.foregroundStyle<A>(_:)();
  v185 = v118;
  v120 = v119;
  v203 = v121;
  outlined consume of Text.Storage(v113, v115, v92 & 1);

  v184 = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v123 = v122;
  v125 = v124;
  v127 = v126;
  v129 = v128;
  v183[0] = v120 & 1;
  LOBYTE(v254._countAndFlagsBits) = v120 & 1;
  LOBYTE(v232._countAndFlagsBits) = 0;
  v130 = swift_getKeyPath();
  v182 = v130;
  LODWORD(v205) = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v132 = v131;
  v134 = v133;
  v136 = v135;
  v138 = v137;
  LOBYTE(v254._countAndFlagsBits) = 0;
  v139 = v199;
  outlined init with copy of TrainingLoadEffortExplanationView(v198, v199, type metadata accessor for TrainingLoadOnboardingCore);
  v140 = v200;
  v141 = *(v201 + 16);
  v142 = v202;
  v141(v200, v204, v202);
  v143 = v139;
  v144 = v175;
  outlined init with copy of TrainingLoadEffortExplanationView(v143, v175, type metadata accessor for TrainingLoadOnboardingCore);
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI26TrainingLoadOnboardingCoreV_05SwiftB015ModifiedContentVyAFyAFyAD4TextVAD30_EnvironmentKeyWritingModifierVyAD0J9AlignmentOGGAD14_PaddingLayoutVGAPGAD4ViewPADE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAFyAFyAFyAFyAFyAFyAFyAD6ToggleVyAHGAPGAPGAJyAD4FontVSgGGAD016_BackgroundStyleN0VyAD5ColorVGGAD11_ClipEffectVyAD7CapsuleVGGAD01_i9ShapeKindN0VyA15_GGAPG_SbQo_AFyAFyAFyAhPGAMGAPGtMd, &_s9WorkoutUI26TrainingLoadOnboardingCoreV_05SwiftB015ModifiedContentVyAFyAFyAD4TextVAD30_EnvironmentKeyWritingModifierVyAD0J9AlignmentOGGAD14_PaddingLayoutVGAPGAD4ViewPADE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAFyAFyAFyAFyAFyAFyAFyAD6ToggleVyAHGAPGAPGAJyAD4FontVSgGGAD016_BackgroundStyleN0VyAD5ColorVGGAD11_ClipEffectVyAD7CapsuleVGGAD01_i9ShapeKindN0VyA15_GGAPG_SbQo_AFyAFyAFyAhPGAMGAPGtMR);
  v146 = (v144 + v145[12]);
  *&v216 = v196;
  *(&v216 + 1) = v195;
  LOBYTE(v217) = v191;
  *(&v217 + 1) = *v213;
  DWORD1(v217) = *&v213[3];
  *(&v217 + 1) = v197;
  *&v218 = KeyPath;
  BYTE8(v218) = 1;
  *(&v218 + 9) = *v212;
  HIDWORD(v218) = *&v212[3];
  LOBYTE(v219) = v194;
  *(&v219 + 1) = *v211;
  DWORD1(v219) = *&v211[3];
  *(&v219 + 1) = v179;
  *&v220 = v178;
  *(&v220 + 1) = v177;
  *&v221 = v176;
  BYTE8(v221) = 0;
  *(&v221 + 9) = v215[0];
  HIDWORD(v221) = *(v215 + 3);
  LOBYTE(v222) = v192;
  DWORD1(v222) = *&v214[3];
  *(&v222 + 1) = *v214;
  *(&v222 + 1) = v189;
  *&v223[0] = v188;
  *(&v223[0] + 1) = v187;
  *&v223[1] = v186;
  BYTE8(v223[1]) = 0;
  v147 = v217;
  v148 = v218;
  *v146 = v216;
  v146[1] = v147;
  v150 = v219;
  v149 = v220;
  v146[2] = v148;
  v146[3] = v150;
  v151 = v221;
  v152 = v222;
  *(v146 + 121) = *(v223 + 9);
  v153 = v223[0];
  v146[6] = v152;
  v146[7] = v153;
  v146[4] = v149;
  v146[5] = v151;
  v141(v144 + v145[16], v140, v142);
  v154 = (v144 + v145[20]);
  v155 = v190;
  *&v224 = v190;
  v156 = v185;
  *(&v224 + 1) = v185;
  LOBYTE(v140) = v183[0];
  LOBYTE(v225) = v183[0];
  *(&v225 + 1) = *v207;
  DWORD1(v225) = *&v207[3];
  v157 = v203;
  *(&v225 + 1) = v203;
  LOBYTE(v145) = v184;
  LOBYTE(v226) = v184;
  *(&v226 + 1) = *v206;
  DWORD1(v226) = *&v206[3];
  *(&v226 + 1) = v123;
  *&v227 = v125;
  *(&v227 + 1) = v127;
  *&v228 = v129;
  BYTE8(v228) = 0;
  *(&v228 + 9) = *v208;
  HIDWORD(v228) = *&v208[3];
  *&v229 = v130;
  BYTE8(v229) = 1;
  *(&v229 + 9) = v210[0];
  HIDWORD(v229) = *(v210 + 3);
  LOBYTE(v230) = v205;
  *(&v230 + 1) = *v209;
  DWORD1(v230) = *&v209[3];
  *(&v230 + 1) = v132;
  *&v231[0] = v134;
  *(&v231[0] + 1) = v136;
  *&v231[1] = v138;
  BYTE8(v231[1]) = 0;
  v158 = v224;
  v159 = v225;
  v160 = v227;
  v154[2] = v226;
  v154[3] = v160;
  *v154 = v158;
  v154[1] = v159;
  v161 = v228;
  v162 = v229;
  *(v154 + 121) = *(v231 + 9);
  v163 = v231[0];
  v154[6] = v230;
  v154[7] = v163;
  v154[4] = v161;
  v154[5] = v162;
  outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _PaddingLayout>, _PaddingLayout>(&v216, &v254, &_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAA14_PaddingLayoutVGAMGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAA14_PaddingLayoutVGAMGMR);
  outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _PaddingLayout>, _PaddingLayout>(&v224, &v254, &_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA14_PaddingLayoutVGAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA14_PaddingLayoutVGAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAGGMR);
  v164 = v202;
  v165 = *(v201 + 8);
  v165(v204, v202);
  outlined destroy of TrainingLoadOnboardingCore(v198);
  v232._countAndFlagsBits = v155;
  v232._object = v156;
  v233 = v140;
  *v234 = *v207;
  *&v234[3] = *&v207[3];
  v235 = v157;
  v236 = v145;
  *v237 = *v206;
  *&v237[3] = *&v206[3];
  v238 = v123;
  v239 = v125;
  v240 = v127;
  v241 = v129;
  v242 = 0;
  *v243 = *v208;
  *&v243[3] = *&v208[3];
  v244 = v182;
  v245 = 1;
  *v246 = v210[0];
  *&v246[3] = *(v210 + 3);
  v247 = v205;
  *v248 = *v209;
  *&v248[3] = *&v209[3];
  v249 = v132;
  v250 = v134;
  v251 = v136;
  v252 = v138;
  v253 = 0;
  outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Toggle<Text>, _PaddingLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _BackgroundStyleModifier<Color>>, _ClipEffect<Capsule>>, _ContentShapeKindModifier<Capsule>>, _PaddingLayout>(&v232, &_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA14_PaddingLayoutVGAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA14_PaddingLayoutVGAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAGGMR);
  v165(v200, v164);
  v254._countAndFlagsBits = v196;
  v254._object = v195;
  v255 = v191;
  *v256 = *v213;
  *&v256[3] = *&v213[3];
  v257 = v197;
  v258 = KeyPath;
  v259 = 1;
  *v260 = *v212;
  *&v260[3] = *&v212[3];
  v261 = v194;
  *&v262[3] = *&v211[3];
  *v262 = *v211;
  v263 = v179;
  v264 = v178;
  v265 = v177;
  v266 = v176;
  v267 = 0;
  *&v268[3] = *(v215 + 3);
  *v268 = v215[0];
  v269 = v192;
  *&v270[3] = *&v214[3];
  *v270 = *v214;
  v271 = v189;
  v272 = v188;
  v273 = v187;
  v274 = v186;
  v275 = 0;
  outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Toggle<Text>, _PaddingLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _BackgroundStyleModifier<Color>>, _ClipEffect<Capsule>>, _ContentShapeKindModifier<Capsule>>, _PaddingLayout>(&v254, &_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAA14_PaddingLayoutVGAMGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAA14_PaddingLayoutVGAMGMR);
  return outlined destroy of TrainingLoadOnboardingCore(v199);
}

uint64_t closure #1 in closure #1 in closure #1 in TrainingLoadEffortExplanationView.body.getter(uint64_t a1)
{
  type metadata accessor for TrainingLoadEffortExplanationView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd, &_s7SwiftUI5StateVySbGMR);
  State.wrappedValue.getter();
  return FISetShouldTrackTrainingLoad();
}

uint64_t outlined init with take of TrainingLoadEffortExplanationView(uint64_t a1, uint64_t a2)
{
  EffortExplanationView = type metadata accessor for TrainingLoadEffortExplanationView(0);
  (*(*(EffortExplanationView - 8) + 32))(a2, a1, EffortExplanationView);
  return a2;
}

void type metadata completion function for TrainingLoadEffortExplanationView(uint64_t a1)
{
  type metadata accessor for Environment<DismissAction>(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for ()();
    if (v2 <= 0x3F)
    {
      type metadata accessor for State<Bool>();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<VStack<TupleView<(ScrollView<TupleView<(TrainingLoadOnboardingCore, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _PaddingLayout>, _PaddingLayout>, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0, ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _EnvironmentKeyWritingModifier<TextAlignment>>, _PaddingLayout>)>>, Spacer)>>, _InsetViewModifier<TrainingLoadOnboardingButton>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<VStack<TupleView<(ScrollView<TupleView<(TrainingLoadOnboardingCore, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _PaddingLayout>, _PaddingLayout>, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0, ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _EnvironmentKeyWritingModifier<TextAlignment>>, _PaddingLayout>)>>, Spacer)>>, _InsetViewModifier<TrainingLoadOnboardingButton>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<VStack<TupleView<(ScrollView<TupleView<(TrainingLoadOnboardingCore, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _PaddingLayout>, _PaddingLayout>, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0, ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _EnvironmentKeyWritingModifier<TextAlignment>>, _PaddingLayout>)>>, Spacer)>>, _InsetViewModifier<TrainingLoadOnboardingButton>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyAA06ScrollG0VyAGy07WorkoutB026TrainingLoadOnboardingCoreV_ACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0N9AlignmentOGGAA14_PaddingLayoutVGAVGAA0G0PAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyACyACyACyACyACyACyACyAA6ToggleVyANGAVGAVGAPyAA4FontVSgGGAA016_BackgroundStyleR0VyAA5ColorVGGAA11_ClipEffectVyAA7CapsuleVGGAA01_d9ShapeKindR0VyA21_GGAVG_SbQo_ACyACyACyAnVGASGAVGtGG_AA6SpacerVtGGAA06_InsetgR0VyAJ0jkL6ButtonVGGAA010_FlexFrameU0VGMd, &_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyAA06ScrollG0VyAGy07WorkoutB026TrainingLoadOnboardingCoreV_ACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0N9AlignmentOGGAA14_PaddingLayoutVGAVGAA0G0PAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyACyACyACyACyACyACyACyAA6ToggleVyANGAVGAVGAPyAA4FontVSgGGAA016_BackgroundStyleR0VyAA5ColorVGGAA11_ClipEffectVyAA7CapsuleVGGAA01_d9ShapeKindR0VyA21_GGAVG_SbQo_ACyACyACyAnVGASGAVGtGG_AA6SpacerVtGGAA06_InsetgR0VyAJ0jkL6ButtonVGGAA010_FlexFrameU0VGMR);
    lazy protocol witness table accessor for type ModifiedContent<VStack<TupleView<(ScrollView<TupleView<(TrainingLoadOnboardingCore, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _PaddingLayout>, _PaddingLayout>, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0, ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _EnvironmentKeyWritingModifier<TextAlignment>>, _PaddingLayout>)>>, Spacer)>>, _InsetViewModifier<TrainingLoadOnboardingButton>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<VStack<TupleView<(ScrollView<TupleView<(TrainingLoadOnboardingCore, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _PaddingLayout>, _PaddingLayout>, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0, ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _EnvironmentKeyWritingModifier<TextAlignment>>, _PaddingLayout>)>>, Spacer)>>, _InsetViewModifier<TrainingLoadOnboardingButton>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<VStack<TupleView<(ScrollView<TupleView<(TrainingLoadOnboardingCore, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _PaddingLayout>, _PaddingLayout>, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0, ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _EnvironmentKeyWritingModifier<TextAlignment>>, _PaddingLayout>)>>, Spacer)>>, _InsetViewModifier<TrainingLoadOnboardingButton>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(ScrollView<TupleView<(TrainingLoadOnboardingCore, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _PaddingLayout>, _PaddingLayout>, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0, ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _EnvironmentKeyWritingModifier<TextAlignment>>, _PaddingLayout>)>>, Spacer)>>, _InsetViewModifier<TrainingLoadOnboardingButton>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(ScrollView<TupleView<(TrainingLoadOnboardingCore, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _PaddingLayout>, _PaddingLayout>, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0, ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _EnvironmentKeyWritingModifier<TextAlignment>>, _PaddingLayout>)>>, Spacer)>>, _InsetViewModifier<TrainingLoadOnboardingButton>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA06ScrollG0VyAGy07WorkoutB026TrainingLoadOnboardingCoreV_ACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0N9AlignmentOGGAA14_PaddingLayoutVGAVGAA0G0PAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyACyACyACyACyACyACyACyAA6ToggleVyANGAVGAVGAPyAA4FontVSgGGAA016_BackgroundStyleR0VyAA5ColorVGGAA11_ClipEffectVyAA7CapsuleVGGAA01_d9ShapeKindR0VyA21_GGAVG_SbQo_ACyACyACyAnVGASGAVGtGG_AA6SpacerVtGGAA06_InsetgR0VyAJ0jkL6ButtonVGGMd, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA06ScrollG0VyAGy07WorkoutB026TrainingLoadOnboardingCoreV_ACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0N9AlignmentOGGAA14_PaddingLayoutVGAVGAA0G0PAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyACyACyACyACyACyACyACyAA6ToggleVyANGAVGAVGAPyAA4FontVSgGGAA016_BackgroundStyleR0VyAA5ColorVGGAA11_ClipEffectVyAA7CapsuleVGGAA01_d9ShapeKindR0VyA21_GGAVG_SbQo_ACyACyACyAnVGASGAVGtGG_AA6SpacerVtGGAA06_InsetgR0VyAJ0jkL6ButtonVGGMR);
    lazy protocol witness table accessor for type TupleView<(TrainingLoadOnboardingCore, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _PaddingLayout>, _PaddingLayout>, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0, ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _EnvironmentKeyWritingModifier<TextAlignment>>, _PaddingLayout>)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type VStack<TupleView<(ScrollView<TupleView<(TrainingLoadOnboardingCore, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _PaddingLayout>, _PaddingLayout>, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0, ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _EnvironmentKeyWritingModifier<TextAlignment>>, _PaddingLayout>)>>, Spacer)>> and conformance VStack<A>, &_s7SwiftUI6VStackVyAA9TupleViewVyAA06ScrollE0VyAEy07WorkoutB026TrainingLoadOnboardingCoreV_AA15ModifiedContentVyALyALyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0N9AlignmentOGGAA14_PaddingLayoutVGAVGAA0E0PAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyALyALyALyALyALyALyALyAA6ToggleVyANGAVGAVGAPyAA4FontVSgGGAA016_BackgroundStyleR0VyAA5ColorVGGAA11_ClipEffectVyAA7CapsuleVGGAA01_m9ShapeKindR0VyA21_GGAVG_SbQo_ALyALyALyAnVGASGAVGtGG_AA6SpacerVtGGMd, "8h\a", MEMORY[0x277CE1198]);
    lazy protocol witness table accessor for type TupleView<(TrainingLoadOnboardingCore, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _PaddingLayout>, _PaddingLayout>, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0, ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _EnvironmentKeyWritingModifier<TextAlignment>>, _PaddingLayout>)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type _InsetViewModifier<TrainingLoadOnboardingButton> and conformance _InsetViewModifier<A>, &_s7SwiftUI18_InsetViewModifierVy07WorkoutB028TrainingLoadOnboardingButtonVGMd, &_s7SwiftUI18_InsetViewModifierVy07WorkoutB028TrainingLoadOnboardingButtonVGMR, MEMORY[0x277CE01C8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(ScrollView<TupleView<(TrainingLoadOnboardingCore, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _PaddingLayout>, _PaddingLayout>, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0, ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _EnvironmentKeyWritingModifier<TextAlignment>>, _PaddingLayout>)>>, Spacer)>>, _InsetViewModifier<TrainingLoadOnboardingButton>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}