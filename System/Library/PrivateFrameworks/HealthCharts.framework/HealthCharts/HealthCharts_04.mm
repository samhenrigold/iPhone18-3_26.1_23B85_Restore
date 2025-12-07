uint64_t closure #1 in static HealthChart.build<A>(attributes:_:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, unint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t *a6@<X8>, __n128 a7@<Q0>)
{
  type metadata accessor for <<opaque return type of ChartContent.opacity(_:)>>.0(255, a7);
  a6[3] = type metadata accessor for BuilderTuple();
  type metadata accessor for <<opaque return type of ChartContent.accessibilityHidden(_:)>>.0(255);
  type metadata accessor for PointMark();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  a6[4] = swift_getWitnessTable();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a6);
  return boundedContent #1 <A, B><A1>() in static HealthChart.build<A>(attributes:_:)(a1, a2, a3, a4, a5, boxed_opaque_existential_1);
}

uint64_t HealthChart.init(_:_:)@<X0>(uint64_t a1@<X0>, void (*a2)(void)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a6;
  v14 = type metadata accessor for HealthChart.ViewModel(0, &v17);
  v15 = *(v14 - 8);
  (*(v15 + 16))(a7, a1, v14);
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a6;
  type metadata accessor for HealthChart(0, &v17);
  a2();
  return (*(v15 + 8))(a1, v14);
}

uint64_t HealthChart.init<>(attributes:_:)@<X0>(uint64_t a1@<X0>, void (*a2)(void)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, int *a5@<X5>, uint64_t a6@<X6>, void *a7@<X8>)
{
  v20 = a2;
  v22 = a1;
  v24 = a3;
  v25 = a5;
  v13 = type metadata accessor for ChartAttributes(0, a3, a5, a3);
  v21 = v13;
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = (&v19 - v15);
  v23 = *(a6 + 8);
  v26[0] = a3;
  v26[1] = a4;
  v26[2] = a5;
  AssociatedTypeWitness = v23;
  type metadata accessor for HealthChart(0, v26);
  v20();
  (*(v14 + 16))(v16, a1, v13);
  v17 = *(a6 + 40);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v26);
  v17(a4, a6);
  HealthChart.ViewModel.init(attributes:series:)(v16, v26, v24, a4, v25, v23, a7);
  return (*(v14 + 8))(v22, v21);
}

uint64_t HealthChart.body.getter@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v30 = a2;
  v27 = a1[3];
  v28 = a1[5];
  type metadata accessor for Chart();
  type metadata accessor for ModifiedContent();
  v3 = a1[4];
  v4 = a1[2];
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for ClosedRange();
  WitnessTable = swift_getWitnessTable();
  v44 = MEMORY[0x277CDF678];
  swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for AxisMarks<Never>(255, &lazy cache variable for type metadata for AxisMarks<Never>, MEMORY[0x277D84A98], MEMORY[0x277CBB5A8], MEMORY[0x277CBB458]);
  v26 = v3;
  v25 = v4;
  swift_getAssociatedTypeWitness();
  type metadata accessor for BuilderConditional();
  swift_getOpaqueTypeConformance2();
  v36 = lazy protocol witness table accessor for type AxisMarks<Never> and conformance AxisMarks<A>();
  v37 = swift_getAssociatedConformanceWitness();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for AutomaticScaleDomain();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for AxisMarks<Never>(255, &lazy cache variable for type metadata for ClosedRange<Double>, MEMORY[0x277D839F8], MEMORY[0x277D83A20], MEMORY[0x277D83638]);
  lazy protocol witness table accessor for type ClosedRange<Double> and conformance <> ClosedRange<A>(v5);
  swift_getOpaqueTypeMetadata2();
  v6 = type metadata accessor for _ConditionalContent();
  type metadata accessor for BuilderConditional<AxisMarks<Never>, AnyAxisContent>(255, &lazy cache variable for type metadata for BuilderConditional<AxisMarks<Never>, AnyAxisContent>, MEMORY[0x277CBB378], v7);
  v9 = v8;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v35 = swift_getOpaqueTypeConformance2();
  v10 = swift_getWitnessTable();
  v12 = lazy protocol witness table accessor for type BuilderConditional<AxisMarks<Never>, AnyAxisContent> and conformance <> BuilderConditional<A, B>(v11);
  swift_getOpaqueTypeMetadata2();
  v38 = v6;
  v39 = v9;
  v40 = v10;
  v41 = v12;
  swift_getOpaqueTypeConformance2();
  v13 = type metadata accessor for VStack();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v25 - v18;
  *&v20 = v25;
  *(&v20 + 1) = v27;
  *&v21 = v26;
  *(&v21 + 1) = v28;
  v31 = v20;
  v32 = v21;
  v33 = v29;
  static HorizontalAlignment.center.getter();
  VStack.init(alignment:spacing:content:)();
  swift_getWitnessTable();
  v22 = *(v14 + 16);
  v22(v19, v16, v13);
  v23 = *(v14 + 8);
  v23(v16, v13);
  v22(v30, v19, v13);
  return (v23)(v19, v13);
}

unint64_t lazy protocol witness table accessor for type ClosedRange<Double> and conformance <> ClosedRange<A>(__n128 a1)
{
  result = lazy protocol witness table cache variable for type ClosedRange<Double> and conformance <> ClosedRange<A>;
  if (!lazy protocol witness table cache variable for type ClosedRange<Double> and conformance <> ClosedRange<A>)
  {
    type metadata accessor for AxisMarks<Never>(255, &lazy cache variable for type metadata for ClosedRange<Double>, MEMORY[0x277D839F8], MEMORY[0x277D83A20], MEMORY[0x277D83638]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ClosedRange<Double> and conformance <> ClosedRange<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type BuilderConditional<AxisMarks<Never>, AnyAxisContent> and conformance <> BuilderConditional<A, B>(__n128 a1)
{
  result = lazy protocol witness table cache variable for type BuilderConditional<AxisMarks<Never>, AnyAxisContent> and conformance <> BuilderConditional<A, B>;
  if (!lazy protocol witness table cache variable for type BuilderConditional<AxisMarks<Never>, AnyAxisContent> and conformance <> BuilderConditional<A, B>)
  {
    type metadata accessor for BuilderConditional<AxisMarks<Never>, AnyAxisContent>(255, &lazy cache variable for type metadata for BuilderConditional<AxisMarks<Never>, AnyAxisContent>, MEMORY[0x277CBB378], a1);
    lazy protocol witness table accessor for type AxisMarks<Never> and conformance AxisMarks<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BuilderConditional<AxisMarks<Never>, AnyAxisContent> and conformance <> BuilderConditional<A, B>);
  }

  return result;
}

uint64_t closure #1 in HealthChart.body.getter@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, char *a6@<X8>)
{
  v128 = a1;
  v129 = a6;
  _s16HealthChartsCore0aB4UnitVSgMaTm_1(0, &lazy cache variable for type metadata for ScaleType?, MEMORY[0x277CBB480]);
  MEMORY[0x28223BE20](v11 - 8);
  v126 = &v90 - v12;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v124 = type metadata accessor for AxisScale(0, AssociatedTypeWitness, AssociatedConformanceWitness, v15);
  v122 = *(v124 - 8);
  MEMORY[0x28223BE20](v124);
  v125 = &v90 - v16;
  v127 = a3;
  v130 = a5;
  v17 = type metadata accessor for Chart();
  v115 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v114 = &v90 - v18;
  v19 = type metadata accessor for ModifiedContent();
  v121 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v120 = &v90 - v20;
  v21 = type metadata accessor for ClosedRange();
  v119 = v17;
  WitnessTable = swift_getWitnessTable();
  v140 = WitnessTable;
  v141 = MEMORY[0x277CDF678];
  v22 = swift_getWitnessTable();
  v139 = swift_getAssociatedConformanceWitness();
  v23 = swift_getWitnessTable();
  v136 = v19;
  *&v137 = v21;
  *(&v137 + 1) = v22;
  v138 = v23;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v117 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v113 = &v90 - v25;
  type metadata accessor for AxisMarks<Never>(255, &lazy cache variable for type metadata for AxisMarks<Never>, MEMORY[0x277D84A98], MEMORY[0x277CBB5A8], MEMORY[0x277CBB458]);
  swift_getAssociatedTypeWitness();
  v26 = type metadata accessor for BuilderConditional();
  v123 = v19;
  v136 = v19;
  *&v137 = v21;
  v116 = v21;
  v112 = v22;
  *(&v137 + 1) = v22;
  v138 = v23;
  v111 = v23;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v28 = lazy protocol witness table accessor for type AxisMarks<Never> and conformance AxisMarks<A>();
  v131 = a4;
  v29 = a2;
  v30 = swift_getAssociatedConformanceWitness();
  v134 = v28;
  v135 = v30;
  v31 = swift_getWitnessTable();
  v136 = OpaqueTypeMetadata2;
  *&v137 = v26;
  *(&v137 + 1) = OpaqueTypeConformance2;
  v138 = v31;
  v32 = swift_getOpaqueTypeMetadata2();
  v106 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v104 = &v90 - v33;
  v34 = type metadata accessor for AutomaticScaleDomain();
  v118 = OpaqueTypeMetadata2;
  v136 = OpaqueTypeMetadata2;
  *&v137 = v26;
  v109 = v26;
  v108 = OpaqueTypeConformance2;
  *(&v137 + 1) = OpaqueTypeConformance2;
  v138 = v31;
  v105 = v31;
  v35 = swift_getOpaqueTypeConformance2();
  v136 = v32;
  *&v137 = v34;
  v36 = MEMORY[0x277CBB398];
  *(&v137 + 1) = v35;
  v138 = MEMORY[0x277CBB398];
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for AxisMarks<Never>(255, &lazy cache variable for type metadata for ClosedRange<Double>, MEMORY[0x277D839F8], MEMORY[0x277D83A20], MEMORY[0x277D83638]);
  v38 = v37;
  v40 = lazy protocol witness table accessor for type ClosedRange<Double> and conformance <> ClosedRange<A>(v39);
  v136 = v32;
  *&v137 = v38;
  *(&v137 + 1) = v35;
  v138 = v40;
  swift_getOpaqueTypeMetadata2();
  v41 = type metadata accessor for _ConditionalContent();
  v101 = *(v41 - 8);
  v42 = MEMORY[0x28223BE20](v41);
  v100 = &v90 - v43;
  type metadata accessor for BuilderConditional<AxisMarks<Never>, AnyAxisContent>(255, &lazy cache variable for type metadata for BuilderConditional<AxisMarks<Never>, AnyAxisContent>, MEMORY[0x277CBB378], v42);
  v45 = v44;
  v136 = v32;
  *&v137 = v34;
  *(&v137 + 1) = v35;
  v138 = v36;
  v46 = swift_getOpaqueTypeConformance2();
  v107 = v32;
  v136 = v32;
  *&v137 = v38;
  v103 = v35;
  *(&v137 + 1) = v35;
  v138 = v40;
  v47 = swift_getOpaqueTypeConformance2();
  v132 = v46;
  v133 = v47;
  v48 = swift_getWitnessTable();
  v50 = lazy protocol witness table accessor for type BuilderConditional<AxisMarks<Never>, AnyAxisContent> and conformance <> BuilderConditional<A, B>(v49);
  v102 = v41;
  v136 = v41;
  *&v137 = v45;
  v99 = v45;
  v96 = v48;
  *(&v137 + 1) = v48;
  v138 = v50;
  v95 = v50;
  v98 = swift_getOpaqueTypeMetadata2();
  v97 = *(v98 - 8);
  MEMORY[0x28223BE20](v98);
  v93 = &v90 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v52);
  v94 = &v90 - v53;
  type metadata accessor for MainActor();
  v92 = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  MEMORY[0x28223BE20](isCurrentExecutor);
  *(&v90 - 6) = v29;
  v55 = v29;
  v91 = v29;
  v57 = v127;
  v56 = v128;
  v59 = v130;
  v58 = v131;
  *(&v90 - 5) = v127;
  *(&v90 - 4) = v58;
  v60 = v58;
  *(&v90 - 3) = v59;
  *(&v90 - 2) = v56;
  v61 = v114;
  Chart.init(content:)();
  static Alignment.center.getter();
  v62 = v120;
  v63 = v119;
  View.frame(width:height:alignment:)();
  (*(v115 + 8))(v61, v63);
  v136 = v55;
  *&v137 = v57;
  *(&v137 + 1) = v60;
  v138 = v59;
  v119 = type metadata accessor for HealthChart.ViewModel(0, &v136);
  v64 = v124;
  v65 = v125;
  (*(v122 + 16))(v125, &v56[*(v119 + 60)], v124);
  v66 = *(v64 + 36);
  v67 = type metadata accessor for ScaleType();
  v68 = v126;
  (*(*(v67 - 8) + 56))(v126, 1, 1, v67);
  v69 = swift_checkMetadataState();
  v70 = v113;
  v71 = v123;
  View.chartXScale<A>(domain:type:)();
  outlined destroy of ScaleType?(v68, &lazy cache variable for type metadata for ScaleType?, MEMORY[0x277CBB480]);
  (*(v121 + 8))(v62, v71);
  v72 = (*(*(v69 - 8) + 8))(&v65[v66], v69);
  MEMORY[0x28223BE20](v72);
  v73 = v91;
  *(&v90 - 6) = v91;
  *(&v90 - 5) = v57;
  v75 = v130;
  v74 = v131;
  *(&v90 - 4) = v131;
  *(&v90 - 3) = v75;
  *(&v90 - 2) = v56;
  swift_checkMetadataState();
  v76 = v104;
  v77 = v118;
  View.chartXAxis<A>(content:)();
  (*(v117 + 8))(v70, v77);
  v78 = &v56[*(v119 + 64)];
  LOBYTE(v136) = *v78;
  v137 = *(v78 + 8);
  v79 = v100;
  v80 = v107;
  View.chartYScale(scale:)(&v136, v107, v103, v100);
  v81 = (*(v106 + 8))(v76, v80);
  MEMORY[0x28223BE20](v81);
  *(&v90 - 6) = v73;
  *(&v90 - 5) = v57;
  *(&v90 - 4) = v74;
  *(&v90 - 3) = v75;
  *(&v90 - 2) = v56;
  swift_checkMetadataState();
  v82 = v93;
  v83 = v102;
  View.chartYAxis<A>(content:)();
  (*(v101 + 8))(v79, v83);
  v84 = v97;
  v85 = *(v97 + 16);
  v86 = v94;
  v87 = v98;
  v85(v94, v82, v98);
  v88 = *(v84 + 8);
  v88(v82, v87);
  v85(v129, v86, v87);
  v88(v86, v87);
}

uint64_t closure #1 in closure #1 in HealthChart.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v14[1] = a6;
  v10 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v12 = v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v15[0] = a2;
  v15[1] = a3;
  v15[2] = a4;
  v15[3] = a5;
  type metadata accessor for HealthChart(0, v15);
  static ChartContentBuilder.buildExpression<A>(_:)();
  static ChartContentBuilder.buildExpression<A>(_:)();
  (*(v10 + 8))(v12, a3);
}

uint64_t closure #2 in closure #1 in HealthChart.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v22 = a3;
  v23 = a5;
  v24 = a1;
  v25 = a6;
  type metadata accessor for AxisMarks<Never>(255, &lazy cache variable for type metadata for AxisMarks<Never>, MEMORY[0x277D84A98], MEMORY[0x277CBB5A8], MEMORY[0x277CBB458]);
  swift_getAssociatedTypeWitness();
  v9 = type metadata accessor for BuilderConditional();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v22 - v14;
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v28[0] = a2;
  v28[1] = v22;
  v28[2] = a4;
  v28[3] = v23;
  v16 = type metadata accessor for HealthChart.ViewModel(0, v28);
  HealthChart.ViewModel.xAxisContent()(v16, v12);
  v17 = lazy protocol witness table accessor for type AxisMarks<Never> and conformance AxisMarks<A>();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v26 = v17;
  v27 = AssociatedConformanceWitness;
  swift_getWitnessTable();
  v19 = *(v10 + 16);
  v19(v15, v12, v9);
  v20 = *(v10 + 8);
  v20(v12, v9);
  v19(v25, v15, v9);
  v20(v15, v9);
}

uint64_t View.chartYScale(scale:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v64 = a4;
  type metadata accessor for AxisMarks<Never>(255, &lazy cache variable for type metadata for ClosedRange<Double>, MEMORY[0x277D839F8], MEMORY[0x277D83A20], MEMORY[0x277D83638]);
  *&v71 = a2;
  *(&v71 + 1) = v9;
  v67 = lazy protocol witness table accessor for type ClosedRange<Double> and conformance <> ClosedRange<A>(v8);
  v68 = *(&v71 + 1);
  v72 = a3;
  v73 = v67;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v58 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v12 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v57 = &v55 - v14;
  _s16HealthChartsCore0aB4UnitVSgMaTm_1(0, &lazy cache variable for type metadata for ScaleType?, MEMORY[0x277CBB480]);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v55 - v16;
  v18 = type metadata accessor for AutomaticScaleDomain();
  v56 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v20 = &v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v71 = a2;
  *(&v71 + 1) = v21;
  v66 = v21;
  v65 = a3;
  v72 = a3;
  v73 = MEMORY[0x277CBB398];
  v22 = swift_getOpaqueTypeMetadata2();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v55 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v28 = &v55 - v27;
  v63 = OpaqueTypeMetadata2;
  v29 = type metadata accessor for _ConditionalContent();
  v61 = *(v29 - 8);
  v62 = v29;
  MEMORY[0x28223BE20](v29);
  v60 = &v55 - v30;
  if (*a1)
  {
    v71 = *(a1 + 8);
    v31 = type metadata accessor for ScaleType();
    (*(*(v31 - 8) + 56))(v17, 1, 1, v31);
    v32 = swift_checkMetadataState();
    v56 = v22;
    v33 = a2;
    v34 = v65;
    v35 = v67;
    View.chartYScale<A>(domain:type:)();
    outlined destroy of ScaleType?(v17, &lazy cache variable for type metadata for ScaleType?, MEMORY[0x277CBB480]);
    *&v71 = v33;
    *(&v71 + 1) = v32;
    v72 = v34;
    v73 = v35;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v37 = v57;
    v36 = v58;
    v38 = *(v58 + 16);
    v39 = v63;
    v38(v57, v12, v63);
    v40 = *(v36 + 8);
    v40(v12, v39);
    v38(v12, v37, v39);
    *&v71 = v33;
    *(&v71 + 1) = v66;
    v72 = v34;
    a2 = v33;
    v73 = MEMORY[0x277CBB398];
    v41 = swift_getOpaqueTypeConformance2();
    v42 = v60;
    static ViewBuilder.buildEither<A, B>(second:)(v12, v56, v39, v41, OpaqueTypeConformance2);
    v40(v12, v39);
    v40(v37, v39);
  }

  else
  {
    static ScaleDomain<>.automatic(includesZero:reversed:)();
    v43 = type metadata accessor for ScaleType();
    (*(*(v43 - 8) + 56))(v17, 1, 1, v43);
    v44 = v65;
    v45 = v66;
    View.chartYScale<A>(domain:type:)();
    outlined destroy of ScaleType?(v17, &lazy cache variable for type metadata for ScaleType?, MEMORY[0x277CBB480]);
    (*(v56 + 8))(v20, v45);
    *&v71 = a2;
    *(&v71 + 1) = v45;
    v72 = v44;
    v73 = MEMORY[0x277CBB398];
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v46 = *(v23 + 16);
    v46(v28, v25, v22);
    v47 = *(v23 + 8);
    v47(v25, v22);
    v46(v25, v28, v22);
    *&v71 = a2;
    *(&v71 + 1) = v68;
    v72 = v44;
    v73 = v67;
    v48 = swift_getOpaqueTypeConformance2();
    v42 = v60;
    static ViewBuilder.buildEither<A, B>(first:)(v25, v22, v63, OpaqueTypeConformance2, v48);
    v47(v25, v22);
    v47(v28, v22);
  }

  v49 = v65;
  *&v71 = a2;
  *(&v71 + 1) = v66;
  v72 = v65;
  v73 = MEMORY[0x277CBB398];
  v50 = swift_getOpaqueTypeConformance2();
  *&v71 = a2;
  *(&v71 + 1) = v68;
  v72 = v49;
  v73 = v67;
  v51 = swift_getOpaqueTypeConformance2();
  v69 = v50;
  v70 = v51;
  v52 = v62;
  swift_getWitnessTable();
  v53 = v61;
  (*(v61 + 16))(v64, v42, v52);
  return (*(v53 + 8))(v42, v52);
}

uint64_t closure #3 in closure #1 in HealthChart.body.getter@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v12[0] = a1;
  v12[1] = a2;
  v12[2] = a3;
  v12[3] = a4;
  v10 = type metadata accessor for HealthChart.ViewModel(0, v12);
  HealthChart.ViewModel.yAxisContent()(v10, a5);
}

