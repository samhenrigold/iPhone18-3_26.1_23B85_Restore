id LogBloodPressureIntent.init()()
{
  v3 = 0;
  v2.receiver = 0;
  v2.super_class = type metadata accessor for LogBloodPressureIntent();
  v1 = objc_msgSendSuper2(&v2, sel_init);
  MEMORY[0x277D82BE0](v1);
  v3 = v1;
  MEMORY[0x277D82BD8](v1);
  return v1;
}

id LogBloodPressureIntent.__allocating_init(coder:)(uint64_t a1)
{
  v4 = [objc_allocWithZone(v1) initWithCoder_];
  MEMORY[0x277D82BD8](a1);
  return v4;
}

id LogBloodPressureIntent.init(coder:)(uint64_t a1)
{
  v7 = 0;
  v6 = a1;
  v5.receiver = 0;
  v5.super_class = type metadata accessor for LogBloodPressureIntent();
  v4 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);
  if (v4)
  {
    MEMORY[0x277D82BE0](v4);
    v7 = v4;
    MEMORY[0x277D82BD8](a1);
    MEMORY[0x277D82BD8](v7);
    return v4;
  }

  else
  {
    MEMORY[0x277D82BD8](0);
    MEMORY[0x277D82BD8](a1);
    return 0;
  }
}

id LogBloodPressureIntent.__allocating_init(identifier:backingStore:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = objc_allocWithZone(v3);
  if (a2)
  {
    v6 = MEMORY[0x26D6492A0](a1);

    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v5 = [v11 initWithIdentifier_backingStore_];
  MEMORY[0x277D82BD8](a3);
  MEMORY[0x277D82BD8](v7);
  return v5;
}

id LogBloodPressureIntent.init(identifier:backingStore:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14 = 0;
  v12 = a1;
  v13 = a2;
  v11 = a3;

  if (a2)
  {
    v5 = MEMORY[0x26D6492A0](a1);

    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v10.receiver = 0;
  v10.super_class = type metadata accessor for LogBloodPressureIntent();
  v4 = objc_msgSendSuper2(&v10, sel_initWithIdentifier_backingStore_, v6, a3);
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BE0](v4);
  v14 = v4;
  MEMORY[0x277D82BD8](a3);

  MEMORY[0x277D82BD8](v14);
  return v4;
}

id LogBloodPressureIntent.__allocating_init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = objc_allocWithZone(v5);
  v16 = MEMORY[0x26D6492A0](a1, a2);
  v18 = MEMORY[0x26D6492A0](a3, a4);
  if (a5)
  {
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v6 = [v13 initWithDomain:v16 verb:v18 parametersByName:isa];
  }

  else
  {
    v6 = [v13 initWithDomain:v16 verb:v18 parametersByName:0];
  }

  v9 = v6;
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v18);

  MEMORY[0x277D82BD8](v16);

  return v9;
}

id LogBloodPressureIntent.init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v22 = 0;
  v20 = a1;
  v21 = a2;
  v18 = a3;
  v19 = a4;
  v17 = a5;

  v11 = MEMORY[0x26D6492A0](a1, a2);

  v14 = MEMORY[0x26D6492A0](a3, a4);

  if (a5)
  {
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v8 = isa;
  }

  else
  {
    v8 = 0;
  }

  v16.receiver = 0;
  v16.super_class = type metadata accessor for LogBloodPressureIntent();
  v6 = objc_msgSendSuper2(&v16, sel_initWithDomain_verb_parametersByName_, v11, v14, v8);
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v14);
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BE0](v6);
  v22 = v6;

  MEMORY[0x277D82BD8](v22);
  return v6;
}

id LogBloodPressureIntent.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LogBloodPressureIntent();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t LogBloodPressureIntentResponseCode.init(rawValue:)(uint64_t a1)
{
  switch(a1)
  {
    case 0:
      return 0;
    case 1:
      return 1;
    case 2:
      return 2;
    case 3:
      return 3;
    case 4:
      return 4;
    case 5:
      return 5;
    case 6:
      return 6;
    case 100:
      return 100;
    case 101:
      return 101;
    case 102:
      return 102;
    case 103:
      return 103;
    case 104:
      return 104;
  }

  return 0;
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance LogBloodPressureIntentResponseCode@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = LogBloodPressureIntentResponseCode.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v3 & 1;
  return result;
}

uint64_t LogBloodPressureIntentResponse.code.getter()
{
  v2 = (v0 + OBJC_IVAR___LogBloodPressureIntentResponse_code);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3;
}

uint64_t LogBloodPressureIntentResponse.code.setter(uint64_t a1)
{
  v3 = (v1 + OBJC_IVAR___LogBloodPressureIntentResponse_code);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

uint64_t key path getter for LogBloodPressureIntentResponse.code : LogBloodPressureIntentResponse@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  MEMORY[0x277D82BE0](*a1);
  *a2 = LogBloodPressureIntentResponse.code.getter();
  return MEMORY[0x277D82BD8](v3);
}

uint64_t key path setter for LogBloodPressureIntentResponse.code : LogBloodPressureIntentResponse(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v3 = *a2;
  MEMORY[0x277D82BE0](*a2);
  LogBloodPressureIntentResponse.code.setter(v4);
  return MEMORY[0x277D82BD8](v3);
}

char *LogBloodPressureIntentResponse.init(code:userActivity:)(uint64_t a1, uint64_t a2)
{
  v6 = [v7 init];
  MEMORY[0x277D82BE0](v6);
  v3 = &v6[OBJC_IVAR___LogBloodPressureIntentResponse_code];
  swift_beginAccess();
  *v3 = a1;
  swift_endAccess();
  MEMORY[0x277D82BE0](v6);
  [v6 setUserActivity_];
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](a2);
  MEMORY[0x277D82BD8](v6);
  return v6;
}

id LogBloodPressureIntentResponse.init()()
{
  v3 = 0;
  *OBJC_IVAR___LogBloodPressureIntentResponse_code = 0;
  v2.receiver = v3;
  v2.super_class = type metadata accessor for LogBloodPressureIntentResponse();
  v1 = objc_msgSendSuper2(&v2, sel_init);
  MEMORY[0x277D82BE0](v1);
  v3 = v1;
  MEMORY[0x277D82BD8](v1);
  return v1;
}

id LogBloodPressureIntentResponse.__allocating_init(coder:)(uint64_t a1)
{
  v4 = [objc_allocWithZone(v1) initWithCoder_];
  MEMORY[0x277D82BD8](a1);
  return v4;
}

id LogBloodPressureIntentResponse.init(coder:)(uint64_t a1)
{
  v7 = 0;
  v6 = a1;
  *OBJC_IVAR___LogBloodPressureIntentResponse_code = 0;
  v5.receiver = v7;
  v5.super_class = type metadata accessor for LogBloodPressureIntentResponse();
  v4 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);
  if (v4)
  {
    MEMORY[0x277D82BE0](v4);
    v7 = v4;
    MEMORY[0x277D82BD8](a1);
    MEMORY[0x277D82BD8](v7);
    return v4;
  }

  else
  {
    MEMORY[0x277D82BD8](0);
    MEMORY[0x277D82BD8](a1);
    return 0;
  }
}

id LogBloodPressureIntentResponse.__allocating_init(backingStore:)(uint64_t a1)
{
  v4 = [objc_allocWithZone(v1) initWithBackingStore_];
  MEMORY[0x277D82BD8](a1);
  return v4;
}

id LogBloodPressureIntentResponse.init(backingStore:)(uint64_t a1)
{
  v7 = 0;
  v6 = a1;
  *OBJC_IVAR___LogBloodPressureIntentResponse_code = 0;
  v5.receiver = v7;
  v5.super_class = type metadata accessor for LogBloodPressureIntentResponse();
  v4 = objc_msgSendSuper2(&v5, sel_initWithBackingStore_, a1);
  if (v4)
  {
    MEMORY[0x277D82BE0](v4);
    v7 = v4;
    MEMORY[0x277D82BD8](a1);
    MEMORY[0x277D82BD8](v7);
    return v4;
  }

  else
  {
    MEMORY[0x277D82BD8](0);
    MEMORY[0x277D82BD8](a1);
    return 0;
  }
}

id LogBloodPressureIntentResponse.__allocating_init(propertiesByName:)(uint64_t a1)
{
  v8 = objc_allocWithZone(v1);
  if (a1)
  {
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v2 = [v8 initWithPropertiesByName_];
  }

  else
  {
    v2 = [v8 initWithPropertiesByName_];
  }

  v5 = v2;
  MEMORY[0x277D82BD8](v4);
  return v5;
}

id LogBloodPressureIntentResponse.init(propertiesByName:)(uint64_t a1)
{
  v9 = 0;
  v8 = a1;
  *OBJC_IVAR___LogBloodPressureIntentResponse_code = 0;

  if (a1)
  {
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v5 = isa;
  }

  else
  {
    v5 = 0;
  }

  v7.receiver = v9;
  v7.super_class = type metadata accessor for LogBloodPressureIntentResponse();
  v3 = objc_msgSendSuper2(&v7, sel_initWithPropertiesByName_, v5);
  MEMORY[0x277D82BD8](v5);
  if (v3)
  {
    MEMORY[0x277D82BE0](v3);
    v9 = v3;

    MEMORY[0x277D82BD8](v9);
    return v3;
  }

  else
  {
    MEMORY[0x277D82BD8](0);

    return 0;
  }
}

id LogBloodPressureIntentResponse.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LogBloodPressureIntentResponse();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t lazy protocol witness table accessor for type LogBloodPressureIntentResponseCode and conformance LogBloodPressureIntentResponseCode()
{
  v2 = lazy protocol witness table cache variable for type LogBloodPressureIntentResponseCode and conformance LogBloodPressureIntentResponseCode;
  if (!lazy protocol witness table cache variable for type LogBloodPressureIntentResponseCode and conformance LogBloodPressureIntentResponseCode)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type LogBloodPressureIntentResponseCode and conformance LogBloodPressureIntentResponseCode);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type LogBloodPressureIntentResponseCode and conformance LogBloodPressureIntentResponseCode;
  if (!lazy protocol witness table cache variable for type LogBloodPressureIntentResponseCode and conformance LogBloodPressureIntentResponseCode)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type LogBloodPressureIntentResponseCode and conformance LogBloodPressureIntentResponseCode);
    return WitnessTable;
  }

  return v2;
}

id GetMenstruationPredictionIntent.init()()
{
  v3 = 0;
  v2.receiver = 0;
  v2.super_class = type metadata accessor for GetMenstruationPredictionIntent();
  v1 = objc_msgSendSuper2(&v2, sel_init);
  MEMORY[0x277D82BE0](v1);
  v3 = v1;
  MEMORY[0x277D82BD8](v1);
  return v1;
}

id GetMenstruationPredictionIntent.__allocating_init(coder:)(uint64_t a1)
{
  v4 = [objc_allocWithZone(v1) initWithCoder_];
  MEMORY[0x277D82BD8](a1);
  return v4;
}

id GetMenstruationPredictionIntent.init(coder:)(uint64_t a1)
{
  v7 = 0;
  v6 = a1;
  v5.receiver = 0;
  v5.super_class = type metadata accessor for GetMenstruationPredictionIntent();
  v4 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);
  if (v4)
  {
    MEMORY[0x277D82BE0](v4);
    v7 = v4;
    MEMORY[0x277D82BD8](a1);
    MEMORY[0x277D82BD8](v7);
    return v4;
  }

  else
  {
    MEMORY[0x277D82BD8](0);
    MEMORY[0x277D82BD8](a1);
    return 0;
  }
}

id GetMenstruationPredictionIntent.__allocating_init(identifier:backingStore:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = objc_allocWithZone(v3);
  if (a2)
  {
    v6 = MEMORY[0x26D6492A0](a1);

    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v5 = [v11 initWithIdentifier_backingStore_];
  MEMORY[0x277D82BD8](a3);
  MEMORY[0x277D82BD8](v7);
  return v5;
}

id GetMenstruationPredictionIntent.init(identifier:backingStore:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14 = 0;
  v12 = a1;
  v13 = a2;
  v11 = a3;

  if (a2)
  {
    v5 = MEMORY[0x26D6492A0](a1);

    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v10.receiver = 0;
  v10.super_class = type metadata accessor for GetMenstruationPredictionIntent();
  v4 = objc_msgSendSuper2(&v10, sel_initWithIdentifier_backingStore_, v6, a3);
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BE0](v4);
  v14 = v4;
  MEMORY[0x277D82BD8](a3);

  MEMORY[0x277D82BD8](v14);
  return v4;
}

id GetMenstruationPredictionIntent.__allocating_init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = objc_allocWithZone(v5);
  v16 = MEMORY[0x26D6492A0](a1, a2);
  v18 = MEMORY[0x26D6492A0](a3, a4);
  if (a5)
  {
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v6 = [v13 initWithDomain:v16 verb:v18 parametersByName:isa];
  }

  else
  {
    v6 = [v13 initWithDomain:v16 verb:v18 parametersByName:0];
  }

  v9 = v6;
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v18);

  MEMORY[0x277D82BD8](v16);

  return v9;
}

id GetMenstruationPredictionIntent.init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v22 = 0;
  v20 = a1;
  v21 = a2;
  v18 = a3;
  v19 = a4;
  v17 = a5;

  v11 = MEMORY[0x26D6492A0](a1, a2);

  v14 = MEMORY[0x26D6492A0](a3, a4);

  if (a5)
  {
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v8 = isa;
  }

  else
  {
    v8 = 0;
  }

  v16.receiver = 0;
  v16.super_class = type metadata accessor for GetMenstruationPredictionIntent();
  v6 = objc_msgSendSuper2(&v16, sel_initWithDomain_verb_parametersByName_, v11, v14, v8);
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v14);
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BE0](v6);
  v22 = v6;

  MEMORY[0x277D82BD8](v22);
  return v6;
}

id GetMenstruationPredictionIntent.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GetMenstruationPredictionIntent();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t GetMenstruationPredictionIntentResponseCode.init(rawValue:)(uint64_t a1)
{
  switch(a1)
  {
    case 0:
      return 0;
    case 1:
      return 1;
    case 2:
      return 2;
    case 3:
      return 3;
    case 4:
      return 4;
    case 5:
      return 5;
    case 6:
      return 6;
    case 100:
      return 100;
    case 101:
      return 101;
    case 102:
      return 102;
    case 103:
      return 103;
  }

  return 0;
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance GetMenstruationPredictionIntentResponseCode@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = GetMenstruationPredictionIntentResponseCode.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v3 & 1;
  return result;
}

uint64_t GetMenstruationPredictionIntentResponse.code.getter()
{
  v2 = (v0 + OBJC_IVAR___GetMenstruationPredictionIntentResponse_code);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3;
}

uint64_t GetMenstruationPredictionIntentResponse.code.setter(uint64_t a1)
{
  v3 = (v1 + OBJC_IVAR___GetMenstruationPredictionIntentResponse_code);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

uint64_t key path getter for GetMenstruationPredictionIntentResponse.code : GetMenstruationPredictionIntentResponse@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  MEMORY[0x277D82BE0](*a1);
  *a2 = GetMenstruationPredictionIntentResponse.code.getter();
  return MEMORY[0x277D82BD8](v3);
}

uint64_t key path setter for GetMenstruationPredictionIntentResponse.code : GetMenstruationPredictionIntentResponse(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v3 = *a2;
  MEMORY[0x277D82BE0](*a2);
  GetMenstruationPredictionIntentResponse.code.setter(v4);
  return MEMORY[0x277D82BD8](v3);
}

char *GetMenstruationPredictionIntentResponse.init(code:userActivity:)(uint64_t a1, uint64_t a2)
{
  v6 = [v7 init];
  MEMORY[0x277D82BE0](v6);
  v3 = &v6[OBJC_IVAR___GetMenstruationPredictionIntentResponse_code];
  swift_beginAccess();
  *v3 = a1;
  swift_endAccess();
  MEMORY[0x277D82BE0](v6);
  [v6 setUserActivity_];
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](a2);
  MEMORY[0x277D82BD8](v6);
  return v6;
}

id GetMenstruationPredictionIntentResponse.init()()
{
  v3 = 0;
  *OBJC_IVAR___GetMenstruationPredictionIntentResponse_code = 0;
  v2.receiver = v3;
  v2.super_class = type metadata accessor for GetMenstruationPredictionIntentResponse();
  v1 = objc_msgSendSuper2(&v2, sel_init);
  MEMORY[0x277D82BE0](v1);
  v3 = v1;
  MEMORY[0x277D82BD8](v1);
  return v1;
}

id GetMenstruationPredictionIntentResponse.__allocating_init(coder:)(uint64_t a1)
{
  v4 = [objc_allocWithZone(v1) initWithCoder_];
  MEMORY[0x277D82BD8](a1);
  return v4;
}

id GetMenstruationPredictionIntentResponse.init(coder:)(uint64_t a1)
{
  v7 = 0;
  v6 = a1;
  *OBJC_IVAR___GetMenstruationPredictionIntentResponse_code = 0;
  v5.receiver = v7;
  v5.super_class = type metadata accessor for GetMenstruationPredictionIntentResponse();
  v4 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);
  if (v4)
  {
    MEMORY[0x277D82BE0](v4);
    v7 = v4;
    MEMORY[0x277D82BD8](a1);
    MEMORY[0x277D82BD8](v7);
    return v4;
  }

  else
  {
    MEMORY[0x277D82BD8](0);
    MEMORY[0x277D82BD8](a1);
    return 0;
  }
}

id GetMenstruationPredictionIntentResponse.__allocating_init(backingStore:)(uint64_t a1)
{
  v4 = [objc_allocWithZone(v1) initWithBackingStore_];
  MEMORY[0x277D82BD8](a1);
  return v4;
}

id GetMenstruationPredictionIntentResponse.init(backingStore:)(uint64_t a1)
{
  v7 = 0;
  v6 = a1;
  *OBJC_IVAR___GetMenstruationPredictionIntentResponse_code = 0;
  v5.receiver = v7;
  v5.super_class = type metadata accessor for GetMenstruationPredictionIntentResponse();
  v4 = objc_msgSendSuper2(&v5, sel_initWithBackingStore_, a1);
  if (v4)
  {
    MEMORY[0x277D82BE0](v4);
    v7 = v4;
    MEMORY[0x277D82BD8](a1);
    MEMORY[0x277D82BD8](v7);
    return v4;
  }

  else
  {
    MEMORY[0x277D82BD8](0);
    MEMORY[0x277D82BD8](a1);
    return 0;
  }
}

id GetMenstruationPredictionIntentResponse.__allocating_init(propertiesByName:)(uint64_t a1)
{
  v8 = objc_allocWithZone(v1);
  if (a1)
  {
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v2 = [v8 initWithPropertiesByName_];
  }

  else
  {
    v2 = [v8 initWithPropertiesByName_];
  }

  v5 = v2;
  MEMORY[0x277D82BD8](v4);
  return v5;
}

id GetMenstruationPredictionIntentResponse.init(propertiesByName:)(uint64_t a1)
{
  v9 = 0;
  v8 = a1;
  *OBJC_IVAR___GetMenstruationPredictionIntentResponse_code = 0;

  if (a1)
  {
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v5 = isa;
  }

  else
  {
    v5 = 0;
  }

  v7.receiver = v9;
  v7.super_class = type metadata accessor for GetMenstruationPredictionIntentResponse();
  v3 = objc_msgSendSuper2(&v7, sel_initWithPropertiesByName_, v5);
  MEMORY[0x277D82BD8](v5);
  if (v3)
  {
    MEMORY[0x277D82BE0](v3);
    v9 = v3;

    MEMORY[0x277D82BD8](v9);
    return v3;
  }

  else
  {
    MEMORY[0x277D82BD8](0);

    return 0;
  }
}

id GetMenstruationPredictionIntentResponse.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GetMenstruationPredictionIntentResponse();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t lazy protocol witness table accessor for type GetMenstruationPredictionIntentResponseCode and conformance GetMenstruationPredictionIntentResponseCode()
{
  v2 = lazy protocol witness table cache variable for type GetMenstruationPredictionIntentResponseCode and conformance GetMenstruationPredictionIntentResponseCode;
  if (!lazy protocol witness table cache variable for type GetMenstruationPredictionIntentResponseCode and conformance GetMenstruationPredictionIntentResponseCode)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type GetMenstruationPredictionIntentResponseCode and conformance GetMenstruationPredictionIntentResponseCode);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type GetMenstruationPredictionIntentResponseCode and conformance GetMenstruationPredictionIntentResponseCode;
  if (!lazy protocol witness table cache variable for type GetMenstruationPredictionIntentResponseCode and conformance GetMenstruationPredictionIntentResponseCode)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type GetMenstruationPredictionIntentResponseCode and conformance GetMenstruationPredictionIntentResponseCode);
    return WitnessTable;
  }

  return v2;
}

void *static HealthKitCorrelationProvider<A>.bloodPressure(store:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  MEMORY[0x277D82BE0](a1);
  v6 = *MEMORY[0x277CCBBA8];
  MEMORY[0x277D82BE0](*MEMORY[0x277CCBBA8]);
  v4 = *MEMORY[0x277CCC980];
  MEMORY[0x277D82BE0](*MEMORY[0x277CCC980]);
  v5 = *MEMORY[0x277CCC978];
  MEMORY[0x277D82BE0](*MEMORY[0x277CCC978]);
  BloodPressureIntentResponse = type metadata accessor for GetBloodPressureIntentResponse();
  HealthKitCorrelationProvider.init(store:identifier:firstQuantityIdentifier:secondQuantityIdentifier:failure:mapIntent:)(a1, v6, v4, v5, implicit closure #1 in static HealthKitCorrelationProvider<A>.bloodPressure(store:), 0, closure #1 in static HealthKitCorrelationProvider<A>.bloodPressure(store:), 0, v9, BloodPressureIntentResponse);
  return memcpy(a2, v9, 0x40uLL);
}

uint64_t HealthKitCorrelationProvider.firstQuantityType.getter()
{
  v2 = *(v0 + 16);
  MEMORY[0x277D82BE0](v2);
  return v2;
}

uint64_t HealthKitCorrelationProvider.secondQuantityType.getter()
{
  v2 = *(v0 + 24);
  MEMORY[0x277D82BE0](v2);
  return v2;
}

uint64_t HealthKitCorrelationProvider.mapIntent.getter()
{
  v2 = *(v0 + 48);

  return v2;
}

void *HealthKitCorrelationProvider.init(store:identifier:firstQuantityIdentifier:secondQuantityIdentifier:failure:mapIntent:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10)
{
  memset(__b, 0, sizeof(__b));
  v24[8] = a10;
  MEMORY[0x277D82BE0](a1);
  MEMORY[0x277D82BE0](a1);
  __b[0] = a1;
  type metadata accessor for HKCorrelationType();
  MEMORY[0x277D82BE0](a2);
  v12 = MEMORY[0x26D649720](a2);
  MEMORY[0x277D82BE0](v12);
  __b[1] = v12;
  type metadata accessor for HKQuantityType();
  MEMORY[0x277D82BE0](a3);
  v13 = MEMORY[0x26D649710](a3);
  MEMORY[0x277D82BE0](v13);
  __b[2] = v13;
  MEMORY[0x277D82BE0](a4);
  v14 = MEMORY[0x26D649710](a4);
  MEMORY[0x277D82BE0](v14);
  __b[3] = v14;

  __b[4] = a5;
  __b[5] = a6;

  __b[6] = a7;
  __b[7] = a8;
  v24[0] = a1;
  v24[1] = v12;
  v24[2] = v13;
  v24[3] = v14;
  v24[4] = a5;
  v24[5] = a6;
  v24[6] = a7;
  v24[7] = a8;

  MEMORY[0x277D82BD8](a4);
  MEMORY[0x277D82BD8](a3);
  MEMORY[0x277D82BD8](a2);
  MEMORY[0x277D82BD8](a1);
  outlined destroy of HealthKitCorrelationProvider<A>(__b);
  return memcpy(a9, v24, 0x40uLL);
}

uint64_t HealthKitCorrelationProvider.query(start:end:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[8] = v4;
  v5[7] = a1;
  v5[2] = v5;
  v5[3] = 0;
  v5[4] = 0;
  v5[5] = 0;
  v5[6] = 0;
  v6 = *(a4 + 16);
  v5[9] = v6;
  v5[10] = *(v6 - 8);
  v5[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriWellnessIntents10StatisticsVySd5first_Sd6secondtGSgMd, &_s19SiriWellnessIntents10StatisticsVySd5first_Sd6secondtGSgMR);
  v17 = swift_task_alloc();
  v5[12] = v17;
  v5[3] = a2;
  v5[4] = a3;
  v5[5] = v4;
  v7 = *v4;
  v5[13] = v7;
  MEMORY[0x277D82BE0](v7);
  v12 = v10[1];
  v5[14] = v12;
  MEMORY[0x277D82BE0](v12);
  v13 = v10[2];
  v5[15] = v13;
  MEMORY[0x277D82BE0](v13);
  v14 = v10[3];
  v5[16] = v14;
  MEMORY[0x277D82BE0](v14);
  v8 = swift_task_alloc();
  *(v11 + 136) = v8;
  *v8 = *(v11 + 16);
  v8[1] = HealthKitCorrelationProvider.query(start:end:);

  return HKHealthStore.query(correlationType:firstQuantityType:secondQuantityType:start:end:)(v17, v12, v13, v14, a2, a3);
}

uint64_t HealthKitCorrelationProvider.query(start:end:)()
{
  v7 = *v1;
  *(v7 + 16) = *v1;
  *(v7 + 144) = v0;

  if (v0)
  {
    v2 = HealthKitCorrelationProvider.query(start:end:);
  }

  else
  {
    v4 = *(v7 + 120);
    v5 = *(v7 + 112);
    v6 = *(v7 + 104);

    v2 = HealthKitCorrelationProvider.query(start:end:);
  }

  return MEMORY[0x2822009F8](v2, 0);
}

{
  v9 = v0[12];
  v8 = v0[11];
  v6 = v0[10];
  v7 = v0[9];
  v1 = v0[8];
  v5 = v0[7];
  v0[2] = v0;
  v4 = *(v1 + 48);

  v4(v9);

  (*(v6 + 16))(v5, v8, v7);
  (*(v6 + 8))(v8, v7);
  outlined destroy of Statistics<(first: Double, second: Double)>?(v9);

  v2 = *(v0[2] + 8);

  return v2();
}

{
  v11 = v0[18];
  v1 = v0[16];
  v6 = v0[15];
  v7 = v0[14];
  v8 = v0[13];
  v9 = v0[8];
  v0[2] = v0;
  MEMORY[0x277D82BD8](v1);
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](v8);
  v2 = v11;
  v0[6] = v11;
  v10 = *(v9 + 32);

  v10(v3);

  v4 = *(v0[2] + 8);

  return v4();
}

uint64_t protocol witness for DataProviding.isQueryAuthorized() in conformance HealthKitCorrelationProvider<A>()
{
  *(v1 + 80) = v1;
  memcpy((v1 + 16), v0, 0x40uLL);
  v2 = swift_task_alloc();
  *(v4 + 88) = v2;
  *v2 = *(v4 + 80);
  v2[1] = protocol witness for DataProviding.isQueryAuthorized() in conformance HealthKitCorrelationProvider<A>;

  return HealthKitDistanceProvider.isQueryAuthorized()();
}

uint64_t protocol witness for DataProviding.isQueryAuthorized() in conformance HealthKitCorrelationProvider<A>(unsigned int a1)
{
  v4 = *v1;
  *(v4 + 80) = *v1;

  v2 = *(*(v4 + 80) + 8);

  return v2(a1);
}

uint64_t protocol witness for DataProviding.isLoggingAuthorized() in conformance HealthKitCorrelationProvider<A>()
{
  *(v1 + 80) = v1;
  memcpy((v1 + 16), v0, 0x40uLL);
  v2 = swift_task_alloc();
  *(v4 + 88) = v2;
  *v2 = *(v4 + 80);
  v2[1] = protocol witness for DataProviding.isQueryAuthorized() in conformance HealthKitCorrelationProvider<A>;

  return HealthKitDistanceProvider.isQueryAuthorized()();
}

char *implicit closure #1 in static HealthKitCorrelationProvider<A>.bloodPressure(store:)@<X0>(char **a1@<X8>)
{
  type metadata accessor for GetBloodPressureIntentResponse();
  result = GetBloodPressureIntentResponse.__allocating_init(code:userActivity:)(5, 0);
  *a1 = result;
  return result;
}

char *closure #1 in static HealthKitCorrelationProvider<A>.bloodPressure(store:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v39 = a2;
  v52 = a1;
  v61 = 0;
  v60 = 0;
  v59 = 0;
  v40 = 0;
  v41 = type metadata accessor for Date();
  v42 = *(v41 - 8);
  v43 = v41 - 8;
  v44 = (*(v42 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0, v2);
  v45 = &v20 - v44;
  v46 = type metadata accessor for DateInterval();
  v47 = *(v46 - 8);
  v48 = v46 - 8;
  v49 = (v47[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v46, v3);
  v50 = &v20 - v49;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriWellnessIntents10StatisticsVySd5first_Sd6secondtGSgMd, &_s19SiriWellnessIntents10StatisticsVySd5first_Sd6secondtGSgMR);
  v51 = (*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v4, v5);
  v58 = &v20 - v51;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriWellnessIntents10StatisticsVySd5first_Sd6secondtGMd, &_s19SiriWellnessIntents10StatisticsVySd5first_Sd6secondtGMR);
  v55 = *(v57 - 1);
  v56 = v57 - 2;
  v53 = (*(v55 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v52, v58);
  v54 = &v20 - v53;
  v61 = &v20 - v53;
  v60 = v6;
  outlined init with copy of Statistics<(first: Double, second: Double)>?(v6, v7);
  if ((*(v55 + 48))(v58, 1, v57) == 1)
  {
    outlined destroy of Statistics<(first: Double, second: Double)>?(v58);
    v38 = 0;
    type metadata accessor for GetBloodPressureIntentResponse();
    result = GetBloodPressureIntentResponse.__allocating_init(code:userActivity:)(102, v38);
    *v39 = result;
  }

  else
  {
    outlined init with take of Statistics<(first: Double, second: Double)>(v58, v54);
    v21 = 0;
    type metadata accessor for GetBloodPressureIntentResponse();
    v9 = GetBloodPressureIntentResponse.__allocating_init(code:userActivity:)(4, v21);
    v10 = v50;
    v37 = v9;
    v59 = v9;
    v11 = &v54[v57[9]];
    v22 = *v11;
    v23 = *(v11 + 1);

    v24 = MEMORY[0x26D6492A0](v22, v23);

    [v37 setUnit_];
    MEMORY[0x277D82BD8](v24);
    v12 = &v54[v57[11]];
    v13 = *v12;
    v26 = *(v12 + 1);
    [v37 setSystolic_];
    v14 = &v54[v57[10]];
    v15 = *v14;
    v27 = *(v14 + 1);
    v25 = *(v14 + 2);
    v28 = *(v14 + 3);
    [v37 setSystolicMinimum_];
    [v37 setSystolicMaximum_];
    [v37 setDiastolic_];
    [v37 setDiastolicMinimum_];
    [v37 setDiastolicMaximum_];
    v16 = &v54[v57[7]];
    v31 = v47[2];
    v30 = v47 + 2;
    v31(v10, v16, v46);
    DateInterval.start.getter();
    v17.super.isa = Date._bridgeToObjectiveC()().super.isa;
    v18 = v50;
    isa = v17.super.isa;
    v33 = v47[1];
    v32 = v47 + 1;
    v33(v50, v46);
    v35 = *(v42 + 8);
    v34 = v42 + 8;
    v35(v45, v41);
    [v37 setSampleStartDate_];
    MEMORY[0x277D82BD8](isa);
    v31(v18, &v54[v57[7]], v46);
    DateInterval.end.getter();
    v36 = Date._bridgeToObjectiveC()().super.isa;
    v33(v50, v46);
    v35(v45, v41);
    [v37 setSampleEndDate_];
    MEMORY[0x277D82BD8](v36);
    MEMORY[0x277D82BE0](v37);
    v19 = v37;
    *v39 = v37;
    MEMORY[0x277D82BD8](v19);
    return outlined destroy of Statistics<(first: Double, second: Double)>(v54);
  }

  return result;
}

void *outlined destroy of HealthKitCorrelationProvider<A>(void *a1)
{
  MEMORY[0x277D82BD8](*a1);
  MEMORY[0x277D82BD8](a1[1]);
  MEMORY[0x277D82BD8](a1[2]);
  MEMORY[0x277D82BD8](a1[3]);

  return a1;
}

uint64_t outlined destroy of Statistics<(first: Double, second: Double)>?(uint64_t a1)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriWellnessIntents10StatisticsVySd5first_Sd6secondtGMd, &_s19SiriWellnessIntents10StatisticsVySd5first_Sd6secondtGMR);
  if (!(*(*(v5 - 8) + 48))(a1, 1))
  {
    v2 = type metadata accessor for DateInterval();
    v3 = *(v2 - 8);
    if (!(*(v3 + 48))(a1, 1))
    {
      (*(v3 + 8))(a1, v2);
    }

    (*(v3 + 8))(a1 + *(v5 + 28), v2);
  }

  return a1;
}

uint64_t protocol witness for BloodPressureProviding.query(start:end:) in conformance <A> HealthKitCorrelationProvider<A>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 80) = v4;
  memcpy((v4 + 16), v3, 0x40uLL);
  v5 = swift_task_alloc();
  *(v7 + 96) = v5;
  *v5 = *(v7 + 80);
  v5[1] = protocol witness for BloodPressureProviding.query(start:end:) in conformance <A> HealthKitCorrelationProvider<A>;

  return HealthKitCorrelationProvider.query(start:end:)(v7 + 88, a1, a2, a3);
}

uint64_t protocol witness for BloodPressureProviding.query(start:end:) in conformance <A> HealthKitCorrelationProvider<A>()
{
  v4 = *v0;
  v5 = *v0;
  *(v5 + 80) = *v0;

  v1 = *(v4 + 88);
  v2 = *(*(v5 + 80) + 8);

  return v2(v1);
}

uint64_t type metadata instantiation function for HealthKitCorrelationProvider()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t getEnumTagSinglePayload for HealthKitCorrelationProvider(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFF && *(a1 + 64))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (*a1 < 0x100000000uLL)
      {
        v3 = *a1;
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for HealthKitCorrelationProvider(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *(result + 40) = 0;
    *(result + 48) = 0;
    *(result + 56) = 0;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *result = a2 - 1;
    }
  }

  return result;
}

char *outlined init with copy of Statistics<(first: Double, second: Double)>?(char *a1, char *a2)
{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriWellnessIntents10StatisticsVySd5first_Sd6secondtGMd, &_s19SiriWellnessIntents10StatisticsVySd5first_Sd6secondtGMR);
  v15 = *(v14 - 1);
  if ((*(v15 + 48))(a1, 1))
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriWellnessIntents10StatisticsVySd5first_Sd6secondtGSgMd, &_s19SiriWellnessIntents10StatisticsVySd5first_Sd6secondtGSgMR);
    memcpy(a2, a1, *(*(v6 - 8) + 64));
  }

  else
  {
    v10 = type metadata accessor for DateInterval();
    v11 = *(v10 - 8);
    if ((*(v11 + 48))(a1, 1))
    {
      v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
      memcpy(a2, a1, *(*(v2 - 8) + 64));
    }

    else
    {
      (*(v11 + 16))(a2, a1, v10);
      (*(v11 + 56))(a2, 0, 1, v10);
    }

    (*(v11 + 16))(&a2[v14[7]], &a1[v14[7]], v10);
    *&a2[v14[8]] = *&a1[v14[8]];
    v3 = v14[9];
    v8 = &a2[v3];
    *&a2[v3] = *&a1[v3];
    v9 = *&a1[v3 + 8];

    *(v8 + 1) = v9;
    v4 = &a2[v14[10]];
    v5 = v14[10];
    *v4 = *&a1[v5];
    *(v4 + 1) = *&a1[v5 + 16];
    *&a2[v14[11]] = *&a1[v14[11]];
    *&a2[v14[12]] = *&a1[v14[12]];
    *&a2[v14[13]] = *&a1[v14[13]];
    (*(v15 + 56))();
  }

  return a2;
}

__n128 outlined init with take of Statistics<(first: Double, second: Double)>(char *a1, char *a2)
{
  v9 = type metadata accessor for DateInterval();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v10 + 32))(a2, a1, v9);
    (*(v10 + 56))(a2, 0, 1, v9);
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriWellnessIntents10StatisticsVySd5first_Sd6secondtGMd, &_s19SiriWellnessIntents10StatisticsVySd5first_Sd6secondtGMR);
  (*(v10 + 32))(&a2[v6[7]], &a1[v6[7]], v9);
  *&a2[v6[8]] = *&a1[v6[8]];
  *&a2[v6[9]] = *&a1[v6[9]];
  v3 = &a2[v6[10]];
  v4 = v6[10];
  *v3 = *&a1[v4];
  *(v3 + 1) = *&a1[v4 + 16];
  *&a2[v6[11]] = *&a1[v6[11]];
  *&a2[v6[12]] = *&a1[v6[12]];
  result = *&a1[v6[13]];
  *&a2[v6[13]] = result;
  return result;
}

uint64_t PeriodFlow.toMenstrualFlow()(uint64_t a1)
{
  switch(a1)
  {
    case 0:
      return 0;
    case 1:
      return 1;
    case 2:
      return 2;
    case 3:
      return 3;
    case 4:
      return 4;
    case 5:
      return 5;
  }

  _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
  __break(1u);
  return v2;
}

uint64_t PeriodFlow.init(flow:)(uint64_t a1)
{
  switch(a1)
  {
    case 0:
      return 0;
    case 1:
      return 1;
    case 2:
      return 2;
    case 3:
      return 3;
    case 4:
      return 4;
    case 5:
      return 5;
  }

  return 0;
}

id LogGenericMedicationsIntent.init()()
{
  v3 = 0;
  v2.receiver = 0;
  v2.super_class = type metadata accessor for LogGenericMedicationsIntent();
  v1 = objc_msgSendSuper2(&v2, sel_init);
  MEMORY[0x277D82BE0](v1);
  v3 = v1;
  MEMORY[0x277D82BD8](v1);
  return v1;
}

