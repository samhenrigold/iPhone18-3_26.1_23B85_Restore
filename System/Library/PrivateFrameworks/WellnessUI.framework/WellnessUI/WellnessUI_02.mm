uint64_t closure #1 in HealthDataLogSnippet.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v28 = a2;
  v29 = a3;
  v30 = a4;
  v5 = type metadata accessor for StatusIndicatorView();
  v24 = v5;
  v26 = *(v5 - 8);
  v6 = v26;
  MEMORY[0x28223BE20](v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AJtFQOyAcDE10separators_10isOverrideQr0D3Kit14SeparatorStyleO_SbtFQOyAD018FactItemHeroNumberC0V_Qo__Qo_Md, &_s7SwiftUI4ViewP07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AJtFQOyAcDE10separators_10isOverrideQr0D3Kit14SeparatorStyleO_SbtFQOyAD018FactItemHeroNumberC0V_Qo__Qo_MR);
  v25 = v9;
  v27 = *(v9 - 8);
  v10 = v27;
  MEMORY[0x28223BE20](v9);
  v12 = &v23 - v11;
  v13 = type metadata accessor for SnippetHeaderView(0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of HealthDataLogModel(a1, v15, type metadata accessor for SnippetHeaderView);
  v16 = *(v10 + 16);
  v16(v12, v28, v9);
  v17 = *(v6 + 16);
  v17(v8, v29, v5);
  v18 = v30;
  outlined init with copy of HealthDataLogModel(v15, v30, type metadata accessor for SnippetHeaderView);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WellnessUI17SnippetHeaderViewV_05SwiftB00E0P0cB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AMtFQOyAfGE10separators_10isOverrideQr0C3Kit14SeparatorStyleO_SbtFQOyAG018FactItemHeroNumberE0V_Qo__Qo_AG015StatusIndicatorE0VtMd, " W");
  v20 = v25;
  v16((v18 + *(v19 + 48)), v12, v25);
  v21 = v24;
  v17((v18 + *(v19 + 64)), v8, v24);
  (*(v26 + 8))(v8, v21);
  (*(v27 + 8))(v12, v20);
  return outlined destroy of SnippetHeaderModel(v15, type metadata accessor for SnippetHeaderView);
}

void closure #2 in HealthDataLogSnippet.body.getter(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + *(type metadata accessor for HealthDataLogSnippet(0) + 20));
  if (v2)
  {
    v3 = v2;
    dispatch thunk of Context.perform(appPunchout:)();
  }

  else
  {
    type metadata accessor for Context();
    lazy protocol witness table accessor for type Context and conformance Context(&lazy protocol witness table cache variable for type Context and conformance Context, MEMORY[0x277D63F68], MEMORY[0x277D63F58]);
    EnvironmentObject.error()();
    __break(1u);
  }
}

uint64_t partial apply for closure #1 in HealthDataLogSnippet.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SnippetHeaderView(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AJtFQOyAcDE10separators_10isOverrideQr0D3Kit14SeparatorStyleO_SbtFQOyAD018FactItemHeroNumberC0V_Qo__Qo_Md, &_s7SwiftUI4ViewP07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AJtFQOyAcDE10separators_10isOverrideQr0D3Kit14SeparatorStyleO_SbtFQOyAD018FactItemHeroNumberC0V_Qo__Qo_MR) - 8);
  v7 = (v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(type metadata accessor for StatusIndicatorView() - 8);
  v10 = v1 + ((v7 + v8 + *(v9 + 80)) & ~*(v9 + 80));

  return closure #1 in HealthDataLogSnippet.body.getter(v1 + v4, v1 + v7, v10, a1);
}

uint64_t outlined init with copy of HealthDataLogModel(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with take of HealthDataLogModel(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void partial apply for closure #2 in HealthDataLogSnippet.body.getter()
{
  v1 = *(type metadata accessor for HealthDataLogSnippet(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for AppPunchout() - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  closure #2 in HealthDataLogSnippet.body.getter(v0 + v2, v5);
}

void type metadata completion function for HealthDataLogSnippet(uint64_t a1)
{
  type metadata accessor for HealthDataLogModel(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for EnvironmentObject<Context>(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Environment<ColorScheme>(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t GenericQuerySnippet.init(model:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = (a2 + *(type metadata accessor for GenericQuerySnippet(0) + 20));
  type metadata accessor for Context();
  _s9SnippetUI7ContextCAC7Combine16ObservableObjectAAWlTm_2(&lazy protocol witness table cache variable for type Context and conformance Context, MEMORY[0x277D63F68], MEMORY[0x277D63F58]);
  *v4 = EnvironmentObject.init()();
  v4[1] = v5;
  return outlined init with take of GenericQueryModel(a1, a2, type metadata accessor for GenericQueryModel);
}

uint64_t type metadata accessor for GenericQuerySnippet(uint64_t a1)
{
  result = type metadata singleton initialization cache for GenericQuerySnippet;
  if (!type metadata singleton initialization cache for GenericQuerySnippet)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t GenericQuerySnippet.body.getter@<X0>(uint64_t *a1@<X8>)
{
  v157 = a1;
  Snippet = type metadata accessor for GenericQuerySnippet(0);
  v142 = *(Snippet - 8);
  MEMORY[0x28223BE20](Snippet - 8);
  v143 = v3;
  v144 = &v119 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SnippetUI14ComponentStackVy05SwiftB09TupleViewVy08WellnessB00a6HeaderG0V_AD0G0PAAE16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AQtFQOyAD03AnyG0V_Qo_tGGMd, &_s9SnippetUI14ComponentStackVy05SwiftB09TupleViewVy08WellnessB00a6HeaderG0V_AD0G0PAAE16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AQtFQOyAD03AnyG0V_Qo_tGGMR);
  v148 = *(v4 - 8);
  v149 = v4;
  MEMORY[0x28223BE20](v4);
  v145 = &v119 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP07SnippetB0E15componentTapped12isNavigation7performQrSb_yyctFQOyAD14ComponentStackVyAA05TupleC0Vy08WellnessB00d6HeaderC0V_AcDE0E7Spacing3top6bottomQr12CoreGraphics7CGFloatV_ATtFQOyAA03AnyC0V_Qo_tGG_Qo_Md, &_s7SwiftUI4ViewP07SnippetB0E15componentTapped12isNavigation7performQrSb_yyctFQOyAD14ComponentStackVyAA05TupleC0Vy08WellnessB00d6HeaderC0V_AcDE0E7Spacing3top6bottomQr12CoreGraphics7CGFloatV_ATtFQOyAA03AnyC0V_Qo_tGG_Qo_MR);
  v150 = *(v6 - 8);
  v151 = v6;
  MEMORY[0x28223BE20](v6);
  v146 = &v119 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v147 = &v119 - v9;
  v136 = type metadata accessor for SingleDataPointView(0);
  MEMORY[0x28223BE20](v136);
  v135 = (&v119 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v134 = type metadata accessor for MultipleDataPointView(0);
  MEMORY[0x28223BE20](v134);
  v132 = (&v119 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v12);
  v133 = &v119 - v13;
  v152 = type metadata accessor for SnippetHeaderView(0);
  v137 = *(v152 - 8);
  MEMORY[0x28223BE20](v152);
  v139 = &v119 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = v14;
  MEMORY[0x28223BE20](v15);
  v156 = &v119 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit11AppPunchoutVSgMd, &_s10SnippetKit11AppPunchoutVSgMR);
  MEMORY[0x28223BE20](v17 - 8);
  v154 = &v119 - v18;
  v19 = type metadata accessor for AppPunchout();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v140 = v21;
  v141 = &v119 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v155 = &v119 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  MEMORY[0x28223BE20](v24 - 8);
  v26 = &v119 - v25;
  v27 = type metadata accessor for SpeakableString();
  v28 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v30 = &v119 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  Model = type metadata accessor for GenericQueryModel(0);
  outlined init with copy of AppPunchout?(v1 + *(Model + 40), v26, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  if ((*(v28 + 48))(v26, 1, v27) != 1)
  {
    (*(v28 + 32))(v30, v26, v27);
    v34 = v1;
    v35 = v154;
    outlined init with copy of AppPunchout?(v1, v154, &_s10SnippetKit11AppPunchoutVSgMd, &_s10SnippetKit11AppPunchoutVSgMR);
    if ((*(v20 + 48))(v35, 1, v19) == 1)
    {
      (*(v28 + 8))(v30, v27);
      v31 = &_s10SnippetKit11AppPunchoutVSgMd;
      v32 = &_s10SnippetKit11AppPunchoutVSgMR;
      v33 = v35;
      goto LABEL_5;
    }

    v37 = v19;
    v38 = v30;
    v130 = v27;
    v131 = v20;
    v40 = v20 + 32;
    v39 = *(v20 + 32);
    v154 = v37;
    v127 = v39;
    (v39)(v155, v35);
    v41 = Model;
    v42 = v34 + *(Model + 72);
    v43 = v34;
    v44 = v156;
    outlined init with copy of AppPunchout?(v42, v156, &_s10WellnessUI18SnippetHeaderModelVSgMd, &_s10WellnessUI18SnippetHeaderModelVSgMR);
    v45 = v152;
    v46 = *(v152 + 20);
    *(v44 + v46) = swift_getKeyPath();
    v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMR);
    swift_storeEnumTagMultiPayload();
    v47 = *(v45 + 24);
    *(v44 + v47) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA19ColorSchemeContrastO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA19ColorSchemeContrastO_GMR);
    v48 = v43;
    swift_storeEnumTagMultiPayload();
    v49 = v43 + v41[5];
    v50 = *(v49 + 8);
    v129 = v28;
    v128 = v40;
    v126 = v30;
    if ((v50 & 1) == 0)
    {
      v51 = *v49;
      if (*v49 > 0.0)
      {
        v52 = (v43 + v41[13]);
        v53 = *v52;
        v54 = v52[1];
        if (v54)
        {
          v55 = v41[12];
          v56 = *(v43 + v55 + 8);
          if (v56)
          {
            v152 = *v52;
            v57 = v41[11];
            v58 = *(v48 + v57 + 8);
            v59 = v41[15];
            v60 = *(v48 + v59 + 8);
LABEL_14:
            v120 = v58;
            v123 = *(v48 + v57);
            v124 = *(v48 + v55);
            v135 = *(v48 + v59);
            v61 = (v48 + v41[16]);
            v62 = v61[1];
            v136 = *v61;

            v63 = v48;
            v122 = SpeakableString.print.getter();
            v121 = v64;
            v65 = (v48 + v41[17]);
            v66 = v65[1];
            Model = *v65;
            type metadata accessor for Context();
            _s9SnippetUI7ContextCAC7Combine16ObservableObjectAAWlTm_2(&lazy protocol witness table cache variable for type Context and conformance Context, MEMORY[0x277D63F68], MEMORY[0x277D63F58]);

            v67 = EnvironmentObject.init()();
            v68 = v132;
            *v132 = v67;
            *(v68 + 8) = v69;
            v70 = v56;
            v71 = v134;
            v72 = *(v134 + 20);
            *(v68 + v72) = swift_getKeyPath();
            swift_storeEnumTagMultiPayload();
            v73 = v68 + v71[6];
            *v73 = v51;
            *(v73 + 8) = 0;
            v74 = (v68 + v71[7]);
            v75 = v120;
            *v74 = v123;
            v74[1] = v75;
            v76 = (v68 + v71[8]);
            *v76 = v152;
            v76[1] = v54;
            v77 = (v68 + v71[9]);
            *v77 = v124;
            v77[1] = v70;
            v78 = (v68 + v71[10]);
            *v78 = v135;
            v78[1] = v60;
            v79 = (v68 + v71[11]);
            *v79 = v136;
            v79[1] = v62;
            v80 = (v68 + v71[12]);
            v81 = v121;
            *v80 = v122;
            v80[1] = v81;
            *(v68 + v71[13]) = 1;
            v82 = 0x65676172657641;
            if (v66)
            {
              v82 = Model;
            }

            v83 = 0xE700000000000000;
            if (v66)
            {
              v83 = v66;
            }

            v84 = (v68 + v71[14]);
            *v84 = v82;
            v84[1] = v83;
            outlined init with take of GenericQueryModel(v68, v133, type metadata accessor for MultipleDataPointView);
            _s9SnippetUI7ContextCAC7Combine16ObservableObjectAAWlTm_2(&lazy protocol witness table cache variable for type MultipleDataPointView and conformance MultipleDataPointView, type metadata accessor for MultipleDataPointView, &protocol conformance descriptor for MultipleDataPointView);
LABEL_25:
            v97 = AnyView.init<A>(_:)();
            v98 = v139;
            outlined init with copy of GenericQueryModel(v156, v139, type metadata accessor for SnippetHeaderView);
            v99 = (*(v137 + 80) + 16) & ~*(v137 + 80);
            v100 = (v138 + v99 + 7) & 0xFFFFFFFFFFFFFFF8;
            v101 = swift_allocObject();
            outlined init with take of GenericQueryModel(v98, v101 + v99, type metadata accessor for SnippetHeaderView);
            *(v101 + v100) = v97;

            __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVy08WellnessB0013SnippetHeaderD0V_AA0D0P0fB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AOtFQOyAA03AnyD0V_Qo_tGMd, &_s7SwiftUI9TupleViewVy08WellnessB0013SnippetHeaderD0V_AA0D0P0fB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AOtFQOyAA03AnyD0V_Qo_tGMR);
            lazy protocol witness table accessor for type TupleView<(SashStandardView, <<opaque return type of View.componentTapped(isNavigation:perform:)>>.0, StatusIndicatorView)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type TupleView<(SnippetHeaderView, <<opaque return type of View.componentSpacing(top:bottom:)>>.0)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVy08WellnessB0013SnippetHeaderD0V_AA0D0P0fB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AOtFQOyAA03AnyD0V_Qo_tGMd, &_s7SwiftUI9TupleViewVy08WellnessB0013SnippetHeaderD0V_AA0D0P0fB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AOtFQOyAA03AnyD0V_Qo_tGMR, MEMORY[0x277CE14C8]);
            v102 = v145;
            ComponentStack.init(content:)();
            v103 = v144;
            outlined init with copy of GenericQueryModel(v63, v144, type metadata accessor for GenericQuerySnippet);
            v104 = v131;
            v105 = v141;
            v107 = v154;
            v106 = v155;
            (*(v131 + 16))(v141, v155, v154);
            v108 = (*(v142 + 80) + 16) & ~*(v142 + 80);
            v109 = (v143 + *(v104 + 80) + v108) & ~*(v104 + 80);
            v110 = swift_allocObject();
            outlined init with take of GenericQueryModel(v103, v110 + v108, type metadata accessor for GenericQuerySnippet);
            v127(v110 + v109, v105, v107);
            v111 = lazy protocol witness table accessor for type TupleView<(SashStandardView, <<opaque return type of View.componentTapped(isNavigation:perform:)>>.0, StatusIndicatorView)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type ComponentStack<TupleView<(SnippetHeaderView, <<opaque return type of View.componentSpacing(top:bottom:)>>.0)>> and conformance ComponentStack<A>, &_s9SnippetUI14ComponentStackVy05SwiftB09TupleViewVy08WellnessB00a6HeaderG0V_AD0G0PAAE16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AQtFQOyAD03AnyG0V_Qo_tGGMd, &_s9SnippetUI14ComponentStackVy05SwiftB09TupleViewVy08WellnessB00a6HeaderG0V_AD0G0PAAE16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AQtFQOyAD03AnyG0V_Qo_tGGMR, MEMORY[0x277D63B98]);
            v112 = v147;
            v113 = v149;
            View.componentTapped(isNavigation:perform:)();

            (*(v148 + 8))(v102, v113);
            v115 = v150;
            v114 = v151;
            (*(v150 + 16))(v146, v112, v151);
            v158 = v113;
            v159 = v111;
            swift_getOpaqueTypeConformance2();
            v116 = AnyView.init<A>(_:)();

            (*(v115 + 8))(v112, v114);
            outlined destroy of SnippetHeaderView(v156);
            (*(v104 + 8))(v106, v107);
            (*(v129 + 8))(v126, v130);
            result = v116;
            goto LABEL_26;
          }
        }

        v59 = v41[15];
        v60 = *(v48 + v59 + 8);
        if (v60)
        {
          v57 = v41[11];
          v58 = *(v48 + v57 + 8);
          if (v58)
          {
            v152 = v53;
            v55 = v41[12];
            v56 = *(v48 + v55 + 8);
            goto LABEL_14;
          }
        }
      }
    }

    v85 = (v48 + v41[14]);
    if (v85[1])
    {
      v86 = *v85;
      v87 = v85[1];
    }

    else
    {
      v88 = (v48 + v41[15]);
      v87 = v88[1];
      if (!v87)
      {
        v88 = (v48 + v41[11]);
        v87 = v88[1];
        if (!v87)
        {
          v117 = v28;
          v118 = AnyView.init<A>(_:)();
          outlined destroy of SnippetHeaderView(v156);
          (*(v131 + 8))(v155, v154);
          (*(v117 + 8))(v38, v130);
          result = v118;
          goto LABEL_26;
        }
      }

      v86 = *v88;
      swift_bridgeObjectRetain_n();
    }

    swift_bridgeObjectRetain_n();

    v89 = (v48 + v41[16]);
    v91 = *v89;
    v90 = v89[1];

    v63 = v48;
    v92 = SpeakableString.print.getter();
    v94 = v93;
    v95 = v135;
    outlined init with copy of AppPunchout?(v63, v135 + *(v136 + 32), &_s10SnippetKit11AppPunchoutVSgMd, &_s10SnippetKit11AppPunchoutVSgMR);
    type metadata accessor for Context();
    _s9SnippetUI7ContextCAC7Combine16ObservableObjectAAWlTm_2(&lazy protocol witness table cache variable for type Context and conformance Context, MEMORY[0x277D63F68], MEMORY[0x277D63F58]);
    *v95 = EnvironmentObject.init()();
    v95[1] = v96;
    v95[2] = v86;
    v95[3] = v87;
    v95[4] = v91;
    v95[5] = v90;
    v95[6] = v92;
    v95[7] = v94;
    _s9SnippetUI7ContextCAC7Combine16ObservableObjectAAWlTm_2(&lazy protocol witness table cache variable for type SingleDataPointView and conformance SingleDataPointView, type metadata accessor for SingleDataPointView, &protocol conformance descriptor for SingleDataPointView);
    goto LABEL_25;
  }

  v31 = &_s16SiriDialogEngine15SpeakableStringVSgMd;
  v32 = &_s16SiriDialogEngine15SpeakableStringVSgMR;
  v33 = v26;
LABEL_5:
  outlined destroy of AppPunchout?(v33, v31, v32);
  result = AnyView.init<A>(_:)();
LABEL_26:
  *v157 = result;
  return result;
}

uint64_t specialized closure #1 in GenericQuerySnippet.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for SnippetHeaderView(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AJtFQOyAA03AnyC0V_Qo_Md, "4C");
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = v20 - v14;
  v20[1] = a2;
  View.componentSpacing(top:bottom:)();
  outlined init with copy of GenericQueryModel(a1, v8, type metadata accessor for SnippetHeaderView);
  v16 = *(v10 + 16);
  v16(v12, v15, v9);
  outlined init with copy of GenericQueryModel(v8, a3, type metadata accessor for SnippetHeaderView);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WellnessUI17SnippetHeaderViewV_05SwiftB00E0P0cB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AMtFQOyAD03AnyE0V_Qo_tMd, &_s10WellnessUI17SnippetHeaderViewV_05SwiftB00E0P0cB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AMtFQOyAD03AnyE0V_Qo_tMR);
  v16((a3 + *(v17 + 48)), v12, v9);
  v18 = *(v10 + 8);
  v18(v15, v9);
  v18(v12, v9);
  return outlined destroy of SnippetHeaderView(v8);
}

void closure #2 in GenericQuerySnippet.body.getter(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + *(type metadata accessor for GenericQuerySnippet(0) + 20));
  if (v2)
  {
    v3 = v2;
    dispatch thunk of Context.perform(appPunchout:)();
  }

  else
  {
    type metadata accessor for Context();
    _s9SnippetUI7ContextCAC7Combine16ObservableObjectAAWlTm_2(&lazy protocol witness table cache variable for type Context and conformance Context, MEMORY[0x277D63F68], MEMORY[0x277D63F58]);
    EnvironmentObject.error()();
    __break(1u);
  }
}

uint64_t partial apply for specialized closure #1 in GenericQuerySnippet.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SnippetHeaderView(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return specialized closure #1 in GenericQuerySnippet.body.getter(v1 + v4, v5, a1);
}

uint64_t outlined init with copy of GenericQueryModel(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void partial apply for closure #2 in GenericQuerySnippet.body.getter()
{
  v1 = *(type metadata accessor for GenericQuerySnippet(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for AppPunchout() - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  closure #2 in GenericQuerySnippet.body.getter(v0 + v2, v5);
}

uint64_t outlined init with take of GenericQueryModel(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t _s9SnippetUI7ContextCAC7Combine16ObservableObjectAAWlTm_2(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void type metadata completion function for GenericQuerySnippet(uint64_t a1)
{
  type metadata accessor for GenericQueryModel(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for EnvironmentObject<Context>(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

double GenericBinaryButtonSnippet.model.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  v7 = *(v1 + 48);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
  *(a1 + 40) = v6;
  *(a1 + 48) = v7;

  return result;
}

__n128 GenericBinaryButtonSnippet.init(model:)@<Q0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v8 = a1[1];
  v9 = *a1;
  v3 = *(a1 + 4);
  v4 = *(a1 + 5);
  v5 = *(a1 + 48);
  type metadata accessor for Context();
  _s9SnippetUI7ContextCAC7Combine16ObservableObjectAAWlTm_3(&lazy protocol witness table cache variable for type Context and conformance Context, MEMORY[0x277D63F68], MEMORY[0x277D63F58]);
  *(a2 + 56) = EnvironmentObject.init()();
  *(a2 + 64) = v6;
  result = v8;
  *a2 = v9;
  *(a2 + 16) = v8;
  *(a2 + 32) = v3;
  *(a2 + 40) = v4;
  *(a2 + 48) = v5;
  return result;
}

uint64_t GenericBinaryButtonSnippet.body.getter()
{
  v1 = *(v0 + 48);
  v8[2] = *(v0 + 32);
  v8[3] = v1;
  v9 = *(v0 + 64);
  v2 = *(v0 + 16);
  v8[0] = *v0;
  v8[1] = v2;
  v3 = swift_allocObject();
  v4 = *(v0 + 48);
  *(v3 + 48) = *(v0 + 32);
  *(v3 + 64) = v4;
  *(v3 + 80) = *(v0 + 64);
  v5 = *(v0 + 16);
  *(v3 + 16) = *v0;
  *(v3 + 32) = v5;
  outlined init with copy of GenericBinaryButtonSnippet(v8, v7);
  type metadata accessor for BinaryButtonView();
  _s9SnippetUI7ContextCAC7Combine16ObservableObjectAAWlTm_3(&lazy protocol witness table cache variable for type BinaryButtonView and conformance BinaryButtonView, MEMORY[0x277D63C40], MEMORY[0x277D63C20]);
  return ComponentStack.init(content:)();
}

uint64_t closure #1 in GenericBinaryButtonSnippet.body.getter(__int128 *a1)
{
  v2 = type metadata accessor for ButtonItemButtonStyle.Role();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA4TextVGMd, &_s7SwiftUI6ButtonVyAA4TextVGMR);
  v33 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v30 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP07SnippetB0E10buttonRoleyQrAD010ButtonItemG5StyleV0F0OFQOyAA0G0VyAA4TextVG_Qo_Md, &_s7SwiftUI4ViewP07SnippetB0E10buttonRoleyQrAD010ButtonItemG5StyleV0F0OFQOyAA0G0VyAA4TextVG_Qo_MR);
  MEMORY[0x28223BE20](v9);
  v13 = &v30 - v12;
  v14 = a1[1];
  v38 = *a1;
  v39 = v14;
  v40 = a1[2];
  if (a1[3])
  {
    v42[0] = a1[2];
    v34 = a1[2];
    v32 = v10;
    v31 = v11;
    v15 = swift_allocObject();
    v16 = a1[3];
    *(v15 + 48) = a1[2];
    *(v15 + 64) = v16;
    *(v15 + 80) = *(a1 + 8);
    v17 = a1[1];
    *(v15 + 16) = *a1;
    *(v15 + 32) = v17;
    outlined init with copy of String(v42, v37);
    outlined init with copy of GenericBinaryButtonSnippet(a1, v37);
    lazy protocol witness table accessor for type String and conformance String();
    Button<>.init<A>(_:action:)();
    (*(v3 + 104))(v5, *MEMORY[0x277D63A98], v2);
    v18 = lazy protocol witness table accessor for type TupleView<(SashStandardView, <<opaque return type of View.componentTapped(isNavigation:perform:)>>.0, StatusIndicatorView)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type Button<Text> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA4TextVGMd, &_s7SwiftUI6ButtonVyAA4TextVGMR, MEMORY[0x277CDF030]);
    View.buttonRole(_:)();
    (*(v3 + 8))(v5, v2);
    v19 = *(v33 + 8);
    v19(v8, v6);
    v37[0] = v6;
    v37[1] = v18;
    swift_getOpaqueTypeConformance2();
    v20 = v32;
    v21 = View.eraseToAnyView()();
    (*(v31 + 8))(v13, v20);
  }

  else
  {
    v42[0] = a1[2];
    v34 = a1[2];
    v22 = swift_allocObject();
    v23 = a1[3];
    *(v22 + 48) = a1[2];
    *(v22 + 64) = v23;
    *(v22 + 80) = *(a1 + 8);
    v24 = a1[1];
    *(v22 + 16) = *a1;
    *(v22 + 32) = v24;
    outlined init with copy of GenericBinaryButtonSnippet(a1, v37);
    outlined init with copy of String(v42, v37);
    lazy protocol witness table accessor for type String and conformance String();
    Button<>.init<A>(_:action:)();
    lazy protocol witness table accessor for type TupleView<(SashStandardView, <<opaque return type of View.componentTapped(isNavigation:perform:)>>.0, StatusIndicatorView)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type Button<Text> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA4TextVGMd, &_s7SwiftUI6ButtonVyAA4TextVGMR, MEMORY[0x277CDF030]);
    v21 = View.eraseToAnyView()();
    v19 = *(v33 + 8);
    v19(v8, v6);
  }

  v41 = v39;
  v34 = v39;
  v25 = swift_allocObject();
  v26 = a1[3];
  *(v25 + 48) = a1[2];
  *(v25 + 64) = v26;
  *(v25 + 80) = *(a1 + 8);
  v27 = a1[1];
  *(v25 + 16) = *a1;
  *(v25 + 32) = v27;
  outlined init with copy of GenericBinaryButtonSnippet(a1, v37);
  outlined init with copy of String(&v41, v37);
  lazy protocol witness table accessor for type String and conformance String();
  Button<>.init<A>(_:action:)();
  v37[3] = MEMORY[0x277CE11D0];
  v37[4] = MEMORY[0x277D63A58];
  v37[0] = v21;
  v35 = v6;
  v36 = lazy protocol witness table accessor for type TupleView<(SashStandardView, <<opaque return type of View.componentTapped(isNavigation:perform:)>>.0, StatusIndicatorView)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type Button<Text> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA4TextVGMd, &_s7SwiftUI6ButtonVyAA4TextVGMR, MEMORY[0x277D63A48]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v34);
  (*(v33 + 16))(boxed_opaque_existential_1, v8, v6);
  BinaryButtonView.init(primaryButton:secondaryButton:)();
  return (v19)(v8, v6);
}

uint64_t _s9SnippetUI7ContextCAC7Combine16ObservableObjectAAWlTm_3(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void closure #1 in closure #1 in GenericBinaryButtonSnippet.body.getter(uint64_t *a1, char a2)
{
  v2 = a1[7];
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys11AnyHashableV_yptGMd, &_ss23_ContiguousArrayStorageCys11AnyHashableV_yptGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_273EA69E0;
    v5 = v2;
    AnyHashable.init<A>(_:)();
    *(inited + 96) = MEMORY[0x277D839B0];
    *(inited + 72) = a2;
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(inited);
    swift_setDeallocating();
    outlined destroy of (AnyHashable, Any)(inited + 32);
    dispatch thunk of Context.perform(directInvocation:payload:)();
  }

  else
  {
    type metadata accessor for Context();
    _s9SnippetUI7ContextCAC7Combine16ObservableObjectAAWlTm_3(&lazy protocol witness table cache variable for type Context and conformance Context, MEMORY[0x277D63F68], MEMORY[0x277D63F58]);
    EnvironmentObject.error()();
    __break(1u);
  }
}

uint64_t protocol witness for View.body.getter in conformance GenericBinaryButtonSnippet()
{
  v1 = *(v0 + 48);
  v8[2] = *(v0 + 32);
  v8[3] = v1;
  v9 = *(v0 + 64);
  v2 = *(v0 + 16);
  v8[0] = *v0;
  v8[1] = v2;
  v3 = swift_allocObject();
  v4 = *(v0 + 48);
  *(v3 + 48) = *(v0 + 32);
  *(v3 + 64) = v4;
  *(v3 + 80) = *(v0 + 64);
  v5 = *(v0 + 16);
  *(v3 + 16) = *v0;
  *(v3 + 32) = v5;
  outlined init with copy of GenericBinaryButtonSnippet(v8, v7);
  type metadata accessor for BinaryButtonView();
  _s9SnippetUI7ContextCAC7Combine16ObservableObjectAAWlTm_3(&lazy protocol witness table cache variable for type BinaryButtonView and conformance BinaryButtonView, MEMORY[0x277D63C40], MEMORY[0x277D63C20]);
  return ComponentStack.init(content:)();
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for GenericBinaryButtonSnippet(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t storeEnumTagSinglePayload for GenericBinaryButtonSnippet(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t objectdestroyTm_1()
{

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v4);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      outlined init with copy of AnyHashable(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x2743E0B00](v9, a1);
      outlined destroy of AnyHashable(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys11AnyHashableVypGMd, &_ss18_DictionaryStorageCys11AnyHashableVypGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of (AnyHashable, Any)(v4, v13);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = outlined init with take of Any(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t outlined destroy of (AnyHashable, Any)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11AnyHashableV_yptMd, &_ss11AnyHashableV_yptMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with copy of (AnyHashable, Any)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11AnyHashableV_yptMd, &_ss11AnyHashableV_yptMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_OWORD *outlined init with take of Any(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t BloodPressureLogModel.dateLabel.getter()
{
  v1 = *(v0 + *(type metadata accessor for BloodPressureLogModel(0) + 20));

  return v1;
}

uint64_t type metadata accessor for BloodPressureLogModel(uint64_t a1)
{
  result = type metadata singleton initialization cache for BloodPressureLogModel;
  if (!type metadata singleton initialization cache for BloodPressureLogModel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void BloodPressureLogModel.dateLabel.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for BloodPressureLogModel(0) + 20));

  *v5 = a1;
  v5[1] = a2;
}

uint64_t BloodPressureLogModel.dataLabel.getter()
{
  v1 = *(v0 + *(type metadata accessor for BloodPressureLogModel(0) + 24));

  return v1;
}

void BloodPressureLogModel.dataLabel.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for BloodPressureLogModel(0) + 24));

  *v5 = a1;
  v5[1] = a2;
}

uint64_t BloodPressureLogModel.loggedLabel.getter()
{
  v1 = *(v0 + *(type metadata accessor for BloodPressureLogModel(0) + 28));

  return v1;
}

void BloodPressureLogModel.loggedLabel.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for BloodPressureLogModel(0) + 28));

  *v5 = a1;
  v5[1] = a2;
}

uint64_t BloodPressureLogModel.timeLabel.getter()
{
  v1 = *(v0 + *(type metadata accessor for BloodPressureLogModel(0) + 36));

  return v1;
}

void BloodPressureLogModel.timeLabel.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for BloodPressureLogModel(0) + 36));

  *v5 = a1;
  v5[1] = a2;
}

uint64_t BloodPressureLogModel.unitLabel.getter()
{
  v1 = *(v0 + *(type metadata accessor for BloodPressureLogModel(0) + 40));

  return v1;
}

void BloodPressureLogModel.unitLabel.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for BloodPressureLogModel(0) + 40));

  *v5 = a1;
  v5[1] = a2;
}

