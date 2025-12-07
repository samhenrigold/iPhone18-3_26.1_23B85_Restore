unint64_t sub_230DCFE10()
{
  result = qword_27DB5C958;
  if (!qword_27DB5C958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C958);
  }

  return result;
}

unint64_t sub_230DCFE68()
{
  result = qword_27DB5C960;
  if (!qword_27DB5C960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C960);
  }

  return result;
}

unint64_t sub_230DCFEC0()
{
  result = qword_27DB5C968;
  if (!qword_27DB5C968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C968);
  }

  return result;
}

unint64_t sub_230DCFF18()
{
  result = qword_27DB5C970;
  if (!qword_27DB5C970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C970);
  }

  return result;
}

unint64_t sub_230DCFF70()
{
  result = qword_27DB5C978;
  if (!qword_27DB5C978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C978);
  }

  return result;
}

unint64_t sub_230DCFFC8()
{
  result = qword_27DB5C980;
  if (!qword_27DB5C980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C980);
  }

  return result;
}

uint64_t sub_230DD001C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C62616E457369 && a2 == 0xE900000000000064;
  if (v4 || (sub_230E698C0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000230E83570 == a2 || (sub_230E698C0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000230E80250 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_230E698C0();

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

uint64_t sub_230DD0148(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (sub_230E698C0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74616C6572726F63 && a2 == 0xED000044496E6F69 || (sub_230E698C0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x53676E6967676F6CLL && a2 == 0xEF79676574617274)
  {

    return 2;
  }

  else
  {
    v6 = sub_230E698C0();

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

unint64_t sub_230DD0270()
{
  result = qword_27DB5C988;
  if (!qword_27DB5C988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C988);
  }

  return result;
}

unint64_t sub_230DD02C4()
{
  result = qword_27DB5C990;
  if (!qword_27DB5C990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C990);
  }

  return result;
}

void __swiftcall InferenceWorkflow.init(model:inputDefinitions:outputDefinitions:treatmentIdentifier:)(ServicesIntelligence::InferenceWorkflow *__return_ptr retstr, ServicesIntelligence::InferenceModel *model, Swift::OpaquePointer inputDefinitions, Swift::OpaquePointer outputDefinitions, Swift::String_optional treatmentIdentifier)
{
  object = treatmentIdentifier.value._object;
  countAndFlagsBits = treatmentIdentifier.value._countAndFlagsBits;
  v11 = MEMORY[0x277D84F90];
  sub_230D0EE04(MEMORY[0x277D84F90]);
  sub_230D0EF6C(v11);

  v12 = *&model->assetBundleIdentifier._object;
  *&retstr->model.assetIdentifier._object = *&model->assetIdentifier._object;
  *&retstr->model.assetBundleIdentifier._object = v12;
  v13 = model->assetDirectory.value._object;
  v14 = *&model->format;
  retstr->model.identifier = model->identifier;
  *&retstr->model.format = v14;
  retstr->model.assetDirectory.value._object = v13;
  retstr->inputDefinitions = inputDefinitions;
  retstr->outputDefinitions = outputDefinitions;
  retstr->treatmentIdentifier.value._countAndFlagsBits = countAndFlagsBits;
  retstr->treatmentIdentifier.value._object = object;
}

uint64_t InferenceWorkflow.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5C998, &qword_230E78E00);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = v15 - v7;
  v9 = v1[3];
  v32 = v1[2];
  v33 = v9;
  v10 = *(v1 + 8);
  v35 = *(v1 + 9);
  v34 = v10;
  v11 = v1[1];
  v30 = *v1;
  v31 = v11;
  v12 = *(v1 + 11);
  v16 = *(v1 + 10);
  v15[2] = v12;
  v15[1] = *(v1 + 12);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230D2D948(&v30, &v25);
  sub_230DD6758();
  sub_230E69A50();
  v28 = v33;
  v29 = v34;
  v26 = v31;
  v27 = v32;
  v25 = v30;
  v24 = 0;
  sub_230DD67AC();
  sub_230E69850();
  if (v2)
  {
    v21 = v27;
    v22 = v28;
    v23 = v29;
    v20 = v26;
    v19 = v25;
    sub_230D2D9A4(&v19);
  }

  else
  {
    v13 = v16;
    v21 = v27;
    v22 = v28;
    v23 = v29;
    v20 = v26;
    v19 = v25;
    sub_230D2D9A4(&v19);
    v18 = v35;
    v17 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5D9A0, &qword_230E77D90);
    sub_230DD705C(&qword_281565FC0, sub_230DD6800, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
    sub_230E69850();
    v18 = v13;
    v17 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5C828, &qword_230E77DA0);
    sub_230DD6854(&unk_281565FB0, sub_230DD68D8, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
    sub_230E69850();
    LOBYTE(v18) = 3;
    sub_230E697B0();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t InferenceWorkflow.model.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  v9 = *(v1 + 32);
  v10 = v2;
  v11 = *(v1 + 64);
  v3 = v11;
  v4 = *(v1 + 16);
  v8[0] = *v1;
  v5 = v8[0];
  v8[1] = v4;
  *(a1 + 32) = v9;
  *(a1 + 48) = v2;
  *(a1 + 64) = v3;
  *a1 = v5;
  *(a1 + 16) = v4;
  return sub_230D2D948(v8, v7);
}

__n128 InferenceWorkflow.model.setter(uint64_t a1)
{
  v3 = *(v1 + 48);
  v7[2] = *(v1 + 32);
  v7[3] = v3;
  v8 = *(v1 + 64);
  v4 = *(v1 + 16);
  v7[0] = *v1;
  v7[1] = v4;
  sub_230D2D9A4(v7);
  v5 = *(a1 + 48);
  *(v1 + 32) = *(a1 + 32);
  *(v1 + 48) = v5;
  *(v1 + 64) = *(a1 + 64);
  result = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = result;
  return result;
}

uint64_t InferenceWorkflow.inputDefinitions.setter(uint64_t a1)
{

  *(v1 + 72) = a1;
  return result;
}

uint64_t InferenceWorkflow.outputDefinitions.setter(uint64_t a1)
{

  *(v1 + 80) = a1;
  return result;
}

uint64_t InferenceWorkflow.treatmentIdentifier.getter()
{
  v1 = *(v0 + 88);

  return v1;
}

uint64_t InferenceWorkflow.treatmentIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 88) = a1;
  *(v2 + 96) = a2;
  return result;
}

unint64_t sub_230DD095C()
{
  v1 = 0x6C65646F6DLL;
  v2 = 0xD000000000000013;
  if (*v0 == 2)
  {
    v2 = 0xD000000000000011;
  }

  if (*v0)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_230DD09E0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_230DD8F9C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_230DD0A08(uint64_t a1)
{
  v2 = sub_230DD6758();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230DD0A44(uint64_t a1)
{
  v2 = sub_230DD6758();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t InferenceWorkflow.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5C9A8, &qword_230E78E08);
  v5 = *(v25 - 8);
  MEMORY[0x28223BE20](v25, v6);
  v8 = &v25 - v7;
  v9 = MEMORY[0x277D84F90];
  v49 = sub_230D0EE04(MEMORY[0x277D84F90]);
  v26 = sub_230D0EF6C(v9);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230DD6758();
  sub_230E69A30();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v10 = v5;
    v38 = 0;
    sub_230DCA40C();
    v11 = v25;
    sub_230E69760();
    v46 = v41;
    v47 = v42;
    v48 = v43;
    v44 = v39;
    v45 = v40;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5D9A0, &qword_230E77D90);
    LOBYTE(v27[0]) = 1;
    sub_230DD705C(&qword_27DB5C818, sub_230DCA5F4, MEMORY[0x277D83808], MEMORY[0x277D83528]);
    sub_230E69760();

    v49 = *&v31[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5C828, &qword_230E77DA0);
    LOBYTE(v27[0]) = 2;
    sub_230DD6854(&unk_27DB5D990, sub_230DCA6CC, MEMORY[0x277D83808], MEMORY[0x277D83528]);
    sub_230E69760();

    v12 = *&v31[0];
    v37 = 3;
    v13 = sub_230E696B0();
    v15 = v14;
    v16 = *(v10 + 8);
    v26 = v13;
    v16(v8, v11);
    v18 = v46;
    v17 = v47;
    v27[2] = v46;
    v27[3] = v47;
    v19 = v44;
    v20 = v45;
    v27[0] = v44;
    v27[1] = v45;
    v21 = v49;
    *&v28 = v48;
    *(&v28 + 1) = v49;
    v22 = v26;
    *&v29 = v12;
    *(&v29 + 1) = v26;
    v30 = v15;
    *(a2 + 96) = v15;
    *(a2 + 32) = v18;
    *(a2 + 48) = v17;
    *a2 = v19;
    *(a2 + 16) = v20;
    v23 = v29;
    *(a2 + 64) = v28;
    *(a2 + 80) = v23;
    sub_230DBB6FC(v27, v31);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v31[2] = v46;
    v31[3] = v47;
    v31[0] = v44;
    v31[1] = v45;
    v32 = v48;
    v33 = v21;
    v34 = v12;
    v35 = v22;
    v36 = v15;
    return sub_230DD70E0(v31);
  }
}

uint64_t InferenceModel.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t InferenceModel.identifier.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t InferenceModel.assetIdentifier.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t InferenceModel.assetIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t InferenceModel.assetBundleIdentifier.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t InferenceModel.assetBundleIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

uint64_t InferenceModel.assetDirectory.getter()
{
  v1 = *(v0 + 56);

  return v1;
}

uint64_t InferenceModel.assetDirectory.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return result;
}

void __swiftcall InferenceModel.init(identifier:format:assetIdentifier:assetBundleIdentifier:assetDirectory:)(ServicesIntelligence::InferenceModel *__return_ptr retstr, Swift::String identifier, ServicesIntelligence::InferenceModelFormat format, Swift::String assetIdentifier, Swift::String assetBundleIdentifier, Swift::String_optional assetDirectory)
{
  v6 = *format;
  retstr->identifier = identifier;
  retstr->format = v6;
  retstr->assetIdentifier = assetIdentifier;
  retstr->assetBundleIdentifier = assetBundleIdentifier;
  retstr->assetDirectory = assetDirectory;
}

uint64_t sub_230DD1164()
{
  v1 = *v0;
  v2 = 0x696669746E656469;
  v3 = 0x6564497465737361;
  v4 = 0xD000000000000015;
  if (v1 != 3)
  {
    v4 = 0x7269447465737361;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x74616D726F66;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_230DD121C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_230DD9104(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_230DD1244(uint64_t a1)
{
  v2 = sub_230DD7110();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230DD1280(uint64_t a1)
{
  v2 = sub_230DD7110();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t InferenceModel.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5C9B0, &qword_230E78E10);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = v13 - v6;
  v14 = *(v1 + 16);
  v8 = *(v1 + 24);
  v13[4] = *(v1 + 32);
  v13[5] = v8;
  v9 = *(v1 + 40);
  v13[2] = *(v1 + 48);
  v13[3] = v9;
  v10 = *(v1 + 64);
  v13[0] = *(v1 + 56);
  v13[1] = v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230DD7110();
  sub_230E69A50();
  v21 = 0;
  v11 = v15;
  sub_230E69810();
  if (!v11)
  {
    v20 = v14;
    v19 = 1;
    sub_230DD7164();
    sub_230E69850();
    v18 = 2;
    sub_230E69810();
    v17 = 3;
    sub_230E69810();
    v16 = 4;
    sub_230E697B0();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t InferenceModel.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5C9C0, &qword_230E78E18);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v28 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230DD7110();
  sub_230E69A30();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v38[0]) = 0;
  v10 = sub_230E69720();
  v12 = v11;
  v32 = v10;
  LOBYTE(v33) = 1;
  sub_230DD71B8();
  sub_230E69760();
  v13 = LOBYTE(v38[0]);
  LOBYTE(v38[0]) = 2;
  v29 = sub_230E69720();
  v46 = v13;
  v31 = v14;
  LOBYTE(v38[0]) = 3;
  v15 = sub_230E69720();
  v30 = v16;
  v47 = 4;
  v17 = sub_230E696B0();
  v18 = v9;
  v20 = v19;
  (*(v6 + 8))(v18, v5);
  v21 = v15;
  v28 = v15;
  v22 = v31;
  v23 = v32;
  *&v33 = v32;
  *(&v33 + 1) = v12;
  v24 = v46;
  LOBYTE(v34) = v46;
  *(&v34 + 1) = v29;
  *&v35 = v31;
  *(&v35 + 1) = v21;
  *&v36 = v30;
  *(&v36 + 1) = v17;
  v37 = v20;
  *(a2 + 64) = v20;
  v25 = v36;
  *(a2 + 32) = v35;
  *(a2 + 48) = v25;
  v26 = v34;
  *a2 = v33;
  *(a2 + 16) = v26;
  sub_230D2D948(&v33, v38);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v38[0] = v23;
  v38[1] = v12;
  v39 = v24;
  v40 = v29;
  v41 = v22;
  v42 = v28;
  v43 = v30;
  v44 = v17;
  v45 = v20;
  return sub_230D2D9A4(v38);
}

uint64_t InferenceModelFormat.rawValue.getter()
{
  if (*v0)
  {
    return 0x69706D6F63657270;
  }

  else
  {
    return 0x6F73736572707365;
  }
}

uint64_t sub_230DD18EC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x69706D6F63657270;
  }

  else
  {
    v3 = 0x6F73736572707365;
  }

  if (v2)
  {
    v4 = 0xEA00000000003256;
  }

  else
  {
    v4 = 0xEB0000000064656CLL;
  }

  if (*a2)
  {
    v5 = 0x69706D6F63657270;
  }

  else
  {
    v5 = 0x6F73736572707365;
  }

  if (*a2)
  {
    v6 = 0xEB0000000064656CLL;
  }

  else
  {
    v6 = 0xEA00000000003256;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_230E698C0();
  }

  return v8 & 1;
}

uint64_t sub_230DD19A0()
{
  sub_230E699B0();
  sub_230E69100();

  return sub_230E699D0();
}

uint64_t sub_230DD1A30(uint64_t a1)
{
  sub_230E69100();
}

uint64_t sub_230DD1AAC(uint64_t a1)
{
  sub_230E699B0();
  sub_230E69100();

  return sub_230E699D0();
}

void sub_230DD1B44(uint64_t *a1@<X8>)
{
  v2 = 0x6F73736572707365;
  if (*v1)
  {
    v2 = 0x69706D6F63657270;
  }

  v3 = 0xEA00000000003256;
  if (*v1)
  {
    v3 = 0xEB0000000064656CLL;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t InferenceInputDefinition.featureIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t InferenceInputDefinition.featureIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t InferenceInputDefinition.mapOperation.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t InferenceInputDefinition.mapOperation.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

void InferenceInputDefinition.shape.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  *a1 = *(v1 + 32);
  *(a1 + 8) = v2;
}

uint64_t InferenceInputDefinition.shape.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 32) = *result;
  *(v1 + 40) = v2;
  return result;
}

void __swiftcall InferenceInputDefinition.init(featureIdentifier:mapOperation:shape:dataType:)(ServicesIntelligence::InferenceInputDefinition *__return_ptr retstr, Swift::String featureIdentifier, Swift::String_optional mapOperation, ServicesIntelligence::InferenceDataShape shape, ServicesIntelligence::InferenceFeatureDataType dataType)
{
  v5 = *shape.features;
  v6 = *(shape.features + 8);
  v7 = **&shape.rank;
  retstr->featureIdentifier = featureIdentifier;
  retstr->mapOperation = mapOperation;
  retstr->shape.features = v5;
  retstr->shape.rank = v6;
  retstr->dataType = v7;
}

uint64_t static InferenceDataShape.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2)
  {
    return (*(a2 + 8) ^ *(a1 + 8) ^ 1) & 1;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_230DD1E28()
{
  v1 = 0x617265704F70616DLL;
  v2 = 0x6570616873;
  if (*v0 != 2)
  {
    v2 = 0x6570795461746164;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000011;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_230DD1EAC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_230DD92D0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_230DD1ED4(uint64_t a1)
{
  v2 = sub_230DD7474();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230DD1F10(uint64_t a1)
{
  v2 = sub_230DD7474();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t InferenceInputDefinition.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5C9D0, &qword_230E78E20);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v14 - v6;
  v8 = *(v1 + 16);
  v18 = *(v1 + 24);
  v19 = v8;
  v17 = *(v1 + 32);
  LODWORD(v8) = *(v1 + 40);
  v15 = *(v1 + 41);
  v16 = v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230DD7474();
  sub_230E69A50();
  v27 = 0;
  v9 = v20;
  sub_230E69810();
  if (!v9)
  {
    v11 = v15;
    v12 = v16;
    v13 = v17;
    v26 = 1;
    sub_230E697B0();
    v21 = v13;
    v22 = v12;
    v25 = 2;
    sub_230DD74C8();
    sub_230E69850();
    v24 = v11;
    v23 = 3;
    sub_230DD751C();
    sub_230E69850();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t InferenceInputDefinition.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5C9E0, &qword_230E78E28);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v19 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230DD7474();
  sub_230E69A30();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v29 = 0;
  v10 = sub_230E69720();
  v12 = v11;
  v22 = v10;
  v28 = 1;
  v13 = sub_230E696B0();
  v15 = v14;
  v21 = v13;
  v27 = 2;
  sub_230DD7570();
  sub_230E69760();
  v20 = v23;
  HIDWORD(v19) = v24;
  v25 = 3;
  sub_230DD75C4();
  sub_230E69760();
  (*(v6 + 8))(v9, v5);
  v17 = v26;
  v18 = v21;
  *a2 = v22;
  *(a2 + 8) = v12;
  *(a2 + 16) = v18;
  *(a2 + 24) = v15;
  *(a2 + 32) = v20;
  *(a2 + 40) = BYTE4(v19);
  *(a2 + 41) = v17;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

ServicesIntelligence::InferenceDataShape __swiftcall InferenceDataShape.init(features:rank:)(Swift::Int features, ServicesIntelligence::TensorRank rank)
{
  v3 = *rank;
  *v2 = features;
  *(v2 + 8) = v3;
  result.features = features;
  result.rank = rank;
  return result;
}

uint64_t sub_230DD2530()
{
  if (*v0)
  {
    return 1802396018;
  }

  else
  {
    return 0x7365727574616566;
  }
}

uint64_t sub_230DD2564@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7365727574616566 && a2 == 0xE800000000000000;
  if (v6 || (sub_230E698C0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1802396018 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_230E698C0();

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

uint64_t sub_230DD2640(uint64_t a1)
{
  v2 = sub_230DD7618();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230DD267C(uint64_t a1)
{
  v2 = sub_230DD7618();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t InferenceDataShape.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5C9F8, &qword_230E78E30);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v10 - v7;
  v11 = *(v1 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230DD7618();
  sub_230E69A50();
  v14 = 0;
  sub_230E69840();
  if (!v2)
  {
    v13 = v11;
    v12 = 1;
    sub_230DD766C();
    sub_230E69850();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t InferenceDataShape.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5CA08, &qword_230E78E38);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v13 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230DD7618();
  sub_230E69A30();
  if (!v2)
  {
    v16 = 0;
    v10 = sub_230E69750();
    v14 = 1;
    sub_230DD76C0();
    sub_230E69760();
    (*(v6 + 8))(v9, v5);
    v11 = v15;
    *a2 = v10;
    *(a2 + 8) = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_230DD2A2C(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2)
  {
    return (*(a2 + 8) ^ *(a1 + 8) ^ 1) & 1;
  }

  else
  {
    return 0;
  }
}

ServicesIntelligence::TensorRank_optional __swiftcall TensorRank.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 2)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (rawValue == 1)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t TensorRank.rawValue.getter()
{
  if (*v0)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

uint64_t sub_230DD2A8C()
{
  v1 = *v0;
  sub_230E699B0();
  if (v1)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  MEMORY[0x23191E2B0](v2);
  return sub_230E699D0();
}

uint64_t sub_230DD2ADC()
{
  if (*v0)
  {
    v1 = 2;
  }

  else
  {
    v1 = 1;
  }

  return MEMORY[0x23191E2B0](v1);
}

uint64_t sub_230DD2B14(uint64_t a1)
{
  v2 = *v1;
  sub_230E699B0();
  if (v2)
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  MEMORY[0x23191E2B0](v3);
  return sub_230E699D0();
}

void *sub_230DD2B60@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 2)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result == 1)
  {
    v3 = 0;
  }

  else
  {
    v3 = v2;
  }

  *a2 = v3;
  return result;
}

void sub_230DD2B80(uint64_t *a1@<X8>)
{
  v2 = 1;
  if (*v1)
  {
    v2 = 2;
  }

  *a1 = v2;
}

uint64_t InferenceFeatureDataType.rawValue.getter()
{
  if (*v0)
  {
    return 0x3233746E69;
  }

  else
  {
    return 0x323374616F6C66;
  }
}

uint64_t sub_230DD2C8C()
{
  sub_230E699B0();
  sub_230E69100();

  return sub_230E699D0();
}

uint64_t sub_230DD2D0C(uint64_t a1)
{
  sub_230E69100();
}

uint64_t sub_230DD2D78(uint64_t a1)
{
  sub_230E699B0();
  sub_230E69100();

  return sub_230E699D0();
}

void sub_230DD2E00(uint64_t *a1@<X8>)
{
  v2 = 0x323374616F6C66;
  if (*v1)
  {
    v2 = 0x3233746E69;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xE500000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_230DD2EEC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x3233746E69;
  }

  else
  {
    v3 = 0x323374616F6C66;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  if (*a2)
  {
    v5 = 0x3233746E69;
  }

  else
  {
    v5 = 0x323374616F6C66;
  }

  if (*a2)
  {
    v6 = 0xE500000000000000;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_230E698C0();
  }

  return v8 & 1;
}

uint64_t InferenceData.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230E69A20();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v7, v7[3]);
    v5 = sub_230E698E0();
    __swift_destroy_boxed_opaque_existential_1(v7);
    *a2 = v5;
    *(a2 + 4) = 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t InferenceData.encode(to:)(void *a1)
{
  v2 = *(v1 + 4);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230E69A40();
  __swift_mutable_project_boxed_opaque_existential_1(v4, v4[3]);
  if (v2)
  {
    sub_230E69900();
  }

  else
  {
    sub_230E698F0();
  }

  return __swift_destroy_boxed_opaque_existential_1(v4);
}

uint64_t static InferenceData.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  if ((*(a1 + 4) & 1) == 0)
  {
    return (*(a2 + 4) & 1) == 0 && v2 == v3;
  }

  if (LODWORD(v2) == LODWORD(v3))
  {
    return *(a2 + 4);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_230DD3220(void *a1)
{
  v2 = *(v1 + 4);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230E69A40();
  __swift_mutable_project_boxed_opaque_existential_1(v4, v4[3]);
  if (v2)
  {
    sub_230E69900();
  }

  else
  {
    sub_230E698F0();
  }

  return __swift_destroy_boxed_opaque_existential_1(v4);
}

uint64_t sub_230DD32F4(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  if ((*(a1 + 4) & 1) == 0)
  {
    return (*(a2 + 4) & 1) == 0 && v2 == v3;
  }

  if (LODWORD(v2) == LODWORD(v3))
  {
    return *(a2 + 4);
  }

  else
  {
    return 0;
  }
}

uint64_t InferenceOutputDefinition.parameters.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t InferenceOutputDefinition.modifiers.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t InferenceOutputDefinition.ranker.setter(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 24) = v2;
  return result;
}

uint64_t InferenceOutputDefinition.scorer.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 40);
  *a1 = *(v1 + 32);
  a1[1] = v2;
}

uint64_t InferenceOutputDefinition.scorer.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];

  *(v1 + 32) = v2;
  *(v1 + 40) = v3;
  return result;
}

void InferenceOutputDefinition.shape.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 64);
  *a1 = *(v1 + 56);
  *(a1 + 8) = v2;
}

uint64_t InferenceOutputDefinition.shape.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 56) = *result;
  *(v1 + 64) = v2;
  return result;
}

uint64_t InferenceOutputDefinition.init(mode:parameters:modifiers:ranker:scorer:shape:dataType:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, char *a7@<X6>, uint64_t a8@<X8>)
{
  v11 = *a1;
  v12 = *a4;
  v13 = *a5;
  v14 = a5[1];
  v15 = *a6;
  v16 = *(a6 + 8);
  v17 = *a7;
  sub_230D0EAD0(MEMORY[0x277D84F90]);

  *a8 = v11;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;

  *(a8 + 24) = v12;

  *(a8 + 32) = v13;
  *(a8 + 40) = v14;
  *(a8 + 56) = v15;
  *(a8 + 64) = v16;
  *(a8 + 48) = v17;
  return result;
}

