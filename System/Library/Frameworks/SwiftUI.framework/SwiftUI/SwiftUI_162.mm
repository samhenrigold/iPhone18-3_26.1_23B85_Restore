uint64_t NavigationPickerButton.DetailView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v7 = *(v6 + 32);
  v27 = type metadata accessor for Binding();
  v32 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v24[0] = v24 - v8;
  v25 = *(a1 + 40);
  v9 = *(*(a1 + 64) + 8);
  v28 = *(a1 + 64);
  v29 = v9;
  v10 = v7;
  v31 = type metadata accessor for _BindingActionModifier();
  v11 = type metadata accessor for ModifiedContent();
  v33 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v26 = v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v30 = v24 - v14;
  v24[1] = *(a1 + 84);
  Binding.projectedValue.getter();
  (*(v4 + 16))(v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v2, a1);
  v15 = (*(v4 + 80) + 80) & ~*(v4 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = *(a1 + 16);
  *(v16 + 32) = v10;
  *(v16 + 40) = v25;
  *(v16 + 48) = *(a1 + 48);
  v17 = *(a1 + 72);
  *(v16 + 64) = v28;
  *(v16 + 72) = v17;
  (*(v4 + 32))(v16 + v15, v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  v18 = v24[0];
  v19 = v26;
  View._onBindingChange<A>(_:perform:)();

  (*(v32 + 8))(v18, v27);
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E697FF78], v31);
  v35[0] = v17;
  v35[1] = WitnessTable;
  swift_getWitnessTable(MEMORY[0x1E697E858], v11, v35);
  v21 = v30;
  static ViewBuilder.buildExpression<A>(_:)();
  v22 = *(v33 + 8);
  v22(v19, v11);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v22)(v21, v11);
}

double closure #1 in NavigationPickerButton.DetailView.body.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v14[0] = a3;
  v14[1] = a4;
  v14[2] = a5;
  v14[3] = a6;
  v14[4] = a7;
  v14[5] = a8;
  v14[6] = a9;
  v14[7] = a10;
  v11 = type metadata accessor for NavigationPickerButton.DetailView(0, v14);
  specialized Environment.wrappedValue.getter(*(a2 + *(v11 + 88)), *(a2 + *(v11 + 88) + 8), *(a2 + *(v11 + 88) + 16) | (*(a2 + *(v11 + 88) + 17) << 8), v14);
  _s7SwiftUI4FontVSgMaTm_2(0, &lazy cache variable for type metadata for Binding<PresentationMode>, &type metadata for PresentationMode, MEMORY[0x1E6981948]);
  MEMORY[0x18D00ACC0](&v13);
  v13 = 0;
  dispatch thunk of AnyLocation.set(_:transaction:)();

  return result;
}

uint64_t NavigationPickerButton.DetailView.init(selection:content:dismiss:)@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t *a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, __int128 a9, uint64_t a10, uint64_t a11)
{
  v17 = *a3;
  v18 = a3[1];
  v23 = *(a3 + 17);
  v24 = *(a3 + 16);
  v19 = type metadata accessor for Binding();
  (*(*(v19 - 8) + 32))(a8, a1, v19);
  v26[0] = a4;
  v26[1] = a5;
  v26[2] = a6;
  v26[3] = a7;
  v27 = a9;
  v28 = a10;
  v29 = a11;
  v20 = type metadata accessor for NavigationPickerButton.DetailView(0, v26);
  result = a2();
  v22 = a8 + *(v20 + 88);
  *v22 = v17;
  *(v22 + 8) = v18;
  *(v22 + 16) = v24;
  *(v22 + 17) = v23;
  return result;
}

uint64_t NavigationPickerButton.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v91 = a2;
  v88 = *(a1 - 1);
  v90 = *(v88 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v89 = &v64 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v4 + 32);
  v86 = type metadata accessor for Binding();
  MEMORY[0x1EEE9AC00](v86);
  v85 = &v64 - v6;
  v7 = a1[2];
  v83 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v82 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a1[5];
  v11 = a1[7];
  *&v98 = v7;
  *(&v98 + 1) = v5;
  v79 = v5;
  v99 = v10;
  v100 = v11;
  v12 = v10;
  v78 = v11;
  v92 = type metadata accessor for ListPicker(0, &v98);
  v87 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92);
  v81 = &v64 - v13;
  v80 = a1;
  v14 = a1[6];
  *&v98 = a1[3];
  *(&v98 + 1) = v14;
  v15 = v98;
  v16 = v14;
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for _EnvironmentKeyTransformModifier<Font?>(255);
  v17 = type metadata accessor for ModifiedContent();
  v19 = type metadata accessor for LabeledContent(255, v7, v17, v18);
  type metadata accessor for _LabeledContentStyleModifier<AdaptiveLeadingTrailingLabeledContentStyle>(255, &lazy cache variable for type metadata for _LabeledContentStyleModifier<AdaptiveLeadingTrailingLabeledContentStyle>, lazy protocol witness table accessor for type AdaptiveLeadingTrailingLabeledContentStyle and conformance AdaptiveLeadingTrailingLabeledContentStyle, &type metadata for AdaptiveLeadingTrailingLabeledContentStyle, type metadata accessor for _LabeledContentStyleModifier);
  v20 = type metadata accessor for ModifiedContent();
  *&v98 = v7;
  *(&v98 + 1) = v15;
  v99 = v5;
  v100 = &type metadata for BoundInputsView;
  v21 = v12;
  v77 = v12;
  v101 = v12;
  v102 = v16;
  v103 = v11;
  v104 = &protocol witness table for BoundInputsView;
  v22 = type metadata accessor for NavigationPickerButton.DetailView(255, &v98);
  *&v98 = v15;
  *(&v98 + 1) = v16;
  v23 = v15;
  v74 = v15;
  v75 = v16;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v25 = lazy protocol witness table accessor for type _EnvironmentKeyTransformModifier<Font?> and conformance _EnvironmentKeyTransformModifier<A>();
  v97[0] = OpaqueTypeConformance2;
  v97[1] = v25;
  v26 = MEMORY[0x1E697E858];
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E697E858], v17, v97);
  v96[0] = v21;
  v96[1] = WitnessTable;
  v95[0] = swift_getWitnessTable(protocol conformance descriptor for <> LabeledContent<A, B>, v19, v96);
  v95[1] = &protocol witness table for _LabeledContentStyleModifier<A>;
  v76 = v26;
  v28 = swift_getWitnessTable(v26, v20, v95);
  v29 = swift_getWitnessTable(protocol conformance descriptor for NavigationPickerButton<A, B, C>.DetailView<A1>, v22);
  *&v98 = v20;
  *(&v98 + 1) = v22;
  v99 = v28;
  v100 = v29;
  v30 = type metadata accessor for NavigationLink(255, &v98);
  *&v98 = MEMORY[0x1E69E73E0];
  *(&v98 + 1) = v23;
  v99 = MEMORY[0x1E6982070];
  v100 = v16;
  type metadata accessor for AccessibilityProxyTransformModifier(255, &v98);
  v31 = type metadata accessor for ModifiedContent();
  v70 = v31;
  v32 = v92;
  v33 = swift_getWitnessTable(protocol conformance descriptor for ListPicker<A, B>, v92);
  v69 = v33;
  v94[0] = swift_getWitnessTable(protocol conformance descriptor for NavigationLink<A, B>, v30);
  v94[1] = &protocol witness table for AccessibilityProxyTransformModifier<A, B>;
  v68 = swift_getWitnessTable(v26, v31, v94);
  *&v98 = v32;
  *(&v98 + 1) = v31;
  v99 = v33;
  v100 = v68;
  v66 = type metadata accessor for ViewInputsBinding(0, &v98);
  v72 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v65 = &v64 - v34;
  v71 = type metadata accessor for ModifiedContent();
  v73 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v64 = &v64 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x1EEE9AC00](v36);
  v67 = &v64 - v38;
  v39 = v82;
  v40 = v84;
  (*(v83 + 16))(v82, v84, v7, v37);
  v41 = v80;
  outlined init with copy of SubviewsCollection(v40 + *(v80 + 18), &v98);
  v42 = v85;
  Binding.projectedValue.getter();
  v43 = v81;
  v44 = v42;
  v45 = v7;
  v46 = v79;
  v47 = v77;
  v48 = v78;
  ListPicker.init(label:options:selection:)(v39, &v98, v44, v7, v79, v77, v78, v81);
  v49 = v88;
  v50 = v89;
  (*(v88 + 16))(v89, v40, v41);
  v51 = (*(v49 + 80) + 64) & ~*(v49 + 80);
  v52 = swift_allocObject();
  *&v53 = v45;
  *(&v53 + 1) = v74;
  *&v54 = v46;
  *(&v54 + 1) = v47;
  *(v52 + 16) = v53;
  *(v52 + 32) = v54;
  *(v52 + 48) = v75;
  *(v52 + 56) = v48;
  (*(v49 + 32))(v52 + v51, v50, v41);
  v55 = v65;
  v56 = v92;
  View.bindInputs<A>(transform:)(partial apply for closure #1 in NavigationPickerButton.body.getter, v52, v92, v70, v69, v68, v65);

  v57 = (*(v87 + 8))(v43, v56);
  v58 = v64;
  v59 = v66;
  MEMORY[0x18D00A570](v57, v66, MEMORY[0x1E6980C28], &protocol witness table for ViewInputsBinding<A, B>);
  (*(v72 + 8))(v55, v59);
  v93[0] = &protocol witness table for ViewInputsBinding<A, B>;
  v93[1] = MEMORY[0x1E6980C20];
  v60 = v71;
  swift_getWitnessTable(v76, v71, v93);
  v61 = v67;
  static ViewBuilder.buildExpression<A>(_:)();
  v62 = *(v73 + 8);
  v62(v58, v60);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v62)(v61, v60);
}

uint64_t ListPicker.init(label:options:selection:)@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  (*(*(a4 - 8) + 32))(a8, a1, a4);
  v22[0] = a4;
  v22[1] = a5;
  v22[2] = a6;
  v22[3] = a7;
  v15 = type metadata accessor for ListPicker(0, v22);
  v16 = (a8 + *(v15 + 52));
  v17 = a2[1];
  *v16 = *a2;
  v16[1] = v17;
  v18 = a2[3];
  v16[2] = a2[2];
  v16[3] = v18;
  v19 = *(v15 + 56);
  v20 = type metadata accessor for Binding();
  return (*(*(v20 - 8) + 32))(a8 + v19, a3, v20);
}

uint64_t closure #1 in NavigationPickerButton.body.getter@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v68 = a8;
  v79 = a6;
  v80 = a5;
  v76 = a2;
  v77 = a9;
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for _EnvironmentKeyTransformModifier<Font?>(255);
  v15 = type metadata accessor for ModifiedContent();
  v81 = a3;
  v17 = type metadata accessor for LabeledContent(255, a3, v15, v16);
  type metadata accessor for _LabeledContentStyleModifier<AdaptiveLeadingTrailingLabeledContentStyle>(255, &lazy cache variable for type metadata for _LabeledContentStyleModifier<AdaptiveLeadingTrailingLabeledContentStyle>, lazy protocol witness table accessor for type AdaptiveLeadingTrailingLabeledContentStyle and conformance AdaptiveLeadingTrailingLabeledContentStyle, &type metadata for AdaptiveLeadingTrailingLabeledContentStyle, type metadata accessor for _LabeledContentStyleModifier);
  v82 = type metadata accessor for ModifiedContent();
  *&v108 = a3;
  *(&v108 + 1) = a4;
  *&v109 = a5;
  *(&v109 + 1) = &type metadata for BoundInputsView;
  *&v110 = v79;
  *(&v110 + 1) = a7;
  *&v111 = a8;
  *(&v111 + 1) = &protocol witness table for BoundInputsView;
  v18 = type metadata accessor for NavigationPickerButton.DetailView(255, &v108);
  *&v108 = a4;
  *(&v108 + 1) = a7;
  v19 = a7;
  v107[0] = swift_getOpaqueTypeConformance2();
  v107[1] = lazy protocol witness table accessor for type _EnvironmentKeyTransformModifier<Font?> and conformance _EnvironmentKeyTransformModifier<A>();
  v20 = MEMORY[0x1E697E858];
  v75 = MEMORY[0x1E697E858];
  v106[0] = v79;
  v106[1] = swift_getWitnessTable(MEMORY[0x1E697E858], v15, v107);
  v21 = v79;
  v105[0] = swift_getWitnessTable(protocol conformance descriptor for <> LabeledContent<A, B>, v17, v106);
  v105[1] = &protocol witness table for _LabeledContentStyleModifier<A>;
  WitnessTable = swift_getWitnessTable(v20, v82, v105);
  v70 = swift_getWitnessTable(protocol conformance descriptor for NavigationPickerButton<A, B, C>.DetailView<A1>, v18);
  *&v108 = v82;
  *(&v108 + 1) = v18;
  v64 = v18;
  *&v109 = WitnessTable;
  *(&v109 + 1) = v70;
  v67 = type metadata accessor for NavigationLink(0, &v108);
  v74 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v66 = &v61 - v22;
  *&v108 = MEMORY[0x1E69E73E0];
  *(&v108 + 1) = a4;
  *&v109 = MEMORY[0x1E6982070];
  *(&v109 + 1) = v19;
  v23 = v19;
  type metadata accessor for AccessibilityProxyTransformModifier(255, &v108);
  v24 = type metadata accessor for ModifiedContent();
  v25 = *(v24 - 8);
  v72 = v24;
  v73 = v25;
  MEMORY[0x1EEE9AC00](v24);
  v65 = &v61 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v69 = &v61 - v28;
  v29 = v80;
  v30 = type metadata accessor for Binding();
  MEMORY[0x1EEE9AC00](v30 - 8);
  v32 = &v61 - v31;
  v62 = *(v18 - 8);
  v33 = v62;
  MEMORY[0x1EEE9AC00](v34);
  v63 = &v61 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v78 = &v61 - v37;
  v38 = a1[3];
  v110 = a1[2];
  v111 = v38;
  v112 = a1[4];
  v113 = *(a1 + 10);
  v39 = a1[1];
  v108 = *a1;
  v109 = v39;
  v40 = v81;
  KeyPath = v81;
  v100 = a4;
  v101 = v29;
  v102 = v21;
  v103 = v19;
  v61 = v19;
  v41 = v68;
  v104 = v68;
  type metadata accessor for NavigationPickerButton(0, &KeyPath);
  type metadata accessor for Binding();
  v42 = v76;
  Binding.projectedValue.getter();
  v97 = &v108;
  KeyPath = swift_getKeyPath();
  v100 = 0;
  LOWORD(v101) = 0;
  v43 = v41;
  *&v60 = v21;
  *(&v60 + 1) = v23;
  v44 = v78;
  v45 = v32;
  v46 = v80;
  NavigationPickerButton.DetailView.init(selection:content:dismiss:)(v45, partial apply for closure #1 in closure #1 in NavigationPickerButton.body.getter, &KeyPath, v40, a4, v80, &type metadata for BoundInputsView, v78, v60, v41, &protocol witness table for BoundInputsView);
  v47 = *(v33 + 16);
  v48 = v63;
  v49 = v64;
  v47(v63, v44, v64);
  v90 = v40;
  v91 = a4;
  v50 = v79;
  v92 = v46;
  v93 = v79;
  v51 = v61;
  v94 = v61;
  v95 = v43;
  v96 = v42;
  v52 = v66;
  NavigationLink.init(destination:label:)(v48, partial apply for closure #2 in closure #1 in NavigationPickerButton.body.getter, v82, v49, WitnessTable, v70, v66);
  v83 = v81;
  v84 = a4;
  v85 = v46;
  v86 = v50;
  v87 = v51;
  v88 = v43;
  v89 = v42;
  v53 = v67;
  v54 = swift_getWitnessTable(protocol conformance descriptor for NavigationLink<A, B>, v67);
  v55 = v65;
  View.accessibilityValue<A>(value:)(partial apply for closure #3 in closure #1 in NavigationPickerButton.body.getter, v53, a4, v54, v51, v65);
  (*(v74 + 8))(v52, v53);
  (*(v62 + 8))(v78, v49);
  v98[0] = v54;
  v98[1] = &protocol witness table for AccessibilityProxyTransformModifier<A, B>;
  v56 = v72;
  swift_getWitnessTable(v75, v72, v98);
  v57 = v69;
  static ViewBuilder.buildExpression<A>(_:)();
  v58 = *(v73 + 8);
  v58(v55, v56);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v58)(v57, v56);
}

uint64_t closure #2 in closure #1 in NavigationPickerButton.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v43 = a4;
  v44 = a1;
  v42 = a8;
  v48 = a3;
  v49 = a6;
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for _EnvironmentKeyTransformModifier<Font?>(255);
  v37 = type metadata accessor for ModifiedContent();
  v14 = type metadata accessor for LabeledContent(0, a2, v37, v13);
  v41 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v36 = &v33 - v15;
  type metadata accessor for _LabeledContentStyleModifier<AdaptiveLeadingTrailingLabeledContentStyle>(255, &lazy cache variable for type metadata for _LabeledContentStyleModifier<AdaptiveLeadingTrailingLabeledContentStyle>, lazy protocol witness table accessor for type AdaptiveLeadingTrailingLabeledContentStyle and conformance AdaptiveLeadingTrailingLabeledContentStyle, &type metadata for AdaptiveLeadingTrailingLabeledContentStyle, type metadata accessor for _LabeledContentStyleModifier);
  v16 = type metadata accessor for ModifiedContent();
  v40 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v38 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v39 = &v33 - v19;
  v45[12] = a2;
  v45[13] = a3;
  v45[14] = v43;
  v45[15] = a5;
  v45[16] = a6;
  v45[17] = a7;
  v20 = a7;
  v34 = a7;
  v45[18] = v44;
  v45[2] = a2;
  v45[3] = a3;
  v45[4] = v43;
  v45[5] = a5;
  v21 = a5;
  v45[6] = a6;
  v45[7] = v20;
  v45[8] = v44;
  v48 = a3;
  v49 = a6;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v23 = lazy protocol witness table accessor for type _EnvironmentKeyTransformModifier<Font?> and conformance _EnvironmentKeyTransformModifier<A>();
  v54[0] = OpaqueTypeConformance2;
  v54[1] = v23;
  v35 = MEMORY[0x1E697E858];
  v24 = v37;
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E697E858], v37, v54);
  v26 = v36;
  LabeledContent<>.init(content:label:)(partial apply for closure #1 in closure #2 in closure #1 in NavigationPickerButton.body.getter, partial apply for closure #2 in closure #2 in closure #1 in NavigationPickerButton.body.getter, v45, a2, v24, v36);
  v48 = a2;
  v49 = a3;
  v50 = v43;
  v51 = v21;
  v52 = a6;
  v53 = v34;
  v27 = type metadata accessor for NavigationPickerButton(0, &v48);
  LOBYTE(v48) = *(v44 + *(v27 + 80));
  v47[0] = v21;
  v47[1] = WitnessTable;
  v28 = swift_getWitnessTable(protocol conformance descriptor for <> LabeledContent<A, B>, v14, v47);
  lazy protocol witness table accessor for type AdaptiveLeadingTrailingLabeledContentStyle and conformance AdaptiveLeadingTrailingLabeledContentStyle();
  v29 = v38;
  View.labeledContentStyle<A>(_:)(&v48, v14, &type metadata for AdaptiveLeadingTrailingLabeledContentStyle, v28);
  (*(v41 + 8))(v26, v14);
  v46[0] = v28;
  v46[1] = &protocol witness table for _LabeledContentStyleModifier<A>;
  swift_getWitnessTable(v35, v16, v46);
  v30 = v39;
  static ViewBuilder.buildExpression<A>(_:)();
  v31 = *(v40 + 8);
  v31(v29, v16);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v31)(v30, v16);
}

uint64_t closure #1 in closure #2 in closure #1 in NavigationPickerButton.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v43 = a5;
  v44 = a7;
  v41 = a2;
  v42 = a4;
  v45 = a8;
  v47 = a2;
  v48 = a3;
  v49 = a4;
  v50 = a5;
  v51 = a6;
  v52 = a7;
  v11 = type metadata accessor for NavigationPickerButton(0, &v47);
  v12 = *(v11 - 8);
  v36 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v33 - v13;
  v47 = a3;
  v48 = a6;
  v38 = MEMORY[0x1E6981368];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v39 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v16 = &v33 - v15;
  type metadata accessor for _EnvironmentKeyTransformModifier<Font?>(255);
  v17 = type metadata accessor for ModifiedContent();
  v40 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v34 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v37 = &v33 - v20;
  View.accessibilityDisabled()();
  swift_getKeyPath();
  (*(v12 + 16))(v14, a1, v11);
  v21 = (*(v12 + 80) + 64) & ~*(v12 + 80);
  v22 = swift_allocObject();
  v23 = v42;
  *(v22 + 2) = v41;
  *(v22 + 3) = a3;
  v25 = v43;
  v24 = v44;
  *(v22 + 4) = v23;
  *(v22 + 5) = v25;
  *(v22 + 6) = a6;
  *(v22 + 7) = v24;
  (*(v12 + 32))(&v22[v21], v14, v11);
  v47 = a3;
  v48 = a6;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v28 = v34;
  v27 = OpaqueTypeMetadata2;
  View.transformEnvironment<A>(_:transform:)();

  (*(v39 + 8))(v16, v27);
  v29 = lazy protocol witness table accessor for type _EnvironmentKeyTransformModifier<Font?> and conformance _EnvironmentKeyTransformModifier<A>();
  v46[0] = OpaqueTypeConformance2;
  v46[1] = v29;
  swift_getWitnessTable(MEMORY[0x1E697E858], v17, v46);
  v30 = v37;
  static ViewBuilder.buildExpression<A>(_:)();
  v31 = *(v40 + 8);
  v31(v28, v17);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v31)(v30, v17);
}

uint64_t closure #1 in closure #1 in closure #2 in closure #1 in NavigationPickerButton.body.getter(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11[0] = a3;
  v11[1] = a4;
  v11[2] = a5;
  v11[3] = a6;
  v11[4] = a7;
  v11[5] = a8;
  result = type metadata accessor for NavigationPickerButton(0, v11);
  if (*(a2 + *(result + 80)))
  {

    result = static Font.subheadline.getter();
    *a1 = result;
  }

  return result;
}

uint64_t closure #3 in closure #1 in NavigationPickerButton.body.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14[0] = v7;
  v14[1] = v8;
  v14[2] = v9;
  v14[3] = v10;
  v14[4] = v11;
  v14[5] = v12;
  type metadata accessor for NavigationPickerButton(0, v14);
  static ViewBuilder.buildExpression<A>(_:)();
  static ViewBuilder.buildExpression<A>(_:)();
  return (*(v4 + 8))(v6, a3);
}

void type metadata accessor for _EnvironmentKeyTransformModifier<Font?>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _EnvironmentKeyTransformModifier<Font?>)
  {
    _s7SwiftUI4FontVSgMaTm_2(255, &lazy cache variable for type metadata for Font?, MEMORY[0x1E6980F50], MEMORY[0x1E69E6720]);
    v1 = type metadata accessor for _EnvironmentKeyTransformModifier();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _EnvironmentKeyTransformModifier<Font?>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type AdaptiveLeadingTrailingLabeledContentStyle and conformance AdaptiveLeadingTrailingLabeledContentStyle()
{
  result = lazy protocol witness table cache variable for type AdaptiveLeadingTrailingLabeledContentStyle and conformance AdaptiveLeadingTrailingLabeledContentStyle;
  if (!lazy protocol witness table cache variable for type AdaptiveLeadingTrailingLabeledContentStyle and conformance AdaptiveLeadingTrailingLabeledContentStyle)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AdaptiveLeadingTrailingLabeledContentStyle, &type metadata for AdaptiveLeadingTrailingLabeledContentStyle, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AdaptiveLeadingTrailingLabeledContentStyle and conformance AdaptiveLeadingTrailingLabeledContentStyle);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _EnvironmentKeyTransformModifier<Font?> and conformance _EnvironmentKeyTransformModifier<A>()
{
  result = lazy protocol witness table cache variable for type _EnvironmentKeyTransformModifier<Font?> and conformance _EnvironmentKeyTransformModifier<A>;
  if (!lazy protocol witness table cache variable for type _EnvironmentKeyTransformModifier<Font?> and conformance _EnvironmentKeyTransformModifier<A>)
  {
    type metadata accessor for _EnvironmentKeyTransformModifier<Font?>(255);
    result = swift_getWitnessTable(MEMORY[0x1E6980B30], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _EnvironmentKeyTransformModifier<Font?> and conformance _EnvironmentKeyTransformModifier<A>);
  }

  return result;
}

uint64_t partial apply for closure #1 in NavigationPickerButton.body.getter@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v9 = v2[6];
  v10 = v2[7];
  v14[0] = v2[2];
  v5 = v14[0];
  v14[1] = v6;
  v14[2] = v7;
  v14[3] = v8;
  v14[4] = v9;
  v14[5] = v10;
  v11 = *(type metadata accessor for NavigationPickerButton(0, v14) - 8);
  v12 = v2 + ((*(v11 + 80) + 64) & ~*(v11 + 80));

  return closure #1 in NavigationPickerButton.body.getter(a1, v12, v5, v6, v7, v8, v9, v10, a2);
}

uint64_t partial apply for closure #1 in closure #1 in NavigationPickerButton.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v2 + 48);
  *(a1 + 32) = *(v2 + 32);
  *(a1 + 48) = v3;
  *(a1 + 64) = *(v2 + 64);
  *(a1 + 80) = *(v2 + 80);
  v4 = *(v2 + 16);
  *a1 = *v2;
  *(a1 + 16) = v4;
  return outlined init with copy of BoundInputsView(v2, v6);
}

uint64_t partial apply for closure #1 in closure #1 in closure #2 in closure #1 in NavigationPickerButton.body.getter(uint64_t *a1)
{
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v12[0] = v1[2];
  v3 = v12[0];
  v12[1] = v4;
  v12[2] = v5;
  v12[3] = v6;
  v12[4] = v7;
  v12[5] = v8;
  v9 = *(type metadata accessor for NavigationPickerButton(0, v12) - 8);
  v10 = v1 + ((*(v9 + 80) + 64) & ~*(v9 + 80));

  return closure #1 in closure #1 in closure #2 in closure #1 in NavigationPickerButton.body.getter(a1, v10, v3, v4, v5, v6, v7, v8);
}

uint64_t ListPicker.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v59 = a3;
  v52 = a1[3];
  *&v55 = a1[5];
  v44 = a1;
  v58 = type metadata accessor for PickerContentView(255, v52, v55, a2);
  WitnessTable = swift_getWitnessTable("Q%\rb\\R\t", v58);
  v71 = MEMORY[0x1E69E73E0];
  v72 = v58;
  v73 = MEMORY[0x1E69E73F0];
  v74 = WitnessTable;
  v4 = type metadata accessor for List(255, &v71);
  type metadata accessor for StaticIf<ListPickerStyleIsGroupedPredicate, ListStyleWriter<GroupedListStyle>, EmptyModifier>(255);
  v56 = v5;
  v50 = v4;
  v6 = type metadata accessor for ModifiedContent();
  type metadata accessor for StaticIf<StyleContextAcceptsPredicate<AnyFormStyleContext>, ListStyleWriter<InsetGroupedListStyle>, EmptyModifier>(255);
  v51 = v6;
  v7 = type metadata accessor for ModifiedContent();
  type metadata accessor for _LabeledContentStyleModifier<AdaptiveLeadingTrailingLabeledContentStyle>(255, &lazy cache variable for type metadata for ToggleStyleModifier<CheckmarkToggleStyle>, lazy protocol witness table accessor for type CheckmarkToggleStyle and conformance CheckmarkToggleStyle, &type metadata for CheckmarkToggleStyle, type metadata accessor for ToggleStyleModifier);
  v53 = v7;
  v60 = type metadata accessor for ModifiedContent();
  type metadata accessor for EnvironmentPropertyKey<PresentationModeKey>(255, &lazy cache variable for type metadata for TransactionalPreferenceTransformModifier<NavigationTitleKey>, &type metadata for NavigationTitleKey, &protocol witness table for NavigationTitleKey, type metadata accessor for TransactionalPreferenceTransformModifier);
  v8 = type metadata accessor for ModifiedContent();
  type metadata accessor for EnvironmentPropertyKey<PresentationModeKey>(255, &lazy cache variable for type metadata for _PreferenceTransformModifier<ToolbarKey>, &type metadata for ToolbarKey, &protocol witness table for ToolbarKey, MEMORY[0x1E6980910]);
  v9 = type metadata accessor for ModifiedContent();
  v10 = type metadata accessor for ModifiedContent();
  v11 = type metadata accessor for ModifiedContent();
  *&v61 = a1[2];
  v47 = swift_getWitnessTable(protocol conformance descriptor for List<A, B>, v4);
  IsGrouped = lazy protocol witness table accessor for type StaticIf<ListPickerStyleIsGroupedPredicate, ListStyleWriter<GroupedListStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>(&lazy protocol witness table cache variable for type StaticIf<ListPickerStyleIsGroupedPredicate, ListStyleWriter<GroupedListStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>, type metadata accessor for StaticIf<ListPickerStyleIsGroupedPredicate, ListStyleWriter<GroupedListStyle>, EmptyModifier>, lazy protocol witness table accessor for type ListPickerStyleIsGroupedPredicate and conformance ListPickerStyleIsGroupedPredicate);
  v84[0] = v47;
  v84[1] = IsGrouped;
  v13 = MEMORY[0x1E697E858];
  v48 = swift_getWitnessTable(MEMORY[0x1E697E858], v6, v84);
  v14 = lazy protocol witness table accessor for type StaticIf<ListPickerStyleIsGroupedPredicate, ListStyleWriter<GroupedListStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>(&lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<AnyFormStyleContext>, ListStyleWriter<InsetGroupedListStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>, type metadata accessor for StaticIf<StyleContextAcceptsPredicate<AnyFormStyleContext>, ListStyleWriter<InsetGroupedListStyle>, EmptyModifier>, lazy protocol witness table accessor for type StyleContextAcceptsPredicate<AnyFormStyleContext> and conformance StyleContextAcceptsPredicate<A>);
  v83[0] = v48;
  v83[1] = v14;
  v82[0] = swift_getWitnessTable(v13, v7, v83);
  v82[1] = &protocol witness table for ToggleStyleModifier<A>;
  v49 = swift_getWitnessTable(v13, v60, v82);
  v81[0] = v49;
  v81[1] = &protocol witness table for TransactionalPreferenceTransformModifier<A>;
  v15 = swift_getWitnessTable(v13, v8, v81);
  v16 = lazy protocol witness table accessor for type _PreferenceTransformModifier<ToolbarKey> and conformance _PreferenceTransformModifier<A>();
  v80[0] = v15;
  v80[1] = v16;
  v79[0] = swift_getWitnessTable(v13, v9, v80);
  v79[1] = &protocol witness table for TransactionalPreferenceTransformModifier<A>;
  v78[0] = swift_getWitnessTable(v13, v10, v79);
  v78[1] = v16;
  v17 = swift_getWitnessTable(v13, v11, v78);
  v18 = v44;
  v43 = v44[4];
  v71 = &type metadata for TextPlatformItemListFlags;
  v72 = v11;
  v73 = v61;
  v74 = &protocol witness table for TextPlatformItemListFlags;
  v75 = v17;
  v76 = v43;
  type metadata accessor for PlatformItemListReader(255, &v71);
  v19 = type metadata accessor for StaticIf();
  v46 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v43 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v45 = &v43 - v23;
  v24 = v52;
  v25 = type metadata accessor for Binding();
  type metadata accessor for _ContiguousArrayStorage();
  swift_allocObject();
  v26 = static Array._adoptStorage(_:count:)();
  type metadata accessor for Binding();
  v27 = v54;
  Binding.projectedValue.getter();
  _finalizeUninitializedArray<A>(_:)(v26, v25);
  v29 = v28;
  outlined init with copy of SubviewsCollection(v27 + *(v18 + 13), &v71);
  v30 = v29;
  v31 = v55;
  PickerContentView.init(selection:items:)(v30, &v71, v77);
  *&v32 = v61;
  *(&v32 + 1) = v24;
  v61 = v32;
  *&v33 = v43;
  *(&v33 + 1) = v31;
  v55 = v33;
  v65 = v32;
  v66 = v33;
  v67 = v77;
  v34 = v58;
  List<>.init(content:)(partial apply for closure #1 in ListPicker.body.getter, v58, WitnessTable, &v71);
  memset(v69, 0, 32);
  v69[32] = 1;
  v35 = v50;
  MEMORY[0x18D00A570](v70, v69, v50, v56, v47);
  (*(*(v35 - 8) + 8))(&v71, v35);
  v36 = lazy protocol witness table accessor for type AnyFormStyleContext and conformance AnyFormStyleContext();
  v37 = v51;
  View.listStyle<A, B>(_:in:)(v36, v38, v51, &type metadata for InsetGroupedListStyle, &type metadata for AnyFormStyleContext, v48, v36, &v71);
  (*(*(v37 - 8) + 8))(v70, v37);
  v62 = v61;
  v63 = v55;
  v64 = &v71;
  v39 = v49;
  ListPicker.resolvedList<A>(list:)(partial apply for closure #2 in ListPicker.body.getter, v18, v60, v49, v21);
  v68[0] = lazy protocol witness table accessor for type ListPickerStyleIsGroupedPredicate and conformance ListPickerStyleIsGroupedPredicate();
  v68[1] = v39;
  v68[2] = &protocol witness table for PlatformItemListReader<A, B, C>;
  swift_getWitnessTable(MEMORY[0x1E6981CE8], v19, v68);
  v40 = v45;
  static ViewBuilder.buildExpression<A>(_:)();
  v41 = *(v46 + 8);
  v41(v21, v19);
  static ViewBuilder.buildExpression<A>(_:)();
  v41(v40, v19);
  (*(*(v53 - 8) + 8))(&v71);
  return (*(*(v34 - 8) + 8))(v77, v34);
}

uint64_t closure #1 in ListPicker.body.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = type metadata accessor for PickerContentView(0, a3, a5, a4);
  swift_getWitnessTable("Q%\rb\\R\t", v5);
  static ViewBuilder.buildExpression<A>(_:)();
  static ViewBuilder.buildExpression<A>(_:)();
  return (*(*(v5 - 8) + 8))(v7, v5);
}

uint64_t closure #2 in ListPicker.body.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  KeyPath = swift_getKeyPath();
  v33 = 0;
  v8 = swift_getKeyPath();
  v32 = 0;
  v9 = swift_getKeyPath();
  v31 = 0;
  lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
  ScaledMetric.init(wrappedValue:)();
  v30 = BYTE8(v34);
  v29 = BYTE8(v35);
  *&v21 = KeyPath;
  BYTE8(v21) = 0;
  *&v22 = v8;
  BYTE8(v22) = 0;
  v23 = v9;
  v24 = 0uLL;
  LOBYTE(v25) = 0;
  *(&v25 + 1) = v34;
  LOBYTE(v26) = BYTE8(v34);
  *(&v26 + 1) = v35;
  LOBYTE(v27) = BYTE8(v35);
  *(&v27 + 1) = v36;
  v28 = BYTE8(v36);
  v11 = type metadata accessor for PickerContentView(255, a3, a5, v10);
  WitnessTable = swift_getWitnessTable("Q%\rb\\R\t", v11);
  *&v34 = MEMORY[0x1E69E73E0];
  *(&v34 + 1) = v11;
  *&v35 = MEMORY[0x1E69E73F0];
  *(&v35 + 1) = WitnessTable;
  v13 = type metadata accessor for List(255, &v34);
  type metadata accessor for StaticIf<ListPickerStyleIsGroupedPredicate, ListStyleWriter<GroupedListStyle>, EmptyModifier>(255);
  v14 = type metadata accessor for ModifiedContent();
  type metadata accessor for StaticIf<StyleContextAcceptsPredicate<AnyFormStyleContext>, ListStyleWriter<InsetGroupedListStyle>, EmptyModifier>(255);
  v15 = type metadata accessor for ModifiedContent();
  v20[0] = swift_getWitnessTable(protocol conformance descriptor for List<A, B>, v13);
  v20[1] = lazy protocol witness table accessor for type StaticIf<ListPickerStyleIsGroupedPredicate, ListStyleWriter<GroupedListStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>(&lazy protocol witness table cache variable for type StaticIf<ListPickerStyleIsGroupedPredicate, ListStyleWriter<GroupedListStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>, type metadata accessor for StaticIf<ListPickerStyleIsGroupedPredicate, ListStyleWriter<GroupedListStyle>, EmptyModifier>, lazy protocol witness table accessor for type ListPickerStyleIsGroupedPredicate and conformance ListPickerStyleIsGroupedPredicate);
  v16 = MEMORY[0x1E697E858];
  v19[0] = swift_getWitnessTable(MEMORY[0x1E697E858], v14, v20);
  v19[1] = lazy protocol witness table accessor for type StaticIf<ListPickerStyleIsGroupedPredicate, ListStyleWriter<GroupedListStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>(&lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<AnyFormStyleContext>, ListStyleWriter<InsetGroupedListStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>, type metadata accessor for StaticIf<StyleContextAcceptsPredicate<AnyFormStyleContext>, ListStyleWriter<InsetGroupedListStyle>, EmptyModifier>, lazy protocol witness table accessor for type StyleContextAcceptsPredicate<AnyFormStyleContext> and conformance StyleContextAcceptsPredicate<A>);
  v17 = swift_getWitnessTable(v16, v15, v19);
  lazy protocol witness table accessor for type CheckmarkToggleStyle and conformance CheckmarkToggleStyle();
  View.toggleStyle<A>(_:)(&v21, v15, &type metadata for CheckmarkToggleStyle, v17);
  v38 = v25;
  v39 = v26;
  v40 = v27;
  v41 = v28;
  v34 = v21;
  v35 = v22;
  v36 = v23;
  v37 = v24;
  return outlined destroy of CheckmarkToggleStyle(&v34);
}

uint64_t ListPicker.resolvedList<A>(list:)@<X0>(uint64_t a1@<X0>, void *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v28 = a5;
  v29 = *(a3 - 8);
  v9 = MEMORY[0x1EEE9AC00](a1);
  v11 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12(v9);
  v13 = a2[3];
  v38 = a2[2];
  v39 = v13;
  v14 = a2[4];
  v26 = v38;
  v27 = v14;
  v15 = a2[5];
  v40 = a3;
  v41 = v14;
  v42 = v15;
  v43 = a4;
  v44 = v11;
  v30 = v38;
  v31 = v13;
  v32 = a3;
  v33 = v14;
  v34 = v15;
  v35 = a4;
  v25[1] = a4;
  v36 = v11;
  v37 = v5;
  type metadata accessor for EnvironmentPropertyKey<PresentationModeKey>(255, &lazy cache variable for type metadata for TransactionalPreferenceTransformModifier<NavigationTitleKey>, &type metadata for NavigationTitleKey, &protocol witness table for NavigationTitleKey, type metadata accessor for TransactionalPreferenceTransformModifier);
  v16 = type metadata accessor for ModifiedContent();
  type metadata accessor for EnvironmentPropertyKey<PresentationModeKey>(255, &lazy cache variable for type metadata for _PreferenceTransformModifier<ToolbarKey>, &type metadata for ToolbarKey, &protocol witness table for ToolbarKey, MEMORY[0x1E6980910]);
  v17 = type metadata accessor for ModifiedContent();
  v18 = type metadata accessor for ModifiedContent();
  v19 = type metadata accessor for ModifiedContent();
  v49[0] = a4;
  v49[1] = &protocol witness table for TransactionalPreferenceTransformModifier<A>;
  v20 = MEMORY[0x1E697E858];
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E697E858], v16, v49);
  v22 = lazy protocol witness table accessor for type _PreferenceTransformModifier<ToolbarKey> and conformance _PreferenceTransformModifier<A>();
  v48[0] = WitnessTable;
  v48[1] = v22;
  v47[0] = swift_getWitnessTable(v20, v17, v48);
  v47[1] = &protocol witness table for TransactionalPreferenceTransformModifier<A>;
  v46[0] = swift_getWitnessTable(v20, v18, v47);
  v46[1] = v22;
  v23 = swift_getWitnessTable(v20, v19, v46);
  v45[0] = &type metadata for TextPlatformItemListFlags;
  v45[1] = v19;
  v45[2] = v26;
  v45[3] = &protocol witness table for TextPlatformItemListFlags;
  v45[4] = v23;
  v45[5] = v27;
  type metadata accessor for PlatformItemListReader(0, v45);
  lazy protocol witness table accessor for type ListPickerStyleIsGroupedPredicate and conformance ListPickerStyleIsGroupedPredicate();
  StaticIf<>.init(_:then:else:)();
  return (*(v29 + 8))(v11, a3);
}

uint64_t closure #1 in ListPicker.resolvedList<A>(list:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static ViewBuilder.buildExpression<A>(_:)();
  static ViewBuilder.buildExpression<A>(_:)();
  return (*(v5 + 8))(v7, a4);
}

uint64_t closure #2 in ListPicker.resolvedList<A>(list:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v46 = a8;
  v52 = a7;
  v51 = a4;
  v53 = a2;
  v50 = a1;
  v54 = a9;
  v48 = *(a5 - 8);
  v49 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v47 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for EnvironmentPropertyKey<PresentationModeKey>(255, &lazy cache variable for type metadata for TransactionalPreferenceTransformModifier<NavigationTitleKey>, &type metadata for NavigationTitleKey, &protocol witness table for NavigationTitleKey, type metadata accessor for TransactionalPreferenceTransformModifier);
  v14 = type metadata accessor for ModifiedContent();
  type metadata accessor for EnvironmentPropertyKey<PresentationModeKey>(255, &lazy cache variable for type metadata for _PreferenceTransformModifier<ToolbarKey>, &type metadata for ToolbarKey, &protocol witness table for ToolbarKey, MEMORY[0x1E6980910]);
  v15 = type metadata accessor for ModifiedContent();
  v16 = type metadata accessor for ModifiedContent();
  v17 = type metadata accessor for ModifiedContent();
  v66[0] = a8;
  v66[1] = &protocol witness table for TransactionalPreferenceTransformModifier<A>;
  v18 = MEMORY[0x1E697E858];
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E697E858], v14, v66);
  v20 = lazy protocol witness table accessor for type _PreferenceTransformModifier<ToolbarKey> and conformance _PreferenceTransformModifier<A>();
  v65[0] = WitnessTable;
  v65[1] = v20;
  v64[0] = swift_getWitnessTable(v18, v15, v65);
  v64[1] = &protocol witness table for TransactionalPreferenceTransformModifier<A>;
  v63[0] = swift_getWitnessTable(v18, v16, v64);
  v63[1] = v20;
  v45 = v17;
  v42 = swift_getWitnessTable(v18, v17, v63);
  v62[0] = &type metadata for TextPlatformItemListFlags;
  v62[1] = v17;
  v21 = a3;
  v62[2] = a3;
  v62[3] = &protocol witness table for TextPlatformItemListFlags;
  v62[4] = v42;
  v62[5] = a6;
  v43 = type metadata accessor for PlatformItemListReader(0, v62);
  v44 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v23 = &v41 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v24);
  v41 = &v41 - v26;
  v27 = v48;
  v28 = v47;
  (*(v48 + 16))(v47, v50, a5, v25);
  v29 = (*(v27 + 80) + 64) & ~*(v27 + 80);
  v30 = swift_allocObject();
  v31 = v51;
  v30[2] = v21;
  v30[3] = v31;
  v32 = a5;
  v30[4] = a5;
  v30[5] = a6;
  v33 = v52;
  v34 = v46;
  v30[6] = v52;
  v30[7] = v34;
  v35 = v30 + v29;
  v36 = v32;
  (*(v27 + 32))(v35, v28);
  v55 = v21;
  v56 = v31;
  v57 = v36;
  v58 = a6;
  v59 = v33;
  v60 = v34;
  v61 = v53;
  PlatformItemListReader.init(flags:content:source:)(partial apply for closure #1 in closure #2 in ListPicker.resolvedList<A>(list:), v30, &type metadata for TextPlatformItemListFlags, v45, v21, v23, &protocol witness table for TextPlatformItemListFlags, v42, a6);
  v37 = v41;
  v38 = v43;
  static ViewBuilder.buildExpression<A>(_:)();
  v39 = *(v44 + 8);
  v39(v23, v38);
  static ViewBuilder.buildExpression<A>(_:)();
  return v39(v37, v38);
}

uint64_t closure #1 in closure #2 in ListPicker.resolvedList<A>(list:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X4>, uint64_t a4@<X7>, uint64_t a5@<X8>)
{
  v37 = a2;
  v38 = a4;
  v39 = a5;
  v7 = type metadata accessor for PlatformItemList.Item(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = (&v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for EnvironmentPropertyKey<PresentationModeKey>(255, &lazy cache variable for type metadata for TransactionalPreferenceTransformModifier<NavigationTitleKey>, &type metadata for NavigationTitleKey, &protocol witness table for NavigationTitleKey, type metadata accessor for TransactionalPreferenceTransformModifier);
  v36 = a3;
  v10 = type metadata accessor for ModifiedContent();
  type metadata accessor for EnvironmentPropertyKey<PresentationModeKey>(255, &lazy cache variable for type metadata for _PreferenceTransformModifier<ToolbarKey>, &type metadata for ToolbarKey, &protocol witness table for ToolbarKey, MEMORY[0x1E6980910]);
  v11 = type metadata accessor for ModifiedContent();
  v35 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v34 - v12;
  v34 = type metadata accessor for ModifiedContent();
  v14 = type metadata accessor for ModifiedContent();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v34 - v19;
  PlatformItemList.mergedContentItem.getter(a1, v9);
  v21 = *v9;
  v22 = *v9;
  outlined destroy of PlatformItemList.Item(v9);
  if (v21)
  {
    v23 = [v22 string];

    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v25;
  }

  else
  {
    v24 = 0;
    v26 = 0xE000000000000000;
  }

  v44[0] = v24;
  v44[1] = v26;
  lazy protocol witness table accessor for type String and conformance String();
  v27 = v38;
  View.navigationTitle<A>(_:)(v44, v36, v38, v13);

  LOBYTE(v44[0]) = 1;
  v43[0] = v27;
  v43[1] = &protocol witness table for TransactionalPreferenceTransformModifier<A>;
  v28 = MEMORY[0x1E697E858];
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E697E858], v10, v43);
  v30 = lazy protocol witness table accessor for type _PreferenceTransformModifier<ToolbarKey> and conformance _PreferenceTransformModifier<A>();
  v42[0] = WitnessTable;
  v42[1] = v30;
  v31 = swift_getWitnessTable(v28, v11, v42);
  View.navigationBarTitleDisplayMode(_:)(v44, v11, v31, v17);
  (*(v35 + 8))(v13, v11);
  v41[0] = v31;
  v41[1] = &protocol witness table for TransactionalPreferenceTransformModifier<A>;
  v40[0] = swift_getWitnessTable(v28, v34, v41);
  v40[1] = v30;
  swift_getWitnessTable(v28, v14, v40);
  static ViewBuilder.buildExpression<A>(_:)();
  v32 = *(v15 + 8);
  v32(v17, v14);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v32)(v20, v14);
}

uint64_t closure #2 in closure #2 in closure #1 in NavigationPickerButton.body.getter(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static ViewBuilder.buildExpression<A>(_:)();
  static ViewBuilder.buildExpression<A>(_:)();
  return (*(v3 + 8))(v5, a2);
}

uint64_t protocol witness for static ViewInputPredicate.evaluate(inputs:) in conformance ListPickerStyleIsGroupedPredicate(_OWORD *a1)
{
  if ((static StyleContextAcceptsPredicate.evaluate(inputs:)() & 1) != 0 && (static Semantics.v4_4.getter(), (isLinkedOnOrAfter(_:)() & 1) == 0))
  {
    v1 = 1;
  }

  else
  {
    static Semantics.v4.getter();
    v1 = isLinkedOnOrAfter(_:)() ^ 1;
  }

  return v1 & 1;
}

void key path getter for EnvironmentValues.dismiss : EnvironmentValues(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  if (a1[1])
  {
    type metadata accessor for EnvironmentPropertyKey<PresentationModeKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<PresentationModeKey>, &type metadata for PresentationModeKey, &protocol witness table for PresentationModeKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<PresentationModeKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<PresentationModeKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<PresentationModeKey>, &type metadata for PresentationModeKey, &protocol witness table for PresentationModeKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<PresentationModeKey> and conformance EnvironmentPropertyKey<A>();
    PropertyList.subscript.getter();
  }

  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
}

uint64_t type metadata completion function for NavigationPickerButton.DetailView(uint64_t a1)
{
  result = type metadata accessor for Binding();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for NavigationPickerButton.DetailView(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(a3 + 32);
  v4 = *(a3 + 40);
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = *(v4 - 8);
  v9 = *(v8 + 80);
  v10 = ((v7 + 16) & ~v7) + *(v6 + 64) + v9;
  v11 = *(v8 + 64) + 7;
  v12 = (*(v8 + 80) | *(v6 + 80)) & 0x100000;
  v13 = *a2;
  *a1 = *a2;
  if ((v9 | v7) > 7 || v12 != 0 || ((v11 + (v10 & ~v9)) & 0xFFFFFFFFFFFFFFF8) + 18 > 0x18)
  {
    a1 = (v13 + (((v9 | v7) & 0xF8 ^ 0x1F8) & ((v9 | v7) + 16)));
  }

  else
  {
    v16 = ~v9;
    v17 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
    v18 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v17 = *v18;
    v19 = *(v6 + 16);
    v26 = v4;

    v19(v17 + 1, v18 + 1, v5);
    (*(v8 + 16))((a1 + v10) & v16, (a2 + v10) & v16, v26);
    v20 = (v11 + ((a1 + v10) & v16)) & 0xFFFFFFFFFFFFFFF8;
    v21 = (v11 + ((a2 + v10) & v16)) & 0xFFFFFFFFFFFFFFF8;
    v22 = *v21;
    v23 = *(v21 + 8);
    LOBYTE(v17) = *(v21 + 17);
    LOBYTE(v18) = *(v21 + 16);
    outlined copy of Environment<DismissAction>.Content(*v21, v23, v18, v17);
    *v20 = v22;
    *(v20 + 8) = v23;
    *(v20 + 16) = v18;
    *(v20 + 17) = v17;
  }

  return a1;
}

double destroy for NavigationPickerButton.DetailView(uint64_t a1, uint64_t a2)
{
  v4 = a1 + 15;

  v5 = *(*(a2 + 32) - 8);
  v6 = v5 + 8;
  v7 = *(v5 + 80);
  (*(v5 + 8))(((v4 & 0xFFFFFFFFFFFFFFF8) + v7 + 8) & ~v7);
  v8 = *(*(a2 + 40) - 8);
  v9 = v8 + 8;
  v10 = (*(v6 + 56) + a1 + *(v8 + 80) + ((v7 + 16) & ~v7)) & ~*(v8 + 80);
  (*(v8 + 8))(v10);
  v11 = (*(v9 + 56) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = *v11;
  v13 = *(v11 + 8);
  v14 = *(v11 + 17);
  v15 = *(v11 + 16);

  return outlined consume of Environment<DismissAction>.Content(v12, v13, v15, v14);
}

uint64_t *initializeWithCopy for NavigationPickerButton.DetailView(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  *a1 = *a2;
  v6 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  v7 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v6 = *v7;
  v8 = *(a3 + 32);
  v9 = *(*(v8 - 8) + 16);
  v10 = *(v8 - 8) + 16;
  v11 = *(*(v8 - 8) + 80);
  v12 = v6 + v11 + 8;
  v13 = v7 + v11 + 8;

  v9(v12 & ~v11, v13 & ~v11, v8);
  v14 = *(*(a3 + 40) - 8);
  v15 = v14 + 16;
  v16 = *(v14 + 80);
  v17 = ((v11 + 16) & ~v11) + *(v10 + 48) + v16;
  v18 = (a1 + v17) & ~v16;
  v19 = (a2 + v17) & ~v16;
  (*(v14 + 16))(v18, v19);
  v20 = *(v15 + 48) + 7;
  v21 = (v20 + v18) & 0xFFFFFFFFFFFFFFF8;
  v22 = (v20 + v19) & 0xFFFFFFFFFFFFFFF8;
  v23 = *v22;
  v24 = *(v22 + 8);
  LOBYTE(v15) = *(v22 + 17);
  LOBYTE(v8) = *(v22 + 16);
  outlined copy of Environment<DismissAction>.Content(*v22, v24, v8, v15);
  *v21 = v23;
  *(v21 + 8) = v24;
  *(v21 + 16) = v8;
  *(v21 + 17) = v15;
  return a1;
}

uint64_t *assignWithCopy for NavigationPickerButton.DetailView(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v6 = a2 + 15;
  *a1 = *a2;

  v7 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  v6 &= 0xFFFFFFFFFFFFFFF8;
  *v7 = *v6;

  v8 = *(*(a3 + 32) - 8);
  v9 = v8 + 24;
  v10 = *(v8 + 80);
  (*(v8 + 24))((v7 + v10 + 8) & ~v10, (v10 + 8 + v6) & ~v10);
  v11 = *(v9 + 40);
  v12 = *(*(a3 + 40) - 8);
  v13 = v12 + 24;
  v14 = *(v12 + 80);
  v15 = ((v10 + 16) & ~v10) + v11 + v14;
  v16 = (a1 + v15) & ~v14;
  v17 = (a2 + v15) & ~v14;
  (*(v12 + 24))(v16, v17);
  v18 = *(v13 + 40) + 7;
  v19 = (v18 + v16) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v18 + v17) & 0xFFFFFFFFFFFFFFF8;
  v21 = *v20;
  v22 = *(v20 + 8);
  LOBYTE(v13) = *(v20 + 17);
  LOBYTE(v6) = *(v20 + 16);
  outlined copy of Environment<DismissAction>.Content(*v20, v22, v6, v13);
  v23 = *v19;
  v24 = *(v19 + 8);
  v25 = *(v19 + 17);
  *v19 = v21;
  *(v19 + 8) = v22;
  v26 = *(v19 + 16);
  *(v19 + 16) = v6;
  *(v19 + 17) = v13;
  outlined consume of Environment<DismissAction>.Content(v23, v24, v26, v25);
  return a1;
}

void *initializeWithTake for NavigationPickerButton.DetailView(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v6 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  v7 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v6 = *v7;
  v8 = *(*(a3 + 32) - 8);
  v9 = v8 + 32;
  v10 = *(v8 + 80);
  (*(v8 + 32))((v6 + v10 + 8) & ~v10, (v7 + v10 + 8) & ~v10);
  v11 = *(v9 + 32);
  v12 = *(*(a3 + 40) - 8);
  v13 = v12 + 32;
  v14 = *(v12 + 80);
  v15 = ((v10 + 16) & ~v10) + v11 + v14;
  v16 = (a1 + v15) & ~v14;
  v17 = (a2 + v15) & ~v14;
  (*(v12 + 32))(v16, v17);
  v18 = *(v13 + 32) + 7;
  v19 = (v18 + v16) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v18 + v17) & 0xFFFFFFFFFFFFFFF8;
  v21 = *(v20 + 16);
  *v19 = *v20;
  *(v19 + 16) = v21;
  return a1;
}

void *assignWithTake for NavigationPickerButton.DetailView(void *a1, void *a2, uint64_t a3)
{
  v6 = a2 + 15;
  *a1 = *a2;

  v7 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  v6 &= 0xFFFFFFFFFFFFFFF8;
  *v7 = *v6;

  v8 = *(*(a3 + 32) - 8);
  v9 = v8 + 40;
  v10 = *(v8 + 80);
  (*(v8 + 40))((v7 + v10 + 8) & ~v10, (v10 + 8 + v6) & ~v10);
  v11 = *(*(a3 + 40) - 8);
  v12 = v11 + 40;
  v13 = *(v11 + 80);
  v14 = ((v10 + 16) & ~v10) + *(v9 + 24) + v13;
  v15 = (a1 + v14) & ~v13;
  v16 = (a2 + v14) & ~v13;
  (*(v11 + 40))(v15, v16);
  v17 = *(v12 + 24) + 7;
  v18 = (v17 + v15) & 0xFFFFFFFFFFFFFFF8;
  v19 = (v17 + v16) & 0xFFFFFFFFFFFFFFF8;
  v20 = *(v19 + 16);
  v21 = *(v19 + 17);
  v22 = *v18;
  v23 = *(v18 + 8);
  v24 = *(v18 + 17);
  *v18 = *v19;
  v25 = *(v18 + 16);
  *(v18 + 16) = v20;
  *(v18 + 17) = v21;
  outlined consume of Environment<DismissAction>.Content(v22, v23, v25, v24);
  return a1;
}

uint64_t getEnumTagSinglePayload for NavigationPickerButton.DetailView(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 32) - 8);
  v5 = *(v4 + 84);
  if (v5 <= 0x7FFFFFFF)
  {
    v6 = 0x7FFFFFFF;
  }

  else
  {
    v6 = *(v4 + 84);
  }

  v7 = *(a3 + 40);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(v4 + 80);
  v11 = *(v8 + 80);
  if (v9 <= v6)
  {
    v12 = v6;
  }

  else
  {
    v12 = *(v8 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v13 = ((v10 + 16) & ~v10) + *(*(*(a3 + 32) - 8) + 64) + v11;
  if (v12 >= a2)
  {
    goto LABEL_31;
  }

  v14 = ((*(*(v7 - 8) + 64) + (v13 & ~v11) + 7) & 0xFFFFFFFFFFFFFFF8) + 18;
  v15 = (a2 - v12 + 0xFFFF) >> 16;
  if (v14 <= 3)
  {
    v16 = v15 + 1;
  }

  else
  {
    v16 = 2;
  }

  if (v16 >= 0x10000)
  {
    v17 = 4;
  }

  else
  {
    v17 = 2;
  }

  if (v16 < 0x100)
  {
    v17 = 1;
  }

  if (v16 >= 2)
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  if (v18 > 1)
  {
    if (v18 == 2)
    {
      v19 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_31;
      }
    }

    else
    {
      v19 = *(a1 + v14);
      if (!v19)
      {
        goto LABEL_31;
      }
    }
  }

  else if (!v18 || (v19 = *(a1 + v14), !*(a1 + v14)))
  {
LABEL_31:
    if (v6 < v9)
    {
      return (*(v8 + 48))((a1 + v13) & ~v11, v9, v7);
    }

    v23 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
    if ((v5 & 0x80000000) != 0)
    {
      return (*(v4 + 48))((v23 + v10 + 8) & ~v10);
    }

    v24 = *v23;
    if (v24 >= 0xFFFFFFFF)
    {
      LODWORD(v24) = -1;
    }

    return (v24 + 1);
  }

  v21 = (v19 - 1) << (8 * v14);
  if (v14 <= 3)
  {
    v22 = *a1;
  }

  else
  {
    v21 = 0;
    v22 = *a1;
  }

  return v12 + (v22 | v21) + 1;
}

void storeEnumTagSinglePayload for NavigationPickerButton.DetailView(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 32) - 8);
  v7 = *(v6 + 84);
  v8 = *(*(a4 + 40) - 8);
  if (v7 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v6 + 84);
  }

  v10 = *(v8 + 84);
  v11 = *(v6 + 80);
  v12 = *(v8 + 80);
  if (v10 <= v9)
  {
    v13 = v9;
  }

  else
  {
    v13 = *(v8 + 84);
  }

  v14 = ((v11 + 16) & ~v11) + *(*(*(a4 + 32) - 8) + 64);
  v15 = ((*(v8 + 64) + ((v14 + v12) & ~v12) + 7) & 0xFFFFFFFFFFFFFFF8) + 18;
  if (v13 >= a3)
  {
    v19 = 0;
    if (v13 >= a2)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v16 = (a3 - v13 + 0xFFFF) >> 16;
    if (v15 <= 3)
    {
      v17 = v16 + 1;
    }

    else
    {
      v17 = 2;
    }

    if (v17 >= 0x10000)
    {
      v18 = 4;
    }

    else
    {
      v18 = 2;
    }

    if (v17 < 0x100)
    {
      v18 = 1;
    }

    if (v17 >= 2)
    {
      v19 = v18;
    }

    else
    {
      v19 = 0;
    }

    if (v13 >= a2)
    {
LABEL_20:
      if (v19 > 1)
      {
        if (v19 != 2)
        {
          *&a1[v15] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_35;
        }

        *&a1[v15] = 0;
      }

      else if (v19)
      {
        a1[v15] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_35;
      }

      if (!a2)
      {
        return;
      }

LABEL_35:
      if (v9 >= v10)
      {
        if (v9 >= a2)
        {
          v26 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
          if ((v7 & 0x80000000) != 0)
          {
            v28 = *(v6 + 56);

            v28((v26 + v11 + 8) & ~v11);
          }

          else
          {
            if ((a2 & 0x80000000) != 0)
            {
              v27 = a2 & 0x7FFFFFFF;
            }

            else
            {
              v27 = a2 - 1;
            }

            *v26 = v27;
          }
        }

        else
        {
          if (v14 <= 3)
          {
            v23 = ~(-1 << (8 * v14));
          }

          else
          {
            v23 = -1;
          }

          if (v14)
          {
            v24 = v23 & (~v9 + a2);
            if (v14 <= 3)
            {
              v25 = v14;
            }

            else
            {
              v25 = 4;
            }

            bzero(a1, v14);
            if (v25 > 2)
            {
              if (v25 == 3)
              {
                *a1 = v24;
                a1[2] = BYTE2(v24);
              }

              else
              {
                *a1 = v24;
              }
            }

            else if (v25 == 1)
            {
              *a1 = v24;
            }

            else
            {
              *a1 = v24;
            }
          }
        }
      }

      else
      {
        v22 = *(v8 + 56);

        v22(&a1[v14 + v12] & ~v12);
      }

      return;
    }
  }

  v20 = ~v13 + a2;
  bzero(a1, v15);
  if (v15 <= 3)
  {
    v21 = HIWORD(v20) + 1;
  }

  else
  {
    v21 = 1;
  }

  if (v15 <= 3)
  {
    *a1 = v20;
    if (v19 > 1)
    {
LABEL_30:
      if (v19 == 2)
      {
        *&a1[v15] = v21;
      }

      else
      {
        *&a1[v15] = v21;
      }

      return;
    }
  }

  else
  {
    *a1 = v20;
    if (v19 > 1)
    {
      goto LABEL_30;
    }
  }

  if (v19)
  {
    a1[v15] = v21;
  }
}

uint64_t type metadata completion function for ListPicker(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Binding();
    if (v3 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for ListPicker(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = v8 | *(v4 + 80) & 0xF8;
  if (v9 > 7 || ((*(v4 + 80) | *(v7 + 80)) & 0x100000) != 0 || ((-17 - v8) | v8) - *(v7 + 64) + ((-65 - ((v5 + 7) & 0xFFFFFFFFFFFFFFF8) - (v8 | 7)) | v8 | 7) + 26 > 0x18)
  {
    v12 = *a2;
    *v3 = *a2;
    v3 = (v12 + (((v9 | 7) + 16) & ~(v9 | 7)));
  }

  else
  {
    (*(v4 + 16))(a1);
    v14 = v3 + v5;
    v15 = a2 + v5;
    v16 = ((v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
    v17 = ((v15 + 7) & 0xFFFFFFFFFFFFFFF8);
    v18 = v17[3];
    v16[3] = v18;
    v16[4] = v17[4];
    (**(v18 - 8))(v16, v17);
    v19 = v17[5];
    v16[5] = v19;
    v16[6] = v17[6];
    v16[7] = v17[7];
    v20 = ((v14 + 71) & 0xFFFFFFFFFFFFFFF8);
    v21 = ((v15 + 71) & 0xFFFFFFFFFFFFFFF8);
    *v20 = *v21;
    v22 = ((v20 + 15) & 0xFFFFFFFFFFFFFFF8);
    v23 = ((v21 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v22 = *v23;
    v24 = *(v7 + 16);
    v25 = v19;

    v24(v22 + 1, v23 + 1, v6);
  }

  return v3;
}

uint64_t destroy for ListPicker(uint64_t a1, uint64_t a2)
{
  v4 = *(*(a2 + 16) - 8) + 8;
  (*v4)();
  v5 = (a1 + *(v4 + 56) + 7) & 0xFFFFFFFFFFFFFFF8;
  __swift_destroy_boxed_opaque_existential_1(v5);

  v6 = *(a2 + 24);
  v10 = *(v6 - 8);
  v7 = *(v10 + 80);

  v8 = *(v10 + 8);

  return v8((v7 + ((((v5 + (v7 | 7) + 64) & ~(v7 | 7)) + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v7, v6);
}

uint64_t initializeWithCopy for ListPicker(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 16;
  (*v6)();
  v7 = *(v6 + 48) + 7;
  v8 = ((v7 + a1) & 0xFFFFFFFFFFFFFFF8);
  v9 = ((v7 + a2) & 0xFFFFFFFFFFFFFFF8);
  v10 = v9[3];
  v8[3] = v10;
  v8[4] = v9[4];
  (**(v10 - 8))(v8, v9);
  v11 = v9[5];
  v8[5] = v11;
  v8[6] = v9[6];
  v8[7] = v9[7];
  v12 = *(a3 + 24);
  v13 = *(v12 - 8);
  v14 = *(v13 + 16);
  v15 = *(v13 + 80);
  v16 = *(v13 + 80) & 0xF8 ^ 0xFFFFFFFFFFFFFFF8;
  v17 = ((v8 + v15 + 64) & v16);
  v18 = ((v9 + v15 + 64) & v16);
  *v17 = *v18;
  v19 = ((v17 + 15) & 0xFFFFFFFFFFFFFFF8);
  v20 = ((v18 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v19 = *v20;
  v21 = v19 + v15 + 8;
  v22 = v20 + v15 + 8;
  v23 = v11;

  v14(v21 & ~v15, v22 & ~v15, v12);
  return a1;
}

uint64_t assignWithCopy for ListPicker(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 24;
  (*v6)();
  v7 = *(v6 + 40) + 7;
  v8 = ((v7 + a1) & 0xFFFFFFFFFFFFFFF8);
  v9 = ((v7 + a2) & 0xFFFFFFFFFFFFFFF8);
  __swift_assign_boxed_opaque_existential_1(v8, v9);
  v10 = v9[5];
  v11 = v8[5];
  v8[5] = v10;
  v12 = v10;

  v8[6] = v9[6];

  v8[7] = v9[7];
  v13 = *(a3 + 24);
  v14 = *(v13 - 8);
  v15 = *(v14 + 80);
  v16 = v8 + v15 + 64;
  v17 = *(v14 + 80) & 0xF8 ^ 0xFFFFFFFFFFFFFFF8;
  v18 = v9 + v15 + 64;
  v19 = (v18 & v17) + 15;
  *(v16 & v17) = *(v18 & v17);
  v20 = (v16 & v17) + 15;

  v20 &= 0xFFFFFFFFFFFFFFF8;
  v19 &= 0xFFFFFFFFFFFFFFF8;
  *v20 = *v19;

  (*(v14 + 24))((v15 + 8 + v20) & ~v15, (v15 + 8 + v19) & ~v15, v13);
  return a1;
}

uint64_t initializeWithTake for ListPicker(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 32;
  (*v6)();
  v7 = *(v6 + 32) + 7;
  v8 = ((v7 + a1) & 0xFFFFFFFFFFFFFFF8);
  v9 = ((v7 + a2) & 0xFFFFFFFFFFFFFFF8);
  v10 = v9[3];
  v12 = *v9;
  v11 = v9[1];
  v8[2] = v9[2];
  v8[3] = v10;
  *v8 = v12;
  v8[1] = v11;
  v13 = *(*(a3 + 24) - 8);
  v14 = *(v13 + 80);
  v15 = *(v13 + 80) & 0xF8 ^ 0xFFFFFFFFFFFFFFF8;
  v16 = ((v9 + v14 + 64) & v15);
  v17 = ((v8 + v14 + 64) & v15);
  *v17 = *v16;
  v18 = ((v17 + 15) & 0xFFFFFFFFFFFFFFF8);
  v19 = ((v16 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v18 = *v19;
  (*(v13 + 32))((v18 + v14 + 8) & ~v14, (v19 + v14 + 8) & ~v14);
  return a1;
}

uint64_t assignWithTake for ListPicker(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 40;
  (*v6)();
  v7 = *(v6 + 24) + 7;
  v8 = (v7 + a1) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v7 + a2) & 0xFFFFFFFFFFFFFFF8;
  __swift_destroy_boxed_opaque_existential_1(v8);
  v10 = *v9;
  v11 = *(v9 + 16);
  *(v8 + 32) = *(v9 + 32);
  *v8 = v10;
  *(v8 + 16) = v11;
  v12 = *(v8 + 40);
  *(v8 + 40) = *(v9 + 40);

  *(v8 + 48) = *(v9 + 48);

  *(v8 + 56) = *(v9 + 56);
  v13 = *(a3 + 24);
  v14 = *(v13 - 8);
  v15 = *(v14 + 80);
  v16 = *(v14 + 80) & 0xF8 ^ 0xFFFFFFFFFFFFFFF8;
  v17 = ((v15 + 64 + v8) & v16);
  v18 = v15 + 64 + v9;
  v19 = (v18 & v16) + 15;
  *v17 = *(v18 & v16);

  v20 = ((v17 + 15) & 0xFFFFFFFFFFFFFFF8);
  v19 &= 0xFFFFFFFFFFFFFFF8;
  *v20 = *v19;

  (*(v14 + 40))((v20 + v15 + 8) & ~v15, (v15 + 8 + v19) & ~v15, v13);
  return a1;
}

uint64_t getEnumTagSinglePayload for ListPicker(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = *(v3 + 84);
  v5 = *(*(a3 + 24) - 8);
  v6 = *(v3 + 64);
  v7 = *(v5 + 80);
  if (*(v5 + 84) <= v4)
  {
    v8 = *(v3 + 84);
  }

  else
  {
    v8 = *(v5 + 84);
  }

  if (v8 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  if (!a2)
  {
    return 0;
  }

  v9 = v7 | 7;
  if (a2 <= v8)
  {
    goto LABEL_30;
  }

  v10 = *(v5 + 64) - ((-17 - v7) | v7) - ((-65 - (((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + v9)) | v9) - 2;
  v11 = 8 * v10;
  if (v10 <= 3)
  {
    v14 = ((a2 - v8 + ~(-1 << v11)) >> v11) + 1;
    if (HIWORD(v14))
    {
      v12 = *(a1 + v10);
      if (!v12)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    if (v14 > 0xFF)
    {
      v12 = *(a1 + v10);
      if (!*(a1 + v10))
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    if (v14 < 2)
    {
LABEL_30:
      if (v4 == v8)
      {
        return (*(v3 + 48))();
      }

      v18 = (a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
      if ((v8 & 0x80000000) != 0)
      {
        return (*(v5 + 48))((v7 + ((((v18 + v9 + 64) & ~v9) + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v7);
      }

      v19 = *(v18 + 24);
      if (v19 >= 0xFFFFFFFF)
      {
        LODWORD(v19) = -1;
      }

      return (v19 + 1);
    }
  }

  v12 = *(a1 + v10);
  if (!*(a1 + v10))
  {
    goto LABEL_30;
  }

LABEL_17:
  v15 = (v12 - 1) << v11;
  if (v10 > 3)
  {
    v15 = 0;
  }

  if (*(v5 + 64) - ((-17 - v7) | v7) - ((-65 - (((v6 + 7) & 0xFFFFFFF8) + v9)) | v9) == 2)
  {
    v17 = 0;
  }

  else
  {
    if (v10 <= 3)
    {
      v16 = *(v5 + 64) - ((-17 - v7) | v7) - ((-65 - (((v6 + 7) & 0xFFFFFFF8) + v9)) | v9) - 2;
    }

    else
    {
      v16 = 4;
    }

    if (v16 > 2)
    {
      if (v16 == 3)
      {
        v17 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v17 = *a1;
      }
    }

    else if (v16 == 1)
    {
      v17 = *a1;
    }

    else
    {
      v17 = *a1;
    }
  }

  return v8 + (v17 | v15) + 1;
}

double storeEnumTagSinglePayload for ListPicker(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v4 = *(*(a4 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(*(a4 + 24) - 8);
  v7 = *(v4 + 64);
  v8 = *(v6 + 80);
  if (*(v6 + 84) <= 0x7FFFFFFFu)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v6 + 84);
  }

  if (v5 <= v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = *(v4 + 84);
  }

  v11 = -2 - (((-17 - v8) | v8) - *(v6 + 64)) - ((((-8 - v7) | 7) - v8 - 64) | v8 | 7);
  if (a3 > v10)
  {
    if (v11 <= 3)
    {
      v17 = ((a3 - v10 + ~(-1 << (8 * v11))) >> (8 * v11)) + 1;
      if (HIWORD(v17))
      {
        v12 = 4;
      }

      else
      {
        if (v17 < 0x100)
        {
          v18 = 1;
        }

        else
        {
          v18 = 2;
        }

        if (v17 >= 2)
        {
          v12 = v18;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v10 < a2)
  {
    v13 = ~v10 + a2;
    if (v11 < 4)
    {
      v16 = (v13 >> (8 * v11)) + 1;
      if (v11)
      {
        v19 = v13 & ~(-1 << (8 * v11));
        v20 = a1;
        bzero(a1, v11);
        a1 = v20;
        if (v11 != 3)
        {
          if (v11 == 2)
          {
            *v20 = v19;
            if (v12 > 1)
            {
LABEL_52:
              if (v12 == 2)
              {
                *&a1[v11] = v16;
              }

              else
              {
                *&a1[v11] = v16;
              }

              return result;
            }
          }

          else
          {
            *v20 = v13;
            if (v12 > 1)
            {
              goto LABEL_52;
            }
          }

          goto LABEL_49;
        }

        *v20 = v19;
        v20[2] = BYTE2(v19);
      }

      if (v12 > 1)
      {
        goto LABEL_52;
      }
    }

    else
    {
      v14 = a1;
      bzero(a1, v11);
      a1 = v14;
      *v14 = v13;
      v16 = 1;
      if (v12 > 1)
      {
        goto LABEL_52;
      }
    }

LABEL_49:
    if (v12)
    {
      a1[v11] = v16;
    }

    return result;
  }

  if (v12 > 1)
  {
    if (v12 != 2)
    {
      *&a1[v11] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_34;
    }

    *&a1[v11] = 0;
  }

  else if (v12)
  {
    a1[v11] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_34;
  }

  if (!a2)
  {
    return result;
  }

LABEL_34:
  if (v5 >= v9)
  {
    v22 = *(v4 + 56);

    v22();
  }

  else
  {
    v21 = &a1[v7 + 7] & 0xFFFFFFFFFFFFFFF8;
    if ((v10 & 0x80000000) != 0)
    {
      v23 = *(v6 + 56);

      v23((v8 + ((((v21 + (v8 | 7) + 64) & ~(v8 | 7)) + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v8);
    }

    else if ((a2 & 0x80000000) != 0)
    {
      *(v21 + 56) = 0;
      result = 0.0;
      *(v21 + 40) = 0u;
      *(v21 + 24) = 0u;
      *(v21 + 8) = 0u;
      *v21 = a2 & 0x7FFFFFFF;
    }

    else
    {
      *(v21 + 24) = a2 - 1;
    }
  }

  return result;
}

double partial apply for closure #1 in NavigationPickerButton.DetailView.body.getter(uint64_t a1)
{
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[8];
  v10 = v1[9];
  v13[0] = v1[2];
  v3 = v13[0];
  v13[1] = v4;
  v13[2] = v5;
  v13[3] = v6;
  v13[4] = v7;
  v13[5] = v8;
  v13[6] = v9;
  v13[7] = v10;
  v11 = *(type metadata accessor for NavigationPickerButton.DetailView(0, v13) - 8);
  return closure #1 in NavigationPickerButton.DetailView.body.getter(a1, v1 + ((*(v11 + 80) + 80) & ~*(v11 + 80)), v3, v4, v5, v6, v7, v8, v9, v10);
}

void type metadata accessor for StaticIf<ListPickerStyleIsGroupedPredicate, ListStyleWriter<GroupedListStyle>, EmptyModifier>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for StaticIf<ListPickerStyleIsGroupedPredicate, ListStyleWriter<GroupedListStyle>, EmptyModifier>)
  {
    type metadata accessor for EnvironmentPropertyKey<PresentationModeKey>(255, &lazy cache variable for type metadata for ListStyleWriter<GroupedListStyle>, &type metadata for GroupedListStyle, &protocol witness table for GroupedListStyle, type metadata accessor for ListStyleWriter);
    v1 = type metadata accessor for StaticIf();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for StaticIf<ListPickerStyleIsGroupedPredicate, ListStyleWriter<GroupedListStyle>, EmptyModifier>);
    }
  }
}

void type metadata accessor for StaticIf<StyleContextAcceptsPredicate<AnyFormStyleContext>, ListStyleWriter<InsetGroupedListStyle>, EmptyModifier>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<AnyFormStyleContext>, ListStyleWriter<InsetGroupedListStyle>, EmptyModifier>)
  {
    _s7SwiftUI4FontVSgMaTm_2(255, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<AnyFormStyleContext>, &type metadata for AnyFormStyleContext, MEMORY[0x1E69808E8]);
    type metadata accessor for EnvironmentPropertyKey<PresentationModeKey>(255, &lazy cache variable for type metadata for ListStyleWriter<InsetGroupedListStyle>, &type metadata for InsetGroupedListStyle, &protocol witness table for InsetGroupedListStyle, type metadata accessor for ListStyleWriter);
    v1 = type metadata accessor for StaticIf();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<AnyFormStyleContext>, ListStyleWriter<InsetGroupedListStyle>, EmptyModifier>);
    }
  }
}

void type metadata accessor for _LabeledContentStyleModifier<AdaptiveLeadingTrailingLabeledContentStyle>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void type metadata accessor for EnvironmentPropertyKey<PresentationModeKey>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

unint64_t lazy protocol witness table accessor for type ListPickerStyleIsGroupedPredicate and conformance ListPickerStyleIsGroupedPredicate()
{
  result = lazy protocol witness table cache variable for type ListPickerStyleIsGroupedPredicate and conformance ListPickerStyleIsGroupedPredicate;
  if (!lazy protocol witness table cache variable for type ListPickerStyleIsGroupedPredicate and conformance ListPickerStyleIsGroupedPredicate)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ListPickerStyleIsGroupedPredicate, &unk_1EFFFEDF8, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ListPickerStyleIsGroupedPredicate and conformance ListPickerStyleIsGroupedPredicate);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type StaticIf<ListPickerStyleIsGroupedPredicate, ListStyleWriter<GroupedListStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    v7[0] = a3();
    v7[1] = &protocol witness table for ListStyleWriter<A>;
    v7[2] = MEMORY[0x1E697E100];
    result = swift_getWitnessTable(MEMORY[0x1E6981CE0], v6, v7);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StyleContextAcceptsPredicate<AnyFormStyleContext> and conformance StyleContextAcceptsPredicate<A>()
{
  result = lazy protocol witness table cache variable for type StyleContextAcceptsPredicate<AnyFormStyleContext> and conformance StyleContextAcceptsPredicate<A>;
  if (!lazy protocol witness table cache variable for type StyleContextAcceptsPredicate<AnyFormStyleContext> and conformance StyleContextAcceptsPredicate<A>)
  {
    _s7SwiftUI4FontVSgMaTm_2(255, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<AnyFormStyleContext>, &type metadata for AnyFormStyleContext, MEMORY[0x1E69808E8]);
    result = swift_getWitnessTable(MEMORY[0x1E69808F0], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type StyleContextAcceptsPredicate<AnyFormStyleContext> and conformance StyleContextAcceptsPredicate<A>);
  }

  return result;
}

uint64_t destroy for TableRowView(uint64_t a1)
{
  outlined consume of Environment<Selector?>.Content(*a1, *(a1 + 8));
  outlined consume of Environment<Selector?>.Content(*(a1 + 16), *(a1 + 24));
  outlined consume of Environment<Selector?>.Content(*(a1 + 32), *(a1 + 40));
  v2 = *(a1 + 123);
  if (v2 == 2)
  {

    if (*(a1 + 64))
    {
    }

    if (*(a1 + 120))
    {

      goto LABEL_13;
    }

    v3 = (a1 + 80);
  }

  else if (v2 == 1)
  {

    if (*(a1 + 96))
    {
      goto LABEL_13;
    }

    v3 = (a1 + 56);
  }

  else
  {
    if (*(a1 + 123))
    {
      goto LABEL_13;
    }

    v3 = (a1 + 72);
  }

  __swift_destroy_boxed_opaque_existential_1(v3);
LABEL_13:
}

uint64_t initializeWithCopy for TableRowView(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  outlined copy of Environment<Selector?>.Content(*a2, v5);
  *a1 = v4;
  *(a1 + 8) = v5;
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  outlined copy of Environment<Selector?>.Content(v6, v7);
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  v8 = *(a2 + 32);
  v9 = *(a2 + 40);
  outlined copy of Environment<Selector?>.Content(v8, v9);
  *(a1 + 32) = v8;
  *(a1 + 40) = v9;
  v10 = *(a2 + 123);
  *(a1 + 48) = *(a2 + 48);
  if (v10 == 2)
  {
    v13 = *(a2 + 64);

    if (v13)
    {
      *(a1 + 56) = *(a2 + 56);
      *(a1 + 64) = v13;
      *(a1 + 72) = *(a2 + 72);

      LOBYTE(v13) = *(a2 + 120);
      if (v13)
      {
LABEL_7:
        *(a1 + 80) = *(a2 + 80);

LABEL_12:
        *(a1 + 120) = v13;
        *(a1 + 121) = *(a2 + 121);
        goto LABEL_13;
      }
    }

    else
    {
      *(a1 + 56) = *(a2 + 56);
      *(a1 + 72) = *(a2 + 72);
      v13 = *(a2 + 120);
      if (v13)
      {
        goto LABEL_7;
      }
    }

    v16 = *(a2 + 104);
    *(a1 + 104) = v16;
    (**(v16 - 8))(a1 + 80, a2 + 80);
    goto LABEL_12;
  }

  if (v10 == 1)
  {
    v11 = *(a2 + 96);

    if (v11)
    {
      *(a1 + 56) = *(a2 + 56);
      *(a1 + 72) = *(a2 + 72);
      *(a1 + 81) = *(a2 + 81);
    }

    else
    {
      v12 = *(a2 + 80);
      *(a1 + 80) = v12;
      (**(v12 - 8))(a1 + 56, a2 + 56);
      *(a1 + 96) = 0;
    }
  }

  else
  {
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 64) = *(a2 + 64);
    v14 = *(a2 + 96);
    *(a1 + 96) = v14;
    v15 = **(v14 - 8);

    v15(a1 + 72, a2 + 72, v14);
  }

LABEL_13:
  *(a1 + 123) = v10;
  *(a1 + 128) = *(a2 + 128);

  return a1;
}

uint64_t assignWithCopy for TableRowView(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  outlined copy of Environment<Selector?>.Content(*a2, v5);
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v4;
  *(a1 + 8) = v5;
  outlined consume of Environment<Selector?>.Content(v6, v7);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  outlined copy of Environment<Selector?>.Content(v8, v9);
  v10 = *(a1 + 16);
  v11 = *(a1 + 24);
  *(a1 + 16) = v8;
  *(a1 + 24) = v9;
  outlined consume of Environment<Selector?>.Content(v10, v11);
  v12 = *(a2 + 32);
  v13 = *(a2 + 40);
  outlined copy of Environment<Selector?>.Content(v12, v13);
  v14 = *(a1 + 32);
  v15 = *(a1 + 40);
  *(a1 + 32) = v12;
  *(a1 + 40) = v13;
  outlined consume of Environment<Selector?>.Content(v14, v15);
  if (a1 != a2)
  {
    outlined destroy of TableRowView.Storage(a1 + 48);
    v16 = *(a2 + 123);
    *(a1 + 48) = *(a2 + 48);
    if (v16 != 2)
    {
      if (v16 == 1)
      {
        v17 = *(a2 + 96);

        if (v17)
        {
          v24 = *(a2 + 56);
          v25 = *(a2 + 72);
          *(a1 + 81) = *(a2 + 81);
          *(a1 + 72) = v25;
          *(a1 + 56) = v24;
        }

        else
        {
          v18 = *(a2 + 80);
          *(a1 + 80) = v18;
          *(a1 + 88) = *(a2 + 88);
          (**(v18 - 8))(a1 + 56, a2 + 56);
          *(a1 + 96) = 0;
        }
      }

      else
      {
        v21 = *(a2 + 56);
        *(a1 + 64) = *(a2 + 64);
        *(a1 + 56) = v21;
        v22 = *(a2 + 96);
        *(a1 + 96) = v22;
        v23 = **(v22 - 8);

        v23(a1 + 72, a2 + 72, v22);
      }

      goto LABEL_14;
    }

    v19 = *(a2 + 64);

    if (v19)
    {
      *(a1 + 56) = *(a2 + 56);
      *(a1 + 64) = *(a2 + 64);
      *(a1 + 72) = *(a2 + 72);

      LOBYTE(v20) = *(a2 + 120);
      if (v20)
      {
LABEL_8:
        *(a1 + 80) = *(a2 + 80);

LABEL_13:
        *(a1 + 120) = v20;
        *(a1 + 121) = *(a2 + 121);
        *(a1 + 122) = *(a2 + 122);
LABEL_14:
        *(a1 + 123) = v16;
        goto LABEL_15;
      }
    }

    else
    {
      v26 = *(a2 + 56);
      *(a1 + 72) = *(a2 + 72);
      *(a1 + 56) = v26;
      v20 = *(a2 + 120);
      if (*(a2 + 120))
      {
        goto LABEL_8;
      }
    }

    v27 = *(a2 + 104);
    *(a1 + 104) = v27;
    *(a1 + 112) = *(a2 + 112);
    (**(v27 - 8))(a1 + 80, a2 + 80);
    goto LABEL_13;
  }

LABEL_15:
  *(a1 + 128) = *(a2 + 128);

  return a1;
}

uint64_t assignWithTake for TableRowView(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v4;
  *(a1 + 8) = v5;
  outlined consume of Environment<Selector?>.Content(v6, v7);
  v8 = *(a2 + 24);
  v9 = *(a1 + 16);
  v10 = *(a1 + 24);
  *(a1 + 16) = a2[2];
  *(a1 + 24) = v8;
  outlined consume of Environment<Selector?>.Content(v9, v10);
  v11 = *(a2 + 40);
  v12 = *(a1 + 32);
  v13 = *(a1 + 40);
  *(a1 + 32) = a2[4];
  *(a1 + 40) = v11;
  outlined consume of Environment<Selector?>.Content(v12, v13);
  if (a1 != a2)
  {
    outlined destroy of TableRowView.Storage(a1 + 48);
    v14 = *(a2 + 6);
    *(a1 + 80) = *(a2 + 5);
    *(a1 + 96) = v14;
    *(a1 + 108) = *(a2 + 108);
    v15 = *(a2 + 4);
    *(a1 + 48) = *(a2 + 3);
    *(a1 + 64) = v15;
  }

  *(a1 + 128) = a2[16];

  return a1;
}

uint64_t getEnumTagSinglePayload for TableRowView(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 136))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 128);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for TableRowView(uint64_t result, int a2, int a3)
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
    *(result + 120) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 136) = 1;
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
      *(result + 128) = (a2 - 1);
      return result;
    }

    *(result + 136) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void destroy for TableRowView.Storage(uint64_t a1)
{
  v2 = *(a1 + 75);
  if (v2 >= 3)
  {
    v2 = *a1 + 3;
  }

  if (v2 != 2)
  {
    if (v2 == 1)
    {

      if (*(a1 + 48))
      {
        return;
      }

      v3 = (a1 + 8);
    }

    else
    {

      v3 = (a1 + 24);
    }

    goto LABEL_15;
  }

  if (*(a1 + 16))
  {
  }

  if ((*(a1 + 72) & 1) == 0)
  {
    v3 = (a1 + 32);
LABEL_15:
    __swift_destroy_boxed_opaque_existential_1(v3);
    return;
  }
}

uint64_t initializeWithCopy for TableRowView.Storage(uint64_t a1, uint64_t *a2)
{
  v4 = *(a2 + 75);
  if (v4 >= 3)
  {
    v4 = *a2 + 3;
  }

  v5 = a2 + 1;
  *a1 = *a2;
  v6 = (a1 + 8);
  if (v4 == 2)
  {
    v10 = a2[2];

    if (v10)
    {
      *(a1 + 8) = a2[1];
      *(a1 + 16) = v10;
      *(a1 + 24) = a2[3];

      v11 = *(a2 + 72);
      if (v11)
      {
LABEL_10:
        *(a1 + 32) = a2[4];

LABEL_15:
        *(a1 + 72) = v11;
        *(a1 + 73) = *(a2 + 73);
        v9 = 2;
        goto LABEL_16;
      }
    }

    else
    {
      *v6 = *v5;
      *(a1 + 24) = a2[3];
      v11 = *(a2 + 72);
      if (v11)
      {
        goto LABEL_10;
      }
    }

    v15 = *(a2 + 7);
    *(a1 + 56) = v15;
    (**(v15 - 8))(a1 + 32, a2 + 4);
    goto LABEL_15;
  }

  if (v4 == 1)
  {
    v7 = *(a2 + 48);

    if (v7)
    {
      v14 = *(a2 + 3);
      *v6 = *v5;
      *(a1 + 24) = v14;
      *(a1 + 33) = *(a2 + 33);
    }

    else
    {
      v8 = *(a2 + 2);
      *(a1 + 32) = v8;
      (**(v8 - 8))(a1 + 8, a2 + 1);
      *(a1 + 48) = 0;
    }

    v9 = 1;
  }

  else
  {
    *v6 = *v5;
    *(a1 + 16) = *(a2 + 16);
    v12 = a2[6];
    *(a1 + 48) = v12;
    v13 = **(v12 - 8);

    v13(a1 + 24, a2 + 3, v12);
    v9 = 0;
  }

LABEL_16:
  *(a1 + 75) = v9;
  return a1;
}

uint64_t assignWithCopy for TableRowView.Storage(uint64_t a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v4 = *(a1 + 75);
    if (v4 >= 3)
    {
      v4 = *a1 + 3;
    }

    if (v4 == 2)
    {

      if (*(a1 + 16))
      {
      }

      if (*(a1 + 72))
      {

        goto LABEL_15;
      }

      v5 = (a1 + 32);
    }

    else if (v4 == 1)
    {

      if (*(a1 + 48))
      {
        goto LABEL_15;
      }

      v5 = (a1 + 8);
    }

    else
    {

      v5 = (a1 + 24);
    }

    __swift_destroy_boxed_opaque_existential_1(v5);
LABEL_15:
    v6 = *(a2 + 75);
    if (v6 >= 3)
    {
      v6 = *a2 + 3;
    }

    v7 = a2 + 1;
    *a1 = *a2;
    v8 = (a1 + 8);
    if (v6 != 2)
    {
      if (v6 == 1)
      {
        v9 = *(a2 + 48);

        if (v9)
        {
          v17 = *v7;
          v18 = *(a2 + 3);
          *(a1 + 33) = *(a2 + 33);
          *v8 = v17;
          *(a1 + 24) = v18;
        }

        else
        {
          v10 = a2[4];
          *(a1 + 32) = v10;
          *(a1 + 40) = a2[5];
          (**(v10 - 8))(a1 + 8, a2 + 1);
          *(a1 + 48) = 0;
        }

        v11 = 1;
      }

      else
      {
        v14 = *v7;
        *(a1 + 16) = *(a2 + 16);
        *v8 = v14;
        v15 = a2[6];
        *(a1 + 48) = v15;
        v16 = **(v15 - 8);

        v16(a1 + 24, a2 + 3, v15);
        v11 = 0;
      }

      goto LABEL_30;
    }

    v12 = a2[2];

    if (v12)
    {
      *(a1 + 8) = a2[1];
      *(a1 + 16) = a2[2];
      *(a1 + 24) = a2[3];

      v13 = *(a2 + 72);
      if (v13)
      {
LABEL_24:
        *(a1 + 32) = a2[4];

LABEL_29:
        *(a1 + 72) = v13;
        *(a1 + 73) = *(a2 + 73);
        *(a1 + 74) = *(a2 + 74);
        v11 = 2;
LABEL_30:
        *(a1 + 75) = v11;
        return a1;
      }
    }

    else
    {
      v19 = *v7;
      *(a1 + 24) = a2[3];
      *v8 = v19;
      v13 = *(a2 + 72);
      if (v13)
      {
        goto LABEL_24;
      }
    }

    v20 = a2[7];
    *(a1 + 56) = v20;
    *(a1 + 64) = a2[8];
    (**(v20 - 8))(a1 + 32, a2 + 4);
    goto LABEL_29;
  }

  return a1;
}

uint64_t assignWithTake for TableRowView.Storage(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return a1;
  }

  v4 = *(a1 + 75);
  if (v4 >= 3)
  {
    v4 = *a1 + 3;
  }

  if (v4 == 2)
  {

    if (*(a1 + 16))
    {
    }

    if ((*(a1 + 72) & 1) == 0)
    {
      v5 = (a1 + 32);
      goto LABEL_14;
    }
  }

  else
  {
    if (v4 != 1)
    {

      v5 = (a1 + 24);
      goto LABEL_14;
    }

    if (!*(a1 + 48))
    {
      v5 = (a1 + 8);
LABEL_14:
      __swift_destroy_boxed_opaque_existential_1(v5);
    }
  }

  v6 = *(a2 + 75);
  if (v6 >= 3)
  {
    v6 = *a2 + 3;
  }

  if (v6 == 2)
  {
    v8 = *(a2 + 48);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 48) = v8;
    *(a1 + 59) = *(a2 + 59);
    v9 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v9;
  }

  else if (v6 == 1)
  {
    v7 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v7;
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 48) = *(a2 + 48);
    LOBYTE(v6) = 1;
  }

  else
  {
    LOBYTE(v6) = 0;
    v10 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v10;
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 48) = *(a2 + 48);
  }

  *(a1 + 75) = v6;
  return a1;
}

uint64_t getEnumTagSinglePayload for TableRowView.Storage(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 76))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 75);
  if (v3 >= 3)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for TableRowView.Storage(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 60) = 0u;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 76) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 76) = 0;
    }

    if (a2)
    {
      *(result + 75) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTag for TableRowView.Storage(uint64_t a1)
{
  result = *(a1 + 75);
  if (result >= 3)
  {
    return (*a1 + 3);
  }

  return result;
}

uint64_t destructiveInjectEnumTag for TableRowView.Storage(uint64_t result, unsigned int a2)
{
  if (a2 > 2)
  {
    *(result + 59) = 0u;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 75) = a2;
  return result;
}

uint64_t specialized View.accessibilityCombinedElement(options:ignoredTraits:)@<X0>(char a1@<W0>, uint64_t a2@<X2>, void *a3@<X8>)
{
  type metadata accessor for Button<RotatingDisclosureIndicator>(0, &lazy cache variable for type metadata for AccessibilityChildBehaviorBox<AccessibilityChildBehavior.Combine>, lazy protocol witness table accessor for type AccessibilityChildBehavior.Combine and conformance AccessibilityChildBehavior.Combine, &type metadata for AccessibilityChildBehavior.Combine, type metadata accessor for AccessibilityChildBehaviorBox);
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  AccessibilityProperties.init(reserving:)();
  static AccessibilityAttachment.properties(_:)();
  outlined destroy of AccessibilityProperties(v12);
  type metadata accessor for AccessibilityTableContext?(0, &lazy cache variable for type metadata for MutableBox<AccessibilityAttachment>, MEMORY[0x1E697FFF0], MEMORY[0x1E697DAC0]);
  v7 = swift_allocObject();
  memcpy((v7 + 16), __src, 0x128uLL);

  AccessibilityTraitSet.init(traits:)();
  swift_beginAccess();
  result = closure #1 in ModifiedContent<>.accessibilityTraits(_:)(v7 + 16, 0, v10);
  if (*(v7 + 136))
  {
    v9 = 0x4000000040;
  }

  else
  {
    v9 = *(v7 + 128) | 0x4000000040;
  }

  *(v7 + 128) = v9;
  *(v7 + 136) = 0;
  *a3 = a2;
  a3[1] = v7;
  a3[2] = v6;
  return result;
}

uint64_t specialized View.accessibilityCombinedElement(options:ignoredTraits:)@<X0>(char a1@<W0>, uint64_t a2@<X2>, char a3@<W3>, uint64_t a4@<X8>)
{
  type metadata accessor for Button<RotatingDisclosureIndicator>(0, &lazy cache variable for type metadata for AccessibilityChildBehaviorBox<AccessibilityChildBehavior.Combine>, lazy protocol witness table accessor for type AccessibilityChildBehavior.Combine and conformance AccessibilityChildBehavior.Combine, &type metadata for AccessibilityChildBehavior.Combine, type metadata accessor for AccessibilityChildBehaviorBox);
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  AccessibilityProperties.init(reserving:)();
  static AccessibilityAttachment.properties(_:)();
  outlined destroy of AccessibilityProperties(v14);
  type metadata accessor for AccessibilityTableContext?(0, &lazy cache variable for type metadata for MutableBox<AccessibilityAttachment>, MEMORY[0x1E697FFF0], MEMORY[0x1E697DAC0]);
  v9 = swift_allocObject();
  memcpy((v9 + 16), __src, 0x128uLL);

  AccessibilityTraitSet.init(traits:)();
  swift_beginAccess();
  result = closure #1 in ModifiedContent<>.accessibilityTraits(_:)(v9 + 16, 0, v12);
  if (*(v9 + 136))
  {
    v11 = 0x4000000040;
  }

  else
  {
    v11 = *(v9 + 128) | 0x4000000040;
  }

  *(v9 + 128) = v11;
  *(v9 + 136) = 0;
  *a4 = a2;
  *(a4 + 8) = a3 & 1;
  *(a4 + 16) = v9;
  *(a4 + 24) = v8;
  return result;
}

double specialized View.tableColumnFrame(_:alignment:)@<D0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (!a2)
  {
    static Alignment.leading.getter();
    if ((*(a1 + 32) & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  if (a2 != 1)
  {
    static Alignment.trailing.getter();
    if ((*(a1 + 32) & 1) == 0)
    {
      goto LABEL_8;
    }

LABEL_6:
    v7 = -INFINITY;
    v8 = -INFINITY;
    v9 = -INFINITY;
    goto LABEL_10;
  }

  static Alignment.center.getter();
  if (*(a1 + 32))
  {
    goto LABEL_6;
  }

LABEL_8:
  v9 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *a1;
  if (*(a1 + 8))
  {
    v8 = *(a1 + 16);
  }

LABEL_10:
  if (v9 > v8 || v8 > v7)
  {
    v11 = static os_log_type_t.fault.getter();
    v12 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)(v11, &dword_18BD4A000, v12, "Contradictory frame constraints specified.", 42, 2, MEMORY[0x1E69E7CC0]);
  }

  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  *(a4 + 56) = v17;
  *(a4 + 72) = v18;
  *(a4 + 88) = v19;
  *(a4 + 104) = v20;
  *(a4 + 8) = v14;
  *(a4 + 24) = v15;
  *a4 = a3;
  *(a4 + 40) = v16;

  return result;
}

uint64_t specialized View.tableColumnFrame(_:alignment:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  if (!a2)
  {
    static Alignment.leading.getter();
    if ((*(a1 + 32) & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  if (a2 != 1)
  {
    static Alignment.trailing.getter();
    if ((*(a1 + 32) & 1) == 0)
    {
      goto LABEL_8;
    }

LABEL_6:
    v6 = -INFINITY;
    v7 = -INFINITY;
    v8 = -INFINITY;
    goto LABEL_10;
  }

  static Alignment.center.getter();
  if (*(a1 + 32))
  {
    goto LABEL_6;
  }

LABEL_8:
  v8 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *a1;
  if (*(a1 + 8))
  {
    v7 = *(a1 + 16);
  }

LABEL_10:
  if (v8 > v7 || v7 > v6)
  {
    v10 = static os_log_type_t.fault.getter();
    v11 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)(v10, &dword_18BD4A000, v11, "Contradictory frame constraints specified.", 42, 2, MEMORY[0x1E69E7CC0]);
  }

  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v12 = *(v3 + 80);
  *(a3 + 64) = *(v3 + 64);
  *(a3 + 80) = v12;
  *(a3 + 96) = *(v3 + 96);
  *(a3 + 112) = *(v3 + 112);
  v13 = *(v3 + 16);
  *a3 = *v3;
  *(a3 + 16) = v13;
  v14 = *(v3 + 48);
  *(a3 + 32) = *(v3 + 32);
  *(a3 + 48) = v14;
  v15 = v22[0];
  v16 = v22[1];
  *(a3 + 152) = v22[2];
  *(a3 + 136) = v16;
  *(a3 + 120) = v15;
  v17 = v22[3];
  v18 = v22[4];
  v19 = v22[5];
  *(a3 + 216) = v22[6];
  *(a3 + 200) = v19;
  *(a3 + 184) = v18;
  *(a3 + 168) = v17;
  return outlined init with copy of ContextMenuPreviewModifier<ZStack<ModifiedContent<AnyView?, StyleContextWriter<MenuStyleContext>>>, AnyView?>(v3, v21, type metadata accessor for ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<AnyView, _TraitWritingModifier<LayoutPriorityTraitKey>>, _ConditionalContent<Image, Image>?)>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _PaddingLayout>);
}

{
  if (!a2)
  {
    static Alignment.leading.getter();
    if ((*(a1 + 32) & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  if (a2 != 1)
  {
    static Alignment.trailing.getter();
    if ((*(a1 + 32) & 1) == 0)
    {
      goto LABEL_8;
    }

LABEL_6:
    v6 = -INFINITY;
    v7 = -INFINITY;
    v8 = -INFINITY;
    goto LABEL_10;
  }

  static Alignment.center.getter();
  if (*(a1 + 32))
  {
    goto LABEL_6;
  }

LABEL_8:
  v8 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *a1;
  if (*(a1 + 8))
  {
    v7 = *(a1 + 16);
  }

LABEL_10:
  if (v8 > v7 || v7 > v6)
  {
    v10 = static os_log_type_t.fault.getter();
    v11 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)(v10, &dword_18BD4A000, v11, "Contradictory frame constraints specified.", 42, 2, MEMORY[0x1E69E7CC0]);
  }

  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v12 = *(v3 + 48);
  *(a3 + 32) = *(v3 + 32);
  *(a3 + 48) = v12;
  *(a3 + 64) = *(v3 + 64);
  v13 = *(v3 + 16);
  *a3 = *v3;
  *(a3 + 16) = v13;
  v14 = v23;
  *(a3 + 136) = v22;
  *(a3 + 152) = v14;
  v15 = v25;
  *(a3 + 168) = v24;
  *(a3 + 184) = v15;
  v16 = v20;
  *(a3 + 88) = v19;
  *(a3 + 80) = *(v3 + 80);
  *(a3 + 104) = v16;
  *(a3 + 120) = v21;
  return outlined init with copy of ContextMenuPreviewModifier<ZStack<ModifiedContent<AnyView?, StyleContextWriter<MenuStyleContext>>>, AnyView?>(v3, v18, type metadata accessor for ModifiedContent<ModifiedContent<HStack<AnyView>, _DefaultForegroundStyleModifier<AnyShapeStyle>>, _PaddingLayout>);
}

__n128 specialized View.tableColumnFrame(_:alignment:)@<Q0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  if (!a2)
  {
    static Alignment.leading.getter();
    if ((*(a1 + 32) & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  if (a2 != 1)
  {
    static Alignment.trailing.getter();
    if ((*(a1 + 32) & 1) == 0)
    {
      goto LABEL_8;
    }

LABEL_6:
    v6 = -INFINITY;
    v7 = -INFINITY;
    v8 = -INFINITY;
    goto LABEL_10;
  }

  static Alignment.center.getter();
  if (*(a1 + 32))
  {
    goto LABEL_6;
  }

LABEL_8:
  v8 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *a1;
  if (*(a1 + 8))
  {
    v7 = *(a1 + 16);
  }

LABEL_10:
  if (v8 > v7 || v7 > v6)
  {
    v10 = static os_log_type_t.fault.getter();
    v11 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)(v10, &dword_18BD4A000, v11, "Contradictory frame constraints specified.", 42, 2, MEMORY[0x1E69E7CC0]);
  }

  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  outlined init with copy of ContextMenuPreviewModifier<ZStack<ModifiedContent<AnyView?, StyleContextWriter<MenuStyleContext>>>, AnyView?>(v3, a3, type metadata accessor for ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>);
  type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>(0);
  v13 = (a3 + *(v12 + 36));
  v13[4] = v19;
  v13[5] = v20;
  v13[6] = v21;
  *v13 = v15;
  v13[1] = v16;
  result = v18;
  v13[2] = v17;
  v13[3] = v18;
  return result;
}

double closure #1 in TableRowView.expandButton(expanded:tinted:)(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    outlined copy of Binding<Int>?(a1, a2);

    Transaction.subscript.setter();
    v2 = Transaction.current.getter();
    MEMORY[0x1EEE9AC00](v2);
    withTransaction<A>(_:_:)();
  }

  return result;
}

uint64_t TableRowView.itemView.getter@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  type metadata accessor for <<opaque return type of View.onTapGesture(count:perform:)>>.0(0, a2);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v81 = &v72 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>(0);
  v80 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v72 - v12;
  type metadata accessor for _ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>?(0);
  v15 = MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v72 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for VStack<_ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>?>(0, v15);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v72 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of TableRowView.Storage((v2 + 48), &v92);
  if (v97)
  {
    v77 = v6;
    if (v97 == 1)
    {
      v21 = v92;
      v82 = v93;
      v83[0] = *v94;
      *(v83 + 9) = *&v94[9];
      if (specialized Environment.wrappedValue.getter(*v2, *(v2 + 8)))
      {
        _s7SwiftUI0A19UIAnySortComparatorVSgWOcTm_0(&v82, &v89, &lazy cache variable for type metadata for AccessibilityTableContext?, &type metadata for AccessibilityTableContext);
        if (BYTE8(v90[1]) == 255)
        {
          _s7SwiftUI25AccessibilityTableContextOSgWOhTm_1(&v89, &lazy cache variable for type metadata for AccessibilityTableContext?, &type metadata for AccessibilityTableContext);
          memset(v91, 0, 40);
          v91[40] = -1;
        }

        else
        {
          outlined init with copy of AccessibilityTableContext(&v89, v88);
          if (v88[40] == 2)
          {
            *v91 = *v88;
            *&v91[8] = 1;
            v91[40] = 2;
          }

          else
          {
            outlined init with copy of AccessibilityTableContext(&v89, v91);
            outlined destroy of AccessibilityTableContext(v88);
          }

          outlined destroy of AccessibilityTableContext(&v89);
        }
      }

      else
      {
        _s7SwiftUI0A19UIAnySortComparatorVSgWOcTm_0(&v82, v91, &lazy cache variable for type metadata for AccessibilityTableContext?, &type metadata for AccessibilityTableContext);
      }

      memset(v88, 0, 40);
      v88[40] = -1;
      if (v91[40] == 255)
      {
        _s7SwiftUI25AccessibilityTableContextOSgWOhTm_1(v91, &lazy cache variable for type metadata for AccessibilityTableContext?, &type metadata for AccessibilityTableContext);
      }

      else
      {
        v89 = *v91;
        v90[0] = *&v91[16];
        *(v90 + 9) = *&v91[25];
        _s7SwiftUI25AccessibilityTableContextOSgWOhTm_1(v88, &lazy cache variable for type metadata for AccessibilityTableContext?, &type metadata for AccessibilityTableContext);
        *v88 = v89;
        *&v88[16] = v90[0];
        *&v88[25] = *(v90 + 9);
      }

      v89 = *v88;
      v90[0] = *&v88[16];
      *(v90 + 9) = *&v88[25];
      specialized View.accessibilityCombinedElement(options:ignoredTraits:)(0, v21, v87);
      v69 = v87[0];
      v70 = v87[1];
      v71 = v87[2];
      if (BYTE8(v90[1]) == 255)
      {
        goto LABEL_32;
      }

      result = _s7SwiftUI0A19UIAnySortComparatorVSgWOcTm_0(&v89, v88, &lazy cache variable for type metadata for AccessibilityTableContext?, &type metadata for AccessibilityTableContext);
      if (v88[40] != 255)
      {
        *v91 = *v88;
        *&v91[16] = *&v88[16];
        *&v91[25] = *&v88[25];
        swift_beginAccess();
        _s7SwiftUI0A19UIAnySortComparatorVSgWOcTm_0(v91, v86, &lazy cache variable for type metadata for AccessibilityTableContext?, &type metadata for AccessibilityTableContext);
        lazy protocol witness table accessor for type AccessibilityProperties.TableContextKey and conformance AccessibilityProperties.TableContextKey();

        AccessibilityProperties.subscript.setter();
        swift_endAccess();
        _s7SwiftUI25AccessibilityTableContextOSgWOhTm_1(v91, &lazy cache variable for type metadata for AccessibilityTableContext?, &type metadata for AccessibilityTableContext);

LABEL_32:

        outlined destroy of AccessibilityTableCellModifier<AnyView>(&v89);
        _s7SwiftUI25AccessibilityTableContextOSgWOhTm_1(&v82, &lazy cache variable for type metadata for AccessibilityTableContext?, &type metadata for AccessibilityTableContext);

        v91[0] = 1;
        *a1 = v69;
        *(a1 + 8) = v70;
        *(a1 + 16) = v71;
        *(a1 + 96) = 1;
        type metadata accessor for _ConditionalContent<_ConditionalContent<HStack<ForEach<ArraySlice<TableCellFormula>, UUID, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>>>, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>, VStack<_ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>?>>(0, &lazy cache variable for type metadata for _ConditionalContent<_ConditionalContent<HStack<ForEach<ArraySlice<TableCellFormula>, UUID, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>>>, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>, VStack<_ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>?>>.Storage, type metadata accessor for _ConditionalContent<HStack<ForEach<ArraySlice<TableCellFormula>, UUID, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>>>, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>, type metadata accessor for VStack<_ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>?>, MEMORY[0x1E697F948]);
        return swift_storeEnumTagMultiPayload();
      }

      __break(1u);
    }

    else
    {
      v74 = v5;
      v46 = v92;
      v47 = *v94;
      v78 = *(&v93 + 1);
      v79 = v93;
      v75 = v96;
      LODWORD(v76) = v95;
      *v91 = *&v94[8];
      *&v91[16] = *&v94[24];
      *&v91[25] = *&v94[33];
      *v20 = static HorizontalAlignment.center.getter();
      *(v20 + 1) = 0;
      v20[16] = 0;
      if (specialized Environment.wrappedValue.getter(*(v2 + 16), *(v2 + 24)) == 2 || (specialized Environment.wrappedValue.getter(*v2, *(v2 + 8)) & 1) != 0 || v75 != 1)
      {
        if (v46)
        {
          v72 = v13;
          v73 = a1;
          v48 = v46;
          KeyPath = swift_getKeyPath();
          v50 = swift_getKeyPath();
          v51 = swift_getKeyPath();
          v86[0] = 0;
          LOBYTE(v87[0]) = 0;
          v86[48] = 0;
          *&v89 = KeyPath;
          BYTE8(v89) = 0;
          *&v90[0] = v50;
          BYTE8(v90[0]) = 0;
          *&v90[1] = v51;
          BYTE8(v90[1]) = 0;
          *&v90[2] = v48;
          WORD4(v90[2]) = v76;
          outlined init with copy of TableColumnCollection(v91, v88);
          v52 = swift_allocObject();
          v53 = *&v88[16];
          *(v52 + 16) = *v88;
          *(v52 + 32) = v53;
          *(v52 + 41) = *&v88[25];
          v54 = v79;
          v55 = v47;
          v56 = v78;
          *(v52 + 64) = v79;
          *(v52 + 72) = v56;
          *(v52 + 80) = v55;
          v76 = v48;
          swift_retain_n();
          outlined copy of Binding<[SwiftUIAnySortComparator]>?(v54, v56);
          type metadata accessor for ModifiedContent<TableSectionHeaderView, _ContentShapeModifier<Rectangle>>(0);
          lazy protocol witness table accessor for type ModifiedContent<TableSectionHeaderView, _ContentShapeModifier<Rectangle>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<TableSectionHeaderView, _ContentShapeModifier<Rectangle>> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<TableSectionHeaderView, _ContentShapeModifier<Rectangle>>, lazy protocol witness table accessor for type TableSectionHeaderView and conformance TableSectionHeaderView, lazy protocol witness table accessor for type _ContentShapeModifier<Rectangle> and conformance _ContentShapeModifier<A>);
          v57 = v81;
          View.onTapGesture(count:perform:)();

          v82 = v89;
          v83[0] = v90[0];
          v83[1] = v90[1];
          *(&v83[1] + 10) = *(&v90[1] + 10);
          outlined destroy of TableColumnCollection.Entry(&v82, type metadata accessor for ModifiedContent<TableSectionHeaderView, _ContentShapeModifier<Rectangle>>);
          if (specialized Environment.wrappedValue.getter(*v2, *(v2 + 8)))
          {

            LOBYTE(v58) = 0;
          }

          else
          {
            v65 = specialized Environment.wrappedValue.getter(*(v2 + 32), *(v2 + 40));

            v58 = v75 | ((v65 & 0x10000u) >> 16);
          }

          v66 = v72;
          a1 = v73;
          (*(v77 + 32))(v10, v57, v74);
          v10[*(v80 + 36)] = v58 & 1;
          outlined init with take of VStack<_ConditionalContent<_ConditionalContent<HStack<ForEach<ArraySlice<TableCellFormula>, UUID, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>>>, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>, VStack<_ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>?>>>(v10, v66, type metadata accessor for ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>);
          outlined init with take of VStack<_ConditionalContent<_ConditionalContent<HStack<ForEach<ArraySlice<TableCellFormula>, UUID, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>>>, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>, VStack<_ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>?>>>(v66, v17, type metadata accessor for ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>);
          type metadata accessor for _ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>(0, &lazy cache variable for type metadata for _ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>.Storage, MEMORY[0x1E697F948]);
          swift_storeEnumTagMultiPayload();
          type metadata accessor for _ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>(0, &lazy cache variable for type metadata for _ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>, MEMORY[0x1E697F960]);
          (*(*(v67 - 8) + 56))(v17, 0, 1, v67);
        }

        else
        {
          type metadata accessor for _ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>(0, &lazy cache variable for type metadata for _ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>, MEMORY[0x1E697F960]);
          (*(*(v64 - 8) + 56))(v17, 1, 1, v64);
        }
      }

      else
      {
        outlined init with copy of TableColumnCollection(v91, v83 + 8);
        v60 = v78;
        v59 = v79;
        *&v82 = v79;
        *(&v82 + 1) = v78;
        *&v83[0] = v47;
        BYTE1(v83[3]) = 0;
        BYTE2(v83[3]) = v76;
        v61 = v83[2];
        *(v17 + 2) = v83[1];
        *(v17 + 3) = v61;
        *(v17 + 63) = *(&v83[2] + 15);
        v62 = v83[0];
        *v17 = v82;
        *(v17 + 1) = v62;
        type metadata accessor for _ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>(0, &lazy cache variable for type metadata for _ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>.Storage, MEMORY[0x1E697F948]);
        swift_storeEnumTagMultiPayload();
        type metadata accessor for _ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>(0, &lazy cache variable for type metadata for _ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>, MEMORY[0x1E697F960]);
        (*(*(v63 - 8) + 56))(v17, 0, 1, v63);
        outlined copy of Binding<[SwiftUIAnySortComparator]>?(v59, v60);
      }

      type metadata accessor for _VariadicView.Tree<_VStackLayout, _ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>?>(0, &lazy cache variable for type metadata for _VariadicView.Tree<_VStackLayout, _ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>?>, type metadata accessor for _ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>?, MEMORY[0x1E697E300], MEMORY[0x1E697E2F8]);
      outlined init with take of VStack<_ConditionalContent<_ConditionalContent<HStack<ForEach<ArraySlice<TableCellFormula>, UUID, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>>>, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>, VStack<_ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>?>>>(v17, &v20[*(v68 + 44)], type metadata accessor for _ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>?);
      outlined consume of Binding<[A1]>?<A, B, C><A1>(v79, v78);

      outlined init with take of VStack<_ConditionalContent<_ConditionalContent<HStack<ForEach<ArraySlice<TableCellFormula>, UUID, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>>>, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>, VStack<_ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>?>>>(v20, a1, type metadata accessor for VStack<_ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>?>);
      type metadata accessor for _ConditionalContent<_ConditionalContent<HStack<ForEach<ArraySlice<TableCellFormula>, UUID, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>>>, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>, VStack<_ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>?>>(0, &lazy cache variable for type metadata for _ConditionalContent<_ConditionalContent<HStack<ForEach<ArraySlice<TableCellFormula>, UUID, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>>>, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>, VStack<_ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>?>>.Storage, type metadata accessor for _ConditionalContent<HStack<ForEach<ArraySlice<TableCellFormula>, UUID, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>>>, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>, type metadata accessor for VStack<_ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>?>, MEMORY[0x1E697F948]);
      swift_storeEnumTagMultiPayload();
      return outlined destroy of TableColumnCollection(v91);
    }
  }

  else
  {
    v22 = v92;
    v80 = v93;
    LODWORD(v79) = BYTE8(v93);
    outlined init with take of Any(v94, &v89);
    *v88 = *(v2 + 128);
    memset(v91, 0, 17);
    v23 = v2;
    ViewTraitCollection.value<A>(for:defaultValue:)();
    v24 = v82;
    v25 = v83[0];
    *v91 = *(v2 + 128);
    *v88 = 0;
    ViewTraitCollection.value<A>(for:defaultValue:)();
    v26 = v82;
    v81 = static VerticalAlignment.center.getter();
    v86[0] = 1;
    if (specialized Environment.wrappedValue.getter(*v23, *(v23 + 8)))
    {
      v28 = 1;
    }

    else
    {
      v28 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v29 = specialized Collection.prefix(_:)(v28, v22, v27);
    v31 = v30;
    v33 = v32;
    v35 = v34;
    *v91 = v29;
    *&v91[8] = v30;
    *&v91[16] = v32;
    *&v91[24] = v34;
    outlined init with copy of Any(&v89, v88);
    outlined init with copy of TableRowView(v23, &v82);
    v36 = swift_allocObject();
    *(v36 + 16) = v29;
    *(v36 + 24) = v31;
    *(v36 + 32) = v33;
    *(v36 + 40) = v35;
    outlined init with take of Any(v88, (v36 + 48));
    *(v36 + 80) = v26;
    *(v36 + 88) = v80;
    *(v36 + 96) = v79;
    *(v36 + 104) = v24;
    *(v36 + 120) = v25;
    v37 = v83[6];
    *(v36 + 224) = v83[5];
    *(v36 + 240) = v37;
    *(v36 + 256) = v84;
    v38 = v83[2];
    *(v36 + 160) = v83[1];
    *(v36 + 176) = v38;
    v39 = v83[4];
    *(v36 + 192) = v83[3];
    *(v36 + 208) = v39;
    v40 = v83[0];
    *(v36 + 128) = v82;
    *(v36 + 144) = v40;
    type metadata accessor for ArraySlice<TableCellFormula>(0);
    type metadata accessor for UUID();
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>(0);
    lazy protocol witness table accessor for type TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type ArraySlice<TableCellFormula> and conformance ArraySlice<A>, type metadata accessor for ArraySlice<TableCellFormula>, MEMORY[0x1E69E6970]);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type TableCellFormula and conformance TableCellFormula, type metadata accessor for TableCellFormula, protocol conformance descriptor for TableCellFormula);
    swift_unknownObjectRetain();
    ForEach<>.init(_:content:)();
    *(v85 + 7) = v82;
    *(&v85[1] + 7) = v83[0];
    *(&v85[2] + 7) = v83[1];
    *(&v85[3] + 7) = v83[2];
    *(&v85[4] + 7) = *&v83[3];
    v41 = v86[0];
    v91[0] = 0;
    *a1 = v81;
    *(a1 + 8) = 0;
    *(a1 + 16) = v41;
    v42 = v85[1];
    *(a1 + 17) = v85[0];
    v43 = v85[2];
    v44 = v85[3];
    *(a1 + 80) = *(&v85[3] + 15);
    *(a1 + 65) = v44;
    *(a1 + 49) = v43;
    *(a1 + 33) = v42;
    *(a1 + 96) = 0;
    type metadata accessor for _ConditionalContent<_ConditionalContent<HStack<ForEach<ArraySlice<TableCellFormula>, UUID, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>>>, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>, VStack<_ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>?>>(0, &lazy cache variable for type metadata for _ConditionalContent<_ConditionalContent<HStack<ForEach<ArraySlice<TableCellFormula>, UUID, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>>>, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>, VStack<_ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>?>>.Storage, type metadata accessor for _ConditionalContent<HStack<ForEach<ArraySlice<TableCellFormula>, UUID, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>>>, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>, type metadata accessor for VStack<_ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>?>, MEMORY[0x1E697F948]);
    swift_storeEnumTagMultiPayload();
    return __swift_destroy_boxed_opaque_existential_1(&v89);
  }

  return result;
}

uint64_t TableRowView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v61 = a1;
  type metadata accessor for VStack<_ConditionalContent<_ConditionalContent<HStack<ForEach<ArraySlice<TableCellFormula>, UUID, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>>>, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>, VStack<_ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>?>>>(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ModifiedContent<VStack<_ConditionalContent<_ConditionalContent<HStack<ForEach<ArraySlice<TableCellFormula>, UUID, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>>>, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>, VStack<_ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>?>>>, _EnvironmentKeyWritingModifier<Int?>>(0);
  v6 = v5 - 8;
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ModifiedContent<ModifiedContent<VStack<_ConditionalContent<_ConditionalContent<HStack<ForEach<ArraySlice<TableCellFormula>, UUID, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>>>, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>, VStack<_ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>?>>>, _EnvironmentKeyWritingModifier<Int?>>, ContextMenuPreviewModifier<ZStack<Modi(0);
  v55 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v62 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<VStack<_ConditionalContent<_ConditionalContent<HStack<ForEach<ArraySlice<TableCellFormula>, UUID, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>>>, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>, VStack<_ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>?>>>, _EnvironmentKeyWritingModifier<Int?>>, ContextMenuPreviewModi(0);
  v56 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v63 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for _ConditionalContent<_ConditionalContent<HStack<ForEach<ArraySlice<TableCellFormula>, UUID, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>>>, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>, VStack<_ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>?>>(0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<_ConditionalContent<_ConditionalContent<HStack<ForEach<ArraySlice<TableCellFormula>, UUID, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>>>, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>, VStack<_ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>?>>>, _EnvironmentKeyWritingModifier, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<VStack<_ConditionalContent<_ConditionalContent<HStack<ForEach<ArraySlice<TableCellFormula>, UUID, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>>>, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>, VStack<_ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>?>>>, _EnvironmentKeyWritingModifier<Int?>>, ContextMenuPreviewModi, type metadata accessor for SwipeActionsModifier<AnyView?>, MEMORY[0x1E697E830]);
  v57 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v60 = &v54 - v14;
  v68[0] = *(v1 + 128);
  v15 = v68[0];
  v69 = 0uLL;
  ViewTraitCollection.value<A>(for:defaultValue:)();
  v16 = v75;
  v68[0] = v15;
  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  ViewTraitCollection.value<A>(for:defaultValue:)();
  v85[0] = v69;
  v85[1] = v70;
  v85[2] = v71;
  v85[3] = v72;
  outlined destroy of TableRowSwipeActionsTraitKey.Storage(v85);
  v86 = v75;
  v87 = v76;
  v88 = v77;
  v89 = v78;
  *v4 = static HorizontalAlignment.center.getter();
  *(v4 + 1) = 0;
  v4[16] = 1;
  type metadata accessor for _VariadicView.Tree<_VStackLayout, _ConditionalContent<_ConditionalContent<HStack<ForEach<ArraySlice<TableCellFormula>, UUID, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>>>, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>, VStack<_ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>?>>>(0);
  TableRowView.itemView.getter(&v4[*(v17 + 44)], v18);
  v19 = *v1;
  v59 = v1;
  v20 = specialized Environment.wrappedValue.getter(v19, *(v1 + 8));
  KeyPath = swift_getKeyPath();
  outlined init with take of VStack<_ConditionalContent<_ConditionalContent<HStack<ForEach<ArraySlice<TableCellFormula>, UUID, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>>>, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>, VStack<_ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>?>>>(v4, v8, type metadata accessor for VStack<_ConditionalContent<_ConditionalContent<HStack<ForEach<ArraySlice<TableCellFormula>, UUID, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>>>, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>, VStack<_ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>?>>>);
  v22 = &v8[*(v6 + 44)];
  *v22 = KeyPath;
  *(v22 + 1) = (v20 & 1) == 0;
  v22[16] = v20 & 1;
  if (v16)
  {
    v23 = *(&v16 + 1) == 0;

    if (*(&v16 + 1))
    {
    }

    v24 = static Alignment.center.getter();
    v26 = v25;

    v58 = *(&v16 + 1);

    v27 = *(&v16 + 1);
  }

  else
  {
    v23 = 1;
    v24 = static Alignment.center.getter();
    v26 = v28;
    v58 = *(&v16 + 1);
    v27 = 0;
  }

  v29 = swift_getKeyPath();
  v84 = 0;
  LODWORD(v69) = 0;
  *(&v69 + 1) = v29;
  LOBYTE(v70) = 0;
  *(&v70 + 1) = *v83;
  DWORD1(v70) = *&v83[3];
  *(&v70 + 1) = v24;
  *&v71 = v26;
  *(&v71 + 1) = v16;
  *&v72 = v27;
  BYTE8(v72) = v23;
  *(&v72 + 9) = *v82;
  HIDWORD(v72) = *&v82[3];
  v73 = 0uLL;
  v74 = -2;
  v30 = v8;
  v31 = v62;
  outlined init with take of VStack<_ConditionalContent<_ConditionalContent<HStack<ForEach<ArraySlice<TableCellFormula>, UUID, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>>>, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>, VStack<_ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>?>>>(v30, v62, type metadata accessor for ModifiedContent<VStack<_ConditionalContent<_ConditionalContent<HStack<ForEach<ArraySlice<TableCellFormula>, UUID, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>>>, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>, VStack<_ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>?>>>, _EnvironmentKeyWritingModifier<Int?>>);
  v32 = v31 + *(v55 + 36);
  v33 = v72;
  *(v32 + 32) = v71;
  *(v32 + 48) = v33;
  *(v32 + 64) = v73;
  *(v32 + 80) = v74;
  v34 = v70;
  *v32 = v69;
  *(v32 + 16) = v34;
  LODWORD(v75) = 0;
  *(&v75 + 1) = v29;
  LOBYTE(v76) = 0;
  DWORD1(v76) = *&v83[3];
  *(&v76 + 1) = *v83;
  *(&v76 + 1) = v24;
  *&v77 = v26;
  *(&v77 + 1) = v16;
  *&v78 = v27;
  BYTE8(v78) = v23;
  *(&v78 + 9) = *v82;
  HIDWORD(v78) = *&v82[3];
  v79 = 0;
  v80 = 0;
  v81 = -2;
  outlined init with copy of ContextMenuPreviewModifier<ZStack<ModifiedContent<AnyView?, StyleContextWriter<MenuStyleContext>>>, AnyView?>(&v69, v68, type metadata accessor for ContextMenuPreviewModifier<ZStack<ModifiedContent<AnyView?, StyleContextWriter<MenuStyleContext>>>, AnyView?>);
  outlined destroy of TableColumnCollection.Entry(&v75, type metadata accessor for ContextMenuPreviewModifier<ZStack<ModifiedContent<AnyView?, StyleContextWriter<MenuStyleContext>>>, AnyView?>);
  v35 = *(&v87 + 1);
  if (*(&v87 + 1))
  {
    v36 = *(&v86 + 1);
    v37 = v86 & 1;
    v67 = BYTE1(v87) & 1;
    v38 = v87 | ((BYTE1(v87) & 1) << 8);
    v39 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v36 = 0;
    v39 = 0;
    v37 = 0;
    v38 = 0;
  }

  v40 = v60;
  v41 = v63;
  outlined init with take of VStack<_ConditionalContent<_ConditionalContent<HStack<ForEach<ArraySlice<TableCellFormula>, UUID, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>>>, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>, VStack<_ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>?>>>(v62, v63, type metadata accessor for ModifiedContent<ModifiedContent<VStack<_ConditionalContent<_ConditionalContent<HStack<ForEach<ArraySlice<TableCellFormula>, UUID, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>>>, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>, VStack<_ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>?>>>, _EnvironmentKeyWritingModifier<Int?>>, ContextMenuPreviewModifier<ZStack<Modi);
  v42 = v41 + *(v56 + 36);
  *v42 = v35;
  *(v42 + 8) = v37;
  *(v42 + 16) = v36;
  *(v42 + 24) = v38;
  *(v42 + 32) = v39;
  *(v42 + 40) = 0u;
  *(v42 + 56) = 0u;
  *(v42 + 72) = 0u;
  *(v42 + 88) = 0u;
  *(v42 + 104) = 0u;
  v43 = *(&v89 + 1);
  if (*(&v89 + 1))
  {
    v44 = *(&v88 + 1);
    v66 = BYTE1(v89) & 1;
    v45 = v88 & 1 | 0x100;
    v46 = v89 | ((BYTE1(v89) & 1) << 8);
    v47 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v44 = 0;
    v47 = 0;
    v45 = 0;
    v46 = 0;
  }

  outlined init with take of VStack<_ConditionalContent<_ConditionalContent<HStack<ForEach<ArraySlice<TableCellFormula>, UUID, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>>>, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>, VStack<_ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>?>>>(v63, v40, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<VStack<_ConditionalContent<_ConditionalContent<HStack<ForEach<ArraySlice<TableCellFormula>, UUID, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>>>, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>, VStack<_ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>?>>>, _EnvironmentKeyWritingModifier<Int?>>, ContextMenuPreviewModi);
  v48 = v40 + *(v57 + 36);
  *v48 = v43;
  *(v48 + 8) = v45;
  *(v48 + 16) = v44;
  *(v48 + 24) = v46;
  *(v48 + 32) = v47;
  *(v48 + 40) = 0u;
  *(v48 + 56) = 0u;
  *(v48 + 72) = 0u;
  *(v48 + 88) = 0u;
  *(v48 + 104) = 0u;
  v65[0] = *(v59 + 128);
  v49 = one-time initialization token for defaultValue;

  if (v49 != -1)
  {
    swift_once();
  }

  ViewTraitCollection.value<A>(for:defaultValue:)();
  v65[3] = &type metadata for DropConfigurationDelegate;
  v65[4] = &protocol witness table for DropConfigurationDelegate;
  v65[0] = swift_allocObject();
  _s7SwiftUI0A19UIAnySortComparatorVSgWOcTm_0(v68, v65[0] + 16, &lazy cache variable for type metadata for DropOntoConfiguration?, &type metadata for DropOntoConfiguration);
  outlined init with copy of _Benchmark(v65, v64);
  type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<_ConditionalContent<_ConditionalContent<HStack<ForEach<ArraySlice<TableCellFormula>, UUID, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>>>, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>, VStack<_ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>?>>>, _EnvironmentKeyWritingModifie(0);
  v51 = v61;
  v52 = v61 + *(v50 + 36);
  *(v52 + 32) = 0;
  *v52 = 0u;
  *(v52 + 16) = 0u;
  outlined destroy of TableColumnCollection.Entry(v52, type metadata accessor for DropDelegate?);
  outlined init with take of ScrollEnvironmentTransform(v64, v52);
  sub_18C0F69B0(v40, v51);
  __swift_destroy_boxed_opaque_existential_1(v65);
  outlined destroy of TableRowSwipeActionsTraitKey.Storage(&v86);
  outlined consume of ModifiedContent<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>?(v16, *(&v16 + 1));
  _s7SwiftUI25AccessibilityTableContextOSgWOhTm_1(v68, &lazy cache variable for type metadata for DropOntoConfiguration?, &type metadata for DropOntoConfiguration);
  return sub_18C0F6A58(v40);
}

uint64_t specialized Collection.prefix(_:)(uint64_t result, uint64_t a2, double a3)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    type metadata accessor for TableCellFormula(0);
    return a2;
  }

  return result;
}

uint64_t closure #1 in closure #1 in TableRowView.rowView(_:_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, unint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, int a7@<W7>, uint64_t a8@<X8>, __int128 a10, char a11)
{
  LODWORD(v158) = a7;
  v144 = a6;
  v157 = a5;
  v167 = a4;
  v170 = a3;
  v148 = a2;
  v154 = a8;
  type metadata accessor for TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>(0);
  v150 = *(v12 - 8);
  v151 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v143 = (&v139 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>(0);
  v140 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v142 = &v139 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v141 = &v139 - v17;
  type metadata accessor for TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?(0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v152 = &v139 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v162 = &v139 - v21;
  type metadata accessor for ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>(0);
  v153 = v22;
  MEMORY[0x1EEE9AC00](v22);
  v163 = &v139 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for UUID();
  v25 = *(v24 - 8);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v145 = &v139 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for (UUID?, UUID?)(0, v26);
  v29 = v28;
  MEMORY[0x1EEE9AC00](v28);
  v156 = &v139 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v139 - v32;
  type metadata accessor for UUID?(0);
  MEMORY[0x1EEE9AC00](v34 - 8);
  v160 = &v139 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v166 = &v139 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v159 = &v139 - v39;
  MEMORY[0x1EEE9AC00](v40);
  v146 = &v139 - v41;
  MEMORY[0x1EEE9AC00](v42);
  v44 = &v139 - v43;
  v46 = MEMORY[0x1EEE9AC00](v45);
  v48 = &v139 - v47;
  v49 = v25[2];
  v171 = a1;
  v168 = v49;
  v169 = v25 + 2;
  (v49)(&v139 - v47, a1, v24, v46);
  v50 = v25[7];
  v51 = 1;
  result = (v50)(v48, 0, 1, v24);
  v164 = v167 >> 1;
  v165 = v25 + 7;
  if (v167 >> 1 != v170)
  {
    if ((v167 >> 1) <= v170)
    {
      __break(1u);
      goto LABEL_37;
    }

    v53 = type metadata accessor for TableCellFormula(0);
    v168(v44, v148 + *(*(v53 - 8) + 72) * v170, v24);
    v51 = 0;
  }

  v161 = v50;
  v50(v44, v51, 1, v24);
  v155 = v29;
  v54 = *(v29 + 48);
  outlined init with copy of ContextMenuPreviewModifier<ZStack<ModifiedContent<AnyView?, StyleContextWriter<MenuStyleContext>>>, AnyView?>(v48, v33, type metadata accessor for UUID?);
  outlined init with copy of ContextMenuPreviewModifier<ZStack<ModifiedContent<AnyView?, StyleContextWriter<MenuStyleContext>>>, AnyView?>(v44, &v33[v54], type metadata accessor for UUID?);
  v149 = v25;
  v55 = v25[6];
  v56 = v55(v33, 1, v24);
  v147 = v55;
  if (v56 == 1)
  {
    v57 = type metadata accessor for UUID?;
    outlined destroy of TableColumnCollection.Entry(v44, type metadata accessor for UUID?);
    outlined destroy of TableColumnCollection.Entry(v48, type metadata accessor for UUID?);
    if (v55(&v33[v54], 1, v24) == 1)
    {
      v58 = -1;
    }

    else
    {
      v57 = type metadata accessor for (UUID?, UUID?);
      v58 = 0;
    }

    LODWORD(v167) = v58;
  }

  else
  {
    v59 = v146;
    outlined init with copy of ContextMenuPreviewModifier<ZStack<ModifiedContent<AnyView?, StyleContextWriter<MenuStyleContext>>>, AnyView?>(v33, v146, type metadata accessor for UUID?);
    if (v55(&v33[v54], 1, v24) == 1)
    {
      outlined destroy of TableColumnCollection.Entry(v44, type metadata accessor for UUID?);
      outlined destroy of TableColumnCollection.Entry(v48, type metadata accessor for UUID?);
      (v149[1])(v59, v24);
      LODWORD(v167) = 0;
      v57 = type metadata accessor for (UUID?, UUID?);
    }

    else
    {
      v60 = v59;
      v61 = v149;
      v62 = v145;
      (v149[4])(v145, &v33[v54], v24);
      lazy protocol witness table accessor for type TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
      LODWORD(v167) = dispatch thunk of static Equatable.== infix(_:_:)();
      v63 = v61[1];
      v63(v62, v24);
      v57 = type metadata accessor for UUID?;
      outlined destroy of TableColumnCollection.Entry(v44, type metadata accessor for UUID?);
      outlined destroy of TableColumnCollection.Entry(v48, type metadata accessor for UUID?);
      v63(v60, v24);
    }
  }

  v64 = v166;
  outlined destroy of TableColumnCollection.Entry(v33, v57);
  v65 = v159;
  v168(v159, v171, v24);
  v66 = 1;
  v67 = v161;
  result = (v161)(v65, 0, 1, v24);
  v68 = v160;
  v69 = v155;
  if (v164 != v170)
  {
    if (v164 > v170)
    {
      v70 = v164 - 1;
      v71 = type metadata accessor for TableCellFormula(0);
      v168(v64, v148 + *(*(v71 - 8) + 72) * v70, v24);
      v66 = 0;
      v67 = v161;
      goto LABEL_15;
    }

LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

LABEL_15:
  v67(v64, v66, 1, v24);
  v72 = *(v69 + 48);
  v73 = v156;
  outlined init with copy of ContextMenuPreviewModifier<ZStack<ModifiedContent<AnyView?, StyleContextWriter<MenuStyleContext>>>, AnyView?>(v65, v156, type metadata accessor for UUID?);
  outlined init with copy of ContextMenuPreviewModifier<ZStack<ModifiedContent<AnyView?, StyleContextWriter<MenuStyleContext>>>, AnyView?>(v64, v73 + v72, type metadata accessor for UUID?);
  v74 = v147;
  if (v147(v73, 1, v24) == 1)
  {
    outlined destroy of TableColumnCollection.Entry(v64, type metadata accessor for UUID?);
    outlined destroy of TableColumnCollection.Entry(v65, type metadata accessor for UUID?);
    v75 = v74(v73 + v72, 1, v24);
    v76 = v163;
    v77 = v171;
    if (v75 == 1)
    {
      outlined destroy of TableColumnCollection.Entry(v73, type metadata accessor for UUID?);
      LODWORD(v156) = 0;
      v78 = v158;
      goto LABEL_22;
    }

    goto LABEL_20;
  }

  v79 = v68;
  outlined init with copy of ContextMenuPreviewModifier<ZStack<ModifiedContent<AnyView?, StyleContextWriter<MenuStyleContext>>>, AnyView?>(v73, v68, type metadata accessor for UUID?);
  if (v74(v73 + v72, 1, v24) == 1)
  {
    outlined destroy of TableColumnCollection.Entry(v166, type metadata accessor for UUID?);
    outlined destroy of TableColumnCollection.Entry(v65, type metadata accessor for UUID?);
    (v149[1])(v68, v24);
    v76 = v163;
    v77 = v171;
LABEL_20:
    outlined destroy of TableColumnCollection.Entry(v73, type metadata accessor for (UUID?, UUID?));
    LODWORD(v156) = 1;
    v78 = v158;
    goto LABEL_22;
  }

  v80 = v149;
  v81 = v65;
  v82 = v145;
  (v149[4])(v145, v73 + v72, v24);
  lazy protocol witness table accessor for type TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
  v83 = dispatch thunk of static Equatable.== infix(_:_:)();
  v84 = v80[1];
  v84(v82, v24);
  outlined destroy of TableColumnCollection.Entry(v166, type metadata accessor for UUID?);
  outlined destroy of TableColumnCollection.Entry(v81, type metadata accessor for UUID?);
  v84(v79, v24);
  outlined destroy of TableColumnCollection.Entry(v73, type metadata accessor for UUID?);
  LODWORD(v156) = v83 ^ 1;
  v76 = v163;
  v78 = v158;
  v77 = v171;
LABEL_22:
  v85 = type metadata accessor for TableCellFormula(0);
  v86 = (*(v77 + *(v85 + 36)))(v157);
  *v76 = static VerticalAlignment.center.getter();
  *(v76 + 8) = 0;
  *(v76 + 16) = 1;
  if (v167)
  {
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    LODWORD(v166) = 0;
    v168 = v182;
    v164 = v186;
    v165 = v184;
    v179[0] = 1;
    LOBYTE(v173) = v183;
    v172[0] = v185;
    v159 = 1;
    v160 = v183;
    v161 = v187;
    v87 = v185;
    LOBYTE(v180) = 0;
  }

  else
  {
    v168 = 0;
    v164 = 0;
    v165 = 0;
    v160 = 0;
    v161 = 0;
    v87 = 0;
    v159 = 0;
    LODWORD(v166) = 1;
  }

  v88 = v77 + *(v85 + 40);
  v89 = *v88;
  v90 = *(v88 + 8);
  memset(v179, 0, 40);
  v179[40] = -1;
  if ((v78 & 1) == 0 && (v90 & 1) == 0)
  {
    _s7SwiftUI25AccessibilityTableContextOSgWOhTm_1(v179, &lazy cache variable for type metadata for AccessibilityTableContext?, &type metadata for AccessibilityTableContext);
    *v179 = v144;
    *&v179[8] = v89;
    v179[40] = 1;
  }

  v180 = *v179;
  *v181 = *&v179[16];
  *&v181[9] = *&v179[25];
  v170 = v86;
  specialized View.accessibilityCombinedElement(options:ignoredTraits:)(0, v86, v167 & 1, &v175);
  v91 = v175;
  LODWORD(v167) = v176;
  v93 = v177;
  v92 = v178;
  v169 = v85;
  if (v181[24] == 255)
  {
    goto LABEL_31;
  }

  result = _s7SwiftUI0A19UIAnySortComparatorVSgWOcTm_0(&v180, &v173, &lazy cache variable for type metadata for AccessibilityTableContext?, &type metadata for AccessibilityTableContext);
  if (BYTE8(v174[1]) == 255)
  {
LABEL_38:
    __break(1u);
    return result;
  }

  *v179 = v173;
  *&v179[16] = v174[0];
  *&v179[25] = *(v174 + 9);
  swift_beginAccess();
  _s7SwiftUI0A19UIAnySortComparatorVSgWOcTm_0(v179, v172, &lazy cache variable for type metadata for AccessibilityTableContext?, &type metadata for AccessibilityTableContext);
  lazy protocol witness table accessor for type AccessibilityProperties.TableContextKey and conformance AccessibilityProperties.TableContextKey();

  AccessibilityProperties.subscript.setter();
  swift_endAccess();
  _s7SwiftUI25AccessibilityTableContextOSgWOhTm_1(v179, &lazy cache variable for type metadata for AccessibilityTableContext?, &type metadata for AccessibilityTableContext);

LABEL_31:
  v158 = v87;

  outlined destroy of TableColumnCollection.Entry(&v180, type metadata accessor for AccessibilityTableCellModifier<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>>);
  v157 = v92;

  v94 = 1;
  if (!(v156 & 1 | (*(&a10 + 1) == 0)))
  {
    v95 = swift_allocObject();
    *(v95 + 16) = a10;
    *(v95 + 32) = a11;
    v156 = v91;
    v96 = v141;
    *v141 = 4;
    type metadata accessor for Button<RotatingDisclosureIndicator>(0, &lazy cache variable for type metadata for Button<RotatingDisclosureIndicator>, lazy protocol witness table accessor for type RotatingDisclosureIndicator and conformance RotatingDisclosureIndicator, &type metadata for RotatingDisclosureIndicator, type metadata accessor for Button);
    v98 = v97;
    v99 = (v96 + *(v97 + 36));
    *v99 = partial apply for closure #1 in TableRowView.expandButton(expanded:tinted:);
    v99[1] = v95;
    v76 = v163;
    type metadata accessor for ButtonAction(0);
    swift_storeEnumTagMultiPayload();
    v100 = (v96 + *(v98 + 40));
    v180 = a10;
    v181[0] = a11 & 1;
    outlined copy of Binding<Int>?(a10, *(&a10 + 1));
    type metadata accessor for AccessibilityTableContext?(0, &lazy cache variable for type metadata for Binding<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
    v102 = v101;

    MEMORY[0x18D00ACC0](v179, v102);
    v103 = v179[0];
    *v100 = 1;
    v100[1] = v103;
    KeyPath = swift_getKeyPath();
    v105 = swift_getKeyPath();
    v106 = v96 + *(v140 + 36);
    *v106 = KeyPath;
    *(v106 + 8) = 0;
    *(v106 + 16) = v105;
    *(v106 + 24) = 0;
    v107 = v142;
    outlined init with copy of ContextMenuPreviewModifier<ZStack<ModifiedContent<AnyView?, StyleContextWriter<MenuStyleContext>>>, AnyView?>(v96, v142, type metadata accessor for ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>);
    v108 = v143;
    *v143 = 0;
    *(v108 + 8) = 1;
    type metadata accessor for (Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)(0, v109);
    outlined init with copy of ContextMenuPreviewModifier<ZStack<ModifiedContent<AnyView?, StyleContextWriter<MenuStyleContext>>>, AnyView?>(v107, v108 + *(v110 + 48), type metadata accessor for ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>);

    v111 = v96;
    v91 = v156;
    outlined destroy of TableColumnCollection.Entry(v111, type metadata accessor for ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>);
    outlined destroy of TableColumnCollection.Entry(v107, type metadata accessor for ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>);
    outlined init with take of TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>(v108, v162, type metadata accessor for TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>);
    v94 = 0;
  }

  v112 = v162;
  (*(v150 + 56))(v162, v94, 1, v151);
  type metadata accessor for _VariadicView.Tree<_VStackLayout, _ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>?>(0, &lazy cache variable for type metadata for _VariadicView.Tree<_HStackLayout, TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, type metadata accessor for TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>, MEMORY[0x1E697E258], MEMORY[0x1E697E250]);
  v114 = v76 + *(v113 + 44);
  v115 = v152;
  outlined init with copy of ContextMenuPreviewModifier<ZStack<ModifiedContent<AnyView?, StyleContextWriter<MenuStyleContext>>>, AnyView?>(v112, v152, type metadata accessor for TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?);
  v116 = v159;
  *v114 = 0;
  *(v114 + 8) = v116;
  v117 = v160;
  *(v114 + 16) = v168;
  *(v114 + 24) = v117;
  v119 = v157;
  v118 = v158;
  *(v114 + 32) = v165;
  *(v114 + 40) = v118;
  v120 = v161;
  *(v114 + 48) = v164;
  *(v114 + 56) = v120;
  *(v114 + 64) = v166;
  *(v114 + 72) = v91;
  *(v114 + 80) = v167;
  *(v114 + 88) = v93;
  *(v114 + 96) = v119;
  type metadata accessor for (ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)(0, &lazy cache variable for type metadata for (ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?), type metadata accessor for ModifiedContent<Spacer, _FrameLayout>?, type metadata accessor for ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, type metadata accessor for TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?);
  outlined init with copy of ContextMenuPreviewModifier<ZStack<ModifiedContent<AnyView?, StyleContextWriter<MenuStyleContext>>>, AnyView?>(v115, v114 + *(v121 + 64), type metadata accessor for TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?);

  outlined destroy of TableColumnCollection.Entry(v112, type metadata accessor for TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?);
  outlined destroy of TableColumnCollection.Entry(v115, type metadata accessor for TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?);

  if (one-time initialization token for tableColumnContentPadding != -1)
  {
    swift_once();
  }

  EdgeInsets.init(_all:)();
  v123 = v122;
  v125 = v124;
  v127 = v126;
  v129 = v128;
  type metadata accessor for ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>(0);
  v131 = v76 + *(v130 + 36);
  *v131 = 2;
  *(v131 + 8) = v123;
  *(v131 + 16) = v125;
  *(v131 + 24) = v127;
  *(v131 + 32) = v129;
  *(v131 + 40) = 0;
  EdgeInsets.init(_all:)();
  v132 = v76 + *(v153 + 36);
  *v132 = 8;
  *(v132 + 8) = v133;
  *(v132 + 16) = v134;
  *(v132 + 24) = v135;
  *(v132 + 32) = v136;
  *(v132 + 40) = 0;
  v137 = v171 + *(v169 + 7);
  v181[16] = *(v137 + 32);
  v138 = *(v137 + 16);
  v180 = *v137;
  *v181 = v138;
  specialized View.tableColumnFrame(_:alignment:)(&v180, *(v171 + *(v169 + 8)), v154);

  return outlined destroy of TableColumnCollection.Entry(v76, type metadata accessor for ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>);
}

uint64_t closure #1 in closure #1 in TableRowView.headerView(_:_:_:_:_:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TableColumnCollection.Entry?(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  specialized Collection.first.getter(v9);
  v10 = type metadata accessor for TableColumnCollection.Entry(0);
  if ((*(*(v10 - 8) + 48))(v9, 1, v10) == 1)
  {
    outlined destroy of TableColumnCollection.Entry(v9, type metadata accessor for TableColumnCollection.Entry?);
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0;
  }

  else
  {
    _s7SwiftUI0A19UIAnySortComparatorVSgWOcTm_0(&v9[*(v10 + 44)], &v12, &lazy cache variable for type metadata for SwiftUIAnySortComparator?, &type metadata for SwiftUIAnySortComparator);
    outlined destroy of TableColumnCollection.Entry(v9, type metadata accessor for TableColumnCollection.Entry);
    if (*(&v13 + 1))
    {
      v20[4] = v16;
      v20[5] = v17;
      v20[6] = v18;
      v21 = v19;
      v20[0] = v12;
      v20[1] = v13;
      v20[2] = v14;
      v20[3] = v15;
      sort(_:comparator:)(a2, a3, a4, v20);
      return outlined destroy of SwiftUIAnySortComparator(v20);
    }
  }

  return _s7SwiftUI25AccessibilityTableContextOSgWOhTm_1(&v12, &lazy cache variable for type metadata for SwiftUIAnySortComparator?, &type metadata for SwiftUIAnySortComparator);
}

uint64_t TableRowView.reuseIdentifier.getter(double a1)
{
  outlined init with copy of TableRowView.Storage((v1 + 48), &v3);
  if (v7)
  {
    if (v7 == 1)
    {

      _s7SwiftUI25AccessibilityTableContextOSgWOhTm_1(v4, &lazy cache variable for type metadata for AccessibilityTableContext?, &type metadata for AccessibilityTableContext);
      return 1;
    }

    else
    {

      outlined consume of Binding<[A1]>?<A, B, C><A1>(v4[0], v4[1]);
      outlined destroy of TableColumnCollection(&v6);
      return 2;
    }
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1(&v5);
    return 0;
  }
}

unint64_t instantiation function for generic protocol witness table for TableRowView(uint64_t a1)
{
  result = lazy protocol witness table accessor for type TableRowView and conformance TableRowView();
  *(a1 + 8) = result;
  return result;
}

void type metadata accessor for VStack<_ConditionalContent<_ConditionalContent<HStack<ForEach<ArraySlice<TableCellFormula>, UUID, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>>>, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>, VStack<_ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>?>>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for VStack<_ConditionalContent<_ConditionalContent<HStack<ForEach<ArraySlice<TableCellFormula>, UUID, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>>>, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>, VStack<_ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>?>>>)
  {
    type metadata accessor for _ConditionalContent<_ConditionalContent<HStack<ForEach<ArraySlice<TableCellFormula>, UUID, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>>>, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>, VStack<_ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>?>>(255, &lazy cache variable for type metadata for _ConditionalContent<_ConditionalContent<HStack<ForEach<ArraySlice<TableCellFormula>, UUID, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>>>, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>, VStack<_ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>?>>, type metadata accessor for _ConditionalContent<HStack<ForEach<ArraySlice<TableCellFormula>, UUID, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>>>, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>, type metadata accessor for VStack<_ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>?>, MEMORY[0x1E697F960]);
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<HStack<ForEach<ArraySlice<TableCellFormula>, UUID, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>>>, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>, VStack<_ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>?>> and conformance <> _ConditionalContent<A, B>();
    v1 = type metadata accessor for VStack();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for VStack<_ConditionalContent<_ConditionalContent<HStack<ForEach<ArraySlice<TableCellFormula>, UUID, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>>>, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>, VStack<_ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>?>>>);
    }
  }
}

void type metadata accessor for _ConditionalContent<HStack<ForEach<ArraySlice<TableCellFormula>, UUID, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>>>, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _ConditionalContent<HStack<ForEach<ArraySlice<TableCellFormula>, UUID, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>>>, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>)
  {
    type metadata accessor for HStack<ForEach<ArraySlice<TableCellFormula>, UUID, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>>>(255);
    type metadata accessor for ModifiedContent<Spacer, _FrameLayout>(255, &lazy cache variable for type metadata for ModifiedContent<AnyView, AccessibilityAttachmentModifier>, MEMORY[0x1E6981910], &type metadata for AccessibilityAttachmentModifier, MEMORY[0x1E697E830]);
    v1 = type metadata accessor for _ConditionalContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _ConditionalContent<HStack<ForEach<ArraySlice<TableCellFormula>, UUID, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>>>, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>);
    }
  }
}

void type metadata accessor for HStack<ForEach<ArraySlice<TableCellFormula>, UUID, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for HStack<ForEach<ArraySlice<TableCellFormula>, UUID, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>>>)
  {
    type metadata accessor for ForEach<ArraySlice<TableCellFormula>, UUID, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>>(255);
    lazy protocol witness table accessor for type ForEach<ArraySlice<TableCellFormula>, UUID, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>> and conformance <> ForEach<A, B, C>(&lazy protocol witness table cache variable for type ForEach<ArraySlice<TableCellFormula>, UUID, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>> and conformance <> ForEach<A, B, C>, type metadata accessor for ForEach<ArraySlice<TableCellFormula>, UUID, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>>, lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>, MEMORY[0x1E69819D0]);
    v1 = type metadata accessor for HStack();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for HStack<ForEach<ArraySlice<TableCellFormula>, UUID, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>>>);
    }
  }
}

void type metadata accessor for ForEach<ArraySlice<TableCellFormula>, UUID, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ForEach<ArraySlice<TableCellFormula>, UUID, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>>)
  {
    type metadata accessor for ArraySlice<TableCellFormula>(255);
    type metadata accessor for UUID();
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>(255);
    lazy protocol witness table accessor for type TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type ArraySlice<TableCellFormula> and conformance ArraySlice<A>, type metadata accessor for ArraySlice<TableCellFormula>, MEMORY[0x1E69E6970]);
    lazy protocol witness table accessor for type TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
    v1 = type metadata accessor for ForEach();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ForEach<ArraySlice<TableCellFormula>, UUID, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>>);
    }
  }
}

void type metadata accessor for HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>)
  {
    type metadata accessor for TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>(255);
    lazy protocol witness table accessor for type TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)> and conformance TupleView<A>, type metadata accessor for TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>, MEMORY[0x1E6981F48]);
    v1 = type metadata accessor for HStack();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>);
    }
  }
}

void type metadata accessor for TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>)
  {
    type metadata accessor for (ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)(255, &lazy cache variable for type metadata for (ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?), type metadata accessor for ModifiedContent<Spacer, _FrameLayout>?, type metadata accessor for ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, type metadata accessor for TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?);
    v1 = type metadata accessor for TupleView();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>);
    }
  }
}

void type metadata accessor for ModifiedContent<Spacer, _FrameLayout>?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<Spacer, _FrameLayout>?)
  {
    type metadata accessor for ModifiedContent<Spacer, _FrameLayout>(255, &lazy cache variable for type metadata for ModifiedContent<Spacer, _FrameLayout>, MEMORY[0x1E6981840], MEMORY[0x1E697E048], MEMORY[0x1E697E830]);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<Spacer, _FrameLayout>?);
    }
  }
}

void type metadata accessor for _UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>)
  {
    type metadata accessor for ModifiedContent<Spacer, _FrameLayout>(255, &lazy cache variable for type metadata for ModifiedContent<AnyView, TableRowForegroundStyleModifier>, MEMORY[0x1E6981910], &type metadata for TableRowForegroundStyleModifier, MEMORY[0x1E697E830]);
    lazy protocol witness table accessor for type ModifiedContent<AnyView, TableRowForegroundStyleModifier> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<AnyView, TableRowForegroundStyleModifier> and conformance <> ModifiedContent<A, B>, &lazy cache variable for type metadata for ModifiedContent<AnyView, TableRowForegroundStyleModifier>, &type metadata for TableRowForegroundStyleModifier, &protocol witness table for TableRowForegroundStyleModifier);
    v1 = type metadata accessor for _UnaryViewAdaptor();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>);
    }
  }
}

void type metadata accessor for (Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)(uint64_t a1, double a2)
{
  if (!lazy cache variable for type metadata for (Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>))
  {
    type metadata accessor for ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>));
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)
  {
    type metadata accessor for ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>(255);
    type metadata accessor for Button<RotatingDisclosureIndicator>(255, &lazy cache variable for type metadata for PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>, lazy protocol witness table accessor for type BorderlessButtonStyle and conformance BorderlessButtonStyle, &type metadata for BorderlessButtonStyle, type metadata accessor for PrimitiveButtonStyleContainerModifier);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>);
    }
  }
}

void type metadata accessor for ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>)
  {
    type metadata accessor for Button<RotatingDisclosureIndicator>(255, &lazy cache variable for type metadata for Button<RotatingDisclosureIndicator>, lazy protocol witness table accessor for type RotatingDisclosureIndicator and conformance RotatingDisclosureIndicator, &type metadata for RotatingDisclosureIndicator, type metadata accessor for Button);
    type metadata accessor for StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>(255);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)> and conformance TupleView<A>(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>> and conformance HStack<A>, type metadata accessor for HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, MEMORY[0x1E69817F8]);
    v5[1] = MEMORY[0x1E697E5D8];
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for VStack<_ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>?>(uint64_t a1, double a2)
{
  if (!lazy cache variable for type metadata for VStack<_ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>?>)
  {
    type metadata accessor for _ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>?(255);
    lazy protocol witness table accessor for type ForEach<ArraySlice<TableCellFormula>, UUID, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>> and conformance <> ForEach<A, B, C>(&lazy protocol witness table cache variable for type _ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>? and conformance <A> A?, type metadata accessor for _ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>?, lazy protocol witness table accessor for type _ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>> and conformance <> _ConditionalContent<A, B>, MEMORY[0x1E6982090]);
    v2 = type metadata accessor for VStack();
    if (!v3)
    {
      atomic_store(v2, &lazy cache variable for type metadata for VStack<_ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>?>);
    }
  }
}

void type metadata accessor for _ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>?)
  {
    type metadata accessor for _ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>(255, &lazy cache variable for type metadata for _ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>, MEMORY[0x1E697F960]);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>?);
    }
  }
}

void type metadata accessor for <<opaque return type of View.onTapGesture(count:perform:)>>.0(uint64_t a1, double a2)
{
  if (!lazy cache variable for type metadata for <<opaque return type of View.onTapGesture(count:perform:)>>.0)
  {
    type metadata accessor for ModifiedContent<TableSectionHeaderView, _ContentShapeModifier<Rectangle>>(255);
    lazy protocol witness table accessor for type ModifiedContent<TableSectionHeaderView, _ContentShapeModifier<Rectangle>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<TableSectionHeaderView, _ContentShapeModifier<Rectangle>> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<TableSectionHeaderView, _ContentShapeModifier<Rectangle>>, lazy protocol witness table accessor for type TableSectionHeaderView and conformance TableSectionHeaderView, lazy protocol witness table accessor for type _ContentShapeModifier<Rectangle> and conformance _ContentShapeModifier<A>);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v3)
    {
      atomic_store(OpaqueTypeMetadata2, &lazy cache variable for type metadata for <<opaque return type of View.onTapGesture(count:perform:)>>.0);
    }
  }
}

void type metadata accessor for ModifiedContent<TableSectionHeaderView, _ContentShapeModifier<Rectangle>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<TableSectionHeaderView, _ContentShapeModifier<Rectangle>>)
  {
    type metadata accessor for Button<RotatingDisclosureIndicator>(255, &lazy cache variable for type metadata for _ContentShapeModifier<Rectangle>, lazy protocol witness table accessor for type Rectangle and conformance Rectangle, MEMORY[0x1E6981EF8], MEMORY[0x1E697FD48]);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<TableSectionHeaderView, _ContentShapeModifier<Rectangle>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type TableSectionHeaderView and conformance TableSectionHeaderView()
{
  result = lazy protocol witness table cache variable for type TableSectionHeaderView and conformance TableSectionHeaderView;
  if (!lazy protocol witness table cache variable for type TableSectionHeaderView and conformance TableSectionHeaderView)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TableSectionHeaderView, &type metadata for TableSectionHeaderView, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TableSectionHeaderView and conformance TableSectionHeaderView);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ForEach<ArraySlice<TableCellFormula>, UUID, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>> and conformance <> ForEach<A, B, C>(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(void), const char *a4)
{
  result = *a1;
  if (!result)
  {
    v8 = a2(255);
    v9 = a3();
    result = swift_getWitnessTable(a4, v8, &v9);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>> and conformance <> _ConditionalContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for _ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>(255, &lazy cache variable for type metadata for _ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>, MEMORY[0x1E697F960]);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type TableHeaderView and conformance TableHeaderView();
    v5[1] = lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable(MEMORY[0x1E697F968], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TableHeaderView and conformance TableHeaderView()
{
  result = lazy protocol witness table cache variable for type TableHeaderView and conformance TableHeaderView;
  if (!lazy protocol witness table cache variable for type TableHeaderView and conformance TableHeaderView)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TableHeaderView, &type metadata for TableHeaderView, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TableHeaderView and conformance TableHeaderView);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier> and conformance <> ModifiedContent<A, B>)
  {
    v6[6] = v0;
    v6[7] = v1;
    type metadata accessor for ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>(255);
    v4 = v3;
    type metadata accessor for ModifiedContent<TableSectionHeaderView, _ContentShapeModifier<Rectangle>>(255);
    v6[2] = v5;
    v6[3] = lazy protocol witness table accessor for type ModifiedContent<TableSectionHeaderView, _ContentShapeModifier<Rectangle>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<TableSectionHeaderView, _ContentShapeModifier<Rectangle>> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<TableSectionHeaderView, _ContentShapeModifier<Rectangle>>, lazy protocol witness table accessor for type TableSectionHeaderView and conformance TableSectionHeaderView, lazy protocol witness table accessor for type _ContentShapeModifier<Rectangle> and conformance _ContentShapeModifier<A>);
    v6[0] = swift_getOpaqueTypeConformance2();
    v6[1] = MEMORY[0x1E69805B0];
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v6);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<HStack<ForEach<ArraySlice<TableCellFormula>, UUID, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>>>, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>, VStack<_ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>?>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<HStack<ForEach<ArraySlice<TableCellFormula>, UUID, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>>>, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>, VStack<_ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>?>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<HStack<ForEach<ArraySlice<TableCellFormula>, UUID, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>>>, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>, VStack<_ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>?>> and conformance <> _ConditionalContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for _ConditionalContent<_ConditionalContent<HStack<ForEach<ArraySlice<TableCellFormula>, UUID, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>>>, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>, VStack<_ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>?>>(255, &lazy cache variable for type metadata for _ConditionalContent<_ConditionalContent<HStack<ForEach<ArraySlice<TableCellFormula>, UUID, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>>>, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>, VStack<_ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>?>>, type metadata accessor for _ConditionalContent<HStack<ForEach<ArraySlice<TableCellFormula>, UUID, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>>>, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>, type metadata accessor for VStack<_ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>?>, MEMORY[0x1E697F960]);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type _ConditionalContent<HStack<ForEach<ArraySlice<TableCellFormula>, UUID, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>>>, ModifiedContent<AnyView, AccessibilityAttachmentModifier>> and conformance <> _ConditionalContent<A, B>();
    v5[1] = lazy protocol witness table accessor for type TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type VStack<_ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>?> and conformance VStack<A>, type metadata accessor for VStack<_ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>?>, MEMORY[0x1E6981870]);
    result = swift_getWitnessTable(MEMORY[0x1E697F968], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<HStack<ForEach<ArraySlice<TableCellFormula>, UUID, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>>>, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>, VStack<_ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>?>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<HStack<ForEach<ArraySlice<TableCellFormula>, UUID, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>>>, ModifiedContent<AnyView, AccessibilityAttachmentModifier>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<HStack<ForEach<ArraySlice<TableCellFormula>, UUID, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>>>, ModifiedContent<AnyView, AccessibilityAttachmentModifier>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<HStack<ForEach<ArraySlice<TableCellFormula>, UUID, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>>>, ModifiedContent<AnyView, AccessibilityAttachmentModifier>> and conformance <> _ConditionalContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for _ConditionalContent<HStack<ForEach<ArraySlice<TableCellFormula>, UUID, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>>>, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type HStack<ForEach<ArraySlice<TableCellFormula>, UUID, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>>> and conformance HStack<A>, type metadata accessor for HStack<ForEach<ArraySlice<TableCellFormula>, UUID, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>>>, MEMORY[0x1E69817F8]);
    v5[1] = lazy protocol witness table accessor for type ModifiedContent<AnyView, TableRowForegroundStyleModifier> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<AnyView, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>, &lazy cache variable for type metadata for ModifiedContent<AnyView, AccessibilityAttachmentModifier>, &type metadata for AccessibilityAttachmentModifier, &protocol witness table for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable(MEMORY[0x1E697F968], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<HStack<ForEach<ArraySlice<TableCellFormula>, UUID, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>>>, ModifiedContent<AnyView, AccessibilityAttachmentModifier>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<AnyView, TableRowForegroundStyleModifier> and conformance <> ModifiedContent<A, B>(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ModifiedContent<Spacer, _FrameLayout>(255, a2, MEMORY[0x1E6981910], a3, MEMORY[0x1E697E830]);
    v8[0] = MEMORY[0x1E6981900];
    v8[1] = a4;
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v7, v8);
    atomic_store(result, a1);
  }

  return result;
}

void type metadata accessor for ModifiedContent<VStack<_ConditionalContent<_ConditionalContent<HStack<ForEach<ArraySlice<TableCellFormula>, UUID, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>>>, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>, VStack<_ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>?>>>, _EnvironmentKeyWritingModifier<Int?>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<VStack<_ConditionalContent<_ConditionalContent<HStack<ForEach<ArraySlice<TableCellFormula>, UUID, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>>>, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>, VStack<_ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>?>>>, _EnvironmentKeyWritingModifier<Int?>>)
  {
    type metadata accessor for VStack<_ConditionalContent<_ConditionalContent<HStack<ForEach<ArraySlice<TableCellFormula>, UUID, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>>>, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>, VStack<_ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>?>>>(255);
    _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMaTm_6(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Int?>, &lazy cache variable for type metadata for Int?, MEMORY[0x1E69E6530]);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<VStack<_ConditionalContent<_ConditionalContent<HStack<ForEach<ArraySlice<TableCellFormula>, UUID, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>>>, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>, VStack<_ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>?>>>, _EnvironmentKeyWritingModifier<Int?>>);
    }
  }
}

void type metadata accessor for _ConditionalContent<_ConditionalContent<HStack<ForEach<ArraySlice<TableCellFormula>, UUID, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>>>, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>, VStack<_ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>?>>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4(255);
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void type metadata accessor for ContextMenuPreviewModifier<ZStack<ModifiedContent<AnyView?, StyleContextWriter<MenuStyleContext>>>, AnyView?>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ContextMenuPreviewModifier<ZStack<ModifiedContent<AnyView?, StyleContextWriter<MenuStyleContext>>>, AnyView?>)
  {
    type metadata accessor for ZStack<ModifiedContent<AnyView?, StyleContextWriter<MenuStyleContext>>>(255);
    v3 = v2;
    type metadata accessor for AccessibilityTableContext?(255, &lazy cache variable for type metadata for AnyView?, MEMORY[0x1E6981910], MEMORY[0x1E69E6720]);
    v7[0] = v3;
    v7[1] = v4;
    v7[2] = lazy protocol witness table accessor for type TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type ZStack<ModifiedContent<AnyView?, StyleContextWriter<MenuStyleContext>>> and conformance ZStack<A>, type metadata accessor for ZStack<ModifiedContent<AnyView?, StyleContextWriter<MenuStyleContext>>>, MEMORY[0x1E6981880]);
    v7[3] = lazy protocol witness table accessor for type AnyView? and conformance <A> A?();
    v5 = type metadata accessor for ContextMenuPreviewModifier(a1, v7);
    if (!v6)
    {
      atomic_store(v5, &lazy cache variable for type metadata for ContextMenuPreviewModifier<ZStack<ModifiedContent<AnyView?, StyleContextWriter<MenuStyleContext>>>, AnyView?>);
    }
  }
}

void type metadata accessor for ZStack<ModifiedContent<AnyView?, StyleContextWriter<MenuStyleContext>>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ZStack<ModifiedContent<AnyView?, StyleContextWriter<MenuStyleContext>>>)
  {
    type metadata accessor for ModifiedContent<AnyView?, StyleContextWriter<MenuStyleContext>>(255);
    lazy protocol witness table accessor for type ModifiedContent<TableSectionHeaderView, _ContentShapeModifier<Rectangle>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<AnyView?, StyleContextWriter<MenuStyleContext>> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<AnyView?, StyleContextWriter<MenuStyleContext>>, lazy protocol witness table accessor for type AnyView? and conformance <A> A?, lazy protocol witness table accessor for type StyleContextWriter<MenuStyleContext> and conformance StyleContextWriter<A>);
    v1 = type metadata accessor for ZStack();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ZStack<ModifiedContent<AnyView?, StyleContextWriter<MenuStyleContext>>>);
    }
  }
}

void type metadata accessor for ModifiedContent<AnyView?, StyleContextWriter<MenuStyleContext>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<AnyView?, StyleContextWriter<MenuStyleContext>>)
  {
    type metadata accessor for AccessibilityTableContext?(255, &lazy cache variable for type metadata for AnyView?, MEMORY[0x1E6981910], MEMORY[0x1E69E6720]);
    type metadata accessor for ModifiedContent<Spacer, _FrameLayout>(255, &lazy cache variable for type metadata for StyleContextWriter<MenuStyleContext>, MEMORY[0x1E697EA18], MEMORY[0x1E697EA10], MEMORY[0x1E697F4C8]);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<AnyView?, StyleContextWriter<MenuStyleContext>>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<TableSectionHeaderView, _ContentShapeModifier<Rectangle>> and conformance <> ModifiedContent<A, B>(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v8 = a2(255);
    v9[0] = a3();
    v9[1] = a4();
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v8, v9);
    atomic_store(result, a1);
  }

  return result;
}

void type metadata accessor for SwipeActionsModifier<AnyView?>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for SwipeActionsModifier<AnyView?>)
  {
    type metadata accessor for AccessibilityTableContext?(255, &lazy cache variable for type metadata for AnyView?, MEMORY[0x1E6981910], MEMORY[0x1E69E6720]);
    v3 = v2;
    v4 = lazy protocol witness table accessor for type AnyView? and conformance <A> A?();
    v6 = type metadata accessor for SwipeActionsModifier(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for SwipeActionsModifier<AnyView?>);
    }
  }
}

void type metadata accessor for _VariadicView.Tree<_VStackLayout, _ConditionalContent<_ConditionalContent<HStack<ForEach<ArraySlice<TableCellFormula>, UUID, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>>>, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>, VStack<_ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>?>>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _VariadicView.Tree<_VStackLayout, _ConditionalContent<_ConditionalContent<HStack<ForEach<ArraySlice<TableCellFormula>, UUID, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>>>, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>, VStack<_ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>?>>>)
  {
    type metadata accessor for _ConditionalContent<_ConditionalContent<HStack<ForEach<ArraySlice<TableCellFormula>, UUID, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>>>, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>, VStack<_ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>?>>(255, &lazy cache variable for type metadata for _ConditionalContent<_ConditionalContent<HStack<ForEach<ArraySlice<TableCellFormula>, UUID, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>>>, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>, VStack<_ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>?>>, type metadata accessor for _ConditionalContent<HStack<ForEach<ArraySlice<TableCellFormula>, UUID, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>>>, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>, type metadata accessor for VStack<_ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>?>, MEMORY[0x1E697F960]);
    v1 = type metadata accessor for _VariadicView.Tree();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _VariadicView.Tree<_VStackLayout, _ConditionalContent<_ConditionalContent<HStack<ForEach<ArraySlice<TableCellFormula>, UUID, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>>>, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>, VStack<_ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>?>>>);
    }
  }
}

_BYTE *TableRowForegroundStyleModifier.ChildEnvironment.value.getter@<X0>(void *a2@<X8>)
{
  Value = AGGraphGetValue();
  v5 = *Value;
  v4 = Value[1];
  v7 = *Value;

  result = AGGraphGetValue();
  if ((*result & 1) == 0)
  {

    ShapeStyle.copyStyle(name:in:foregroundStyle:)();

    result = EnvironmentValues.defaultForegroundStyle.setter();
    v5 = v7;
  }

  *a2 = v5;
  a2[1] = v4;
  return result;
}

uint64_t protocol witness for static ViewInputsModifier._makeViewInputs(modifier:inputs:) in conformance TableRowForegroundStyleModifier(int *a1, uint64_t a2)
{
  swift_beginAccess();
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  lazy protocol witness table accessor for type TableRowForegroundStyleModifier.ChildEnvironment and conformance TableRowForegroundStyleModifier.ChildEnvironment();
  Attribute.init<A>(body:value:flags:update:)();
  return _GraphInputs.environment.setter();
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance TableRowForegroundStyleModifier(unsigned int *a1, uint64_t a2, void (*a3)(uint64_t, __int128 *), uint64_t a4)
{
  v4 = *a1;
  v5 = *(a2 + 48);
  v8[2] = *(a2 + 32);
  v8[3] = v5;
  v8[4] = *(a2 + 64);
  v9 = *(a2 + 80);
  v6 = *(a2 + 16);
  v8[0] = *a2;
  v8[1] = v6;
  return specialized static ViewInputsModifier._makeView(modifier:inputs:body:)(v4, v8, a3, a4);
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance TableRowForegroundStyleModifier(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = lazy protocol witness table accessor for type TableRowForegroundStyleModifier and conformance TableRowForegroundStyleModifier();

  return MEMORY[0x1EEDE0CC8](a1, a2, a3, a4, a5, v10);
}

void key path getter for EnvironmentValues.activeContextMenu : EnvironmentValues(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  if (a1[1])
  {
    type metadata accessor for ModifiedContent<Spacer, _FrameLayout>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ActiveContextMenuKey>, &type metadata for ActiveContextMenuKey, &protocol witness table for ActiveContextMenuKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ActiveContextMenuKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for ModifiedContent<Spacer, _FrameLayout>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ActiveContextMenuKey>, &type metadata for ActiveContextMenuKey, &protocol witness table for ActiveContextMenuKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ActiveContextMenuKey> and conformance EnvironmentPropertyKey<A>();
    PropertyList.subscript.getter();
  }

  *a2 = v3;
  *(a2 + 4) = v4;
}

double key path setter for EnvironmentValues.activeContextMenu : EnvironmentValues(int *a1, void *a2)
{
  type metadata accessor for ModifiedContent<Spacer, _FrameLayout>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ActiveContextMenuKey>, &type metadata for ActiveContextMenuKey, &protocol witness table for ActiveContextMenuKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<ActiveContextMenuKey> and conformance EnvironmentPropertyKey<A>();

  PropertyList.subscript.setter();
  if (a2[1])
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  return result;
}

uint64_t key path getter for EnvironmentValues.lineLimit : EnvironmentValues, serialized@<X0>(uint64_t a1@<X8>)
{
  result = EnvironmentValues.lineLimit.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t outlined init with take of VStack<_ConditionalContent<_ConditionalContent<HStack<ForEach<ArraySlice<TableCellFormula>, UUID, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>>>, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>, VStack<_ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>?>>>(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of TableColumnCollection.Entry(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s7SwiftUI0A19UIAnySortComparatorVSgWOcTm_0(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  type metadata accessor for AccessibilityTableContext?(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<_ConditionalContent<_ConditionalContent<HStack<ForEach<ArraySlice<TableCellFormula>, UUID, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>>>, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>, VStack<_ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>?>>>, _EnvironmentKeyWritingModifie(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<_ConditionalContent<_ConditionalContent<HStack<ForEach<ArraySlice<TableCellFormula>, UUID, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>>>, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>, VStack<_ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>?>>>, _EnvironmentKe)
  {
    type metadata accessor for _ConditionalContent<_ConditionalContent<HStack<ForEach<ArraySlice<TableCellFormula>, UUID, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>>>, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>, VStack<_ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>?>>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<_ConditionalContent<_ConditionalContent<HStack<ForEach<ArraySlice<TableCellFormula>, UUID, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>>>, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>, VStack<_ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>?>>>, _EnvironmentKeyWritingModifier, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<VStack<_ConditionalContent<_ConditionalContent<HStack<ForEach<ArraySlice<TableCellFormula>, UUID, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>>>, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>, VStack<_ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>?>>>, _EnvironmentKeyWritingModifier<Int?>>, ContextMenuPreviewModi, type metadata accessor for SwipeActionsModifier<AnyView?>, MEMORY[0x1E697E830]);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<_ConditionalContent<_ConditionalContent<HStack<ForEach<ArraySlice<TableCellFormula>, UUID, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>>>, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>, VStack<_ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>?>>>, _EnvironmentKe);
    }
  }
}

uint64_t _s7SwiftUI25AccessibilityTableContextOSgWOhTm_1(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  type metadata accessor for AccessibilityTableContext?(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void type metadata accessor for _ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, uint64_t))
{
  if (!*a2)
  {
    type metadata accessor for ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>(255);
    v7 = a3(a1, &type metadata for TableHeaderView, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t outlined destroy of AccessibilityTableCellModifier<AnyView>(uint64_t a1)
{
  type metadata accessor for ModifiedContent<Spacer, _FrameLayout>(0, &lazy cache variable for type metadata for AccessibilityTableCellModifier<AnyView>, MEMORY[0x1E6981910], MEMORY[0x1E6981900], type metadata accessor for AccessibilityTableCellModifier);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata accessor for AccessibilityTableCellModifier<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for AccessibilityTableCellModifier<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>>)
  {
    type metadata accessor for _UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>(255);
    v3 = v2;
    v4 = lazy protocol witness table accessor for type TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type _UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>> and conformance _UnaryViewAdaptor<A>, type metadata accessor for _UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, MEMORY[0x1E697F380]);
    v6 = type metadata accessor for AccessibilityTableCellModifier(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for AccessibilityTableCellModifier<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>>);
    }
  }
}

void type metadata accessor for _VariadicView.Tree<_VStackLayout, _ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>?>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  if (!*a2)
  {
    a3(255);
    v6 = type metadata accessor for _VariadicView.Tree();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<_ConditionalContent<_ConditionalContent<HStack<ForEach<ArraySlice<TableCellFormula>, UUID, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>>>, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>, VStack<_ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>?>>>, _EnvironmentKeyWritingModi()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<_ConditionalContent<_ConditionalContent<HStack<ForEach<ArraySlice<TableCellFormula>, UUID, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>>>, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>, VStack<_ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>?>>>, _EnvironmentKeyWriti;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<_ConditionalContent<_ConditionalContent<HStack<ForEach<ArraySlice<TableCellFormula>, UUID, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>>>, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>, VStack<_ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>?>>>, _EnvironmentKeyWriti)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for _ConditionalContent<_ConditionalContent<HStack<ForEach<ArraySlice<TableCellFormula>, UUID, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>>>, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>, VStack<_ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>?>>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<_ConditionalContent<_ConditionalContent<HStack<ForEach<ArraySlice<TableCellFormula>, UUID, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>>>, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>, VStack<_ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>?>>>, _EnvironmentKeyWritingModifier, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<VStack<_ConditionalContent<_ConditionalContent<HStack<ForEach<ArraySlice<TableCellFormula>, UUID, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>>>, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>, VStack<_ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>?>>>, _EnvironmentKeyWritingModifier<Int?>>, ContextMenuPreviewModi, type metadata accessor for SwipeActionsModifier<AnyView?>, MEMORY[0x1E697E830]);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>( &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<VStack<_ConditionalContent<_ConditionalContent<HStack<ForEach<ArraySlice<TableCellFormula>, UUID, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>>>, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>, VStack<_ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>?>>>, _EnvironmentKeyWritingModifier<Int?>,  type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<VStack<_ConditionalContent<_ConditionalContent<HStack<ForEach<ArraySlice<TableCellFormula>, UUID, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>>>, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>, VStack<_ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>?>>>, _EnvironmentKeyWritingModifier<Int?>>, ContextMenuPreviewModi,  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<VStack<_ConditionalContent<_ConditionalContent<HStack<ForEach<ArraySlice<TableCellFormula>, UUID, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>>>, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>, VStack<_ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>?>>>, _EnvironmentKeyWritingModifier<Int?>>, ContextMenuPreviewM,  &protocol witness table for SwipeActionsModifier<A>);
    v5[1] = &protocol witness table for SwipeActionsModifier<A>;
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<_ConditionalContent<_ConditionalContent<HStack<ForEach<ArraySlice<TableCellFormula>, UUID, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>>>, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>, VStack<_ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>?>>>, _EnvironmentKeyWriti);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<VStack<_ConditionalContent<_ConditionalContent<HStack<ForEach<ArraySlice<TableCellFormula>, UUID, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>>>, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>, VStack<_ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>?>>>, _EnvironmentKeyWritingModifier<Int?>>, ContextMenuPreviewM()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<VStack<_ConditionalContent<_ConditionalContent<HStack<ForEach<ArraySlice<TableCellFormula>, UUID, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>>>, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>, VStack<_ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>?>>>, _EnvironmentKeyWritingModifier<Int?>>, ContextMenuPr;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<VStack<_ConditionalContent<_ConditionalContent<HStack<ForEach<ArraySlice<TableCellFormula>, UUID, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>>>, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>, VStack<_ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>?>>>, _EnvironmentKeyWritingModifier<Int?>>, ContextMenuPr)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<ModifiedContent<VStack<_ConditionalContent<_ConditionalContent<HStack<ForEach<ArraySlice<TableCellFormula>, UUID, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>>>, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>, VStack<_ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>?>>>, _EnvironmentKeyWritingModifier<Int?>>, ContextMenuPreviewModifier<ZStack<Modi(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ModifiedContent<VStack<_ConditionalContent<_ConditionalContent<HStack<ForEach<ArraySlice<TableCellFormula>, UUID, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>>>, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>, VStack<_ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>?>>>, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedContent<A();
    v5[1] = lazy protocol witness table accessor for type TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type ContextMenuPreviewModifier<ZStack<ModifiedContent<AnyView?, StyleContextWriter<MenuStyleContext>>>, AnyView?> and conformance ContextMenuPreviewModifier<A, B>, type metadata accessor for ContextMenuPreviewModifier<ZStack<ModifiedContent<AnyView?, StyleContextWriter<MenuStyleContext>>>, AnyView?>, protocol conformance descriptor for ContextMenuPreviewModifier<A, B>);
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<VStack<_ConditionalContent<_ConditionalContent<HStack<ForEach<ArraySlice<TableCellFormula>, UUID, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>>>, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>, VStack<_ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>?>>>, _EnvironmentKeyWritingModifier<Int?>>, ContextMenuPr);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<VStack<_ConditionalContent<_ConditionalContent<HStack<ForEach<ArraySlice<TableCellFormula>, UUID, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>>>, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>, VStack<_ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>?>>>, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedContent<A()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<VStack<_ConditionalContent<_ConditionalContent<HStack<ForEach<ArraySlice<TableCellFormula>, UUID, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>>>, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>, VStack<_ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>?>>>, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedCon;
  if (!lazy protocol witness table cache variable for type ModifiedContent<VStack<_ConditionalContent<_ConditionalContent<HStack<ForEach<ArraySlice<TableCellFormula>, UUID, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>>>, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>, VStack<_ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>?>>>, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedCon)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<VStack<_ConditionalContent<_ConditionalContent<HStack<ForEach<ArraySlice<TableCellFormula>, UUID, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>>>, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>, VStack<_ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>?>>>, _EnvironmentKeyWritingModifier<Int?>>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type VStack<_ConditionalContent<_ConditionalContent<HStack<ForEach<ArraySlice<TableCellFormula>, UUID, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>>>, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>, VStack<_ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>?>>> and conformance VStack<A>, type metadata accessor for VStack<_ConditionalContent<_ConditionalContent<HStack<ForEach<ArraySlice<TableCellFormula>, UUID, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>>>, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>, VStack<_ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>?>>>, MEMORY[0x1E6981870]);
    v5[1] = _s7SwiftUI30_EnvironmentKeyWritingModifierVySiSgGACyxGAA04ViewF0AAWlTm_1(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Int?> and conformance _EnvironmentKeyWritingModifier<A>, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Int?>, &lazy cache variable for type metadata for Int?, MEMORY[0x1E69E6530]);
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<VStack<_ConditionalContent<_ConditionalContent<HStack<ForEach<ArraySlice<TableCellFormula>, UUID, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>>>, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>, VStack<_ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>?>>>, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedCon);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TableRowForegroundStyleModifier.ChildEnvironment and conformance TableRowForegroundStyleModifier.ChildEnvironment()
{
  result = lazy protocol witness table cache variable for type TableRowForegroundStyleModifier.ChildEnvironment and conformance TableRowForegroundStyleModifier.ChildEnvironment;
  if (!lazy protocol witness table cache variable for type TableRowForegroundStyleModifier.ChildEnvironment and conformance TableRowForegroundStyleModifier.ChildEnvironment)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TableRowForegroundStyleModifier.ChildEnvironment, &unk_1EFFFF0D0, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TableRowForegroundStyleModifier.ChildEnvironment and conformance TableRowForegroundStyleModifier.ChildEnvironment);
  }

  return result;
}

void type metadata accessor for (ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    a5(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v9)
    {
      atomic_store(TupleTypeMetadata3, a2);
    }
  }
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    v8 = a2(255);
    v9[0] = a3();
    v9[1] = a4;
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v8, v9);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t _s7SwiftUI30_EnvironmentKeyWritingModifierVySiSgGACyxGAA04ViewF0AAWlTm_1(unint64_t *a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMaTm_6(255, a2, a3, a4);
    result = swift_getWitnessTable(MEMORY[0x1E6980A18], v6);
    atomic_store(result, a1);
  }

  return result;
}

void type metadata accessor for ArraySlice<TableCellFormula>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for ModifiedContent();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t View.badgedViewStyle<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for BadgedViewStyleModifier(0, v11, v13, v12);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v20 - v17;
  (*(v8 + 16))(v10, a1, a3, v16);
  (*(v8 + 32))(v18, v10, a3);
  MEMORY[0x18D00A570](v18, a2, v14, a4);
  return (*(v15 + 8))(v18, v14);
}

uint64_t BadgeViewStyleConfiguration.badgeText.getter()
{
  v1 = type metadata accessor for Locale();
  MEMORY[0x1EEE9AC00](v1 - 8);
  type metadata accessor for IntegerFormatStyle<Int>(0, &lazy cache variable for type metadata for IntegerFormatStyle<Int>, lazy protocol witness table accessor for type Int and conformance Int, MEMORY[0x1E69E6530], MEMORY[0x1E6968900]);
  MEMORY[0x1EEE9AC00](v2);
  result = 0;
  v4 = v0[2];
  if (v4 >> 1 != 0xFFFFFFFF)
  {
    if ((v4 & 0x8000000000000000) != 0)
    {
      v5 = *v0;
      outlined copy of Text.Storage(*v0, v0[1], v4 & 1);

      return v5;
    }

    else
    {
      static Locale.autoupdatingCurrent.getter();
      lazy protocol witness table accessor for type Int and conformance Int();
      IntegerFormatStyle.init(locale:)();
      lazy protocol witness table accessor for type IntegerFormatStyle<Int> and conformance IntegerFormatStyle<A>();
      return Text.init<A>(_:format:)();
    }
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for BadgeViewStyleConfiguration.Content(uint64_t a1)
{
  result = lazy protocol witness table accessor for type BadgeViewStyleConfiguration.Content and conformance BadgeViewStyleConfiguration.Content();
  *(a1 + 8) = result;
  return result;
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance ResolvedBadgedView(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type ResolvedBadgedView and conformance ResolvedBadgedView();

  return MEMORY[0x1EEDDE4C0](a1, a2, a3, v6);
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance ResolvedBadgedView(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type ResolvedBadgedView and conformance ResolvedBadgedView();

  return MEMORY[0x1EEDDE4C8](a1, a2, a3, v6);
}

uint64_t BadgedViewStyleModifier.styleBody(configuration:)(_OWORD *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v3 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v15 - v10;
  v12 = a1[1];
  v15[0] = *a1;
  v15[1] = v12;
  (*(v3 + 24))(v15, v4, v3);
  swift_getAssociatedConformanceWitness();
  static ViewBuilder.buildExpression<A>(_:)();
  v13 = *(v6 + 8);
  v13(v8, AssociatedTypeWitness);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v13)(v11, AssociatedTypeWitness);
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance BadgedViewStyleModifier<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for BadgedViewStyleModifier<A>, a5);

  return MEMORY[0x1EEDDE4B8](a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance BadgedViewStyleModifier<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for BadgedViewStyleModifier<A>, a5);

  return MEMORY[0x1EEDDE4A8](a1, a2, a3, a4, a5, WitnessTable);
}

unint64_t lazy protocol witness table accessor for type ResolvedBadgedView and conformance ResolvedBadgedView()
{
  result = lazy protocol witness table cache variable for type ResolvedBadgedView and conformance ResolvedBadgedView;
  if (!lazy protocol witness table cache variable for type ResolvedBadgedView and conformance ResolvedBadgedView)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ResolvedBadgedView, &type metadata for ResolvedBadgedView, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ResolvedBadgedView and conformance ResolvedBadgedView);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ResolvedBadgedView and conformance ResolvedBadgedView;
  if (!lazy protocol witness table cache variable for type ResolvedBadgedView and conformance ResolvedBadgedView)
  {
    result = swift_getWitnessTable("-n\tbtT\b", &type metadata for ResolvedBadgedView, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ResolvedBadgedView and conformance ResolvedBadgedView);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type BadgedViewStyleModifier<AutomaticBadgedViewStyle> and conformance BadgedViewStyleModifier<A>(double a1)
{
  result = lazy protocol witness table cache variable for type BadgedViewStyleModifier<AutomaticBadgedViewStyle> and conformance BadgedViewStyleModifier<A>;
  if (!lazy protocol witness table cache variable for type BadgedViewStyleModifier<AutomaticBadgedViewStyle> and conformance BadgedViewStyleModifier<A>)
  {
    type metadata accessor for IntegerFormatStyle<Int>(255, &lazy cache variable for type metadata for BadgedViewStyleModifier<AutomaticBadgedViewStyle>, lazy protocol witness table accessor for type AutomaticBadgedViewStyle and conformance AutomaticBadgedViewStyle, &type metadata for AutomaticBadgedViewStyle, type metadata accessor for BadgedViewStyleModifier);
    result = swift_getWitnessTable(protocol conformance descriptor for BadgedViewStyleModifier<A>, v4, v1, v2);
    atomic_store(result, &lazy protocol witness table cache variable for type BadgedViewStyleModifier<AutomaticBadgedViewStyle> and conformance BadgedViewStyleModifier<A>);
  }

  return result;
}

void type metadata accessor for IntegerFormatStyle<Int>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type DragDropPreviewsFormation and conformance DragDropPreviewsFormation()
{
  result = lazy protocol witness table cache variable for type DragDropPreviewsFormation and conformance DragDropPreviewsFormation;
  if (!lazy protocol witness table cache variable for type DragDropPreviewsFormation and conformance DragDropPreviewsFormation)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DragDropPreviewsFormation, &type metadata for DragDropPreviewsFormation, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type DragDropPreviewsFormation and conformance DragDropPreviewsFormation);
  }

  return result;
}

uint64_t assignWithCopy for PlatformItemListGenerator(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);

  *(a1 + 40) = *(a2 + 40);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 52) = *(a2 + 52);
  *(a1 + 56) = *(a2 + 56);

  *(a1 + 64) = *(a2 + 64);

  *(a1 + 72) = *(a2 + 72);
  *(a1 + 76) = *(a2 + 76);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 84) = *(a2 + 84);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 92) = *(a2 + 92);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 100) = *(a2 + 100);
  *(a1 + 104) = *(a2 + 104);
  return a1;
}

uint64_t assignWithTake for PlatformItemListGenerator(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);

  *(a1 + 40) = *(a2 + 40);

  *(a1 + 56) = *(a2 + 56);

  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 100) = *(a2 + 100);
  *(a1 + 104) = *(a2 + 104);
  return a1;
}

uint64_t getEnumTagSinglePayload for PlatformItemListGenerator(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 108))
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

uint64_t storeEnumTagSinglePayload for PlatformItemListGenerator(uint64_t result, int a2, int a3)
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
      *(result + 108) = 1;
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

    *(result + 108) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

BOOL specialized Collection.isEmpty.getter(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    AGGraphGetWeakValue();
    WeakValue = AGGraphGetWeakValue();
    if (!WeakValue)
    {
      a1 = MEMORY[0x1E69E7CC0];
      goto LABEL_5;
    }

    a1 = *WeakValue;
  }

LABEL_5:
  v4 = *(a1 + 16);

  return v4 == 0;
}

BOOL specialized Collection.isEmpty.getter()
{
  outlined init with copy of TableColumnCollection.Backing(v0, v8);
  if (v9)
  {
    v1 = *(*&v8[0] + 16);
  }

  else
  {
    outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(v8, v5);
    v2 = v6;
    v3 = v7;
    __swift_project_boxed_opaque_existential_1(v5, v6);
    v1 = (*(v3 + 8))(v2, v3);
    __swift_destroy_boxed_opaque_existential_1(v5);
  }

  return v1 == 0;
}

uint64_t specialized RandomAccessCollection<>.indices.getter(uint64_t a1, char a2)
{
  if ((a2 & 1) != 0 || (AGGraphGetWeakValue(), AGGraphGetWeakValue()))
  {
  }

  return 0;
}

uint64_t specialized RandomAccessCollection<>.indices.getter()
{
  outlined init with copy of TableColumnCollection.Backing(v0, v8);
  if (v9 == 1)
  {

    return 0;
  }

  outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(v8, v5);
  v1 = v6;
  v2 = v7;
  __swift_project_boxed_opaque_existential_1(v5, v6);
  v3 = (*(v2 + 8))(v1, v2);
  result = __swift_destroy_boxed_opaque_existential_1(v5);
  if ((v3 & 0x8000000000000000) == 0)
  {
    return 0;
  }

  __break(1u);
  return result;
}

uint64_t specialized Collection.count.getter(uint64_t a1)
{
  v2 = _HashTable.startBucket.getter();
  v3 = *(a1 + 36);
  v4 = 1 << *(a1 + 32);

  return specialized Collection.distance(from:to:)(v2, v3, 0, v4, v3, 0, a1);
}

unint64_t specialized Collection.count.getter(uint64_t a1, char a2)
{
  if ((a2 & 1) != 0 || (AGGraphGetWeakValue(), AGGraphGetWeakValue()))
  {
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC0];
  }

  v5 = *(v4 + 16);

  return specialized RandomAccessCollection<>.distance(from:to:)(0, v5, a1, a2 & 1);
}

uint64_t specialized Collection<>.subscript.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = _HashTable.startBucket.getter();
  v7 = 1 << *(a2 + 32);
  if (v7 < result)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v8 = result;
  v9 = *(a2 + 36);
  outlined copy of [A : B].Index._Variant<A, B>(result, v9, 0);
  outlined copy of [A : B].Index._Variant<A, B>(v7, v9, 0);
  outlined consume of Set<UIOpenURLContext>.Index._Variant(v7, v9, 0);
  result = outlined consume of Set<UIOpenURLContext>.Index._Variant(v8, v9, 0);
  if (a1[2])
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (*(a1 + 2) != v9)
  {
    goto LABEL_10;
  }

  v10 = *a1;
  if (*a1 < v8)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v11 = *(a1 + 40);
  if ((v11 & 1) == 0)
  {
    if (v9 == *(a1 + 8))
    {
      v12 = a1[3];
      if (v7 >= v12)
      {
        v13 = *(a1 + 3);
        v16 = *(a1 + 9);
        v14 = v8;
        v15 = *(a1 + 16);
        outlined consume of Set<UIOpenURLContext>.Index._Variant(v14, v9, 0);
        outlined consume of Set<UIOpenURLContext>.Index._Variant(v7, v9, 0);
        *(a3 + 48) = a2;
        *a3 = v10;
        *(a3 + 8) = v9;
        *(a3 + 12) = v13;
        *(a3 + 16) = v15;
        *(a3 + 24) = v12;
        *(a3 + 32) = v9;
        *(a3 + 36) = v16;
        *(a3 + 40) = v11;

        return outlined init with copy of Range<SpatialEventCollection.Index>(a1, v17);
      }

      goto LABEL_13;
    }

LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t specialized Collection<>.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = v3;
  outlined init with copy of TableColumnCollection.Backing(v3, v15);
  if (v16 == 1)
  {
    v8 = *(*&v15[0] + 16);
  }

  else
  {
    outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(v15, v12);
    v10 = v13;
    v11 = v14;
    __swift_project_boxed_opaque_existential_1(v12, v13);
    v8 = (*(v11 + 8))(v10, v11);
    result = __swift_destroy_boxed_opaque_existential_1(v12);
    if (v8 < 0)
    {
      __break(1u);
      goto LABEL_8;
    }
  }

  if (a1 < 0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v8 >= a2)
  {
    result = outlined init with copy of TableColumnCollection(v4, (a3 + 2));
    *a3 = a1;
    a3[1] = a2;
    return result;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t specialized Collection<>.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  result = specialized NavigationState.StackContent.Views.ViewsSequence.startIndex.getter();
  if (v12)
  {
    if (v6)
    {
      goto LABEL_19;
    }

    __break(1u);
  }

  if (v6)
  {
    goto LABEL_19;
  }

  if (v5 < result)
  {
    __break(1u);
    goto LABEL_21;
  }

  if (result < v5)
  {
    goto LABEL_19;
  }

  if (v8)
  {
    v13 = v11;
    if (v8 != 1)
    {
      goto LABEL_15;
    }

    if (v11 != 1 || v7 >= v10)
    {
      goto LABEL_19;
    }

    __break(1u);
  }

  v13 = v11;
  if (!v11)
  {
    goto LABEL_18;
  }

  if (v11 == 2)
  {
LABEL_19:
    result = _s7SwiftUI16PlatformItemListV0D0VWOcTm_2(v2, a2 + 64, type metadata accessor for NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>);
    *a2 = v5;
    *(a2 + 8) = v6;
    *(a2 + 9) = *(a1 + 9);
    *(a2 + 12) = *(a1 + 12);
    *(a2 + 16) = v7;
    *(a2 + 24) = v8;
    *(a2 + 32) = *(a1 + 32);
    *(a2 + 41) = *(a1 + 41);
    return result;
  }

  __break(1u);
LABEL_15:
  if (v13 == 2 && !v10)
  {
    goto LABEL_19;
  }

  __break(1u);
LABEL_18:
  if (v7 >= v10)
  {
    goto LABEL_19;
  }

LABEL_21:
  __break(1u);
  return result;
}

unint64_t specialized RandomAccessCollection<>.index(_:offsetBy:)(unint64_t result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = result + a2;
  if (__OFADD__(result, a2))
  {
    __break(1u);
    goto LABEL_10;
  }

  if (a4)
  {
    goto LABEL_5;
  }

  AGGraphGetWeakValue();
  WeakValue = AGGraphGetWeakValue();
  if (WeakValue)
  {
    a3 = *WeakValue;
LABEL_5:

    goto LABEL_6;
  }

  a3 = MEMORY[0x1E69E7CC0];
LABEL_6:
  v7 = *(a3 + 16);

  if (v4 <= v7)
  {
    return v4;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t specialized RandomAccessCollection<>.index(_:offsetBy:)(uint64_t result, uint64_t a2)
{
  v3 = result + a2;
  if (__OFADD__(result, a2))
  {
    __break(1u);
  }

  else
  {
    outlined init with copy of TableColumnCollection.Backing(v2, v10);
    if (v11)
    {
      v4 = *(*&v10[0] + 16);
    }

    else
    {
      outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(v10, v7);
      v5 = v8;
      v6 = v9;
      __swift_project_boxed_opaque_existential_1(v7, v8);
      v4 = (*(v6 + 8))(v5, v6);
      result = __swift_destroy_boxed_opaque_existential_1(v7);
    }

    if ((v3 & 0x8000000000000000) == 0 && v4 >= v3)
    {
      return v3;
    }
  }

  __break(1u);
  return result;
}

unint64_t specialized RandomAccessCollection<>.distance(from:to:)(unint64_t result, unint64_t a2, uint64_t a3, char a4)
{
  v4 = a3;
  v6 = result;
  if (a4)
  {
    if (*(a3 + 16) < result)
    {
LABEL_14:
      __break(1u);
      goto LABEL_15;
    }

    goto LABEL_10;
  }

  AGGraphGetWeakValue();
  if (AGGraphGetWeakValue())
  {
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  v8 = *(v7 + 16);

  if (v8 < v6)
  {
    goto LABEL_14;
  }

  AGGraphGetWeakValue();
  WeakValue = AGGraphGetWeakValue();
  if (WeakValue)
  {
    v4 = *WeakValue;
LABEL_10:

    goto LABEL_11;
  }

  v4 = MEMORY[0x1E69E7CC0];
LABEL_11:
  v10 = *(v4 + 16);

  if (v10 >= a2)
  {
    return a2 - v6;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t specialized RandomAccessCollection<>.distance(from:to:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  outlined init with copy of TableColumnCollection.Backing(v2, v16);
  if (v17)
  {
    v6 = *(*&v16[0] + 16);
  }

  else
  {
    outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(v16, v13);
    v8 = v14;
    v9 = v15;
    __swift_project_boxed_opaque_existential_1(v13, v14);
    v6 = (*(v9 + 8))(v8, v9);
    result = __swift_destroy_boxed_opaque_existential_1(v13);
  }

  if (a1 < 0 || v6 < a1)
  {
    __break(1u);
  }

  else
  {
    outlined init with copy of TableColumnCollection.Backing(v3, v16);
    if (v17)
    {
      v10 = *(*&v16[0] + 16);
    }

    else
    {
      outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(v16, v13);
      v11 = v14;
      v12 = v15;
      __swift_project_boxed_opaque_existential_1(v13, v14);
      v10 = (*(v12 + 8))(v11, v12);
      result = __swift_destroy_boxed_opaque_existential_1(v13);
    }

    if ((a2 & 0x8000000000000000) == 0 && v10 >= a2)
    {
      return a2 - a1;
    }
  }

  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type PlatformItemCollection and conformance PlatformItemCollection()
{
  result = lazy protocol witness table cache variable for type PlatformItemCollection and conformance PlatformItemCollection;
  if (!lazy protocol witness table cache variable for type PlatformItemCollection and conformance PlatformItemCollection)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PlatformItemCollection, &type metadata for PlatformItemCollection, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PlatformItemCollection and conformance PlatformItemCollection);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PlatformItemCollection and conformance PlatformItemCollection;
  if (!lazy protocol witness table cache variable for type PlatformItemCollection and conformance PlatformItemCollection)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PlatformItemCollection, &type metadata for PlatformItemCollection, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PlatformItemCollection and conformance PlatformItemCollection);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PlatformItemCollection and conformance PlatformItemCollection;
  if (!lazy protocol witness table cache variable for type PlatformItemCollection and conformance PlatformItemCollection)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PlatformItemCollection, &type metadata for PlatformItemCollection, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PlatformItemCollection and conformance PlatformItemCollection);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PlatformItemCollection and conformance PlatformItemCollection;
  if (!lazy protocol witness table cache variable for type PlatformItemCollection and conformance PlatformItemCollection)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PlatformItemCollection, &type metadata for PlatformItemCollection, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PlatformItemCollection and conformance PlatformItemCollection);
  }

  return result;
}

uint64_t *protocol witness for BidirectionalCollection.index(before:) in conformance PlatformItemCollection@<X0>(uint64_t *result@<X0>, void *a2@<X8>)
{
  v4 = *result;
  if ((*(v2 + 8) & 1) == 0)
  {
    result = AGGraphGetWeakValue();
  }

  if (__OFSUB__(v4, 1))
  {
    __break(1u);
  }

  else
  {
    *a2 = v4 - 1;
  }

  return result;
}

void *protocol witness for BidirectionalCollection.formIndex(before:) in conformance PlatformItemCollection(void *result)
{
  v2 = result;
  v3 = *result;
  if ((*(v1 + 8) & 1) == 0)
  {
    result = AGGraphGetWeakValue();
  }

  if (__OFSUB__(v3, 1))
  {
    __break(1u);
  }

  else
  {
    *v2 = v3 - 1;
  }

  return result;
}

uint64_t protocol witness for Collection.startIndex.getter in conformance PlatformItemCollection@<X0>(void *a1@<X8>)
{
  if ((*(v1 + 8) & 1) == 0)
  {
    result = AGGraphGetWeakValue();
  }

  *a1 = 0;
  return result;
}

uint64_t protocol witness for Collection.endIndex.getter in conformance PlatformItemCollection@<X0>(void *a1@<X8>)
{
  if ((*(v1 + 8) & 1) != 0 || AGGraphGetWeakValue())
  {
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  v4 = *(v3 + 16);

  *a1 = v4;
  return result;
}

void protocol witness for Collection.subscript.read in conformance PlatformItemCollection(uint64_t *a1, unint64_t *a2)
{
  v5 = *(type metadata accessor for PlatformItemList.Item(0) - 8);
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(*(v5 + 64));
  }

  v7 = v6;
  *a1 = v6;
  v8 = *a2;
  v9 = *v2;
  if (v2[1])
  {
LABEL_7:

    if ((v8 & 0x8000000000000000) == 0)
    {
      goto LABEL_8;
    }

LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  WeakValue = AGGraphGetWeakValue();
  if (WeakValue)
  {
    v9 = *WeakValue;
    goto LABEL_7;
  }

  v9 = MEMORY[0x1E69E7CC0];
  if ((v8 & 0x8000000000000000) != 0)
  {
    goto LABEL_11;
  }

LABEL_8:
  if (v8 < *(v9 + 16))
  {
    _s7SwiftUI16PlatformItemListV0D0VWOcTm_2(v9 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v8, v7, type metadata accessor for PlatformItemList.Item);

    return;
  }

LABEL_12:
  __break(1u);
}

void protocol witness for Collection.subscript.read in conformance PlatformItemCollection(uint64_t *a1)
{
  v1 = *a1;
  outlined destroy of PlatformItemList.Item(*a1);

  free(v1);
}

double protocol witness for Collection.subscript.getter in conformance PlatformItemCollection@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = specialized Collection<>.subscript.getter(*a1, a1[1], *v2, *(v2 + 8));
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6 & 1;

  return outlined copy of PlatformItemCollection.Storage(v5, v6 & 1);
}

uint64_t protocol witness for Collection.indices.getter in conformance PlatformItemCollection@<X0>(uint64_t *a1@<X8>)
{
  result = specialized RandomAccessCollection<>.indices.getter(*v1, *(v1 + 8));
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t protocol witness for RandomAccessCollection.index(_:offsetBy:limitedBy:) in conformance PlatformItemCollection@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a1;
  v8 = *v4;
  v9 = *(v4 + 8);
  v10 = specialized RandomAccessCollection<>.distance(from:to:)(*a1, *a3, *v4, v9);
  if (a2 < 1)
  {
    if (v10 <= 0 && v10 > a2)
    {
      goto LABEL_4;
    }

LABEL_10:
    result = specialized RandomAccessCollection<>.index(_:offsetBy:)(v7, a2, v8, v9);
    v12 = 0;
    goto LABEL_11;
  }

  if (v10 < 0 || v10 >= a2)
  {
    goto LABEL_10;
  }

LABEL_4:
  result = 0;
  v12 = 1;
LABEL_11:
  *a4 = result;
  *(a4 + 8) = v12;
  return result;
}

uint64_t *protocol witness for Collection.index(after:) in conformance PlatformItemCollection@<X0>(uint64_t *result@<X0>, void *a2@<X8>)
{
  v4 = *result;
  if ((*(v2 + 8) & 1) == 0)
  {
    result = AGGraphGetWeakValue();
  }

  if (__OFADD__(v4, 1))
  {
    __break(1u);
  }

  else
  {
    *a2 = v4 + 1;
  }

  return result;
}

void *protocol witness for Collection.formIndex(after:) in conformance PlatformItemCollection(void *result)
{
  v2 = result;
  v3 = *result;
  if ((*(v1 + 8) & 1) == 0)
  {
    result = AGGraphGetWeakValue();
  }

  if (__OFADD__(v3, 1))
  {
    __break(1u);
  }

  else
  {
    *v2 = v3 + 1;
  }

  return result;
}

uint64_t protocol witness for Sequence.makeIterator() in conformance PlatformItemCollection@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  if ((v4 & 1) == 0)
  {
    result = AGGraphGetWeakValue();
  }

  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = 0;
  return result;
}

void *protocol witness for Sequence._copyToContiguousArray() in conformance PlatformItemCollection()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = specialized Collection.count.getter(v1, v2);
  if (!v3)
  {
    outlined consume of PlatformItemCollection.Storage(v1, v2);
    return MEMORY[0x1E69E7CC0];
  }

  v4 = v3;
  v5 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI16PlatformItemListV0K0V_Tt1g5(v3, 0);
  v6 = *(type metadata accessor for PlatformItemList.Item(0) - 8);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  outlined copy of PlatformItemCollection.Storage(v1, v2);
  specialized Sequence._copySequenceContents(initializing:)(&v11, v5 + v7, v4, v1, v2);
  v9 = v8;
  result = outlined consume of PlatformItemCollection.Storage(v11, v12);
  if (v9 == v4)
  {
    outlined consume of PlatformItemCollection.Storage(v1, v2);
    return v5;
  }

  __break(1u);
  return result;
}

uint64_t lazy protocol witness table accessor for type IndexingIterator<PlatformItemCollection> and conformance IndexingIterator<A>(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t), const char *a4)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for IndexingIterator<PlatformItemCollection>(255, a2, lazy protocol witness table accessor for type PlatformItemCollection and conformance PlatformItemCollection, &type metadata for PlatformItemCollection, a3);
    result = swift_getWitnessTable(a4, v7);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t _sSnySiGSnyxGSlsSxRzSZ6StrideRpzrlWlTm_5(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    _sSnySiGMaTm_5(255, &lazy cache variable for type metadata for Range<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E69E6548], MEMORY[0x1E69E66A8]);
    v6 = v5;
    v7 = lazy protocol witness table accessor for type Int and conformance Int();
    v8[0] = MEMORY[0x1E69E6570];
    v8[1] = v7;
    result = swift_getWitnessTable(a2, v6, v8);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Slice<PlatformItemCollection> and conformance <> Slice<A>(unint64_t *a1, uint64_t (*a2)(void), const char *a3)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for IndexingIterator<PlatformItemCollection>(255, &lazy cache variable for type metadata for Slice<PlatformItemCollection>, lazy protocol witness table accessor for type PlatformItemCollection and conformance PlatformItemCollection, &type metadata for PlatformItemCollection, MEMORY[0x1E69E74D0]);
    v8 = v7;
    v9 = a2();
    result = swift_getWitnessTable(a3, v8, &v9);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t specialized Collection<>.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if ((a4 & 1) != 0 || (AGGraphGetWeakValue(), AGGraphGetWeakValue()))
  {
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC0];
  }

  v7 = *(v6 + 16);

  if ((a1 & 0x8000000000000000) == 0 && v7 >= a2)
  {
    return a1;
  }

  __break(1u);
  return result;
}

uint64_t outlined init with copy of Range<SpatialEventCollection.Index>(uint64_t a1, uint64_t a2)
{
  type metadata accessor for IndexingIterator<PlatformItemCollection>(0, &lazy cache variable for type metadata for Range<SpatialEventCollection.Index>, lazy protocol witness table accessor for type SpatialEventCollection.Index and conformance SpatialEventCollection.Index, &type metadata for SpatialEventCollection.Index, MEMORY[0x1E69E66A8]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void type metadata accessor for IndexingIterator<PlatformItemCollection>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t assignWithCopy for PlatformItemCollection(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  outlined copy of PlatformItemCollection.Storage(*a2, v4);
  v5 = *a1;
  v6 = *(a1 + 8);
  *a1 = v3;
  *(a1 + 8) = v4;
  outlined consume of PlatformItemCollection.Storage(v5, v6);
  return a1;
}

void type metadata accessor for ViewDestinationNavigationDestinationModifier<EmptyView>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!lazy cache variable for type metadata for ViewDestinationNavigationDestinationModifier<EmptyView>)
  {
    v4 = type metadata accessor for ViewDestinationNavigationDestinationModifier(0, MEMORY[0x1E6981E70], MEMORY[0x1E6981E60], a4);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for ViewDestinationNavigationDestinationModifier<EmptyView>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ViewDestinationNavigationDestinationModifier<EmptyView> and conformance ViewDestinationNavigationDestinationModifier<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = lazy protocol witness table cache variable for type ViewDestinationNavigationDestinationModifier<EmptyView> and conformance ViewDestinationNavigationDestinationModifier<A>;
  if (!lazy protocol witness table cache variable for type ViewDestinationNavigationDestinationModifier<EmptyView> and conformance ViewDestinationNavigationDestinationModifier<A>)
  {
    type metadata accessor for ViewDestinationNavigationDestinationModifier<EmptyView>(255, a2, a3, a4);
    result = swift_getWitnessTable(protocol conformance descriptor for ViewDestinationNavigationDestinationModifier<A>, v7, v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ViewDestinationNavigationDestinationModifier<EmptyView> and conformance ViewDestinationNavigationDestinationModifier<A>);
  }

  return result;
}

uint64_t AccessibilityQuickActionProxy.state.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t AccessibilityQuickActionProxy.init(style:)(char a1)
{
  type metadata accessor for Published<AccessibilityQuickActionState>(0, &lazy cache variable for type metadata for Published<AccessibilityQuickActionState>, &type metadata for AccessibilityQuickActionState, MEMORY[0x1E695C070]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v13[-v6];
  v8 = OBJC_IVAR____TtC7SwiftUIP33_B8D2E4520F2964BB14185EE65411F68529AccessibilityQuickActionProxy__state;
  v13[15] = 0;
  Published.init(initialValue:)();
  (*(v5 + 32))(v1 + v8, v7, v4);
  v9 = (v1 + OBJC_IVAR____TtC7SwiftUIP33_B8D2E4520F2964BB14185EE65411F68529AccessibilityQuickActionProxy_label);
  *v9 = 0;
  v9[1] = 0;
  v10 = v1 + OBJC_IVAR____TtC7SwiftUIP33_B8D2E4520F2964BB14185EE65411F68529AccessibilityQuickActionProxy_isActive;
  *v10 = 0;
  *(v10 + 8) = 0;
  *(v10 + 16) = 0;
  v11 = (v1 + OBJC_IVAR____TtC7SwiftUIP33_B8D2E4520F2964BB14185EE65411F68529AccessibilityQuickActionProxy_action);
  *v11 = 0;
  v11[1] = 0;
  *(v1 + OBJC_IVAR____TtC7SwiftUIP33_B8D2E4520F2964BB14185EE65411F68529AccessibilityQuickActionProxy_isEnabled) = 1;
  *(v1 + OBJC_IVAR____TtC7SwiftUIP33_B8D2E4520F2964BB14185EE65411F68529AccessibilityQuickActionProxy_style) = a1 & 1;
  return v1;
}

double closure #1 in AccessibilityQuickActionProxy.start()(uint64_t a1)
{
  if (*(a1 + OBJC_IVAR____TtC7SwiftUIP33_B8D2E4520F2964BB14185EE65411F68529AccessibilityQuickActionProxy_isActive + 8))
  {

    dispatch thunk of AnyLocation.set(_:transaction:)();
  }

  return result;
}

double AccessibilityQuickActionProxy.stop()()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v1)
  {

    static Update.enqueueAction(reason:_:)();
  }

  return result;
}

double closure #1 in AccessibilityQuickActionProxy.stop()(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  if (*(a1 + OBJC_IVAR____TtC7SwiftUIP33_B8D2E4520F2964BB14185EE65411F68529AccessibilityQuickActionProxy_isActive + 8))
  {

    dispatch thunk of AnyLocation.set(_:transaction:)();
  }

  return result;
}

double AccessibilityQuickActionProxy.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC7SwiftUIP33_B8D2E4520F2964BB14185EE65411F68529AccessibilityQuickActionProxy__state;
  type metadata accessor for Published<AccessibilityQuickActionState>(0, &lazy cache variable for type metadata for Published<AccessibilityQuickActionState>, &type metadata for AccessibilityQuickActionState, MEMORY[0x1E695C070]);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  outlined consume of Binding<NavigationSplitViewColumn>?(*(v0 + OBJC_IVAR____TtC7SwiftUIP33_B8D2E4520F2964BB14185EE65411F68529AccessibilityQuickActionProxy_isActive), *(v0 + OBJC_IVAR____TtC7SwiftUIP33_B8D2E4520F2964BB14185EE65411F68529AccessibilityQuickActionProxy_isActive + 8));
  outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(*(v0 + OBJC_IVAR____TtC7SwiftUIP33_B8D2E4520F2964BB14185EE65411F68529AccessibilityQuickActionProxy_action), *(v0 + OBJC_IVAR____TtC7SwiftUIP33_B8D2E4520F2964BB14185EE65411F68529AccessibilityQuickActionProxy_action + 8));

  swift_deallocClassInstance();
  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance AccessibilityQuickActionProxy@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for AccessibilityQuickActionProxy(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a2 = result;
  return result;
}

uint64_t static AccessibilityQuickActionModifier._makeView(modifier:inputs:body:)@<X0>(unsigned int *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v54 = a3;
  v55 = a4;
  v53 = a7;
  v97 = *MEMORY[0x1E69E9840];
  v9 = a2[3];
  v10 = a2[1];
  v93 = a2[2];
  v94 = v9;
  v11 = a2[3];
  v95 = a2[4];
  v12 = a2[1];
  v91 = *a2;
  v92 = v12;
  v87 = v93;
  v88 = v11;
  v89 = a2[4];
  v13 = *a1;
  v96 = *(a2 + 20);
  v90 = *(a2 + 20);
  v85 = v91;
  v86 = v10;
  v14 = v91;
  v15 = v12;
  v16 = *(&v93 + 1);
  swift_beginAccess();
  LODWORD(v77[0]) = *(v15 + 16);
  v61 = type metadata accessor for AccessibilityQuickActionModifier.ChildEnvironment(0, a5, a6, v17);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for AccessibilityQuickActionModifier<A>.ChildEnvironment, v61);
  outlined init with copy of _ViewInputs(&v91, &v79);
  type metadata accessor for Published<AccessibilityQuickActionState>(0, &lazy cache variable for type metadata for Attribute<EnvironmentValues>, MEMORY[0x1E697F230], MEMORY[0x1E698D388]);
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v77, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_10, &v60, v61, MEMORY[0x1E69E73E0], v18, MEMORY[0x1E69E7410], v19);
  _GraphInputs.environment.setter();
  v51 = v13;
  v59 = v13;
  type metadata accessor for AccessibilityQuickActionModifier(255, a5, a6, v20);
  v47 = type metadata accessor for _GraphValue();
  _GraphValue.value.getter();
  v22 = *(*(a5 - 8) + 64);
  v52 = v14;
  v49 = v15;
  v50 = v16;
  if (v22)
  {
    closure #1 in static AccessibilityQuickActionModifier._makeView(modifier:inputs:body:)(1, a5, a6, v21);
  }

  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  v75[2] = v87;
  v75[3] = v88;
  v75[4] = v89;
  v76 = v90;
  v75[0] = v85;
  v75[1] = v86;
  v81 = v87;
  v82 = v88;
  v83 = v89;
  LODWORD(v84[0]) = v90;
  v79 = v85;
  v80 = v86;
  v24 = PlatformItemListGenerator.init(flags:content:inputs:inputsIncludeGeometry:)(OffsetAttribute2, &v79, 1, v77);
  v45 = &v44;
  v73 = v77[4];
  v74[0] = v78[0];
  *(v74 + 12) = *(v78 + 12);
  v69 = v77[0];
  v70 = v77[1];
  v71 = v77[2];
  v72 = v77[3];
  MEMORY[0x1EEE9AC00](v24);
  *&v79 = &type metadata for ActionPlatformItemListFlags;
  *(&v79 + 1) = a5;
  *&v80 = &protocol witness table for ActionPlatformItemListFlags;
  *(&v80 + 1) = a6;
  v25 = type metadata accessor for PlatformItemListGenerator(0, &v79);
  v43[2] = v25;
  v43[3] = swift_getWitnessTable(protocol conformance descriptor for PlatformItemListGenerator<A, B>, v25);
  outlined init with copy of _ViewInputs(v75, &v79);
  v26 = *(v25 - 8);
  (*(v26 + 16))(&v79, v77, v25);
  type metadata accessor for Published<AccessibilityQuickActionState>(0, &lazy cache variable for type metadata for Attribute<PlatformItemList>, &type metadata for PlatformItemList, MEMORY[0x1E698D388]);
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v69, closure #1 in Attribute.init<A>(_:)partial apply, v43, v25, MEMORY[0x1E69E73E0], v27, MEMORY[0x1E69E7410], v28);
  v46 = 0;
  v83 = v73;
  v84[0] = v74[0];
  *(v84 + 12) = *(v74 + 12);
  v79 = v69;
  v80 = v70;
  v81 = v71;
  v82 = v72;
  v48 = *(v26 + 8);
  v48(&v79, v25);
  LODWORD(v45) = v63;
  v29 = v51;
  v58 = v51;
  _GraphValue.value.getter();
  closure #2 in static AccessibilityQuickActionModifier._makeView(modifier:inputs:body:)(1, a5, a6, v30);
  HIDWORD(v44) = AGGraphCreateOffsetAttribute2();
  v57 = v29;
  _GraphValue.value.getter();
  closure #3 in static AccessibilityQuickActionModifier._makeView(modifier:inputs:body:)(1, a5, a6, v31);
  v51 = AGGraphCreateOffsetAttribute2();
  v71 = v93;
  v72 = v94;
  v73 = v95;
  LODWORD(v74[0]) = v96;
  v69 = v91;
  v70 = v92;
  v32 = _ViewInputs.isEnabled.getter();
  v33 = one-time initialization token for accessibilityQuickActionsEnabled;

  if (v33 != -1)
  {
    swift_once();
  }

  v56 = static CachedEnvironment.ID.accessibilityQuickActionsEnabled;
  swift_beginAccess();
  v34 = CachedEnvironment.attribute<A>(id:_:)();
  swift_endAccess();

  *&v69 = __PAIR64__(HIDWORD(v44), v45);
  *(&v69 + 1) = __PAIR64__(v32, v51);
  LODWORD(v70) = v34;
  MEMORY[0x1EEE9AC00](v35);
  v37 = type metadata accessor for AccessibilityQuickActionModifier.ProxyTransform(0, a5, a6, v36);
  v43[-2] = v37;
  v43[-1] = swift_getWitnessTable(protocol conformance descriptor for AccessibilityQuickActionModifier<A>.ProxyTransform, v37);
  type metadata accessor for Attribute<AccessibilityQuickActionProxy>(0);
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v69, closure #1 in Attribute.init<A>(_:)partial apply, &v43[-4], v37, MEMORY[0x1E69E73E0], v38, MEMORY[0x1E69E7410], v39);
  LODWORD(v69) = v63;
  v41 = type metadata accessor for AccessibilityQuickActionModifier.ProxyModifier(0, a5, a6, v40);
  swift_getWitnessTable(protocol conformance descriptor for AccessibilityQuickActionModifier<A>.ProxyModifier, v41);
  _GraphValue.init<A>(_:)();
  v65 = v93;
  v66 = v94;
  v67 = v95;
  v68 = v96;
  v63 = v91;
  v64 = v92;
  lazy protocol witness table accessor for type AccessibilityQuickActionProxyModifier and conformance AccessibilityQuickActionProxyModifier();
  static ViewModifier.makeDebuggableView(modifier:inputs:body:)();
  v48(v77, v25);
  v71 = v87;
  v72 = v88;
  v73 = v89;
  LODWORD(v74[0]) = v90;
  v69 = v85;
  v70 = v86;
  return outlined destroy of _ViewInputs(&v69);
}

uint64_t closure #1 in static AccessibilityQuickActionModifier._makeView(modifier:inputs:body:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[2] = type metadata accessor for AccessibilityQuickActionModifier(0, a2, a3, a4);
  v9[3] = a2;
  v6 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, partial apply for closure #1 in static PointerOffset.of(_:), v9, a2, MEMORY[0x1E69E73E0], v6, MEMORY[0x1E69E7410], v7);
  return v9[5];
}

uint64_t closure #2 in static AccessibilityQuickActionModifier._makeView(modifier:inputs:body:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for AccessibilityQuickActionModifier(0, a2, a3, a4);
  v6 = *(v5 + 36);
  v12[2] = v5;
  type metadata accessor for Binding<Bool>?(0);
  v8 = v7;
  v9 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + v6, closure #1 in static PointerOffset.of(_:)partial apply, v12, v8, MEMORY[0x1E69E73E0], v9, MEMORY[0x1E69E7410], v10);
  return v12[5];
}

uint64_t closure #3 in static AccessibilityQuickActionModifier._makeView(modifier:inputs:body:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for AccessibilityQuickActionModifier(0, a2, a3, a4);
  v6 = *(v5 + 40);
  v10[2] = v5;
  v7 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + v6, _s14AttributeGraph13PointerOffsetV2ofyACyxq_Gq_zFZAESPyq_GXEfU_TA_25, v10, &type metadata for _AccessibilityQuickActionStyle.RawValue, MEMORY[0x1E69E73E0], v7, MEMORY[0x1E69E7410], v8);
  return v10[5];
}

double protocol witness for Rule.value.getter in conformance AccessibilityQuickActionModifier<A>.ProxyModifier@<D0>(uint64_t *a2@<X8>)
{
  *a2 = specialized AccessibilityQuickActionModifier.ProxyModifier.value.getter(*v2);
  a2[1] = v4;

  return result;
}

uint64_t AccessibilityQuickActionModifier.ChildEnvironment.updateValue()()
{
  result = *(AGGraphGetValue() + 8);
  if (v1)
  {

    EnvironmentValues.isEnabled.setter();

    AGGraphSetOutputValue();
  }

  return result;
}

uint64_t *AccessibilityQuickActionModifier.ProxyTransform.updateValue()()
{
  v29[1] = *MEMORY[0x1E69E9840];
  v0 = type metadata accessor for PlatformItemList.Item(0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = (v29 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for AccessibilityQuickActionProxy(0);
  if (!AGGraphGetOutputValue())
  {
    v3 = *AGGraphGetValue();
    swift_allocObject();
    v29[0] = AccessibilityQuickActionProxy.init(style:)(v3);
    AGGraphSetOutputValue();
  }

  result = AGGraphGetValue();
  if (*result == 1)
  {
    type metadata accessor for Binding<Bool>?(0);
    Value = AGGraphGetValue();
    v7 = *Value;
    v6 = *(Value + 8);
    v8 = *(Value + 16);
    if (v9)
    {
      result = AGGraphGetOutputValue();
      if (!result)
      {
        __break(1u);
        goto LABEL_35;
      }

      outlined copy of Binding<Int>?(v7, v6);

      specialized AccessibilityQuickActionProxy.isActive.setter(v7, v6, v8);
    }

    else
    {
      outlined copy of Binding<Int>?(*Value, v6);
    }

    v10 = AGGraphGetValue();
    if ((v11 & 1) == 0)
    {
      goto LABEL_11;
    }

    v12 = *v10;
    result = AGGraphGetOutputValue();
    if (result)
    {
      v13 = *result;
      v14 = *(*result + OBJC_IVAR____TtC7SwiftUIP33_B8D2E4520F2964BB14185EE65411F68529AccessibilityQuickActionProxy_isEnabled);
      *(v13 + OBJC_IVAR____TtC7SwiftUIP33_B8D2E4520F2964BB14185EE65411F68529AccessibilityQuickActionProxy_isEnabled) = v12;
      if (!*(v13 + OBJC_IVAR____TtC7SwiftUIP33_B8D2E4520F2964BB14185EE65411F68529AccessibilityQuickActionProxy_isActive + 8))
      {
        if (v12)
        {
          if ((v14 & 1) == 0 && (*(v13 + OBJC_IVAR____TtC7SwiftUIP33_B8D2E4520F2964BB14185EE65411F68529AccessibilityQuickActionProxy_label + 8) || *(v13 + OBJC_IVAR____TtC7SwiftUIP33_B8D2E4520F2964BB14185EE65411F68529AccessibilityQuickActionProxy_style) == 1) && *(v13 + OBJC_IVAR____TtC7SwiftUIP33_B8D2E4520F2964BB14185EE65411F68529AccessibilityQuickActionProxy_action))
          {
            LOBYTE(v29[0]) = 17;
            swift_retain_n();
            static Update.enqueueAction(reason:_:)();
          }
        }

        else if (v14)
        {

          AccessibilityQuickActionProxy.stop()();
        }
      }

LABEL_11:
      AGGraphGetValue();
      if ((v15 & 1) == 0)
      {
        return outlined consume of Binding<NavigationSplitViewColumn>?(v7, v6);
      }

      PlatformItemList.mergedContentItem.getter(v16, v2);

      result = AGGraphGetOutputValue();
      if (result)
      {
        v17 = *result;
        v18 = *v2;
        if (*v2)
        {

          v19 = [v18 string];
          v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v21 = v20;
        }

        else
        {

          v21 = 0;
        }

        v22 = (v17 + OBJC_IVAR____TtC7SwiftUIP33_B8D2E4520F2964BB14185EE65411F68529AccessibilityQuickActionProxy_label);
        *v22 = v18;
        v22[1] = v21;

        result = AGGraphGetOutputValue();
        if (result)
        {
          v23 = *result;
          v24 = v2[52];
          if (v24 == 1)
          {
            v24 = 0;
            v25 = 0;
          }

          else
          {
            v25 = v2[53];
            outlined copy of AppIntentExecutor?(v2[52], v25);
          }

          v26 = (v23 + OBJC_IVAR____TtC7SwiftUIP33_B8D2E4520F2964BB14185EE65411F68529AccessibilityQuickActionProxy_action);
          v27 = *(v23 + OBJC_IVAR____TtC7SwiftUIP33_B8D2E4520F2964BB14185EE65411F68529AccessibilityQuickActionProxy_action);
          v28 = *(v23 + OBJC_IVAR____TtC7SwiftUIP33_B8D2E4520F2964BB14185EE65411F68529AccessibilityQuickActionProxy_action + 8);

          outlined copy of AppIntentExecutor?(v24, v25);
          *v26 = v24;
          v26[1] = v25;
          outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v27, v28);
          if (v24)
          {

            outlined consume of Binding<NavigationSplitViewColumn>?(v7, v6);
            outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v24, v25);
            outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v24, v25);
          }

          else
          {
            AccessibilityQuickActionProxy.stop()();

            outlined consume of Binding<NavigationSplitViewColumn>?(v7, v6);
          }

          return _s7SwiftUI16PlatformItemListV0D0VWOhTm_2(v2, type metadata accessor for PlatformItemList.Item);
        }

LABEL_37:
        __break(1u);
        return result;
      }

LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  return result;
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance AccessibilityQuickActionModifier<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for AccessibilityQuickActionModifier<A>, a5);

  return MEMORY[0x1EEDE0720](a1, a2, a3, a4, a5, WitnessTable);
}

double AccessibilityQuickActionProxyModifier.body(content:)@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  swift_getKeyPath();
  swift_getKeyPath();
  swift_retain_n();
  static Published.subscript.getter();

  *a3 = partial apply for closure #1 in AccessibilityQuickActionProxyModifier.body(content:);
  *(a3 + 8) = v6;
  result = 0.0;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *(a3 + 48) = partial apply for closure #2 in AccessibilityQuickActionProxyModifier.body(content:);
  *(a3 + 56) = v7;
  *(a3 + 64) = v9;
  *(a3 + 72) = 0;
  *(a3 + 80) = 0;
  return result;
}

double closure #1 in AccessibilityQuickActionProxyModifier.body(content:)(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + OBJC_IVAR____TtC7SwiftUIP33_B8D2E4520F2964BB14185EE65411F68529AccessibilityQuickActionProxy_isActive);
  v4 = *(a2 + OBJC_IVAR____TtC7SwiftUIP33_B8D2E4520F2964BB14185EE65411F68529AccessibilityQuickActionProxy_isActive + 8);
  if (v4)
  {
    v5 = *(v3 + 16);
    v10 = *v3;
    v11 = v4;
    v12 = v5 & 1;
    type metadata accessor for Published<AccessibilityQuickActionState>(0, &lazy cache variable for type metadata for Binding<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
    v7 = v6;

    MEMORY[0x18D00ACC0](&v9, v7);
    if ((v9 & 1) != 0 && (*(a2 + OBJC_IVAR____TtC7SwiftUIP33_B8D2E4520F2964BB14185EE65411F68529AccessibilityQuickActionProxy_label + 8) || *(a2 + OBJC_IVAR____TtC7SwiftUIP33_B8D2E4520F2964BB14185EE65411F68529AccessibilityQuickActionProxy_style) == 1))
    {
      if (*(a2 + OBJC_IVAR____TtC7SwiftUIP33_B8D2E4520F2964BB14185EE65411F68529AccessibilityQuickActionProxy_action))
      {
        LOBYTE(v10) = 17;

        static Update.enqueueAction(reason:_:)();
      }
    }

    goto LABEL_8;
  }

  if ((*(a2 + OBJC_IVAR____TtC7SwiftUIP33_B8D2E4520F2964BB14185EE65411F68529AccessibilityQuickActionProxy_isEnabled) & 1) != 0 && (*(a2 + OBJC_IVAR____TtC7SwiftUIP33_B8D2E4520F2964BB14185EE65411F68529AccessibilityQuickActionProxy_label + 8) || *(a2 + OBJC_IVAR____TtC7SwiftUIP33_B8D2E4520F2964BB14185EE65411F68529AccessibilityQuickActionProxy_style) == 1) && *(a2 + OBJC_IVAR____TtC7SwiftUIP33_B8D2E4520F2964BB14185EE65411F68529AccessibilityQuickActionProxy_action))
  {
    LOBYTE(v10) = 17;

    static Update.enqueueAction(reason:_:)();
LABEL_8:
  }

  return result;
}

uint64_t one-time initialization function for pulse(uint64_t a1, __n128 a2)
{
  result = static Animation.easeInOut(duration:)();
  static AnimationCurve.pulse = result;
  return result;
}

uint64_t one-time initialization function for press(uint64_t a1, __n128 a2)
{
  result = static Animation.easeInOut(duration:)();
  static AnimationCurve.press = result;
  return result;
}

double AccessibilityQuickActionAnimationModifier.FocusRing.body.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = specialized Environment.wrappedValue.getter(*(v1 + 40), *(v1 + 48));
  if (!v3)
  {
    v3 = static Color.accentColor.getter();
  }

  v4 = v3;
  v5 = *v1;
  v6 = *(v1 + 8);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = *(v1 + 32);
  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  outlined copy of Path.Storage(v5, v6, v7, v8, v9);
  v10 = static Alignment.center.getter();
  *a1 = v5;
  *(a1 + 8) = v6;
  *(a1 + 16) = v7;
  *(a1 + 24) = v8;
  *(a1 + 32) = v9;
  *(a1 + 40) = 0x4008000000000000;
  result = *&v13;
  *(a1 + 48) = v13;
  *(a1 + 64) = v14;
  *(a1 + 80) = v15;
  *(a1 + 88) = v4;
  *(a1 + 96) = 256;
  *(a1 + 104) = v10;
  *(a1 + 112) = v12;
  return result;
}

uint64_t protocol witness for Shape.path(in:) in conformance AccessibilityQuickActionAnimationModifier.FocusRing.Outline@<X0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  v20 = *(v5 + 16);
  v24[0] = *v5;
  v21 = v24[0];
  v24[1] = v20;
  v11 = *(v5 + 32);
  v25 = v11;
  v12 = *(v5 + 40);
  v26[0] = v24[0];
  v26[1] = v20;
  v27 = v11;
  outlined init with copy of Path.Storage(v26, v22);
  result = Path.isEmpty.getter();
  v15 = v20;
  v14 = v21;
  if (result)
  {
    outlined destroy of Path(v24);
    v28.origin.x = a2;
    v28.origin.y = a3;
    v28.size.width = a4;
    v28.size.height = a5;
    v29 = CGRectInset(v28, v12 * -0.5, v12 * -0.5);
    x = v29.origin.x;
    y = v29.origin.y;
    width = v29.size.width;
    height = v29.size.height;
    CGRectGetHeight(v29);
    v30.origin.x = x;
    v30.origin.y = y;
    v30.size.width = width;
    v30.size.height = height;
    CGRectGetWidth(v30);
    result = Path.init(roundedRect:cornerRadius:style:)();
    v15 = v22[1];
    v14 = v22[0];
    v11 = v23;
  }

  *a1 = v14;
  *(a1 + 16) = v15;
  *(a1 + 32) = v11;
  return result;
}

double protocol witness for View.body.getter in conformance AccessibilityQuickActionAnimationModifier.FocusRing.Outline@<D0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 40);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  v7 = *(v1 + 32);
  *(a1 + 32) = v7;
  *(a1 + 40) = v6;
  *(a1 + 48) = 256;
  return outlined copy of Path.Storage(v2, v3, v4, v5, v7);
}

void AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier.body(content:)(uint64_t a1@<X1>, char a2@<W2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  type metadata accessor for Published<AccessibilityQuickActionState>(0, &lazy cache variable for type metadata for State<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  State.wrappedValue.getter();
  if (v11)
  {
    v8 = 1.0;
  }

  else
  {
    v8 = 0.0;
  }

  v9 = Animation.repeatForever(autoreverses:)();
  State.wrappedValue.getter();
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  *(v10 + 32) = a3;
  *a4 = v8;
  *(a4 + 8) = v9;
  *(a4 + 16) = v11;
  *(a4 + 24) = partial apply for closure #1 in AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier.body(content:);
  *(a4 + 32) = v10;
  *(a4 + 40) = 0;
  *(a4 + 48) = 0;
}

void *closure #1 in AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier.body(content:)(uint64_t a1, char a2, uint64_t a3)
{
  type metadata accessor for Published<AccessibilityQuickActionState>(0, &lazy cache variable for type metadata for State<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  result = State.wrappedValue.getter();
  if (a3)
  {
    return dispatch thunk of AnyLocation.set(_:transaction:)();
  }

  return result;
}

uint64_t AccessibilityQuickActionAnimationModifier.ActivateModifier.body(content:)@<X0>(uint64_t a1@<X1>, char a2@<W2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  type metadata accessor for Published<AccessibilityQuickActionState>(0, &lazy cache variable for type metadata for State<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  State.wrappedValue.getter();
  if (v16)
  {
    v8 = 1.0;
  }

  else
  {
    v8 = 0.0;
  }

  State.wrappedValue.getter();
  if (v16)
  {
    v9 = 1.0;
  }

  else
  {
    v9 = 1.2;
  }

  static UnitPoint.center.getter();
  v11 = v10;
  v13 = v12;
  State.wrappedValue.getter();
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  *(v14 + 32) = a3;
  *a4 = v8;
  *(a4 + 8) = v9;
  *(a4 + 16) = v9;
  *(a4 + 24) = v11;
  *(a4 + 32) = v13;
  *(a4 + 40) = a1;
  *(a4 + 48) = v16;
  *(a4 + 56) = partial apply for closure #1 in AccessibilityQuickActionAnimationModifier.ActivateModifier.body(content:);
  *(a4 + 64) = v14;
  *(a4 + 72) = 0;
  *(a4 + 80) = 0;

  return swift_retain_n();
}

double AccessibilityQuickActionAnimationModifier.body(content:)@<D0>(char a1@<W1>, char a2@<W2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  *(v8 + 32) = a3;

  v9 = static Alignment.center.getter();
  v11 = v10;
  LOBYTE(v25) = a2;
  *(&v25 + 1) = a3;
  type metadata accessor for Published<AccessibilityQuickActionState>(0, &lazy cache variable for type metadata for State<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  State.wrappedValue.getter();
  if (LOBYTE(v24[0]))
  {
    v12 = 0.93;
  }

  else
  {
    v12 = 1.0;
  }

  static UnitPoint.center.getter();
  *&v20 = partial apply for closure #1 in AccessibilityQuickActionAnimationModifier.body(content:);
  *(&v20 + 1) = v8;
  *&v21 = v9;
  *(&v21 + 1) = v11;
  *&v22 = v12;
  *(&v22 + 1) = v12;
  *&v23 = v13;
  *(&v23 + 1) = v14;
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  *(v15 + 32) = a3;
  type metadata accessor for ModifiedContent<ModifiedContent<_ViewModifier_Content<AccessibilityQuickActionAnimationModifier>, _OverlayPreferenceModifier<ViewRespondersKey, ModifiedContent<ModifiedContent<ModifiedContent<VStack<_ConditionalContent<_ConditionalContent<EmptyView, AccessibilityQuickActionAnimationModifier.FocusRing>, _ConditionalContent<ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier>, ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ActivateModifier>>>>, _OpacityEffect>, _AnimationModifier<Bool>>, _AllowsHitTestingModifier>>>, _ScaleEffect>(0);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ViewModifier_Content<AccessibilityQuickActionProxyModifier>, _AppearanceActionModifier>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ViewModifier_Content<AccessibilityQuickActionAnimationModifier>, _OverlayPreferenceModifier<ViewRespondersKey, ModifiedContent<ModifiedContent<ModifiedContent<VStack<_ConditionalContent<_ConditionalContent<EmptyView, AccessibilityQuickActionAnimationModifier.FocusRing>, _ConditionalContent<ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier>, ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ActivateModifier>>>>, _OpacityEffect>, _AnimationModifier<Bool>>, _AllowsHitTestingModifier>>>, _ScaleEffect> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<ModifiedContent<_ViewModifier_Content<AccessibilityQuickActionAnimationModifier>, _OverlayPreferenceModifier<ViewRespondersKey, ModifiedContent<ModifiedContent<ModifiedContent<VStack<_ConditionalContent<_ConditionalContent<EmptyView, AccessibilityQuickActionAnimationModifier.FocusRing>, _ConditionalContent<ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier>, ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ActivateModifier>>>>, _OpacityEffect>, _AnimationModifier<Bool>>, _AllowsHitTestingModifier>>>, _ScaleEffect>, lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<AccessibilityQuickActionAnimationModifier>, _OverlayPreferenceModifier<ViewRespondersKey, ModifiedContent<ModifiedContent<ModifiedContent<VStack<_ConditionalContent<_ConditionalContent<EmptyView, AccessibilityQuickActionAnimationModifier.FocusRing>, _ConditionalContent<ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier>, ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ActivateModifier>>>>, _OpacityEffect>, _AnimationModifier<Bool>>, _AllowsHitTestingModifier>>> and conformance <> ModifiedContent<A, B>, MEMORY[0x1E697E070]);
  lazy protocol witness table accessor for type AccessibilityQuickActionState and conformance AccessibilityQuickActionState();

  View.onChange<A>(of:initial:_:)();

  v24[0] = v20;
  v24[1] = v21;
  v24[2] = v22;
  v24[3] = v23;
  _s7SwiftUI16PlatformItemListV0D0VWOhTm_2(v24, type metadata accessor for ModifiedContent<ModifiedContent<_ViewModifier_Content<AccessibilityQuickActionAnimationModifier>, _OverlayPreferenceModifier<ViewRespondersKey, ModifiedContent<ModifiedContent<ModifiedContent<VStack<_ConditionalContent<_ConditionalContent<EmptyView, AccessibilityQuickActionAnimationModifier.FocusRing>, _ConditionalContent<ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier>, ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ActivateModifier>>>>, _OpacityEffect>, _AnimationModifier<Bool>>, _AllowsHitTestingModifier>>>, _ScaleEffect>);
  v16 = v30;
  *(a4 + 64) = v29;
  *(a4 + 80) = v16;
  *(a4 + 96) = v31;
  *(a4 + 112) = v32;
  v17 = v26;
  *a4 = v25;
  *(a4 + 16) = v17;
  result = *&v27;
  v19 = v28;
  *(a4 + 32) = v27;
  *(a4 + 48) = v19;
  return result;
}

void closure #1 in AccessibilityQuickActionAnimationModifier.body(content:)(unint64_t *a1@<X0>, unsigned int a2@<W1>, uint64_t a5@<X8>)
{
  v6 = *a1;
  v20 = *a1 >> 62;
  if (v20)
  {
LABEL_29:
    v7 = __CocoaSet.count.getter();
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v8 = v6 & 0xC000000000000001;

  v9 = 0;
  while (v7 != v9)
  {
    if (v8)
    {
      MEMORY[0x18D00E9C0](v9, v6);
    }

    else
    {
      if (v9 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }
    }

    v43 = 0u;
    v44 = 0u;
    v45 = 6;
    v10 = Path.isEmpty.getter();

    if ((v10 & 1) == 0)
    {
      v7 = v9;
      break;
    }

    if (__OFADD__(v9++, 1))
    {
      goto LABEL_28;
    }
  }

  if (v20)
  {
    goto LABEL_21;
  }

  if (v7 != *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    do
    {
      if (v8)
      {
        v7 = MEMORY[0x18D00E9C0](v7, v6);
      }

      else
      {
        if (v7 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return;
        }

        v7 = *(v6 + 32 + 8 * v7);
      }

      v40 = 0u;
      v41 = 0u;
      v42 = 6;
      v12 = Path.isEmpty.getter();

      if ((v12 & 1) == 0)
      {
        goto LABEL_23;
      }

      __break(1u);
LABEL_21:
      ;
    }

    while (v7 != __CocoaSet.count.getter());
  }

LABEL_23:
  memset(v38, 0, sizeof(v38));
  v39 = 6;
  v13 = static HorizontalAlignment.center.getter();
  v29 = 1;
  closure #2 in closure #1 in AccessibilityQuickActionAnimationModifier.body(content:)(a2, v38, &v22);
  v32 = v24;
  v33 = v25;
  v34 = v26;
  v35 = v27;
  v30 = v22;
  v31 = v23;
  v37 = v27;
  v36[2] = v24;
  v36[3] = v25;
  v36[4] = v26;
  v36[0] = v22;
  v36[1] = v23;
  outlined init with copy of _ConditionalContent<_ConditionalContent<EmptyView, AccessibilityQuickActionAnimationModifier.FocusRing>, _ConditionalContent<ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier>, ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ActivateModifier>>>(&v30, v21);
  _s7SwiftUI16PlatformItemListV0D0VWOhTm_2(v36, type metadata accessor for _ConditionalContent<_ConditionalContent<EmptyView, AccessibilityQuickActionAnimationModifier.FocusRing>, _ConditionalContent<ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier>, ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ActivateModifier>>>);
  *&v28[39] = v32;
  *&v28[55] = v33;
  *&v28[71] = v34;
  *&v28[87] = v35;
  *&v28[7] = v30;
  *&v28[23] = v31;
  if (a2)
  {
    v14 = 1.0;
  }

  else
  {
    v14 = 0.0;
  }

  v15 = v29;
  v16 = static Animation.default.getter();
  outlined consume of Path.Storage(0, 0, 0, 0, 6u);
  v17 = *&v28[48];
  *(a5 + 49) = *&v28[32];
  *(a5 + 65) = v17;
  *(a5 + 81) = *&v28[64];
  *(a5 + 90) = *&v28[73];
  v18 = *&v28[16];
  *(a5 + 17) = *v28;
  *a5 = v13;
  *(a5 + 8) = 0;
  *(a5 + 16) = v15;
  *(a5 + 33) = v18;
  *(a5 + 112) = v14;
  *(a5 + 120) = v16;
  *(a5 + 128) = a2 == 0;
  *(a5 + 129) = 0;
}

void closure #2 in closure #1 in AccessibilityQuickActionAnimationModifier.body(content:)(uint64_t a1@<X0>, __int128 *a2@<X3>, uint64_t a3@<X8>)
{
  v8 = *a2;
  v9 = a2[1];
  v10 = *(a2 + 32);
  v11 = a1;
  if (a1 > 1u)
  {
    v16 = a2[1];
    v18 = *a2;
    if (a1 == 2)
    {
      KeyPath = swift_getKeyPath();
      v13 = a2[1];
      v21 = *a2;
      v22 = v13;
      v23 = *(a2 + 32);
      outlined init with copy of Path.Storage(&v21, v20);
      if (one-time initialization token for pulse != -1)
      {
        swift_once();
      }

      LOBYTE(v24[0]) = 0;
      v12 = 1;
      v20[0] = 1;

      v3 = 0;
      v11 = 0;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      v14 = a2[1];
      v21 = *a2;
      v22 = v14;
      v23 = *(a2 + 32);
      outlined init with copy of Path.Storage(&v21, v20);
      if (one-time initialization token for press != -1)
      {
        swift_once();
      }

      a1 = Animation.delay(_:)();
      v3 = 0;
      v11 = 1;
      LOBYTE(v24[0]) = 1;
      v20[0] = 1;
      v12 = 1;
    }

    v9 = v16;
    v8 = v18;
  }

  else if (a1)
  {
    v17 = a2[1];
    v19 = *a2;
    KeyPath = swift_getKeyPath();
    LOBYTE(v24[0]) = 0;
    v5 = 1;
    LOBYTE(v25) = 1;
    v20[0] = 0;
    a1 = outlined init with copy of Path(a2, &v21);
    v9 = v17;
    v8 = v19;
    v3 = 0;
    v12 = 0;
  }

  else
  {
    v5 = 0;
    v12 = 0;
    v20[0] = 0;
    LOBYTE(v21) = 0;
  }

  *a3 = v8;
  *(a3 + 16) = v9;
  *(a3 + 32) = v10;
  *(a3 + 33) = *v20;
  *(a3 + 36) = *&v20[3];
  *(a3 + 40) = KeyPath;
  *(a3 + 48) = v3;
  *(a3 + 49) = v5;
  *(a3 + 50) = v25;
  *(a3 + 54) = v26;
  *(a3 + 56) = a1;
  *(a3 + 64) = 1;
  v15 = v24[0];
  *(a3 + 68) = *(v24 + 3);
  *(a3 + 65) = v15;
  *(a3 + 72) = 0;
  *(a3 + 80) = v11;
  *(a3 + 81) = v12;
}

double closure #2 in AccessibilityQuickActionAnimationModifier.body(content:)(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*a2 > 1u)
  {
    if (*a2 != 2)
    {
      if (one-time initialization token for press != -1)
      {
        a1 = swift_once();
      }

      MEMORY[0x1EEE9AC00](a1);
      withAnimation<A>(_:_:)();
      v6 = Animation.delay(_:)();
      MEMORY[0x1EEE9AC00](v6);
      withAnimation<A>(_:_:)();
    }
  }

  else if (*a2)
  {
    if (one-time initialization token for press != -1)
    {
      swift_once();
    }

    Animation.speed(_:)();
    Animation.repeatCount(_:autoreverses:)();

    Animation.delay(_:)();

    MEMORY[0x1EEE9AC00](v7);
    withAnimation<A>(_:_:)();

    Animation.speed(_:)();
    Animation.delay(_:)();

    MEMORY[0x1EEE9AC00](v8);
    withAnimation<A>(_:_:)();
  }

  else if (a5)
  {
    dispatch thunk of AnyLocation.set(_:transaction:)();
  }

  return result;
}

uint64_t EnvironmentValues.accessibilityQuickActionsEnabled.getter()
{
  if (*(v0 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<AccessibilityQuickActionsKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<AccessibilityQuickActionsKey>, &unk_1EFFFF7F8, &protocol witness table for AccessibilityQuickActionsKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<AccessibilityQuickActionsKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<AccessibilityQuickActionsKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<AccessibilityQuickActionsKey>, &unk_1EFFFF7F8, &protocol witness table for AccessibilityQuickActionsKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<AccessibilityQuickActionsKey> and conformance EnvironmentPropertyKey<A>();
    PropertyList.subscript.getter();
  }

  v1 = v3;
  if (v3 == 2)
  {
    v1 = EnvironmentValues.accessibilitySettingEnabled(_:)();
  }

  return v1 & 1;
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<AccessibilityQuickActionsKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<AccessibilityQuickActionsKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<AccessibilityQuickActionsKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<AccessibilityQuickActionsKey>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<AccessibilityQuickActionsKey>, &unk_1EFFFF7F8, &protocol witness table for AccessibilityQuickActionsKey, MEMORY[0x1E697FE38]);
    result = swift_getWitnessTable(MEMORY[0x1E697FE40], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<AccessibilityQuickActionsKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

double EnvironmentValues._accessibilityQuickActionsEnabled.setter(char a1)
{
  type metadata accessor for EnvironmentPropertyKey<AccessibilityQuickActionsKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<AccessibilityQuickActionsKey>, &unk_1EFFFF7F8, &protocol witness table for AccessibilityQuickActionsKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<AccessibilityQuickActionsKey> and conformance EnvironmentPropertyKey<A>();

  PropertyList.subscript.setter();
  if (*(v1 + 8))
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  return result;
}

double key path setter for EnvironmentValues.accessibilityQuickActionsEnabled : EnvironmentValues(char *a1, void *a2)
{
  type metadata accessor for EnvironmentPropertyKey<AccessibilityQuickActionsKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<AccessibilityQuickActionsKey>, &unk_1EFFFF7F8, &protocol witness table for AccessibilityQuickActionsKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<AccessibilityQuickActionsKey> and conformance EnvironmentPropertyKey<A>();

  PropertyList.subscript.setter();
  if (a2[1])
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  return result;
}

double (*EnvironmentValues._accessibilityQuickActionsEnabled.modify(uint64_t a1))(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  *a1 = v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  type metadata accessor for EnvironmentPropertyKey<AccessibilityQuickActionsKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<AccessibilityQuickActionsKey>, &unk_1EFFFF7F8, &protocol witness table for AccessibilityQuickActionsKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<AccessibilityQuickActionsKey> and conformance EnvironmentPropertyKey<A>();
  if (v4)
  {

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    PropertyList.subscript.getter();
  }

  v5 = *(a1 + 25);
  if (v5 == 2)
  {
    LOBYTE(v5) = EnvironmentValues.accessibilitySettingEnabled(_:)();
  }

  *(a1 + 24) = v5 & 1;
  return EnvironmentValues._accessibilityQuickActionsEnabled.modify;
}

double EnvironmentValues._accessibilityQuickActionsEnabled.modify(uint64_t a1)
{
  v1 = *(a1 + 16);
  *(a1 + 25) = *(a1 + 24);
  type metadata accessor for EnvironmentPropertyKey<AccessibilityQuickActionsKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<AccessibilityQuickActionsKey>, &unk_1EFFFF7F8, &protocol witness table for AccessibilityQuickActionsKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<AccessibilityQuickActionsKey> and conformance EnvironmentPropertyKey<A>();

  PropertyList.subscript.setter();
  if (v1)
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  return result;
}

uint64_t type metadata accessor for AccessibilityQuickActionProxy(uint64_t a1)
{
  result = type metadata singleton initialization cache for AccessibilityQuickActionProxy;
  if (!type metadata singleton initialization cache for AccessibilityQuickActionProxy)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for AccessibilityQuickActionProxy(uint64_t a1)
{
  type metadata accessor for Published<AccessibilityQuickActionState>(319, &lazy cache variable for type metadata for Published<AccessibilityQuickActionState>, &type metadata for AccessibilityQuickActionState, MEMORY[0x1E695C070]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

unint64_t lazy protocol witness table accessor for type StyleContextWriter<AccessibilityQuickActionStyleContext> and conformance StyleContextWriter<A>()
{
  result = lazy protocol witness table cache variable for type StyleContextWriter<AccessibilityQuickActionStyleContext> and conformance StyleContextWriter<A>;
  if (!lazy protocol witness table cache variable for type StyleContextWriter<AccessibilityQuickActionStyleContext> and conformance StyleContextWriter<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<AccessibilityQuickActionsKey>(255, &lazy cache variable for type metadata for StyleContextWriter<AccessibilityQuickActionStyleContext>, MEMORY[0x1E6980BE8], MEMORY[0x1E6980BE0], MEMORY[0x1E697F4C8]);
    result = swift_getWitnessTable(MEMORY[0x1E697F4D0], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type StyleContextWriter<AccessibilityQuickActionStyleContext> and conformance StyleContextWriter<A>);
  }

  return result;
}

uint64_t type metadata completion function for AccessibilityQuickActionModifier(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for AccessibilityQuickActionModifier(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  if ((v6 & 0x1000F8) != 0 || ((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 18 > 0x18)
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + (((v6 & 0xF8) + 23) & ~(v6 & 0xF8) & 0x1F8));
  }

  else
  {
    (*(v4 + 16))(a1);
    v10 = (v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
    v11 = (a2 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
    if (*(v11 + 8) < 0xFFFFFFFFuLL)
    {
      v12 = *v11;
      *(v10 + 16) = *(v11 + 16);
      *v10 = v12;
    }

    else
    {
      *v10 = *v11;
      *(v10 + 8) = *(v11 + 8);
      *(v10 + 16) = *(v11 + 16);
    }

    *(v10 + 17) = *(v11 + 17);
  }

  return v3;
}

double destroy for AccessibilityQuickActionModifier(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a2 + 16) - 8) + 8;
  (*v3)();
  if (*(((a1 + *(v3 + 56) + 7) & 0xFFFFFFFFFFFFFFF8) + 8) >= 0xFFFFFFFFuLL)
  {
  }

  return result;
}

uint64_t initializeWithCopy for AccessibilityQuickActionModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  v6 = *(v5 + 48) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  if (*(v8 + 8) < 0xFFFFFFFFuLL)
  {
    v9 = *v8;
    *(v7 + 16) = *(v8 + 16);
    *v7 = v9;
  }

  else
  {
    *v7 = *v8;
    *(v7 + 8) = *(v8 + 8);
    *(v7 + 16) = *(v8 + 16);
  }

  *(v7 + 17) = *(v8 + 17);
  return a1;
}

uint64_t assignWithCopy for AccessibilityQuickActionModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  v6 = *(v5 + 40) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v8 + 8);
  if (*(v7 + 8) < 0xFFFFFFFFuLL)
  {
    if (v9 >= 0xFFFFFFFF)
    {
      *v7 = *v8;
      *(v7 + 8) = *(v8 + 8);
      *(v7 + 16) = *(v8 + 16);

      goto LABEL_8;
    }

LABEL_7:
    v10 = *v8;
    *(v7 + 16) = *(v8 + 16);
    *v7 = v10;
    goto LABEL_8;
  }

  if (v9 < 0xFFFFFFFF)
  {

    goto LABEL_7;
  }

  *v7 = *v8;

  *(v7 + 8) = *(v8 + 8);

  *(v7 + 16) = *(v8 + 16);
LABEL_8:
  *(v7 + 17) = *(v8 + 17);
  return a1;
}

uint64_t initializeWithTake for AccessibilityQuickActionModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 32;
  (*v5)();
  v6 = *(v5 + 32) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v8 + 16);
  *v7 = *v8;
  *(v7 + 16) = v9;
  *(v7 + 17) = *(v8 + 17);
  return a1;
}

uint64_t assignWithTake for AccessibilityQuickActionModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  v6 = *(v5 + 24) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  if (*(v7 + 8) < 0xFFFFFFFFuLL)
  {
    goto LABEL_5;
  }

  if (*(v8 + 8) < 0xFFFFFFFFuLL)
  {

LABEL_5:
    v9 = *v8;
    *(v7 + 16) = *(v8 + 16);
    *v7 = v9;
    goto LABEL_6;
  }

  *v7 = *v8;

  *(v7 + 8) = *(v8 + 8);

  *(v7 + 16) = *(v8 + 16);
LABEL_6:
  *(v7 + 17) = *(v8 + 17);
  return a1;
}

uint64_t getEnumTagSinglePayload for AccessibilityQuickActionModifier(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 18;
  v9 = (a2 - v7 + 0xFFFF) >> 16;
  if (v8 <= 3)
  {
    v10 = v9 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v12 > 1)
  {
    if (v12 == 2)
    {
      v13 = *(a1 + v8);
      if (!*(a1 + v8))
      {
        goto LABEL_28;
      }
    }

    else
    {
      v13 = *(a1 + v8);
      if (!v13)
      {
        goto LABEL_28;
      }
    }

LABEL_24:
    v15 = (v13 - 1) << (8 * v8);
    if (v8 <= 3)
    {
      v16 = *a1;
    }

    else
    {
      v15 = 0;
      v16 = *a1;
    }

    return v7 + (v16 | v15) + 1;
  }

  if (v12)
  {
    v13 = *(a1 + v8);
    if (*(a1 + v8))
    {
      goto LABEL_24;
    }
  }

LABEL_28:
  if (v5 >= 0x7FFFFFFE)
  {
    return (*(v4 + 48))(a1);
  }

  v17 = *(((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
  if (v17 >= 0xFFFFFFFF)
  {
    LODWORD(v17) = -1;
  }

  if ((v17 + 1) >= 2)
  {
    return v17;
  }

  else
  {
    return 0;
  }
}

void storeEnumTagSinglePayload for AccessibilityQuickActionModifier(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFE)
  {
    v8 = 2147483646;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(*(*(a4 + 16) - 8) + 64);
  v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 18;
  if (v8 >= a3)
  {
    v14 = 0;
    if (v8 >= a2)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v11 = (a3 - v8 + 0xFFFF) >> 16;
    if (v10 <= 3)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    if (v8 >= a2)
    {
LABEL_17:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *&a1[v10] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_32;
        }

        *&a1[v10] = 0;
      }

      else if (v14)
      {
        a1[v10] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_32;
      }

      if (!a2)
      {
        return;
      }

LABEL_32:
      if (v7 < 0x7FFFFFFE)
      {
        v18 = &a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8;
        if (a2 > 0x7FFFFFFE)
        {
          *v18 = 0;
          *(v18 + 8) = 0;
          *(v18 + 16) = 0;
          *v18 = a2 - 0x7FFFFFFF;
        }

        else
        {
          *(v18 + 8) = a2;
        }
      }

      else
      {
        v17 = *(v6 + 56);

        v17();
      }

      return;
    }
  }

  v15 = ~v8 + a2;
  bzero(a1, ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 18);
  if (v10 <= 3)
  {
    v16 = HIWORD(v15) + 1;
  }

  else
  {
    v16 = 1;
  }

  if (v10 <= 3)
  {
    *a1 = v15;
    if (v14 > 1)
    {
LABEL_27:
      if (v14 == 2)
      {
        *&a1[v10] = v16;
      }

      else
      {
        *&a1[v10] = v16;
      }

      return;
    }
  }

  else
  {
    *a1 = v15;
    if (v14 > 1)
    {
      goto LABEL_27;
    }
  }

  if (v14)
  {
    a1[v10] = v16;
  }
}

unint64_t lazy protocol witness table accessor for type AccessibilityQuickActionState and conformance AccessibilityQuickActionState()
{
  result = lazy protocol witness table cache variable for type AccessibilityQuickActionState and conformance AccessibilityQuickActionState;
  if (!lazy protocol witness table cache variable for type AccessibilityQuickActionState and conformance AccessibilityQuickActionState)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AccessibilityQuickActionState, &type metadata for AccessibilityQuickActionState, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityQuickActionState and conformance AccessibilityQuickActionState);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _AccessibilityQuickActionStyle.RawValue and conformance _AccessibilityQuickActionStyle.RawValue()
{
  result = lazy protocol witness table cache variable for type _AccessibilityQuickActionStyle.RawValue and conformance _AccessibilityQuickActionStyle.RawValue;
  if (!lazy protocol witness table cache variable for type _AccessibilityQuickActionStyle.RawValue and conformance _AccessibilityQuickActionStyle.RawValue)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for _AccessibilityQuickActionStyle.RawValue, &type metadata for _AccessibilityQuickActionStyle.RawValue, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _AccessibilityQuickActionStyle.RawValue and conformance _AccessibilityQuickActionStyle.RawValue);
  }

  return result;
}

uint64_t specialized implicit closure #1 in _GraphInputs.accessibilityQuickActionsEnabled.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = EnvironmentValues.accessibilityQuickActionsEnabled.getter(a1, a2);
  *a3 = result & 1;
  return result;
}

void key path getter for AccessibilityQuickActionProxy.state : AccessibilityQuickActionProxy(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v3;
}

uint64_t key path setter for AccessibilityQuickActionProxy.state : AccessibilityQuickActionProxy(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

void type metadata accessor for Attribute<AccessibilityQuickActionProxy>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Attribute<AccessibilityQuickActionProxy>)
  {
    type metadata accessor for AccessibilityQuickActionProxy(255);
    v1 = type metadata accessor for Attribute();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Attribute<AccessibilityQuickActionProxy>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type AccessibilityQuickActionProxyModifier and conformance AccessibilityQuickActionProxyModifier()
{
  result = lazy protocol witness table cache variable for type AccessibilityQuickActionProxyModifier and conformance AccessibilityQuickActionProxyModifier;
  if (!lazy protocol witness table cache variable for type AccessibilityQuickActionProxyModifier and conformance AccessibilityQuickActionProxyModifier)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AccessibilityQuickActionProxyModifier, &unk_1EFFFF870, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityQuickActionProxyModifier and conformance AccessibilityQuickActionProxyModifier);
  }

  return result;
}

void *assignWithCopy for AccessibilityQuickActionProxyModifier(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];

  return a1;
}

void *assignWithTake for AccessibilityQuickActionProxyModifier(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;

  return a1;
}

double specialized AccessibilityQuickActionProxy.isActive.setter(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v5 = (v3 + OBJC_IVAR____TtC7SwiftUIP33_B8D2E4520F2964BB14185EE65411F68529AccessibilityQuickActionProxy_isActive);
  v6 = *(v3 + OBJC_IVAR____TtC7SwiftUIP33_B8D2E4520F2964BB14185EE65411F68529AccessibilityQuickActionProxy_isActive);
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  *(v5 + 16) = a3;
  outlined copy of Binding<Int>?(a1, a2);
  outlined consume of Binding<NavigationSplitViewColumn>?(v6, v7);
  v9 = v5[1];
  if (v9)
  {
    v10 = *(v5 + 16);
    v13 = *v5;
    v14 = v9;
    v15 = v10 & 1;
    type metadata accessor for Published<AccessibilityQuickActionState>(0, &lazy cache variable for type metadata for Binding<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
    MEMORY[0x18D00ACC0](&v12);
    v11 = v12;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (v13)
    {
      if (v11)
      {
        return result;
      }

      return AccessibilityQuickActionProxy.stop()();
    }

    if ((v11 & 1) == 0)
    {
      return AccessibilityQuickActionProxy.stop()();
    }

    if (*(v4 + OBJC_IVAR____TtC7SwiftUIP33_B8D2E4520F2964BB14185EE65411F68529AccessibilityQuickActionProxy_label + 8) || *(v4 + OBJC_IVAR____TtC7SwiftUIP33_B8D2E4520F2964BB14185EE65411F68529AccessibilityQuickActionProxy_style) == 1)
    {
      if (*(v4 + OBJC_IVAR____TtC7SwiftUIP33_B8D2E4520F2964BB14185EE65411F68529AccessibilityQuickActionProxy_action))
      {
        LOBYTE(v13) = 17;

        static Update.enqueueAction(reason:_:)();
      }
    }
  }

  return result;
}

uint64_t specialized AccessibilityQuickActionModifier.ProxyModifier.value.getter(uint64_t a1)
{
  type metadata accessor for AccessibilityQuickActionProxy(0);
  AGGraphGetValue();
  return 0;
}

uint64_t initializeBufferWithCopyOfBuffer for AccessibilityQuickActionAnimationModifier(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  return a1;
}

uint64_t assignWithCopy for AccessibilityQuickActionAnimationModifier(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  return a1;
}

uint64_t assignWithTake for AccessibilityQuickActionAnimationModifier(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  return a1;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<AccessibilityQuickActionProxyModifier>, _AppearanceActionModifier>, _AppearanceActionModifier>, AccessibilityQuickActionAnimationModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<AccessibilityQuickActionProxyModifier>, _AppearanceActionModifier>, _AppearanceActionModifier>, AccessibilityQuickActionAnimationModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<AccessibilityQuickActionProxyModifier>, _AppearanceActionModifier>, _AppearanceActionModifier>, AccessibilityQuickActionAnimationModifier> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<AccessibilityQuickActionProxyModifier>, _AppearanceActionModifier>, _AppearanceActionModifier>, AccessibilityQuickActionAnimationModifier>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<AccessibilityQuickActionProxyModifier>, _AppearanceActionModifier>, _AppearanceActionModifier>, AccessibilityQuickActionAnimationModifier>, type metadata accessor for ModifiedContent<ModifiedContent<_ViewModifier_Content<AccessibilityQuickActionProxyModifier>, _AppearanceActionModifier>, _AppearanceActionModifier>);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ViewModifier_Content<AccessibilityQuickActionProxyModifier>, _AppearanceActionModifier>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ViewModifier_Content<AccessibilityQuickActionProxyModifier>, _AppearanceActionModifier>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<ModifiedContent<_ViewModifier_Content<AccessibilityQuickActionProxyModifier>, _AppearanceActionModifier>, _AppearanceActionModifier>, lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<AccessibilityQuickActionProxyModifier>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>, MEMORY[0x1E69805D0]);
    v5[1] = lazy protocol witness table accessor for type AccessibilityQuickActionAnimationModifier and conformance AccessibilityQuickActionAnimationModifier();
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<AccessibilityQuickActionProxyModifier>, _AppearanceActionModifier>, _AppearanceActionModifier>, AccessibilityQuickActionAnimationModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<AccessibilityQuickActionProxyModifier>, _AppearanceActionModifier>, _AppearanceActionModifier>, AccessibilityQuickActionAnimationModifier>(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for ModifiedContent();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void type metadata accessor for ModifiedContent<_ViewModifier_Content<AccessibilityQuickActionProxyModifier>, _AppearanceActionModifier>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<AccessibilityQuickActionProxyModifier>, _AppearanceActionModifier>)
  {
    type metadata accessor for _ViewModifier_Content<AccessibilityQuickActionProxyModifier>(255, &lazy cache variable for type metadata for _ViewModifier_Content<AccessibilityQuickActionProxyModifier>, lazy protocol witness table accessor for type AccessibilityQuickActionProxyModifier and conformance AccessibilityQuickActionProxyModifier, &unk_1EFFFF870, MEMORY[0x1E697FDE8]);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<AccessibilityQuickActionProxyModifier>, _AppearanceActionModifier>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ViewModifier_Content<AccessibilityQuickActionProxyModifier>, _AppearanceActionModifier>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    v8 = a2(255);
    v9[0] = a3();
    v9[1] = a4;
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v8, v9);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ViewModifier_Content<AccessibilityQuickActionProxyModifier> and conformance _ViewModifier_Content<A>()
{
  result = lazy protocol witness table cache variable for type _ViewModifier_Content<AccessibilityQuickActionProxyModifier> and conformance _ViewModifier_Content<A>;
  if (!lazy protocol witness table cache variable for type _ViewModifier_Content<AccessibilityQuickActionProxyModifier> and conformance _ViewModifier_Content<A>)
  {
    type metadata accessor for _ViewModifier_Content<AccessibilityQuickActionProxyModifier>(255, &lazy cache variable for type metadata for _ViewModifier_Content<AccessibilityQuickActionProxyModifier>, lazy protocol witness table accessor for type AccessibilityQuickActionProxyModifier and conformance AccessibilityQuickActionProxyModifier, &unk_1EFFFF870, MEMORY[0x1E697FDE8]);
    result = swift_getWitnessTable(MEMORY[0x1E697FDF8], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _ViewModifier_Content<AccessibilityQuickActionProxyModifier> and conformance _ViewModifier_Content<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AccessibilityQuickActionAnimationModifier and conformance AccessibilityQuickActionAnimationModifier()
{
  result = lazy protocol witness table cache variable for type AccessibilityQuickActionAnimationModifier and conformance AccessibilityQuickActionAnimationModifier;
  if (!lazy protocol witness table cache variable for type AccessibilityQuickActionAnimationModifier and conformance AccessibilityQuickActionAnimationModifier)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AccessibilityQuickActionAnimationModifier, &unk_1EFFFF998, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityQuickActionAnimationModifier and conformance AccessibilityQuickActionAnimationModifier);
  }

  return result;
}

void type metadata accessor for Published<AccessibilityQuickActionState>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void type metadata accessor for ModifiedContent<_ViewModifier_Content<AccessibilityQuickActionAnimationModifier>, _OverlayPreferenceModifier<ViewRespondersKey, ModifiedContent<ModifiedContent<ModifiedContent<VStack<_ConditionalContent<_ConditionalContent<EmptyView, AccessibilityQuickActionAnimationModifier.FocusRing>, _ConditionalContent<ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier>, ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ActivateModifier>>>>, _OpacityEffect>, _AnimationModifier<Bool>>, _AllowsHitTestingModifier>>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<AccessibilityQuickActionAnimationModifier>, _OverlayPreferenceModifier<ViewRespondersKey, ModifiedContent<ModifiedContent<ModifiedContent<VStack<_ConditionalContent<_ConditionalContent<EmptyView, AccessibilityQuickActionAnimationModifier.FocusRing>, _ConditionalContent<ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier>, ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ActivateModifier>>>>, _OpacityEffect>, _AnimationModifier<Bool>>, _AllowsHitTestingModifier>>>)
  {
    type metadata accessor for _ViewModifier_Content<AccessibilityQuickActionProxyModifier>(255, &lazy cache variable for type metadata for _ViewModifier_Content<AccessibilityQuickActionAnimationModifier>, lazy protocol witness table accessor for type AccessibilityQuickActionAnimationModifier and conformance AccessibilityQuickActionAnimationModifier, &unk_1EFFFF998, MEMORY[0x1E697FDE8]);
    type metadata accessor for _OverlayPreferenceModifier<ViewRespondersKey, ModifiedContent<ModifiedContent<ModifiedContent<VStack<_ConditionalContent<_ConditionalContent<EmptyView, AccessibilityQuickActionAnimationModifier.FocusRing>, _ConditionalContent<ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier>, ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ActivateModifier>>>>, _OpacityEffect>, _AnimationModifier<Bool>>, _AllowsHitTestingModifier>>(255);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<AccessibilityQuickActionAnimationModifier>, _OverlayPreferenceModifier<ViewRespondersKey, ModifiedContent<ModifiedContent<ModifiedContent<VStack<_ConditionalContent<_ConditionalContent<EmptyView, AccessibilityQuickActionAnimationModifier.FocusRing>, _ConditionalContent<ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier>, ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ActivateModifier>>>>, _OpacityEffect>, _AnimationModifier<Bool>>, _AllowsHitTestingModifier>>>);
    }
  }
}

void type metadata accessor for _OverlayPreferenceModifier<ViewRespondersKey, ModifiedContent<ModifiedContent<ModifiedContent<VStack<_ConditionalContent<_ConditionalContent<EmptyView, AccessibilityQuickActionAnimationModifier.FocusRing>, _ConditionalContent<ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier>, ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ActivateModifier>>>>, _OpacityEffect>, _AnimationModifier<Bool>>, _AllowsHitTestingModifier>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _OverlayPreferenceModifier<ViewRespondersKey, ModifiedContent<ModifiedContent<ModifiedContent<VStack<_ConditionalContent<_ConditionalContent<EmptyView, AccessibilityQuickActionAnimationModifier.FocusRing>, _ConditionalContent<ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier>, ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ActivateModifier>>>>, _OpacityEffect>, _AnimationModifier<Bool>>, _AllowsHitTestingModifier>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<VStack<_ConditionalContent<_ConditionalContent<EmptyView, AccessibilityQuickActionAnimationModifier.FocusRing>, _ConditionalContent<ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier>, ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ActivateModifier>>>>, _OpacityEffect>, _AnimationModifier<Bool>>, _AllowsHitTestingModifier>(255);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ViewModifier_Content<AccessibilityQuickActionProxyModifier>, _AppearanceActionModifier>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<VStack<_ConditionalContent<_ConditionalContent<EmptyView, AccessibilityQuickActionAnimationModifier.FocusRing>, _ConditionalContent<ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier>, ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ActivateModifier>>>>, _OpacityEffect>, _AnimationModifier<Bool>>, _AllowsHitTestingModifier> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<VStack<_ConditionalContent<_ConditionalContent<EmptyView, AccessibilityQuickActionAnimationModifier.FocusRing>, _ConditionalContent<ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier>, ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ActivateModifier>>>>, _OpacityEffect>, _AnimationModifier<Bool>>, _AllowsHitTestingModifier>, lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<VStack<_ConditionalContent<_ConditionalContent<EmptyView, AccessibilityQuickActionAnimationModifier.FocusRing>, _ConditionalContent<ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier>, ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ActivateModifier>>>>, _OpacityEffect>, _AnimationModifier<Bool>> and conformance <> ModifiedContent<A, B>, MEMORY[0x1E69805B0]);
    v1 = type metadata accessor for _OverlayPreferenceModifier();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _OverlayPreferenceModifier<ViewRespondersKey, ModifiedContent<ModifiedContent<ModifiedContent<VStack<_ConditionalContent<_ConditionalContent<EmptyView, AccessibilityQuickActionAnimationModifier.FocusRing>, _ConditionalContent<ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier>, ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ActivateModifier>>>>, _OpacityEffect>, _AnimationModifier<Bool>>, _AllowsHitTestingModifier>>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<AccessibilityQuickActionAnimationModifier.ActivateModifier>, _OpacityEffect>, _ScaleEffect>, _AnimationModifier<Bool>>(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    type metadata accessor for EnvironmentPropertyKey<AccessibilityQuickActionsKey>(255, &lazy cache variable for type metadata for _AnimationModifier<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E69E6388], MEMORY[0x1E697F540]);
    v4 = type metadata accessor for ModifiedContent();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void type metadata accessor for VStack<_ConditionalContent<_ConditionalContent<EmptyView, AccessibilityQuickActionAnimationModifier.FocusRing>, _ConditionalContent<ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier>, ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ActivateModifier>>>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for VStack<_ConditionalContent<_ConditionalContent<EmptyView, AccessibilityQuickActionAnimationModifier.FocusRing>, _ConditionalContent<ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier>, ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ActivateModifier>>>>)
  {
    type metadata accessor for _ConditionalContent<_ConditionalContent<EmptyView, AccessibilityQuickActionAnimationModifier.FocusRing>, _ConditionalContent<ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier>, ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ActivateModifier>>>(255);
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<EmptyView, AccessibilityQuickActionAnimationModifier.FocusRing>, _ConditionalContent<ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier>, ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ActivateModifier>>> and conformance <> _ConditionalContent<A, B>();
    v1 = type metadata accessor for VStack();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for VStack<_ConditionalContent<_ConditionalContent<EmptyView, AccessibilityQuickActionAnimationModifier.FocusRing>, _ConditionalContent<ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier>, ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ActivateModifier>>>>);
    }
  }
}

void type metadata accessor for _ConditionalContent<_ConditionalContent<EmptyView, AccessibilityQuickActionAnimationModifier.FocusRing>, _ConditionalContent<ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier>, ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ActivateModifier>>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _ConditionalContent<_ConditionalContent<EmptyView, AccessibilityQuickActionAnimationModifier.FocusRing>, _ConditionalContent<ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier>, ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ActivateModifier>>>)
  {
    type metadata accessor for EnvironmentPropertyKey<AccessibilityQuickActionsKey>(255, &lazy cache variable for type metadata for _ConditionalContent<EmptyView, AccessibilityQuickActionAnimationModifier.FocusRing>, MEMORY[0x1E6981E70], &unk_1EFFFFB68, MEMORY[0x1E697F960]);
    type metadata accessor for _ConditionalContent<ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier>, ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ActivateModifier>>(255);
    v1 = type metadata accessor for _ConditionalContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _ConditionalContent<_ConditionalContent<EmptyView, AccessibilityQuickActionAnimationModifier.FocusRing>, _ConditionalContent<ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier>, ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ActivateModifier>>>);
    }
  }
}

void type metadata accessor for _ConditionalContent<ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier>, ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ActivateModifier>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _ConditionalContent<ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier>, ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ActivateModifier>>)
  {
    v1 = MEMORY[0x1E697E830];
    type metadata accessor for EnvironmentPropertyKey<AccessibilityQuickActionsKey>(255, &lazy cache variable for type metadata for ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier>, &unk_1EFFFFB68, &unk_1EFFFFAE8, MEMORY[0x1E697E830]);
    type metadata accessor for EnvironmentPropertyKey<AccessibilityQuickActionsKey>(255, &lazy cache variable for type metadata for ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ActivateModifier>, &unk_1EFFFFB68, &unk_1EFFFFA68, v1);
    v2 = type metadata accessor for _ConditionalContent();
    if (!v3)
    {
      atomic_store(v2, &lazy cache variable for type metadata for _ConditionalContent<ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier>, ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ActivateModifier>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<EmptyView, AccessibilityQuickActionAnimationModifier.FocusRing>, _ConditionalContent<ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier>, ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ActivateModifier>>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<EmptyView, AccessibilityQuickActionAnimationModifier.FocusRing>, _ConditionalContent<ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier>, ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ActivateModifier>>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<EmptyView, AccessibilityQuickActionAnimationModifier.FocusRing>, _ConditionalContent<ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier>, ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ActivateModifier>>> and conformance <> _ConditionalContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for _ConditionalContent<_ConditionalContent<EmptyView, AccessibilityQuickActionAnimationModifier.FocusRing>, _ConditionalContent<ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier>, ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ActivateModifier>>>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type _ConditionalContent<EmptyView, AccessibilityQuickActionAnimationModifier.FocusRing> and conformance <> _ConditionalContent<A, B>();
    v5[1] = lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier>, ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ActivateModifier>> and conformance <> _ConditionalContent<A, B>();
    result = swift_getWitnessTable(MEMORY[0x1E697F968], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<EmptyView, AccessibilityQuickActionAnimationModifier.FocusRing>, _ConditionalContent<ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier>, ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ActivateModifier>>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<EmptyView, AccessibilityQuickActionAnimationModifier.FocusRing> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<EmptyView, AccessibilityQuickActionAnimationModifier.FocusRing> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<EmptyView, AccessibilityQuickActionAnimationModifier.FocusRing> and conformance <> _ConditionalContent<A, B>)
  {
    v6[4] = v0;
    v6[5] = v1;
    type metadata accessor for EnvironmentPropertyKey<AccessibilityQuickActionsKey>(255, &lazy cache variable for type metadata for _ConditionalContent<EmptyView, AccessibilityQuickActionAnimationModifier.FocusRing>, MEMORY[0x1E6981E70], &unk_1EFFFFB68, MEMORY[0x1E697F960]);
    v4 = v3;
    v5 = lazy protocol witness table accessor for type AccessibilityQuickActionAnimationModifier.FocusRing and conformance AccessibilityQuickActionAnimationModifier.FocusRing();
    v6[0] = MEMORY[0x1E6981E60];
    v6[1] = v5;
    result = swift_getWitnessTable(MEMORY[0x1E697F968], v4, v6);
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<EmptyView, AccessibilityQuickActionAnimationModifier.FocusRing> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AccessibilityQuickActionAnimationModifier.FocusRing and conformance AccessibilityQuickActionAnimationModifier.FocusRing()
{
  result = lazy protocol witness table cache variable for type AccessibilityQuickActionAnimationModifier.FocusRing and conformance AccessibilityQuickActionAnimationModifier.FocusRing;
  if (!lazy protocol witness table cache variable for type AccessibilityQuickActionAnimationModifier.FocusRing and conformance AccessibilityQuickActionAnimationModifier.FocusRing)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AccessibilityQuickActionAnimationModifier.FocusRing, &unk_1EFFFFB68, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityQuickActionAnimationModifier.FocusRing and conformance AccessibilityQuickActionAnimationModifier.FocusRing);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier>, ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ActivateModifier>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier>, ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ActivateModifier>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier>, ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ActivateModifier>> and conformance <> _ConditionalContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for _ConditionalContent<ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier>, ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ActivateModifier>>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ActivateModifier> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier> and conformance <> ModifiedContent<A, B>, &lazy cache variable for type metadata for ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier>, &unk_1EFFFFAE8, lazy protocol witness table accessor for type AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier and conformance AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier);
    v5[1] = lazy protocol witness table accessor for type ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ActivateModifier> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ActivateModifier> and conformance <> ModifiedContent<A, B>, &lazy cache variable for type metadata for ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ActivateModifier>, &unk_1EFFFFA68, lazy protocol witness table accessor for type AccessibilityQuickActionAnimationModifier.ActivateModifier and conformance AccessibilityQuickActionAnimationModifier.ActivateModifier);
    result = swift_getWitnessTable(MEMORY[0x1E697F968], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier>, ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ActivateModifier>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ActivateModifier> and conformance <> ModifiedContent<A, B>(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for EnvironmentPropertyKey<AccessibilityQuickActionsKey>(255, a2, &unk_1EFFFFB68, a3, MEMORY[0x1E697E830]);
    v8 = v7;
    v9[0] = lazy protocol witness table accessor for type AccessibilityQuickActionAnimationModifier.FocusRing and conformance AccessibilityQuickActionAnimationModifier.FocusRing();
    v9[1] = a4();
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v8, v9);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier and conformance AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier()
{
  result = lazy protocol witness table cache variable for type AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier and conformance AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier;
  if (!lazy protocol witness table cache variable for type AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier and conformance AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier, &unk_1EFFFFAE8, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier and conformance AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AccessibilityQuickActionAnimationModifier.ActivateModifier and conformance AccessibilityQuickActionAnimationModifier.ActivateModifier()
{
  result = lazy protocol witness table cache variable for type AccessibilityQuickActionAnimationModifier.ActivateModifier and conformance AccessibilityQuickActionAnimationModifier.ActivateModifier;
  if (!lazy protocol witness table cache variable for type AccessibilityQuickActionAnimationModifier.ActivateModifier and conformance AccessibilityQuickActionAnimationModifier.ActivateModifier)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AccessibilityQuickActionAnimationModifier.ActivateModifier, &unk_1EFFFFA68, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityQuickActionAnimationModifier.ActivateModifier and conformance AccessibilityQuickActionAnimationModifier.ActivateModifier);
  }

  return result;
}

void type metadata accessor for EnvironmentPropertyKey<AccessibilityQuickActionsKey>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<VStack<_ConditionalContent<_ConditionalContent<EmptyView, AccessibilityQuickActionAnimationModifier.FocusRing>, _ConditionalContent<ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier>, ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ActivateModifier>>>>, _OpacityEffect>, _AnimationModifier<Bool>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<VStack<_ConditionalContent<_ConditionalContent<EmptyView, AccessibilityQuickActionAnimationModifier.FocusRing>, _ConditionalContent<ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier>, ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ActivateModifier>>>>, _OpacityEffect>, _AnimationModifier<Bool>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<VStack<_ConditionalContent<_ConditionalContent<EmptyView, AccessibilityQuickActionAnimationModifier.FocusRing>, _ConditionalContent<ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier>, ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ActivateModifier>>>>, _OpacityEffect>, _AnimationModifier<Bool>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<AccessibilityQuickActionAnimationModifier.ActivateModifier>, _OpacityEffect>, _ScaleEffect>, _AnimationModifier<Bool>>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<VStack<_ConditionalContent<_ConditionalContent<EmptyView, AccessibilityQuickActionAnimationModifier.FocusRing>, _ConditionalContent<ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier>, ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ActivateModifier>>>>, _OpacityEffect>, _AnimationModifier<Bool>>, type metadata accessor for ModifiedContent<VStack<_ConditionalContent<_ConditionalContent<EmptyView, AccessibilityQuickActionAnimationModifier.FocusRing>, _ConditionalContent<ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier>, ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ActivateModifier>>>>, _OpacityEffect>);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ModifiedContent<VStack<_ConditionalContent<_ConditionalContent<EmptyView, AccessibilityQuickActionAnimationModifier.FocusRing>, _ConditionalContent<ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier>, ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ActivateModifier>>>>, _OpacityEffect> and conformance <> ModifiedContent<A, B>();
    v5[1] = lazy protocol witness table accessor for type _AnimationModifier<Bool> and conformance _AnimationModifier<A>();
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<VStack<_ConditionalContent<_ConditionalContent<EmptyView, AccessibilityQuickActionAnimationModifier.FocusRing>, _ConditionalContent<ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier>, ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ActivateModifier>>>>, _OpacityEffect>, _AnimationModifier<Bool>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<VStack<_ConditionalContent<_ConditionalContent<EmptyView, AccessibilityQuickActionAnimationModifier.FocusRing>, _ConditionalContent<ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier>, ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ActivateModifier>>>>, _OpacityEffect> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<VStack<_ConditionalContent<_ConditionalContent<EmptyView, AccessibilityQuickActionAnimationModifier.FocusRing>, _ConditionalContent<ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier>, ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ActivateModifier>>>>, _OpacityEffect> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<VStack<_ConditionalContent<_ConditionalContent<EmptyView, AccessibilityQuickActionAnimationModifier.FocusRing>, _ConditionalContent<ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier>, ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ActivateModifier>>>>, _OpacityEffect> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<VStack<_ConditionalContent<_ConditionalContent<EmptyView, AccessibilityQuickActionAnimationModifier.FocusRing>, _ConditionalContent<ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier>, ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ActivateModifier>>>>, _OpacityEffect>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type _ShapeView<AccessibilityQuickActionAnimationModifier.FocusRing.Outline, ForegroundStyle> and conformance _ShapeView<A, B>(&lazy protocol witness table cache variable for type VStack<_ConditionalContent<_ConditionalContent<EmptyView, AccessibilityQuickActionAnimationModifier.FocusRing>, _ConditionalContent<ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier>, ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ActivateModifier>>>> and conformance VStack<A>, type metadata accessor for VStack<_ConditionalContent<_ConditionalContent<EmptyView, AccessibilityQuickActionAnimationModifier.FocusRing>, _ConditionalContent<ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier>, ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ActivateModifier>>>>, MEMORY[0x1E6981870]);
    v5[1] = MEMORY[0x1E697E5C0];
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<VStack<_ConditionalContent<_ConditionalContent<EmptyView, AccessibilityQuickActionAnimationModifier.FocusRing>, _ConditionalContent<ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier>, ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ActivateModifier>>>>, _OpacityEffect> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type _ShapeView<AccessibilityQuickActionAnimationModifier.FocusRing.Outline, ForegroundStyle> and conformance _ShapeView<A, B>(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<AccessibilityQuickActionAnimationModifier>, _OverlayPreferenceModifier<ViewRespondersKey, ModifiedContent<ModifiedContent<ModifiedContent<VStack<_ConditionalContent<_ConditionalContent<EmptyView, AccessibilityQuickActionAnimationModifier.FocusRing>, _ConditionalContent<ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier>, ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ActivateModifier>>>>, _OpacityEffect>, _AnimationModifier<Bool>>, _AllowsHitTestingModifier>>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<AccessibilityQuickActionAnimationModifier>, _OverlayPreferenceModifier<ViewRespondersKey, ModifiedContent<ModifiedContent<ModifiedContent<VStack<_ConditionalContent<_ConditionalContent<EmptyView, AccessibilityQuickActionAnimationModifier.FocusRing>, _ConditionalContent<ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier>, ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ActivateModifier>>>>, _OpacityEffect>, _AnimationModifier<Bool>>, _AllowsHitTestingModifier>>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<AccessibilityQuickActionAnimationModifier>, _OverlayPreferenceModifier<ViewRespondersKey, ModifiedContent<ModifiedContent<ModifiedContent<VStack<_ConditionalContent<_ConditionalContent<EmptyView, AccessibilityQuickActionAnimationModifier.FocusRing>, _ConditionalContent<ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier>, ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ActivateModifier>>>>, _OpacityEffect>, _AnimationModifier<Bool>>, _AllowsHitTestingModifier>>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<_ViewModifier_Content<AccessibilityQuickActionAnimationModifier>, _OverlayPreferenceModifier<ViewRespondersKey, ModifiedContent<ModifiedContent<ModifiedContent<VStack<_ConditionalContent<_ConditionalContent<EmptyView, AccessibilityQuickActionAnimationModifier.FocusRing>, _ConditionalContent<ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier>, ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ActivateModifier>>>>, _OpacityEffect>, _AnimationModifier<Bool>>, _AllowsHitTestingModifier>>>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type _ViewModifier_Content<AccessibilityQuickActionAnimationModifier> and conformance _ViewModifier_Content<A>();
    v5[1] = lazy protocol witness table accessor for type _ShapeView<AccessibilityQuickActionAnimationModifier.FocusRing.Outline, ForegroundStyle> and conformance _ShapeView<A, B>(&lazy protocol witness table cache variable for type _OverlayPreferenceModifier<ViewRespondersKey, ModifiedContent<ModifiedContent<ModifiedContent<VStack<_ConditionalContent<_ConditionalContent<EmptyView, AccessibilityQuickActionAnimationModifier.FocusRing>, _ConditionalContent<ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier>, ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ActivateModifier>>>>, _OpacityEffect>, _AnimationModifier<Bool>>, _AllowsHitTestingModifier>> and conformance _OverlayPreferenceModifier<A, B>, type metadata accessor for _OverlayPreferenceModifier<ViewRespondersKey, ModifiedContent<ModifiedContent<ModifiedContent<VStack<_ConditionalContent<_ConditionalContent<EmptyView, AccessibilityQuickActionAnimationModifier.FocusRing>, _ConditionalContent<ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier>, ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ActivateModifier>>>>, _OpacityEffect>, _AnimationModifier<Bool>>, _AllowsHitTestingModifier>>, MEMORY[0x1E6980748]);
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<AccessibilityQuickActionAnimationModifier>, _OverlayPreferenceModifier<ViewRespondersKey, ModifiedContent<ModifiedContent<ModifiedContent<VStack<_ConditionalContent<_ConditionalContent<EmptyView, AccessibilityQuickActionAnimationModifier.FocusRing>, _ConditionalContent<ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier>, ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ActivateModifier>>>>, _OpacityEffect>, _AnimationModifier<Bool>>, _AllowsHitTestingModifier>>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ViewModifier_Content<AccessibilityQuickActionAnimationModifier> and conformance _ViewModifier_Content<A>()
{
  result = lazy protocol witness table cache variable for type _ViewModifier_Content<AccessibilityQuickActionAnimationModifier> and conformance _ViewModifier_Content<A>;
  if (!lazy protocol witness table cache variable for type _ViewModifier_Content<AccessibilityQuickActionAnimationModifier> and conformance _ViewModifier_Content<A>)
  {
    type metadata accessor for _ViewModifier_Content<AccessibilityQuickActionProxyModifier>(255, &lazy cache variable for type metadata for _ViewModifier_Content<AccessibilityQuickActionAnimationModifier>, lazy protocol witness table accessor for type AccessibilityQuickActionAnimationModifier and conformance AccessibilityQuickActionAnimationModifier, &unk_1EFFFF998, MEMORY[0x1E697FDE8]);
    result = swift_getWitnessTable(MEMORY[0x1E697FDF8], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _ViewModifier_Content<AccessibilityQuickActionAnimationModifier> and conformance _ViewModifier_Content<A>);
  }

  return result;
}

uint64_t partial apply for closure #3 in closure #2 in AccessibilityQuickActionAnimationModifier.body(content:)(uint64_t result)
{
  if (*(v1 + 32))
  {
    return dispatch thunk of AnyLocation.set(_:transaction:)();
  }

  return v2;
}

uint64_t outlined init with copy of _ConditionalContent<_ConditionalContent<EmptyView, AccessibilityQuickActionAnimationModifier.FocusRing>, _ConditionalContent<ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier>, ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ActivateModifier>>>(uint64_t a1, uint64_t a2)
{
  type metadata accessor for _ConditionalContent<_ConditionalContent<EmptyView, AccessibilityQuickActionAnimationModifier.FocusRing>, _ConditionalContent<ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier>, ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ActivateModifier>>>(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t destroy for AccessibilityQuickActionAnimationModifier.FocusRing(uint64_t a1)
{
  outlined consume of Path.Storage(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 24), *(a1 + 32));
  v2 = *(a1 + 40);

  return outlined consume of Environment<Color?>.Content(v2);
}

uint64_t initializeWithCopy for AccessibilityQuickActionAnimationModifier.FocusRing(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  outlined copy of Path.Storage(*a2, v5, v6, v7, v8);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  v9 = *(v2 + 40);
  LOBYTE(v2) = *(v2 + 48);
  outlined copy of Environment<Color?>.Content(v9);
  *(a1 + 40) = v9;
  *(a1 + 48) = v2;
  return a1;
}

uint64_t assignWithCopy for AccessibilityQuickActionAnimationModifier.FocusRing(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  outlined copy of Path.Storage(*a2, v5, v6, v7, v8);
  v9 = *a1;
  v10 = *(a1 + 8);
  v11 = *(a1 + 16);
  v12 = *(a1 + 24);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  v13 = *(a1 + 32);
  *(a1 + 32) = v8;
  outlined consume of Path.Storage(v9, v10, v11, v12, v13);
  v14 = *(v2 + 40);
  LOBYTE(v2) = *(v2 + 48);
  outlined copy of Environment<Color?>.Content(v14);
  v15 = *(a1 + 40);
  *(a1 + 40) = v14;
  *(a1 + 48) = v2;
  outlined consume of Environment<Color?>.Content(v15);
  return a1;
}

uint64_t assignWithTake for AccessibilityQuickActionAnimationModifier.FocusRing(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  v9 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v9;
  v10 = *(a1 + 32);
  *(a1 + 32) = v4;
  outlined consume of Path.Storage(v5, v6, v7, v8, v10);
  v11 = *(a2 + 48);
  v12 = *(a1 + 40);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v11;
  outlined consume of Environment<Color?>.Content(v12);
  return a1;
}

uint64_t getEnumTagSinglePayload for AccessibilityQuickActionAnimationModifier.FocusRing(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 49))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 48);
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

uint64_t storeEnumTagSinglePayload for AccessibilityQuickActionAnimationModifier.FocusRing(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<AccessibilityQuickActionAnimationModifier>, _OverlayPreferenceModifier<ViewRespondersKey, ModifiedContent<ModifiedContent<ModifiedContent<VStack<_ConditionalContent<_ConditionalContent<EmptyView, AccessibilityQuickActionAnimationModifier.FocusRing>, _ConditionalContent<ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier>, ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ActivateModifier>>>>, _OpacityEffect>, _AnimationModifier<Bool>>, _AllowsHitTestingModifier>>>, _ScaleEffect>, _ValueActionModifier2<AccessibilityQuickActionState>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<AccessibilityQuickActionAnimationModifier>, _OverlayPreferenceModifier<ViewRespondersKey, ModifiedContent<ModifiedContent<ModifiedContent<VStack<_ConditionalContent<_ConditionalContent<EmptyView, AccessibilityQuickActionAnimationModifier.FocusRing>, _ConditionalContent<ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier>, ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ActivateModifier>>>>, _OpacityEffect>, _AnimationModifier<Bool>>, _AllowsHitTestingModifier>>>, _ScaleEffect>, _ValueActionModifier2<AccessibilityQuickActionState>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<_ViewModifier_Content<AccessibilityQuickActionAnimationModifier>, _OverlayPreferenceModifier<ViewRespondersKey, ModifiedContent<ModifiedContent<ModifiedContent<VStack<_ConditionalContent<_ConditionalContent<EmptyView, AccessibilityQuickActionAnimationModifier.FocusRing>, _ConditionalContent<ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier>, ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ActivateModifier>>>>, _OpacityEffect>, _AnimationModifier<Bool>>, _AllowsHitTestingModifier>>>, _ScaleEffect>(255);
    type metadata accessor for _ViewModifier_Content<AccessibilityQuickActionProxyModifier>(255, &lazy cache variable for type metadata for _ValueActionModifier2<AccessibilityQuickActionState>, lazy protocol witness table accessor for type AccessibilityQuickActionState and conformance AccessibilityQuickActionState, &type metadata for AccessibilityQuickActionState, MEMORY[0x1E697FDD0]);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<AccessibilityQuickActionAnimationModifier>, _OverlayPreferenceModifier<ViewRespondersKey, ModifiedContent<ModifiedContent<ModifiedContent<VStack<_ConditionalContent<_ConditionalContent<EmptyView, AccessibilityQuickActionAnimationModifier.FocusRing>, _ConditionalContent<ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier>, ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ActivateModifier>>>>, _OpacityEffect>, _AnimationModifier<Bool>>, _AllowsHitTestingModifier>>>, _ScaleEffect>, _ValueActionModifier2<AccessibilityQuickActionState>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<AccessibilityQuickActionAnimationModifier>, _OverlayPreferenceModifier<ViewRespondersKey, ModifiedContent<ModifiedContent<ModifiedContent<VStack<_ConditionalContent<_ConditionalContent<EmptyView, AccessibilityQuickActionAnimationModifier.FocusRing>, _ConditionalContent<ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier>, ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ActivateModifier>>>>, _OpacityEffect>, _AnimationModifier<Bool>>, _AllowsHitTestingModifier>>>, _ScaleEffect>, _ValueActionModifier2<AccessibilityQuickActionState>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<AccessibilityQuickActionAnimationModifier>, _OverlayPreferenceModifier<ViewRespondersKey, ModifiedContent<ModifiedContent<ModifiedContent<VStack<_ConditionalContent<_ConditionalContent<EmptyView, AccessibilityQuickActionAnimationModifier.FocusRing>, _ConditionalContent<ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier>, ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ActivateModifier>>>>, _OpacityEffect>, _AnimationModifier<Bool>>, _AllowsHitTestingModifier>>>, _ScaleEffect>, _ValueActionModifier2<AccessibilityQuickActionState>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<AccessibilityQuickActionAnimationModifier>, _OverlayPreferenceModifier<ViewRespondersKey, ModifiedContent<ModifiedContent<ModifiedContent<VStack<_ConditionalContent<_ConditionalContent<EmptyView, AccessibilityQuickActionAnimationModifier.FocusRing>, _ConditionalContent<ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier>, ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ActivateModifier>>>>, _OpacityEffect>, _AnimationModifier<Bool>>, _AllowsHitTestingModifier>>>, _ScaleEffect>, _ValueActionModifier2<AccessibilityQuickActionState>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<AccessibilityQuickActionAnimationModifier>, _OverlayPreferenceModifier<ViewRespondersKey, ModifiedContent<ModifiedContent<ModifiedContent<VStack<_ConditionalContent<_ConditionalContent<EmptyView, AccessibilityQuickActionAnimationModifier.FocusRing>, _ConditionalContent<ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier>, ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ActivateModifier>>>>, _OpacityEffect>, _AnimationModifier<Bool>>, _AllowsHitTestingModifier>>>, _ScaleEffect>, _ValueActionModifier2<AccessibilityQuickActionState>>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ViewModifier_Content<AccessibilityQuickActionProxyModifier>, _AppearanceActionModifier>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ViewModifier_Content<AccessibilityQuickActionAnimationModifier>, _OverlayPreferenceModifier<ViewRespondersKey, ModifiedContent<ModifiedContent<ModifiedContent<VStack<_ConditionalContent<_ConditionalContent<EmptyView, AccessibilityQuickActionAnimationModifier.FocusRing>, _ConditionalContent<ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier>, ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ActivateModifier>>>>, _OpacityEffect>, _AnimationModifier<Bool>>, _AllowsHitTestingModifier>>>, _ScaleEffect> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<ModifiedContent<_ViewModifier_Content<AccessibilityQuickActionAnimationModifier>, _OverlayPreferenceModifier<ViewRespondersKey, ModifiedContent<ModifiedContent<ModifiedContent<VStack<_ConditionalContent<_ConditionalContent<EmptyView, AccessibilityQuickActionAnimationModifier.FocusRing>, _ConditionalContent<ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier>, ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ActivateModifier>>>>, _OpacityEffect>, _AnimationModifier<Bool>>, _AllowsHitTestingModifier>>>, _ScaleEffect>, lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<AccessibilityQuickActionAnimationModifier>, _OverlayPreferenceModifier<ViewRespondersKey, ModifiedContent<ModifiedContent<ModifiedContent<VStack<_ConditionalContent<_ConditionalContent<EmptyView, AccessibilityQuickActionAnimationModifier.FocusRing>, _ConditionalContent<ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier>, ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ActivateModifier>>>>, _OpacityEffect>, _AnimationModifier<Bool>>, _AllowsHitTestingModifier>>> and conformance <> ModifiedContent<A, B>, MEMORY[0x1E697E070]);
    v5[1] = lazy protocol witness table accessor for type _ValueActionModifier2<AccessibilityQuickActionState> and conformance _ValueActionModifier2<A>();
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<AccessibilityQuickActionAnimationModifier>, _OverlayPreferenceModifier<ViewRespondersKey, ModifiedContent<ModifiedContent<ModifiedContent<VStack<_ConditionalContent<_ConditionalContent<EmptyView, AccessibilityQuickActionAnimationModifier.FocusRing>, _ConditionalContent<ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier>, ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ActivateModifier>>>>, _OpacityEffect>, _AnimationModifier<Bool>>, _AllowsHitTestingModifier>>>, _ScaleEffect>, _ValueActionModifier2<AccessibilityQuickActionState>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ValueActionModifier2<AccessibilityQuickActionState> and conformance _ValueActionModifier2<A>()
{
  result = lazy protocol witness table cache variable for type _ValueActionModifier2<AccessibilityQuickActionState> and conformance _ValueActionModifier2<A>;
  if (!lazy protocol witness table cache variable for type _ValueActionModifier2<AccessibilityQuickActionState> and conformance _ValueActionModifier2<A>)
  {
    type metadata accessor for _ViewModifier_Content<AccessibilityQuickActionProxyModifier>(255, &lazy cache variable for type metadata for _ValueActionModifier2<AccessibilityQuickActionState>, lazy protocol witness table accessor for type AccessibilityQuickActionState and conformance AccessibilityQuickActionState, &type metadata for AccessibilityQuickActionState, MEMORY[0x1E697FDD0]);
    result = swift_getWitnessTable(MEMORY[0x1E697FDE0], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _ValueActionModifier2<AccessibilityQuickActionState> and conformance _ValueActionModifier2<A>);
  }

  return result;
}

uint64_t partial apply for closure #1 in AccessibilityQuickActionAnimationModifier.ActivateModifier.body(content:)()
{
  if (*(v0 + 32))
  {
    return dispatch thunk of AnyLocation.set(_:transaction:)();
  }

  return result;
}

uint64_t initializeWithCopy for AccessibilityQuickActionAnimationModifier.FocusRing.Outline(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  outlined copy of Path.Storage(*a2, v5, v6, v7, v8);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  *(a1 + 40) = *(a2 + 40);
  return a1;
}

uint64_t assignWithCopy for AccessibilityQuickActionAnimationModifier.FocusRing.Outline(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  outlined copy of Path.Storage(*a2, v5, v6, v7, v8);
  v9 = *a1;
  v10 = *(a1 + 8);
  v11 = *(a1 + 16);
  v12 = *(a1 + 24);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  v13 = *(a1 + 32);
  *(a1 + 32) = v8;
  outlined consume of Path.Storage(v9, v10, v11, v12, v13);
  *(a1 + 40) = *(a2 + 40);
  return a1;
}

uint64_t assignWithTake for AccessibilityQuickActionAnimationModifier.FocusRing.Outline(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  v9 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v9;
  v10 = *(a1 + 32);
  *(a1 + 32) = v4;
  outlined consume of Path.Storage(v5, v6, v7, v8, v10);
  *(a1 + 40) = *(a2 + 40);
  return a1;
}

uint64_t getEnumTagSinglePayload for AccessibilityQuickActionAnimationModifier.FocusRing.Outline(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFA && *(a1 + 48))
  {
    return (*a1 + 250);
  }

  v3 = *(a1 + 32);
  if (v3 <= 6)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for AccessibilityQuickActionAnimationModifier.FocusRing.Outline(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF9)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 250;
    if (a3 >= 0xFA)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFA)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

void type metadata accessor for StrokeShapeView<AccessibilityQuickActionAnimationModifier.FocusRing.Outline, Color, EmptyView>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for StrokeShapeView<AccessibilityQuickActionAnimationModifier.FocusRing.Outline, Color, EmptyView>)
  {
    lazy protocol witness table accessor for type AccessibilityQuickActionAnimationModifier.FocusRing.Outline and conformance AccessibilityQuickActionAnimationModifier.FocusRing.Outline();
    v1 = type metadata accessor for StrokeShapeView();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for StrokeShapeView<AccessibilityQuickActionAnimationModifier.FocusRing.Outline, Color, EmptyView>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type AccessibilityQuickActionAnimationModifier.FocusRing.Outline and conformance AccessibilityQuickActionAnimationModifier.FocusRing.Outline()
{
  result = lazy protocol witness table cache variable for type AccessibilityQuickActionAnimationModifier.FocusRing.Outline and conformance AccessibilityQuickActionAnimationModifier.FocusRing.Outline;
  if (!lazy protocol witness table cache variable for type AccessibilityQuickActionAnimationModifier.FocusRing.Outline and conformance AccessibilityQuickActionAnimationModifier.FocusRing.Outline)
  {
    result = swift_getWitnessTable("٘\tbTQ\b", &unk_1EFFFFC38, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityQuickActionAnimationModifier.FocusRing.Outline and conformance AccessibilityQuickActionAnimationModifier.FocusRing.Outline);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityQuickActionAnimationModifier.FocusRing.Outline and conformance AccessibilityQuickActionAnimationModifier.FocusRing.Outline;
  if (!lazy protocol witness table cache variable for type AccessibilityQuickActionAnimationModifier.FocusRing.Outline and conformance AccessibilityQuickActionAnimationModifier.FocusRing.Outline)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AccessibilityQuickActionAnimationModifier.FocusRing.Outline, &unk_1EFFFFC38, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityQuickActionAnimationModifier.FocusRing.Outline and conformance AccessibilityQuickActionAnimationModifier.FocusRing.Outline);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityQuickActionAnimationModifier.FocusRing.Outline and conformance AccessibilityQuickActionAnimationModifier.FocusRing.Outline;
  if (!lazy protocol witness table cache variable for type AccessibilityQuickActionAnimationModifier.FocusRing.Outline and conformance AccessibilityQuickActionAnimationModifier.FocusRing.Outline)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AccessibilityQuickActionAnimationModifier.FocusRing.Outline, &unk_1EFFFFC38, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityQuickActionAnimationModifier.FocusRing.Outline and conformance AccessibilityQuickActionAnimationModifier.FocusRing.Outline);
  }

  return result;
}

void type metadata accessor for ModifiedContent<ModifiedContent<_ViewModifier_Content<AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier>, _OpacityEffect>, _AnimationModifier<Bool>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<_ViewModifier_Content<AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier>, _OpacityEffect>, _AnimationModifier<Bool>>)
  {
    type metadata accessor for ModifiedContent<_ViewModifier_Content<AccessibilityQuickActionAnimationModifier.ActivateModifier>, _OpacityEffect>(255, &lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier>, _OpacityEffect>, &lazy cache variable for type metadata for _ViewModifier_Content<AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier>, lazy protocol witness table accessor for type AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier and conformance AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier, &unk_1EFFFFAE8);
    type metadata accessor for EnvironmentPropertyKey<AccessibilityQuickActionsKey>(255, &lazy cache variable for type metadata for _AnimationModifier<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E69E6388], MEMORY[0x1E697F540]);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<_ViewModifier_Content<AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier>, _OpacityEffect>, _AnimationModifier<Bool>>);
    }
  }
}

void type metadata accessor for ModifiedContent<_ViewModifier_Content<AccessibilityQuickActionAnimationModifier.ActivateModifier>, _OpacityEffect>(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(void), uint64_t a5)
{
  if (!*a2)
  {
    type metadata accessor for _ViewModifier_Content<AccessibilityQuickActionProxyModifier>(255, a3, a4, a5, MEMORY[0x1E697FDE8]);
    v6 = type metadata accessor for ModifiedContent();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ViewModifier_Content<AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier>, _OpacityEffect>, _AnimationModifier<Bool>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ViewModifier_Content<AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier>, _OpacityEffect>, _AnimationModifier<Bool>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ViewModifier_Content<AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier>, _OpacityEffect>, _AnimationModifier<Bool>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<ModifiedContent<_ViewModifier_Content<AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier>, _OpacityEffect>, _AnimationModifier<Bool>>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier>, _OpacityEffect> and conformance <> ModifiedContent<A, B>();
    v5[1] = lazy protocol witness table accessor for type _AnimationModifier<Bool> and conformance _AnimationModifier<A>();
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ViewModifier_Content<AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier>, _OpacityEffect>, _AnimationModifier<Bool>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier>, _OpacityEffect> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier>, _OpacityEffect> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier>, _OpacityEffect> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<_ViewModifier_Content<AccessibilityQuickActionAnimationModifier.ActivateModifier>, _OpacityEffect>(255, &lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier>, _OpacityEffect>, &lazy cache variable for type metadata for _ViewModifier_Content<AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier>, lazy protocol witness table accessor for type AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier and conformance AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier, &unk_1EFFFFAE8);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type _ViewModifier_Content<AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier> and conformance _ViewModifier_Content<A>();
    v5[1] = MEMORY[0x1E697E5C0];
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier>, _OpacityEffect> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ViewModifier_Content<AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier> and conformance _ViewModifier_Content<A>()
{
  result = lazy protocol witness table cache variable for type _ViewModifier_Content<AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier> and conformance _ViewModifier_Content<A>;
  if (!lazy protocol witness table cache variable for type _ViewModifier_Content<AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier> and conformance _ViewModifier_Content<A>)
  {
    type metadata accessor for _ViewModifier_Content<AccessibilityQuickActionProxyModifier>(255, &lazy cache variable for type metadata for _ViewModifier_Content<AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier>, lazy protocol witness table accessor for type AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier and conformance AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier, &unk_1EFFFFAE8, MEMORY[0x1E697FDE8]);
    result = swift_getWitnessTable(MEMORY[0x1E697FDF8], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _ViewModifier_Content<AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier> and conformance _ViewModifier_Content<A>);
  }

  return result;
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<VStack<_ConditionalContent<_ConditionalContent<EmptyView, AccessibilityQuickActionAnimationModifier.FocusRing>, _ConditionalContent<ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier>, ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ActivateModifier>>>>, _OpacityEffect>, _AnimationModifier<Bool>>, _AllowsHitTestingModifier>(uint64_t a1, unint64_t *a2, unint64_t *a3, void (*a4)(uint64_t))
{
  if (!*a2)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<AccessibilityQuickActionAnimationModifier.ActivateModifier>, _OpacityEffect>, _ScaleEffect>, _AnimationModifier<Bool>>(255, a3, a4);
    v5 = type metadata accessor for ModifiedContent();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<_ViewModifier_Content<AccessibilityQuickActionAnimationModifier.ActivateModifier>, _OpacityEffect>, _ScaleEffect>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<_ViewModifier_Content<AccessibilityQuickActionAnimationModifier.ActivateModifier>, _OpacityEffect>, _ScaleEffect>)
  {
    type metadata accessor for ModifiedContent<_ViewModifier_Content<AccessibilityQuickActionAnimationModifier.ActivateModifier>, _OpacityEffect>(255, &lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<AccessibilityQuickActionAnimationModifier.ActivateModifier>, _OpacityEffect>, &lazy cache variable for type metadata for _ViewModifier_Content<AccessibilityQuickActionAnimationModifier.ActivateModifier>, lazy protocol witness table accessor for type AccessibilityQuickActionAnimationModifier.ActivateModifier and conformance AccessibilityQuickActionAnimationModifier.ActivateModifier, &unk_1EFFFFA68);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<_ViewModifier_Content<AccessibilityQuickActionAnimationModifier.ActivateModifier>, _OpacityEffect>, _ScaleEffect>);
    }
  }
}

void type metadata accessor for _ViewModifier_Content<AccessibilityQuickActionProxyModifier>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<AccessibilityQuickActionAnimationModifier.ActivateModifier>, _OpacityEffect>, _ScaleEffect>, _AnimationModifier<Bool>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<AccessibilityQuickActionAnimationModifier.ActivateModifier>, _OpacityEffect>, _ScaleEffect>, _AnimationModifier<Bool>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<AccessibilityQuickActionAnimationModifier.ActivateModifier>, _OpacityEffect>, _ScaleEffect>, _AnimationModifier<Bool>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<AccessibilityQuickActionAnimationModifier.ActivateModifier>, _OpacityEffect>, _ScaleEffect>, _AnimationModifier<Bool>>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<AccessibilityQuickActionAnimationModifier.ActivateModifier>, _OpacityEffect>, _ScaleEffect>, _AnimationModifier<Bool>>, type metadata accessor for ModifiedContent<ModifiedContent<_ViewModifier_Content<AccessibilityQuickActionAnimationModifier.ActivateModifier>, _OpacityEffect>, _ScaleEffect>);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ViewModifier_Content<AccessibilityQuickActionProxyModifier>, _AppearanceActionModifier>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ViewModifier_Content<AccessibilityQuickActionAnimationModifier.ActivateModifier>, _OpacityEffect>, _ScaleEffect> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<ModifiedContent<_ViewModifier_Content<AccessibilityQuickActionAnimationModifier.ActivateModifier>, _OpacityEffect>, _ScaleEffect>, lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<AccessibilityQuickActionAnimationModifier.ActivateModifier>, _OpacityEffect> and conformance <> ModifiedContent<A, B>, MEMORY[0x1E697E070]);
    v5[1] = lazy protocol witness table accessor for type _AnimationModifier<Bool> and conformance _AnimationModifier<A>();
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<AccessibilityQuickActionAnimationModifier.ActivateModifier>, _OpacityEffect>, _ScaleEffect>, _AnimationModifier<Bool>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<AccessibilityQuickActionAnimationModifier.ActivateModifier>, _OpacityEffect> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<AccessibilityQuickActionAnimationModifier.ActivateModifier>, _OpacityEffect> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<AccessibilityQuickActionAnimationModifier.ActivateModifier>, _OpacityEffect> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<_ViewModifier_Content<AccessibilityQuickActionAnimationModifier.ActivateModifier>, _OpacityEffect>(255, &lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<AccessibilityQuickActionAnimationModifier.ActivateModifier>, _OpacityEffect>, &lazy cache variable for type metadata for _ViewModifier_Content<AccessibilityQuickActionAnimationModifier.ActivateModifier>, lazy protocol witness table accessor for type AccessibilityQuickActionAnimationModifier.ActivateModifier and conformance AccessibilityQuickActionAnimationModifier.ActivateModifier, &unk_1EFFFFA68);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type _ViewModifier_Content<AccessibilityQuickActionAnimationModifier.ActivateModifier> and conformance _ViewModifier_Content<A>();
    v5[1] = MEMORY[0x1E697E5C0];
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<AccessibilityQuickActionAnimationModifier.ActivateModifier>, _OpacityEffect> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ViewModifier_Content<AccessibilityQuickActionAnimationModifier.ActivateModifier> and conformance _ViewModifier_Content<A>()
{
  result = lazy protocol witness table cache variable for type _ViewModifier_Content<AccessibilityQuickActionAnimationModifier.ActivateModifier> and conformance _ViewModifier_Content<A>;
  if (!lazy protocol witness table cache variable for type _ViewModifier_Content<AccessibilityQuickActionAnimationModifier.ActivateModifier> and conformance _ViewModifier_Content<A>)
  {
    type metadata accessor for _ViewModifier_Content<AccessibilityQuickActionProxyModifier>(255, &lazy cache variable for type metadata for _ViewModifier_Content<AccessibilityQuickActionAnimationModifier.ActivateModifier>, lazy protocol witness table accessor for type AccessibilityQuickActionAnimationModifier.ActivateModifier and conformance AccessibilityQuickActionAnimationModifier.ActivateModifier, &unk_1EFFFFA68, MEMORY[0x1E697FDE8]);
    result = swift_getWitnessTable(MEMORY[0x1E697FDF8], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _ViewModifier_Content<AccessibilityQuickActionAnimationModifier.ActivateModifier> and conformance _ViewModifier_Content<A>);
  }

  return result;
}

void type metadata accessor for _ShapeView<AccessibilityQuickActionAnimationModifier.FocusRing.Outline, ForegroundStyle>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _ShapeView<AccessibilityQuickActionAnimationModifier.FocusRing.Outline, ForegroundStyle>)
  {
    lazy protocol witness table accessor for type AccessibilityQuickActionAnimationModifier.FocusRing.Outline and conformance AccessibilityQuickActionAnimationModifier.FocusRing.Outline();
    v1 = type metadata accessor for _ShapeView();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _ShapeView<AccessibilityQuickActionAnimationModifier.FocusRing.Outline, ForegroundStyle>);
    }
  }
}

unint64_t instantiation function for generic protocol witness table for AccessibilityQuickActionAnimationModifier.FocusRing.Outline(uint64_t a1)
{
  *(a1 + 8) = lazy protocol witness table accessor for type AccessibilityQuickActionAnimationModifier.FocusRing.Outline and conformance AccessibilityQuickActionAnimationModifier.FocusRing.Outline();
  result = lazy protocol witness table accessor for type AccessibilityQuickActionAnimationModifier.FocusRing.Outline and conformance AccessibilityQuickActionAnimationModifier.FocusRing.Outline();
  *(a1 + 16) = result;
  return result;
}

void *assignWithTake for AccessibilityNodeList(void *a1, void *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];
  return a1;
}

uint64_t UIView.constrainToView(_:exceptEdges:identifier:)(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  [v4 setTranslatesAutoresizingMaskIntoConstraints_];
  v9 = MEMORY[0x1E69E7CC0];
  v30 = MEMORY[0x1E69E7CC0];
  if ((Edge.Set.contains(_:)() & 1) == 0)
  {
    v10 = [v5 topAnchor];
    v11 = [a1 topAnchor];
    v12 = [v10 constraintEqualToAnchor_];

    [v12 setActive_];
    if (a4)
    {
      MEMORY[0x18D00C9B0](a3, a4);
      v13 = MEMORY[0x18D00C850](762343284, 0xE400000000000000);
    }

    else
    {
      v13 = 0;
    }

    [v12 setIdentifier_];

    v14 = v12;
    MEMORY[0x18D00CC30]();
    if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v9 = v30;
  }

  if ((Edge.Set.contains(_:)() & 1) == 0)
  {
    v15 = [v5 leadingAnchor];
    v16 = [a1 leadingAnchor];
    v17 = [v15 constraintEqualToAnchor_];

    [v17 setActive_];
    if (a4)
    {
      MEMORY[0x18D00C9B0](a3, a4);
      v18 = MEMORY[0x18D00C850](0x2D676E696461656CLL, 0xE800000000000000);
    }

    else
    {
      v18 = 0;
    }

    [v17 setIdentifier_];

    v19 = v17;
    MEMORY[0x18D00CC30]();
    if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v9 = v30;
  }

  if ((Edge.Set.contains(_:)() & 1) == 0)
  {
    v20 = [v5 bottomAnchor];
    v21 = [a1 bottomAnchor];
    v22 = [v20 constraintEqualToAnchor_];

    [v22 setActive_];
    if (a4)
    {
      MEMORY[0x18D00C9B0](a3, a4);
      v23 = MEMORY[0x18D00C850](0x2D6D6F74746F62, 0xE700000000000000);
    }

    else
    {
      v23 = 0;
    }

    [v22 setIdentifier_];

    v24 = v22;
    MEMORY[0x18D00CC30]();
    if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v9 = v30;
  }

  if ((Edge.Set.contains(_:)() & 1) == 0)
  {
    v25 = [v5 trailingAnchor];
    v26 = [a1 trailingAnchor];
    v27 = [v25 constraintEqualToAnchor_];

    [v27 setActive_];
    if (a4)
    {
      MEMORY[0x18D00C9B0](a3, a4);
      a4 = MEMORY[0x18D00C850](0x676E696C69617274, 0xE90000000000002DLL);
    }

    [v27 setIdentifier_];

    v28 = v27;
    MEMORY[0x18D00CC30]();
    if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    return v30;
  }

  return v9;
}

Swift::Void __swiftcall UIView.setHoverEffectEnabled(_:)(Swift::Bool a1)
{
  v3 = [v1 hoverStyle];
  if (v3)
  {
    v4 = v3;
    [v3 copy];

    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIHoverStyle, 0x1E69DCAB0);
    if (swift_dynamicCast())
    {
      [v5 setEnabled_];
      [v1 setHoverStyle_];
    }
  }
}

void *specialized UIView.firstDescendantWhere(_:)(void *a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for PortalGroupMarkerView();
  v6 = swift_dynamicCastClass();
  if (v6 && *(v6 + OBJC_IVAR____TtC7SwiftUIP33_5DAB09131F46EF4FA69B417F7F09D60321PortalGroupMarkerView_id) == a2 && (a3 & ~*(v6 + OBJC_IVAR____TtC7SwiftUIP33_5DAB09131F46EF4FA69B417F7F09D60321PortalGroupMarkerView_kind)) == 0)
  {
    v7 = a1;
  }

  else
  {
    v8 = [a1 subviews];
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIView, 0x1E69DD250);
    v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v9 >> 62)
    {
LABEL_20:
      v10 = __CocoaSet.count.getter();
    }

    else
    {
      v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    for (i = 0; v10 != i; ++i)
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x18D00E9C0](i, v9);
      }

      else
      {
        if (i >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_19;
        }

        v12 = *(v9 + 8 * i + 32);
      }

      v13 = v12;
      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_19:
        __break(1u);
        goto LABEL_20;
      }

      a1 = specialized UIView.firstDescendantWhere(_:)(v12, a2, a3);

      if (a1)
      {

        return a1;
      }
    }

    return 0;
  }

  return a1;
}