uint64_t BloodPressureLogModel.init(url:date:dateLabel:systolic:diastolic:loggedLabel:snippetHeaderModel:unitLabel:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9@<D0>, uint64_t a10@<D1>, uint64_t a11)
{
  v88 = a7;
  v83 = a4;
  v84 = a5;
  v93 = a1;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v16 - 8);
  v91 = &v73 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit11AppPunchoutVSgMd, &_s10SnippetKit11AppPunchoutVSgMR);
  MEMORY[0x28223BE20](v18 - 8);
  v89 = &v73 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  MEMORY[0x28223BE20](v20 - 8);
  v82 = &v73 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v73 - v23;

  v25 = type metadata accessor for AppPunchout();
  v26 = *(v25 - 8);
  v86 = *(v26 + 56);
  v87 = v25;
  v85 = v26 + 56;
  v86(a8, 1, 1);
  v27 = type metadata accessor for BloodPressureLogModel(0);
  v28 = (a8 + v27[6]);
  *v28 = 0;
  v28[1] = 0;
  v29 = (a8 + v27[7]);
  *v29 = 0;
  v29[1] = 0;
  v30 = v27[8];
  v31 = type metadata accessor for SnippetHeaderModel(0);
  v32 = *(v31 - 8);
  v33 = *(v32 + 56);
  v78 = v31;
  v79 = v30;
  v77 = v33;
  v76 = v32 + 56;
  (v33)(a8 + v30, 1, 1);
  v34 = (a8 + v27[9]);
  *v34 = 0;
  v34[1] = 0;
  v81 = v34;
  v35 = (a8 + v27[10]);
  *v35 = 0;
  v35[1] = 0;
  v80 = v35;
  v90 = a2;
  dispatch thunk of DialogCalendar.dateDescriptive.getter();
  v36 = type metadata accessor for SpeakableString();
  v37 = *(v36 - 8);
  v74 = *(v37 + 48);
  v38 = v74(v24, 1, v36);
  v92 = a6;
  v75 = v37;
  if (v38 == 1)
  {
    outlined destroy of AppPunchout?(v24, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    v39 = 0;
    v40 = 0;
  }

  else
  {
    v41 = SpeakableString.print.getter();
    v43 = v42;
    (*(v37 + 8))(v24, v36);
    v94 = v41;
    v95 = v43;
    lazy protocol witness table accessor for type String and conformance String();
    v39 = StringProtocol.capitalized.getter();
    v40 = v44;
  }

  v45 = (a8 + v27[5]);
  *v45 = v39;
  v45[1] = v40;
  v46 = HealthDataLogModel.getFormattedValueString(inputValue:)(a9, 0);
  if (v47)
  {
    v48 = v46;
    v49 = v47;
    v50 = HealthDataLogModel.getFormattedValueString(inputValue:)(a10, 0);
    if (v51)
    {
      v52 = v50;
      v53 = v51;
      v94 = v48;
      v95 = v49;

      MEMORY[0x2743E0A10](47, 0xE100000000000000);

      MEMORY[0x2743E0A10](v52, v53);

      v54 = v94;
      v55 = v95;
      goto LABEL_9;
    }
  }

  v54 = 0;
  v55 = 0;
LABEL_9:
  *v28 = v54;
  v28[1] = v55;
  v56 = v84;
  *v29 = v83;
  v29[1] = v56;
  v57 = v79;
  outlined destroy of AppPunchout?(a8 + v79, &_s10WellnessUI18SnippetHeaderModelVSgMd, &_s10WellnessUI18SnippetHeaderModelVSgMR);
  v58 = v92;
  outlined init with copy of SnippetHeaderModel(v92, a8 + v57, type metadata accessor for SnippetHeaderModel);
  v77(a8 + v57, 0, 1, v78);
  v59 = v82;
  dispatch thunk of DialogCalendar.timeDescriptive.getter();
  v60 = v74(v59, 1, v36);
  v61 = v75;
  if (v60 == 1)
  {
    outlined destroy of AppPunchout?(v59, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    v62 = 0;
    v63 = 0;
  }

  else
  {
    v62 = SpeakableString.print.getter();
    v63 = v64;
    (*(v61 + 8))(v59, v36);
  }

  v66 = v80;
  v65 = v81;
  *v81 = v62;
  v65[1] = v63;
  *v66 = v88;
  v66[1] = a11;
  v67 = type metadata accessor for URL();
  v68 = *(v67 - 8);
  v69 = v91;
  v70 = v93;
  (*(v68 + 16))(v91, v93, v67);
  (*(v68 + 56))(v69, 0, 1, v67);
  v71 = v89;
  BloodPressureLogModel.createAppPunchout(url:)(v69);

  _s10WellnessUI18SnippetHeaderModelVWOhTm_0(v58, type metadata accessor for SnippetHeaderModel);
  (*(v68 + 8))(v70, v67);
  outlined destroy of AppPunchout?(v69, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (v86)(v71, 0, 1, v87);
  return outlined assign with take of AppPunchout?(v71, a8, &_s10SnippetKit11AppPunchoutVSgMd, &_s10SnippetKit11AppPunchoutVSgMR);
}

uint64_t BloodPressureLogModel.createAppPunchout(url:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v10 - v3;
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AppPunchout?(a1, v4, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    outlined destroy of AppPunchout?(v4, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    return AppPunchout.init(punchOutUri:bundleId:appDisplayName:)();
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    URL.absoluteString.getter();
    AppPunchout.init(punchOutUri:bundleId:appDisplayName:)();
    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance BloodPressureLogModel.CodingKeys()
{
  v1 = *v0;
  v2 = 0x68636E7550707061;
  v3 = 0x6562614C656D6974;
  if (v1 != 5)
  {
    v3 = 0x6562614C74696E75;
  }

  v4 = 0x614C646567676F6CLL;
  if (v1 != 3)
  {
    v4 = 0xD000000000000012;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x6562614C65746164;
  if (v1 != 1)
  {
    v5 = 0x6562614C61746164;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance BloodPressureLogModel.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized BloodPressureLogModel.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance BloodPressureLogModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type BloodPressureLogModel.CodingKeys and conformance BloodPressureLogModel.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance BloodPressureLogModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type BloodPressureLogModel.CodingKeys and conformance BloodPressureLogModel.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t BloodPressureLogModel.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10WellnessUI21BloodPressureLogModelV10CodingKeys33_23570814A21FAABB2358223275CF439BLLOGMd, &_ss22KeyedEncodingContainerVy10WellnessUI21BloodPressureLogModelV10CodingKeys33_23570814A21FAABB2358223275CF439BLLOGMR);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type BloodPressureLogModel.CodingKeys and conformance BloodPressureLogModel.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  type metadata accessor for AppPunchout();
  _s10SnippetKit11AppPunchoutVACSEAAWlTm_3(&lazy protocol witness table cache variable for type AppPunchout and conformance AppPunchout, MEMORY[0x277D62880], MEMORY[0x277D62888]);
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (!v1)
  {
    type metadata accessor for BloodPressureLogModel(0);
    v8[14] = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v8[13] = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v8[12] = 3;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v8[11] = 4;
    type metadata accessor for SnippetHeaderModel(0);
    _s10SnippetKit11AppPunchoutVACSEAAWlTm_3(&lazy protocol witness table cache variable for type SnippetHeaderModel and conformance SnippetHeaderModel, type metadata accessor for SnippetHeaderModel, &protocol conformance descriptor for SnippetHeaderModel);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v8[10] = 5;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v8[9] = 6;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t lazy protocol witness table accessor for type BloodPressureLogModel.CodingKeys and conformance BloodPressureLogModel.CodingKeys()
{
  result = lazy protocol witness table cache variable for type BloodPressureLogModel.CodingKeys and conformance BloodPressureLogModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type BloodPressureLogModel.CodingKeys and conformance BloodPressureLogModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BloodPressureLogModel.CodingKeys and conformance BloodPressureLogModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type BloodPressureLogModel.CodingKeys and conformance BloodPressureLogModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type BloodPressureLogModel.CodingKeys and conformance BloodPressureLogModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BloodPressureLogModel.CodingKeys and conformance BloodPressureLogModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type BloodPressureLogModel.CodingKeys and conformance BloodPressureLogModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type BloodPressureLogModel.CodingKeys and conformance BloodPressureLogModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BloodPressureLogModel.CodingKeys and conformance BloodPressureLogModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type BloodPressureLogModel.CodingKeys and conformance BloodPressureLogModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type BloodPressureLogModel.CodingKeys and conformance BloodPressureLogModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BloodPressureLogModel.CodingKeys and conformance BloodPressureLogModel.CodingKeys);
  }

  return result;
}

uint64_t BloodPressureLogModel.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WellnessUI18SnippetHeaderModelVSgMd, &_s10WellnessUI18SnippetHeaderModelVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v52 = &v45 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit11AppPunchoutVSgMd, &_s10SnippetKit11AppPunchoutVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v53 = &v45 - v6;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10WellnessUI21BloodPressureLogModelV10CodingKeys33_23570814A21FAABB2358223275CF439BLLOGMd, &_ss22KeyedDecodingContainerVy10WellnessUI21BloodPressureLogModelV10CodingKeys33_23570814A21FAABB2358223275CF439BLLOGMR);
  v51 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v58 = &v45 - v7;
  v8 = type metadata accessor for BloodPressureLogModel(0);
  v9 = (v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for AppPunchout();
  v13 = *(*(v12 - 8) + 56);
  v50 = v12;
  v13(v11, 1, 1);
  v14 = &v11[v9[7]];
  *v14 = 0;
  v14[1] = 0;
  v15 = &v11[v9[8]];
  *v15 = 0;
  *(v15 + 1) = 0;
  v16 = &v11[v9[9]];
  *v16 = 0;
  v16[1] = 0;
  v17 = v9[10];
  v18 = type metadata accessor for SnippetHeaderModel(0);
  v19 = *(*(v18 - 8) + 56);
  v49 = v17;
  v19(&v11[v17], 1, 1, v18);
  v20 = &v11[v9[11]];
  *v20 = 0;
  *(v20 + 1) = 0;
  v21 = v9[12];
  v56 = v11;
  v22 = &v11[v21];
  *v22 = 0;
  *(v22 + 1) = 0;
  v23 = a1;
  v24 = a1[3];
  v57 = v23;
  __swift_project_boxed_opaque_existential_1(v23, v24);
  lazy protocol witness table accessor for type BloodPressureLogModel.CodingKeys and conformance BloodPressureLogModel.CodingKeys();
  v25 = v55;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v25)
  {
    v26 = v56;
  }

  else
  {
    v55 = v15;
    v46 = v22;
    v47 = v20;
    v27 = v51;
    v28 = v52;
    v65 = 0;
    _s10SnippetKit11AppPunchoutVACSEAAWlTm_3(&lazy protocol witness table cache variable for type AppPunchout and conformance AppPunchout, MEMORY[0x277D62880], MEMORY[0x277D62890]);
    v29 = v53;
    v30 = v58;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v31 = v29;
    v26 = v56;
    outlined assign with take of AppPunchout?(v31, v56, &_s10SnippetKit11AppPunchoutVSgMd, &_s10SnippetKit11AppPunchoutVSgMR);
    v64 = 1;
    *v14 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v14[1] = v32;
    v63 = 2;
    v33 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v34 = v55;
    *v55 = v33;
    v34[1] = v35;
    v62 = 3;
    *v16 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v16[1] = v36;
    v61 = 4;
    _s10SnippetKit11AppPunchoutVACSEAAWlTm_3(&lazy protocol witness table cache variable for type SnippetHeaderModel and conformance SnippetHeaderModel, type metadata accessor for SnippetHeaderModel, &protocol conformance descriptor for SnippetHeaderModel);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    outlined assign with take of AppPunchout?(v28, v26 + v49, &_s10WellnessUI18SnippetHeaderModelVSgMd, &_s10WellnessUI18SnippetHeaderModelVSgMR);
    v60 = 5;
    v37 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v38 = v47;
    *v47 = v37;
    v38[1] = v39;
    v59 = 6;
    v41 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v43 = v42;
    (*(v27 + 8))(v30, v54);
    v44 = v46;
    *v46 = v41;
    v44[1] = v43;
    outlined init with copy of SnippetHeaderModel(v26, v48, type metadata accessor for BloodPressureLogModel);
  }

  __swift_destroy_boxed_opaque_existential_1(v57);
  return _s10WellnessUI18SnippetHeaderModelVWOhTm_0(v26, type metadata accessor for BloodPressureLogModel);
}

uint64_t _s10WellnessUI18SnippetHeaderModelVWOhTm_0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with copy of SnippetHeaderModel(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _s10SnippetKit11AppPunchoutVACSEAAWlTm_3(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void type metadata completion function for BloodPressureLogModel(uint64_t a1)
{
  _s10SnippetKit11AppPunchoutVSgMaTm_0(319, &lazy cache variable for type metadata for AppPunchout?, MEMORY[0x277D62880]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for String?();
    if (v2 <= 0x3F)
    {
      _s10SnippetKit11AppPunchoutVSgMaTm_0(319, &lazy cache variable for type metadata for SnippetHeaderModel?, type metadata accessor for SnippetHeaderModel);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for BloodPressureLogModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for BloodPressureLogModel.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t specialized BloodPressureLogModel.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x68636E7550707061 && a2 == 0xEB0000000074756FLL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6562614C65746164 && a2 == 0xE90000000000006CLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6562614C61746164 && a2 == 0xE90000000000006CLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x614C646567676F6CLL && a2 == 0xEB000000006C6562 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000273EB0F30 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6562614C656D6974 && a2 == 0xE90000000000006CLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6562614C74696E75 && a2 == 0xE90000000000006CLL)
  {

    return 6;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t CycleTrackingLogSnippet.colorScheme.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMR);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for CycleTrackingLogSnippet(0);
  outlined init with copy of AppPunchout?(v1 + *(v10 + 24), v9, &_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for ColorScheme();
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

uint64_t CycleTrackingLogSnippet.buttonColor.getter()
{
  v0 = type metadata accessor for ColorScheme();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v10 - v5;
  CycleTrackingLogSnippet.colorScheme.getter(&v10 - v5);
  (*(v1 + 104))(v3, *MEMORY[0x277CDF3D8], v0);
  v7 = static ColorScheme.== infix(_:_:)();
  v8 = *(v1 + 8);
  v8(v3, v0);
  v8(v6, v0);
  if (v7)
  {
    return static Color.green.getter();
  }

  else
  {
    return static Color.blue.getter();
  }
}

uint64_t CycleTrackingLogSnippet.body.getter@<X0>(uint64_t *a1@<X8>)
{
  v199 = a1;
  v2 = type metadata accessor for CycleTrackingLogSnippet(0);
  v175 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v176 = v3;
  v177 = &v140 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v182 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SnippetUI14ComponentStackVy05SwiftB09TupleViewVy08WellnessB00a6HeaderG0V_AD0G0PAAE16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AQtFQOyAkAE10separators_10isOverrideQr0A3Kit14SeparatorStyleO_SbtFQOyAA018FactItemHeroNumberG0V_Qo__Qo_AA015StatusIndicatorG0VtGGMd, &_s9SnippetUI14ComponentStackVy05SwiftB09TupleViewVy08WellnessB00a6HeaderG0V_AD0G0PAAE16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AQtFQOyAkAE10separators_10isOverrideQr0A3Kit14SeparatorStyleO_SbtFQOyAA018FactItemHeroNumberG0V_Qo__Qo_AA015StatusIndicatorG0VtGGMR);
  v180 = *(v182 - 8);
  MEMORY[0x28223BE20](v182);
  v178 = &v140 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP07SnippetB0E15componentTapped12isNavigation7performQrSb_yyctFQOyAD14ComponentStackVyAA05TupleC0Vy08WellnessB00d6HeaderC0V_AcDE0E7Spacing3top6bottomQr12CoreGraphics7CGFloatV_ATtFQOyAcDE10separators_0G8OverrideQr0D3Kit14SeparatorStyleO_SbtFQOyAD018FactItemHeroNumberC0V_Qo__Qo_AD015StatusIndicatorC0VtGG_Qo_Md, &_s7SwiftUI4ViewP07SnippetB0E15componentTapped12isNavigation7performQrSb_yyctFQOyAD14ComponentStackVyAA05TupleC0Vy08WellnessB00d6HeaderC0V_AcDE0E7Spacing3top6bottomQr12CoreGraphics7CGFloatV_ATtFQOyAcDE10separators_0G8OverrideQr0D3Kit14SeparatorStyleO_SbtFQOyAD018FactItemHeroNumberC0V_Qo__Qo_AD015StatusIndicatorC0VtGG_Qo_MR);
  v183 = *(v5 - 8);
  v184 = v5;
  MEMORY[0x28223BE20](v5);
  v179 = &v140 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v181 = &v140 - v8;
  v9 = type metadata accessor for SeparatorStyle();
  v173 = *(v9 - 8);
  v174 = v9;
  MEMORY[0x28223BE20](v9);
  v169 = &v140 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v170 = type metadata accessor for FactItemHeroNumberView();
  v167 = *(v170 - 8);
  MEMORY[0x28223BE20](v170);
  v164 = &v140 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP07SnippetB0E10separators_10isOverrideQr0D3Kit14SeparatorStyleO_SbtFQOyAD018FactItemHeroNumberC0V_Qo_Md, &_s7SwiftUI4ViewP07SnippetB0E10separators_10isOverrideQr0D3Kit14SeparatorStyleO_SbtFQOyAD018FactItemHeroNumberC0V_Qo_MR);
  v168 = *(v171 - 8);
  MEMORY[0x28223BE20](v171);
  v166 = &v140 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AJtFQOyAcDE10separators_10isOverrideQr0D3Kit14SeparatorStyleO_SbtFQOyAD018FactItemHeroNumberC0V_Qo__Qo_Md, &_s7SwiftUI4ViewP07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AJtFQOyAcDE10separators_10isOverrideQr0D3Kit14SeparatorStyleO_SbtFQOyAD018FactItemHeroNumberC0V_Qo__Qo_MR);
  v192 = *(v13 - 8);
  v193 = v13;
  MEMORY[0x28223BE20](v13);
  v186 = &v140 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v172 = v14;
  MEMORY[0x28223BE20](v15);
  v191 = &v140 - v16;
  v17 = type metadata accessor for StatusIndicatorView.IndicatorType();
  v156 = *(v17 - 8);
  v157 = v17;
  MEMORY[0x28223BE20](v17);
  v155 = &v140 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for StatusIndicatorView();
  v189 = *(v19 - 8);
  v190 = v19;
  MEMORY[0x28223BE20](v19);
  v165 = &v140 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v163 = v20;
  MEMORY[0x28223BE20](v21);
  v196 = &v140 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4FontV6DesignOSgMd, &_s7SwiftUI4FontV6DesignOSgMR);
  MEMORY[0x28223BE20](v23 - 8);
  v153 = &v140 - v24;
  v25 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  MEMORY[0x28223BE20](v25 - 8);
  v154 = &v140 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v152 = type metadata accessor for SnippetHeaderView(0);
  v158 = *(v152 - 1);
  MEMORY[0x28223BE20](v152);
  v161 = &v140 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v159 = v27;
  MEMORY[0x28223BE20](v28);
  v195 = &v140 - v29;
  v30 = type metadata accessor for Font.TextStyle();
  v187 = *(v30 - 8);
  v188 = v30;
  MEMORY[0x28223BE20](v30);
  v194 = &v140 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v32 - 8);
  v185 = &v140 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit11AppPunchoutVSgMd, &_s10SnippetKit11AppPunchoutVSgMR);
  MEMORY[0x28223BE20](v34 - 8);
  v36 = &v140 - v35;
  v37 = type metadata accessor for AppPunchout();
  v198 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v162 = &v140 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v160 = v38;
  MEMORY[0x28223BE20](v39);
  v197 = &v140 - v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WellnessUI18SnippetHeaderModelVSgMd, &_s10WellnessUI18SnippetHeaderModelVSgMR);
  MEMORY[0x28223BE20](v41 - 8);
  v43 = &v140 - v42;
  v44 = type metadata accessor for SnippetHeaderModel(0);
  v45 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v47 = &v140 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for CycleTrackingLogModel(0);
  outlined init with copy of AppPunchout?(v1 + v48[8], v43, &_s10WellnessUI18SnippetHeaderModelVSgMd, &_s10WellnessUI18SnippetHeaderModelVSgMR);
  v150 = v45;
  v151 = v44;
  if ((*(v45 + 48))(v43, 1, v44) == 1)
  {
    outlined destroy of AppPunchout?(v43, &_s10WellnessUI18SnippetHeaderModelVSgMd, &_s10WellnessUI18SnippetHeaderModelVSgMR);
  }

  else
  {
    outlined init with take of SnippetHeaderModel(v43, v47, type metadata accessor for SnippetHeaderModel);
    v49 = v1;
    outlined init with copy of AppPunchout?(v1, v36, &_s10SnippetKit11AppPunchoutVSgMd, &_s10SnippetKit11AppPunchoutVSgMR);
    v50 = v198;
    if ((*(v198 + 48))(v36, 1, v37) == 1)
    {
      outlined destroy of SnippetHeaderModel(v47, type metadata accessor for SnippetHeaderModel);
      outlined destroy of AppPunchout?(v36, &_s10SnippetKit11AppPunchoutVSgMd, &_s10SnippetKit11AppPunchoutVSgMR);
    }

    else
    {
      v51 = v37;
      v52 = v50 + 32;
      v53 = *(v50 + 32);
      v54 = v197;
      v53(v197, v36, v51);
      v55 = (v49 + v48[7]);
      v56 = v55[1];
      if (v56 && (v57 = (v49 + v48[6]), (v58 = v57[1]) != 0) && (v59 = (v49 + v48[5]), v59[1]))
      {
        v149 = v59[1];
        v144 = *v55;
        v145 = v56;
        v60 = *v57;
        v146 = *v59;
        v147 = v60;
        v61 = v49 + v48[9];
        v62 = v185;
        outlined init with copy of AppPunchout?(v61, v185, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
        v63 = type metadata accessor for URL();
        if ((*(*(v63 - 8) + 48))(v62, 1, v63) != 1)
        {
          v65 = v145;

          outlined destroy of AppPunchout?(v62, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
          (*(v187 + 104))(v194, *MEMORY[0x277CE0A78], v188);
          v143 = v58;
          v66 = v195;
          outlined init with copy of CycleTrackingLogModel(v47, v195, type metadata accessor for SnippetHeaderModel);
          (*(v150 + 7))(v66, 0, 1, v151);
          v67 = v152;
          v68 = *(v152 + 5);
          *(v66 + v68) = swift_getKeyPath();
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMR);
          swift_storeEnumTagMultiPayload();
          v148 = v51;
          v69 = *(v67 + 24);
          *(v66 + v69) = swift_getKeyPath();
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA19ColorSchemeContrastO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA19ColorSchemeContrastO_GMR);
          swift_storeEnumTagMultiPayload();
          LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
          v70._countAndFlagsBits = 0;
          v70._object = 0xE000000000000000;
          LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v70);
          v71._countAndFlagsBits = v144;
          v71._object = v65;
          LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v71);

          v72._countAndFlagsBits = 0;
          v72._object = 0xE000000000000000;
          LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v72);
          LocalizedStringKey.init(stringInterpolation:)();
          v73 = Text.init(_:tableName:bundle:comment:)();
          v150 = v53;
          v151 = v52;
          v185 = v73;
          v75 = v74;
          v77 = v76;
          v145 = v49;
          v78 = *MEMORY[0x277CE0998];
          v79 = type metadata accessor for Font.Design();
          v80 = *(v79 - 8);
          v81 = v153;
          (*(v80 + 104))(v153, v78, v79);
          (*(v80 + 56))(v81, 0, 1, v79);
          static Font.system(_:design:weight:)();
          outlined destroy of AppPunchout?(v81, &_s7SwiftUI4FontV6DesignOSgMd, &_s7SwiftUI4FontV6DesignOSgMR);
          LOBYTE(v81) = v77;
          v82 = v185;
          v83 = Text.font(_:)();
          v85 = v84;
          v152 = v47;
          v87 = v86;
          v141 = v88;

          outlined consume of Text.Storage(v82, v75, v81 & 1);

          v89 = Text.bold()();
          v153 = v90;
          v142 = v91;
          v185 = v92;
          outlined consume of Text.Storage(v83, v85, v87 & 1);

          LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
          v93._countAndFlagsBits = 0;
          v93._object = 0xE000000000000000;
          LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v93);
          v94._countAndFlagsBits = v146;
          v94._object = v149;
          LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v94);

          v95._countAndFlagsBits = 0;
          v95._object = 0xE000000000000000;
          LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v95);
          LocalizedStringKey.init(stringInterpolation:)();
          v96 = Text.init(_:tableName:bundle:comment:)();
          v154 = v97;
          LODWORD(v141) = v98;
          v100 = v99;
          v149 = v99;
          v217 = MEMORY[0x277D837D0];
          v218 = MEMORY[0x277D63F88];
          v215 = v147;
          v216 = v143;
          (*(v156 + 104))(v155, *MEMORY[0x277D63D58], v157);
          StatusIndicatorView.init(message:type:showIndicator:)();
          v101 = MEMORY[0x277CE0BD0];
          v102 = MEMORY[0x277D638F0];
          v217 = MEMORY[0x277CE0BD0];
          v218 = MEMORY[0x277D638F0];
          v103 = swift_allocObject();
          v214 = 0;
          v215 = v103;
          v144 = v89;
          v104 = v153;
          *(v103 + 16) = v89;
          *(v103 + 24) = v104;
          LODWORD(v66) = v142 & 1;
          *(v103 + 32) = v142 & 1;
          LODWORD(v157) = v66;
          *(v103 + 40) = v185;
          v212 = 0u;
          v213 = 0u;
          v211 = 0;
          v209 = 0u;
          v210 = 0u;
          v207 = v101;
          v208 = v102;
          v105 = swift_allocObject();
          v206 = v105;
          v146 = v96;
          v106 = v154;
          *(v105 + 16) = v96;
          *(v105 + 24) = v106;
          LODWORD(v75) = v141 & 1;
          *(v105 + 32) = v141 & 1;
          LODWORD(v156) = v75;
          *(v105 + 40) = v100;
          v205 = 0;
          v203 = 0u;
          v204 = 0u;
          v202 = 0;
          v200 = 0u;
          v201 = 0u;
          outlined copy of Text.Storage(v89, v104, v66);

          outlined copy of Text.Storage(v96, v106, v75);

          v107 = v164;
          FactItemHeroNumberView.init(number:text1:text2:text3:text4:text5:)();
          v109 = v173;
          v108 = v174;
          v110 = v169;
          (*(v173 + 104))(v169, *MEMORY[0x277D62F40], v174);
          v111 = lazy protocol witness table accessor for type FactItemHeroNumberView and conformance FactItemHeroNumberView(&lazy protocol witness table cache variable for type FactItemHeroNumberView and conformance FactItemHeroNumberView, MEMORY[0x277D63E08], MEMORY[0x277D63E00]);
          v112 = v166;
          v113 = v170;
          View.separators(_:isOverride:)();
          (*(v109 + 8))(v110, v108);
          (*(v167 + 8))(v107, v113);
          v215 = v113;
          v216 = v111;
          swift_getOpaqueTypeConformance2();
          v114 = v191;
          v115 = v171;
          View.componentSpacing(top:bottom:)();
          (*(v168 + 8))(v112, v115);
          v116 = v161;
          outlined init with copy of CycleTrackingLogModel(v195, v161, type metadata accessor for SnippetHeaderView);
          v118 = v192;
          v117 = v193;
          (*(v192 + 16))(v186, v114, v193);
          v119 = v189;
          v120 = v165;
          (*(v189 + 16))(v165, v196, v190);
          v121 = (*(v158 + 80) + 16) & ~*(v158 + 80);
          v122 = (v159 + *(v118 + 80) + v121) & ~*(v118 + 80);
          v123 = (v172 + *(v119 + 80) + v122) & ~*(v119 + 80);
          v124 = swift_allocObject();
          outlined init with take of SnippetHeaderModel(v116, v124 + v121, type metadata accessor for SnippetHeaderView);
          (*(v118 + 32))(v124 + v122, v186, v117);
          v125 = v190;
          (*(v119 + 32))(v124 + v123, v120, v190);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVy08WellnessB0013SnippetHeaderD0V_AA0D0P0fB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AOtFQOyAhIE10separators_10isOverrideQr0F3Kit14SeparatorStyleO_SbtFQOyAI018FactItemHeroNumberD0V_Qo__Qo_AI015StatusIndicatorD0VtGMd, &_s7SwiftUI9TupleViewVy08WellnessB0013SnippetHeaderD0V_AA0D0P0fB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AOtFQOyAhIE10separators_10isOverrideQr0F3Kit14SeparatorStyleO_SbtFQOyAI018FactItemHeroNumberD0V_Qo__Qo_AI015StatusIndicatorD0VtGMR);
          lazy protocol witness table accessor for type TupleView<(SashStandardView, <<opaque return type of View.componentTapped(isNavigation:perform:)>>.0, StatusIndicatorView)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type TupleView<(SnippetHeaderView, <<opaque return type of View.componentSpacing(top:bottom:)>>.0, StatusIndicatorView)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVy08WellnessB0013SnippetHeaderD0V_AA0D0P0fB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AOtFQOyAhIE10separators_10isOverrideQr0F3Kit14SeparatorStyleO_SbtFQOyAI018FactItemHeroNumberD0V_Qo__Qo_AI015StatusIndicatorD0VtGMd, &_s7SwiftUI9TupleViewVy08WellnessB0013SnippetHeaderD0V_AA0D0P0fB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AOtFQOyAhIE10separators_10isOverrideQr0F3Kit14SeparatorStyleO_SbtFQOyAI018FactItemHeroNumberD0V_Qo__Qo_AI015StatusIndicatorD0VtGMR, MEMORY[0x277CE14C8]);
          v126 = v178;
          ComponentStack.init(content:)();
          v127 = v177;
          outlined init with copy of CycleTrackingLogModel(v145, v177, type metadata accessor for CycleTrackingLogSnippet);
          v128 = v198;
          v129 = v162;
          v130 = v148;
          (*(v198 + 16))(v162, v197, v148);
          v131 = (*(v175 + 80) + 16) & ~*(v175 + 80);
          v132 = (v176 + *(v128 + 80) + v131) & ~*(v128 + 80);
          v133 = swift_allocObject();
          outlined init with take of SnippetHeaderModel(v127, v133 + v131, type metadata accessor for CycleTrackingLogSnippet);
          v150(v133 + v132, v129, v130);
          v134 = lazy protocol witness table accessor for type TupleView<(SashStandardView, <<opaque return type of View.componentTapped(isNavigation:perform:)>>.0, StatusIndicatorView)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type ComponentStack<TupleView<(SnippetHeaderView, <<opaque return type of View.componentSpacing(top:bottom:)>>.0, StatusIndicatorView)>> and conformance ComponentStack<A>, &_s9SnippetUI14ComponentStackVy05SwiftB09TupleViewVy08WellnessB00a6HeaderG0V_AD0G0PAAE16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AQtFQOyAkAE10separators_10isOverrideQr0A3Kit14SeparatorStyleO_SbtFQOyAA018FactItemHeroNumberG0V_Qo__Qo_AA015StatusIndicatorG0VtGGMd, &_s9SnippetUI14ComponentStackVy05SwiftB09TupleViewVy08WellnessB00a6HeaderG0V_AD0G0PAAE16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AQtFQOyAkAE10separators_10isOverrideQr0A3Kit14SeparatorStyleO_SbtFQOyAA018FactItemHeroNumberG0V_Qo__Qo_AA015StatusIndicatorG0VtGGMR, MEMORY[0x277D63B98]);
          v136 = v181;
          v135 = v182;
          View.componentTapped(isNavigation:perform:)();

          (*(v180 + 8))(v126, v135);
          v138 = v183;
          v137 = v184;
          (*(v183 + 16))(v179, v136, v184);
          v215 = v135;
          v216 = v134;
          swift_getOpaqueTypeConformance2();
          v139 = AnyView.init<A>(_:)();
          outlined consume of Text.Storage(v146, v154, v156);

          outlined consume of Text.Storage(v144, v153, v157);

          (*(v138 + 8))(v136, v137);
          (*(v192 + 8))(v191, v193);
          (*(v189 + 8))(v196, v125);
          outlined destroy of SnippetHeaderModel(v195, type metadata accessor for SnippetHeaderView);
          (*(v187 + 8))(v194, v188);
          (*(v128 + 8))(v197, v148);
          outlined destroy of SnippetHeaderModel(v152, type metadata accessor for SnippetHeaderModel);
          result = v139;
          goto LABEL_12;
        }

        (*(v50 + 8))(v54, v51);
        outlined destroy of SnippetHeaderModel(v47, type metadata accessor for SnippetHeaderModel);
        outlined destroy of AppPunchout?(v62, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      }

      else
      {
        (*(v50 + 8))(v54, v51);
        outlined destroy of SnippetHeaderModel(v47, type metadata accessor for SnippetHeaderModel);
      }
    }
  }

  result = AnyView.init<A>(_:)();
