uint64_t specialized ImageFileSync.writeAsync(_:to:context:coordinator:imageType:embeddingSourceImageAndEditModel:)(uint64_t a1)
{
  v2 = *(*v1 + 624);
  *(*v1 + 968) = a1;

  outlined destroy of DataOrURL(v2, type metadata accessor for Image);

  return MEMORY[0x1EEE6DFA0](specialized ImageFileSync.writeAsync(_:to:context:coordinator:imageType:embeddingSourceImageAndEditModel:), 0, 0);
}

{
  v2 = *(*v1 + 624);
  *(*v1 + 1000) = a1;

  outlined destroy of DataOrURL(v2, type metadata accessor for Image);

  return MEMORY[0x1EEE6DFA0](specialized ImageFileSync.writeAsync(_:to:context:coordinator:imageType:embeddingSourceImageAndEditModel:), 0, 0);
}

{
  v2 = *(*v1 + 624);
  *(*v1 + 1032) = a1;

  outlined destroy of DataOrURL(v2, type metadata accessor for Image);

  return MEMORY[0x1EEE6DFA0](specialized ImageFileSync.writeAsync(_:to:context:coordinator:imageType:embeddingSourceImageAndEditModel:), 0, 0);
}

uint64_t specialized ImageFileSync.writeAsync(_:to:context:coordinator:imageType:embeddingSourceImageAndEditModel:)(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v5[134] = a1;
  v5[135] = a2;
  v5[136] = v2;

  (*(v4[76] + 8))(v4[77], v4[75]);
  if (v2)
  {
    v6 = specialized ImageFileSync.writeAsync(_:to:context:coordinator:imageType:embeddingSourceImageAndEditModel:);
  }

  else
  {
    v6 = specialized ImageFileSync.writeAsync(_:to:context:coordinator:imageType:embeddingSourceImageAndEditModel:);
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t get_enum_tag_for_layout_string_So6CGSizeVABIegyd_Sg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t getEnumTagSinglePayload for ImageFileSync(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
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

uint64_t storeEnumTagSinglePayload for ImageFileSync(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ImageFileSync.ImageFileSyncError(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t storeEnumTagSinglePayload for ImageFileSync.ImageFileSyncError(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRSi_TG5TA(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for closure #1 in CanvasGenerationTool.magicPaperViewControllerDidCancel(_:);

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRSi_TG5(a1, v4);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRSo7UIImageCSg_TG5TA(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for closure #1 in CanvasGenerationTool.magicPaperViewControllerDidCancel(_:);

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRSo7UIImageCSg_TG5(a1, v4);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRSo6CGRectV_TG5TA(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for closure #1 in CanvasGenerationTool.magicPaperViewControllerDidCancel(_:);

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRSo6CGRectV_TG5(a1, v4);
}

double partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed CGSize) -> (@out CGSize)(double a1, double a2)
{
  v3 = *(v2 + 16);
  *v6 = a1;
  *&v6[1] = a2;
  v3(&v5, v6);
  return v5;
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTR10Foundation4DataV_So6CGSizeVtSg_Tg5TA(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for closure #1 in CanvasGenerationTool.magicPaperViewControllerDidCancel(_:);

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tgq5(a1, v4);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTR10Foundation4DataV_So6CGSizeVtSg_Tg5TA_69(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for closure #1 in AnyCanvas.calculateDocumentResultChanged(_:itemUUID:needsAttribution:);

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tgq5(a1, v4);
}

uint64_t lazy protocol witness table accessor for type Image and conformance Image(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t lazy protocol witness table accessor for type ImageFileSync.ImageFileSyncError and conformance ImageFileSync.ImageFileSyncError()
{
  result = lazy protocol witness table cache variable for type ImageFileSync.ImageFileSyncError and conformance ImageFileSync.ImageFileSyncError;
  if (!lazy protocol witness table cache variable for type ImageFileSync.ImageFileSyncError and conformance ImageFileSync.ImageFileSyncError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ImageFileSync.ImageFileSyncError and conformance ImageFileSync.ImageFileSyncError);
  }

  return result;
}

uint64_t partial apply for closure #2 in ImageFileSync.writeAsync(_:to:context:coordinator:imageType:embeddingSourceImageAndEditModel:)(void *a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ImageVGMd, &_s9Coherence7CapsuleVy8PaperKit5ImageVGMR);

  return closure #2 in ImageFileSync.writeAsync(_:to:context:coordinator:imageType:embeddingSourceImageAndEditModel:)(a1, a2);
}

double block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t outlined init with copy of DataOrURL(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of DataOrURL(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TA_106(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for closure #1 in CanvasGenerationTool.magicPaperViewControllerDidCancel(_:);

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(a1, v4);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5TA_116(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for closure #1 in CanvasGenerationTool.magicPaperViewControllerDidCancel(_:);

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5(a1, v4);
}

uint64_t GraphableExpression.expression.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSGMd, &_s9Coherence10CRRegisterVySSGMR);
  CRRegister.wrappedValue.getter();
  return v1;
}

uint64_t GraphableExpression.graphableVariable.getter()
{
  type metadata accessor for GraphableExpression(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSGMd, &_s9Coherence10CRRegisterVySSGMR);
  CRRegister.wrappedValue.getter();
  return v1;
}

double key path setter for GraphableExpression.expression : GraphableExpression(uint64_t *a1)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSGMd, &_s9Coherence10CRRegisterVySSGMR);
  CRRegister.wrappedValue.setter();
  return result;
}

double GraphableExpression.expression.setter(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSGMd, &_s9Coherence10CRRegisterVySSGMR);
  CRRegister.wrappedValue.setter();
  return result;
}

uint64_t (*GraphableExpression.expression.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSGMd, &_s9Coherence10CRRegisterVySSGMR);
  *(v3 + 32) = CRRegister.wrappedValue.modify();
  return PKStrokeStruct.properties.modify;
}

uint64_t GraphableExpression.$expression.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSGMd, &_s9Coherence10CRRegisterVySSGMR);

  return CRRegister.projectedValue.getter();
}

uint64_t key path setter for GraphableExpression.$expression : GraphableExpression(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSGMd, &_s9Coherence10CRRegisterVySSGMR);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - v8;
  v10 = *(v3 + 16);
  v10(&v12 - v8, a1, v2, v7);
  (v10)(v5, v9, v2);
  CRRegister.projectedValue.setter();
  return (*(v3 + 8))(v9, v2);
}

uint64_t GraphableExpression.$expression.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSGMd, &_s9Coherence10CRRegisterVySSGMR);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  CRRegister.projectedValue.setter();
  return (*(v3 + 8))(a1, v2);
}

void (*GraphableExpression.$expression.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSGMd, &_s9Coherence10CRRegisterVySSGMR);
  v5[1] = v6;
  v7 = *(v6 - 8);
  v5[2] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[3] = swift_coroFrameAlloc();
    v5[4] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[3] = malloc(*(v7 + 64));
    v5[4] = malloc(v8);
    v9 = malloc(v8);
  }

  v5[5] = v9;
  CRRegister.projectedValue.getter();
  return PKStrokeInheritedProperties.$inherited.modify;
}

uint64_t GraphableExpression.identifier.getter()
{
  type metadata accessor for GraphableExpression(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSGMd, &_s9Coherence10CRRegisterVySSGMR);
  CRRegister.wrappedValue.getter();
  return v1;
}

void key path getter for GraphableExpression.identifier : GraphableExpression(void *a1@<X8>)
{
  type metadata accessor for GraphableExpression(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSGMd, &_s9Coherence10CRRegisterVySSGMR);
  CRRegister.wrappedValue.getter();
  *a1 = v2;
  a1[1] = v3;
}

double key path setter for GraphableExpression.identifier : GraphableExpression(void *a1)
{
  type metadata accessor for GraphableExpression(0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSGMd, &_s9Coherence10CRRegisterVySSGMR);
  CRRegister.wrappedValue.setter();
  return result;
}

double GraphableExpression.identifier.setter(uint64_t a1, uint64_t a2)
{
  type metadata accessor for GraphableExpression(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSGMd, &_s9Coherence10CRRegisterVySSGMR);
  CRRegister.wrappedValue.setter();
  return result;
}

uint64_t (*GraphableExpression.identifier.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for GraphableExpression(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSGMd, &_s9Coherence10CRRegisterVySSGMR);
  *(v3 + 32) = CRRegister.wrappedValue.modify();
  return PKStrokeInheritedProperties.inherited.modify;
}

uint64_t GraphableExpression.$identifier.getter()
{
  type metadata accessor for GraphableExpression(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSGMd, &_s9Coherence10CRRegisterVySSGMR);
  return CRRegister.projectedValue.getter();
}

uint64_t key path getter for GraphableExpression.$identifier : GraphableExpression()
{
  type metadata accessor for GraphableExpression(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSGMd, &_s9Coherence10CRRegisterVySSGMR);
  return CRRegister.projectedValue.getter();
}

uint64_t key path setter for GraphableExpression.$identifier : GraphableExpression(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSGMd, &_s9Coherence10CRRegisterVySSGMR);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - v8;
  v10 = *(v3 + 16);
  v10(&v12 - v8, a1, v2, v7);
  (v10)(v5, v9, v2);
  type metadata accessor for GraphableExpression(0);
  CRRegister.projectedValue.setter();
  return (*(v3 + 8))(v9, v2);
}

uint64_t GraphableExpression.$identifier.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSGMd, &_s9Coherence10CRRegisterVySSGMR);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  type metadata accessor for GraphableExpression(0);
  CRRegister.projectedValue.setter();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*GraphableExpression.$identifier.modify(void *a1))()
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSGMd, &_s9Coherence10CRRegisterVySSGMR);
  v5[1] = v6;
  v7 = *(v6 - 8);
  v5[2] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[3] = swift_coroFrameAlloc();
    v5[4] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[3] = malloc(*(v7 + 64));
    v5[4] = malloc(v8);
    v9 = malloc(v8);
  }

  v5[5] = v9;
  *(v5 + 12) = *(type metadata accessor for GraphableExpression(0) + 20);
  CRRegister.projectedValue.getter();
  return PKStrokeStruct.$properties.modify;
}

uint64_t key path setter for GraphableExpression.color : GraphableExpression(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v9 - v6;
  outlined init with copy of Date?(a1, &v9 - v6, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
  outlined init with copy of Date?(v7, v4, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
  type metadata accessor for GraphableExpression(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMR);
  CRRegister.wrappedValue.setter();
  return outlined destroy of StocksKitCurrencyCache.Provider?(v7, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
}

uint64_t GraphableExpression.color.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  outlined init with copy of Date?(a1, &v5 - v3, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
  type metadata accessor for GraphableExpression(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMR);
  CRRegister.wrappedValue.setter();
  return outlined destroy of StocksKitCurrencyCache.Provider?(a1, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
}

uint64_t (*GraphableExpression.color.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for GraphableExpression(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMR);
  *(v3 + 32) = CRRegister.wrappedValue.modify();
  return PKStrokeInheritedProperties.inherited.modify;
}

uint64_t GraphableExpression.color.getter(uint64_t (*a1)(uint64_t))
{
  type metadata accessor for GraphableExpression(0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMR);
  return a1(v2);
}

uint64_t key path getter for GraphableExpression.color : GraphableExpression(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  type metadata accessor for GraphableExpression(0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMR);
  return a4(v5);
}

uint64_t key path setter for GraphableExpression.$color : GraphableExpression(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMR);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - v8;
  v10 = *(v3 + 16);
  v10(&v12 - v8, a1, v2, v7);
  (v10)(v5, v9, v2);
  type metadata accessor for GraphableExpression(0);
  CRRegister.projectedValue.setter();
  return (*(v3 + 8))(v9, v2);
}

uint64_t GraphableExpression.$color.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMR);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  type metadata accessor for GraphableExpression(0);
  CRRegister.projectedValue.setter();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*GraphableExpression.$color.modify(void *a1))()
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMR);
  v5[1] = v6;
  v7 = *(v6 - 8);
  v5[2] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[3] = swift_coroFrameAlloc();
    v5[4] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[3] = malloc(*(v7 + 64));
    v5[4] = malloc(v8);
    v9 = malloc(v8);
  }

  v5[5] = v9;
  *(v5 + 12) = *(type metadata accessor for GraphableExpression(0) + 24);
  CRRegister.projectedValue.getter();
  return PKStrokeInheritedProperties.$ink.modify;
}

void key path getter for GraphableExpression.graphableVariable : GraphableExpression(void *a1@<X8>)
{
  type metadata accessor for GraphableExpression(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSGMd, &_s9Coherence10CRRegisterVySSGMR);
  CRRegister.wrappedValue.getter();
  *a1 = v2;
  a1[1] = v3;
}

double key path setter for GraphableExpression.graphableVariable : GraphableExpression(void *a1)
{
  type metadata accessor for GraphableExpression(0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSGMd, &_s9Coherence10CRRegisterVySSGMR);
  CRRegister.wrappedValue.setter();
  return result;
}

double GraphableExpression.graphableVariable.setter(uint64_t a1, uint64_t a2)
{
  type metadata accessor for GraphableExpression(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSGMd, &_s9Coherence10CRRegisterVySSGMR);
  CRRegister.wrappedValue.setter();
  return result;
}

uint64_t (*GraphableExpression.graphableVariable.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for GraphableExpression(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSGMd, &_s9Coherence10CRRegisterVySSGMR);
  *(v3 + 32) = CRRegister.wrappedValue.modify();
  return PKStrokeInheritedProperties.inherited.modify;
}

uint64_t GraphableExpression.$graphableVariable.getter()
{
  type metadata accessor for GraphableExpression(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSGMd, &_s9Coherence10CRRegisterVySSGMR);
  return CRRegister.projectedValue.getter();
}

uint64_t key path getter for GraphableExpression.$graphableVariable : GraphableExpression()
{
  type metadata accessor for GraphableExpression(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSGMd, &_s9Coherence10CRRegisterVySSGMR);
  return CRRegister.projectedValue.getter();
}

uint64_t key path setter for GraphableExpression.$graphableVariable : GraphableExpression(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSGMd, &_s9Coherence10CRRegisterVySSGMR);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - v8;
  v10 = *(v3 + 16);
  v10(&v12 - v8, a1, v2, v7);
  (v10)(v5, v9, v2);
  type metadata accessor for GraphableExpression(0);
  CRRegister.projectedValue.setter();
  return (*(v3 + 8))(v9, v2);
}

uint64_t GraphableExpression.$graphableVariable.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSGMd, &_s9Coherence10CRRegisterVySSGMR);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  type metadata accessor for GraphableExpression(0);
  CRRegister.projectedValue.setter();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*GraphableExpression.$graphableVariable.modify(void *a1))()
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSGMd, &_s9Coherence10CRRegisterVySSGMR);
  v5[1] = v6;
  v7 = *(v6 - 8);
  v5[2] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[3] = swift_coroFrameAlloc();
    v5[4] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[3] = malloc(*(v7 + 64));
    v5[4] = malloc(v8);
    v9 = malloc(v8);
  }

  v5[5] = v9;
  *(v5 + 12) = *(type metadata accessor for GraphableExpression(0) + 28);
  CRRegister.projectedValue.getter();
  return PKStrokeInheritedProperties.$ink.modify;
}

uint64_t GraphableExpression.init(expression:identifier:color:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v20 = a4;
  v21 = a5;
  v18 = a2;
  v19 = a3;
  v17 = a1;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
  MEMORY[0x1EEE9AC00](v16);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v16 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v16 - v12;
  outlined init with copy of Date?(a5, &v16 - v12, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
  v22 = 0;
  v23 = 0xE000000000000000;
  CRRegister.init(wrappedValue:)();
  type metadata accessor for GraphableExpression(0);
  v22 = 0;
  v23 = 0xE000000000000000;
  CRRegister.init(wrappedValue:)();
  v14 = type metadata accessor for Color(0);
  (*(*(v14 - 8) + 56))(v10, 1, 1, v14);
  outlined init with copy of Date?(v10, v7, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
  _s8PaperKit5ColorVSgxSg9Coherence7CRValueA2fGRzlWlTm_0(&lazy protocol witness table cache variable for type Color? and conformance <A> A?, &lazy protocol witness table cache variable for type Color and conformance Color, &protocol conformance descriptor for Color, MEMORY[0x1E6995530]);
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v10, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
  v22 = 0;
  v23 = 0xE000000000000000;
  CRRegister.init(wrappedValue:)();
  UnknownProperties.init()();
  v22 = v17;
  v23 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSGMd, &_s9Coherence10CRRegisterVySSGMR);
  CRRegister.wrappedValue.setter();
  v22 = v19;
  v23 = v20;
  CRRegister.wrappedValue.setter();
  outlined init with copy of Date?(v13, v10, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
  outlined init with copy of Date?(v10, v7, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMR);
  CRRegister.wrappedValue.setter();
  outlined destroy of StocksKitCurrencyCache.Provider?(v10, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
  v22 = 0;
  v23 = 0xE000000000000000;
  CRRegister.wrappedValue.setter();
  outlined destroy of StocksKitCurrencyCache.Provider?(v21, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
  return outlined destroy of StocksKitCurrencyCache.Provider?(v13, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
}

uint64_t GraphableExpression.init(expression:identifier:graphableVariable:color:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7)
{
  v17 = a5;
  v18 = a7;
  v22 = a4;
  v23 = a6;
  v20 = a2;
  v21 = a3;
  v19 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v16 - v11;
  v24 = 0;
  v25 = 0xE000000000000000;
  CRRegister.init(wrappedValue:)();
  type metadata accessor for GraphableExpression(0);
  v24 = 0;
  v25 = 0xE000000000000000;
  CRRegister.init(wrappedValue:)();
  v13 = type metadata accessor for Color(0);
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  outlined init with copy of Date?(v12, v9, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
  _s8PaperKit5ColorVSgxSg9Coherence7CRValueA2fGRzlWlTm_0(&lazy protocol witness table cache variable for type Color? and conformance <A> A?, &lazy protocol witness table cache variable for type Color and conformance Color, &protocol conformance descriptor for Color, MEMORY[0x1E6995530]);
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v12, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
  v24 = 0;
  v25 = 0xE000000000000000;
  v14 = v18;
  CRRegister.init(wrappedValue:)();
  UnknownProperties.init()();
  v24 = v19;
  v25 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSGMd, &_s9Coherence10CRRegisterVySSGMR);
  CRRegister.wrappedValue.setter();
  v24 = v21;
  v25 = v22;
  CRRegister.wrappedValue.setter();
  outlined init with copy of Date?(v14, v12, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
  outlined init with copy of Date?(v12, v9, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMR);
  CRRegister.wrappedValue.setter();
  outlined destroy of StocksKitCurrencyCache.Provider?(v12, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
  if (v23)
  {
    v24 = v17;
    v25 = v23;
    CRRegister.wrappedValue.setter();
  }

  return outlined destroy of StocksKitCurrencyCache.Provider?(v14, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
}

uint64_t GraphableExpression.copy(renamingReferences:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for CRKeyPath();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v77 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v78 = &v66 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v66 - v14;
  v16 = type metadata accessor for UUID();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v75 = &v66 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v74 = &v66 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v76 = &v66 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v66 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v79 = &v66 - v27;
  result = outlined init with copy of GraphableExpression(v2, a2, type metadata accessor for GraphableExpression);
  v29 = *a1;
  if (*(v29 + 16))
  {
    v71 = a2;
    v73 = v6;
    v70 = type metadata accessor for GraphableExpression(0);
    v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSGMd, &_s9Coherence10CRRegisterVySSGMR);
    CRRegister.wrappedValue.getter();
    UUID.init(uuidString:)();

    v30 = *(v17 + 48);
    if (v30(v15, 1, v16) == 1)
    {
      return outlined destroy of StocksKitCurrencyCache.Provider?(v15, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    }

    else
    {
      v72 = v5;
      v31 = v79;
      v67 = *(v17 + 32);
      v67(v79, v15, v16);
      v68 = *(v17 + 16);
      v68(v25, v31, v16);
      v32 = v78;
      CRKeyPath.init(_:)();
      if (*(v29 + 16) && (v33 = specialized __RawDictionaryStorage.find<A>(_:)(v32), v32 = v78, (v34 & 1) != 0))
      {
        v35 = *(v29 + 56);
        v37 = v72;
        v36 = v73;
        v38 = v77;
        (*(v73 + 16))(v77, v35 + *(v73 + 72) * v33, v72);
        CRKeyPath.uuid.getter();
        if (v30(v12, 1, v16) == 1)
        {
          v39 = *(v36 + 8);
          v39(v38, v37);
          v39(v78, v37);
          (*(v17 + 8))(v79, v16);
          return outlined destroy of StocksKitCurrencyCache.Provider?(v12, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        }

        else
        {
          v40 = v76;
          v67(v76, v12, v16);
          if (one-time initialization token for mathLogger != -1)
          {
            swift_once();
          }

          v41 = type metadata accessor for Logger();
          __swift_project_value_buffer(v41, mathLogger);
          v42 = v74;
          v43 = v68;
          v68(v74, v79, v16);
          v44 = v75;
          v43(v75, v40, v16);
          v45 = Logger.logObject.getter();
          v46 = static os_log_type_t.default.getter();
          v47 = os_log_type_enabled(v45, v46);
          v48 = v72;
          if (v47)
          {
            v49 = swift_slowAlloc();
            v68 = swift_slowAlloc();
            v80[0] = v68;
            *v49 = 136315394;
            _s8PaperKit5ColorVAC9Coherence7CRValueAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
            v66 = v45;
            LODWORD(v67) = v46;
            v50 = dispatch thunk of CustomStringConvertible.description.getter();
            v52 = v51;
            v53 = v42;
            v54 = *(v17 + 8);
            v54(v53, v16);
            v55 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v50, v52, v80);

            *(v49 + 4) = v55;
            *(v49 + 12) = 2080;
            v56 = dispatch thunk of CustomStringConvertible.description.getter();
            v58 = v57;
            v54(v44, v16);
            v59 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v56, v58, v80);

            *(v49 + 14) = v59;
            v40 = v76;
            v60 = v66;
            _os_log_impl(&dword_1D38C4000, v66, v67, "Renaming expression identifier: %s to %s", v49, 0x16u);
            v61 = v68;
            swift_arrayDestroy();
            MEMORY[0x1DA6D0660](v61, -1, -1);
            MEMORY[0x1DA6D0660](v49, -1, -1);
          }

          else
          {

            v62 = v42;
            v54 = *(v17 + 8);
            v54(v44, v16);
            v54(v62, v16);
          }

          v63 = v77;
          v80[0] = UUID.uuidString.getter();
          v80[1] = v64;
          CRRegister.wrappedValue.setter();
          v54(v40, v16);
          v65 = *(v73 + 8);
          v65(v63, v48);
          v65(v78, v48);
          return (v54)(v79, v16);
        }
      }

      else
      {
        (*(v73 + 8))(v32, v72);
        return (*(v17 + 8))(v79, v16);
      }
    }
  }

  return result;
}

BOOL GraphableExpression.Partial.merge(delta:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMR);
  v5 = *(v4 - 8);
  v91 = v4;
  v92 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v84 = &v77 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v86 = &v77 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v89 = &v77 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSGMd, &_s9Coherence10CRRegisterVySSGMR);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v77 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v83 = &v77 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSGSgMd, &_s9Coherence10CRRegisterVySSGSgMR);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v87 = &v77 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v90 = &v77 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v85 = &v77 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v77 - v27;
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v77 - v30;
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v77 - v33;
  v93 = type metadata accessor for GraphableExpression.Partial(0);
  MEMORY[0x1EEE9AC00](v93);
  v36 = &v77 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of GraphableExpression(v2, v36, type metadata accessor for GraphableExpression.Partial);
  v94 = a1;
  v37 = GraphableExpression.Partial.canMerge(delta:)(a1);
  outlined destroy of GraphableExpression.Partial(v36, type metadata accessor for GraphableExpression.Partial);
  if (v37)
  {
    v77 = v17;
    v78 = v14;
    v81 = v37;
    outlined init with copy of Date?(v2, v34, &_s9Coherence10CRRegisterVySSGSgMd, &_s9Coherence10CRRegisterVySSGSgMR);
    v79 = v12;
    v40 = *(v12 + 48);
    v38 = v12 + 48;
    v39 = v40;
    v41 = v40(v34, 1, v11);
    outlined destroy of StocksKitCurrencyCache.Provider?(v34, &_s9Coherence10CRRegisterVySSGSgMd, &_s9Coherence10CRRegisterVySSGSgMR);
    v88 = v40;
    if (v41 == 1)
    {
      outlined assign with copy of CRRegister<Ref<PKStrokeInheritedProperties>?>?(v94, v2, &_s9Coherence10CRRegisterVySSGSgMd, &_s9Coherence10CRRegisterVySSGSgMR);
      v42 = v2;
    }

    else
    {
      outlined init with copy of Date?(v94, v31, &_s9Coherence10CRRegisterVySSGSgMd, &_s9Coherence10CRRegisterVySSGSgMR);
      if (v39(v31, 1, v11) == 1)
      {
        outlined destroy of StocksKitCurrencyCache.Provider?(v31, &_s9Coherence10CRRegisterVySSGSgMd, &_s9Coherence10CRRegisterVySSGSgMR);
        v42 = v2;
      }

      else
      {
        v43 = v79;
        v44 = v83;
        (*(v79 + 32))(v83, v31, v11);
        v42 = v2;
        if (!v39(v2, 1, v11))
        {
          CRRegister.merge(delta:)();
        }

        (*(v43 + 8))(v44, v11);
      }
    }

    v45 = v93;
    v46 = v93[5];
    outlined init with copy of Date?(v42 + v46, v28, &_s9Coherence10CRRegisterVySSGSgMd, &_s9Coherence10CRRegisterVySSGSgMR);
    v47 = v88;
    v48 = v38;
    v49 = v88(v28, 1, v11);
    outlined destroy of StocksKitCurrencyCache.Provider?(v28, &_s9Coherence10CRRegisterVySSGSgMd, &_s9Coherence10CRRegisterVySSGSgMR);
    v50 = v45[5];
    v82 = v11;
    v80 = v48;
    if (v49 == 1)
    {
      outlined assign with copy of CRRegister<Ref<PKStrokeInheritedProperties>?>?(v94 + v50, v42 + v46, &_s9Coherence10CRRegisterVySSGSgMd, &_s9Coherence10CRRegisterVySSGSgMR);
      v51 = v92;
    }

    else
    {
      v52 = v85;
      outlined init with copy of Date?(v94 + v50, v85, &_s9Coherence10CRRegisterVySSGSgMd, &_s9Coherence10CRRegisterVySSGSgMR);
      v53 = v47(v52, 1, v11);
      v51 = v92;
      if (v53 == 1)
      {
        outlined destroy of StocksKitCurrencyCache.Provider?(v52, &_s9Coherence10CRRegisterVySSGSgMd, &_s9Coherence10CRRegisterVySSGSgMR);
      }

      else
      {
        v54 = v79;
        v55 = v77;
        (*(v79 + 32))(v77, v52, v11);
        if (!v47(v42 + v46, 1, v11))
        {
          CRRegister.merge(delta:)();
        }

        (*(v54 + 8))(v55, v11);
      }
    }

    v56 = v93;
    v57 = v93[6];
    v58 = v89;
    outlined init with copy of Date?(v42 + v57, v89, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMR);
    v59 = *(v51 + 48);
    v60 = v91;
    v61 = v59(v58, 1, v91);
    outlined destroy of StocksKitCurrencyCache.Provider?(v58, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMR);
    v62 = v56[6];
    if (v61 == 1)
    {
      outlined assign with copy of CRRegister<Ref<PKStrokeInheritedProperties>?>?(v94 + v62, v42 + v57, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMR);
    }

    else
    {
      v63 = v86;
      outlined init with copy of Date?(v94 + v62, v86, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMR);
      if (v59(v63, 1, v60) == 1)
      {
        outlined destroy of StocksKitCurrencyCache.Provider?(v63, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMR);
      }

      else
      {
        v64 = v92;
        v65 = v84;
        (*(v92 + 32))(v84, v63, v60);
        if (!v59(v42 + v57, 1, v60))
        {
          CRRegister.merge(delta:)();
        }

        (*(v64 + 8))(v65, v60);
      }
    }

    v66 = v82;
    v67 = v88;
    v68 = v93;
    v69 = v93[7];
    v70 = v90;
    outlined init with copy of Date?(v42 + v69, v90, &_s9Coherence10CRRegisterVySSGSgMd, &_s9Coherence10CRRegisterVySSGSgMR);
    v71 = v67(v70, 1, v66);
    outlined destroy of StocksKitCurrencyCache.Provider?(v70, &_s9Coherence10CRRegisterVySSGSgMd, &_s9Coherence10CRRegisterVySSGSgMR);
    v72 = v68[7];
    if (v71 == 1)
    {
      outlined assign with copy of CRRegister<Ref<PKStrokeInheritedProperties>?>?(v94 + v72, v42 + v69, &_s9Coherence10CRRegisterVySSGSgMd, &_s9Coherence10CRRegisterVySSGSgMR);
    }

    else
    {
      v73 = v87;
      outlined init with copy of Date?(v94 + v72, v87, &_s9Coherence10CRRegisterVySSGSgMd, &_s9Coherence10CRRegisterVySSGSgMR);
      if (v67(v73, 1, v66) == 1)
      {
        outlined destroy of StocksKitCurrencyCache.Provider?(v73, &_s9Coherence10CRRegisterVySSGSgMd, &_s9Coherence10CRRegisterVySSGSgMR);
      }

      else
      {
        v75 = v78;
        v74 = v79;
        (*(v79 + 32))(v78, v73, v66);
        if (!v67(v42 + v69, 1, v66))
        {
          CRRegister.merge(delta:)();
        }

        (*(v74 + 8))(v75, v66);
      }
    }

    LOBYTE(v37) = v81;
  }

  return v37;
}

BOOL GraphableExpression.Partial.canMerge(delta:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v67 = &v61 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v69 = &v61 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMR);
  v7 = *(v6 - 8);
  v70 = v6;
  v71 = v7;
  MEMORY[0x1EEE9AC00](v6);
  v66 = &v61 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSGSgMd, &_s9Coherence10CRRegisterVySSGSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v63 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v65 = &v61 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v64 = &v61 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v61 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v61 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v61 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSGMd, &_s9Coherence10CRRegisterVySSGMR);
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v62 = &v61 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v61 - v28;
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v61 - v31;
  v74 = a1;
  outlined init with copy of Date?(a1, v23, &_s9Coherence10CRRegisterVySSGSgMd, &_s9Coherence10CRRegisterVySSGSgMR);
  v33 = *(v25 + 48);
  v34 = v33(v23, 1, v24);
  v68 = v25;
  v72 = v33;
  if (v34 == 1)
  {
    v35 = v73;
    v20 = v23;
LABEL_5:
    v36 = v69;
    outlined destroy of StocksKitCurrencyCache.Provider?(v20, &_s9Coherence10CRRegisterVySSGSgMd, &_s9Coherence10CRRegisterVySSGSgMR);
    v38 = v70;
    v37 = v71;
    goto LABEL_6;
  }

  (*(v25 + 32))(v32, v23, v24);
  v35 = v73;
  outlined init with copy of Date?(v73, v20, &_s9Coherence10CRRegisterVySSGSgMd, &_s9Coherence10CRRegisterVySSGSgMR);
  if (v33(v20, 1, v24) == 1)
  {
    (*(v25 + 8))(v32, v24);
    goto LABEL_5;
  }

  LODWORD(v61) = CRRegister.canMerge(delta:)();
  v54 = *(v25 + 8);
  v54(v32, v24);
  v54(v20, v24);
  v38 = v70;
  v37 = v71;
  v36 = v69;
  if ((v61 & 1) == 0)
  {
    return 0;
  }

LABEL_6:
  v39 = type metadata accessor for GraphableExpression.Partial(0);
  outlined init with copy of Date?(v74 + v39[5], v17, &_s9Coherence10CRRegisterVySSGSgMd, &_s9Coherence10CRRegisterVySSGSgMR);
  v40 = v72;
  if (v72(v17, 1, v24) == 1)
  {
    v41 = v17;
    v43 = v66;
    v42 = v67;
LABEL_10:
    outlined destroy of StocksKitCurrencyCache.Provider?(v41, &_s9Coherence10CRRegisterVySSGSgMd, &_s9Coherence10CRRegisterVySSGSgMR);
    goto LABEL_11;
  }

  v44 = v68;
  (*(v68 + 32))(v29, v17, v24);
  v61 = v39;
  v45 = v35 + v39[5];
  v46 = v64;
  outlined init with copy of Date?(v45, v64, &_s9Coherence10CRRegisterVySSGSgMd, &_s9Coherence10CRRegisterVySSGSgMR);
  if (v40(v46, 1, v24) == 1)
  {
    (*(v44 + 8))(v29, v24);
    v43 = v66;
    v42 = v67;
    v37 = v71;
    v41 = v46;
    v39 = v61;
    goto LABEL_10;
  }

  v55 = CRRegister.canMerge(delta:)();
  v56 = *(v44 + 8);
  v56(v29, v24);
  v56(v46, v24);
  v36 = v69;
  v38 = v70;
  v43 = v66;
  v42 = v67;
  v37 = v71;
  v39 = v61;
  if ((v55 & 1) == 0)
  {
    return 0;
  }

LABEL_11:
  outlined init with copy of Date?(v74 + v39[6], v36, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMR);
  v47 = *(v37 + 48);
  if (v47(v36, 1, v38) == 1)
  {
    v42 = v36;
    v48 = v68;
  }

  else
  {
    (*(v37 + 32))(v43, v36, v38);
    outlined init with copy of Date?(v73 + v39[6], v42, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMR);
    v49 = v47(v42, 1, v38);
    v48 = v68;
    if (v49 != 1)
    {
      v57 = CRRegister.canMerge(delta:)();
      v58 = *(v37 + 8);
      v58(v43, v38);
      v58(v42, v38);
      if ((v57 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_16;
    }

    (*(v37 + 8))(v43, v38);
  }

  outlined destroy of StocksKitCurrencyCache.Provider?(v42, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMR);
LABEL_16:
  v50 = v65;
  outlined init with copy of Date?(v74 + v39[7], v65, &_s9Coherence10CRRegisterVySSGSgMd, &_s9Coherence10CRRegisterVySSGSgMR);
  v51 = v72;
  if (v72(v50, 1, v24) == 1)
  {
LABEL_19:
    outlined destroy of StocksKitCurrencyCache.Provider?(v50, &_s9Coherence10CRRegisterVySSGSgMd, &_s9Coherence10CRRegisterVySSGSgMR);
    return 1;
  }

  v52 = v62;
  (*(v48 + 32))(v62, v50, v24);
  v50 = v63;
  outlined init with copy of Date?(v73 + v39[7], v63, &_s9Coherence10CRRegisterVySSGSgMd, &_s9Coherence10CRRegisterVySSGSgMR);
  if (v51(v50, 1, v24) == 1)
  {
    (*(v48 + 8))(v52, v24);
    goto LABEL_19;
  }

  v59 = CRRegister.canMerge(delta:)();
  v60 = *(v48 + 8);
  v60(v52, v24);
  v60(v50, v24);
  return (v59 & 1) != 0;
}

uint64_t GraphableExpression.Partial.visitReferences(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v24 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSGSgMd, &_s9Coherence10CRRegisterVySSGSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v24 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v24 - v14;
  v25 = v2;
  outlined init with copy of Date?(v2, &v24 - v14, &_s9Coherence10CRRegisterVySSGSgMd, &_s9Coherence10CRRegisterVySSGSgMR);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSGMd, &_s9Coherence10CRRegisterVySSGMR);
  v17 = *(v16 - 8);
  v18 = *(v17 + 48);
  if (v18(v15, 1, v16) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v15, &_s9Coherence10CRRegisterVySSGSgMd, &_s9Coherence10CRRegisterVySSGSgMR);
  }

  else
  {
    CRRegister.visitReferences(_:)();
    (*(v17 + 8))(v15, v16);
  }

  v19 = type metadata accessor for GraphableExpression.Partial(0);
  outlined init with copy of Date?(v25 + v19[5], v12, &_s9Coherence10CRRegisterVySSGSgMd, &_s9Coherence10CRRegisterVySSGSgMR);
  v20 = v18(v12, 1, v16);
  v24 = a1;
  if (v20 == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v12, &_s9Coherence10CRRegisterVySSGSgMd, &_s9Coherence10CRRegisterVySSGSgMR);
  }

  else
  {
    CRRegister.visitReferences(_:)();
    (*(v17 + 8))(v12, v16);
  }

  outlined init with copy of Date?(v25 + v19[6], v6, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMR);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMR);
  v22 = *(v21 - 8);
  if ((*(v22 + 48))(v6, 1, v21) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v6, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMR);
  }

  else
  {
    CRRegister.visitReferences(_:)();
    (*(v22 + 8))(v6, v21);
  }

  outlined init with copy of Date?(v25 + v19[7], v9, &_s9Coherence10CRRegisterVySSGSgMd, &_s9Coherence10CRRegisterVySSGSgMR);
  if (v18(v9, 1, v16) == 1)
  {
    return outlined destroy of StocksKitCurrencyCache.Provider?(v9, &_s9Coherence10CRRegisterVySSGSgMd, &_s9Coherence10CRRegisterVySSGSgMR);
  }

  CRRegister.visitReferences(_:)();
  return (*(v17 + 8))(v9, v16);
}

