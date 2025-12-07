uint64_t sub_222A43424(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_222B02F78() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_222A434B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_222B01888() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);
  v7 = *(a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  v10 = v7 == *v9 && v8 == v9[1];
  if (!v10 && (sub_222B02F78() & 1) == 0)
  {
    return 0;
  }

  v11 = *(a3 + 24);
  v12 = *(a1 + v11);
  v13 = *(a2 + v11);

  return sub_222A43024(v12, v13);
}

uint64_t sub_222A43560(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 20));

  return v2;
}

uint64_t sub_222A435F4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D150, &qword_222B06930);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t UniversalCandidate.candidateEntity.getter@<X0>(void *a1@<X8>)
{
  *a1 = *(v1 + *(type metadata accessor for UniversalCandidate(0) + 20));
}

uint64_t UniversalCandidate.score.setter(double a1)
{
  result = type metadata accessor for UniversalCandidate(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t UniversalCandidate.lastSurfaced.setter(double a1)
{
  result = type metadata accessor for UniversalCandidate(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

int *UniversalCandidate.init(id:node:score:lastSurfaced:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, double a3@<X2>, char a4@<W3>, uint64_t a5@<X8>, double a6@<D0>)
{
  v11 = *a2;
  v12 = sub_222B018D8();
  (*(*(v12 - 8) + 32))(a5, a1, v12);
  result = type metadata accessor for UniversalCandidate(0);
  *(a5 + result[5]) = v11;
  *(a5 + result[6]) = a6;
  v14 = a3;
  if (a4)
  {
    v14 = 0.0;
  }

  *(a5 + result[7]) = v14;
  return result;
}

uint64_t static UniversalCandidate.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for UniversalCandidate(0) + 20);
  v5 = *(a1 + v4);
  v7 = *(a2 + v4);
  v8 = v5;

  LOBYTE(a2) = _s28SiriPrivateLearningAnalytics15UniversalEntityO2eeoiySbAC_ACtFZ_0(&v8, &v7);

  return a2 & 1;
}

uint64_t sub_222A439A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 20);
  v4 = *(a1 + v3);
  v7 = *(a2 + v3);
  v8 = v4;

  v5 = _s28SiriPrivateLearningAnalytics15UniversalEntityO2eeoiySbAC_ACtFZ_0(&v8, &v7);

  return v5 & 1;
}

uint64_t UniversalSuggestionCandidate.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for UniversalSuggestionCandidate(0) + 24);
  v4 = sub_222B018D8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_222A43B40@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(uint64_t, uint64_t)@<X1>, uint64_t a3@<X8>)
{
  v5 = v3 + *(a1(0) + 24);

  return a2(v5, a3);
}

uint64_t UniversalSuggestionCandidate.init(leftHandKey:rightHandValue:needsDisambiguation:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  *(a4 + 8) = *a1;
  v7 = type metadata accessor for UniversalSuggestionCandidate(0);
  result = sub_222A43E50(a2, a4 + *(v7 + 24));
  *a4 = a3;
  return result;
}

uint64_t _s28SiriPrivateLearningAnalytics18UniversalCandidateV2id10Foundation4UUIDVvg_0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_222B018D8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t UniversalSuggestionSurfaced.init(suggestionId:timestamp:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v8 = sub_222B018D8();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  result = type metadata accessor for UniversalSuggestionSurfaced(0);
  v10 = a4 + *(result + 20);
  *v10 = a2;
  *(v10 + 8) = a3 & 1;
  return result;
}

uint64_t static UniversalSuggestionSurfaced.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_222B01888() & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for UniversalSuggestionSurfaced(0) + 20);
  v5 = (a1 + v4);
  v6 = *(a1 + v4 + 8);
  v7 = (a2 + v4);
  v8 = *(a2 + v4 + 8);
  if (v6)
  {
    if ((v8 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*v5 != *v7)
    {
      v8 = 1;
    }

    if (v8)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_222A43D58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (sub_222B01888())
  {
    v6 = *(a3 + 20);
    v7 = (a1 + v6);
    v8 = *(a1 + v6 + 8);
    v9 = (a2 + v6);
    v10 = *(a2 + v6 + 8);
    if (v8)
    {
      if (v10)
      {
        return 1;
      }
    }

    else
    {
      if (*v7 != *v9)
      {
        LOBYTE(v10) = 1;
      }

      if ((v10 & 1) == 0)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_222A43DEC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UniversalCandidate(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_222A43E50(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UniversalCandidate(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_222A43EFC(uint64_t a1)
{
  sub_222B018D8();
  if (v1 <= 0x3F)
  {
    sub_222A4407C(319, &qword_27D01D158, MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_222A43FCC(uint64_t a1)
{
  sub_222B018D8();
  if (v1 <= 0x3F)
  {
    sub_222A4407C(319, &qword_27D01D170, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_222A4407C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for UniversalCandidate(255);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_222A44104(uint64_t a1)
{
  result = sub_222B018D8();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_222A441AC(uint64_t a1)
{
  result = type metadata accessor for UniversalCandidate(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_222A44258(uint64_t a1)
{
  sub_222B018D8();
  if (v1 <= 0x3F)
  {
    sub_222A442DC();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_222A442DC()
{
  if (!qword_27D01D178)
  {
    v0 = sub_222B02B28();
    if (!v1)
    {
      atomic_store(v0, &qword_27D01D178);
    }
  }
}

uint64_t sub_222A4432C(uint64_t a1)
{
  v2 = type metadata accessor for UniversalCandidate(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t IntentFeatureExtractor.intentTypes.getter(uint64_t a1, uint64_t a2)
{
  sub_222A446D4();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_222B05250;
  *(v2 + 32) = swift_getAssociatedTypeWitness();
  return v2;
}

uint64_t IntentFeatureExtractor.extract(from:)(id *a1, uint64_t a2, uint64_t a3)
{
  v5 = [*a1 intent];
  swift_getAssociatedTypeWitness();
  v6 = swift_dynamicCastUnknownClass();
  if (v6)
  {
    v7 = (*(a3 + 24))(v6, a2, a3);
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  return v7;
}

uint64_t BiomeEventFeatureExtractorBase.extract(from:)(void *a1)
{
  if ([a1 error] != 1)
  {
    return MEMORY[0x277D84F90];
  }

  if (![a1 eventBody])
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27D01D180, &qword_222B06AF8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return MEMORY[0x277D84F90];
  }

  v3 = (*(*v1 + 96))();
  swift_unknownObjectRelease();
  return v3;
}

uint64_t sub_222A446D4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D210, &qword_222B06C50);
  if (swift_isClassType())
  {
    v1 = v0 == 0;
  }

  else
  {
    v1 = 1;
  }

  if (v1)
  {
    v2 = &unk_27D01D218;
    v3 = &unk_222B06C58;
  }

  else
  {
    v2 = &unk_27D01D220;
    v3 = &unk_222B06C60;
  }

  return __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
}

id GroundTruthRecord.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id GroundTruthRecord.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for GroundTruthRecord();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

uint64_t sub_222A449B4(uint64_t a1)
{
  v2 = sub_222A44B74();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222A449F0(uint64_t a1)
{
  v2 = sub_222A44B74();

  return MEMORY[0x2821FE720](a1, v2);
}

id GroundTruthRecord.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GroundTruthRecord();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_222A44A60(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D230, &qword_222B06C70);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_222A44B74();
  sub_222B031B8();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_222A44B74()
{
  result = qword_27D01D238;
  if (!qword_27D01D238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D01D238);
  }

  return result;
}

unint64_t sub_222A44C3C()
{
  result = qword_27D01D240;
  if (!qword_27D01D240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D01D240);
  }

  return result;
}

unint64_t sub_222A44C94()
{
  result = qword_27D01D248;
  if (!qword_27D01D248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D01D248);
  }

  return result;
}

uint64_t PLUSSchemaEventConstructor.__allocating_init(plusId:suggestionGenerationDomain:)(uint64_t a1, int a2)
{
  v4 = swift_allocObject();
  v5 = OBJC_IVAR____TtC28SiriPrivateLearningAnalytics26PLUSSchemaEventConstructor_plusId;
  v6 = sub_222B018D8();
  (*(*(v6 - 8) + 32))(v4 + v5, a1, v6);
  *(v4 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics26PLUSSchemaEventConstructor_suggestionGenerationDomain) = a2;
  return v4;
}

uint64_t PLUSSchemaEventConstructor.init(plusId:suggestionGenerationDomain:)(uint64_t a1, int a2)
{
  v5 = OBJC_IVAR____TtC28SiriPrivateLearningAnalytics26PLUSSchemaEventConstructor_plusId;
  v6 = sub_222B018D8();
  (*(*(v6 - 8) + 32))(v2 + v5, a1, v6);
  *(v2 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics26PLUSSchemaEventConstructor_suggestionGenerationDomain) = a2;
  return v2;
}

void *sub_222A44DFC(uint64_t a1, uint64_t a2)
{
  v5 = sub_222A45CBC();
  if (v5)
  {
    v6 = v5;
    v7 = _s28SiriPrivateLearningAnalytics28PLUSSchemaMessageConstructorO24suggestionDomainMetadata0h10GenerationI0So0e14PLUSSuggestioniJ0CSgSo0elkI0V_tFZ_0(*(v2 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics26PLUSSchemaEventConstructor_suggestionGenerationDomain));
    if (v7)
    {
      v8 = v7;
      v9 = [objc_allocWithZone(MEMORY[0x277D59DD8]) init];
      if (v9)
      {
        v10 = v9;
        [v9 setSuggestionDomainMetadata_];
        [v10 setGeneratedSuggestion_];
        [v10 setSuggestionChangeDataCaptureMetadata_];
        [v6 setSuggestionGenerated_];

        return v6;
      }

      v6 = v8;
    }
  }

  if (qword_280CBA628 != -1)
  {
    swift_once();
  }

  v11 = sub_222B02148();
  __swift_project_value_buffer(v11, qword_280CBC458);
  v12 = sub_222B02128();
  v13 = sub_222B028E8();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v17 = v15;
    *v14 = 136315138;
    *(v14 + 4) = sub_222A230FC(0xD00000000000003ALL, 0x8000000222B11150, &v17);
    _os_log_impl(&dword_222A1C000, v12, v13, "PLUSSchemaEventConstructor.%s:  failed to create PLUS SELF event templates", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x223DC7E30](v15, -1, -1);
    MEMORY[0x223DC7E30](v14, -1, -1);
  }

  return 0;
}

void *sub_222A44FF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_222A45CBC();
  if (v7)
  {
    v8 = v7;
    v9 = _s28SiriPrivateLearningAnalytics28PLUSSchemaMessageConstructorO24suggestionDomainMetadata0h10GenerationI0So0e14PLUSSuggestioniJ0CSgSo0elkI0V_tFZ_0(*(v4 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics26PLUSSchemaEventConstructor_suggestionGenerationDomain));
    if (v9)
    {
      v10 = v9;
      v11 = [objc_allocWithZone(MEMORY[0x277D59DF0]) init];
      if (v11)
      {
        v12 = v11;
        [v11 setSuggestionDomainMetadata_];
        v13 = objc_allocWithZone(MEMORY[0x277D5AC78]);
        v14 = sub_222B01878();
        v15 = [v13 initWithNSUUID_];

        [v12 setSuggestionLinkId_];
        v16 = objc_allocWithZone(MEMORY[0x277D5AC78]);
        v17 = sub_222B01878();
        v18 = [v16 initWithNSUUID_];

        [v12 setOriginalRequestId_];
        [v12 setSuggestionOutcome_];
        [v12 setDomainOutcome_];
        [v8 setSuggestionOutcomeReported_];

        return v8;
      }

      v8 = v10;
    }
  }

  if (qword_280CBA628 != -1)
  {
    swift_once();
  }

  v19 = sub_222B02148();
  __swift_project_value_buffer(v19, qword_280CBC458);
  v20 = sub_222B02128();
  v21 = sub_222B028E8();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v25 = v23;
    *v22 = 136315138;
    *(v22 + 4) = sub_222A230FC(0xD00000000000005ELL, 0x8000000222B11190, &v25);
    _os_log_impl(&dword_222A1C000, v20, v21, "PLUSSchemaEventConstructor.%s:  failed to create PLUS SELF event templates", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v23);
    MEMORY[0x223DC7E30](v23, -1, -1);
    MEMORY[0x223DC7E30](v22, -1, -1);
  }

  return 0;
}

void *sub_222A452A0(uint64_t a1, uint64_t a2, char a3)
{
  v5 = sub_222A45CBC();
  if (v5)
  {
    v6 = v5;
    v7 = _s28SiriPrivateLearningAnalytics28PLUSSchemaMessageConstructorO24suggestionDomainMetadata0h10GenerationI0So0e14PLUSSuggestioniJ0CSgSo0elkI0V_tFZ_0(*(v3 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics26PLUSSchemaEventConstructor_suggestionGenerationDomain));
    if (v7)
    {
      v8 = v7;
      v9 = [objc_allocWithZone(MEMORY[0x277D59DA0]) init];
      if (v9)
      {
        v10 = v9;
        [v9 setSuggestionDomainMetadata_];
        v11 = objc_allocWithZone(MEMORY[0x277D5AC78]);
        v12 = sub_222B01878();
        v13 = [v11 initWithNSUUID_];

        [v10 setOriginalRequestId_];
        sub_222A45FB4();
        v14 = sub_222B025D8();
        [v10 setMatchedResults_];

        [v10 setMatchedResultsPopulated_];
        [v6 setPlusSuggesterQueried_];

        return v6;
      }

      v6 = v8;
    }
  }

  if (qword_280CBA628 != -1)
  {
    swift_once();
  }

  v15 = sub_222B02148();
  __swift_project_value_buffer(v15, qword_280CBC458);
  v16 = sub_222B02128();
  v17 = sub_222B028E8();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v21 = v19;
    *v18 = 136315138;
    *(v18 + 4) = sub_222A230FC(0xD00000000000004BLL, 0x8000000222B111F0, &v21);
    _os_log_impl(&dword_222A1C000, v16, v17, "PLUSSchemaEventConstructor.%s:  failed to create PLUS SELF event templates", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v19);
    MEMORY[0x223DC7E30](v19, -1, -1);
    MEMORY[0x223DC7E30](v18, -1, -1);
  }

  return 0;
}

void *sub_222A45510(uint64_t a1, char a2, uint64_t a3)
{
  v6 = sub_222A45CBC();
  if (v6)
  {
    v7 = v6;
    v8 = _s28SiriPrivateLearningAnalytics28PLUSSchemaMessageConstructorO24suggestionDomainMetadata0h10GenerationI0So0e14PLUSSuggestioniJ0CSgSo0elkI0V_tFZ_0(*(v3 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics26PLUSSchemaEventConstructor_suggestionGenerationDomain));
    if (v8)
    {
      v9 = v8;
      v10 = [objc_allocWithZone(MEMORY[0x277D59D98]) init];
      if (v10)
      {
        v11 = v10;
        [v10 setSuggestionDomainMetadata_];
        v12 = objc_allocWithZone(MEMORY[0x277D5AC78]);
        v13 = sub_222B01878();
        v14 = [v12 initWithNSUUID_];

        [v11 setOriginalRequestId_];
        [v11 setIsSuggesterEnabled_];
        [v11 setDomainConfiguredState_];
        [v7 setPlusSuggesterMetadataReported_];

        return v7;
      }

      v7 = v9;
    }
  }

  if (qword_280CBA628 != -1)
  {
    swift_once();
  }

  v15 = sub_222B02148();
  __swift_project_value_buffer(v15, qword_280CBC458);
  v16 = sub_222B02128();
  v17 = sub_222B028E8();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v21 = v19;
    *v18 = 136315138;
    *(v18 + 4) = sub_222A230FC(0xD000000000000056, 0x8000000222B11240, &v21);
    _os_log_impl(&dword_222A1C000, v16, v17, "PLUSSchemaEventConstructor.%s:  failed to create PLUS SELF event templates", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v19);
    MEMORY[0x223DC7E30](v19, -1, -1);
    MEMORY[0x223DC7E30](v18, -1, -1);
  }

  return 0;
}

void *sub_222A45764(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_222A45CBC();
  if (v9)
  {
    v10 = v9;
    v11 = _s28SiriPrivateLearningAnalytics28PLUSSchemaMessageConstructorO24suggestionDomainMetadata0h10GenerationI0So0e14PLUSSuggestioniJ0CSgSo0elkI0V_tFZ_0(*(v5 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics26PLUSSchemaEventConstructor_suggestionGenerationDomain));
    if (v11)
    {
      v12 = v11;
      v13 = [objc_allocWithZone(MEMORY[0x277D59DA8]) init];
      if (v13)
      {
        v14 = v13;
        [v13 setSuggestionDomainMetadata_];
        v15 = objc_allocWithZone(MEMORY[0x277D5AC78]);
        v16 = sub_222B01878();
        v17 = [v15 initWithNSUUID_];

        [v14 setOriginalRequestId_];
        v18 = objc_allocWithZone(MEMORY[0x277D5AC78]);
        v19 = sub_222B01878();
        v20 = [v18 initWithNSUUID_];

        [v14 setSuggestionLinkId_];
        [v14 setSuggestionSurfaced_];
        [v14 setSuggestionNoveltyState_];
        [v14 setDomainSuggestionMetadata_];
        [v10 setPlusSuggesterSuggestionMetadataReported_];

        return v10;
      }

      v10 = v12;
    }
  }

  if (qword_280CBA628 != -1)
  {
    swift_once();
  }

  v21 = sub_222B02148();
  __swift_project_value_buffer(v21, qword_280CBC458);
  v22 = sub_222B02128();
  v23 = sub_222B028E8();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v27 = v25;
    *v24 = 136315138;
    *(v24 + 4) = sub_222A230FC(0xD00000000000008BLL, 0x8000000222B112A0, &v27);
    _os_log_impl(&dword_222A1C000, v22, v23, "PLUSSchemaEventConstructor.%s:  failed to create PLUS SELF event templates", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v25);
    MEMORY[0x223DC7E30](v25, -1, -1);
    MEMORY[0x223DC7E30](v24, -1, -1);
  }

  return 0;
}

void *sub_222A45A2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_222A45CBC();
  if (v5)
  {
    v6 = v5;
    v7 = _s28SiriPrivateLearningAnalytics28PLUSSchemaMessageConstructorO24suggestionDomainMetadata0h10GenerationI0So0e14PLUSSuggestioniJ0CSgSo0elkI0V_tFZ_0(*(v3 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics26PLUSSchemaEventConstructor_suggestionGenerationDomain));
    if (v7)
    {
      v8 = v7;
      v9 = [objc_allocWithZone(MEMORY[0x277D59DB0]) init];
      if (v9)
      {
        v10 = v9;
        [v9 setSuggestionDomainMetadata_];
        v11 = objc_allocWithZone(MEMORY[0x277D5AC78]);
        v12 = sub_222B01878();
        v13 = [v11 initWithNSUUID_];

        [v10 setOriginalRequestId_];
        v14 = objc_allocWithZone(MEMORY[0x277D5AC78]);
        v15 = sub_222B01878();
        v16 = [v14 initWithNSUUID_];

        [v10 setSuggestionLinkId_];
        [v10 setSuggestionRedundancyState_];
        [v6 setPlusSuggesterSuggestionRedundancyReported_];

        return v6;
      }

      v6 = v8;
    }
  }

  if (qword_280CBA628 != -1)
  {
    swift_once();
  }

  v17 = sub_222B02148();
  __swift_project_value_buffer(v17, qword_280CBC458);
  v18 = sub_222B02128();
  v19 = sub_222B028E8();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v23 = v21;
    *v20 = 136315138;
    *(v20 + 4) = sub_222A230FC(0xD000000000000064, 0x8000000222B11330, &v23);
    _os_log_impl(&dword_222A1C000, v18, v19, "PLUSSchemaEventConstructor.%s:  failed to create PLUS SELF event templates", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v21);
    MEMORY[0x223DC7E30](v21, -1, -1);
    MEMORY[0x223DC7E30](v20, -1, -1);
  }

  return 0;
}

void *sub_222A45CBC()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D59C50]) init];
  if (v0)
  {
    v1 = v0;
    v2 = [objc_allocWithZone(MEMORY[0x277D59C58]) init];
    if (v2)
    {
      v3 = v2;
      v4 = objc_allocWithZone(MEMORY[0x277D5AC78]);
      v5 = sub_222B01878();
      v6 = [v4 initWithNSUUID_];

      [v3 setPlusId_];
      [v1 setEventMetadata_];

      return v1;
    }
  }

  if (qword_280CBA628 != -1)
  {
    swift_once();
  }

  v7 = sub_222B02148();
  __swift_project_value_buffer(v7, qword_280CBC458);
  v8 = sub_222B02128();
  v9 = sub_222B028E8();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v13 = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_222A230FC(0xD000000000000015, 0x8000000222B11410, &v13);
    _os_log_impl(&dword_222A1C000, v8, v9, "PLUSSchemaEventConstructor.%s:  failed to create PLUS SELF event templates", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x223DC7E30](v11, -1, -1);
    MEMORY[0x223DC7E30](v10, -1, -1);
  }

  return 0;
}

uint64_t PLUSSchemaEventConstructor.deinit()
{
  v1 = OBJC_IVAR____TtC28SiriPrivateLearningAnalytics26PLUSSchemaEventConstructor_plusId;
  v2 = sub_222B018D8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t PLUSSchemaEventConstructor.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC28SiriPrivateLearningAnalytics26PLUSSchemaEventConstructor_plusId;
  v2 = sub_222B018D8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

unint64_t sub_222A45FB4()
{
  result = qword_27D01D260;
  if (!qword_27D01D260)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D01D260);
  }

  return result;
}

uint64_t type metadata accessor for PLUSSchemaEventConstructor(uint64_t a1)
{
  result = qword_27D01D268;
  if (!qword_27D01D268)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_222A46054(uint64_t a1)
{
  result = sub_222B018D8();
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

void sub_222A461F4(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 16);
  *(v3 + 16) = v2;
  v5 = v2;
}

id sub_222A4624C()
{
  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

void sub_222A46290(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 24);
  *(v3 + 24) = v2;
  v5 = v2;
}

id sub_222A462E8()
{
  swift_beginAccess();
  v1 = *(v0 + 24);

  return v1;
}

uint64_t CoreDataStore.init(path:modelFileName:)(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = v4;
  v6 = sub_222A465B4(a1, a2, a3, a4);

  *(v5 + 24) = v6;
  *(v5 + 16) = [v6 newBackgroundContext];
  return v5;
}

id sub_222A465B4(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v75 = a1;
  v76 = a2;
  v88 = *MEMORY[0x277D85DE8];
  v6 = sub_222B01748();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v77 = &v70 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v70 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v70 - v16;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v19 = [objc_opt_self() bundleForClass_];
  v78 = a3;
  v79 = a4;
  v20 = _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();
  v21 = _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();
  v22 = [v19 URLForResource:v20 withExtension:v21];

  if (!v22)
  {
    goto LABEL_8;
  }

  sub_222B01718();

  (*(v7 + 32))(v17, v15, v6);
  v23 = objc_allocWithZone(MEMORY[0x277CBE450]);
  v24 = sub_222B016A8();
  v25 = [v23 initWithContentsOfURL_];

  v26 = v6;
  if (!v25)
  {
    (*(v7 + 8))(v17, v6);
LABEL_8:
    *&aBlock = 0;
    *(&aBlock + 1) = 0xE000000000000000;
    sub_222B02C88();

    strcpy(&aBlock, "Couldn't load ");
    HIBYTE(aBlock) = -18;
    MEMORY[0x223DC66E0](v78, v79);
    MEMORY[0x223DC66E0](0xD000000000000021, 0x8000000222B11490);
    v55 = aBlock;
    sub_222A47050();
    swift_allocError();
    *v56 = v55;
    swift_willThrow();
    return v20;
  }

  v73 = v17;
  v27 = objc_allocWithZone(MEMORY[0x277CBE4A0]);
  v20 = v25;
  v28 = _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();
  v72 = [v27 initWithName:v28 managedObjectModel:v20];

  v29 = v77;
  sub_222B01688();
  v30 = [objc_opt_self() defaultManager];
  sub_222B01708();
  v31 = sub_222B016A8();
  v32 = v10;
  v33 = *(v7 + 8);
  v33(v32, v6);
  *&aBlock = 0;
  v34 = [v30 createDirectoryAtURL:v31 withIntermediateDirectories:1 attributes:0 error:&aBlock];

  v35 = aBlock;
  if (v34)
  {
    v71 = v33;
    v75 = v20;
    v76 = v7 + 8;
    v36 = objc_allocWithZone(MEMORY[0x277CBE4E0]);
    v37 = v35;
    v38 = [v36 init];
    v39 = sub_222B016A8();
    [v38 setURL_];

    [v38 setReadOnly_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01D220, &unk_222B06C60);
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_222B06DF0;
    *(v40 + 32) = v38;
    sub_222A470FC();
    v41 = v38;
    v42 = sub_222B025D8();

    v20 = v72;
    [v72 setPersistentStoreDescriptions_];

    v43 = swift_allocObject();
    *(v43 + 16) = 0;
    v44 = (v43 + 16);
    v86 = sub_222A47148;
    v87 = v43;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    v84 = sub_222A4F798;
    v85 = &block_descriptor_1;
    v45 = _Block_copy(&aBlock);

    [v20 loadPersistentStoresWithCompletionHandler_];
    _Block_release(v45);
    swift_beginAccess();
    if (*v44)
    {
      v74 = v41;
      v46 = 0xE000000000000000;
      v81 = 0;
      v82 = 0xE000000000000000;
      sub_222B02C88();

      v81 = 0xD00000000000001ELL;
      v82 = 0x8000000222B11530;
      MEMORY[0x223DC66E0](v78, v79);
      MEMORY[0x223DC66E0](32, 0xE100000000000000);
      if (*v44)
      {
        ErrorValue = swift_getErrorValue();
        v79 = &v70;
        v48 = v80;
        v49 = v26;
        v50 = *(v80 - 8);
        MEMORY[0x28223BE20](ErrorValue);
        v52 = &v70 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v50 + 16))(v52);
        v53 = sub_222B030C8();
        v46 = v54;
        (*(v50 + 8))(v52, v48);
        v26 = v49;
        v29 = v77;
      }

      else
      {
        v53 = 0;
      }

      MEMORY[0x223DC66E0](v53, v46);

      v65 = v81;
      v66 = v82;
      sub_222A47050();
      swift_allocError();
      *v67 = v65;
      v67[1] = v66;
      swift_willThrow();

      v68 = v71;
      v71(v29, v26);
      v68(v73, v26);
    }

    else
    {

      v64 = v71;
      v71(v29, v6);
      v64(v73, v6);
    }
  }

  else
  {
    v57 = aBlock;
    v58 = sub_222B01628();

    swift_willThrow();
    *&aBlock = 0;
    *(&aBlock + 1) = 0xE000000000000000;
    sub_222B02C88();

    *&aBlock = 0xD000000000000026;
    *(&aBlock + 1) = 0x8000000222B114C0;
    sub_222A470A4();
    v59 = sub_222B02F38();
    MEMORY[0x223DC66E0](v59);

    MEMORY[0x223DC66E0](0x3D726F727265202CLL, 0xE800000000000000);
    v81 = v58;
    v60 = v58;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01D120, qword_222B06760);
    v61 = sub_222B023D8();
    MEMORY[0x223DC66E0](v61);

    v62 = aBlock;
    sub_222A47050();
    swift_allocError();
    *v63 = v62;
    swift_willThrow();

    v33(v29, v6);
    v33(v73, v6);
  }

  return v20;
}