id LogGenericMedicationsIntent.__allocating_init(coder:)(uint64_t a1)
{
  v4 = [objc_allocWithZone(v1) initWithCoder_];
  MEMORY[0x277D82BD8](a1);
  return v4;
}

id LogGenericMedicationsIntent.init(coder:)(uint64_t a1)
{
  v7 = 0;
  v6 = a1;
  v5.receiver = 0;
  v5.super_class = type metadata accessor for LogGenericMedicationsIntent();
  v4 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);
  if (v4)
  {
    MEMORY[0x277D82BE0](v4);
    v7 = v4;
    MEMORY[0x277D82BD8](a1);
    MEMORY[0x277D82BD8](v7);
    return v4;
  }

  else
  {
    MEMORY[0x277D82BD8](0);
    MEMORY[0x277D82BD8](a1);
    return 0;
  }
}

id LogGenericMedicationsIntent.__allocating_init(identifier:backingStore:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = objc_allocWithZone(v3);
  if (a2)
  {
    v6 = MEMORY[0x26D6492A0](a1);

    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v5 = [v11 initWithIdentifier_backingStore_];
  MEMORY[0x277D82BD8](a3);
  MEMORY[0x277D82BD8](v7);
  return v5;
}

id LogGenericMedicationsIntent.init(identifier:backingStore:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14 = 0;
  v12 = a1;
  v13 = a2;
  v11 = a3;

  if (a2)
  {
    v5 = MEMORY[0x26D6492A0](a1);

    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v10.receiver = 0;
  v10.super_class = type metadata accessor for LogGenericMedicationsIntent();
  v4 = objc_msgSendSuper2(&v10, sel_initWithIdentifier_backingStore_, v6, a3);
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BE0](v4);
  v14 = v4;
  MEMORY[0x277D82BD8](a3);

  MEMORY[0x277D82BD8](v14);
  return v4;
}

id LogGenericMedicationsIntent.__allocating_init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = objc_allocWithZone(v5);
  v16 = MEMORY[0x26D6492A0](a1, a2);
  v18 = MEMORY[0x26D6492A0](a3, a4);
  if (a5)
  {
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v6 = [v13 initWithDomain:v16 verb:v18 parametersByName:isa];
  }

  else
  {
    v6 = [v13 initWithDomain:v16 verb:v18 parametersByName:0];
  }

  v9 = v6;
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v18);

  MEMORY[0x277D82BD8](v16);

  return v9;
}

id LogGenericMedicationsIntent.init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v22 = 0;
  v20 = a1;
  v21 = a2;
  v18 = a3;
  v19 = a4;
  v17 = a5;

  v11 = MEMORY[0x26D6492A0](a1, a2);

  v14 = MEMORY[0x26D6492A0](a3, a4);

  if (a5)
  {
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v8 = isa;
  }

  else
  {
    v8 = 0;
  }

  v16.receiver = 0;
  v16.super_class = type metadata accessor for LogGenericMedicationsIntent();
  v6 = objc_msgSendSuper2(&v16, sel_initWithDomain_verb_parametersByName_, v11, v14, v8);
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v14);
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BE0](v6);
  v22 = v6;

  MEMORY[0x277D82BD8](v22);
  return v6;
}

id LogGenericMedicationsIntent.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LogGenericMedicationsIntent();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t LogGenericMedicationsIntentResponseCode.init(rawValue:)(uint64_t a1)
{
  switch(a1)
  {
    case 0:
      return 0;
    case 1:
      return 1;
    case 2:
      return 2;
    case 3:
      return 3;
    case 4:
      return 4;
    case 5:
      return 5;
    case 6:
      return 6;
    case 100:
      return 100;
    case 101:
      return 101;
    case 102:
      return 102;
    case 103:
      return 103;
    case 104:
      return 104;
    case 105:
      return 105;
    case 106:
      return 106;
    case 107:
      return 107;
    case 108:
      return 108;
  }

  return 0;
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance LogGenericMedicationsIntentResponseCode@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = LogGenericMedicationsIntentResponseCode.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v3 & 1;
  return result;
}

uint64_t LogGenericMedicationsIntentResponse.code.getter()
{
  v2 = (v0 + OBJC_IVAR___LogGenericMedicationsIntentResponse_code);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3;
}

uint64_t LogGenericMedicationsIntentResponse.code.setter(uint64_t a1)
{
  v3 = (v1 + OBJC_IVAR___LogGenericMedicationsIntentResponse_code);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

uint64_t key path getter for LogGenericMedicationsIntentResponse.code : LogGenericMedicationsIntentResponse@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  MEMORY[0x277D82BE0](*a1);
  *a2 = LogGenericMedicationsIntentResponse.code.getter();
  return MEMORY[0x277D82BD8](v3);
}

uint64_t key path setter for LogGenericMedicationsIntentResponse.code : LogGenericMedicationsIntentResponse(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v3 = *a2;
  MEMORY[0x277D82BE0](*a2);
  LogGenericMedicationsIntentResponse.code.setter(v4);
  return MEMORY[0x277D82BD8](v3);
}

char *LogGenericMedicationsIntentResponse.init(code:userActivity:)(uint64_t a1, uint64_t a2)
{
  v6 = [v7 init];
  MEMORY[0x277D82BE0](v6);
  v3 = &v6[OBJC_IVAR___LogGenericMedicationsIntentResponse_code];
  swift_beginAccess();
  *v3 = a1;
  swift_endAccess();
  MEMORY[0x277D82BE0](v6);
  [v6 setUserActivity_];
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](a2);
  MEMORY[0x277D82BD8](v6);
  return v6;
}

id LogGenericMedicationsIntentResponse.init()()
{
  v3 = 0;
  *OBJC_IVAR___LogGenericMedicationsIntentResponse_code = 0;
  v2.receiver = v3;
  v2.super_class = type metadata accessor for LogGenericMedicationsIntentResponse();
  v1 = objc_msgSendSuper2(&v2, sel_init);
  MEMORY[0x277D82BE0](v1);
  v3 = v1;
  MEMORY[0x277D82BD8](v1);
  return v1;
}

id LogGenericMedicationsIntentResponse.__allocating_init(coder:)(uint64_t a1)
{
  v4 = [objc_allocWithZone(v1) initWithCoder_];
  MEMORY[0x277D82BD8](a1);
  return v4;
}

id LogGenericMedicationsIntentResponse.init(coder:)(uint64_t a1)
{
  v7 = 0;
  v6 = a1;
  *OBJC_IVAR___LogGenericMedicationsIntentResponse_code = 0;
  v5.receiver = v7;
  v5.super_class = type metadata accessor for LogGenericMedicationsIntentResponse();
  v4 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);
  if (v4)
  {
    MEMORY[0x277D82BE0](v4);
    v7 = v4;
    MEMORY[0x277D82BD8](a1);
    MEMORY[0x277D82BD8](v7);
    return v4;
  }

  else
  {
    MEMORY[0x277D82BD8](0);
    MEMORY[0x277D82BD8](a1);
    return 0;
  }
}

id LogGenericMedicationsIntentResponse.__allocating_init(backingStore:)(uint64_t a1)
{
  v4 = [objc_allocWithZone(v1) initWithBackingStore_];
  MEMORY[0x277D82BD8](a1);
  return v4;
}

id LogGenericMedicationsIntentResponse.init(backingStore:)(uint64_t a1)
{
  v7 = 0;
  v6 = a1;
  *OBJC_IVAR___LogGenericMedicationsIntentResponse_code = 0;
  v5.receiver = v7;
  v5.super_class = type metadata accessor for LogGenericMedicationsIntentResponse();
  v4 = objc_msgSendSuper2(&v5, sel_initWithBackingStore_, a1);
  if (v4)
  {
    MEMORY[0x277D82BE0](v4);
    v7 = v4;
    MEMORY[0x277D82BD8](a1);
    MEMORY[0x277D82BD8](v7);
    return v4;
  }

  else
  {
    MEMORY[0x277D82BD8](0);
    MEMORY[0x277D82BD8](a1);
    return 0;
  }
}

id LogGenericMedicationsIntentResponse.__allocating_init(propertiesByName:)(uint64_t a1)
{
  v8 = objc_allocWithZone(v1);
  if (a1)
  {
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v2 = [v8 initWithPropertiesByName_];
  }

  else
  {
    v2 = [v8 initWithPropertiesByName_];
  }

  v5 = v2;
  MEMORY[0x277D82BD8](v4);
  return v5;
}

id LogGenericMedicationsIntentResponse.init(propertiesByName:)(uint64_t a1)
{
  v9 = 0;
  v8 = a1;
  *OBJC_IVAR___LogGenericMedicationsIntentResponse_code = 0;

  if (a1)
  {
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v5 = isa;
  }

  else
  {
    v5 = 0;
  }

  v7.receiver = v9;
  v7.super_class = type metadata accessor for LogGenericMedicationsIntentResponse();
  v3 = objc_msgSendSuper2(&v7, sel_initWithPropertiesByName_, v5);
  MEMORY[0x277D82BD8](v5);
  if (v3)
  {
    MEMORY[0x277D82BE0](v3);
    v9 = v3;

    MEMORY[0x277D82BD8](v9);
    return v3;
  }

  else
  {
    MEMORY[0x277D82BD8](0);

    return 0;
  }
}

id LogGenericMedicationsIntentResponse.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LogGenericMedicationsIntentResponse();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t lazy protocol witness table accessor for type LogGenericMedicationsIntentResponseCode and conformance LogGenericMedicationsIntentResponseCode()
{
  v2 = lazy protocol witness table cache variable for type LogGenericMedicationsIntentResponseCode and conformance LogGenericMedicationsIntentResponseCode;
  if (!lazy protocol witness table cache variable for type LogGenericMedicationsIntentResponseCode and conformance LogGenericMedicationsIntentResponseCode)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type LogGenericMedicationsIntentResponseCode and conformance LogGenericMedicationsIntentResponseCode);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type LogGenericMedicationsIntentResponseCode and conformance LogGenericMedicationsIntentResponseCode;
  if (!lazy protocol witness table cache variable for type LogGenericMedicationsIntentResponseCode and conformance LogGenericMedicationsIntentResponseCode)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type LogGenericMedicationsIntentResponseCode and conformance LogGenericMedicationsIntentResponseCode);
    return WitnessTable;
  }

  return v2;
}

SiriWellnessIntents::WellnessNoun_optional __swiftcall WellnessNoun.init(rawValue:)(Swift::String rawValue)
{
  _allocateUninitializedArray<A>(_:)();
  *v1 = "abdominal_cramps";
  *(v1 + 8) = 16;
  *(v1 + 16) = 2;
  *(v1 + 24) = "acne";
  *(v1 + 32) = 4;
  *(v1 + 40) = 2;
  *(v1 + 48) = "appetite_changes";
  *(v1 + 56) = 16;
  *(v1 + 64) = 2;
  *(v1 + 72) = "audiogram";
  *(v1 + 80) = 9;
  *(v1 + 88) = 2;
  *(v1 + 96) = "basal_body_temperature";
  *(v1 + 104) = 22;
  *(v1 + 112) = 2;
  *(v1 + 120) = "bicycling";
  *(v1 + 128) = 9;
  *(v1 + 136) = 2;
  *(v1 + 144) = "biotin";
  *(v1 + 152) = 6;
  *(v1 + 160) = 2;
  *(v1 + 168) = "bladder_incontinence";
  *(v1 + 176) = 20;
  *(v1 + 184) = 2;
  *(v1 + 192) = "bloating";
  *(v1 + 200) = 8;
  *(v1 + 208) = 2;
  *(v1 + 216) = "blood_alcohol_content";
  *(v1 + 224) = 21;
  *(v1 + 232) = 2;
  *(v1 + 240) = "blood_glucose";
  *(v1 + 248) = 13;
  *(v1 + 256) = 2;
  *(v1 + 264) = "blood_pressure";
  *(v1 + 272) = 14;
  *(v1 + 280) = 2;
  *(v1 + 288) = "blood_pressure_diastolic";
  *(v1 + 296) = 24;
  *(v1 + 304) = 2;
  *(v1 + 312) = "blood_pressure_systolic";
  *(v1 + 320) = 23;
  *(v1 + 328) = 2;
  *(v1 + 336) = "body_fat_percentage";
  *(v1 + 344) = 19;
  *(v1 + 352) = 2;
  *(v1 + 360) = "body_mass_index";
  *(v1 + 368) = 15;
  *(v1 + 376) = 2;
  *(v1 + 384) = "body_temperature";
  *(v1 + 392) = 16;
  *(v1 + 400) = 2;
  *(v1 + 408) = "caffeine";
  *(v1 + 416) = 8;
  *(v1 + 424) = 2;
  *(v1 + 432) = "calcium";
  *(v1 + 440) = 7;
  *(v1 + 448) = 2;
  *(v1 + 456) = "carbohydrates";
  *(v1 + 464) = 13;
  *(v1 + 472) = 2;
  *(v1 + 480) = "cervical_mucus_quality";
  *(v1 + 488) = 22;
  *(v1 + 496) = 2;
  *(v1 + 504) = "chills";
  *(v1 + 512) = 6;
  *(v1 + 520) = 2;
  *(v1 + 528) = "chloride";
  *(v1 + 536) = 8;
  *(v1 + 544) = 2;
  *(v1 + 552) = "chromium";
  *(v1 + 560) = 8;
  *(v1 + 568) = 2;
  *(v1 + 576) = "constipation";
  *(v1 + 584) = 12;
  *(v1 + 592) = 2;
  *(v1 + 600) = "copper";
  *(v1 + 608) = 6;
  *(v1 + 616) = 2;
  *(v1 + 624) = "diarrhea";
  *(v1 + 632) = 8;
  *(v1 + 640) = 2;
  *(v1 + 648) = "diastolic_blood_pressure";
  *(v1 + 656) = 24;
  *(v1 + 664) = 2;
  *(v1 + 672) = "dietary_cholesterol";
  *(v1 + 680) = 19;
  *(v1 + 688) = 2;
  *(v1 + 696) = "dietary_sugar";
  *(v1 + 704) = 13;
  *(v1 + 712) = 2;
  *(v1 + 720) = "double_support";
  *(v1 + 728) = 14;
  *(v1 + 736) = 2;
  *(v1 + 744) = "dry_skin";
  *(v1 + 752) = 8;
  *(v1 + 760) = 2;
  *(v1 + 768) = "electrocardiogram";
  *(v1 + 776) = 17;
  *(v1 + 784) = 2;
  *(v1 + 792) = "electrodermal_activity";
  *(v1 + 800) = 22;
  *(v1 + 808) = 2;
  *(v1 + 816) = "environment_noise";
  *(v1 + 824) = 17;
  *(v1 + 832) = 2;
  *(v1 + 840) = "energy_consumed";
  *(v1 + 848) = 15;
  *(v1 + 856) = 2;
  *(v1 + 864) = "exercise";
  *(v1 + 872) = 8;
  *(v1 + 880) = 2;
  *(v1 + 888) = "exercise_ring";
  *(v1 + 896) = 13;
  *(v1 + 904) = 2;
  *(v1 + 912) = "fatigue";
  *(v1 + 920) = 7;
  *(v1 + 928) = 2;
  *(v1 + 936) = "fat_monounsaturated";
  *(v1 + 944) = 19;
  *(v1 + 952) = 2;
  *(v1 + 960) = "fat_polyunsaturated";
  *(v1 + 968) = 19;
  *(v1 + 976) = 2;
  *(v1 + 984) = "fat_saturated";
  *(v1 + 992) = 13;
  *(v1 + 1000) = 2;
  *(v1 + 1008) = "fat_total";
  *(v1 + 1016) = 9;
  *(v1 + 1024) = 2;
  *(v1 + 1032) = "fiber";
  *(v1 + 1040) = 5;
  *(v1 + 1048) = 2;
  *(v1 + 1056) = "flights";
  *(v1 + 1064) = 7;
  *(v1 + 1072) = 2;
  *(v1 + 1080) = "folate";
  *(v1 + 1088) = 6;
  *(v1 + 1096) = 2;
  *(v1 + 1104) = "forced_expiratory_volume";
  *(v1 + 1112) = 24;
  *(v1 + 1120) = 2;
  *(v1 + 1128) = "forced_vital_capacity";
  *(v1 + 1136) = 21;
  *(v1 + 1144) = 2;
  *(v1 + 1152) = "hair_loss";
  *(v1 + 1160) = 9;
  *(v1 + 1168) = 2;
  *(v1 + 1176) = "handwash";
  *(v1 + 1184) = 8;
  *(v1 + 1192) = 2;
  *(v1 + 1200) = "headache";
  *(v1 + 1208) = 8;
  *(v1 + 1216) = 2;
  *(v1 + 1224) = "headphone_audio";
  *(v1 + 1232) = 15;
  *(v1 + 1240) = 2;
  *(v1 + 1248) = "heart_rate";
  *(v1 + 1256) = 10;
  *(v1 + 1264) = 2;
  *(v1 + 1272) = "heart_rate_variability_sdnn";
  *(v1 + 1280) = 27;
  *(v1 + 1288) = 2;
  *(v1 + 1296) = "height";
  *(v1 + 1304) = 6;
  *(v1 + 1312) = 2;
  *(v1 + 1320) = "high_heart_rate";
  *(v1 + 1328) = 15;
  *(v1 + 1336) = 2;
  *(v1 + 1344) = "hot_flashes";
  *(v1 + 1352) = 11;
  *(v1 + 1360) = 2;
  *(v1 + 1368) = "inhaler_usage";
  *(v1 + 1376) = 13;
  *(v1 + 1384) = 2;
  *(v1 + 1392) = "insulin_delivery";
  *(v1 + 1400) = 16;
  *(v1 + 1408) = 2;
  *(v1 + 1416) = "iodine";
  *(v1 + 1424) = 6;
  *(v1 + 1432) = 2;
  *(v1 + 1440) = "irregular_heart_rate";
  *(v1 + 1448) = 20;
  *(v1 + 1456) = 2;
  *(v1 + 1464) = "iron";
  *(v1 + 1472) = 4;
  *(v1 + 1480) = 2;
  *(v1 + 1488) = "lean_body_mass";
  *(v1 + 1496) = 14;
  *(v1 + 1504) = 2;
  *(v1 + 1512) = "lower_back_pain";
  *(v1 + 1520) = 15;
  *(v1 + 1528) = 2;
  *(v1 + 1536) = "low_heart_rate";
  *(v1 + 1544) = 14;
  *(v1 + 1552) = 2;
  *(v1 + 1560) = "magnesium";
  *(v1 + 1568) = 9;
  *(v1 + 1576) = 2;
  *(v1 + 1584) = "manganese";
  *(v1 + 1592) = 9;
  *(v1 + 1600) = 2;
  *(v1 + 1608) = "memory_lapse";
  *(v1 + 1616) = 12;
  *(v1 + 1624) = 2;
  *(v1 + 1632) = "menstruation";
  *(v1 + 1640) = 12;
  *(v1 + 1648) = 2;
  *(v1 + 1656) = "mindful";
  *(v1 + 1664) = 7;
  *(v1 + 1672) = 2;
  *(v1 + 1680) = "mood_swing";
  *(v1 + 1688) = 10;
  *(v1 + 1696) = 2;
  *(v1 + 1704) = "move";
  *(v1 + 1712) = 4;
  *(v1 + 1720) = 2;
  *(v1 + 1728) = "move_ring";
  *(v1 + 1736) = 9;
  *(v1 + 1744) = 2;
  *(v1 + 1752) = "molybdenum";
  *(v1 + 1760) = 10;
  *(v1 + 1768) = 2;
  *(v1 + 1776) = "nausea";
  *(v1 + 1784) = 6;
  *(v1 + 1792) = 2;
  *(v1 + 1800) = "niacin";
  *(v1 + 1808) = 6;
  *(v1 + 1816) = 2;
  *(v1 + 1824) = "night_sweats";
  *(v1 + 1832) = 12;
  *(v1 + 1840) = 2;
  *(v1 + 1848) = "nikeFuel";
  *(v1 + 1856) = 8;
  *(v1 + 1864) = 2;
  *(v1 + 1872) = "number_of_times_fallen";
  *(v1 + 1880) = 22;
  *(v1 + 1888) = 2;
  *(v1 + 1896) = "oxygen_saturation";
  *(v1 + 1904) = 17;
  *(v1 + 1912) = 2;
  *(v1 + 1920) = "ovulation";
  *(v1 + 1928) = 9;
  *(v1 + 1936) = 2;
  *(v1 + 1944) = "pantothenic_acid";
  *(v1 + 1952) = 16;
  *(v1 + 1960) = 2;
  *(v1 + 1968) = "peak_expiratory_flow_rate";
  *(v1 + 1976) = 25;
  *(v1 + 1984) = 2;
  *(v1 + 1992) = "pelvic_pain";
  *(v1 + 2000) = 11;
  *(v1 + 2008) = 2;
  *(v1 + 2016) = "peripheral_perfusion_index";
  *(v1 + 2024) = 26;
  *(v1 + 2032) = 2;
  *(v1 + 2040) = "phosphorus";
  *(v1 + 2048) = 10;
  *(v1 + 2056) = 2;
  *(v1 + 2064) = "potassium";
  *(v1 + 2072) = 9;
  *(v1 + 2080) = 2;
  *(v1 + 2088) = "protein";
  *(v1 + 2096) = 7;
  *(v1 + 2104) = 2;
  *(v1 + 2112) = "respiratory_rate";
  *(v1 + 2120) = 16;
  *(v1 + 2128) = 2;
  *(v1 + 2136) = "resting_heart_rate";
  *(v1 + 2144) = 18;
  *(v1 + 2152) = 2;
  *(v1 + 2160) = "riboflavin";
  *(v1 + 2168) = 10;
  *(v1 + 2176) = 2;
  *(v1 + 2184) = "running";
  *(v1 + 2192) = 7;
  *(v1 + 2200) = 2;
  *(v1 + 2208) = "selenium";
  *(v1 + 2216) = 8;
  *(v1 + 2224) = 2;
  *(v1 + 2232) = "sexual_activity";
  *(v1 + 2240) = 15;
  *(v1 + 2248) = 2;
  *(v1 + 2256) = "six_minute_walk";
  *(v1 + 2264) = 15;
  *(v1 + 2272) = 2;
  *(v1 + 2280) = "sleep";
  *(v1 + 2288) = 5;
  *(v1 + 2296) = 2;
  *(v1 + 2304) = "sleep_changes";
  *(v1 + 2312) = 13;
  *(v1 + 2320) = 2;
  *(v1 + 2328) = "spotting";
  *(v1 + 2336) = 8;
  *(v1 + 2344) = 2;
  *(v1 + 2352) = "stand";
  *(v1 + 2360) = 5;
  *(v1 + 2368) = 2;
  *(v1 + 2376) = "stand_ring";
  *(v1 + 2384) = 10;
  *(v1 + 2392) = 2;
  *(v1 + 2400) = "swimming";
  *(v1 + 2408) = 8;
  *(v1 + 2416) = 2;
  *(v1 + 2424) = "sodium";
  *(v1 + 2432) = 6;
  *(v1 + 2440) = 2;
  *(v1 + 2448) = "thiamin";
  *(v1 + 2456) = 7;
  *(v1 + 2464) = 2;
  *(v1 + 2472) = "uv_index";
  *(v1 + 2480) = 8;
  *(v1 + 2488) = 2;
  *(v1 + 2496) = "vaginal_dryness";
  *(v1 + 2504) = 15;
  *(v1 + 2512) = 2;
  *(v1 + 2520) = "vitamin_a";
  *(v1 + 2528) = 9;
  *(v1 + 2536) = 2;
  *(v1 + 2544) = "vitamin_b12";
  *(v1 + 2552) = 11;
  *(v1 + 2560) = 2;
  *(v1 + 2568) = "vitamin_b6";
  *(v1 + 2576) = 10;
  *(v1 + 2584) = 2;
  *(v1 + 2592) = "vitamin_c";
  *(v1 + 2600) = 9;
  *(v1 + 2608) = 2;
  *(v1 + 2616) = "vitamin_d";
  *(v1 + 2624) = 9;
  *(v1 + 2632) = 2;
  *(v1 + 2640) = "vitamin_e";
  *(v1 + 2648) = 9;
  *(v1 + 2656) = 2;
  *(v1 + 2664) = "vitamin_k";
  *(v1 + 2672) = 9;
  *(v1 + 2680) = 2;
  *(v1 + 2688) = "vo2_max";
  *(v1 + 2696) = 7;
  *(v1 + 2704) = 2;
  *(v1 + 2712) = "waist_circumference";
  *(v1 + 2720) = 19;
  *(v1 + 2728) = 2;
  *(v1 + 2736) = "walking";
  *(v1 + 2744) = 7;
  *(v1 + 2752) = 2;
  *(v1 + 2760) = "walking_heart_rate_average";
  *(v1 + 2768) = 26;
  *(v1 + 2776) = 2;
  *(v1 + 2784) = "water";
  *(v1 + 2792) = 5;
  *(v1 + 2800) = 2;
  *(v1 + 2808) = "weight";
  *(v1 + 2816) = 6;
  *(v1 + 2824) = 2;
  *(v1 + 2832) = "workouts";
  *(v1 + 2840) = 8;
  *(v1 + 2848) = 2;
  *(v1 + 2856) = "zinc";
  *(v1 + 2864) = 4;
  *(v1 + 2872) = 2;
  *(v1 + 2880) = "unsupported";
  *(v1 + 2888) = 11;
  *(v1 + 2896) = 2;
  *(v1 + 2904) = "active_energy_burned";
  *(v1 + 2912) = 20;
  *(v1 + 2920) = 2;
  *(v1 + 2928) = "inBed";
  *(v1 + 2936) = 5;
  *(v1 + 2944) = 2;
  *(v1 + 2952) = "stepCount";
  *(v1 + 2960) = 9;
  *(v1 + 2968) = 2;
  _finalizeUninitializedArray<A>(_:)();
  v7 = _findStringSwitchCase(cases:string:)(v2, rawValue);

  switch(v7)
  {
    case 0:
      v5.value = SiriWellnessIntents_WellnessNoun_abdominal_cramps;
LABEL_250:

      return v5;
    case 1:
      v5.value = SiriWellnessIntents_WellnessNoun_acne;
      goto LABEL_250;
    case 2:
      v5.value = SiriWellnessIntents_WellnessNoun_appetite_changes;
      goto LABEL_250;
    case 3:
      v5.value = SiriWellnessIntents_WellnessNoun_audiogram;
      goto LABEL_250;
    case 4:
      v5.value = SiriWellnessIntents_WellnessNoun_basal_body_temperature;
      goto LABEL_250;
    case 5:
      v5.value = SiriWellnessIntents_WellnessNoun_bicycling;
      goto LABEL_250;
    case 6:
      v5.value = SiriWellnessIntents_WellnessNoun_biotin;
      goto LABEL_250;
    case 7:
      v5.value = SiriWellnessIntents_WellnessNoun_bladder_incontinence;
      goto LABEL_250;
    case 8:
      v5.value = SiriWellnessIntents_WellnessNoun_bloating;
      goto LABEL_250;
    case 9:
      v5.value = SiriWellnessIntents_WellnessNoun_blood_alcohol_content;
      goto LABEL_250;
    case 10:
      v5.value = SiriWellnessIntents_WellnessNoun_blood_glucose;
      goto LABEL_250;
    case 11:
      v5.value = SiriWellnessIntents_WellnessNoun_blood_pressure;
      goto LABEL_250;
    case 12:
      v5.value = SiriWellnessIntents_WellnessNoun_blood_pressure_diastolic;
      goto LABEL_250;
    case 13:
      v5.value = SiriWellnessIntents_WellnessNoun_blood_pressure_systolic;
      goto LABEL_250;
    case 14:
      v5.value = SiriWellnessIntents_WellnessNoun_body_fat_percentage;
      goto LABEL_250;
    case 15:
      v5.value = SiriWellnessIntents_WellnessNoun_body_mass_index;
      goto LABEL_250;
    case 16:
      v5.value = SiriWellnessIntents_WellnessNoun_body_temperature;
      goto LABEL_250;
    case 17:
      v5.value = SiriWellnessIntents_WellnessNoun_caffeine;
      goto LABEL_250;
    case 18:
      v5.value = SiriWellnessIntents_WellnessNoun_calcium;
      goto LABEL_250;
    case 19:
      v5.value = SiriWellnessIntents_WellnessNoun_carbohydrates;
      goto LABEL_250;
    case 20:
      v5.value = SiriWellnessIntents_WellnessNoun_cervical_mucus_quality;
      goto LABEL_250;
    case 21:
      v5.value = SiriWellnessIntents_WellnessNoun_chills;
      goto LABEL_250;
    case 22:
      v5.value = SiriWellnessIntents_WellnessNoun_chloride;
      goto LABEL_250;
    case 23:
      v5.value = SiriWellnessIntents_WellnessNoun_chromium;
      goto LABEL_250;
    case 24:
      v5.value = SiriWellnessIntents_WellnessNoun_constipation;
      goto LABEL_250;
    case 25:
      v5.value = SiriWellnessIntents_WellnessNoun_copper;
      goto LABEL_250;
    case 26:
      v5.value = SiriWellnessIntents_WellnessNoun_diarrhea;
      goto LABEL_250;
    case 27:
      v5.value = SiriWellnessIntents_WellnessNoun_diastolic_blood_pressure;
      goto LABEL_250;
    case 28:
      v5.value = SiriWellnessIntents_WellnessNoun_dietary_cholesterol;
      goto LABEL_250;
    case 29:
      v5.value = SiriWellnessIntents_WellnessNoun_dietary_sugar;
      goto LABEL_250;
    case 30:
      v5.value = SiriWellnessIntents_WellnessNoun_double_support;
      goto LABEL_250;
    case 31:
      v5.value = SiriWellnessIntents_WellnessNoun_dry_skin;
      goto LABEL_250;
    case 32:
      v5.value = SiriWellnessIntents_WellnessNoun_electrocardiogram;
      goto LABEL_250;
    case 33:
      v5.value = SiriWellnessIntents_WellnessNoun_electrodermal_activity;
      goto LABEL_250;
    case 34:
      v5.value = SiriWellnessIntents_WellnessNoun_environment_noise;
      goto LABEL_250;
    case 35:
      v5.value = SiriWellnessIntents_WellnessNoun_energy_consumed;
      goto LABEL_250;
    case 36:
      v5.value = SiriWellnessIntents_WellnessNoun_exercise;
      goto LABEL_250;
    case 37:
      v5.value = SiriWellnessIntents_WellnessNoun_exercise_ring;
      goto LABEL_250;
    case 38:
      v5.value = SiriWellnessIntents_WellnessNoun_fatigue;
      goto LABEL_250;
    case 39:
      v5.value = SiriWellnessIntents_WellnessNoun_fat_monounsaturated;
      goto LABEL_250;
    case 40:
      v5.value = SiriWellnessIntents_WellnessNoun_fat_polyunsaturated;
      goto LABEL_250;
    case 41:
      v5.value = SiriWellnessIntents_WellnessNoun_fat_saturated;
      goto LABEL_250;
    case 42:
      v5.value = SiriWellnessIntents_WellnessNoun_fat_total;
      goto LABEL_250;
    case 43:
      v5.value = SiriWellnessIntents_WellnessNoun_fiber;
      goto LABEL_250;
    case 44:
      v5.value = SiriWellnessIntents_WellnessNoun_flights;
      goto LABEL_250;
    case 45:
      v5.value = SiriWellnessIntents_WellnessNoun_folate;
      goto LABEL_250;
    case 46:
      v5.value = SiriWellnessIntents_WellnessNoun_forced_expiratory_volume;
      goto LABEL_250;
    case 47:
      v5.value = SiriWellnessIntents_WellnessNoun_forced_vital_capacity;
      goto LABEL_250;
    case 48:
      v5.value = SiriWellnessIntents_WellnessNoun_hair_loss;
      goto LABEL_250;
    case 49:
      v5.value = SiriWellnessIntents_WellnessNoun_handwash;
      goto LABEL_250;
    case 50:
      v5.value = SiriWellnessIntents_WellnessNoun_headache;
      goto LABEL_250;
    case 51:
      v5.value = SiriWellnessIntents_WellnessNoun_headphone_audio;
      goto LABEL_250;
    case 52:
      v5.value = SiriWellnessIntents_WellnessNoun_heart_rate;
      goto LABEL_250;
    case 53:
      v5.value = SiriWellnessIntents_WellnessNoun_heart_rate_variability_sdnn;
      goto LABEL_250;
    case 54:
      v5.value = SiriWellnessIntents_WellnessNoun_height;
      goto LABEL_250;
    case 55:
      v5.value = SiriWellnessIntents_WellnessNoun_high_heart_rate;
      goto LABEL_250;
    case 56:
      v5.value = SiriWellnessIntents_WellnessNoun_hot_flashes;
      goto LABEL_250;
    case 57:
      v5.value = SiriWellnessIntents_WellnessNoun_inhaler_usage;
      goto LABEL_250;
    case 58:
      v5.value = SiriWellnessIntents_WellnessNoun_insulin_delivery;
      goto LABEL_250;
    case 59:
      v5.value = SiriWellnessIntents_WellnessNoun_iodine;
      goto LABEL_250;
    case 60:
      v5.value = SiriWellnessIntents_WellnessNoun_irregular_heart_rate;
      goto LABEL_250;
    case 61:
      v5.value = SiriWellnessIntents_WellnessNoun_iron;
      goto LABEL_250;
    case 62:
      v5.value = SiriWellnessIntents_WellnessNoun_lean_body_mass;
      goto LABEL_250;
    case 63:
      v5.value = SiriWellnessIntents_WellnessNoun_lower_back_pain;
      goto LABEL_250;
    case 64:
      v5.value = SiriWellnessIntents_WellnessNoun_low_heart_rate;
      goto LABEL_250;
    case 65:
      v5.value = SiriWellnessIntents_WellnessNoun_magnesium;
      goto LABEL_250;
    case 66:
      v5.value = SiriWellnessIntents_WellnessNoun_manganese;
      goto LABEL_250;
    case 67:
      v5.value = SiriWellnessIntents_WellnessNoun_memory_lapse;
      goto LABEL_250;
    case 68:
      v5.value = SiriWellnessIntents_WellnessNoun_menstruation;
      goto LABEL_250;
    case 69:
      v5.value = SiriWellnessIntents_WellnessNoun_mindful;
      goto LABEL_250;
    case 70:
      v5.value = SiriWellnessIntents_WellnessNoun_mood_swing;
      goto LABEL_250;
    case 71:
      v5.value = SiriWellnessIntents_WellnessNoun_move;
      goto LABEL_250;
    case 72:
      v5.value = SiriWellnessIntents_WellnessNoun_move_ring;
      goto LABEL_250;
    case 73:
      v5.value = SiriWellnessIntents_WellnessNoun_molybdenum;
      goto LABEL_250;
    case 74:
      v5.value = SiriWellnessIntents_WellnessNoun_nausea;
      goto LABEL_250;
    case 75:
      v5.value = SiriWellnessIntents_WellnessNoun_niacin;
      goto LABEL_250;
    case 76:
      v5.value = SiriWellnessIntents_WellnessNoun_night_sweats;
      goto LABEL_250;
    case 77:
      v5.value = SiriWellnessIntents_WellnessNoun_nikeFuel;
      goto LABEL_250;
    case 78:
      v5.value = SiriWellnessIntents_WellnessNoun_number_of_times_fallen;
      goto LABEL_250;
    case 79:
      v5.value = SiriWellnessIntents_WellnessNoun_oxygen_saturation;
      goto LABEL_250;
    case 80:
      v5.value = SiriWellnessIntents_WellnessNoun_ovulation;
      goto LABEL_250;
    case 81:
      v5.value = SiriWellnessIntents_WellnessNoun_pantothenic_acid;
      goto LABEL_250;
    case 82:
      v5.value = SiriWellnessIntents_WellnessNoun_peak_expiratory_flow_rate;
      goto LABEL_250;
    case 83:
      v5.value = SiriWellnessIntents_WellnessNoun_pelvic_pain;
      goto LABEL_250;
    case 84:
      v5.value = SiriWellnessIntents_WellnessNoun_peripheral_perfusion_index;
      goto LABEL_250;
    case 85:
      v5.value = SiriWellnessIntents_WellnessNoun_phosphorus;
      goto LABEL_250;
    case 86:
      v5.value = SiriWellnessIntents_WellnessNoun_potassium;
      goto LABEL_250;
    case 87:
      v5.value = SiriWellnessIntents_WellnessNoun_protein;
      goto LABEL_250;
    case 88:
      v5.value = SiriWellnessIntents_WellnessNoun_respiratory_rate;
      goto LABEL_250;
    case 89:
      v5.value = SiriWellnessIntents_WellnessNoun_resting_heart_rate;
      goto LABEL_250;
    case 90:
      v5.value = SiriWellnessIntents_WellnessNoun_riboflavin;
      goto LABEL_250;
    case 91:
      v5.value = SiriWellnessIntents_WellnessNoun_running;
      goto LABEL_250;
    case 92:
      v5.value = SiriWellnessIntents_WellnessNoun_selenium;
      goto LABEL_250;
    case 93:
      v5.value = SiriWellnessIntents_WellnessNoun_sexual_activity;
      goto LABEL_250;
    case 94:
      v5.value = SiriWellnessIntents_WellnessNoun_six_minute_walk;
      goto LABEL_250;
    case 95:
      v5.value = SiriWellnessIntents_WellnessNoun_sleep;
      goto LABEL_250;
    case 96:
      v5.value = SiriWellnessIntents_WellnessNoun_sleep_changes;
      goto LABEL_250;
    case 97:
      v5.value = SiriWellnessIntents_WellnessNoun_spotting;
      goto LABEL_250;
    case 98:
      v5.value = SiriWellnessIntents_WellnessNoun_stand;
      goto LABEL_250;
    case 99:
      v5.value = SiriWellnessIntents_WellnessNoun_stand_ring;
      goto LABEL_250;
    case 100:
      v5.value = SiriWellnessIntents_WellnessNoun_swimming;
      goto LABEL_250;
    case 101:
      v5.value = SiriWellnessIntents_WellnessNoun_sodium;
      goto LABEL_250;
    case 102:
      v5.value = SiriWellnessIntents_WellnessNoun_thiamin;
      goto LABEL_250;
    case 103:
      v5.value = SiriWellnessIntents_WellnessNoun_uv_index;
      goto LABEL_250;
    case 104:
      v5.value = SiriWellnessIntents_WellnessNoun_vaginal_dryness;
      goto LABEL_250;
    case 105:
      v5.value = SiriWellnessIntents_WellnessNoun_vitamin_a;
      goto LABEL_250;
    case 106:
      v5.value = SiriWellnessIntents_WellnessNoun_vitamin_b12;
      goto LABEL_250;
    case 107:
      v5.value = SiriWellnessIntents_WellnessNoun_vitamin_b6;
      goto LABEL_250;
    case 108:
      v5.value = SiriWellnessIntents_WellnessNoun_vitamin_c;
      goto LABEL_250;
    case 109:
      v5.value = SiriWellnessIntents_WellnessNoun_vitamin_d;
      goto LABEL_250;
    case 110:
      v5.value = SiriWellnessIntents_WellnessNoun_vitamin_e;
      goto LABEL_250;
    case 111:
      v5.value = SiriWellnessIntents_WellnessNoun_vitamin_k;
      goto LABEL_250;
    case 112:
      v5.value = SiriWellnessIntents_WellnessNoun_vo2_max;
      goto LABEL_250;
    case 113:
      v5.value = SiriWellnessIntents_WellnessNoun_waist_circumference;
      goto LABEL_250;
    case 114:
      v5.value = SiriWellnessIntents_WellnessNoun_walking;
      goto LABEL_250;
    case 115:
      v5.value = SiriWellnessIntents_WellnessNoun_walking_heart_rate_average;
      goto LABEL_250;
    case 116:
      v5.value = SiriWellnessIntents_WellnessNoun_water;
      goto LABEL_250;
    case 117:
      v5.value = SiriWellnessIntents_WellnessNoun_weight;
      goto LABEL_250;
    case 118:
      v5.value = SiriWellnessIntents_WellnessNoun_workouts;
      goto LABEL_250;
    case 119:
      v5.value = SiriWellnessIntents_WellnessNoun_zinc;
      goto LABEL_250;
    case 120:
      v5.value = SiriWellnessIntents_WellnessNoun_unsupported;
      goto LABEL_250;
    case 121:
      v5.value = SiriWellnessIntents_WellnessNoun_active_energy_burned;
      goto LABEL_250;
    case 122:
      v5.value = SiriWellnessIntents_WellnessNoun_inBed;
      goto LABEL_250;
    case 123:
      v5.value = SiriWellnessIntents_WellnessNoun_stepCount;
      goto LABEL_250;
  }

  return 124;
}