double GraphableExpression.Partial.init(from:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v47 = v37 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSGSgMd, &_s9Coherence10CRRegisterVySSGSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v44 = v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v45 = v37 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v46 = v37 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSGMd, &_s9Coherence10CRRegisterVySSGMR);
  v12 = *(*(v11 - 8) + 56);
  v12(a2, 1, 1, v11);
  v13 = type metadata accessor for GraphableExpression.Partial(0);
  v43 = v13[5];
  v12(a2 + v43, 1, 1, v11);
  v14 = v13[6];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMR);
  v16 = *(v15 - 8);
  v17 = *(v16 + 56);
  v18 = v16 + 56;
  v42 = v14;
  v17(a2 + v14, 1, 1, v15);
  v19 = v13[7];
  v49 = a2;
  v12(a2 + v19, 1, 1, v11);
  v20 = v48;
  dispatch thunk of CRDecoder.keyedContainer()();
  v48 = v20;
  if (v20)
  {

    v21 = v49;
    goto LABEL_14;
  }

  v37[1] = v18;
  v38 = v17;
  v39 = v15;
  v40 = v11;
  v41 = v19;
  v23 = v46;
  v22 = v47;
  if (dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)())
  {
    v24 = v23;
    v25 = v48;
    CRRegister.init(from:)();
    v26 = v25;
    v21 = v49;
    v27 = v41;
    if (v25)
    {
      goto LABEL_13;
    }

    v28 = v12;
    v12(v24, 0, 1, v40);
    outlined assign with take of UUID?(v24, v21, &_s9Coherence10CRRegisterVySSGSgMd, &_s9Coherence10CRRegisterVySSGSgMR);
  }

  else
  {
    v28 = v12;
    v26 = v48;
    v21 = v49;
    v27 = v41;
  }

  v29 = v22;
  if (dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)())
  {
    v30 = v45;
    CRRegister.init(from:)();
    if (!v26)
    {
      v31 = 0;
      v28(v30, 0, 1, v40);
      outlined assign with take of UUID?(v30, v21 + v43, &_s9Coherence10CRRegisterVySSGSgMd, &_s9Coherence10CRRegisterVySSGSgMR);
      goto LABEL_11;
    }

LABEL_13:

    goto LABEL_14;
  }

  v31 = v26;
LABEL_11:
  if (dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
    _s8PaperKit5ColorVSgxSg9Coherence7CRValueA2fGRzlWlTm_0(&lazy protocol witness table cache variable for type Color? and conformance <A> A?, &lazy protocol witness table cache variable for type Color and conformance Color, &protocol conformance descriptor for Color, MEMORY[0x1E6995530]);
    CRRegister.init(from:)();
    v32 = v31;
    if (v31)
    {
      goto LABEL_13;
    }

    v38(v29, 0, 1, v39);
    outlined assign with take of UUID?(v29, v21 + v42, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMR);
  }

  else
  {
    v32 = v31;
  }

  v34 = dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)();
  v35 = v44;
  v36 = v40;
  if (!v34)
  {

    return result;
  }

  CRRegister.init(from:)();

  if (!v32)
  {
    v28(v35, 0, 1, v36);
    outlined assign with take of UUID?(v35, v21 + v27, &_s9Coherence10CRRegisterVySSGSgMd, &_s9Coherence10CRRegisterVySSGSgMR);
    return result;
  }

LABEL_14:
  outlined destroy of GraphableExpression.Partial(v21, type metadata accessor for GraphableExpression.Partial);
  return result;
}

double GraphableExpression.Partial.encode(to:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMR);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v55 = &v46 - v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMR);
  v3 = *(v2 - 8);
  v53 = v2;
  v54 = v3;
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v46 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSGSgMd, &_s9Coherence10CRRegisterVySSGSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v46 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v46 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSGMd, &_s9Coherence10CRRegisterVySSGMR);
  v56 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v46 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v46 - v22;
  v24 = v58;
  dispatch thunk of CREncoder.keyedContainer()();
  if (!v24)
  {
    v49 = v20;
    v50 = v17;
    v51 = v11;
    v48 = v8;
    v58 = 0;
    outlined init with copy of Date?(v57, v14, &_s9Coherence10CRRegisterVySSGSgMd, &_s9Coherence10CRRegisterVySSGSgMR);
    v26 = v56;
    v52 = *(v56 + 48);
    if (v52(v14, 1, v15) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v14, &_s9Coherence10CRRegisterVySSGSgMd, &_s9Coherence10CRRegisterVySSGSgMR);
      v27 = v5;
    }

    else
    {
      (*(v26 + 32))(v23, v14, v15);
      lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<String> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVySSGMd, &_s9Coherence10CRRegisterVySSGMR, MEMORY[0x1E6995080]);
      v28 = v58;
      dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
      (*(v26 + 8))(v23, v15);
      if (v28)
      {
        goto LABEL_13;
      }

      v27 = v5;
      v58 = 0;
    }

    v29 = type metadata accessor for GraphableExpression.Partial(0);
    v30 = v57;
    v31 = v51;
    outlined init with copy of Date?(v57 + *(v29 + 20), v51, &_s9Coherence10CRRegisterVySSGSgMd, &_s9Coherence10CRRegisterVySSGSgMR);
    v32 = v52(v31, 1, v15);
    v33 = v55;
    if (v32 == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v31, &_s9Coherence10CRRegisterVySSGSgMd, &_s9Coherence10CRRegisterVySSGSgMR);
      v34 = v53;
    }

    else
    {
      v47 = v29;
      v35 = v56;
      v36 = v49;
      (*(v56 + 32))(v49, v31, v15);
      lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<String> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVySSGMd, &_s9Coherence10CRRegisterVySSGMR, MEMORY[0x1E6995080]);
      v37 = v58;
      dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
      (*(v35 + 8))(v36, v15);
      if (v37)
      {
        goto LABEL_13;
      }

      v58 = 0;
      v34 = v53;
      v29 = v47;
    }

    v38 = v29;
    outlined init with copy of Date?(v30 + *(v29 + 24), v33, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMR);
    v39 = v54;
    v40 = (*(v54 + 48))(v33, 1, v34);
    v41 = v33;
    v42 = v50;
    if (v40 == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v41, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMR);
      goto LABEL_16;
    }

    (*(v39 + 32))(v27, v41, v34);
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<Color?> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMR, MEMORY[0x1E6995080]);
    v43 = v58;
    dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
    (*(v39 + 8))(v27, v34);
    if (!v43)
    {
      v58 = 0;
LABEL_16:
      v44 = v48;
      outlined init with copy of Date?(v30 + *(v38 + 28), v48, &_s9Coherence10CRRegisterVySSGSgMd, &_s9Coherence10CRRegisterVySSGSgMR);
      if (v52(v44, 1, v15) == 1)
      {

        outlined destroy of StocksKitCurrencyCache.Provider?(v44, &_s9Coherence10CRRegisterVySSGSgMd, &_s9Coherence10CRRegisterVySSGSgMR);
      }

      else
      {
        v45 = v56;
        (*(v56 + 32))(v42, v44, v15);
        lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<String> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVySSGMd, &_s9Coherence10CRRegisterVySSGMR, MEMORY[0x1E6995080]);
        dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
        (*(v45 + 8))(v42, v15);
      }

      return result;
    }

LABEL_13:
  }

  return result;
}

PaperKit::GraphableExpression::CodingKeys_optional __swiftcall GraphableExpression.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  object = stringValue._object;
  countAndFlagsBits = stringValue._countAndFlagsBits;
  v4 = v1;
  v5 = stringValue._countAndFlagsBits == 0x6973736572707865 && stringValue._object == 0xEA00000000006E6FLL;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 0;
  }

  else if (countAndFlagsBits == 0x696669746E656469 && object == 0xEA00000000007265 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 1;
  }

  else if (countAndFlagsBits == 0x726F6C6F63 && object == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 2;
  }

  else if (countAndFlagsBits == 0xD000000000000011 && 0x80000001D40848F0 == object)
  {

    v7 = 3;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v8)
    {
      v7 = 3;
    }

    else
    {
      v7 = 4;
    }
  }

  *v4 = v7;
  return result;
}

PaperKit::GraphableExpression::CodingKeys_optional __swiftcall GraphableExpression.CodingKeys.init(intValue:)(Swift::Int intValue)
{
  v2 = 4;
  if (intValue < 4)
  {
    v2 = intValue;
  }

  *v1 = v2;
  return intValue;
}

unint64_t GraphableExpression.CodingKeys.stringValue.getter()
{
  v1 = 0x6973736572707865;
  v2 = 0x726F6C6F63;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000011;
  }

  if (*v0)
  {
    v1 = 0x696669746E656469;
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

unint64_t protocol witness for CodingKey.stringValue.getter in conformance GraphableExpression.CodingKeys()
{
  v1 = 0x6973736572707865;
  v2 = 0x726F6C6F63;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000011;
  }

  if (*v0)
  {
    v1 = 0x696669746E656469;
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

uint64_t protocol witness for static IntCaseIterable.intCases.getter in conformance GraphableExpression.CodingKeys(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type GraphableExpression.CodingKeys and conformance GraphableExpression.CodingKeys();
  v5 = lazy protocol witness table accessor for type GraphableExpression.CodingKeys and conformance GraphableExpression.CodingKeys();

  return MEMORY[0x1EEDF56F8](a1, a2, v4, v5);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance GraphableExpression.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type GraphableExpression.CodingKeys and conformance GraphableExpression.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance GraphableExpression.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type GraphableExpression.CodingKeys and conformance GraphableExpression.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

id GraphableExpression.itemProvider.getter()
{
  v1 = v0;
  v2 = type metadata accessor for GraphableExpression(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = [objc_allocWithZone(MEMORY[0x1E696ACA0]) init];
  v6 = MEMORY[0x1DA6CCED0](0xD000000000000018, 0x80000001D4084910);
  outlined init with copy of GraphableExpression(v1, aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for GraphableExpression);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  outlined init with take of GraphableExpression(aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7, type metadata accessor for GraphableExpression);
  aBlock[4] = partial apply for closure #1 in GraphableExpression.registerFor(itemProvider:);
  aBlock[5] = v8;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed @escaping @callee_guaranteed @Sendable (@guaranteed Data?, @guaranteed Error?) -> ()) -> (@owned NSProgress?);
  aBlock[3] = &block_descriptor_13;
  v9 = _Block_copy(aBlock);

  [v5 registerDataRepresentationForTypeIdentifier:v6 visibility:0 loadHandler:v9];
  _Block_release(v9);

  return v5;
}

uint64_t closure #1 in GraphableExpression.registerFor(itemProvider:)(void (*a1)(uint64_t, unint64_t, void, __n128), uint64_t a2, uint64_t a3)
{
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  type metadata accessor for GraphableExpression(0);
  _s8PaperKit5ColorVAC9Coherence7CRValueAAWlTm_0(&lazy protocol witness table cache variable for type GraphableExpression and conformance GraphableExpression, type metadata accessor for GraphableExpression, &protocol conformance descriptor for GraphableExpression);
  v4 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v6 = v5;

  (a1)(v4, v6, 0);
  outlined consume of Data?(v4, v6);
  return 0;
}

id thunk for @escaping @callee_guaranteed @Sendable (@guaranteed @escaping @callee_guaranteed @Sendable (@guaranteed Data?, @guaranteed Error?) -> ()) -> (@owned NSProgress?)(uint64_t a1, void *aBlock)
{
  v2 = *(a1 + 32);
  v3 = _Block_copy(aBlock);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;

  v5 = v2(partial apply for thunk for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSData?, @unowned NSError?) -> (), v4);

  return v5;
}

void thunk for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSData?, @unowned NSError?) -> ()(__n128 a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3 >> 60 == 15)
  {
    isa = 0;
    if (a4)
    {
LABEL_3:
      v8 = _convertErrorToNSError(_:)();
      goto LABEL_6;
    }
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    if (a4)
    {
      goto LABEL_3;
    }
  }

  v8 = 0;
LABEL_6:
  v9 = v8;
  (*(a5 + 16))(a5, isa);
}

uint64_t GraphableExpression.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v57 = a1;
  v51 = a2;
  v2 = type metadata accessor for Color(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v52 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy8PaperKit19GraphableExpressionV10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy8PaperKit19GraphableExpressionV10CodingKeysOGMR);
  v54 = *(v5 - 8);
  v55 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v61 = &v43 - v6;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
  MEMORY[0x1EEE9AC00](v56);
  v49 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v43 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v43 - v12;
  v14 = type metadata accessor for GraphableExpression(0);
  v15 = (v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = 0;
  v60 = 0xE000000000000000;
  CRRegister.init(wrappedValue:)();
  v18 = v15[7];
  v59 = 0;
  v60 = 0xE000000000000000;
  v46 = v18;
  CRRegister.init(wrappedValue:)();
  v19 = v15[8];
  v20 = *(v3 + 56);
  v50 = v2;
  v53 = v3 + 56;
  v48 = v20;
  v20(v13, 1, 1, v2);
  outlined init with copy of Date?(v13, v10, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
  _s8PaperKit5ColorVSgxSg9Coherence7CRValueA2fGRzlWlTm_0(&lazy protocol witness table cache variable for type Color? and conformance <A> A?, &lazy protocol witness table cache variable for type Color and conformance Color, &protocol conformance descriptor for Color, MEMORY[0x1E6995530]);
  v47 = v19;
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v13, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
  v21 = v15[9];
  v59 = 0;
  v60 = 0xE000000000000000;
  CRRegister.init(wrappedValue:)();
  v22 = v57;
  UnknownProperties.init()();
  __swift_project_boxed_opaque_existential_1(v22, v22[3]);
  lazy protocol witness table accessor for type GraphableExpression.CodingKeys and conformance GraphableExpression.CodingKeys();
  v23 = v58;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v23)
  {
    outlined destroy of GraphableExpression.Partial(v17, type metadata accessor for GraphableExpression);
  }

  else
  {
    v56 = v21;
    v58 = v17;
    v44 = v13;
    v45 = v10;
    v24 = v52;
    LOBYTE(v59) = 0;
    v59 = KeyedDecodingContainer.decode(_:forKey:)();
    v60 = v26;
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSGMd, &_s9Coherence10CRRegisterVySSGMR);
    CRRegister.wrappedValue.setter();
    LOBYTE(v59) = 1;
    v28 = KeyedDecodingContainer.decode(_:forKey:)();
    v43 = v27;
    v59 = v28;
    v60 = v29;
    CRRegister.wrappedValue.setter();
    v30 = v24;
    LOBYTE(v59) = 2;
    _s8PaperKit5ColorVAC9Coherence7CRValueAAWlTm_0(&lazy protocol witness table cache variable for type Color and conformance Color, type metadata accessor for Color, &protocol conformance descriptor for Color);
    v31 = v49;
    v32 = v50;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v52 = 0;
    v33 = v48;
    v48(v31, 0, 1, v32);
    outlined init with take of GraphableExpression(v31, v30, type metadata accessor for Color);
    v34 = v44;
    outlined init with copy of GraphableExpression(v30, v44, type metadata accessor for Color);
    v33(v34, 0, 1, v32);
    outlined init with copy of Date?(v34, v45, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMR);
    CRRegister.wrappedValue.setter();
    outlined destroy of StocksKitCurrencyCache.Provider?(v34, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
    outlined destroy of GraphableExpression.Partial(v30, type metadata accessor for Color);
    v35 = v52;
    v36 = v55;
    v37 = v54;
    LOBYTE(v59) = 3;
    v38 = v61;
    v39 = KeyedDecodingContainer.decode(_:forKey:)();
    v41 = v51;
    if (v35)
    {

      (*(v37 + 8))(v38, v36);
      v42 = v58;
    }

    else
    {
      v59 = v39;
      v60 = v40;
      v42 = v58;
      CRRegister.wrappedValue.setter();
      (*(v37 + 8))(v38, v36);
    }

    outlined init with take of GraphableExpression(v42, v41, type metadata accessor for GraphableExpression);
  }

  return __swift_destroy_boxed_opaque_existential_0(v22);
}

uint64_t GraphableExpression.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy8PaperKit19GraphableExpressionV10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy8PaperKit19GraphableExpressionV10CodingKeysOGMR);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v9 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type GraphableExpression.CodingKeys and conformance GraphableExpression.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v13 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSGMd, &_s9Coherence10CRRegisterVySSGMR);
  lazy protocol witness table accessor for type CRRegister<String> and conformance <> CRRegister<A>();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v1)
  {
    v7 = type metadata accessor for GraphableExpression(0);
    v12 = 1;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v9[1] = *(v7 + 24);
    v11 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMR);
    lazy protocol witness table accessor for type CRRegister<Color?> and conformance <> CRRegister<A>();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v10 = 3;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t GraphableExpression.merge(_:)(uint64_t a1)
{
  v2 = type metadata accessor for MergeResult();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  GraphableExpression.merge(_:)(a1, v5);
  return (*(v3 + 8))(v5, v2);
}

uint64_t GraphableExpression.merge(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a1;
  v54 = a2;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMR);
  v45 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v44 = &v37 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v42 = &v37 - v4;
  MEMORY[0x1EEE9AC00](v5);
  v41 = &v37 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSGMd, &_s9Coherence10CRRegisterVySSGMR);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v37 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v37 - v15;
  v17 = type metadata accessor for MergeResult();
  v53 = v17;
  v55 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MergeResult.init()();
  CRRegister.projectedValue.getter();
  CRRegister.projectedValue.getter();
  CRRegister.merge(_:)();
  v20 = *(v8 + 8);
  v20(v16, v7);
  v46 = v20;
  v47 = v10;
  v21 = *(v8 + 16);
  v49 = v8 + 16;
  v50 = v21;
  v21(v10, v13, v7);
  CRRegister.projectedValue.setter();
  v20(v13, v7);
  MergeResult.merge(_:)();
  v22 = *(v55 + 8);
  v55 += 8;
  v48 = v22;
  v22(v19, v17);
  v51 = type metadata accessor for GraphableExpression(0);
  v39 = v16;
  CRRegister.projectedValue.getter();
  CRRegister.projectedValue.getter();
  CRRegister.merge(_:)();
  v23 = v16;
  v24 = v46;
  v40 = v8 + 8;
  v46(v23, v7);
  v38 = v13;
  v50(v47, v13, v7);
  CRRegister.projectedValue.setter();
  v24(v13, v7);
  MergeResult.merge(_:)();
  v48(v19, v53);
  v25 = v51;
  v26 = v41;
  v27 = v43;
  CRRegister.projectedValue.getter();
  v37 = *(v25 + 24);
  v28 = v42;
  CRRegister.projectedValue.getter();
  CRRegister.merge(_:)();
  v29 = v45;
  v30 = *(v45 + 8);
  v30(v26, v27);
  (*(v29 + 16))(v44, v28, v27);
  CRRegister.projectedValue.setter();
  v30(v28, v27);
  MergeResult.merge(_:)();
  v31 = v48;
  v48(v19, v53);
  v32 = v39;
  CRRegister.projectedValue.getter();
  v33 = v38;
  CRRegister.projectedValue.getter();
  CRRegister.merge(_:)();
  v34 = v46;
  v46(v32, v7);
  v50(v47, v33, v7);
  CRRegister.projectedValue.setter();
  v34(v33, v7);
  MergeResult.merge(_:)();
  v35 = v53;
  v31(v19, v53);
  UnknownProperties.merge(_:)();
  MergeResult.merge(_:)();
  return (v31)(v19, v35);
}

uint64_t GraphableExpression.actionUndoingDifference(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v48 = a2;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMR);
  v47 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v46 = v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v44 = v41 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit5ColorVSg_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit5ColorVSg_GSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v50 = v41 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSGMd, &_s9Coherence10CRRegisterVySSGMR);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v41 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVySS_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVySS_GSgMR);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v43 = v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v49 = v41 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v42 = v41 - v22;
  CRRegister.projectedValue.getter();
  CRRegister.projectedValue.getter();
  CRRegister.actionUndoingDifference(from:)();
  v23 = v11 + 8;
  v24 = *(v11 + 8);
  v24(v13, v10);
  v24(v16, v10);
  type metadata accessor for GraphableExpression(0);
  v41[0] = v3;
  CRRegister.projectedValue.getter();
  v41[1] = a1;
  CRRegister.projectedValue.getter();
  CRRegister.actionUndoingDifference(from:)();
  v41[2] = v23;
  v24(v13, v10);
  v24(v16, v10);
  v25 = v44;
  v26 = v45;
  CRRegister.projectedValue.getter();
  v27 = v46;
  CRRegister.projectedValue.getter();
  CRRegister.actionUndoingDifference(from:)();
  v28 = *(v47 + 8);
  v28(v27, v26);
  v28(v25, v26);
  CRRegister.projectedValue.getter();
  v29 = v43;
  CRRegister.projectedValue.getter();
  CRRegister.actionUndoingDifference(from:)();
  v30 = v13;
  v31 = v50;
  v24(v30, v10);
  v24(v16, v10);
  v32 = v42;
  v33 = v49;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVySS_GMd, &_s9Coherence10CRRegisterV14MutatingActionVySS_GMR);
  v35 = *(*(v34 - 8) + 48);
  if (v35(v32, 1, v34) == 1 && v35(v33, 1, v34) == 1 && (v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit5ColorVSg_GMd, &_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit5ColorVSg_GMR), (*(*(v36 - 8) + 48))(v31, 1, v36) == 1) && v35(v29, 1, v34) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v32, &_s9Coherence10CRRegisterV14MutatingActionVySS_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVySS_GSgMR);
    v37 = type metadata accessor for GraphableExpression.MutatingAction(0);
    (*(*(v37 - 8) + 56))(v48, 1, 1, v37);
  }

  else
  {
    v38 = v48;
    outlined init with copy of Date?(v32, v48, &_s9Coherence10CRRegisterV14MutatingActionVySS_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVySS_GSgMR);
    v39 = type metadata accessor for GraphableExpression.MutatingAction(0);
    outlined init with copy of Date?(v33, v38 + v39[5], &_s9Coherence10CRRegisterV14MutatingActionVySS_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVySS_GSgMR);
    outlined init with copy of Date?(v31, v38 + v39[6], &_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit5ColorVSg_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit5ColorVSg_GSgMR);
    outlined init with copy of Date?(v29, v38 + v39[7], &_s9Coherence10CRRegisterV14MutatingActionVySS_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVySS_GSgMR);
    outlined destroy of StocksKitCurrencyCache.Provider?(v32, &_s9Coherence10CRRegisterV14MutatingActionVySS_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVySS_GSgMR);
    (*(*(v39 - 1) + 56))(v38, 0, 1, v39);
  }

  outlined destroy of StocksKitCurrencyCache.Provider?(v29, &_s9Coherence10CRRegisterV14MutatingActionVySS_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVySS_GSgMR);
  outlined destroy of StocksKitCurrencyCache.Provider?(v31, &_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit5ColorVSg_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit5ColorVSg_GSgMR);
  return outlined destroy of StocksKitCurrencyCache.Provider?(v33, &_s9Coherence10CRRegisterV14MutatingActionVySS_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVySS_GSgMR);
}

uint64_t GraphableExpression.apply(_:)(int *a1)
{
  v29 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMR);
  v28 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v27 = v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v26 = v22 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSGMd, &_s9Coherence10CRRegisterVySSGMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v30 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v22 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit19GraphableExpressionV14MutatingActionVSgMd, &_s8PaperKit19GraphableExpressionV14MutatingActionVSgMR);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = v22 - v12;
  v14 = type metadata accessor for GraphableExpression.MutatingAction(0);
  v15 = *(v14 - 1);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Date?(v29, v13, &_s8PaperKit19GraphableExpressionV14MutatingActionVSgMd, &_s8PaperKit19GraphableExpressionV14MutatingActionVSgMR);
  v18 = *(v15 + 48);
  v29 = v14;
  if (v18(v13, 1, v14) == 1)
  {
    return outlined destroy of StocksKitCurrencyCache.Provider?(v13, &_s8PaperKit19GraphableExpressionV14MutatingActionVSgMd, &_s8PaperKit19GraphableExpressionV14MutatingActionVSgMR);
  }

  outlined init with take of GraphableExpression(v13, v17, type metadata accessor for GraphableExpression.MutatingAction);
  CRRegister.projectedValue.getter();
  CRRegister.apply(_:)();
  v23 = *(v6 + 16);
  v25 = v6 + 16;
  v23(v30, v10, v5);
  CRRegister.projectedValue.setter();
  v24 = *(v6 + 8);
  v24(v10, v5);
  v22[1] = type metadata accessor for GraphableExpression(0);
  v22[2] = v6 + 8;
  CRRegister.projectedValue.getter();
  CRRegister.apply(_:)();
  v23(v30, v10, v5);
  CRRegister.projectedValue.setter();
  v24(v10, v5);
  v20 = v26;
  CRRegister.projectedValue.getter();
  CRRegister.apply(_:)();
  v21 = v28;
  (*(v28 + 16))(v27, v20, v1);
  CRRegister.projectedValue.setter();
  (*(v21 + 8))(v20, v1);
  CRRegister.projectedValue.getter();
  CRRegister.apply(_:)();
  v23(v30, v10, v5);
  CRRegister.projectedValue.setter();
  v24(v10, v5);
  return outlined destroy of GraphableExpression.Partial(v17, type metadata accessor for GraphableExpression.MutatingAction);
}

uint64_t GraphableExpression.hasDelta(from:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMR);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v24[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v24[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSGMd, &_s9Coherence10CRRegisterVySSGMR);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v24[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v24[-v15];
  v28 = v1;
  CRRegister.projectedValue.getter();
  v27 = a1;
  CRRegister.projectedValue.getter();
  v17 = CRRegister.hasDelta(from:)();
  v18 = *(v11 + 8);
  v18(v13, v10);
  v18(v16, v10);
  if (v17 & 1) != 0 || (v26 = v4, type metadata accessor for GraphableExpression(0), CRRegister.projectedValue.getter(), CRRegister.projectedValue.getter(), v19 = CRRegister.hasDelta(from:)(), v18(v13, v10), v18(v16, v10), (v19) || (CRRegister.projectedValue.getter(), CRRegister.projectedValue.getter(), v25 = CRRegister.hasDelta(from:)(), v20 = *(v26 + 8), v20(v6, v3), v20(v9, v3), (v25) || (CRRegister.projectedValue.getter(), CRRegister.projectedValue.getter(), v21 = CRRegister.hasDelta(from:)(), v18(v13, v10), v18(v16, v10), (v21))
  {
    v22 = 1;
  }

  else
  {
    v22 = UnknownProperties.hasDelta(from:)();
  }

  return v22 & 1;
}

uint64_t GraphableExpression.init(defaultState:)@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for UnknownProperties();
  v36 = *(v2 - 8);
  v37 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v38 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMR);
  v40 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v44 = &v35 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSGMd, &_s9Coherence10CRRegisterVySSGMR);
  v6 = *(v5 - 8);
  v46 = v5;
  v47 = v6;
  MEMORY[0x1EEE9AC00](v5);
  v41 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v48 = &v35 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v35 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v35 - v17;
  v49 = 0;
  v50 = 0xE000000000000000;
  CRRegister.init(wrappedValue:)();
  v19 = type metadata accessor for GraphableExpression(0);
  v20 = v19[5];
  v49 = 0;
  v50 = 0xE000000000000000;
  v45 = v20;
  CRRegister.init(wrappedValue:)();
  v21 = v19[6];
  v22 = type metadata accessor for Color(0);
  (*(*(v22 - 8) + 56))(v18, 1, 1, v22);
  outlined init with copy of Date?(v18, v15, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
  v23 = _s8PaperKit5ColorVSgxSg9Coherence7CRValueA2fGRzlWlTm_0(&lazy protocol witness table cache variable for type Color? and conformance <A> A?, &lazy protocol witness table cache variable for type Color and conformance Color, &protocol conformance descriptor for Color, MEMORY[0x1E6995530]);
  v39 = v21;
  v43 = v13;
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v18, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
  v24 = v19[7];
  v49 = 0;
  v50 = 0xE000000000000000;
  CRRegister.init(wrappedValue:)();
  v25 = v19[8];
  UnknownProperties.init()();
  v26 = v51;
  CRRegister.init(defaultState:)();
  if (v26)
  {
    return outlined destroy of GraphableExpression.Partial(a1, type metadata accessor for GraphableExpression);
  }

  v51 = v23;
  v35 = v25;
  v28 = v45;
  v27 = v46;
  v29 = *(v47 + 40);
  v29(a1, v12, v46);
  CRRegister.init(defaultState:)();
  v29(a1 + v28, v48, v27);
  v30 = v44;
  CRRegister.init(defaultState:)();
  v31 = a1;
  (*(v40 + 40))(a1 + v39, v30, v42);
  v32 = v41;
  CRRegister.init(defaultState:)();
  v29(v31 + v24, v32, v27);
  v33 = v38;
  UnknownProperties.init(defaultState:)();
  return (*(v36 + 40))(v31 + v35, v33, v37);
}

uint64_t GraphableExpression.isDefaultState.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMR);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v14 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSGMd, &_s9Coherence10CRRegisterVySSGMR);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - v6;
  type metadata accessor for GraphableExpression(0);
  if (UnknownProperties.isDefaultState.getter() & 1) != 0 && (CRRegister.projectedValue.getter(), v8 = CRRegister.isDefaultState.getter(), v9 = *(v5 + 8), v9(v7, v4), (v8) && (CRRegister.projectedValue.getter(), v10 = CRRegister.isDefaultState.getter(), v9(v7, v4), (v10) && (CRRegister.projectedValue.getter(), v11 = CRRegister.isDefaultState.getter(), (*(v1 + 8))(v3, v0), (v11))
  {
    CRRegister.projectedValue.getter();
    v12 = CRRegister.isDefaultState.getter();
    v9(v7, v4);
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

uint64_t GraphableExpression.newRefs(from:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMR);
  v4 = *(v3 - 8);
  v34 = v3;
  v35 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v32 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v33 = &v27 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSGMd, &_s9Coherence10CRRegisterVySSGMR);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v27 - v13;
  v36 = MEMORY[0x1E69E7CD0];
  CRRegister.projectedValue.getter();
  CRRegister.projectedValue.getter();
  v15 = CRRegister.newRefs(from:)();
  v16 = *(v9 + 8);
  v16(v11, v8);
  v16(v14, v8);
  specialized Set.formUnion<A>(_:)(v15);
  type metadata accessor for GraphableExpression(0);
  v28 = v1;
  CRRegister.projectedValue.getter();
  v29 = a1;
  CRRegister.projectedValue.getter();
  v17 = CRRegister.newRefs(from:)();
  v30 = v16;
  v31 = v9 + 8;
  v16(v11, v8);
  v16(v14, v8);
  specialized Set.formUnion<A>(_:)(v17);
  v19 = v33;
  v18 = v34;
  CRRegister.projectedValue.getter();
  v20 = v32;
  CRRegister.projectedValue.getter();
  v21 = CRRegister.newRefs(from:)();
  v22 = *(v35 + 8);
  v22(v20, v18);
  v22(v19, v18);
  specialized Set.formUnion<A>(_:)(v21);
  CRRegister.projectedValue.getter();
  CRRegister.projectedValue.getter();
  v23 = CRRegister.newRefs(from:)();
  v24 = v30;
  v30(v11, v8);
  v24(v14, v8);
  specialized Set.formUnion<A>(_:)(v23);
  v25 = UnknownProperties.newRefs(from:)();
  specialized Set.formUnion<A>(_:)(v25);
  return v36;
}

Swift::Bool __swiftcall GraphableExpression.needToFinalizeTimestamps()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMR);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v15 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSGMd, &_s9Coherence10CRRegisterVySSGMR);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - v6;
  CRRegister.projectedValue.getter();
  v8 = CRRegister.needToFinalizeTimestamps()();
  v9 = *(v5 + 8);
  v9(v7, v4);
  v13 = v8 || (type metadata accessor for GraphableExpression(0), CRRegister.projectedValue.getter(), v10 = CRRegister.needToFinalizeTimestamps()(), v9(v7, v4), v10) || (CRRegister.projectedValue.getter(), v11 = CRRegister.needToFinalizeTimestamps()(), (*(v1 + 8))(v3, v0), v11) || (CRRegister.projectedValue.getter(), v12 = CRRegister.needToFinalizeTimestamps()(), v9(v7, v4), v12) || UnknownProperties.needToFinalizeTimestamps()();
  return v13;
}

uint64_t GraphableExpression.finalizeTimestamps(_:)(uint64_t a1)
{
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMR);
  v26 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v25 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v23 = &v19 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSGMd, &_s9Coherence10CRRegisterVySSGMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v19 - v10;
  CRRegister.projectedValue.getter();
  CRRegister.finalizeTimestamps(_:)();
  v12 = *(v6 + 16);
  v28 = v6 + 16;
  v12(v8, v11, v5);
  v21 = v12;
  CRRegister.projectedValue.setter();
  v27 = *(v6 + 8);
  v27(v11, v5);
  v22 = v6 + 8;
  v19 = type metadata accessor for GraphableExpression(0);
  CRRegister.projectedValue.getter();
  v20 = a1;
  CRRegister.finalizeTimestamps(_:)();
  v12(v8, v11, v5);
  CRRegister.projectedValue.setter();
  v27(v11, v5);
  v13 = v23;
  v14 = v24;
  CRRegister.projectedValue.getter();
  v15 = v13;
  CRRegister.finalizeTimestamps(_:)();
  v16 = v26;
  (*(v26 + 16))(v25, v15, v14);
  CRRegister.projectedValue.setter();
  (*(v16 + 8))(v15, v14);
  CRRegister.projectedValue.getter();
  v17 = v20;
  CRRegister.finalizeTimestamps(_:)();
  v21(v8, v11, v5);
  CRRegister.projectedValue.setter();
  v27(v11, v5);
  return MEMORY[0x1DA6CBA30](v17);
}