void sub_222A46EF0(uint64_t a1, void *a2, uint64_t a3)
{
  swift_beginAccess();
  v5 = *(a3 + 16);
  *(a3 + 16) = a2;
  v6 = a2;
}

uint64_t CoreDataStore.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

unint64_t sub_222A47050()
{
  result = qword_27D01D278;
  if (!qword_27D01D278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D01D278);
  }

  return result;
}

unint64_t sub_222A470A4()
{
  result = qword_280CB8310;
  if (!qword_280CB8310)
  {
    sub_222B01748();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CB8310);
  }

  return result;
}

unint64_t sub_222A470FC()
{
  result = qword_280CB8428;
  if (!qword_280CB8428)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280CB8428);
  }

  return result;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_222A47168(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
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

uint64_t sub_222A471C4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_222A47224(uint64_t a1, char a2)
{
  sub_222B03128();
  if (qword_222B072F8[a2])
  {
    v3 = qword_222B072F8[a2];
  }

  else
  {
    v3 = 0;
  }

  MEMORY[0x223DC73A0](v3);
  return sub_222B03168();
}

uint64_t static Feature.name.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D280, &qword_222B06ED0);
  v0 = sub_222B023D8();
  v2 = sub_222A472F8(v0, v1);

  return v2;
}

uint64_t sub_222A472F8(uint64_t a1, unint64_t a2)
{
  v3 = a1;
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v4 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {
    goto LABEL_7;
  }

  sub_222B02528();
  if ((sub_222B022F8() & 1) == 0)
  {

LABEL_7:

    return v3;
  }

  v5 = sub_222B023E8();

  sub_222AAA4AC(1uLL, v3, a2);

  sub_222A49F38();
  sub_222B02488();

  return v5;
}

uint64_t sub_222A4740C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D280, &qword_222B06ED0);
  v0 = sub_222B023D8();
  v2 = sub_222A472F8(v0, v1);

  return v2;
}

uint64_t sub_222A474A0()
{
  sub_222B02C88();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D280, &qword_222B06ED0);
  v0 = sub_222B023D8();
  v2 = sub_222A472F8(v0, v1);
  v4 = v3;

  MEMORY[0x223DC66E0](v2, v4);

  MEMORY[0x223DC66E0](0x203A65756C617620, 0xE800000000000000);
  sub_222B02D98();
  MEMORY[0x223DC66E0](0x656469666E6F6320, 0xED0000203A65636ELL);
  sub_222B02D98();
  return 0;
}

uint64_t Feature.__allocating_init(value:confidence:)(void *a1, char *a2)
{
  v4 = swift_allocObject();
  v5 = a1[3];
  v6 = a1[4];
  v7 = __swift_mutable_project_boxed_opaque_existential_1(a1, v5);
  MEMORY[0x28223BE20](v7);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v9);
  v11 = sub_222A48F30(v9, a2, v4, v5, v6);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v11;
}

uint64_t Feature.init(value:confidence:)(void *a1, char *a2)
{
  v5 = a1[3];
  v6 = a1[4];
  v7 = __swift_mutable_project_boxed_opaque_existential_1(a1, v5);
  MEMORY[0x28223BE20](v7);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v9);
  v11 = sub_222A48F30(v9, a2, v2, v5, v6);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v11;
}

id sub_222A47814()
{
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  sub_222A2BE30(v3, v4, v5);
  v1 = sub_222A47880();
  sub_222A2BE78(v3, v4, v5);
  return v1;
}

id sub_222A47880()
{
  v1 = *v0;
  v2 = *(v0 + 16);
  if (v2 <= 4)
  {
    if (*(v0 + 16) <= 1u)
    {
      if (*(v0 + 16))
      {
        v3 = [objc_opt_self() featureValueWithDouble_];
      }

      else
      {
        if (v1)
        {
          v7 = 1.0;
        }

        else
        {
          v7 = 0.0;
        }

        v3 = [objc_opt_self() featureValueWithDouble_];
      }

      return v3;
    }

    if (v2 == 2)
    {
      v3 = [objc_opt_self() featureValueWithDouble_];
      return v3;
    }

    if (v2 == 3)
    {
      v3 = [objc_opt_self() featureValueWithDouble_];
      return v3;
    }

    v12 = _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();
    v13 = [objc_opt_self() featureValueWithString_];
LABEL_27:
    v14 = v13;

    return v14;
  }

  if (*(v0 + 16) <= 6u)
  {
    if (v2 == 5)
    {
      v3 = [objc_opt_self() featureValueWithDouble_];
    }

    else
    {
      v3 = [objc_opt_self() featureValueWithDouble_];
    }

    return v3;
  }

  if (v2 == 7)
  {
    v22 = MEMORY[0x277D84F90];
    v8 = *(v1 + 16);
    if (v8)
    {
      v9 = (v1 + 32);
      do
      {
        v10 = *v9++;
        if ([objc_allocWithZone(MEMORY[0x277CCABB0]) initWithLongLong_])
        {
          MEMORY[0x223DC6810]();
          if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_222B02648();
          }

          sub_222B02688();
        }

        --v8;
      }

      while (v8);
    }

    sub_222A34890();
    v11 = sub_222B025D8();

    v12 = [objc_opt_self() sequenceWithInt64Array_];

    v13 = [objc_opt_self() featureValueWithSequence_];
    goto LABEL_27;
  }

  if (v2 == 8)
  {
    v4 = sub_222B025D8();
    v5 = [objc_opt_self() sequenceWithStringArray_];

    v6 = [objc_opt_self() featureValueWithSequence_];
  }

  else
  {
    v16 = *(v1 + 16);
    if (v16)
    {
      v17 = *v0;
      sub_222B02D38();
      v18 = (v17 + 32);
      do
      {
        v19 = *v18++;
        [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
        sub_222B02D18();
        sub_222B02D48();
        sub_222B02D58();
        sub_222B02D28();
        --v16;
      }

      while (v16);
    }

    sub_222A34890();
    v20 = sub_222B025D8();

    v5 = [objc_opt_self() sequenceWithInt64Array_];

    v6 = [objc_opt_self() featureValueWithSequence_];
  }

  v21 = v6;

  return v21;
}

uint64_t TypedFeature.__allocating_init(value:confidence:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_allocObject();
  v5 = sub_222A496A8(a1);
  (*(*(*(v3 + 136) - 8) + 8))(a1);
  return v5;
}

uint64_t TypedFeature.init(value:confidence:)(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = sub_222A496A8(a1);
  (*(*(*(v4 + 136) - 8) + 8))(a1);
  return v5;
}

uint64_t sub_222A47E2C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 32);
  v4 = *v1;
  if (v3 > 4)
  {
    if (v3 > 6)
    {
      if (v3 == 7)
      {
        v5 = &qword_27D01D298;
        v6 = &unk_222B06EE8;
      }

      else if (v3 == 8)
      {
        v5 = &qword_27D01D290;
        v6 = &qword_222B06EE0;
      }

      else
      {
        v5 = &qword_27D01D288;
        v6 = &qword_222B06ED8;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
    }
  }

  else if (v3 >= 4)
  {
  }

  v7 = *(v4 + 136);
  v8 = swift_dynamicCast();
  return (*(*(v7 - 8) + 56))(a1, v8 ^ 1u, 1, v7);
}

uint64_t sub_222A48084()
{
  sub_222A2BE78(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  return swift_deallocClassInstance();
}

uint64_t Bool.featureValue.getter@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result & 1;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  return result;
}

void sub_222A480D0(uint64_t a1@<X8>)
{
  *a1 = *v1;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
}

uint64_t String.featureValue.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = a1;
  *(a3 + 8) = a2;
  *(a3 + 16) = 4;
}

uint64_t sub_222A480F4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = 4;
}

void Double.featureValue.getter(uint64_t a1@<X8>, double a2@<D0>)
{
  *a1 = a2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
}

void sub_222A4811C(uint64_t a1@<X8>)
{
  *a1 = *v1;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
}

uint64_t Int32.featureValue.getter@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = 0;
  *(a2 + 16) = 2;
  return result;
}

void sub_222A48144(uint64_t a1@<X8>)
{
  *a1 = *v1;
  *(a1 + 8) = 0;
  *(a1 + 16) = 2;
}

uint64_t Int64.featureValue.getter@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = 0;
  *(a2 + 16) = 3;
  return result;
}

void sub_222A48168(uint64_t a1@<X8>)
{
  *a1 = *v1;
  *(a1 + 8) = 0;
  *(a1 + 16) = 3;
}

uint64_t UInt32.featureValue.getter@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = 0;
  *(a2 + 16) = 5;
  return result;
}

void sub_222A48190(uint64_t a1@<X8>)
{
  *a1 = *v1;
  *(a1 + 8) = 0;
  *(a1 + 16) = 5;
}

uint64_t UInt64.featureValue.getter@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = 0;
  *(a2 + 16) = 6;
  return result;
}

void sub_222A481B4(uint64_t a1@<X8>)
{
  *a1 = *v1;
  *(a1 + 8) = 0;
  *(a1 + 16) = 6;
}

void Array.featureValue.getter(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a2 == MEMORY[0x277D84A28])
  {
    v10 = sub_222B02E38();
    if (v10)
    {
      v9 = v10;
    }

    else
    {
      v9 = MEMORY[0x277D84F90];
    }

    v8 = 7;
  }

  else if (a2 == MEMORY[0x277D837D0])
  {
    v11 = sub_222B02E38();
    if (v11)
    {
      v9 = v11;
    }

    else
    {
      v9 = MEMORY[0x277D84F90];
    }

    v8 = 8;
  }

  else if (a2 == MEMORY[0x277D839B0])
  {
    v12 = sub_222B02E38();
    if (v12)
    {
      v9 = v12;
    }

    else
    {
      v9 = MEMORY[0x277D84F90];
    }

    v8 = 9;
  }

  else
  {
    if (qword_280CBA628 != -1)
    {
      swift_once();
    }

    v4 = sub_222B02148();
    __swift_project_value_buffer(v4, qword_280CBC458);
    v5 = sub_222B02128();
    v6 = sub_222B028E8();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_222A1C000, v5, v6, "Element type is not supported, returning an empty FeatureValue.strings", v7, 2u);
      MEMORY[0x223DC7E30](v7, -1, -1);
    }

    v8 = 8;
    v9 = MEMORY[0x277D84F90];
  }

  *a3 = v9;
  *(a3 + 8) = 0;
  *(a3 + 16) = v8;
}

uint64_t FeatureValue.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_222B02CE8();
  MEMORY[0x28223BE20](v5);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_222B03188();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v8, v8[3]);
    v6 = sub_222B02F98() & 1;
    __swift_destroy_boxed_opaque_existential_0(v8);
    *a2 = v6;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t FeatureValue.encode(to:)(void *a1)
{
  v2 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_222B031A8();
  if (v2 > 4)
  {
    if (v2 <= 6)
    {
      __swift_mutable_project_boxed_opaque_existential_1(v4, v5);
      if (v2 == 5)
      {
        sub_222B03068();
      }

      else
      {
        sub_222B03078();
      }
    }

    else
    {
      if (v2 == 7)
      {
        __swift_mutable_project_boxed_opaque_existential_1(v4, v5);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D298, &unk_222B06EE8);
        sub_222A49A40();
      }

      else
      {
        __swift_mutable_project_boxed_opaque_existential_1(v4, v5);
        if (v2 == 8)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D290, &qword_222B06EE0);
          sub_222A499C4();
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D288, &qword_222B06ED8);
          sub_222A49948();
        }
      }

      sub_222B03038();
    }
  }

  else if (v2 <= 1)
  {
    __swift_mutable_project_boxed_opaque_existential_1(v4, v5);
    if (v2)
    {
      sub_222B03028();
    }

    else
    {
      sub_222B03018();
    }
  }

  else if (v2 == 2)
  {
    __swift_mutable_project_boxed_opaque_existential_1(v4, v5);
    sub_222B03048();
  }

  else
  {
    __swift_mutable_project_boxed_opaque_existential_1(v4, v5);
    if (v2 == 3)
    {
      sub_222B03058();
    }

    else
    {
      sub_222B03008();
    }
  }

  return __swift_destroy_boxed_opaque_existential_0(v4);
}

SiriPrivateLearningAnalytics::Confidence_optional __swiftcall Confidence.init(rawValue:)(Swift::Double rawValue)
{
  if (rawValue == 1.0)
  {
    *v1 = 0;
  }

  else if (rawValue == 0.75)
  {
    *v1 = 1;
  }

  else
  {
    if (rawValue == 0.0)
    {
      v2 = 4;
    }

    else
    {
      v2 = 5;
    }

    if (rawValue == 0.25)
    {
      v3 = 3;
    }

    else
    {
      v3 = v2;
    }

    if (rawValue == 0.5)
    {
      v4 = 2;
    }

    else
    {
      v4 = v3;
    }

    *v1 = v4;
  }

  return result;
}

uint64_t sub_222A48C3C()
{
  if (qword_222B072F8[*v0])
  {
    v1 = qword_222B072F8[*v0];
  }

  else
  {
    v1 = 0;
  }

  return MEMORY[0x223DC73A0](v1);
}

double sub_222A48C8C@<D0>(double *a1@<X8>)
{
  result = *&qword_222B072F8[*v1];
  *a1 = result;
  return result;
}

void sub_222A48CA4(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 32);
  if (v3 > 4)
  {
    if (*(v1 + 32) > 6u)
    {
      if (v3 == 7)
      {
        v6 = &qword_27D01D298;
        v7 = &unk_222B06EE8;
        v5 = a1;
      }

      else
      {
        v5 = a1;
        if (v3 == 8)
        {
          v6 = &qword_27D01D290;
          v7 = &qword_222B06EE0;
        }

        else
        {
          v6 = &qword_27D01D288;
          v7 = &qword_222B06ED8;
        }
      }

      v5[3] = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
      *v5 = v2;
      goto LABEL_20;
    }

    if (v3 != 5)
    {
      v4 = MEMORY[0x277D84D38];
      goto LABEL_25;
    }

    v8 = MEMORY[0x277D84CC0];
LABEL_15:
    a1[3] = v8;
    *a1 = v2;
    return;
  }

  if (*(v1 + 32) <= 1u)
  {
    if (!*(v1 + 32))
    {
      a1[3] = MEMORY[0x277D839B0];
      *a1 = v2 & 1;
      return;
    }

    v4 = MEMORY[0x277D839F8];
    goto LABEL_25;
  }

  if (v3 == 2)
  {
    v8 = MEMORY[0x277D849A8];
    goto LABEL_15;
  }

  if (v3 == 3)
  {
    v4 = MEMORY[0x277D84A28];
LABEL_25:
    a1[3] = v4;
    *a1 = v2;
    return;
  }

  v9 = *(v1 + 24);
  a1[3] = MEMORY[0x277D837D0];
  *a1 = v2;
  a1[1] = v9;
LABEL_20:
}

uint64_t Feature.equalTo(_:)(uint64_t a1)
{
  sub_222A42E40(a1, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01C9F0, &qword_222B04940);
  type metadata accessor for Feature();
  if (!swift_dynamicCast())
  {
    return 2;
  }

  v2 = _s28SiriPrivateLearningAnalytics7FeatureC2eeoiySbAC_ACtFZ_0(v1, v4);

  return v2;
}

uint64_t sub_222A48EA0(uint64_t a1)
{
  v2 = *v1;
  sub_222A42E40(a1, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01C9F0, &qword_222B04940);
  type metadata accessor for Feature();
  if (!swift_dynamicCast())
  {
    return 2;
  }

  v3 = _s28SiriPrivateLearningAnalytics7FeatureC2eeoiySbAC_ACtFZ_0(v2, v5);

  return v3;
}

uint64_t sub_222A48F30(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a4 - 8);
  MEMORY[0x28223BE20](a1);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 32))(v11);
  v12 = *a2;
  (*(a5 + 8))(&v15, a4, a5);
  v13 = v16;
  *(a3 + 16) = v15;
  *(a3 + 32) = v13;
  *(a3 + 33) = v12;
  (*(v9 + 8))(v11, a4);
  return a3;
}

uint64_t _s28SiriPrivateLearningAnalytics12FeatureValueO2eeoiySbAC_ACtFZ_0(uint64_t result, uint64_t a2)
{
  v2 = *result;
  v3 = *(result + 8);
  v4 = *(result + 16);
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (v4 <= 4)
  {
    if (*(result + 16) > 1u)
    {
      if (v4 != 2)
      {
        if (v4 == 3)
        {
          if (v7 == 3)
          {
            sub_222A2BE78(*result, v3, 3u);
            v8 = v5;
            v9 = v6;
            v10 = 3;
LABEL_52:
            sub_222A2BE78(v8, v9, v10);
            LOBYTE(v7) = v2 == v5;
            return v7 & 1;
          }

          goto LABEL_43;
        }

        if (v7 == 4)
        {
          if (v2 != v5 || v3 != v6)
          {
            LOBYTE(v7) = sub_222B02F78();
            sub_222A2BE30(v5, v6, 4u);
            sub_222A2BE30(v2, v3, 4u);
            sub_222A2BE78(v2, v3, 4u);
            sub_222A2BE78(v5, v6, 4u);
            return v7 & 1;
          }

          sub_222A2BE30(v2, v3, 4u);
          sub_222A2BE30(v2, v3, 4u);
          sub_222A2BE78(v2, v3, 4u);
          v17 = v2;
          v18 = v3;
          v19 = 4;
          goto LABEL_41;
        }

        goto LABEL_42;
      }

      if (v7 == 2)
      {
        sub_222A2BE78(*result, v3, 2u);
        v12 = v5;
        v13 = v6;
        v14 = 2;
        goto LABEL_20;
      }

      goto LABEL_43;
    }

    if (*(result + 16))
    {
      if (v7 == 1)
      {
        sub_222A2BE78(*result, v3, 1u);
        sub_222A2BE78(v5, v6, 1u);
        if (*&v2 == *&v5)
        {
          return v7 & 1;
        }

        goto LABEL_45;
      }

      goto LABEL_43;
    }

    if (*(a2 + 16))
    {
      goto LABEL_43;
    }

    sub_222A2BE78(*result, v3, 0);
    sub_222A2BE78(v5, v6, 0);
    v7 = (v5 ^ v2) ^ 1;
    return v7 & 1;
  }

  if (*(result + 16) <= 6u)
  {
    if (v4 != 5)
    {
      if (v7 == 6)
      {
        sub_222A2BE78(*result, v3, 6u);
        v8 = v5;
        v9 = v6;
        v10 = 6;
        goto LABEL_52;
      }

      goto LABEL_43;
    }

    if (v7 == 5)
    {
      sub_222A2BE78(*result, v3, 5u);
      v12 = v5;
      v13 = v6;
      v14 = 5;
LABEL_20:
      sub_222A2BE78(v12, v13, v14);
      LOBYTE(v7) = v2 == v5;
      return v7 & 1;
    }

LABEL_43:
    sub_222A2BE30(v5, v6, v7);
    sub_222A2BE78(v2, v3, v4);
    v22 = v5;
    v23 = v6;
    v24 = v7;
LABEL_44:
    sub_222A2BE78(v22, v23, v24);
LABEL_45:
    LOBYTE(v7) = 0;
    return v7 & 1;
  }

  if (v4 == 7)
  {
    if (v7 != 7)
    {
      goto LABEL_42;
    }

    v15 = *(v2 + 16);
    if (v15 != *(v5 + 16))
    {
LABEL_58:
      sub_222A2BE30(*a2, *(a2 + 8), 7u);
      sub_222A2BE30(v2, v3, 7u);
      sub_222A2BE78(v2, v3, 7u);
      v22 = v5;
      v23 = v6;
      v24 = 7;
      goto LABEL_44;
    }

    if (v15)
    {
      v16 = v2 == v5;
    }

    else
    {
      v16 = 1;
    }

    if (!v16)
    {
      v25 = (v2 + 32);
      v26 = (v5 + 32);
      while (v15)
      {
        if (*v25 != *v26)
        {
          goto LABEL_58;
        }

        ++v25;
        ++v26;
        if (!--v15)
        {
          goto LABEL_28;
        }
      }

      __break(1u);
      goto LABEL_65;
    }

LABEL_28:
    sub_222A2BE30(*a2, *(a2 + 8), 7u);
    sub_222A2BE30(v2, v3, 7u);
    sub_222A2BE78(v2, v3, 7u);
    v17 = v5;
    v18 = v6;
    v19 = 7;
LABEL_41:
    sub_222A2BE78(v17, v18, v19);
    LOBYTE(v7) = 1;
    return v7 & 1;
  }

  if (v4 == 8)
  {
    v11 = *result;
    if (v7 == 8)
    {
      LOBYTE(v7) = sub_222A43424(v11, *a2);
      sub_222A2BE30(v5, v6, 8u);
      sub_222A2BE30(v2, v3, 8u);
      sub_222A2BE78(v2, v3, 8u);
      sub_222A2BE78(v5, v6, 8u);
      return v7 & 1;
    }

LABEL_42:

    goto LABEL_43;
  }

  if (v7 != 9)
  {
    goto LABEL_42;
  }

  v20 = *(v2 + 16);
  if (v20 != *(v5 + 16))
  {
LABEL_63:
    sub_222A2BE30(*a2, *(a2 + 8), 9u);
    sub_222A2BE30(v2, v3, 9u);
    sub_222A2BE78(v2, v3, 9u);
    v22 = v5;
    v23 = v6;
    v24 = 9;
    goto LABEL_44;
  }

  if (v20)
  {
    v21 = v2 == v5;
  }

  else
  {
    v21 = 1;
  }

  if (v21)
  {
LABEL_40:
    sub_222A2BE30(*a2, *(a2 + 8), 9u);
    sub_222A2BE30(v2, v3, 9u);
    sub_222A2BE78(v2, v3, 9u);
    v17 = v5;
    v18 = v6;
    v19 = 9;
    goto LABEL_41;
  }

  v27 = (v2 + 32);
  v28 = (v5 + 32);
  while (v20)
  {
    if (*v27 != *v28)
    {
      goto LABEL_63;
    }

    ++v27;
    ++v28;
    if (!--v20)
    {
      goto LABEL_40;
    }
  }

LABEL_65:
  __break(1u);
  return result;
}

BOOL _s28SiriPrivateLearningAnalytics7FeatureC2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = sub_222A4740C();
  v7 = v6;
  v24 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D280, &qword_222B06ED0);
  v8 = sub_222B023D8();
  v10 = sub_222A472F8(v8, v9);
  v12 = v11;

  if (v5 == v10 && v7 == v12)
  {
  }

  else
  {
    v14 = sub_222B02F78();

    if ((v14 & 1) == 0)
    {
      return 0;
    }
  }

  v15 = *(a1 + 24);
  v16 = *(a1 + 32);
  v24 = *(a1 + 16);
  v25 = v15;
  v26 = v16;
  v17 = *(a2 + 24);
  v18 = *(a2 + 32);
  v21 = *(a2 + 16);
  v22 = v17;
  v23 = v18;
  sub_222A2BE30(v24, v15, v16);
  sub_222A2BE30(v21, v17, v18);
  v19 = _s28SiriPrivateLearningAnalytics12FeatureValueO2eeoiySbAC_ACtFZ_0(&v24, &v21);
  sub_222A2BE78(v21, v22, v23);
  sub_222A2BE78(v24, v25, v26);
  if (v19)
  {
    return *&qword_222B072F8[*(a1 + 33)] == *&qword_222B072F8[*(a2 + 33)];
  }

  return 0;
}

uint64_t sub_222A496A8(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  MEMORY[0x28223BE20](a1);
  v5 = &v10[-v4];
  v11 = *v6;
  (*(v7 + 16))(&v10[-v4], v8, v3);
  return sub_222A48F30(v5, &v11, v1, v3, *(v2 + 144));
}

unint64_t sub_222A497D4()
{
  result = qword_27D01D2A0;
  if (!qword_27D01D2A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D01D298, &unk_222B06EE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D01D2A0);
  }

  return result;
}