void static WellnessNoun.allCases.getter()
{
  _allocateUninitializedArray<A>(_:)();
  *v0 = 0;
  v0[1] = 1;
  v0[2] = 2;
  v0[3] = 3;
  v0[4] = 4;
  v0[5] = 5;
  v0[6] = 6;
  v0[7] = 7;
  v0[8] = 8;
  v0[9] = 9;
  v0[10] = 10;
  v0[11] = 11;
  v0[12] = 12;
  v0[13] = 13;
  v0[14] = 14;
  v0[15] = 15;
  v0[16] = 16;
  v0[17] = 17;
  v0[18] = 18;
  v0[19] = 19;
  v0[20] = 20;
  v0[21] = 21;
  v0[22] = 22;
  v0[23] = 23;
  v0[24] = 24;
  v0[25] = 25;
  v0[26] = 26;
  v0[27] = 27;
  v0[28] = 28;
  v0[29] = 29;
  v0[30] = 30;
  v0[31] = 31;
  _finalizeUninitializedArray<A>(_:)();
}

uint64_t WellnessNoun.rawValue.getter(char a1)
{
  switch(a1)
  {
    case 1:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("acne", 4uLL, 1)._countAndFlagsBits;
      break;
    case 2:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("appetite_changes", 0x10uLL, 1)._countAndFlagsBits;
      break;
    case 3:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("audiogram", 9uLL, 1)._countAndFlagsBits;
      break;
    case 4:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("basal_body_temperature", 0x16uLL, 1)._countAndFlagsBits;
      break;
    case 5:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("bicycling", 9uLL, 1)._countAndFlagsBits;
      break;
    case 6:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("biotin", 6uLL, 1)._countAndFlagsBits;
      break;
    case 7:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("bladder_incontinence", 0x14uLL, 1)._countAndFlagsBits;
      break;
    case 8:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("bloating", 8uLL, 1)._countAndFlagsBits;
      break;
    case 9:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("blood_alcohol_content", 0x15uLL, 1)._countAndFlagsBits;
      break;
    case 10:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("blood_glucose", 0xDuLL, 1)._countAndFlagsBits;
      break;
    case 11:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("blood_pressure", 0xEuLL, 1)._countAndFlagsBits;
      break;
    case 12:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("blood_pressure_diastolic", 0x18uLL, 1)._countAndFlagsBits;
      break;
    case 13:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("blood_pressure_systolic", 0x17uLL, 1)._countAndFlagsBits;
      break;
    case 14:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("body_fat_percentage", 0x13uLL, 1)._countAndFlagsBits;
      break;
    case 15:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("body_mass_index", 0xFuLL, 1)._countAndFlagsBits;
      break;
    case 16:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("body_temperature", 0x10uLL, 1)._countAndFlagsBits;
      break;
    case 17:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("caffeine", 8uLL, 1)._countAndFlagsBits;
      break;
    case 18:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("calcium", 7uLL, 1)._countAndFlagsBits;
      break;
    case 19:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("carbohydrates", 0xDuLL, 1)._countAndFlagsBits;
      break;
    case 20:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("cervical_mucus_quality", 0x16uLL, 1)._countAndFlagsBits;
      break;
    case 21:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("chills", 6uLL, 1)._countAndFlagsBits;
      break;
    case 22:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("chloride", 8uLL, 1)._countAndFlagsBits;
      break;
    case 23:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("chromium", 8uLL, 1)._countAndFlagsBits;
      break;
    case 24:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("constipation", 0xCuLL, 1)._countAndFlagsBits;
      break;
    case 25:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("copper", 6uLL, 1)._countAndFlagsBits;
      break;
    case 26:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("diarrhea", 8uLL, 1)._countAndFlagsBits;
      break;
    case 27:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("diastolic_blood_pressure", 0x18uLL, 1)._countAndFlagsBits;
      break;
    case 28:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("dietary_cholesterol", 0x13uLL, 1)._countAndFlagsBits;
      break;
    case 29:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("dietary_sugar", 0xDuLL, 1)._countAndFlagsBits;
      break;
    case 30:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("double_support", 0xEuLL, 1)._countAndFlagsBits;
      break;
    case 31:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("dry_skin", 8uLL, 1)._countAndFlagsBits;
      break;
    case 32:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("electrocardiogram", 0x11uLL, 1)._countAndFlagsBits;
      break;
    case 33:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("electrodermal_activity", 0x16uLL, 1)._countAndFlagsBits;
      break;
    case 34:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("environment_noise", 0x11uLL, 1)._countAndFlagsBits;
      break;
    case 35:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("energy_consumed", 0xFuLL, 1)._countAndFlagsBits;
      break;
    case 36:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("exercise", 8uLL, 1)._countAndFlagsBits;
      break;
    case 37:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("exercise_ring", 0xDuLL, 1)._countAndFlagsBits;
      break;
    case 38:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("fatigue", 7uLL, 1)._countAndFlagsBits;
      break;
    case 39:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("fat_monounsaturated", 0x13uLL, 1)._countAndFlagsBits;
      break;
    case 40:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("fat_polyunsaturated", 0x13uLL, 1)._countAndFlagsBits;
      break;
    case 41:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("fat_saturated", 0xDuLL, 1)._countAndFlagsBits;
      break;
    case 42:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("fat_total", 9uLL, 1)._countAndFlagsBits;
      break;
    case 43:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("fiber", 5uLL, 1)._countAndFlagsBits;
      break;
    case 44:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("flights", 7uLL, 1)._countAndFlagsBits;
      break;
    case 45:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("folate", 6uLL, 1)._countAndFlagsBits;
      break;
    case 46:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("forced_expiratory_volume", 0x18uLL, 1)._countAndFlagsBits;
      break;
    case 47:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("forced_vital_capacity", 0x15uLL, 1)._countAndFlagsBits;
      break;
    case 48:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("hair_loss", 9uLL, 1)._countAndFlagsBits;
      break;
    case 49:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("handwash", 8uLL, 1)._countAndFlagsBits;
      break;
    case 50:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("headache", 8uLL, 1)._countAndFlagsBits;
      break;
    case 51:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("headphone_audio", 0xFuLL, 1)._countAndFlagsBits;
      break;
    case 52:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("heart_rate", 0xAuLL, 1)._countAndFlagsBits;
      break;
    case 53:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("heart_rate_variability_sdnn", 0x1BuLL, 1)._countAndFlagsBits;
      break;
    case 54:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("height", 6uLL, 1)._countAndFlagsBits;
      break;
    case 55:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("high_heart_rate", 0xFuLL, 1)._countAndFlagsBits;
      break;
    case 56:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("hot_flashes", 0xBuLL, 1)._countAndFlagsBits;
      break;
    case 57:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("inhaler_usage", 0xDuLL, 1)._countAndFlagsBits;
      break;
    case 58:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("insulin_delivery", 0x10uLL, 1)._countAndFlagsBits;
      break;
    case 59:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("iodine", 6uLL, 1)._countAndFlagsBits;
      break;
    case 60:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("irregular_heart_rate", 0x14uLL, 1)._countAndFlagsBits;
      break;
    case 61:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("iron", 4uLL, 1)._countAndFlagsBits;
      break;
    case 62:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("lean_body_mass", 0xEuLL, 1)._countAndFlagsBits;
      break;
    case 63:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("lower_back_pain", 0xFuLL, 1)._countAndFlagsBits;
      break;
    case 64:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("low_heart_rate", 0xEuLL, 1)._countAndFlagsBits;
      break;
    case 65:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("magnesium", 9uLL, 1)._countAndFlagsBits;
      break;
    case 66:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("manganese", 9uLL, 1)._countAndFlagsBits;
      break;
    case 67:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("memory_lapse", 0xCuLL, 1)._countAndFlagsBits;
      break;
    case 68:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("menstruation", 0xCuLL, 1)._countAndFlagsBits;
      break;
    case 69:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("mindful", 7uLL, 1)._countAndFlagsBits;
      break;
    case 70:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("mood_swing", 0xAuLL, 1)._countAndFlagsBits;
      break;
    case 71:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("move", 4uLL, 1)._countAndFlagsBits;
      break;
    case 72:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("move_ring", 9uLL, 1)._countAndFlagsBits;
      break;
    case 73:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("molybdenum", 0xAuLL, 1)._countAndFlagsBits;
      break;
    case 74:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("nausea", 6uLL, 1)._countAndFlagsBits;
      break;
    case 75:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("niacin", 6uLL, 1)._countAndFlagsBits;
      break;
    case 76:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("night_sweats", 0xCuLL, 1)._countAndFlagsBits;
      break;
    case 77:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("nikeFuel", 8uLL, 1)._countAndFlagsBits;
      break;
    case 78:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("number_of_times_fallen", 0x16uLL, 1)._countAndFlagsBits;
      break;
    case 79:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("oxygen_saturation", 0x11uLL, 1)._countAndFlagsBits;
      break;
    case 80:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("ovulation", 9uLL, 1)._countAndFlagsBits;
      break;
    case 81:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("pantothenic_acid", 0x10uLL, 1)._countAndFlagsBits;
      break;
    case 82:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("peak_expiratory_flow_rate", 0x19uLL, 1)._countAndFlagsBits;
      break;
    case 83:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("pelvic_pain", 0xBuLL, 1)._countAndFlagsBits;
      break;
    case 84:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("peripheral_perfusion_index", 0x1AuLL, 1)._countAndFlagsBits;
      break;
    case 85:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("phosphorus", 0xAuLL, 1)._countAndFlagsBits;
      break;
    case 86:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("potassium", 9uLL, 1)._countAndFlagsBits;
      break;
    case 87:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("protein", 7uLL, 1)._countAndFlagsBits;
      break;
    case 88:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("respiratory_rate", 0x10uLL, 1)._countAndFlagsBits;
      break;
    case 89:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("resting_heart_rate", 0x12uLL, 1)._countAndFlagsBits;
      break;
    case 90:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("riboflavin", 0xAuLL, 1)._countAndFlagsBits;
      break;
    case 91:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("running", 7uLL, 1)._countAndFlagsBits;
      break;
    case 92:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("selenium", 8uLL, 1)._countAndFlagsBits;
      break;
    case 93:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("sexual_activity", 0xFuLL, 1)._countAndFlagsBits;
      break;
    case 94:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("six_minute_walk", 0xFuLL, 1)._countAndFlagsBits;
      break;
    case 95:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("sleep", 5uLL, 1)._countAndFlagsBits;
      break;
    case 96:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("sleep_changes", 0xDuLL, 1)._countAndFlagsBits;
      break;
    case 97:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("spotting", 8uLL, 1)._countAndFlagsBits;
      break;
    case 98:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("stand", 5uLL, 1)._countAndFlagsBits;
      break;
    case 99:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("stand_ring", 0xAuLL, 1)._countAndFlagsBits;
      break;
    case 100:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("swimming", 8uLL, 1)._countAndFlagsBits;
      break;
    case 101:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("sodium", 6uLL, 1)._countAndFlagsBits;
      break;
    case 102:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("thiamin", 7uLL, 1)._countAndFlagsBits;
      break;
    case 103:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("uv_index", 8uLL, 1)._countAndFlagsBits;
      break;
    case 104:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("vaginal_dryness", 0xFuLL, 1)._countAndFlagsBits;
      break;
    case 105:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("vitamin_a", 9uLL, 1)._countAndFlagsBits;
      break;
    case 106:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("vitamin_b12", 0xBuLL, 1)._countAndFlagsBits;
      break;
    case 107:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("vitamin_b6", 0xAuLL, 1)._countAndFlagsBits;
      break;
    case 108:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("vitamin_c", 9uLL, 1)._countAndFlagsBits;
      break;
    case 109:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("vitamin_d", 9uLL, 1)._countAndFlagsBits;
      break;
    case 110:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("vitamin_e", 9uLL, 1)._countAndFlagsBits;
      break;
    case 111:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("vitamin_k", 9uLL, 1)._countAndFlagsBits;
      break;
    case 112:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("vo2_max", 7uLL, 1)._countAndFlagsBits;
      break;
    case 113:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("waist_circumference", 0x13uLL, 1)._countAndFlagsBits;
      break;
    case 114:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("walking", 7uLL, 1)._countAndFlagsBits;
      break;
    case 115:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("walking_heart_rate_average", 0x1AuLL, 1)._countAndFlagsBits;
      break;
    case 116:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("water", 5uLL, 1)._countAndFlagsBits;
      break;
    case 117:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("weight", 6uLL, 1)._countAndFlagsBits;
      break;
    case 118:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("workouts", 8uLL, 1)._countAndFlagsBits;
      break;
    case 119:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("zinc", 4uLL, 1)._countAndFlagsBits;
      break;
    case 120:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("unsupported", 0xBuLL, 1)._countAndFlagsBits;
      break;
    case 121:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("active_energy_burned", 0x14uLL, 1)._countAndFlagsBits;
      break;
    case 122:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("inBed", 5uLL, 1)._countAndFlagsBits;
      break;
    case 123:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("stepCount", 9uLL, 1)._countAndFlagsBits;
      break;
    default:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("abdominal_cramps", 0x10uLL, 1)._countAndFlagsBits;
      break;
  }

  return countAndFlagsBits;
}

unint64_t lazy protocol witness table accessor for type WellnessNoun and conformance WellnessNoun()
{
  v2 = lazy protocol witness table cache variable for type WellnessNoun and conformance WellnessNoun;
  if (!lazy protocol witness table cache variable for type WellnessNoun and conformance WellnessNoun)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type WellnessNoun and conformance WellnessNoun);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type WellnessNoun and conformance WellnessNoun;
  if (!lazy protocol witness table cache variable for type WellnessNoun and conformance WellnessNoun)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type WellnessNoun and conformance WellnessNoun);
    return WitnessTable;
  }

  return v2;
}

SiriWellnessIntents::WellnessNoun_optional protocol witness for RawRepresentable.init(rawValue:) in conformance WellnessNoun@<W0>(Swift::String *a1@<X0>, SiriWellnessIntents::WellnessNoun_optional *a2@<X8>)
{
  result.value = WellnessNoun.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance WellnessNoun@<X0>(uint64_t *a1@<X8>)
{
  result = WellnessNoun.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t lazy protocol witness table accessor for type [WellnessNoun] and conformance [A]()
{
  v2 = lazy protocol witness table cache variable for type [WellnessNoun] and conformance [A];
  if (!lazy protocol witness table cache variable for type [WellnessNoun] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay19SiriWellnessIntents0B4NounOGMd, &_sSay19SiriWellnessIntents0B4NounOGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [WellnessNoun] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

uint64_t getEnumTagSinglePayload for WellnessNoun(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0x84)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 123) >> 8) + 1;
    v8 = 1;
    if (v7 >= 0x100)
    {
      if (v7 >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v8 = v2;
    }

    if (v8 == 1)
    {
      v6 = a1[1];
    }

    else
    {
      v6 = v8 == 2 ? *(a1 + 1) : *(a1 + 1);
    }

    if (v6)
    {
      v5 = (*a1 | ((v6 - 1) << 8)) + 132;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 124;
      if (v3 < 0)
      {
        v3 = -1;
      }

      v5 = v3;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for WellnessNoun(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0x84)
  {
    v5 = ((a3 + 123) >> 8) + 1;
    v6 = 1;
    if (v5 >= 0x100)
    {
      if (v5 >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v6 = v3;
    }

    v7 = v6;
  }

  if (a2 > 0x84)
  {
    v4 = ((a2 - 133) >> 8) + 1;
    *result = a2 + 123;
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = v4;
      }

      else if (v7 == 2)
      {
        *(result + 1) = v4;
      }

      else
      {
        *(result + 1) = v4;
      }
    }
  }

  else
  {
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = 0;
      }

      else if (v7 == 2)
      {
        *(result + 1) = 0;
      }

      else
      {
        *(result + 1) = 0;
      }
    }

    if (a2)
    {
      *result = a2 + 123;
    }
  }

  return result;
}

void *LogBloodPressureIntentHandler.init(storage:)(void *a1)
{
  ObjectType = swift_getObjectType();
  __dst[5] = a1;
  v11 = v1;
  outlined init with copy of QuantityPersisting?(a1, v8);
  if (v9)
  {
    outlined init with take of QuantityPersisting(v8, __dst);
  }

  else
  {
    v2.store.super.isa = BloodPressurePersistor.init()().store.super.isa;
    __dst[3] = &type metadata for BloodPressurePersistor;
    __dst[4] = &protocol witness table for BloodPressurePersistor;
    __dst[0] = v2.store.super.isa;
    if (v9)
    {
      outlined destroy of QuantityPersisting?(v8);
    }
  }

  outlined init with take of QuantityPersisting(__dst, &v1[OBJC_IVAR____TtC19SiriWellnessIntents29LogBloodPressureIntentHandler_storage]);
  v7.receiver = v11;
  v7.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v7, sel_init);
  MEMORY[0x277D82BE0](v4);
  v11 = v4;
  outlined destroy of QuantityPersisting?(a1);
  MEMORY[0x277D82BD8](v11);
  return v4;
}

SiriWellnessIntents::BloodPressurePersistor __swiftcall BloodPressurePersistor.init()()
{
  isa = 0;
  type metadata accessor for HKHealthStore();
  v1.store.super.isa = NSDateFormatter.__allocating_init()();
  MEMORY[0x277D82BE0](v1.store.super.isa);
  isa = v1.store.super.isa;
  outlined destroy of HealthKitPersistor(&isa);
  return v1;
}

uint64_t LogBloodPressureIntentHandler.handle(intent:)(uint64_t a1)
{
  v2[40] = v1;
  v2[39] = a1;
  v2[24] = v2;
  v2[25] = 0;
  v2[26] = 0;
  v3 = type metadata accessor for Logger();
  v2[41] = v3;
  v2[42] = *(v3 - 8);
  v2[43] = swift_task_alloc();
  v2[44] = swift_task_alloc();
  v2[45] = swift_task_alloc();
  v2[46] = swift_task_alloc();
  v2[25] = a1;
  v2[26] = v1;

  return MEMORY[0x2822009F8](LogBloodPressureIntentHandler.handle(intent:), 0);
}

{
  v3 = *v1;
  *(v3 + 192) = *v1;
  *(v3 + 448) = a1;

  return MEMORY[0x2822009F8](LogBloodPressureIntentHandler.handle(intent:), 0);
}

uint64_t LogBloodPressureIntentHandler.handle(intent:)()
{
  v1 = v0[46];
  v19 = v0[42];
  v21 = v0[41];
  v0[24] = v0;
  v20 = Logger.wellnessIntents.unsafeMutableAddressor();
  swift_beginAccess();
  v2 = *(v19 + 16);
  v0[47] = v2;
  v0[48] = (v19 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v2(v1, v20, v21);
  swift_endAccess();
  v23 = Logger.logObject.getter();
  v22 = static os_log_type_t.debug.getter();
  v0[49] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v24 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v23, v22))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v15 = createStorage<A>(capacity:type:)(0, v13, v13);
    v16 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    *(v18 + 280) = buf;
    *(v18 + 288) = v15;
    *(v18 + 296) = v16;
    serialize(_:at:)(0, (v18 + 280));
    serialize(_:at:)(0, (v18 + 280));
    *(v18 + 304) = v24;
    v17 = swift_task_alloc();
    v17[2] = v18 + 280;
    v17[3] = v18 + 288;
    v17[4] = v18 + 296;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();

    _os_log_impl(&dword_269912000, v23, v22, "Checking authorization for Blood Pressure...", buf, 2u);
    destroyStorage<A>(_:count:)(v15, 0, v13);
    destroyStorage<A>(_:count:)(v16, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);
  }

  *(v18 + 400) = 0;
  v7 = *(v18 + 368);
  v8 = *(v18 + 328);
  v9 = *(v18 + 320);
  v6 = *(v18 + 336);
  MEMORY[0x277D82BD8](v23);
  v3 = *(v6 + 8);
  *(v18 + 408) = v3;
  *(v18 + 416) = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v3(v7, v8);
  outlined init with copy of QuantityPersisting(v9 + OBJC_IVAR____TtC19SiriWellnessIntents29LogBloodPressureIntentHandler_storage, v18 + 16);
  v12 = *(v18 + 40);
  v10 = *(v18 + 48);
  __swift_project_boxed_opaque_existential_1((v18 + 16), v12);
  v11 = (*(v10 + 8) + **(v10 + 8));
  v4 = swift_task_alloc();
  *(v18 + 424) = v4;
  *v4 = *(v18 + 192);
  v4[1] = LogBloodPressureIntentHandler.handle(intent:);

  return v11(v12, v10);
}

{
  v92 = v0;
  v86 = *(v0 + 456);
  *(v0 + 192) = v0;
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  if ((v86 & 1) == 0)
  {
    v26 = *(v85 + 376);
    v12 = *(v85 + 344);
    v25 = *(v85 + 328);
    v24 = Logger.wellnessIntents.unsafeMutableAddressor();
    swift_beginAccess();
    v26(v12, v24, v25);
    swift_endAccess();
    log = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();
    v29 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(log, v27))
    {
      v13 = *(v85 + 400);
      v20 = static UnsafeMutablePointer.allocate(capacity:)();
      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v21 = createStorage<A>(capacity:type:)(0, v19, v19);
      v22 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      *(v85 + 216) = v20;
      *(v85 + 224) = v21;
      *(v85 + 232) = v22;
      serialize(_:at:)(0, (v85 + 216));
      serialize(_:at:)(0, (v85 + 216));
      *(v85 + 240) = v29;
      v23 = swift_task_alloc();
      v23[2] = v85 + 216;
      v23[3] = v85 + 224;
      v23[4] = v85 + 232;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();
      if (v13)
      {
      }

      _os_log_impl(&dword_269912000, log, v27, "Not authorized to write Blood Pressure data.", v20, 2u);
      destroyStorage<A>(_:count:)(v21, 0, v19);
      destroyStorage<A>(_:count:)(v22, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](v20, MEMORY[0x277D84B78]);
    }

    else
    {
    }

    v17 = *(v85 + 408);
    v15 = *(v85 + 344);
    v16 = *(v85 + 328);
    MEMORY[0x277D82BD8](log);
    v17(v15, v16);
    type metadata accessor for LogBloodPressureIntentResponse();
    v18 = LogBloodPressureIntentResponse.__allocating_init(code:userActivity:)(101, 0);

    v14 = *(*(v85 + 192) + 8);

    return v14(v18);
  }

  v81 = *(v85 + 376);
  v1 = *(v85 + 360);
  v80 = *(v85 + 328);
  v79 = Logger.wellnessIntents.unsafeMutableAddressor();
  swift_beginAccess();
  v81(v1, v79, v80);
  swift_endAccess();
  v83 = Logger.logObject.getter();
  v82 = static os_log_type_t.debug.getter();
  v84 = _allocateUninitializedArray<A>(_:)();
  if (!os_log_type_enabled(v83, v82))
  {

    v73 = *(v85 + 400);
    goto LABEL_7;
  }

  v2 = *(v85 + 400);
  buf = static UnsafeMutablePointer.allocate(capacity:)();
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
  v76 = createStorage<A>(capacity:type:)(0, v74, v74);
  v77 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
  *(v85 + 248) = buf;
  *(v85 + 256) = v76;
  *(v85 + 264) = v77;
  serialize(_:at:)(0, (v85 + 248));
  serialize(_:at:)(0, (v85 + 248));
  *(v85 + 272) = v84;
  v78 = swift_task_alloc();
  v78[2] = v85 + 248;
  v78[3] = v85 + 256;
  v78[4] = v85 + 264;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
  lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
  Sequence.forEach(_:)();
  if (v2)
  {
  }

  _os_log_impl(&dword_269912000, v83, v82, "Authorization check successful for Blood Pressure!", buf, 2u);
  destroyStorage<A>(_:count:)(v76, 0, v74);
  destroyStorage<A>(_:count:)(v77, 0, MEMORY[0x277D84F70] + 8);
  MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);

  v73 = 0;
LABEL_7:
  v50 = *(v85 + 408);
  v53 = *(v85 + 376);
  v49 = *(v85 + 360);
  v3 = *(v85 + 352);
  v52 = *(v85 + 328);
  v54 = *(v85 + 312);
  MEMORY[0x277D82BD8](v83);
  v50(v49, v52);
  v51 = Logger.wellnessIntents.unsafeMutableAddressor();
  swift_beginAccess();
  v53(v3, v51, v52);
  swift_endAccess();
  MEMORY[0x277D82BE0](v54);
  v55 = swift_allocObject();
  *(v55 + 16) = v54;
  MEMORY[0x277D82BE0](v54);
  v57 = swift_allocObject();
  *(v57 + 16) = v54;
  MEMORY[0x277D82BE0](v54);
  v59 = swift_allocObject();
  *(v59 + 16) = v54;
  oslog = Logger.logObject.getter();
  v72 = static os_log_type_t.debug.getter();
  v61 = swift_allocObject();
  *(v61 + 16) = 0;
  v62 = swift_allocObject();
  *(v62 + 16) = 8;
  v56 = swift_allocObject();
  *(v56 + 16) = partial apply for implicit closure #1 in LogBloodPressureIntentHandler.handle(intent:);
  *(v56 + 24) = v55;
  v63 = swift_allocObject();
  *(v63 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:format:align:privacy:);
  *(v63 + 24) = v56;
  v64 = swift_allocObject();
  *(v64 + 16) = 0;
  v65 = swift_allocObject();
  *(v65 + 16) = 8;
  v58 = swift_allocObject();
  *(v58 + 16) = partial apply for implicit closure #2 in LogBloodPressureIntentHandler.handle(intent:);
  *(v58 + 24) = v57;
  v66 = swift_allocObject();
  *(v66 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:format:align:privacy:);
  *(v66 + 24) = v58;
  v67 = swift_allocObject();
  *(v67 + 16) = 32;
  v68 = swift_allocObject();
  *(v68 + 16) = 8;
  v60 = swift_allocObject();
  *(v60 + 16) = partial apply for implicit closure #3 in LogBloodPressureIntentHandler.handle(intent:);
  *(v60 + 24) = v59;
  v69 = swift_allocObject();
  *(v69 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v69 + 24) = v60;
  _allocateUninitializedArray<A>(_:)();
  v70 = v4;

  *v70 = partial apply for closure #1 in OSLogArguments.append(_:);
  v70[1] = v61;

  v70[2] = partial apply for closure #1 in OSLogArguments.append(_:);
  v70[3] = v62;

  v70[4] = partial apply for closure #1 in OSLogArguments.append(_:);
  v70[5] = v63;

  v70[6] = partial apply for closure #1 in OSLogArguments.append(_:);
  v70[7] = v64;

  v70[8] = partial apply for closure #1 in OSLogArguments.append(_:);
  v70[9] = v65;

  v70[10] = partial apply for closure #1 in OSLogArguments.append(_:);
  v70[11] = v66;

  v70[12] = partial apply for closure #1 in OSLogArguments.append(_:);
  v70[13] = v67;

  v70[14] = partial apply for closure #1 in OSLogArguments.append(_:);
  v70[15] = v68;

  v70[16] = partial apply for closure #1 in OSLogArguments.append(_:);
  v70[17] = v69;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(oslog, v72))
  {
    v46 = static UnsafeMutablePointer.allocate(capacity:)();
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v47 = createStorage<A>(capacity:type:)(0, v45, v45);
    v48 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v87 = v46;
    v88 = v47;
    v89 = v48;
    serialize(_:at:)(2, &v87);
    serialize(_:at:)(3, &v87);
    v90 = partial apply for closure #1 in OSLogArguments.append(_:);
    v91 = v61;
    closure #1 in osLogInternal(_:log:type:)(&v90, &v87, &v88, &v89);
    if (v73)
    {
    }

    v90 = partial apply for closure #1 in OSLogArguments.append(_:);
    v91 = v62;
    closure #1 in osLogInternal(_:log:type:)(&v90, &v87, &v88, &v89);
    v90 = partial apply for closure #1 in OSLogArguments.append(_:);
    v91 = v63;
    closure #1 in osLogInternal(_:log:type:)(&v90, &v87, &v88, &v89);
    v90 = partial apply for closure #1 in OSLogArguments.append(_:);
    v91 = v64;
    closure #1 in osLogInternal(_:log:type:)(&v90, &v87, &v88, &v89);
    v90 = partial apply for closure #1 in OSLogArguments.append(_:);
    v91 = v65;
    closure #1 in osLogInternal(_:log:type:)(&v90, &v87, &v88, &v89);
    v90 = partial apply for closure #1 in OSLogArguments.append(_:);
    v91 = v66;
    closure #1 in osLogInternal(_:log:type:)(&v90, &v87, &v88, &v89);
    v90 = partial apply for closure #1 in OSLogArguments.append(_:);
    v91 = v67;
    closure #1 in osLogInternal(_:log:type:)(&v90, &v87, &v88, &v89);
    v90 = partial apply for closure #1 in OSLogArguments.append(_:);
    v91 = v68;
    closure #1 in osLogInternal(_:log:type:)(&v90, &v87, &v88, &v89);
    v90 = partial apply for closure #1 in OSLogArguments.append(_:);
    v91 = v69;
    closure #1 in osLogInternal(_:log:type:)(&v90, &v87, &v88, &v89);
    _os_log_impl(&dword_269912000, oslog, v72, "Persisting sample...\n  systolic: %f\n  diastolic: %f\n  unit: %s", v46, 0x20u);
    destroyStorage<A>(_:count:)(v47, 0, v45);
    destroyStorage<A>(_:count:)(v48, 1, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D6497C0](v46, MEMORY[0x277D84B78]);
  }

  else
  {
  }

  v37 = *(v85 + 408);
  v35 = *(v85 + 352);
  v36 = *(v85 + 328);
  v38 = *(v85 + 320);
  v42 = *(v85 + 312);
  MEMORY[0x277D82BD8](oslog);
  v37(v35, v36);
  outlined init with copy of QuantityPersisting(v38 + OBJC_IVAR____TtC19SiriWellnessIntents29LogBloodPressureIntentHandler_storage, v85 + 56);
  v39 = *(v85 + 80);
  v40 = *(v85 + 88);
  __swift_project_boxed_opaque_existential_1((v85 + 56), v39);
  [v42 systolic];
  v41 = v6;
  [v42 diastolic];
  v43 = v7;
  v44 = [v42 unit];
  if (v44)
  {
    v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v32 = v8;
    MEMORY[0x277D82BD8](v44);
    v33 = v31;
    v34 = v32;
  }

  else
  {
    v33 = 0;
    v34 = 0;
  }

  *(v85 + 432) = v34;
  v30 = (*(v40 + 16) + **(v40 + 16));
  v9 = swift_task_alloc();
  v10.n128_u64[0] = v41;
  v11.n128_u64[0] = v43;
  *(v85 + 440) = v9;
  *v9 = *(v85 + 192);
  v9[1] = LogBloodPressureIntentHandler.handle(intent:);

  return v30(v33, v34, v39, v40, v10, v11);
}

{
  v0[24] = v0;
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  v3 = v0[56];

  v1 = *(v0[24] + 8);

  return v1(v3);
}

uint64_t LogBloodPressureIntentHandler.handle(intent:)(char a1)
{
  v3 = *v1;
  *(v3 + 192) = *v1;
  *(v3 + 456) = a1;

  return MEMORY[0x2822009F8](LogBloodPressureIntentHandler.handle(intent:), 0);
}

uint64_t implicit closure #3 in LogBloodPressureIntentHandler.handle(intent:)(void *a1)
{
  v2 = [a1 unit];
  if (v2)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    MEMORY[0x277D82BD8](v2);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  lazy protocol witness table accessor for type String? and conformance A?();
  return String.init<A>(describing:)();
}

uint64_t @objc closure #1 in LogBloodPressureIntentHandler.handle(intent:)(uint64_t a1, const void *a2, uint64_t a3)
{
  v3[4] = a3;
  v3[3] = a1;
  v3[2] = v3;
  MEMORY[0x277D82BE0](a1);
  v3[5] = _Block_copy(a2);
  MEMORY[0x277D82BE0](a3);
  v5 = swift_task_alloc();
  *(v8 + 48) = v5;
  *v5 = *(v8 + 16);
  v5[1] = @objc closure #1 in LogQuantityIntentHandler.handle(intent:);

  return LogBloodPressureIntentHandler.handle(intent:)(a1);
}

id LogBloodPressureIntentHandler.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t BloodPressurePersistor.isLoggingAuthorized()(uint64_t a1)
{
  v1[4] = a1;
  v1[2] = v1;
  v1[3] = 0;
  v1[3] = a1;
  MEMORY[0x277D82BE0](a1);
  v2 = swift_task_alloc();
  *(v4 + 40) = v2;
  *v2 = *(v4 + 16);
  v2[1] = CycleTrackingFetcher.isReadingAuthorized();

  return isSiriAuthorizedToAccessHealthData(store:)(a1);
}

uint64_t BloodPressurePersistor.save(systolic:diastolic:units:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  *(v5 + 1144) = a3;
  *(v5 + 1136) = a2;
  *(v5 + 1128) = a1;
  *(v5 + 1120) = a5;
  *(v5 + 1112) = a4;
  *(v5 + 536) = v5;
  *(v5 + 544) = 0;
  *(v5 + 552) = 0;
  *(v5 + 504) = 0;
  *(v5 + 512) = 0;
  *(v5 + 560) = 0;
  *(v5 + 600) = 0;
  *(v5 + 608) = 0;
  *(v5 + 616) = 0;
  *(v5 + 664) = 0;
  *(v5 + 672) = 0;
  *(v5 + 680) = 0;
  *(v5 + 688) = 0;
  *(v5 + 696) = 0;
  *(v5 + 704) = 0;
  *(v5 + 712) = 0;
  *(v5 + 720) = 0;
  *(v5 + 728) = 0;
  *(v5 + 520) = 0;
  *(v5 + 528) = 0;
  v6 = type metadata accessor for Date();
  *(v5 + 1152) = v6;
  *(v5 + 1160) = *(v6 - 8);
  *(v5 + 1168) = swift_task_alloc();
  *(v5 + 1176) = swift_task_alloc();
  *(v5 + 1184) = swift_task_alloc();
  *(v5 + 1192) = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  *(v5 + 1200) = v7;
  *(v5 + 1208) = *(v7 - 8);
  *(v5 + 1216) = swift_task_alloc();
  *(v5 + 1224) = swift_task_alloc();
  *(v5 + 1232) = swift_task_alloc();
  *(v5 + 1240) = swift_task_alloc();
  *(v5 + 1248) = swift_task_alloc();
  *(v5 + 1256) = swift_task_alloc();
  *(v5 + 1264) = swift_task_alloc();
  *(v5 + 1272) = swift_task_alloc();
  *(v5 + 1280) = swift_task_alloc();
  *(v5 + 1288) = swift_task_alloc();
  *(v5 + 1296) = swift_task_alloc();
  *(v5 + 1304) = swift_task_alloc();
  *(v5 + 1312) = swift_task_alloc();
  *(v5 + 1320) = swift_task_alloc();
  *(v5 + 1328) = swift_task_alloc();
  *(v5 + 544) = a4;
  *(v5 + 552) = a5;
  *(v5 + 504) = a1;
  *(v5 + 512) = a2;
  *(v5 + 560) = a3;

  return MEMORY[0x2822009F8](BloodPressurePersistor.save(systolic:diastolic:units:), 0);
}