uint64_t type metadata completion function for HealthChart(uint64_t a1)
{
  v1 = *(a1 + 40);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = v1;
  result = type metadata accessor for HealthChart.ViewModel(319, &v5);
  if (v3 <= 0x3F)
  {
    v8 = 0;
    v5 = result;
    result = swift_checkMetadataState();
    if (v4 <= 0x3F)
    {
      v9 = 0;
      *&v6 = result;
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HealthChart(unsigned __int16 *a1, unsigned int a2, void *a3, __n128 a4)
{
  v7 = a3[2];
  v8 = *(swift_getAssociatedTypeWitness() - 8);
  v9 = v8;
  v10 = *(v8 + 84);
  v11 = *(v7 - 8);
  if (v10)
  {
    v12 = v10 - 1;
  }

  else
  {
    v12 = 0;
  }

  v13 = *(v11 + 84);
  if (v10 <= v13)
  {
    v14 = *(v11 + 84);
  }

  else
  {
    v14 = *(v8 + 84);
  }

  if (v14 <= 0x7FFFFFFF)
  {
    v15 = 0x7FFFFFFF;
  }

  else
  {
    v15 = v14;
  }

  v16 = *(a3[3] - 8);
  v17 = *(v16 + 84);
  v18 = *(v8 + 80);
  v19 = *(v8 + 64);
  v20 = *(v11 + 80);
  v21 = *(v11 + 64);
  v22 = *(v16 + 80);
  if (v17 <= v15)
  {
    v23 = v15;
  }

  else
  {
    v23 = *(v16 + 84);
  }

  v24 = (v19 + v18) & ~v18;
  v25 = v24 + v19;
  if (v10)
  {
    v26 = v24 + v19;
  }

  else
  {
    v26 = v25 + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v27 = v25 + ((v18 + 1) & ~v18) + 7;
  v28 = v21 + 7;
  v29 = ((v21 + 7 + ((v20 + 24 + ((v27 + ((v18 + 17 + ((v26 + ((v18 + 8) & ~v18) + 7) & 0xFFFFFFFFFFFFFFF8)) & ~v18)) & 0xFFFFFFFFFFFFFFF8)) & ~v20)) & 0xFFFFFFFFFFFFFFF8) + v22 + 50;
  v30 = a2 - v23;
  if (a2 > v23)
  {
    v31 = (v29 & ~v22) + *(v16 + 64);
    v32 = 8 * v31;
    if (v31 > 3)
    {
      goto LABEL_19;
    }

    v34 = ((v30 + ~(-1 << v32)) >> v32) + 1;
    if (HIWORD(v34))
    {
      v33 = *(a1 + v31);
      if (v33)
      {
        goto LABEL_26;
      }
    }

    else
    {
      if (v34 <= 0xFF)
      {
        if (v34 < 2)
        {
          goto LABEL_39;
        }

LABEL_19:
        v33 = *(a1 + v31);
        if (!*(a1 + v31))
        {
          goto LABEL_39;
        }

LABEL_26:
        v35 = (v33 - 1) << v32;
        if (v31 > 3)
        {
          v35 = 0;
        }

        if (v31)
        {
          if (v31 <= 3)
          {
            v36 = (v29 & ~v22) + *(v16 + 64);
          }

          else
          {
            v36 = 4;
          }

          if (v36 > 2)
          {
            if (v36 == 3)
            {
              v37 = *a1 | (*(a1 + 2) << 16);
            }

            else
            {
              v37 = *a1;
            }
          }

          else if (v36 == 1)
          {
            v37 = *a1;
          }

          else
          {
            v37 = *a1;
          }
        }

        else
        {
          v37 = 0;
        }

        return v23 + (v37 | v35) + 1;
      }

      v33 = *(a1 + v31);
      if (*(a1 + v31))
      {
        goto LABEL_26;
      }
    }
  }

LABEL_39:
  if (v15 < v17)
  {
    v38 = *(v16 + 48);

    return v38((a1 + v29) & ~v22, v17);
  }

  v40 = ~v18;
  if (v12 == v15)
  {
    if (v10 >= 2)
    {
      v43 = (*(v9 + 48))((a1 + v18 + 8) & ~v18);
      if (v43 >= 2)
      {
        return v43 - 1;
      }

      else
      {
        return 0;
      }
    }

    return 0;
  }

  v41 = (v18 + 17 + ((((a1 + v18 + 8) & ~v18) + v26 + 7) & 0xFFFFFFFFFFFFFFF8)) & v40;
  if (v10 == v15)
  {
    v42 = *(v9 + 48);

    return v42((v18 + 1 + v41) & v40);
  }

  else
  {
    v44 = (v20 + 24 + ((v27 + v41) & 0xFFFFFFFFFFFFFFF8)) & ~v20;
    if (v13 == v15)
    {
      v45 = *(*(v7 - 8) + 48);

      return v45(v44, v13, v7);
    }

    else
    {
      v46 = *((v28 + v44) & 0xFFFFFFFFFFFFFFF8);
      if (v46 >= 0xFFFFFFFF)
      {
        LODWORD(v46) = -1;
      }

      return (v46 + 1);
    }
  }
}

void storeEnumTagSinglePayload for HealthChart(_BYTE *a1, unsigned int a2, unsigned int a3, void *a4, __n128 a5)
{
  v7 = a4[2];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = 0;
  v10 = *(AssociatedTypeWitness - 8);
  v11 = *(v10 + 84);
  if (v11)
  {
    v12 = v11 - 1;
  }

  else
  {
    v12 = 0;
  }

  if (v11 <= 0xFE)
  {
    v13 = 254;
  }

  else
  {
    v13 = *(v10 + 84);
  }

  if (v13 <= v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = v13;
  }

  v56 = v7;
  v15 = *(v7 - 8);
  v16 = *(v15 + 84);
  if (v14 <= v16)
  {
    v14 = *(v15 + 84);
  }

  if (v14 <= 0x7FFFFFFF)
  {
    v17 = 0x7FFFFFFF;
  }

  else
  {
    v17 = v14;
  }

  v18 = *(a4[3] - 8);
  v19 = *(v18 + 84);
  v57 = *(AssociatedTypeWitness - 8);
  v20 = *(v10 + 80);
  v21 = *(v15 + 80);
  v22 = *(*(v7 - 8) + 64);
  v23 = *(v18 + 80);
  if (v19 <= v17)
  {
    v24 = v17;
  }

  else
  {
    v24 = *(v18 + 84);
  }

  v25 = ((*(*(AssociatedTypeWitness - 8) + 64) + v20) & ~v20) + *(*(AssociatedTypeWitness - 8) + 64);
  if (v11)
  {
    v26 = ((*(*(AssociatedTypeWitness - 8) + 64) + v20) & ~v20) + *(*(AssociatedTypeWitness - 8) + 64);
  }

  else
  {
    v26 = v25 + 1;
  }

  v27 = v25 + ((v20 + 1) & ~v20);
  v28 = v27 + 7 + ((v20 + 17 + ((v26 + ((v20 + 8) & ~v20) + 7) & 0xFFFFFFFFFFFFFFF8)) & ~v20);
  v29 = v21 + 24;
  v30 = v22 + 7;
  v31 = ((v22 + 7 + ((v21 + 24 + (v28 & 0xFFFFFFFFFFFFFFF8)) & ~v21)) & 0xFFFFFFFFFFFFFFF8) + v23 + 50;
  v32 = (v31 & ~v23) + *(v18 + 64);
  v33 = a3 >= v24;
  v34 = a3 - v24;
  if (v34 != 0 && v33)
  {
    if (v32 <= 3)
    {
      v35 = ((v34 + ~(-1 << (8 * v32))) >> (8 * v32)) + 1;
      if (HIWORD(v35))
      {
        v9 = 4;
      }

      else
      {
        if (v35 < 0x100)
        {
          v36 = 1;
        }

        else
        {
          v36 = 2;
        }

        if (v35 >= 2)
        {
          v9 = v36;
        }

        else
        {
          v9 = 0;
        }
      }
    }

    else
    {
      v9 = 1;
    }
  }

  if (v24 < a2)
  {
    v37 = ~v24 + a2;
    if (v32 >= 4)
    {
      bzero(a1, v32);
      *a1 = v37;
      v38 = 1;
      if (v9 > 1)
      {
        goto LABEL_36;
      }

      goto LABEL_65;
    }

    v38 = (v37 >> (8 * v32)) + 1;
    if (v32)
    {
      v39 = v37 & ~(-1 << (8 * v32));
      bzero(a1, v32);
      if (v32 != 3)
      {
        if (v32 == 2)
        {
          *a1 = v39;
          if (v9 > 1)
          {
            goto LABEL_36;
          }
        }

        else
        {
          *a1 = v37;
          if (v9 > 1)
          {
LABEL_36:
            if (v9 == 2)
            {
              *&a1[v32] = v38;
            }

            else
            {
              *&a1[v32] = v38;
            }

            return;
          }
        }

LABEL_65:
        if (v9)
        {
          a1[v32] = v38;
        }

        return;
      }

      *a1 = v39;
      a1[2] = BYTE2(v39);
    }

    if (v9 > 1)
    {
      goto LABEL_36;
    }

    goto LABEL_65;
  }

  if (v9 > 1)
  {
    if (v9 != 2)
    {
      *&a1[v32] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_50;
    }

    *&a1[v32] = 0;
  }

  else if (v9)
  {
    a1[v32] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_50;
  }

  if (!a2)
  {
    return;
  }

LABEL_50:
  if (v17 < v19)
  {
    v40 = *(v18 + 56);

    v40(&a1[v31] & ~v23, a2, v19);
    return;
  }

  v41 = ~v21;
  if (v17 < a2)
  {
    v42 = ((((v29 + (v28 & 0xFFFFFFF8)) & v41) + v22 + 7) & 0xFFFFFFF8) + 50;
    v43 = ~v17 + a2;
    bzero(a1, v42);
    if (v42 <= 3)
    {
      *a1 = v43;
    }

    else
    {
      *a1 = v43;
    }

    return;
  }

  v44 = ~v20;
  v45 = &a1[v20 + 8];
  v46 = (v45 & ~v20);
  if (v12 != v17)
  {
    v46 = ((v20 + 17 + (&v46[v26 + 7] & 0xFFFFFFFFFFFFFFF8)) & v44);
    if (v11 != v17)
    {
      v50 = (v29 + (&v46[v27 + 7] & 0xFFFFFFFFFFFFFFF8)) & v41;
      if (v16 != v17)
      {
        v55 = (v30 + v50) & 0xFFFFFFFFFFFFFFF8;
        if ((a2 & 0x80000000) != 0)
        {
          *(v55 + 40) = 0;
          *(v55 + 24) = 0u;
          *(v55 + 8) = 0u;
          *v55 = a2 & 0x7FFFFFFF;
        }

        else
        {
          *v55 = a2 - 1;
        }

        return;
      }

      v48 = a2;
      v47 = *(v15 + 56);
      v11 = v16;
      v49 = v56;
      goto LABEL_96;
    }

    if (v13 >= a2)
    {
      v48 = a2;
      v47 = *(v57 + 56);
      v49 = AssociatedTypeWitness;
      v50 = &v46[v20 + 1] & v44;
      goto LABEL_96;
    }

    if (v27 <= 3)
    {
      v51 = ~(-1 << (8 * v27));
    }

    else
    {
      v51 = -1;
    }

    if (!v27)
    {
      return;
    }

    v52 = v51 & (~v13 + a2);
    if (v27 <= 3)
    {
      v53 = v25 + ((v20 + 1) & ~v20);
    }

    else
    {
      v53 = 4;
    }

    bzero(v46, v27);
    if (v53 <= 2)
    {
      if (v53 == 1)
      {
LABEL_92:
        *v46 = v52;
        return;
      }

LABEL_82:
      *v46 = v52;
      return;
    }

LABEL_101:
    if (v53 == 3)
    {
      *v46 = v52;
      v46[2] = BYTE2(v52);
    }

    else
    {
      *v46 = v52;
    }

    return;
  }

  if (a2 >= v11)
  {
    if (v25 <= 3)
    {
      v54 = ~(-1 << (8 * v25));
    }

    else
    {
      v54 = -1;
    }

    if (!v25)
    {
      return;
    }

    v52 = v54 & (a2 - v11);
    if (v25 <= 3)
    {
      v53 = v25;
    }

    else
    {
      v53 = 4;
    }

    bzero((v45 & ~v20), v25);
    if (v53 <= 2)
    {
      if (v53 == 1)
      {
        goto LABEL_92;
      }

      goto LABEL_82;
    }

    goto LABEL_101;
  }

  v47 = *(v57 + 56);
  v48 = a2 + 1;
  v49 = AssociatedTypeWitness;
  v50 = v46;
LABEL_96:

  v47(v50, v48, v11, v49);
}

uint64_t sub_251411E80(uint64_t *a1)
{
  type metadata accessor for Chart();
  type metadata accessor for ModifiedContent();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for ClosedRange();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getAssociatedConformanceWitness();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for AxisMarks<Never>(255, &lazy cache variable for type metadata for AxisMarks<Never>, MEMORY[0x277D84A98], MEMORY[0x277CBB5A8], MEMORY[0x277CBB458]);
  swift_getAssociatedTypeWitness();
  type metadata accessor for BuilderConditional();
  swift_getOpaqueTypeConformance2();
  lazy protocol witness table accessor for type AxisMarks<Never> and conformance AxisMarks<A>();
  swift_getAssociatedConformanceWitness();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for AutomaticScaleDomain();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for AxisMarks<Never>(255, &lazy cache variable for type metadata for ClosedRange<Double>, MEMORY[0x277D839F8], MEMORY[0x277D83A20], MEMORY[0x277D83638]);
  lazy protocol witness table accessor for type ClosedRange<Double> and conformance <> ClosedRange<A>(v1);
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for _ConditionalContent();
  type metadata accessor for BuilderConditional<AxisMarks<Never>, AnyAxisContent>(255, &lazy cache variable for type metadata for BuilderConditional<AxisMarks<Never>, AnyAxisContent>, MEMORY[0x277CBB378], v2);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  lazy protocol witness table accessor for type BuilderConditional<AxisMarks<Never>, AnyAxisContent> and conformance <> BuilderConditional<A, B>(v3);
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  type metadata accessor for VStack();
  return swift_getWitnessTable();
}

void type metadata completion function for HealthChart.ViewModel(uint64_t a1, __n128 a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for ClosedRange();
  type metadata accessor for Optional();
  if (v5 <= 0x3F)
  {
    type metadata accessor for ClosedRange<Double>?(319, v4);
    if (v7 <= 0x3F)
    {
      type metadata accessor for AxisScale(319, AssociatedTypeWitness, AssociatedConformanceWitness, v6);
      if (v8 <= 0x3F)
      {
        type metadata accessor for AxisMarks<Never>(319, &lazy cache variable for type metadata for AxisScale<Double>, MEMORY[0x277D839F8], MEMORY[0x277D83A20], type metadata accessor for AxisScale);
        if (v9 <= 0x3F)
        {
          swift_checkMetadataState();
          if (v10 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for HealthChart.ViewModel(unsigned __int16 *a1, unsigned int a2, uint64_t a3, __n128 a4)
{
  v6 = *(a3 + 16);
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = v7;
  v9 = *(v7 + 84);
  if (v9)
  {
    v10 = v9 - 1;
  }

  else
  {
    v10 = 0;
  }

  v11 = *(v6 - 8);
  v12 = *(v11 + 84);
  v13 = *(v7 + 80);
  v14 = *(v7 + 64);
  v15 = *(v11 + 80);
  if (v9 <= v12)
  {
    v16 = *(v11 + 84);
  }

  else
  {
    v16 = *(v7 + 84);
  }

  if (v16 <= 0x7FFFFFFF)
  {
    v16 = 0x7FFFFFFF;
  }

  v17 = ((v14 + v13) & ~v13) + v14;
  if (v9)
  {
    v18 = v17;
  }

  else
  {
    v18 = v17 + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v19 = v13 + 17;
  v20 = v17 + ((v13 + 1) & ~v13) + 7;
  v21 = v15 + 24;
  v22 = *(*(v6 - 8) + 64) + 7;
  if (v16 < a2)
  {
    v23 = ((v22 + ((v21 + ((v20 + ((v19 + ((v18 + ((v13 + 8) & ~v13) + 7) & 0xFFFFFFFFFFFFFFF8)) & ~v13)) & 0xFFFFFFFFFFFFFFF8)) & ~v15)) & 0xFFFFFFFFFFFFFFF8) + 50;
    if (v23 <= 3)
    {
      v24 = ((a2 - v16 + 0xFFFF) >> 16) + 1;
    }

    else
    {
      v24 = 2;
    }

    if (v24 >= 0x10000)
    {
      v25 = 4;
    }

    else
    {
      v25 = 2;
    }

    if (v24 < 0x100)
    {
      v25 = 1;
    }

    if (v24 >= 2)
    {
      v26 = v25;
    }

    else
    {
      v26 = 0;
    }

    if (v26 > 1)
    {
      if (v26 == 2)
      {
        v27 = *(a1 + v23);
        if (*(a1 + v23))
        {
          goto LABEL_28;
        }
      }

      else
      {
        v27 = *(a1 + v23);
        if (v27)
        {
          goto LABEL_28;
        }
      }
    }

    else if (v26)
    {
      v27 = *(a1 + v23);
      if (*(a1 + v23))
      {
LABEL_28:
        v28 = (v27 - 1) << (8 * v23);
        if (v23 <= 3)
        {
          v29 = *a1;
        }

        else
        {
          v28 = 0;
          v29 = *a1;
        }

        return v16 + (v29 | v28) + 1;
      }
    }
  }

  v30 = ~v13;
  v31 = (a1 + v13 + 8) & ~v13;
  if (v10 == v16)
  {
    if (v9 >= 2)
    {
      v35 = (*(v8 + 48))(v31);
      if (v35 >= 2)
      {
        return v35 - 1;
      }

      else
      {
        return 0;
      }
    }

    return 0;
  }

  v33 = (v19 + ((v31 + v18 + 7) & 0xFFFFFFFFFFFFFFF8)) & v30;
  if (v9 == v16)
  {
    v34 = *(v8 + 48);

    return v34((v13 + 1 + v33) & v30);
  }

  else
  {
    v36 = (v21 + ((v20 + v33) & 0xFFFFFFFFFFFFFFF8)) & ~v15;
    if (v12 == v16)
    {
      v37 = *(v11 + 48);

      return v37(v36, v12, v6);
    }

    else
    {
      v38 = *((v22 + v36) & 0xFFFFFFFFFFFFFFF8);
      if (v38 >= 0xFFFFFFFF)
      {
        LODWORD(v38) = -1;
      }

      return (v38 + 1);
    }
  }
}

double storeEnumTagSinglePayload for HealthChart.ViewModel(_WORD *a1, uint64_t a2, unsigned int a3, uint64_t a4, __n128 a5)
{
  v8 = *(a4 + 16);
  v9 = 0;
  v10 = *(swift_getAssociatedTypeWitness() - 8);
  v12 = v10;
  v13 = *(v10 + 84);
  if (v13)
  {
    v14 = v13 - 1;
  }

  else
  {
    v14 = 0;
  }

  if (v13 <= 0xFE)
  {
    v15 = 254;
  }

  else
  {
    v15 = *(v10 + 84);
  }

  if (v15 <= v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = v15;
  }

  v17 = *(v8 - 8);
  v18 = *(v17 + 84);
  v19 = *(v10 + 80);
  v20 = *(v10 + 64);
  v21 = *(v17 + 80);
  v22 = *(v17 + 64);
  if (v16 <= v18)
  {
    v23 = *(v17 + 84);
  }

  else
  {
    v23 = v16;
  }

  if (v23 <= 0x7FFFFFFF)
  {
    v23 = 0x7FFFFFFF;
  }

  v24 = ((v20 + v19) & ~v19) + v20;
  if (v13)
  {
    v25 = v24;
  }

  else
  {
    v25 = v24 + 1;
  }

  v26 = v24 + ((v19 + 1) & ~v19);
  v27 = v22 + 7;
  v28 = ((v22 + 7 + ((v21 + 24 + ((v26 + 7 + ((v19 + 17 + ((v25 + ((v19 + 8) & ~v19) + 7) & 0xFFFFFFFFFFFFFFF8)) & ~v19)) & 0xFFFFFFFFFFFFFFF8)) & ~v21)) & 0xFFFFFFFFFFFFFFF8) + 50;
  if (v23 < a3)
  {
    v29 = (a3 - v23 + 0xFFFF) >> 16;
    if (v28 <= 3)
    {
      v30 = v29 + 1;
    }

    else
    {
      v30 = 2;
    }

    if (v30 >= 0x10000)
    {
      v9 = 4;
    }

    else
    {
      v9 = 2;
    }

    if (v30 < 0x100)
    {
      v9 = 1;
    }

    if (v30 < 2)
    {
      v9 = 0;
    }
  }

  if (v23 >= a2)
  {
    if (v9 > 1)
    {
      if (v9 != 2)
      {
        *(a1 + v28) = 0;
        if (!a2)
        {
          return result;
        }

LABEL_47:
        v33 = ~v19;
        v34 = ((a1 + v19 + 8) & ~v19);
        if (v14 == v23)
        {
          if (a2 < v13)
          {
            v35 = *(v12 + 56);
            v36 = (a2 + 1);
            v37 = v34;
LABEL_80:

            v35(v37, v36);
            return result;
          }

          if (v24 <= 3)
          {
            v41 = ~(-1 << (8 * v24));
          }

          else
          {
            v41 = -1;
          }

          if (!v24)
          {
            return result;
          }

          v39 = v41 & (a2 - v13);
          if (v24 <= 3)
          {
            v40 = v24;
          }

          else
          {
            v40 = 4;
          }

          bzero(v34, v24);
          if (v40 <= 2)
          {
            if (v40 == 1)
            {
              goto LABEL_74;
            }

            goto LABEL_61;
          }
        }

        else
        {
          v34 = ((v19 + 17 + (&v34[v25 + 7] & 0xFFFFFFFFFFFFFFF8)) & v33);
          if (v13 != v23)
          {
            v42 = (v21 + 24 + (&v34[v26 + 7] & 0xFFFFFFFFFFFFFFF8)) & ~v21;
            if (v18 == v23)
            {
              v43 = *(v17 + 56);

              v43(v42, a2, v18, v8);
            }

            else
            {
              v44 = (v27 + v42) & 0xFFFFFFFFFFFFFFF8;
              if ((a2 & 0x80000000) != 0)
              {
                *(v44 + 40) = 0;
                result = 0.0;
                *(v44 + 24) = 0u;
                *(v44 + 8) = 0u;
                *v44 = a2 & 0x7FFFFFFF;
              }

              else
              {
                *v44 = (a2 - 1);
              }
            }

            return result;
          }

          if (v15 >= a2)
          {
            v35 = *(v12 + 56);
            v37 = &v34[v19 + 1] & v33;
            v36 = a2;
            goto LABEL_80;
          }

          if (v26 <= 3)
          {
            v38 = ~(-1 << (8 * v26));
          }

          else
          {
            v38 = -1;
          }

          if (!v26)
          {
            return result;
          }

          v39 = v38 & (~v15 + a2);
          if (v26 <= 3)
          {
            v40 = v24 + ((v19 + 1) & ~v19);
          }

          else
          {
            v40 = 4;
          }

          bzero(v34, v26);
          if (v40 <= 2)
          {
            if (v40 == 1)
            {
LABEL_74:
              *v34 = v39;
              return result;
            }

LABEL_61:
            *v34 = v39;
            return result;
          }
        }

        if (v40 == 3)
        {
          *v34 = v39;
          v34[2] = BYTE2(v39);
        }

        else
        {
          *v34 = v39;
        }

        return result;
      }

      *(a1 + v28) = 0;
    }

    else if (v9)
    {
      *(a1 + v28) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_47;
    }

    if (!a2)
    {
      return result;
    }

    goto LABEL_47;
  }

  v31 = ~v23 + a2;
  bzero(a1, v28);
  if (v28 <= 3)
  {
    v32 = HIWORD(v31) + 1;
  }

  else
  {
    v32 = 1;
  }

  if (v28 <= 3)
  {
    *a1 = v31;
    if (v9 > 1)
    {
LABEL_35:
      if (v9 == 2)
      {
        *(a1 + v28) = v32;
      }

      else
      {
        *(a1 + v28) = v32;
      }

      return result;
    }
  }

  else
  {
    *a1 = v31;
    if (v9 > 1)
    {
      goto LABEL_35;
    }
  }

  if (v9)
  {
    *(a1 + v28) = v32;
  }

  return result;
}

void type metadata accessor for ClosedRange<Double>?(uint64_t a1, __n128 a2)
{
  if (!lazy cache variable for type metadata for ClosedRange<Double>?)
  {
    type metadata accessor for AxisMarks<Never>(255, &lazy cache variable for type metadata for ClosedRange<Double>, MEMORY[0x277D839F8], MEMORY[0x277D83A20], MEMORY[0x277D83638]);
    v2 = type metadata accessor for Optional();
    if (!v3)
    {
      atomic_store(v2, &lazy cache variable for type metadata for ClosedRange<Double>?);
    }
  }
}

void _s16HealthChartsCore0aB4UnitVSgMaTm_1(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

uint64_t outlined destroy of ScaleType?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  _s16HealthChartsCore0aB4UnitVSgMaTm_1(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void type metadata accessor for BuilderConditional<AxisMarks<Never>, AnyAxisContent>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, void), __n128 a4)
{
  if (!*a2)
  {
    type metadata accessor for AxisMarks<Never>(255, &lazy cache variable for type metadata for AxisMarks<Never>, MEMORY[0x277D84A98], MEMORY[0x277CBB5A8], MEMORY[0x277CBB458]);
    v8 = a3(a1, v7, MEMORY[0x277CBB318]);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t static ViewBuilder.buildEither<A, B>(first:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = type metadata accessor for _ConditionalContent.Storage();
  v8 = MEMORY[0x28223BE20](v7);
  (*(*(a2 - 8) + 16))(&v11 - v9, a1, a2, v8);
  swift_storeEnumTagMultiPayload();
  return _ConditionalContent<>.init(storage:)();
}

uint64_t static ViewBuilder.buildEither<A, B>(second:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = type metadata accessor for _ConditionalContent.Storage();
  v8 = MEMORY[0x28223BE20](v7);
  (*(*(a3 - 8) + 16))(&v11 - v9, a1, a3, v8);
  swift_storeEnumTagMultiPayload();
  return _ConditionalContent<>.init(storage:)();
}

void type metadata accessor for <<opaque return type of ChartContent.opacity(_:)>>.0(uint64_t a1, __n128 a2)
{
  if (!lazy cache variable for type metadata for <<opaque return type of ChartContent.opacity(_:)>>.0)
  {
    type metadata accessor for <<opaque return type of ChartContent.accessibilityHidden(_:)>>.0(255);
    type metadata accessor for PointMark();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v3)
    {
      atomic_store(OpaqueTypeMetadata2, &lazy cache variable for type metadata for <<opaque return type of ChartContent.opacity(_:)>>.0);
    }
  }
}

void type metadata accessor for <<opaque return type of ChartContent.accessibilityHidden(_:)>>.0(uint64_t a1)
{
  if (!lazy cache variable for type metadata for <<opaque return type of ChartContent.accessibilityHidden(_:)>>.0)
  {
    type metadata accessor for PointMark();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &lazy cache variable for type metadata for <<opaque return type of ChartContent.accessibilityHidden(_:)>>.0);
    }
  }
}

void type metadata accessor for AxisMarks<Never>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

uint64_t DescriptionContext.DataXScale.dateString.getter()
{
  v102 = type metadata accessor for Date.IntervalFormatStyle();
  v101 = *(v102 - 8);
  MEMORY[0x28223BE20](v102);
  v96 = &v87 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v1);
  v98 = &v87 - v2;
  MEMORY[0x28223BE20](v3);
  v99 = &v87 - v4;
  MEMORY[0x28223BE20](v5);
  v100 = &v87 - v6;
  type metadata accessor for (lower: Date, upper: Date)(0);
  v95 = v7;
  MEMORY[0x28223BE20](v7);
  v94 = &v87 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v93 = &v87 - v10;
  type metadata accessor for Range<Date>(0);
  v92 = v11;
  MEMORY[0x28223BE20](v11);
  v97 = &v87 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Date.FormatStyle.Symbol.Year();
  v109 = *(v13 - 8);
  v110 = v13;
  MEMORY[0x28223BE20](v13);
  v108 = &v87 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Date.FormatStyle.Symbol.Month();
  v112 = *(v15 - 8);
  v113 = v15;
  MEMORY[0x28223BE20](v15);
  v111 = &v87 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = type metadata accessor for Date.FormatStyle.Symbol.Day();
  v104 = *(v105 - 8);
  MEMORY[0x28223BE20](v105);
  v103 = &v87 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for Date.FormatStyle();
  v106 = *(v18 - 8);
  v107 = v18;
  MEMORY[0x28223BE20](v18);
  v20 = &v87 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v87 - v22;
  MEMORY[0x28223BE20](v24);
  v26 = &v87 - v25;
  MEMORY[0x28223BE20](v27);
  v29 = &v87 - v28;
  v122 = type metadata accessor for Date();
  v120 = *(v122 - 8);
  MEMORY[0x28223BE20](v122);
  v119 = &v87 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v121 = &v87 - v32;
  v33 = type metadata accessor for Calendar();
  v117 = *(v33 - 8);
  v118 = v33;
  MEMORY[0x28223BE20](v33);
  v114 = &v87 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for DateComponents();
  v115 = *(v35 - 8);
  v116 = v35;
  MEMORY[0x28223BE20](v35);
  v37 = &v87 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for DescriptionContext.DataXScale(0);
  MEMORY[0x28223BE20](v38);
  v40 = &v87 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for DateInterval();
  v42 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v44 = &v87 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of DescriptionContext.DataXScale(v123, v40, type metadata accessor for DescriptionContext.DataXScale);
  if (swift_getEnumCaseMultiPayload())
  {
    outlined destroy of DescriptionContext.DataXScale(v40, type metadata accessor for DescriptionContext.DataXScale);
    return 0;
  }

  v87 = v20;
  v88 = v23;
  v89 = v26;
  v90 = v29;
  v91 = v42;
  v46 = *(v42 + 32);
  v123 = v41;
  v46(v44, v40, v41);
  v47 = v114;
  static Calendar.current.getter();
  type metadata accessor for _ContiguousArrayStorage<Calendar.Component>(0);
  v48 = type metadata accessor for Calendar.Component();
  v49 = *(v48 - 8);
  v50 = (*(v49 + 80) + 32) & ~*(v49 + 80);
  v51 = swift_allocObject();
  *(v51 + 16) = xmmword_25145AB10;
  (*(v49 + 104))(v51 + v50, *MEMORY[0x277CC9968], v48);
  _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC10Foundation8CalendarV9ComponentO_Tt0g5Tf4g_n(v51);
  swift_setDeallocating();
  (*(v49 + 8))(v51 + v50, v48);
  swift_deallocClassInstance();
  v52 = v121;
  DateInterval.start.getter();
  v53 = v119;
  DateInterval.end.getter();
  Calendar.dateComponents(_:from:to:)();

  v54 = *(v120 + 8);
  v55 = v122;
  v54(v53, v122);
  v54(v52, v55);
  (*(v117 + 8))(v47, v118);
  v56 = DateComponents.day.getter();
  LOBYTE(v51) = v57;
  (*(v115 + 8))(v37, v116);
  v58 = v44;
  if ((v51 & 1) != 0 || v56 <= 1)
  {
    v74 = DateInterval.start.getter();
    v75 = v87;
    v76 = MEMORY[0x253074FA0](v74);
    v77 = v103;
    MEMORY[0x253075200](v76);
    v78 = v88;
    Date.FormatStyle.day(_:)();
    (*(v104 + 8))(v77, v105);
    v79 = v107;
    v80 = *(v106 + 8);
    v81 = v80(v75, v107);
    v82 = v111;
    MEMORY[0x253075280](v81);
    v83 = v89;
    Date.FormatStyle.month(_:)();
    (*(v112 + 8))(v82, v113);
    v80(v78, v79);
    v84 = v108;
    static Date.FormatStyle.Symbol.Year.defaultDigits.getter();
    v85 = v90;
    Date.FormatStyle.year(_:)();
    (*(v109 + 8))(v84, v110);
    v80(v83, v79);
    lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date.FormatStyle and conformance Date.FormatStyle, MEMORY[0x277CC9428], MEMORY[0x277CC9420]);
    v86 = v121;
    Date.formatted<A>(_:)();
    v80(v85, v79);
    v54(v86, v122);
    (*(v91 + 8))(v58, v123);
  }

  else
  {
    DateInterval.start.getter();
    DateInterval.end.getter();
    lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
    result = dispatch thunk of static Comparable.<= infix(_:_:)();
    v118 = v44;
    if ((result & 1) == 0)
    {
      __break(1u);
      return result;
    }

    v59 = *(v120 + 32);
    v60 = v93;
    v59(v93, v52, v55);
    v61 = v55;
    v62 = v95;
    v59((v60 + *(v95 + 48)), v53, v61);
    v63 = v94;
    outlined init with copy of DescriptionContext.DataXScale(v60, v94, type metadata accessor for (lower: Date, upper: Date));
    v64 = *(v62 + 48);
    v65 = v97;
    v59(v97, v63, v61);
    v54((v63 + v64), v61);
    outlined init with take of (lower: Date, upper: Date)(v60, v63);
    v59((v65 + *(v92 + 36)), (v63 + *(v62 + 48)), v61);
    v54(v63, v61);
    v66 = v96;
    static FormatStyle<>.interval.getter();
    v67 = v98;
    Date.IntervalFormatStyle.day()();
    v68 = *(v101 + 8);
    v69 = v102;
    v70 = v68(v66, v102);
    v71 = v111;
    MEMORY[0x253075280](v70);
    v72 = v99;
    Date.IntervalFormatStyle.month(_:)();
    (*(v112 + 8))(v71, v113);
    v68(v67, v69);
    v73 = v100;
    Date.IntervalFormatStyle.year()();
    v68(v72, v69);
    lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date.IntervalFormatStyle and conformance Date.IntervalFormatStyle, MEMORY[0x277CC94B0], MEMORY[0x277CC94A8]);
    Range<>.formatted<A>(_:)();
    v68(v73, v69);
    outlined destroy of DescriptionContext.DataXScale(v65, type metadata accessor for Range<Date>);
    (*(v91 + 8))(v118, v123);
  }

  return v124;
}

void type metadata accessor for (lower: Date, upper: Date)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (lower: Date, upper: Date))
  {
    type metadata accessor for Date();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (lower: Date, upper: Date));
    }
  }
}

void type metadata accessor for Range<Date>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Range<Date>)
  {
    type metadata accessor for Date();
    lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
    v1 = type metadata accessor for Range();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Range<Date>);
    }
  }
}

void type metadata accessor for _ContiguousArrayStorage<Calendar.Component>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<Calendar.Component>)
  {
    type metadata accessor for Calendar.Component();
    v1 = type metadata accessor for _ContiguousArrayStorage();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _ContiguousArrayStorage<Calendar.Component>);
    }
  }
}

uint64_t _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC10Foundation8CalendarV9ComponentO_Tt0g5Tf4g_n(uint64_t a1)
{
  v2 = type metadata accessor for Calendar.Component();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    type metadata accessor for _SetStorage<Calendar.Component>(0);
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
      lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Calendar.Component and conformance Calendar.Component, MEMORY[0x277CC99D0], MEMORY[0x277CC99D8]);
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
          v35(v5, *(v9 + 48) + v18 * v14, v2);
          lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Calendar.Component and conformance Calendar.Component, MEMORY[0x277CC99D0], MEMORY[0x277CC99E0]);
          v23 = dispatch thunk of static Equatable.== infix(_:_:)();
          v24 = *v15;
          (*v15)(v5, v2);
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