unint64_t sub_222A49850()
{
  result = qword_27D01D2A8;
  if (!qword_27D01D2A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D01D290, &qword_222B06EE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D01D2A8);
  }

  return result;
}

unint64_t sub_222A498CC()
{
  result = qword_27D01D2B0;
  if (!qword_27D01D2B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D01D288, &qword_222B06ED8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D01D2B0);
  }

  return result;
}

unint64_t sub_222A49948()
{
  result = qword_27D01D2B8;
  if (!qword_27D01D2B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D01D288, &qword_222B06ED8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D01D2B8);
  }

  return result;
}

unint64_t sub_222A499C4()
{
  result = qword_27D01D2C0;
  if (!qword_27D01D2C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D01D290, &qword_222B06EE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D01D2C0);
  }

  return result;
}

unint64_t sub_222A49A40()
{
  result = qword_27D01D2C8;
  if (!qword_27D01D2C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D01D298, &unk_222B06EE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D01D2C8);
  }

  return result;
}

unint64_t sub_222A49AE4()
{
  result = qword_27D01D2D0;
  if (!qword_27D01D2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D01D2D0);
  }

  return result;
}

unint64_t sub_222A49B38(uint64_t a1)
{
  result = sub_222A49B60();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_222A49B60()
{
  result = qword_27D01D2D8[0];
  if (!qword_27D01D2D8[0])
  {
    type metadata accessor for Feature();
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D01D2D8);
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_222A49D44(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF7 && *(a1 + 17))
  {
    return (*a1 + 247);
  }

  v3 = *(a1 + 16);
  if (v3 <= 9)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_222A49D8C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF6)
  {
    *(result + 16) = 0;
    *result = a2 - 247;
    *(result + 8) = 0;
    if (a3 >= 0xF7)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF7)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Confidence(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Confidence(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_222A49F38()
{
  result = qword_280CB4BE0;
  if (!qword_280CB4BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CB4BE0);
  }

  return result;
}

id sub_222A49F98()
{
  if ([v0 anyEventType] == 6)
  {
    v1 = [v0 payload];
    if (v1)
    {
      v2 = v1;
      v3 = sub_222B01798();
      v5 = v4;

      v6 = sub_222B01788();
      sub_222A26530(v3, v5);
    }

    else
    {
      v6 = 0;
    }

    v7 = [objc_allocWithZone(MEMORY[0x277D5A978]) initWithData_];

    if (v7)
    {
      v8 = [v7 event];
      if (v8)
      {
        v9 = v8;
        [v7 metadata];

        return v9;
      }
    }
  }

  return v0;
}

uint64_t MTCreateAlarmIntentFeatureExtractor.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = 0xD000000000000013;
  *(result + 24) = 0x8000000222B11620;
  return result;
}

uint64_t MTCreateAlarmIntentFeatureExtractor.init()()
{
  result = v0;
  *(v0 + 16) = 0xD000000000000013;
  *(v0 + 24) = 0x8000000222B11620;
  return result;
}

uint64_t sub_222A4A114(id *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D700, &qword_222B07320);
  MEMORY[0x28223BE20](v3 - 8);
  v70 = &v67 - v4;
  v5 = sub_222B01848();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v69 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v71 = &v67 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D360, &unk_222B07328);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v67 - v11;
  v13 = sub_222B015F8();
  v73 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v72 = &v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  v16 = [*a1 intent];
  v17 = sub_222A816E4();
  if (!v18)
  {
    goto LABEL_16;
  }

  v20 = *(v1 + 16);
  v19 = *(v1 + 24);
  if (v17 == v20 && v18 == v19)
  {
  }

  else
  {
    v21 = sub_222B02F78();

    if ((v21 & 1) == 0)
    {
LABEL_16:

      return MEMORY[0x277D84F90];
    }
  }

  v22 = [v16 parametersByName];
  if (!v22)
  {
    goto LABEL_16;
  }

  v67 = v6;
  v68 = v5;
  v23 = v22;
  v24 = sub_222B022B8();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01C9E8, &unk_222B06120);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_222B05260;
  v26 = type metadata accessor for MTCreateAlarmEventFeature.EventType(0);
  v27 = swift_allocObject();
  *(v27 + 16) = v20;
  *(v27 + 24) = v19;
  *(v25 + 56) = v26;
  *(v25 + 64) = sub_222A4ABA8(&qword_27D01D368, type metadata accessor for MTCreateAlarmEventFeature.EventType);
  *(v25 + 32) = v27;

  v28 = [v15 _donatedBySiri];
  v29 = type metadata accessor for MTCreateAlarmEventFeature.DonatedBySiri(0);
  v30 = swift_allocObject();
  *(v30 + 16) = v28;
  *(v25 + 96) = v29;
  *(v25 + 104) = sub_222A4ABA8(&qword_27D01D370, type metadata accessor for MTCreateAlarmEventFeature.DonatedBySiri);
  *(v25 + 72) = v30;
  if (*(v24 + 16))
  {
    v31 = sub_222A26EC8(0x6C6562616CLL, 0xE500000000000000);
    if (v32)
    {
      sub_222A25344(*(v24 + 56) + 32 * v31, &v76);
      if (swift_dynamicCast())
      {
        v33 = v74;
        v34 = v75;
        v35 = type metadata accessor for MTCreateAlarmEventFeature.AlarmName(0);
        v36 = swift_allocObject();
        *(v36 + 16) = v33;
        *(v36 + 24) = v34;
        v25 = sub_222AA8FDC(1, 3, 1, v25);
        v77 = v35;
        v78 = sub_222A4ABA8(&qword_27D01D390, type metadata accessor for MTCreateAlarmEventFeature.AlarmName);
        *&v76 = v36;
        *(v25 + 16) = 3;
        sub_222A2577C(&v76, v25 + 112);
      }
    }
  }

  v38 = v67;
  v37 = v68;
  v40 = v72;
  v39 = v73;
  if (*(v24 + 16) && (v41 = sub_222A26EC8(0x706D6F4365746164, 0xEE0073746E656E6FLL), (v42 & 1) != 0))
  {
    sub_222A25344(*(v24 + 56) + 32 * v41, &v76);
    v43 = swift_dynamicCast();
    (*(v39 + 56))(v12, v43 ^ 1u, 1, v13);
    if ((*(v39 + 48))(v12, 1, v13) != 1)
    {
      (*(v39 + 32))(v40, v12, v13);
      v12 = v70;
      sub_222B015E8();
      if ((*(v38 + 48))(v12, 1, v37) != 1)
      {
        v68 = *(v38 + 32);
        v63 = v71;
        v68(v71, v12, v37);
        v64 = v69;
        (*(v38 + 16))(v69, v63, v37);
        v48 = type metadata accessor for MTCreateAlarmEventFeature.AlarmTime(0);
        v51 = swift_allocObject();
        v68(v51 + *(*v51 + 96), v64, v37);
        v40 = *(v25 + 16);
        v52 = *(v25 + 24);
        v39 = v40 + 1;
        if (v40 >= v52 >> 1)
        {
          goto LABEL_39;
        }

        goto LABEL_31;
      }

      v44 = *(v39 + 8);
      v39 += 8;
      v44(v40, v13);
      v45 = &qword_27D01D700;
      v46 = &qword_222B07320;
      goto LABEL_19;
    }
  }

  else
  {
    v47 = *(v39 + 56);
    v39 += 56;
    v47(v12, 1, 1, v13);
  }

  v45 = &qword_27D01D360;
  v46 = &unk_222B07328;
LABEL_19:
  sub_222A34F20(v12, v45, v46);
  if (*(v24 + 16))
  {
    while (1)
    {
      v48 = v24;
      v49 = sub_222A26EC8(0x6353746165706572, 0xEE00656C75646568);
      if ((v50 & 1) == 0)
      {
        goto LABEL_32;
      }

      sub_222A25344(*(v24 + 56) + 32 * v49, &v76);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D378, &qword_222B07338);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_33;
      }

      v51 = v74;
      if (v74 >> 62)
      {
        if (!sub_222B02DC8())
        {
          goto LABEL_32;
        }
      }

      else if (!*((v74 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_32;
      }

      if ((v51 & 0xC000000000000001) != 0)
      {
        break;
      }

      v52 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v52)
      {
        v53 = *(v51 + 32);
LABEL_27:
        v54 = v53;

        v55 = [v54 displayString];
        v56 = sub_222B02388();
        v58 = v57;

        v59 = type metadata accessor for MTCreateAlarmEventFeature.AlarmRepeatSchedule(0);
        v60 = swift_allocObject();
        *(v60 + 16) = v56;
        *(v60 + 24) = v58;
        v62 = *(v25 + 16);
        v61 = *(v25 + 24);
        if (v62 >= v61 >> 1)
        {
          v25 = sub_222AA8FDC((v61 > 1), v62 + 1, 1, v25);
        }

        v77 = v59;
        v78 = sub_222A4ABA8(&qword_27D01D380, type metadata accessor for MTCreateAlarmEventFeature.AlarmRepeatSchedule);
        *&v76 = v60;
        *(v25 + 16) = v62 + 1;
        sub_222A2577C(&v76, v25 + 40 * v62 + 32);
        return v25;
      }

      __break(1u);
LABEL_39:
      v25 = sub_222AA8FDC((v52 > 1), v39, 1, v25);
LABEL_31:
      v65 = *(v38 + 8);
      v38 += 8;
      v65(v71, v37);
      (*(v73 + 8))(v72, v13);
      v77 = v48;
      v78 = sub_222A4ABA8(&qword_27D01D388, type metadata accessor for MTCreateAlarmEventFeature.AlarmTime);
      *&v76 = v51;
      *(v25 + 16) = v39;
      sub_222A2577C(&v76, v25 + 40 * v40 + 32);
      if (!*(v24 + 16))
      {
        goto LABEL_32;
      }
    }

    v53 = MEMORY[0x223DC6F00](0, v51);
    goto LABEL_27;
  }

LABEL_32:

LABEL_33:

  return v25;
}

uint64_t MTCreateAlarmEventFeature.DonatedBySiri.__allocating_init(value:)(char a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t MTCreateAlarmEventFeature.AlarmTime.__allocating_init(value:)(uint64_t a1)
{
  v2 = swift_allocObject();
  v3 = *(*v2 + 96);
  v4 = sub_222B01848();
  (*(*(v4 - 8) + 32))(v2 + v3, a1, v4);
  return v2;
}

{
  v2 = sub_222B01848();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = swift_allocObject();
  if ((*(v3 + 48))(a1, 1, v2) == 1)
  {
    sub_222A34F20(a1, &qword_27D01D700, &qword_222B07320);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D398, &qword_222B07350);
    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    v7 = *(v3 + 32);
    v7(v5, a1, v2);
    v7((v6 + *(*v6 + 96)), v5, v2);
  }

  return v6;
}

uint64_t MTCreateAlarmEventFeature.AlarmRepeatSchedule.__allocating_init(value:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t MTCreateAlarmEventFeature.DonatedBySiri.init(value:)(char a1)
{
  *(v1 + 16) = a1;
  return v1;
}

{
  if (a1 == 2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D0C0, qword_222B06130);
    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    *(v1 + 16) = a1 & 1;
  }

  return v1;
}

uint64_t sub_222A4ABA8(unint64_t *a1, uint64_t (*a2)(uint64_t))
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

uint64_t MTCreateAlarmEventFeature.DonatedBySiri.__allocating_init(value:)(unsigned __int8 a1)
{
  v2 = a1;
  result = swift_allocObject();
  if (v2 == 2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D0C0, qword_222B06130);
    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    *(result + 16) = a1 & 1;
  }

  return result;
}

uint64_t sub_222A4ACFC(char *a1)
{
  v1 = *a1;
  type metadata accessor for MTCreateAlarmEventFeature.DonatedBySiri(0);
  result = swift_allocObject();
  *(result + 16) = v1;
  return result;
}

uint64_t sub_222A4AD34(unsigned __int8 *a1)
{
  v1 = *a1;
  type metadata accessor for MTCreateAlarmEventFeature.DonatedBySiri(0);
  result = swift_allocObject();
  if (v1 == 2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D0C0, qword_222B06130);
    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    *(result + 16) = v1 & 1;
  }

  return result;
}

uint64_t sub_222A4ADC8(uint64_t *a1, uint64_t (*a2)(void))
{
  v2 = *a1;
  v3 = a1[1];
  a2(0);
  result = swift_allocObject();
  *(result + 16) = v2;
  *(result + 24) = v3;
  return result;
}

uint64_t sub_222A4AE1C(uint64_t *a1, uint64_t (*a2)(void))
{
  v3 = *a1;
  v2 = a1[1];
  a2(0);
  result = swift_allocObject();
  if (v2)
  {
    *(result + 16) = v3;
    *(result + 24) = v2;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D0B8, &unk_222B07340);
    swift_deallocPartialClassInstance();
    return 0;
  }

  return result;
}

uint64_t MTCreateAlarmEventFeature.AlarmRepeatSchedule.init(value:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t MTCreateAlarmEventFeature.AlarmRepeatSchedule.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t MTCreateAlarmEventFeature.AlarmTime.init(value:)(uint64_t a1)
{
  v3 = *(*v1 + 96);
  v4 = sub_222B01848();
  (*(*(v4 - 8) + 32))(v1 + v3, a1, v4);
  return v1;
}

{
  v3 = sub_222B01848();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v4 + 48))(a1, 1, v3) == 1)
  {
    sub_222A34F20(a1, &qword_27D01D700, &qword_222B07320);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D398, &qword_222B07350);
    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    v7 = *(v4 + 32);
    v7(v6, a1, v3);
    v7((v1 + *(*v1 + 96)), v6, v3);
  }

  return v1;
}

uint64_t MTCreateAlarmEventFeature.AlarmTime.deinit()
{
  v1 = *(*v0 + 96);
  v2 = sub_222B01848();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t MTCreateAlarmEventFeature.AlarmTime.__deallocating_deinit()
{
  v1 = *(*v0 + 96);
  v2 = sub_222B01848();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t SiriUserFeedbackLearningPluginRunResult.bundleName.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t SiriUserFeedbackLearningPluginRunResult.pluginResult.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  *a1 = v2;
  a1[1] = v3;
  return sub_222A39234(v2, v3);
}

__n128 SiriUserFeedbackLearningPluginRunResult.init(bundleName:pluginResult:)@<Q0>(unint64_t a1@<X0>, unint64_t a2@<X1>, __n128 *a3@<X2>, __n128 *a4@<X8>)
{
  a4->n128_u64[0] = a1;
  a4->n128_u64[1] = a2;
  result = *a3;
  a4[1] = *a3;
  return result;
}

uint64_t sub_222A4B574()
{
  if (*v0)
  {
    return 0x65526E6967756C70;
  }

  else
  {
    return 0x614E656C646E7562;
  }
}

uint64_t sub_222A4B5BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x614E656C646E7562 && a2 == 0xEA0000000000656DLL;
  if (v6 || (sub_222B02F78() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x65526E6967756C70 && a2 == 0xEC000000746C7573)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_222B02F78();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_222A4B6B0(uint64_t a1)
{
  v2 = sub_222A4DE08();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222A4B6EC(uint64_t a1)
{
  v2 = sub_222A4DE08();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SiriUserFeedbackLearningPluginRunResult.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D3F0, &qword_222B07490);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v10 - v5;
  v7 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_222A4DE08();
  sub_222B031B8();
  LOBYTE(v14) = 0;
  v8 = v13;
  sub_222B02EE8();
  if (!v8)
  {
    v14 = v12;
    v15 = v11;
    v16 = 1;
    sub_222A39234(v12, v11);
    sub_222A3925C();
    sub_222B02EF8();
    sub_222A39248(v14, v15);
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t SiriUserFeedbackLearningPluginRunResult.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D3F8, &qword_222B07498);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_222A4DE08();
  sub_222B03198();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  LOBYTE(v16[0]) = 0;
  v9 = sub_222B02E88();
  v11 = v10;
  v12 = v9;
  v17 = 1;
  sub_222A39850();
  sub_222B02E98();
  (*(v6 + 8))(v8, v5);
  v13 = v16[0];
  v14 = v16[1];
  *a2 = v12;
  a2[1] = v11;
  a2[2] = v13;
  a2[3] = v14;

  sub_222A39234(v13, v14);
  __swift_destroy_boxed_opaque_existential_0(a1);

  return sub_222A39248(v13, v14);
}

uint64_t SiriUserFeedbackLearningPluginLauncher.runPlugins(plugins:task:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 144) = a1;
  *(v2 + 152) = a2;
  return MEMORY[0x2822009F8](sub_222A4BB3C, 0, 0);
}

uint64_t sub_222A4BB3C()
{
  v41 = v0;
  if (qword_280CBA628 != -1)
  {
    swift_once();
  }

  v1 = v0[19];
  v2 = sub_222B02148();
  v0[20] = __swift_project_value_buffer(v2, qword_280CBC458);
  sub_222A4DE5C(v1, (v0 + 2));
  v3 = sub_222B02128();
  v4 = sub_222B028D8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v40 = v6;
    *v5 = 136315394;
    *(v5 + 4) = sub_222A230FC(0xD000000000000019, 0x8000000222B11840, &v40);
    *(v5 + 12) = 2080;
    v7 = SiriUserFeedbackLearningTask.description.getter();
    v9 = v8;
    sub_222A4DEB8((v0 + 2));
    v10 = sub_222A230FC(v7, v9, &v40);

    *(v5 + 14) = v10;
    _os_log_impl(&dword_222A1C000, v3, v4, "LaunchQueue.%s (async) mlrTask: %s", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DC7E30](v6, -1, -1);
    MEMORY[0x223DC7E30](v5, -1, -1);
  }

  else
  {

    sub_222A4DEB8((v0 + 2));
  }

  v11 = sub_222B02128();
  v12 = sub_222B028D8();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = v0[18];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v40 = v15;
    *v14 = 136315138;
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01CAF0, &qword_222B049D8);
    v17 = MEMORY[0x223DC6850](v13, v16);
    v19 = sub_222A230FC(v17, v18, &v40);

    *(v14 + 4) = v19;
    _os_log_impl(&dword_222A1C000, v11, v12, "plugins: %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x223DC7E30](v15, -1, -1);
    MEMORY[0x223DC7E30](v14, -1, -1);
  }

  v20 = v0[18];
  v21 = *(v20 + 16);
  v0[21] = v21;
  if (v21)
  {
    v22 = MEMORY[0x277D84F90];
    v0[22] = 0;
    v0[23] = v22;
    sub_222A42E40(v20 + 32, (v0 + 9));
    v23 = v0[12];
    v24 = v0[13];
    __swift_project_boxed_opaque_existential_1(v0 + 9, v23);
    v39 = (*(v24 + 24) + **(v24 + 24));
    v25 = swift_task_alloc();
    v0[24] = v25;
    *v25 = v0;
    v25[1] = sub_222A4C090;
    v26 = v0[19];

    return v39(v0 + 14, v26, v23, v24);
  }

  else
  {
    v28 = sub_222B02128();
    v29 = sub_222B028D8();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v40 = v31;
      *v30 = 136315394;
      *(v30 + 4) = sub_222A230FC(0xD000000000000019, 0x8000000222B11840, &v40);
      *(v30 + 12) = 2080;

      v33 = MEMORY[0x223DC6850](v32, &type metadata for SiriUserFeedbackLearningPluginRunResult);
      v35 = v34;

      v36 = sub_222A230FC(v33, v35, &v40);

      *(v30 + 14) = v36;
      _os_log_impl(&dword_222A1C000, v28, v29, "LaunchQueue.%s results: %s", v30, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223DC7E30](v31, -1, -1);
      MEMORY[0x223DC7E30](v30, -1, -1);
    }

    v37 = v0[1];
    v38 = MEMORY[0x277D84F90];

    return v37(v38);
  }
}

uint64_t sub_222A4C090()
{

  return MEMORY[0x2822009F8](sub_222A4C18C, 0, 0);
}

uint64_t sub_222A4C18C()
{
  v36 = v0;
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);
  v32 = *(v0 + 128);
  v33 = *(v0 + 136);
  v3 = *(v0 + 96);
  v4 = *(v0 + 104);
  __swift_project_boxed_opaque_existential_1((v0 + 72), v3);
  v5 = (*(v4 + 8))(v3, v4);
  v30 = v6;
  v31 = v5;
  sub_222A39234(v1, v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v0 + 184);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = sub_222AA9498(0, *(v8 + 2) + 1, 1, *(v0 + 184));
  }

  v10 = *(v8 + 2);
  v9 = *(v8 + 3);
  if (v10 >= v9 >> 1)
  {
    v8 = sub_222AA9498((v9 > 1), v10 + 1, 1, v8);
  }

  v11 = *(v0 + 168);
  v12 = *(v0 + 176) + 1;
  sub_222A39248(v1, v2);

  *(v8 + 2) = v10 + 1;
  v13 = &v8[32 * v10];
  *(v13 + 4) = v31;
  *(v13 + 5) = v30;
  *(v13 + 6) = v1;
  *(v13 + 7) = v2;
  __swift_destroy_boxed_opaque_existential_0((v0 + 72));
  if (v12 == v11)
  {
    v14 = sub_222B02128();
    v15 = sub_222B028D8();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v35 = v17;
      *v16 = 136315394;
      *(v16 + 4) = sub_222A230FC(0xD000000000000019, 0x8000000222B11840, &v35);
      *(v16 + 12) = 2080;

      v19 = MEMORY[0x223DC6850](v18, &type metadata for SiriUserFeedbackLearningPluginRunResult);
      v21 = v20;

      v22 = sub_222A230FC(v19, v21, &v35);

      *(v16 + 14) = v22;
      _os_log_impl(&dword_222A1C000, v14, v15, "LaunchQueue.%s results: %s", v16, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223DC7E30](v17, -1, -1);
      MEMORY[0x223DC7E30](v16, -1, -1);
    }

    v23 = *(v0 + 8);

    return v23(v8);
  }

  else
  {
    v25 = *(v0 + 176);
    *(v0 + 176) = v25 + 1;
    *(v0 + 184) = v8;
    sub_222A42E40(*(v0 + 144) + 40 * v25 + 72, v0 + 72);
    v26 = *(v0 + 96);
    v27 = *(v0 + 104);
    __swift_project_boxed_opaque_existential_1((v0 + 72), v26);
    v34 = (*(v27 + 24) + **(v27 + 24));
    v28 = swift_task_alloc();
    *(v0 + 192) = v28;
    *v28 = v0;
    v28[1] = sub_222A4C090;
    v29 = *(v0 + 152);

    return v34(v0 + 112, v29, v26, v27);
  }
}

unint64_t SiriUserFeedbackLearningPluginLauncher.runPlugins(plugins:task:timeout:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v37 = a1;
  v6 = sub_222B021B8();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v35 = &v31[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v11 = &v31[-v10];
  if (qword_280CBA628 != -1)
  {
    swift_once();
  }

  v12 = sub_222B02148();
  __swift_project_value_buffer(v12, qword_280CBC458);
  v36 = a2;
  sub_222A4DE5C(a2, v39);
  v13 = *(v7 + 16);
  v38 = a3;
  v13(v11, a3, v6);
  v14 = sub_222B02128();
  v15 = sub_222B028D8();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v32 = v15;
    v17 = v16;
    v33 = swift_slowAlloc();
    v41 = v33;
    *v17 = 136315650;
    *(v17 + 4) = sub_222A230FC(0xD000000000000021, 0x8000000222B11860, &v41);
    *(v17 + 12) = 2080;
    v18 = SiriUserFeedbackLearningTask.description.getter();
    v34 = v3;
    v20 = v19;
    sub_222A4DEB8(v39);
    v21 = sub_222A230FC(v18, v20, &v41);

    *(v17 + 14) = v21;
    *(v17 + 22) = 2080;
    v13(v35, v11, v6);
    v22 = sub_222B023D8();
    v24 = v23;
    (*(v7 + 8))(v11, v6);
    v25 = sub_222A230FC(v22, v24, &v41);

    *(v17 + 24) = v25;
    _os_log_impl(&dword_222A1C000, v14, v32, "LaunchQueue.%s mlrTask: %s, timeout: %s", v17, 0x20u);
    v26 = v33;
    swift_arrayDestroy();
    MEMORY[0x223DC7E30](v26, -1, -1);
    MEMORY[0x223DC7E30](v17, -1, -1);
  }

  else
  {

    (*(v7 + 8))(v11, v6);
    sub_222A4DEB8(v39);
  }

  sub_222A4DE5C(v36, v39);
  v27 = swift_allocObject();
  *(v27 + 16) = v37;
  v28 = v39[1];
  *(v27 + 24) = v39[0];
  *(v27 + 40) = v28;
  *(v27 + 56) = v39[2];
  *(v27 + 72) = v40;

  v29 = sub_222A4CADC(v38, &stru_222B074B8, v27);

  return v29;
}

uint64_t sub_222A4C91C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_222A4C9BC;

  return SiriUserFeedbackLearningPluginLauncher.runPlugins(plugins:task:)(a2, a3);
}

uint64_t sub_222A4C9BC(uint64_t a1)
{
  *(*v1 + 32) = a1;

  return MEMORY[0x2822009F8](sub_222A4CABC, 0, 0);
}