uint64_t BloodPressurePersistor.save(systolic:diastolic:units:)(uint64_t a1, uint64_t a2)
{
  v305 = v2;
  MEMORY[0x28223BE20](a1, a2);
  v292 = v2;
  v3 = *(v2 + 1328);
  v293 = *(v2 + 1208);
  v295 = *(v2 + 1200);
  *(v2 + 536) = v2;
  v294 = Logger.wellnessIntents.unsafeMutableAddressor();
  swift_beginAccess();
  v4 = *(v293 + 16);
  v296 = v4;
  *(v2 + 1336) = v4;
  *(v2 + 1344) = (v293 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v4(v3, v294, v295);
  swift_endAccess();
  v298 = Logger.logObject.getter();
  v297 = static os_log_type_t.debug.getter();
  *(v2 + 1352) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v299 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v298, v297))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v287 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v289 = createStorage<A>(capacity:type:)(0, v287, v287);
    v290 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    *(v2 + 1080) = buf;
    *(v2 + 1088) = v289;
    *(v2 + 1096) = v290;
    serialize(_:at:)(0, (v2 + 1080));
    serialize(_:at:)(0, (v2 + 1080));
    *(v2 + 1104) = v299;
    v291 = swift_task_alloc();
    v291[2] = v2 + 1080;
    v291[3] = v2 + 1088;
    v291[4] = v2 + 1096;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();

    _os_log_impl(&dword_269912000, v298, v297, "Starting to save blood pressure.", buf, 2u);
    destroyStorage<A>(_:count:)(v289, 0, v287);
    destroyStorage<A>(_:count:)(v290, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);
  }

  v281 = *(v2 + 1328);
  v282 = *(v2 + 1200);
  v280 = *(v2 + 1208);
  MEMORY[0x277D82BD8](v298);
  v283 = *(v280 + 8);
  *(v2 + 1360) = v283;
  *(v2 + 1368) = (v280 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v283(v281, v282);
  type metadata accessor for HKQuantityType();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v285 = *MEMORY[0x277CCC980];
  MEMORY[0x277D82BE0](*MEMORY[0x277CCC980]);
  v286 = [ObjCClassFromMetadata quantityTypeForIdentifier_];
  *(v2 + 1376) = v286;
  MEMORY[0x277D82BD8](v285);
  if (!v286)
  {
    goto LABEL_54;
  }

  *(v2 + 600) = v286;
  v277 = swift_getObjCClassFromMetadata();
  v278 = *MEMORY[0x277CCC978];
  MEMORY[0x277D82BE0](*MEMORY[0x277CCC978]);
  v279 = [v277 quantityTypeForIdentifier_];
  *(v2 + 1384) = v279;
  MEMORY[0x277D82BD8](v278);
  if (!v279)
  {
    MEMORY[0x277D82BD8](v286);
LABEL_54:
    v21 = *(v2 + 1224);
    v31 = *(v2 + 1200);
    v30 = Logger.wellnessIntents.unsafeMutableAddressor();
    swift_beginAccess();
    v296(v21, v30, v31);
    swift_endAccess();
    v33 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();
    v34 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v33, v32))
    {
      v26 = static UnsafeMutablePointer.allocate(capacity:)();
      v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v27 = createStorage<A>(capacity:type:)(0, v25, v25);
      v28 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      *(v2 + 568) = v26;
      *(v2 + 576) = v27;
      *(v2 + 584) = v28;
      serialize(_:at:)(0, (v2 + 568));
      serialize(_:at:)(0, (v2 + 568));
      *(v2 + 592) = v34;
      v29 = swift_task_alloc();
      v29[2] = v2 + 568;
      v29[3] = v2 + 576;
      v29[4] = v2 + 584;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();

      _os_log_impl(&dword_269912000, v33, v32, "Could not create any Blood Pressure types.", v26, 2u);
      destroyStorage<A>(_:count:)(v27, 0, v25);
      destroyStorage<A>(_:count:)(v28, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](v26, MEMORY[0x277D84B78]);
    }

    v23 = *(v2 + 1224);
    v24 = *(v2 + 1200);
    MEMORY[0x277D82BD8](v33);
    v283(v23, v24);
    type metadata accessor for LogBloodPressureIntentResponse();
    v200 = LogBloodPressureIntentResponse.__allocating_init(code:userActivity:)(5, 0);
    goto LABEL_57;
  }

  *(v2 + 608) = v279;
  type metadata accessor for HKCorrelationType();
  v274 = swift_getObjCClassFromMetadata();
  v275 = *MEMORY[0x277CCBBA8];
  MEMORY[0x277D82BE0](*MEMORY[0x277CCBBA8]);
  v276 = [v274 correlationTypeForIdentifier_];
  *(v2 + 1392) = v276;
  MEMORY[0x277D82BD8](v275);
  if (!v276)
  {
    MEMORY[0x277D82BD8](v279);
    MEMORY[0x277D82BD8](v286);
    goto LABEL_54;
  }

  v273 = *(v2 + 1136);
  *(v2 + 616) = v276;

  if (v273)
  {
    v267 = *(v2 + 1136);
    v5 = *(v2 + 1320);
    v269 = *(v2 + 1200);
    *(v2 + 520) = *(v2 + 1128);
    *(v2 + 528) = v267;
    v268 = Logger.wellnessIntents.unsafeMutableAddressor();
    swift_beginAccess();
    v296(v5, v268, v269);
    swift_endAccess();
    oslog = Logger.logObject.getter();
    v270 = static os_log_type_t.debug.getter();
    v272 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(oslog, v270))
    {
      v263 = static UnsafeMutablePointer.allocate(capacity:)();
      v262 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v264 = createStorage<A>(capacity:type:)(0, v262, v262);
      v265 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      *(v2 + 1048) = v263;
      *(v2 + 1056) = v264;
      *(v2 + 1064) = v265;
      serialize(_:at:)(0, (v2 + 1048));
      serialize(_:at:)(0, (v2 + 1048));
      *(v2 + 1072) = v272;
      v266 = swift_task_alloc();
      v266[2] = v2 + 1048;
      v266[3] = v2 + 1056;
      v266[4] = v2 + 1064;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();

      _os_log_impl(&dword_269912000, oslog, v270, "Trying to convert unit to HKUnit.", v263, 2u);
      destroyStorage<A>(_:count:)(v264, 0, v262);
      destroyStorage<A>(_:count:)(v265, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](v263, MEMORY[0x277D84B78]);
    }

    v252 = *(v2 + 1320);
    v253 = *(v2 + 1200);
    v254 = *(v2 + 1128);
    MEMORY[0x277D82BD8](oslog);
    v283(v252, v253);
    type metadata accessor for HKUnit();

    v255 = @nonobjc HKUnit.__allocating_init(from:)(v254, v267);
    MEMORY[0x277D82BE0](v255);
    *(v2 + 624) = v255;

    *(v2 + 1424) = v255;
    v258 = *(v2 + 1336);
    v6 = *(v2 + 1304);
    v257 = *(v2 + 1200);
    v256 = Logger.wellnessIntents.unsafeMutableAddressor();
    swift_beginAccess();
    v258(v6, v256, v257);
    swift_endAccess();
    v260 = Logger.logObject.getter();
    v259 = static os_log_type_t.debug.getter();
    v261 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v260, v259))
    {
      v236 = static UnsafeMutablePointer.allocate(capacity:)();
      v235 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v237 = createStorage<A>(capacity:type:)(0, v235, v235);
      v238 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      *(v2 + 984) = v236;
      *(v2 + 992) = v237;
      *(v2 + 1000) = v238;
      serialize(_:at:)(0, (v2 + 984));
      serialize(_:at:)(0, (v2 + 984));
      *(v2 + 1008) = v261;
      v239 = swift_task_alloc();
      v239[2] = v2 + 984;
      v239[3] = v2 + 992;
      v239[4] = v2 + 1000;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();

      _os_log_impl(&dword_269912000, v260, v259, "Starting to convert optional HKUnit to non-optional HKUnit.", v236, 2u);
      destroyStorage<A>(_:count:)(v237, 0, v235);
      destroyStorage<A>(_:count:)(v238, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](v236, MEMORY[0x277D84B78]);
    }

    v234 = *(v2 + 1360);
    v232 = *(v2 + 1304);
    v233 = *(v2 + 1200);
    MEMORY[0x277D82BD8](v260);
    v234(v232, v233);
    if (!v255)
    {
      v49 = *(v2 + 1336);
      v20 = *(v2 + 1232);
      v48 = *(v2 + 1200);
      v47 = Logger.wellnessIntents.unsafeMutableAddressor();
      swift_beginAccess();
      v49(v20, v47, v48);
      swift_endAccess();
      v51 = Logger.logObject.getter();
      v50 = static os_log_type_t.error.getter();
      v52 = _allocateUninitializedArray<A>(_:)();
      if (os_log_type_enabled(v51, v50))
      {
        v43 = static UnsafeMutablePointer.allocate(capacity:)();
        v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v44 = createStorage<A>(capacity:type:)(0, v42, v42);
        v45 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
        *(v2 + 632) = v43;
        *(v2 + 640) = v44;
        *(v2 + 648) = v45;
        serialize(_:at:)(0, (v2 + 632));
        serialize(_:at:)(0, (v2 + 632));
        *(v2 + 656) = v52;
        v46 = swift_task_alloc();
        v46[2] = v2 + 632;
        v46[3] = v2 + 640;
        v46[4] = v2 + 648;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
        lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
        Sequence.forEach(_:)();

        _os_log_impl(&dword_269912000, v51, v50, "Could not create an HKUnit.", v43, 2u);
        destroyStorage<A>(_:count:)(v44, 0, v42);
        destroyStorage<A>(_:count:)(v45, 0, MEMORY[0x277D84F70] + 8);
        MEMORY[0x26D6497C0](v43, MEMORY[0x277D84B78]);
      }

      v37 = *(v2 + 1360);
      v35 = *(v2 + 1232);
      v36 = *(v2 + 1200);
      v38 = *(v2 + 1392);
      v39 = *(v2 + 1384);
      v40 = *(v2 + 1376);
      MEMORY[0x277D82BD8](v51);
      v37(v35, v36);
      type metadata accessor for LogBloodPressureIntentResponse();
      v41 = LogBloodPressureIntentResponse.__allocating_init(code:userActivity:)(5, 0);
      outlined destroy of HealthKitPersistor((v2 + 624));
      MEMORY[0x277D82BD8](v38);
      MEMORY[0x277D82BD8](v39);
      MEMORY[0x277D82BD8](v40);
      v200 = v41;
      goto LABEL_57;
    }

    v11 = *(v2 + 1376);
    v230 = *(v2 + 1384);
    *(v2 + 664) = v255;
    v231 = [v11 isCompatibleWithUnit_];
    MEMORY[0x277D82BE0](v230);
    MEMORY[0x277D82BE0](v255);
    if (v231)
    {
      v229 = [*(v2 + 1384) isCompatibleWithUnit_] ^ 1;
    }

    else
    {
      LOBYTE(v229) = 1;
    }

    MEMORY[0x277D82BD8](*(v2 + 1384));
    MEMORY[0x277D82BD8](v255);
    if (v229)
    {
      v208 = *(v2 + 1336);
      v12 = *(v2 + 1296);
      v207 = *(v2 + 1200);
      v210 = *(v2 + 1384);
      v209 = *(v2 + 1376);
      v206 = Logger.wellnessIntents.unsafeMutableAddressor();
      swift_beginAccess();
      v208(v12, v206, v207);
      swift_endAccess();
      MEMORY[0x277D82BE0](v255);
      v211 = swift_allocObject();
      *(v211 + 16) = v255;
      MEMORY[0x277D82BE0](v209);
      v213 = swift_allocObject();
      *(v213 + 16) = v209;
      MEMORY[0x277D82BE0](v210);
      v215 = swift_allocObject();
      *(v215 + 16) = v210;
      v227 = Logger.logObject.getter();
      v228 = static os_log_type_t.error.getter();
      v217 = swift_allocObject();
      *(v217 + 16) = 64;
      v218 = swift_allocObject();
      *(v218 + 16) = 8;
      v212 = swift_allocObject();
      *(v212 + 16) = partial apply for implicit closure #3 in LogQuantityIntentHandler.handle(intent:);
      *(v212 + 24) = v211;
      v219 = swift_allocObject();
      *(v219 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:);
      *(v219 + 24) = v212;
      v220 = swift_allocObject();
      *(v220 + 16) = 64;
      v221 = swift_allocObject();
      *(v221 + 16) = 8;
      v214 = swift_allocObject();
      *(v214 + 16) = partial apply for implicit closure #3 in LogQuantityIntentHandler.handle(intent:);
      *(v214 + 24) = v213;
      v222 = swift_allocObject();
      *(v222 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:);
      *(v222 + 24) = v214;
      v223 = swift_allocObject();
      *(v223 + 16) = 64;
      v224 = swift_allocObject();
      *(v224 + 16) = 8;
      v216 = swift_allocObject();
      *(v216 + 16) = partial apply for implicit closure #3 in LogQuantityIntentHandler.handle(intent:);
      *(v216 + 24) = v215;
      v225 = swift_allocObject();
      *(v225 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:);
      *(v225 + 24) = v216;
      _allocateUninitializedArray<A>(_:)();
      v226 = v13;

      *v226 = partial apply for closure #1 in OSLogArguments.append(_:);
      v226[1] = v217;

      v226[2] = partial apply for closure #1 in OSLogArguments.append(_:);
      v226[3] = v218;

      v226[4] = partial apply for closure #1 in OSLogArguments.append(_:);
      v226[5] = v219;

      v226[6] = partial apply for closure #1 in OSLogArguments.append(_:);
      v226[7] = v220;

      v226[8] = partial apply for closure #1 in OSLogArguments.append(_:);
      v226[9] = v221;

      v226[10] = partial apply for closure #1 in OSLogArguments.append(_:);
      v226[11] = v222;

      v226[12] = partial apply for closure #1 in OSLogArguments.append(_:);
      v226[13] = v223;

      v226[14] = partial apply for closure #1 in OSLogArguments.append(_:);
      v226[15] = v224;

      v226[16] = partial apply for closure #1 in OSLogArguments.append(_:);
      v226[17] = v225;
      _finalizeUninitializedArray<A>(_:)();

      if (os_log_type_enabled(v227, v228))
      {
        v203 = static UnsafeMutablePointer.allocate(capacity:)();
        v202 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v204 = createStorage<A>(capacity:type:)(3, v202, v202);
        v205 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
        v300 = v203;
        v301 = v204;
        v302 = v205;
        serialize(_:at:)(2, &v300);
        serialize(_:at:)(3, &v300);
        v303 = partial apply for closure #1 in OSLogArguments.append(_:);
        v304 = v217;
        closure #1 in osLogInternal(_:log:type:)(&v303, &v300, &v301, &v302);
        v303 = partial apply for closure #1 in OSLogArguments.append(_:);
        v304 = v218;
        closure #1 in osLogInternal(_:log:type:)(&v303, &v300, &v301, &v302);
        v303 = partial apply for closure #1 in OSLogArguments.append(_:);
        v304 = v219;
        closure #1 in osLogInternal(_:log:type:)(&v303, &v300, &v301, &v302);
        v303 = partial apply for closure #1 in OSLogArguments.append(_:);
        v304 = v220;
        closure #1 in osLogInternal(_:log:type:)(&v303, &v300, &v301, &v302);
        v303 = partial apply for closure #1 in OSLogArguments.append(_:);
        v304 = v221;
        closure #1 in osLogInternal(_:log:type:)(&v303, &v300, &v301, &v302);
        v303 = partial apply for closure #1 in OSLogArguments.append(_:);
        v304 = v222;
        closure #1 in osLogInternal(_:log:type:)(&v303, &v300, &v301, &v302);
        v303 = partial apply for closure #1 in OSLogArguments.append(_:);
        v304 = v223;
        closure #1 in osLogInternal(_:log:type:)(&v303, &v300, &v301, &v302);
        v303 = partial apply for closure #1 in OSLogArguments.append(_:);
        v304 = v224;
        closure #1 in osLogInternal(_:log:type:)(&v303, &v300, &v301, &v302);
        v303 = partial apply for closure #1 in OSLogArguments.append(_:);
        v304 = v225;
        closure #1 in osLogInternal(_:log:type:)(&v303, &v300, &v301, &v302);
        _os_log_impl(&dword_269912000, v227, v228, "%@ is incompatible with %@ or %@.", v203, 0x20u);
        destroyStorage<A>(_:count:)(v204, 3, v202);
        destroyStorage<A>(_:count:)(v205, 0, MEMORY[0x277D84F70] + 8);
        MEMORY[0x26D6497C0](v203, MEMORY[0x277D84B78]);
      }

      else
      {
      }

      v195 = *(v2 + 1360);
      v193 = *(v2 + 1296);
      v194 = *(v2 + 1200);
      v196 = *(v2 + 1392);
      v197 = *(v2 + 1384);
      v198 = *(v2 + 1376);
      MEMORY[0x277D82BD8](v227);
      v195(v193, v194);
      type metadata accessor for LogBloodPressureIntentResponse();
      v199 = LogBloodPressureIntentResponse.__allocating_init(code:userActivity:)(102, 0);
      MEMORY[0x277D82BD8](v255);
      outlined destroy of HealthKitPersistor((v2 + 624));
      MEMORY[0x277D82BD8](v196);
      MEMORY[0x277D82BD8](v197);
      MEMORY[0x277D82BD8](v198);
      v200 = v199;
LABEL_57:

      v22 = *(*(v2 + 536) + 8);

      return v22(v200);
    }

    v189 = *(v2 + 1336);
    v14 = *(v2 + 1288);
    v188 = *(v2 + 1200);
    v184 = *(v2 + 1192);
    v183 = *(v2 + 1184);
    v185 = *(v2 + 1152);
    v182 = *(v2 + 1160);
    Date.init()();
    v186 = *(v182 + 16);
    *(v2 + 1432) = v186;
    *(v2 + 1440) = (v182 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v186(v183, v184, v185);
    v187 = Logger.wellnessIntents.unsafeMutableAddressor();
    swift_beginAccess();
    v189(v14, v187, v188);
    swift_endAccess();
    v191 = Logger.logObject.getter();
    v190 = static os_log_type_t.debug.getter();
    v192 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v191, v190))
    {
      v178 = static UnsafeMutablePointer.allocate(capacity:)();
      v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v179 = createStorage<A>(capacity:type:)(0, v177, v177);
      v180 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      *(v2 + 952) = v178;
      *(v2 + 960) = v179;
      *(v2 + 968) = v180;
      serialize(_:at:)(0, (v2 + 952));
      serialize(_:at:)(0, (v2 + 952));
      *(v2 + 976) = v192;
      v181 = swift_task_alloc();
      v181[2] = v2 + 952;
      v181[3] = v2 + 960;
      v181[4] = v2 + 968;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();

      _os_log_impl(&dword_269912000, v191, v190, "Creating HKQuantity for Systolic.", v178, 2u);
      destroyStorage<A>(_:count:)(v179, 0, v177);
      destroyStorage<A>(_:count:)(v180, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](v178, MEMORY[0x277D84B78]);
    }

    v165 = *(v2 + 1360);
    v163 = *(v2 + 1288);
    v164 = *(v2 + 1200);
    v167 = *(v2 + 1192);
    v168 = *(v2 + 1184);
    v170 = *(v2 + 1176);
    v171 = *(v2 + 1168);
    v169 = *(v2 + 1152);
    v166 = *(v2 + 1112);
    v172 = *(v2 + 1376);
    MEMORY[0x277D82BD8](v191);
    v165(v163, v164);
    type metadata accessor for HKQuantity();
    MEMORY[0x277D82BE0](v255);
    quantity = @nonobjc HKQuantity.__allocating_init(unit:doubleValue:)(v255, v166);
    *(v2 + 1448) = quantity;
    *(v2 + 672) = quantity;
    type metadata accessor for HKQuantitySample();
    MEMORY[0x277D82BE0](v172);
    MEMORY[0x277D82BE0](quantity);
    v186(v170, v167, v169);
    v186(v171, v168, v169);
    v173 = @nonobjc HKQuantitySample.__allocating_init(type:quantity:start:end:)(v172, quantity, v170, v171);
    *(v2 + 1456) = v173;
    *(v2 + 680) = v173;
    identifier = *MEMORY[0x277CCC980];
    MEMORY[0x277D82BE0](*MEMORY[0x277CCC980]);
    v176 = validateQuantity(identifier:quantity:)(identifier, quantity);
    MEMORY[0x277D82BD8](identifier);
    if (!v176)
    {
      v159 = *(v2 + 1336);
      v15 = *(v2 + 1280);
      v158 = *(v2 + 1200);
      v157 = Logger.wellnessIntents.unsafeMutableAddressor();
      swift_beginAccess();
      v159(v15, v157, v158);
      swift_endAccess();
      v161 = Logger.logObject.getter();
      v160 = static os_log_type_t.error.getter();
      v162 = _allocateUninitializedArray<A>(_:)();
      if (os_log_type_enabled(v161, v160))
      {
        v153 = static UnsafeMutablePointer.allocate(capacity:)();
        v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v154 = createStorage<A>(capacity:type:)(0, v152, v152);
        v155 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
        *(v2 + 920) = v153;
        *(v2 + 928) = v154;
        *(v2 + 936) = v155;
        serialize(_:at:)(0, (v2 + 920));
        serialize(_:at:)(0, (v2 + 920));
        *(v2 + 944) = v162;
        v156 = swift_task_alloc();
        v156[2] = v2 + 920;
        v156[3] = v2 + 928;
        v156[4] = v2 + 936;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
        lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
        Sequence.forEach(_:)();

        _os_log_impl(&dword_269912000, v161, v160, "Quantity validation failed - systolic blood pressure value outside valid bounds.", v153, 2u);
        destroyStorage<A>(_:count:)(v154, 0, v152);
        destroyStorage<A>(_:count:)(v155, 0, MEMORY[0x277D84F70] + 8);
        MEMORY[0x26D6497C0](v153, MEMORY[0x277D84B78]);
      }

      v142 = *(v2 + 1360);
      v140 = *(v2 + 1280);
      v141 = *(v2 + 1200);
      v145 = *(v2 + 1192);
      v144 = *(v2 + 1184);
      v146 = *(v2 + 1152);
      v148 = *(v2 + 1392);
      v149 = *(v2 + 1384);
      v150 = *(v2 + 1376);
      v143 = *(v2 + 1160);
      MEMORY[0x277D82BD8](v161);
      v142(v140, v141);
      type metadata accessor for LogBloodPressureIntentResponse();
      v151 = LogBloodPressureIntentResponse.__allocating_init(code:userActivity:)(102, 0);
      MEMORY[0x277D82BD8](v173);
      MEMORY[0x277D82BD8](quantity);
      v147 = *(v143 + 8);
      v147(v144, v146);
      v147(v145, v146);
      MEMORY[0x277D82BD8](v255);
      outlined destroy of HealthKitPersistor((v2 + 624));
      MEMORY[0x277D82BD8](v148);
      MEMORY[0x277D82BD8](v149);
      MEMORY[0x277D82BD8](v150);
      v200 = v151;
      goto LABEL_57;
    }

    v136 = *(v2 + 1336);
    v16 = *(v2 + 1272);
    v135 = *(v2 + 1200);
    v134 = Logger.wellnessIntents.unsafeMutableAddressor();
    swift_beginAccess();
    v136(v16, v134, v135);
    swift_endAccess();
    v138 = Logger.logObject.getter();
    v137 = static os_log_type_t.debug.getter();
    v139 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v138, v137))
    {
      v130 = static UnsafeMutablePointer.allocate(capacity:)();
      v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v131 = createStorage<A>(capacity:type:)(0, v129, v129);
      v132 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      *(v2 + 888) = v130;
      *(v2 + 896) = v131;
      *(v2 + 904) = v132;
      serialize(_:at:)(0, (v2 + 888));
      serialize(_:at:)(0, (v2 + 888));
      *(v2 + 912) = v139;
      v133 = swift_task_alloc();
      v133[2] = v2 + 888;
      v133[3] = v2 + 896;
      v133[4] = v2 + 904;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();

      _os_log_impl(&dword_269912000, v138, v137, "Creating HKQuantity for Diastolic.", v130, 2u);
      destroyStorage<A>(_:count:)(v131, 0, v129);
      destroyStorage<A>(_:count:)(v132, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](v130, MEMORY[0x277D84B78]);
    }

    v117 = *(v2 + 1360);
    v115 = *(v2 + 1272);
    v116 = *(v2 + 1200);
    v119 = *(v2 + 1192);
    v120 = *(v2 + 1184);
    v122 = *(v2 + 1176);
    v123 = *(v2 + 1168);
    v121 = *(v2 + 1152);
    v118 = *(v2 + 1120);
    v124 = *(v2 + 1384);
    MEMORY[0x277D82BD8](v138);
    v117(v115, v116);
    MEMORY[0x277D82BE0](v255);
    v126 = @nonobjc HKQuantity.__allocating_init(unit:doubleValue:)(v255, v118);
    *(v2 + 1464) = v126;
    *(v2 + 688) = v126;
    MEMORY[0x277D82BE0](v124);
    MEMORY[0x277D82BE0](v126);
    v186(v122, v119, v121);
    v186(v123, v120, v121);
    v125 = @nonobjc HKQuantitySample.__allocating_init(type:quantity:start:end:)(v124, v126, v122, v123);
    *(v2 + 1472) = v125;
    *(v2 + 696) = v125;
    v127 = *MEMORY[0x277CCC978];
    MEMORY[0x277D82BE0](*MEMORY[0x277CCC978]);
    v128 = validateQuantity(identifier:quantity:)(v127, v126);
    MEMORY[0x277D82BD8](v127);
    if (!v128)
    {
      v111 = *(v2 + 1336);
      v17 = *(v2 + 1264);
      v110 = *(v2 + 1200);
      v109 = Logger.wellnessIntents.unsafeMutableAddressor();
      swift_beginAccess();
      v111(v17, v109, v110);
      swift_endAccess();
      v113 = Logger.logObject.getter();
      v112 = static os_log_type_t.error.getter();
      v114 = _allocateUninitializedArray<A>(_:)();
      if (os_log_type_enabled(v113, v112))
      {
        v105 = static UnsafeMutablePointer.allocate(capacity:)();
        v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v106 = createStorage<A>(capacity:type:)(0, v104, v104);
        v107 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
        *(v2 + 856) = v105;
        *(v2 + 864) = v106;
        *(v2 + 872) = v107;
        serialize(_:at:)(0, (v2 + 856));
        serialize(_:at:)(0, (v2 + 856));
        *(v2 + 880) = v114;
        v108 = swift_task_alloc();
        v108[2] = v2 + 856;
        v108[3] = v2 + 864;
        v108[4] = v2 + 872;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
        lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
        Sequence.forEach(_:)();

        _os_log_impl(&dword_269912000, v113, v112, "Quantity validation failed - diastolic blood pressure value outside valid bounds.", v105, 2u);
        destroyStorage<A>(_:count:)(v106, 0, v104);
        destroyStorage<A>(_:count:)(v107, 0, MEMORY[0x277D84F70] + 8);
        MEMORY[0x26D6497C0](v105, MEMORY[0x277D84B78]);
      }

      v94 = *(v2 + 1360);
      v92 = *(v2 + 1264);
      v93 = *(v2 + 1200);
      v97 = *(v2 + 1192);
      v96 = *(v2 + 1184);
      v98 = *(v2 + 1152);
      v100 = *(v2 + 1392);
      v101 = *(v2 + 1384);
      v102 = *(v2 + 1376);
      v95 = *(v2 + 1160);
      MEMORY[0x277D82BD8](v113);
      v94(v92, v93);
      type metadata accessor for LogBloodPressureIntentResponse();
      v103 = LogBloodPressureIntentResponse.__allocating_init(code:userActivity:)(102, 0);
      MEMORY[0x277D82BD8](v125);
      MEMORY[0x277D82BD8](v126);
      MEMORY[0x277D82BD8](v173);
      MEMORY[0x277D82BD8](quantity);
      v99 = *(v95 + 8);
      v99(v96, v98);
      v99(v97, v98);
      MEMORY[0x277D82BD8](v255);
      outlined destroy of HealthKitPersistor((v2 + 624));
      MEMORY[0x277D82BD8](v100);
      MEMORY[0x277D82BD8](v101);
      MEMORY[0x277D82BD8](v102);
      v200 = v103;
      goto LABEL_57;
    }

    v88 = *(v2 + 1336);
    v18 = *(v2 + 1256);
    v87 = *(v2 + 1200);
    v86 = Logger.wellnessIntents.unsafeMutableAddressor();
    swift_beginAccess();
    v88(v18, v86, v87);
    swift_endAccess();
    v90 = Logger.logObject.getter();
    v89 = static os_log_type_t.debug.getter();
    v91 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v90, v89))
    {
      v82 = static UnsafeMutablePointer.allocate(capacity:)();
      v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v83 = createStorage<A>(capacity:type:)(0, v81, v81);
      v84 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      *(v2 + 824) = v82;
      *(v2 + 832) = v83;
      *(v2 + 840) = v84;
      serialize(_:at:)(0, (v2 + 824));
      serialize(_:at:)(0, (v2 + 824));
      *(v2 + 848) = v91;
      v85 = swift_task_alloc();
      v85[2] = v2 + 824;
      v85[3] = v2 + 832;
      v85[4] = v2 + 840;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();

      _os_log_impl(&dword_269912000, v90, v89, "Creating HKCorrelation.", v82, 2u);
      destroyStorage<A>(_:count:)(v83, 0, v81);
      destroyStorage<A>(_:count:)(v84, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](v82, MEMORY[0x277D84B78]);
    }

    v64 = *(v2 + 1360);
    v77 = *(v2 + 1336);
    v63 = *(v2 + 1256);
    v73 = *(v2 + 1248);
    v76 = *(v2 + 1200);
    v66 = *(v2 + 1192);
    v67 = *(v2 + 1184);
    v70 = *(v2 + 1176);
    v71 = *(v2 + 1168);
    v68 = *(v2 + 1152);
    v69 = *(v2 + 1392);
    MEMORY[0x277D82BD8](v90);
    v64(v63, v76);
    type metadata accessor for HKSample();
    _allocateUninitializedArray<A>(_:)();
    v65 = v19;
    MEMORY[0x277D82BE0](v173);
    *v65 = v173;
    MEMORY[0x277D82BE0](v125);
    v65[1] = v125;
    _finalizeUninitializedArray<A>(_:)();
    lazy protocol witness table accessor for type HKSample and conformance NSObject();
    v72 = Set.init(arrayLiteral:)();
    *(v2 + 1480) = v72;
    *(v2 + 704) = v72;
    type metadata accessor for HKCorrelation();
    MEMORY[0x277D82BE0](v69);
    v186(v70, v66, v68);
    v186(v71, v67, v68);

    v74 = @nonobjc HKCorrelation.__allocating_init(type:start:end:objects:)(v69, v70, v71, v72);
    *(v2 + 1488) = v74;
    *(v2 + 712) = v74;
    v75 = Logger.wellnessIntents.unsafeMutableAddressor();
    swift_beginAccess();
    v77(v73, v75, v76);
    swift_endAccess();
    v79 = Logger.logObject.getter();
    v78 = static os_log_type_t.debug.getter();
    v80 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v79, v78))
    {
      v59 = static UnsafeMutablePointer.allocate(capacity:)();
      v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v60 = createStorage<A>(capacity:type:)(0, v58, v58);
      v61 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      *(v2 + 792) = v59;
      *(v2 + 800) = v60;
      *(v2 + 808) = v61;
      serialize(_:at:)(0, (v2 + 792));
      serialize(_:at:)(0, (v2 + 792));
      *(v2 + 816) = v80;
      v62 = swift_task_alloc();
      v62[2] = v2 + 792;
      v62[3] = v2 + 800;
      v62[4] = v2 + 808;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();

      _os_log_impl(&dword_269912000, v79, v78, "Trying to save to store.", v59, 2u);
      destroyStorage<A>(_:count:)(v60, 0, v58);
      destroyStorage<A>(_:count:)(v61, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](v59, MEMORY[0x277D84B78]);
    }

    *(v2 + 1496) = 0;
    v55 = *(v2 + 1360);
    v53 = *(v2 + 1248);
    v54 = *(v2 + 1200);
    v57 = *(v2 + 1144);
    MEMORY[0x277D82BD8](v79);
    v55(v53, v54);
    MEMORY[0x277D82BE0](v57);
    *(v2 + 16) = *(v2 + 536);
    *(v2 + 56) = v201;
    *(v2 + 24) = BloodPressurePersistor.save(systolic:diastolic:units:);
    v56 = swift_continuation_init();
    *(v2 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccyyts5Error_pGMd, &_sSccyyts5Error_pGMR);
    *(v2 + 112) = v56;
    *(v2 + 80) = MEMORY[0x277D85DD0];
    *(v2 + 88) = 1107296256;
    *(v2 + 92) = 0;
    *(v2 + 96) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned Bool, @unowned NSError?) -> () with result type () zero on error;
    *(v2 + 104) = &block_descriptor_12;
    [v57 saveObject:v74 withCompletion:?];

    return MEMORY[0x282200938](v2 + 16);
  }

  else
  {
    v7 = *(v2 + 1312);
    v248 = *(v2 + 1200);
    v247 = Logger.wellnessIntents.unsafeMutableAddressor();
    swift_beginAccess();
    v296(v7, v247, v248);
    swift_endAccess();
    log = Logger.logObject.getter();
    v249 = static os_log_type_t.debug.getter();
    v251 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(log, v249))
    {
      v243 = static UnsafeMutablePointer.allocate(capacity:)();
      v242 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v244 = createStorage<A>(capacity:type:)(0, v242, v242);
      v245 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      *(v2 + 1016) = v243;
      *(v2 + 1024) = v244;
      *(v2 + 1032) = v245;
      serialize(_:at:)(0, (v2 + 1016));
      serialize(_:at:)(0, (v2 + 1016));
      *(v2 + 1040) = v251;
      v246 = swift_task_alloc();
      v246[2] = v2 + 1016;
      v246[3] = v2 + 1024;
      v246[4] = v2 + 1032;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();

      _os_log_impl(&dword_269912000, log, v249, "Using preferred unit.", v243, 2u);
      destroyStorage<A>(_:count:)(v244, 0, v242);
      destroyStorage<A>(_:count:)(v245, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](v243, MEMORY[0x277D84B78]);
    }

    *(v2 + 1400) = 0;
    v240 = *(v2 + 1312);
    v241 = *(v2 + 1200);
    MEMORY[0x277D82BD8](log);
    v283(v240, v241);
    v8 = swift_task_alloc();
    v292[176] = v8;
    *v8 = v292[67];
    v8[1] = BloodPressurePersistor.save(systolic:diastolic:units:);
    v9 = v292[143];

    return BloodPressurePersistor.preferredUnit()(v9);
  }
}

uint64_t BloodPressurePersistor.save(systolic:diastolic:units:)(uint64_t a1)
{
  v3 = *v1;
  *(v3 + 536) = *v1;
  *(v3 + 1416) = a1;

  return MEMORY[0x2822009F8](BloodPressurePersistor.save(systolic:diastolic:units:), 0);
}

{
  v50 = v1;
  v36 = v1[188];
  v35 = v1[167];
  v31 = v1[152];
  v34 = v1[150];
  v32 = v1[143];
  v1[67] = v1;
  swift_willThrow();
  MEMORY[0x277D82BD8](v32);
  v2 = v36;
  v1[90] = v36;
  v33 = Logger.wellnessIntents.unsafeMutableAddressor();
  swift_beginAccess();
  v35(v31, v33, v34);
  swift_endAccess();
  v3 = v36;
  v37 = swift_allocObject();
  *(v37 + 16) = v36;
  v43 = Logger.logObject.getter();
  v44 = static os_log_type_t.error.getter();
  v39 = swift_allocObject();
  *(v39 + 16) = 32;
  v40 = swift_allocObject();
  *(v40 + 16) = 8;
  v38 = swift_allocObject();
  *(v38 + 16) = partial apply for implicit closure #5 in HealthKitPersistor.save(quantityIdentifier:value:units:);
  *(v38 + 24) = v37;
  v41 = swift_allocObject();
  *(v41 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v41 + 24) = v38;
  _allocateUninitializedArray<A>(_:)();
  v42 = v4;

  *v42 = partial apply for closure #1 in OSLogArguments.append(_:);
  v42[1] = v39;

  v42[2] = partial apply for closure #1 in OSLogArguments.append(_:);
  v42[3] = v40;

  v42[4] = partial apply for closure #1 in OSLogArguments.append(_:);
  v42[5] = v41;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v43, v44))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v28 = createStorage<A>(capacity:type:)(0, v26, v26);
    v29 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v45 = buf;
    v46 = v28;
    v47 = v29;
    serialize(_:at:)(2, &v45);
    serialize(_:at:)(1, &v45);
    v48 = partial apply for closure #1 in OSLogArguments.append(_:);
    v49 = v39;
    closure #1 in osLogInternal(_:log:type:)(&v48, &v45, &v46, &v47);
    v48 = partial apply for closure #1 in OSLogArguments.append(_:);
    v49 = v40;
    closure #1 in osLogInternal(_:log:type:)(&v48, &v45, &v46, &v47);
    v48 = partial apply for closure #1 in OSLogArguments.append(_:);
    v49 = v41;
    closure #1 in osLogInternal(_:log:type:)(&v48, &v45, &v46, &v47);
    _os_log_impl(&dword_269912000, v43, v44, "Failed to persist sample. Error: %s", buf, 0xCu);
    destroyStorage<A>(_:count:)(v28, 0, v26);
    destroyStorage<A>(_:count:)(v29, 1, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);
  }

  else
  {
  }

  v10 = v30[188];
  v11 = v30[186];
  v12 = v30[184];
  v13 = v30[183];
  v14 = v30[182];
  v15 = v30[181];
  v9 = v30[170];
  v7 = v30[152];
  v8 = v30[150];
  v18 = v30[149];
  v17 = v30[148];
  v19 = v30[144];
  v21 = v30[178];
  v22 = v30[174];
  v23 = v30[173];
  v24 = v30[172];
  v16 = v30[145];
  MEMORY[0x277D82BD8](v43);
  v9(v7, v8);
  type metadata accessor for LogBloodPressureIntentResponse();
  v25 = LogBloodPressureIntentResponse.__allocating_init(code:userActivity:)(5, 0);

  MEMORY[0x277D82BD8](v11);

  MEMORY[0x277D82BD8](v12);
  MEMORY[0x277D82BD8](v13);
  MEMORY[0x277D82BD8](v14);
  MEMORY[0x277D82BD8](v15);
  v20 = *(v16 + 8);
  v20(v17, v19);
  v20(v18, v19);
  MEMORY[0x277D82BD8](v21);
  outlined destroy of HealthKitPersistor(v30 + 78);
  MEMORY[0x277D82BD8](v22);
  MEMORY[0x277D82BD8](v23);
  MEMORY[0x277D82BD8](v24);

  v5 = *(v30[67] + 8);

  return v5(v25);
}