LABEL_12:
  *v199 = result;
  return result;
}

uint64_t type metadata accessor for CycleTrackingLogSnippet(uint64_t a1)
{
  result = type metadata singleton initialization cache for CycleTrackingLogSnippet;
  if (!type metadata singleton initialization cache for CycleTrackingLogSnippet)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t closure #1 in CycleTrackingLogSnippet.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v28 = a2;
  v29 = a3;
  v30 = a4;
  v5 = type metadata accessor for StatusIndicatorView();
  v24 = v5;
  v26 = *(v5 - 8);
  v6 = v26;
  MEMORY[0x28223BE20](v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AJtFQOyAcDE10separators_10isOverrideQr0D3Kit14SeparatorStyleO_SbtFQOyAD018FactItemHeroNumberC0V_Qo__Qo_Md, &_s7SwiftUI4ViewP07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AJtFQOyAcDE10separators_10isOverrideQr0D3Kit14SeparatorStyleO_SbtFQOyAD018FactItemHeroNumberC0V_Qo__Qo_MR);
  v25 = v9;
  v27 = *(v9 - 8);
  v10 = v27;
  MEMORY[0x28223BE20](v9);
  v12 = &v23 - v11;
  v13 = type metadata accessor for SnippetHeaderView(0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of CycleTrackingLogModel(a1, v15, type metadata accessor for SnippetHeaderView);
  v16 = *(v10 + 16);
  v16(v12, v28, v9);
  v17 = *(v6 + 16);
  v17(v8, v29, v5);
  v18 = v30;
  outlined init with copy of CycleTrackingLogModel(v15, v30, type metadata accessor for SnippetHeaderView);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WellnessUI17SnippetHeaderViewV_05SwiftB00E0P0cB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AMtFQOyAfGE10separators_10isOverrideQr0C3Kit14SeparatorStyleO_SbtFQOyAG018FactItemHeroNumberE0V_Qo__Qo_AG015StatusIndicatorE0VtMd, " W");
  v20 = v25;
  v16((v18 + *(v19 + 48)), v12, v25);
  v21 = v24;
  v17((v18 + *(v19 + 64)), v8, v24);
  (*(v26 + 8))(v8, v21);
  (*(v27 + 8))(v12, v20);
  return outlined destroy of SnippetHeaderModel(v15, type metadata accessor for SnippetHeaderView);
}

void closure #2 in CycleTrackingLogSnippet.body.getter(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + *(type metadata accessor for CycleTrackingLogSnippet(0) + 20));
  if (v2)
  {
    v3 = v2;
    dispatch thunk of Context.perform(appPunchout:)();
  }

  else
  {
    type metadata accessor for Context();
    lazy protocol witness table accessor for type FactItemHeroNumberView and conformance FactItemHeroNumberView(&lazy protocol witness table cache variable for type Context and conformance Context, MEMORY[0x277D63F68], MEMORY[0x277D63F58]);
    EnvironmentObject.error()();
    __break(1u);
  }
}

uint64_t CycleTrackingLogSnippet.init(model:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  outlined init with take of SnippetHeaderModel(a1, a2, type metadata accessor for CycleTrackingLogModel);
  v3 = type metadata accessor for CycleTrackingLogSnippet(0);
  v4 = (a2 + *(v3 + 20));
  type metadata accessor for Context();
  lazy protocol witness table accessor for type FactItemHeroNumberView and conformance FactItemHeroNumberView(&lazy protocol witness table cache variable for type Context and conformance Context, MEMORY[0x277D63F68], MEMORY[0x277D63F58]);
  *v4 = EnvironmentObject.init()();
  v4[1] = v5;
  v6 = *(v3 + 24);
  *(a2 + v6) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMR);

  return swift_storeEnumTagMultiPayload();
}

uint64_t partial apply for closure #1 in CycleTrackingLogSnippet.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SnippetHeaderView(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AJtFQOyAcDE10separators_10isOverrideQr0D3Kit14SeparatorStyleO_SbtFQOyAD018FactItemHeroNumberC0V_Qo__Qo_Md, &_s7SwiftUI4ViewP07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AJtFQOyAcDE10separators_10isOverrideQr0D3Kit14SeparatorStyleO_SbtFQOyAD018FactItemHeroNumberC0V_Qo__Qo_MR) - 8);
  v7 = (v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(type metadata accessor for StatusIndicatorView() - 8);
  v10 = v1 + ((v7 + v8 + *(v9 + 80)) & ~*(v9 + 80));

  return closure #1 in CycleTrackingLogSnippet.body.getter(v1 + v4, v1 + v7, v10, a1);
}

uint64_t outlined init with copy of CycleTrackingLogModel(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void partial apply for closure #2 in CycleTrackingLogSnippet.body.getter()
{
  v1 = *(type metadata accessor for CycleTrackingLogSnippet(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for AppPunchout() - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  closure #2 in CycleTrackingLogSnippet.body.getter(v0 + v2, v5);
}

uint64_t outlined init with take of SnippetHeaderModel(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t lazy protocol witness table accessor for type FactItemHeroNumberView and conformance FactItemHeroNumberView(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void type metadata completion function for CycleTrackingLogSnippet(uint64_t a1)
{
  type metadata accessor for CycleTrackingLogModel(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for EnvironmentObject<Context>(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Environment<ColorScheme>(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t BloodPressureQuerySnippet.init(model:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = (a2 + *(type metadata accessor for BloodPressureQuerySnippet(0) + 20));
  type metadata accessor for Context();
  lazy protocol witness table accessor for type Context and conformance Context(&lazy protocol witness table cache variable for type Context and conformance Context, MEMORY[0x277D63F68], MEMORY[0x277D63F58]);
  *v4 = EnvironmentObject.init()();
  v4[1] = v5;
  return outlined init with take of BloodPressureQueryModel(a1, a2, type metadata accessor for BloodPressureQueryModel);
}

uint64_t type metadata accessor for BloodPressureQuerySnippet(uint64_t a1)
{
  result = type metadata singleton initialization cache for BloodPressureQuerySnippet;
  if (!type metadata singleton initialization cache for BloodPressureQuerySnippet)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t BloodPressureQuerySnippet.body.getter@<X0>(uint64_t *a1@<X8>)
{
  v219 = a1;
  Snippet = type metadata accessor for BloodPressureQuerySnippet(0);
  v203 = *(Snippet - 8);
  MEMORY[0x28223BE20](Snippet - 8);
  v204 = v3;
  v205 = &v168[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SnippetUI14ComponentStackVy05SwiftB09TupleViewVy08WellnessB00a6HeaderG0V_AD03AnyG0VtGGMd, &_s9SnippetUI14ComponentStackVy05SwiftB09TupleViewVy08WellnessB00a6HeaderG0V_AD03AnyG0VtGGMR);
  v209 = *(v4 - 8);
  v210 = v4;
  MEMORY[0x28223BE20](v4);
  v206 = &v168[-v5];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP07SnippetB0E15componentTapped12isNavigation7performQrSb_yyctFQOyAD14ComponentStackVyAA05TupleC0Vy08WellnessB00d6HeaderC0V_AA03AnyC0VtGG_Qo_Md, &_s7SwiftUI4ViewP07SnippetB0E15componentTapped12isNavigation7performQrSb_yyctFQOyAD14ComponentStackVyAA05TupleC0Vy08WellnessB00d6HeaderC0V_AA03AnyC0VtGG_Qo_MR);
  v211 = *(v6 - 8);
  v212 = v6;
  MEMORY[0x28223BE20](v6);
  v207 = &v168[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v208 = &v168[-v9];
  v10 = type metadata accessor for FactItemHeroNumberView();
  v193 = *(v10 - 8);
  v194 = v10;
  MEMORY[0x28223BE20](v10);
  v192 = &v168[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AJtFQOyAD018FactItemHeroNumberC0V_Qo_Md, &_s7SwiftUI4ViewP07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AJtFQOyAD018FactItemHeroNumberC0V_Qo_MR);
  v196 = *(v12 - 8);
  v197 = v12;
  MEMORY[0x28223BE20](v12);
  v195 = &v168[-v13];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4FontV6DesignOSgMd, &_s7SwiftUI4FontV6DesignOSgMR);
  MEMORY[0x28223BE20](v14 - 8);
  v213 = &v168[-v15];
  v16 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  MEMORY[0x28223BE20](v16 - 8);
  v214 = type metadata accessor for Font.TextStyle();
  v216 = *(v214 - 8);
  MEMORY[0x28223BE20](v214);
  v18 = &v168[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v19);
  v215 = &v168[-v20];
  v21 = type metadata accessor for SnippetHeaderView(0);
  v198 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v199 = v22;
  v200 = &v168[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v23);
  v217 = &v168[-v24];
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit11AppPunchoutVSgMd, &_s10SnippetKit11AppPunchoutVSgMR);
  MEMORY[0x28223BE20](v25 - 8);
  v27 = &v168[-v26];
  v28 = type metadata accessor for AppPunchout();
  v218 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v201 = v29;
  v202 = &v168[-((v29 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v30);
  v32 = &v168[-v31];
  Model = type metadata accessor for BloodPressureQueryModel(0);
  v34 = (v1 + *(Model + 88));
  v35 = v34[1];
  if (!v35)
  {
    goto LABEL_5;
  }

  v36 = Model;
  v37 = v1 + *(Model + 84);
  if (!*(v37 + 8))
  {
    goto LABEL_5;
  }

  v190._object = *(v37 + 8);
  v191 = v32;
  v38 = *v34;
  v39 = *v37;
  v189 = v38;
  v190._countAndFlagsBits = v39;
  outlined init with copy of AppPunchout?(v1, v27, &_s10SnippetKit11AppPunchoutVSgMd, &_s10SnippetKit11AppPunchoutVSgMR);
  v40 = v218;
  if ((*(v218 + 48))(v27, 1, v28) != 1)
  {
    v42 = v40 + 32;
    v43 = *(v40 + 32);
    v44 = v191;
    v187 = v42;
    v188 = v28;
    v186 = v43;
    v43(v191, v27, v28);
    v45 = v217;
    outlined init with copy of AppPunchout?(v1 + v36[23], v217, &_s10WellnessUI18SnippetHeaderModelVSgMd, &_s10WellnessUI18SnippetHeaderModelVSgMR);
    v46 = *(v21 + 20);
    *&v45[v46] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMR);
    swift_storeEnumTagMultiPayload();
    v47 = *(v21 + 24);
    *&v45[v47] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA19ColorSchemeContrastO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA19ColorSchemeContrastO_GMR);
    swift_storeEnumTagMultiPayload();
    v48 = (v1 + v36[13]);
    v49 = v48[1];
    if (v49 && (v50 = (v1 + v36[14]), (v51 = v50[1]) != 0) && (v52 = v1 + v36[15], (v53 = *(v52 + 8)) != 0) && (v54 = (v1 + v36[16]), (v55 = v54[1]) != 0))
    {
      v56 = *v48;
      v57 = *v50;
      v215 = *v52;
      v216 = *v54;
      *&v230 = v56;
      *(&v230 + 1) = v49;
      v58 = v1;
      v59 = v53;

      MEMORY[0x2743E0A10](9666786, 0xA300000000000000);
      MEMORY[0x2743E0A10](v57, v51);
      v60 = v230;
      *&v230 = v215;
      *(&v230 + 1) = v59;

      MEMORY[0x2743E0A10](9666786, 0xA300000000000000);
      MEMORY[0x2743E0A10](v216, v55);
      v61 = v36[19];
      v62 = (v1 + v36[18]);
      v63 = *v62;
      v64 = v62[1];
      v183 = v58;
      v65 = v58 + v61;
      v66 = *(v58 + v61);
      v67 = *(v65 + 8);
      *&v220 = v63;
      *(&v220 + 1) = v64;
      v221 = v60;
      v222 = 0u;
      v223 = 0u;
      *&v224 = v66;
      *(&v224 + 1) = v67;
      v225 = v230;
      v226 = 0u;
      v227 = 0u;
      *&v228 = v189;
      *(&v228 + 1) = v35;
      v229 = v190;
      lazy protocol witness table accessor for type MultipleDataPointWithSubTypesView and conformance MultipleDataPointWithSubTypesView();

      v68 = View.eraseToAnyView()();
      v236 = v226;
      v237 = v227;
      v238 = v228;
      v239 = v229;
      v232 = v222;
      v233 = v223;
      v234 = v224;
      v235 = v225;
      v230 = v220;
      v231 = v221;
      outlined destroy of MultipleDataPointWithSubTypesView(&v230);
    }

    else
    {
      v69 = (v1 + v36[11]);
      v70 = v69[1];
      if (!v70 || (v71 = (v1 + v36[12]), (v72 = v71[1]) == 0))
      {
        v167 = AnyView.init<A>(_:)();
        outlined destroy of SnippetHeaderView(v217);
        (*(v218 + 8))(v44, v188);
        goto LABEL_17;
      }

      v183 = v1;
      v179 = *v69;
      v181 = *v71;
      v180 = v72;
      v178 = v70;
      v73 = v216;
      v74 = *(v216 + 104);
      v75 = v214;
      v74(v215, *MEMORY[0x277CE0A78], v214);

      LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v76._countAndFlagsBits = 0;
      v76._object = 0xE000000000000000;
      LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v76);
      v77._countAndFlagsBits = v189;
      v77._object = v35;
      LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v77);

      v78._countAndFlagsBits = 0;
      v78._object = 0xE000000000000000;
      LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v78);
      LocalizedStringKey.init(stringInterpolation:)();
      v189 = Text.init(_:tableName:bundle:comment:)();
      v185 = v79;
      v81 = v80;
      v74(v18, *MEMORY[0x277CE0A60], v75);
      v175 = *MEMORY[0x277CE0998];
      v82 = v175;
      v83 = type metadata accessor for Font.Design();
      v84 = *(v83 - 8);
      v85 = *(v84 + 104);
      v174 = v84 + 104;
      v176 = v85;
      v86 = v213;
      v87 = v82;
      v88 = v83;
      v172 = v83;
      v85(v213, v87);
      v171 = *(v84 + 56);
      v173 = v84 + 56;
      v171(v86, 0, 1, v88);
      static Font.system(_:design:weight:)();
      outlined destroy of AppPunchout?(v86, &_s7SwiftUI4FontV6DesignOSgMd, &_s7SwiftUI4FontV6DesignOSgMR);
      v89 = *(v73 + 8);
      v216 = v73 + 8;
      v182 = v89;
      v89(v18, v75);
      LOBYTE(v73) = v81;
      v90 = v189;
      v91 = v185;
      v92 = Text.font(_:)();
      v184 = v93;
      LOBYTE(v75) = v94;

      outlined consume of Text.Storage(v90, v91, v73 & 1);

      LODWORD(v230) = static HierarchicalShapeStyle.secondary.getter();
      v95 = v92;
      v96 = v184;
      v97 = Text.foregroundStyle<A>(_:)();
      v99 = v98;
      LOBYTE(v91) = v100;
      outlined consume of Text.Storage(v95, v96, v75 & 1);

      v184 = Text.bold()();
      v185 = v101;
      v177 = v102;
      v189 = v103;
      outlined consume of Text.Storage(v97, v99, v91 & 1);

      LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v104._countAndFlagsBits = 0;
      v104._object = 0xE000000000000000;
      LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v104);
      LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v190);

      v105._countAndFlagsBits = 0;
      v105._object = 0xE000000000000000;
      LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v105);
      LocalizedStringKey.init(stringInterpolation:)();
      v106 = Text.init(_:tableName:bundle:comment:)();
      v190._countAndFlagsBits = v107;
      v190._object = v106;
      v169 = v108;
      v170 = v109;
      LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v110._countAndFlagsBits = 0;
      v110._object = 0xE000000000000000;
      LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v110);
      v111._object = v178;
      v111._countAndFlagsBits = v179;
      LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v111);
      v112._countAndFlagsBits = 47;
      v112._object = 0xE100000000000000;
      LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v112);
      v113._object = v180;
      v113._countAndFlagsBits = v181;
      LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v113);
      v114._countAndFlagsBits = 0;
      v114._object = 0xE000000000000000;
      LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v114);
      LocalizedStringKey.init(stringInterpolation:)();
      v115 = Text.init(_:tableName:bundle:comment:)();
      v117 = v116;
      LOBYTE(v97) = v118;
      v119 = v213;
      v120 = v172;
      v176(v213, v175, v172);
      v171(v119, 0, 1, v120);
      static Font.system(_:design:weight:)();
      outlined destroy of AppPunchout?(v119, &_s7SwiftUI4FontV6DesignOSgMd, &_s7SwiftUI4FontV6DesignOSgMR);
      v121 = Text.font(_:)();
      v123 = v122;
      v125 = v124;

      outlined consume of Text.Storage(v115, v117, v97 & 1);

      v126 = Text.bold()();
      v128 = v127;
      v179 = v127;
      LOBYTE(v97) = v129;
      v131 = v130;
      v213 = v130;
      outlined consume of Text.Storage(v121, v123, v125 & 1);

      v132 = MEMORY[0x277CE0BD0];
      v133 = MEMORY[0x277D638F0];
      *(&v231 + 1) = MEMORY[0x277CE0BD0];
      *&v232 = MEMORY[0x277D638F0];
      v134 = swift_allocObject();
      *&v230 = v134;
      *(v134 + 16) = v126;
      *(v134 + 24) = v128;
      v135 = v126;
      v181 = v126;
      LODWORD(v97) = v97 & 1;
      *(v134 + 32) = v97;
      LODWORD(v180) = v97;
      *(v134 + 40) = v131;
      *(&v221 + 1) = v132;
      *&v222 = v133;
      v136 = swift_allocObject();
      *&v220 = v136;
      v138 = v184;
      v137 = v185;
      *(v136 + 16) = v184;
      *(v136 + 24) = v137;
      LODWORD(v178) = v177 & 1;
      *(v136 + 32) = v177 & 1;
      *(v136 + 40) = v189;
      v251 = 0;
      v249 = 0u;
      v250 = 0u;
      v247 = v132;
      v248 = v133;
      v139 = swift_allocObject();
      v245 = 0;
      v246 = v139;
      object = v190._object;
      countAndFlagsBits = v190._countAndFlagsBits;
      *(v139 + 16) = v190._object;
      *(v139 + 24) = countAndFlagsBits;
      LOBYTE(v75) = v169 & 1;
      *(v139 + 32) = v169 & 1;
      *(v139 + 40) = v170;
      v243 = 0u;
      v244 = 0u;
      v242 = 0;
      v240 = 0u;
      v241 = 0u;
      v142 = v135;
      v143 = v179;
      outlined copy of Text.Storage(v142, v179, v97);

      LOBYTE(v97) = v178;
      outlined copy of Text.Storage(v138, v137, v178);

      outlined copy of Text.Storage(object, countAndFlagsBits, v75);

      v144 = v192;
      FactItemHeroNumberView.init(number:text1:text2:text3:text4:text5:)();
      v145 = lazy protocol witness table accessor for type Context and conformance Context(&lazy protocol witness table cache variable for type FactItemHeroNumberView and conformance FactItemHeroNumberView, MEMORY[0x277D63E08], MEMORY[0x277D63E00]);
      v147 = v194;
      v146 = v195;
      View.componentSpacing(top:bottom:)();
      (*(v193 + 8))(v144, v147);
      *&v230 = v147;
      *(&v230 + 1) = v145;
      swift_getOpaqueTypeConformance2();
      v148 = v197;
      v68 = View.eraseToAnyView()();
      outlined consume of Text.Storage(v190._object, v190._countAndFlagsBits, v75);

      outlined consume of Text.Storage(v184, v185, v97);

      outlined consume of Text.Storage(v181, v143, v180);

      (*(v196 + 8))(v146, v148);
      v182(v215, v214);
    }

    v149 = v188;
    v150 = v200;
    outlined init with copy of BloodPressureQueryModel(v217, v200, type metadata accessor for SnippetHeaderView);
    v151 = (*(v198 + 80) + 16) & ~*(v198 + 80);
    v152 = (v199 + v151 + 7) & 0xFFFFFFFFFFFFFFF8;
    v153 = swift_allocObject();
    outlined init with take of BloodPressureQueryModel(v150, v153 + v151, type metadata accessor for SnippetHeaderView);
    v216 = v68;
    *(v153 + v152) = v68;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVy08WellnessB0013SnippetHeaderD0V_AA03AnyD0VtGMd, &_s7SwiftUI9TupleViewVy08WellnessB0013SnippetHeaderD0V_AA03AnyD0VtGMR);
    lazy protocol witness table accessor for type TupleView<(SashStandardView, <<opaque return type of View.componentTapped(isNavigation:perform:)>>.0, StatusIndicatorView)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type TupleView<(SnippetHeaderView, AnyView)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVy08WellnessB0013SnippetHeaderD0V_AA03AnyD0VtGMd, &_s7SwiftUI9TupleViewVy08WellnessB0013SnippetHeaderD0V_AA03AnyD0VtGMR, MEMORY[0x277CE14C8]);
    v154 = v206;
    ComponentStack.init(content:)();
    v155 = v205;
    outlined init with copy of BloodPressureQueryModel(v183, v205, type metadata accessor for BloodPressureQuerySnippet);
    v156 = v218;
    v157 = v202;
    (*(v218 + 16))(v202, v191, v149);
    v158 = (*(v203 + 80) + 16) & ~*(v203 + 80);
    v159 = (v204 + *(v156 + 80) + v158) & ~*(v156 + 80);
    v160 = swift_allocObject();
    outlined init with take of BloodPressureQueryModel(v155, v160 + v158, type metadata accessor for BloodPressureQuerySnippet);
    v186(v160 + v159, v157, v149);
    v161 = lazy protocol witness table accessor for type TupleView<(SashStandardView, <<opaque return type of View.componentTapped(isNavigation:perform:)>>.0, StatusIndicatorView)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type ComponentStack<TupleView<(SnippetHeaderView, AnyView)>> and conformance ComponentStack<A>, &_s9SnippetUI14ComponentStackVy05SwiftB09TupleViewVy08WellnessB00a6HeaderG0V_AD03AnyG0VtGGMd, &_s9SnippetUI14ComponentStackVy05SwiftB09TupleViewVy08WellnessB00a6HeaderG0V_AD03AnyG0VtGGMR, MEMORY[0x277D63B98]);
    v162 = v208;
    v163 = v210;
    View.componentTapped(isNavigation:perform:)();

    (*(v209 + 8))(v154, v163);
    v164 = v149;
    v166 = v211;
    v165 = v212;
    (*(v211 + 16))(v207, v162, v212);
    *&v230 = v163;
    *(&v230 + 1) = v161;
    swift_getOpaqueTypeConformance2();
    v167 = AnyView.init<A>(_:)();

    (*(v166 + 8))(v162, v165);
    outlined destroy of SnippetHeaderView(v217);
    (*(v156 + 8))(v191, v164);
LABEL_17:
    result = v167;
    goto LABEL_6;
  }

  outlined destroy of AppPunchout?(v27, &_s10SnippetKit11AppPunchoutVSgMd, &_s10SnippetKit11AppPunchoutVSgMR);
LABEL_5:
  result = AnyView.init<A>(_:)();
LABEL_6:
  *v219 = result;
  return result;
}

uint64_t closure #1 in BloodPressureQuerySnippet.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for SnippetHeaderView(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of BloodPressureQueryModel(a1, v8, type metadata accessor for SnippetHeaderView);
  outlined init with copy of BloodPressureQueryModel(v8, a3, type metadata accessor for SnippetHeaderView);
  *(a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10WellnessUI17SnippetHeaderViewV_05SwiftB003AnyE0VtMd, &_s10WellnessUI17SnippetHeaderViewV_05SwiftB003AnyE0VtMR) + 48)) = a2;

  return outlined destroy of SnippetHeaderView(v8);
}

void closure #2 in BloodPressureQuerySnippet.body.getter(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + *(type metadata accessor for BloodPressureQuerySnippet(0) + 20));
  if (v2)
  {
    v3 = v2;
    dispatch thunk of Context.perform(appPunchout:)();
  }

  else
  {
    type metadata accessor for Context();
    lazy protocol witness table accessor for type Context and conformance Context(&lazy protocol witness table cache variable for type Context and conformance Context, MEMORY[0x277D63F68], MEMORY[0x277D63F58]);
    EnvironmentObject.error()();
    __break(1u);
  }
}

uint64_t partial apply for closure #1 in BloodPressureQuerySnippet.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SnippetHeaderView(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return closure #1 in BloodPressureQuerySnippet.body.getter(v1 + v4, v5, a1);
}

uint64_t outlined init with copy of BloodPressureQueryModel(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with take of BloodPressureQueryModel(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void partial apply for closure #2 in BloodPressureQuerySnippet.body.getter()
{
  v1 = *(type metadata accessor for BloodPressureQuerySnippet(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for AppPunchout() - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  closure #2 in BloodPressureQuerySnippet.body.getter(v0 + v2, v5);
}

void type metadata completion function for BloodPressureQuerySnippet(uint64_t a1)
{
  type metadata accessor for BloodPressureQueryModel(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for EnvironmentObject<Context>(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t GenericBinaryButtonModel.invocationIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

void GenericBinaryButtonModel.invocationIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

uint64_t GenericBinaryButtonModel.primaryButtonLabel.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

void GenericBinaryButtonModel.primaryButtonLabel.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t GenericBinaryButtonModel.secondaryButtonLabel.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

void GenericBinaryButtonModel.secondaryButtonLabel.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
}

void __swiftcall GenericBinaryButtonModel.init(invocationIdentifier:primaryButtonLabel:secondaryButtonLabel:isSmartEnabled:)(WellnessUI::GenericBinaryButtonModel *__return_ptr retstr, Swift::String invocationIdentifier, Swift::String primaryButtonLabel, Swift::String secondaryButtonLabel, Swift::Bool isSmartEnabled)
{
  retstr->invocationIdentifier = invocationIdentifier;
  retstr->primaryButtonLabel = primaryButtonLabel;
  retstr->secondaryButtonLabel = secondaryButtonLabel;
  retstr->isSmartEnabled = isSmartEnabled;
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance GenericBinaryButtonModel.CodingKeys()
{
  v1 = 0x457472616D537369;
  v2 = 0xD000000000000014;
  if (*v0 == 2)
  {
    v1 = 0xD000000000000014;
  }

  if (*v0)
  {
    v2 = 0xD000000000000012;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance GenericBinaryButtonModel.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized GenericBinaryButtonModel.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance GenericBinaryButtonModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type GenericBinaryButtonModel.CodingKeys and conformance GenericBinaryButtonModel.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance GenericBinaryButtonModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type GenericBinaryButtonModel.CodingKeys and conformance GenericBinaryButtonModel.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t GenericBinaryButtonModel.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10WellnessUI24GenericBinaryButtonModelV10CodingKeys33_EB6A499CEC05AA8605DDCD44A302F925LLOGMd, &_ss22KeyedEncodingContainerVy10WellnessUI24GenericBinaryButtonModelV10CodingKeys33_EB6A499CEC05AA8605DDCD44A302F925LLOGMR);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v11 - v5;
  v7 = *(v1 + 16);
  v11[3] = *(v1 + 24);
  v11[4] = v7;
  v8 = *(v1 + 32);
  v11[1] = *(v1 + 40);
  v11[2] = v8;
  v12 = *(v1 + 48);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type GenericBinaryButtonModel.CodingKeys and conformance GenericBinaryButtonModel.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v16 = 0;
  v9 = v11[5];
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v9)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v15 = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  v14 = 2;
  KeyedEncodingContainer.encode(_:forKey:)();
  v13 = 3;
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v4 + 8))(v6, v3);
}

unint64_t lazy protocol witness table accessor for type GenericBinaryButtonModel.CodingKeys and conformance GenericBinaryButtonModel.CodingKeys()
{
  result = lazy protocol witness table cache variable for type GenericBinaryButtonModel.CodingKeys and conformance GenericBinaryButtonModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type GenericBinaryButtonModel.CodingKeys and conformance GenericBinaryButtonModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GenericBinaryButtonModel.CodingKeys and conformance GenericBinaryButtonModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GenericBinaryButtonModel.CodingKeys and conformance GenericBinaryButtonModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type GenericBinaryButtonModel.CodingKeys and conformance GenericBinaryButtonModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GenericBinaryButtonModel.CodingKeys and conformance GenericBinaryButtonModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GenericBinaryButtonModel.CodingKeys and conformance GenericBinaryButtonModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type GenericBinaryButtonModel.CodingKeys and conformance GenericBinaryButtonModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GenericBinaryButtonModel.CodingKeys and conformance GenericBinaryButtonModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GenericBinaryButtonModel.CodingKeys and conformance GenericBinaryButtonModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type GenericBinaryButtonModel.CodingKeys and conformance GenericBinaryButtonModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GenericBinaryButtonModel.CodingKeys and conformance GenericBinaryButtonModel.CodingKeys);
  }

  return result;
}

void GenericBinaryButtonModel.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10WellnessUI24GenericBinaryButtonModelV10CodingKeys33_EB6A499CEC05AA8605DDCD44A302F925LLOGMd, &_ss22KeyedDecodingContainerVy10WellnessUI24GenericBinaryButtonModelV10CodingKeys33_EB6A499CEC05AA8605DDCD44A302F925LLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v20 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type GenericBinaryButtonModel.CodingKeys and conformance GenericBinaryButtonModel.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v29 = 0;
    v9 = KeyedDecodingContainer.decode(_:forKey:)();
    v25 = v10;
    v28 = 1;
    v11 = KeyedDecodingContainer.decode(_:forKey:)();
    v24 = v12;
    v22 = v11;
    v27 = 2;
    v21 = KeyedDecodingContainer.decode(_:forKey:)();
    v23 = v13;
    v26 = 3;
    v14 = KeyedDecodingContainer.decode(_:forKey:)();
    (*(v6 + 8))(v8, v5);
    v15 = v14 & 1;
    v17 = v24;
    v16 = v25;
    *a2 = v9;
    *(a2 + 8) = v16;
    v18 = v21;
    *(a2 + 16) = v22;
    *(a2 + 24) = v17;
    v19 = v23;
    *(a2 + 32) = v18;
    *(a2 + 40) = v19;
    *(a2 + 48) = v15;

    __swift_destroy_boxed_opaque_existential_1(a1);
  }
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for GenericBinaryButtonModel(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
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

uint64_t storeEnumTagSinglePayload for GenericBinaryButtonModel(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for GenericBinaryButtonModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for GenericBinaryButtonModel.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t specialized GenericBinaryButtonModel.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000014 && 0x8000000273EB1270 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000273EB1290 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000273EB12B0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x457472616D537369 && a2 == 0xEE0064656C62616ELL)
  {

    return 3;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t type metadata accessor for TemperatureQueryModel(uint64_t a1)
{
  result = type metadata singleton initialization cache for TemperatureQueryModel;
  if (!type metadata singleton initialization cache for TemperatureQueryModel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t TemperatureQueryModel.averageValue.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for TemperatureQueryModel(0);
  v6 = v2 + *(result + 20);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t TemperatureQueryModel.maxValue.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for TemperatureQueryModel(0);
  v6 = v2 + *(result + 24);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t TemperatureQueryModel.minValue.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for TemperatureQueryModel(0);
  v6 = v2 + *(result + 28);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t TemperatureQueryModel.mostRecentValue.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for TemperatureQueryModel(0);
  v6 = v2 + *(result + 32);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t TemperatureQueryModel.basalTemperatureValue.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for TemperatureQueryModel(0);
  v6 = v2 + *(result + 36);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t TemperatureQueryModel.averageValueString.getter()
{
  v1 = *(v0 + *(type metadata accessor for TemperatureQueryModel(0) + 44));

  return v1;
}

void TemperatureQueryModel.averageValueString.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for TemperatureQueryModel(0) + 44));

  *v5 = a1;
  v5[1] = a2;
}

uint64_t TemperatureQueryModel.maxValueString.getter()
{
  v1 = *(v0 + *(type metadata accessor for TemperatureQueryModel(0) + 48));

  return v1;
}

void TemperatureQueryModel.maxValueString.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for TemperatureQueryModel(0) + 48));

  *v5 = a1;
  v5[1] = a2;
}

uint64_t TemperatureQueryModel.minValueString.getter()
{
  v1 = *(v0 + *(type metadata accessor for TemperatureQueryModel(0) + 52));

  return v1;
}