unint64_t sub_222A4CADC(uint64_t a1, NSObject *a2, uint64_t a3)
{
  v51 = a2;
  v52 = a1;
  v4 = sub_222B021B8();
  v49 = *(v4 - 8);
  v50 = v4;
  v5 = MEMORY[0x28223BE20](v4);
  v46 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v48 = &v45 - v7;
  v8 = sub_222B02268();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v45 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D720, &qword_222B07760);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v45 - v16;
  v18 = dispatch_semaphore_create(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D418, &qword_222B07780);
  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  v20 = sub_222B02768();
  (*(*(v20 - 8) + 56))(v17, 1, 1, v20);
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = v51;
  v21[5] = a3;
  v21[6] = sub_222A4E498;
  v21[7] = v19;
  v21[8] = v18;
  swift_retain_n();

  v22 = v18;
  sub_222A72CE4(0, 0, v17, &unk_222B07790, v21);

  sub_222B02248();
  v23 = v52;
  sub_222B02258();
  v24 = *(v9 + 8);
  v24(v12, v8);
  sub_222B02A38();
  v24(v14, v8);
  if (sub_222B021C8())
  {
    v47 = v19;
    v51 = v22;
    if (qword_280CBA628 != -1)
    {
      swift_once();
    }

    v25 = sub_222B02148();
    __swift_project_value_buffer(v25, qword_280CBC458);
    v27 = v48;
    v26 = v49;
    v28 = *(v49 + 16);
    v29 = v50;
    v28(v48, v23, v50);
    v30 = sub_222B02128();
    v31 = sub_222B028F8();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      LODWORD(v52) = v31;
      v33 = v32;
      v45 = swift_slowAlloc();
      v53 = v45;
      *v33 = 136315138;
      v28(v46, v27, v29);
      v34 = sub_222B023D8();
      v35 = v27;
      v37 = v36;
      (*(v26 + 8))(v35, v29);
      v38 = sub_222A230FC(v34, v37, &v53);

      *(v33 + 4) = v38;
      _os_log_impl(&dword_222A1C000, v30, v52, "a thread was blocked by a semaphore awaiting a Task and timed out after %s seconds", v33, 0xCu);
      v39 = v45;
      __swift_destroy_boxed_opaque_existential_0(v45);
      MEMORY[0x223DC7E30](v39, -1, -1);
      MEMORY[0x223DC7E30](v33, -1, -1);
    }

    else
    {

      (*(v26 + 8))(v27, v29);
    }

    v41 = "t result from async Task";
    v42 = 0xD00000000000002FLL;
    v22 = v51;
    goto LABEL_11;
  }

  v40 = *(v19 + 16);
  if (!v40)
  {
    v41 = "ns:task:timeout:)";
    v42 = 0xD000000000000028;
LABEL_11:
    v40 = v41 | 0x8000000000000000;
    sub_222A4E3B4();
    swift_allocError();
    *v43 = v42;
    v43[1] = v40;
    swift_willThrow();

    return v40;
  }

  return v40;
}

uint64_t sub_222A4D05C@<X0>(char *a1@<X0>, NSObject *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v54 = a4;
  v59 = a2;
  v60 = a1;
  v5 = sub_222B021B8();
  v57 = *(v5 - 8);
  v58 = v5;
  v6 = MEMORY[0x28223BE20](v5);
  v53 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v56 = &v53 - v8;
  v9 = sub_222B02268();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v53 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D720, &qword_222B07760);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v53 - v17;
  v19 = dispatch_semaphore_create(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D408, &qword_222B07768);
  v20 = swift_allocObject();
  v21 = sub_222B02768();
  *(v20 + 16) = 0u;
  *(v20 + 32) = 0u;
  (*(*(v21 - 8) + 56))(v18, 1, 1, v21);
  v22 = swift_allocObject();
  v22[2] = 0;
  v22[3] = 0;
  v22[4] = v59;
  v22[5] = a3;
  v22[6] = sub_222A4E2D0;
  v22[7] = v20;
  v22[8] = v19;
  swift_retain_n();

  v23 = v19;
  sub_222A732D8(0, 0, v18, &unk_222B07778, v22);

  sub_222B02248();
  v24 = v60;
  sub_222B02258();
  v25 = *(v10 + 8);
  v25(v13, v9);
  sub_222B02A38();
  v25(v15, v9);
  if (sub_222B021C8())
  {
    v59 = v23;
    if (qword_280CBA628 != -1)
    {
      swift_once();
    }

    v26 = sub_222B02148();
    __swift_project_value_buffer(v26, qword_280CBC458);
    v28 = v56;
    v27 = v57;
    v29 = *(v57 + 16);
    v30 = v58;
    v29(v56, v24, v58);
    v31 = sub_222B02128();
    v32 = sub_222B028F8();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v54 = v33;
      v60 = swift_slowAlloc();
      v61 = v60;
      *v33 = 136315138;
      LODWORD(v55) = v32;
      v29(v53, v28, v30);
      v34 = sub_222B023D8();
      v35 = v28;
      v37 = v36;
      (*(v27 + 8))(v35, v30);
      v38 = sub_222A230FC(v34, v37, &v61);

      v39 = v54;
      *(v54 + 4) = v38;
      _os_log_impl(&dword_222A1C000, v31, v55, "a thread was blocked by a semaphore awaiting a Task and timed out after %s seconds", v39, 0xCu);
      v40 = v60;
      __swift_destroy_boxed_opaque_existential_0(v60);
      MEMORY[0x223DC7E30](v40, -1, -1);
      MEMORY[0x223DC7E30](v39, -1, -1);
    }

    else
    {

      (*(v27 + 8))(v28, v30);
    }

    v49 = "t result from async Task";
    v50 = 0xD00000000000002FLL;
    v23 = v59;
  }

  else
  {
    v41 = *(v20 + 32);
    if (v41)
    {
      v42 = *(v20 + 40);
      v44 = *(v20 + 16);
      v43 = *(v20 + 24);
      sub_222A39234(v44, v43);
      v45 = v41;
      v46 = v42;

      v48 = v54;
      *v54 = v44;
      v48[1] = v43;
      v48[2] = v45;
      v48[3] = v42;
      return result;
    }

    v49 = "ns:task:timeout:)";
    v50 = 0xD000000000000028;
  }

  v51 = v49 | 0x8000000000000000;
  sub_222A4E3B4();
  swift_allocError();
  *v52 = v50;
  v52[1] = v51;
  swift_willThrow();
}

uint64_t sub_222A4D604(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_222A4D6A0;

  return SiriUserFeedbackLearningPluginLauncher.runPlugins(plugins:task:)(a1, a2);
}

uint64_t sub_222A4D6A0(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_222A4D7B4(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[4] = a7;
  v8[5] = a8;
  v8[2] = a1;
  v8[3] = a6;
  v12 = (a4 + *a4);
  v10 = swift_task_alloc();
  v8[6] = v10;
  *v10 = v8;
  v10[1] = sub_222A4D8B4;

  return v12(a1);
}

uint64_t sub_222A4D8B4()
{

  return MEMORY[0x2822009F8](sub_222A4D9B0, 0, 0);
}

uint64_t sub_222A4D9B0()
{
  v14 = v0;
  v1 = v0[2];
  v2 = v0[3];
  v3 = v1[1];
  v5 = v1[2];
  v4 = v1[3];
  v10 = *v1;
  v11 = v3;
  v12 = v5;
  v13 = v4;
  sub_222A39234(v10, v3);
  v6 = v5;
  v7 = v4;
  v2(&v10);
  sub_222A4E408(v10, v11, v12, v13);
  sub_222B02A48();
  v8 = v0[1];

  return v8();
}

uint64_t sub_222A4DA60(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a1;
  v8[4] = a6;
  v11 = (a4 + *a4);
  v9 = swift_task_alloc();
  v8[7] = v9;
  *v9 = v8;
  v9[1] = sub_222A4DB58;

  return v11(v8 + 2);
}

uint64_t sub_222A4DB58()
{

  return MEMORY[0x2822009F8](sub_222A4DC54, 0, 0);
}

uint64_t sub_222A4DC54()
{
  v7 = v0;
  v2 = v0[3];
  v1 = v0[4];
  v6 = v0[2];
  v3 = v6;

  v1(&v6);

  sub_222B02A48();
  *v2 = v3;
  v4 = v0[1];

  return v4();
}

id sub_222A4DCF4(void **a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  a2[2] = v2;
  a2[3] = v3;
  a2[4] = v4;
  a2[5] = v5;
  sub_222A4E408(v6, v7, v8, v9);

  return sub_222A4E450(v2, v3, v4, v5);
}

uint64_t _s28SiriPrivateLearningAnalytics0a12UserFeedbackC15PluginRunResultV2eeoiySbAC_ACtFZ_0(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = 0, (sub_222B02F78() & 1) != 0))
  {
    v11 = v2;
    v12 = v3;
    v9 = v4;
    v10 = v5;
    sub_222A39234(v2, v3);
    sub_222A39234(v4, v5);
    v7 = _s28SiriPrivateLearningAnalytics0a12UserFeedbackC10TaskResultV6StatusO2eeoiySbAE_AEtFZ_0(&v11, &v9);
    sub_222A39248(v9, v10);
    sub_222A39248(v11, v12);
  }

  return v7 & 1;
}

unint64_t sub_222A4DE08()
{
  result = qword_280CBA1A8;
  if (!qword_280CBA1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CBA1A8);
  }

  return result;
}

uint64_t sub_222A4DF0C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_222A34620;

  return sub_222A4C91C(a1, v4, v1 + 24);
}

uint64_t sub_222A4DFB8(uint64_t a1, int a2)
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

uint64_t sub_222A4E000(uint64_t result, int a2, int a3)
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

uint64_t dispatch thunk of SiriUserFeedbackLearningPluginLaunching.runPlugins(plugins:task:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 8) + **(a4 + 8));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_222A4D6A0;

  return v11(a1, a2, a3, a4);
}

unint64_t sub_222A4E1CC()
{
  result = qword_27D01D400;
  if (!qword_27D01D400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D01D400);
  }

  return result;
}

unint64_t sub_222A4E224()
{
  result = qword_280CBA198;
  if (!qword_280CBA198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CBA198);
  }

  return result;
}

unint64_t sub_222A4E27C()
{
  result = qword_280CBA1A0;
  if (!qword_280CBA1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CBA1A0);
  }

  return result;
}

uint64_t sub_222A4E2D8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_222A35344;

  return sub_222A4D7B4(a1, v4, v5, v6, v7, v8, v9, v10);
}

unint64_t sub_222A4E3B4()
{
  result = qword_27D01D410;
  if (!qword_27D01D410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D01D410);
  }

  return result;
}

void sub_222A4E408(uint64_t a1, unint64_t a2, void *a3, void *a4)
{
  if (a3)
  {
    sub_222A39248(a1, a2);
  }
}

id sub_222A4E450(id result, unint64_t a2, void *a3, void *a4)
{
  if (a3)
  {
    sub_222A39234(result, a2);
    v6 = a3;

    return a4;
  }

  return result;
}

uint64_t sub_222A4E498(uint64_t *a1)
{
  *(v1 + 16) = *a1;
}

uint64_t objectdestroy_15Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_222A4E528(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_222A35344;

  return sub_222A4DA60(a1, v4, v5, v6, v7, v8, v9, v10);
}

void SiriUserFeedbackLearningMLRuntimePlatform.perform(_:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_280CBA628 != -1)
  {
    swift_once();
  }

  v6 = sub_222B02148();
  __swift_project_value_buffer(v6, qword_280CBC458);
  sub_222A4DE5C(a1, aBlock);
  v7 = sub_222B02128();
  v8 = sub_222B028D8();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v20 = v10;
    *v9 = 136315394;
    *(v9 + 4) = sub_222A230FC(0xD000000000000016, 0x8000000222B11980, &v20);
    *(v9 + 12) = 2080;
    v11 = SiriUserFeedbackLearningTask.description.getter();
    v13 = v12;
    sub_222A4DEB8(aBlock);
    v14 = sub_222A230FC(v11, v13, &v20);

    *(v9 + 14) = v14;
    _os_log_impl(&dword_222A1C000, v7, v8, "SiriUserFeedbackLearningPlatform.%s task: %s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DC7E30](v10, -1, -1);
    MEMORY[0x223DC7E30](v9, -1, -1);
  }

  else
  {

    sub_222A4DEB8(aBlock);
  }

  v15 = objc_opt_self();
  v16 = *(a1 + 8);
  v17 = _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();
  v18 = swift_allocObject();
  *(v18 + 16) = a2;
  *(v18 + 24) = a3;
  aBlock[4] = sub_222A4F0EC;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_222A4E970;
  aBlock[3] = &block_descriptor_2;
  v19 = _Block_copy(aBlock);

  [v15 performTask:v16 forPluginID:v17 completionHandler:v19];
  _Block_release(v19);
}

void sub_222A4E8D4(void *a1, void *a2, void (*a3)(__int128 *))
{
  v6 = a1;
  v7 = a2;
  SiriUserFeedbackLearningPlatformResult.init(mlrTaskResult:error:)(a1, a2, &v11);
  v9 = v11;
  v10 = v12;
  a3(&v9);
  v8 = v10;
}

void sub_222A4E970(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

uint64_t SiriUserFeedbackLearningMLRuntimePlatform.perform(_:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 72) = a1;
  *(v2 + 80) = a2;
  return MEMORY[0x2822009F8](sub_222A4EA1C, 0, 0);
}

uint64_t sub_222A4EA1C()
{
  v17 = v0;
  if (qword_280CBA628 != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v2 = sub_222B02148();
  __swift_project_value_buffer(v2, qword_280CBC458);
  sub_222A4DE5C(v1, (v0 + 2));
  v3 = sub_222B02128();
  v4 = sub_222B028D8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v16 = v6;
    *v5 = 136315394;
    *(v5 + 4) = sub_222A230FC(0x286D726F66726570, 0xEB00000000293A5FLL, &v16);
    *(v5 + 12) = 2080;
    v7 = SiriUserFeedbackLearningTask.description.getter();
    v9 = v8;
    sub_222A4DEB8((v0 + 2));
    v10 = sub_222A230FC(v7, v9, &v16);

    *(v5 + 14) = v10;
    _os_log_impl(&dword_222A1C000, v3, v4, "SiriUserFeedbackLearningMLRuntimePlugin.%s (async) task: %s", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DC7E30](v6, -1, -1);
    MEMORY[0x223DC7E30](v5, -1, -1);
  }

  else
  {

    sub_222A4DEB8((v0 + 2));
  }

  v11 = v0[10];
  v12 = swift_task_alloc();
  v0[11] = v12;
  *(v12 + 16) = v11;
  v13 = swift_task_alloc();
  v0[12] = v13;
  *v13 = v0;
  v13[1] = sub_222A4ECA8;
  v14 = v0[9];

  return MEMORY[0x2822007B8](v14, 0, 0, 0x286D726F66726570, 0xEB00000000293A5FLL, sub_222A4F10C, v12, &type metadata for SiriUserFeedbackLearningPlatformResult);
}

uint64_t sub_222A4ECA8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void sub_222A4EDB8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D420, &unk_222B07840);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = aBlock - v6;
  v8 = objc_opt_self();
  v9 = *(a2 + 8);
  v10 = _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();
  (*(v5 + 16))(v7, a1, v4);
  v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v12 = swift_allocObject();
  (*(v5 + 32))(v12 + v11, v7, v4);
  aBlock[4] = sub_222A4F26C;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_222A4E970;
  aBlock[3] = &block_descriptor_13;
  v13 = _Block_copy(aBlock);

  [v8 performTask:v9 forPluginID:v10 completionHandler:v13];
  _Block_release(v13);
}

uint64_t sub_222A4EFB0(void *a1, void *a2)
{
  v4 = a1;
  v5 = a2;
  SiriUserFeedbackLearningPlatformResult.init(mlrTaskResult:error:)(a1, a2, &v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D420, &unk_222B07840);
  return sub_222B02708();
}

uint64_t sub_222A4F04C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_222A34620;

  return SiriUserFeedbackLearningMLRuntimePlatform.perform(_:)(a1, a2);
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t dispatch thunk of SiriUserFeedbackLearningPlatform.perform(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 16) + **(a4 + 16));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_222A34620;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_222A4F26C(void *a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D420, &unk_222B07840);

  return sub_222A4EFB0(a1, a2);
}

void sub_222A4F38C(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4)
{
  v6 = [objc_opt_self() namespaceNameFromId_];
  v7 = sub_222B02388();
  v9 = v8;

  *a3 = v7;
  *a4 = v9;
}

uint64_t sub_222A4F42C@<X0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a5@<X8>)
{
  if (*a1 != -1)
  {
    v8 = a2;
    v9 = a3;
    v10 = a5;
    swift_once();
    a2 = v8;
    a5 = v10;
    a3 = v9;
  }

  v6 = *a3;
  *a5 = *a2;
  a5[1] = v6;
}

uint64_t static TrialConstants.ValueInferenceFactors.isPICSRestatementAndSuccessfulPhoneCallEnabled.getter()
{
  type metadata accessor for TrialFlagFactor(0);

  return swift_initStaticObject();
}

uint64_t static TrialConstants.ValueInferenceFactors.isPICSEnabledAtRuntimeInSiriVocab.getter()
{
  type metadata accessor for TrialFlagFactor(0);

  return swift_initStaticObject();
}

uint64_t static TrialConstants.SiriPrivateLearningSuggestionsMediaFactors.pimsOfflineLearningEnabled.getter()
{
  type metadata accessor for TrialFlagFactor(0);

  return swift_initStaticObject();
}

uint64_t static TrialConstants.SiriPrivateLearningSuggestionsMediaFactors.pimsSurfacingEnabled.getter()
{
  type metadata accessor for TrialFlagFactor(0);

  return swift_initStaticObject();
}

uint64_t static TrialConstants.SiriPrivateLearningSuggestionsMediaFactors.pimsPartialRepetitionSimilarityThreshold.getter()
{
  type metadata accessor for TrialDoubleFactor(0);

  return swift_initStaticObject();
}

uint64_t static TrialConstants.SiriPrivateLearningSuggestionsMediaFactors.pimsWakeWordTrimmingEnabled.getter()
{
  type metadata accessor for TrialFlagFactor(0);

  return swift_initStaticObject();
}

uint64_t static TrialConstants.SiriPrivateLearningSuggestionsMediaFactors.pimsPhantomTurnRemovalEnabled.getter()
{
  type metadata accessor for TrialFlagFactor(0);

  return swift_initStaticObject();
}

uint64_t static TrialConstants.SiriPrivateLearningSuggestionsPlatformFactors.isEventBasedSchedulerEnabled.getter()
{
  type metadata accessor for TrialFlagFactor(0);

  return swift_initStaticObject();
}

uint64_t static TrialConstants.SiriPrivateLearningSuggestionsPlatformFactors.uuflOfflineLearningEnabled.getter()
{
  type metadata accessor for TrialFlagFactor(0);

  return swift_initStaticObject();
}

uint64_t static TrialConstants.SiriPrivateLearningSuggestionsPlatformFactors.uuflSurfacingEnabled.getter()
{
  type metadata accessor for TrialFlagFactor(0);

  return swift_initStaticObject();
}

void sub_222A4F798(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(v7, a3);
}

id sub_222A4F824()
{
  result = sub_222A4F844();
  qword_280CB5380 = result;
  return result;
}

id sub_222A4F844()
{
  v0 = sub_222B01748();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for InferredGroundTruthStoreCoreData();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  v6 = _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();
  v7 = _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();
  v8 = [v5 URLForResource:v6 withExtension:v7];

  if (!v8 || (sub_222B01718(), v8, v9 = objc_allocWithZone(MEMORY[0x277CBE450]), v10 = sub_222B016A8(), v11 = [v9 initWithContentsOfURL_], v10, (*(v1 + 8))(v3, v0), (result = v11) == 0))
  {
    if (qword_280CBA628 != -1)
    {
      swift_once();
    }

    v13 = sub_222B02148();
    __swift_project_value_buffer(v13, qword_280CBC458);
    v14 = sub_222B02128();
    v15 = sub_222B028E8();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_222A1C000, v14, v15, "InferredGroundTruthStoreCoreData: Error loading data base model from bundle", v16, 2u);
      MEMORY[0x223DC7E30](v16, -1, -1);
    }

    return 0;
  }

  return result;
}

uint64_t InferredGroundTruthStoreCoreData.init(_:)(uint64_t a1, uint64_t a2)
{
  aBlock[6] = *MEMORY[0x277D85DE8];
  v4 = sub_222B02938();
  v75 = *(v4 - 8);
  v76 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_222B01748();
  v77 = *(v7 - 8);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v65 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v65 - v15;
  MEMORY[0x28223BE20](v14);
  v78 = &v65 - v17;
  if (qword_280CB5378 != -1)
  {
    swift_once();
  }

  v18 = qword_280CB5380;
  if (qword_280CB5380)
  {
    v69 = v10;
    v74 = v2;
    v19 = objc_allocWithZone(MEMORY[0x277CBE4A0]);
    v20 = v18;
    v71 = "perform(_:completion:)";
    v21 = _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();
    v73 = v20;
    v72 = [v19 initWithName:v21 managedObjectModel:v20];

    v22 = [objc_allocWithZone(MEMORY[0x277CBE4E0]) init];
    [v22 setShouldInferMappingModelAutomatically_];
    [v22 setShouldMigrateStoreAutomatically_];
    if (a2)
    {
      sub_222B01688();

      v23 = [objc_opt_self() defaultManager];
      sub_222B01708();
      v24 = sub_222B016A8();
      v25 = *(v77 + 8);
      v26 = v7;
      v70 = v77 + 8;
      v25(v16, v7);
      aBlock[0] = 0;
      v27 = [v23 createDirectoryAtURL:v24 withIntermediateDirectories:1 attributes:0 error:aBlock];

      v28 = v6;
      if (v27)
      {
        v29 = aBlock[0];
        v30 = v78;
      }

      else
      {
        v31 = aBlock[0];
        v32 = sub_222B01628();

        swift_willThrow();
        if (qword_280CBA628 != -1)
        {
          swift_once();
        }

        v33 = sub_222B02148();
        __swift_project_value_buffer(v33, qword_280CBC458);
        v30 = v78;
        (*(v77 + 16))(v13, v78, v7);
        v34 = v32;
        v35 = sub_222B02128();
        v36 = sub_222B028E8();

        if (os_log_type_enabled(v35, v36))
        {
          v37 = swift_slowAlloc();
          v67 = v36;
          v38 = v37;
          v68 = swift_slowAlloc();
          aBlock[0] = v68;
          *v38 = 136315394;
          sub_222A55F24(&qword_280CB8310, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
          v66 = v35;
          v39 = sub_222B02F38();
          v40 = v22;
          v42 = v41;
          v25(v13, v26);
          v43 = sub_222A230FC(v39, v42, aBlock);
          v22 = v40;

          *(v38 + 4) = v43;
          *(v38 + 12) = 2080;
          v79 = v32;
          v44 = v32;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01D120, qword_222B06760);
          v45 = sub_222B023D8();
          v47 = sub_222A230FC(v45, v46, aBlock);

          *(v38 + 14) = v47;
          v48 = v66;
          _os_log_impl(&dword_222A1C000, v66, v67, "InferredGroundTruthStoreCoreData: Unable to create the data directory, path=%s, error=%s", v38, 0x16u);
          v49 = v68;
          swift_arrayDestroy();
          MEMORY[0x223DC7E30](v49, -1, -1);
          MEMORY[0x223DC7E30](v38, -1, -1);
        }

        else
        {

          v25(v13, v7);
        }
      }

      v50 = sub_222B016A8();
      [v22 setURL_];

      type metadata accessor for InferredGroundTruthStoreCoreData();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v52 = [objc_opt_self() bundleForClass_];
      type metadata accessor for IncrementalMigrationManager();
      inited = swift_initStackObject();
      *(inited + 16) = v52;
      sub_222B02928();
      sub_222A9E100(v30, v28, 0xD000000000000010, v71 | 0x8000000000000000);
      swift_setDeallocating();

      (*(v75 + 8))(v28, v76);
      v25(v30, v26);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01D220, &unk_222B06C60);
    v54 = swift_allocObject();
    *(v54 + 16) = xmmword_222B06DF0;
    *(v54 + 32) = v22;
    sub_222A250BC(0, &qword_280CB8428, 0x277CBE4E0);
    v55 = v22;
    v56 = sub_222B025D8();

    v57 = v72;
    [v72 setPersistentStoreDescriptions_];

    v58 = swift_allocObject();
    v58[16] = 1;
    v59 = v58 + 16;
    aBlock[4] = sub_222A5082C;
    aBlock[5] = v58;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_222A4F798;
    aBlock[3] = &block_descriptor_3;
    v60 = _Block_copy(aBlock);

    [v57 loadPersistentStoresWithCompletionHandler_];
    _Block_release(v60);
    swift_beginAccess();
    if (*v59)
    {
      v61 = v74;
      *(v74 + 24) = v57;
      v62 = v57;
      v63 = [v62 newBackgroundContext];

      *(v61 + 16) = v63;

      return v61;
    }
  }

  else
  {
  }

  type metadata accessor for InferredGroundTruthStoreCoreData();
  swift_deallocPartialClassInstance();
  return 0;
}

void sub_222A5063C(void *a1, void *a2, uint64_t a3)
{
  if (a2)
  {
    swift_beginAccess();
    *(a3 + 16) = 0;
    if (qword_280CBA628 != -1)
    {
      swift_once();
    }

    v6 = sub_222B02148();
    __swift_project_value_buffer(v6, qword_280CBC458);
    v7 = a2;
    v8 = a1;
    v9 = sub_222B02128();
    v10 = sub_222B028E8();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v18 = v13;
      *v11 = 136315394;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D460, qword_222B07A50);
      v14 = sub_222B02B18();
      v16 = sub_222A230FC(v14, v15, &v18);

      *(v11 + 4) = v16;
      *(v11 + 12) = 2112;
      *(v11 + 14) = v8;
      *v12 = v8;
      v17 = v8;
      _os_log_impl(&dword_222A1C000, v9, v10, "InferredGroundTruthStoreCoreData: Unable to load persistent stores: %s : %@", v11, 0x16u);
      sub_222A34F20(v12, &qword_27D01E4B0, &qword_222B0A530);
      MEMORY[0x223DC7E30](v12, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v13);
      MEMORY[0x223DC7E30](v13, -1, -1);
      MEMORY[0x223DC7E30](v11, -1, -1);
    }
  }
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_222A5084C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](a1);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v3 + 16);
  (*(v6 + 16))(v8);
  v10 = (*(v6 + 80) + 40) & ~*(v6 + 80);
  v11 = swift_allocObject();
  *(v11 + 2) = a2;
  *(v11 + 3) = a3;
  *(v11 + 4) = v3;
  (*(v6 + 32))(&v11[v10], v8, a2);
  v12 = swift_allocObject();
  *(v12 + 16) = sub_222A55664;
  *(v12 + 24) = v11;
  aBlock[4] = sub_222A556A4;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_222A50B98;
  aBlock[3] = &block_descriptor_9;
  v13 = _Block_copy(aBlock);

  [v9 performBlockAndWait_];
  _Block_release(v13);
  LOBYTE(v9) = swift_isEscapingClosureAtFileLocation();

  if (v9)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_222A50A6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_222A93124(a3, a3);
  v7 = *(a3 - 8);
  swift_allocObject();
  v8 = sub_222B02618();
  (*(v7 + 16))(v9, a2, a3);
  v10 = sub_222A92F08(v8, a3);
  sub_222A50D3C(v10, a3, a4);
}