uint64_t BloodPressurePersistor.save(systolic:diastolic:units:)()
{
  v240 = v0;
  v1 = v0[177];
  v226 = v1;
  v0[67] = v0;
  MEMORY[0x277D82BE0](v1);
  v0[78] = v226;
  v227 = v0[177];
  v228 = v0[175];
  v0[178] = v227;
  v231 = v0[167];
  v2 = v0[163];
  v230 = v0[150];
  v229 = Logger.wellnessIntents.unsafeMutableAddressor();
  swift_beginAccess();
  v231(v2, v229, v230);
  swift_endAccess();
  v233 = Logger.logObject.getter();
  v232 = static os_log_type_t.debug.getter();
  v234 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v233, v232))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v220 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v222 = createStorage<A>(capacity:type:)(0, v220, v220);
    v223 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    *(v225 + 984) = buf;
    *(v225 + 992) = v222;
    *(v225 + 1000) = v223;
    serialize(_:at:)(0, (v225 + 984));
    serialize(_:at:)(0, (v225 + 984));
    *(v225 + 1008) = v234;
    v224 = swift_task_alloc();
    v224[2] = v225 + 984;
    v224[3] = v225 + 992;
    v224[4] = v225 + 1000;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();
    if (v228)
    {
    }

    _os_log_impl(&dword_269912000, v233, v232, "Starting to convert optional HKUnit to non-optional HKUnit.", buf, 2u);
    destroyStorage<A>(_:count:)(v222, 0, v220);
    destroyStorage<A>(_:count:)(v223, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);

    v219 = 0;
  }

  else
  {

    v219 = v228;
  }

  v218 = *(v225 + 1360);
  v216 = *(v225 + 1304);
  v217 = *(v225 + 1200);
  MEMORY[0x277D82BD8](v233);
  v218(v216, v217);
  if (!v227)
  {
    v29 = *(v225 + 1336);
    v13 = *(v225 + 1232);
    v28 = *(v225 + 1200);
    v27 = Logger.wellnessIntents.unsafeMutableAddressor();
    swift_beginAccess();
    v29(v13, v27, v28);
    swift_endAccess();
    v31 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();
    v32 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v31, v30))
    {
      v23 = static UnsafeMutablePointer.allocate(capacity:)();
      v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v24 = createStorage<A>(capacity:type:)(0, v22, v22);
      v25 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      *(v225 + 632) = v23;
      *(v225 + 640) = v24;
      *(v225 + 648) = v25;
      serialize(_:at:)(0, (v225 + 632));
      serialize(_:at:)(0, (v225 + 632));
      *(v225 + 656) = v32;
      v26 = swift_task_alloc();
      v26[2] = v225 + 632;
      v26[3] = v225 + 640;
      v26[4] = v225 + 648;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();
      if (v219)
      {
      }

      _os_log_impl(&dword_269912000, v31, v30, "Could not create an HKUnit.", v23, 2u);
      destroyStorage<A>(_:count:)(v24, 0, v22);
      destroyStorage<A>(_:count:)(v25, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](v23, MEMORY[0x277D84B78]);
    }

    else
    {
    }

    v17 = *(v225 + 1360);
    v15 = *(v225 + 1232);
    v16 = *(v225 + 1200);
    v18 = *(v225 + 1392);
    v19 = *(v225 + 1384);
    v20 = *(v225 + 1376);
    MEMORY[0x277D82BD8](v31);
    v17(v15, v16);
    type metadata accessor for LogBloodPressureIntentResponse();
    v21 = LogBloodPressureIntentResponse.__allocating_init(code:userActivity:)(5, 0);
    outlined destroy of HealthKitPersistor((v225 + 624));
    MEMORY[0x277D82BD8](v18);
    MEMORY[0x277D82BD8](v19);
    MEMORY[0x277D82BD8](v20);
    v184 = v21;
    goto LABEL_60;
  }

  v3 = *(v225 + 1376);
  v214 = *(v225 + 1384);
  *(v225 + 664) = v227;
  v215 = [v3 isCompatibleWithUnit_];
  MEMORY[0x277D82BE0](v214);
  MEMORY[0x277D82BE0](v227);
  if (v215)
  {
    v213 = [*(v225 + 1384) isCompatibleWithUnit_] ^ 1;
  }

  else
  {
    LOBYTE(v213) = 1;
  }

  MEMORY[0x277D82BD8](*(v225 + 1384));
  MEMORY[0x277D82BD8](v227);
  if (v213)
  {
    v192 = *(v225 + 1336);
    v4 = *(v225 + 1296);
    v191 = *(v225 + 1200);
    v194 = *(v225 + 1384);
    v193 = *(v225 + 1376);
    v190 = Logger.wellnessIntents.unsafeMutableAddressor();
    swift_beginAccess();
    v192(v4, v190, v191);
    swift_endAccess();
    MEMORY[0x277D82BE0](v227);
    v195 = swift_allocObject();
    *(v195 + 16) = v227;
    MEMORY[0x277D82BE0](v193);
    v197 = swift_allocObject();
    *(v197 + 16) = v193;
    MEMORY[0x277D82BE0](v194);
    v199 = swift_allocObject();
    *(v199 + 16) = v194;
    oslog = Logger.logObject.getter();
    v212 = static os_log_type_t.error.getter();
    v201 = swift_allocObject();
    *(v201 + 16) = 64;
    v202 = swift_allocObject();
    *(v202 + 16) = 8;
    v196 = swift_allocObject();
    *(v196 + 16) = partial apply for implicit closure #3 in LogQuantityIntentHandler.handle(intent:);
    *(v196 + 24) = v195;
    v203 = swift_allocObject();
    *(v203 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:);
    *(v203 + 24) = v196;
    v204 = swift_allocObject();
    *(v204 + 16) = 64;
    v205 = swift_allocObject();
    *(v205 + 16) = 8;
    v198 = swift_allocObject();
    *(v198 + 16) = partial apply for implicit closure #3 in LogQuantityIntentHandler.handle(intent:);
    *(v198 + 24) = v197;
    v206 = swift_allocObject();
    *(v206 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:);
    *(v206 + 24) = v198;
    v207 = swift_allocObject();
    *(v207 + 16) = 64;
    v208 = swift_allocObject();
    *(v208 + 16) = 8;
    v200 = swift_allocObject();
    *(v200 + 16) = partial apply for implicit closure #3 in LogQuantityIntentHandler.handle(intent:);
    *(v200 + 24) = v199;
    v209 = swift_allocObject();
    *(v209 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:);
    *(v209 + 24) = v200;
    _allocateUninitializedArray<A>(_:)();
    v210 = v5;

    *v210 = partial apply for closure #1 in OSLogArguments.append(_:);
    v210[1] = v201;

    v210[2] = partial apply for closure #1 in OSLogArguments.append(_:);
    v210[3] = v202;

    v210[4] = partial apply for closure #1 in OSLogArguments.append(_:);
    v210[5] = v203;

    v210[6] = partial apply for closure #1 in OSLogArguments.append(_:);
    v210[7] = v204;

    v210[8] = partial apply for closure #1 in OSLogArguments.append(_:);
    v210[9] = v205;

    v210[10] = partial apply for closure #1 in OSLogArguments.append(_:);
    v210[11] = v206;

    v210[12] = partial apply for closure #1 in OSLogArguments.append(_:);
    v210[13] = v207;

    v210[14] = partial apply for closure #1 in OSLogArguments.append(_:);
    v210[15] = v208;

    v210[16] = partial apply for closure #1 in OSLogArguments.append(_:);
    v210[17] = v209;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(oslog, v212))
    {
      v187 = static UnsafeMutablePointer.allocate(capacity:)();
      v186 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v188 = createStorage<A>(capacity:type:)(3, v186, v186);
      v189 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v235 = v187;
      v236 = v188;
      v237 = v189;
      serialize(_:at:)(2, &v235);
      serialize(_:at:)(3, &v235);
      v238 = partial apply for closure #1 in OSLogArguments.append(_:);
      v239 = v201;
      closure #1 in osLogInternal(_:log:type:)(&v238, &v235, &v236, &v237);
      if (v219)
      {
      }

      v238 = partial apply for closure #1 in OSLogArguments.append(_:);
      v239 = v202;
      closure #1 in osLogInternal(_:log:type:)(&v238, &v235, &v236, &v237);
      v238 = partial apply for closure #1 in OSLogArguments.append(_:);
      v239 = v203;
      closure #1 in osLogInternal(_:log:type:)(&v238, &v235, &v236, &v237);
      v238 = partial apply for closure #1 in OSLogArguments.append(_:);
      v239 = v204;
      closure #1 in osLogInternal(_:log:type:)(&v238, &v235, &v236, &v237);
      v238 = partial apply for closure #1 in OSLogArguments.append(_:);
      v239 = v205;
      closure #1 in osLogInternal(_:log:type:)(&v238, &v235, &v236, &v237);
      v238 = partial apply for closure #1 in OSLogArguments.append(_:);
      v239 = v206;
      closure #1 in osLogInternal(_:log:type:)(&v238, &v235, &v236, &v237);
      v238 = partial apply for closure #1 in OSLogArguments.append(_:);
      v239 = v207;
      closure #1 in osLogInternal(_:log:type:)(&v238, &v235, &v236, &v237);
      v238 = partial apply for closure #1 in OSLogArguments.append(_:);
      v239 = v208;
      closure #1 in osLogInternal(_:log:type:)(&v238, &v235, &v236, &v237);
      v238 = partial apply for closure #1 in OSLogArguments.append(_:);
      v239 = v209;
      closure #1 in osLogInternal(_:log:type:)(&v238, &v235, &v236, &v237);
      _os_log_impl(&dword_269912000, oslog, v212, "%@ is incompatible with %@ or %@.", v187, 0x20u);
      destroyStorage<A>(_:count:)(v188, 3, v186);
      destroyStorage<A>(_:count:)(v189, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](v187, MEMORY[0x277D84B78]);
    }

    else
    {
    }

    v179 = *(v225 + 1360);
    v177 = *(v225 + 1296);
    v178 = *(v225 + 1200);
    v180 = *(v225 + 1392);
    v181 = *(v225 + 1384);
    v182 = *(v225 + 1376);
    MEMORY[0x277D82BD8](oslog);
    v179(v177, v178);
    type metadata accessor for LogBloodPressureIntentResponse();
    v183 = LogBloodPressureIntentResponse.__allocating_init(code:userActivity:)(102, 0);
    MEMORY[0x277D82BD8](v227);
    outlined destroy of HealthKitPersistor((v225 + 624));
    MEMORY[0x277D82BD8](v180);
    MEMORY[0x277D82BD8](v181);
    MEMORY[0x277D82BD8](v182);
    v184 = v183;
    goto LABEL_60;
  }

  v173 = *(v225 + 1336);
  v7 = *(v225 + 1288);
  v172 = *(v225 + 1200);
  v168 = *(v225 + 1192);
  v167 = *(v225 + 1184);
  v169 = *(v225 + 1152);
  v166 = *(v225 + 1160);
  Date.init()();
  v170 = *(v166 + 16);
  *(v225 + 1432) = v170;
  *(v225 + 1440) = (v166 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v170(v167, v168, v169);
  v171 = Logger.wellnessIntents.unsafeMutableAddressor();
  swift_beginAccess();
  v173(v7, v171, v172);
  swift_endAccess();
  log = Logger.logObject.getter();
  v174 = static os_log_type_t.debug.getter();
  v176 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(log, v174))
  {
    v162 = static UnsafeMutablePointer.allocate(capacity:)();
    v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v163 = createStorage<A>(capacity:type:)(0, v161, v161);
    v164 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    *(v225 + 952) = v162;
    *(v225 + 960) = v163;
    *(v225 + 968) = v164;
    serialize(_:at:)(0, (v225 + 952));
    serialize(_:at:)(0, (v225 + 952));
    *(v225 + 976) = v176;
    v165 = swift_task_alloc();
    v165[2] = v225 + 952;
    v165[3] = v225 + 960;
    v165[4] = v225 + 968;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();
    if (v219)
    {
    }

    _os_log_impl(&dword_269912000, log, v174, "Creating HKQuantity for Systolic.", v162, 2u);
    destroyStorage<A>(_:count:)(v163, 0, v161);
    destroyStorage<A>(_:count:)(v164, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D6497C0](v162, MEMORY[0x277D84B78]);

    v160 = 0;
  }

  else
  {

    v160 = v219;
  }

  v148 = *(v225 + 1360);
  v146 = *(v225 + 1288);
  v147 = *(v225 + 1200);
  v150 = *(v225 + 1192);
  v151 = *(v225 + 1184);
  v153 = *(v225 + 1176);
  v154 = *(v225 + 1168);
  v152 = *(v225 + 1152);
  v149 = *(v225 + 1112);
  v155 = *(v225 + 1376);
  MEMORY[0x277D82BD8](log);
  v148(v146, v147);
  type metadata accessor for HKQuantity();
  MEMORY[0x277D82BE0](v227);
  quantity = @nonobjc HKQuantity.__allocating_init(unit:doubleValue:)(v227, v149);
  *(v225 + 1448) = quantity;
  *(v225 + 672) = quantity;
  type metadata accessor for HKQuantitySample();
  MEMORY[0x277D82BE0](v155);
  MEMORY[0x277D82BE0](quantity);
  v170(v153, v150, v152);
  v170(v154, v151, v152);
  v156 = @nonobjc HKQuantitySample.__allocating_init(type:quantity:start:end:)(v155, quantity, v153, v154);
  *(v225 + 1456) = v156;
  *(v225 + 680) = v156;
  identifier = *MEMORY[0x277CCC980];
  MEMORY[0x277D82BE0](*MEMORY[0x277CCC980]);
  v159 = validateQuantity(identifier:quantity:)(identifier, quantity);
  MEMORY[0x277D82BD8](identifier);
  if (!v159)
  {
    v142 = *(v225 + 1336);
    v8 = *(v225 + 1280);
    v141 = *(v225 + 1200);
    v140 = Logger.wellnessIntents.unsafeMutableAddressor();
    swift_beginAccess();
    v142(v8, v140, v141);
    swift_endAccess();
    v144 = Logger.logObject.getter();
    v143 = static os_log_type_t.error.getter();
    v145 = _allocateUninitializedArray<A>(_:)();
    if (!os_log_type_enabled(v144, v143))
    {

      goto LABEL_28;
    }

    v136 = static UnsafeMutablePointer.allocate(capacity:)();
    v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v137 = createStorage<A>(capacity:type:)(0, v135, v135);
    v138 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    *(v225 + 920) = v136;
    *(v225 + 928) = v137;
    *(v225 + 936) = v138;
    serialize(_:at:)(0, (v225 + 920));
    serialize(_:at:)(0, (v225 + 920));
    *(v225 + 944) = v145;
    v139 = swift_task_alloc();
    v139[2] = v225 + 920;
    v139[3] = v225 + 928;
    v139[4] = v225 + 936;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();
    if (!v160)
    {

      _os_log_impl(&dword_269912000, v144, v143, "Quantity validation failed - systolic blood pressure value outside valid bounds.", v136, 2u);
      destroyStorage<A>(_:count:)(v137, 0, v135);
      destroyStorage<A>(_:count:)(v138, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](v136, MEMORY[0x277D84B78]);

LABEL_28:
      v125 = *(v225 + 1360);
      v123 = *(v225 + 1280);
      v124 = *(v225 + 1200);
      v128 = *(v225 + 1192);
      v127 = *(v225 + 1184);
      v129 = *(v225 + 1152);
      v131 = *(v225 + 1392);
      v132 = *(v225 + 1384);
      v133 = *(v225 + 1376);
      v126 = *(v225 + 1160);
      MEMORY[0x277D82BD8](v144);
      v125(v123, v124);
      type metadata accessor for LogBloodPressureIntentResponse();
      v134 = LogBloodPressureIntentResponse.__allocating_init(code:userActivity:)(102, 0);
      MEMORY[0x277D82BD8](v156);
      MEMORY[0x277D82BD8](quantity);
      v130 = *(v126 + 8);
      v130(v127, v129);
      v130(v128, v129);
      MEMORY[0x277D82BD8](v227);
      outlined destroy of HealthKitPersistor((v225 + 624));
      MEMORY[0x277D82BD8](v131);
      MEMORY[0x277D82BD8](v132);
      MEMORY[0x277D82BD8](v133);
      v184 = v134;
LABEL_60:

      v14 = *(*(v225 + 536) + 8);

      return v14(v184);
    }
  }

  v119 = *(v225 + 1336);
  v9 = *(v225 + 1272);
  v118 = *(v225 + 1200);
  v117 = Logger.wellnessIntents.unsafeMutableAddressor();
  swift_beginAccess();
  v119(v9, v117, v118);
  swift_endAccess();
  v121 = Logger.logObject.getter();
  v120 = static os_log_type_t.debug.getter();
  v122 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v121, v120))
  {
    v113 = static UnsafeMutablePointer.allocate(capacity:)();
    v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v114 = createStorage<A>(capacity:type:)(0, v112, v112);
    v115 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    *(v225 + 888) = v113;
    *(v225 + 896) = v114;
    *(v225 + 904) = v115;
    serialize(_:at:)(0, (v225 + 888));
    serialize(_:at:)(0, (v225 + 888));
    *(v225 + 912) = v122;
    v116 = swift_task_alloc();
    v116[2] = v225 + 888;
    v116[3] = v225 + 896;
    v116[4] = v225 + 904;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();
    if (v160)
    {
    }

    _os_log_impl(&dword_269912000, v121, v120, "Creating HKQuantity for Diastolic.", v113, 2u);
    destroyStorage<A>(_:count:)(v114, 0, v112);
    destroyStorage<A>(_:count:)(v115, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D6497C0](v113, MEMORY[0x277D84B78]);

    v111 = 0;
  }

  else
  {

    v111 = v160;
  }

  v99 = *(v225 + 1360);
  v97 = *(v225 + 1272);
  v98 = *(v225 + 1200);
  v101 = *(v225 + 1192);
  v102 = *(v225 + 1184);
  v104 = *(v225 + 1176);
  v105 = *(v225 + 1168);
  v103 = *(v225 + 1152);
  v100 = *(v225 + 1120);
  v106 = *(v225 + 1384);
  MEMORY[0x277D82BD8](v121);
  v99(v97, v98);
  MEMORY[0x277D82BE0](v227);
  v108 = @nonobjc HKQuantity.__allocating_init(unit:doubleValue:)(v227, v100);
  *(v225 + 1464) = v108;
  *(v225 + 688) = v108;
  MEMORY[0x277D82BE0](v106);
  MEMORY[0x277D82BE0](v108);
  v170(v104, v101, v103);
  v170(v105, v102, v103);
  v107 = @nonobjc HKQuantitySample.__allocating_init(type:quantity:start:end:)(v106, v108, v104, v105);
  *(v225 + 1472) = v107;
  *(v225 + 696) = v107;
  v109 = *MEMORY[0x277CCC978];
  MEMORY[0x277D82BE0](*MEMORY[0x277CCC978]);
  v110 = validateQuantity(identifier:quantity:)(v109, v108);
  MEMORY[0x277D82BD8](v109);
  if (!v110)
  {
    v93 = *(v225 + 1336);
    v10 = *(v225 + 1264);
    v92 = *(v225 + 1200);
    v91 = Logger.wellnessIntents.unsafeMutableAddressor();
    swift_beginAccess();
    v93(v10, v91, v92);
    swift_endAccess();
    v95 = Logger.logObject.getter();
    v94 = static os_log_type_t.error.getter();
    v96 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v95, v94))
    {
      v87 = static UnsafeMutablePointer.allocate(capacity:)();
      v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v88 = createStorage<A>(capacity:type:)(0, v86, v86);
      v89 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      *(v225 + 856) = v87;
      *(v225 + 864) = v88;
      *(v225 + 872) = v89;
      serialize(_:at:)(0, (v225 + 856));
      serialize(_:at:)(0, (v225 + 856));
      *(v225 + 880) = v96;
      v90 = swift_task_alloc();
      v90[2] = v225 + 856;
      v90[3] = v225 + 864;
      v90[4] = v225 + 872;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();
      if (v111)
      {
      }

      _os_log_impl(&dword_269912000, v95, v94, "Quantity validation failed - diastolic blood pressure value outside valid bounds.", v87, 2u);
      destroyStorage<A>(_:count:)(v88, 0, v86);
      destroyStorage<A>(_:count:)(v89, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](v87, MEMORY[0x277D84B78]);
    }

    else
    {
    }

    v76 = *(v225 + 1360);
    v74 = *(v225 + 1264);
    v75 = *(v225 + 1200);
    v79 = *(v225 + 1192);
    v78 = *(v225 + 1184);
    v80 = *(v225 + 1152);
    v82 = *(v225 + 1392);
    v83 = *(v225 + 1384);
    v84 = *(v225 + 1376);
    v77 = *(v225 + 1160);
    MEMORY[0x277D82BD8](v95);
    v76(v74, v75);
    type metadata accessor for LogBloodPressureIntentResponse();
    v85 = LogBloodPressureIntentResponse.__allocating_init(code:userActivity:)(102, 0);
    MEMORY[0x277D82BD8](v107);
    MEMORY[0x277D82BD8](v108);
    MEMORY[0x277D82BD8](v156);
    MEMORY[0x277D82BD8](quantity);
    v81 = *(v77 + 8);
    v81(v78, v80);
    v81(v79, v80);
    MEMORY[0x277D82BD8](v227);
    outlined destroy of HealthKitPersistor((v225 + 624));
    MEMORY[0x277D82BD8](v82);
    MEMORY[0x277D82BD8](v83);
    MEMORY[0x277D82BD8](v84);
    v184 = v85;
    goto LABEL_60;
  }

  v70 = *(v225 + 1336);
  v11 = *(v225 + 1256);
  v69 = *(v225 + 1200);
  v68 = Logger.wellnessIntents.unsafeMutableAddressor();
  swift_beginAccess();
  v70(v11, v68, v69);
  swift_endAccess();
  v72 = Logger.logObject.getter();
  v71 = static os_log_type_t.debug.getter();
  v73 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v72, v71))
  {
    v64 = static UnsafeMutablePointer.allocate(capacity:)();
    v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v65 = createStorage<A>(capacity:type:)(0, v63, v63);
    v66 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    *(v225 + 824) = v64;
    *(v225 + 832) = v65;
    *(v225 + 840) = v66;
    serialize(_:at:)(0, (v225 + 824));
    serialize(_:at:)(0, (v225 + 824));
    *(v225 + 848) = v73;
    v67 = swift_task_alloc();
    v67[2] = v225 + 824;
    v67[3] = v225 + 832;
    v67[4] = v225 + 840;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();
    if (v111)
    {
    }

    _os_log_impl(&dword_269912000, v72, v71, "Creating HKCorrelation.", v64, 2u);
    destroyStorage<A>(_:count:)(v65, 0, v63);
    destroyStorage<A>(_:count:)(v66, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D6497C0](v64, MEMORY[0x277D84B78]);

    v62 = 0;
  }

  else
  {

    v62 = v111;
  }

  v45 = *(v225 + 1360);
  v58 = *(v225 + 1336);
  v44 = *(v225 + 1256);
  v54 = *(v225 + 1248);
  v57 = *(v225 + 1200);
  v47 = *(v225 + 1192);
  v48 = *(v225 + 1184);
  v51 = *(v225 + 1176);
  v52 = *(v225 + 1168);
  v49 = *(v225 + 1152);
  v50 = *(v225 + 1392);
  MEMORY[0x277D82BD8](v72);
  v45(v44, v57);
  type metadata accessor for HKSample();
  _allocateUninitializedArray<A>(_:)();
  v46 = v12;
  MEMORY[0x277D82BE0](v156);
  *v46 = v156;
  MEMORY[0x277D82BE0](v107);
  v46[1] = v107;
  _finalizeUninitializedArray<A>(_:)();
  lazy protocol witness table accessor for type HKSample and conformance NSObject();
  v53 = Set.init(arrayLiteral:)();
  *(v225 + 1480) = v53;
  *(v225 + 704) = v53;
  type metadata accessor for HKCorrelation();
  MEMORY[0x277D82BE0](v50);
  v170(v51, v47, v49);
  v170(v52, v48, v49);

  v55 = @nonobjc HKCorrelation.__allocating_init(type:start:end:objects:)(v50, v51, v52, v53);
  *(v225 + 1488) = v55;
  *(v225 + 712) = v55;
  v56 = Logger.wellnessIntents.unsafeMutableAddressor();
  swift_beginAccess();
  v58(v54, v56, v57);
  swift_endAccess();
  v60 = Logger.logObject.getter();
  v59 = static os_log_type_t.debug.getter();
  v61 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v60, v59))
  {
    v40 = static UnsafeMutablePointer.allocate(capacity:)();
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v41 = createStorage<A>(capacity:type:)(0, v39, v39);
    v42 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    *(v225 + 792) = v40;
    *(v225 + 800) = v41;
    *(v225 + 808) = v42;
    serialize(_:at:)(0, (v225 + 792));
    serialize(_:at:)(0, (v225 + 792));
    *(v225 + 816) = v61;
    v43 = swift_task_alloc();
    v43[2] = v225 + 792;
    v43[3] = v225 + 800;
    v43[4] = v225 + 808;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();
    if (v62)
    {
    }

    _os_log_impl(&dword_269912000, v60, v59, "Trying to save to store.", v40, 2u);
    destroyStorage<A>(_:count:)(v41, 0, v39);
    destroyStorage<A>(_:count:)(v42, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D6497C0](v40, MEMORY[0x277D84B78]);

    v38 = 0;
  }

  else
  {

    v38 = v62;
  }

  *(v225 + 1496) = v38;
  v35 = *(v225 + 1360);
  v33 = *(v225 + 1248);
  v34 = *(v225 + 1200);
  v37 = *(v225 + 1144);
  MEMORY[0x277D82BD8](v60);
  v35(v33, v34);
  MEMORY[0x277D82BE0](v37);
  *(v225 + 16) = *(v225 + 536);
  *(v225 + 56) = v185;
  *(v225 + 24) = BloodPressurePersistor.save(systolic:diastolic:units:);
  v36 = swift_continuation_init();
  *(v225 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccyyts5Error_pGMd, &_sSccyyts5Error_pGMR);
  *(v225 + 112) = v36;
  *(v225 + 80) = MEMORY[0x277D85DD0];
  *(v225 + 88) = 1107296256;
  *(v225 + 92) = 0;
  *(v225 + 96) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned Bool, @unowned NSError?) -> () with result type () zero on error;
  *(v225 + 104) = &block_descriptor_12;
  [v37 saveObject:v55 withCompletion:?];

  return MEMORY[0x282200938](v225 + 16);
}

{
  v4 = *v0;
  v5 = *v0;
  *(v5 + 536) = *v0;
  v1 = *(v4 + 48);
  *(v5 + 1504) = v1;
  if (v1)
  {
    v2 = BloodPressurePersistor.save(systolic:diastolic:units:);
  }

  else
  {
    v2 = BloodPressurePersistor.save(systolic:diastolic:units:);
  }

  return MEMORY[0x2822009F8](v2, 0);
}

{
  v48 = v0[167];
  v1 = v0[155];
  v47 = v0[150];
  v2 = v0[143];
  v0[67] = v0;
  MEMORY[0x277D82BD8](v2);
  v46 = Logger.wellnessIntents.unsafeMutableAddressor();
  swift_beginAccess();
  v48(v1, v46, v47);
  swift_endAccess();
  v50 = Logger.logObject.getter();
  v49 = static os_log_type_t.debug.getter();
  v51 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v50, v49))
  {
    v3 = *(v45 + 1496);
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v42 = createStorage<A>(capacity:type:)(0, v40, v40);
    v43 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    *(v45 + 760) = buf;
    *(v45 + 768) = v42;
    *(v45 + 776) = v43;
    serialize(_:at:)(0, (v45 + 760));
    serialize(_:at:)(0, (v45 + 760));
    *(v45 + 784) = v51;
    v44 = swift_task_alloc();
    v44[2] = v45 + 760;
    v44[3] = v45 + 768;
    v44[4] = v45 + 776;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();
    if (v3)
    {
    }

    _os_log_impl(&dword_269912000, v50, v49, "Getting intent response.", buf, 2u);
    destroyStorage<A>(_:count:)(v42, 0, v40);
    destroyStorage<A>(_:count:)(v43, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);
  }

  else
  {
  }

  v26 = *(v45 + 1488);
  v27 = *(v45 + 1472);
  v28 = *(v45 + 1464);
  v29 = *(v45 + 1456);
  v30 = *(v45 + 1448);
  v23 = *(v45 + 1432);
  v13 = *(v45 + 1360);
  v11 = *(v45 + 1240);
  v12 = *(v45 + 1200);
  v32 = *(v45 + 1192);
  v31 = *(v45 + 1184);
  v24 = *(v45 + 1176);
  v33 = *(v45 + 1152);
  store = *(v45 + 1144);
  v35.super.isa = *(v45 + 1424);
  v36 = *(v45 + 1392);
  v37 = *(v45 + 1384);
  v38 = *(v45 + 1376);
  v21 = *(v45 + 1160);
  MEMORY[0x277D82BD8](v50);
  v13(v11, v12);
  type metadata accessor for LogBloodPressureIntentResponse();
  v39 = LogBloodPressureIntentResponse.__allocating_init(code:userActivity:)(4, 0);
  *(v45 + 728) = v39;
  v14 = [v29 0x1FBA67995];
  [v14 0x1FBD82CC3];
  v15 = v5;
  MEMORY[0x277D82BD8](v14);
  [v39 setSystolic_];
  v16 = [v27 0x1FBA67995];
  [v16 0x1FBD82CC3];
  v17 = v6;
  MEMORY[0x277D82BD8](v16);
  [v39 setDiastolic_];
  [v39 systolic];
  *(v45 + 744) = v7;
  [v39 diastolic];
  *(v45 + 752) = v8;
  max<A>(_:_:)();
  value = *(v45 + 736);
  MEMORY[0x277D82BE0](store);
  v54.value = value;
  v53.is_nil = store;
  v54.is_nil = LOBYTE(value);
  v53.value.super.isa = 0;
  v9 = localizedUnitName(for:value:store:)(v35, v54, v53);
  MEMORY[0x277D82BD8](store);
  v20 = MEMORY[0x26D6492A0](v9._countAndFlagsBits, v9._object);

  [v39 setUnit_];
  MEMORY[0x277D82BD8](v20);
  v23(v24, v32, v33);
  isa = Date._bridgeToObjectiveC()().super.isa;
  v34 = *(v21 + 8);
  v34(v24, v33);
  [v39 setSampleStart_];
  MEMORY[0x277D82BD8](isa);
  v23(v24, v31, v33);
  v25 = Date._bridgeToObjectiveC()().super.isa;
  v34(v24, v33);
  [v39 setSampleEnd_];
  MEMORY[0x277D82BD8](v25);
  MEMORY[0x277D82BD8](v26);

  MEMORY[0x277D82BD8](v27);
  MEMORY[0x277D82BD8](v28);
  MEMORY[0x277D82BD8](v29);
  MEMORY[0x277D82BD8](v30);
  v34(v31, v33);
  v34(v32, v33);
  MEMORY[0x277D82BD8](v35.super.isa);
  outlined destroy of HealthKitPersistor((v45 + 624));
  MEMORY[0x277D82BD8](v36);
  MEMORY[0x277D82BD8](v37);
  MEMORY[0x277D82BD8](v38);

  v10 = *(*(v45 + 536) + 8);

  return v10(v39);
}

uint64_t BloodPressurePersistor.preferredUnit()(uint64_t a1)
{
  v1[36] = a1;
  v1[24] = v1;
  v1[25] = 0;
  v1[26] = 0;
  v1[28] = 0;
  v1[29] = 0;
  v2 = type metadata accessor for Logger();
  v1[37] = v2;
  v1[38] = *(v2 - 8);
  v1[39] = swift_task_alloc();
  v1[40] = swift_task_alloc();
  v1[25] = a1;

  return MEMORY[0x2822009F8](BloodPressurePersistor.preferredUnit(), 0);
}

{
  v37 = v1;
  v23 = v1[50];
  v19 = v1[49];
  v22 = v1[41];
  v17 = v1[39];
  v21 = v1[37];
  v18 = v1[36];
  v1[24] = v1;
  swift_willThrow();
  MEMORY[0x277D82BD8](v18);
  MEMORY[0x277D82BD8](v19);
  v2 = v23;
  v1[28] = v23;
  v20 = Logger.wellnessIntents.unsafeMutableAddressor();
  swift_beginAccess();
  v22(v17, v20, v21);
  swift_endAccess();
  v3 = v23;
  v24 = swift_allocObject();
  *(v24 + 16) = v23;
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.error.getter();
  v26 = swift_allocObject();
  *(v26 + 16) = 32;
  v27 = swift_allocObject();
  *(v27 + 16) = 8;
  v25 = swift_allocObject();
  *(v25 + 16) = partial apply for implicit closure #5 in HealthKitPersistor.save(quantityIdentifier:value:units:);
  *(v25 + 24) = v24;
  v28 = swift_allocObject();
  *(v28 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v28 + 24) = v25;
  _allocateUninitializedArray<A>(_:)();
  v29 = v4;

  *v29 = partial apply for closure #1 in OSLogArguments.append(_:);
  v29[1] = v26;

  v29[2] = partial apply for closure #1 in OSLogArguments.append(_:);
  v29[3] = v27;

  v29[4] = partial apply for closure #1 in OSLogArguments.append(_:);
  v29[5] = v28;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v30, v31))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v14 = createStorage<A>(capacity:type:)(0, v12, v12);
    v15 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v32 = buf;
    v33 = v14;
    v34 = v15;
    serialize(_:at:)(2, &v32);
    serialize(_:at:)(1, &v32);
    v35 = partial apply for closure #1 in OSLogArguments.append(_:);
    v36 = v26;
    closure #1 in osLogInternal(_:log:type:)(&v35, &v32, &v33, &v34);
    v35 = partial apply for closure #1 in OSLogArguments.append(_:);
    v36 = v27;
    closure #1 in osLogInternal(_:log:type:)(&v35, &v32, &v33, &v34);
    v35 = partial apply for closure #1 in OSLogArguments.append(_:);
    v36 = v28;
    closure #1 in osLogInternal(_:log:type:)(&v35, &v32, &v33, &v34);
    _os_log_impl(&dword_269912000, v30, v31, "Error fetching preferred units: %s", buf, 0xCu);
    destroyStorage<A>(_:count:)(v14, 0, v12);
    destroyStorage<A>(_:count:)(v15, 1, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);
  }

  else
  {
  }

  v10 = v16[50];
  v9 = v16[44];
  v7 = v16[39];
  v8 = v16[37];
  v11 = v16[46];
  MEMORY[0x277D82BD8](v30);
  v9(v7, v8);

  MEMORY[0x277D82BD8](v11);

  v5 = *(v16[24] + 8);

  return v5(0);
}

uint64_t BloodPressurePersistor.preferredUnit()()
{
  v1 = v0[40];
  v23 = v0[38];
  v25 = v0[37];
  v0[24] = v0;
  v24 = Logger.wellnessIntents.unsafeMutableAddressor();
  swift_beginAccess();
  v2 = *(v23 + 16);
  v0[41] = v2;
  v0[42] = (v23 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v2(v1, v24, v25);
  swift_endAccess();
  v27 = Logger.logObject.getter();
  v26 = static os_log_type_t.debug.getter();
  v0[43] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v28 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v27, v26))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v19 = createStorage<A>(capacity:type:)(0, v17, v17);
    v20 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    *(v22 + 256) = buf;
    *(v22 + 264) = v19;
    *(v22 + 272) = v20;
    serialize(_:at:)(0, (v22 + 256));
    serialize(_:at:)(0, (v22 + 256));
    *(v22 + 280) = v28;
    v21 = swift_task_alloc();
    v21[2] = v22 + 256;
    v21[3] = v22 + 264;
    v21[4] = v22 + 272;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();

    _os_log_impl(&dword_269912000, v27, v26, "Looking for preferred units", buf, 2u);
    destroyStorage<A>(_:count:)(v19, 0, v17);
    destroyStorage<A>(_:count:)(v20, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);
  }

  v12 = *(v22 + 320);
  v13 = *(v22 + 296);
  v11 = *(v22 + 304);
  MEMORY[0x277D82BD8](v27);
  v3 = *(v11 + 8);
  *(v22 + 352) = v3;
  *(v22 + 360) = (v11 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v3(v12, v13);
  v14 = objc_opt_self();
  v15 = *MEMORY[0x277CCC980];
  MEMORY[0x277D82BE0](*MEMORY[0x277CCC980]);
  v16 = [v14 quantityTypeForIdentifier_];
  *(v22 + 368) = v16;
  MEMORY[0x277D82BD8](v15);
  if (v16)
  {
    v10 = *(v22 + 288);
    *(v22 + 208) = v16;
    MEMORY[0x277D82BE0](v10);
    *(v22 + 376) = type metadata accessor for HKQuantityType();
    _allocateUninitializedArray<A>(_:)();
    v7 = v4;
    MEMORY[0x277D82BE0](v16);
    *v7 = v16;
    _finalizeUninitializedArray<A>(_:)();
    *(v22 + 384) = lazy protocol witness table accessor for type HKQuantityType and conformance NSObject();
    Set.init(arrayLiteral:)();
    isa = Set._bridgeToObjectiveC()().super.isa;
    *(v22 + 392) = isa;

    *(v22 + 16) = *(v22 + 192);
    *(v22 + 56) = v22 + 216;
    *(v22 + 24) = BloodPressurePersistor.preferredUnit();
    v8 = swift_continuation_init();
    *(v22 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySDySo14HKQuantityTypeCSo6HKUnitCGs5Error_pGMd, &_sSccySDySo14HKQuantityTypeCSo6HKUnitCGs5Error_pGMR);
    *(v22 + 112) = v8;
    *(v22 + 80) = MEMORY[0x277D85DD0];
    *(v22 + 88) = 1107296256;
    *(v22 + 92) = 0;
    *(v22 + 96) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSDictionary, @unowned NSError?) -> () with result type [HKQuantityType : HKUnit];
    *(v22 + 104) = &block_descriptor_149;
    [v10 preferredUnitsForQuantityTypes:isa completion:?];

    return MEMORY[0x282200938](v22 + 16);
  }

  else
  {

    v5 = *(*(v22 + 192) + 8);

    return v5(0);
  }
}