uint64_t sub_230DD35F0()
{
  v1 = *v0;
  v2 = 1701080941;
  v3 = 0x6570795461746164;
  if (v1 != 5)
  {
    v3 = 0x6570616873;
  }

  v4 = 0x72656B6E6172;
  if (v1 != 3)
  {
    v4 = 0x7265726F6373;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x6574656D61726170;
  if (v1 != 1)
  {
    v5 = 0x7265696669646F6DLL;
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

uint64_t sub_230DD36C0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_230DD9440(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_230DD36E8(uint64_t a1)
{
  v2 = sub_230DD7764();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230DD3724(uint64_t a1)
{
  v2 = sub_230DD7764();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t InferenceOutputDefinition.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5CA18, &unk_230E78E40);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v23 - v7;
  v9 = *v1;
  v10 = *(v1 + 1);
  v29 = *(v1 + 2);
  v30 = v10;
  v11 = *(v1 + 3);
  v12 = *(v1 + 5);
  v25 = *(v1 + 4);
  v26 = v12;
  v33 = v1[48];
  v27 = *(v1 + 7);
  v28 = v11;
  v13 = v1[64];
  v14 = a1[3];
  v15 = a1;
  v17 = v16;
  __swift_project_boxed_opaque_existential_1(v15, v14);
  sub_230DD7764();
  sub_230E69A50();
  LOBYTE(v31) = v9;
  v34 = 0;
  sub_230DD77B8();
  v18 = v8;
  sub_230E69850();
  if (v2)
  {
    return (*(v5 + 8))(v8, v17);
  }

  v20 = v28;
  v21 = v29;
  v24 = v13;
  v22 = v27;
  v31 = v30;
  v34 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5BAD0, &qword_230E73560);
  sub_230D6C1DC(&unk_281565FA0, MEMORY[0x277D837D8], MEMORY[0x277D83A08], MEMORY[0x277D83508]);
  sub_230E69850();
  v31 = v21;
  v34 = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5CA28, &qword_230E78E50);
  sub_230DD795C(&unk_281565F90, sub_230DD780C, MEMORY[0x277D83948]);
  sub_230E69850();
  v31 = v20;
  v34 = 3;
  sub_230DD7860();

  sub_230E697F0();

  v31 = v25;
  v32 = v26;
  v34 = 4;
  sub_230DD78B4();

  sub_230E697F0();

  LOBYTE(v31) = v33;
  v34 = 5;
  sub_230DD751C();
  sub_230E69850();
  v31 = v22;
  LOBYTE(v32) = v24;
  v34 = 6;
  sub_230DD74C8();
  sub_230E69850();
  return (*(v5 + 8))(v18, v17);
}

uint64_t InferenceOutputDefinition.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5CA30, &qword_230E78E58);
  v5 = *(v23 - 8);
  MEMORY[0x28223BE20](v23, v6);
  v8 = &v19 - v7;
  sub_230D0EAD0(MEMORY[0x277D84F90]);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230DD7764();
  sub_230E69A30();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    LOBYTE(v24) = 0;
    sub_230DD7908();
    sub_230E69760();
    v9 = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5BAD0, &qword_230E73560);
    LOBYTE(v24) = 1;
    sub_230D6C1DC(&qword_27DB5D980, MEMORY[0x277D83808], MEMORY[0x277D83A30], MEMORY[0x277D83528]);
    sub_230E69760();

    v10 = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5CA28, &qword_230E78E50);
    LOBYTE(v24) = 2;
    sub_230DD795C(&qword_27DB5CA40, sub_230DD79D4, MEMORY[0x277D83978]);
    sub_230E69760();
    v40 = v9;
    v11 = v29;
    LOBYTE(v24) = 3;
    sub_230DD7A28();
    sub_230E69700();
    v22 = v5;
    v12 = v29;

    LOBYTE(v24) = 4;
    sub_230DD7A7C();
    sub_230E69700();
    v21 = v29;
    v13 = v30;

    LOBYTE(v24) = 5;
    sub_230DD75C4();
    sub_230E69760();
    v20 = v29;
    v41 = 6;
    sub_230DD7570();
    sub_230E69760();
    (*(v22 + 8))(v8, v23);
    v23 = v38;
    v14 = v39;
    v15 = v40;
    LOBYTE(v24) = v40;
    *(&v24 + 1) = v10;
    *&v25 = v11;
    *(&v25 + 1) = v12;
    *&v26 = v21;
    *(&v26 + 1) = v13;
    LOBYTE(v27) = v20;
    *(&v27 + 1) = v38;
    v28 = v39;
    *(a2 + 64) = v39;
    v16 = v25;
    *a2 = v24;
    *(a2 + 16) = v16;
    v17 = v27;
    *(a2 + 32) = v26;
    *(a2 + 48) = v17;
    sub_230D6CA20(&v24, &v29);
    __swift_destroy_boxed_opaque_existential_1(a1);
    LOBYTE(v29) = v15;
    v30 = v10;
    v31 = v11;
    v32 = v12;
    v33 = v21;
    v34 = v13;
    v35 = v20;
    v36 = v23;
    v37 = v14;
    return sub_230D6CA7C(&v29);
  }
}

uint64_t InferenceOutputMode.rawValue.getter()
{
  if (*v0)
  {
    return 0x7365756C6176;
  }

  else
  {
    return 1315991412;
  }
}

uint64_t sub_230DD40D0()
{
  sub_230E699B0();
  sub_230E69100();

  return sub_230E699D0();
}

uint64_t sub_230DD4148(uint64_t a1)
{
  sub_230E69100();
}

uint64_t sub_230DD41AC(uint64_t a1)
{
  sub_230E699B0();
  sub_230E69100();

  return sub_230E699D0();
}

void sub_230DD422C(uint64_t *a1@<X8>)
{
  v2 = 1315991412;
  if (*v1)
  {
    v2 = 0x7365756C6176;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_230DD4310(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x7365756C6176;
  }

  else
  {
    v3 = 1315991412;
  }

  if (v2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE600000000000000;
  }

  if (*a2)
  {
    v5 = 0x7365756C6176;
  }

  else
  {
    v5 = 1315991412;
  }

  if (*a2)
  {
    v6 = 0xE600000000000000;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_230E698C0();
  }

  return v8 & 1;
}

ServicesIntelligence::InferenceOutputModifierType_optional __swiftcall InferenceOutputModifierType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_230E69680();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t InferenceOutputModifierType.rawValue.getter()
{
  v1 = 0xD000000000000014;
  v2 = 0xD00000000000001CLL;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000015;
  }

  if (*v0)
  {
    v1 = 0xD000000000000017;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_230DD4478()
{
  sub_230E699B0();
  sub_230E69100();

  return sub_230E699D0();
}

uint64_t sub_230DD452C(uint64_t a1)
{
  sub_230E69100();
}

uint64_t sub_230DD45CC(uint64_t a1)
{
  sub_230E699B0();
  sub_230E69100();

  return sub_230E699D0();
}

void sub_230DD4688(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000014;
  v3 = "int32";
  v4 = "impressionBasedDemotion";
  v5 = 0xD00000000000001CLL;
  if (*v1 != 2)
  {
    v5 = 0xD000000000000015;
    v4 = "lastConsumptionBasedDemotion";
  }

  if (*v1)
  {
    v2 = 0xD000000000000017;
    v3 = "historyBasedDemotion";
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v2 = v5;
    v6 = v4;
  }

  *a1 = v2;
  a1[1] = v6 | 0x8000000000000000;
}

uint64_t static InferenceOutputModifier.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if ((sub_230D0B92C(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  return sub_230D6A784(v2, v3);
}

uint64_t sub_230DD486C(uint64_t a1)
{
  v2 = sub_230DD7AD0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230DD48A8(uint64_t a1)
{
  v2 = sub_230DD7AD0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t InferenceOutputModifier.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5CA60, &qword_230E78E60);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = v11 - v7;
  v9 = *v1;
  v11[0] = *(v1 + 1);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230DD7AD0();
  sub_230E69A50();
  v14 = v9;
  v13 = 0;
  sub_230DD7B24();
  sub_230E69850();
  if (!v2)
  {
    v11[1] = v11[0];
    v12 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5BAD0, &qword_230E73560);
    sub_230D6C1DC(&unk_281565FA0, MEMORY[0x277D837D8], MEMORY[0x277D83A08], MEMORY[0x277D83508]);
    sub_230E69850();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t InferenceOutputModifier.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v14[0] = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5CA78, &qword_230E78E68);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = v14 - v7;
  sub_230D0EAD0(MEMORY[0x277D84F90]);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230DD7AD0();
  sub_230E69A30();
  if (!v2)
  {
    v9 = v5;
    v10 = v14[0];
    v16 = 0;
    sub_230DD7B78();
    sub_230E69760();
    v11 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5BAD0, &qword_230E73560);
    v15 = 1;
    sub_230D6C1DC(&qword_27DB5D980, MEMORY[0x277D83808], MEMORY[0x277D83A30], MEMORY[0x277D83528]);
    sub_230E69760();
    (*(v9 + 8))(v8, v4);

    v13 = v14[1];
    *v10 = v11;
    *(v10 + 8) = v13;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_230DD4D50(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if ((sub_230D0B92C(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  return sub_230D6A784(v2, v3);
}

uint64_t InferenceOutputRankerType.init(rawValue:)@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_230E69680();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_230DD4E20()
{
  sub_230E699B0();
  sub_230E69100();
  return sub_230E699D0();
}

uint64_t sub_230DD4E94(uint64_t a1)
{
  sub_230E699B0();
  sub_230E69100();
  return sub_230E699D0();
}

uint64_t sub_230DD4EE8@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_230E69680();

  *a2 = v3 != 0;
  return result;
}

uint64_t InferenceOutputRanker.parameters.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t sub_230DD5094(uint64_t a1)
{
  v2 = sub_230DD7BCC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230DD50D0(uint64_t a1)
{
  v2 = sub_230DD7BCC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t InferenceOutputRanker.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5CA88, &qword_230E78E70);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = v11 - v7;
  v9 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230DD7BCC();
  sub_230E69A50();
  v13 = 0;
  sub_230DD7C20();
  sub_230E69850();
  if (!v2)
  {
    v11[1] = v9;
    v12 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5BAD0, &qword_230E73560);
    sub_230D6C1DC(&unk_281565FA0, MEMORY[0x277D837D8], MEMORY[0x277D83A08], MEMORY[0x277D83508]);
    sub_230E69850();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t InferenceOutputRanker.init(from:)@<X0>(void *a1@<X0>, unint64_t *a2@<X8>)
{
  v12[0] = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5CAA0, &qword_230E78E78);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = v12 - v7;
  sub_230D0EAD0(MEMORY[0x277D84F90]);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230DD7BCC();
  sub_230E69A30();
  if (!v2)
  {
    v9 = v5;
    v10 = v12[0];
    v14 = 0;
    sub_230DD7C74();
    sub_230E69760();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5BAD0, &qword_230E73560);
    v13 = 1;
    sub_230D6C1DC(&qword_27DB5D980, MEMORY[0x277D83808], MEMORY[0x277D83A30], MEMORY[0x277D83528]);
    sub_230E69760();
    (*(v9 + 8))(v8, v4);

    *v10 = v12[1];
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_230DD5570@<X0>(char *a4@<X8>)
{
  v5 = sub_230E69680();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a4 = v7;
  return result;
}

uint64_t InferenceOutputScorerType.rawValue.getter()
{
  if (*v0)
  {
    return 0x706F54664F78616DLL;
  }

  else
  {
    return 0x4F65676172657661;
  }
}

uint64_t sub_230DD561C()
{
  sub_230E699B0();
  sub_230E69100();

  return sub_230E699D0();
}

uint64_t sub_230DD56B0(uint64_t a1)
{
  sub_230E69100();
}

uint64_t sub_230DD5730(uint64_t a1)
{
  sub_230E699B0();
  sub_230E69100();

  return sub_230E699D0();
}

uint64_t sub_230DD57CC@<X0>(char *a3@<X8>)
{
  v4 = sub_230E69680();

  if (v4 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v4)
  {
    v6 = 0;
  }

  *a3 = v6;
  return result;
}

void sub_230DD5828(uint64_t *a1@<X8>)
{
  v2 = 0x4F65676172657661;
  if (*v1)
  {
    v2 = 0x706F54664F78616DLL;
  }

  v3 = 0xED00004E706F5466;
  if (*v1)
  {
    v3 = 0xE90000000000004ELL;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_230DD5928(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x706F54664F78616DLL;
  }

  else
  {
    v3 = 0x4F65676172657661;
  }

  if (v2)
  {
    v4 = 0xED00004E706F5466;
  }

  else
  {
    v4 = 0xE90000000000004ELL;
  }

  if (*a2)
  {
    v5 = 0x706F54664F78616DLL;
  }

  else
  {
    v5 = 0x4F65676172657661;
  }

  if (*a2)
  {
    v6 = 0xE90000000000004ELL;
  }

  else
  {
    v6 = 0xED00004E706F5466;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_230E698C0();
  }

  return v8 & 1;
}

uint64_t InferenceOutputScorer.parameters.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t sub_230DD5A70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v5 || (sub_230E698C0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6574656D61726170 && a2 == 0xEA00000000007372)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_230E698C0();

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

uint64_t sub_230DD5B54(uint64_t a1)
{
  v2 = sub_230DD7CC8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230DD5B90(uint64_t a1)
{
  v2 = sub_230DD7CC8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t InferenceOutputScorer.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5CAB0, &qword_230E78E80);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = v11 - v7;
  v9 = *v1;
  v11[0] = *(v1 + 1);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230DD7CC8();
  sub_230E69A50();
  v14 = v9;
  v13 = 0;
  sub_230DD7D1C();
  sub_230E69850();
  if (!v2)
  {
    v11[1] = v11[0];
    v12 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5BAD0, &qword_230E73560);
    sub_230D6C1DC(&unk_281565FA0, MEMORY[0x277D837D8], MEMORY[0x277D83A08], MEMORY[0x277D83508]);
    sub_230E69850();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t InferenceOutputScorer.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v14[0] = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5CAC8, &qword_230E78E88);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = v14 - v7;
  sub_230D0EAD0(MEMORY[0x277D84F90]);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230DD7CC8();
  sub_230E69A30();
  if (!v2)
  {
    v9 = v5;
    v10 = v14[0];
    v16 = 0;
    sub_230DD7D70();
    sub_230E69760();
    v11 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5BAD0, &qword_230E73560);
    v15 = 1;
    sub_230D6C1DC(&qword_27DB5D980, MEMORY[0x277D83808], MEMORY[0x277D83A30], MEMORY[0x277D83528]);
    sub_230E69760();
    (*(v9 + 8))(v8, v4);

    v13 = v14[1];
    *v10 = v11;
    *(v10 + 8) = v13;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t UseCaseInputPayload.validateFeaturesAndParseAsData(inputDefinitions:)(uint64_t a1)
{
  result = sub_230D5B4EC(a1, sub_230DD7DC4);
  if (!v1)
  {
    if (*(result + 16))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5A978, &qword_230E78E90);
      v3 = sub_230E69640();
    }

    else
    {
      v3 = MEMORY[0x277D84F98];
    }

    v5 = v3;

    sub_230D5ADC4(v4, 1, &v5);

    return v5;
  }

  return result;
}

uint64_t sub_230DD6124(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = *(a3 + 32);
  v7 = *(a3 + 41);
  if (*(a4 + 16) && (result = sub_230DA41A0(result, a2), (v9 & 1) != 0))
  {
    v10 = *(*(a4 + 56) + 8 * result);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v11 = *(v10 + 16);
  v64 = v11;
  v65 = v10;
  v61 = v5;
  if (v7)
  {
    v12 = MEMORY[0x277D84F90];
    if (v11)
    {
      v13 = 0;
      v60 = v10 + 32;
      v14 = MEMORY[0x277D84F90];
      while (v13 < *(v10 + 16))
      {
        v33 = *(v60 + 8 * v13);
        if (*(v33 + 16) != v6)
        {
          goto LABEL_73;
        }

        v63 = v13;
        if (v6)
        {

          result = sub_230D48E28(0, v6, 0);
          v36 = 0;
          v37 = (v33 + 36);
          v38.i64[0] = 0x8000000080000000;
          v38.i64[1] = 0x8000000080000000;
          while (v36 < *(v33 + 16))
          {
            v39 = *(v37 - 1);
            if ((*v37 & 1) == 0)
            {
              v34.i32[0] = *(v37 - 1);
              *v35.i32 = v39 - truncf(v39);
              v35 = vbslq_s8(v38, v35, v34);
              if (*v35.i32 != 0.0 || v39 < -2147500000.0 || v39 > 2147500000.0)
              {

                sub_230DD98D8();
                swift_allocError();
                *v51 = xmmword_230E70DE0;
                *(v51 + 16) = xmmword_230E70DF0;
                *(v51 + 32) = &unk_2845A64C0;
                *(v51 + 40) = 0;
                *(v51 + 48) = 1;
                swift_willThrow();
              }

              if ((~LODWORD(v39) & 0x7F800000) == 0)
              {
                goto LABEL_82;
              }

              if (v39 <= -2147500000.0)
              {
                goto LABEL_83;
              }

              if (v39 >= 2147500000.0)
              {
                goto LABEL_84;
              }

              LODWORD(v39) = v39;
            }

            v43 = *(v12 + 2);
            v42 = *(v12 + 3);
            v4 = (v43 + 1);
            if (v43 >= v42 >> 1)
            {
              result = sub_230D48E28((v42 > 1), v43 + 1, 1);
              v38.i64[0] = 0x8000000080000000;
              v38.i64[1] = 0x8000000080000000;
            }

            ++v36;
            *(v12 + 2) = v4;
            v12[v43 + 8] = v39;
            v37 += 2;
            if (v6 == v36)
            {

              goto LABEL_60;
            }
          }

          __break(1u);
LABEL_82:
          __break(1u);
LABEL_83:
          __break(1u);
LABEL_84:
          __break(1u);
          goto LABEL_85;
        }

LABEL_60:
        v44 = *(v12 + 2);
        v45 = *(v14 + 16);
        v46 = v45 + v44;
        if (__OFADD__(v45, v44))
        {
          goto LABEL_91;
        }

        result = swift_isUniquelyReferenced_nonNull_native();
        if (!result || v46 > *(v14 + 24) >> 1)
        {
          if (v45 <= v46)
          {
            v47 = v45 + v44;
          }

          else
          {
            v47 = v45;
          }

          result = sub_230E4A1E0(result, v47, 1, v14);
          v14 = result;
        }

        if (*(v12 + 2))
        {
          v48 = *(v14 + 16);
          if ((*(v14 + 24) >> 1) - v48 < v44)
          {
            goto LABEL_93;
          }

          memcpy((v14 + 4 * v48 + 32), v12 + 8, 4 * v44);

          v32 = v64;
          v10 = v65;
          v12 = MEMORY[0x277D84F90];
          if (v44)
          {
            v49 = *(v14 + 16);
            v30 = __OFADD__(v49, v44);
            v50 = v49 + v44;
            if (v30)
            {
              goto LABEL_94;
            }

            *(v14 + 16) = v50;
          }
        }

        else
        {

          v32 = v64;
          v10 = v65;
          v12 = MEMORY[0x277D84F90];
          if (v44)
          {
            goto LABEL_92;
          }
        }

        v13 = v63 + 1;
        if (v63 + 1 == v32)
        {
          goto LABEL_76;
        }
      }

LABEL_90:
      __break(1u);
LABEL_91:
      __break(1u);
LABEL_92:
      __break(1u);
LABEL_93:
      __break(1u);
LABEL_94:
      __break(1u);
      goto LABEL_95;
    }

    v14 = MEMORY[0x277D84F90];
LABEL_76:

    v59 = *(v14 + 16);
    if (!(v59 >> 61))
    {
LABEL_80:
      sub_230DD8EEC((v14 + 32), 4 * v59);

      return v61;
    }

    __break(1u);
LABEL_78:
    v14 = v4;
LABEL_79:

    v59 = *(v14 + 16);
    if (v59 >> 61)
    {
LABEL_95:
      __break(1u);
      return result;
    }

    goto LABEL_80;
  }

  v4 = MEMORY[0x277D84F90];
  if (!v11)
  {
    goto LABEL_78;
  }

  v15 = 0;
  v62 = v10 + 32;
  v14 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v15 >= *(v10 + 16))
    {
LABEL_85:
      __break(1u);
LABEL_86:
      __break(1u);
LABEL_87:
      __break(1u);
LABEL_88:
      __break(1u);
LABEL_89:
      __break(1u);
      goto LABEL_90;
    }

    v17 = *(v62 + 8 * v15);
    if (*(v17 + 16) != v6)
    {
      break;
    }

    if (v6)
    {

      sub_230D48E48(0, v6, 0);
      v18 = v4;
      v19 = *(v4 + 2);
      v20 = (v17 + 36);
      v21 = v6;
      do
      {
        if (*v20)
        {
          v22 = *(v20 - 1);
        }

        else
        {
          v22 = *(v20 - 1);
        }

        v23 = *(v18 + 3);
        if (v19 >= v23 >> 1)
        {
          sub_230D48E48((v23 > 1), v19 + 1, 1);
        }

        *(v18 + 2) = v19 + 1;
        v18[v19 + 8] = v22;
        v20 += 2;
        ++v19;
        --v21;
      }

      while (v21);

      v4 = MEMORY[0x277D84F90];
    }

    else
    {
      v18 = v4;
    }

    v24 = *(v18 + 2);
    v25 = *(v14 + 16);
    v26 = v25 + v24;
    if (__OFADD__(v25, v24))
    {
      goto LABEL_86;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v26 <= *(v14 + 24) >> 1)
    {
      if (!*(v18 + 2))
      {
        goto LABEL_10;
      }
    }

    else
    {
      if (v25 <= v26)
      {
        v27 = v25 + v24;
      }

      else
      {
        v27 = v25;
      }

      result = sub_230E4A2E4(result, v27, 1, v14);
      v14 = result;
      if (!*(v18 + 2))
      {
LABEL_10:

        v16 = v64;
        v10 = v65;
        if (v24)
        {
          goto LABEL_87;
        }

        goto LABEL_11;
      }
    }

    v28 = *(v14 + 16);
    if ((*(v14 + 24) >> 1) - v28 < v24)
    {
      goto LABEL_88;
    }

    memcpy((v14 + 4 * v28 + 32), v18 + 8, 4 * v24);

    v16 = v64;
    v10 = v65;
    if (v24)
    {
      v29 = *(v14 + 16);
      v30 = __OFADD__(v29, v24);
      v31 = v29 + v24;
      if (v30)
      {
        goto LABEL_89;
      }

      *(v14 + 16) = v31;
    }

LABEL_11:
    if (++v15 == v16)
    {
      goto LABEL_79;
    }
  }

LABEL_73:

  v52 = sub_230E69890();
  v54 = v53;
  v55 = sub_230E69890();
  v57 = v56;
  sub_230DD98D8();
  swift_allocError();
  *v58 = xmmword_230E70DD0;
  *(v58 + 16) = v52;
  *(v58 + 24) = v54;
  *(v58 + 32) = v55;
  *(v58 + 40) = v57;
  *(v58 + 48) = 0;
  swift_willThrow();
}

unint64_t sub_230DD6758()
{
  result = qword_27DB5C9A0;
  if (!qword_27DB5C9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C9A0);
  }

  return result;
}

unint64_t sub_230DD67AC()
{
  result = qword_281566768;
  if (!qword_281566768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281566768);
  }

  return result;
}

unint64_t sub_230DD6800()
{
  result = qword_281566348;
  if (!qword_281566348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281566348);
  }

  return result;
}

uint64_t sub_230DD6854(unint64_t *a1, void (*a2)(void), uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB5C828, &qword_230E77DA0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_230DD68D8()
{
  result = qword_2815661F0[0];
  if (!qword_2815661F0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2815661F0);
  }

  return result;
}

uint64_t _s20ServicesIntelligence14InferenceModelV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[7];
  v21 = a1[8];
  v22 = a1[6];
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v9 = *(a2 + 32);
  v10 = *(a2 + 40);
  v11 = *(a2 + 48);
  v19 = *(a2 + 56);
  v20 = *(a2 + 64);
  if ((*a1 != *a2 || a1[1] != *(a2 + 8)) && (sub_230E698C0() & 1) == 0)
  {
    return 0;
  }

  v18 = v6;
  if (v2)
  {
    v12 = 0x69706D6F63657270;
  }

  else
  {
    v12 = 0x6F73736572707365;
  }

  if (v2)
  {
    v13 = 0xEB0000000064656CLL;
  }

  else
  {
    v13 = 0xEA00000000003256;
  }

  if (v7)
  {
    v14 = 0x69706D6F63657270;
  }

  else
  {
    v14 = 0x6F73736572707365;
  }

  if (v7)
  {
    v15 = 0xEB0000000064656CLL;
  }

  else
  {
    v15 = 0xEA00000000003256;
  }

  if (v12 == v14 && v13 == v15)
  {
  }

  else
  {
    v16 = sub_230E698C0();

    if ((v16 & 1) == 0)
    {
      return 0;
    }
  }

  if (v3 == v8 && v4 == v9 || (sub_230E698C0()) && (v5 == v10 && v22 == v11 || (sub_230E698C0()))
  {
    if (v21)
    {
      if (v20 && (v18 == v19 && v21 == v20 || (sub_230E698C0() & 1) != 0))
      {
        return 1;
      }
    }

    else if (!v20)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t _s20ServicesIntelligence25InferenceOutputDefinitionV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 40);
  v35 = *(a1 + 48);
  v32 = *(a1 + 56);
  v33 = *(a1 + 64);
  v7 = *(a2 + 8);
  v6 = *(a2 + 16);
  v8 = *(a2 + 24);
  v36 = *(a2 + 32);
  v37 = *(a1 + 32);
  v9 = *a1 == 0;
  v38 = *(a2 + 40);
  v34 = *(a2 + 48);
  if (*a1)
  {
    v10 = 0x7365756C6176;
  }

  else
  {
    v10 = 1315991412;
  }

  v30 = *(a2 + 56);
  v31 = *(a2 + 64);
  if (v9)
  {
    v11 = 0xE400000000000000;
  }

  else
  {
    v11 = 0xE600000000000000;
  }

  if (*a2)
  {
    v12 = 0x7365756C6176;
  }

  else
  {
    v12 = 1315991412;
  }

  if (*a2)
  {
    v13 = 0xE600000000000000;
  }

  else
  {
    v13 = 0xE400000000000000;
  }

  if (v10 == v12 && v11 == v13)
  {
  }

  else
  {
    v14 = sub_230E698C0();

    if ((v14 & 1) == 0)
    {
      return 0;
    }
  }

  if ((sub_230D6A784(v3, v7) & 1) == 0 || (sub_230D265DC(v2, v6) & 1) == 0)
  {
    return 0;
  }

  if (!v4)
  {
    if (v8)
    {
      goto LABEL_44;
    }

    if (v5)
    {
      goto LABEL_23;
    }

LABEL_43:
    if (!v38)
    {

      goto LABEL_51;
    }

    goto LABEL_44;
  }

  if (!v8)
  {
    goto LABEL_44;
  }

  swift_bridgeObjectRetain_n();

  v15 = sub_230D6A784(v4, v8);
  swift_bridgeObjectRelease_n();

  if ((v15 & 1) == 0)
  {
    return 0;
  }

  if (!v5)
  {
    goto LABEL_43;
  }

LABEL_23:
  if (!v38)
  {
LABEL_44:

LABEL_45:

    return 0;
  }

  if (v37)
  {
    v16 = 0x706F54664F78616DLL;
  }

  else
  {
    v16 = 0x4F65676172657661;
  }

  if (v37)
  {
    v17 = 0xE90000000000004ELL;
  }

  else
  {
    v17 = 0xED00004E706F5466;
  }

  if (v36)
  {
    v18 = 0x706F54664F78616DLL;
  }

  else
  {
    v18 = 0x4F65676172657661;
  }

  if (v36)
  {
    v19 = 0xE90000000000004ELL;
  }

  else
  {
    v19 = 0xED00004E706F5466;
  }

  if (v16 == v18 && v17 == v19)
  {
    v20 = v5;
    swift_bridgeObjectRetain_n();
    v21 = v38;

    goto LABEL_48;
  }

  v20 = v5;
  v23 = sub_230E698C0();
  swift_bridgeObjectRetain_n();
  v21 = v38;

  if ((v23 & 1) == 0)
  {
    swift_bridgeObjectRelease_n();
    goto LABEL_45;
  }

LABEL_48:
  v24 = sub_230D6A784(v20, v21);
  swift_bridgeObjectRelease_n();

  if ((v24 & 1) == 0)
  {
    return 0;
  }

LABEL_51:
  if (v35)
  {
    v25 = 0x3233746E69;
  }

  else
  {
    v25 = 0x323374616F6C66;
  }

  if (v35)
  {
    v26 = 0xE500000000000000;
  }

  else
  {
    v26 = 0xE700000000000000;
  }

  if (v34)
  {
    v27 = 0x3233746E69;
  }

  else
  {
    v27 = 0x323374616F6C66;
  }

  if (v34)
  {
    v28 = 0xE500000000000000;
  }

  else
  {
    v28 = 0xE700000000000000;
  }

  if (v25 != v27 || v26 != v28)
  {
    v29 = sub_230E698C0();

    if (v29)
    {
      return (v32 == v30) & (v33 ^ v31 ^ 1u);
    }

    return 0;
  }

  return (v32 == v30) & (v33 ^ v31 ^ 1u);
}

uint64_t _s20ServicesIntelligence17InferenceWorkflowV2eeoiySbAC_ACtFZ_0(uint64_t a1, __int128 *a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 48);
  v34 = *(a1 + 32);
  v35 = v3;
  v4 = *(a1 + 16);
  v33[0] = *a1;
  v33[1] = v4;
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[3];
  v37[2] = a2[2];
  v37[3] = v7;
  v8 = a2[1];
  v9 = a2[2];
  v10 = *a2;
  v37[0] = v5;
  v37[1] = v8;
  v11 = *(a1 + 48);
  v30 = v34;
  v31 = v11;
  v12 = *(a1 + 72);
  v36 = *(a1 + 64);
  v14 = *(a1 + 80);
  v13 = *(a1 + 88);
  v15 = *(a1 + 96);
  v16 = *(a2 + 9);
  v38 = *(a2 + 8);
  v18 = *(a2 + 10);
  v17 = *(a2 + 11);
  v19 = *(a2 + 12);
  v32 = *(a1 + 64);
  v28 = v33[0];
  v29 = v2;
  v20 = a2[3];
  v25 = v9;
  v26 = v20;
  v27 = *(a2 + 8);
  v23 = v10;
  v24 = v6;
  sub_230D2D948(v33, v41);
  sub_230D2D948(v37, v41);
  v21 = _s20ServicesIntelligence14InferenceModelV2eeoiySbAC_ACtFZ_0(&v28, &v23);
  v39[2] = v25;
  v39[3] = v26;
  v40 = v27;
  v39[0] = v23;
  v39[1] = v24;
  sub_230D2D9A4(v39);
  v41[2] = v30;
  v41[3] = v31;
  v42 = v32;
  v41[0] = v28;
  v41[1] = v29;
  sub_230D2D9A4(v41);
  if (v21 & 1) != 0 && (sub_230D6A8C0(v12, v16) & 1) != 0 && (sub_230D6ABB8(v14, v18))
  {
    if (v15)
    {
      if (v19 && (v13 == v17 && v15 == v19 || (sub_230E698C0() & 1) != 0))
      {
        return 1;
      }
    }

    else if (!v19)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_230DD705C(unint64_t *a1, void (*a2)(void), uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27DB5D9A0, &qword_230E77D90);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_230DD7110()
{
  result = qword_27DB5C9B8;
  if (!qword_27DB5C9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C9B8);
  }

  return result;
}

unint64_t sub_230DD7164()
{
  result = qword_281566508;
  if (!qword_281566508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281566508);
  }

  return result;
}

unint64_t sub_230DD71B8()
{
  result = qword_27DB5C9C8;
  if (!qword_27DB5C9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C9C8);
  }

  return result;
}