uint64_t sub_222A50BC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(v3 + 16);
  v9 = swift_allocObject();
  v9[2] = a2;
  v9[3] = a3;
  v9[4] = v4;
  v9[5] = a1;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_222A556CC;
  *(v10 + 24) = v9;
  v13[4] = sub_222A56A1C;
  v13[5] = v10;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1107296256;
  v13[2] = sub_222A50B98;
  v13[3] = &block_descriptor_19;
  v11 = _Block_copy(v13);

  [v8 performBlockAndWait_];
  _Block_release(v11);
  LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

  if (v8)
  {
    __break(1u);
  }

  return result;
}

id sub_222A50D3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_222B026C8();
  swift_getWitnessTable();
  sub_222B02578();
  return sub_222A54870();
}

uint64_t sub_222A50DD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_222B026C8();
  sub_222B02A58();
  return v5;
}

uint64_t sub_222A50E4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_222B026C8();
  sub_222B02A58();
  return v7;
}

uint64_t sub_222A50EC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  type metadata accessor for InferredGroundTruthStoreCoreData();
  v6 = sub_222B026C8();
  sub_222A517C8(sub_222A5690C, v6, &v8);
  result = v8;
  if (!v8)
  {
    return sub_222B02658();
  }

  return result;
}

void sub_222A50F88(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X8>)
{
  v25 = a4;
  v23[1] = a7;
  v23[2] = a6;
  v24 = a8;
  v11 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v12 = _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();
  v13 = [v11 initWithEntityName_];

  sub_222A250BC(0, &qword_280CB4BB8, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D430, qword_222B07A08);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_222B05250;
  *(v14 + 56) = MEMORY[0x277D837D0];
  *(v14 + 64) = sub_222A55E5C();
  *(v14 + 32) = a1;
  *(v14 + 40) = a2;

  v15 = sub_222B02888();
  [v13 setPredicate_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01D220, &unk_222B06C60);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_222B06DF0;
  v17 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v18 = _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();
  v19 = [v17 initWithKey:v18 ascending:0];

  *(v16 + 32) = v19;
  sub_222A250BC(0, &qword_280CB8448, 0x277CCAC98);
  v20 = sub_222B025D8();

  [v13 setSortDescriptors_];

  [v13 setFetchLimit_];
  [v13 setFetchOffset_];
  type metadata accessor for GroundTruthRecord();
  v21 = sub_222B02A68();
  if (v26)
  {
  }

  else
  {
    v26 = v23;
    v27 = v21;
    MEMORY[0x28223BE20](v21);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D428, &qword_222B07988);
    sub_222A56958();
    v22 = sub_222B02568();

    *v24 = v22;
  }
}

uint64_t sub_222A512B8@<X0>(id *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a6@<X8>)
{
  v33 = a3;
  v32 = a2;
  v9 = sub_222B02B28();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = (&v31 - v11);
  v13 = [*a1 payload];
  v14 = sub_222B01798();
  v16 = v15;

  v17 = v16;
  sub_222A54F98(a4, v12);
  v18 = *(a4 - 8);
  if ((*(v18 + 48))(v12, 1, a4) == 1)
  {
    v31 = a6;
    (*(v10 + 8))(v12, v9);
    if (qword_280CBA628 != -1)
    {
      swift_once();
    }

    v19 = sub_222B02148();
    __swift_project_value_buffer(v19, qword_280CBC458);
    v20 = v33;

    v21 = sub_222B02128();
    v22 = sub_222B028E8();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = v17;
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v34 = v25;
      *v24 = 136315138;
      *(v24 + 4) = sub_222A230FC(v32, v20, &v34);
      _os_log_impl(&dword_222A1C000, v21, v22, "InferredGroundTruthStoreCoreData: Cannot decode an inferred ground truth of type %s", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v25);
      MEMORY[0x223DC7E30](v25, -1, -1);
      MEMORY[0x223DC7E30](v24, -1, -1);

      v26 = v14;
      v27 = v23;
    }

    else
    {

      v26 = v14;
      v27 = v17;
    }

    sub_222A26530(v26, v27);
    v28 = 1;
    v29 = v31;
  }

  else
  {
    sub_222A26530(v14, v17);
    (*(v18 + 32))(a6, v12, a4);
    v28 = 0;
    v29 = a6;
  }

  return (*(v18 + 56))(v29, v28, 1, a4);
}

uint64_t sub_222A517C8@<X0>(void (*a1)(void)@<X2>, uint64_t a2@<X4>, uint64_t a3@<X8>)
{
  a1();
  v5 = *(*(a2 - 8) + 56);

  return v5(a3, 0, 1, a2);
}

uint64_t sub_222A51A60()
{
  v1 = *(v0 + 16);
  v2 = swift_allocObject();
  *(v2 + 16) = sub_222A55794;
  *(v2 + 24) = v0;
  v5[4] = sub_222A56A1C;
  v5[5] = v2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 1107296256;
  v5[2] = sub_222A50B98;
  v5[3] = &block_descriptor_26;
  v3 = _Block_copy(v5);

  [v1 performBlockAndWait_];
  _Block_release(v3);
  LOBYTE(v1) = swift_isEscapingClosureAtFileLocation();

  if (v1)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_222A51B9C(uint64_t a1)
{

  sub_222A55F6C(0x746E497465736572, 0xEF29286C616E7265, a1);
}

void sub_222A51BFC(uint64_t a1)
{
  v15[1] = *MEMORY[0x277D85DE8];
  v2 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v3 = _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();
  v4 = [v2 initWithEntityName_];

  v5 = [objc_allocWithZone(MEMORY[0x277CBE360]) initWithFetchRequest_];
  v6 = *(a1 + 16);
  v15[0] = 0;
  v7 = [v6 executeRequest:v5 error:v15];
  if (!v7)
  {
    v14 = v15[0];
    sub_222B01628();

    swift_willThrow();
    goto LABEL_9;
  }

  v8 = v7;
  v9 = v15[0];

  if (sub_222A54870())
  {
LABEL_9:

    goto LABEL_10;
  }

  if (qword_280CBA628 != -1)
  {
    swift_once();
  }

  v10 = sub_222B02148();
  __swift_project_value_buffer(v10, qword_280CBC458);
  v11 = sub_222B02128();
  v12 = sub_222B028E8();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_222A1C000, v11, v12, "InferredGroundTruthStoreCoreData: Cannot reset store, failed to save", v13, 2u);
    MEMORY[0x223DC7E30](v13, -1, -1);
  }

LABEL_10:
}

uint64_t sub_222A51DF8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D428, &qword_222B07988);
  sub_222B02A58();
  return v1;
}

uint64_t sub_222A51E6C@<X0>(uint64_t *a2@<X8>)
{
  v5 = 0;

  sub_222A56160(0xD000000000000022, 0x8000000222B11AB0, 0, 0, 1, &v5);

  v4 = v5;
  if (!v5)
  {
    v4 = MEMORY[0x277D84F90];
  }

  *a2 = v4;
  return result;
}

uint64_t sub_222A51EF8()
{
  v1 = *(v0 + 16);
  v2 = swift_allocObject();
  *(v2 + 16) = sub_222A557B8;
  *(v2 + 24) = v0;
  v5[4] = sub_222A56A1C;
  v5[5] = v2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 1107296256;
  v5[2] = sub_222A50B98;
  v5[3] = &block_descriptor_33;
  v3 = _Block_copy(v5);

  [v1 performBlockAndWait_];
  _Block_release(v3);
  LOBYTE(v1) = swift_isEscapingClosureAtFileLocation();

  if (v1)
  {
    __break(1u);
  }

  return result;
}

void sub_222A52034()
{
  v113[1] = *MEMORY[0x277D85DE8];
  v108 = sub_222B018D8();
  v2 = *(v108 - 8);
  MEMORY[0x28223BE20](v108);
  v107 = &v101 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *(v0 + 16);
  v5 = sub_222A52F50();
  if (__OFSUB__(v5, 0x100000))
  {
    __break(1u);
  }

  else
  {
    if (((v5 - 0x100000) & 0x8000000000000000) != 0)
    {
      return;
    }

    v101 = v5 - 0x100000;
    v113[0] = 0;

    sub_222A56494(0xD00000000000001CLL, 0x8000000222B11A90, v113);

    v7 = v113[0];
    if (!v113[0])
    {
      v7 = MEMORY[0x277D84F90];
    }

    v112 = v7;
    v102 = v7 >> 62;
    if (!(v7 >> 62))
    {
      v8 = *((v112 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_7;
    }
  }

  v8 = sub_222B02DC8();
LABEL_7:
  v9 = &unk_280CBA000;
  v104 = v0;
  v103 = v4;
  if (v8)
  {
    if (v8 < 1)
    {
      __break(1u);
      goto LABEL_103;
    }

    v10 = 0;
    v111 = v112 & 0xC000000000000001;
    v106 = (v2 + 8);
    v1 = qword_280CBC458;
    *&v6 = 136315394;
    v105 = v6;
    do
    {
      if (v111)
      {
        v27 = MEMORY[0x223DC6F00](v10, v112);
      }

      else
      {
        v27 = *(v112 + 8 * v10 + 32);
      }

      v28 = v27;
      if (v9[197] != -1)
      {
        swift_once();
      }

      v29 = sub_222B02148();
      v30 = __swift_project_value_buffer(v29, qword_280CBC458);
      v31 = v28;
      v110 = v30;
      v32 = sub_222B02128();
      v33 = sub_222B028E8();

      if (os_log_type_enabled(v32, v33))
      {
        v11 = swift_slowAlloc();
        v109 = swift_slowAlloc();
        v113[0] = v109;
        *v11 = v105;
        v12 = [v31 id];
        v13 = v107;
        sub_222B01898();

        sub_222A55F24(&qword_280CB82F8, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v14 = v8;
        v15 = v108;
        v16 = sub_222B02F38();
        v18 = v17;
        (*v106)(v13, v15);
        v19 = sub_222A230FC(v16, v18, v113);

        *(v11 + 4) = v19;
        *(v11 + 12) = 2080;
        v20 = [v31 type];
        v21 = sub_222B02388();
        v23 = v22;

        v24 = sub_222A230FC(v21, v23, v113);
        v8 = v14;
        v1 = qword_280CBC458;

        *(v11 + 14) = v24;
        _os_log_impl(&dword_222A1C000, v32, v33, "InferredGroundTruthStoreCoreData: Preparing to delete a GT record with zero payload; id=%s, type=%s", v11, 0x16u);
        v25 = v109;
        swift_arrayDestroy();
        MEMORY[0x223DC7E30](v25, -1, -1);
        v26 = v11;
        v9 = &unk_280CBA000;
        MEMORY[0x223DC7E30](v26, -1, -1);
      }

      else
      {
      }

      ++v10;
    }

    while (v8 != v10);
    if (v102)
    {
      v2 = sub_222B02DC8();
    }

    else
    {
      v2 = *((v112 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v4 = v103;
    if (v2)
    {
      v113[0] = MEMORY[0x277D84F90];
      sub_222B02D38();
      if ((v2 & 0x8000000000000000) != 0)
      {
LABEL_105:
        __break(1u);
LABEL_106:
        swift_once();
LABEL_83:
        v81 = sub_222B02148();
        __swift_project_value_buffer(v81, qword_280CBC458);

        v82 = sub_222B02128();
        v83 = sub_222B028D8();
        if (os_log_type_enabled(v82, v83))
        {
          v84 = swift_slowAlloc();
          *v84 = 134217984;
          if (v1)
          {
            v85 = sub_222B02DC8();
          }

          else
          {
            v85 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          *(v84 + 4) = v85;

          _os_log_impl(&dword_222A1C000, v82, v83, "InferredGroundTruthStoreCoreData: Deleted %ld records due to store size exceeding the threshold", v84, 0xCu);
          MEMORY[0x223DC7E30](v84, -1, -1);
        }

        else
        {

          swift_bridgeObjectRelease_n();
        }

        return;
      }

      v34 = 0;
      do
      {
        if (v111)
        {
          v35 = MEMORY[0x223DC6F00](v34, v112);
        }

        else
        {
          v35 = *(v112 + 8 * v34 + 32);
        }

        v36 = v35;
        ++v34;
        v37 = [v35 objectID];

        sub_222B02D18();
        sub_222B02D48();
        sub_222B02D58();
        sub_222B02D28();
      }

      while (v2 != v34);
    }

    v38 = objc_allocWithZone(MEMORY[0x277CBE360]);
    sub_222A250BC(0, &qword_27D01D448, 0x277CBE448);
    v39 = sub_222B025D8();

    v40 = [v38 initWithObjectIDs_];

    v113[0] = 0;
    v41 = [v4 executeRequest:v40 error:v113];
    if (v41)
    {
      v42 = v41;
      v43 = v113[0];

      v44 = sub_222B02128();
      v45 = sub_222B028F8();
      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        *v46 = 134217984;
        if (v102)
        {
          v1 = sub_222B02DC8();
        }

        else
        {
          v1 = *((v112 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        *(v46 + 4) = v1;

        _os_log_impl(&dword_222A1C000, v44, v45, "InferredGroundTruthStoreCoreData: Deleted %ld invalid records with zero payload", v46, 0xCu);
        MEMORY[0x223DC7E30](v46, -1, -1);
      }

      else
      {

        swift_bridgeObjectRelease_n();
      }
    }

    else
    {
      v47 = v113[0];

      v48 = sub_222B01628();

      swift_willThrow();
      v49 = v48;
      v50 = sub_222B02128();
      v51 = sub_222B028E8();

      if (os_log_type_enabled(v50, v51))
      {
        v1 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        v113[0] = v52;
        *v1 = 136315138;
        swift_getErrorValue();
        v53 = sub_222B030C8();
        v55 = sub_222A230FC(v53, v54, v113);

        *(v1 + 4) = v55;
        _os_log_impl(&dword_222A1C000, v50, v51, "InferredGroundTruthStoreCoreData: Failed to delete records with zero payload, error=%s", v1, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v52);
        MEMORY[0x223DC7E30](v52, -1, -1);
        MEMORY[0x223DC7E30](v1, -1, -1);
      }

      else
      {
      }
    }
  }

  else
  {
  }

  v113[0] = 0;
  v56 = "readRecordsWithZeroPayload()";

  sub_222A56160(0xD000000000000022, 0x8000000222B11AB0, 1, 10, 0, v113);

  if (v113[0])
  {
    v2 = v113[0];
  }

  else
  {
    v2 = MEMORY[0x277D84F90];
  }

  if (!(v2 >> 62))
  {
    v57 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v57)
    {
      goto LABEL_45;
    }

LABEL_57:

    v59 = MEMORY[0x277D84F90];
    goto LABEL_58;
  }

  v57 = sub_222B02DC8();
  if (!v57)
  {
    goto LABEL_57;
  }

LABEL_45:
  v113[0] = MEMORY[0x277D84F90];
  sub_222A23C88(0, v57 & ~(v57 >> 63), 0);
  if (v57 < 0)
  {
LABEL_103:
    __break(1u);
    goto LABEL_104;
  }

  v112 = "readRecordsWithZeroPayload()";
  v58 = 0;
  v59 = v113[0];
  do
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v60 = MEMORY[0x223DC6F00](v58, v2);
    }

    else
    {
      v60 = *(v2 + 8 * v58 + 32);
    }

    v61 = v60;
    v62 = [v60 payload];
    v1 = sub_222B01798();
    v64 = v63;

    v113[0] = v59;
    v66 = v59[2];
    v65 = v59[3];
    if (v66 >= v65 >> 1)
    {
      sub_222A23C88((v65 > 1), v66 + 1, 1);
      v59 = v113[0];
    }

    ++v58;
    v59[2] = v66 + 1;
    v67 = &v59[2 * v66];
    v67[4] = v1;
    v67[5] = v64;
  }

  while (v57 != v58);

  v4 = v103;
  v9 = &unk_280CBA000;
  v56 = v112;
LABEL_58:
  v68 = sub_222A53830(v59);

  if (v68 <= 9)
  {
    v69 = 5;
  }

  else if ((v101 / (v68 / 0xAuLL)) <= 0)
  {
    v69 = 5;
  }

  else
  {
    v69 = v101 / (v68 / 0xAuLL);
  }

  v113[0] = 0;

  sub_222A56160(0xD000000000000022, v56 | 0x8000000000000000, 1, v69, 0, v113);

  if (v113[0])
  {
    v2 = v113[0];
  }

  else
  {
    v2 = MEMORY[0x277D84F90];
  }

  if (!(v2 >> 62))
  {
    v70 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v70)
    {
      goto LABEL_68;
    }

LABEL_76:

    v2 = MEMORY[0x277D84F90];
    goto LABEL_77;
  }

  v70 = sub_222B02DC8();
  if (!v70)
  {
    goto LABEL_76;
  }

LABEL_68:
  v113[0] = MEMORY[0x277D84F90];
  sub_222B02D38();
  if (v70 < 0)
  {
LABEL_104:
    __break(1u);
    goto LABEL_105;
  }

  v71 = 0;
  do
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v72 = MEMORY[0x223DC6F00](v71, v2);
    }

    else
    {
      v72 = *(v2 + 8 * v71 + 32);
    }

    v73 = v72;
    ++v71;
    v74 = [v72 objectID];

    sub_222B02D18();
    sub_222B02D48();
    sub_222B02D58();
    sub_222B02D28();
  }

  while (v70 != v71);

  v2 = v113[0];
LABEL_77:
  v1 = (v2 >> 62);
  if (v2 >> 62)
  {
    if (!sub_222B02DC8())
    {
      goto LABEL_81;
    }
  }

  else if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_81;
  }

  v75 = objc_allocWithZone(MEMORY[0x277CBE360]);
  sub_222A250BC(0, &qword_27D01D448, 0x277CBE448);
  v76 = sub_222B025D8();
  v77 = [v75 initWithObjectIDs_];

  v113[0] = 0;
  v78 = [v4 executeRequest:v77 error:v113];
  if (!v78)
  {
    v90 = v113[0];

    v91 = sub_222B01628();

    swift_willThrow();
    if (v9[197] != -1)
    {
      swift_once();
    }

    v92 = sub_222B02148();
    __swift_project_value_buffer(v92, qword_280CBC458);
    v93 = v91;
    v94 = sub_222B02128();
    v95 = sub_222B028E8();

    if (os_log_type_enabled(v94, v95))
    {
      v96 = swift_slowAlloc();
      v97 = swift_slowAlloc();
      v113[0] = v97;
      *v96 = 136315138;
      swift_getErrorValue();
      v98 = sub_222B030C8();
      v100 = sub_222A230FC(v98, v99, v113);

      *(v96 + 4) = v100;
      _os_log_impl(&dword_222A1C000, v94, v95, "InferredGroundTruthStoreCoreData: Cannot delete oldest records %s", v96, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v97);
      MEMORY[0x223DC7E30](v97, -1, -1);
      MEMORY[0x223DC7E30](v96, -1, -1);
    }

    else
    {
    }

    return;
  }

  v79 = v78;
  v80 = v113[0];

LABEL_81:
  if (sub_222A54870())
  {
    if (v9[197] == -1)
    {
      goto LABEL_83;
    }

    goto LABEL_106;
  }

  if (v9[197] != -1)
  {
    swift_once();
  }

  v86 = sub_222B02148();
  __swift_project_value_buffer(v86, qword_280CBC458);
  v87 = sub_222B02128();
  v88 = sub_222B028E8();
  if (os_log_type_enabled(v87, v88))
  {
    v89 = swift_slowAlloc();
    *v89 = 0;
    _os_log_impl(&dword_222A1C000, v87, v88, "InferredGroundTruthStoreCoreData: Cannot save context with deleted oldest records", v89, 2u);
    MEMORY[0x223DC7E30](v89, -1, -1);
  }
}

char *sub_222A52F50()
{
  v1 = v0;
  v64[4] = *MEMORY[0x277D85DE8];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D458, &unk_222B07E00);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v61 - v6;
  v8 = sub_222B01748();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [v1 persistentStoreCoordinator];
  if (!v12)
  {
    goto LABEL_40;
  }

  v13 = v12;
  v14 = [v12 persistentStores];

  sub_222A250BC(0, &qword_280CB4BA8, 0x277CBE4D0);
  v15 = sub_222B025F8();

  if (!(v15 >> 62))
  {
    if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

    goto LABEL_39;
  }

  if (!sub_222B02DC8())
  {
LABEL_39:

LABEL_40:
    (*(v9 + 56))(v7, 1, 1, v8);
    goto LABEL_41;
  }

LABEL_4:
  if ((v15 & 0xC000000000000001) != 0)
  {
    v16 = MEMORY[0x223DC6F00](0, v15);
  }

  else
  {
    if (!*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_49;
    }

    v16 = *(v15 + 32);
  }

  v17 = v16;

  v18 = [v17 URL];

  if (v18)
  {
    sub_222B01718();

    (*(v9 + 56))(v5, 0, 1, v8);
  }

  else
  {
    (*(v9 + 56))(v5, 1, 1, v8);
  }

  sub_222A5689C(v5, v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
LABEL_41:
    sub_222A34F20(v7, &qword_27D01D458, &unk_222B07E00);
    if (qword_280CBA628 != -1)
    {
      swift_once();
    }

    v57 = sub_222B02148();
    __swift_project_value_buffer(v57, qword_280CBC458);
    v58 = sub_222B02128();
    v59 = sub_222B028E8();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      *v60 = 0;
      _os_log_impl(&dword_222A1C000, v58, v59, "NSManagedObjectContext: Failed to get store URL", v60, 2u);
      MEMORY[0x223DC7E30](v60, -1, -1);
    }

    return 0;
  }

  (*(v9 + 32))(v11, v7, v8);
  v19 = objc_opt_self();
  v20 = [v19 defaultManager];
  sub_222B01738();
  v21 = _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();

  v63[0] = 0;
  v22 = [v20 attributesOfItemAtPath:v21 error:v63];

  v23 = v63[0];
  if (!v22)
  {
    v44 = v63[0];
LABEL_26:
    v45 = sub_222B01628();

    swift_willThrow();
    if (qword_280CBA628 != -1)
    {
      swift_once();
    }

    v46 = sub_222B02148();
    __swift_project_value_buffer(v46, qword_280CBC458);
    v47 = v45;
    v48 = sub_222B02128();
    v49 = sub_222B028E8();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v64[0] = v51;
      *v50 = 136315138;
      swift_getErrorValue();
      v52 = sub_222B030C8();
      v54 = sub_222A230FC(v52, v53, v64);

      *(v50 + 4) = v54;
      _os_log_impl(&dword_222A1C000, v48, v49, "NSManagedObjectContext: Cannot determine store size %s", v50, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v51);
      MEMORY[0x223DC7E30](v51, -1, -1);
      MEMORY[0x223DC7E30](v50, -1, -1);
    }

    else
    {
    }

LABEL_31:
    (*(v9 + 8))(v11, v8);
    return 0;
  }

  type metadata accessor for FileAttributeKey(0);
  sub_222A55F24(&qword_280CB4BA0, type metadata accessor for FileAttributeKey, &unk_222B04D88);
  v24 = sub_222B022B8();
  v25 = v23;

  if (!*(v24 + 16) || (v26 = *MEMORY[0x277CCA1C0], v27 = sub_222A27104(*MEMORY[0x277CCA1C0]), (v28 & 1) == 0))
  {

LABEL_21:
    if (qword_280CBA628 == -1)
    {
LABEL_22:
      v40 = sub_222B02148();
      __swift_project_value_buffer(v40, qword_280CBC458);
      v41 = sub_222B02128();
      v42 = sub_222B028E8();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        *v43 = 0;
        _os_log_impl(&dword_222A1C000, v41, v42, "NSManagedObjectContext: Failed to get store size", v43, 2u);
        MEMORY[0x223DC7E30](v43, -1, -1);
      }

      goto LABEL_31;
    }

LABEL_49:
    swift_once();
    goto LABEL_22;
  }

  sub_222A25344(*(v24 + 56) + 32 * v27, v64);

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_21;
  }

  v62 = v63[0];
  v29 = [v19 defaultManager];
  v63[0] = sub_222B01738();
  v63[1] = v30;
  MEMORY[0x223DC66E0](1818326829, 0xE400000000000000);
  v31 = _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();

  v63[0] = 0;
  v32 = [v29 attributesOfItemAtPath:v31 error:v63];

  v33 = v63[0];
  if (!v32)
  {
LABEL_37:
    v44 = v33;
    goto LABEL_26;
  }

  v34 = sub_222B022B8();
  v35 = v33;

  if (*(v34 + 16) && (v36 = sub_222A27104(v26), (v37 & 1) != 0))
  {
    sub_222A25344(*(v34 + 56) + 32 * v36, v64);
    v38 = *(v9 + 8);
    v9 += 8;
    v38(v11, v8);

    if (swift_dynamicCast())
    {
      v39 = v63[0];
      goto LABEL_34;
    }
  }

  else
  {

    v55 = *(v9 + 8);
    v9 += 8;
    v55(v11, v8);
  }

  v39 = 0;