{
  v4 = *v0;
  v4[24] = *v0;
  v1 = v4[6];
  v4[50] = v1;
  if (v1)
  {
    v2 = BloodPressurePersistor.preferredUnit();
  }

  else
  {
    v2 = BloodPressurePersistor.preferredUnit();
  }

  return MEMORY[0x2822009F8](v2, 0);
}

{
  v5 = v0[49];
  v7 = v0[48];
  v6 = v0[47];
  v9 = v0[46];
  v1 = v0[36];
  v0[24] = v0;
  v8 = v0[27];
  v0[29] = v8;
  MEMORY[0x277D82BD8](v1);
  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BE0](v9);
  v0[31] = v9;
  v2 = type metadata accessor for HKUnit();
  MEMORY[0x26D649240](v0 + 31, v8, v6, v2, v7);
  MEMORY[0x277D82BD8](v0[31]);
  v10 = v0[30];

  MEMORY[0x277D82BD8](v9);

  v3 = *(v0[24] + 8);

  return v3(v10);
}

id @nonobjc HKCorrelation.__allocating_init(type:start:end:objects:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  isa = Date._bridgeToObjectiveC()().super.isa;
  v6 = Date._bridgeToObjectiveC()().super.isa;
  type metadata accessor for HKSample();
  lazy protocol witness table accessor for type HKSample and conformance NSObject();
  v5 = Set._bridgeToObjectiveC()().super.isa;
  v13 = [swift_getObjCClassFromMetadata() correlationWithType:a1 startDate:isa endDate:v6 objects:v5];
  MEMORY[0x277D82BD8](v5);

  MEMORY[0x277D82BD8](v6);
  v10 = type metadata accessor for Date();
  v11 = *(*(v10 - 8) + 8);
  v11(a3);
  MEMORY[0x277D82BD8](isa);
  (v11)(a2, v10);
  MEMORY[0x277D82BD8](a1);
  return v13;
}

uint64_t protocol witness for BloodPressurePersisting.isLoggingAuthorized() in conformance BloodPressurePersistor()
{
  v4 = v1;
  *(v1 + 16) = v1;
  v5 = *v0;
  v2 = swift_task_alloc();
  *(v4 + 24) = v2;
  *v2 = *(v4 + 16);
  v2[1] = protocol witness for QuantityPersisting.isLoggingAuthorized(for:) in conformance HealthKitPersistor;

  return BloodPressurePersistor.isLoggingAuthorized()(v5);
}

uint64_t protocol witness for BloodPressurePersisting.save(systolic:diastolic:units:) in conformance BloodPressurePersistor(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v8 = v5;
  *(v5 + 16) = v5;
  v12 = *v4;
  v6 = swift_task_alloc();
  *(v8 + 24) = v6;
  *v6 = *(v8 + 16);
  v6[1] = protocol witness for QuantityPersisting.save(quantityIdentifier:value:units:) in conformance HealthKitPersistor;

  return BloodPressurePersistor.save(systolic:diastolic:units:)(a1, a2, v12, a3, a4);
}

uint64_t sub_269A40978()
{
  MEMORY[0x277D82BD8](*(v0 + 16));
  _Block_release(*(v0 + 24));
  MEMORY[0x277D82BD8](*(v0 + 32));
  return swift_deallocObject();
}

uint64_t partial apply for @objc closure #1 in LogBloodPressureIntentHandler.handle(intent:)()
{
  v4 = v1;
  *(v1 + 16) = v1;
  v7 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v2 = swift_task_alloc();
  *(v4 + 24) = v2;
  *v2 = *(v4 + 16);
  v2[1] = _sIeghH_IeAgH_TRTQ0_;

  return @objc closure #1 in LogBloodPressureIntentHandler.handle(intent:)(v7, v5, v6);
}

id GetAmbiguousDistanceIntent.init()()
{
  v3 = 0;
  v2.receiver = 0;
  v2.super_class = type metadata accessor for GetAmbiguousDistanceIntent();
  v1 = objc_msgSendSuper2(&v2, sel_init);
  MEMORY[0x277D82BE0](v1);
  v3 = v1;
  MEMORY[0x277D82BD8](v1);
  return v1;
}

id GetAmbiguousDistanceIntent.__allocating_init(coder:)(uint64_t a1)
{
  v4 = [objc_allocWithZone(v1) initWithCoder_];
  MEMORY[0x277D82BD8](a1);
  return v4;
}

id GetAmbiguousDistanceIntent.init(coder:)(uint64_t a1)
{
  v7 = 0;
  v6 = a1;
  v5.receiver = 0;
  v5.super_class = type metadata accessor for GetAmbiguousDistanceIntent();
  v4 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);
  if (v4)
  {
    MEMORY[0x277D82BE0](v4);
    v7 = v4;
    MEMORY[0x277D82BD8](a1);
    MEMORY[0x277D82BD8](v7);
    return v4;
  }

  else
  {
    MEMORY[0x277D82BD8](0);
    MEMORY[0x277D82BD8](a1);
    return 0;
  }
}

id GetAmbiguousDistanceIntent.__allocating_init(identifier:backingStore:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = objc_allocWithZone(v3);
  if (a2)
  {
    v6 = MEMORY[0x26D6492A0](a1);

    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v5 = [v11 initWithIdentifier_backingStore_];
  MEMORY[0x277D82BD8](a3);
  MEMORY[0x277D82BD8](v7);
  return v5;
}

id GetAmbiguousDistanceIntent.init(identifier:backingStore:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14 = 0;
  v12 = a1;
  v13 = a2;
  v11 = a3;

  if (a2)
  {
    v5 = MEMORY[0x26D6492A0](a1);

    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v10.receiver = 0;
  v10.super_class = type metadata accessor for GetAmbiguousDistanceIntent();
  v4 = objc_msgSendSuper2(&v10, sel_initWithIdentifier_backingStore_, v6, a3);
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BE0](v4);
  v14 = v4;
  MEMORY[0x277D82BD8](a3);

  MEMORY[0x277D82BD8](v14);
  return v4;
}

id GetAmbiguousDistanceIntent.__allocating_init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = objc_allocWithZone(v5);
  v16 = MEMORY[0x26D6492A0](a1, a2);
  v18 = MEMORY[0x26D6492A0](a3, a4);
  if (a5)
  {
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v6 = [v13 initWithDomain:v16 verb:v18 parametersByName:isa];
  }

  else
  {
    v6 = [v13 initWithDomain:v16 verb:v18 parametersByName:0];
  }

  v9 = v6;
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v18);

  MEMORY[0x277D82BD8](v16);

  return v9;
}

id GetAmbiguousDistanceIntent.init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v22 = 0;
  v20 = a1;
  v21 = a2;
  v18 = a3;
  v19 = a4;
  v17 = a5;

  v11 = MEMORY[0x26D6492A0](a1, a2);

  v14 = MEMORY[0x26D6492A0](a3, a4);

  if (a5)
  {
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v8 = isa;
  }

  else
  {
    v8 = 0;
  }

  v16.receiver = 0;
  v16.super_class = type metadata accessor for GetAmbiguousDistanceIntent();
  v6 = objc_msgSendSuper2(&v16, sel_initWithDomain_verb_parametersByName_, v11, v14, v8);
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v14);
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BE0](v6);
  v22 = v6;

  MEMORY[0x277D82BD8](v22);
  return v6;
}

id GetAmbiguousDistanceIntent.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GetAmbiguousDistanceIntent();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t GetAmbiguousDistanceIntentResponseCode.init(rawValue:)(uint64_t a1)
{
  switch(a1)
  {
    case 0:
      return 0;
    case 1:
      return 1;
    case 2:
      return 2;
    case 3:
      return 3;
    case 4:
      return 4;
    case 5:
      return 5;
    case 6:
      return 6;
    case 100:
      return 100;
    case 101:
      return 101;
    case 102:
      return 102;
  }

  return 0;
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance GetAmbiguousDistanceIntentResponseCode@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = GetAmbiguousDistanceIntentResponseCode.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v3 & 1;
  return result;
}

uint64_t GetAmbiguousDistanceIntentResponse.code.getter()
{
  v2 = (v0 + OBJC_IVAR___GetAmbiguousDistanceIntentResponse_code);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3;
}

uint64_t GetAmbiguousDistanceIntentResponse.code.setter(uint64_t a1)
{
  v3 = (v1 + OBJC_IVAR___GetAmbiguousDistanceIntentResponse_code);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

uint64_t key path getter for GetAmbiguousDistanceIntentResponse.code : GetAmbiguousDistanceIntentResponse@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  MEMORY[0x277D82BE0](*a1);
  *a2 = GetAmbiguousDistanceIntentResponse.code.getter();
  return MEMORY[0x277D82BD8](v3);
}

uint64_t key path setter for GetAmbiguousDistanceIntentResponse.code : GetAmbiguousDistanceIntentResponse(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v3 = *a2;
  MEMORY[0x277D82BE0](*a2);
  GetAmbiguousDistanceIntentResponse.code.setter(v4);
  return MEMORY[0x277D82BD8](v3);
}

char *GetAmbiguousDistanceIntentResponse.init(code:userActivity:)(uint64_t a1, uint64_t a2)
{
  v6 = [v7 init];
  MEMORY[0x277D82BE0](v6);
  v3 = &v6[OBJC_IVAR___GetAmbiguousDistanceIntentResponse_code];
  swift_beginAccess();
  *v3 = a1;
  swift_endAccess();
  MEMORY[0x277D82BE0](v6);
  [v6 setUserActivity_];
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](a2);
  MEMORY[0x277D82BD8](v6);
  return v6;
}

id GetAmbiguousDistanceIntentResponse.init()()
{
  v3 = 0;
  *OBJC_IVAR___GetAmbiguousDistanceIntentResponse_code = 0;
  v2.receiver = v3;
  v2.super_class = type metadata accessor for GetAmbiguousDistanceIntentResponse();
  v1 = objc_msgSendSuper2(&v2, sel_init);
  MEMORY[0x277D82BE0](v1);
  v3 = v1;
  MEMORY[0x277D82BD8](v1);
  return v1;
}

id GetAmbiguousDistanceIntentResponse.__allocating_init(coder:)(uint64_t a1)
{
  v4 = [objc_allocWithZone(v1) initWithCoder_];
  MEMORY[0x277D82BD8](a1);
  return v4;
}

id GetAmbiguousDistanceIntentResponse.init(coder:)(uint64_t a1)
{
  v7 = 0;
  v6 = a1;
  *OBJC_IVAR___GetAmbiguousDistanceIntentResponse_code = 0;
  v5.receiver = v7;
  v5.super_class = type metadata accessor for GetAmbiguousDistanceIntentResponse();
  v4 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);
  if (v4)
  {
    MEMORY[0x277D82BE0](v4);
    v7 = v4;
    MEMORY[0x277D82BD8](a1);
    MEMORY[0x277D82BD8](v7);
    return v4;
  }

  else
  {
    MEMORY[0x277D82BD8](0);
    MEMORY[0x277D82BD8](a1);
    return 0;
  }
}

id GetAmbiguousDistanceIntentResponse.__allocating_init(backingStore:)(uint64_t a1)
{
  v4 = [objc_allocWithZone(v1) initWithBackingStore_];
  MEMORY[0x277D82BD8](a1);
  return v4;
}

id GetAmbiguousDistanceIntentResponse.init(backingStore:)(uint64_t a1)
{
  v7 = 0;
  v6 = a1;
  *OBJC_IVAR___GetAmbiguousDistanceIntentResponse_code = 0;
  v5.receiver = v7;
  v5.super_class = type metadata accessor for GetAmbiguousDistanceIntentResponse();
  v4 = objc_msgSendSuper2(&v5, sel_initWithBackingStore_, a1);
  if (v4)
  {
    MEMORY[0x277D82BE0](v4);
    v7 = v4;
    MEMORY[0x277D82BD8](a1);
    MEMORY[0x277D82BD8](v7);
    return v4;
  }

  else
  {
    MEMORY[0x277D82BD8](0);
    MEMORY[0x277D82BD8](a1);
    return 0;
  }
}

id GetAmbiguousDistanceIntentResponse.__allocating_init(propertiesByName:)(uint64_t a1)
{
  v8 = objc_allocWithZone(v1);
  if (a1)
  {
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v2 = [v8 initWithPropertiesByName_];
  }

  else
  {
    v2 = [v8 initWithPropertiesByName_];
  }

  v5 = v2;
  MEMORY[0x277D82BD8](v4);
  return v5;
}

id GetAmbiguousDistanceIntentResponse.init(propertiesByName:)(uint64_t a1)
{
  v9 = 0;
  v8 = a1;
  *OBJC_IVAR___GetAmbiguousDistanceIntentResponse_code = 0;

  if (a1)
  {
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v5 = isa;
  }

  else
  {
    v5 = 0;
  }

  v7.receiver = v9;
  v7.super_class = type metadata accessor for GetAmbiguousDistanceIntentResponse();
  v3 = objc_msgSendSuper2(&v7, sel_initWithPropertiesByName_, v5);
  MEMORY[0x277D82BD8](v5);
  if (v3)
  {
    MEMORY[0x277D82BE0](v3);
    v9 = v3;

    MEMORY[0x277D82BD8](v9);
    return v3;
  }

  else
  {
    MEMORY[0x277D82BD8](0);

    return 0;
  }
}

id GetAmbiguousDistanceIntentResponse.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GetAmbiguousDistanceIntentResponse();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t lazy protocol witness table accessor for type GetAmbiguousDistanceIntentResponseCode and conformance GetAmbiguousDistanceIntentResponseCode()
{
  v2 = lazy protocol witness table cache variable for type GetAmbiguousDistanceIntentResponseCode and conformance GetAmbiguousDistanceIntentResponseCode;
  if (!lazy protocol witness table cache variable for type GetAmbiguousDistanceIntentResponseCode and conformance GetAmbiguousDistanceIntentResponseCode)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type GetAmbiguousDistanceIntentResponseCode and conformance GetAmbiguousDistanceIntentResponseCode);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type GetAmbiguousDistanceIntentResponseCode and conformance GetAmbiguousDistanceIntentResponseCode;
  if (!lazy protocol witness table cache variable for type GetAmbiguousDistanceIntentResponseCode and conformance GetAmbiguousDistanceIntentResponseCode)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type GetAmbiguousDistanceIntentResponseCode and conformance GetAmbiguousDistanceIntentResponseCode);
    return WitnessTable;
  }

  return v2;
}

Swift::String_optional __swiftcall HKMedicationLoggingUnit.getDisplayUnit(for:)(Swift::Double a1)
{
  abs<A>(_:)();
  if (v5 >= 0.01)
  {
    v4 = HKMedicationLoggingUnit.pluralLoggingUnit.getter();
  }

  else
  {
    v4 = HKMedicationLoggingUnit.singularLoggingUnit.getter();
  }

  v2 = v4;
  result.value._object = v1;
  result.value._countAndFlagsBits = v2;
  return result;
}

uint64_t HKMedicationLoggingUnit.singularLoggingUnit.getter()
{
  _allocateUninitializedArray<A>(_:)();
  v13 = v0;
  *v0 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("unknown", 7uLL, 1);
  v13[1] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("capsule", 7uLL, 1);
  v13[2] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("application", 0xBuLL, 1);
  v13[3] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("device", 6uLL, 1);
  v13[4] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("drop", 4uLL, 1);
  v13[5] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("inhalation", 0xAuLL, 1);
  v13[6] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("injection", 9uLL, 1);
  v13[7] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("milliliter", 0xAuLL, 1);
  v13[8] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("patch", 5uLL, 1);
  v13[9] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("scoop", 5uLL, 1);
  v13[10] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("spray", 5uLL, 1);
  v13[11] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("stick", 5uLL, 1);
  v13[12] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("unit", 4uLL, 1);
  v13[13] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("tablet", 6uLL, 1);
  v13[14] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("bar", 3uLL, 1);
  v13[15] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("cartridge", 9uLL, 1);
  v13[16] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("chewable", 8uLL, 1);
  v13[17] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("disc", 4uLL, 1);
  v13[18] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("enema", 5uLL, 1);
  v13[19] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("globule", 7uLL, 1);
  v13[20] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("implant", 7uLL, 1);
  v13[21] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("insert", 6uLL, 1);
  v13[22] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("kit", 3uLL, 1);
  v13[23] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("lozenge", 7uLL, 1);
  v13[24] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("milligram", 9uLL, 1);
  v13[25] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("packet", 6uLL, 1);
  v13[26] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("piece", 5uLL, 1);
  v13[27] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("popsicle", 8uLL, 1);
  v13[28] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("sponge", 6uLL, 1);
  v13[29] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("strip", 5uLL, 1);
  v13[30] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("suppository", 0xBuLL, 1);
  v13[31] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("tampon", 6uLL, 1);
  v13[32] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("treatment", 9uLL, 1);
  v13[33] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("vial", 4uLL, 1);
  v13[34] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("wick", 4uLL, 1);
  _finalizeUninitializedArray<A>(_:)();
  v15 = v1;
  if ([v14 loggingUnitCode])
  {
    [v14 loggingUnitCode];
    HKMedicationDoseEventStatus.rawValue.getter();
    v7 = v2;
    v8 = MEMORY[0x26D6494A0](v15, MEMORY[0x277D837D0]);
    if (v8 > 0 && v7 < v8)
    {
      [v14 loggingUnitCode];
      HKMedicationDoseEventStatus.rawValue.getter();
      if (v3 > 0x7FFFFFFFFFFFFFFFLL)
      {
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
      }

      Array.subscript.getter();
      v5 = v16;
    }

    else
    {
      v5 = 0;
    }

    return v5;
  }

  else
  {
    v12 = [v14 fallbackLoggingUnitSingularString];
    if (v12)
    {
      v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      MEMORY[0x277D82BD8](v12);
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    return v11;
  }
}

uint64_t HKMedicationLoggingUnit.pluralLoggingUnit.getter()
{
  _allocateUninitializedArray<A>(_:)();
  v13 = v0;
  *v0 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("unknown", 7uLL, 1);
  v13[1] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("capsules", 8uLL, 1);
  v13[2] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("applications", 0xCuLL, 1);
  v13[3] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("devices", 7uLL, 1);
  v13[4] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("drops", 5uLL, 1);
  v13[5] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("inhalations", 0xBuLL, 1);
  v13[6] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("injections", 0xAuLL, 1);
  v13[7] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("milliliters", 0xBuLL, 1);
  v13[8] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("patches", 7uLL, 1);
  v13[9] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("scoops", 6uLL, 1);
  v13[10] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("sprays", 6uLL, 1);
  v13[11] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("sticks", 6uLL, 1);
  v13[12] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("units", 5uLL, 1);
  v13[13] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("tablets", 7uLL, 1);
  v13[14] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("bars", 4uLL, 1);
  v13[15] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("cartridges", 0xAuLL, 1);
  v13[16] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("chewables", 9uLL, 1);
  v13[17] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("discs", 5uLL, 1);
  v13[18] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("enemas", 6uLL, 1);
  v13[19] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("globules", 8uLL, 1);
  v13[20] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("implants", 8uLL, 1);
  v13[21] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("inserts", 7uLL, 1);
  v13[22] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("kits", 4uLL, 1);
  v13[23] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("lozenges", 8uLL, 1);
  v13[24] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("milligrams", 0xAuLL, 1);
  v13[25] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("packets", 7uLL, 1);
  v13[26] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("pieces", 6uLL, 1);
  v13[27] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("popsicles", 9uLL, 1);
  v13[28] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("sponges", 7uLL, 1);
  v13[29] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("strips", 6uLL, 1);
  v13[30] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("suppositories", 0xDuLL, 1);
  v13[31] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("tampons", 7uLL, 1);
  v13[32] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("treatments", 0xAuLL, 1);
  v13[33] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("vials", 5uLL, 1);
  v13[34] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("wicks", 5uLL, 1);
  _finalizeUninitializedArray<A>(_:)();
  v15 = v1;
  if ([v14 loggingUnitCode])
  {
    [v14 loggingUnitCode];
    HKMedicationDoseEventStatus.rawValue.getter();
    v7 = v2;
    v8 = MEMORY[0x26D6494A0](v15, MEMORY[0x277D837D0]);
    if (v8 > 0 && v7 < v8)
    {
      [v14 loggingUnitCode];
      HKMedicationDoseEventStatus.rawValue.getter();
      if (v3 > 0x7FFFFFFFFFFFFFFFLL)
      {
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
      }

      Array.subscript.getter();
      v5 = v16;
    }

    else
    {
      v5 = 0;
    }

    return v5;
  }

  else
  {
    v12 = [v14 fallbackLoggingUnitPluralString];
    if (v12)
    {
      v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      MEMORY[0x277D82BD8](v12);
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    return v11;
  }
}

uint64_t dateInterval(startTime:endTime:)@<X0>(uint64_t a1@<X0>, const void *a2@<X1>, uint64_t a3@<X8>)
{
  v120 = a2;
  v121 = a1;
  v93 = a3;
  v114 = 0;
  v147 = 0;
  v146 = 0;
  v145 = 0;
  v144 = 0;
  v143 = 0;
  v142 = 0;
  v94 = 0;
  v95 = type metadata accessor for Logger();
  v96 = *(v95 - 8);
  v97 = v96;
  MEMORY[0x28223BE20](0, v95);
  v98 = &v55 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = type metadata accessor for Calendar();
  v100 = *(v99 - 8);
  v101 = v100;
  MEMORY[0x28223BE20](v99 - 8, v99);
  v102 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8TimeZoneVSgMd, &_s10Foundation8TimeZoneVSgMR);
  v103 = (*(*(v5 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v5 - 8, v6);
  v104 = &v55 - v103;
  v105 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8CalendarVSgMd, &_s10Foundation8CalendarVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v114, v7);
  v106 = &v55 - v105;
  v107 = type metadata accessor for DateComponents();
  v108 = *(v107 - 8);
  v109 = v108;
  v110 = *(v108 + 64);
  MEMORY[0x28223BE20](v107 - 8, v107);
  v112 = (v110 + 15) & 0xFFFFFFFFFFFFFFF0;
  v111 = &v55 - v112;
  MEMORY[0x28223BE20](&v55 - v112, v8);
  v113 = &v55 - v112;
  v147 = &v55 - v112;
  v116 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR) - 8) + 64);
  MEMORY[0x28223BE20](v114, v9);
  v118 = (v116 + 15) & 0xFFFFFFFFFFFFFFF0;
  v115 = &v55 - v118;
  MEMORY[0x28223BE20](v10, &v55 - v118);
  v117 = &v55 - v118;
  MEMORY[0x28223BE20](v11, &v55 - v118);
  v134 = &v55 - v118;
  v119 = &v55 - v118;
  v133 = type metadata accessor for Date();
  v122 = v133;
  v123 = *(v133 - 8);
  v132 = v123;
  v124 = v123;
  v128 = *(v123 + 64);
  MEMORY[0x28223BE20](v121, v134);
  v130 = (v128 + 15) & 0xFFFFFFFFFFFFFFF0;
  v125 = &v55 - v130;
  MEMORY[0x28223BE20](v12, v13);
  v126 = &v55 - v130;
  MEMORY[0x28223BE20](v14, v15);
  v127 = &v55 - v130;
  v146 = &v55 - v130;
  MEMORY[0x28223BE20](v16, v17);
  v129 = &v55 - v130;
  v145 = &v55 - v130;
  MEMORY[0x28223BE20](v18, v19);
  v131 = &v55 - v130;
  v144 = &v55 - v130;
  v143 = v20;
  v142 = v21;
  outlined init with copy of Date?(v20, v22);
  v135 = *(v132 + 48);
  v136 = (v132 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v135(v134, 1, v133) == 1)
  {
    outlined destroy of Date?(v119);
LABEL_13:
    v31 = type metadata accessor for DateInterval();
    (*(*(v31 - 8) + 56))(v93, 1);
    return v94;
  }

  v91 = *(v124 + 32);
  v92 = (v124 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v91(v131, v119, v122);
  outlined init with copy of Date?(v120, v117);
  if (v135(v117, 1, v122) == 1)
  {
    outlined destroy of Date?(v117);
    (*(v124 + 8))(v131, v122);
    goto LABEL_13;
  }

  v91(v129, v117, v122);
  v23 = *(v101 + 56);
  v90 = 1;
  v23(v106, 1, 1, v99);
  v86 = 0;
  v24 = type metadata accessor for TimeZone();
  (*(*(v24 - 8) + 56))(v104, v90);
  v87 = &v33;
  v54 = v90;
  v53 = v86;
  LOBYTE(v52) = v90;
  v51 = v86;
  v50 = v90;
  v49 = v86;
  v48 = v90;
  v47 = v86;
  v46 = v90;
  v45 = v86;
  v44 = v90;
  v43 = v86;
  v42 = v90;
  v41 = v86;
  v40 = v90;
  v39 = v86;
  v38 = v90;
  v37 = v86;
  v36 = v90;
  v35 = v86;
  v34 = v90;
  v33 = v86;
  DateComponents.init(calendar:timeZone:era:year:month:day:hour:minute:second:nanosecond:weekday:weekdayOrdinal:quarter:weekOfMonth:weekOfYear:yearForWeekOfYear:)();
  DateComponents.second.setter();
  static Calendar.current.getter();
  (*(v109 + 16))(v111, v113, v107);
  default argument 2 of Calendar.date(byAdding:to:wrappingComponents:)();
  Calendar.date(byAdding:to:wrappingComponents:)();
  v88 = *(v109 + 8);
  v89 = (v109 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v88(v111, v107);
  (*(v101 + 8))(v102, v99);
  if (v135(v115, v90, v122) == 1)
  {
    v26 = v98;
    outlined destroy of Date?(v115);
    v73 = Logger.wellnessIntents.unsafeMutableAddressor();
    v74 = &v141;
    v77 = 0;
    swift_beginAccess();
    (*(v97 + 16))(v26, v73, v95);
    swift_endAccess();
    v79 = Logger.logObject.getter();
    v75 = v79;
    v78 = static os_log_type_t.error.getter();
    v76 = v78;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v80 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v79, v78))
    {
      v27 = v94;
      v64 = static UnsafeMutablePointer.allocate(capacity:)();
      v60 = v64;
      v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v62 = 0;
      v65 = createStorage<A>(capacity:type:)(0, v61, v61);
      v63 = v65;
      v66 = createStorage<A>(capacity:type:)(v62, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v140 = v64;
      v139 = v65;
      v138 = v66;
      v67 = 0;
      v68 = &v140;
      serialize(_:at:)(0, &v140);
      serialize(_:at:)(v67, v68);
      v137 = v80;
      v69 = &v55;
      MEMORY[0x28223BE20](&v55, v28);
      v70 = &v49;
      v51 = v29;
      v52 = &v139;
      v53 = &v138;
      v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();
      v72 = v27;
      if (v27)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_269912000, v75, v76, "Failed to create date interval", v60, 2u);
        v58 = 0;
        destroyStorage<A>(_:count:)(v63, 0, v61);
        destroyStorage<A>(_:count:)(v66, v58, MEMORY[0x277D84F70] + 8);
        MEMORY[0x26D6497C0](v60, MEMORY[0x277D84B78]);

        v59 = v72;
      }
    }

    else
    {

      v59 = v94;
    }

    v57 = v59;

    (*(v97 + 8))(v98, v95);
    v30 = type metadata accessor for DateInterval();
    (*(*(v30 - 8) + 56))(v93, 1);
    v88(v113, v107);
    v56 = *(v124 + 8);
    v55 = v124 + 8;
    v56(v129, v122);
    v56(v131, v122);
    return v57;
  }

  else
  {
    v91(v127, v115, v122);
    v82 = *(v124 + 16);
    v81 = v124 + 16;
    v82(v126, v127, v122);
    v82(v125, v129, v122);
    DateInterval.init(start:end:)();
    v25 = type metadata accessor for DateInterval();
    (*(*(v25 - 8) + 56))(v93, 0, 1);
    v84 = *(v124 + 8);
    v83 = v124 + 8;
    v84(v127, v122);
    v88(v113, v107);
    v84(v129, v122);
    v84(v131, v122);
    return v94;
  }
}

Swift::Bool __swiftcall allDoseEventsAreUnlogged(doseEvents:)(Swift::OpaquePointer doseEvents)
{
  type metadata accessor for HKMedicationDoseEventStatus(0);
  _allocateUninitializedArray<A>(_:)();
  *v1 = 4;
  v1[1] = 5;
  _finalizeUninitializedArray<A>(_:)();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo30HKMedicationExposableDoseEventCGMd, &_sSaySo30HKMedicationExposableDoseEventCGMR);
  lazy protocol witness table accessor for type [HKMedicationExposableDoseEvent] and conformance [A]();
  v3 = Sequence.allSatisfy(_:)();

  return v3 & 1;
}

Swift::Bool __swiftcall allLoggedWithMixedStatus(doseEvents:)(Swift::OpaquePointer doseEvents)
{
  v24[0] = 0;
  v24[1] = 0;
  rawValue = doseEvents._rawValue;
  v27 = 0;
  v26 = 0;
  v25 = 0;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo30HKMedicationExposableDoseEventCGMd, &_sSaySo30HKMedicationExposableDoseEventCGMR);
  lazy protocol witness table accessor for type [HKMedicationExposableDoseEvent] and conformance [A]();
  Collection<>.makeIterator()();
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  for (i = 0; ; i = v16)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySaySo30HKMedicationExposableDoseEventCGGMd, &_ss16IndexingIteratorVySaySo30HKMedicationExposableDoseEventCGGMR);
    IndexingIterator.next()();
    if (!v23)
    {
      break;
    }

    [v23 status];
    type metadata accessor for HKMedicationDoseEventStatus(0);
    lazy protocol witness table accessor for type HKMedicationDoseEventStatus and conformance HKMedicationDoseEventStatus();
    result = == infix<A>(_:_:)();
    if (result)
    {
      if (__OFADD__(i, 1))
      {
        goto LABEL_31;
      }

      v27 = i + 1;
      v11 = v17;
      v12 = i + 1;
      v13 = v19;
      v14 = v20;
      v15 = v21;
      v16 = i + 1;
    }

    else
    {
      [v23 status];
      result = == infix<A>(_:_:)();
      if (result)
      {
        if (__OFADD__(v21, 1))
        {
          goto LABEL_30;
        }

        v26 = v21 + 1;
        v7 = v21 + 1;
        v8 = v19;
        v9 = v20;
        v10 = v21 + 1;
      }

      else
      {
        if (__OFADD__(v20, 1))
        {
          __break(1u);
LABEL_30:
          __break(1u);
LABEL_31:
          __break(1u);
          return result;
        }

        v25 = v20 + 1;
        v7 = v17;
        v8 = v20 + 1;
        v9 = v20 + 1;
        v10 = v21;
      }

      v11 = v7;
      v12 = v18;
      v13 = v8;
      v14 = v9;
      v15 = v10;
      v16 = i;
    }

    (MEMORY[0x277D82BD8])();
    v17 = v11;
    v18 = v12;
    v19 = v13;
    v20 = v14;
    v21 = v15;
  }

  outlined destroy of [HKQuantityType](v24);
  if (v19)
  {
    v6 = 0;
  }

  else
  {
    v6 = v18 >= 1;
  }

  return v6 && v17 >= 1;
}

Swift::Bool __swiftcall oneExistingStatusWithConflictingRequest(doseEvents:requestedStatus:)(Swift::OpaquePointer doseEvents, Swift::Bool requestedStatus)
{
  v10[0] = 0;
  v10[1] = 0;
  v7 = 0;
  v6[0] = 0;
  v6[1] = 0;
  rawValue = doseEvents._rawValue;
  v11 = requestedStatus;
  if (requestedStatus)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo30HKMedicationExposableDoseEventCGMd, &_sSaySo30HKMedicationExposableDoseEventCGMR);
    lazy protocol witness table accessor for type [HKMedicationExposableDoseEvent] and conformance [A]();
    Collection<>.makeIterator()();
    while (1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySaySo30HKMedicationExposableDoseEventCGGMd, &_ss16IndexingIteratorVySaySo30HKMedicationExposableDoseEventCGGMR);
      IndexingIterator.next()();
      if (!v5)
      {
        break;
      }

      [v5 status];
      type metadata accessor for HKMedicationDoseEventStatus(0);
      lazy protocol witness table accessor for type HKMedicationDoseEventStatus and conformance HKMedicationDoseEventStatus();
      if (== infix<A>(_:_:)())
      {
        (MEMORY[0x277D82BD8])();
        outlined destroy of [HKQuantityType](v6);
        return 1;
      }

      (MEMORY[0x277D82BD8])();
    }

    outlined destroy of [HKQuantityType](v6);
  }

  else
  {

    v9 = doseEvents._rawValue;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo30HKMedicationExposableDoseEventCGMd, &_sSaySo30HKMedicationExposableDoseEventCGMR);
    lazy protocol witness table accessor for type [HKMedicationExposableDoseEvent] and conformance [A]();
    Collection<>.makeIterator()();
    while (1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySaySo30HKMedicationExposableDoseEventCGGMd, &_ss16IndexingIteratorVySaySo30HKMedicationExposableDoseEventCGGMR);
      IndexingIterator.next()();
      if (!v8)
      {
        break;
      }

      v7 = v8;
      v6[3] = [v8 status];
      v6[2] = 4;
      type metadata accessor for HKMedicationDoseEventStatus(0);
      lazy protocol witness table accessor for type HKMedicationDoseEventStatus and conformance HKMedicationDoseEventStatus();
      if (== infix<A>(_:_:)())
      {
        MEMORY[0x277D82BD8](v8);
        outlined destroy of [HKQuantityType](v10);
        return 1;
      }

      MEMORY[0x277D82BD8](v8);
    }

    outlined destroy of [HKQuantityType](v10);
  }

  return 0;
}

uint64_t getUnloggedDoseEvents(doseEvents:)(uint64_t a1)
{
  type metadata accessor for HKMedicationDoseEventStatus(0);
  _allocateUninitializedArray<A>(_:)();
  *v1 = 4;
  v1[1] = 5;
  _finalizeUninitializedArray<A>(_:)();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo30HKMedicationExposableDoseEventCGMd, &_sSaySo30HKMedicationExposableDoseEventCGMR);
  lazy protocol witness table accessor for type [HKMedicationExposableDoseEvent] and conformance [A]();
  v3 = _ArrayProtocol.filter(_:)();

  return v3;
}