uint64_t _s20ServicesIntelligence21InferenceOutputScorerV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  v4 = *a1 == 0;
  if (*a1)
  {
    v5 = 0x706F54664F78616DLL;
  }

  else
  {
    v5 = 0x4F65676172657661;
  }

  if (v4)
  {
    v6 = 0xED00004E706F5466;
  }

  else
  {
    v6 = 0xE90000000000004ELL;
  }

  if (*a2)
  {
    v7 = 0x706F54664F78616DLL;
  }

  else
  {
    v7 = 0x4F65676172657661;
  }

  if (*a2)
  {
    v8 = 0xE90000000000004ELL;
  }

  else
  {
    v8 = 0xED00004E706F5466;
  }

  if (v5 == v7 && v6 == v8)
  {
  }

  else
  {
    v10 = sub_230E698C0();

    if ((v10 & 1) == 0)
    {
      return 0;
    }
  }

  return sub_230D6A784(v2, v3);
}

uint64_t _s20ServicesIntelligence24InferenceInputDefinitionV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = *(a1 + 40);
  v6 = *(a1 + 41);
  v8 = *(a2 + 16);
  v7 = *(a2 + 24);
  v9 = *(a2 + 32);
  v10 = *(a2 + 40);
  v11 = *(a2 + 41);
  if ((*a1 != *a2 || a1[1] != *(a2 + 8)) && (sub_230E698C0() & 1) == 0)
  {
    goto LABEL_9;
  }

  if (v3)
  {
    if (v7)
    {
      if (v2 == v8 && v3 == v7)
      {
        v12 = 0;
      }

      else
      {
        v12 = 0;
        if ((sub_230E698C0() & 1) == 0)
        {
          return v12 & 1;
        }
      }

      goto LABEL_13;
    }

LABEL_9:
    v12 = 0;
    return v12 & 1;
  }

  v12 = 0;
  if (v7)
  {
    return v12 & 1;
  }

LABEL_13:
  if (v4 == v9 && ((v5 ^ v10) & 1) == 0)
  {
    if (v6)
    {
      v13 = 0x3233746E69;
    }

    else
    {
      v13 = 0x323374616F6C66;
    }

    if (v6)
    {
      v14 = 0xE500000000000000;
    }

    else
    {
      v14 = 0xE700000000000000;
    }

    if (v11)
    {
      v15 = 0x3233746E69;
    }

    else
    {
      v15 = 0x323374616F6C66;
    }

    if (v11)
    {
      v16 = 0xE500000000000000;
    }

    else
    {
      v16 = 0xE700000000000000;
    }

    if (v13 == v15 && v14 == v16)
    {
      v12 = 1;
    }

    else
    {
      v12 = sub_230E698C0();
    }
  }

  return v12 & 1;
}

unint64_t sub_230DD7474()
{
  result = qword_27DB5C9D8;
  if (!qword_27DB5C9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C9D8);
  }

  return result;
}

unint64_t sub_230DD74C8()
{
  result = qword_281566528[0];
  if (!qword_281566528[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281566528);
  }

  return result;
}

unint64_t sub_230DD751C()
{
  result = qword_281566358[0];
  if (!qword_281566358[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281566358);
  }

  return result;
}

unint64_t sub_230DD7570()
{
  result = qword_27DB5C9E8;
  if (!qword_27DB5C9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C9E8);
  }

  return result;
}

unint64_t sub_230DD75C4()
{
  result = qword_27DB5C9F0;
  if (!qword_27DB5C9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C9F0);
  }

  return result;
}

unint64_t sub_230DD7618()
{
  result = qword_27DB5CA00;
  if (!qword_27DB5CA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CA00);
  }

  return result;
}

unint64_t sub_230DD766C()
{
  result = qword_2815667B8[0];
  if (!qword_2815667B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2815667B8);
  }

  return result;
}

unint64_t sub_230DD76C0()
{
  result = qword_27DB5CA10;
  if (!qword_27DB5CA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CA10);
  }

  return result;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

unint64_t sub_230DD7764()
{
  result = qword_27DB5CA20;
  if (!qword_27DB5CA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CA20);
  }

  return result;
}

unint64_t sub_230DD77B8()
{
  result = qword_281566518;
  if (!qword_281566518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281566518);
  }

  return result;
}

unint64_t sub_230DD780C()
{
  result = qword_2815664B0;
  if (!qword_2815664B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815664B0);
  }

  return result;
}

unint64_t sub_230DD7860()
{
  result = qword_2815664C8;
  if (!qword_2815664C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815664C8);
  }

  return result;
}

unint64_t sub_230DD78B4()
{
  result = qword_2815664C0;
  if (!qword_2815664C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815664C0);
  }

  return result;
}

unint64_t sub_230DD7908()
{
  result = qword_27DB5CA38;
  if (!qword_27DB5CA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CA38);
  }

  return result;
}

uint64_t sub_230DD795C(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB5CA28, &qword_230E78E50);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_230DD79D4()
{
  result = qword_27DB5CA48;
  if (!qword_27DB5CA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CA48);
  }

  return result;
}

unint64_t sub_230DD7A28()
{
  result = qword_27DB5CA50;
  if (!qword_27DB5CA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CA50);
  }

  return result;
}

unint64_t sub_230DD7A7C()
{
  result = qword_27DB5CA58;
  if (!qword_27DB5CA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CA58);
  }

  return result;
}

unint64_t sub_230DD7AD0()
{
  result = qword_27DB5CA68;
  if (!qword_27DB5CA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CA68);
  }

  return result;
}

unint64_t sub_230DD7B24()
{
  result = qword_27DB5CA70;
  if (!qword_27DB5CA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CA70);
  }

  return result;
}

unint64_t sub_230DD7B78()
{
  result = qword_27DB5CA80;
  if (!qword_27DB5CA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CA80);
  }

  return result;
}

unint64_t sub_230DD7BCC()
{
  result = qword_27DB5CA90;
  if (!qword_27DB5CA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CA90);
  }

  return result;
}

unint64_t sub_230DD7C20()
{
  result = qword_27DB5CA98;
  if (!qword_27DB5CA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CA98);
  }

  return result;
}

unint64_t sub_230DD7C74()
{
  result = qword_27DB5CAA8;
  if (!qword_27DB5CAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CAA8);
  }

  return result;
}

unint64_t sub_230DD7CC8()
{
  result = qword_27DB5CAB8;
  if (!qword_27DB5CAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CAB8);
  }

  return result;
}

unint64_t sub_230DD7D1C()
{
  result = qword_27DB5CAC0;
  if (!qword_27DB5CAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CAC0);
  }

  return result;
}

unint64_t sub_230DD7D70()
{
  result = qword_27DB5CAD0;
  if (!qword_27DB5CAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CAD0);
  }

  return result;
}

unint64_t sub_230DD7DE4()
{
  result = qword_27DB5CAD8;
  if (!qword_27DB5CAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CAD8);
  }

  return result;
}

unint64_t sub_230DD7E3C()
{
  result = qword_27DB5CAE0;
  if (!qword_27DB5CAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CAE0);
  }

  return result;
}

unint64_t sub_230DD7E94()
{
  result = qword_27DB5CAE8;
  if (!qword_27DB5CAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CAE8);
  }

  return result;
}

unint64_t sub_230DD7EEC()
{
  result = qword_27DB5CAF0;
  if (!qword_27DB5CAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CAF0);
  }

  return result;
}

unint64_t sub_230DD7F44()
{
  result = qword_27DB5CAF8;
  if (!qword_27DB5CAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CAF8);
  }

  return result;
}

unint64_t sub_230DD7F9C()
{
  result = qword_27DB5CB00;
  if (!qword_27DB5CB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CB00);
  }

  return result;
}

unint64_t sub_230DD7FF4()
{
  result = qword_27DB5CB08;
  if (!qword_27DB5CB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CB08);
  }

  return result;
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

uint64_t sub_230DD8074(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
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

uint64_t sub_230DD80BC(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_230DD8148(uint64_t a1, int a2)
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

uint64_t sub_230DD8190(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy42_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 26) = *(a2 + 26);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_230DD8214(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 42))
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

uint64_t sub_230DD825C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 42) = 1;
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

    *(result + 42) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for InferenceDataShape(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for InferenceDataShape(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

uint64_t __swift_memcpy5_4(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for InferenceData(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 5))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 4);
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

uint64_t storeEnumTagSinglePayload for InferenceData(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 4) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 5) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 5) = 0;
    }

    if (a2)
    {
      *(result + 4) = -a2;
    }
  }

  return result;
}

__n128 __swift_memcpy65_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_230DD8458(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
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

uint64_t sub_230DD84A0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_230DD85F8()
{
  result = qword_27DB5CB10;
  if (!qword_27DB5CB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CB10);
  }

  return result;
}

unint64_t sub_230DD8650()
{
  result = qword_27DB5CB18;
  if (!qword_27DB5CB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CB18);
  }

  return result;
}

unint64_t sub_230DD86A8()
{
  result = qword_27DB5CB20;
  if (!qword_27DB5CB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CB20);
  }

  return result;
}

unint64_t sub_230DD8700()
{
  result = qword_27DB5CB28;
  if (!qword_27DB5CB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CB28);
  }

  return result;
}

unint64_t sub_230DD8758()
{
  result = qword_27DB5CB30;
  if (!qword_27DB5CB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CB30);
  }

  return result;
}

unint64_t sub_230DD87B0()
{
  result = qword_27DB5CB38;
  if (!qword_27DB5CB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CB38);
  }

  return result;
}

unint64_t sub_230DD8808()
{
  result = qword_27DB5CB40;
  if (!qword_27DB5CB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CB40);
  }

  return result;
}

unint64_t sub_230DD8860()
{
  result = qword_27DB5CB48;
  if (!qword_27DB5CB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CB48);
  }

  return result;
}

unint64_t sub_230DD88B8()
{
  result = qword_27DB5CB50;
  if (!qword_27DB5CB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CB50);
  }

  return result;
}

unint64_t sub_230DD8910()
{
  result = qword_27DB5CB58;
  if (!qword_27DB5CB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CB58);
  }

  return result;
}

unint64_t sub_230DD8968()
{
  result = qword_27DB5CB60;
  if (!qword_27DB5CB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CB60);
  }

  return result;
}

unint64_t sub_230DD89C0()
{
  result = qword_27DB5CB68;
  if (!qword_27DB5CB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CB68);
  }

  return result;
}

unint64_t sub_230DD8A18()
{
  result = qword_27DB5CB70;
  if (!qword_27DB5CB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CB70);
  }

  return result;
}

unint64_t sub_230DD8A70()
{
  result = qword_27DB5CB78;
  if (!qword_27DB5CB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CB78);
  }

  return result;
}

unint64_t sub_230DD8AC8()
{
  result = qword_27DB5CB80;
  if (!qword_27DB5CB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CB80);
  }

  return result;
}

unint64_t sub_230DD8B20()
{
  result = qword_27DB5CB88;
  if (!qword_27DB5CB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CB88);
  }

  return result;
}

unint64_t sub_230DD8B78()
{
  result = qword_27DB5CB90;
  if (!qword_27DB5CB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CB90);
  }

  return result;
}

unint64_t sub_230DD8BD0()
{
  result = qword_27DB5CB98;
  if (!qword_27DB5CB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CB98);
  }

  return result;
}

unint64_t sub_230DD8C28()
{
  result = qword_27DB5CBA0;
  if (!qword_27DB5CBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CBA0);
  }

  return result;
}

unint64_t sub_230DD8C80()
{
  result = qword_27DB5CBA8;
  if (!qword_27DB5CBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CBA8);
  }

  return result;
}

unint64_t sub_230DD8CD8()
{
  result = qword_27DB5CBB0;
  if (!qword_27DB5CBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CBB0);
  }

  return result;
}

unint64_t sub_230DD8D30()
{
  result = qword_27DB5CBB8;
  if (!qword_27DB5CBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CBB8);
  }

  return result;
}

unint64_t sub_230DD8D88()
{
  result = qword_27DB5CBC0;
  if (!qword_27DB5CBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CBC0);
  }

  return result;
}

unint64_t sub_230DD8DE0()
{
  result = qword_27DB5CBC8;
  if (!qword_27DB5CBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CBC8);
  }

  return result;
}

uint64_t sub_230DD8E34(_BYTE *__src, _BYTE *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

unint64_t sub_230DD8EEC(_BYTE *a1, unint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 <= 14)
  {
    return sub_230DD8E34(a1, &a1[a2]);
  }

  sub_230E68760();
  swift_allocObject();
  sub_230E68720();
  if (a2 < 0x7FFFFFFF)
  {
    return a2 << 32;
  }

  sub_230E68870();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = a2;
  return result;
}