LABEL_34:
  result = &v39[v62];
  if (__OFADD__(v62, v39))
  {
    __break(1u);
    goto LABEL_37;
  }

  return result;
}

uint64_t sub_222A53830(uint64_t a1)
{
  result = 0;
  v3 = *(a1 + 16);
  v4 = (a1 + 40);
  v5 = v3 + 1;
  while (--v5)
  {
    v6 = *(v4 - 1);
    v8 = *v4 >> 62;
    if (v8 > 1)
    {
      if (v8 == 2)
      {
        v11 = v6 + 16;
        v9 = *(v6 + 16);
        v10 = *(v11 + 8);
        v7 = __OFSUB__(v10, v9);
        v6 = v10 - v9;
        if (v7)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v6 = 0;
      }
    }

    else if (v8)
    {
      v7 = __OFSUB__(HIDWORD(v6), v6);
      LODWORD(v6) = HIDWORD(v6) - v6;
      if (v7)
      {
        goto LABEL_17;
      }

      v6 = v6;
    }

    else
    {
      v6 = BYTE6(*v4);
    }

    v4 += 2;
    v7 = __OFADD__(result, v6);
    result += v6;
    if (v7)
    {
      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      __break(1u);
      return result;
    }
  }

  return result;
}

uint64_t sub_222A53920()
{
  v1 = v0;
  v2 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v3 = _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();
  v4 = [v2 initWithEntityName_];

  sub_222A250BC(0, &qword_280CB4BB8, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D430, qword_222B07A08);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_222B05260;
  *(v5 + 56) = MEMORY[0x277D837D0];
  *(v5 + 64) = sub_222A55E5C();
  *(v5 + 32) = 25705;
  *(v5 + 40) = 0xE200000000000000;
  v6 = sub_222B01878();
  *(v5 + 96) = sub_222A250BC(0, &qword_27D01D438, 0x277CCAD78);
  *(v5 + 104) = sub_222A55EB0(&qword_27D01D440, &qword_27D01D438, 0x277CCAD78);
  *(v5 + 72) = v6;
  v7 = sub_222B02888();
  [v4 setPredicate_];

  v8 = v4;
  v9 = sub_222A5668C(0xD000000000000015, 0x8000000222B11A70, v1, v8);

  if (v9 == 2 || (v9 & 1) == 0)
  {
    v10 = 0;
  }

  else
  {
    v10 = sub_222A54870();
  }

  return v10 & 1;
}

unint64_t sub_222A53B0C@<X0>(uint64_t a1@<X0>, BOOL *a3@<X8>)
{
  v5 = *(a1 + 16);
  type metadata accessor for GroundTruthRecord();
  result = sub_222B02A68();
  if (!v3)
  {
    v7 = result;
    if (result >> 62)
    {
      goto LABEL_14;
    }

    for (i = *((result & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_222B02DC8())
    {
      v9 = 0;
      while (1)
      {
        if ((v7 & 0xC000000000000001) != 0)
        {
          v10 = MEMORY[0x223DC6F00](v9, v7);
        }

        else
        {
          if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_13;
          }

          v10 = *(v7 + 8 * v9 + 32);
        }

        v11 = v10;
        v12 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        [v5 deleteObject_];

        ++v9;
        if (v12 == i)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      ;
    }

LABEL_15:

    *a3 = i != 0;
  }

  return result;
}

uint64_t sub_222A53C44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](a1);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v3 + 16);
  (*(v6 + 16))(v8);
  v10 = (*(v6 + 80) + 40) & ~*(v6 + 80);
  v11 = swift_allocObject();
  *(v11 + 2) = a2;
  *(v11 + 3) = a3;
  *(v11 + 4) = v3;
  (*(v6 + 32))(&v11[v10], v8, a2);
  v12 = swift_allocObject();
  *(v12 + 16) = sub_222A558BC;
  *(v12 + 24) = v11;
  aBlock[4] = sub_222A56A1C;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_222A50B98;
  aBlock[3] = &block_descriptor_43;
  v13 = _Block_copy(aBlock);

  [v9 performBlockAndWait_];
  _Block_release(v13);
  LOBYTE(v9) = swift_isEscapingClosureAtFileLocation();

  if (v9)
  {
    __break(1u);
  }

  return result;
}

void sub_222A53E64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25 = a2;
  v23 = a1;
  v26 = sub_222B018D8();
  v4 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v8 = _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();
  v27 = [v7 initWithEntityName_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01D220, &unk_222B06C60);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_222B07970;
  sub_222A250BC(0, &qword_280CB4BB8, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D430, qword_222B07A08);
  v10 = swift_allocObject();
  v24 = xmmword_222B05260;
  *(v10 + 16) = xmmword_222B05260;
  *(v10 + 56) = MEMORY[0x277D837D0];
  v11 = sub_222A55E5C();
  *(v10 + 64) = v11;
  *(v10 + 32) = 25705;
  *(v10 + 40) = 0xE200000000000000;
  v12 = v25;
  (*(a3 + 48))(v25, a3);
  v13 = sub_222B01878();
  (*(v4 + 8))(v6, v26);
  *(v10 + 96) = sub_222A250BC(0, &qword_27D01D438, 0x277CCAD78);
  *(v10 + 104) = sub_222A55EB0(&qword_27D01D440, &qword_27D01D438, 0x277CCAD78);
  *(v10 + 72) = v13;
  *(v9 + 32) = sub_222B02888();
  v14 = swift_allocObject();
  *(v14 + 16) = v24;
  v15 = MEMORY[0x277D837D0];
  *(v14 + 56) = MEMORY[0x277D837D0];
  *(v14 + 64) = v11;
  *(v14 + 32) = 1701869940;
  *(v14 + 40) = 0xE400000000000000;
  v16 = v23;
  v17 = (*(a3 + 56))(v12, a3);
  *(v14 + 96) = v15;
  *(v14 + 104) = v11;
  *(v14 + 72) = v17;
  *(v14 + 80) = v18;
  *(v9 + 40) = sub_222B02888();
  v19 = sub_222B025D8();

  v20 = [objc_opt_self() andPredicateWithSubpredicates_];

  v21 = v27;
  [v27 setPredicate_];

  v29 = v12;
  v30 = a3;
  v31 = v28;
  v32 = v21;
  v33 = v16;
  sub_222A515D0(0xD000000000000012, 0x8000000222B11A50, sub_222A55F00);
}

void sub_222A54204(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, unint64_t a5)
{
  v63 = a3;
  v64 = a5;
  v8 = sub_222B018D8();
  v60 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = *(a4 - 1);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v55 - v15;
  type metadata accessor for GroundTruthRecord();
  v17 = sub_222B02A68();
  if (!v5)
  {
    v18 = v17;
    v57 = a1;
    v58 = v16;
    v19 = v63;
    v59 = v14;
    v62 = 0;
    if (v17 >> 62)
    {
LABEL_31:
      v20 = sub_222B02DC8();
    }

    else
    {
      v20 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v21 = v8;
    v22 = a4;
    if (v20)
    {
      sub_222B01528();
      swift_allocObject();
      sub_222B01518();
      v23 = v62;
      v24 = sub_222B01508();
      v62 = v23;
      if (v23)
      {

        return;
      }

      v8 = v24;
      v64 = v25;

      v19 = 0;
      v11 = (v18 & 0xC000000000000001);
      do
      {
        if (v11)
        {
          v47 = MEMORY[0x223DC6F00](v19, v18);
        }

        else
        {
          if (v19 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_30;
          }

          v47 = *(v18 + 8 * v19 + 32);
        }

        a4 = v47;
        v48 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          __break(1u);
LABEL_30:
          __break(1u);
          goto LABEL_31;
        }

        v49 = sub_222B01788();
        [a4 setPayload_];

        ++v19;
      }

      while (v48 != v20);

      v50 = sub_222A54870();
      if (v50)
      {
        sub_222A26530(v8, v64);
        return;
      }

      if (qword_280CBA628 != -1)
      {
        swift_once();
      }

      v52 = sub_222B02148();
      __swift_project_value_buffer(v52, qword_280CBC458);
      v45 = sub_222B02128();
      v53 = sub_222B028E8();
      if (os_log_type_enabled(v45, v53))
      {
        v54 = swift_slowAlloc();
        *v54 = 0;
        _os_log_impl(&dword_222A1C000, v45, v53, "InferredGroundTruthStoreCoreData: Cannot save context after updating records", v54, 2u);
        MEMORY[0x223DC7E30](v54, -1, -1);
      }

      sub_222A26530(v8, v64);
    }

    else
    {
      v63 = v21;

      if (qword_280CBA628 != -1)
      {
        swift_once();
      }

      v26 = sub_222B02148();
      __swift_project_value_buffer(v26, qword_280CBC458);
      v27 = v61;
      isa = v61[2].isa;
      v29 = v58;
      (isa)(v58, v19, a4);
      v30 = v59;
      (isa)(v59, v19, v22);
      v31 = sub_222B02128();
      v32 = sub_222B028E8();
      if (!os_log_type_enabled(v31, v32))
      {
        v51 = v27[1].isa;
        v51(v29, v22);

        v51(v30, v22);
        return;
      }

      v33 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v65 = v57;
      *v33 = 136315394;
      v34 = v64;
      v35 = *(v64 + 48);
      v56 = v32;
      v35(v22, v64);
      v55 = v27[1].isa;
      v55(v29, v22);
      sub_222A55F24(&qword_280CB82F8, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v36 = v63;
      v37 = sub_222B02F38();
      v61 = v31;
      v39 = v38;
      (*(v60 + 8))(v11, v36);
      v40 = sub_222A230FC(v37, v39, &v65);

      *(v33 + 4) = v40;
      *(v33 + 12) = 2080;
      v41 = (*(v34 + 56))(v22, v34);
      v43 = v42;
      v55(v30, v22);
      v44 = sub_222A230FC(v41, v43, &v65);

      *(v33 + 14) = v44;
      v45 = v61;
      _os_log_impl(&dword_222A1C000, v61, v56, "InferredGroundTruthStoreCoreData: No matching record found to update with id=%s and type=%s", v33, 0x16u);
      v46 = v57;
      swift_arrayDestroy();
      MEMORY[0x223DC7E30](v46, -1, -1);
      MEMORY[0x223DC7E30](v33, -1, -1);
    }
  }
}

id sub_222A54870()
{
  v17[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 16);
  v17[0] = 0;
  v2 = [v1 save_];
  if (v2)
  {
    v3 = v17[0];
  }

  else
  {
    v4 = v17[0];
    v5 = sub_222B01628();

    swift_willThrow();
    if (qword_280CBA628 != -1)
    {
      swift_once();
    }

    v6 = sub_222B02148();
    __swift_project_value_buffer(v6, qword_280CBC458);
    v7 = v5;
    v8 = sub_222B02128();
    v9 = sub_222B028E8();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v17[0] = v11;
      *v10 = 136315138;
      v12 = v5;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01D120, qword_222B06760);
      v13 = sub_222B023D8();
      v15 = sub_222A230FC(v13, v14, v17);

      *(v10 + 4) = v15;
      _os_log_impl(&dword_222A1C000, v8, v9, "InferredGroundTruthStoreCoreData: Unresolved error in save changes error=%s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x223DC7E30](v11, -1, -1);
      MEMORY[0x223DC7E30](v10, -1, -1);
    }

    else
    {
    }
  }

  return v2;
}

id sub_222A54A80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a2 - 8);
  v43 = v3;
  v44 = v7;
  v8 = MEMORY[0x28223BE20](a1);
  v42 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v42 - v10;
  v12 = sub_222B018D8();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_222B01848();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_222B01838();
  sub_222B01818();
  v21 = v20;
  (*(v17 + 8))(v19, v16);
  (*(a3 + 56))(a2, a3);
  v22 = sub_222A55B0C(a1, a2, *(a3 + 8), *(a3 + 16));
  if (v23 >> 60 == 15)
  {

    if (qword_280CBA628 != -1)
    {
      swift_once();
    }

    v24 = sub_222B02148();
    __swift_project_value_buffer(v24, qword_280CBC458);
    v25 = v44;
    v26 = *(v44 + 16);
    v26(v11, a1, a2);
    v27 = sub_222B02128();
    v28 = sub_222B028E8();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v45 = v30;
      *v29 = 136315138;
      v26(v42, v11, a2);
      v31 = sub_222B023D8();
      v33 = v32;
      (*(v25 + 8))(v11, a2);
      v34 = sub_222A230FC(v31, v33, &v45);

      *(v29 + 4) = v34;
      _os_log_impl(&dword_222A1C000, v27, v28, "InferredGroundTruthStoreCoreData: Cannot build a database record for an inferred ground truth:%s", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v30);
      MEMORY[0x223DC7E30](v30, -1, -1);
      MEMORY[0x223DC7E30](v29, -1, -1);
    }

    else
    {

      (*(v25 + 8))(v11, a2);
    }

    return 0;
  }

  else
  {
    v44 = v22;
    v42 = v23;
    type metadata accessor for GroundTruthRecord();
    v35 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext_];
    (*(a3 + 48))(a2, a3);
    v36 = sub_222B01878();
    (*(v13 + 8))(v15, v12);
    [v35 setId_];

    [v35 setTimestamp_];
    v37 = _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();

    [v35 setType_];

    v38 = v44;
    v39 = v42;
    v40 = sub_222B01788();
    [v35 setPayload_];

    sub_222A398A4(v38, v39);
  }

  return v35;
}

uint64_t sub_222A54F98@<X0>(uint64_t a4@<X3>, void *a6@<X8>)
{
  sub_222B014C8();
  swift_allocObject();
  sub_222B014B8();
  sub_222B014A8();

  v8 = *(*(a4 - 8) + 56);

  return v8(a6, 0, 1, a4);
}

void sub_222A55290(uint64_t *a1)
{
  v3 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v4 = _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();
  v5 = [v3 initWithEntityName_];

  sub_222A250BC(0, &qword_280CB4BB8, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D430, qword_222B07A08);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_222B05260;
  *(v6 + 56) = MEMORY[0x277D837D0];
  *(v6 + 64) = sub_222A55E5C();
  *(v6 + 32) = 0x64616F6C796170;
  *(v6 + 40) = 0xE700000000000000;
  v7 = sub_222B01788();
  *(v6 + 96) = sub_222A250BC(0, &qword_280CB8418, 0x277CBEA90);
  *(v6 + 104) = sub_222A55EB0(&qword_27D01D450, &qword_280CB8418, 0x277CBEA90);
  *(v6 + 72) = v7;
  v8 = sub_222B02888();
  [v5 setPredicate_];

  type metadata accessor for GroundTruthRecord();
  v9 = sub_222B02A68();

  if (!v1)
  {
    *a1 = v9;
  }
}

uint64_t InferredGroundTruthStoreCoreData.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_222A5562C(uint64_t (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

uint64_t sub_222A556F8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_222A50EC8(v1[5], v1[6], -1, 0, v1[2], v1[3]);
  *a1 = result;
  return result;
}

uint64_t sub_222A55748@<X0>(uint64_t *a1@<X8>)
{
  result = sub_222A50EC8(v1[5], v1[6], v1[7], v1[8], v1[2], v1[3]);
  *a1 = result;
  return result;
}

uint64_t sub_222A557BC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_222A53920();
  *a1 = result & 1;
  return result;
}

uint64_t objectdestroy_2Tm()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t dispatch thunk of InferredGroundTruthStoreCoreData.write<A>(_:)()
{
  return (*(*v0 + 104))();
}

{
  return (*(*v0 + 112))();
}

uint64_t sub_222A55AB8(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_222A55B0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = MEMORY[0x28223BE20](a1);
  MEMORY[0x28223BE20](v4);
  sub_222B01528();
  swift_allocObject();
  sub_222B01518();
  v5 = sub_222B01508();

  return v5;
}

unint64_t sub_222A55E5C()
{
  result = qword_280CB4BE8;
  if (!qword_280CB4BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CB4BE8);
  }

  return result;
}

uint64_t sub_222A55EB0(unint64_t *a1, unint64_t *a2, void *a3)
{
  result = *a1;
  if (!result)
  {
    sub_222A250BC(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_222A55F24(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_222A56160(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t *a6)
{
  v9 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v10 = _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();
  v11 = [v9 initWithEntityName_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01D220, &unk_222B06C60);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_222B06DF0;
  sub_222A250BC(0, &qword_280CB8448, 0x277CCAC98);
  swift_getKeyPath();
  *(v12 + 32) = sub_222B02908();
  v13 = sub_222B025D8();

  [v11 setSortDescriptors_];

  if ((a5 & 1) == 0)
  {
    [v11 setFetchLimit_];
  }

  type metadata accessor for GroundTruthRecord();
  v14 = sub_222B02A68();

  *a6 = v14;

  return 0;
}

uint64_t sub_222A5689C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D458, &unk_222B07E00);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_222A56958()
{
  result = qword_280CB4BC8;
  if (!qword_280CB4BC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D01D428, &qword_222B07988);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CB4BC8);
  }

  return result;
}

uint64_t TrialFactorResolving.resolveFlag(factor:scope:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = a2[1];
  v8[0] = *a2;
  v8[1] = v5;
  (*(a4 + 16))(&var1, a1, v8, MEMORY[0x277D839B0], &protocol witness table for Bool, a3, a4);
  if (!v4)
  {
    v6 = var1;
  }

  return v6 & 1;
}

double TrialFactorResolving.resolveDoubleFactor(factor:scope:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = a2[1];
  v7[0] = *a2;
  v7[1] = v5;
  (*(a4 + 16))(&v8, a1, v7, MEMORY[0x277D839F8], &protocol witness table for Double, a3, a4);
  if (!v4)
  {
    return v8;
  }

  return result;
}

uint64_t MTUpdateAlarmIntentFeatureExtractor.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = 0xD000000000000013;
  *(result + 24) = 0x8000000222B11B10;
  return result;
}

uint64_t MTUpdateAlarmIntentFeatureExtractor.init()()
{
  result = v0;
  *(v0 + 16) = 0xD000000000000013;
  *(v0 + 24) = 0x8000000222B11B10;
  return result;
}

uint64_t sub_222A56C38(id *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D700, &qword_222B07320);
  MEMORY[0x28223BE20](v3 - 8);
  v70 = &v67 - v4;
  v5 = sub_222B01848();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v69 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v71 = &v67 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D360, &unk_222B07328);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v67 - v11;
  v13 = sub_222B015F8();
  v73 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v72 = &v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  v16 = [*a1 intent];
  v17 = sub_222A816E4();
  if (!v18)
  {
    goto LABEL_16;
  }

  v20 = *(v1 + 16);
  v19 = *(v1 + 24);
  if (v17 == v20 && v18 == v19)
  {
  }

  else
  {
    v21 = sub_222B02F78();

    if ((v21 & 1) == 0)
    {
LABEL_16:

      return MEMORY[0x277D84F90];
    }
  }

  v22 = [v16 parametersByName];
  if (!v22)
  {
    goto LABEL_16;
  }

  v67 = v6;
  v68 = v5;
  v23 = v22;
  v24 = sub_222B022B8();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01C9E8, &unk_222B06120);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_222B05260;
  v26 = type metadata accessor for MTUpdateAlarmEventFeature.EventType(0);
  v27 = swift_allocObject();
  *(v27 + 16) = v20;
  *(v27 + 24) = v19;
  *(v25 + 56) = v26;
  *(v25 + 64) = sub_222A576CC(&qword_27D01D468, type metadata accessor for MTUpdateAlarmEventFeature.EventType);
  *(v25 + 32) = v27;

  v28 = [v15 _donatedBySiri];
  v29 = type metadata accessor for MTUpdateAlarmEventFeature.DonatedBySiri(0);
  v30 = swift_allocObject();
  *(v30 + 16) = v28;
  *(v25 + 96) = v29;
  *(v25 + 104) = sub_222A576CC(&qword_27D01D470, type metadata accessor for MTUpdateAlarmEventFeature.DonatedBySiri);
  *(v25 + 72) = v30;
  if (*(v24 + 16))
  {
    v31 = sub_222A26EC8(0x6C6562616CLL, 0xE500000000000000);
    if (v32)
    {
      sub_222A25344(*(v24 + 56) + 32 * v31, &v76);
      if (swift_dynamicCast())
      {
        v33 = v74;
        v34 = v75;
        v35 = type metadata accessor for MTUpdateAlarmEventFeature.AlarmName(0);
        v36 = swift_allocObject();
        *(v36 + 16) = v33;
        *(v36 + 24) = v34;
        v25 = sub_222AA8FDC(1, 3, 1, v25);
        v77 = v35;
        v78 = sub_222A576CC(&qword_27D01D488, type metadata accessor for MTUpdateAlarmEventFeature.AlarmName);
        *&v76 = v36;
        *(v25 + 16) = 3;
        sub_222A2577C(&v76, v25 + 112);
      }
    }
  }

  v38 = v67;
  v37 = v68;
  v40 = v72;
  v39 = v73;
  if (*(v24 + 16) && (v41 = sub_222A26EC8(0x706D6F4365746164, 0xEE0073746E656E6FLL), (v42 & 1) != 0))
  {
    sub_222A25344(*(v24 + 56) + 32 * v41, &v76);
    v43 = swift_dynamicCast();
    (*(v39 + 56))(v12, v43 ^ 1u, 1, v13);
    if ((*(v39 + 48))(v12, 1, v13) != 1)
    {
      (*(v39 + 32))(v40, v12, v13);
      v12 = v70;
      sub_222B015E8();
      if ((*(v38 + 48))(v12, 1, v37) != 1)
      {
        v68 = *(v38 + 32);
        v63 = v71;
        v68(v71, v12, v37);
        v64 = v69;
        (*(v38 + 16))(v69, v63, v37);
        v48 = type metadata accessor for MTUpdateAlarmEventFeature.AlarmTime(0);
        v51 = swift_allocObject();
        v68(v51 + *(*v51 + 96), v64, v37);
        v40 = *(v25 + 16);
        v52 = *(v25 + 24);
        v39 = v40 + 1;
        if (v40 >= v52 >> 1)
        {
          goto LABEL_39;
        }

        goto LABEL_31;
      }

      v44 = *(v39 + 8);
      v39 += 8;
      v44(v40, v13);
      v45 = &qword_27D01D700;
      v46 = &qword_222B07320;
      goto LABEL_19;
    }
  }

  else
  {
    v47 = *(v39 + 56);
    v39 += 56;
    v47(v12, 1, 1, v13);
  }

  v45 = &qword_27D01D360;
  v46 = &unk_222B07328;
LABEL_19:
  sub_222A34F20(v12, v45, v46);
  if (*(v24 + 16))
  {
    while (1)
    {
      v48 = v24;
      v49 = sub_222A26EC8(0x6353746165706572, 0xEE00656C75646568);
      if ((v50 & 1) == 0)
      {
        goto LABEL_32;
      }

      sub_222A25344(*(v24 + 56) + 32 * v49, &v76);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D378, &qword_222B07338);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_33;
      }

      v51 = v74;
      if (v74 >> 62)
      {
        if (!sub_222B02DC8())
        {
          goto LABEL_32;
        }
      }

      else if (!*((v74 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_32;
      }

      if ((v51 & 0xC000000000000001) != 0)
      {
        break;
      }

      v52 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v52)
      {
        v53 = *(v51 + 32);
LABEL_27:
        v54 = v53;

        v55 = [v54 displayString];
        v56 = sub_222B02388();
        v58 = v57;

        v59 = type metadata accessor for MTUpdateAlarmEventFeature.AlarmRepeatSchedule(0);
        v60 = swift_allocObject();
        *(v60 + 16) = v56;
        *(v60 + 24) = v58;
        v62 = *(v25 + 16);
        v61 = *(v25 + 24);
        if (v62 >= v61 >> 1)
        {
          v25 = sub_222AA8FDC((v61 > 1), v62 + 1, 1, v25);
        }

        v77 = v59;
        v78 = sub_222A576CC(&qword_27D01D478, type metadata accessor for MTUpdateAlarmEventFeature.AlarmRepeatSchedule);
        *&v76 = v60;
        *(v25 + 16) = v62 + 1;
        sub_222A2577C(&v76, v25 + 40 * v62 + 32);
        return v25;
      }

      __break(1u);
LABEL_39:
      v25 = sub_222AA8FDC((v52 > 1), v39, 1, v25);
LABEL_31:
      v65 = *(v38 + 8);
      v38 += 8;
      v65(v71, v37);
      (*(v73 + 8))(v72, v13);
      v77 = v48;
      v78 = sub_222A576CC(&qword_27D01D480, type metadata accessor for MTUpdateAlarmEventFeature.AlarmTime);
      *&v76 = v51;
      *(v25 + 16) = v39;
      sub_222A2577C(&v76, v25 + 40 * v40 + 32);
      if (!*(v24 + 16))
      {
        goto LABEL_32;
      }
    }

    v53 = MEMORY[0x223DC6F00](0, v51);
    goto LABEL_27;
  }

LABEL_32:

LABEL_33:

  return v25;
}

uint64_t MTUpdateAlarmEventFeature.DonatedBySiri.__allocating_init(value:)(char a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t MTUpdateAlarmEventFeature.AlarmTime.__allocating_init(value:)(uint64_t a1)
{
  v2 = swift_allocObject();
  v3 = *(*v2 + 96);
  v4 = sub_222B01848();
  (*(*(v4 - 8) + 32))(v2 + v3, a1, v4);
  return v2;
}

{
  v2 = sub_222B01848();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = swift_allocObject();
  if ((*(v3 + 48))(a1, 1, v2) == 1)
  {
    sub_222A34F20(a1, &qword_27D01D700, &qword_222B07320);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D398, &qword_222B07350);
    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    v7 = *(v3 + 32);
    v7(v5, a1, v2);
    v7((v6 + *(*v6 + 96)), v5, v2);
  }

  return v6;
}

