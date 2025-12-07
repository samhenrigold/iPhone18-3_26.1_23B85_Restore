uint64_t MLFewShotSoundClassifier.TemporalClassifier.forward(_:)(uint64_t a1)
{
  v25 = a1;
  v24 = v1;
  v2 = type metadata accessor for MLFewShotSoundClassifier.ConvolutionalNetwork.Output(0);
  v3 = *(v2 - 8);
  v4 = v2;
  v22 = v2;
  v5 = *(v3 + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v8 = type metadata accessor for MLFewShotSoundClassifier.ConvolutionalNetwork(0);
  v9 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type MLFewShotSoundClassifier.ConvolutionalNetwork and conformance MLFewShotSoundClassifier.ConvolutionalNetwork, type metadata accessor for MLFewShotSoundClassifier.ConvolutionalNetwork, &protocol conformance descriptor for MLFewShotSoundClassifier.ConvolutionalNetwork);
  Layer.callAsFunction(_:)(v25, v8, v9);
  type metadata accessor for MLFewShotSoundClassifier.TemporalClassifier(0);
  v10 = &v21[*(v4 + 28)];
  v23 = v21;
  v25 = type metadata accessor for MLFewShotSoundClassifier.TemporalClassifier.Output(0);
  v11 = type metadata accessor for MLFewShotSoundClassifier.MLP(0);
  v12 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type MLFewShotSoundClassifier.MLP and conformance MLFewShotSoundClassifier.MLP, type metadata accessor for MLFewShotSoundClassifier.MLP, &protocol conformance descriptor for MLFewShotSoundClassifier.MLP);
  Layer.callAsFunction(_:)(v10, v11, v12);
  v13 = type metadata accessor for Tensor(0);
  v14 = *(*(v13 - 8) + 16);
  v15 = v24;
  v14(v24, v21, v13);
  v16 = v22;
  v17 = v25;
  v14(v15 + *(v25 + 20), &v21[*(v22 + 20)], v13);
  v18 = *(v16 + 24);
  v19 = v23;
  v14(v15 + *(v17 + 24), &v23[v18], v13);
  return outlined destroy of MLFewShotSoundClassifier.ConvolutionalNetwork.Output(v19);
}

uint64_t outlined destroy of MLFewShotSoundClassifier.ConvolutionalNetwork.Output(uint64_t a1)
{
  v1 = type metadata accessor for MLFewShotSoundClassifier.ConvolutionalNetwork.Output(0);
  (*(*(v1 - 8) + 8))(a1, v1);
  return a1;
}

uint64_t lazy protocol witness table accessor for type MLFewShotSoundClassifier.CausalPadding and conformance MLFewShotSoundClassifier.CausalPadding()
{
  result = lazy protocol witness table cache variable for type MLFewShotSoundClassifier.CausalPadding and conformance MLFewShotSoundClassifier.CausalPadding;
  if (!lazy protocol witness table cache variable for type MLFewShotSoundClassifier.CausalPadding and conformance MLFewShotSoundClassifier.CausalPadding)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for MLFewShotSoundClassifier.CausalPadding, &type metadata for MLFewShotSoundClassifier.CausalPadding);
    lazy protocol witness table cache variable for type MLFewShotSoundClassifier.CausalPadding and conformance MLFewShotSoundClassifier.CausalPadding = result;
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLFewShotSoundClassifier.CausalPadding and conformance MLFewShotSoundClassifier.CausalPadding;
  if (!lazy protocol witness table cache variable for type MLFewShotSoundClassifier.CausalPadding and conformance MLFewShotSoundClassifier.CausalPadding)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for MLFewShotSoundClassifier.CausalPadding, &type metadata for MLFewShotSoundClassifier.CausalPadding);
    lazy protocol witness table cache variable for type MLFewShotSoundClassifier.CausalPadding and conformance MLFewShotSoundClassifier.CausalPadding = result;
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLFewShotSoundClassifier.CausalPadding and conformance MLFewShotSoundClassifier.CausalPadding;
  if (!lazy protocol witness table cache variable for type MLFewShotSoundClassifier.CausalPadding and conformance MLFewShotSoundClassifier.CausalPadding)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for MLFewShotSoundClassifier.CausalPadding, &type metadata for MLFewShotSoundClassifier.CausalPadding);
    lazy protocol witness table cache variable for type MLFewShotSoundClassifier.CausalPadding and conformance MLFewShotSoundClassifier.CausalPadding = result;
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLFewShotSoundClassifier.CausalPadding and conformance MLFewShotSoundClassifier.CausalPadding;
  if (!lazy protocol witness table cache variable for type MLFewShotSoundClassifier.CausalPadding and conformance MLFewShotSoundClassifier.CausalPadding)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for MLFewShotSoundClassifier.CausalPadding, &type metadata for MLFewShotSoundClassifier.CausalPadding);
    lazy protocol witness table cache variable for type MLFewShotSoundClassifier.CausalPadding and conformance MLFewShotSoundClassifier.CausalPadding = result;
  }

  return result;
}

uint64_t outlined init with copy of MLFewShotSoundClassifier.CausalConv1D(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for MLFewShotSoundClassifier.CausalConv1D(0);
  (*(*(v2 - 8) + 16))(a2, a1, v2);
  return a2;
}

uint64_t outlined init with take of MLFewShotSoundClassifier.LeakyConv2D(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for MLFewShotSoundClassifier.LeakyConv2D(0);
  (*(*(v2 - 8) + 32))(a2, a1, v2);
  return a2;
}

uint64_t *initializeBufferWithCopyOfBuffer for MLFewShotSoundClassifier.TemporalClassifier.Output(uint64_t *a1, uint64_t *a2, int *a3)
{
  return initializeBufferWithCopyOfBuffer for MLFewShotSoundClassifier.TemporalClassifier.Output(a1, a2, a3);
}

{
  v3 = a1;
  v4 = *(*(a3 - 1) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + ((v4 + 16) & ~v4));
  }

  else
  {
    v6 = type metadata accessor for Tensor(0);
    v7 = *(*(v6 - 8) + 16);
    v7(a1, a2, v6);
    v7((a1 + a3[5]), (a2 + a3[5]), v6);
    v7((a1 + a3[6]), (a2 + a3[6]), v6);
    v7((a1 + a3[7]), (a2 + a3[7]), v6);
  }

  return v3;
}

uint64_t destroy for MLFewShotSoundClassifier.TemporalClassifier.Output(uint64_t a1, int *a2)
{
  return destroy for MLFewShotSoundClassifier.TemporalClassifier.Output(a1, a2);
}

{
  v2 = type metadata accessor for Tensor(0);
  v3 = *(*(v2 - 8) + 8);
  v3(a1, v2);
  v3(a1 + a2[5], v2);
  v3(a1 + a2[6], v2);
  return (v3)(a1 + a2[7], v2);
}

uint64_t initializeWithCopy for MLFewShotSoundClassifier.TemporalClassifier.Output(uint64_t a1, uint64_t a2, int *a3)
{
  return initializeWithCopy for MLFewShotSoundClassifier.TemporalClassifier.Output(a1, a2, a3);
}

{
  v4 = type metadata accessor for Tensor(0);
  v5 = *(*(v4 - 8) + 16);
  v5(a1, a2, v4);
  v5(a1 + a3[5], a2 + a3[5], v4);
  v5(a1 + a3[6], a2 + a3[6], v4);
  v5(a1 + a3[7], a3[7] + a2, v4);
  return a1;
}

uint64_t assignWithCopy for MLFewShotSoundClassifier.TemporalClassifier.Output(uint64_t a1, uint64_t a2, int *a3)
{
  return assignWithCopy for MLFewShotSoundClassifier.TemporalClassifier.Output(a1, a2, a3);
}

{
  v4 = type metadata accessor for Tensor(0);
  v5 = *(*(v4 - 8) + 24);
  v5(a1, a2, v4);
  v5(a1 + a3[5], a2 + a3[5], v4);
  v5(a1 + a3[6], a2 + a3[6], v4);
  v5(a1 + a3[7], a3[7] + a2, v4);
  return a1;
}

uint64_t initializeWithTake for MLFewShotSoundClassifier.TemporalClassifier.Output(uint64_t a1, uint64_t a2, int *a3)
{
  return initializeWithTake for MLFewShotSoundClassifier.TemporalClassifier.Output(a1, a2, a3);
}

{
  v4 = type metadata accessor for Tensor(0);
  v5 = *(*(v4 - 8) + 32);
  v5(a1, a2, v4);
  v5(a1 + a3[5], a2 + a3[5], v4);
  v5(a1 + a3[6], a2 + a3[6], v4);
  v5(a1 + a3[7], a3[7] + a2, v4);
  return a1;
}

uint64_t assignWithTake for MLFewShotSoundClassifier.TemporalClassifier.Output(uint64_t a1, uint64_t a2, int *a3)
{
  return assignWithTake for MLFewShotSoundClassifier.TemporalClassifier.Output(a1, a2, a3);
}

{
  v4 = type metadata accessor for Tensor(0);
  v5 = *(*(v4 - 8) + 40);
  v5(a1, a2, v4);
  v5(a1 + a3[5], a2 + a3[5], v4);
  v5(a1 + a3[6], a2 + a3[6], v4);
  v5(a1 + a3[7], a3[7] + a2, v4);
  return a1;
}

uint64_t type metadata completion function for MLFewShotSoundClassifier.TemporalClassifier.Output(uint64_t a1)
{
  result = type metadata accessor for Tensor(319);
  if (v2 <= 0x3F)
  {
    v3[0] = *(result - 8) + 64;
    v3[1] = v3[0];
    v3[2] = v3[0];
    v3[3] = v3[0];
    swift_initStructMetadata(a1, 256, 4, v3, a1 + 16);
    return 0;
  }

  return result;
}

uint64_t AppleDeveloperAssetStore.__deallocating_deinit()
{
  v1 = v0 + OBJC_IVAR____TtC8CreateML24AppleDeveloperAssetStore_localStoreURL;
  v2 = type metadata accessor for URL(0);
  (*(*(v2 - 8) + 8))(v1, v2);
  return swift_deallocClassInstance(v0, *(*v0 + 48), *(*v0 + 52));
}

uint64_t type metadata accessor for AppleDeveloperAssetStore(uint64_t a1)
{
  result = type metadata singleton initialization cache for AppleDeveloperAssetStore;
  if (!type metadata singleton initialization cache for AppleDeveloperAssetStore)
  {
    return swift_getSingletonMetadata(a1, &nominal type descriptor for AppleDeveloperAssetStore);
  }

  return result;
}

uint64_t type metadata completion function for AppleDeveloperAssetStore(uint64_t a1)
{
  v4 = v1;
  result = type metadata accessor for URL(319);
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_updateClassMetadata2(a1, 256, 1, &v4, a1 + 80);
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t AssetCoordinator.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
  return swift_deallocClassInstance(v0, 96, 7);
}

char *initializeBufferWithCopyOfBuffer for MLActivityClassifier.DataSource.Columns(char *a1, uint64_t *a2, int *a3)
{
  v4 = *(*(a3 - 1) + 80);
  v5 = *a2;
  *a1 = *a2;
  if ((v4 & 0x20000) != 0)
  {
    a1 = (v5 + ((v4 + 16) & ~v4));
  }

  else
  {
    v7 = a3[5];

    v8 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<String>);
    v21 = *(*(v8 - 8) + 16);
    v21(&a1[v7], a2 + v7, v8);
    v9 = a3[6];
    __dst = &a1[v9];
    v10 = a2 + v9;
    if (__swift_getEnumTagSinglePayload(v10, 1, v8))
    {
      v11 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<String>?);
      memcpy(__dst, v10, *(*(v11 - 8) + 64));
    }

    else
    {
      v21(__dst, v10, v8);
      __swift_storeEnumTagSinglePayload(__dst, 0, 1, v8);
    }

    v12 = a3[7];
    __dsta = &a1[v12];
    v13 = a2 + v12;
    v14 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Double>);
    if (__swift_getEnumTagSinglePayload(v13, 1, v14))
    {
      v15 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Double>?);
      memcpy(__dsta, v13, *(*(v15 - 8) + 64));
    }

    else
    {
      (*(*(v14 - 8) + 16))(__dsta, v13, v14);
      __swift_storeEnumTagSinglePayload(__dsta, 0, 1, v14);
    }

    v16 = a3[8];
    v17 = &a1[v16];
    v18 = a2 + v16;
    if (__swift_getEnumTagSinglePayload(a2 + v16, 1, v14))
    {
      v19 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Double>?);
      memcpy(v17, v18, *(*(v19 - 8) + 64));
    }

    else
    {
      (*(*(v14 - 8) + 16))(v17, v18, v14);
      __swift_storeEnumTagSinglePayload(v17, 0, 1, v14);
    }
  }

  return a1;
}

uint64_t destroy for MLActivityClassifier.DataSource.Columns(void *a1, int *a2)
{
  *a1;
  v2 = a1 + a2[5];
  v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<String>);
  v4 = *(*(v3 - 8) + 8);
  v4(v2, v3);
  v5 = a1 + a2[6];
  if (!__swift_getEnumTagSinglePayload(v5, 1, v3))
  {
    v4(v5, v3);
  }

  v6 = a1 + a2[7];
  v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Double>);
  if (!__swift_getEnumTagSinglePayload(v6, 1, v7))
  {
    (*(*(v7 - 8) + 8))(v6, v7);
  }

  v8 = a1 + a2[8];
  result = __swift_getEnumTagSinglePayload(v8, 1, v7);
  if (!result)
  {
    return (*(*(v7 - 8) + 8))(v8, v7);
  }

  return result;
}

char *initializeWithCopy for MLActivityClassifier.DataSource.Columns(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(a3 + 20);

  v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<String>);
  v20 = *(*(v5 - 8) + 16);
  v20(&a1[v4], &a2[v4], v5);
  v21 = a3;
  v6 = *(a3 + 24);
  v7 = &a1[v6];
  v8 = &a2[v6];
  if (__swift_getEnumTagSinglePayload(v8, 1, v5))
  {
    v9 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<String>?);
    memcpy(v7, v8, *(*(v9 - 8) + 64));
  }

  else
  {
    v20(v7, v8, v5);
    __swift_storeEnumTagSinglePayload(v7, 0, 1, v5);
  }

  v10 = *(v21 + 28);
  v11 = &a1[v10];
  v12 = &a2[v10];
  v13 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Double>);
  if (__swift_getEnumTagSinglePayload(v12, 1, v13))
  {
    v14 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Double>?);
    memcpy(v11, v12, *(*(v14 - 8) + 64));
  }

  else
  {
    (*(*(v13 - 8) + 16))(v11, v12, v13);
    __swift_storeEnumTagSinglePayload(v11, 0, 1, v13);
  }

  v15 = *(v21 + 32);
  v16 = &a1[v15];
  v17 = &a2[v15];
  if (__swift_getEnumTagSinglePayload(&a2[v15], 1, v13))
  {
    v18 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Double>?);
    memcpy(v16, v17, *(*(v18 - 8) + 64));
  }

  else
  {
    (*(*(v13 - 8) + 16))(v16, v17, v13);
    __swift_storeEnumTagSinglePayload(v16, 0, 1, v13);
  }

  return a1;
}

char *assignWithCopy for MLActivityClassifier.DataSource.Columns(char *a1, char *a2, uint64_t a3)
{
  v4 = *a1;
  *a1 = *a2;

  v4;
  v5 = *(a3 + 20);
  v6 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<String>);
  v32 = *(v6 - 8);
  v30 = *(v32 + 24);
  v30(&a1[v5], &a2[v5], v6);
  v31 = a3;
  v7 = *(a3 + 24);
  v8 = &a1[v7];
  v9 = &a2[v7];
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v8, 1, v6);
  v11 = __swift_getEnumTagSinglePayload(v9, 1, v6);
  if (EnumTagSinglePayload)
  {
    if (!v11)
    {
      (*(v32 + 16))(v8, v9, v6);
      __swift_storeEnumTagSinglePayload(v8, 0, 1, v6);
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (v11)
  {
    (*(v32 + 8))(v8, v6, v12, v30);
LABEL_6:
    v13 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<String>?);
    memcpy(v8, v9, *(*(v13 - 8) + 64));
    goto LABEL_7;
  }

  v30(v8, v9, v6);
LABEL_7:
  v14 = *(v31 + 28);
  v15 = &a1[v14];
  v16 = &a2[v14];
  v17 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Double>);
  v18 = __swift_getEnumTagSinglePayload(v15, 1, v17);
  v19 = __swift_getEnumTagSinglePayload(v16, 1, v17);
  if (v18)
  {
    if (!v19)
    {
      (*(*(v17 - 8) + 16))(v15, v16, v17);
      __swift_storeEnumTagSinglePayload(v15, 0, 1, v17);
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v20 = *(v17 - 8);
  if (v19)
  {
    (*(v20 + 8))(v15, v17);
LABEL_12:
    v21 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Double>?);
    memcpy(v15, v16, *(*(v21 - 8) + 64));
    goto LABEL_13;
  }

  (*(v20 + 24))(v15, v16, v17);
LABEL_13:
  v22 = *(v31 + 32);
  v23 = &a1[v22];
  v24 = &a2[v22];
  v25 = __swift_getEnumTagSinglePayload(&a1[v22], 1, v17);
  v26 = __swift_getEnumTagSinglePayload(v24, 1, v17);
  if (!v25)
  {
    v27 = *(v17 - 8);
    if (!v26)
    {
      (*(v27 + 24))(v23, v24, v17);
      return a1;
    }

    (*(v27 + 8))(v23, v17);
    goto LABEL_18;
  }

  if (v26)
  {
LABEL_18:
    v28 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Double>?);
    memcpy(v23, v24, *(*(v28 - 8) + 64));
    return a1;
  }

  (*(*(v17 - 8) + 16))(v23, v24, v17);
  __swift_storeEnumTagSinglePayload(v23, 0, 1, v17);
  return a1;
}

char *initializeWithTake for MLActivityClassifier.DataSource.Columns(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(a3 + 20);
  v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<String>);
  v20 = *(*(v5 - 8) + 32);
  v20(&a1[v4], &a2[v4], v5);
  v21 = a3;
  v6 = *(a3 + 24);
  v7 = &a1[v6];
  v8 = &a2[v6];
  if (__swift_getEnumTagSinglePayload(v8, 1, v5))
  {
    v9 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<String>?);
    memcpy(v7, v8, *(*(v9 - 8) + 64));
  }

  else
  {
    v20(v7, v8, v5);
    __swift_storeEnumTagSinglePayload(v7, 0, 1, v5);
  }

  v10 = *(v21 + 28);
  v11 = &a1[v10];
  v12 = &a2[v10];
  v13 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Double>);
  if (__swift_getEnumTagSinglePayload(v12, 1, v13))
  {
    v14 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Double>?);
    memcpy(v11, v12, *(*(v14 - 8) + 64));
  }

  else
  {
    (*(*(v13 - 8) + 32))(v11, v12, v13);
    __swift_storeEnumTagSinglePayload(v11, 0, 1, v13);
  }

  v15 = *(v21 + 32);
  v16 = &a1[v15];
  v17 = &a2[v15];
  if (__swift_getEnumTagSinglePayload(&a2[v15], 1, v13))
  {
    v18 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Double>?);
    memcpy(v16, v17, *(*(v18 - 8) + 64));
  }

  else
  {
    (*(*(v13 - 8) + 32))(v16, v17, v13);
    __swift_storeEnumTagSinglePayload(v16, 0, 1, v13);
  }

  return a1;
}

char *assignWithTake for MLActivityClassifier.DataSource.Columns(char *a1, char *a2, uint64_t a3)
{
  v5 = *a1;
  *a1 = *a2;
  v5;
  v6 = *(a3 + 20);
  v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<String>);
  v33 = *(v7 - 8);
  v31 = *(v33 + 40);
  v31(&a1[v6], &a2[v6], v7);
  v32 = a3;
  v8 = *(a3 + 24);
  v9 = &a1[v8];
  v10 = &a2[v8];
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v9, 1, v7);
  v12 = __swift_getEnumTagSinglePayload(v10, 1, v7);
  if (EnumTagSinglePayload)
  {
    if (!v12)
    {
      (*(v33 + 32))(v9, v10, v7);
      __swift_storeEnumTagSinglePayload(v9, 0, 1, v7);
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (v12)
  {
    (*(v33 + 8))(v9, v7, v13, v31);
LABEL_6:
    v14 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<String>?);
    memcpy(v9, v10, *(*(v14 - 8) + 64));
    goto LABEL_7;
  }

  v31(v9, v10, v7);
LABEL_7:
  v15 = *(v32 + 28);
  v16 = &a1[v15];
  v17 = &a2[v15];
  v18 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Double>);
  v19 = __swift_getEnumTagSinglePayload(v16, 1, v18);
  v20 = __swift_getEnumTagSinglePayload(v17, 1, v18);
  if (v19)
  {
    if (!v20)
    {
      (*(*(v18 - 8) + 32))(v16, v17, v18);
      __swift_storeEnumTagSinglePayload(v16, 0, 1, v18);
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v21 = *(v18 - 8);
  if (v20)
  {
    (*(v21 + 8))(v16, v18);
LABEL_12:
    v22 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Double>?);
    memcpy(v16, v17, *(*(v22 - 8) + 64));
    goto LABEL_13;
  }

  (*(v21 + 40))(v16, v17, v18);
LABEL_13:
  v23 = *(v32 + 32);
  v24 = &a1[v23];
  v25 = &a2[v23];
  v26 = __swift_getEnumTagSinglePayload(&a1[v23], 1, v18);
  v27 = __swift_getEnumTagSinglePayload(v25, 1, v18);
  if (!v26)
  {
    v28 = *(v18 - 8);
    if (!v27)
    {
      (*(v28 + 40))(v24, v25, v18);
      return a1;
    }

    (*(v28 + 8))(v24, v18);
    goto LABEL_18;
  }

  if (v27)
  {
LABEL_18:
    v29 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Double>?);
    memcpy(v24, v25, *(*(v29 - 8) + 64));
    return a1;
  }

  (*(*(v18 - 8) + 32))(v24, v25, v18);
  __swift_storeEnumTagSinglePayload(v24, 0, 1, v18);
  return a1;
}

uint64_t sub_160465(void *a1, unsigned int a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    result = 0;
    if ((*a1 & 0xFFFFFFFF00000001) == 0)
    {
      return (*a1 >> 1) + 1;
    }
  }

  else
  {
    v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<String>);
    if (*(*(v5 - 8) + 84) == a2)
    {
      v6 = a3[5];
    }

    else
    {
      v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<String>?);
      if (*(*(v5 - 8) + 84) == a2)
      {
        v6 = a3[6];
      }

      else
      {
        v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Double>?);
        v6 = a3[7];
      }
    }

    return __swift_getEnumTagSinglePayload(a1 + v6, a2, v5);
  }

  return result;
}

void sub_160518(void *a1, unsigned int a2, int a3, int *a4)
{
  if (a3 == 0x7FFFFFFF)
  {
    *a1 = 2 * (a2 - 1);
  }

  else
  {
    v6 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<String>);
    if (*(*(v6 - 8) + 84) == a3)
    {
      v7 = a4[5];
    }

    else
    {
      v6 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<String>?);
      if (*(*(v6 - 8) + 84) == a3)
      {
        v7 = a4[6];
      }

      else
      {
        v6 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Double>?);
        v7 = a4[7];
      }
    }

    __swift_storeEnumTagSinglePayload(a1 + v7, a2, a2, v6);
  }
}

uint64_t type metadata accessor for MLActivityClassifier.DataSource.Columns(uint64_t a1)
{
  result = type metadata singleton initialization cache for MLActivityClassifier.DataSource.Columns;
  if (!type metadata singleton initialization cache for MLActivityClassifier.DataSource.Columns)
  {
    return swift_getSingletonMetadata(a1, &nominal type descriptor for MLActivityClassifier.DataSource.Columns);
  }

  return result;
}

uint64_t type metadata completion function for MLActivityClassifier.DataSource.Columns(uint64_t a1)
{
  v5[0] = &value witness table for Builtin.BridgeObject + 64;
  result = type metadata accessor for Column<String>(319);
  if (v2 <= 0x3F)
  {
    v5[1] = *(result - 8) + 64;
    result = type metadata accessor for Column<String>?(319, &lazy cache variable for type metadata for Column<String>?, &demangling cache variable for type metadata for Column<String>);
    if (v3 <= 0x3F)
    {
      v5[2] = *(result - 8) + 64;
      result = type metadata accessor for Column<String>?(319, &lazy cache variable for type metadata for Column<Double>?, &demangling cache variable for type metadata for Column<Double>);
      if (v4 <= 0x3F)
      {
        v6 = *(result - 8) + 64;
        v7 = v6;
        swift_initStructMetadata(a1, 256, 5, v5, a1 + 16);
        return 0;
      }
    }
  }

  return result;
}

uint64_t type metadata accessor for Column<String>(uint64_t a1)
{
  result = lazy cache variable for type metadata for Column<String>;
  if (!lazy cache variable for type metadata for Column<String>)
  {
    result = type metadata accessor for Column(a1, &type metadata for String);
    if (!v2)
    {
      lazy cache variable for type metadata for Column<String> = result;
    }
  }

  return result;
}

uint64_t type metadata accessor for Column<String>?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameAbstract(a3);
    result = type metadata accessor for Optional(a1, v4);
    if (!v5)
    {
      *a2 = result;
    }
  }

  return result;
}

void *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySSG_11TabularData6ColumnVySaySdGGs5NeverOTg5036_s8CreateML20MLActivityClassifierV10e143SourceO06gatherE15FromAnnotations12directoryURL18annotationFileName11labelColumn04fileP009startTimeP003endsP014featureColumns09timeStampP0AE0V0m35Foundation0K0V_S4SSgATSaySSGSStKF07D22E00P0VySaySdGGSSXEfU3_0I2ML0kL0V0eN0O7ColumnsVTf1cn_n(uint64_t a1, uint64_t a2)
{
  v41 = a2;
  v31 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<String>);
  v3 = *(v31 - 8);
  v4 = *(v3 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v32 = &v25;
  v33 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[Double]>);
  v34 = *(v33 - 8);
  v7 = *(v34 + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v10 = *(a1 + 16);
  if (!v10)
  {
    return _swiftEmptyArrayStorage;
  }

  v39 = &v25;
  v38 = v2;
  v40 = _swiftEmptyArrayStorage;
  v37 = v10;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v10, 0);
  v11 = v40;
  v12 = *(type metadata accessor for MLActivityClassifier.DataSource.Columns(0) + 20) + v41;
  v35 = v3;
  v36 = *(v3 + 16);
  v13 = (a1 + 40);
  v41 = v12;
  do
  {
    v28 = v11;
    v30 = *(v13 - 1);
    v27 = v13;
    v14 = *v13;
    v15 = v32;
    v16 = v31;
    v36(v32, v12, v31);
    v29 = v14;
    swift_bridgeObjectRetain_n(v14, 2);
    v17 = Column.count.getter(v16);
    (*(v35 + 8))(v15, v16);
    if (v17 < 0)
    {
      BUG();
    }

    v26[0] = v17;
    v26[1] = _swiftEmptyArrayStorage;
    v18 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Double]);
    v19 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Repeated<[Double]>);
    v20 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type Repeated<[Double]> and conformance Repeated<A>, &demangling cache variable for type metadata for Repeated<[Double]>, &protocol conformance descriptor for Repeated<A>);
    v21 = v29;
    Column.init<A>(name:contents:)(v30, v29, v26, v18, v19, v20);
    v21;
    v11 = v28;
    v40 = v28;
    v22 = v28[2];
    if (v28[3] >> 1 <= v22)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v28[3] >= 2uLL, v22 + 1, 1);
      v11 = v40;
    }

    v11[2] = v22 + 1;
    (*(v34 + 32))(v11 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v22, v39, v33);
    v13 = v27 + 2;
    v23 = v37-- == 1;
    v12 = v41;
  }

  while (!v23);
  return v11;
}

void *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySSG_11TabularData6ColumnVySaySdGGs5NeverOTg5036_s8CreateML20MLActivityClassifierV10e87SourceO06gatherE014featureColumns11labelColumn013recordingFileK0AE0I0VSaySSG_S2SSgtKF07d3E00T16VySaySdGGSSXEfU_AG0E5FrameVTf1cn_n(uint64_t a1, uint64_t a2)
{
  v16 = a2;
  v17 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[Double]>);
  v18 = *(v17 - 8);
  v3 = *(v18 + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v6 = *(a1 + 16);
  if (!v6)
  {
    return _swiftEmptyArrayStorage;
  }

  v21 = v2;
  v22 = _swiftEmptyArrayStorage;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6, 0);
  v7 = v22;
  v19 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Double]);
  v8 = (a1 + 40);
  v20 = &v13;
  do
  {
    v15 = v8;
    v14 = v6;
    v9 = *(v8 - 1);
    v10 = *v8;

    DataFrame.subscript.getter(v9, v10, v19);
    v10;
    v22 = v7;
    v11 = v7[2];
    if (v7[3] >> 1 <= v11)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v7[3] >= 2uLL, v11 + 1, 1);
      v7 = v22;
    }

    v7[2] = v11 + 1;
    (*(v18 + 32))(v7 + ((*(v18 + 80) + 32) & ~*(v18 + 80)) + *(v18 + 72) * v11, v20, v17);
    v8 = v15 + 2;
    v6 = v14 - 1;
  }

  while (v14 != 1);
  return v7;
}

uint64_t MLActivityClassifier.DataSource.gatherData(featureColumns:labelColumn:recordingFileColumn:)(uint64_t *a1, uint64_t a2, uint64_t *a3, void *a4, void *a5)
{
  v125._object = a4;
  v124 = a3;
  v119 = v5;
  v125._countAndFlagsBits = a2;
  v121 = v6;
  v120 = a5;
  v126 = a1;
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<String>?) - 8) + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v116 = v111;
  v118 = type metadata accessor for MLActivityClassifier.DataSource.Columns(0);
  v11 = *(*(v118 - 8) + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  v117 = v111;
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[Double]>?) - 8) + 64);
  v15 = alloca(v14);
  v16 = alloca(v14);
  v122 = v111;
  v131 = type metadata accessor for AnyColumn(0);
  v129._object = *(v131 - 8);
  v17 = *(v129._object + 8);
  v18 = alloca(v17);
  v19 = alloca(v17);
  v113 = v111;
  v20 = alloca(v17);
  v21 = alloca(v17);
  *&v130 = v111;
  v128 = type metadata accessor for DataFrame(0);
  v127 = *(v128 - 1);
  v22 = *(v127 + 64);
  v23 = alloca(v22);
  v24 = alloca(v22);
  v134 = v111;
  v132 = type metadata accessor for URL(0);
  ML20MLActivityClassifierV10e87SourceO06gatherE014featureColumns11labelColumn013recordingFileK0AE0I0VSaySSG_S2SSgtKF07d3E00T16VySaySdGGSSXEfU_AG0E5FrameVTf1cn_n = *(v132 - 8);
  v25 = ML20MLActivityClassifierV10e87SourceO06gatherE014featureColumns11labelColumn013recordingFileK0AE0I0VSaySSG_S2SSgtKF07d3E00T16VySaySdGGSSXEfU_AG0E5FrameVTf1cn_n[8];
  v26 = alloca(v25);
  v27 = alloca(v25);
  v123 = v111;
  v28 = alloca(v25);
  v29 = alloca(v25);
  v30 = type metadata accessor for MLActivityClassifier.DataSource(0);
  v31 = *(*(v30 - 8) + 64);
  v32 = alloca(v31);
  v33 = alloca(v31);
  v129._countAndFlagsBits = v7;
  outlined init with copy of MLActivityClassifier.DataSource(v7, v111);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v111, v30);
  if (!EnumCaseMultiPayload)
  {
    v46 = v132;
    (ML20MLActivityClassifierV10e87SourceO06gatherE014featureColumns11labelColumn013recordingFileK0AE0I0VSaySSG_S2SSgtKF07d3E00T16VySaySdGGSSXEfU_AG0E5FrameVTf1cn_n[4])(v111, v111, v132);
    object = v125._object;
    if (!v120)
    {
      object = 0x6E6964726F636572;
    }

    v48 = 0xED0000656C694667;
    if (v120)
    {
      v48 = v120;
    }

    MLActivityClassifier.DataSource.gatherDataFormLabeledDirectories(at:featureColumns:labelColumn:recordingFileColumn:)(v111, v126, v125._countAndFlagsBits, v124, object, v48);
    (ML20MLActivityClassifierV10e87SourceO06gatherE014featureColumns11labelColumn013recordingFileK0AE0I0VSaySSG_S2SSgtKF07d3E00T16VySaySdGGSSXEfU_AG0E5FrameVTf1cn_n[1])(v111, v46);
    v45 = v48;
    return v45;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v35 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFileName: String, timeStampColumn: String, labelStartTimeColumn: String, labelEndTimeColumn: String));
    v36 = v35[12];
    v129._object = *&v111[v36];
    v37 = *&v111[v36 + 8];
    v38 = v35[16];
    v128 = *&v111[v38];
    v131 = *&v111[v38 + 8];
    v39 = v35[20];
    v127 = *&v111[v39];
    v134 = *&v111[v39 + 8];
    v40 = v35[24];
    v122 = *&v111[v40];
    *&v130 = *&v111[v40 + 8];
    v41 = v123;
    (ML20MLActivityClassifierV10e87SourceO06gatherE014featureColumns11labelColumn013recordingFileK0AE0I0VSaySSG_S2SSgtKF07d3E00T16VySaySdGGSSXEfU_AG0E5FrameVTf1cn_n[4])(v123, v111, v132);
    v42 = v125._object;
    if (!v120)
    {
      v42 = 0x6E6964726F636572;
    }

    v43 = 0xED0000656C694667;
    if (v120)
    {
      v43 = v120;
    }

    v44 = v129._object;
    v129._object = v37;
    MLActivityClassifier.DataSource.gatherDataFromAnnotations(directoryURL:annotationFileName:labelColumn:fileColumn:startTimeColumn:endTimeColumn:featureColumns:timeStampColumn:)(v41, v44, v37, v125._countAndFlagsBits, v124, v42, v43, v127, v134, v122, v130, v126, v128, v131);
    (ML20MLActivityClassifierV10e87SourceO06gatherE014featureColumns11labelColumn013recordingFileK0AE0I0VSaySSG_S2SSgtKF07d3E00T16VySaySdGGSSXEfU_AG0E5FrameVTf1cn_n[1])(v41, v132);
    v131;
    v129._object;
    v43;
    v134;
    v45 = v130;
    return v45;
  }

  v50 = v134;
  (*(v127 + 32))(v134, v111, v128);
  countAndFlagsBits = v125._countAndFlagsBits;
  v52._countAndFlagsBits = v125._countAndFlagsBits;
  v53 = v124;
  v52._object = v124;
  if ((_s11TabularData0B5FrameV14containsColumnySbSS_xmtlFSS_Tt0g5(v52) & 1) == 0)
  {
    *&v112 = 0;
    *(&v112 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(27);
    SBYTE8(v112);
    *&v112 = 0xD000000000000017;
    *(&v112 + 1) = "assetFetcher" + 0x8000000000000000;
    v104._countAndFlagsBits = countAndFlagsBits;
    v104._object = v53;
    String.append(_:)(v104);
    v104._object = 0xE200000000000000;
    v104._countAndFlagsBits = 11815;
    String.append(_:)(v104);
    v130 = v112;
    v105 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v105, 0, 0);
    *v106 = v130;
    *(v106 + 16) = 0;
    *(v106 + 32) = 0;
    *(v106 + 48) = 0;
    swift_willThrow();
    v107 = v50;
    return (*(v127 + 8))(v107, v128);
  }

  v54 = v126;
  v55 = v50;
  if (v126[2])
  {
    v56 = v126[2];

    v57 = v54 + 5;
    v115 = v56;
    v58 = v56;
    do
    {
      v59 = *(v57 - 1);
      ML20MLActivityClassifierV10e87SourceO06gatherE014featureColumns11labelColumn013recordingFileK0AE0I0VSaySSG_S2SSgtKF07d3E00T16VySaySdGGSSXEfU_AG0E5FrameVTf1cn_n = v57;
      v60 = *v57;

      v132 = v59;
      v61._countAndFlagsBits = v59;
      v61._object = v60;
      v62 = DataFrame.indexOfColumn(_:)(v61);
      if (v62.is_nil)
      {
        v60;
      }

      else
      {
        value = v62.value;
        v129._countAndFlagsBits = v60;
        v64 = DataFrame.columns.getter(v61._countAndFlagsBits);
        if (value < 0)
        {
          BUG();
        }

        v65 = v64;
        if (value >= *(v64 + 16))
        {
          BUG();
        }

        v123 = v58;
        v66 = v129._object;
        v67 = v131;
        (*(v129._object + 2))(v130, ((*(v129._object + 80) + 32) & ~*(v129._object + 80)) + v64 + *(v129._object + 9) * value, v131);
        v65;
        v68 = AnyColumn.wrappedElementType.getter(v65);
        v69 = v66[1];
        v70 = v130;
        v69(v130, v67);
        if (v68 == __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Int]))
        {
          v71 = v132;
          v114 = v69;
          DataFrame.subscript.getter(v132, v129._countAndFlagsBits);
          v72 = v122;
          AnyColumn.convertedToDoubleArrays()();
          v73 = v72;
          v114(v70, v131);
          v74 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[Double]>);
          if (__swift_getEnumTagSinglePayload(v73, 1, v74) == 1)
          {
            outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v73, &demangling cache variable for type metadata for Column<[Double]>?);
            BUG();
          }

          v75 = v113;
          Column.eraseToAnyColumn()(v74);
          (*(*(v74 - 8) + 8))(v73, v74);
          DataFrame.subscript.setter(v75, v71, v129._countAndFlagsBits);
        }

        else
        {
          v129._countAndFlagsBits;
        }

        v58 = v123;
      }

      v57 = ML20MLActivityClassifierV10e87SourceO06gatherE014featureColumns11labelColumn013recordingFileK0AE0I0VSaySSG_S2SSgtKF07d3E00T16VySaySdGGSSXEfU_AG0E5FrameVTf1cn_n + 2;
      --v58;
    }

    while (v58);
    v76 = v126;
    v126;

    v77 = (v76 + 5);
    while (1)
    {
      v78 = *(v77 - 1);
      v79 = *v77;

      v129._countAndFlagsBits = v78;
      v80._countAndFlagsBits = v78;
      v80._object = v79;
      v81 = DataFrame.indexOfColumn(_:)(v80);
      if (v81.is_nil)
      {
        break;
      }

      v82 = v81.value;
      v83 = DataFrame.columns.getter(v80._countAndFlagsBits);
      if (v82 < 0)
      {
        BUG();
      }

      v84 = v83;
      if (v82 >= *(v83 + 16))
      {
        BUG();
      }

      v132 = v77;
      v85 = v129._object;
      v86 = ((*(v129._object + 80) + 32) & ~*(v129._object + 80)) + v83 + *(v129._object + 9) * v82;
      ML20MLActivityClassifierV10e87SourceO06gatherE014featureColumns11labelColumn013recordingFileK0AE0I0VSaySSG_S2SSgtKF07d3E00T16VySaySdGGSSXEfU_AG0E5FrameVTf1cn_n = v79;
      v87 = v131;
      (*(v129._object + 2))(v130, v86, v131);
      v84;
      v88 = AnyColumn.wrappedElementType.getter(v84);
      v89 = v87;
      v79 = ML20MLActivityClassifierV10e87SourceO06gatherE014featureColumns11labelColumn013recordingFileK0AE0I0VSaySSG_S2SSgtKF07d3E00T16VySaySdGGSSXEfU_AG0E5FrameVTf1cn_n;
      v85[1](v130, v89);
      v90 = v132;
      if (v88 != __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Double]))
      {
        break;
      }

      v79;
      v77 = (v90 + 16);
      v91 = v115-- == 1;
      v55 = v134;
      if (v91)
      {
        v54 = v126;
        v126;
        goto LABEL_34;
      }
    }

    v126;
    *&v112 = 0;
    *(&v112 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(29);
    SBYTE8(v112);
    *&v112 = 0xD000000000000019;
    *(&v112 + 1) = "Missing labels column '" + 0x8000000000000000;
    v108._countAndFlagsBits = v129._countAndFlagsBits;
    v108._object = v79;
    String.append(_:)(v108);
    v79;
    v108._object = 0xE200000000000000;
    v108._countAndFlagsBits = 11815;
    String.append(_:)(v108);
    v130 = v112;
    v109 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v109, 0, 0);
    *v110 = v130;
    *(v110 + 16) = 0;
    *(v110 + 32) = 0;
    *(v110 + 48) = 0;
    swift_willThrow();
    v107 = v134;
    return (*(v127 + 8))(v107, v128);
  }