uint64_t outlined init with copy of DescriptionContext.DataXScale(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with take of (lower: Date, upper: Date)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for (lower: Date, upper: Date)(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of DescriptionContext.DataXScale(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void type metadata accessor for _SetStorage<Calendar.Component>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _SetStorage<Calendar.Component>)
  {
    type metadata accessor for Calendar.Component();
    lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Calendar.Component and conformance Calendar.Component, MEMORY[0x277CC99D0], MEMORY[0x277CC99D8]);
    v1 = type metadata accessor for _SetStorage();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _SetStorage<Calendar.Component>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type Date and conformance Date(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t HealthChartsContext.init(healthStore:calendar:dateInterval:viewDateSpan:style:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, char *a6@<X8>)
{
  v10 = *a5;
  *a6 = a1;
  v11 = type metadata accessor for HealthChartsContext(0);
  v12 = v11[5];
  v13 = type metadata accessor for Calendar();
  (*(*(v13 - 8) + 32))(&a6[v12], a2, v13);
  outlined init with take of DateInterval?(a3, &a6[v11[6]], &lazy cache variable for type metadata for DateInterval?, MEMORY[0x277CC88A8]);
  result = outlined init with take of DateInterval?(a4, &a6[v11[7]], &lazy cache variable for type metadata for DateDomain.ViewDateSpan?, type metadata accessor for DateDomain.ViewDateSpan);
  a6[v11[8]] = v10;
  return result;
}

uint64_t type metadata accessor for HealthChartsContext(uint64_t a1)
{
  result = type metadata singleton initialization cache for HealthChartsContext;
  if (!type metadata singleton initialization cache for HealthChartsContext)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined init with take of DateInterval?(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  type metadata accessor for DateInterval?(0, a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

Swift::Int HealthChartsContext.ChartStyle.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x253076640](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance HealthChartsContext.ChartStyle()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x253076640](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance HealthChartsContext.ChartStyle(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  MEMORY[0x253076640](v2);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type HealthChartsContext.ChartStyle and conformance HealthChartsContext.ChartStyle()
{
  result = lazy protocol witness table cache variable for type HealthChartsContext.ChartStyle and conformance HealthChartsContext.ChartStyle;
  if (!lazy protocol witness table cache variable for type HealthChartsContext.ChartStyle and conformance HealthChartsContext.ChartStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HealthChartsContext.ChartStyle and conformance HealthChartsContext.ChartStyle);
  }

  return result;
}

uint64_t sub_25141490C(char *a1, uint64_t a2, int *a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  v9 = type metadata accessor for Calendar();
  if (*(*(v9 - 8) + 84) == a2)
  {
    v10 = v9;
    v11 = *(v9 - 8);
    v12 = a3[5];
LABEL_11:
    v14 = *(v11 + 48);

    return v14(&a1[v12], a2, v10);
  }

  type metadata accessor for DateInterval?(0, &lazy cache variable for type metadata for DateInterval?, MEMORY[0x277CC88A8]);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v10 = v13;
    v11 = *(v13 - 8);
    v12 = a3[6];
    goto LABEL_11;
  }

  type metadata accessor for DateInterval?(0, &lazy cache variable for type metadata for DateDomain.ViewDateSpan?, type metadata accessor for DateDomain.ViewDateSpan);
  v16 = v15;
  v17 = *(*(v15 - 8) + 48);
  v18 = &a1[a3[7]];

  return v17(v18, a2, v16);
}

char *sub_251414AD0(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
    return result;
  }

  v8 = type metadata accessor for Calendar();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(&v5[v11], a2, a2, v9);
  }

  type metadata accessor for DateInterval?(0, &lazy cache variable for type metadata for DateInterval?, MEMORY[0x277CC88A8]);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_7;
  }

  type metadata accessor for DateInterval?(0, &lazy cache variable for type metadata for DateDomain.ViewDateSpan?, type metadata accessor for DateDomain.ViewDateSpan);
  v15 = v14;
  v16 = *(*(v14 - 8) + 56);
  v17 = &v5[a4[7]];

  return v16(v17, a2, a2, v15);
}

void type metadata completion function for HealthChartsContext(uint64_t a1)
{
  type metadata accessor for DateInterval?(319, &lazy cache variable for type metadata for HKHealthStore?, type metadata accessor for HKHealthStore);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Calendar();
    if (v2 <= 0x3F)
    {
      type metadata accessor for DateInterval?(319, &lazy cache variable for type metadata for DateInterval?, MEMORY[0x277CC88A8]);
      if (v3 <= 0x3F)
      {
        type metadata accessor for DateInterval?(319, &lazy cache variable for type metadata for DateDomain.ViewDateSpan?, type metadata accessor for DateDomain.ViewDateSpan);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void type metadata accessor for DateInterval?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

unint64_t type metadata accessor for HKHealthStore()
{
  result = lazy cache variable for type metadata for HKHealthStore;
  if (!lazy cache variable for type metadata for HKHealthStore)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for HKHealthStore);
  }

  return result;
}

double HKObjectType.chartKey.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = [v1 identifier];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  v7 = v4 == 0xD000000000000027 && 0x8000000251463FD0 == v6;
  if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKAbdominalCrampsStaticChartKey;
    v10 = &protocol witness table for HKAbdominalCrampsStaticChartKey;
LABEL_7:
    *(a1 + 24) = v9;
    *(a1 + 32) = v10;
    return result;
  }

  v11 = v4 == 0xD00000000000001CLL && 0x8000000251463FB0 == v6;
  if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKAcneStaticChartKey;
    v10 = &protocol witness table for HKAcneStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000027 && 0x8000000251463F80 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKAppetiteChangesStaticChartKey;
    v10 = &protocol witness table for HKAppetiteChangesStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000026 && 0x8000000251463ED0 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKAppleStandHourStaticChartKey;
    v10 = &protocol witness table for HKAppleStandHourStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000033 && 0x8000000251463E70 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKAppleWalkingSteadinessEventStaticChartKey;
    v10 = &protocol witness table for HKAppleWalkingSteadinessEventStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD00000000000002ALL && 0x8000000251463E20 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKEnvironmentalAudioExposureEventStaticChartKey;
    v10 = &protocol witness table for HKEnvironmentalAudioExposureEventStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD00000000000002BLL && 0x8000000251463DC0 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKBladderIncontinenceStaticChartKey;
    v10 = &protocol witness table for HKBladderIncontinenceStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD00000000000002ELL && 0x8000000251463D90 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKBleedingAfterPregnancyStaticChartKey;
    v10 = &protocol witness table for HKBleedingAfterPregnancyStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD00000000000002FLL && 0x8000000251463D60 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKBleedingDuringPregnancyStaticChartKey;
    v10 = &protocol witness table for HKBleedingDuringPregnancyStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000020 && 0x8000000251463D30 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKBloatingStaticChartKey;
    v10 = &protocol witness table for HKBloatingStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000022 && 0x8000000251463D00 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKBreastPainStaticChartKey;
    v10 = &protocol witness table for HKBreastPainStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD00000000000002CLL && 0x8000000251463CD0 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKCervicalMucusQualityStaticChartKey;
    v10 = &protocol witness table for HKCervicalMucusQualityStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD00000000000002CLL && 0x8000000251463CA0 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKChestTightnessOrPainStaticChartKey;
    v10 = &protocol witness table for HKChestTightnessOrPainStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD00000000000001ELL && 0x8000000251463C80 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKChillsStaticChartKey;
    v10 = &protocol witness table for HKChillsStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000024 && 0x8000000251463C50 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKConstipationStaticChartKey;
    v10 = &protocol witness table for HKConstipationStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000025 && 0x8000000251463C20 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKContraceptiveStaticChartKey;
    v10 = &protocol witness table for HKContraceptiveStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000020 && 0x8000000251463B00 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKCoughingStaticChartKey;
    v10 = &protocol witness table for HKCoughingStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000020 && 0x8000000251463AD0 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKDiarrheaStaticChartKey;
    v10 = &protocol witness table for HKDiarrheaStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000021 && 0x8000000251463AA0 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKDizzinessStaticChartKey;
    v10 = &protocol witness table for HKDizzinessStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD00000000000001FLL && 0x8000000251463A80 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKDrySkinStaticChartKey;
    v10 = &protocol witness table for HKDrySkinStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000020 && 0x8000000251463A50 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKFaintingStaticChartKey;
    v10 = &protocol witness table for HKFaintingStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD00000000000001FLL && 0x8000000251463A30 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKFatigueStaticChartKey;
    v10 = &protocol witness table for HKFatigueStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD00000000000001DLL && 0x8000000251463A10 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKFeverStaticChartKey;
    v10 = &protocol witness table for HKFeverStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD00000000000002BLL && 0x80000002514639E0 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKGeneralizedBodyAcheStaticChartKey;
    v10 = &protocol witness table for HKGeneralizedBodyAcheStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000020 && 0x80000002514639B0 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKHairLossStaticChartKey;
    v10 = &protocol witness table for HKHairLossStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000028 && 0x8000000251463980 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKHandwashingEventStaticChartKey;
    v10 = &protocol witness table for HKHandwashingEventStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000020 && 0x8000000251463930 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKHeadacheStaticChartKey;
    v10 = &protocol witness table for HKHeadacheStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000033 && 0x80000002514638F0 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKHeadphoneAudioExposureEventStaticChartKey;
    v10 = &protocol witness table for HKHeadphoneAudioExposureEventStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000021 && 0x80000002514638A0 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKHeartburnStaticChartKey;
    v10 = &protocol witness table for HKHeartburnStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD00000000000002ALL && 0x8000000251463870 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKTachycardiaEventStaticChartKey;
    v10 = &protocol witness table for HKTachycardiaEventStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000022 && 0x8000000251463820 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKHotFlashesStaticChartKey;
    v10 = &protocol witness table for HKHotFlashesStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000031 && 0x80000002514637E0 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKInfrequentMenstrualCyclesStaticChartKey;
    v10 = &protocol witness table for HKInfrequentMenstrualCyclesStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000031 && 0x80000002514637A0 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKAtrialFibrillationEventStaticChartKey;
    v10 = &protocol witness table for HKAtrialFibrillationEventStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000030 && 0x8000000251463740 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKIrregularMenstrualCyclesStaticChartKey;
    v10 = &protocol witness table for HKIrregularMenstrualCyclesStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000021 && 0x8000000251463710 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKLactationStaticChartKey;
    v10 = &protocol witness table for HKLactationStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000023 && 0x80000002514636E0 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKLossOfSmellStaticChartKey;
    v10 = &protocol witness table for HKLossOfSmellStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000023 && 0x80000002514636B0 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKLossOfTasteStaticChartKey;
    v10 = &protocol witness table for HKLossOfTasteStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD00000000000002DLL && 0x8000000251463680 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKLowCardioFitnessEventStaticChartKey;
    v10 = &protocol witness table for HKLowCardioFitnessEventStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000029 && 0x8000000251463630 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKBradycardiaEventStaticChartKey;
    v10 = &protocol witness table for HKBradycardiaEventStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000025 && 0x80000002514635E0 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKLowerBackPainStaticChartKey;
    v10 = &protocol witness table for HKLowerBackPainStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000023 && 0x80000002514635B0 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKMemoryLapseStaticChartKey;
    v10 = &protocol witness table for HKMemoryLapseStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000025 && 0x8000000251463580 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKMenstruationStaticChartKey;
    v10 = &protocol witness table for HKMenstruationStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000026 && 0x8000000251463530 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKMindfulSessionStaticChartKey;
    v10 = &protocol witness table for HKMindfulSessionStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000023 && 0x8000000251463500 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKMoodChangesStaticChartKey;
    v10 = &protocol witness table for HKMoodChangesStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD00000000000001ELL && 0x80000002514634E0 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKNauseaStaticChartKey;
    v10 = &protocol witness table for HKNauseaStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000023 && 0x80000002514634B0 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKNightSweatsStaticChartKey;
    v10 = &protocol witness table for HKNightSweatsStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD00000000000002BLL && 0x8000000251463480 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKOvulationTestResultStaticChartKey;
    v10 = &protocol witness table for HKOvulationTestResultStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000022 && 0x8000000251463390 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKPelvicPainStaticChartKey;
    v10 = &protocol witness table for HKPelvicPainStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000038 && 0x8000000251463350 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKPersistentIntermenstrualBleedingStaticChartKey;
    v10 = &protocol witness table for HKPersistentIntermenstrualBleedingStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000021 && 0x8000000251463320 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKPregnancyStaticChartKey;
    v10 = &protocol witness table for HKPregnancyStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD00000000000002BLL && 0x80000002514632F0 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKPregnancyTestResultStaticChartKey;
    v10 = &protocol witness table for HKPregnancyTestResultStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD00000000000002ELL && 0x8000000251463250 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKProgesteroneTestResultStaticChartKey;
    v10 = &protocol witness table for HKProgesteroneTestResultStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000031 && 0x8000000251463180 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKProlongedMenstrualPeriodsStaticChartKey;
    v10 = &protocol witness table for HKProlongedMenstrualPeriodsStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD00000000000003ALL && 0x8000000251463140 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKRapidPoundingOrFlutteringHeartbeatStaticChartKey;
    v10 = &protocol witness table for HKRapidPoundingOrFlutteringHeartbeatStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000021 && 0x8000000251463110 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKRunnyNoseStaticChartKey;
    v10 = &protocol witness table for HKRunnyNoseStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000026 && 0x80000002514630E0 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKSexualActivityStaticChartKey;
    v10 = &protocol witness table for HKSexualActivityStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000029 && 0x80000002514630B0 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKShortnessOfBreathStaticChartKey;
    v10 = &protocol witness table for HKShortnessOfBreathStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000027 && 0x8000000251463080 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKCongestionStaticChartKey;
    v10 = &protocol witness table for HKCongestionStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000028 && 0x8000000251463050 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKSkippedHeartbeatStaticChartKey;
    v10 = &protocol witness table for HKSkippedHeartbeatStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000025 && 0x8000000251463020 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKSleepAnalysisStaticChartKey;
    v10 = &protocol witness table for HKSleepAnalysisStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000027 && 0x8000000251462FF0 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKSleepApneaEventStaticChartKey;
    v10 = &protocol witness table for HKSleepApneaEventStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000024 && 0x8000000251462FC0 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKSleepChangesStaticChartKey;
    v10 = &protocol witness table for HKSleepChangesStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000022 && 0x8000000251462F50 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKSoreThroatStaticChartKey;
    v10 = &protocol witness table for HKSoreThroatStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD00000000000002ALL && 0x8000000251462F20 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKToothbrushingEventStaticChartKey;
    v10 = &protocol witness table for HKToothbrushingEventStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000026 && 0x8000000251462EF0 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKVaginalDrynessStaticChartKey;
    v10 = &protocol witness table for HKVaginalDrynessStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000020 && 0x8000000251462EC0 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKVomitingStaticChartKey;
    v10 = &protocol witness table for HKVomitingStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000020 && 0x8000000251462E90 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKWheezingStaticChartKey;
    v10 = &protocol witness table for HKWheezingStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD00000000000002ELL && 0x8000000251462D60 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKActivityMoveModeStaticChartKey;
    v10 = &protocol witness table for HKActivityMoveModeStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD00000000000002BLL && 0x8000000251462D10 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKBiologicalSexStaticChartKey;
    v10 = &protocol witness table for HKBiologicalSexStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000027 && 0x8000000251462CE0 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKBloodTypeStaticChartKey;
    v10 = &protocol witness table for HKBloodTypeStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000039 && 0x8000000251462CA0 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKCardioFitnessMedicationsUseStaticChartKey;
    v10 = &protocol witness table for HKCardioFitnessMedicationsUseStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000029 && 0x8000000251462C50 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKDateOfBirthStaticChartKey;
    v10 = &protocol witness table for HKDateOfBirthStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000031 && 0x8000000251462C10 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKFitzpatrickSkinTypeStaticChartKey;
    v10 = &protocol witness table for HKFitzpatrickSkinTypeStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD00000000000002BLL && 0x8000000251462BC0 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKWheelchairUseStaticChartKey;
    v10 = &protocol witness table for HKWheelchairUseStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000025 && 0x8000000251462B90 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKAllergyRecordStaticChartKey;
    v10 = &protocol witness table for HKAllergyRecordStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD00000000000002ALL && 0x8000000251462B40 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKClinicalNoteRecordStaticChartKey;
    v10 = &protocol witness table for HKClinicalNoteRecordStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000027 && 0x8000000251462AC0 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKConditionRecordStaticChartKey;
    v10 = &protocol witness table for HKConditionRecordStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000026 && 0x8000000251462A50 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKInsuranceRecordStaticChartKey;
    v10 = &protocol witness table for HKInsuranceRecordStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD00000000000002ALL && 0x8000000251462A00 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKImmunizationRecordStaticChartKey;
    v10 = &protocol witness table for HKImmunizationRecordStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000027 && 0x8000000251462980 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKLabResultRecordStaticChartKey;
    v10 = &protocol witness table for HKLabResultRecordStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000028 && 0x8000000251462910 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKMedicationRecordStaticChartKey;
    v10 = &protocol witness table for HKMedicationRecordStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000027 && 0x80000002514628C0 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKProcedureRecordStaticChartKey;
    v10 = &protocol witness table for HKProcedureRecordStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000027 && 0x8000000251462850 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKVitalSignRecordStaticChartKey;
    v10 = &protocol witness table for HKVitalSignRecordStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000028 && 0x80000002514627E0 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKBloodPressureStaticChartKey;
    v10 = &protocol witness table for HKBloodPressureStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD00000000000001DLL && 0x80000002514627C0 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKAppleBalanceMetricsStaticChartKey;
    v10 = &protocol witness table for HKAppleBalanceMetricsStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000019 && 0x8000000251462780 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKAppleSleepScoreStaticChartKey;
    v10 = &protocol witness table for HKAppleSleepScoreStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD00000000000001DLL && 0x8000000251462740 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKAudiogramStaticChartKey;
    v10 = &protocol witness table for HKAudiogramStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000025 && 0x8000000251462710 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKElectrocardiogramStaticChartKey;
    v10 = &protocol witness table for HKElectrocardiogramStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000023 && 0x80000002514626C0 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKHeartbeatSeriesStaticChartKey;
    v10 = &protocol witness table for HKHeartbeatSeriesStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD00000000000001BLL && 0x8000000251462680 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKSleepDurationGoalStaticChartKey;
    v10 = &protocol witness table for HKSleepDurationGoalStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000017 && 0x8000000251462640 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKSleepScheduleStaticChartKey;
    v10 = &protocol witness table for HKSleepScheduleStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000015 && 0x8000000251462620 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKStateOfMindStaticChartKey;
    v10 = &protocol witness table for HKStateOfMindStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD00000000000001BLL && 0x8000000251462600 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKCDADocumentStaticChartKey;
    v10 = &protocol witness table for HKCDADocumentStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000036 && 0x80000002514625C0 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKMedicationDoseEventStaticChartKey;
    v10 = &protocol witness table for HKMedicationDoseEventStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD00000000000002ALL && 0x8000000251462570 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKActiveEnergyStaticChartKey;
    v10 = &protocol witness table for HKActiveEnergyStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000029 && 0x8000000251462540 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKAppleExerciseTimeStaticChartKey;
    v10 = &protocol witness table for HKAppleExerciseTimeStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000025 && 0x8000000251462510 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKAppleMoveTimeStaticChartKey;
    v10 = &protocol witness table for HKAppleMoveTimeStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD00000000000003ALL && 0x80000002514624D0 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKAppleSleepingBreathingDisturbancesStaticChartKey;
    v10 = &protocol witness table for HKAppleSleepingBreathingDisturbancesStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000035 && 0x8000000251462490 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKAppleSleepingWristTemperatureStaticChartKey;
    v10 = &protocol witness table for HKAppleSleepingWristTemperatureStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000026 && 0x8000000251462460 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKAppleStandTimeStaticChartKey;
    v10 = &protocol witness table for HKAppleStandTimeStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD00000000000002ELL && 0x8000000251462430 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKAppleWalkingSteadinessStaticChartKey;
    v10 = &protocol witness table for HKAppleWalkingSteadinessStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000030 && 0x80000002514623D0 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKAtrialFibrillationBurdenStaticChartKey;
    v10 = &protocol witness table for HKAtrialFibrillationBurdenStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD00000000000002CLL && 0x80000002514623A0 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKBasalBodyTemperatureStaticChartKey;
    v10 = &protocol witness table for HKBasalBodyTemperatureStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000029 && 0x8000000251462370 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKBasalEnergyBurnedStaticChartKey;
    v10 = &protocol witness table for HKBasalEnergyBurnedStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD00000000000002BLL && 0x8000000251462340 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKBloodAlcoholContentStaticChartKey;
    v10 = &protocol witness table for HKBloodAlcoholContentStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000024 && 0x8000000251462310 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKBloodGlucoseStaticChartKey;
    v10 = &protocol witness table for HKBloodGlucoseStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000029 && 0x80000002514622E0 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKBodyFatPercentageStaticChartKey;
    v10 = &protocol witness table for HKBodyFatPercentageStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000020 && 0x80000002514622B0 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKBodyMassStaticChartKey;
    v10 = &protocol witness table for HKBodyMassStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000025 && 0x8000000251462280 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKBodyMassIndexStaticChartKey;
    v10 = &protocol witness table for HKBodyMassIndexStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000027 && 0x8000000251462250 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKBodyTemperatureStaticChartKey;
    v10 = &protocol witness table for HKBodyTemperatureStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD00000000000002FLL && 0x8000000251462220 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKCrossCountrySkiingSpeedStaticChartKey;
    v10 = &protocol witness table for HKCrossCountrySkiingSpeedStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000026 && 0x80000002514621F0 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKCyclingCadenceStaticChartKey;
    v10 = &protocol witness table for HKCyclingCadenceStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000037 && 0x80000002514621B0 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKCyclingFunctionalThresholdPowerStaticChartKey;
    v10 = &protocol witness table for HKCyclingFunctionalThresholdPowerStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000024 && 0x8000000251462180 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKCyclingPowerStaticChartKey;
    v10 = &protocol witness table for HKCyclingPowerStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000024 && 0x8000000251462150 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKCyclingSpeedStaticChartKey;
    v10 = &protocol witness table for HKCyclingSpeedStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000025 && 0x8000000251462120 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKDietaryBiotinStaticChartKey;
    v10 = &protocol witness table for HKDietaryBiotinStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000027 && 0x80000002514620F0 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKDietaryCaffeineStaticChartKey;
    v10 = &protocol witness table for HKDietaryCaffeineStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000026 && 0x80000002514620C0 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKDietaryCalciumStaticChartKey;
    v10 = &protocol witness table for HKDietaryCalciumStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD00000000000002CLL && 0x8000000251462090 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKDietaryCarbohydratesStaticChartKey;
    v10 = &protocol witness table for HKDietaryCarbohydratesStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000027 && 0x8000000251462060 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKDietaryChlorideStaticChartKey;
    v10 = &protocol witness table for HKDietaryChlorideStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD00000000000002ALL && 0x8000000251462030 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKDietaryCholesterolStaticChartKey;
    v10 = &protocol witness table for HKDietaryCholesterolStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000027 && 0x8000000251462000 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKDietaryChromiumStaticChartKey;
    v10 = &protocol witness table for HKDietaryChromiumStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000025 && 0x8000000251461FD0 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKDietaryCopperStaticChartKey;
    v10 = &protocol witness table for HKDietaryCopperStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD00000000000002DLL && 0x8000000251461FA0 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKDietaryEnergyStaticChartKey;
    v10 = &protocol witness table for HKDietaryEnergyStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000031 && 0x8000000251461F60 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKDietaryFatMonounsaturatedStaticChartKey;
    v10 = &protocol witness table for HKDietaryFatMonounsaturatedStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000031 && 0x8000000251461F20 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKDietaryFatPolyunsaturatedStaticChartKey;
    v10 = &protocol witness table for HKDietaryFatPolyunsaturatedStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD00000000000002BLL && 0x8000000251461EF0 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKDietaryFatSaturatedStaticChartKey;
    v10 = &protocol witness table for HKDietaryFatSaturatedStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000027 && 0x8000000251461EC0 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKDietaryFatTotalStaticChartKey;
    v10 = &protocol witness table for HKDietaryFatTotalStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000024 && 0x8000000251461E90 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKDietaryFiberStaticChartKey;
    v10 = &protocol witness table for HKDietaryFiberStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000025 && 0x8000000251461E60 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKDietaryFolateStaticChartKey;
    v10 = &protocol witness table for HKDietaryFolateStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000025 && 0x8000000251461E30 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKDietaryIodineStaticChartKey;
    v10 = &protocol witness table for HKDietaryIodineStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000023 && 0x8000000251461E00 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKDietaryIronStaticChartKey;
    v10 = &protocol witness table for HKDietaryIronStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000028 && 0x8000000251461DD0 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKDietaryMagnesiumStaticChartKey;
    v10 = &protocol witness table for HKDietaryMagnesiumStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000028 && 0x8000000251461DA0 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKDietaryManganeseStaticChartKey;
    v10 = &protocol witness table for HKDietaryManganeseStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000029 && 0x8000000251461D70 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKDietaryMolybdenumStaticChartKey;
    v10 = &protocol witness table for HKDietaryMolybdenumStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000025 && 0x8000000251461D40 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKDietaryNiacinStaticChartKey;
    v10 = &protocol witness table for HKDietaryNiacinStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD00000000000002ELL && 0x8000000251461D10 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKDietaryPantothenicAcidStaticChartKey;
    v10 = &protocol witness table for HKDietaryPantothenicAcidStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000029 && 0x8000000251461CE0 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKDietaryPhosphorusStaticChartKey;
    v10 = &protocol witness table for HKDietaryPhosphorusStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000028 && 0x8000000251461CB0 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKDietaryPotassiumStaticChartKey;
    v10 = &protocol witness table for HKDietaryPotassiumStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000026 && 0x8000000251461C80 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKDietaryProteinStaticChartKey;
    v10 = &protocol witness table for HKDietaryProteinStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000029 && 0x8000000251461C50 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKDietaryRiboflavinStaticChartKey;
    v10 = &protocol witness table for HKDietaryRiboflavinStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000027 && 0x8000000251461C20 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKDietarySeleniumStaticChartKey;
    v10 = &protocol witness table for HKDietarySeleniumStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000025 && 0x8000000251461BF0 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKDietarySodiumStaticChartKey;
    v10 = &protocol witness table for HKDietarySodiumStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000024 && 0x8000000251461BC0 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKDietarySugarStaticChartKey;
    v10 = &protocol witness table for HKDietarySugarStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000026 && 0x8000000251461B90 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKDietaryThiaminStaticChartKey;
    v10 = &protocol witness table for HKDietaryThiaminStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000027 && 0x8000000251461B60 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKDietaryVitaminAStaticChartKey;
    v10 = &protocol witness table for HKDietaryVitaminAStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000029 && 0x8000000251461B30 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKDietaryVitaminB12StaticChartKey;
    v10 = &protocol witness table for HKDietaryVitaminB12StaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000028 && 0x8000000251461B00 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKDietaryVitaminB6StaticChartKey;
    v10 = &protocol witness table for HKDietaryVitaminB6StaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000027 && 0x8000000251461AD0 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKDietaryVitaminCStaticChartKey;
    v10 = &protocol witness table for HKDietaryVitaminCStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000027 && 0x8000000251461AA0 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKDietaryVitaminDStaticChartKey;
    v10 = &protocol witness table for HKDietaryVitaminDStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000027 && 0x8000000251461A70 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKDietaryVitaminEStaticChartKey;
    v10 = &protocol witness table for HKDietaryVitaminEStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000027 && 0x8000000251461A40 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKDietaryVitaminKStaticChartKey;
    v10 = &protocol witness table for HKDietaryVitaminKStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000024 && 0x8000000251461A10 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKDietaryWaterStaticChartKey;
    v10 = &protocol witness table for HKDietaryWaterStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000023 && 0x80000002514619E0 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKDietaryZincStaticChartKey;
    v10 = &protocol witness table for HKDietaryZincStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000032 && 0x80000002514619A0 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKCrossCountrySkiingDistanceStaticChartKey;
    v10 = &protocol witness table for HKCrossCountrySkiingDistanceStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000027 && 0x8000000251461970 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKCyclingDistanceStaticChartKey;
    v10 = &protocol witness table for HKCyclingDistanceStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000032 && 0x8000000251461930 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKDownhillSnowSportsDistanceStaticChartKey;
    v10 = &protocol witness table for HKDownhillSnowSportsDistanceStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD00000000000002CLL && 0x8000000251461900 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKPaddleSportsDistanceStaticChartKey;
    v10 = &protocol witness table for HKPaddleSportsDistanceStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000026 && 0x80000002514618D0 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKRowingDistanceStaticChartKey;
    v10 = &protocol witness table for HKRowingDistanceStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD00000000000002DLL && 0x80000002514618A0 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKSkatingSportsDistanceStaticChartKey;
    v10 = &protocol witness table for HKSkatingSportsDistanceStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000028 && 0x8000000251461870 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKSwimmingDistanceStaticChartKey;
    v10 = &protocol witness table for HKSwimmingDistanceStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD00000000000002ELL && 0x8000000251461840 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKDistanceWalkingRunningStaticChartKey;
    v10 = &protocol witness table for HKDistanceWalkingRunningStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD00000000000002ALL && 0x8000000251461810 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKWheelchairDistanceStaticChartKey;
    v10 = &protocol witness table for HKWheelchairDistanceStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD00000000000002DLL && 0x80000002514617E0 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKElectrodermalActivityStaticChartKey;
    v10 = &protocol witness table for HKElectrodermalActivityStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000032 && 0x80000002514617A0 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKEnvironmentalAudioExposureStaticChartKey;
    v10 = &protocol witness table for HKEnvironmentalAudioExposureStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000033 && 0x8000000251461760 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKEnvironmentalSoundReductionStaticChartKey;
    v10 = &protocol witness table for HKEnvironmentalSoundReductionStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000033 && 0x8000000251461720 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKEstimatedWorkoutEffortScoreStaticChartKey;
    v10 = &protocol witness table for HKEstimatedWorkoutEffortScoreStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000026 && 0x80000002514616F0 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKFlightsClimbedStaticChartKey;
    v10 = &protocol witness table for HKFlightsClimbedStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD00000000000002FLL && 0x80000002514616C0 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKForcedExpiratoryVolume1StaticChartKey;
    v10 = &protocol witness table for HKForcedExpiratoryVolume1StaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD00000000000002BLL && 0x8000000251461690 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKForcedVitalCapacityStaticChartKey;
    v10 = &protocol witness table for HKForcedVitalCapacityStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD00000000000002ELL && 0x8000000251461660 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKHeadphoneAudioExposureStaticChartKey;
    v10 = &protocol witness table for HKHeadphoneAudioExposureStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000021 && 0x8000000251461630 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKHeartRateStaticChartKey;
    v10 = &protocol witness table for HKHeartRateStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000032 && 0x80000002514615F0 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKHeartRateRecoveryStaticChartKey;
    v10 = &protocol witness table for HKHeartRateRecoveryStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000030 && 0x80000002514615B0 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKHeartRateVariabilitySDNNStaticChartKey;
    v10 = &protocol witness table for HKHeartRateVariabilitySDNNStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD00000000000001ELL && 0x8000000251461590 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKHeightStaticChartKey;
    v10 = &protocol witness table for HKHeightStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000024 && 0x8000000251461560 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKInhalerUsageStaticChartKey;
    v10 = &protocol witness table for HKInhalerUsageStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000027 && 0x8000000251461530 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKInsulinDeliveryStaticChartKey;
    v10 = &protocol witness table for HKInsulinDeliveryStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000024 && 0x8000000251461500 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKLeanBodyMassStaticChartKey;
    v10 = &protocol witness table for HKLeanBodyMassStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000020 && 0x80000002514614D0 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKNikeFuelStaticChartKey;
    v10 = &protocol witness table for HKNikeFuelStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000032 && 0x8000000251461490 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKNumberOfAlcoholicBeveragesStaticChartKey;
    v10 = &protocol witness table for HKNumberOfAlcoholicBeveragesStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD00000000000002BLL && 0x8000000251461460 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKNumberOfTimesFallenStaticChartKey;
    v10 = &protocol witness table for HKNumberOfTimesFallenStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000028 && 0x8000000251461430 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKOxygenSaturationStaticChartKey;
    v10 = &protocol witness table for HKOxygenSaturationStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000029 && 0x8000000251461400 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKPaddleSportsSpeedStaticChartKey;
    v10 = &protocol witness table for HKPaddleSportsSpeedStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD00000000000002ELL && 0x80000002514613D0 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKPeakExpiratoryFlowRateStaticChartKey;
    v10 = &protocol witness table for HKPeakExpiratoryFlowRateStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000030 && 0x8000000251461390 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKPeripheralPerfusionIndexStaticChartKey;
    v10 = &protocol witness table for HKPeripheralPerfusionIndexStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000026 && 0x8000000251461360 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKPhysicalEffortStaticChartKey;
    v10 = &protocol witness table for HKPhysicalEffortStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000021 && 0x8000000251461330 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKPushCountStaticChartKey;
    v10 = &protocol witness table for HKPushCountStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000027 && 0x8000000251461300 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKRespiratoryRateStaticChartKey;
    v10 = &protocol witness table for HKRespiratoryRateStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000028 && 0x80000002514612D0 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKRestingHeartRateStaticChartKey;
    v10 = &protocol witness table for HKRestingHeartRateStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000023 && 0x80000002514612A0 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKRowingSpeedStaticChartKey;
    v10 = &protocol witness table for HKRowingSpeedStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000030 && 0x8000000251461260 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKRunningGroundContactTimeStaticChartKey;
    v10 = &protocol witness table for HKRunningGroundContactTimeStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000024 && 0x8000000251461230 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKRunningPowerStaticChartKey;
    v10 = &protocol witness table for HKRunningPowerStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000024 && 0x8000000251461200 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKRunningSpeedStaticChartKey;
    v10 = &protocol witness table for HKRunningSpeedStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD00000000000002BLL && 0x80000002514611D0 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKRunningStrideLengthStaticChartKey;
    v10 = &protocol witness table for HKRunningStrideLengthStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000032 && 0x8000000251461190 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKRunningVerticalOscillationStaticChartKey;
    v10 = &protocol witness table for HKRunningVerticalOscillationStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000031 && 0x8000000251461150 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKSixMinuteWalkTestDistanceStaticChartKey;
    v10 = &protocol witness table for HKSixMinuteWalkTestDistanceStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000028 && 0x8000000251461120 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKStairAscentSpeedStaticChartKey;
    v10 = &protocol witness table for HKStairAscentSpeedStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000029 && 0x80000002514610F0 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKStairDescentSpeedStaticChartKey;
    v10 = &protocol witness table for HKStairDescentSpeedStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000021 && 0x80000002514610C0 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKStepsStaticChartKey;
    v10 = &protocol witness table for HKStepsStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD00000000000002BLL && 0x8000000251461090 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKSwimmingStrokesStaticChartKey;
    v10 = &protocol witness table for HKSwimmingStrokesStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000026 && 0x8000000251461060 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKTimeInDaylightStaticChartKey;
    v10 = &protocol witness table for HKTimeInDaylightStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000022 && 0x8000000251461030 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKUVExposureStaticChartKey;
    v10 = &protocol witness table for HKUVExposureStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000027 && 0x8000000251461000 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKUnderwaterDepthStaticChartKey;
    v10 = &protocol witness table for HKUnderwaterDepthStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD00000000000001ELL && 0x8000000251460FE0 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKVO2MaxStaticChartKey;
    v10 = &protocol witness table for HKVO2MaxStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD00000000000002ALL && 0x8000000251460FB0 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKWaistCircumferenceStaticChartKey;
    v10 = &protocol witness table for HKWaistCircumferenceStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000032 && 0x8000000251460F70 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKWalkingAsymmetryPercentageStaticChartKey;
    v10 = &protocol witness table for HKWalkingAsymmetryPercentageStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000036 && 0x8000000251460F30 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKWalkingDoubleSupportPercentageStaticChartKey;
    v10 = &protocol witness table for HKWalkingDoubleSupportPercentageStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD00000000000002FLL && 0x8000000251460F00 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKWalkingHeartRateAverageStaticChartKey;
    v10 = &protocol witness table for HKWalkingHeartRateAverageStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000024 && 0x8000000251460ED0 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKWalkingSpeedStaticChartKey;
    v10 = &protocol witness table for HKWalkingSpeedStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000029 && 0x8000000251460EA0 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKWalkingStepLengthStaticChartKey;
    v10 = &protocol witness table for HKWalkingStepLengthStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000028 && 0x8000000251460E70 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKWaterTemperatureStaticChartKey;
    v10 = &protocol witness table for HKWaterTemperatureStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD00000000000002ALL && 0x8000000251460E40 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKWorkoutEffortScoreStaticChartKey;
    v10 = &protocol witness table for HKWorkoutEffortScoreStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000024 && 0x8000000251460DF0 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKGAD7StaticChartKey;
    v10 = &protocol witness table for HKGAD7StaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000024 && 0x8000000251460DC0 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKPHQ9StaticChartKey;
    v10 = &protocol witness table for HKPHQ9StaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000022 && 0x8000000251460D90 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKVisionPrescriptionStaticChartKey;
    v10 = &protocol witness table for HKVisionPrescriptionStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD00000000000001CLL && 0x8000000251460D50 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKLocationSeriesStaticChartKey;
    v10 = &protocol witness table for HKLocationSeriesStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000017 && 0x8000000251460D30 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKWorkoutStaticChartKey;
    v10 = &protocol witness table for HKWorkoutStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000028 && 0x8000000251460CE0 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKUserAnnotatedMedicationTypeStaticChartKey;
    v10 = &protocol witness table for HKUserAnnotatedMedicationTypeStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000029 && 0x8000000251460C90 == v6)
  {

LABEL_882:
    v9 = &type metadata for HKHypertensionEventStaticChartKey;
    v10 = &protocol witness table for HKHypertensionEventStaticChartKey;
    goto LABEL_7;
  }

  v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v12)
  {
    goto LABEL_882;
  }

  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_2514199B0(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  v7 = type metadata accessor for DescriptionContext.DataXScale(0);
  v8 = *(v7 - 8);
  if (*(v8 + 84) == a2)
  {
    v9 = *(v8 + 48);

    return v9(a1, a2, v7);
  }

  else
  {
    v11 = type metadata accessor for HealthChartsData();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 20);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_251419AD4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for DescriptionContext.DataXScale(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for HealthChartsData();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t type metadata accessor for DescriptionContext.DataXScale(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for DescriptionContext(uint64_t a1)
{
  result = type metadata accessor for DescriptionContext.DataXScale(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for HealthChartsData();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void type metadata completion function for DescriptionContext.DataXScale(uint64_t a1)
{
  type metadata accessor for DateInterval();
  if (v1 <= 0x3F)
  {
    type metadata accessor for ClosedRange<Double>();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

uint64_t one-time initialization function for supportedTypes()
{
  type metadata accessor for _ContiguousArrayStorage<(String, HKObjectType)>(0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_25145F1A0;
  *(v0 + 32) = 0x73614D2079646F42;
  *(v0 + 40) = 0xEF7865646E492073;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKQuantityType, 0x277CCD830);
  v1 = MEMORY[0x253076160](0xD000000000000025, 0x8000000251462280);
  *(v0 + 48) = MEMORY[0x2530763A0](v1);
  *(v0 + 56) = 0xD000000000000013;
  *(v0 + 64) = 0x8000000251464380;
  v2 = MEMORY[0x253076160](0xD000000000000029, 0x80000002514622E0);
  *(v0 + 72) = MEMORY[0x2530763A0](v2);
  *(v0 + 80) = 0x746867696548;
  *(v0 + 88) = 0xE600000000000000;
  v3 = MEMORY[0x253076160]();
  *(v0 + 96) = MEMORY[0x2530763A0](v3);
  *(v0 + 104) = 0x73614D2079646F42;
  *(v0 + 112) = 0xE900000000000073;
  v4 = MEMORY[0x253076160](0xD000000000000020, 0x80000002514622B0);
  *(v0 + 120) = MEMORY[0x2530763A0](v4);
  strcpy((v0 + 128), "Lean Body Mass");
  *(v0 + 143) = -18;
  v5 = MEMORY[0x253076160](0xD000000000000024, 0x8000000251461500);
  *(v0 + 144) = MEMORY[0x2530763A0](v5);
  *(v0 + 152) = 0x6152207472616548;
  *(v0 + 160) = 0xEA00000000006574;
  v6 = MEMORY[0x253076160](0xD000000000000021, 0x8000000251461630);
  *(v0 + 168) = MEMORY[0x2530763A0](v6);
  *(v0 + 176) = 0x7370657453;
  *(v0 + 184) = 0xE500000000000000;
  v7 = MEMORY[0x253076160](0xD000000000000021, 0x80000002514610C0);
  *(v0 + 192) = MEMORY[0x2530763A0](v7);
  *(v0 + 200) = 0xD000000000000018;
  *(v0 + 208) = 0x80000002514643A0;
  v8 = MEMORY[0x253076160](0xD00000000000002ELL, 0x8000000251461840);
  *(v0 + 216) = MEMORY[0x2530763A0](v8);
  *(v0 + 224) = 0xD000000000000013;
  *(v0 + 232) = 0x80000002514643C0;
  v9 = MEMORY[0x253076160](0xD000000000000029, 0x8000000251462370);
  *(v0 + 240) = MEMORY[0x2530763A0](v9);
  strcpy((v0 + 248), "Active Energy");
  *(v0 + 262) = -4864;
  v10 = MEMORY[0x253076160](0xD00000000000002ALL, 0x8000000251462570);
  *(v0 + 264) = MEMORY[0x2530763A0](v10);
  *(v0 + 272) = 0x2073746867696C46;
  *(v0 + 280) = 0xEF6465626D696C43;
  v11 = MEMORY[0x253076160]();
  *(v0 + 288) = MEMORY[0x2530763A0](v11);
  *(v0 + 296) = 0x65754620656B694ELL;
  *(v0 + 304) = 0xE90000000000006CLL;
  v12 = MEMORY[0x253076160](0xD000000000000020, 0x80000002514614D0);
  *(v0 + 312) = MEMORY[0x2530763A0](v12);
  *(v0 + 320) = 0xD000000000000011;
  *(v0 + 328) = 0x80000002514643E0;
  v13 = MEMORY[0x253076160](0xD000000000000028, 0x8000000251461430);
  *(v0 + 336) = MEMORY[0x2530763A0](v13);
  strcpy((v0 + 344), "Blood Glucose");
  *(v0 + 358) = -4864;
  v14 = MEMORY[0x253076160](0xD000000000000024, 0x8000000251462310);
  *(v0 + 360) = MEMORY[0x2530763A0](v14);
  *(v0 + 368) = 0xD000000000000015;
  *(v0 + 376) = 0x8000000251464400;
  v15 = MEMORY[0x253076160](0xD00000000000002BLL, 0x8000000251462340);
  *(v0 + 384) = MEMORY[0x2530763A0](v15);
  *(v0 + 392) = 0xD00000000000001ALL;
  *(v0 + 400) = 0x8000000251464420;
  v16 = MEMORY[0x253076160](0xD000000000000030, 0x8000000251461390);
  *(v0 + 408) = MEMORY[0x2530763A0](v16);
  *(v0 + 416) = 0xD000000000000011;
  *(v0 + 424) = 0x8000000251464440;
  v17 = MEMORY[0x253076160](0xD000000000000027, 0x8000000251461EC0);
  *(v0 + 432) = MEMORY[0x2530763A0](v17);
  *(v0 + 440) = 0xD00000000000001BLL;
  *(v0 + 448) = 0x8000000251464460;
  v18 = MEMORY[0x253076160](0xD000000000000031, 0x8000000251461F20);
  *(v0 + 456) = MEMORY[0x2530763A0](v18);
  *(v0 + 464) = 0xD00000000000001BLL;
  *(v0 + 472) = 0x8000000251464480;
  v19 = MEMORY[0x253076160](0xD000000000000031, 0x8000000251461F60);
  *(v0 + 480) = MEMORY[0x2530763A0](v19);
  *(v0 + 488) = 0xD000000000000015;
  *(v0 + 496) = 0x80000002514644A0;
  v20 = MEMORY[0x253076160](0xD00000000000002BLL, 0x8000000251461EF0);
  *(v0 + 504) = MEMORY[0x2530763A0](v20);
  *(v0 + 512) = 0xD000000000000013;
  *(v0 + 520) = 0x80000002514644C0;
  v21 = MEMORY[0x253076160](0xD00000000000002ALL, 0x8000000251462030);
  *(v0 + 528) = MEMORY[0x2530763A0](v21);
  strcpy((v0 + 536), "Dietary Sodium");
  *(v0 + 551) = -18;
  v22 = MEMORY[0x253076160](0xD000000000000025, 0x8000000251461BF0);
  *(v0 + 552) = MEMORY[0x2530763A0](v22);
  *(v0 + 560) = 0xD000000000000015;
  *(v0 + 568) = 0x80000002514644E0;
  v23 = MEMORY[0x253076160](0xD00000000000002CLL, 0x8000000251462090);
  *(v0 + 576) = MEMORY[0x2530763A0](v23);
  strcpy((v0 + 584), "Dietary Fiber");
  *(v0 + 598) = -4864;
  v24 = MEMORY[0x253076160](0xD000000000000024, 0x8000000251461E90);
  *(v0 + 600) = MEMORY[0x2530763A0](v24);
  strcpy((v0 + 608), "Dietary Sugar");
  *(v0 + 622) = -4864;
  v25 = MEMORY[0x253076160](0xD000000000000024, 0x8000000251461BC0);
  *(v0 + 624) = MEMORY[0x2530763A0](v25);
  strcpy((v0 + 632), "Dietary Energy");
  *(v0 + 647) = -18;
  v26 = MEMORY[0x253076160](0xD00000000000002DLL, 0x8000000251461FA0);
  *(v0 + 648) = MEMORY[0x2530763A0](v26);
  *(v0 + 656) = 0x2079726174656944;
  *(v0 + 664) = 0xEF6E6965746F7250;
  v27 = MEMORY[0x253076160](0xD000000000000026, 0x8000000251461C80);
  *(v0 + 672) = MEMORY[0x2530763A0](v27);
  *(v0 + 680) = 0xD000000000000011;
  *(v0 + 688) = 0x8000000251464500;
  v28 = MEMORY[0x253076160](0xD000000000000027, 0x8000000251461B60);
  *(v0 + 696) = MEMORY[0x2530763A0](v28);
  *(v0 + 704) = 0xD000000000000012;
  *(v0 + 712) = 0x8000000251464520;
  v29 = MEMORY[0x253076160](0xD000000000000028, 0x8000000251461B00);
  *(v0 + 720) = MEMORY[0x2530763A0](v29);
  *(v0 + 728) = 0xD000000000000013;
  *(v0 + 736) = 0x8000000251464540;
  v30 = MEMORY[0x253076160](0xD000000000000029, 0x8000000251461B30);
  *(v0 + 744) = MEMORY[0x2530763A0](v30);
  *(v0 + 752) = 0xD000000000000011;
  *(v0 + 760) = 0x8000000251464560;
  v31 = MEMORY[0x253076160](0xD000000000000027, 0x8000000251461AD0);
  *(v0 + 768) = MEMORY[0x2530763A0](v31);
  *(v0 + 776) = 0xD000000000000011;
  *(v0 + 784) = 0x8000000251464580;
  v32 = MEMORY[0x253076160](0xD000000000000027, 0x8000000251461AA0);
  *(v0 + 792) = MEMORY[0x2530763A0](v32);
  *(v0 + 800) = 0xD000000000000011;
  *(v0 + 808) = 0x80000002514645A0;
  v33 = MEMORY[0x253076160](0xD000000000000027, 0x8000000251461A70);
  *(v0 + 816) = MEMORY[0x2530763A0](v33);
  *(v0 + 824) = 0xD000000000000011;
  *(v0 + 832) = 0x80000002514645C0;
  v34 = MEMORY[0x253076160](0xD000000000000027, 0x8000000251461A40);
  *(v0 + 840) = MEMORY[0x2530763A0](v34);
  *(v0 + 848) = 0x2079726174656944;
  *(v0 + 856) = 0xEF6D7569636C6143;
  v35 = MEMORY[0x253076160](0xD000000000000026, 0x80000002514620C0);
  *(v0 + 864) = MEMORY[0x2530763A0](v35);
  strcpy((v0 + 872), "Dietary Iron");
  *(v0 + 885) = 0;
  *(v0 + 886) = -5120;
  v36 = MEMORY[0x253076160](0xD000000000000023, 0x8000000251461E00);
  *(v0 + 888) = MEMORY[0x2530763A0](v36);
  *(v0 + 896) = 0x2079726174656944;
  *(v0 + 904) = 0xEF6E696D61696854;
  v37 = MEMORY[0x253076160](0xD000000000000026, 0x8000000251461B90);
  *(v0 + 912) = MEMORY[0x2530763A0](v37);
  *(v0 + 920) = 0xD000000000000012;
  *(v0 + 928) = 0x80000002514645E0;
  v38 = MEMORY[0x253076160](0xD000000000000029, 0x8000000251461C50);
  *(v0 + 936) = MEMORY[0x2530763A0](v38);
  strcpy((v0 + 944), "Dietary Niacin");
  *(v0 + 959) = -18;
  v39 = MEMORY[0x253076160](0xD000000000000025, 0x8000000251461D40);
  *(v0 + 960) = MEMORY[0x2530763A0](v39);
  strcpy((v0 + 968), "Dietary Folate");
  *(v0 + 983) = -18;
  v40 = MEMORY[0x253076160](0xD000000000000025, 0x8000000251461E60);
  *(v0 + 984) = MEMORY[0x2530763A0](v40);
  strcpy((v0 + 992), "Dietary Biotin");
  *(v0 + 1007) = -18;
  v41 = MEMORY[0x253076160](0xD000000000000025, 0x8000000251462120);
  *(v0 + 1008) = MEMORY[0x2530763A0](v41);
  *(v0 + 1016) = 0xD000000000000018;
  *(v0 + 1024) = 0x8000000251464600;
  v42 = MEMORY[0x253076160](0xD00000000000002ELL, 0x8000000251461D10);
  *(v0 + 1032) = MEMORY[0x2530763A0](v42);
  *(v0 + 1040) = 0xD000000000000012;
  *(v0 + 1048) = 0x8000000251464620;
  v43 = MEMORY[0x253076160](0xD000000000000029, 0x8000000251461CE0);
  *(v0 + 1056) = MEMORY[0x2530763A0](v43);
  strcpy((v0 + 1064), "Dietary Iodine");
  *(v0 + 1079) = -18;
  v44 = MEMORY[0x253076160](0xD000000000000025, 0x8000000251461E30);
  *(v0 + 1080) = MEMORY[0x2530763A0](v44);
  *(v0 + 1088) = 0xD000000000000011;
  *(v0 + 1096) = 0x8000000251464640;
  v45 = MEMORY[0x253076160](0xD000000000000028, 0x8000000251461DD0);
  *(v0 + 1104) = MEMORY[0x2530763A0](v45);
  strcpy((v0 + 1112), "Dietary Zinc");
  *(v0 + 1125) = 0;
  *(v0 + 1126) = -5120;
  v46 = MEMORY[0x253076160](0xD000000000000023, 0x80000002514619E0);
  *(v0 + 1128) = MEMORY[0x2530763A0](v46);
  *(v0 + 1136) = 0xD000000000000010;
  *(v0 + 1144) = 0x8000000251464660;
  v47 = MEMORY[0x253076160](0xD000000000000027, 0x8000000251461C20);
  *(v0 + 1152) = MEMORY[0x2530763A0](v47);
  strcpy((v0 + 1160), "Dietary Copper");
  *(v0 + 1175) = -18;
  v48 = MEMORY[0x253076160](0xD000000000000025, 0x8000000251461FD0);
  *(v0 + 1176) = MEMORY[0x2530763A0](v48);
  *(v0 + 1184) = 0xD000000000000011;
  *(v0 + 1192) = 0x8000000251464680;
  v49 = MEMORY[0x253076160](0xD000000000000028, 0x8000000251461DA0);
  *(v0 + 1200) = MEMORY[0x2530763A0](v49);
  *(v0 + 1208) = 0xD000000000000010;
  *(v0 + 1216) = 0x80000002514646A0;
  v50 = MEMORY[0x253076160](0xD000000000000027, 0x8000000251462000);
  *(v0 + 1224) = MEMORY[0x2530763A0](v50);
  *(v0 + 1232) = 0xD000000000000012;
  *(v0 + 1240) = 0x80000002514646C0;
  v51 = MEMORY[0x253076160](0xD000000000000029, 0x8000000251461D70);
  *(v0 + 1248) = MEMORY[0x2530763A0](v51);
  *(v0 + 1256) = 0xD000000000000010;
  *(v0 + 1264) = 0x80000002514646E0;
  v52 = MEMORY[0x253076160](0xD000000000000027, 0x8000000251462060);
  *(v0 + 1272) = MEMORY[0x2530763A0](v52);
  *(v0 + 1280) = 0xD000000000000011;
  *(v0 + 1288) = 0x8000000251464700;
  v53 = MEMORY[0x253076160](0xD000000000000028, 0x8000000251461CB0);
  *(v0 + 1296) = MEMORY[0x2530763A0](v53);
  *(v0 + 1304) = 0xD000000000000016;
  *(v0 + 1312) = 0x8000000251464720;
  v54 = MEMORY[0x253076160](0xD00000000000002BLL, 0x8000000251461460);
  *(v0 + 1320) = MEMORY[0x2530763A0](v54);
  *(v0 + 1328) = 0xD000000000000016;
  *(v0 + 1336) = 0x8000000251464740;
  v55 = MEMORY[0x253076160](0xD00000000000002DLL, 0x80000002514617E0);
  *(v0 + 1344) = MEMORY[0x2530763A0](v55);
  strcpy((v0 + 1352), "Inhaler Usage");
  *(v0 + 1366) = -4864;
  v56 = MEMORY[0x253076160](0xD000000000000024, 0x8000000251461560);
  *(v0 + 1368) = MEMORY[0x2530763A0](v56);
  *(v0 + 1376) = 0xD000000000000010;
  *(v0 + 1384) = 0x8000000251464760;
  v57 = MEMORY[0x253076160](0xD000000000000027, 0x8000000251461300);
  *(v0 + 1392) = MEMORY[0x2530763A0](v57);
  *(v0 + 1400) = 0xD000000000000010;
  *(v0 + 1408) = 0x8000000251464780;
  v58 = MEMORY[0x253076160](0xD000000000000027, 0x8000000251462250);
  *(v0 + 1416) = MEMORY[0x2530763A0](v58);
  *(v0 + 1424) = 0xD000000000000015;
  *(v0 + 1432) = 0x80000002514647A0;
  v59 = MEMORY[0x253076160](0xD00000000000002BLL, 0x8000000251461690);
  *(v0 + 1440) = MEMORY[0x2530763A0](v59);
  *(v0 + 1448) = 0xD00000000000001ALL;
  *(v0 + 1456) = 0x80000002514647C0;
  v60 = MEMORY[0x253076160](0xD00000000000002FLL, 0x80000002514616C0);
  *(v0 + 1464) = MEMORY[0x2530763A0](v60);
  *(v0 + 1472) = 0xD000000000000019;
  *(v0 + 1480) = 0x80000002514647E0;
  v61 = MEMORY[0x253076160](0xD00000000000002ELL, 0x80000002514613D0);
  *(v0 + 1488) = MEMORY[0x2530763A0](v61);
  *(v0 + 1496) = 0xD000000000000013;
  *(v0 + 1504) = 0x8000000251464800;
  v62 = MEMORY[0x253076160](0xD000000000000029, 0x8000000251462540);
  *(v0 + 1512) = MEMORY[0x2530763A0](v62);
  *(v0 + 1520) = 0xD000000000000010;
  *(v0 + 1528) = 0x8000000251464820;
  v63 = MEMORY[0x253076160](0xD000000000000027, 0x80000002514620F0);
  *(v0 + 1536) = MEMORY[0x2530763A0](v63);
  strcpy((v0 + 1544), "Blood Pressure");
  *(v0 + 1559) = -18;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKCorrelationType, 0x277CCD250);
  v64 = MEMORY[0x253076160](0xD000000000000028, 0x80000002514627E0);
  *(v0 + 1560) = MEMORY[0x2530763B0](v64);
  *(v0 + 1568) = 0xD000000000000010;
  *(v0 + 1576) = 0x8000000251464840;
  v65 = MEMORY[0x253076160](0xD000000000000027, 0x8000000251461970);
  *(v0 + 1584) = MEMORY[0x2530763A0](v65);
  strcpy((v0 + 1592), "Dietary Water");
  *(v0 + 1606) = -4864;
  v66 = MEMORY[0x253076160](0xD000000000000024, 0x8000000251461A10);
  *(v0 + 1608) = MEMORY[0x2530763A0](v66);
  *(v0 + 1616) = 0x736F707845205655;
  *(v0 + 1624) = 0xEB00000000657275;
  v67 = MEMORY[0x253076160]();
  *(v0 + 1632) = MEMORY[0x2530763A0](v67);
  *(v0 + 1640) = 0xD000000000000016;
  *(v0 + 1648) = 0x8000000251464860;
  v68 = MEMORY[0x253076160](0xD00000000000002CLL, 0x80000002514623A0);
  *(v0 + 1656) = MEMORY[0x2530763A0](v68);
  *(v0 + 1664) = 0xD000000000000016;
  *(v0 + 1672) = 0x8000000251464880;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKCategoryType, 0x277CCD0C0);
  v69 = MEMORY[0x253076160](0xD00000000000002CLL, 0x8000000251463CD0);
  *(v0 + 1680) = MEMORY[0x253076390](v69);
  *(v0 + 1688) = 0xD000000000000015;
  *(v0 + 1696) = 0x80000002514648A0;
  v70 = MEMORY[0x253076160](0xD00000000000002BLL, 0x8000000251463480);
  *(v0 + 1704) = MEMORY[0x253076390](v70);
  strcpy((v0 + 1712), "Menstruation");
  *(v0 + 1725) = 0;
  *(v0 + 1726) = -5120;
  v71 = MEMORY[0x253076160](0xD000000000000025, 0x8000000251463580);
  *(v0 + 1728) = MEMORY[0x253076390](v71);
  *(v0 + 1736) = 0x756F432068737550;
  *(v0 + 1744) = 0xEA0000000000746ELL;
  v72 = MEMORY[0x253076160](0xD000000000000021, 0x8000000251461330);
  *(v0 + 1752) = MEMORY[0x2530763A0](v72);
  *(v0 + 1760) = 0xD000000000000011;
  *(v0 + 1768) = 0x80000002514648C0;
  v73 = MEMORY[0x253076160](0xD000000000000028, 0x8000000251461870);
  *(v0 + 1776) = MEMORY[0x2530763A0](v73);
  *(v0 + 1784) = 0xD000000000000010;
  *(v0 + 1792) = 0x80000002514648E0;
  v74 = MEMORY[0x253076160](0xD00000000000002BLL, 0x8000000251461090);
  *(v0 + 1800) = MEMORY[0x2530763A0](v74);
  *(v0 + 1808) = 0xD000000000000013;
  *(v0 + 1816) = 0x8000000251464900;
  v75 = MEMORY[0x253076160](0xD00000000000002ALL, 0x8000000251461810);
  *(v0 + 1824) = MEMORY[0x2530763A0](v75);
  *(v0 + 1832) = 0xD000000000000013;
  *(v0 + 1840) = 0x8000000251464920;
  v76 = MEMORY[0x253076160](0xD00000000000002ALL, 0x8000000251460FB0);
  *(v0 + 1848) = MEMORY[0x2530763A0](v76);
  *(v0 + 1856) = 0xD000000000000012;
  *(v0 + 1864) = 0x8000000251464940;
  v77 = MEMORY[0x253076160](0xD000000000000028, 0x80000002514612D0);
  *(v0 + 1872) = MEMORY[0x2530763A0](v77);
  *(v0 + 1880) = 0x78614D20324F56;
  *(v0 + 1888) = 0xE700000000000000;
  v78 = MEMORY[0x253076160](0xD00000000000001ELL, 0x8000000251460FE0);
  *(v0 + 1896) = MEMORY[0x2530763A0](v78);
  *(v0 + 1904) = 0xD00000000000001ALL;
  *(v0 + 1912) = 0x8000000251464960;
  v79 = MEMORY[0x253076160](0xD00000000000002FLL, 0x8000000251460F00);
  *(v0 + 1920) = MEMORY[0x2530763A0](v79);
  *(v0 + 1928) = 0xD00000000000001DLL;
  *(v0 + 1936) = 0x8000000251464980;
  v80 = MEMORY[0x253076160](0xD000000000000032, 0x8000000251461930);
  *(v0 + 1944) = MEMORY[0x2530763A0](v80);
  *(v0 + 1952) = 0xD00000000000001BLL;
  *(v0 + 1960) = 0x80000002514649A0;
  v81 = MEMORY[0x253076160](0xD000000000000030, 0x80000002514615B0);
  *(v0 + 1968) = MEMORY[0x2530763A0](v81);
  *(v0 + 1976) = 0xD000000000000010;
  *(v0 + 1984) = 0x80000002514649C0;
  v82 = MEMORY[0x253076160](0xD000000000000027, 0x8000000251463FD0);
  *(v0 + 1992) = MEMORY[0x253076390](v82);
  *(v0 + 2000) = 0x5020747361657242;
  *(v0 + 2008) = 0xEB000000006E6961;
  v83 = MEMORY[0x253076160](0xD000000000000022, 0x8000000251463D00);
  *(v0 + 2016) = MEMORY[0x253076390](v83);
  *(v0 + 2024) = 0x676E6974616F6C42;
  *(v0 + 2032) = 0xE800000000000000;
  v84 = MEMORY[0x253076160](0xD000000000000020, 0x8000000251463D30);
  *(v0 + 2040) = MEMORY[0x253076390](v84);
  *(v0 + 2048) = 0x6568636164616548;
  *(v0 + 2056) = 0xE800000000000000;
  v85 = MEMORY[0x253076160](0xD000000000000020, 0x8000000251463930);
  *(v0 + 2064) = MEMORY[0x253076390](v85);
  *(v0 + 2072) = 1701733185;
  *(v0 + 2080) = 0xE400000000000000;
  v86 = MEMORY[0x253076160]();
  *(v0 + 2088) = MEMORY[0x253076390](v86);
  *(v0 + 2096) = 0x6142207265776F4CLL;
  *(v0 + 2104) = 0xEF6E696150206B63;
  v87 = MEMORY[0x253076160](0xD000000000000025, 0x80000002514635E0);
  *(v0 + 2112) = MEMORY[0x253076390](v87);
  *(v0 + 2120) = 0x50206369766C6550;
  *(v0 + 2128) = 0xEB000000006E6961;
  v88 = MEMORY[0x253076160](0xD000000000000022, 0x8000000251463390);
  *(v0 + 2136) = MEMORY[0x253076390](v88);
  strcpy((v0 + 2144), "Mood Changes");
  *(v0 + 2157) = 0;
  *(v0 + 2158) = -5120;
  v89 = MEMORY[0x253076160](0xD000000000000023, 0x8000000251463500);
  *(v0 + 2160) = MEMORY[0x253076390](v89);
  strcpy((v0 + 2168), "Constipation");
  *(v0 + 2181) = 0;
  *(v0 + 2182) = -5120;
  v90 = MEMORY[0x253076160](0xD000000000000024, 0x8000000251463C50);
  *(v0 + 2184) = MEMORY[0x253076390](v90);
  *(v0 + 2192) = 0x6165687272616944;
  *(v0 + 2200) = 0xE800000000000000;
  v91 = MEMORY[0x253076160](0xD000000000000020, 0x8000000251463AD0);
  *(v0 + 2208) = MEMORY[0x253076390](v91);
  *(v0 + 2216) = 0x65756769746146;
  *(v0 + 2224) = 0xE700000000000000;
  v92 = MEMORY[0x253076160]();
  *(v0 + 2232) = MEMORY[0x253076390](v92);
  *(v0 + 2240) = 0x61657375614ELL;
  *(v0 + 2248) = 0xE600000000000000;
  v93 = MEMORY[0x253076160](0xD00000000000001ELL, 0x80000002514634E0);
  *(v0 + 2256) = MEMORY[0x253076390](v93);
  strcpy((v0 + 2264), "Sleep Changes");
  *(v0 + 2278) = -4864;
  v94 = MEMORY[0x253076160](0xD000000000000024, 0x8000000251462FC0);
  *(v0 + 2280) = MEMORY[0x253076390](v94);
  *(v0 + 2288) = 0xD000000000000010;
  *(v0 + 2296) = 0x80000002514649E0;
  v95 = MEMORY[0x253076160](0xD000000000000027, 0x8000000251463F80);
  *(v0 + 2304) = MEMORY[0x253076390](v95);
  *(v0 + 2312) = 0x73616C4620746F48;
  *(v0 + 2320) = 0xEB00000000736568;
  v96 = MEMORY[0x253076160](0xD000000000000022, 0x8000000251463820);
  *(v0 + 2328) = MEMORY[0x253076390](v96);
  *(v0 + 2336) = 0x6F4D20656C707041;
  *(v0 + 2344) = 0xEF656D6954206576;
  v97 = MEMORY[0x253076160](0xD000000000000025, 0x8000000251462510);
  *(v0 + 2352) = MEMORY[0x2530763A0](v97);
  *(v0 + 2360) = 0xD000000000000021;
  *(v0 + 2368) = 0x8000000251464A00;
  v98 = MEMORY[0x253076160](0xD000000000000036, 0x8000000251460F30);
  *(v0 + 2376) = MEMORY[0x2530763A0](v98);
  *(v0 + 2384) = 0xD00000000000001DLL;
  *(v0 + 2392) = 0x8000000251464A30;
  v99 = MEMORY[0x253076160](0xD000000000000031, 0x8000000251461150);
  *(v0 + 2400) = MEMORY[0x2530763A0](v99);
  *(v0 + 2408) = 0xD000000000000010;
  *(v0 + 2416) = 0x8000000251464A50;
  v100 = MEMORY[0x253076160](0xD000000000000026, 0x8000000251462460);
  *(v0 + 2424) = MEMORY[0x2530763A0](v100);
  strcpy((v0 + 2432), "Walking Speed");
  *(v0 + 2446) = -4864;
  v101 = MEMORY[0x253076160](0xD000000000000024, 0x8000000251460ED0);
  *(v0 + 2448) = MEMORY[0x2530763A0](v101);
  *(v0 + 2456) = 0xD000000000000013;
  *(v0 + 2464) = 0x8000000251464A70;
  v102 = MEMORY[0x253076160](0xD000000000000029, 0x8000000251460EA0);
  *(v0 + 2472) = MEMORY[0x2530763A0](v102);
  *(v0 + 2480) = 0x636E616E67657250;
  *(v0 + 2488) = 0xE900000000000079;
  v103 = MEMORY[0x253076160](0xD000000000000021, 0x8000000251463320);
  *(v0 + 2496) = MEMORY[0x253076390](v103);
  *(v0 + 2504) = 0x6F6974617463614CLL;
  *(v0 + 2512) = 0xE90000000000006ELL;
  v104 = MEMORY[0x253076160](0xD000000000000021, 0x8000000251463710);
  *(v0 + 2520) = MEMORY[0x253076390](v104);
  strcpy((v0 + 2528), "Contraceptive");
  *(v0 + 2542) = -4864;
  v105 = MEMORY[0x253076160](0xD000000000000025, 0x8000000251463C20);
  *(v0 + 2544) = MEMORY[0x253076390](v105);
  *(v0 + 2552) = 0xD00000000000001CLL;
  *(v0 + 2560) = 0x8000000251464A90;
  v106 = MEMORY[0x253076160](0xD000000000000032, 0x8000000251460F70);
  *(v0 + 2568) = MEMORY[0x2530763A0](v106);
  *(v0 + 2576) = 0xD000000000000012;
  *(v0 + 2584) = 0x8000000251464AB0;
  v107 = MEMORY[0x253076160](0xD000000000000028, 0x8000000251461120);
  *(v0 + 2592) = MEMORY[0x2530763A0](v107);
  *(v0 + 2600) = 0xD000000000000013;
  *(v0 + 2608) = 0x8000000251464AD0;
  v108 = MEMORY[0x253076160](0xD000000000000029, 0x80000002514610F0);
  *(v0 + 2616) = MEMORY[0x2530763A0](v108);
  *(v0 + 2624) = 0xD000000000000026;
  *(v0 + 2632) = 0x8000000251464AF0;
  v109 = MEMORY[0x253076160](0xD00000000000003ALL, 0x8000000251463140);
  *(v0 + 2640) = MEMORY[0x253076390](v109);
  *(v0 + 2648) = 0xD000000000000011;
  *(v0 + 2656) = 0x8000000251464B20;
  v110 = MEMORY[0x253076160](0xD000000000000028, 0x8000000251463050);
  *(v0 + 2664) = MEMORY[0x253076390](v110);
  *(v0 + 2672) = 0x7265766546;
  *(v0 + 2680) = 0xE500000000000000;
  v111 = MEMORY[0x253076160](0xD00000000000001DLL, 0x8000000251463A10);
  *(v0 + 2688) = MEMORY[0x253076390](v111);
  *(v0 + 2696) = 0xD000000000000013;
  *(v0 + 2704) = 0x8000000251464B40;
  v112 = MEMORY[0x253076160](0xD000000000000029, 0x80000002514630B0);
  *(v0 + 2712) = MEMORY[0x253076390](v112);
  *(v0 + 2720) = 0xD000000000000017;
  *(v0 + 2728) = 0x8000000251464B60;
  v113 = MEMORY[0x253076160](0xD00000000000002CLL, 0x8000000251463CA0);
  *(v0 + 2736) = MEMORY[0x253076390](v113);
  *(v0 + 2744) = 0x676E69746E696146;
  *(v0 + 2752) = 0xE800000000000000;
  v114 = MEMORY[0x253076160](0xD000000000000020, 0x8000000251463A50);
  *(v0 + 2760) = MEMORY[0x253076390](v114);
  *(v0 + 2768) = 0x73656E697A7A6944;
  *(v0 + 2776) = 0xE900000000000073;
  v115 = MEMORY[0x253076160](0xD000000000000021, 0x8000000251463AA0);
  *(v0 + 2784) = MEMORY[0x253076390](v115);
  *(v0 + 2792) = 0x676E6974696D6F56;
  *(v0 + 2800) = 0xE800000000000000;
  v116 = MEMORY[0x253076160](0xD000000000000020, 0x8000000251462EC0);
  *(v0 + 2808) = MEMORY[0x253076390](v116);
  *(v0 + 2816) = 0x7275627472616548;
  *(v0 + 2824) = 0xE90000000000006ELL;
  v117 = MEMORY[0x253076160](0xD000000000000021, 0x80000002514638A0);
  *(v0 + 2832) = MEMORY[0x253076390](v117);
  *(v0 + 2840) = 0x676E696867756F43;
  *(v0 + 2848) = 0xE800000000000000;
  v118 = MEMORY[0x253076160](0xD000000000000020, 0x8000000251463B00);
  *(v0 + 2856) = MEMORY[0x253076390](v118);
  *(v0 + 2864) = 0x676E697A65656857;
  *(v0 + 2872) = 0xE800000000000000;
  v119 = MEMORY[0x253076160](0xD000000000000020, 0x8000000251462E90);
  *(v0 + 2880) = MEMORY[0x253076390](v119);
  *(v0 + 2888) = 0x7268542065726F53;
  *(v0 + 2896) = 0xEB0000000074616FLL;
  v120 = MEMORY[0x253076160](0xD000000000000022, 0x8000000251462F50);
  *(v0 + 2904) = MEMORY[0x253076390](v120);
  *(v0 + 2912) = 0x69747365676E6F43;
  *(v0 + 2920) = 0xEA00000000006E6FLL;
  v121 = MEMORY[0x253076160](0xD000000000000027, 0x8000000251463080);
  *(v0 + 2928) = MEMORY[0x253076390](v121);
  *(v0 + 2936) = 0x6F4E20796E6E7552;
  *(v0 + 2944) = 0xEA00000000006573;
  v122 = MEMORY[0x253076160](0xD000000000000021, 0x8000000251463110);
  *(v0 + 2952) = MEMORY[0x253076390](v122);
  *(v0 + 2960) = 0x206C616E69676156;
  *(v0 + 2968) = 0xEF7373656E797244;
  v123 = MEMORY[0x253076160](0xD000000000000026, 0x8000000251462EF0);
  *(v0 + 2976) = MEMORY[0x253076390](v123);
  strcpy((v0 + 2984), "Night Sweats");
  *(v0 + 2997) = 0;
  *(v0 + 2998) = -5120;
  v124 = MEMORY[0x253076160](0xD000000000000023, 0x80000002514634B0);
  *(v0 + 3000) = MEMORY[0x253076390](v124);
  *(v0 + 3008) = 0x736C6C696843;
  *(v0 + 3016) = 0xE600000000000000;
  v125 = MEMORY[0x253076160](0xD00000000000001ELL, 0x8000000251463C80);
  *(v0 + 3024) = MEMORY[0x253076390](v125);
  *(v0 + 3032) = 0x736F4C2072696148;
  *(v0 + 3040) = 0xE900000000000073;
  v126 = MEMORY[0x253076160](0xD000000000000020, 0x80000002514639B0);
  *(v0 + 3048) = MEMORY[0x253076390](v126);
  *(v0 + 3056) = 0x6E696B5320797244;
  *(v0 + 3064) = 0xE800000000000000;
  v127 = MEMORY[0x253076160](0xD00000000000001FLL, 0x8000000251463A80);
  *(v0 + 3072) = MEMORY[0x253076390](v127);
  *(v0 + 3080) = 0xD000000000000014;
  *(v0 + 3088) = 0x8000000251464B80;
  v128 = MEMORY[0x253076160](0xD00000000000002BLL, 0x8000000251463DC0);
  *(v0 + 3096) = MEMORY[0x253076390](v128);
  strcpy((v0 + 3104), "Memory Lapse");
  *(v0 + 3117) = 0;
  *(v0 + 3118) = -5120;
  v129 = MEMORY[0x253076160](0xD000000000000023, 0x80000002514635B0);
  *(v0 + 3120) = MEMORY[0x253076390](v129);
  *(v0 + 3128) = 0xD000000000000015;
  *(v0 + 3136) = 0x8000000251464BA0;
  v130 = MEMORY[0x253076160](0xD00000000000002BLL, 0x80000002514639E0);
  *(v0 + 3144) = MEMORY[0x253076390](v130);
  strcpy((v0 + 3152), "Loss Of Smell");
  *(v0 + 3166) = -4864;
  v131 = MEMORY[0x253076160](0xD000000000000023, 0x80000002514636E0);
  *(v0 + 3168) = MEMORY[0x253076390](v131);
  strcpy((v0 + 3176), "Loss Of Taste");
  *(v0 + 3190) = -4864;
  v132 = MEMORY[0x253076160](0xD000000000000023, 0x80000002514636B0);
  *(v0 + 3192) = MEMORY[0x253076390](v132);
  *(v0 + 3200) = 0xD000000000000015;
  *(v0 + 3208) = 0x8000000251464BC0;
  v133 = MEMORY[0x253076160](0xD00000000000002BLL, 0x80000002514632F0);
  *(v0 + 3216) = MEMORY[0x253076390](v133);
  *(v0 + 3224) = 0xD000000000000018;
  *(v0 + 3232) = 0x8000000251464BE0;
  v134 = MEMORY[0x253076160](0xD00000000000002ELL, 0x8000000251463250);
  *(v0 + 3240) = MEMORY[0x253076390](v134);
  *(v0 + 3248) = 0xD00000000000001DLL;
  *(v0 + 3256) = 0x8000000251464C00;
  v135 = MEMORY[0x253076160](0xD000000000000032, 0x8000000251461490);
  *(v0 + 3264) = MEMORY[0x2530763A0](v135);
  *(v0 + 3272) = 0xD000000000000015;
  *(v0 + 3280) = 0x8000000251464C20;
  v136 = MEMORY[0x253076160](0xD00000000000002BLL, 0x80000002514611D0);
  *(v0 + 3288) = MEMORY[0x2530763A0](v136);
  *(v0 + 3296) = 0xD00000000000001CLL;
  *(v0 + 3304) = 0x8000000251464C40;
  v137 = MEMORY[0x253076160](0xD000000000000032, 0x8000000251461190);
  *(v0 + 3312) = MEMORY[0x2530763A0](v137);
  *(v0 + 3320) = 0xD00000000000001BLL;
  *(v0 + 3328) = 0x8000000251464C60;
  v138 = MEMORY[0x253076160](0xD000000000000030, 0x8000000251461260);
  *(v0 + 3336) = MEMORY[0x2530763A0](v138);
  *(v0 + 3344) = 0xD000000000000022;
  *(v0 + 3352) = 0x8000000251464C80;
  v139 = MEMORY[0x253076160](0xD000000000000038, 0x8000000251463350);
  *(v0 + 3360) = MEMORY[0x253076390](v139);
  *(v0 + 3368) = 0xD00000000000001BLL;
  *(v0 + 3376) = 0x8000000251464CB0;
  v140 = MEMORY[0x253076160](0xD000000000000031, 0x8000000251463180);
  *(v0 + 3384) = MEMORY[0x253076390](v140);
  *(v0 + 3392) = 0xD00000000000001ALL;
  *(v0 + 3400) = 0x8000000251464CD0;
  v141 = MEMORY[0x253076160](0xD000000000000030, 0x8000000251463740);
  *(v0 + 3408) = MEMORY[0x253076390](v141);
  *(v0 + 3416) = 0xD00000000000001BLL;
  *(v0 + 3424) = 0x8000000251464CF0;
  v142 = MEMORY[0x253076160](0xD000000000000031, 0x80000002514637E0);
  *(v0 + 3432) = MEMORY[0x253076390](v142);
  *(v0 + 3440) = 0xD000000000000013;
  *(v0 + 3448) = 0x8000000251464D10;
  v143 = MEMORY[0x253076160](0xD000000000000032, 0x80000002514615F0);
  *(v0 + 3456) = MEMORY[0x2530763A0](v143);
  *(v0 + 3464) = 0xD000000000000010;
  *(v0 + 3472) = 0x8000000251464D30;
  v144 = MEMORY[0x253076160](0xD000000000000027, 0x8000000251461000);
  *(v0 + 3480) = MEMORY[0x2530763A0](v144);
  strcpy((v0 + 3488), "Running Power");
  *(v0 + 3502) = -4864;
  v145 = MEMORY[0x253076160](0xD000000000000024, 0x8000000251461230);
  *(v0 + 3504) = MEMORY[0x2530763A0](v145);
  strcpy((v0 + 3512), "Running Speed");
  *(v0 + 3526) = -4864;
  v146 = MEMORY[0x253076160](0xD000000000000024, 0x8000000251461200);
  *(v0 + 3528) = MEMORY[0x2530763A0](v146);
  *(v0 + 3536) = 0xD000000000000025;
  *(v0 + 3544) = 0x8000000251464D50;
  v147 = MEMORY[0x253076160](0xD00000000000003ALL, 0x80000002514624D0);
  *(v0 + 3552) = MEMORY[0x2530763A0](v147);
  *(v0 + 3560) = 0xD000000000000011;
  *(v0 + 3568) = 0x8000000251464D80;
  v148 = MEMORY[0x253076160](0xD000000000000027, 0x8000000251462FF0);
  *(v0 + 3576) = MEMORY[0x253076390](v148);
  *(v0 + 3584) = 0xD000000000000011;
  *(v0 + 3592) = 0x8000000251464DA0;
  v149 = MEMORY[0x253076160](0xD000000000000028, 0x8000000251460E70);
  *(v0 + 3600) = MEMORY[0x2530763A0](v149);
  *(v0 + 3608) = 0xD000000000000010;
  *(v0 + 3616) = 0x8000000251464DC0;
  v150 = MEMORY[0x253076160](0xD000000000000026, 0x8000000251461060);
  *(v0 + 3624) = MEMORY[0x2530763A0](v150);
  strcpy((v0 + 3632), "Cycling Power");
  *(v0 + 3646) = -4864;
  v151 = MEMORY[0x253076160](0xD000000000000024, 0x8000000251462180);
  *(v0 + 3648) = MEMORY[0x2530763A0](v151);
  strcpy((v0 + 3656), "Cycling Speed");
  *(v0 + 3670) = -4864;
  v152 = MEMORY[0x253076160](0xD000000000000024, 0x8000000251462150);
  *(v0 + 3672) = MEMORY[0x2530763A0](v152);
  *(v0 + 3680) = 0x20676E696C637943;
  *(v0 + 3688) = 0xEF65636E65646143;
  v153 = MEMORY[0x253076160](0xD000000000000026, 0x80000002514621F0);
  *(v0 + 3696) = MEMORY[0x2530763A0](v153);
  *(v0 + 3704) = 0xD000000000000022;
  *(v0 + 3712) = 0x8000000251464DE0;
  v154 = MEMORY[0x253076160](0xD000000000000037, 0x80000002514621B0);
  *(v0 + 3720) = MEMORY[0x2530763A0](v154);
  *(v0 + 3728) = 0x6C61636973796850;
  *(v0 + 3736) = 0xEF74726F66664520;
  v155 = MEMORY[0x253076160](0xD000000000000026, 0x8000000251461360);
  *(v0 + 3744) = MEMORY[0x2530763A0](v155);
  *(v0 + 3752) = 0xD000000000000016;
  *(v0 + 3760) = 0x8000000251464E10;
  v156 = MEMORY[0x253076160](0xD00000000000002CLL, 0x8000000251461900);
  *(v0 + 3768) = MEMORY[0x2530763A0](v156);
  *(v0 + 3776) = 0x4420676E69776F52;
  *(v0 + 3784) = 0xEF65636E61747369;
  v157 = MEMORY[0x253076160](0xD000000000000026, 0x80000002514618D0);
  *(v0 + 3792) = MEMORY[0x2530763A0](v157);
  *(v0 + 3800) = 0xD00000000000001DLL;
  *(v0 + 3808) = 0x8000000251464E30;
  v158 = MEMORY[0x253076160](0xD000000000000032, 0x80000002514619A0);
  *(v0 + 3816) = MEMORY[0x2530763A0](v158);
  *(v0 + 3824) = 0xD000000000000017;
  *(v0 + 3832) = 0x8000000251464E50;
  v159 = MEMORY[0x253076160](0xD00000000000002DLL, 0x80000002514618A0);
  *(v0 + 3840) = MEMORY[0x2530763A0](v159);
  *(v0 + 3848) = 0xD00000000000001ELL;
  *(v0 + 3856) = 0x8000000251464E70;
  v160 = MEMORY[0x253076160](0xD000000000000033, 0x8000000251461720);
  *(v0 + 3864) = MEMORY[0x2530763A0](v160);
  strcpy((v0 + 3872), "Rowing Speed");
  *(v0 + 3885) = 0;
  *(v0 + 3886) = -5120;
  v161 = MEMORY[0x253076160](0xD000000000000023, 0x80000002514612A0);
  *(v0 + 3888) = MEMORY[0x2530763A0](v161);
  *(v0 + 3896) = 0xD00000000000001ALL;
  *(v0 + 3904) = 0x8000000251464E90;
  v162 = MEMORY[0x253076160](0xD00000000000002FLL, 0x8000000251462220);
  *(v0 + 3912) = MEMORY[0x2530763A0](v162);
  *(v0 + 3920) = 0xD000000000000013;
  *(v0 + 3928) = 0x8000000251464EB0;
  v163 = MEMORY[0x253076160](0xD000000000000029, 0x8000000251461400);
  *(v0 + 3936) = MEMORY[0x2530763A0](v163);
  *(v0 + 3944) = 0xD000000000000014;
  *(v0 + 3952) = 0x8000000251464ED0;
  v164 = MEMORY[0x253076160](0xD00000000000002ALL, 0x8000000251460E40);
  *(v0 + 3960) = MEMORY[0x2530763A0](v164);
  *(v0 + 3968) = 0xD000000000000019;
  *(v0 + 3976) = 0x8000000251464EF0;
  v165 = MEMORY[0x253076160](0xD00000000000002FLL, 0x8000000251463D60);
  *(v0 + 3984) = MEMORY[0x253076390](v165);
  *(v0 + 3992) = 0xD000000000000018;
  *(v0 + 4000) = 0x8000000251464F10;
  v166 = MEMORY[0x253076160](0xD00000000000002ELL, 0x8000000251463D90);
  result = MEMORY[0x253076390](v166);
  *(v0 + 4008) = result;
  static HealthChartModel.supportedTypes = v0;
  return result;
}

uint64_t static HealthChartModel.supportedTypes.getter()
{
  if (one-time initialization token for supportedTypes != -1)
  {
    swift_once();
  }
}

void type metadata accessor for _ContiguousArrayStorage<(String, HKObjectType)>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<(String, HKObjectType)>)
  {
    type metadata accessor for (String, HKObjectType)(255);
    v1 = type metadata accessor for _ContiguousArrayStorage();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _ContiguousArrayStorage<(String, HKObjectType)>);
    }
  }
}

void type metadata accessor for (String, HKObjectType)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (String, HKObjectType))
  {
    type metadata accessor for HKQuantityType(255, &lazy cache variable for type metadata for HKObjectType, 0x277CCD720);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (String, HKObjectType));
    }
  }
}