uint64_t GraphableExpression.minEncodingVersion.getter@<X0>(uint64_t a1@<X8>)
{
  v91 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMR);
  v80 = *(v2 - 8);
  v81 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v79 = &v72 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSGMd, &_s9Coherence10CRRegisterVySSGMR);
  v92 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v76 = &v72 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v84 = &v72 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v72 - v9;
  v11 = type metadata accessor for CRCodableVersion();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v75 = &v72 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v77 = &v72 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v78 = &v72 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v82 = &v72 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v83 = &v72 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v72 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v86 = &v72 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v72 - v28;
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v72 - v31;
  v85 = type metadata accessor for GraphableExpression(0);
  v90 = v1;
  UnknownProperties.minEncodingVersion.getter();
  v33 = *(v12 + 104);
  v88 = *MEMORY[0x1E6995288];
  v89 = v12 + 104;
  v87 = v33;
  v33(v29);
  v34 = static CRCodableVersion.== infix(_:_:)();
  v35 = *(v12 + 8);
  v35(v29, v11);
  if (v34)
  {
    return (*(v12 + 32))(v91, v32, v11);
  }

  CRRegister.projectedValue.getter();
  CRRegister.minEncodingVersion.getter();
  v73 = *(v92 + 8);
  v92 += 8;
  v73(v10, v4);
  v74 = _s8PaperKit5ColorVAC9Coherence7CRValueAAWlTm_0(&lazy protocol witness table cache variable for type CRCodableVersion and conformance CRCodableVersion, MEMORY[0x1E6995298], MEMORY[0x1E69952A0]);
  v37 = dispatch thunk of static Comparable.>= infix(_:_:)();
  v38 = (v37 & 1) == 0;
  if (v37)
  {
    v39 = v32;
  }

  else
  {
    v39 = v24;
  }

  if (v38)
  {
    v40 = v32;
  }

  else
  {
    v40 = v24;
  }

  v35(v39, v11);
  v41 = *(v12 + 32);
  v42 = v86;
  v41(v86, v40, v11);
  v41(v32, v42, v11);
  v87(v29, v88, v11);
  v43 = static CRCodableVersion.== infix(_:_:)();
  v35(v29, v11);
  if (v43)
  {
    return (v41)(v91, v32, v11);
  }

  v44 = v35;
  v45 = v41;
  v46 = v84;
  CRRegister.projectedValue.getter();
  v72 = v44;
  v47 = v82;
  CRRegister.minEncodingVersion.getter();
  v84 = v4;
  v73(v46, v4);
  v48 = dispatch thunk of static Comparable.>= infix(_:_:)();
  v49 = (v48 & 1) == 0;
  if (v48)
  {
    v50 = v32;
  }

  else
  {
    v50 = v47;
  }

  if (v49)
  {
    v51 = v32;
  }

  else
  {
    v51 = v47;
  }

  v52 = v72;
  v72(v50, v11);
  v53 = v83;
  v45(v83, v51, v11);
  v86 = v45;
  v45(v32, v53, v11);
  v87(v29, v88, v11);
  v54 = static CRCodableVersion.== infix(_:_:)();
  v52(v29, v11);
  if (v54)
  {
    return (v86)(v91, v32, v11);
  }

  v55 = v52;
  v56 = v79;
  v57 = v81;
  CRRegister.projectedValue.getter();
  v58 = v55;
  v59 = v77;
  CRRegister.minEncodingVersion.getter();
  (*(v80 + 8))(v56, v57);
  v60 = dispatch thunk of static Comparable.>= infix(_:_:)();
  v61 = (v60 & 1) == 0;
  if (v60)
  {
    v62 = v32;
  }

  else
  {
    v62 = v59;
  }

  if (v61)
  {
    v63 = v32;
  }

  else
  {
    v63 = v59;
  }

  v58(v62, v11);
  v64 = v78;
  v65 = v86;
  (v86)(v78, v63, v11);
  v65(v32, v64, v11);
  v87(v29, v88, v11);
  v66 = static CRCodableVersion.== infix(_:_:)();
  v58(v29, v11);
  if (v66)
  {
    goto LABEL_29;
  }

  v67 = v84;
  v68 = v76;
  CRRegister.projectedValue.getter();
  v69 = v75;
  CRRegister.minEncodingVersion.getter();
  v73(v68, v67);
  if ((dispatch thunk of static Comparable.>= infix(_:_:)() & 1) == 0)
  {
    v58(v69, v11);
LABEL_29:
    v70 = v91;
    v71 = v32;
    return (v65)(v70, v71, v11);
  }

  v58(v32, v11);
  v70 = v91;
  v71 = v69;
  return (v65)(v70, v71, v11);
}

uint64_t GraphableExpression.observableDifference(from:with:)@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v50 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMR);
  v6 = *(v5 - 8);
  v48 = v5;
  v49 = v6;
  MEMORY[0x1EEE9AC00](v5);
  v47 = v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v44 = v41 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSGMd, &_s9Coherence10CRRegisterVySSGMR);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v41 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence27CRValueObservableDifferenceOSgMd, &_s9Coherence27CRValueObservableDifferenceOSgMR);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v46 = v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v52 = v41 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v53 = v41 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v45 = v41 - v24;
  v51 = v3;
  CRRegister.projectedValue.getter();
  CRRegister.projectedValue.getter();
  CRRegister.observableDifference(from:with:)();
  v25 = *(v11 + 8);
  v25(v13, v10);
  v25(v16, v10);
  type metadata accessor for GraphableExpression(0);
  CRRegister.projectedValue.getter();
  v41[1] = a1;
  CRRegister.projectedValue.getter();
  CRRegister.observableDifference(from:with:)();
  v42 = v25;
  v43 = v11 + 8;
  v25(v13, v10);
  v25(v16, v10);
  v26 = v44;
  v27 = v48;
  CRRegister.projectedValue.getter();
  v28 = v47;
  CRRegister.projectedValue.getter();
  CRRegister.observableDifference(from:with:)();
  v29 = *(v49 + 8);
  v30 = v28;
  v31 = v46;
  v29(v30, v27);
  v29(v26, v27);
  CRRegister.projectedValue.getter();
  CRRegister.projectedValue.getter();
  v32 = v45;
  CRRegister.observableDifference(from:with:)();
  v33 = v42;
  v42(v13, v10);
  v33(v16, v10);
  v34 = v52;
  v35 = type metadata accessor for CRValueObservableDifference();
  v36 = *(*(v35 - 8) + 48);
  if (v36(v32, 1, v35) == 1 && v36(v53, 1, v35) == 1 && v36(v34, 1, v35) == 1 && v36(v31, 1, v35) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v32, &_s9Coherence27CRValueObservableDifferenceOSgMd, &_s9Coherence27CRValueObservableDifferenceOSgMR);
    v37 = type metadata accessor for GraphableExpression.ObservableDifference(0);
    (*(*(v37 - 8) + 56))(v50, 1, 1, v37);
  }

  else
  {
    v38 = v50;
    outlined init with copy of Date?(v32, v50, &_s9Coherence27CRValueObservableDifferenceOSgMd, &_s9Coherence27CRValueObservableDifferenceOSgMR);
    v39 = type metadata accessor for GraphableExpression.ObservableDifference(0);
    outlined init with copy of Date?(v53, v38 + v39[5], &_s9Coherence27CRValueObservableDifferenceOSgMd, &_s9Coherence27CRValueObservableDifferenceOSgMR);
    outlined init with copy of Date?(v34, v38 + v39[6], &_s9Coherence27CRValueObservableDifferenceOSgMd, &_s9Coherence27CRValueObservableDifferenceOSgMR);
    outlined init with copy of Date?(v31, v38 + v39[7], &_s9Coherence27CRValueObservableDifferenceOSgMd, &_s9Coherence27CRValueObservableDifferenceOSgMR);
    outlined destroy of StocksKitCurrencyCache.Provider?(v32, &_s9Coherence27CRValueObservableDifferenceOSgMd, &_s9Coherence27CRValueObservableDifferenceOSgMR);
    (*(*(v39 - 1) + 56))(v38, 0, 1, v39);
  }

  outlined destroy of StocksKitCurrencyCache.Provider?(v31, &_s9Coherence27CRValueObservableDifferenceOSgMd, &_s9Coherence27CRValueObservableDifferenceOSgMR);
  outlined destroy of StocksKitCurrencyCache.Provider?(v34, &_s9Coherence27CRValueObservableDifferenceOSgMd, &_s9Coherence27CRValueObservableDifferenceOSgMR);
  return outlined destroy of StocksKitCurrencyCache.Provider?(v53, &_s9Coherence27CRValueObservableDifferenceOSgMd, &_s9Coherence27CRValueObservableDifferenceOSgMR);
}

void GraphableExpression.encode(to:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMR);
  v21 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v3 = v18 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSGMd, &_s9Coherence10CRRegisterVySSGMR);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v18 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = v18 - v12;
  dispatch thunk of CREncoder.keyedContainer()();
  if (!v0)
  {
    v19 = v7;
    v20 = v3;
    CRRegister.projectedValue.getter();
    v14 = lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<String> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVySSGMd, &_s9Coherence10CRRegisterVySSGMR, MEMORY[0x1E6995080]);
    dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
    v15 = *(v5 + 8);
    v15(v13, v4);
    v18[2] = type metadata accessor for GraphableExpression(0);
    CRRegister.projectedValue.getter();
    dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
    v15(v10, v4);
    v18[1] = v14;
    v16 = v20;
    CRRegister.projectedValue.getter();
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<Color?> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMR, MEMORY[0x1E6995080]);
    dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
    (*(v21 + 8))(v16, v1);
    v17 = v19;
    CRRegister.projectedValue.getter();
    dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
    v15(v17, v4);
    UnknownProperties.encode(to:)();
  }
}

uint64_t GraphableExpression.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v100 = a1;
  v3 = type metadata accessor for UnknownProperties();
  v85 = *(v3 - 8);
  v86 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v84 = &v76 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_9Coherence7AnyCRDTVtSgMd, &_sSS_9Coherence7AnyCRDTVtSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v91 = (&v76 - v6);
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_9Coherence7AnyCRDTVtMd, &_sSS_9Coherence7AnyCRDTVtMR);
  v87 = *(v90 - 8);
  MEMORY[0x1EEE9AC00](v90);
  v82 = &v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v81 = &v76 - v9;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMR);
  v88 = *(v93 - 8);
  MEMORY[0x1EEE9AC00](v93);
  v92 = &v76 - v10;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSGMd, &_s9Coherence10CRRegisterVySSGMR);
  v94 = *(v98 - 1);
  MEMORY[0x1EEE9AC00](v98);
  v89 = &v76 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v97 = (&v76 - v13);
  MEMORY[0x1EEE9AC00](v14);
  v96 = &v76 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v76 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v76 - v20;
  v101 = 0;
  v102 = 0xE000000000000000;
  CRRegister.init(wrappedValue:)();
  v22 = type metadata accessor for GraphableExpression(0);
  v23 = v22[5];
  v101 = 0;
  v102 = 0xE000000000000000;
  v95 = v23;
  CRRegister.init(wrappedValue:)();
  v24 = v22[6];
  v25 = type metadata accessor for Color(0);
  (*(*(v25 - 8) + 56))(v21, 1, 1, v25);
  outlined init with copy of Date?(v21, v18, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
  v26 = _s8PaperKit5ColorVSgxSg9Coherence7CRValueA2fGRzlWlTm_0(&lazy protocol witness table cache variable for type Color? and conformance <A> A?, &lazy protocol witness table cache variable for type Color and conformance Color, &protocol conformance descriptor for Color, MEMORY[0x1E6995530]);
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v21, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
  v27 = v22[7];
  v101 = 0;
  v102 = 0xE000000000000000;
  CRRegister.init(wrappedValue:)();
  v28 = v22[8];
  UnknownProperties.init()();
  v29 = v99;
  v30 = dispatch thunk of CRDecoder.keyedContainer()();
  if (v29)
  {

    v31 = a2;
    return outlined destroy of GraphableExpression.Partial(v31, type metadata accessor for GraphableExpression);
  }

  else
  {
    v78 = v27;
    v80 = v26;
    v83 = a2;
    v33 = v95;
    v34 = v96;
    v99 = v24;
    v35 = v97;
    v79 = v16;
    v77 = v28;
    v36 = v30;
    if (dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)())
    {
      CRRegister.init(from:)();
      v37 = v98;
      (*(v94 + 40))(v83, v34, v98);
    }

    else
    {
      v37 = v98;
    }

    if (dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)())
    {
      CRRegister.init(from:)();
      (*(v94 + 40))(v83 + v33, v35, v37);
    }

    v38 = dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)();
    v39 = v93;
    v40 = v99;
    if (v38)
    {
      v41 = v92;
      CRRegister.init(from:)();
      (*(v88 + 40))(v83 + v40, v41, v39);
    }

    v42 = dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)();
    v43 = v78;
    if (v42)
    {
      v44 = v89;
      CRRegister.init(from:)();
      v45 = v83;
      (*(v94 + 40))(v83 + v43, v44, v98);
    }

    else
    {
      v45 = v83;
    }

    v46 = dispatch thunk of CRDecoder.CRDTKeyedContainer.allKeys()();
    v99 = v36;
    v47 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(v46);

    v101 = v47;
    specialized Set._Variant.remove(_:)(0x6973736572707865, 0xEA00000000006E6FLL);

    specialized Set._Variant.remove(_:)(0x696669746E656469, 0xEA00000000007265);

    specialized Set._Variant.remove(_:)(0x726F6C6F63, 0xE500000000000000);

    specialized Set._Variant.remove(_:)(0xD000000000000011, 0x80000001D40848F0);

    v48 = v101;
    v49 = v101 + 56;
    v50 = 1 << *(v101 + 32);
    v51 = -1;
    if (v50 < 64)
    {
      v51 = ~(-1 << v50);
    }

    v52 = v51 & *(v101 + 56);
    v53 = (v50 + 63) >> 6;
    v98 = (v87 + 56);

    v54 = 0;
    v97 = MEMORY[0x1E69E7CC0];
LABEL_17:
    v55 = v54;
    if (!v52)
    {
      goto LABEL_19;
    }

    do
    {
      v54 = v55;
LABEL_22:
      v56 = __clz(__rbit64(v52));
      v52 &= v52 - 1;
      v57 = (*(v48 + 48) + ((v54 << 10) | (16 * v56)));
      v59 = *v57;
      v58 = v57[1];

      if (dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)())
      {
        v61 = v90;
        v96 = *(v90 + 48);
        v62 = v91;
        *v91 = v59;
        v62[1] = v58;
        v63 = v62;

        AnyCRDT.init(from:)();

        (*v98)(v63, 0, 1, v61);
        v64 = v81;
        outlined init with take of (String, AnyCRDT)(v63, v81);
        outlined init with take of (String, AnyCRDT)(v64, v82);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v97 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v97[2] + 1, 1, v97);
        }

        v65 = v82;
        v45 = v83;
        v66 = v87;
        v68 = v97[2];
        v67 = v97[3];
        if (v68 >= v67 >> 1)
        {
          v70 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v67 > 1), v68 + 1, 1, v97);
          v66 = v87;
          v97 = v70;
          v65 = v82;
        }

        v69 = v97;
        v97[2] = v68 + 1;
        outlined init with take of (String, AnyCRDT)(v65, v69 + ((*(v66 + 80) + 32) & ~*(v66 + 80)) + *(v66 + 72) * v68);
        goto LABEL_17;
      }

      v60 = v91;
      (*v98)(v91, 1, 1, v90);
      outlined destroy of StocksKitCurrencyCache.Provider?(v60, &_sSS_9Coherence7AnyCRDTVtSgMd, &_sSS_9Coherence7AnyCRDTVtSgMR);
      v55 = v54;
      v45 = v83;
    }

    while (v52);
    while (1)
    {
LABEL_19:
      v54 = v55 + 1;
      if (__OFADD__(v55, 1))
      {
        __break(1u);

        swift_bridgeObjectRelease_n();
        v31 = v83;
        return outlined destroy of GraphableExpression.Partial(v31, type metadata accessor for GraphableExpression);
      }

      if (v54 >= v53)
      {
        break;
      }

      v52 = *(v49 + 8 * v54);
      ++v55;
      if (v52)
      {
        goto LABEL_22;
      }
    }

    v71 = v97;
    if (v97[2])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS9Coherence7AnyCRDTVGMd, &_ss18_DictionaryStorageCySS9Coherence7AnyCRDTVGMR);
      v72 = static _DictionaryStorage.allocate(capacity:)();
    }

    else
    {
      v72 = MEMORY[0x1E69E7CC8];
    }

    v74 = v85;
    v73 = v86;
    v75 = v84;
    v103 = v72;
    specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v71, 1, &v103);
    UnknownProperties.init(_:)();

    return (*(v74 + 40))(v45 + v77, v75, v73);
  }
}

uint64_t GraphableExpression.delta(_:from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v68 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMR);
  v7 = *(v6 - 8);
  v75 = v6;
  v76 = v7;
  MEMORY[0x1EEE9AC00](v6);
  v67 = v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v66 = v61 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMR);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v71 = v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v77 = v61 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSGMd, &_s9Coherence10CRRegisterVySSGMR);
  v65 = *(v15 - 8);
  v16 = v65;
  MEMORY[0x1EEE9AC00](v15);
  v18 = v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = v61 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSGSgMd, &_s9Coherence10CRRegisterVySSGSgMR);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v70 = v61 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v69 = v61 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v61[0] = v61 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v73 = v61 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v74 = v61 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v72 = v61 - v33;
  CRRegister.projectedValue.getter();
  CRRegister.projectedValue.getter();
  CRRegister.delta(_:from:)();
  v34 = *(v16 + 8);
  v34(v18, v15);
  v34(v21, v15);
  type metadata accessor for GraphableExpression(0);
  v62 = v3;
  CRRegister.projectedValue.getter();
  v63 = a2;
  CRRegister.projectedValue.getter();
  v61[1] = a1;
  CRRegister.delta(_:from:)();
  v64 = v34;
  v34(v18, v15);
  v34(v21, v15);
  v35 = v66;
  v36 = v75;
  CRRegister.projectedValue.getter();
  v37 = v67;
  CRRegister.projectedValue.getter();
  v38 = v37;
  CRRegister.delta(_:from:)();
  v39 = *(v76 + 8);
  v39(v38, v36);
  v40 = v36;
  v41 = v72;
  v39(v35, v40);
  v42 = v73;
  CRRegister.projectedValue.getter();
  CRRegister.projectedValue.getter();
  CRRegister.delta(_:from:)();
  v43 = v64;
  v64(v18, v15);
  v43(v21, v15);
  v44 = v74;
  v45 = v77;
  v46 = v65;
  v47 = *(v65 + 48);
  if (v47(v41, 1, v15) == 1 && v47(v44, 1, v15) == 1 && (*(v76 + 48))(v45, 1, v75) == 1 && v47(v42, 1, v15) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v41, &_s9Coherence10CRRegisterVySSGSgMd, &_s9Coherence10CRRegisterVySSGSgMR);
    v48 = type metadata accessor for GraphableExpression.Partial(0);
    (*(*(v48 - 8) + 56))(v68, 1, 1, v48);
  }

  else
  {
    v49 = v41;
    v50 = v61[0];
    outlined init with copy of Date?(v49, v61[0], &_s9Coherence10CRRegisterVySSGSgMd, &_s9Coherence10CRRegisterVySSGSgMR);
    outlined init with copy of Date?(v44, v69, &_s9Coherence10CRRegisterVySSGSgMd, &_s9Coherence10CRRegisterVySSGSgMR);
    outlined init with copy of Date?(v45, v71, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMR);
    outlined init with copy of Date?(v42, v70, &_s9Coherence10CRRegisterVySSGSgMd, &_s9Coherence10CRRegisterVySSGSgMR);
    v51 = *(v46 + 56);
    v52 = v68;
    v51(v68, 1, 1, v15);
    v53 = type metadata accessor for GraphableExpression.Partial(0);
    v54 = v44;
    v55 = v53[5];
    v51(v52 + v55, 1, 1, v15);
    v56 = v53[6];
    (*(v76 + 56))(v52 + v56, 1, 1, v75);
    v57 = v53[7];
    v51(v52 + v57, 1, 1, v15);
    v45 = v77;
    outlined assign with take of UUID?(v50, v52, &_s9Coherence10CRRegisterVySSGSgMd, &_s9Coherence10CRRegisterVySSGSgMR);
    v58 = v52 + v55;
    v44 = v54;
    outlined assign with take of UUID?(v69, v58, &_s9Coherence10CRRegisterVySSGSgMd, &_s9Coherence10CRRegisterVySSGSgMR);
    outlined assign with take of UUID?(v71, v52 + v56, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMR);
    outlined assign with take of UUID?(v70, v52 + v57, &_s9Coherence10CRRegisterVySSGSgMd, &_s9Coherence10CRRegisterVySSGSgMR);
    outlined destroy of StocksKitCurrencyCache.Provider?(v72, &_s9Coherence10CRRegisterVySSGSgMd, &_s9Coherence10CRRegisterVySSGSgMR);
    v59 = v52;
    v42 = v73;
    (*(*(v53 - 1) + 56))(v59, 0, 1, v53);
  }

  outlined destroy of StocksKitCurrencyCache.Provider?(v42, &_s9Coherence10CRRegisterVySSGSgMd, &_s9Coherence10CRRegisterVySSGSgMR);
  outlined destroy of StocksKitCurrencyCache.Provider?(v45, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMR);
  return outlined destroy of StocksKitCurrencyCache.Provider?(v44, &_s9Coherence10CRRegisterVySSGSgMd, &_s9Coherence10CRRegisterVySSGSgMR);
}

BOOL GraphableExpression.canMerge(delta:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v57 = &v52 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMR);
  v58 = *(v4 - 8);
  v59 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v55 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v54 = &v52 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSGSgMd, &_s9Coherence10CRRegisterVySSGSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v56 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v52 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v52 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSGMd, &_s9Coherence10CRRegisterVySSGMR);
  MEMORY[0x1EEE9AC00](v16);
  v53 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v52 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v52 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v52 - v25;
  v61 = a1;
  v28 = v27;
  outlined init with copy of Date?(a1, v15, &_s9Coherence10CRRegisterVySSGSgMd, &_s9Coherence10CRRegisterVySSGSgMR);
  v62 = *(v28 + 48);
  v29 = v62(v15, 1, v16);
  v60 = v28;
  if (v29 == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v15, &_s9Coherence10CRRegisterVySSGSgMd, &_s9Coherence10CRRegisterVySSGSgMR);
  }

  else
  {
    (*(v28 + 32))(v26, v15, v16);
    CRRegister.projectedValue.getter();
    v30 = CRRegister.canMerge(delta:)();
    v31 = *(v28 + 8);
    v31(v23, v16);
    v31(v26, v16);
    if ((v30 & 1) == 0)
    {
      return 0;
    }
  }

  v32 = type metadata accessor for GraphableExpression.Partial(0);
  v33 = v61;
  outlined init with copy of Date?(v61 + v32[5], v12, &_s9Coherence10CRRegisterVySSGSgMd, &_s9Coherence10CRRegisterVySSGSgMR);
  if (v62(v12, 1, v16) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v12, &_s9Coherence10CRRegisterVySSGSgMd, &_s9Coherence10CRRegisterVySSGSgMR);
  }

  else
  {
    v34 = v60;
    (*(v60 + 32))(v20, v12, v16);
    type metadata accessor for GraphableExpression(0);
    CRRegister.projectedValue.getter();
    v35 = CRRegister.canMerge(delta:)();
    v36 = *(v34 + 8);
    v36(v23, v16);
    v36(v20, v16);
    v33 = v61;
    if ((v35 & 1) == 0)
    {
      return 0;
    }
  }

  v37 = v57;
  outlined init with copy of Date?(v33 + v32[6], v57, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMR);
  v39 = v58;
  v38 = v59;
  if ((*(v58 + 48))(v37, 1, v59) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v37, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMR);
  }

  else
  {
    v40 = *(v39 + 32);
    v61 = v32;
    v41 = v54;
    v40(v54, v37, v38);
    type metadata accessor for GraphableExpression(0);
    v42 = v55;
    CRRegister.projectedValue.getter();
    v43 = CRRegister.canMerge(delta:)();
    v44 = *(v39 + 8);
    v44(v42, v38);
    v45 = v41;
    v32 = v61;
    v44(v45, v38);
    if ((v43 & 1) == 0)
    {
      return 0;
    }
  }

  v46 = v56;
  outlined init with copy of Date?(v33 + v32[7], v56, &_s9Coherence10CRRegisterVySSGSgMd, &_s9Coherence10CRRegisterVySSGSgMR);
  if (v62(v46, 1, v16) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v46, &_s9Coherence10CRRegisterVySSGSgMd, &_s9Coherence10CRRegisterVySSGSgMR);
    return 1;
  }

  v47 = v60;
  v48 = v53;
  (*(v60 + 32))(v53, v46, v16);
  type metadata accessor for GraphableExpression(0);
  CRRegister.projectedValue.getter();
  v49 = CRRegister.canMerge(delta:)();
  v50 = *(v47 + 8);
  v50(v23, v16);
  v50(v48, v16);
  return (v49 & 1) != 0;
}

BOOL GraphableExpression.merge(delta:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v49 - v4;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMR);
  v62 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v55 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v54 = &v49 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v53 = &v49 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSGSgMd, &_s9Coherence10CRRegisterVySSGSgMR);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v61 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v49 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v49 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSGMd, &_s9Coherence10CRRegisterVySSGMR);
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v57 = &v49 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v49 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v63 = &v49 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v49 - v28;
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v49 - v31;
  v64 = v1;
  v33 = GraphableExpression.canMerge(delta:)(a1);
  if (v33)
  {
    v52 = v33;
    outlined init with copy of Date?(a1, v18, &_s9Coherence10CRRegisterVySSGSgMd, &_s9Coherence10CRRegisterVySSGSgMR);
    v58 = *(v20 + 48);
    v59 = v20 + 48;
    v34 = v58(v18, 1, v19);
    v56 = a1;
    if (v34 == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v18, &_s9Coherence10CRRegisterVySSGSgMd, &_s9Coherence10CRRegisterVySSGSgMR);
    }

    else
    {
      (*(v20 + 32))(v32, v18, v19);
      CRRegister.projectedValue.getter();
      CRRegister.merge(delta:)();
      (*(v20 + 16))(v63, v29, v19);
      CRRegister.projectedValue.setter();
      v35 = *(v20 + 8);
      v35(v29, v19);
      v35(v32, v19);
      a1 = v56;
    }

    v36 = type metadata accessor for GraphableExpression.Partial(0);
    outlined init with copy of Date?(a1 + v36[5], v15, &_s9Coherence10CRRegisterVySSGSgMd, &_s9Coherence10CRRegisterVySSGSgMR);
    if (v58(v15, 1, v19) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v15, &_s9Coherence10CRRegisterVySSGSgMd, &_s9Coherence10CRRegisterVySSGSgMR);
    }

    else
    {
      (*(v20 + 32))(v24, v15, v19);
      type metadata accessor for GraphableExpression(0);
      CRRegister.projectedValue.getter();
      CRRegister.merge(delta:)();
      (*(v20 + 16))(v63, v29, v19);
      CRRegister.projectedValue.setter();
      v37 = *(v20 + 8);
      v37(v29, v19);
      v37(v24, v19);
      a1 = v56;
    }

    v38 = v5;
    outlined init with copy of Date?(a1 + v36[6], v5, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMR);
    v39 = v62;
    v40 = v60;
    if ((*(v62 + 48))(v5, 1, v60) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v5, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMR);
    }

    else
    {
      v41 = v53;
      (*(v39 + 32))(v53, v38, v40);
      type metadata accessor for GraphableExpression(0);
      v50 = v36;
      v51 = v20;
      v42 = v54;
      CRRegister.projectedValue.getter();
      CRRegister.merge(delta:)();
      (*(v39 + 16))(v55, v42, v40);
      v20 = v51;
      CRRegister.projectedValue.setter();
      a1 = v56;
      v43 = *(v39 + 8);
      v44 = v42;
      v36 = v50;
      v43(v44, v40);
      v43(v41, v40);
    }

    v45 = v61;
    outlined init with copy of Date?(a1 + v36[7], v61, &_s9Coherence10CRRegisterVySSGSgMd, &_s9Coherence10CRRegisterVySSGSgMR);
    if (v58(v45, 1, v19) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v45, &_s9Coherence10CRRegisterVySSGSgMd, &_s9Coherence10CRRegisterVySSGSgMR);
    }

    else
    {
      v46 = v57;
      (*(v20 + 32))(v57, v45, v19);
      type metadata accessor for GraphableExpression(0);
      CRRegister.projectedValue.getter();
      CRRegister.merge(delta:)();
      (*(v20 + 16))(v63, v29, v19);
      CRRegister.projectedValue.setter();
      v47 = *(v20 + 8);
      v47(v29, v19);
      v47(v46, v19);
    }

    LOBYTE(v33) = v52;
  }

  return v33;
}

uint64_t protocol witness for CRDT.context.getter in conformance GraphableExpression(uint64_t a1)
{
  v2 = _s8PaperKit5ColorVAC9Coherence7CRValueAAWlTm_0(&lazy protocol witness table cache variable for type GraphableExpression and conformance GraphableExpression, type metadata accessor for GraphableExpression, &protocol conformance descriptor for GraphableExpression);

  return MEMORY[0x1EEDF5248](a1, v2);
}

uint64_t protocol witness for CRMergeable.merge(_:) in conformance GraphableExpression(uint64_t a1)
{
  v2 = type metadata accessor for MergeResult();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  GraphableExpression.merge(_:)(a1, v5);
  return (*(v3 + 8))(v5, v2);
}