uint64_t sub_230DD8F9C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C65646F6DLL && a2 == 0xE500000000000000;
  if (v4 || (sub_230E698C0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000230E801B0 == a2 || (sub_230E698C0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000230E801D0 == a2 || (sub_230E698C0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000230E801F0 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_230E698C0();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_230DD9104(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_230E698C0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74616D726F66 && a2 == 0xE600000000000000 || (sub_230E698C0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6564497465737361 && a2 == 0xEF7265696669746ELL || (sub_230E698C0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000230E80190 == a2 || (sub_230E698C0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7269447465737361 && a2 == 0xEE0079726F746365)
  {

    return 4;
  }

  else
  {
    v6 = sub_230E698C0();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_230DD92D0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x8000000230E835D0 == a2 || (sub_230E698C0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x617265704F70616DLL && a2 == 0xEC0000006E6F6974 || (sub_230E698C0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6570616873 && a2 == 0xE500000000000000 || (sub_230E698C0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6570795461746164 && a2 == 0xE800000000000000)
  {

    return 3;
  }

  else
  {
    v5 = sub_230E698C0();

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

uint64_t sub_230DD9440(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701080941 && a2 == 0xE400000000000000;
  if (v3 || (sub_230E698C0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6574656D61726170 && a2 == 0xEA00000000007372 || (sub_230E698C0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7265696669646F6DLL && a2 == 0xE900000000000073 || (sub_230E698C0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x72656B6E6172 && a2 == 0xE600000000000000 || (sub_230E698C0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7265726F6373 && a2 == 0xE600000000000000 || (sub_230E698C0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6570795461746164 && a2 == 0xE800000000000000 || (sub_230E698C0() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6570616873 && a2 == 0xE500000000000000)
  {

    return 6;
  }

  else
  {
    v6 = sub_230E698C0();

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

unint64_t sub_230DD968C()
{
  result = qword_27DB5CBD0;
  if (!qword_27DB5CBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CBD0);
  }

  return result;
}

unint64_t sub_230DD96E0()
{
  result = qword_27DB5CBD8;
  if (!qword_27DB5CBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CBD8);
  }

  return result;
}

unint64_t sub_230DD9734()
{
  result = qword_27DB5CBE0;
  if (!qword_27DB5CBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CBE0);
  }

  return result;
}

unint64_t sub_230DD9788()
{
  result = qword_281566510;
  if (!qword_281566510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281566510);
  }

  return result;
}

unint64_t sub_230DD97DC()
{
  result = qword_281566350;
  if (!qword_281566350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281566350);
  }

  return result;
}

unint64_t sub_230DD9830()
{
  result = qword_2815667B0;
  if (!qword_2815667B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815667B0);
  }

  return result;
}

unint64_t sub_230DD9884()
{
  result = qword_281566500;
  if (!qword_281566500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281566500);
  }

  return result;
}

unint64_t sub_230DD98D8()
{
  result = qword_27DB5CBE8;
  if (!qword_27DB5CBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CBE8);
  }

  return result;
}

ServicesIntelligence::RuleWorkflow __swiftcall RuleWorkflow.init(parameters:treatmentIdentifier:)(Swift::OpaquePointer parameters, Swift::String_optional treatmentIdentifier)
{
  object = treatmentIdentifier.value._object;
  countAndFlagsBits = treatmentIdentifier.value._countAndFlagsBits;
  v6 = v2;
  sub_230D0EAD0(MEMORY[0x277D84F90]);

  v6->_rawValue = parameters._rawValue;
  v6[1]._rawValue = countAndFlagsBits;
  v6[2]._rawValue = object;
  result.treatmentIdentifier.value._object = v9;
  result.treatmentIdentifier.value._countAndFlagsBits = v8;
  result.parameters._rawValue = v7;
  return result;
}

uint64_t RuleWorkflow.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5CBF0, &unk_230E7A5A0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = v12 - v7;
  v10 = *v1;
  v9 = v1[1];
  v12[1] = v1[2];
  v12[2] = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230DDA178();

  sub_230E69A50();
  v15 = v10;
  v14 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5BAD0, &qword_230E73560);
  sub_230D6C1DC(&unk_281565FA0, MEMORY[0x277D837D8], MEMORY[0x277D83A08], MEMORY[0x277D83508]);
  sub_230E69850();

  if (!v2)
  {
    v13 = 1;
    sub_230E697B0();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t static RuleWorkflow.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a2[1];
  v5 = a2[2];
  if (sub_230D6A784(*a1, *a2))
  {
    if (v3)
    {
      if (v5 && (v2 == v4 && v3 == v5 || (sub_230E698C0() & 1) != 0))
      {
        return 1;
      }
    }

    else if (!v5)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t RuleWorkflow.parameters.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t RuleWorkflow.treatmentIdentifier.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t RuleWorkflow.treatmentIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t sub_230DD9CC8()
{
  if (*v0)
  {
    return 0xD000000000000013;
  }

  else
  {
    return 0x6574656D61726170;
  }
}

uint64_t sub_230DD9D0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6574656D61726170 && a2 == 0xEA00000000007372;
  if (v6 || (sub_230E698C0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000230E801F0 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_230E698C0();

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

uint64_t sub_230DD9DF8(uint64_t a1)
{
  v2 = sub_230DDA178();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230DD9E34(uint64_t a1)
{
  v2 = sub_230DDA178();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t RuleWorkflow.init(from:)@<X0>(void *a1@<X0>, unint64_t *a2@<X8>)
{
  v16 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5CC00, &qword_230E7A5B0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v16 - v7;
  sub_230D0EAD0(MEMORY[0x277D84F90]);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230DDA178();
  sub_230E69A30();
  if (!v2)
  {
    v9 = v5;
    v10 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5BAD0, &qword_230E73560);
    v18 = 0;
    sub_230D6C1DC(&qword_27DB5D980, MEMORY[0x277D83808], MEMORY[0x277D83A30], MEMORY[0x277D83528]);
    sub_230E69760();

    v11 = v19;
    v17 = 1;
    v13 = sub_230E696B0();
    v15 = v14;
    (*(v9 + 8))(v8, v4);
    *v10 = v11;
    v10[1] = v13;
    v10[2] = v15;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_230DDA0F0(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a2[1];
  v5 = a2[2];
  if (sub_230D6A784(*a1, *a2))
  {
    if (v3)
    {
      if (v5 && (v2 == v4 && v3 == v5 || (sub_230E698C0() & 1) != 0))
      {
        return 1;
      }
    }

    else if (!v5)
    {
      return 1;
    }
  }

  return 0;
}

unint64_t sub_230DDA178()
{
  result = qword_27DB5CBF8;
  if (!qword_27DB5CBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CBF8);
  }

  return result;
}

uint64_t sub_230DDA1CC(uint64_t *a1, int a2)
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

uint64_t sub_230DDA214(uint64_t result, int a2, int a3)
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

unint64_t sub_230DDA278()
{
  result = qword_27DB5CC08;
  if (!qword_27DB5CC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CC08);
  }

  return result;
}

unint64_t sub_230DDA2D0()
{
  result = qword_27DB5CC10;
  if (!qword_27DB5CC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CC10);
  }

  return result;
}

unint64_t sub_230DDA328()
{
  result = qword_27DB5CC18;
  if (!qword_27DB5CC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CC18);
  }

  return result;
}

uint64_t sub_230DDA384(uint64_t a1)
{
  v2 = sub_230DDB3A8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230DDA3C0(uint64_t a1)
{
  v2 = sub_230DDB3A8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_230DDA3FC(uint64_t a1)
{
  v2 = sub_230DDB4A4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230DDA438(uint64_t a1)
{
  v2 = sub_230DDB4A4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_230DDA474(uint64_t a1)
{
  v2 = sub_230DDB3FC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230DDA4B0(uint64_t a1)
{
  v2 = sub_230DDB3FC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t WorkflowCachingBehavior.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5CC20, &qword_230E7A790);
  v27 = *(v3 - 8);
  v28 = v3;
  MEMORY[0x28223BE20](v3, v4);
  v6 = &v22 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5CC28, &qword_230E7A798);
  v22 = *(v7 - 8);
  v23 = v7;
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v22 - v9;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5CC30, &qword_230E7A7A0);
  v11 = *(v29 - 8);
  MEMORY[0x28223BE20](v29, v12);
  v14 = &v22 - v13;
  v15 = *v1;
  v16 = v1[1];
  v17 = v1[2];
  v25 = v1[3];
  v26 = v15;
  v24 = *(v1 + 32);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230DDB3A8();
  sub_230E69A50();
  if (v16)
  {
    LOBYTE(v30) = 1;
    sub_230DDB3FC();
    v18 = v29;
    sub_230E697A0();
    v30 = v26;
    v31 = v16;
    v32 = v17;
    v33 = v25;
    v34 = v24 & 1;
    sub_230DDB450();
    v19 = v28;
    sub_230E69850();
    (*(v27 + 8))(v6, v19);
    return (*(v11 + 8))(v14, v18);
  }

  else
  {
    LOBYTE(v30) = 0;
    sub_230DDB4A4();
    v21 = v29;
    sub_230E697A0();
    (*(v22 + 8))(v10, v23);
    return (*(v11 + 8))(v14, v21);
  }
}

uint64_t WorkflowCachingBehavior.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5CC58, &qword_230E7A7A8);
  v4 = *(v3 - 8);
  v38 = v3;
  v39 = v4;
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v38 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5CC60, &qword_230E7A7B0);
  v40 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v38 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5CC68, &unk_230E7A7B8);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v38 - v15;
  v17 = a1[3];
  v51 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_230DDB3A8();
  v18 = v42;
  sub_230E69A30();
  if (!v18)
  {
    v42 = v13;
    v20 = v40;
    v19 = v41;
    v21 = sub_230E69780();
    v22 = (2 * *(v21 + 16)) | 1;
    v47 = v21;
    v48 = v21 + 32;
    v49 = 0;
    v50 = v22;
    v23 = sub_230D089CC();
    if (v23 == 2 || v49 != v50 >> 1)
    {
      v27 = sub_230E69580();
      swift_allocError();
      v29 = v28;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5A5D0, &qword_230E6A950);
      *v29 = &type metadata for WorkflowCachingBehavior;
      sub_230E696A0();
      sub_230E69570();
      (*(*(v27 - 8) + 104))(v29, *MEMORY[0x277D84160], v27);
      swift_willThrow();
      (*(v42 + 8))(v16, v12);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v23)
      {
        LOBYTE(v43) = 1;
        sub_230DDB3FC();
        v24 = v16;
        v25 = v7;
        sub_230E69690();
        v26 = v42;
        sub_230DDB4F8();
        v32 = v25;
        v33 = v38;
        sub_230E69760();
        (*(v39 + 8))(v32, v33);
        (*(v26 + 8))(v24, v12);
        swift_unknownObjectRelease();
        v34 = v43;
        v35 = v44;
        v36 = v45;
        v37 = v46;
      }

      else
      {
        LOBYTE(v43) = 0;
        sub_230DDB4A4();
        sub_230E69690();
        v31 = v42;
        (*(v20 + 8))(v11, v8);
        (*(v31 + 8))(v16, v12);
        swift_unknownObjectRelease();
        v34 = 0;
        v35 = 0;
        v37 = 0;
        v36 = 0uLL;
      }

      *v19 = v34;
      *(v19 + 8) = v35;
      *(v19 + 16) = v36;
      *(v19 + 32) = v37;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v51);
}

uint64_t WorkflowCachingOption.signature.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t WorkflowCachingOption.signature.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t WorkflowCachingOption.expiration.setter(uint64_t result, char a2)
{
  *(v2 + 24) = result;
  *(v2 + 32) = a2 & 1;
  return result;
}

uint64_t WorkflowCachingOption.init(signature:age:expiration:dataClass:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>, double a6@<D0>)
{
  *a5 = result;
  *(a5 + 8) = a2;
  *(a5 + 16) = a6;
  *(a5 + 24) = a3;
  *(a5 + 32) = a4 & 1;
  return result;
}

uint64_t sub_230DDAE78(uint64_t a1)
{
  v2 = sub_230DDB54C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230DDAEB4(uint64_t a1)
{
  v2 = sub_230DDB54C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t WorkflowCachingOption.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5CC78, &qword_230E7A7C8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = v10 - v6;
  v11 = *(v1 + 24);
  v10[1] = *(v1 + 32);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230DDB54C();
  sub_230E69A50();
  v16 = 0;
  v8 = v12;
  sub_230E69810();
  if (!v8)
  {
    v15 = 1;
    sub_230E69830();
    v14 = 2;
    sub_230E697C0();
    v13 = 3;
    sub_230D0D128();
    sub_230E69850();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t WorkflowCachingOption.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5CC88, &qword_230E7A7D0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v19 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230DDB54C();
  sub_230E69A30();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v24 = 0;
  v10 = sub_230E69720();
  v12 = v11;
  v13 = v10;
  v23 = 1;
  sub_230E69740();
  v15 = v14;
  v22 = 2;
  v16 = sub_230E696D0();
  v20 = v17;
  v19 = v16;
  v21 = 3;
  sub_230D0D1D0();
  sub_230E69760();
  (*(v6 + 8))(v9, v5);
  *a2 = v13;
  *(a2 + 8) = v12;
  *(a2 + 16) = v15;
  *(a2 + 24) = v19;
  *(a2 + 32) = v20 & 1;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_230DDB3A8()
{
  result = qword_27DB5CC38;
  if (!qword_27DB5CC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CC38);
  }

  return result;
}

unint64_t sub_230DDB3FC()
{
  result = qword_27DB5CC40;
  if (!qword_27DB5CC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CC40);
  }

  return result;
}

unint64_t sub_230DDB450()
{
  result = qword_27DB5CC48;
  if (!qword_27DB5CC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CC48);
  }

  return result;
}

unint64_t sub_230DDB4A4()
{
  result = qword_27DB5CC50;
  if (!qword_27DB5CC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CC50);
  }

  return result;
}

unint64_t sub_230DDB4F8()
{
  result = qword_27DB5CC70;
  if (!qword_27DB5CC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CC70);
  }

  return result;
}

unint64_t sub_230DDB54C()
{
  result = qword_27DB5CC80;
  if (!qword_27DB5CC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CC80);
  }

  return result;
}

unint64_t sub_230DDB604()
{
  result = qword_27DB5CC90;
  if (!qword_27DB5CC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CC90);
  }

  return result;
}

unint64_t sub_230DDB65C()
{
  result = qword_27DB5CC98;
  if (!qword_27DB5CC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CC98);
  }

  return result;
}

unint64_t sub_230DDB6B4()
{
  result = qword_27DB5CCA0;
  if (!qword_27DB5CCA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CCA0);
  }

  return result;
}

unint64_t sub_230DDB70C()
{
  result = qword_27DB5CCA8;
  if (!qword_27DB5CCA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CCA8);
  }

  return result;
}

unint64_t sub_230DDB764()
{
  result = qword_27DB5CCB0;
  if (!qword_27DB5CCB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CCB0);
  }

  return result;
}

unint64_t sub_230DDB7BC()
{
  result = qword_27DB5CCB8;
  if (!qword_27DB5CCB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CCB8);
  }

  return result;
}

unint64_t sub_230DDB814()
{
  result = qword_27DB5CCC0;
  if (!qword_27DB5CCC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CCC0);
  }

  return result;
}

unint64_t sub_230DDB86C()
{
  result = qword_27DB5CCC8;
  if (!qword_27DB5CCC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CCC8);
  }

  return result;
}

unint64_t sub_230DDB8C4()
{
  result = qword_27DB5CCD0;
  if (!qword_27DB5CCD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CCD0);
  }

  return result;
}

unint64_t sub_230DDB91C()
{
  result = qword_27DB5CCD8;
  if (!qword_27DB5CCD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CCD8);
  }

  return result;
}

unint64_t sub_230DDB974()
{
  result = qword_27DB5CCE0;
  if (!qword_27DB5CCE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CCE0);
  }

  return result;
}

uint64_t ServicesIntelligenceProvider.run(_:)(uint64_t a1, uint64_t a2)
{
  *(v3 + 688) = v2;
  *(v3 + 680) = a1;
  v5 = sub_230E68D80();
  *(v3 + 696) = v5;
  *(v3 + 704) = *(v5 - 8);
  *(v3 + 712) = swift_task_alloc();
  v6 = *(a2 + 80);
  *(v3 + 80) = *(a2 + 64);
  *(v3 + 96) = v6;
  *(v3 + 112) = *(a2 + 96);
  v7 = *(a2 + 16);
  *(v3 + 16) = *a2;
  *(v3 + 32) = v7;
  v8 = *(a2 + 48);
  *(v3 + 48) = *(a2 + 32);
  *(v3 + 64) = v8;
  *(v3 + 113) = 33;
  v9 = swift_task_alloc();
  *(v3 + 720) = v9;
  *v9 = v3;
  v9[1] = sub_230DDBB34;

  return static RequestContext.from(_:correlationID:)(v3 + 632, (v3 + 113), 0, 0);
}

uint64_t sub_230DDBB34()
{
  v1 = *(*v0 + 688);

  return MEMORY[0x2822009F8](sub_230DDBC70, v1, 0);
}

uint64_t sub_230DDBC70()
{
  v30 = v0;
  v29[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 632);
  v2 = *(v0 + 640);
  v3 = *(v0 + 648);
  *(v0 + 728) = v3;
  v4 = *(v0 + 656);
  v5 = *(v0 + 657);
  v6 = *(v0 + 664);
  *(v0 + 736) = v6;
  *(v0 + 592) = v1;
  *(v0 + 600) = v2;
  *(v0 + 608) = v3;
  *(v0 + 616) = v4;
  *(v0 + 617) = v5;
  *(v0 + 624) = v6;
  sub_230DC7630(v0 + 16, v0 + 488);

  sub_230E68D70();

  v7 = sub_230E68D60();
  v8 = sub_230E693E0();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v28 = v4;
    v10 = swift_slowAlloc();
    v29[0] = v10;
    *v9 = 136315650;
    *(v9 + 4) = sub_230D7E620(0x666B726F576E7572, 0xEB00000000776F6CLL, v29);
    *(v9 + 12) = 2080;
    *(v9 + 14) = sub_230D7E620(v2, v3, v29);
    *(v9 + 22) = 2080;
    v11 = RequestType.rawValue.getter();
    MEMORY[0x23191DA00](v11);

    v12 = sub_230D7E620(0x6C616E7265746E69, 0xE90000000000002ELL, v29);

    *(v9 + 24) = v12;
    _os_log_impl(&dword_230D02000, v7, v8, "[ServicesIntelligenceProvider][PerformanceTracking] Starting %s (correlationID: %s), originator: %s", v9, 0x20u);
    swift_arrayDestroy();
    v13 = v10;
    v4 = v28;
    MEMORY[0x23191EAE0](v13, -1, -1);
    MEMORY[0x23191EAE0](v9, -1, -1);
  }

  if (v4)
  {
    v14 = RequestType.rawValue.getter();
    v16 = v15;

    sub_230D33FDC(v14, v16, v6);

    sub_230E68950();
    *(v0 + 744) = CFAbsoluteTimeGetCurrent();
    *(v0 + 116) = 0u;
    *(v0 + 132) = 0u;
    *(v0 + 148) = 0u;
    *(v0 + 164) = 0u;
    *(v0 + 180) = 0u;
    *(v0 + 196) = 0u;
    *(v0 + 212) = 0u;
    *(v0 + 228) = 0u;
    *(v0 + 244) = 0u;
    *(v0 + 260) = 0u;
    *(v0 + 276) = 0u;
    *(v0 + 292) = 0u;
    *(v0 + 308) = 0u;
    *(v0 + 324) = 0u;
    *(v0 + 340) = 0u;
    *(v0 + 356) = 0u;
    *(v0 + 372) = 0u;
    *(v0 + 388) = 0u;
    *(v0 + 404) = 0u;
    *(v0 + 420) = 0u;
    *(v0 + 436) = 0u;
    *(v0 + 452) = 0u;
    *(v0 + 468) = 0u;
    *(v0 + 484) = 0;
    *(v0 + 588) = 93;
    v17 = task_info(*MEMORY[0x277D85F48], 0x16u, (v0 + 116), (v0 + 588));
    *(v0 + 792) = v17;
    v18 = 0.0;
    if (!v17)
    {
      v19 = *(v0 + 164);
      v20 = *(v0 + 236);
      v21 = __CFADD__(v19, v20);
      v22 = v19 + v20;
      if (v21)
      {
        __break(1u);
      }

      v18 = vcvtd_n_f64_u64(v22, 0x14uLL);
    }

    *(v0 + 768) = v18;
    *(v0 + 672) = 0;
    v23 = swift_task_alloc();
    *(v0 + 776) = v23;
    *v23 = v0;
    v24 = sub_230DDC210;
  }

  else
  {
    v23 = swift_task_alloc();
    *(v0 + 752) = v23;
    *v23 = v0;
    v24 = sub_230DDC0B8;
  }

  v23[1] = v24;
  v25 = *(v0 + 688);
  v26 = *(v0 + 680);

  return sub_230DDDB14(v26, v0 + 16, v25, v0 + 592);
}