uint64_t specialized ChartContent.endStyle(_:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v38 = a3;
  v5 = type metadata accessor for RoundedRectangle();
  MEMORY[0x28223BE20](v5);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0(0);
  v35 = *(v8 - 8);
  v36 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Capsule();
  MEMORY[0x28223BE20](v11);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0(0);
  v15 = v14;
  v34 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for BuilderConditional<<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>(0, &lazy cache variable for type metadata for BuilderConditional<<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>, MEMORY[0x277CBB378]);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v33 - v19;
  if (a2)
  {
    v22 = v37;
    v21 = v38;
    if (a1)
    {
      type metadata accessor for <<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0(0, &lazy cache variable for type metadata for <<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, MEMORY[0x277CBB300], MEMORY[0x277CBB2F8]);
      (*(*(v23 - 8) + 16))(v20, v22, v23);
    }

    else
    {
      v29 = *MEMORY[0x277CE0118];
      v30 = type metadata accessor for RoundedCornerStyle();
      (*(*(v30 - 8) + 104))(v13, v29, v30);
      v31 = MEMORY[0x277CBB2F8];
      type metadata accessor for <<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0(0, &lazy cache variable for type metadata for <<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, MEMORY[0x277CBB300], MEMORY[0x277CBB2F8]);
      v39 = type metadata accessor for RectangleMark();
      v40 = MEMORY[0x277CE0F78];
      v41 = v31;
      v42 = MEMORY[0x277CE0F60];
      swift_getOpaqueTypeConformance2();
      _s10Foundation4DateVACSLAAWlTm_0(&lazy protocol witness table cache variable for type Capsule and conformance Capsule, MEMORY[0x277CE1260], MEMORY[0x277CE1258]);
      ChartContent.clipShape<A>(_:style:)();
      outlined destroy of Capsule(v13, MEMORY[0x277CE1260]);
      (*(v34 + 32))(v20, v17, v15);
    }

    type metadata accessor for BuilderConditional<<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>(0, &lazy cache variable for type metadata for BuilderConditional<<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>.Storage, MEMORY[0x277CBB370]);
    swift_storeEnumTagMultiPayload();
    outlined init with take of BuilderConditional<<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>(v20, v21, &lazy cache variable for type metadata for BuilderConditional<<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>, type metadata accessor for BuilderConditional<<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>);
  }

  else
  {
    v24 = *(v5 + 20);
    v25 = *MEMORY[0x277CE0118];
    v26 = type metadata accessor for RoundedCornerStyle();
    (*(*(v26 - 8) + 104))(&v7[v24], v25, v26);
    *v7 = a1;
    *(v7 + 1) = a1;
    v27 = MEMORY[0x277CBB2F8];
    type metadata accessor for <<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0(0, &lazy cache variable for type metadata for <<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, MEMORY[0x277CBB300], MEMORY[0x277CBB2F8]);
    v39 = type metadata accessor for RectangleMark();
    v40 = MEMORY[0x277CE0F78];
    v41 = v27;
    v42 = MEMORY[0x277CE0F60];
    swift_getOpaqueTypeConformance2();
    _s10Foundation4DateVACSLAAWlTm_0(&lazy protocol witness table cache variable for type RoundedRectangle and conformance RoundedRectangle, MEMORY[0x277CDFC08], MEMORY[0x277CDFBF8]);
    ChartContent.clipShape<A>(_:style:)();
    outlined destroy of Capsule(v7, MEMORY[0x277CDFC08]);
    (*(v35 + 32))(v38, v10, v36);
  }

  type metadata accessor for BuilderConditional<BuilderConditional<<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>.Storage(0, &lazy cache variable for type metadata for BuilderConditional<BuilderConditional<<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>.Storage, MEMORY[0x277CBB370], v28);
  return swift_storeEnumTagMultiPayload();
}