uint64_t MTUpdateAlarmEventFeature.AlarmRepeatSchedule.__allocating_init(value:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t MTUpdateAlarmEventFeature.DonatedBySiri.init(value:)(char a1)
{
  *(v1 + 16) = a1;
  return v1;
}

{
  if (a1 == 2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D0C0, qword_222B06130);
    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    *(v1 + 16) = a1 & 1;
  }

  return v1;
}

uint64_t sub_222A576CC(unint64_t *a1, uint64_t (*a2)(uint64_t))
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

uint64_t MTUpdateAlarmEventFeature.DonatedBySiri.__allocating_init(value:)(unsigned __int8 a1)
{
  v2 = a1;
  result = swift_allocObject();
  if (v2 == 2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D0C0, qword_222B06130);
    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    *(result + 16) = a1 & 1;
  }

  return result;
}

uint64_t sub_222A57820(char *a1)
{
  v1 = *a1;
  type metadata accessor for MTUpdateAlarmEventFeature.DonatedBySiri(0);
  result = swift_allocObject();
  *(result + 16) = v1;
  return result;
}

uint64_t sub_222A57858(unsigned __int8 *a1)
{
  v1 = *a1;
  type metadata accessor for MTUpdateAlarmEventFeature.DonatedBySiri(0);
  result = swift_allocObject();
  if (v1 == 2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D0C0, qword_222B06130);
    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    *(result + 16) = v1 & 1;
  }

  return result;
}

uint64_t sub_222A578EC(uint64_t *a1, uint64_t (*a2)(void))
{
  v2 = *a1;
  v3 = a1[1];
  a2(0);
  result = swift_allocObject();
  *(result + 16) = v2;
  *(result + 24) = v3;
  return result;
}

uint64_t sub_222A57940(uint64_t *a1, uint64_t (*a2)(void))
{
  v3 = *a1;
  v2 = a1[1];
  a2(0);
  result = swift_allocObject();
  if (v2)
  {
    *(result + 16) = v3;
    *(result + 24) = v2;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D0B8, &unk_222B07340);
    swift_deallocPartialClassInstance();
    return 0;
  }

  return result;
}

uint64_t MTUpdateAlarmEventFeature.AlarmRepeatSchedule.init(value:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t MTUpdateAlarmEventFeature.AlarmRepeatSchedule.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t MTUpdateAlarmEventFeature.AlarmTime.init(value:)(uint64_t a1)
{
  v3 = *(*v1 + 96);
  v4 = sub_222B01848();
  (*(*(v4 - 8) + 32))(v1 + v3, a1, v4);
  return v1;
}

{
  v3 = sub_222B01848();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v4 + 48))(a1, 1, v3) == 1)
  {
    sub_222A34F20(a1, &qword_27D01D700, &qword_222B07320);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D398, &qword_222B07350);
    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    v7 = *(v4 + 32);
    v7(v6, a1, v3);
    v7((v1 + *(*v1 + 96)), v6, v3);
  }

  return v1;
}

uint64_t MTUpdateAlarmEventFeature.AlarmTime.deinit()
{
  v1 = *(*v0 + 96);
  v2 = sub_222B01848();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t MTUpdateAlarmEventFeature.AlarmTime.__deallocating_deinit()
{
  v1 = *(*v0 + 96);
  v2 = sub_222B01848();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

SiriPrivateLearningAnalytics::PLUSSuggestionGenerationDomain_optional __swiftcall PLUSSuggestionGenerationDomain.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_222B02E48();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t PLUSSuggestionGenerationDomain.rawValue.getter()
{
  if (*v0)
  {
    return 0x6964654D73756C50;
  }

  else
  {
    return 0xD000000000000018;
  }
}

uint64_t sub_222A580E4()
{
  sub_222B03128();
  sub_222B02448();

  return sub_222B03168();
}

uint64_t sub_222A58170(uint64_t a1)
{
  sub_222B02448();
}

uint64_t sub_222A581E8(uint64_t a1)
{
  sub_222B03128();
  sub_222B02448();

  return sub_222B03168();
}

uint64_t sub_222A58270@<X0>(char *a2@<X8>)
{
  v3 = sub_222B02E48();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_222A582D0(unint64_t *a1@<X8>)
{
  v2 = 0x8000000222B0FEB0;
  v3 = 0xD000000000000018;
  if (*v1)
  {
    v3 = 0x6964654D73756C50;
    v2 = 0xE900000000000061;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t sub_222A58318(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6964654D73756C50;
  }

  else
  {
    v3 = 0xD000000000000018;
  }

  if (v2)
  {
    v4 = 0x8000000222B0FEB0;
  }

  else
  {
    v4 = 0xE900000000000061;
  }

  if (*a2)
  {
    v5 = 0x6964654D73756C50;
  }

  else
  {
    v5 = 0xD000000000000018;
  }

  if (*a2)
  {
    v6 = 0xE900000000000061;
  }

  else
  {
    v6 = 0x8000000222B0FEB0;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_222B02F78();
  }

  return v8 & 1;
}

uint64_t static PLUSLoggingIdGenerator.derivePlusLoggingId(requestId:for:)@<X0>(uint64_t a1@<X0>, uint64_t x8_0@<X8>)
{
  v5 = sub_222B018D8();
  MEMORY[0x28223BE20](v5);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, a1);
  return sub_222A584E8(v7, x8_0);
}

uint64_t sub_222A584E8@<X0>(uint64_t a1@<X0>, uint64_t a4@<X8>)
{
  v25[1] = *MEMORY[0x277D85DE8];
  v6 = sub_222B023C8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_222B023B8();
  v10 = sub_222B02398();
  v12 = v11;

  (*(v7 + 8))(v9, v6);
  if (v12 >> 60 == 15)
  {
    v13 = sub_222B018D8();
    v14 = *(v13 - 8);
    (*(v14 + 8))(a1, v13);
    return (*(v14 + 56))(a4, 1, 1, v13);
  }

  v16 = sub_222B02668();
  *(v16 + 16) = 20;
  *(v16 + 32) = 0;
  *(v16 + 40) = 0;
  *(v16 + 48) = 0;
  v25[0] = v16;
  memset(&c, 0, sizeof(c));
  CC_SHA1_Init(&c);
  v23[0] = sub_222B018B8();
  v23[1] = v17;
  sub_222A58C3C(v10, v12, v25, &c, v23, &c);
  v18 = v25[0];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v18 = sub_222A765A4(v18);
  }

  v19 = *(v18 + 2);
  if (v19 < 7)
  {
    __break(1u);
    goto LABEL_16;
  }

  v18[38] = v18[38] & 0xF | 0x50;
  if (v19 < 9)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v18[40] = v18[40] & 0x3F | 0x80;
  if (v19 == 9)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v19 < 0xB)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v19 == 11)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v19 < 0xD)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v19 == 13)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v19 < 0xF)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
  }

  if (v19 == 15)
  {
    goto LABEL_23;
  }

  sub_222B018A8();
  sub_222A398A4(v10, v12);
  v20 = sub_222B018D8();
  v21 = *(v20 - 8);
  (*(v21 + 8))(a1, v20);

  return (*(v21 + 56))(a4, 0, 1, v20);
}

uint64_t static PLUSLoggingIdGenerator.derivePlusSuggestionLinkId(plusId:for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v25 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01DA50, &unk_222B04E20);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v24 - v6;
  v8 = sub_222B018D8();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v24 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v24 - v16;
  v18 = *(v9 + 16);
  v18(&v24 - v16, a1, v8);
  v18(v15, a2, v8);
  v18(v12, v17, v8);
  sub_222B01868();
  sub_222A584E8(v12, v7);
  v19 = *(v9 + 8);
  v19(v15, v8);
  v19(v17, v8);
  if ((*(v9 + 48))(v7, 1, v8))
  {
    sub_222A264C8(v7);
    v20 = 1;
    v21 = v25;
  }

  else
  {
    v22 = v25;
    (*(v9 + 32))(v25, v7, v8);
    v20 = 0;
    v21 = v22;
  }

  return (*(v9 + 56))(v21, v20, 1, v8);
}

unint64_t sub_222A58B34()
{
  result = qword_27D01D4E0;
  if (!qword_27D01D4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D01D4E0);
  }

  return result;
}

unint64_t sub_222A58B8C()
{
  result = qword_27D01D4E8;
  if (!qword_27D01D4E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D01D4F0, &qword_222B07C88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D01D4E8);
  }

  return result;
}

uint64_t sub_222A58C3C(uint64_t a1, unint64_t a2, uint64_t *a3, CC_SHA1_CTX *a4, const void *a5, uint64_t a6)
{
  v13 = a2;
  data[2] = *MEMORY[0x277D85DE8];
  v14 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v14 != 2)
    {
      memset(data, 0, 14);
      v6 = *a3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *a3 = v6;
      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_51;
      }

      goto LABEL_59;
    }

    v19 = *(a1 + 16);
    v18 = *(a1 + 24);
    v6 = a2 & 0x3FFFFFFFFFFFFFFFLL;
    v8 = sub_222B015B8();
    if (v8)
    {
      v6 = v13 & 0x3FFFFFFFFFFFFFFFLL;
      v20 = sub_222B015D8();
      if (__OFSUB__(v19, v20))
      {
        goto LABEL_73;
      }

      v8 += v19 - v20;
    }

    v21 = __OFSUB__(v18, v19);
    v22 = v18 - v19;
    if (!v21)
    {
      v23 = sub_222B015C8();
      if (v23 >= v22)
      {
        v13 = v22;
      }

      else
      {
        v13 = v23;
      }

      v6 = *a3;
      v24 = swift_isUniquelyReferenced_nonNull_native();
      *a3 = v6;
      if (v24)
      {
        goto LABEL_20;
      }

      goto LABEL_64;
    }

LABEL_61:
    __break(1u);
  }

  else
  {
    if (v14)
    {
      goto LABEL_31;
    }

    v8 = v7;
    data[0] = a1;
    LOWORD(data[1]) = a2;
    BYTE2(data[1]) = BYTE2(a2);
    BYTE3(data[1]) = BYTE3(a2);
    BYTE4(data[1]) = BYTE4(a2);
    BYTE5(data[1]) = BYTE5(a2);
    v6 = *a3;
    v15 = swift_isUniquelyReferenced_nonNull_native();
    *a3 = v6;
    if ((v15 & 1) == 0)
    {
      v6 = sub_222A765A4(v6);
      *a3 = v6;
    }

    if (a5)
    {
      v16 = a6 - a5;
    }

    else
    {
      v16 = 0;
    }

    if ((v16 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_58;
    }

    if (!HIDWORD(v16))
    {
      CC_SHA1_Update(a4, a5, v16);
      CC_SHA1_Update(a4, data, BYTE6(v13));
      result = CC_SHA1_Final((v6 + 32), a4);
      *a3 = v6;
      return result;
    }
  }

  __break(1u);
  do
  {
    __break(1u);
LABEL_64:
    v6 = sub_222A765A4(v6);
    *a3 = v6;
LABEL_20:
    if (a5)
    {
      v25 = a6 - a5;
    }

    else
    {
      v25 = 0;
    }

    if ((v25 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_66;
    }

    if (HIDWORD(v25))
    {
      goto LABEL_68;
    }

    a1 = CC_SHA1_Update(a4, a5, v25);
    if (v8)
    {
      v26 = v13;
    }

    else
    {
      v26 = 0;
    }

    if ((v26 & 0x8000000000000000) != 0)
    {
      goto LABEL_70;
    }

    if (!HIDWORD(v26))
    {
      goto LABEL_49;
    }

    __break(1u);
LABEL_31:
    v27 = a1;
    v28 = (a1 >> 32) - a1;
    if (a1 >> 32 >= a1)
    {
      v8 = sub_222B015B8();
      if (!v8)
      {
        goto LABEL_35;
      }

      v29 = sub_222B015D8();
      if (__OFSUB__(v27, v29))
      {
        goto LABEL_74;
      }

      v8 += v27 - v29;
LABEL_35:
      v30 = sub_222B015C8();
      if (v30 >= v28)
      {
        v13 = v28;
      }

      else
      {
        v13 = v30;
      }

      v6 = *a3;
      v31 = swift_isUniquelyReferenced_nonNull_native();
      *a3 = v6;
      if (v31)
      {
LABEL_39:
        if (a5)
        {
          v32 = a6 - a5;
        }

        else
        {
          v32 = 0;
        }

        if ((v32 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_68:
          __break(1u);
        }

        else if (!HIDWORD(v32))
        {
          CC_SHA1_Update(a4, a5, v32);
          if (v8)
          {
            v26 = v13;
          }

          else
          {
            v26 = 0;
          }

          if ((v26 & 0x8000000000000000) == 0)
          {
            if (!HIDWORD(v26))
            {
LABEL_49:
              CC_SHA1_Update(a4, v8, v26);
              result = CC_SHA1_Final((v6 + 32), a4);
              *a3 = v6;
              return result;
            }

LABEL_72:
            __break(1u);
LABEL_73:
            __break(1u);
LABEL_74:
            __break(1u);
          }

LABEL_71:
          __break(1u);
          goto LABEL_72;
        }

        __break(1u);
LABEL_70:
        __break(1u);
        goto LABEL_71;
      }

LABEL_66:
      v6 = sub_222A765A4(v6);
      *a3 = v6;
      goto LABEL_39;
    }

LABEL_58:
    __break(1u);
LABEL_59:
    v6 = sub_222A765A4(v6);
    *a3 = v6;
LABEL_51:
    if (a5)
    {
      v34 = a6 - a5;
    }

    else
    {
      v34 = 0;
    }

    if ((v34 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_61;
    }
  }

  while (HIDWORD(v34));
  CC_SHA1_Update(a4, a5, v34);
  CC_SHA1_Update(a4, data, 0);
  result = CC_SHA1_Final((v6 + 32), a4);
  *a3 = v6;
  return result;
}

uint64_t sub_222A58FF8@<X0>(void *a1@<X0>, uint64_t (*a2)(void, void)@<X1>, uint64_t *a3@<X8>)
{
  result = a2(*a1, a1[1]);
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t sub_222A59034@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t, void)@<X1>, uint64_t a3@<X8>)
{
  result = a2(a3, a1, *(a1 + 8));
  *(a3 + 8) = result;
  return result;
}

id sub_222A59074@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = v2;
  v43 = a2;
  v44 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D720, &qword_222B07760);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v39 - v5;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01CE58, &qword_222B05190);
  v7 = *(v42 - 8);
  v41 = *(v7 + 64);
  v8 = MEMORY[0x28223BE20](v42);
  v40 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v39 - v10;
  v39 = sub_222B01848();
  v12 = *(v39 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v39);
  v15 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v39 - v16;
  sub_222B01838();
  v18 = sub_222B02768();
  (*(*(v18 - 8) + 56))(v6, 1, 1, v18);
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = v3;

  v20 = sub_222A5A3CC(0, 0, v6, &unk_222B07F18, v19, &qword_27D01D568, &qword_222B07E88);
  v21 = swift_allocObject();
  *(v21 + 16) = sub_222A5F260;
  *(v21 + 24) = v20;
  v45 = sub_222A5F270;
  v46 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01CE60, &unk_222B051A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01CE68, &qword_222B07F30);
  sub_222A352E8(&qword_280CB7110, &qword_27D01CE60, &unk_222B051A0, &protocol conformance descriptor for AnyAsyncSequence<A>);
  sub_222B02DA8();
  v22 = *(v12 + 32);
  v23 = v17;
  v24 = v39;
  v22(v15, v23, v39);
  v25 = (*(v12 + 80) + 24) & ~*(v12 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = v44;
  v22((v26 + v25), v15, v24);
  v27 = swift_allocObject();
  *(v27 + 16) = sub_222A5EFE4;
  *(v27 + 24) = v26;
  v28 = *(v7 + 32);
  v29 = v40;
  v30 = v42;
  v28(v40, v11, v42);
  v31 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v32 = (v41 + v31 + 7) & 0xFFFFFFFFFFFFFFF8;
  v33 = swift_allocObject();
  v28((v33 + v31), v29, v30);
  v34 = (v33 + v32);
  *v34 = sub_222A5F068;
  v34[1] = v27;
  v35 = swift_allocObject();
  *(v35 + 16) = sub_222A3516C;
  *(v35 + 24) = v33;
  v36 = v43;
  *v43 = sub_222A35244;
  v36[1] = v35;
  v37 = v44;

  return v37;
}

uint64_t sub_222A59534(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_222B01848();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a3 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics14StreamBookmark_name);
  v10 = *(a3 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics14StreamBookmark_name + 8);
  (*(v7 + 16))(v9, a4, v6);

  sub_222B017C8();
  v13 = v12;
  v14 = type metadata accessor for StreamBookmark();
  v15 = objc_allocWithZone(v14);
  v16 = &v15[OBJC_IVAR____TtC28SiriPrivateLearningAnalytics14StreamBookmark_name];
  *v16 = v11;
  *(v16 + 1) = v10;
  *&v15[OBJC_IVAR____TtC28SiriPrivateLearningAnalytics14StreamBookmark_bookmark] = 0;
  v17 = &v15[OBJC_IVAR____TtC28SiriPrivateLearningAnalytics14StreamBookmark_timeIntervalSinceReferenceDate];
  *v17 = v13;
  v17[8] = 0;
  v19.receiver = v15;
  v19.super_class = v14;
  objc_msgSendSuper2(&v19, sel_init);
  (*(v7 + 8))(v9, v6);
}

uint64_t sub_222A596C0(uint64_t a1)
{
  v1[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D458, &unk_222B07E00);
  v1[3] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D700, &qword_222B07320);
  v1[4] = swift_task_alloc();
  v1[5] = swift_task_alloc();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D510, &qword_222B07E10);
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D580, &qword_222B07EA0);
  v1[9] = v3;
  v1[10] = *(v3 - 8);
  v1[11] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D588, &qword_222B07EA8);
  v1[12] = v4;
  v1[13] = *(v4 - 8);
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_222A598E4, 0, 0);
}

uint64_t sub_222A598E4()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = sub_222B01848();
  v4 = *(v3 - 8);
  (*(v4 + 56))(v1, 1, 1, v3);
  v5 = sub_222A5B7A0();
  v0[16] = v5;
  sub_222A34E48(v1, v2, &qword_27D01D700, &qword_222B07320);
  v6 = (*(v4 + 48))(v2, 1, v3);
  v7 = v0[4];
  if (v6 == 1)
  {
    sub_222A34F20(v0[4], &qword_27D01D700, &qword_222B07320);
    v8 = 0;
  }

  else
  {
    sub_222B017C8();
    v10 = v9;
    (*(v4 + 8))(v7, v3);
    v8 = v10;
  }

  v11 = v6 == 1;
  v12 = v0[3];
  sub_222B01FA8();
  v13 = sub_222B01748();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  v14 = swift_task_alloc();
  v0[17] = v14;
  *v14 = v0;
  v14[1] = sub_222A59B34;
  v15 = v0[8];

  return MEMORY[0x2821377B0](v15, v5, 0, 1, v8, v11, 0, 1);
}

uint64_t sub_222A59B34()
{
  v2 = *v1;
  v2[18] = v0;

  v3 = v2[16];
  if (v0)
  {
    sub_222A34F20(v2[3], &qword_27D01D458, &unk_222B07E00);

    v4 = sub_222A59EE0;
  }

  else
  {
    v5 = v2[5];
    v6 = v2[3];

    sub_222A34F20(v6, &qword_27D01D458, &unk_222B07E00);
    sub_222A34F20(v5, &qword_27D01D700, &qword_222B07320);
    v4 = sub_222A59CBC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_222A59CBC(uint64_t a1)
{
  v2 = v1[15];
  v4 = v1[12];
  v3 = v1[13];
  v5 = v1[10];
  v6 = v1[11];
  v7 = v1[8];
  v8 = v1[9];
  v9 = v1[6];
  v10 = v1[7];
  v13 = v1[14];
  swift_getOpaqueTypeConformance2();
  sub_222B01F88();
  (*(v10 + 8))(v7, v9);
  sub_222A352E8(&qword_27D01D590, &qword_27D01D580, &qword_222B07EA0, MEMORY[0x277CF1760]);
  sub_222B01998();
  (*(v5 + 8))(v6, v8);
  (*(v3 + 16))(v13, v2, v4);
  type metadata accessor for Turn(0);
  sub_222A352E8(&qword_27D01D598, &qword_27D01D588, &qword_222B07EA8, MEMORY[0x277CE4878]);
  sub_222B02DA8();
  (*(v3 + 8))(v2, v4);

  v11 = v1[1];

  return v11();
}

uint64_t sub_222A59EE0()
{
  sub_222A34F20(*(v0 + 40), &qword_27D01D700, &qword_222B07320);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_222A59FB8(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_222A59FDC, 0, 0);
}

uint64_t sub_222A59FDC()
{
  v1 = v0[2];
  *v1 = sub_222A5A040(v0[3]);
  v2 = v0[1];

  return v2();
}

void *sub_222A5A040(uint64_t a1)
{
  v2 = sub_222B018D8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D700, &qword_222B07320);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v33 - v10;
  v12 = sub_222B01FB8();
  v13 = v12;
  v40 = MEMORY[0x277D84F90];
  v37 = v3;
  v38 = v2;
  v35 = a1;
  v36 = v5;
  v33 = v11;
  v34 = v9;
  v14 = v12 & 0xFFFFFFFFFFFFFF8;
  if (v12 >> 62)
  {
LABEL_21:
    v15 = sub_222B02DC8();
  }

  else
  {
    v15 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v16 = 0;
  v39 = MEMORY[0x277D84F90];
  while (v15 != v16)
  {
    if ((v13 & 0xC000000000000001) != 0)
    {
      v17 = MEMORY[0x223DC6F00](v16, v13);
    }

    else
    {
      if (v16 >= *(v14 + 16))
      {
        goto LABEL_20;
      }

      v17 = *(v13 + 8 * v16 + 32);
    }

    v18 = v17;
    v19 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    result = sub_222B01ED8();
    if (!result)
    {
      __break(1u);
      return result;
    }

    v21 = result;
    v22 = [result wrapAsAnyEvent];

    ++v16;
    if (v22)
    {
      MEMORY[0x223DC6810]();
      if (*((v40 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_222B02648();
      }

      sub_222B02688();
      v39 = v40;
      v16 = v19;
    }
  }

  sub_222B02008();
  if (v23)
  {
    v24 = sub_222B01848();
    v25 = v33;
    (*(*(v24 - 8) + 56))(v33, 1, 1, v24);
  }

  else
  {
    v25 = v33;
    sub_222B01808();
    v26 = sub_222B01848();
    (*(*(v26 - 8) + 56))(v25, 0, 1, v26);
  }

  v28 = v37;
  v27 = v38;
  v29 = v36;
  v30 = v34;
  v31 = v39;
  sub_222B02018();
  sub_222A5E93C(v25, v30);
  type metadata accessor for Turn(0);
  v32 = swift_allocObject();
  (*(v28 + 32))(v32 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics4Turn_turnID, v29, v27);
  *(v32 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics4Turn_events) = v31;
  sub_222A5E93C(v30, v32 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics4Turn_date);
  return v32;
}

uint64_t sub_222A5A3CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7)
{
  v26[0] = a4;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D720, &qword_222B07760);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = v26 - v13;
  sub_222A34E48(a3, v26 - v13, &qword_27D01D720, &qword_222B07760);
  v15 = sub_222B02768();
  v16 = *(v15 - 8);
  v17 = (*(v16 + 48))(v14, 1, v15);

  if (v17 == 1)
  {
    sub_222A34F20(v14, &qword_27D01D720, &qword_222B07760);
  }

  else
  {
    sub_222B02758();
    (*(v16 + 8))(v14, v15);
  }

  v18 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v18)
  {
    swift_getObjectType();
    v19 = sub_222B026E8();
    v21 = v20;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v22 = sub_222B02408() + 32;

      __swift_instantiateConcreteTypeFromMangledNameV2(a6, a7);
      v23 = (v21 | v19);
      if (v21 | v19)
      {
        v27[0] = 0;
        v27[1] = 0;
        v23 = v27;
        v27[2] = v19;
        v27[3] = v21;
      }

      v26[1] = 7;
      v26[2] = v23;
      v26[3] = v22;
      v24 = swift_task_create();

      sub_222A34F20(a3, &qword_27D01D720, &qword_222B07760);

      return v24;
    }
  }

  else
  {
    v19 = 0;
    v21 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_222A34F20(a3, &qword_27D01D720, &qword_222B07760);
  __swift_instantiateConcreteTypeFromMangledNameV2(a6, a7);
  if (v21 | v19)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v19;
    v27[7] = v21;
  }

  return swift_task_create();
}