void TemperatureQueryModel.minValueString.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for TemperatureQueryModel(0) + 52));

  *v5 = a1;
  v5[1] = a2;
}

uint64_t TemperatureQueryModel.mostRecentValueString.getter()
{
  v1 = *(v0 + *(type metadata accessor for TemperatureQueryModel(0) + 56));

  return v1;
}

void TemperatureQueryModel.mostRecentValueString.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for TemperatureQueryModel(0) + 56));

  *v5 = a1;
  v5[1] = a2;
}

uint64_t TemperatureQueryModel.basalTemperatureValueString.getter()
{
  v1 = *(v0 + *(type metadata accessor for TemperatureQueryModel(0) + 60));

  return v1;
}

void TemperatureQueryModel.basalTemperatureValueString.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for TemperatureQueryModel(0) + 60));

  *v5 = a1;
  v5[1] = a2;
}

uint64_t TemperatureQueryModel.averageLabelString.getter()
{
  v1 = *(v0 + *(type metadata accessor for TemperatureQueryModel(0) + 68));

  return v1;
}

void TemperatureQueryModel.averageLabelString.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for TemperatureQueryModel(0) + 68));

  *v5 = a1;
  v5[1] = a2;
}

uint64_t TemperatureQueryModel.init(averageValue:maxValue:minValue:mostRecentValue:basalTemperatureValue:unitString:dateLabel:url:averageLabelString:headerModel:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X6>, int a8@<W7>, uint64_t a9@<X8>, uint64_t a10, unsigned __int8 a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  LODWORD(v87) = a8;
  v83 = a6;
  v81 = a2;
  LODWORD(v82) = a4;
  v85 = a7;
  v86 = a10;
  v93 = a16;
  v94 = a17;
  v91 = a14;
  v92 = a15;
  v95 = a13;
  v96 = a12;
  LODWORD(v84) = a11;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit11AppPunchoutVSgMd, &_s10SnippetKit11AppPunchoutVSgMR);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v74 - v22;
  v89 = type metadata accessor for AppPunchout();
  v24 = *(v89 - 8);
  v88 = *(v24 + 56);
  v90 = v24 + 56;
  v88(a9, 1, 1, v89);
  Model = type metadata accessor for TemperatureQueryModel(0);
  v26 = Model[10];
  v75 = v26;
  v27 = type metadata accessor for SpeakableString();
  v28 = *(*(v27 - 8) + 56);
  v28(a9 + v26, 1, 1, v27);
  v29 = Model[16];
  v28(a9 + v29, 1, 1, v27);
  v30 = Model[18];
  v80 = v30;
  v31 = type metadata accessor for SnippetHeaderModel(0);
  (*(*(v31 - 8) + 56))(a9 + v30, 1, 1, v31);
  if ((a1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v32 = a1;
  }

  else
  {
    v32 = 0;
  }

  v33 = v81;
  if (v81)
  {
    v34 = a1;
  }

  else
  {
    v34 = v32;
  }

  v77 = v34;
  v35 = a9 + Model[5];
  *v35 = v34;
  v76 = v33 & 1 | ((a1 & 0x7FFFFFFFFFFFFFFFLL) == 0);
  *(v35 + 8) = v76;
  if ((a3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v36 = a3;
  }

  else
  {
    v36 = 0;
  }

  v37 = v82;
  if (v82)
  {
    v38 = a3;
  }

  else
  {
    v38 = v36;
  }

  v79 = v38;
  v39 = a9 + Model[6];
  *v39 = v38;
  v78 = v37 & 1 | ((a3 & 0x7FFFFFFFFFFFFFFFLL) == 0);
  *(v39 + 8) = v78;
  if ((a5 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v40 = a5;
  }

  else
  {
    v40 = 0;
  }

  v41 = v83;
  if (v83)
  {
    v42 = a5;
  }

  else
  {
    v42 = v40;
  }

  v82 = v42;
  v43 = a9 + Model[7];
  *v43 = v42;
  v81 = v41 & 1 | ((a5 & 0x7FFFFFFFFFFFFFFFLL) == 0);
  *(v43 + 8) = v81;
  v44 = (v85 & 0x7FFFFFFFFFFFFFFFLL) == 0;
  if ((v85 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v45 = v85;
  }

  else
  {
    v45 = 0;
  }

  v46 = v85;
  v47 = v87;
  if ((v87 & 1) == 0)
  {
    v46 = v45;
  }

  v85 = v46;
  v48 = a9 + Model[8];
  *v48 = v46;
  v83 = (v47 | v44) & 1;
  *(v48 + 8) = v83;
  v49 = (v86 & 0x7FFFFFFFFFFFFFFFLL) == 0;
  if ((v86 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v50 = v86;
  }

  else
  {
    v50 = 0;
  }

  v51 = v84;
  if (v84)
  {
    v52 = v86;
  }

  else
  {
    v52 = v50;
  }

  v53 = a9 + Model[9];
  v54 = (a9 + Model[11]);
  v55 = (a9 + Model[12]);
  v56 = (a9 + Model[13]);
  v84 = (a9 + Model[14]);
  v57 = (a9 + Model[15]);
  v86 = v52;
  v87 = v57;
  v58 = (a9 + Model[17]);
  *v53 = v52;
  v59 = (v51 | v49) & 1;
  *(v53 + 8) = v59;
  outlined assign with copy of SpeakableString?(v96, a9 + v29, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  outlined assign with copy of SpeakableString?(v95, a9 + v75, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v60 = v91;
  TemperatureQueryModel.createAppPunchout(url:)(v91);
  v88(v23, 0, 1, v89);
  outlined assign with take of AppPunchout?(v23, a9, &_s10SnippetKit11AppPunchoutVSgMd, &_s10SnippetKit11AppPunchoutVSgMR);
  v61 = v93;
  *v58 = v92;
  v58[1] = v61;
  v62 = v94;
  outlined assign with copy of SpeakableString?(v94, a9 + v80, &_s10WellnessUI18SnippetHeaderModelVSgMd, &_s10WellnessUI18SnippetHeaderModelVSgMR);
  *v54 = TemperatureQueryModel.getFormattedTemperatureString(value:unitString:withUnits:)(v77, v76, a9 + v29, 1);
  v54[1] = v63;
  *v55 = TemperatureQueryModel.getFormattedTemperatureString(value:unitString:withUnits:)(v79, v78, a9 + v29, 1);
  v55[1] = v64;
  *v56 = TemperatureQueryModel.getFormattedTemperatureString(value:unitString:withUnits:)(v82, v81, a9 + v29, 0);
  v56[1] = v65;
  v66 = TemperatureQueryModel.getFormattedTemperatureString(value:unitString:withUnits:)(v85, v83, a9 + v29, 1);
  v67 = v84;
  *v84 = v66;
  v67[1] = v68;
  v69 = TemperatureQueryModel.getFormattedTemperatureString(value:unitString:withUnits:)(v86, v59, a9 + v29, 1);
  v71 = v70;
  outlined destroy of AppPunchout?(v62, &_s10WellnessUI18SnippetHeaderModelVSgMd, &_s10WellnessUI18SnippetHeaderModelVSgMR);
  outlined destroy of AppPunchout?(v60, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  outlined destroy of AppPunchout?(v95, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  result = outlined destroy of AppPunchout?(v96, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v73 = v87;
  *v87 = v69;
  v73[1] = v71;
  return result;
}

uint64_t TemperatureQueryModel.createAppPunchout(url:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v10 - v3;
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AppPunchout?(a1, v4, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    outlined destroy of AppPunchout?(v4, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    return AppPunchout.init(punchOutUri:bundleId:appDisplayName:)();
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    URL.absoluteString.getter();
    AppPunchout.init(punchOutUri:bundleId:appDisplayName:)();
    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t TemperatureQueryModel.getFormattedTemperatureString(value:unitString:withUnits:)(uint64_t a1, char a2, uint64_t a3, char a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v19 - v10;
  if (a2)
  {
    return 0;
  }

  type metadata accessor for DialogPreciseTemperature.Builder();
  swift_allocObject();
  MEMORY[0x2743E0100]();
  dispatch thunk of DialogConvertibleMeasurement.Builder.withValue(_:)();

  dispatch thunk of DialogConvertibleMeasurement.Builder.withUnits(_:)();

  dispatch thunk of DialogConvertibleMeasurement.Builder.build()();

  if (a4)
  {
    dispatch thunk of DialogPreciseTemperature.longSpokenTwoDigits.getter();
    v12 = type metadata accessor for SpeakableString();
    v13 = *(v12 - 8);
    if ((*(v13 + 48))(v11, 1, v12) == 1)
    {

      v14 = v11;
LABEL_7:
      outlined destroy of AppPunchout?(v14, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
      return 0;
    }

    v18 = SpeakableString.print.getter();

    (*(v13 + 8))(v11, v12);
  }

  else
  {
    dispatch thunk of DialogPreciseTemperature.mediumSpokenTwoDigits.getter();
    v15 = type metadata accessor for SpeakableString();
    v16 = *(v15 - 8);
    if ((*(v16 + 48))(v8, 1, v15) == 1)
    {

      v14 = v8;
      goto LABEL_7;
    }

    v18 = SpeakableString.print.getter();

    (*(v16 + 8))(v8, v15);
  }

  return v18;
}

uint64_t TemperatureQueryModel.CodingKeys.stringValue.getter(char a1)
{
  result = 0x68636E7550707061;
  switch(a1)
  {
    case 1:
      return 0x5665676172657661;
    case 2:
      v4 = 1450729837;
      return v4 | 0x65756C6100000000;
    case 3:
      v4 = 1450076525;
      return v4 | 0x65756C6100000000;
    case 4:
      return 0x6563655274736F6DLL;
    case 5:
    case 10:
      return 0xD000000000000015;
    case 6:
      return 0x6562614C65746164;
    case 7:
      return 0xD000000000000012;
    case 8:
      v3 = 1450729837;
      goto LABEL_17;
    case 9:
      v3 = 1450076525;
LABEL_17:
      result = v3 | 0x65756C6100000000;
      break;
    case 11:
      result = 0xD00000000000001BLL;
      break;
    case 12:
      result = 0x6972745374696E75;
      break;
    case 13:
      result = 0xD000000000000012;
      break;
    case 14:
      result = 0xD000000000000012;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance TemperatureQueryModel.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized TemperatureQueryModel.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance TemperatureQueryModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TemperatureQueryModel.CodingKeys and conformance TemperatureQueryModel.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance TemperatureQueryModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TemperatureQueryModel.CodingKeys and conformance TemperatureQueryModel.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TemperatureQueryModel.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10WellnessUI21TemperatureQueryModelV10CodingKeys33_DE56C832656B7D932C6CFB5D630067CALLOGMd, &_ss22KeyedEncodingContainerVy10WellnessUI21TemperatureQueryModelV10CodingKeys33_DE56C832656B7D932C6CFB5D630067CALLOGMR);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type TemperatureQueryModel.CodingKeys and conformance TemperatureQueryModel.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[31] = 0;
  type metadata accessor for AppPunchout();
  _s10SnippetKit11AppPunchoutVACSEAAWlTm_4(&lazy protocol witness table cache variable for type AppPunchout and conformance AppPunchout, MEMORY[0x277D62880], MEMORY[0x277D62888]);
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (!v1)
  {
    type metadata accessor for TemperatureQueryModel(0);
    v8[30] = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v8[29] = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v8[28] = 3;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v8[27] = 4;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v8[26] = 5;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v8[25] = 6;
    type metadata accessor for SpeakableString();
    _s10SnippetKit11AppPunchoutVACSEAAWlTm_4(&lazy protocol witness table cache variable for type SpeakableString and conformance SpeakableString, MEMORY[0x277D55C48], MEMORY[0x277D55C50]);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v8[24] = 7;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v8[15] = 8;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v8[14] = 9;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v8[13] = 10;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v8[12] = 11;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v8[11] = 12;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v8[10] = 13;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v8[9] = 14;
    type metadata accessor for SnippetHeaderModel(0);
    _s10SnippetKit11AppPunchoutVACSEAAWlTm_4(&lazy protocol witness table cache variable for type SnippetHeaderModel and conformance SnippetHeaderModel, type metadata accessor for SnippetHeaderModel, &protocol conformance descriptor for SnippetHeaderModel);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t lazy protocol witness table accessor for type TemperatureQueryModel.CodingKeys and conformance TemperatureQueryModel.CodingKeys()
{
  result = lazy protocol witness table cache variable for type TemperatureQueryModel.CodingKeys and conformance TemperatureQueryModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type TemperatureQueryModel.CodingKeys and conformance TemperatureQueryModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TemperatureQueryModel.CodingKeys and conformance TemperatureQueryModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TemperatureQueryModel.CodingKeys and conformance TemperatureQueryModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type TemperatureQueryModel.CodingKeys and conformance TemperatureQueryModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TemperatureQueryModel.CodingKeys and conformance TemperatureQueryModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TemperatureQueryModel.CodingKeys and conformance TemperatureQueryModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type TemperatureQueryModel.CodingKeys and conformance TemperatureQueryModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TemperatureQueryModel.CodingKeys and conformance TemperatureQueryModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TemperatureQueryModel.CodingKeys and conformance TemperatureQueryModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type TemperatureQueryModel.CodingKeys and conformance TemperatureQueryModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TemperatureQueryModel.CodingKeys and conformance TemperatureQueryModel.CodingKeys);
  }

  return result;
}

uint64_t TemperatureQueryModel.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v101 = a1;
  v80 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WellnessUI18SnippetHeaderModelVSgMd, &_s10WellnessUI18SnippetHeaderModelVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v81 = v77 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v94 = v77 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v93 = v77 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit11AppPunchoutVSgMd, &_s10SnippetKit11AppPunchoutVSgMR);
  MEMORY[0x28223BE20](v8 - 8);
  v95 = v77 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10WellnessUI21TemperatureQueryModelV10CodingKeys33_DE56C832656B7D932C6CFB5D630067CALLOGMd, &_ss22KeyedDecodingContainerVy10WellnessUI21TemperatureQueryModelV10CodingKeys33_DE56C832656B7D932C6CFB5D630067CALLOGMR);
  v96 = *(v10 - 8);
  v97 = v10;
  MEMORY[0x28223BE20](v10);
  v100 = v77 - v11;
  Model = type metadata accessor for TemperatureQueryModel(0);
  v13 = (Model - 8);
  MEMORY[0x28223BE20](Model);
  v15 = v77 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for AppPunchout();
  v17 = *(*(v16 - 8) + 56);
  v92 = v16;
  v17(v15, 1, 1);
  v18 = &v15[v13[7]];
  *v18 = 0;
  v91 = v18;
  v18[8] = 1;
  v19 = &v15[v13[8]];
  *v19 = 0;
  v90 = v19;
  v19[8] = 1;
  v20 = &v15[v13[9]];
  *v20 = 0;
  v89 = v20;
  v20[8] = 1;
  v21 = &v15[v13[10]];
  *v21 = 0;
  v88 = v21;
  v21[8] = 1;
  v22 = &v15[v13[11]];
  *v22 = 0;
  v87 = v22;
  v22[8] = 1;
  v23 = v13[12];
  v24 = type metadata accessor for SpeakableString();
  v25 = *(*(v24 - 8) + 56);
  v86 = v23;
  v25(&v15[v23], 1, 1, v24);
  v26 = &v15[v13[13]];
  *v26 = 0;
  *(v26 + 1) = 0;
  v85 = v26;
  v27 = &v15[v13[14]];
  *v27 = 0;
  *(v27 + 1) = 0;
  v84 = v27;
  v28 = &v15[v13[15]];
  *v28 = 0;
  *(v28 + 1) = 0;
  v83 = v28;
  v29 = &v15[v13[16]];
  *v29 = 0;
  *(v29 + 1) = 0;
  v30 = &v15[v13[17]];
  *v30 = 0;
  *(v30 + 1) = 0;
  v82 = v13[18];
  v25(&v15[v82], 1, 1, v24);
  v31 = &v15[v13[19]];
  *v31 = 0;
  *(v31 + 1) = 0;
  v32 = v13[20];
  v33 = type metadata accessor for SnippetHeaderModel(0);
  v34 = *(*(v33 - 8) + 56);
  v99 = v15;
  v79 = v32;
  v34(&v15[v32], 1, 1, v33);
  __swift_project_boxed_opaque_existential_1(v101, v101[3]);
  lazy protocol witness table accessor for type TemperatureQueryModel.CodingKeys and conformance TemperatureQueryModel.CodingKeys();
  v35 = v98;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v35)
  {
    v76 = v99;
  }

  else
  {
    v36 = v90;
    v37 = v91;
    v98 = v29;
    v78 = v30;
    v38 = v93;
    v77[0] = v31;
    v77[1] = v33;
    v39 = v94;
    v40 = v96;
    v116 = 0;
    _s10SnippetKit11AppPunchoutVACSEAAWlTm_4(&lazy protocol witness table cache variable for type AppPunchout and conformance AppPunchout, MEMORY[0x277D62880], MEMORY[0x277D62890]);
    v41 = v95;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v43 = v41;
    v44 = v99;
    outlined assign with take of AppPunchout?(v43, v99, &_s10SnippetKit11AppPunchoutVSgMd, &_s10SnippetKit11AppPunchoutVSgMR);
    v115 = 1;
    *v37 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v37[8] = v45 & 1;
    v114 = 2;
    *v36 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v36[8] = v46 & 1;
    v113 = 3;
    v47 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v48 = v89;
    *v89 = v47;
    *(v48 + 8) = v49 & 1;
    v112 = 4;
    v50 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v51 = v88;
    *v88 = v50;
    *(v51 + 8) = v52 & 1;
    v111 = 5;
    v53 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v54 = v87;
    *v87 = v53;
    *(v54 + 8) = v55 & 1;
    v110 = 6;
    _s10SnippetKit11AppPunchoutVACSEAAWlTm_4(&lazy protocol witness table cache variable for type SpeakableString and conformance SpeakableString, MEMORY[0x277D55C48], MEMORY[0x277D55C60]);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    outlined assign with take of AppPunchout?(v38, v44 + v86, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    v109 = 7;
    v56 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v57 = v85;
    *v85 = v56;
    v57[1] = v58;
    v108[0] = 8;
    v59 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v60 = v84;
    *v84 = v59;
    v60[1] = v61;
    v107 = 9;
    v62 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v63 = v83;
    *v83 = v62;
    v63[1] = v64;
    v106 = 10;
    v65 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v66 = v98;
    *v98 = v65;
    v66[1] = v67;
    v105 = 11;
    v68 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v69 = v78;
    *v78 = v68;
    v69[1] = v70;
    v104 = 12;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    outlined assign with take of AppPunchout?(v39, &v99[v82], &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    v103 = 13;
    v71 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v72 = v77[0];
    *v77[0] = v71;
    *(v72 + 8) = v73;
    v102 = 14;
    _s10SnippetKit11AppPunchoutVACSEAAWlTm_4(&lazy protocol witness table cache variable for type SnippetHeaderModel and conformance SnippetHeaderModel, type metadata accessor for SnippetHeaderModel, &protocol conformance descriptor for SnippetHeaderModel);
    v74 = v97;
    v75 = v100;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v40 + 8))(v75, v74);
    v76 = v99;
    outlined assign with take of AppPunchout?(v81, &v99[v79], &_s10WellnessUI18SnippetHeaderModelVSgMd, &_s10WellnessUI18SnippetHeaderModelVSgMR);
    outlined init with copy of TemperatureQueryModel(v76, v80);
  }

  __swift_destroy_boxed_opaque_existential_1(v101);
  return outlined destroy of TemperatureQueryModel(v76);
}

uint64_t outlined destroy of TemperatureQueryModel(uint64_t a1)
{
  Model = type metadata accessor for TemperatureQueryModel(0);
  (*(*(Model - 8) + 8))(a1, Model);
  return a1;
}

uint64_t outlined init with copy of TemperatureQueryModel(uint64_t a1, uint64_t a2)
{
  Model = type metadata accessor for TemperatureQueryModel(0);
  (*(*(Model - 8) + 16))(a2, a1, Model);
  return a2;
}

uint64_t _s10SnippetKit11AppPunchoutVACSEAAWlTm_4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void type metadata completion function for TemperatureQueryModel(uint64_t a1)
{
  _s10SnippetKit11AppPunchoutVSgMaTm_1(319, &lazy cache variable for type metadata for AppPunchout?, MEMORY[0x277D62880]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Double?(319, &lazy cache variable for type metadata for Double?, MEMORY[0x277D839F8]);
    if (v2 <= 0x3F)
    {
      _s10SnippetKit11AppPunchoutVSgMaTm_1(319, &lazy cache variable for type metadata for SpeakableString?, MEMORY[0x277D55C48]);
      if (v3 <= 0x3F)
      {
        type metadata accessor for Double?(319, &lazy cache variable for type metadata for String?, MEMORY[0x277D837D0]);
        if (v4 <= 0x3F)
        {
          _s10SnippetKit11AppPunchoutVSgMaTm_1(319, &lazy cache variable for type metadata for SnippetHeaderModel?, type metadata accessor for SnippetHeaderModel);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t specialized TemperatureQueryModel.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x68636E7550707061 && a2 == 0xEB0000000074756FLL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x5665676172657661 && a2 == 0xEC00000065756C61 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65756C615678616DLL && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x65756C61566E696DLL && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6563655274736F6DLL && a2 == 0xEF65756C6156746ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000273EB12D0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6562614C65746164 && a2 == 0xE90000000000006CLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000273EB1070 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x65756C615678616DLL && a2 == 0xEE00676E69727453 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x65756C61566E696DLL && a2 == 0xEE00676E69727453 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000273EB1090 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD00000000000001BLL && 0x8000000273EB12F0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x6972745374696E75 && a2 == 0xEA0000000000676ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000273EB10D0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000273EB0F30 == a2)
  {

    return 14;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 14;
    }

    else
    {
      return 15;
    }
  }
}

uint64_t WatchRingsModel.exerciseGoalValue.setter(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t WatchRingsModel.exerciseTotalValue.setter(uint64_t result, char a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2 & 1;
  return result;
}

uint64_t WatchRingsModel.moveGoalValue.setter(uint64_t result, char a2)
{
  *(v2 + 32) = result;
  *(v2 + 40) = a2 & 1;
  return result;
}

uint64_t WatchRingsModel.moveTotalValue.setter(uint64_t result, char a2)
{
  *(v2 + 48) = result;
  *(v2 + 56) = a2 & 1;
  return result;
}

uint64_t WatchRingsModel.standGoalValue.setter(uint64_t result, char a2)
{
  *(v2 + 64) = result;
  *(v2 + 72) = a2 & 1;
  return result;
}

uint64_t WatchRingsModel.standTotalValue.setter(uint64_t result, char a2)
{
  *(v2 + 80) = result;
  *(v2 + 88) = a2 & 1;
  return result;
}

void __swiftcall WatchRingsModel.init(exerciseGoalValue:exerciseTotalValue:moveGoalValue:moveTotalValue:standGoalValue:standTotalValue:)(WellnessUI::WatchRingsModel *__return_ptr retstr, Swift::Double exerciseGoalValue, Swift::Double exerciseTotalValue, Swift::Double moveGoalValue, Swift::Double moveTotalValue, Swift::Double standGoalValue, Swift::Double standTotalValue)
{
  retstr->exerciseGoalValue.value = exerciseGoalValue;
  retstr->exerciseGoalValue.is_nil = 0;
  *(&retstr->exerciseTotalValue.value + 7) = exerciseTotalValue;
  BYTE6(retstr->moveGoalValue.value) = 0;
  *(&retstr->moveTotalValue.value + 5) = moveGoalValue;
  BYTE4(retstr->standGoalValue.value) = 0;
  *(&retstr->standTotalValue.value + 3) = moveTotalValue;
  BYTE2(retstr[1].exerciseGoalValue.value) = 0;
  *(&retstr[1].exerciseTotalValue.value + 1) = standGoalValue;
  LOBYTE(retstr[1].moveGoalValue.value) = 0;
  *&retstr[1].moveGoalValue.is_nil = standTotalValue;
  HIBYTE(retstr[1].moveTotalValue.value) = 0;
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance WatchRingsModel.CodingKeys()
{
  v1 = *v0;
  v2 = 0x6C616F4765766F6DLL;
  v3 = 0x61746F5465766F6DLL;
  v4 = 0x616F47646E617473;
  if (v1 != 4)
  {
    v4 = 0x746F54646E617473;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  if (v1 == 1)
  {
    v2 = 0xD000000000000012;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000011;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance WatchRingsModel.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized WatchRingsModel.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance WatchRingsModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WatchRingsModel.CodingKeys and conformance WatchRingsModel.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance WatchRingsModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WatchRingsModel.CodingKeys and conformance WatchRingsModel.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t WatchRingsModel.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10WellnessUI15WatchRingsModelV10CodingKeys33_6B278D95640E583F76DFFAB296B8A9EBLLOGMd, &_ss22KeyedEncodingContainerVy10WellnessUI15WatchRingsModelV10CodingKeys33_6B278D95640E583F76DFFAB296B8A9EBLLOGMR);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v10 - v5;
  v19 = *(v1 + 16);
  v18 = *(v1 + 24);
  v17 = *(v1 + 32);
  v16 = *(v1 + 40);
  v15 = *(v1 + 48);
  v14 = *(v1 + 56);
  v13 = *(v1 + 64);
  v7 = *(v1 + 72);
  v10 = *(v1 + 80);
  v11 = *(v1 + 88);
  v12 = v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type WatchRingsModel.CodingKeys and conformance WatchRingsModel.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v26 = 0;
  v8 = v20;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (v8)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v25 = 1;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v24 = 2;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v23 = 3;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v22 = 4;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v21 = 5;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  return (*(v4 + 8))(v6, v3);
}

unint64_t lazy protocol witness table accessor for type WatchRingsModel.CodingKeys and conformance WatchRingsModel.CodingKeys()
{
  result = lazy protocol witness table cache variable for type WatchRingsModel.CodingKeys and conformance WatchRingsModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type WatchRingsModel.CodingKeys and conformance WatchRingsModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WatchRingsModel.CodingKeys and conformance WatchRingsModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WatchRingsModel.CodingKeys and conformance WatchRingsModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type WatchRingsModel.CodingKeys and conformance WatchRingsModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WatchRingsModel.CodingKeys and conformance WatchRingsModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WatchRingsModel.CodingKeys and conformance WatchRingsModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type WatchRingsModel.CodingKeys and conformance WatchRingsModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WatchRingsModel.CodingKeys and conformance WatchRingsModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WatchRingsModel.CodingKeys and conformance WatchRingsModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type WatchRingsModel.CodingKeys and conformance WatchRingsModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WatchRingsModel.CodingKeys and conformance WatchRingsModel.CodingKeys);
  }

  return result;
}

uint64_t WatchRingsModel.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10WellnessUI15WatchRingsModelV10CodingKeys33_6B278D95640E583F76DFFAB296B8A9EBLLOGMd, &_ss22KeyedDecodingContainerVy10WellnessUI15WatchRingsModelV10CodingKeys33_6B278D95640E583F76DFFAB296B8A9EBLLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v29 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type WatchRingsModel.CodingKeys and conformance WatchRingsModel.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v43 = 0;
    v9 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v37 = v10 & 1;
    v42 = 1;
    v11 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v36 = v12 & 1;
    v41 = 2;
    v13 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v35 = v14 & 1;
    v40 = 3;
    v31 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v34 = v15 & 1;
    v39 = 4;
    v30 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v33 = v17 & 1;
    v38 = 5;
    v18 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v19 = *(v6 + 8);
    v29 = v18;
    v20 = v8;
    v22 = v21;
    v19(v20, v5);
    v32 = v22 & 1;
    v23 = v37;
    v24 = v36;
    v25 = v35;
    v26 = v34;
    v27 = v33;
    *a2 = v9;
    *(a2 + 8) = v23;
    *(a2 + 16) = v11;
    *(a2 + 24) = v24;
    *(a2 + 32) = v13;
    *(a2 + 40) = v25;
    v28 = v30;
    *(a2 + 48) = v31;
    *(a2 + 56) = v26;
    *(a2 + 64) = v28;
    *(a2 + 72) = v27;
    *(a2 + 80) = v29;
    *(a2 + 88) = v22 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
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

uint64_t getEnumTagSinglePayload for WatchRingsModel(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 89))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for WatchRingsModel(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
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

  *(result + 89) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for WatchRingsModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for WatchRingsModel.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t specialized WatchRingsModel.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x8000000273EB1310 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000273EB1330 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C616F4765766F6DLL && a2 == 0xED000065756C6156 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x61746F5465766F6DLL && a2 == 0xEE0065756C61566CLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x616F47646E617473 && a2 == 0xEE0065756C61566CLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x746F54646E617473 && a2 == 0xEF65756C61566C61)
  {

    return 5;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t type metadata accessor for OxygenSaturationQueryModel(uint64_t a1)
{
  result = type metadata singleton initialization cache for OxygenSaturationQueryModel;
  if (!type metadata singleton initialization cache for OxygenSaturationQueryModel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t OxygenSaturationQueryModel.averageValue.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for OxygenSaturationQueryModel(0);
  v6 = v2 + *(result + 20);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t OxygenSaturationQueryModel.maxValue.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for OxygenSaturationQueryModel(0);
  v6 = v2 + *(result + 24);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t OxygenSaturationQueryModel.minValue.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for OxygenSaturationQueryModel(0);
  v6 = v2 + *(result + 28);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t OxygenSaturationQueryModel.mostRecentValue.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for OxygenSaturationQueryModel(0);
  v6 = v2 + *(result + 32);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t OxygenSaturationQueryModel.averageValueString.getter()
{
  v1 = *(v0 + *(type metadata accessor for OxygenSaturationQueryModel(0) + 40));

  return v1;
}

void OxygenSaturationQueryModel.averageValueString.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for OxygenSaturationQueryModel(0) + 40));

  *v5 = a1;
  v5[1] = a2;
}

uint64_t OxygenSaturationQueryModel.maxValueString.getter()
{
  v1 = *(v0 + *(type metadata accessor for OxygenSaturationQueryModel(0) + 44));

  return v1;
}

void OxygenSaturationQueryModel.maxValueString.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for OxygenSaturationQueryModel(0) + 44));

  *v5 = a1;
  v5[1] = a2;
}

uint64_t OxygenSaturationQueryModel.minValueString.getter()
{
  v1 = *(v0 + *(type metadata accessor for OxygenSaturationQueryModel(0) + 48));

  return v1;
}

void OxygenSaturationQueryModel.minValueString.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for OxygenSaturationQueryModel(0) + 48));

  *v5 = a1;
  v5[1] = a2;
}

uint64_t OxygenSaturationQueryModel.mostRecentValueString.getter()
{
  v1 = *(v0 + *(type metadata accessor for OxygenSaturationQueryModel(0) + 52));

  return v1;
}

void OxygenSaturationQueryModel.mostRecentValueString.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for OxygenSaturationQueryModel(0) + 52));

  *v5 = a1;
  v5[1] = a2;
}

uint64_t OxygenSaturationQueryModel.unit.getter()
{
  v1 = *(v0 + *(type metadata accessor for OxygenSaturationQueryModel(0) + 56));

  return v1;
}

void OxygenSaturationQueryModel.unit.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for OxygenSaturationQueryModel(0) + 56));

  *v5 = a1;
  v5[1] = a2;
}

uint64_t OxygenSaturationQueryModel.averageLabelString.getter()
{
  v1 = *(v0 + *(type metadata accessor for OxygenSaturationQueryModel(0) + 60));

  return v1;
}

void OxygenSaturationQueryModel.averageLabelString.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for OxygenSaturationQueryModel(0) + 60));

  *v5 = a1;
  v5[1] = a2;
}