LABEL_34:
  v92 = v121;
  ML20MLActivityClassifierV10e87SourceO06gatherE014featureColumns11labelColumn013recordingFileK0AE0I0VSaySSG_S2SSgtKF07d3E00T16VySaySdGGSSXEfU_AG0E5FrameVTf1cn_n = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySSG_11TabularData6ColumnVySaySdGGs5NeverOTg5036_s8CreateML20MLActivityClassifierV10e87SourceO06gatherE014featureColumns11labelColumn013recordingFileK0AE0I0VSaySSG_S2SSgtKF07d3E00T16VySaySdGGSSXEfU_AG0E5FrameVTf1cn_n(v54, v55);
  *&v130 = v92;
  v93 = v118;
  v94 = v117;
  DataFrame.subscript.getter(v125._countAndFlagsBits, v124, &type metadata for String);
  v95 = v94 + *(v93 + 24);
  v96 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<String>);
  v131 = v95;
  v132 = v96;
  __swift_storeEnumTagSinglePayload(v95, 1, 1, v96);
  v97 = v94 + *(v93 + 28);
  v98 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Double>);
  v99 = v97;
  v100 = v134;
  __swift_storeEnumTagSinglePayload(v99, 1, 1, v98);
  __swift_storeEnumTagSinglePayload(v94 + *(v118 + 32), 1, 1, v98);
  *v94 = ML20MLActivityClassifierV10e87SourceO06gatherE014featureColumns11labelColumn013recordingFileK0AE0I0VSaySSG_S2SSgtKF07d3E00T16VySaySdGGSSXEfU_AG0E5FrameVTf1cn_n;
  v101 = v120;
  if (v120)
  {
    v102._countAndFlagsBits = v125._object;
    v102._object = v120;
    if (_s11TabularData0B5FrameV14containsColumnySbSS_xmtlFSS_Tt0g5(v102))
    {
      v103 = v116;
      DataFrame.subscript.getter(v125._object, v101, &type metadata for String);
      __swift_storeEnumTagSinglePayload(v103, 0, 1, v132);
      outlined assign with take of MLTrainingSession<MLImageClassifier>.Metadata(v103, v131, &demangling cache variable for type metadata for Column<String>?);
    }
  }

  outlined init with take of MLActivityClassifier.DataSource.Columns(v117, v119);
  return (*(v127 + 8))(v100, v128);
}

uint64_t MLActivityClassifier.DataSource.Columns.convertToTuriCore()()
{
  v249._countAndFlagsBits = v1;
  v3 = v0;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[Double]>?) - 8) + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[Double]>);
  v242 = *(v7 - 8);
  v8 = *(v242 + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v234 = &v219;
  v11 = alloca(v8);
  v12 = alloca(v8);
  v229 = &v219;
  v13 = alloca(v8);
  v14 = alloca(v8);
  v233 = &v219;
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<String>?) - 8) + 64);
  v16 = alloca(v15);
  v17 = alloca(v15);
  v232 = &v219;
  v18 = alloca(v15);
  v19 = alloca(v15);
  v223 = &v219;
  v20 = alloca(v15);
  v21 = alloca(v15);
  v256 = &v219;
  v243 = *v2;
  if (!*(v243 + 16))
  {
    v35 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v35, 0, 0);
    *v36 = 0xD000000000000035;
    *(v36 + 8) = "Prediction Window Size" + 0x8000000000000000;
    *(v36 + 16) = 0;
    *(v36 + 32) = 0;
    *(v36 + 48) = 0;
    return swift_willThrow();
  }

  v226 = &v219;
  v250 = v7;
  v227 = v3;
  v22 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLDataColumn<Double>);
  v251 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for String, v22, &protocol witness table for String);
  *&v254 = _swiftEmptyArrayStorage;
  v23 = alloca(24);
  v24 = alloca(32);
  v221 = &v254;
  ML14_UntypedColumnC_s5Error_pTt1g5 = _ss6ResultOsRi_zrlE8catchingAByxq_Gxyq_YKXE_tcfC8CreateML14_UntypedColumnC_s5Error_pTt1g5(partial apply for specialized closure #1 in MLUntypedColumn.init<A>(_:));
  v231 = v2;
  v26 = v25;
  v254;
  v241 = v26;
  LOBYTE(v258) = v26 & 1;
  *&v254 = _swiftEmptyArrayStorage;
  v27 = alloca(24);
  v28 = alloca(32);
  v221 = &v254;
  v244 = _ss6ResultOsRi_zrlE8catchingAByxq_Gxyq_YKXE_tcfC8CreateML14_UntypedColumnC_s5Error_pTt1g5(partial apply for specialized closure #1 in MLUntypedColumn.init<A>(_:));
  v30 = v29;
  v254;
  LOBYTE(v257) = v30 & 1;
  v246 = type metadata accessor for MLActivityClassifier.DataSource.Columns(0);
  v31 = v231;
  v228 = v231 + *(v246 + 24);
  v32 = v256;
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v228, v256, &demangling cache variable for type metadata for Column<String>?);
  v33 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<String>);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v32, 1, v33);
  v253 = v30;
  if (EnumTagSinglePayload == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v32, &demangling cache variable for type metadata for Column<String>?);
    v238 = 0;
    v245 = 0;
  }

  else
  {
    v38 = v32;
    v39 = specialized Collection.first.getter();
    v41 = v40;
    (*(*(v33 - 8) + 8))(v38, v33);
    if (v41 == 2)
    {
      v39 = 0;
    }

    v238 = v39;
    if (v41 == 2)
    {
      v41 = 0;
    }

    v245 = v41;
  }

  v42 = (v31 + *(v246 + 20));
  v236 = v33;
  v231 = v42;
  v43 = Column.count.getter(v33);
  v224 = v43;
  v44 = v250;
  if (v43 < 0)
  {
    BUG();
  }

  if (v43)
  {
    v45 = v243;
    v46 = *(v243 + 16);
    v237 = 0;
    v248 = 0;
    v47 = v251;
    v48 = v244;
    v225 = v46;
    while (1)
    {
      v244 = v48;
      v240 = ML14_UntypedColumnC_s5Error_pTt1g5;
      v251 = v47;
      if (v46)
      {
        *&v254 = _swiftEmptyArrayStorage;

        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v46, 0);
        v256 = v254;
        v49 = v46;
        v50 = v45 + ((*(v242 + 80) + 32) & ~*(v242 + 80));
        v246 = *(v242 + 16);
        v247 = *(v242 + 72);
        v51 = v49;
        do
        {
          (v246)(v233, v50, v44);
          Column.subscript.getter(v248, v44);
          if (v230)
          {
            v52 = *(v230 + 16);
            v230;
          }

          else
          {
            v52 = 0;
          }

          (*(v242 + 8))(v233, v44);
          v53 = v256;
          *&v254 = v256;
          v54 = v256[2];
          v55 = v256[3];
          v56 = v54 + 1;
          if (v55 >> 1 <= v54)
          {
            v256 = (v54 + 1);
            ML14_UntypedColumnC_s5Error_pTt1g5 = v52;
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v55 >= 2, v56, 1);
            v56 = v256;
            v52 = ML14_UntypedColumnC_s5Error_pTt1g5;
            v53 = v254;
          }

          *(v53 + 16) = v56;
          v256 = v53;
          *(v53 + 8 * v54 + 32) = v52;
          v50 += v247;
          --v51;
          v44 = v250;
        }

        while (v51);
        v243;
        LOBYTE(v47) = v251;
        v57 = v256;
      }

      else
      {
        v57 = _swiftEmptyArrayStorage;
      }

      v58 = specialized Collection<>.firstIndex(of:)(0, v57);
      if ((v59 & 1) == 0)
      {
        v190 = v58;
        v47;
        v57;
        v245;
        *&v254 = 0;
        *(&v254 + 1) = 0xE000000000000000;
        _StringGuts.grow(_:)(57);
        v191._countAndFlagsBits = 0x2065727574616546;
        v191._object = 0xEF206E6D756C6F63;
        String.append(_:)(v191);
        if (v190 < 0)
        {
          BUG();
        }

        if (v190 >= *(v243 + 16))
        {
          BUG();
        }

        v192 = v242;
        v193 = v229;
        (*(v242 + 16))(v229, ((*(v242 + 80) + 32) & ~*(v242 + 80)) + v243 + *(v242 + 72) * v190, v44);
        v194 = Column.name.getter(v44);
        v195 = v44;
        v197 = v196;
        (*(v192 + 8))(v193, v195);
        v198._countAndFlagsBits = v194;
        v198._object = v197;
        String.append(_:)(v198);
        v197;
        v198._object = "Swift/Dictionary.swift" + 0x8000000000000000;
        v198._countAndFlagsBits = 0xD000000000000011;
        String.append(_:)(v198);
        v230 = v248;
        v199 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
        LOBYTE(v197) = v200;
        v198._countAndFlagsBits = v199;
        v198._object = v200;
        String.append(_:)(v198);
        v197;
        v201._object = "Label does not exist on row " + 0x8000000000000000;
        v201._countAndFlagsBits = 0xD000000000000015;
        goto LABEL_146;
      }

      v60 = v57[2];
      v61 = v57;
      if (v60)
      {
        v62 = v57[4];
        v63 = v243;
        if (v60 == 1)
        {
          goto LABEL_28;
        }

        if (v61[5] != v62)
        {
          v122 = 1;
LABEL_143:
          v61;
          v245;
          *&v254 = 0;
          *(&v254 + 1) = 0xE000000000000000;
          _StringGuts.grow(_:)(84);
          v202._object = "Extracting features for File " + 0x8000000000000000;
          v202._countAndFlagsBits = 0xD00000000000002CLL;
          String.append(_:)(v202);
          if (v122 >= *(v63 + 16))
          {
            BUG();
          }

          v203 = v242;
          v204 = v229;
          v205 = v63 + ((*(v242 + 80) + 32) & ~*(v242 + 80)) + *(v242 + 72) * v122;
          v206 = v250;
          (*(v242 + 16))(v229, v205, v250);
          v249._countAndFlagsBits = Column.name.getter(v206);
          v208 = v207;
          v256 = *(v203 + 8);
          (v256)(v204, v206);
          v209._countAndFlagsBits = v249._countAndFlagsBits;
          v209._object = v208;
          String.append(_:)(v209);
          v208;
          v209._countAndFlagsBits = 0x20646E6120;
          v209._object = 0xE500000000000000;
          String.append(_:)(v209);
          v210 = v226;
          specialized Collection.first.getter(v243);
          if (__swift_getEnumTagSinglePayload(v210, 1, v206) == 1)
          {
            BUG();
          }

          v251;
          v211 = Column.name.getter(v206);
          v213 = v212;
          (v256)(v210, v206);
          v214._countAndFlagsBits = v211;
          v214._object = v213;
          String.append(_:)(v214);
          v213;
          v214._countAndFlagsBits = 0x20776F72206E6F20;
          v214._object = 0xE800000000000000;
          String.append(_:)(v214);
          v230 = v248;
          v215 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
          LOBYTE(v213) = v216;
          v214._countAndFlagsBits = v215;
          v214._object = v216;
          String.append(_:)(v214);
          v213;
          v201._object = "Label does not exist on row " + 0x8000000000000000;
          v201._countAndFlagsBits = 0xD000000000000015;
LABEL_146:
          String.append(_:)(v201);
          v249 = v254;
          v217 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
          swift_allocError(&type metadata for MLCreateError, v217, 0, 0);
          *v218 = v249;
          *(v218 + 16) = 0;
          *(v218 + 32) = 0;
          *(v218 + 48) = 1;
          swift_willThrow();
          outlined consume of Result<_DataTable, Error>(v244, v257);
          v188 = v258;
          v189 = v240;
          return outlined consume of Result<_DataTable, Error>(v189, v188);
        }

        if (v60 == 2)
        {
LABEL_28:
          v235 = v61[4];
        }

        else
        {
          v121 = 0;
          do
          {
            v122 = v121 + 2;
            if (v121 + 2 >= v60)
            {
              BUG();
            }

            if (v61[v121 + 6] != v62)
            {
              goto LABEL_143;
            }

            ++v121;
          }

          while (v60 - 2 != v121);
          v235 = v61[4];
          v44 = v250;
        }
      }

      else
      {
        v235 = 0;
        v63 = v243;
      }

      v61;
      v64 = *(v63 + 16);
      if (v64)
      {
        v65 = v63;
        v66 = v242;
        v67 = v65 + ((*(v242 + 80) + 32) & ~*(v242 + 80));

        v221 = *(v66 + 16);
        v222 = *(v66 + 72);
        v68 = v234;
        do
        {
          v219 = v67;
          (v221)(v68, v67, v44);
          Column.subscript.getter(v248, v44);
          v69 = v254;
          if (!v254)
          {
            BUG();
          }

          v239 = type metadata accessor for _UntypedColumn();
          swift_allocObject(v239, 24, 7);
          countAndFlagsBits = v249._countAndFlagsBits;
          v71 = specialized _UntypedColumn.init<A>(_:)(v69);
          v220 = v64;
          v246 = countAndFlagsBits;
          if (countAndFlagsBits)
          {
            ML14_UntypedColumnC_s5Error_pTt1g5 = countAndFlagsBits;
          }

          else
          {
            ML14_UntypedColumnC_s5Error_pTt1g5 = v71;
          }

          v249._countAndFlagsBits = 0;
          v72 = Column.name.getter(v44);
          v74 = v73;
          v75 = v251;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v251);
          *&v254 = v75;
          v252 = v72;
          v256 = v74;
          v247 = specialized __RawDictionaryStorage.find<A>(_:)(v72, v74);
          v78 = (v77 & 1) == 0;
          v79 = __OFADD__(*(v75 + 16), v78);
          v80 = *(v75 + 16) + v78;
          if (v79)
          {
            BUG();
          }

          v81 = v77;
          __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _NativeDictionary<String, MLDataColumn<Double>>);
          if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v80))
          {
            v82 = v256;
            v84 = specialized __RawDictionaryStorage.find<A>(_:)(v252, v256);
            LOBYTE(v85) = v85 & 1;
            if ((v81 & 1) != v85)
            {
LABEL_162:
              KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(&type metadata for String, v82, v85, v83);
              BUG();
            }
          }

          else
          {
            v84 = v247;
          }

          v86 = v254;
          if (v81)
          {
            v87 = 16 * v84;
          }

          else
          {
            swift_allocObject(v239, 24, 7);

            v88 = v249._countAndFlagsBits;
            v89 = specialized _UntypedColumn.init<A>(_:)(_swiftEmptyArrayStorage);
            if (v88)
            {
              v89 = v88;
            }

            v249._countAndFlagsBits = 0;
            v90 = v256;
            v86[(v84 >> 6) + 8] |= 1 << v84;
            v87 = 16 * v84;
            v91 = v86[6];
            *(v91 + v87) = v252;
            *(v91 + v87 + 8) = v90;
            v92 = v86[7];
            *(v92 + v87) = v89;
            *(v92 + v87 + 8) = v88 != 0;
            v93 = v86[2];
            v79 = __OFADD__(1, v93);
            v94 = v93 + 1;
            if (v79)
            {
              BUG();
            }

            v86[2] = v94;
          }

          v95 = v86[7];
          v251 = v86;

          v96 = *(v95 + v87);
          if (*(v95 + v87 + 8))
          {
            v239 = *(v95 + v87);
            v97 = ML14_UntypedColumnC_s5Error_pTt1g5;
            if (v246)
            {
              v247 = v87;
              outlined copy of Result<_DataTable, Error>(ML14_UntypedColumnC_s5Error_pTt1g5, 1);
              v98 = v96;
              v87 = v247;
            }

            else
            {
              outlined copy of Result<_DataTable, Error>(ML14_UntypedColumnC_s5Error_pTt1g5, 0);
              v98 = v96;
            }

            v100 = outlined copy of Result<_DataTable, Error>(v98, 1);
            LOBYTE(v100) = 1;
            LODWORD(v252) = v100;
          }

          else if (v246)
          {
            v97 = ML14_UntypedColumnC_s5Error_pTt1g5;
            swift_errorRetain(ML14_UntypedColumnC_s5Error_pTt1g5);
            v99 = swift_errorRetain(v97);
            LOBYTE(v99) = 1;
            LODWORD(v252) = v99;
            v239 = v97;
          }

          else
          {
            v247 = v87;
            v101 = ML14_UntypedColumnC_s5Error_pTt1g5;
            outlined copy of Result<_DataTable, Error>(ML14_UntypedColumnC_s5Error_pTt1g5, 0);
            outlined copy of Result<_DataTable, Error>(v96, 0);
            v102 = v249._countAndFlagsBits;
            v103 = _UntypedColumn.appending(contentsOf:)(v101);
            v104 = v96;
            if (v102)
            {
              v105 = outlined consume of Result<_DataTable, Error>(v96, 0);
              LOBYTE(v105) = 1;
              LODWORD(v252) = v105;
              v239 = v102;
              v249._countAndFlagsBits = 0;
            }

            else
            {
              v106 = v103;
              v249._countAndFlagsBits = 0;
              LODWORD(v252) = 0;
              outlined consume of Result<_DataTable, Error>(v104, 0);
              v239 = v106;
            }

            v97 = ML14_UntypedColumnC_s5Error_pTt1g5;
            v87 = v247;
          }

          v107 = v246 != 0;
          outlined consume of Result<_DataTable, Error>(*(v95 + v87), *(v95 + v87 + 8));
          *(v95 + v87) = v239;
          *(v95 + v87 + 8) = v252;
          outlined consume of Result<_DataTable, Error>(v97, v107);
          v256;
          v68 = v234;
          v44 = v250;
          (*(v242 + 8))(v234, v250);
          outlined consume of Result<_DataTable, Error>(v97, v107);
          v67 = v222 + v219;
          v64 = v220 - 1;
        }

        while (v220 != 1);
        v243;
      }

      Column.subscript.getter(v248, v236);
      v108 = v235;
      if (v235 < 0)
      {
        BUG();
      }

      v109 = *(&v254 + 1);
      v110 = *(&v254 + 1);
      if (*(&v254 + 1))
      {
        v109 = v254;
      }

      else
      {
        v110 = 0xE000000000000000;
      }

      v256 = type metadata accessor for _UntypedColumn();
      swift_allocObject(v256, 24, 7);
      v111 = v249._countAndFlagsBits;
      v112 = specialized _UntypedColumn.init<A>(_:)(v108, v109, v110);
      if (v111)
      {
        outlined copy of Result<_DataTable, Error>(v111, 1);
        if (v241)
        {
          v109 = v240;
          outlined copy of Result<_DataTable, Error>(v240, 1);
          v113 = v109;
          LOBYTE(v109) = 1;
          v114 = v111;
          ML14_UntypedColumnC_s5Error_pTt1g5 = v113;
          v249._countAndFlagsBits = 0;
        }

        else
        {
          swift_errorRetain(v111);
          LOBYTE(v109) = 1;
          v114 = v111;
          ML14_UntypedColumnC_s5Error_pTt1g5 = v111;
          v249._countAndFlagsBits = 0;
          v113 = v240;
        }
      }

      else
      {
        v114 = v112;
        if (v241)
        {
          outlined copy of Result<_DataTable, Error>(v112, 0);
          v109 = v240;
          outlined copy of Result<_DataTable, Error>(v240, 1);
          v113 = v109;
          LOBYTE(v109) = 1;
          ML14_UntypedColumnC_s5Error_pTt1g5 = v113;
          v249._countAndFlagsBits = 0;
        }

        else
        {
          outlined copy of Result<_DataTable, Error>(v112, 0);
          v109 = v240;
          outlined copy of Result<_DataTable, Error>(v240, 0);
          v115 = _UntypedColumn.appending(contentsOf:)(v114);
          v249._countAndFlagsBits = 0;
          ML14_UntypedColumnC_s5Error_pTt1g5 = v115;
          v139 = v109;
          LODWORD(v109) = 0;
          outlined consume of Result<_DataTable, Error>(v139, 0);
          v113 = v139;
        }
      }

      outlined consume of Result<_DataTable, Error>(v113, v258);
      outlined consume of Result<_DataTable, Error>(v114, v111 != 0);
      outlined consume of Result<_DataTable, Error>(v114, v111 != 0);
      v241 = v109;
      LOBYTE(v258) = v109;
      v116 = v223;
      outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v228, v223, &demangling cache variable for type metadata for Column<String>?);
      v117 = v236;
      if (__swift_getEnumTagSinglePayload(v116, 1, v236) == 1)
      {
        break;
      }

      Column.subscript.getter(v248, v117);
      v119 = v254;
      (*(*(v117 - 8) + 8))(v116);
      v118 = v245;
      if (!*(&v119 + 1))
      {
        goto LABEL_77;
      }

      if (!v245)
      {
        LOBYTE(v118) = BYTE8(v119);
LABEL_86:
        v123 = v232;
        v124 = v236;
LABEL_87:
        v118;
        v120 = v237 + 1;
        if (__OFADD__(1, v237))
        {
          BUG();
        }

        outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v228, v123, &demangling cache variable for type metadata for Column<String>?);
        if (__swift_getEnumTagSinglePayload(v123, 1, v124) == 1)
        {
          outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v123, &demangling cache variable for type metadata for Column<String>?);
          v238 = 0;
          v245 = 0;
        }

        else
        {
          Column.subscript.getter(v248, v124);
          v245 = *(&v254 + 1);
          v238 = v254;
          (*(*(v124 - 8) + 8))(v123, v124);
        }

        goto LABEL_91;
      }

      if (v119 == __PAIR128__(v245, v238))
      {
        SBYTE8(v119);
        goto LABEL_79;
      }

      v138 = _stringCompareWithSmolCheck(_:_:expecting:)(v119, *(&v119 + 1), v238, v245, 0);
      SBYTE8(v119);
      v123 = v232;
      v124 = v236;
      if ((v138 & 1) == 0)
      {
        goto LABEL_87;
      }

      v120 = v237;
LABEL_91:
      swift_allocObject(v256, 24, 7);
      v237 = v120;
      v125 = v249._countAndFlagsBits;
      v126 = specialized _UntypedColumn.init<A>(_:)(v235, v120);
      v127 = v125;
      if (v125)
      {
        outlined copy of Result<_DataTable, Error>(v125, 1);
        v47 = v251;
        if (v253)
        {
          v128 = v244;
          v129 = outlined copy of Result<_DataTable, Error>(v244, 1);
          v130 = v128;
          LOBYTE(v129) = 1;
          v253 = v129;
          v131 = v125;
          v252 = v128;
          v249._countAndFlagsBits = 0;
        }

        else
        {
          v135 = swift_errorRetain(v125);
          LOBYTE(v135) = 1;
          v253 = v135;
          v131 = v125;
          v252 = v125;
          v249._countAndFlagsBits = 0;
          v130 = v244;
        }
      }

      else
      {
        v132 = v126;
        if (v253)
        {
          outlined copy of Result<_DataTable, Error>(v126, 0);
          v133 = v244;
          v134 = outlined copy of Result<_DataTable, Error>(v244, 1);
          v130 = v133;
          LOBYTE(v134) = 1;
          v253 = v134;
          v252 = v133;
          v131 = 0;
          v249._countAndFlagsBits = 0;
          v47 = v251;
          v127 = v132;
        }

        else
        {
          outlined copy of Result<_DataTable, Error>(v126, 0);
          v136 = v244;
          outlined copy of Result<_DataTable, Error>(v244, 0);
          v256 = 0;
          v137 = _UntypedColumn.appending(contentsOf:)(v132);
          v249._countAndFlagsBits = 0;
          v253 = 0;
          v252 = v137;
          outlined consume of Result<_DataTable, Error>(v136, 0);
          v47 = v251;
          v130 = v136;
          v127 = v132;
          v131 = v256;
        }
      }

      v140 = v248 + 1;
      v141 = v131 != 0;
      outlined consume of Result<_DataTable, Error>(v130, v257);
      outlined consume of Result<_DataTable, Error>(v127, v141);
      outlined consume of Result<_DataTable, Error>(v127, v141);
      LOBYTE(v257) = v253;
      v48 = v252;
      v248 = v140;
      v142 = v140 == v224;
      v44 = v250;
      v45 = v243;
      v46 = v225;
      v143 = v252;
      if (v142)
      {
        goto LABEL_103;
      }
    }

    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v116, &demangling cache variable for type metadata for Column<String>?);
    v118 = v245;
LABEL_77:
    0;
    if (v118)
    {
      goto LABEL_86;
    }

    v245 = 0;
LABEL_79:
    v120 = v237;
    goto LABEL_91;
  }

  v143 = v244;
  v47 = v251;
LABEL_103:
  v252 = v143;
  v245;
  v144 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for String, &type metadata for MLUntypedColumn, &protocol witness table for String);
  v145 = 1 << *(v47 + 32);
  v146 = ~(-1 << v145);
  if (v145 >= 64)
  {
    v146 = -1;
  }

  v147 = v144;
  v148 = *(v47 + 64) & v146;
  v250 = (v145 + 63) >> 6;
  v149 = 0;
  v251 = v47;
  while (1)
  {
    if (v148)
    {
      goto LABEL_122;
    }

    v150 = v149 + 1;
    if (__OFADD__(1, v149))
    {
      BUG();
    }

    if (v150 >= v250)
    {
      break;
    }

    v148 = *(v47 + 8 * v150 + 64);
    if (v148)
    {
      ++v149;
    }

    else
    {
      v151 = (v149 + 2);
      if (v149 + 2 >= v250)
      {
        break;
      }

      v148 = *(v47 + 8 * v150 + 72);
      if (v148)
      {
        goto LABEL_121;
      }

      v151 = (v149 + 3);
      if (v149 + 3 >= v250)
      {
        break;
      }

      v148 = *(v47 + 8 * v150 + 80);
      if (v148)
      {
        goto LABEL_121;
      }

      v151 = (v149 + 4);
      if (v149 + 4 >= v250)
      {
        break;
      }

      v148 = *(v47 + 8 * v150 + 88);
      if (v148)
      {
        goto LABEL_121;
      }

      v151 = (v149 + 5);
      if (v149 + 5 >= v250)
      {
        break;
      }

      v148 = *(v47 + 8 * v150 + 96);
      if (v148)
      {
        goto LABEL_121;
      }

      v151 = (v149 + 6);
      if (v149 + 6 >= v250)
      {
        break;
      }

      v148 = *(v47 + 8 * v150 + 104);
      if (v148)
      {
LABEL_121:
        v149 = v151;
      }

      else
      {
        v176 = v149 + 7;
        do
        {
          if (v176 >= v250)
          {
            goto LABEL_136;
          }

          v148 = *(v47 + 8 * v176++ + 64);
        }

        while (!v148);
        v149 = v176 - 1;
      }
    }

LABEL_122:
    v242 = v148;
    _BitScanForward64(&v152, v148);
    v153 = *(v47 + 48);
    v154 = *(v47 + 56);
    v233 = v149;
    v155 = (v149 << 10) | (16 * v152);
    v256 = *(v153 + v155);
    v156 = *(v153 + v155 + 8);
    v157 = *(v154 + v155);
    v158 = *(v154 + v155 + 8);
    outlined copy of Result<_DataTable, Error>(v157, *(v154 + v155 + 8));
    v247 = v157;
    LODWORD(v248) = v158;
    outlined copy of Result<_DataTable, Error>(v157, v158);

    v159 = swift_isUniquelyReferenced_nonNull_native(v147);
    *&v254 = v147;
    v246 = v156;
    v161 = specialized __RawDictionaryStorage.find<A>(_:)(v256, v156);
    v162 = (v160 & 1) == 0;
    v79 = __OFADD__(v147[2], v162);
    v163 = v147[2] + v162;
    if (v79)
    {
      BUG();
    }

    v164 = v160;
    __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _NativeDictionary<String, MLUntypedColumn>);
    if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v159, v163))
    {
      v82 = v246;
      v161 = specialized __RawDictionaryStorage.find<A>(_:)(v256, v246);
      LOBYTE(v85) = v85 & 1;
      if ((v164 & 1) != v85)
      {
        goto LABEL_162;
      }

      v165 = v164;
      v47 = v251;
    }

    else
    {
      v47 = v251;
      v165 = v164;
    }

    v147 = v254;
    if (v165)
    {
      v256 = v254;
      v166 = *(v254 + 56);
      v167 = 16 * v161;
      outlined consume of Result<_DataTable, Error>(*(v166 + v167), *(v166 + v167 + 8));
      v168 = v247;
      *(v166 + v167) = v247;
      v169 = v248;
      *(v166 + v167 + 8) = v248 & 1;
      v147 = v256;
      v246;
      v170 = v168;
      v47 = v251;
    }

    else
    {
      *(v254 + 8 * (v161 >> 6) + 64) |= 1 << v161;
      v171 = v147[6];
      v172 = 16 * v161;
      *(v171 + v172) = v256;
      *(v171 + v172 + 8) = v246;
      v173 = v147[7];
      v170 = v247;
      *(v173 + v172) = v247;
      v169 = v248;
      *(v173 + v172 + 8) = v248 & 1;
      v174 = v147[2];
      v79 = __OFADD__(1, v174);
      v175 = v174 + 1;
      if (v79)
      {
        BUG();
      }

      v147[2] = v175;
    }

    v148 = (v242 - 1) & v242;
    outlined consume of Result<_DataTable, Error>(v170, v169);
    v149 = v233;
  }

LABEL_136:
  v177 = v147;

  v178 = v258;
  v179 = ML14_UntypedColumnC_s5Error_pTt1g5;
  outlined copy of Result<_DataTable, Error>(ML14_UntypedColumnC_s5Error_pTt1g5, v258);
  v180 = swift_isUniquelyReferenced_nonNull_native(v177);
  *&v254 = v177;
  ML14_UntypedColumnC_s5Error_pTt1g5 = v179;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v179, v178, 0x6C6562616CLL, 0xE500000000000000, v180);
  v181 = v254;
  v182 = v257;
  v183 = v252;
  outlined copy of Result<_DataTable, Error>(v252, v257);
  v184 = swift_isUniquelyReferenced_nonNull_native(v181);
  *&v254 = v181;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v183, v182, 0x5F6E6F6973736573, 0xEA00000000006469, v184);
  v185 = v249._countAndFlagsBits;
  _s8CreateML11MLDataTableV20uniqueKeysWithValuesACx_tKcSTRzSS3key_AA15MLUntypedColumnV5valuet7ElementRtzlufCSDySSAGG_Tt1g5(v254);
  if (!v185)
  {
    v186 = BYTE8(v254);
    v187 = v227;
    *v227 = v254;
    *(v187 + 8) = v186;
  }

  outlined consume of Result<_DataTable, Error>(v183, v182);
  v188 = v258;
  v189 = ML14_UntypedColumnC_s5Error_pTt1g5;
  return outlined consume of Result<_DataTable, Error>(v189, v188);
}

uint64_t MLActivityClassifier.DataSource.Columns.buildDataFrame()()
{
  v1 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Double>?) - 8) + 64);
  v2 = alloca(v1);
  v3 = alloca(v1);
  v4 = alloca(v1);
  v5 = alloca(v1);
  v47 = &v44;
  v56 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Double>);
  v57 = *(v56 - 8);
  v6 = *(v57 + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v50 = &v44;
  v9 = alloca(v6);
  v10 = alloca(v6);
  v51 = &v44;
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<String>?) - 8) + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  v49 = &v44;
  v48 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<String>);
  v52 = *(v48 - 8);
  v14 = *(v52 + 64);
  v15 = alloca(v14);
  v16 = alloca(v14);
  v53 = &v44;
  v17 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[Double]>);
  v58 = *(v17 - 8);
  v18 = *(v58 + 64);
  v19 = alloca(v18);
  v20 = alloca(v18);
  DataFrame.init()(&demangling cache variable for type metadata for Column<[Double]>);
  v55 = v0;
  v21 = *v0;
  v22 = *(*v0 + 16);
  v46 = &v44;
  if (v22)
  {
    v23 = v21 + ((*(v58 + 80) + 32) & ~*(v58 + 80));
    v44 = *(v58 + 16);
    v45 = *(v58 + 72);
    v54 = v21;

    do
    {
      v44(&v44, v23, v17);
      v24 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Double]);
      DataFrame.append<A>(column:)(&v44, v24);
      (*(v58 + 8))(&v44, v17);
      v23 += v45;
      --v22;
    }

    while (v22);
    v54;
  }

  v25 = type metadata accessor for MLActivityClassifier.DataSource.Columns(0);
  v26 = v55;
  DataFrame.append<A>(column:)(v55 + *(v25 + 20), &type metadata for String);
  v58 = v25;
  v27 = v49;
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v26 + *(v25 + 24), v49, &demangling cache variable for type metadata for Column<String>?);
  v28 = v48;
  if (__swift_getEnumTagSinglePayload(v27, 1, v48) == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v27, &demangling cache variable for type metadata for Column<String>?);
  }

  else
  {
    v29 = v53;
    v30 = v27;
    v31 = v52;
    (*(v52 + 32))(v53, v30, v28);
    DataFrame.append<A>(column:)(v29, &type metadata for String);
    (*(v31 + 8))(v29, v28);
  }

  v32 = v56;
  v33 = v58;
  v34 = v47;
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v26 + *(v58 + 28), v47, &demangling cache variable for type metadata for Column<Double>?);
  if (__swift_getEnumTagSinglePayload(v34, 1, v32) == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v34, &demangling cache variable for type metadata for Column<Double>?);
  }

  else
  {
    v35 = v51;
    v36 = v57;
    (*(v57 + 32))(v51, v34, v32);
    DataFrame.append<A>(column:)(v35, &type metadata for Double);
    v37 = v35;
    v33 = v58;
    (*(v36 + 8))(v37, v32);
    v26 = v55;
  }

  v38 = v26 + *(v33 + 32);
  v39 = v46;
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v38, v46, &demangling cache variable for type metadata for Column<Double>?);
  if (__swift_getEnumTagSinglePayload(v39, 1, v32) == 1)
  {
    return outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v39, &demangling cache variable for type metadata for Column<Double>?);
  }

  v41 = v50;
  v42 = v39;
  v43 = v57;
  (*(v57 + 32))(v50, v42, v32);
  DataFrame.append<A>(column:)(v41, &type metadata for Double);
  return (*(v43 + 8))(v41, v32);
}