uint64_t _s8PaperKit5ColorVAC9Coherence7CRValueAAWlTm_0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t outlined init with copy of GraphableExpression(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t partial apply for closure #1 in GraphableExpression.registerFor(itemProvider:)(void (*a1)(uint64_t, unint64_t, void, __n128), uint64_t a2)
{
  v5 = *(type metadata accessor for GraphableExpression(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return closure #1 in GraphableExpression.registerFor(itemProvider:)(a1, a2, v6);
}

double block_copy_helper_13(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

unint64_t lazy protocol witness table accessor for type GraphableExpression.CodingKeys and conformance GraphableExpression.CodingKeys()
{
  result = lazy protocol witness table cache variable for type GraphableExpression.CodingKeys and conformance GraphableExpression.CodingKeys;
  if (!lazy protocol witness table cache variable for type GraphableExpression.CodingKeys and conformance GraphableExpression.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GraphableExpression.CodingKeys and conformance GraphableExpression.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GraphableExpression.CodingKeys and conformance GraphableExpression.CodingKeys;
  if (!lazy protocol witness table cache variable for type GraphableExpression.CodingKeys and conformance GraphableExpression.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GraphableExpression.CodingKeys and conformance GraphableExpression.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GraphableExpression.CodingKeys and conformance GraphableExpression.CodingKeys;
  if (!lazy protocol witness table cache variable for type GraphableExpression.CodingKeys and conformance GraphableExpression.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GraphableExpression.CodingKeys and conformance GraphableExpression.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GraphableExpression.CodingKeys and conformance GraphableExpression.CodingKeys;
  if (!lazy protocol witness table cache variable for type GraphableExpression.CodingKeys and conformance GraphableExpression.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GraphableExpression.CodingKeys and conformance GraphableExpression.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GraphableExpression.CodingKeys and conformance GraphableExpression.CodingKeys;
  if (!lazy protocol witness table cache variable for type GraphableExpression.CodingKeys and conformance GraphableExpression.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GraphableExpression.CodingKeys and conformance GraphableExpression.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GraphableExpression.CodingKeys and conformance GraphableExpression.CodingKeys;
  if (!lazy protocol witness table cache variable for type GraphableExpression.CodingKeys and conformance GraphableExpression.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GraphableExpression.CodingKeys and conformance GraphableExpression.CodingKeys);
  }

  return result;
}

uint64_t outlined destroy of GraphableExpression.Partial(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with take of GraphableExpression(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t lazy protocol witness table accessor for type CRRegister<String> and conformance <> CRRegister<A>()
{
  result = lazy protocol witness table cache variable for type CRRegister<String> and conformance <> CRRegister<A>;
  if (!lazy protocol witness table cache variable for type CRRegister<String> and conformance <> CRRegister<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s9Coherence10CRRegisterVySSGMd, &_s9Coherence10CRRegisterVySSGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CRRegister<String> and conformance <> CRRegister<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CRRegister<Color?> and conformance <> CRRegister<A>()
{
  result = lazy protocol witness table cache variable for type CRRegister<Color?> and conformance <> CRRegister<A>;
  if (!lazy protocol witness table cache variable for type CRRegister<Color?> and conformance <> CRRegister<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMR);
    _s8PaperKit5ColorVSgxSg9Coherence7CRValueA2fGRzlWlTm_0(&lazy protocol witness table cache variable for type Color? and conformance <A> A?, &lazy protocol witness table cache variable for type Color and conformance Color, &protocol conformance descriptor for Color, MEMORY[0x1E69E7C70]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CRRegister<Color?> and conformance <> CRRegister<A>);
  }

  return result;
}

uint64_t _s8PaperKit5ColorVSgxSg9Coherence7CRValueA2fGRzlWlTm_0(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
    _s8PaperKit5ColorVAC9Coherence7CRValueAAWlTm_0(a2, type metadata accessor for Color, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t specialized static GraphableExpression.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMR);
  v30 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v29 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v28 = v26 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSGMd, &_s9Coherence10CRRegisterVySSGMR);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v26 - v13;
  v31 = a1;
  CRRegister.projectedValue.getter();
  CRRegister.projectedValue.getter();
  v15 = lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<String> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVySSGMd, &_s9Coherence10CRRegisterVySSGMR, MEMORY[0x1E6995090]);
  v16 = dispatch thunk of static Equatable.== infix(_:_:)();
  v17 = *(v9 + 8);
  v17(v11, v8);
  v17(v14, v8);
  if (v16 & 1) != 0 && (v18 = type metadata accessor for GraphableExpression(0), CRRegister.projectedValue.getter(), CRRegister.projectedValue.getter(), v19 = dispatch thunk of static Equatable.== infix(_:_:)(), v17(v11, v8), v17(v14, v8), (v19) && (v26[1] = v15, v20 = v28, CRRegister.projectedValue.getter(), v26[0] = v18, v26[2] = a2, v21 = v29, CRRegister.projectedValue.getter(), lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<Color?> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMR, MEMORY[0x1E6995090]), v27 = dispatch thunk of static Equatable.== infix(_:_:)(), v22 = *(v30 + 8), v22(v21, v4), v22(v20, v4), (v27) && (CRRegister.projectedValue.getter(), CRRegister.projectedValue.getter(), v23 = dispatch thunk of static Equatable.== infix(_:_:)(), v17(v11, v8), v17(v14, v8), (v23))
  {
    v24 = static UnknownProperties.== infix(_:_:)();
  }

  else
  {
    v24 = 0;
  }

  return v24 & 1;
}

uint64_t outlined init with take of (String, AnyCRDT)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_9Coherence7AnyCRDTVtMd, &_sSS_9Coherence7AnyCRDTVtMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void type metadata completion function for GraphableExpression(uint64_t a1)
{
  type metadata accessor for CRRegister<String>();
  if (v1 <= 0x3F)
  {
    type metadata accessor for CRRegister<Color?>(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for UnknownProperties();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata completion function for GraphableExpression.ObservableDifference(uint64_t a1)
{
  type metadata accessor for CRValueObservableDifference?(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void type metadata completion function for GraphableExpression.MutatingAction(uint64_t a1)
{
  type metadata accessor for Ref<PKStrokeInheritedProperties>.ObservableDifference?(319, &lazy cache variable for type metadata for CRRegister<String>.MutatingAction?, &_s9Coherence10CRRegisterV14MutatingActionVySS_GMd, &_s9Coherence10CRRegisterV14MutatingActionVySS_GMR);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Ref<PKStrokeInheritedProperties>.ObservableDifference?(319, &lazy cache variable for type metadata for CRRegister<Color?>.MutatingAction?, &_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit5ColorVSg_GMd, &_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit5ColorVSg_GMR);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_42Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v13 = *(v12 - 8);
  if (*(v13 + 84) == a2)
  {
    v14 = *(v13 + 48);

    return v14(a1, a2, v12);
  }

  else
  {
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(a6, a7);
    v17 = *(*(v16 - 8) + 48);
    v18 = a1 + *(a3 + 24);

    return v17(v18, a2, v16);
  }
}

uint64_t __swift_store_extra_inhabitant_index_43Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v15 = *(v14 - 8);
  if (*(v15 + 84) == a3)
  {
    v16 = *(v15 + 56);

    return v16(a1, a2, a2, v14);
  }

  else
  {
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    v19 = *(*(v18 - 8) + 56);
    v20 = a1 + *(a4 + 24);

    return v19(v20, a2, a2, v18);
  }
}

void type metadata completion function for GraphableExpression.Partial(uint64_t a1)
{
  type metadata accessor for Ref<PKStrokeInheritedProperties>.ObservableDifference?(319, &lazy cache variable for type metadata for CRRegister<String>?, &_s9Coherence10CRRegisterVySSGMd, &_s9Coherence10CRRegisterVySSGMR);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Ref<PKStrokeInheritedProperties>.ObservableDifference?(319, &lazy cache variable for type metadata for CRRegister<Color?>?, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMR);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t getEnumTagSinglePayload for GraphableExpression.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for GraphableExpression.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t type metadata accessor for MagicPaperUsageReflowEvent(uint64_t a1)
{
  result = type metadata singleton initialization cache for MagicPaperUsageReflowEvent;
  if (!type metadata singleton initialization cache for MagicPaperUsageReflowEvent)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for MagicPaperUsageReflowEvent(uint64_t a1)
{
  type metadata accessor for String?();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Date?(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for String?()
{
  if (!lazy cache variable for type metadata for String?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for String?);
    }
  }
}

void type metadata accessor for Date?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Date?)
  {
    type metadata accessor for Date();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Date?);
    }
  }
}

uint64_t getEnumTagSinglePayload for MagicPaperUsageReflowEvent.InvocationPath(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for MagicPaperUsageReflowEvent.InvocationPath(uint64_t result, unsigned int a2, unsigned int a3)
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

Swift::Int protocol witness for Hashable.hashValue.getter in conformance MagicPaperUsageReflowEvent.InvocationPath()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1DA6CE810](v1 + 1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MagicPaperUsageReflowEvent.InvocationPath(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  MEMORY[0x1DA6CE810](v2 + 1);
  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance MagicPaperUsageReflowEvent.InvocationPath@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized MagicPaperUsageReflowEvent.InvocationPath.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type MagicPaperUsageReflowEvent.InvocationPath and conformance MagicPaperUsageReflowEvent.InvocationPath()
{
  result = lazy protocol witness table cache variable for type MagicPaperUsageReflowEvent.InvocationPath and conformance MagicPaperUsageReflowEvent.InvocationPath;
  if (!lazy protocol witness table cache variable for type MagicPaperUsageReflowEvent.InvocationPath and conformance MagicPaperUsageReflowEvent.InvocationPath)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MagicPaperUsageReflowEvent.InvocationPath and conformance MagicPaperUsageReflowEvent.InvocationPath);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MagicPaperUsageReflowEvent.InvocationPath and conformance MagicPaperUsageReflowEvent.InvocationPath;
  if (!lazy protocol witness table cache variable for type MagicPaperUsageReflowEvent.InvocationPath and conformance MagicPaperUsageReflowEvent.InvocationPath)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MagicPaperUsageReflowEvent.InvocationPath and conformance MagicPaperUsageReflowEvent.InvocationPath);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MagicPaperUsageReflowEvent.InvocationPath and conformance MagicPaperUsageReflowEvent.InvocationPath;
  if (!lazy protocol witness table cache variable for type MagicPaperUsageReflowEvent.InvocationPath and conformance MagicPaperUsageReflowEvent.InvocationPath)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MagicPaperUsageReflowEvent.InvocationPath and conformance MagicPaperUsageReflowEvent.InvocationPath);
  }

  return result;
}

unint64_t MagicPaperUsageReflowEvent.CodingKeys.rawValue.getter(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 0x6C69636E65507369;
    v7 = 0x79636E6574616CLL;
    v8 = 0x697461636F766E69;
    if (a1 != 3)
    {
      v8 = 0xD000000000000016;
    }

    if (a1 != 2)
    {
      v7 = v8;
    }

    if (a1)
    {
      v6 = 0x656C61636F6CLL;
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
    v1 = 0x6F7274735F6D756ELL;
    v2 = 0x747865745F6D756ELL;
    if (a1 != 9)
    {
      v2 = 1868852853;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000011;
    v4 = 0x6874616D5F6D756ELL;
    if (a1 != 6)
    {
      v4 = 0xD000000000000012;
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

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance MagicPaperUsageReflowEvent.CodingKeys(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = MagicPaperUsageReflowEvent.CodingKeys.rawValue.getter(*a1);
  v5 = v4;
  if (v3 == MagicPaperUsageReflowEvent.CodingKeys.rawValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance MagicPaperUsageReflowEvent.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MagicPaperUsageReflowEvent.CodingKeys.rawValue.getter(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

double protocol witness for Hashable.hash(into:) in conformance MagicPaperUsageReflowEvent.CodingKeys(uint64_t a1)
{
  MagicPaperUsageReflowEvent.CodingKeys.rawValue.getter(*v1);
  String.hash(into:)();

  return result;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MagicPaperUsageReflowEvent.CodingKeys(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  MagicPaperUsageReflowEvent.CodingKeys.rawValue.getter(v2);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance MagicPaperUsageReflowEvent.CodingKeys@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized MagicPaperUsageReflowEvent.CodingKeys.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance MagicPaperUsageReflowEvent.CodingKeys@<X0>(unint64_t *a1@<X8>)
{
  result = MagicPaperUsageReflowEvent.CodingKeys.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t protocol witness for CodingKey.init(stringValue:) in conformance MagicPaperUsageReflowEvent.CodingKeys@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = specialized MagicPaperUsageReflowEvent.CodingKeys.init(rawValue:)(a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MagicPaperUsageReflowEvent.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MagicPaperUsageReflowEvent.CodingKeys and conformance MagicPaperUsageReflowEvent.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MagicPaperUsageReflowEvent.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MagicPaperUsageReflowEvent.CodingKeys and conformance MagicPaperUsageReflowEvent.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t MagicPaperUsageReflowEvent.countReflownMetrics(from:)(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC8PaperKit14ReflowTextView_layoutManager);
  swift_beginAccess();
  v2 = *(v1 + 80);
  v20 = MEMORY[0x1E69E7CC0];
  v3 = v2 & 0xFFFFFFFFFFFFFF8;
  if (v2 >> 62)
  {
LABEL_37:
    v4 = __CocoaSet.count.getter();
  }

  else
  {
    v4 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v6 = 0;
    v7 = MEMORY[0x1E69E7CC0];
    while (2)
    {
      v8 = v6;
      while (1)
      {
        if ((v2 & 0xC000000000000001) != 0)
        {
          MEMORY[0x1DA6CE0C0](v8, v2);
          v6 = v8 + 1;
          if (__OFADD__(v8, 1))
          {
            goto LABEL_34;
          }
        }

        else
        {
          if (v8 >= *(v3 + 16))
          {
            goto LABEL_35;
          }

          v6 = v8 + 1;
          if (__OFADD__(v8, 1))
          {
LABEL_34:
            __break(1u);
LABEL_35:
            __break(1u);
LABEL_36:
            __break(1u);
            goto LABEL_37;
          }
        }

        type metadata accessor for ReflowWord();
        if (swift_dynamicCastClass())
        {
          break;
        }

        ++v8;
        if (v6 == v4)
        {
          goto LABEL_20;
        }
      }

      MEMORY[0x1DA6CD190]();
      if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v7 = v20;
      if (v6 != v4)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

LABEL_20:

  v20 = v5;
  if (v7 >> 62)
  {
    v2 = __CocoaSet.count.getter();
    if (v2)
    {
      goto LABEL_22;
    }

LABEL_39:
    v12 = MEMORY[0x1E69E7CC0];
    goto LABEL_40;
  }

  v2 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    goto LABEL_39;
  }

LABEL_22:
  v9 = 0;
  while ((v7 & 0xC000000000000001) != 0)
  {
    v10 = MEMORY[0x1DA6CE0C0](v9, v7);
    v11 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      goto LABEL_32;
    }

LABEL_28:
    if (CGRectEqualToRect(*(v10 + 16), *(v10 + 48)))
    {
    }

    else
    {
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v3 = *(v5 + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    ++v9;
    if (v11 == v2)
    {
      goto LABEL_33;
    }
  }

  if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_36;
  }

  v10 = *(v7 + 8 * v9 + 32);

  v11 = v9 + 1;
  if (!__OFADD__(v9, 1))
  {
    goto LABEL_28;
  }

LABEL_32:
  __break(1u);
LABEL_33:
  v12 = v5;
LABEL_40:

  if ((v12 & 0x8000000000000000) != 0 || (v12 & 0x4000000000000000) != 0)
  {
LABEL_58:
    v13 = __CocoaSet.count.getter();
  }

  else
  {
    v13 = *(v12 + 16);
  }

  v14 = 0;
  v15 = 0;
  while (v13 != v14)
  {
    if ((v12 & 0xC000000000000001) != 0)
    {
      v18 = MEMORY[0x1DA6CE0C0](v14, v12);
      if (__OFADD__(v14, 1))
      {
LABEL_54:
        __break(1u);
        break;
      }
    }

    else
    {
      if (v14 >= *(v12 + 16))
      {
        __break(1u);
LABEL_57:
        __break(1u);
        goto LABEL_58;
      }

      v18 = *(v12 + 8 * v14 + 32);

      if (__OFADD__(v14, 1))
      {
        goto LABEL_54;
      }
    }

    if (*(v18 + 328))
    {
      v16 = String.count.getter();
    }

    else
    {
      v16 = 0;
    }

    ++v14;
    v17 = __OFADD__(v15, v16);
    v15 += v16;
    if (v17)
    {
      goto LABEL_57;
    }
  }

  return v13;
}

Swift::Void __swiftcall MagicPaperUsageReflowEvent.finalize()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v31 - v3;
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v31 - v10;
  v12 = type metadata accessor for MagicPaperUsageReflowEvent(0);
  v13 = *(v12 + 64);
  if ((*(v1 + v13) & 1) == 0)
  {
    v14 = v12;
    outlined init with copy of Date?(v1 + *(v12 + 28), v4);
    if ((*(v6 + 48))(v4, 1, v5) == 1)
    {
      outlined destroy of Date?(v4);
    }

    else
    {
      (*(v6 + 32))(v11, v4, v5);
      Date.init()();
      Date.timeIntervalSince(_:)();
      v16 = v15;
      v17 = *(v6 + 8);
      v17(v8, v5);
      v17(v11, v5);
      v18 = v16 * 1000.0;
      *(v1 + 24) = v18;
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v20 = Strong;
      v21 = MagicPaperUsageReflowEvent.countReflownMetrics(from:)(Strong);
      v23 = v22;

      *(v1 + *(v14 + 56)) = v21;
      *(v1 + *(v14 + 52)) = v23;
    }

    v24 = swift_unknownObjectWeakLoadStrong();
    v25 = [objc_opt_self() activePencil];
    v26 = [v25 isConnected];

    *v1 = v26;
    v31[1] = static Locale.preferredLanguages.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance [A]();
    v27 = BidirectionalCollection<>.joined(separator:)();
    v29 = v28;

    *(v1 + 8) = v27;
    *(v1 + 16) = v29;
    if (v24)
    {
      v30 = v24;
      specialized MagicPaperUsageAnalyticsEvent.countGroups(in:)(v30);
    }

    *(v1 + v13) = 1;
  }
}

uint64_t MagicPaperUsageReflowEvent.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy8PaperKit05MagicD16UsageReflowEventV10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy8PaperKit05MagicD16UsageReflowEventV10CodingKeysOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MagicPaperUsageReflowEvent.CodingKeys and conformance MagicPaperUsageReflowEvent.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v10[14] = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v10[13] = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v10[12] = *(v3 + *(type metadata accessor for MagicPaperUsageReflowEvent(0) + 32));
    v10[11] = 3;
    lazy protocol witness table accessor for type MagicPaperUsageReflowEvent.InvocationPath and conformance MagicPaperUsageReflowEvent.InvocationPath();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v10[10] = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    v10[9] = 5;
    KeyedEncodingContainer.encode(_:forKey:)();
    v10[8] = 6;
    KeyedEncodingContainer.encode(_:forKey:)();
    v10[7] = 7;
    KeyedEncodingContainer.encode(_:forKey:)();
    v10[6] = 8;
    KeyedEncodingContainer.encode(_:forKey:)();
    v10[5] = 9;
    KeyedEncodingContainer.encode(_:forKey:)();
    v10[4] = 10;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t protocol witness for AnalyticsEvent.undoEvent() in conformance MagicPaperUsageReflowEvent@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2;
  v8 = MEMORY[0x1EEE9AC00](v4);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v6 + *(v11 + 68)) == 1)
  {
    v12 = *(v7 + 56);

    return v12(a2, 1, 1, a1, v8);
  }

  else
  {
    v18 = v7;
    outlined init with copy of MagicPaperUsageReflowEvent(v6, v10);
    v14 = a1[7];
    outlined destroy of Date?(&v10[v14]);
    v15 = type metadata accessor for Date();
    (*(*(v15 - 8) + 56))(&v10[v14], 1, 1, v15);
    v16 = a1[16];
    v10[a1[15]] = 1;
    v10[v16] = 0;
    outlined init with copy of MagicPaperUsageReflowEvent(v10, a2);
    (*(v18 + 56))(a2, 0, 1, a1);
    return outlined destroy of MagicPaperUsageReflowEvent(v10);
  }
}

uint64_t instantiation function for generic protocol witness table for MagicPaperUsageReflowEvent(uint64_t a1)
{
  result = lazy protocol witness table accessor for type MagicPaperUsageReflowEvent and conformance MagicPaperUsageReflowEvent(&lazy protocol witness table cache variable for type MagicPaperUsageReflowEvent and conformance MagicPaperUsageReflowEvent, &protocol conformance descriptor for MagicPaperUsageReflowEvent);
  *(a1 + 8) = result;
  return result;
}

{
  result = lazy protocol witness table accessor for type MagicPaperUsageReflowEvent and conformance MagicPaperUsageReflowEvent(&lazy protocol witness table cache variable for type MagicPaperUsageReflowEvent and conformance MagicPaperUsageReflowEvent, &protocol conformance descriptor for MagicPaperUsageReflowEvent);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type MagicPaperUsageReflowEvent and conformance MagicPaperUsageReflowEvent(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MagicPaperUsageReflowEvent(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined init with copy of MagicPaperUsageReflowEvent(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MagicPaperUsageReflowEvent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of Date?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined destroy of MagicPaperUsageReflowEvent(uint64_t a1)
{
  v2 = type metadata accessor for MagicPaperUsageReflowEvent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with copy of Date?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type [String] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [String] and conformance [A];
  if (!lazy protocol witness table cache variable for type [String] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySSGMd, &_sSaySSGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [String] and conformance [A]);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MagicPaperUsageReflowEvent.CodingKeys and conformance MagicPaperUsageReflowEvent.CodingKeys()
{
  result = lazy protocol witness table cache variable for type MagicPaperUsageReflowEvent.CodingKeys and conformance MagicPaperUsageReflowEvent.CodingKeys;
  if (!lazy protocol witness table cache variable for type MagicPaperUsageReflowEvent.CodingKeys and conformance MagicPaperUsageReflowEvent.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MagicPaperUsageReflowEvent.CodingKeys and conformance MagicPaperUsageReflowEvent.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MagicPaperUsageReflowEvent.CodingKeys and conformance MagicPaperUsageReflowEvent.CodingKeys;
  if (!lazy protocol witness table cache variable for type MagicPaperUsageReflowEvent.CodingKeys and conformance MagicPaperUsageReflowEvent.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MagicPaperUsageReflowEvent.CodingKeys and conformance MagicPaperUsageReflowEvent.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MagicPaperUsageReflowEvent.CodingKeys and conformance MagicPaperUsageReflowEvent.CodingKeys;
  if (!lazy protocol witness table cache variable for type MagicPaperUsageReflowEvent.CodingKeys and conformance MagicPaperUsageReflowEvent.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MagicPaperUsageReflowEvent.CodingKeys and conformance MagicPaperUsageReflowEvent.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MagicPaperUsageReflowEvent.CodingKeys and conformance MagicPaperUsageReflowEvent.CodingKeys;
  if (!lazy protocol witness table cache variable for type MagicPaperUsageReflowEvent.CodingKeys and conformance MagicPaperUsageReflowEvent.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MagicPaperUsageReflowEvent.CodingKeys and conformance MagicPaperUsageReflowEvent.CodingKeys);
  }

  return result;
}

uint64_t specialized MagicPaperUsageReflowEvent.InvocationPath.init(rawValue:)(unint64_t a1)
{
  if (a1 >= 6)
  {
    return 5;
  }

  else
  {
    return (0x40302010005uLL >> (8 * a1));
  }
}

uint64_t getEnumTagSinglePayload for MagicPaperUsageReflowEvent.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for MagicPaperUsageReflowEvent.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t specialized MagicPaperUsageReflowEvent.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of MagicPaperUsageReflowEvent.CodingKeys.init(rawValue:), v2);

  if (v3 >= 0xB)
  {
    return 11;
  }

  else
  {
    return v3;
  }
}

BOOL specialized CRRegister<>.hasSolvedMathExpression<A>(in:)(uint64_t a1)
{
  v82 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit12TaggedStrokeOGMd, &_s9Coherence10CRRegisterVy8PaperKit12TaggedStrokeOGMR);
  v67 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v78 = &v64 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd, &_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMR);
  v66 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v77 = &v64 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGSgMd, &_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v65 = &v64 - v6;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRSequenceV8IteratorVyAA3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGG_GMd, &_s9Coherence10CRSequenceV8IteratorVyAA3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGG_GMR);
  v68 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79);
  v81 = &v64 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRSequenceVyACyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGGSgMd, &_s9Coherence3RefVyAA10CRSequenceVyACyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGGSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v76 = &v64 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRSequenceVyAA3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGMd, &_s9Coherence10CRSequenceVyAA3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGMR);
  v73 = *(v10 - 8);
  v74 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v64 = &v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v72 = &v64 - v13;
  v14 = type metadata accessor for PKStrokeProperties(0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v75 = &v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for TaggedStroke(0);
  MEMORY[0x1EEE9AC00](v16);
  v71 = &v64 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v70 = &v64 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v64 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v64 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit14PKStrokeStructVGSgMd, &_s9Coherence3RefVy8PaperKit14PKStrokeStructVGSgMR);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v28 = &v64 - v27;
  v69 = type metadata accessor for PKStrokeStruct(0);
  MEMORY[0x1EEE9AC00](v69);
  v30 = &v64 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v64 - v32;
  v80 = v1;
  CRRegister.value.getter();
  outlined init with take of PKDrawingStruct(v25, v22, type metadata accessor for TaggedStroke);
  if (swift_getEnumCaseMultiPayload())
  {
    outlined destroy of PKDrawingStruct(v22, type metadata accessor for TaggedStroke);
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit14PKStrokeStructVGMd, &_s9Coherence3RefVy8PaperKit14PKStrokeStructVGMR);
    (*(*(v34 - 8) + 56))(v28, 1, 1, v34);
  }

  else
  {
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit14PKStrokeStructVGMd, &_s9Coherence3RefVy8PaperKit14PKStrokeStructVGMR);
    v36 = *(v35 - 8);
    (*(v36 + 32))(v28, v22, v35);
    (*(v36 + 56))(v28, 0, 1, v35);
  }

  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit14PKStrokeStructVGMd, &_s9Coherence3RefVy8PaperKit14PKStrokeStructVGMR);
  v38 = *(v37 - 8);
  if ((*(v38 + 48))(v28, 1, v37) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v28, &_s9Coherence3RefVy8PaperKit14PKStrokeStructVGSgMd, &_s9Coherence3RefVy8PaperKit14PKStrokeStructVGSgMR);
    v39 = v70;
    CRRegister.value.getter();
    v40 = v71;
    outlined init with take of PKDrawingStruct(v39, v71, type metadata accessor for TaggedStroke);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRSequenceVyACyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGGMd, &_s9Coherence3RefVyAA10CRSequenceVyACyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGGMR);
      v42 = *(v41 - 8);
      v43 = v76;
      (*(v42 + 32))(v76, v40, v41);
      (*(v42 + 56))(v43, 0, 1, v41);
    }

    else
    {
      outlined destroy of PKDrawingStruct(v40, type metadata accessor for TaggedStroke);
      v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRSequenceVyACyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGGMd, &_s9Coherence3RefVyAA10CRSequenceVyACyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGGMR);
      v43 = v76;
      (*(*(v48 - 8) + 56))(v76, 1, 1, v48);
    }

    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRSequenceVyACyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGGMd, &_s9Coherence3RefVyAA10CRSequenceVyACyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGGMR);
    v50 = *(v49 - 8);
    if ((*(v50 + 48))(v43, 1, v49) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v43, &_s9Coherence3RefVyAA10CRSequenceVyACyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGGSgMd, &_s9Coherence3RefVyAA10CRSequenceVyACyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGGSgMR);
    }

    else
    {
      v51 = type metadata accessor for Paper(0);
      v52 = lazy protocol witness table accessor for type Paper and conformance Paper();
      v53 = v64;
      v75 = v52;
      v76 = v51;
      Ref.subscript.getter();
      (*(v50 + 8))(v43, v49);
      (*(v73 + 32))(v72, v53, v74);
      CRSequence.makeIterator()();
      v54 = (v66 + 48);
      v55 = (v66 + 32);
      v56 = (v67 + 8);
      v57 = (v66 + 8);
      v58 = v65;
      while (1)
      {
        CRSequence.Iterator.next()();
        if ((*v54)(v58, 1, v3) == 1)
        {
          break;
        }

        v59 = v77;
        (*v55)(v77, v58, v3);
        v60 = v3;
        v61 = v78;
        v62 = v82;
        Ref.subscript.getter();
        LOBYTE(v62) = specialized CRRegister<>.hasSolvedMathExpression<A>(in:)(v62);
        v63 = v61;
        v3 = v60;
        (*v56)(v63, v80);
        (*v57)(v59, v60);
        if (v62)
        {
          (*(v68 + 8))(v81, v79);
          (*(v73 + 8))(v72, v74);
          return 1;
        }
      }

      (*(v68 + 8))(v81, v79);
      (*(v73 + 8))(v72, v74);
    }

    return 0;
  }

  else
  {
    type metadata accessor for Paper(0);
    lazy protocol witness table accessor for type Paper and conformance Paper();
    Ref.subscript.getter();
    (*(v38 + 8))(v28, v37);
    outlined init with take of PKDrawingStruct(v30, v33, type metadata accessor for PKStrokeStruct);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGMd, &_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGMR);
    v44 = v75;
    CRRegister.wrappedValue.getter();
    v45 = *v44;
    outlined destroy of PKDrawingStruct(v44, type metadata accessor for PKStrokeProperties);
    shouldSolveMath_getter = _So13PKStrokeFlagsa34__Unnamed_union___Anonymous_field0V02__c10_struct___e1_F0V_shouldSolveMath_getter(v45 & 0xFFFFFFFFFFFFLL);
    outlined destroy of PKDrawingStruct(v33, type metadata accessor for PKStrokeStruct);
    return shouldSolveMath_getter != 0;
  }
}

BOOL Capsule<>.hasGraph.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit12GraphElementVGSgMd, &_s9Coherence3RefVy8PaperKit12GraphElementVGSgMR);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v27 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMR);
  v33 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v27 - v4;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetV8IteratorVyAA15SharedTagged_10Vy8PaperKit0F13CanvasElementVG_GMd, &_s9Coherence12CROrderedSetV8IteratorVyAA15SharedTagged_10Vy8PaperKit0F13CanvasElementVG_GMR);
  v31 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v7 = &v27 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd, &_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMR);
  v32 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v27 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMd, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMR);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v29 = &v27 - v18;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C0VGMd, &_s9Coherence7CapsuleVy8PaperKit0C0VGMR);
  Capsule.subscript.getter();

  v19 = *(v32 + 16);
  v28 = v13;
  v19(v10, v13, v8);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CROrderedSet<SharedTagged_10<TaggedCanvasElement>> and conformance CROrderedSet<A>, &_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd, &_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMR, MEMORY[0x1E6995150]);
  v30 = v8;
  dispatch thunk of Sequence.makeIterator()();
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CROrderedSet<SharedTagged_10<TaggedCanvasElement>>.Iterator and conformance CROrderedSet<A>.Iterator, &_s9Coherence12CROrderedSetV8IteratorVyAA15SharedTagged_10Vy8PaperKit0F13CanvasElementVG_GMd, &_s9Coherence12CROrderedSetV8IteratorVyAA15SharedTagged_10Vy8PaperKit0F13CanvasElementVG_GMR, MEMORY[0x1E6995120]);
  v20 = v27;
  dispatch thunk of IteratorProtocol.next()();
  v35 = *(v33 + 48);
  v36 = v33 + 48;
  if (v35(v16, 1, v3) == 1)
  {
LABEL_5:
    (*(v31 + 8))(v7, v20);
    (*(v32 + 8))(v28, v30);
    v23 = 1;
    v24 = v29;
  }

  else
  {
    v34 = *(v33 + 32);
    v21 = (v33 + 8);
    while (1)
    {
      v34(v5, v16, v3);
      SharedTagged_10.tagged3.getter();
      v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit12GraphElementVGMd, &_s9Coherence3RefVy8PaperKit12GraphElementVGMR);
      if ((*(*(v22 - 8) + 48))(v2, 1, v22) != 1)
      {
        break;
      }

      (*v21)(v5, v3);
      outlined destroy of StocksKitCurrencyCache.Provider?(v2, &_s9Coherence3RefVy8PaperKit12GraphElementVGSgMd, &_s9Coherence3RefVy8PaperKit12GraphElementVGSgMR);
      dispatch thunk of IteratorProtocol.next()();
      if (v35(v16, 1, v3) == 1)
      {
        goto LABEL_5;
      }
    }

    (*(v31 + 8))(v7, v20);
    (*(v32 + 8))(v28, v30);
    outlined destroy of StocksKitCurrencyCache.Provider?(v2, &_s9Coherence3RefVy8PaperKit12GraphElementVGSgMd, &_s9Coherence3RefVy8PaperKit12GraphElementVGSgMR);
    v24 = v29;
    v34(v29, v5, v3);
    v23 = 0;
  }

  (*(v33 + 56))(v24, v23, 1, v3);
  v25 = v35(v24, 1, v3) != 1;
  outlined destroy of StocksKitCurrencyCache.Provider?(v24, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMd, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMR);
  return v25;
}

uint64_t Capsule<>.hasSolvedMathExpression.getter()
{
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit12TaggedStrokeOGMd, &_s9Coherence10CRRegisterVy8PaperKit12TaggedStrokeOGMR);
  v38 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v44 = &v35 - v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd, &_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMR);
  v37 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v43 = &v35 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGSgMd, &_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v35 - v5;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetV8IteratorVyAA3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGG_GMd, &_s9Coherence12CROrderedSetV8IteratorVyAA3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGG_GMR);
  v7 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v9 = &v35 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMR);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v35 - v11;
  v42 = type metadata accessor for PKDrawingStruct(0);
  MEMORY[0x1EEE9AC00](v42);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v35 - v16;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C0VGMd, &_s9Coherence7CapsuleVy8PaperKit0C0VGMR);
  Capsule.subscript.getter();
  v18 = v12;

  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGMd, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGMR);
  v20 = *(v19 - 8);
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v18, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMR);
  }

  else
  {
    v36 = v7;
    v21 = type metadata accessor for Paper(0);
    v22 = lazy protocol witness table accessor for type Paper and conformance Paper();
    v40 = v21;
    v41 = v0;
    v39 = v22;
    Ref.subscript.getter();
    (*(v20 + 8))(v18, v19);
    outlined init with take of PKDrawingStruct(v14, v17, type metadata accessor for PKDrawingStruct);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGMd, &_s9Coherence12CROrderedSetVyAA3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGMR);
    v35 = v17;
    v42 = v9;
    CROrderedSet.makeIterator()();
    v23 = (v37 + 48);
    v24 = (v37 + 32);
    v25 = (v38 + 8);
    v26 = (v37 + 8);
    v27 = v43;
    v28 = v41;
    while (1)
    {
      v29 = v42;
      CROrderedSet.Iterator.next()();
      if ((*v23)(v6, 1, v2) == 1)
      {
        break;
      }

      (*v24)(v27, v6, v2);
      v30 = v6;
      v31 = v44;
      Ref.subscript.getter();
      v32 = specialized CRRegister<>.hasSolvedMathExpression<A>(in:)(v28);
      v33 = v31;
      v6 = v30;
      (*v25)(v33, v45);
      (*v26)(v27, v2);
      if (v32)
      {
        (*(v36 + 8))(v42, v46);
        outlined destroy of PKDrawingStruct(v35, type metadata accessor for PKDrawingStruct);
        return 1;
      }
    }

    (*(v36 + 8))(v29, v46);
    outlined destroy of PKDrawingStruct(v35, type metadata accessor for PKDrawingStruct);
  }

  return 0;
}

unint64_t lazy protocol witness table accessor for type Paper and conformance Paper()
{
  result = lazy protocol witness table cache variable for type Paper and conformance Paper;
  if (!lazy protocol witness table cache variable for type Paper and conformance Paper)
  {
    type metadata accessor for Paper(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Paper and conformance Paper);
  }

  return result;
}

uint64_t Capsule<>.hasMath.getter()
{
  if (Capsule<>.hasGraph.getter())
  {
    return 1;
  }

  return Capsule<>.hasSolvedMathExpression.getter();
}

uint64_t outlined init with take of PKDrawingStruct(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of PKDrawingStruct(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t CanvasElementImageRenderer.__allocating_init(size:scale:opaque:colorSpace:headroom:)(char a1, void *a2, uint64_t a3, char a4, double a5, double a6, double a7)
{
  v13 = a2;
  v14 = 1;
  if (!CGColorSpaceUsesExtendedRange(v13))
  {
    v14 = MEMORY[0x1DA6CEC30](v13);
  }

  type metadata accessor for ImageRenderer();
  v15 = swift_allocObject();
  *(v15 + 16) = 1;
  *(v15 + 24) = a5;
  *(v15 + 32) = a6;
  *(v15 + 40) = a7;
  *(v15 + 48) = a1 & 1;
  *(v15 + 49) = v14;
  *(v15 + 56) = a3;
  *(v15 + 64) = a4 & 1;
  *(v15 + 72) = v13;
  *(v15 + 80) = 1;
  type metadata accessor for CanvasElementImageRenderer();
  v16 = swift_allocObject();
  v18 = specialized CanvasElementImageRenderer.init(renderer:)(v15, v16, v17);

  *(v18 + 74) = 0;
  return v18;
}

uint64_t CanvasElementImageRenderer.__allocating_init(size:scale:)(__n128 a1, double a2, double a3)
{
  v5 = a1.n128_u64[0];
  type metadata accessor for ImageRenderer();
  v6 = swift_allocObject();
  *(v6 + 16) = 1;
  *(v6 + 24) = v5;
  *(v6 + 32) = a2;
  *(v6 + 40) = a3;
  *(v6 + 48) = 0;
  *(v6 + 56) = 0;
  *(v6 + 64) = 1;
  *(v6 + 72) = 0;
  *(v6 + 80) = 1;
  type metadata accessor for CanvasElementImageRenderer();
  v7 = swift_allocObject();

  return specialized CanvasElementImageRenderer.init(renderer:)(v6, v7, v8);
}

void key path setter for CanvasElementRenderer.backgroundColor : CanvasElementRenderer(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 56);
  *(v3 + 56) = v2;
  v5 = v2;
}

void *CanvasElementRenderer.backgroundColor.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 56);
  v2 = v1;
  return v1;
}

void CanvasElementRenderer.backgroundColor.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 56);
  *(v1 + 56) = a1;
}

void key path setter for CanvasElementRenderer.tintColor : CanvasElementRenderer(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 64);
  *(v3 + 64) = v2;
  v5 = v2;
}

void *CanvasElementRenderer.tintColor.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 64);
  v2 = v1;
  return v1;
}

void CanvasElementRenderer.tintColor.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 64);
  *(v1 + 64) = a1;
}

uint64_t CanvasElementRenderer.sixChannelBlending.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 72) = a1;
  return result;
}

uint64_t CanvasElementRenderer.render<A, B>(_:in:bounds:darkMode:isRTL:output:renderingLoupe:cacheAggressively:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5, uint64_t a6, char a7, char a8, double a9, double a10, double a11, double a12)
{
  *(v13 + 472) = v19;
  *(v13 + 480) = v12;
  *(v13 + 464) = v18;
  *(v13 + 448) = v17;
  *(v13 + 544) = a8;
  *(v13 + 143) = a7;
  *(v13 + 440) = a6;
  *(v13 + 142) = a5;
  *(v13 + 141) = a4;
  *(v13 + 424) = a11;
  *(v13 + 432) = a12;
  *(v13 + 408) = a9;
  *(v13 + 416) = a10;
  *(v13 + 392) = a2;
  *(v13 + 400) = a3;
  *(v13 + 384) = a1;
  v14 = type metadata accessor for CRKeyPath();
  *(v13 + 488) = v14;
  *(v13 + 496) = *(v14 - 8);
  *(v13 + 504) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](CanvasElementRenderer.render<A, B>(_:in:bounds:darkMode:isRTL:output:renderingLoupe:cacheAggressively:), 0, 0);
}