uint64_t OxygenSaturationQueryModel.init(averageValue:maxValue:minValue:mostRecentValue:unit:dateLabel:url:averageLabelString:headerModel:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X6>, int a8@<W7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  LODWORD(v80) = a8;
  LODWORD(v76) = a6;
  v86 = a15;
  v87 = a16;
  v84 = a13;
  v85 = a14;
  v82 = a11;
  v83 = a12;
  v81 = a10;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit11AppPunchoutVSgMd, &_s10SnippetKit11AppPunchoutVSgMR);
  MEMORY[0x28223BE20](v23 - 8);
  v25 = &v69 - v24;
  v78 = type metadata accessor for AppPunchout();
  v26 = *(v78 - 8);
  v77 = *(v26 + 56);
  v79 = v26 + 56;
  v77(a9, 1, 1, v78);
  Model = type metadata accessor for OxygenSaturationQueryModel(0);
  v28 = Model[9];
  v69 = v28;
  v29 = type metadata accessor for SpeakableString();
  (*(*(v29 - 8) + 56))(a9 + v28, 1, 1, v29);
  v30 = Model[16];
  v75 = v30;
  v31 = type metadata accessor for SnippetHeaderModel(0);
  (*(*(v31 - 8) + 56))(a9 + v30, 1, 1, v31);
  if ((a1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v32 = a1;
  }

  else
  {
    v32 = 0;
  }

  if (a2)
  {
    v33 = a1;
  }

  else
  {
    v33 = v32;
  }

  v74 = v33;
  v34 = a9 + Model[5];
  *v34 = v33;
  v72 = a2 & 1 | ((a1 & 0x7FFFFFFFFFFFFFFFLL) == 0);
  *(v34 + 8) = v72;
  if ((a3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v35 = a3;
  }

  else
  {
    v35 = 0;
  }

  if (a4)
  {
    v36 = a3;
  }

  else
  {
    v36 = v35;
  }

  v73 = v36;
  v37 = a9 + Model[6];
  *v37 = v36;
  v70 = a4 & 1 | ((a3 & 0x7FFFFFFFFFFFFFFFLL) == 0);
  *(v37 + 8) = v70;
  if ((a5 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v38 = a5;
  }

  else
  {
    v38 = 0;
  }

  v39 = v76;
  if (v76)
  {
    v40 = a5;
  }

  else
  {
    v40 = v38;
  }

  v71 = v40;
  v41 = a9 + Model[7];
  *v41 = v40;
  v42 = v39 & 1 | ((a5 & 0x7FFFFFFFFFFFFFFFLL) == 0);
  *(v41 + 8) = v42;
  v43 = (a7 & 0x7FFFFFFFFFFFFFFFLL) == 0;
  if ((a7 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v44 = a7;
  }

  else
  {
    v44 = 0;
  }

  v45 = v80;
  if (v80)
  {
    v46 = a7;
  }

  else
  {
    v46 = v44;
  }

  v76 = v46;
  v47 = a9 + Model[8];
  v48 = Model[14];
  v49 = Model[15];
  v50 = (a9 + Model[10]);
  v51 = (a9 + Model[11]);
  v52 = (a9 + Model[12]);
  v80 = (a9 + Model[13]);
  *v47 = v46;
  v53 = (v45 | v43) & 1;
  *(v47 + 8) = v53;
  v54 = (a9 + v48);
  v55 = (a9 + v49);
  v56 = v82;
  *v54 = v81;
  v54[1] = v56;
  v57 = v83;
  outlined assign with copy of SpeakableString?(v83, a9 + v69, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v58 = v84;
  OxygenSaturationQueryModel.createAppPunchout(url:)(v84);
  v77(v25, 0, 1, v78);
  outlined assign with take of AppPunchout?(v25, a9, &_s10SnippetKit11AppPunchoutVSgMd, &_s10SnippetKit11AppPunchoutVSgMR);
  v59 = v86;
  *v55 = v85;
  v55[1] = v59;
  v60 = v87;
  outlined assign with copy of SpeakableString?(v87, a9 + v75, &_s10WellnessUI18SnippetHeaderModelVSgMd, &_s10WellnessUI18SnippetHeaderModelVSgMR);
  *v50 = GenericQueryModel.roundUp(inputValue:)(v74, v72);
  v50[1] = v61;
  *v51 = GenericQueryModel.roundUp(inputValue:)(v73, v70);
  v51[1] = v62;
  *v52 = GenericQueryModel.roundUp(inputValue:)(v71, v42);
  v52[1] = v63;
  v64 = GenericQueryModel.roundUp(inputValue:)(v76, v53);
  v66 = v65;
  outlined destroy of AppPunchout?(v60, &_s10WellnessUI18SnippetHeaderModelVSgMd, &_s10WellnessUI18SnippetHeaderModelVSgMR);
  outlined destroy of AppPunchout?(v58, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  result = outlined destroy of AppPunchout?(v57, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v68 = v80;
  *v80 = v64;
  v68[1] = v66;
  return result;
}

uint64_t OxygenSaturationQueryModel.createAppPunchout(url:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v10 - v3;
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AppPunchout?(a1, v4, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    outlined destroy of AppPunchout?(v4, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    return AppPunchout.init(punchOutUri:bundleId:appDisplayName:)();
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    URL.absoluteString.getter();
    AppPunchout.init(punchOutUri:bundleId:appDisplayName:)();
    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t OxygenSaturationQueryModel.CodingKeys.stringValue.getter(char a1)
{
  result = 0x68636E7550707061;
  switch(a1)
  {
    case 1:
      return 0x5665676172657661;
    case 2:
      v3 = 1450729837;
      return v3 | 0x65756C6100000000;
    case 3:
      v3 = 1450076525;
      return v3 | 0x65756C6100000000;
    case 4:
      return 0x6563655274736F6DLL;
    case 5:
      return 0x6562614C65746164;
    case 6:
      return 0xD000000000000012;
    case 7:
      v4 = 1450729837;
      goto LABEL_16;
    case 8:
      v4 = 1450076525;
LABEL_16:
      result = v4 | 0x65756C6100000000;
      break;
    case 9:
      result = 0xD000000000000015;
      break;
    case 10:
      result = 1953066613;
      break;
    case 11:
      result = 0xD000000000000012;
      break;
    case 12:
      result = 0xD000000000000012;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance OxygenSaturationQueryModel.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized OxygenSaturationQueryModel.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance OxygenSaturationQueryModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type OxygenSaturationQueryModel.CodingKeys and conformance OxygenSaturationQueryModel.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance OxygenSaturationQueryModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type OxygenSaturationQueryModel.CodingKeys and conformance OxygenSaturationQueryModel.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t OxygenSaturationQueryModel.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10WellnessUI26OxygenSaturationQueryModelV10CodingKeys33_C482C22E171E0320BE012FE33011F878LLOGMd, &_ss22KeyedEncodingContainerVy10WellnessUI26OxygenSaturationQueryModelV10CodingKeys33_C482C22E171E0320BE012FE33011F878LLOGMR);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type OxygenSaturationQueryModel.CodingKeys and conformance OxygenSaturationQueryModel.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  type metadata accessor for AppPunchout();
  _s10SnippetKit11AppPunchoutVACSEAAWlTm_5(&lazy protocol witness table cache variable for type AppPunchout and conformance AppPunchout, MEMORY[0x277D62880], MEMORY[0x277D62888]);
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (!v1)
  {
    type metadata accessor for OxygenSaturationQueryModel(0);
    v8[14] = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v8[13] = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v8[12] = 3;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v8[11] = 4;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v8[10] = 5;
    type metadata accessor for SpeakableString();
    _s10SnippetKit11AppPunchoutVACSEAAWlTm_5(&lazy protocol witness table cache variable for type SpeakableString and conformance SpeakableString, MEMORY[0x277D55C48], MEMORY[0x277D55C50]);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v8[9] = 6;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v8[8] = 7;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v8[7] = 8;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v8[6] = 9;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v8[5] = 10;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v8[4] = 11;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v8[3] = 12;
    type metadata accessor for SnippetHeaderModel(0);
    _s10SnippetKit11AppPunchoutVACSEAAWlTm_5(&lazy protocol witness table cache variable for type SnippetHeaderModel and conformance SnippetHeaderModel, type metadata accessor for SnippetHeaderModel, &protocol conformance descriptor for SnippetHeaderModel);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t lazy protocol witness table accessor for type OxygenSaturationQueryModel.CodingKeys and conformance OxygenSaturationQueryModel.CodingKeys()
{
  result = lazy protocol witness table cache variable for type OxygenSaturationQueryModel.CodingKeys and conformance OxygenSaturationQueryModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type OxygenSaturationQueryModel.CodingKeys and conformance OxygenSaturationQueryModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OxygenSaturationQueryModel.CodingKeys and conformance OxygenSaturationQueryModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OxygenSaturationQueryModel.CodingKeys and conformance OxygenSaturationQueryModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type OxygenSaturationQueryModel.CodingKeys and conformance OxygenSaturationQueryModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OxygenSaturationQueryModel.CodingKeys and conformance OxygenSaturationQueryModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OxygenSaturationQueryModel.CodingKeys and conformance OxygenSaturationQueryModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type OxygenSaturationQueryModel.CodingKeys and conformance OxygenSaturationQueryModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OxygenSaturationQueryModel.CodingKeys and conformance OxygenSaturationQueryModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OxygenSaturationQueryModel.CodingKeys and conformance OxygenSaturationQueryModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type OxygenSaturationQueryModel.CodingKeys and conformance OxygenSaturationQueryModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OxygenSaturationQueryModel.CodingKeys and conformance OxygenSaturationQueryModel.CodingKeys);
  }

  return result;
}

uint64_t OxygenSaturationQueryModel.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v89 = a1;
  v72 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WellnessUI18SnippetHeaderModelVSgMd, &_s10WellnessUI18SnippetHeaderModelVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v73 = &v68 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v83 = &v68 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit11AppPunchoutVSgMd, &_s10SnippetKit11AppPunchoutVSgMR);
  MEMORY[0x28223BE20](v6 - 8);
  v84 = &v68 - v7;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10WellnessUI26OxygenSaturationQueryModelV10CodingKeys33_C482C22E171E0320BE012FE33011F878LLOGMd, &_ss22KeyedDecodingContainerVy10WellnessUI26OxygenSaturationQueryModelV10CodingKeys33_C482C22E171E0320BE012FE33011F878LLOGMR);
  v82 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v88 = &v68 - v8;
  Model = type metadata accessor for OxygenSaturationQueryModel(0);
  v10 = (Model - 8);
  MEMORY[0x28223BE20](Model);
  v12 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for AppPunchout();
  v14 = *(*(v13 - 8) + 56);
  v81 = v13;
  v14(v12, 1, 1);
  v15 = &v12[v10[7]];
  *v15 = 0;
  v80 = v15;
  v15[8] = 1;
  v16 = &v12[v10[8]];
  *v16 = 0;
  v79 = v16;
  v16[8] = 1;
  v17 = &v12[v10[9]];
  *v17 = 0;
  v78 = v17;
  v17[8] = 1;
  v18 = &v12[v10[10]];
  *v18 = 0;
  v76 = v18;
  v18[8] = 1;
  v19 = v10[11];
  v20 = type metadata accessor for SpeakableString();
  v21 = *(*(v20 - 8) + 56);
  v75 = v19;
  v77 = v20;
  v21(&v12[v19], 1, 1);
  v22 = &v12[v10[12]];
  *v22 = 0;
  *(v22 + 1) = 0;
  v74 = v22;
  v23 = &v12[v10[13]];
  *v23 = 0;
  *(v23 + 1) = 0;
  v24 = &v12[v10[14]];
  *v24 = 0;
  *(v24 + 1) = 0;
  v25 = &v12[v10[15]];
  *v25 = 0;
  *(v25 + 1) = 0;
  v26 = &v12[v10[16]];
  *v26 = 0;
  *(v26 + 1) = 0;
  v27 = &v12[v10[17]];
  *v27 = 0;
  v27[1] = 0;
  v28 = v10[18];
  v29 = type metadata accessor for SnippetHeaderModel(0);
  v30 = *(*(v29 - 8) + 56);
  v87 = v12;
  v71 = v28;
  v30(&v12[v28], 1, 1, v29);
  __swift_project_boxed_opaque_existential_1(v89, v89[3]);
  lazy protocol witness table accessor for type OxygenSaturationQueryModel.CodingKeys and conformance OxygenSaturationQueryModel.CodingKeys();
  v31 = v86;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v31)
  {
    v67 = v87;
  }

  else
  {
    v32 = v80;
    v86 = v23;
    v70 = v24;
    v69 = v25;
    v68 = v26;
    v33 = v82;
    v34 = v83;
    v102 = 0;
    _s10SnippetKit11AppPunchoutVACSEAAWlTm_5(&lazy protocol witness table cache variable for type AppPunchout and conformance AppPunchout, MEMORY[0x277D62880], MEMORY[0x277D62890]);
    v35 = v84;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v37 = v35;
    v38 = v87;
    outlined assign with take of AppPunchout?(v37, v87, &_s10SnippetKit11AppPunchoutVSgMd, &_s10SnippetKit11AppPunchoutVSgMR);
    v101 = 1;
    *v32 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v32[8] = v39 & 1;
    v100 = 2;
    v40 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v41 = v79;
    *v79 = v40;
    *(v41 + 8) = v42 & 1;
    v99 = 3;
    v43 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v44 = v78;
    *v78 = v43;
    *(v44 + 8) = v45 & 1;
    v98 = 4;
    v46 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v47 = v76;
    *v76 = v46;
    *(v47 + 8) = v48 & 1;
    v97 = 5;
    _s10SnippetKit11AppPunchoutVACSEAAWlTm_5(&lazy protocol witness table cache variable for type SpeakableString and conformance SpeakableString, MEMORY[0x277D55C48], MEMORY[0x277D55C60]);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    outlined assign with take of AppPunchout?(v34, v38 + v75, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    v96 = 6;
    v49 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v50 = v74;
    *v74 = v49;
    v50[1] = v51;
    v95 = 7;
    v52 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v53 = v86;
    *v86 = v52;
    v53[1] = v54;
    v94[0] = 8;
    v55 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v56 = v70;
    *v70 = v55;
    v56[1] = v57;
    v93 = 9;
    v58 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v59 = v69;
    *v69 = v58;
    v59[1] = v60;
    v92 = 10;
    v61 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v62 = v68;
    *v68 = v61;
    v62[1] = v63;
    v91 = 11;
    *v27 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v27[1] = v64;
    v90 = 12;
    _s10SnippetKit11AppPunchoutVACSEAAWlTm_5(&lazy protocol witness table cache variable for type SnippetHeaderModel and conformance SnippetHeaderModel, type metadata accessor for SnippetHeaderModel, &protocol conformance descriptor for SnippetHeaderModel);
    v65 = v85;
    v66 = v88;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v33 + 8))(v66, v65);
    v67 = v87;
    outlined assign with take of AppPunchout?(v73, &v87[v71], &_s10WellnessUI18SnippetHeaderModelVSgMd, &_s10WellnessUI18SnippetHeaderModelVSgMR);
    outlined init with copy of OxygenSaturationQueryModel(v67, v72);
  }

  __swift_destroy_boxed_opaque_existential_1(v89);
  return outlined destroy of OxygenSaturationQueryModel(v67);
}

uint64_t outlined destroy of OxygenSaturationQueryModel(uint64_t a1)
{
  Model = type metadata accessor for OxygenSaturationQueryModel(0);
  (*(*(Model - 8) + 8))(a1, Model);
  return a1;
}

uint64_t outlined init with copy of OxygenSaturationQueryModel(uint64_t a1, uint64_t a2)
{
  Model = type metadata accessor for OxygenSaturationQueryModel(0);
  (*(*(Model - 8) + 16))(a2, a1, Model);
  return a2;
}

uint64_t _s10SnippetKit11AppPunchoutVACSEAAWlTm_5(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void type metadata completion function for OxygenSaturationQueryModel(uint64_t a1)
{
  _s10SnippetKit11AppPunchoutVSgMaTm_1(319, &lazy cache variable for type metadata for AppPunchout?, MEMORY[0x277D62880]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Double?(319, &lazy cache variable for type metadata for Double?, MEMORY[0x277D839F8]);
    if (v2 <= 0x3F)
    {
      _s10SnippetKit11AppPunchoutVSgMaTm_1(319, &lazy cache variable for type metadata for SpeakableString?, MEMORY[0x277D55C48]);
      if (v3 <= 0x3F)
      {
        type metadata accessor for Double?(319, &lazy cache variable for type metadata for String?, MEMORY[0x277D837D0]);
        if (v4 <= 0x3F)
        {
          _s10SnippetKit11AppPunchoutVSgMaTm_1(319, &lazy cache variable for type metadata for SnippetHeaderModel?, type metadata accessor for SnippetHeaderModel);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for OxygenSaturationQueryModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF4)
  {
    goto LABEL_17;
  }

  if (a2 + 12 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 12) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 12;
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

      return (*a1 | (v4 << 8)) - 12;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v8 = v6 - 13;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for OxygenSaturationQueryModel.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF4)
  {
    v4 = 0;
  }

  if (a2 > 0xF3)
  {
    v5 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
    *result = a2 + 12;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t specialized OxygenSaturationQueryModel.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x68636E7550707061 && a2 == 0xEB0000000074756FLL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x5665676172657661 && a2 == 0xEC00000065756C61 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65756C615678616DLL && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x65756C61566E696DLL && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6563655274736F6DLL && a2 == 0xEF65756C6156746ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6562614C65746164 && a2 == 0xE90000000000006CLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000273EB1070 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x65756C615678616DLL && a2 == 0xEE00676E69727453 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x65756C61566E696DLL && a2 == 0xEE00676E69727453 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000273EB1090 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 1953066613 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000273EB10D0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000273EB0F30 == a2)
  {

    return 12;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 12;
    }

    else
    {
      return 13;
    }
  }
}

uint64_t OxygenSaturationQuerySnippet.init(model:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = (a2 + *(type metadata accessor for OxygenSaturationQuerySnippet(0) + 20));
  type metadata accessor for Context();
  _s9SnippetUI7ContextCAC7Combine16ObservableObjectAAWlTm_2(&lazy protocol witness table cache variable for type Context and conformance Context, MEMORY[0x277D63F68], MEMORY[0x277D63F58]);
  *v4 = EnvironmentObject.init()();
  v4[1] = v5;
  return outlined init with take of OxygenSaturationQueryModel(a1, a2, type metadata accessor for OxygenSaturationQueryModel);
}

uint64_t type metadata accessor for OxygenSaturationQuerySnippet(uint64_t a1)
{
  result = type metadata singleton initialization cache for OxygenSaturationQuerySnippet;
  if (!type metadata singleton initialization cache for OxygenSaturationQuerySnippet)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t OxygenSaturationQuerySnippet.body.getter@<X0>(uint64_t *a1@<X8>)
{
  v156 = a1;
  Snippet = type metadata accessor for OxygenSaturationQuerySnippet(0);
  v143 = *(Snippet - 8);
  MEMORY[0x28223BE20](Snippet - 8);
  v144 = v3;
  v145 = &v120 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SnippetUI14ComponentStackVy05SwiftB09TupleViewVy08WellnessB00a6HeaderG0V_AD03AnyG0VtGGMd, &_s9SnippetUI14ComponentStackVy05SwiftB09TupleViewVy08WellnessB00a6HeaderG0V_AD03AnyG0VtGGMR);
  v149 = *(v4 - 8);
  v150 = v4;
  MEMORY[0x28223BE20](v4);
  v146 = &v120 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP07SnippetB0E15componentTapped12isNavigation7performQrSb_yyctFQOyAD14ComponentStackVyAA05TupleC0Vy08WellnessB00d6HeaderC0V_AA03AnyC0VtGG_Qo_Md, &_s7SwiftUI4ViewP07SnippetB0E15componentTapped12isNavigation7performQrSb_yyctFQOyAD14ComponentStackVyAA05TupleC0Vy08WellnessB00d6HeaderC0V_AA03AnyC0VtGG_Qo_MR);
  v151 = *(v6 - 8);
  v152 = v6;
  MEMORY[0x28223BE20](v6);
  v147 = &v120 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v148 = &v120 - v9;
  v135 = type metadata accessor for SingleDataPointView(0);
  MEMORY[0x28223BE20](v135);
  v134 = (&v120 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v138 = type metadata accessor for MultipleDataPointView(0);
  MEMORY[0x28223BE20](v138);
  v136 = (&v120 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v12);
  v137 = &v120 - v13;
  v14 = type metadata accessor for SnippetHeaderView(0);
  v139 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v140 = v15;
  v141 = &v120 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v153 = &v120 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit11AppPunchoutVSgMd, &_s10SnippetKit11AppPunchoutVSgMR);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v120 - v19;
  v21 = type metadata accessor for AppPunchout();
  v154 = *(v21 - 8);
  v155 = v21;
  MEMORY[0x28223BE20](v21);
  v23 = &v120 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = v22;
  MEMORY[0x28223BE20](v24);
  v26 = &v120 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  MEMORY[0x28223BE20](v27 - 8);
  v29 = &v120 - v28;
  v30 = type metadata accessor for SpeakableString();
  v31 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v33 = &v120 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  Model = type metadata accessor for OxygenSaturationQueryModel(0);
  v35 = (v1 + *(Model + 56));
  if (!v35[1])
  {
    goto LABEL_7;
  }

  v36 = Model;
  v133 = v35[1];
  v132 = *v35;
  outlined init with copy of AppPunchout?(v1 + *(Model + 36), v29, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  if ((*(v31 + 48))(v29, 1, v30) != 1)
  {
    v131 = v23;
    v40 = v26;
    (*(v31 + 32))(v33, v29, v30);
    outlined init with copy of AppPunchout?(v1, v20, &_s10SnippetKit11AppPunchoutVSgMd, &_s10SnippetKit11AppPunchoutVSgMR);
    v42 = v154;
    v41 = v155;
    if ((*(v154 + 48))(v20, 1, v155) == 1)
    {
      (*(v31 + 8))(v33, v30);
      v37 = &_s10SnippetKit11AppPunchoutVSgMd;
      v38 = &_s10SnippetKit11AppPunchoutVSgMR;
      v39 = v20;
      goto LABEL_6;
    }

    v129 = v30;
    v44 = v42 + 32;
    v45 = *(v42 + 32);
    v46 = v40;
    v128 = v44;
    v127 = v45;
    v45(v40, v20, v41);
    v47 = v153;
    outlined init with copy of AppPunchout?(v1 + v36[16], v153, &_s10WellnessUI18SnippetHeaderModelVSgMd, &_s10WellnessUI18SnippetHeaderModelVSgMR);
    v48 = *(v14 + 20);
    *(v47 + v48) = swift_getKeyPath();
    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMR);
    swift_storeEnumTagMultiPayload();
    v50 = *(v14 + 24);
    *(v47 + v50) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA19ColorSchemeContrastO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA19ColorSchemeContrastO_GMR);
    swift_storeEnumTagMultiPayload();
    v51 = v1 + v36[5];
    v52 = *(v51 + 8);
    v53 = v33;
    v130 = v46;
    if ((v52 & 1) == 0)
    {
      v54 = *v51;
      if (*v51 > 0.0)
      {
        v55 = (v1 + v36[12]);
        v56 = *v55;
        v57 = v55[1];
        if (v57)
        {
          v58 = v36[11];
          v59 = *(v1 + v58 + 8);
          if (v59)
          {
            v134 = v56;
            v124 = v49;
            v126 = v31;
            v60 = v36[10];
            v61 = *(v1 + v60 + 8);
LABEL_16:
            v121 = *(v1 + v60);
            v123 = *(v1 + v58);

            v62 = v133;

            v63 = v61;
            v64 = SpeakableString.print.getter();
            v135 = v53;
            v65 = v64;
            v120 = v66;
            v67 = v36[15];
            v125 = v1;
            v68 = (v1 + v67);
            v69 = v68[1];
            v122 = *v68;
            type metadata accessor for Context();
            _s9SnippetUI7ContextCAC7Combine16ObservableObjectAAWlTm_2(&lazy protocol witness table cache variable for type Context and conformance Context, MEMORY[0x277D63F68], MEMORY[0x277D63F58]);

            v70 = EnvironmentObject.init()();
            v71 = v57;
            v72 = v136;
            *v136 = v70;
            *(v72 + 8) = v73;
            v74 = v138;
            v75 = *(v138 + 20);
            *(v72 + v75) = swift_getKeyPath();
            swift_storeEnumTagMultiPayload();
            v76 = v72 + v74[6];
            *v76 = v54;
            *(v76 + 8) = 0;
            v77 = (v72 + v74[7]);
            *v77 = v121;
            v77[1] = v63;
            v78 = (v72 + v74[8]);
            *v78 = v134;
            v78[1] = v71;
            v79 = (v72 + v74[9]);
            *v79 = v123;
            v79[1] = v59;
            v80 = (v72 + v74[10]);
            *v80 = 0;
            v80[1] = 0;
            v81 = (v72 + v74[11]);
            *v81 = v132;
            v81[1] = v62;
            v82 = (v72 + v74[12]);
            v83 = v120;
            *v82 = v65;
            v82[1] = v83;
            *(v72 + v74[13]) = 1;
            v84 = 0x65676172657641;
            if (v69)
            {
              v84 = v122;
            }

            v85 = 0xE700000000000000;
            if (v69)
            {
              v85 = v69;
            }

            v86 = (v72 + v74[14]);
            *v86 = v84;
            v86[1] = v85;
            outlined init with take of OxygenSaturationQueryModel(v72, v137, type metadata accessor for MultipleDataPointView);
            _s9SnippetUI7ContextCAC7Combine16ObservableObjectAAWlTm_2(&lazy protocol witness table cache variable for type MultipleDataPointView and conformance MultipleDataPointView, type metadata accessor for MultipleDataPointView, &protocol conformance descriptor for MultipleDataPointView);
            v87 = AnyView.init<A>(_:)();
            v46 = v130;
LABEL_23:
            v100 = v141;
            outlined init with copy of OxygenSaturationQueryModel(v153, v141, type metadata accessor for SnippetHeaderView);
            v101 = (*(v139 + 80) + 16) & ~*(v139 + 80);
            v102 = (v140 + v101 + 7) & 0xFFFFFFFFFFFFFFF8;
            v103 = swift_allocObject();
            outlined init with take of OxygenSaturationQueryModel(v100, v103 + v101, type metadata accessor for SnippetHeaderView);
            *(v103 + v102) = v87;

            __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVy08WellnessB0013SnippetHeaderD0V_AA03AnyD0VtGMd, &_s7SwiftUI9TupleViewVy08WellnessB0013SnippetHeaderD0V_AA03AnyD0VtGMR);
            lazy protocol witness table accessor for type TupleView<(SashStandardView, <<opaque return type of View.componentTapped(isNavigation:perform:)>>.0, StatusIndicatorView)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type TupleView<(SnippetHeaderView, AnyView)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVy08WellnessB0013SnippetHeaderD0V_AA03AnyD0VtGMd, &_s7SwiftUI9TupleViewVy08WellnessB0013SnippetHeaderD0V_AA03AnyD0VtGMR, MEMORY[0x277CE14C8]);
            v104 = v146;
            ComponentStack.init(content:)();
            v105 = v145;
            outlined init with copy of OxygenSaturationQueryModel(v125, v145, type metadata accessor for OxygenSaturationQuerySnippet);
            v106 = v154;
            v107 = v131;
            v108 = v46;
            v109 = v155;
            (*(v154 + 16))(v131, v108, v155);
            v110 = (*(v143 + 80) + 16) & ~*(v143 + 80);
            v111 = (v144 + *(v106 + 80) + v110) & ~*(v106 + 80);
            v112 = swift_allocObject();
            outlined init with take of OxygenSaturationQueryModel(v105, v112 + v110, type metadata accessor for OxygenSaturationQuerySnippet);
            v127(v112 + v111, v107, v109);
            v113 = lazy protocol witness table accessor for type TupleView<(SashStandardView, <<opaque return type of View.componentTapped(isNavigation:perform:)>>.0, StatusIndicatorView)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type ComponentStack<TupleView<(SnippetHeaderView, AnyView)>> and conformance ComponentStack<A>, &_s9SnippetUI14ComponentStackVy05SwiftB09TupleViewVy08WellnessB00a6HeaderG0V_AD03AnyG0VtGGMd, &_s9SnippetUI14ComponentStackVy05SwiftB09TupleViewVy08WellnessB00a6HeaderG0V_AD03AnyG0VtGGMR, MEMORY[0x277D63B98]);
            v114 = v148;
            v115 = v150;
            View.componentTapped(isNavigation:perform:)();

            (*(v149 + 8))(v104, v115);
            v117 = v151;
            v116 = v152;
            (*(v151 + 16))(v147, v114, v152);
            v157 = v115;
            v158 = v113;
            swift_getOpaqueTypeConformance2();
            v118 = AnyView.init<A>(_:)();

            (*(v117 + 8))(v114, v116);
            outlined destroy of SnippetHeaderView(v153);
            (*(v106 + 8))(v130, v109);
            (*(v126 + 8))(v135, v129);
            result = v118;
            goto LABEL_8;
          }
        }

        v60 = v36[10];
        v61 = *(v1 + v60 + 8);
        if (v61)
        {
          v134 = v56;
          v124 = v49;
          v126 = v31;
          v58 = v36[11];
          v59 = *(v1 + v58 + 8);
          goto LABEL_16;
        }
      }
    }

    v88 = (v1 + v36[13]);
    v89 = v88[1];
    if (!v89)
    {
      v119 = AnyView.init<A>(_:)();
      outlined destroy of SnippetHeaderView(v153);
      (*(v154 + 8))(v46, v155);
      (*(v31 + 8))(v53, v129);
      result = v119;
      goto LABEL_8;
    }

    v126 = v31;
    v90 = *v88;

    v91 = v133;

    v92 = SpeakableString.print.getter();
    v93 = v1;
    v94 = v92;
    v96 = v95;
    v97 = v134;
    v98 = v134 + *(v135 + 32);
    v125 = v93;
    outlined init with copy of AppPunchout?(v93, v98, &_s10SnippetKit11AppPunchoutVSgMd, &_s10SnippetKit11AppPunchoutVSgMR);
    type metadata accessor for Context();
    _s9SnippetUI7ContextCAC7Combine16ObservableObjectAAWlTm_2(&lazy protocol witness table cache variable for type Context and conformance Context, MEMORY[0x277D63F68], MEMORY[0x277D63F58]);
    *v97 = EnvironmentObject.init()();
    v97[1] = v99;
    v97[2] = v90;
    v97[3] = v89;
    v97[4] = v132;
    v97[5] = v91;
    v97[6] = v94;
    v97[7] = v96;
    _s9SnippetUI7ContextCAC7Combine16ObservableObjectAAWlTm_2(&lazy protocol witness table cache variable for type SingleDataPointView and conformance SingleDataPointView, type metadata accessor for SingleDataPointView, &protocol conformance descriptor for SingleDataPointView);
    v87 = AnyView.init<A>(_:)();
    v135 = v53;
    goto LABEL_23;
  }

  v37 = &_s16SiriDialogEngine15SpeakableStringVSgMd;
  v38 = &_s16SiriDialogEngine15SpeakableStringVSgMR;
  v39 = v29;
LABEL_6:
  outlined destroy of AppPunchout?(v39, v37, v38);
LABEL_7:
  result = AnyView.init<A>(_:)();
LABEL_8:
  *v156 = result;
  return result;
}

uint64_t closure #1 in OxygenSaturationQuerySnippet.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for SnippetHeaderView(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of OxygenSaturationQueryModel(a1, v8, type metadata accessor for SnippetHeaderView);
  outlined init with copy of OxygenSaturationQueryModel(v8, a3, type metadata accessor for SnippetHeaderView);
  *(a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10WellnessUI17SnippetHeaderViewV_05SwiftB003AnyE0VtMd, &_s10WellnessUI17SnippetHeaderViewV_05SwiftB003AnyE0VtMR) + 48)) = a2;

  return outlined destroy of SnippetHeaderView(v8);
}

void closure #2 in OxygenSaturationQuerySnippet.body.getter(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + *(type metadata accessor for OxygenSaturationQuerySnippet(0) + 20));
  if (v2)
  {
    v3 = v2;
    dispatch thunk of Context.perform(appPunchout:)();
  }

  else
  {
    type metadata accessor for Context();
    _s9SnippetUI7ContextCAC7Combine16ObservableObjectAAWlTm_2(&lazy protocol witness table cache variable for type Context and conformance Context, MEMORY[0x277D63F68], MEMORY[0x277D63F58]);
    EnvironmentObject.error()();
    __break(1u);
  }
}

uint64_t partial apply for closure #1 in OxygenSaturationQuerySnippet.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SnippetHeaderView(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return closure #1 in OxygenSaturationQuerySnippet.body.getter(v1 + v4, v5, a1);
}