uint64_t MLActivityClassifier.DataSource.gatherDataFormLabeledDirectories(at:featureColumns:labelColumn:recordingFileColumn:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v327 = a4;
  v305 = a3;
  v8 = v6;
  v303 = v7;
  v325 = a6;
  v330 = a5;
  v314 = a1;
  v284 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Double>);
  v262 = *(v284 - 8);
  v9 = *(v262 + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v281 = &v262;
  v263 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FilledColumn<Column<Double>>);
  v12 = *(*(v263 - 8) + 64);
  v13 = alloca(v12);
  v14 = alloca(v12);
  v264 = &v262;
  v312 = type metadata accessor for CSVType(0);
  v313 = *(v312 - 8);
  v15 = *(v313 + 64);
  v16 = alloca(v15);
  v17 = alloca(v15);
  v301 = &v262;
  v18 = alloca(v15);
  v19 = alloca(v15);
  v271 = &v262;
  v20 = *(*(type metadata accessor for CSVReadingOptions(0) - 8) + 64);
  v21 = alloca(v20);
  v22 = alloca(v20);
  v272 = &v262;
  v287 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (String, CSVType));
  v288 = *(v287 - 8);
  v23 = *(v288 + 64);
  v24 = alloca(v23);
  v25 = alloca(v23);
  v285 = &v262;
  v26 = alloca(v23);
  v27 = alloca(v23);
  v291 = &v262;
  v307._object = type metadata accessor for JSONType(0);
  v310 = *(v307._object - 1);
  v28 = *(v310 + 64);
  v29 = alloca(v28);
  v30 = alloca(v28);
  v302 = &v262;
  v31 = *(*(type metadata accessor for JSONReadingOptions(0) - 8) + 64);
  v32 = alloca(v31);
  v33 = alloca(v31);
  v273 = &v262;
  v289 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (String, JSONType));
  v290 = *(v289 - 8);
  v34 = *(v290 + 64);
  v35 = alloca(v34);
  v36 = alloca(v34);
  v286 = &v262;
  v37 = alloca(v34);
  v38 = alloca(v34);
  v304 = &v262;
  v316 = type metadata accessor for DataFrame(0);
  v315 = *(v316 - 8);
  v39 = *(v315 + 64);
  v40 = alloca(v39);
  v41 = alloca(v39);
  v274 = &v262;
  v42 = alloca(v39);
  v43 = alloca(v39);
  v275 = &v262;
  v44 = alloca(v39);
  v45 = alloca(v39);
  v308 = &v262;
  v297 = type metadata accessor for UTType(0);
  v298 = *(v297 - 8);
  v46 = *(v298 + 64);
  v47 = alloca(v46);
  v48 = alloca(v46);
  v296 = &v262;
  v332 = type metadata accessor for URL(0);
  v333 = *(v332 - 8);
  v49 = *(v333 + 64);
  v50 = alloca(v49);
  v51 = alloca(v49);
  v292 = &v262;
  v52 = alloca(v49);
  v53 = alloca(v49);
  v293 = &v262;
  v54 = alloca(v49);
  v55 = alloca(v49);
  v321 = &v262;
  v56 = alloca(v49);
  v57 = alloca(v49);
  v326 = &v262;
  v58 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<String>?) - 8) + 64);
  v59 = alloca(v58);
  v60 = alloca(v58);
  v309 = &v262;
  v282 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[Double]>);
  v283 = *(v282 - 8);
  v61 = *(v283 + 64);
  v62 = alloca(v61);
  v63 = alloca(v61);
  v317 = a2;
  v64 = _swiftEmptyArrayStorage;
  v320 = *(a2 + 16);
  v328 = v8;
  if (v320)
  {
    *&v311[0] = _swiftEmptyArrayStorage;
    v65 = v320;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v320, 0);
    v64 = *&v311[0];
    v66 = (v317 + 40);
    v331 = &v262;
    do
    {
      v335._countAndFlagsBits = v65;
      v324 = v64;
      _._countAndFlagsBits = *(v66 - 1);
      v336 = *v66;
      v279 = _swiftEmptyArrayStorage;

      v334 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Double]);
      v67 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [[Double]]);
      v68 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type [[Double]] and conformance [A], &demangling cache variable for type metadata for [[Double]], &protocol conformance descriptor for [A]);
      v64 = v324;
      Column.init<A>(name:contents:)(_._countAndFlagsBits, v336, &v279, v334, v67, v68);
      *&v311[0] = v64;
      v69 = v64[2];
      if (v64[3] >> 1 <= v69)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v64[3] >= 2uLL, v69 + 1, 1);
        v64 = *&v311[0];
      }

      v64[2] = v69 + 1;
      (*(v283 + 32))(v64 + ((*(v283 + 80) + 32) & ~*(v283 + 80)) + *(v283 + 72) * v69, v331, v282);
      v66 += 2;
      v65 = v335._countAndFlagsBits - 1;
    }

    while (v335._countAndFlagsBits != 1);
    v8 = v328;
  }

  v324 = v64;
  *&v311[0] = _swiftEmptyArrayStorage;
  v335._countAndFlagsBits = type metadata accessor for MLActivityClassifier.DataSource.Columns(0);
  v70 = v8 + *(v335._countAndFlagsBits + 20);
  v71 = v327;

  v72 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String]);
  v73 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type [String] and conformance [A], &demangling cache variable for type metadata for [String], &protocol conformance descriptor for [A]);
  v294 = v70;
  Column.init<A>(name:contents:)(v305, v71, v311, &type metadata for String, v72, v73);
  *&v311[0] = _swiftEmptyArrayStorage;
  v74 = v325;

  v75 = v309;
  v76 = v72;
  v77 = v328;
  Column.init<A>(name:contents:)(v330, v74, v311, &type metadata for String, v76, v73);
  v266 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<String>);
  __swift_storeEnumTagSinglePayload(v75, 0, 1, v266);
  countAndFlagsBits = v335._countAndFlagsBits;
  v79 = v284;
  __swift_storeEnumTagSinglePayload(v77 + *(v335._countAndFlagsBits + 28), 1, 1, v284);
  v80 = v79;
  v81 = v324;
  __swift_storeEnumTagSinglePayload(v77 + *(countAndFlagsBits + 32), 1, 1, v80);
  *v77 = v81;
  v82 = v77 + *(countAndFlagsBits + 24);
  outlined init with take of DataFrame?(v309, v82, &demangling cache variable for type metadata for Column<String>?);
  v83 = v303;
  v84 = static _FileUtilities.getReadableSubdirectoriesOfDirectory(at:)();
  if (v83)
  {
    return outlined destroy of MLActivityClassifier.DataSource.Columns(v77);
  }

  v85 = v84;
  v270 = v82;
  v86 = v84[2];
  v330 = 0;
  if (v86)
  {
    v87 = v332;
  }

  else
  {
    v84;
    v88 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<URL>);
    v89 = v333;
    v90 = *(v333 + 80);
    v91 = (v90 + 32) & ~*(v333 + 80);
    v92 = swift_allocObject(v88, v91 + *(v333 + 72), v90 | 7);
    *(v92 + 16) = 1;
    *(v92 + 24) = 2;
    v93 = v92 + v91;
    v87 = v332;
    (*(v89 + 16))(v93, v314, v332);
    v85 = v92;
    v86 = *(v92 + 16);
    if (!v86)
    {
      return v85;
    }
  }

  v276 = (*(v333 + 80) + 32) & ~*(v333 + 80);
  v94 = v85 + v276;
  v309 = (v317 + 32);
  LODWORD(v314) = enum case for CSVType.double(_:);
  LODWORD(v303) = enum case for JSONType.double(_:);
  v306 = (v317 + 40);
  v95 = 0;
  v96 = v296;
  v322 = v85;
  v277 = v86;
  v278 = v85 + v276;
LABEL_12:
  if (v95 >= v85[2])
  {
    BUG();
  }

  v97 = v81;
  v98 = *(v333 + 16);
  v267 = *(v333 + 72);
  v299 = v95;
  v99 = v326;
  v295 = v98;
  v98(v326, &v94[v95 * v267], v87);
  v307._countAndFlagsBits = URL.lastPathComponent.getter();
  v329 = v100;
  static UTType.text.getter();
  v101 = v330;
  v102 = static _FileUtilities.readableFiles(at:type:)(v99, v96);
  v330 = v101;
  if (v101)
  {
    (*(v298 + 8))(v96, v297);
    v329;
    (*(v333 + 8))(v326, v87);
    v322;
    v77 = v328;
    return outlined destroy of MLActivityClassifier.DataSource.Columns(v77);
  }

  v103 = v102;
  (*(v298 + 8))(v96, v297);
  v269 = v103[2];
  if (!v269)
  {
    v103;
    v322;
    *&v311[0] = 0;
    *(&v311[0] + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(60);
    v248._countAndFlagsBits = 0xD000000000000019;
    v248._object = "tted text file " + 0x8000000000000000;
    String.append(_:)(v248);
    v248._countAndFlagsBits = v307._countAndFlagsBits;
    v248._object = v329;
    String.append(_:)(v248);
    v248._countAndFlagsBits = 0xD000000000000021;
    v335._countAndFlagsBits = 0xD000000000000021;
    v248._object = " one feature column." + 0x8000000000000000;
    String.append(_:)(v248);
    v249 = *(&v311[0] + 1);
    _._countAndFlagsBits = *&v311[0];
    v250 = static os_log_type_t.error.getter();
    v248._countAndFlagsBits = _._countAndFlagsBits;
    v248._object = v249;
    log(_:type:)(v248, v250);
    v249;
    *&v311[0] = 0;
    *(&v311[0] + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(60);
    v248._countAndFlagsBits = 0xD000000000000019;
    v248._object = "tted text file " + 0x8000000000000000;
    String.append(_:)(v248);
    v248._countAndFlagsBits = v307._countAndFlagsBits;
    v251 = v329;
    v248._object = v329;
    String.append(_:)(v248);
    v251;
    v248._countAndFlagsBits = v335._countAndFlagsBits;
    v248._object = " one feature column." + 0x8000000000000000;
    String.append(_:)(v248);
    v335 = v311[0];
    v252 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v252, 0, 0);
    *v253 = v335;
    *(v253 + 16) = 0;
    *(v253 + 32) = 0;
    *(v253 + 48) = 0;
    swift_willThrow();
    (*(v333 + 8))(v326, v332);
    goto LABEL_112;
  }

  ++v299;
  v318 = v103;
  v268 = v103 + v276;
  v104 = 0;
  v105 = v321;
  v81 = v97;
  v106 = v295;
  while (1)
  {
    if (v104 >= v318[2])
    {
      BUG();
    }

    v324 = v81;
    v305 = v104;
    v107 = v332;
    v106(v105, &v268[v267 * v104], v332);
    v108._countAndFlagsBits = 0x6E6F736A2ELL;
    v108._object = 0xE500000000000000;
    v265 = URL.absoluteString.getter();
    v327 = v109;
    if (String.hasSuffix(_:)(v108))
    {
      v106(v293, v105, v107);
      if (v320)
      {
        *&v311[0] = _swiftEmptyArrayStorage;
        v110 = v320;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v320, 0);
        v111 = *&v311[0];
        v334 = *(v310 + 104);
        v112 = v306;
        v113 = v286;
        do
        {
          _._countAndFlagsBits = v110;
          v114 = *(v112 - 1);
          v336 = *v112;
          v115 = v336;
          v116 = v113 + *(v289 + 48);
          *v113 = v114;
          v113[1] = v115;
          (v334)(v116, v303, v307._object);
          *&v311[0] = v111;
          v117 = v111[2];
          v331 = v111[3];
          v118 = v331 >> 1;
          v335._countAndFlagsBits = v117 + 1;

          if (v118 <= v117)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v331 >= 2, v335._countAndFlagsBits, 1);
            v111 = *&v311[0];
          }

          v111[2] = v335._countAndFlagsBits;
          v113 = v286;
          outlined init with take of DataFrame?(v286, v111 + ((*(v290 + 80) + 32) & ~*(v290 + 80)) + *(v290 + 72) * v117, &demangling cache variable for type metadata for (String, JSONType));
          v112 += 2;
          v110 = _._countAndFlagsBits - 1;
        }

        while (_._countAndFlagsBits != 1);
      }

      else
      {
        v111 = _swiftEmptyArrayStorage;
      }

      v129 = v111[2];
      if (v129)
      {
        __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _DictionaryStorage<String, JSONType>);
        v130 = static _DictionaryStorage.allocate(capacity:)(v129);
        v131 = v111[2];
        v323 = v130;
        v334 = v131;
        if (v131)
        {
          v331 = v304 + *(v289 + 48);
          v132 = v290;
          v133 = v111 + ((*(v290 + 80) + 32) & ~*(v290 + 80));
          v319 = v111;
          swift_bridgeObjectRetain_n(v111, 2);
          v325 = *(v132 + 72);
          v134 = v304;
          v135 = 0;
          while (1)
          {
            outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v133, v134, &demangling cache variable for type metadata for (String, JSONType));
            v136 = __OFADD__(1, v135++);
            if (v136)
            {
              BUG();
            }

            v336 = v133;
            v137 = *v134;
            v138 = v134[1];
            *&v311[0] = v137;
            *(&v311[0] + 1) = v138;
            _._countAndFlagsBits = *(v310 + 32);
            (_._countAndFlagsBits)(v302, v331, v307._object);
            v335._countAndFlagsBits = v138;
            v139 = specialized __RawDictionaryStorage.find<A>(_:)(v137, v138);
            v141 = (v140 & 1) == 0;
            v136 = __OFADD__(v130[2], v141);
            v142 = v130[2] + v141;
            if (v136)
            {
              BUG();
            }

            v143 = v140;
            if (v130[3] < v142)
            {
              specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v142, 1);
              v130 = v323;
              v144 = v335._countAndFlagsBits;
              v139 = specialized __RawDictionaryStorage.find<A>(_:)(v137, v335._countAndFlagsBits);
              LOBYTE(v145) = v145 & 1;
              v146 = v143;
              LOBYTE(v146) = v143 & 1;
              if ((v143 & 1) != v145)
              {
                goto LABEL_129;
              }
            }

            if (v143)
            {
              break;
            }

            v130[(v139 >> 6) + 8] |= 1 << v139;
            v147 = v130[6];
            v148 = 16 * v139;
            *(v147 + v148) = v137;
            *(v147 + v148 + 8) = v335._countAndFlagsBits;
            (_._countAndFlagsBits)(v130[7] + *(v310 + 72) * v139, v302, v307._object);
            v149 = v130[2];
            v136 = __OFADD__(1, v149);
            v150 = v149 + 1;
            v134 = v304;
            if (v136)
            {
              BUG();
            }

            v130[2] = v150;
            v133 = &v336[v325];
            if (v135 == v334)
            {
              v151 = v319;
              swift_bridgeObjectRelease_n(v319, 3);
              goto LABEL_56;
            }
          }

          v258 = swift_allocError(&type metadata for _MergeError, &protocol witness table for _MergeError, 0, 0);
          swift_willThrow();
          v300 = v258;
          swift_errorRetain(v258);
          v259 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Error);
          if (swift_dynamicCast(&demangling cache variable for type metadata for Error, &v300, v259, &type metadata for _MergeError, 0))
          {
            goto LABEL_128;
          }

          v261 = v319;
          v319;
          (*(v310 + 8))(v302, v307._object);
          v261;
          v335._countAndFlagsBits;
          v300;
          v257 = v258;
          goto LABEL_131;
        }
      }

      else
      {
        v130 = _swiftEmptyDictionarySingleton;
        v323 = _swiftEmptyDictionarySingleton;
      }

      v151 = v111;
      v111;
LABEL_56:
      v173 = v273;
      JSONReadingOptions.init()(v151);
      v174 = v317;

      v175 = v275;
      v176 = v330;
      DataFrame.init(contentsOfJSONFile:columns:types:options:)(v293, v174, v130, v173);
    }

    else
    {
      v106(v292, v105, v107);
      if (v320)
      {
        *&v311[0] = _swiftEmptyArrayStorage;
        v119 = v320;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v320, 0);
        v120 = *&v311[0];
        v334 = *(v313 + 104);
        v121 = v306;
        v122 = v285;
        do
        {
          _._countAndFlagsBits = v119;
          v123 = *(v121 - 1);
          v336 = *v121;
          v124 = v336;
          v125 = v122 + *(v287 + 48);
          *v122 = v123;
          v122[1] = v124;
          (v334)(v125, v314, v312);
          *&v311[0] = v120;
          v126 = v120[2];
          v331 = v120[3];
          v127 = v331 >> 1;
          v335._countAndFlagsBits = v126 + 1;

          if (v127 <= v126)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v331 >= 2, v335._countAndFlagsBits, 1);
            v120 = *&v311[0];
          }

          v120[2] = v335._countAndFlagsBits;
          v122 = v285;
          outlined init with take of DataFrame?(v285, v120 + ((*(v288 + 80) + 32) & ~*(v288 + 80)) + *(v288 + 72) * v126, &demangling cache variable for type metadata for (String, CSVType));
          v121 += 2;
          v119 = _._countAndFlagsBits - 1;
        }

        while (_._countAndFlagsBits != 1);
        v128 = v120;
      }

      else
      {
        v128 = _swiftEmptyArrayStorage;
      }

      v152 = v128[2];
      v153 = v291;
      if (v152)
      {
        v319 = v128;
        __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _DictionaryStorage<String, CSVType>);
        v154 = static _DictionaryStorage.allocate(capacity:)(v152);
        LOBYTE(v128) = v319;
        v155 = v154;
        v156 = v319[2];
        v323 = v155;
        v334 = v156;
        if (v156)
        {
          v331 = v153 + *(v287 + 48);
          v157 = v288;
          v158 = v319 + ((*(v288 + 80) + 32) & ~*(v288 + 80));
          swift_bridgeObjectRetain_n(v319, 2);
          v325 = *(v157 + 72);
          v159 = 0;
          while (1)
          {
            outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v158, v153, &demangling cache variable for type metadata for (String, CSVType));
            v136 = __OFADD__(1, v159++);
            if (v136)
            {
              BUG();
            }

            _._countAndFlagsBits = v158;
            v160 = v153;
            v161 = *v153;
            v162 = v160[1];
            *&v311[0] = v161;
            *(&v311[0] + 1) = v162;
            v336 = *(v313 + 32);
            (v336)(v301, v331, v312);
            v335._countAndFlagsBits = v162;
            v163 = specialized __RawDictionaryStorage.find<A>(_:)(v161, v162);
            v165 = (v164 & 1) == 0;
            v136 = __OFADD__(v155[2], v165);
            v166 = v155[2] + v165;
            if (v136)
            {
              BUG();
            }

            v167 = v164;
            if (v155[3] < v166)
            {
              specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v166, 1);
              v144 = v335._countAndFlagsBits;
              v163 = specialized __RawDictionaryStorage.find<A>(_:)(v161, v335._countAndFlagsBits);
              LOBYTE(v145) = v145 & 1;
              v146 = v167;
              LOBYTE(v146) = v167 & 1;
              if ((v167 & 1) != v145)
              {
LABEL_129:
                KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(&type metadata for String, v144, v145, v146);
                BUG();
              }
            }

            if (v167)
            {
              break;
            }

            v155 = v323;
            v323[(v163 >> 6) + 8] |= 1 << v163;
            v168 = v155[6];
            v169 = 16 * v163;
            *(v168 + v169) = v161;
            *(v168 + v169 + 8) = v335._countAndFlagsBits;
            (v336)(v155[7] + *(v313 + 72) * v163, v301, v312);
            v170 = v155[2];
            v136 = __OFADD__(1, v170);
            v171 = v170 + 1;
            v172 = _._countAndFlagsBits;
            if (v136)
            {
              BUG();
            }

            v155[2] = v171;
            v158 = v325 + v172;
            v153 = v291;
            if (v159 == v334)
            {
              swift_bridgeObjectRelease_n(v319, 3);
              goto LABEL_59;
            }
          }

          v254 = swift_allocError(&type metadata for _MergeError, &protocol witness table for _MergeError, 0, 0);
          swift_willThrow();
          v300 = v254;
          swift_errorRetain(v254);
          v255 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Error);
          if (swift_dynamicCast(&demangling cache variable for type metadata for Error, &v300, v255, &type metadata for _MergeError, 0))
          {
LABEL_128:
            v279 = 0;
            v280 = 0xE000000000000000;
            _StringGuts.grow(_:)(30);
            v260._object = "Swift/NativeDictionary.swift" + 0x8000000000000000;
            v260._countAndFlagsBits = 0xD00000000000001BLL;
            String.append(_:)(v260);
            _print_unlocked<A, B>(_:_:)(v311, &v279, &type metadata for String, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
            v260._countAndFlagsBits = 39;
            v260._object = 0xE100000000000000;
            String.append(_:)(v260);
            _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, v279, v280, "Swift/NativeDictionary.swift", 28, 2, 783, 0);
            BUG();
          }

          v256 = v319;
          v319;
          (*(v313 + 8))(v301, v312);
          v256;
          v335._countAndFlagsBits;
          v300;
          v257 = v254;
LABEL_131:
          swift_unexpectedError(v257, "Swift/Dictionary.swift", 22, 1, 489);
          BUG();
        }
      }

      else
      {
        v155 = _swiftEmptyDictionarySingleton;
        v323 = _swiftEmptyDictionarySingleton;
      }

      v128;
LABEL_59:
      v335._countAndFlagsBits = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0gq5(&outlined read-only object #0 of default argument 1 of CSVReadingOptions.init(hasHeaderRow:nilEncodings:trueEncodings:falseEncodings:floatingPointType:ignoresEmptyLines:usesQuoting:usesEscaping:delimiter:escapeCharacter:));
      _._countAndFlagsBits = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0gq5(&outlined read-only object #0 of default argument 2 of CSVReadingOptions.init(hasHeaderRow:nilEncodings:trueEncodings:falseEncodings:floatingPointType:ignoresEmptyLines:usesQuoting:usesEscaping:delimiter:escapeCharacter:));
      v177 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0gq5(&outlined read-only object #0 of default argument 3 of CSVReadingOptions.init(hasHeaderRow:nilEncodings:trueEncodings:falseEncodings:floatingPointType:ignoresEmptyLines:usesQuoting:usesEscaping:delimiter:escapeCharacter:));
      v178 = v271;
      (*(v313 + 104))(v271, v314, v312);
      v179 = v272;
      CSVReadingOptions.init(hasHeaderRow:nilEncodings:trueEncodings:falseEncodings:floatingPointType:ignoresEmptyLines:usesQuoting:usesEscaping:delimiter:escapeCharacter:)(1, v335._countAndFlagsBits, _._countAndFlagsBits, v177, v178, 1, 1, 0, 44, 0xE100000000000000, 92);
      v180 = v317;

      v175 = v274;
      v176 = v330;
      DataFrame.init(contentsOfCSVFile:columns:rows:types:options:)(v292, v180, 0, 0, 1, v155, v179);
    }

    if (v176)
    {
      v327;
      v329;
      v239 = *(v333 + 8);
      v240 = v332;
      v239(v321, v332);
      v318;
      v239(v326, v240);
      v322;
      goto LABEL_112;
    }

    v181 = v308;
    v182 = v316;
    (*(v315 + 32))(v308, v175, v316);
    if (DataFrameProtocol.isEmpty.getter(v182, &protocol witness table for DataFrame))
    {
      v322;
      v318;
      v327;
      v329;
      v241 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
      swift_allocError(&type metadata for MLCreateError, v241, 0, 0);
      *v242 = 0xD000000000000034;
      *(v242 + 8) = "n the same feature columns." + 0x8000000000000000;
      *(v242 + 16) = 0;
      *(v242 + 32) = 0;
      *(v242 + 48) = 0;
      swift_willThrow();
      v243 = v181;
      goto LABEL_111;
    }

    v183 = DataFrame.columns.getter(v182);
    v184 = v183;
    MLE23validateContainsColumns_7contextySaySSG_SStKFSSAA9fG54Vcfu_33_06ca46402338970f1b3e0a01942d815dAISSTf3nnnpk_nTf1cn_n = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay11TabularData9AnyColumnVG_SSs5NeverOTg504_s11d75Data0B5FrameV8CreateMLE23validateContainsColumns_7contextySaySSG_SStKFSSAA9fG54Vcfu_33_06ca46402338970f1b3e0a01942d815dAISSTf3nnnpk_nTf1cn_n(v183);
    v330 = 0;
    v184;
    v186 = Set.init(minimumCapacity:)(MLE23validateContainsColumns_7contextySaySSG_SStKFSSAA9fG54Vcfu_33_06ca46402338970f1b3e0a01942d815dAISSTf3nnnpk_nTf1cn_n[2], &type metadata for String, &protocol witness table for String);
    v334 = MLE23validateContainsColumns_7contextySaySSG_SStKFSSAA9fG54Vcfu_33_06ca46402338970f1b3e0a01942d815dAISSTf3nnnpk_nTf1cn_n[2];
    if (v334)
    {
      v325 = MLE23validateContainsColumns_7contextySaySSG_SStKFSSAA9fG54Vcfu_33_06ca46402338970f1b3e0a01942d815dAISSTf3nnnpk_nTf1cn_n;
      v331 = (MLE23validateContainsColumns_7contextySaySSG_SStKFSSAA9fG54Vcfu_33_06ca46402338970f1b3e0a01942d815dAISSTf3nnnpk_nTf1cn_n + 4);
      v187 = 0;
      do
      {
        _._countAndFlagsBits = v186;
        while (1)
        {
          v188 = *(v331 + 16 * v187);
          v189 = *(v331 + 16 * v187 + 8);
          v336 = v187 + 1;
          Hasher.init(_seed:)(*(v186 + 40));

          v335._countAndFlagsBits = v189;
          String.hash(into:)(v311, v188);
          v190 = Hasher._finalize()();
          v191 = ~(-1 << *(v186 + 32));
          v192 = v191 & v190;
          v193 = *(v186 + 8 * ((v191 & v190) >> 6) + 56);
          if (!_bittest64(&v193, v192))
          {
            break;
          }

          v194 = *(v186 + 48);
          while (1)
          {
            v195 = *(v194 + 16 * v192);
            v196 = *(v194 + 16 * v192 + 8);
            if (v195 == v188 && v196 == v335._countAndFlagsBits)
            {
              v198 = v335._countAndFlagsBits;
              goto LABEL_74;
            }

            if (_stringCompareWithSmolCheck(_:_:expecting:)(v195, v196, v188, v335._countAndFlagsBits, 0))
            {
              break;
            }

            v192 = v191 & (v192 + 1);
            v197 = *(_._countAndFlagsBits + 8 * (v192 >> 6) + 56);
            if (!_bittest64(&v197, v192))
            {
              goto LABEL_76;
            }
          }

          v198 = v335._countAndFlagsBits;
LABEL_74:
          v198;
          v186 = _._countAndFlagsBits;
          _._countAndFlagsBits;
          v187 = v336;
          if (v336 == v334)
          {
            goto LABEL_77;
          }
        }

LABEL_76:
        v199 = _._countAndFlagsBits;
        _._countAndFlagsBits;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v199);
        *&v311[0] = v199;
        specialized _NativeSet.insertNew(_:at:isUnique:)(v188, v335._countAndFlagsBits, v192, isUniquelyReferenced_nonNull_native);
        v186 = *&v311[0];
        v187 = v336;
      }

      while (v336 != v334);
LABEL_77:
      v201 = v325;
    }

    else
    {
      v201 = MLE23validateContainsColumns_7contextySaySSG_SStKFSSAA9fG54Vcfu_33_06ca46402338970f1b3e0a01942d815dAISSTf3nnnpk_nTf1cn_n;
    }

    v201;
    _._countAndFlagsBits = v186;

    v202 = v320;
    v203 = Set.init(minimumCapacity:)(v320, &type metadata for String, &protocol witness table for String);
    if (v202)
    {
      v204 = 0;
      do
      {
        v336 = v203;
        while (1)
        {
          v205 = v309[2 * v204];
          v206 = v309[2 * v204 + 1];
          v334 = v204 + 1;
          Hasher.init(_seed:)(*(v203 + 5));

          v335._countAndFlagsBits = v206;
          String.hash(into:)(v311, v205);
          v207 = Hasher._finalize()();
          v208 = ~(-1 << v203[32]);
          v209 = v208 & v207;
          v210 = *&v203[8 * ((v208 & v207) >> 6) + 56];
          if (!_bittest64(&v210, v209))
          {
            break;
          }

          v211 = *(v203 + 6);
          while (1)
          {
            v212 = *(v211 + 16 * v209);
            v213 = *(v211 + 16 * v209 + 8);
            if (v212 == v205 && v213 == v335._countAndFlagsBits)
            {
              v215 = v335._countAndFlagsBits;
              goto LABEL_91;
            }

            if (_stringCompareWithSmolCheck(_:_:expecting:)(v212, v213, v205, v335._countAndFlagsBits, 0))
            {
              break;
            }

            v209 = v208 & (v209 + 1);
            v214 = *&v336[8 * (v209 >> 6) + 56];
            if (!_bittest64(&v214, v209))
            {
              goto LABEL_93;
            }
          }

          v215 = v335._countAndFlagsBits;
LABEL_91:
          v215;
          v203 = v336;
          v336;
          v202 = v320;
          v204 = v334;
          if (v334 == v320)
          {
            goto LABEL_94;
          }
        }

LABEL_93:
        v216 = v336;
        v336;
        v217 = swift_isUniquelyReferenced_nonNull_native(v216);
        *&v311[0] = v216;
        specialized _NativeSet.insertNew(_:at:isUnique:)(v205, v335._countAndFlagsBits, v209, v217);
        v203 = *&v311[0];
        v202 = v320;
        v204 = v334;
      }

      while (v334 != v320);
    }

LABEL_94:
    v317;
    v218 = _._countAndFlagsBits;
    v219 = v203;
    v220 = _sSh2eeoiySbShyxG_ABtFZSS_Tt1g5(_._countAndFlagsBits, v203);
    v218;
    v219;
    if ((v220 & 1) == 0)
    {
      break;
    }

    if (v202)
    {
      v221 = v306;
      v222 = 0;
      do
      {
        v223 = *(v221 - 1);
        v335._countAndFlagsBits = v221;
        v224 = *v221;

        DataFrame.subscript.getter(v223, v224, &type metadata for Double);
        v224;
        *&v311[0] = 0;
        v225 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type Column<Double> and conformance Column<A>, &demangling cache variable for type metadata for Column<Double>, &protocol conformance descriptor for Column<A>);
        v226 = v284;
        v227 = v281;
        OptionalColumnProtocol.filled(with:)(v311, v284, v225);
        (*(v262 + 8))(v227, v226);
        v228 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type FilledColumn<Column<Double>> and conformance FilledColumn<A>, &demangling cache variable for type metadata for FilledColumn<Column<Double>>, &protocol conformance descriptor for FilledColumn<A>);
        v229 = dispatch thunk of Sequence._copyToContiguousArray()(v263, v228);
        *&v311[0] = v229;
        v230 = v324;
        v231 = swift_isUniquelyReferenced_nonNull_native(v324) == 0;
        v232 = v230;
        if (v231)
        {
          v232 = specialized _ArrayBuffer._consumeAndCreateNew()(v230);
        }

        if (v222 >= v232[2])
        {
          BUG();
        }

        _._countAndFlagsBits = v229;
        v324 = v232;
        Column.append(_:)(v311, v282);

        v221 = (v335._countAndFlagsBits + 16);
        ++v222;
      }

      while (v320 != v222);
      *v328 = v324;
    }

    *&v311[0] = v307._countAndFlagsBits;
    *(&v311[0] + 1) = v329;
    v233 = v266;
    Column.append(_:)(v311, v266);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v270, 1, v233);
    v235 = v308;
    if (EnumTagSinglePayload)
    {
      v327;
      (*(v315 + 8))(v235, v316);
      v236 = *(v333 + 8);
      v105 = v321;
      v236(v321, v332);
    }

    else
    {
      *&v311[0] = v265;
      *(&v311[0] + 1) = v327;
      Column.append(_:)(v311, v233);
      (*(v315 + 8))(v235, v316);
      v236 = *(v333 + 8);
      v105 = v321;
      v236(v321, v332);
      v327;
    }

    v104 = v305 + 1;
    v81 = v324;
    v106 = v295;
    if ((v305 + 1) == v269)
    {
      v318;
      v329;
      v237 = v332;
      v236(v326, v332);
      v87 = v237;
      v95 = v299;
      v96 = v296;
      v85 = v322;
      v94 = v278;
      if (v299 == v277)
      {
        return v85;
      }

      goto LABEL_12;
    }
  }

  v322;
  v318;
  v327;
  v329;
  v244 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
  swift_allocError(&type metadata for MLCreateError, v244, 0, 0);
  *v245 = 0xD00000000000003BLL;
  *(v245 + 8) = "Missing features column '" + 0x8000000000000000;
  *(v245 + 16) = 0;
  *(v245 + 32) = 0;
  *(v245 + 48) = 0;
  swift_willThrow();
  v243 = v308;
LABEL_111:
  (*(v315 + 8))(v243, v316);
  v246 = *(v333 + 8);
  v247 = v332;
  v246(v321, v332);
  v246(v326, v247);
LABEL_112:
  v77 = v328;
  return outlined destroy of MLActivityClassifier.DataSource.Columns(v77);
}

