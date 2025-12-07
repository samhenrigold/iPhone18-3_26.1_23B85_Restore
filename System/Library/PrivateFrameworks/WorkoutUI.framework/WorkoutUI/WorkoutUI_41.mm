uint64_t specialized CadenceTargetValue.valueString.getter(uint64_t a1, int a2, double a3)
{
  v31 = a2;
  v28 = a1;
  v3 = type metadata accessor for NumberFormatStyleConfiguration.Precision();
  v29 = *(v3 - 8);
  v30 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for FloatingPointRoundingRule();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Locale();
  MEMORY[0x28223BE20](v10 - 8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation24FloatingPointFormatStyleVySdGMd, &_s10Foundation24FloatingPointFormatStyleVySdGMR);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v28 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v28 - v19;
  if (v31)
  {
    if (one-time initialization token for WorkoutUIBundle != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v21 = WorkoutUIBundle.super.isa;
    v34._object = 0xE000000000000000;
    v22._countAndFlagsBits = 0x4E5F43495254454DLL;
    v22._object = 0xEE0045554C41564FLL;
    v23.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v23.value._object = 0xEB00000000656C62;
    v24._countAndFlagsBits = 0;
    v24._object = 0xE000000000000000;
    v34._countAndFlagsBits = 0;
    countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v22, v23, v21, v24, v34)._countAndFlagsBits;

    return countAndFlagsBits;
  }

  else
  {
    v32 = v28;
    static Locale.autoupdatingCurrent.getter();
    lazy protocol witness table accessor for type Double and conformance Double();
    FloatingPointFormatStyle.init(locale:)();
    (*(v7 + 104))(v9, *MEMORY[0x277D84688], v6);
    MEMORY[0x20F3024B0](v9, 0, 1, v11);
    (*(v7 + 8))(v9, v6);
    v27 = *(v12 + 8);
    v27(v14, v11);
    static NumberFormatStyleConfiguration.Precision.fractionLength(_:)();
    MEMORY[0x20F3024C0](v5, v11);
    (*(v29 + 8))(v5, v30);
    v27(v17, v11);
    lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>();
    BinaryFloatingPoint.formatted<A>(_:)();
    v27(v20, v11);
    return v33;
  }
}

uint64_t getEnumTagSinglePayload for IntervalsTargetValue(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for IntervalsTargetValue(uint64_t result, int a2, int a3)
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

void IntervalsTargetValue.body.getter(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for TargetZone.ZoneType();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v72 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  TargetZone.type.getter();
  v7 = (*(v4 + 88))(v6, v3);
  if (v7 == *MEMORY[0x277D7DE48])
  {
    MetricsPublisher.rollingPace.getter();
    v9 = v8;
    v10 = *(v1 + 32);
    v11 = *(v1 + 24);
    v12 = v10;
    MetricsPublisher.workoutStatePublisher.getter();
    v13 = WorkoutStatePublisher.gpsUnavailable.getter();

    *&v74 = v9;
    *(&v74 + 1) = v11;
    *&v75 = v12;
    *(&v75 + 1) = 14;
    LOWORD(v76) = v13 & 1;
LABEL_5:
    lazy protocol witness table accessor for type PaceTargetValue and conformance PaceTargetValue();
    v18 = v11;
    v19 = v12;
    _ConditionalContent<>.init(storage:)();
    if (BYTE1(v80))
    {
      v20 = 256;
    }

    else
    {
      v20 = 0;
    }

    v74 = v78;
    v75 = v79;
    LOWORD(v76) = v20 | v80;
    BYTE2(v76) = 0;
    goto LABEL_9;
  }

  if (v7 == *MEMORY[0x277D7DE40])
  {
    MetricsPublisher.averagePace.getter();
    v15 = v14;
    v16 = *(v1 + 32);
    v11 = *(v1 + 24);
    v12 = v16;
    MetricsPublisher.workoutStatePublisher.getter();
    v17 = WorkoutStatePublisher.gpsUnavailable.getter();

    *&v74 = v15;
    *(&v74 + 1) = v11;
    *&v75 = v12;
    *(&v75 + 1) = 8;
    LOBYTE(v76) = v17 & 1;
    BYTE1(v76) = 1;
    goto LABEL_5;
  }

  if (v7 == *MEMORY[0x277D7DE60])
  {
    MetricsPublisher.currentPace.getter();
    v27 = v26;
    v28 = *(v1 + 32);
    v29 = *(v1 + 24);
    v30 = v28;
    MetricsPublisher.workoutStatePublisher.getter();
    v31 = WorkoutStatePublisher.gpsUnavailable.getter();

    *&v74 = v27;
    *(&v74 + 1) = v29;
    *&v75 = v30;
    *(&v75 + 1) = 4;
    LOWORD(v76) = v31 & 1;
    lazy protocol witness table accessor for type PaceTargetValue and conformance PaceTargetValue();
    lazy protocol witness table accessor for type CadenceTargetValue and conformance CadenceTargetValue();
    v18 = v29;
    v19 = v30;
    _ConditionalContent<>.init(storage:)();
    v32 = v80;
    if (BYTE1(v80))
    {
      v33 = 256;
    }

    else
    {
      v33 = 0;
    }

LABEL_21:
    v74 = v78;
    v75 = v79;
    LOWORD(v76) = v33 | v32;
    BYTE2(v76) = 1;
LABEL_9:
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB015PaceTargetValueVAFGMd, &_s7SwiftUI19_ConditionalContentVy07WorkoutB015PaceTargetValueVAFGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB015PaceTargetValueVAD07CadencegH0VGMd, &_s7SwiftUI19_ConditionalContentVy07WorkoutB015PaceTargetValueVAD07CadencegH0VGMR);
    lazy protocol witness table accessor for type _ConditionalContent<PaceTargetValue, PaceTargetValue> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type _ConditionalContent<PaceTargetValue, CadenceTargetValue> and conformance <> _ConditionalContent<A, B>();
    _ConditionalContent<>.init(storage:)();
    v74 = v78;
    v75 = v79;
    HIWORD(v76) = BYTE2(v80) != 0;
    LOWORD(v76) = v80;
LABEL_10:
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACy07WorkoutB015PaceTargetValueVAFGACyAfD07CadencegH0VGGMd, &_s7SwiftUI19_ConditionalContentVyACy07WorkoutB015PaceTargetValueVAFGACyAfD07CadencegH0VGGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACy07WorkoutB018CadenceTargetValueVAD05PowergH0VGACyAhA4TextVGGMd, &_s7SwiftUI19_ConditionalContentVyACy07WorkoutB018CadenceTargetValueVAD05PowergH0VGACyAhA4TextVGGMR);
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<PaceTargetValue, PaceTargetValue>, _ConditionalContent<PaceTargetValue, CadenceTargetValue>> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<CadenceTargetValue, PowerTargetValue>, _ConditionalContent<PowerTargetValue, Text>> and conformance <> _ConditionalContent<A, B>();
    _ConditionalContent<>.init(storage:)();
    if (HIBYTE(v80))
    {
      v21 = 0x1000000;
    }

    else
    {
      v21 = 0;
    }

    v74 = v78;
    v75 = v79;
    v76 = v21 | v80 | (BYTE2(v80) << 16);
    v77 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyACy07WorkoutB015PaceTargetValueVAFGACyAfD07CadencegH0VGGACyACyAiD05PowergH0VGACyAmA4TextVGGGMd, &_s7SwiftUI19_ConditionalContentVyACyACy07WorkoutB015PaceTargetValueVAFGACyAfD07CadencegH0VGGACyACyAiD05PowergH0VGACyAmA4TextVGGGMR);
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<PaceTargetValue, PaceTargetValue>, _ConditionalContent<PaceTargetValue, CadenceTargetValue>>, _ConditionalContent<_ConditionalContent<CadenceTargetValue, PowerTargetValue>, _ConditionalContent<PowerTargetValue, Text>>> and conformance <> _ConditionalContent<A, B>();
    _ConditionalContent<>.init(storage:)();

    goto LABEL_14;
  }

  if (v7 == *MEMORY[0x277D7DE70])
  {
    v34 = MetricsPublisher.currentCadence.getter();
    v36 = *(v1 + 24);
    v35 = *(v1 + 32);
    *&v74 = v34;
    *(&v74 + 1) = v37 & 1;
    *&v75 = v35;
    *(&v75 + 1) = v36;
    LOBYTE(v76) = 0;
    lazy protocol witness table accessor for type CadenceTargetValue and conformance CadenceTargetValue();
    lazy protocol witness table accessor for type PowerTargetValue and conformance PowerTargetValue();
    v38 = v35;
    v39 = v36;
    v18 = v38;
    v19 = v39;
    _ConditionalContent<>.init(storage:)();
    v74 = v78;
    v75 = v79;
    LOWORD(v76) = v80;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB018CadenceTargetValueVAD05PowergH0VGMd, &_s7SwiftUI19_ConditionalContentVy07WorkoutB018CadenceTargetValueVAD05PowergH0VGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB016PowerTargetValueVAA4TextVGMd, &_s7SwiftUI19_ConditionalContentVy07WorkoutB016PowerTargetValueVAA4TextVGMR);
    lazy protocol witness table accessor for type _ConditionalContent<CadenceTargetValue, PowerTargetValue> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type _ConditionalContent<PowerTargetValue, Text> and conformance <> _ConditionalContent<A, B>(&lazy protocol witness table cache variable for type _ConditionalContent<PowerTargetValue, Text> and conformance <> _ConditionalContent<A, B>, &_s7SwiftUI19_ConditionalContentVy07WorkoutB016PowerTargetValueVAA4TextVGMd, &_s7SwiftUI19_ConditionalContentVy07WorkoutB016PowerTargetValueVAA4TextVGMR, lazy protocol witness table accessor for type PowerTargetValue and conformance PowerTargetValue);
    _ConditionalContent<>.init(storage:)();
    if (BYTE1(v80))
    {
      v40 = 256;
    }

    else
    {
      v40 = 0;
    }

    v74 = v78;
    v75 = v79;
    LOWORD(v76) = v40 | v80;
    HIWORD(v76) = 256;
    goto LABEL_10;
  }

  if (v7 == *MEMORY[0x277D7DE58])
  {
    v41 = MetricsPublisher.averageCadence.getter();
    v43 = *(v1 + 24);
    v42 = *(v1 + 32);
    *&v74 = v41;
    *(&v74 + 1) = v44 & 1;
    *&v75 = v42;
    *(&v75 + 1) = v43;
    LOWORD(v76) = 256;
    lazy protocol witness table accessor for type PaceTargetValue and conformance PaceTargetValue();
    lazy protocol witness table accessor for type CadenceTargetValue and conformance CadenceTargetValue();
    v45 = v42;
    v46 = v43;
    v18 = v45;
    v19 = v46;
    _ConditionalContent<>.init(storage:)();
    v32 = v80;
    if (BYTE1(v80))
    {
      v33 = 256;
    }

    else
    {
      v33 = 0;
    }

    goto LABEL_21;
  }

  if (v7 == *MEMORY[0x277D7DE68])
  {
    MetricsPublisher.powerMetricsPublisher.getter();
    v47 = PowerMetricsPublisher.currentPower.getter();
    v49 = v48;

    v50 = *(v1 + 24);
    *&v74 = v47;
    *(&v74 + 1) = v49 & 1;
    v75 = v50;
    LOBYTE(v76) = 1;
    lazy protocol witness table accessor for type CadenceTargetValue and conformance CadenceTargetValue();
    lazy protocol witness table accessor for type PowerTargetValue and conformance PowerTargetValue();
    v18 = v50;
    _ConditionalContent<>.init(storage:)();
    v74 = v78;
    v75 = v79;
    LOWORD(v76) = v80;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB018CadenceTargetValueVAD05PowergH0VGMd, &_s7SwiftUI19_ConditionalContentVy07WorkoutB018CadenceTargetValueVAD05PowergH0VGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB016PowerTargetValueVAA4TextVGMd, &_s7SwiftUI19_ConditionalContentVy07WorkoutB016PowerTargetValueVAA4TextVGMR);
    lazy protocol witness table accessor for type _ConditionalContent<CadenceTargetValue, PowerTargetValue> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type _ConditionalContent<PowerTargetValue, Text> and conformance <> _ConditionalContent<A, B>(&lazy protocol witness table cache variable for type _ConditionalContent<PowerTargetValue, Text> and conformance <> _ConditionalContent<A, B>, &_s7SwiftUI19_ConditionalContentVy07WorkoutB016PowerTargetValueVAA4TextVGMd, &_s7SwiftUI19_ConditionalContentVy07WorkoutB016PowerTargetValueVAA4TextVGMR, lazy protocol witness table accessor for type PowerTargetValue and conformance PowerTargetValue);
    _ConditionalContent<>.init(storage:)();
    if (BYTE1(v80))
    {
      v51 = 256;
    }

    else
    {
      v51 = 0;
    }

    v74 = v78;
    v75 = v79;
    LOWORD(v76) = v51 | v80;
    HIWORD(v76) = 256;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACy07WorkoutB015PaceTargetValueVAFGACyAfD07CadencegH0VGGMd, &_s7SwiftUI19_ConditionalContentVyACy07WorkoutB015PaceTargetValueVAFGACyAfD07CadencegH0VGGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACy07WorkoutB018CadenceTargetValueVAD05PowergH0VGACyAhA4TextVGGMd, &_s7SwiftUI19_ConditionalContentVyACy07WorkoutB018CadenceTargetValueVAD05PowergH0VGACyAhA4TextVGGMR);
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<PaceTargetValue, PaceTargetValue>, _ConditionalContent<PaceTargetValue, CadenceTargetValue>> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<CadenceTargetValue, PowerTargetValue>, _ConditionalContent<PowerTargetValue, Text>> and conformance <> _ConditionalContent<A, B>();
    _ConditionalContent<>.init(storage:)();
    v52 = v80 | (BYTE2(v80) << 16);
    if (HIBYTE(v80))
    {
      v53 = 0x1000000;
    }

    else
    {
      v53 = 0;
    }

LABEL_45:
    v74 = v78;
    v75 = v79;
    v76 = v53 | v52;
    v77 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyACy07WorkoutB015PaceTargetValueVAFGACyAfD07CadencegH0VGGACyACyAiD05PowergH0VGACyAmA4TextVGGGMd, &_s7SwiftUI19_ConditionalContentVyACyACy07WorkoutB015PaceTargetValueVAFGACyAfD07CadencegH0VGGACyACyAiD05PowergH0VGACyAmA4TextVGGGMR);
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<PaceTargetValue, PaceTargetValue>, _ConditionalContent<PaceTargetValue, CadenceTargetValue>>, _ConditionalContent<_ConditionalContent<CadenceTargetValue, PowerTargetValue>, _ConditionalContent<PowerTargetValue, Text>>> and conformance <> _ConditionalContent<A, B>();
    _ConditionalContent<>.init(storage:)();
LABEL_14:

    goto LABEL_15;
  }

  if (v7 == *MEMORY[0x277D7DE50])
  {
    MetricsPublisher.powerMetricsPublisher.getter();
    v54 = PowerMetricsPublisher.averagePower.getter();
    v56 = v55;

    v57 = *(v1 + 24);
    *&v74 = v54;
    *(&v74 + 1) = v56 & 1;
    v75 = v57;
    LOBYTE(v76) = 0;
    lazy protocol witness table accessor for type PowerTargetValue and conformance PowerTargetValue();
    v18 = v57;
    _ConditionalContent<>.init(storage:)();
    v74 = v78;
    v75 = v79;
    LOBYTE(v76) = v80;
    BYTE1(v76) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB018CadenceTargetValueVAD05PowergH0VGMd, &_s7SwiftUI19_ConditionalContentVy07WorkoutB018CadenceTargetValueVAD05PowergH0VGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB016PowerTargetValueVAA4TextVGMd, &_s7SwiftUI19_ConditionalContentVy07WorkoutB016PowerTargetValueVAA4TextVGMR);
    lazy protocol witness table accessor for type _ConditionalContent<CadenceTargetValue, PowerTargetValue> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type _ConditionalContent<PowerTargetValue, Text> and conformance <> _ConditionalContent<A, B>(&lazy protocol witness table cache variable for type _ConditionalContent<PowerTargetValue, Text> and conformance <> _ConditionalContent<A, B>, &_s7SwiftUI19_ConditionalContentVy07WorkoutB016PowerTargetValueVAA4TextVGMd, &_s7SwiftUI19_ConditionalContentVy07WorkoutB016PowerTargetValueVAA4TextVGMR, lazy protocol witness table accessor for type PowerTargetValue and conformance PowerTargetValue);
    _ConditionalContent<>.init(storage:)();
    if (BYTE1(v80))
    {
      v58 = 256;
    }

    else
    {
      v58 = 0;
    }

    v74 = v78;
    v75 = v79;
    LOWORD(v76) = v58 | v80;
    HIWORD(v76) = 256;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACy07WorkoutB015PaceTargetValueVAFGACyAfD07CadencegH0VGGMd, &_s7SwiftUI19_ConditionalContentVyACy07WorkoutB015PaceTargetValueVAFGACyAfD07CadencegH0VGGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACy07WorkoutB018CadenceTargetValueVAD05PowergH0VGACyAhA4TextVGGMd, &_s7SwiftUI19_ConditionalContentVyACy07WorkoutB018CadenceTargetValueVAD05PowergH0VGACyAhA4TextVGGMR);
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<PaceTargetValue, PaceTargetValue>, _ConditionalContent<PaceTargetValue, CadenceTargetValue>> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<CadenceTargetValue, PowerTargetValue>, _ConditionalContent<PowerTargetValue, Text>> and conformance <> _ConditionalContent<A, B>();
    _ConditionalContent<>.init(storage:)();
    v52 = v80 | (BYTE2(v80) << 16);
    if (HIBYTE(v80))
    {
      v53 = 0x1000000;
    }

    else
    {
      v53 = 0;
    }

    goto LABEL_45;
  }

  v59 = *MEMORY[0x277D7DE78];
  v60 = v7;
  LocalizedStringKey.init(stringLiteral:)();
  if (v60 != v59)
  {
    *&v74 = Text.init(_:tableName:bundle:comment:)();
    *(&v74 + 1) = v69;
    *&v75 = v70 & 1;
    *(&v75 + 1) = v71;
    v76 = 0;
    v77 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyACy07WorkoutB015PaceTargetValueVAFGACyAfD07CadencegH0VGGACyACyAiD05PowergH0VGACyAmA4TextVGGGMd, &_s7SwiftUI19_ConditionalContentVyACyACy07WorkoutB015PaceTargetValueVAFGACyAfD07CadencegH0VGGACyACyAiD05PowergH0VGACyAmA4TextVGGGMR);
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<PaceTargetValue, PaceTargetValue>, _ConditionalContent<PaceTargetValue, CadenceTargetValue>>, _ConditionalContent<_ConditionalContent<CadenceTargetValue, PowerTargetValue>, _ConditionalContent<PowerTargetValue, Text>>> and conformance <> _ConditionalContent<A, B>();
    _ConditionalContent<>.init(storage:)();
    v72 = v79;
    v73 = v78;
    v24 = v80;
    v25 = v81;
    (*(v4 + 8))(v6, v3);
    v23 = v72;
    v22 = v73;
    goto LABEL_16;
  }

  v61 = Text.init(_:tableName:bundle:comment:)();
  v63 = v62;
  v65 = v64 & 1;
  *&v74 = v61;
  *(&v74 + 1) = v62;
  *&v75 = v64 & 1;
  *(&v75 + 1) = v66;
  LOBYTE(v76) = 1;
  outlined copy of Text.Storage(v61, v62, v64 & 1);
  lazy protocol witness table accessor for type PowerTargetValue and conformance PowerTargetValue();

  _ConditionalContent<>.init(storage:)();
  v74 = v78;
  v75 = v79;
  LOBYTE(v76) = v80;
  BYTE1(v76) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB018CadenceTargetValueVAD05PowergH0VGMd, &_s7SwiftUI19_ConditionalContentVy07WorkoutB018CadenceTargetValueVAD05PowergH0VGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB016PowerTargetValueVAA4TextVGMd, &_s7SwiftUI19_ConditionalContentVy07WorkoutB016PowerTargetValueVAA4TextVGMR);
  lazy protocol witness table accessor for type _ConditionalContent<CadenceTargetValue, PowerTargetValue> and conformance <> _ConditionalContent<A, B>();
  lazy protocol witness table accessor for type _ConditionalContent<PowerTargetValue, Text> and conformance <> _ConditionalContent<A, B>(&lazy protocol witness table cache variable for type _ConditionalContent<PowerTargetValue, Text> and conformance <> _ConditionalContent<A, B>, &_s7SwiftUI19_ConditionalContentVy07WorkoutB016PowerTargetValueVAA4TextVGMd, &_s7SwiftUI19_ConditionalContentVy07WorkoutB016PowerTargetValueVAA4TextVGMR, lazy protocol witness table accessor for type PowerTargetValue and conformance PowerTargetValue);
  _ConditionalContent<>.init(storage:)();
  if (BYTE1(v80))
  {
    v67 = 256;
  }

  else
  {
    v67 = 0;
  }

  v74 = v78;
  v75 = v79;
  LOWORD(v76) = v67 | v80;
  HIWORD(v76) = 256;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACy07WorkoutB015PaceTargetValueVAFGACyAfD07CadencegH0VGGMd, &_s7SwiftUI19_ConditionalContentVyACy07WorkoutB015PaceTargetValueVAFGACyAfD07CadencegH0VGGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACy07WorkoutB018CadenceTargetValueVAD05PowergH0VGACyAhA4TextVGGMd, &_s7SwiftUI19_ConditionalContentVyACy07WorkoutB018CadenceTargetValueVAD05PowergH0VGACyAhA4TextVGGMR);
  lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<PaceTargetValue, PaceTargetValue>, _ConditionalContent<PaceTargetValue, CadenceTargetValue>> and conformance <> _ConditionalContent<A, B>();
  lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<CadenceTargetValue, PowerTargetValue>, _ConditionalContent<PowerTargetValue, Text>> and conformance <> _ConditionalContent<A, B>();
  _ConditionalContent<>.init(storage:)();
  if (HIBYTE(v80))
  {
    v68 = 0x1000000;
  }

  else
  {
    v68 = 0;
  }

  v74 = v78;
  v75 = v79;
  v76 = v68 | v80 | (BYTE2(v80) << 16);
  v77 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyACy07WorkoutB015PaceTargetValueVAFGACyAfD07CadencegH0VGGACyACyAiD05PowergH0VGACyAmA4TextVGGGMd, &_s7SwiftUI19_ConditionalContentVyACyACy07WorkoutB015PaceTargetValueVAFGACyAfD07CadencegH0VGGACyACyAiD05PowergH0VGACyAmA4TextVGGGMR);
  lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<PaceTargetValue, PaceTargetValue>, _ConditionalContent<PaceTargetValue, CadenceTargetValue>>, _ConditionalContent<_ConditionalContent<CadenceTargetValue, PowerTargetValue>, _ConditionalContent<PowerTargetValue, Text>>> and conformance <> _ConditionalContent<A, B>();
  _ConditionalContent<>.init(storage:)();
  outlined consume of Text.Storage(v61, v63, v65);

LABEL_15:
  v22 = v78;
  v23 = v79;
  v24 = v80;
  v25 = v81;
LABEL_16:
  *a1 = v22;
  *(a1 + 16) = v23;
  *(a1 + 32) = v24;
  *(a1 + 36) = v25;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<PaceTargetValue, PaceTargetValue>, _ConditionalContent<PaceTargetValue, CadenceTargetValue>>, _ConditionalContent<_ConditionalContent<CadenceTargetValue, PowerTargetValue>, _ConditionalContent<PowerTargetValue, Text>>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<_ConditionalContent<PaceTargetValue, PaceTargetValue>, _ConditionalContent<PaceTargetValue, CadenceTargetValue>>, _ConditionalContent<_ConditionalContent<CadenceTargetValue, PowerTargetValue>, _ConditionalContent<PowerTargetValue, Text>>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<_ConditionalContent<PaceTargetValue, PaceTargetValue>, _ConditionalContent<PaceTargetValue, CadenceTargetValue>>, _ConditionalContent<_ConditionalContent<CadenceTargetValue, PowerTargetValue>, _ConditionalContent<PowerTargetValue, Text>>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyACyACy07WorkoutB015PaceTargetValueVAFGACyAfD07CadencegH0VGGACyACyAiD05PowergH0VGACyAmA4TextVGGGMd, &_s7SwiftUI19_ConditionalContentVyACyACy07WorkoutB015PaceTargetValueVAFGACyAfD07CadencegH0VGGACyACyAiD05PowergH0VGACyAmA4TextVGGGMR);
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<PaceTargetValue, PaceTargetValue>, _ConditionalContent<PaceTargetValue, CadenceTargetValue>> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<CadenceTargetValue, PowerTargetValue>, _ConditionalContent<PowerTargetValue, Text>> and conformance <> _ConditionalContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<_ConditionalContent<PaceTargetValue, PaceTargetValue>, _ConditionalContent<PaceTargetValue, CadenceTargetValue>>, _ConditionalContent<_ConditionalContent<CadenceTargetValue, PowerTargetValue>, _ConditionalContent<PowerTargetValue, Text>>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<PaceTargetValue, PaceTargetValue>, _ConditionalContent<PaceTargetValue, CadenceTargetValue>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<PaceTargetValue, PaceTargetValue>, _ConditionalContent<PaceTargetValue, CadenceTargetValue>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<PaceTargetValue, PaceTargetValue>, _ConditionalContent<PaceTargetValue, CadenceTargetValue>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyACy07WorkoutB015PaceTargetValueVAFGACyAfD07CadencegH0VGGMd, &_s7SwiftUI19_ConditionalContentVyACy07WorkoutB015PaceTargetValueVAFGACyAfD07CadencegH0VGGMR);
    lazy protocol witness table accessor for type _ConditionalContent<PaceTargetValue, PaceTargetValue> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type _ConditionalContent<PaceTargetValue, CadenceTargetValue> and conformance <> _ConditionalContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<PaceTargetValue, PaceTargetValue>, _ConditionalContent<PaceTargetValue, CadenceTargetValue>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<PaceTargetValue, PaceTargetValue> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<PaceTargetValue, PaceTargetValue> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<PaceTargetValue, PaceTargetValue> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB015PaceTargetValueVAFGMd, &_s7SwiftUI19_ConditionalContentVy07WorkoutB015PaceTargetValueVAFGMR);
    lazy protocol witness table accessor for type PaceTargetValue and conformance PaceTargetValue();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<PaceTargetValue, PaceTargetValue> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PaceTargetValue and conformance PaceTargetValue()
{
  result = lazy protocol witness table cache variable for type PaceTargetValue and conformance PaceTargetValue;
  if (!lazy protocol witness table cache variable for type PaceTargetValue and conformance PaceTargetValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PaceTargetValue and conformance PaceTargetValue);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<PaceTargetValue, CadenceTargetValue> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<PaceTargetValue, CadenceTargetValue> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<PaceTargetValue, CadenceTargetValue> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB015PaceTargetValueVAD07CadencegH0VGMd, &_s7SwiftUI19_ConditionalContentVy07WorkoutB015PaceTargetValueVAD07CadencegH0VGMR);
    lazy protocol witness table accessor for type PaceTargetValue and conformance PaceTargetValue();
    lazy protocol witness table accessor for type CadenceTargetValue and conformance CadenceTargetValue();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<PaceTargetValue, CadenceTargetValue> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CadenceTargetValue and conformance CadenceTargetValue()
{
  result = lazy protocol witness table cache variable for type CadenceTargetValue and conformance CadenceTargetValue;
  if (!lazy protocol witness table cache variable for type CadenceTargetValue and conformance CadenceTargetValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CadenceTargetValue and conformance CadenceTargetValue);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<CadenceTargetValue, PowerTargetValue>, _ConditionalContent<PowerTargetValue, Text>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<CadenceTargetValue, PowerTargetValue>, _ConditionalContent<PowerTargetValue, Text>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<CadenceTargetValue, PowerTargetValue>, _ConditionalContent<PowerTargetValue, Text>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyACy07WorkoutB018CadenceTargetValueVAD05PowergH0VGACyAhA4TextVGGMd, &_s7SwiftUI19_ConditionalContentVyACy07WorkoutB018CadenceTargetValueVAD05PowergH0VGACyAhA4TextVGGMR);
    lazy protocol witness table accessor for type _ConditionalContent<CadenceTargetValue, PowerTargetValue> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type _ConditionalContent<PowerTargetValue, Text> and conformance <> _ConditionalContent<A, B>(&lazy protocol witness table cache variable for type _ConditionalContent<PowerTargetValue, Text> and conformance <> _ConditionalContent<A, B>, &_s7SwiftUI19_ConditionalContentVy07WorkoutB016PowerTargetValueVAA4TextVGMd, &_s7SwiftUI19_ConditionalContentVy07WorkoutB016PowerTargetValueVAA4TextVGMR, lazy protocol witness table accessor for type PowerTargetValue and conformance PowerTargetValue);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<CadenceTargetValue, PowerTargetValue>, _ConditionalContent<PowerTargetValue, Text>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<CadenceTargetValue, PowerTargetValue> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<CadenceTargetValue, PowerTargetValue> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<CadenceTargetValue, PowerTargetValue> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB018CadenceTargetValueVAD05PowergH0VGMd, &_s7SwiftUI19_ConditionalContentVy07WorkoutB018CadenceTargetValueVAD05PowergH0VGMR);
    lazy protocol witness table accessor for type CadenceTargetValue and conformance CadenceTargetValue();
    lazy protocol witness table accessor for type PowerTargetValue and conformance PowerTargetValue();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<CadenceTargetValue, PowerTargetValue> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PowerTargetValue and conformance PowerTargetValue()
{
  result = lazy protocol witness table cache variable for type PowerTargetValue and conformance PowerTargetValue;
  if (!lazy protocol witness table cache variable for type PowerTargetValue and conformance PowerTargetValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PowerTargetValue and conformance PowerTargetValue);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type _ConditionalContent<PowerTargetValue, Text> and conformance <> _ConditionalContent<A, B>(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

uint64_t NSUnitLength.localizedName(formattingManager:)(void *a1)
{
  v2 = objc_opt_self();
  v3 = [v2 miles];
  type metadata accessor for NSUnitLength();
  v4 = static NSObject.== infix(_:_:)();

  if (v4)
  {
    v5 = [a1 localizedLongUnitStringForDistanceUnit:3 distanceInUnit:3 textCase:2.0];
    if (v5)
    {
      goto LABEL_12;
    }

    __break(1u);
  }

  v6 = [v2 yards];
  v7 = static NSObject.== infix(_:_:)();

  if (v7)
  {
    v5 = [a1 localizedLongUnitStringForDistanceUnit:4 distanceInUnit:3 textCase:2.0];
    if (v5)
    {
      goto LABEL_12;
    }

    __break(1u);
  }

  v8 = [v2 kilometers];
  v9 = static NSObject.== infix(_:_:)();

  if ((v9 & 1) == 0)
  {
    goto LABEL_10;
  }

  v5 = [a1 localizedLongUnitStringForDistanceUnit:2 distanceInUnit:3 textCase:2.0];
  if (v5)
  {
LABEL_12:
    v12 = v5;
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    return v13;
  }

  __break(1u);
LABEL_10:
  v10 = [v2 meters];
  v11 = static NSObject.== infix(_:_:)();

  if (v11)
  {
    v5 = [a1 localizedLongUnitStringForDistanceUnit:1 distanceInUnit:3 textCase:2.0];
    if (v5)
    {
      goto LABEL_12;
    }

    __break(1u);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
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

uint64_t getEnumTagSinglePayload for ManagedConfigurationViewiOS(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 105))
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

uint64_t storeEnumTagSinglePayload for ManagedConfigurationViewiOS(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 104) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 105) = 1;
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

    *(result + 105) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t ManagedConfigurationViewiOS.body.getter@<X0>(uint64_t a1@<X8>)
{
  v38[0] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI10_ShapeViewVyAA16RoundedRectangleVAA5ColorVGMd, &_s7SwiftUI10_ShapeViewVyAA16RoundedRectangleVAA5ColorVGMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v38 - v4;
  v6 = type metadata accessor for RoundedRectangle();
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI10_ShapeViewVyAA16RoundedRectangleVAA5ColorVGSgMd, &_s7SwiftUI10_ShapeViewVyAA16RoundedRectangleVAA5ColorVGSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = v38 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyAA6HStackVyAGyACyAA5GroupVyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameM0VGSgGAA05_FlexnM0VG_AA6SpacerV07WorkoutB0011StartButtonG0VSgtGG_AEyAGyACyAA4TextVAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGG_AA012_ConditionalD0VyACyA6_A8_yAM5ScaleOGGA6_GtGGAA0G0PAAE11buttonStyleyQrqd__AA09PrimitiveS5StyleRd__lFQOyAA0S0VyACyACyACyACyACyACyA6_AWGAA08_PaddingM0VGAA016_BackgroundStyleX0VyAA20_BlendModeShapeStyleVyAA5ColorVGGGA8_yA38_SgGGAA11_ClipEffectVyAA16RoundedRectangleVGGA8_yAA4FontVSgGGG_AA05PlainS5StyleVQo_tGGAA06_TraitwX0VyAA018ListRowInsetsTraitV0VGGAA01_d5ShapeX0VyAA9RectangleVGGMd, &_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyAA6HStackVyAGyACyAA5GroupVyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameM0VGSgGAA05_FlexnM0VG_AA6SpacerV07WorkoutB0011StartButtonG0VSgtGG_AEyAGyACyAA4TextVAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGG_AA012_ConditionalD0VyACyA6_A8_yAM5ScaleOGGA6_GtGGAA0G0PAAE11buttonStyleyQrqd__AA09PrimitiveS5StyleRd__lFQOyAA0S0VyACyACyACyACyACyACyA6_AWGAA08_PaddingM0VGAA016_BackgroundStyleX0VyAA20_BlendModeShapeStyleVyAA5ColorVGGGA8_yA38_SgGGAA11_ClipEffectVyAA16RoundedRectangleVGGA8_yAA4FontVSgGGG_AA05PlainS5StyleVQo_tGGAA06_TraitwX0VyAA018ListRowInsetsTraitV0VGGAA01_d5ShapeX0VyAA9RectangleVGGMR);
  v17 = v16 - 8;
  MEMORY[0x28223BE20](v16);
  v19 = v38 - v18;
  *v19 = static HorizontalAlignment.leading.getter();
  *(v19 + 1) = 0x4030000000000000;
  v19[16] = 0;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA6HStackVyAIyAA15ModifiedContentVyAA5GroupVyAMyAMyAA5ImageVAA012_AspectRatioG0VGAA06_FrameG0VGSgGAA05_FlexpG0VG_AA6SpacerV07WorkoutB0011StartButtonD0VSgtGG_AA0F0VyAIyAMyAA4TextVAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGG_AA012_ConditionalK0VyAMyA12_A14_yAQ5ScaleOGGA12_GtGGAA0D0PAAE11buttonStyleyQrqd__AA09PrimitiveU5StyleRd__lFQOyAA0U0VyAMyAMyAMyAMyAMyAMyA12_A_GAA08_PaddingG0VGAA016_BackgroundStyleZ0VyAA20_BlendModeShapeStyleVyAA5ColorVGGGA14_yA44_SgGGAA11_ClipEffectVyAA16RoundedRectangleVGGA14_yAA4FontVSgGGG_AA05PlainU5StyleVQo_tGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA6HStackVyAIyAA15ModifiedContentVyAA5GroupVyAMyAMyAA5ImageVAA012_AspectRatioG0VGAA06_FrameG0VGSgGAA05_FlexpG0VG_AA6SpacerV07WorkoutB0011StartButtonD0VSgtGG_AA0F0VyAIyAMyAA4TextVAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGG_AA012_ConditionalK0VyAMyA12_A14_yAQ5ScaleOGGA12_GtGGAA0D0PAAE11buttonStyleyQrqd__AA09PrimitiveU5StyleRd__lFQOyAA0U0VyAMyAMyAMyAMyAMyAMyA12_A_GAA08_PaddingG0VGAA016_BackgroundStyleZ0VyAA20_BlendModeShapeStyleVyAA5ColorVGGGA14_yA44_SgGGAA11_ClipEffectVyAA16RoundedRectangleVGGA14_yAA4FontVSgGGG_AA05PlainU5StyleVQo_tGGMR);
  closure #1 in ManagedConfigurationViewiOS.body.getter(v1, &v19[*(v20 + 44)]);
  v21 = &v19[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA6HStackVyAGyACyAA5GroupVyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameM0VGSgGAA05_FlexnM0VG_AA6SpacerV07WorkoutB0011StartButtonG0VSgtGG_AEyAGyACyAA4TextVAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGG_AA012_ConditionalD0VyACyA6_A8_yAM5ScaleOGGA6_GtGGAA0G0PAAE11buttonStyleyQrqd__AA09PrimitiveS5StyleRd__lFQOyAA0S0VyACyACyACyACyACyACyA6_AWGAA08_PaddingM0VGAA016_BackgroundStyleX0VyAA20_BlendModeShapeStyleVyAA5ColorVGGGA8_yA38_SgGGAA11_ClipEffectVyAA16RoundedRectangleVGGA8_yAA4FontVSgGGG_AA05PlainS5StyleVQo_tGGAA06_TraitwX0VyAA018ListRowInsetsTraitV0VGGMd, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA6HStackVyAGyACyAA5GroupVyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameM0VGSgGAA05_FlexnM0VG_AA6SpacerV07WorkoutB0011StartButtonG0VSgtGG_AEyAGyACyAA4TextVAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGG_AA012_ConditionalD0VyACyA6_A8_yAM5ScaleOGGA6_GtGGAA0G0PAAE11buttonStyleyQrqd__AA09PrimitiveS5StyleRd__lFQOyAA0S0VyACyACyACyACyACyACyA6_AWGAA08_PaddingM0VGAA016_BackgroundStyleX0VyAA20_BlendModeShapeStyleVyAA5ColorVGGGA8_yA38_SgGGAA11_ClipEffectVyAA16RoundedRectangleVGGA8_yAA4FontVSgGGG_AA05PlainS5StyleVQo_tGGAA06_TraitwX0VyAA018ListRowInsetsTraitV0VGGMR) + 36)];
  __asm { FMOV            V0.2D, #20.0 }

  *v21 = _Q0;
  *(v21 + 1) = _Q0;
  v21[32] = 0;
  v19[*(v17 + 44)] = 0;
  v27 = *(v7 + 28);
  v28 = *MEMORY[0x277CE0118];
  v29 = type metadata accessor for RoundedCornerStyle();
  (*(*(v29 - 8) + 104))(&v9[v27], v28, v29);
  __asm { FMOV            V0.2D, #28.0 }

  *v9 = _Q0;
  ManagedConfigurationSourcePickerItem.viewModel.getter();
  v31 = dispatch thunk of ManagedConfigurationsViewModel.topSuggested.getter();

  if (v31)
  {
    WorkoutConfiguration.displayPlatterColor.getter();
    v32 = Color.init(uiColor:)();
  }

  else
  {
    v33 = [objc_opt_self() secondarySystemBackgroundColor];
    v32 = Color.init(uiColor:)();
  }

  v38[1] = v32;
  lazy protocol witness table accessor for type Color and conformance Color();
  Color.init<A>(_:)();
  v34 = Color.opacity(_:)();

  outlined init with take of RoundedRectangle(v9, v15, MEMORY[0x277CDFC08]);
  *&v15[*(v2 + 52)] = v34;
  *&v15[*(v2 + 56)] = 256;
  (*(v3 + 56))(v15, 0, 1, v2);
  outlined init with copy of _ShapeView<RoundedRectangle, Color>?(v15, v12, &_s7SwiftUI10_ShapeViewVyAA16RoundedRectangleVAA5ColorVGSgMd, &_s7SwiftUI10_ShapeViewVyAA16RoundedRectangleVAA5ColorVGSgMR);
  if ((*(v3 + 48))(v12, 1, v2) == 1)
  {
    outlined destroy of _ShapeView<RoundedRectangle, Color>?(v15, &_s7SwiftUI10_ShapeViewVyAA16RoundedRectangleVAA5ColorVGSgMd, &_s7SwiftUI10_ShapeViewVyAA16RoundedRectangleVAA5ColorVGSgMR);
    v35 = 0;
  }

  else
  {
    _s7SwiftUI10_ShapeViewVyAA16RoundedRectangleVAA5ColorVGWObTm_0(v12, v5, &_s7SwiftUI10_ShapeViewVyAA16RoundedRectangleVAA5ColorVGMd, &_s7SwiftUI10_ShapeViewVyAA16RoundedRectangleVAA5ColorVGMR);
    lazy protocol witness table accessor for type _ShapeView<RoundedRectangle, Color> and conformance _ShapeView<A, B>(&lazy protocol witness table cache variable for type _ShapeView<RoundedRectangle, Color> and conformance _ShapeView<A, B>, &_s7SwiftUI10_ShapeViewVyAA16RoundedRectangleVAA5ColorVGMd, &_s7SwiftUI10_ShapeViewVyAA16RoundedRectangleVAA5ColorVGMR, MEMORY[0x277CDF3A0]);
    v35 = AnyView.init<A>(_:)();
    outlined destroy of _ShapeView<RoundedRectangle, Color>?(v15, &_s7SwiftUI10_ShapeViewVyAA16RoundedRectangleVAA5ColorVGSgMd, &_s7SwiftUI10_ShapeViewVyAA16RoundedRectangleVAA5ColorVGSgMR);
  }

  v36 = v38[0];
  sub_20C699FE8(v19, v38[0]);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA6VStackVyAA9TupleViewVyAA6HStackVyAGyACyAA5GroupVyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameM0VGSgGAA05_FlexnM0VG_AA6SpacerV07WorkoutB0011StartButtonG0VSgtGG_AEyAGyACyAA4TextVAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGG_AA012_ConditionalD0VyACyA6_A8_yAM5ScaleOGGA6_GtGGAA0G0PAAE11buttonStyleyQrqd__AA09PrimitiveS5StyleRd__lFQOyAA0S0VyACyACyACyACyACyACyA6_AWGAA08_PaddingM0VGAA016_BackgroundStyleX0VyAA20_BlendModeShapeStyleVyAA5ColorVGGGA8_yA38_SgGGAA11_ClipEffectVyAA16RoundedRectangleVGGA8_yAA4FontVSgGGG_AA05PlainS5StyleVQo_tGGAA06_TraitwX0VyAA018ListRowInsetsTraitV0VGGAA01_d5ShapeX0VyAA9RectangleVGGA63_yAA022ListRowBackgroundTraitV0VGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA6VStackVyAA9TupleViewVyAA6HStackVyAGyACyAA5GroupVyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameM0VGSgGAA05_FlexnM0VG_AA6SpacerV07WorkoutB0011StartButtonG0VSgtGG_AEyAGyACyAA4TextVAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGG_AA012_ConditionalD0VyACyA6_A8_yAM5ScaleOGGA6_GtGGAA0G0PAAE11buttonStyleyQrqd__AA09PrimitiveS5StyleRd__lFQOyAA0S0VyACyACyACyACyACyACyA6_AWGAA08_PaddingM0VGAA016_BackgroundStyleX0VyAA20_BlendModeShapeStyleVyAA5ColorVGGGA8_yA38_SgGGAA11_ClipEffectVyAA16RoundedRectangleVGGA8_yAA4FontVSgGGG_AA05PlainS5StyleVQo_tGGAA06_TraitwX0VyAA018ListRowInsetsTraitV0VGGAA01_d5ShapeX0VyAA9RectangleVGGA63_yAA022ListRowBackgroundTraitV0VGGMR);
  *(v36 + *(result + 36)) = v35;
  return result;
}

uint64_t closure #1 in ManagedConfigurationViewiOS.body.getter@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a2;
  v3 = type metadata accessor for PlainButtonStyle();
  v4 = *(v3 - 8);
  v53 = v3;
  v54 = v4;
  MEMORY[0x28223BE20](v3);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAEyAEyAEyAEyAA4TextVAA16_FlexFrameLayoutVGAA08_PaddingI0VGAA24_BackgroundStyleModifierVyAA015_BlendModeShapeL0VyAA5ColorVGGGAA022_EnvironmentKeyWritingM0VyASSgGGAA11_ClipEffectVyAA16RoundedRectangleVGGAXyAA4FontVSgGGGMd, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAEyAEyAEyAEyAA4TextVAA16_FlexFrameLayoutVGAA08_PaddingI0VGAA24_BackgroundStyleModifierVyAA015_BlendModeShapeL0VyAA5ColorVGGGAA022_EnvironmentKeyWritingM0VyASSgGGAA11_ClipEffectVyAA16RoundedRectangleVGGAXyAA4FontVSgGGGMR);
  v50 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v43 - v8;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonE0Rd__lFQOyAA0G0VyAA15ModifiedContentVyAIyAIyAIyAIyAIyAA4TextVAA16_FlexFrameLayoutVGAA08_PaddingM0VGAA011_BackgroundE8ModifierVyAA015_BlendModeShapeE0VyAA5ColorVGGGAA022_EnvironmentKeyWritingP0VyAWSgGGAA11_ClipEffectVyAA16RoundedRectangleVGGA0_yAA4FontVSgGGG_AA05PlaingE0VQo_Md, &_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonE0Rd__lFQOyAA0G0VyAA15ModifiedContentVyAIyAIyAIyAIyAIyAA4TextVAA16_FlexFrameLayoutVGAA08_PaddingM0VGAA011_BackgroundE8ModifierVyAA015_BlendModeShapeE0VyAA5ColorVGGGAA022_EnvironmentKeyWritingP0VyAWSgGGAA11_ClipEffectVyAA16RoundedRectangleVGGA0_yAA4FontVSgGGG_AA05PlaingE0VQo_MR);
  v48 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v51 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v43 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGG_AA012_ConditionalG0VyAGyAiKyAA5ImageV5ScaleOGGAIGtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGG_AA012_ConditionalG0VyAGyAiKyAA5ImageV5ScaleOGGAIGtGGMR);
  MEMORY[0x28223BE20](v14 - 8);
  v49 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v43 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAA5GroupVyAGyAGyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameL0VGSgGAA05_FlexmL0VG_AA6SpacerV07WorkoutB0011StartButtonE0VSgtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAA5GroupVyAGyAGyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameL0VGSgGAA05_FlexmL0VG_AA6SpacerV07WorkoutB0011StartButtonE0VSgtGGMR);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v43 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v43 - v23;
  *v24 = static VerticalAlignment.center.getter();
  *(v24 + 1) = 0;
  v24[16] = 1;
  v25 = &v24[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAA5GroupVyAKyAKyAA5ImageVAA012_AspectRatioG0VGAA06_FrameG0VGSgGAA05_FlexoG0VG_AA6SpacerV07WorkoutB0011StartButtonD0VSgtGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAA5GroupVyAKyAKyAA5ImageVAA012_AspectRatioG0VGAA06_FrameG0VGSgGAA05_FlexoG0VG_AA6SpacerV07WorkoutB0011StartButtonD0VSgtGGMR) + 44)];
  v47 = v24;
  closure #1 in closure #1 in ManagedConfigurationViewiOS.body.getter(a1, v25);
  *v18 = static HorizontalAlignment.leading.getter();
  *(v18 + 1) = 0;
  v18[16] = 0;
  v26 = &v18[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGG_AA012_ConditionalJ0VyAKyAmOyAA5ImageV5ScaleOGGAMGtGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGG_AA012_ConditionalJ0VyAKyAmOyAA5ImageV5ScaleOGGAMGtGGMR) + 44)];
  v45 = v18;
  closure #2 in closure #1 in ManagedConfigurationViewiOS.body.getter(a1, v26);
  v27 = swift_allocObject();
  v28 = a1[5];
  v27[5] = a1[4];
  v27[6] = v28;
  *(v27 + 105) = *(a1 + 89);
  v29 = a1[1];
  v27[1] = *a1;
  v27[2] = v29;
  v30 = a1[3];
  v27[3] = a1[2];
  v27[4] = v30;
  outlined init with copy of ManagedConfigurationViewiOS(a1, v56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA4TextVAA16_FlexFrameLayoutVGAA08_PaddingH0VGAA24_BackgroundStyleModifierVyAA015_BlendModeShapeK0VyAA5ColorVGGGAA022_EnvironmentKeyWritingL0VyAQSgGGAA11_ClipEffectVyAA16RoundedRectangleVGGAVyAA4FontVSgGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA4TextVAA16_FlexFrameLayoutVGAA08_PaddingH0VGAA24_BackgroundStyleModifierVyAA015_BlendModeShapeK0VyAA5ColorVGGGAA022_EnvironmentKeyWritingL0VyAQSgGGAA11_ClipEffectVyAA16RoundedRectangleVGGAVyAA4FontVSgGGMR);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FlexFrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<_BlendModeShapeStyle<Color>>>, _EnvironmentKeyWritingModifier<Color?>>, _ClipEffect<RoundedRectangle>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>();
  Button.init(action:label:)();
  PlainButtonStyle.init()();
  lazy protocol witness table accessor for type _ShapeView<RoundedRectangle, Color> and conformance _ShapeView<A, B>(&lazy protocol witness table cache variable for type Button<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FlexFrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<_BlendModeShapeStyle<Color>>>, _EnvironmentKeyWritingModifier<Color?>>, _ClipEffect<RoundedRectangle>>, _EnvironmentKeyWritingModifier<Font?>>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAEyAEyAEyAEyAA4TextVAA16_FlexFrameLayoutVGAA08_PaddingI0VGAA24_BackgroundStyleModifierVyAA015_BlendModeShapeL0VyAA5ColorVGGGAA022_EnvironmentKeyWritingM0VyASSgGGAA11_ClipEffectVyAA16RoundedRectangleVGGAXyAA4FontVSgGGGMd, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAEyAEyAEyAEyAA4TextVAA16_FlexFrameLayoutVGAA08_PaddingI0VGAA24_BackgroundStyleModifierVyAA015_BlendModeShapeL0VyAA5ColorVGGGAA022_EnvironmentKeyWritingM0VyASSgGGAA11_ClipEffectVyAA16RoundedRectangleVGGAXyAA4FontVSgGGGMR, MEMORY[0x277CDF028]);
  _s7SwiftUI16PlainButtonStyleVAcA09PrimitivedE0AAWlTm_8(&lazy protocol witness table cache variable for type PlainButtonStyle and conformance PlainButtonStyle, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
  v44 = v13;
  v31 = v53;
  View.buttonStyle<A>(_:)();
  (*(v54 + 8))(v6, v31);
  (*(v50 + 8))(v9, v7);
  v32 = v21;
  v46 = v21;
  outlined init with copy of _ShapeView<RoundedRectangle, Color>?(v24, v21, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAA5GroupVyAGyAGyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameL0VGSgGAA05_FlexmL0VG_AA6SpacerV07WorkoutB0011StartButtonE0VSgtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAA5GroupVyAGyAGyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameL0VGSgGAA05_FlexmL0VG_AA6SpacerV07WorkoutB0011StartButtonE0VSgtGGMR);
  v33 = v49;
  outlined init with copy of _ShapeView<RoundedRectangle, Color>?(v18, v49, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGG_AA012_ConditionalG0VyAGyAiKyAA5ImageV5ScaleOGGAIGtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGG_AA012_ConditionalG0VyAGyAiKyAA5ImageV5ScaleOGGAIGtGGMR);
  v34 = v48;
  v35 = *(v48 + 16);
  v36 = v51;
  v37 = v52;
  v35(v51, v13, v52);
  v38 = v32;
  v39 = v55;
  outlined init with copy of _ShapeView<RoundedRectangle, Color>?(v38, v55, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAA5GroupVyAGyAGyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameL0VGSgGAA05_FlexmL0VG_AA6SpacerV07WorkoutB0011StartButtonE0VSgtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAA5GroupVyAGyAGyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameL0VGSgGAA05_FlexmL0VG_AA6SpacerV07WorkoutB0011StartButtonE0VSgtGGMR);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAA5GroupVyAGyAGyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameL0VGSgGAA05_FlexmL0VG_AA6SpacerV07WorkoutB0011StartButtonE0VSgtGG_AA6VStackVyAEyAGyAA4TextVAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGG_AA012_ConditionalG0VyAGyA6_A8_yAK5ScaleOGGA6_GtGGAA0E0PAAE11buttonStyleyQrqd__AA09PrimitiveR5StyleRd__lFQOyAA0R0VyAGyAGyAGyAGyAGyAGyA6_AUGAA08_PaddingL0VGAA016_BackgroundStyleX0VyAA20_BlendModeShapeStyleVyAA5ColorVGGGA8_yA38_SgGGAA11_ClipEffectVyAA16RoundedRectangleVGGA8_yAA4FontVSgGGG_AA05PlainR5StyleVQo_tMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAA5GroupVyAGyAGyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameL0VGSgGAA05_FlexmL0VG_AA6SpacerV07WorkoutB0011StartButtonE0VSgtGG_AA6VStackVyAEyAGyAA4TextVAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGG_AA012_ConditionalG0VyAGyA6_A8_yAK5ScaleOGGA6_GtGGAA0E0PAAE11buttonStyleyQrqd__AA09PrimitiveR5StyleRd__lFQOyAA0R0VyAGyAGyAGyAGyAGyAGyA6_AUGAA08_PaddingL0VGAA016_BackgroundStyleX0VyAA20_BlendModeShapeStyleVyAA5ColorVGGGA8_yA38_SgGGAA11_ClipEffectVyAA16RoundedRectangleVGGA8_yAA4FontVSgGGG_AA05PlainR5StyleVQo_tMR);
  outlined init with copy of _ShapeView<RoundedRectangle, Color>?(v33, v39 + *(v40 + 48), &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGG_AA012_ConditionalG0VyAGyAiKyAA5ImageV5ScaleOGGAIGtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGG_AA012_ConditionalG0VyAGyAiKyAA5ImageV5ScaleOGGAIGtGGMR);
  v35((v39 + *(v40 + 64)), v36, v37);
  v41 = *(v34 + 8);
  v41(v44, v37);
  outlined destroy of _ShapeView<RoundedRectangle, Color>?(v45, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGG_AA012_ConditionalG0VyAGyAiKyAA5ImageV5ScaleOGGAIGtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGG_AA012_ConditionalG0VyAGyAiKyAA5ImageV5ScaleOGGAIGtGGMR);
  outlined destroy of _ShapeView<RoundedRectangle, Color>?(v47, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAA5GroupVyAGyAGyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameL0VGSgGAA05_FlexmL0VG_AA6SpacerV07WorkoutB0011StartButtonE0VSgtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAA5GroupVyAGyAGyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameL0VGSgGAA05_FlexmL0VG_AA6SpacerV07WorkoutB0011StartButtonE0VSgtGGMR);
  v41(v36, v37);
  outlined destroy of _ShapeView<RoundedRectangle, Color>?(v33, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGG_AA012_ConditionalG0VyAGyAiKyAA5ImageV5ScaleOGGAIGtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGG_AA012_ConditionalG0VyAGyAiKyAA5ImageV5ScaleOGGAIGtGGMR);
  return outlined destroy of _ShapeView<RoundedRectangle, Color>?(v46, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAA5GroupVyAGyAGyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameL0VGSgGAA05_FlexmL0VG_AA6SpacerV07WorkoutB0011StartButtonE0VSgtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAA5GroupVyAGyAGyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameL0VGSgGAA05_FlexmL0VG_AA6SpacerV07WorkoutB0011StartButtonE0VSgtGGMR);
}

uint64_t closure #1 in closure #1 in ManagedConfigurationViewiOS.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  started = type metadata accessor for StartButtonView(0);
  v31 = *(started - 8);
  MEMORY[0x28223BE20](started);
  v7 = (v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI15StartButtonViewVSgMd, &_s9WorkoutUI15StartButtonViewVSgMR);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v29 - v12;
  closure #1 in closure #1 in closure #1 in ManagedConfigurationViewiOS.body.getter(&v36);
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  ManagedConfigurationSourcePickerItem.viewModel.getter();
  v14 = dispatch thunk of ManagedConfigurationsViewModel.topSuggested.getter();

  if (v14)
  {
    v30 = v13;
    v29[3] = *(a1 + 104);
    type metadata accessor for WorkoutDevicesProvider();
    v15 = started;
    _s7SwiftUI16PlainButtonStyleVAcA09PrimitivedE0AAWlTm_8(&lazy protocol witness table cache variable for type WorkoutDevicesProvider and conformance WorkoutDevicesProvider, MEMORY[0x277D7DAA8], MEMORY[0x277D7DAA0]);
    v13 = v30;
    v16 = StateObject.wrappedValue.getter();
    WorkoutConfiguration.startButtonState(with:)();

    *v7 = v14;
    v7[1] = 1;
    outlined init with take of RoundedRectangle(v7, v13, type metadata accessor for StartButtonView);
    (*(v31 + 56))(v13, 0, 1, v15);
  }

  else
  {
    (*(v31 + 56))(v13, 1, 1, started);
  }

  outlined init with copy of _ShapeView<RoundedRectangle, Color>?(v13, v10, &_s9WorkoutUI15StartButtonViewVSgMd, &_s9WorkoutUI15StartButtonViewVSgMR);
  v17 = v43;
  v32[8] = v44;
  v32[9] = v45;
  v18 = v45;
  v32[10] = v46;
  v19 = v40;
  v20 = v39;
  v32[4] = v40;
  v32[5] = v41;
  v21 = v41;
  v22 = v42;
  v32[6] = v42;
  v32[7] = v43;
  v32[0] = v36;
  v32[1] = v37;
  v24 = v36;
  v23 = v37;
  v25 = v38;
  v32[2] = v38;
  v32[3] = v39;
  *(a2 + 128) = v44;
  *(a2 + 144) = v18;
  *(a2 + 160) = v46;
  *(a2 + 64) = v19;
  *(a2 + 80) = v21;
  *(a2 + 96) = v22;
  *(a2 + 112) = v17;
  *a2 = v24;
  *(a2 + 16) = v23;
  v26 = v47;
  v33 = v47;
  *(a2 + 32) = v25;
  *(a2 + 48) = v20;
  *(a2 + 176) = v26;
  *(a2 + 184) = 0;
  *(a2 + 192) = 1;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5GroupVyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameI0VGSgGAA05_FlexjI0VG_AA6SpacerV07WorkoutB015StartButtonViewVSgtMd, &_s7SwiftUI15ModifiedContentVyAA5GroupVyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameI0VGSgGAA05_FlexjI0VG_AA6SpacerV07WorkoutB015StartButtonViewVSgtMR);
  outlined init with copy of _ShapeView<RoundedRectangle, Color>?(v10, a2 + *(v27 + 64), &_s9WorkoutUI15StartButtonViewVSgMd, &_s9WorkoutUI15StartButtonViewVSgMR);
  outlined init with copy of _ShapeView<RoundedRectangle, Color>?(v32, v34, &_s7SwiftUI15ModifiedContentVyAA5GroupVyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameI0VGSgGAA05_FlexjI0VGMd, &_s7SwiftUI15ModifiedContentVyAA5GroupVyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameI0VGSgGAA05_FlexjI0VGMR);
  outlined destroy of _ShapeView<RoundedRectangle, Color>?(v13, &_s9WorkoutUI15StartButtonViewVSgMd, &_s9WorkoutUI15StartButtonViewVSgMR);
  outlined destroy of _ShapeView<RoundedRectangle, Color>?(v10, &_s9WorkoutUI15StartButtonViewVSgMd, &_s9WorkoutUI15StartButtonViewVSgMR);
  v34[8] = v44;
  v34[9] = v45;
  v34[10] = v46;
  v35 = v47;
  v34[4] = v40;
  v34[5] = v41;
  v34[6] = v42;
  v34[7] = v43;
  v34[0] = v36;
  v34[1] = v37;
  v34[2] = v38;
  v34[3] = v39;
  return outlined destroy of _ShapeView<RoundedRectangle, Color>?(v34, &_s7SwiftUI15ModifiedContentVyAA5GroupVyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameI0VGSgGAA05_FlexjI0VGMd, &_s7SwiftUI15ModifiedContentVyAA5GroupVyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameI0VGSgGAA05_FlexjI0VGMR);
}

void closure #1 in closure #1 in closure #1 in ManagedConfigurationViewiOS.body.getter(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Image.ResizingMode();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  ManagedConfigurationSourcePickerItem.provider.getter();
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
    v11 = Image.resizable(capInsets:resizingMode:)();

    (*(v3 + 8))(v5, v2);
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();

    v17[8] = 1;
    v13 = v18;
    v14 = v19;
    v15 = v20;
    v16 = 1;
  }

  else
  {
    v16 = 0;
    v13 = 0uLL;
    v14 = 0uLL;
    v15 = 0uLL;
  }

  *a1 = v11;
  *(a1 + 8) = 0;
  *(a1 + 16) = v16;
  *(a1 + 24) = v13;
  *(a1 + 40) = v14;
  *(a1 + 56) = v15;
}

void closure #2 in closure #1 in ManagedConfigurationViewiOS.body.getter(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v120 = a2;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0VyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGAI_GMd, &_s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0VyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGAI_GMR);
  MEMORY[0x28223BE20](v116);
  v117 = (&v104 - v3);
  v4 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  MEMORY[0x28223BE20](v4 - 8);
  v106 = &v104 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGMd, &_s7SwiftUI15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGMR);
  MEMORY[0x28223BE20](v115);
  v107 = &v104 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v108 = &v104 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGAGGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGAGGMR);
  MEMORY[0x28223BE20](v9 - 8);
  v119 = &v104 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v118 = &v104 - v12;
  v105 = a1;
  v13 = *a1;
  ManagedConfigurationSourcePickerItem.provider.getter();
  v14 = dispatch thunk of ExternalProvider.sourceName.getter();
  v16 = v15;

  v121 = v14;
  v122 = v16;
  lazy protocol witness table accessor for type String and conformance String();
  v17 = Text.init<A>(_:)();
  v19 = v18;
  LOBYTE(v16) = v20;
  static Font.title2.getter();
  v21 = Text.font(_:)();
  v23 = v22;
  v25 = v24;

  outlined consume of Text.Storage(v17, v19, v16 & 1);

  static Font.Weight.bold.getter();
  v26 = Text.fontWeight(_:)();
  v28 = v27;
  LOBYTE(v16) = v29;
  outlined consume of Text.Storage(v21, v23, v25 & 1);

  static Color.primary.getter();
  v30 = Text.foregroundColor(_:)();
  v32 = v31;
  v110 = v33;
  v35 = v34;

  outlined consume of Text.Storage(v26, v28, v16 & 1);

  KeyPath = swift_getKeyPath();
  v109 = v13;
  ManagedConfigurationSourcePickerItem.viewModel.getter();
  v37 = dispatch thunk of ManagedConfigurationsViewModel.topSuggested.getter();

  v113 = v30;
  v114 = v35;
  v111 = KeyPath;
  v112 = v32;
  if (!v37)
  {
    LocalizedStringKey.init(stringLiteral:)();
    if (one-time initialization token for WorkoutUIBundle != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v60 = WorkoutUIBundle.super.isa;
    v61 = Text.init(_:tableName:bundle:comment:)();
    v63 = v62;
    v65 = v64;
    static Font.body.getter();
    v66 = Text.font(_:)();
    v68 = v67;
    v70 = v69;

    outlined consume of Text.Storage(v61, v63, v65 & 1);

    ManagedConfigurationSourcePickerItem.viewModel.getter();
    v71 = dispatch thunk of ManagedConfigurationsViewModel.topSuggested.getter();

    if (v71)
    {
      WorkoutConfiguration.displayColor.getter();
      Color.init(uiColor:)();
    }

    else
    {
      static Color.secondary.getter();
    }

    v86 = Text.foregroundColor(_:)();
    v88 = v87;
    v90 = v89;
    v92 = v91;

    outlined consume of Text.Storage(v66, v68, v70 & 1);

    v93 = v117;
    *v117 = v86;
    v93[1] = v88;
    *(v93 + 16) = v90 & 1;
    v93[3] = v92;
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>> and conformance <> ModifiedContent<A, B>();
    v85 = v118;
    _ConditionalContent<>.init(storage:)();
    goto LABEL_18;
  }

  v38 = v105[1];
  if (v38)
  {
    v39 = v38;
    v40 = WorkoutConfiguration.displayDetail(_:)();
    if (!v41)
    {
      v40 = WorkoutConfiguration.displayName(formattingManager:)();
    }

    v42 = v40;
    v43 = v41;

    v44 = specialized ManagedConfigurationViewiOS.image(for:)(v37);
    LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v45._countAndFlagsBits = 0;
    v45._object = 0xE000000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v45);
    v105 = v44;
    LocalizedStringKey.StringInterpolation.appendInterpolation(_:)();
    v46._countAndFlagsBits = 32;
    v46._object = 0xE100000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v46);
    v47._countAndFlagsBits = v42;
    v47._object = v43;
    LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v47);

    v48._countAndFlagsBits = 0;
    v48._object = 0xE000000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v48);
    LocalizedStringKey.init(stringInterpolation:)();
    v49 = Text.init(_:tableName:bundle:comment:)();
    v51 = v50;
    v53 = v52;
    type metadata accessor for IntervalWorkoutConfiguration();
    if (swift_dynamicCastClass() || (type metadata accessor for MultiSportWorkoutConfiguration(), swift_dynamicCastClass()) || (type metadata accessor for GoalWorkoutConfiguration(), swift_dynamicCastClass()) && (v101 = v37, v102 = GoalWorkoutConfiguration.goal.getter(), v103 = [v102 goalTypeIdentifier], v102, v101, !v103))
    {
      static Font.body.getter();
    }

    else
    {
      static Font.body.getter();
      Font.lowercaseSmallCaps()();
    }

    v54 = Text.font(_:)();
    v56 = v55;
    v58 = v57;

    outlined consume of Text.Storage(v49, v51, v53 & 1);

    ManagedConfigurationSourcePickerItem.viewModel.getter();
    v59 = dispatch thunk of ManagedConfigurationsViewModel.topSuggested.getter();

    if (v59)
    {
      WorkoutConfiguration.displayColor.getter();
      Color.init(uiColor:)();
    }

    else
    {
      static Color.secondary.getter();
    }

    v72 = Text.foregroundColor(_:)();
    v74 = v73;
    v76 = v75;
    v78 = v77;

    outlined consume of Text.Storage(v54, v56, v58 & 1);

    v79 = v107;
    v80 = &v107[*(v115 + 36)];
    v81 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGMR) + 28);
    v82 = *MEMORY[0x277CE1050];
    v83 = type metadata accessor for Image.Scale();
    (*(*(v83 - 8) + 104))(v80 + v81, v82, v83);
    *v80 = swift_getKeyPath();
    *v79 = v72;
    *(v79 + 8) = v74;
    *(v79 + 16) = v76 & 1;
    *(v79 + 24) = v78;
    v84 = v108;
    _s7SwiftUI10_ShapeViewVyAA16RoundedRectangleVAA5ColorVGWObTm_0(v79, v108, &_s7SwiftUI15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGMd, &_s7SwiftUI15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGMR);
    outlined init with copy of _ShapeView<RoundedRectangle, Color>?(v84, v117, &_s7SwiftUI15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGMd, &_s7SwiftUI15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGMR);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>> and conformance <> ModifiedContent<A, B>();
    v85 = v118;
    _ConditionalContent<>.init(storage:)();

    outlined destroy of _ShapeView<RoundedRectangle, Color>?(v84, &_s7SwiftUI15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGMd, &_s7SwiftUI15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGMR);
LABEL_18:
    v94 = v119;
    outlined init with copy of _ShapeView<RoundedRectangle, Color>?(v85, v119, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGAGGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGAGGMR);
    v95 = v120;
    v97 = v112;
    v96 = v113;
    *v120 = v113;
    v95[1] = v97;
    v98 = v110 & 1;
    *(v95 + 16) = v110 & 1;
    v99 = v111;
    v95[3] = v114;
    v95[4] = v99;
    v95[5] = 0xC000000000000000;
    v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGG_AA012_ConditionalD0VyACyAeGyAA5ImageV5ScaleOGGAEGtMd, &_s7SwiftUI15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGG_AA012_ConditionalD0VyACyAeGyAA5ImageV5ScaleOGGAEGtMR);
    outlined init with copy of _ShapeView<RoundedRectangle, Color>?(v94, v95 + *(v100 + 48), &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGAGGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGAGGMR);
    outlined copy of Text.Storage(v96, v97, v98);

    outlined destroy of _ShapeView<RoundedRectangle, Color>?(v85, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGAGGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGAGGMR);
    outlined destroy of _ShapeView<RoundedRectangle, Color>?(v94, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGAGGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGAGGMR);
    outlined consume of Text.Storage(v96, v97, v98);

    return;
  }

  type metadata accessor for FIUIFormattingManager();
  _s7SwiftUI16PlainButtonStyleVAcA09PrimitivedE0AAWlTm_8(&lazy protocol witness table cache variable for type FIUIFormattingManager and conformance FIUIFormattingManager, type metadata accessor for FIUIFormattingManager, &protocol conformance descriptor for FIUIFormattingManager);
  EnvironmentObject.error()();
  __break(1u);
}

void closure #3 in closure #1 in ManagedConfigurationViewiOS.body.getter(uint64_t a1)
{
  if (*(a1 + 24))
  {
    v4 = *a1;
    swift_getKeyPath();
    swift_getKeyPath();

    v1 = v4;
    v2 = static Published.subscript.modify();
    type metadata accessor for ManagedConfigurationSourcePickerItem();
    _s7SwiftUI16PlainButtonStyleVAcA09PrimitivedE0AAWlTm_8(&lazy protocol witness table cache variable for type ManagedConfigurationSourcePickerItem and conformance NSObject, MEMORY[0x277D7E6E8], MEMORY[0x277D85378]);
    NavigationPath.append<A>(_:)();

    v2(v3, 0);
  }

  else
  {
    type metadata accessor for ConfigurationNavigationModel(0);
    _s7SwiftUI16PlainButtonStyleVAcA09PrimitivedE0AAWlTm_8(&lazy protocol witness table cache variable for type ConfigurationNavigationModel and conformance ConfigurationNavigationModel, type metadata accessor for ConfigurationNavigationModel, &protocol conformance descriptor for ConfigurationNavigationModel);
    EnvironmentObject.error()();
    __break(1u);
  }
}

uint64_t closure #4 in closure #1 in ManagedConfigurationViewiOS.body.getter@<X0>(uint64_t a1@<X8>)
{
  v62 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4FontV6DesignOSgMd, &_s7SwiftUI4FontV6DesignOSgMR);
  MEMORY[0x28223BE20](v1 - 8);
  v61 = &v52 - v2;
  v60 = type metadata accessor for Font.TextStyle();
  v59 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v58 = &v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA16_FlexFrameLayoutVGAA08_PaddingH0VGAA24_BackgroundStyleModifierVyAA015_BlendModeShapeK0VyAA5ColorVGGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA16_FlexFrameLayoutVGAA08_PaddingH0VGAA24_BackgroundStyleModifierVyAA015_BlendModeShapeK0VyAA5ColorVGGGMR);
  MEMORY[0x28223BE20](v54);
  v5 = &v52 - v4;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextVAA16_FlexFrameLayoutVGAA08_PaddingH0VGAA24_BackgroundStyleModifierVyAA015_BlendModeShapeK0VyAA5ColorVGGGAA022_EnvironmentKeyWritingL0VyAQSgGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextVAA16_FlexFrameLayoutVGAA08_PaddingH0VGAA24_BackgroundStyleModifierVyAA015_BlendModeShapeK0VyAA5ColorVGGGAA022_EnvironmentKeyWritingL0VyAQSgGGMR);
  MEMORY[0x28223BE20](v56);
  v7 = &v52 - v6;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4TextVAA16_FlexFrameLayoutVGAA08_PaddingH0VGAA24_BackgroundStyleModifierVyAA015_BlendModeShapeK0VyAA5ColorVGGGAA022_EnvironmentKeyWritingL0VyAQSgGGAA11_ClipEffectVyAA16RoundedRectangleVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4TextVAA16_FlexFrameLayoutVGAA08_PaddingH0VGAA24_BackgroundStyleModifierVyAA015_BlendModeShapeK0VyAA5ColorVGGGAA022_EnvironmentKeyWritingL0VyAQSgGGAA11_ClipEffectVyAA16RoundedRectangleVGGMR);
  MEMORY[0x28223BE20](v55);
  v57 = &v52 - v8;
  LocalizedStringKey.init(stringLiteral:)();
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v9 = WorkoutUIBundle.super.isa;
  v53 = Text.init(_:tableName:bundle:comment:)();
  v52 = v10;
  v12 = v11;
  v14 = v13;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v15 = v12 & 1;
  v70 = v12 & 1;
  v16 = static Edge.Set.all.getter();
  v71 = 1;
  static Color.white.getter();
  v17 = Color.opacity(_:)();

  v18 = &v5[*(v54 + 36)];
  v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI20_BlendModeShapeStyleVyAA5ColorVGMd, &_s7SwiftUI20_BlendModeShapeStyleVyAA5ColorVGMR) + 36);
  v20 = *MEMORY[0x277CE13F0];
  v21 = type metadata accessor for BlendMode();
  (*(*(v21 - 8) + 104))(v18 + v19, v20, v21);
  *v18 = v17;
  LOBYTE(v20) = static Edge.Set.all.getter();
  *(v18 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI24_BackgroundStyleModifierVyAA015_BlendModeShapeD0VyAA5ColorVGGMd, &_s7SwiftUI24_BackgroundStyleModifierVyAA015_BlendModeShapeD0VyAA5ColorVGGMR) + 36)) = v20;
  v22 = v52;
  *v5 = v53;
  *(v5 + 1) = v22;
  v5[16] = v15;
  *(v5 + 3) = v14;
  v23 = v64;
  *(v5 + 2) = v63;
  *(v5 + 3) = v23;
  v24 = v69;
  v25 = v67;
  *(v5 + 7) = v68;
  *(v5 + 8) = v24;
  v26 = v66;
  *(v5 + 4) = v65;
  *(v5 + 5) = v26;
  *(v5 + 6) = v25;
  v5[144] = v16;
  *(v5 + 168) = 0u;
  *(v5 + 152) = 0u;
  v5[184] = 1;
  v27 = static Color.primary.getter();
  KeyPath = swift_getKeyPath();
  _s7SwiftUI10_ShapeViewVyAA16RoundedRectangleVAA5ColorVGWObTm_0(v5, v7, &_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA16_FlexFrameLayoutVGAA08_PaddingH0VGAA24_BackgroundStyleModifierVyAA015_BlendModeShapeK0VyAA5ColorVGGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA16_FlexFrameLayoutVGAA08_PaddingH0VGAA24_BackgroundStyleModifierVyAA015_BlendModeShapeK0VyAA5ColorVGGGMR);
  v29 = &v7[*(v56 + 36)];
  *v29 = KeyPath;
  v29[1] = v27;
  v30 = v57;
  v31 = &v57[*(v55 + 36)];
  v32 = *(type metadata accessor for RoundedRectangle() + 20);
  v33 = *MEMORY[0x277CE0118];
  v34 = type metadata accessor for RoundedCornerStyle();
  (*(*(v34 - 8) + 104))(&v31[v32], v33, v34);
  __asm { FMOV            V0.2D, #28.0 }

  *v31 = _Q0;
  *&v31[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11_ClipEffectVyAA16RoundedRectangleVGMd, &_s7SwiftUI11_ClipEffectVyAA16RoundedRectangleVGMR) + 36)] = 256;
  _s7SwiftUI10_ShapeViewVyAA16RoundedRectangleVAA5ColorVGWObTm_0(v7, v30, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextVAA16_FlexFrameLayoutVGAA08_PaddingH0VGAA24_BackgroundStyleModifierVyAA015_BlendModeShapeK0VyAA5ColorVGGGAA022_EnvironmentKeyWritingL0VyAQSgGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextVAA16_FlexFrameLayoutVGAA08_PaddingH0VGAA24_BackgroundStyleModifierVyAA015_BlendModeShapeK0VyAA5ColorVGGGAA022_EnvironmentKeyWritingL0VyAQSgGGMR);
  v40 = v59;
  v41 = v58;
  v42 = v60;
  (*(v59 + 104))(v58, *MEMORY[0x277CE0A68], v60);
  v43 = *MEMORY[0x277CE0990];
  v44 = type metadata accessor for Font.Design();
  v45 = *(v44 - 8);
  v46 = v61;
  (*(v45 + 104))(v61, v43, v44);
  (*(v45 + 56))(v46, 0, 1, v44);
  static Font.system(_:design:weight:)();
  outlined destroy of _ShapeView<RoundedRectangle, Color>?(v46, &_s7SwiftUI4FontV6DesignOSgMd, &_s7SwiftUI4FontV6DesignOSgMR);
  (*(v40 + 8))(v41, v42);
  static Font.Weight.semibold.getter();
  v47 = Font.weight(_:)();

  v48 = swift_getKeyPath();
  v49 = v62;
  _s7SwiftUI10_ShapeViewVyAA16RoundedRectangleVAA5ColorVGWObTm_0(v30, v62, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4TextVAA16_FlexFrameLayoutVGAA08_PaddingH0VGAA24_BackgroundStyleModifierVyAA015_BlendModeShapeK0VyAA5ColorVGGGAA022_EnvironmentKeyWritingL0VyAQSgGGAA11_ClipEffectVyAA16RoundedRectangleVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4TextVAA16_FlexFrameLayoutVGAA08_PaddingH0VGAA24_BackgroundStyleModifierVyAA015_BlendModeShapeK0VyAA5ColorVGGGAA022_EnvironmentKeyWritingL0VyAQSgGGAA11_ClipEffectVyAA16RoundedRectangleVGGMR);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA4TextVAA16_FlexFrameLayoutVGAA08_PaddingH0VGAA24_BackgroundStyleModifierVyAA015_BlendModeShapeK0VyAA5ColorVGGGAA022_EnvironmentKeyWritingL0VyAQSgGGAA11_ClipEffectVyAA16RoundedRectangleVGGAVyAA4FontVSgGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA4TextVAA16_FlexFrameLayoutVGAA08_PaddingH0VGAA24_BackgroundStyleModifierVyAA015_BlendModeShapeK0VyAA5ColorVGGGAA022_EnvironmentKeyWritingL0VyAQSgGGAA11_ClipEffectVyAA16RoundedRectangleVGGAVyAA4FontVSgGGMR);
  v51 = (v49 + *(result + 36));
  *v51 = v48;
  v51[1] = v47;
  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FlexFrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<_BlendModeShapeStyle<Color>>>, _EnvironmentKeyWritingModifier<Color?>>, _ClipEffect<RoundedRectangle>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FlexFrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<_BlendModeShapeStyle<Color>>>, _EnvironmentKeyWritingModifier<Color?>>, _ClipEffect<RoundedRectangle>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FlexFrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<_BlendModeShapeStyle<Color>>>, _EnvironmentKeyWritingModifier<Color?>>, _ClipEffect<RoundedRectangle>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA4TextVAA16_FlexFrameLayoutVGAA08_PaddingH0VGAA24_BackgroundStyleModifierVyAA015_BlendModeShapeK0VyAA5ColorVGGGAA022_EnvironmentKeyWritingL0VyAQSgGGAA11_ClipEffectVyAA16RoundedRectangleVGGAVyAA4FontVSgGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA4TextVAA16_FlexFrameLayoutVGAA08_PaddingH0VGAA24_BackgroundStyleModifierVyAA015_BlendModeShapeK0VyAA5ColorVGGGAA022_EnvironmentKeyWritingL0VyAQSgGGAA11_ClipEffectVyAA16RoundedRectangleVGGAVyAA4FontVSgGGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FlexFrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<_BlendModeShapeStyle<Color>>>, _EnvironmentKeyWritingModifier<Color?>>, _ClipEffect<RoundedRectangle>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type _ShapeView<RoundedRectangle, Color> and conformance _ShapeView<A, B>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Font?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMR, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FlexFrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<_BlendModeShapeStyle<Color>>>, _EnvironmentKeyWritingModifier<Color?>>, _ClipEffect<RoundedRectangle>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FlexFrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<_BlendModeShapeStyle<Color>>>, _EnvironmentKeyWritingModifier<Color?>>, _ClipEffect<RoundedRectangle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FlexFrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<_BlendModeShapeStyle<Color>>>, _EnvironmentKeyWritingModifier<Color?>>, _ClipEffect<RoundedRectangle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FlexFrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<_BlendModeShapeStyle<Color>>>, _EnvironmentKeyWritingModifier<Color?>>, _ClipEffect<RoundedRectangle>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4TextVAA16_FlexFrameLayoutVGAA08_PaddingH0VGAA24_BackgroundStyleModifierVyAA015_BlendModeShapeK0VyAA5ColorVGGGAA022_EnvironmentKeyWritingL0VyAQSgGGAA11_ClipEffectVyAA16RoundedRectangleVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4TextVAA16_FlexFrameLayoutVGAA08_PaddingH0VGAA24_BackgroundStyleModifierVyAA015_BlendModeShapeK0VyAA5ColorVGGGAA022_EnvironmentKeyWritingL0VyAQSgGGAA11_ClipEffectVyAA16RoundedRectangleVGGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FlexFrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<_BlendModeShapeStyle<Color>>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type _ShapeView<RoundedRectangle, Color> and conformance _ShapeView<A, B>(&lazy protocol witness table cache variable for type _ClipEffect<RoundedRectangle> and conformance _ClipEffect<A>, &_s7SwiftUI11_ClipEffectVyAA16RoundedRectangleVGMd, &_s7SwiftUI11_ClipEffectVyAA16RoundedRectangleVGMR, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FlexFrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<_BlendModeShapeStyle<Color>>>, _EnvironmentKeyWritingModifier<Color?>>, _ClipEffect<RoundedRectangle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FlexFrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<_BlendModeShapeStyle<Color>>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FlexFrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<_BlendModeShapeStyle<Color>>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FlexFrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<_BlendModeShapeStyle<Color>>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextVAA16_FlexFrameLayoutVGAA08_PaddingH0VGAA24_BackgroundStyleModifierVyAA015_BlendModeShapeK0VyAA5ColorVGGGAA022_EnvironmentKeyWritingL0VyAQSgGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextVAA16_FlexFrameLayoutVGAA08_PaddingH0VGAA24_BackgroundStyleModifierVyAA015_BlendModeShapeK0VyAA5ColorVGGGAA022_EnvironmentKeyWritingL0VyAQSgGGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Text, _FlexFrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<_BlendModeShapeStyle<Color>>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type _ShapeView<RoundedRectangle, Color> and conformance _ShapeView<A, B>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Color?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVSgGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVSgGMR, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FlexFrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<_BlendModeShapeStyle<Color>>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Text, _FlexFrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<_BlendModeShapeStyle<Color>>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Text, _FlexFrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<_BlendModeShapeStyle<Color>>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Text, _FlexFrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<_BlendModeShapeStyle<Color>>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA16_FlexFrameLayoutVGAA08_PaddingH0VGAA24_BackgroundStyleModifierVyAA015_BlendModeShapeK0VyAA5ColorVGGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA16_FlexFrameLayoutVGAA08_PaddingH0VGAA24_BackgroundStyleModifierVyAA015_BlendModeShapeK0VyAA5ColorVGGGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Text, _FlexFrameLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type _ShapeView<RoundedRectangle, Color> and conformance _ShapeView<A, B>(&lazy protocol witness table cache variable for type _BackgroundStyleModifier<_BlendModeShapeStyle<Color>> and conformance _BackgroundStyleModifier<A>, &_s7SwiftUI24_BackgroundStyleModifierVyAA015_BlendModeShapeD0VyAA5ColorVGGMd, &_s7SwiftUI24_BackgroundStyleModifierVyAA015_BlendModeShapeD0VyAA5ColorVGGMR, MEMORY[0x277CE0728]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Text, _FlexFrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<_BlendModeShapeStyle<Color>>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Text, _FlexFrameLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, _FlexFrameLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, _FlexFrameLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA4TextVAA16_FlexFrameLayoutVGAA08_PaddingH0VGMd, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA16_FlexFrameLayoutVGAA08_PaddingH0VGMR);
    lazy protocol witness table accessor for type ModifiedContent<Text, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, _FlexFrameLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t specialized ManagedConfigurationViewiOS.image(for:)(uint64_t a1)
{
  v1 = dispatch thunk of WorkoutConfiguration.activityType.getter();
  v2 = [v1 symbolName];

  if (v2)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    type metadata accessor for RaceWorkoutConfiguration();
    if (!swift_dynamicCastClass())
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
  }

  return Image.init(_internalSystemName:)();
}

uint64_t _s7SwiftUI10_ShapeViewVyAA16RoundedRectangleVAA5ColorVGWObTm_0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t outlined init with copy of _ShapeView<RoundedRectangle, Color>?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t outlined destroy of _ShapeView<RoundedRectangle, Color>?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t _s7SwiftUI16PlainButtonStyleVAcA09PrimitivedE0AAWlTm_8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t outlined init with take of RoundedRectangle(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(HStack<TupleView<(ModifiedContent<Group<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>?>, _FlexFrameLayout>, Spacer, StartButtonView?)>>, VStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<CGFloat>>, _ConditionalContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, Text>)>>, <<opaque return type of View.buttonStyle<A>(_:)>>.0)>>, _TraitWritingModifier<ListRowInsetsTraitKey>>, _ContentShapeModifier<Rectangle>>, _TraitWritingModifier<ListRowBackgroundTraitKey>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(HStack<TupleView<(ModifiedContent<Group<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>?>, _FlexFrameLayout>, Spacer, StartButtonView?)>>, VStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<CGFloat>>, _ConditionalContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, Text>)>>, <<opaque return type of View.buttonStyle<A>(_:)>>.0)>>, _TraitWritingModifier<ListRowInsetsTraitKey>>, _ContentShapeModifier<Rectangle>>, _TraitWritingModifier<ListRowBackgroundTraitKey>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(HStack<TupleView<(ModifiedContent<Group<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>?>, _FlexFrameLayout>, Spacer, StartButtonView?)>>, VStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<CGFloat>>, _ConditionalContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, Text>)>>, <<opaque return type of View.buttonStyle<A>(_:)>>.0)>>, _TraitWritingModifier<ListRowInsetsTraitKey>>, _ContentShapeModifier<Rectangle>>, _TraitWritingModifier<ListRowBackgroundTraitKey>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA6VStackVyAA9TupleViewVyAA6HStackVyAGyACyAA5GroupVyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameM0VGSgGAA05_FlexnM0VG_AA6SpacerV07WorkoutB0011StartButtonG0VSgtGG_AEyAGyACyAA4TextVAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGG_AA012_ConditionalD0VyACyA6_A8_yAM5ScaleOGGA6_GtGGAA0G0PAAE11buttonStyleyQrqd__AA09PrimitiveS5StyleRd__lFQOyAA0S0VyACyACyACyACyACyACyA6_AWGAA08_PaddingM0VGAA016_BackgroundStyleX0VyAA20_BlendModeShapeStyleVyAA5ColorVGGGA8_yA38_SgGGAA11_ClipEffectVyAA16RoundedRectangleVGGA8_yAA4FontVSgGGG_AA05PlainS5StyleVQo_tGGAA06_TraitwX0VyAA018ListRowInsetsTraitV0VGGAA01_d5ShapeX0VyAA9RectangleVGGA63_yAA022ListRowBackgroundTraitV0VGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA6VStackVyAA9TupleViewVyAA6HStackVyAGyACyAA5GroupVyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameM0VGSgGAA05_FlexnM0VG_AA6SpacerV07WorkoutB0011StartButtonG0VSgtGG_AEyAGyACyAA4TextVAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGG_AA012_ConditionalD0VyACyA6_A8_yAM5ScaleOGGA6_GtGGAA0G0PAAE11buttonStyleyQrqd__AA09PrimitiveS5StyleRd__lFQOyAA0S0VyACyACyACyACyACyACyA6_AWGAA08_PaddingM0VGAA016_BackgroundStyleX0VyAA20_BlendModeShapeStyleVyAA5ColorVGGGA8_yA38_SgGGAA11_ClipEffectVyAA16RoundedRectangleVGGA8_yAA4FontVSgGGG_AA05PlainS5StyleVQo_tGGAA06_TraitwX0VyAA018ListRowInsetsTraitV0VGGAA01_d5ShapeX0VyAA9RectangleVGGA63_yAA022ListRowBackgroundTraitV0VGGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<VStack<TupleView<(HStack<TupleView<(ModifiedContent<Group<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>?>, _FlexFrameLayout>, Spacer, StartButtonView?)>>, VStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<CGFloat>>, _ConditionalContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, Text>)>>, <<opaque return type of View.buttonStyle<A>(_:)>>.0)>>, _TraitWritingModifier<ListRowInsetsTraitKey>>, _ContentShapeModifier<Rectangle>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type _ShapeView<RoundedRectangle, Color> and conformance _ShapeView<A, B>(&lazy protocol witness table cache variable for type _TraitWritingModifier<ListRowBackgroundTraitKey> and conformance _TraitWritingModifier<A>, &_s7SwiftUI21_TraitWritingModifierVyAA017ListRowBackgroundC3KeyVGMd, &_s7SwiftUI21_TraitWritingModifierVyAA017ListRowBackgroundC3KeyVGMR, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(HStack<TupleView<(ModifiedContent<Group<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>?>, _FlexFrameLayout>, Spacer, StartButtonView?)>>, VStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<CGFloat>>, _ConditionalContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, Text>)>>, <<opaque return type of View.buttonStyle<A>(_:)>>.0)>>, _TraitWritingModifier<ListRowInsetsTraitKey>>, _ContentShapeModifier<Rectangle>>, _TraitWritingModifier<ListRowBackgroundTraitKey>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<VStack<TupleView<(HStack<TupleView<(ModifiedContent<Group<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>?>, _FlexFrameLayout>, Spacer, StartButtonView?)>>, VStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<CGFloat>>, _ConditionalContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, Text>)>>, <<opaque return type of View.buttonStyle<A>(_:)>>.0)>>, _TraitWritingModifier<ListRowInsetsTraitKey>>, _ContentShapeModifier<Rectangle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<VStack<TupleView<(HStack<TupleView<(ModifiedContent<Group<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>?>, _FlexFrameLayout>, Spacer, StartButtonView?)>>, VStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<CGFloat>>, _ConditionalContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, Text>)>>, <<opaque return type of View.buttonStyle<A>(_:)>>.0)>>, _TraitWritingModifier<ListRowInsetsTraitKey>>, _ContentShapeModifier<Rectangle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<VStack<TupleView<(HStack<TupleView<(ModifiedContent<Group<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>?>, _FlexFrameLayout>, Spacer, StartButtonView?)>>, VStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<CGFloat>>, _ConditionalContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, Text>)>>, <<opaque return type of View.buttonStyle<A>(_:)>>.0)>>, _TraitWritingModifier<ListRowInsetsTraitKey>>, _ContentShapeModifier<Rectangle>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyAA6HStackVyAGyACyAA5GroupVyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameM0VGSgGAA05_FlexnM0VG_AA6SpacerV07WorkoutB0011StartButtonG0VSgtGG_AEyAGyACyAA4TextVAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGG_AA012_ConditionalD0VyACyA6_A8_yAM5ScaleOGGA6_GtGGAA0G0PAAE11buttonStyleyQrqd__AA09PrimitiveS5StyleRd__lFQOyAA0S0VyACyACyACyACyACyACyA6_AWGAA08_PaddingM0VGAA016_BackgroundStyleX0VyAA20_BlendModeShapeStyleVyAA5ColorVGGGA8_yA38_SgGGAA11_ClipEffectVyAA16RoundedRectangleVGGA8_yAA4FontVSgGGG_AA05PlainS5StyleVQo_tGGAA06_TraitwX0VyAA018ListRowInsetsTraitV0VGGAA01_d5ShapeX0VyAA9RectangleVGGMd, &_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyAA6HStackVyAGyACyAA5GroupVyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameM0VGSgGAA05_FlexnM0VG_AA6SpacerV07WorkoutB0011StartButtonG0VSgtGG_AEyAGyACyAA4TextVAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGG_AA012_ConditionalD0VyACyA6_A8_yAM5ScaleOGGA6_GtGGAA0G0PAAE11buttonStyleyQrqd__AA09PrimitiveS5StyleRd__lFQOyAA0S0VyACyACyACyACyACyACyA6_AWGAA08_PaddingM0VGAA016_BackgroundStyleX0VyAA20_BlendModeShapeStyleVyAA5ColorVGGGA8_yA38_SgGGAA11_ClipEffectVyAA16RoundedRectangleVGGA8_yAA4FontVSgGGG_AA05PlainS5StyleVQo_tGGAA06_TraitwX0VyAA018ListRowInsetsTraitV0VGGAA01_d5ShapeX0VyAA9RectangleVGGMR);
    lazy protocol witness table accessor for type ModifiedContent<VStack<TupleView<(HStack<TupleView<(ModifiedContent<Group<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>?>, _FlexFrameLayout>, Spacer, StartButtonView?)>>, VStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<CGFloat>>, _ConditionalContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, Text>)>>, <<opaque return type of View.buttonStyle<A>(_:)>>.0)>>, _TraitWritingModifier<ListRowInsetsTraitKey>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type _ShapeView<RoundedRectangle, Color> and conformance _ShapeView<A, B>(&lazy protocol witness table cache variable for type _ContentShapeModifier<Rectangle> and conformance _ContentShapeModifier<A>, &_s7SwiftUI21_ContentShapeModifierVyAA9RectangleVGMd, &_s7SwiftUI21_ContentShapeModifierVyAA9RectangleVGMR, MEMORY[0x277CE0470]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<VStack<TupleView<(HStack<TupleView<(ModifiedContent<Group<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>?>, _FlexFrameLayout>, Spacer, StartButtonView?)>>, VStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<CGFloat>>, _ConditionalContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, Text>)>>, <<opaque return type of View.buttonStyle<A>(_:)>>.0)>>, _TraitWritingModifier<ListRowInsetsTraitKey>>, _ContentShapeModifier<Rectangle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<VStack<TupleView<(HStack<TupleView<(ModifiedContent<Group<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>?>, _FlexFrameLayout>, Spacer, StartButtonView?)>>, VStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<CGFloat>>, _ConditionalContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, Text>)>>, <<opaque return type of View.buttonStyle<A>(_:)>>.0)>>, _TraitWritingModifier<ListRowInsetsTraitKey>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(HStack<TupleView<(ModifiedContent<Group<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>?>, _FlexFrameLayout>, Spacer, StartButtonView?)>>, VStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<CGFloat>>, _ConditionalContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, Text>)>>, <<opaque return type of View.buttonStyle<A>(_:)>>.0)>>, _TraitWritingModifier<ListRowInsetsTraitKey>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(HStack<TupleView<(ModifiedContent<Group<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>?>, _FlexFrameLayout>, Spacer, StartButtonView?)>>, VStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<CGFloat>>, _ConditionalContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, Text>)>>, <<opaque return type of View.buttonStyle<A>(_:)>>.0)>>, _TraitWritingModifier<ListRowInsetsTraitKey>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA6HStackVyAGyACyAA5GroupVyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameM0VGSgGAA05_FlexnM0VG_AA6SpacerV07WorkoutB0011StartButtonG0VSgtGG_AEyAGyACyAA4TextVAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGG_AA012_ConditionalD0VyACyA6_A8_yAM5ScaleOGGA6_GtGGAA0G0PAAE11buttonStyleyQrqd__AA09PrimitiveS5StyleRd__lFQOyAA0S0VyACyACyACyACyACyACyA6_AWGAA08_PaddingM0VGAA016_BackgroundStyleX0VyAA20_BlendModeShapeStyleVyAA5ColorVGGGA8_yA38_SgGGAA11_ClipEffectVyAA16RoundedRectangleVGGA8_yAA4FontVSgGGG_AA05PlainS5StyleVQo_tGGAA06_TraitwX0VyAA018ListRowInsetsTraitV0VGGMd, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA6HStackVyAGyACyAA5GroupVyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameM0VGSgGAA05_FlexnM0VG_AA6SpacerV07WorkoutB0011StartButtonG0VSgtGG_AEyAGyACyAA4TextVAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGG_AA012_ConditionalD0VyACyA6_A8_yAM5ScaleOGGA6_GtGGAA0G0PAAE11buttonStyleyQrqd__AA09PrimitiveS5StyleRd__lFQOyAA0S0VyACyACyACyACyACyACyA6_AWGAA08_PaddingM0VGAA016_BackgroundStyleX0VyAA20_BlendModeShapeStyleVyAA5ColorVGGGA8_yA38_SgGGAA11_ClipEffectVyAA16RoundedRectangleVGGA8_yAA4FontVSgGGG_AA05PlainS5StyleVQo_tGGAA06_TraitwX0VyAA018ListRowInsetsTraitV0VGGMR);
    lazy protocol witness table accessor for type _ShapeView<RoundedRectangle, Color> and conformance _ShapeView<A, B>(&lazy protocol witness table cache variable for type VStack<TupleView<(HStack<TupleView<(ModifiedContent<Group<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>?>, _FlexFrameLayout>, Spacer, StartButtonView?)>>, VStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<CGFloat>>, _ConditionalContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, Text>)>>, <<opaque return type of View.buttonStyle<A>(_:)>>.0)>> and conformance VStack<A>, &_s7SwiftUI6VStackVyAA9TupleViewVyAA6HStackVyAEyAA15ModifiedContentVyAA5GroupVyAIyAIyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameM0VGSgGAA05_FlexnM0VG_AA6SpacerV07WorkoutB0011StartButtonE0VSgtGG_ACyAEyAIyAA4TextVAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGG_AA012_ConditionalH0VyAIyA6_A8_yAM5ScaleOGGA6_GtGGAA0E0PAAE11buttonStyleyQrqd__AA09PrimitiveS5StyleRd__lFQOyAA0S0VyAIyAIyAIyAIyAIyAIyA6_AWGAA08_PaddingM0VGAA016_BackgroundStyleX0VyAA20_BlendModeShapeStyleVyAA5ColorVGGGA8_yA38_SgGGAA11_ClipEffectVyAA16RoundedRectangleVGGA8_yAA4FontVSgGGG_AA05PlainS5StyleVQo_tGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA6HStackVyAEyAA15ModifiedContentVyAA5GroupVyAIyAIyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameM0VGSgGAA05_FlexnM0VG_AA6SpacerV07WorkoutB0011StartButtonE0VSgtGG_ACyAEyAIyAA4TextVAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGG_AA012_ConditionalH0VyAIyA6_A8_yAM5ScaleOGGA6_GtGGAA0E0PAAE11buttonStyleyQrqd__AA09PrimitiveS5StyleRd__lFQOyAA0S0VyAIyAIyAIyAIyAIyAIyA6_AWGAA08_PaddingM0VGAA016_BackgroundStyleX0VyAA20_BlendModeShapeStyleVyAA5ColorVGGGA8_yA38_SgGGAA11_ClipEffectVyAA16RoundedRectangleVGGA8_yAA4FontVSgGGG_AA05PlainS5StyleVQo_tGGMR, MEMORY[0x277CE1198]);
    lazy protocol witness table accessor for type _ShapeView<RoundedRectangle, Color> and conformance _ShapeView<A, B>(&lazy protocol witness table cache variable for type _TraitWritingModifier<ListRowInsetsTraitKey> and conformance _TraitWritingModifier<A>, &_s7SwiftUI21_TraitWritingModifierVyAA013ListRowInsetsC3KeyVGMd, &_s7SwiftUI21_TraitWritingModifierVyAA013ListRowInsetsC3KeyVGMR, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(HStack<TupleView<(ModifiedContent<Group<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>?>, _FlexFrameLayout>, Spacer, StartButtonView?)>>, VStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<CGFloat>>, _ConditionalContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, Text>)>>, <<opaque return type of View.buttonStyle<A>(_:)>>.0)>>, _TraitWritingModifier<ListRowInsetsTraitKey>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type _ShapeView<RoundedRectangle, Color> and conformance _ShapeView<A, B>(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t HorizontalMetricRow.init(metrics:)@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  *a2 = result;
  a2[1] = 0x3FD6666666666666;
  return result;
}

uint64_t HorizontalMetricRow.body.getter@<X0>(uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = *(v2 + 1);
  *a2 = static VerticalAlignment.top.getter();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA6SpacerVSg_AA7ForEachVySaySi6offset_11WorkoutCore11MetricValueV7elementtGArIyAL_AA0D0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA15ModifiedContentVyAA6VStackVyAIyA0_yA0_yAA4TextV0mB00oP4FontVGAA24_ForegroundStyleModifierVyAA5ColorVGG_AA012_ConditionalY0VyA0_yA0_yA4_A5_0O8UnitFontVGA13_GAvAE0R5Label7contentQrqd__AA011PlaceholderyD0VyxGXE_tAaURd__lFQOyA0_yA0_yAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGA13_G_A16_yA4_A24_yA35_GGQo_GSgtGGA29_yAA0Y10TransitionVGG_Qo_tGGALtGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA6SpacerVSg_AA7ForEachVySaySi6offset_11WorkoutCore11MetricValueV7elementtGArIyAL_AA0D0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA15ModifiedContentVyAA6VStackVyAIyA0_yA0_yAA4TextV0mB00oP4FontVGAA24_ForegroundStyleModifierVyAA5ColorVGG_AA012_ConditionalY0VyA0_yA0_yA4_A5_0O8UnitFontVGA13_GAvAE0R5Label7contentQrqd__AA011PlaceholderyD0VyxGXE_tAaURd__lFQOyA0_yA0_yAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGA13_G_A16_yA4_A24_yA35_GGQo_GSgtGGA29_yAA0Y10TransitionVGG_Qo_tGGALtGGMR);
  return closure #1 in HorizontalMetricRow.body.getter(v4, a2 + *(v6 + 44), v5);
}

uint64_t closure #1 in HorizontalMetricRow.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7ForEachVySaySi6offset_11WorkoutCore11MetricValueV7elementtGAgA9TupleViewVyAA6SpacerVSg_AA0L0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA15ModifiedContentVyAA6VStackVyAKyAVyAVyAA4TextV0fB00hI4FontVGAA24_ForegroundStyleModifierVyAA5ColorVGG_AA012_ConditionalU0VyAVyAVyAZA_0h4UnitX0VGA7_GApAE0N5Label7contentQrqd__AA011PlaceholderuL0VyxGXE_tAaORd__lFQOyAVyAVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA0X0VSgGGA7_G_A10_yAZA18_yA29_GGQo_GSgtGGA23_yAA0U10TransitionVGG_Qo_tGGMd, &_s7SwiftUI7ForEachVySaySi6offset_11WorkoutCore11MetricValueV7elementtGAgA9TupleViewVyAA6SpacerVSg_AA0L0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA15ModifiedContentVyAA6VStackVyAKyAVyAVyAA4TextV0fB00hI4FontVGAA24_ForegroundStyleModifierVyAA5ColorVGG_AA012_ConditionalU0VyAVyAVyAZA_0h4UnitX0VGA7_GApAE0N5Label7contentQrqd__AA011PlaceholderuL0VyxGXE_tAaORd__lFQOyAVyAVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA0X0VSgGGA7_G_A10_yAZA18_yA29_GGQo_GSgtGGA23_yAA0U10TransitionVGG_Qo_tGGMR);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v28 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v25 - v10;
  v12 = *(a1 + 16);
  v26 = v12 < 4;
  v27 = v12 > 3;
  specialized _copySequenceToContiguousArray<A>(_:)(a1);
  v29 = v13;
  v25[2] = swift_getKeyPath();
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a3;
  v15 = swift_allocObject();
  *(v15 + 16) = partial apply for closure #1 in closure #1 in HorizontalMetricRow.body.getter;
  *(v15 + 24) = v14;

  v25[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySi6offset_11WorkoutCore11MetricValueV7elementtGMd, &_sSaySi6offset_11WorkoutCore11MetricValueV7elementtGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA6SpacerVSg_AA0D0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA15ModifiedContentVyAA6VStackVyACyANyANyAA4TextV07WorkoutB015MetricValueFontVGAA24_ForegroundStyleModifierVyAA5ColorVGG_AA012_ConditionalM0VyANyANyArS0q4UnitS0VGA_GAhAE0F5Label7contentQrqd__AA011PlaceholdermD0VyxGXE_tAaGRd__lFQOyANyANyAA5ImageVAA022_EnvironmentKeyWritingV0VyAA0S0VSgGGA_G_A2_yARA10_yA21_GGQo_GSgtGGA15_yAA0M10TransitionVGG_Qo_tGMd, &_s7SwiftUI9TupleViewVyAA6SpacerVSg_AA0D0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA15ModifiedContentVyAA6VStackVyACyANyANyAA4TextV07WorkoutB015MetricValueFontVGAA24_ForegroundStyleModifierVyAA5ColorVGG_AA012_ConditionalM0VyANyANyArS0q4UnitS0VGA_GAhAE0F5Label7contentQrqd__AA011PlaceholdermD0VyxGXE_tAaGRd__lFQOyANyANyAA5ImageVAA022_EnvironmentKeyWritingV0VyAA0S0VSgGGA_G_A2_yARA10_yA21_GGQo_GSgtGGA15_yAA0M10TransitionVGG_Qo_tGMR);
  lazy protocol witness table accessor for type HStack<TupleView<(Spacer?, ForEach<[(offset: Int, element: MetricValue)], MetricValue, TupleView<(Spacer?, <<opaque return type of View.accessibilityElement(children:)>>.0)>>, Spacer?)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type [(offset: Int, element: MetricValue)] and conformance [A], &_sSaySi6offset_11WorkoutCore11MetricValueV7elementtGMd, &_sSaySi6offset_11WorkoutCore11MetricValueV7elementtGMR, MEMORY[0x277D83980]);
  lazy protocol witness table accessor for type MetricValue and conformance MetricValue(v16);
  lazy protocol witness table accessor for type HStack<TupleView<(Spacer?, ForEach<[(offset: Int, element: MetricValue)], MetricValue, TupleView<(Spacer?, <<opaque return type of View.accessibilityElement(children:)>>.0)>>, Spacer?)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type TupleView<(Spacer?, <<opaque return type of View.accessibilityElement(children:)>>.0)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA6SpacerVSg_AA0D0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA15ModifiedContentVyAA6VStackVyACyANyANyAA4TextV07WorkoutB015MetricValueFontVGAA24_ForegroundStyleModifierVyAA5ColorVGG_AA012_ConditionalM0VyANyANyArS0q4UnitS0VGA_GAhAE0F5Label7contentQrqd__AA011PlaceholdermD0VyxGXE_tAaGRd__lFQOyANyANyAA5ImageVAA022_EnvironmentKeyWritingV0VyAA0S0VSgGGA_G_A2_yARA10_yA21_GGQo_GSgtGGA15_yAA0M10TransitionVGG_Qo_tGMd, &_s7SwiftUI9TupleViewVyAA6SpacerVSg_AA0D0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA15ModifiedContentVyAA6VStackVyACyANyANyAA4TextV07WorkoutB015MetricValueFontVGAA24_ForegroundStyleModifierVyAA5ColorVGG_AA012_ConditionalM0VyANyANyArS0q4UnitS0VGA_GAhAE0F5Label7contentQrqd__AA011PlaceholdermD0VyxGXE_tAaGRd__lFQOyANyANyAA5ImageVAA022_EnvironmentKeyWritingV0VyAA0S0VSgGGA_G_A2_yARA10_yA21_GGQo_GSgtGGA15_yAA0M10TransitionVGG_Qo_tGMR, MEMORY[0x277CE14C0]);
  ForEach<>.init(_:id:content:)();
  v17 = *(v7 + 16);
  v18 = v28;
  v17(v28, v11, v6);
  *a2 = 0;
  v20 = v26;
  v19 = v27;
  *(a2 + 8) = v26;
  *(a2 + 9) = v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6SpacerVSg_AA7ForEachVySaySi6offset_11WorkoutCore11MetricValueV7elementtGAjA9TupleViewVyAD_AA0M0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA15ModifiedContentVyAA6VStackVyANyAVyAVyAA4TextV0gB00iJ4FontVGAA24_ForegroundStyleModifierVyAA5ColorVGG_AA012_ConditionalU0VyAVyAVyAZA_0i4UnitX0VGA7_GApAE0N5Label7contentQrqd__AA011PlaceholderuM0VyxGXE_tAaORd__lFQOyAVyAVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA0X0VSgGGA7_G_A10_yAZA18_yA29_GGQo_GSgtGGA23_yAA0U10TransitionVGG_Qo_tGGADtMd, &_s7SwiftUI6SpacerVSg_AA7ForEachVySaySi6offset_11WorkoutCore11MetricValueV7elementtGAjA9TupleViewVyAD_AA0M0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA15ModifiedContentVyAA6VStackVyANyAVyAVyAA4TextV0gB00iJ4FontVGAA24_ForegroundStyleModifierVyAA5ColorVGG_AA012_ConditionalU0VyAVyAVyAZA_0i4UnitX0VGA7_GApAE0N5Label7contentQrqd__AA011PlaceholderuM0VyxGXE_tAaORd__lFQOyAVyAVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA0X0VSgGGA7_G_A10_yAZA18_yA29_GGQo_GSgtGGA23_yAA0U10TransitionVGG_Qo_tGGADtMR);
  v17((a2 + *(v21 + 48)), v18, v6);
  v22 = a2 + *(v21 + 64);
  *v22 = 0;
  *(v22 + 8) = v20;
  *(v22 + 9) = v19;
  v23 = *(v7 + 8);
  v23(v11, v6);
  return (v23)(v18, v6);
}

uint64_t closure #1 in closure #1 in HorizontalMetricRow.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v29 = a2;
  v30 = a3;
  v31 = type metadata accessor for AccessibilityChildBehavior();
  v7 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACyACyAA4TextV07WorkoutB015MetricValueFontVGAA24_ForegroundStyleModifierVyAA5ColorVGG_AA012_ConditionalD0VyACyACyAiJ0j4UnitL0VGARGAA0G0PAAE18accessibilityLabel7contentQrqd__AA011PlaceholderdG0VyxGXE_tAaZRd__lFQOyACyACyAA5ImageVAA022_EnvironmentKeyWritingO0VyAA0L0VSgGGARG_AUyAIA3_yA14_GGQo_GSgtGGA8_yAA0D10TransitionVGGMd, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACyACyAA4TextV07WorkoutB015MetricValueFontVGAA24_ForegroundStyleModifierVyAA5ColorVGG_AA012_ConditionalD0VyACyACyAiJ0j4UnitL0VGARGAA0G0PAAE18accessibilityLabel7contentQrqd__AA011PlaceholderdG0VyxGXE_tAaZRd__lFQOyACyACyAA5ImageVAA022_EnvironmentKeyWritingO0VyAA0L0VSgGGARG_AUyAIA3_yA14_GGQo_GSgtGGA8_yAA0D10TransitionVGGMR);
  MEMORY[0x28223BE20](v10);
  v12 = &v27 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA15ModifiedContentVyAA6VStackVyAA05TupleC0VyAIyAIyAA4TextV07WorkoutB015MetricValueFontVGAA24_ForegroundStyleModifierVyAA5ColorVGG_AA012_ConditionalK0VyAIyAIyAoP0p4UnitR0VGAXGAcAE0D5Label7contentQrqd__AA011PlaceholderkC0VyxGXE_tAaBRd__lFQOyAIyAIyAA5ImageVAA022_EnvironmentKeyWritingU0VyAA0R0VSgGGAXG_A_yAOA7_yA18_GGQo_GSgtGGA12_yAA0K10TransitionVGG_Qo_Md, &_s7SwiftUI4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA15ModifiedContentVyAA6VStackVyAA05TupleC0VyAIyAIyAA4TextV07WorkoutB015MetricValueFontVGAA24_ForegroundStyleModifierVyAA5ColorVGG_AA012_ConditionalK0VyAIyAIyAoP0p4UnitR0VGAXGAcAE0D5Label7contentQrqd__AA011PlaceholderkC0VyxGXE_tAaBRd__lFQOyAIyAIyAA5ImageVAA022_EnvironmentKeyWritingU0VyAA0R0VSgGGAXG_A_yAOA7_yA18_GGQo_GSgtGGA12_yAA0K10TransitionVGG_Qo_MR);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v27 - v18;
  v27 = a1 > 0;
  v28 = a1 < 1;
  *v12 = static HorizontalAlignment.center.getter();
  *(v12 + 1) = 0;
  v12[16] = 1;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAKyAA4TextV07WorkoutB015MetricValueFontVGAA24_ForegroundStyleModifierVyAA5ColorVGG_AA012_ConditionalJ0VyAKyAKyAmN0m4UnitO0VGAVGAA0D0PAAE18accessibilityLabel7contentQrqd__AA011PlaceholderjD0VyxGXE_tAAA2_Rd__lFQOyAKyAKyAA5ImageVAA022_EnvironmentKeyWritingR0VyAA0O0VSgGGAVG_AYyAMA7_yA18_GGQo_GSgtGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAKyAA4TextV07WorkoutB015MetricValueFontVGAA24_ForegroundStyleModifierVyAA5ColorVGG_AA012_ConditionalJ0VyAKyAKyAmN0m4UnitO0VGAVGAA0D0PAAE18accessibilityLabel7contentQrqd__AA011PlaceholderjD0VyxGXE_tAAA2_Rd__lFQOyAKyAKyAA5ImageVAA022_EnvironmentKeyWritingR0VyAA0O0VSgGGAVG_AYyAMA7_yA18_GGQo_GSgtGGMR);
  closure #1 in closure #1 in closure #1 in HorizontalMetricRow.body.getter(v29, &v12[*(v20 + 44)]);
  v21 = &v12[*(v10 + 36)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA17ContentTransitionVGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA17ContentTransitionVGMR);
  static ContentTransition.identity.getter();
  *v21 = swift_getKeyPath();
  static AccessibilityChildBehavior.combine.getter();
  lazy protocol witness table accessor for type ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<Text, MetricValueFont>, _ForegroundStyleModifier<Color>>, _ConditionalContent<ModifiedContent<ModifiedContent<Text, MetricUnitFont>, _ForegroundStyleModifier<Color>>, <<opaque return type of View.accessibilityLabel<A>(content:)>>.0>?)>>, _EnvironmentKeyWritingModifier<ContentTransition>> and conformance <> ModifiedContent<A, B>();
  View.accessibilityElement(children:)();
  (*(v7 + 8))(v9, v31);
  outlined destroy of ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<Text, MetricValueFont>, _ForegroundStyleModifier<Color>>, _ConditionalContent<ModifiedContent<ModifiedContent<Text, MetricUnitFont>, _ForegroundStyleModifier<Color>>, <<opaque return type of View.accessibilityLabel<A>(content:)>>.0>?)>>, _EnvironmentKeyWritingModifier<ContentTransition>>(v12, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACyACyAA4TextV07WorkoutB015MetricValueFontVGAA24_ForegroundStyleModifierVyAA5ColorVGG_AA012_ConditionalD0VyACyACyAiJ0j4UnitL0VGARGAA0G0PAAE18accessibilityLabel7contentQrqd__AA011PlaceholderdG0VyxGXE_tAaZRd__lFQOyACyACyAA5ImageVAA022_EnvironmentKeyWritingO0VyAA0L0VSgGGARG_AUyAIA3_yA14_GGQo_GSgtGGA8_yAA0D10TransitionVGGMd, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACyACyAA4TextV07WorkoutB015MetricValueFontVGAA24_ForegroundStyleModifierVyAA5ColorVGG_AA012_ConditionalD0VyACyACyAiJ0j4UnitL0VGARGAA0G0PAAE18accessibilityLabel7contentQrqd__AA011PlaceholderdG0VyxGXE_tAaZRd__lFQOyACyACyAA5ImageVAA022_EnvironmentKeyWritingO0VyAA0L0VSgGGARG_AUyAIA3_yA14_GGQo_GSgtGGA8_yAA0D10TransitionVGGMR);
  v22 = *(v14 + 16);
  v22(v16, v19, v13);
  *a4 = 0;
  v23 = v28;
  *(a4 + 8) = v27;
  *(a4 + 9) = v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6SpacerVSg_AA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA15ModifiedContentVyAA6VStackVyAA05TupleD0VyALyALyAA4TextV07WorkoutB015MetricValueFontVGAA24_ForegroundStyleModifierVyAA5ColorVGG_AA012_ConditionalL0VyALyALyArS0q4UnitS0VGA_GAfAE0E5Label7contentQrqd__AA011PlaceholderlD0VyxGXE_tAaERd__lFQOyALyALyAA5ImageVAA022_EnvironmentKeyWritingV0VyAA0S0VSgGGA_G_A2_yARA10_yA21_GGQo_GSgtGGA15_yAA0L10TransitionVGG_Qo_tMd, &_s7SwiftUI6SpacerVSg_AA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA15ModifiedContentVyAA6VStackVyAA05TupleD0VyALyALyAA4TextV07WorkoutB015MetricValueFontVGAA24_ForegroundStyleModifierVyAA5ColorVGG_AA012_ConditionalL0VyALyALyArS0q4UnitS0VGA_GAfAE0E5Label7contentQrqd__AA011PlaceholderlD0VyxGXE_tAaERd__lFQOyALyALyAA5ImageVAA022_EnvironmentKeyWritingV0VyAA0S0VSgGGA_G_A2_yARA10_yA21_GGQo_GSgtGGA15_yAA0L10TransitionVGG_Qo_tMR);
  v22((a4 + *(v24 + 48)), v16, v13);
  v25 = *(v14 + 8);
  v25(v19, v13);
  return (v25)(v16, v13);
}

uint64_t closure #1 in closure #1 in closure #1 in HorizontalMetricRow.body.getter@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v74 = a2;
  v4 = type metadata accessor for Font.PrivateDesign();
  v73 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE18accessibilityLabel7contentQrqd__AA018PlaceholderContentC0VyxGXE_tAaBRd__lFQOyAA08ModifiedH0VyAJyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleN0VyAA5ColorVGG_AA012_ConditionalH0VyAA4TextVAGyAYGGQo_Md, &_s7SwiftUI4ViewPAAE18accessibilityLabel7contentQrqd__AA018PlaceholderContentC0VyxGXE_tAaBRd__lFQOyAA08ModifiedH0VyAJyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleN0VyAA5ColorVGG_AA012_ConditionalH0VyAA4TextVAGyAYGGQo_MR);
  v72 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v64 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0VyAGyAA4TextV07WorkoutB014MetricUnitFontVGAA24_ForegroundStyleModifierVyAA5ColorVGGAA4ViewPAAE18accessibilityLabel7contentQrqd__AA011PlaceholderdP0VyxGXE_tAaTRd__lFQOyAGyAGyAA5ImageVAA022_EnvironmentKeyWritingN0VyAA0K0VSgGGARG_ACyAiYyA8_GGQo__GMd, &_s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0VyAGyAA4TextV07WorkoutB014MetricUnitFontVGAA24_ForegroundStyleModifierVyAA5ColorVGGAA4ViewPAAE18accessibilityLabel7contentQrqd__AA011PlaceholderdP0VyxGXE_tAaTRd__lFQOyAGyAGyAA5ImageVAA022_EnvironmentKeyWritingN0VyAA0K0VSgGGARG_ACyAiYyA8_GGQo__GMR);
  MEMORY[0x28223BE20](v10);
  v12 = &v64 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAA4TextV07WorkoutB014MetricUnitFontVGAA24_ForegroundStyleModifierVyAA5ColorVGGAA4ViewPAAE18accessibilityLabel7contentQrqd__AA011PlaceholderdO0VyxGXE_tAaRRd__lFQOyAEyAEyAA5ImageVAA022_EnvironmentKeyWritingM0VyAA0J0VSgGGAPG_ACyAgWyA6_GGQo_GSgMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAA4TextV07WorkoutB014MetricUnitFontVGAA24_ForegroundStyleModifierVyAA5ColorVGGAA4ViewPAAE18accessibilityLabel7contentQrqd__AA011PlaceholderdO0VyxGXE_tAaRRd__lFQOyAEyAEyAA5ImageVAA022_EnvironmentKeyWritingM0VyAA0J0VSgGGAPG_ACyAgWyA6_GGQo_GSgMR);
  MEMORY[0x28223BE20](v13 - 8);
  v75 = &v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v64 - v16;
  v86 = MetricValue.formattedValue.getter();
  v87 = v18;
  lazy protocol witness table accessor for type String and conformance String();
  v79 = Text.init<A>(_:)();
  v78 = v19;
  v21 = v20;
  v81 = v22;
  KeyPath = swift_getKeyPath();
  v77 = v21 & 1;
  v102 = v21 & 1;
  v101 = 0;
  static Color.white.getter();
  MetricValue.stale.getter();
  v76 = Color.opacity(_:)();

  v23 = MetricValue.formattedUnit.getter();
  if (v24)
  {
    v86 = v23;
    v87 = v24;
    v25 = Text.init<A>(_:)();
    v27 = v26;
    v29 = v28;
    v31 = v30;
    v32 = swift_getKeyPath();
    v33 = static Color.white.getter();
    *v12 = v25;
    *(v12 + 1) = v27;
    v12[16] = v29 & 1;
    *(v12 + 3) = v31;
    *(v12 + 4) = v32;
    v12[40] = 0;
    *(v12 + 6) = v33;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4TextV07WorkoutB014MetricUnitFontVGAA24_ForegroundStyleModifierVyAA5ColorVGGMd, &_s7SwiftUI15ModifiedContentVyACyAA4TextV07WorkoutB014MetricUnitFontVGAA24_ForegroundStyleModifierVyAA5ColorVGGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Text, MetricUnitFont>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, MetricUnitFont>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyACyAA4TextV07WorkoutB014MetricUnitFontVGAA24_ForegroundStyleModifierVyAA5ColorVGGMd, &_s7SwiftUI15ModifiedContentVyACyAA4TextV07WorkoutB014MetricUnitFontVGAA24_ForegroundStyleModifierVyAA5ColorVGGMR, lazy protocol witness table accessor for type ModifiedContent<Text, MetricUnitFont> and conformance <> ModifiedContent<A, B>);
    v34 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleI0VyAA5ColorVGGMd, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleI0VyAA5ColorVGGMR);
    v35 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA4TextVAA011PlaceholderD4ViewVyAA08ModifiedD0VyAIyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleM0VyAA5ColorVGGGGMd, &_s7SwiftUI19_ConditionalContentVyAA4TextVAA011PlaceholderD4ViewVyAA08ModifiedD0VyAIyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleM0VyAA5ColorVGGGGMR);
    v36 = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Text, MetricUnitFont>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleI0VyAA5ColorVGGMd, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleI0VyAA5ColorVGGMR, lazy protocol witness table accessor for type ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>);
    v37 = lazy protocol witness table accessor for type _ConditionalContent<Text, PlaceholderContentView<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>>> and conformance <> _ConditionalContent<A, B>();
    v86 = v34;
    v87 = v35;
    v88 = v36;
    v89 = v37;
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();
  }

  else
  {
    v38 = v73;
    v70 = v10;
    v39 = v9;
    v71 = v7;
    MetricValue.symbol.getter();
    if (!v40)
    {
      v49 = 1;
      goto LABEL_6;
    }

    v41 = Image.init(systemName:)();
    v69 = v41;
    specialized static LayoutUtilities.layoutMetric(regular42:)(16.0);
    static Font.Weight.semibold.getter();
    static Font.PrivateDesign.compactRounded.getter();
    v42 = static Font.system(size:weight:design:)();
    v67 = v42;
    (*(v38 + 8))(v6, v4);
    v43 = swift_getKeyPath();
    v68 = v43;
    v44 = static Color.red.getter();
    v73 = &v64;
    v86 = v41;
    v87 = v43;
    v88 = v42;
    v89 = v44;
    MEMORY[0x28223BE20](v44);
    *(&v64 - 2) = a1;
    v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleI0VyAA5ColorVGGMd, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleI0VyAA5ColorVGGMR);
    v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA4TextVAA011PlaceholderD4ViewVyAA08ModifiedD0VyAIyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleM0VyAA5ColorVGGGGMd, &_s7SwiftUI19_ConditionalContentVyAA4TextVAA011PlaceholderD4ViewVyAA08ModifiedD0VyAIyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleM0VyAA5ColorVGGGGMR);
    v45 = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Text, MetricUnitFont>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleI0VyAA5ColorVGGMd, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleI0VyAA5ColorVGGMR, lazy protocol witness table accessor for type ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>);
    v46 = lazy protocol witness table accessor for type _ConditionalContent<Text, PlaceholderContentView<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>>> and conformance <> _ConditionalContent<A, B>();
    View.accessibilityLabel<A>(content:)();

    v47 = v72;
    v48 = v71;
    (*(v72 + 16))(v12, v39, v71);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4TextV07WorkoutB014MetricUnitFontVGAA24_ForegroundStyleModifierVyAA5ColorVGGMd, &_s7SwiftUI15ModifiedContentVyACyAA4TextV07WorkoutB014MetricUnitFontVGAA24_ForegroundStyleModifierVyAA5ColorVGGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Text, MetricUnitFont>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, MetricUnitFont>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyACyAA4TextV07WorkoutB014MetricUnitFontVGAA24_ForegroundStyleModifierVyAA5ColorVGGMd, &_s7SwiftUI15ModifiedContentVyACyAA4TextV07WorkoutB014MetricUnitFontVGAA24_ForegroundStyleModifierVyAA5ColorVGGMR, lazy protocol witness table accessor for type ModifiedContent<Text, MetricUnitFont> and conformance <> ModifiedContent<A, B>);
    v86 = v66;
    v87 = v65;
    v88 = v45;
    v89 = v46;
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();
    (*(v47 + 8))(v39, v48);
  }

  v49 = 0;
LABEL_6:
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAA4TextV07WorkoutB014MetricUnitFontVGAA24_ForegroundStyleModifierVyAA5ColorVGGAA4ViewPAAE18accessibilityLabel7contentQrqd__AA011PlaceholderdO0VyxGXE_tAaRRd__lFQOyAEyAEyAA5ImageVAA022_EnvironmentKeyWritingM0VyAA0J0VSgGGAPG_ACyAgWyA6_GGQo_GMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAA4TextV07WorkoutB014MetricUnitFontVGAA24_ForegroundStyleModifierVyAA5ColorVGGAA4ViewPAAE18accessibilityLabel7contentQrqd__AA011PlaceholderdO0VyxGXE_tAaRRd__lFQOyAEyAEyAA5ImageVAA022_EnvironmentKeyWritingM0VyAA0J0VSgGGAPG_ACyAgWyA6_GGQo_GMR);
  (*(*(v50 - 8) + 56))(v17, v49, 1, v50);
  v51 = v75;
  sub_20C69A1B4(v17, v75);
  v52 = v79;
  *&v82 = v79;
  v53 = v78;
  *(&v82 + 1) = v78;
  v73 = v17;
  v54 = v77;
  LOBYTE(v83) = v77;
  *(&v83 + 1) = *v100;
  DWORD1(v83) = *&v100[3];
  v55 = v81;
  *(&v83 + 1) = v81;
  LOWORD(v84) = 256;
  *(&v84 + 2) = v98;
  WORD3(v84) = v99;
  v56 = KeyPath;
  *(&v84 + 1) = KeyPath;
  LOBYTE(v85) = 0;
  DWORD1(v85) = *&v97[3];
  *(&v85 + 1) = *v97;
  v57 = v76;
  *(&v85 + 1) = v76;
  v58 = v82;
  v59 = v83;
  v60 = v85;
  v61 = v74;
  v74[2] = v84;
  v61[3] = v60;
  *v61 = v58;
  v61[1] = v59;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4TextV07WorkoutB015MetricValueFontVGAA24_ForegroundStyleModifierVyAA5ColorVGG_AA012_ConditionalD0VyACyACyAeF0g4UnitI0VGANGAA4ViewPAAE18accessibilityLabel7contentQrqd__AA011PlaceholderdP0VyxGXE_tAaVRd__lFQOyACyACyAA5ImageVAA022_EnvironmentKeyWritingL0VyAA0I0VSgGGANG_AQyAEA_yA10_GGQo_GSgtMd, &_s7SwiftUI15ModifiedContentVyACyAA4TextV07WorkoutB015MetricValueFontVGAA24_ForegroundStyleModifierVyAA5ColorVGG_AA012_ConditionalD0VyACyACyAeF0g4UnitI0VGANGAA4ViewPAAE18accessibilityLabel7contentQrqd__AA011PlaceholderdP0VyxGXE_tAaVRd__lFQOyACyACyAA5ImageVAA022_EnvironmentKeyWritingL0VyAA0I0VSgGGANG_AQyAEA_yA10_GGQo_GSgtMR);
  sub_20C69A1B4(v51, v61 + *(v62 + 48));
  outlined init with copy of ModifiedContent<ModifiedContent<Text, MetricValueFont>, _ForegroundStyleModifier<Color>>(&v82, &v86);
  outlined destroy of ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<Text, MetricValueFont>, _ForegroundStyleModifier<Color>>, _ConditionalContent<ModifiedContent<ModifiedContent<Text, MetricUnitFont>, _ForegroundStyleModifier<Color>>, <<opaque return type of View.accessibilityLabel<A>(content:)>>.0>?)>>, _EnvironmentKeyWritingModifier<ContentTransition>>(v73, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAA4TextV07WorkoutB014MetricUnitFontVGAA24_ForegroundStyleModifierVyAA5ColorVGGAA4ViewPAAE18accessibilityLabel7contentQrqd__AA011PlaceholderdO0VyxGXE_tAaRRd__lFQOyAEyAEyAA5ImageVAA022_EnvironmentKeyWritingM0VyAA0J0VSgGGAPG_ACyAgWyA6_GGQo_GSgMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAA4TextV07WorkoutB014MetricUnitFontVGAA24_ForegroundStyleModifierVyAA5ColorVGGAA4ViewPAAE18accessibilityLabel7contentQrqd__AA011PlaceholderdO0VyxGXE_tAaRRd__lFQOyAEyAEyAA5ImageVAA022_EnvironmentKeyWritingM0VyAA0J0VSgGGAPG_ACyAgWyA6_GGQo_GSgMR);
  outlined destroy of ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<Text, MetricValueFont>, _ForegroundStyleModifier<Color>>, _ConditionalContent<ModifiedContent<ModifiedContent<Text, MetricUnitFont>, _ForegroundStyleModifier<Color>>, <<opaque return type of View.accessibilityLabel<A>(content:)>>.0>?)>>, _EnvironmentKeyWritingModifier<ContentTransition>>(v51, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAA4TextV07WorkoutB014MetricUnitFontVGAA24_ForegroundStyleModifierVyAA5ColorVGGAA4ViewPAAE18accessibilityLabel7contentQrqd__AA011PlaceholderdO0VyxGXE_tAaRRd__lFQOyAEyAEyAA5ImageVAA022_EnvironmentKeyWritingM0VyAA0J0VSgGGAPG_ACyAgWyA6_GGQo_GSgMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAA4TextV07WorkoutB014MetricUnitFontVGAA24_ForegroundStyleModifierVyAA5ColorVGGAA4ViewPAAE18accessibilityLabel7contentQrqd__AA011PlaceholderdO0VyxGXE_tAaRRd__lFQOyAEyAEyAA5ImageVAA022_EnvironmentKeyWritingM0VyAA0J0VSgGGAPG_ACyAgWyA6_GGQo_GSgMR);
  v86 = v52;
  v87 = v53;
  LOBYTE(v88) = v54;
  *(&v88 + 1) = *v100;
  HIDWORD(v88) = *&v100[3];
  v89 = v55;
  v90 = 256;
  v91 = v98;
  v92 = v99;
  v93 = v56;
  v94 = 0;
  *v95 = *v97;
  *&v95[3] = *&v97[3];
  v96 = v57;
  return outlined destroy of ModifiedContent<ModifiedContent<Text, MetricValueFont>, _ForegroundStyleModifier<Color>>(&v86);
}

uint64_t closure #1 in closure #1 in closure #1 in closure #1 in HorizontalMetricRow.body.getter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA4TextVAA011PlaceholderD4ViewVyAA08ModifiedD0VyAKyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleN0VyAA5ColorVGGG_GMd, &_s7SwiftUI19_ConditionalContentV7StorageOyAA4TextVAA011PlaceholderD4ViewVyAA08ModifiedD0VyAKyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleN0VyAA5ColorVGGG_GMR);
  MEMORY[0x28223BE20](v2);
  v4 = v12 - v3;
  v5 = MetricValue.symbolAXLabel.getter();
  if (v6)
  {
    v12[0] = v5;
    v12[1] = v6;
    lazy protocol witness table accessor for type String and conformance String();
    *v4 = Text.init<A>(_:)();
    *(v4 + 1) = v7;
    v4[16] = v8 & 1;
    *(v4 + 3) = v9;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI22PlaceholderContentViewVyAA08ModifiedD0VyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleK0VyAA5ColorVGGGMd, &_s7SwiftUI22PlaceholderContentViewVyAA08ModifiedD0VyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleK0VyAA5ColorVGGGMR);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI22PlaceholderContentViewVyAA08ModifiedD0VyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleK0VyAA5ColorVGGGMd, &_s7SwiftUI22PlaceholderContentViewVyAA08ModifiedD0VyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleK0VyAA5ColorVGGGMR);
    (*(*(v10 - 8) + 16))(v4, a1, v10);
    swift_storeEnumTagMultiPayload();
  }

  lazy protocol witness table accessor for type HStack<TupleView<(Spacer?, ForEach<[(offset: Int, element: MetricValue)], MetricValue, TupleView<(Spacer?, <<opaque return type of View.accessibilityElement(children:)>>.0)>>, Spacer?)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type PlaceholderContentView<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>> and conformance PlaceholderContentView<A>, &_s7SwiftUI22PlaceholderContentViewVyAA08ModifiedD0VyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleK0VyAA5ColorVGGGMd, &_s7SwiftUI22PlaceholderContentViewVyAA08ModifiedD0VyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleK0VyAA5ColorVGGGMR, MEMORY[0x277CE0520]);
  return _ConditionalContent<>.init(storage:)();
}

uint64_t protocol witness for View.body.getter in conformance HorizontalMetricRow@<X0>(uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = *(v2 + 1);
  *a2 = static VerticalAlignment.top.getter();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA6SpacerVSg_AA7ForEachVySaySi6offset_11WorkoutCore11MetricValueV7elementtGArIyAL_AA0D0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA15ModifiedContentVyAA6VStackVyAIyA0_yA0_yAA4TextV0mB00oP4FontVGAA24_ForegroundStyleModifierVyAA5ColorVGG_AA012_ConditionalY0VyA0_yA0_yA4_A5_0O8UnitFontVGA13_GAvAE0R5Label7contentQrqd__AA011PlaceholderyD0VyxGXE_tAaURd__lFQOyA0_yA0_yAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGA13_G_A16_yA4_A24_yA35_GGQo_GSgtGGA29_yAA0Y10TransitionVGG_Qo_tGGALtGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA6SpacerVSg_AA7ForEachVySaySi6offset_11WorkoutCore11MetricValueV7elementtGArIyAL_AA0D0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA15ModifiedContentVyAA6VStackVyAIyA0_yA0_yAA4TextV0mB00oP4FontVGAA24_ForegroundStyleModifierVyAA5ColorVGG_AA012_ConditionalY0VyA0_yA0_yA4_A5_0O8UnitFontVGA13_GAvAE0R5Label7contentQrqd__AA011PlaceholderyD0VyxGXE_tAaURd__lFQOyA0_yA0_yAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGA13_G_A16_yA4_A24_yA35_GGQo_GSgtGGA29_yAA0Y10TransitionVGG_Qo_tGGALtGGMR);
  return closure #1 in HorizontalMetricRow.body.getter(v4, a2 + *(v6 + 44), v5);
}

uint64_t getEnumTagSinglePayload for HorizontalMetricRow(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t storeEnumTagSinglePayload for HorizontalMetricRow(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@unowned Int, @in_guaranteed MetricValue) -> (@out TupleView<(Spacer?, <<opaque return type of View.accessibilityElement(children:)>>.0)>)(char *a1)
{
  v3 = *(v1 + 16);
  v4 = *a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_11WorkoutCore11MetricValueV7elementtMd, &_sSi6offset_11WorkoutCore11MetricValueV7elementtMR);
  return v3(v4, &a1[*(v5 + 48)]);
}

unint64_t lazy protocol witness table accessor for type MetricValue and conformance MetricValue(double a1)
{
  result = lazy protocol witness table cache variable for type MetricValue and conformance MetricValue;
  if (!lazy protocol witness table cache variable for type MetricValue and conformance MetricValue)
  {
    type metadata accessor for MetricValue();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MetricValue and conformance MetricValue);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<Text, MetricValueFont>, _ForegroundStyleModifier<Color>>, _ConditionalContent<ModifiedContent<ModifiedContent<Text, MetricUnitFont>, _ForegroundStyleModifier<Color>>, <<opaque return type of View.accessibilityLabel<A>(content:)>>.0>?)>>, _EnvironmentKeyWritingModifier<ContentTransition>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<Text, MetricValueFont>, _ForegroundStyleModifier<Color>>, _ConditionalContent<ModifiedContent<ModifiedContent<Text, MetricUnitFont>, _ForegroundStyleModifier<Color>>, <<opaque return type of View.accessibilityLabel<A>(content:)>>.0>?)>>, _EnvironmentKeyWritingModifier<ContentTransition>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<Text, MetricValueFont>, _ForegroundStyleModifier<Color>>, _ConditionalContent<ModifiedContent<ModifiedContent<Text, MetricUnitFont>, _ForegroundStyleModifier<Color>>, <<opaque return type of View.accessibilityLabel<A>(content:)>>.0>?)>>, _EnvironmentKeyWritingModifier<ContentTransition>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACyACyAA4TextV07WorkoutB015MetricValueFontVGAA24_ForegroundStyleModifierVyAA5ColorVGG_AA012_ConditionalD0VyACyACyAiJ0j4UnitL0VGARGAA0G0PAAE18accessibilityLabel7contentQrqd__AA011PlaceholderdG0VyxGXE_tAaZRd__lFQOyACyACyAA5ImageVAA022_EnvironmentKeyWritingO0VyAA0L0VSgGGARG_AUyAIA3_yA14_GGQo_GSgtGGA8_yAA0D10TransitionVGGMd, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACyACyAA4TextV07WorkoutB015MetricValueFontVGAA24_ForegroundStyleModifierVyAA5ColorVGG_AA012_ConditionalD0VyACyACyAiJ0j4UnitL0VGARGAA0G0PAAE18accessibilityLabel7contentQrqd__AA011PlaceholderdG0VyxGXE_tAaZRd__lFQOyACyACyAA5ImageVAA022_EnvironmentKeyWritingO0VyAA0L0VSgGGARG_AUyAIA3_yA14_GGQo_GSgtGGA8_yAA0D10TransitionVGGMR);
    lazy protocol witness table accessor for type HStack<TupleView<(Spacer?, ForEach<[(offset: Int, element: MetricValue)], MetricValue, TupleView<(Spacer?, <<opaque return type of View.accessibilityElement(children:)>>.0)>>, Spacer?)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type VStack<TupleView<(ModifiedContent<ModifiedContent<Text, MetricValueFont>, _ForegroundStyleModifier<Color>>, _ConditionalContent<ModifiedContent<ModifiedContent<Text, MetricUnitFont>, _ForegroundStyleModifier<Color>>, <<opaque return type of View.accessibilityLabel<A>(content:)>>.0>?)>> and conformance VStack<A>, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA4TextV07WorkoutB015MetricValueFontVGAA24_ForegroundStyleModifierVyAA5ColorVGG_AA012_ConditionalG0VyAGyAGyAiJ0j4UnitL0VGARGAA0E0PAAE18accessibilityLabel7contentQrqd__AA011PlaceholdergE0VyxGXE_tAaZRd__lFQOyAGyAGyAA5ImageVAA022_EnvironmentKeyWritingO0VyAA0L0VSgGGARG_AUyAIA3_yA14_GGQo_GSgtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA4TextV07WorkoutB015MetricValueFontVGAA24_ForegroundStyleModifierVyAA5ColorVGG_AA012_ConditionalG0VyAGyAGyAiJ0j4UnitL0VGARGAA0E0PAAE18accessibilityLabel7contentQrqd__AA011PlaceholdergE0VyxGXE_tAaZRd__lFQOyAGyAGyAA5ImageVAA022_EnvironmentKeyWritingO0VyAA0L0VSgGGARG_AUyAIA3_yA14_GGQo_GSgtGGMR, MEMORY[0x277CE1198]);
    lazy protocol witness table accessor for type HStack<TupleView<(Spacer?, ForEach<[(offset: Int, element: MetricValue)], MetricValue, TupleView<(Spacer?, <<opaque return type of View.accessibilityElement(children:)>>.0)>>, Spacer?)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<ContentTransition> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA17ContentTransitionVGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA17ContentTransitionVGMR, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<Text, MetricValueFont>, _ForegroundStyleModifier<Color>>, _ConditionalContent<ModifiedContent<ModifiedContent<Text, MetricUnitFont>, _ForegroundStyleModifier<Color>>, <<opaque return type of View.accessibilityLabel<A>(content:)>>.0>?)>>, _EnvironmentKeyWritingModifier<ContentTransition>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t outlined init with copy of ModifiedContent<ModifiedContent<Text, MetricValueFont>, _ForegroundStyleModifier<Color>>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4TextV07WorkoutB015MetricValueFontVGAA24_ForegroundStyleModifierVyAA5ColorVGGMd, &_s7SwiftUI15ModifiedContentVyACyAA4TextV07WorkoutB015MetricValueFontVGAA24_ForegroundStyleModifierVyAA5ColorVGGMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<Text, MetricValueFont>, _ForegroundStyleModifier<Color>>, _ConditionalContent<ModifiedContent<ModifiedContent<Text, MetricUnitFont>, _ForegroundStyleModifier<Color>>, <<opaque return type of View.accessibilityLabel<A>(content:)>>.0>?)>>, _EnvironmentKeyWritingModifier<ContentTransition>>(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t outlined destroy of ModifiedContent<ModifiedContent<Text, MetricValueFont>, _ForegroundStyleModifier<Color>>(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4TextV07WorkoutB015MetricValueFontVGAA24_ForegroundStyleModifierVyAA5ColorVGGMd, &_s7SwiftUI15ModifiedContentVyACyAA4TextV07WorkoutB015MetricValueFontVGAA24_ForegroundStyleModifierVyAA5ColorVGGMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Text, MetricUnitFont>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    lazy protocol witness table accessor for type HStack<TupleView<(Spacer?, ForEach<[(offset: Int, element: MetricValue)], MetricValue, TupleView<(Spacer?, <<opaque return type of View.accessibilityElement(children:)>>.0)>>, Spacer?)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type _ForegroundStyleModifier<Color> and conformance _ForegroundStyleModifier<A>, &_s7SwiftUI24_ForegroundStyleModifierVyAA5ColorVGMd, &_s7SwiftUI24_ForegroundStyleModifierVyAA5ColorVGMR, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<Text, PlaceholderContentView<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<Text, PlaceholderContentView<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<Text, PlaceholderContentView<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA4TextVAA011PlaceholderD4ViewVyAA08ModifiedD0VyAIyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleM0VyAA5ColorVGGGGMd, &_s7SwiftUI19_ConditionalContentVyAA4TextVAA011PlaceholderD4ViewVyAA08ModifiedD0VyAIyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleM0VyAA5ColorVGGGGMR);
    lazy protocol witness table accessor for type HStack<TupleView<(Spacer?, ForEach<[(offset: Int, element: MetricValue)], MetricValue, TupleView<(Spacer?, <<opaque return type of View.accessibilityElement(children:)>>.0)>>, Spacer?)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type PlaceholderContentView<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>> and conformance PlaceholderContentView<A>, &_s7SwiftUI22PlaceholderContentViewVyAA08ModifiedD0VyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleK0VyAA5ColorVGGGMd, &_s7SwiftUI22PlaceholderContentViewVyAA08ModifiedD0VyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleK0VyAA5ColorVGGGMR, MEMORY[0x277CE0520]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<Text, PlaceholderContentView<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Text, MetricUnitFont> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Text, MetricUnitFont> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Text, MetricUnitFont> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4TextV07WorkoutB014MetricUnitFontVGMd, &_s7SwiftUI15ModifiedContentVyAA4TextV07WorkoutB014MetricUnitFontVGMR);
    lazy protocol witness table accessor for type MetricUnitFont and conformance MetricUnitFont();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Text, MetricUnitFont> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

double RacePlatterBackground.body.getter@<D0>(uint64_t a2@<X8>)
{
  v3 = static Alignment.bottom.getter();
  v5 = v4;
  closure #1 in RacePlatterBackground.body.getter(&v11);
  v23 = v15;
  v24 = v16;
  v25 = v17;
  v26 = v18;
  v19 = v11;
  v20 = v12;
  v21 = v13;
  v22 = v14;
  v27[0] = v11;
  v27[1] = v12;
  v27[2] = v13;
  v27[3] = v14;
  v27[4] = v15;
  v27[5] = v16;
  v27[6] = v17;
  v28 = v18;
  outlined init with copy of TupleView<(RaceCroppedMapPlatterView, Color, LinearGradient)>(&v19, &v10);
  outlined destroy of TupleView<(RaceCroppedMapPlatterView, Color, LinearGradient)>(v27);
  *a2 = v3;
  *(a2 + 8) = v5;
  v6 = v24;
  *(a2 + 80) = v23;
  *(a2 + 96) = v6;
  *(a2 + 112) = v25;
  *(a2 + 128) = v26;
  v7 = v20;
  *(a2 + 16) = v19;
  *(a2 + 32) = v7;
  result = *&v21;
  v9 = v22;
  *(a2 + 48) = v21;
  *(a2 + 64) = v9;
  return result;
}

uint64_t closure #1 in RacePlatterBackground.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Color.RGBColorSpace();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = RaceWorkoutConfiguration.routeSnapshotData.getter();
  v8 = v7;
  v9 = objc_allocWithZone(MEMORY[0x277D755B8]);
  isa = Data._bridgeToObjectiveC()().super.isa;
  v11 = [v9 initWithData_];

  outlined consume of Data._Representation(v6, v8);
  if (v11)
  {
    v12 = Image.init(uiImage:)();
  }

  else
  {
    WorkoutConfiguration.displaySymbolName.getter();
    v12 = Image.init(_internalSystemName:)();
  }

  v13 = v12;
  v14 = specialized RaceRowConstants.init()(&v24);
  (*(v3 + 104))(v5, *MEMORY[0x277CE0EE0], v2, v14);
  Color.init(_:red:green:blue:opacity:)();
  v15 = Color.opacity(_:)();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy7SwiftUI8GradientV4StopVGMd, &_ss23_ContiguousArrayStorageCy7SwiftUI8GradientV4StopVGMR);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_20CB5DA80;
  static Color.black.getter();
  Color.opacity(_:)();

  *(v16 + 32) = Gradient.Stop.init(color:location:)();
  *(v16 + 40) = v17;
  static Color.black.getter();
  Color.opacity(_:)();

  *(v16 + 48) = Gradient.Stop.init(color:location:)();
  *(v16 + 56) = v18;
  Gradient.init(stops:)();
  static UnitPoint.bottom.getter();
  static UnitPoint.top.getter();
  LinearGradient.init(gradient:startPoint:endPoint:)();
  *v28 = v13;
  *&v28[24] = v25;
  *&v28[8] = v24;
  *&v28[40] = v26;
  *&v28[56] = v27;
  v19 = *&v28[48];
  *(a1 + 32) = *&v28[32];
  *(a1 + 48) = v19;
  v20 = *&v28[16];
  *a1 = *v28;
  *(a1 + 16) = v20;
  v21 = v36;
  *(a1 + 88) = v35;
  v22 = v34;
  *(a1 + 64) = *&v28[64];
  *(a1 + 72) = v15;
  *(a1 + 80) = v22;
  *(a1 + 104) = v21;
  outlined init with copy of RaceCroppedMapPlatterView(v28, &v29);
  v29 = v13;
  v30 = v24;
  v31 = v25;
  v32 = v26;
  v33 = v27;
  return outlined destroy of RaceCroppedMapPlatterView(&v29);
}

uint64_t outlined init with copy of TupleView<(RaceCroppedMapPlatterView, Color, LinearGradient)>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVy07WorkoutB0021RaceCroppedMapPlatterD0V_AA5ColorVAA14LinearGradientVtGMd, &_s7SwiftUI9TupleViewVy07WorkoutB0021RaceCroppedMapPlatterD0V_AA5ColorVAA14LinearGradientVtGMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of TupleView<(RaceCroppedMapPlatterView, Color, LinearGradient)>(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVy07WorkoutB0021RaceCroppedMapPlatterD0V_AA5ColorVAA14LinearGradientVtGMd, &_s7SwiftUI9TupleViewVy07WorkoutB0021RaceCroppedMapPlatterD0V_AA5ColorVAA14LinearGradientVtGMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double protocol witness for View.body.getter in conformance RacePlatterBackground@<D0>(uint64_t a2@<X8>)
{
  v3 = static Alignment.bottom.getter();
  v5 = v4;
  closure #1 in RacePlatterBackground.body.getter(&v11);
  v23 = v15;
  v24 = v16;
  v25 = v17;
  v26 = v18;
  v19 = v11;
  v20 = v12;
  v21 = v13;
  v22 = v14;
  v27[0] = v11;
  v27[1] = v12;
  v27[2] = v13;
  v27[3] = v14;
  v27[4] = v15;
  v27[5] = v16;
  v27[6] = v17;
  v28 = v18;
  outlined init with copy of TupleView<(RaceCroppedMapPlatterView, Color, LinearGradient)>(&v19, &v10);
  outlined destroy of TupleView<(RaceCroppedMapPlatterView, Color, LinearGradient)>(v27);
  *a2 = v3;
  *(a2 + 8) = v5;
  v6 = v24;
  *(a2 + 80) = v23;
  *(a2 + 96) = v6;
  *(a2 + 112) = v25;
  *(a2 + 128) = v26;
  v7 = v20;
  *(a2 + 16) = v19;
  *(a2 + 32) = v7;
  result = *&v21;
  v9 = v22;
  *(a2 + 48) = v21;
  *(a2 + 64) = v9;
  return result;
}

uint64_t getEnumTagSinglePayload for RacePlatterBackground(uint64_t *a1, int a2)
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

uint64_t storeEnumTagSinglePayload for RacePlatterBackground(uint64_t result, int a2, int a3)
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

unint64_t lazy protocol witness table accessor for type ZStack<TupleView<(RaceCroppedMapPlatterView, Color, LinearGradient)>> and conformance ZStack<A>()
{
  result = lazy protocol witness table cache variable for type ZStack<TupleView<(RaceCroppedMapPlatterView, Color, LinearGradient)>> and conformance ZStack<A>;
  if (!lazy protocol witness table cache variable for type ZStack<TupleView<(RaceCroppedMapPlatterView, Color, LinearGradient)>> and conformance ZStack<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6ZStackVyAA9TupleViewVy07WorkoutB0021RaceCroppedMapPlatterE0V_AA5ColorVAA14LinearGradientVtGGMd, &_s7SwiftUI6ZStackVyAA9TupleViewVy07WorkoutB0021RaceCroppedMapPlatterE0V_AA5ColorVAA14LinearGradientVtGGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ZStack<TupleView<(RaceCroppedMapPlatterView, Color, LinearGradient)>> and conformance ZStack<A>);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RaceCroppedMapPlatterView(uint64_t *a1, int a2)
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

uint64_t storeEnumTagSinglePayload for RaceCroppedMapPlatterView(uint64_t result, int a2, int a3)
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

__n128 RaceCroppedMapPlatterView.body.getter@<Q0>(_OWORD *a1@<X8>)
{
  v3 = type metadata accessor for Image.ResizingMode();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (static Platform.current.getter())
  {
    (*(v4 + 104))(v6, *MEMORY[0x277CE0FE0], v3);
    v22 = Image.resizable(capInsets:resizingMode:)();
    (*(v4 + 8))(v6, v3);
    static Platform.current.getter();
    v7 = Platform.rawValue.getter();
    if (v7 == Platform.rawValue.getter())
    {
      v8 = [objc_opt_self() mainScreen];
      [v8 bounds];
    }

    v12 = *(v1 + 24);
    v37 = *(v1 + 8);
    v38 = v12;
    v13 = *(v1 + 56);
    v39 = *(v1 + 40);
    v40 = v13;
    static Platform.current.getter();
    v14 = Platform.rawValue.getter();
    if (v14 == Platform.rawValue.getter())
    {
      v15 = [objc_opt_self() aL];
      [v15 0x277DAAEF8];
    }

    static Alignment.center.getter();
    v16 = _FrameLayout.init(width:height:alignment:)();
    v24 = 1;
    *&v23[6] = v36[2];
    *&v23[22] = v36[3];
    *&v23[38] = v36[4];
    RaceRowConstants.verticalClippedHeight.getter(v16);
    static Alignment.bottom.getter();
    _FrameLayout.init(width:height:alignment:)();
    v33 = v22;
    LOWORD(v34[0]) = 1;
    *(v34 + 2) = *v23;
    *(&v34[1] + 2) = *&v23[16];
    *(&v34[2] + 2) = *&v23[32];
    *&v34[3] = *&v23[46];
    _s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0VyAGyAGyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameJ0VGANGAO_GWOi_(&v33);
    v10 = v35;
    v29 = v34[3];
    v11 = v36[0];
  }

  else
  {
    if (one-time initialization token for snapshotRouteWidth != -1)
    {
      swift_once();
    }

    if (one-time initialization token for snapshotTotalWidth != -1)
    {
      swift_once();
    }

    if (one-time initialization token for snapshotRouteHeight != -1)
    {
      swift_once();
    }

    if (one-time initialization token for snapshotTotalHeight != -1)
    {
      swift_once();
    }

    (*(v4 + 104))(v6, *MEMORY[0x277CE0FE0], v3);
    v9 = Image.resizable(capInsets:resizingMode:)();
    (*(v4 + 8))(v6, v3);
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    LOBYTE(v41) = 1;
    *&v32[22] = v38;
    *&v32[38] = v39;
    *&v32[6] = v37;
    v33 = v9;
    LOWORD(v34[0]) = 1;
    *&v34[3] = *(&v39 + 1);
    *(&v34[2] + 2) = *&v32[32];
    *(&v34[1] + 2) = *&v32[16];
    *(v34 + 2) = *v32;
    _s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0VyAGyAGyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameJ0VGANGAO_GWOi0_(&v33);
    v10 = v35;
    v29 = v34[3];
    v11 = v36[0];
  }

  v30 = v10;
  *v31 = v11;
  *&v31[9] = *(v36 + 9);
  v25 = v33;
  v26 = v34[0];
  v27 = v34[1];
  v28 = v34[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameH0VGAJGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameH0VGAJGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameH0VGMd, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameH0VGMR);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _FrameLayout> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _FrameLayout> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameH0VGAJGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameH0VGAJGMR, lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout> and conformance <> ModifiedContent<A, B>);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout> and conformance <> ModifiedContent<A, B>();
  _ConditionalContent<>.init(storage:)();
  v17 = v46;
  a1[4] = v45;
  a1[5] = v17;
  a1[6] = v47[0];
  *(a1 + 105) = *(v47 + 9);
  v18 = v42;
  *a1 = v41;
  a1[1] = v18;
  result = v43;
  v20 = v44;
  a1[2] = v43;
  a1[3] = v20;
  return result;
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _FrameLayout> and conformance <> ModifiedContent<A, B>(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

unint64_t lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _FrameLayout>, ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _FrameLayout>, ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _FrameLayout>, ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameI0VGALGAMGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameI0VGALGAMGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _FrameLayout> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _FrameLayout> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameH0VGAJGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameH0VGAJGMR, lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout> and conformance <> ModifiedContent<A, B>);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _FrameLayout>, ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

uint64_t one-time initialization function for snapshotTotalHeight(uint64_t a1, double *a2)
{
  static Platform.current.getter();
  v3 = Platform.rawValue.getter();
  result = Platform.rawValue.getter();
  v5 = 470.0;
  if (v3 == result)
  {
    v5 = 235.0;
  }

  *a2 = v5;
  return result;
}

uint64_t one-time initialization function for snapshotRouteHeight(uint64_t a1, double *a2)
{
  static Platform.current.getter();
  v3 = Platform.rawValue.getter();
  result = Platform.rawValue.getter();
  v5 = 230.0;
  if (v3 == result)
  {
    v5 = 115.0;
  }

  *a2 = v5;
  return result;
}

uint64_t one-time initialization function for snapshotRouteTopPadding(uint64_t a1, double *a2)
{
  static Platform.current.getter();
  v3 = Platform.rawValue.getter();
  result = Platform.rawValue.getter();
  v5 = 120.0;
  if (v3 == result)
  {
    v5 = 60.0;
  }

  *a2 = v5;
  return result;
}

uint64_t RaceWorkoutSelectionView.init(workoutConfiguration:formattingManager:)@<X0>(uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for WorkoutConfigurationDataSource();
  _s11WorkoutCore0A23ConfigurationDataSourceCAC7Combine16ObservableObjectAAWlTm_8(&lazy protocol witness table cache variable for type WorkoutConfigurationDataSource and conformance WorkoutConfigurationDataSource, MEMORY[0x277D7DC28], MEMORY[0x277D7DC20]);
  *a3 = EnvironmentObject.init()();
  a3[1] = v5;
  type metadata accessor for ConfigurationNavigationModel(0);
  _s11WorkoutCore0A23ConfigurationDataSourceCAC7Combine16ObservableObjectAAWlTm_8(&lazy protocol witness table cache variable for type ConfigurationNavigationModel and conformance ConfigurationNavigationModel, type metadata accessor for ConfigurationNavigationModel, &protocol conformance descriptor for ConfigurationNavigationModel);
  a3[2] = EnvironmentObject.init()();
  a3[3] = v6;
  type metadata accessor for RaceWorkoutConfiguration();
  _s11WorkoutCore0A23ConfigurationDataSourceCAC7Combine16ObservableObjectAAWlTm_8(&lazy protocol witness table cache variable for type RaceWorkoutConfiguration and conformance WorkoutConfiguration, MEMORY[0x277D7D950], MEMORY[0x277D7DA48]);
  result = ObservedObject.init(wrappedValue:)();
  a3[4] = result;
  a3[5] = v8;
  a3[6] = a2;
  return result;
}

uint64_t _s11WorkoutCore0A23ConfigurationDataSourceCAC7Combine16ObservableObjectAAWlTm_8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t RaceWorkoutSelectionView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v41 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ListVys5NeverOAA9TupleViewVy07WorkoutB0016RaceFilterPickerH0V_ACyAJ0j5StartI6ButtonVAA21_TraitWritingModifierVyAA0e8ItemTintO3KeyVGGtGGAA012_EnvironmenttpQ0VyAA13AnyShapeStyleVSgGGMd, &_s7SwiftUI15ModifiedContentVyAA4ListVys5NeverOAA9TupleViewVy07WorkoutB0016RaceFilterPickerH0V_ACyAJ0j5StartI6ButtonVAA21_TraitWritingModifierVyAA0e8ItemTintO3KeyVGGtGGAA012_EnvironmenttpQ0VyAA13AnyShapeStyleVSgGGMR);
  MEMORY[0x28223BE20](v2);
  v4 = &v36 - v3;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE18navigationBarTitleyQrqd__SyRd__lFQOyAA15ModifiedContentVyAA4ListVys5NeverOAA05TupleC0Vy07WorkoutB0016RaceFilterPickerC0V_AFyAM0m5StartL6ButtonVAA21_TraitWritingModifierVyAA0i8ItemTintR3KeyVGGtGGAA012_EnvironmentwsT0VyAA13AnyShapeStyleVSgGG_SSQo_Md, &_s7SwiftUI4ViewPAAE18navigationBarTitleyQrqd__SyRd__lFQOyAA15ModifiedContentVyAA4ListVys5NeverOAA05TupleC0Vy07WorkoutB0016RaceFilterPickerC0V_AFyAM0m5StartL6ButtonVAA21_TraitWritingModifierVyAA0i8ItemTintR3KeyVGGtGGAA012_EnvironmentwsT0VyAA13AnyShapeStyleVSgGG_SSQo_MR);
  v37 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v6 = &v36 - v5;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE22toolbarForegroundStyle_3forQrqd___AA16ToolbarPlacementVdtAA05ShapeF0Rd__lFQOyAcAE18navigationBarTitleyQrqd__SyRd__lFQOyAA15ModifiedContentVyAA4ListVys5NeverOAA05TupleC0Vy07WorkoutB0016RaceFilterPickerC0V_AKyAR0t5StartS6ButtonVAA21_TraitWritingModifierVyAA0p8ItemTintY3KeyVGGtGGAA015_EnvironmentKeyZ8ModifierVyAA03AnyjF0VSgGG_SSQo__AA5ColorVQo_Md, &_s7SwiftUI4ViewPAAE22toolbarForegroundStyle_3forQrqd___AA16ToolbarPlacementVdtAA05ShapeF0Rd__lFQOyAcAE18navigationBarTitleyQrqd__SyRd__lFQOyAA15ModifiedContentVyAA4ListVys5NeverOAA05TupleC0Vy07WorkoutB0016RaceFilterPickerC0V_AKyAR0t5StartS6ButtonVAA21_TraitWritingModifierVyAA0p8ItemTintY3KeyVGGtGGAA015_EnvironmentKeyZ8ModifierVyAA03AnyjF0VSgGG_SSQo__AA5ColorVQo_MR);
  v39 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v36 = &v36 - v7;
  v8 = *(v1 + 16);
  v47[0] = *v1;
  v47[1] = v8;
  v48 = *(v1 + 32);
  v49 = *(v1 + 48);
  v42 = v47;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVy07WorkoutB0016RaceFilterPickerD0V_AA15ModifiedContentVyAD0f5StartE6ButtonVAA21_TraitWritingModifierVyAA012ListItemTintM3KeyVGGtGMd, &_s7SwiftUI9TupleViewVy07WorkoutB0016RaceFilterPickerD0V_AA15ModifiedContentVyAD0f5StartE6ButtonVAA21_TraitWritingModifierVyAA012ListItemTintM3KeyVGGtGMR);
  lazy protocol witness table accessor for type TupleView<(RaceFilterPickerView, ModifiedContent<RaceStartWorkoutButton, _TraitWritingModifier<ListItemTintTraitKey>>)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type TupleView<(RaceFilterPickerView, ModifiedContent<RaceStartWorkoutButton, _TraitWritingModifier<ListItemTintTraitKey>>)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVy07WorkoutB0016RaceFilterPickerD0V_AA15ModifiedContentVyAD0f5StartE6ButtonVAA21_TraitWritingModifierVyAA012ListItemTintM3KeyVGGtGMd, &_s7SwiftUI9TupleViewVy07WorkoutB0016RaceFilterPickerD0V_AA15ModifiedContentVyAD0f5StartE6ButtonVAA21_TraitWritingModifierVyAA012ListItemTintM3KeyVGGtGMR, MEMORY[0x277CE14C0]);
  List<>.init(content:)();
  [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.0 green:1.0 blue:0.62745098 alpha:1.0];
  v9 = Color.init(uiColor:)();
  KeyPath = swift_getKeyPath();
  v43._countAndFlagsBits = v9;
  v11 = AnyShapeStyle.init<A>(_:)();
  v12 = &v4[*(v2 + 36)];
  *v12 = KeyPath;
  v12[1] = v11;
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v13 = WorkoutUIBundle.super.isa;
  v51._object = 0xE000000000000000;
  v14.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v14.value._object = 0xEB00000000656C62;
  v15._object = 0x800000020CBA4840;
  v15._countAndFlagsBits = 0xD00000000000001BLL;
  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  v51._countAndFlagsBits = 0;
  v17 = NSLocalizedString(_:tableName:bundle:value:comment:)(v15, v14, v13, v16, v51);

  v43 = v17;
  started = lazy protocol witness table accessor for type ModifiedContent<List<Never, TupleView<(RaceFilterPickerView, ModifiedContent<RaceStartWorkoutButton, _TraitWritingModifier<ListItemTintTraitKey>>)>>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>> and conformance <> ModifiedContent<A, B>();
  v19 = lazy protocol witness table accessor for type String and conformance String();
  View.navigationTitle<A>(_:)();

  outlined destroy of ModifiedContent<List<Never, TupleView<(RaceFilterPickerView, ModifiedContent<RaceStartWorkoutButton, _TraitWritingModifier<ListItemTintTraitKey>>)>>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>(v4, &_s7SwiftUI15ModifiedContentVyAA4ListVys5NeverOAA9TupleViewVy07WorkoutB0016RaceFilterPickerH0V_ACyAJ0j5StartI6ButtonVAA21_TraitWritingModifierVyAA0e8ItemTintO3KeyVGGtGGAA012_EnvironmenttpQ0VyAA13AnyShapeStyleVSgGGMd, &_s7SwiftUI15ModifiedContentVyAA4ListVys5NeverOAA9TupleViewVy07WorkoutB0016RaceFilterPickerH0V_ACyAJ0j5StartI6ButtonVAA21_TraitWritingModifierVyAA0e8ItemTintO3KeyVGGtGGAA012_EnvironmenttpQ0VyAA13AnyShapeStyleVSgGGMR);
  v50[0] = v48;
  v20 = *(&v48 + 1);
  WorkoutConfiguration.displayColor.getter();
  outlined destroy of ModifiedContent<List<Never, TupleView<(RaceFilterPickerView, ModifiedContent<RaceStartWorkoutButton, _TraitWritingModifier<ListItemTintTraitKey>>)>>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>(v50, &_s7SwiftUI14ObservedObjectVy11WorkoutCore04RaceE13ConfigurationCGMd, &_s7SwiftUI14ObservedObjectVy11WorkoutCore04RaceE13ConfigurationCGMR);
  v46 = Color.init(uiColor:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy7SwiftUI16ToolbarPlacementVGMd, &_ss23_ContiguousArrayStorageCy7SwiftUI16ToolbarPlacementVGMR);
  type metadata accessor for ToolbarPlacement();
  v21 = v6;
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_20CB5DA70;
  static ToolbarPlacement.navigationBar.getter();
  v43._countAndFlagsBits = v2;
  v43._object = MEMORY[0x277D837D0];
  v44 = started;
  v45 = v19;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v24 = v36;
  v25 = v38;
  MEMORY[0x20F30A9F0](&v46, v22, v38, MEMORY[0x277CE0F78], OpaqueTypeConformance2, MEMORY[0x277CE0F60]);

  (*(v37 + 8))(v21, v25);
  _s7SwiftUI14ObservedObjectVy11WorkoutCore04RaceE13ConfigurationCGWOcTm_0(v50, &v43, &_s7SwiftUI14ObservedObjectVy11WorkoutCore04RaceE13ConfigurationCGMd, &_s7SwiftUI14ObservedObjectVy11WorkoutCore04RaceE13ConfigurationCGMR);
  _s7SwiftUI14ObservedObjectVy11WorkoutCore04RaceE13ConfigurationCGWOcTm_0(v50, &v43, &_s7SwiftUI14ObservedObjectVy11WorkoutCore04RaceE13ConfigurationCGMd, &_s7SwiftUI14ObservedObjectVy11WorkoutCore04RaceE13ConfigurationCGMR);
  v26 = dispatch thunk of WorkoutConfiguration.externalProvider.getter();
  outlined destroy of ModifiedContent<List<Never, TupleView<(RaceFilterPickerView, ModifiedContent<RaceStartWorkoutButton, _TraitWritingModifier<ListItemTintTraitKey>>)>>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>(v50, &_s7SwiftUI14ObservedObjectVy11WorkoutCore04RaceE13ConfigurationCGMd, &_s7SwiftUI14ObservedObjectVy11WorkoutCore04RaceE13ConfigurationCGMR);
  if (v26)
  {
  }

  LOBYTE(v46) = v26 == 0;
  static Binding.constant(_:)();
  countAndFlagsBits = v43._countAndFlagsBits;
  object = v43._object;
  v29 = v44;
  type metadata accessor for WorkoutConfigurationDataSource();
  _s11WorkoutCore0A23ConfigurationDataSourceCAC7Combine16ObservableObjectAAWlTm_8(&lazy protocol witness table cache variable for type WorkoutConfigurationDataSource and conformance WorkoutConfigurationDataSource, MEMORY[0x277D7DC28], MEMORY[0x277D7DC20]);
  v30 = EnvironmentObject.init()();
  v32 = v31;
  v33 = v41;
  (*(v39 + 32))(v41, v24, v40);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE22toolbarForegroundStyle_3forQrqd___AA16ToolbarPlacementVdtAA05ShapeH0Rd__lFQOyAeAE18navigationBarTitleyQrqd__SyRd__lFQOyACyAA4ListVys5NeverOAA05TupleE0Vy07WorkoutB0016RaceFilterPickerE0V_ACyAR0t5StartS6ButtonVAA21_TraitWritingModifierVyAA0p8ItemTintY3KeyVGGtGGAA015_EnvironmentKeyZ8ModifierVyAA03AnylH0VSgGG_SSQo__AA5ColorVQo_AR0S31ConfigurationDataSourceModifierVGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE22toolbarForegroundStyle_3forQrqd___AA16ToolbarPlacementVdtAA05ShapeH0Rd__lFQOyAeAE18navigationBarTitleyQrqd__SyRd__lFQOyACyAA4ListVys5NeverOAA05TupleE0Vy07WorkoutB0016RaceFilterPickerE0V_ACyAR0t5StartS6ButtonVAA21_TraitWritingModifierVyAA0p8ItemTintY3KeyVGGtGGAA015_EnvironmentKeyZ8ModifierVyAA03AnylH0VSgGG_SSQo__AA5ColorVQo_AR0S31ConfigurationDataSourceModifierVGMR);
  v35 = v33 + *(result + 36);
  *v35 = v30;
  *(v35 + 8) = v32;
  *(v35 + 16) = v20;
  *(v35 + 24) = countAndFlagsBits;
  *(v35 + 32) = object;
  *(v35 + 40) = v29;
  return result;
}

void closure #1 in RaceWorkoutSelectionView.body.getter(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB009RaceStartE6ButtonVAA21_TraitWritingModifierVyAA012ListItemTintI3KeyVGGMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB009RaceStartE6ButtonVAA21_TraitWritingModifierVyAA012ListItemTintI3KeyVGGMR);
  MEMORY[0x28223BE20](v35);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = (&v30 - v7);
  v38 = *(a1 + 32);
  v9 = *(a1 + 48);
  v10 = *(&v38 + 1);
  _s7SwiftUI14ObservedObjectVy11WorkoutCore04RaceE13ConfigurationCGWOcTm_0(&v38, v37, &_s7SwiftUI14ObservedObjectVy11WorkoutCore04RaceE13ConfigurationCGMd, &_s7SwiftUI14ObservedObjectVy11WorkoutCore04RaceE13ConfigurationCGMR);
  type metadata accessor for RaceWorkoutConfiguration();
  _s11WorkoutCore0A23ConfigurationDataSourceCAC7Combine16ObservableObjectAAWlTm_8(&lazy protocol witness table cache variable for type RaceWorkoutConfiguration and conformance WorkoutConfiguration, MEMORY[0x277D7D950], MEMORY[0x277D7DA48]);
  v36 = v9;
  v33 = ObservedObject.init(wrappedValue:)();
  v34 = v11;
  type metadata accessor for ConfigurationNavigationModel(0);
  _s11WorkoutCore0A23ConfigurationDataSourceCAC7Combine16ObservableObjectAAWlTm_8(&lazy protocol witness table cache variable for type ConfigurationNavigationModel and conformance ConfigurationNavigationModel, type metadata accessor for ConfigurationNavigationModel, &protocol conformance descriptor for ConfigurationNavigationModel);
  v12 = EnvironmentObject.init()();
  v31 = v13;
  v32 = v12;
  type metadata accessor for WorkoutConfigurationDataSource();
  _s11WorkoutCore0A23ConfigurationDataSourceCAC7Combine16ObservableObjectAAWlTm_8(&lazy protocol witness table cache variable for type WorkoutConfigurationDataSource and conformance WorkoutConfigurationDataSource, MEMORY[0x277D7DC28], MEMORY[0x277D7DC20]);
  v14 = EnvironmentObject.init()();
  v16 = v15;
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v17 = WorkoutUIBundle.super.isa;
  v39._object = 0xE000000000000000;
  v18.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v18.value._object = 0xEB00000000656C62;
  v19._object = 0x800000020CB93C90;
  v19._countAndFlagsBits = 0xD00000000000001ALL;
  v20._countAndFlagsBits = 0;
  v20._object = 0xE000000000000000;
  v39._countAndFlagsBits = 0;
  v21 = NSLocalizedString(_:tableName:bundle:value:comment:)(v19, v18, v17, v20, v39);

  WorkoutConfiguration.displayColor.getter();
  Color.init(uiColor:)();
  v22 = *(v35 + 36);
  static ListItemTint.fixed(_:)();

  v23 = type metadata accessor for ListItemTint();
  (*(*(v23 - 8) + 56))(v8 + v22, 0, 1, v23);
  v24 = v31;
  v8->_countAndFlagsBits = v32;
  v8->_object = v24;
  v8[1]._countAndFlagsBits = v14;
  v8[1]._object = v16;
  v8[2] = v21;
  v8[3]._countAndFlagsBits = v10;
  _s7SwiftUI14ObservedObjectVy11WorkoutCore04RaceE13ConfigurationCGWOcTm_0(v8, v5, &_s7SwiftUI15ModifiedContentVy07WorkoutB009RaceStartE6ButtonVAA21_TraitWritingModifierVyAA012ListItemTintI3KeyVGGMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB009RaceStartE6ButtonVAA21_TraitWritingModifierVyAA012ListItemTintI3KeyVGGMR);
  v25 = v34;
  *a2 = v33;
  a2[1] = v25;
  v26 = v36;
  a2[2] = v36;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI20RaceFilterPickerViewV_05SwiftB015ModifiedContentVyAA0c5StartA6ButtonVAD21_TraitWritingModifierVyAD012ListItemTintL3KeyVGGtMd, &_s9WorkoutUI20RaceFilterPickerViewV_05SwiftB015ModifiedContentVyAA0c5StartA6ButtonVAD21_TraitWritingModifierVyAD012ListItemTintL3KeyVGGtMR);
  _s7SwiftUI14ObservedObjectVy11WorkoutCore04RaceE13ConfigurationCGWOcTm_0(v5, a2 + *(v27 + 48), &_s7SwiftUI15ModifiedContentVy07WorkoutB009RaceStartE6ButtonVAA21_TraitWritingModifierVyAA012ListItemTintI3KeyVGGMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB009RaceStartE6ButtonVAA21_TraitWritingModifierVyAA012ListItemTintI3KeyVGGMR);
  v28 = v25;
  v29 = v26;
  outlined destroy of ModifiedContent<List<Never, TupleView<(RaceFilterPickerView, ModifiedContent<RaceStartWorkoutButton, _TraitWritingModifier<ListItemTintTraitKey>>)>>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>(v8, &_s7SwiftUI15ModifiedContentVy07WorkoutB009RaceStartE6ButtonVAA21_TraitWritingModifierVyAA012ListItemTintI3KeyVGGMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB009RaceStartE6ButtonVAA21_TraitWritingModifierVyAA012ListItemTintI3KeyVGGMR);
  outlined destroy of ModifiedContent<List<Never, TupleView<(RaceFilterPickerView, ModifiedContent<RaceStartWorkoutButton, _TraitWritingModifier<ListItemTintTraitKey>>)>>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>(v5, &_s7SwiftUI15ModifiedContentVy07WorkoutB009RaceStartE6ButtonVAA21_TraitWritingModifierVyAA012ListItemTintI3KeyVGGMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB009RaceStartE6ButtonVAA21_TraitWritingModifierVyAA012ListItemTintI3KeyVGGMR);
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<List<Never, TupleView<(RaceFilterPickerView, ModifiedContent<RaceStartWorkoutButton, _TraitWritingModifier<ListItemTintTraitKey>>)>>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<List<Never, TupleView<(RaceFilterPickerView, ModifiedContent<RaceStartWorkoutButton, _TraitWritingModifier<ListItemTintTraitKey>>)>>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<List<Never, TupleView<(RaceFilterPickerView, ModifiedContent<RaceStartWorkoutButton, _TraitWritingModifier<ListItemTintTraitKey>>)>>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ListVys5NeverOAA9TupleViewVy07WorkoutB0016RaceFilterPickerH0V_ACyAJ0j5StartI6ButtonVAA21_TraitWritingModifierVyAA0e8ItemTintO3KeyVGGtGGAA012_EnvironmenttpQ0VyAA13AnyShapeStyleVSgGGMd, &_s7SwiftUI15ModifiedContentVyAA4ListVys5NeverOAA9TupleViewVy07WorkoutB0016RaceFilterPickerH0V_ACyAJ0j5StartI6ButtonVAA21_TraitWritingModifierVyAA0e8ItemTintO3KeyVGGtGGAA012_EnvironmenttpQ0VyAA13AnyShapeStyleVSgGGMR);
    lazy protocol witness table accessor for type TupleView<(RaceFilterPickerView, ModifiedContent<RaceStartWorkoutButton, _TraitWritingModifier<ListItemTintTraitKey>>)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type List<Never, TupleView<(RaceFilterPickerView, ModifiedContent<RaceStartWorkoutButton, _TraitWritingModifier<ListItemTintTraitKey>>)>> and conformance List<A, B>, &_s7SwiftUI4ListVys5NeverOAA9TupleViewVy07WorkoutB0016RaceFilterPickerF0V_AA15ModifiedContentVyAH0h5StartG6ButtonVAA21_TraitWritingModifierVyAA0c8ItemTintO3KeyVGGtGGMd, &_s7SwiftUI4ListVys5NeverOAA9TupleViewVy07WorkoutB0016RaceFilterPickerF0V_AA15ModifiedContentVyAH0h5StartG6ButtonVAA21_TraitWritingModifierVyAA0c8ItemTintO3KeyVGGtGGMR, MEMORY[0x277CDE5A0]);
    lazy protocol witness table accessor for type TupleView<(RaceFilterPickerView, ModifiedContent<RaceStartWorkoutButton, _TraitWritingModifier<ListItemTintTraitKey>>)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<AnyShapeStyle?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGMR, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<List<Never, TupleView<(RaceFilterPickerView, ModifiedContent<RaceStartWorkoutButton, _TraitWritingModifier<ListItemTintTraitKey>>)>>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type TupleView<(RaceFilterPickerView, ModifiedContent<RaceStartWorkoutButton, _TraitWritingModifier<ListItemTintTraitKey>>)> and conformance TupleView<A>(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t getEnumTagSinglePayload for RaceWorkoutSelectionView(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t storeEnumTagSinglePayload for RaceWorkoutSelectionView(uint64_t result, int a2, int a3)
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
      *(result + 40) = (a2 - 1);
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

unint64_t lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.toolbarForegroundStyle<A>(_:for:)>>.0, WorkoutConfigurationDataSourceModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.toolbarForegroundStyle<A>(_:for:)>>.0, WorkoutConfigurationDataSourceModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.toolbarForegroundStyle<A>(_:for:)>>.0, WorkoutConfigurationDataSourceModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE22toolbarForegroundStyle_3forQrqd___AA16ToolbarPlacementVdtAA05ShapeH0Rd__lFQOyAeAE18navigationBarTitleyQrqd__SyRd__lFQOyACyAA4ListVys5NeverOAA05TupleE0Vy07WorkoutB0016RaceFilterPickerE0V_ACyAR0t5StartS6ButtonVAA21_TraitWritingModifierVyAA0p8ItemTintY3KeyVGGtGGAA015_EnvironmentKeyZ8ModifierVyAA03AnylH0VSgGG_SSQo__AA5ColorVQo_AR0S31ConfigurationDataSourceModifierVGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE22toolbarForegroundStyle_3forQrqd___AA16ToolbarPlacementVdtAA05ShapeH0Rd__lFQOyAeAE18navigationBarTitleyQrqd__SyRd__lFQOyACyAA4ListVys5NeverOAA05TupleE0Vy07WorkoutB0016RaceFilterPickerE0V_ACyAR0t5StartS6ButtonVAA21_TraitWritingModifierVyAA0p8ItemTintY3KeyVGGtGGAA015_EnvironmentKeyZ8ModifierVyAA03AnylH0VSgGG_SSQo__AA5ColorVQo_AR0S31ConfigurationDataSourceModifierVGMR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ViewPAAE18navigationBarTitleyQrqd__SyRd__lFQOyAA15ModifiedContentVyAA4ListVys5NeverOAA05TupleC0Vy07WorkoutB0016RaceFilterPickerC0V_AFyAM0m5StartL6ButtonVAA21_TraitWritingModifierVyAA0i8ItemTintR3KeyVGGtGGAA012_EnvironmentwsT0VyAA13AnyShapeStyleVSgGG_SSQo_Md, &_s7SwiftUI4ViewPAAE18navigationBarTitleyQrqd__SyRd__lFQOyAA15ModifiedContentVyAA4ListVys5NeverOAA05TupleC0Vy07WorkoutB0016RaceFilterPickerC0V_AFyAM0m5StartL6ButtonVAA21_TraitWritingModifierVyAA0i8ItemTintR3KeyVGGtGGAA012_EnvironmentwsT0VyAA13AnyShapeStyleVSgGG_SSQo_MR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ListVys5NeverOAA9TupleViewVy07WorkoutB0016RaceFilterPickerH0V_ACyAJ0j5StartI6ButtonVAA21_TraitWritingModifierVyAA0e8ItemTintO3KeyVGGtGGAA012_EnvironmenttpQ0VyAA13AnyShapeStyleVSgGGMd, &_s7SwiftUI15ModifiedContentVyAA4ListVys5NeverOAA9TupleViewVy07WorkoutB0016RaceFilterPickerH0V_ACyAJ0j5StartI6ButtonVAA21_TraitWritingModifierVyAA0e8ItemTintO3KeyVGGtGGAA012_EnvironmenttpQ0VyAA13AnyShapeStyleVSgGGMR);
    lazy protocol witness table accessor for type ModifiedContent<List<Never, TupleView<(RaceFilterPickerView, ModifiedContent<RaceStartWorkoutButton, _TraitWritingModifier<ListItemTintTraitKey>>)>>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type String and conformance String();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type WorkoutConfigurationDataSourceModifier and conformance WorkoutConfigurationDataSourceModifier();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.toolbarForegroundStyle<A>(_:for:)>>.0, WorkoutConfigurationDataSourceModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type WorkoutConfigurationDataSourceModifier and conformance WorkoutConfigurationDataSourceModifier()
{
  result = lazy protocol witness table cache variable for type WorkoutConfigurationDataSourceModifier and conformance WorkoutConfigurationDataSourceModifier;
  if (!lazy protocol witness table cache variable for type WorkoutConfigurationDataSourceModifier and conformance WorkoutConfigurationDataSourceModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkoutConfigurationDataSourceModifier and conformance WorkoutConfigurationDataSourceModifier);
  }

  return result;
}

uint64_t _s7SwiftUI14ObservedObjectVy11WorkoutCore04RaceE13ConfigurationCGWOcTm_0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t outlined destroy of ModifiedContent<List<Never, TupleView<(RaceFilterPickerView, ModifiedContent<RaceStartWorkoutButton, _TraitWritingModifier<ListItemTintTraitKey>>)>>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t MetricPublishing.publishPageDidChangeToPage(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for MetricPage();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for MetricPageChangeOccurred();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v16 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9, a1, v6, v12);
  MetricPageChangeOccurred.init(_:topicRoutingBehavior:)();
  (*(a3 + 8))(a2, a3);
  swift_getObjectType();
  _s12SeymourMedia24MetricPageChangeOccurredVAC0A6Client5EventAAWlTm_0(&lazy protocol witness table cache variable for type MetricPageChangeOccurred and conformance MetricPageChangeOccurred, MEMORY[0x277D54270], MEMORY[0x277D54268]);
  dispatch thunk of EventHubProtocol.publish<A>(_:)();
  swift_unknownObjectRelease();
  return (*(v11 + 8))(v14, v10);
}

Swift::Void __swiftcall MetricPublishing.publishBackNavigation()()
{
  v2 = v1;
  v3 = v0;
  v4 = type metadata accessor for MetricBackNavigationOccurred();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v9 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 8))(v3, v2, v6);
  swift_getObjectType();
  MetricBackNavigationOccurred.init(topicRoutingBehavior:)();
  _s12SeymourMedia24MetricPageChangeOccurredVAC0A6Client5EventAAWlTm_0(&lazy protocol witness table cache variable for type MetricBackNavigationOccurred and conformance MetricBackNavigationOccurred, MEMORY[0x277D54388], MEMORY[0x277D54380]);
  dispatch thunk of EventHubProtocol.publish<A>(_:)();
  swift_unknownObjectRelease();
  (*(v5 + 8))(v8, v4);
}

uint64_t MetricPublishing.publishClick(actionType:targetType:targetIdentifier:targetIdentifierType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v79 = a6;
  v89 = a5;
  v95 = a4;
  v98 = a3;
  v91 = a2;
  v87 = a1;
  v9 = type metadata accessor for MetricClickStreamOccurred();
  v10 = *(v9 - 8);
  v102 = v9;
  v103 = v10;
  MEMORY[0x28223BE20](v9);
  v101 = &v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for MetricIdentifier();
  MEMORY[0x28223BE20](v12 - 8);
  v100 = &v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SeymourCore12PortableEnumOyAA16MetricDeviceTypeOGSgMd, &_s11SeymourCore12PortableEnumOyAA16MetricDeviceTypeOGSgMR);
  MEMORY[0x28223BE20](v14 - 8);
  v99 = &v75 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SeymourCore17MetricEnvironmentVSgMd, &_s11SeymourCore17MetricEnvironmentVSgMR);
  MEMORY[0x28223BE20](v16 - 8);
  v97 = &v75 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SeymourCore19MetricGroupActivityVSgMd, &_s11SeymourCore19MetricGroupActivityVSgMR);
  MEMORY[0x28223BE20](v18 - 8);
  v93 = &v75 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SeymourCore19MetricBadgingCountsVSgMd, &_s11SeymourCore19MetricBadgingCountsVSgMR);
  MEMORY[0x28223BE20](v20 - 8);
  v88 = &v75 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SeymourCore10MetricPageVSgMd, &_s11SeymourCore10MetricPageVSgMR);
  MEMORY[0x28223BE20](v22 - 8);
  v86 = &v75 - v23;
  v85 = type metadata accessor for MetricClickStreamType();
  v84 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v105 = &v75 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = type metadata accessor for MetricClickStream();
  v94 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v92 = &v75 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v90 = &v75 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SeymourCore26MetricClickMarketingFieldsVSgMd, &_s11SeymourCore26MetricClickMarketingFieldsVSgMR);
  MEMORY[0x28223BE20](v28 - 8);
  v83 = &v75 - v29;
  v82 = type metadata accessor for MetricClickElement();
  v81 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v80 = &v75 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SeymourCore22MetricClickDestinationOSgMd, &_s11SeymourCore22MetricClickDestinationOSgMR);
  MEMORY[0x28223BE20](v31 - 8);
  v33 = &v75 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v34 - 8);
  v77 = &v75 - v35;
  v36 = type metadata accessor for MetricClickAction();
  v37 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v76 = &v75 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SeymourCore24MetricClickActionContextOSgMd, _s11SeymourCore24MetricClickActionContextOSgMR);
  MEMORY[0x28223BE20](v39 - 8);
  v41 = &v75 - v40;
  v42 = type metadata accessor for MetricClick();
  v106 = *(v42 - 8);
  v107 = v42;
  MEMORY[0x28223BE20](v42);
  v104 = &v75 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for Date();
  v45 = *(v44 - 8);
  v46 = MEMORY[0x28223BE20](v44);
  v48 = &v75 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = a7;
  (*(a7 + 16))(&v108, a6, a7, v46);
  v49 = v109;
  v50 = v110;
  __swift_project_boxed_opaque_existential_1(&v108, v109);
  Date.init()();
  (*(v50 + 40))(v48, v49, v50);
  (*(v45 + 8))(v48, v44);
  __swift_destroy_boxed_opaque_existential_1(&v108);
  v51 = type metadata accessor for MetricClickActionContext();
  (*(*(v51 - 8) + 56))(v41, 1, 1, v51);
  (*(v37 + 16))(v76, v87, v36);
  v52 = type metadata accessor for URL();
  (*(*(v52 - 8) + 56))(v77, 1, 1, v52);
  v53 = type metadata accessor for MetricClickDestination();
  v54 = *(v53 - 8);
  (*(v54 + 16))(v33, v89, v53);
  (*(v54 + 56))(v33, 0, 1, v53);
  (*(v81 + 16))(v80, v91, v82);
  v55 = type metadata accessor for MetricClickMarketingFields();
  (*(*(v55 - 8) + 56))(v83, 1, 1, v55);

  v56 = v104;
  MetricClick.init(actionContext:actionType:actionURL:impressionsData:locations:offerType:targetIdentifier:targetIdentifierType:targetType:marketingFields:marketingMessageIdentifier:marketingPlacement:)();
  v57 = v105;
  (*(v106 + 16))(v105, v56, v107);
  (*(v84 + 104))(v57, *MEMORY[0x277D52120], v85);
  v58 = v78;
  v59 = v86;
  v60 = v79;
  (*(v78 + 24))(v79, v78);
  v61 = type metadata accessor for MetricPage();
  (*(*(v61 - 8) + 56))(v59, 0, 1, v61);
  v62 = type metadata accessor for MetricBadgingCounts();
  (*(*(v62 - 8) + 56))(v88, 1, 1, v62);
  v63 = type metadata accessor for MetricGroupActivity();
  (*(*(v63 - 8) + 56))(v93, 1, 1, v63);
  v64 = v97;
  static MetricEnvironment.current()();
  v65 = type metadata accessor for MetricEnvironment();
  (*(*(v65 - 8) + 56))(v64, 0, 1, v65);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SeymourCore12PortableEnumOyAA16MetricDeviceTypeOGMd, &_s11SeymourCore12PortableEnumOyAA16MetricDeviceTypeOGMR);
  (*(*(v66 - 8) + 56))(v99, 1, 1, v66);
  v67 = type metadata accessor for MetricRemoteIdentifier();
  (*(*(v67 - 8) + 56))(v100, 1, 1, v67);
  v68 = v90;
  MetricClickStream.init(type:page:identifier:badgingCounts:groupActivity:environment:remoteParticipantDeviceType:topicRoutingBehavior:metadata:)();
  v69 = v94;
  v70 = v96;
  (*(v94 + 16))(v92, v68, v96);
  v71 = v101;
  MetricClickStreamOccurred.init(_:)();
  (*(v58 + 8))(v60, v58);
  swift_getObjectType();
  _s12SeymourMedia24MetricPageChangeOccurredVAC0A6Client5EventAAWlTm_0(&lazy protocol witness table cache variable for type MetricClickStreamOccurred and conformance MetricClickStreamOccurred, MEMORY[0x277D542C0], MEMORY[0x277D542B8]);
  v72 = v71;
  v73 = v102;
  dispatch thunk of EventHubProtocol.publish<A>(_:)();
  swift_unknownObjectRelease();
  (*(v103 + 8))(v72, v73);
  (*(v69 + 8))(v68, v70);
  return (*(v106 + 8))(v104, v107);
}

uint64_t _s12SeymourMedia24MetricPageChangeOccurredVAC0A6Client5EventAAWlTm_0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t MetricPublishing.publishImpressions(on:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v58 = a1;
  v6 = type metadata accessor for MetricClickStreamOccurred();
  v7 = *(v6 - 8);
  v63 = v6;
  v64 = v7;
  MEMORY[0x28223BE20](v6);
  v62 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for MetricIdentifier();
  MEMORY[0x28223BE20](v9 - 8);
  v61 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SeymourCore12PortableEnumOyAA16MetricDeviceTypeOGSgMd, &_s11SeymourCore12PortableEnumOyAA16MetricDeviceTypeOGSgMR);
  MEMORY[0x28223BE20](v11 - 8);
  v60 = &v51 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SeymourCore17MetricEnvironmentVSgMd, &_s11SeymourCore17MetricEnvironmentVSgMR);
  MEMORY[0x28223BE20](v13 - 8);
  v59 = &v51 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SeymourCore19MetricGroupActivityVSgMd, &_s11SeymourCore19MetricGroupActivityVSgMR);
  MEMORY[0x28223BE20](v15 - 8);
  v55 = &v51 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SeymourCore19MetricBadgingCountsVSgMd, &_s11SeymourCore19MetricBadgingCountsVSgMR);
  MEMORY[0x28223BE20](v17 - 8);
  v52 = &v51 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SeymourCore10MetricPageVSgMd, &_s11SeymourCore10MetricPageVSgMR);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v51 - v20;
  v22 = type metadata accessor for MetricClickStreamType();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = (&v51 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = type metadata accessor for MetricClickStream();
  v56 = *(v26 - 8);
  v57 = v26;
  MEMORY[0x28223BE20](v26);
  v54 = &v51 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v28);
  v53 = &v51 - v30;
  v31 = *(a3 + 16);
  v51 = v3;
  v31(v65, a2, a3, v29);
  v32 = v66;
  v33 = v67;
  __swift_project_boxed_opaque_existential_1(v65, v66);
  v34 = (*(v33 + 48))(v58, v32, v33);
  if (v34)
  {
    v35 = v34;
  }

  else
  {
    v35 = MEMORY[0x277D84F90];
  }

  __swift_destroy_boxed_opaque_existential_1(v65);
  *v25 = v35;
  (*(v23 + 104))(v25, *MEMORY[0x277D52100], v22);
  v36 = a2;
  v37 = a3;
  (*(a3 + 24))(a2, a3);
  v38 = type metadata accessor for MetricPage();
  (*(*(v38 - 8) + 56))(v21, 0, 1, v38);
  v39 = type metadata accessor for MetricBadgingCounts();
  (*(*(v39 - 8) + 56))(v52, 1, 1, v39);
  v40 = type metadata accessor for MetricGroupActivity();
  (*(*(v40 - 8) + 56))(v55, 1, 1, v40);
  v41 = v59;
  static MetricEnvironment.current()();
  v42 = type metadata accessor for MetricEnvironment();
  (*(*(v42 - 8) + 56))(v41, 0, 1, v42);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SeymourCore12PortableEnumOyAA16MetricDeviceTypeOGMd, &_s11SeymourCore12PortableEnumOyAA16MetricDeviceTypeOGMR);
  (*(*(v43 - 8) + 56))(v60, 1, 1, v43);
  v44 = type metadata accessor for MetricRemoteIdentifier();
  (*(*(v44 - 8) + 56))(v61, 1, 1, v44);
  v45 = v53;
  MetricClickStream.init(type:page:identifier:badgingCounts:groupActivity:environment:remoteParticipantDeviceType:topicRoutingBehavior:metadata:)();
  v47 = v56;
  v46 = v57;
  (*(v56 + 16))(v54, v45, v57);
  v48 = v62;
  MetricClickStreamOccurred.init(_:)();
  (*(v37 + 8))(v36, v37);
  swift_getObjectType();
  _s12SeymourMedia24MetricPageChangeOccurredVAC0A6Client5EventAAWlTm_0(&lazy protocol witness table cache variable for type MetricClickStreamOccurred and conformance MetricClickStreamOccurred, MEMORY[0x277D542C0], MEMORY[0x277D542B8]);
  v49 = v63;
  dispatch thunk of EventHubProtocol.publish<A>(_:)();
  swift_unknownObjectRelease();
  (*(v64 + 8))(v48, v49);
  return (*(v47 + 8))(v45, v46);
}

uint64_t getEnumTagSinglePayload for WorkoutNotificationUnitView(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t storeEnumTagSinglePayload for WorkoutNotificationUnitView(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t WorkoutNotificationUnitView.fiuiDistanceUnit(from:)(unint64_t result, unint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v3 = HIBYTE(a2) & 0xF;
  v4 = result & 0xFFFFFFFFFFFFLL;
  if (!((a2 & 0x2000000000000000) != 0 ? v3 : result & 0xFFFFFFFFFFFFLL))
  {
    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v24[0] = result;
      v24[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v3)
        {
          if (--v3)
          {
            v7 = 0;
            v15 = v24 + 1;
            while (1)
            {
              v16 = *v15 - 48;
              if (v16 > 9)
              {
                break;
              }

              if (!is_mul_ok(v7, 0xAuLL))
              {
                break;
              }

              v10 = __CFADD__(10 * v7, v16);
              v7 = 10 * v7 + v16;
              if (v10)
              {
                break;
              }

              ++v15;
              if (!--v3)
              {
                goto LABEL_66;
              }
            }
          }

          goto LABEL_65;
        }

LABEL_75:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v3)
        {
          v7 = 0;
          v18 = v24;
          while (1)
          {
            v19 = *v18 - 48;
            if (v19 > 9)
            {
              break;
            }

            if (!is_mul_ok(v7, 0xAuLL))
            {
              break;
            }

            v10 = __CFADD__(10 * v7, v19);
            v7 = 10 * v7 + v19;
            if (v10)
            {
              break;
            }

            ++v18;
            if (!--v3)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_65;
      }

      if (v3)
      {
        if (--v3)
        {
          v7 = 0;
          v11 = v24 + 1;
          while (1)
          {
            v12 = *v11 - 48;
            if (v12 > 9)
            {
              break;
            }

            if (!is_mul_ok(v7, 0xAuLL))
            {
              break;
            }

            v10 = 10 * v7 >= v12;
            v7 = 10 * v7 - v12;
            if (!v10)
            {
              break;
            }

            ++v11;
            if (!--v3)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_65;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = _StringObject.sharedUTF8.getter();
      }

      v6 = *result;
      if (v6 == 43)
      {
        if (v4 >= 1)
        {
          v3 = v4 - 1;
          if (v4 != 1)
          {
            v7 = 0;
            if (result)
            {
              v13 = (result + 1);
              while (1)
              {
                v14 = *v13 - 48;
                if (v14 > 9)
                {
                  goto LABEL_65;
                }

                if (!is_mul_ok(v7, 0xAuLL))
                {
                  goto LABEL_65;
                }

                v10 = __CFADD__(10 * v7, v14);
                v7 = 10 * v7 + v14;
                if (v10)
                {
                  goto LABEL_65;
                }

                ++v13;
                if (!--v3)
                {
                  goto LABEL_66;
                }
              }
            }

            goto LABEL_57;
          }

          goto LABEL_65;
        }

        goto LABEL_74;
      }

      if (v6 != 45)
      {
        if (v4)
        {
          v7 = 0;
          if (result)
          {
            while (1)
            {
              v17 = *result - 48;
              if (v17 > 9)
              {
                goto LABEL_65;
              }

              if (!is_mul_ok(v7, 0xAuLL))
              {
                goto LABEL_65;
              }

              v10 = __CFADD__(10 * v7, v17);
              v7 = 10 * v7 + v17;
              if (v10)
              {
                goto LABEL_65;
              }

              ++result;
              if (!--v4)
              {
                goto LABEL_57;
              }
            }
          }

          goto LABEL_57;
        }

LABEL_65:
        v7 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_66;
      }

      if (v4 >= 1)
      {
        v3 = v4 - 1;
        if (v4 != 1)
        {
          v7 = 0;
          if (result)
          {
            v8 = (result + 1);
            while (1)
            {
              v9 = *v8 - 48;
              if (v9 > 9)
              {
                goto LABEL_65;
              }

              if (!is_mul_ok(v7, 0xAuLL))
              {
                goto LABEL_65;
              }

              v10 = 10 * v7 >= v9;
              v7 = 10 * v7 - v9;
              if (!v10)
              {
                goto LABEL_65;
              }

              ++v8;
              if (!--v3)
              {
                goto LABEL_66;
              }
            }
          }

LABEL_57:
          LOBYTE(v3) = 0;
LABEL_66:
          v25 = v3;
          v20 = v3;
          goto LABEL_67;
        }

        goto LABEL_65;
      }

      __break(1u);
    }

    __break(1u);
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  v21 = result;

  specialized _parseInteger<A, B>(ascii:radix:)(v21, a2, 10);
  v7 = v22;
  v20 = v23;

LABEL_67:
  if (v20)
  {
    return 0;
  }

  else
  {
    return v7;
  }
}

uint64_t WorkoutNotificationUnitView.distanceType.getter()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = dispatch thunk of WorkoutNotificationUnit.activityType.getter();
  if (v4)
  {
    v5 = v4;
    v6 = FIUIDistanceTypeForActivityType();

    return v6;
  }

  else
  {
    v8 = dispatch thunk of WorkoutNotificationUnit.key.getter();
    WorkoutNotificationUnitView.fiuiDistanceUnit(from:)(v8, v9);
    v11 = v10;

    if (v11)
    {
      static WOLog.alerts.getter();
      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&dword_20C66F000, v12, v13, "WorkoutNotificationUnitView cannot determine distance unit because unit.key and unit.activityType are nil.", v14, 2u);
        MEMORY[0x20F30E080](v14, -1, -1);
      }

      (*(v1 + 8))(v3, v0);
    }

    return 1;
  }
}

void WorkoutNotificationUnitView.body.getter(uint64_t a1@<X8>)
{
  v2 = v1;
  v322 = a1;
  v3 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  MEMORY[0x28223BE20](v3 - 8);
  v298 = &v294 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for EnvironmentValues();
  v296 = *(v5 - 8);
  v297 = v5;
  MEMORY[0x28223BE20](v5);
  v295 = &v294 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v304 = type metadata accessor for Duration.TimeFormatStyle.Pattern();
  v302 = *(v304 - 8);
  MEMORY[0x28223BE20](v304);
  v300 = &v294 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v303 = type metadata accessor for Duration.TimeFormatStyle();
  v301 = *(v303 - 8);
  MEMORY[0x28223BE20](v303);
  v299 = &v294 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for NumberFormatStyleConfiguration.Precision();
  v310 = *(v9 - 8);
  v311 = v9;
  MEMORY[0x28223BE20](v9);
  v309 = &v294 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for FloatingPointRoundingRule();
  v313 = *(v11 - 8);
  v314 = v11;
  MEMORY[0x28223BE20](v11);
  v312 = &v294 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Locale();
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v294 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation24FloatingPointFormatStyleVySdGMd, &_s10Foundation24FloatingPointFormatStyleVySdGMR);
  v307 = *(v16 - 8);
  v308 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v294 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v294 - v20;
  MEMORY[0x28223BE20](v22);
  v306 = &v294 - v23;
  v24 = type metadata accessor for Color.RGBColorSpace();
  v317 = *(v24 - 8);
  v318 = v24;
  MEMORY[0x28223BE20](v24);
  v319 = &v294 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for WorkoutNotificationUnit.NotificationUnitType();
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  MEMORY[0x28223BE20](v28);
  v30 = &v294 - v29;
  v31 = *v1;
  v32 = v2[1];
  v320 = v2[2];
  v321 = v32;
  v316 = v2[3];
  v315 = *(v2 + 32);
  dispatch thunk of WorkoutNotificationUnit.type.getter();
  v33 = (*(v27 + 88))(v30, v26);
  if (v33 == *MEMORY[0x277D7DAE8])
  {
    v34 = dispatch thunk of WorkoutNotificationUnit.value.getter();
    if ((v35 & 1) != 0 || (v36 = v34, (v37 = dispatch thunk of WorkoutNotificationUnit.activityType.getter()) == 0))
    {
      v331 = 0u;
      v332 = 0u;
      v330 = 0u;
      v328 = 0;
      v329 = 0;
    }

    else
    {
      v38 = v37;
      KeyPath = swift_getKeyPath();
      LOBYTE(v346._countAndFlagsBits) = 0;
      LOBYTE(v350._countAndFlagsBits) = 0;
      v40 = v320;
      if (v320)
      {
        v41 = v321;
        v42 = v321;
        v43 = v40;
      }

      else
      {
        (*(v317 + 104))(v319, *MEMORY[0x277CE0EE0], v318);
        v41 = v321;
        v79 = v321;
        v43 = Color.init(_:red:green:blue:opacity:)();
      }

      v328._countAndFlagsBits = v38;
      v328._object = v36;
      LOBYTE(v329._countAndFlagsBits) = 0;
      v329._object = 16;
      v330 = v41;
      *&v331 = 0;
      *(&v331 + 1) = KeyPath;
      LOBYTE(v332) = 0;
      *(&v332 + 1) = v43;
    }

    v352 = v330;
    v353 = v331;
    v354 = v332;
    v350 = v328;
    v351 = v329;
    v343 = 0;
    v355[0] = 0;
    outlined init with copy of _ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>>?(&v328, &v346, &_s7SwiftUI15ModifiedContentVy07WorkoutB017CadenceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB017CadenceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB017CadenceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB017CadenceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB014PaceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB014PaceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMR);
    lazy protocol witness table accessor for type ModifiedContent<ElapsedTimeView, _ForegroundStyleModifier<Color>>? and conformance <A> A?(&lazy protocol witness table cache variable for type ModifiedContent<CadenceMetricView, _ForegroundStyleModifier<Color>>? and conformance <A> A?, &_s7SwiftUI15ModifiedContentVy07WorkoutB017CadenceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB017CadenceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMR, lazy protocol witness table accessor for type ModifiedContent<CadenceMetricView, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>);
    lazy protocol witness table accessor for type ModifiedContent<ElapsedTimeView, _ForegroundStyleModifier<Color>>? and conformance <A> A?(&lazy protocol witness table cache variable for type ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>? and conformance <A> A?, &_s7SwiftUI15ModifiedContentVy07WorkoutB014PaceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB014PaceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMR, lazy protocol witness table accessor for type ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>);
    _ConditionalContent<>.init(storage:)();
    v352 = *v348;
    v353 = *&v348[16];
    v354 = *&v348[32];
    v355[0] = v348[48];
    v350 = v346;
    v351 = v347;
    v344 = 0;
    v355[25] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy07WorkoutB017CadenceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgAEyAF04PacehI0VAMGSgGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy07WorkoutB017CadenceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgAEyAF04PacehI0VAMGSgGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy07WorkoutB015PowerMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgAEyAF07CadencehI0VAMGSgGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy07WorkoutB015PowerMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgAEyAF07CadencehI0VAMGSgGMR);
    lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<CadenceMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<PowerMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<CadenceMetricView, _ForegroundStyleModifier<Color>>?> and conformance <> _ConditionalContent<A, B>();
    _ConditionalContent<>.init(storage:)();
    v354 = v340[0];
    *v355 = v340[1];
    *&v355[10] = *(&v340[1] + 10);
    v350 = v336;
    v351 = v337;
    v352 = v338;
    v353 = v339;
    v345 = 0;
    v355[34] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyAA08ModifiedD0Vy07WorkoutB017CadenceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgAEyAF04PacehI0VAMGSgGACyAEyAF05PowerhI0VAMGSgAOGGMd, &_s7SwiftUI19_ConditionalContentVyACyAA08ModifiedD0Vy07WorkoutB017CadenceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgAEyAF04PacehI0VAMGSgGACyAEyAF05PowerhI0VAMGSgAOGGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyAA08ModifiedD0Vy07WorkoutB018DistanceMetricTextVAA24_ForegroundStyleModifierVyAA5ColorVGGSgAEyAF06EnergyH4ViewVAMGSgGACyAEyAF0h7HeadingO0VyAA0I0VGAMGSgAEyAF0hI0VAA022_EnvironmentKeyWritingL0VyALSgGGSgGGMd, &_s7SwiftUI19_ConditionalContentVyACyAA08ModifiedD0Vy07WorkoutB018DistanceMetricTextVAA24_ForegroundStyleModifierVyAA5ColorVGGSgAEyAF06EnergyH4ViewVAMGSgGACyAEyAF0h7HeadingO0VyAA0I0VGAMGSgAEyAF0hI0VAA022_EnvironmentKeyWritingL0VyALSgGGSgGGMR);
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<ModifiedContent<CadenceMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<PowerMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<CadenceMetricView, _ForegroundStyleModifier<Color>>?>> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<ModifiedContent<DistanceMetricText, _ForegroundStyleModifier<Color>>?, ModifiedContent<EnergyMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<MetricHeadingView<Text>, _ForegroundStyleModifier<Color>>?, ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<Color?>>?>> and conformance <> _ConditionalContent<A, B>();
    _ConditionalContent<>.init(storage:)();
    v354 = *&v348[32];
    *v355 = *&v348[48];
    *&v355[16] = *&v348[64];
    *&v355[31] = *&v348[79];
    v350 = v346;
    v351 = v347;
    v352 = *v348;
    v353 = *&v348[16];
    v356 = 0;
    v355[35] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyACyAA08ModifiedD0Vy07WorkoutB017CadenceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgAEyAF04PacehI0VAMGSgGACyAEyAF05PowerhI0VAMGSgAOGGACyACyAEyAF08DistanceH4TextVAMGSgAEyAF06EnergyhI0VAMGSgGACyAEyAF0h7HeadingI0VyAA0Q0VGAMGSgAEyAF0hQ0VAA022_EnvironmentKeyWritingL0VyALSgGGSgGGGMd, &_s7SwiftUI19_ConditionalContentVyACyACyAA08ModifiedD0Vy07WorkoutB017CadenceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgAEyAF04PacehI0VAMGSgGACyAEyAF05PowerhI0VAMGSgAOGGACyACyAEyAF08DistanceH4TextVAMGSgAEyAF06EnergyhI0VAMGSgGACyAEyAF0h7HeadingI0VyAA0Q0VGAMGSgAEyAF0hQ0VAA022_EnvironmentKeyWritingL0VyALSgGGSgGGGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyACyAA08ModifiedD0VyAEyAA5ImageVAA24_ForegroundStyleModifierVyAA5ColorVGG07WorkoutB015MetricValueFontVGSgAEyAN04PaceL4ViewVALGSgGACyAvEyAN05PowerlP0VALGSgGGACyACyACyAEyAN0L4TextVALGA4_GSgAVGACyAEyAN011ElapsedTimeP0VALGSgACyACyAEyAEyAEyAEyAA0R0VAN0k12NotificationN0VGAA022_EnvironmentKeyWritingI0Vy12CoreGraphics7CGFloatVGGA18_ySiSgGGALGA27_GA27_GSgGGGMd, &_s7SwiftUI19_ConditionalContentVyACyACyAA08ModifiedD0VyAEyAA5ImageVAA24_ForegroundStyleModifierVyAA5ColorVGG07WorkoutB015MetricValueFontVGSgAEyAN04PaceL4ViewVALGSgGACyAvEyAN05PowerlP0VALGSgGGACyACyACyAEyAN0L4TextVALGA4_GSgAVGACyAEyAN011ElapsedTimeP0VALGSgACyACyAEyAEyAEyAEyAA0R0VAN0k12NotificationN0VGAA022_EnvironmentKeyWritingI0Vy12CoreGraphics7CGFloatVGGA18_ySiSgGGALGA27_GA27_GSgGGGMR);
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<CadenceMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<PowerMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<CadenceMetricView, _ForegroundStyleModifier<Color>>?>>, _ConditionalContent<_ConditionalContent<ModifiedContent<DistanceMetricText, _ForegroundStyleModifier<Color>>?, ModifiedContent<EnergyMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<MetricHeadingView<Text>, _ForegroundStyleModifier<Color>>?, ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<Color?>>?>>> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<Image, _ForegroundStyleModifier<Color>>, MetricValueFont>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<PowerMetricView, _ForegroundStyleModifier<Color>>?>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<MetricText, _ForegroundStyleModifier<Color>>, ModifiedContent<MetricText, _ForegroundStyleModifier<Color>>>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<ElapsedTimeView, _ForegroundStyleModifier<Color>>?, _ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>, Modifie();
    _ConditionalContent<>.init(storage:)();
    *&v348[32] = v340[0];
    *&v348[48] = v340[1];
    *&v348[64] = v340[2];
    *&v348[80] = v341;
    v346 = v336;
    v347 = v337;
    *v348 = v338;
    *&v348[16] = v339;
    v335 = 0;
    v349 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyACyACyAA08ModifiedD0Vy07WorkoutB017CadenceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgAEyAF04PacehI0VAMGSgGACyAEyAF05PowerhI0VAMGSgAOGGACyACyAEyAF08DistanceH4TextVAMGSgAEyAF06EnergyhI0VAMGSgGACyAEyAF0h7HeadingI0VyAA0Q0VGAMGSgAEyAF0hQ0VAA022_EnvironmentKeyWritingL0VyALSgGGSgGGGACyACyACyAEyAEyAA5ImageVAMGAF0H9ValueFontVGSgASGACyAsXGGACyACyACyAEyA16_AMGA36_GSgASGACyAEyAF011ElapsedTimeI0VAMGSgACyACyAEyAEyAEyAEyA11_AF0f12NotificationY0VGA18_y12CoreGraphics7CGFloatVGGA18_ySiSgGGAMGA55_GA55_GSgGGGGMd, &_s7SwiftUI19_ConditionalContentVyACyACyACyAA08ModifiedD0Vy07WorkoutB017CadenceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgAEyAF04PacehI0VAMGSgGACyAEyAF05PowerhI0VAMGSgAOGGACyACyAEyAF08DistanceH4TextVAMGSgAEyAF06EnergyhI0VAMGSgGACyAEyAF0h7HeadingI0VyAA0Q0VGAMGSgAEyAF0hQ0VAA022_EnvironmentKeyWritingL0VyALSgGGSgGGGACyACyACyAEyAEyAA5ImageVAMGAF0H9ValueFontVGSgASGACyAsXGGACyACyACyAEyA16_AMGA36_GSgASGACyAEyAF011ElapsedTimeI0VAMGSgACyACyAEyAEyAEyAEyA11_AF0f12NotificationY0VGA18_y12CoreGraphics7CGFloatVGGA18_ySiSgGGAMGA55_GA55_GSgGGGGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy07WorkoutB015ElapsedTimeViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgAA4TextVGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy07WorkoutB015ElapsedTimeViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgAA4TextVGMR);
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<CadenceMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<PowerMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<CadenceMetricView, _ForegroundStyleModifier<Color>>?>>, _ConditionalContent<_ConditionalContent<ModifiedContent<DistanceMetricText, _ForegroundStyleModifier<Color>>?, ModifiedContent<EnergyMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<MetricHeadingView<Text>, _ForegroundStyleModifier<Color>>?, ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<Color?>>?>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<Image, _ForegroundStyleModifier<Color>>, MetricValueFont>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedC();
    lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ElapsedTimeView, _ForegroundStyleModifier<Color>>?, Text> and conformance <> _ConditionalContent<A, B>();
    _ConditionalContent<>.init(storage:)();
    outlined destroy of _ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>>?(&v328, &_s7SwiftUI15ModifiedContentVy07WorkoutB017CadenceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB017CadenceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMR);
    v361 = v354;
    v362 = *v355;
    v363[0] = *&v355[16];
    v80 = *&v355[29];
    goto LABEL_65;
  }

  v305 = v31;
  if (v33 == *MEMORY[0x277D7DAD0])
  {
    v44 = dispatch thunk of WorkoutNotificationUnit.value.getter();
    if ((v45 & 1) != 0 || (v46 = v44, (v47 = dispatch thunk of WorkoutNotificationUnit.activityType.getter()) == 0))
    {
      v331 = 0u;
      v332 = 0u;
      v330 = 0u;
      v328 = 0;
      v329 = 0;
LABEL_38:
      v352 = v330;
      v353 = v331;
      v354 = v332;
      v350 = v328;
      v351 = v329;
      v343 = 1;
      v355[0] = 1;
      outlined init with copy of _ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>>?(&v328, &v346, &_s7SwiftUI15ModifiedContentVy07WorkoutB014PaceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB014PaceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMR);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB017CadenceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB017CadenceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMR);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB014PaceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB014PaceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMR);
      lazy protocol witness table accessor for type ModifiedContent<ElapsedTimeView, _ForegroundStyleModifier<Color>>? and conformance <A> A?(&lazy protocol witness table cache variable for type ModifiedContent<CadenceMetricView, _ForegroundStyleModifier<Color>>? and conformance <A> A?, &_s7SwiftUI15ModifiedContentVy07WorkoutB017CadenceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB017CadenceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMR, lazy protocol witness table accessor for type ModifiedContent<CadenceMetricView, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>);
      lazy protocol witness table accessor for type ModifiedContent<ElapsedTimeView, _ForegroundStyleModifier<Color>>? and conformance <A> A?(&lazy protocol witness table cache variable for type ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>? and conformance <A> A?, &_s7SwiftUI15ModifiedContentVy07WorkoutB014PaceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB014PaceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMR, lazy protocol witness table accessor for type ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>);
      _ConditionalContent<>.init(storage:)();
      v352 = *v348;
      v353 = *&v348[16];
      v354 = *&v348[32];
      v355[0] = v348[48];
      v350 = v346;
      v351 = v347;
      v344 = 0;
      v355[25] = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy07WorkoutB017CadenceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgAEyAF04PacehI0VAMGSgGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy07WorkoutB017CadenceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgAEyAF04PacehI0VAMGSgGMR);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy07WorkoutB015PowerMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgAEyAF07CadencehI0VAMGSgGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy07WorkoutB015PowerMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgAEyAF07CadencehI0VAMGSgGMR);
      lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<CadenceMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?> and conformance <> _ConditionalContent<A, B>();
      lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<PowerMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<CadenceMetricView, _ForegroundStyleModifier<Color>>?> and conformance <> _ConditionalContent<A, B>();
      _ConditionalContent<>.init(storage:)();
      v354 = v340[0];
      *v355 = v340[1];
      *&v355[10] = *(&v340[1] + 10);
      v350 = v336;
      v351 = v337;
      v352 = v338;
      v353 = v339;
      v345 = 0;
      v355[34] = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyAA08ModifiedD0Vy07WorkoutB017CadenceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgAEyAF04PacehI0VAMGSgGACyAEyAF05PowerhI0VAMGSgAOGGMd, &_s7SwiftUI19_ConditionalContentVyACyAA08ModifiedD0Vy07WorkoutB017CadenceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgAEyAF04PacehI0VAMGSgGACyAEyAF05PowerhI0VAMGSgAOGGMR);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyAA08ModifiedD0Vy07WorkoutB018DistanceMetricTextVAA24_ForegroundStyleModifierVyAA5ColorVGGSgAEyAF06EnergyH4ViewVAMGSgGACyAEyAF0h7HeadingO0VyAA0I0VGAMGSgAEyAF0hI0VAA022_EnvironmentKeyWritingL0VyALSgGGSgGGMd, &_s7SwiftUI19_ConditionalContentVyACyAA08ModifiedD0Vy07WorkoutB018DistanceMetricTextVAA24_ForegroundStyleModifierVyAA5ColorVGGSgAEyAF06EnergyH4ViewVAMGSgGACyAEyAF0h7HeadingO0VyAA0I0VGAMGSgAEyAF0hI0VAA022_EnvironmentKeyWritingL0VyALSgGGSgGGMR);
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<ModifiedContent<CadenceMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<PowerMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<CadenceMetricView, _ForegroundStyleModifier<Color>>?>> and conformance <> _ConditionalContent<A, B>();
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<ModifiedContent<DistanceMetricText, _ForegroundStyleModifier<Color>>?, ModifiedContent<EnergyMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<MetricHeadingView<Text>, _ForegroundStyleModifier<Color>>?, ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<Color?>>?>> and conformance <> _ConditionalContent<A, B>();
      _ConditionalContent<>.init(storage:)();
      v354 = *&v348[32];
      *v355 = *&v348[48];
      *&v355[16] = *&v348[64];
      *&v355[31] = *&v348[79];
      v350 = v346;
      v351 = v347;
      v352 = *v348;
      v353 = *&v348[16];
      v356 = 0;
      v355[35] = 0;
LABEL_39:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyACyAA08ModifiedD0Vy07WorkoutB017CadenceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgAEyAF04PacehI0VAMGSgGACyAEyAF05PowerhI0VAMGSgAOGGACyACyAEyAF08DistanceH4TextVAMGSgAEyAF06EnergyhI0VAMGSgGACyAEyAF0h7HeadingI0VyAA0Q0VGAMGSgAEyAF0hQ0VAA022_EnvironmentKeyWritingL0VyALSgGGSgGGGMd, &_s7SwiftUI19_ConditionalContentVyACyACyAA08ModifiedD0Vy07WorkoutB017CadenceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgAEyAF04PacehI0VAMGSgGACyAEyAF05PowerhI0VAMGSgAOGGACyACyAEyAF08DistanceH4TextVAMGSgAEyAF06EnergyhI0VAMGSgGACyAEyAF0h7HeadingI0VyAA0Q0VGAMGSgAEyAF0hQ0VAA022_EnvironmentKeyWritingL0VyALSgGGSgGGGMR);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyACyAA08ModifiedD0VyAEyAA5ImageVAA24_ForegroundStyleModifierVyAA5ColorVGG07WorkoutB015MetricValueFontVGSgAEyAN04PaceL4ViewVALGSgGACyAvEyAN05PowerlP0VALGSgGGACyACyACyAEyAN0L4TextVALGA4_GSgAVGACyAEyAN011ElapsedTimeP0VALGSgACyACyAEyAEyAEyAEyAA0R0VAN0k12NotificationN0VGAA022_EnvironmentKeyWritingI0Vy12CoreGraphics7CGFloatVGGA18_ySiSgGGALGA27_GA27_GSgGGGMd, &_s7SwiftUI19_ConditionalContentVyACyACyAA08ModifiedD0VyAEyAA5ImageVAA24_ForegroundStyleModifierVyAA5ColorVGG07WorkoutB015MetricValueFontVGSgAEyAN04PaceL4ViewVALGSgGACyAvEyAN05PowerlP0VALGSgGGACyACyACyAEyAN0L4TextVALGA4_GSgAVGACyAEyAN011ElapsedTimeP0VALGSgACyACyAEyAEyAEyAEyAA0R0VAN0k12NotificationN0VGAA022_EnvironmentKeyWritingI0Vy12CoreGraphics7CGFloatVGGA18_ySiSgGGALGA27_GA27_GSgGGGMR);
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<CadenceMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<PowerMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<CadenceMetricView, _ForegroundStyleModifier<Color>>?>>, _ConditionalContent<_ConditionalContent<ModifiedContent<DistanceMetricText, _ForegroundStyleModifier<Color>>?, ModifiedContent<EnergyMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<MetricHeadingView<Text>, _ForegroundStyleModifier<Color>>?, ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<Color?>>?>>> and conformance <> _ConditionalContent<A, B>();
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<Image, _ForegroundStyleModifier<Color>>, MetricValueFont>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<PowerMetricView, _ForegroundStyleModifier<Color>>?>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<MetricText, _ForegroundStyleModifier<Color>>, ModifiedContent<MetricText, _ForegroundStyleModifier<Color>>>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<ElapsedTimeView, _ForegroundStyleModifier<Color>>?, _ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>, Modifie();
      _ConditionalContent<>.init(storage:)();
      *&v348[32] = v340[0];
      *&v348[48] = v340[1];
      *&v348[64] = v340[2];
      *&v348[80] = v341;
      v346 = v336;
      v347 = v337;
      *v348 = v338;
      *&v348[16] = v339;
      v335 = 0;
      v349 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyACyACyAA08ModifiedD0Vy07WorkoutB017CadenceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgAEyAF04PacehI0VAMGSgGACyAEyAF05PowerhI0VAMGSgAOGGACyACyAEyAF08DistanceH4TextVAMGSgAEyAF06EnergyhI0VAMGSgGACyAEyAF0h7HeadingI0VyAA0Q0VGAMGSgAEyAF0hQ0VAA022_EnvironmentKeyWritingL0VyALSgGGSgGGGACyACyACyAEyAEyAA5ImageVAMGAF0H9ValueFontVGSgASGACyAsXGGACyACyACyAEyA16_AMGA36_GSgASGACyAEyAF011ElapsedTimeI0VAMGSgACyACyAEyAEyAEyAEyA11_AF0f12NotificationY0VGA18_y12CoreGraphics7CGFloatVGGA18_ySiSgGGAMGA55_GA55_GSgGGGGMd, &_s7SwiftUI19_ConditionalContentVyACyACyACyAA08ModifiedD0Vy07WorkoutB017CadenceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgAEyAF04PacehI0VAMGSgGACyAEyAF05PowerhI0VAMGSgAOGGACyACyAEyAF08DistanceH4TextVAMGSgAEyAF06EnergyhI0VAMGSgGACyAEyAF0h7HeadingI0VyAA0Q0VGAMGSgAEyAF0hQ0VAA022_EnvironmentKeyWritingL0VyALSgGGSgGGGACyACyACyAEyAEyAA5ImageVAMGAF0H9ValueFontVGSgASGACyAsXGGACyACyACyAEyA16_AMGA36_GSgASGACyAEyAF011ElapsedTimeI0VAMGSgACyACyAEyAEyAEyAEyA11_AF0f12NotificationY0VGA18_y12CoreGraphics7CGFloatVGGA18_ySiSgGGAMGA55_GA55_GSgGGGGMR);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy07WorkoutB015ElapsedTimeViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgAA4TextVGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy07WorkoutB015ElapsedTimeViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgAA4TextVGMR);
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<CadenceMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<PowerMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<CadenceMetricView, _ForegroundStyleModifier<Color>>?>>, _ConditionalContent<_ConditionalContent<ModifiedContent<DistanceMetricText, _ForegroundStyleModifier<Color>>?, ModifiedContent<EnergyMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<MetricHeadingView<Text>, _ForegroundStyleModifier<Color>>?, ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<Color?>>?>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<Image, _ForegroundStyleModifier<Color>>, MetricValueFont>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedC();
      lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ElapsedTimeView, _ForegroundStyleModifier<Color>>?, Text> and conformance <> _ConditionalContent<A, B>();
      _ConditionalContent<>.init(storage:)();
      outlined destroy of _ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>>?(&v328, &_s7SwiftUI15ModifiedContentVy07WorkoutB014PaceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB014PaceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMR);
LABEL_40:
      v361 = v354;
      v362 = *v355;
      v363[0] = *&v355[16];
      *(v363 + 13) = *&v355[29];
      v357 = v350;
      v358 = v351;
      v91 = v352;
      v92 = v353;
LABEL_66:
      v359 = v91;
      v360 = v92;
LABEL_67:
      v126 = v362;
      v127 = v322;
      *(v322 + 64) = v361;
      *(v127 + 80) = v126;
      *(v127 + 96) = v363[0];
      *(v127 + 109) = *(v363 + 13);
      v128 = v358;
      *v127 = v357;
      *(v127 + 16) = v128;
      v129 = v360;
      *(v127 + 32) = v359;
      *(v127 + 48) = v129;
      return;
    }

    v48 = v47;
    v49 = swift_getKeyPath();
    LOBYTE(v350._countAndFlagsBits) = 0;
    v50 = v320;
    if (v320)
    {
      v51 = v321;
      v52 = v321;
      v53 = v50;
LABEL_37:
      v328._countAndFlagsBits = v51;
      v328._object = 8;
      v329._countAndFlagsBits = v48;
      v329._object = v49;
      LOBYTE(v330) = 0;
      *(&v330 + 1) = v46;
      LOBYTE(v331) = 0;
      *(&v331 + 1) = 0;
      *&v332 = 0;
      *(&v332 + 1) = v53;

      goto LABEL_38;
    }

    object = objc_opt_self();
    v51 = v321;
    v88 = v321;
    v89 = v48;
    v90 = [object paceColors];
    if (v90)
    {
      object = v90;
      v30 = [v90 nonGradientTextColor];

      if (v30)
      {
        v53 = Color.init(uiColor:)();

        goto LABEL_37;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_219;
  }

  if (v33 == *MEMORY[0x277D7DAE0])
  {
    v54 = dispatch thunk of WorkoutNotificationUnit.value.getter();
    if ((v55 & 1) != 0 || (v56 = v54, (v57 = dispatch thunk of WorkoutNotificationUnit.activityType.getter()) == 0))
    {
      *&v334 = 0;
      v332 = 0u;
      v333 = 0u;
      v330 = 0u;
      v331 = 0u;
      v328 = 0;
      v329 = 0;
LABEL_52:
      v354 = v332;
      *v355 = v333;
      *&v355[16] = v334;
      v350 = v328;
      v351 = v329;
      v352 = v330;
      v353 = v331;
      v343 = 0;
      v355[24] = 0;
      v120 = &_s7SwiftUI15ModifiedContentVy07WorkoutB015PowerMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMd;
      v121 = &_s7SwiftUI15ModifiedContentVy07WorkoutB015PowerMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMR;
      outlined init with copy of _ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>>?(&v328, &v346, &_s7SwiftUI15ModifiedContentVy07WorkoutB015PowerMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB015PowerMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMR);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB015PowerMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB015PowerMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMR);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB017CadenceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB017CadenceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMR);
      lazy protocol witness table accessor for type ModifiedContent<ElapsedTimeView, _ForegroundStyleModifier<Color>>? and conformance <A> A?(&lazy protocol witness table cache variable for type ModifiedContent<PowerMetricView, _ForegroundStyleModifier<Color>>? and conformance <A> A?, &_s7SwiftUI15ModifiedContentVy07WorkoutB015PowerMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB015PowerMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMR, lazy protocol witness table accessor for type ModifiedContent<PowerMetricView, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>);
      lazy protocol witness table accessor for type ModifiedContent<ElapsedTimeView, _ForegroundStyleModifier<Color>>? and conformance <A> A?(&lazy protocol witness table cache variable for type ModifiedContent<CadenceMetricView, _ForegroundStyleModifier<Color>>? and conformance <A> A?, &_s7SwiftUI15ModifiedContentVy07WorkoutB017CadenceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB017CadenceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMR, lazy protocol witness table accessor for type ModifiedContent<CadenceMetricView, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>);
      _ConditionalContent<>.init(storage:)();
      v354 = *&v348[32];
      *v355 = *&v348[48];
      *&v355[9] = *&v348[57];
      v350 = v346;
      v351 = v347;
      v352 = *v348;
      v353 = *&v348[16];
      v344 = 1;
      v355[25] = 1;
LABEL_61:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy07WorkoutB017CadenceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgAEyAF04PacehI0VAMGSgGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy07WorkoutB017CadenceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgAEyAF04PacehI0VAMGSgGMR);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy07WorkoutB015PowerMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgAEyAF07CadencehI0VAMGSgGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy07WorkoutB015PowerMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgAEyAF07CadencehI0VAMGSgGMR);
      lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<CadenceMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?> and conformance <> _ConditionalContent<A, B>();
      lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<PowerMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<CadenceMetricView, _ForegroundStyleModifier<Color>>?> and conformance <> _ConditionalContent<A, B>();
      _ConditionalContent<>.init(storage:)();
      v354 = v340[0];
      *v355 = v340[1];
      *&v355[10] = *(&v340[1] + 10);
      v350 = v336;
      v351 = v337;
      v352 = v338;
      v353 = v339;
      v345 = 0;
      v355[34] = 0;
LABEL_62:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyAA08ModifiedD0Vy07WorkoutB017CadenceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgAEyAF04PacehI0VAMGSgGACyAEyAF05PowerhI0VAMGSgAOGGMd, &_s7SwiftUI19_ConditionalContentVyACyAA08ModifiedD0Vy07WorkoutB017CadenceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgAEyAF04PacehI0VAMGSgGACyAEyAF05PowerhI0VAMGSgAOGGMR);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyAA08ModifiedD0Vy07WorkoutB018DistanceMetricTextVAA24_ForegroundStyleModifierVyAA5ColorVGGSgAEyAF06EnergyH4ViewVAMGSgGACyAEyAF0h7HeadingO0VyAA0I0VGAMGSgAEyAF0hI0VAA022_EnvironmentKeyWritingL0VyALSgGGSgGGMd, &_s7SwiftUI19_ConditionalContentVyACyAA08ModifiedD0Vy07WorkoutB018DistanceMetricTextVAA24_ForegroundStyleModifierVyAA5ColorVGGSgAEyAF06EnergyH4ViewVAMGSgGACyAEyAF0h7HeadingO0VyAA0I0VGAMGSgAEyAF0hI0VAA022_EnvironmentKeyWritingL0VyALSgGGSgGGMR);
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<ModifiedContent<CadenceMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<PowerMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<CadenceMetricView, _ForegroundStyleModifier<Color>>?>> and conformance <> _ConditionalContent<A, B>();
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<ModifiedContent<DistanceMetricText, _ForegroundStyleModifier<Color>>?, ModifiedContent<EnergyMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<MetricHeadingView<Text>, _ForegroundStyleModifier<Color>>?, ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<Color?>>?>> and conformance <> _ConditionalContent<A, B>();
      _ConditionalContent<>.init(storage:)();
      v354 = *&v348[32];
      *v355 = *&v348[48];
      *&v355[16] = *&v348[64];
      *&v355[31] = *&v348[79];
      v350 = v346;
      v351 = v347;
      v352 = *v348;
      v353 = *&v348[16];
      v356 = 0;
      v355[35] = 0;
LABEL_63:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyACyAA08ModifiedD0Vy07WorkoutB017CadenceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgAEyAF04PacehI0VAMGSgGACyAEyAF05PowerhI0VAMGSgAOGGACyACyAEyAF08DistanceH4TextVAMGSgAEyAF06EnergyhI0VAMGSgGACyAEyAF0h7HeadingI0VyAA0Q0VGAMGSgAEyAF0hQ0VAA022_EnvironmentKeyWritingL0VyALSgGGSgGGGMd, &_s7SwiftUI19_ConditionalContentVyACyACyAA08ModifiedD0Vy07WorkoutB017CadenceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgAEyAF04PacehI0VAMGSgGACyAEyAF05PowerhI0VAMGSgAOGGACyACyAEyAF08DistanceH4TextVAMGSgAEyAF06EnergyhI0VAMGSgGACyAEyAF0h7HeadingI0VyAA0Q0VGAMGSgAEyAF0hQ0VAA022_EnvironmentKeyWritingL0VyALSgGGSgGGGMR);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyACyAA08ModifiedD0VyAEyAA5ImageVAA24_ForegroundStyleModifierVyAA5ColorVGG07WorkoutB015MetricValueFontVGSgAEyAN04PaceL4ViewVALGSgGACyAvEyAN05PowerlP0VALGSgGGACyACyACyAEyAN0L4TextVALGA4_GSgAVGACyAEyAN011ElapsedTimeP0VALGSgACyACyAEyAEyAEyAEyAA0R0VAN0k12NotificationN0VGAA022_EnvironmentKeyWritingI0Vy12CoreGraphics7CGFloatVGGA18_ySiSgGGALGA27_GA27_GSgGGGMd, &_s7SwiftUI19_ConditionalContentVyACyACyAA08ModifiedD0VyAEyAA5ImageVAA24_ForegroundStyleModifierVyAA5ColorVGG07WorkoutB015MetricValueFontVGSgAEyAN04PaceL4ViewVALGSgGACyAvEyAN05PowerlP0VALGSgGGACyACyACyAEyAN0L4TextVALGA4_GSgAVGACyAEyAN011ElapsedTimeP0VALGSgACyACyAEyAEyAEyAEyAA0R0VAN0k12NotificationN0VGAA022_EnvironmentKeyWritingI0Vy12CoreGraphics7CGFloatVGGA18_ySiSgGGALGA27_GA27_GSgGGGMR);
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<CadenceMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<PowerMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<CadenceMetricView, _ForegroundStyleModifier<Color>>?>>, _ConditionalContent<_ConditionalContent<ModifiedContent<DistanceMetricText, _ForegroundStyleModifier<Color>>?, ModifiedContent<EnergyMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<MetricHeadingView<Text>, _ForegroundStyleModifier<Color>>?, ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<Color?>>?>>> and conformance <> _ConditionalContent<A, B>();
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<Image, _ForegroundStyleModifier<Color>>, MetricValueFont>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<PowerMetricView, _ForegroundStyleModifier<Color>>?>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<MetricText, _ForegroundStyleModifier<Color>>, ModifiedContent<MetricText, _ForegroundStyleModifier<Color>>>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<ElapsedTimeView, _ForegroundStyleModifier<Color>>?, _ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>, Modifie();
      _ConditionalContent<>.init(storage:)();
      *&v348[32] = v340[0];
      *&v348[48] = v340[1];
      *&v348[64] = v340[2];
      *&v348[80] = v341;
      v346 = v336;
      v347 = v337;
      *v348 = v338;
      *&v348[16] = v339;
      v335 = 0;
LABEL_64:
      v349 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyACyACyAA08ModifiedD0Vy07WorkoutB017CadenceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgAEyAF04PacehI0VAMGSgGACyAEyAF05PowerhI0VAMGSgAOGGACyACyAEyAF08DistanceH4TextVAMGSgAEyAF06EnergyhI0VAMGSgGACyAEyAF0h7HeadingI0VyAA0Q0VGAMGSgAEyAF0hQ0VAA022_EnvironmentKeyWritingL0VyALSgGGSgGGGACyACyACyAEyAEyAA5ImageVAMGAF0H9ValueFontVGSgASGACyAsXGGACyACyACyAEyA16_AMGA36_GSgASGACyAEyAF011ElapsedTimeI0VAMGSgACyACyAEyAEyAEyAEyA11_AF0f12NotificationY0VGA18_y12CoreGraphics7CGFloatVGGA18_ySiSgGGAMGA55_GA55_GSgGGGGMd, &_s7SwiftUI19_ConditionalContentVyACyACyACyAA08ModifiedD0Vy07WorkoutB017CadenceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgAEyAF04PacehI0VAMGSgGACyAEyAF05PowerhI0VAMGSgAOGGACyACyAEyAF08DistanceH4TextVAMGSgAEyAF06EnergyhI0VAMGSgGACyAEyAF0h7HeadingI0VyAA0Q0VGAMGSgAEyAF0hQ0VAA022_EnvironmentKeyWritingL0VyALSgGGSgGGGACyACyACyAEyAEyAA5ImageVAMGAF0H9ValueFontVGSgASGACyAsXGGACyACyACyAEyA16_AMGA36_GSgASGACyAEyAF011ElapsedTimeI0VAMGSgACyACyAEyAEyAEyAEyA11_AF0f12NotificationY0VGA18_y12CoreGraphics7CGFloatVGGA18_ySiSgGGAMGA55_GA55_GSgGGGGMR);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy07WorkoutB015ElapsedTimeViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgAA4TextVGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy07WorkoutB015ElapsedTimeViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgAA4TextVGMR);
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<CadenceMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<PowerMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<CadenceMetricView, _ForegroundStyleModifier<Color>>?>>, _ConditionalContent<_ConditionalContent<ModifiedContent<DistanceMetricText, _ForegroundStyleModifier<Color>>?, ModifiedContent<EnergyMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<MetricHeadingView<Text>, _ForegroundStyleModifier<Color>>?, ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<Color?>>?>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<Image, _ForegroundStyleModifier<Color>>, MetricValueFont>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedC();
      lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ElapsedTimeView, _ForegroundStyleModifier<Color>>?, Text> and conformance <> _ConditionalContent<A, B>();
      _ConditionalContent<>.init(storage:)();
      outlined destroy of _ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>>?(&v328, v120, v121);
      v361 = v354;
      v362 = *v355;
      v363[0] = *&v355[16];
      v80 = *&v355[29];
LABEL_65:
      *(v363 + 13) = v80;
      v357 = v350;
      v358 = v351;
      v91 = v352;
      v92 = v353;
      goto LABEL_66;
    }

    v58 = v57;
    v59 = swift_getKeyPath();
    LOBYTE(v346._countAndFlagsBits) = 0;
    v15 = swift_getKeyPath();
    LOBYTE(v336._countAndFlagsBits) = 0;
    v60 = swift_getKeyPath();
    v335 = 0;
    LOBYTE(v350._countAndFlagsBits) = 0;
    countAndFlagsBits = v346._countAndFlagsBits;
    v62 = v336._countAndFlagsBits;
    v63 = v320;
    if (v320)
    {
      v64 = v321;
      v65 = v321;
LABEL_51:
      v328._countAndFlagsBits = v58;
      v328._object = v56;
      LOBYTE(v329._countAndFlagsBits) = 0;
      v329._object = 12;
      *&v330 = v64;
      WORD4(v330) = 0;
      *&v331 = v59;
      BYTE8(v331) = countAndFlagsBits;
      *&v332 = v15;
      BYTE8(v332) = v62;
      *&v333 = v60;
      BYTE8(v333) = 0;
      *&v334 = v63;

      goto LABEL_52;
    }

    v116 = objc_opt_self();
    v117 = v321;
    v320 = v58;
    v118 = [v116 powerColors];
    v119 = [v118 nonGradientTextColor];

    if (v119)
    {
      v63 = Color.init(uiColor:)();

      v64 = v321;
      goto LABEL_51;
    }

    __break(1u);
    goto LABEL_221;
  }

  if (v33 == *MEMORY[0x277D7DB30])
  {
    v66 = dispatch thunk of WorkoutNotificationUnit.value.getter();
    v67 = v321;
    if ((v68 & 1) != 0 || (v69 = v66, (v70 = dispatch thunk of WorkoutNotificationUnit.activityType.getter()) == 0))
    {
      v331 = 0u;
      v332 = 0u;
      v330 = 0u;
      v328 = 0;
      v329 = 0;
    }

    else
    {
      v71 = v70;
      v72 = swift_getKeyPath();
      LOBYTE(v346._countAndFlagsBits) = 0;
      LOBYTE(v350._countAndFlagsBits) = 0;
      v73 = v320;
      if (v320)
      {
        v74 = v67;
        v75 = v73;
      }

      else
      {
        (*(v317 + 104))(v319, *MEMORY[0x277CE0EE0], v318);
        v125 = v67;
        v75 = Color.init(_:red:green:blue:opacity:)();
      }

      v328._countAndFlagsBits = v71;
      v328._object = v69;
      LOBYTE(v329._countAndFlagsBits) = 0;
      v329._object = 15;
      v330 = v67;
      *&v331 = 0;
      *(&v331 + 1) = v72;
      LOBYTE(v332) = 0;
      *(&v332 + 1) = v75;
    }

    v352 = v330;
    v353 = v331;
    v354 = v332;
    v350 = v328;
    v351 = v329;
    v343 = 1;
    v355[24] = 1;
    v120 = &_s7SwiftUI15ModifiedContentVy07WorkoutB017CadenceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMd;
    v121 = &_s7SwiftUI15ModifiedContentVy07WorkoutB017CadenceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMR;
    outlined init with copy of _ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>>?(&v328, &v346, &_s7SwiftUI15ModifiedContentVy07WorkoutB017CadenceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB017CadenceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB015PowerMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB015PowerMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB017CadenceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB017CadenceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMR);
    lazy protocol witness table accessor for type ModifiedContent<ElapsedTimeView, _ForegroundStyleModifier<Color>>? and conformance <A> A?(&lazy protocol witness table cache variable for type ModifiedContent<PowerMetricView, _ForegroundStyleModifier<Color>>? and conformance <A> A?, &_s7SwiftUI15ModifiedContentVy07WorkoutB015PowerMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB015PowerMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMR, lazy protocol witness table accessor for type ModifiedContent<PowerMetricView, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>);
    lazy protocol witness table accessor for type ModifiedContent<ElapsedTimeView, _ForegroundStyleModifier<Color>>? and conformance <A> A?(&lazy protocol witness table cache variable for type ModifiedContent<CadenceMetricView, _ForegroundStyleModifier<Color>>? and conformance <A> A?, &_s7SwiftUI15ModifiedContentVy07WorkoutB017CadenceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB017CadenceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMR, lazy protocol witness table accessor for type ModifiedContent<CadenceMetricView, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>);
    _ConditionalContent<>.init(storage:)();
    v354 = *&v348[32];
    *v355 = *&v348[48];
    *&v355[9] = *&v348[57];
    v350 = v346;
    v351 = v347;
    v352 = *v348;
    v353 = *&v348[16];
    v344 = 1;
    v355[25] = 1;
    goto LABEL_61;
  }

  if (v33 == *MEMORY[0x277D7DB40])
  {
    v76 = v305;
    v77 = dispatch thunk of WorkoutNotificationUnit.value.getter();
    if (v78)
    {
      v330 = 0u;
      v331 = 0u;
      v328 = 0;
      v329 = 0;
    }

    else
    {
      v56 = v77;
      v350._countAndFlagsBits = v76;
      v93 = v320;
      v350._object = v321;
      v351._countAndFlagsBits = v320;
      v351._object = v316;
      LOBYTE(v352) = v315;
      v59 = v321;
      v15 = WorkoutNotificationUnitView.distanceType.getter();
      v94 = dispatch thunk of WorkoutNotificationUnit.key.getter();
      v58 = WorkoutNotificationUnitView.fiuiDistanceUnit(from:)(v94, v95);
      v97 = v96;

      if (v93)
      {
        v98 = v93;
      }

      else
      {
        v130 = [objc_opt_self() distanceColors];
        if (!v130)
        {
LABEL_221:
          __break(1u);
          goto LABEL_222;
        }

        v131 = v130;
        v132 = [v130 nonGradientTextColor];

        if (!v132)
        {
LABEL_222:
          __break(1u);
          goto LABEL_223;
        }

        v98 = Color.init(uiColor:)();
      }

      LOBYTE(v350._countAndFlagsBits) = v97 & 1;
      v328._countAndFlagsBits = v56;
      v328._object = v59;
      v329._countAndFlagsBits = v15;
      v329._object = v58;
      LOBYTE(v330) = v97 & 1;
      *(&v330 + 1) = 0;
      *&v331 = 0;
      *(&v331 + 1) = v98;
    }

    v350 = v328;
    v351 = v329;
    v352 = v330;
    v353 = v331;
    v343 = 0;
    LOBYTE(v354) = 0;
    v120 = &_s7SwiftUI15ModifiedContentVy07WorkoutB018DistanceMetricTextVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMd;
    v121 = &_s7SwiftUI15ModifiedContentVy07WorkoutB018DistanceMetricTextVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMR;
    outlined init with copy of _ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>>?(&v328, &v346, &_s7SwiftUI15ModifiedContentVy07WorkoutB018DistanceMetricTextVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB018DistanceMetricTextVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB018DistanceMetricTextVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB018DistanceMetricTextVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB016EnergyMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB016EnergyMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMR);
    lazy protocol witness table accessor for type ModifiedContent<ElapsedTimeView, _ForegroundStyleModifier<Color>>? and conformance <A> A?(&lazy protocol witness table cache variable for type ModifiedContent<DistanceMetricText, _ForegroundStyleModifier<Color>>? and conformance <A> A?, &_s7SwiftUI15ModifiedContentVy07WorkoutB018DistanceMetricTextVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB018DistanceMetricTextVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMR, lazy protocol witness table accessor for type ModifiedContent<DistanceMetricText, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>);
    lazy protocol witness table accessor for type ModifiedContent<ElapsedTimeView, _ForegroundStyleModifier<Color>>? and conformance <A> A?(&lazy protocol witness table cache variable for type ModifiedContent<EnergyMetricView, _ForegroundStyleModifier<Color>>? and conformance <A> A?, &_s7SwiftUI15ModifiedContentVy07WorkoutB016EnergyMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB016EnergyMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMR, lazy protocol witness table accessor for type ModifiedContent<EnergyMetricView, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>);
    _ConditionalContent<>.init(storage:)();
    v352 = *v348;
    v353 = *&v348[16];
    LOBYTE(v354) = v348[32];
    v350 = v346;
    v351 = v347;
    v344 = 0;
    v355[33] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy07WorkoutB018DistanceMetricTextVAA24_ForegroundStyleModifierVyAA5ColorVGGSgAEyAF06EnergyH4ViewVAMGSgGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy07WorkoutB018DistanceMetricTextVAA24_ForegroundStyleModifierVyAA5ColorVGGSgAEyAF06EnergyH4ViewVAMGSgGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy07WorkoutB017MetricHeadingViewVyAA4TextVGAA24_ForegroundStyleModifierVyAA5ColorVGGSgAEyAF0gJ0VAA022_EnvironmentKeyWritingM0VyAOSgGGSgGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy07WorkoutB017MetricHeadingViewVyAA4TextVGAA24_ForegroundStyleModifierVyAA5ColorVGGSgAEyAF0gJ0VAA022_EnvironmentKeyWritingM0VyAOSgGGSgGMR);
    lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<DistanceMetricText, _ForegroundStyleModifier<Color>>?, ModifiedContent<EnergyMetricView, _ForegroundStyleModifier<Color>>?> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<MetricHeadingView<Text>, _ForegroundStyleModifier<Color>>?, ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<Color?>>?> and conformance <> _ConditionalContent<A, B>();
    _ConditionalContent<>.init(storage:)();
    v354 = v340[0];
    *v355 = v340[1];
    *&v355[16] = v340[2];
    *&v355[32] = v341;
    v350 = v336;
    v351 = v337;
    v352 = v338;
    v353 = v339;
    v345 = 1;
    v355[34] = 1;
    goto LABEL_62;
  }

  if (v33 == *MEMORY[0x277D7DB20])
  {
    v81 = dispatch thunk of WorkoutNotificationUnit.value.getter();
    v82 = v321;
    if (v83)
    {
      v59 = 0;
      v84 = 0;
      v82 = 0;
      v85 = 0;
      v86 = 0;
    }

    else
    {
      v59 = v81;
      v85 = swift_getKeyPath();
      v58 = v320;
      if (v320)
      {
        v122 = v82;
        v86 = v58;
      }

      else
      {
        v56 = objc_opt_self();
        v139 = v82;
        v140 = [v56 energyColors];
        if (!v140)
        {
LABEL_223:
          __break(1u);
          goto LABEL_224;
        }

        v56 = v140;
        v15 = [v140 nonGradientTextColor];

        if (!v15)
        {
LABEL_224:
          __break(1u);
          goto LABEL_225;
        }

        v86 = Color.init(uiColor:)();
      }

      v84 = 1;
    }

    v320 = v86;
    v321 = v82;
    v319 = v85;
    v344 = 1;
    v350._countAndFlagsBits = v59;
    v350._object = v84;
    v351._countAndFlagsBits = v84;
    v351._object = v82;
    v352 = v85;
    *&v353 = v86;
    LOBYTE(v354) = 1;
    outlined copy of ModifiedContent<EnergyMetricView, _ForegroundStyleModifier<Color>>?(v59, v84, v84, v82, v85, 0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB018DistanceMetricTextVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB018DistanceMetricTextVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB016EnergyMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB016EnergyMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMR);
    lazy protocol witness table accessor for type ModifiedContent<ElapsedTimeView, _ForegroundStyleModifier<Color>>? and conformance <A> A?(&lazy protocol witness table cache variable for type ModifiedContent<DistanceMetricText, _ForegroundStyleModifier<Color>>? and conformance <A> A?, &_s7SwiftUI15ModifiedContentVy07WorkoutB018DistanceMetricTextVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB018DistanceMetricTextVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMR, lazy protocol witness table accessor for type ModifiedContent<DistanceMetricText, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>);
    lazy protocol witness table accessor for type ModifiedContent<ElapsedTimeView, _ForegroundStyleModifier<Color>>? and conformance <A> A?(&lazy protocol witness table cache variable for type ModifiedContent<EnergyMetricView, _ForegroundStyleModifier<Color>>? and conformance <A> A?, &_s7SwiftUI15ModifiedContentVy07WorkoutB016EnergyMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB016EnergyMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMR, lazy protocol witness table accessor for type ModifiedContent<EnergyMetricView, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>);
    _ConditionalContent<>.init(storage:)();
    v352 = *v348;
    v353 = *&v348[16];
    LOBYTE(v354) = v348[32];
    v350 = v346;
    v351 = v347;
    v345 = 0;
    v355[33] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy07WorkoutB018DistanceMetricTextVAA24_ForegroundStyleModifierVyAA5ColorVGGSgAEyAF06EnergyH4ViewVAMGSgGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy07WorkoutB018DistanceMetricTextVAA24_ForegroundStyleModifierVyAA5ColorVGGSgAEyAF06EnergyH4ViewVAMGSgGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy07WorkoutB017MetricHeadingViewVyAA4TextVGAA24_ForegroundStyleModifierVyAA5ColorVGGSgAEyAF0gJ0VAA022_EnvironmentKeyWritingM0VyAOSgGGSgGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy07WorkoutB017MetricHeadingViewVyAA4TextVGAA24_ForegroundStyleModifierVyAA5ColorVGGSgAEyAF0gJ0VAA022_EnvironmentKeyWritingM0VyAOSgGGSgGMR);
    lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<DistanceMetricText, _ForegroundStyleModifier<Color>>?, ModifiedContent<EnergyMetricView, _ForegroundStyleModifier<Color>>?> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<MetricHeadingView<Text>, _ForegroundStyleModifier<Color>>?, ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<Color?>>?> and conformance <> _ConditionalContent<A, B>();
    _ConditionalContent<>.init(storage:)();
    v354 = v340[0];
    *v355 = v340[1];
    *&v355[16] = v340[2];
    *&v355[32] = v341;
    v350 = v336;
    v351 = v337;
    v352 = v338;
    v353 = v339;
    v356 = 1;
    v355[34] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyAA08ModifiedD0Vy07WorkoutB017CadenceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgAEyAF04PacehI0VAMGSgGACyAEyAF05PowerhI0VAMGSgAOGGMd, &_s7SwiftUI19_ConditionalContentVyACyAA08ModifiedD0Vy07WorkoutB017CadenceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgAEyAF04PacehI0VAMGSgGACyAEyAF05PowerhI0VAMGSgAOGGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyAA08ModifiedD0Vy07WorkoutB018DistanceMetricTextVAA24_ForegroundStyleModifierVyAA5ColorVGGSgAEyAF06EnergyH4ViewVAMGSgGACyAEyAF0h7HeadingO0VyAA0I0VGAMGSgAEyAF0hI0VAA022_EnvironmentKeyWritingL0VyALSgGGSgGGMd, &_s7SwiftUI19_ConditionalContentVyACyAA08ModifiedD0Vy07WorkoutB018DistanceMetricTextVAA24_ForegroundStyleModifierVyAA5ColorVGGSgAEyAF06EnergyH4ViewVAMGSgGACyAEyAF0h7HeadingO0VyAA0I0VGAMGSgAEyAF0hI0VAA022_EnvironmentKeyWritingL0VyALSgGGSgGGMR);
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<ModifiedContent<CadenceMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<PowerMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<CadenceMetricView, _ForegroundStyleModifier<Color>>?>> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<ModifiedContent<DistanceMetricText, _ForegroundStyleModifier<Color>>?, ModifiedContent<EnergyMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<MetricHeadingView<Text>, _ForegroundStyleModifier<Color>>?, ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<Color?>>?>> and conformance <> _ConditionalContent<A, B>();
    _ConditionalContent<>.init(storage:)();
    v354 = *&v348[32];
    *v355 = *&v348[48];
    *&v355[16] = *&v348[64];
    *&v355[31] = *&v348[79];
    v350 = v346;
    v351 = v347;
    v352 = *v348;
    v353 = *&v348[16];
    v335 = 0;
    v355[35] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyACyAA08ModifiedD0Vy07WorkoutB017CadenceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgAEyAF04PacehI0VAMGSgGACyAEyAF05PowerhI0VAMGSgAOGGACyACyAEyAF08DistanceH4TextVAMGSgAEyAF06EnergyhI0VAMGSgGACyAEyAF0h7HeadingI0VyAA0Q0VGAMGSgAEyAF0hQ0VAA022_EnvironmentKeyWritingL0VyALSgGGSgGGGMd, &_s7SwiftUI19_ConditionalContentVyACyACyAA08ModifiedD0Vy07WorkoutB017CadenceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgAEyAF04PacehI0VAMGSgGACyAEyAF05PowerhI0VAMGSgAOGGACyACyAEyAF08DistanceH4TextVAMGSgAEyAF06EnergyhI0VAMGSgGACyAEyAF0h7HeadingI0VyAA0Q0VGAMGSgAEyAF0hQ0VAA022_EnvironmentKeyWritingL0VyALSgGGSgGGGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyACyAA08ModifiedD0VyAEyAA5ImageVAA24_ForegroundStyleModifierVyAA5ColorVGG07WorkoutB015MetricValueFontVGSgAEyAN04PaceL4ViewVALGSgGACyAvEyAN05PowerlP0VALGSgGGACyACyACyAEyAN0L4TextVALGA4_GSgAVGACyAEyAN011ElapsedTimeP0VALGSgACyACyAEyAEyAEyAEyAA0R0VAN0k12NotificationN0VGAA022_EnvironmentKeyWritingI0Vy12CoreGraphics7CGFloatVGGA18_ySiSgGGALGA27_GA27_GSgGGGMd, &_s7SwiftUI19_ConditionalContentVyACyACyAA08ModifiedD0VyAEyAA5ImageVAA24_ForegroundStyleModifierVyAA5ColorVGG07WorkoutB015MetricValueFontVGSgAEyAN04PaceL4ViewVALGSgGACyAvEyAN05PowerlP0VALGSgGGACyACyACyAEyAN0L4TextVALGA4_GSgAVGACyAEyAN011ElapsedTimeP0VALGSgACyACyAEyAEyAEyAEyAA0R0VAN0k12NotificationN0VGAA022_EnvironmentKeyWritingI0Vy12CoreGraphics7CGFloatVGGA18_ySiSgGGALGA27_GA27_GSgGGGMR);
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<CadenceMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<PowerMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<CadenceMetricView, _ForegroundStyleModifier<Color>>?>>, _ConditionalContent<_ConditionalContent<ModifiedContent<DistanceMetricText, _ForegroundStyleModifier<Color>>?, ModifiedContent<EnergyMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<MetricHeadingView<Text>, _ForegroundStyleModifier<Color>>?, ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<Color?>>?>>> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<Image, _ForegroundStyleModifier<Color>>, MetricValueFont>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<PowerMetricView, _ForegroundStyleModifier<Color>>?>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<MetricText, _ForegroundStyleModifier<Color>>, ModifiedContent<MetricText, _ForegroundStyleModifier<Color>>>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<ElapsedTimeView, _ForegroundStyleModifier<Color>>?, _ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>, Modifie();
    _ConditionalContent<>.init(storage:)();
    *&v348[32] = v340[0];
    *&v348[48] = v340[1];
    *&v348[64] = v340[2];
    *&v348[80] = v341;
    v346 = v336;
    v347 = v337;
    *v348 = v338;
    *&v348[16] = v339;
    LOBYTE(v328._countAndFlagsBits) = 0;
    v349 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyACyACyAA08ModifiedD0Vy07WorkoutB017CadenceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgAEyAF04PacehI0VAMGSgGACyAEyAF05PowerhI0VAMGSgAOGGACyACyAEyAF08DistanceH4TextVAMGSgAEyAF06EnergyhI0VAMGSgGACyAEyAF0h7HeadingI0VyAA0Q0VGAMGSgAEyAF0hQ0VAA022_EnvironmentKeyWritingL0VyALSgGGSgGGGACyACyACyAEyAEyAA5ImageVAMGAF0H9ValueFontVGSgASGACyAsXGGACyACyACyAEyA16_AMGA36_GSgASGACyAEyAF011ElapsedTimeI0VAMGSgACyACyAEyAEyAEyAEyA11_AF0f12NotificationY0VGA18_y12CoreGraphics7CGFloatVGGA18_ySiSgGGAMGA55_GA55_GSgGGGGMd, &_s7SwiftUI19_ConditionalContentVyACyACyACyAA08ModifiedD0Vy07WorkoutB017CadenceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgAEyAF04PacehI0VAMGSgGACyAEyAF05PowerhI0VAMGSgAOGGACyACyAEyAF08DistanceH4TextVAMGSgAEyAF06EnergyhI0VAMGSgGACyAEyAF0h7HeadingI0VyAA0Q0VGAMGSgAEyAF0hQ0VAA022_EnvironmentKeyWritingL0VyALSgGGSgGGGACyACyACyAEyAEyAA5ImageVAMGAF0H9ValueFontVGSgASGACyAsXGGACyACyACyAEyA16_AMGA36_GSgASGACyAEyAF011ElapsedTimeI0VAMGSgACyACyAEyAEyAEyAEyA11_AF0f12NotificationY0VGA18_y12CoreGraphics7CGFloatVGGA18_ySiSgGGAMGA55_GA55_GSgGGGGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy07WorkoutB015ElapsedTimeViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgAA4TextVGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy07WorkoutB015ElapsedTimeViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgAA4TextVGMR);
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<CadenceMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<PowerMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<CadenceMetricView, _ForegroundStyleModifier<Color>>?>>, _ConditionalContent<_ConditionalContent<ModifiedContent<DistanceMetricText, _ForegroundStyleModifier<Color>>?, ModifiedContent<EnergyMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<MetricHeadingView<Text>, _ForegroundStyleModifier<Color>>?, ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<Color?>>?>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<Image, _ForegroundStyleModifier<Color>>, MetricValueFont>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedC();
    lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ElapsedTimeView, _ForegroundStyleModifier<Color>>?, Text> and conformance <> _ConditionalContent<A, B>();
    _ConditionalContent<>.init(storage:)();
    outlined consume of ModifiedContent<EnergyMetricView, _ForegroundStyleModifier<Color>>?(v59, v84, v84, v321, v319, 0, v320);
    goto LABEL_40;
  }

  if (v33 == *MEMORY[0x277D7DB38])
  {
    v99 = dispatch thunk of WorkoutNotificationUnit.key.getter();
    v101 = v320;
    if (v100)
    {
      v102 = v99;
      v103 = v100;
      if (one-time initialization token for WorkoutUIBundle != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v104 = WorkoutUIBundle.super.isa;
      v364._object = 0xE000000000000000;
      v105.value._countAndFlagsBits = 0x617A696C61636F4CLL;
      v105.value._object = 0xEB00000000656C62;
      v106._countAndFlagsBits = v102;
      v106._object = v103;
      v107._countAndFlagsBits = 0;
      v107._object = 0xE000000000000000;
      v364._countAndFlagsBits = 0;
      v108 = NSLocalizedString(_:tableName:bundle:value:comment:)(v106, v105, v104, v107, v364);

      v350 = v108;
      lazy protocol witness table accessor for type String and conformance String();
      v109 = StringProtocol.localizedUppercase.getter();
      v111 = v110;

      MetricPlatterConstants.init()(v325);
      *(&v326 + 1) = swift_getKeyPath();
      v327 = 0;
      v350._countAndFlagsBits = v109;
      v350._object = v111;
      v323._countAndFlagsBits = Text.init<A>(_:)();
      v323._object = v112;
      LOBYTE(v324._countAndFlagsBits) = v113 & 1;
      v324._object = v114;
      if (v101)
      {
        v115 = v101;
      }

      else
      {
        v115 = static Color.white.getter();
      }

      v332 = v325[2];
      v333 = v326;
      LOBYTE(v334) = v327;
      v328 = v323;
      v329 = v324;
      v330 = v325[0];
      v331 = v325[1];
      *(&v334 + 1) = v115;
    }

    else
    {
      v333 = 0u;
      v334 = 0u;
      v331 = 0u;
      v332 = 0u;
      v330 = 0u;
      v328 = 0;
      v329 = 0;
    }

    v354 = v332;
    *v355 = v333;
    *&v355[16] = v334;
    v350 = v328;
    v351 = v329;
    v352 = v330;
    v353 = v331;
    v342 = 0;
    v355[32] = 0;
    v120 = &_s7SwiftUI15ModifiedContentVy07WorkoutB017MetricHeadingViewVyAA4TextVGAA24_ForegroundStyleModifierVyAA5ColorVGGSgMd;
    v121 = &_s7SwiftUI15ModifiedContentVy07WorkoutB017MetricHeadingViewVyAA4TextVGAA24_ForegroundStyleModifierVyAA5ColorVGGSgMR;
    outlined init with copy of _ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>>?(&v328, &v346, &_s7SwiftUI15ModifiedContentVy07WorkoutB017MetricHeadingViewVyAA4TextVGAA24_ForegroundStyleModifierVyAA5ColorVGGSgMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB017MetricHeadingViewVyAA4TextVGAA24_ForegroundStyleModifierVyAA5ColorVGGSgMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB017MetricHeadingViewVyAA4TextVGAA24_ForegroundStyleModifierVyAA5ColorVGGSgMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB017MetricHeadingViewVyAA4TextVGAA24_ForegroundStyleModifierVyAA5ColorVGGSgMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB010MetricTextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGSgMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB010MetricTextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGSgMR);
    lazy protocol witness table accessor for type ModifiedContent<ElapsedTimeView, _ForegroundStyleModifier<Color>>? and conformance <A> A?(&lazy protocol witness table cache variable for type ModifiedContent<MetricHeadingView<Text>, _ForegroundStyleModifier<Color>>? and conformance <A> A?, &_s7SwiftUI15ModifiedContentVy07WorkoutB017MetricHeadingViewVyAA4TextVGAA24_ForegroundStyleModifierVyAA5ColorVGGSgMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB017MetricHeadingViewVyAA4TextVGAA24_ForegroundStyleModifierVyAA5ColorVGGSgMR, lazy protocol witness table accessor for type ModifiedContent<MetricHeadingView<Text>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>);
    lazy protocol witness table accessor for type ModifiedContent<ElapsedTimeView, _ForegroundStyleModifier<Color>>? and conformance <A> A?(&lazy protocol witness table cache variable for type ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<Color?>>? and conformance <A> A?, &_s7SwiftUI15ModifiedContentVy07WorkoutB010MetricTextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGSgMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB010MetricTextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGSgMR, lazy protocol witness table accessor for type ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>);
    _ConditionalContent<>.init(storage:)();
    v354 = *&v348[32];
    *v355 = *&v348[48];
    *&v355[16] = *&v348[64];
    v355[32] = v348[80];
    v350 = v346;
    v351 = v347;
    v352 = *v348;
    v353 = *&v348[16];
    v343 = 1;
    v355[33] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy07WorkoutB018DistanceMetricTextVAA24_ForegroundStyleModifierVyAA5ColorVGGSgAEyAF06EnergyH4ViewVAMGSgGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy07WorkoutB018DistanceMetricTextVAA24_ForegroundStyleModifierVyAA5ColorVGGSgAEyAF06EnergyH4ViewVAMGSgGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy07WorkoutB017MetricHeadingViewVyAA4TextVGAA24_ForegroundStyleModifierVyAA5ColorVGGSgAEyAF0gJ0VAA022_EnvironmentKeyWritingM0VyAOSgGGSgGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy07WorkoutB017MetricHeadingViewVyAA4TextVGAA24_ForegroundStyleModifierVyAA5ColorVGGSgAEyAF0gJ0VAA022_EnvironmentKeyWritingM0VyAOSgGGSgGMR);
    lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<DistanceMetricText, _ForegroundStyleModifier<Color>>?, ModifiedContent<EnergyMetricView, _ForegroundStyleModifier<Color>>?> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<MetricHeadingView<Text>, _ForegroundStyleModifier<Color>>?, ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<Color?>>?> and conformance <> _ConditionalContent<A, B>();
    _ConditionalContent<>.init(storage:)();
    v354 = v340[0];
    *v355 = v340[1];
    *&v355[16] = v340[2];
    *&v355[32] = v341;
    v350 = v336;
    v351 = v337;
    v352 = v338;
    v353 = v339;
    v344 = 1;
    v355[34] = 1;
    goto LABEL_100;
  }

  if (v33 == *MEMORY[0x277D7DB50])
  {
    v123 = dispatch thunk of WorkoutNotificationUnit.value.getter();
    if (v124)
    {
      *&v333 = 0;
      v331 = 0u;
      v332 = 0u;
      v330 = 0u;
      v328 = 0;
      v329 = 0;
    }

    else
    {
      v346._countAndFlagsBits = v123;
      static Locale.autoupdatingCurrent.getter();
      lazy protocol witness table accessor for type Double and conformance Double();
      FloatingPointFormatStyle.init(locale:)();
      v142 = v312;
      v141 = v313;
      v143 = v314;
      (*(v313 + 104))(v312, *MEMORY[0x277D84688], v314);
      v144 = v308;
      MEMORY[0x20F3024B0](v142, 0, 1, v308);
      (*(v141 + 8))(v142, v143);
      v145 = *(v307 + 8);
      v145(v18, v144);
      v146 = v309;
      static NumberFormatStyleConfiguration.Precision.fractionLength(_:)();
      v147 = v306;
      MEMORY[0x20F3024C0](v146, v144);
      (*(v310 + 8))(v146, v311);
      v145(v21, v144);
      _s7SwiftUI24_ForegroundStyleModifierVyAA5ColorVGACyxGAA04ViewE0AAWlTm_7(&lazy protocol witness table cache variable for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>, &_s10Foundation24FloatingPointFormatStyleVySdGMd, &_s10Foundation24FloatingPointFormatStyleVySdGMR, MEMORY[0x277CC9168]);
      BinaryFloatingPoint.formatted<A>(_:)();
      v145(v147, v144);
      v148 = v350;
      if (one-time initialization token for WorkoutUIBundle != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v149 = WorkoutUIBundle.super.isa;
      v365._object = 0xE000000000000000;
      v150._countAndFlagsBits = 0x524F48535F4D5042;
      v151.value._countAndFlagsBits = 0x617A696C61636F4CLL;
      v151.value._object = 0xEB00000000656C62;
      v150._object = 0xE900000000000054;
      v152._countAndFlagsBits = 0;
      v152._object = 0xE000000000000000;
      v365._countAndFlagsBits = 0;
      v153 = NSLocalizedString(_:tableName:bundle:value:comment:)(v150, v151, v149, v152, v365);

      v154 = v320;
      if (!v320)
      {
        v155 = [objc_opt_self() heartRateColors];
        if (!v155)
        {
LABEL_232:
          __break(1u);
          goto LABEL_233;
        }

        v156 = v155;
        v157 = [v155 nonGradientTextColor];

        if (!v157)
        {
LABEL_233:
          __break(1u);
          goto LABEL_234;
        }

        v154 = Color.init(uiColor:)();
      }

      v158 = swift_getKeyPath();
      v328 = v148;
      v329 = v153;
      v330 = 0uLL;
      LOWORD(v331) = 0;
      *(&v331 + 1) = 0;
      *&v332 = 0;
      *(&v332 + 1) = v158;
      *&v333 = v154;
    }

    v352 = v330;
    v353 = v331;
    v354 = v332;
    *v355 = v333;
    v350 = v328;
    v351 = v329;
    v342 = 1;
    v355[32] = 1;
    v120 = &_s7SwiftUI15ModifiedContentVy07WorkoutB010MetricTextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGSgMd;
    v121 = &_s7SwiftUI15ModifiedContentVy07WorkoutB010MetricTextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGSgMR;
    outlined init with copy of _ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>>?(&v328, &v346, &_s7SwiftUI15ModifiedContentVy07WorkoutB010MetricTextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGSgMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB010MetricTextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGSgMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB017MetricHeadingViewVyAA4TextVGAA24_ForegroundStyleModifierVyAA5ColorVGGSgMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB017MetricHeadingViewVyAA4TextVGAA24_ForegroundStyleModifierVyAA5ColorVGGSgMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB010MetricTextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGSgMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB010MetricTextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGSgMR);
    lazy protocol witness table accessor for type ModifiedContent<ElapsedTimeView, _ForegroundStyleModifier<Color>>? and conformance <A> A?(&lazy protocol witness table cache variable for type ModifiedContent<MetricHeadingView<Text>, _ForegroundStyleModifier<Color>>? and conformance <A> A?, &_s7SwiftUI15ModifiedContentVy07WorkoutB017MetricHeadingViewVyAA4TextVGAA24_ForegroundStyleModifierVyAA5ColorVGGSgMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB017MetricHeadingViewVyAA4TextVGAA24_ForegroundStyleModifierVyAA5ColorVGGSgMR, lazy protocol witness table accessor for type ModifiedContent<MetricHeadingView<Text>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>);
    lazy protocol witness table accessor for type ModifiedContent<ElapsedTimeView, _ForegroundStyleModifier<Color>>? and conformance <A> A?(&lazy protocol witness table cache variable for type ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<Color?>>? and conformance <A> A?, &_s7SwiftUI15ModifiedContentVy07WorkoutB010MetricTextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGSgMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB010MetricTextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGSgMR, lazy protocol witness table accessor for type ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>);
    _ConditionalContent<>.init(storage:)();
    v354 = *&v348[32];
    *v355 = *&v348[48];
    *&v355[16] = *&v348[64];
    v355[32] = v348[80];
    v350 = v346;
    v351 = v347;
    v352 = *v348;
    v353 = *&v348[16];
    v343 = 1;
    v355[33] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy07WorkoutB018DistanceMetricTextVAA24_ForegroundStyleModifierVyAA5ColorVGGSgAEyAF06EnergyH4ViewVAMGSgGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy07WorkoutB018DistanceMetricTextVAA24_ForegroundStyleModifierVyAA5ColorVGGSgAEyAF06EnergyH4ViewVAMGSgGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy07WorkoutB017MetricHeadingViewVyAA4TextVGAA24_ForegroundStyleModifierVyAA5ColorVGGSgAEyAF0gJ0VAA022_EnvironmentKeyWritingM0VyAOSgGGSgGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy07WorkoutB017MetricHeadingViewVyAA4TextVGAA24_ForegroundStyleModifierVyAA5ColorVGGSgAEyAF0gJ0VAA022_EnvironmentKeyWritingM0VyAOSgGGSgGMR);
    lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<DistanceMetricText, _ForegroundStyleModifier<Color>>?, ModifiedContent<EnergyMetricView, _ForegroundStyleModifier<Color>>?> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<MetricHeadingView<Text>, _ForegroundStyleModifier<Color>>?, ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<Color?>>?> and conformance <> _ConditionalContent<A, B>();
    _ConditionalContent<>.init(storage:)();
    v354 = v340[0];
    *v355 = v340[1];
    *&v355[16] = v340[2];
    *&v355[32] = v341;
    v350 = v336;
    v351 = v337;
    v352 = v338;
    v353 = v339;
    v344 = 1;
    v355[34] = 1;
LABEL_100:
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyAA08ModifiedD0Vy07WorkoutB017CadenceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgAEyAF04PacehI0VAMGSgGACyAEyAF05PowerhI0VAMGSgAOGGMd, &_s7SwiftUI19_ConditionalContentVyACyAA08ModifiedD0Vy07WorkoutB017CadenceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgAEyAF04PacehI0VAMGSgGACyAEyAF05PowerhI0VAMGSgAOGGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyAA08ModifiedD0Vy07WorkoutB018DistanceMetricTextVAA24_ForegroundStyleModifierVyAA5ColorVGGSgAEyAF06EnergyH4ViewVAMGSgGACyAEyAF0h7HeadingO0VyAA0I0VGAMGSgAEyAF0hI0VAA022_EnvironmentKeyWritingL0VyALSgGGSgGGMd, &_s7SwiftUI19_ConditionalContentVyACyAA08ModifiedD0Vy07WorkoutB018DistanceMetricTextVAA24_ForegroundStyleModifierVyAA5ColorVGGSgAEyAF06EnergyH4ViewVAMGSgGACyAEyAF0h7HeadingO0VyAA0I0VGAMGSgAEyAF0hI0VAA022_EnvironmentKeyWritingL0VyALSgGGSgGGMR);
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<ModifiedContent<CadenceMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<PowerMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<CadenceMetricView, _ForegroundStyleModifier<Color>>?>> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<ModifiedContent<DistanceMetricText, _ForegroundStyleModifier<Color>>?, ModifiedContent<EnergyMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<MetricHeadingView<Text>, _ForegroundStyleModifier<Color>>?, ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<Color?>>?>> and conformance <> _ConditionalContent<A, B>();
    _ConditionalContent<>.init(storage:)();
    v354 = *&v348[32];
    *v355 = *&v348[48];
    *&v355[16] = *&v348[64];
    *&v355[31] = *&v348[79];
    v350 = v346;
    v351 = v347;
    v352 = *v348;
    v353 = *&v348[16];
    v345 = 0;
    v355[35] = 0;
LABEL_101:
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyACyAA08ModifiedD0Vy07WorkoutB017CadenceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgAEyAF04PacehI0VAMGSgGACyAEyAF05PowerhI0VAMGSgAOGGACyACyAEyAF08DistanceH4TextVAMGSgAEyAF06EnergyhI0VAMGSgGACyAEyAF0h7HeadingI0VyAA0Q0VGAMGSgAEyAF0hQ0VAA022_EnvironmentKeyWritingL0VyALSgGGSgGGGMd, &_s7SwiftUI19_ConditionalContentVyACyACyAA08ModifiedD0Vy07WorkoutB017CadenceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgAEyAF04PacehI0VAMGSgGACyAEyAF05PowerhI0VAMGSgAOGGACyACyAEyAF08DistanceH4TextVAMGSgAEyAF06EnergyhI0VAMGSgGACyAEyAF0h7HeadingI0VyAA0Q0VGAMGSgAEyAF0hQ0VAA022_EnvironmentKeyWritingL0VyALSgGGSgGGGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyACyAA08ModifiedD0VyAEyAA5ImageVAA24_ForegroundStyleModifierVyAA5ColorVGG07WorkoutB015MetricValueFontVGSgAEyAN04PaceL4ViewVALGSgGACyAvEyAN05PowerlP0VALGSgGGACyACyACyAEyAN0L4TextVALGA4_GSgAVGACyAEyAN011ElapsedTimeP0VALGSgACyACyAEyAEyAEyAEyAA0R0VAN0k12NotificationN0VGAA022_EnvironmentKeyWritingI0Vy12CoreGraphics7CGFloatVGGA18_ySiSgGGALGA27_GA27_GSgGGGMd, &_s7SwiftUI19_ConditionalContentVyACyACyAA08ModifiedD0VyAEyAA5ImageVAA24_ForegroundStyleModifierVyAA5ColorVGG07WorkoutB015MetricValueFontVGSgAEyAN04PaceL4ViewVALGSgGACyAvEyAN05PowerlP0VALGSgGGACyACyACyAEyAN0L4TextVALGA4_GSgAVGACyAEyAN011ElapsedTimeP0VALGSgACyACyAEyAEyAEyAEyAA0R0VAN0k12NotificationN0VGAA022_EnvironmentKeyWritingI0Vy12CoreGraphics7CGFloatVGGA18_ySiSgGGALGA27_GA27_GSgGGGMR);
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<CadenceMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<PowerMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<CadenceMetricView, _ForegroundStyleModifier<Color>>?>>, _ConditionalContent<_ConditionalContent<ModifiedContent<DistanceMetricText, _ForegroundStyleModifier<Color>>?, ModifiedContent<EnergyMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<MetricHeadingView<Text>, _ForegroundStyleModifier<Color>>?, ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<Color?>>?>>> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<Image, _ForegroundStyleModifier<Color>>, MetricValueFont>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<PowerMetricView, _ForegroundStyleModifier<Color>>?>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<MetricText, _ForegroundStyleModifier<Color>>, ModifiedContent<MetricText, _ForegroundStyleModifier<Color>>>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<ElapsedTimeView, _ForegroundStyleModifier<Color>>?, _ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>, Modifie();
    _ConditionalContent<>.init(storage:)();
    *&v348[32] = v340[0];
    *&v348[48] = v340[1];
    *&v348[64] = v340[2];
    *&v348[80] = v341;
    v346 = v336;
    v347 = v337;
    *v348 = v338;
    *&v348[16] = v339;
    v356 = 0;
    goto LABEL_64;
  }

  if (v33 == *MEMORY[0x277D7DB08])
  {
    dispatch thunk of WorkoutNotificationUnit.key.getter();
    v133 = v320;
    if (v134)
    {
      v135 = Image.init(systemName:)();
      v136 = v133;
      if (!v133)
      {
        v136 = static Color.white.getter();
      }

      v137 = swift_getKeyPath();

      v138 = 256;
    }

    else
    {
      v135 = 0;
      v136 = 0;
      v138 = 0;
      v137 = 0;
    }

    v321 = v135;
    v344 = 0;
    v350._countAndFlagsBits = v135;
    v350._object = v136;
    v351._countAndFlagsBits = v138;
    v351._object = v137;
    LOBYTE(v352) = 0;
    v355[0] = 0;
    outlined copy of ModifiedContent<ModifiedContent<Image, _ForegroundStyleModifier<Color>>, MetricValueFont>?(v135, v136, v138, v137, 0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA24_ForegroundStyleModifierVyAA5ColorVGG07WorkoutB015MetricValueFontVGSgMd, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA24_ForegroundStyleModifierVyAA5ColorVGG07WorkoutB015MetricValueFontVGSgMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB014PaceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB014PaceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMR);
    lazy protocol witness table accessor for type ModifiedContent<ElapsedTimeView, _ForegroundStyleModifier<Color>>? and conformance <A> A?(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Image, _ForegroundStyleModifier<Color>>, MetricValueFont>? and conformance <A> A?, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA24_ForegroundStyleModifierVyAA5ColorVGG07WorkoutB015MetricValueFontVGSgMd, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA24_ForegroundStyleModifierVyAA5ColorVGG07WorkoutB015MetricValueFontVGSgMR, lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Image, _ForegroundStyleModifier<Color>>, MetricValueFont> and conformance <> ModifiedContent<A, B>);
    lazy protocol witness table accessor for type ModifiedContent<ElapsedTimeView, _ForegroundStyleModifier<Color>>? and conformance <A> A?(&lazy protocol witness table cache variable for type ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>? and conformance <A> A?, &_s7SwiftUI15ModifiedContentVy07WorkoutB014PaceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB014PaceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMR, lazy protocol witness table accessor for type ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>);
    _ConditionalContent<>.init(storage:)();
    v352 = *v348;
    v353 = *&v348[16];
    v354 = *&v348[32];
    v355[0] = v348[48];
    v350 = v346;
    v351 = v347;
    v345 = 0;
    v355[25] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAA5ImageVAA24_ForegroundStyleModifierVyAA5ColorVGG07WorkoutB015MetricValueFontVGSgAEyAN04PaceL4ViewVALGSgGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAA5ImageVAA24_ForegroundStyleModifierVyAA5ColorVGG07WorkoutB015MetricValueFontVGSgAEyAN04PaceL4ViewVALGSgGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy07WorkoutB014PaceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgAEyAF05PowerhI0VAMGSgGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy07WorkoutB014PaceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgAEyAF05PowerhI0VAMGSgGMR);
    lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ModifiedContent<Image, _ForegroundStyleModifier<Color>>, MetricValueFont>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<PowerMetricView, _ForegroundStyleModifier<Color>>?> and conformance <> _ConditionalContent<A, B>();
    _ConditionalContent<>.init(storage:)();
    v354 = v340[0];
    *v355 = v340[1];
    *&v355[10] = *(&v340[1] + 10);
    v350 = v336;
    v351 = v337;
    v352 = v338;
    v353 = v339;
    v356 = 0;
    v355[26] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyAA08ModifiedD0VyAEyAA5ImageVAA24_ForegroundStyleModifierVyAA5ColorVGG07WorkoutB015MetricValueFontVGSgAEyAN04PaceL4ViewVALGSgGACyAvEyAN05PowerlP0VALGSgGGMd, &_s7SwiftUI19_ConditionalContentVyACyAA08ModifiedD0VyAEyAA5ImageVAA24_ForegroundStyleModifierVyAA5ColorVGG07WorkoutB015MetricValueFontVGSgAEyAN04PaceL4ViewVALGSgGACyAvEyAN05PowerlP0VALGSgGGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyACyAA08ModifiedD0Vy07WorkoutB010MetricTextVAA24_ForegroundStyleModifierVyAA5ColorVGGANGSgAEyAF04PaceG4ViewVAMGSgGACyAEyAF011ElapsedTimeN0VAMGSgACyACyAEyAEyAEyAEyAA0H0VAF0F16NotificationFontVGAA022_EnvironmentKeyWritingK0Vy12CoreGraphics7CGFloatVGGA4_ySiSgGGAMGA13_GA13_GSgGGMd, &_s7SwiftUI19_ConditionalContentVyACyACyAA08ModifiedD0Vy07WorkoutB010MetricTextVAA24_ForegroundStyleModifierVyAA5ColorVGGANGSgAEyAF04PaceG4ViewVAMGSgGACyAEyAF011ElapsedTimeN0VAMGSgACyACyAEyAEyAEyAEyAA0H0VAF0F16NotificationFontVGAA022_EnvironmentKeyWritingK0Vy12CoreGraphics7CGFloatVGGA4_ySiSgGGAMGA13_GA13_GSgGGMR);
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<Image, _ForegroundStyleModifier<Color>>, MetricValueFont>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<PowerMetricView, _ForegroundStyleModifier<Color>>?>> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<MetricText, _ForegroundStyleModifier<Color>>, ModifiedContent<MetricText, _ForegroundStyleModifier<Color>>>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<ElapsedTimeView, _ForegroundStyleModifier<Color>>?, _ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int();
    _ConditionalContent<>.init(storage:)();
    v354 = *&v348[32];
    *v355 = *&v348[48];
    *&v355[11] = *&v348[59];
    v350 = v346;
    v351 = v347;
    v352 = *v348;
    v353 = *&v348[16];
    v335 = 1;
    v355[35] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyACyAA08ModifiedD0Vy07WorkoutB017CadenceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgAEyAF04PacehI0VAMGSgGACyAEyAF05PowerhI0VAMGSgAOGGACyACyAEyAF08DistanceH4TextVAMGSgAEyAF06EnergyhI0VAMGSgGACyAEyAF0h7HeadingI0VyAA0Q0VGAMGSgAEyAF0hQ0VAA022_EnvironmentKeyWritingL0VyALSgGGSgGGGMd, &_s7SwiftUI19_ConditionalContentVyACyACyAA08ModifiedD0Vy07WorkoutB017CadenceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgAEyAF04PacehI0VAMGSgGACyAEyAF05PowerhI0VAMGSgAOGGACyACyAEyAF08DistanceH4TextVAMGSgAEyAF06EnergyhI0VAMGSgGACyAEyAF0h7HeadingI0VyAA0Q0VGAMGSgAEyAF0hQ0VAA022_EnvironmentKeyWritingL0VyALSgGGSgGGGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyACyAA08ModifiedD0VyAEyAA5ImageVAA24_ForegroundStyleModifierVyAA5ColorVGG07WorkoutB015MetricValueFontVGSgAEyAN04PaceL4ViewVALGSgGACyAvEyAN05PowerlP0VALGSgGGACyACyACyAEyAN0L4TextVALGA4_GSgAVGACyAEyAN011ElapsedTimeP0VALGSgACyACyAEyAEyAEyAEyAA0R0VAN0k12NotificationN0VGAA022_EnvironmentKeyWritingI0Vy12CoreGraphics7CGFloatVGGA18_ySiSgGGALGA27_GA27_GSgGGGMd, &_s7SwiftUI19_ConditionalContentVyACyACyAA08ModifiedD0VyAEyAA5ImageVAA24_ForegroundStyleModifierVyAA5ColorVGG07WorkoutB015MetricValueFontVGSgAEyAN04PaceL4ViewVALGSgGACyAvEyAN05PowerlP0VALGSgGGACyACyACyAEyAN0L4TextVALGA4_GSgAVGACyAEyAN011ElapsedTimeP0VALGSgACyACyAEyAEyAEyAEyAA0R0VAN0k12NotificationN0VGAA022_EnvironmentKeyWritingI0Vy12CoreGraphics7CGFloatVGGA18_ySiSgGGALGA27_GA27_GSgGGGMR);
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<CadenceMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<PowerMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<CadenceMetricView, _ForegroundStyleModifier<Color>>?>>, _ConditionalContent<_ConditionalContent<ModifiedContent<DistanceMetricText, _ForegroundStyleModifier<Color>>?, ModifiedContent<EnergyMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<MetricHeadingView<Text>, _ForegroundStyleModifier<Color>>?, ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<Color?>>?>>> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<Image, _ForegroundStyleModifier<Color>>, MetricValueFont>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<PowerMetricView, _ForegroundStyleModifier<Color>>?>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<MetricText, _ForegroundStyleModifier<Color>>, ModifiedContent<MetricText, _ForegroundStyleModifier<Color>>>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<ElapsedTimeView, _ForegroundStyleModifier<Color>>?, _ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>, Modifie();
    _ConditionalContent<>.init(storage:)();
    *&v348[32] = v340[0];
    *&v348[48] = v340[1];
    *&v348[64] = v340[2];
    *&v348[80] = v341;
    v346 = v336;
    v347 = v337;
    *v348 = v338;
    *&v348[16] = v339;
    LOBYTE(v328._countAndFlagsBits) = 0;
    v349 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyACyACyAA08ModifiedD0Vy07WorkoutB017CadenceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgAEyAF04PacehI0VAMGSgGACyAEyAF05PowerhI0VAMGSgAOGGACyACyAEyAF08DistanceH4TextVAMGSgAEyAF06EnergyhI0VAMGSgGACyAEyAF0h7HeadingI0VyAA0Q0VGAMGSgAEyAF0hQ0VAA022_EnvironmentKeyWritingL0VyALSgGGSgGGGACyACyACyAEyAEyAA5ImageVAMGAF0H9ValueFontVGSgASGACyAsXGGACyACyACyAEyA16_AMGA36_GSgASGACyAEyAF011ElapsedTimeI0VAMGSgACyACyAEyAEyAEyAEyA11_AF0f12NotificationY0VGA18_y12CoreGraphics7CGFloatVGGA18_ySiSgGGAMGA55_GA55_GSgGGGGMd, &_s7SwiftUI19_ConditionalContentVyACyACyACyAA08ModifiedD0Vy07WorkoutB017CadenceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgAEyAF04PacehI0VAMGSgGACyAEyAF05PowerhI0VAMGSgAOGGACyACyAEyAF08DistanceH4TextVAMGSgAEyAF06EnergyhI0VAMGSgGACyAEyAF0h7HeadingI0VyAA0Q0VGAMGSgAEyAF0hQ0VAA022_EnvironmentKeyWritingL0VyALSgGGSgGGGACyACyACyAEyAEyAA5ImageVAMGAF0H9ValueFontVGSgASGACyAsXGGACyACyACyAEyA16_AMGA36_GSgASGACyAEyAF011ElapsedTimeI0VAMGSgACyACyAEyAEyAEyAEyA11_AF0f12NotificationY0VGA18_y12CoreGraphics7CGFloatVGGA18_ySiSgGGAMGA55_GA55_GSgGGGGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy07WorkoutB015ElapsedTimeViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgAA4TextVGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy07WorkoutB015ElapsedTimeViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgAA4TextVGMR);
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<CadenceMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<PowerMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<CadenceMetricView, _ForegroundStyleModifier<Color>>?>>, _ConditionalContent<_ConditionalContent<ModifiedContent<DistanceMetricText, _ForegroundStyleModifier<Color>>?, ModifiedContent<EnergyMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<MetricHeadingView<Text>, _ForegroundStyleModifier<Color>>?, ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<Color?>>?>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<Image, _ForegroundStyleModifier<Color>>, MetricValueFont>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedC();
    lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ElapsedTimeView, _ForegroundStyleModifier<Color>>?, Text> and conformance <> _ConditionalContent<A, B>();
    _ConditionalContent<>.init(storage:)();
    outlined consume of ModifiedContent<ModifiedContent<Image, _ForegroundStyleModifier<Color>>, MetricValueFont>?(v321, v136, v138, v137, 0);
    goto LABEL_40;
  }

  v159 = v320;
  if (v33 == *MEMORY[0x277D7DAF8])
  {
    v160 = dispatch thunk of WorkoutNotificationUnit.value.getter();
    if ((v161 & 1) != 0 || (v162 = v160, (v163 = dispatch thunk of WorkoutNotificationUnit.activityType.getter()) == 0))
    {
      v331 = 0u;
      v332 = 0u;
      v330 = 0u;
      v328 = 0;
      v329 = 0;
    }

    else
    {
      v164 = v163;
      v165 = swift_getKeyPath();
      LOBYTE(v350._countAndFlagsBits) = 0;
      if (v159)
      {
        v166 = v321;
        v167 = v321;
        v168 = v159;
      }

      else
      {
        v199 = objc_opt_self();
        v200 = v321;
        v201 = v164;
        v202 = [v199 paceColors];
        if (!v202)
        {
LABEL_237:
          __break(1u);
          goto LABEL_238;
        }

        v203 = v202;
        v204 = [v202 nonGradientTextColor];

        if (!v204)
        {
LABEL_238:
          __break(1u);
          goto LABEL_239;
        }

        v168 = Color.init(uiColor:)();

        v166 = v321;
      }

      v328._countAndFlagsBits = v166;
      v328._object = 4;
      v329._countAndFlagsBits = v164;
      v329._object = v165;
      LOBYTE(v330) = 0;
      *(&v330 + 1) = v162;
      LOBYTE(v331) = 0;
      *(&v331 + 1) = 0;
      *&v332 = 0;
      *(&v332 + 1) = v168;
    }

    v352 = v330;
    v353 = v331;
    v354 = v332;
    v350 = v328;
    v351 = v329;
    v343 = 1;
    v355[0] = 1;
    v120 = &_s7SwiftUI15ModifiedContentVy07WorkoutB014PaceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMd;
    v121 = &_s7SwiftUI15ModifiedContentVy07WorkoutB014PaceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMR;
    outlined init with copy of _ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>>?(&v328, &v346, &_s7SwiftUI15ModifiedContentVy07WorkoutB014PaceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB014PaceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA24_ForegroundStyleModifierVyAA5ColorVGG07WorkoutB015MetricValueFontVGSgMd, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA24_ForegroundStyleModifierVyAA5ColorVGG07WorkoutB015MetricValueFontVGSgMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB014PaceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB014PaceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMR);
    lazy protocol witness table accessor for type ModifiedContent<ElapsedTimeView, _ForegroundStyleModifier<Color>>? and conformance <A> A?(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Image, _ForegroundStyleModifier<Color>>, MetricValueFont>? and conformance <A> A?, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA24_ForegroundStyleModifierVyAA5ColorVGG07WorkoutB015MetricValueFontVGSgMd, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA24_ForegroundStyleModifierVyAA5ColorVGG07WorkoutB015MetricValueFontVGSgMR, lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Image, _ForegroundStyleModifier<Color>>, MetricValueFont> and conformance <> ModifiedContent<A, B>);
    lazy protocol witness table accessor for type ModifiedContent<ElapsedTimeView, _ForegroundStyleModifier<Color>>? and conformance <A> A?(&lazy protocol witness table cache variable for type ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>? and conformance <A> A?, &_s7SwiftUI15ModifiedContentVy07WorkoutB014PaceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB014PaceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMR, lazy protocol witness table accessor for type ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>);
    _ConditionalContent<>.init(storage:)();
    v352 = *v348;
    v353 = *&v348[16];
    v354 = *&v348[32];
    v355[0] = v348[48];
    v350 = v346;
    v351 = v347;
    v344 = 0;
    v355[25] = 0;
LABEL_151:
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAA5ImageVAA24_ForegroundStyleModifierVyAA5ColorVGG07WorkoutB015MetricValueFontVGSgAEyAN04PaceL4ViewVALGSgGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAA5ImageVAA24_ForegroundStyleModifierVyAA5ColorVGG07WorkoutB015MetricValueFontVGSgAEyAN04PaceL4ViewVALGSgGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy07WorkoutB014PaceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgAEyAF05PowerhI0VAMGSgGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy07WorkoutB014PaceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgAEyAF05PowerhI0VAMGSgGMR);
    lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ModifiedContent<Image, _ForegroundStyleModifier<Color>>, MetricValueFont>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<PowerMetricView, _ForegroundStyleModifier<Color>>?> and conformance <> _ConditionalContent<A, B>();
    _ConditionalContent<>.init(storage:)();
    v354 = v340[0];
    *v355 = v340[1];
    *&v355[10] = *(&v340[1] + 10);
    v350 = v336;
    v351 = v337;
    v352 = v338;
    v353 = v339;
    v345 = 0;
    v355[26] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyAA08ModifiedD0VyAEyAA5ImageVAA24_ForegroundStyleModifierVyAA5ColorVGG07WorkoutB015MetricValueFontVGSgAEyAN04PaceL4ViewVALGSgGACyAvEyAN05PowerlP0VALGSgGGMd, &_s7SwiftUI19_ConditionalContentVyACyAA08ModifiedD0VyAEyAA5ImageVAA24_ForegroundStyleModifierVyAA5ColorVGG07WorkoutB015MetricValueFontVGSgAEyAN04PaceL4ViewVALGSgGACyAvEyAN05PowerlP0VALGSgGGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyACyAA08ModifiedD0Vy07WorkoutB010MetricTextVAA24_ForegroundStyleModifierVyAA5ColorVGGANGSgAEyAF04PaceG4ViewVAMGSgGACyAEyAF011ElapsedTimeN0VAMGSgACyACyAEyAEyAEyAEyAA0H0VAF0F16NotificationFontVGAA022_EnvironmentKeyWritingK0Vy12CoreGraphics7CGFloatVGGA4_ySiSgGGAMGA13_GA13_GSgGGMd, &_s7SwiftUI19_ConditionalContentVyACyACyAA08ModifiedD0Vy07WorkoutB010MetricTextVAA24_ForegroundStyleModifierVyAA5ColorVGGANGSgAEyAF04PaceG4ViewVAMGSgGACyAEyAF011ElapsedTimeN0VAMGSgACyACyAEyAEyAEyAEyAA0H0VAF0F16NotificationFontVGAA022_EnvironmentKeyWritingK0Vy12CoreGraphics7CGFloatVGGA4_ySiSgGGAMGA13_GA13_GSgGGMR);
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<Image, _ForegroundStyleModifier<Color>>, MetricValueFont>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<PowerMetricView, _ForegroundStyleModifier<Color>>?>> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<MetricText, _ForegroundStyleModifier<Color>>, ModifiedContent<MetricText, _ForegroundStyleModifier<Color>>>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<ElapsedTimeView, _ForegroundStyleModifier<Color>>?, _ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int();
    _ConditionalContent<>.init(storage:)();
    v354 = *&v348[32];
    *v355 = *&v348[48];
    *&v355[11] = *&v348[59];
    v350 = v346;
    v351 = v347;
    v352 = *v348;
    v353 = *&v348[16];
    v356 = 1;
    v355[35] = 1;
    goto LABEL_63;
  }

  if (v33 == *MEMORY[0x277D7DAF0])
  {
    v169 = dispatch thunk of WorkoutNotificationUnit.value.getter();
    if ((v170 & 1) != 0 || (v171 = v169, (v172 = dispatch thunk of WorkoutNotificationUnit.activityType.getter()) == 0))
    {
      v331 = 0u;
      v332 = 0u;
      v330 = 0u;
      v328 = 0;
      v329 = 0;
    }

    else
    {
      v173 = v172;
      v174 = swift_getKeyPath();
      LOBYTE(v350._countAndFlagsBits) = 0;
      if (v159)
      {
        v175 = v321;
        v176 = v321;
        v177 = v159;
      }

      else
      {
        v225 = objc_opt_self();
        v226 = v321;
        v227 = v173;
        v228 = [v225 paceColors];
        if (!v228)
        {
LABEL_239:
          __break(1u);
          goto LABEL_240;
        }

        v229 = v228;
        v230 = [v228 nonGradientTextColor];

        if (!v230)
        {
LABEL_240:
          __break(1u);
          goto LABEL_241;
        }

        v177 = Color.init(uiColor:)();

        v175 = v321;
      }

      v328._countAndFlagsBits = v175;
      v328._object = 4;
      v329._countAndFlagsBits = v173;
      v329._object = v174;
      LOBYTE(v330) = 0;
      *(&v330 + 1) = v171;
      LOBYTE(v331) = 1;
      *(&v331 + 1) = 0;
      *&v332 = 0;
      *(&v332 + 1) = v177;
    }

    v352 = v330;
    v353 = v331;
    v354 = v332;
    v350 = v328;
    v351 = v329;
    v343 = 0;
    v355[24] = 0;
    v120 = &_s7SwiftUI15ModifiedContentVy07WorkoutB014PaceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMd;
    v121 = &_s7SwiftUI15ModifiedContentVy07WorkoutB014PaceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMR;
    outlined init with copy of _ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>>?(&v328, &v346, &_s7SwiftUI15ModifiedContentVy07WorkoutB014PaceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB014PaceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB014PaceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB014PaceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB015PowerMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB015PowerMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMR);
    lazy protocol witness table accessor for type ModifiedContent<ElapsedTimeView, _ForegroundStyleModifier<Color>>? and conformance <A> A?(&lazy protocol witness table cache variable for type ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>? and conformance <A> A?, &_s7SwiftUI15ModifiedContentVy07WorkoutB014PaceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB014PaceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMR, lazy protocol witness table accessor for type ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>);
    lazy protocol witness table accessor for type ModifiedContent<ElapsedTimeView, _ForegroundStyleModifier<Color>>? and conformance <A> A?(&lazy protocol witness table cache variable for type ModifiedContent<PowerMetricView, _ForegroundStyleModifier<Color>>? and conformance <A> A?, &_s7SwiftUI15ModifiedContentVy07WorkoutB015PowerMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB015PowerMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMR, lazy protocol witness table accessor for type ModifiedContent<PowerMetricView, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>);
    _ConditionalContent<>.init(storage:)();
    v354 = *&v348[32];
    *v355 = *&v348[48];
    *&v355[9] = *&v348[57];
    v350 = v346;
    v351 = v347;
    v352 = *v348;
    v353 = *&v348[16];
    v344 = 1;
    v355[25] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAA5ImageVAA24_ForegroundStyleModifierVyAA5ColorVGG07WorkoutB015MetricValueFontVGSgAEyAN04PaceL4ViewVALGSgGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAA5ImageVAA24_ForegroundStyleModifierVyAA5ColorVGG07WorkoutB015MetricValueFontVGSgAEyAN04PaceL4ViewVALGSgGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy07WorkoutB014PaceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgAEyAF05PowerhI0VAMGSgGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy07WorkoutB014PaceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgAEyAF05PowerhI0VAMGSgGMR);
    lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ModifiedContent<Image, _ForegroundStyleModifier<Color>>, MetricValueFont>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<PowerMetricView, _ForegroundStyleModifier<Color>>?> and conformance <> _ConditionalContent<A, B>();
    _ConditionalContent<>.init(storage:)();
    v354 = v340[0];
    *v355 = v340[1];
    *&v355[10] = *(&v340[1] + 10);
    v350 = v336;
    v351 = v337;
    v352 = v338;
    v353 = v339;
    v345 = 0;
    v355[26] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyAA08ModifiedD0VyAEyAA5ImageVAA24_ForegroundStyleModifierVyAA5ColorVGG07WorkoutB015MetricValueFontVGSgAEyAN04PaceL4ViewVALGSgGACyAvEyAN05PowerlP0VALGSgGGMd, &_s7SwiftUI19_ConditionalContentVyACyAA08ModifiedD0VyAEyAA5ImageVAA24_ForegroundStyleModifierVyAA5ColorVGG07WorkoutB015MetricValueFontVGSgAEyAN04PaceL4ViewVALGSgGACyAvEyAN05PowerlP0VALGSgGGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyACyAA08ModifiedD0Vy07WorkoutB010MetricTextVAA24_ForegroundStyleModifierVyAA5ColorVGGANGSgAEyAF04PaceG4ViewVAMGSgGACyAEyAF011ElapsedTimeN0VAMGSgACyACyAEyAEyAEyAEyAA0H0VAF0F16NotificationFontVGAA022_EnvironmentKeyWritingK0Vy12CoreGraphics7CGFloatVGGA4_ySiSgGGAMGA13_GA13_GSgGGMd, &_s7SwiftUI19_ConditionalContentVyACyACyAA08ModifiedD0Vy07WorkoutB010MetricTextVAA24_ForegroundStyleModifierVyAA5ColorVGGANGSgAEyAF04PaceG4ViewVAMGSgGACyAEyAF011ElapsedTimeN0VAMGSgACyACyAEyAEyAEyAEyAA0H0VAF0F16NotificationFontVGAA022_EnvironmentKeyWritingK0Vy12CoreGraphics7CGFloatVGGA4_ySiSgGGAMGA13_GA13_GSgGGMR);
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<Image, _ForegroundStyleModifier<Color>>, MetricValueFont>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<PowerMetricView, _ForegroundStyleModifier<Color>>?>> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<MetricText, _ForegroundStyleModifier<Color>>, ModifiedContent<MetricText, _ForegroundStyleModifier<Color>>>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<ElapsedTimeView, _ForegroundStyleModifier<Color>>?, _ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int();
    _ConditionalContent<>.init(storage:)();
    v354 = *&v348[32];
    *v355 = *&v348[48];
    *&v355[11] = *&v348[59];
    v350 = v346;
    v351 = v347;
    v352 = *v348;
    v353 = *&v348[16];
    v356 = 1;
    v355[35] = 1;
    goto LABEL_63;
  }

  if (v33 == *MEMORY[0x277D7DB10])
  {
    v178 = dispatch thunk of WorkoutNotificationUnit.value.getter();
    if ((v179 & 1) != 0 || (v180 = v178, (v181 = dispatch thunk of WorkoutNotificationUnit.activityType.getter()) == 0))
    {
      *&v334 = 0;
      v332 = 0u;
      v333 = 0u;
      v330 = 0u;
      v331 = 0u;
      v328 = 0;
      v329 = 0;
    }

    else
    {
      v182 = v181;
      v183 = swift_getKeyPath();
      LOBYTE(v346._countAndFlagsBits) = 0;
      v184 = swift_getKeyPath();
      LOBYTE(v336._countAndFlagsBits) = 0;
      v185 = swift_getKeyPath();
      v335 = 0;
      LOBYTE(v350._countAndFlagsBits) = 0;
      v186 = v346._countAndFlagsBits;
      v187 = v336._countAndFlagsBits;
      if (v159)
      {
        v188 = v321;
      }

      else
      {
        v234 = objc_opt_self();
        v235 = v321;
        v320 = v182;
        v236 = [v234 powerColors];
        v237 = [v236 nonGradientTextColor];

        if (!v237)
        {
LABEL_241:
          __break(1u);
          goto LABEL_242;
        }

        v159 = Color.init(uiColor:)();
      }

      v328._countAndFlagsBits = v182;
      v328._object = v180;
      LOBYTE(v329._countAndFlagsBits) = 0;
      v329._object = 11;
      *&v330 = v321;
      WORD4(v330) = 0;
      *&v331 = v183;
      BYTE8(v331) = v186;
      *&v332 = v184;
      BYTE8(v332) = v187;
      *&v333 = v185;
      BYTE8(v333) = 0;
      *&v334 = v159;
    }

    v354 = v332;
    *v355 = v333;
    *&v355[16] = v334;
    v350 = v328;
    v351 = v329;
    v352 = v330;
    v353 = v331;
    v343 = 1;
    v355[24] = 1;
    v120 = &_s7SwiftUI15ModifiedContentVy07WorkoutB015PowerMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMd;
    v121 = &_s7SwiftUI15ModifiedContentVy07WorkoutB015PowerMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMR;
    outlined init with copy of _ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>>?(&v328, &v346, &_s7SwiftUI15ModifiedContentVy07WorkoutB015PowerMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB015PowerMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB014PaceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB014PaceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB015PowerMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB015PowerMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMR);
    lazy protocol witness table accessor for type ModifiedContent<ElapsedTimeView, _ForegroundStyleModifier<Color>>? and conformance <A> A?(&lazy protocol witness table cache variable for type ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>? and conformance <A> A?, &_s7SwiftUI15ModifiedContentVy07WorkoutB014PaceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB014PaceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMR, lazy protocol witness table accessor for type ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>);
    lazy protocol witness table accessor for type ModifiedContent<ElapsedTimeView, _ForegroundStyleModifier<Color>>? and conformance <A> A?(&lazy protocol witness table cache variable for type ModifiedContent<PowerMetricView, _ForegroundStyleModifier<Color>>? and conformance <A> A?, &_s7SwiftUI15ModifiedContentVy07WorkoutB015PowerMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB015PowerMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMR, lazy protocol witness table accessor for type ModifiedContent<PowerMetricView, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>);
    _ConditionalContent<>.init(storage:)();
    v354 = *&v348[32];
    *v355 = *&v348[48];
    *&v355[9] = *&v348[57];
    v350 = v346;
    v351 = v347;
    v352 = *v348;
    v353 = *&v348[16];
    v344 = 1;
    v355[25] = 1;
    goto LABEL_151;
  }

  if (v33 == *MEMORY[0x277D7DB48])
  {
    *&v189 = COERCE_DOUBLE(dispatch thunk of WorkoutNotificationUnit.value.getter());
    if (v190)
    {
      v331 = 0u;
      v332 = 0u;
      v330 = 0u;
      v328 = 0;
      v329 = 0;
      LOBYTE(v333) = -1;
LABEL_167:
      v352 = v330;
      v353 = v331;
      v354 = v332;
      v355[0] = v333;
      v350 = v328;
      v351 = v329;
      v342 = 0;
      v355[1] = 0;
      v120 = &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy07WorkoutB010MetricTextVAA24_ForegroundStyleModifierVyAA5ColorVGGANGSgMd;
      v121 = &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy07WorkoutB010MetricTextVAA24_ForegroundStyleModifierVyAA5ColorVGGANGSgMR;
      outlined init with copy of _ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>>?(&v328, &v346, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy07WorkoutB010MetricTextVAA24_ForegroundStyleModifierVyAA5ColorVGGANGSgMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy07WorkoutB010MetricTextVAA24_ForegroundStyleModifierVyAA5ColorVGGANGSgMR);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy07WorkoutB010MetricTextVAA24_ForegroundStyleModifierVyAA5ColorVGGANGSgMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy07WorkoutB010MetricTextVAA24_ForegroundStyleModifierVyAA5ColorVGGANGSgMR);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB014PaceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB014PaceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMR);
      lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<MetricText, _ForegroundStyleModifier<Color>>, ModifiedContent<MetricText, _ForegroundStyleModifier<Color>>>? and conformance <A> A?();
      lazy protocol witness table accessor for type ModifiedContent<ElapsedTimeView, _ForegroundStyleModifier<Color>>? and conformance <A> A?(&lazy protocol witness table cache variable for type ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>? and conformance <A> A?, &_s7SwiftUI15ModifiedContentVy07WorkoutB014PaceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB014PaceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMR, lazy protocol witness table accessor for type ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>);
      _ConditionalContent<>.init(storage:)();
      v352 = *v348;
      v353 = *&v348[16];
      v354 = *&v348[32];
      *v355 = *&v348[48];
      v350 = v346;
      v351 = v347;
      v343 = 0;
      v355[19] = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyAA08ModifiedD0Vy07WorkoutB010MetricTextVAA24_ForegroundStyleModifierVyAA5ColorVGGANGSgAEyAF04PaceG4ViewVAMGSgGMd, &_s7SwiftUI19_ConditionalContentVyACyAA08ModifiedD0Vy07WorkoutB010MetricTextVAA24_ForegroundStyleModifierVyAA5ColorVGGANGSgAEyAF04PaceG4ViewVAMGSgGMR);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy07WorkoutB015ElapsedTimeViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgACyACyAEyAEyAEyAEyAA4TextVAF0F16NotificationFontVGAA022_EnvironmentKeyWritingL0Vy12CoreGraphics7CGFloatVGGAVySiSgGGAMGA3_GA3_GSgGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy07WorkoutB015ElapsedTimeViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgACyACyAEyAEyAEyAEyAA4TextVAF0F16NotificationFontVGAA022_EnvironmentKeyWritingL0Vy12CoreGraphics7CGFloatVGGAVySiSgGGAMGA3_GA3_GSgGMR);
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<ModifiedContent<MetricText, _ForegroundStyleModifier<Color>>, ModifiedContent<MetricText, _ForegroundStyleModifier<Color>>>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?> and conformance <> _ConditionalContent<A, B>();
      lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ElapsedTimeView, _ForegroundStyleModifier<Color>>?, _ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>>?> and conformance <> _ConditionalContent<A, B>();
      _ConditionalContent<>.init(storage:)();
      v354 = v340[0];
      *v355 = v340[1];
      *&v355[16] = v340[2];
      v350 = v336;
      v351 = v337;
      v352 = v338;
      v353 = v339;
      v344 = 1;
      v355[26] = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyAA08ModifiedD0VyAEyAA5ImageVAA24_ForegroundStyleModifierVyAA5ColorVGG07WorkoutB015MetricValueFontVGSgAEyAN04PaceL4ViewVALGSgGACyAvEyAN05PowerlP0VALGSgGGMd, &_s7SwiftUI19_ConditionalContentVyACyAA08ModifiedD0VyAEyAA5ImageVAA24_ForegroundStyleModifierVyAA5ColorVGG07WorkoutB015MetricValueFontVGSgAEyAN04PaceL4ViewVALGSgGACyAvEyAN05PowerlP0VALGSgGGMR);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyACyAA08ModifiedD0Vy07WorkoutB010MetricTextVAA24_ForegroundStyleModifierVyAA5ColorVGGANGSgAEyAF04PaceG4ViewVAMGSgGACyAEyAF011ElapsedTimeN0VAMGSgACyACyAEyAEyAEyAEyAA0H0VAF0F16NotificationFontVGAA022_EnvironmentKeyWritingK0Vy12CoreGraphics7CGFloatVGGA4_ySiSgGGAMGA13_GA13_GSgGGMd, &_s7SwiftUI19_ConditionalContentVyACyACyAA08ModifiedD0Vy07WorkoutB010MetricTextVAA24_ForegroundStyleModifierVyAA5ColorVGGANGSgAEyAF04PaceG4ViewVAMGSgGACyAEyAF011ElapsedTimeN0VAMGSgACyACyAEyAEyAEyAEyAA0H0VAF0F16NotificationFontVGAA022_EnvironmentKeyWritingK0Vy12CoreGraphics7CGFloatVGGA4_ySiSgGGAMGA13_GA13_GSgGGMR);
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<Image, _ForegroundStyleModifier<Color>>, MetricValueFont>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<PowerMetricView, _ForegroundStyleModifier<Color>>?>> and conformance <> _ConditionalContent<A, B>();
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<MetricText, _ForegroundStyleModifier<Color>>, ModifiedContent<MetricText, _ForegroundStyleModifier<Color>>>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<ElapsedTimeView, _ForegroundStyleModifier<Color>>?, _ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int();
      _ConditionalContent<>.init(storage:)();
      v354 = *&v348[32];
      *v355 = *&v348[48];
      *&v355[11] = *&v348[59];
      v350 = v346;
      v351 = v347;
      v352 = *v348;
      v353 = *&v348[16];
      v345 = 1;
      v355[35] = 1;
      goto LABEL_101;
    }

    v205 = *&v189;
    static Duration.seconds(_:)();
    v207 = v312;
    v206 = v313;
    v208 = v314;
    (*(v313 + 104))(v312, *MEMORY[0x277D84670], v314);
    v209 = v300;
    static Duration.TimeFormatStyle.Pattern.hourMinuteSecond(padHourToLength:fractionalSecondsLength:roundFractionalSeconds:)();
    (*(v206 + 8))(v207, v208);
    v210 = v299;
    static FormatStyle<>.time(pattern:)();
    v211 = (*(v302 + 8))(v209, v304);
    lazy protocol witness table accessor for type Duration.TimeFormatStyle and conformance Duration.TimeFormatStyle(v211);
    v212 = v303;
    Duration.formatted<A>(_:)();
    (*(v301 + 8))(v210, v212);
    object = v350._object;
    v30 = v350._countAndFlagsBits;
    v48 = dispatch thunk of WorkoutNotificationUnit.key.getter();
    if (!v213)
    {
      v238 = objc_allocWithZone(MEMORY[0x277D75348]);
      if (v205 >= 0.0)
      {
        v240 = 0.62745098;
        v241 = 0.0;
        v239 = 1.0;
      }

      else
      {
        v239 = 0.407843137;
        v240 = 0.321568627;
        v241 = 1.0;
      }

      [v238 initWithRed:v241 green:v239 blue:v240 alpha:1.0];
      v248 = Color.init(uiColor:)();
      LOBYTE(v336._countAndFlagsBits) = 1;
      v346._countAndFlagsBits = v30;
      v346._object = object;
      v347 = v48;
      *v348 = v48;
      *&v348[8] = 0;
      *&v348[16] = 0;
      *&v348[24] = v48;
      *&v348[32] = 0;
      *&v348[40] = v248;
      v348[48] = 1;
      goto LABEL_166;
    }

    v49 = v213;
    if (one-time initialization token for WorkoutUIBundle == -1)
    {
LABEL_132:
      swift_beginAccess();
      v214 = WorkoutUIBundle.super.isa;
      v366._object = 0xE000000000000000;
      v215.value._countAndFlagsBits = 0x617A696C61636F4CLL;
      v215.value._object = 0xEB00000000656C62;
      v216._countAndFlagsBits = v48;
      v216._object = v49;
      v217._countAndFlagsBits = 0;
      v217._object = 0xE000000000000000;
      v366._countAndFlagsBits = 0;
      v218 = NSLocalizedString(_:tableName:bundle:value:comment:)(v216, v215, v214, v217, v366);

      if (v320)
      {
        v219 = v320;
      }

      else
      {
        [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.6 green:0.6 blue:0.6 alpha:1.0];
        v219 = Color.init(uiColor:)();
        v320 = 0;
      }

      LOBYTE(v336._countAndFlagsBits) = 0;
      v346._countAndFlagsBits = v30;
      v346._object = object;
      v347 = 0;
      *v348 = v218;
      *&v348[16] = 0;
      *&v348[32] = 0;
      *&v348[24] = 0;
      *&v348[40] = v219;
      v348[48] = 0;

LABEL_166:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB010MetricTextVAA24_ForegroundStyleModifierVyAA5ColorVGGMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB010MetricTextVAA24_ForegroundStyleModifierVyAA5ColorVGGMR);
      lazy protocol witness table accessor for type ModifiedContent<MetricText, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>();
      _ConditionalContent<>.init(storage:)();
      v330 = v352;
      v331 = v353;
      v332 = v354;
      LOBYTE(v333) = v355[0];
      v328 = v350;
      v329 = v351;
      goto LABEL_167;
    }

LABEL_219:
    swift_once();
    goto LABEL_132;
  }

  if (v33 == *MEMORY[0x277D7DAD8])
  {
    v191 = dispatch thunk of WorkoutNotificationUnit.value.getter();
    if ((v192 & 1) != 0 || (v193 = v191, (v194 = dispatch thunk of WorkoutNotificationUnit.activityType.getter()) == 0))
    {
      v331 = 0u;
      v332 = 0u;
      v330 = 0u;
      v328 = 0;
      v329 = 0;
    }

    else
    {
      v195 = v194;
      v196 = swift_getKeyPath();
      LOBYTE(v350._countAndFlagsBits) = 0;
      if (v320)
      {
        v197 = v321;
        v198 = v320;
      }

      else
      {
        v258 = objc_opt_self();
        v259 = v321;
        v260 = v195;
        v261 = [v258 paceColors];
        if (!v261)
        {
LABEL_242:
          __break(1u);
          goto LABEL_243;
        }

        v262 = v261;
        v263 = [v261 nonGradientTextColor];

        if (!v263)
        {
LABEL_243:
          __break(1u);
          goto LABEL_244;
        }

        v198 = Color.init(uiColor:)();

        v320 = 0;
      }

      v328._countAndFlagsBits = v321;
      v328._object = 14;
      v329._countAndFlagsBits = v195;
      v329._object = v196;
      LOBYTE(v330) = 0;
      *(&v330 + 1) = v193;
      LOBYTE(v331) = 0;
      *(&v331 + 1) = 0;
      *&v332 = 0;
      *(&v332 + 1) = v198;
    }

    v352 = v330;
    v353 = v331;
    v354 = v332;
    v350 = v328;
    v351 = v329;
    v343 = 1;
    v355[1] = 1;
    outlined init with copy of _ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>>?(&v328, &v346, &_s7SwiftUI15ModifiedContentVy07WorkoutB014PaceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB014PaceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy07WorkoutB010MetricTextVAA24_ForegroundStyleModifierVyAA5ColorVGGANGSgMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy07WorkoutB010MetricTextVAA24_ForegroundStyleModifierVyAA5ColorVGGANGSgMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB014PaceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB014PaceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMR);
    lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<MetricText, _ForegroundStyleModifier<Color>>, ModifiedContent<MetricText, _ForegroundStyleModifier<Color>>>? and conformance <A> A?();
    lazy protocol witness table accessor for type ModifiedContent<ElapsedTimeView, _ForegroundStyleModifier<Color>>? and conformance <A> A?(&lazy protocol witness table cache variable for type ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>? and conformance <A> A?, &_s7SwiftUI15ModifiedContentVy07WorkoutB014PaceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB014PaceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMR, lazy protocol witness table accessor for type ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>);
    _ConditionalContent<>.init(storage:)();
    v352 = *v348;
    v353 = *&v348[16];
    v354 = *&v348[32];
    *v355 = *&v348[48];
    v350 = v346;
    v351 = v347;
    v344 = 0;
    v355[19] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyAA08ModifiedD0Vy07WorkoutB010MetricTextVAA24_ForegroundStyleModifierVyAA5ColorVGGANGSgAEyAF04PaceG4ViewVAMGSgGMd, &_s7SwiftUI19_ConditionalContentVyACyAA08ModifiedD0Vy07WorkoutB010MetricTextVAA24_ForegroundStyleModifierVyAA5ColorVGGANGSgAEyAF04PaceG4ViewVAMGSgGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy07WorkoutB015ElapsedTimeViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgACyACyAEyAEyAEyAEyAA4TextVAF0F16NotificationFontVGAA022_EnvironmentKeyWritingL0Vy12CoreGraphics7CGFloatVGGAVySiSgGGAMGA3_GA3_GSgGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy07WorkoutB015ElapsedTimeViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgACyACyAEyAEyAEyAEyAA4TextVAF0F16NotificationFontVGAA022_EnvironmentKeyWritingL0Vy12CoreGraphics7CGFloatVGGAVySiSgGGAMGA3_GA3_GSgGMR);
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<ModifiedContent<MetricText, _ForegroundStyleModifier<Color>>, ModifiedContent<MetricText, _ForegroundStyleModifier<Color>>>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ElapsedTimeView, _ForegroundStyleModifier<Color>>?, _ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>>?> and conformance <> _ConditionalContent<A, B>();
    _ConditionalContent<>.init(storage:)();
    v354 = v340[0];
    *v355 = v340[1];
    *&v355[16] = v340[2];
    v350 = v336;
    v351 = v337;
    v352 = v338;
    v353 = v339;
    v345 = 1;
    v355[26] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyAA08ModifiedD0VyAEyAA5ImageVAA24_ForegroundStyleModifierVyAA5ColorVGG07WorkoutB015MetricValueFontVGSgAEyAN04PaceL4ViewVALGSgGACyAvEyAN05PowerlP0VALGSgGGMd, &_s7SwiftUI19_ConditionalContentVyACyAA08ModifiedD0VyAEyAA5ImageVAA24_ForegroundStyleModifierVyAA5ColorVGG07WorkoutB015MetricValueFontVGSgAEyAN04PaceL4ViewVALGSgGACyAvEyAN05PowerlP0VALGSgGGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyACyAA08ModifiedD0Vy07WorkoutB010MetricTextVAA24_ForegroundStyleModifierVyAA5ColorVGGANGSgAEyAF04PaceG4ViewVAMGSgGACyAEyAF011ElapsedTimeN0VAMGSgACyACyAEyAEyAEyAEyAA0H0VAF0F16NotificationFontVGAA022_EnvironmentKeyWritingK0Vy12CoreGraphics7CGFloatVGGA4_ySiSgGGAMGA13_GA13_GSgGGMd, &_s7SwiftUI19_ConditionalContentVyACyACyAA08ModifiedD0Vy07WorkoutB010MetricTextVAA24_ForegroundStyleModifierVyAA5ColorVGGANGSgAEyAF04PaceG4ViewVAMGSgGACyAEyAF011ElapsedTimeN0VAMGSgACyACyAEyAEyAEyAEyAA0H0VAF0F16NotificationFontVGAA022_EnvironmentKeyWritingK0Vy12CoreGraphics7CGFloatVGGA4_ySiSgGGAMGA13_GA13_GSgGGMR);
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<Image, _ForegroundStyleModifier<Color>>, MetricValueFont>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<PowerMetricView, _ForegroundStyleModifier<Color>>?>> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<MetricText, _ForegroundStyleModifier<Color>>, ModifiedContent<MetricText, _ForegroundStyleModifier<Color>>>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<ElapsedTimeView, _ForegroundStyleModifier<Color>>?, _ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int();
    _ConditionalContent<>.init(storage:)();
    v354 = *&v348[32];
    *v355 = *&v348[48];
    *&v355[11] = *&v348[59];
    v350 = v346;
    v351 = v347;
    v352 = *v348;
    v353 = *&v348[16];
    v356 = 1;
    v355[35] = 1;
    goto LABEL_39;
  }

  if (v33 == *MEMORY[0x277D7DB18])
  {
    v220 = dispatch thunk of WorkoutNotificationUnit.value.getter();
    if (v221)
    {
      v222 = 0;
      v223 = 0;
      v224 = 0;
    }

    else
    {
      v222 = v220;
      v224 = v320;
      if (!v320)
      {
        v242 = [objc_opt_self() splitsColors];
        v243 = [v242 nonGradientTextColor];

        if (!v243)
        {
LABEL_244:
          __break(1u);
          goto LABEL_245;
        }

        v224 = Color.init(uiColor:)();
      }

      v223 = 1;
    }

    v344 = 0;
    v350._countAndFlagsBits = v222;
    v350._object = v223;
    v351._countAndFlagsBits = v224;
    v355[18] = 0;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB015ElapsedTimeViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB015ElapsedTimeViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyAA08ModifiedD0VyAEyAEyAEyAA4TextV07WorkoutB00G16NotificationFontVGAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGAMySiSgGGAA016_ForegroundStyleM0VyAA5ColorVGGA_GA_GSgMd, &_s7SwiftUI19_ConditionalContentVyACyAA08ModifiedD0VyAEyAEyAEyAA4TextV07WorkoutB00G16NotificationFontVGAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGAMySiSgGGAA016_ForegroundStyleM0VyAA5ColorVGGA_GA_GSgMR);
    lazy protocol witness table accessor for type ModifiedContent<ElapsedTimeView, _ForegroundStyleModifier<Color>>? and conformance <A> A?(&lazy protocol witness table cache variable for type ModifiedContent<ElapsedTimeView, _ForegroundStyleModifier<Color>>? and conformance <A> A?, &_s7SwiftUI15ModifiedContentVy07WorkoutB015ElapsedTimeViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB015ElapsedTimeViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMR, lazy protocol witness table accessor for type ModifiedContent<ElapsedTimeView, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>);
    lazy protocol witness table accessor for type ModifiedContent<ElapsedTimeView, _ForegroundStyleModifier<Color>>? and conformance <A> A?(&lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>>? and conformance <A> A?, &_s7SwiftUI19_ConditionalContentVyACyAA08ModifiedD0VyAEyAEyAEyAA4TextV07WorkoutB00G16NotificationFontVGAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGAMySiSgGGAA016_ForegroundStyleM0VyAA5ColorVGGA_GA_GSgMd, &_s7SwiftUI19_ConditionalContentVyACyAA08ModifiedD0VyAEyAEyAEyAA4TextV07WorkoutB00G16NotificationFontVGAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGAMySiSgGGAA016_ForegroundStyleM0VyAA5ColorVGGA_GA_GSgMR, lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>> and conformance <> _ConditionalContent<A, B>);
    _ConditionalContent<>.init(storage:)();
    v354 = *&v348[32];
    *v355 = *&v348[48];
    *&v355[15] = *&v348[63];
    v350 = v346;
    v351 = v347;
    v352 = *v348;
    v353 = *&v348[16];
    v345 = 1;
    v355[19] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyAA08ModifiedD0Vy07WorkoutB010MetricTextVAA24_ForegroundStyleModifierVyAA5ColorVGGANGSgAEyAF04PaceG4ViewVAMGSgGMd, &_s7SwiftUI19_ConditionalContentVyACyAA08ModifiedD0Vy07WorkoutB010MetricTextVAA24_ForegroundStyleModifierVyAA5ColorVGGANGSgAEyAF04PaceG4ViewVAMGSgGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy07WorkoutB015ElapsedTimeViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgACyACyAEyAEyAEyAEyAA4TextVAF0F16NotificationFontVGAA022_EnvironmentKeyWritingL0Vy12CoreGraphics7CGFloatVGGAVySiSgGGAMGA3_GA3_GSgGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy07WorkoutB015ElapsedTimeViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgACyACyAEyAEyAEyAEyAA4TextVAF0F16NotificationFontVGAA022_EnvironmentKeyWritingL0Vy12CoreGraphics7CGFloatVGGAVySiSgGGAMGA3_GA3_GSgGMR);
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<ModifiedContent<MetricText, _ForegroundStyleModifier<Color>>, ModifiedContent<MetricText, _ForegroundStyleModifier<Color>>>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ElapsedTimeView, _ForegroundStyleModifier<Color>>?, _ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>>?> and conformance <> _ConditionalContent<A, B>();
    _ConditionalContent<>.init(storage:)();
    v354 = v340[0];
    *v355 = v340[1];
    *&v355[16] = v340[2];
    v350 = v336;
    v351 = v337;
    v352 = v338;
    v353 = v339;
    v356 = 1;
    v355[26] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyAA08ModifiedD0VyAEyAA5ImageVAA24_ForegroundStyleModifierVyAA5ColorVGG07WorkoutB015MetricValueFontVGSgAEyAN04PaceL4ViewVALGSgGACyAvEyAN05PowerlP0VALGSgGGMd, &_s7SwiftUI19_ConditionalContentVyACyAA08ModifiedD0VyAEyAA5ImageVAA24_ForegroundStyleModifierVyAA5ColorVGG07WorkoutB015MetricValueFontVGSgAEyAN04PaceL4ViewVALGSgGACyAvEyAN05PowerlP0VALGSgGGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyACyAA08ModifiedD0Vy07WorkoutB010MetricTextVAA24_ForegroundStyleModifierVyAA5ColorVGGANGSgAEyAF04PaceG4ViewVAMGSgGACyAEyAF011ElapsedTimeN0VAMGSgACyACyAEyAEyAEyAEyAA0H0VAF0F16NotificationFontVGAA022_EnvironmentKeyWritingK0Vy12CoreGraphics7CGFloatVGGA4_ySiSgGGAMGA13_GA13_GSgGGMd, &_s7SwiftUI19_ConditionalContentVyACyACyAA08ModifiedD0Vy07WorkoutB010MetricTextVAA24_ForegroundStyleModifierVyAA5ColorVGGANGSgAEyAF04PaceG4ViewVAMGSgGACyAEyAF011ElapsedTimeN0VAMGSgACyACyAEyAEyAEyAEyAA0H0VAF0F16NotificationFontVGAA022_EnvironmentKeyWritingK0Vy12CoreGraphics7CGFloatVGGA4_ySiSgGGAMGA13_GA13_GSgGGMR);
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<Image, _ForegroundStyleModifier<Color>>, MetricValueFont>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<PowerMetricView, _ForegroundStyleModifier<Color>>?>> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<MetricText, _ForegroundStyleModifier<Color>>, ModifiedContent<MetricText, _ForegroundStyleModifier<Color>>>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<ElapsedTimeView, _ForegroundStyleModifier<Color>>?, _ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int();
    _ConditionalContent<>.init(storage:)();
    v354 = *&v348[32];
    *v355 = *&v348[48];
    *&v355[11] = *&v348[59];
    v350 = v346;
    v351 = v347;
    v352 = *v348;
    v353 = *&v348[16];
    v335 = 1;
    v355[35] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyACyAA08ModifiedD0Vy07WorkoutB017CadenceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgAEyAF04PacehI0VAMGSgGACyAEyAF05PowerhI0VAMGSgAOGGACyACyAEyAF08DistanceH4TextVAMGSgAEyAF06EnergyhI0VAMGSgGACyAEyAF0h7HeadingI0VyAA0Q0VGAMGSgAEyAF0hQ0VAA022_EnvironmentKeyWritingL0VyALSgGGSgGGGMd, &_s7SwiftUI19_ConditionalContentVyACyACyAA08ModifiedD0Vy07WorkoutB017CadenceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgAEyAF04PacehI0VAMGSgGACyAEyAF05PowerhI0VAMGSgAOGGACyACyAEyAF08DistanceH4TextVAMGSgAEyAF06EnergyhI0VAMGSgGACyAEyAF0h7HeadingI0VyAA0Q0VGAMGSgAEyAF0hQ0VAA022_EnvironmentKeyWritingL0VyALSgGGSgGGGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyACyAA08ModifiedD0VyAEyAA5ImageVAA24_ForegroundStyleModifierVyAA5ColorVGG07WorkoutB015MetricValueFontVGSgAEyAN04PaceL4ViewVALGSgGACyAvEyAN05PowerlP0VALGSgGGACyACyACyAEyAN0L4TextVALGA4_GSgAVGACyAEyAN011ElapsedTimeP0VALGSgACyACyAEyAEyAEyAEyAA0R0VAN0k12NotificationN0VGAA022_EnvironmentKeyWritingI0Vy12CoreGraphics7CGFloatVGGA18_ySiSgGGALGA27_GA27_GSgGGGMd, &_s7SwiftUI19_ConditionalContentVyACyACyAA08ModifiedD0VyAEyAA5ImageVAA24_ForegroundStyleModifierVyAA5ColorVGG07WorkoutB015MetricValueFontVGSgAEyAN04PaceL4ViewVALGSgGACyAvEyAN05PowerlP0VALGSgGGACyACyACyAEyAN0L4TextVALGA4_GSgAVGACyAEyAN011ElapsedTimeP0VALGSgACyACyAEyAEyAEyAEyAA0R0VAN0k12NotificationN0VGAA022_EnvironmentKeyWritingI0Vy12CoreGraphics7CGFloatVGGA18_ySiSgGGALGA27_GA27_GSgGGGMR);
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<CadenceMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<PowerMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<CadenceMetricView, _ForegroundStyleModifier<Color>>?>>, _ConditionalContent<_ConditionalContent<ModifiedContent<DistanceMetricText, _ForegroundStyleModifier<Color>>?, ModifiedContent<EnergyMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<MetricHeadingView<Text>, _ForegroundStyleModifier<Color>>?, ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<Color?>>?>>> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<Image, _ForegroundStyleModifier<Color>>, MetricValueFont>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<PowerMetricView, _ForegroundStyleModifier<Color>>?>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<MetricText, _ForegroundStyleModifier<Color>>, ModifiedContent<MetricText, _ForegroundStyleModifier<Color>>>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<ElapsedTimeView, _ForegroundStyleModifier<Color>>?, _ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>, Modifie();
    _ConditionalContent<>.init(storage:)();
    *&v348[32] = v340[0];
    *&v348[48] = v340[1];
    *&v348[64] = v340[2];
    *&v348[80] = v341;
    v346 = v336;
    v347 = v337;
    *v348 = v338;
    *&v348[16] = v339;
    LOBYTE(v328._countAndFlagsBits) = 0;
    v349 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyACyACyAA08ModifiedD0Vy07WorkoutB017CadenceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgAEyAF04PacehI0VAMGSgGACyAEyAF05PowerhI0VAMGSgAOGGACyACyAEyAF08DistanceH4TextVAMGSgAEyAF06EnergyhI0VAMGSgGACyAEyAF0h7HeadingI0VyAA0Q0VGAMGSgAEyAF0hQ0VAA022_EnvironmentKeyWritingL0VyALSgGGSgGGGACyACyACyAEyAEyAA5ImageVAMGAF0H9ValueFontVGSgASGACyAsXGGACyACyACyAEyA16_AMGA36_GSgASGACyAEyAF011ElapsedTimeI0VAMGSgACyACyAEyAEyAEyAEyA11_AF0f12NotificationY0VGA18_y12CoreGraphics7CGFloatVGGA18_ySiSgGGAMGA55_GA55_GSgGGGGMd, &_s7SwiftUI19_ConditionalContentVyACyACyACyAA08ModifiedD0Vy07WorkoutB017CadenceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgAEyAF04PacehI0VAMGSgGACyAEyAF05PowerhI0VAMGSgAOGGACyACyAEyAF08DistanceH4TextVAMGSgAEyAF06EnergyhI0VAMGSgGACyAEyAF0h7HeadingI0VyAA0Q0VGAMGSgAEyAF0hQ0VAA022_EnvironmentKeyWritingL0VyALSgGGSgGGGACyACyACyAEyAEyAA5ImageVAMGAF0H9ValueFontVGSgASGACyAsXGGACyACyACyAEyA16_AMGA36_GSgASGACyAEyAF011ElapsedTimeI0VAMGSgACyACyAEyAEyAEyAEyA11_AF0f12NotificationY0VGA18_y12CoreGraphics7CGFloatVGGA18_ySiSgGGAMGA55_GA55_GSgGGGGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy07WorkoutB015ElapsedTimeViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgAA4TextVGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy07WorkoutB015ElapsedTimeViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgAA4TextVGMR);
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<CadenceMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<PowerMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<CadenceMetricView, _ForegroundStyleModifier<Color>>?>>, _ConditionalContent<_ConditionalContent<ModifiedContent<DistanceMetricText, _ForegroundStyleModifier<Color>>?, ModifiedContent<EnergyMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<MetricHeadingView<Text>, _ForegroundStyleModifier<Color>>?, ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<Color?>>?>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<Image, _ForegroundStyleModifier<Color>>, MetricValueFont>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedC();
    lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ElapsedTimeView, _ForegroundStyleModifier<Color>>?, Text> and conformance <> _ConditionalContent<A, B>();
    _ConditionalContent<>.init(storage:)();

    v361 = v354;
    v362 = *v355;
    v363[0] = *&v355[16];
    *(v363 + 13) = *&v355[29];
    v357 = v350;
    v358 = v351;
    v91 = v352;
    v92 = v353;
    goto LABEL_66;
  }

  if (v33 == *MEMORY[0x277D7DB28])
  {
    v231 = dispatch thunk of WorkoutNotificationUnit.key.getter();
    if (!v232)
    {
      dispatch thunk of WorkoutNotificationUnit.stringLiteral.getter();
      if (!v264)
      {
        v332 = 0u;
        v333 = 0u;
        v330 = 0u;
        v331 = 0u;
        v328 = 0;
        v329 = 0;
        LOWORD(v334) = -256;
LABEL_216:
        v354 = v332;
        *v355 = v333;
        *&v355[16] = v334;
        v350 = v328;
        v351 = v329;
        v352 = v330;
        v353 = v331;
        v342 = 1;
        v355[18] = 1;
        v120 = &_s7SwiftUI19_ConditionalContentVyACyAA08ModifiedD0VyAEyAEyAEyAA4TextV07WorkoutB00G16NotificationFontVGAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGAMySiSgGGAA016_ForegroundStyleM0VyAA5ColorVGGA_GA_GSgMd;
        v121 = &_s7SwiftUI19_ConditionalContentVyACyAA08ModifiedD0VyAEyAEyAEyAA4TextV07WorkoutB00G16NotificationFontVGAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGAMySiSgGGAA016_ForegroundStyleM0VyAA5ColorVGGA_GA_GSgMR;
        outlined init with copy of _ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>>?(&v328, &v346, &_s7SwiftUI19_ConditionalContentVyACyAA08ModifiedD0VyAEyAEyAEyAA4TextV07WorkoutB00G16NotificationFontVGAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGAMySiSgGGAA016_ForegroundStyleM0VyAA5ColorVGGA_GA_GSgMd, &_s7SwiftUI19_ConditionalContentVyACyAA08ModifiedD0VyAEyAEyAEyAA4TextV07WorkoutB00G16NotificationFontVGAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGAMySiSgGGAA016_ForegroundStyleM0VyAA5ColorVGGA_GA_GSgMR);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB015ElapsedTimeViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB015ElapsedTimeViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMR);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyAA08ModifiedD0VyAEyAEyAEyAA4TextV07WorkoutB00G16NotificationFontVGAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGAMySiSgGGAA016_ForegroundStyleM0VyAA5ColorVGGA_GA_GSgMd, &_s7SwiftUI19_ConditionalContentVyACyAA08ModifiedD0VyAEyAEyAEyAA4TextV07WorkoutB00G16NotificationFontVGAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGAMySiSgGGAA016_ForegroundStyleM0VyAA5ColorVGGA_GA_GSgMR);
        lazy protocol witness table accessor for type ModifiedContent<ElapsedTimeView, _ForegroundStyleModifier<Color>>? and conformance <A> A?(&lazy protocol witness table cache variable for type ModifiedContent<ElapsedTimeView, _ForegroundStyleModifier<Color>>? and conformance <A> A?, &_s7SwiftUI15ModifiedContentVy07WorkoutB015ElapsedTimeViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB015ElapsedTimeViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMR, lazy protocol witness table accessor for type ModifiedContent<ElapsedTimeView, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>);
        lazy protocol witness table accessor for type ModifiedContent<ElapsedTimeView, _ForegroundStyleModifier<Color>>? and conformance <A> A?(&lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>>? and conformance <A> A?, &_s7SwiftUI19_ConditionalContentVyACyAA08ModifiedD0VyAEyAEyAEyAA4TextV07WorkoutB00G16NotificationFontVGAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGAMySiSgGGAA016_ForegroundStyleM0VyAA5ColorVGGA_GA_GSgMd, &_s7SwiftUI19_ConditionalContentVyACyAA08ModifiedD0VyAEyAEyAEyAA4TextV07WorkoutB00G16NotificationFontVGAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGAMySiSgGGAA016_ForegroundStyleM0VyAA5ColorVGGA_GA_GSgMR, lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>> and conformance <> _ConditionalContent<A, B>);
        _ConditionalContent<>.init(storage:)();
        v354 = *&v348[32];
        *v355 = *&v348[48];
        *&v355[15] = *&v348[63];
        v350 = v346;
        v351 = v347;
        v352 = *v348;
        v353 = *&v348[16];
        v343 = 1;
        v355[19] = 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyAA08ModifiedD0Vy07WorkoutB010MetricTextVAA24_ForegroundStyleModifierVyAA5ColorVGGANGSgAEyAF04PaceG4ViewVAMGSgGMd, &_s7SwiftUI19_ConditionalContentVyACyAA08ModifiedD0Vy07WorkoutB010MetricTextVAA24_ForegroundStyleModifierVyAA5ColorVGGANGSgAEyAF04PaceG4ViewVAMGSgGMR);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy07WorkoutB015ElapsedTimeViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgACyACyAEyAEyAEyAEyAA4TextVAF0F16NotificationFontVGAA022_EnvironmentKeyWritingL0Vy12CoreGraphics7CGFloatVGGAVySiSgGGAMGA3_GA3_GSgGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy07WorkoutB015ElapsedTimeViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgACyACyAEyAEyAEyAEyAA4TextVAF0F16NotificationFontVGAA022_EnvironmentKeyWritingL0Vy12CoreGraphics7CGFloatVGGAVySiSgGGAMGA3_GA3_GSgGMR);
        lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<ModifiedContent<MetricText, _ForegroundStyleModifier<Color>>, ModifiedContent<MetricText, _ForegroundStyleModifier<Color>>>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?> and conformance <> _ConditionalContent<A, B>();
        lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ElapsedTimeView, _ForegroundStyleModifier<Color>>?, _ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>>?> and conformance <> _ConditionalContent<A, B>();
        _ConditionalContent<>.init(storage:)();
        v354 = v340[0];
        *v355 = v340[1];
        *&v355[16] = v340[2];
        v350 = v336;
        v351 = v337;
        v352 = v338;
        v353 = v339;
        v344 = 1;
        v355[26] = 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyAA08ModifiedD0VyAEyAA5ImageVAA24_ForegroundStyleModifierVyAA5ColorVGG07WorkoutB015MetricValueFontVGSgAEyAN04PaceL4ViewVALGSgGACyAvEyAN05PowerlP0VALGSgGGMd, &_s7SwiftUI19_ConditionalContentVyACyAA08ModifiedD0VyAEyAA5ImageVAA24_ForegroundStyleModifierVyAA5ColorVGG07WorkoutB015MetricValueFontVGSgAEyAN04PaceL4ViewVALGSgGACyAvEyAN05PowerlP0VALGSgGGMR);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyACyAA08ModifiedD0Vy07WorkoutB010MetricTextVAA24_ForegroundStyleModifierVyAA5ColorVGGANGSgAEyAF04PaceG4ViewVAMGSgGACyAEyAF011ElapsedTimeN0VAMGSgACyACyAEyAEyAEyAEyAA0H0VAF0F16NotificationFontVGAA022_EnvironmentKeyWritingK0Vy12CoreGraphics7CGFloatVGGA4_ySiSgGGAMGA13_GA13_GSgGGMd, &_s7SwiftUI19_ConditionalContentVyACyACyAA08ModifiedD0Vy07WorkoutB010MetricTextVAA24_ForegroundStyleModifierVyAA5ColorVGGANGSgAEyAF04PaceG4ViewVAMGSgGACyAEyAF011ElapsedTimeN0VAMGSgACyACyAEyAEyAEyAEyAA0H0VAF0F16NotificationFontVGAA022_EnvironmentKeyWritingK0Vy12CoreGraphics7CGFloatVGGA4_ySiSgGGAMGA13_GA13_GSgGGMR);
        lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<Image, _ForegroundStyleModifier<Color>>, MetricValueFont>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<PowerMetricView, _ForegroundStyleModifier<Color>>?>> and conformance <> _ConditionalContent<A, B>();
        lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<MetricText, _ForegroundStyleModifier<Color>>, ModifiedContent<MetricText, _ForegroundStyleModifier<Color>>>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<ElapsedTimeView, _ForegroundStyleModifier<Color>>?, _ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int();
        _ConditionalContent<>.init(storage:)();
        v354 = *&v348[32];
        *v355 = *&v348[48];
        *&v355[11] = *&v348[59];
        v350 = v346;
        v351 = v347;
        v352 = *v348;
        v353 = *&v348[16];
        v345 = 1;
        v355[35] = 1;
        goto LABEL_101;
      }

      static WorkoutNotificationFont.multilineTextView(with:lineLimit:)(2, &v336);

      *v348 = v338;
      *&v348[16] = v339;
      *&v348[32] = v340[0];
      v348[48] = v340[1];
      v346 = v336;
      v347 = v337;
      if (v320)
      {
        v265 = v320;
      }

      else
      {
        *&v291 = COERCE_DOUBLE(dispatch thunk of WorkoutNotificationUnit.value.getter());
        v292 = *&v291;
        if (v293)
        {
          v292 = 16777215.0;
        }

        else if ((v291 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
        {
LABEL_234:
          __break(1u);
          goto LABEL_235;
        }

        if (v292 <= -1.0)
        {
LABEL_235:
          __break(1u);
          goto LABEL_236;
        }

        if (v292 >= 4294967300.0)
        {
LABEL_236:
          __break(1u);
          goto LABEL_237;
        }

        (*(v317 + 104))(v319, *MEMORY[0x277CE0EE0], v318);
        v265 = Color.init(_:red:green:blue:opacity:)();
        v320 = 0;
      }

      v352 = *v348;
      v353 = *&v348[16];
      v354 = *&v348[32];
      v355[0] = v348[48];
      v350 = v346;
      v351 = v347;
      v335 = 1;
      *&v355[8] = v265;
      v355[17] = 1;

      goto LABEL_215;
    }

    v56 = v231;
    v58 = v232;
    if (v315)
    {
      v233 = v316;
      v356 = v316;
    }

    else
    {
      v266 = v316;
      outlined copy of Environment<WorkoutViewStyle>.Content(v316, 0);
      static os_log_type_t.fault.getter();
      v267 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      v268 = v295;
      EnvironmentValues.init()();
      swift_getAtKeyPath();
      outlined consume of Environment<WorkoutViewStyle>.Content(v266, 0);
      (*(v296 + 8))(v268, v297);
      v233 = v356;
    }

    v59 = 0xEB00000000656C62;
    v15 = 0x617A696C61636F4CLL;
    if (v233 != 11)
    {
      if (one-time initialization token for WorkoutUIBundle != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v277 = WorkoutUIBundle.super.isa;
      v368._object = 0xE000000000000000;
      v278._countAndFlagsBits = v56;
      v278._object = v58;
      v279.value._countAndFlagsBits = 0x617A696C61636F4CLL;
      v279.value._object = 0xEB00000000656C62;
      v280._countAndFlagsBits = 0;
      v280._object = 0xE000000000000000;
      v368._countAndFlagsBits = 0;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v278, v279, v277, v280, v368);

      static WorkoutNotificationFont.multilineTextView(with:lineLimit:)(3, &v328);

      v338 = v330;
      v339 = v331;
      v340[0] = v332;
      LOBYTE(v340[1]) = v333;
      v336 = v328;
      v337 = v329;
      if (v320)
      {
        v281 = v320;
      }

      else
      {
        *&v288 = COERCE_DOUBLE(dispatch thunk of WorkoutNotificationUnit.value.getter());
        v289 = *&v288;
        if (v290)
        {
          v289 = 16777215.0;
        }

        else if ((v288 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
        {
          goto LABEL_227;
        }

        if (v289 <= -1.0)
        {
LABEL_229:
          __break(1u);
LABEL_230:
          __break(1u);
          goto LABEL_231;
        }

        if (v289 >= 4294967300.0)
        {
LABEL_231:
          __break(1u);
          goto LABEL_232;
        }

        (*(v317 + 104))(v319, *MEMORY[0x277CE0EE0], v318);
        v281 = Color.init(_:red:green:blue:opacity:)();
        v320 = 0;
      }

      v352 = v338;
      v353 = v339;
      v354 = v340[0];
      v355[0] = v340[1];
      v350 = v336;
      v351 = v337;
      v345 = 1;
      *&v355[8] = v281;
      v355[16] = 1;
      goto LABEL_207;
    }

    if (one-time initialization token for WorkoutUIBundle == -1)
    {
LABEL_180:
      swift_beginAccess();
      v269 = WorkoutUIBundle.super.isa;
      v367._object = 0xE000000000000000;
      v270._countAndFlagsBits = v56;
      v270._object = v58;
      v271.value._countAndFlagsBits = v15;
      v271.value._object = v59;
      v272._countAndFlagsBits = 0;
      v272._object = 0xE000000000000000;
      v367._countAndFlagsBits = 0;
      v273 = NSLocalizedString(_:tableName:bundle:value:comment:)(v270, v271, v269, v272, v367);

      v350 = v273;
      v346._countAndFlagsBits = 10;
      v346._object = 0xE100000000000000;
      v336._countAndFlagsBits = 32;
      v336._object = 0xE100000000000000;
      v274 = lazy protocol witness table accessor for type String and conformance String();
      StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v346, &v336, 0, 0, 0, 1, MEMORY[0x277D837D0], MEMORY[0x277D837D0], v275, MEMORY[0x277D837D0], v274, v274, v274);

      static WorkoutNotificationFont.multilineTextView(with:lineLimit:)(1, &v328);

      v338 = v330;
      v339 = v331;
      v340[0] = v332;
      LOBYTE(v340[1]) = v333;
      v336 = v328;
      v337 = v329;
      if (v320)
      {
        v276 = v320;
LABEL_199:
        v352 = v338;
        v353 = v339;
        v354 = v340[0];
        v355[0] = v340[1];
        v350 = v336;
        v351 = v337;
        v345 = 0;
        *&v355[8] = v276;
        v355[16] = 0;
LABEL_207:

        __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextV07WorkoutB00F16NotificationFontVGAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGAKySiSgGGAA016_ForegroundStyleL0VyAA5ColorVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextV07WorkoutB00F16NotificationFontVGAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGAKySiSgGGAA016_ForegroundStyleL0VyAA5ColorVGGMR);
        lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>();
        _ConditionalContent<>.init(storage:)();
        v354 = *&v348[32];
        *v355 = *&v348[48];
        v355[16] = v348[64];
        v350 = v346;
        v351 = v347;
        v352 = *v348;
        v353 = *&v348[16];
        LOBYTE(v336._countAndFlagsBits) = 0;
        v355[17] = 0;
LABEL_215:
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEyAEyAA4TextV07WorkoutB00G16NotificationFontVGAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGAMySiSgGGAA016_ForegroundStyleM0VyAA5ColorVGGA_GMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEyAEyAA4TextV07WorkoutB00G16NotificationFontVGAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGAMySiSgGGAA016_ForegroundStyleM0VyAA5ColorVGGA_GMR);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextV07WorkoutB00F16NotificationFontVGAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGAKySiSgGGAA016_ForegroundStyleL0VyAA5ColorVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextV07WorkoutB00F16NotificationFontVGAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGAKySiSgGGAA016_ForegroundStyleL0VyAA5ColorVGGMR);
        lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<MetricText, _ForegroundStyleModifier<Color>>, ModifiedContent<MetricText, _ForegroundStyleModifier<Color>>> and conformance <> _ConditionalContent<A, B>(&lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>> and conformance <> _ConditionalContent<A, B>, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEyAEyAA4TextV07WorkoutB00G16NotificationFontVGAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGAMySiSgGGAA016_ForegroundStyleM0VyAA5ColorVGGA_GMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEyAEyAA4TextV07WorkoutB00G16NotificationFontVGAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGAMySiSgGGAA016_ForegroundStyleM0VyAA5ColorVGGA_GMR, lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>);
        lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>();
        _ConditionalContent<>.init(storage:)();
        goto LABEL_216;
      }

      *&v285 = COERCE_DOUBLE(dispatch thunk of WorkoutNotificationUnit.value.getter());
      v286 = *&v285;
      if (v287)
      {
        v286 = 16777215.0;
        goto LABEL_196;
      }

      if ((v285 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
      {
LABEL_196:
        if (v286 > -1.0)
        {
          if (v286 < 4294967300.0)
          {
            (*(v317 + 104))(v319, *MEMORY[0x277CE0EE0], v318);
            v276 = Color.init(_:red:green:blue:opacity:)();
            v320 = 0;
            goto LABEL_199;
          }

          goto LABEL_230;
        }

        goto LABEL_228;
      }

      __break(1u);
LABEL_227:
      __break(1u);
LABEL_228:
      __break(1u);
      goto LABEL_229;
    }

LABEL_225:
    swift_once();
    goto LABEL_180;
  }

  if (v33 != *MEMORY[0x277D7DB00])
  {
    LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v249._object = 0x800000020CBA4860;
    v249._countAndFlagsBits = 0xD000000000000021;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v249);
    dispatch thunk of WorkoutNotificationUnit.type.getter();
    v250._countAndFlagsBits = String.init<A>(describing:)();
    LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v250);

    v251._countAndFlagsBits = 0;
    v251._object = 0xE000000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v251);
    LocalizedStringKey.init(stringInterpolation:)();
    v252 = Text.init(_:tableName:bundle:comment:)();
    v254 = v253;
    v320 = v252;
    v321 = v255;
    v350._countAndFlagsBits = v252;
    v350._object = v253;
    v257 = v256 & 1;
    v351._countAndFlagsBits = v256 & 1;
    v351._object = v255;
    LOBYTE(v352) = 1;
    outlined copy of Text.Storage(v252, v253, v256 & 1);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB015ElapsedTimeViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB015ElapsedTimeViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMR);
    lazy protocol witness table accessor for type ModifiedContent<ElapsedTimeView, _ForegroundStyleModifier<Color>>? and conformance <A> A?(&lazy protocol witness table cache variable for type ModifiedContent<ElapsedTimeView, _ForegroundStyleModifier<Color>>? and conformance <A> A?, &_s7SwiftUI15ModifiedContentVy07WorkoutB015ElapsedTimeViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB015ElapsedTimeViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMR, lazy protocol witness table accessor for type ModifiedContent<ElapsedTimeView, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>);
    _ConditionalContent<>.init(storage:)();
    v346 = v328;
    v347 = v329;
    *&v348[33] = v338;
    *&v348[49] = v339;
    *&v348[65] = v340[0];
    *&v348[1] = v336;
    v335 = v330;
    v356 = 1;
    v348[0] = v330;
    *&v348[80] = *(v340 + 15);
    *&v348[17] = v337;
    v349 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyACyACyAA08ModifiedD0Vy07WorkoutB017CadenceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgAEyAF04PacehI0VAMGSgGACyAEyAF05PowerhI0VAMGSgAOGGACyACyAEyAF08DistanceH4TextVAMGSgAEyAF06EnergyhI0VAMGSgGACyAEyAF0h7HeadingI0VyAA0Q0VGAMGSgAEyAF0hQ0VAA022_EnvironmentKeyWritingL0VyALSgGGSgGGGACyACyACyAEyAEyAA5ImageVAMGAF0H9ValueFontVGSgASGACyAsXGGACyACyACyAEyA16_AMGA36_GSgASGACyAEyAF011ElapsedTimeI0VAMGSgACyACyAEyAEyAEyAEyA11_AF0f12NotificationY0VGA18_y12CoreGraphics7CGFloatVGGA18_ySiSgGGAMGA55_GA55_GSgGGGGMd, &_s7SwiftUI19_ConditionalContentVyACyACyACyAA08ModifiedD0Vy07WorkoutB017CadenceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgAEyAF04PacehI0VAMGSgGACyAEyAF05PowerhI0VAMGSgAOGGACyACyAEyAF08DistanceH4TextVAMGSgAEyAF06EnergyhI0VAMGSgGACyAEyAF0h7HeadingI0VyAA0Q0VGAMGSgAEyAF0hQ0VAA022_EnvironmentKeyWritingL0VyALSgGGSgGGGACyACyACyAEyAEyAA5ImageVAMGAF0H9ValueFontVGSgASGACyAsXGGACyACyACyAEyA16_AMGA36_GSgASGACyAEyAF011ElapsedTimeI0VAMGSgACyACyAEyAEyAEyAEyA11_AF0f12NotificationY0VGA18_y12CoreGraphics7CGFloatVGGA18_ySiSgGGAMGA55_GA55_GSgGGGGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy07WorkoutB015ElapsedTimeViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgAA4TextVGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy07WorkoutB015ElapsedTimeViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgAA4TextVGMR);
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<CadenceMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<PowerMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<CadenceMetricView, _ForegroundStyleModifier<Color>>?>>, _ConditionalContent<_ConditionalContent<ModifiedContent<DistanceMetricText, _ForegroundStyleModifier<Color>>?, ModifiedContent<EnergyMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<MetricHeadingView<Text>, _ForegroundStyleModifier<Color>>?, ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<Color?>>?>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<Image, _ForegroundStyleModifier<Color>>, MetricValueFont>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedC();
    lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ElapsedTimeView, _ForegroundStyleModifier<Color>>?, Text> and conformance <> _ConditionalContent<A, B>();
    _ConditionalContent<>.init(storage:)();
    outlined consume of Text.Storage(v320, v254, v257);

    v361 = v354;
    v362 = *v355;
    v363[0] = *&v355[16];
    *(v363 + 13) = *&v355[29];
    v357 = v350;
    v358 = v351;
    v359 = v352;
    v360 = v353;
    (*(v27 + 8))(v30, v26);
    goto LABEL_67;
  }

  v244 = dispatch thunk of WorkoutNotificationUnit.value.getter();
  if (v245)
  {
    v246 = 0;
    v247 = 0;
LABEL_191:
    v350 = v246;
    v351 = v247;
    LOBYTE(v352) = 0;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB015ElapsedTimeViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB015ElapsedTimeViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMR);
    lazy protocol witness table accessor for type ModifiedContent<ElapsedTimeView, _ForegroundStyleModifier<Color>>? and conformance <A> A?(&lazy protocol witness table cache variable for type ModifiedContent<ElapsedTimeView, _ForegroundStyleModifier<Color>>? and conformance <A> A?, &_s7SwiftUI15ModifiedContentVy07WorkoutB015ElapsedTimeViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB015ElapsedTimeViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMR, lazy protocol witness table accessor for type ModifiedContent<ElapsedTimeView, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>);
    _ConditionalContent<>.init(storage:)();
    LOBYTE(v328._countAndFlagsBits) = v338;
    v335 = 1;
    v346 = v336;
    v347 = v337;
    v348[0] = v338;
    v349 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyACyACyAA08ModifiedD0Vy07WorkoutB017CadenceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgAEyAF04PacehI0VAMGSgGACyAEyAF05PowerhI0VAMGSgAOGGACyACyAEyAF08DistanceH4TextVAMGSgAEyAF06EnergyhI0VAMGSgGACyAEyAF0h7HeadingI0VyAA0Q0VGAMGSgAEyAF0hQ0VAA022_EnvironmentKeyWritingL0VyALSgGGSgGGGACyACyACyAEyAEyAA5ImageVAMGAF0H9ValueFontVGSgASGACyAsXGGACyACyACyAEyA16_AMGA36_GSgASGACyAEyAF011ElapsedTimeI0VAMGSgACyACyAEyAEyAEyAEyA11_AF0f12NotificationY0VGA18_y12CoreGraphics7CGFloatVGGA18_ySiSgGGAMGA55_GA55_GSgGGGGMd, &_s7SwiftUI19_ConditionalContentVyACyACyACyAA08ModifiedD0Vy07WorkoutB017CadenceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgAEyAF04PacehI0VAMGSgGACyAEyAF05PowerhI0VAMGSgAOGGACyACyAEyAF08DistanceH4TextVAMGSgAEyAF06EnergyhI0VAMGSgGACyAEyAF0h7HeadingI0VyAA0Q0VGAMGSgAEyAF0hQ0VAA022_EnvironmentKeyWritingL0VyALSgGGSgGGGACyACyACyAEyAEyAA5ImageVAMGAF0H9ValueFontVGSgASGACyAsXGGACyACyACyAEyA16_AMGA36_GSgASGACyAEyAF011ElapsedTimeI0VAMGSgACyACyAEyAEyAEyAEyA11_AF0f12NotificationY0VGA18_y12CoreGraphics7CGFloatVGGA18_ySiSgGGAMGA55_GA55_GSgGGGGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy07WorkoutB015ElapsedTimeViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgAA4TextVGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy07WorkoutB015ElapsedTimeViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgAA4TextVGMR);
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<CadenceMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<PowerMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<CadenceMetricView, _ForegroundStyleModifier<Color>>?>>, _ConditionalContent<_ConditionalContent<ModifiedContent<DistanceMetricText, _ForegroundStyleModifier<Color>>?, ModifiedContent<EnergyMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<MetricHeadingView<Text>, _ForegroundStyleModifier<Color>>?, ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<Color?>>?>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<Image, _ForegroundStyleModifier<Color>>, MetricValueFont>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedC();
    lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ElapsedTimeView, _ForegroundStyleModifier<Color>>?, Text> and conformance <> _ConditionalContent<A, B>();
    _ConditionalContent<>.init(storage:)();

    v361 = v354;
    v362 = *v355;
    v363[0] = *&v355[16];
    *(v363 + 13) = *&v355[29];
    v357 = v350;
    v358 = v351;
    v91 = v352;
    v92 = v353;
    goto LABEL_66;
  }

  v246 = v244;
  v247 = v320;
  if (v320)
  {
LABEL_190:

    goto LABEL_191;
  }

  v282 = [objc_opt_self() elapsedTimeColors];
  if (!v282)
  {
LABEL_245:
    __break(1u);
    goto LABEL_246;
  }

  v283 = v282;
  v284 = [v282 nonGradientTextColor];

  if (v284)
  {
    v247 = Color.init(uiColor:)();
    goto LABEL_190;
  }

LABEL_246:
  __break(1u);
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ElapsedTimeView, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ElapsedTimeView, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ElapsedTimeView, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB015ElapsedTimeViewVAA24_ForegroundStyleModifierVyAA5ColorVGGMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB015ElapsedTimeViewVAA24_ForegroundStyleModifierVyAA5ColorVGGMR);
    lazy protocol witness table accessor for type ElapsedTimeView and conformance ElapsedTimeView();
    _s7SwiftUI24_ForegroundStyleModifierVyAA5ColorVGACyxGAA04ViewE0AAWlTm_7(&lazy protocol witness table cache variable for type _ForegroundStyleModifier<Color> and conformance _ForegroundStyleModifier<A>, &_s7SwiftUI24_ForegroundStyleModifierVyAA5ColorVGMd, &_s7SwiftUI24_ForegroundStyleModifierVyAA5ColorVGMR, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ElapsedTimeView, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<CadenceMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<PowerMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<CadenceMetricView, _ForegroundStyleModifier<Color>>?>>, _ConditionalContent<_ConditionalContent<ModifiedContent<DistanceMetricText, _ForegroundStyleModifier<Color>>?, ModifiedContent<EnergyMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<MetricHeadingView<Text>, _ForegroundStyleModifier<Color>>?, ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<Color?>>?>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<Image, _ForegroundStyleModifier<Color>>, MetricValueFont>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedC()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<CadenceMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<PowerMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<CadenceMetricView, _ForegroundStyleModifier<Color>>?>>, _ConditionalContent<_ConditionalContent<ModifiedContent<DistanceMetricText, _ForegroundStyleModifier<Color>>?, ModifiedContent<EnergyMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<MetricHeadingView<Text>, _ForegroundStyleModifier<Color>>?, ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<Color?>>?>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<Image, _ForegroundStyleModifier<Color>>, MetricValueFont>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<Mod;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<CadenceMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<PowerMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<CadenceMetricView, _ForegroundStyleModifier<Color>>?>>, _ConditionalContent<_ConditionalContent<ModifiedContent<DistanceMetricText, _ForegroundStyleModifier<Color>>?, ModifiedContent<EnergyMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<MetricHeadingView<Text>, _ForegroundStyleModifier<Color>>?, ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<Color?>>?>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<Image, _ForegroundStyleModifier<Color>>, MetricValueFont>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<Mod)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyACyACyACyAA08ModifiedD0Vy07WorkoutB017CadenceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgAEyAF04PacehI0VAMGSgGACyAEyAF05PowerhI0VAMGSgAOGGACyACyAEyAF08DistanceH4TextVAMGSgAEyAF06EnergyhI0VAMGSgGACyAEyAF0h7HeadingI0VyAA0Q0VGAMGSgAEyAF0hQ0VAA022_EnvironmentKeyWritingL0VyALSgGGSgGGGACyACyACyAEyAEyAA5ImageVAMGAF0H9ValueFontVGSgASGACyAsXGGACyACyACyAEyA16_AMGA36_GSgASGACyAEyAF011ElapsedTimeI0VAMGSgACyACyAEyAEyAEyAEyA11_AF0f12NotificationY0VGA18_y12CoreGraphics7CGFloatVGGA18_ySiSgGGAMGA55_GA55_GSgGGGGMd, &_s7SwiftUI19_ConditionalContentVyACyACyACyAA08ModifiedD0Vy07WorkoutB017CadenceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgAEyAF04PacehI0VAMGSgGACyAEyAF05PowerhI0VAMGSgAOGGACyACyAEyAF08DistanceH4TextVAMGSgAEyAF06EnergyhI0VAMGSgGACyAEyAF0h7HeadingI0VyAA0Q0VGAMGSgAEyAF0hQ0VAA022_EnvironmentKeyWritingL0VyALSgGGSgGGGACyACyACyAEyAEyAA5ImageVAMGAF0H9ValueFontVGSgASGACyAsXGGACyACyACyAEyA16_AMGA36_GSgASGACyAEyAF011ElapsedTimeI0VAMGSgACyACyAEyAEyAEyAEyA11_AF0f12NotificationY0VGA18_y12CoreGraphics7CGFloatVGGA18_ySiSgGGAMGA55_GA55_GSgGGGGMR);
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<CadenceMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<PowerMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<CadenceMetricView, _ForegroundStyleModifier<Color>>?>>, _ConditionalContent<_ConditionalContent<ModifiedContent<DistanceMetricText, _ForegroundStyleModifier<Color>>?, ModifiedContent<EnergyMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<MetricHeadingView<Text>, _ForegroundStyleModifier<Color>>?, ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<Color?>>?>>> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<Image, _ForegroundStyleModifier<Color>>, MetricValueFont>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<PowerMetricView, _ForegroundStyleModifier<Color>>?>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<MetricText, _ForegroundStyleModifier<Color>>, ModifiedContent<MetricText, _ForegroundStyleModifier<Color>>>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<ElapsedTimeView, _ForegroundStyleModifier<Color>>?, _ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>, Modifie();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<CadenceMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<PowerMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<CadenceMetricView, _ForegroundStyleModifier<Color>>?>>, _ConditionalContent<_ConditionalContent<ModifiedContent<DistanceMetricText, _ForegroundStyleModifier<Color>>?, ModifiedContent<EnergyMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<MetricHeadingView<Text>, _ForegroundStyleModifier<Color>>?, ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<Color?>>?>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<Image, _ForegroundStyleModifier<Color>>, MetricValueFont>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<Mod);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<CadenceMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<PowerMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<CadenceMetricView, _ForegroundStyleModifier<Color>>?>>, _ConditionalContent<_ConditionalContent<ModifiedContent<DistanceMetricText, _ForegroundStyleModifier<Color>>?, ModifiedContent<EnergyMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<MetricHeadingView<Text>, _ForegroundStyleModifier<Color>>?, ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<Color?>>?>>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<CadenceMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<PowerMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<CadenceMetricView, _ForegroundStyleModifier<Color>>?>>, _ConditionalContent<_ConditionalContent<ModifiedContent<DistanceMetricText, _ForegroundStyleModifier<Color>>?, ModifiedContent<EnergyMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<MetricHeadingView<Text>, _ForegroundStyleModifier<Color>>?, ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<Color?>>?>>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<CadenceMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<PowerMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<CadenceMetricView, _ForegroundStyleModifier<Color>>?>>, _ConditionalContent<_ConditionalContent<ModifiedContent<DistanceMetricText, _ForegroundStyleModifier<Color>>?, ModifiedContent<EnergyMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<MetricHeadingView<Text>, _ForegroundStyleModifier<Color>>?, ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<Color?>>?>>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyACyACyAA08ModifiedD0Vy07WorkoutB017CadenceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgAEyAF04PacehI0VAMGSgGACyAEyAF05PowerhI0VAMGSgAOGGACyACyAEyAF08DistanceH4TextVAMGSgAEyAF06EnergyhI0VAMGSgGACyAEyAF0h7HeadingI0VyAA0Q0VGAMGSgAEyAF0hQ0VAA022_EnvironmentKeyWritingL0VyALSgGGSgGGGMd, &_s7SwiftUI19_ConditionalContentVyACyACyAA08ModifiedD0Vy07WorkoutB017CadenceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgAEyAF04PacehI0VAMGSgGACyAEyAF05PowerhI0VAMGSgAOGGACyACyAEyAF08DistanceH4TextVAMGSgAEyAF06EnergyhI0VAMGSgGACyAEyAF0h7HeadingI0VyAA0Q0VGAMGSgAEyAF0hQ0VAA022_EnvironmentKeyWritingL0VyALSgGGSgGGGMR);
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<ModifiedContent<CadenceMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<PowerMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<CadenceMetricView, _ForegroundStyleModifier<Color>>?>> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<ModifiedContent<DistanceMetricText, _ForegroundStyleModifier<Color>>?, ModifiedContent<EnergyMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<MetricHeadingView<Text>, _ForegroundStyleModifier<Color>>?, ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<Color?>>?>> and conformance <> _ConditionalContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<CadenceMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<PowerMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<CadenceMetricView, _ForegroundStyleModifier<Color>>?>>, _ConditionalContent<_ConditionalContent<ModifiedContent<DistanceMetricText, _ForegroundStyleModifier<Color>>?, ModifiedContent<EnergyMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<MetricHeadingView<Text>, _ForegroundStyleModifier<Color>>?, ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<Color?>>?>>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<ModifiedContent<CadenceMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<PowerMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<CadenceMetricView, _ForegroundStyleModifier<Color>>?>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<ModifiedContent<CadenceMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<PowerMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<CadenceMetricView, _ForegroundStyleModifier<Color>>?>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<ModifiedContent<CadenceMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<PowerMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<CadenceMetricView, _ForegroundStyleModifier<Color>>?>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyACyAA08ModifiedD0Vy07WorkoutB017CadenceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgAEyAF04PacehI0VAMGSgGACyAEyAF05PowerhI0VAMGSgAOGGMd, &_s7SwiftUI19_ConditionalContentVyACyAA08ModifiedD0Vy07WorkoutB017CadenceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgAEyAF04PacehI0VAMGSgGACyAEyAF05PowerhI0VAMGSgAOGGMR);
    lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<CadenceMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<PowerMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<CadenceMetricView, _ForegroundStyleModifier<Color>>?> and conformance <> _ConditionalContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<ModifiedContent<CadenceMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<PowerMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<CadenceMetricView, _ForegroundStyleModifier<Color>>?>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<CadenceMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<CadenceMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<CadenceMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy07WorkoutB017CadenceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgAEyAF04PacehI0VAMGSgGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy07WorkoutB017CadenceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgAEyAF04PacehI0VAMGSgGMR);
    lazy protocol witness table accessor for type ModifiedContent<ElapsedTimeView, _ForegroundStyleModifier<Color>>? and conformance <A> A?(&lazy protocol witness table cache variable for type ModifiedContent<CadenceMetricView, _ForegroundStyleModifier<Color>>? and conformance <A> A?, &_s7SwiftUI15ModifiedContentVy07WorkoutB017CadenceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB017CadenceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMR, lazy protocol witness table accessor for type ModifiedContent<CadenceMetricView, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>);
    lazy protocol witness table accessor for type ModifiedContent<ElapsedTimeView, _ForegroundStyleModifier<Color>>? and conformance <A> A?(&lazy protocol witness table cache variable for type ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>? and conformance <A> A?, &_s7SwiftUI15ModifiedContentVy07WorkoutB014PaceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB014PaceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMR, lazy protocol witness table accessor for type ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<CadenceMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<CadenceMetricView, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<CadenceMetricView, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<CadenceMetricView, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB017CadenceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB017CadenceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGMR);
    lazy protocol witness table accessor for type CadenceMetricView and conformance CadenceMetricView();
    _s7SwiftUI24_ForegroundStyleModifierVyAA5ColorVGACyxGAA04ViewE0AAWlTm_7(&lazy protocol witness table cache variable for type _ForegroundStyleModifier<Color> and conformance _ForegroundStyleModifier<A>, &_s7SwiftUI24_ForegroundStyleModifierVyAA5ColorVGMd, &_s7SwiftUI24_ForegroundStyleModifierVyAA5ColorVGMR, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<CadenceMetricView, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB014PaceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB014PaceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGMR);
    lazy protocol witness table accessor for type PaceMetricView and conformance PaceMetricView();
    _s7SwiftUI24_ForegroundStyleModifierVyAA5ColorVGACyxGAA04ViewE0AAWlTm_7(&lazy protocol witness table cache variable for type _ForegroundStyleModifier<Color> and conformance _ForegroundStyleModifier<A>, &_s7SwiftUI24_ForegroundStyleModifierVyAA5ColorVGMd, &_s7SwiftUI24_ForegroundStyleModifierVyAA5ColorVGMR, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<PowerMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<CadenceMetricView, _ForegroundStyleModifier<Color>>?> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<PowerMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<CadenceMetricView, _ForegroundStyleModifier<Color>>?> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<PowerMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<CadenceMetricView, _ForegroundStyleModifier<Color>>?> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy07WorkoutB015PowerMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgAEyAF07CadencehI0VAMGSgGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy07WorkoutB015PowerMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgAEyAF07CadencehI0VAMGSgGMR);
    lazy protocol witness table accessor for type ModifiedContent<ElapsedTimeView, _ForegroundStyleModifier<Color>>? and conformance <A> A?(&lazy protocol witness table cache variable for type ModifiedContent<PowerMetricView, _ForegroundStyleModifier<Color>>? and conformance <A> A?, &_s7SwiftUI15ModifiedContentVy07WorkoutB015PowerMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB015PowerMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMR, lazy protocol witness table accessor for type ModifiedContent<PowerMetricView, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>);
    lazy protocol witness table accessor for type ModifiedContent<ElapsedTimeView, _ForegroundStyleModifier<Color>>? and conformance <A> A?(&lazy protocol witness table cache variable for type ModifiedContent<CadenceMetricView, _ForegroundStyleModifier<Color>>? and conformance <A> A?, &_s7SwiftUI15ModifiedContentVy07WorkoutB017CadenceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB017CadenceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMR, lazy protocol witness table accessor for type ModifiedContent<CadenceMetricView, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<PowerMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<CadenceMetricView, _ForegroundStyleModifier<Color>>?> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<PowerMetricView, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<PowerMetricView, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<PowerMetricView, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB015PowerMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB015PowerMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGMR);
    lazy protocol witness table accessor for type PowerMetricView and conformance PowerMetricView();
    _s7SwiftUI24_ForegroundStyleModifierVyAA5ColorVGACyxGAA04ViewE0AAWlTm_7(&lazy protocol witness table cache variable for type _ForegroundStyleModifier<Color> and conformance _ForegroundStyleModifier<A>, &_s7SwiftUI24_ForegroundStyleModifierVyAA5ColorVGMd, &_s7SwiftUI24_ForegroundStyleModifierVyAA5ColorVGMR, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<PowerMetricView, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<ModifiedContent<DistanceMetricText, _ForegroundStyleModifier<Color>>?, ModifiedContent<EnergyMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<MetricHeadingView<Text>, _ForegroundStyleModifier<Color>>?, ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<Color?>>?>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<ModifiedContent<DistanceMetricText, _ForegroundStyleModifier<Color>>?, ModifiedContent<EnergyMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<MetricHeadingView<Text>, _ForegroundStyleModifier<Color>>?, ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<Color?>>?>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<ModifiedContent<DistanceMetricText, _ForegroundStyleModifier<Color>>?, ModifiedContent<EnergyMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<MetricHeadingView<Text>, _ForegroundStyleModifier<Color>>?, ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<Color?>>?>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyACyAA08ModifiedD0Vy07WorkoutB018DistanceMetricTextVAA24_ForegroundStyleModifierVyAA5ColorVGGSgAEyAF06EnergyH4ViewVAMGSgGACyAEyAF0h7HeadingO0VyAA0I0VGAMGSgAEyAF0hI0VAA022_EnvironmentKeyWritingL0VyALSgGGSgGGMd, &_s7SwiftUI19_ConditionalContentVyACyAA08ModifiedD0Vy07WorkoutB018DistanceMetricTextVAA24_ForegroundStyleModifierVyAA5ColorVGGSgAEyAF06EnergyH4ViewVAMGSgGACyAEyAF0h7HeadingO0VyAA0I0VGAMGSgAEyAF0hI0VAA022_EnvironmentKeyWritingL0VyALSgGGSgGGMR);
    lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<DistanceMetricText, _ForegroundStyleModifier<Color>>?, ModifiedContent<EnergyMetricView, _ForegroundStyleModifier<Color>>?> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<MetricHeadingView<Text>, _ForegroundStyleModifier<Color>>?, ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<Color?>>?> and conformance <> _ConditionalContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<ModifiedContent<DistanceMetricText, _ForegroundStyleModifier<Color>>?, ModifiedContent<EnergyMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<MetricHeadingView<Text>, _ForegroundStyleModifier<Color>>?, ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<Color?>>?>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<DistanceMetricText, _ForegroundStyleModifier<Color>>?, ModifiedContent<EnergyMetricView, _ForegroundStyleModifier<Color>>?> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<DistanceMetricText, _ForegroundStyleModifier<Color>>?, ModifiedContent<EnergyMetricView, _ForegroundStyleModifier<Color>>?> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<DistanceMetricText, _ForegroundStyleModifier<Color>>?, ModifiedContent<EnergyMetricView, _ForegroundStyleModifier<Color>>?> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy07WorkoutB018DistanceMetricTextVAA24_ForegroundStyleModifierVyAA5ColorVGGSgAEyAF06EnergyH4ViewVAMGSgGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy07WorkoutB018DistanceMetricTextVAA24_ForegroundStyleModifierVyAA5ColorVGGSgAEyAF06EnergyH4ViewVAMGSgGMR);
    lazy protocol witness table accessor for type ModifiedContent<ElapsedTimeView, _ForegroundStyleModifier<Color>>? and conformance <A> A?(&lazy protocol witness table cache variable for type ModifiedContent<DistanceMetricText, _ForegroundStyleModifier<Color>>? and conformance <A> A?, &_s7SwiftUI15ModifiedContentVy07WorkoutB018DistanceMetricTextVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB018DistanceMetricTextVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMR, lazy protocol witness table accessor for type ModifiedContent<DistanceMetricText, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>);
    lazy protocol witness table accessor for type ModifiedContent<ElapsedTimeView, _ForegroundStyleModifier<Color>>? and conformance <A> A?(&lazy protocol witness table cache variable for type ModifiedContent<EnergyMetricView, _ForegroundStyleModifier<Color>>? and conformance <A> A?, &_s7SwiftUI15ModifiedContentVy07WorkoutB016EnergyMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB016EnergyMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMR, lazy protocol witness table accessor for type ModifiedContent<EnergyMetricView, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<DistanceMetricText, _ForegroundStyleModifier<Color>>?, ModifiedContent<EnergyMetricView, _ForegroundStyleModifier<Color>>?> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<DistanceMetricText, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<DistanceMetricText, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<DistanceMetricText, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB018DistanceMetricTextVAA24_ForegroundStyleModifierVyAA5ColorVGGMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB018DistanceMetricTextVAA24_ForegroundStyleModifierVyAA5ColorVGGMR);
    lazy protocol witness table accessor for type DistanceMetricText and conformance DistanceMetricText();
    _s7SwiftUI24_ForegroundStyleModifierVyAA5ColorVGACyxGAA04ViewE0AAWlTm_7(&lazy protocol witness table cache variable for type _ForegroundStyleModifier<Color> and conformance _ForegroundStyleModifier<A>, &_s7SwiftUI24_ForegroundStyleModifierVyAA5ColorVGMd, &_s7SwiftUI24_ForegroundStyleModifierVyAA5ColorVGMR, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<DistanceMetricText, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<EnergyMetricView, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<EnergyMetricView, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<EnergyMetricView, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB016EnergyMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB016EnergyMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGMR);
    lazy protocol witness table accessor for type EnergyMetricView and conformance EnergyMetricView();
    _s7SwiftUI24_ForegroundStyleModifierVyAA5ColorVGACyxGAA04ViewE0AAWlTm_7(&lazy protocol witness table cache variable for type _ForegroundStyleModifier<Color> and conformance _ForegroundStyleModifier<A>, &_s7SwiftUI24_ForegroundStyleModifierVyAA5ColorVGMd, &_s7SwiftUI24_ForegroundStyleModifierVyAA5ColorVGMR, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<EnergyMetricView, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<MetricHeadingView<Text>, _ForegroundStyleModifier<Color>>?, ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<Color?>>?> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<MetricHeadingView<Text>, _ForegroundStyleModifier<Color>>?, ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<Color?>>?> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<MetricHeadingView<Text>, _ForegroundStyleModifier<Color>>?, ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<Color?>>?> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy07WorkoutB017MetricHeadingViewVyAA4TextVGAA24_ForegroundStyleModifierVyAA5ColorVGGSgAEyAF0gJ0VAA022_EnvironmentKeyWritingM0VyAOSgGGSgGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy07WorkoutB017MetricHeadingViewVyAA4TextVGAA24_ForegroundStyleModifierVyAA5ColorVGGSgAEyAF0gJ0VAA022_EnvironmentKeyWritingM0VyAOSgGGSgGMR);
    lazy protocol witness table accessor for type ModifiedContent<ElapsedTimeView, _ForegroundStyleModifier<Color>>? and conformance <A> A?(&lazy protocol witness table cache variable for type ModifiedContent<MetricHeadingView<Text>, _ForegroundStyleModifier<Color>>? and conformance <A> A?, &_s7SwiftUI15ModifiedContentVy07WorkoutB017MetricHeadingViewVyAA4TextVGAA24_ForegroundStyleModifierVyAA5ColorVGGSgMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB017MetricHeadingViewVyAA4TextVGAA24_ForegroundStyleModifierVyAA5ColorVGGSgMR, lazy protocol witness table accessor for type ModifiedContent<MetricHeadingView<Text>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>);
    lazy protocol witness table accessor for type ModifiedContent<ElapsedTimeView, _ForegroundStyleModifier<Color>>? and conformance <A> A?(&lazy protocol witness table cache variable for type ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<Color?>>? and conformance <A> A?, &_s7SwiftUI15ModifiedContentVy07WorkoutB010MetricTextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGSgMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB010MetricTextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGSgMR, lazy protocol witness table accessor for type ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<MetricHeadingView<Text>, _ForegroundStyleModifier<Color>>?, ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<Color?>>?> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<MetricHeadingView<Text>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<MetricHeadingView<Text>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<MetricHeadingView<Text>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB017MetricHeadingViewVyAA4TextVGAA24_ForegroundStyleModifierVyAA5ColorVGGMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB017MetricHeadingViewVyAA4TextVGAA24_ForegroundStyleModifierVyAA5ColorVGGMR);
    _s7SwiftUI24_ForegroundStyleModifierVyAA5ColorVGACyxGAA04ViewE0AAWlTm_7(&lazy protocol witness table cache variable for type MetricHeadingView<Text> and conformance MetricHeadingView<A>, &_s9WorkoutUI17MetricHeadingViewVy05SwiftB04TextVGMd, &_s9WorkoutUI17MetricHeadingViewVy05SwiftB04TextVGMR, &protocol conformance descriptor for MetricHeadingView<A>);
    _s7SwiftUI24_ForegroundStyleModifierVyAA5ColorVGACyxGAA04ViewE0AAWlTm_7(&lazy protocol witness table cache variable for type _ForegroundStyleModifier<Color> and conformance _ForegroundStyleModifier<A>, &_s7SwiftUI24_ForegroundStyleModifierVyAA5ColorVGMd, &_s7SwiftUI24_ForegroundStyleModifierVyAA5ColorVGMR, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<MetricHeadingView<Text>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB010MetricTextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB010MetricTextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMR);
    lazy protocol witness table accessor for type MetricText and conformance MetricText();
    _s7SwiftUI24_ForegroundStyleModifierVyAA5ColorVGACyxGAA04ViewE0AAWlTm_7(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Color?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVSgGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVSgGMR, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<Image, _ForegroundStyleModifier<Color>>, MetricValueFont>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<PowerMetricView, _ForegroundStyleModifier<Color>>?>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<MetricText, _ForegroundStyleModifier<Color>>, ModifiedContent<MetricText, _ForegroundStyleModifier<Color>>>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<ElapsedTimeView, _ForegroundStyleModifier<Color>>?, _ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>, Modifie()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<Image, _ForegroundStyleModifier<Color>>, MetricValueFont>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<PowerMetricView, _ForegroundStyleModifier<Color>>?>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<MetricText, _ForegroundStyleModifier<Color>>, ModifiedContent<MetricText, _ForegroundStyleModifier<Color>>>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<ElapsedTimeView, _ForegroundStyleModifier<Color>>?, _ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>, M;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<Image, _ForegroundStyleModifier<Color>>, MetricValueFont>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<PowerMetricView, _ForegroundStyleModifier<Color>>?>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<MetricText, _ForegroundStyleModifier<Color>>, ModifiedContent<MetricText, _ForegroundStyleModifier<Color>>>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<ElapsedTimeView, _ForegroundStyleModifier<Color>>?, _ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>, M)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyACyACyAA08ModifiedD0VyAEyAA5ImageVAA24_ForegroundStyleModifierVyAA5ColorVGG07WorkoutB015MetricValueFontVGSgAEyAN04PaceL4ViewVALGSgGACyAvEyAN05PowerlP0VALGSgGGACyACyACyAEyAN0L4TextVALGA4_GSgAVGACyAEyAN011ElapsedTimeP0VALGSgACyACyAEyAEyAEyAEyAA0R0VAN0k12NotificationN0VGAA022_EnvironmentKeyWritingI0Vy12CoreGraphics7CGFloatVGGA18_ySiSgGGALGA27_GA27_GSgGGGMd, &_s7SwiftUI19_ConditionalContentVyACyACyAA08ModifiedD0VyAEyAA5ImageVAA24_ForegroundStyleModifierVyAA5ColorVGG07WorkoutB015MetricValueFontVGSgAEyAN04PaceL4ViewVALGSgGACyAvEyAN05PowerlP0VALGSgGGACyACyACyAEyAN0L4TextVALGA4_GSgAVGACyAEyAN011ElapsedTimeP0VALGSgACyACyAEyAEyAEyAEyAA0R0VAN0k12NotificationN0VGAA022_EnvironmentKeyWritingI0Vy12CoreGraphics7CGFloatVGGA18_ySiSgGGALGA27_GA27_GSgGGGMR);
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<Image, _ForegroundStyleModifier<Color>>, MetricValueFont>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<PowerMetricView, _ForegroundStyleModifier<Color>>?>> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<MetricText, _ForegroundStyleModifier<Color>>, ModifiedContent<MetricText, _ForegroundStyleModifier<Color>>>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<ElapsedTimeView, _ForegroundStyleModifier<Color>>?, _ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<Image, _ForegroundStyleModifier<Color>>, MetricValueFont>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<PowerMetricView, _ForegroundStyleModifier<Color>>?>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<MetricText, _ForegroundStyleModifier<Color>>, ModifiedContent<MetricText, _ForegroundStyleModifier<Color>>>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<ElapsedTimeView, _ForegroundStyleModifier<Color>>?, _ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>, M);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<Image, _ForegroundStyleModifier<Color>>, MetricValueFont>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<PowerMetricView, _ForegroundStyleModifier<Color>>?>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<Image, _ForegroundStyleModifier<Color>>, MetricValueFont>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<PowerMetricView, _ForegroundStyleModifier<Color>>?>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<Image, _ForegroundStyleModifier<Color>>, MetricValueFont>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<PowerMetricView, _ForegroundStyleModifier<Color>>?>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyACyAA08ModifiedD0VyAEyAA5ImageVAA24_ForegroundStyleModifierVyAA5ColorVGG07WorkoutB015MetricValueFontVGSgAEyAN04PaceL4ViewVALGSgGACyAvEyAN05PowerlP0VALGSgGGMd, &_s7SwiftUI19_ConditionalContentVyACyAA08ModifiedD0VyAEyAA5ImageVAA24_ForegroundStyleModifierVyAA5ColorVGG07WorkoutB015MetricValueFontVGSgAEyAN04PaceL4ViewVALGSgGACyAvEyAN05PowerlP0VALGSgGGMR);
    lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ModifiedContent<Image, _ForegroundStyleModifier<Color>>, MetricValueFont>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<PowerMetricView, _ForegroundStyleModifier<Color>>?> and conformance <> _ConditionalContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<Image, _ForegroundStyleModifier<Color>>, MetricValueFont>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<PowerMetricView, _ForegroundStyleModifier<Color>>?>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ModifiedContent<Image, _ForegroundStyleModifier<Color>>, MetricValueFont>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<Image, _ForegroundStyleModifier<Color>>, MetricValueFont>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<Image, _ForegroundStyleModifier<Color>>, MetricValueFont>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAA5ImageVAA24_ForegroundStyleModifierVyAA5ColorVGG07WorkoutB015MetricValueFontVGSgAEyAN04PaceL4ViewVALGSgGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAA5ImageVAA24_ForegroundStyleModifierVyAA5ColorVGG07WorkoutB015MetricValueFontVGSgAEyAN04PaceL4ViewVALGSgGMR);
    lazy protocol witness table accessor for type ModifiedContent<ElapsedTimeView, _ForegroundStyleModifier<Color>>? and conformance <A> A?(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Image, _ForegroundStyleModifier<Color>>, MetricValueFont>? and conformance <A> A?, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA24_ForegroundStyleModifierVyAA5ColorVGG07WorkoutB015MetricValueFontVGSgMd, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA24_ForegroundStyleModifierVyAA5ColorVGG07WorkoutB015MetricValueFontVGSgMR, lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Image, _ForegroundStyleModifier<Color>>, MetricValueFont> and conformance <> ModifiedContent<A, B>);
    lazy protocol witness table accessor for type ModifiedContent<ElapsedTimeView, _ForegroundStyleModifier<Color>>? and conformance <A> A?(&lazy protocol witness table cache variable for type ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>? and conformance <A> A?, &_s7SwiftUI15ModifiedContentVy07WorkoutB014PaceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB014PaceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMR, lazy protocol witness table accessor for type ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<Image, _ForegroundStyleModifier<Color>>, MetricValueFont>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Image, _ForegroundStyleModifier<Color>>, MetricValueFont> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Image, _ForegroundStyleModifier<Color>>, MetricValueFont> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Image, _ForegroundStyleModifier<Color>>, MetricValueFont> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA24_ForegroundStyleModifierVyAA5ColorVGG07WorkoutB015MetricValueFontVGMd, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA24_ForegroundStyleModifierVyAA5ColorVGG07WorkoutB015MetricValueFontVGMR);
    lazy protocol witness table accessor for type ModifiedContent<Image, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type MetricValueFont and conformance MetricValueFont();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Image, _ForegroundStyleModifier<Color>>, MetricValueFont> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<PowerMetricView, _ForegroundStyleModifier<Color>>?> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<PowerMetricView, _ForegroundStyleModifier<Color>>?> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<PowerMetricView, _ForegroundStyleModifier<Color>>?> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy07WorkoutB014PaceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgAEyAF05PowerhI0VAMGSgGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy07WorkoutB014PaceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgAEyAF05PowerhI0VAMGSgGMR);
    lazy protocol witness table accessor for type ModifiedContent<ElapsedTimeView, _ForegroundStyleModifier<Color>>? and conformance <A> A?(&lazy protocol witness table cache variable for type ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>? and conformance <A> A?, &_s7SwiftUI15ModifiedContentVy07WorkoutB014PaceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB014PaceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMR, lazy protocol witness table accessor for type ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>);
    lazy protocol witness table accessor for type ModifiedContent<ElapsedTimeView, _ForegroundStyleModifier<Color>>? and conformance <A> A?(&lazy protocol witness table cache variable for type ModifiedContent<PowerMetricView, _ForegroundStyleModifier<Color>>? and conformance <A> A?, &_s7SwiftUI15ModifiedContentVy07WorkoutB015PowerMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB015PowerMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMR, lazy protocol witness table accessor for type ModifiedContent<PowerMetricView, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<PowerMetricView, _ForegroundStyleModifier<Color>>?> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<MetricText, _ForegroundStyleModifier<Color>>, ModifiedContent<MetricText, _ForegroundStyleModifier<Color>>>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<ElapsedTimeView, _ForegroundStyleModifier<Color>>?, _ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<MetricText, _ForegroundStyleModifier<Color>>, ModifiedContent<MetricText, _ForegroundStyleModifier<Color>>>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<ElapsedTimeView, _ForegroundStyleModifier<Color>>?, _ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifi;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<MetricText, _ForegroundStyleModifier<Color>>, ModifiedContent<MetricText, _ForegroundStyleModifier<Color>>>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<ElapsedTimeView, _ForegroundStyleModifier<Color>>?, _ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifi)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyACyACyAA08ModifiedD0Vy07WorkoutB010MetricTextVAA24_ForegroundStyleModifierVyAA5ColorVGGANGSgAEyAF04PaceG4ViewVAMGSgGACyAEyAF011ElapsedTimeN0VAMGSgACyACyAEyAEyAEyAEyAA0H0VAF0F16NotificationFontVGAA022_EnvironmentKeyWritingK0Vy12CoreGraphics7CGFloatVGGA4_ySiSgGGAMGA13_GA13_GSgGGMd, &_s7SwiftUI19_ConditionalContentVyACyACyAA08ModifiedD0Vy07WorkoutB010MetricTextVAA24_ForegroundStyleModifierVyAA5ColorVGGANGSgAEyAF04PaceG4ViewVAMGSgGACyAEyAF011ElapsedTimeN0VAMGSgACyACyAEyAEyAEyAEyAA0H0VAF0F16NotificationFontVGAA022_EnvironmentKeyWritingK0Vy12CoreGraphics7CGFloatVGGA4_ySiSgGGAMGA13_GA13_GSgGGMR);
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<ModifiedContent<MetricText, _ForegroundStyleModifier<Color>>, ModifiedContent<MetricText, _ForegroundStyleModifier<Color>>>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ElapsedTimeView, _ForegroundStyleModifier<Color>>?, _ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>>?> and conformance <> _ConditionalContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<MetricText, _ForegroundStyleModifier<Color>>, ModifiedContent<MetricText, _ForegroundStyleModifier<Color>>>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<ElapsedTimeView, _ForegroundStyleModifier<Color>>?, _ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifi);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<ModifiedContent<MetricText, _ForegroundStyleModifier<Color>>, ModifiedContent<MetricText, _ForegroundStyleModifier<Color>>>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<ModifiedContent<MetricText, _ForegroundStyleModifier<Color>>, ModifiedContent<MetricText, _ForegroundStyleModifier<Color>>>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<ModifiedContent<MetricText, _ForegroundStyleModifier<Color>>, ModifiedContent<MetricText, _ForegroundStyleModifier<Color>>>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyACyAA08ModifiedD0Vy07WorkoutB010MetricTextVAA24_ForegroundStyleModifierVyAA5ColorVGGANGSgAEyAF04PaceG4ViewVAMGSgGMd, &_s7SwiftUI19_ConditionalContentVyACyAA08ModifiedD0Vy07WorkoutB010MetricTextVAA24_ForegroundStyleModifierVyAA5ColorVGGANGSgAEyAF04PaceG4ViewVAMGSgGMR);
    lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<MetricText, _ForegroundStyleModifier<Color>>, ModifiedContent<MetricText, _ForegroundStyleModifier<Color>>>? and conformance <A> A?();
    lazy protocol witness table accessor for type ModifiedContent<ElapsedTimeView, _ForegroundStyleModifier<Color>>? and conformance <A> A?(&lazy protocol witness table cache variable for type ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>? and conformance <A> A?, &_s7SwiftUI15ModifiedContentVy07WorkoutB014PaceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB014PaceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMR, lazy protocol witness table accessor for type ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<ModifiedContent<MetricText, _ForegroundStyleModifier<Color>>, ModifiedContent<MetricText, _ForegroundStyleModifier<Color>>>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<MetricText, _ForegroundStyleModifier<Color>>, ModifiedContent<MetricText, _ForegroundStyleModifier<Color>>>? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<MetricText, _ForegroundStyleModifier<Color>>, ModifiedContent<MetricText, _ForegroundStyleModifier<Color>>>? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<MetricText, _ForegroundStyleModifier<Color>>, ModifiedContent<MetricText, _ForegroundStyleModifier<Color>>>? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy07WorkoutB010MetricTextVAA24_ForegroundStyleModifierVyAA5ColorVGGANGSgMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy07WorkoutB010MetricTextVAA24_ForegroundStyleModifierVyAA5ColorVGGANGSgMR);
    lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<MetricText, _ForegroundStyleModifier<Color>>, ModifiedContent<MetricText, _ForegroundStyleModifier<Color>>> and conformance <> _ConditionalContent<A, B>(&lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<MetricText, _ForegroundStyleModifier<Color>>, ModifiedContent<MetricText, _ForegroundStyleModifier<Color>>> and conformance <> _ConditionalContent<A, B>, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy07WorkoutB010MetricTextVAA24_ForegroundStyleModifierVyAA5ColorVGGANGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy07WorkoutB010MetricTextVAA24_ForegroundStyleModifierVyAA5ColorVGGANGMR, lazy protocol witness table accessor for type ModifiedContent<MetricText, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<MetricText, _ForegroundStyleModifier<Color>>, ModifiedContent<MetricText, _ForegroundStyleModifier<Color>>>? and conformance <A> A?);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ElapsedTimeView, _ForegroundStyleModifier<Color>>?, _ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>>?> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ElapsedTimeView, _ForegroundStyleModifier<Color>>?, _ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>>?> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ElapsedTimeView, _ForegroundStyleModifier<Color>>?, _ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>>?> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy07WorkoutB015ElapsedTimeViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgACyACyAEyAEyAEyAEyAA4TextVAF0F16NotificationFontVGAA022_EnvironmentKeyWritingL0Vy12CoreGraphics7CGFloatVGGAVySiSgGGAMGA3_GA3_GSgGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy07WorkoutB015ElapsedTimeViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgACyACyAEyAEyAEyAEyAA4TextVAF0F16NotificationFontVGAA022_EnvironmentKeyWritingL0Vy12CoreGraphics7CGFloatVGGAVySiSgGGAMGA3_GA3_GSgGMR);
    lazy protocol witness table accessor for type ModifiedContent<ElapsedTimeView, _ForegroundStyleModifier<Color>>? and conformance <A> A?(&lazy protocol witness table cache variable for type ModifiedContent<ElapsedTimeView, _ForegroundStyleModifier<Color>>? and conformance <A> A?, &_s7SwiftUI15ModifiedContentVy07WorkoutB015ElapsedTimeViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB015ElapsedTimeViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMR, lazy protocol witness table accessor for type ModifiedContent<ElapsedTimeView, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>);
    lazy protocol witness table accessor for type ModifiedContent<ElapsedTimeView, _ForegroundStyleModifier<Color>>? and conformance <A> A?(&lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>>? and conformance <A> A?, &_s7SwiftUI19_ConditionalContentVyACyAA08ModifiedD0VyAEyAEyAEyAA4TextV07WorkoutB00G16NotificationFontVGAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGAMySiSgGGAA016_ForegroundStyleM0VyAA5ColorVGGA_GA_GSgMd, &_s7SwiftUI19_ConditionalContentVyACyAA08ModifiedD0VyAEyAEyAEyAA4TextV07WorkoutB00G16NotificationFontVGAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGAMySiSgGGAA016_ForegroundStyleM0VyAA5ColorVGGA_GA_GSgMR, lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>> and conformance <> _ConditionalContent<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ElapsedTimeView, _ForegroundStyleModifier<Color>>?, _ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>>?> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<ElapsedTimeView, _ForegroundStyleModifier<Color>>? and conformance <A> A?(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

unint64_t lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyACyAA08ModifiedD0VyAEyAEyAEyAA4TextV07WorkoutB00G16NotificationFontVGAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGAMySiSgGGAA016_ForegroundStyleM0VyAA5ColorVGGA_GA_GMd, &_s7SwiftUI19_ConditionalContentVyACyAA08ModifiedD0VyAEyAEyAEyAA4TextV07WorkoutB00G16NotificationFontVGAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGAMySiSgGGAA016_ForegroundStyleM0VyAA5ColorVGGA_GA_GMR);
    lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<MetricText, _ForegroundStyleModifier<Color>>, ModifiedContent<MetricText, _ForegroundStyleModifier<Color>>> and conformance <> _ConditionalContent<A, B>(&lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>> and conformance <> _ConditionalContent<A, B>, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEyAEyAA4TextV07WorkoutB00G16NotificationFontVGAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGAMySiSgGGAA016_ForegroundStyleM0VyAA5ColorVGGA_GMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEyAEyAA4TextV07WorkoutB00G16NotificationFontVGAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGAMySiSgGGAA016_ForegroundStyleM0VyAA5ColorVGGA_GMR, lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<MetricText, _ForegroundStyleModifier<Color>>, ModifiedContent<MetricText, _ForegroundStyleModifier<Color>>> and conformance <> _ConditionalContent<A, B>(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextV07WorkoutB00F16NotificationFontVGAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGAKySiSgGGAA016_ForegroundStyleL0VyAA5ColorVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextV07WorkoutB00F16NotificationFontVGAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGAKySiSgGGAA016_ForegroundStyleL0VyAA5ColorVGGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedContent<A, B>();
    _s7SwiftUI24_ForegroundStyleModifierVyAA5ColorVGACyxGAA04ViewE0AAWlTm_7(&lazy protocol witness table cache variable for type _ForegroundStyleModifier<Color> and conformance _ForegroundStyleModifier<A>, &_s7SwiftUI24_ForegroundStyleModifierVyAA5ColorVGMd, &_s7SwiftUI24_ForegroundStyleModifierVyAA5ColorVGMR, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ElapsedTimeView, _ForegroundStyleModifier<Color>>?, Text> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ElapsedTimeView, _ForegroundStyleModifier<Color>>?, Text> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ElapsedTimeView, _ForegroundStyleModifier<Color>>?, Text> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy07WorkoutB015ElapsedTimeViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgAA4TextVGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy07WorkoutB015ElapsedTimeViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgAA4TextVGMR);
    lazy protocol witness table accessor for type ModifiedContent<ElapsedTimeView, _ForegroundStyleModifier<Color>>? and conformance <A> A?(&lazy protocol witness table cache variable for type ModifiedContent<ElapsedTimeView, _ForegroundStyleModifier<Color>>? and conformance <A> A?, &_s7SwiftUI15ModifiedContentVy07WorkoutB015ElapsedTimeViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB015ElapsedTimeViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMR, lazy protocol witness table accessor for type ModifiedContent<ElapsedTimeView, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ElapsedTimeView, _ForegroundStyleModifier<Color>>?, Text> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

double outlined copy of ModifiedContent<ModifiedContent<Image, _ForegroundStyleModifier<Color>>, MetricValueFont>?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a1)
  {

    return outlined copy of Environment<WorkoutViewStyle>.Content(a4, a5 & 1);
  }

  return result;
}

uint64_t outlined consume of ModifiedContent<ModifiedContent<Image, _ForegroundStyleModifier<Color>>, MetricValueFont>?(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (result)
  {

    return outlined consume of Environment<WorkoutViewStyle>.Content(a4, a5 & 1);
  }

  return result;
}

uint64_t _s7SwiftUI24_ForegroundStyleModifierVyAA5ColorVGACyxGAA04ViewE0AAWlTm_7(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size_6(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

double outlined copy of ModifiedContent<EnergyMetricView, _ForegroundStyleModifier<Color>>?(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, char a6)
{
  if (a4)
  {
    v8 = a4;
    outlined copy of Environment<WorkoutViewStyle>.Content(a5, a6 & 1);
  }

  return result;
}

double outlined consume of ModifiedContent<EnergyMetricView, _ForegroundStyleModifier<Color>>?(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, char a6, uint64_t a7)
{
  if (a4)
  {

    outlined consume of Environment<WorkoutViewStyle>.Content(a5, a6 & 1);
  }

  return result;
}

uint64_t outlined init with copy of _ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>>?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t outlined destroy of _ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>>?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void specialized _parseInteger<A, B>(ascii:radix:)(uint64_t a1, uint64_t a2, int64_t a3)
{
  v72 = a1;
  v73 = a2;

  v4 = String.init<A>(_:)();
  v6 = v4;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = static String._copying(_:)(v4, v5);
    v40 = v39;

    v5 = v40;
    if ((v40 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      v7 = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v8 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v7 = _StringObject.sharedUTF8.getter();
      v8 = v71;
    }

    v9 = *v7;
    if (v9 == 43)
    {
      if (v8 >= 1)
      {
        v21 = v8 - 1;
        if (v21)
        {
          v22 = a3 + 48;
          v23 = a3 + 55;
          v24 = a3 + 87;
          if (a3 > 10)
          {
            v22 = 58;
          }

          else
          {
            v24 = 97;
            v23 = 65;
          }

          if (v7)
          {
            v25 = 0;
            v26 = v7 + 1;
            while (1)
            {
              v27 = *v26;
              if (v27 < 0x30 || v27 >= v22)
              {
                if (v27 < 0x41 || v27 >= v23)
                {
                  if (v27 < 0x61 || v27 >= v24)
                  {
                    goto LABEL_127;
                  }

                  v28 = -87;
                }

                else
                {
                  v28 = -55;
                }
              }

              else
              {
                v28 = -48;
              }

              if (is_mul_ok(v25, a3))
              {
                v29 = v25 * a3;
                v30 = v27 + v28;
                v20 = __CFADD__(v29, v30);
                v25 = v29 + v30;
                if (!v20)
                {
                  ++v26;
                  if (--v21)
                  {
                    continue;
                  }
                }
              }

              goto LABEL_127;
            }
          }
        }

        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v9 != 45)
    {
      if (v8)
      {
        v31 = a3 + 48;
        v32 = a3 + 55;
        v33 = a3 + 87;
        if (a3 > 10)
        {
          v31 = 58;
        }

        else
        {
          v33 = 97;
          v32 = 65;
        }

        if (v7)
        {
          v34 = 0;
          while (1)
          {
            v35 = *v7;
            if (v35 < 0x30 || v35 >= v31)
            {
              if (v35 < 0x41 || v35 >= v32)
              {
                if (v35 < 0x61 || v35 >= v33)
                {
                  goto LABEL_127;
                }

                v36 = -87;
              }

              else
              {
                v36 = -55;
              }
            }

            else
            {
              v36 = -48;
            }

            if (is_mul_ok(v34, a3))
            {
              v37 = v34 * a3;
              v38 = v35 + v36;
              v20 = __CFADD__(v37, v38);
              v34 = v37 + v38;
              if (!v20)
              {
                ++v7;
                if (--v8)
                {
                  continue;
                }
              }
            }

            goto LABEL_127;
          }
        }
      }

      goto LABEL_127;
    }

    if (v8 >= 1)
    {
      v10 = v8 - 1;
      if (v10)
      {
        v11 = a3 + 48;
        v12 = a3 + 55;
        v13 = a3 + 87;
        if (a3 > 10)
        {
          v11 = 58;
        }

        else
        {
          v13 = 97;
          v12 = 65;
        }

        if (v7)
        {
          v14 = 0;
          v15 = v7 + 1;
          while (1)
          {
            v16 = *v15;
            if (v16 < 0x30 || v16 >= v11)
            {
              if (v16 < 0x41 || v16 >= v12)
              {
                if (v16 < 0x61 || v16 >= v13)
                {
                  break;
                }

                v17 = -87;
              }

              else
              {
                v17 = -55;
              }
            }

            else
            {
              v17 = -48;
            }

            if (is_mul_ok(v14, a3))
            {
              v18 = v14 * a3;
              v19 = v16 + v17;
              v20 = v18 >= v19;
              v14 = v18 - v19;
              if (v20)
              {
                ++v15;
                if (--v10)
                {
                  continue;
                }
              }
            }

            break;
          }
        }
      }

LABEL_127:

      return;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v41 = HIBYTE(v5) & 0xF;
  v72 = v6;
  v73 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v41)
      {
        v62 = 0;
        v63 = a3 + 48;
        v64 = a3 + 55;
        v65 = a3 + 87;
        if (a3 > 10)
        {
          v63 = 58;
        }

        else
        {
          v65 = 97;
          v64 = 65;
        }

        v66 = &v72;
        while (1)
        {
          v67 = *v66;
          if (v67 < 0x30 || v67 >= v63)
          {
            if (v67 < 0x41 || v67 >= v64)
            {
              if (v67 < 0x61 || v67 >= v65)
              {
                goto LABEL_127;
              }

              v68 = -87;
            }

            else
            {
              v68 = -55;
            }
          }

          else
          {
            v68 = -48;
          }

          if (is_mul_ok(v62, a3))
          {
            v69 = v62 * a3;
            v70 = v67 + v68;
            v20 = __CFADD__(v69, v70);
            v62 = v69 + v70;
            if (!v20)
            {
              v66 = (v66 + 1);
              if (--v41)
              {
                continue;
              }
            }
          }

          goto LABEL_127;
        }
      }

      goto LABEL_127;
    }

    if (v41)
    {
      v42 = v41 - 1;
      if (v42)
      {
        v43 = 0;
        v44 = a3 + 48;
        v45 = a3 + 55;
        v46 = a3 + 87;
        if (a3 > 10)
        {
          v44 = 58;
        }

        else
        {
          v46 = 97;
          v45 = 65;
        }

        v47 = &v72 + 1;
        while (1)
        {
          v48 = *v47;
          if (v48 < 0x30 || v48 >= v44)
          {
            if (v48 < 0x41 || v48 >= v45)
            {
              if (v48 < 0x61 || v48 >= v46)
              {
                goto LABEL_127;
              }

              v49 = -87;
            }

            else
            {
              v49 = -55;
            }
          }

          else
          {
            v49 = -48;
          }

          if (is_mul_ok(v43, a3))
          {
            v50 = v43 * a3;
            v51 = v48 + v49;
            v20 = v50 >= v51;
            v43 = v50 - v51;
            if (v20)
            {
              ++v47;
              if (--v42)
              {
                continue;
              }
            }
          }

          goto LABEL_127;
        }
      }

      goto LABEL_127;
    }

    goto LABEL_130;
  }

  if (v41)
  {
    v52 = v41 - 1;
    if (v52)
    {
      v53 = 0;
      v54 = a3 + 48;
      v55 = a3 + 55;
      v56 = a3 + 87;
      if (a3 > 10)
      {
        v54 = 58;
      }

      else
      {
        v56 = 97;
        v55 = 65;
      }

      v57 = &v72 + 1;
      while (1)
      {
        v58 = *v57;
        if (v58 < 0x30 || v58 >= v54)
        {
          if (v58 < 0x41 || v58 >= v55)
          {
            if (v58 < 0x61 || v58 >= v56)
            {
              goto LABEL_127;
            }

            v59 = -87;
          }

          else
          {
            v59 = -55;
          }
        }

        else
        {
          v59 = -48;
        }

        if (is_mul_ok(v53, a3))
        {
          v60 = v53 * a3;
          v61 = v58 + v59;
          v20 = __CFADD__(v60, v61);
          v53 = v60 + v61;
          if (!v20)
          {
            ++v57;
            if (--v52)
            {
              continue;
            }
          }
        }

        goto LABEL_127;
      }
    }

    goto LABEL_127;
  }

LABEL_132:
  __break(1u);
}

uint64_t static String._copying(_:)(uint64_t a1, unint64_t a2)
{
  v2 = String.subscript.getter();
  v6 = static String._copying(_:)(v2, v3, v4, v5);

  return v6;
}

uint64_t static String._copying(_:)(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = Substring.UTF8View.distance(from:to:)();
    if (!v9 || (v10 = v9, v11 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v9, 0), v12 = specialized Sequence._copySequenceContents(initializing:)(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = static String._uncheckedFromUTF8(_:)();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return static String._uncheckedFromUTF8(_:)();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  _StringObject.sharedUTF8.getter();
LABEL_4:

  return static String._uncheckedFromUTF8(_:)();
}

unint64_t specialized Sequence._copySequenceContents(initializing:)(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = _StringGuts._slowEnsureMatchingEncoding(_:)(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = String.UTF8View._foreignSubscript(position:)();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = _StringObject.sharedUTF8.getter();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = _StringGuts._slowEnsureMatchingEncoding(_:)(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = String.UTF8View._foreignIndex(after:)();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

unint64_t _StringGuts._slowEnsureMatchingEncoding(_:)(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = String.UTF16View.index(_:offsetBy:)();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x20F30BC30](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<CadenceMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<PowerMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<CadenceMetricView, _ForegroundStyleModifier<Color>>?>>, _ConditionalContent<_ConditionalContent<ModifiedContent<DistanceMetricText, _ForegroundStyleModifier<Color>>?, ModifiedContent<EnergyMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<MetricHeadingView<Text>, _ForegroundStyleModifier<Color>>?, ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<Color?>>?>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<Image, _ForegroundStyleModifier<Color>>, MetricValueFont>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?>, _Conditio()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<CadenceMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<PowerMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<CadenceMetricView, _ForegroundStyleModifier<Color>>?>>, _ConditionalContent<_ConditionalContent<ModifiedContent<DistanceMetricText, _ForegroundStyleModifier<Color>>?, ModifiedContent<EnergyMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<MetricHeadingView<Text>, _ForegroundStyleModifier<Color>>?, ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<Color?>>?>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<Image, _ForegroundStyleModifier<Color>>, MetricValueFont>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?>, _Co;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<CadenceMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<PowerMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<CadenceMetricView, _ForegroundStyleModifier<Color>>?>>, _ConditionalContent<_ConditionalContent<ModifiedContent<DistanceMetricText, _ForegroundStyleModifier<Color>>?, ModifiedContent<EnergyMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<MetricHeadingView<Text>, _ForegroundStyleModifier<Color>>?, ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<Color?>>?>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<Image, _ForegroundStyleModifier<Color>>, MetricValueFont>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?>, _Co)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyACyACyACyACyAA08ModifiedD0Vy07WorkoutB017CadenceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgAEyAF04PacehI0VAMGSgGACyAEyAF05PowerhI0VAMGSgAOGGACyACyAEyAF08DistanceH4TextVAMGSgAEyAF06EnergyhI0VAMGSgGACyAEyAF0h7HeadingI0VyAA0Q0VGAMGSgAEyAF0hQ0VAA022_EnvironmentKeyWritingL0VyALSgGGSgGGGACyACyACyAEyAEyAA5ImageVAMGAF0H9ValueFontVGSgASGACyAsXGGACyACyACyAEyA16_AMGA36_GSgASGACyAEyAF011ElapsedTimeI0VAMGSgACyACyAEyAEyAEyAEyA11_AF0f12NotificationY0VGA18_y12CoreGraphics7CGFloatVGGA18_ySiSgGGAMGA55_GA55_GSgGGGGACyA43_A11_GGMd, &_s7SwiftUI19_ConditionalContentVyACyACyACyACyAA08ModifiedD0Vy07WorkoutB017CadenceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgAEyAF04PacehI0VAMGSgGACyAEyAF05PowerhI0VAMGSgAOGGACyACyAEyAF08DistanceH4TextVAMGSgAEyAF06EnergyhI0VAMGSgGACyAEyAF0h7HeadingI0VyAA0Q0VGAMGSgAEyAF0hQ0VAA022_EnvironmentKeyWritingL0VyALSgGGSgGGGACyACyACyAEyAEyAA5ImageVAMGAF0H9ValueFontVGSgASGACyAsXGGACyACyACyAEyA16_AMGA36_GSgASGACyAEyAF011ElapsedTimeI0VAMGSgACyACyAEyAEyAEyAEyA11_AF0f12NotificationY0VGA18_y12CoreGraphics7CGFloatVGGA18_ySiSgGGAMGA55_GA55_GSgGGGGACyA43_A11_GGMR);
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<CadenceMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<PowerMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<CadenceMetricView, _ForegroundStyleModifier<Color>>?>>, _ConditionalContent<_ConditionalContent<ModifiedContent<DistanceMetricText, _ForegroundStyleModifier<Color>>?, ModifiedContent<EnergyMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<MetricHeadingView<Text>, _ForegroundStyleModifier<Color>>?, ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<Color?>>?>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<Image, _ForegroundStyleModifier<Color>>, MetricValueFont>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedC();
    lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ElapsedTimeView, _ForegroundStyleModifier<Color>>?, Text> and conformance <> _ConditionalContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<CadenceMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<PowerMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<CadenceMetricView, _ForegroundStyleModifier<Color>>?>>, _ConditionalContent<_ConditionalContent<ModifiedContent<DistanceMetricText, _ForegroundStyleModifier<Color>>?, ModifiedContent<EnergyMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<MetricHeadingView<Text>, _ForegroundStyleModifier<Color>>?, ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<Color?>>?>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<Image, _ForegroundStyleModifier<Color>>, MetricValueFont>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?>, _Co);
  }

  return result;
}

void closure #1 in ARUIRingsViewWrapper.setCompletionPercentage(animated:)(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = *(Strong + OBJC_IVAR____TtC9WorkoutUI20ARUIRingsViewWrapper_storedRingsView);
    v3 = Strong;
    v4 = v2;

    if (v2)
    {
      v5 = [v4 ringGroup];

      swift_beginAccess();
      v6 = swift_unknownObjectWeakLoadStrong();
      if (v6)
      {
        v7 = *&v6[OBJC_IVAR____TtC9WorkoutUI20ARUIRingsViewWrapper_completionPercentage];

        *&v8 = v7;
      }

      else
      {
        v8 = 0.0;
      }

      [v5 setPercentage:0 ofRingAtIndex:0 animated:v8];
    }
  }
}

void ARUIRingsViewWrapper.resetRingsView()()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC9WorkoutUI20ARUIRingsViewWrapper_storedRingsView;
  v3 = *&v0[OBJC_IVAR____TtC9WorkoutUI20ARUIRingsViewWrapper_storedRingsView];
  if (v3)
  {
    [v3 removeFromSuperview];
  }

  v4 = [objc_allocWithZone(MEMORY[0x277CE8E90]) initWithNumberOfRings_];
  [v4 setPercentage:0 ofRingAtIndex:0 animated:0.0];
  v5 = [objc_allocWithZone(MEMORY[0x277CE8EA8]) initWithRingGroup_];
  v6 = objc_opt_self();
  v7 = v5;
  v8 = [v6 clearColor];
  [v7 setBackgroundColor_];

  v9 = *&v1[OBJC_IVAR____TtC9WorkoutUI20ARUIRingsViewWrapper_diameter] + -1.0;
  *&v9 = v9;
  [v4 setGroupDiameter_];
  v10 = *&v1[OBJC_IVAR____TtC9WorkoutUI20ARUIRingsViewWrapper_thickness];
  *&v10 = v10;
  [v4 setThickness_];
  v11 = OBJC_IVAR____TtC9WorkoutUI20ARUIRingsViewWrapper_goal;
  v12 = [*&v1[OBJC_IVAR____TtC9WorkoutUI20ARUIRingsViewWrapper_goal] goalTypeIdentifier];
  v13 = objc_opt_self();
  v14 = [v13 metricColorsForGoalTypeIdentifier_];
  v15 = [v14 gradientDarkColor];

  if (!v15)
  {
    __break(1u);
    goto LABEL_9;
  }

  v16 = [v13 metricColorsForGoalTypeIdentifier_];
  v17 = [v16 gradientLightColor];

  if (!v17)
  {
LABEL_9:
    __break(1u);
    return;
  }

  [v4 setTopColor:v15 bottomColor:v17 ofRingAtIndex:0];

  v18 = [v7 ringGroup];
  LODWORD(v19) = 1045220557;
  [v18 setEmptyOpacity_];

  v20 = [v7 ringGroup];
  v21 = *&v1[OBJC_IVAR____TtC9WorkoutUI20ARUIRingsViewWrapper_completionPercentage];
  *&v21 = v21;
  [v20 setPercentage:0 ofRingAtIndex:0 animated:v21];

  [v1 addSubview_];
  v22 = [v7 leadingAnchor];
  v23 = [v1 leadingAnchor];
  v24 = [v22 constraintEqualToAnchor_];

  [v24 setActive_];
  v25 = [v7 trailingAnchor];
  v26 = [v1 trailingAnchor];
  v27 = [v25 constraintEqualToAnchor_];

  [v27 setActive_];
  v28 = [v7 topAnchor];
  v29 = [v1 topAnchor];
  v30 = [v28 constraintEqualToAnchor_];

  [v30 setActive_];
  v31 = [v7 bottomAnchor];

  v32 = [v1 bottomAnchor];
  v33 = [v31 constraintEqualToAnchor_];

  [v33 setActive_];
  v34 = *&v1[v2];
  *&v1[v2] = v7;
}

id ARUIRingsViewWrapper.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ARUIRingsViewWrapper();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

char *WorkoutCountdownRingView.__allocating_init(diameter:thickness:topColor:bottomColor:isOpaque:)(void *a1, void *a2, uint64_t a3, float a4, float a5)
{
  v6 = a3;
  v11 = objc_allocWithZone(v5);
  return WorkoutCountdownRingView.init(diameter:thickness:topColor:bottomColor:isOpaque:)(a1, a2, v6, a4, a5);
}

Swift::Void __swiftcall WorkoutCountdownRingView.prepare()()
{
  v1 = *(v0 + OBJC_IVAR____TtC9WorkoutUI24WorkoutCountdownRingView_animator);
  [v1 setCountdownView_];

  [v1 prepareToAnimate];
}

uint64_t key path getter for WorkoutCountdownRingView.onCountdownStep : WorkoutCountdownRingView@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC9WorkoutUI24WorkoutCountdownRingView_onCountdownStep);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = _s9WorkoutUI0A13CountdownStepOIegn_ACytIegnr_TRTA_0;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_20C69A264(v4, v5);
}

uint64_t key path setter for WorkoutCountdownRingView.onCountdownStep : WorkoutCountdownRingView(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = _s9WorkoutUI0A13CountdownStepOytIegnr_ACIegn_TRTA_0;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC9WorkoutUI24WorkoutCountdownRingView_onCountdownStep);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_20C69A264(v3, v4);
  return sub_20C69A274(v8, v9);
}

uint64_t key path getter for WorkoutCountdownRingView.onCountdownWindUp : WorkoutCountdownRingView@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC9WorkoutUI24WorkoutCountdownRingView_onCountdownWindUp);
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
  return sub_20C69A264(v4, v5);
}

uint64_t key path setter for WorkoutCountdownRingView.onCountdownWindUp : WorkoutCountdownRingView(uint64_t *a1, void *a2)
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

  v7 = (*a2 + OBJC_IVAR____TtC9WorkoutUI24WorkoutCountdownRingView_onCountdownWindUp);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_20C69A264(v3, v4);
  return sub_20C69A274(v8, v9);
}

uint64_t key path getter for WorkoutCountdownRingView.onCountdownFadeOut : WorkoutCountdownRingView@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC9WorkoutUI24WorkoutCountdownRingView_onCountdownFadeOut);
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
  return sub_20C69A264(v4, v5);
}

uint64_t key path setter for WorkoutCountdownRingView.onCountdownFadeOut : WorkoutCountdownRingView(uint64_t *a1, void *a2)
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

  v7 = (*a2 + OBJC_IVAR____TtC9WorkoutUI24WorkoutCountdownRingView_onCountdownFadeOut);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_20C69A264(v3, v4);
  return sub_20C69A274(v8, v9);
}

uint64_t key path getter for WorkoutCountdownRingView.onCountdownCompleted : WorkoutCountdownRingView@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC9WorkoutUI24WorkoutCountdownRingView_onCountdownCompleted);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = _sIeg_ytIegr_TRTA_4;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_20C69A264(v4, v5);
}

uint64_t key path setter for WorkoutCountdownRingView.onCountdownCompleted : WorkoutCountdownRingView(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = _sytIegr_Ieg_TRTA_4;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC9WorkoutUI24WorkoutCountdownRingView_onCountdownCompleted);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_20C69A264(v3, v4);
  return sub_20C69A274(v8, v9);
}

uint64_t WorkoutCountdownRingView.onCountdownStep.getter(void *a1, void (*a2)(void, void, __n128))
{
  v4 = (v2 + *a1);
  swift_beginAccess();
  v5 = *v4;
  (a2)(*v4, v4[1]);
  return v5;
}

uint64_t WorkoutCountdownRingView.onCountdownStep.setter(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v8 = (v4 + *a3);
  swift_beginAccess();
  v9 = *v8;
  v10 = v8[1];
  *v8 = a1;
  v8[1] = a2;
  return a4(v9, v10);
}

char *WorkoutCountdownRingView.init(diameter:thickness:topColor:bottomColor:isOpaque:)(void *a1, void *a2, char a3, float a4, float a5)
{
  v11 = &v5[OBJC_IVAR____TtC9WorkoutUI24WorkoutCountdownRingView_onCountdownStep];
  *v11 = 0;
  *(v11 + 1) = 0;
  v12 = &v5[OBJC_IVAR____TtC9WorkoutUI24WorkoutCountdownRingView_onCountdownWindUp];
  *v12 = 0;
  *(v12 + 1) = 0;
  v13 = &v5[OBJC_IVAR____TtC9WorkoutUI24WorkoutCountdownRingView_onCountdownFadeOut];
  *v13 = 0;
  *(v13 + 1) = 0;
  v14 = &v5[OBJC_IVAR____TtC9WorkoutUI24WorkoutCountdownRingView_onCountdownCompleted];
  *v14 = 0;
  *(v14 + 1) = 0;
  v15 = OBJC_IVAR____TtC9WorkoutUI24WorkoutCountdownRingView_animator;
  v16 = [objc_allocWithZone(MEMORY[0x277CE8E68]) init];
  v17 = [objc_allocWithZone(MEMORY[0x277CE8E60]) initWithTimeline_];

  *&v5[v15] = v17;
  v18 = [objc_opt_self() countdownRingGroup];
  *&v19 = a4;
  [v18 setGroupDiameter_];
  *&v20 = a5;
  [v18 setThickness_];
  [v18 setPercentage:0 ofRingAtIndex:0 animated:0.0];
  [v18 setTopColor:a1 bottomColor:a2 ofRingAtIndex:0];
  v21 = [objc_allocWithZone(MEMORY[0x277CE8E88]) initWithRenderStyle_];
  v22 = [objc_allocWithZone(MEMORY[0x277CE8E70]) initWithRingGroup:v18 renderer:v21];
  v23 = OBJC_IVAR____TtC9WorkoutUI24WorkoutCountdownRingView_countdownView;
  *&v5[OBJC_IVAR____TtC9WorkoutUI24WorkoutCountdownRingView_countdownView] = v22;
  [v22 setOpaque_];
  [*&v5[v23] setTranslatesAutoresizingMaskIntoConstraints_];
  v56.receiver = v5;
  v56.super_class = type metadata accessor for WorkoutCountdownRingView();
  v24 = objc_msgSendSuper2(&v56, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v25 = *&v24[OBJC_IVAR____TtC9WorkoutUI24WorkoutCountdownRingView_animator];
  v26 = v24;
  [v25 setDelegate_];
  v27 = OBJC_IVAR____TtC9WorkoutUI24WorkoutCountdownRingView_countdownView;
  v28 = *&v26[OBJC_IVAR____TtC9WorkoutUI24WorkoutCountdownRingView_countdownView];
  v29 = v26;
  [v29 addSubview_];
  v53 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_20CB8EC00;
  v31 = [*&v26[v27] leadingAnchor];
  v32 = [v29 leadingAnchor];
  v33 = [v31 constraintEqualToAnchor_];

  *(v30 + 32) = v33;
  v34 = [*&v26[v27] trailingAnchor];
  v35 = [v29 trailingAnchor];

  v36 = [v34 constraintEqualToAnchor_];
  *(v30 + 40) = v36;
  v37 = [*&v26[v27] topAnchor];
  v38 = [v29 topAnchor];

  v39 = [v37 constraintEqualToAnchor_];
  *(v30 + 48) = v39;
  v40 = [*&v26[v27] bottomAnchor];
  v41 = [v29 bottomAnchor];

  v42 = [v40 constraintEqualToAnchor_];
  *(v30 + 56) = v42;
  v43 = [v29 widthAnchor];

  v44 = [*&v26[v27] ringGroup];
  [v44 groupDiameter];
  v46 = v45;

  v47 = [v43 constraintEqualToConstant_];
  *(v30 + 64) = v47;
  v48 = [v29 heightAnchor];

  v49 = [v29 widthAnchor];
  v50 = [v48 constraintEqualToAnchor_];

  *(v30 + 72) = v50;
  type metadata accessor for NSLayoutConstraint();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v53 activateConstraints_];

  return v29;
}

id WorkoutCountdownRingView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id WorkoutCountdownRingView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WorkoutCountdownRingView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void WorkoutCountdownRingView.countdownAnimatorDidFinishAnimating(_:)()
{
  v1 = v0 + OBJC_IVAR____TtC9WorkoutUI24WorkoutCountdownRingView_onCountdownCompleted;
  swift_beginAccess();
  v2 = *v1;
  if (*v1)
  {
    v3 = *(v1 + 8);

    v2(v4);
    sub_20C69A274(v2, v3);
  }
}

void specialized WorkoutCountdownRingView.init(coder:)()
{
  v1 = (v0 + OBJC_IVAR____TtC9WorkoutUI24WorkoutCountdownRingView_onCountdownStep);
  *v1 = 0;
  v1[1] = 0;
  v2 = (v0 + OBJC_IVAR____TtC9WorkoutUI24WorkoutCountdownRingView_onCountdownWindUp);
  *v2 = 0;
  v2[1] = 0;
  v3 = (v0 + OBJC_IVAR____TtC9WorkoutUI24WorkoutCountdownRingView_onCountdownFadeOut);
  *v3 = 0;
  v3[1] = 0;
  v4 = (v0 + OBJC_IVAR____TtC9WorkoutUI24WorkoutCountdownRingView_onCountdownCompleted);
  *v4 = 0;
  v4[1] = 0;
  v5 = OBJC_IVAR____TtC9WorkoutUI24WorkoutCountdownRingView_animator;
  v6 = [objc_allocWithZone(MEMORY[0x277CE8E68]) init];
  v7 = [objc_allocWithZone(MEMORY[0x277CE8E60]) initWithTimeline_];

  *(v0 + v5) = v7;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void specialized WorkoutCountdownRingView.countdownAnimator(_:performing:withDuration:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v54 = *(v4 - 8);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0) + 40;
  v8 = [a1 identifier];
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  v12 = objc_opt_self();
  v13 = [v12 windUpIdentifier];
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  if (v9 == v14 && v11 == v16)
  {
  }

  else
  {
    v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v18 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  v19 = &v2[OBJC_IVAR____TtC9WorkoutUI24WorkoutCountdownRingView_onCountdownWindUp];
  swift_beginAccess();
  v20 = *v19;
  if (*v19)
  {
    v21 = *(v19 + 1);

    v20(v22);
    sub_20C69A274(v20, v21);
  }

LABEL_10:
  v23 = [a1 identifier];
  v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v26 = v25;

  v27 = [v12 countdownIdentifier];
  v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v30 = v29;

  if (v24 == v28 && v26 == v30)
  {
  }

  else
  {
    v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v31 & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  if ([a1 respondsToSelector_])
  {
    v32 = [a1 countdownStep];
    v33 = v32 - 1;
    if ((v32 - 1) > 2)
    {
      static WOLog.default.getter();
      v51 = Logger.logObject.getter();
      v52 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        *v53 = 0;
        _os_log_impl(&dword_20C66F000, v51, v52, "Invalid Workout Countdown Step", v53, 2u);
        MEMORY[0x20F30E080](v53, -1, -1);
      }

      (*(v54 + 8))(v7, v4);
      return;
    }

    v34 = v32;
    v35 = &v2[OBJC_IVAR____TtC9WorkoutUI24WorkoutCountdownRingView_onCountdownStep];
    swift_beginAccess();
    v36 = *v35;
    if (*v35)
    {
      v37 = *(v35 + 1);
      v55[0] = v33;

      v36(v55);
      sub_20C69A274(v36, v37);
    }

    [v2 accessibilityUpdateCountdownToStep_];
  }

LABEL_19:
  v38 = [a1 identifier];
  v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v41 = v40;

  v42 = [v12 fadeOutIdentifier];
  v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v45 = v44;

  if (v39 == v43 && v41 == v45)
  {
  }

  else
  {
    v46 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v46 & 1) == 0)
    {
      return;
    }
  }

  v47 = &v2[OBJC_IVAR____TtC9WorkoutUI24WorkoutCountdownRingView_onCountdownFadeOut];
  swift_beginAccess();
  v48 = *v47;
  if (*v47)
  {
    v49 = *(v47 + 1);

    v48(v50);
    sub_20C69A274(v48, v49);
  }
}

uint64_t type metadata accessor for DistanceRemainingMetricView(uint64_t a1)
{
  result = type metadata singleton initialization cache for DistanceRemainingMetricView;
  if (!type metadata singleton initialization cache for DistanceRemainingMetricView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for DistanceRemainingMetricView(uint64_t a1)
{
  _sSo6HKUnitCMaTm_0(319, &lazy cache variable for type metadata for HKUnit, 0x277CCDAB0);
  if (v1 <= 0x3F)
  {
    type metadata accessor for StepType();
    if (v2 <= 0x3F)
    {
      _sSo6HKUnitCMaTm_0(319, &lazy cache variable for type metadata for FIUIFormattingManager, 0x277D0A7E8);
      if (v3 <= 0x3F)
      {
        type metadata accessor for FIUIDistanceType(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t _sSo6HKUnitCMaTm_0(uint64_t a1, unint64_t *a2, void *a3)
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

id DistanceRemainingMetricView.distanceString.getter()
{
  v1 = type metadata accessor for DistanceRemainingMetricView(0);
  v2 = *(v0 + *(v1 + 32));
  v3 = *(v0 + *(v1 + 28));
  v4 = *v0;
  v5 = *(v0 + 1);
  v6 = MEMORY[0x20F30D2C0](v5);
  if (v2 == 3)
  {
    result = [v3 localizedStringWithDistanceInMeters:3 distanceType:v6 distanceUnit:0 unitStyle:6 roundingMode:v4];
    if (result)
    {
LABEL_5:
      v9 = result;
      v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();

      return v10;
    }

    __break(1u);
  }

  v8 = objc_opt_self();
  result = [v3 localizedStringWithDistanceInMeters:v6 distanceUnit:0 unitStyle:objc_msgSend(v8 decimalPrecision:sel_defaultPrecisionForDistanceUnit_ roundingMode:MEMORY[0x20F30D2C0](v5)) decimalTrimmingMode:{6, 1, v4}];
  if (result)
  {
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

id DistanceRemainingMetricView.stepDescription.getter()
{
  v1 = *(v0 + *(type metadata accessor for DistanceRemainingMetricView(0) + 28));
  v2 = [objc_opt_self() meterUnit];
  v3 = [objc_opt_self() quantityWithUnit:v2 doubleValue:*v0];

  v4 = *(v0 + 8);
  [v3 doubleValueForUnit_];
  v6 = v5;

  v7 = MEMORY[0x20F30D2C0](v4);
  v8 = static Platform.current.getter();
  if (one-time initialization token for useLongUnitString != -1)
  {
    swift_once();
  }

  if (static DistanceRemainingMetricAppearance.useLongUnitString == 1)
  {
    result = [v1 localizedLongUnitStringForDistanceUnit:v7 distanceInUnit:v6];
    if (result)
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  result = [v1 localizedShortUnitStringForDistanceUnit_];
  if (!result)
  {
    __break(1u);
    return result;
  }

LABEL_7:
  v10 = result;
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  v14 = specialized static Localization.remainingDistanceLocalizationKey(unit:platform:)(v7, v8 & 1);
  v16 = v15;
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v17 = WorkoutUIBundle.super.isa;
  v25._object = 0xE000000000000000;
  v18.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v18.value._object = 0xEB00000000656C62;
  v19._countAndFlagsBits = v14;
  v19._object = v16;
  v20._countAndFlagsBits = 0;
  v20._object = 0xE000000000000000;
  v25._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v19, v18, v17, v20, v25);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_20CB5DA80;
  *(v21 + 56) = MEMORY[0x277D837D0];
  *(v21 + 64) = lazy protocol witness table accessor for type String and conformance String();
  v22 = MEMORY[0x277D839F8];
  *(v21 + 32) = v11;
  *(v21 + 40) = v13;
  v23 = MEMORY[0x277D83A80];
  *(v21 + 96) = v22;
  *(v21 + 104) = v23;
  *(v21 + 72) = v6;
  v24 = static String.localizedStringWithFormat(_:_:)();

  return v24;
}

__n128 DistanceRemainingMetricView.body.getter@<Q0>(uint64_t a1@<X8>)
{
  v12 = [objc_opt_self() distanceColors];
  if (!v12)
  {
    __break(1u);
    goto LABEL_8;
  }

  v2 = v12;
  v3 = [v12 nonGradientTextColor];

  if (!v3)
  {
LABEL_8:
    __break(1u);
    static os_log_type_t.fault.getter();
    v21 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    goto LABEL_6;
  }

  v2 = Color.init(uiColor:)();
  v3 = DistanceRemainingMetricView.distanceString.getter();
  v4 = v13;
  v1 = DistanceRemainingMetricView.stepDescription.getter();
  v5 = v14;
  v6 = static Edge.Set.leading.getter();
  MetricPlatterConstants.init()(v23);
  EdgeInsets.init(_all:)();
  v7 = v15;
  v8 = v16;
  v9 = v17;
  v10 = v18;
  if (one-time initialization token for stepViewMaxHeight != -1)
  {
    swift_once();
  }

  static Alignment.leading.getter();
LABEL_6:
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  *&v22[55] = v23[3];
  *&v22[71] = v23[4];
  *&v22[87] = v23[5];
  *&v22[103] = v23[6];
  *&v22[7] = v23[0];
  *&v22[23] = v23[1];
  *&v22[39] = v23[2];
  KeyPath = swift_getKeyPath();
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = v1;
  *(a1 + 40) = v5;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = v6;
  *(a1 + 80) = v7;
  *(a1 + 88) = v8;
  *(a1 + 96) = v9;
  *(a1 + 104) = v10;
  *(a1 + 112) = 0;
  *(a1 + 161) = *&v22[48];
  *(a1 + 145) = *&v22[32];
  *(a1 + 129) = *&v22[16];
  *(a1 + 113) = *v22;
  result = *&v22[64];
  *(a1 + 224) = *&v22[111];
  *(a1 + 232) = KeyPath;
  *(a1 + 209) = *&v22[96];
  *(a1 + 193) = *&v22[80];
  *(a1 + 177) = *&v22[64];
  *(a1 + 240) = v2;
  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<MetricText, _PaddingLayout>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<MetricText, _PaddingLayout>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<MetricText, _PaddingLayout>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACy07WorkoutB010MetricTextVAA14_PaddingLayoutVGAA010_FlexFrameI0VGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMd, &_s7SwiftUI15ModifiedContentVyACyACy07WorkoutB010MetricTextVAA14_PaddingLayoutVGAA010_FlexFrameI0VGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<MetricText, _PaddingLayout>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<Color?> and conformance _EnvironmentKeyWritingModifier<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<MetricText, _PaddingLayout>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<MetricText, _PaddingLayout>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<MetricText, _PaddingLayout>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<MetricText, _PaddingLayout>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACy07WorkoutB010MetricTextVAA14_PaddingLayoutVGAA010_FlexFrameI0VGMd, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB010MetricTextVAA14_PaddingLayoutVGAA010_FlexFrameI0VGMR);
    lazy protocol witness table accessor for type ModifiedContent<MetricText, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<MetricText, _PaddingLayout>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<MetricText, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<MetricText, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<MetricText, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB010MetricTextVAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB010MetricTextVAA14_PaddingLayoutVGMR);
    lazy protocol witness table accessor for type MetricText and conformance MetricText();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<MetricText, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void key path getter for WorkoutScrollingCoordinator.scrollToTop : WorkoutScrollingCoordinator(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type WorkoutScrollingCoordinator and conformance WorkoutScrollingCoordinator();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  *a2 = *(v3 + 16);
}

uint64_t WorkoutScrollingCoordinator.scrollToTop.getter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type WorkoutScrollingCoordinator and conformance WorkoutScrollingCoordinator();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  return *(v0 + 16);
}

unint64_t lazy protocol witness table accessor for type WorkoutScrollingCoordinator and conformance WorkoutScrollingCoordinator()
{
  result = lazy protocol witness table cache variable for type WorkoutScrollingCoordinator and conformance WorkoutScrollingCoordinator;
  if (!lazy protocol witness table cache variable for type WorkoutScrollingCoordinator and conformance WorkoutScrollingCoordinator)
  {
    type metadata accessor for WorkoutScrollingCoordinator(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkoutScrollingCoordinator and conformance WorkoutScrollingCoordinator);
  }

  return result;
}

uint64_t type metadata accessor for WorkoutScrollingCoordinator(uint64_t a1)
{
  result = type metadata singleton initialization cache for WorkoutScrollingCoordinator;
  if (!type metadata singleton initialization cache for WorkoutScrollingCoordinator)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void WorkoutScrollingCoordinator.scrollToTop.setter(char a1)
{
  v2 = a1 & 1;
  swift_beginAccess();
  if (*(v1 + 16) == v2)
  {
    *(v1 + 16) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    lazy protocol witness table accessor for type WorkoutScrollingCoordinator and conformance WorkoutScrollingCoordinator();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

void _s9WorkoutUI0A20ScrollingCoordinatorC11scrollToTopSbvsyyXEfU_TA_0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  swift_beginAccess();
  *(v1 + 16) = v2;
}

uint64_t (*WorkoutScrollingCoordinator.scrollToTop.modify(uint64_t *a1))()
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
  v4[5] = OBJC_IVAR____TtC9WorkoutUI27WorkoutScrollingCoordinator___observationRegistrar;
  *v4 = v1;
  v4[6] = lazy protocol witness table accessor for type WorkoutScrollingCoordinator and conformance WorkoutScrollingCoordinator();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = WorkoutScrollingCoordinator._scrollToTop.modify(v4);
  return WorkoutScrollingCoordinator.scrollToTop.modify;
}

id key path getter for WorkoutScrollingCoordinator.scrollToActivityType : WorkoutScrollingCoordinator@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type WorkoutScrollingCoordinator and conformance WorkoutScrollingCoordinator();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  v4 = *(v3 + 24);
  *a2 = v4;

  return v4;
}

void key path setter for WorkoutScrollingCoordinator.scrollToActivityType : WorkoutScrollingCoordinator(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  WorkoutScrollingCoordinator.scrollToActivityType.setter(v1);
}

void *WorkoutScrollingCoordinator.scrollToActivityType.getter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type WorkoutScrollingCoordinator and conformance WorkoutScrollingCoordinator();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

void WorkoutScrollingCoordinator.scrollToActivityType.setter(void *a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = *(v1 + 24);
  if (!v4)
  {
    if (!a1)
    {
      v8 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    lazy protocol witness table accessor for type WorkoutScrollingCoordinator and conformance WorkoutScrollingCoordinator();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  type metadata accessor for FIUIWorkoutActivityType();
  v5 = v4;
  v6 = a1;
  v7 = static NSObject.== infix(_:_:)();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v2 + 24);
LABEL_8:
  *(v2 + 24) = a1;
}

void closure #1 in WorkoutScrollingCoordinator.scrollToActivityType.setter(uint64_t a1, void *a2)
{
  swift_beginAccess();
  v4 = *(a1 + 24);
  *(a1 + 24) = a2;
  v5 = a2;
}

uint64_t (*WorkoutScrollingCoordinator.scrollToActivityType.modify(uint64_t *a1))()
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
  v4[5] = OBJC_IVAR____TtC9WorkoutUI27WorkoutScrollingCoordinator___observationRegistrar;
  *v4 = v1;
  v4[6] = lazy protocol witness table accessor for type WorkoutScrollingCoordinator and conformance WorkoutScrollingCoordinator();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = WorkoutScrollingCoordinator._scrollToActivityType.modify(v4);
  return WorkoutScrollingCoordinator.scrollToActivityType.modify;
}

void WorkoutScrollingCoordinator.scrollToTop.modify(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v3 = v3[4];
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  free(v3);
}

uint64_t WorkoutScrollingCoordinator.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  ObservationRegistrar.init()();
  return v0;
}

uint64_t WorkoutScrollingCoordinator.init()(uint64_t a1)
{
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  ObservationRegistrar.init()();
  return v1;
}

uint64_t WorkoutScrollingCoordinator.deinit()
{
  v1 = OBJC_IVAR____TtC9WorkoutUI27WorkoutScrollingCoordinator___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t WorkoutScrollingCoordinator.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC9WorkoutUI27WorkoutScrollingCoordinator___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata completion function for WorkoutScrollingCoordinator(uint64_t a1)
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

uint64_t type metadata accessor for PacePickerViewWatch(uint64_t a1)
{
  result = type metadata singleton initialization cache for PacePickerViewWatch;
  if (!type metadata singleton initialization cache for PacePickerViewWatch)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for PacePickerViewWatch(uint64_t a1)
{
  type metadata accessor for Environment<DismissAction>(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for ObservedObject<PacePickerViewModel>(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for ObservedObject<PacePickerViewModel>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ObservedObject<PacePickerViewModel>)
  {
    type metadata accessor for PacePickerViewModel(255);
    lazy protocol witness table accessor for type PacePickerViewModel and conformance PacePickerViewModel();
    v1 = type metadata accessor for ObservedObject();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ObservedObject<PacePickerViewModel>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type PacePickerViewModel and conformance PacePickerViewModel()
{
  result = lazy protocol witness table cache variable for type PacePickerViewModel and conformance PacePickerViewModel;
  if (!lazy protocol witness table cache variable for type PacePickerViewModel and conformance PacePickerViewModel)
  {
    type metadata accessor for PacePickerViewModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PacePickerViewModel and conformance PacePickerViewModel);
  }

  return result;
}

uint64_t PacePickerViewWatch.dismiss.getter@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMR);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  _s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVG07WorkoutB0012PinnedBottomE13ModifierPhoneVGWOcTm_1(v2, &v14 - v9, &_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMR);
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

uint64_t PacePickerViewWatch.body.getter@<X0>(uint64_t a2@<X8>)
{
  *a2 = static HorizontalAlignment.center.getter();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA14GeometryReaderVyAA15ModifiedContentVyAA0F0VyAIyAMyAMyAMyAA6PickerVyAA05EmptyD0VSiAA7ForEachVySaySiGSiAA0D0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_GGAA010_FlexFrameG0VGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleZ0VyAA14TintShapeStyleVGG_AA6SpacerVtGGAA01_vG0VGG_AMyAA6ButtonVyA0_G07WorkoutB0018PinnedBottomButtonZ5PhoneVGtGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA14GeometryReaderVyAA15ModifiedContentVyAA0F0VyAIyAMyAMyAMyAA6PickerVyAA05EmptyD0VSiAA7ForEachVySaySiGSiAA0D0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_GGAA010_FlexFrameG0VGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleZ0VyAA14TintShapeStyleVGG_AA6SpacerVtGGAA01_vG0VGG_AMyAA6ButtonVyA0_G07WorkoutB0018PinnedBottomButtonZ5PhoneVGtGGMR);
  closure #1 in PacePickerViewWatch.body.getter(v2, (a2 + *(v4 + 44)));
  v5 = (*(v2 + *(type metadata accessor for PacePickerViewWatch(0) + 20) + 8) + OBJC_IVAR____TtC9WorkoutUI19PacePickerViewModel_pickerTitle);
  v7 = *v5;
  v6 = v5[1];
  v8 = objc_allocWithZone(MEMORY[0x277D75348]);

  [v8 initWithDisplayP3Red:0.458823529 green:0.898039216 blue:0.898039216 alpha:1.0];
  v9 = Color.init(uiColor:)();

  v10 = static Edge.Set.all.getter();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA14GeometryReaderVyACyAEyAGyACyACyACyAA6PickerVyAA05EmptyG0VSiAA7ForEachVySaySiGSiAA0G0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_GGAA16_FlexFrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleX0VyAA14TintShapeStyleVGG_AA6SpacerVtGGAA01_sT0VGG_ACyAA6ButtonVyAVG07WorkoutB0018PinnedBottomButtonX5PhoneVGtGGA25_0jgX0VGMd, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA14GeometryReaderVyACyAEyAGyACyACyACyAA6PickerVyAA05EmptyG0VSiAA7ForEachVySaySiGSiAA0G0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_GGAA16_FlexFrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleX0VyAA14TintShapeStyleVGG_AA6SpacerVtGGAA01_sT0VGG_ACyAA6ButtonVyAVG07WorkoutB0018PinnedBottomButtonX5PhoneVGtGGA25_0jgX0VGMR);
  v12 = a2 + *(result + 36);
  *v12 = v7;
  *(v12 + 8) = v6;
  *(v12 + 16) = v9;
  *(v12 + 24) = v9;
  *(v12 + 32) = v10;
  return result;
}

double closure #1 in PacePickerViewWatch.body.getter@<D0>(uint64_t a1@<X0>, double (**a2)@<D0>(uint64_t a2@<X8>)@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVG07WorkoutB0012PinnedBottomE13ModifierPhoneVGMd, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVG07WorkoutB0012PinnedBottomE13ModifierPhoneVGMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v18 - v8;
  v10 = type metadata accessor for PacePickerViewWatch(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  outlined init with copy of PacePickerViewWatch(a1, &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v14 = swift_allocObject();
  outlined init with take of PacePickerViewWatch(&v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13);
  outlined init with copy of PacePickerViewWatch(a1, &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = swift_allocObject();
  outlined init with take of PacePickerViewWatch(&v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v13);
  Button.init(action:label:)();
  _s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVG07WorkoutB0012PinnedBottomE13ModifierPhoneVGWOcTm_1(v9, v6, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVG07WorkoutB0012PinnedBottomE13ModifierPhoneVGMd, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVG07WorkoutB0012PinnedBottomE13ModifierPhoneVGMR);
  *a2 = partial apply for closure #1 in closure #1 in PacePickerViewWatch.body.getter;
  a2[1] = v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI14GeometryReaderVyAA15ModifiedContentVyAA6VStackVyAA9TupleViewVyAEyAEyAEyAA6PickerVyAA05EmptyI0VSiAA7ForEachVySaySiGSiAA0I0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_GGAA16_FlexFrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleX0VyAA14TintShapeStyleVGG_AA6SpacerVtGGAA01_sT0VGG_AEyAA6ButtonVyAVG07WorkoutB0018PinnedBottomButtonX5PhoneVGtMd, &_s7SwiftUI14GeometryReaderVyAA15ModifiedContentVyAA6VStackVyAA9TupleViewVyAEyAEyAEyAA6PickerVyAA05EmptyI0VSiAA7ForEachVySaySiGSiAA0I0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_GGAA16_FlexFrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleX0VyAA14TintShapeStyleVGG_AA6SpacerVtGGAA01_sT0VGG_AEyAA6ButtonVyAVG07WorkoutB0018PinnedBottomButtonX5PhoneVGtMR);
  _s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVG07WorkoutB0012PinnedBottomE13ModifierPhoneVGWOcTm_1(v6, a2 + *(v16 + 48), &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVG07WorkoutB0012PinnedBottomE13ModifierPhoneVGMd, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVG07WorkoutB0012PinnedBottomE13ModifierPhoneVGMR);

  _s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVG07WorkoutB0012PinnedBottomE13ModifierPhoneVGWOhTm_1(v9, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVG07WorkoutB0012PinnedBottomE13ModifierPhoneVGMd, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVG07WorkoutB0012PinnedBottomE13ModifierPhoneVGMR);
  _s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVG07WorkoutB0012PinnedBottomE13ModifierPhoneVGWOhTm_1(v6, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVG07WorkoutB0012PinnedBottomE13ModifierPhoneVGMd, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVG07WorkoutB0012PinnedBottomE13ModifierPhoneVGMR);

  return result;
}

double closure #1 in closure #1 in PacePickerViewWatch.body.getter@<D0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = static HorizontalAlignment.center.getter();
  *(a3 + 8) = 0;
  *(a3 + 16) = 1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAKyAKyAA6PickerVyAA05EmptyD0VSiAA7ForEachVySaySiGSiAA0D0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_GGAA010_FlexFrameG0VGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleX0VyAA14TintShapeStyleVGG_AA6SpacerVtGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAKyAKyAA6PickerVyAA05EmptyD0VSiAA7ForEachVySaySiGSiAA0D0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_GGAA010_FlexFrameG0VGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleX0VyAA14TintShapeStyleVGG_AA6SpacerVtGGMR);
  closure #1 in closure #1 in closure #1 in PacePickerViewWatch.body.getter(a2, a3 + *(v5 + 44));
  GeometryProxy.size.getter();
  GeometryProxy.size.getter();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v6 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACyACyACyAA6PickerVyAA05EmptyG0VSiAA7ForEachVySaySiGSiAA0G0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_GGAA16_FlexFrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleV0VyAA09TintShapeY0VGG_AA6SpacerVtGGAA01_qR0VGMd, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACyACyACyAA6PickerVyAA05EmptyG0VSiAA7ForEachVySaySiGSiAA0G0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_GGAA16_FlexFrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleV0VyAA09TintShapeY0VGG_AA6SpacerVtGGAA01_qR0VGMR) + 36));
  *v6 = v8;
  v6[1] = v9;
  result = *&v10;
  v6[2] = v10;
  return result;
}

uint64_t closure #1 in closure #1 in closure #1 in PacePickerViewWatch.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v54 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4FontV6DesignOSgMd, &_s7SwiftUI4FontV6DesignOSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v43 - v4;
  v53 = type metadata accessor for Font.TextStyle();
  v52 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v47 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6PickerVyAA9EmptyViewVSiAA7ForEachVySaySiGSiAA0E0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_GGMd, &_s7SwiftUI6PickerVyAA9EmptyViewVSiAA7ForEachVySaySiGSiAA0E0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_GGMR);
  v7 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v9 = &v43 - v8;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6PickerVyAA9EmptyViewVSiAA7ForEachVySaySiGSiAA0G0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_GGAA16_FlexFrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA6PickerVyAA9EmptyViewVSiAA7ForEachVySaySiGSiAA0G0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_GGAA16_FlexFrameLayoutVGMR);
  MEMORY[0x28223BE20](v45);
  v44 = &v43 - v10;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6PickerVyAA9EmptyViewVSiAA7ForEachVySaySiGSiAA0G0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_GGAA16_FlexFrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGMd, &_s7SwiftUI15ModifiedContentVyACyAA6PickerVyAA9EmptyViewVSiAA7ForEachVySaySiGSiAA0G0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_GGAA16_FlexFrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGMR);
  MEMORY[0x28223BE20](v49);
  v12 = &v43 - v11;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA6PickerVyAA9EmptyViewVSiAA7ForEachVySaySiGSiAA0G0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_GGAA16_FlexFrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleT0VyAA09TintShapeW0VGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA6PickerVyAA9EmptyViewVSiAA7ForEachVySaySiGSiAA0G0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_GGAA16_FlexFrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleT0VyAA09TintShapeW0VGGMR);
  MEMORY[0x28223BE20](v48);
  v51 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v43 - v15;
  MEMORY[0x28223BE20](v17);
  v50 = &v43 - v18;
  v19 = (a1 + *(type metadata accessor for PacePickerViewWatch(0) + 20));
  v20 = *v19;
  v21 = v19[1];
  v22 = type metadata accessor for PacePickerViewModel(0);
  v23 = lazy protocol witness table accessor for type PacePickerViewModel and conformance PacePickerViewModel();
  MEMORY[0x20F308920](v20, v21, v22, v23);
  swift_getKeyPath();
  ObservedObject.Wrapper.subscript.getter();

  v55 = a1;
  v56 = v58;
  v57 = v59;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7ForEachVySaySiGSiAA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_GMd, _s7SwiftUI7ForEachVySaySiGSiAA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_GMR);
  lazy protocol witness table accessor for type ForEach<[Int], Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0> and conformance <> ForEach<A, B, C>();
  Picker.init(selection:label:content:)();
  if (one-time initialization token for singlePickerHeight != -1)
  {
    swift_once();
  }

  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v24 = v44;
  (*(v7 + 32))(v44, v9, v46);
  v25 = (v24 + *(v45 + 36));
  v26 = v63;
  v25[4] = v62;
  v25[5] = v26;
  v25[6] = v64;
  v27 = v59;
  *v25 = v58;
  v25[1] = v27;
  v28 = v61;
  v25[2] = v60;
  v25[3] = v28;
  v29 = v52;
  v30 = v47;
  v31 = v53;
  (*(v52 + 104))(v47, *MEMORY[0x277CE0A80], v53);
  v32 = *MEMORY[0x277CE09A0];
  v33 = type metadata accessor for Font.Design();
  v34 = *(v33 - 8);
  (*(v34 + 104))(v5, v32, v33);
  (*(v34 + 56))(v5, 0, 1, v33);
  v35 = static Font.system(_:design:weight:)();
  _s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVG07WorkoutB0012PinnedBottomE13ModifierPhoneVGWOhTm_1(v5, &_s7SwiftUI4FontV6DesignOSgMd, &_s7SwiftUI4FontV6DesignOSgMR);
  (*(v29 + 8))(v30, v31);
  KeyPath = swift_getKeyPath();
  outlined init with take of ModifiedContent<Picker<EmptyView, Int, ForEach<[Int], Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>>, _FlexFrameLayout>(v24, v12, &_s7SwiftUI15ModifiedContentVyAA6PickerVyAA9EmptyViewVSiAA7ForEachVySaySiGSiAA0G0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_GGAA16_FlexFrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA6PickerVyAA9EmptyViewVSiAA7ForEachVySaySiGSiAA0G0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_GGAA16_FlexFrameLayoutVGMR);
  v37 = &v12[*(v49 + 36)];
  *v37 = KeyPath;
  v37[1] = v35;
  TintShapeStyle.init()();
  outlined init with take of ModifiedContent<Picker<EmptyView, Int, ForEach<[Int], Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>>, _FlexFrameLayout>(v12, v16, &_s7SwiftUI15ModifiedContentVyACyAA6PickerVyAA9EmptyViewVSiAA7ForEachVySaySiGSiAA0G0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_GGAA16_FlexFrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGMd, &_s7SwiftUI15ModifiedContentVyACyAA6PickerVyAA9EmptyViewVSiAA7ForEachVySaySiGSiAA0G0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_GGAA16_FlexFrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGMR);
  v38 = v50;
  outlined init with take of ModifiedContent<Picker<EmptyView, Int, ForEach<[Int], Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>>, _FlexFrameLayout>(v16, v50, &_s7SwiftUI15ModifiedContentVyACyACyAA6PickerVyAA9EmptyViewVSiAA7ForEachVySaySiGSiAA0G0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_GGAA16_FlexFrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleT0VyAA09TintShapeW0VGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA6PickerVyAA9EmptyViewVSiAA7ForEachVySaySiGSiAA0G0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_GGAA16_FlexFrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleT0VyAA09TintShapeW0VGGMR);
  v39 = v51;
  sub_20C69A65C(v38, v51);
  v40 = v54;
  sub_20C69A65C(v39, v54);
  v41 = v40 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA6PickerVyAA9EmptyViewVSiAA7ForEachVySaySiGSiAA0G0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_GGAA16_FlexFrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleT0VyAA09TintShapeW0VGG_AA6SpacerVtMd, &_s7SwiftUI15ModifiedContentVyACyACyAA6PickerVyAA9EmptyViewVSiAA7ForEachVySaySiGSiAA0G0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_GGAA16_FlexFrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleT0VyAA09TintShapeW0VGG_AA6SpacerVtMR) + 48);
  sub_20C69A6CC(v38);
  *v41 = 0;
  *(v41 + 8) = 1;
  return sub_20C69A6CC(v39);
}

uint64_t closure #1 in closure #1 in closure #1 in closure #1 in PacePickerViewWatch.body.getter(uint64_t a1)
{
  v2 = type metadata accessor for PacePickerViewWatch(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v9[5] = *(*(a1 + *(v5 + 28) + 8) + OBJC_IVAR____TtC9WorkoutUI19PacePickerViewModel_pickerArray);
  swift_getKeyPath();
  outlined init with copy of PacePickerViewWatch(a1, v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  outlined init with take of PacePickerViewWatch(v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySiGMd, &_sSaySiGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_Md, &_s7SwiftUI4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_MR);
  lazy protocol witness table accessor for type [Int] and conformance [A](&lazy protocol witness table cache variable for type [Int] and conformance [A], &_sSaySiGMd, &_sSaySiGMR, MEMORY[0x277D83980]);
  v9[1] = MEMORY[0x277CE0BD8];
  v9[2] = MEMORY[0x277D83B88];
  v9[3] = MEMORY[0x277CE0BC8];
  v9[4] = MEMORY[0x277D83B98];
  swift_getOpaqueTypeConformance2();
  return ForEach<>.init(_:id:content:)();
}

uint64_t closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in PacePickerViewWatch.body.getter@<X0>(Swift::Int *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  type metadata accessor for PacePickerViewWatch(0);
  PacePickerViewModel.paceDisplayString(pace:)(v3);
  lazy protocol witness table accessor for type String and conformance String();
  result = Text.init<A>(_:)();
  *a2 = result;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6 & 1;
  *(a2 + 24) = v7;
  *(a2 + 32) = v3;
  *(a2 + 40) = 1;
  return result;
}

uint64_t closure #2 in closure #1 in PacePickerViewWatch.body.getter()
{
  v0 = type metadata accessor for DismissAction();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = (&v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for PacePickerViewWatch(0);
  PacePickerViewModel.pickerChanged()();
  PacePickerViewWatch.dismiss.getter(v3);
  DismissAction.callAsFunction()();
  return (*(v1 + 8))(v3, v0);
}

uint64_t closure #3 in closure #1 in PacePickerViewWatch.body.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = WorkoutUIBundle.super.isa;
  v10._object = 0xE000000000000000;
  v3._countAndFlagsBits = 0x535F535452454C41;
  v4.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v4.value._object = 0xEB00000000656C62;
  v3._object = 0xEA00000000005445;
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

uint64_t outlined init with take of PacePickerViewWatch(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PacePickerViewWatch(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double partial apply for closure #1 in closure #1 in PacePickerViewWatch.body.getter@<D0>(uint64_t a2@<X8>)
{
  v4 = *(type metadata accessor for PacePickerViewWatch(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return closure #1 in closure #1 in PacePickerViewWatch.body.getter(v5, a2);
}

uint64_t partial apply for closure #2 in closure #1 in PacePickerViewWatch.body.getter()
{
  type metadata accessor for PacePickerViewWatch(0);

  return closure #2 in closure #1 in PacePickerViewWatch.body.getter();
}

uint64_t _s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVG07WorkoutB0012PinnedBottomE13ModifierPhoneVGWOcTm_1(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t _s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVG07WorkoutB0012PinnedBottomE13ModifierPhoneVGWOhTm_1(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t outlined init with take of ModifiedContent<Picker<EmptyView, Int, ForEach<[Int], Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>>, _FlexFrameLayout>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t objectdestroyTm_94()
{
  v1 = *(type metadata accessor for PacePickerViewWatch(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = type metadata accessor for DismissAction();
    (*(*(v3 - 8) + 8))(v0 + v2, v3);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in PacePickerViewWatch.body.getter@<X0>(Swift::Int *a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for PacePickerViewWatch(0);

  return closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in PacePickerViewWatch.body.getter(a1, a2);
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<VStack<TupleView<(GeometryReader<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Picker<EmptyView, Int, ForEach<[Int], Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<TintShapeStyle>>, Spacer)>>, _FrameLayout>>, ModifiedContent<Button<Text>, PinnedBottomButtonModifierPhone>)>>, PickerViewModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(GeometryReader<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Picker<EmptyView, Int, ForEach<[Int], Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<TintShapeStyle>>, Spacer)>>, _FrameLayout>>, ModifiedContent<Button<Text>, PinnedBottomButtonModifierPhone>)>>, PickerViewModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(GeometryReader<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Picker<EmptyView, Int, ForEach<[Int], Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<TintShapeStyle>>, Spacer)>>, _FrameLayout>>, ModifiedContent<Button<Text>, PinnedBottomButtonModifierPhone>)>>, PickerViewModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA14GeometryReaderVyACyAEyAGyACyACyACyAA6PickerVyAA05EmptyG0VSiAA7ForEachVySaySiGSiAA0G0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_GGAA16_FlexFrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleX0VyAA14TintShapeStyleVGG_AA6SpacerVtGGAA01_sT0VGG_ACyAA6ButtonVyAVG07WorkoutB0018PinnedBottomButtonX5PhoneVGtGGA25_0jgX0VGMd, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA14GeometryReaderVyACyAEyAGyACyACyACyAA6PickerVyAA05EmptyG0VSiAA7ForEachVySaySiGSiAA0G0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_GGAA16_FlexFrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleX0VyAA14TintShapeStyleVGG_AA6SpacerVtGGAA01_sT0VGG_ACyAA6ButtonVyAVG07WorkoutB0018PinnedBottomButtonX5PhoneVGtGGA25_0jgX0VGMR);
    lazy protocol witness table accessor for type [Int] and conformance [A](&lazy protocol witness table cache variable for type VStack<TupleView<(GeometryReader<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Picker<EmptyView, Int, ForEach<[Int], Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<TintShapeStyle>>, Spacer)>>, _FrameLayout>>, ModifiedContent<Button<Text>, PinnedBottomButtonModifierPhone>)>> and conformance VStack<A>, &_s7SwiftUI6VStackVyAA9TupleViewVyAA14GeometryReaderVyAA15ModifiedContentVyACyAEyAIyAIyAIyAA6PickerVyAA05EmptyE0VSiAA7ForEachVySaySiGSiAA0E0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_GGAA16_FlexFrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleX0VyAA14TintShapeStyleVGG_AA6SpacerVtGGAA01_sT0VGG_AIyAA6ButtonVyAVG07WorkoutB0018PinnedBottomButtonX5PhoneVGtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA14GeometryReaderVyAA15ModifiedContentVyACyAEyAIyAIyAIyAA6PickerVyAA05EmptyE0VSiAA7ForEachVySaySiGSiAA0E0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_GGAA16_FlexFrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleX0VyAA14TintShapeStyleVGG_AA6SpacerVtGGAA01_sT0VGG_AIyAA6ButtonVyAVG07WorkoutB0018PinnedBottomButtonX5PhoneVGtGGMR, MEMORY[0x277CE1198]);
    lazy protocol witness table accessor for type PickerViewModifier and conformance PickerViewModifier();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(GeometryReader<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Picker<EmptyView, Int, ForEach<[Int], Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<TintShapeStyle>>, Spacer)>>, _FrameLayout>>, ModifiedContent<Button<Text>, PinnedBottomButtonModifierPhone>)>>, PickerViewModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [Int] and conformance [A](unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

void WorkoutNotificationView.init(notification:formattingManager:resetIdleTimerHandler:interactiveDismissHandler:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  MetricPlatterConstants.init()((a7 + 2));
  *a7 = a1;
  a7[1] = a2;
  a7[9] = a3;
  a7[10] = a4;
  a7[11] = a5;
  a7[12] = a6;
}

double WorkoutNotificationView.init(notification:formattingManager:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  MetricPlatterConstants.init()(a3 + 16);
  *a3 = a1;
  *(a3 + 8) = a2;
  result = 0.0;
  *(a3 + 72) = 0u;
  *(a3 + 88) = 0u;
  return result;
}

double WorkoutNotificationView.body.getter@<D0>(_OWORD *a1@<X8>)
{
  v42 = a1;
  v2 = type metadata accessor for WorkoutNotification.NotificationType();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = v1[1];
  v7 = v1[9];
  v8 = v1[10];
  v9 = v1[11];
  v10 = v1[12];
  dispatch thunk of WorkoutNotification.notificationType.getter();
  v41 = v3;
  v11 = (*(v3 + 88))(v5, v2);
  if (v11 == *MEMORY[0x277D7DA18])
  {
    v12 = dispatch thunk of WorkoutNotification.units.getter();
    v13 = v6;
    MetricPlatterConstants.init()(&v57 + 8);
    *&v59[1] = swift_getKeyPath();
    BYTE8(v59[1]) = 0;
    *&v56 = v12;
    *(&v56 + 1) = v13;
    LOBYTE(v57) = 0;
    v44[0] = v58[0];
    v44[1] = v58[1];
    v45[0] = v59[0];
    *(v45 + 9) = *(v59 + 9);
    v43[0] = v56;
    v43[1] = v57;
    v59[0] = v45[0];
    *(v59 + 9) = *(v45 + 9);
    v63 = 0;
    BYTE9(v59[1]) = 0;
    outlined init with copy of WorkoutNotificationIntervalView(v43, &v51);
    lazy protocol witness table accessor for type WorkoutNotificationIntervalView and conformance WorkoutNotificationIntervalView();
    _ConditionalContent<>.init(storage:)();
    v58[0] = v53[0];
    v58[1] = v53[1];
    v59[0] = *v54;
    *(v59 + 10) = *&v54[10];
    v56 = v51;
    v57 = v52;
    v64 = 0;
    BYTE10(v59[1]) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB00E24NotificationIntervalViewVAFGMd, &_s7SwiftUI19_ConditionalContentVy07WorkoutB00E24NotificationIntervalViewVAFGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB00E25NotificationMilestoneViewVAD0ef13PacerCompleteH0VGMd, &_s7SwiftUI19_ConditionalContentVy07WorkoutB00E25NotificationMilestoneViewVAD0ef13PacerCompleteH0VGMR);
    lazy protocol witness table accessor for type _ConditionalContent<WorkoutNotificationIntervalView, WorkoutNotificationIntervalView> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type _ConditionalContent<WorkoutNotificationMilestoneView, WorkoutNotificationPacerCompleteView> and conformance <> _ConditionalContent<A, B>();
    _ConditionalContent<>.init(storage:)();
    v53[0] = v48;
    v53[1] = v49;
    *v54 = v50[0];
    *&v54[11] = *(v50 + 11);
    v51 = v46;
    v52 = v47;
    v61[0] = 0;
    v55 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACy07WorkoutB00E24NotificationIntervalViewVAFGACyAD0ef9MilestoneH0VAD0ef13PacerCompleteH0VGGMd, &_s7SwiftUI19_ConditionalContentVyACy07WorkoutB00E24NotificationIntervalViewVAFGACyAD0ef9MilestoneH0VAD0ef13PacerCompleteH0VGGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACy07WorkoutB00E28NotificationRaceCompleteViewVAD0ef8StandardI0VGACyAD0ef10TranscriptI0VAA4TextVGGMd, &_s7SwiftUI19_ConditionalContentVyACy07WorkoutB00E28NotificationRaceCompleteViewVAD0ef8StandardI0VGACyAD0ef10TranscriptI0VAA4TextVGGMR);
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<WorkoutNotificationIntervalView, WorkoutNotificationIntervalView>, _ConditionalContent<WorkoutNotificationMilestoneView, WorkoutNotificationPacerCompleteView>> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<WorkoutNotificationRaceCompleteView, WorkoutNotificationStandardView>, _ConditionalContent<WorkoutNotificationTranscriptView, Text>> and conformance <> _ConditionalContent<A, B>();
    _ConditionalContent<>.init(storage:)();
    outlined destroy of WorkoutNotificationIntervalView(v43);
    v67 = v58[0];
    v68 = v58[1];
    v69[0] = v59[0];
    *(v69 + 12) = *(v59 + 12);
    v65 = v56;
    v66 = v57;
    goto LABEL_17;
  }

  if (v11 != *MEMORY[0x277D7DA08])
  {
    if (v11 == *MEMORY[0x277D7DA28])
    {
      v16 = dispatch thunk of WorkoutNotification.units.getter();
      KeyPath = swift_getKeyPath();
      *&v56 = v16;
      *(&v56 + 1) = v6;
      v18 = v6;
      MetricPlatterConstants.init()(&v57);
      *(&v59[0] + 1) = KeyPath;
      LOBYTE(v45[1]) = 0;
      v44[0] = v58[0];
      v44[1] = v58[1];
      v43[0] = v56;
      v43[1] = v57;
      v45[0] = v59[0];
      LOWORD(v59[1]) = 0;
      v63 = 0;
      outlined init with copy of WorkoutNotificationMilestoneView(v43, &v51);
      lazy protocol witness table accessor for type WorkoutNotificationMilestoneView and conformance WorkoutNotificationMilestoneView();
      lazy protocol witness table accessor for type WorkoutNotificationPacerCompleteView and conformance WorkoutNotificationPacerCompleteView();
      _ConditionalContent<>.init(storage:)();
      v58[0] = v53[0];
      v58[1] = v53[1];
      v59[0] = *v54;
      LOWORD(v59[1]) = *&v54[16];
      v56 = v51;
      v57 = v52;
      v64 = 1;
      BYTE10(v59[1]) = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB00E24NotificationIntervalViewVAFGMd, &_s7SwiftUI19_ConditionalContentVy07WorkoutB00E24NotificationIntervalViewVAFGMR);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB00E25NotificationMilestoneViewVAD0ef13PacerCompleteH0VGMd, &_s7SwiftUI19_ConditionalContentVy07WorkoutB00E25NotificationMilestoneViewVAD0ef13PacerCompleteH0VGMR);
      lazy protocol witness table accessor for type _ConditionalContent<WorkoutNotificationIntervalView, WorkoutNotificationIntervalView> and conformance <> _ConditionalContent<A, B>();
      lazy protocol witness table accessor for type _ConditionalContent<WorkoutNotificationMilestoneView, WorkoutNotificationPacerCompleteView> and conformance <> _ConditionalContent<A, B>();
      _ConditionalContent<>.init(storage:)();
      v53[0] = v48;
      v53[1] = v49;
      *v54 = v50[0];
      *&v54[11] = *(v50 + 11);
      v51 = v46;
      v52 = v47;
      v61[0] = 0;
      v55 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACy07WorkoutB00E24NotificationIntervalViewVAFGACyAD0ef9MilestoneH0VAD0ef13PacerCompleteH0VGGMd, &_s7SwiftUI19_ConditionalContentVyACy07WorkoutB00E24NotificationIntervalViewVAFGACyAD0ef9MilestoneH0VAD0ef13PacerCompleteH0VGGMR);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACy07WorkoutB00E28NotificationRaceCompleteViewVAD0ef8StandardI0VGACyAD0ef10TranscriptI0VAA4TextVGGMd, &_s7SwiftUI19_ConditionalContentVyACy07WorkoutB00E28NotificationRaceCompleteViewVAD0ef8StandardI0VGACyAD0ef10TranscriptI0VAA4TextVGGMR);
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<WorkoutNotificationIntervalView, WorkoutNotificationIntervalView>, _ConditionalContent<WorkoutNotificationMilestoneView, WorkoutNotificationPacerCompleteView>> and conformance <> _ConditionalContent<A, B>();
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<WorkoutNotificationRaceCompleteView, WorkoutNotificationStandardView>, _ConditionalContent<WorkoutNotificationTranscriptView, Text>> and conformance <> _ConditionalContent<A, B>();
      _ConditionalContent<>.init(storage:)();
      outlined destroy of WorkoutNotificationMilestoneView(v43);
    }

    else if (v11 == *MEMORY[0x277D7DA00])
    {
      v19 = dispatch thunk of WorkoutNotification.units.getter();
      v20 = swift_getKeyPath();
      *&v56 = v19;
      *(&v56 + 1) = v6;
      v21 = v6;
      MetricPlatterConstants.init()(&v57);
      *(&v59[0] + 1) = v20;
      LOBYTE(v45[1]) = 0;
      v44[0] = v58[0];
      v44[1] = v58[1];
      v43[0] = v56;
      v43[1] = v57;
      v45[0] = v59[0];
      LOWORD(v59[1]) = 256;
      v63 = 1;
      outlined init with copy of WorkoutNotificationPacerCompleteView(v43, &v51);
      lazy protocol witness table accessor for type WorkoutNotificationMilestoneView and conformance WorkoutNotificationMilestoneView();
      lazy protocol witness table accessor for type WorkoutNotificationPacerCompleteView and conformance WorkoutNotificationPacerCompleteView();
      _ConditionalContent<>.init(storage:)();
      v58[0] = v53[0];
      v58[1] = v53[1];
      v59[0] = *v54;
      LOWORD(v59[1]) = *&v54[16];
      v56 = v51;
      v57 = v52;
      v64 = 1;
      BYTE10(v59[1]) = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB00E24NotificationIntervalViewVAFGMd, &_s7SwiftUI19_ConditionalContentVy07WorkoutB00E24NotificationIntervalViewVAFGMR);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB00E25NotificationMilestoneViewVAD0ef13PacerCompleteH0VGMd, &_s7SwiftUI19_ConditionalContentVy07WorkoutB00E25NotificationMilestoneViewVAD0ef13PacerCompleteH0VGMR);
      lazy protocol witness table accessor for type _ConditionalContent<WorkoutNotificationIntervalView, WorkoutNotificationIntervalView> and conformance <> _ConditionalContent<A, B>();
      lazy protocol witness table accessor for type _ConditionalContent<WorkoutNotificationMilestoneView, WorkoutNotificationPacerCompleteView> and conformance <> _ConditionalContent<A, B>();
      _ConditionalContent<>.init(storage:)();
      v53[0] = v48;
      v53[1] = v49;
      *v54 = v50[0];
      *&v54[11] = *(v50 + 11);
      v51 = v46;
      v52 = v47;
      v61[0] = 0;
      v55 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACy07WorkoutB00E24NotificationIntervalViewVAFGACyAD0ef9MilestoneH0VAD0ef13PacerCompleteH0VGGMd, &_s7SwiftUI19_ConditionalContentVyACy07WorkoutB00E24NotificationIntervalViewVAFGACyAD0ef9MilestoneH0VAD0ef13PacerCompleteH0VGGMR);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACy07WorkoutB00E28NotificationRaceCompleteViewVAD0ef8StandardI0VGACyAD0ef10TranscriptI0VAA4TextVGGMd, &_s7SwiftUI19_ConditionalContentVyACy07WorkoutB00E28NotificationRaceCompleteViewVAD0ef8StandardI0VGACyAD0ef10TranscriptI0VAA4TextVGGMR);
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<WorkoutNotificationIntervalView, WorkoutNotificationIntervalView>, _ConditionalContent<WorkoutNotificationMilestoneView, WorkoutNotificationPacerCompleteView>> and conformance <> _ConditionalContent<A, B>();
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<WorkoutNotificationRaceCompleteView, WorkoutNotificationStandardView>, _ConditionalContent<WorkoutNotificationTranscriptView, Text>> and conformance <> _ConditionalContent<A, B>();
      _ConditionalContent<>.init(storage:)();
      outlined destroy of WorkoutNotificationPacerCompleteView(v43);
    }

    else if (v11 == *MEMORY[0x277D7D9F8])
    {
      v22 = dispatch thunk of WorkoutNotification.units.getter();
      v23 = swift_getKeyPath();
      *&v56 = v22;
      *(&v56 + 1) = v6;
      v24 = v6;
      MetricPlatterConstants.init()(&v57);
      *(&v59[0] + 1) = v23;
      LOBYTE(v45[1]) = 0;
      v44[0] = v58[0];
      v44[1] = v58[1];
      v43[0] = v56;
      v43[1] = v57;
      v45[0] = v59[0];
      LOWORD(v59[1]) = 0;
      v63 = 0;
      outlined init with copy of WorkoutNotificationRaceCompleteView(v43, &v51);
      lazy protocol witness table accessor for type WorkoutNotificationRaceCompleteView and conformance WorkoutNotificationRaceCompleteView();
      lazy protocol witness table accessor for type WorkoutNotificationStandardView and conformance WorkoutNotificationStandardView();
      _ConditionalContent<>.init(storage:)();
      v58[0] = v53[0];
      v58[1] = v53[1];
      v59[0] = *v54;
      LOWORD(v59[1]) = *&v54[16];
      v56 = v51;
      v57 = v52;
      v64 = 0;
      BYTE2(v59[1]) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB00E28NotificationRaceCompleteViewVAD0ef8StandardI0VGMd, &_s7SwiftUI19_ConditionalContentVy07WorkoutB00E28NotificationRaceCompleteViewVAD0ef8StandardI0VGMR);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB00E26NotificationTranscriptViewVAA4TextVGMd, &_s7SwiftUI19_ConditionalContentVy07WorkoutB00E26NotificationTranscriptViewVAA4TextVGMR);
      lazy protocol witness table accessor for type _ConditionalContent<WorkoutNotificationRaceCompleteView, WorkoutNotificationStandardView> and conformance <> _ConditionalContent<A, B>();
      lazy protocol witness table accessor for type _ConditionalContent<WorkoutNotificationTranscriptView, Text> and conformance <> _ConditionalContent<A, B>();
      _ConditionalContent<>.init(storage:)();
      v53[0] = v48;
      v53[1] = v49;
      *v54 = v50[0];
      *&v54[15] = *(v50 + 15);
      v51 = v46;
      v52 = v47;
      v61[0] = 1;
      v55 = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACy07WorkoutB00E24NotificationIntervalViewVAFGACyAD0ef9MilestoneH0VAD0ef13PacerCompleteH0VGGMd, &_s7SwiftUI19_ConditionalContentVyACy07WorkoutB00E24NotificationIntervalViewVAFGACyAD0ef9MilestoneH0VAD0ef13PacerCompleteH0VGGMR);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACy07WorkoutB00E28NotificationRaceCompleteViewVAD0ef8StandardI0VGACyAD0ef10TranscriptI0VAA4TextVGGMd, &_s7SwiftUI19_ConditionalContentVyACy07WorkoutB00E28NotificationRaceCompleteViewVAD0ef8StandardI0VGACyAD0ef10TranscriptI0VAA4TextVGGMR);
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<WorkoutNotificationIntervalView, WorkoutNotificationIntervalView>, _ConditionalContent<WorkoutNotificationMilestoneView, WorkoutNotificationPacerCompleteView>> and conformance <> _ConditionalContent<A, B>();
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<WorkoutNotificationRaceCompleteView, WorkoutNotificationStandardView>, _ConditionalContent<WorkoutNotificationTranscriptView, Text>> and conformance <> _ConditionalContent<A, B>();
      _ConditionalContent<>.init(storage:)();
      outlined destroy of WorkoutNotificationRaceCompleteView(v43);
    }

    else
    {
      if (v11 != *MEMORY[0x277D7DA20])
      {
        if (v11 == *MEMORY[0x277D7D9F0])
        {
          v30 = dispatch thunk of WorkoutNotification.units.getter();
          v31 = swift_getKeyPath();
          *&v43[0] = v30;
          *(&v43[0] + 1) = v6;
          *&v43[1] = v7;
          *(&v43[1] + 1) = v8;
          *&v44[0] = v9;
          *(&v44[0] + 1) = v10;
          *&v44[1] = v31;
          BYTE8(v44[1]) = 0;
          v56 = v43[0];
          v57 = v43[1];
          v58[0] = v44[0];
          *(v58 + 9) = *(v44 + 9);
          v63 = 0;
          BYTE9(v58[1]) = 0;
          v32 = v6;
          outlined copy of (@escaping @callee_guaranteed () -> ())?(v7, v8);
          outlined copy of (@escaping @callee_guaranteed () -> ())?(v9, v10);
          outlined init with copy of WorkoutNotificationTranscriptView(v43, &v51);
          lazy protocol witness table accessor for type WorkoutNotificationTranscriptView and conformance WorkoutNotificationTranscriptView();
          _ConditionalContent<>.init(storage:)();
          v56 = v51;
          v57 = v52;
          v58[0] = v53[0];
          *(v58 + 10) = *(v53 + 10);
          v64 = 1;
          BYTE2(v59[1]) = 1;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB00E28NotificationRaceCompleteViewVAD0ef8StandardI0VGMd, &_s7SwiftUI19_ConditionalContentVy07WorkoutB00E28NotificationRaceCompleteViewVAD0ef8StandardI0VGMR);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB00E26NotificationTranscriptViewVAA4TextVGMd, &_s7SwiftUI19_ConditionalContentVy07WorkoutB00E26NotificationTranscriptViewVAA4TextVGMR);
          lazy protocol witness table accessor for type _ConditionalContent<WorkoutNotificationRaceCompleteView, WorkoutNotificationStandardView> and conformance <> _ConditionalContent<A, B>();
          lazy protocol witness table accessor for type _ConditionalContent<WorkoutNotificationTranscriptView, Text> and conformance <> _ConditionalContent<A, B>();
          _ConditionalContent<>.init(storage:)();
          v53[0] = v48;
          v53[1] = v49;
          *v54 = v50[0];
          *&v54[15] = *(v50 + 15);
          v51 = v46;
          v52 = v47;
          v61[0] = 1;
          v55 = 1;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACy07WorkoutB00E24NotificationIntervalViewVAFGACyAD0ef9MilestoneH0VAD0ef13PacerCompleteH0VGGMd, &_s7SwiftUI19_ConditionalContentVyACy07WorkoutB00E24NotificationIntervalViewVAFGACyAD0ef9MilestoneH0VAD0ef13PacerCompleteH0VGGMR);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACy07WorkoutB00E28NotificationRaceCompleteViewVAD0ef8StandardI0VGACyAD0ef10TranscriptI0VAA4TextVGGMd, &_s7SwiftUI19_ConditionalContentVyACy07WorkoutB00E28NotificationRaceCompleteViewVAD0ef8StandardI0VGACyAD0ef10TranscriptI0VAA4TextVGGMR);
          lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<WorkoutNotificationIntervalView, WorkoutNotificationIntervalView>, _ConditionalContent<WorkoutNotificationMilestoneView, WorkoutNotificationPacerCompleteView>> and conformance <> _ConditionalContent<A, B>();
          lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<WorkoutNotificationRaceCompleteView, WorkoutNotificationStandardView>, _ConditionalContent<WorkoutNotificationTranscriptView, Text>> and conformance <> _ConditionalContent<A, B>();
          _ConditionalContent<>.init(storage:)();
          outlined destroy of WorkoutNotificationTranscriptView(v43);
          goto LABEL_6;
        }

        if (v11 != *MEMORY[0x277D7DA10])
        {
          LocalizedStringKey.init(stringLiteral:)();
          v33 = Text.init(_:tableName:bundle:comment:)();
          v35 = v34;
          v37 = v36 & 1;
          v62 = v36 & 1;
          v60 = 1;
          v39 = v38;
          v40 = v33;
          *&v56 = v33;
          *(&v56 + 1) = v34;
          LOBYTE(v57) = v36 & 1;
          *(&v57 + 1) = *v61;
          DWORD1(v57) = *&v61[3];
          *(&v57 + 1) = v38;
          v58[0] = v43[0];
          *(v58 + 9) = *(v43 + 9);
          BYTE9(v58[1]) = 1;
          outlined copy of Text.Storage(v33, v34, v36 & 1);
          lazy protocol witness table accessor for type WorkoutNotificationTranscriptView and conformance WorkoutNotificationTranscriptView();

          _ConditionalContent<>.init(storage:)();
          v56 = v51;
          v57 = v52;
          v58[0] = v53[0];
          *(v58 + 10) = *(v53 + 10);
          v63 = 1;
          BYTE2(v59[1]) = 1;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB00E28NotificationRaceCompleteViewVAD0ef8StandardI0VGMd, &_s7SwiftUI19_ConditionalContentVy07WorkoutB00E28NotificationRaceCompleteViewVAD0ef8StandardI0VGMR);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB00E26NotificationTranscriptViewVAA4TextVGMd, &_s7SwiftUI19_ConditionalContentVy07WorkoutB00E26NotificationTranscriptViewVAA4TextVGMR);
          lazy protocol witness table accessor for type _ConditionalContent<WorkoutNotificationRaceCompleteView, WorkoutNotificationStandardView> and conformance <> _ConditionalContent<A, B>();
          lazy protocol witness table accessor for type _ConditionalContent<WorkoutNotificationTranscriptView, Text> and conformance <> _ConditionalContent<A, B>();
          _ConditionalContent<>.init(storage:)();
          v53[0] = v48;
          v53[1] = v49;
          *v54 = v50[0];
          *&v54[15] = *(v50 + 15);
          v51 = v46;
          v52 = v47;
          v64 = 1;
          v55 = 1;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACy07WorkoutB00E24NotificationIntervalViewVAFGACyAD0ef9MilestoneH0VAD0ef13PacerCompleteH0VGGMd, &_s7SwiftUI19_ConditionalContentVyACy07WorkoutB00E24NotificationIntervalViewVAFGACyAD0ef9MilestoneH0VAD0ef13PacerCompleteH0VGGMR);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACy07WorkoutB00E28NotificationRaceCompleteViewVAD0ef8StandardI0VGACyAD0ef10TranscriptI0VAA4TextVGGMd, &_s7SwiftUI19_ConditionalContentVyACy07WorkoutB00E28NotificationRaceCompleteViewVAD0ef8StandardI0VGACyAD0ef10TranscriptI0VAA4TextVGGMR);
          lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<WorkoutNotificationIntervalView, WorkoutNotificationIntervalView>, _ConditionalContent<WorkoutNotificationMilestoneView, WorkoutNotificationPacerCompleteView>> and conformance <> _ConditionalContent<A, B>();
          lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<WorkoutNotificationRaceCompleteView, WorkoutNotificationStandardView>, _ConditionalContent<WorkoutNotificationTranscriptView, Text>> and conformance <> _ConditionalContent<A, B>();
          _ConditionalContent<>.init(storage:)();
          outlined consume of Text.Storage(v40, v35, v37);

          v67 = v58[0];
          v68 = v58[1];
          v69[0] = v59[0];
          *(v69 + 12) = *(v59 + 12);
          v65 = v56;
          v66 = v57;
          (*(v41 + 8))(v5, v2);
          goto LABEL_17;
        }
      }

      *&v56 = dispatch thunk of WorkoutNotification.units.getter();
      *(&v56 + 1) = v6;
      v25 = v6;
      MetricPlatterConstants.init()(&v57);
      *(&v59[0] + 1) = swift_getKeyPath();
      LOBYTE(v45[1]) = 0;
      v44[0] = v58[0];
      v44[1] = v58[1];
      v43[0] = v56;
      v43[1] = v57;
      v45[0] = v59[0];
      LOWORD(v59[1]) = 256;
      v63 = 1;
      outlined init with copy of WorkoutNotificationStandardView(v43, &v51);
      lazy protocol witness table accessor for type WorkoutNotificationRaceCompleteView and conformance WorkoutNotificationRaceCompleteView();
      lazy protocol witness table accessor for type WorkoutNotificationStandardView and conformance WorkoutNotificationStandardView();
      _ConditionalContent<>.init(storage:)();
      v58[0] = v53[0];
      v58[1] = v53[1];
      v59[0] = *v54;
      LOWORD(v59[1]) = *&v54[16];
      v56 = v51;
      v57 = v52;
      v64 = 0;
      BYTE2(v59[1]) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB00E28NotificationRaceCompleteViewVAD0ef8StandardI0VGMd, &_s7SwiftUI19_ConditionalContentVy07WorkoutB00E28NotificationRaceCompleteViewVAD0ef8StandardI0VGMR);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB00E26NotificationTranscriptViewVAA4TextVGMd, &_s7SwiftUI19_ConditionalContentVy07WorkoutB00E26NotificationTranscriptViewVAA4TextVGMR);
      lazy protocol witness table accessor for type _ConditionalContent<WorkoutNotificationRaceCompleteView, WorkoutNotificationStandardView> and conformance <> _ConditionalContent<A, B>();
      lazy protocol witness table accessor for type _ConditionalContent<WorkoutNotificationTranscriptView, Text> and conformance <> _ConditionalContent<A, B>();
      _ConditionalContent<>.init(storage:)();
      v53[0] = v48;
      v53[1] = v49;
      *v54 = v50[0];
      *&v54[15] = *(v50 + 15);
      v51 = v46;
      v52 = v47;
      v61[0] = 1;
      v55 = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACy07WorkoutB00E24NotificationIntervalViewVAFGACyAD0ef9MilestoneH0VAD0ef13PacerCompleteH0VGGMd, &_s7SwiftUI19_ConditionalContentVyACy07WorkoutB00E24NotificationIntervalViewVAFGACyAD0ef9MilestoneH0VAD0ef13PacerCompleteH0VGGMR);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACy07WorkoutB00E28NotificationRaceCompleteViewVAD0ef8StandardI0VGACyAD0ef10TranscriptI0VAA4TextVGGMd, &_s7SwiftUI19_ConditionalContentVyACy07WorkoutB00E28NotificationRaceCompleteViewVAD0ef8StandardI0VGACyAD0ef10TranscriptI0VAA4TextVGGMR);
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<WorkoutNotificationIntervalView, WorkoutNotificationIntervalView>, _ConditionalContent<WorkoutNotificationMilestoneView, WorkoutNotificationPacerCompleteView>> and conformance <> _ConditionalContent<A, B>();
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<WorkoutNotificationRaceCompleteView, WorkoutNotificationStandardView>, _ConditionalContent<WorkoutNotificationTranscriptView, Text>> and conformance <> _ConditionalContent<A, B>();
      _ConditionalContent<>.init(storage:)();
      outlined destroy of WorkoutNotificationStandardView(v43);
    }

    v67 = v58[0];
    v68 = v58[1];
    v69[0] = v59[0];
    goto LABEL_16;
  }

  v14 = dispatch thunk of WorkoutNotification.units.getter();
  v15 = v6;
  MetricPlatterConstants.init()(&v57 + 8);
  *&v59[1] = swift_getKeyPath();
  BYTE8(v59[1]) = 0;
  *&v56 = v14;
  *(&v56 + 1) = v15;
  LOBYTE(v57) = 1;
  v44[0] = v58[0];
  v44[1] = v58[1];
  v45[0] = v59[0];
  *(v45 + 9) = *(v59 + 9);
  v43[0] = v56;
  v43[1] = v57;
  v59[0] = v45[0];
  *(v59 + 9) = *(v45 + 9);
  v63 = 1;
  BYTE9(v59[1]) = 1;
  outlined init with copy of WorkoutNotificationIntervalView(v43, &v51);
  lazy protocol witness table accessor for type WorkoutNotificationIntervalView and conformance WorkoutNotificationIntervalView();
  _ConditionalContent<>.init(storage:)();
  v58[0] = v53[0];
  v58[1] = v53[1];
  v59[0] = *v54;
  *(v59 + 10) = *&v54[10];
  v56 = v51;
  v57 = v52;
  v64 = 0;
  BYTE10(v59[1]) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB00E24NotificationIntervalViewVAFGMd, &_s7SwiftUI19_ConditionalContentVy07WorkoutB00E24NotificationIntervalViewVAFGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB00E25NotificationMilestoneViewVAD0ef13PacerCompleteH0VGMd, &_s7SwiftUI19_ConditionalContentVy07WorkoutB00E25NotificationMilestoneViewVAD0ef13PacerCompleteH0VGMR);
  lazy protocol witness table accessor for type _ConditionalContent<WorkoutNotificationIntervalView, WorkoutNotificationIntervalView> and conformance <> _ConditionalContent<A, B>();
  lazy protocol witness table accessor for type _ConditionalContent<WorkoutNotificationMilestoneView, WorkoutNotificationPacerCompleteView> and conformance <> _ConditionalContent<A, B>();
  _ConditionalContent<>.init(storage:)();
  v53[0] = v48;
  v53[1] = v49;
  *v54 = v50[0];
  *&v54[11] = *(v50 + 11);
  v51 = v46;
  v52 = v47;
  v61[0] = 0;
  v55 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACy07WorkoutB00E24NotificationIntervalViewVAFGACyAD0ef9MilestoneH0VAD0ef13PacerCompleteH0VGGMd, &_s7SwiftUI19_ConditionalContentVyACy07WorkoutB00E24NotificationIntervalViewVAFGACyAD0ef9MilestoneH0VAD0ef13PacerCompleteH0VGGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACy07WorkoutB00E28NotificationRaceCompleteViewVAD0ef8StandardI0VGACyAD0ef10TranscriptI0VAA4TextVGGMd, &_s7SwiftUI19_ConditionalContentVyACy07WorkoutB00E28NotificationRaceCompleteViewVAD0ef8StandardI0VGACyAD0ef10TranscriptI0VAA4TextVGGMR);
  lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<WorkoutNotificationIntervalView, WorkoutNotificationIntervalView>, _ConditionalContent<WorkoutNotificationMilestoneView, WorkoutNotificationPacerCompleteView>> and conformance <> _ConditionalContent<A, B>();
  lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<WorkoutNotificationRaceCompleteView, WorkoutNotificationStandardView>, _ConditionalContent<WorkoutNotificationTranscriptView, Text>> and conformance <> _ConditionalContent<A, B>();
  _ConditionalContent<>.init(storage:)();
  outlined destroy of WorkoutNotificationIntervalView(v43);
LABEL_6:
  v67 = v58[0];
  v68 = v58[1];
  v69[0] = v59[0];
LABEL_16:
  *(v69 + 12) = *(v59 + 12);
  v65 = v56;
  v66 = v57;
LABEL_17:
  v26 = v68;
  v27 = v42;
  v42[2] = v67;
  v27[3] = v26;
  v27[4] = v69[0];
  *(v27 + 76) = *(v69 + 12);
  result = *&v65;
  v29 = v66;
  *v27 = v65;
  v27[1] = v29;
  return result;
}

unint64_t lazy protocol witness table accessor for type WorkoutNotificationTranscriptView and conformance WorkoutNotificationTranscriptView()
{
  result = lazy protocol witness table cache variable for type WorkoutNotificationTranscriptView and conformance WorkoutNotificationTranscriptView;
  if (!lazy protocol witness table cache variable for type WorkoutNotificationTranscriptView and conformance WorkoutNotificationTranscriptView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkoutNotificationTranscriptView and conformance WorkoutNotificationTranscriptView);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<WorkoutNotificationRaceCompleteView, WorkoutNotificationStandardView> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<WorkoutNotificationRaceCompleteView, WorkoutNotificationStandardView> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<WorkoutNotificationRaceCompleteView, WorkoutNotificationStandardView> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB00E28NotificationRaceCompleteViewVAD0ef8StandardI0VGMd, &_s7SwiftUI19_ConditionalContentVy07WorkoutB00E28NotificationRaceCompleteViewVAD0ef8StandardI0VGMR);
    lazy protocol witness table accessor for type WorkoutNotificationRaceCompleteView and conformance WorkoutNotificationRaceCompleteView();
    lazy protocol witness table accessor for type WorkoutNotificationStandardView and conformance WorkoutNotificationStandardView();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<WorkoutNotificationRaceCompleteView, WorkoutNotificationStandardView> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type WorkoutNotificationRaceCompleteView and conformance WorkoutNotificationRaceCompleteView()
{
  result = lazy protocol witness table cache variable for type WorkoutNotificationRaceCompleteView and conformance WorkoutNotificationRaceCompleteView;
  if (!lazy protocol witness table cache variable for type WorkoutNotificationRaceCompleteView and conformance WorkoutNotificationRaceCompleteView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkoutNotificationRaceCompleteView and conformance WorkoutNotificationRaceCompleteView);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type WorkoutNotificationStandardView and conformance WorkoutNotificationStandardView()
{
  result = lazy protocol witness table cache variable for type WorkoutNotificationStandardView and conformance WorkoutNotificationStandardView;
  if (!lazy protocol witness table cache variable for type WorkoutNotificationStandardView and conformance WorkoutNotificationStandardView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkoutNotificationStandardView and conformance WorkoutNotificationStandardView);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<WorkoutNotificationTranscriptView, Text> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<WorkoutNotificationTranscriptView, Text> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<WorkoutNotificationTranscriptView, Text> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB00E26NotificationTranscriptViewVAA4TextVGMd, &_s7SwiftUI19_ConditionalContentVy07WorkoutB00E26NotificationTranscriptViewVAA4TextVGMR);
    lazy protocol witness table accessor for type WorkoutNotificationTranscriptView and conformance WorkoutNotificationTranscriptView();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<WorkoutNotificationTranscriptView, Text> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<WorkoutNotificationIntervalView, WorkoutNotificationIntervalView>, _ConditionalContent<WorkoutNotificationMilestoneView, WorkoutNotificationPacerCompleteView>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<WorkoutNotificationIntervalView, WorkoutNotificationIntervalView>, _ConditionalContent<WorkoutNotificationMilestoneView, WorkoutNotificationPacerCompleteView>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<WorkoutNotificationIntervalView, WorkoutNotificationIntervalView>, _ConditionalContent<WorkoutNotificationMilestoneView, WorkoutNotificationPacerCompleteView>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyACy07WorkoutB00E24NotificationIntervalViewVAFGACyAD0ef9MilestoneH0VAD0ef13PacerCompleteH0VGGMd, &_s7SwiftUI19_ConditionalContentVyACy07WorkoutB00E24NotificationIntervalViewVAFGACyAD0ef9MilestoneH0VAD0ef13PacerCompleteH0VGGMR);
    lazy protocol witness table accessor for type _ConditionalContent<WorkoutNotificationIntervalView, WorkoutNotificationIntervalView> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type _ConditionalContent<WorkoutNotificationMilestoneView, WorkoutNotificationPacerCompleteView> and conformance <> _ConditionalContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<WorkoutNotificationIntervalView, WorkoutNotificationIntervalView>, _ConditionalContent<WorkoutNotificationMilestoneView, WorkoutNotificationPacerCompleteView>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<WorkoutNotificationIntervalView, WorkoutNotificationIntervalView> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<WorkoutNotificationIntervalView, WorkoutNotificationIntervalView> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<WorkoutNotificationIntervalView, WorkoutNotificationIntervalView> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB00E24NotificationIntervalViewVAFGMd, &_s7SwiftUI19_ConditionalContentVy07WorkoutB00E24NotificationIntervalViewVAFGMR);
    lazy protocol witness table accessor for type WorkoutNotificationIntervalView and conformance WorkoutNotificationIntervalView();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<WorkoutNotificationIntervalView, WorkoutNotificationIntervalView> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type WorkoutNotificationIntervalView and conformance WorkoutNotificationIntervalView()
{
  result = lazy protocol witness table cache variable for type WorkoutNotificationIntervalView and conformance WorkoutNotificationIntervalView;
  if (!lazy protocol witness table cache variable for type WorkoutNotificationIntervalView and conformance WorkoutNotificationIntervalView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkoutNotificationIntervalView and conformance WorkoutNotificationIntervalView);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<WorkoutNotificationMilestoneView, WorkoutNotificationPacerCompleteView> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<WorkoutNotificationMilestoneView, WorkoutNotificationPacerCompleteView> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<WorkoutNotificationMilestoneView, WorkoutNotificationPacerCompleteView> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB00E25NotificationMilestoneViewVAD0ef13PacerCompleteH0VGMd, &_s7SwiftUI19_ConditionalContentVy07WorkoutB00E25NotificationMilestoneViewVAD0ef13PacerCompleteH0VGMR);
    lazy protocol witness table accessor for type WorkoutNotificationMilestoneView and conformance WorkoutNotificationMilestoneView();
    lazy protocol witness table accessor for type WorkoutNotificationPacerCompleteView and conformance WorkoutNotificationPacerCompleteView();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<WorkoutNotificationMilestoneView, WorkoutNotificationPacerCompleteView> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type WorkoutNotificationMilestoneView and conformance WorkoutNotificationMilestoneView()
{
  result = lazy protocol witness table cache variable for type WorkoutNotificationMilestoneView and conformance WorkoutNotificationMilestoneView;
  if (!lazy protocol witness table cache variable for type WorkoutNotificationMilestoneView and conformance WorkoutNotificationMilestoneView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkoutNotificationMilestoneView and conformance WorkoutNotificationMilestoneView);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type WorkoutNotificationPacerCompleteView and conformance WorkoutNotificationPacerCompleteView()
{
  result = lazy protocol witness table cache variable for type WorkoutNotificationPacerCompleteView and conformance WorkoutNotificationPacerCompleteView;
  if (!lazy protocol witness table cache variable for type WorkoutNotificationPacerCompleteView and conformance WorkoutNotificationPacerCompleteView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkoutNotificationPacerCompleteView and conformance WorkoutNotificationPacerCompleteView);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<WorkoutNotificationRaceCompleteView, WorkoutNotificationStandardView>, _ConditionalContent<WorkoutNotificationTranscriptView, Text>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<WorkoutNotificationRaceCompleteView, WorkoutNotificationStandardView>, _ConditionalContent<WorkoutNotificationTranscriptView, Text>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<WorkoutNotificationRaceCompleteView, WorkoutNotificationStandardView>, _ConditionalContent<WorkoutNotificationTranscriptView, Text>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyACy07WorkoutB00E28NotificationRaceCompleteViewVAD0ef8StandardI0VGACyAD0ef10TranscriptI0VAA4TextVGGMd, &_s7SwiftUI19_ConditionalContentVyACy07WorkoutB00E28NotificationRaceCompleteViewVAD0ef8StandardI0VGACyAD0ef10TranscriptI0VAA4TextVGGMR);
    lazy protocol witness table accessor for type _ConditionalContent<WorkoutNotificationRaceCompleteView, WorkoutNotificationStandardView> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type _ConditionalContent<WorkoutNotificationTranscriptView, Text> and conformance <> _ConditionalContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<WorkoutNotificationRaceCompleteView, WorkoutNotificationStandardView>, _ConditionalContent<WorkoutNotificationTranscriptView, Text>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WorkoutNotificationView(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
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

uint64_t storeEnumTagSinglePayload for WorkoutNotificationView(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<WorkoutNotificationIntervalView, WorkoutNotificationIntervalView>, _ConditionalContent<WorkoutNotificationMilestoneView, WorkoutNotificationPacerCompleteView>>, _ConditionalContent<_ConditionalContent<WorkoutNotificationRaceCompleteView, WorkoutNotificationStandardView>, _ConditionalContent<WorkoutNotificationTranscriptView, Text>>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<_ConditionalContent<WorkoutNotificationIntervalView, WorkoutNotificationIntervalView>, _ConditionalContent<WorkoutNotificationMilestoneView, WorkoutNotificationPacerCompleteView>>, _ConditionalContent<_ConditionalContent<WorkoutNotificationRaceCompleteView, WorkoutNotificationStandardView>, _ConditionalContent<WorkoutNotificationTranscriptView, Text>>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<_ConditionalContent<WorkoutNotificationIntervalView, WorkoutNotificationIntervalView>, _ConditionalContent<WorkoutNotificationMilestoneView, WorkoutNotificationPacerCompleteView>>, _ConditionalContent<_ConditionalContent<WorkoutNotificationRaceCompleteView, WorkoutNotificationStandardView>, _ConditionalContent<WorkoutNotificationTranscriptView, Text>>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyACyACy07WorkoutB00E24NotificationIntervalViewVAFGACyAD0ef9MilestoneH0VAD0ef13PacerCompleteH0VGGACyACyAD0ef4RacekH0VAD0ef8StandardH0VGACyAD0ef10TranscriptH0VAA4TextVGGGMd, _s7SwiftUI19_ConditionalContentVyACyACy07WorkoutB00E24NotificationIntervalViewVAFGACyAD0ef9MilestoneH0VAD0ef13PacerCompleteH0VGGACyACyAD0ef4RacekH0VAD0ef8StandardH0VGACyAD0ef10TranscriptH0VAA4TextVGGGMR);
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<WorkoutNotificationIntervalView, WorkoutNotificationIntervalView>, _ConditionalContent<WorkoutNotificationMilestoneView, WorkoutNotificationPacerCompleteView>> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<WorkoutNotificationRaceCompleteView, WorkoutNotificationStandardView>, _ConditionalContent<WorkoutNotificationTranscriptView, Text>> and conformance <> _ConditionalContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<_ConditionalContent<WorkoutNotificationIntervalView, WorkoutNotificationIntervalView>, _ConditionalContent<WorkoutNotificationMilestoneView, WorkoutNotificationPacerCompleteView>>, _ConditionalContent<_ConditionalContent<WorkoutNotificationRaceCompleteView, WorkoutNotificationStandardView>, _ConditionalContent<WorkoutNotificationTranscriptView, Text>>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

void specialized Array.append<A>(contentsOf:)(unint64_t a1)
{
  specialized Array.append<A>(contentsOf:)(a1, specialized Array._copyContents(initializing:));
}

{
  specialized Array.append<A>(contentsOf:)(a1, specialized Array._copyContents(initializing:));
}

{
  specialized Array.append<A>(contentsOf:)(a1, specialized Array._copyContents(initializing:));
}

{
  specialized Array.append<A>(contentsOf:)(a1, specialized Array._copyContents(initializing:));
}

void specialized Array.append<A>(contentsOf:)(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v3 + 3) >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v11, 1, v3);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 3) >> 1) - *(v3 + 2) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v8 = *(v3 + 2);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 2) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v12, 1, v3);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = (v3[3] >> 1) - v3[2];
  type metadata accessor for TrainingLoadSampleDaySummary();
  if (v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v9 = v3[2];
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    v3[2] = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v3 + 3) >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v11, 1, v3);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 3) >> 1) - *(v3 + 2) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v8 = *(v3 + 2);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 2) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}