uint64_t CanvasElementRenderer.render<A, B>(_:in:bounds:darkMode:isRTL:output:renderingLoupe:cacheAggressively:)()
{
  v1 = *(v0 + 480);
  v2 = *(v0 + 141);
  swift_beginAccess();
  if (v2)
  {
    v3 = 0;
    v4 = 2;
  }

  else
  {
    v3 = *(v1 + 72);
    v4 = 1;
  }

  v5 = *(v0 + 480);
  v6 = [objc_opt_self() traitCollectionWithUserInterfaceStyle_];
  *(v0 + 512) = v6;
  swift_beginAccess();
  v7 = *(v5 + 56);
  if (v7)
  {
    v8 = [v7 resolvedColorWithTraitCollection_];
    v9 = [v8 CGColor];
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    v10 = 0;
  }

  else
  {
    v10 = v3;
  }

  if (v10 == 1)
  {
    v11 = *(v0 + 480);
    v12 = v11[5];
    v13 = v11[6];
    __swift_project_boxed_opaque_existential_1(v11 + 2, v12);
    if ((*(v13 + 16))(v12, v13))
    {
      v9 = 0;
    }

    else
    {
      v14 = [objc_opt_self() systemBackgroundColor];
      v15 = [v14 resolvedColorWithTraitCollection_];

      v9 = [v15 CGColor];
    }
  }

  *(v0 + 520) = v9;
  v16 = *(v0 + 480);
  v17 = *(v0 + 440);
  v18 = v16[5];
  v19 = v16[6];
  __swift_project_boxed_opaque_existential_1(v16 + 2, v18);
  v20 = (*(v19 + 24))(v18, v19);
  v21 = v16[5];
  v22 = v16[6];
  __swift_project_boxed_opaque_existential_1(v16 + 2, v21);
  (*(v22 + 32))(v17, v21, v22);
  if (*(v0 + 256))
  {
    v23 = v3;
    outlined init with take of PaperKitHashable((v0 + 232), v0 + 192);
    v24 = *(v0 + 216);
    v25 = *(v0 + 224);
    __swift_project_boxed_opaque_existential_1((v0 + 192), v24);
    v26 = (*(v25 + 16))(v24, v25);
    *(v0 + 528) = v26;
    v27 = *(v0 + 216);
    v28 = *(v0 + 224);
    __swift_project_boxed_opaque_existential_1((v0 + 192), v27);
    (*(v28 + 8))(v27, v28);
    if (v9)
    {
      v29 = v9;
      CGContextSetFillColorWithColor(v26, v29);
      ClipBoundingBox = CGContextGetClipBoundingBox(v26);
      CGContextFillRect(v26, ClipBoundingBox);
    }

    v30 = *(v0 + 480);
    v58 = *(v0 + 464);
    v31 = *(v0 + 448);
    v55 = *(v0 + 143);
    v56 = *(v0 + 544);
    v32 = *(v0 + 142);
    v33 = *(v0 + 141);
    v61.size.width = *(v0 + 424);
    v61.size.height = *(v0 + 432);
    v35 = *(v0 + 408);
    v34 = *(v0 + 416);
    v54 = *(v0 + 392);
    v61.origin.x = v35;
    v61.origin.y = v34;
    v36 = v20 / CGRectGetWidth(v61);
    *(v0 + 144) = v36;
    *(v0 + 152) = 0;
    *(v0 + 160) = 0;
    *(v0 + 168) = v36;
    *(v0 + 176) = -(v35 * v36);
    *(v0 + 184) = -(v34 * v36);
    CGContextConcatCTM(v26, (v0 + 144));
    *(v0 + 137) = 0;
    *(v0 + 112) = 0u;
    *(v0 + 96) = 0u;
    *(v0 + 128) = 0;
    *(v0 + 16) = v23;
    *(v0 + 17) = v33;
    *(v0 + 18) = v32;
    *(v0 + 32) = 1;
    *(v0 + 40) = 0u;
    *(v0 + 56) = 0u;
    *(v0 + 72) = 1;
    *(v0 + 80) = 0;
    swift_beginAccess();
    v37 = *(v30 + 64);
    *(v0 + 24) = v37;
    *(v0 + 139) = *(v30 + 73);
    v38 = v16[5];
    v39 = v16[6];
    __swift_project_boxed_opaque_existential_1(v16 + 2, v38);
    v53 = v26;
    v40 = *(v39 + 8);
    v41 = v37;
    *(v0 + 140) = v40(v38, v39) & 1;
    *(v0 + 296) = v31;
    *(v0 + 304) = v58;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 272));
    (*(*(v31 - 8) + 16))(boxed_opaque_existential_1, v54, v31);
    outlined assign with take of PaperRenderable?(v0 + 272, v0 + 96);
    *(v0 + 88) = v55;
    *(v0 + 136) = v56;
    static CRKeyPath.unique.getter();
    v57 = (*(v58 + 16) + **(v58 + 16));
    v43 = swift_task_alloc();
    *(v0 + 536) = v43;
    *v43 = v0;
    v43[1] = CanvasElementRenderer.render<A, B>(_:in:bounds:darkMode:isRTL:output:renderingLoupe:cacheAggressively:);
    v44 = *(v0 + 504);
    v46 = *(v0 + 464);
    v45 = *(v0 + 472);
    v48 = *(v0 + 448);
    v47 = *(v0 + 456);
    v49 = *(v0 + 400);

    return v57(v53, v44, v49, v0 + 16, v47, v45, v48, v46);
  }

  else
  {
    v51 = *(v0 + 384);

    outlined destroy of StocksKitCurrencyCache.Provider?(v0 + 232, &_s8PaperKit15RendererContext_pSgMd, &_s8PaperKit15RendererContext_pSgMR);
    *v51 = 0u;
    *(v51 + 16) = 0u;
    *(v51 + 32) = 0;

    v52 = *(v0 + 8);

    return v52();
  }
}

{
  v1 = *(*v0 + 504);
  v2 = *(*v0 + 496);
  v3 = *(*v0 + 488);

  (*(v2 + 8))(v1, v3);

  return MEMORY[0x1EEE6DFA0](CanvasElementRenderer.render<A, B>(_:in:bounds:darkMode:isRTL:output:renderingLoupe:cacheAggressively:), 0, 0);
}

{
  v1 = v0[66];
  v2 = v0[65];
  v3 = v0[64];
  v4 = v0[48];
  v5 = v0[27];
  v6 = v0[28];
  __swift_project_boxed_opaque_existential_1(v0 + 24, v5);
  (*(v6 + 32))(v5, v6);

  outlined init with copy of FindResult((v0 + 24), v4);
  outlined destroy of PaperRenderableOptions((v0 + 2));
  __swift_destroy_boxed_opaque_existential_0(v0 + 24);

  v7 = v0[1];

  return v7();
}

uint64_t CanvasElementImageRenderer.__allocating_init(size:)(double a1, double a2)
{
  type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIGraphicsImageRendererFormat, 0x1E69DCA80);
  v4 = [swift_getObjCClassFromMetadata() defaultFormat];
  v5 = [v4 supportsHighDynamicRange];
  [v4 scale];
  v7 = v6;
  type metadata accessor for ImageRenderer();
  v8 = swift_allocObject();
  *(v8 + 16) = 1;
  *(v8 + 24) = a1;
  *(v8 + 32) = a2;
  *(v8 + 40) = v7;
  *(v8 + 48) = 0;
  *(v8 + 49) = v5;
  *(v8 + 56) = 0;
  *(v8 + 64) = 1;
  *(v8 + 72) = 0;
  *(v8 + 80) = 1;
  type metadata accessor for CanvasElementImageRenderer();
  v9 = swift_allocObject();
  v11 = specialized CanvasElementImageRenderer.init(renderer:)(v8, v9, v10);

  return v11;
}

uint64_t CanvasElementImageRenderer.__allocating_init(size:format:)(void *a1, double a2, double a3)
{
  v6 = [a1 supportsHighDynamicRange];
  [a1 scale];
  v8 = v7;
  type metadata accessor for ImageRenderer();
  v9 = swift_allocObject();
  *(v9 + 16) = 1;
  *(v9 + 24) = a2;
  *(v9 + 32) = a3;
  *(v9 + 40) = v8;
  *(v9 + 48) = 0;
  *(v9 + 49) = v6;
  *(v9 + 56) = 0;
  *(v9 + 64) = 1;
  *(v9 + 72) = 0;
  *(v9 + 80) = 1;
  type metadata accessor for CanvasElementImageRenderer();
  v10 = swift_allocObject();
  v12 = specialized CanvasElementImageRenderer.init(renderer:)(v9, v10, v11);

  return v12;
}

uint64_t CanvasElementImageRenderer.image(from:bounds:darkMode:isRTL:)(uint64_t a1, _OWORD *a2, char a3, char a4)
{
  v6 = a2[1];
  *(v5 + 72) = *a2;
  *(v5 + 56) = a2;
  *(v5 + 64) = v4;
  *(v5 + 129) = a4;
  *(v5 + 128) = a3;
  *(v5 + 48) = a1;
  *(v5 + 88) = v6;
  type metadata accessor for Paper(0);
  *(v5 + 104) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](CanvasElementImageRenderer.image(from:bounds:darkMode:isRTL:), 0, 0);
}

uint64_t CanvasElementImageRenderer.image(from:bounds:darkMode:isRTL:)()
{
  v1 = *(v0 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C0VGMd, &_s9Coherence7CapsuleVy8PaperKit0C0VGMR);
  Capsule.root.getter();
  if (*(v1 + 32))
  {
    swift_getKeyPath();
    Capsule.subscript.getter();

    v3 = *(v0 + 16);
    v2 = *(v0 + 24);
    v5 = *(v0 + 32);
    v4 = *(v0 + 40);
  }

  else
  {
    v5 = *(v0 + 88);
    v4 = *(v0 + 96);
    v3 = *(v0 + 72);
    v2 = *(v0 + 80);
    *(v0 + 16) = v3;
    *(v0 + 24) = v2;
    *(v0 + 32) = v5;
    *(v0 + 40) = v4;
  }

  v6 = swift_task_alloc();
  *(v0 + 112) = v6;
  *v6 = v0;
  v6[1] = CanvasElementImageRenderer.image(from:bounds:darkMode:isRTL:);
  v7 = *(v0 + 104);
  v8 = *(v0 + 129);
  v9 = *(v0 + 128);
  v10 = *(v0 + 48);

  return specialized CanvasElementImageRenderer.cgImage<A, B>(_:in:bounds:darkMode:isRTL:renderingLoupe:)(v7, v10, v9, v8, 0, v3, v2, v5, v4);
}

{
  v1 = v0[15];
  if (v1)
  {
    v2 = [objc_allocWithZone(MEMORY[0x1E69DCAB8]) initWithCGImage_];
  }

  else
  {
    v2 = 0;
  }

  _s8PaperKit0A0VWOhTm_2(v0[13], type metadata accessor for Paper);

  v3 = v0[1];

  return v3(v2);
}

uint64_t CanvasElementImageRenderer.image(from:bounds:darkMode:isRTL:)(uint64_t a1)
{
  *(*v1 + 120) = a1;

  return MEMORY[0x1EEE6DFA0](CanvasElementImageRenderer.image(from:bounds:darkMode:isRTL:), 0, 0);
}

uint64_t specialized closure #1 in CanvasElementImageRenderer.image<A, B>(_:in:bounds:completion:)(double a1, double a2, double a3, double a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, char a12)
{
  *(v12 + 656) = v17;
  *(v12 + 648) = v16;
  *(v12 + 142) = a12;
  *(v12 + 141) = a11;
  *(v12 + 640) = a4;
  *(v12 + 632) = a3;
  *(v12 + 624) = a2;
  *(v12 + 616) = a1;
  *(v12 + 608) = a10;
  *(v12 + 600) = a9;
  *(v12 + 592) = a8;
  v13 = type metadata accessor for CRKeyPath();
  *(v12 + 664) = v13;
  *(v12 + 672) = *(v13 - 8);
  *(v12 + 680) = swift_task_alloc();
  *(v12 + 688) = type metadata accessor for RendererOutput(0);
  *(v12 + 696) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](specialized closure #1 in CanvasElementImageRenderer.image<A, B>(_:in:bounds:completion:), 0, 0);
}

uint64_t specialized closure #1 in CanvasElementImageRenderer.image<A, B>(_:in:bounds:completion:)()
{
  v1 = *(v0 + 141);
  v2 = *(v0 + 592);
  v3 = 2;
  swift_storeEnumTagMultiPayload();
  swift_beginAccess();
  if (v1 == 1)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(v2 + 72);
    v3 = 1;
  }

  v5 = *(v0 + 592);
  v6 = [objc_opt_self() traitCollectionWithUserInterfaceStyle_];
  *(v0 + 704) = v6;
  swift_beginAccess();
  v7 = *(v5 + 56);
  if (v7)
  {
    v8 = [v7 resolvedColorWithTraitCollection_];
    v9 = [v8 CGColor];
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    v10 = 0;
  }

  else
  {
    v10 = v4;
  }

  if (v10 == 1)
  {
    v11 = *(v0 + 592);
    v12 = v11[5];
    v13 = v11[6];
    __swift_project_boxed_opaque_existential_1(v11 + 2, v12);
    if ((*(v13 + 16))(v12, v13))
    {
      v9 = 0;
    }

    else
    {
      v14 = [objc_opt_self() systemBackgroundColor];
      v15 = [v14 resolvedColorWithTraitCollection_];

      v9 = [v15 CGColor];
    }
  }

  *(v0 + 712) = v9;
  v16 = *(v0 + 696);
  v17 = *(v0 + 592);
  v18 = v17[5];
  v19 = v17[6];
  __swift_project_boxed_opaque_existential_1(v17 + 2, v18);
  v20 = (*(v19 + 24))(v18, v19);
  v21 = v17[5];
  v22 = v17[6];
  __swift_project_boxed_opaque_existential_1(v17 + 2, v21);
  (*(v22 + 32))(v16, v21, v22);
  if (*(v0 + 392))
  {
    v53 = v4;
    outlined init with take of PaperKitHashable((v0 + 368), v0 + 328);
    v23 = *(v0 + 352);
    v24 = *(v0 + 360);
    __swift_project_boxed_opaque_existential_1((v0 + 328), v23);
    v25 = (*(v24 + 16))(v23, v24);
    *(v0 + 720) = v25;
    v26 = *(v0 + 352);
    v27 = *(v0 + 360);
    __swift_project_boxed_opaque_existential_1((v0 + 328), v26);
    (*(v27 + 8))(v26, v27);
    if (v9)
    {
      v28 = v9;
      CGContextSetFillColorWithColor(v25, v28);
      ClipBoundingBox = CGContextGetClipBoundingBox(v25);
      CGContextFillRect(v25, ClipBoundingBox);
    }

    v29 = *(v0 + 142);
    v30 = *(v0 + 141);
    v56.size.height = *(v0 + 640);
    v56.size.width = *(v0 + 632);
    v31 = *(v0 + 624);
    v32 = *(v0 + 616);
    v33 = *(v0 + 600);
    v34 = *(v0 + 592);
    v56.origin.x = v32;
    v56.origin.y = v31;
    v35 = v20 / CGRectGetWidth(v56);
    *(v0 + 192) = v35;
    *(v0 + 200) = 0;
    *(v0 + 208) = 0;
    *(v0 + 216) = v35;
    *(v0 + 224) = -(v32 * v35);
    *(v0 + 232) = -(v31 * v35);
    CGContextConcatCTM(v25, (v0 + 192));
    *(v0 + 137) = 0;
    *(v0 + 112) = 0u;
    *(v0 + 96) = 0u;
    *(v0 + 128) = 0;
    *(v0 + 16) = v53;
    *(v0 + 17) = v30;
    *(v0 + 18) = v29;
    *(v0 + 32) = 1;
    *(v0 + 40) = 0u;
    *(v0 + 56) = 0u;
    *(v0 + 72) = 1;
    *(v0 + 80) = 0;
    swift_beginAccess();
    v36 = *(v34 + 64);
    *(v0 + 24) = v36;
    *(v0 + 139) = *(v34 + 73);
    v37 = v17[5];
    v38 = v17[6];
    __swift_project_boxed_opaque_existential_1(v17 + 2, v37);
    v39 = *(v38 + 8);
    v40 = v36;
    *(v0 + 140) = v39(v37, v38) & 1;
    *(v0 + 472) = type metadata accessor for Paper(0);
    *(v0 + 480) = &protocol witness table for Paper;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 448));
    outlined init with copy of Paper(v33, boxed_opaque_existential_1, type metadata accessor for Paper);
    outlined assign with take of PaperRenderable?(v0 + 448, v0 + 96);
    *(v0 + 88) = 0;
    *(v0 + 136) = 0;
    static CRKeyPath.unique.getter();
    CGContextSaveGState(v25);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMR);
    CRRegister.wrappedValue.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
    CRRegister.wrappedValue.getter();
    CGImagePropertyOrientation.originAlignedTransform(_:)((v0 + 144), *(v0 + 488));
    v42 = *(v0 + 160);
    *(v0 + 240) = *(v0 + 144);
    v43 = *(v0 + 176);
    *(v0 + 256) = v42;
    *(v0 + 272) = v43;
    CGContextConcatCTM(v25, (v0 + 240));
    v44 = swift_task_alloc();
    *(v0 + 728) = v44;
    *v44 = v0;
    v44[1] = specialized closure #1 in CanvasElementImageRenderer.image<A, B>(_:in:bounds:completion:);
    v45 = *(v0 + 608);

    return specialized ContainerCanvasElement.renderSubelements<A>(in:capsule:options:)(v25, v45, v0 + 16);
  }

  _s8PaperKit0A0VWOhTm_2(*(v0 + 696), type metadata accessor for RendererOutput);

  outlined destroy of StocksKitCurrencyCache.Provider?(v0 + 368, &_s8PaperKit15RendererContext_pSgMd, &_s8PaperKit15RendererContext_pSgMR);
  *(v0 + 288) = 0u;
  *(v0 + 304) = 0u;
  *(v0 + 320) = 0;
  outlined init with copy of RendererContext?(v0 + 288, v0 + 408);
  v47 = *(v0 + 432);
  if (!v47)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v0 + 408, &_s8PaperKit15RendererContext_pSgMd, &_s8PaperKit15RendererContext_pSgMR);
    goto LABEL_24;
  }

  v48 = *(v0 + 440);
  __swift_project_boxed_opaque_existential_1((v0 + 408), *(v0 + 432));
  v49 = (*(v48 + 24))(v47, v48);
  __swift_destroy_boxed_opaque_existential_0((v0 + 408));
  if (!v49)
  {
LABEL_24:
    (*(v0 + 648))(0);
    goto LABEL_25;
  }

  v50 = *(v0 + 648);
  v51 = [objc_allocWithZone(MEMORY[0x1E69DCAB8]) initWithCGImage_];
  v50();

LABEL_25:
  outlined destroy of StocksKitCurrencyCache.Provider?(v0 + 288, &_s8PaperKit15RendererContext_pSgMd, &_s8PaperKit15RendererContext_pSgMR);

  v52 = *(v0 + 8);

  return v52();
}

{

  return MEMORY[0x1EEE6DFA0](specialized closure #1 in CanvasElementImageRenderer.image<A, B>(_:in:bounds:completion:), 0, 0);
}

{
  v1 = v0[90];
  v2 = v0[89];
  v3 = v0[88];
  v4 = v0[87];
  v5 = v0[85];
  v6 = v0[84];
  v7 = v0[83];
  CGContextRestoreGState(v1);
  (*(v6 + 8))(v5, v7);
  v8 = v0[44];
  v9 = v0[45];
  __swift_project_boxed_opaque_existential_1(v0 + 41, v8);
  (*(v9 + 32))(v8, v9);

  _s8PaperKit0A0VWOhTm_2(v4, type metadata accessor for RendererOutput);
  outlined init with copy of FindResult((v0 + 41), (v0 + 36));
  outlined destroy of PaperRenderableOptions((v0 + 2));
  __swift_destroy_boxed_opaque_existential_0(v0 + 41);
  outlined init with copy of RendererContext?((v0 + 36), (v0 + 51));
  v10 = v0[54];
  if (v10)
  {
    v11 = v0[55];
    __swift_project_boxed_opaque_existential_1(v0 + 51, v0[54]);
    v12 = (*(v11 + 24))(v10, v11);
    __swift_destroy_boxed_opaque_existential_0(v0 + 51);
    if (v12)
    {
      v13 = v0[81];
      v14 = [objc_allocWithZone(MEMORY[0x1E69DCAB8]) initWithCGImage_];
      v13();

      goto LABEL_6;
    }
  }

  else
  {
    outlined destroy of StocksKitCurrencyCache.Provider?((v0 + 51), &_s8PaperKit15RendererContext_pSgMd, &_s8PaperKit15RendererContext_pSgMR);
  }

  (v0[81])(0);
LABEL_6:
  outlined destroy of StocksKitCurrencyCache.Provider?((v0 + 36), &_s8PaperKit15RendererContext_pSgMd, &_s8PaperKit15RendererContext_pSgMR);

  v15 = v0[1];

  return v15();
}

uint64_t closure #1 in CanvasElementImageRenderer.image<A, B>(_:in:bounds:completion:)(double a1, double a2, double a3, double a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, char a12)
{
  *(v12 + 184) = v17;
  *(v12 + 192) = v18;
  *(v12 + 168) = v16;
  *(v12 + 152) = v15;
  *(v12 + 217) = a12;
  *(v12 + 216) = a11;
  *(v12 + 136) = a3;
  *(v12 + 144) = a4;
  *(v12 + 120) = a1;
  *(v12 + 128) = a2;
  *(v12 + 104) = a9;
  *(v12 + 112) = a10;
  *(v12 + 96) = a8;
  type metadata accessor for RendererOutput(0);
  *(v12 + 200) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in CanvasElementImageRenderer.image<A, B>(_:in:bounds:completion:), 0, 0);
}

uint64_t closure #1 in CanvasElementImageRenderer.image<A, B>(_:in:bounds:completion:)()
{
  type metadata accessor for RendererOutput(0);
  swift_storeEnumTagMultiPayload();
  v1 = swift_task_alloc();
  *(v0 + 208) = v1;
  *v1 = v0;
  v1[1] = closure #1 in CanvasElementImageRenderer.image<A, B>(_:in:bounds:completion:);
  v2 = *(v0 + 200);
  v3 = *(v0 + 217);
  v4 = *(v0 + 216);
  v5 = *(v0 + 136);
  v6 = *(v0 + 144);
  v7 = *(v0 + 120);
  v8 = *(v0 + 128);
  v9 = *(v0 + 104);
  v10 = *(v0 + 112);

  return CanvasElementRenderer.render<A, B>(_:in:bounds:darkMode:isRTL:output:renderingLoupe:cacheAggressively:)(v0 + 16, v9, v10, v4, v3, v2, 0, 0, v7, v8, v5, v6);
}

{
  v1 = *(*v0 + 200);

  _s8PaperKit0A0VWOhTm_2(v1, type metadata accessor for RendererOutput);

  return MEMORY[0x1EEE6DFA0](closure #1 in CanvasElementImageRenderer.image<A, B>(_:in:bounds:completion:), 0, 0);
}

{
  outlined init with copy of RendererContext?((v0 + 2), (v0 + 7));
  v1 = v0[10];
  if (v1)
  {
    v2 = v0[11];
    __swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);
    v3 = (*(v2 + 24))(v1, v2);
    __swift_destroy_boxed_opaque_existential_0(v0 + 7);
    if (v3)
    {
      v4 = v0[19];
      v5 = [objc_allocWithZone(MEMORY[0x1E69DCAB8]) initWithCGImage_];
      v4();

      goto LABEL_6;
    }
  }

  else
  {
    outlined destroy of StocksKitCurrencyCache.Provider?((v0 + 7), &_s8PaperKit15RendererContext_pSgMd, &_s8PaperKit15RendererContext_pSgMR);
  }

  (v0[19])(0);
LABEL_6:
  outlined destroy of StocksKitCurrencyCache.Provider?((v0 + 2), &_s8PaperKit15RendererContext_pSgMd, &_s8PaperKit15RendererContext_pSgMR);

  v6 = v0[1];

  return v6();
}

uint64_t CanvasElementImageRenderer.image<A, B>(_:in:bounds:darkMode:isRTL:renderingLoupe:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, double a12, uint64_t a13)
{
  v17 = a5;
  v18 = a4;
  v19 = a3;
  v26 = swift_task_alloc();
  *(v13 + 16) = v26;
  *v26 = v13;
  v26[1] = CanvasElementImageRenderer.image<A, B>(_:in:bounds:darkMode:isRTL:renderingLoupe:);

  return CanvasElementImageRenderer.cgImage<A, B>(_:in:bounds:darkMode:isRTL:renderingLoupe:)(a1, a2, v19, v18, v17, a6, a7, a8, a9, a10, a11, a12);
}

uint64_t CanvasElementImageRenderer.image<A, B>(_:in:bounds:darkMode:isRTL:renderingLoupe:)(uint64_t a1)
{
  *(*v1 + 24) = a1;

  return MEMORY[0x1EEE6DFA0](CanvasElementImageRenderer.image<A, B>(_:in:bounds:darkMode:isRTL:renderingLoupe:), 0, 0);
}

uint64_t CanvasElementImageRenderer.image<A, B>(_:in:bounds:darkMode:isRTL:renderingLoupe:)()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = [objc_allocWithZone(MEMORY[0x1E69DCAB8]) initWithCGImage_];
  }

  else
  {
    v2 = 0;
  }

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t CanvasElementImageRenderer.image<A, B>(_:in:bounds:darkMode:isRTL:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8, double a9, double a10, double a11, uint64_t a12, uint64_t a13)
{
  v25 = swift_task_alloc();
  *(v13 + 16) = v25;
  *v25 = v13;
  v25[1] = CanvasElementImageRenderer.image<A, B>(_:in:bounds:darkMode:isRTL:);

  return CanvasElementImageRenderer.image<A, B>(_:in:bounds:darkMode:isRTL:renderingLoupe:)(a1, a2, a3, a4, 0, a5, a6, a7, a8, a9, a10, a11, a13);
}

uint64_t CanvasElementImageRenderer.image<A, B>(_:in:bounds:darkMode:isRTL:)(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t specialized CanvasElementImageRenderer.cgImage<A, B>(_:in:bounds:darkMode:isRTL:renderingLoupe:)(uint64_t a1, uint64_t a2, char a3, char a4, char a5, double a6, double a7, double a8, double a9)
{
  *(v10 + 640) = v9;
  *(v10 + 143) = a5;
  *(v10 + 142) = a4;
  *(v10 + 141) = a3;
  *(v10 + 632) = a9;
  *(v10 + 624) = a8;
  *(v10 + 616) = a7;
  *(v10 + 608) = a6;
  *(v10 + 600) = a2;
  *(v10 + 592) = a1;
  v11 = type metadata accessor for CRKeyPath();
  *(v10 + 648) = v11;
  *(v10 + 656) = *(v11 - 8);
  *(v10 + 664) = swift_task_alloc();
  *(v10 + 672) = type metadata accessor for RendererOutput(0);
  *(v10 + 680) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](specialized CanvasElementImageRenderer.cgImage<A, B>(_:in:bounds:darkMode:isRTL:renderingLoupe:), 0, 0);
}

{
  *(v10 + 808) = v9;
  *(v10 + 143) = a5;
  *(v10 + 142) = a4;
  *(v10 + 141) = a3;
  *(v10 + 800) = a9;
  *(v10 + 792) = a8;
  *(v10 + 784) = a7;
  *(v10 + 776) = a6;
  *(v10 + 768) = a2;
  *(v10 + 760) = a1;
  v11 = type metadata accessor for CRKeyPath();
  *(v10 + 816) = v11;
  *(v10 + 824) = *(v11 - 8);
  *(v10 + 832) = swift_task_alloc();
  *(v10 + 840) = type metadata accessor for RendererOutput(0);
  *(v10 + 848) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](specialized CanvasElementImageRenderer.cgImage<A, B>(_:in:bounds:darkMode:isRTL:renderingLoupe:), 0, 0);
}

{
  *(v10 + 512) = v9;
  *(v10 + 143) = a5;
  *(v10 + 142) = a4;
  *(v10 + 141) = a3;
  *(v10 + 496) = a8;
  *(v10 + 504) = a9;
  *(v10 + 480) = a6;
  *(v10 + 488) = a7;
  *(v10 + 464) = a1;
  *(v10 + 472) = a2;
  v11 = type metadata accessor for CRKeyPath();
  *(v10 + 520) = v11;
  *(v10 + 528) = *(v11 - 8);
  *(v10 + 536) = swift_task_alloc();
  *(v10 + 544) = type metadata accessor for RendererOutput(0);
  *(v10 + 552) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](specialized CanvasElementImageRenderer.cgImage<A, B>(_:in:bounds:darkMode:isRTL:renderingLoupe:), 0, 0);
}

uint64_t specialized CanvasElementImageRenderer.cgImage<A, B>(_:in:bounds:darkMode:isRTL:renderingLoupe:)()
{
  v1 = *(v0 + 632);
  v2 = *(v0 + 624);
  v3 = *(v0 + 616);
  v4 = *(v0 + 608);
  v5 = off_1F4F62A10;
  v6 = type metadata accessor for Paper(0);
  v7 = v5();
  if (CGRect.almostEqual(_:threshold:)(v7, v8, v9, v10, 0.000001, v4, v3, v2, v1))
  {
    v11 = *(v0 + 640);
    v12 = v11[5];
    v13 = v11[6];
    __swift_project_boxed_opaque_existential_1(v11 + 2, v12);
    (*(v13 + 8))(v12, v13);
  }

  v14 = *(v0 + 640);
  v15 = *(v0 + 141);
  v66 = *(v14 + 74);
  v16 = 2;
  swift_storeEnumTagMultiPayload();
  swift_beginAccess();
  if (v15 == 1)
  {
    v17 = 0;
  }

  else
  {
    v17 = *(v14 + 72);
    v16 = 1;
  }

  v18 = *(v0 + 640);
  v19 = [objc_opt_self() traitCollectionWithUserInterfaceStyle_];
  *(v0 + 688) = v19;
  swift_beginAccess();
  v20 = *(v18 + 56);
  if (v20)
  {
    v21 = [v20 resolvedColorWithTraitCollection_];
    v22 = [v21 CGColor];
  }

  else
  {
    v22 = 0;
  }

  if (v22)
  {
    v23 = 0;
  }

  else
  {
    v23 = v17;
  }

  if (v23 == 1)
  {
    v24 = *(v0 + 640);
    v25 = v24[5];
    v26 = v24[6];
    __swift_project_boxed_opaque_existential_1(v24 + 2, v25);
    if ((*(v26 + 16))(v25, v26))
    {
      v22 = 0;
    }

    else
    {
      v27 = [objc_opt_self() systemBackgroundColor];
      v28 = [v27 resolvedColorWithTraitCollection_];

      v22 = [v28 CGColor];
    }
  }

  v65 = v17;
  *(v0 + 696) = v22;
  v29 = *(v0 + 680);
  v30 = *(v0 + 640);
  v31 = v30[5];
  v32 = v30[6];
  __swift_project_boxed_opaque_existential_1(v30 + 2, v31);
  v33 = (*(v32 + 24))(v31, v32);
  v34 = v30[5];
  v35 = v30[6];
  __swift_project_boxed_opaque_existential_1(v30 + 2, v34);
  (*(v35 + 32))(v29, v34, v35);
  if (*(v0 + 392))
  {
    v64 = v6;
    outlined init with take of PaperKitHashable((v0 + 368), v0 + 328);
    v36 = *(v0 + 352);
    v37 = *(v0 + 360);
    __swift_project_boxed_opaque_existential_1((v0 + 328), v36);
    v38 = (*(v37 + 16))(v36, v37);
    *(v0 + 704) = v38;
    v39 = *(v0 + 352);
    v40 = *(v0 + 360);
    __swift_project_boxed_opaque_existential_1((v0 + 328), v39);
    (*(v40 + 8))(v39, v40);
    if (v22)
    {
      v41 = v22;
      CGContextSetFillColorWithColor(v38, v41);
      ClipBoundingBox = CGContextGetClipBoundingBox(v38);
      CGContextFillRect(v38, ClipBoundingBox);
    }

    v42 = *(v0 + 640);
    v43 = *(v0 + 143);
    v44 = *(v0 + 142);
    v45 = *(v0 + 141);
    v69.size.height = *(v0 + 632);
    v69.size.width = *(v0 + 624);
    v46 = *(v0 + 616);
    v47 = *(v0 + 608);
    v63 = *(v0 + 592);
    v69.origin.x = v47;
    v69.origin.y = v46;
    v48 = v33 / CGRectGetWidth(v69);
    *(v0 + 192) = v48;
    *(v0 + 200) = 0;
    *(v0 + 208) = 0;
    *(v0 + 216) = v48;
    *(v0 + 224) = -(v47 * v48);
    *(v0 + 232) = -(v46 * v48);
    CGContextConcatCTM(v38, (v0 + 192));
    *(v0 + 96) = 0u;
    *(v0 + 137) = 0;
    *(v0 + 112) = 0u;
    *(v0 + 128) = 0;
    *(v0 + 16) = v65;
    *(v0 + 17) = v45;
    *(v0 + 18) = v44;
    *(v0 + 32) = 1;
    *(v0 + 40) = 0u;
    *(v0 + 56) = 0u;
    *(v0 + 72) = 1;
    *(v0 + 80) = 0;
    swift_beginAccess();
    v49 = *(v42 + 64);
    *(v0 + 24) = v49;
    *(v0 + 139) = *(v42 + 73);
    v50 = v30[5];
    v51 = v30[6];
    __swift_project_boxed_opaque_existential_1(v30 + 2, v50);
    v52 = *(v51 + 8);
    v53 = v49;
    *(v0 + 140) = v52(v50, v51) & 1;
    *(v0 + 472) = v64;
    *(v0 + 480) = &protocol witness table for Paper;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 448));
    outlined init with copy of Paper(v63, boxed_opaque_existential_1, type metadata accessor for Paper);
    outlined assign with take of PaperRenderable?(v0 + 448, v0 + 96);
    *(v0 + 88) = v43;
    *(v0 + 136) = v66;
    static CRKeyPath.unique.getter();
    CGContextSaveGState(v38);
    if ((v43 & 1) == 0)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMR);
      CRRegister.wrappedValue.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
      CRRegister.wrappedValue.getter();
      CGImagePropertyOrientation.originAlignedTransform(_:)((v0 + 144), *(v0 + 488));
      v55 = *(v0 + 160);
      *(v0 + 240) = *(v0 + 144);
      *(v0 + 256) = v55;
      *(v0 + 272) = *(v0 + 176);
      CGContextConcatCTM(v38, (v0 + 240));
    }

    v56 = swift_task_alloc();
    *(v0 + 712) = v56;
    *v56 = v0;
    v56[1] = specialized CanvasElementImageRenderer.cgImage<A, B>(_:in:bounds:darkMode:isRTL:renderingLoupe:);
    v57 = *(v0 + 600);

    return specialized ContainerCanvasElement.renderSubelements<A>(in:capsule:options:)(v38, v57, v0 + 16);
  }

  _s8PaperKit0A0VWOhTm_2(*(v0 + 680), type metadata accessor for RendererOutput);

  outlined destroy of StocksKitCurrencyCache.Provider?(v0 + 368, &_s8PaperKit15RendererContext_pSgMd, &_s8PaperKit15RendererContext_pSgMR);
  *(v0 + 288) = 0u;
  *(v0 + 304) = 0u;
  *(v0 + 320) = 0;
  outlined init with copy of RendererContext?(v0 + 288, v0 + 408);
  v59 = *(v0 + 432);
  if (!v59)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v0 + 288, &_s8PaperKit15RendererContext_pSgMd, &_s8PaperKit15RendererContext_pSgMR);
    outlined destroy of StocksKitCurrencyCache.Provider?(v0 + 408, &_s8PaperKit15RendererContext_pSgMd, &_s8PaperKit15RendererContext_pSgMR);