uint64_t MLActivityClassifier.DataSource.gatherDataFromAnnotations(directoryURL:annotationFileName:labelColumn:fileColumn:startTimeColumn:endTimeColumn:featureColumns:timeStampColumn:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t *a12, char *a13, uint64_t a14)
{
  v327 = a4;
  v314 = a3;
  v303 = v14;
  v317 = v15;
  v286 = v16;
  v322 = a6;
  v328 = a5;
  v18 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FilledColumn<Column<String>>) - 8) + 64);
  v19 = alloca(v18);
  v20 = alloca(v18);
  v298 = &v281;
  v292 = type metadata accessor for DataFrame.Rows(0);
  v21 = *(v292 - 8);
  v22 = *(v21 + 64);
  v23 = alloca(v22);
  v24 = alloca(v22);
  v293 = &v281;
  v305 = type metadata accessor for DataFrame.Slice(0);
  v306 = *(v305 - 8);
  v25 = *(v306 + 64);
  v26 = alloca(v25);
  v27 = alloca(v25);
  v304 = &v281;
  v28 = alloca(v25);
  v29 = alloca(v25);
  v300 = &v281;
  v318 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Double>);
  v299 = *(v318 - 8);
  v30 = *(v299 + 64);
  v31 = alloca(v30);
  v32 = alloca(v30);
  v301 = &v281;
  v33 = alloca(v30);
  v34 = alloca(v30);
  v312 = &v281;
  v35 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Double>?) - 8) + 64);
  v36 = alloca(v35);
  v37 = alloca(v35);
  v294 = &v281;
  v38 = alloca(v35);
  v39 = alloca(v35);
  v295 = &v281;
  v40 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<String>?) - 8) + 64);
  v41 = alloca(v40);
  v42 = alloca(v40);
  v296 = &v281;
  v315 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<String>);
  v309 = *(v315 - 8);
  v43 = *(v309 + 64);
  v44 = alloca(v43);
  v45 = alloca(v43);
  v316 = &v281;
  v297 = type metadata accessor for MLActivityClassifier.DataSource.Columns(0);
  v46 = *(*(v297 - 8) + 64);
  v47 = alloca(v46);
  v48 = alloca(v46);
  v321 = &v281;
  v49 = *(*(type metadata accessor for CSVReadingOptions(0) - 8) + 64);
  v50 = alloca(v49);
  v51 = alloca(v49);
  v290 = &v281;
  v319 = type metadata accessor for CSVType(0);
  v320 = *(v319 - 8);
  v52 = *(v320 + 64);
  v53 = alloca(v52);
  v54 = alloca(v52);
  v310 = &v281;
  v55 = alloca(v52);
  v56 = alloca(v52);
  v324 = &v281;
  v57 = *(*(type metadata accessor for JSONReadingOptions(0) - 8) + 64);
  v58 = alloca(v57);
  v59 = alloca(v57);
  v288 = &v281;
  v334 = type metadata accessor for JSONType(0);
  v333 = *(v334 - 8);
  v60 = *(v333 + 64);
  v61 = alloca(v60);
  v62 = alloca(v60);
  v335 = &v281;
  v63 = alloca(v60);
  v64 = alloca(v60);
  v307 = &v281;
  v330 = type metadata accessor for DataFrame(0);
  v329 = *(v330 - 8);
  v65 = *(v329 + 64);
  v66 = alloca(v65);
  v67 = alloca(v65);
  v302 = &v281;
  v68 = alloca(v65);
  v69 = alloca(v65);
  v291 = &v281;
  v70 = alloca(v65);
  v71 = alloca(v65);
  v289 = &v281;
  v72 = alloca(v65);
  v73 = alloca(v65);
  v331 = &v281;
  v325 = type metadata accessor for URL(0);
  v326 = *(v325 - 8);
  v74 = *(v326 + 64);
  v75 = alloca(v74);
  v76 = alloca(v74);
  v287 = &v281;
  v77 = alloca(v74);
  v78 = alloca(v74);
  v308 = &v281;
  v79 = alloca(v74);
  v80 = alloca(v74);
  v332 = &v281;
  v81 = alloca(v74);
  v82 = alloca(v74);
  v84 = v314;
  v314 = a1;
  URL.appendingPathComponent(_:)(a2, v84);
  v323 = &v281;
  v85 = URL.pathExtension.getter();
  v87 = v86;
  v311 = v21;
  if (v85 ^ 0x6E6F736A | v86 ^ 0xE400000000000000)
  {
    v88 = _stringCompareWithSmolCheck(_:_:expecting:)(v85, v86, 1852797802, 0xE400000000000000, 0);
    v87;
    if ((v88 & 1) == 0)
    {
      v144 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, CSVType)>);
      v145 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (String, CSVType));
      v146 = *(v145 - 8);
      v147 = v145;
      v335 = v145;
      v333 = *(v146 + 72);
      v148 = *(v146 + 80);
      v149 = (v148 + 32) & ~*(v146 + 80);
      v150 = swift_allocObject(v144, v149 + 2 * v333, v148 | 7);
      *(v150 + 16) = 2;
      *(v150 + 24) = 4;
      v151 = v150 + v149;
      v152 = v150 + v149 + *(v147 + 48);
      *(v150 + v149) = v327;
      *(v150 + v149 + 8) = v328;
      LODWORD(v334) = enum case for CSVType.string(_:);
      v153 = *(v320 + 104);
      v154 = v319;
      (v153)(v152, enum case for CSVType.string(_:), v319);
      v155 = v333;
      v156 = v151 + v333 + *(v335 + 12);
      *(v333 + v151) = v322;
      *(v155 + v151 + 8) = a7;
      (v153)(v156, v334, v154);
      v157 = v154;

      v158 = Dictionary.init(dictionaryLiteral:)(v150, &type metadata for String, v154, &protocol witness table for String);
      v332 = v153;
      if (a9)
      {
        v159 = v324;
        v333 = v158;
        (v153)(v324, enum case for CSVType.double(_:), v157);
        v160 = v310;
        (*(v320 + 32))(v310, v159, v157);

        v161 = v333;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v333);
        v313[0] = v161;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v160, a8, a9, isUniquelyReferenced_nonNull_native);
        a9;
        v158 = v313[0];
      }

      v333 = v158;
      if (a11)
      {
        v163 = v324;
        (v332)(v324, enum case for CSVType.double(_:), v157);
        v164 = v310;
        (*(v320 + 32))(v310, v163, v157);

        v165 = v333;
        v166 = swift_isUniquelyReferenced_nonNull_native(v333);
        v313[0] = v165;
        v167 = a10;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v164, a10, a11, v166);
        a11;
        v333 = v313[0];
      }

      else
      {
        v167 = a10;
      }

      (*(v326 + 16))(v308, v323, v325);
      v168 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<String?>);
      inited = swift_initStackObject(v168, v282);
      inited[2] = 4;
      inited[3] = 8;
      inited[4] = v327;
      v170 = v328;
      inited[5] = v328;
      v171 = v322;
      inited[6] = v322;
      v172 = a7;
      inited[7] = a7;
      inited[8] = a8;
      inited[9] = a9;
      inited[10] = v167;
      v173 = v170;
      inited[11] = a11;

      if (v173)
      {
        swift_bridgeObjectRetain_n(v173, 2);

        v174 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, _swiftEmptyArrayStorage);
        v175 = v174[2];
        v176 = v174[3];
        if (v176 >> 1 <= v175)
        {
          v174 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v176 >= 2, v175 + 1, 1, v174);
        }

        v174[2] = v175 + 1;
        v177 = 2 * v175;
        v174[v177 + 4] = v327;
        v174[v177 + 5] = v328;
        v171 = inited[6];
        v172 = inited[7];
      }

      else
      {

        v174 = _swiftEmptyArrayStorage;
      }

      if (v172)
      {

        v178 = swift_isUniquelyReferenced_nonNull_native(v174);
        v335 = v171;
        if (!v178)
        {
          v174 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v174[2] + 1, 1, v174);
        }

        v179 = v174[2];
        v180 = v174[3];
        v181 = v179 + 1;
        if (v180 >> 1 <= v179)
        {
          v334 = v179 + 1;
          v278 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v180 >= 2, v181, 1, v174);
          v181 = v334;
          v174 = v278;
        }

        v174[2] = v181;
        v182 = 2 * v179;
        v174[v182 + 4] = v335;
        v174[v182 + 5] = v172;
      }

      v183 = inited[9];
      if (v183)
      {
        v184 = inited[8];

        v185 = swift_isUniquelyReferenced_nonNull_native(v174);
        v335 = v184;
        if (!v185)
        {
          v174 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v174[2] + 1, 1, v174);
        }

        v186 = v174[2];
        v187 = v174[3];
        v188 = v186 + 1;
        if (v187 >> 1 <= v186)
        {
          v334 = v186 + 1;
          v279 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v187 >= 2, v188, 1, v174);
          v188 = v334;
          v174 = v279;
        }

        v174[2] = v188;
        v189 = 2 * v186;
        v174[v189 + 4] = v335;
        v174[v189 + 5] = v183;
      }

      v190 = inited[11];
      if (v190)
      {
        v191 = inited[10];

        v192 = swift_isUniquelyReferenced_nonNull_native(v174);
        v335 = v191;
        if (!v192)
        {
          v174 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v174[2] + 1, 1, v174);
        }

        v193 = v174[2];
        v194 = v174[3];
        v195 = v193 + 1;
        if (v194 >> 1 <= v193)
        {
          v334 = v193 + 1;
          v280 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v194 >= 2, v195, 1, v174);
          v195 = v334;
          v174 = v280;
        }

        v174[2] = v195;
        v196 = 2 * v193;
        v174[v196 + 4] = v335;
        v174[v196 + 5] = v190;
      }

      swift_setDeallocating(inited);
      specialized _ContiguousArrayStorage.__deallocating_deinit();
      v335 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0gq5(&outlined read-only object #0 of default argument 1 of CSVReadingOptions.init(hasHeaderRow:nilEncodings:trueEncodings:falseEncodings:floatingPointType:ignoresEmptyLines:usesQuoting:usesEscaping:delimiter:escapeCharacter:));
      v334 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0gq5(&outlined read-only object #0 of default argument 2 of CSVReadingOptions.init(hasHeaderRow:nilEncodings:trueEncodings:falseEncodings:floatingPointType:ignoresEmptyLines:usesQuoting:usesEscaping:delimiter:escapeCharacter:));
      v197 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0gq5(&outlined read-only object #0 of default argument 3 of CSVReadingOptions.init(hasHeaderRow:nilEncodings:trueEncodings:falseEncodings:floatingPointType:ignoresEmptyLines:usesQuoting:usesEscaping:delimiter:escapeCharacter:));
      v198 = v324;
      (v332)(v324, enum case for CSVType.double(_:), v319);
      v199 = v290;
      CSVReadingOptions.init(hasHeaderRow:nilEncodings:trueEncodings:falseEncodings:floatingPointType:ignoresEmptyLines:usesQuoting:usesEscaping:delimiter:escapeCharacter:)(1, v335, v334, v197, v198, 1, 1, 0, 44, 0xE100000000000000, 92);
      v142 = v291;
      v143 = v317;
      DataFrame.init(contentsOfCSVFile:columns:rows:types:options:)(v308, v174, 0, 0, 1, v333, v199);
      goto LABEL_62;
    }
  }

  else
  {
    v86;
  }

  v89 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, JSONType)>);
  v90 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (String, JSONType));
  v91 = *(v90 - 8);
  v92 = v90;
  v320 = v90;
  v324 = *(v91 + 72);
  v93 = *(v91 + 80);
  v94 = (v93 + 32) & ~*(v91 + 80);
  v95 = swift_allocObject(v89, v94 + 2 * v324, v93 | 7);
  *(v95 + 16) = 2;
  *(v95 + 24) = 4;
  v96 = v95 + v94;
  v97 = v95 + v94 + *(v92 + 48);
  *(v95 + v94) = v327;
  *(v95 + v94 + 8) = v328;
  LODWORD(v319) = enum case for JSONType.string(_:);
  v98 = *(v333 + 104);
  v99 = v334;
  (v98)(v97, enum case for JSONType.string(_:), v334);
  v100 = v324;
  v101 = (v96 + v324 + *(v320 + 48));
  *(v324 + v96) = v322;
  *(v100 + v96 + 8) = a7;
  v102 = v99;
  v324 = v98;
  (v98)(v101, v319, v99);

  v103 = Dictionary.init(dictionaryLiteral:)(v95, &type metadata for String, v99, &protocol witness table for String);
  if (a9)
  {
    v104 = v307;
    (v324)(v307, enum case for JSONType.double(_:), v99);
    v105 = v335;
    (*(v333 + 32))(v335, v104, v102);

    v106 = swift_isUniquelyReferenced_nonNull_native(v103);
    v313[0] = v103;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v105, a8, a9, v106);
    a9;
    v103 = v313[0];
  }

  v107 = v322;
  if (a11)
  {
    v108 = v307;
    v109 = v334;
    (v324)(v307, enum case for JSONType.double(_:), v334);
    v110 = v108;
    v107 = v322;
    (*(v333 + 32))(v335, v110, v109);

    v111 = swift_isUniquelyReferenced_nonNull_native(v103);
    v313[0] = v103;
    v112 = a10;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v335, a10, a11, v111);
    a11;
    v333 = v313[0];
  }

  else
  {
    v333 = v103;
    v112 = a10;
  }

  (*(v326 + 16))(v332, v323, v325);
  v113 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<String?>);
  v114 = swift_initStackObject(v113, v285);
  v114[2] = 4;
  v114[3] = 8;
  v114[4] = v327;
  v115 = v328;
  v114[5] = v328;
  v114[6] = v107;
  v114[7] = a7;
  v114[8] = a8;
  v114[9] = a9;
  v114[10] = v112;
  v116 = v115;
  v114[11] = a11;

  if (v116)
  {
    swift_bridgeObjectRetain_n(v116, 2);

    v117 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, _swiftEmptyArrayStorage);
    v118 = v117[2];
    v119 = v117[3];
    if (v119 >> 1 <= v118)
    {
      v117 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v119 >= 2, v118 + 1, 1, v117);
    }

    v117[2] = v118 + 1;
    v120 = 2 * v118;
    v117[v120 + 4] = v327;
    v117[v120 + 5] = v328;
    v107 = v114[6];
    v121 = v114[7];
  }

  else
  {
    v121 = a7;

    v117 = _swiftEmptyArrayStorage;
  }

  if (v121)
  {

    v122 = swift_isUniquelyReferenced_nonNull_native(v117);
    v335 = v107;
    if (!v122)
    {
      v117 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v117[2] + 1, 1, v117);
    }

    v123 = v117[2];
    v124 = v117[3];
    v125 = v123 + 1;
    if (v124 >> 1 <= v123)
    {
      v334 = v123 + 1;
      v275 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v124 >= 2, v125, 1, v117);
      v125 = v334;
      v117 = v275;
    }

    v117[2] = v125;
    v126 = 2 * v123;
    v117[v126 + 4] = v335;
    v117[v126 + 5] = v121;
  }

  v127 = v114[9];
  if (v127)
  {
    v128 = v114[8];

    v129 = swift_isUniquelyReferenced_nonNull_native(v117);
    v335 = v128;
    if (!v129)
    {
      v117 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v117[2] + 1, 1, v117);
    }

    v130 = v117[2];
    v131 = v117[3];
    v132 = v130 + 1;
    if (v131 >> 1 <= v130)
    {
      v334 = v130 + 1;
      v276 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v131 >= 2, v132, 1, v117);
      v132 = v334;
      v117 = v276;
    }

    v117[2] = v132;
    v133 = 2 * v130;
    v117[v133 + 4] = v335;
    v117[v133 + 5] = v127;
  }

  v134 = v114[11];
  if (v134)
  {
    v135 = v114[10];

    v136 = swift_isUniquelyReferenced_nonNull_native(v117);
    v335 = v135;
    if (!v136)
    {
      v117 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v117[2] + 1, 1, v117);
    }

    v137 = v117[2];
    v138 = v117[3];
    v139 = v137 + 1;
    if (v138 >> 1 <= v137)
    {
      v334 = v137 + 1;
      v277 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v138 >= 2, v139, 1, v117);
      v139 = v334;
      v117 = v277;
    }

    v117[2] = v139;
    v140 = 2 * v137;
    v117[v140 + 4] = v335;
    v117[v140 + 5] = v134;
  }

  swift_setDeallocating(v114);
  specialized _ContiguousArrayStorage.__deallocating_deinit();
  v141 = v288;
  JSONReadingOptions.init()(v114);
  v142 = v289;
  v143 = v317;
  DataFrame.init(contentsOfJSONFile:columns:types:options:)(v332, v117, v333, v141);
LABEL_62:
  if (v143)
  {
    v200 = v323;
    v201 = v325;
    v202 = v326;
    return (*(v202 + 8))(v200, v201);
  }

  v333 = 0;
  v204 = v331;
  v205 = v142;
  v206 = v330;
  v207 = v329;
  (*(v329 + 32))(v331, v205, v330);
  if (!a12[2])
  {
    v227 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v227, 0, 0);
    *v228 = 0xD00000000000003DLL;
    *(v228 + 8) = " less than end times." + 0x8000000000000000;
    *(v228 + 16) = 0;
    *(v228 + 32) = 0;
    *(v228 + 48) = 0;
    swift_willThrow();
    (*(v326 + 8))(v323, v325);
    return (*(v207 + 8))(v204, v206);
  }

  v313[0] = _swiftEmptyArrayStorage;
  v208 = v297;
  v209 = v321;
  v317 = v321 + *(v297 + 20);
  v210 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String]);
  v211 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type [String] and conformance [A], &demangling cache variable for type metadata for [String], &protocol conformance descriptor for [A]);
  Column.init<A>(name:contents:)(0x6C6562616CLL, 0xE500000000000000, v313, &type metadata for String, v210, v211);
  v334 = v209 + v208[6];
  __swift_storeEnumTagSinglePayload(v334, 1, 1, v315);
  v335 = (v209 + v208[7]);
  v212 = v318;
  __swift_storeEnumTagSinglePayload(v335, 1, 1, v318);
  v213 = v212;
  v214 = 1;
  v332 = (v209 + v208[8]);
  __swift_storeEnumTagSinglePayload(v332, 1, 1, v213);
  v215 = v316;
  DataFrame.subscript.getter(v327, v328, &type metadata for String);
  v216 = v315;
  (*(v309 + 40))(v317, v215, v315);
  v217 = v296;
  DataFrame.subscript.getter(v322, a7, &type metadata for String);
  __swift_storeEnumTagSinglePayload(v217, 0, 1, v216);
  outlined assign with take of MLTrainingSession<MLImageClassifier>.Metadata(v217, v334, &demangling cache variable for type metadata for Column<String>?);
  v218 = 1;
  v219 = v295;
  if (a9)
  {
    DataFrame.subscript.getter(a8, a9, &type metadata for Double);
    v218 = 0;
  }

  __swift_storeEnumTagSinglePayload(v219, v218, 1, v318);
  outlined assign with take of MLTrainingSession<MLImageClassifier>.Metadata(v219, v335, &demangling cache variable for type metadata for Column<Double>?);
  v220 = v294;
  if (a11)
  {
    DataFrame.subscript.getter(a10, a11, &type metadata for Double);
    v214 = 0;
  }

  __swift_storeEnumTagSinglePayload(v220, v214, 1, v318);
  outlined assign with take of MLTrainingSession<MLImageClassifier>.Metadata(v220, v332, &demangling cache variable for type metadata for Column<Double>?);
  v221 = a12;
  v222 = v321;
  v223 = v321;
  v224 = v333;
  *v222 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySSG_11TabularData6ColumnVySaySdGGs5NeverOTg5036_s8CreateML20MLActivityClassifierV10e143SourceO06gatherE15FromAnnotations12directoryURL18annotationFileName11labelColumn04fileP009startTimeP003endsP014featureColumns09timeStampP0AE0V0m35Foundation0K0V_S4SSgATSaySSGSStKF07D22E00P0VySaySdGGSSXEfU3_0I2ML0kL0V0eN0O7ColumnsVTf1cn_n(a12, v321);
  v333 = v224;
  if (a11 != 0 && a9 != 0)
  {
    v229 = v312;
    v230 = v331;
    DataFrame.subscript.getter(a8, a9, &type metadata for Double);
    v231 = v301;
    DataFrame.subscript.getter(a10, a11, &type metadata for Double);
    v232 = alloca(32);
    v233 = alloca(32);
    v283 = v229;
    v284 = v231;
    v234 = v300;
    v235 = v333;
    DataFrame.filter(_:)(partial apply for closure #6 in MLActivityClassifier.DataSource.gatherDataFromAnnotations(directoryURL:annotationFileName:labelColumn:fileColumn:startTimeColumn:endTimeColumn:featureColumns:timeStampColumn:));
    v333 = v235;
    v236 = v302;
    DataFrame.init(_:)(v234);
    (*(v329 + 40))(v230, v236, v330);
    v237 = *(v299 + 8);
    v238 = v318;
    v237(v231, v318);
    v221 = v312;
    v223 = v238;
    v237(v312, v238);
  }

  v239 = v311;
  v240 = v293;
  DataFrame.rows.getter(v221, v223, v225, v226);
  v241 = specialized Collection.isEmpty.getter();
  (*(v239 + 8))(v240, v292);
  if (v241)
  {
    v242 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v242, 0, 0);
    *v243 = 0xD000000000000035;
    *(v243 + 8) = "lder or add data." + 0x8000000000000000;
    *(v243 + 16) = 0;
    *(v243 + 32) = 0;
    *(v243 + 48) = 1;
    swift_willThrow();
    (*(v326 + 8))(v323, v325);
    outlined destroy of MLActivityClassifier.DataSource.Columns(v321);
    v200 = v331;
    v201 = v330;
    v202 = v329;
    return (*(v202 + 8))(v200, v201);
  }

  DataFrame.subscript.getter(v322, a7, &type metadata for String);
  v313[0] = 0;
  v313[1] = 0xE000000000000000;
  v244 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type Column<String> and conformance Column<A>, &demangling cache variable for type metadata for Column<String>, &protocol conformance descriptor for Column<A>);
  v245 = v315;
  v246 = v316;
  OptionalColumnProtocol.filled(with:)(v313, v315, v244);
  (*(v309 + 8))(v246, v245);
  v247 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_11TabularData12FilledColumnVyAD0E0VySSGGTt0g5();
  v248 = 1 << *(v247 + 32);
  v249 = ~(-1 << v248);
  if (v248 >= 64)
  {
    v249 = -1;
  }

  v332 = v247;
  v250 = *(v247 + 56) & v249;
  v335 = ((v248 + 63) >> 6);
  v251 = 0;
  while (1)
  {
    if (v250)
    {
      goto LABEL_95;
    }

    v252 = v251 + 1;
    if (__OFADD__(1, v251))
    {
      BUG();
    }

    if (v252 >= v335)
    {
LABEL_102:
      v268 = v329;
      v269 = v330;
      v270 = v331;
      goto LABEL_103;
    }

    v250 = v332[v252 + 7];
    if (v250)
    {
      ++v251;
      goto LABEL_95;
    }

    v253 = v251 + 2;
    if (v251 + 2 >= v335)
    {
      goto LABEL_102;
    }

    v250 = v332[v252 + 8];
    if (!v250)
    {
      v253 = v251 + 3;
      if (v251 + 3 >= v335)
      {
        goto LABEL_102;
      }

      v250 = v332[v252 + 9];
      if (!v250)
      {
        v253 = v251 + 4;
        if (v251 + 4 >= v335)
        {
          goto LABEL_102;
        }

        v250 = v332[v252 + 10];
        if (!v250)
        {
          v253 = v251 + 5;
          if (v251 + 5 >= v335)
          {
            goto LABEL_102;
          }

          v250 = v332[v252 + 11];
          if (!v250)
          {
            v253 = v251 + 6;
            if (v251 + 6 >= v335)
            {
              goto LABEL_102;
            }

            v250 = v332[v252 + 12];
            if (!v250)
            {
              break;
            }
          }
        }
      }
    }

    v251 = v253;
LABEL_95:
    v328 = &v281;
    _BitScanForward64(&v254, v250);
    v255 = v332[6];
    v327 = v251;
    v256 = (v251 << 10) | (16 * v254);
    v258 = *(v255 + v256 + 8);
    v259 = alloca(32);
    v260 = alloca(32);
    v261 = v250;
    v283 = *(v255 + v256);
    v257 = v283;
    v284 = v258;

    v262 = v333;
    DataFrame.filter<A>(on:_:_:)(v322, a7, &type metadata for String, partial apply for closure #7 in MLActivityClassifier.DataSource.gatherDataFromAnnotations(directoryURL:annotationFileName:labelColumn:fileColumn:startTimeColumn:endTimeColumn:featureColumns:timeStampColumn:), &v281, &type metadata for String);
    v333 = v262;
    v263 = v257;
    v264 = v287;
    URL.appendingPathComponent(_:)(v263, v258);
    LOBYTE(v263) = v258;
    v265 = v304;
    v263;
    v266 = v333;
    MLActivityClassifier.DataSource.gatherData(from:annotations:featureColumns:timeStampColumn:result:)(v264, v265, a12, a13, a14, v321);
    v333 = v266;
    if (v266)
    {
      v271 = v265;
      v272 = *(v326 + 8);
      v273 = v264;
      v274 = v325;
      v272(v273, v325);
      (*(v306 + 8))(v271, v305);

      v272(v323, v274);
      outlined destroy of MLActivityClassifier.DataSource.Columns(v321);
      return (*(v329 + 8))(v331, v330);
    }

    (*(v326 + 8))(v264, v325);
    (*(v306 + 8))(v265, v305);
    v251 = v327;
    v250 = (v261 - 1) & v261;
  }

  v267 = v251 + 7;
  v268 = v329;
  v269 = v330;
  v270 = v331;
  while (v267 < v335)
  {
    v250 = v332[v267++ + 7];
    if (v250)
    {
      v251 = v267 - 1;
      goto LABEL_95;
    }
  }

LABEL_103:

  (*(v326 + 8))(v323, v325);
  outlined init with take of MLActivityClassifier.DataSource.Columns(v321, v303);
  return (*(v268 + 8))(v270, v269);
}

BOOL closure #6 in MLActivityClassifier.DataSource.gatherDataFromAnnotations(directoryURL:annotationFileName:labelColumn:fileColumn:startTimeColumn:endTimeColumn:featureColumns:timeStampColumn:)()
{
  v0 = DataFrame.Row.index.getter();
  v1 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Double>);
  Column.subscript.getter(v0, v1);
  if (v9)
  {
    return 0;
  }

  v2 = DataFrame.Row.index.getter();
  Column.subscript.getter(v2, v1);
  v4 = DataFrame.Row.index.getter();
  Column.subscript.getter(v4, v1);
  v5 = DataFrame.Row.index.getter();
  Column.subscript.getter(v5, v1);
  if (v7)
  {
    BUG();
  }

  return v6 > v8;
}

char closure #7 in MLActivityClassifier.DataSource.gatherDataFromAnnotations(directoryURL:annotationFileName:labelColumn:fileColumn:startTimeColumn:endTimeColumn:featureColumns:timeStampColumn:)(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1[1];
  if (!v5)
  {
    return 0;
  }

  v6 = *a1;
  result = 1;
  if (__PAIR128__(a3 ^ v5, a2 ^ v6) != 0)
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)(v6, v5, a2, a3, 0);
  }

  return result;
}

uint64_t MLActivityClassifier.DataSource.gatherData(from:annotations:featureColumns:timeStampColumn:result:)(uint64_t a1, uint64_t a2, void *a3, char *a4, uint64_t a5, void *a6)
{
  v233 = v6;
  v247 = a6;
  v253 = a4;
  v225 = a2;
  v246 = a1;
  v211 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ColumnSlice<Double>);
  v212 = *(v211 - 8);
  v9 = *(v212 + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v229 = &v210;
  v213 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FilledColumn<ColumnSlice<Double>>);
  v12 = *(*(v213 - 8) + 64);
  v13 = alloca(v12);
  v14 = alloca(v12);
  v230 = &v210;
  v231 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[Double]>);
  v214 = *(v231 - 8);
  v15 = *(v214 + 64);
  v16 = alloca(v15);
  v17 = alloca(v15);
  v215 = &v210;
  v18 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Double>?) - 8) + 64);
  v19 = alloca(v18);
  v20 = alloca(v18);
  v235 = &v210;
  v21 = alloca(v18);
  v22 = alloca(v18);
  v217 = &v210;
  v243 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DefaultIndices<DataFrame.Rows>);
  v23 = *(*(v243 - 8) + 64);
  v24 = alloca(v23);
  v25 = alloca(v23);
  v226 = &v210;
  v234 = type metadata accessor for DataFrame.Rows(0);
  v240 = *(v234 - 8);
  v26 = *(v240 + 64);
  v27 = alloca(v26);
  v28 = alloca(v26);
  v228 = &v210;
  v227 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for IndexingIterator<DefaultIndices<DataFrame.Rows>>);
  v29 = *(*(v227 - 8) + 64);
  v30 = alloca(v29);
  v31 = alloca(v29);
  v248 = &v210;
  v224 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for IndexingIterator<Column<Double>>);
  v32 = *(*(v224 - 8) + 64);
  v33 = alloca(v32);
  v34 = alloca(v32);
  v249 = &v210;
  v35 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Double>);
  v265 = *(v35 - 1);
  v36 = *(v265 + 64);
  v37 = alloca(v36);
  v38 = alloca(v36);
  v238 = &v210;
  v39 = alloca(v36);
  v40 = alloca(v36);
  v237 = &v210;
  v41 = alloca(v36);
  v42 = alloca(v36);
  v232 = &v210;
  v43 = alloca(v36);
  v44 = alloca(v36);
  v267 = &v210;
  v219 = type metadata accessor for Order(0);
  v218 = *(v219 - 8);
  v45 = *(v218 + 64);
  v46 = alloca(v45);
  v47 = alloca(v45);
  v220 = &v210;
  v252 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (String, CSVType));
  v256 = *(v252 - 8);
  v48 = *(v256 + 64);
  v49 = alloca(v48);
  v50 = alloca(v48);
  v264._countAndFlagsBits = &v210;
  v251 = type metadata accessor for CSVType(0);
  v239 = *(v251 - 8);
  v51 = *(v239 + 64);
  v52 = alloca(v51);
  v53 = alloca(v51);
  v222 = &v210;
  v54 = *(*(type metadata accessor for CSVReadingOptions(0) - 8) + 64);
  v55 = alloca(v54);
  v56 = alloca(v54);
  v221 = &v210;
  v263 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (String, JSONType));
  v255 = *(v263 - 8);
  v57 = *(v255 + 64);
  v58 = alloca(v57);
  v59 = alloca(v57);
  v262 = &v210;
  v60 = *(*(type metadata accessor for JSONReadingOptions(0) - 8) + 64);
  v61 = alloca(v60);
  v62 = alloca(v60);
  v216 = &v210;
  *&v266 = type metadata accessor for URL(0);
  v63 = *(v266 - 8);
  v64 = *(v63 + 64);
  v65 = alloca(v64);
  v66 = alloca(v64);
  v236 = &v210;
  v67 = alloca(v64);
  v68 = alloca(v64);
  v244 = &v210;
  v245 = type metadata accessor for DataFrame(0);
  v242 = *(v245 - 8);
  v69 = *(v242 + 64);
  v70 = alloca(v69);
  v71 = alloca(v69);
  v223 = &v210;
  v72 = alloca(v69);
  v73 = alloca(v69);
  v254 = &v210;
  v74 = alloca(v69);
  v75 = alloca(v69);
  v257 = &v210;
  v250 = a5;
  swift_bridgeObjectRetain_n(a5, 2);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(a3);
  v77 = a3;
  if (!isUniquelyReferenced_nonNull_native)
  {
    v77 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a3[2] + 1, 1, a3);
  }

  v241 = a3;
  v78 = v77[2];
  v261 = v77;
  v79 = v77[3];
  v264._object = v35;
  if (v79 >> 1 <= v78)
  {
    v261 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v79 >= 2, v78 + 1, 1, v261);
  }

  v80 = v261;
  v261[2] = v78 + 1;
  v81 = 2 * v78;
  v80[v81 + 4] = v253;
  v82 = v250;
  v80[v81 + 5] = v250;
  v82;
  v83 = URL.pathExtension.getter();
  v85 = v84;
  if (v83 ^ 0x6E6F736A | v84 ^ 0xE400000000000000)
  {
    v87 = _stringCompareWithSmolCheck(_:_:expecting:)(v83, v84, 1852797802, 0xE400000000000000, 0);
    v85;
    v86 = v254;
    if ((v87 & 1) == 0)
    {
      (*(v63 + 16))(v236, v246, v266);
      v106 = v250;
      swift_bridgeObjectRetain_n(v250, 2);
      v107 = v241;

      if (!swift_isUniquelyReferenced_nonNull_native(v107))
      {
        v107 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v107[2] + 1, 1, v107);
      }

      v108 = v107[2];
      v109 = v253;
      if (v107[3] >> 1 <= v108)
      {
        v208 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v107[3] >= 2uLL, v108 + 1, 1, v107);
        v109 = v253;
        v107 = v208;
      }

      v107[2] = v108 + 1;
      v110 = 2 * v108;
      v107[v110 + 4] = v109;
      v241 = v107;
      v107[v110 + 5] = v106;
      v106;
      v111 = v261;
      v112 = v261[2];
      if (v112)
      {
        *&v258[0] = _swiftEmptyArrayStorage;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v112, 0);
        v113 = *&v258[0];
        LODWORD(v262) = enum case for CSVType.double(_:);
        v263 = *(v239 + 104);
        v114 = v111 + 5;
        countAndFlagsBits = v264._countAndFlagsBits;
        do
        {
          v268 = v112;
          v116 = *(v114 - 1);
          v260 = *v114;
          v117 = *&v260;
          v118 = countAndFlagsBits + *(v252 + 48);
          *countAndFlagsBits = v116;
          countAndFlagsBits[1] = v117;
          (v263)(v118, v262, v251);
          *&v258[0] = v113;
          v119 = v113[2];
          v255 = v113[3];
          v120 = v255 >> 1;
          *&v266 = v119 + 1;

          if (v120 <= v119)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v255 >= 2, v266, 1);
            v113 = *&v258[0];
          }

          v113[2] = v266;
          countAndFlagsBits = v264._countAndFlagsBits;
          outlined init with take of DataFrame?(v264._countAndFlagsBits, v113 + ((*(v256 + 80) + 32) & ~*(v256 + 80)) + *(v256 + 72) * v119, &demangling cache variable for type metadata for (String, CSVType));
          v114 += 2;
          v112 = v268 - 1;
        }

        while (v268 != 1);
        v261;
        v121 = v262;
        v122 = v113;
      }

      else
      {
        v261;
        v121 = enum case for CSVType.double(_:);
        v122 = _swiftEmptyArrayStorage;
      }

      *&v266 = _sSD20uniqueKeysWithValuesSDyxq_Gqd__n_tcSTRd__x_q_t7ElementRtd__lufCSS_11TabularData7CSVTypeOSaySS_AGtGTt0g5(v122);
      *&v268 = COERCE_DOUBLE(_sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0gq5(&outlined read-only object #0 of default argument 1 of CSVReadingOptions.init(hasHeaderRow:nilEncodings:trueEncodings:falseEncodings:floatingPointType:ignoresEmptyLines:usesQuoting:usesEscaping:delimiter:escapeCharacter:)));
      v123 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0gq5(&outlined read-only object #0 of default argument 2 of CSVReadingOptions.init(hasHeaderRow:nilEncodings:trueEncodings:falseEncodings:floatingPointType:ignoresEmptyLines:usesQuoting:usesEscaping:delimiter:escapeCharacter:));
      v124 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0gq5(&outlined read-only object #0 of default argument 3 of CSVReadingOptions.init(hasHeaderRow:nilEncodings:trueEncodings:falseEncodings:floatingPointType:ignoresEmptyLines:usesQuoting:usesEscaping:delimiter:escapeCharacter:));
      v125 = v222;
      (*(v239 + 104))(v222, v121, v251);
      v126 = v221;
      CSVReadingOptions.init(hasHeaderRow:nilEncodings:trueEncodings:falseEncodings:floatingPointType:ignoresEmptyLines:usesQuoting:usesEscaping:delimiter:escapeCharacter:)(1, v268, v123, v124, v125, 1, 1, 0, 44, 0xE100000000000000, 92);
      v86 = v223;
      v127 = v233;
      DataFrame.init(contentsOfCSVFile:columns:rows:types:options:)(v236, v241, 0, 0, 1, v266, v126);
      result = v209;
      if (v127)
      {
        return result;
      }

      v254 = 0;
      v105 = v257;
      goto LABEL_30;
    }
  }

  else
  {
    v84;
    v86 = v254;
  }

  (*(v63 + 16))(v244, v246, v266);
  v88 = v261;
  v89 = v261[2];
  if (v89)
  {
    *&v258[0] = _swiftEmptyArrayStorage;

    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v89, 0);
    v90 = v88;
    v91 = *&v258[0];
    LODWORD(v251) = enum case for JSONType.double(_:);
    v264._countAndFlagsBits = type metadata accessor for JSONType(0);
    v252 = *(*(v264._countAndFlagsBits - 8) + 104);
    v92 = v90 + 5;
    v93 = v262;
    do
    {
      v268 = v89;
      v94 = *(v92 - 1);
      v260 = *v92;
      v95 = *&v260;
      v96 = v93 + *(v263 + 48);
      *v93 = v94;
      v93[1] = v95;
      (v252)(v96, v251, v264._countAndFlagsBits);
      *&v258[0] = v91;
      v97 = v91[2];
      v256 = v91[3];
      v98 = v256 >> 1;
      *&v266 = v97 + 1;

      if (v98 <= v97)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v256 >= 2, v266, 1);
        v91 = *&v258[0];
      }

      v91[2] = v266;
      v93 = v262;
      outlined init with take of DataFrame?(v262, v91 + ((*(v255 + 80) + 32) & ~*(v255 + 80)) + *(v255 + 72) * v97, &demangling cache variable for type metadata for (String, JSONType));
      v92 += 2;
      v89 = v268 - 1;
    }

    while (v268 != 1);
    v99 = v261;
    v261;
    v86 = v254;
    v100 = v91;
    v88 = v99;
  }

  else
  {
    v100 = _swiftEmptyArrayStorage;
  }

  v101 = _sSD20uniqueKeysWithValuesSDyxq_Gqd__n_tcSTRd__x_q_t7ElementRtd__lufCSS_11TabularData8JSONTypeOSaySS_AGtGTt0g5(v100);
  v102 = v216;
  JSONReadingOptions.init()(v100);
  v103 = v233;
  result = DataFrame.init(contentsOfJSONFile:columns:types:options:)(v244, v88, v101, v102);
  v105 = v257;
  if (v103)
  {
    return result;
  }

  v254 = 0;
LABEL_30:
  (*(v242 + 32))(v105, v86, v245);
  v128 = v220;
  v129 = v219;
  v130 = v218;
  (*(v218 + 104))(v220, enum case for Order.ascending(_:), v219);
  DataFrame.sort<A>(on:_:order:)(v253, v250, &type metadata for Double, v128, &type metadata for Double, &protocol witness table for Double);
  (*(v130 + 8))(v128, v129);
  v131 = v257;
  if (DataFrameProtocol.isEmpty.getter(v245, &protocol witness table for DataFrame))
  {
    v132 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v132, 0, 0);
    *v133 = 0xD000000000000021;
    *(v133 + 8) = "tent with the sensor data in '" + 0x8000000000000000;
    *(v133 + 16) = 0;
    *(v133 + 32) = 0;
    *(v133 + 48) = 0;
    swift_willThrow();
    goto LABEL_37;
  }

  v256 = v248;
  v134 = v267;
  DataFrame.subscript.getter(v253, v250, &type metadata for Double);
  v135 = v134;
  object = v264._object;
  (*(v265 + 16))(v232, v135, v264._object);
  v137 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type Column<Double> and conformance Column<A>, &demangling cache variable for type metadata for Column<Double>, &protocol conformance descriptor for Column<A>);
  v138 = v249;
  dispatch thunk of Sequence.makeIterator()(object, v137);
  *&v266 = v138 + *(v224 + 36);
  v263 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type Column<Double> and conformance Column<A>, &demangling cache variable for type metadata for Column<Double>, &protocol conformance descriptor for Column<A>);
  v139 = v266;
  v140 = v264._object;
  while (1)
  {
    dispatch thunk of Collection.endIndex.getter(v264._object, v263);
    if (*v266 == *&v258[0])
    {
      break;
    }

    v141 = v263;
    v142 = dispatch thunk of Collection.subscript.read(v258, v139, v140, v263);
    LOBYTE(v268) = *(v143 + 8);
    v142(v258, 0);
    dispatch thunk of Collection.formIndex(after:)(v139, v140, v141);
    v138 = v249;
    if (v268 == 1)
    {
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v249, &demangling cache variable for type metadata for IndexingIterator<Column<Double>>);
      *&v258[0] = 0;
      *(&v258[0] + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(37);
      SBYTE8(v258[0]);
      *&v258[0] = 0xD000000000000021;
      *(&v258[0] + 1) = " at least one feature column." + 0x8000000000000000;
      v144._countAndFlagsBits = URL.absoluteString.getter();
      v145 = v144._object;
      String.append(_:)(v144);
      v145;
      v146._object = 0xE200000000000000;
      v146._countAndFlagsBits = 11815;
      String.append(_:)(v146);
      v266 = v258[0];
      v147 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
      swift_allocError(&type metadata for MLCreateError, v147, 0, 0);
      *v148 = v266;
      *(v148 + 16) = 0;
      *(v148 + 32) = 0;
      *(v148 + 48) = 0;
      swift_willThrow();
      goto LABEL_36;
    }
  }

  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v138, &demangling cache variable for type metadata for IndexingIterator<Column<Double>>);
  v150 = v228;
  DataFrame.Slice.rows.getter();
  v151 = v226;
  v152 = v234;
  (*(v240 + 16))(v226, v150, v234);
  *&v266 = *(v243 + 36);
  v249 = lazy protocol witness table accessor for type DataFrame.Rows and conformance DataFrame.Rows();
  dispatch thunk of Collection.startIndex.getter(v152, v249);
  dispatch thunk of Collection.endIndex.getter(v152, v249);
  (*(v240 + 8))(v150, v152);
  v153 = v256;
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v151, v256, &demangling cache variable for type metadata for DefaultIndices<DataFrame.Rows>);
  v154 = *(v151 + v266);
  v268 = *(v227 + 36);
  *(v153 + v268) = v154;
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v151, &demangling cache variable for type metadata for DefaultIndices<DataFrame.Rows>);
  v261 = *(v153 + *(v243 + 40));
  if (v154 == v261)
  {
    v155 = v265;
    v156 = v264._object;
    v157 = v267;
LABEL_83:
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v256, &demangling cache variable for type metadata for IndexingIterator<DefaultIndices<DataFrame.Rows>>);
    (*(v155 + 8))(v157, v156);
    v149 = v257;
    return (*(v242 + 8))(v149, v245);
  }

  v158 = v154;
  *&v266 = *v247;
  v159 = swift_isUniquelyReferenced_nonNull_native(v266);
  v156 = v264._object;
  if (!v159)
  {
    *&v266 = specialized _ArrayBuffer._consumeAndCreateNew()(v266);
  }

  v160 = (v248 + v268);
  v161 = type metadata accessor for MLActivityClassifier.DataSource.Columns(0);
  v253 = v247 + *(v161 + 20);
  v244 = v161;
  v250 = v247 + *(v161 + 28);
  v248 = v160;
  while (1)
  {
    v162 = v160;
    v163 = v158;
    dispatch thunk of Collection.formIndex(after:)(v162, v234, v249);
    v164 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<String>);
    Column.subscript.getter(v158, v164);
    v165 = *(&v258[0] + 1);
    v166 = v258[0];
    v252 = v166 >> 64;
    v264._countAndFlagsBits = v166;
    if (!*(&v258[0] + 1))
    {
      v165 = 0xE000000000000000;
    }

    v262 = v165;
    v167 = v217;
    outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v250, v217, &demangling cache variable for type metadata for Column<Double>?);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v167, 1, v156);
    v251 = v163;
    if (EnumTagSinglePayload == 1)
    {
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v167, &demangling cache variable for type metadata for Column<Double>?);
LABEL_51:
      v255 = Column.startIndex.getter(v156);
      v170 = v235;
      goto LABEL_60;
    }

    v169 = v237;
    (*(v265 + 32))(v237, v167, v156);
    Column.subscript.getter(v163, v156);
    if (BYTE8(v258[0]))
    {
      (*(v265 + 8))(v169, v156);
      goto LABEL_51;
    }

    v260 = *v258;
    v171 = v263;
    dispatch thunk of Collection.startIndex.getter(v156, v263);
    while (1)
    {
      dispatch thunk of Collection.endIndex.getter(v156, v171);
      v255 = v259;
      if (v259 == *&v258[0])
      {
        v255 = Column.endIndex.getter(v156);
        goto LABEL_59;
      }

      v172 = dispatch thunk of Collection.subscript.read(v258, &v259, v156, v171);
      v268 = *v173;
      v174 = *(v173 + 8);
      v172(v258, 0);
      if (v174)
      {
        BUG();
      }

      if (*&v268 >= v260)
      {
        break;
      }

      v156 = v264._object;
      v171 = v263;
      dispatch thunk of Collection.formIndex(after:)(&v259, v264._object, v263);
    }

    v156 = v264._object;