id sub_222A5A67C@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = v2;
  v43 = a2;
  v44 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D720, &qword_222B07760);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v39 - v5;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01CE10, &qword_222B05118);
  v7 = *(v42 - 8);
  v41 = *(v7 + 64);
  v8 = MEMORY[0x28223BE20](v42);
  v40 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v39 - v10;
  v39 = sub_222B01848();
  v12 = *(v39 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v39);
  v15 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v39 - v16;
  sub_222B01838();
  v18 = sub_222B02768();
  (*(*(v18 - 8) + 56))(v6, 1, 1, v18);
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = v3;

  v20 = sub_222A5A3CC(0, 0, v6, &unk_222B07ED0, v19, &qword_27D01D500, &unk_222B07DE8);
  v21 = swift_allocObject();
  *(v21 + 16) = sub_222A5F25C;
  *(v21 + 24) = v20;
  v45 = sub_222A5F26C;
  v46 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01CE18, &unk_222B07EE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01CE20, &qword_222B05130);
  sub_222A352E8(qword_280CB7118, &qword_27D01CE18, &unk_222B07EE0, &protocol conformance descriptor for AnyAsyncSequence<A>);
  sub_222B02DA8();
  v22 = *(v12 + 32);
  v23 = v17;
  v24 = v39;
  v22(v15, v23, v39);
  v25 = (*(v12 + 80) + 24) & ~*(v12 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = v44;
  v22((v26 + v25), v15, v24);
  v27 = swift_allocObject();
  *(v27 + 16) = sub_222A5ED40;
  *(v27 + 24) = v26;
  v28 = *(v7 + 32);
  v29 = v40;
  v30 = v42;
  v28(v40, v11, v42);
  v31 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v32 = (v41 + v31 + 7) & 0xFFFFFFFFFFFFFFF8;
  v33 = swift_allocObject();
  v28((v33 + v31), v29, v30);
  v34 = (v33 + v32);
  *v34 = sub_222A5EDCC;
  v34[1] = v27;
  v35 = swift_allocObject();
  *(v35 + 16) = sub_222A34BAC;
  *(v35 + 24) = v33;
  v36 = v43;
  *v43 = sub_222A34BD4;
  v36[1] = v35;
  v37 = v44;

  return v37;
}

void *sub_222A5AB3C(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_222B01848();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a2;
  v15 = *(a4 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics14StreamBookmark_name);
  v14 = *(a4 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics14StreamBookmark_name + 8);
  (*(v10 + 16))(v12, a5, v9);

  sub_222B017C8();
  v17 = v16;
  v18 = type metadata accessor for StreamBookmark();
  v19 = objc_allocWithZone(v18);
  v20 = &v19[OBJC_IVAR____TtC28SiriPrivateLearningAnalytics14StreamBookmark_name];
  *v20 = v15;
  *(v20 + 1) = v14;
  *&v19[OBJC_IVAR____TtC28SiriPrivateLearningAnalytics14StreamBookmark_bookmark] = 0;
  v21 = &v19[OBJC_IVAR____TtC28SiriPrivateLearningAnalytics14StreamBookmark_timeIntervalSinceReferenceDate];
  *v21 = v17;
  v21[8] = 0;
  v24.receiver = v19;
  v24.super_class = v18;
  v22 = objc_msgSendSuper2(&v24, sel_init);
  (*(v10 + 8))(v12, v9);
  *a1 = v13;

  return v22;
}

uint64_t sub_222A5ACDC(uint64_t a1)
{
  v1[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D458, &unk_222B07E00);
  v1[3] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D700, &qword_222B07320);
  v1[4] = swift_task_alloc();
  v1[5] = swift_task_alloc();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D510, &qword_222B07E10);
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D518, &qword_222B07E18);
  v1[9] = v3;
  v1[10] = *(v3 - 8);
  v1[11] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D520, &qword_222B07E20);
  v1[12] = v4;
  v1[13] = *(v4 - 8);
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_222A5AF00, 0, 0);
}

uint64_t sub_222A5AF00()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = sub_222B01848();
  v4 = *(v3 - 8);
  (*(v4 + 56))(v1, 1, 1, v3);
  v5 = sub_222A5B7A0();
  v0[16] = v5;
  sub_222A34E48(v1, v2, &qword_27D01D700, &qword_222B07320);
  v6 = (*(v4 + 48))(v2, 1, v3);
  v7 = v0[4];
  if (v6 == 1)
  {
    sub_222A34F20(v0[4], &qword_27D01D700, &qword_222B07320);
    v8 = 0;
  }

  else
  {
    sub_222B017C8();
    v10 = v9;
    (*(v4 + 8))(v7, v3);
    v8 = v10;
  }

  v11 = v6 == 1;
  v12 = v0[3];
  sub_222B01FA8();
  v13 = sub_222B01748();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  v14 = swift_task_alloc();
  v0[17] = v14;
  *v14 = v0;
  v14[1] = sub_222A5B150;
  v15 = v0[8];

  return MEMORY[0x2821377B0](v15, v5, 0, 1, v8, v11, 0, 1);
}

uint64_t sub_222A5B150()
{
  v2 = *v1;
  v2[18] = v0;

  v3 = v2[16];
  if (v0)
  {
    sub_222A34F20(v2[3], &qword_27D01D458, &unk_222B07E00);

    v4 = sub_222A5F268;
  }

  else
  {
    v5 = v2[5];
    v6 = v2[3];

    sub_222A34F20(v6, &qword_27D01D458, &unk_222B07E00);
    sub_222A34F20(v5, &qword_27D01D700, &qword_222B07320);
    v4 = sub_222A5B2D8;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_222A5B2D8(uint64_t a1)
{
  v2 = v1[15];
  v4 = v1[12];
  v3 = v1[13];
  v5 = v1[10];
  v6 = v1[11];
  v7 = v1[8];
  v8 = v1[9];
  v9 = v1[6];
  v10 = v1[7];
  v13 = v1[14];
  swift_getOpaqueTypeConformance2();
  sub_222B01F78();
  (*(v10 + 8))(v7, v9);
  sub_222A352E8(&qword_27D01D528, &qword_27D01D518, &qword_222B07E18, MEMORY[0x277CF1760]);
  sub_222B01998();
  (*(v5 + 8))(v6, v8);
  (*(v3 + 16))(v13, v2, v4);
  sub_222A352E8(&qword_27D01D530, &qword_27D01D520, &qword_222B07E20, MEMORY[0x277CE4878]);
  sub_222B02DA8();
  (*(v3 + 8))(v2, v4);

  v11 = v1[1];

  return v11();
}

uint64_t sub_222A5B4F4(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_222A5B518, 0, 0);
}

uint64_t sub_222A5B518()
{
  sub_222A5B578(*(v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_222A5B578@<X0>(void *a1@<X8>)
{
  v2 = sub_222B01FF8();
  v3 = v2;
  if (v2 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_222B02DC8())
  {
    v14 = MEMORY[0x277D84F90];
    result = sub_222B02D38();
    if (i < 0)
    {
      __break(1u);
      return result;
    }

    v6 = 0;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x223DC6F00](v6, v3);
        goto LABEL_6;
      }

      if ((v6 & 0x8000000000000000) != 0)
      {
        break;
      }

      if (v6 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v7 = *(v3 + 8 * v6 + 32);
LABEL_6:
      v8 = v7;
      ++v6;
      sub_222A5A040(v7);

      sub_222B02D18();
      sub_222B02D48();
      sub_222B02D58();
      sub_222B02D28();
      if (i == v6)
      {

        v9 = v14;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }

  v9 = MEMORY[0x277D84F90];
LABEL_16:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D538, &unk_222B07E30);
  v10 = swift_allocObject();
  v10[6] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01DCE0, &qword_222B0D8D0);
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  if (v9 >> 62)
  {
    v12 = sub_222B02DC8();
  }

  else
  {
    v12 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v13 = sub_222A352E8(&qword_280CB4AB0, &unk_27D01DCE0, &qword_222B0D8D0, MEMORY[0x277D84F38]);
  result = swift_allocObject();
  *(result + 16) = v12;
  v10[2] = v11;
  v10[3] = v13;
  v10[4] = result;
  v10[5] = v13;
  *a1 = v10;
  return result;
}

uint64_t sub_222A5B7A0()
{
  sub_222B01FE8();
  sub_222A250BC(0, &qword_280CB4B80, 0x277D5A800);
  v0 = sub_222B01FD8();
  sub_222A250BC(0, &qword_27D01D540, 0x277D5A9D0);
  v1 = sub_222B01FD8();
  v2 = MEMORY[0x223DC6210](v0, v1);

  sub_222A250BC(0, &unk_280CB4B18, 0x277D57500);
  v3 = sub_222B01FD8();
  v4 = MEMORY[0x223DC6210](v2, v3);

  sub_222A250BC(0, &unk_280CB4B30, 0x277D590F0);
  v5 = sub_222B01FD8();
  v6 = MEMORY[0x223DC6210](v4, v5);

  sub_222A250BC(0, &qword_280CB4B00, 0x277D59610);
  v7 = sub_222B01FD8();
  v8 = MEMORY[0x223DC6210](v6, v7);

  sub_222A250BC(0, &unk_280CB4B48, 0x277D56858);
  v9 = sub_222B01FD8();
  v10 = MEMORY[0x223DC6210](v8, v9);

  sub_222A250BC(0, &qword_27D01D548, 0x277D58180);
  v11 = sub_222B01FD8();
  v12 = MEMORY[0x223DC6210](v10, v11);

  sub_222A250BC(0, &qword_280CB4AF8, 0x277D59C50);
  v13 = sub_222B01FD8();
  v14 = MEMORY[0x223DC6210](v12, v13);

  sub_222A250BC(0, &qword_27D01D550, 0x277D57038);
  v15 = sub_222B01FD8();
  v16 = MEMORY[0x223DC6210](v14, v15);

  return v16;
}

uint64_t sub_222A5B9E8@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D720, &qword_222B07760);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v12 - v4;
  v6 = *v1;
  v7 = sub_222B02768();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v6;

  v9 = sub_222A5A3CC(0, 0, v5, &unk_222B07E48, v8, &qword_27D01D568, &qword_222B07E88);
  v10 = swift_allocObject();
  *(v10 + 16) = sub_222A5EA60;
  *(v10 + 24) = v9;
  result = swift_allocObject();
  *(result + 16) = sub_222A5EA68;
  *(result + 24) = v10;
  *a1 = sub_222A5EA88;
  a1[1] = result;
  return result;
}

uint64_t sub_222A5BB70@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D720, &qword_222B07760);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v12 - v4;
  v6 = *v1;
  v7 = sub_222B02768();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v6;

  v9 = sub_222A5A3CC(0, 0, v5, &unk_222B07DB8, v8, &qword_27D01D500, &unk_222B07DE8);
  v10 = swift_allocObject();
  *(v10 + 16) = sub_222A5C24C;
  *(v10 + 24) = v9;
  result = swift_allocObject();
  *(result + 16) = sub_222A5E728;
  *(result + 24) = v10;
  *a1 = sub_222A5E748;
  a1[1] = result;
  return result;
}

uint64_t sub_222A5BCF8@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D720, &qword_222B07760);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v12 - v4;
  v6 = *v1;
  v7 = sub_222B02768();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v6;

  v9 = sub_222A5A3CC(0, 0, v5, &unk_222B07EC0, v8, &qword_27D01D568, &qword_222B07E88);
  v10 = swift_allocObject();
  *(v10 + 16) = sub_222A5F260;
  *(v10 + 24) = v9;
  result = swift_allocObject();
  *(result + 16) = sub_222A5F270;
  *(result + 24) = v10;
  *a1 = sub_222A5F258;
  a1[1] = result;
  return result;
}

uint64_t sub_222A5BEA4@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D720, &qword_222B07760);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v12 - v4;
  v6 = *v1;
  v7 = sub_222B02768();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v6;

  v9 = sub_222A5A3CC(0, 0, v5, &unk_222B07EB8, v8, &qword_27D01D500, &unk_222B07DE8);
  v10 = swift_allocObject();
  *(v10 + 16) = sub_222A5F25C;
  *(v10 + 24) = v9;
  result = swift_allocObject();
  *(result + 16) = sub_222A5F26C;
  *(result + 24) = v10;
  *a1 = sub_222A5F254;
  a1[1] = result;
  return result;
}

uint64_t sub_222A5C050(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_222A35344;

  return sub_222A5ACDC(a1);
}

void *sub_222A5C104(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  v4 = swift_allocObject();
  v4[2] = v3;
  v4[3] = a1;
  v4[4] = v2;

  return &unk_222B07E68;
}

void *sub_222A5C1A8(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  v4 = swift_allocObject();
  v4[2] = v3;
  v4[3] = a1;
  v4[4] = v2;

  return &unk_222B07DD0;
}

uint64_t sub_222A5C254(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[17] = a2;
  v3[18] = a3;
  v3[16] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D558, &qword_222B07E78);
  v3[19] = v4;
  v3[20] = *(v4 - 8);
  v3[21] = swift_task_alloc();
  v3[22] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D560, &qword_222B07E80);
  v3[23] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D568, &qword_222B07E88);
  v3[24] = v5;
  v3[25] = *(v5 - 8);
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();
  v3[29] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_222A5C3EC, 0, 0);
}

uint64_t sub_222A5C3EC()
{
  v1 = v0[16];
  swift_beginAccess();
  if (*(v1 + 16))
  {
    v2 = v0[18];
    swift_beginAccess();
    v3 = *(v2 + 16);
    if (v3)
    {
      v14 = (v3 + *v3);
      v4 = swift_task_alloc();
      v0[32] = v4;
      *v4 = v0;
      v4[1] = sub_222A5CB5C;

      return v14(v0 + 15);
    }

    else
    {
      swift_endAccess();

      v13 = v0[1];

      return v13(0);
    }
  }

  else
  {
    v6 = v0[16];
    swift_beginAccess();
    *(v6 + 16) = 1;
    v7 = swift_task_alloc();
    v0[30] = v7;
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01D120, qword_222B06760);
    v0[31] = v8;
    *v7 = v0;
    v7[1] = sub_222A5C684;
    v9 = v0[23];
    v10 = v0[24];
    v11 = v0[17];
    v12 = MEMORY[0x277D84950];

    return MEMORY[0x282200440](v9, v11, v10, v8, v12);
  }
}

uint64_t sub_222A5C684()
{

  return MEMORY[0x2822009F8](sub_222A5C780, 0, 0);
}

uint64_t sub_222A5C780()
{
  v1 = v0[23];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v0[14] = *v1;
    swift_willThrowTypedImpl();

    v2 = v0[1];

    return v2();
  }

  else
  {
    v4 = v0[28];
    v5 = v0[29];
    v6 = v0[27];
    v8 = v0[24];
    v7 = v0[25];
    v20 = v0[26];
    v21 = v0[21];
    v22 = v0[19];
    v23 = v0[20];
    v24 = v0[18];
    v9 = v7[4];
    v9(v5, v1, v8);
    v10 = v7[2];
    v10(v4, v5, v8);
    v9(v6, v4, v8);
    v10(v20, v6, v8);
    sub_222A352E8(&qword_27D01D570, &qword_27D01D568, &qword_222B07E88, MEMORY[0x277D85990]);
    sub_222B02798();
    v11 = swift_allocBox();
    (*(v23 + 32))(v12, v21, v22);
    v13 = v7[1];
    v13(v6, v8);
    v13(v5, v8);
    swift_beginAccess();
    v14 = *(v24 + 16);
    v15 = *(v24 + 24);
    *(v24 + 16) = &unk_222B07E98;
    *(v24 + 24) = v11;
    sub_222A1F4CC(v14, v15);
    v16 = v0[18];
    swift_beginAccess();
    v17 = *(v16 + 16);
    if (v17)
    {
      v25 = (v17 + *v17);
      v18 = swift_task_alloc();
      v0[32] = v18;
      *v18 = v0;
      v18[1] = sub_222A5CB5C;

      return v25(v0 + 15);
    }

    else
    {
      swift_endAccess();

      v19 = v0[1];

      return v19(0);
    }
  }
}

uint64_t sub_222A5CB5C()
{
  *(*v1 + 264) = v0;

  if (v0)
  {
    v2 = sub_222A5CD34;
  }

  else
  {
    v2 = sub_222A5CC70;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_222A5CC70()
{
  v1 = *(v0 + 120);
  swift_endAccess();

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_222A5CD34()
{
  swift_endAccess();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_222A5CDE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[17] = a3;
  v4[18] = a4;
  v4[15] = a1;
  v4[16] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01CDE8, &qword_222B050B0);
  v4[19] = v5;
  v4[20] = *(v5 - 8);
  v4[21] = swift_task_alloc();
  v4[22] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D4F8, &qword_222B07DE0);
  v4[23] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D500, &unk_222B07DE8);
  v4[24] = v6;
  v4[25] = *(v6 - 8);
  v4[26] = swift_task_alloc();
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_222A5CF7C, 0, 0);
}

uint64_t sub_222A5CF7C()
{
  v1 = v0[16];
  swift_beginAccess();
  if (*(v1 + 16))
  {
    v2 = v0[18];
    swift_beginAccess();
    v3 = *(v2 + 16);
    if (v3)
    {
      v16 = (v3 + *v3);
      v4 = swift_task_alloc();
      v0[32] = v4;
      *v4 = v0;
      v4[1] = sub_222A5D6AC;
      v5 = v0[15];

      return v16(v5);
    }

    else
    {
      v14 = v0[15];
      swift_endAccess();
      *v14 = 0;

      v15 = v0[1];

      return v15();
    }
  }

  else
  {
    v7 = v0[16];
    swift_beginAccess();
    *(v7 + 16) = 1;
    v8 = swift_task_alloc();
    v0[30] = v8;
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01D120, qword_222B06760);
    v0[31] = v9;
    *v8 = v0;
    v8[1] = sub_222A5D208;
    v10 = v0[23];
    v11 = v0[24];
    v12 = v0[17];
    v13 = MEMORY[0x277D84950];

    return MEMORY[0x282200440](v10, v12, v11, v9, v13);
  }
}

uint64_t sub_222A5D208()
{

  return MEMORY[0x2822009F8](sub_222A5D304, 0, 0);
}

uint64_t sub_222A5D304()
{
  v1 = v0[23];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v0[14] = *v1;
    swift_willThrowTypedImpl();

    v2 = v0[1];
LABEL_8:

    return v2();
  }

  v3 = v0[28];
  v4 = v0[29];
  v5 = v0[27];
  v7 = v0[24];
  v6 = v0[25];
  v21 = v0[26];
  v22 = v0[21];
  v23 = v0[19];
  v24 = v0[20];
  v25 = v0[18];
  v8 = v6[4];
  v8(v4, v1, v7);
  v9 = v6[2];
  v9(v3, v4, v7);
  v8(v5, v3, v7);
  v9(v21, v5, v7);
  sub_222A352E8(&qword_27D01D508, &qword_27D01D500, &unk_222B07DE8, MEMORY[0x277D85990]);
  sub_222B02798();
  v10 = swift_allocBox();
  (*(v24 + 32))(v11, v22, v23);
  v12 = v6[1];
  v12(v5, v7);
  v12(v4, v7);
  swift_beginAccess();
  v13 = *(v25 + 16);
  v14 = *(v25 + 24);
  *(v25 + 16) = &unk_222B07DF8;
  *(v25 + 24) = v10;
  sub_222A1F4CC(v13, v14);
  v15 = v0[18];
  swift_beginAccess();
  v16 = *(v15 + 16);
  if (!v16)
  {
    v20 = v0[15];
    swift_endAccess();
    *v20 = 0;

    v2 = v0[1];
    goto LABEL_8;
  }

  v26 = (v16 + *v16);
  v17 = swift_task_alloc();
  v0[32] = v17;
  *v17 = v0;
  v17[1] = sub_222A5D6AC;
  v18 = v0[15];

  return v26(v18);
}

uint64_t sub_222A5D6AC()
{
  *(*v1 + 264) = v0;

  if (v0)
  {
    v2 = sub_222A5CD34;
  }

  else
  {
    v2 = sub_222A5D7C0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_222A5D7C0()
{
  swift_endAccess();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_222A5D870@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01CE10, &qword_222B05118);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v14 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D5A0, &qword_222B07EF8);
  v12 = swift_allocBox();
  (*(v9 + 16))(v11, a1, v8);
  sub_222A352E8(&qword_280CB4AC8, &qword_27D01CE10, &qword_222B05118, MEMORY[0x277D85990]);
  sub_222B02798();
  *(a4 + 40) = 0;
  *(a4 + 48) = 0;
  *a4 = &unk_222B07F08;
  *(a4 + 8) = v12;
  *(a4 + 16) = a2;
  *(a4 + 24) = a3;
  *(a4 + 32) = 1;
}

uint64_t sub_222A5D9EC(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D5A0, &qword_222B07EF8);
  v2[7] = swift_projectBox();

  return MEMORY[0x2822009F8](sub_222A5DA78, 0, 0);
}

uint64_t sub_222A5DA78()
{
  swift_beginAccess();
  v1 = sub_222A352E8(&qword_280CB4AE0, &qword_27D01D5A0, &qword_222B07EF8, MEMORY[0x277D85980]);
  v2 = swift_task_alloc();
  v0[8] = v2;
  *v2 = v0;
  v2[1] = sub_222A3229C;
  v3 = v0[6];
  v4 = v0[5];

  return MEMORY[0x282200308](v4, v3, v1);
}

__n128 sub_222A5DB60@<Q0>(void (**a1)(_OWORD *__return_ptr)@<X0>, void *a2@<X8>)
{
  (*a1)(v10);
  v3 = v11;
  v4 = v12;
  v5 = v13;
  v8 = v10[1];
  v9 = v10[0];
  v6 = swift_allocObject();
  result = v8;
  *(v6 + 16) = v9;
  *(v6 + 32) = v8;
  *(v6 + 48) = v3;
  *(v6 + 56) = v4;
  *(v6 + 64) = v5;
  *a2 = &unk_222B07F40;
  a2[1] = v6;
  return result;
}

uint64_t sub_222A5DBE8(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return MEMORY[0x2822009F8](sub_222A5DC08, 0, 0);
}

uint64_t sub_222A5DC08()
{
  swift_beginAccess();
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = sub_222A5DCC4;

  return sub_222A32870();
}

uint64_t sub_222A5DCC4(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *v3;
  *(*v3 + 64) = v2;

  if (v2)
  {

    return MEMORY[0x2822009F8](sub_222A320C4, 0, 0);
  }

  else
  {
    v8 = *(v6 + 40);
    swift_endAccess();
    *v8 = a1;
    v8[1] = a2;
    v9 = *(v7 + 8);

    return v9();
  }
}

uint64_t sub_222A5DE34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01CE58, &qword_222B05190);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v14 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D5A8, &qword_222B07F48);
  v12 = swift_allocBox();
  (*(v9 + 16))(v11, a1, v8);
  sub_222A352E8(&qword_280CB4AC0, &qword_27D01CE58, &qword_222B05190, MEMORY[0x277D85990]);
  sub_222B02798();
  *a4 = &unk_222B07F58;
  *(a4 + 8) = v12;
  *(a4 + 16) = a2;
  *(a4 + 24) = a3;
  *(a4 + 32) = 1;
  *(a4 + 40) = 0;
  *(a4 + 48) = 0;
}

uint64_t sub_222A5DFB0(uint64_t a1, uint64_t a2)
{
  v2[7] = a1;
  v2[8] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D5A8, &qword_222B07F48);
  v2[9] = swift_projectBox();

  return MEMORY[0x2822009F8](sub_222A5E03C, 0, 0);
}

uint64_t sub_222A5E03C()
{
  swift_beginAccess();
  v1 = sub_222A352E8(&qword_280CB4AD8, &qword_27D01D5A8, &qword_222B07F48, MEMORY[0x277D85980]);
  v2 = swift_task_alloc();
  *(v0 + 80) = v2;
  *v2 = v0;
  v2[1] = sub_222A5E124;
  v3 = *(v0 + 64);

  return MEMORY[0x282200308](v0 + 40, v3, v1);
}

uint64_t sub_222A5E124()
{
  v2 = *v1;
  *(v2 + 88) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_222A5E270, 0, 0);
  }

  else
  {
    v3 = *(v2 + 56);
    swift_endAccess();
    *v3 = *(v2 + 40);
    v4 = *(v2 + 8);

    return v4();
  }
}

uint64_t sub_222A5E270()
{
  swift_endAccess();
  v1 = *(v0 + 8);

  return v1();
}

double sub_222A5E2D4@<D0>(void (**a1)(_OWORD *__return_ptr)@<X0>, void *a2@<X8>)
{
  (*a1)(v9);
  v3 = v10;
  v4 = v11;
  v5 = v12;
  v6 = swift_allocObject();
  result = *v9;
  v8 = v9[1];
  *(v6 + 16) = v9[0];
  *(v6 + 32) = v8;
  *(v6 + 48) = v3;
  *(v6 + 56) = v4;
  *(v6 + 64) = v5;
  *a2 = &unk_222B07EF0;
  a2[1] = v6;
  return result;
}

uint64_t sub_222A5E354(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_222A33E10;

  return sub_222A5C254(a2, a3, a4);
}

uint64_t sub_222A5E404(uint64_t a1, uint64_t a2)
{
  v2[6] = a1;
  v2[7] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D558, &qword_222B07E78);
  v2[8] = swift_projectBox();

  return MEMORY[0x2822009F8](sub_222A5E490, 0, 0);
}

uint64_t sub_222A5E490()
{
  swift_beginAccess();
  v1 = sub_222A352E8(&qword_27D01D578, &qword_27D01D558, &qword_222B07E78, MEMORY[0x277D85980]);
  v2 = swift_task_alloc();
  *(v0 + 72) = v2;
  *v2 = v0;
  v2[1] = sub_222A5E578;
  v3 = *(v0 + 56);

  return MEMORY[0x282200308](v0 + 40, v3, v1);
}

uint64_t sub_222A5E578()
{
  v2 = *v1;
  v2[10] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_222A5E6C4, 0, 0);
  }

  else
  {
    v3 = v2[6];
    swift_endAccess();
    *v3 = v2[5];
    v4 = v2[1];

    return v4();
  }
}

uint64_t sub_222A5E6C4()
{
  swift_endAccess();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_222A5E750(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_222A35344;

  return sub_222A31E24(a1, v1);
}

uint64_t sub_222A5E7EC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_222A35344;

  return sub_222A5CDE4(a1, v4, v5, v6);
}

uint64_t sub_222A5E8A0(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_222A35344;

  return sub_222A32128(a1, v1);
}

uint64_t sub_222A5E93C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D700, &qword_222B07320);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_222A5E9AC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_222A35344;

  return sub_222A596C0(a1);
}

uint64_t sub_222A5EA90(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_222A35344;

  return sub_222A34238(a1, v1);
}