uint64_t closure #1 in CategoryLevelSeries.body.getter@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v119 = a2;
  v113 = a1;
  v5 = MEMORY[0x277CBB378];
  type metadata accessor for BuilderConditional<<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>(0, &lazy cache variable for type metadata for BuilderConditional<<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>, MEMORY[0x277CBB378]);
  MEMORY[0x28223BE20](v6 - 8);
  v108 = v91 - v7;
  v105 = type metadata accessor for Capsule();
  MEMORY[0x28223BE20](v105);
  v104 = v91 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0(0);
  v107 = v9;
  v106 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v103 = v91 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = type metadata accessor for RectangleMark();
  v97 = *(v98 - 8);
  MEMORY[0x28223BE20](v98);
  v115 = v91 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for <<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0(0, &lazy cache variable for type metadata for <<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, MEMORY[0x277CBB300], MEMORY[0x277CBB2F8]);
  v101 = v12;
  v100 = *(v12 - 8);
  v13 = MEMORY[0x28223BE20](v12);
  v99 = v91 - v14;
  type metadata accessor for BuilderConditional<BuilderConditional<<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>.Storage(0, &lazy cache variable for type metadata for BuilderConditional<BuilderConditional<<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>, MEMORY[0x277CBB378], v13);
  MEMORY[0x28223BE20](v15 - 8);
  v102 = v91 - v16;
  v17 = type metadata accessor for DateInterval();
  v117 = *(v17 - 8);
  v118 = v17;
  MEMORY[0x28223BE20](v17);
  v116 = v91 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  _sSNySdGMaTm_0(0, &lazy cache variable for type metadata for PlottableValue<Double>, MEMORY[0x277CBB590], MEMORY[0x277CBB340]);
  MEMORY[0x28223BE20](v19 - 8);
  v114 = v91 - v20;
  type metadata accessor for PlottableValue<Date>(0);
  MEMORY[0x28223BE20](v21 - 8);
  v91[1] = v91 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v121 = v91 - v24;
  v25 = type metadata accessor for PointMark();
  v96 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v94 = v91 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for <<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0(0, &lazy cache variable for type metadata for <<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, MEMORY[0x277CBB470], MEMORY[0x277CBB468]);
  v95 = v27;
  v93 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v92 = v91 - v28;
  v120 = type metadata accessor for Date();
  v29 = *(v120 - 8);
  MEMORY[0x28223BE20](v120);
  v31 = v91 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v112 = v91 - v33;
  v34 = type metadata accessor for CategoryLevelMarkViewModel(0);
  MEMORY[0x28223BE20](v34);
  v36 = v91 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for BuilderConditional<<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, BuilderConditional<BuilderConditional<<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>>(0, &lazy cache variable for type metadata for BuilderConditional<<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, BuilderConditional<BuilderConditional<<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>>, v5);
  MEMORY[0x28223BE20](v37 - 8);
  v111 = v91 - v38;
  type metadata accessor for MainActor();
  v39 = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v109 = v39;
  v110 = a3;
  outlined init with copy of CategoryLevelSeries(v113, v36, type metadata accessor for CategoryLevelMarkViewModel);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v118 = v25;
    type metadata accessor for (x: Date, y: Double)(0, &lazy cache variable for type metadata for (x: Date, y: Double), MEMORY[0x277CC9578]);
    v53 = *&v36[*(v52 + 48)];
    (*(v29 + 32))(v112, v36, v120);
    v122 = 120;
    v123 = 0xE100000000000000;
    v122 = String.init<A>(_:)();
    v123 = v54;
    lazy protocol witness table accessor for type String and conformance String();
    static PlottableValue.value<A>(_:_:)();

    v122 = 121;
    v123 = 0xE100000000000000;
    v122 = String.init<A>(_:)();
    v123 = v55;
    v126 = v53;
    static PlottableValue.value<A>(_:_:)();

    v56 = v94;
    PointMark.init<A, B>(x:y:)();
    v57 = v119 + *(type metadata accessor for CategoryLevelSeries(0) + 20);
    v58 = v57 + *(type metadata accessor for CategoryLevelSeriesViewModel(0) + 36);
    v59 = *v58;
    v60 = *(v58 + 8);
    v61 = *(v58 + 16);
    if (v61)
    {
      v62 = v118;
      if (v61 != 1)
      {
        v65 = v110;
        v68 = v111;
        if (v59 | v60)
        {
          v71 = [objc_opt_self() tintColor];
          v72 = Color.init(uiColor:)();
        }

        else
        {
          v72 = static Color.primary.getter();
        }

        v59 = v72;
        goto LABEL_27;
      }
    }

    else
    {
      v66 = one-time initialization token for bundle;

      v62 = v118;
      if (v66 != -1)
      {
        swift_once();
      }

      v67 = static HealthChartsBundle.bundle;
      v59 = Color.init(_:bundle:)();
    }

    v65 = v110;
    v68 = v111;
LABEL_27:
    v122 = v59;
    v89 = v92;
    ChartContent.foregroundStyle<A>(_:)();

    (*(v96 + 8))(v56, v62);
    (*(v29 + 8))(v112, v120);
    (*(v93 + 32))(v68, v89, v95);
    goto LABEL_28;
  }

  type metadata accessor for (x: Date, y: Double)(0, &lazy cache variable for type metadata for (x: DateInterval, y: Double), MEMORY[0x277CC88A8]);
  v41 = *&v36[*(v40 + 48)];
  (*(v117 + 32))(v116, v36, v118);
  v122 = 29560;
  v123 = 0xE200000000000000;
  v122 = String.init<A>(_:)();
  v123 = v42;
  DateInterval.start.getter();
  lazy protocol witness table accessor for type String and conformance String();
  v43 = v120;
  static PlottableValue.value<A>(_:_:)();
  v44 = *(v29 + 8);
  v44(v31, v43);

  v122 = 25976;
  v123 = 0xE200000000000000;
  v122 = String.init<A>(_:)();
  v123 = v45;
  DateInterval.end.getter();
  static PlottableValue.value<A>(_:_:)();
  v44(v31, v43);

  v122 = 121;
  v123 = 0xE100000000000000;
  v122 = String.init<A>(_:)();
  v123 = v46;
  v126 = v41;
  static PlottableValue.value<A>(_:_:)();

  RectangleMark.init<A, B>(xStart:xEnd:y:height:)();
  v47 = v119 + *(type metadata accessor for CategoryLevelSeries(0) + 20);
  v48 = v47 + *(type metadata accessor for CategoryLevelSeriesViewModel(0) + 36);
  v49 = *v48;
  v50 = *(v48 + 8);
  v51 = *(v48 + 16);
  if (v51)
  {
    if (v51 != 1)
    {
      v65 = v110;
      if (v49 | v50)
      {
        v69 = [objc_opt_self() tintColor];
        v70 = Color.init(uiColor:)();
      }

      else
      {
        v70 = static Color.primary.getter();
      }

      v49 = v70;
      goto LABEL_24;
    }
  }

  else
  {
    v63 = one-time initialization token for bundle;

    if (v63 != -1)
    {
      swift_once();
    }

    v64 = static HealthChartsBundle.bundle;
    v49 = Color.init(_:bundle:)();
  }

  v65 = v110;
LABEL_24:
  v122 = v49;
  v73 = MEMORY[0x277CE0F78];
  v74 = MEMORY[0x277CE0F60];
  v75 = v99;
  v76 = v98;
  v77 = MEMORY[0x277CBB2F8];
  v78 = v115;
  ChartContent.foregroundStyle<A>(_:)();

  (*(v97 + 8))(v78, v76);
  v79 = *MEMORY[0x277CE0118];
  v80 = type metadata accessor for RoundedCornerStyle();
  v81 = v104;
  (*(*(v80 - 8) + 104))(v104, v79, v80);
  v122 = v76;
  v123 = v73;
  v124 = v77;
  v125 = v74;
  swift_getOpaqueTypeConformance2();
  _s10Foundation4DateVACSLAAWlTm_0(&lazy protocol witness table cache variable for type Capsule and conformance Capsule, MEMORY[0x277CE1260], MEMORY[0x277CE1258]);
  v82 = v103;
  v83 = v101;
  ChartContent.clipShape<A>(_:style:)();
  outlined destroy of Capsule(v81, MEMORY[0x277CE1260]);
  (*(v100 + 8))(v75, v83);
  (*(v117 + 8))(v116, v118);
  v84 = v108;
  (*(v106 + 32))(v108, v82, v107);
  type metadata accessor for BuilderConditional<<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>(0, &lazy cache variable for type metadata for BuilderConditional<<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>.Storage, MEMORY[0x277CBB370]);
  swift_storeEnumTagMultiPayload();
  v85 = v84;
  v86 = v102;
  outlined init with take of BuilderConditional<<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>(v85, v102, &lazy cache variable for type metadata for BuilderConditional<<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>, type metadata accessor for BuilderConditional<<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>);
  type metadata accessor for BuilderConditional<BuilderConditional<<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>.Storage(0, &lazy cache variable for type metadata for BuilderConditional<BuilderConditional<<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>.Storage, MEMORY[0x277CBB370], v87);
  swift_storeEnumTagMultiPayload();
  v68 = v111;
  sub_25141FE6C(v86, v111, v88);
LABEL_28:
  type metadata accessor for BuilderConditional<<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, BuilderConditional<BuilderConditional<<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>>(0, &lazy cache variable for type metadata for BuilderConditional<<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, BuilderConditional<BuilderConditional<<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>>.Storage, MEMORY[0x277CBB370]);
  swift_storeEnumTagMultiPayload();
  outlined init with take of BuilderConditional<<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>(v68, v65, &lazy cache variable for type metadata for BuilderConditional<<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, BuilderConditional<BuilderConditional<<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>>, type metadata accessor for BuilderConditional<<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, BuilderConditional<BuilderConditional<<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>>);
}

uint64_t protocol witness for ChartContent.body.getter in conformance CategoryLevelSeries(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](a1 - 8);
  v6 = v1 + *(v5 + 28);
  v7 = type metadata accessor for CategoryLevelSeriesViewModel(0);
  specialized _copySequenceToContiguousArray<A>(_:)(*(v6 + *(v7 + 32)));
  v14[1] = v8;
  swift_getKeyPath();
  outlined init with copy of CategoryLevelSeries(v2, v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CategoryLevelSeries);
  v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v10 = swift_allocObject();
  outlined init with take of CategoryLevelSeries(v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9, type metadata accessor for CategoryLevelSeries);
  v11 = swift_allocObject();
  *(v11 + 16) = partial apply for closure #1 in CategoryLevelSeries.body.getter;
  *(v11 + 24) = v10;
  type metadata accessor for ClosedRange<Date>?(0, &lazy cache variable for type metadata for [(offset: Int, element: CategoryLevelMarkViewModel)], type metadata accessor for (offset: Int, element: CategoryLevelMarkViewModel), MEMORY[0x277D83940]);
  type metadata accessor for BuilderConditional<<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, BuilderConditional<BuilderConditional<<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>>(0, &lazy cache variable for type metadata for BuilderConditional<<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, BuilderConditional<BuilderConditional<<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>>, MEMORY[0x277CBB378]);
  lazy protocol witness table accessor for type [(offset: Int, element: CategoryLevelMarkViewModel)] and conformance [A]();
  lazy protocol witness table accessor for type BuilderConditional<<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, BuilderConditional<BuilderConditional<<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>> and conformance <> BuilderConditional<A, B>(v12);
  return ForEach<>.init(_:id:content:)();
}

uint64_t CategoryLevelSeriesViewModel.init(data:attributes:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v82 = type metadata accessor for Date();
  v75 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v81 = v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v80 = v63 - v8;
  v68 = type metadata accessor for DateInterval();
  v85 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v79 = v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = v63 - v11;
  type metadata accessor for HealthChartsData.SeriesPoint<DateInterval, Double>(0, &lazy cache variable for type metadata for HealthChartsData.SeriesPoint<DateInterval, Double>, MEMORY[0x277D10248]);
  v67 = v13;
  v84 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v83 = v63 - v14;
  v15 = type metadata accessor for CategoryLevelMarkViewModel(0);
  v77 = *(v15 - 8);
  v78 = v15;
  v16 = MEMORY[0x28223BE20](v15);
  v76 = v63 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsData.SeriesData<DateInterval, Double>(0, v16);
  v19 = v18;
  v70 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = v63 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *a2;
  v87 = a2[1];
  LODWORD(v86) = *(a2 + 16);
  _s10Foundation4DateVACSLAAWlTm_0(&lazy protocol witness table cache variable for type HealthChartsData.SeriesData<DateInterval, Double> and conformance HealthChartsData.SeriesData<A, B>, type metadata accessor for HealthChartsData.SeriesData<DateInterval, Double>, MEMORY[0x277D101B0]);
  AnySeriesData.xScale.getter();
  v23 = a1;
  v24 = AnySeriesData.yScale.getter();
  v26 = v25;
  LOBYTE(a1) = v27;
  v28 = type metadata accessor for CategoryLevelSeriesViewModel(0);
  v29 = a3 + *(v28 + 20);
  *v29 = v24;
  *(v29 + 8) = v26;
  v30 = v23;
  *(v29 + 16) = a1 & 1;
  HealthChartsData.SeriesData.aggregation.getter();
  HealthChartsData.SeriesData.unit.getter();
  v69 = v28;
  v31 = a3 + *(v28 + 36);
  v32 = v87;
  *v31 = v22;
  *(v31 + 8) = v32;
  *(v31 + 16) = v86;
  v33 = v68;
  _s10Foundation4DateVACSLAAWlTm_0(&lazy protocol witness table cache variable for type DateInterval and conformance DateInterval, MEMORY[0x277CC88A8], MEMORY[0x277D10188]);
  HealthChartsData.SeriesData.transformed<A, B>(using:)();
  v34 = HealthChartsData.SeriesData.points.getter();
  v35 = v70 + 8;
  v36 = *(v70 + 8);
  v36(v21, v19);
  v38 = *(v34 + 16);
  if (v38)
  {
    v63[0] = v36;
    v70 = v35;
    v64 = v19;
    v65 = v30;
    v66 = a3;
    v88 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v38, 0, v37);
    v39 = v88;
    v74 = *(v84 + 16);
    v40 = (*(v84 + 80) + 32) & ~*(v84 + 80);
    v63[1] = v34;
    v41 = v34 + v40;
    v42 = *(v84 + 72);
    v43 = v85 + 1;
    v72 = (v75 + 8);
    v73 = v42;
    v71 = (v84 + 8);
    v75 = v12;
    v44 = v67;
    v45 = v83;
    v84 += 16;
    ++v85;
    do
    {
      v86 = v39;
      v87 = v38;
      v74(v45, v41, v44);
      HealthChartsData.SeriesPoint.x.getter();
      v46 = v80;
      DateInterval.start.getter();
      v47 = *v43;
      (*v43)(v12, v33);
      v48 = v79;
      HealthChartsData.SeriesPoint.x.getter();
      v49 = v12;
      v50 = v33;
      v51 = v81;
      DateInterval.end.getter();
      v47(v48, v50);
      v52 = static Date.== infix(_:_:)();
      v53 = *v72;
      v54 = v51;
      v55 = v82;
      (*v72)(v54, v82);
      v53(v46, v55);
      if (v52)
      {
        type metadata accessor for (x: Date, y: Double)(0, &lazy cache variable for type metadata for (x: Date, y: Double), MEMORY[0x277CC9578]);
        v56 = v83;
        HealthChartsData.SeriesPoint.x.getter();
        v57 = v76;
        DateInterval.start.getter();
        v47(v49, v50);
        v33 = v50;
        v45 = v56;
      }

      else
      {
        type metadata accessor for (x: Date, y: Double)(0, &lazy cache variable for type metadata for (x: DateInterval, y: Double), MEMORY[0x277CC88A8]);
        v57 = v76;
        v45 = v83;
        HealthChartsData.SeriesPoint.x.getter();
        v33 = v50;
      }

      HealthChartsData.SeriesPoint.y.getter();
      (*v71)(v45, v44);
      swift_storeEnumTagMultiPayload();
      v39 = v86;
      v59 = v87;
      v88 = v86;
      v61 = *(v86 + 16);
      v60 = *(v86 + 24);
      if (v61 >= v60 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v60 > 1), v61 + 1, 1, v58);
        v39 = v88;
      }

      *(v39 + 16) = v61 + 1;
      outlined init with take of CategoryLevelSeries(v57, v39 + ((*(v77 + 80) + 32) & ~*(v77 + 80)) + *(v77 + 72) * v61, type metadata accessor for CategoryLevelMarkViewModel);
      v41 += v73;
      v38 = v59 - 1;
      v12 = v75;
      v43 = v85;
    }

    while (v38);
    (v63[0])(v65, v64);

    a3 = v66;
  }

  else
  {

    result = (v36)(v30, v19);
    v39 = MEMORY[0x277D84F90];
  }

  *(a3 + *(v69 + 32)) = v39;
  return result;
}

void type metadata accessor for ClosedRange<Date>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ClosedRange<Date>)
  {
    type metadata accessor for Date();
    _s10Foundation4DateVACSLAAWlTm_0(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
    v1 = type metadata accessor for ClosedRange();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ClosedRange<Date>);
    }
  }
}