LABEL_59:
    (*(v265 + 8))(v237, v156);
    v170 = v235;
LABEL_60:
    outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v247 + *(v244 + 8), v170, &demangling cache variable for type metadata for Column<Double>?);
    if (__swift_getEnumTagSinglePayload(v170, 1, v156) == 1)
    {
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v170, &demangling cache variable for type metadata for Column<Double>?);
      goto LABEL_64;
    }

    v175 = v238;
    (*(v265 + 32))(v238, v170, v156);
    Column.subscript.getter(v251, v156);
    if (BYTE8(v258[0]))
    {
      (*(v265 + 8))(v175, v156);
LABEL_64:
      v176 = Column.endIndex.getter(v156);
      v177 = v176 - 1;
      if (__OFSUB__(v176, 1))
      {
        BUG();
      }

      goto LABEL_73;
    }

    v260 = *v258;
    v178 = v263;
    dispatch thunk of Collection.endIndex.getter(v156, v263);
    while (1)
    {
      dispatch thunk of Collection.startIndex.getter(v156, v178);
      if (v259 == *&v258[0])
      {
        break;
      }

      v179 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type Column<Double> and conformance Column<A>, &demangling cache variable for type metadata for Column<Double>, &protocol conformance descriptor for Column<A>);
      dispatch thunk of BidirectionalCollection.formIndex(before:)(&v259, v156, v179);
      v180 = dispatch thunk of Collection.subscript.read(v258, &v259, v156, v178);
      v268 = *v181;
      v182 = *(v181 + 8);
      v180(v258, 0);
      if (v182)
      {
        BUG();
      }

      v156 = v264._object;
      if (v260 >= *&v268)
      {
        v177 = v259;
        goto LABEL_72;
      }
    }

    v177 = Column.startIndex.getter(v156);
LABEL_72:
    (*(v265 + 8))(v238, v156);
LABEL_73:
    if (v177 < v255)
    {
      break;
    }

    v262;
    v183 = v266;
    v264._countAndFlagsBits = *(v266 + 16);
    if (v264._countAndFlagsBits)
    {
      v252 = v177;
      v184 = 0;
      v185 = v231;
      do
      {
        if (v184 >= *(v183 + 16))
        {
          BUG();
        }

        v186 = v214;
        v187 = v215;
        v188 = v183 + ((*(v214 + 80) + 32) & ~*(v214 + 80)) + v184 * *(v214 + 72);
        v268 = v184;
        (*(v214 + 16))(v215, v188, v185);
        v260 = COERCE_DOUBLE(Column.name.getter(v185));
        v262 = v189;
        (*(v186 + 8))(v187, v185);
        v190 = v232;
        LOBYTE(v186) = v262;
        DataFrame.subscript.getter(*&v260, v262, &type metadata for Double);
        v186;
        *&v258[0] = v252;
        v191 = v264._object;
        dispatch thunk of Collection.index(after:)(v258, v264._object, v263);
        Column.subscript.getter(v255, v259, v191);
        v192 = v190;
        v193 = v266;
        (*(v265 + 8))(v192, v191);
        *&v258[0] = 0;
        v194 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type ColumnSlice<Double> and conformance ColumnSlice<A>, &demangling cache variable for type metadata for ColumnSlice<Double>, &protocol conformance descriptor for ColumnSlice<A>);
        v195 = v211;
        v196 = v229;
        OptionalColumnProtocol.filled(with:)(v258, v211, v194);
        (*(v212 + 8))(v196, v195);
        v197 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type FilledColumn<ColumnSlice<Double>> and conformance FilledColumn<A>, &demangling cache variable for type metadata for FilledColumn<ColumnSlice<Double>>, &protocol conformance descriptor for FilledColumn<A>);
        *&v258[0] = dispatch thunk of Sequence._copyToContiguousArray()(v213, v197);
        if (v268 >= *(v193 + 16))
        {
          BUG();
        }

        v198 = v268 + 1;
        v185 = v231;
        Column.subscript.setter(v258, v251, v231);
        v184 = v198;
        v199 = v264._countAndFlagsBits == v198;
        v157 = v267;
        v183 = v266;
        v160 = v248;
      }

      while (!v199);
    }

    else
    {
      v160 = v248;
      v157 = v267;
    }

    v158 = *v160;
    v156 = v264._object;
    if (*v160 == v261)
    {
      *v247 = v266;
      v155 = v265;
      goto LABEL_83;
    }
  }

  v200 = v264._countAndFlagsBits;
  if (!v252)
  {
    v200 = 0;
  }

  v264._countAndFlagsBits = v200;
  *v247 = v266;
  *&v258[0] = 0;
  *(&v258[0] + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(89);
  v201._object = "e is missing in '" + 0x8000000000000000;
  v201._countAndFlagsBits = 0xD000000000000025;
  String.append(_:)(v201);
  v201._countAndFlagsBits = v264._countAndFlagsBits;
  v202 = v262;
  v201._object = v262;
  String.append(_:)(v201);
  v202;
  v201._object = "d time for activity '" + 0x8000000000000000;
  v201._countAndFlagsBits = 0xD00000000000002ELL;
  String.append(_:)(v201);
  v203 = URL.absoluteString.getter();
  v205 = v204;
  v201._countAndFlagsBits = v203;
  v201._object = v204;
  String.append(_:)(v201);
  v205;
  v201._object = 0xE200000000000000;
  v201._countAndFlagsBits = 11815;
  String.append(_:)(v201);
  v266 = v258[0];
  v206 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
  swift_allocError(&type metadata for MLCreateError, v206, 0, 0);
  *v207 = v266;
  *(v207 + 16) = 0;
  *(v207 + 32) = 0;
  *(v207 + 48) = 0;
  swift_willThrow();
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v256, &demangling cache variable for type metadata for IndexingIterator<DefaultIndices<DataFrame.Rows>>);
LABEL_36:
  (*(v265 + 8))(v267, v264._object);
  v131 = v257;
LABEL_37:
  v149 = v131;
  return (*(v242 + 8))(v149, v245);
}

uint64_t specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(uint64_t a1, int a2, void *a3)
{
  v58 = a3;
  v59 = a2;
  v4 = type metadata accessor for CSVType(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v56 = v41;
  v9 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (String, CSVType));
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  if (!*(a1 + 16))
  {
    return a1;
  }

  v50 = *(a1 + 16);
  v52 = v3;
  v14 = *(v9 + 48);
  v48 = v41;
  v49 = &v41[v14];
  v15 = a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
  v51 = *(v10 + 72);
  v54 = a1;

  v53 = v4;
  v57 = v5;
  while (1)
  {
    v47 = v15;
    v16 = v15;
    v17 = v48;
    outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v16, v48, &demangling cache variable for type metadata for (String, CSVType));
    v18 = *v17;
    v19 = v17[1];
    v44[0] = v18;
    v44[1] = v19;
    v46 = *(v5 + 32);
    v46(v56, v49, v4);
    v20 = *v58;
    v55 = v19;
    v22 = specialized __RawDictionaryStorage.find<A>(_:)(v18, v19);
    v23 = (v21 & 1) == 0;
    v24 = __OFADD__(v20[2], v23);
    v25 = v20[2] + v23;
    if (v24)
    {
      BUG();
    }

    v26 = v21;
    if (v20[3] < v25)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v25, v59);
      v27 = v55;
      v22 = specialized __RawDictionaryStorage.find<A>(_:)(v18, v55);
      LOBYTE(v29) = v29 & 1;
      if ((v26 & 1) != v29)
      {
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(&type metadata for String, v27, v29, v28);
        BUG();
      }

      goto LABEL_6;
    }

    v5 = v57;
    if ((v59 & 1) == 0)
    {
      __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _NativeDictionary<String, CSVType>);
      _NativeDictionary.copy()();
LABEL_6:
      v5 = v57;
    }

    if (v26)
    {
      break;
    }

    v30 = *v58;
    v30[(v22 >> 6) + 8] |= 1 << v22;
    v31 = v30[6];
    v32 = 16 * v22;
    *(v31 + v32) = v18;
    *(v31 + v32 + 8) = v55;
    v33 = v30[7] + *(v5 + 72) * v22;
    v4 = v53;
    v46(v33, v56, v53);
    v34 = v30[2];
    v24 = __OFADD__(1, v34);
    v35 = v34 + 1;
    if (v24)
    {
      BUG();
    }

    v30[2] = v35;
    v15 = v51 + v47;
    LOBYTE(v35) = 1;
    v59 = v35;
    if (!--v50)
    {
      return swift_bridgeObjectRelease_n(v54, 2);
    }
  }

  v36 = swift_allocError(&type metadata for _MergeError, &protocol witness table for _MergeError, 0, 0);
  swift_willThrow();
  v45 = v36;
  swift_errorRetain(v36);
  v37 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Error);
  if (swift_dynamicCast(&demangling cache variable for type metadata for Error, &v45, v37, &type metadata for _MergeError, 0))
  {
    v42 = 0;
    v43 = 0xE000000000000000;
    _StringGuts.grow(_:)(30);
    v40._object = "Swift/NativeDictionary.swift" + 0x8000000000000000;
    v40._countAndFlagsBits = 0xD00000000000001BLL;
    String.append(_:)(v40);
    _print_unlocked<A, B>(_:_:)(v44, &v42, &type metadata for String, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
    v40._countAndFlagsBits = 39;
    v40._object = 0xE100000000000000;
    String.append(_:)(v40);
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, v42, v43, "Swift/NativeDictionary.swift", 28, 2, 783, 0);
    BUG();
  }

  v38 = v54;
  v54;
  (*(v5 + 8))(v56, v53);
  v38;
  v55;
  return v45;
}

{
  v58 = a3;
  v59 = a2;
  v4 = type metadata accessor for JSONType(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v56 = v41;
  v9 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (String, JSONType));
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  if (!*(a1 + 16))
  {
    return a1;
  }

  v50 = *(a1 + 16);
  v52 = v3;
  v14 = *(v9 + 48);
  v48 = v41;
  v49 = &v41[v14];
  v15 = a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
  v51 = *(v10 + 72);
  v54 = a1;

  v53 = v4;
  v57 = v5;
  while (1)
  {
    v47 = v15;
    v16 = v15;
    v17 = v48;
    outlined init with copy of (String, JSONType)(v16, v48);
    v18 = *v17;
    v19 = v17[1];
    v44[0] = v18;
    v44[1] = v19;
    v46 = *(v5 + 32);
    v46(v56, v49, v4);
    v20 = *v58;
    v55 = v19;
    v22 = specialized __RawDictionaryStorage.find<A>(_:)(v18, v19);
    v23 = (v21 & 1) == 0;
    v24 = __OFADD__(v20[2], v23);
    v25 = v20[2] + v23;
    if (v24)
    {
      BUG();
    }

    v26 = v21;
    if (v20[3] < v25)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v25, v59);
      v27 = v55;
      v22 = specialized __RawDictionaryStorage.find<A>(_:)(v18, v55);
      LOBYTE(v29) = v29 & 1;
      if ((v26 & 1) != v29)
      {
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(&type metadata for String, v27, v29, v28);
        BUG();
      }

      goto LABEL_6;
    }

    v5 = v57;
    if ((v59 & 1) == 0)
    {
      __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _NativeDictionary<String, JSONType>);
      _NativeDictionary.copy()();
LABEL_6:
      v5 = v57;
    }

    if (v26)
    {
      break;
    }

    v30 = *v58;
    v30[(v22 >> 6) + 8] |= 1 << v22;
    v31 = v30[6];
    v32 = 16 * v22;
    *(v31 + v32) = v18;
    *(v31 + v32 + 8) = v55;
    v33 = v30[7] + *(v5 + 72) * v22;
    v4 = v53;
    v46(v33, v56, v53);
    v34 = v30[2];
    v24 = __OFADD__(1, v34);
    v35 = v34 + 1;
    if (v24)
    {
      BUG();
    }

    v30[2] = v35;
    v15 = v51 + v47;
    LOBYTE(v35) = 1;
    v59 = v35;
    if (!--v50)
    {
      return swift_bridgeObjectRelease_n(v54, 2);
    }
  }

  v36 = swift_allocError(&type metadata for _MergeError, &protocol witness table for _MergeError, 0, 0);
  swift_willThrow();
  v45 = v36;
  swift_errorRetain(v36);
  v37 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Error);
  if (swift_dynamicCast(&demangling cache variable for type metadata for Error, &v45, v37, &type metadata for _MergeError, 0))
  {
    v42 = 0;
    v43 = 0xE000000000000000;
    _StringGuts.grow(_:)(30);
    v40._object = "Swift/NativeDictionary.swift" + 0x8000000000000000;
    v40._countAndFlagsBits = 0xD00000000000001BLL;
    String.append(_:)(v40);
    _print_unlocked<A, B>(_:_:)(v44, &v42, &type metadata for String, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
    v40._countAndFlagsBits = 39;
    v40._object = 0xE100000000000000;
    String.append(_:)(v40);
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, v42, v43, "Swift/NativeDictionary.swift", 28, 2, 783, 0);
    BUG();
  }

  v38 = v54;
  v54;
  (*(v5 + 8))(v56, v53);
  v38;
  v55;
  return v45;
}

uint64_t outlined init with copy of MLActivityClassifier.DataSource(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for MLActivityClassifier.DataSource(0);
  (*(*(v2 - 8) + 16))(a2, a1, v2);
  return a2;
}

uint64_t outlined init with take of MLActivityClassifier.DataSource.Columns(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for MLActivityClassifier.DataSource.Columns(0);
  (*(*(v2 - 8) + 32))(a2, a1, v2);
  return a2;
}

uint64_t outlined destroy of MLActivityClassifier.DataSource.Columns(uint64_t a1)
{
  v1 = type metadata accessor for MLActivityClassifier.DataSource.Columns(0);
  (*(*(v1 - 8) + 8))(a1, v1);
  return a1;
}

void *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySo8NSNumberCG_Sis5NeverOTg50113_s8CreateML15_VideoUtilitiesV21keypointsToMultiArrayySo07MLMultiH0CSaySo29VNRecognizedPointsObservationCGKFZSiSo8D54Ccfu_33_5bdac5b40c7411f20a64c1277f8fd44fAKSiTf3nnnpk_nTf1cn_nTm(uint64_t a1)
{
  if ((a1 & 0x4000000000000001) != 0)
  {
    v12 = a1 & 0xFFFFFFFFFFFFF8;
    if (a1)
    {
      v12 = a1;
    }

    v2 = _CocoaArrayWrapper.endIndex.getter(v12);
  }

  else
  {
    v2 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFF8));
  }

  if (v2)
  {
    v3 = 0;
    if (v2 > 0)
    {
      v3 = v2;
    }

    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3, 0);
    if (v2 < 0)
    {
      BUG();
    }

    v4 = 0;
    for (i = 0; i != v2; v4 = i)
    {
      if (__OFADD__(1, i++))
      {
        BUG();
      }

      if ((a1 & 0xC000000000000003) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)(v4);
      }

      else
      {
        v7 = *(a1 + 8 * v4 + 32);
      }

      v8 = v7;
      v13 = [v7 integerValue];

      v9 = _swiftEmptyArrayStorage[2];
      v10 = v9 + 1;
      if (_swiftEmptyArrayStorage[3] >> 1 <= v9)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(_swiftEmptyArrayStorage[3] >= 2uLL, v9 + 1, 1);
        v10 = v9 + 1;
      }

      _swiftEmptyArrayStorage[2] = v10;
      _swiftEmptyArrayStorage[v9 + 4] = v13;
    }
  }

  return _swiftEmptyArrayStorage;
}

void *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay10Foundation3URLVG_SSs5NeverOTg5148_s8CreateML15_VideoUtilitiesV08generateC5TableyAA06MLDataF0VSDySSSay10Foundation3URLVGGKFZSSAIcfu0_33_43697e1f61f7e10b647d882195ad8775AISSTf3nnnpk_nTf1cn_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
    v3 = 0;
    v4 = *(type metadata accessor for URL(0) - 8);
    v5 = ((*(v4 + 80) + 32) & ~*(v4 + 80)) + a1;
    v13 = *(v4 + 72);
    do
    {
      v12 = v1;
      v6 = URL.path.getter(v3);
      v8 = _swiftEmptyArrayStorage[2];
      v9 = v8 + 1;
      if (_swiftEmptyArrayStorage[3] >> 1 <= v8)
      {
        v3 = _swiftEmptyArrayStorage[3] >= 2uLL;
        v14 = v6;
        v15 = v7;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v3, v9, 1);
        v7 = v15;
        v6 = v14;
      }

      _swiftEmptyArrayStorage[2] = v9;
      v10 = 2 * v8;
      _swiftEmptyArrayStorage[v10 + 4] = v6;
      _swiftEmptyArrayStorage[v10 + 5] = v7;
      v5 += v13;
      v1 = v12 - 1;
    }

    while (v12 != 1);
  }

  return _swiftEmptyArrayStorage;
}

uint64_t specialized MLDataColumn.dropMissing()(uint64_t a1, char a2)
{
  v3 = v2;
  if (a2)
  {
    v17[0] = a1;
    swift_errorRetain(a1);
    outlined copy of Result<_DataTable, Error>(a1, 1);
    v4 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Error);
    v5 = _getErrorEmbeddedNSError<A>(_:)(v17, v4, &protocol self-conformance witness table for Error);
    if (v5)
    {
      v6 = v5;
      outlined consume of Result<_DataTable, Error>(a1, 1);
    }

    else
    {
      v6 = swift_allocError(v4, &protocol self-conformance witness table for Error, 0, 0);
      *v9 = a1;
    }

    result = outlined consume of Result<_DataTable, Error>(a1, 1);
    v11 = 1;
  }

  else
  {
    v7 = *(*(a1 + 16) + 16);
    outlined copy of Result<_DataTable, Error>(a1, 0);
    v8 = specialized handling<A, B>(_:_:)(v7);
    v12 = v8;
    if (!v8)
    {
      BUG();
    }

    v11 = 0;
    v13 = type metadata accessor for CMLColumn();
    v14 = swift_allocObject(v13, 24, 7);
    *(v14 + 16) = v12;
    v15 = v14;
    v16 = type metadata accessor for _UntypedColumn();
    v6 = swift_allocObject(v16, 24, 7);
    *(v6 + 16) = v15;
    result = outlined consume of Result<_DataTable, Error>(a1, 0);
  }

  *v3 = v6;
  *(v3 + 8) = v11;
  return result;
}

uint64_t specialized MLDataTable.subscript.setter(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v10 = a3;
  MLDataTable.willMutate()();
  v8 = a1;
  v9 = a2 & 1;
  MLDataTable.setColumnImpl(newColumn:named:)(&v8, v10, a4);
  a4;
  result = outlined consume of Result<_DataTable, Error>(v8, v9);
  if (!*(v4 + 8))
  {
    v7 = *v4;
    outlined copy of Result<_DataTable, Error>(v7, 0);
    _DataTable.columnNamesDidChange()();
    return outlined consume of Result<_DataTable, Error>(v7, 0);
  }

  return result;
}

void (__cdecl **static _VideoUtilities.getHandKeyPointsFromImageUrl(url:)(uint64_t a1))(id)
{
  v32 = v1;
  v28 = a1;
  v2 = type metadata accessor for URL(0);
  v35 = *(v2 - 8);
  v26 = *(v35 + 8);
  v3 = alloca(v26);
  v4 = alloca(v26);
  v29 = *(v35 + 2);
  v5 = v2;
  v31 = v2;
  v29(&v26, a1);
  v6 = type metadata accessor for VNImageOption(0);
  v7 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type VNImageOption and conformance VNImageOption, type metadata accessor for VNImageOption, &protocol conformance descriptor for VNImageOption);
  v8 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, v6, &type metadata for Any + 8, v7);
  objc_allocWithZone(VNImageRequestHandler);
  v30 = &v26;
  v27 = @nonobjc VNImageRequestHandler.init(url:options:)(&v26, v8);
  v33 = swift_allocObject(&unk_392310, 24, 7);
  *(v33 + 16) = _swiftEmptyArrayStorage;
  v36 = swift_allocObject(&unk_392338, 24, 7);
  *(v36 + 16) = 0;
  v34 = swift_allocObject(&unk_392360, 24, 7);
  *(v34 + 16) = 0;
  (v29)(&v26, v28, v5);
  v9 = *(v35 + 80);
  v10 = ~*(v35 + 80) & (v9 + 24);
  v11 = (v26 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + 15) & 0xFFFFFFFFFFFFFFF8;
  v13 = swift_allocObject(&unk_392428, v12 + 8, v9 | 7);
  *(v13 + 16) = v36;
  (*(v35 + 4))(v13 + v10, v30, v31);
  *(v13 + v11) = v34;
  *(v13 + v12) = v33;
  objc_allocWithZone(VNDetectHumanHandPoseRequest);

  v14 = @nonobjc VNDetectHumanBodyPoseRequest.init(completionHandler:)(partial apply for closure #1 in static _VideoUtilities.getHandKeyPointsFromImageUrl(url:), v13, &block_descriptor_7);
  v15 = v27;
  v16 = v14;
  v17 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Swift.AnyObject>);
  v18 = swift_allocObject(v17, 40, 7);
  LOBYTE(v11) = v18;
  v18[2] = 1;
  v18[3] = 3;
  v18[4] = v16;
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for VNRequest, VNRequest_ptr);
  v35 = v16;
  isa = Array._bridgeToObjectiveC()().super.isa;
  v11;
  v38[0] = 0;
  LOBYTE(v13) = [v15 performRequests:isa error:v38];

  v20 = v38[0];
  if (v13)
  {
    v21 = v33;
    v22 = (v36 + 16);
    swift_beginAccess(v36 + 16, v38, 0, 0);
    v23 = *v22;
    if (!v23)
    {
      v20;

      swift_beginAccess(v21 + 16, v37, 0, 0);
      v20 = *(v21 + 16);

      return v20;
    }

    swift_willThrow();
    v20;
    swift_errorRetain(v23);
  }

  else
  {
    v24 = v38[0];
    _convertNSErrorToError(_:)(v20);
    v20 = &objc_release;

    swift_willThrow();
  }

  return v20;
}

char *static _VideoUtilities.generatePredictionWindows(frameKeypoints:windowSize:numOfKeypoints:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  v7 = specialized Array._getCount()(a1, a2, a3, a4);
  if (!a2)
  {
    BUG();
  }

  if (!(v7 ^ 0x8000000000000000 | ~a2))
  {
    BUG();
  }

  if (v7 / a2 < 0)
  {
    BUG();
  }

  v8 = v7 / a2;
  v73 = v7 % a2;
  v74 = a3;
  v78 = v7;
  if (v7 / a2)
  {
    v9 = 0;
    type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for MLMultiArray, MLMultiArray_ptr);
    v10 = a1;
    if ((a1 & 1) == 0)
    {
      v10 = a1 & 0xFFFFFFFFFFFFF8;
    }

    v77 = v10;
    v87 = _swiftEmptyArrayStorage;
    v82 = v8;
    while (1)
    {
      v71 = v9;
      v12 = v9;
      v11 = v6 * v9;
      if (!is_mul_ok(v6, v12))
      {
        BUG();
      }

      v13 = v6 + v11;
      if (__OFADD__(v6, v11))
      {
        BUG();
      }

      if (v13 < v11)
      {
        BUG();
      }

      v14 = a1;
      if ((a1 & 0x4000000000000001) != 0)
      {
        v15 = _CocoaArrayWrapper.endIndex.getter(v77);
      }

      else
      {
        v15 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFF8));
      }

      if (v15 < v11)
      {
        BUG();
      }

      if (v11 < 0)
      {
        BUG();
      }

      if ((a1 & 0x4000000000000001) != 0)
      {
        v16 = _CocoaArrayWrapper.endIndex.getter(v77);
      }

      else
      {
        v16 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFF8));
      }

      if (v16 < v13)
      {
        BUG();
      }

      v84 = v11;
      v79 = v13;
      if ((a1 & 0xC000000000000003) != 0 && v11 != v13)
      {
        v17 = v11;
        if (v11 >= v13)
        {
          BUG();
        }

        v18 = a2;
        v14 = a1;
        do
        {
          _ArrayBuffer._typeCheckSlowPath(_:)(v17++);
          --v18;
        }

        while (v18);
      }

      v19 = v14;
      if ((v14 & 0x4000000000000001) != 0)
      {

        v20 = _CocoaArrayWrapper.subscript.getter(v11, v79, v77);
        v75 = v21;
        v76 = v22;
        v24 = v23;
        v19;
      }

      else
      {
        v24 = 2 * v79 + 1;

        v20 = a1 & 0xFFFFFFFFFFFFF8;
        v75 = (a1 & 0xFFFFFFFFFFFFF8) + 32;
        v76 = v11;
      }

      v25 = v87;
      if (v24)
      {
        v88 = v24;
        v27 = type metadata accessor for __ContiguousArrayStorageBase(0);
        swift_unknownObjectRetain_n(v20, 2);
        v72 = v27;
        v28 = swift_dynamicCastClass(v20, v27);
        if (!v28)
        {
          swift_unknownObjectRelease(v20);
          v28 = _swiftEmptyArrayStorage;
        }

        v29 = v28[2];

        if (__OFSUB__(v88 >> 1, v76))
        {
          BUG();
        }

        if (v29 == (v88 >> 1) - v76)
        {
          v26 = swift_dynamicCastClass(v20, v72);
          if (!v26)
          {
            swift_unknownObjectRelease(v20);
            v26 = _swiftEmptyArrayStorage;
          }

          goto LABEL_35;
        }

        swift_unknownObjectRelease(v20);
        v24 = v88;
      }

      v26 = specialized _copyCollectionToContiguousArray<A>(_:)(v20, v75, v76, v24);
LABEL_35:
      swift_unknownObjectRelease(v20);
      v30 = @nonobjc MLMultiArray.__allocating_init(concatenating:axis:dataType:)(v26, 0, 65600);
      v31 = v30;
      if (!swift_isUniquelyReferenced_nonNull_native(v25))
      {
        v25 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v25 + 2) + 1, 1, v25);
      }

      v6 = a2;
      v32 = *(v25 + 2);
      v33 = v32 + 1;
      if (*(v25 + 3) >> 1 <= v32)
      {
        v36 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(*(v25 + 3) >= 2uLL, v32 + 1, 1, v25);
        v33 = v32 + 1;
        v25 = v36;
      }

      *(v25 + 2) = v33;
      v34 = 24 * v32;
      v35 = v31;
      *&v25[v34 + 32] = v31;
      *&v25[v34 + 40] = v84;
      v9 = v71 + 1;
      v87 = v25;
      *&v25[v34 + 48] = v79;

      v8 = v82;
      if (v71 + 1 == v82)
      {
        goto LABEL_43;
      }
    }
  }

  v87 = _swiftEmptyArrayStorage;
LABEL_43:
  if (v73 <= 0)
  {
    return v87;
  }

  v38 = v8;
  v37 = v6 * v8;
  if (!is_mul_ok(v6, v38))
  {
    BUG();
  }

  v39 = __OFSUB__(v6, v73);
  v40 = v6 - v73;
  if (v39)
  {
    BUG();
  }

  v83 = v37;
  specialized ContiguousArray.reserveCapacity(_:)(3);
  v41 = objc_allocWithZone(NSNumber);
  [v41 initWithInteger:v40];
  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()(v41);
  v42 = _swiftEmptyArrayStorage[2];
  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)(v42);
  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)(v42);
  specialized ContiguousArray._endMutation()(v42);
  v43 = objc_allocWithZone(NSNumber);
  [v43 initWithInteger:3];
  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()(v43);
  v44 = _swiftEmptyArrayStorage[2];
  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)(v44);
  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)(v44);
  specialized ContiguousArray._endMutation()(v44);
  v45 = objc_allocWithZone(NSNumber);
  [v45 initWithInteger:v74];
  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()(v45);
  v46 = _swiftEmptyArrayStorage[2];
  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)(v46);
  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)(v46);
  specialized ContiguousArray._endMutation()(v46);
  objc_allocWithZone(MLMultiArray);
  v47 = @nonobjc MLMultiArray.init(shape:dataType:)(_swiftEmptyArrayStorage, 65600);
  if (v4)
  {
    return v87;
  }

  v48 = v47;
  static _VideoUtilities.resetMultiArray(_:with:)(v47, 0.0);
  v85 = v48;
  if (v78 < v83)
  {
    BUG();
  }

  v50 = a1;
  specialized Array._checkIndex(_:)(v83, a1);
  specialized Array._checkIndex(_:)(v78, a1);
  if ((a1 & 0xC000000000000003) != 0 && v83 != v78)
  {
    if (v83 >= v78)
    {
      BUG();
    }

    type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for MLMultiArray, MLMultiArray_ptr);
    v51 = v83;
    v50 = a1;
    do
    {
      _ArrayBuffer._typeCheckSlowPath(_:)(v51++);
    }

    while (v78 != v51);
  }

  if ((v50 & 0x4000000000000001) != 0)
  {
    v67 = a1 & 0xFFFFFFFFFFFFF8;
    if (a1)
    {
      v67 = a1;
    }

    v53 = _CocoaArrayWrapper.subscript.getter(v83, v78, v67);
    v80 = v68;
    v52 = v69;
    v54 = v70;
    a1;
  }

  else
  {
    v52 = v83;
    if (v78 < 0)
    {
      BUG();
    }

    v53 = a1 & 0xFFFFFFFFFFFFF8;
    v80 = (a1 & 0xFFFFFFFFFFFFF8) + 32;
    v54 = 2 * v78 + 1;
  }

  v55 = _sSaySayxGqd__c7ElementQyd__RszSTRd__lufCSo12MLMultiArrayC_s0C5SliceVyAEGTt0g5(v53, v80, v52, v54);
  v86 = v85;

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()(v55);
  v56 = *(&dword_10 + (v55 & 0xFFFFFFFFFFFFF8));
  v57 = *(&dword_18 + (v55 & 0xFFFFFFFFFFFFF8));
  if (v57 >> 1 <= v56)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v57 >= 2, v56 + 1, 1);
  }

  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for MLMultiArray, MLMultiArray_ptr);
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)(v56, v86);
  v55;
  v58 = @nonobjc MLMultiArray.__allocating_init(concatenating:axis:dataType:)(v55, 0, 65600);
  v59 = v58;
  v60 = v87;
  if (!swift_isUniquelyReferenced_nonNull_native(v87))
  {
    v60 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v87 + 2) + 1, 1, v87);
  }

  v61 = v78;
  v62 = v60;
  v63 = *(v60 + 2);
  v64 = v62;
  if (*(v62 + 3) >> 1 <= v63)
  {
    v64 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(*(v62 + 3) >= 2uLL, v63 + 1, 1, v62);
    v61 = v78;
  }

  v65 = v64;
  *(v64 + 2) = v63 + 1;
  v66 = 24 * v63;
  *&v65[v66 + 32] = v59;
  *&v65[v66 + 40] = v83;
  *&v65[v66 + 48] = v61;

  return v65;
}