LABEL_28:
    v61 = 0;
    goto LABEL_29;
  }

  v60 = *(v0 + 440);
  __swift_project_boxed_opaque_existential_1((v0 + 408), *(v0 + 432));
  v61 = (*(v60 + 24))(v59, v60);
  outlined destroy of StocksKitCurrencyCache.Provider?(v0 + 288, &_s8PaperKit15RendererContext_pSgMd, &_s8PaperKit15RendererContext_pSgMR);
  __swift_destroy_boxed_opaque_existential_0((v0 + 408));
  if (!v61)
  {
    goto LABEL_28;
  }

LABEL_29:

  v62 = *(v0 + 8);

  return v62(v61);
}

{

  return MEMORY[0x1EEE6DFA0](specialized CanvasElementImageRenderer.cgImage<A, B>(_:in:bounds:darkMode:isRTL:renderingLoupe:), 0, 0);
}

{
  v1 = v0[88];
  v2 = v0[87];
  v3 = v0[86];
  v4 = v0[85];
  v5 = v0[83];
  v6 = v0[82];
  v7 = v0[81];
  CGContextRestoreGState(v1);
  (*(v6 + 8))(v5, v7);
  v8 = v0[44];
  v9 = v0[45];
  __swift_project_boxed_opaque_existential_1(v0 + 41, v8);
  (*(v9 + 32))(v8, v9);

  _s8PaperKit0A0VWOhTm_2(v4, type metadata accessor for RendererOutput);
  outlined init with copy of FindResult((v0 + 41), (v0 + 36));
  outlined destroy of PaperRenderableOptions((v0 + 2));
  __swift_destroy_boxed_opaque_existential_0(v0 + 41);
  outlined init with copy of RendererContext?((v0 + 36), (v0 + 51));
  v10 = v0[54];
  if (v10)
  {
    v11 = v0[55];
    __swift_project_boxed_opaque_existential_1(v0 + 51, v0[54]);
    v12 = (*(v11 + 24))(v10, v11);
    outlined destroy of StocksKitCurrencyCache.Provider?((v0 + 36), &_s8PaperKit15RendererContext_pSgMd, &_s8PaperKit15RendererContext_pSgMR);
    __swift_destroy_boxed_opaque_existential_0(v0 + 51);
    if (v12)
    {
      goto LABEL_6;
    }
  }

  else
  {
    outlined destroy of StocksKitCurrencyCache.Provider?((v0 + 36), &_s8PaperKit15RendererContext_pSgMd, &_s8PaperKit15RendererContext_pSgMR);
    outlined destroy of StocksKitCurrencyCache.Provider?((v0 + 51), &_s8PaperKit15RendererContext_pSgMd, &_s8PaperKit15RendererContext_pSgMR);
  }

  v12 = 0;
LABEL_6:

  v13 = v0[1];

  return v13(v12);
}

{
  v88 = v0;
  v1 = *(v0 + 800);
  v2 = *(v0 + 792);
  v3 = *(v0 + 784);
  v4 = *(v0 + 776);
  v5 = off_1F4F5EEB0;
  v6 = type metadata accessor for Image(0);
  v7 = v5();
  if (CGRect.almostEqual(_:threshold:)(v7, v8, v9, v10, 0.000001, v4, v3, v2, v1))
  {
    v11 = *(v0 + 808);
    v12 = v11[5];
    v13 = v11[6];
    __swift_project_boxed_opaque_existential_1(v11 + 2, v12);
    (*(v13 + 8))(v12, v13);
  }

  v14 = *(v0 + 808);
  v15 = *(v0 + 141);
  v86 = *(v14 + 74);
  v16 = 2;
  swift_storeEnumTagMultiPayload();
  swift_beginAccess();
  if (v15 == 1)
  {
    v17 = 0;
  }

  else
  {
    v17 = *(v14 + 72);
    v16 = 1;
  }

  v18 = *(v0 + 808);
  v19 = [objc_opt_self() traitCollectionWithUserInterfaceStyle_];
  *(v0 + 856) = v19;
  swift_beginAccess();
  v20 = *(v18 + 56);
  v84 = v6;
  if (v20)
  {
    v21 = [v20 resolvedColorWithTraitCollection_];
    v22 = [v21 CGColor];
  }

  else
  {
    v22 = 0;
  }

  if (v22)
  {
    v23 = 0;
  }

  else
  {
    v23 = v17;
  }

  if (v23 == 1)
  {
    v24 = *(v0 + 808);
    v25 = v24[5];
    v26 = v24[6];
    __swift_project_boxed_opaque_existential_1(v24 + 2, v25);
    if ((*(v26 + 16))(v25, v26))
    {
      v22 = 0;
    }

    else
    {
      v27 = [objc_opt_self() systemBackgroundColor];
      v28 = [v27 resolvedColorWithTraitCollection_];

      v22 = [v28 CGColor];
    }
  }

  v82 = v17;
  *(v0 + 864) = v22;
  v29 = *(v0 + 848);
  v30 = *(v0 + 808);
  v31 = v30[5];
  v32 = v30[6];
  __swift_project_boxed_opaque_existential_1(v30 + 2, v31);
  v33 = (*(v32 + 24))(v31, v32);
  v34 = v30[5];
  v35 = v30[6];
  __swift_project_boxed_opaque_existential_1(v30 + 2, v34);
  (*(v35 + 32))(v29, v34, v35);
  if (*(v0 + 584))
  {
    outlined init with take of PaperKitHashable((v0 + 560), v0 + 520);
    v36 = *(v0 + 544);
    v37 = *(v0 + 552);
    __swift_project_boxed_opaque_existential_1((v0 + 520), v36);
    v38 = (*(v37 + 16))(v36, v37);
    *(v0 + 872) = v38;
    v39 = *(v0 + 544);
    v40 = *(v0 + 552);
    __swift_project_boxed_opaque_existential_1((v0 + 520), v39);
    (*(v40 + 8))(v39, v40);
    if (v22)
    {
      v41 = v22;
      CGContextSetFillColorWithColor(v38, v41);
      ClipBoundingBox = CGContextGetClipBoundingBox(v38);
      CGContextFillRect(v38, ClipBoundingBox);
    }

    v42 = *(v0 + 808);
    v43 = *(v0 + 143);
    v44 = *(v0 + 142);
    v45 = *(v0 + 141);
    v91.size.height = *(v0 + 800);
    v91.size.width = *(v0 + 792);
    v46 = *(v0 + 784);
    v47 = *(v0 + 776);
    v81 = *(v0 + 760);
    v91.origin.x = v47;
    v91.origin.y = v46;
    v48 = v33 / CGRectGetWidth(v91);
    *(v0 + 192) = v48;
    *(v0 + 200) = 0;
    *(v0 + 208) = 0;
    *(v0 + 216) = v48;
    *(v0 + 224) = -(v47 * v48);
    *(v0 + 232) = -(v46 * v48);
    CGContextConcatCTM(v38, (v0 + 192));
    *(v0 + 96) = 0u;
    *(v0 + 137) = 0;
    *(v0 + 112) = 0u;
    *(v0 + 128) = 0;
    *(v0 + 16) = v82;
    *(v0 + 17) = v45;
    *(v0 + 18) = v44;
    *(v0 + 32) = 1;
    *(v0 + 40) = 0u;
    *(v0 + 56) = 0u;
    *(v0 + 72) = 1;
    *(v0 + 80) = 0;
    swift_beginAccess();
    v49 = *(v42 + 64);
    *(v0 + 24) = v49;
    *(v0 + 139) = *(v42 + 73);
    v51 = v30[5];
    v50 = v30[6];
    __swift_project_boxed_opaque_existential_1(v30 + 2, v51);
    v52 = *(v50 + 8);
    v53 = v49;
    v54 = v52(v51, v50);
    *(v0 + 140) = v54 & 1;
    *(v0 + 664) = v84;
    *(v0 + 672) = &protocol witness table for Image;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 640));
    outlined init with copy of Paper(v81, boxed_opaque_existential_1, type metadata accessor for Image);
    outlined assign with take of PaperRenderable?(v0 + 640, v0 + 96);
    *(v0 + 88) = v43;
    *(v0 + 136) = v86;
    static CRKeyPath.unique.getter();
    CGContextSaveGState(v38);
    if (v43)
    {
      CGContextSaveGState(v38);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMR);
      CRRegister.wrappedValue.getter();
      v92.origin.x = Image.pdfContentsBounds.getter();
      CGImagePropertyOrientation.originAlignedTransform(_:)((v0 + 144), v92);
      v59 = *(v0 + 160);
      *(v0 + 240) = *(v0 + 144);
      *(v0 + 256) = v59;
      *(v0 + 272) = *(v0 + 176);
      CGContextConcatCTM(v38, (v0 + 240));
      CGContextSaveGState(v38);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMR);
      CRRegister.wrappedValue.getter();
      v60 = *(v0 + 752);
      v61 = Image.pdfContentsBounds.getter();
      v63 = v62;
      v83 = v65;
      v85 = v64;
      CGAffineTransformMakeRotation(&v87, v60);
      a = v87.a;
      b = v87.b;
      c = v87.c;
      d = v87.d;
      tx = v87.tx;
      ty = v87.ty;
      *(v0 + 288) = v87.a;
      *(v0 + 296) = b;
      *(v0 + 304) = c;
      *(v0 + 312) = d;
      *(v0 + 320) = tx;
      *(v0 + 328) = ty;
      v93.origin.x = v61;
      v93.origin.y = v63;
      v93.size.height = v83;
      v93.size.width = v85;
      v94 = CGRectApplyAffineTransform(v93, (v0 + 288));
      CGAffineTransformMakeTranslation(&v87, v61 - v94.origin.x, v63 - v94.origin.y);
      v72 = *&v87.a;
      v73 = *&v87.c;
      v74 = *&v87.tx;
      *(v0 + 336) = a;
      *(v0 + 344) = b;
      *(v0 + 352) = c;
      *(v0 + 360) = d;
      *(v0 + 368) = tx;
      *(v0 + 376) = ty;
      *(v0 + 384) = v72;
      *(v0 + 400) = v73;
      *(v0 + 416) = v74;
      CGAffineTransformConcat(&v87, (v0 + 336), (v0 + 384));
      v75 = *&v87.c;
      v76 = *&v87.tx;
      *(v0 + 432) = *&v87.a;
      *(v0 + 448) = v75;
      *(v0 + 464) = v76;
      CGContextConcatCTM(v38, (v0 + 432));
    }

    v77 = swift_task_alloc();
    *(v0 + 880) = v77;
    *v77 = v0;
    v77[1] = specialized CanvasElementImageRenderer.cgImage<A, B>(_:in:bounds:darkMode:isRTL:renderingLoupe:);

    return Image.renderImage(in:isTopLevel:isHDRAllowed:tryCache:)(v38, 1, v54 & 1, v86, v78);
  }

  _s8PaperKit0A0VWOhTm_2(*(v0 + 848), type metadata accessor for RendererOutput);

  outlined destroy of StocksKitCurrencyCache.Provider?(v0 + 560, &_s8PaperKit15RendererContext_pSgMd, &_s8PaperKit15RendererContext_pSgMR);
  *(v0 + 480) = 0u;
  *(v0 + 496) = 0u;
  *(v0 + 512) = 0;
  outlined init with copy of RendererContext?(v0 + 480, v0 + 600);
  v56 = *(v0 + 624);
  if (!v56)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v0 + 480, &_s8PaperKit15RendererContext_pSgMd, &_s8PaperKit15RendererContext_pSgMR);
    outlined destroy of StocksKitCurrencyCache.Provider?(v0 + 600, &_s8PaperKit15RendererContext_pSgMd, &_s8PaperKit15RendererContext_pSgMR);
LABEL_29:
    v58 = 0;
    goto LABEL_30;
  }

  v57 = *(v0 + 632);
  __swift_project_boxed_opaque_existential_1((v0 + 600), *(v0 + 624));
  v58 = (*(v57 + 24))(v56, v57);
  outlined destroy of StocksKitCurrencyCache.Provider?(v0 + 480, &_s8PaperKit15RendererContext_pSgMd, &_s8PaperKit15RendererContext_pSgMR);
  __swift_destroy_boxed_opaque_existential_0((v0 + 600));
  if (!v58)
  {
    goto LABEL_29;
  }

LABEL_30:

  v80 = *(v0 + 8);

  return v80(v58);
}

{

  return MEMORY[0x1EEE6DFA0](specialized CanvasElementImageRenderer.cgImage<A, B>(_:in:bounds:darkMode:isRTL:renderingLoupe:), 0, 0);
}

{
  CGContextRestoreGState(*(v0 + 872));
  v1 = swift_task_alloc();
  *(v0 + 888) = v1;
  *v1 = v0;
  v1[1] = specialized CanvasElementImageRenderer.cgImage<A, B>(_:in:bounds:darkMode:isRTL:renderingLoupe:);
  v2 = *(v0 + 872);
  v3 = *(v0 + 768);

  return specialized ContainerCanvasElement.renderSubelements<A>(in:capsule:options:)(v2, v3, v0 + 16);
}

{

  return MEMORY[0x1EEE6DFA0](specialized CanvasElementImageRenderer.cgImage<A, B>(_:in:bounds:darkMode:isRTL:renderingLoupe:), 0, 0);
}

{
  v1 = v0[109];
  v2 = v0[108];
  v3 = v0[107];
  v4 = v0[106];
  v5 = v0[104];
  v6 = v0[103];
  v7 = v0[102];
  CGContextRestoreGState(v1);
  (*(v6 + 8))(v5, v7);
  v8 = v0[68];
  v9 = v0[69];
  __swift_project_boxed_opaque_existential_1(v0 + 65, v8);
  (*(v9 + 32))(v8, v9);

  _s8PaperKit0A0VWOhTm_2(v4, type metadata accessor for RendererOutput);
  outlined init with copy of FindResult((v0 + 65), (v0 + 60));
  outlined destroy of PaperRenderableOptions((v0 + 2));
  __swift_destroy_boxed_opaque_existential_0(v0 + 65);
  outlined init with copy of RendererContext?((v0 + 60), (v0 + 75));
  v10 = v0[78];
  if (v10)
  {
    v11 = v0[79];
    __swift_project_boxed_opaque_existential_1(v0 + 75, v0[78]);
    v12 = (*(v11 + 24))(v10, v11);
    outlined destroy of StocksKitCurrencyCache.Provider?((v0 + 60), &_s8PaperKit15RendererContext_pSgMd, &_s8PaperKit15RendererContext_pSgMR);
    __swift_destroy_boxed_opaque_existential_0(v0 + 75);
    if (v12)
    {
      goto LABEL_6;
    }
  }

  else
  {
    outlined destroy of StocksKitCurrencyCache.Provider?((v0 + 60), &_s8PaperKit15RendererContext_pSgMd, &_s8PaperKit15RendererContext_pSgMR);
    outlined destroy of StocksKitCurrencyCache.Provider?((v0 + 75), &_s8PaperKit15RendererContext_pSgMd, &_s8PaperKit15RendererContext_pSgMR);
  }

  v12 = 0;
LABEL_6:

  v13 = v0[1];

  return v13(v12);
}

{
  v1 = v0;
  v2 = v0[62];
  v3 = v0[63];
  v5 = v0[60];
  v4 = v0[61];
  v6 = off_1F4F684A8;
  v7 = type metadata accessor for Shape(0);
  v8 = v6();
  if (CGRect.almostEqual(_:threshold:)(v8, v9, v10, v11, 0.000001, v5, v4, v2, v3))
  {
    v12 = *(v0 + 64);
    v14 = v12[5];
    v13 = v12[6];
    __swift_project_boxed_opaque_existential_1(v12 + 2, v14);
    (*(v13 + 8))(v14, v13);
  }

  v15 = *(v1 + 64);
  v16 = *(v1 + 141);
  v73 = *(v15 + 74);
  v17 = 2;
  swift_storeEnumTagMultiPayload();
  swift_beginAccess();
  if (v16 == 1)
  {
    v18 = 0;
  }

  else
  {
    v18 = *(v15 + 72);
    v17 = 1;
  }

  v19 = *(v1 + 64);
  v20 = [objc_opt_self() traitCollectionWithUserInterfaceStyle_];
  swift_beginAccess();
  v21 = *(v19 + 56);
  if (v21)
  {
    v22 = [v21 resolvedColorWithTraitCollection_];
    v23 = [v22 CGColor];
  }

  else
  {
    v23 = 0;
  }

  if (v23)
  {
    v24 = 0;
  }

  else
  {
    v24 = v18;
  }

  if (v24 == 1)
  {
    v25 = *(v1 + 64);
    v27 = v25[5];
    v26 = v25[6];
    __swift_project_boxed_opaque_existential_1(v25 + 2, v27);
    if ((*(v26 + 16))(v27, v26))
    {
      v23 = 0;
    }

    else
    {
      v28 = [objc_opt_self() systemBackgroundColor];
      v29 = [v28 resolvedColorWithTraitCollection_];

      v23 = [v29 CGColor];
    }
  }

  v30 = *(v1 + 69);
  v31 = *(v1 + 64);
  v32 = v31[5];
  v33 = v31[6];
  __swift_project_boxed_opaque_existential_1(v31 + 2, v32);
  v34 = (*(v33 + 24))(v32, v33);
  v35 = v31[5];
  v36 = v31[6];
  __swift_project_boxed_opaque_existential_1(v31 + 2, v35);
  (*(v36 + 32))(v30, v35, v36);
  if (*(v1 + 37))
  {
    v37 = v18;
    v71 = v20;
    v72 = v7;
    outlined init with take of PaperKitHashable(v1 + 17, (v1 + 29));
    v39 = *(v1 + 32);
    v38 = *(v1 + 33);
    __swift_project_boxed_opaque_existential_1(v1 + 29, v39);
    v40 = (*(v38 + 16))(v39, v38);
    v42 = *(v1 + 32);
    v41 = *(v1 + 33);
    __swift_project_boxed_opaque_existential_1(v1 + 29, v42);
    (*(v41 + 8))(v42, v41);
    if (v23)
    {
      v43 = v23;
      CGContextSetFillColorWithColor(v40, v43);
      ClipBoundingBox = CGContextGetClipBoundingBox(v40);
      CGContextFillRect(v40, ClipBoundingBox);
    }

    v69 = v23;
    v70 = *(v1 + 69);
    v44 = *(v1 + 67);
    v67 = *(v1 + 66);
    v68 = *(v1 + 65);
    v45 = *(v1 + 64);
    v65 = *(v1 + 143);
    v46 = *(v1 + 142);
    v47 = *(v1 + 141);
    v76.size.width = v1[62];
    v76.size.height = v1[63];
    v49 = v1[60];
    v48 = v1[61];
    v66 = *(v1 + 59);
    v64 = *(v1 + 58);
    v76.origin.x = v49;
    v76.origin.y = v48;
    v50 = v34 / CGRectGetWidth(v76);
    v1[18] = v50;
    v1[19] = 0.0;
    v1[20] = 0.0;
    v1[21] = v50;
    v1[22] = -(v49 * v50);
    v1[23] = -(v48 * v50);
    CGContextConcatCTM(v40, v1 + 3);
    *(v1 + 6) = 0u;
    *(v1 + 137) = 0;
    *(v1 + 7) = 0u;
    v1[16] = 0.0;
    *(v1 + 16) = v37;
    *(v1 + 17) = v47;
    *(v1 + 18) = v46;
    *(v1 + 32) = 1;
    *(v1 + 5) = 0u;
    *(v1 + 7) = 0u;
    *(v1 + 72) = 1;
    v1[10] = 0.0;
    swift_beginAccess();
    v51 = *(v45 + 64);
    *(v1 + 3) = v51;
    *(v1 + 139) = *(v45 + 73);
    v52 = v31[5];
    v53 = v31[6];
    __swift_project_boxed_opaque_existential_1(v31 + 2, v52);
    v54 = *(v53 + 8);
    v55 = v51;
    *(v1 + 140) = v54(v52, v53) & 1;
    *(v1 + 47) = v72;
    *(v1 + 48) = &protocol witness table for Shape;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1 + 44);
    outlined init with copy of Paper(v64, boxed_opaque_existential_1, type metadata accessor for Shape);
    outlined assign with take of PaperRenderable?((v1 + 44), (v1 + 12));
    *(v1 + 88) = v65;
    *(v1 + 136) = v73;
    static CRKeyPath.unique.getter();
    specialized Shape.renderSync<A>(in:id:capsule:options:)(v40, v44, v66, (v1 + 2));
    (*(v67 + 8))(v44, v68);
    v57 = *(v1 + 32);
    v58 = *(v1 + 33);
    __swift_project_boxed_opaque_existential_1(v1 + 29, v57);
    (*(v58 + 32))(v57, v58);

    _s8PaperKit0A0VWOhTm_2(v70, type metadata accessor for RendererOutput);
    outlined init with copy of FindResult((v1 + 29), (v1 + 24));
    outlined destroy of PaperRenderableOptions((v1 + 2));
    __swift_destroy_boxed_opaque_existential_0(v1 + 29);
  }

  else
  {
    _s8PaperKit0A0VWOhTm_2(*(v1 + 69), type metadata accessor for RendererOutput);

    outlined destroy of StocksKitCurrencyCache.Provider?((v1 + 34), &_s8PaperKit15RendererContext_pSgMd, &_s8PaperKit15RendererContext_pSgMR);
    *(v1 + 12) = 0u;
    *(v1 + 13) = 0u;
    v1[28] = 0.0;
  }

  outlined init with copy of RendererContext?((v1 + 24), (v1 + 39));
  v59 = *(v1 + 42);
  if (v59)
  {
    v60 = *(v1 + 43);
    __swift_project_boxed_opaque_existential_1(v1 + 39, *(v1 + 42));
    v61 = (*(v60 + 24))(v59, v60);
    outlined destroy of StocksKitCurrencyCache.Provider?((v1 + 24), &_s8PaperKit15RendererContext_pSgMd, &_s8PaperKit15RendererContext_pSgMR);
    __swift_destroy_boxed_opaque_existential_0(v1 + 39);
    if (v61)
    {
      goto LABEL_26;
    }
  }

  else
  {
    outlined destroy of StocksKitCurrencyCache.Provider?((v1 + 24), &_s8PaperKit15RendererContext_pSgMd, &_s8PaperKit15RendererContext_pSgMR);
    outlined destroy of StocksKitCurrencyCache.Provider?((v1 + 39), &_s8PaperKit15RendererContext_pSgMd, &_s8PaperKit15RendererContext_pSgMR);
  }

  v61 = 0;
LABEL_26:

  v62 = *(v1 + 1);

  return v62(v61);
}

uint64_t CanvasElementImageRenderer.cgImage<A, B>(_:in:bounds:darkMode:isRTL:renderingLoupe:)(uint64_t a1, uint64_t a2, char a3, char a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, double a12)
{
  *(v13 + 208) = v16;
  *(v13 + 216) = v12;
  *(v13 + 192) = a7;
  *(v13 + 200) = a8;
  *(v13 + 184) = a6;
  *(v13 + 258) = a5;
  *(v13 + 257) = a4;
  *(v13 + 256) = a3;
  *(v13 + 168) = a11;
  *(v13 + 176) = a12;
  *(v13 + 152) = a9;
  *(v13 + 160) = a10;
  *(v13 + 136) = a1;
  *(v13 + 144) = a2;
  type metadata accessor for RendererOutput(0);
  *(v13 + 224) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](CanvasElementImageRenderer.cgImage<A, B>(_:in:bounds:darkMode:isRTL:renderingLoupe:), 0, 0);
}

uint64_t CanvasElementImageRenderer.cgImage<A, B>(_:in:bounds:darkMode:isRTL:renderingLoupe:)()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 176);
  v4 = *(v0 + 152);
  v3 = *(v0 + 160);
  v5 = (*(*(v0 + 200) + 8))(*(v0 + 184));
  if (CGRect.almostEqual(_:threshold:)(v5, v6, v7, v8, 0.000001, v4, v3, v1, v2))
  {
    v9 = *(v0 + 216);
    v33 = *(v0 + 200);
    v10 = *(v0 + 144);
    v11 = type metadata accessor for Capsule();
    *(v0 + 120) = v11;
    *(v0 + 128) = swift_getWitnessTable();
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 96));
    (*(*(v11 - 8) + 16))(boxed_opaque_existential_1, v10, v11);
    v13 = v9[5];
    v14 = v9[6];
    __swift_project_boxed_opaque_existential_1(v9 + 2, v13);
    v15 = (*(v14 + 8))(v13, v14);
    v32 = (*(v33 + 32) + **(v33 + 32));
    v16 = swift_task_alloc();
    *(v0 + 232) = v16;
    *v16 = v0;
    v16[1] = CanvasElementImageRenderer.cgImage<A, B>(_:in:bounds:darkMode:isRTL:renderingLoupe:);
    v17 = *(v0 + 200);
    v18 = *(v0 + 184);

    return v32(v0 + 96, v15 & 1, v18, v17);
  }

  else
  {
    v20 = *(*(v0 + 216) + 74);
    type metadata accessor for RendererOutput(0);
    swift_storeEnumTagMultiPayload();
    v21 = swift_task_alloc();
    *(v0 + 248) = v21;
    *v21 = v0;
    v21[1] = CanvasElementImageRenderer.cgImage<A, B>(_:in:bounds:darkMode:isRTL:renderingLoupe:);
    v22 = *(v0 + 224);
    v23 = *(v0 + 258);
    v24 = *(v0 + 257);
    v25 = *(v0 + 256);
    v26 = *(v0 + 168);
    v27 = *(v0 + 176);
    v28 = *(v0 + 152);
    v29 = *(v0 + 160);
    v30 = *(v0 + 136);
    v31 = *(v0 + 144);

    return CanvasElementRenderer.render<A, B>(_:in:bounds:darkMode:isRTL:output:renderingLoupe:cacheAggressively:)(v0 + 16, v30, v31, v25, v24, v22, v23, v20, v28, v29, v26, v27);
  }
}

{
  v1 = *(v0 + 240);
  if (v1)
  {

    v2 = *(v0 + 8);

    return v2(v1);
  }

  else
  {
    v4 = *(*(v0 + 216) + 74);
    type metadata accessor for RendererOutput(0);
    swift_storeEnumTagMultiPayload();
    v5 = swift_task_alloc();
    *(v0 + 248) = v5;
    *v5 = v0;
    v5[1] = CanvasElementImageRenderer.cgImage<A, B>(_:in:bounds:darkMode:isRTL:renderingLoupe:);
    v6 = *(v0 + 224);
    v7 = *(v0 + 258);
    v8 = *(v0 + 257);
    v9 = *(v0 + 256);
    v10 = *(v0 + 168);
    v11 = *(v0 + 176);
    v12 = *(v0 + 152);
    v13 = *(v0 + 160);
    v14 = *(v0 + 136);
    v15 = *(v0 + 144);

    return CanvasElementRenderer.render<A, B>(_:in:bounds:darkMode:isRTL:output:renderingLoupe:cacheAggressively:)(v0 + 16, v14, v15, v9, v8, v6, v7, v4, v12, v13, v10, v11);
  }
}

{
  v1 = *(*v0 + 224);

  _s8PaperKit0A0VWOhTm_2(v1, type metadata accessor for RendererOutput);

  return MEMORY[0x1EEE6DFA0](CanvasElementImageRenderer.cgImage<A, B>(_:in:bounds:darkMode:isRTL:renderingLoupe:), 0, 0);
}

{
  outlined init with copy of RendererContext?((v0 + 2), (v0 + 7));
  v1 = v0[10];
  if (v1)
  {
    v2 = v0[11];
    __swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);
    v3 = (*(v2 + 24))(v1, v2);
    outlined destroy of StocksKitCurrencyCache.Provider?((v0 + 2), &_s8PaperKit15RendererContext_pSgMd, &_s8PaperKit15RendererContext_pSgMR);
    __swift_destroy_boxed_opaque_existential_0(v0 + 7);
    if (v3)
    {
      goto LABEL_6;
    }
  }

  else
  {
    outlined destroy of StocksKitCurrencyCache.Provider?((v0 + 2), &_s8PaperKit15RendererContext_pSgMd, &_s8PaperKit15RendererContext_pSgMR);
    outlined destroy of StocksKitCurrencyCache.Provider?((v0 + 7), &_s8PaperKit15RendererContext_pSgMd, &_s8PaperKit15RendererContext_pSgMR);
  }

  v3 = 0;
LABEL_6:

  v4 = v0[1];

  return v4(v3);
}

uint64_t CanvasElementImageRenderer.cgImage<A, B>(_:in:bounds:darkMode:isRTL:renderingLoupe:)(uint64_t a1)
{
  v2 = *v1;
  *(v2 + 240) = a1;

  __swift_destroy_boxed_opaque_existential_0((v2 + 96));

  return MEMORY[0x1EEE6DFA0](CanvasElementImageRenderer.cgImage<A, B>(_:in:bounds:darkMode:isRTL:renderingLoupe:), 0, 0);
}

uint64_t CanvasElementPDFRenderer.__allocating_init(bounds:scale:)(double a1, double a2, double a3, double a4, double a5)
{
  type metadata accessor for PDFRenderer();
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  *(v10 + 24) = a1;
  *(v10 + 32) = a2;
  *(v10 + 40) = a3;
  *(v10 + 48) = a4;
  *(v10 + 56) = a5;

  return _s8PaperKit24CanvasElementPDFRendererC8rendererAcA8Renderer_p_tcfCTf4en_nAA0E0C_Tt0g5(v10);
}

uint64_t CanvasElementPDFRenderer.__allocating_init(bounds:format:)(void *a1, double a2, double a3, double a4, double a5)
{
  type metadata accessor for PDFRenderer();
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  *(v10 + 24) = a2;
  *(v10 + 32) = a3;
  *(v10 + 40) = a4;
  *(v10 + 48) = a5;
  *(v10 + 56) = 0x3FF0000000000000;

  v12 = _s8PaperKit24CanvasElementPDFRendererC8rendererAcA8Renderer_p_tcfCTf4en_nAA0E0C_Tt0g5(v11);

  return v12;
}

uint64_t CanvasElementImageRenderer.image(from:bounds:completion:)(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v51 = a4;
  v52 = a6;
  v48 = a5;
  v49 = a3;
  v8 = a2[1];
  v53 = *a2;
  v54 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C0VGMd, &_s9Coherence7CapsuleVy8PaperKit0C0VGMR);
  v46 = *(v9 - 8);
  v47 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v44 = &v39[-v10];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v39[-v12];
  v14 = type metadata accessor for Paper(0);
  v45 = *(v14 - 8);
  v15 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v39[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v39[-v18];
  Capsule.root.getter();
  if (a2[2])
  {
    swift_getKeyPath();
    Capsule.subscript.getter();

    v53 = v55;
    v54 = v56;
  }

  else
  {
    v55 = v53;
    v56 = v54;
  }

  v20 = objc_opt_self();
  v21 = [v20 currentTraitCollection];
  v22 = [v21 layoutDirection];

  v43 = v22 == 1;
  v23 = [v20 currentTraitCollection];
  v24 = [v23 userInterfaceStyle];

  v40 = v24 == 2;
  v25 = type metadata accessor for TaskPriority();
  v26 = *(*(v25 - 8) + 56);
  v41 = v13;
  v26(v13, 1, 1, v25);
  v42 = v19;
  outlined init with copy of Paper(v19, v16, type metadata accessor for Paper);
  v27 = v46;
  v28 = v44;
  (*(v46 + 16))(v44, a1, v9);
  v29 = (*(v45 + 80) + 40) & ~*(v45 + 80);
  v30 = (v15 + *(v27 + 80) + v29) & ~*(v27 + 80);
  v31 = (v47 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
  v32 = swift_allocObject();
  *(v32 + 2) = 0;
  *(v32 + 3) = 0;
  *(v32 + 4) = v50;
  outlined init with take of Paper(v16, &v32[v29], type metadata accessor for Paper);
  (*(v27 + 32))(&v32[v30], v28, v9);
  v33 = &v32[v31];
  v34 = v54;
  *v33 = v53;
  *(v33 + 1) = v34;
  v33[32] = v40;
  v33[33] = v43;
  v35 = &v32[(v31 + 41) & 0xFFFFFFFFFFFFFFF8];
  v36 = v51;
  *v35 = v49;
  v35[1] = v36;

  v37 = v41;
  _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v41, v52, v32);

  outlined destroy of StocksKitCurrencyCache.Provider?(v37, &_sScPSgMd, &_sScPSgMR);
  return _s8PaperKit0A0VWOhTm_2(v42, type metadata accessor for Paper);
}

uint64_t CanvasElementImageRenderer.image<A, B>(_:in:bounds:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, double a12, uint64_t a13, uint64_t a14)
{
  v63 = a7;
  v61 = a6;
  v62 = a8;
  v55 = a5;
  v65 = a3;
  v66 = a4;
  v58 = a1;
  v59 = a2;
  v67 = a14;
  v60 = a13;
  v19 = type metadata accessor for Capsule();
  v56 = *(v19 - 8);
  v57 = v19;
  v20 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v51 - v21;
  v51 = &v51 - v21;
  v23 = *(a5 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v26 = &v51 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v29 = &v51 - v28;
  v53 = &v51 - v28;
  v30 = objc_opt_self();
  v31 = [v30 currentTraitCollection];
  v32 = [v31 layoutDirection];

  v54 = v32 == 1;
  v33 = [v30 currentTraitCollection];
  v34 = [v33 userInterfaceStyle];

  v52 = v34 == 2;
  v35 = type metadata accessor for TaskPriority();
  (*(*(v35 - 8) + 56))(v29, 1, 1, v35);
  v36 = v55;
  (*(v23 + 16))(v26, v58, v55);
  v37 = v56;
  v38 = v22;
  v39 = v57;
  (*(v56 + 16))(v38, v59, v57);
  v40 = (*(v23 + 80) + 72) & ~*(v23 + 80);
  v41 = (v24 + *(v37 + 80) + v40) & ~*(v37 + 80);
  v42 = (v20 + v41 + 7) & 0xFFFFFFFFFFFFFFF8;
  v43 = swift_allocObject();
  *(v43 + 2) = 0;
  *(v43 + 3) = 0;
  v44 = v61;
  *(v43 + 4) = v36;
  *(v43 + 5) = v44;
  v45 = v62;
  *(v43 + 6) = v63;
  *(v43 + 7) = v45;
  *(v43 + 8) = v64;
  (*(v23 + 32))(&v43[v40], v26, v36);
  (*(v37 + 32))(&v43[v41], v51, v39);
  v46 = &v43[v42];
  *v46 = a9;
  v46[1] = a10;
  v46[2] = a11;
  v46[3] = a12;
  *(v46 + 32) = v52;
  *(v46 + 33) = v54;
  v47 = &v43[(v42 + 41) & 0xFFFFFFFFFFFFFFF8];
  v48 = v66;
  *v47 = v65;
  v47[1] = v48;

  v49 = v53;
  _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v53, v67, v43);

  return outlined destroy of StocksKitCurrencyCache.Provider?(v49, &_sScPSgMd, &_sScPSgMR);
}

uint64_t specialized closure #1 in CanvasElementPDFRenderer.pdfData<A, B>(_:in:bounds:completion:)(double a1, double a2, double a3, double a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v13 = a12;
  v14 = a11;
  v12[2] = v24;
  v12[3] = v25;
  v21 = swift_task_alloc();
  v12[4] = v21;
  *v21 = v12;
  v21[1] = specialized closure #1 in CanvasElementPDFRenderer.pdfData<A, B>(_:in:bounds:completion:);

  return specialized CanvasElementPDFRenderer.pdfData<A, B>(_:in:bounds:darkMode:isRTL:)(a9, a10, v14, v13, a1, a2, a3, a4);
}