uint64_t outlined init with copy of OxygenSaturationQueryModel(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void partial apply for closure #2 in OxygenSaturationQuerySnippet.body.getter()
{
  v1 = *(type metadata accessor for OxygenSaturationQuerySnippet(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for AppPunchout() - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  closure #2 in OxygenSaturationQuerySnippet.body.getter(v0 + v2, v5);
}

uint64_t outlined init with take of OxygenSaturationQueryModel(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void type metadata completion function for OxygenSaturationQuerySnippet(uint64_t a1)
{
  type metadata accessor for OxygenSaturationQueryModel(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for EnvironmentObject<Context>(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

__n128 WatchRingsSnippet.model.getter@<Q0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 48);
  a1[2] = *(v1 + 32);
  a1[3] = v2;
  a1[4] = *(v1 + 64);
  *(a1 + 73) = *(v1 + 73);
  result = *v1;
  v4 = *(v1 + 16);
  *a1 = *v1;
  a1[1] = v4;
  return result;
}

void __swiftcall WatchRingsSnippet.init(model:)(WellnessUI::WatchRingsSnippet *__return_ptr retstr, WellnessUI::WatchRingsModel *model)
{
  v2 = *(&model->standTotalValue.value + 3);
  *(&retstr->model.moveTotalValue.value + 5) = *(&model->moveTotalValue.value + 5);
  *(&retstr->model.standTotalValue.value + 3) = v2;
  *(&retstr[1].model.exerciseTotalValue.value + 1) = *(&model[1].exerciseTotalValue.value + 1);
  *(&retstr[1].model.moveGoalValue.value + 1) = *(&model[1].moveGoalValue.value + 1);
  v3 = *(&model->exerciseTotalValue.value + 7);
  *&retstr->model.exerciseGoalValue.value = *&model->exerciseGoalValue.value;
  *(&retstr->model.exerciseTotalValue.value + 7) = v3;
}

uint64_t WatchRingsSnippet.body.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6CircleVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12_FrameLayoutVGMd, "x6");
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Circle, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout> and conformance <> ModifiedContent<A, B>();

  return SnippetBody.init(content:)();
}

double closure #1 in WatchRingsSnippet.body.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = static Color.red.getter();
  KeyPath = swift_getKeyPath();
  static Alignment.trailing.getter();
  _FrameLayout.init(width:height:alignment:)();
  *a1 = KeyPath;
  *(a1 + 8) = v2;
  *(a1 + 16) = v5;
  *(a1 + 32) = v6;
  result = *&v7;
  *(a1 + 48) = v7;
  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Circle, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Circle, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Circle, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA6CircleVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12_FrameLayoutVGMd, "x6");
    lazy protocol witness table accessor for type ModifiedContent<Circle, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Circle, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Circle, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Circle, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Circle, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6CircleVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMd, &_s7SwiftUI15ModifiedContentVyAA6CircleVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMR);
    lazy protocol witness table accessor for type Circle and conformance Circle();
    lazy protocol witness table accessor for type TupleView<(SashStandardView, <<opaque return type of View.componentTapped(isNavigation:perform:)>>.0, StatusIndicatorView)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Color?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVSgGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVSgGMR, MEMORY[0x277CE0870]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Circle, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Circle and conformance Circle()
{
  result = lazy protocol witness table cache variable for type Circle and conformance Circle;
  if (!lazy protocol witness table cache variable for type Circle and conformance Circle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Circle and conformance Circle);
  }

  return result;
}

uint64_t protocol witness for View.body.getter in conformance WatchRingsSnippet()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6CircleVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12_FrameLayoutVGMd, "x6");
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Circle, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout> and conformance <> ModifiedContent<A, B>();

  return SnippetBody.init(content:)();
}

__n128 MultipleDataPointWithSubTypesView.init(firstRowLabel:firstRowData:firstRowTextData:secondRowLabel:secondRowData:secondRowTextData:unitString:dateLabelString:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, __int128 a11, __int128 a12, __int128 a13, __n128 a14, uint64_t a15, uint64_t a16)
{
  result = a14;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 80) = a11;
  *(a9 + 96) = a12;
  *(a9 + 112) = a13;
  *(a9 + 128) = a14;
  *(a9 + 144) = a15;
  *(a9 + 152) = a16;
  return result;
}

uint64_t MultipleDataPointWithSubTypesView.firstRowLabel.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t MultipleDataPointWithSubTypesView.firstRowData.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t MultipleDataPointWithSubTypesView.firstRowTextData.getter()
{
  v1 = v0[4];
  outlined copy of Text?(v1, v0[5], v0[6], v0[7]);
  return v1;
}

double outlined copy of Text?(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    outlined copy of Text.Storage(a1, a2, a3 & 1);
  }

  return result;
}

uint64_t MultipleDataPointWithSubTypesView.secondRowLabel.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t MultipleDataPointWithSubTypesView.secondRowData.getter()
{
  v1 = *(v0 + 80);

  return v1;
}

uint64_t MultipleDataPointWithSubTypesView.secondRowTextData.getter()
{
  v1 = v0[12];
  outlined copy of Text?(v1, v0[13], v0[14], v0[15]);
  return v1;
}

uint64_t MultipleDataPointWithSubTypesView.unitString.getter()
{
  v1 = *(v0 + 128);

  return v1;
}

uint64_t MultipleDataPointWithSubTypesView.dateLabelString.getter()
{
  v1 = *(v0 + 144);

  return v1;
}

void MultipleDataPointWithSubTypesView.body.getter(uint64_t *a1@<X8>)
{
  v3 = type metadata accessor for ComponentStackBottomSpacing();
  v318 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v316 = &v265 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v317 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SnippetUI14ComponentStackVy05SwiftB09TupleViewVyAD0G0PAAE16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_ANtFQOyAhAE10separators_10isOverrideQr0A3Kit14SeparatorStyleO_SbtFQOyAA014SimpleItemRichG0V_Qo__Qo__AwhAEAijKQrAN_ANtFQOyAU_Qo_tGGMd, &_s9SnippetUI14ComponentStackVy05SwiftB09TupleViewVyAD0G0PAAE16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_ANtFQOyAhAE10separators_10isOverrideQr0A3Kit14SeparatorStyleO_SbtFQOyAA014SimpleItemRichG0V_Qo__Qo__AwhAEAijKQrAN_ANtFQOyAU_Qo_tGGMR);
  v315 = *(v317 - 8);
  MEMORY[0x28223BE20](v317);
  v313 = &v265 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP07SnippetB0E26lastComponentBottomSpacingyQrAD0f5StackgH0OFQOyAD0fI0VyAA05TupleC0VyAcDE09componentH03top6bottomQr12CoreGraphics7CGFloatV_AQtFQOyAcDE10separators_10isOverrideQr0D3Kit14SeparatorStyleO_SbtFQOyAD014SimpleItemRichC0V_Qo__Qo__AzcDEAlmNQrAQ_AQtFQOyAX_Qo_tGG_Qo_Md, &_s7SwiftUI4ViewP07SnippetB0E26lastComponentBottomSpacingyQrAD0f5StackgH0OFQOyAD0fI0VyAA05TupleC0VyAcDE09componentH03top6bottomQr12CoreGraphics7CGFloatV_AQtFQOyAcDE10separators_10isOverrideQr0D3Kit14SeparatorStyleO_SbtFQOyAD014SimpleItemRichC0V_Qo__Qo__AzcDEAlmNQrAQ_AQtFQOyAX_Qo_tGG_Qo_MR);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v314 = &v265 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v265 - v10;
  v319 = type metadata accessor for SeparatorStyle();
  v322 = *(v319 - 8);
  MEMORY[0x28223BE20](v319);
  v307 = &v265 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for SimpleItemRichView();
  v323 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v311 = v14;
  v312 = &v265 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v326 = &v265 - v16;
  v327 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP07SnippetB0E10separators_10isOverrideQr0D3Kit14SeparatorStyleO_SbtFQOyAD014SimpleItemRichC0V_Qo_Md, &_s7SwiftUI4ViewP07SnippetB0E10separators_10isOverrideQr0D3Kit14SeparatorStyleO_SbtFQOyAD014SimpleItemRichC0V_Qo_MR);
  v320 = *(v327 - 8);
  MEMORY[0x28223BE20](v327);
  v310 = &v265 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v309 = &v265 - v19;
  MEMORY[0x28223BE20](v20);
  v325 = &v265 - v21;
  v308 = v22;
  MEMORY[0x28223BE20](v23);
  v324 = &v265 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4FontV6DesignOSgMd, &_s7SwiftUI4FontV6DesignOSgMR);
  MEMORY[0x28223BE20](v25 - 8);
  v328 = &v265 - v26;
  v329 = type metadata accessor for Font.TextStyle();
  v27 = *(v329 - 8);
  MEMORY[0x28223BE20](v329);
  v321 = &v265 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v31 = &v265 - v30;
  v32 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  MEMORY[0x28223BE20](v32 - 8);
  v34 = v1[19];
  if (!v34 || (v35 = v1[1]) == 0 || (v36 = v1[9]) == 0 || (v37 = v1[3], v302 = v1[7], !(v37 | v302)))
  {
    v38 = AnyView.init<A>(_:)();
LABEL_6:
    *a1 = v38;
    return;
  }

  v295 = v31;
  v296 = v13;
  v278._object = v34;
  v304 = &v265 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v271 = v11;
  v273 = v6;
  v274 = a1;
  v293._countAndFlagsBits = *v1;
  v293._object = v35;
  v39 = v1[2];
  v40 = v1[4];
  v297 = v1[5];
  v298 = v40;
  v299 = v1[6];
  v279._countAndFlagsBits = v1[8];
  v279._object = v36;
  v41 = v1[11];
  v265 = v1[10];
  v266 = v39;
  v275 = v41;
  v276 = v37;
  v42 = v1[12];
  v303 = v1[13];
  v43 = v1[15];
  v294 = v1[14];
  v305 = v43;
  v306 = v42;
  v44 = v1[16];
  v45 = v1[17];
  v278._countAndFlagsBits = v1[18];
  v272 = v7;
  v270 = v3;
  v301 = v27;

  if (v45)
  {

    LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v46._countAndFlagsBits = 0;
    v46._object = 0xE000000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v46);
    v47._countAndFlagsBits = v44;
    v47._object = v45;
    LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v47);

    v48._countAndFlagsBits = 0;
    v48._object = 0xE000000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v48);
    LocalizedStringKey.init(stringInterpolation:)();
    v49 = Text.init(_:tableName:bundle:comment:)();
    v291 = v50;
    v292 = v49;
    v52 = v51;
    v53 = v27;
    v54 = v295;
    v55 = v329;
    (*(v27 + 104))(v295, *MEMORY[0x277CE0A60], v329);
    v300 = *MEMORY[0x277CE0998];
    v56 = v300;
    v57 = type metadata accessor for Font.Design();
    v58 = *(v57 - 8);
    v59 = v328;
    (*(v58 + 104))(v328, v56, v57);
    (*(v58 + 56))(v59, 0, 1, v57);
    static Font.system(_:design:weight:)();
    outlined destroy of Font.Design?(v59);
    (*(v53 + 8))(v54, v55);
    LOBYTE(v56) = v52;
    v60 = v291;
    v61 = v292;
    v62 = Text.font(_:)();
    v290 = v63;
    LOBYTE(v55) = v64;

    outlined consume of Text.Storage(v61, v60, v56 & 1);

    LODWORD(v354) = static HierarchicalShapeStyle.secondary.getter();
    v65 = v62;
    v66 = v290;
    v67 = Text.foregroundStyle<A>(_:)();
    v69 = v68;
    LOBYTE(v60) = v70;
    v71 = v55 & 1;
    v72 = v300;
    outlined consume of Text.Storage(v65, v66, v71);

    v73 = Text.bold()();
    v288 = v74;
    v289 = v73;
    v286 = v75;
    v287 = v76;
    v77 = v329;
    outlined consume of Text.Storage(v67, v69, v60 & 1);
  }

  else
  {
    LocalizedStringKey.init(stringLiteral:)();
    v78 = Text.init(_:tableName:bundle:comment:)();
    v288 = v79;
    v289 = v78;
    v286 = v80;
    v287 = v81;
    v72 = *MEMORY[0x277CE0998];
    v77 = v329;
    v59 = v328;
  }

  v300 = v72;
  LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v82._countAndFlagsBits = 0;
  v82._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v82);
  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v293);
  v83._countAndFlagsBits = 0;
  v83._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v83);
  LocalizedStringKey.init(stringInterpolation:)();
  v84 = Text.init(_:tableName:bundle:comment:)();
  v282 = v85;
  v87 = v86;
  LODWORD(v277) = *MEMORY[0x277CE0AB8];
  v88 = v301;
  v89 = *(v301 + 104);
  v284 = v301 + 104;
  v285 = v89;
  v90 = v295;
  (v89)(v295);
  v91 = type metadata accessor for Font.Design();
  v92 = v72;
  v93 = v91;
  v293._object = v91;
  v94 = *(v91 - 1);
  v291 = *(v94 + 104);
  v292 = v94 + 104;
  v291(v59, v92, v91);
  v95 = *(v94 + 56);
  v293._countAndFlagsBits = v94 + 56;
  v290 = v95;
  v95(v59, 0, 1, v93);
  static Font.system(_:design:weight:)();
  outlined destroy of Font.Design?(v59);
  v96 = *(v88 + 8);
  v301 = v88 + 8;
  v283 = v96;
  v96(v90, v77);
  v97 = v84;
  v98 = v282;
  v99 = Text.font(_:)();
  v101 = v100;
  v103 = v102;

  outlined consume of Text.Storage(v97, v98, v87 & 1);

  LODWORD(v354) = static HierarchicalShapeStyle.secondary.getter();
  v104 = Text.foregroundStyle<A>(_:)();
  v106 = v105;
  LOBYTE(v97) = v107;
  outlined consume of Text.Storage(v99, v101, v103 & 1);

  static Font.Weight.semibold.getter();
  v108 = Text.fontWeight(_:)();
  v280 = v109;
  v281 = v108;
  v269 = v110;
  v282 = v111;
  outlined consume of Text.Storage(v104, v106, v97 & 1);

  LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v112._countAndFlagsBits = 0;
  v112._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v112);
  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v279);
  v113._countAndFlagsBits = 0;
  v113._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v113);
  LocalizedStringKey.init(stringInterpolation:)();
  v114 = Text.init(_:tableName:bundle:comment:)();
  v116 = v115;
  v118 = v117;
  v119 = v295;
  (v285)(v295, v277, v329);
  v120 = v328;
  object = v293._object;
  v291(v328, v300, v293._object);
  v290(v120, 0, 1, object);
  static Font.system(_:design:weight:)();
  outlined destroy of Font.Design?(v120);
  v283(v119, v329);
  v122 = Text.font(_:)();
  v124 = v123;
  LOBYTE(v99) = v125;

  outlined consume of Text.Storage(v114, v116, v118 & 1);

  LODWORD(v354) = static HierarchicalShapeStyle.secondary.getter();
  v126 = Text.foregroundStyle<A>(_:)();
  v128 = v127;
  LOBYTE(v116) = v129;
  outlined consume of Text.Storage(v122, v124, v99 & 1);

  static Font.Weight.semibold.getter();
  v130 = Text.fontWeight(_:)();
  v279._countAndFlagsBits = v131;
  v279._object = v130;
  v268 = v132;
  v295 = v133;
  outlined consume of Text.Storage(v126, v128, v116 & 1);

  LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v134._countAndFlagsBits = 0;
  v134._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v134);
  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v278);
  v135._countAndFlagsBits = 0;
  v135._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v135);
  LocalizedStringKey.init(stringInterpolation:)();
  v136 = Text.init(_:tableName:bundle:comment:)();
  v138 = v137;
  LOBYTE(v116) = v139;
  static Font.footnote.getter();
  v140 = Text.font(_:)();
  v142 = v141;
  LOBYTE(v99) = v143;

  outlined consume of Text.Storage(v136, v138, v116 & 1);

  LODWORD(v354) = static HierarchicalShapeStyle.secondary.getter();
  v144 = Text.foregroundStyle<A>(_:)();
  v146 = v145;
  LOBYTE(v116) = v147;
  outlined consume of Text.Storage(v140, v142, v99 & 1);

  static Font.Weight.regular.getter();
  v148 = Text.fontWeight(_:)();
  v277 = v149;
  v278._countAndFlagsBits = v148;
  v267 = v150;
  v278._object = v151;
  outlined consume of Text.Storage(v144, v146, v116 & 1);

  (v285)(v321, *MEMORY[0x277CE0A78], v329);
  v152 = v276;
  if (v276)
  {
    LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v153._countAndFlagsBits = 0;
    v153._object = 0xE000000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v153);
    v154._countAndFlagsBits = v266;
    v154._object = v152;
    LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v154);

    v155._countAndFlagsBits = 0;
    v155._object = 0xE000000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v155);
    LocalizedStringKey.init(stringInterpolation:)();
    v156 = Text.init(_:tableName:bundle:comment:)();
    v158 = v157;
    v160 = v159;
    v161 = v328;
    v162 = v293._object;
    v291(v328, v300, v293._object);
    v290(v161, 0, 1, v162);
    static Font.system(_:design:weight:)();
    outlined destroy of Font.Design?(v161);
    v163 = Text.font(_:)();
    v165 = v164;
    v167 = v166;

    outlined consume of Text.Storage(v156, v158, v160 & 1);

    static Font.Weight.semibold.getter();
    v168 = Text.fontWeight(_:)();
    v170 = v169;
    v172 = v171;
    outlined consume of Text.Storage(v163, v165, v167 & 1);

    v173 = static Text.+ infix(_:_:)();
    v175 = v174;
    v299 = v176;
    v178 = v177;
    outlined consume of Text.Storage(v168, v170, v172 & 1);
  }

  else
  {
    v178 = v302;
    if (!v302)
    {
      __break(1u);
      goto LABEL_20;
    }

    v173 = v298;
    v175 = v297;
    outlined copy of Text.Storage(v298, v297, v299 & 1);
  }

  v179 = v305;
  v180 = v306;
  v181 = v303;
  v182 = v294;
  v183 = v275;
  v297 = v175;
  v298 = v173;
  v302 = v178;
  if (v275)
  {
    outlined copy of Text.Storage(v173, v175, v299 & 1);

    LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v184._countAndFlagsBits = 0;
    v184._object = 0xE000000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v184);
    v185._countAndFlagsBits = v265;
    v185._object = v183;
    LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v185);

    v186._countAndFlagsBits = 0;
    v186._object = 0xE000000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v186);
    LocalizedStringKey.init(stringInterpolation:)();
    v187 = Text.init(_:tableName:bundle:comment:)();
    v189 = v188;
    v191 = v190;
    v192 = v328;
    v193 = v293._object;
    v291(v328, v300, v293._object);
    v290(v192, 0, 1, v193);
    static Font.system(_:design:weight:)();
    outlined destroy of Font.Design?(v192);
    v194 = Text.font(_:)();
    v196 = v195;
    LOBYTE(v192) = v197;

    outlined consume of Text.Storage(v187, v189, v191 & 1);

    static Font.Weight.semibold.getter();
    v198 = Text.fontWeight(_:)();
    v200 = v199;
    v202 = v201;
    v203 = v196;
    v175 = v297;
    v173 = v298;
    outlined consume of Text.Storage(v194, v203, v192 & 1);

    v180 = static Text.+ infix(_:_:)();
    v303 = v204;
    v294 = v205;
    v179 = v206;
    outlined consume of Text.Storage(v198, v200, v202 & 1);

LABEL_18:
    v305 = v179;
    v306 = v180;
    v207 = v173;
    v356 = MEMORY[0x277CE0BD0];
    v357 = MEMORY[0x277D638F0];
    v208 = swift_allocObject();
    v354 = v208;
    v210 = v280;
    v209 = v281;
    *(v208 + 16) = v281;
    *(v208 + 24) = v210;
    v211 = v302;
    v212 = v269 & 1;
    *(v208 + 32) = v212;
    LODWORD(v293._object) = v212;
    *(v208 + 40) = v282;
    *(&v352 + 1) = MEMORY[0x277CE0BD0];
    v353 = MEMORY[0x277D638F0];
    v213 = swift_allocObject();
    *&v351 = v213;
    *(v213 + 16) = v207;
    *(v213 + 24) = v175;
    LODWORD(v299) = v299 & 1;
    *(v213 + 32) = v299;
    *(v213 + 40) = v211;
    v350 = 0;
    v348 = 0u;
    v349 = 0u;
    v347 = 0;
    v345 = 0u;
    v346 = 0u;
    v344 = 0;
    v342 = 0u;
    v343 = 0u;
    v341 = 0;
    v339 = 0u;
    v340 = 0u;
    v338 = 0;
    v336 = 0u;
    v337 = 0u;
    v335 = 0;
    v333 = 0u;
    v334 = 0u;
    v332 = 0;
    v330 = 0u;
    v331 = 0u;
    v300 = v294 & 1;
    outlined copy of Text.Storage(v306, v303, v294 & 1);

    outlined copy of Text.Storage(v209, v210, v212);

    v214 = v326;
    SimpleItemRichView.init(text1:text2:text3:text4:text5:text6:text7:text8:thumbnail:)();
    LODWORD(v293._countAndFlagsBits) = *MEMORY[0x277D62F40];
    v215 = v322;
    v291 = *(v322 + 104);
    v292 = v322 + 104;
    v216 = v307;
    v217 = v319;
    (v291)(v307);
    v290 = lazy protocol witness table accessor for type SimpleItemRichView and conformance SimpleItemRichView();
    v218 = v296;
    View.separators(_:isOverride:)();
    v219 = *(v215 + 8);
    v322 = v215 + 8;
    v285 = v219;
    v219(v216, v217);
    v220 = *(v323 + 8);
    v304 = (v323 + 8);
    v328 = v220;
    (v220)(v214, v218);
    v221 = MEMORY[0x277CE0BD0];
    v356 = MEMORY[0x277CE0BD0];
    v222 = MEMORY[0x277D638F0];
    v357 = MEMORY[0x277D638F0];
    v223 = swift_allocObject();
    v354 = v223;
    countAndFlagsBits = v279._countAndFlagsBits;
    v225 = v279._object;
    *(v223 + 16) = v279._object;
    *(v223 + 24) = countAndFlagsBits;
    LODWORD(v218) = v268 & 1;
    *(v223 + 32) = v268 & 1;
    LODWORD(v294) = v218;
    *(v223 + 40) = v295;
    *(&v352 + 1) = v221;
    v353 = v222;
    v226 = swift_allocObject();
    *&v351 = v226;
    v227 = v303;
    *(v226 + 16) = v306;
    *(v226 + 24) = v227;
    *(v226 + 32) = v300;
    *(v226 + 40) = v305;
    v350 = 0;
    v348 = 0u;
    v349 = 0u;
    v347 = 0;
    v345 = 0u;
    v346 = 0u;
    v344 = 0;
    v342 = 0u;
    v343 = 0u;
    v341 = 0;
    v339 = 0u;
    v340 = 0u;
    v338 = 0;
    v336 = 0u;
    v337 = 0u;
    v335 = 0;
    v333 = 0u;
    v334 = 0u;
    v332 = 0;
    v330 = 0u;
    v331 = 0u;
    outlined copy of Text.Storage(v225, countAndFlagsBits, v218);

    v228 = v326;
    SimpleItemRichView.init(text1:text2:text3:text4:text5:text6:text7:text8:thumbnail:)();
    v229 = v319;
    v291(v216, LODWORD(v293._countAndFlagsBits), v319);
    v230 = v296;
    View.separators(_:isOverride:)();
    v285(v216, v229);
    v231 = v228;
    (v328)(v228, v230);
    v356 = v221;
    v357 = v222;
    v232 = swift_allocObject();
    v354 = v232;
    v233 = v277;
    v234 = v278._countAndFlagsBits;
    *(v232 + 16) = v278._countAndFlagsBits;
    *(v232 + 24) = v233;
    v235 = v233;
    LODWORD(v233) = v267 & 1;
    *(v232 + 32) = v233;
    LODWORD(v322) = v233;
    *(v232 + 40) = v278._object;
    v353 = 0;
    v351 = 0u;
    v352 = 0u;
    v350 = 0;
    v348 = 0u;
    v349 = 0u;
    v347 = 0;
    v345 = 0u;
    v346 = 0u;
    v344 = 0;
    v342 = 0u;
    v343 = 0u;
    v341 = 0;
    v339 = 0u;
    v340 = 0u;
    v338 = 0;
    v336 = 0u;
    v337 = 0u;
    v335 = 0;
    v333 = 0u;
    v334 = 0u;
    v332 = 0;
    v330 = 0u;
    v331 = 0u;
    outlined copy of Text.Storage(v234, v235, v233);

    SimpleItemRichView.init(text1:text2:text3:text4:text5:text6:text7:text8:thumbnail:)();
    v236 = v320;
    v237 = *(v320 + 16);
    v238 = v309;
    v239 = v327;
    v237(v309, v324, v327);
    v240 = v310;
    v237(v310, v325, v239);
    v241 = v323;
    v242 = v312;
    (*(v323 + 16))(v312, v231, v230);
    v243 = v236;
    v244 = *(v236 + 80);
    v245 = (v244 + 16) & ~v244;
    v246 = (v308 + v244 + v245) & ~v244;
    v247 = (v308 + *(v241 + 80) + v246) & ~*(v241 + 80);
    v248 = swift_allocObject();
    v249 = *(v243 + 32);
    v250 = v248 + v245;
    v251 = v327;
    v249(v250, v238, v327);
    v249(v248 + v246, v240, v251);
    v252 = v296;
    (*(v323 + 32))(v248 + v247, v242, v296);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA0D0P07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_ALtFQOyAeFE10separators_10isOverrideQr0E3Kit14SeparatorStyleO_SbtFQOyAF014SimpleItemRichD0V_Qo__Qo__AueFEAghIQrAL_ALtFQOyAS_Qo_tGMd, &_s7SwiftUI9TupleViewVyAA0D0P07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_ALtFQOyAeFE10separators_10isOverrideQr0E3Kit14SeparatorStyleO_SbtFQOyAF014SimpleItemRichD0V_Qo__Qo__AueFEAghIQrAL_ALtFQOyAS_Qo_tGMR);
    lazy protocol witness table accessor for type TupleView<(SashStandardView, <<opaque return type of View.componentTapped(isNavigation:perform:)>>.0, StatusIndicatorView)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type TupleView<(<<opaque return type of View.componentSpacing(top:bottom:)>>.0, <<opaque return type of View.componentSpacing(top:bottom:)>>.0, <<opaque return type of View.componentSpacing(top:bottom:)>>.0)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA0D0P07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_ALtFQOyAeFE10separators_10isOverrideQr0E3Kit14SeparatorStyleO_SbtFQOyAF014SimpleItemRichD0V_Qo__Qo__AueFEAghIQrAL_ALtFQOyAS_Qo_tGMd, &_s7SwiftUI9TupleViewVyAA0D0P07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_ALtFQOyAeFE10separators_10isOverrideQr0E3Kit14SeparatorStyleO_SbtFQOyAF014SimpleItemRichD0V_Qo__Qo__AueFEAghIQrAL_ALtFQOyAS_Qo_tGMR, MEMORY[0x277CE14C8]);
    v253 = v313;
    ComponentStack.init(content:)();
    v254 = v318;
    v255 = v316;
    v256 = v270;
    (*(v318 + 104))(v316, *MEMORY[0x277D63EC8], v270);
    v257 = lazy protocol witness table accessor for type TupleView<(SashStandardView, <<opaque return type of View.componentTapped(isNavigation:perform:)>>.0, StatusIndicatorView)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type ComponentStack<TupleView<(<<opaque return type of View.componentSpacing(top:bottom:)>>.0, <<opaque return type of View.componentSpacing(top:bottom:)>>.0, <<opaque return type of View.componentSpacing(top:bottom:)>>.0)>> and conformance ComponentStack<A>, &_s9SnippetUI14ComponentStackVy05SwiftB09TupleViewVyAD0G0PAAE16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_ANtFQOyAhAE10separators_10isOverrideQr0A3Kit14SeparatorStyleO_SbtFQOyAA014SimpleItemRichG0V_Qo__Qo__AwhAEAijKQrAN_ANtFQOyAU_Qo_tGGMd, &_s9SnippetUI14ComponentStackVy05SwiftB09TupleViewVyAD0G0PAAE16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_ANtFQOyAhAE10separators_10isOverrideQr0A3Kit14SeparatorStyleO_SbtFQOyAA014SimpleItemRichG0V_Qo__Qo__AwhAEAijKQrAN_ANtFQOyAU_Qo_tGGMR, MEMORY[0x277D63B98]);
    v258 = v271;
    v259 = v317;
    View.lastComponentBottomSpacing(_:)();
    (*(v254 + 8))(v255, v256);
    (*(v315 + 8))(v253, v259);
    v261 = v272;
    v260 = v273;
    (*(v272 + 16))(v314, v258, v273);
    v354 = v259;
    v355 = v257;
    swift_getOpaqueTypeConformance2();
    v262 = AnyView.init<A>(_:)();
    outlined consume of Text.Storage(v289, v288, v286 & 1);

    outlined consume of Text.Storage(v298, v297, v299);

    outlined consume of Text.Storage(v306, v303, v300);

    outlined consume of Text.Storage(v278._countAndFlagsBits, v277, v322);

    outlined consume of Text.Storage(v279._object, v279._countAndFlagsBits, v294);

    outlined consume of Text.Storage(v281, v280, v293._object);

    (*(v261 + 8))(v258, v260);
    (v328)(v326, v252);
    v263 = *(v320 + 8);
    v264 = v327;
    v263(v325, v327);
    v263(v324, v264);
    v283(v321, v329);
    v38 = v262;
    a1 = v274;
    goto LABEL_6;
  }

  if (v305)
  {
    outlined copy of Text.Storage(v173, v175, v299 & 1);

    outlined copy of Text?(v180, v181, v182, v179);
    goto LABEL_18;
  }

LABEL_20:
  __break(1u);
}

unint64_t lazy protocol witness table accessor for type SimpleItemRichView and conformance SimpleItemRichView()
{
  result = lazy protocol witness table cache variable for type SimpleItemRichView and conformance SimpleItemRichView;
  if (!lazy protocol witness table cache variable for type SimpleItemRichView and conformance SimpleItemRichView)
  {
    type metadata accessor for SimpleItemRichView();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SimpleItemRichView and conformance SimpleItemRichView);
  }

  return result;
}

uint64_t closure #1 in MultipleDataPointWithSubTypesView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v42 = a3;
  v39 = a1;
  v40 = a2;
  v44 = a4;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AJtFQOyAD014SimpleItemRichC0V_Qo_Md, &_s7SwiftUI4ViewP07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AJtFQOyAD014SimpleItemRichC0V_Qo_MR);
  v46 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v41 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v33 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AJtFQOyAcDE10separators_10isOverrideQr0D3Kit14SeparatorStyleO_SbtFQOyAD014SimpleItemRichC0V_Qo__Qo_Md, &_s7SwiftUI4ViewP07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AJtFQOyAcDE10separators_10isOverrideQr0D3Kit14SeparatorStyleO_SbtFQOyAD014SimpleItemRichC0V_Qo__Qo_MR);
  v36 = *(v8 - 8);
  v9 = v36;
  MEMORY[0x28223BE20](v8);
  v38 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v45 = &v33 - v12;
  MEMORY[0x28223BE20](v13);
  v15 = &v33 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v33 - v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP07SnippetB0E10separators_10isOverrideQr0D3Kit14SeparatorStyleO_SbtFQOyAD014SimpleItemRichC0V_Qo_Md, &_s7SwiftUI4ViewP07SnippetB0E10separators_10isOverrideQr0D3Kit14SeparatorStyleO_SbtFQOyAD014SimpleItemRichC0V_Qo_MR);
  v19 = type metadata accessor for SimpleItemRichView();
  v20 = lazy protocol witness table accessor for type SimpleItemRichView and conformance SimpleItemRichView();
  v47 = v19;
  v48 = v20;
  swift_getOpaqueTypeConformance2();
  v37 = v18;
  View.componentSpacing(top:bottom:)();
  v35 = v15;
  View.componentSpacing(top:bottom:)();
  swift_checkMetadataState();
  v34 = v7;
  View.componentSpacing(top:bottom:)();
  v21 = *(v9 + 16);
  v22 = v45;
  v21(v45, v18, v8);
  v23 = v38;
  v21(v38, v15, v8);
  v24 = *(v46 + 16);
  v25 = v41;
  v26 = v7;
  v27 = v43;
  v24(v41, v26, v43);
  v28 = v44;
  v21(v44, v22, v8);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AJtFQOyAcDE10separators_10isOverrideQr0D3Kit14SeparatorStyleO_SbtFQOyAD014SimpleItemRichC0V_Qo__Qo__AscDEAefGQrAJ_AJtFQOyAQ_Qo_tMd, &_s7SwiftUI4ViewP07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AJtFQOyAcDE10separators_10isOverrideQr0D3Kit14SeparatorStyleO_SbtFQOyAD014SimpleItemRichC0V_Qo__Qo__AscDEAefGQrAJ_AJtFQOyAQ_Qo_tMR);
  v21((v28 + *(v29 + 48)), v23, v8);
  v24((v28 + *(v29 + 64)), v25, v27);
  v30 = *(v46 + 8);
  v30(v34, v27);
  v31 = *(v36 + 8);
  v31(v35, v8);
  v31(v37, v8);
  v30(v25, v27);
  v31(v23, v8);
  return (v31)(v45, v8);
}