uint64_t static _VideoUtilities.reformatKeypointsDataTable(table:featureColumn:keypointsShape:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v39 = v4;
  v7 = *(a1 + 8);
  v46 = *a1;
  v47 = v7;
  v44._countAndFlagsBits = a2;
  v8._countAndFlagsBits = a2;
  *&v43 = a3;
  v8._object = a3;
  MLDataTable.subscript.getter(v8);
  if (BYTE8(v45) == 1)
  {
    outlined consume of Result<_DataTable, Error>(v45, 1);
LABEL_15:
    v28 = *(a1 + 8);
    *&v45 = *a1;
    v27 = v45;
    BYTE8(v45) = v28;
    v29 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<String>);
    inited = swift_initStackObject(v29, v38);
    inited[2] = 1;
    inited[3] = 2;
    inited[4] = v44._countAndFlagsBits;
    inited[5] = v43;
    LOBYTE(v46) = 5;

    outlined copy of Result<_DataTable, Error>(v27, v28);
    static _ValidationUtilities.validateTableTypes(table:columns:type:)(&v45, inited, &v46);
    outlined consume of Result<_DataTable, Error>(v45, SBYTE8(v45));
    swift_setDeallocating(inited);
    return specialized _ContiguousArrayStorage.__deallocating_deinit();
  }

  _UntypedColumn.type.getter();
  outlined consume of Result<_DataTable, Error>(v45, 0);
  outlined consume of Result<_DataTable, Error>(v45, 0);
  if (v46 != 3)
  {
    goto LABEL_15;
  }

  v9 = *(a1 + 8);
  *&v45 = *a1;
  BYTE8(v45) = v9;
  v10._countAndFlagsBits = v44._countAndFlagsBits;
  v10._object = v43;
  MLDataTable.subscript.getter(v10);
  v11 = v46;
  LOBYTE(v44._object) = v47;
  v12 = swift_allocObject(&unk_3922E8, 24, 7);
  *(v12 + 16) = a4;
  v40 = a4;

  specialized MLUntypedColumn.map<A>(skipUndefined:_:)(1, partial apply for closure #1 in static _VideoUtilities.reformatKeypointsDataTable(table:featureColumn:keypointsShape:), v12, v11, v44._object);

  outlined consume of Result<_DataTable, Error>(v11, v44._object);
  v44._object = v45;
  LOBYTE(v48) = BYTE8(v45);
  v13 = *(a1 + 8);
  v46 = *a1;
  v47 = v13;
  v10._countAndFlagsBits = v44._countAndFlagsBits;
  v10._object = v43;
  MLDataTable.subscript.getter(v10);
  v14 = -1;
  v42 = -1;
  if (!BYTE8(v45))
  {

    v14 = CMLColumn.size.getter();
    outlined consume of Result<_DataTable, Error>(v45, 0);
  }

  outlined consume of Result<_DataTable, Error>(v45, SBYTE8(v45));
  v48 = v48;
  specialized MLDataColumn.dropMissing()(v44._object, v48);
  if (!v47)
  {
    v41 = v14;
    outlined copy of Result<_DataTable, Error>(v46, 0);
    v42 = CMLColumn.size.getter();
    outlined consume of Result<_DataTable, Error>(v46, 0);
  }

  outlined consume of Result<_DataTable, Error>(v46, v47);
  v15 = __OFSUB__(v14, v42);
  v16 = v14 - v42;
  if (v15)
  {
    BUG();
  }

  if (!v16)
  {

    specialized MLDataTable.subscript.setter(v44._object, v48, v44._countAndFlagsBits, v43);
    goto LABEL_15;
  }

  *&v45 = 0;
  *(&v45 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(236);
  v17._object = "validation_confusion" + 0x8000000000000000;
  v17._countAndFlagsBits = 0xD00000000000003DLL;
  String.append(_:)(v17);
  v46 = v16;
  v18 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
  v20 = v19;
  v17._countAndFlagsBits = v18;
  v17._object = v19;
  String.append(_:)(v17);
  v20;
  v17._object = "mn into MLMultiArray format. " + 0x8000000000000000;
  v17._countAndFlagsBits = 0xD00000000000006BLL;
  String.append(_:)(v17);
  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(1uLL, (v40 & 0xC000000000000003) == 0, v40);
  if ((v40 & 0xC000000000000003) != 0)
  {
    v21 = specialized _ArrayBuffer._getElementSlowPath(_:)(1);
  }

  else
  {
    v21 = *(v40 + 40);
  }

  v22 = v21;
  LODWORD(v43) = (v40 & 0xC000000000000003) == 0;
  v23 = [v21 integerValue];

  v46 = v23;
  v24._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
  LOBYTE(v23) = v24._object;
  String.append(_:)(v24);
  v23;
  v25._object = 0xE200000000000000;
  v25._countAndFlagsBits = 8236;
  String.append(_:)(v25);
  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(2uLL, v43, v40);
  if ((v40 & 0xC000000000000003) != 0)
  {
    v26 = specialized _ArrayBuffer._getElementSlowPath(_:)(2);
  }

  else
  {
    v26 = *(v40 + 48);
  }

  v32 = v26;
  v33 = [v26 integerValue];

  v46 = v33;
  v34._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
  LOBYTE(v33) = v34._object;
  String.append(_:)(v34);
  v33;
  v35._object = "ld have a dimension of [1, " + 0x8000000000000000;
  v35._countAndFlagsBits = 0xD00000000000003CLL;
  String.append(_:)(v35);
  v36 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
  swift_allocError(&type metadata for MLCreateError, v36, 0, 0);
  *v37 = v45;
  *(v37 + 16) = 0;
  *(v37 + 32) = 0;
  *(v37 + 48) = 0;
  swift_willThrow();
  return outlined consume of Result<_DataTable, Error>(v44._object, v48);
}

uint64_t static _VideoUtilities.getSecondsFromTimeString(_:)(__int128 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v34._countAndFlagsBits = a1;
  v33 = a1;
  *&v35 = *(&a1 + 1);
  v32[0] = 58;
  v32[1] = 0xE100000000000000;
  v5 = lazy protocol witness table accessor for type String and conformance String();
  v6 = StringProtocol.components<A>(separatedBy:)(v32, &type metadata for String, &type metadata for String, v5, v5);
  v7 = v6[2];
  switch(v7)
  {
    case 3:
      v19 = v6[4];
      v20 = v6[5];

      v36 = _sSdySdSgxcSyRzlufCSS_Tt0g5(v19, v20);
      if (v21)
      {
        goto LABEL_13;
      }

      if (v6[2] < 2uLL)
      {
        BUG();
      }

      v22 = v6[6];
      v23 = v6[7];

      v24 = _sSdySdSgxcSyRzlufCSS_Tt0g5(v22, v23);
      if (v25)
      {
        goto LABEL_13;
      }

      v34._object = v24;
      if (v6[2] < 3uLL)
      {
        BUG();
      }

      v29 = v6[8];
      v30 = v6[9];

      v6;
      result = _sSdySdSgxcSyRzlufCSS_Tt0g5(v29, v30);
      if (v31)
      {
        goto LABEL_14;
      }

      break;
    case 2:
      v12 = v6[4];
      v13 = v6[5];

      v14 = _sSdySdSgxcSyRzlufCSS_Tt0g5(v12, v13);
      if (v15)
      {
        goto LABEL_13;
      }

      v36 = v14;
      if (v6[2] < 2uLL)
      {
        BUG();
      }

      v16 = v6[6];
      v17 = v6[7];

      v6;
      result = _sSdySdSgxcSyRzlufCSS_Tt0g5(v16, v17);
      if (v18)
      {
        goto LABEL_14;
      }

      break;
    case 1:
      v8 = v6[4];
      v9 = v6[5];

      v6;
      result = _sSdySdSgxcSyRzlufCSS_Tt0g5(v8, v9);
      if ((v11 & 1) == 0)
      {
        return result;
      }

LABEL_14:
      *&v33 = 0;
      *(&v33 + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(153);
      v26._object = " expects strings." + 0x8000000000000000;
      v26._countAndFlagsBits = 0xD00000000000001FLL;
      String.append(_:)(v26);
      v26._countAndFlagsBits = v34._countAndFlagsBits;
      v26._object = v35;
      String.append(_:)(v26);
      v26._object = "Unsupported time string format " + 0x8000000000000000;
      v26._countAndFlagsBits = 0xD000000000000078;
      String.append(_:)(v26);
      v35 = v33;
      v27 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
      swift_allocError(&type metadata for MLCreateError, v27, 0, 0);
      *v28 = v35;
      *(v28 + 16) = 0;
      *(v28 + 32) = 0;
      *(v28 + 48) = 0;
      return swift_willThrow();
    default:
LABEL_13:
      v6;
      goto LABEL_14;
  }

  return result;
}

id static _VideoUtilities.getHandKeyPointsFromVideoUrl(url:startTime:endTime:targetFrameRate:)(void *a1, CMTimeValue a2, uint64_t a3, CMTimeEpoch a4, CMTimeValue a5, uint64_t a6, double a7, CMTimeEpoch a8)
{
  v66 = v8;
  *&v69 = a7;
  *&end.timescale = a6;
  end.value = a5;
  end.epoch = a4;
  start = a3;
  v64.value = a2;
  v68 = a1;
  v9 = type metadata accessor for URL(0);
  v10 = *(v9 - 8);
  v58 = v10[8];
  v70 = v10;
  v11 = alloca(v58);
  v12 = alloca(v58);
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for VNVideoProcessor, VNVideoProcessor_ptr);
  v59 = v10[2];
  v60 = &v58;
  v61 = v9;
  v59(&v58, v68, v9);
  v64.epoch = VNVideoProcessor.__allocating_init(url:)(&v58);
  *&v64.timescale = swift_allocObject(&unk_392310, 24, 7);
  *(*&v64.timescale + 16) = _swiftEmptyArrayStorage;
  v67 = swift_allocObject(&unk_392338, 24, 7);
  *(v67 + 16) = 0;
  v65 = swift_allocObject(&unk_392360, 24, 7);
  *(v65 + 16) = 0;
  v59(&v58, v68, v9);
  v13 = *(v70 + 80);
  v14 = ~*(v70 + 80) & (v13 + 24);
  v15 = (v58 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v15 + 15) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject(&unk_392388, v16 + 8, v13 | 7);
  *(v17 + 16) = v67;
  (*(v70 + 4))(v17 + v14, v60, v61);
  *(v17 + v15) = v65;
  *(v17 + v16) = *&v64.timescale;
  objc_allocWithZone(VNDetectHumanHandPoseRequest);

  v18 = @nonobjc VNDetectHumanBodyPoseRequest.init(completionHandler:)(partial apply for closure #1 in static _VideoUtilities.getHandKeyPointsFromVideoUrl(url:startTime:endTime:targetFrameRate:), v17, &block_descriptor_7);
  if (*&v69 >= 0.01)
  {
    v23 = *&v69;
  }

  else
  {
    v74.start.value = 0;
    *&v74.start.timescale = 0xE000000000000000;
    _StringGuts.grow(_:)(55);
    v19._object = " frames with no hand in view." + 0x8000000000000000;
    v19._countAndFlagsBits = 0xD00000000000001ALL;
    String.append(_:)(v19);
    Double.write<A>(to:)(&v74, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
    v19._object = "Invalid target frame rate " + 0x8000000000000000;
    v19._countAndFlagsBits = 0xD000000000000010;
    String.append(_:)(v19);
    Double.write<A>(to:)(&v74, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
    v19._countAndFlagsBits = 0x776F6E2073706620;
    v19._object = 0xE90000000000002ELL;
    String.append(_:)(v19);
    value = v74.start.value;
    v21 = *&v74.start.timescale;
    v22 = static os_log_type_t.default.getter(0x776F6E2073706620);
    v19._countAndFlagsBits = value;
    v19._object = v21;
    log(_:type:)(v19, v22);
    v21;
    v23 = 30.0;
  }

  *&v70 = 1.0 / v23;
  v24 = objc_allocWithZone(VNVideoProcessorRequestProcessingOptions);
  v25 = [v24 init];
  v26 = objc_allocWithZone(VNVideoProcessorTimeIntervalCadence);
  v27 = [v26 initWithTimeInterval:*&v70];
  [v25 setCadence:v27];

  v74.start.value = 0;
  epoch = v64.epoch;
  v29 = [v64.epoch addRequest:v18 processingOptions:v25 error:&v74];
  v30 = v74.start.value;
  if (v29)
  {
    v69 = v25;
    v70 = v18;
    v74.start.value;
    v76.value = v64.value;
    *&v76.timescale = start;
    v76.epoch = end.epoch;
    *&v75.timescale = *&end.timescale;
    v75.epoch = a8;
    v75.value = end.value;
    CMTimeRange.init(start:end:)(&v74, v76, v75);
    v72 = 0;
    v34 = [epoch analyzeTimeRange:&v72 error:{v31, v32, v33, v74.start.value, *&v74.start.timescale, v74.start.epoch, v74.duration.value, *&v74.duration.timescale, v74.duration.epoch}];
    v35 = epoch;
    v36 = v72;
    if (v34)
    {
      v37 = (v67 + 16);
      v38 = (v65 + 16);
      swift_beginAccess(v65 + 16, &v74, 0, 0);
      if (*v38 <= 0)
      {
        v36;
      }

      else
      {
        v72 = 0;
        v73 = 0xE000000000000000;
        v36;
        _StringGuts.grow(_:)(44);
        v39 = v73;
        v73;
        v72 = 0x206F65646956;
        v73 = 0xE600000000000000;
        v40._countAndFlagsBits = URL.path.getter(v39);
        object = v40._object;
        String.append(_:)(v40);
        object;
        v42._countAndFlagsBits = 0x2073616820;
        v42._object = 0xE500000000000000;
        String.append(_:)(v42);
        v71[0] = *v38;
        v43._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
        v44 = v43._object;
        String.append(_:)(v43);
        v44;
        v42._object = " cannot be empty." + 0x8000000000000000;
        v42._countAndFlagsBits = 0xD00000000000001DLL;
        String.append(_:)(v42);
        v45 = v72;
        v46 = v73;
        v47 = static os_log_type_t.info.getter(0xD00000000000001DLL);
        v42._countAndFlagsBits = v45;
        v42._object = v46;
        log(_:type:)(v42, v47);
        v46;
      }

      swift_beginAccess(v37, &v72, 0, 0);
      v53 = *v37;
      v54 = v69;
      if (!*v37)
      {
        v56 = *&v64.timescale;
        v57 = *&v64.timescale + 16;

        swift_beginAccess(v57, v71, 0, 0);
        v49 = *(v56 + 16);

        return v49;
      }

      swift_willThrow();
      swift_errorRetain(v53);
      v49 = v54;
      v66 = v53;
      v50 = v64.epoch;
      v35 = v70;
    }

    else
    {
      v51 = v72;
      v52 = _convertNSErrorToError(_:)(v36);

      v66 = v52;
      swift_willThrow();
      v49 = v70;
      v50 = v69;
    }
  }

  else
  {
    v68 = v74.start.value;
    v48 = _convertNSErrorToError(_:)(v30);

    v66 = v48;
    swift_willThrow();
    v49 = v18;
    v35 = epoch;
    v50 = v25;
  }

  return v49;
}

void (__cdecl **static _VideoUtilities.getHumanKeyPointsFromVideoUrl(url:startTime:endTime:targetFrameRate:)(void *a1, CMTimeValue a2, uint64_t a3, CMTimeEpoch a4, CMTimeValue a5, uint64_t a6, double a7, CMTimeEpoch a8))(id)
{
  v66 = v8;
  *&v70 = a7;
  *&end.timescale = a6;
  end.value = a5;
  end.epoch = a4;
  start = a3;
  v64.value = a2;
  v68 = a1;
  v9 = type metadata accessor for URL(0);
  v10 = *(v9 - 8);
  v58 = v10[8];
  v69 = v10;
  v11 = alloca(v58);
  v12 = alloca(v58);
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for VNVideoProcessor, VNVideoProcessor_ptr);
  v59 = v10[2];
  v60 = &v58;
  v61 = v9;
  v59(&v58, v68, v9);
  v64.epoch = VNVideoProcessor.__allocating_init(url:)(&v58);
  *&v64.timescale = swift_allocObject(&unk_392310, 24, 7);
  *(*&v64.timescale + 16) = _swiftEmptyArrayStorage;
  v67 = swift_allocObject(&unk_392338, 24, 7);
  *(v67 + 16) = 0;
  v65 = swift_allocObject(&unk_392360, 24, 7);
  *(v65 + 16) = 0;
  v59(&v58, v68, v9);
  v13 = *(v69 + 80);
  v14 = ~*(v69 + 80) & (v13 + 24);
  v15 = (v58 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v15 + 15) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject(&unk_3923D8, v16 + 8, v13 | 7);
  *(v17 + 16) = v67;
  (*(v69 + 4))(v17 + v14, v60, v61);
  *(v17 + v15) = v65;
  *(v17 + v16) = *&v64.timescale;
  objc_allocWithZone(VNDetectHumanBodyPoseRequest);

  v18 = @nonobjc VNDetectHumanBodyPoseRequest.init(completionHandler:)(partial apply for closure #1 in static _VideoUtilities.getHumanKeyPointsFromVideoUrl(url:startTime:endTime:targetFrameRate:), v17, &block_descriptor_21);
  [v18 setRevision:1];
  v69 = v18;
  if (*&v70 >= 0.01)
  {
    v23 = *&v70;
  }

  else
  {
    v74.start.value = 0;
    *&v74.start.timescale = 0xE000000000000000;
    _StringGuts.grow(_:)(55);
    v19._object = " frames with no hand in view." + 0x8000000000000000;
    v19._countAndFlagsBits = 0xD00000000000001ALL;
    String.append(_:)(v19);
    Double.write<A>(to:)(&v74, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
    v19._object = "Invalid target frame rate " + 0x8000000000000000;
    v19._countAndFlagsBits = 0xD000000000000010;
    String.append(_:)(v19);
    Double.write<A>(to:)(&v74, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
    v19._countAndFlagsBits = 0x776F6E2073706620;
    v19._object = 0xE90000000000002ELL;
    String.append(_:)(v19);
    value = v74.start.value;
    v21 = *&v74.start.timescale;
    v22 = static os_log_type_t.default.getter(0x776F6E2073706620);
    v19._countAndFlagsBits = value;
    v18 = v69;
    v19._object = v21;
    log(_:type:)(v19, v22);
    v21;
    v23 = 30.0;
  }

  *&v70 = 1.0 / v23;
  v24 = objc_allocWithZone(VNVideoProcessorRequestProcessingOptions);
  v25 = [v24 init];
  v26 = objc_allocWithZone(VNVideoProcessorTimeIntervalCadence);
  v27 = [v26 initWithTimeInterval:*&v70];
  [v25 setCadence:v27];

  v74.start.value = 0;
  epoch = v64.epoch;
  v29 = [v64.epoch addRequest:v18 processingOptions:v25 error:&v74];
  v30 = v74.start.value;
  if (v29)
  {
    v70 = v25;
    v74.start.value;
    v76.value = v64.value;
    *&v76.timescale = start;
    v76.epoch = end.epoch;
    *&v75.timescale = *&end.timescale;
    v75.epoch = a8;
    v75.value = end.value;
    CMTimeRange.init(start:end:)(&v74, v76, v75);
    v72 = 0;
    v34 = [epoch analyzeTimeRange:&v72 error:{v31, v32, v33, v74.start.value, *&v74.start.timescale, v74.start.epoch, v74.duration.value, *&v74.duration.timescale, v74.duration.epoch}];
    v35 = epoch;
    v36 = v72;
    if (v34)
    {
      v37 = (v67 + 16);
      v38 = (v65 + 16);
      swift_beginAccess(v65 + 16, &v74, 0, 0);
      if (*v38 <= 0)
      {
        v36;
      }

      else
      {
        v72 = 0;
        v73 = 0xE000000000000000;
        v36;
        _StringGuts.grow(_:)(46);
        v39 = v73;
        v73;
        v72 = 0x206F65646956;
        v73 = 0xE600000000000000;
        v40._countAndFlagsBits = URL.path.getter(v39);
        object = v40._object;
        String.append(_:)(v40);
        object;
        v42._countAndFlagsBits = 0x2073616820;
        v42._object = 0xE500000000000000;
        String.append(_:)(v42);
        v71[0] = *v38;
        v43._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
        v44 = v43._object;
        String.append(_:)(v43);
        v44;
        v42._object = "seconds.fraction format." + 0x8000000000000000;
        v42._countAndFlagsBits = 0xD00000000000001FLL;
        String.append(_:)(v42);
        v45 = v72;
        v46 = v73;
        v47 = static os_log_type_t.info.getter(0xD00000000000001FLL);
        v42._countAndFlagsBits = v45;
        v42._object = v46;
        log(_:type:)(v42, v47);
        v46;
      }

      swift_beginAccess(v37, &v72, 0, 0);
      v52 = *v37;
      v53 = v70;
      if (!*v37)
      {
        v56 = *&v64.timescale;
        v57 = *&v64.timescale + 16;

        swift_beginAccess(v57, v71, 0, 0);
        v54 = *(v56 + 16);

        return v54;
      }

      swift_willThrow();
      swift_errorRetain(v52);
      v49 = v53;
      v66 = v52;
      v25 = v64.epoch;
      epoch = v69;
    }

    else
    {
      v50 = v72;
      v51 = _convertNSErrorToError(_:)(v36);

      v66 = v51;
      swift_willThrow();
      v49 = v69;
      epoch = v35;
      v25 = v70;
    }
  }

  else
  {
    v68 = v74.start.value;
    v48 = _convertNSErrorToError(_:)(v30);

    v66 = v48;
    swift_willThrow();
    v49 = v18;
  }

  v54 = &objc_release;

  return v54;
}

uint64_t static _VideoUtilities.renameFeatureTableColumns(table:sessionIdColumn:featureColumn:labelColumn:)(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5, uint64_t a6, void *a7)
{
  v35 = v7;
  v32 = a6;
  v30 = a5;
  named = *a1;
  v38 = a1;
  v10 = *(a1 + 8);
  v33 = v10;
  v36 = named;
  LOBYTE(v37) = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<String>);
  inited = swift_initStackObject(v11, v29);
  inited[2] = 3;
  inited[3] = 6;
  v31._object = a2;
  inited[4] = a2;
  inited[5] = a3;
  v31._countAndFlagsBits = a4;
  inited[6] = a4;
  v13 = v30;
  inited[7] = v30;
  inited[8] = v32;
  inited[9] = a7;
  outlined copy of Result<_DataTable, Error>(named, v33);
  named = a3;

  v14 = v35;
  static _ValidationUtilities.validateTableFormat(table:context:columns:)(&v36, 0x2065727574616546, 0xEC00000061746164, inited);
  if (v14)
  {
    outlined consume of Result<_DataTable, Error>(v36, v37);
    swift_setDeallocating(inited);
    return specialized _ContiguousArrayStorage.__deallocating_deinit();
  }

  else
  {
    v35 = 0;
    v16 = v32;
    outlined consume of Result<_DataTable, Error>(v36, v37);
    swift_setDeallocating(inited);
    specialized _ContiguousArrayStorage.__deallocating_deinit();
    v17 = v38;
    MLDataTable.willMutate()();
    v18._countAndFlagsBits = 0x5F6E6F6973736573;
    v18._object = 0xEA00000000006469;
    v19._countAndFlagsBits = v31._object;
    v19._object = named;
    MLDataTable.renameImpl(named:to:)(v19, v18);
    if (!*(v17 + 8))
    {
      v20 = *v38;
      outlined copy of Result<_DataTable, Error>(*v38, 0);
      _DataTable.columnNamesDidChange()();
      outlined consume of Result<_DataTable, Error>(v20, 0);
    }

    v21 = v38;
    MLDataTable.willMutate()();
    v22._countAndFlagsBits = 0x746E696F7079656BLL;
    v22._object = 0xE900000000000073;
    v23._countAndFlagsBits = v31._countAndFlagsBits;
    v23._object = v13;
    MLDataTable.renameImpl(named:to:)(v23, v22);
    if (!*(v21 + 8))
    {
      v24 = *v38;
      outlined copy of Result<_DataTable, Error>(*v38, 0);
      _DataTable.columnNamesDidChange()();
      outlined consume of Result<_DataTable, Error>(v24, 0);
    }

    v25 = v38;
    MLDataTable.willMutate()();
    v26._countAndFlagsBits = 0x6C6562616CLL;
    v26._object = 0xE500000000000000;
    v27._countAndFlagsBits = v16;
    v27._object = a7;
    result = MLDataTable.renameImpl(named:to:)(v27, v26);
    if (!*(v25 + 8))
    {
      v28 = *v38;
      outlined copy of Result<_DataTable, Error>(*v38, 0);
      _DataTable.columnNamesDidChange()();
      return outlined consume of Result<_DataTable, Error>(v28, 0);
    }
  }

  return result;
}

uint64_t *static _VideoUtilities.generateVideoTable(_:)(uint64_t a1)
{
  v49 = v1;

  v51 = specialized _copyCollectionToContiguousArray<A>(_:)(a1);
  specialized MutableCollection<>.sort(by:)(&v51);
  if (v2)
  {

    BUG();
  }

  a1;
  v46 = *(v51 + 2);
  if (!v46)
  {

    v4 = _swiftEmptyArrayStorage;
    v56 = _swiftEmptyArrayStorage;
    goto LABEL_43;
  }

  v55 = a1;
  v54 = 0;
  v50 = v51;
  v47 = v51 + 32;
  v3 = 0;
  v4 = _swiftEmptyArrayStorage;
  v56 = _swiftEmptyArrayStorage;
  do
  {
    v53 = v4;
    v45 = v3;
    v5 = *&v47[16 * v3];
    v6 = *&v47[16 * v3 + 8];
    v7 = *(v55 + 16);

    v8 = _swiftEmptyArrayStorage;
    if (v7)
    {

      v9 = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
      v8 = _swiftEmptyArrayStorage;
      if (v10)
      {
        v8 = *(*(v55 + 56) + 8 * v9);
      }

      v6;
    }

    v11 = v54;
    ML15_VideoUtilitiesV08generateC5TableyAA06MLDataF0VSDySSSay10Foundation3URLVGGKFZSSAIcfu0_33_43697e1f61f7e10b647d882195ad8775AISSTf3nnnpk_nTf1cn_n = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay10Foundation3URLVG_SSs5NeverOTg5148_s8CreateML15_VideoUtilitiesV08generateC5TableyAA06MLDataF0VSDySSSay10Foundation3URLVGGKFZSSAIcfu0_33_43697e1f61f7e10b647d882195ad8775AISSTf3nnnpk_nTf1cn_n(v8);
    v54 = v11;
    v8;
    v52 = ML15_VideoUtilitiesV08generateC5TableyAA06MLDataF0VSDySSSay10Foundation3URLVGGKFZSSAIcfu0_33_43697e1f61f7e10b647d882195ad8775AISSTf3nnnpk_nTf1cn_n;
    v13 = ML15_VideoUtilitiesV08generateC5TableyAA06MLDataF0VSDySSSay10Foundation3URLVGGKFZSSAIcfu0_33_43697e1f61f7e10b647d882195ad8775AISSTf3nnnpk_nTf1cn_n[2];
    if (!v13)
    {
      v6;
      v14 = _swiftEmptyArrayStorage;
LABEL_14:
      v18 = v56;
      goto LABEL_16;
    }

    v14 = static Array._allocateBufferUninitialized(minimumCapacity:)(v13, &type metadata for String);
    v14[2] = v13;
    v14[4] = v5;
    v14[5] = v6;
    if (v13 == 1)
    {
      goto LABEL_14;
    }

    v48 = v14;
    v15 = v14 + 6;
    v16 = v13 - 2;
    while (1)
    {
      *v15 = v5;
      v15[1] = v6;
      if (v16-- == 0)
      {
        break;
      }

      v15 += 2;
    }

    v18 = v56;
    v14 = v48;
LABEL_16:
    v19 = v14[2];
    v20 = v18[2];
    v21 = v19 + v20;
    if (__OFADD__(v19, v20))
    {
      BUG();
    }

    v22 = v14;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v18);
    v24 = v56;
    if (!isUniquelyReferenced_nonNull_native || v56[3] >> 1 < v21)
    {
      if (v20 > v21)
      {
        v21 = v20;
      }

      v24 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v21, 1, v56);
    }

    v25 = v22;
    v26 = v22[2] == 0;
    v56 = v24;
    if (v26)
    {
      v4 = v53;
      if (v19)
      {
        BUG();
      }
    }

    else
    {
      v27 = v24[2];
      v4 = v53;
      if ((v24[3] >> 1) - v27 < v19)
      {
        BUG();
      }

      swift_arrayInitWithCopy(&v24[2 * v27 + 4], (v25 + 4), v19, &type metadata for String);
      if (v19)
      {
        v28 = __OFADD__(v56[2], v19);
        v29 = v56[2] + v19;
        if (v28)
        {
          BUG();
        }

        v56[2] = v29;
      }
    }

    v25;
    v30 = v52[2];
    v31 = v4[2];
    v32 = v30 + v31;
    if (__OFADD__(v30, v31))
    {
      BUG();
    }

    v33 = swift_isUniquelyReferenced_nonNull_native(v4);
    if (!v33 || v4[3] >> 1 < v32)
    {
      if (v31 > v32)
      {
        v32 = v31;
      }

      v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v33, v32, 1, v4);
    }

    v34 = v52;
    if (v52[2])
    {
      v35 = v4[2];
      if ((v4[3] >> 1) - v35 < v30)
      {
        BUG();
      }

      swift_arrayInitWithCopy(&v4[2 * v35 + 4], (v52 + 4), v30, &type metadata for String);
      if (v30)
      {
        v28 = __OFADD__(v4[2], v30);
        v36 = v4[2] + v30;
        if (v28)
        {
          BUG();
        }

        v4[2] = v36;
      }
    }

    else if (v30)
    {
      BUG();
    }

    v3 = v45 + 1;
    v34;
  }

  while (v45 + 1 != v46);

LABEL_43:
  v37 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, MLDataValueConvertible)>);
  inited = swift_initStackObject(v37, v44);
  inited[2] = 2;
  inited[3] = 4;
  inited[4] = 0x6C6562616CLL;
  inited[5] = 0xE500000000000000;
  v39 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String]);
  inited[9] = v39;
  v40 = lazy protocol witness table accessor for type [String] and conformance <A> [A]();
  inited[10] = v40;
  inited[6] = v56;
  inited[11] = 0x7461506F65646976;
  inited[12] = 0xE900000000000068;
  inited[16] = v39;
  inited[17] = v40;
  inited[13] = v4;
  v41 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLDataValueConvertible);
  v42 = Dictionary.init(dictionaryLiteral:)(inited, &type metadata for String, v41, &protocol witness table for String);
  return MLDataTable.init(dictionary:)(v42);
}

uint64_t static _VideoUtilities.validateVideoInput(dataFrame:videoColumn:labelColumn:startTimeColumn:endTimeColumn:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v26 = v9;
  v29 = a6;
  _ = a5;
  v28._countAndFlagsBits = a4;
  v28._object = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Any.Type>);
  v11 = swift_allocObject(v28._object, 40, 7);
  v12 = v11;
  v11[2] = 1;
  v11[3] = 2;
  v11[4] = &type metadata for String;
  v13._countAndFlagsBits = a2;
  v13._object = a3;
  DataFrame.validateColumnTypes(_:_:context:)(v13, v11, __PAIR128__(0xEA00000000006874, 0x6170206F65646956));
  result = v12;
  if (!v15)
  {
    v16 = swift_allocObject(v28._object, 40, 7);
    v17 = v16;
    v16[2] = 1;
    v16[3] = 2;
    v16[4] = &type metadata for String;
    v18._countAndFlagsBits = v28._countAndFlagsBits;
    v18._object = _;
    DataFrame.validateColumnTypes(_:_:context:)(v18, v16, __PAIR128__(0xE500000000000000, 0x6C6562614CLL));
    result = v17;
    if (!v19)
    {
      if (a7)
      {
        v20 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<String>);
        inited = swift_initStackObject(v20, v25);
        inited[2] = 1;
        inited[3] = 2;
        inited[4] = v29;
        inited[5] = a7;

        DataFrame.validateContainsColumns(_:context:)(inited, __PAIR128__(0xEA0000000000656DLL, 0x6974207472617453));
        if (v22)
        {
LABEL_8:
          swift_setDeallocating(inited);
          return specialized _ContiguousArrayStorage.__deallocating_deinit();
        }

        swift_setDeallocating(inited);
        result = specialized _ContiguousArrayStorage.__deallocating_deinit();
      }

      if (!a9)
      {
        return result;
      }

      v23 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<String>);
      inited = swift_initStackObject(v23, v24);
      inited[2] = 1;
      inited[3] = 2;
      inited[4] = a8;
      inited[5] = a9;

      DataFrame.validateContainsColumns(_:context:)(inited, __PAIR128__(0xE800000000000000, 0x656D697420646E45));
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t static _VideoUtilities.validateVideoInput(trainingData:videoColumn:labelColumn:startTimeColumn:endTimeColumn:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v34 = v9;
  v27 = a6;
  v28 = a5;
  v29 = a4;
  v11 = *a1;
  v37 = *(a1 + 8);
  v31 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<String>);
  inited = swift_initStackObject(v31, v21);
  inited[2] = 1;
  inited[3] = 2;
  v26 = a2;
  inited[4] = a2;
  inited[5] = a3;
  v30 = v11;
  v32 = v11;
  v33 = v37;

  v13 = v34;
  static _ValidationUtilities.validateTableFormat(table:context:columns:)(&v32, 0x7461506F65646976, 0xE900000000000068, inited);
  if (v13)
  {
    return inited;
  }

  v34 = a3;
  v32 = v30;
  v33 = v37;
  v14 = swift_initStackObject(v31, v22);
  v14[2] = 1;
  v14[3] = 2;
  v14[4] = v29;
  v14[5] = v28;

  static _ValidationUtilities.validateTableFormat(table:context:columns:)(&v32, 0x6C6562616CLL, 0xE500000000000000, v14);
  swift_setDeallocating(v14);
  specialized _ContiguousArrayStorage.__deallocating_deinit();
  swift_setDeallocating(inited);
  specialized _ContiguousArrayStorage.__deallocating_deinit();
  v32 = v30;
  v33 = v37;
  v16 = swift_initStackObject(v31, v23);
  v16[2] = 1;
  v16[3] = 2;
  v16[4] = v26;
  v16[5] = v34;
  v35 = 2;
  v36 = 2;

  static _ValidationUtilities.validateTableTypes(table:featureColumns:featureType:labelColumn:labelType:)(&v32, v16, &v35, v29, v28, &v36);
  v17 = v37;
  v18 = v30;
  swift_setDeallocating(v16);
  specialized _ContiguousArrayStorage.__deallocating_deinit();
  if (a7)
  {
    v34 = 0;
    v32 = v18;
    v33 = v17;
    v19 = swift_initStackObject(v31, v25);
    v19[2] = 1;
    v19[3] = 2;
    v19[4] = v27;
    v19[5] = a7;

    v20 = v34;
    static _ValidationUtilities.validateTableFormat(table:context:columns:)(&v32, 0xD000000000000011, (" a person from an observation." + 0x8000000000000000), v19);
    if (v20)
    {
LABEL_5:
      swift_setDeallocating(v19);
      return specialized _ContiguousArrayStorage.__deallocating_deinit();
    }

    swift_setDeallocating(v19);
    specialized _ContiguousArrayStorage.__deallocating_deinit();
    result = v30;
  }

  else
  {
    result = v18;
  }

  if (a9)
  {
    v32 = result;
    v33 = v17;
    v19 = swift_initStackObject(v31, v24);
    v19[2] = 1;
    v19[3] = 2;
    v19[4] = a8;
    v19[5] = a9;

    static _ValidationUtilities.validateTableFormat(table:context:columns:)(&v32, 0x656D697420646E65, 0xEF6E6D756C6F6320, v19);
    goto LABEL_5;
  }

  return result;
}

uint64_t static _VideoUtilities.renameVideoTableColumns(table:videoColumn:labelColumn:startTimeColumn:endTimeColumn:)(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, uint64_t a6, void *named, Swift::String a8)
{
  v34 = v8;
  v33._countAndFlagsBits = a6;
  v33._object = a5;
  v32 = a3;
  v10 = *a1;
  v31 = a1;
  v11 = *(a1 + 8);
  v28 = v10;
  v29 = v11;
  outlined copy of Result<_DataTable, Error>(v10, v11);
  v30._countAndFlagsBits = a2;
  v30._object = a4;
  static _VideoUtilities.validateVideoInput(trainingData:videoColumn:labelColumn:startTimeColumn:endTimeColumn:)(&v28, a2, v32, a4, v33._object, v33._countAndFlagsBits, named, a8._countAndFlagsBits, a8._object);
  result = outlined consume of Result<_DataTable, Error>(v10, v11);
  if (!v8)
  {
    countAndFlagsBits = v33._countAndFlagsBits;
    v34 = 0;
    object = v33._object;
    v15 = v31;
    if (named)
    {
      MLDataTable.willMutate()();
      v16._countAndFlagsBits = 0x7472617473;
      v17._countAndFlagsBits = countAndFlagsBits;
      v17._object = named;
      v16._object = 0xE500000000000000;
      MLDataTable.renameImpl(named:to:)(v17, v16);
      if (!*(v15 + 8))
      {
        v18 = *v15;
        outlined copy of Result<_DataTable, Error>(*v15, 0);
        _DataTable.columnNamesDidChange()();
        outlined consume of Result<_DataTable, Error>(v18, 0);
      }
    }

    v19 = v30._object;
    if (a8._object)
    {
      MLDataTable.willMutate()();
      v20._object = 0xE300000000000000;
      v20._countAndFlagsBits = 6581861;
      MLDataTable.renameImpl(named:to:)(a8, v20);
      if (!*(v15 + 8))
      {
        v21 = *v15;
        outlined copy of Result<_DataTable, Error>(*v15, 0);
        _DataTable.columnNamesDidChange()();
        outlined consume of Result<_DataTable, Error>(v21, 0);
      }
    }

    MLDataTable.willMutate()();
    v22._countAndFlagsBits = 0x7461506F65646976;
    v22._object = 0xE900000000000068;
    v23._countAndFlagsBits = v30._countAndFlagsBits;
    v23._object = v32;
    MLDataTable.renameImpl(named:to:)(v23, v22);
    if (!*(v15 + 8))
    {
      v24 = *v15;
      outlined copy of Result<_DataTable, Error>(*v15, 0);
      _DataTable.columnNamesDidChange()();
      outlined consume of Result<_DataTable, Error>(v24, 0);
    }

    MLDataTable.willMutate()();
    v25._countAndFlagsBits = 0x6C6562616CLL;
    v26._countAndFlagsBits = v19;
    v26._object = object;
    v25._object = 0xE500000000000000;
    result = MLDataTable.renameImpl(named:to:)(v26, v25);
    if (!*(v15 + 8))
    {
      v27 = *v15;
      outlined copy of Result<_DataTable, Error>(*v15, 0);
      _DataTable.columnNamesDidChange()();
      return outlined consume of Result<_DataTable, Error>(v27, 0);
    }
  }

  return result;
}