uint64_t getFallbackDateInterval(specifiedDateInterval:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v60 = a2;
  v82 = a1;
  v61 = "Fatal error";
  v62 = "Unexpectedly found nil while unwrapping an Optional value";
  v63 = "SiriWellnessIntents/MedicationsHelpers.swift";
  v117 = 0;
  v116 = 0;
  v115 = 0;
  v114 = 0;
  v113 = 0;
  v112 = 0;
  v86 = 0;
  v102 = type metadata accessor for Calendar();
  v99 = *(v102 - 8);
  v100 = v102 - 8;
  v64 = (v99[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v102, v3);
  v101 = v53 - v64;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v65 = (*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v4, v5);
  v66 = v53 - v65;
  v67 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v53 - v65, v7);
  v107 = v53 - v67;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8TimeZoneVSgMd, &_s10Foundation8TimeZoneVSgMR);
  v68 = (*(*(v8 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v8, v9);
  v85 = v53 - v68;
  v69 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8CalendarVSgMd, &_s10Foundation8CalendarVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v86, v10);
  v84 = v53 - v69;
  v96 = type metadata accessor for DateComponents();
  v93 = *(v96 - 8);
  v94 = v96 - 8;
  v70 = (v93[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v86, v11);
  v95 = v53 - v70;
  v71 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v13, v53 - v70);
  v89 = v53 - v71;
  v117 = v53 - v71;
  v109 = type metadata accessor for Date();
  v105 = *(v109 - 8);
  v106 = v109 - 8;
  v72 = (v105[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v109, v14);
  v73 = v53 - v72;
  v74 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v53 - v72, v16);
  v75 = v53 - v74;
  v76 = (v17 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v53 - v74, v18);
  v77 = v53 - v76;
  v116 = v53 - v76;
  v78 = (v19 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v20, v21);
  v79 = v53 - v78;
  v115 = v53 - v78;
  v80 = (v22 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v23, v24);
  v83 = v53 - v80;
  v114 = v53 - v80;
  v81 = (v25 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v26, v27);
  v92 = v53 - v81;
  v113 = v53 - v81;
  v112 = a1;
  DateInterval.start.getter();
  DateInterval.end.getter();
  v28 = v99[7];
  v108 = 1;
  v28(v84, 1, 1, v102);
  v29 = type metadata accessor for TimeZone();
  (*(*(v29 - 8) + 56))(v85, v108);
  v87 = &v31;
  v31 = 0;
  v88 = 1;
  v32 = 1;
  v33 = 0;
  v34 = 1;
  v35 = 0;
  v36 = 1;
  v37 = 0;
  v38 = 1;
  v39 = 0;
  v40 = 1;
  v41 = 0;
  v42 = 1;
  v43 = 0;
  v44 = 1;
  v45 = 0;
  v46 = 1;
  v47 = 0;
  v48 = 1;
  v49 = 0;
  LOBYTE(v50) = 1;
  v51 = 0;
  v52 = 1;
  DateComponents.init(calendar:timeZone:era:year:month:day:hour:minute:second:nanosecond:weekday:weekdayOrdinal:quarter:weekOfMonth:weekOfYear:yearForWeekOfYear:)();
  DateComponents.hour.setter();
  static Calendar.current.getter();
  v90 = v93[2];
  v91 = v93 + 2;
  v90(v95, v89, v96);
  default argument 2 of Calendar.date(byAdding:to:wrappingComponents:)();
  Calendar.date(byAdding:to:wrappingComponents:)();
  v97 = v93[1];
  v98 = v93 + 1;
  v97(v95, v96);
  v103 = v99[1];
  v104 = v99 + 1;
  v103(v101, v102);
  v110 = v105[6];
  v111 = v105 + 6;
  if (v110(v107, v108, v109) == 1)
  {
    LOBYTE(v49) = 2;
    v50 = 152;
    LODWORD(v51) = 0;
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  v57 = v105[4];
  v58 = v105 + 4;
  v57(v79, v107, v109);
  static Calendar.current.getter();
  v90(v95, v89, v96);
  default argument 2 of Calendar.date(byAdding:to:wrappingComponents:)();
  v59 = 1;
  Calendar.date(byAdding:to:wrappingComponents:)();
  v97(v95, v96);
  v103(v101, v102);
  if (v110(v66, v59, v109) == 1)
  {
    LOBYTE(v49) = 2;
    v50 = 153;
    LODWORD(v51) = 0;
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  v57(v77, v66, v109);
  v54 = v105[2];
  v53[1] = v105 + 2;
  v54(v75, v79, v109);
  v54(v73, v77, v109);
  DateInterval.init(start:end:)();
  v56 = v105[1];
  v55 = v105 + 1;
  v56(v77, v109);
  v56(v79, v109);
  v97(v89, v96);
  v56(v83, v109);
  return (v56)(v92, v109);
}

uint64_t filterUniqueDoseEvents(doseEvents:)(uint64_t a1, uint64_t a2)
{
  MEMORY[0x28223BE20](a1, a2);
  v582 = v2;
  v574 = 0;
  v584 = partial apply for implicit closure #4 in SpecificMedicationsPersistor.saveMedication(named:medStatusTaken:dosage:dosageUnit:);
  v588 = partial apply for thunk for @escaping @callee_guaranteed () -> (@unowned Int);
  v590 = partial apply for closure #1 in OSLogArguments.append(_:);
  v592 = partial apply for closure #1 in OSLogArguments.append(_:);
  v595 = partial apply for closure #1 in OSLogArguments.append<A>(_:);
  v529 = partial apply for implicit closure #4 in SpecificMedicationsPersistor.saveScheduledMedication(specifiedDateInterval:medStatusTaken:);
  v530 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  v531 = partial apply for implicit closure #1 in MedsUndoer.getUpdatedDoseEvent(doseEvent:matchingMeds:);
  v532 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  v533 = partial apply for implicit closure #7 in SpecificMedicationsPersistor.buildMatchedMedName(from:shouldIncludeAsNeededParams:);
  v534 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  v535 = partial apply for implicit closure #5 in filterUniqueDoseEvents(doseEvents:);
  v536 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  v537 = partial apply for implicit closure #6 in filterUniqueDoseEvents(doseEvents:);
  v538 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  v539 = partial apply for closure #1 in OSLogArguments.append(_:);
  v540 = partial apply for closure #1 in OSLogArguments.append(_:);
  v541 = partial apply for closure #1 in OSLogArguments.append(_:);
  v542 = partial apply for closure #1 in OSLogArguments.append(_:);
  v543 = partial apply for closure #1 in OSLogArguments.append(_:);
  v544 = partial apply for closure #1 in OSLogArguments.append(_:);
  v545 = partial apply for closure #1 in OSLogArguments.append(_:);
  v546 = partial apply for closure #1 in OSLogArguments.append(_:);
  v547 = partial apply for closure #1 in OSLogArguments.append(_:);
  v548 = partial apply for closure #1 in OSLogArguments.append(_:);
  v549 = partial apply for closure #1 in OSLogArguments.append(_:);
  v550 = partial apply for closure #1 in OSLogArguments.append(_:);
  v551 = partial apply for closure #1 in OSLogArguments.append(_:);
  v552 = partial apply for closure #1 in OSLogArguments.append(_:);
  v553 = partial apply for closure #1 in OSLogArguments.append(_:);
  v554 = partial apply for specialized implicit closure #10 in SpecificMedicationsPersistor.writeDoseEvent(medicationController:doseEvents:medStatusTaken:medicationIDPresent:dosage:dosageUnit:);
  v555 = partial apply for thunk for @escaping @callee_guaranteed () -> (@unowned Int);
  v556 = partial apply for closure #1 in OSLogArguments.append(_:);
  v557 = partial apply for closure #1 in OSLogArguments.append(_:);
  v558 = partial apply for closure #1 in OSLogArguments.append<A>(_:);
  v638 = 0;
  v636 = 0;
  v635 = 0;
  v634[0] = 0;
  v634[1] = 0;
  v559 = 0;
  v624 = 0;
  v622 = 0;
  v620 = 0;
  v621 = 0;
  v619 = 0;
  v565 = 0;
  v560 = type metadata accessor for Date();
  v561 = *(v560 - 8);
  v562 = v560 - 8;
  v563 = (*(v561 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v560, v3);
  v564 = v109 - v563;
  v566 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v565, v4);
  v567 = v109 - v566;
  v578 = type metadata accessor for Logger();
  v575 = *(v578 - 8);
  v576 = v578 - 8;
  v568 = (v575[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v582, v5);
  v569 = v109 - v568;
  v570 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v7, v109 - v568);
  v571 = v109 - v570;
  v572 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v9, v109 - v570);
  v10 = v109 - v572;
  v573 = v109 - v572;
  v638 = v11;
  v577 = Logger.wellnessIntents.unsafeMutableAddressor();
  v581 = &v637;
  v585 = 32;
  swift_beginAccess();
  v579 = v575[2];
  v580 = v575 + 2;
  v579(v10, v577, v578);
  swift_endAccess();

  v586 = 7;
  v587 = swift_allocObject();
  *(v587 + 16) = v582;
  v599 = Logger.logObject.getter();
  v600 = static os_log_type_t.debug.getter();
  v583 = 17;
  v591 = swift_allocObject();
  *(v591 + 16) = 0;
  v593 = swift_allocObject();
  *(v593 + 16) = 8;
  v12 = swift_allocObject();
  v13 = v587;
  v589 = v12;
  *(v12 + 16) = v584;
  *(v12 + 24) = v13;
  v14 = swift_allocObject();
  v15 = v589;
  v596 = v14;
  *(v14 + 16) = v588;
  *(v14 + 24) = v15;
  v598 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v594 = _allocateUninitializedArray<A>(_:)();
  v597 = v16;

  v17 = v591;
  v18 = v597;
  *v597 = v590;
  v18[1] = v17;

  v19 = v593;
  v20 = v597;
  v597[2] = v592;
  v20[3] = v19;

  v21 = v596;
  v22 = v597;
  v597[4] = v595;
  v22[5] = v21;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v599, v600))
  {
    v23 = v559;
    v522 = static UnsafeMutablePointer.allocate(capacity:)();
    v520 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v521 = 0;
    v523 = createStorage<A>(capacity:type:)(0, v520, v520);
    v524 = createStorage<A>(capacity:type:)(v521, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v525 = &v605;
    v605 = v522;
    v526 = &v604;
    v604 = v523;
    v527 = &v603;
    v603 = v524;
    serialize(_:at:)(0, &v605);
    serialize(_:at:)(1, v525);
    v601 = v590;
    v602 = v591;
    closure #1 in osLogInternal(_:log:type:)(&v601, v525, v526, v527);
    v528 = v23;
    if (v23)
    {

      __break(1u);
    }

    else
    {
      v601 = v592;
      v602 = v593;
      closure #1 in osLogInternal(_:log:type:)(&v601, &v605, &v604, &v603);
      v518 = 0;
      v601 = v595;
      v602 = v596;
      closure #1 in osLogInternal(_:log:type:)(&v601, &v605, &v604, &v603);
      v517 = 0;
      _os_log_impl(&dword_269912000, v599, v600, "Started filtering with this many dose events: %ld", v522, 0xCu);
      v516 = 0;
      destroyStorage<A>(_:count:)(v523, 0, v520);
      destroyStorage<A>(_:count:)(v524, v516, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](v522, MEMORY[0x277D84B78]);

      v519 = v517;
    }
  }

  else
  {
    v24 = v559;

    v519 = v24;
  }

  v514 = v519;
  MEMORY[0x277D82BD8](v599);
  v506 = v575[1];
  v507 = v575 + 1;
  v506(v573, v578);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSg_SaySSGtMd, &_sSSSg_SaySSGtMR);
  v512 = 0;
  v510 = _allocateUninitializedArray<A>(_:)();
  v508 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  v509 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  v511 = lazy protocol witness table accessor for type String? and conformance <A> A?();
  v636 = Dictionary.init(dictionaryLiteral:)();
  type metadata accessor for HKMedicationExposableDoseEvent();
  v635 = _allocateUninitializedArray<A>(_:)();

  v633 = v582;
  v513 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo30HKMedicationExposableDoseEventCGMd, &_sSaySo30HKMedicationExposableDoseEventCGMR);
  lazy protocol witness table accessor for type [HKMedicationExposableDoseEvent] and conformance [A]();
  Collection<>.makeIterator()();
  for (i = v514; ; i = v186)
  {
    v504 = i;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySaySo30HKMedicationExposableDoseEventCGGMd, &_ss16IndexingIteratorVySaySo30HKMedicationExposableDoseEventCGGMR);
    IndexingIterator.next()();
    v505 = v632;
    if (!v632)
    {
      break;
    }

    v503 = v505;
    v25 = v571;
    v468 = v505;
    v624 = v505;
    v465 = Logger.wellnessIntents.unsafeMutableAddressor();
    v466 = &v623;
    v480 = 32;
    swift_beginAccess();
    v579(v25, v465, v578);
    swift_endAccess();
    MEMORY[0x277D82BE0](v468);
    v467 = 24;
    v481 = 7;
    v26 = swift_allocObject();
    v27 = v468;
    v469 = v26;
    *(v26 + 16) = v468;
    MEMORY[0x277D82BE0](v27);
    v28 = swift_allocObject();
    v29 = v468;
    v471 = v28;
    *(v28 + 16) = v468;
    MEMORY[0x277D82BE0](v29);
    v30 = swift_allocObject();
    v31 = v468;
    v473 = v30;
    *(v30 + 16) = v468;
    MEMORY[0x277D82BE0](v31);
    v32 = swift_allocObject();
    v33 = v468;
    v475 = v32;
    *(v32 + 16) = v468;
    MEMORY[0x277D82BE0](v33);
    v482 = swift_allocObject();
    *(v482 + 16) = v468;
    v501 = Logger.logObject.getter();
    v502 = static os_log_type_t.debug.getter();
    v478 = 17;
    v484 = swift_allocObject();
    v477 = 32;
    *(v484 + 16) = 32;
    v485 = swift_allocObject();
    v479 = 8;
    *(v485 + 16) = 8;
    v34 = swift_allocObject();
    v35 = v469;
    v470 = v34;
    *(v34 + 16) = v529;
    *(v34 + 24) = v35;
    v36 = swift_allocObject();
    v37 = v470;
    v486 = v36;
    *(v36 + 16) = v530;
    *(v36 + 24) = v37;
    v487 = swift_allocObject();
    *(v487 + 16) = v477;
    v488 = swift_allocObject();
    *(v488 + 16) = v479;
    v38 = swift_allocObject();
    v39 = v471;
    v472 = v38;
    *(v38 + 16) = v531;
    *(v38 + 24) = v39;
    v40 = swift_allocObject();
    v41 = v472;
    v489 = v40;
    *(v40 + 16) = v532;
    *(v40 + 24) = v41;
    v490 = swift_allocObject();
    *(v490 + 16) = v477;
    v491 = swift_allocObject();
    *(v491 + 16) = v479;
    v42 = swift_allocObject();
    v43 = v473;
    v474 = v42;
    *(v42 + 16) = v533;
    *(v42 + 24) = v43;
    v44 = swift_allocObject();
    v45 = v474;
    v492 = v44;
    *(v44 + 16) = v534;
    *(v44 + 24) = v45;
    v493 = swift_allocObject();
    *(v493 + 16) = v477;
    v494 = swift_allocObject();
    *(v494 + 16) = v479;
    v46 = swift_allocObject();
    v47 = v475;
    v476 = v46;
    *(v46 + 16) = v535;
    *(v46 + 24) = v47;
    v48 = swift_allocObject();
    v49 = v476;
    v495 = v48;
    *(v48 + 16) = v536;
    *(v48 + 24) = v49;
    v496 = swift_allocObject();
    *(v496 + 16) = v477;
    v497 = swift_allocObject();
    *(v497 + 16) = v479;
    v50 = swift_allocObject();
    v51 = v482;
    v483 = v50;
    *(v50 + 16) = v537;
    *(v50 + 24) = v51;
    v52 = swift_allocObject();
    v53 = v483;
    v499 = v52;
    *(v52 + 16) = v538;
    *(v52 + 24) = v53;
    v498 = _allocateUninitializedArray<A>(_:)();
    v500 = v54;

    v55 = v484;
    v56 = v500;
    *v500 = v539;
    v56[1] = v55;

    v57 = v485;
    v58 = v500;
    v500[2] = v540;
    v58[3] = v57;

    v59 = v486;
    v60 = v500;
    v500[4] = v541;
    v60[5] = v59;

    v61 = v487;
    v62 = v500;
    v500[6] = v542;
    v62[7] = v61;

    v63 = v488;
    v64 = v500;
    v500[8] = v543;
    v64[9] = v63;

    v65 = v489;
    v66 = v500;
    v500[10] = v544;
    v66[11] = v65;

    v67 = v490;
    v68 = v500;
    v500[12] = v545;
    v68[13] = v67;

    v69 = v491;
    v70 = v500;
    v500[14] = v546;
    v70[15] = v69;

    v71 = v492;
    v72 = v500;
    v500[16] = v547;
    v72[17] = v71;

    v73 = v493;
    v74 = v500;
    v500[18] = v548;
    v74[19] = v73;

    v75 = v494;
    v76 = v500;
    v500[20] = v549;
    v76[21] = v75;

    v77 = v495;
    v78 = v500;
    v500[22] = v550;
    v78[23] = v77;

    v79 = v496;
    v80 = v500;
    v500[24] = v551;
    v80[25] = v79;

    v81 = v497;
    v82 = v500;
    v500[26] = v552;
    v82[27] = v81;

    v83 = v499;
    v84 = v500;
    v500[28] = v553;
    v84[29] = v83;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v501, v502))
    {
      v85 = v504;
      v443 = static UnsafeMutablePointer.allocate(capacity:)();
      v442 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v444 = createStorage<A>(capacity:type:)(0, v442, v442);
      v445 = createStorage<A>(capacity:type:)(5, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v446 = v610;
      v610[0] = v443;
      v447 = &v609;
      v609 = v444;
      v448 = &v608;
      v608 = v445;
      serialize(_:at:)(2, v610);
      serialize(_:at:)(5, v446);
      v606 = v539;
      v607 = v484;
      closure #1 in osLogInternal(_:log:type:)(&v606, v446, v447, v448);
      v449 = v85;
      v450 = v484;
      v451 = v485;
      v452 = v486;
      v453 = v487;
      v454 = v488;
      v455 = v489;
      v456 = v490;
      v457 = v491;
      v458 = v492;
      v459 = v493;
      v460 = v494;
      v461 = v495;
      v462 = v496;
      v463 = v497;
      v464 = v499;
      if (v85)
      {
        v426 = v450;
        v427 = v451;
        v428 = v452;
        v429 = v453;
        v430 = v454;
        v431 = v455;
        v432 = v456;
        v433 = v457;
        v434 = v458;
        v435 = v459;
        v436 = v460;
        v437 = v461;
        v438 = v462;
        v439 = v463;
        v440 = v464;
        v201 = v464;
        v200 = v463;
        v199 = v462;
        v198 = v461;
        v197 = v460;
        v196 = v459;
        v195 = v458;
        v194 = v457;
        v193 = v456;
        v192 = v455;
        v191 = v454;
        v190 = v453;
        v189 = v452;
        v188 = v451;

        __break(1u);
      }

      else
      {
        v606 = v540;
        v607 = v485;
        closure #1 in osLogInternal(_:log:type:)(&v606, v610, &v609, &v608);
        v410 = 0;
        v411 = v484;
        v412 = v485;
        v413 = v486;
        v414 = v487;
        v415 = v488;
        v416 = v489;
        v417 = v490;
        v418 = v491;
        v419 = v492;
        v420 = v493;
        v421 = v494;
        v422 = v495;
        v423 = v496;
        v424 = v497;
        v425 = v499;
        v606 = v541;
        v607 = v486;
        closure #1 in osLogInternal(_:log:type:)(&v606, v610, &v609, &v608);
        v394 = 0;
        v395 = v484;
        v396 = v485;
        v397 = v486;
        v398 = v487;
        v399 = v488;
        v400 = v489;
        v401 = v490;
        v402 = v491;
        v403 = v492;
        v404 = v493;
        v405 = v494;
        v406 = v495;
        v407 = v496;
        v408 = v497;
        v409 = v499;
        v606 = v542;
        v607 = v487;
        closure #1 in osLogInternal(_:log:type:)(&v606, v610, &v609, &v608);
        v378 = 0;
        v379 = v484;
        v380 = v485;
        v381 = v486;
        v382 = v487;
        v383 = v488;
        v384 = v489;
        v385 = v490;
        v386 = v491;
        v387 = v492;
        v388 = v493;
        v389 = v494;
        v390 = v495;
        v391 = v496;
        v392 = v497;
        v393 = v499;
        v606 = v543;
        v607 = v488;
        closure #1 in osLogInternal(_:log:type:)(&v606, v610, &v609, &v608);
        v362 = 0;
        v363 = v484;
        v364 = v485;
        v365 = v486;
        v366 = v487;
        v367 = v488;
        v368 = v489;
        v369 = v490;
        v370 = v491;
        v371 = v492;
        v372 = v493;
        v373 = v494;
        v374 = v495;
        v375 = v496;
        v376 = v497;
        v377 = v499;
        v606 = v544;
        v607 = v489;
        closure #1 in osLogInternal(_:log:type:)(&v606, v610, &v609, &v608);
        v346 = 0;
        v347 = v484;
        v348 = v485;
        v349 = v486;
        v350 = v487;
        v351 = v488;
        v352 = v489;
        v353 = v490;
        v354 = v491;
        v355 = v492;
        v356 = v493;
        v357 = v494;
        v358 = v495;
        v359 = v496;
        v360 = v497;
        v361 = v499;
        v606 = v545;
        v607 = v490;
        closure #1 in osLogInternal(_:log:type:)(&v606, v610, &v609, &v608);
        v330 = 0;
        v331 = v484;
        v332 = v485;
        v333 = v486;
        v334 = v487;
        v335 = v488;
        v336 = v489;
        v337 = v490;
        v338 = v491;
        v339 = v492;
        v340 = v493;
        v341 = v494;
        v342 = v495;
        v343 = v496;
        v344 = v497;
        v345 = v499;
        v606 = v546;
        v607 = v491;
        closure #1 in osLogInternal(_:log:type:)(&v606, v610, &v609, &v608);
        v314 = 0;
        v315 = v484;
        v316 = v485;
        v317 = v486;
        v318 = v487;
        v319 = v488;
        v320 = v489;
        v321 = v490;
        v322 = v491;
        v323 = v492;
        v324 = v493;
        v325 = v494;
        v326 = v495;
        v327 = v496;
        v328 = v497;
        v329 = v499;
        v606 = v547;
        v607 = v492;
        closure #1 in osLogInternal(_:log:type:)(&v606, v610, &v609, &v608);
        v298 = 0;
        v299 = v484;
        v300 = v485;
        v301 = v486;
        v302 = v487;
        v303 = v488;
        v304 = v489;
        v305 = v490;
        v306 = v491;
        v307 = v492;
        v308 = v493;
        v309 = v494;
        v310 = v495;
        v311 = v496;
        v312 = v497;
        v313 = v499;
        v606 = v548;
        v607 = v493;
        closure #1 in osLogInternal(_:log:type:)(&v606, v610, &v609, &v608);
        v282 = 0;
        v283 = v484;
        v284 = v485;
        v285 = v486;
        v286 = v487;
        v287 = v488;
        v288 = v489;
        v289 = v490;
        v290 = v491;
        v291 = v492;
        v292 = v493;
        v293 = v494;
        v294 = v495;
        v295 = v496;
        v296 = v497;
        v297 = v499;
        v606 = v549;
        v607 = v494;
        closure #1 in osLogInternal(_:log:type:)(&v606, v610, &v609, &v608);
        v266 = 0;
        v267 = v484;
        v268 = v485;
        v269 = v486;
        v270 = v487;
        v271 = v488;
        v272 = v489;
        v273 = v490;
        v274 = v491;
        v275 = v492;
        v276 = v493;
        v277 = v494;
        v278 = v495;
        v279 = v496;
        v280 = v497;
        v281 = v499;
        v606 = v550;
        v607 = v495;
        closure #1 in osLogInternal(_:log:type:)(&v606, v610, &v609, &v608);
        v250 = 0;
        v251 = v484;
        v252 = v485;
        v253 = v486;
        v254 = v487;
        v255 = v488;
        v256 = v489;
        v257 = v490;
        v258 = v491;
        v259 = v492;
        v260 = v493;
        v261 = v494;
        v262 = v495;
        v263 = v496;
        v264 = v497;
        v265 = v499;
        v606 = v551;
        v607 = v496;
        closure #1 in osLogInternal(_:log:type:)(&v606, v610, &v609, &v608);
        v234 = 0;
        v235 = v484;
        v236 = v485;
        v237 = v486;
        v238 = v487;
        v239 = v488;
        v240 = v489;
        v241 = v490;
        v242 = v491;
        v243 = v492;
        v244 = v493;
        v245 = v494;
        v246 = v495;
        v247 = v496;
        v248 = v497;
        v249 = v499;
        v606 = v552;
        v607 = v497;
        closure #1 in osLogInternal(_:log:type:)(&v606, v610, &v609, &v608);
        v218 = 0;
        v219 = v484;
        v220 = v485;
        v221 = v486;
        v222 = v487;
        v223 = v488;
        v224 = v489;
        v225 = v490;
        v226 = v491;
        v227 = v492;
        v228 = v493;
        v229 = v494;
        v230 = v495;
        v231 = v496;
        v232 = v497;
        v233 = v499;
        v606 = v553;
        v607 = v499;
        closure #1 in osLogInternal(_:log:type:)(&v606, v610, &v609, &v608);
        v202 = 0;
        v203 = v484;
        v204 = v485;
        v205 = v486;
        v206 = v487;
        v207 = v488;
        v208 = v489;
        v209 = v490;
        v210 = v491;
        v211 = v492;
        v212 = v493;
        v213 = v494;
        v214 = v495;
        v215 = v496;
        v216 = v497;
        v217 = v499;
        _os_log_impl(&dword_269912000, v501, v502, "got a dose event with scheduleID: %s, medID: %s, status: %s, scheduledDate: %s, startDate: %s", v443, 0x34u);
        destroyStorage<A>(_:count:)(v444, 0, v442);
        destroyStorage<A>(_:count:)(v445, 5, MEMORY[0x277D84F70] + 8);
        MEMORY[0x26D6497C0](v443, MEMORY[0x277D84B78]);

        v441 = v202;
      }
    }

    else
    {
      v86 = v504;

      v441 = v86;
    }

    v186 = v441;
    MEMORY[0x277D82BD8](v501);
    v506(v571, v578);
    v187 = [v468 scheduledDate];
    if (v187)
    {
      v185 = v187;
      v184 = v187;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();
      (*(v561 + 32))(v567, v564, v560);
      (*(v561 + 56))(v567, 0, 1, v560);
      MEMORY[0x277D82BD8](v184);
    }

    else
    {
      (*(v561 + 56))(v567, 1, 1, v560);
    }

    v183 = (*(v561 + 48))(v567, 1, v560) == 1;
    v182 = v183;
    outlined destroy of Date?(v567);
    v622 = v182;
    if (v182)
    {
      MEMORY[0x277D82BD8](v468);
      continue;
    }

    v177 = [v468 medicationIdentifier];
    v180 = [v177 underlyingIdentifier];
    v178 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v179 = v87;
    v620 = v178;
    v621 = v87;
    MEMORY[0x277D82BD8](v177);
    MEMORY[0x277D82BD8](v180);
    v181 = [v468 scheduleItemIdentifier];
    if (v181)
    {
      v176 = v181;
      v171 = v181;
      v172 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v173 = v88;
      MEMORY[0x277D82BD8](v171);
      v174 = v172;
      v175 = v173;
    }

    else
    {
      v174 = 0;
      v175 = 0;
    }

    v169 = v617;
    v617[0] = v174;
    v617[1] = v175;
    MEMORY[0x26D649240](&v618);
    outlined destroy of String.UTF8View(v169);
    v170 = v618;
    if (v618)
    {
      v168 = v170;
      v164 = v170;

      v619 = v164;
      v166 = v614;
      v614[0] = v164;
      v165 = v613;
      v613[0] = v178;
      v613[1] = v179;
      lazy protocol witness table accessor for type [String] and conformance [A]();
      v167 = Sequence<>.contains(_:)();
      outlined destroy of [HKQuantityType](v166);
      if (v167)
      {
        outlined destroy of [HKQuantityType](&v619);

        MEMORY[0x277D82BD8](v468);
        continue;
      }

      v612[1] = v178;
      v612[2] = v179;
      Array.append(_:)();
      v163 = [v468 scheduleItemIdentifier];
      if (v163)
      {
        v162 = v163;
        v157 = v163;
        v158 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v159 = v89;
        MEMORY[0x277D82BD8](v157);
        v160 = v158;
        v161 = v159;
      }

      else
      {
        v160 = 0;
        v161 = 0;
      }

      v153 = v161;
      v152 = v160;
      v156 = &v619;
      v151 = v619;

      v155 = v612;
      v612[0] = v151;
      v154 = v611;
      v611[0] = v152;
      v611[1] = v153;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSSgSaySSGGMd, &_sSDySSSgSaySSGGMR);
      Dictionary.subscript.setter();
      MEMORY[0x277D82BE0](v468);
      v610[1] = v468;
      Array.append(_:)();
      outlined destroy of [HKQuantityType](v156);
    }

    else
    {
      v150 = [v468 scheduleItemIdentifier];
      if (v150)
      {
        v149 = v150;
        v144 = v150;
        v145 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v146 = v90;
        MEMORY[0x277D82BD8](v144);
        v147 = v145;
        v148 = v146;
      }

      else
      {
        v147 = 0;
        v148 = 0;
      }

      v141 = v148;
      v140 = v147;
      v139 = MEMORY[0x277D837D0];
      v137 = _allocateUninitializedArray<A>(_:)();
      v138 = v91;

      v92 = v179;
      v93 = v138;
      *v138 = v178;
      v93[1] = v92;
      _finalizeUninitializedArray<A>(_:)();
      v143 = &v616;
      v616 = v94;
      v142 = v615;
      v615[0] = v140;
      v615[1] = v141;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSSgSaySSGGMd, &_sSDySSSgSaySSGGMR);
      Dictionary.subscript.setter();
      MEMORY[0x277D82BE0](v468);
      v614[1] = v468;
      Array.append(_:)();
    }

    MEMORY[0x277D82BD8](v468);
  }

  v95 = v569;
  outlined destroy of [HKQuantityType](v634);
  v122 = Logger.wellnessIntents.unsafeMutableAddressor();
  v123 = &v631;
  v126 = 32;
  swift_beginAccess();
  v579(v95, v122, v578);
  swift_endAccess();
  v124 = v635;

  v127 = 7;
  v128 = swift_allocObject();
  *(v128 + 16) = v124;
  v135 = Logger.logObject.getter();
  v136 = static os_log_type_t.debug.getter();
  v125 = 17;
  v130 = swift_allocObject();
  *(v130 + 16) = 0;
  v131 = swift_allocObject();
  *(v131 + 16) = 8;
  v96 = swift_allocObject();
  v97 = v128;
  v129 = v96;
  *(v96 + 16) = v554;
  *(v96 + 24) = v97;
  v98 = swift_allocObject();
  v99 = v129;
  v133 = v98;
  *(v98 + 16) = v555;
  *(v98 + 24) = v99;
  v132 = _allocateUninitializedArray<A>(_:)();
  v134 = v100;

  v101 = v130;
  v102 = v134;
  *v134 = v556;
  v102[1] = v101;

  v103 = v131;
  v104 = v134;
  v134[2] = v557;
  v104[3] = v103;

  v105 = v133;
  v106 = v134;
  v134[4] = v558;
  v106[5] = v105;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v135, v136))
  {
    v107 = v504;
    v115 = static UnsafeMutablePointer.allocate(capacity:)();
    v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v114 = 0;
    v116 = createStorage<A>(capacity:type:)(0, v113, v113);
    v117 = createStorage<A>(capacity:type:)(v114, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v118 = &v629;
    v629 = v115;
    v119 = &v628;
    v628 = v116;
    v120 = &v627;
    v627 = v117;
    serialize(_:at:)(0, &v629);
    serialize(_:at:)(1, v118);
    v625 = v556;
    v626 = v130;
    closure #1 in osLogInternal(_:log:type:)(&v625, v118, v119, v120);
    v121 = v107;
    if (v107)
    {

      __break(1u);
    }

    else
    {
      v625 = v557;
      v626 = v131;
      closure #1 in osLogInternal(_:log:type:)(&v625, &v629, &v628, &v627);
      v112 = 0;
      v625 = v558;
      v626 = v133;
      closure #1 in osLogInternal(_:log:type:)(&v625, &v629, &v628, &v627);
      _os_log_impl(&dword_269912000, v135, v136, "Finished filtering to this many dose events: %ld", v115, 0xCu);
      v111 = 0;
      destroyStorage<A>(_:count:)(v116, 0, v113);
      destroyStorage<A>(_:count:)(v117, v111, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](v115, MEMORY[0x277D84B78]);
    }
  }

  else
  {
  }

  MEMORY[0x277D82BD8](v135);
  v506(v569, v578);
  v110 = &v635;
  v109[1] = &v630;
  swift_beginAccess();
  swift_endAccess();
  outlined destroy of [HKQuantityType](v110);
  outlined destroy of [HKQuantityType](&v636);
  return v124;
}

Swift::Bool __swiftcall isCompatibleUnit(_:_:)(Swift::String_optional a1, Swift::String_optional a2)
{
  object = a2.value._object;
  countAndFlagsBits = a2.value._countAndFlagsBits;
  v49 = a1.value._object;
  v47 = a1.value._countAndFlagsBits;
  v45 = 0;
  v68 = 0;
  v67 = 0;
  v66 = 0;
  v65 = 0;
  v46 = 0;
  v59 = 0;
  v58 = 0;
  v57 = 0;
  v56 = 0;
  v50 = type metadata accessor for Logger();
  v51 = *(v50 - 8);
  v52 = v51;
  v53 = *(v51 + 64);
  MEMORY[0x28223BE20](object, v49);
  v54 = &v11 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = v2;
  v68 = v3;
  v65 = v4;
  v66 = v5;

  if (object)
  {
    v43 = countAndFlagsBits;
    v44 = object;
    v41 = object;
    v42 = countAndFlagsBits;
    v58 = countAndFlagsBits;
    v59 = object;

    if (v49)
    {
      v39 = v47;
      v40 = v49;
      v35 = v49;
      v56 = v47;
      v57 = v49;
      v36 = MEMORY[0x26D649310]();

      v37 = v36;
    }

    else
    {

      v37 = 1;
    }

    v38 = v46;
  }

  else
  {
    v6 = v54;
    v27 = Logger.wellnessIntents.unsafeMutableAddressor();
    v28 = &v64;
    v31 = 0;
    swift_beginAccess();
    (*(v52 + 16))(v6, v27, v50);
    swift_endAccess();
    v33 = Logger.logObject.getter();
    v29 = v33;
    v32 = static os_log_type_t.debug.getter();
    v30 = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v34 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v33, v32))
    {
      v7 = v46;
      v18 = static UnsafeMutablePointer.allocate(capacity:)();
      v14 = v18;
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v16 = 0;
      v19 = createStorage<A>(capacity:type:)(0, v15, v15);
      v17 = v19;
      v20 = createStorage<A>(capacity:type:)(v16, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v63 = v18;
      v62 = v19;
      v61 = v20;
      v21 = 0;
      v22 = &v63;
      serialize(_:at:)(0, &v63);
      serialize(_:at:)(v21, v22);
      v60 = v34;
      v23 = &v11;
      MEMORY[0x28223BE20](&v11, v8);
      v24 = &v11 - 6;
      *(&v11 - 4) = v9;
      *(&v11 - 3) = &v62;
      *(&v11 - 2) = &v61;
      v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();
      v26 = v7;
      if (v7)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_269912000, v29, v30, "healthAppDosageUnit was unexpectedly nil, return false", v14, 2u);
        v12 = 0;
        destroyStorage<A>(_:count:)(v17, 0, v15);
        destroyStorage<A>(_:count:)(v20, v12, MEMORY[0x277D84F70] + 8);
        MEMORY[0x26D6497C0](v14, MEMORY[0x277D84B78]);

        v13 = v26;
      }
    }

    else
    {

      v13 = v46;
    }

    v11 = v13;

    (*(v52 + 8))(v54, v50);
    v37 = 0;
    v38 = v11;
  }

  return v37 & 1;
}

uint64_t implicit closure #5 in filterUniqueDoseEvents(doseEvents:)(uint64_t a1)
{
  v12 = a1;
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = v7 - 8;
  v10 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v7, v1);
  v11 = v6 - v10;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v14 = (*(*(v13 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x28223BE20](v12, v2);
  v15 = v6 - v14;
  v16 = [v4 scheduledDate];
  if (v16)
  {
    v6[1] = v16;
    v6[0] = v16;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();
    (*(v8 + 32))(v15, v11, v7);
    (*(v8 + 56))(v15, 0, 1, v7);
    MEMORY[0x277D82BD8](v6[0]);
  }

  else
  {
    (*(v8 + 56))(v15, 1, 1, v7);
  }

  lazy protocol witness table accessor for type Date? and conformance A?();
  return String.init<A>(describing:)();
}

uint64_t implicit closure #6 in filterUniqueDoseEvents(doseEvents:)(uint64_t a1)
{
  v7 = a1;
  v9 = type metadata accessor for Date();
  v8 = (*(*(v9 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v7, v1);
  v10 = &v6 - v8;
  v11 = [v3 startDate];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();
  lazy protocol witness table accessor for type Date and conformance Date();
  v12 = String.init<A>(describing:)();
  v13 = v4;
  MEMORY[0x277D82BD8](v11);
  return v12;
}

uint64_t closure #1 in allDoseEventsAreUnlogged(doseEvents:)(id *a1, uint64_t a2)
{
  [*a1 status];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo27HKMedicationDoseEventStatusVGMd, &_sSaySo27HKMedicationDoseEventStatusVGMR);
  lazy protocol witness table accessor for type [HKMedicationDoseEventStatus] and conformance [A]();
  lazy protocol witness table accessor for type HKMedicationDoseEventStatus and conformance HKMedicationDoseEventStatus();
  return (Sequence<>.contains(_:)() ^ 1) & 1;
}

unint64_t lazy protocol witness table accessor for type [HKMedicationDoseEventStatus] and conformance [A]()
{
  v2 = lazy protocol witness table cache variable for type [HKMedicationDoseEventStatus] and conformance [A];
  if (!lazy protocol witness table cache variable for type [HKMedicationDoseEventStatus] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo27HKMedicationDoseEventStatusVGMd, &_sSaySo27HKMedicationDoseEventStatusVGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [HKMedicationDoseEventStatus] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

id UndoMedsIntent.init()()
{
  v3 = 0;
  v2.receiver = 0;
  v2.super_class = type metadata accessor for UndoMedsIntent();
  v1 = objc_msgSendSuper2(&v2, sel_init);
  MEMORY[0x277D82BE0](v1);
  v3 = v1;
  MEMORY[0x277D82BD8](v1);
  return v1;
}

id UndoMedsIntent.__allocating_init(coder:)(uint64_t a1)
{
  v4 = [objc_allocWithZone(v1) initWithCoder_];
  MEMORY[0x277D82BD8](a1);
  return v4;
}

id UndoMedsIntent.init(coder:)(uint64_t a1)
{
  v7 = 0;
  v6 = a1;
  v5.receiver = 0;
  v5.super_class = type metadata accessor for UndoMedsIntent();
  v4 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);
  if (v4)
  {
    MEMORY[0x277D82BE0](v4);
    v7 = v4;
    MEMORY[0x277D82BD8](a1);
    MEMORY[0x277D82BD8](v7);
    return v4;
  }

  else
  {
    MEMORY[0x277D82BD8](0);
    MEMORY[0x277D82BD8](a1);
    return 0;
  }
}

id UndoMedsIntent.__allocating_init(identifier:backingStore:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = objc_allocWithZone(v3);
  if (a2)
  {
    v6 = MEMORY[0x26D6492A0](a1);

    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v5 = [v11 initWithIdentifier_backingStore_];
  MEMORY[0x277D82BD8](a3);
  MEMORY[0x277D82BD8](v7);
  return v5;
}

id UndoMedsIntent.init(identifier:backingStore:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14 = 0;
  v12 = a1;
  v13 = a2;
  v11 = a3;

  if (a2)
  {
    v5 = MEMORY[0x26D6492A0](a1);

    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v10.receiver = 0;
  v10.super_class = type metadata accessor for UndoMedsIntent();
  v4 = objc_msgSendSuper2(&v10, sel_initWithIdentifier_backingStore_, v6, a3);
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BE0](v4);
  v14 = v4;
  MEMORY[0x277D82BD8](a3);

  MEMORY[0x277D82BD8](v14);
  return v4;
}

id UndoMedsIntent.__allocating_init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = objc_allocWithZone(v5);
  v16 = MEMORY[0x26D6492A0](a1, a2);
  v18 = MEMORY[0x26D6492A0](a3, a4);
  if (a5)
  {
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v6 = [v13 initWithDomain:v16 verb:v18 parametersByName:isa];
  }

  else
  {
    v6 = [v13 initWithDomain:v16 verb:v18 parametersByName:0];
  }

  v9 = v6;
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v18);

  MEMORY[0x277D82BD8](v16);

  return v9;
}

id UndoMedsIntent.init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v22 = 0;
  v20 = a1;
  v21 = a2;
  v18 = a3;
  v19 = a4;
  v17 = a5;

  v11 = MEMORY[0x26D6492A0](a1, a2);

  v14 = MEMORY[0x26D6492A0](a3, a4);

  if (a5)
  {
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v8 = isa;
  }

  else
  {
    v8 = 0;
  }

  v16.receiver = 0;
  v16.super_class = type metadata accessor for UndoMedsIntent();
  v6 = objc_msgSendSuper2(&v16, sel_initWithDomain_verb_parametersByName_, v11, v14, v8);
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v14);
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BE0](v6);
  v22 = v6;

  MEMORY[0x277D82BD8](v22);
  return v6;
}