uint64_t specialized closure #1 in CanvasElementPDFRenderer.pdfData<A, B>(_:in:bounds:completion:)(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 40) = a1;
  *(v3 + 48) = a2;

  return MEMORY[0x1EEE6DFA0](specialized closure #1 in CanvasElementPDFRenderer.pdfData<A, B>(_:in:bounds:completion:), 0, 0);
}

uint64_t specialized closure #1 in CanvasElementPDFRenderer.pdfData<A, B>(_:in:bounds:completion:)()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  (*(v0 + 16))(v2, v1);
  outlined consume of Data?(v2, v1);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t closure #1 in CanvasElementPDFRenderer.pdfData<A, B>(_:in:bounds:completion:)(double a1, double a2, double a3, double a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v13 = a12;
  v14 = a11;
  v12[2] = v24;
  v12[3] = v25;
  v21 = swift_task_alloc();
  v12[4] = v21;
  *v21 = v12;
  v21[1] = closure #1 in CanvasElementPDFRenderer.pdfData<A, B>(_:in:bounds:completion:);

  return CanvasElementPDFRenderer.pdfData<A, B>(_:in:bounds:darkMode:isRTL:)(a9, a10, v14, v13, v26, v27, v28, v29, a1, a2, a3, a4);
}

uint64_t closure #1 in CanvasElementPDFRenderer.pdfData<A, B>(_:in:bounds:completion:)(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 40) = a1;
  *(v3 + 48) = a2;

  return MEMORY[0x1EEE6DFA0](closure #1 in CanvasElementPDFRenderer.pdfData<A, B>(_:in:bounds:completion:), 0, 0);
}

uint64_t specialized CanvasElementPDFRenderer.pdfData<A, B>(_:in:bounds:darkMode:isRTL:)(uint64_t a1, uint64_t a2, char a3, char a4, double a5, double a6, double a7, double a8)
{
  *(v9 + 648) = v8;
  *(v9 + 142) = a4;
  *(v9 + 141) = a3;
  *(v9 + 640) = a8;
  *(v9 + 632) = a7;
  *(v9 + 624) = a6;
  *(v9 + 616) = a5;
  *(v9 + 608) = a2;
  *(v9 + 600) = a1;
  v10 = type metadata accessor for CRKeyPath();
  *(v9 + 656) = v10;
  *(v9 + 664) = *(v10 - 8);
  *(v9 + 672) = swift_task_alloc();
  *(v9 + 680) = type metadata accessor for RendererOutput(0);
  *(v9 + 688) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](specialized CanvasElementPDFRenderer.pdfData<A, B>(_:in:bounds:darkMode:isRTL:), 0, 0);
}

uint64_t specialized CanvasElementPDFRenderer.pdfData<A, B>(_:in:bounds:darkMode:isRTL:)()
{
  v1 = *(v0 + 688);
  v2 = *(v0 + 648);
  v3 = *(v0 + 141);
  v4 = [objc_allocWithZone(MEMORY[0x1E695DF88]) init];
  *(v0 + 696) = v4;
  *v1 = v4;
  swift_storeEnumTagMultiPayload();
  v5 = v4;
  swift_beginAccess();
  if (v3 == 1)
  {
    v6 = 0;
    v7 = 2;
  }

  else
  {
    v6 = *(v2 + 72);
    v7 = 1;
  }

  v8 = *(v0 + 648);
  v9 = [objc_opt_self() traitCollectionWithUserInterfaceStyle_];
  *(v0 + 704) = v9;
  swift_beginAccess();
  v10 = *(v8 + 56);
  if (v10)
  {
    v11 = [v10 resolvedColorWithTraitCollection_];
    v12 = [v11 CGColor];
  }

  else
  {
    v12 = 0;
  }

  if (v12)
  {
    v13 = 0;
  }

  else
  {
    v13 = v6;
  }

  if (v13 == 1)
  {
    v14 = *(v0 + 648);
    v15 = v14[5];
    v16 = v14[6];
    __swift_project_boxed_opaque_existential_1(v14 + 2, v15);
    if ((*(v16 + 16))(v15, v16))
    {
      v12 = 0;
    }

    else
    {
      v17 = [objc_opt_self() systemBackgroundColor];
      v18 = [v17 resolvedColorWithTraitCollection_];

      v12 = [v18 CGColor];
    }
  }

  *(v0 + 712) = v12;
  v19 = *(v0 + 688);
  v20 = *(v0 + 648);
  v21 = v20[5];
  v22 = v20[6];
  __swift_project_boxed_opaque_existential_1(v20 + 2, v21);
  v23 = (*(v22 + 24))(v21, v22);
  v24 = v20[5];
  v25 = v20[6];
  __swift_project_boxed_opaque_existential_1(v20 + 2, v24);
  (*(v25 + 32))(v19, v24, v25);
  if (*(v0 + 392))
  {
    v51 = v6;
    outlined init with take of PaperKitHashable((v0 + 368), v0 + 328);
    v26 = *(v0 + 352);
    v27 = *(v0 + 360);
    __swift_project_boxed_opaque_existential_1((v0 + 328), v26);
    v28 = (*(v27 + 16))(v26, v27);
    *(v0 + 720) = v28;
    v29 = *(v0 + 352);
    v30 = *(v0 + 360);
    __swift_project_boxed_opaque_existential_1((v0 + 328), v29);
    (*(v30 + 8))(v29, v30);
    if (v12)
    {
      v31 = v12;
      CGContextSetFillColorWithColor(v28, v31);
      ClipBoundingBox = CGContextGetClipBoundingBox(v28);
      CGContextFillRect(v28, ClipBoundingBox);
    }

    v32 = *(v0 + 648);
    v33 = *(v0 + 142);
    v34 = *(v0 + 141);
    v54.size.height = *(v0 + 640);
    v54.size.width = *(v0 + 632);
    v35 = *(v0 + 624);
    v36 = *(v0 + 616);
    v37 = *(v0 + 600);
    v54.origin.x = v36;
    v54.origin.y = v35;
    v38 = v23 / CGRectGetWidth(v54);
    *(v0 + 192) = v38;
    *(v0 + 200) = 0;
    *(v0 + 208) = 0;
    *(v0 + 216) = v38;
    *(v0 + 224) = -(v36 * v38);
    *(v0 + 232) = -(v35 * v38);
    CGContextConcatCTM(v28, (v0 + 192));
    *(v0 + 137) = 0;
    *(v0 + 112) = 0u;
    *(v0 + 96) = 0u;
    *(v0 + 128) = 0;
    *(v0 + 16) = v51;
    *(v0 + 17) = v34;
    *(v0 + 18) = v33;
    *(v0 + 32) = 1;
    *(v0 + 40) = 0u;
    *(v0 + 56) = 0u;
    *(v0 + 72) = 1;
    *(v0 + 80) = 0;
    swift_beginAccess();
    v39 = *(v32 + 64);
    *(v0 + 24) = v39;
    *(v0 + 139) = *(v32 + 73);
    v40 = v20[5];
    v41 = v20[6];
    __swift_project_boxed_opaque_existential_1(v20 + 2, v40);
    v42 = *(v41 + 8);
    v43 = v39;
    *(v0 + 140) = v42(v40, v41) & 1;
    *(v0 + 432) = type metadata accessor for Paper(0);
    *(v0 + 440) = &protocol witness table for Paper;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 408));
    outlined init with copy of Paper(v37, boxed_opaque_existential_1, type metadata accessor for Paper);
    outlined assign with take of PaperRenderable?(v0 + 408, v0 + 96);
    *(v0 + 88) = 0;
    *(v0 + 136) = 0;
    static CRKeyPath.unique.getter();
    CGContextSaveGState(v28);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMR);
    CRRegister.wrappedValue.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
    CRRegister.wrappedValue.getter();
    CGImagePropertyOrientation.originAlignedTransform(_:)((v0 + 144), *(v0 + 480));
    v45 = *(v0 + 160);
    *(v0 + 240) = *(v0 + 144);
    v46 = *(v0 + 176);
    *(v0 + 256) = v45;
    *(v0 + 272) = v46;
    CGContextConcatCTM(v28, (v0 + 240));
    v47 = swift_task_alloc();
    *(v0 + 728) = v47;
    *v47 = v0;
    v47[1] = specialized CanvasElementPDFRenderer.pdfData<A, B>(_:in:bounds:darkMode:isRTL:);
    v48 = *(v0 + 608);

    return specialized ContainerCanvasElement.renderSubelements<A>(in:capsule:options:)(v28, v48, v0 + 16);
  }

  else
  {
    _s8PaperKit0A0VWOhTm_2(*(v0 + 688), type metadata accessor for RendererOutput);

    outlined destroy of StocksKitCurrencyCache.Provider?(v0 + 368, &_s8PaperKit15RendererContext_pSgMd, &_s8PaperKit15RendererContext_pSgMR);
    *(v0 + 288) = 0u;
    *(v0 + 304) = 0u;
    *(v0 + 320) = 0;

    outlined destroy of StocksKitCurrencyCache.Provider?(v0 + 288, &_s8PaperKit15RendererContext_pSgMd, &_s8PaperKit15RendererContext_pSgMR);

    v50 = *(v0 + 8);

    return v50(0, 0xF000000000000000);
  }
}

{

  return MEMORY[0x1EEE6DFA0](specialized CanvasElementPDFRenderer.pdfData<A, B>(_:in:bounds:darkMode:isRTL:), 0, 0);
}

{
  v1 = *(v0 + 720);
  v2 = *(v0 + 712);
  v3 = *(v0 + 704);
  v4 = *(v0 + 688);
  v5 = *(v0 + 672);
  v6 = *(v0 + 664);
  v7 = *(v0 + 656);
  CGContextRestoreGState(v1);
  (*(v6 + 8))(v5, v7);
  v8 = *(v0 + 352);
  v9 = *(v0 + 360);
  __swift_project_boxed_opaque_existential_1((v0 + 328), v8);
  (*(v9 + 32))(v8, v9);

  _s8PaperKit0A0VWOhTm_2(v4, type metadata accessor for RendererOutput);
  outlined init with copy of FindResult(v0 + 328, v0 + 288);
  outlined destroy of PaperRenderableOptions(v0 + 16);
  __swift_destroy_boxed_opaque_existential_0((v0 + 328));
  if (*(v0 + 312))
  {
    v10 = *(v0 + 696);
    [v10 copy];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();

    outlined destroy of StocksKitCurrencyCache.Provider?(v0 + 288, &_s8PaperKit15RendererContext_pSgMd, &_s8PaperKit15RendererContext_pSgMR);
    swift_dynamicCast();
    v11 = *(v0 + 584);
    v12 = *(v0 + 592);
  }

  else
  {

    outlined destroy of StocksKitCurrencyCache.Provider?(v0 + 288, &_s8PaperKit15RendererContext_pSgMd, &_s8PaperKit15RendererContext_pSgMR);
    v11 = 0;
    v12 = 0xF000000000000000;
  }

  v13 = *(v0 + 8);

  return v13(v11, v12);
}

uint64_t CanvasElementPDFRenderer.pdfData<A, B>(_:in:bounds:darkMode:isRTL:)(uint64_t a1, uint64_t a2, char a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, double a12)
{
  *(v13 + 176) = a8;
  *(v13 + 184) = v12;
  *(v13 + 160) = a6;
  *(v13 + 168) = a7;
  *(v13 + 152) = a5;
  *(v13 + 225) = a4;
  *(v13 + 224) = a3;
  *(v13 + 136) = a11;
  *(v13 + 144) = a12;
  *(v13 + 120) = a9;
  *(v13 + 128) = a10;
  *(v13 + 104) = a1;
  *(v13 + 112) = a2;
  *(v13 + 192) = type metadata accessor for RendererOutput(0);
  *(v13 + 200) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](CanvasElementPDFRenderer.pdfData<A, B>(_:in:bounds:darkMode:isRTL:), 0, 0);
}

uint64_t CanvasElementPDFRenderer.pdfData<A, B>(_:in:bounds:darkMode:isRTL:)()
{
  v1 = *(v0 + 200);
  v2 = [objc_allocWithZone(MEMORY[0x1E695DF88]) init];
  *(v0 + 208) = v2;
  *v1 = v2;
  swift_storeEnumTagMultiPayload();
  v3 = v2;
  v4 = swift_task_alloc();
  *(v0 + 216) = v4;
  *v4 = v0;
  v4[1] = CanvasElementPDFRenderer.pdfData<A, B>(_:in:bounds:darkMode:isRTL:);
  v5 = *(v0 + 200);
  v6 = *(v0 + 225);
  v7 = *(v0 + 224);
  v8 = *(v0 + 136);
  v9 = *(v0 + 144);
  v10 = *(v0 + 120);
  v11 = *(v0 + 128);
  v12 = *(v0 + 104);
  v13 = *(v0 + 112);

  return CanvasElementRenderer.render<A, B>(_:in:bounds:darkMode:isRTL:output:renderingLoupe:cacheAggressively:)(v0 + 16, v12, v13, v7, v6, v5, 0, 0, v10, v11, v8, v9);
}

{
  v1 = *(*v0 + 200);

  _s8PaperKit0A0VWOhTm_2(v1, type metadata accessor for RendererOutput);

  return MEMORY[0x1EEE6DFA0](CanvasElementPDFRenderer.pdfData<A, B>(_:in:bounds:darkMode:isRTL:), 0, 0);
}

{
  if (*(v0 + 40))
  {
    v1 = *(v0 + 208);
    [v1 copy];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();

    outlined destroy of StocksKitCurrencyCache.Provider?(v0 + 16, &_s8PaperKit15RendererContext_pSgMd, &_s8PaperKit15RendererContext_pSgMR);
    swift_dynamicCast();
    v3 = *(v0 + 88);
    v2 = *(v0 + 96);
  }

  else
  {

    outlined destroy of StocksKitCurrencyCache.Provider?(v0 + 16, &_s8PaperKit15RendererContext_pSgMd, &_s8PaperKit15RendererContext_pSgMR);
    v3 = 0;
    v2 = 0xF000000000000000;
  }

  v4 = *(v0 + 8);

  return v4(v3, v2);
}

uint64_t CanvasElementPDFRenderer.writePDF(from:bounds:to:completion:)(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v56 = a5;
  v53 = a3;
  v54 = a4;
  v7 = a2[1];
  v60 = *a2;
  v61 = v7;
  v8 = type metadata accessor for URL();
  v48 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v52 = v9;
  v59 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C0VGMd, &_s9Coherence7CapsuleVy8PaperKit0C0VGMR);
  v51 = *(v10 - 8);
  v50 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v58 = &v42 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v57 = &v42 - v13;
  v14 = type metadata accessor for Paper(0);
  v49 = *(v14 - 8);
  v15 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v42 - v17;
  Capsule.root.getter();
  if (a2[2])
  {
    swift_getKeyPath();
    Capsule.subscript.getter();

    v60 = v62;
    v61 = v63;
  }

  else
  {
    v62 = v60;
    v63 = v61;
  }

  v19 = objc_opt_self();
  v20 = [v19 currentTraitCollection];
  v21 = [v20 layoutDirection];

  v47 = v21 == 1;
  v22 = [v19 currentTraitCollection];
  v23 = [v22 userInterfaceStyle];

  v45 = v23 == 2;
  v24 = type metadata accessor for TaskPriority();
  (*(*(v24 - 8) + 56))(v57, 1, 1, v24);
  v46 = v18;
  v44 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Paper(v18, v44, type metadata accessor for Paper);
  v25 = v51;
  v26 = *(v51 + 16);
  v43 = v10;
  v26(v58, a1, v10);
  v27 = v48;
  (*(v48 + 16))(v59, v53, v8);
  v28 = (*(v49 + 80) + 40) & ~*(v49 + 80);
  v29 = (v15 + *(v25 + 80) + v28) & ~*(v25 + 80);
  v30 = (v50 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
  v31 = (*(v27 + 80) + v30 + 32) & ~*(v27 + 80);
  v32 = v31 + v52;
  v53 = v8;
  v33 = (v31 + v52 + 9) & 0xFFFFFFFFFFFFFFF8;
  v34 = swift_allocObject();
  *(v34 + 2) = 0;
  *(v34 + 3) = 0;
  *(v34 + 4) = v55;
  outlined init with take of Paper(v44, &v34[v28], type metadata accessor for Paper);
  (*(v25 + 32))(&v34[v29], v58, v43);
  v35 = &v34[v30];
  v36 = v61;
  *v35 = v60;
  *(v35 + 1) = v36;
  (*(v27 + 32))(&v34[v31], v59, v53);
  v37 = &v34[v32];
  *v37 = v45;
  v37[1] = v47;
  v38 = &v34[v33];
  v39 = v56;
  *v38 = v54;
  v38[1] = v39;

  v40 = v57;
  _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v57, &async function pointer to partial apply for specialized closure #1 in CanvasElementPDFRenderer.writePDF<A, B>(_:in:bounds:to:completion:), v34);

  outlined destroy of StocksKitCurrencyCache.Provider?(v40, &_sScPSgMd, &_sScPSgMR);
  return _s8PaperKit0A0VWOhTm_2(v46, type metadata accessor for Paper);
}

uint64_t CanvasElementPDFRenderer.writePDF(from:bounds:to:darkMode:isRTL:)(uint64_t a1, uint64_t a2, _OWORD *a3, uint64_t a4, char a5, char a6)
{
  *(v7 + 616) = v6;
  *(v7 + 142) = a6;
  *(v7 + 141) = a5;
  *(v7 + 608) = a4;
  *(v7 + 600) = a3;
  *(v7 + 592) = a2;
  *(v7 + 584) = a1;
  v8 = a3[1];
  *(v7 + 624) = *a3;
  *(v7 + 640) = v8;
  v9 = type metadata accessor for CRKeyPath();
  *(v7 + 656) = v9;
  *(v7 + 664) = *(v9 - 8);
  *(v7 + 672) = swift_task_alloc();
  *(v7 + 680) = type metadata accessor for RendererOutput(0);
  *(v7 + 688) = swift_task_alloc();
  *(v7 + 696) = type metadata accessor for Paper(0);
  *(v7 + 704) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](CanvasElementPDFRenderer.writePDF(from:bounds:to:darkMode:isRTL:), 0, 0);
}

uint64_t CanvasElementPDFRenderer.writePDF(from:bounds:to:darkMode:isRTL:)()
{
  v1 = *(v0 + 600);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C0VGMd, &_s9Coherence7CapsuleVy8PaperKit0C0VGMR);
  Capsule.root.getter();
  if (*(v1 + 32))
  {
    swift_getKeyPath();
    Capsule.subscript.getter();

    v3 = *(v0 + 448);
    v2 = *(v0 + 456);
    v5 = *(v0 + 464);
    v4 = *(v0 + 472);
  }

  else
  {
    v4 = *(v0 + 648);
    v5 = *(v0 + 640);
    v2 = *(v0 + 632);
    v3 = *(v0 + 624);
    *(v0 + 448) = v3;
    *(v0 + 456) = v2;
    *(v0 + 464) = v5;
    *(v0 + 472) = v4;
  }

  v6 = *(v0 + 688);
  v7 = *(v0 + 616);
  v8 = *(v0 + 141);
  v9 = *(v0 + 608);
  v10 = type metadata accessor for URL();
  *(v0 + 712) = v10;
  v11 = *(v10 - 8);
  *(v0 + 720) = v11;
  v12 = *(v11 + 16);
  *(v0 + 728) = v12;
  *(v0 + 736) = (v11 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v12(v6, v9, v10);
  swift_storeEnumTagMultiPayload();
  swift_beginAccess();
  if (v8 == 1)
  {
    v13 = 0;
    v14 = 2;
  }

  else
  {
    v13 = *(v7 + 72);
    v14 = 1;
  }

  v15 = *(v0 + 616);
  v16 = [objc_opt_self() traitCollectionWithUserInterfaceStyle_];
  *(v0 + 744) = v16;
  swift_beginAccess();
  v17 = *(v15 + 56);
  if (v17)
  {
    v18 = [v17 resolvedColorWithTraitCollection_];
    v19 = [v18 CGColor];
  }

  else
  {
    v19 = 0;
  }

  if (v19)
  {
    v20 = 0;
  }

  else
  {
    v20 = v13;
  }

  if (v20 == 1)
  {
    v21 = *(v0 + 616);
    v22 = v21[5];
    v23 = v21[6];
    __swift_project_boxed_opaque_existential_1(v21 + 2, v22);
    if ((*(v23 + 16))(v22, v23))
    {
      v19 = 0;
    }

    else
    {
      v24 = [objc_opt_self() systemBackgroundColor];
      v25 = [v24 resolvedColorWithTraitCollection_];

      v19 = [v25 CGColor];
    }
  }

  *(v0 + 752) = v19;
  v26 = *(v0 + 688);
  v27 = *(v0 + 616);
  v28 = v27[5];
  v29 = v27[6];
  __swift_project_boxed_opaque_existential_1(v27 + 2, v28);
  v30 = (*(v29 + 24))(v28, v29);
  v31 = v27[5];
  v32 = v27[6];
  __swift_project_boxed_opaque_existential_1(v27 + 2, v31);
  (*(v32 + 32))(v26, v31, v32);
  if (*(v0 + 392))
  {
    v59 = v13;
    outlined init with take of PaperKitHashable((v0 + 368), v0 + 328);
    v33 = *(v0 + 352);
    v34 = *(v0 + 360);
    __swift_project_boxed_opaque_existential_1((v0 + 328), v33);
    v35 = (*(v34 + 16))(v33, v34);
    *(v0 + 760) = v35;
    v36 = *(v0 + 352);
    v37 = *(v0 + 360);
    __swift_project_boxed_opaque_existential_1((v0 + 328), v36);
    (*(v37 + 8))(v36, v37);
    if (v19)
    {
      v38 = v19;
      CGContextSetFillColorWithColor(v35, v38);
      ClipBoundingBox = CGContextGetClipBoundingBox(v35);
      CGContextFillRect(v35, ClipBoundingBox);
    }

    v39 = *(v0 + 704);
    v58 = *(v0 + 696);
    v40 = *(v0 + 616);
    v41 = *(v0 + 142);
    v42 = *(v0 + 141);
    v62.origin.x = v3;
    v62.origin.y = v2;
    v62.size.width = v5;
    v62.size.height = v4;
    v43 = v30 / CGRectGetWidth(v62);
    *(v0 + 192) = v43;
    *(v0 + 200) = 0;
    *(v0 + 208) = 0;
    *(v0 + 216) = v43;
    *(v0 + 224) = -(v3 * v43);
    *(v0 + 232) = -(v2 * v43);
    CGContextConcatCTM(v35, (v0 + 192));
    *(v0 + 137) = 0;
    *(v0 + 112) = 0u;
    *(v0 + 96) = 0u;
    *(v0 + 128) = 0;
    *(v0 + 16) = v59;
    *(v0 + 17) = v42;
    *(v0 + 18) = v41;
    *(v0 + 32) = 1;
    *(v0 + 40) = 0u;
    *(v0 + 56) = 0u;
    *(v0 + 72) = 1;
    *(v0 + 80) = 0;
    swift_beginAccess();
    v44 = *(v40 + 64);
    *(v0 + 24) = v44;
    *(v0 + 139) = *(v40 + 73);
    v45 = v27[5];
    v46 = v27[6];
    __swift_project_boxed_opaque_existential_1(v27 + 2, v45);
    v47 = *(v46 + 8);
    v48 = v44;
    *(v0 + 140) = v47(v45, v46) & 1;
    *(v0 + 432) = v58;
    *(v0 + 440) = &protocol witness table for Paper;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 408));
    outlined init with copy of Paper(v39, boxed_opaque_existential_1, type metadata accessor for Paper);
    outlined assign with take of PaperRenderable?(v0 + 408, v0 + 96);
    *(v0 + 88) = 0;
    *(v0 + 136) = 0;
    static CRKeyPath.unique.getter();
    CGContextSaveGState(v35);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMR);
    CRRegister.wrappedValue.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
    CRRegister.wrappedValue.getter();
    CGImagePropertyOrientation.originAlignedTransform(_:)((v0 + 144), *(v0 + 480));
    v50 = *(v0 + 160);
    *(v0 + 240) = *(v0 + 144);
    v51 = *(v0 + 176);
    *(v0 + 256) = v50;
    *(v0 + 272) = v51;
    CGContextConcatCTM(v35, (v0 + 240));
    v52 = swift_task_alloc();
    *(v0 + 768) = v52;
    *v52 = v0;
    v52[1] = CanvasElementPDFRenderer.writePDF(from:bounds:to:darkMode:isRTL:);
    v53 = *(v0 + 592);

    return specialized ContainerCanvasElement.renderSubelements<A>(in:capsule:options:)(v35, v53, v0 + 16);
  }

  else
  {
    _s8PaperKit0A0VWOhTm_2(*(v0 + 688), type metadata accessor for RendererOutput);

    outlined destroy of StocksKitCurrencyCache.Provider?(v0 + 368, &_s8PaperKit15RendererContext_pSgMd, &_s8PaperKit15RendererContext_pSgMR);
    *(v0 + 288) = 0u;
    *(v0 + 304) = 0u;
    *(v0 + 320) = 0;
    _s8PaperKit0A0VWOhTm_2(*(v0 + 704), type metadata accessor for Paper);
    v55 = *(v0 + 312);
    outlined destroy of StocksKitCurrencyCache.Provider?(v0 + 288, &_s8PaperKit15RendererContext_pSgMd, &_s8PaperKit15RendererContext_pSgMR);
    if (v55)
    {
      (*(v0 + 728))(*(v0 + 584), *(v0 + 608), *(v0 + 712));
      v56 = 0;
    }

    else
    {
      v56 = 1;
    }

    (*(*(v0 + 720) + 56))(*(v0 + 584), v56, 1, *(v0 + 712));

    v57 = *(v0 + 8);

    return v57();
  }
}

{

  return MEMORY[0x1EEE6DFA0](CanvasElementPDFRenderer.writePDF(from:bounds:to:darkMode:isRTL:), 0, 0);
}

{
  v1 = *(v0 + 760);
  v2 = *(v0 + 752);
  v3 = *(v0 + 744);
  v4 = *(v0 + 688);
  v5 = *(v0 + 672);
  v6 = *(v0 + 664);
  v7 = *(v0 + 656);
  CGContextRestoreGState(v1);
  (*(v6 + 8))(v5, v7);
  v8 = *(v0 + 352);
  v9 = *(v0 + 360);
  __swift_project_boxed_opaque_existential_1((v0 + 328), v8);
  (*(v9 + 32))(v8, v9);

  _s8PaperKit0A0VWOhTm_2(v4, type metadata accessor for RendererOutput);
  outlined init with copy of FindResult(v0 + 328, v0 + 288);
  outlined destroy of PaperRenderableOptions(v0 + 16);
  __swift_destroy_boxed_opaque_existential_0((v0 + 328));
  _s8PaperKit0A0VWOhTm_2(*(v0 + 704), type metadata accessor for Paper);
  v10 = *(v0 + 312);
  outlined destroy of StocksKitCurrencyCache.Provider?(v0 + 288, &_s8PaperKit15RendererContext_pSgMd, &_s8PaperKit15RendererContext_pSgMR);
  if (v10)
  {
    (*(v0 + 728))(*(v0 + 584), *(v0 + 608), *(v0 + 712));
    v11 = 0;
  }

  else
  {
    v11 = 1;
  }

  (*(*(v0 + 720) + 56))(*(v0 + 584), v11, 1, *(v0 + 712));

  v12 = *(v0 + 8);

  return v12();
}

uint64_t CanvasElementPDFRenderer.writePDF<A, B>(_:in:bounds:to:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, double a12, uint64_t a13)
{
  v72 = a8;
  v69 = a3;
  v70 = a7;
  v63 = a6;
  v74 = a4;
  v75 = a5;
  v66 = a1;
  v67 = a2;
  v71 = a13;
  v18 = type metadata accessor for URL();
  v77 = *(v18 - 8);
  v78 = v18;
  v68 = *(v77 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v56 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = v20;
  v65 = type metadata accessor for Capsule();
  v76 = *(v65 - 8);
  v21 = *(v76 + 64);
  MEMORY[0x1EEE9AC00](v65);
  v23 = &v56 - v22;
  v58 = &v56 - v22;
  v61 = *(a6 - 8);
  v24 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v57 = &v56 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v28 = &v56 - v27;
  v62 = &v56 - v27;
  v29 = objc_opt_self();
  v30 = [v29 currentTraitCollection];
  v31 = [v30 layoutDirection];

  v64 = v31 == 1;
  v32 = [v29 currentTraitCollection];
  v33 = [v32 userInterfaceStyle];

  v60 = v33 == 2;
  v34 = type metadata accessor for TaskPriority();
  (*(*(v34 - 8) + 56))(v28, 1, 1, v34);
  v35 = v61;
  v36 = v63;
  (*(v61 + 16))(&v56 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0), v66, v63);
  v37 = v76;
  v38 = v65;
  (*(v76 + 16))(v23, v67, v65);
  v39 = v77;
  (*(v77 + 16))(v20, v69, v78);
  v40 = v35;
  v41 = (*(v35 + 80) + 72) & ~*(v35 + 80);
  v42 = (v24 + v41 + *(v37 + 80)) & ~*(v37 + 80);
  v43 = (v21 + v42 + 7) & 0xFFFFFFFFFFFFFFF8;
  v44 = (*(v39 + 80) + v43 + 32) & ~*(v39 + 80);
  v45 = v44 + v68;
  v46 = (v44 + v68 + 9) & 0xFFFFFFFFFFFFFFF8;
  v47 = swift_allocObject();
  *(v47 + 2) = 0;
  *(v47 + 3) = 0;
  v48 = v70;
  *(v47 + 4) = v36;
  *(v47 + 5) = v48;
  v49 = v71;
  *(v47 + 6) = v72;
  *(v47 + 7) = v49;
  *(v47 + 8) = v73;
  (*(v40 + 32))(&v47[v41], v57, v36);
  (*(v76 + 32))(&v47[v42], v58, v38);
  v50 = &v47[v43];
  *v50 = a9;
  v50[1] = a10;
  v50[2] = a11;
  v50[3] = a12;
  (*(v77 + 32))(&v47[v44], v59, v78);
  v51 = &v47[v45];
  *v51 = v60;
  v51[1] = v64;
  v52 = &v47[v46];
  v53 = v75;
  *v52 = v74;
  v52[1] = v53;

  v54 = v62;
  _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v62, &async function pointer to partial apply for closure #1 in CanvasElementPDFRenderer.writePDF<A, B>(_:in:bounds:to:completion:), v47);

  return outlined destroy of StocksKitCurrencyCache.Provider?(v54, &_sScPSgMd, &_sScPSgMR);
}

uint64_t specialized closure #1 in CanvasElementPDFRenderer.writePDF<A, B>(_:in:bounds:to:completion:)(double a1, double a2, double a3, double a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  *(v12 + 624) = v18;
  *(v12 + 616) = v17;
  *(v12 + 142) = v16;
  *(v12 + 141) = a12;
  *(v12 + 608) = a11;
  *(v12 + 600) = a4;
  *(v12 + 592) = a3;
  *(v12 + 584) = a2;
  *(v12 + 576) = a1;
  *(v12 + 568) = a10;
  *(v12 + 560) = a9;
  *(v12 + 552) = a8;
  v13 = type metadata accessor for CRKeyPath();
  *(v12 + 632) = v13;
  *(v12 + 640) = *(v13 - 8);
  *(v12 + 648) = swift_task_alloc();
  *(v12 + 656) = type metadata accessor for RendererOutput(0);
  *(v12 + 664) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  *(v12 + 672) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](specialized closure #1 in CanvasElementPDFRenderer.writePDF<A, B>(_:in:bounds:to:completion:), 0, 0);
}

uint64_t specialized closure #1 in CanvasElementPDFRenderer.writePDF<A, B>(_:in:bounds:to:completion:)()
{
  v1 = *(v0 + 664);
  v2 = *(v0 + 141);
  v3 = *(v0 + 608);
  v4 = *(v0 + 552);
  v5 = type metadata accessor for URL();
  *(v0 + 680) = v5;
  v6 = *(v5 - 8);
  *(v0 + 688) = v6;
  v7 = *(v6 + 16);
  *(v0 + 696) = v7;
  *(v0 + 704) = (v6 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v1, v3, v5);
  swift_storeEnumTagMultiPayload();
  swift_beginAccess();
  if (v2 == 1)
  {
    v8 = 0;
    v9 = 2;
  }

  else
  {
    v8 = *(v4 + 72);
    v9 = 1;
  }

  v10 = *(v0 + 552);
  v11 = [objc_opt_self() traitCollectionWithUserInterfaceStyle_];
  *(v0 + 712) = v11;
  swift_beginAccess();
  v12 = *(v10 + 56);
  if (v12)
  {
    v13 = [v12 resolvedColorWithTraitCollection_];
    v14 = [v13 CGColor];
  }

  else
  {
    v14 = 0;
  }

  if (v14)
  {
    v15 = 0;
  }

  else
  {
    v15 = v8;
  }

  if (v15 == 1)
  {
    v16 = *(v0 + 552);
    v17 = v16[5];
    v18 = v16[6];
    __swift_project_boxed_opaque_existential_1(v16 + 2, v17);
    if ((*(v18 + 16))(v17, v18))
    {
      v14 = 0;
    }

    else
    {
      v19 = [objc_opt_self() systemBackgroundColor];
      v20 = [v19 resolvedColorWithTraitCollection_];

      v14 = [v20 CGColor];
    }
  }

  *(v0 + 720) = v14;
  v21 = *(v0 + 664);
  v22 = *(v0 + 552);
  v23 = v22[5];
  v24 = v22[6];
  __swift_project_boxed_opaque_existential_1(v22 + 2, v23);
  v25 = (*(v24 + 24))(v23, v24);
  v26 = v22[5];
  v27 = v22[6];
  __swift_project_boxed_opaque_existential_1(v22 + 2, v26);
  (*(v27 + 32))(v21, v26, v27);
  if (*(v0 + 392))
  {
    v55 = v8;
    outlined init with take of PaperKitHashable((v0 + 368), v0 + 328);
    v28 = *(v0 + 352);
    v29 = *(v0 + 360);
    __swift_project_boxed_opaque_existential_1((v0 + 328), v28);
    v30 = (*(v29 + 16))(v28, v29);
    *(v0 + 728) = v30;
    v31 = *(v0 + 352);
    v32 = *(v0 + 360);
    __swift_project_boxed_opaque_existential_1((v0 + 328), v31);
    (*(v32 + 8))(v31, v32);
    if (v14)
    {
      v33 = v14;
      CGContextSetFillColorWithColor(v30, v33);
      ClipBoundingBox = CGContextGetClipBoundingBox(v30);
      CGContextFillRect(v30, ClipBoundingBox);
    }

    v34 = *(v0 + 142);
    v35 = *(v0 + 141);
    v58.size.height = *(v0 + 600);
    v58.size.width = *(v0 + 592);
    v36 = *(v0 + 584);
    v37 = *(v0 + 576);
    v38 = *(v0 + 560);
    v39 = *(v0 + 552);
    v58.origin.x = v37;
    v58.origin.y = v36;
    v40 = v25 / CGRectGetWidth(v58);
    *(v0 + 192) = v40;
    *(v0 + 200) = 0;
    *(v0 + 208) = 0;
    *(v0 + 216) = v40;
    *(v0 + 224) = -(v37 * v40);
    *(v0 + 232) = -(v36 * v40);
    CGContextConcatCTM(v30, (v0 + 192));
    *(v0 + 137) = 0;
    *(v0 + 112) = 0u;
    *(v0 + 96) = 0u;
    *(v0 + 128) = 0;
    *(v0 + 16) = v55;
    *(v0 + 17) = v35;
    *(v0 + 18) = v34;
    *(v0 + 32) = 1;
    *(v0 + 40) = 0u;
    *(v0 + 56) = 0u;
    *(v0 + 72) = 1;
    *(v0 + 80) = 0;
    swift_beginAccess();
    v41 = *(v39 + 64);
    *(v0 + 24) = v41;
    *(v0 + 139) = *(v39 + 73);
    v42 = v22[5];
    v43 = v22[6];
    __swift_project_boxed_opaque_existential_1(v22 + 2, v42);
    v44 = *(v43 + 8);
    v45 = v41;
    *(v0 + 140) = v44(v42, v43) & 1;
    *(v0 + 432) = type metadata accessor for Paper(0);
    *(v0 + 440) = &protocol witness table for Paper;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 408));
    outlined init with copy of Paper(v38, boxed_opaque_existential_1, type metadata accessor for Paper);
    outlined assign with take of PaperRenderable?(v0 + 408, v0 + 96);
    *(v0 + 88) = 0;
    *(v0 + 136) = 0;
    static CRKeyPath.unique.getter();
    CGContextSaveGState(v30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMR);
    CRRegister.wrappedValue.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
    CRRegister.wrappedValue.getter();
    CGImagePropertyOrientation.originAlignedTransform(_:)((v0 + 144), *(v0 + 448));
    v47 = *(v0 + 160);
    *(v0 + 240) = *(v0 + 144);
    v48 = *(v0 + 176);
    *(v0 + 256) = v47;
    *(v0 + 272) = v48;
    CGContextConcatCTM(v30, (v0 + 240));
    v49 = swift_task_alloc();
    *(v0 + 736) = v49;
    *v49 = v0;
    v49[1] = specialized closure #1 in CanvasElementPDFRenderer.writePDF<A, B>(_:in:bounds:to:completion:);
    v50 = *(v0 + 568);

    return specialized ContainerCanvasElement.renderSubelements<A>(in:capsule:options:)(v30, v50, v0 + 16);
  }

  else
  {
    _s8PaperKit0A0VWOhTm_2(*(v0 + 664), type metadata accessor for RendererOutput);

    outlined destroy of StocksKitCurrencyCache.Provider?(v0 + 368, &_s8PaperKit15RendererContext_pSgMd, &_s8PaperKit15RendererContext_pSgMR);
    *(v0 + 288) = 0u;
    *(v0 + 304) = 0u;
    *(v0 + 320) = 0;
    outlined destroy of StocksKitCurrencyCache.Provider?(v0 + 288, &_s8PaperKit15RendererContext_pSgMd, &_s8PaperKit15RendererContext_pSgMR);
    v52 = *(v0 + 672);
    v53 = *(v0 + 616);
    (*(*(v0 + 688) + 56))(v52, 1, 1, *(v0 + 680));
    v53(v52);
    outlined destroy of StocksKitCurrencyCache.Provider?(v52, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);

    v54 = *(v0 + 8);

    return v54();
  }
}