void *static _VideoUtilities.getVideoURLsAndAnnotations(from:)(uint64_t a1, __m128 a2)
{
  *&v167 = v3;
  *v175 = a1;
  v161 = v2;
  *v171 = type metadata accessor for DataFrame(0);
  v177._countAndFlagsBits = *(*v171 - 8);
  v4 = *(v177._countAndFlagsBits + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  ML14_UntypedColumnC_s5Error_pTt1g5 = __src;
  v7 = alloca(v4);
  v8 = alloca(v4);
  v170._object = __src;
  v9 = type metadata accessor for UTType(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  *v169 = __src;
  v14 = alloca(v11);
  v15 = alloca(v11);
  v170._countAndFlagsBits = __src;
  v174._object = type metadata accessor for URL(0);
  named = *(v174._object - 1);
  v16 = *(named + 64);
  v17 = alloca(v16);
  v18 = alloca(v16);
  v165 = __src;
  v19 = alloca(v16);
  v20 = alloca(v16);
  v168 = __src;
  v21 = alloca(v16);
  v22 = alloca(v16);
  v166 = __src;
  v23 = alloca(v16);
  v24 = alloca(v16);
  *v172 = __src;
  v25 = alloca(v16);
  v26 = alloca(v16);
  v174._countAndFlagsBits = __src;
  v27 = alloca(v16);
  v28 = alloca(v16);
  *v173 = __src;
  v29 = type metadata accessor for MLHandActionClassifier.DataSource(0);
  v30 = *(*(v29 - 8) + 64);
  v31 = alloca(v30);
  v32 = alloca(v30);
  outlined init with copy of MLHandActionClassifier.DataSource(*v175, __src);
  switch(swift_getEnumCaseMultiPayload(__src, v29))
  {
    case 0u:
      v33 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
      v34 = __src + v33[12];
      v35 = v33[16];
      v174._countAndFlagsBits = *(__src + v35);
      *v175 = *(__src + v35 + 8);
      v36 = v33[20];
      *v173 = *(__src + v36);
      v177._countAndFlagsBits = *(__src + v36 + 8);
      v37 = v33[24];
      *v169 = *(__src + v37);
      v170._object = *(__src + v37 + 8);
      v38 = v33[28];
      v170._countAndFlagsBits = *(__src + v38);
      *v171 = *(__src + v38 + 8);
      v39 = *(named + 32);
      object = v174._object;
      v39(*v172, __src, v174._object);
      v41 = v166;
      v39(v166, v34, object);
      v42 = v168;
      (*(named + 16))(v168, v41, object);
      LOBYTE(__src[0]) = 1;
      *(&__src[0] + 1) = 44;
      __src[1] = 0xE100000000000000;
      *&__src[2] = 0xE000000000000000;
      *(&__src[2] + 1) = 92;
      *&__src[3] = 0xE100000000000000;
      BYTE8(__src[3]) = 1;
      *&__src[4] = 34;
      *(&__src[4] + 1) = 0xE100000000000000;
      LOBYTE(__src[5]) = 1;
      *(&__src[5] + 1) = &outlined read-only object #0 of default argument 1 of MLDataTable.init(contentsOf:options:);
      *&__src[6] = 10;
      *(&__src[6] + 1) = 0xE100000000000000;
      __src[7] = 0;
      LOBYTE(__src[8]) = 1;
      *(&__src[8] + 1) = 0;
      LOBYTE(__dst[0]) = 1;
      LOBYTE(v143) = 1;
      v144 = 44;
      v145 = 0xE100000000000000;
      v146 = 0;
      v147 = 0xE000000000000000;
      v148 = 92;
      v149 = 0xE100000000000000;
      v150 = 1;
      v151 = 34;
      v152 = 0xE100000000000000;
      v153 = 1;
      v154 = &outlined read-only object #0 of default argument 1 of MLDataTable.init(contentsOf:options:);
      v155 = 10;
      v156 = 0xE100000000000000;
      v157 = 0;
      v158 = 1;
      v159 = 0;
      outlined retain of MLDataTable.ParsingOptions(__src);
      outlined release of MLDataTable.ParsingOptions(&v143);
      memcpy(__dst, __src, sizeof(__dst));
      v43 = v167;
      MLDataTable.init(contentsOf:options:)(v42, __dst);
      if (v43)
      {
        v44 = *(named + 8);
        v45 = v174._object;
        v44(v166, v174._object);
        v177._countAndFlagsBits;
        v175[0];
        v170._object;
        v171[0];
        return (v44)(*v172, v45);
      }

      *&v167 = 0;
      v177._object = v162;
      LOBYTE(v178) = v163;
      v89._countAndFlagsBits = v174._countAndFlagsBits;
      v90 = *v175;
      v89._object = *v175;
      MLDataTable.subscript.getter(v89);
      v91 = *&__dst[0];
      v92 = BYTE8(__dst[0]);
      if (BYTE8(__dst[0]) || (outlined copy of Result<_DataTable, Error>(*&__dst[0], 0), v168 = v91, _UntypedColumn.type.getter(), v91 = v168, outlined consume of Result<_DataTable, Error>(v168, 0), v162 != 2))
      {
        outlined consume of Result<_DataTable, Error>(v91, v92);
        v177._countAndFlagsBits;
        v170._object;
        v171[0];
        *&__dst[0] = 0;
        *(&__dst[0] + 1) = 0xE000000000000000;
        _StringGuts.grow(_:)(26);
        SBYTE8(__dst[0]);
        *&__dst[0] = 0x206E6D756C6F43;
        *(&__dst[0] + 1) = 0xE700000000000000;
        v112._countAndFlagsBits = v174._countAndFlagsBits;
        v112._object = v90;
        String.append(_:)(v112);
        v90;
        v112._countAndFlagsBits = 0xD000000000000011;
        String.append(_:)(v112);
        v167 = __dst[0];
        v113 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
        swift_allocError(&type metadata for MLCreateError, v113, 0, 0);
        *v114 = v167;
        *(v114 + 16) = 0;
        *(v114 + 32) = 0;
        *(v114 + 48) = 0;
        swift_willThrow();
        v115 = *(named + 8);
        v116 = v166;
        v117 = v174._object;
LABEL_29:
        v115(v116, v117);
        v115(*v172, v117);
        return outlined consume of Result<_DataTable, Error>(v177._object, v178);
      }

      outlined copy of Result<_DataTable, Error>(v91, 0);
      _UntypedColumn.valueAtIndex(index:)(0, 0.0);
      v94 = *(&__dst[0] + 1);
      v93 = *&__dst[0];
      if (LOBYTE(__dst[1]) != 2)
      {
        outlined consume of MLDataValue(*&__dst[0], *(&__dst[0] + 1), __dst[1]);
        v93 = 0;
        v94 = 0xE000000000000000;
      }

      outlined consume of Result<_DataTable, Error>(v168, 0);
      *&__dst[0] = v93;
      *(&__dst[0] + 1) = v94;
      v95 = String.init<A>(_:)(__dst, &type metadata for String, &protocol witness table for String, &protocol witness table for String);
      v97 = v96;
      URL.init(fileURLWithPath:)(v95, v96);
      v97;
      v98 = objc_opt_self(NSFileManager);
      v99 = [v98 defaultManager];
      v100 = v99;
      URL.path.getter(v99);
      v102 = v101;
      v103 = String._bridgeToObjectiveC()();
      v102;
      v104 = [v100 fileExistsAtPath:v103];

      if (v104)
      {
        v105 = v167;
        countAndFlagsBits = v177._countAndFlagsBits;
        v107 = v174._countAndFlagsBits;
      }

      else
      {
        v121 = v168;
        outlined copy of Result<_DataTable, Error>(v168, 0);
        MLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSS_Tt0B5 = _sSa8CreateMLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSS_Tt0B5(v121, 0, 0.0);
        v123 = alloca(24);
        v124 = alloca(32);
        *&__src[1] = *v172;
        v125 = v167;
        v126 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySSG_SSs5NeverOTg5(partial apply for closure #1 in static _VideoUtilities.getVideoURLsAndAnnotations(from:), __src, MLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSS_Tt0B5);
        *&v167 = v125;
        MLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSS_Tt0B5;
        *&__dst[0] = v126;
        v127 = alloca(24);
        v128 = alloca(24);
        *&__src[1] = __dst;
        ML14_UntypedColumnC_s5Error_pTt1g5 = _ss6ResultOsRi_zrlE8catchingAByxq_Gxyq_YKXE_tcfC8CreateML14_UntypedColumnC_s5Error_pTt1g5(partial apply for specialized closure #1 in MLUntypedColumn.init<A>(_:));
        v130 = v129;
        __dst[0];
        v131 = *v175;

        MLDataTable.willMutate()();
        *&__dst[0] = ML14_UntypedColumnC_s5Error_pTt1g5;
        BYTE8(__dst[0]) = v130 & 1;
        v107 = v174._countAndFlagsBits;
        MLDataTable.setColumnImpl(newColumn:named:)(__dst, v174._countAndFlagsBits, v131);
        v131;
        outlined consume of Result<_DataTable, Error>(*&__dst[0], SBYTE8(__dst[0]));
        if (!v178)
        {
          v132 = v177._object;
          outlined copy of Result<_DataTable, Error>(v177._object, 0);
          _DataTable.columnNamesDidChange()();
          outlined consume of Result<_DataTable, Error>(v132, 0);
        }

        v105 = v167;
        countAndFlagsBits = v177._countAndFlagsBits;
      }

      v133 = v107;
      v134 = v175[0];
      v135 = v171[0];
      v141._object = *v171;
      v141._countAndFlagsBits = v170._countAndFlagsBits;
      v136 = v170._object;
      static _VideoUtilities.renameVideoTableColumns(table:videoColumn:labelColumn:startTimeColumn:endTimeColumn:)(&v177._object, v133, *v175, *v173, countAndFlagsBits, *v169, v170._object, v141);
      if (v105)
      {
        v134;
        v177._countAndFlagsBits;
        v136;
        v135;
        outlined consume of Result<_DataTable, Error>(v168, 0);
        v115 = *(named + 8);
        v117 = v174._object;
        v115(v165, v174._object);
        v116 = v166;
        goto LABEL_29;
      }

      v134;
      v177._countAndFlagsBits;
      v136;
      v135;
      outlined consume of Result<_DataTable, Error>(v168, 0);
      v137 = *(named + 8);
      v138 = v174._object;
      v137(v165, v174._object);
      v137(v166, v138);
      v137(*v172, v138);
LABEL_15:
      result = v177._object;
      v76 = v178;
      v77 = v161;
      *v161 = v177._object;
      *(v77 + 8) = v76;
      return result;
    case 1u:
      v177._countAndFlagsBits = v9;
      *v175 = v10;
      v64 = v174._countAndFlagsBits;
      v55 = v174._object;
      v56 = named;
      (*(named + 32))(v174._countAndFlagsBits, __src, v174._object);
      v65 = *v169;
      static UTType.movie.getter();
      v66 = v167;
      v67 = static _FileUtilities.collectFilesLabeledByDirectoryName(at:type:)(v64, v65);
      if (v66)
      {
        (*(*v175 + 8))(*v169, v177._countAndFlagsBits);
        v60 = v174._countAndFlagsBits;
        return (*(v56 + 8))(v60, v55);
      }

      v108 = v67;
      (*(*v175 + 8))(*v169, v177._countAndFlagsBits);
      static _VideoUtilities.generateVideoTable(_:)(v108);
      v108;
      v119 = v143;
      LOBYTE(v108) = v144;
      v177._object = v143;
      LOBYTE(v178) = v144 & 1;
      LOBYTE(v144) = v144 & 1;
      outlined copy of Result<_DataTable, Error>(v143, v108);
      static _VideoUtilities.validateVideoInput(trainingData:videoColumn:labelColumn:startTimeColumn:endTimeColumn:)(&v143, 0x7461506F65646976, 0xE900000000000068, 0x6C6562616CLL, 0xE500000000000000, 0, 0, 0, 0);
      outlined consume of Result<_DataTable, Error>(v119, v108);
      v120 = v174._countAndFlagsBits;
      goto LABEL_31;
    case 2u:
      v177._countAndFlagsBits = v9;
      *v175 = v10;
      v54 = *v173;
      v55 = v174._object;
      v56 = named;
      (*(named + 32))(*v173, __src, v174._object);
      v57 = v170._countAndFlagsBits;
      static UTType.movie.getter();
      v58 = v167;
      v59 = static _FileUtilities.collectFilesLabeledByFileName(at:type:)(v54, v57);
      if (v58)
      {
        (*(*v175 + 8))(v170._countAndFlagsBits, v177._countAndFlagsBits);
        v60 = *v173;
        return (*(v56 + 8))(v60, v55);
      }

      v88 = v59;
      (*(*v175 + 8))(v170._countAndFlagsBits, v177._countAndFlagsBits);
      static _VideoUtilities.generateVideoTable(_:)(v88);
      v88;
      v118 = v143;
      LOBYTE(v88) = v144;
      v177._object = v143;
      LOBYTE(v178) = v144 & 1;
      LOBYTE(v144) = v144 & 1;
      outlined copy of Result<_DataTable, Error>(v143, v88);
      static _VideoUtilities.validateVideoInput(trainingData:videoColumn:labelColumn:startTimeColumn:endTimeColumn:)(&v143, 0x7461506F65646976, 0xE900000000000068, 0x6C6562616CLL, 0xE500000000000000, 0, 0, 0, 0);
      outlined consume of Result<_DataTable, Error>(v118, v88);
      v120 = *v173;
LABEL_31:
      (*(named + 8))(v120, v174._object);
      goto LABEL_15;
    case 3u:
      v61 = BYTE8(__src[1]);
      v62 = BYTE8(__src[2]);
      v63 = BYTE8(__src[3]);
      outlined consume of Result<_DataTable, Error>(*&__src[0], SBYTE8(__src[0]));
      v63;
      v62;
      v61;
      goto LABEL_13;
    case 4u:
      v47 = *(&__src[1] + 1);
      v174._object = *&__src[1];
      v48 = *(&__src[2] + 1);
      *v171 = *&__src[2];
      v170._object = *(&__src[3] + 1);
      *v172 = *&__src[3];
      v49 = *(&__src[4] + 1);
      v177._countAndFlagsBits = *&__src[4];
      v177._object = *&__src[0];
      LOBYTE(v178) = BYTE8(__src[0]) & 1;
      *v175 = *&__src[0];
      LODWORD(named) = DWORD2(__src[0]);
      outlined copy of Result<_DataTable, Error>(*&__src[0], SBYTE8(__src[0]));
      v50 = v174._object;
      v174._object = v48;
      v51 = v48;
      v52 = v167;
      v139._object = v49;
      v139._countAndFlagsBits = v177._countAndFlagsBits;
      v53 = v170._object;
      static _VideoUtilities.renameVideoTableColumns(table:videoColumn:labelColumn:startTimeColumn:endTimeColumn:)(&v177._object, v50, v47, *v171, v51, *v172, v170._object, v139);
      if (!v52)
      {
        v47;
        v174._object;
        v49;
        v53;
        outlined consume of Result<_DataTable, Error>(*v175, named);
        goto LABEL_15;
      }

      v47;
      v174._object;
      v49;
      v53;
      outlined consume of Result<_DataTable, Error>(*v175, named);
      return outlined consume of Result<_DataTable, Error>(v177._object, v178);
    case 5u:
      v68 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
      *(__src + v68[12] + 8);
      *(__src + v68[16] + 8);
      *(__src + v68[20] + 8);
      (*(v177._countAndFlagsBits + 8))(__src, *v171);
LABEL_13:
      empty = tc_v1_sframe_create_empty(0);
      if (!empty)
      {
        BUG();
      }

      v70 = empty;
      v71 = type metadata accessor for CMLTable();
      v72 = swift_allocObject(v71, 24, 7);
      *(v72 + 16) = v70;
      v73 = type metadata accessor for _DataTable();
      swift_allocObject(v73, 40, 7);
      v177._object = _DataTable.init(impl:)(v72);
      LOBYTE(v178) = 0;
      v74 = static os_log_type_t.info.getter(v72);
      v75._countAndFlagsBits = 0xD0000000000000A7;
      v75._object = "array has unexpected dimension." + 0x8000000000000000;
      log(_:type:)(v75, v74);
      goto LABEL_15;
    case 6u:
      v78 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
      v79 = v78[12];
      v174._countAndFlagsBits = *(__src + v79);
      *v175 = *(__src + v79 + 8);
      v80 = v78[16];
      *v173 = *(__src + v80);
      *v172 = *(__src + v80 + 8);
      v81 = v78[20];
      *v169 = *(__src + v81);
      named = *(__src + v81 + 8);
      v82 = v78[24];
      v170._countAndFlagsBits = *(__src + v82);
      v174._object = *(__src + v82 + 8);
      v83 = v170._object;
      v84 = *v171;
      v85 = v177._countAndFlagsBits;
      (*(v177._countAndFlagsBits + 32))(v170._object, __src, *v171);
      v86 = ML14_UntypedColumnC_s5Error_pTt1g5;
      *a2.i64 = (*(v85 + 16))(ML14_UntypedColumnC_s5Error_pTt1g5, v83, v84);
      v87 = v167;
      MLDataTable.init(_:convertArraysToShapedArrays:)(v86, 0, a2);
      if (v87)
      {
        (*(v177._countAndFlagsBits + 8))(v170._object, *v171);
        v172[0];
        v175[0];
        named;
        return v174._object;
      }

      v177._object = v143;
      LOBYTE(v178) = v144;
      v109 = v172[0];
      v110 = v174._object;
      v140._object = v174._object;
      v140._countAndFlagsBits = v170._countAndFlagsBits;
      v111 = named;
      static _VideoUtilities.renameVideoTableColumns(table:videoColumn:labelColumn:startTimeColumn:endTimeColumn:)(&v177._object, v174._countAndFlagsBits, *v175, *v173, *v172, *v169, named, v140);
      (*(v177._countAndFlagsBits + 8))(v170._object, *v171);
      v175[0];
      v109;
      v110;
      v111;
      goto LABEL_15;
  }
}

uint64_t *closure #1 in static _VideoUtilities.getVideoURLsAndAnnotations(from:)(uint64_t *a1)
{
  v13 = v1;
  v3 = type metadata accessor for URL(0);
  v14 = *(v3 - 8);
  v4 = *(v14 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v7 = *a1;
  URL.appendingPathComponent(_:)(*a1, a1[1]);
  v8 = URL.path.getter(v7);
  v10 = v9;
  (*(v14 + 8))(&v12, v3);
  result = v13;
  *v13 = v8;
  result[1] = v10;
  return result;
}

void static _VideoUtilities.renameVideoColumns(dataFrame:videoColumn:labelColumn:startTimeColumn:endTimeColumn:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, uint64_t a6, void *_, uint64_t a8, void *a9)
{
  v12 = a9;
  v13._object = _;
  if (_)
  {
    v14._countAndFlagsBits = 0x7472617473;
    v13._countAndFlagsBits = a6;
    v14._object = 0xE500000000000000;
    DataFrame.renameColumn(_:to:)(v13, v14);
    v12 = a9;
  }

  if (v12)
  {
    v15._countAndFlagsBits = a8;
    v16._object = 0xE300000000000000;
    v16._countAndFlagsBits = 6581861;
    v15._object = v12;
    DataFrame.renameColumn(_:to:)(v15, v16);
  }

  v17._countAndFlagsBits = 0x7461506F65646976;
  v17._object = 0xE900000000000068;
  v18._countAndFlagsBits = a2;
  v18._object = a3;
  DataFrame.renameColumn(_:to:)(v18, v17);
  v19._countAndFlagsBits = 0x6C6562616CLL;
  v18._countAndFlagsBits = a4;
  v18._object = a5;
  v19._object = 0xE500000000000000;
  DataFrame.renameColumn(_:to:)(v18, v19);
}

void static _VideoUtilities.renameFeatureColumns(dataFrame:sessionIdColumn:featureColumn:labelColumn:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, void *a6, void *a7)
{
  v18 = v7;
  v21._object = a6;
  v23._countAndFlagsBits = a4;
  v22 = a1;
  v10 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<String>);
  inited = swift_initStackObject(v10, v17);
  inited[2] = 3;
  inited[3] = 6;
  v21._countAndFlagsBits = a2;
  inited[4] = a2;
  inited[5] = a3;
  inited[6] = v23._countAndFlagsBits;
  inited[7] = a5;
  inited[8] = v21._object;
  inited[9] = a7;
  _ = a3;

  v19 = a5;

  DataFrame.validateContainsColumns(_:context:)(inited, __PAIR128__(0xEC00000061746164, 0x2065727574616546));
  swift_setDeallocating(inited);
  specialized _ContiguousArrayStorage.__deallocating_deinit();
  if (!v12)
  {
    v13._countAndFlagsBits = 0x5F6E6F6973736573;
    v13._object = 0xEA00000000006469;
    v14._countAndFlagsBits = v21._countAndFlagsBits;
    v14._object = _;
    DataFrame.renameColumn(_:to:)(v14, v13);
    v15._countAndFlagsBits = 0x746E696F7079656BLL;
    v15._object = 0xE900000000000073;
    v14._countAndFlagsBits = v23._countAndFlagsBits;
    v14._object = v19;
    DataFrame.renameColumn(_:to:)(v14, v15);
    v16._countAndFlagsBits = 0x6C6562616CLL;
    v16._object = 0xE500000000000000;
    v14._countAndFlagsBits = v21._object;
    v14._object = a7;
    DataFrame.renameColumn(_:to:)(v14, v16);
  }
}

void *static _VideoUtilities.videoURLsPerClass(from:)(void *a1, __m128 a2)
{
  v3 = a1;
  v43 = type metadata accessor for URL(0);
  v44 = *(v43 - 8);
  v4 = *(v44 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v53 = &v41;
  v7 = type metadata accessor for MLHandActionClassifier.DataSource(0);
  v8 = *(*(v7 - 8) + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  outlined init with copy of MLHandActionClassifier.DataSource(a1, &v41);
  if (swift_getEnumCaseMultiPayload(&v41, v7) == 3)
  {
    v11 = v44;
    v12 = v46;
    v13 = v48;
    outlined consume of Result<_DataTable, Error>(v41, v42);
    v13;
    v12;
    v11;
    return _swiftEmptyDictionarySingleton;
  }

  else
  {
    static _VideoUtilities.getVideoURLsAndAnnotations(from:)(a1, a2);
    if (v2)
    {
      outlined destroy of MLHandActionClassifier.DataSource(&v41);
    }

    else
    {
      v55 = &v41;
      v56 = 0;
      v14 = v59;
      v15 = v60;
      outlined copy of Result<_DataTable, Error>(v59, v60);
      v16._countAndFlagsBits = 0x6C6562616CLL;
      v16._object = 0xE500000000000000;
      specialized MLDataTable.subscript.getter(v16, v14, v15);
      v58 = v14;
      outlined consume of Result<_DataTable, Error>(v14, v15);
      v17 = v64;
      v18 = v65;
      specialized MLDataColumn.dropDuplicates()(v64, v65);
      outlined consume of Result<_DataTable, Error>(v17, v18);
      MLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSS_Tt0B5 = _sSa8CreateMLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSS_Tt0B5(v59, v60, *a2.i64);
      v20 = MLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSS_Tt0B5[2];
      v63 = v15;
      v50 = v20;
      if (v20)
      {
        v52 = MLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSS_Tt0B5 + 4;
        v3 = _swiftEmptyDictionarySingleton;
        v21 = 0;
        v51 = MLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSS_Tt0B5;
        do
        {
          if (v21 >= MLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSS_Tt0B5[2])
          {
            BUG();
          }

          v45 = v3;
          v46 = v21;
          v54 = v52[2 * v21];
          v22 = v52[2 * v21 + 1];
          v59 = v58;
          v23 = v63;
          LOBYTE(v60) = v63;
          outlined copy of Result<_DataTable, Error>(v58, v63);

          v24._countAndFlagsBits = 0x6C6562616CLL;
          v24._object = 0xE500000000000000;
          MLDataTable.subscript.getter(v24);
          outlined consume of Result<_DataTable, Error>(v59, v60);
          v68 = v66;
          LOBYTE(v69) = v67;
          v61 = &type metadata for String;
          v62 = &protocol witness table for String;
          v59 = v54;
          v60 = v22;
          v47 = v22;

          static MLUntypedColumn.== infix(_:_:)(&v68, &v59);
          outlined consume of Result<_DataTable, Error>(v68, v69);
          __swift_destroy_boxed_opaque_existential_1Tm(&v59);
          v66 = v58;
          LOBYTE(v67) = v23;
          v68 = v64;
          LOBYTE(v69) = v65;
          outlined copy of Result<_DataTable, Error>(v58, v23);
          MLDataTable.subscript.getter(&v68);
          outlined consume of Result<_DataTable, Error>(v68, v69);
          outlined consume of Result<_DataTable, Error>(v66, v67);
          v25 = v59;
          v26 = v60;
          outlined copy of Result<_DataTable, Error>(v59, v60);
          v24._countAndFlagsBits = 0x7461506F65646976;
          v24._object = 0xE900000000000068;
          specialized MLDataTable.subscript.getter(v24, v25, v26);
          v48 = v25;
          v57 = v26;
          outlined consume of Result<_DataTable, Error>(v25, v26);
          v27 = v64;
          LOBYTE(v26) = v65;
          specialized MLDataColumn.dropDuplicates()(v64, v65);
          outlined consume of Result<_DataTable, Error>(v27, v26);
          v28 = _sSa8CreateMLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSS_Tt0B5(v59, v60, *a2.i64);
          v29 = v28;
          v30 = v28[2];
          if (v30)
          {
            v59 = _swiftEmptyArrayStorage;
            v42 = v30;
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v30, 0);
            v31 = v59;
            v49 = v29;
            v32 = v29 + 5;
            do
            {
              v41 = v31;
              v33 = *(v32 - 1);
              v34 = *v32;

              v31 = v41;
              URL.init(fileURLWithPath:)(v33, v34);
              v34;
              v59 = v31;
              v35 = v31[2];
              if (v31[3] >> 1 <= v35)
              {
                specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v31[3] >= 2uLL, v35 + 1, 1);
                v31 = v59;
              }

              v31[2] = v35 + 1;
              (*(v44 + 32))(v31 + ((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * v35, v53, v43);
              v32 += 2;
              --v42;
            }

            while (v42);
            v49;
          }

          else
          {
            v28;
            v31 = _swiftEmptyArrayStorage;
          }

          v36 = v46 + 1;
          v37 = v45;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v45);
          v59 = v37;
          LOBYTE(v37) = v47;
          specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v31, v54, v47, isUniquelyReferenced_nonNull_native);
          v21 = v36;
          v37;
          outlined consume of Result<_DataTable, Error>(v48, v57);
          v3 = v59;
          v39 = v55;
          MLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSS_Tt0B5 = v51;
        }

        while (v21 != v50);
        v51;
      }

      else
      {
        MLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSS_Tt0B5;
        v3 = _swiftEmptyDictionarySingleton;
        v39 = v55;
      }

      outlined consume of Result<_DataTable, Error>(v58, v63);
      outlined destroy of MLHandActionClassifier.DataSource(v39);
    }
  }

  return v3;
}

char *static _VideoUtilities.keypointsToMultiArray(_:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, __m128d a6)
{
  v7 = a1;
  if (specialized Array._getCount()(a1, a2, a3, a4) <= 0)
  {
    v33 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)(3);
    v18 = objc_allocWithZone(NSNumber);
    [v18 initWithInteger:1];
    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()(v18);
    v19 = _swiftEmptyArrayStorage[2];
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)(v19);
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)(v19);
    specialized ContiguousArray._endMutation()(v19);
    v20 = objc_allocWithZone(NSNumber);
    [v20 initWithInteger:3];
    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()(v20);
    v21 = _swiftEmptyArrayStorage[2];
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)(v21);
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)(v21);
    specialized ContiguousArray._endMutation()(v21);
    v22 = objc_allocWithZone(NSNumber);
    [v22 initWithInteger:18];
    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()(v22);
    v23 = _swiftEmptyArrayStorage[2];
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)(v23);
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)(v23);
    specialized ContiguousArray._endMutation()(v23);
    v7 = _swiftEmptyArrayStorage;
    objc_allocWithZone(MLMultiArray);
    v24 = @nonobjc MLMultiArray.init(shape:dataType:)(_swiftEmptyArrayStorage, 65600);
    if (!v6)
    {
      v7 = v24;
      v25 = UnsafeMutableBufferPointer.init(_:)(v7, &type metadata for Double);
      specialized UnsafeMutableBufferPointer.initialize(repeating:)(v25, v28, 0.0);
    }
  }

  else
  {
    v8 = static _VideoUtilities.pickSinglePerson(_:)(a1, a5, a6);
    if (!v6)
    {
      if (v8)
      {
        v33 = 0;
        v9 = v8;
        v10 = [v8 keypointsMultiArrayAndReturnError:&v33];
        v11 = v10;
        v12 = v33;
        if (v11)
        {
          v7 = v11;
          v32 = v9;
          v33;
          v13 = [v7 shape];
          v14 = v13;
          v15 = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSNumber, NSNumber_ptr);
          v16 = static Array._unconditionallyBridgeFromObjectiveC(_:)(v14, v15);

          ML15_VideoUtilitiesV21keypointsToMultiArrayySo07MLMultiH0CSaySo29VNRecognizedPointsObservationCGKFZSiSo8D54Ccfu_33_5bdac5b40c7411f20a64c1277f8fd44fAKSiTf3nnnpk_nTf1cn_nTm = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySo8NSNumberCG_Sis5NeverOTg50113_s8CreateML15_VideoUtilitiesV21keypointsToMultiArrayySo07MLMultiH0CSaySo29VNRecognizedPointsObservationCGKFZSiSo8D54Ccfu_33_5bdac5b40c7411f20a64c1277f8fd44fAKSiTf3nnnpk_nTf1cn_nTm(v16);
          v16;
          LOBYTE(v16) = _sSasSQRzlE2eeoiySbSayxG_ABtFZSi_Tt1g5(ML15_VideoUtilitiesV21keypointsToMultiArrayySo07MLMultiH0CSaySo29VNRecognizedPointsObservationCGKFZSiSo8D54Ccfu_33_5bdac5b40c7411f20a64c1277f8fd44fAKSiTf3nnnpk_nTf1cn_nTm, &outlined read-only object #0 of static _VideoUtilities.keypointsToMultiArray(_:));
          ML15_VideoUtilitiesV21keypointsToMultiArrayySo07MLMultiH0CSaySo29VNRecognizedPointsObservationCGKFZSiSo8D54Ccfu_33_5bdac5b40c7411f20a64c1277f8fd44fAKSiTf3nnnpk_nTf1cn_nTm;
          if (v16)
          {
          }

          else
          {
            v29 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
            swift_allocError(&type metadata for MLCreateError, v29, 0, 0);
            *v30 = 0xD00000000000002FLL;
            *(v30 + 8) = " a hand from an observation." + 0x8000000000000000;
            *(v30 + 16) = 0;
            *(v30 + 32) = 0;
            *(v30 + 48) = 0;
            swift_willThrow();
          }
        }

        else
        {
          v7 = v33;
          _convertNSErrorToError(_:)(v12);

          swift_willThrow();
        }
      }

      else
      {
        v7 = "est for current frame from " + 0x8000000000000000;
        v26 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
        swift_allocError(&type metadata for MLCreateError, v26, 0, 0);
        *v27 = 0xD00000000000002ELL;
        *(v27 + 8) = "est for current frame from " + 0x8000000000000000;
        *(v27 + 16) = 0;
        *(v27 + 32) = 0;
        *(v27 + 48) = 0;
        swift_willThrow();
      }
    }
  }

  return v7;
}

void specialized UnsafeMutableBufferPointer.initialize(repeating:)(uint64_t a1, uint64_t a2, double a3)
{
  if (a1)
  {
    if (a2 < 0)
    {
      BUG();
    }

    if (a2)
    {
      v3 = _mm_cvtepi8_epi64(256);
      v4 = 0;
      si128 = _mm_load_si128(&xmmword_33D700);
      v6 = _mm_xor_si128(_mm_shuffle_epi32((a2 - 1), 68), si128);
      v7 = _mm_cvtepi8_epi64(514);
      do
      {
        v8 = _mm_xor_si128(v3, si128);
        v9 = _mm_cmpgt_epi32(v8, v6);
        v10 = _mm_or_si128(_mm_shuffle_epi32(v9, 245), _mm_and_si128(_mm_shuffle_epi32(_mm_cmpeq_epi32(v8, v6), 245), v9));
        if (~_mm_cvtsi128_si32(v10))
        {
          *(a1 + 8 * v4) = a3;
        }

        if (_mm_extract_epi8(_mm_xor_si128(v10, -1), 8))
        {
          *(a1 + 8 * v4 + 8) = a3;
        }

        v4 += 2;
        v3 = _mm_add_epi64(v3, v7);
      }

      while (((a2 + 1) & 0xFFFFFFFFFFFFFFFELL) != v4);
    }
  }
}

char *static _VideoUtilities.handKeypointsToMultiArray(_:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, __m128d a6)
{
  v7 = a1;
  if (specialized Array._getCount()(a1, a2, a3, a4) <= 0)
  {
    v33 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)(3);
    v18 = objc_allocWithZone(NSNumber);
    [v18 initWithInteger:1];
    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()(v18);
    v19 = _swiftEmptyArrayStorage[2];
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)(v19);
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)(v19);
    specialized ContiguousArray._endMutation()(v19);
    v20 = objc_allocWithZone(NSNumber);
    [v20 initWithInteger:3];
    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()(v20);
    v21 = _swiftEmptyArrayStorage[2];
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)(v21);
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)(v21);
    specialized ContiguousArray._endMutation()(v21);
    v22 = objc_allocWithZone(NSNumber);
    [v22 initWithInteger:21];
    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()(v22);
    v23 = _swiftEmptyArrayStorage[2];
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)(v23);
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)(v23);
    specialized ContiguousArray._endMutation()(v23);
    v7 = _swiftEmptyArrayStorage;
    objc_allocWithZone(MLMultiArray);
    v24 = @nonobjc MLMultiArray.init(shape:dataType:)(_swiftEmptyArrayStorage, 65600);
    if (!v6)
    {
      v7 = v24;
      v25 = UnsafeMutableBufferPointer.init(_:)(v7, &type metadata for Double);
      specialized UnsafeMutableBufferPointer.initialize(repeating:)(v25, v28, 0.0);
    }
  }

  else
  {
    v8 = static _VideoUtilities.pickSinglePerson(_:)(a1, a5, a6);
    if (!v6)
    {
      if (v8)
      {
        v33 = 0;
        v9 = v8;
        v10 = [v8 keypointsMultiArrayAndReturnError:&v33];
        v11 = v10;
        v12 = v33;
        if (v11)
        {
          v7 = v11;
          v32 = v9;
          v33;
          v13 = [v7 shape];
          v14 = v13;
          v15 = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSNumber, NSNumber_ptr);
          v16 = static Array._unconditionallyBridgeFromObjectiveC(_:)(v14, v15);

          ML15_VideoUtilitiesV21keypointsToMultiArrayySo07MLMultiH0CSaySo29VNRecognizedPointsObservationCGKFZSiSo8D54Ccfu_33_5bdac5b40c7411f20a64c1277f8fd44fAKSiTf3nnnpk_nTf1cn_nTm = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySo8NSNumberCG_Sis5NeverOTg50113_s8CreateML15_VideoUtilitiesV21keypointsToMultiArrayySo07MLMultiH0CSaySo29VNRecognizedPointsObservationCGKFZSiSo8D54Ccfu_33_5bdac5b40c7411f20a64c1277f8fd44fAKSiTf3nnnpk_nTf1cn_nTm(v16);
          v16;
          LOBYTE(v16) = _sSasSQRzlE2eeoiySbSayxG_ABtFZSi_Tt1g5(ML15_VideoUtilitiesV21keypointsToMultiArrayySo07MLMultiH0CSaySo29VNRecognizedPointsObservationCGKFZSiSo8D54Ccfu_33_5bdac5b40c7411f20a64c1277f8fd44fAKSiTf3nnnpk_nTf1cn_nTm, &outlined read-only object #0 of static _VideoUtilities.handKeypointsToMultiArray(_:));
          ML15_VideoUtilitiesV21keypointsToMultiArrayySo07MLMultiH0CSaySo29VNRecognizedPointsObservationCGKFZSiSo8D54Ccfu_33_5bdac5b40c7411f20a64c1277f8fd44fAKSiTf3nnnpk_nTf1cn_nTm;
          if (v16)
          {
          }

          else
          {
            v29 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
            swift_allocError(&type metadata for MLCreateError, v29, 0, 0);
            *v30 = 0xD00000000000002FLL;
            *(v30 + 8) = " a hand from an observation." + 0x8000000000000000;
            *(v30 + 16) = 0;
            *(v30 + 32) = 0;
            *(v30 + 48) = 0;
            swift_willThrow();
          }
        }

        else
        {
          v7 = v33;
          _convertNSErrorToError(_:)(v12);

          swift_willThrow();
        }
      }

      else
      {
        v7 = "t keypoints to MlMultiArray." + 0x8000000000000000;
        v26 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
        swift_allocError(&type metadata for MLCreateError, v26, 0, 0);
        *v27 = 0xD00000000000002CLL;
        *(v27 + 8) = "t keypoints to MlMultiArray." + 0x8000000000000000;
        *(v27 + 16) = 0;
        *(v27 + 32) = 0;
        *(v27 + 48) = 0;
        swift_willThrow();
      }
    }
  }

  return v7;
}

void *static _VideoUtilities.pickSinglePerson(_:)(uint64_t a1, double a2, __m128d a3)
{
  if ((a1 & 0x4000000000000001) != 0)
  {
    v17 = a1 & 0xFFFFFFFFFFFFF8;
    if (a1)
    {
      v17 = a1;
    }

    v5 = _CocoaArrayWrapper.endIndex.getter(v17);
  }

  else
  {
    v5 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFF8));
  }

  if (!v5)
  {
    return 0;
  }

  v19 = v3;
  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (a1 & 0xC000000000000003) == 0, a1);
  v20 = a1;
  if ((a1 & 0xC000000000000003) != 0)
  {

    v7 = specialized _ArrayBuffer._getElementSlowPath(_:)(0);
  }

  else
  {
    v6 = *(a1 + 32);

    v7 = v6;
  }

  v8 = v7;
  if (v5 == 1)
  {
    LOBYTE(v9) = v20;
LABEL_16:
    v9;
  }

  else
  {
    v10 = 5;
    v9 = v20;
    v18 = v5;
    while (1)
    {
      v11 = v10 - 4;
      specialized Array._checkSubscript(_:wasNativeTypeChecked:)(v10 - 4, (v9 & 0xC000000000000003) == 0, v9);
      v12 = (v9 & 0xC000000000000003) != 0 ? specialized _ArrayBuffer._getElementSlowPath(_:)(v10 - 4) : *(v9 + 8 * v10);
      v13 = v12;
      v14 = __OFADD__(1, v11);
      v15 = v11 + 1;
      if (v14)
      {
        BUG();
      }

      static _VideoUtilities.measurePersonSize(_:)(v8, a2, a3);
      if (v19)
      {
        break;
      }

      static _VideoUtilities.measurePersonSize(_:)(v13, a2, a3);
      v19 = 0;

      ++v10;
      v9 = v20;
      if (v15 == v18)
      {
        goto LABEL_16;
      }
    }

    v20;
  }

  return v8;
}

uint64_t static _VideoUtilities.resetMultiArray(_:with:)(void *a1, double a2)
{
  v3 = a1;
  result = UnsafeMutableBufferPointer.init(_:)(v3, &type metadata for Double);
  if (v2 == 0 && result != 0)
  {
    if (v5 < 0)
    {
      BUG();
    }

    if (v5)
    {
      v7 = (v5 + 1) & 0xFFFFFFFFFFFFFFFELL;
      v8 = _mm_shuffle_epi32((v5 - 1), 68);
      v9 = _mm_cvtepi8_epi64(256);
      v10 = 0;
      si128 = _mm_load_si128(&xmmword_33D700);
      v12 = _mm_xor_si128(v8, si128);
      v13 = _mm_cvtepi8_epi64(514);
      do
      {
        v14 = _mm_xor_si128(v9, si128);
        v15 = _mm_cmpgt_epi32(v14, v12);
        v16 = _mm_or_si128(_mm_shuffle_epi32(v15, 245), _mm_and_si128(_mm_shuffle_epi32(_mm_cmpeq_epi32(v14, v12), 245), v15));
        if (~_mm_cvtsi128_si32(v16))
        {
          *(result + 8 * v10) = a2;
        }

        if (_mm_extract_epi8(_mm_xor_si128(v16, -1), 8))
        {
          *(result + 8 * v10 + 8) = a2;
        }

        v10 += 2;
        v9 = _mm_add_epi64(v9, v13);
      }

      while (v7 != v10);
    }
  }

  return result;
}

NSURL *VNVideoProcessor.__allocating_init(url:)(uint64_t a1)
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_allocWithZone(ObjCClassFromMetadata);
  URL._bridgeToObjectiveC()(v2);
  v4 = v3;
  v5 = [(NSURL *)v2 initWithURL:v3];

  v6 = type metadata accessor for URL(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return v5;
}