uint64_t sub_230DDC0B8()
{
  v2 = *v1;
  *(*v1 + 760) = v0;

  v3 = *(v2 + 688);
  if (v0)
  {
    v4 = sub_230DDC6F8;
  }

  else
  {
    v4 = sub_230DDC600;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_230DDC210()
{
  v2 = *v1;
  *(*v1 + 784) = v0;

  v3 = *(v2 + 688);
  if (v0)
  {
    v4 = sub_230DDC49C;
  }

  else
  {
    v4 = sub_230DDC368;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_230DDC368()
{
  v1 = *(v0 + 712);
  v2 = *(v0 + 704);
  v3 = *(v0 + 696);
  sub_230D39FD4(33, *(v0 + 768), *(v0 + 792) != 0, v0 + 592, (v0 + 672), *(v0 + 744));
  (*(v2 + 8))(v1, v3);
  sub_230D8151C(v0 + 16);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_230DDC49C(uint64_t a1)
{
  v2 = *(v1 + 784);
  v3 = *(v1 + 768);
  v4 = *(v1 + 744);
  v5 = *(v1 + 712);
  v6 = *(v1 + 704);
  v7 = *(v1 + 696);
  v8 = *(v1 + 792) != 0;
  *(v1 + 672) = v2;
  swift_willThrow();
  v9 = v2;
  sub_230D39FD4(33, v3, v8, v1 + 592, (v1 + 672), v4);
  MEMORY[0x23191E910](v2);
  (*(v6 + 8))(v5, v7);
  sub_230D8151C(v1 + 16);

  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();

  v10 = *(v1 + 8);

  return v10();
}

uint64_t sub_230DDC600()
{
  (*(v0[88] + 8))(v0[89], v0[87]);
  sub_230D8151C((v0 + 2));

  v1 = v0[1];

  return v1();
}

uint64_t sub_230DDC6F8()
{
  (*(v0[88] + 8))(v0[89], v0[87]);
  sub_230D8151C((v0 + 2));

  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();

  v1 = v0[1];

  return v1();
}

uint64_t ServicesIntelligenceProvider.run(_:requestContext:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 688) = v3;
  *(v4 + 680) = a1;
  v7 = sub_230E68D80();
  *(v4 + 696) = v7;
  *(v4 + 704) = *(v7 - 8);
  *(v4 + 712) = swift_task_alloc();
  v8 = *(a2 + 80);
  *(v4 + 80) = *(a2 + 64);
  *(v4 + 96) = v8;
  *(v4 + 112) = *(a2 + 96);
  v9 = *(a2 + 16);
  *(v4 + 16) = *a2;
  *(v4 + 32) = v9;
  v10 = *(a2 + 48);
  *(v4 + 48) = *(a2 + 32);
  *(v4 + 64) = v10;
  v11 = *(a3 + 16);
  *(v4 + 720) = *a3;
  *(v4 + 736) = v11;
  *(v4 + 752) = *(a3 + 32);

  return MEMORY[0x2822009F8](sub_230DDC910, v3, 0);
}

uint64_t sub_230DDC910()
{
  v28 = v0;
  v27[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 736);
  if (v1)
  {
    v2 = *(v0 + 752);
    v3 = *(v0 + 744);
    v4 = *(v0 + 720);
    v5 = *(v0 + 728);
    *(v0 + 776) = v2;
    *(v0 + 768) = v1;
    *(v0 + 592) = v4;
    *(v0 + 600) = v5;
    *(v0 + 608) = v1;
    *(v0 + 616) = v3 & 1;
    *(v0 + 617) = BYTE1(v3);
    *(v0 + 624) = v2;
    sub_230DC7630(v0 + 16, v0 + 488);

    sub_230D0585C(v4, v5, v1, v3, v2);
    sub_230E68D70();

    v6 = sub_230E68D60();
    v7 = sub_230E693E0();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v27[0] = v26;
      *v8 = 136315650;
      *(v8 + 4) = sub_230D7E620(0x666B726F576E7572, 0xEB00000000776F6CLL, v27);
      *(v8 + 12) = 2080;
      *(v8 + 14) = sub_230D7E620(v5, v1, v27);
      *(v8 + 22) = 2080;
      v9 = RequestType.rawValue.getter();
      MEMORY[0x23191DA00](v9);

      v10 = sub_230D7E620(0x6C616E7265746E69, 0xE90000000000002ELL, v27);

      *(v8 + 24) = v10;
      _os_log_impl(&dword_230D02000, v6, v7, "[ServicesIntelligenceProvider][PerformanceTracking] Starting %s (correlationID: %s), originator: %s", v8, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x23191EAE0](v26, -1, -1);
      MEMORY[0x23191EAE0](v8, -1, -1);
    }

    if (v3)
    {
      v11 = RequestType.rawValue.getter();
      v13 = v12;

      sub_230D33FDC(v11, v13, v2);

      sub_230E68950();
      *(v0 + 784) = CFAbsoluteTimeGetCurrent();
      *(v0 + 116) = 0u;
      *(v0 + 132) = 0u;
      *(v0 + 148) = 0u;
      *(v0 + 164) = 0u;
      *(v0 + 180) = 0u;
      *(v0 + 196) = 0u;
      *(v0 + 212) = 0u;
      *(v0 + 228) = 0u;
      *(v0 + 244) = 0u;
      *(v0 + 260) = 0u;
      *(v0 + 276) = 0u;
      *(v0 + 292) = 0u;
      *(v0 + 308) = 0u;
      *(v0 + 324) = 0u;
      *(v0 + 340) = 0u;
      *(v0 + 356) = 0u;
      *(v0 + 372) = 0u;
      *(v0 + 388) = 0u;
      *(v0 + 404) = 0u;
      *(v0 + 420) = 0u;
      *(v0 + 436) = 0u;
      *(v0 + 452) = 0u;
      *(v0 + 468) = 0u;
      *(v0 + 484) = 0;
      *(v0 + 588) = 93;
      v14 = task_info(*MEMORY[0x277D85F48], 0x16u, (v0 + 116), (v0 + 588));
      *(v0 + 832) = v14;
      v15 = 0.0;
      if (!v14)
      {
        v16 = *(v0 + 164);
        v17 = *(v0 + 236);
        v18 = __CFADD__(v16, v17);
        v19 = v16 + v17;
        if (v18)
        {
          __break(1u);
        }

        v15 = vcvtd_n_f64_u64(v19, 0x14uLL);
      }

      *(v0 + 808) = v15;
      *(v0 + 672) = 0;
      v20 = swift_task_alloc();
      *(v0 + 816) = v20;
      *v20 = v0;
      v21 = sub_230DDD544;
    }

    else
    {
      v20 = swift_task_alloc();
      *(v0 + 792) = v20;
      *v20 = v0;
      v21 = sub_230DDD3EC;
    }

    v20[1] = v21;
    v24 = *(v0 + 688);
    v25 = *(v0 + 680);

    return sub_230DDDB14(v25, v0 + 16, v24, v0 + 592);
  }

  else
  {
    *(v0 + 113) = 33;
    v22 = swift_task_alloc();
    *(v0 + 760) = v22;
    *v22 = v0;
    v22[1] = sub_230DDCE24;

    return static RequestContext.from(_:correlationID:)(v0 + 632, (v0 + 113), 0, 0);
  }
}

uint64_t sub_230DDCE24()
{
  v1 = *(*v0 + 688);

  return MEMORY[0x2822009F8](sub_230DDCF60, v1, 0);
}

uint64_t sub_230DDCF60()
{
  v35 = v0;
  v34[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 632);
  v2 = *(v0 + 640);
  v3 = *(v0 + 648);
  v4 = *(v0 + 656);
  v5 = *(v0 + 657);
  v6 = *(v0 + 664);
  *(v0 + 776) = v6;
  *(v0 + 768) = v3;
  v7 = *(v0 + 752);
  v8 = *(v0 + 744);
  v9 = *(v0 + 736);
  v10 = *(v0 + 728);
  v11 = *(v0 + 720);
  v33 = v4;
  *(v0 + 592) = v1;
  v32 = v2;
  *(v0 + 600) = v2;
  *(v0 + 608) = v3;
  *(v0 + 616) = v4;
  *(v0 + 617) = v5;
  *(v0 + 624) = v6;
  sub_230DC7630(v0 + 16, v0 + 488);

  sub_230D0585C(v11, v10, v9, v8, v7);
  sub_230E68D70();

  v12 = sub_230E68D60();
  v13 = sub_230E693E0();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v34[0] = v15;
    *v14 = 136315650;
    *(v14 + 4) = sub_230D7E620(0x666B726F576E7572, 0xEB00000000776F6CLL, v34);
    *(v14 + 12) = 2080;
    *(v14 + 14) = sub_230D7E620(v32, v3, v34);
    *(v14 + 22) = 2080;
    v16 = RequestType.rawValue.getter();
    MEMORY[0x23191DA00](v16);

    v17 = sub_230D7E620(0x6C616E7265746E69, 0xE90000000000002ELL, v34);

    *(v14 + 24) = v17;
    _os_log_impl(&dword_230D02000, v12, v13, "[ServicesIntelligenceProvider][PerformanceTracking] Starting %s (correlationID: %s), originator: %s", v14, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23191EAE0](v15, -1, -1);
    MEMORY[0x23191EAE0](v14, -1, -1);

    if (!v33)
    {
LABEL_3:
      v18 = swift_task_alloc();
      *(v0 + 792) = v18;
      *v18 = v0;
      v19 = sub_230DDD3EC;
      goto LABEL_9;
    }
  }

  else
  {

    if (!v33)
    {
      goto LABEL_3;
    }
  }

  v20 = RequestType.rawValue.getter();
  v22 = v21;

  sub_230D33FDC(v20, v22, v6);

  sub_230E68950();
  *(v0 + 784) = CFAbsoluteTimeGetCurrent();
  *(v0 + 116) = 0u;
  *(v0 + 132) = 0u;
  *(v0 + 148) = 0u;
  *(v0 + 164) = 0u;
  *(v0 + 180) = 0u;
  *(v0 + 196) = 0u;
  *(v0 + 212) = 0u;
  *(v0 + 228) = 0u;
  *(v0 + 244) = 0u;
  *(v0 + 260) = 0u;
  *(v0 + 276) = 0u;
  *(v0 + 292) = 0u;
  *(v0 + 308) = 0u;
  *(v0 + 324) = 0u;
  *(v0 + 340) = 0u;
  *(v0 + 356) = 0u;
  *(v0 + 372) = 0u;
  *(v0 + 388) = 0u;
  *(v0 + 404) = 0u;
  *(v0 + 420) = 0u;
  *(v0 + 436) = 0u;
  *(v0 + 452) = 0u;
  *(v0 + 468) = 0u;
  *(v0 + 484) = 0;
  *(v0 + 588) = 93;
  v23 = task_info(*MEMORY[0x277D85F48], 0x16u, (v0 + 116), (v0 + 588));
  *(v0 + 832) = v23;
  v24 = 0.0;
  if (!v23)
  {
    v25 = *(v0 + 164);
    v26 = *(v0 + 236);
    v27 = __CFADD__(v25, v26);
    v28 = v25 + v26;
    if (v27)
    {
      __break(1u);
    }

    v24 = vcvtd_n_f64_u64(v28, 0x14uLL);
  }

  *(v0 + 808) = v24;
  *(v0 + 672) = 0;
  v18 = swift_task_alloc();
  *(v0 + 816) = v18;
  *v18 = v0;
  v19 = sub_230DDD544;
LABEL_9:
  v18[1] = v19;
  v29 = *(v0 + 688);
  v30 = *(v0 + 680);

  return sub_230DDDB14(v30, v0 + 16, v29, v0 + 592);
}

uint64_t sub_230DDD3EC()
{
  v2 = *v1;
  *(*v1 + 800) = v0;

  v3 = *(v2 + 688);
  if (v0)
  {
    v4 = sub_230DDDA2C;
  }

  else
  {
    v4 = sub_230DDD934;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_230DDD544()
{
  v2 = *v1;
  *(*v1 + 824) = v0;

  v3 = *(v2 + 688);
  if (v0)
  {
    v4 = sub_230DDD7D0;
  }

  else
  {
    v4 = sub_230DDD69C;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_230DDD69C()
{
  v1 = *(v0 + 712);
  v2 = *(v0 + 704);
  v3 = *(v0 + 696);
  sub_230D39FD4(33, *(v0 + 808), *(v0 + 832) != 0, v0 + 592, (v0 + 672), *(v0 + 784));
  (*(v2 + 8))(v1, v3);
  sub_230D8151C(v0 + 16);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_230DDD7D0(uint64_t a1)
{
  v2 = *(v1 + 824);
  v3 = *(v1 + 808);
  v4 = *(v1 + 784);
  v5 = *(v1 + 712);
  v6 = *(v1 + 704);
  v7 = *(v1 + 696);
  v8 = *(v1 + 832) != 0;
  *(v1 + 672) = v2;
  swift_willThrow();
  v9 = v2;
  sub_230D39FD4(33, v3, v8, v1 + 592, (v1 + 672), v4);
  MEMORY[0x23191E910](v2);
  (*(v6 + 8))(v5, v7);
  sub_230D8151C(v1 + 16);

  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();

  v10 = *(v1 + 8);

  return v10();
}

uint64_t sub_230DDD934()
{
  (*(v0[88] + 8))(v0[89], v0[87]);
  sub_230D8151C((v0 + 2));

  v1 = v0[1];

  return v1();
}

uint64_t sub_230DDDA2C()
{
  (*(v0[88] + 8))(v0[89], v0[87]);
  sub_230D8151C((v0 + 2));

  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();

  v1 = v0[1];

  return v1();
}

uint64_t sub_230DDDB14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 3064) = a4;
  *(v4 + 3056) = a3;
  *(v4 + 3048) = a2;
  *(v4 + 3040) = a1;
  *(v4 + 138) = *a4;
  *(v4 + 3072) = *(a4 + 8);
  *(v4 + 139) = *(a4 + 24);
  *(v4 + 633) = *(a4 + 25);
  *(v4 + 3088) = *(a4 + 32);
  v6 = sub_230E68D80();
  *(v4 + 3096) = v6;
  *(v4 + 3104) = *(v6 - 8);
  *(v4 + 3112) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_230DDDC38, a3, 0);
}

uint64_t sub_230DDDC38()
{
  v1 = *(v0 + 3048);
  if (v1[6])
  {
    v2 = *(v0 + 3088);
    v3 = *(v0 + 633);
    v4 = *(v0 + 139);
    v5 = *(v0 + 3080);
    v6 = *(v0 + 3072);
    v7 = *(v0 + 138);
    v8 = *(v0 + 3064);
    v9 = *v1;
    v10 = v1[1];
    *(v0 + 2288) = v1[2];
    *(v0 + 2272) = v10;
    *(v0 + 2256) = v9;
    v11 = v1[3];
    v12 = v1[4];
    v13 = v1[5];
    *(v0 + 2352) = *(v1 + 96);
    *(v0 + 2336) = v13;
    *(v0 + 2320) = v12;
    *(v0 + 2304) = v11;
    *(v0 + 2952) = v7;
    *(v0 + 2960) = v6;
    *(v0 + 2968) = v5;
    *(v0 + 2976) = v4 & 1 | (v3 << 8);
    *(v0 + 2984) = v2;
    sub_230D1CDE0(v8, v0 + 2992);
    v14 = swift_task_alloc();
    *(v0 + 3120) = v14;
    *v14 = v0;
    v14[1] = sub_230DDDE88;

    return sub_230DE0184(v0 + 512, v0 + 2256, (v0 + 2952));
  }

  else
  {
    v16 = *(v0 + 3088);
    v17 = *(v0 + 3080);
    v18 = *(v0 + 139) & 1 | (*(v0 + 633) << 8);
    *(v0 + 3152) = *(v0 + 138);
    *(v0 + 3144) = v17;
    *(v0 + 3136) = v18;
    *(v0 + 3128) = v16;
    v19 = *(v0 + 3064);
    sub_230D1CDE0(v19, v0 + 2912);
    sub_230D1CDE0(v19, v0 + 2872);

    v20 = swift_task_alloc();
    *(v0 + 3160) = v20;
    *v20 = v0;
    v20[1] = sub_230DDE260;
    v21 = *(v0 + 3064);
    v22 = *(v0 + 3056);

    return sub_230D6F7D0(39, v21, v22, v22);
  }
}

uint64_t sub_230DDDE88()
{
  v1 = *v0;
  v2 = (*v0)[382];

  sub_230D666B4(v1[369], v1[370], v1[371], v1[372], v1[373]);

  return MEMORY[0x2822009F8](sub_230DDE038, v2, 0);
}

uint64_t sub_230DDE038()
{
  v1 = *(v0 + 592);
  *(v0 + 704) = *(v0 + 576);
  *(v0 + 720) = v1;
  *(v0 + 736) = *(v0 + 608);
  *(v0 + 745) = *(v0 + 617);
  v2 = *(v0 + 528);
  *(v0 + 640) = *(v0 + 512);
  *(v0 + 656) = v2;
  v3 = *(v0 + 560);
  *(v0 + 672) = *(v0 + 544);
  *(v0 + 688) = v3;
  if (sub_230D666F8(v0 + 640) == 1)
  {
    v4 = *(v0 + 3088);
    v5 = *(v0 + 3080);
    v6 = *(v0 + 139) & 1 | (*(v0 + 633) << 8);
    *(v0 + 3152) = *(v0 + 138);
    *(v0 + 3144) = v5;
    *(v0 + 3136) = v6;
    *(v0 + 3128) = v4;
    v7 = *(v0 + 3064);
    sub_230D1CDE0(v7, v0 + 2912);
    sub_230D1CDE0(v7, v0 + 2872);

    v8 = swift_task_alloc();
    *(v0 + 3160) = v8;
    *v8 = v0;
    v8[1] = sub_230DDE260;
    v9 = *(v0 + 3064);
    v10 = *(v0 + 3056);

    return sub_230D6F7D0(39, v9, v10, v10);
  }

  else
  {
    v12 = *(v0 + 3040);
    sub_230E68950();
    v13 = *(v0 + 640);
    v14 = *(v0 + 656);
    v15 = *(v0 + 688);
    v12[2] = *(v0 + 672);
    v12[3] = v15;
    *v12 = v13;
    v12[1] = v14;
    v16 = *(v0 + 704);
    v17 = *(v0 + 720);
    v18 = *(v0 + 736);
    *(v12 + 105) = *(v0 + 745);
    v12[5] = v17;
    v12[6] = v18;
    v12[4] = v16;

    v19 = *(v0 + 8);

    return v19();
  }
}

uint64_t sub_230DDE260(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 3168) = a1;
  *(v4 + 3176) = v1;

  v5 = *(v3 + 3064);
  v6 = *(v3 + 3056);
  sub_230D1CE3C(v5);
  if (v1)
  {
    v7 = sub_230DDF934;
  }

  else
  {
    v7 = sub_230DDE3E0;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_230DDE3E0()
{
  sub_230D1CE3C(*(v0 + 3064));
  *(v0 + 137) = 48;
  v1 = swift_task_alloc();
  *(v0 + 3184) = v1;
  *v1 = v0;
  v1[1] = sub_230DDE4C4;

  return static RequestContext.from(_:correlationID:)(v0 + 2832, (v0 + 137), 0, 0);
}

uint64_t sub_230DDE4C4()
{

  return MEMORY[0x2822009F8](sub_230DDE5EC, 0, 0);
}

uint64_t sub_230DDE5EC()
{
  v1 = *(v0 + 2832);
  *(v0 + 634) = v1;
  v2 = *(v0 + 2840);
  *(v0 + 3192) = v2;
  v3 = *(v0 + 2848);
  *(v0 + 3200) = v3;
  v4 = *(v0 + 2856);
  *(v0 + 635) = v4;
  v5 = *(v0 + 2857);
  *(v0 + 761) = v5;
  v6 = *(v0 + 2864);
  *(v0 + 3208) = v6;
  *(v0 + 2672) = v1;
  *(v0 + 2680) = v2;
  *(v0 + 2688) = v3;
  *(v0 + 2696) = v4;
  *(v0 + 2697) = v5;
  *(v0 + 2704) = v6;
  if (qword_27DB5A430 != -1)
  {
    swift_once();
  }

  v7 = *(v0 + 3048);
  v8 = qword_27DB5A438;
  *(v0 + 3216) = qword_27DB5A438;
  sub_230DC7630(v7, v0 + 2360);

  return MEMORY[0x2822009F8](sub_230DDE738, v8, 0);
}

uint64_t sub_230DDE738()
{
  v26 = v0;
  v25[1] = *MEMORY[0x277D85DE8];
  v1 = (v0 + 260);
  sub_230E68D70();

  v2 = sub_230E68D60();
  v3 = sub_230E693E0();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 3200);
    v5 = *(v0 + 3192);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v25[0] = v7;
    *v6 = 136315650;
    *(v6 + 4) = sub_230D7E620(0x726F577972657571, 0xED0000776F6C666BLL, v25);
    *(v6 + 12) = 2080;
    *(v6 + 14) = sub_230D7E620(v5, v4, v25);
    *(v6 + 22) = 2080;
    v8 = RequestType.rawValue.getter();
    MEMORY[0x23191DA00](v8);

    v9 = sub_230D7E620(0x6C616E7265746E69, 0xE90000000000002ELL, v25);

    *(v6 + 24) = v9;
    _os_log_impl(&dword_230D02000, v2, v3, "[ServicesIntelligenceProvider][PerformanceTracking] Starting %s (correlationID: %s), originator: %s", v6, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23191EAE0](v7, -1, -1);
    MEMORY[0x23191EAE0](v6, -1, -1);
  }

  if (*(v0 + 635) == 1 && ((v10 = *(v0 + 3208), v11 = *(v0 + 761), v12 = RequestType.rawValue.getter(), v14 = v13, , LOBYTE(v12) = sub_230D33FDC(v12, v14, v10), , , (v12 & 1) != 0) || v11 >= 2))
  {
    sub_230E68950();
    *(v0 + 3224) = CFAbsoluteTimeGetCurrent();
    *(v0 + 140) = 0u;
    *(v0 + 156) = 0u;
    *(v0 + 172) = 0u;
    *(v0 + 188) = 0u;
    *(v0 + 204) = 0u;
    *(v0 + 220) = 0u;
    *(v0 + 236) = 0u;
    *(v0 + 252) = 0u;
    *(v0 + 268) = 0u;
    *(v0 + 284) = 0u;
    *(v0 + 300) = 0u;
    *(v0 + 316) = 0u;
    *(v0 + 332) = 0u;
    *(v0 + 348) = 0u;
    *(v0 + 364) = 0u;
    *(v0 + 380) = 0u;
    *(v0 + 396) = 0u;
    *(v0 + 412) = 0u;
    *(v0 + 428) = 0u;
    *(v0 + 444) = 0u;
    *(v0 + 460) = 0u;
    *(v0 + 476) = 0u;
    *(v0 + 492) = 0u;
    *(v0 + 508) = 0;
    *(v0 + 636) = 93;
    v17 = task_info(*MEMORY[0x277D85F48], 0x16u, (v0 + 140), (v0 + 636));
    *(v0 + 764) = v17;
    v18 = 0.0;
    if (!v17)
    {
      v19 = *(v0 + 188);
      v20 = __CFADD__(v19, *v1);
      v21 = v19 + *v1;
      if (v20)
      {
        __break(1u);
      }

      v18 = vcvtd_n_f64_u64(v21, 0x14uLL);
    }

    *(v0 + 3248) = v18;
    *(v0 + 3032) = 0;
    v15 = swift_task_alloc();
    *(v0 + 3256) = v15;
    *v15 = v0;
    v16 = sub_230DDECAC;
  }

  else
  {
    v15 = swift_task_alloc();
    *(v0 + 3232) = v15;
    *v15 = v0;
    v16 = sub_230DDEB54;
  }

  v15[1] = v16;
  v22 = *(v0 + 3168);
  v23 = *(v0 + 3048);

  return sub_230E56CCC(v0 + 1280, v23, v22, v0 + 2672);
}

uint64_t sub_230DDEB54()
{
  v2 = *v1;
  *(*v1 + 3240) = v0;

  v3 = *(v2 + 3216);
  if (v0)
  {
    v4 = sub_230DDF83C;
  }

  else
  {
    v4 = sub_230DDF73C;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_230DDECAC()
{
  v2 = *v1;
  *(*v1 + 3264) = v0;

  v3 = *(v2 + 3216);
  if (v0)
  {
    v4 = sub_230DDEF38;
  }

  else
  {
    v4 = sub_230DDEE04;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_230DDEE04()
{
  v1 = *(v0 + 3112);
  v2 = *(v0 + 3104);
  v3 = *(v0 + 3096);
  v4 = *(v0 + 3048);
  sub_230D3A494(48, *(v0 + 3248), *(v0 + 764) != 0, v0 + 2672, (v0 + 3032), *(v0 + 3224));
  (*(v2 + 8))(v1, v3);
  sub_230D8151C(v4);

  v5 = *(v0 + 3056);

  return MEMORY[0x2822009F8](sub_230DDF0A4, v5, 0);
}

uint64_t sub_230DDEF38(uint64_t a1)
{
  v2 = *(v1 + 3264);
  v3 = *(v1 + 3248);
  v4 = *(v1 + 3224);
  v5 = *(v1 + 3112);
  v6 = *(v1 + 3104);
  v7 = *(v1 + 3096);
  v8 = *(v1 + 3048);
  v9 = *(v1 + 764) != 0;
  *(v1 + 3032) = v2;
  swift_willThrow();
  v10 = v2;
  sub_230D3A494(48, v3, v9, v1 + 2672, (v1 + 3032), v4);
  MEMORY[0x23191E910](v2);
  (*(v6 + 8))(v5, v7);
  sub_230D8151C(v8);

  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();
  *(v1 + 3272) = *(v1 + 3264);
  v11 = *(v1 + 3056);

  return MEMORY[0x2822009F8](sub_230DDF6A4, v11, 0);
}

uint64_t sub_230DDF0A4()
{
  v1 = *(v0 + 1328);
  v2 = (v0 + 1280);
  *(v0 + 1440) = v1;
  v3 = *(v0 + 1344);
  *(v0 + 1456) = v3;
  v4 = *(v0 + 1360);
  *(v0 + 1472) = v4;
  *(v0 + 1481) = *(v0 + 1369);
  v5 = *(v0 + 1280);
  *(v0 + 1392) = v5;
  v6 = *(v0 + 1296);
  *(v0 + 1408) = v6;
  v7 = *(v0 + 1312);
  *(v0 + 1424) = v7;
  *(v0 + 1856) = v6;
  *(v0 + 1840) = v5;
  *(v0 + 1872) = v7;
  *(v0 + 1888) = v1;
  *(v0 + 1936) = *(v0 + 1376);
  *(v0 + 1920) = v4;
  *(v0 + 1904) = v3;
  v8 = *(v0 + 1496);
  if (v8 == 255)
  {
    v30 = *(v0 + 3048);
    sub_230E69540();

    MEMORY[0x23191DA00](*v30, v30[1]);
    sub_230D66764();
    swift_allocError();
    *v31 = 0xD000000000000016;
    *(v31 + 8) = 0x8000000230E83CF0;
    *(v31 + 16) = 3;
    swift_willThrow();

    v32 = *(v0 + 8);
  }

  else
  {
    v9 = *(v0 + 1360);
    *(v0 + 2008) = *(v0 + 1344);
    *(v0 + 2024) = v9;
    *(v0 + 2040) = *(v0 + 1376);
    v10 = *(v0 + 1296);
    *(v0 + 1944) = *v2;
    *(v0 + 1960) = v10;
    v11 = *(v0 + 1328);
    *(v0 + 1976) = *(v0 + 1312);
    *(v0 + 1992) = v11;
    if (v8)
    {
      v12 = *(v0 + 1312);
      *(v0 + 1552) = *(v0 + 1328);
      v13 = *(v0 + 1360);
      *(v0 + 1568) = *(v0 + 1344);
      *(v0 + 1584) = v13;
      *(v0 + 1593) = *(v0 + 1369);
      v14 = *(v0 + 1296);
      *(v0 + 1504) = *v2;
      *(v0 + 1520) = v14;
      v15 = *(v0 + 3064);
      v16 = *(v0 + 3048);
      *(v0 + 1536) = v12;
      sub_230D2D898(v0 + 1504, v0 + 1616);
      sub_230E68950();
      v17 = *v16;
      v18 = v16[1];
      *(v0 + 2496) = v16[2];
      *(v0 + 2480) = v18;
      *(v0 + 2464) = v17;
      v19 = v16[3];
      v20 = v16[4];
      v21 = v16[5];
      *(v0 + 2560) = *(v16 + 96);
      *(v0 + 2544) = v21;
      *(v0 + 2528) = v20;
      *(v0 + 2512) = v19;
      v22 = *(v0 + 2024);
      *(v0 + 2216) = *(v0 + 2008);
      *(v0 + 2232) = v22;
      *(v0 + 2248) = *(v0 + 2040);
      v23 = *(v0 + 1960);
      *(v0 + 2152) = *(v0 + 1944);
      *(v0 + 2168) = v23;
      v24 = *(v0 + 1992);
      *(v0 + 2184) = *(v0 + 1976);
      *(v0 + 2200) = v24;
      v25 = *v15;
      v26 = v15[1];
      *(v0 + 2824) = *(v15 + 4);
      *(v0 + 2792) = v25;
      *(v0 + 2808) = v26;
      v27 = swift_task_alloc();
      *(v0 + 3280) = v27;
      *v27 = v0;
      v27[1] = sub_230DDF9CC;

      return sub_230DE2498(v0 + 768, v0 + 2464, v28, (v0 + 2792));
    }

    v33 = (v0 + 896);
    v34 = MEMORY[0x277D84F90];
    sub_230E68950();
    sub_230E68950();
    sub_230E68950();
    sub_230D0FA64(v0 + 1392, v0 + 1728, &qword_27DB5CD10, &qword_230E7AE20);
    v35 = sub_230D0DE98(v34);
    v36 = *(v0 + 1920);
    *(v0 + 2112) = *(v0 + 1904);
    *(v0 + 2128) = v36;
    *(v0 + 2144) = *(v0 + 1936);
    v37 = *(v0 + 1856);
    *(v0 + 2048) = *(v0 + 1840);
    *(v0 + 2064) = v37;
    v38 = *(v0 + 1888);
    *(v0 + 2080) = *(v0 + 1872);
    *(v0 + 2096) = v38;
    sub_230E68950();
    sub_230D2D9F8(v0 + 1392, &qword_27DB5CD10, &qword_230E7AE20);
    v39 = *(v0 + 3048);
    v40 = *(v0 + 2064);
    *(v0 + 896) = *(v0 + 2048);
    *(v0 + 912) = v40;
    *(v0 + 992) = *(v0 + 2144);
    v41 = *(v0 + 2128);
    *(v0 + 960) = *(v0 + 2112);
    *(v0 + 976) = v41;
    v42 = *(v0 + 2096);
    *(v0 + 928) = *(v0 + 2080);
    *(v0 + 944) = v42;
    *(v0 + 1000) = v8;
    *(v0 + 1008) = v35;
    *(v0 + 1016) = 1;
    if (*(v39 + 3))
    {
      v43 = *(v0 + 3152);
      v44 = *(v0 + 3144);
      v45 = *(v0 + 3136);
      v46 = *(v0 + 3128);
      v47 = *(v0 + 3072);
      v48 = *(v0 + 3064);
      v49 = *(v0 + 912);
      *(v0 + 1152) = *v33;
      *(v0 + 1168) = v49;
      v50 = *(v0 + 944);
      *(v0 + 1184) = *(v0 + 928);
      *(v0 + 1200) = v50;
      *(v0 + 1257) = *(v0 + 1001);
      v51 = *(v0 + 976);
      *(v0 + 1248) = *(v0 + 992);
      v52 = *(v0 + 960);
      *(v0 + 1232) = v51;
      *(v0 + 1216) = v52;
      v53 = *v39;
      v54 = v39[2];
      *(v0 + 2584) = v39[1];
      *(v0 + 2600) = v54;
      *(v0 + 2568) = v53;
      v55 = v39[3];
      v56 = v39[4];
      v57 = v39[5];
      *(v0 + 2664) = *(v39 + 96);
      *(v0 + 2632) = v56;
      *(v0 + 2648) = v57;
      *(v0 + 2616) = v55;
      *(v0 + 2752) = v43;
      *(v0 + 2760) = v47;
      *(v0 + 2768) = v44;
      *(v0 + 2776) = v45;
      *(v0 + 2784) = v46;
      sub_230D1CDE0(v48, v0 + 2712);
      sub_230DC9814(v0 + 896, v0 + 16);
      v58 = swift_task_alloc();
      *(v0 + 3296) = v58;
      *v58 = v0;
      v58[1] = sub_230DDFDE0;

      return sub_230DE3418(v0 + 1152, (v0 + 2568), v0 + 2752);
    }

    v59 = *(v0 + 3040);
    v60 = *v33;
    v61 = *(v0 + 912);
    v62 = *(v0 + 944);
    v59[2] = *(v0 + 928);
    v59[3] = v62;
    *v59 = v60;
    v59[1] = v61;
    v63 = *(v0 + 960);
    v64 = *(v0 + 976);
    v65 = *(v0 + 992);
    *(v59 + 105) = *(v0 + 1001);
    v59[5] = v64;
    v59[6] = v65;
    v59[4] = v63;

    v32 = *(v0 + 8);
  }

  return v32();
}

uint64_t sub_230DDF6A4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_230DDF73C()
{
  v1 = v0[381];
  (*(v0[388] + 8))(v0[389], v0[387]);
  sub_230D8151C(v1);

  v2 = v0[382];

  return MEMORY[0x2822009F8](sub_230DDF0A4, v2, 0);
}

uint64_t sub_230DDF83C()
{
  v1 = v0[381];
  (*(v0[388] + 8))(v0[389], v0[387]);
  sub_230D8151C(v1);

  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();
  v0[409] = v0[405];
  v2 = v0[382];

  return MEMORY[0x2822009F8](sub_230DDF6A4, v2, 0);
}

uint64_t sub_230DDF934()
{
  sub_230D1CE3C(*(v0 + 3064));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_230DDF9CC()
{
  v2 = *v1;
  *(*v1 + 3288) = v0;

  if (v0)
  {
    v3 = *(v2 + 3056);
    v4 = sub_230DE00B4;
  }

  else
  {
    v5 = *(v2 + 3056);
    sub_230D2D9F8(v2 + 1392, &qword_27DB5CD10, &qword_230E7AE20);
    v4 = sub_230DDFB50;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_230DDFB50()
{
  v1 = (v0 + 896);
  sub_230D2D9F8(v0 + 1392, &qword_27DB5CD10, &qword_230E7AE20);
  v2 = *(v0 + 848);
  *(v0 + 2112) = *(v0 + 832);
  v3 = *(v0 + 768);
  v4 = *(v0 + 784);
  *(v0 + 2048) = v3;
  *(v0 + 2128) = v2;
  *(v0 + 2064) = v4;
  v6 = *(v0 + 800);
  v5 = *(v0 + 816);
  *(v0 + 2096) = v5;
  *(v0 + 2144) = *(v0 + 864);
  *(v0 + 2080) = v6;
  v7 = *(v0 + 872);
  v8 = *(v0 + 880);
  v9 = *(v0 + 888);
  v10 = *(v0 + 3048);
  v11 = *(v0 + 2064);
  *(v0 + 896) = v3;
  *(v0 + 912) = v11;
  *(v0 + 928) = *(v0 + 2080);
  *(v0 + 944) = v5;
  *(v0 + 992) = *(v0 + 2144);
  v12 = *(v0 + 2128);
  *(v0 + 960) = *(v0 + 2112);
  *(v0 + 976) = v12;
  *(v0 + 1000) = v7;
  *(v0 + 1008) = v8;
  *(v0 + 1016) = v9;
  if (*(v10 + 3))
  {
    v13 = *(v0 + 3152);
    v14 = *(v0 + 3144);
    v15 = *(v0 + 3136);
    v16 = *(v0 + 3128);
    v17 = *(v0 + 3072);
    v18 = *(v0 + 3064);
    v19 = *(v0 + 912);
    *(v0 + 1152) = *v1;
    *(v0 + 1168) = v19;
    v20 = *(v0 + 944);
    *(v0 + 1184) = *(v0 + 928);
    *(v0 + 1200) = v20;
    *(v0 + 1257) = *(v0 + 1001);
    v21 = *(v0 + 976);
    *(v0 + 1248) = *(v0 + 992);
    v22 = *(v0 + 960);
    *(v0 + 1232) = v21;
    *(v0 + 1216) = v22;
    v23 = *v10;
    v24 = v10[2];
    *(v0 + 2584) = v10[1];
    *(v0 + 2600) = v24;
    *(v0 + 2568) = v23;
    v25 = v10[3];
    v26 = v10[4];
    v27 = v10[5];
    *(v0 + 2664) = *(v10 + 96);
    *(v0 + 2632) = v26;
    *(v0 + 2648) = v27;
    *(v0 + 2616) = v25;
    *(v0 + 2752) = v13;
    *(v0 + 2760) = v17;
    *(v0 + 2768) = v14;
    *(v0 + 2776) = v15;
    *(v0 + 2784) = v16;
    sub_230D1CDE0(v18, v0 + 2712);
    sub_230DC9814(v0 + 896, v0 + 16);
    v28 = swift_task_alloc();
    *(v0 + 3296) = v28;
    *v28 = v0;
    v28[1] = sub_230DDFDE0;

    return sub_230DE3418(v0 + 1152, (v0 + 2568), v0 + 2752);
  }

  else
  {

    v30 = *(v0 + 3040);
    v31 = *v1;
    v32 = *(v0 + 912);
    v33 = *(v0 + 944);
    v30[2] = *(v0 + 928);
    v30[3] = v33;
    *v30 = v31;
    v30[1] = v32;
    v34 = *(v0 + 960);
    v35 = *(v0 + 976);
    v36 = *(v0 + 992);
    *(v30 + 105) = *(v0 + 1001);
    v30[5] = v35;
    v30[6] = v36;
    v30[4] = v34;

    v37 = *(v0 + 8);

    return v37();
  }
}

uint64_t sub_230DDFDE0()
{
  v1 = *v0;
  v2 = *(*v0 + 3056);

  sub_230D666B4(*(v1 + 2752), *(v1 + 2760), *(v1 + 2768), *(v1 + 2776), *(v1 + 2784));
  *(v1 + 1088) = *(v1 + 1216);
  *(v1 + 1104) = *(v1 + 1232);
  *(v1 + 1120) = *(v1 + 1248);
  *(v1 + 1129) = *(v1 + 1257);
  *(v1 + 1024) = *(v1 + 1152);
  *(v1 + 1040) = *(v1 + 1168);
  *(v1 + 1056) = *(v1 + 1184);
  *(v1 + 1072) = *(v1 + 1200);
  sub_230DC984C(v1 + 1024);

  return MEMORY[0x2822009F8](sub_230DDFFEC, v2, 0);
}

uint64_t sub_230DDFFEC()
{

  v1 = *(v0 + 3040);
  v2 = *(v0 + 896);
  v3 = *(v0 + 912);
  v4 = *(v0 + 944);
  v1[2] = *(v0 + 928);
  v1[3] = v4;
  *v1 = v2;
  v1[1] = v3;
  v5 = *(v0 + 960);
  v6 = *(v0 + 976);
  v7 = *(v0 + 992);
  *(v1 + 105) = *(v0 + 1001);
  v1[5] = v6;
  v1[6] = v7;
  v1[4] = v5;

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_230DE00B4()
{

  sub_230D2D9F8(v0 + 1392, &qword_27DB5CD10, &qword_230E7AE20);
  sub_230D2D9F8(v0 + 1392, &qword_27DB5CD10, &qword_230E7AE20);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_230DE0184(uint64_t a1, uint64_t a2, __int128 *a3)
{
  *(v4 + 1936) = *(a2 + 16);
  v5 = a3[1];
  *(v4 + 1840) = *a3;
  v6 = *a3;
  *(v4 + 1856) = v5;
  *(v4 + 1904) = a1;
  v7 = *(a2 + 8);
  *(v4 + 1920) = *a2;
  *(v4 + 1912) = v3;
  *(v4 + 1928) = v7;
  *(v4 + 141) = *(a2 + 96);
  *(v4 + 1872) = *(a3 + 4);
  *(v4 + 1952) = v6;
  *(v4 + 1968) = a3[1];
  *(v4 + 1984) = *(a3 + 4);
  return MEMORY[0x2822009F8](sub_230DE01F0, v3, 0);
}

uint64_t sub_230DE01F0()
{
  v1 = *(v0 + 1944);
  if (*(v0 + 141) != 1 || v1 == 0)
  {
    v3 = *(v0 + 1904);
    sub_230E68950();
    sub_230D65C88((v0 + 528));
    v4 = *(v0 + 528);
    v5 = *(v0 + 544);
    v6 = *(v0 + 576);
    v3[2] = *(v0 + 560);
    v3[3] = v6;
    *v3 = v4;
    v3[1] = v5;
    v7 = *(v0 + 592);
    v8 = *(v0 + 608);
    v9 = *(v0 + 624);
    *(v3 + 105) = *(v0 + 633);
    v3[5] = v8;
    v3[6] = v9;
    v3[4] = v7;
    v10 = *(v0 + 8);

    return v10();
  }

  else
  {
    v12 = *(v0 + 1936);
    v13 = *(v0 + 1928);
    v14 = *(v0 + 1920);

    MEMORY[0x23191DA00](v14, v13);
    MEMORY[0x23191DA00](58, 0xE100000000000000);
    MEMORY[0x23191DA00](v12, v1);

    *(v0 + 1992) = 0x776F6C666B726F77;
    *(v0 + 2000) = 0xEF3A65686361632DLL;
    *(v0 + 139) = 0;
    v15 = *(v0 + 1856);
    *(v0 + 1520) = *(v0 + 1840);
    *(v0 + 1536) = v15;
    *(v0 + 1552) = *(v0 + 1872);
    v16 = swift_task_alloc();
    *(v0 + 2008) = v16;
    *v16 = v0;
    v16[1] = sub_230DE03EC;

    return ServicesIntelligenceProvider.getKVDatabaseClient(domain:dataClass:requestContext:)((v0 + 139), v17, v0 + 1520);
  }
}

uint64_t sub_230DE03EC(uint64_t a1)
{
  v4 = *v2;
  v4[252] = a1;
  v4[253] = v1;

  if (v1)
  {
    v5 = v4[239];

    v6 = sub_230DE2354;
    v7 = v5;
  }

  else
  {
    v6 = sub_230DE052C;
    v7 = a1;
  }

  return MEMORY[0x2822009F8](v6, v7, 0);
}

uint64_t sub_230DE052C()
{
  v1 = v0[250];
  v2 = v0[249];
  v0[254] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5A6A8, &unk_230E6B3C0);
  v3 = swift_allocObject();
  v0[255] = v3;
  *(v3 + 16) = xmmword_230E6B3B0;
  *(v3 + 32) = v2;
  *(v3 + 40) = v1;

  v4 = sub_230D0F12C(MEMORY[0x277D84F90]);
  v0[256] = v4;
  v5 = swift_task_alloc();
  v0[257] = v5;
  *v5 = v0;
  v5[1] = sub_230DE0644;
  v6 = v0[252];

  return sub_230DE94B8(v3, v4, (v0 + 230), v6);
}

uint64_t sub_230DE0644(uint64_t a1)
{
  v2 = *(*v1 + 2016);
  *(*v1 + 2064) = a1;

  return MEMORY[0x2822009F8](sub_230DE079C, v2, 0);
}

uint64_t sub_230DE079C()
{
  if (*(v0[258] + 16))
  {
    v1 = sub_230DA41A0(v0[249], v0[250]);
    v2 = v0[239];
    if (v3)
    {
      v4 = (*(v0[258] + 56) + 16 * v1);
      v5 = *v4;
      v0[259] = *v4;
      v6 = v4[1];
      v0[260] = v6;
      sub_230D0DD0C(v5, v6);

      v7 = sub_230DE09A4;
    }

    else
    {

      v7 = sub_230DEA6EC;
    }

    v9 = v7;
    v10 = v2;
  }

  else
  {
    v8 = v0[239];

    v9 = sub_230DE0884;
    v10 = v8;
  }

  return MEMORY[0x2822009F8](v9, v10, 0);
}

uint64_t sub_230DE0884()
{
  v1 = *(v0 + 2000);
  v2 = *(v0 + 1992);
  v3 = *(v0 + 1904);
  sub_230E69540();
  MEMORY[0x23191DA00](0xD00000000000004CLL, 0x8000000230E839F0);
  MEMORY[0x23191DA00](v2, v1);

  sub_230E68950();

  sub_230D65C88((v0 + 16));
  v4 = *(v0 + 16);
  v5 = *(v0 + 32);
  v6 = *(v0 + 64);
  v3[2] = *(v0 + 48);
  v3[3] = v6;
  *v3 = v4;
  v3[1] = v5;
  v7 = *(v0 + 80);
  v8 = *(v0 + 96);
  v9 = *(v0 + 112);
  *(v3 + 105) = *(v0 + 121);
  v3[5] = v8;
  v3[6] = v9;
  v3[4] = v7;
  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_230DE09A4()
{
  v1 = *(v0 + 2024);
  sub_230E686C0();
  swift_allocObject();
  sub_230E686B0();
  sub_230DE9DE4();
  sub_230E686A0();
  if (v1)
  {
    v2 = *(v0 + 2016);
    v3 = *(v0 + 2000);
    v4 = *(v0 + 1992);
    MEMORY[0x23191E910](v1);

    sub_230E68950();
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_230E6B3B0;
    *(v5 + 32) = v4;
    *(v5 + 40) = v3;
    *(v0 + 1344) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5D8F0, &unk_230E70E80);
    *(v0 + 1352) = sub_230DE9ED4(&qword_27DB5ABF8, MEMORY[0x277D83988]);
    *(v0 + 1320) = v5;
    v12 = sub_230DE1C80;
    v13 = v2;
LABEL_8:

    return MEMORY[0x2822009F8](v12, v13, 0);
  }

  v6 = *(v0 + 1280);
  *(v0 + 2088) = v6;
  v7 = *(v0 + 1288);
  *(v0 + 2096) = v7;
  v8 = *(v0 + 1296);
  v9 = *(v0 + 1304);
  *(v0 + 2104) = v9;
  if (sub_230DE99C4(v6, v7) == v8 && v10 == v9)
  {
  }

  else
  {
    v11 = sub_230E698C0();

    if ((v11 & 1) == 0)
    {
      v30 = *(v0 + 2016);
      v31 = *(v0 + 2000);
      v32 = *(v0 + 1992);
      sub_230E68950();
      v33 = swift_allocObject();
      *(v33 + 16) = xmmword_230E6B3B0;
      *(v33 + 32) = v32;
      *(v33 + 40) = v31;
      *(v0 + 1464) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5D8F0, &unk_230E70E80);
      *(v0 + 1472) = sub_230DE9ED4(&qword_27DB5ABF8, MEMORY[0x277D83988]);
      *(v0 + 1440) = v33;
      v12 = sub_230DE1590;
      v13 = v30;
      goto LABEL_8;
    }
  }

  swift_allocObject();
  sub_230E686B0();
  sub_230DE9E38();
  sub_230E686A0();
  v14 = *(v0 + 2072);
  v35 = *(v0 + 2080);
  v15 = *(v0 + 1904);

  v16 = *(v0 + 736);
  *(v0 + 208) = *(v0 + 720);
  *(v0 + 224) = v16;
  *(v0 + 240) = *(v0 + 752);
  *(v0 + 249) = *(v0 + 761);
  v17 = *(v0 + 672);
  *(v0 + 144) = *(v0 + 656);
  *(v0 + 160) = v17;
  v18 = *(v0 + 704);
  *(v0 + 176) = *(v0 + 688);
  *(v0 + 192) = v18;
  sub_230E68950();
  sub_230D0F4A8(v14, v35);

  sub_230D0F4A8(v6, v7);

  v19 = *(v0 + 256);
  sub_230D2D898(v0 + 144, v0 + 1168);

  sub_230DC984C(v0 + 144);
  v20 = *(v0 + 224);
  *(v0 + 336) = *(v0 + 208);
  *(v0 + 352) = v20;
  *(v0 + 361) = *(v0 + 233);
  v21 = *(v0 + 160);
  *(v0 + 272) = *(v0 + 144);
  *(v0 + 288) = v21;
  v22 = *(v0 + 192);
  *(v0 + 304) = *(v0 + 176);
  *(v0 + 320) = v22;
  *(v0 + 384) = v19;
  *(v0 + 392) = 0;
  nullsub_1();
  v23 = *(v0 + 272);
  v24 = *(v0 + 288);
  v25 = *(v0 + 320);
  v15[2] = *(v0 + 304);
  v15[3] = v25;
  *v15 = v23;
  v15[1] = v24;
  v26 = *(v0 + 336);
  v27 = *(v0 + 352);
  v28 = *(v0 + 368);
  *(v15 + 105) = *(v0 + 377);
  v15[5] = v27;
  v15[6] = v28;
  v15[4] = v26;
  v29 = *(v0 + 8);

  return v29();
}

uint64_t sub_230DE0EA0()
{
  if (*(v0 + 1856))
  {
    v1 = *(v0 + 1984);
    v2 = *(v0 + 1976);
    v3 = *(v0 + 1968);
    v4 = *(v0 + 1952);
    v5 = *(v0 + 1960);
    *(v0 + 2128) = v1;
    *(v0 + 2120) = v3;
    v6 = *(v0 + 2016);
    *(v0 + 1680) = v4;
    *(v0 + 1688) = v5;
    *(v0 + 1696) = v3;
    *(v0 + 1704) = v2 & 1;
    *(v0 + 1705) = BYTE1(v2);
    *(v0 + 1712) = v1;
    v7 = swift_task_alloc();
    *(v0 + 2136) = v7;
    v7[2] = v0 + 1600;
    v7[3] = v6;
    v7[4] = v0 + 1680;
    sub_230D0FA64(v0 + 1840, v0 + 1720, &qword_27DB5B8B8, &qword_230E7ADD0);
    v8 = swift_task_alloc();
    *(v0 + 2144) = v8;
    *v8 = v0;
    v8[1] = sub_230DE12DC;

    return sub_230D17BA0(7, v0 + 1680, &unk_230E7ADE0, v7);
  }

  else
  {
    *(v0 + 140) = 7;
    v10 = swift_task_alloc();
    *(v0 + 2112) = v10;
    *v10 = v0;
    v10[1] = sub_230DE1084;

    return static RequestContext.from(_:correlationID:)(v0 + 1640, (v0 + 140), 0, 0);
  }
}

uint64_t sub_230DE1084()
{
  v1 = *(*v0 + 2016);

  return MEMORY[0x2822009F8](sub_230DE1194, v1, 0);
}

uint64_t sub_230DE1194()
{
  v1 = *(v0 + 1640);
  v2 = *(v0 + 1648);
  v3 = *(v0 + 1656);
  v4 = *(v0 + 1664);
  v5 = *(v0 + 1665);
  v6 = *(v0 + 1672);
  *(v0 + 2128) = v6;
  *(v0 + 2120) = v3;
  v7 = *(v0 + 2016);
  *(v0 + 1680) = v1;
  *(v0 + 1688) = v2;
  *(v0 + 1696) = v3;
  *(v0 + 1704) = v4;
  *(v0 + 1705) = v5;
  *(v0 + 1712) = v6;
  v8 = swift_task_alloc();
  *(v0 + 2136) = v8;
  v8[2] = v0 + 1600;
  v8[3] = v7;
  v8[4] = v0 + 1680;
  sub_230D0FA64(v0 + 1840, v0 + 1720, &qword_27DB5B8B8, &qword_230E7ADD0);
  v9 = swift_task_alloc();
  *(v0 + 2144) = v9;
  *v9 = v0;
  v9[1] = sub_230DE12DC;

  return sub_230D17BA0(7, v0 + 1680, &unk_230E7ADE0, v8);
}

uint64_t sub_230DE12DC()
{
  v1 = *(*v0 + 2016);

  return MEMORY[0x2822009F8](sub_230DE1448, v1, 0);
}

uint64_t sub_230DE1448()
{
  if (v0[203])
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 200);
  }

  v1 = v0[239];

  return MEMORY[0x2822009F8](sub_230DE14B8, v1, 0);
}

uint64_t sub_230DE14B8()
{
  v1 = *(v0 + 2096);
  v2 = *(v0 + 2088);
  v3 = *(v0 + 1904);
  sub_230D0F4A8(*(v0 + 2072), *(v0 + 2080));
  sub_230D0F4A8(v2, v1);

  sub_230D65C88((v0 + 400));
  v4 = *(v0 + 400);
  v5 = *(v0 + 416);
  v6 = *(v0 + 448);
  v3[2] = *(v0 + 432);
  v3[3] = v6;
  *v3 = v4;
  v3[1] = v5;
  v7 = *(v0 + 464);
  v8 = *(v0 + 480);
  v9 = *(v0 + 496);
  *(v3 + 105) = *(v0 + 505);
  v3[5] = v8;
  v3[6] = v9;
  v3[4] = v7;
  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_230DE1590()
{
  if (*(v0 + 1856))
  {
    v1 = *(v0 + 1984);
    v2 = *(v0 + 1976);
    v3 = *(v0 + 1968);
    v4 = *(v0 + 1952);
    v5 = *(v0 + 1960);
    *(v0 + 2168) = v1;
    *(v0 + 2160) = v3;
    v6 = *(v0 + 2016);
    *(v0 + 1760) = v4;
    *(v0 + 1768) = v5;
    *(v0 + 1776) = v3;
    *(v0 + 1784) = v2 & 1;
    *(v0 + 1785) = BYTE1(v2);
    *(v0 + 1792) = v1;
    v7 = swift_task_alloc();
    *(v0 + 2176) = v7;
    v7[2] = v0 + 1440;
    v7[3] = v6;
    v7[4] = v0 + 1760;
    sub_230D0FA64(v0 + 1840, v0 + 1560, &qword_27DB5B8B8, &qword_230E7ADD0);
    v8 = swift_task_alloc();
    *(v0 + 2184) = v8;
    *v8 = v0;
    v8[1] = sub_230DE19CC;

    return sub_230D17BA0(7, v0 + 1760, &unk_230E7ADD8, v7);
  }

  else
  {
    *(v0 + 138) = 7;
    v10 = swift_task_alloc();
    *(v0 + 2152) = v10;
    *v10 = v0;
    v10[1] = sub_230DE1774;

    return static RequestContext.from(_:correlationID:)(v0 + 1480, (v0 + 138), 0, 0);
  }
}

uint64_t sub_230DE1774()
{
  v1 = *(*v0 + 2016);

  return MEMORY[0x2822009F8](sub_230DE1884, v1, 0);
}

uint64_t sub_230DE1884()
{
  v1 = *(v0 + 1480);
  v2 = *(v0 + 1488);
  v3 = *(v0 + 1496);
  v4 = *(v0 + 1504);
  v5 = *(v0 + 1505);
  v6 = *(v0 + 1512);
  *(v0 + 2168) = v6;
  *(v0 + 2160) = v3;
  v7 = *(v0 + 2016);
  *(v0 + 1760) = v1;
  *(v0 + 1768) = v2;
  *(v0 + 1776) = v3;
  *(v0 + 1784) = v4;
  *(v0 + 1785) = v5;
  *(v0 + 1792) = v6;
  v8 = swift_task_alloc();
  *(v0 + 2176) = v8;
  v8[2] = v0 + 1440;
  v8[3] = v7;
  v8[4] = v0 + 1760;
  sub_230D0FA64(v0 + 1840, v0 + 1560, &qword_27DB5B8B8, &qword_230E7ADD0);
  v9 = swift_task_alloc();
  *(v0 + 2184) = v9;
  *v9 = v0;
  v9[1] = sub_230DE19CC;

  return sub_230D17BA0(7, v0 + 1760, &unk_230E7ADD8, v8);
}

uint64_t sub_230DE19CC()
{
  v1 = *(*v0 + 2016);

  return MEMORY[0x2822009F8](sub_230DE1B38, v1, 0);
}

uint64_t sub_230DE1B38()
{
  if (v0[183])
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 180);
  }

  v1 = v0[239];

  return MEMORY[0x2822009F8](sub_230DE1BA8, v1, 0);
}

uint64_t sub_230DE1BA8()
{
  v1 = *(v0 + 2096);
  v2 = *(v0 + 2088);
  v3 = *(v0 + 1904);
  sub_230D0F4A8(*(v0 + 2072), *(v0 + 2080));
  sub_230D0F4A8(v2, v1);

  sub_230D65C88((v0 + 784));
  v4 = *(v0 + 784);
  v5 = *(v0 + 800);
  v6 = *(v0 + 832);
  v3[2] = *(v0 + 816);
  v3[3] = v6;
  *v3 = v4;
  v3[1] = v5;
  v7 = *(v0 + 848);
  v8 = *(v0 + 864);
  v9 = *(v0 + 880);
  *(v3 + 105) = *(v0 + 889);
  v3[5] = v8;
  v3[6] = v9;
  v3[4] = v7;
  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_230DE1C80()
{
  if (*(v0 + 1856))
  {
    v1 = *(v0 + 1984);
    v2 = *(v0 + 1976);
    v3 = *(v0 + 1968);
    v4 = *(v0 + 1952);
    v5 = *(v0 + 1960);
    *(v0 + 2208) = v1;
    *(v0 + 2200) = v3;
    v6 = *(v0 + 2016);
    *(v0 + 1800) = v4;
    *(v0 + 1808) = v5;
    *(v0 + 1816) = v3;
    *(v0 + 1824) = v2 & 1;
    *(v0 + 1825) = BYTE1(v2);
    *(v0 + 1832) = v1;
    v7 = swift_task_alloc();
    *(v0 + 2216) = v7;
    v7[2] = v0 + 1320;
    v7[3] = v6;
    v7[4] = v0 + 1800;
    sub_230D0FA64(v0 + 1840, v0 + 1400, &qword_27DB5B8B8, &qword_230E7ADD0);
    v8 = swift_task_alloc();
    *(v0 + 2224) = v8;
    *v8 = v0;
    v8[1] = sub_230DE20BC;

    return sub_230D17BA0(7, v0 + 1800, &unk_230E6C100, v7);
  }

  else
  {
    *(v0 + 137) = 7;
    v10 = swift_task_alloc();
    *(v0 + 2192) = v10;
    *v10 = v0;
    v10[1] = sub_230DE1E64;

    return static RequestContext.from(_:correlationID:)(v0 + 1360, (v0 + 137), 0, 0);
  }
}

uint64_t sub_230DE1E64()
{
  v1 = *(*v0 + 2016);

  return MEMORY[0x2822009F8](sub_230DE1F74, v1, 0);
}

uint64_t sub_230DE1F74()
{
  v1 = *(v0 + 1360);
  v2 = *(v0 + 1368);
  v3 = *(v0 + 1376);
  v4 = *(v0 + 1384);
  v5 = *(v0 + 1385);
  v6 = *(v0 + 1392);
  *(v0 + 2208) = v6;
  *(v0 + 2200) = v3;
  v7 = *(v0 + 2016);
  *(v0 + 1800) = v1;
  *(v0 + 1808) = v2;
  *(v0 + 1816) = v3;
  *(v0 + 1824) = v4;
  *(v0 + 1825) = v5;
  *(v0 + 1832) = v6;
  v8 = swift_task_alloc();
  *(v0 + 2216) = v8;
  v8[2] = v0 + 1320;
  v8[3] = v7;
  v8[4] = v0 + 1800;
  sub_230D0FA64(v0 + 1840, v0 + 1400, &qword_27DB5B8B8, &qword_230E7ADD0);
  v9 = swift_task_alloc();
  *(v0 + 2224) = v9;
  *v9 = v0;
  v9[1] = sub_230DE20BC;

  return sub_230D17BA0(7, v0 + 1800, &unk_230E6C100, v8);
}

uint64_t sub_230DE20BC()
{
  v1 = *(*v0 + 2016);

  return MEMORY[0x2822009F8](sub_230DE2228, v1, 0);
}

uint64_t sub_230DE2228()
{
  if (v0[168])
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 165);
  }

  v1 = v0[239];

  return MEMORY[0x2822009F8](sub_230DE2298, v1, 0);
}

uint64_t sub_230DE2298()
{
  v1 = *(v0 + 1904);
  sub_230D0F4A8(*(v0 + 2072), *(v0 + 2080));

  sub_230D65C88((v0 + 1040));
  v2 = *(v0 + 1040);
  v3 = *(v0 + 1056);
  v4 = *(v0 + 1088);
  v1[2] = *(v0 + 1072);
  v1[3] = v4;
  *v1 = v2;
  v1[1] = v3;
  v5 = *(v0 + 1104);
  v6 = *(v0 + 1120);
  v7 = *(v0 + 1136);
  *(v1 + 105) = *(v0 + 1145);
  v1[5] = v6;
  v1[6] = v7;
  v1[4] = v5;
  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_230DE2354()
{
  v1 = *(v0 + 2024);
  v2 = *(v0 + 1904);
  sub_230E69540();
  *(v0 + 1880) = 0;
  *(v0 + 1888) = 0xE000000000000000;
  MEMORY[0x23191DA00](0xD000000000000045, 0x8000000230E839A0);
  *(v0 + 1896) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D890, &qword_230E6C200);
  sub_230E695F0();
  sub_230E68950();
  MEMORY[0x23191E910](v1);

  sub_230D65C88((v0 + 912));
  v3 = *(v0 + 912);
  v4 = *(v0 + 928);
  v5 = *(v0 + 960);
  v2[2] = *(v0 + 944);
  v2[3] = v5;
  *v2 = v3;
  v2[1] = v4;
  v6 = *(v0 + 976);
  v7 = *(v0 + 992);
  v8 = *(v0 + 1008);
  *(v2 + 105) = *(v0 + 1017);
  v2[5] = v7;
  v2[6] = v8;
  v2[4] = v6;
  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_230DE2498(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  *(v5 + 1208) = v4;
  *(v5 + 1200) = a1;
  v8 = sub_230E68C30();
  *(v5 + 1216) = v8;
  *(v5 + 1224) = *(v8 - 8);
  *(v5 + 1232) = swift_task_alloc();
  *(v5 + 1240) = swift_task_alloc();
  v9 = *(a2 + 80);
  *(v5 + 736) = *(a2 + 64);
  *(v5 + 752) = v9;
  *(v5 + 768) = *(a2 + 96);
  v10 = *(a2 + 16);
  *(v5 + 672) = *a2;
  *(v5 + 688) = v10;
  v11 = *(a2 + 48);
  *(v5 + 704) = *(a2 + 32);
  *(v5 + 720) = v11;
  v12 = *a4;
  v13 = a4[1];
  *(v5 + 1016) = *(a4 + 4);
  *(v5 + 984) = v12;
  *(v5 + 1000) = v13;

  return MEMORY[0x2822009F8](sub_230DE25B4, v4, 0);
}

uint64_t sub_230DE25B4()
{
  sub_230D1CDE0(v0 + 984, v0 + 1024);
  sub_230D1CDE0(v0 + 984, v0 + 1064);
  sub_230DC7630(v0 + 672, v0 + 776);

  v1 = swift_task_alloc();
  *(v0 + 1248) = v1;
  *v1 = v0;
  v1[1] = sub_230DE26A4;

  return (sub_230D7EC1C)(34, v0 + 984);
}

uint64_t sub_230DE26A4(uint64_t a1)
{
  v3 = *v2;
  v3[157] = a1;
  v3[158] = v1;

  if (v1)
  {
    v4 = v3[151];
    sub_230D1CE3C((v3 + 123));
    v5 = sub_230DE2B2C;
  }

  else
  {
    v4 = v3[151];
    sub_230D1CE3C((v3 + 123));
    v5 = sub_230DE27D4;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_230DE27D4()
{
  v1 = *(v0 + 1264);
  sub_230D1CE3C(v0 + 984);
  v19 = *(v0 + 736);
  v20 = *(v0 + 752);
  v21[0] = *(v0 + 768);
  v16 = *(v0 + 672);
  v17 = *(v0 + 688);
  v18 = *(v0 + 720);
  *&v21[8] = *(v0 + 984);
  *&v21[24] = *(v0 + 1000);
  *&v21[40] = *(v0 + 1016);
  *(v0 + 48) = *(v0 + 704);
  *(v0 + 64) = v18;
  *(v0 + 16) = v16;
  *(v0 + 32) = v17;
  *(v0 + 80) = v19;
  *(v0 + 96) = v20;
  *(v0 + 112) = *v21;
  *(v0 + 128) = *&v21[16];
  *(v0 + 144) = *&v21[32];
  sub_230D1CDE0(v0 + 984, v0 + 1104);
  sub_230DC7630(v0 + 672, v0 + 880);
  sub_230E68950();
  sub_230E686F0();
  swift_allocObject();
  sub_230E686E0();
  v2 = *(v0 + 128);
  *(v0 + 256) = *(v0 + 112);
  *(v0 + 272) = v2;
  *(v0 + 288) = *(v0 + 144);
  v3 = *(v0 + 64);
  *(v0 + 192) = *(v0 + 48);
  *(v0 + 208) = v3;
  v4 = *(v0 + 96);
  *(v0 + 224) = *(v0 + 80);
  *(v0 + 240) = v4;
  v5 = *(v0 + 32);
  *(v0 + 160) = *(v0 + 16);
  *(v0 + 176) = v5;
  sub_230DEA104();
  v6 = sub_230E686D0();
  *(v0 + 1272) = v6;
  *(v0 + 1280) = v7;
  if (v1)
  {
    MEMORY[0x23191E910](v1);

    sub_230DC8018(v0 + 16);
    sub_230E68950();
    sub_230D66764();
    swift_allocError();
    *v8 = 0xD000000000000028;
    *(v8 + 8) = 0x8000000230E841E0;
    *(v8 + 16) = 2;
    swift_willThrow();

    v9 = *(v0 + 8);

    return v9();
  }

  else
  {
    v11 = v6;
    v12 = v7;

    sub_230DC8018(v0 + 16);
    sub_230E68C50();

    sub_230D0DD0C(v11, v12);
    MEMORY[0x23191D510](v11, v12);
    *(v0 + 1288) = sub_230E68C40();
    sub_230E68950();
    v15 = (*MEMORY[0x277D29DF8] + MEMORY[0x277D29DF8]);
    v13 = swift_task_alloc();
    *(v0 + 1296) = v13;
    *v13 = v0;
    v13[1] = sub_230DE2BA4;
    v14 = *(v0 + 1232);

    return v15(v14);
  }
}

uint64_t sub_230DE2B2C()
{
  sub_230D1CE3C(v0 + 984);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_230DE2BA4()
{
  v2 = *v1;
  *(*v1 + 1304) = v0;

  v3 = *(v2 + 1208);
  if (v0)
  {
    v4 = sub_230DE3224;
  }

  else
  {
    v4 = sub_230DE2CD0;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_230DE2CD0()
{
  v1 = sub_230E68C10();
  if (v2 >> 60 == 15)
  {
    v3 = *(v0 + 1232);
    v4 = *(v0 + 1224);
    v5 = *(v0 + 1216);
    sub_230E68950();
    *&v32 = 0;
    *(&v32 + 1) = 0xE000000000000000;
    sub_230E69540();
    MEMORY[0x23191DA00](0xD000000000000047, 0x8000000230E823C0);
    v6 = sub_230E68C80();
    MEMORY[0x23191DA00](v6);

    sub_230D66764();
    v7 = swift_allocError();
    *v8 = v32;
    *(v8 + 16) = 4;
    swift_willThrow();
    (*(v4 + 8))(v3, v5);
LABEL_5:
    v16 = *(v0 + 1280);
    v17 = *(v0 + 1272);
    sub_230E69540();
    *(v0 + 1168) = 0;
    *(v0 + 1176) = 0xE000000000000000;
    MEMORY[0x23191DA00](0xD000000000000047, 0x8000000230E84260);
    *(v0 + 1184) = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D890, &qword_230E6C200);
    sub_230E695F0();
    sub_230E68950();

    sub_230E69540();

    *&v33 = 0xD000000000000026;
    *(&v33 + 1) = 0x8000000230E82360;
    swift_getErrorValue();
    v18 = sub_230E69960();
    MEMORY[0x23191DA00](v18);

    sub_230D66764();
    swift_allocError();
    *v19 = v33;
    *(v19 + 16) = 0;
    swift_willThrow();
    MEMORY[0x23191E910](v7);

    sub_230D0F4A8(v17, v16);

    v20 = *(v0 + 8);
    goto LABEL_6;
  }

  v9 = v1;
  v10 = v2;
  v11 = *(v0 + 1304);
  sub_230E68950();
  sub_230E686C0();
  swift_allocObject();
  sub_230E686B0();
  sub_230DE9E38();
  sub_230E686A0();
  if (v11)
  {
    v12 = *(v0 + 1232);
    v13 = *(v0 + 1224);
    v14 = *(v0 + 1216);
    MEMORY[0x23191E910](v11);

    sub_230E68950();
    sub_230D66764();
    v7 = swift_allocError();
    *v15 = 0xD000000000000031;
    *(v15 + 8) = 0x8000000230E843B0;
    *(v15 + 16) = 5;
    swift_willThrow();
    sub_230D0F494(v9, v10);
    (*(v13 + 8))(v12, v14);
    goto LABEL_5;
  }

  v29 = *(v0 + 1272);
  v30 = *(v0 + 1280);
  v22 = *(v0 + 1232);
  v23 = *(v0 + 1224);
  v31 = *(v0 + 1216);
  v24 = *(v0 + 1200);

  *(v0 + 537) = *(v0 + 409);
  v25 = *(v0 + 384);
  *(v0 + 496) = *(v0 + 368);
  *(v0 + 512) = v25;
  *(v0 + 528) = *(v0 + 400);
  v26 = *(v0 + 320);
  *(v0 + 432) = *(v0 + 304);
  *(v0 + 448) = v26;
  v27 = *(v0 + 352);
  *(v0 + 464) = *(v0 + 336);
  *(v0 + 480) = v27;
  v28 = *(v0 + 544);
  sub_230D2D898(v0 + 432, v0 + 560);

  sub_230DC984C(v0 + 432);
  v38 = *(v0 + 496);
  *v39 = *(v0 + 512);
  *&v39[9] = *(v0 + 521);
  v34 = *(v0 + 432);
  v35 = *(v0 + 448);
  v36 = *(v0 + 464);
  v37 = *(v0 + 480);
  sub_230E68950();
  sub_230D0F494(v9, v10);

  sub_230D0F4A8(v29, v30);

  (*(v23 + 8))(v22, v31);
  *(v24 + 64) = v38;
  *(v24 + 80) = *v39;
  *(v24 + 96) = *&v39[16];
  *v24 = v34;
  *(v24 + 16) = v35;
  *(v24 + 32) = v36;
  *(v24 + 48) = v37;
  *(v24 + 112) = v28;
  *(v24 + 120) = 1;

  v20 = *(v0 + 8);
LABEL_6:

  return v20();
}

uint64_t sub_230DE3224()
{
  v1 = v0[163];
  v2 = v0[160];
  v3 = v0[159];
  sub_230E69540();
  v0[146] = 0;
  v0[147] = 0xE000000000000000;
  MEMORY[0x23191DA00](0xD000000000000047, 0x8000000230E84260);
  v0[148] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D890, &qword_230E6C200);
  sub_230E695F0();
  sub_230E68950();

  sub_230E69540();

  swift_getErrorValue();
  v4 = sub_230E69960();
  MEMORY[0x23191DA00](v4);

  sub_230D66764();
  swift_allocError();
  *v5 = 0xD000000000000026;
  *(v5 + 8) = 0x8000000230E82360;
  *(v5 + 16) = 0;
  swift_willThrow();
  MEMORY[0x23191E910](v1);

  sub_230D0F4A8(v3, v2);

  v6 = v0[1];

  return v6();
}

uint64_t sub_230DE3418(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  *(v4 + 448) = a1;
  *(v4 + 456) = v3;
  v7 = sub_230E68910();
  *(v4 + 464) = v7;
  *(v4 + 472) = *(v7 - 8);
  v8 = swift_task_alloc();
  v9 = *a2;
  v10 = a2[1];
  *(v4 + 480) = v8;
  *(v4 + 488) = v9;
  *(v4 + 496) = v10;
  v11 = *(a2 + 2);
  *(v4 + 504) = *(a2 + 1);
  *(v4 + 520) = v11;
  *(v4 + 138) = *(a2 + 48);
  v12 = *(a3 + 16);
  *(v4 + 288) = *a3;
  *(v4 + 304) = v12;
  *(v4 + 320) = *(a3 + 32);

  return MEMORY[0x2822009F8](sub_230DE3514, v3, 0);
}

uint64_t sub_230DE3514()
{
  v1 = *(v0 + 512);
  if (v1)
  {
    v3 = *(v0 + 496);
    v2 = *(v0 + 504);
    v4 = *(v0 + 488);

    MEMORY[0x23191DA00](v4, v3);
    MEMORY[0x23191DA00](58, 0xE100000000000000);
    MEMORY[0x23191DA00](v2, v1);

    *(v0 + 536) = 0x776F6C666B726F77;
    *(v0 + 544) = 0xEF3A65686361632DLL;
    *(v0 + 137) = 0;
    v5 = *(v0 + 304);
    *(v0 + 328) = *(v0 + 288);
    *(v0 + 344) = v5;
    *(v0 + 360) = *(v0 + 320);
    v6 = swift_task_alloc();
    *(v0 + 552) = v6;
    *v6 = v0;
    v6[1] = sub_230DE36CC;

    return ServicesIntelligenceProvider.getKVDatabaseClient(domain:dataClass:requestContext:)((v0 + 137), v7, v0 + 328);
  }

  else
  {
    sub_230E68950();

    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_230DE36CC(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 560) = a1;
  *(v4 + 568) = v1;

  v5 = *(v3 + 456);
  if (v1)
  {

    v6 = sub_230DE4144;
  }

  else
  {
    v6 = sub_230DE3810;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_230DE3810()
{
  v1 = *(v0 + 568);
  v2 = *(v0 + 448);
  sub_230E686F0();
  swift_allocObject();
  sub_230E686E0();
  v3 = v2[3];
  v5 = *v2;
  v4 = v2[1];
  *(v0 + 48) = v2[2];
  *(v0 + 64) = v3;
  *(v0 + 16) = v5;
  *(v0 + 32) = v4;
  v7 = v2[5];
  v6 = v2[6];
  v8 = v2[4];
  *(v0 + 121) = *(v2 + 105);
  *(v0 + 96) = v7;
  *(v0 + 112) = v6;
  *(v0 + 80) = v8;
  sub_230DEA05C();
  v9 = sub_230E686D0();
  *(v0 + 576) = v9;
  *(v0 + 584) = v10;
  if (v1)
  {
    MEMORY[0x23191E910](v1);

    sub_230E68950();

    v23 = *(v0 + 8);

    return v23();
  }

  else
  {
    v11 = v9;
    v12 = v10;
    v14 = *(v0 + 472);
    v13 = *(v0 + 480);
    v15 = *(v0 + 464);

    v16 = sub_230DE99C4(v11, v12);
    v18 = v17;
    *(v0 + 592) = v17;
    sub_230D0DD0C(v11, v12);
    sub_230E68900();
    sub_230E688D0();
    v20 = v19;
    (*(v14 + 8))(v13, v15);
    swift_allocObject();
    sub_230E686E0();
    *(v0 + 368) = v11;
    *(v0 + 376) = v12;
    *(v0 + 384) = v16;
    *(v0 + 392) = v18;
    *(v0 + 400) = v20;
    sub_230DEA0B0();
    *(v0 + 600) = sub_230E686D0();
    *(v0 + 608) = v21;
    v22 = *(v0 + 560);
    sub_230D0F4A8(v11, v12);

    return MEMORY[0x2822009F8](sub_230DE3AE0, v22, 0);
  }
}

uint64_t sub_230DE3AE0()
{
  v1 = *(v0 + 608);
  v2 = *(v0 + 600);
  v3 = *(v0 + 544);
  v4 = *(v0 + 536);
  v5 = *(v0 + 138);
  v6 = *(v0 + 528);
  v7 = *(v0 + 520);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5ABE8, qword_230E6C090);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_230E6B3B0;
  *(inited + 32) = v4;
  *(inited + 40) = v3;
  *(inited + 48) = v7;
  *(inited + 56) = 0;
  *(inited + 64) = v6;
  *(inited + 72) = v5 & 1;

  v9 = sub_230D0DA94(inited);
  *(v0 + 616) = v9;
  swift_setDeallocating();
  sub_230D2D9F8(inited + 32, &qword_27DB5ABF0, &qword_230E71DB0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5CD28, &qword_230E7AE30);
  v10 = swift_initStackObject();
  *(v10 + 16) = xmmword_230E6B3B0;
  *(v10 + 32) = v4;
  *(v10 + 40) = v3;
  *(v10 + 48) = v2;
  *(v10 + 56) = v1;
  sub_230D0DD0C(v2, v1);
  v11 = sub_230D0F244(v10);
  *(v0 + 624) = v11;
  swift_setDeallocating();
  sub_230D2D9F8(v10 + 32, &qword_27DB5CD30, &qword_230E7AE38);
  v12 = swift_task_alloc();
  *(v0 + 632) = v12;
  *v12 = v0;
  v12[1] = sub_230DE3CC4;

  return sub_230E02C5C(v11, v9, v0 + 288);
}

uint64_t sub_230DE3CC4(uint64_t a1)
{
  v4 = *v2;
  v4[80] = v1;

  v5 = v4[57];

  if (v1)
  {
    v6 = sub_230DE4000;
  }

  else
  {
    v4[81] = a1;
    v6 = sub_230DE3E38;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_230DE3E38()
{
  if (v0[81] == 1)
  {
    v1 = v0[76];
    v2 = v0[75];
    v3 = v0[73];
    v4 = v0[72];
    sub_230E69540();
    v0[53] = 0;
    v0[54] = 0xE000000000000000;
    MEMORY[0x23191DA00](0xD000000000000053, 0x8000000230E840D0);
    sub_230E69320();
    MEMORY[0x23191DA00](115, 0xE100000000000000);
    sub_230E68950();
    sub_230D0F4A8(v2, v1);
    sub_230D0F4A8(v4, v3);
  }

  else
  {
    v5 = v0[76];
    v6 = v0[75];
    v7 = v0[73];
    v8 = v0[72];
    sub_230E68950();
    sub_230D0F4A8(v6, v5);
    sub_230D0F4A8(v8, v7);
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_230DE4000()
{
  v1 = v0[76];
  v2 = v0[75];
  sub_230D0F4A8(v0[72], v0[73]);

  sub_230D0F4A8(v2, v1);
  v3 = v0[80];
  sub_230E69540();
  v0[51] = 0;
  v0[52] = 0xE000000000000000;
  MEMORY[0x23191DA00](0xD000000000000042, 0x8000000230E83F80);
  v0[55] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D890, &qword_230E6C200);
  sub_230E695F0();
  sub_230E68950();

  MEMORY[0x23191E910](v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_230DE4144()
{
  v1 = v0[71];
  sub_230E69540();
  v0[51] = 0;
  v0[52] = 0xE000000000000000;
  MEMORY[0x23191DA00](0xD000000000000042, 0x8000000230E83F80);
  v0[55] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D890, &qword_230E6C200);
  sub_230E695F0();
  sub_230E68950();

  MEMORY[0x23191E910](v1);

  v2 = v0[1];

  return v2();
}

uint64_t sub_230DE4248(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 1296) = *(a2 + 80);
  v5 = *(a3 + 16);
  *(v4 + 1312) = *a3;
  *(v4 + 1272) = v3;
  *(v4 + 1264) = a1;
  v6 = *(a2 + 8);
  *(v4 + 1280) = *a2;
  *(v4 + 1288) = v6;
  *(v4 + 1328) = v5;
  *(v4 + 1344) = *(a3 + 32);
  return MEMORY[0x2822009F8](sub_230DE4294, v3, 0);
}

uint64_t sub_230DE4294()
{
  v1 = *(v0 + 1328);
  if (v1)
  {
    v2 = *(v0 + 1344);
    v3 = *(v0 + 1336);
    v4 = *(v0 + 1312);
    v5 = *(v0 + 1320);
    *(v0 + 1368) = v2;
    *(v0 + 1360) = v1;
    *(v0 + 1184) = v4;
    *(v0 + 1192) = v5;
    *(v0 + 1200) = v1;
    *(v0 + 1208) = v3 & 1;
    *(v0 + 1209) = BYTE1(v3);
    *(v0 + 1216) = v2;

    sub_230D0585C(v4, v5, v1, v3, v2);
    v6 = swift_task_alloc();
    *(v0 + 1376) = v6;
    *v6 = v0;
    v6[1] = sub_230DE46C0;
    v7 = *(v0 + 1272);

    return sub_230D7CC14(v0 + 1136, 18, v0 + 1184, v7, v7, v0 + 1184);
  }

  else
  {
    *(v0 + 121) = 18;
    v9 = swift_task_alloc();
    *(v0 + 1352) = v9;
    *v9 = v0;
    v9[1] = sub_230DE4460;

    return static RequestContext.from(_:correlationID:)(v0 + 1224, (v0 + 121), 0, 0);
  }
}

uint64_t sub_230DE4460()
{
  v1 = *(*v0 + 1272);

  return MEMORY[0x2822009F8](sub_230DE4570, v1, 0);
}

uint64_t sub_230DE4570()
{
  v1 = *(v0 + 1224);
  v2 = *(v0 + 1232);
  v3 = *(v0 + 1240);
  v4 = *(v0 + 1248);
  v5 = *(v0 + 1249);
  v6 = *(v0 + 1256);
  *(v0 + 1368) = v6;
  *(v0 + 1360) = v3;
  v7 = *(v0 + 1344);
  v8 = *(v0 + 1336);
  v9 = *(v0 + 1328);
  v10 = *(v0 + 1320);
  v11 = *(v0 + 1312);
  *(v0 + 1184) = v1;
  *(v0 + 1192) = v2;
  *(v0 + 1200) = v3;
  *(v0 + 1208) = v4;
  *(v0 + 1209) = v5;
  *(v0 + 1216) = v6;

  sub_230D0585C(v11, v10, v9, v8, v7);
  v12 = swift_task_alloc();
  *(v0 + 1376) = v12;
  *v12 = v0;
  v12[1] = sub_230DE46C0;
  v13 = *(v0 + 1272);

  return sub_230D7CC14(v0 + 1136, 18, v0 + 1184, v13, v13, v0 + 1184);
}

uint64_t sub_230DE46C0()
{
  v1 = *(*v0 + 1272);

  return MEMORY[0x2822009F8](sub_230DE4810, v1, 0);
}

uint64_t sub_230DE4810()
{
  v1 = *(v0 + 1136);
  if (!v1)
  {
    v17 = 0x8000000230E83CA0;
    v18 = 0xD000000000000016;
LABEL_24:
    sub_230D66764();
    swift_allocError();
    *v21 = v18;
    *(v21 + 8) = v17;
    *(v21 + 16) = 3;
    swift_willThrow();
    v22 = *(v0 + 8);
    goto LABEL_43;
  }

  v2 = (v0 + 464);
  v50 = (v0 + 912);
  v51 = *(v0 + 1144);
  v52 = *(v0 + 1152);
  v53 = *(v0 + 1160);
  v54 = *(v0 + 1168);
  v3 = (v1 + 56);
  v4 = *(v1 + 16) + 1;
  do
  {
    if (!--v4)
    {
      v19 = *(v0 + 1280);
      v20 = *(v0 + 1288);
      sub_230DE9FF0(v1, v51, v52, v53, v54);
      sub_230E69540();

      MEMORY[0x23191DA00](v19, v20);
      v18 = 0xD000000000000025;
      v17 = 0x8000000230E83CC0;
      goto LABEL_24;
    }

    v5 = *v3;
    if (*(v3 - 3) == *(v0 + 1280) && *(v3 - 2) == *(v0 + 1288))
    {
      break;
    }

    v3 += 4;
  }

  while ((sub_230E698C0() & 1) == 0);
  if (!*(v0 + 1304))
  {
    v23 = *(v5 + 16);
    if (!v23)
    {
LABEL_49:

      result = sub_230DE9FF0(v1, v51, v52, v53, v54);
      __break(1u);
      return result;
    }

    v24 = 32;
    do
    {
      v25 = *(v5 + v24 + 48);
      v26 = *(v5 + v24 + 64);
      v27 = *(v5 + v24 + 80);
      *(v0 + 105) = *(v5 + v24 + 89);
      v28 = *(v5 + v24 + 16);
      v29 = *(v5 + v24 + 32);
      *(v0 + 16) = *(v5 + v24);
      *(v0 + 32) = v28;
      *(v0 + 80) = v26;
      *(v0 + 96) = v27;
      *(v0 + 48) = v29;
      *(v0 + 64) = v25;
      if (*(v0 + 120))
      {
        if (!*(v0 + 112))
        {
          goto LABEL_31;
        }
      }

      else if (!*(v0 + 32))
      {
LABEL_31:
        sub_230D2D898(v0 + 16, v0 + 128);
        sub_230DE9FF0(v1, v51, v52, v53, v54);
        v2 = (v0 + 16);
        goto LABEL_42;
      }

      v24 += 112;
      --v23;
    }

    while (v23);

    sub_230DE9FF0(v1, v51, v52, v53, v54);
    if (*(v5 + 16))
    {
      v36 = *(v5 + 32);
      v37 = *(v5 + 64);
      *(v0 + 256) = *(v5 + 48);
      *(v0 + 272) = v37;
      *(v0 + 240) = v36;
      v38 = *(v5 + 80);
      v39 = *(v5 + 96);
      v40 = *(v5 + 112);
      *(v0 + 329) = *(v5 + 121);
      *(v0 + 304) = v39;
      *(v0 + 320) = v40;
      *(v0 + 288) = v38;
      sub_230D2D898(v0 + 240, v0 + 352);

      v2 = (v0 + 240);
      goto LABEL_42;
    }

    __break(1u);
    goto LABEL_47;
  }

  v7 = *(v5 + 16);
  if (!v7)
  {
LABEL_48:

    sub_230DE9FF0(v1, v51, v52, v53, v54);
    __break(1u);
    goto LABEL_49;
  }

  v8 = 32;
  v9 = *(v5 + 16);
  while (2)
  {
    v10 = *(v5 + v8);
    v11 = *(v5 + v8 + 32);
    *(v0 + 480) = *(v5 + v8 + 16);
    *(v0 + 496) = v11;
    *v2 = v10;
    v12 = *(v5 + v8 + 48);
    v13 = *(v5 + v8 + 64);
    v14 = *(v5 + v8 + 80);
    *(v0 + 553) = *(v5 + v8 + 89);
    *(v0 + 528) = v13;
    *(v0 + 544) = v14;
    *(v0 + 512) = v12;
    if (*(v0 + 568))
    {
      v15 = *(v0 + 560);
      if (v15)
      {
        v16 = *(v0 + 552);
LABEL_19:
        if (v16 == *(v0 + 1296) && v15 == *(v0 + 1304) || (sub_230E698C0() & 1) != 0)
        {
          sub_230D2D898(v0 + 464, v0 + 576);
          sub_230DE9FF0(v1, v51, v52, v53, v54);
          goto LABEL_42;
        }
      }
    }

    else
    {
      v15 = *(v0 + 480);
      if (v15)
      {
        v16 = *(v0 + 472);
        goto LABEL_19;
      }
    }

    v8 += 112;
    if (--v9)
    {
      continue;
    }

    break;
  }

  v30 = 32;
  do
  {
    v31 = *(v5 + v30 + 48);
    v32 = *(v5 + v30 + 64);
    v33 = *(v5 + v30 + 80);
    *(v0 + 777) = *(v5 + v30 + 89);
    v34 = *(v5 + v30 + 16);
    v35 = *(v5 + v30 + 32);
    *(v0 + 688) = *(v5 + v30);
    *(v0 + 704) = v34;
    *(v0 + 752) = v32;
    *(v0 + 768) = v33;
    *(v0 + 720) = v35;
    *(v0 + 736) = v31;
    if (*(v0 + 792))
    {
      if (!*(v0 + 784))
      {
        goto LABEL_37;
      }
    }

    else if (!*(v0 + 704))
    {
LABEL_37:
      sub_230D2D898(v0 + 688, v0 + 800);
      sub_230DE9FF0(v1, v51, v52, v53, v54);
      v2 = (v0 + 688);
      goto LABEL_42;
    }

    v30 += 112;
    --v7;
  }

  while (v7);

  sub_230DE9FF0(v1, v51, v52, v53, v54);
  if (!*(v5 + 16))
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v41 = *(v5 + 32);
  v42 = *(v5 + 64);
  v2 = (v0 + 912);
  *(v0 + 928) = *(v5 + 48);
  *(v0 + 944) = v42;
  *v50 = v41;
  v43 = *(v5 + 80);
  v44 = *(v5 + 96);
  v45 = *(v5 + 112);
  *(v0 + 1001) = *(v5 + 121);
  *(v0 + 976) = v44;
  *(v0 + 992) = v45;
  *(v0 + 960) = v43;
  sub_230D2D898(v50, v0 + 1024);

LABEL_42:
  v46 = v2[4];
  *v57 = v2[5];
  *&v57[9] = *(v2 + 89);
  v55 = v2[1];
  v47 = v2[2];
  v56 = v2[3];
  v48 = *(v0 + 1264);
  *v48 = *v2;
  v48[1] = v55;
  v48[2] = v47;
  v48[3] = v56;
  *(v48 + 89) = *&v57[9];
  v48[4] = v46;
  v48[5] = *v57;
  v22 = *(v0 + 8);
LABEL_43:

  return v22();
}

uint64_t ServicesIntelligenceProvider.prewarmWorkflow(_:requestContext:)(uint64_t a1, uint64_t a2)
{
  *(v3 + 680) = v2;
  v6 = sub_230E68D80();
  *(v3 + 688) = v6;
  *(v3 + 696) = *(v6 - 8);
  *(v3 + 704) = swift_task_alloc();
  v7 = *(a1 + 80);
  *(v3 + 80) = *(a1 + 64);
  *(v3 + 96) = v7;
  *(v3 + 112) = *(a1 + 96);
  v8 = *(a1 + 16);
  *(v3 + 16) = *a1;
  *(v3 + 32) = v8;
  v9 = *(a1 + 48);
  *(v3 + 48) = *(a1 + 32);
  *(v3 + 64) = v9;
  v10 = *(a2 + 16);
  *(v3 + 712) = *a2;
  *(v3 + 728) = v10;
  *(v3 + 744) = *(a2 + 32);

  return MEMORY[0x2822009F8](sub_230DE4E4C, v2, 0);
}

uint64_t sub_230DE4E4C()
{
  v27 = v0;
  v26[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 728);
  if (v1)
  {
    v2 = *(v0 + 744);
    v3 = *(v0 + 736);
    v4 = *(v0 + 712);
    v5 = *(v0 + 720);
    *(v0 + 768) = v2;
    *(v0 + 760) = v1;
    *(v0 + 592) = v4;
    *(v0 + 600) = v5;
    *(v0 + 608) = v1;
    *(v0 + 616) = v3 & 1;
    *(v0 + 617) = BYTE1(v3);
    *(v0 + 624) = v2;
    sub_230DC7630(v0 + 16, v0 + 488);

    sub_230D0585C(v4, v5, v1, v3, v2);
    sub_230E68D70();

    v6 = sub_230E68D60();
    v7 = sub_230E693E0();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v26[0] = v25;
      *v8 = 136315650;
      *(v8 + 4) = sub_230D7E620(0xD000000000000010, 0x8000000230E807F0, v26);
      *(v8 + 12) = 2080;
      *(v8 + 14) = sub_230D7E620(v5, v1, v26);
      *(v8 + 22) = 2080;
      v9 = RequestType.rawValue.getter();
      MEMORY[0x23191DA00](v9);

      v10 = sub_230D7E620(0x6C616E7265746E69, 0xE90000000000002ELL, v26);

      *(v8 + 24) = v10;
      _os_log_impl(&dword_230D02000, v6, v7, "[ServicesIntelligenceProvider][PerformanceTracking] Starting %s (correlationID: %s), originator: %s", v8, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x23191EAE0](v25, -1, -1);
      MEMORY[0x23191EAE0](v8, -1, -1);
    }

    if (v3 & 1) != 0 && ((v11 = RequestType.rawValue.getter(), v13 = v12, , LOBYTE(v11) = sub_230D33FDC(v11, v13, v2), , , (v11) || BYTE1(v3)))
    {
      sub_230E68950();
      *(v0 + 776) = CFAbsoluteTimeGetCurrent();
      *(v0 + 116) = 0u;
      *(v0 + 132) = 0u;
      *(v0 + 148) = 0u;
      *(v0 + 164) = 0u;
      *(v0 + 180) = 0u;
      *(v0 + 196) = 0u;
      *(v0 + 212) = 0u;
      *(v0 + 228) = 0u;
      *(v0 + 244) = 0u;
      *(v0 + 260) = 0u;
      *(v0 + 276) = 0u;
      *(v0 + 292) = 0u;
      *(v0 + 308) = 0u;
      *(v0 + 324) = 0u;
      *(v0 + 340) = 0u;
      *(v0 + 356) = 0u;
      *(v0 + 372) = 0u;
      *(v0 + 388) = 0u;
      *(v0 + 404) = 0u;
      *(v0 + 420) = 0u;
      *(v0 + 436) = 0u;
      *(v0 + 452) = 0u;
      *(v0 + 468) = 0u;
      *(v0 + 484) = 0;
      *(v0 + 588) = 93;
      v18 = task_info(*MEMORY[0x277D85F48], 0x16u, (v0 + 116), (v0 + 588));
      *(v0 + 824) = v18;
      v19 = 0.0;
      if (!v18)
      {
        v20 = *(v0 + 164);
        v21 = *(v0 + 236);
        v22 = __CFADD__(v20, v21);
        v23 = v20 + v21;
        if (v22)
        {
          __break(1u);
        }

        v19 = vcvtd_n_f64_u64(v23, 0x14uLL);
      }

      *(v0 + 800) = v19;
      *(v0 + 672) = 0;
      v14 = swift_task_alloc();
      *(v0 + 808) = v14;
      *v14 = v0;
      v15 = sub_230DE5A90;
    }

    else
    {
      v14 = swift_task_alloc();
      *(v0 + 784) = v14;
      *v14 = v0;
      v15 = sub_230DE5938;
    }

    v14[1] = v15;
    v24 = *(v0 + 680);

    return sub_230DE6060(v14, v0 + 16, v24, v0 + 592);
  }

  else
  {
    *(v0 + 113) = 32;
    v16 = swift_task_alloc();
    *(v0 + 752) = v16;
    *v16 = v0;
    v16[1] = sub_230DE5364;

    return static RequestContext.from(_:correlationID:)(v0 + 632, (v0 + 113), 0, 0);
  }
}

uint64_t sub_230DE5364()
{
  v1 = *(*v0 + 680);

  return MEMORY[0x2822009F8](sub_230DE54A0, v1, 0);
}

uint64_t sub_230DE54A0()
{
  v35 = v0;
  v34[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 632);
  v2 = *(v0 + 640);
  v3 = *(v0 + 648);
  v4 = *(v0 + 656);
  v5 = *(v0 + 657);
  v6 = *(v0 + 664);
  *(v0 + 768) = v6;
  *(v0 + 760) = v3;
  v7 = *(v0 + 744);
  v8 = *(v0 + 736);
  v9 = *(v0 + 728);
  v10 = *(v0 + 720);
  v11 = *(v0 + 712);
  v33 = v4;
  *(v0 + 592) = v1;
  v32 = v2;
  *(v0 + 600) = v2;
  *(v0 + 608) = v3;
  *(v0 + 616) = v4;
  v31 = v5;
  *(v0 + 617) = v5;
  *(v0 + 624) = v6;
  sub_230DC7630(v0 + 16, v0 + 488);

  sub_230D0585C(v11, v10, v9, v8, v7);
  sub_230E68D70();

  v12 = sub_230E68D60();
  v13 = sub_230E693E0();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v34[0] = v15;
    *v14 = 136315650;
    *(v14 + 4) = sub_230D7E620(0xD000000000000010, 0x8000000230E807F0, v34);
    *(v14 + 12) = 2080;
    *(v14 + 14) = sub_230D7E620(v32, v3, v34);
    *(v14 + 22) = 2080;
    v16 = RequestType.rawValue.getter();
    MEMORY[0x23191DA00](v16);

    v17 = sub_230D7E620(0x6C616E7265746E69, 0xE90000000000002ELL, v34);

    *(v14 + 24) = v17;
    _os_log_impl(&dword_230D02000, v12, v13, "[ServicesIntelligenceProvider][PerformanceTracking] Starting %s (correlationID: %s), originator: %s", v14, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23191EAE0](v15, -1, -1);
    MEMORY[0x23191EAE0](v14, -1, -1);

    if (!v33)
    {
      goto LABEL_7;
    }
  }

  else
  {

    if (!v33)
    {
LABEL_7:
      v21 = swift_task_alloc();
      *(v0 + 784) = v21;
      *v21 = v0;
      v22 = sub_230DE5938;
      goto LABEL_12;
    }
  }

  v18 = RequestType.rawValue.getter();
  v20 = v19;

  LOBYTE(v18) = sub_230D33FDC(v18, v20, v6);

  if ((v18 & 1) == 0 && !v31)
  {
    goto LABEL_7;
  }

  sub_230E68950();
  *(v0 + 776) = CFAbsoluteTimeGetCurrent();
  *(v0 + 116) = 0u;
  *(v0 + 132) = 0u;
  *(v0 + 148) = 0u;
  *(v0 + 164) = 0u;
  *(v0 + 180) = 0u;
  *(v0 + 196) = 0u;
  *(v0 + 212) = 0u;
  *(v0 + 228) = 0u;
  *(v0 + 244) = 0u;
  *(v0 + 260) = 0u;
  *(v0 + 276) = 0u;
  *(v0 + 292) = 0u;
  *(v0 + 308) = 0u;
  *(v0 + 324) = 0u;
  *(v0 + 340) = 0u;
  *(v0 + 356) = 0u;
  *(v0 + 372) = 0u;
  *(v0 + 388) = 0u;
  *(v0 + 404) = 0u;
  *(v0 + 420) = 0u;
  *(v0 + 436) = 0u;
  *(v0 + 452) = 0u;
  *(v0 + 468) = 0u;
  *(v0 + 484) = 0;
  *(v0 + 588) = 93;
  v23 = task_info(*MEMORY[0x277D85F48], 0x16u, (v0 + 116), (v0 + 588));
  *(v0 + 824) = v23;
  v24 = 0.0;
  if (!v23)
  {
    v25 = *(v0 + 164);
    v26 = *(v0 + 236);
    v27 = __CFADD__(v25, v26);
    v28 = v25 + v26;
    if (v27)
    {
      __break(1u);
    }

    v24 = vcvtd_n_f64_u64(v28, 0x14uLL);
  }

  *(v0 + 800) = v24;
  *(v0 + 672) = 0;
  v21 = swift_task_alloc();
  *(v0 + 808) = v21;
  *v21 = v0;
  v22 = sub_230DE5A90;
LABEL_12:
  v21[1] = v22;
  v29 = *(v0 + 680);

  return sub_230DE6060(v21, v0 + 16, v29, v0 + 592);
}

uint64_t sub_230DE5938()
{
  v2 = *v1;
  *(*v1 + 792) = v0;

  v3 = *(v2 + 680);
  if (v0)
  {
    v4 = sub_230DE5F78;
  }

  else
  {
    v4 = sub_230DE5E80;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_230DE5A90()
{
  v2 = *v1;
  *(*v1 + 816) = v0;

  v3 = *(v2 + 680);
  if (v0)
  {
    v4 = sub_230DE5D1C;
  }

  else
  {
    v4 = sub_230DE5BE8;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_230DE5BE8()
{
  v1 = *(v0 + 704);
  v2 = *(v0 + 696);
  v3 = *(v0 + 688);
  sub_230D38814(32, *(v0 + 800), *(v0 + 824) != 0, v0 + 592, (v0 + 672), *(v0 + 776));
  (*(v2 + 8))(v1, v3);
  sub_230D8151C(v0 + 16);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_230DE5D1C(uint64_t a1)
{
  v2 = *(v1 + 816);
  v3 = *(v1 + 800);
  v4 = *(v1 + 776);
  v5 = *(v1 + 704);
  v6 = *(v1 + 696);
  v7 = *(v1 + 688);
  v8 = *(v1 + 824) != 0;
  *(v1 + 672) = v2;
  swift_willThrow();
  v9 = v2;
  sub_230D38814(32, v3, v8, v1 + 592, (v1 + 672), v4);
  MEMORY[0x23191E910](v2);
  (*(v6 + 8))(v5, v7);
  sub_230D8151C(v1 + 16);

  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();

  v10 = *(v1 + 8);

  return v10();
}

uint64_t sub_230DE5E80()
{
  (*(v0[87] + 8))(v0[88], v0[86]);
  sub_230D8151C((v0 + 2));

  v1 = v0[1];

  return v1();
}

uint64_t sub_230DE5F78()
{
  (*(v0[87] + 8))(v0[88], v0[86]);
  sub_230D8151C((v0 + 2));

  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();

  v1 = v0[1];

  return v1();
}

uint64_t sub_230DE6060(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 1248) = a4;
  *(v4 + 1240) = a3;
  *(v4 + 1232) = a2;
  *(v4 + 137) = *a4;
  *(v4 + 1256) = *(a4 + 8);
  *(v4 + 138) = *(a4 + 24);
  *(v4 + 1272) = *(a4 + 32);
  return MEMORY[0x2822009F8](sub_230DE60AC, a3, 0);
}

uint64_t sub_230DE60AC()
{
  v1 = *(v0 + 1232);
  if (v1[6])
  {
    v2 = *(v0 + 1272);
    v3 = *(v0 + 139);
    v4 = *(v0 + 138);
    v5 = *(v0 + 1264);
    v6 = *(v0 + 1256);
    v7 = *(v0 + 137);
    v8 = *(v0 + 1248);
    v9 = *v1;
    v10 = v1[2];
    *(v0 + 848) = v1[1];
    *(v0 + 864) = v10;
    *(v0 + 832) = v9;
    v11 = v1[3];
    v12 = v1[4];
    v13 = v1[5];
    *(v0 + 928) = *(v1 + 96);
    *(v0 + 896) = v12;
    *(v0 + 912) = v13;
    *(v0 + 880) = v11;
    *(v0 + 1096) = v7;
    *(v0 + 1104) = v6;
    *(v0 + 1112) = v5;
    *(v0 + 1120) = v4 & 1 | (v3 << 8);
    *(v0 + 1128) = v2;
    sub_230D1CDE0(v8, v0 + 1136);
    v14 = swift_task_alloc();
    *(v0 + 1280) = v14;
    *v14 = v0;
    v14[1] = sub_230DE62A0;

    return sub_230DE0184(v0 + 272, v0 + 832, (v0 + 1096));
  }

  else
  {
    v16 = *(v0 + 1272);
    v17 = *(v0 + 1264);
    v18 = *(v0 + 137);
    v19 = *(v0 + 138) & 1 | (*(v0 + 139) << 8);
    v20 = *(v0 + 1256);
    v21 = *(v0 + 1248);
    v22 = *v1;
    v23 = v1[2];
    *(v0 + 640) = v1[1];
    *(v0 + 656) = v23;
    *(v0 + 624) = v22;
    v24 = v1[3];
    v25 = v1[4];
    v26 = v1[5];
    *(v0 + 720) = *(v1 + 96);
    *(v0 + 688) = v25;
    *(v0 + 704) = v26;
    *(v0 + 672) = v24;
    *(v0 + 936) = v18;
    *(v0 + 944) = v20;
    *(v0 + 952) = v17;
    *(v0 + 960) = v19;
    *(v0 + 968) = v16;
    sub_230D1CDE0(v21, v0 + 976);
    v27 = swift_task_alloc();
    *(v0 + 1288) = v27;
    *v27 = v0;
    v27[1] = sub_230DE65F0;

    return sub_230DE4248(v0 + 400, v0 + 624, v0 + 936);
  }
}

uint64_t sub_230DE62A0()
{
  v1 = *v0;
  v2 = (*v0)[155];

  sub_230D666B4(v1[137], v1[138], v1[139], v1[140], v1[141]);

  return MEMORY[0x2822009F8](sub_230DE6424, v2, 0);
}

uint64_t sub_230DE6424()
{
  v1 = *(v0 + 336);
  v2 = *(v0 + 352);
  *(v0 + 208) = v1;
  *(v0 + 224) = v2;
  v3 = *(v0 + 368);
  *(v0 + 240) = v3;
  v4 = *(v0 + 272);
  v5 = *(v0 + 288);
  *(v0 + 144) = v4;
  *(v0 + 160) = v5;
  v6 = *(v0 + 304);
  v7 = *(v0 + 320);
  *(v0 + 176) = v6;
  *(v0 + 192) = v7;
  v8 = *(v0 + 377);
  *(v0 + 249) = v8;
  *(v0 + 16) = v4;
  *(v0 + 32) = v5;
  *(v0 + 48) = v6;
  *(v0 + 64) = v7;
  *(v0 + 80) = v1;
  *(v0 + 96) = v2;
  *(v0 + 112) = v3;
  *(v0 + 121) = v8;
  if (sub_230D666F8(v0 + 16) == 1)
  {
    v9 = *(v0 + 1272);
    v10 = *(v0 + 1264);
    v11 = *(v0 + 137);
    v12 = *(v0 + 138) & 1 | (*(v0 + 139) << 8);
    v13 = *(v0 + 1256);
    v14 = *(v0 + 1248);
    v15 = *(v0 + 1232);
    v16 = *v15;
    v17 = v15[2];
    *(v0 + 640) = v15[1];
    *(v0 + 656) = v17;
    *(v0 + 624) = v16;
    v18 = v15[3];
    v19 = v15[4];
    v20 = v15[5];
    *(v0 + 720) = *(v15 + 96);
    *(v0 + 688) = v19;
    *(v0 + 704) = v20;
    *(v0 + 672) = v18;
    *(v0 + 936) = v11;
    *(v0 + 944) = v13;
    *(v0 + 952) = v10;
    *(v0 + 960) = v12;
    *(v0 + 968) = v9;
    sub_230D1CDE0(v14, v0 + 976);
    v21 = swift_task_alloc();
    *(v0 + 1288) = v21;
    *v21 = v0;
    v21[1] = sub_230DE65F0;

    return sub_230DE4248(v0 + 400, v0 + 624, v0 + 936);
  }

  else
  {
    sub_230D2D9F8(v0 + 144, &qword_27DB5CCE8, &unk_230E7ADB8);
    sub_230E68950();
    v23 = *(v0 + 8);

    return v23();
  }
}

uint64_t sub_230DE65F0()
{
  v2 = *v1;
  (*v1)[162] = v0;

  if (v0)
  {
    v3 = v2[155];
    sub_230D666B4(v2[117], v2[118], v2[119], v2[120], v2[121]);
    v4 = sub_230DE6CA0;
  }

  else
  {
    v3 = v2[155];
    sub_230D666B4(v2[117], v2[118], v2[119], v2[120], v2[121]);
    v4 = sub_230DE673C;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_230DE673C()
{
  *(v0 + 601) = *(v0 + 489);
  v1 = *(v0 + 480);
  *(v0 + 576) = *(v0 + 464);
  *(v0 + 592) = v1;
  v2 = *(v0 + 416);
  *(v0 + 512) = *(v0 + 400);
  *(v0 + 528) = v2;
  v3 = *(v0 + 448);
  *(v0 + 544) = *(v0 + 432);
  *(v0 + 560) = v3;
  if (*(v0 + 616))
  {
    v4 = *(v0 + 1248);
    v5 = *(v0 + 1232);
    sub_230D1CDE0(v4, v0 + 1016);
    sub_230D1CDE0(v4, v0 + 1056);
    sub_230DC7630(v5, v0 + 728);

    v6 = swift_task_alloc();
    *(v0 + 1304) = v6;
    *v6 = v0;
    v6[1] = sub_230DE68CC;
    v7 = *(v0 + 1248);
    v8 = *(v0 + 1240);
    v9 = *(v0 + 1232);

    return sub_230D7EC1C(34, v7, v8, v9, v8, v7);
  }

  else
  {
    sub_230E68950();
    sub_230D2D8F4(v0 + 512);
    v11 = *(v0 + 8);

    return v11();
  }
}

uint64_t sub_230DE68CC(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 1312) = a1;
  *(v4 + 1320) = v1;

  v5 = *(v3 + 1248);
  v6 = *(v3 + 1240);
  sub_230D1CE3C(v5);
  if (v1)
  {
    v7 = sub_230DE6C34;
  }

  else
  {
    v7 = sub_230DE6A20;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_230DE6A20()
{
  v1 = v0[165];
  sub_230D1CE3C(v0[156]);
  sub_230E68C60();
  if (v1)
  {
    sub_230E69540();
    v0[150] = 0;
    v0[151] = 0xE000000000000000;
    MEMORY[0x23191DA00](0xD000000000000043, 0x8000000230E83790);
    v0[152] = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D890, &qword_230E6C200);
    sub_230E695F0();
    sub_230E68950();

    sub_230E69540();

    swift_getErrorValue();
    v2 = sub_230E69960();
    MEMORY[0x23191DA00](v2);

    sub_230D66764();
    swift_allocError();
    *v3 = 0xD000000000000013;
    *(v3 + 8) = 0x8000000230E837E0;
    *(v3 + 16) = 0;
    swift_willThrow();
    MEMORY[0x23191E910](v1);
  }

  else
  {
    sub_230E68950();
  }

  sub_230D2D8F4((v0 + 64));
  v4 = v0[1];

  return v4();
}

uint64_t sub_230DE6C34()
{
  sub_230D1CE3C(*(v0 + 1248));
  sub_230D2D8F4(v0 + 512);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_230DE6CB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 200) = a3;
  *(v4 + 208) = a4;
  *(v4 + 184) = a1;
  *(v4 + 192) = a2;
  *(v4 + 312) = *a4;
  *(v4 + 216) = *(a4 + 8);
  *(v4 + 313) = *(a4 + 24);
  *(v4 + 232) = *(a4 + 32);
  return MEMORY[0x2822009F8](sub_230DE6D00, a3, 0);
}

uint64_t sub_230DE6D00()
{
  v1 = v0[24];
  v2 = *v1;
  v0[30] = *v1;
  v3 = v1[1];
  v0[31] = v3;
  if (v1[9])
  {

    v4 = getpid();
  }

  else
  {
    v4 = v1[8];
  }

  v0[32] = v4;
  v5 = v0[26];
  sub_230E69540();
  MEMORY[0x23191DA00](0xD000000000000048, 0x8000000230E83BC0);
  MEMORY[0x23191DA00](v2, v3);
  MEMORY[0x23191DA00](0xD000000000000016, 0x8000000230E82630);
  v0[22] = v4;
  v6 = sub_230E69890();
  MEMORY[0x23191DA00](v6);

  sub_230E68950();

  sub_230D1CDE0(v5, (v0 + 2));
  sub_230D1CDE0(v5, (v0 + 7));

  v7 = swift_task_alloc();
  v0[33] = v7;
  *v7 = v0;
  v7[1] = sub_230DE6EE8;
  v9 = v0[25];
  v8 = v0[26];

  return sub_230D6F7D0(39, v8, v9, v9);
}

uint64_t sub_230DE6EE8(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 272) = a1;
  *(v4 + 280) = v1;

  v5 = *(v3 + 208);
  v6 = *(v3 + 200);
  sub_230D1CE3C(v5);
  if (v1)
  {
    v7 = sub_230DE7428;
  }

  else
  {
    v7 = sub_230DE7038;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}