uint64_t partial apply for closure #1 in MultipleDataPointWithSubTypesView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP07SnippetB0E10separators_10isOverrideQr0D3Kit14SeparatorStyleO_SbtFQOyAD014SimpleItemRichC0V_Qo_Md, &_s7SwiftUI4ViewP07SnippetB0E10separators_10isOverrideQr0D3Kit14SeparatorStyleO_SbtFQOyAD014SimpleItemRichC0V_Qo_MR) - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v3 + 64);
  v7 = (v6 + v4 + v5) & ~v4;
  v8 = *(type metadata accessor for SimpleItemRichView() - 8);
  v9 = v1 + ((v7 + v6 + *(v8 + 80)) & ~*(v8 + 80));

  return closure #1 in MultipleDataPointWithSubTypesView.body.getter(v1 + v5, v1 + v7, v9, a1);
}

uint64_t get_enum_tag_for_layout_string_7SwiftUI4TextVSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
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

uint64_t getEnumTagSinglePayload for MultipleDataPointWithSubTypesView(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 160))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for MultipleDataPointWithSubTypesView(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
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
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 160) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 160) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t GenericButtonModel.label.getter()
{
  v1 = *v0;

  return v1;
}

void GenericButtonModel.label.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

uint64_t GenericButtonModel.punchout.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for GenericButtonModel(0) + 20);
  v4 = type metadata accessor for URL();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for GenericButtonModel(uint64_t a1)
{
  result = type metadata singleton initialization cache for GenericButtonModel;
  if (!type metadata singleton initialization cache for GenericButtonModel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t GenericButtonModel.punchout.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for GenericButtonModel(0) + 20);
  v4 = type metadata accessor for URL();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t GenericButtonModel.init(label:punchout:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  *a4 = a1;
  *(a4 + 1) = a2;
  v6 = *(type metadata accessor for GenericButtonModel(0) + 20);
  v7 = type metadata accessor for URL();
  v8 = *(*(v7 - 8) + 32);

  return v8(&a4[v6], a3, v7);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance GenericButtonModel.CodingKeys()
{
  if (*v0)
  {
    return 0x74756F68636E7570;
  }

  else
  {
    return 0x6C6562616CLL;
  }
}

void protocol witness for CodingKey.init(stringValue:) in conformance GenericButtonModel.CodingKeys(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6C6562616CLL && a2 == 0xE500000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x74756F68636E7570 && a2 == 0xE800000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance GenericButtonModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type GenericButtonModel.CodingKeys and conformance GenericButtonModel.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance GenericButtonModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type GenericButtonModel.CodingKeys and conformance GenericButtonModel.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t GenericButtonModel.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10WellnessUI18GenericButtonModelV10CodingKeys33_30E160827A64A198B2C3EEAB83E45D21LLOGMd, &_ss22KeyedEncodingContainerVy10WellnessUI18GenericButtonModelV10CodingKeys33_30E160827A64A198B2C3EEAB83E45D21LLOGMR);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type GenericButtonModel.CodingKeys and conformance GenericButtonModel.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v1)
  {
    type metadata accessor for GenericButtonModel(0);
    v8[14] = 1;
    type metadata accessor for URL();
    lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260], MEMORY[0x277CC9268]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t lazy protocol witness table accessor for type GenericButtonModel.CodingKeys and conformance GenericButtonModel.CodingKeys()
{
  result = lazy protocol witness table cache variable for type GenericButtonModel.CodingKeys and conformance GenericButtonModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type GenericButtonModel.CodingKeys and conformance GenericButtonModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GenericButtonModel.CodingKeys and conformance GenericButtonModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GenericButtonModel.CodingKeys and conformance GenericButtonModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type GenericButtonModel.CodingKeys and conformance GenericButtonModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GenericButtonModel.CodingKeys and conformance GenericButtonModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GenericButtonModel.CodingKeys and conformance GenericButtonModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type GenericButtonModel.CodingKeys and conformance GenericButtonModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GenericButtonModel.CodingKeys and conformance GenericButtonModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GenericButtonModel.CodingKeys and conformance GenericButtonModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type GenericButtonModel.CodingKeys and conformance GenericButtonModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GenericButtonModel.CodingKeys and conformance GenericButtonModel.CodingKeys);
  }

  return result;
}

void GenericButtonModel.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v18 = type metadata accessor for URL();
  v15 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10WellnessUI18GenericButtonModelV10CodingKeys33_30E160827A64A198B2C3EEAB83E45D21LLOGMd, &_ss22KeyedDecodingContainerVy10WellnessUI18GenericButtonModelV10CodingKeys33_30E160827A64A198B2C3EEAB83E45D21LLOGMR);
  v17 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v7 = &v14 - v6;
  v8 = type metadata accessor for GenericButtonModel(0);
  MEMORY[0x28223BE20](v8);
  v10 = (&v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type GenericButtonModel.CodingKeys and conformance GenericButtonModel.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v14 = v8;
    v12 = v17;
    v11 = v18;
    v21 = 0;
    *v10 = KeyedDecodingContainer.decode(_:forKey:)();
    v10[1] = v13;
    v20 = 1;
    lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260], MEMORY[0x277CC9280]);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v12 + 8))(v7, v19);
    (*(v15 + 32))(v10 + *(v14 + 20), v5, v11);
    outlined init with copy of GenericButtonModel(v10, v16);
    __swift_destroy_boxed_opaque_existential_1(a1);
    outlined destroy of GenericButtonModel(v10);
  }
}

uint64_t outlined init with copy of GenericButtonModel(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GenericButtonModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of GenericButtonModel(uint64_t a1)
{
  v2 = type metadata accessor for GenericButtonModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t lazy protocol witness table accessor for type URL and conformance URL(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata completion function for GenericButtonModel(uint64_t a1)
{
  result = type metadata accessor for URL();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for GenericButtonModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for GenericButtonModel.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t SnippetHeaderModel.categoryLabel.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for SpeakableString();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t SnippetHeaderModel.categoryListIconName.getter()
{
  v1 = *(v0 + *(type metadata accessor for SnippetHeaderModel(0) + 20));

  return v1;
}

uint64_t type metadata accessor for SnippetHeaderModel(uint64_t a1)
{
  result = type metadata singleton initialization cache for SnippetHeaderModel;
  if (!type metadata singleton initialization cache for SnippetHeaderModel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SnippetHeaderModel.categoryIdentifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for SnippetHeaderModel(0) + 24));

  return v1;
}

uint64_t SnippetHeaderModel.init(categoryLabel:categoryListIconName:categoryIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = type metadata accessor for SpeakableString();
  (*(*(v12 - 8) + 32))(a6, a1, v12);
  result = type metadata accessor for SnippetHeaderModel(0);
  v14 = (a6 + *(result + 20));
  *v14 = a2;
  v14[1] = a3;
  v15 = (a6 + *(result + 24));
  *v15 = a4;
  v15[1] = a5;
  return result;
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance SnippetHeaderModel.CodingKeys()
{
  v1 = 0xD000000000000014;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000012;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x79726F6765746163;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance SnippetHeaderModel.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized SnippetHeaderModel.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SnippetHeaderModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SnippetHeaderModel.CodingKeys and conformance SnippetHeaderModel.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SnippetHeaderModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SnippetHeaderModel.CodingKeys and conformance SnippetHeaderModel.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SnippetHeaderModel.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10WellnessUI18SnippetHeaderModelV10CodingKeys33_A35C26B52ED5D74A017ADAA501521794LLOGMd, &_ss22KeyedEncodingContainerVy10WellnessUI18SnippetHeaderModelV10CodingKeys33_A35C26B52ED5D74A017ADAA501521794LLOGMR);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type SnippetHeaderModel.CodingKeys and conformance SnippetHeaderModel.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  type metadata accessor for SpeakableString();
  lazy protocol witness table accessor for type SpeakableString and conformance SpeakableString(&lazy protocol witness table cache variable for type SpeakableString and conformance SpeakableString, MEMORY[0x277D55C48], MEMORY[0x277D55C50]);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v1)
  {
    type metadata accessor for SnippetHeaderModel(0);
    v8[14] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v8[13] = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t lazy protocol witness table accessor for type SnippetHeaderModel.CodingKeys and conformance SnippetHeaderModel.CodingKeys()
{
  result = lazy protocol witness table cache variable for type SnippetHeaderModel.CodingKeys and conformance SnippetHeaderModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type SnippetHeaderModel.CodingKeys and conformance SnippetHeaderModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SnippetHeaderModel.CodingKeys and conformance SnippetHeaderModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SnippetHeaderModel.CodingKeys and conformance SnippetHeaderModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type SnippetHeaderModel.CodingKeys and conformance SnippetHeaderModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SnippetHeaderModel.CodingKeys and conformance SnippetHeaderModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SnippetHeaderModel.CodingKeys and conformance SnippetHeaderModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type SnippetHeaderModel.CodingKeys and conformance SnippetHeaderModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SnippetHeaderModel.CodingKeys and conformance SnippetHeaderModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SnippetHeaderModel.CodingKeys and conformance SnippetHeaderModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type SnippetHeaderModel.CodingKeys and conformance SnippetHeaderModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SnippetHeaderModel.CodingKeys and conformance SnippetHeaderModel.CodingKeys);
  }

  return result;
}

void SnippetHeaderModel.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v4 = type metadata accessor for SpeakableString();
  v28 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v29 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10WellnessUI18SnippetHeaderModelV10CodingKeys33_A35C26B52ED5D74A017ADAA501521794LLOGMd, &_ss22KeyedDecodingContainerVy10WellnessUI18SnippetHeaderModelV10CodingKeys33_A35C26B52ED5D74A017ADAA501521794LLOGMR);
  v27 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v7 = &v23 - v6;
  v8 = type metadata accessor for SnippetHeaderModel(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type SnippetHeaderModel.CodingKeys and conformance SnippetHeaderModel.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v12 = v27;
    v11 = v28;
    v24 = v8;
    v25 = v10;
    v33 = 0;
    lazy protocol witness table accessor for type SpeakableString and conformance SpeakableString(&lazy protocol witness table cache variable for type SpeakableString and conformance SpeakableString, MEMORY[0x277D55C48], MEMORY[0x277D55C60]);
    v14 = v29;
    v13 = v30;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v11 + 32))(v25, v14, v4);
    v32 = 1;
    v15 = KeyedDecodingContainer.decode(_:forKey:)();
    v16 = &v25[*(v24 + 20)];
    *v16 = v15;
    v16[1] = v17;
    v31 = 2;
    v18 = KeyedDecodingContainer.decode(_:forKey:)();
    v20 = v19;
    (*(v12 + 8))(v7, v13);
    v21 = v25;
    v22 = &v25[*(v24 + 24)];
    *v22 = v18;
    v22[1] = v20;
    outlined init with copy of SnippetHeaderModel(v21, v26);
    __swift_destroy_boxed_opaque_existential_1(a1);
    outlined destroy of SnippetHeaderModel(v21);
  }
}

uint64_t outlined init with copy of SnippetHeaderModel(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SnippetHeaderModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of SnippetHeaderModel(uint64_t a1)
{
  v2 = type metadata accessor for SnippetHeaderModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t lazy protocol witness table accessor for type SpeakableString and conformance SpeakableString(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata completion function for SnippetHeaderModel(uint64_t a1)
{
  result = type metadata accessor for SpeakableString();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SnippetHeaderModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SnippetHeaderModel.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t specialized SnippetHeaderModel.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x79726F6765746163 && a2 == 0xED00006C6562614CLL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000273EB1350 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000273EB1370 == a2)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t SingleActivitySummarySnippet.init(model:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for SingleActivitySummarySnippet(0);
  v5 = (a2 + *(v4 + 20));
  type metadata accessor for Context();
  lazy protocol witness table accessor for type Context and conformance Context(&lazy protocol witness table cache variable for type Context and conformance Context, MEMORY[0x277D63F68], MEMORY[0x277D63F58]);
  *v5 = EnvironmentObject.init()();
  v5[1] = v6;
  v7 = (a2 + *(v4 + 24));
  *v7 = 0;
  v7[1] = 0;
  return outlined init with take of SingleActivitySummaryModel(a1, a2, type metadata accessor for SingleActivitySummaryModel);
}

uint64_t type metadata accessor for SingleActivitySummarySnippet(uint64_t a1)
{
  result = type metadata singleton initialization cache for SingleActivitySummarySnippet;
  if (!type metadata singleton initialization cache for SingleActivitySummarySnippet)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SingleActivitySummarySnippet.body.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SnippetUI14ComponentStackVy05SwiftB09TupleViewVy08WellnessB00a6HeaderG0V_AD0G0PAAE16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AQtFQOyAA018FactItemHeroNumberG0V_Qo_tGGMd, &_s9SnippetUI14ComponentStackVy05SwiftB09TupleViewVy08WellnessB00a6HeaderG0V_AD0G0PAAE16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AQtFQOyAA018FactItemHeroNumberG0V_Qo_tGGMR);
  v5 = *(v4 - 8);
  v144 = v4;
  v145 = v5;
  MEMORY[0x28223BE20](v4);
  v143 = &v121 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v148 = &v121 - v8;
  v152 = type metadata accessor for FactItemHeroNumberView();
  v150 = *(v152 - 8);
  MEMORY[0x28223BE20](v152);
  v149 = &v121 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AJtFQOyAD018FactItemHeroNumberC0V_Qo_Md, &_s7SwiftUI4ViewP07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AJtFQOyAD018FactItemHeroNumberC0V_Qo_MR);
  v154 = *(v142 - 8);
  MEMORY[0x28223BE20](v142);
  v153 = &v121 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v151 = v10;
  MEMORY[0x28223BE20](v11);
  v155 = &v121 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4FontV6DesignOSgMd, &_s7SwiftUI4FontV6DesignOSgMR);
  MEMORY[0x28223BE20](v13 - 8);
  v157 = &v121 - v14;
  v15 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  MEMORY[0x28223BE20](v15 - 8);
  v158 = &v121 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for SnippetHeaderView(0);
  v146 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v19 = &v121 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v147 = v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v121 - v21;
  v23 = type metadata accessor for Font.TextStyle();
  MEMORY[0x28223BE20](v23);
  v25 = &v121 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v26);
  v31 = *(v2 + 32);
  if (v31 && (v32 = *(v2 + 48)) != 0)
  {
    v33 = *(v2 + 40);
    v133 = *(v2 + 24);
    v134 = v33;
    v34 = *MEMORY[0x277CE0A78];
    v130 = a1;
    v131 = v31;
    v138 = *(v29 + 104);
    v139 = v28;
    v132 = v32;
    v141 = &v121 - v27;
    v156 = v29;
    v138(&v121 - v27, v34, v28, v30);
    v35 = v2 + *(type metadata accessor for SingleActivitySummaryModel(0) + 44);
    v129 = v19;
    v140 = v22;
    outlined init with copy of SnippetHeaderModel?(v35, v22);
    v36 = *(v17 + 20);
    *&v22[v36] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMR);
    swift_storeEnumTagMultiPayload();
    v37 = *(v17 + 24);
    *&v22[v37] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA19ColorSchemeContrastO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA19ColorSchemeContrastO_GMR);
    swift_storeEnumTagMultiPayload();

    LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v38._countAndFlagsBits = 0;
    v38._object = 0xE000000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v38);
    v121 = v2;
    LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(*(v2 + 56));
    v39._countAndFlagsBits = 0;
    v39._object = 0xE000000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v39);
    LocalizedStringKey.init(stringInterpolation:)();
    v40 = Text.init(_:tableName:bundle:comment:)();
    v137 = v41;
    v43 = v42;
    v44 = v139;
    (v138)(v25, *MEMORY[0x277CE0A60], v139);
    LODWORD(v126) = *MEMORY[0x277CE0998];
    v45 = v126;
    v46 = type metadata accessor for Font.Design();
    v122 = v46;
    v47 = *(v46 - 8);
    v125 = *(v47 + 104);
    v135 = v47 + 104;
    v48 = v157;
    v125(v157, v45, v46);
    v49 = *(v47 + 56);
    v123 = v47 + 56;
    v124 = v49;
    v49(v48, 0, 1, v46);
    static Font.system(_:design:weight:)();
    outlined destroy of Font.Design?(v48);
    v50 = *(v156 + 8);
    v156 += 8;
    v128 = v50;
    v50(v25, v44);
    v51 = v40;
    v52 = v137;
    v53 = Text.font(_:)();
    v55 = v54;
    LOBYTE(v48) = v56;

    outlined consume of Text.Storage(v51, v52, v43 & 1);

    LODWORD(v174) = static HierarchicalShapeStyle.secondary.getter();
    v57 = Text.foregroundStyle<A>(_:)();
    v59 = v58;
    LOBYTE(v52) = v60;
    outlined consume of Text.Storage(v53, v55, v48 & 1);

    static Font.Weight.semibold.getter();
    v61 = Text.fontWeight(_:)();
    v136 = v62;
    v137 = v61;
    v127 = v63;
    v138 = v64;
    outlined consume of Text.Storage(v57, v59, v52 & 1);

    LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v65._countAndFlagsBits = 0;
    v65._object = 0xE000000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v65);
    v66 = v121;
    v174 = *v121;
    v67._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v67);

    v68._countAndFlagsBits = 2109216;
    v68._object = 0xE300000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v68);
    v174 = v66[1];
    v69._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v69);

    v70._countAndFlagsBits = 0;
    v70._object = 0xE000000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v70);
    LocalizedStringKey.init(stringInterpolation:)();
    v71 = Text.init(_:tableName:bundle:comment:)();
    v73 = v72;
    LOBYTE(v59) = v74;
    v75 = v157;
    v76 = v122;
    v125(v157, v126, v122);
    v124(v75, 0, 1, v76);
    static Font.system(_:design:weight:)();
    outlined destroy of Font.Design?(v75);
    v77 = Text.font(_:)();
    v79 = v78;
    v81 = v80;

    outlined consume of Text.Storage(v71, v73, v59 & 1);

    v82 = Text.bold()();
    v84 = v83;
    LODWORD(v157) = v85;
    v135 = v86;
    outlined consume of Text.Storage(v77, v79, v81 & 1);

    LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v87._countAndFlagsBits = 0;
    v87._object = 0xE000000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v87);
    v88._countAndFlagsBits = v133;
    v88._object = v131;
    LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v88);

    v89._countAndFlagsBits = 8236;
    v89._object = 0xE200000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v89);
    v90._countAndFlagsBits = v134;
    v90._object = v132;
    LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v90);

    v91._countAndFlagsBits = 0;
    v91._object = 0xE000000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v91);
    LocalizedStringKey.init(stringInterpolation:)();
    v92 = Text.init(_:tableName:bundle:comment:)();
    v131 = v93;
    v132 = v92;
    LODWORD(v134) = v94;
    v133 = v95;
    v96 = MEMORY[0x277CE0BD0];
    v97 = MEMORY[0x277D638F0];
    v175 = MEMORY[0x277CE0BD0];
    v176 = MEMORY[0x277D638F0];
    v98 = swift_allocObject();
    v173 = v97;
    v174 = v98;
    v99 = v82;
    v125 = v84;
    v126 = v82;
    *(v98 + 16) = v82;
    *(v98 + 24) = v84;
    LODWORD(v158) = v157 & 1;
    *(v98 + 32) = v157 & 1;
    *(v98 + 40) = v135;
    v172 = v96;
    v100 = swift_allocObject();
    v170 = 0;
    v171 = v100;
    v102 = v136;
    v101 = v137;
    *(v100 + 16) = v137;
    *(v100 + 24) = v102;
    LODWORD(v157) = v127 & 1;
    *(v100 + 32) = v127 & 1;
    *(v100 + 40) = v138;
    v168 = 0u;
    v169 = 0u;
    v166 = v96;
    v167 = v97;
    v103 = swift_allocObject();
    v164 = 0;
    v165 = v103;
    v105 = v131;
    v104 = v132;
    *(v103 + 16) = v132;
    *(v103 + 24) = v105;
    LODWORD(v134) = v134 & 1;
    *(v103 + 32) = v134;
    *(v103 + 40) = v133;
    v162 = 0u;
    v163 = 0u;
    v161 = 0;
    v159 = 0u;
    v160 = 0u;
    outlined copy of Text.Storage(v99, v84, v158);

    outlined copy of Text.Storage(v101, v102, v157);

    outlined copy of Text.Storage(v104, v105, v134);

    v106 = v149;
    FactItemHeroNumberView.init(number:text1:text2:text3:text4:text5:)();
    lazy protocol witness table accessor for type Context and conformance Context(&lazy protocol witness table cache variable for type FactItemHeroNumberView and conformance FactItemHeroNumberView, MEMORY[0x277D63E08], MEMORY[0x277D63E00]);
    v107 = v155;
    v108 = v152;
    View.componentSpacing(top:bottom:)();
    (*(v150 + 8))(v106, v108);
    v109 = v129;
    outlined init with copy of SingleActivitySummaryModel(v140, v129, type metadata accessor for SnippetHeaderView);
    v111 = v153;
    v110 = v154;
    v112 = v142;
    (*(v154 + 16))(v153, v107, v142);
    v113 = (*(v146 + 80) + 16) & ~*(v146 + 80);
    v114 = (v147 + *(v110 + 80) + v113) & ~*(v110 + 80);
    v115 = swift_allocObject();
    outlined init with take of SingleActivitySummaryModel(v109, v115 + v113, type metadata accessor for SnippetHeaderView);
    (*(v110 + 32))(v115 + v114, v111, v112);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVy08WellnessB0013SnippetHeaderD0V_AA0D0P0fB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AOtFQOyAI018FactItemHeroNumberD0V_Qo_tGMd, &_s7SwiftUI9TupleViewVy08WellnessB0013SnippetHeaderD0V_AA0D0P0fB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AOtFQOyAI018FactItemHeroNumberD0V_Qo_tGMR);
    lazy protocol witness table accessor for type TupleView<(SashStandardView, <<opaque return type of View.componentTapped(isNavigation:perform:)>>.0, StatusIndicatorView)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type TupleView<(SnippetHeaderView, <<opaque return type of View.componentSpacing(top:bottom:)>>.0)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVy08WellnessB0013SnippetHeaderD0V_AA0D0P0fB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AOtFQOyAI018FactItemHeroNumberD0V_Qo_tGMd, &_s7SwiftUI9TupleViewVy08WellnessB0013SnippetHeaderD0V_AA0D0P0fB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AOtFQOyAI018FactItemHeroNumberD0V_Qo_tGMR, MEMORY[0x277CE14C8]);
    v116 = v148;
    a1 = v130;
    ComponentStack.init(content:)();
    v118 = v144;
    v117 = v145;
    (*(v145 + 16))(v143, v116, v144);
    lazy protocol witness table accessor for type TupleView<(SashStandardView, <<opaque return type of View.componentTapped(isNavigation:perform:)>>.0, StatusIndicatorView)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type ComponentStack<TupleView<(SnippetHeaderView, <<opaque return type of View.componentSpacing(top:bottom:)>>.0)>> and conformance ComponentStack<A>, &_s9SnippetUI14ComponentStackVy05SwiftB09TupleViewVy08WellnessB00a6HeaderG0V_AD0G0PAAE16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AQtFQOyAA018FactItemHeroNumberG0V_Qo_tGGMd, &_s9SnippetUI14ComponentStackVy05SwiftB09TupleViewVy08WellnessB00a6HeaderG0V_AD0G0PAAE16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AQtFQOyAA018FactItemHeroNumberG0V_Qo_tGGMR, MEMORY[0x277D63B98]);
    v119 = AnyView.init<A>(_:)();
    outlined consume of Text.Storage(v132, v131, v134);

    outlined consume of Text.Storage(v137, v136, v157);

    outlined consume of Text.Storage(v126, v125, v158);

    (*(v117 + 8))(v116, v118);
    (*(v110 + 8))(v107, v112);
    outlined destroy of SnippetHeaderView(v140);
    result = v128(v141, v139);
  }

  else
  {
    result = AnyView.init<A>(_:)();
    v119 = result;
  }

  *a1 = v119;
  return result;
}

uint64_t closure #1 in SingleActivitySummarySnippet.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AJtFQOyAD018FactItemHeroNumberC0V_Qo_Md, &_s7SwiftUI4ViewP07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AJtFQOyAD018FactItemHeroNumberC0V_Qo_MR);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16 - v8;
  v10 = type metadata accessor for SnippetHeaderView(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of SingleActivitySummaryModel(a1, v12, type metadata accessor for SnippetHeaderView);
  v13 = *(v7 + 16);
  v13(v9, a2, v6);
  outlined init with copy of SingleActivitySummaryModel(v12, a3, type metadata accessor for SnippetHeaderView);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WellnessUI17SnippetHeaderViewV_05SwiftB00E0P0cB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AMtFQOyAG018FactItemHeroNumberE0V_Qo_tMd, ".1");
  v13((a3 + *(v14 + 48)), v9, v6);
  (*(v7 + 8))(v9, v6);
  return outlined destroy of SnippetHeaderView(v12);
}

uint64_t outlined init with copy of SingleActivitySummaryModel(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with take of SingleActivitySummaryModel(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t partial apply for closure #1 in SingleActivitySummarySnippet.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SnippetHeaderView(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AJtFQOyAD018FactItemHeroNumberC0V_Qo_Md, &_s7SwiftUI4ViewP07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AJtFQOyAD018FactItemHeroNumberC0V_Qo_MR) - 8);
  v7 = v1 + ((v5 + *(v6 + 80)) & ~*(v6 + 80));

  return closure #1 in SingleActivitySummarySnippet.body.getter(v1 + v4, v7, a1);
}

void type metadata completion function for SingleActivitySummarySnippet(uint64_t a1)
{
  type metadata accessor for SingleActivitySummaryModel(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for EnvironmentObject<Context>(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for String?();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t GenericMedCompletedLogModel.time.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

void GenericMedCompletedLogModel.time.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
}

uint64_t type metadata accessor for GenericMedCompletedLogModel(uint64_t a1)
{
  result = type metadata singleton initialization cache for GenericMedCompletedLogModel;
  if (!type metadata singleton initialization cache for GenericMedCompletedLogModel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t GenericMedCompletedLogModel.dontDisplayGranularTime.setter(char a1)
{
  result = type metadata accessor for GenericMedCompletedLogModel(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t GenericMedCompletedLogModel.sashBundleID.getter()
{
  v1 = *(v0 + *(type metadata accessor for GenericMedCompletedLogModel(0) + 32));

  return v1;
}

void GenericMedCompletedLogModel.sashBundleID.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for GenericMedCompletedLogModel(0) + 32));

  *v5 = a1;
  v5[1] = a2;
}

uint64_t GenericMedCompletedLogModel.isSmartEnabled.setter(char a1)
{
  result = type metadata accessor for GenericMedCompletedLogModel(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t GenericMedCompletedLogModel.loggedLabel.getter()
{
  v1 = *(v0 + *(type metadata accessor for GenericMedCompletedLogModel(0) + 40));

  return v1;
}

void GenericMedCompletedLogModel.loggedLabel.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for GenericMedCompletedLogModel(0) + 40));

  *v5 = a1;
  v5[1] = a2;
}

uint64_t GenericMedCompletedLogModel.skippedLabel.getter()
{
  v1 = *(v0 + *(type metadata accessor for GenericMedCompletedLogModel(0) + 44));

  return v1;
}

void GenericMedCompletedLogModel.skippedLabel.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for GenericMedCompletedLogModel(0) + 44));

  *v5 = a1;
  v5[1] = a2;
}

uint64_t GenericMedCompletedLogModel.takenLabel.getter()
{
  v1 = *(v0 + *(type metadata accessor for GenericMedCompletedLogModel(0) + 48));

  return v1;
}

void GenericMedCompletedLogModel.takenLabel.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for GenericMedCompletedLogModel(0) + 48));

  *v5 = a1;
  v5[1] = a2;
}

uint64_t GenericMedCompletedLogModel.allScheduledMedicationsLabel.getter()
{
  v1 = *(v0 + *(type metadata accessor for GenericMedCompletedLogModel(0) + 52));

  return v1;
}

void GenericMedCompletedLogModel.allScheduledMedicationsLabel.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for GenericMedCompletedLogModel(0) + 52));

  *v5 = a1;
  v5[1] = a2;
}

uint64_t GenericMedCompletedLogModel.init(medStatus:givenTime:url:dontDisplayGranularTime:sashBundleID:isSmartEnabled:loggedLabel:skippedLabel:takenLabel:allScheduledMedicationsLabel:snippetHeaderModel:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v69 = a8;
  v68 = a7;
  v66 = a6;
  v64 = a5;
  v62 = a4;
  v57 = a3;
  v48 = a2;
  v70 = a17;
  v67 = a16;
  v65 = a15;
  v63 = a14;
  v60 = a12;
  v61 = a13;
  v58 = a10;
  v59 = a11;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit11AppPunchoutVSgMd, &_s10SnippetKit11AppPunchoutVSgMR);
  MEMORY[0x28223BE20](v19 - 8);
  v50 = &v48 - v20;
  *(a9 + 8) = 0;
  *(a9 + 16) = 0xE000000000000000;
  v21 = type metadata accessor for GenericMedCompletedLogModel(0);
  v22 = v21[6];
  v56 = v22;
  v53 = type metadata accessor for AppPunchout();
  v23 = *(v53 - 8);
  v52 = *(v23 + 56);
  v54 = v23 + 56;
  v52(a9 + v22, 1, 1, v53);
  v55 = v21[7];
  *(a9 + v55) = 0;
  v24 = (a9 + v21[8]);
  *v24 = 0xD000000000000010;
  v24[1] = 0x8000000273EB0FF0;
  v51 = v21[9];
  *(a9 + v51) = 0;
  v25 = (a9 + v21[10]);
  *v25 = 0;
  v25[1] = 0;
  v26 = (a9 + v21[11]);
  *v26 = 0;
  v26[1] = 0;
  v27 = (a9 + v21[12]);
  *v27 = 0;
  v27[1] = 0;
  v28 = (a9 + v21[13]);
  *v28 = 0;
  v28[1] = 0;
  v29 = v21[14];
  v49 = v29;
  v30 = type metadata accessor for SnippetHeaderModel(0);
  (*(*(v30 - 8) + 56))(a9 + v29, 1, 1, v30);
  *a9 = a1;
  v31 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  [v31 setTimeStyle_];
  isa = Date._bridgeToObjectiveC()().super.isa;
  v33 = [v31 stringFromDate_];

  v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v36 = v35;

  *(a9 + 8) = v34;
  *(a9 + 16) = v36;
  v37 = v50;
  v38 = v57;
  GenericMedCompletedLogModel.createAppPunchout(url:)(v57);
  outlined destroy of AppPunchout?(v38, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v39 = type metadata accessor for Date();
  (*(*(v39 - 8) + 8))(v48, v39);
  v52(v37, 0, 1, v53);
  outlined assign with take of AppPunchout?(v37, a9 + v56, &_s10SnippetKit11AppPunchoutVSgMd, &_s10SnippetKit11AppPunchoutVSgMR);
  *(a9 + v55) = v62;
  v40 = v66;
  *v24 = v64;
  v24[1] = v40;
  *(a9 + v51) = v68;
  v41 = v58;
  v42 = v59;
  *v25 = v69;
  v25[1] = v41;
  v43 = v60;
  v44 = v61;
  *v26 = v42;
  v26[1] = v43;
  v45 = v63;
  *v27 = v44;
  v27[1] = v45;
  v46 = v67;
  *v28 = v65;
  v28[1] = v46;
  return outlined assign with take of AppPunchout?(v70, a9 + v49, &_s10WellnessUI18SnippetHeaderModelVSgMd, &_s10WellnessUI18SnippetHeaderModelVSgMR);
}