id UndoMedsIntent.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UndoMedsIntent();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t UndoMedsIntentResponseCode.init(rawValue:)(uint64_t a1)
{
  switch(a1)
  {
    case 0:
      return 0;
    case 1:
      return 1;
    case 2:
      return 2;
    case 3:
      return 3;
    case 4:
      return 4;
    case 5:
      return 5;
    case 6:
      return 6;
    case 100:
      return 100;
  }

  return 0;
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance UndoMedsIntentResponseCode@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = UndoMedsIntentResponseCode.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v3 & 1;
  return result;
}

uint64_t UndoMedsIntentResponse.code.getter()
{
  v2 = (v0 + OBJC_IVAR___UndoMedsIntentResponse_code);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3;
}

uint64_t UndoMedsIntentResponse.code.setter(uint64_t a1)
{
  v3 = (v1 + OBJC_IVAR___UndoMedsIntentResponse_code);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

uint64_t key path getter for UndoMedsIntentResponse.code : UndoMedsIntentResponse@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  MEMORY[0x277D82BE0](*a1);
  *a2 = UndoMedsIntentResponse.code.getter();
  return MEMORY[0x277D82BD8](v3);
}

uint64_t key path setter for UndoMedsIntentResponse.code : UndoMedsIntentResponse(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v3 = *a2;
  MEMORY[0x277D82BE0](*a2);
  UndoMedsIntentResponse.code.setter(v4);
  return MEMORY[0x277D82BD8](v3);
}

char *UndoMedsIntentResponse.init(code:userActivity:)(uint64_t a1, uint64_t a2)
{
  v6 = [v7 init];
  MEMORY[0x277D82BE0](v6);
  v3 = &v6[OBJC_IVAR___UndoMedsIntentResponse_code];
  swift_beginAccess();
  *v3 = a1;
  swift_endAccess();
  MEMORY[0x277D82BE0](v6);
  [v6 setUserActivity_];
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](a2);
  MEMORY[0x277D82BD8](v6);
  return v6;
}

id UndoMedsIntentResponse.init()()
{
  v3 = 0;
  *OBJC_IVAR___UndoMedsIntentResponse_code = 0;
  v2.receiver = v3;
  v2.super_class = type metadata accessor for UndoMedsIntentResponse();
  v1 = objc_msgSendSuper2(&v2, sel_init);
  MEMORY[0x277D82BE0](v1);
  v3 = v1;
  MEMORY[0x277D82BD8](v1);
  return v1;
}

id UndoMedsIntentResponse.__allocating_init(coder:)(uint64_t a1)
{
  v4 = [objc_allocWithZone(v1) initWithCoder_];
  MEMORY[0x277D82BD8](a1);
  return v4;
}

id UndoMedsIntentResponse.init(coder:)(uint64_t a1)
{
  v7 = 0;
  v6 = a1;
  *OBJC_IVAR___UndoMedsIntentResponse_code = 0;
  v5.receiver = v7;
  v5.super_class = type metadata accessor for UndoMedsIntentResponse();
  v4 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);
  if (v4)
  {
    MEMORY[0x277D82BE0](v4);
    v7 = v4;
    MEMORY[0x277D82BD8](a1);
    MEMORY[0x277D82BD8](v7);
    return v4;
  }

  else
  {
    MEMORY[0x277D82BD8](0);
    MEMORY[0x277D82BD8](a1);
    return 0;
  }
}

id UndoMedsIntentResponse.__allocating_init(backingStore:)(uint64_t a1)
{
  v4 = [objc_allocWithZone(v1) initWithBackingStore_];
  MEMORY[0x277D82BD8](a1);
  return v4;
}

id UndoMedsIntentResponse.init(backingStore:)(uint64_t a1)
{
  v7 = 0;
  v6 = a1;
  *OBJC_IVAR___UndoMedsIntentResponse_code = 0;
  v5.receiver = v7;
  v5.super_class = type metadata accessor for UndoMedsIntentResponse();
  v4 = objc_msgSendSuper2(&v5, sel_initWithBackingStore_, a1);
  if (v4)
  {
    MEMORY[0x277D82BE0](v4);
    v7 = v4;
    MEMORY[0x277D82BD8](a1);
    MEMORY[0x277D82BD8](v7);
    return v4;
  }

  else
  {
    MEMORY[0x277D82BD8](0);
    MEMORY[0x277D82BD8](a1);
    return 0;
  }
}

id UndoMedsIntentResponse.__allocating_init(propertiesByName:)(uint64_t a1)
{
  v8 = objc_allocWithZone(v1);
  if (a1)
  {
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v2 = [v8 initWithPropertiesByName_];
  }

  else
  {
    v2 = [v8 initWithPropertiesByName_];
  }

  v5 = v2;
  MEMORY[0x277D82BD8](v4);
  return v5;
}

id UndoMedsIntentResponse.init(propertiesByName:)(uint64_t a1)
{
  v9 = 0;
  v8 = a1;
  *OBJC_IVAR___UndoMedsIntentResponse_code = 0;

  if (a1)
  {
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v5 = isa;
  }

  else
  {
    v5 = 0;
  }

  v7.receiver = v9;
  v7.super_class = type metadata accessor for UndoMedsIntentResponse();
  v3 = objc_msgSendSuper2(&v7, sel_initWithPropertiesByName_, v5);
  MEMORY[0x277D82BD8](v5);
  if (v3)
  {
    MEMORY[0x277D82BE0](v3);
    v9 = v3;

    MEMORY[0x277D82BD8](v9);
    return v3;
  }

  else
  {
    MEMORY[0x277D82BD8](0);

    return 0;
  }
}

id UndoMedsIntentResponse.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UndoMedsIntentResponse();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t lazy protocol witness table accessor for type UndoMedsIntentResponseCode and conformance UndoMedsIntentResponseCode()
{
  v2 = lazy protocol witness table cache variable for type UndoMedsIntentResponseCode and conformance UndoMedsIntentResponseCode;
  if (!lazy protocol witness table cache variable for type UndoMedsIntentResponseCode and conformance UndoMedsIntentResponseCode)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type UndoMedsIntentResponseCode and conformance UndoMedsIntentResponseCode);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type UndoMedsIntentResponseCode and conformance UndoMedsIntentResponseCode;
  if (!lazy protocol witness table cache variable for type UndoMedsIntentResponseCode and conformance UndoMedsIntentResponseCode)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type UndoMedsIntentResponseCode and conformance UndoMedsIntentResponseCode);
    return WitnessTable;
  }

  return v2;
}

uint64_t Calendar.dateInterval(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v112 = a3;
  v180 = a1;
  v179 = a2;
  v113 = partial apply for implicit closure #1 in Calendar.dateInterval(for:);
  v114 = partial apply for implicit closure #1 in Calendar.dateInterval(for:);
  v115 = _s2os18OSLogInterpolationV06appendC0_5align7privacyyxyXA_AA0B15StringAlignmentVAA0B7PrivacyVts06CustomG11ConvertibleRzlFSSycfu_TA_4;
  v116 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  v117 = _s2os18OSLogInterpolationV06appendC0_5align7privacyyxyXA_AA0B15StringAlignmentVAA0B7PrivacyVts06CustomG11ConvertibleRzlFSSycfu_TA_4;
  v118 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  v119 = partial apply for closure #1 in OSLogArguments.append(_:);
  v120 = partial apply for closure #1 in OSLogArguments.append(_:);
  v121 = partial apply for closure #1 in OSLogArguments.append(_:);
  v122 = partial apply for closure #1 in OSLogArguments.append(_:);
  v123 = partial apply for closure #1 in OSLogArguments.append(_:);
  v124 = partial apply for closure #1 in OSLogArguments.append(_:);
  v196 = 0;
  v195 = 0;
  v194 = 0;
  v193 = 0;
  v192 = 0;
  v190 = 0;
  v191 = 0;
  v189 = 0;
  v125 = 0;
  v151 = 0;
  v126 = type metadata accessor for Logger();
  v127 = *(v126 - 8);
  v128 = v126 - 8;
  v129 = (*(v127 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0, v3);
  v130 = v55 - v129;
  v131 = type metadata accessor for DateInterval();
  v132 = *(v131 - 8);
  v133 = v131 - 8;
  v134 = (*(v132 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v131, v4);
  v135 = v55 - v134;
  v196 = v55 - v134;
  v136 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v151, v5);
  v137 = v55 - v136;
  v138 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v7, v55 - v136);
  v139 = v55 - v138;
  v140 = type metadata accessor for Date();
  v141 = *(v140 - 8);
  v142 = v140 - 8;
  v143 = (v141[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v151, v8);
  v144 = v55 - v143;
  v145 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v10, v55 - v143);
  v146 = v55 - v145;
  v147 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v12, v55 - v145);
  v148 = v55 - v147;
  v195 = v55 - v147;
  v149 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v14, v15);
  v150 = v55 - v149;
  v194 = v55 - v149;
  v164 = type metadata accessor for Calendar();
  v162 = *(v164 - 8);
  v163 = v164 - 8;
  v152 = (v162[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v151, v16);
  v17 = v55 - v152;
  v165 = v55 - v152;
  v174 = type metadata accessor for DateComponents();
  v170 = *(v174 - 8);
  v171 = v174 - 8;
  v153 = v170;
  v157 = v170[8];
  v154 = (v157 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v180, v179);
  v155 = v55 - v154;
  v193 = v55 - v154;
  v156 = (v157 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v18, v19);
  v173 = v55 - v156;
  v158 = (v157 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v20, v21);
  v172 = v55 - v158;
  v192 = v55 - v158;
  v190 = v22;
  v191 = v23;
  v189 = v24;
  v178 = 0x277CBE000uLL;
  v168 = objc_opt_self();
  v160 = v162[2];
  v161 = v162 + 2;
  v160(v17, v159, v164);
  isa = Calendar._bridgeToObjectiveC()().super.isa;
  v166 = v162[1];
  v167 = v162 + 1;
  v166(v165, v164);
  v177 = [v168 hk:v180 componentsWithDayIndex:isa calendar:?];
  MEMORY[0x277D82BD8](isa);
  static DateComponents._unconditionallyBridgeFromObjectiveC(_:)();
  v175 = v170[4];
  v176 = v170 + 4;
  v175(v172, v173, v174);
  MEMORY[0x277D82BD8](v177);
  v25 = objc_opt_self();
  result = v180;
  v181 = v25;
  v182 = v180 + v179;
  if (__OFADD__(v180, v179))
  {
    __break(1u);
  }

  else
  {
    v160(v165, v159, v164);
    v108 = Calendar._bridgeToObjectiveC()().super.isa;
    v166(v165, v164);
    v109 = [v181 hk:v182 componentsWithDayIndex:v108 calendar:?];
    MEMORY[0x277D82BD8](v108);
    static DateComponents._unconditionallyBridgeFromObjectiveC(_:)();
    v175(v155, v173, v174);
    MEMORY[0x277D82BD8](v109);
    Calendar.date(from:)();
    v110 = v141[6];
    v111 = v141 + 6;
    if (v110(v139, 1, v140) == 1)
    {
      outlined destroy of Date?(v139);
    }

    else
    {
      v106 = v141[4];
      v107 = v141 + 4;
      v106(v150, v139, v140);
      Calendar.date(from:)();
      if (v110(v137, 1, v140) != 1)
      {
        v106(v148, v137, v140);
        v101 = v141[2];
        v100 = v141 + 2;
        v101(v146, v150, v140);
        v101(v144, v148, v140);
        DateInterval.init(start:end:)();
        (*(v132 + 16))(v112, v135, v131);
        (*(v132 + 56))(v112, 0, 1, v131);
        (*(v132 + 8))(v135, v131);
        v103 = v141[1];
        v102 = v141 + 1;
        v103(v148, v140);
        v103(v150, v140);
        v105 = v170[1];
        v104 = v170 + 1;
        v105(v155, v174);
        return (v105)(v172, v174);
      }

      outlined destroy of Date?(v137);
      (v141[1])(v150, v140);
    }

    v28 = v130;
    v70 = Logger.wellnessIntents.unsafeMutableAddressor();
    v71 = &v188;
    v85 = 32;
    swift_beginAccess();
    (*(v127 + 16))(v28, v70, v126);
    swift_endAccess();
    v72 = v153;
    v76 = v170[2];
    v75 = v170 + 2;
    v76(v173, v172, v174);
    v77 = *(v72 + 20);
    v73 = (v77 + 16) & ~v77;
    v86 = 7;
    v74 = swift_allocObject();
    v175((v74 + v73), v173, v174);

    v29 = swift_allocObject();
    v30 = v74;
    v80 = v29;
    *(v29 + 16) = v113;
    *(v29 + 24) = v30;

    v76(v173, v155, v174);
    v78 = (v77 + 16) & ~v77;
    v79 = swift_allocObject();
    v175((v79 + v78), v173, v174);

    v31 = swift_allocObject();
    v32 = v79;
    v87 = v31;
    *(v31 + 16) = v114;
    *(v31 + 24) = v32;

    v98 = Logger.logObject.getter();
    v99 = static os_log_type_t.error.getter();
    v83 = 17;
    v89 = swift_allocObject();
    v82 = 32;
    *(v89 + 16) = 32;
    v90 = swift_allocObject();
    v84 = 8;
    *(v90 + 16) = 8;
    v33 = swift_allocObject();
    v34 = v80;
    v81 = v33;
    *(v33 + 16) = v115;
    *(v33 + 24) = v34;
    v35 = swift_allocObject();
    v36 = v81;
    v91 = v35;
    *(v35 + 16) = v116;
    *(v35 + 24) = v36;
    v92 = swift_allocObject();
    *(v92 + 16) = v82;
    v93 = swift_allocObject();
    *(v93 + 16) = v84;
    v37 = swift_allocObject();
    v38 = v87;
    v88 = v37;
    *(v37 + 16) = v117;
    *(v37 + 24) = v38;
    v39 = swift_allocObject();
    v40 = v88;
    v95 = v39;
    *(v39 + 16) = v118;
    *(v39 + 24) = v40;
    v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v94 = _allocateUninitializedArray<A>(_:)();
    v96 = v41;

    v42 = v89;
    v43 = v96;
    *v96 = v119;
    v43[1] = v42;

    v44 = v90;
    v45 = v96;
    v96[2] = v120;
    v45[3] = v44;

    v46 = v91;
    v47 = v96;
    v96[4] = v121;
    v47[5] = v46;

    v48 = v92;
    v49 = v96;
    v96[6] = v122;
    v49[7] = v48;

    v50 = v93;
    v51 = v96;
    v96[8] = v123;
    v51[9] = v50;

    v52 = v95;
    v53 = v96;
    v96[10] = v124;
    v53[11] = v52;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v98, v99))
    {
      v54 = v125;
      v62 = static UnsafeMutablePointer.allocate(capacity:)();
      v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v63 = createStorage<A>(capacity:type:)(0, v61, v61);
      v64 = createStorage<A>(capacity:type:)(2, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v66 = &v187;
      v187 = v62;
      v67 = &v186;
      v186 = v63;
      v68 = &v185;
      v185 = v64;
      v65 = 2;
      serialize(_:at:)(2, &v187);
      serialize(_:at:)(v65, v66);
      v183 = v119;
      v184 = v89;
      closure #1 in osLogInternal(_:log:type:)(&v183, v66, v67, v68);
      v69 = v54;
      if (v54)
      {

        __break(1u);
      }

      else
      {
        v183 = v120;
        v184 = v90;
        closure #1 in osLogInternal(_:log:type:)(&v183, &v187, &v186, &v185);
        v60 = 0;
        v183 = v121;
        v184 = v91;
        closure #1 in osLogInternal(_:log:type:)(&v183, &v187, &v186, &v185);
        v59 = 0;
        v183 = v122;
        v184 = v92;
        closure #1 in osLogInternal(_:log:type:)(&v183, &v187, &v186, &v185);
        v58 = 0;
        v183 = v123;
        v184 = v93;
        closure #1 in osLogInternal(_:log:type:)(&v183, &v187, &v186, &v185);
        v57 = 0;
        v183 = v124;
        v184 = v95;
        closure #1 in osLogInternal(_:log:type:)(&v183, &v187, &v186, &v185);
        _os_log_impl(&dword_269912000, v98, v99, "Failed to convert HKDayIndexRange into a valid date interval. Start: %s End: %s", v62, 0x16u);
        destroyStorage<A>(_:count:)(v63, 0, v61);
        destroyStorage<A>(_:count:)(v64, 2, MEMORY[0x277D84F70] + 8);
        MEMORY[0x26D6497C0](v62, MEMORY[0x277D84B78]);
      }
    }

    else
    {
    }

    MEMORY[0x277D82BD8](v98);
    (*(v127 + 8))(v130, v126);
    (*(v132 + 56))(v112, 1, 1, v131);
    v56 = v170[1];
    v55[1] = v170 + 1;
    v56(v155, v174);
    return (v56)(v172, v174);
  }

  return result;
}

uint64_t MenstrualCycleAnalysis.menstruationProjections.setter(uint64_t a1)
{

  *v1 = a1;
}

uint64_t *MenstrualCycleAnalysis.init(_:calendar:)(void *a1, uint64_t a2)
{
  v67 = a2;
  v77 = a1;
  v72 = 0;
  v106 = 0;
  v105 = 0;
  v104 = 0;
  v66 = 0;
  v75 = type metadata accessor for Logger();
  v68 = v75;
  v69 = *(v75 - 8);
  v73 = v69;
  v70 = v69;
  MEMORY[0x28223BE20](v77, v67);
  v3 = &v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = v3;
  v105 = v4;
  v104 = v5;
  v74 = Logger.wellnessIntents.unsafeMutableAddressor();
  v83 = 32;
  v76 = &v103;
  swift_beginAccess();
  (*(v73 + 16))(v3, v74, v75);
  swift_endAccess();
  v6 = v77;
  v84 = 7;
  v85 = swift_allocObject();
  *(v85 + 16) = v77;
  v95 = Logger.logObject.getter();
  v78 = v95;
  v94 = static os_log_type_t.debug.getter();
  v79 = v94;
  v80 = 17;
  v88 = swift_allocObject();
  v81 = v88;
  *(v88 + 16) = 64;
  v89 = swift_allocObject();
  v82 = v89;
  *(v89 + 16) = 8;
  v7 = swift_allocObject();
  v8 = v85;
  v86 = v7;
  *(v7 + 16) = partial apply for implicit closure #3 in LogQuantityIntentHandler.handle(intent:);
  *(v7 + 24) = v8;
  v9 = swift_allocObject();
  v10 = v86;
  v92 = v9;
  v87 = v9;
  *(v9 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:);
  *(v9 + 24) = v10;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v90 = _allocateUninitializedArray<A>(_:)();
  v91 = v11;

  v12 = v88;
  v13 = v91;
  *v91 = partial apply for closure #1 in OSLogArguments.append(_:);
  v13[1] = v12;

  v14 = v89;
  v15 = v91;
  v91[2] = partial apply for closure #1 in OSLogArguments.append(_:);
  v15[3] = v14;

  v16 = v91;
  v17 = v92;
  v91[4] = partial apply for closure #1 in OSLogArguments.append(_:);
  v16[5] = v17;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v95, v94))
  {
    v18 = v66;
    v59 = static UnsafeMutablePointer.allocate(capacity:)();
    v56 = v59;
    v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v62 = 1;
    v60 = createStorage<A>(capacity:type:)(1, v57, v57);
    v58 = v60;
    v61 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v100 = v59;
    v99 = v60;
    v98 = v61;
    v63 = &v100;
    serialize(_:at:)(2, &v100);
    serialize(_:at:)(v62, v63);
    v96 = partial apply for closure #1 in OSLogArguments.append(_:);
    v97 = v81;
    closure #1 in osLogInternal(_:log:type:)(&v96, v63, &v99, &v98);
    v64 = v18;
    v65 = v18;
    if (v18)
    {
      v54 = 0;

      __break(1u);
    }

    else
    {
      v96 = partial apply for closure #1 in OSLogArguments.append(_:);
      v97 = v82;
      closure #1 in osLogInternal(_:log:type:)(&v96, &v100, &v99, &v98);
      v52 = 0;
      v53 = 0;
      v96 = partial apply for closure #1 in OSLogArguments.append(_:);
      v97 = v87;
      closure #1 in osLogInternal(_:log:type:)(&v96, &v100, &v99, &v98);
      v50 = 0;
      v51 = 0;
      _os_log_impl(&dword_269912000, v78, v79, "%@", v56, 0xCu);
      destroyStorage<A>(_:count:)(v58, 1, v57);
      destroyStorage<A>(_:count:)(v61, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](v56, MEMORY[0x277D84B78]);

      v55 = v50;
    }
  }

  else
  {
    v19 = v66;

    v55 = v19;
  }

  v20 = v55;

  (*(v70 + 8))(v71, v68);
  v41 = [v77 menstruationProjections];
  v40 = v41;
  v44 = 0;
  v42 = type metadata accessor for HKMCProjection();
  v102 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  KeyPath = swift_getKeyPath();
  v43 = KeyPath;

  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo14HKMCProjectionCGMd, &_sSaySo14HKMCProjectionCGMR);
  v47 = type metadata accessor for HKDayIndexRange(v44);
  v21 = lazy protocol witness table accessor for type [HKMCProjection] and conformance [A]();
  v23 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for implicit closure #2 in MenstrualCycleAnalysis.init(_:calendar:), KeyPath, v46, v47, MEMORY[0x277D84A98], v21, MEMORY[0x277D84AC0], v22);
  v48 = v20;
  v49 = v23;
  if (v20)
  {

    __break(1u);
    result = v35;
    __break(1u);
  }

  else
  {
    v31 = v49;

    outlined destroy of [HKQuantityType](&v102);

    v101 = v31;
    v33 = implicit closure #3 in MenstrualCycleAnalysis.init(_:calendar:)(v67);
    v34 = v24;
    v32 = v24;

    v35 = &v28;
    MEMORY[0x28223BE20](v33, v34);
    v36 = &v28 - 4;
    *(&v28 - 2) = v25;
    *(&v28 - 1) = v26;
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo15HKDayIndexRangeaGMd, &_sSaySo15HKDayIndexRangeaGMR);
    v38 = type metadata accessor for DateInterval();
    lazy protocol witness table accessor for type [HKDayIndexRange] and conformance [A]();
    v39 = Sequence.compactMap<A>(_:)();
    v30 = v39;

    outlined destroy of [HKQuantityType](&v101);

    v106 = v30;
    v29 = type metadata accessor for Calendar();
    (*(*(v29 - 8) + 8))(v67);

    outlined destroy of [HKQuantityType](&v106);
    return v30;
  }

  return result;
}

uint64_t key path getter for HKMCProjection.mostLikelyDays : HKMCProjection@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  MEMORY[0x277D82BE0](*a1);
  *a2 = [v4 mostLikelyDays];
  a2[1] = v2;
  return MEMORY[0x277D82BD8](v4);
}

uint64_t implicit closure #2 in MenstrualCycleAnalysis.init(_:calendar:)(uint64_t *a1)
{
  v4 = *a1;
  MEMORY[0x277D82BE0](*a1);

  swift_getAtKeyPath();
  MEMORY[0x277D82BD8](v4);
}

uint64_t (*implicit closure #3 in MenstrualCycleAnalysis.init(_:calendar:)(uint64_t a1))@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a1;
  v14 = partial apply for implicit closure #4 in implicit closure #3 in MenstrualCycleAnalysis.init(_:calendar:);
  v15 = 0;
  v12 = type metadata accessor for Calendar();
  v8 = *(v12 - 8);
  v9 = v12 - 8;
  v6 = v8;
  v7 = *(v8 + 64);
  v5 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = MEMORY[0x28223BE20](v12, v4);
  v11 = &v4 - v5;
  v15 = v2;
  (*(v8 + 16))(v1);
  v10 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v13 = swift_allocObject();
  (*(v8 + 32))(v13 + v10, v11, v12);
  return v14;
}

uint64_t MenstrualCycleAnalysis.init(menstruationProjections:)(uint64_t a1)
{
  v3 = 0;

  v3 = a1;

  outlined destroy of [HKQuantityType](&v3);
  return a1;
}

uint64_t sub_269A4E4A8()
{
  v2 = *(type metadata accessor for DateComponents() - 8);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  return swift_deallocObject();
}

uint64_t partial apply for implicit closure #1 in Calendar.dateInterval(for:)@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for DateComponents();
  v3 = v1 + ((*(*(v2 - 8) + 80) + 16) & ~*(*(v2 - 8) + 80));

  return implicit closure #1 in Calendar.dateInterval(for:)(v3, a1);
}

uint64_t _s2os18OSLogInterpolationV06appendC0_5align7privacyyxyXA_AA0B15StringAlignmentVAA0B7PrivacyVts06CustomG11ConvertibleRzlFSSycfu_TA_4()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = type metadata accessor for DateComponents();
  v1 = lazy protocol witness table accessor for type DateComponents and conformance DateComponents();

  return implicit closure #1 in OSLogInterpolation.appendInterpolation<A>(_:align:privacy:)(v5, v3, v4, v1);
}

unint64_t lazy protocol witness table accessor for type DateComponents and conformance DateComponents()
{
  v2 = lazy protocol witness table cache variable for type DateComponents and conformance DateComponents;
  if (!lazy protocol witness table cache variable for type DateComponents and conformance DateComponents)
  {
    type metadata accessor for DateComponents();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type DateComponents and conformance DateComponents);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_269A4E704()
{
  v2 = *(type metadata accessor for DateComponents() - 8);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  return swift_deallocObject();
}

unint64_t lazy protocol witness table accessor for type [HKDayIndexRange] and conformance [A]()
{
  v2 = lazy protocol witness table cache variable for type [HKDayIndexRange] and conformance [A];
  if (!lazy protocol witness table cache variable for type [HKDayIndexRange] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo15HKDayIndexRangeaGMd, &_sSaySo15HKDayIndexRangeaGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [HKDayIndexRange] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_269A4EC88()
{
  v2 = *(type metadata accessor for Calendar() - 8);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  return swift_deallocObject();
}

uint64_t partial apply for implicit closure #4 in implicit closure #3 in MenstrualCycleAnalysis.init(_:calendar:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  type metadata accessor for Calendar();

  return implicit closure #4 in implicit closure #3 in MenstrualCycleAnalysis.init(_:calendar:)(a1, a2, a3);
}

SiriWellnessIntents::WellnessUnit_optional __swiftcall WellnessUnit.init(rawValue:)(Swift::String rawValue)
{
  _allocateUninitializedArray<A>(_:)();
  *v1 = "kilogram";
  *(v1 + 8) = 8;
  *(v1 + 16) = 2;
  *(v1 + 24) = "gram";
  *(v1 + 32) = 4;
  *(v1 + 40) = 2;
  *(v1 + 48) = "pound";
  *(v1 + 56) = 5;
  *(v1 + 64) = 2;
  *(v1 + 72) = "stone";
  *(v1 + 80) = 5;
  *(v1 + 88) = 2;
  *(v1 + 96) = "centimeter";
  *(v1 + 104) = 10;
  *(v1 + 112) = 2;
  *(v1 + 120) = "feet";
  *(v1 + 128) = 4;
  *(v1 + 136) = 2;
  *(v1 + 144) = "meter";
  *(v1 + 152) = 5;
  *(v1 + 160) = 2;
  *(v1 + 168) = "inch";
  *(v1 + 176) = 4;
  *(v1 + 184) = 2;
  *(v1 + 192) = "liter";
  *(v1 + 200) = 5;
  *(v1 + 208) = 2;
  *(v1 + 216) = "second";
  *(v1 + 224) = 6;
  *(v1 + 232) = 2;
  *(v1 + 240) = "minute";
  *(v1 + 248) = 6;
  *(v1 + 256) = 2;
  *(v1 + 264) = "hour";
  *(v1 + 272) = 4;
  *(v1 + 280) = 2;
  *(v1 + 288) = "celsius";
  *(v1 + 296) = 7;
  *(v1 + 304) = 2;
  *(v1 + 312) = "fahrenheit";
  *(v1 + 320) = 10;
  *(v1 + 328) = 2;
  *(v1 + 336) = "mmhg";
  *(v1 + 344) = 4;
  *(v1 + 352) = 2;
  *(v1 + 360) = "bpm";
  *(v1 + 368) = 3;
  *(v1 + 376) = 2;
  *(v1 + 384) = "breath_min";
  *(v1 + 392) = 10;
  *(v1 + 400) = 2;
  *(v1 + 408) = "calories";
  *(v1 + 416) = 8;
  *(v1 + 424) = 2;
  *(v1 + 432) = "joule";
  *(v1 + 440) = 5;
  *(v1 + 448) = 2;
  *(v1 + 456) = "kilojoule";
  *(v1 + 464) = 9;
  *(v1 + 472) = 2;
  *(v1 + 480) = "active_energy";
  *(v1 + 488) = 13;
  *(v1 + 496) = 2;
  *(v1 + 504) = "resting_energy";
  *(v1 + 512) = 14;
  *(v1 + 520) = 2;
  *(v1 + 528) = "mgdl";
  *(v1 + 536) = 4;
  *(v1 + 544) = 2;
  *(v1 + 552) = "mmoll";
  *(v1 + 560) = 5;
  *(v1 + 568) = 2;
  *(v1 + 576) = "percent";
  *(v1 + 584) = 7;
  *(v1 + 592) = 2;
  *(v1 + 600) = "miles";
  *(v1 + 608) = 5;
  *(v1 + 616) = 2;
  *(v1 + 624) = "kilometers";
  *(v1 + 632) = 10;
  *(v1 + 640) = 2;
  *(v1 + 648) = "steps";
  *(v1 + 656) = 5;
  *(v1 + 664) = 2;
  *(v1 + 672) = "flights";
  *(v1 + 680) = 7;
  *(v1 + 688) = 2;
  *(v1 + 696) = "wheelchair_pushes";
  *(v1 + 704) = 17;
  *(v1 + 712) = 2;
  *(v1 + 720) = "strokes";
  *(v1 + 728) = 7;
  *(v1 + 736) = 2;
  _finalizeUninitializedArray<A>(_:)();
  v7 = _findStringSwitchCase(cases:string:)(v2, rawValue);

  switch(v7)
  {
    case 0:
      v5.value = SiriWellnessIntents_WellnessUnit_kilogram;
LABEL_64:

      return v5;
    case 1:
      v5.value = SiriWellnessIntents_WellnessUnit_gram;
      goto LABEL_64;
    case 2:
      v5.value = SiriWellnessIntents_WellnessUnit_pound;
      goto LABEL_64;
    case 3:
      v5.value = SiriWellnessIntents_WellnessUnit_stone;
      goto LABEL_64;
    case 4:
      v5.value = SiriWellnessIntents_WellnessUnit_centimeter;
      goto LABEL_64;
    case 5:
      v5.value = SiriWellnessIntents_WellnessUnit_feet;
      goto LABEL_64;
    case 6:
      v5.value = SiriWellnessIntents_WellnessUnit_meter;
      goto LABEL_64;
    case 7:
      v5.value = SiriWellnessIntents_WellnessUnit_inch;
      goto LABEL_64;
    case 8:
      v5.value = SiriWellnessIntents_WellnessUnit_liter;
      goto LABEL_64;
    case 9:
      v5.value = SiriWellnessIntents_WellnessUnit_second;
      goto LABEL_64;
    case 10:
      v5.value = SiriWellnessIntents_WellnessUnit_minute;
      goto LABEL_64;
    case 11:
      v5.value = SiriWellnessIntents_WellnessUnit_hour;
      goto LABEL_64;
    case 12:
      v5.value = SiriWellnessIntents_WellnessUnit_celsius;
      goto LABEL_64;
    case 13:
      v5.value = SiriWellnessIntents_WellnessUnit_fahrenheit;
      goto LABEL_64;
    case 14:
      v5.value = SiriWellnessIntents_WellnessUnit_mmhg;
      goto LABEL_64;
    case 15:
      v5.value = SiriWellnessIntents_WellnessUnit_bpm;
      goto LABEL_64;
    case 16:
      v5.value = SiriWellnessIntents_WellnessUnit_breath_min;
      goto LABEL_64;
    case 17:
      v5.value = SiriWellnessIntents_WellnessUnit_calories;
      goto LABEL_64;
    case 18:
      v5.value = SiriWellnessIntents_WellnessUnit_joule;
      goto LABEL_64;
    case 19:
      v5.value = SiriWellnessIntents_WellnessUnit_kilojoule;
      goto LABEL_64;
    case 20:
      v5.value = SiriWellnessIntents_WellnessUnit_active_energy;
      goto LABEL_64;
    case 21:
      v5.value = SiriWellnessIntents_WellnessUnit_resting_energy;
      goto LABEL_64;
    case 22:
      v5.value = SiriWellnessIntents_WellnessUnit_mgdl;
      goto LABEL_64;
    case 23:
      v5.value = SiriWellnessIntents_WellnessUnit_mmoll;
      goto LABEL_64;
    case 24:
      v5.value = SiriWellnessIntents_WellnessUnit_percent;
      goto LABEL_64;
    case 25:
      v5.value = SiriWellnessIntents_WellnessUnit_miles;
      goto LABEL_64;
    case 26:
      v5.value = SiriWellnessIntents_WellnessUnit_kilometers;
      goto LABEL_64;
    case 27:
      v5.value = SiriWellnessIntents_WellnessUnit_steps;
      goto LABEL_64;
    case 28:
      v5.value = SiriWellnessIntents_WellnessUnit_flights;
      goto LABEL_64;
    case 29:
      v5.value = SiriWellnessIntents_WellnessUnit_wheelchair_pushes;
      goto LABEL_64;
    case 30:
      v5.value = SiriWellnessIntents_WellnessUnit_strokes;
      goto LABEL_64;
  }

  return 31;
}

uint64_t WellnessUnit.rawValue.getter(char a1)
{
  switch(a1)
  {
    case 1:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("gram", 4uLL, 1)._countAndFlagsBits;
      break;
    case 2:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("pound", 5uLL, 1)._countAndFlagsBits;
      break;
    case 3:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("stone", 5uLL, 1)._countAndFlagsBits;
      break;
    case 4:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("centimeter", 0xAuLL, 1)._countAndFlagsBits;
      break;
    case 5:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("feet", 4uLL, 1)._countAndFlagsBits;
      break;
    case 6:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("meter", 5uLL, 1)._countAndFlagsBits;
      break;
    case 7:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("inch", 4uLL, 1)._countAndFlagsBits;
      break;
    case 8:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("liter", 5uLL, 1)._countAndFlagsBits;
      break;
    case 9:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("second", 6uLL, 1)._countAndFlagsBits;
      break;
    case 10:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("minute", 6uLL, 1)._countAndFlagsBits;
      break;
    case 11:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("hour", 4uLL, 1)._countAndFlagsBits;
      break;
    case 12:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("celsius", 7uLL, 1)._countAndFlagsBits;
      break;
    case 13:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("fahrenheit", 0xAuLL, 1)._countAndFlagsBits;
      break;
    case 14:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("mmhg", 4uLL, 1)._countAndFlagsBits;
      break;
    case 15:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("bpm", 3uLL, 1)._countAndFlagsBits;
      break;
    case 16:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("breath_min", 0xAuLL, 1)._countAndFlagsBits;
      break;
    case 17:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("calories", 8uLL, 1)._countAndFlagsBits;
      break;
    case 18:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("joule", 5uLL, 1)._countAndFlagsBits;
      break;
    case 19:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("kilojoule", 9uLL, 1)._countAndFlagsBits;
      break;
    case 20:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("active_energy", 0xDuLL, 1)._countAndFlagsBits;
      break;
    case 21:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("resting_energy", 0xEuLL, 1)._countAndFlagsBits;
      break;
    case 22:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("mgdl", 4uLL, 1)._countAndFlagsBits;
      break;
    case 23:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("mmoll", 5uLL, 1)._countAndFlagsBits;
      break;
    case 24:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("percent", 7uLL, 1)._countAndFlagsBits;
      break;
    case 25:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("miles", 5uLL, 1)._countAndFlagsBits;
      break;
    case 26:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("kilometers", 0xAuLL, 1)._countAndFlagsBits;
      break;
    case 27:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("steps", 5uLL, 1)._countAndFlagsBits;
      break;
    case 28:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("flights", 7uLL, 1)._countAndFlagsBits;
      break;
    case 29:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("wheelchair_pushes", 0x11uLL, 1)._countAndFlagsBits;
      break;
    case 30:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("strokes", 7uLL, 1)._countAndFlagsBits;
      break;
    default:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("kilogram", 8uLL, 1)._countAndFlagsBits;
      break;
  }

  return countAndFlagsBits;
}

unint64_t lazy protocol witness table accessor for type WellnessUnit and conformance WellnessUnit()
{
  v2 = lazy protocol witness table cache variable for type WellnessUnit and conformance WellnessUnit;
  if (!lazy protocol witness table cache variable for type WellnessUnit and conformance WellnessUnit)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type WellnessUnit and conformance WellnessUnit);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type WellnessUnit and conformance WellnessUnit;
  if (!lazy protocol witness table cache variable for type WellnessUnit and conformance WellnessUnit)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type WellnessUnit and conformance WellnessUnit);
    return WitnessTable;
  }

  return v2;
}

SiriWellnessIntents::WellnessUnit_optional protocol witness for RawRepresentable.init(rawValue:) in conformance WellnessUnit@<W0>(Swift::String *a1@<X0>, SiriWellnessIntents::WellnessUnit_optional *a2@<X8>)
{
  result.value = WellnessUnit.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}