{

  return MEMORY[0x1EEE6DFA0](specialized closure #1 in CanvasElementPDFRenderer.writePDF<A, B>(_:in:bounds:to:completion:), 0, 0);
}

{
  v1 = v0[91];
  v2 = v0[90];
  v3 = v0[89];
  v4 = v0[83];
  v5 = v0[81];
  v6 = v0[80];
  v7 = v0[79];
  CGContextRestoreGState(v1);
  (*(v6 + 8))(v5, v7);
  v8 = v0[44];
  v9 = v0[45];
  __swift_project_boxed_opaque_existential_1(v0 + 41, v8);
  (*(v9 + 32))(v8, v9);

  _s8PaperKit0A0VWOhTm_2(v4, type metadata accessor for RendererOutput);
  outlined init with copy of FindResult((v0 + 41), (v0 + 36));
  outlined destroy of PaperRenderableOptions((v0 + 2));
  __swift_destroy_boxed_opaque_existential_0(v0 + 41);
  if (v0[39])
  {
    v10 = v0[87];
    v11 = v0[85];
    v12 = v0[84];
    v13 = v0[76];
    outlined destroy of StocksKitCurrencyCache.Provider?((v0 + 36), &_s8PaperKit15RendererContext_pSgMd, &_s8PaperKit15RendererContext_pSgMR);
    v10(v12, v13, v11);
    v14 = 0;
  }

  else
  {
    outlined destroy of StocksKitCurrencyCache.Provider?((v0 + 36), &_s8PaperKit15RendererContext_pSgMd, &_s8PaperKit15RendererContext_pSgMR);
    v14 = 1;
  }

  v15 = v0[84];
  v16 = v0[77];
  (*(v0[86] + 56))(v15, v14, 1, v0[85]);
  v16(v15);
  outlined destroy of StocksKitCurrencyCache.Provider?(v15, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);

  v17 = v0[1];

  return v17();
}

uint64_t closure #1 in CanvasElementPDFRenderer.writePDF<A, B>(_:in:bounds:to:completion:)(double a1, double a2, double a3, double a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  v12[2] = v26;
  v12[3] = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v19 = swift_task_alloc();
  v12[4] = v19;
  v20 = swift_task_alloc();
  v12[5] = v20;
  *v20 = v12;
  v20[1] = closure #1 in CanvasElementPDFRenderer.writePDF<A, B>(_:in:bounds:to:completion:);

  return CanvasElementPDFRenderer.writePDF<A, B>(_:in:bounds:to:darkMode:isRTL:)(v19, a9, a10, a11, a12, v25, v28, v29, a1, a2, a3, a4);
}

uint64_t closure #1 in CanvasElementPDFRenderer.writePDF<A, B>(_:in:bounds:to:completion:)()
{

  return MEMORY[0x1EEE6DFA0](closure #1 in CanvasElementPDFRenderer.writePDF<A, B>(_:in:bounds:to:completion:), 0, 0);
}

{
  v1 = *(v0 + 32);
  (*(v0 + 16))(v1);
  outlined destroy of StocksKitCurrencyCache.Provider?(v1, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t CanvasElementPDFRenderer.writePDF<A, B>(_:in:bounds:to:darkMode:isRTL:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, double a12)
{
  *(v13 + 144) = v17;
  *(v13 + 152) = v12;
  *(v13 + 128) = a8;
  *(v13 + 136) = v16;
  *(v13 + 217) = a6;
  *(v13 + 216) = a5;
  *(v13 + 112) = a4;
  *(v13 + 120) = a7;
  *(v13 + 96) = a11;
  *(v13 + 104) = a12;
  *(v13 + 80) = a9;
  *(v13 + 88) = a10;
  *(v13 + 64) = a2;
  *(v13 + 72) = a3;
  *(v13 + 56) = a1;
  *(v13 + 160) = type metadata accessor for RendererOutput(0);
  *(v13 + 168) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](CanvasElementPDFRenderer.writePDF<A, B>(_:in:bounds:to:darkMode:isRTL:), 0, 0);
}

uint64_t CanvasElementPDFRenderer.writePDF<A, B>(_:in:bounds:to:darkMode:isRTL:)()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 112);
  v3 = type metadata accessor for URL();
  *(v0 + 176) = v3;
  v4 = *(v3 - 8);
  *(v0 + 184) = v4;
  v5 = *(v4 + 16);
  *(v0 + 192) = v5;
  *(v0 + 200) = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v2, v3);
  swift_storeEnumTagMultiPayload();
  v6 = swift_task_alloc();
  *(v0 + 208) = v6;
  *v6 = v0;
  v6[1] = CanvasElementPDFRenderer.writePDF<A, B>(_:in:bounds:to:darkMode:isRTL:);
  v7 = *(v0 + 168);
  v8 = *(v0 + 217);
  v9 = *(v0 + 216);
  v10 = *(v0 + 96);
  v11 = *(v0 + 104);
  v12 = *(v0 + 80);
  v13 = *(v0 + 88);
  v14 = *(v0 + 64);
  v15 = *(v0 + 72);

  return CanvasElementRenderer.render<A, B>(_:in:bounds:darkMode:isRTL:output:renderingLoupe:cacheAggressively:)(v0 + 16, v14, v15, v9, v8, v7, 0, 0, v12, v13, v10, v11);
}

{
  v1 = *(*v0 + 168);

  _s8PaperKit0A0VWOhTm_2(v1, type metadata accessor for RendererOutput);

  return MEMORY[0x1EEE6DFA0](CanvasElementPDFRenderer.writePDF<A, B>(_:in:bounds:to:darkMode:isRTL:), 0, 0);
}

{
  v1 = *(v0 + 40);
  outlined destroy of StocksKitCurrencyCache.Provider?(v0 + 16, &_s8PaperKit15RendererContext_pSgMd, &_s8PaperKit15RendererContext_pSgMR);
  if (v1)
  {
    (*(v0 + 192))(*(v0 + 56), *(v0 + 112), *(v0 + 176));
    v2 = 0;
  }

  else
  {
    v2 = 1;
  }

  (*(*(v0 + 184) + 56))(*(v0 + 56), v2, 1, *(v0 + 176));

  v3 = *(v0 + 8);

  return v3();
}

uint64_t CanvasElementRenderer.deinit()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return v0;
}

uint64_t CanvasElementRenderer.__deallocating_deinit(uint64_t a1)
{
  __swift_destroy_boxed_opaque_existential_0((v1 + 16));

  return swift_deallocClassInstance();
}

void specialized Shape.renderSync<A>(in:id:capsule:options:)(CGContext *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v208 = type metadata accessor for StrokeStyle(0);
  v207 = *(v208 - 8);
  MEMORY[0x1EEE9AC00](v208);
  v214 = &v201 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit11StrokeStyleOSgMd, &_s8PaperKit11StrokeStyleOSgMR);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v213 = &v201 - v11;
  v222 = type metadata accessor for CGPathFillRule();
  v221 = *(v222 - 8);
  MEMORY[0x1EEE9AC00](v222);
  v220 = &v201 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v235 = type metadata accessor for Color(0);
  v233 = *(v235 - 8);
  MEMORY[0x1EEE9AC00](v235);
  v205 = (&v201 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v14);
  v218 = (&v201 - v15);
  MEMORY[0x1EEE9AC00](v16);
  v212 = (&v201 - v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit6ShadowVSgMd, &_s8PaperKit6ShadowVSgMR);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v219 = &v201 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v224 = &v201 - v21;
  *&v226 = COERCE_DOUBLE(type metadata accessor for Shadow(0));
  v231 = *(v226 - 8);
  MEMORY[0x1EEE9AC00](v226);
  v215 = (&v201 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v210 = &v201 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v228 = &v201 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v223 = &v201 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v209 = &v201 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v225 = &v201 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v216 = &v201 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v217 = &v201 - v36;
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v201 - v38;
  MEMORY[0x1EEE9AC00](v40);
  v42 = &v201 - v41;
  v211 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  CRRegister.wrappedValue.getter();
  a = t1.a;
  b = t1.b;
  c = t1.c;
  d = t1.d;
  v47 = type metadata accessor for Shape(0);
  v238 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMR);
  CRRegister.value.getter();
  v48 = t1.a;
  v237 = a - c * 0.0;
  v236 = b - d * 0.0;
  v248.origin.x = a;
  v248.origin.y = b;
  v248.size.width = c;
  v230 = c;
  v248.size.height = d;
  v234 = d;
  MidX = CGRectGetMidX(v248);
  v249.origin.x = a;
  v249.origin.y = b;
  v249.size.width = c;
  v249.size.height = d;
  MidY = CGRectGetMidY(v249);
  CGAffineTransformMakeRotation(&t1, v48);
  tx = t1.tx;
  ty = t1.ty;
  v229 = *&t1.a;
  v227 = *&t1.c;
  CGAffineTransformMakeTranslation(&t1, -MidX, -MidY);
  v53 = t1.a;
  v54 = t1.b;
  v55 = t1.c;
  v56 = t1.d;
  v57 = t1.tx;
  v58 = t1.ty;
  *&t2.a = v229;
  *&t2.c = v227;
  t2.tx = tx;
  t2.ty = ty;
  CGAffineTransformConcat(&v245, &t1, &t2);
  v59 = v245.tx;
  v60 = v245.ty;
  v229 = *&v245.a;
  v227 = *&v245.c;
  t1.a = v53;
  t1.b = v54;
  t1.c = v55;
  t1.d = v56;
  t1.tx = v57;
  t1.ty = v58;
  CGAffineTransformInvert(&t2, &t1);
  *&t1.c = v227;
  *&t1.a = v229;
  t1.tx = v59;
  t1.ty = v60;
  CGAffineTransformConcat(&v245, &t1, &t2);
  t1.a = v230;
  t1.c = 0.0;
  t1.b = 0.0;
  t1.d = v234;
  t1.tx = v237;
  t1.ty = v236;
  CGAffineTransformConcat(&t2, &t1, &v245);
  v234 = *&a1;
  CGContextSaveGState(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMd, &_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMR);
  CRRegister.wrappedValue.getter();
  v232 = a4;
  if ((LOBYTE(t1.a) & 0x20) != 0)
  {
    v61 = *(a4 + 64);
    if (v61)
    {
      v237 = COERCE_DOUBLE(v61);
      v62 = [*&v237 annotations];
      type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for PDFAnnotation, 0x1E6978018);
      v63 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      MEMORY[0x1EEE9AC00](v64);
      *(&v201 - 2) = a2;
      v65 = COERCE_DOUBLE(specialized Sequence.first(where:)(partial apply for closure #1 in PaperKitPDFPage.annotationFor(id:), (&v201 - 4), v63));

      if (v65 == 0.0)
      {
        v65 = v237;
      }

      else
      {
        v66 = v47;
        v67 = [*&v65 hasAppearanceStream];
        v68 = *&v234;
        if (v67)
        {
          v69 = v237;
          [*&v237 boundsForBox_];
          x = v250.origin.x;
          y = v250.origin.y;
          width = v250.size.width;
          height = v250.size.height;
          MinY = CGRectGetMinY(v250);
          v251.origin.x = x;
          v251.origin.y = y;
          v251.size.width = width;
          v251.size.height = height;
          MaxY = CGRectGetMaxY(v251);
          t1.a = 1.0;
          t1.b = 0.0;
          t1.c = 0.0;
          t1.d = 1.0;
          t1.ty = 0.0;
          t1.tx = 0.0;
          v245.b = 0.0;
          v245.c = 0.0;
          v245.a = 1.0;
          *&v245.d = xmmword_1D405A660;
          v245.ty = MinY + MaxY;
          CGAffineTransformConcat(&v240, &t1, &v245);
          t1 = v240;
          CGContextConcatCTM(v68, &t1);
          [*&v69 transformForBox_];
          CGAffineTransformInvert(&v245, &t1);
          t1 = v245;
          CGContextConcatCTM(v68, &t1);
          CRRegister.wrappedValue.getter();
          v76 = v65;
          if ((LOBYTE(t1.a) & 0x40) == 0)
          {
            [*&v65 bounds];
            v78 = v77;
            v80 = v79;
            v82 = v81;
            v84 = v83;
            [*&v69 boundsForBox_];
            v86 = v85;
            v88 = v87;
            v252.origin.x = v78;
            v252.origin.y = v80;
            v252.size.width = v82;
            v252.size.height = v84;
            MinX = CGRectGetMinX(v252);
            v253.origin.x = v78;
            v253.origin.y = v80;
            v253.size.width = v82;
            v253.size.height = v84;
            v90 = v88 + v86 + v86 - CGRectGetMaxY(v253);
            v254.origin.x = v78;
            v254.origin.y = v80;
            v254.size.width = v82;
            v254.size.height = v84;
            CGRectGetWidth(v254);
            v255.origin.x = v78;
            v255.origin.y = v80;
            v255.size.width = v82;
            v255.size.height = v84;
            CGRectGetHeight(v255);
            CRRegister.wrappedValue.getter();
            v91 = t1.a - MinX;
            v92 = t1.b - v90;
            __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18ShapeAuxiliaryInfoVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit18ShapeAuxiliaryInfoVSgGMR);
            CRRegister.wrappedValue.getter();
            if (*&t1.ty)
            {
              v93 = t1.d;
              v94 = t1.c;
            }

            else
            {
              v94 = 0.0;
              v93 = 0.0;
            }

            CGContextTranslateCTM(v68, v91 + v94, -(v92 + v93));
          }

          [*&v65 drawWithBox:1 inContext:v68];
          CGContextRestoreGState(v68);

LABEL_95:
          return;
        }

        v47 = v66;
      }
    }
  }

  v95 = v233;
  Shape.pathAndLineEnds(in:scale:)(&t2, &t1, 1.0);
  v230 = t1.a;
  v96 = t1.b;
  v204 = t1.c;
  v97 = t1.d;
  v98 = t1.tx;
  v203 = t1.ty;
  v202 = v242;
  v99 = v243;
  v100 = v244;
  v101 = v47[11];
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA12CRExtensibleOy8PaperKit7LineEndOGGMd, &_s9Coherence10CRRegisterVyAA12CRExtensibleOy8PaperKit7LineEndOGGMR);
  v206 = v101;
  CRRegister.wrappedValue.getter();
  v103 = 1;
  if ((LOBYTE(t1.b) & 1) == 0 && !LOBYTE(t1.a))
  {
    CRRegister.wrappedValue.getter();
    if ((LOBYTE(t1.b) & 1) == 0)
    {
      v103 = LOBYTE(t1.a) != 0;
    }
  }

  v211 = v102;
  *&v229 = v47[8];
  CRRegister.wrappedValue.getter();
  if (t1.a <= 0.0)
  {
    v105 = 0;
    v104 = v235;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMR);
    CRRegister.wrappedValue.getter();
    v104 = v235;
    v105 = (*(v95 + 48))(v42, 1, v235) != 1;
    outlined destroy of StocksKitCurrencyCache.Provider?(v42, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
  }

  v106 = v47[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMR);
  *&v227 = v106;
  CRRegister.wrappedValue.getter();
  v237 = *(v95 + 48);
  LODWORD(v106) = (*&v237)(v39, 1, v104);
  outlined destroy of StocksKitCurrencyCache.Provider?(v39, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
  v201 = 0;
  v239 = v47;
  if (v106 == 1 || !v105 || (CRRegister.wrappedValue.getter(), t1.a >= 1.0))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit6ShadowVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit6ShadowVSgGMR);
    v109 = v219;
    CRRegister.wrappedValue.getter();
    v108 = v226;
    LODWORD(v236) = (*(v231 + 48))(v109, 1, v226) != 1;
    outlined destroy of StocksKitCurrencyCache.Provider?(v109, &_s8PaperKit6ShadowVSgMd, &_s8PaperKit6ShadowVSgMR);
    v76 = v230;
    if (!v103 || !v105)
    {
      LODWORD(v219) = 0;
      v107 = *&v234;
      goto LABEL_37;
    }

    v107 = *&v234;
  }

  else
  {
    LODWORD(v236) = 1;
    v107 = *&v234;
    v76 = v230;
    v108 = v226;
    if (!v103)
    {
      LODWORD(v219) = 0;
      goto LABEL_37;
    }
  }

  v110 = v217;
  CRRegister.wrappedValue.getter();
  if ((*&v237)(v110, 1, v235) == 1)
  {
LABEL_98:
    __break(1u);
    goto LABEL_99;
  }

  v111 = CGColorRef.components.getter();
  if (!v111)
  {
LABEL_99:
    __break(1u);
    goto LABEL_100;
  }

  if (*(v111 + 16) < 4uLL)
  {
    __break(1u);
LABEL_97:
    __break(1u);
    goto LABEL_98;
  }

  v112 = *(v111 + 56);

  _s8PaperKit0A0VWOhTm_2(v110, type metadata accessor for Color);
  v113 = LODWORD(v236);
  if (v112 < 1.0)
  {
    v114 = 1;
  }

  else
  {
    v114 = LODWORD(v236);
  }

  if (v112 >= 1.0)
  {
    v113 = 1;
  }

  LODWORD(v236) = v113;
  if (v114 == 1)
  {
    LODWORD(v219) = v112 < 1.0;
  }

  else
  {
    CRRegister.wrappedValue.getter();
    LODWORD(v236) = 0;
    LODWORD(v219) = t1.a < 1.0;
  }

LABEL_37:
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit6ShadowVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit6ShadowVSgGMR);
  v115 = v224;
  CRRegister.wrappedValue.getter();
  v116 = (*(v231 + 48))(v115, 1, v108);
  v117 = v225;
  if (v116 == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v115, &_s8PaperKit6ShadowVSgMd, &_s8PaperKit6ShadowVSgMR);
  }

  else
  {
    v118 = v215;
    outlined init with take of Paper(v115, v215, type metadata accessor for Shadow);
    v119 = *v118;
    v120 = v118[1];
    v121 = v118[2];
    v122 = *(v118 + *(v108 + 24));
    v123 = objc_allocWithZone(MEMORY[0x1E69DC888]);
    v124 = [v123 initWithCGColor_];
    v125 = [v124 CGColor];

    v247.width = v119;
    v247.height = v120;
    CGContextSetShadowWithColor(v107, v247, v121, v125);

    _s8PaperKit0A0VWOhTm_2(v118, type metadata accessor for Shadow);
  }

  v126 = v235;
  v231 = v239[10];
  CRRegister.wrappedValue.getter();
  CGContextSetAlpha(v107, t1.a);
  if (LODWORD(v236))
  {
    *&v226 = v96;
    v127 = v100;
    v128 = v99;
    v129 = v98;
    v130 = v97;
    v131 = v76;
    PathBoundingBox = CGPathGetPathBoundingBox(*&v76);
    v132 = PathBoundingBox.origin.x;
    v133 = PathBoundingBox.origin.y;
    v134 = PathBoundingBox.size.width;
    v135 = PathBoundingBox.size.height;
    v136 = v216;
    CRRegister.wrappedValue.getter();
    v137 = (*&v237)(v136, 1, v126);
    outlined destroy of StocksKitCurrencyCache.Provider?(v136, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
    v138 = 1.0;
    if (v137 != 1)
    {
      CRRegister.wrappedValue.getter();
      v138 = t1.a * 10.0;
    }

    v139 = -v138;
    v257.origin.x = v132;
    v257.origin.y = v133;
    v257.size.width = v134;
    v257.size.height = v135;
    v258 = CGRectInset(v257, v139, v139);
    CGContextBeginTransparencyLayerWithRect(v107, v258, 0);
    v97 = v130;
    v98 = v129;
    v99 = v128;
    v100 = v127;
    v96 = *&v226;
    v76 = v131;
  }

  CRRegister.wrappedValue.getter();
  if ((*&v237)(v117, 1, v126) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v117, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
  }

  else
  {
    if (*(v232 + 1))
    {
      v140 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithCGColor_];
      v141 = static PKInkingTool.convertColor(_:from:to:)();

      v142 = [v141 CGColor];
      v143 = v209;
      Color.init(cgColor:)(v142, v209);
      if ((*&v237)(v143, 1, v126) == 1)
      {
LABEL_100:
        __break(1u);
        goto LABEL_101;
      }

      v144 = v143;
      v145 = v212;
      outlined init with take of Paper(v144, v212, type metadata accessor for Color);
    }

    else
    {
      v145 = v212;
      outlined init with copy of Paper(v117, v212, type metadata accessor for Color);
    }

    _s8PaperKit0A0VWOhTm_2(v117, type metadata accessor for Color);
    v146 = *v145;
    _s8PaperKit0A0VWOhTm_2(v145, type metadata accessor for Color);
    v107 = *&v234;
    CGContextSetFillColorWithColor(*&v234, v146);
    CGContextAddPath(v107, *&v76);
    v147 = v221;
    v148 = v220;
    v149 = v222;
    (*(v221 + 104))(v220, *MEMORY[0x1E695EEB8], v222);
    CGContextRef.fillPath(using:)();

    v150 = v147;
    v76 = v230;
    (*(v150 + 8))(v148, v149);
    v126 = v235;
  }

  v151 = v228;
  CRRegister.wrappedValue.getter();
  if ((*&v237)(v151, 1, v126) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v151, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
    v152 = v223;
    (*(v233 + 56))(v223, 1, 1, v126);
    outlined destroy of StocksKitCurrencyCache.Provider?(v152, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
    v153 = v232;
LABEL_89:
    if (LODWORD(v236))
    {
      CGContextEndTransparencyLayer(v107);
    }

    CGContextRestoreGState(v107);
    v190 = *(v153 + 40);
    *&t1.a = *(v153 + 24);
    *&t1.c = v190;
    LOBYTE(t1.tx) = *(v153 + 56);
    v191 = _s8PaperKit21ShapeTextBoxRenderingC20unrotatedRenderFrame_2inSo6CGRectVx_AGSgt9Coherence4CRDTRzAA0cdE0RzlFZAA0C0V_Tt1g5(v5, &t1);
    v193 = v192;
    v195 = v194;
    v197 = v196;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit31CanvasElementAutoresizeBehaviorVGMd, &_s9Coherence10CRRegisterVy8PaperKit31CanvasElementAutoresizeBehaviorVGMR);
    CRRegister.wrappedValue.getter();
    if ((LOBYTE(v245.a) & 2) != 0)
    {
      v259 = Shape.renderFrame(in:)(&t1);
      v198 = CGRectGetHeight(v259);
      v260.origin.x = v191;
      v260.origin.y = v193;
      v260.size.width = v195;
      v260.size.height = v197;
      v199 = v198 - CGRectGetHeight(v260);
      if (v199 > 0.0)
      {
        v200 = v199 * 0.5;
        v261.origin.x = v191;
        v261.origin.y = v193;
        v261.size.width = v195;
        v261.size.height = v197;
        v262 = CGRectOffset(v261, 0.0, v200);
        v191 = v262.origin.x;
        v193 = v262.origin.y;
        v195 = v262.size.width;
        v197 = v262.size.height;
      }
    }

    _s8PaperKit21ShapeTextBoxRenderingC6render_2in0G5Frame7optionsyx_So12CGContextRefaSo6CGRectVAA0A17RenderableOptionsVt9Coherence4CRDTRzAA0cdE0RzlFZAA0C0V_Tt3g5(v5, v107, v153, v191, v193, v195, v197);
    goto LABEL_95;
  }

  if (*(v232 + 1))
  {
    v154 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithCGColor_];
    v155 = static PKInkingTool.convertColor(_:from:to:)();

    v156 = [v155 CGColor];
    v157 = v210;
    Color.init(cgColor:)(v156, v210);
    v158 = (*&v237)(v157, 1, v126);
    v159 = v214;
    v160 = v213;
    if (v158 == 1)
    {
LABEL_101:
      __break(1u);
      goto LABEL_102;
    }

    v161 = v223;
    outlined init with take of Paper(v157, v223, type metadata accessor for Color);
    v153 = v232;
    v162 = v218;
    v163 = v228;
  }

  else
  {
    v161 = v223;
    outlined init with copy of Paper(v151, v223, type metadata accessor for Color);
    v163 = v151;
    v153 = v232;
    v162 = v218;
    v159 = v214;
    v160 = v213;
  }

  _s8PaperKit0A0VWOhTm_2(v163, type metadata accessor for Color);
  (*(v233 + 56))(v161, 0, 1, v126);
  outlined init with take of Paper(v161, v162, type metadata accessor for Color);
  CRRegister.wrappedValue.getter();
  if (t1.a <= 0.0)
  {
LABEL_88:
    _s8PaperKit0A0VWOhTm_2(v162, type metadata accessor for Color);
    goto LABEL_89;
  }

  if ((v219 & 1) == 0)
  {
    v169 = *v162;
    goto LABEL_65;
  }

  v164 = CGColorRef.components.getter();
  if (v164)
  {
    if (*(v164 + 16) >= 4uLL)
    {
      v165 = *(v164 + 56);

      v166 = 1.0;
      if ((LOBYTE(v236) & 1) == 0)
      {
        CRRegister.wrappedValue.getter();
        v166 = t1.a;
      }

      CGContextSetAlpha(v107, v165 * v166);
      v167 = v205;
      Color.withAlphaComponent(_:)(v205, 1.0);
      v168 = *v167;
      _s8PaperKit0A0VWOhTm_2(v167, type metadata accessor for Color);
      v169 = v168;
      CGContextBeginTransparencyLayer(v107, 0);
LABEL_65:
      CGContextSetStrokeColorWithColor(v107, v169);
      CRRegister.wrappedValue.getter();
      CGContextSetLineWidth(v107, t1.a);
      v170 = Shape.renderedLineCap.getter();
      CGContextSetLineCap(v107, v170);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit11StrokeStyleOSgGMd, &_s9Coherence10CRRegisterVy8PaperKit11StrokeStyleOSgGMR);
      CRRegister.wrappedValue.getter();
      if ((*(v207 + 48))(v160, 1, v208) == 1)
      {
        outlined destroy of StocksKitCurrencyCache.Provider?(v160, &_s8PaperKit11StrokeStyleOSgMd, &_s8PaperKit11StrokeStyleOSgMR);
      }

      else
      {
        outlined init with copy of Paper(v160, v159, type metadata accessor for StrokeStyle);
        if (swift_getEnumCaseMultiPayload())
        {
          _s8PaperKit0A0VWOhTm_2(v159, type metadata accessor for StrokeStyle);
          _s8PaperKit0A0VWOhTm_2(v160, type metadata accessor for StrokeStyle);
        }

        else
        {
          v171 = v160;
          v172 = *(v159 + 8);
          _s8PaperKit0A0VWOhTm_2(v171, type metadata accessor for StrokeStyle);
          if (*(v172 + 16))
          {
            v173 = CRRegister.wrappedValue.getter();
            MEMORY[0x1EEE9AC00](v173);
            *(&v201 - 2) = v5;
            _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay12CoreGraphics7CGFloatVG_AHs5NeverOTg5(partial apply for closure #1 in Shape.renderSync<A>(in:id:capsule:options:), (&v201 - 4), v172);

            CGContextRef.setLineDash(phase:lengths:)();
            v107 = *&v234;
          }
        }
      }

      CGContextAddPath(v107, *&v76);
      CGContextStrokePath(v107);
      CGContextSetFillColorWithColor(v107, v169);

      CRRegister.wrappedValue.getter();
      v174 = MEMORY[0x1E695EEB0];
      if (LOBYTE(t1.b))
      {
        a_low = 1;
      }

      else
      {
        a_low = LOBYTE(t1.a);
        if (!LOBYTE(t1.a))
        {
          goto LABEL_80;
        }
      }

      LOBYTE(v240.a) = a_low;
      CRRegister.wrappedValue.getter();
      v176 = LineEnd.path(from:to:strokeWidth:)(v96, v204, v203, v202, v245.a);
      if (v176)
      {
        v177 = v176;
        CGContextAddPath(*&v234, v176);
        v178 = v221;
        v179 = v220;
        v180 = v222;
        (*(v221 + 104))(v220, *v174, v222);
        CGContextRef.fillPath(using:)();

        v181 = v178;
        v76 = v230;
        v182 = v179;
        v162 = v218;
        (*(v181 + 8))(v182, v180);
      }

LABEL_80:
      CRRegister.wrappedValue.getter();
      if (LOBYTE(t1.b))
      {
        v183 = 1;
      }

      else
      {
        v183 = LOBYTE(t1.a);
        if (!LOBYTE(t1.a))
        {
LABEL_85:
          v107 = *&v234;
          if (v219)
          {
            CGContextEndTransparencyLayer(*&v234);
          }

          goto LABEL_88;
        }
      }

      LOBYTE(v240.a) = v183;
      CRRegister.wrappedValue.getter();
      v184 = LineEnd.path(from:to:strokeWidth:)(v97, v98, v99, v100, v245.a);
      if (v184)
      {
        v185 = v184;
        CGContextAddPath(*&v234, v184);
        v186 = *v174;
        v187 = v221;
        v188 = v220;
        v189 = v222;
        (*(v221 + 104))(v220, v186, v222);
        CGContextRef.fillPath(using:)();

        (*(v187 + 8))(v188, v189);
        v76 = v230;
      }

      goto LABEL_85;
    }

    goto LABEL_97;
  }

LABEL_102:
  __break(1u);
}

uint64_t partial apply for specialized closure #1 in CanvasElementImageRenderer.image<A, B>(_:in:bounds:completion:)(uint64_t a1)
{
  v3 = *(type metadata accessor for Paper(0) - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C0VGMd, &_s9Coherence7CapsuleVy8PaperKit0C0VGMR) - 8);
  v7 = (v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = v1[3];
  v19 = v1[2];
  v9 = v1[4];
  v10 = (v1 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = v10[2];
  v14 = v10[3];
  v15 = *(v10 + 32);
  v16 = *(v10 + 33);
  v17 = swift_task_alloc();
  *(v2 + 16) = v17;
  *v17 = v2;
  v17[1] = partial apply for closure #1 in CanvasGenerationTool.magicPaperViewControllerDidCancel(_:);

  return specialized closure #1 in CanvasElementImageRenderer.image<A, B>(_:in:bounds:completion:)(v11, v12, v13, v14, a1, v19, v8, v9, v1 + v4, v1 + v7, v15, v16);
}

uint64_t partial apply for closure #1 in CanvasElementImageRenderer.image<A, B>(_:in:bounds:completion:)(uint64_t a1)
{
  v19 = v1[4];
  v3 = *(*(v19 - 8) + 64);
  v4 = (*(*(v19 - 8) + 80) + 72) & ~*(*(v19 - 8) + 80);
  v5 = *(type metadata accessor for Capsule() - 8);
  v6 = (v4 + v3 + *(v5 + 80)) & ~*(v5 + 80);
  v17 = v1[3];
  v18 = v1[2];
  v16 = v1[8];
  v7 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];
  v10 = v7[2];
  v11 = v7[3];
  v12 = *(v7 + 32);
  v13 = *(v7 + 33);
  v14 = swift_task_alloc();
  *(v2 + 16) = v14;
  *v14 = v2;
  v14[1] = partial apply for closure #1 in CanvasGenerationTool.magicPaperViewControllerDidCancel(_:);

  return closure #1 in CanvasElementImageRenderer.image<A, B>(_:in:bounds:completion:)(v8, v9, v10, v11, a1, v18, v17, v16, v1 + v4, v1 + v6, v12, v13);
}

uint64_t _s8PaperKit24CanvasElementPDFRendererC8rendererAcA8Renderer_p_tcfCTf4en_nAA0E0C_Tt0g5(uint64_t a1)
{
  v6[3] = type metadata accessor for PDFRenderer();
  v6[4] = &protocol witness table for PDFRenderer;
  v6[0] = a1;
  type metadata accessor for CanvasElementPDFRenderer();
  v2 = swift_allocObject();
  outlined init with copy of FindResult(v6, v5);
  *(v2 + 56) = 0;
  *(v2 + 64) = 0;
  *(v2 + 72) = PKIsSixChannelBlendEnabledInPaper();
  outlined init with copy of FindResult(v5, v2 + 16);
  v3 = [objc_opt_self() isMainThread];
  __swift_destroy_boxed_opaque_existential_0(v5);
  __swift_destroy_boxed_opaque_existential_0(v6);
  *(v2 + 73) = v3;
  return v2;
}