uint64_t GenericMedCompletedLogModel.createAppPunchout(url:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v10 - v3;
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AppPunchout?(a1, v4, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    outlined destroy of AppPunchout?(v4, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    return AppPunchout.init(punchOutUri:bundleId:appDisplayName:)();
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    URL.absoluteString.getter();
    AppPunchout.init(punchOutUri:bundleId:appDisplayName:)();
    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t GenericMedCompletedLogModel.CodingKeys.stringValue.getter(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 0x757461745364656DLL;
    v7 = 0x68636E7550707061;
    v8 = 0xD000000000000017;
    if (a1 != 3)
    {
      v8 = 0x646E754268736173;
    }

    if (a1 != 2)
    {
      v7 = v8;
    }

    if (a1)
    {
      v6 = 1701669236;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v1 = 0x62614C6E656B6174;
    v2 = 0xD00000000000001CLL;
    if (a1 != 9)
    {
      v2 = 0xD000000000000012;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0x457472616D537369;
    v4 = 0x614C646567676F6CLL;
    if (a1 != 6)
    {
      v4 = 0x4C64657070696B73;
    }

    if (a1 != 5)
    {
      v3 = v4;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance GenericMedCompletedLogModel.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized GenericMedCompletedLogModel.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance GenericMedCompletedLogModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type GenericMedCompletedLogModel.CodingKeys and conformance GenericMedCompletedLogModel.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance GenericMedCompletedLogModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type GenericMedCompletedLogModel.CodingKeys and conformance GenericMedCompletedLogModel.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t GenericMedCompletedLogModel.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10WellnessUI27GenericMedCompletedLogModelV10CodingKeys33_8FF9F1E13DF605BA43A07E86B13C674DLLOGMd, &_ss22KeyedEncodingContainerVy10WellnessUI27GenericMedCompletedLogModelV10CodingKeys33_8FF9F1E13DF605BA43A07E86B13C674DLLOGMR);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type GenericMedCompletedLogModel.CodingKeys and conformance GenericMedCompletedLogModel.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v1)
  {
    v8[14] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    type metadata accessor for GenericMedCompletedLogModel(0);
    v8[13] = 2;
    type metadata accessor for AppPunchout();
    _s10SnippetKit11AppPunchoutVACSEAAWlTm_6(&lazy protocol witness table cache variable for type AppPunchout and conformance AppPunchout, MEMORY[0x277D62880], MEMORY[0x277D62888]);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v8[12] = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    v8[11] = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    v8[10] = 5;
    KeyedEncodingContainer.encode(_:forKey:)();
    v8[9] = 6;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v8[8] = 7;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v8[7] = 8;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v8[6] = 9;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v8[5] = 10;
    type metadata accessor for SnippetHeaderModel(0);
    _s10SnippetKit11AppPunchoutVACSEAAWlTm_6(&lazy protocol witness table cache variable for type SnippetHeaderModel and conformance SnippetHeaderModel, type metadata accessor for SnippetHeaderModel, &protocol conformance descriptor for SnippetHeaderModel);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t lazy protocol witness table accessor for type GenericMedCompletedLogModel.CodingKeys and conformance GenericMedCompletedLogModel.CodingKeys()
{
  result = lazy protocol witness table cache variable for type GenericMedCompletedLogModel.CodingKeys and conformance GenericMedCompletedLogModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type GenericMedCompletedLogModel.CodingKeys and conformance GenericMedCompletedLogModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GenericMedCompletedLogModel.CodingKeys and conformance GenericMedCompletedLogModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GenericMedCompletedLogModel.CodingKeys and conformance GenericMedCompletedLogModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type GenericMedCompletedLogModel.CodingKeys and conformance GenericMedCompletedLogModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GenericMedCompletedLogModel.CodingKeys and conformance GenericMedCompletedLogModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GenericMedCompletedLogModel.CodingKeys and conformance GenericMedCompletedLogModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type GenericMedCompletedLogModel.CodingKeys and conformance GenericMedCompletedLogModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GenericMedCompletedLogModel.CodingKeys and conformance GenericMedCompletedLogModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GenericMedCompletedLogModel.CodingKeys and conformance GenericMedCompletedLogModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type GenericMedCompletedLogModel.CodingKeys and conformance GenericMedCompletedLogModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GenericMedCompletedLogModel.CodingKeys and conformance GenericMedCompletedLogModel.CodingKeys);
  }

  return result;
}

uint64_t GenericMedCompletedLogModel.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v54 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WellnessUI18SnippetHeaderModelVSgMd, &_s10WellnessUI18SnippetHeaderModelVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v55 = v53 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit11AppPunchoutVSgMd, &_s10SnippetKit11AppPunchoutVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v53 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10WellnessUI27GenericMedCompletedLogModelV10CodingKeys33_8FF9F1E13DF605BA43A07E86B13C674DLLOGMd, &_ss22KeyedDecodingContainerVy10WellnessUI27GenericMedCompletedLogModelV10CodingKeys33_8FF9F1E13DF605BA43A07E86B13C674DLLOGMR);
  v56 = *(v8 - 8);
  v57 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = v53 - v9;
  v11 = type metadata accessor for GenericMedCompletedLogModel(0);
  MEMORY[0x28223BE20](v11);
  v13 = v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 24);
  v16 = type metadata accessor for AppPunchout();
  v17 = *(*(v16 - 8) + 56);
  v61 = v15;
  v17(&v13[v15], 1, 1, v16);
  v18 = v11[14];
  v62 = v13;
  v19 = &v13[v18];
  v20 = type metadata accessor for SnippetHeaderModel(0);
  v21 = *(*(v20 - 8) + 56);
  v59 = v19;
  v21(v19, 1, 1, v20);
  v22 = a1[3];
  v60 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v22);
  lazy protocol witness table accessor for type GenericMedCompletedLogModel.CodingKeys and conformance GenericMedCompletedLogModel.CodingKeys();
  v58 = v10;
  v23 = v63;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v23)
  {
    v63 = v23;
    v28 = v61;
    v27 = v62;
LABEL_4:
    __swift_destroy_boxed_opaque_existential_1(v60);

    outlined destroy of AppPunchout?(&v27[v28], &_s10SnippetKit11AppPunchoutVSgMd, &_s10SnippetKit11AppPunchoutVSgMR);

    return outlined destroy of AppPunchout?(v59, &_s10WellnessUI18SnippetHeaderModelVSgMd, &_s10WellnessUI18SnippetHeaderModelVSgMR);
  }

  v53[2] = v20;
  v74 = 0;
  v25 = v57;
  v24 = v58;
  v26 = KeyedDecodingContainer.decode(_:forKey:)();
  v27 = v62;
  *v62 = v26 & 1;
  v73 = 1;
  v30 = KeyedDecodingContainer.decode(_:forKey:)();
  v63 = 0;
  v28 = v61;
  *(v27 + 1) = v30;
  *(v27 + 2) = v31;
  v53[1] = v31;
  v72 = 2;
  _s10SnippetKit11AppPunchoutVACSEAAWlTm_6(&lazy protocol witness table cache variable for type AppPunchout and conformance AppPunchout, MEMORY[0x277D62880], MEMORY[0x277D62890]);
  v32 = v63;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v63 = v32;
  if (v32)
  {
    (*(v56 + 8))(v24, v25);
    goto LABEL_4;
  }

  outlined assign with take of AppPunchout?(v7, &v27[v28], &_s10SnippetKit11AppPunchoutVSgMd, &_s10SnippetKit11AppPunchoutVSgMR);
  v71 = 3;
  v33 = v63;
  v34 = KeyedDecodingContainer.decode(_:forKey:)();
  if (v33)
  {
    v63 = v33;
    (*(v56 + 8))(v24, v25);
    goto LABEL_4;
  }

  v27[v11[7]] = v34 & 1;
  v70 = 4;
  v35 = KeyedDecodingContainer.decode(_:forKey:)();
  v36 = &v27[v11[8]];
  *v36 = v35;
  v36[1] = v37;
  v53[0] = v37;
  v69 = 5;
  v27[v11[9]] = KeyedDecodingContainer.decode(_:forKey:)() & 1;
  v68 = 6;
  v38 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v39 = &v27[v11[10]];
  *v39 = v38;
  v39[1] = v40;
  v67 = 7;
  v41 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v42 = &v27[v11[11]];
  *v42 = v41;
  v42[1] = v43;
  v66 = 8;
  v44 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v63 = 0;
  v46 = &v27[v11[12]];
  *v46 = v44;
  v46[1] = v45;
  v65 = 9;
  v47 = v63;
  v48 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v63 = v47;
  if (v47 || (v50 = &v62[v11[13]], *v50 = v48, v50[1] = v49, v64 = 10, _s10SnippetKit11AppPunchoutVACSEAAWlTm_6(&lazy protocol witness table cache variable for type SnippetHeaderModel and conformance SnippetHeaderModel, type metadata accessor for SnippetHeaderModel, &protocol conformance descriptor for SnippetHeaderModel), v51 = v63, KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)(), (v63 = v51) != 0))
  {
    (*(v56 + 8))(v58, v57);
    v28 = v61;
    v27 = v62;
    goto LABEL_4;
  }

  (*(v56 + 8))(v58, v57);
  outlined assign with take of AppPunchout?(v55, v59, &_s10WellnessUI18SnippetHeaderModelVSgMd, &_s10WellnessUI18SnippetHeaderModelVSgMR);
  v52 = v62;
  outlined init with copy of GenericMedCompletedLogModel(v62, v54);
  __swift_destroy_boxed_opaque_existential_1(v60);
  return outlined destroy of GenericMedCompletedLogModel(v52);
}

uint64_t outlined init with copy of GenericMedCompletedLogModel(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GenericMedCompletedLogModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of GenericMedCompletedLogModel(uint64_t a1)
{
  v2 = type metadata accessor for GenericMedCompletedLogModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t _s10SnippetKit11AppPunchoutVACSEAAWlTm_6(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void type metadata completion function for GenericMedCompletedLogModel(uint64_t a1)
{
  _s10SnippetKit11AppPunchoutVSgMaTm_0(319, &lazy cache variable for type metadata for AppPunchout?, MEMORY[0x277D62880]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for String?();
    if (v2 <= 0x3F)
    {
      _s10SnippetKit11AppPunchoutVSgMaTm_0(319, &lazy cache variable for type metadata for SnippetHeaderModel?, type metadata accessor for SnippetHeaderModel);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for GenericMedCompletedLogModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for GenericMedCompletedLogModel.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t specialized GenericMedCompletedLogModel.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x757461745364656DLL && a2 == 0xE900000000000073;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701669236 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x68636E7550707061 && a2 == 0xEB0000000074756FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000273EB1050 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x646E754268736173 && a2 == 0xEC0000004449656CLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x457472616D537369 && a2 == 0xEE0064656C62616ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x614C646567676F6CLL && a2 == 0xEB000000006C6562 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x4C64657070696B73 && a2 == 0xEC0000006C656261 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x62614C6E656B6174 && a2 == 0xEA00000000006C65 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD00000000000001CLL && 0x8000000273EB1390 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000273EB0F30 == a2)
  {

    return 10;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 10;
    }

    else
    {
      return 11;
    }
  }
}

uint64_t HeightQuerySnippet.init(model:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = (a2 + *(type metadata accessor for HeightQuerySnippet(0) + 20));
  type metadata accessor for Context();
  lazy protocol witness table accessor for type Context and conformance Context(&lazy protocol witness table cache variable for type Context and conformance Context, MEMORY[0x277D63F68], MEMORY[0x277D63F58]);
  *v4 = EnvironmentObject.init()();
  v4[1] = v5;
  return outlined init with take of HeightQueryModel(a1, a2, type metadata accessor for HeightQueryModel);
}

uint64_t type metadata accessor for HeightQuerySnippet(uint64_t a1)
{
  result = type metadata singleton initialization cache for HeightQuerySnippet;
  if (!type metadata singleton initialization cache for HeightQuerySnippet)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t HeightQuerySnippet.body.getter@<X0>(uint64_t *a1@<X8>)
{
  v170 = a1;
  Snippet = type metadata accessor for HeightQuerySnippet(0);
  v155 = *(Snippet - 8);
  MEMORY[0x28223BE20](Snippet - 8);
  v157 = v3;
  v158 = &v133 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SnippetUI14ComponentStackVy05SwiftB09TupleViewVy08WellnessB00a6HeaderG0V_AD03AnyG0VtGGMd, &_s9SnippetUI14ComponentStackVy05SwiftB09TupleViewVy08WellnessB00a6HeaderG0V_AD03AnyG0VtGGMR);
  v161 = *(v4 - 8);
  v162 = v4;
  MEMORY[0x28223BE20](v4);
  v159 = &v133 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP07SnippetB0E15componentTapped12isNavigation7performQrSb_yyctFQOyAD14ComponentStackVyAA05TupleC0Vy08WellnessB00d6HeaderC0V_AA03AnyC0VtGG_Qo_Md, &_s7SwiftUI4ViewP07SnippetB0E15componentTapped12isNavigation7performQrSb_yyctFQOyAD14ComponentStackVyAA05TupleC0Vy08WellnessB00d6HeaderC0V_AA03AnyC0VtGG_Qo_MR);
  v163 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v160 = &v133 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v156 = &v133 - v9;
  v10 = type metadata accessor for FactItemHeroNumberView();
  v153 = *(v10 - 8);
  v154 = v10;
  MEMORY[0x28223BE20](v10);
  v151 = &v133 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AJtFQOyAD018FactItemHeroNumberC0V_Qo_Md, &_s7SwiftUI4ViewP07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AJtFQOyAD018FactItemHeroNumberC0V_Qo_MR);
  MEMORY[0x28223BE20](v152);
  v150 = &v133 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4FontV6DesignOSgMd, &_s7SwiftUI4FontV6DesignOSgMR);
  MEMORY[0x28223BE20](v13 - 8);
  v144 = &v133 - v14;
  v15 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  MEMORY[0x28223BE20](v15 - 8);
  v164 = &v133 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Font.TextStyle();
  v165 = *(v17 - 8);
  v166 = v17;
  MEMORY[0x28223BE20](v17);
  v167 = &v133 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = type metadata accessor for SnippetHeaderView(0);
  v145 = *(v142 - 8);
  MEMORY[0x28223BE20](v142);
  v146 = v19;
  v147 = &v133 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v169 = &v133 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit11AppPunchoutVSgMd, &_s10SnippetKit11AppPunchoutVSgMR);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = &v133 - v23;
  v25 = type metadata accessor for AppPunchout();
  v26 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v148 = v27;
  v149 = &v133 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v168 = &v133 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  MEMORY[0x28223BE20](v30 - 8);
  v32 = &v133 - v31;
  Model = type metadata accessor for HeightQueryModel(0);
  outlined init with copy of AppPunchout?(v1 + Model[8], v32, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v33 = type metadata accessor for SpeakableString();
  v34 = *(v33 - 8);
  if ((*(v34 + 48))(v32, 1, v33) != 1)
  {
    v141 = v6;
    v140 = SpeakableString.print.getter();
    v39 = v38;
    (*(v34 + 8))(v32, v33);
    outlined init with copy of AppPunchout?(v1, v24, &_s10SnippetKit11AppPunchoutVSgMd, &_s10SnippetKit11AppPunchoutVSgMR);
    if ((*(v26 + 48))(v24, 1, v25) == 1)
    {

      v35 = &_s10SnippetKit11AppPunchoutVSgMd;
      v36 = &_s10SnippetKit11AppPunchoutVSgMR;
      v37 = v24;
      goto LABEL_5;
    }

    v41 = v1;
    v138 = v26;
    v139 = v25;
    v42 = *(v26 + 32);
    v137 = v26 + 32;
    v135 = v39;
    v136 = v42;
    v42(v168, v24, v25);
    v43 = Model;
    v44 = v169;
    outlined init with copy of AppPunchout?(v1 + Model[10], v169, &_s10WellnessUI18SnippetHeaderModelVSgMd, &_s10WellnessUI18SnippetHeaderModelVSgMR);
    v45 = v142;
    v46 = *(v142 + 20);
    *(v44 + v46) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMR);
    swift_storeEnumTagMultiPayload();
    v47 = *(v45 + 24);
    *(v44 + v47) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA19ColorSchemeContrastO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA19ColorSchemeContrastO_GMR);
    swift_storeEnumTagMultiPayload();
    v48 = *(v41 + v43[7] + 8);
    v134 = v41;
    if (v48)
    {
      (*(v165 + 104))(v167, *MEMORY[0x277CE0A78], v166);
    }

    else
    {
      v49 = *(v41 + v43[6] + 8);
      (*(v165 + 104))();
      if ((v49 & 1) == 0)
      {
        LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
        v72._countAndFlagsBits = 0;
        v72._object = 0xE000000000000000;
        LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v72);
        v186 = *(v41 + v43[11]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
        v73._countAndFlagsBits = Optional.description.getter();
        LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v73);

        v74._countAndFlagsBits = 2108704;
        v74._object = 0xE300000000000000;
        LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v74);
        v186 = *(v41 + v43[12]);
        v75._countAndFlagsBits = Optional.description.getter();
        LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v75);

        v76._countAndFlagsBits = 0;
        v76._object = 0xE000000000000000;
        LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v76);
        LocalizedStringKey.init(stringInterpolation:)();
        v77 = Text.init(_:tableName:bundle:comment:)();
        v79 = v78;
        v81 = v80;
        Model = v82;
        v83 = *MEMORY[0x277CE0998];
        v84 = type metadata accessor for Font.Design();
        v85 = *(v84 - 8);
        v86 = v144;
        (*(v85 + 104))(v144, v83, v84);
        (*(v85 + 56))(v86, 0, 1, v84);
        static Font.system(_:design:weight:)();
        outlined destroy of AppPunchout?(v86, &_s7SwiftUI4FontV6DesignOSgMd, &_s7SwiftUI4FontV6DesignOSgMR);
        v87 = Text.font(_:)();
        v89 = v88;
        LOBYTE(v85) = v90;
        v144 = v91;

        outlined consume of Text.Storage(v77, v79, v81 & 1);

        v92 = Text.bold()();
        v94 = v93;
        v96 = v95;
        v98 = v97;
        outlined consume of Text.Storage(v87, v89, v85 & 1);

        *&v186 = v92;
        *(&v186 + 1) = v94;
        v187 = v96 & 1;
        v188 = v98;
        goto LABEL_11;
      }
    }

    LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v50._countAndFlagsBits = 0;
    v50._object = 0xE000000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v50);
    v186 = *(v41 + v43[13]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
    v51._countAndFlagsBits = Optional.description.getter();
    LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v51);

    v52._countAndFlagsBits = 0;
    v52._object = 0xE000000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v52);
    LocalizedStringKey.init(stringInterpolation:)();
    v53 = Text.init(_:tableName:bundle:comment:)();
    v55 = v54;
    v57 = v56;
    v58 = *MEMORY[0x277CE0998];
    v59 = type metadata accessor for Font.Design();
    v60 = *(v59 - 8);
    v61 = v144;
    (*(v60 + 104))(v144, v58, v59);
    (*(v60 + 56))(v61, 0, 1, v59);
    static Font.system(_:design:weight:)();
    outlined destroy of AppPunchout?(v61, &_s7SwiftUI4FontV6DesignOSgMd, &_s7SwiftUI4FontV6DesignOSgMR);
    v62 = Text.font(_:)();
    v64 = v63;
    LOBYTE(v61) = v65;

    outlined consume of Text.Storage(v53, v55, v57 & 1);

    v66 = Text.bold()();
    v68 = v67;
    LOBYTE(v58) = v69;
    v71 = v70;
    outlined consume of Text.Storage(v62, v64, v61 & 1);

    *&v186 = v66;
    *(&v186 + 1) = v68;
    v187 = v58 & 1;
    v188 = v71;
LABEL_11:
    v99 = AnyView.init<A>(_:)();
    v144 = v99;

    LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v100._countAndFlagsBits = 0;
    v100._object = 0xE000000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v100);
    v101._countAndFlagsBits = v140;
    v101._object = v135;
    LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v101);

    v102._countAndFlagsBits = 0;
    v102._object = 0xE000000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v102);
    LocalizedStringKey.init(stringInterpolation:)();
    v103 = Text.init(_:tableName:bundle:comment:)();
    v105 = v104;
    v107 = v106;
    v109 = v108;
    v164 = v108;
    v189 = MEMORY[0x277D63A58];
    v188 = MEMORY[0x277CE11D0];
    *&v186 = v99;
    v185 = 0;
    v183 = 0u;
    v184 = 0u;
    v182 = 0;
    v180 = 0u;
    v181 = 0u;
    v179 = 0;
    v177 = 0u;
    v178 = 0u;
    v175 = MEMORY[0x277CE0BD0];
    v176 = MEMORY[0x277D638F0];
    v110 = swift_allocObject();
    v173 = 0;
    v174 = v110;
    v142 = v105;
    Model = v103;
    *(v110 + 16) = v103;
    *(v110 + 24) = v105;
    LODWORD(v140) = v107 & 1;
    *(v110 + 32) = v107 & 1;
    *(v110 + 40) = v109;
    v171 = 0u;
    v172 = 0u;
    outlined copy of Text.Storage(v103, v105, v107 & 1);

    v111 = v151;
    FactItemHeroNumberView.init(number:text1:text2:text3:text4:text5:)();
    v112 = lazy protocol witness table accessor for type Context and conformance Context(&lazy protocol witness table cache variable for type FactItemHeroNumberView and conformance FactItemHeroNumberView, MEMORY[0x277D63E08], MEMORY[0x277D63E00]);
    v113 = v154;
    View.componentSpacing(top:bottom:)();
    (*(v153 + 8))(v111, v113);
    *&v186 = v113;
    *(&v186 + 1) = v112;
    swift_getOpaqueTypeConformance2();
    v114 = AnyView.init<A>(_:)();
    v115 = v147;
    outlined init with copy of HeightQueryModel(v169, v147, type metadata accessor for SnippetHeaderView);
    v116 = (*(v145 + 80) + 16) & ~*(v145 + 80);
    v117 = (v146 + v116 + 7) & 0xFFFFFFFFFFFFFFF8;
    v118 = swift_allocObject();
    outlined init with take of HeightQueryModel(v115, v118 + v116, type metadata accessor for SnippetHeaderView);
    v154 = v114;
    *(v118 + v117) = v114;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVy08WellnessB0013SnippetHeaderD0V_AA03AnyD0VtGMd, &_s7SwiftUI9TupleViewVy08WellnessB0013SnippetHeaderD0V_AA03AnyD0VtGMR);
    lazy protocol witness table accessor for type TupleView<(SashStandardView, <<opaque return type of View.componentTapped(isNavigation:perform:)>>.0, StatusIndicatorView)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type TupleView<(SnippetHeaderView, AnyView)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVy08WellnessB0013SnippetHeaderD0V_AA03AnyD0VtGMd, &_s7SwiftUI9TupleViewVy08WellnessB0013SnippetHeaderD0V_AA03AnyD0VtGMR, MEMORY[0x277CE14C8]);
    v119 = v159;
    ComponentStack.init(content:)();
    v120 = v158;
    outlined init with copy of HeightQueryModel(v134, v158, type metadata accessor for HeightQuerySnippet);
    v121 = v138;
    v122 = v139;
    v123 = v149;
    (*(v138 + 16))(v149, v168, v139);
    v124 = (*(v155 + 80) + 16) & ~*(v155 + 80);
    v125 = (v157 + *(v121 + 80) + v124) & ~*(v121 + 80);
    v126 = swift_allocObject();
    outlined init with take of HeightQueryModel(v120, v126 + v124, type metadata accessor for HeightQuerySnippet);
    v136(v126 + v125, v123, v122);
    v127 = lazy protocol witness table accessor for type TupleView<(SashStandardView, <<opaque return type of View.componentTapped(isNavigation:perform:)>>.0, StatusIndicatorView)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type ComponentStack<TupleView<(SnippetHeaderView, AnyView)>> and conformance ComponentStack<A>, &_s9SnippetUI14ComponentStackVy05SwiftB09TupleViewVy08WellnessB00a6HeaderG0V_AD03AnyG0VtGGMd, &_s9SnippetUI14ComponentStackVy05SwiftB09TupleViewVy08WellnessB00a6HeaderG0V_AD03AnyG0VtGGMR, MEMORY[0x277D63B98]);
    v128 = v156;
    v129 = v162;
    View.componentTapped(isNavigation:perform:)();

    (*(v161 + 8))(v119, v129);
    v130 = v163;
    v131 = v141;
    (*(v163 + 16))(v160, v128, v141);
    *&v186 = v129;
    *(&v186 + 1) = v127;
    swift_getOpaqueTypeConformance2();
    v132 = AnyView.init<A>(_:)();

    outlined consume of Text.Storage(Model, v142, v140);

    (*(v130 + 8))(v128, v131);
    (*(v165 + 8))(v167, v166);
    outlined destroy of SnippetHeaderView(v169);
    (*(v121 + 8))(v168, v122);
    result = v132;
    goto LABEL_12;
  }

  v35 = &_s16SiriDialogEngine15SpeakableStringVSgMd;
  v36 = &_s16SiriDialogEngine15SpeakableStringVSgMR;
  v37 = v32;
LABEL_5:
  outlined destroy of AppPunchout?(v37, v35, v36);
  result = AnyView.init<A>(_:)();
LABEL_12:
  *v170 = result;
  return result;
}

uint64_t closure #1 in HeightQuerySnippet.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for SnippetHeaderView(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of HeightQueryModel(a1, v8, type metadata accessor for SnippetHeaderView);
  outlined init with copy of HeightQueryModel(v8, a3, type metadata accessor for SnippetHeaderView);
  *(a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10WellnessUI17SnippetHeaderViewV_05SwiftB003AnyE0VtMd, &_s10WellnessUI17SnippetHeaderViewV_05SwiftB003AnyE0VtMR) + 48)) = a2;

  return outlined destroy of SnippetHeaderView(v8);
}

void closure #2 in HeightQuerySnippet.body.getter(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + *(type metadata accessor for HeightQuerySnippet(0) + 20));
  if (v2)
  {
    v3 = v2;
    dispatch thunk of Context.perform(appPunchout:)();
  }

  else
  {
    type metadata accessor for Context();
    lazy protocol witness table accessor for type Context and conformance Context(&lazy protocol witness table cache variable for type Context and conformance Context, MEMORY[0x277D63F68], MEMORY[0x277D63F58]);
    EnvironmentObject.error()();
    __break(1u);
  }
}

uint64_t partial apply for closure #1 in HeightQuerySnippet.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SnippetHeaderView(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return closure #1 in HeightQuerySnippet.body.getter(v1 + v4, v5, a1);
}

uint64_t outlined init with copy of HeightQueryModel(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with take of HeightQueryModel(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void partial apply for closure #2 in HeightQuerySnippet.body.getter()
{
  v1 = *(type metadata accessor for HeightQuerySnippet(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for AppPunchout() - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  closure #2 in HeightQuerySnippet.body.getter(v0 + v2, v5);
}

void type metadata completion function for HeightQuerySnippet(uint64_t a1)
{
  type metadata accessor for HeightQueryModel(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for EnvironmentObject<Context>(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void Image.init(fileName:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Dummy #1 in Image.init(fileName:)();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  v6 = MEMORY[0x2743E09B0](a1, a2);
  v7 = [objc_opt_self() imageNamed:v6 inBundle:v5 withConfiguration:0];

  if (v7)
  {
    v8 = v7;

    Image.init(uiImage:)();
  }

  else
  {
    __break(1u);
  }
}

uint64_t type metadata accessor for HeightQueryModel(uint64_t a1)
{
  result = type metadata singleton initialization cache for HeightQueryModel;
  if (!type metadata singleton initialization cache for HeightQueryModel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t HeightQueryModel.height.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for HeightQueryModel(0);
  v6 = v2 + *(result + 20);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t HeightQueryModel.maxHeight.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for HeightQueryModel(0);
  v6 = v2 + *(result + 24);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t HeightQueryModel.minHeight.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for HeightQueryModel(0);
  v6 = v2 + *(result + 28);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t HeightQueryModel.isDifferenceNegligible.setter(char a1)
{
  result = type metadata accessor for HeightQueryModel(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t HeightQueryModel.minHeightSymbolic.getter()
{
  v1 = *(v0 + *(type metadata accessor for HeightQueryModel(0) + 44));

  return v1;
}

void HeightQueryModel.minHeightSymbolic.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for HeightQueryModel(0) + 44));

  *v5 = a1;
  v5[1] = a2;
}

uint64_t HeightQueryModel.maxHeightSymbolic.getter()
{
  v1 = *(v0 + *(type metadata accessor for HeightQueryModel(0) + 48));

  return v1;
}

void HeightQueryModel.maxHeightSymbolic.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for HeightQueryModel(0) + 48));

  *v5 = a1;
  v5[1] = a2;
}

uint64_t HeightQueryModel.heightSymbolic.getter()
{
  v1 = *(v0 + *(type metadata accessor for HeightQueryModel(0) + 52));

  return v1;
}

void HeightQueryModel.heightSymbolic.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for HeightQueryModel(0) + 52));

  *v5 = a1;
  v5[1] = a2;
}

uint64_t HeightQueryModel.init(height:maxHeight:minHeight:dateLabel:isDifferenceNegligible:unit:url:headerModel:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X6>, int a8@<W7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v60 = a8;
  LODWORD(v59) = a6;
  v63 = a10;
  v64 = a7;
  v61 = a11;
  v62 = a12;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit11AppPunchoutVSgMd, &_s10SnippetKit11AppPunchoutVSgMR);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v53 - v19;
  v21 = type metadata accessor for AppPunchout();
  v22 = *(v21 - 8);
  v57 = *(v22 + 56);
  v58 = v22 + 56;
  v57(a9, 1, 1, v21);
  Model = type metadata accessor for HeightQueryModel(0);
  v24 = Model[8];
  v53 = v24;
  v25 = type metadata accessor for SpeakableString();
  (*(*(v25 - 8) + 56))(a9 + v24, 1, 1, v25);
  v26 = Model[10];
  v54 = v26;
  v27 = type metadata accessor for SnippetHeaderModel(0);
  (*(*(v27 - 8) + 56))(a9 + v26, 1, 1, v27);
  if ((a1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v28 = a1;
  }

  else
  {
    v28 = 0;
  }

  if (a2)
  {
    v29 = a1;
  }

  else
  {
    v29 = v28;
  }

  v56 = v29;
  v30 = a9 + Model[5];
  *v30 = v29;
  v55 = a2 & 1 | ((a1 & 0x7FFFFFFFFFFFFFFFLL) == 0);
  *(v30 + 8) = v55;
  v31 = (a3 & 0x7FFFFFFFFFFFFFFFLL) == 0;
  if ((a3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v32 = a3;
  }

  else
  {
    v32 = 0;
  }

  if ((a4 & 1) == 0)
  {
    a3 = v32;
  }

  v33 = a9 + Model[6];
  *v33 = a3;
  v34 = (a4 | v31) & 1;
  *(v33 + 8) = v34;
  v35 = (a5 & 0x7FFFFFFFFFFFFFFFLL) == 0;
  if ((a5 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v36 = a5;
  }

  else
  {
    v36 = 0;
  }

  v37 = v59;
  if ((v59 & 1) == 0)
  {
    a5 = v36;
  }

  v38 = a9 + Model[7];
  v39 = (a9 + Model[11]);
  v40 = (a9 + Model[12]);
  v59 = (a9 + Model[13]);
  *v38 = a5;
  v41 = (v37 | v35) & 1;
  *(v38 + 8) = v41;
  *(a9 + Model[9]) = v60;
  outlined assign with copy of SpeakableString?(v64, a9 + v53, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v42 = v61;
  HeightQueryModel.createAppPunchout(url:)(v61);
  v57(v20, 0, 1, v21);
  outlined assign with take of AppPunchout?(v20, a9, &_s10SnippetKit11AppPunchoutVSgMd, &_s10SnippetKit11AppPunchoutVSgMR);
  v43 = v62;
  outlined assign with copy of SpeakableString?(v62, a9 + v54, &_s10WellnessUI18SnippetHeaderModelVSgMd, &_s10WellnessUI18SnippetHeaderModelVSgMR);
  v44 = v41;
  v45 = v63;
  *v39 = HeightQueryModel.getFormattedSymbolicString(value:unit:)(a5, v44, v63);
  v39[1] = v46;
  *v40 = HeightQueryModel.getFormattedSymbolicString(value:unit:)(a3, v34, v45);
  v40[1] = v47;
  v48 = HeightQueryModel.getFormattedSymbolicString(value:unit:)(v56, v55, v45);
  v50 = v49;
  outlined destroy of AppPunchout?(v43, &_s10WellnessUI18SnippetHeaderModelVSgMd, &_s10WellnessUI18SnippetHeaderModelVSgMR);
  outlined destroy of AppPunchout?(v42, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  outlined destroy of AppPunchout?(v45, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  result = outlined destroy of AppPunchout?(v64, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v52 = v59;
  *v59 = v48;
  v52[1] = v50;
  return result;
}