uint64_t CategoryLevelSeriesViewModel.aggregation.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CategoryLevelSeriesViewModel(0) + 24);
  v4 = type metadata accessor for HealthChartsData.Aggregation();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t outlined init with copy of ClosedRange<Date>?(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  type metadata accessor for ClosedRange<Date>?(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void type metadata accessor for ClosedRange<Date>?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t closure #1 in CategoryLevelSeriesViewModel.init(data:attributes:)()
{
  v0 = type metadata accessor for DateInterval();
  MEMORY[0x28223BE20](v0);
  type metadata accessor for HealthChartsData.SeriesPoint<DateInterval, Double>(0, &lazy cache variable for type metadata for HealthChartsData.SeriesPoint<DateInterval, Double>, MEMORY[0x277D10248]);
  HealthChartsData.SeriesPoint.x.getter();
  HealthChartsData.SeriesPoint.y.getter();
  _s10Foundation4DateVACSLAAWlTm_0(&lazy protocol witness table cache variable for type DateInterval and conformance DateInterval, MEMORY[0x277CC88A8], MEMORY[0x277D10188]);
  return HealthChartsData.SeriesPoint.init(_:_:)();
}

uint64_t protocol witness for SeriesData.aggregation.getter in conformance CategoryLevelSeriesViewModel@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = type metadata accessor for HealthChartsData.Aggregation();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_25141ED90(uint64_t a1, uint64_t a2, int *a3)
{
  type metadata accessor for ClosedRange<Date>?(0, &lazy cache variable for type metadata for ClosedRange<Date>?, type metadata accessor for ClosedRange<Date>, MEMORY[0x277D83D88]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for HealthChartsData.Aggregation();
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[6];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  type metadata accessor for ClosedRange<Date>?(0, &lazy cache variable for type metadata for HealthChartsUnit?, MEMORY[0x277D102B8], MEMORY[0x277D83D88]);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[7];
    goto LABEL_7;
  }

  v16 = *(a1 + a3[8]);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  return (v16 + 1);
}

void sub_25141EF58(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  type metadata accessor for ClosedRange<Date>?(0, &lazy cache variable for type metadata for ClosedRange<Date>?, type metadata accessor for ClosedRange<Date>, MEMORY[0x277D83D88]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = type metadata accessor for HealthChartsData.Aggregation();
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[6];
    }

    else
    {
      type metadata accessor for ClosedRange<Date>?(0, &lazy cache variable for type metadata for HealthChartsUnit?, MEMORY[0x277D102B8], MEMORY[0x277D83D88]);
      if (*(*(v16 - 8) + 84) != a3)
      {
        *(a1 + a4[8]) = (a2 - 1);
        return;
      }

      v10 = v16;
      v14 = *(v16 - 8);
      v15 = a4[7];
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  v11(v12, a2, a2, v10);
}

void type metadata completion function for CategoryLevelSeriesViewModel(uint64_t a1)
{
  type metadata accessor for ClosedRange<Date>?(319, &lazy cache variable for type metadata for ClosedRange<Date>?, type metadata accessor for ClosedRange<Date>, MEMORY[0x277D83D88]);
  if (v2 <= 0x3F)
  {
    type metadata accessor for ClosedRange<Double>?(319, v1);
    if (v3 <= 0x3F)
    {
      type metadata accessor for HealthChartsData.Aggregation();
      if (v4 <= 0x3F)
      {
        type metadata accessor for ClosedRange<Date>?(319, &lazy cache variable for type metadata for HealthChartsUnit?, MEMORY[0x277D102B8], MEMORY[0x277D83D88]);
        if (v5 <= 0x3F)
        {
          type metadata accessor for ClosedRange<Date>?(319, &lazy cache variable for type metadata for [CategoryLevelMarkViewModel], type metadata accessor for CategoryLevelMarkViewModel, MEMORY[0x277D83940]);
          if (v6 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void type metadata completion function for CategoryLevelMarkViewModel(uint64_t a1)
{
  type metadata accessor for (x: Date, y: Double)(319, &lazy cache variable for type metadata for (x: Date, y: Double), MEMORY[0x277CC9578]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for (x: Date, y: Double)(319, &lazy cache variable for type metadata for (x: DateInterval, y: Double), MEMORY[0x277CC88A8]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void type metadata accessor for (x: Date, y: Double)(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_25141F3B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for CategoryLevelSeriesViewModel(0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_25141F4B8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for CategoryLevelSeriesViewModel(0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t type metadata completion function for CategoryLevelSeries(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for CategoryLevelSeriesViewModel(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t _s10Foundation4DateVACSLAAWlTm_0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t instantiation function for generic protocol witness table for CategoryLevelSeries(uint64_t a1)
{
  result = _s10Foundation4DateVACSLAAWlTm_0(&lazy protocol witness table cache variable for type CategoryLevelSeries and conformance CategoryLevelSeries, type metadata accessor for CategoryLevelSeries, &protocol conformance descriptor for CategoryLevelSeries);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25141F75C()
{
  v1 = (type metadata accessor for CategoryLevelSeries(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  v3 = type metadata accessor for UUID();
  (*(*(v3 - 8) + 8))(v2, v3);
  v4 = v2 + v1[7];
  type metadata accessor for ClosedRange<Date>(0);
  v6 = v5;
  if (!(*(*(v5 - 8) + 48))(v4, 1, v5))
  {
    v7 = type metadata accessor for Date();
    v8 = *(*(v7 - 8) + 8);
    v8(v4, v7);
    v8(v4 + *(v6 + 36), v7);
  }

  v9 = type metadata accessor for CategoryLevelSeriesViewModel(0);
  v10 = v9[6];
  v11 = type metadata accessor for HealthChartsData.Aggregation();
  (*(*(v11 - 8) + 8))(v4 + v10, v11);
  v12 = v9[7];
  v13 = type metadata accessor for HealthChartsUnit();
  v14 = *(v13 - 8);
  if (!(*(v14 + 48))(v4 + v12, 1, v13))
  {
    (*(v14 + 8))(v4 + v12, v13);
  }

  outlined consume of AttributeColor(*(v4 + v9[9]), *(v4 + v9[9] + 8), *(v4 + v9[9] + 16));

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in CategoryLevelSeries.body.getter@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for CategoryLevelSeries(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return closure #1 in CategoryLevelSeries.body.getter(a1, v6, a2);
}

uint64_t sub_25141FA4C()
{

  return swift_deallocObject();
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@unowned Int, @in_guaranteed CategoryLevelMarkViewModel) -> (@out BuilderConditional<<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, BuilderConditional<BuilderConditional<<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>>)(char *a1)
{
  v3 = *(v1 + 16);
  v4 = *a1;
  type metadata accessor for (offset: Int, element: CategoryLevelMarkViewModel)(0);
  return v3(v4, &a1[*(v5 + 48)]);
}

void type metadata accessor for (offset: Int, element: CategoryLevelMarkViewModel)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (offset: Int, element: CategoryLevelMarkViewModel))
  {
    type metadata accessor for CategoryLevelMarkViewModel(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (offset: Int, element: CategoryLevelMarkViewModel));
    }
  }
}

void type metadata accessor for BuilderConditional<BuilderConditional<<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>.Storage(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t), __n128 a4)
{
  if (!*a2)
  {
    type metadata accessor for BuilderConditional<<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>(255, &lazy cache variable for type metadata for BuilderConditional<<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>, MEMORY[0x277CBB378]);
    v8 = v7;
    type metadata accessor for <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0(255);
    v10 = a3(a1, v8, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void type metadata accessor for <<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (!*a2)
  {
    a3(255);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v6)
    {
      atomic_store(OpaqueTypeMetadata2, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type BuilderConditional<<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, BuilderConditional<BuilderConditional<<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>> and conformance <> BuilderConditional<A, B>(__n128 a1)
{
  result = lazy protocol witness table cache variable for type BuilderConditional<<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, BuilderConditional<BuilderConditional<<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>> and conformance <> BuilderConditional<A, B>;
  if (!lazy protocol witness table cache variable for type BuilderConditional<<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, BuilderConditional<BuilderConditional<<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>> and conformance <> BuilderConditional<A, B>)
  {
    type metadata accessor for BuilderConditional<<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, BuilderConditional<BuilderConditional<<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>>(255, &lazy cache variable for type metadata for BuilderConditional<<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, BuilderConditional<BuilderConditional<<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>>, MEMORY[0x277CBB378]);
    type metadata accessor for PointMark();
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type BuilderConditional<BuilderConditional<<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0> and conformance <> BuilderConditional<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BuilderConditional<<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, BuilderConditional<BuilderConditional<<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>> and conformance <> BuilderConditional<A, B>);
  }

  return result;
}

void type metadata accessor for BuilderConditional<<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    type metadata accessor for <<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0(255, &lazy cache variable for type metadata for <<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, MEMORY[0x277CBB300], MEMORY[0x277CBB2F8]);
    v7 = v6;
    type metadata accessor for <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0(255);
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_25141FE6C(uint64_t a1, uint64_t a2, __n128 a3)
{
  type metadata accessor for BuilderConditional<BuilderConditional<<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>.Storage(0, &lazy cache variable for type metadata for BuilderConditional<BuilderConditional<<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>, MEMORY[0x277CBB378], a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void type metadata accessor for BuilderConditional<<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, BuilderConditional<BuilderConditional<<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    type metadata accessor for <<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0(255, &lazy cache variable for type metadata for <<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, MEMORY[0x277CBB470], MEMORY[0x277CBB468]);
    v7 = v6;
    type metadata accessor for BuilderConditional<BuilderConditional<<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>.Storage(255, &lazy cache variable for type metadata for BuilderConditional<BuilderConditional<<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>, MEMORY[0x277CBB378], v8);
    v10 = a3(a1, v7, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t outlined init with take of BuilderConditional<<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void, uint64_t, void))
{
  v6 = a4(0, a3, MEMORY[0x277CBB378]);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t outlined destroy of Capsule(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with copy of CategoryLevelSeries(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void type metadata accessor for HealthChartsData.SeriesPoint<DateInterval, Double>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v6 = type metadata accessor for DateInterval();
    v7 = _s10Foundation4DateVACSLAAWlTm_0(&lazy protocol witness table cache variable for type DateInterval and conformance DateInterval, MEMORY[0x277CC88A8], MEMORY[0x277D10188]);
    v10[0] = v6;
    v10[1] = MEMORY[0x277D839F8];
    v10[2] = v7;
    v10[3] = MEMORY[0x277D10358];
    v8 = a3(a1, v10);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t outlined init with take of CategoryLevelSeries(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t static ChartContentBuilder.buildEither<A, B>(first:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for BuilderConditional.Storage();
  v6 = MEMORY[0x28223BE20](v5);
  (*(*(a2 - 8) + 16))(&v9 - v7, a1, a2, v6);
  swift_storeEnumTagMultiPayload();
  return BuilderConditional.init(storage:)();
}

uint64_t static ChartContentBuilder.buildEither<A, B>(second:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for BuilderConditional.Storage();
  v6 = MEMORY[0x28223BE20](v5);
  (*(*(a3 - 8) + 16))(&v9 - v7, a1, a3, v6);
  swift_storeEnumTagMultiPayload();
  return BuilderConditional.init(storage:)();
}

uint64_t static ChartContentBuilder.buildBlock<each A>(_:)@<X0>(uint64_t *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = a1;
  v6 = 8 * a2;
  v36[1] = a4;
  if (a2 == 1)
  {
    v7 = a3;
    TupleTypeMetadata = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x28223BE20](a1);
    v10 = v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a2)
    {
      v11 = 0;
      v12 = v9 & 0xFFFFFFFFFFFFFFFELL;
      if (a2 < 4)
      {
        goto LABEL_9;
      }

      if (&v10[-v12] < 0x20)
      {
        goto LABEL_9;
      }

      v11 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      v13 = (v12 + 16);
      v14 = v10 + 16;
      v15 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v16 = *v13;
        *(v14 - 1) = *(v13 - 1);
        *v14 = v16;
        v13 += 2;
        v14 += 2;
        v15 -= 4;
      }

      while (v15);
      if (v11 != a2)
      {
LABEL_9:
        v17 = a2 - v11;
        v18 = 8 * v11;
        v19 = &v10[8 * v11];
        v20 = (v12 + v18);
        do
        {
          v21 = *v20++;
          *v19 = v21;
          v19 += 8;
          --v17;
        }

        while (v17);
      }
    }

    v7 = v9;
    TupleTypeMetadata = swift_getTupleTypeMetadata();
  }

  MEMORY[0x28223BE20](TupleTypeMetadata);
  v23 = v36 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36[0] = v36;
  MEMORY[0x28223BE20](v24);
  if (a2)
  {
    v26 = (v7 & 0xFFFFFFFFFFFFFFFELL);
    v27 = (v25 + 32);
    v28 = (v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
    v29 = a2;
    do
    {
      if (a2 == 1)
      {
        v30 = 0;
      }

      else
      {
        v30 = *v27;
      }

      v32 = *v26++;
      v31 = v32;
      v33 = &v23[v30];
      v34 = *v5++;
      (*(*(v31 - 8) + 16))(&v23[v30], v34);
      *v28++ = v33;
      v27 += 4;
      --v29;
    }

    while (v29);
  }

  return BuilderTuple.init(elements:)();
}

uint64_t static SeriesContentBuilder.buildBlock<A, B>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v28 = a7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v16 = &v27 - v15;
  v27 = swift_getAssociatedTypeWitness();
  v17 = MEMORY[0x28223BE20](v27);
  v19 = &v27 - v18;
  (*(a5 + 40))(a3, a5, v17);
  (*(a6 + 40))(a4, a6);
  v39 = AssociatedTypeWitness;
  v40 = v16;
  v30 = a3;
  v31 = a4;
  v32 = a5;
  v33 = a6;
  v34 = a1;
  v35 = a2;
  v38[1] = a3;
  v38[2] = a4;
  v20 = type metadata accessor for BuilderTuple();
  v21 = v27;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v23 = swift_getAssociatedConformanceWitness();
  v24 = *(a5 + 8);
  v37[1] = *(a6 + 8);
  v38[0] = v23;
  v36 = v37;
  v37[0] = v24;
  WitnessTable = swift_getWitnessTable();
  return GroupSeriesContent.init(_:_:content:)(v19, &v40, partial apply for closure #1 in static SeriesContentBuilder.buildBlock<A, B>(_:_:), v29, 1uLL, v21, &v39, v20, v28, AssociatedConformanceWitness, v38, WitnessTable);
}

uint64_t closure #1 in static SeriesContentBuilder.buildBlock<A, B>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v29 = a2;
  v30 = a6;
  v9 = *(a4 - 8);
  MEMORY[0x28223BE20](a1);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v29 - v13;
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v17);
  v19 = &v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v29 - v21;
  v24 = *(v23 + 8);
  static ChartContentBuilder.buildExpression<A>(_:)();
  v25 = *(a5 + 8);
  static ChartContentBuilder.buildExpression<A>(_:)();
  (*(v16 + 16))(v19, v22, a3);
  v34[0] = v19;
  (*(v9 + 16))(v11, v14, a4);
  v34[1] = v11;
  v33[0] = a3;
  v33[1] = a4;
  v31 = v24;
  v32 = v25;
  static ChartContentBuilder.buildBlock<each A>(_:)(v34, 2uLL, v33, v30);
  v26 = *(v9 + 8);
  v26(v14, a4);
  v27 = *(v16 + 8);
  v27(v22, a3);
  v26(v11, a4);
  return (v27)(v19, a3);
}

uint64_t GroupSeriesContent.init(_:_:content:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, void (*a3)(uint64_t)@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v14 = a5;
  v84 = a9;
  v85 = a2;
  v15 = a11;
  v87 = a10;
  v88 = a1;
  v81 = a4;
  v82 = a3;
  v76 = 8 * a5;
  if (a5 == 1)
  {
    TupleTypeMetadata = *(a7 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x28223BE20](a1);
    v20 = &v67 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v14)
    {
      v21 = 0;
      v22 = a7 & 0xFFFFFFFFFFFFFFFELL;
      if (v14 < 4)
      {
        goto LABEL_9;
      }

      if (&v20[-v22] < 0x20)
      {
        goto LABEL_9;
      }

      v21 = v14 & 0xFFFFFFFFFFFFFFFCLL;
      v23 = (v22 + 16);
      v24 = v20 + 16;
      v25 = v14 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v26 = *v23;
        *(v24 - 1) = *(v23 - 1);
        *v24 = v26;
        v23 += 2;
        v24 += 2;
        v25 -= 4;
      }

      while (v25);
      if (v21 != v14)
      {
LABEL_9:
        v27 = v14 - v21;
        v28 = 8 * v21;
        v29 = &v20[8 * v21];
        v30 = (v22 + v28);
        do
        {
          v31 = *v30++;
          *v29 = v31;
          v29 += 8;
          --v27;
        }

        while (v27);
      }
    }

    a8 = v18;
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v15 = a11;
  }

  v67 = TupleTypeMetadata;
  MEMORY[0x28223BE20](TupleTypeMetadata);
  v33 = &v67 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = &v67;
  v34 = *(a6 - 8);
  MEMORY[0x28223BE20](v35);
  v37 = &v67 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = v14;
  v90 = a6;
  v38 = v87;
  v91 = a7;
  v92 = v87;
  v93 = v15;
  v39 = type metadata accessor for GroupSeries(0, &v89);
  v78 = &v67;
  v73 = v39;
  v72 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v69 = &v67 - v40;
  v89 = v14;
  v90 = a6;
  v86 = a7;
  v91 = a7;
  v92 = a8;
  v93 = v38;
  v94 = v15;
  v80 = v15;
  v95 = a12;
  v41 = type metadata accessor for GroupSeriesContent(0, &v89);
  v75 = &v67;
  v70 = v41;
  v68 = *(v41 - 8);
  v42 = MEMORY[0x28223BE20](v41);
  v44 = &v67 - v43;
  v77 = v34;
  v45 = *(v34 + 16);
  v74 = v37;
  v83 = a6;
  v46 = v45(v37, v88, a6, v42);
  v71 = &v67;
  MEMORY[0x28223BE20](v46);
  v48 = (&v67 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (v14)
  {
    v49 = v85;
    v50 = (v86 & 0xFFFFFFFFFFFFFFFELL);
    v51 = (v67 + 32);
    v52 = (&v67 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0));
    v53 = v14;
    do
    {
      if (v14 == 1)
      {
        v54 = 0;
      }

      else
      {
        v54 = *v51;
      }

      v56 = *v50++;
      v55 = v56;
      v57 = &v33[v54];
      v58 = *v49++;
      (*(*(v55 - 8) + 16))(&v33[v54], v58);
      *v52++ = v57;
      v51 += 4;
      --v53;
    }

    while (v53);
  }

  v59 = v69;
  v60 = v83;
  v61 = v86;
  GroupSeries.init(_:_:)(v74, v48, v14, v83, v86, v87, v80, v69);
  v62 = (*(v72 + 32))(v44, v59, v73);
  v63 = v70;
  v82(v62);
  (*(v77 + 8))(v88, v60);
  result = (*(v68 + 32))(v84, v44, v63);
  if (v14)
  {
    v65 = (v61 & 0xFFFFFFFFFFFFFFFELL) - 8;
    v66 = v85 - 1;
    do
    {
      result = (*(*(*(v65 + 8 * v14) - 8) + 8))(v66[v14]);
      --v14;
    }

    while (v14);
  }

  return result;
}

uint64_t static SeriesContentBuilder.buildBlock<A, B, C>(_:_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a11)
{
  v34 = a6;
  v36 = a3;
  AssociatedConformanceWitness = a2;
  v38 = a9;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v17 = &v31 - v16;
  v32 = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](v32);
  v19 = &v31 - v18;
  v31 = swift_getAssociatedTypeWitness();
  v20 = MEMORY[0x28223BE20](v31);
  v37 = &v31 - v21;
  v22 = a1;
  (*(a7 + 40))(a4, a7, v20);
  v23 = AssociatedConformanceWitness;
  (*(a8 + 40))(a5, a8);
  v53[0] = v19;
  v24 = v36;
  v25 = v34;
  (*(a11 + 40))(v34, a11);
  v53[1] = v17;
  v40 = a4;
  v41 = a5;
  v42 = v25;
  v43 = a7;
  v44 = a8;
  v45 = a11;
  v46 = v22;
  v47 = v23;
  v48 = v24;
  v52[0] = v32;
  v52[1] = AssociatedTypeWitness;
  v51[2] = a4;
  v51[3] = a5;
  v51[4] = v25;
  v36 = type metadata accessor for BuilderTuple();
  v26 = v31;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v51[0] = swift_getAssociatedConformanceWitness();
  v51[1] = swift_getAssociatedConformanceWitness();
  v27 = *(a8 + 8);
  v50[0] = *(a7 + 8);
  v50[1] = v27;
  v50[2] = *(a11 + 8);
  v49 = v50;
  v28 = v36;
  WitnessTable = swift_getWitnessTable();
  return GroupSeriesContent.init(_:_:content:)(v37, v53, partial apply for closure #1 in static SeriesContentBuilder.buildBlock<A, B, C>(_:_:_:), v39, 2uLL, v26, v52, v28, v38, AssociatedConformanceWitness, v51, WitnessTable);
}

uint64_t closure #1 in static SeriesContentBuilder.buildBlock<A, B, C>(_:_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X7>, uint64_t a7@<X8>, uint64_t a8)
{
  v47 = a5;
  v48 = a3;
  v46 = a2;
  v50 = a7;
  v49 = *(a5 - 8);
  MEMORY[0x28223BE20](a1);
  v53 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v42 - v12;
  v15 = v14;
  v52 = *(v14 - 8);
  MEMORY[0x28223BE20](v16);
  v51 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v42 - v19;
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v23);
  v25 = &v42 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v28 = &v42 - v27;
  v44 = *(v29 + 8);
  static ChartContentBuilder.buildExpression<A>(_:)();
  v30 = *(a6 + 8);
  v43 = v20;
  v31 = v15;
  static ChartContentBuilder.buildExpression<A>(_:)();
  v32 = *(a8 + 8);
  v42 = v13;
  v33 = v47;
  static ChartContentBuilder.buildExpression<A>(_:)();
  v34 = *(v22 + 16);
  v45 = v25;
  v34(v25, v28, a4);
  v58[0] = v25;
  v35 = v51;
  (*(v52 + 16))(v51, v20, v31);
  v58[1] = v35;
  v36 = v49;
  v37 = v53;
  (*(v49 + 16))(v53, v13, v33);
  v58[2] = v37;
  v57[0] = a4;
  v57[1] = v31;
  v57[2] = v33;
  v54 = v44;
  v55 = v30;
  v56 = v32;
  static ChartContentBuilder.buildBlock<each A>(_:)(v58, 3uLL, v57, v50);
  v38 = *(v36 + 8);
  v38(v42, v33);
  v39 = *(v52 + 8);
  v39(v43, v31);
  v40 = *(v22 + 8);
  v40(v28, a4);
  v38(v53, v33);
  v39(v51, v31);
  return (v40)(v45, a4);
}

uint64_t static SeriesContentBuilder.buildBlock<A, B, C, D>(_:_:_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v54 = a8;
  v41 = a7;
  v46 = a4;
  v44 = a3;
  AssociatedConformanceWitness = a1;
  v52 = a2;
  v48 = a9;
  v50 = a13;
  v53 = a14;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v42 = &v38 - v16;
  v43 = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](v43);
  v18 = &v38 - v17;
  v39 = a6;
  v40 = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](v40);
  v20 = &v38 - v19;
  v21 = a5;
  v55 = swift_getAssociatedTypeWitness();
  v22 = MEMORY[0x28223BE20](v55);
  v47 = &v38 - v23;
  v49 = a11;
  (*(v49 + 40))(a5, v49, v22);
  (*(a12 + 40))(a6, a12);
  v60[0] = v20;
  v24 = v50;
  v25 = v44;
  v26 = v41;
  (*(v50 + 40))(v41, v50);
  v60[1] = v18;
  v28 = v53;
  v27 = v54;
  v29 = v42;
  v30 = v46;
  (*(v53 + 40))(v54, v53);
  v60[2] = v29;
  v56[2] = v21;
  v56[3] = v39;
  v56[4] = v26;
  v56[5] = v27;
  v56[6] = v49;
  v56[7] = a12;
  v56[8] = v24;
  v56[9] = v28;
  v56[10] = AssociatedConformanceWitness;
  v56[11] = v52;
  v56[12] = v25;
  v56[13] = v30;
  v59[0] = v40;
  v59[1] = v43;
  v59[2] = AssociatedTypeWitness;
  v58[3] = v21;
  v58[4] = v39;
  v58[5] = v26;
  v58[6] = v27;
  v52 = type metadata accessor for BuilderTuple();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v58[0] = swift_getAssociatedConformanceWitness();
  v31 = v50;
  v58[1] = swift_getAssociatedConformanceWitness();
  v32 = v53;
  v58[2] = swift_getAssociatedConformanceWitness();
  v33 = *(a12 + 8);
  v57[0] = *(v49 + 8);
  v57[1] = v33;
  v34 = *(v32 + 8);
  v57[2] = *(v31 + 8);
  v57[3] = v34;
  v56[15] = v57;
  v35 = v52;
  WitnessTable = swift_getWitnessTable();
  return GroupSeriesContent.init(_:_:content:)(v47, v60, partial apply for closure #1 in static SeriesContentBuilder.buildBlock<A, B, C, D>(_:_:_:_:), v56, 3uLL, v55, v59, v35, v48, AssociatedConformanceWitness, v58, WitnessTable);
}

uint64_t closure #1 in static SeriesContentBuilder.buildBlock<A, B, C, D>(_:_:_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v75 = a7;
  v70 = a4;
  v68 = a3;
  v65 = a2;
  v71 = a8;
  v69 = a12;
  v66 = a11;
  v78 = *(a7 - 8);
  MEMORY[0x28223BE20](a1);
  v77 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v58 - v16;
  v67 = *(v18 - 8);
  MEMORY[0x28223BE20](v19);
  v74 = &v58 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v58 - v22;
  v58 = v24;
  v76 = *(v24 - 8);
  MEMORY[0x28223BE20](v25);
  v72 = &v58 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v29 = &v58 - v28;
  v64 = *(v30 - 8);
  v31 = v64;
  MEMORY[0x28223BE20](v32);
  v73 = &v58 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v36 = &v58 - v35;
  v62 = *(v37 + 8);
  v63 = &v58 - v35;
  static ChartContentBuilder.buildExpression<A>(_:)();
  v60 = *(a10 + 8);
  v61 = v29;
  static ChartContentBuilder.buildExpression<A>(_:)();
  v66 = *(v66 + 8);
  static ChartContentBuilder.buildExpression<A>(_:)();
  v69 = *(v69 + 8);
  v38 = v17;
  v39 = v75;
  static ChartContentBuilder.buildExpression<A>(_:)();
  v40 = *(v31 + 16);
  v41 = v73;
  v42 = a5;
  v59 = a5;
  v40(v73, v36, a5);
  v84[0] = v41;
  v43 = v72;
  v44 = v58;
  (*(v76 + 16))(v72, v29, v58);
  v84[1] = v43;
  v45 = v67;
  v46 = v74;
  v47 = v23;
  (*(v67 + 16))(v74, v23, a6);
  v84[2] = v46;
  v49 = v77;
  v48 = v78;
  (*(v78 + 16))(v77, v38, v39);
  v84[3] = v49;
  v83[0] = v42;
  v83[1] = v44;
  v50 = v44;
  v83[2] = a6;
  v83[3] = v39;
  v79 = v62;
  v80 = v60;
  v81 = v66;
  v82 = v69;
  static ChartContentBuilder.buildBlock<each A>(_:)(v84, 4uLL, v83, v71);
  v51 = *(v48 + 8);
  v78 = v48 + 8;
  v51(v38, v39);
  v52 = *(v45 + 8);
  v53 = a6;
  v52(v47, a6);
  v54 = *(v76 + 8);
  v54(v61, v50);
  v55 = *(v64 + 8);
  v56 = v59;
  v55(v63, v59);
  v51(v77, v75);
  v52(v74, v53);
  v54(v72, v50);
  return (v55)(v73, v56);
}

uint64_t static SeriesContentBuilder.buildBlock<A, B, C, D, E>(_:_:_:_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v58 = a8;
  v59 = a1;
  v60 = a6;
  v54 = a5;
  v52 = a4;
  v65 = a3;
  AssociatedConformanceWitness = a2;
  v56 = a9;
  v68 = a15;
  v61 = a16;
  v64 = a17;
  v62 = a11;
  v66 = a12;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v50 = &v47 - v18;
  v51 = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](v51);
  v20 = &v47 - v19;
  v49 = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](v49);
  v22 = &v47 - v21;
  v48 = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](v48);
  v24 = &v47 - v23;
  v25 = v60;
  v67 = swift_getAssociatedTypeWitness();
  v26 = MEMORY[0x28223BE20](v67);
  v55 = &v47 - v27;
  v47 = a13;
  (*(v47 + 40))(v25, v47, v26);
  v57 = a14;
  (*(v57 + 40))(a7, v57);
  v73[0] = v24;
  v28 = v58;
  (*(v68 + 40))(v58);
  v73[1] = v22;
  v29 = v61;
  v30 = v62;
  v31 = v52;
  (*(v61 + 40))(v62, v61);
  v73[2] = v20;
  v32 = v64;
  v33 = v50;
  v34 = v54;
  v35 = v66;
  (*(v64 + 40))(v66, v64);
  v73[3] = v33;
  v69[2] = v60;
  v69[3] = a7;
  v36 = v28;
  v69[4] = v28;
  v69[5] = v30;
  v37 = v47;
  v69[6] = v35;
  v69[7] = v47;
  v69[8] = v57;
  v69[9] = v68;
  v69[10] = v29;
  v69[11] = v32;
  v69[12] = v59;
  v69[13] = AssociatedConformanceWitness;
  v69[14] = v65;
  v69[15] = v31;
  v69[16] = v34;
  v72[0] = v48;
  v72[1] = v49;
  v72[2] = v51;
  v72[3] = AssociatedTypeWitness;
  v71[4] = v60;
  v71[5] = a7;
  v71[6] = v36;
  v71[7] = v30;
  v71[8] = v35;
  v65 = type metadata accessor for BuilderTuple();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v38 = v57;
  v71[0] = swift_getAssociatedConformanceWitness();
  v39 = v68;
  v71[1] = swift_getAssociatedConformanceWitness();
  v40 = v61;
  v71[2] = swift_getAssociatedConformanceWitness();
  v41 = v64;
  v71[3] = swift_getAssociatedConformanceWitness();
  v42 = *(v38 + 8);
  v70[0] = *(v37 + 8);
  v70[1] = v42;
  v43 = *(v40 + 8);
  v70[2] = *(v39 + 8);
  v70[3] = v43;
  v70[4] = *(v41 + 8);
  v69[18] = v70;
  v44 = v65;
  WitnessTable = swift_getWitnessTable();
  return GroupSeriesContent.init(_:_:content:)(v55, v73, partial apply for closure #1 in static SeriesContentBuilder.buildBlock<A, B, C, D, E>(_:_:_:_:_:), v69, 4uLL, v67, v72, v44, v56, AssociatedConformanceWitness, v71, WitnessTable);
}

uint64_t closure #1 in static SeriesContentBuilder.buildBlock<A, B, C, D, E>(_:_:_:_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v85 = a5;
  v84 = a4;
  v82 = a3;
  v80 = a2;
  v86 = a7;
  v83 = a14;
  v81 = a13;
  v79 = a12;
  v90 = a8;
  v93 = a9;
  v97 = *(a9 - 8);
  MEMORY[0x28223BE20](a1);
  v95 = &v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v78 = &v68 - v17;
  v96 = *(v18 - 8);
  MEMORY[0x28223BE20](v19);
  v91 = &v68 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v68 - v22;
  v25 = v24;
  v94 = *(v24 - 8);
  MEMORY[0x28223BE20](v26);
  v89 = &v68 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v30 = &v68 - v29;
  v69 = v31;
  v92 = *(v31 - 8);
  MEMORY[0x28223BE20](v32);
  v87 = &v68 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v36 = &v68 - v35;
  v77 = *(v37 - 8);
  v38 = v77;
  MEMORY[0x28223BE20](v39);
  v88 = &v68 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41);
  v43 = &v68 - v42;
  v75 = *(v44 + 8);
  v76 = &v68 - v42;
  static ChartContentBuilder.buildExpression<A>(_:)();
  v73 = *(a11 + 8);
  v74 = v36;
  static ChartContentBuilder.buildExpression<A>(_:)();
  v80 = *(v79 + 8);
  v72 = v30;
  v45 = v25;
  static ChartContentBuilder.buildExpression<A>(_:)();
  v82 = *(v81 + 8);
  v70 = v23;
  v46 = v90;
  static ChartContentBuilder.buildExpression<A>(_:)();
  v84 = *(v83 + 8);
  v47 = v78;
  v48 = v93;
  static ChartContentBuilder.buildExpression<A>(_:)();
  v49 = *(v38 + 16);
  v50 = v88;
  v51 = v43;
  v52 = a6;
  v71 = a6;
  v49(v88, v51, a6);
  v104[0] = v50;
  v53 = v87;
  v54 = v69;
  (*(v92 + 16))(v87, v36, v69);
  v104[1] = v53;
  v55 = v89;
  v56 = v45;
  (*(v94 + 16))(v89, v30, v45);
  v104[2] = v55;
  v57 = v96;
  v58 = v91;
  (*(v96 + 16))(v91, v23, v46);
  v104[3] = v58;
  v59 = v97;
  v60 = v95;
  (*(v97 + 16))(v95, v47, v48);
  v104[4] = v60;
  v103[0] = v52;
  v103[1] = v54;
  v103[2] = v56;
  v103[3] = v46;
  v68 = v56;
  v103[4] = v48;
  v98 = v75;
  v99 = v73;
  v100 = v80;
  v101 = v82;
  v102 = v84;
  static ChartContentBuilder.buildBlock<each A>(_:)(v104, 5uLL, v103, v86);
  v61 = *(v59 + 8);
  v97 = v59 + 8;
  v61(v47, v48);
  v62 = *(v57 + 8);
  v96 = v57 + 8;
  v62(v70, v46);
  v63 = *(v94 + 8);
  v63(v72, v56);
  v64 = *(v92 + 8);
  v64(v74, v54);
  v65 = *(v77 + 8);
  v66 = v71;
  v65(v76, v71);
  v61(v95, v93);
  v62(v91, v90);
  v63(v89, v68);
  v64(v87, v54);
  return (v65)(v88, v66);
}

uint64_t static SeriesContentBuilder.buildOptional<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v5 = type metadata accessor for Optional();
  v6 = *(*(v5 - 8) + 16);

  return v6(a3, a1, v5);
}

uint64_t static SeriesContentBuilder.buildEither<A, B>(first:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v18 = a2;
  v19 = a3;
  v20 = a4;
  v21 = a5;
  v12 = type metadata accessor for ConditionalSeriesContent.Storage(0, &v18);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v18 - v14;
  (*(*(a2 - 8) + 16))(&v18 - v14, a1, a2, v13);
  swift_storeEnumTagMultiPayload();
  v18 = a2;
  v19 = a3;
  v20 = a4;
  v21 = a5;
  v16 = type metadata accessor for ConditionalSeriesContent.Storage(0, &v18);
  return (*(*(v16 - 8) + 32))(a6, v15, v16);
}

uint64_t static SeriesContentBuilder.buildEither<A, B>(second:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v18 = a2;
  v19 = a3;
  v20 = a4;
  v21 = a5;
  v12 = type metadata accessor for ConditionalSeriesContent.Storage(0, &v18);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v18 - v14;
  (*(*(a3 - 8) + 16))(&v18 - v14, a1, a3, v13);
  swift_storeEnumTagMultiPayload();
  v18 = a2;
  v19 = a3;
  v20 = a4;
  v21 = a5;
  v16 = type metadata accessor for ConditionalSeriesContent.Storage(0, &v18);
  return (*(*(v16 - 8) + 32))(a6, v15, v16);
}

uint64_t ConditionalSeries.xScale.getter(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 + 24);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](a1);
  v6 = &v21[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v7 + 16);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = &v21[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v13 = v8;
  *(&v13 + 1) = v3;
  v20 = *(v12 + 32);
  v21[0] = v13;
  v21[1] = v20;
  v14 = type metadata accessor for ConditionalSeries.Storage(0, v21);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v21[-1] - v16;
  (*(v18 + 16))(&v21[-1] - v16, v2, v14, v15);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v4 + 32))(v6, v17, v3);
    (*(*(&v20 + 1) + 32))(v3);
    return (*(v4 + 8))(v6, v3);
  }

  else
  {
    (*(v9 + 32))(v11, v17, v8);
    (*(v20 + 32))(v8);
    return (*(v9 + 8))(v11, v8);
  }
}

uint64_t ConditionalSeries.yScale.getter(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 + 24);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](a1);
  v6 = &v22[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v7 + 16);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = &v22[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v13 = v8;
  *(&v13 + 1) = v3;
  v21 = *(v12 + 32);
  v22[0] = v13;
  v22[1] = v21;
  v14 = type metadata accessor for ConditionalSeries.Storage(0, v22);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v22[-1] - v16;
  (*(v18 + 16))(&v22[-1] - v16, v2, v14, v15);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v4 + 32))(v6, v17, v3);
    v19 = (*(*(&v21 + 1) + 40))(v3);
    (*(v4 + 8))(v6, v3);
  }

  else
  {
    (*(v9 + 32))(v11, v17, v8);
    v19 = (*(v21 + 40))(v8);
    (*(v9 + 8))(v11, v8);
  }

  return v19;
}

uint64_t ConditionalSeries.aggregation.getter(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 + 24);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](a1);
  v6 = &v21[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v7 + 16);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = &v21[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v13 = v8;
  *(&v13 + 1) = v3;
  v20 = *(v12 + 32);
  v21[0] = v13;
  v21[1] = v20;
  v14 = type metadata accessor for ConditionalSeries.Storage(0, v21);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v21[-1] - v16;
  (*(v18 + 16))(&v21[-1] - v16, v2, v14, v15);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v4 + 32))(v6, v17, v3);
    (*(*(&v20 + 1) + 48))(v3);
    return (*(v4 + 8))(v6, v3);
  }

  else
  {
    (*(v9 + 32))(v11, v17, v8);
    (*(v20 + 48))(v8);
    return (*(v9 + 8))(v11, v8);
  }
}