void closure #1 in static _VideoUtilities.getHumanKeyPointsFromVideoUrl(url:startTime:endTime:targetFrameRate:)(void *a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7, __m128d a8)
{
  v8 = (a3 + 16);
  if (a2)
  {
    swift_beginAccess(v8, &v39, 1, 0);
    v9 = *v8;
    *v8 = a2;
    swift_errorRetain(a2);
    v10 = v9;
LABEL_10:
    v10;
    return;
  }

  *&v40 = a6;
  v12 = outlined bridged method (pb) of @objc VNRequest.results.getter(a1);
  if (!v12 || (v15 = v12, v16 = specialized _arrayConditionalCast<A, B>(_:)(v12, 0, v13, v14), v15, !v16))
  {
    *&v39 = 0;
    *(&v39 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(62);
    v22._object = " frames with no person in view." + 0x8000000000000000;
    v22._countAndFlagsBits = 0xD00000000000003BLL;
    String.append(_:)(v22);
    v23 = type metadata accessor for URL(0);
    v24 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type URL and conformance URL, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v25 = dispatch thunk of CustomStringConvertible.description.getter(v23, v24);
    v27 = v26;
    v22._countAndFlagsBits = v25;
    v22._object = v26;
    String.append(_:)(v22);
    v27;
    v22._countAndFlagsBits = 46;
    v22._object = 0xE100000000000000;
    String.append(_:)(v22);
    v40 = v39;
    v28 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    v29 = swift_allocError(&type metadata for MLCreateError, v28, 0, 0);
    *v30 = v39;
    *(v30 + 16) = 0;
    *(v30 + 32) = 0;
    *(v30 + 48) = 0;
    swift_beginAccess(v8, &v39, 1, 0);
    v10 = *v8;
    *v8 = v29;
    goto LABEL_10;
  }

  if (!specialized Array._getCount()(v16, 0, v17, v18))
  {
    v21 = (a5 + 16);
    a2 = v37;
    swift_beginAccess(v21, v37, 1, 0);
    if (__OFADD__(1, *v21))
    {
      BUG();
    }

    ++*v21;
  }

  v31 = static _VideoUtilities.keypointsToMultiArray(_:)(v16, a2, v19, v20, a7, a8);
  v32 = v40 + 16;
  v16;
  v33 = v31;
  MLDataValue.MultiArrayType.init(_:)(v33);
  v34 = v38;
  swift_beginAccess(v32, &v39, 1, 0);
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  v35 = *(*v32 + 16);
  specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(v35);
  v36 = *v32;
  *(v36 + 16) = v35 + 1;
  *(v36 + 8 * v35 + 32) = v34;
  *v32 = v36;
}

void closure #1 in static _VideoUtilities.getHandKeyPointsFromVideoUrl(url:startTime:endTime:targetFrameRate:)(void *a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7, __m128d a8)
{
  v8 = (a3 + 16);
  if (a2)
  {
    swift_beginAccess(v8, &v39, 1, 0);
    v9 = *v8;
    *v8 = a2;
    swift_errorRetain(a2);
    v10 = v9;
LABEL_10:
    v10;
    return;
  }

  *&v40 = a6;
  v12 = outlined bridged method (pb) of @objc VNRequest.results.getter(a1);
  if (!v12 || (v15 = v12, v16 = specialized _arrayConditionalCast<A, B>(_:)(v12, 0, v13, v14), v15, !v16))
  {
    *&v39 = 0;
    *(&v39 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(62);
    v22._object = "v24@?0@VNRequest8@NSError16" + 0x8000000000000000;
    v22._countAndFlagsBits = 0xD00000000000003BLL;
    String.append(_:)(v22);
    v23 = type metadata accessor for URL(0);
    v24 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type URL and conformance URL, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v25 = dispatch thunk of CustomStringConvertible.description.getter(v23, v24);
    v27 = v26;
    v22._countAndFlagsBits = v25;
    v22._object = v26;
    String.append(_:)(v22);
    v27;
    v22._countAndFlagsBits = 46;
    v22._object = 0xE100000000000000;
    String.append(_:)(v22);
    v40 = v39;
    v28 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    v29 = swift_allocError(&type metadata for MLCreateError, v28, 0, 0);
    *v30 = v39;
    *(v30 + 16) = 0;
    *(v30 + 32) = 0;
    *(v30 + 48) = 0;
    swift_beginAccess(v8, &v39, 1, 0);
    v10 = *v8;
    *v8 = v29;
    goto LABEL_10;
  }

  if (!specialized Array._getCount()(v16, 0, v17, v18))
  {
    v21 = (a5 + 16);
    a2 = v37;
    swift_beginAccess(v21, v37, 1, 0);
    if (__OFADD__(1, *v21))
    {
      BUG();
    }

    ++*v21;
  }

  v31 = static _VideoUtilities.handKeypointsToMultiArray(_:)(v16, a2, v19, v20, a7, a8);
  v32 = v40 + 16;
  v16;
  v33 = v31;
  MLDataValue.MultiArrayType.init(_:)(v33);
  v34 = v38;
  swift_beginAccess(v32, &v39, 1, 0);
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  v35 = *(*v32 + 16);
  specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(v35);
  v36 = *v32;
  *(v36 + 16) = v35 + 1;
  *(v36 + 8 * v35 + 32) = v34;
  *v32 = v36;
}

NSURL *static _VideoUtilities.measurePersonSize(_:)(id a1, double a2, __m128d a3)
{
  v3 = String._bridgeToObjectiveC()();
  v26 = 0;
  v4 = [a1 recognizedPointsForGroupKey:v3 error:{&v26, a2, a3.f64[0]}];
  v5 = v4;

  v6 = v26;
  if (!v5)
  {
    v22 = v26;
    _convertNSErrorToError(_:)(v6);

    swift_willThrow();
    return __stack_chk_guard;
  }

  v7 = 0;
  v24 = type metadata accessor for VNRecognizedPointKey(0);
  v8 = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for VNRecognizedPoint, VNRecognizedPoint_ptr);
  v9 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type VNRecognizedPointKey and conformance VNRecognizedPointKey, type metadata accessor for VNRecognizedPointKey, &protocol conformance descriptor for VNRecognizedPointKey);
  v10 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)(v5, v24, v8, v9);
  v6;

  v11 = 1 << *(v10 + 32);
  v12 = ~(-1 << v11);
  if (v11 >= 64)
  {
    v12 = -1;
  }

  v13 = *(v10 + 64) & v12;
  v25 = (v11 + 63) >> 6;
  v14 = xmmword_343950;
  v15 = xmmword_343960;
  while (1)
  {
    v16 = v7;
    if (v13)
    {
LABEL_6:
      v7 = v16;
      goto LABEL_21;
    }

    v17 = v7 + 1;
    if (__OFADD__(1, v7))
    {
      BUG();
    }

    if (v17 >= v25)
    {
      goto LABEL_28;
    }

    v13 = *(v10 + 8 * v17 + 64);
    if (v13)
    {
      ++v7;
      goto LABEL_21;
    }

    v7 += 2;
    if (v16 + 2 >= v25)
    {
      goto LABEL_28;
    }

    v13 = *(v10 + 8 * v17 + 72);
    if (!v13)
    {
      v7 = v16 + 3;
      if (v16 + 3 >= v25)
      {
        goto LABEL_28;
      }

      v13 = *(v10 + 8 * v17 + 80);
      if (!v13)
      {
        v7 = v16 + 4;
        if (v16 + 4 >= v25)
        {
          goto LABEL_28;
        }

        v13 = *(v10 + 8 * v17 + 88);
        if (!v13)
        {
          v7 = v16 + 5;
          if (v16 + 5 >= v25)
          {
            goto LABEL_28;
          }

          v13 = *(v10 + 8 * v17 + 96);
          if (!v13)
          {
            v7 = v16 + 6;
            if (v16 + 6 >= v25)
            {
              goto LABEL_28;
            }

            v13 = *(v10 + 8 * v17 + 104);
            if (!v13)
            {
              break;
            }
          }
        }
      }
    }

LABEL_21:
    _BitScanForward64(&v18, v13);
    v13 &= v13 - 1;
    v19 = *(*(v10 + 56) + ((v7 << 9) | (8 * v18)));
    [v19 confidence];
    if (*v15.f64 > 0.2)
    {
      [v19 location];
      [v19 location];
      [v19 location];
      [v19 location];

      v14 = _mm_min_pd(v14, _mm_unpacklo_pd(a3, v15));
      v21 = _mm_unpacklo_pd(a3, v15);
      a3 = v15;
      v15 = _mm_blendv_pd(v21, v15, _mm_cmple_pd(v21, v15));
    }

    else
    {
    }
  }

  v20 = v16 + 7;
  while (v20 < v25)
  {
    v13 = *(v10 + 8 * v20++ + 64);
    if (v13)
    {
      v16 = v20 - 1;
      goto LABEL_6;
    }
  }

LABEL_28:

  return __stack_chk_guard;
}

uint64_t _sSdySdSgxcSyRzlufCSS_Tt0g5(unint64_t a1, uint64_t a2)
{
  v14[0] = 0;
  v12[2] = v14;
  if ((a2 & 0x1000000000000000) != 0 || !(a2 & 0x2000000000000000 | a1 & 0x1000000000000000))
  {
    _StringGuts._slowWithCString<A>(_:)(partial apply for closure #1 in closure #1 in Double.init<A>(_:), v12, a1, a2, &type metadata for Bool);
    a2;
    v7 = v13[0];
  }

  else
  {
    v3 = alloca(32);
    v4 = alloca(32);
    v12[0] = partial apply for closure #1 in closure #1 in Double.init<A>(_:);
    v12[1] = v12;
    if ((a2 & 0x2000000000000000) != 0)
    {
      v13[0] = a1;
      v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      v7 = (a1 > 0x20u || (v8 = 0x100003E01, !_bittest64(&v8, a1))) && (v9 = _swift_stdlib_strtod_clocale(v13, v14)) != 0 && *v9 == 0;
      a2;
    }

    else
    {
      if ((a1 & 0x1000000000000000) != 0)
      {
        v5 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
        v6 = a1 & 0xFFFFFFFFFFFFLL;
      }

      else
      {
        v5 = _StringObject.sharedUTF8.getter(a1, a2);
        v6 = v11;
      }

      v7 = _sSRsRi_zrlE17withMemoryRebound2to_qd_1_qd__m_qd_1_SRyqd__Gqd_0_YKXEtqd_0_YKs5ErrorRd_0_Ri_d__Ri_d_1_r1_lFSRyxGq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lys4Int8VsAD_pqd_1_Isgyrzr_SRys5UInt8VGqd_1_sAD_pAIRszAGRsd__sAD_pRsd_0_Ri_d_1_r_1_lIetMgyrzo_Tpq5Sb_Tg507_sSRys4f5VGxs5E34_pIgyrzo_ACxsAD_pIegyrzr_lTRSb_TG5SRyAGGSbsAD_pIgyrzo_Tf1cn_n(v5, v6, partial apply for specialized closure #1 in _StringGuts.withCString<A>(_:));
      a2;
    }
  }

  if (v7)
  {
    return v14[0];
  }

  else
  {
    return 0;
  }
}

void closure #1 in static _VideoUtilities.reformatKeypointsDataTable(table:featureColumn:keypointsShape:)(uint64_t a1, uint64_t a2)
{
  v5[0] = v2;
  if (*(a1 + 16) == 3)
  {
    v4 = *(a1 + 8);
    v5[0] = *a1;
    v3 = v5[0];

    static _VideoUtilities.convertKeypointsSequenceToMultiArray(value:keypointsShape:)(v5, a2);
    outlined consume of MLDataValue(v3, v4, 3);
  }

  else
  {
    *v2 = 0;
  }
}

void static _VideoUtilities.convertKeypointsSequenceToMultiArray(value:keypointsShape:)(unint64_t *a1, uint64_t a2)
{
  v147 = v2;
  v3 = *a1;
  objc_allocWithZone(MLMultiArray);

  v4 = @nonobjc MLMultiArray.init(shape:dataType:)(a2, 65600);
  if (!v4)
  {
    goto LABEL_74;
  }

  v137 = a2;
  v5 = v4;
  v132 = UnsafeMutableBufferPointer.init(_:)(v5, &type metadata for Double);
  v148 = v5;

  v6 = CMLSequence.size.getter();
  v7 = specialized RandomAccessCollection<>.distance(from:to:)(0, v6);

  if (v7 != 1)
  {

LABEL_74:
    *v147 = 0;
    return;
  }

  v128 = v3;
  v8 = 0.0;
  v129 = 0;
  v127 = v137 & 0xFFFFFFFFFFFFF8;

LABEL_4:
  specialized EnumeratedSequence.Iterator.next()(v8);
  v9 = v143;
  v10 = v144;
  v11 = v146;
  if (v146 == 3)
  {
    v12 = (v137 & 0xC000000000000003) == 0;
    v13 = v145;
    outlined copy of MLDataValue(v144, v145, 3u);
    outlined copy of MLDataValue(v10, v13, 3u);
    v14 = CMLSequence.size.getter();
    v149 = specialized RandomAccessCollection<>.distance(from:to:)(0, v14);
    v140 = v9;
    v141 = v10;
    v142 = v13;
    outlined consume of (offset: Int, element: MLDataValue)?(v9, v10, v13, 3);
    v15 = v12;
    v16 = v137;
    specialized Array._checkSubscript(_:wasNativeTypeChecked:)(1uLL, v15, v137);
    if ((v16 & 0xC000000000000003) != 0)
    {
      v17 = specialized _ArrayBuffer._getElementSlowPath(_:)(1);
    }

    else
    {
      v17 = *(v16 + 40);
    }

    v18 = v17;
    v19 = v148;
    v20 = [v17 integerValue];

    if (v149 == v20)
    {
      v21 = v141;
      outlined copy of MLDataValue(v141, v142, 3u);
      v22 = 0;
      while (1)
      {
        if (v22 == CMLSequence.size.getter())
        {

          v109 = v140;
          v110 = v142;
          outlined consume of (offset: Int, element: MLDataValue)?(v140, v21, v142, 3);
          outlined consume of (offset: Int, element: MLDataValue)?(v109, v21, v110, 3);
          goto LABEL_4;
        }

        v24 = v22;
        v23 = CMLSequence.value(at:)(v22);
        MLDataValue.init(_:)(v23, v8);
        v25 = v143;
        v139 = v144;
        v26 = v145;
        v27 = CMLSequence.size.getter();
        v131 = v24;
        if (v24 >= v27)
        {
          BUG();
        }

        v28 = v139;
        if (v26 != 3)
        {
          break;
        }

        outlined copy of MLDataValue(v25, v139, 3u);
        outlined copy of MLDataValue(v25, v28, 3u);
        v29 = CMLSequence.size.getter();
        if (CMLSequence.size.getter() < 0)
        {
          BUG();
        }

        v30 = v25;
        v31 = CMLSequence.size.getter();
        v138 = v30;
        outlined consume of MLDataValue(v30, v28, 3);
        if (v29 < 0 || v31 < v29)
        {
          BUG();
        }

        if ((v137 & 0xC000000000000003) != 0)
        {
          v32 = specialized _ArrayBuffer._getElementSlowPath(_:)(2);
        }

        else
        {
          if (*(v127 + 16) < 3uLL)
          {
            BUG();
          }

          v32 = *(v137 + 48);
        }

        v33 = v32;
        v34 = [v32 integerValue];

        if (v29 != v34)
        {
          v25 = v138;
          v28 = v139;
          outlined consume of MLDataValue(v138, v139, 3);
          v26 = 3;
          break;
        }

        v35 = v138;

        if (CMLSequence.size.getter())
        {
          v36 = 0;
          while (1)
          {
            v37 = CMLSequence.value(at:)(v36);
            v38 = CMLFeatureValue.type.getter();
            v130 = v36;
            switch(v38)
            {
              case 0:
                v39 = v37[2];

                countAndFlagsBits = specialized handling<A, B>(_:_:)(v39);
                v37;
                object = 0;
                v151 = 0;
                goto LABEL_45;
              case 1:
                v75 = v37[2];

                specialized handling<A, B>(_:_:)(v75);
                v149 = *&v8;
                v74 = v37;
                v8 = *&v149;
                countAndFlagsBits = v149;
                LOBYTE(v74) = 1;
                goto LABEL_43;
              case 2:

                v68 = CMLFeatureValue.stringValue()();
                countAndFlagsBits = v68._countAndFlagsBits;
                if (v69)
                {
                  v69;

                  BUG();
                }

                object = v68._object;
                v70 = v37;
                LOBYTE(v70) = 2;
                v151 = v70;
                goto LABEL_45;
              case 3:
                v71 = v37[2];

                v72 = specialized handling<A, B>(_:_:)(v71);
                if (!v72)
                {
                  BUG();
                }

                v37;
                v73 = type metadata accessor for CMLSequence();
                v74 = swift_allocObject(v73, 25, 7);
                *(v74 + 16) = v72;
                countAndFlagsBits = v74;
                *(v74 + 24) = 1;
                LOBYTE(v74) = 3;
                goto LABEL_43;
              case 4:
                v41 = v37[2];

                v42 = specialized handling<A, B>(_:_:)(v41);
                if (!v42)
                {
                  BUG();
                }

                v136 = v37;
                v43 = type metadata accessor for CMLDictionary();
                inited = swift_initStackObject(v43, v123);
                inited[2] = v42;
                v135 = _swiftEmptyDictionarySingleton;
                swift_retain_n(inited, 2);
                v45 = 0;
                countAndFlagsBits = _swiftEmptyDictionarySingleton;
                v149 = inited;
                while (v45 != CMLDictionary.size.getter())
                {
                  CMLDictionary.keyAndValue(at:)(v45);
                  v47 = v46;
                  v45 = specialized RandomAccessCollection<>.index(after:)(v45);
                  v48 = CMLFeatureValue.stringValue()();
                  if (v49)
                  {
                    v49;

                    inited = v149;
                  }

                  else
                  {
                    v50 = v48._object;
                    v151 = v48._countAndFlagsBits;

                    MLDataValue.init(_:)(v47, v8);

                    v134 = v143;
                    v133 = v144;
                    v152 = v145;
                    *&v51 = v151;
                    v143 = v151;
                    v144 = v50;
                    LOBYTE(v145) = 2;
                    v52 = v50;
                    *(&v51 + 1) = v50;
                    v53 = countAndFlagsBits;
                    specialized __RawDictionaryStorage.find<A>(_:)(v51, 2, v8);
                    *&v51 = (v55 & 1) == 0;
                    v56 = __OFADD__(v53[2], v51);
                    v57 = v53[2] + v51;
                    if (v56)
                    {
                      BUG();
                    }

                    v58 = v55;
                    if (v53[3] < v57)
                    {
                      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v57, 1u);
                      *&v59 = v151;
                      *(&v59 + 1) = v52;
                      specialized __RawDictionaryStorage.find<A>(_:)(v59, 2, v8);
                      LOBYTE(v60) = v60 & 1;
                      v61 = v58;
                      if ((v58 & 1) != v60)
                      {
                        LOBYTE(v61) = v58 & 1;
                        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(&type metadata for MLDataValue, v52, v60, v61);
                        BUG();
                      }
                    }

                    if (v58)
                    {
                      v120 = swift_allocError(&type metadata for _MergeError, &protocol witness table for _MergeError, 0, 0);
                      swift_willThrow();
                      v126 = v120;
                      swift_errorRetain(v120);
                      v121 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Error);
                      if (swift_dynamicCast(&demangling cache variable for type metadata for Error, &v126, v121, &type metadata for _MergeError, 0))
                      {
                        v124 = 0;
                        v125 = 0xE000000000000000;
                        _StringGuts.grow(_:)(30);
                        v122._object = "Swift/NativeDictionary.swift" + 0x8000000000000000;
                        v122._countAndFlagsBits = 0xD00000000000001BLL;
                        String.append(_:)(v122);
                        _print_unlocked<A, B>(_:_:)(&v143, &v124, &type metadata for MLDataValue, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
                        v122._countAndFlagsBits = 39;
                        v122._object = 0xE100000000000000;
                        String.append(_:)(v122);
                        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, v124, v125, "Swift/NativeDictionary.swift", 28, 2, 783, 0);
                        BUG();
                      }

                      outlined consume of MLDataValue(v134, v133, v152);
                      outlined consume of MLDataValue(v143, v144, v145);

                      v126;
                      swift_unexpectedError(v120, "Swift/Dictionary.swift", 22, 1, 489);
                      BUG();
                    }

                    v62 = v135;
                    v135[(v54 >> 6) + 8] |= 1 << v54;
                    v63 = v62[6];
                    v64 = 24 * v54;
                    *(v63 + v64) = v151;
                    *(v63 + v64 + 8) = v52;
                    *(v63 + v64 + 16) = 2;
                    v65 = v62[7];
                    *(v65 + v64) = v134;
                    *(v65 + v64 + 8) = v133;
                    *(v65 + v64 + 16) = v152;
                    v66 = v62[2];
                    v56 = __OFADD__(1, v66);
                    v67 = v66 + 1;
                    if (v56)
                    {
                      BUG();
                    }

                    countAndFlagsBits = v62;
                    v62[2] = v67;
                    inited = v149;
                  }
                }

                v136;
                v105 = inited;
                LOBYTE(v105) = 4;
                v151 = v105;
                object = 0;
                v36 = v130;
                goto LABEL_45;
              case 5:

                LOBYTE(v76) = 6;
                v151 = v76;
                countAndFlagsBits = 0;
                goto LABEL_44;
              case 6:

                MLDataValue.MultiArrayType.init(from:)(v37);
                countAndFlagsBits = v143;
                if (!v143)
                {
                  BUG();
                }

                LOBYTE(v74) = 5;
LABEL_43:
                v151 = v74;
LABEL_44:
                object = 0;
LABEL_45:
                if (v36 >= CMLSequence.size.getter())
                {
                  BUG();
                }

                v136 = object;
                v77 = v148;
                v78 = [v148 strides];
                v79 = v78;
                v149 = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSNumber, NSNumber_ptr);
                v80 = static Array._unconditionallyBridgeFromObjectiveC(_:)(v79, v149);

                if ((v80 & 0xC000000000000003) != 0)
                {
                  v81 = specialized _ArrayBuffer._getElementSlowPath(_:)(0);
                }

                else
                {
                  if (!*(&dword_10 + (v80 & 0xFFFFFFFFFFFFF8)))
                  {
                    BUG();
                  }

                  v81 = *(v80 + 32);
                }

                v82 = v81;
                v80;
                v83 = [v82 integerValue];

                v85 = v83;
                v84 = v140 * v83;
                if (!is_mul_ok(v140, v85))
                {
                  BUG();
                }

                v86 = [v77 strides];
                v87 = v86;
                v88 = static Array._unconditionallyBridgeFromObjectiveC(_:)(v87, v149);

                if ((v88 & 0xC000000000000003) != 0)
                {
                  v89 = specialized _ArrayBuffer._getElementSlowPath(_:)(1);
                }

                else
                {
                  if (*(&dword_10 + (v88 & 0xFFFFFFFFFFFFF8)) < 2uLL)
                  {
                    BUG();
                  }

                  v89 = *(v88 + 40);
                }

                v90 = v89;
                v88;
                v91 = [v90 integerValue];

                v93 = v91;
                v92 = v131 * v91;
                if (!is_mul_ok(v131, v93))
                {
                  BUG();
                }

                v56 = __OFADD__(v92, v84);
                v94 = v92 + v84;
                if (v56)
                {
                  BUG();
                }

                v95 = [v148 strides];
                v96 = v95;
                v97 = static Array._unconditionallyBridgeFromObjectiveC(_:)(v96, v149);
                (objc_release)(v96);
                if ((v97 & 0xC000000000000003) != 0)
                {
                  v99 = specialized _ArrayBuffer._getElementSlowPath(_:)(2);
                  v98 = v139;
                }

                else
                {
                  v98 = v139;
                  if (*(&dword_10 + (v97 & 0xFFFFFFFFFFFFF8)) < 3uLL)
                  {
                    BUG();
                  }

                  v99 = *(v97 + 48);
                }

                v97;
                v100 = [v99 integerValue];

                v101 = v130;
                v103 = v100;
                v102 = v130 * v100;
                if (!is_mul_ok(v130, v103))
                {
                  BUG();
                }

                v56 = __OFADD__(v102, v94);
                v104 = v102 + v94;
                if (v56)
                {
                  BUG();
                }

                if (v151)
                {
                  v35 = v138;
                  if (v151 != 1)
                  {
                    outlined consume of MLDataValue(countAndFlagsBits, v136, v151);
                    outlined consume of MLDataValue(v35, v98, 3);
                    outlined consume of MLDataValue(v35, v98, 3);
                    v111 = v140;
                    v112 = v141;
                    v113 = v142;
                    outlined consume of (offset: Int, element: MLDataValue)?(v140, v141, v142, 3);
                    outlined consume of (offset: Int, element: MLDataValue)?(v111, v112, v113, 3);

                    goto LABEL_78;
                  }

                  *(v132 + 8 * v104) = countAndFlagsBits;
                }

                else
                {
                  v8 = countAndFlagsBits;
                  *(v132 + 8 * v104) = countAndFlagsBits;
                  v35 = v138;
                }

                v36 = v101 + 1;
                if (v36 == CMLSequence.size.getter())
                {
                  goto LABEL_70;
                }

                break;
            }
          }
        }

LABEL_70:
        v106 = v131 + 1;

        v107 = v139;
        outlined consume of MLDataValue(v35, v139, 3);
        v108 = v35;
        v22 = v106;
        outlined consume of MLDataValue(v108, v107, 3);
        v21 = v141;
      }

      outlined consume of MLDataValue(v25, v28, v26);
      v114 = v140;
      v115 = v141;
      v116 = v142;
      outlined consume of (offset: Int, element: MLDataValue)?(v140, v141, v142, 3);
      outlined consume of (offset: Int, element: MLDataValue)?(v114, v115, v116, 3);
LABEL_78:

      goto LABEL_74;
    }

    v117 = v140;
    v10 = v141;
    v118 = v142;
    outlined consume of (offset: Int, element: MLDataValue)?(v140, v141, v142, 3);
    v11 = 3;
  }

  else
  {
    if (v146 == 255)
    {

      MLDataValue.MultiArrayType.init(_:)(v148);
      *v147 = v143;
      return;
    }

    v117 = v143;
    v118 = v145;
  }

  v119 = v147;
  outlined consume of (offset: Int, element: MLDataValue)?(v117, v10, v118, v11);
  *v119 = 0;
}

void thunk for @escaping @callee_guaranteed (@guaranteed VNRequest, @guaranteed Error?) -> ()(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);

  v5 = a2;
  v6 = a3;
  v4(v5, a3);
}

id @nonobjc VNDetectHumanBodyPoseRequest.init(completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    aBlock[4] = a1;
    aBlock[5] = a2;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed VNRequest, @guaranteed Error?) -> ();
    aBlock[3] = a3;
    v4 = _Block_copy(aBlock);
  }

  else
  {
    v4 = 0;
  }

  v5 = [v3 initWithCompletionHandler:v4];
  _Block_release(v4);
  return v5;
}

uint64_t specialized Array._checkIndex(_:)(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x4000000000000001) != 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFF8;
    if (a2)
    {
      v4 = a2;
    }

    result = _CocoaArrayWrapper.endIndex.getter(v4);
  }

  else
  {
    result = *(&dword_10 + (a2 & 0xFFFFFFFFFFFFF8));
  }

  if (result < a1)
  {
    BUG();
  }

  if (a1 < 0)
  {
    BUG();
  }

  return result;
}

void outlined consume of (offset: Int, element: MLDataValue)?(uint64_t a1, void *a2, void *a3, char a4)
{
  if (a4 != -1)
  {
    outlined consume of MLDataValue(a2, a3, a4);
  }
}

BOOL closure #1 in closure #1 in Double.init<A>(_:)(unsigned __int8 *a1, uint64_t a2)
{
  v3 = v2;
  v4 = *a1;
  result = (v4 > 0x20 || (v5 = 0x100003E01, !_bittest64(&v5, v4))) && (v7 = _swift_stdlib_strtod_clocale(a1, a2)) != 0 && *v7 == 0;
  *v3 = result;
  return result;
}

uint64_t outlined bridged method (pb) of @objc VNRequest.results.getter(void *a1)
{
  v1 = [a1 results];
  v2 = v1;
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for VNObservation, VNObservation_ptr);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)(v3, v4);

  return v5;
}

void partial apply for closure #1 in static _VideoUtilities.getHandKeyPointsFromVideoUrl(url:startTime:endTime:targetFrameRate:)(void *a1, _BYTE *a2, double a3, __m128d a4)
{
  partial apply for closure #1 in static _VideoUtilities.getHandKeyPointsFromVideoUrl(url:startTime:endTime:targetFrameRate:)(a1, a2, a3, a4);
}

{
  v5 = *(type metadata accessor for URL(0) - 8);
  v6 = ~*(v5 + 80) & (*(v5 + 80) + 24);
  v7 = (v6 + *(v5 + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  closure #1 in static _VideoUtilities.getHandKeyPointsFromVideoUrl(url:startTime:endTime:targetFrameRate:)(a1, a2, *(v4 + 16), v4 + v6, *(v4 + v7), *(v4 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8)), a3, a4);
}

uint64_t outlined init with copy of MLHandActionClassifier.DataSource(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for MLHandActionClassifier.DataSource(0);
  (*(*(v2 - 8) + 16))(a2, a1, v2);
  return a2;
}

uint64_t outlined destroy of MLHandActionClassifier.DataSource(uint64_t a1)
{
  v1 = type metadata accessor for MLHandActionClassifier.DataSource(0);
  (*(*(v1 - 8) + 8))(a1, v1);
  return a1;
}

uint64_t lazy protocol witness table accessor for type String and conformance String()
{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for String, &type metadata for String);
    lazy protocol witness table cache variable for type String and conformance String = result;
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for String, &type metadata for String);
    lazy protocol witness table cache variable for type String and conformance String = result;
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for String, &type metadata for String);
    lazy protocol witness table cache variable for type String and conformance String = result;
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for String, &type metadata for String);
    lazy protocol witness table cache variable for type String and conformance String = result;
  }

  return result;
}

void partial apply for closure #1 in static _VideoUtilities.getHumanKeyPointsFromVideoUrl(url:startTime:endTime:targetFrameRate:)(void *a1, _BYTE *a2, double a3, __m128d a4)
{
  v5 = *(type metadata accessor for URL(0) - 8);
  v6 = ~*(v5 + 80) & (*(v5 + 80) + 24);
  v7 = (v6 + *(v5 + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  closure #1 in static _VideoUtilities.getHumanKeyPointsFromVideoUrl(url:startTime:endTime:targetFrameRate:)(a1, a2, *(v4 + 16), v4 + v6, *(v4 + v7), *(v4 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8)), a3, a4);
}

uint64_t objectdestroy_11Tm()
{
  v5 = type metadata accessor for URL(0);
  v1 = *(v5 - 8);
  v2 = *(v1 + 80);
  v7 = v1;
  v3 = ~v2 & (v2 + 24);
  v6 = ((((*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;

  (*(v7 + 8))(v0 + v3, v5);

  return swift_deallocObject(v0, v6, v2 | 7);
}

uint64_t MLFewShotSoundClassifier.validationData(features:labels:device:)(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = v4;
  v28 = a2;
  v25 = v3;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ScalarType?) - 8) + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v26 = type metadata accessor for Tensor(0);
  v10 = *(*(v26 - 8) + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v27 = v19;
  v13 = alloca(v10);
  v14 = alloca(v10);
  v21 = v5;
  v22 = a3;
  v28 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySo8NSNumberCG_14NeuralNetworks6TensorVs5NeverOTg5(partial apply for closure #1 in MLFewShotSoundClassifier.validationData(features:labels:device:), v20, a2);
  v24 = a3;
  v15 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySo12MLMultiArrayCG_14NeuralNetworks6TensorVs5NeverOTg5(partial apply for closure #2 in MLFewShotSoundClassifier.validationData(features:labels:device:), v23, a1);
  v16 = type metadata accessor for ScalarType(0);
  __swift_storeEnumTagSinglePayload(v19, 1, 1, v16);
  Tensor.init(concatenating:alongAxis:scalarType:)(v15, 0, v19);
  __swift_storeEnumTagSinglePayload(v19, 1, 1, v16);
  v17 = v27;
  Tensor.init(stacking:alongAxis:scalarType:)(v28, 0, v19);
  return DataSample.init(features:labels:)(v19, v17, v26, v26);
}

uint64_t closure #1 in MLFewShotSoundClassifier.makeSoundDataset<A>(from:batchSize:device:)(uint64_t *a1, void *a2, uint64_t (*a3)(uint64_t *, uint64_t))
{
  v54 = a3;
  v50 = a2;
  v44 = v3;
  v39 = type metadata accessor for FloatingPointRoundingRule(0);
  v40 = *(v39 - 8);
  v4 = *(v40 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v41 = &v38;
  v52 = type metadata accessor for ScalarType(0);
  v42 = *(v52 - 1);
  v7 = *(v42 + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v43 = &v38;
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ComputeDevice?) - 8) + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v45 = type metadata accessor for Tensor(0);
  v48 = *(v45 - 8);
  v13 = *(v48 + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  v51 = &v38;
  v16 = alloca(v13);
  v17 = alloca(v13);
  v47 = &v38;
  v18 = alloca(v13);
  v19 = alloca(v13);
  v53 = &v38;
  v20 = alloca(v13);
  v21 = alloca(v13);
  v22 = *a1;
  v23 = a1[1];
  v24 = type metadata accessor for ComputeDevice(0);
  v49 = *(*(v24 - 8) + 16);
  v49(&v38, v54, v24);
  __swift_storeEnumTagSinglePayload(&v38, 0, 1, v24);
  v46 = &v38;
  Tensor.init(oneHotAtIndex:depth:onValue:offValue:on:)(v22, v50, &v38, 1.0, 0.0);
  v50 = v23;
  v25 = MLMultiArray.cast(to:)(&loc_10020);
  v49(&v38, v54, v24);
  __swift_storeEnumTagSinglePayload(&v38, 0, 1, v24);
  v52 = v25;
  v26 = v47;
  Tensor.init(_:device:)(v52, &v38);
  v27 = v53;
  Tensor.squeezingShape(at:)(&outlined read-only object #1 of closure #1 in MLFewShotSoundClassifier.makeSoundDataset<A>(from:batchSize:device:));
  v28 = v48;
  v29 = v45;
  v54 = *(v48 + 8);
  v54(v26, v45);
  v30 = *(v28 + 16);
  v30(v26, v27, v29);
  v31 = v51;
  v32 = v46;
  v30(v51, v46, v29);
  v33 = v32;
  DataSample.init(features:labels:)(v26, v31, v29, v29);
  v34 = v53;

  v35 = v34;
  v36 = v54;
  v54(v35, v29);
  return v36(v33, v29);
}

uint64_t closure #1 in MLFewShotSoundClassifier.validationData(features:labels:device:)(id *a1, uint64_t a2, uint64_t a3)
{
  v12 = a3;
  v11[2] = v3;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ComputeDevice?) - 8) + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v7 = [*a1 integerValue];
  v8 = *(*(a2 + *(type metadata accessor for MLFewShotSoundClassifier(0) + 32)) + 16);
  v9 = type metadata accessor for ComputeDevice(0);
  (*(*(v9 - 8) + 16))(v11, v12, v9);
  __swift_storeEnumTagSinglePayload(v11, 0, 1, v9);
  return Tensor.init(oneHotAtIndex:depth:onValue:offValue:on:)(v7, v8, v11, 1.0, 0.0);
}

void closure #2 in MLFewShotSoundClassifier.validationData(features:labels:device:)(void **a1, uint64_t a2)
{
  v27 = v3;
  v37 = a2;
  v36 = v2;
  v28 = type metadata accessor for FloatingPointRoundingRule(0);
  v29 = *(v28 - 8);
  v4 = *(v29 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v30 = &v27;
  v34 = type metadata accessor for ScalarType(0);
  v33 = *(v34 - 8);
  v7 = *(v33 + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v35 = &v27;
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ComputeDevice?) - 8) + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v31 = type metadata accessor for Tensor(0);
  v32 = *(v31 - 8);
  v13 = *(v32 + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  v16 = *a1;
  v17 = v27;
  v18 = MLMultiArray.cast(to:)(&loc_10020);
  if (v17)
  {
    v17;
    v19 = type metadata accessor for ComputeDevice(0);
    (*(*(v19 - 8) + 16))(&v27, v37, v19);
    __swift_storeEnumTagSinglePayload(&v27, 0, 1, v19);
    v20 = v16;
    v38 = &v27;
    Tensor.init(_:device:)(v20, &v27);
    v21 = v35;
    (*(v33 + 104))(v35, enum case for ScalarType.float32(_:), v34);
    v22 = v30;
    v23 = v28;
    v24 = v29;
    (*(v29 + 104))(v30, enum case for FloatingPointRoundingRule.towardZero(_:), v28);
    Tensor.cast(to:roundingRule:)(v21, v22);
    (*(v24 + 8))(v22, v23);
    (*(v33 + 8))(v35, v34);
    (*(v32 + 8))(v38, v31);
  }

  else
  {
    v25 = v18;
    v26 = type metadata accessor for ComputeDevice(0);
    (*(*(v26 - 8) + 16))(&v27, v37, v26);
    __swift_storeEnumTagSinglePayload(&v27, 0, 1, v26);
    Tensor.init(_:device:)(v25, &v27);
  }
}

void *initializeBufferWithCopyOfBuffer for AnyTreeClassifier(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 - 8) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v9 = *a2;
    *v3 = *a2;
    v3 = (v9 + ((v4 + 16) & ~v4));
  }

  else
  {
    *a1 = *a2;
    *(a1 + 8) = a2[1];
    *(a1 + 16) = a2[2];
    v5 = *(a2 + 32);
    *(a1 + 24) = a2[3];
    *(a1 + 32) = v5;
    *(a1 + 40) = a2[5];
    *(a1 + 48) = a2[6];
    *(a1 + 56) = a2[7];
    v6 = *(a3 + 32);
    v11 = a1 + v6;
    v7 = a2 + v6;
    v8 = type metadata accessor for BaseTreeClassifier(0);
    v12 = *(*(v8 - 8) + 16);

    v12(v11, v7, v8);
  }

  return v3;
}

uint64_t destroy for AnyTreeClassifier(void *a1, uint64_t a2)
{
  a1[1];
  a1[2];
  a1[3];
  a1[5];
  a1[7];
  v2 = a1 + *(a2 + 32);
  v3 = type metadata accessor for BaseTreeClassifier(0);
  return (*(*(v3 - 8) + 8))(v2, v3);
}

uint64_t initializeWithCopy for AnyTreeClassifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  v3 = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = v3;
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  v4 = *(a3 + 32);
  v8 = a1 + v4;
  v5 = v4 + a2;
  v6 = type metadata accessor for BaseTreeClassifier(0);
  v9 = *(*(v6 - 8) + 16);

  v9(v8, v5, v6);
  return a1;
}

uint64_t assignWithCopy for AnyTreeClassifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 8);

  v4;
  v5 = *(a1 + 16);
  *(a1 + 16) = *(a2 + 16);

  v5;
  v6 = *(a2 + 32);
  v7 = *(a1 + 24);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = v6;

  v7;
  v8 = *(a1 + 40);
  *(a1 + 40) = *(a2 + 40);

  v8;
  *(a1 + 48) = *(a2 + 48);
  v9 = *(a1 + 56);
  *(a1 + 56) = *(a2 + 56);

  v9;
  v10 = *(a3 + 32);
  v11 = a1 + v10;
  v12 = v10 + a2;
  v13 = type metadata accessor for BaseTreeClassifier(0);
  (*(*(v13 - 8) + 24))(v11, v12, v13);
  return a1;
}

uint64_t initializeWithTake for AnyTreeClassifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  v3 = *(a3 + 32);
  v4 = a1 + v3;
  v5 = v3 + a2;
  v6 = type metadata accessor for BaseTreeClassifier(0);
  (*(*(v6 - 8) + 32))(v4, v5, v6);
  return a1;
}

uint64_t assignWithTake for AnyTreeClassifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 8);
  v5;
  v6 = *(a1 + 16);
  *(a1 + 16) = *(a2 + 16);
  v6;
  v7 = *(a2 + 32);
  v8 = *(a1 + 24);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = v7;
  v8;
  v9 = *(a1 + 40);
  *(a1 + 40) = *(a2 + 40);
  v9;
  *(a1 + 48) = *(a2 + 48);
  v10 = *(a1 + 56);
  *(a1 + 56) = *(a2 + 56);
  v10;
  v11 = *(a3 + 32);
  v12 = a1 + v11;
  v13 = v11 + a2;
  v14 = type metadata accessor for BaseTreeClassifier(0);
  (*(*(v14 - 8) + 40))(v12, v13, v14);
  return a1;
}