uint64_t ConditionalSeries.unit.getter(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 + 24);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](a1);
  v6 = &v21[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v7 + 16);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = &v21[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v13 = v8;
  *(&v13 + 1) = v3;
  v20 = *(v12 + 32);
  v21[0] = v13;
  v21[1] = v20;
  v14 = type metadata accessor for ConditionalSeries.Storage(0, v21);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v21[-1] - v16;
  (*(v18 + 16))(&v21[-1] - v16, v2, v14, v15);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v4 + 32))(v6, v17, v3);
    (*(*(&v20 + 1) + 56))(v3);
    return (*(v4 + 8))(v6, v3);
  }

  else
  {
    (*(v9 + 32))(v11, v17, v8);
    (*(v20 + 56))(v8);
    return (*(v9 + 8))(v11, v8);
  }
}

uint64_t ConditionalSeriesContent.data.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v2 = *(a1 + 24);
  v30 = *(v2 - 8);
  MEMORY[0x28223BE20](a1);
  v4 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v5 + 16);
  v38 = *(v5 + 32);
  v7 = v38;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(&v38 + 1);
  v10 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v12 = swift_getAssociatedConformanceWitness();
  v34 = AssociatedTypeWitness;
  v35 = v10;
  *&v39 = AssociatedTypeWitness;
  *(&v39 + 1) = v10;
  v36 = AssociatedConformanceWitness;
  *&v40 = AssociatedConformanceWitness;
  *(&v40 + 1) = v12;
  v33 = v12;
  v31 = type metadata accessor for ConditionalSeries.Storage(0, &v39);
  MEMORY[0x28223BE20](v31);
  v14 = &v30 - v13;
  v15 = *(v6 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v19 = v6;
  *(&v19 + 1) = v2;
  v39 = v19;
  v40 = v38;
  v20 = type metadata accessor for ConditionalSeriesContent.Storage(0, &v39);
  v21 = MEMORY[0x28223BE20](v20);
  v23 = &v30 - v22;
  (*(v24 + 16))(&v30 - v22, v32, v20, v21);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v25 = v30;
    (*(v30 + 32))(v4, v23, v2);
    (*(v9 + 40))(v2, v9);
    (*(v25 + 8))(v4, v2);
  }

  else
  {
    (*(v15 + 32))(v18, v23, v6);
    (*(v7 + 40))(v6, v7);
    (*(v15 + 8))(v18, v6);
  }

  swift_storeEnumTagMultiPayload();
  v26 = swift_checkMetadataState();
  v27 = swift_checkMetadataState();
  *&v39 = v26;
  *(&v39 + 1) = v27;
  *&v40 = v36;
  *(&v40 + 1) = v33;
  v28 = type metadata accessor for ConditionalSeries.Storage(0, &v39);
  return (*(*(v28 - 8) + 32))(v37, v14, v28);
}

uint64_t ConditionalSeriesContent.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a2;
  v2 = *(a1 + 24);
  v43 = *(v2 - 8);
  MEMORY[0x28223BE20](a1);
  v42 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v41 = &v40 - v5;
  MEMORY[0x28223BE20](v6);
  v40 = &v40 - v7;
  v9 = *(v8 + 16);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v8);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v40 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v40 - v17;
  *&v20 = v9;
  *(&v20 + 1) = v2;
  v48 = *(v19 + 32);
  v51[0] = v20;
  v51[1] = v48;
  v21 = type metadata accessor for ConditionalSeriesContent.Storage(0, v51);
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = &v40 - v23;
  v25 = type metadata accessor for BuilderConditional();
  v26 = *(v25 - 8);
  v45 = v25;
  v46 = v26;
  v27 = MEMORY[0x28223BE20](v25);
  v29 = &v40 - v28;
  (*(v22 + 16))(v24, v44, v21, v27);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v30 = v43;
    v31 = v40;
    (*(v43 + 32))(v40, v24, v2);
    v32 = *(*(&v48 + 1) + 8);
    v33 = v41;
    static ChartContentBuilder.buildExpression<A>(_:)();
    v34 = v42;
    static ChartContentBuilder.buildExpression<A>(_:)();
    v35 = *(v48 + 8);
    static ChartContentBuilder.buildEither<A, B>(second:)(v34, v9, v2);
    v36 = *(v30 + 8);
    v36(v34, v2);
    v36(v33, v2);
    v36(v31, v2);
  }

  else
  {
    (*(v10 + 32))(v18, v24, v9);
    v35 = *(v48 + 8);
    static ChartContentBuilder.buildExpression<A>(_:)();
    static ChartContentBuilder.buildExpression<A>(_:)();
    v32 = *(*(&v48 + 1) + 8);
    static ChartContentBuilder.buildEither<A, B>(first:)(v12, v9, v2);
    v37 = *(v10 + 8);
    v37(v12, v9);
    v37(v15, v9);
    v37(v18, v9);
  }

  v49 = v35;
  v50 = v32;
  v38 = v45;
  swift_getWitnessTable();
  static ChartContentBuilder.buildExpression<A>(_:)();
  return (*(v46 + 8))(v29, v38);
}

uint64_t GroupSeries.computeXScale(_:_:)@<X0>(void *a1@<X1>, void *a2@<X2>, char *a3@<X8>)
{
  v7 = a2[5];
  v8 = a2[3];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v121 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v91 = &v83 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v90 = &v83 - v12;
  v13 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](v14);
  v96 = &v83 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v95 = &v83 - v17;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v97 = AssociatedTypeWitness;
  v94 = AssociatedConformanceWitness;
  v19 = type metadata accessor for ClosedRange();
  v108 = type metadata accessor for Optional();
  v20 = *(v108 - 8);
  MEMORY[0x28223BE20](v108);
  v89 = &v83 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v103 = &v83 - v23;
  MEMORY[0x28223BE20](v24);
  v104 = (&v83 - v25);
  v105 = v19;
  v26 = *(v19 - 8);
  MEMORY[0x28223BE20](v27);
  v93 = &v83 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v29);
  v102 = &v83 - v31;
  v32 = *(v7 + 32);
  v111 = a3;
  result = v32(v8, v7, v30);
  v34 = a2[2];
  if (!v34)
  {
    return result;
  }

  v35 = (a2[4] & 0xFFFFFFFFFFFFFFFELL);
  v36 = (a2[6] & 0xFFFFFFFFFFFFFFFELL);
  v106 = (v26 + 56);
  v107 = (v26 + 32);
  v100 = (v20 + 16);
  v99 = (v26 + 48);
  v88 = (v26 + 8);
  v101 = (v20 + 8);
  v87 = (v13 + 32);
  v86 = (v121 + 16);
  v85 = (v13 + 8);
  v84 = (v121 + 32);
  v83 = (v20 + 32);
  while (1)
  {
    v116 = v35;
    v117 = v34;
    v114 = &v83;
    v115 = v36;
    v37 = *v35;
    v38 = *v36;
    v39 = MEMORY[0x28223BE20](result);
    v41 = &v83 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
    v118 = a1;
    v42 = *a1;
    v120 = v43;
    (*(v43 + 16))(v41, v42, v37, v39);
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    v44 = type metadata accessor for ClosedRange();
    v113 = &v83;
    v121 = *(v44 - 8);
    MEMORY[0x28223BE20](v44);
    v112 = v45;
    v46 = &v83 - v45;
    v47 = type metadata accessor for Optional();
    v119 = &v83;
    v48 = *(v47 - 8);
    v49 = MEMORY[0x28223BE20](v47);
    v51 = &v83 - v50;
    v52 = *(v38 + 32);
    v53 = v38;
    v54 = v121;
    v52(v37, v53, v49);
    if ((*(v54 + 48))(v51, 1, v44) != 1)
    {
      break;
    }

    (*(v120 + 8))(v41, v37);
    result = (*(v48 + 8))(v51, v47);
LABEL_4:
    a1 = v118 + 1;
    v36 = v115 + 1;
    v35 = v116 + 1;
    v34 = v117 - 1;
    if (v117 == 1)
    {
      return result;
    }
  }

  v109 = v41;
  v110 = v37;
  v55 = (*(v54 + 32))(v46, v51, v44);
  v56 = MEMORY[0x28223BE20](v55);
  v57 = *(v54 + 16);
  v119 = v46;
  v57(&v83 - v112, v46, v44, v56);
  v58 = v104;
  v59 = v105;
  v60 = v44;
  v61 = swift_dynamicCast();
  v62 = *v106;
  if (!v61)
  {
    goto LABEL_13;
  }

  v62(v58, 0, 1, v59);
  v63 = *v107;
  v64 = v102;
  (*v107)(v102, v58, v59);
  v65 = v103;
  v66 = v108;
  (*v100)(v103, v111, v108);
  v67 = (*v99)(v65, 1, v59);
  v68 = v110;
  if (v67 == 1)
  {
    (*(v121 + 8))(v119, v60);
    (*(v120 + 8))(v109, v68);
    v69 = *v101;
    v70 = v111;
    (*v101)(v111, v66);
    v69(v65, v66);
    v63(v70, v64, v59);
    result = (v62)(v70, 0, 1, v59);
    goto LABEL_4;
  }

  v98 = v62;
  v71 = v93;
  v63(v93, v65, v59);
  v72 = v64;
  v73 = v95;
  v62 = v66;
  v74 = v97;
  min<A>(_:_:)();
  v75 = v96;
  max<A>(_:_:)();
  LODWORD(v112) = dispatch thunk of static Comparable.<= infix(_:_:)();
  v58 = *v88;
  (*v88)(v71, v59);
  v58(v72, v59);
  (*(v121 + 8))(v119, v60);
  (*(v120 + 8))(v109, v110);
  (*v101)(v111, v62);
  if (v112)
  {
    v76 = *v87;
    v77 = v73;
    v78 = v90;
    (*v87)(v90, v77, v74);
    v79 = TupleTypeMetadata2;
    v76(&v78[*(TupleTypeMetadata2 + 48)], v75, v74);
    v80 = v91;
    (*v86)(v91, v78, v79);
    v121 = *(v79 + 48);
    v81 = v89;
    v76(v89, v80, v74);
    v82 = *v85;
    (*v85)(&v80[v121], v74);
    (*v84)(v80, v78, v79);
    v76(&v81[*(v59 + 36)], &v80[*(v79 + 48)], v74);
    v82(v80, v74);
    v98(v81, 0, 1, v59);
    result = (*v83)(v111, v81, v108);
    goto LABEL_4;
  }

  __break(1u);
LABEL_13:
  v62(v58, 1, 1, v59);
  (*v101)(v58, v108);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t GroupSeries.yScale.getter(uint64_t TupleTypeMetadata)
{
  v2 = v1;
  v3 = TupleTypeMetadata;
  v4 = *(TupleTypeMetadata + 16);
  v5 = 8 * v4;
  if (v4 == 1)
  {
    v6 = *(*(TupleTypeMetadata + 32) & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x28223BE20](TupleTypeMetadata);
    v7 = v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v4)
    {
      v8 = 0;
      v9 = *(v3 + 32) & 0xFFFFFFFFFFFFFFFELL;
      if (v4 < 4)
      {
        goto LABEL_9;
      }

      if (&v7[-v9] < 0x20)
      {
        goto LABEL_9;
      }

      v8 = v4 & 0xFFFFFFFFFFFFFFFCLL;
      v10 = (v9 + 16);
      v11 = v7 + 16;
      v12 = v4 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v13 = *v10;
        *(v11 - 1) = *(v10 - 1);
        *v11 = v13;
        v10 += 2;
        v11 += 2;
        v12 -= 4;
      }

      while (v12);
      if (v4 != v8)
      {
LABEL_9:
        v14 = v4 - v8;
        v15 = 8 * v8;
        v16 = &v7[8 * v8];
        v17 = (v9 + v15);
        do
        {
          v18 = *v17++;
          *v16 = v18;
          v16 += 8;
          --v14;
        }

        while (v14);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = TupleTypeMetadata;
  }

  v19 = *(v6 - 8);
  MEMORY[0x28223BE20](TupleTypeMetadata);
  v21 = v50 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = v50;
  MEMORY[0x28223BE20](v22);
  v24 = v50 - v23;
  v53 = v50;
  v26 = MEMORY[0x28223BE20](v25);
  v28 = v50 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = v30;
  v52 = v29;
  v31 = (*(v30 + 16))(v28, v2, v26);
  v50[1] = v50;
  v32 = MEMORY[0x28223BE20](v31);
  v33 = (v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v34 = *(v3 + 60);
  v55 = v19;
  v35 = *(v19 + 16);
  v58 = v6;
  v35(v21, v2 + v34, v6, v32);
  v36 = *(v3 + 32);
  v56 = v3;
  v57 = v36;
  if (v4)
  {
    v37 = (v57 & 0xFFFFFFFFFFFFFFFELL);
    v38 = (v58 + 32);
    v39 = (v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
    v40 = v4;
    do
    {
      if (v4 == 1)
      {
        v41 = 0;
        v42 = v24;
      }

      else
      {
        v41 = *v38;
        v42 = &v24[v41];
      }

      v43 = *v37++;
      (*(*(v43 - 8) + 16))(v42, &v21[v41]);
      *v39++ = v42;
      v38 += 4;
      --v40;
    }

    while (v40);
  }

  v44 = v4;
  v45 = v52;
  v46 = specialized GroupSeries.computeYScale(_:_:)(v28, v33, v44, v52, v57, *(v56 + 40), *(v56 + 48));
  (*(v51 + 8))(v28, v45);
  v47 = *(v55 + 8);
  v48 = v58;
  v47(v24, v58);
  v47(v21, v48);
  return v46;
}

uint64_t GroupSeries.computeAggregation(_:_:)@<X0>(void *a1@<X1>, void *a2@<X2>, uint64_t a3@<X8>)
{
  v34 = a3;
  v39 = type metadata accessor for HealthChartsData.Aggregation();
  v5 = *(v39 - 8);
  v6 = v5;
  MEMORY[0x28223BE20](v39);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v32 = &v32 - v10;
  _s16HealthChartsCore0aB4UnitVSgMaTm_2(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<HealthChartsData.Aggregation>, MEMORY[0x277D10228], MEMORY[0x277D84560]);
  v11 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v37 = *(v5 + 72);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_25145AB10;
  v13 = *(a2[5] + 48);
  v14 = a2[3];
  v38 = v11;
  v15 = v13(v14);
  v16 = a2[2];
  v33 = v6;
  if (v16)
  {
    v17 = (a2[4] & 0xFFFFFFFFFFFFFFFELL);
    v18 = (a2[6] & 0xFFFFFFFFFFFFFFFELL);
    v35 = (v6 + 32);
    v36 = v8;
    do
    {
      v40 = &v32;
      v19 = *v17;
      v20 = *v18;
      v21 = *(*v17 - 8);
      v22 = MEMORY[0x28223BE20](v15);
      v24 = &v32 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
      v41 = a1;
      (*(v21 + 16))(v24, *a1, v19, v22);
      (*(v20 + 48))(v19, v20);
      v26 = *(v12 + 16);
      v25 = *(v12 + 24);
      v27 = v12;
      if (v26 >= v25 >> 1)
      {
        v27 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), v26 + 1, 1, v12);
      }

      (*(v21 + 8))(v24, v19);
      v12 = v27;
      *(v27 + 2) = v26 + 1;
      v15 = (*v35)(&v27[v38 + v26 * v37], v36, v39);
      a1 = v41 + 1;
      ++v18;
      ++v17;
      --v16;
    }

    while (v16);
  }

  v42 = v12;

  specialized MutableCollection<>.sort(by:)(implicit closure #1 in GroupSeries.computeAggregation(_:_:), 0);

  v28 = v33;
  if (*(v42 + 16))
  {
    v29 = v39;
    v30 = v32;
    (*(v33 + 16))(v32, v42 + v38, v39);

    return (*(v28 + 32))(v34, v30, v29);
  }

  else
  {

    return (*(v28 + 104))(v34, *MEMORY[0x277D10200], v39);
  }
}

uint64_t GroupSeries.xScale.getter@<X0>(uint64_t TupleTypeMetadata@<X0>, void (*a2)(char *, char *, uint64_t)@<X1>, uint64_t a3@<X8>)
{
  v4 = TupleTypeMetadata;
  v5 = *(TupleTypeMetadata + 16);
  v6 = 8 * v5;
  v55 = a2;
  v53 = a3;
  if (v5 == 1)
  {
    v7 = *(*(TupleTypeMetadata + 32) & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x28223BE20](TupleTypeMetadata);
    v8 = v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v5)
    {
      v9 = 0;
      v10 = *(v4 + 32) & 0xFFFFFFFFFFFFFFFELL;
      if (v5 < 4)
      {
        goto LABEL_9;
      }

      if (&v8[-v10] < 0x20)
      {
        goto LABEL_9;
      }

      v9 = v5 & 0xFFFFFFFFFFFFFFFCLL;
      v11 = (v10 + 16);
      v12 = v8 + 16;
      v13 = v5 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v14 = *v11;
        *(v12 - 1) = *(v11 - 1);
        *v12 = v14;
        v11 += 2;
        v12 += 2;
        v13 -= 4;
      }

      while (v13);
      if (v5 != v9)
      {
LABEL_9:
        v15 = v5 - v9;
        v16 = 8 * v9;
        v17 = &v8[8 * v9];
        v18 = (v10 + v16);
        do
        {
          v19 = *v18++;
          *v17 = v19;
          v17 += 8;
          --v15;
        }

        while (v15);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v7 = TupleTypeMetadata;
  }

  v20 = *(v7 - 8);
  MEMORY[0x28223BE20](TupleTypeMetadata);
  v22 = v47 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = v47;
  MEMORY[0x28223BE20](v23);
  v25 = v47 - v24;
  v50 = v47;
  v27 = MEMORY[0x28223BE20](v26);
  v29 = v47 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = v31;
  v49 = v30;
  v32 = (*(v31 + 16))(v29, v3, v27);
  v47[1] = v47;
  v33 = MEMORY[0x28223BE20](v32);
  v34 = v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = v7;
  v57 = v4;
  v35 = *(v4 + 60);
  v52 = v20;
  v36 = *(v20 + 16);
  v54 = v3;
  v36(v22, v3 + v35, v7, v33);
  if (v5)
  {
    v37 = (*(v57 + 32) & 0xFFFFFFFFFFFFFFFELL);
    v38 = (v56 + 32);
    v39 = (v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
    v40 = v5;
    do
    {
      if (v5 == 1)
      {
        v41 = 0;
        v42 = v25;
      }

      else
      {
        v41 = *v38;
        v42 = &v25[v41];
      }

      v43 = *v37++;
      (*(*(v43 - 8) + 16))(v42, &v22[v41]);
      *v39++ = v42;
      v38 += 4;
      --v40;
    }

    while (v40);
  }

  v55(v29, v34, v57);
  (*(v48 + 8))(v29, v49);
  v44 = *(v52 + 8);
  v45 = v56;
  v44(v25, v56);
  return (v44)(v22, v45);
}

uint64_t GroupSeries.computeUnit(_:_:)@<X0>(void *a1@<X1>, void *a2@<X2>, uint64_t a3@<X8>)
{
  v49 = a3;
  v57 = *MEMORY[0x277D85DE8];
  v5 = type metadata accessor for HealthChartsUnit();
  v47 = *(v5 - 8);
  v48 = v5;
  MEMORY[0x28223BE20](v5);
  v52 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsUnit?(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v54 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v50 = &v46 - v11;
  MEMORY[0x28223BE20](v12);
  v51 = &v46 - v13;
  _s16HealthChartsCore0aB4UnitVSgMaTm_2(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<HealthChartsUnit?>, type metadata accessor for HealthChartsUnit?, MEMORY[0x277D84560]);
  v14 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v56 = *(v8 + 72);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_25145AB10;
  v16 = *(a2[5] + 56);
  v17 = a2[3];
  v53 = v14;
  v18 = v16(v17);
  v19 = a2[2];
  if (v19)
  {
    v20 = (a2[4] & 0xFFFFFFFFFFFFFFFELL);
    v21 = (a2[6] & 0xFFFFFFFFFFFFFFFELL);
    do
    {
      v55 = &v46;
      v22 = *v20;
      v23 = *v21;
      v24 = *(*v20 - 8);
      v25 = MEMORY[0x28223BE20](v18);
      v27 = &v46 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v24 + 16))(v27, *a1, v22, v25);
      (*(v23 + 56))(v22, v23);
      v29 = *(v15 + 16);
      v28 = *(v15 + 24);
      v30 = v15;
      if (v29 >= v28 >> 1)
      {
        v30 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v29 + 1, 1, v15);
      }

      (*(v24 + 8))(v27, v22);
      v30[2] = v29 + 1;
      v15 = v30;
      v18 = outlined init with take of HealthChartsUnit?(v54, v30 + v53 + v29 * v56);
      ++a1;
      ++v21;
      ++v20;
      --v19;
    }

    while (v19);
  }

  v31 = *(v15 + 16);
  if (v31)
  {
    v55 = v15;
    v32 = v15 + v53;
    v34 = v47;
    v33 = v48;
    v35 = (v47 + 48);
    v36 = (v47 + 32);
    v37 = MEMORY[0x277D84F90];
    v38 = v50;
    do
    {
      v39 = v51;
      outlined init with copy of HealthChartsUnit?(v32, v51);
      outlined init with take of HealthChartsUnit?(v39, v38);
      if ((*v35)(v38, 1, v33) == 1)
      {
        outlined destroy of HealthChartsUnit?(v38);
      }

      else
      {
        v40 = *v36;
        (*v36)(v52, v38, v33);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v37 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v37 + 2) + 1, 1, v37);
        }

        v42 = *(v37 + 2);
        v41 = *(v37 + 3);
        if (v42 >= v41 >> 1)
        {
          v37 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v41 > 1), v42 + 1, 1, v37);
        }

        *(v37 + 2) = v42 + 1;
        v40(&v37[((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v42], v52, v33);
        v38 = v50;
      }

      v32 += v56;
      --v31;
    }

    while (v31);
  }

  else
  {

    v37 = MEMORY[0x277D84F90];
    v34 = v47;
    v33 = v48;
  }

  v43 = v49;
  if (*(v37 + 2))
  {
    (*(v34 + 16))(v49, &v37[(*(v34 + 80) + 32) & ~*(v34 + 80)], v33);
    v44 = 0;
  }

  else
  {
    v44 = 1;
  }

  return (*(v34 + 56))(v43, v44, 1, v33);
}

uint64_t GroupSeries.init(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v12 = a3;
  v55 = a2;
  v53 = a8;
  if (a3 == 1)
  {
    TupleTypeMetadata = *(a5 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x28223BE20](a1);
    v16 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v12)
    {
      v17 = 0;
      v18 = a5 & 0xFFFFFFFFFFFFFFFELL;
      if (v12 < 4)
      {
        goto LABEL_9;
      }

      if (&v16[-v18] < 0x20)
      {
        goto LABEL_9;
      }

      v17 = v12 & 0xFFFFFFFFFFFFFFFCLL;
      v19 = (v18 + 16);
      v20 = v16 + 16;
      v21 = v12 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v22 = *v19;
        *(v20 - 1) = *(v19 - 1);
        *v20 = v22;
        v19 += 2;
        v20 += 2;
        v21 -= 4;
      }

      while (v21);
      if (v17 != v12)
      {
LABEL_9:
        v23 = v12 - v17;
        v24 = 8 * v17;
        v25 = &v16[8 * v17];
        v26 = (v18 + v24);
        do
        {
          v27 = *v26++;
          *v25 = v27;
          v25 += 8;
          --v23;
        }

        while (v23);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
  }

  v56 = TupleTypeMetadata;
  v49 = *(TupleTypeMetadata - 8);
  MEMORY[0x28223BE20](TupleTypeMetadata);
  v29 = &v48 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57[0] = v12;
  v57[1] = a4;
  v54 = a5;
  v57[2] = a5;
  v57[3] = a6;
  v57[4] = a7;
  v30 = type metadata accessor for GroupSeries(0, v57);
  v50 = &v48;
  v31 = *(v30 - 8);
  v32 = MEMORY[0x28223BE20](v30);
  v34 = &v48 - v33;
  v35 = *(a4 - 8);
  v36 = *(v35 + 16);
  v51 = a1;
  v52 = a4;
  v36(&v48 - v33, a1, a4, v32);
  if (v12)
  {
    v37 = v55;
    v38 = (v54 & 0xFFFFFFFFFFFFFFFELL);
    v39 = (v56 + 32);
    v40 = v12;
    do
    {
      if (v12 == 1)
      {
        v41 = 0;
      }

      else
      {
        v41 = *v39;
      }

      v43 = *v38++;
      v42 = v43;
      v44 = *v37++;
      (*(*(v42 - 8) + 16))(&v29[v41], v44);
      v39 += 4;
      --v40;
    }

    while (v40);
  }

  (*(v35 + 8))(v51, v52);
  (*(v49 + 32))(&v34[*(v30 + 60)], v29, v56);
  result = (*(v31 + 32))(v53, v34, v30);
  if (v12)
  {
    v46 = (v54 & 0xFFFFFFFFFFFFFFFELL) - 8;
    v47 = v55 - 1;
    do
    {
      result = (*(*(*(v46 + 8 * v12) - 8) + 8))(v47[v12]);
      --v12;
    }

    while (v12);
  }

  return result;
}

uint64_t GroupSeriesContent.body.getter(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](a1);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  static ChartContentBuilder.buildExpression<A>(_:)();
  static ChartContentBuilder.buildExpression<A>(_:)();
  return (*(v2 + 8))(v4, v1);
}

uint64_t protocol witness for SeriesContent.data.getter in conformance GroupSeriesContent<A, Pack{repeat B}, C>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v7 = *(a1 + 16);
  v4 = *(a1 + 48);
  v8 = *(a1 + 24);
  v9 = v4;
  v5 = type metadata accessor for GroupSeries(0, &v7);
  return (*(*(v5 - 8) + 16))(a2, v2, v5);
}

uint64_t Optional<A>.wrappedSeries.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = MEMORY[0x28223BE20](a1);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6, v4);
  v8 = *(a1 + 16);
  v9 = *(v8 - 8);
  v10 = 1;
  if ((*(v9 + 48))(v6, 1, v8) != 1)
  {
    (*(v9 + 32))(a2, v6, v8);
    v10 = 0;
  }

  return (*(v9 + 56))(a2, v10, 1, v8);
}

uint64_t Optional<A>.xScale.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1 - 8);
  MEMORY[0x28223BE20](a1);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  Optional<A>.wrappedSeries.getter(v9, v8);
  v10 = *(a1 + 16);
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) == 1)
  {
    (*(v6 + 8))(v8, a1);
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    v12 = type metadata accessor for ClosedRange();
    return (*(*(v12 - 8) + 56))(a3, 1, 1, v12);
  }

  else
  {
    (*(a2 + 32))(v10, a2);
    return (*(v11 + 8))(v8, v10);
  }
}

uint64_t Optional<A>.yScale.getter(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = *(a1 - 8);
  MEMORY[0x28223BE20](a1);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  Optional<A>.wrappedSeries.getter(v7, v6);
  v8 = *(v3 + 16);
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v6, 1, v8) == 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = (*(a2 + 40))(v8, a2);
    v4 = v9;
    v3 = v8;
  }

  (*(v4 + 8))(v6, v3);
  return v10;
}

uint64_t Optional<A>.aggregation.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v16 = a3;
  v5 = *(a1 - 8);
  MEMORY[0x28223BE20](a1);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for HealthChartsData.Aggregation();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  Optional<A>.wrappedSeries.getter(a1, v7);
  v12 = *(a1 + 16);
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v7, 1, v12) == 1)
  {
    (*(v5 + 8))(v7, a1);
    return (*(v9 + 104))(v16, *MEMORY[0x277D10200], v8);
  }

  else
  {
    (*(a2 + 48))(v12, a2);
    (*(v13 + 8))(v7, v12);
    return (*(v9 + 32))(v16, v11, v8);
  }
}

uint64_t Optional<A>.unit.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1 - 8);
  MEMORY[0x28223BE20](a1);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  Optional<A>.wrappedSeries.getter(v9, v8);
  v10 = *(a1 + 16);
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) == 1)
  {
    (*(v6 + 8))(v8, a1);
    v12 = type metadata accessor for HealthChartsUnit();
    return (*(*(v12 - 8) + 56))(a3, 1, 1, v12);
  }

  else
  {
    (*(a2 + 56))(v10, a2);
    return (*(v11 + 8))(v8, v10);
  }
}

uint64_t Optional<A>.data.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 16);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](a1);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12, v14, v10);
  v15 = 1;
  if ((*(v6 + 48))(v12, 1, v5) != 1)
  {
    (*(v6 + 32))(v8, v12, v5);
    (*(a2 + 40))(v5, a2);
    (*(v6 + 8))(v8, v5);
    v15 = 0;
  }

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  return (*(*(AssociatedTypeWitness - 8) + 56))(a3, v15, 1, AssociatedTypeWitness);
}

uint64_t instantiation function for generic protocol witness table for <A> A?(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2514274BC(uint64_t *a1, __n128 a2)
{
  v2 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = swift_getAssociatedTypeWitness();
  v14[1] = v2;
  v14[2] = v3;
  v7 = type metadata accessor for BuilderTuple();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v9 = swift_getAssociatedConformanceWitness();
  v10 = *(v5 + 8);
  v13[1] = *(v4 + 8);
  v14[0] = v9;
  v12[7] = v13;
  v13[0] = v10;
  v12[0] = 1;
  v12[1] = AssociatedTypeWitness;
  v12[2] = &v15;
  v12[3] = v7;
  v12[4] = AssociatedConformanceWitness;
  v12[5] = v14;
  v12[6] = swift_getWitnessTable();
  type metadata accessor for GroupSeriesContent(255, v12);
  return swift_getWitnessTable();
}

uint64_t sub_251427638(uint64_t *a1, __n128 a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v7 = a1[4];
  v6 = a1[5];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16[0] = swift_getAssociatedTypeWitness();
  v16[1] = swift_getAssociatedTypeWitness();
  v15[2] = v3;
  v15[3] = v2;
  v15[4] = v5;
  v11 = type metadata accessor for BuilderTuple();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v15[0] = swift_getAssociatedConformanceWitness();
  v15[1] = swift_getAssociatedConformanceWitness();
  v8 = *(v7 + 8);
  v14[0] = *(v4 + 8);
  v14[1] = v8;
  v14[2] = *(v6 + 8);
  v13[7] = v14;
  v13[0] = 2;
  v13[1] = AssociatedTypeWitness;
  v13[2] = v16;
  v13[3] = v11;
  v13[4] = AssociatedConformanceWitness;
  v13[5] = v15;
  v13[6] = swift_getWitnessTable();
  type metadata accessor for GroupSeriesContent(255, v13);
  return swift_getWitnessTable();
}

uint64_t sub_2514277F8(uint64_t *a1, __n128 a2)
{
  v2 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v6 = a1[5];
  v11 = a1[6];
  v12 = a1[4];
  v10 = a1[7];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v18[0] = swift_getAssociatedTypeWitness();
  v18[1] = swift_getAssociatedTypeWitness();
  v18[2] = swift_getAssociatedTypeWitness();
  v17[3] = v2;
  v17[4] = v3;
  v17[5] = v5;
  v17[6] = v4;
  v13 = type metadata accessor for BuilderTuple();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v17[0] = swift_getAssociatedConformanceWitness();
  v17[1] = swift_getAssociatedConformanceWitness();
  v17[2] = swift_getAssociatedConformanceWitness();
  v7 = *(v6 + 8);
  v16[0] = *(v12 + 8);
  v16[1] = v7;
  v16[2] = *(v11 + 8);
  v16[3] = *(v10 + 8);
  v15[7] = v16;
  v15[0] = 3;
  v15[1] = AssociatedTypeWitness;
  v15[2] = v18;
  v15[3] = v13;
  v15[4] = AssociatedConformanceWitness;
  v15[5] = v17;
  v15[6] = swift_getWitnessTable();
  type metadata accessor for GroupSeriesContent(255, v15);
  return swift_getWitnessTable();
}

uint64_t sub_251427A14(uint64_t *a1, __n128 a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v15 = a1[4];
  v10 = a1[6];
  v11 = a1[5];
  v12 = a1[8];
  v8 = a1[9];
  v9 = a1[7];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v20[0] = swift_getAssociatedTypeWitness();
  v20[1] = swift_getAssociatedTypeWitness();
  v20[2] = swift_getAssociatedTypeWitness();
  v20[3] = swift_getAssociatedTypeWitness();
  v19[4] = v3;
  v19[5] = v2;
  v19[6] = v5;
  v19[7] = v4;
  v19[8] = v15;
  v13 = type metadata accessor for BuilderTuple();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v19[0] = swift_getAssociatedConformanceWitness();
  v19[1] = swift_getAssociatedConformanceWitness();
  v19[2] = swift_getAssociatedConformanceWitness();
  v19[3] = swift_getAssociatedConformanceWitness();
  v6 = *(v10 + 8);
  v18[0] = *(v11 + 8);
  v18[1] = v6;
  v18[2] = *(v9 + 8);
  v18[3] = *(v12 + 8);
  v18[4] = *(v8 + 8);
  v17[7] = v18;
  v17[0] = 4;
  v17[1] = AssociatedTypeWitness;
  v17[2] = v20;
  v17[3] = v13;
  v17[4] = AssociatedConformanceWitness;
  v17[5] = v19;
  v17[6] = swift_getWitnessTable();
  type metadata accessor for GroupSeriesContent(255, v17);
  return swift_getWitnessTable();
}

uint64_t sub_251427C90(_OWORD *a1)
{
  v1 = a1[1];
  v3[0] = *a1;
  v3[1] = v1;
  type metadata accessor for ConditionalSeriesContent(255, v3);
  return swift_getWitnessTable();
}

uint64_t type metadata completion function for GroupSeriesContent(uint64_t a1)
{
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 48);
  result = type metadata accessor for GroupSeries(319, &v4);
  if (v2 <= 0x3F)
  {
    v7 = 0;
    v4 = result;
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      v8 = 0;
      *&v5 = result;
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_251427DCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = *(a3 + 16);
  v6 = *(a3 + 48);
  v11 = *(a3 + 24);
  v12 = v6;
  v7 = type metadata accessor for GroupSeries(0, &v10);
  v8 = *(v7 - 8);
  if (*(v8 + 84) == a2)
  {
    return (*(v8 + 48))(a1, a2, v7);
  }

  else
  {
    return (*(*(*(a3 + 40) - 8) + 48))(a1 + *(a3 + 76), a2);
  }
}

uint64_t sub_251427EDC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v12 = *(a4 + 16);
  v8 = *(a4 + 48);
  v13 = *(a4 + 24);
  v14 = v8;
  v9 = type metadata accessor for GroupSeries(0, &v12);
  v10 = *(v9 - 8);
  if (*(v10 + 84) == a3)
  {
    return (*(v10 + 56))(a1, a2, a2, v9);
  }

  else
  {
    return (*(*(*(a4 + 40) - 8) + 56))(a1 + *(a4 + 76), a2, a2);
  }
}

uint64_t type metadata completion function for GroupSeries(void *a1)
{
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v20[14] = 0;
    v21 = result;
    if (a1[2] == 1)
    {
      result = swift_checkMetadataState();
      if (v4 > 0x3F)
      {
        return result;
      }

LABEL_14:
      v20[15] = 0;
      v22 = result;
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }

    MEMORY[0x28223BE20](result);
    v7 = &v20[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
    if (v5)
    {
      v8 = 0;
      v9 = a1[4] & 0xFFFFFFFFFFFFFFFELL;
      if (v5 < 4)
      {
        goto LABEL_11;
      }

      if (&v7[-v9] < 0x20)
      {
        goto LABEL_11;
      }

      v8 = v5 & 0xFFFFFFFFFFFFFFFCLL;
      v10 = (v9 + 16);
      v11 = v7 + 16;
      v12 = v5 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v13 = *v10;
        *(v11 - 1) = *(v10 - 1);
        *v11 = v13;
        v10 += 2;
        v11 += 2;
        v12 -= 4;
      }

      while (v12);
      if (v5 != v8)
      {
LABEL_11:
        v14 = v5 - v8;
        v15 = 8 * v8;
        v16 = &v7[8 * v8];
        v17 = (v9 + v15);
        do
        {
          v18 = *v17++;
          *v16++ = v18;
          --v14;
        }

        while (v14);
      }
    }

    result = swift_getTupleTypeMetadata();
    if (v19 <= 0x3F)
    {
      goto LABEL_14;
    }
  }

  return result;
}

uint64_t sub_251428140(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 24) - 8);
  if (*(v5 + 84) == a2)
  {
    v6 = *(v5 + 48);

    return v6(a1);
  }

  else
  {
    v28[4] = v3;
    v28[5] = v4;
    v8 = a2;
    if (*(a3 + 16) == 1)
    {
      v9 = *(*(a3 + 32) & 0xFFFFFFFFFFFFFFFELL);
    }

    else
    {
      v10 = a1;
      MEMORY[0x28223BE20](a1);
      v14 = v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
      if (v11)
      {
        v15 = 0;
        v16 = *(v12 + 32) & 0xFFFFFFFFFFFFFFFELL;
        if (v11 < 4)
        {
          goto LABEL_13;
        }

        if (&v14[-v16] < 0x20)
        {
          goto LABEL_13;
        }

        v15 = v11 & 0xFFFFFFFFFFFFFFFCLL;
        v17 = (v16 + 16);
        v18 = v14 + 16;
        v19 = v11 & 0xFFFFFFFFFFFFFFFCLL;
        do
        {
          v20 = *v17;
          *(v18 - 1) = *(v17 - 1);
          *v18 = v20;
          v17 += 2;
          v18 += 2;
          v19 -= 4;
        }

        while (v19);
        if (v11 != v15)
        {
LABEL_13:
          v21 = v11 - v15;
          v22 = 8 * v15;
          v23 = &v14[8 * v15];
          v24 = (v16 + v22);
          do
          {
            v25 = *v24++;
            *v23 = v25;
            v23 += 8;
            --v21;
          }

          while (v21);
        }
      }

      v26 = v12;
      TupleTypeMetadata = swift_getTupleTypeMetadata();
      a3 = v26;
      v9 = TupleTypeMetadata;
      a2 = v8;
      a1 = v10;
    }

    return (*(*(v9 - 8) + 48))(a1 + *(a3 + 60), a2, v9);
  }
}

uint64_t sub_251428300(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v5 = *(a4 + 24);
  v6 = *(v5 - 8);
  if (*(v6 + 84) == a3)
  {
    v7 = *(v6 + 56);

    return v7(a1, a2, a2, v5);
  }

  else
  {
    if (*(a4 + 16) == 1)
    {
      v9 = *(*(a4 + 32) & 0xFFFFFFFFFFFFFFFELL);
    }

    else
    {
      v10 = a1;
      MEMORY[0x28223BE20](a1);
      v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
      if (v11)
      {
        v15 = 0;
        v16 = *(v12 + 32) & 0xFFFFFFFFFFFFFFFELL;
        if (v11 < 4)
        {
          goto LABEL_13;
        }

        if (&v14[-v16] < 0x20)
        {
          goto LABEL_13;
        }

        v15 = v11 & 0xFFFFFFFFFFFFFFFCLL;
        v17 = (v16 + 16);
        v18 = v14 + 16;
        v19 = v11 & 0xFFFFFFFFFFFFFFFCLL;
        do
        {
          v20 = *v17;
          *(v18 - 1) = *(v17 - 1);
          *v18 = v20;
          v17 += 2;
          v18 += 2;
          v19 -= 4;
        }

        while (v19);
        if (v11 != v15)
        {
LABEL_13:
          v21 = v11 - v15;
          v22 = 8 * v15;
          v23 = &v14[8 * v15];
          v24 = (v16 + v22);
          do
          {
            v25 = *v24++;
            *v23 = v25;
            v23 += 8;
            --v21;
          }

          while (v21);
        }
      }

      v26 = v12;
      TupleTypeMetadata = swift_getTupleTypeMetadata();
      a4 = v26;
      v9 = TupleTypeMetadata;
      a1 = v10;
    }

    return (*(*(v9 - 8) + 56))(a1 + *(a4 + 60), a2, a2, v9);
  }
}

uint64_t instantiation function for generic protocol witness table for ConditionalSeriesContent<A, B>(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for GroupSeriesContent<A, Pack{repeat B}, C>(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

void _s16HealthChartsCore0aB4UnitVSgMaTm_2(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t outlined init with take of HealthChartsUnit?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for HealthChartsUnit?(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t specialized GroupSeries.computeYScale(_:_:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  result = (*(a6 + 40))(a4, a6);
  if (a3)
  {
    v14 = (a5 & 0xFFFFFFFFFFFFFFFELL);
    v15 = (a7 & 0xFFFFFFFFFFFFFFFELL);
    v16 = result;
    v17 = v12;
    v18 = v13;
    do
    {
      v37 = *&v16;
      v39 = a3;
      v36 = &v36;
      v21 = *v14;
      v22 = *v15;
      v23 = *(*v14 - 8);
      v24 = MEMORY[0x28223BE20](result);
      v26 = &v36 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
      v38 = a2;
      (*(v23 + 16))(v26, *a2, v21, v24);
      v27 = COERCE_DOUBLE((*(v22 + 40))(v21, v22));
      v29 = v28;
      v31 = v30;
      (*(v23 + 8))(v26, v21);
      if (v31)
      {
        result = *&v37;
      }

      else
      {
        result = *&v27;
      }

      if (v31)
      {
        v32 = v17;
      }

      else
      {
        v32 = v29;
      }

      v33 = v31 & v18;
      if (v31)
      {
        v20 = v38;
        v19 = v39;
      }

      else
      {
        v20 = v38;
        v19 = v39;
        if ((v18 & 1) == 0)
        {
          v34 = v29;
          v35 = v27;
          if (v27 >= v37)
          {
            v35 = v37;
          }

          if (v17 > v29)
          {
            v34 = v17;
          }

          if (v35 > v34)
          {
            __break(1u);
            return result;
          }

          v33 = 0;
          result = *&v35;
          v32 = v34;
        }
      }

      a2 = v20 + 1;
      ++v15;
      ++v14;
      v16 = result;
      v17 = v32;
      v18 = v33;
      a3 = v19 - 1;
    }

    while (a3);
  }

  return result;
}

uint64_t type metadata completion function for ConditionalSeriesContent.Storage(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t type metadata completion function for ConditionalSeriesContent(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, _OWORD *))
{
  v4 = *(a1 + 32);
  v7[0] = *(a1 + 16);
  v7[1] = v4;
  result = (a4)(319, v7, a3);
  if (v6 <= 0x3F)
  {
    v8 = 0;
    *&v7[0] = result;
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ConditionalSeriesContent(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 24) - 8) + 64);
  if (v3 <= *(*(*(a3 + 16) - 8) + 64))
  {
    v3 = *(*(*(a3 + 16) - 8) + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_25;
  }

  v4 = v3 + 1;
  v5 = 8 * (v3 + 1);
  if ((v3 + 1) <= 3)
  {
    v8 = ((a2 + ~(-1 << v5) - 254) >> v5) + 1;
    if (HIWORD(v8))
    {
      v6 = *(a1 + v4);
      if (!v6)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v8 > 0xFF)
    {
      v6 = *(a1 + v4);
      if (!*(a1 + v4))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v8 < 2)
    {
LABEL_25:
      v10 = *(a1 + v3);
      if (v10 >= 2)
      {
        return (v10 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v6 = *(a1 + v4);
  if (!*(a1 + v4))
  {
    goto LABEL_25;
  }

LABEL_14:
  v9 = (v6 - 1) << v5;
  if (v4 > 3)
  {
    v9 = 0;
  }

  if (v4)
  {
    if (v4 > 3)
    {
      LODWORD(v4) = 4;
    }

    if (v4 > 2)
    {
      if (v4 == 3)
      {
        LODWORD(v4) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v4) = *a1;
      }
    }

    else if (v4 == 1)
    {
      LODWORD(v4) = *a1;
    }

    else
    {
      LODWORD(v4) = *a1;
    }
  }

  return (v4 | v9) + 255;
}

void storeEnumTagSinglePayload for ConditionalSeriesContent(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (*(*(*(a4 + 24) - 8) + 64) > v5)
  {
    v5 = *(*(*(a4 + 24) - 8) + 64);
  }

  v6 = v5 + 1;
  if (a3 < 0xFF)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 254) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFE)
  {
    v8 = a2 - 255;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_39:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v5] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_24;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

uint64_t static AxisDomain<>.automaticInterval(viewSpan:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for DateDomain.IntervalAggregation(0);
  (*(*(v4 - 8) + 56))(a2, 1, 1, v4);
  v5 = type metadata accessor for DateDomain(0);
  return outlined init with copy of DateDomain.ViewDateSpan(a1, a2 + *(v5 + 20), type metadata accessor for DateDomain.ViewDateSpan);
}

uint64_t one-time initialization function for defaultDomain()
{
  v0 = type metadata accessor for DateDomain(0);
  __swift_allocate_value_buffer(v0, static DateDomain.defaultDomain);
  v1 = __swift_project_value_buffer(v0, static DateDomain.defaultDomain);
  *(v1 + *(v0 + 20)) = 2;
  type metadata accessor for DateDomain.ViewDateSpan(0);
  swift_storeEnumTagMultiPayload();
  v2 = type metadata accessor for DateDomain.IntervalAggregation(0);
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 1, 1, v2);
}

uint64_t DateDomain.debugDescription.getter()
{
  v1 = type metadata accessor for DateDomain.ViewDateSpan(0);
  MEMORY[0x28223BE20](v1);
  v3 = v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7[0] = 0x2865746164;
  v7[1] = 0xE500000000000000;
  v4 = type metadata accessor for DateDomain(0);
  outlined init with copy of DateDomain.ViewDateSpan(v0 + *(v4 + 20), v3, type metadata accessor for DateDomain.ViewDateSpan);
  v5 = String.init<A>(describing:)();
  MEMORY[0x2530761B0](v5);

  MEMORY[0x2530761B0](41, 0xE100000000000000);
  return v7[0];
}

Swift::Int DateDomain.ViewSpanAlignment.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x253076640](v1);
  return Hasher._finalize()();
}

uint64_t DateDomain.axisScale(seriesScale:seriesUnit:finestAggregation:)@<X0>(unsigned int (*a1)(char *, uint64_t, uint64_t)@<X0>, char *a2@<X2>, _BYTE *a3@<X8>)
{
  v36 = a1;
  v37 = a2;
  v41 = a3;
  type metadata accessor for (lower: Date, upper: Date)(0);
  v40 = v4;
  MEMORY[0x28223BE20](v4);
  v38 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v36 - v7;
  v9 = type metadata accessor for Date();
  v39 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v36 - v13;
  type metadata accessor for DateDomain.IntervalAggregation?(0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DateDomain.IntervalAggregation(0);
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v36 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of DateDomain.ViewDateSpan(v3, v17, type metadata accessor for DateDomain.IntervalAggregation?);
  v22 = *(v19 + 48);
  if (v22(v17, 1, v18) == 1)
  {
    DateDomain.intervalAggregation(for:with:)(v36, v37, v21);
    if (v22(v17, 1, v18) != 1)
    {
      _s12HealthCharts10DateDomainV19IntervalAggregationVSgWOhTm_0(v17, type metadata accessor for DateDomain.IntervalAggregation?);
    }
  }

  else
  {
    outlined init with take of (lower: Date, upper: Date)(v17, v21, type metadata accessor for DateDomain.IntervalAggregation);
  }

  DateInterval.start.getter();
  DateInterval.end.getter();
  _s10Foundation4DateVACSLAAWlTm_1(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
  v23 = v9;
  v24 = dispatch thunk of static Comparable.<= infix(_:_:)();
  result = _s12HealthCharts10DateDomainV19IntervalAggregationVSgWOhTm_0(v21, type metadata accessor for DateDomain.IntervalAggregation);
  if (v24)
  {
    v26 = v39;
    v27 = *(v39 + 32);
    v27(v8, v14, v9);
    v28 = v40;
    v27(&v8[*(v40 + 48)], v11, v9);
    v29 = v38;
    outlined init with copy of DateDomain.ViewDateSpan(v8, v38, type metadata accessor for (lower: Date, upper: Date));
    v37 = *(v28 + 48);
    type metadata accessor for AxisScale<Date>(0, &lazy cache variable for type metadata for AxisScale<Date>, type metadata accessor for AxisScale);
    v31 = v41;
    v32 = &v41[*(v30 + 36)];
    v27(v32, v29, v23);
    v33 = *(v26 + 8);
    v33(&v37[v29], v23);
    outlined init with take of (lower: Date, upper: Date)(v8, v29, type metadata accessor for (lower: Date, upper: Date));
    v34 = *(v28 + 48);
    type metadata accessor for ClosedRange<Date>(0);
    v27(&v32[*(v35 + 36)], (v29 + v34), v23);
    result = (v33)(v29, v23);
    *v31 = 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t outlined init with copy of DateDomain.ViewDateSpan(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t DateDomain.intervalAggregation(for:with:)@<X0>(unsigned int (*a1)(char *, uint64_t, uint64_t)@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v47 = a2;
  v49 = a1;
  v50 = a3;
  v40 = type metadata accessor for DateDomain.ViewDateSpan(0);
  MEMORY[0x28223BE20](v40);
  v42 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Calendar();
  v51 = *(v4 - 8);
  v52 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for DateDomain.IntervalAggregation?(0);
  MEMORY[0x28223BE20](v7 - 8);
  v41 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v45 = &v39 - v10;
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = (&v39 - v16);
  v18 = type metadata accessor for DateInterval();
  v43 = *(v18 - 8);
  v44 = v18;
  MEMORY[0x28223BE20](v18);
  v20 = &v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ClosedRange<Date>?(0);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v39 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ClosedRange<Date>(0);
  v25 = v24;
  v26 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v28 = &v39 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of DateDomain.ViewDateSpan(v49, v23, type metadata accessor for ClosedRange<Date>?);
  v29 = (*(v26 + 48))(v23, 1, v25);
  v48 = v11;
  if (v29 == 1)
  {
    _s12HealthCharts10DateDomainV19IntervalAggregationVSgWOhTm_0(v23, type metadata accessor for ClosedRange<Date>?);
    v30 = v52;
LABEL_3:
    static Calendar.current.getter();
    Date.init()();
    static DateDomain.ViewDateSpan.defaultIntervalAndAggregation(calendar:onDate:)(v6, v17, v50);
    (*(v12 + 8))(v17, v48);
    return (*(v51 + 8))(v6, v30);
  }

  outlined init with take of (lower: Date, upper: Date)(v23, v28, type metadata accessor for ClosedRange<Date>);
  v39 = v12;
  v32 = *(v12 + 16);
  v32(v17, v28, v11);
  v32(v14, &v28[*(v25 + 36)], v11);
  DateInterval.init(start:end:)();
  type metadata accessor for DateDomain(0);
  static Calendar.current.getter();
  v33 = v45;
  v34 = v47;
  DateDomain.ViewDateSpan.dateIntervalAndAggregation(calendar:interval:dataAggregation:)(v6, v20, v47, v45);
  v35 = *(v51 + 8);
  v35(v6, v52);
  v36 = type metadata accessor for DateDomain.IntervalAggregation(0);
  v37 = *(v36 - 8);
  v49 = *(v37 + 48);
  v46 = v37 + 48;
  if (v49(v33, 1, v36) == 1)
  {
    _s12HealthCharts10DateDomainV19IntervalAggregationVSgWOhTm_0(v33, type metadata accessor for DateDomain.IntervalAggregation?);
    v38 = v42;
    swift_storeEnumTagMultiPayload();
    static Calendar.current.getter();
    v33 = v41;
    DateDomain.ViewDateSpan.dateIntervalAndAggregation(calendar:interval:dataAggregation:)(v6, v20, v34, v41);
    v30 = v52;
    v35(v6, v52);
    _s12HealthCharts10DateDomainV19IntervalAggregationVSgWOhTm_0(v38, type metadata accessor for DateDomain.ViewDateSpan);
    (*(v43 + 8))(v20, v44);
    _s12HealthCharts10DateDomainV19IntervalAggregationVSgWOhTm_0(v28, type metadata accessor for ClosedRange<Date>);
    if (v49(v33, 1, v36) == 1)
    {
      _s12HealthCharts10DateDomainV19IntervalAggregationVSgWOhTm_0(v33, type metadata accessor for DateDomain.IntervalAggregation?);
      v12 = v39;
      goto LABEL_3;
    }
  }

  else
  {
    (*(v43 + 8))(v20, v44);
    _s12HealthCharts10DateDomainV19IntervalAggregationVSgWOhTm_0(v28, type metadata accessor for ClosedRange<Date>);
  }

  return outlined init with take of (lower: Date, upper: Date)(v33, v50, type metadata accessor for DateDomain.IntervalAggregation);
}

void type metadata accessor for AxisScale<Date>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for Date();
    v7 = _s10Foundation4DateVACSLAAWlTm_1(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t DateDomain.axisContent(seriesScale:seriesUnit:finestAggregation:)@<X0>(unsigned int (*a1)(char *, uint64_t, uint64_t)@<X0>, char *a3@<X2>, uint64_t x8_0@<X8>)
{
  type metadata accessor for DateDomain.IntervalAggregation?(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DateDomain.IntervalAggregation(0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of DateDomain.ViewDateSpan(v4, v10, type metadata accessor for DateDomain.IntervalAggregation?);
  v15 = *(v12 + 48);
  if (v15(v10, 1, v11) == 1)
  {
    DateDomain.intervalAggregation(for:with:)(a1, a3, v14);
    if (v15(v10, 1, v11) != 1)
    {
      _s12HealthCharts10DateDomainV19IntervalAggregationVSgWOhTm_0(v10, type metadata accessor for DateDomain.IntervalAggregation?);
    }
  }

  else
  {
    outlined init with take of (lower: Date, upper: Date)(v10, v14, type metadata accessor for DateDomain.IntervalAggregation);
  }

  v16 = type metadata accessor for DateDomain(0);
  HealthChartsData.Aggregation.dateHorizontalAxisDefinitions(viewSpan:)(v4 + *(v16 + 20), x8_0);
  return _s12HealthCharts10DateDomainV19IntervalAggregationVSgWOhTm_0(v14, type metadata accessor for DateDomain.IntervalAggregation);
}

uint64_t protocol witness for AxisDomain.axisContent(seriesScale:seriesUnit:finestAggregation:) in conformance DateDomain@<X0>(unsigned int (*a1)(char *, uint64_t, uint64_t)@<X0>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t x8_0@<X8>)
{
  type metadata accessor for DateDomain.IntervalAggregation?(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DateDomain.IntervalAggregation(0);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of DateDomain.ViewDateSpan(v5, v12, type metadata accessor for DateDomain.IntervalAggregation?);
  v17 = *(v14 + 48);
  if (v17(v12, 1, v13) == 1)
  {
    DateDomain.intervalAggregation(for:with:)(a1, a3, v16);
    if (v17(v12, 1, v13) != 1)
    {
      _s12HealthCharts10DateDomainV19IntervalAggregationVSgWOhTm_0(v12, type metadata accessor for DateDomain.IntervalAggregation?);
    }
  }

  else
  {
    outlined init with take of (lower: Date, upper: Date)(v12, v16, type metadata accessor for DateDomain.IntervalAggregation);
  }

  HealthChartsData.Aggregation.dateHorizontalAxisDefinitions(viewSpan:)(v5 + *(a4 + 20), x8_0);
  return _s12HealthCharts10DateDomainV19IntervalAggregationVSgWOhTm_0(v16, type metadata accessor for DateDomain.IntervalAggregation);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance DateDomain(uint64_t a1)
{
  v3 = type metadata accessor for DateDomain.ViewDateSpan(0);
  MEMORY[0x28223BE20](v3);
  v7[0] = 0x2865746164;
  v7[1] = 0xE500000000000000;
  outlined init with copy of DateDomain.ViewDateSpan(v1 + *(a1 + 20), v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DateDomain.ViewDateSpan);
  v5 = String.init<A>(describing:)();
  MEMORY[0x2530761B0](v5);

  MEMORY[0x2530761B0](41, 0xE100000000000000);
  return v7[0];
}

uint64_t DateDomain.updatingViewSpan(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  outlined init with copy of DateDomain.ViewDateSpan(v2, a2, type metadata accessor for DateDomain.IntervalAggregation?);
  v5 = type metadata accessor for DateDomain(0);
  return outlined init with copy of DateDomain.ViewDateSpan(a1, a2 + *(v5 + 20), type metadata accessor for DateDomain.ViewDateSpan);
}

uint64_t DateDomain.updatingInterval(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  outlined init with copy of DateDomain.ViewDateSpan(a1, a2, type metadata accessor for DateDomain.IntervalAggregation);
  v4 = type metadata accessor for DateDomain.IntervalAggregation(0);
  (*(*(v4 - 8) + 56))(a2, 0, 1, v4);
  v5 = type metadata accessor for DateDomain(0);
  return outlined init with copy of DateDomain.ViewDateSpan(v2 + *(v5 + 20), a2 + *(v5 + 20), type metadata accessor for DateDomain.ViewDateSpan);
}

unint64_t lazy protocol witness table accessor for type DateDomain.ViewSpanAlignment and conformance DateDomain.ViewSpanAlignment()
{
  result = lazy protocol witness table cache variable for type DateDomain.ViewSpanAlignment and conformance DateDomain.ViewSpanAlignment;
  if (!lazy protocol witness table cache variable for type DateDomain.ViewSpanAlignment and conformance DateDomain.ViewSpanAlignment)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DateDomain.ViewSpanAlignment and conformance DateDomain.ViewSpanAlignment);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for DateDomain(uint64_t a1)
{
  result = _s10Foundation4DateVACSLAAWlTm_1(&lazy protocol witness table cache variable for type DateDomain and conformance DateDomain, type metadata accessor for DateDomain, &protocol conformance descriptor for DateDomain);
  *(a1 + 8) = result;
  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  v9 = a4(0);
  v10 = *(v9 - 8);
  if (*(v10 + 84) == a2)
  {
    v11 = *(v10 + 48);

    return v11(a1, a2, v9);
  }

  else
  {
    v13 = a5(0);
    v14 = *(*(v13 - 8) + 48);
    v15 = a1 + *(a3 + 20);

    return v14(v15, a2, v13);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  v11 = a5(0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a3)
  {
    v13 = *(v12 + 56);

    return v13(a1, a2, a2, v11);
  }

  else
  {
    v15 = a6(0);
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + *(a4 + 20);

    return v16(v17, a2, a2, v15);
  }
}

uint64_t type metadata completion function for DateDomain(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(uint64_t))
{
  result = a4(319, a2, a3);
  if (v7 <= 0x3F)
  {
    result = a5(319);
    if (v8 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DateDomain.ViewSpanAlignment(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DateDomain.ViewSpanAlignment(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t type metadata completion function for DateDomain.ViewDateSpan(uint64_t a1)
{
  result = type metadata accessor for HealthChartsData.Aggregation();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type BuilderConditional<AxisMarks<BuilderTuple<Pack{AxisTick, AxisGridLine, AxisValueLabel<Never>}>>, AxisMarks<Never>> and conformance <> BuilderConditional<A, B>()
{
  result = lazy protocol witness table cache variable for type BuilderConditional<AxisMarks<BuilderTuple<Pack{AxisTick, AxisGridLine, AxisValueLabel<Never>}>>, AxisMarks<Never>> and conformance <> BuilderConditional<A, B>;
  if (!lazy protocol witness table cache variable for type BuilderConditional<AxisMarks<BuilderTuple<Pack{AxisTick, AxisGridLine, AxisValueLabel<Never>}>>, AxisMarks<Never>> and conformance <> BuilderConditional<A, B>)
  {
    type metadata accessor for BuilderConditional<AxisMarks<BuilderTuple<Pack{AxisTick, AxisGridLine, AxisValueLabel<Never>}>>, AxisMarks<Never>>(255);
    _s10Foundation4DateVACSLAAWlTm_1(&lazy protocol witness table cache variable for type AxisMarks<BuilderTuple<Pack{AxisTick, AxisGridLine, AxisValueLabel<Never>}>> and conformance AxisMarks<A>, type metadata accessor for AxisMarks<BuilderTuple<Pack{AxisTick, AxisGridLine, AxisValueLabel<Never>}>>, MEMORY[0x277CBB460]);
    lazy protocol witness table accessor for type AxisMarks<Never> and conformance AxisMarks<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BuilderConditional<AxisMarks<BuilderTuple<Pack{AxisTick, AxisGridLine, AxisValueLabel<Never>}>>, AxisMarks<Never>> and conformance <> BuilderConditional<A, B>);
  }

  return result;
}

void type metadata accessor for BuilderConditional<AxisMarks<BuilderTuple<Pack{AxisTick, AxisGridLine, AxisValueLabel<Never>}>>, AxisMarks<Never>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for BuilderConditional<AxisMarks<BuilderTuple<Pack{AxisTick, AxisGridLine, AxisValueLabel<Never>}>>, AxisMarks<Never>>)
  {
    type metadata accessor for AxisMarks<BuilderTuple<Pack{AxisTick, AxisGridLine, AxisValueLabel<Never>}>>(255);
    type metadata accessor for AxisValueLabel<Never>(255, &lazy cache variable for type metadata for AxisMarks<Never>, MEMORY[0x277CBB5A8], MEMORY[0x277CBB458]);
    v1 = type metadata accessor for BuilderConditional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for BuilderConditional<AxisMarks<BuilderTuple<Pack{AxisTick, AxisGridLine, AxisValueLabel<Never>}>>, AxisMarks<Never>>);
    }
  }
}

void type metadata accessor for AxisMarks<BuilderTuple<Pack{AxisTick, AxisGridLine, AxisValueLabel<Never>}>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for AxisMarks<BuilderTuple<Pack{AxisTick, AxisGridLine, AxisValueLabel<Never>}>>)
  {
    type metadata accessor for BuilderTuple<Pack{AxisTick, AxisGridLine, AxisValueLabel<Never>}>(255);
    lazy protocol witness table accessor for type BuilderTuple<Pack{AxisTick, AxisGridLine, AxisValueLabel<Never>}> and conformance <each A> BuilderTuple<Pack{repeat A}>();
    v1 = type metadata accessor for AxisMarks();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for AxisMarks<BuilderTuple<Pack{AxisTick, AxisGridLine, AxisValueLabel<Never>}>>);
    }
  }
}

void type metadata accessor for BuilderTuple<Pack{AxisTick, AxisGridLine, AxisValueLabel<Never>}>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for BuilderTuple<Pack{AxisTick, AxisGridLine, AxisValueLabel<Never>}>)
  {
    type metadata accessor for AxisTick();
    type metadata accessor for AxisGridLine();
    type metadata accessor for AxisValueLabel<Never>(255, &lazy cache variable for type metadata for AxisValueLabel<Never>, MEMORY[0x277CE1538], MEMORY[0x277CBB330]);
    v1 = type metadata accessor for BuilderTuple();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for BuilderTuple<Pack{AxisTick, AxisGridLine, AxisValueLabel<Never>}>);
    }
  }
}