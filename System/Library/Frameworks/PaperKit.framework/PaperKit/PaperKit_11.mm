uint64_t key path getter for PDFAnnotationElement.$shape : PDFAnnotationElement()
{
  type metadata accessor for PDFAnnotationElement(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit20PDFAnnotationElementV15AnnotationShapeVGMd, &_s9Coherence10CRRegisterVy8PaperKit20PDFAnnotationElementV15AnnotationShapeVGMR);
  return CRRegister.projectedValue.getter();
}

uint64_t key path setter for PDFAnnotationElement.$shape : PDFAnnotationElement(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit20PDFAnnotationElementV15AnnotationShapeVGMd, &_s9Coherence10CRRegisterVy8PaperKit20PDFAnnotationElementV15AnnotationShapeVGMR);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - v8;
  v10 = *(v3 + 16);
  v10(&v12 - v8, a1, v2, v7);
  (v10)(v5, v9, v2);
  type metadata accessor for PDFAnnotationElement(0);
  CRRegister.projectedValue.setter();
  return (*(v3 + 8))(v9, v2);
}

uint64_t PDFAnnotationElement.$shape.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit20PDFAnnotationElementV15AnnotationShapeVGMd, &_s9Coherence10CRRegisterVy8PaperKit20PDFAnnotationElementV15AnnotationShapeVGMR);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  type metadata accessor for PDFAnnotationElement(0);
  CRRegister.projectedValue.setter();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*PDFAnnotationElement.$shape.modify(void *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit20PDFAnnotationElementV15AnnotationShapeVGMd, &_s9Coherence10CRRegisterVy8PaperKit20PDFAnnotationElementV15AnnotationShapeVGMR);
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
  *(v5 + 12) = *(type metadata accessor for PDFAnnotationElement(0) + 40);
  CRRegister.projectedValue.getter();
  return PKStrokeInheritedProperties.$ink.modify;
}

uint64_t PDFAnnotationElement.subtype.getter()
{
  type metadata accessor for PDFAnnotationElement(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSGMd, &_s9Coherence10CRRegisterVySSGMR);
  CRRegister.wrappedValue.getter();
  return v1;
}

void key path getter for PDFAnnotationElement.subtype : PDFAnnotationElement(void *a1@<X8>)
{
  type metadata accessor for PDFAnnotationElement(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSGMd, &_s9Coherence10CRRegisterVySSGMR);
  CRRegister.wrappedValue.getter();
  *a1 = v2;
  a1[1] = v3;
}

double key path setter for PDFAnnotationElement.subtype : PDFAnnotationElement(void *a1)
{
  type metadata accessor for PDFAnnotationElement(0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSGMd, &_s9Coherence10CRRegisterVySSGMR);
  CRRegister.wrappedValue.setter();
  return result;
}

double PDFAnnotationElement.subtype.setter(uint64_t a1, uint64_t a2)
{
  type metadata accessor for PDFAnnotationElement(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSGMd, &_s9Coherence10CRRegisterVySSGMR);
  CRRegister.wrappedValue.setter();
  return result;
}

uint64_t (*PDFAnnotationElement.subtype.modify(uint64_t *a1))()
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
  type metadata accessor for PDFAnnotationElement(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSGMd, &_s9Coherence10CRRegisterVySSGMR);
  *(v3 + 32) = CRRegister.wrappedValue.modify();
  return PKStrokeInheritedProperties.inherited.modify;
}

uint64_t PDFAnnotationElement.$subtype.getter()
{
  type metadata accessor for PDFAnnotationElement(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSGMd, &_s9Coherence10CRRegisterVySSGMR);
  return CRRegister.projectedValue.getter();
}

uint64_t key path getter for PDFAnnotationElement.$subtype : PDFAnnotationElement()
{
  type metadata accessor for PDFAnnotationElement(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSGMd, &_s9Coherence10CRRegisterVySSGMR);
  return CRRegister.projectedValue.getter();
}

uint64_t key path setter for PDFAnnotationElement.$subtype : PDFAnnotationElement(uint64_t a1)
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
  type metadata accessor for PDFAnnotationElement(0);
  CRRegister.projectedValue.setter();
  return (*(v3 + 8))(v9, v2);
}

uint64_t PDFAnnotationElement.$subtype.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSGMd, &_s9Coherence10CRRegisterVySSGMR);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  type metadata accessor for PDFAnnotationElement(0);
  CRRegister.projectedValue.setter();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*PDFAnnotationElement.$subtype.modify(void *a1))()
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
  *(v5 + 12) = *(type metadata accessor for PDFAnnotationElement(0) + 44);
  CRRegister.projectedValue.getter();
  return PKStrokeInheritedProperties.$ink.modify;
}

double PDFAnnotationElement.fieldFlags.getter()
{
  type metadata accessor for PDFAnnotationElement(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13PDFFieldFlagsVGMd, &_s9Coherence10CRRegisterVy8PaperKit13PDFFieldFlagsVGMR);
  CRRegister.wrappedValue.getter();
  return result;
}

void key path getter for PDFAnnotationElement.fieldFlags : PDFAnnotationElement(void *a1@<X8>)
{
  type metadata accessor for PDFAnnotationElement(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13PDFFieldFlagsVGMd, &_s9Coherence10CRRegisterVy8PaperKit13PDFFieldFlagsVGMR);
  CRRegister.wrappedValue.getter();
  *a1 = v2;
}

double key path setter for PDFAnnotationElement.fieldFlags : PDFAnnotationElement(uint64_t *a1)
{
  type metadata accessor for PDFAnnotationElement(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13PDFFieldFlagsVGMd, &_s9Coherence10CRRegisterVy8PaperKit13PDFFieldFlagsVGMR);
  CRRegister.wrappedValue.setter();
  return result;
}

double PDFAnnotationElement.fieldFlags.setter(uint64_t *a1)
{
  type metadata accessor for PDFAnnotationElement(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13PDFFieldFlagsVGMd, &_s9Coherence10CRRegisterVy8PaperKit13PDFFieldFlagsVGMR);
  CRRegister.wrappedValue.setter();
  return result;
}

uint64_t (*PDFAnnotationElement.fieldFlags.modify(uint64_t *a1))()
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
  type metadata accessor for PDFAnnotationElement(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13PDFFieldFlagsVGMd, &_s9Coherence10CRRegisterVy8PaperKit13PDFFieldFlagsVGMR);
  *(v3 + 32) = CRRegister.wrappedValue.modify();
  return PKStrokeStruct.properties.modify;
}

uint64_t PDFAnnotationElement.$fieldFlags.getter()
{
  type metadata accessor for PDFAnnotationElement(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13PDFFieldFlagsVGMd, &_s9Coherence10CRRegisterVy8PaperKit13PDFFieldFlagsVGMR);
  return CRRegister.projectedValue.getter();
}

uint64_t key path getter for PDFAnnotationElement.$fieldFlags : PDFAnnotationElement()
{
  type metadata accessor for PDFAnnotationElement(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13PDFFieldFlagsVGMd, &_s9Coherence10CRRegisterVy8PaperKit13PDFFieldFlagsVGMR);
  return CRRegister.projectedValue.getter();
}

uint64_t key path setter for PDFAnnotationElement.$fieldFlags : PDFAnnotationElement(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13PDFFieldFlagsVGMd, &_s9Coherence10CRRegisterVy8PaperKit13PDFFieldFlagsVGMR);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - v8;
  v10 = *(v3 + 16);
  v10(&v12 - v8, a1, v2, v7);
  (v10)(v5, v9, v2);
  type metadata accessor for PDFAnnotationElement(0);
  CRRegister.projectedValue.setter();
  return (*(v3 + 8))(v9, v2);
}

uint64_t PDFAnnotationElement.$fieldFlags.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13PDFFieldFlagsVGMd, &_s9Coherence10CRRegisterVy8PaperKit13PDFFieldFlagsVGMR);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  type metadata accessor for PDFAnnotationElement(0);
  CRRegister.projectedValue.setter();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*PDFAnnotationElement.$fieldFlags.modify(void *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13PDFFieldFlagsVGMd, &_s9Coherence10CRRegisterVy8PaperKit13PDFFieldFlagsVGMR);
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
  *(v5 + 12) = *(type metadata accessor for PDFAnnotationElement(0) + 48);
  CRRegister.projectedValue.getter();
  return PKStrokeStruct.$properties.modify;
}

uint64_t key path setter for PDFAnnotationElement.popup : PDFAnnotationElement(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit20PDFAnnotationElementVGSgMd, &_s9Coherence7WeakRefVy8PaperKit20PDFAnnotationElementVGSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v9 - v6;
  outlined init with copy of Date?(a1, &v9 - v6, &_s9Coherence7WeakRefVy8PaperKit20PDFAnnotationElementVGSgMd, &_s9Coherence7WeakRefVy8PaperKit20PDFAnnotationElementVGSgMR);
  outlined init with copy of Date?(v7, v4, &_s9Coherence7WeakRefVy8PaperKit20PDFAnnotationElementVGSgMd, &_s9Coherence7WeakRefVy8PaperKit20PDFAnnotationElementVGSgMR);
  type metadata accessor for PDFAnnotationElement(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA7WeakRefVy8PaperKit20PDFAnnotationElementVGSgGMd, &_s9Coherence10CRRegisterVyAA7WeakRefVy8PaperKit20PDFAnnotationElementVGSgGMR);
  CRRegister.wrappedValue.setter();
  return outlined destroy of StocksKitCurrencyCache.Provider?(v7, &_s9Coherence7WeakRefVy8PaperKit20PDFAnnotationElementVGSgMd, &_s9Coherence7WeakRefVy8PaperKit20PDFAnnotationElementVGSgMR);
}

uint64_t PDFAnnotationElement.popup.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit20PDFAnnotationElementVGSgMd, &_s9Coherence7WeakRefVy8PaperKit20PDFAnnotationElementVGSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  outlined init with copy of Date?(a1, &v5 - v3, &_s9Coherence7WeakRefVy8PaperKit20PDFAnnotationElementVGSgMd, &_s9Coherence7WeakRefVy8PaperKit20PDFAnnotationElementVGSgMR);
  type metadata accessor for PDFAnnotationElement(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA7WeakRefVy8PaperKit20PDFAnnotationElementVGSgGMd, &_s9Coherence10CRRegisterVyAA7WeakRefVy8PaperKit20PDFAnnotationElementVGSgGMR);
  CRRegister.wrappedValue.setter();
  return outlined destroy of StocksKitCurrencyCache.Provider?(a1, &_s9Coherence7WeakRefVy8PaperKit20PDFAnnotationElementVGSgMd, &_s9Coherence7WeakRefVy8PaperKit20PDFAnnotationElementVGSgMR);
}

uint64_t (*PDFAnnotationElement.popup.modify(uint64_t *a1))()
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
  type metadata accessor for PDFAnnotationElement(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA7WeakRefVy8PaperKit20PDFAnnotationElementVGSgGMd, &_s9Coherence10CRRegisterVyAA7WeakRefVy8PaperKit20PDFAnnotationElementVGSgGMR);
  *(v3 + 32) = CRRegister.wrappedValue.modify();
  return PKStrokeInheritedProperties.inherited.modify;
}

uint64_t PDFAnnotationElement.popup.getter(uint64_t (*a1)(uint64_t))
{
  type metadata accessor for PDFAnnotationElement(0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA7WeakRefVy8PaperKit20PDFAnnotationElementVGSgGMd, &_s9Coherence10CRRegisterVyAA7WeakRefVy8PaperKit20PDFAnnotationElementVGSgGMR);
  return a1(v2);
}

uint64_t key path getter for PDFAnnotationElement.popup : PDFAnnotationElement(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  type metadata accessor for PDFAnnotationElement(0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA7WeakRefVy8PaperKit20PDFAnnotationElementVGSgGMd, &_s9Coherence10CRRegisterVyAA7WeakRefVy8PaperKit20PDFAnnotationElementVGSgGMR);
  return a4(v5);
}

uint64_t key path setter for PDFAnnotationElement.$popup : PDFAnnotationElement(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA7WeakRefVy8PaperKit20PDFAnnotationElementVGSgGMd, &_s9Coherence10CRRegisterVyAA7WeakRefVy8PaperKit20PDFAnnotationElementVGSgGMR);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - v8;
  v10 = *(v3 + 16);
  v10(&v12 - v8, a1, v2, v7);
  (v10)(v5, v9, v2);
  type metadata accessor for PDFAnnotationElement(0);
  CRRegister.projectedValue.setter();
  return (*(v3 + 8))(v9, v2);
}

uint64_t PDFAnnotationElement.$popup.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA7WeakRefVy8PaperKit20PDFAnnotationElementVGSgGMd, &_s9Coherence10CRRegisterVyAA7WeakRefVy8PaperKit20PDFAnnotationElementVGSgGMR);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  type metadata accessor for PDFAnnotationElement(0);
  CRRegister.projectedValue.setter();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*PDFAnnotationElement.$popup.modify(void *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA7WeakRefVy8PaperKit20PDFAnnotationElementVGSgGMd, &_s9Coherence10CRRegisterVyAA7WeakRefVy8PaperKit20PDFAnnotationElementVGSgGMR);
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
  *(v5 + 12) = *(type metadata accessor for PDFAnnotationElement(0) + 52);
  CRRegister.projectedValue.getter();
  return PKStrokeInheritedProperties.$ink.modify;
}

uint64_t PDFAnnotationElement.minEncodingVersion.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E6995288];
  v3 = type metadata accessor for CRCodableVersion();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

BOOL PDFAnnotationElement.Partial.merge(delta:)(uint64_t a1)
{
  v2 = v1;
  v200 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA7WeakRefVy8PaperKit20PDFAnnotationElementVGSgGMd, &_s9Coherence10CRRegisterVyAA7WeakRefVy8PaperKit20PDFAnnotationElementVGSgGMR);
  v207 = *(v200 - 8);
  MEMORY[0x1EEE9AC00](v200);
  v5 = &v164 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA7WeakRefVy8PaperKit20PDFAnnotationElementVGSgGSgMd, &_s9Coherence10CRRegisterVyAA7WeakRefVy8PaperKit20PDFAnnotationElementVGSgGSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v184 = &v164 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v199 = &v164 - v9;
  v198 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13PDFFieldFlagsVGMd, &_s9Coherence10CRRegisterVy8PaperKit13PDFFieldFlagsVGMR);
  v206 = *(v198 - 8);
  MEMORY[0x1EEE9AC00](v198);
  v175 = &v164 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13PDFFieldFlagsVGSgMd, &_s9Coherence10CRRegisterVy8PaperKit13PDFFieldFlagsVGSgMR);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v183 = &v164 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v197 = &v164 - v14;
  v196 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSGMd, &_s9Coherence10CRRegisterVySSGMR);
  v205 = *(v196 - 8);
  MEMORY[0x1EEE9AC00](v196);
  v174 = &v164 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSGSgMd, &_s9Coherence10CRRegisterVySSGSgMR);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v182 = &v164 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v195 = &v164 - v19;
  v194 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit20PDFAnnotationElementV15AnnotationShapeVGMd, &_s9Coherence10CRRegisterVy8PaperKit20PDFAnnotationElementV15AnnotationShapeVGMR);
  v204 = *(v194 - 8);
  MEMORY[0x1EEE9AC00](v194);
  v173 = &v164 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit20PDFAnnotationElementV15AnnotationShapeVGSgMd, &_s9Coherence10CRRegisterVy8PaperKit20PDFAnnotationElementV15AnnotationShapeVGSgMR);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v181 = &v164 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v193 = &v164 - v24;
  v192 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy10Foundation4DateVSgGMd, &_s9Coherence10CRRegisterVy10Foundation4DateVSgGMR);
  v203 = *(v192 - 8);
  MEMORY[0x1EEE9AC00](v192);
  v172 = &v164 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy10Foundation4DateVSgGSgMd, &_s9Coherence10CRRegisterVy10Foundation4DateVSgGSgMR);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v180 = &v164 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v191 = &v164 - v29;
  v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySiGMd, &_s9Coherence10CRRegisterVySiGMR);
  v202 = *(v190 - 8);
  MEMORY[0x1EEE9AC00](v190);
  v171 = &v164 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySiGSgMd, &_s9Coherence10CRRegisterVySiGSgMR);
  MEMORY[0x1EEE9AC00](v31 - 8);
  v179 = &v164 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v189 = &v164 - v34;
  v188 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14SignatureValueVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit14SignatureValueVSgGMR);
  v201 = *(v188 - 8);
  MEMORY[0x1EEE9AC00](v188);
  v170 = &v164 - v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14SignatureValueVSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit14SignatureValueVSgGSgMR);
  MEMORY[0x1EEE9AC00](v36 - 8);
  v178 = &v164 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v187 = &v164 - v39;
  v186 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMR);
  v208 = *(v186 - 8);
  MEMORY[0x1EEE9AC00](v186);
  v169 = &v164 - v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMR);
  MEMORY[0x1EEE9AC00](v41 - 8);
  v177 = &v164 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43);
  v185 = &v164 - v44;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSSgGMd, &_s9Coherence10CRRegisterVySSSgGMR);
  v46 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v168 = &v164 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v48);
  v167 = &v164 - v49;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSSgGSgMd, &_s9Coherence10CRRegisterVySSSgGSgMR);
  MEMORY[0x1EEE9AC00](v50 - 8);
  v176 = &v164 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v52);
  v54 = &v164 - v53;
  MEMORY[0x1EEE9AC00](v55);
  v57 = &v164 - v56;
  MEMORY[0x1EEE9AC00](v58);
  v60 = &v164 - v59;
  v209 = type metadata accessor for PDFAnnotationElement.Partial(0);
  MEMORY[0x1EEE9AC00](v209);
  v62 = &v164 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PDFAnnotationElement.Partial(v2, v62, type metadata accessor for PDFAnnotationElement.Partial);
  v210 = a1;
  v63 = PDFAnnotationElement.Partial.canMerge(delta:)(a1);
  outlined destroy of PDFAnnotationElement.Partial(v62, type metadata accessor for PDFAnnotationElement.Partial);
  if (v63)
  {
    v166 = v63;
    v164 = v5;
    outlined init with copy of Date?(v2, v60, &_s9Coherence10CRRegisterVySSSgGSgMd, &_s9Coherence10CRRegisterVySSSgGSgMR);
    v165 = v46;
    v64 = *(v46 + 48);
    v65 = v2;
    v66 = v64(v60, 1, v45);
    outlined destroy of StocksKitCurrencyCache.Provider?(v60, &_s9Coherence10CRRegisterVySSSgGSgMd, &_s9Coherence10CRRegisterVySSSgGSgMR);
    if (v66 == 1)
    {
      outlined assign with copy of CRRegister<Ref<PKStrokeInheritedProperties>?>?(v210, v65, &_s9Coherence10CRRegisterVySSSgGSgMd, &_s9Coherence10CRRegisterVySSSgGSgMR);
      v67 = v65;
      v68 = v64;
    }

    else
    {
      v67 = v65;
      outlined init with copy of Date?(v210, v57, &_s9Coherence10CRRegisterVySSSgGSgMd, &_s9Coherence10CRRegisterVySSSgGSgMR);
      if (v64(v57, 1, v45) == 1)
      {
        outlined destroy of StocksKitCurrencyCache.Provider?(v57, &_s9Coherence10CRRegisterVySSSgGSgMd, &_s9Coherence10CRRegisterVySSSgGSgMR);
        v68 = v64;
      }

      else
      {
        v69 = v165;
        v70 = v167;
        (*(v165 + 32))(v167, v57, v45);
        v68 = v64;
        if (!v64(v65, 1, v45))
        {
          CRRegister.merge(delta:)();
        }

        (*(v69 + 8))(v70, v45);
      }
    }

    v71 = v209;
    v72 = v209[5];
    outlined init with copy of Date?(v67 + v72, v54, &_s9Coherence10CRRegisterVySSSgGSgMd, &_s9Coherence10CRRegisterVySSSgGSgMR);
    v73 = v68(v54, 1, v45);
    outlined destroy of StocksKitCurrencyCache.Provider?(v54, &_s9Coherence10CRRegisterVySSSgGSgMd, &_s9Coherence10CRRegisterVySSSgGSgMR);
    v74 = v71[5];
    if (v73 == 1)
    {
      v75 = v186;
      outlined assign with copy of CRRegister<Ref<PKStrokeInheritedProperties>?>?(v210 + v74, v67 + v72, &_s9Coherence10CRRegisterVySSSgGSgMd, &_s9Coherence10CRRegisterVySSSgGSgMR);
    }

    else
    {
      v76 = v176;
      outlined init with copy of Date?(v210 + v74, v176, &_s9Coherence10CRRegisterVySSSgGSgMd, &_s9Coherence10CRRegisterVySSSgGSgMR);
      if (v68(v76, 1, v45) == 1)
      {
        v75 = v186;
        outlined destroy of StocksKitCurrencyCache.Provider?(v76, &_s9Coherence10CRRegisterVySSSgGSgMd, &_s9Coherence10CRRegisterVySSSgGSgMR);
      }

      else
      {
        v77 = v165;
        v78 = v168;
        (*(v165 + 32))(v168, v76, v45);
        if (!v68((v67 + v72), 1, v45))
        {
          CRRegister.merge(delta:)();
        }

        v75 = v186;
        (*(v77 + 8))(v78, v45);
      }
    }

    v79 = v209;
    v80 = v209[6];
    v81 = v185;
    outlined init with copy of Date?(v67 + v80, v185, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMR);
    v82 = *(v208 + 48);
    v83 = v82(v81, 1, v75);
    outlined destroy of StocksKitCurrencyCache.Provider?(v81, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMR);
    v84 = v79[6];
    if (v83 == 1)
    {
      outlined assign with copy of CRRegister<Ref<PKStrokeInheritedProperties>?>?(v210 + v84, v67 + v80, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMR);
    }

    else
    {
      v85 = v177;
      outlined init with copy of Date?(v210 + v84, v177, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMR);
      if (v82(v85, 1, v75) == 1)
      {
        outlined destroy of StocksKitCurrencyCache.Provider?(v85, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMR);
      }

      else
      {
        v86 = v85;
        v87 = v208;
        v88 = v169;
        (*(v208 + 32))(v169, v86, v75);
        if (!v82(v67 + v80, 1, v75))
        {
          CRRegister.merge(delta:)();
          v87 = v208;
        }

        (*(v87 + 8))(v88, v75);
      }
    }

    v89 = v188;
    v90 = v209;
    v91 = v209[7];
    v92 = v187;
    outlined init with copy of Date?(v67 + v91, v187, &_s9Coherence10CRRegisterVy8PaperKit14SignatureValueVSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit14SignatureValueVSgGSgMR);
    v93 = *(v201 + 48);
    v94 = v93(v92, 1, v89);
    outlined destroy of StocksKitCurrencyCache.Provider?(v92, &_s9Coherence10CRRegisterVy8PaperKit14SignatureValueVSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit14SignatureValueVSgGSgMR);
    v95 = v90[7];
    if (v94 == 1)
    {
      outlined assign with copy of CRRegister<Ref<PKStrokeInheritedProperties>?>?(v210 + v95, v67 + v91, &_s9Coherence10CRRegisterVy8PaperKit14SignatureValueVSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit14SignatureValueVSgGSgMR);
    }

    else
    {
      v96 = v178;
      outlined init with copy of Date?(v210 + v95, v178, &_s9Coherence10CRRegisterVy8PaperKit14SignatureValueVSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit14SignatureValueVSgGSgMR);
      if (v93(v96, 1, v89) == 1)
      {
        outlined destroy of StocksKitCurrencyCache.Provider?(v96, &_s9Coherence10CRRegisterVy8PaperKit14SignatureValueVSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit14SignatureValueVSgGSgMR);
      }

      else
      {
        v97 = v201;
        v98 = v170;
        (*(v201 + 32))(v170, v96, v89);
        if (!v93(v67 + v91, 1, v89))
        {
          CRRegister.merge(delta:)();
        }

        (*(v97 + 8))(v98, v89);
      }
    }

    v99 = v209;
    v100 = v209[8];
    v101 = v189;
    outlined init with copy of Date?(v67 + v100, v189, &_s9Coherence10CRRegisterVySiGSgMd, &_s9Coherence10CRRegisterVySiGSgMR);
    v102 = *(v202 + 48);
    v103 = v190;
    v104 = v102(v101, 1, v190);
    outlined destroy of StocksKitCurrencyCache.Provider?(v101, &_s9Coherence10CRRegisterVySiGSgMd, &_s9Coherence10CRRegisterVySiGSgMR);
    v105 = v99[8];
    if (v104 == 1)
    {
      outlined assign with copy of CRRegister<Ref<PKStrokeInheritedProperties>?>?(v210 + v105, v67 + v100, &_s9Coherence10CRRegisterVySiGSgMd, &_s9Coherence10CRRegisterVySiGSgMR);
    }

    else
    {
      v106 = v179;
      outlined init with copy of Date?(v210 + v105, v179, &_s9Coherence10CRRegisterVySiGSgMd, &_s9Coherence10CRRegisterVySiGSgMR);
      if (v102(v106, 1, v103) == 1)
      {
        outlined destroy of StocksKitCurrencyCache.Provider?(v106, &_s9Coherence10CRRegisterVySiGSgMd, &_s9Coherence10CRRegisterVySiGSgMR);
      }

      else
      {
        v107 = v202;
        v108 = v171;
        (*(v202 + 32))(v171, v106, v103);
        if (!v102(v67 + v100, 1, v103))
        {
          CRRegister.merge(delta:)();
        }

        (*(v107 + 8))(v108, v103);
      }
    }

    v109 = v209;
    v110 = v209[9];
    v111 = v191;
    outlined init with copy of Date?(v67 + v110, v191, &_s9Coherence10CRRegisterVy10Foundation4DateVSgGSgMd, &_s9Coherence10CRRegisterVy10Foundation4DateVSgGSgMR);
    v112 = *(v203 + 48);
    v113 = v192;
    v114 = v112(v111, 1, v192);
    outlined destroy of StocksKitCurrencyCache.Provider?(v111, &_s9Coherence10CRRegisterVy10Foundation4DateVSgGSgMd, &_s9Coherence10CRRegisterVy10Foundation4DateVSgGSgMR);
    v115 = v109[9];
    if (v114 == 1)
    {
      outlined assign with copy of CRRegister<Ref<PKStrokeInheritedProperties>?>?(v210 + v115, v67 + v110, &_s9Coherence10CRRegisterVy10Foundation4DateVSgGSgMd, &_s9Coherence10CRRegisterVy10Foundation4DateVSgGSgMR);
      v116 = v194;
    }

    else
    {
      v117 = v180;
      outlined init with copy of Date?(v210 + v115, v180, &_s9Coherence10CRRegisterVy10Foundation4DateVSgGSgMd, &_s9Coherence10CRRegisterVy10Foundation4DateVSgGSgMR);
      if (v112(v117, 1, v113) == 1)
      {
        outlined destroy of StocksKitCurrencyCache.Provider?(v117, &_s9Coherence10CRRegisterVy10Foundation4DateVSgGSgMd, &_s9Coherence10CRRegisterVy10Foundation4DateVSgGSgMR);
        v116 = v194;
      }

      else
      {
        v118 = v113;
        v119 = v203;
        v120 = v172;
        (*(v203 + 32))(v172, v117, v113);
        v121 = v112(v67 + v110, 1, v113);
        v116 = v194;
        if (!v121)
        {
          CRRegister.merge(delta:)();
        }

        (*(v119 + 8))(v120, v118);
      }
    }

    v122 = v209;
    v123 = v209[10];
    v124 = v193;
    outlined init with copy of Date?(v67 + v123, v193, &_s9Coherence10CRRegisterVy8PaperKit20PDFAnnotationElementV15AnnotationShapeVGSgMd, &_s9Coherence10CRRegisterVy8PaperKit20PDFAnnotationElementV15AnnotationShapeVGSgMR);
    v125 = *(v204 + 48);
    v126 = v125(v124, 1, v116);
    outlined destroy of StocksKitCurrencyCache.Provider?(v124, &_s9Coherence10CRRegisterVy8PaperKit20PDFAnnotationElementV15AnnotationShapeVGSgMd, &_s9Coherence10CRRegisterVy8PaperKit20PDFAnnotationElementV15AnnotationShapeVGSgMR);
    v127 = v122[10];
    if (v126 == 1)
    {
      outlined assign with copy of CRRegister<Ref<PKStrokeInheritedProperties>?>?(v210 + v127, v67 + v123, &_s9Coherence10CRRegisterVy8PaperKit20PDFAnnotationElementV15AnnotationShapeVGSgMd, &_s9Coherence10CRRegisterVy8PaperKit20PDFAnnotationElementV15AnnotationShapeVGSgMR);
    }

    else
    {
      v128 = v181;
      outlined init with copy of Date?(v210 + v127, v181, &_s9Coherence10CRRegisterVy8PaperKit20PDFAnnotationElementV15AnnotationShapeVGSgMd, &_s9Coherence10CRRegisterVy8PaperKit20PDFAnnotationElementV15AnnotationShapeVGSgMR);
      if (v125(v128, 1, v116) == 1)
      {
        outlined destroy of StocksKitCurrencyCache.Provider?(v128, &_s9Coherence10CRRegisterVy8PaperKit20PDFAnnotationElementV15AnnotationShapeVGSgMd, &_s9Coherence10CRRegisterVy8PaperKit20PDFAnnotationElementV15AnnotationShapeVGSgMR);
      }

      else
      {
        v129 = v204;
        v130 = v173;
        (*(v204 + 32))(v173, v128, v116);
        if (!v125(v67 + v123, 1, v116))
        {
          CRRegister.merge(delta:)();
        }

        (*(v129 + 8))(v130, v116);
      }
    }

    v131 = v209;
    v132 = v209[11];
    v133 = v195;
    outlined init with copy of Date?(v67 + v132, v195, &_s9Coherence10CRRegisterVySSGSgMd, &_s9Coherence10CRRegisterVySSGSgMR);
    v134 = *(v205 + 48);
    v135 = v196;
    v136 = v134(v133, 1, v196);
    outlined destroy of StocksKitCurrencyCache.Provider?(v133, &_s9Coherence10CRRegisterVySSGSgMd, &_s9Coherence10CRRegisterVySSGSgMR);
    v137 = v131[11];
    if (v136 == 1)
    {
      outlined assign with copy of CRRegister<Ref<PKStrokeInheritedProperties>?>?(v210 + v137, v67 + v132, &_s9Coherence10CRRegisterVySSGSgMd, &_s9Coherence10CRRegisterVySSGSgMR);
      v138 = v198;
    }

    else
    {
      v139 = v182;
      outlined init with copy of Date?(v210 + v137, v182, &_s9Coherence10CRRegisterVySSGSgMd, &_s9Coherence10CRRegisterVySSGSgMR);
      if (v134(v139, 1, v135) == 1)
      {
        outlined destroy of StocksKitCurrencyCache.Provider?(v139, &_s9Coherence10CRRegisterVySSGSgMd, &_s9Coherence10CRRegisterVySSGSgMR);
        v138 = v198;
      }

      else
      {
        v140 = v135;
        v141 = v205;
        v142 = v174;
        (*(v205 + 32))(v174, v139, v135);
        v143 = v134(v67 + v132, 1, v135);
        v138 = v198;
        if (!v143)
        {
          CRRegister.merge(delta:)();
        }

        (*(v141 + 8))(v142, v140);
      }
    }

    v144 = v209;
    v145 = v209[12];
    v146 = v197;
    outlined init with copy of Date?(v67 + v145, v197, &_s9Coherence10CRRegisterVy8PaperKit13PDFFieldFlagsVGSgMd, &_s9Coherence10CRRegisterVy8PaperKit13PDFFieldFlagsVGSgMR);
    v147 = *(v206 + 48);
    v148 = v147(v146, 1, v138);
    outlined destroy of StocksKitCurrencyCache.Provider?(v146, &_s9Coherence10CRRegisterVy8PaperKit13PDFFieldFlagsVGSgMd, &_s9Coherence10CRRegisterVy8PaperKit13PDFFieldFlagsVGSgMR);
    v149 = v144[12];
    if (v148 == 1)
    {
      outlined assign with copy of CRRegister<Ref<PKStrokeInheritedProperties>?>?(v210 + v149, v67 + v145, &_s9Coherence10CRRegisterVy8PaperKit13PDFFieldFlagsVGSgMd, &_s9Coherence10CRRegisterVy8PaperKit13PDFFieldFlagsVGSgMR);
    }

    else
    {
      v150 = v183;
      outlined init with copy of Date?(v210 + v149, v183, &_s9Coherence10CRRegisterVy8PaperKit13PDFFieldFlagsVGSgMd, &_s9Coherence10CRRegisterVy8PaperKit13PDFFieldFlagsVGSgMR);
      if (v147(v150, 1, v138) == 1)
      {
        outlined destroy of StocksKitCurrencyCache.Provider?(v150, &_s9Coherence10CRRegisterVy8PaperKit13PDFFieldFlagsVGSgMd, &_s9Coherence10CRRegisterVy8PaperKit13PDFFieldFlagsVGSgMR);
      }

      else
      {
        v151 = v206;
        v152 = v175;
        (*(v206 + 32))(v175, v150, v138);
        if (!v147(v67 + v145, 1, v138))
        {
          CRRegister.merge(delta:)();
        }

        (*(v151 + 8))(v152, v138);
      }
    }

    v153 = v199;
    v154 = v200;
    v155 = v209;
    v156 = v209[13];
    outlined init with copy of Date?(v67 + v156, v199, &_s9Coherence10CRRegisterVyAA7WeakRefVy8PaperKit20PDFAnnotationElementVGSgGSgMd, &_s9Coherence10CRRegisterVyAA7WeakRefVy8PaperKit20PDFAnnotationElementVGSgGSgMR);
    v157 = *(v207 + 48);
    v158 = v157(v153, 1, v154);
    outlined destroy of StocksKitCurrencyCache.Provider?(v153, &_s9Coherence10CRRegisterVyAA7WeakRefVy8PaperKit20PDFAnnotationElementVGSgGSgMd, &_s9Coherence10CRRegisterVyAA7WeakRefVy8PaperKit20PDFAnnotationElementVGSgGSgMR);
    v159 = v155[13];
    if (v158 == 1)
    {
      outlined assign with copy of CRRegister<Ref<PKStrokeInheritedProperties>?>?(v210 + v159, v67 + v156, &_s9Coherence10CRRegisterVyAA7WeakRefVy8PaperKit20PDFAnnotationElementVGSgGSgMd, &_s9Coherence10CRRegisterVyAA7WeakRefVy8PaperKit20PDFAnnotationElementVGSgGSgMR);
    }

    else
    {
      v160 = v184;
      outlined init with copy of Date?(v210 + v159, v184, &_s9Coherence10CRRegisterVyAA7WeakRefVy8PaperKit20PDFAnnotationElementVGSgGSgMd, &_s9Coherence10CRRegisterVyAA7WeakRefVy8PaperKit20PDFAnnotationElementVGSgGSgMR);
      if (v157(v160, 1, v154) == 1)
      {
        outlined destroy of StocksKitCurrencyCache.Provider?(v160, &_s9Coherence10CRRegisterVyAA7WeakRefVy8PaperKit20PDFAnnotationElementVGSgGSgMd, &_s9Coherence10CRRegisterVyAA7WeakRefVy8PaperKit20PDFAnnotationElementVGSgGSgMR);
      }

      else
      {
        v161 = v207;
        v162 = v164;
        (*(v207 + 32))(v164, v160, v154);
        if (!v157(v67 + v156, 1, v154))
        {
          CRRegister.merge(delta:)();
        }

        (*(v161 + 8))(v162, v154);
      }
    }

    LOBYTE(v63) = v166;
  }

  return v63;
}

BOOL PDFAnnotationElement.Partial.canMerge(delta:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA7WeakRefVy8PaperKit20PDFAnnotationElementVGSgGSgMd, &_s9Coherence10CRRegisterVyAA7WeakRefVy8PaperKit20PDFAnnotationElementVGSgGSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v152 = &v150 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v163 = &v150 - v6;
  v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA7WeakRefVy8PaperKit20PDFAnnotationElementVGSgGMd, &_s9Coherence10CRRegisterVyAA7WeakRefVy8PaperKit20PDFAnnotationElementVGSgGMR);
  v164 = *(v165 - 8);
  MEMORY[0x1EEE9AC00](v165);
  v151 = &v150 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13PDFFieldFlagsVGSgMd, &_s9Coherence10CRRegisterVy8PaperKit13PDFFieldFlagsVGSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v154 = &v150 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v172 = &v150 - v11;
  v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13PDFFieldFlagsVGMd, &_s9Coherence10CRRegisterVy8PaperKit13PDFFieldFlagsVGMR);
  v177 = *(v168 - 8);
  MEMORY[0x1EEE9AC00](v168);
  v153 = &v150 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSGSgMd, &_s9Coherence10CRRegisterVySSGSgMR);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v156 = &v150 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v176 = &v150 - v16;
  v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSGMd, &_s9Coherence10CRRegisterVySSGMR);
  v180 = *(v171 - 8);
  MEMORY[0x1EEE9AC00](v171);
  v155 = &v150 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit20PDFAnnotationElementV15AnnotationShapeVGSgMd, &_s9Coherence10CRRegisterVy8PaperKit20PDFAnnotationElementV15AnnotationShapeVGSgMR);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v158 = &v150 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v186 = &v150 - v21;
  v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit20PDFAnnotationElementV15AnnotationShapeVGMd, &_s9Coherence10CRRegisterVy8PaperKit20PDFAnnotationElementV15AnnotationShapeVGMR);
  v175 = *(v183 - 8);
  MEMORY[0x1EEE9AC00](v183);
  v157 = &v150 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy10Foundation4DateVSgGSgMd, &_s9Coherence10CRRegisterVy10Foundation4DateVSgGSgMR);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v160 = &v150 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v192 = &v150 - v26;
  v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy10Foundation4DateVSgGMd, &_s9Coherence10CRRegisterVy10Foundation4DateVSgGMR);
  v179 = *(v190 - 8);
  MEMORY[0x1EEE9AC00](v190);
  v159 = &v150 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySiGSgMd, &_s9Coherence10CRRegisterVySiGSgMR);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v162 = &v150 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v182 = &v150 - v31;
  v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySiGMd, &_s9Coherence10CRRegisterVySiGMR);
  v191 = *(v178 - 8);
  MEMORY[0x1EEE9AC00](v178);
  v161 = &v150 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14SignatureValueVSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit14SignatureValueVSgGSgMR);
  MEMORY[0x1EEE9AC00](v33 - 8);
  v167 = &v150 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v189 = &v150 - v36;
  v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14SignatureValueVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit14SignatureValueVSgGMR);
  v185 = *(v181 - 8);
  MEMORY[0x1EEE9AC00](v181);
  v166 = &v150 - v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMR);
  MEMORY[0x1EEE9AC00](v38 - 8);
  v170 = &v150 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40);
  v187 = &v150 - v41;
  v188 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMR);
  v184 = *(v188 - 8);
  MEMORY[0x1EEE9AC00](v188);
  v169 = &v150 - v42;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSSgGSgMd, &_s9Coherence10CRRegisterVySSSgGSgMR);
  MEMORY[0x1EEE9AC00](v43 - 8);
  v174 = &v150 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v45);
  v47 = &v150 - v46;
  MEMORY[0x1EEE9AC00](v48);
  v50 = &v150 - v49;
  MEMORY[0x1EEE9AC00](v51);
  v53 = &v150 - v52;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSSgGMd, &_s9Coherence10CRRegisterVySSSgGMR);
  v55 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v173 = &v150 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v57);
  v59 = &v150 - v58;
  v194 = a1;
  outlined init with copy of Date?(a1, v53, &_s9Coherence10CRRegisterVySSSgGSgMd, &_s9Coherence10CRRegisterVySSSgGSgMR);
  v60 = *(v55 + 48);
  v61 = v60(v53, 1, v54);
  v193 = v1;
  if (v61 == 1)
  {
    v50 = v53;
LABEL_5:
    outlined destroy of StocksKitCurrencyCache.Provider?(v50, &_s9Coherence10CRRegisterVySSSgGSgMd, &_s9Coherence10CRRegisterVySSSgGSgMR);
    v62 = v191;
    goto LABEL_6;
  }

  (*(v55 + 32))(v59, v53, v54);
  outlined init with copy of Date?(v1, v50, &_s9Coherence10CRRegisterVySSSgGSgMd, &_s9Coherence10CRRegisterVySSSgGSgMR);
  if (v60(v50, 1, v54) == 1)
  {
    (*(v55 + 8))(v59, v54);
    goto LABEL_5;
  }

  v106 = CRRegister.canMerge(delta:)();
  v107 = *(v55 + 8);
  v107(v59, v54);
  v107(v50, v54);
  v62 = v191;
  if ((v106 & 1) == 0)
  {
    return 0;
  }

LABEL_6:
  v63 = type metadata accessor for PDFAnnotationElement.Partial(0);
  outlined init with copy of Date?(v194 + v63[5], v47, &_s9Coherence10CRRegisterVySSSgGSgMd, &_s9Coherence10CRRegisterVySSSgGSgMR);
  if (v60(v47, 1, v54) == 1)
  {
LABEL_9:
    v65 = v188;
    outlined destroy of StocksKitCurrencyCache.Provider?(v47, &_s9Coherence10CRRegisterVySSSgGSgMd, &_s9Coherence10CRRegisterVySSSgGSgMR);
    v66 = v189;
    v67 = v187;
    goto LABEL_10;
  }

  v64 = v173;
  (*(v55 + 32))(v173, v47, v54);
  v47 = v174;
  outlined init with copy of Date?(v193 + v63[5], v174, &_s9Coherence10CRRegisterVySSSgGSgMd, &_s9Coherence10CRRegisterVySSSgGSgMR);
  if (v60(v47, 1, v54) == 1)
  {
    (*(v55 + 8))(v64, v54);
    goto LABEL_9;
  }

  v121 = CRRegister.canMerge(delta:)();
  v122 = v64;
  v123 = *(v55 + 8);
  v123(v122, v54);
  v123(v47, v54);
  v65 = v188;
  v66 = v189;
  v67 = v187;
  if ((v121 & 1) == 0)
  {
    return 0;
  }

LABEL_10:
  v68 = v62;
  outlined init with copy of Date?(v194 + v63[6], v67, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMR);
  v69 = v184;
  v70 = *(v184 + 48);
  if (v70(v67, 1, v65) == 1)
  {
    v71 = v67;
LABEL_14:
    outlined destroy of StocksKitCurrencyCache.Provider?(v71, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMR);
    v76 = v185;
    v77 = v192;
    v78 = v68;
    goto LABEL_15;
  }

  v72 = v67;
  v73 = v169;
  (*(v69 + 32))(v169, v72, v65);
  v191 = v63;
  v74 = v193 + v63[6];
  v75 = v170;
  outlined init with copy of Date?(v74, v170, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMR);
  if (v70(v75, 1, v65) == 1)
  {
    (*(v69 + 8))(v73, v65);
    v71 = v75;
    v63 = v191;
    goto LABEL_14;
  }

  v124 = CRRegister.canMerge(delta:)();
  v125 = *(v69 + 8);
  v125(v73, v65);
  v125(v75, v65);
  v76 = v185;
  v63 = v191;
  v77 = v192;
  v78 = v68;
  if ((v124 & 1) == 0)
  {
    return 0;
  }

LABEL_15:
  outlined init with copy of Date?(v194 + v63[7], v66, &_s9Coherence10CRRegisterVy8PaperKit14SignatureValueVSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit14SignatureValueVSgGSgMR);
  v79 = *(v76 + 48);
  v80 = v181;
  if (v79(v66, 1, v181) == 1)
  {
    v81 = v66;
    v82 = v182;
LABEL_19:
    outlined destroy of StocksKitCurrencyCache.Provider?(v81, &_s9Coherence10CRRegisterVy8PaperKit14SignatureValueVSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit14SignatureValueVSgGSgMR);
    v87 = v183;
    v88 = v190;
    goto LABEL_20;
  }

  v83 = v66;
  v84 = v166;
  (*(v76 + 32))(v166, v83, v80);
  v85 = v167;
  outlined init with copy of Date?(v193 + v63[7], v167, &_s9Coherence10CRRegisterVy8PaperKit14SignatureValueVSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit14SignatureValueVSgGSgMR);
  v86 = v79(v85, 1, v80);
  v82 = v182;
  if (v86 == 1)
  {
    (*(v76 + 8))(v84, v80);
    v81 = v85;
    goto LABEL_19;
  }

  v136 = CRRegister.canMerge(delta:)();
  v137 = *(v76 + 8);
  v137(v84, v80);
  v137(v85, v80);
  v87 = v183;
  v88 = v190;
  if ((v136 & 1) == 0)
  {
    return 0;
  }

LABEL_20:
  outlined init with copy of Date?(v194 + v63[8], v82, &_s9Coherence10CRRegisterVySiGSgMd, &_s9Coherence10CRRegisterVySiGSgMR);
  v89 = *(v78 + 6);
  v90 = v178;
  if (v89(v82, 1, v178) == 1)
  {
    v91 = v82;
    v92 = v186;
LABEL_24:
    outlined destroy of StocksKitCurrencyCache.Provider?(v91, &_s9Coherence10CRRegisterVySiGSgMd, &_s9Coherence10CRRegisterVySiGSgMR);
    v98 = v179;
    goto LABEL_25;
  }

  v93 = v161;
  (*(v78 + 4))(v161, v82, v90);
  v94 = v78;
  v95 = v90;
  v96 = v162;
  outlined init with copy of Date?(v193 + v63[8], v162, &_s9Coherence10CRRegisterVySiGSgMd, &_s9Coherence10CRRegisterVySiGSgMR);
  v97 = v89(v96, 1, v90);
  v92 = v186;
  if (v97 == 1)
  {
    (*(v94 + 1))(v93, v95);
    v91 = v96;
    v88 = v190;
    v77 = v192;
    goto LABEL_24;
  }

  v138 = CRRegister.canMerge(delta:)();
  v139 = *(v94 + 1);
  v139(v93, v95);
  v139(v96, v95);
  v98 = v179;
  v88 = v190;
  v77 = v192;
  if ((v138 & 1) == 0)
  {
    return 0;
  }

LABEL_25:
  outlined init with copy of Date?(v194 + v63[9], v77, &_s9Coherence10CRRegisterVy10Foundation4DateVSgGSgMd, &_s9Coherence10CRRegisterVy10Foundation4DateVSgGSgMR);
  v99 = *(v98 + 48);
  if (v99(v77, 1, v88) == 1)
  {
    v100 = v77;
LABEL_29:
    outlined destroy of StocksKitCurrencyCache.Provider?(v100, &_s9Coherence10CRRegisterVy10Foundation4DateVSgGSgMd, &_s9Coherence10CRRegisterVy10Foundation4DateVSgGSgMR);
    goto LABEL_30;
  }

  v101 = v159;
  (*(v98 + 32))(v159, v77, v88);
  v102 = v160;
  outlined init with copy of Date?(v193 + v63[9], v160, &_s9Coherence10CRRegisterVy10Foundation4DateVSgGSgMd, &_s9Coherence10CRRegisterVy10Foundation4DateVSgGSgMR);
  if (v99(v102, 1, v88) == 1)
  {
    (*(v98 + 8))(v101, v88);
    v100 = v102;
    v92 = v186;
    goto LABEL_29;
  }

  v140 = CRRegister.canMerge(delta:)();
  v141 = *(v98 + 8);
  v141(v101, v88);
  v141(v102, v88);
  v92 = v186;
  if ((v140 & 1) == 0)
  {
    return 0;
  }

LABEL_30:
  outlined init with copy of Date?(v194 + v63[10], v92, &_s9Coherence10CRRegisterVy8PaperKit20PDFAnnotationElementV15AnnotationShapeVGSgMd, &_s9Coherence10CRRegisterVy8PaperKit20PDFAnnotationElementV15AnnotationShapeVGSgMR);
  v103 = v175;
  v104 = *(v175 + 48);
  if (v104(v92, 1, v87) == 1)
  {
    v105 = v92;
LABEL_36:
    outlined destroy of StocksKitCurrencyCache.Provider?(v105, &_s9Coherence10CRRegisterVy8PaperKit20PDFAnnotationElementV15AnnotationShapeVGSgMd, &_s9Coherence10CRRegisterVy8PaperKit20PDFAnnotationElementV15AnnotationShapeVGSgMR);
    v112 = v176;
    goto LABEL_37;
  }

  v108 = v157;
  (*(v103 + 32))(v157, v92, v87);
  v109 = v87;
  v110 = v108;
  v111 = v158;
  outlined init with copy of Date?(v193 + v63[10], v158, &_s9Coherence10CRRegisterVy8PaperKit20PDFAnnotationElementV15AnnotationShapeVGSgMd, &_s9Coherence10CRRegisterVy8PaperKit20PDFAnnotationElementV15AnnotationShapeVGSgMR);
  if (v104(v111, 1, v109) == 1)
  {
    (*(v103 + 8))(v110, v109);
    v105 = v111;
    goto LABEL_36;
  }

  v142 = CRRegister.canMerge(delta:)();
  v143 = *(v103 + 8);
  v143(v110, v109);
  v143(v111, v109);
  v112 = v176;
  if ((v142 & 1) == 0)
  {
    return 0;
  }

LABEL_37:
  outlined init with copy of Date?(v194 + v63[11], v112, &_s9Coherence10CRRegisterVySSGSgMd, &_s9Coherence10CRRegisterVySSGSgMR);
  v113 = *(v180 + 48);
  v114 = v171;
  if (v113(v112, 1, v171) == 1)
  {
LABEL_40:
    outlined destroy of StocksKitCurrencyCache.Provider?(v112, &_s9Coherence10CRRegisterVySSGSgMd, &_s9Coherence10CRRegisterVySSGSgMR);
    v117 = v172;
    goto LABEL_41;
  }

  v115 = v180;
  v116 = v155;
  (*(v180 + 32))(v155, v112, v114);
  v112 = v156;
  outlined init with copy of Date?(v193 + v63[11], v156, &_s9Coherence10CRRegisterVySSGSgMd, &_s9Coherence10CRRegisterVySSGSgMR);
  if (v113(v112, 1, v114) == 1)
  {
    (*(v115 + 8))(v116, v114);
    goto LABEL_40;
  }

  v144 = CRRegister.canMerge(delta:)();
  v145 = *(v115 + 8);
  v145(v116, v114);
  v145(v112, v114);
  v117 = v172;
  if ((v144 & 1) == 0)
  {
    return 0;
  }

LABEL_41:
  outlined init with copy of Date?(v194 + v63[12], v117, &_s9Coherence10CRRegisterVy8PaperKit13PDFFieldFlagsVGSgMd, &_s9Coherence10CRRegisterVy8PaperKit13PDFFieldFlagsVGSgMR);
  v118 = *(v177 + 48);
  v119 = v168;
  if (v118(v117, 1, v168) == 1)
  {
    v120 = v117;
  }

  else
  {
    v126 = v117;
    v127 = v177;
    v128 = v153;
    (*(v177 + 32))(v153, v126, v119);
    v129 = v154;
    outlined init with copy of Date?(v193 + v63[12], v154, &_s9Coherence10CRRegisterVy8PaperKit13PDFFieldFlagsVGSgMd, &_s9Coherence10CRRegisterVy8PaperKit13PDFFieldFlagsVGSgMR);
    if (v118(v129, 1, v119) != 1)
    {
      v146 = CRRegister.canMerge(delta:)();
      v147 = *(v127 + 8);
      v147(v128, v119);
      v147(v129, v119);
      if ((v146 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_50;
    }

    (*(v127 + 8))(v128, v119);
    v120 = v129;
  }

  outlined destroy of StocksKitCurrencyCache.Provider?(v120, &_s9Coherence10CRRegisterVy8PaperKit13PDFFieldFlagsVGSgMd, &_s9Coherence10CRRegisterVy8PaperKit13PDFFieldFlagsVGSgMR);
LABEL_50:
  v130 = v163;
  outlined init with copy of Date?(v194 + v63[13], v163, &_s9Coherence10CRRegisterVyAA7WeakRefVy8PaperKit20PDFAnnotationElementVGSgGSgMd, &_s9Coherence10CRRegisterVyAA7WeakRefVy8PaperKit20PDFAnnotationElementVGSgGSgMR);
  v131 = v164;
  v132 = *(v164 + 48);
  v133 = v165;
  if (v132(v130, 1, v165) == 1)
  {
LABEL_53:
    outlined destroy of StocksKitCurrencyCache.Provider?(v130, &_s9Coherence10CRRegisterVyAA7WeakRefVy8PaperKit20PDFAnnotationElementVGSgGSgMd, &_s9Coherence10CRRegisterVyAA7WeakRefVy8PaperKit20PDFAnnotationElementVGSgGSgMR);
    return 1;
  }

  v134 = v151;
  (*(v131 + 32))(v151, v130, v133);
  v130 = v152;
  outlined init with copy of Date?(v193 + v63[13], v152, &_s9Coherence10CRRegisterVyAA7WeakRefVy8PaperKit20PDFAnnotationElementVGSgGSgMd, &_s9Coherence10CRRegisterVyAA7WeakRefVy8PaperKit20PDFAnnotationElementVGSgGSgMR);
  if (v132(v130, 1, v133) == 1)
  {
    (*(v131 + 8))(v134, v133);
    goto LABEL_53;
  }

  v148 = CRRegister.canMerge(delta:)();
  v149 = *(v131 + 8);
  v149(v134, v133);
  v149(v130, v133);
  return (v148 & 1) != 0;
}

uint64_t PDFAnnotationElement.Partial.visitReferences(_:)(uint64_t a1)
{
  v2 = v1;
  v57 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA7WeakRefVy8PaperKit20PDFAnnotationElementVGSgGSgMd, &_s9Coherence10CRRegisterVyAA7WeakRefVy8PaperKit20PDFAnnotationElementVGSgGSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v64 = &v57 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13PDFFieldFlagsVGSgMd, &_s9Coherence10CRRegisterVy8PaperKit13PDFFieldFlagsVGSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v63 = &v57 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSGSgMd, &_s9Coherence10CRRegisterVySSGSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v62 = &v57 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit20PDFAnnotationElementV15AnnotationShapeVGSgMd, &_s9Coherence10CRRegisterVy8PaperKit20PDFAnnotationElementV15AnnotationShapeVGSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v61 = &v57 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy10Foundation4DateVSgGSgMd, &_s9Coherence10CRRegisterVy10Foundation4DateVSgGSgMR);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v60 = &v57 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySiGSgMd, &_s9Coherence10CRRegisterVySiGSgMR);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v59 = &v57 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14SignatureValueVSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit14SignatureValueVSgGSgMR);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v58 = &v57 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMR);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v57 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSSgGSgMd, &_s9Coherence10CRRegisterVySSSgGSgMR);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v57 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v57 - v24;
  v26 = v2;
  outlined init with copy of Date?(v2, &v57 - v24, &_s9Coherence10CRRegisterVySSSgGSgMd, &_s9Coherence10CRRegisterVySSSgGSgMR);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSSgGMd, &_s9Coherence10CRRegisterVySSSgGMR);
  v28 = *(v27 - 8);
  v29 = *(v28 + 48);
  if (v29(v25, 1, v27) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v25, &_s9Coherence10CRRegisterVySSSgGSgMd, &_s9Coherence10CRRegisterVySSSgGSgMR);
  }

  else
  {
    CRRegister.visitReferences(_:)();
    (*(v28 + 8))(v25, v27);
  }

  v30 = type metadata accessor for PDFAnnotationElement.Partial(0);
  outlined init with copy of Date?(v2 + v30[5], v22, &_s9Coherence10CRRegisterVySSSgGSgMd, &_s9Coherence10CRRegisterVySSSgGSgMR);
  if (v29(v22, 1, v27) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v22, &_s9Coherence10CRRegisterVySSSgGSgMd, &_s9Coherence10CRRegisterVySSSgGSgMR);
  }

  else
  {
    CRRegister.visitReferences(_:)();
    (*(v28 + 8))(v22, v27);
  }

  v31 = v61;
  v32 = v2;
  outlined init with copy of Date?(v2 + v30[6], v19, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMR);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMR);
  v34 = *(v33 - 8);
  v35 = (*(v34 + 48))(v19, 1, v33);
  v36 = v64;
  if (v35 == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v19, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMR);
  }

  else
  {
    CRRegister.visitReferences(_:)();
    (*(v34 + 8))(v19, v33);
  }

  v37 = v62;
  v38 = v58;
  outlined init with copy of Date?(v26 + v30[7], v58, &_s9Coherence10CRRegisterVy8PaperKit14SignatureValueVSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit14SignatureValueVSgGSgMR);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14SignatureValueVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit14SignatureValueVSgGMR);
  v40 = *(v39 - 8);
  if ((*(v40 + 48))(v38, 1, v39) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v38, &_s9Coherence10CRRegisterVy8PaperKit14SignatureValueVSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit14SignatureValueVSgGSgMR);
  }

  else
  {
    CRRegister.visitReferences(_:)();
    (*(v40 + 8))(v38, v39);
  }

  v41 = v63;
  v42 = v59;
  outlined init with copy of Date?(v26 + v30[8], v59, &_s9Coherence10CRRegisterVySiGSgMd, &_s9Coherence10CRRegisterVySiGSgMR);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySiGMd, &_s9Coherence10CRRegisterVySiGMR);
  v44 = *(v43 - 8);
  if ((*(v44 + 48))(v42, 1, v43) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v42, &_s9Coherence10CRRegisterVySiGSgMd, &_s9Coherence10CRRegisterVySiGSgMR);
  }

  else
  {
    CRRegister.visitReferences(_:)();
    (*(v44 + 8))(v42, v43);
  }

  v45 = v60;
  outlined init with copy of Date?(v32 + v30[9], v60, &_s9Coherence10CRRegisterVy10Foundation4DateVSgGSgMd, &_s9Coherence10CRRegisterVy10Foundation4DateVSgGSgMR);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy10Foundation4DateVSgGMd, &_s9Coherence10CRRegisterVy10Foundation4DateVSgGMR);
  v47 = *(v46 - 8);
  if ((*(v47 + 48))(v45, 1, v46) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v45, &_s9Coherence10CRRegisterVy10Foundation4DateVSgGSgMd, &_s9Coherence10CRRegisterVy10Foundation4DateVSgGSgMR);
  }

  else
  {
    CRRegister.visitReferences(_:)();
    (*(v47 + 8))(v45, v46);
  }

  outlined init with copy of Date?(v32 + v30[10], v31, &_s9Coherence10CRRegisterVy8PaperKit20PDFAnnotationElementV15AnnotationShapeVGSgMd, &_s9Coherence10CRRegisterVy8PaperKit20PDFAnnotationElementV15AnnotationShapeVGSgMR);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit20PDFAnnotationElementV15AnnotationShapeVGMd, &_s9Coherence10CRRegisterVy8PaperKit20PDFAnnotationElementV15AnnotationShapeVGMR);
  v49 = *(v48 - 8);
  if ((*(v49 + 48))(v31, 1, v48) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v31, &_s9Coherence10CRRegisterVy8PaperKit20PDFAnnotationElementV15AnnotationShapeVGSgMd, &_s9Coherence10CRRegisterVy8PaperKit20PDFAnnotationElementV15AnnotationShapeVGSgMR);
  }

  else
  {
    CRRegister.visitReferences(_:)();
    (*(v49 + 8))(v31, v48);
  }

  outlined init with copy of Date?(v32 + v30[11], v37, &_s9Coherence10CRRegisterVySSGSgMd, &_s9Coherence10CRRegisterVySSGSgMR);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSGMd, &_s9Coherence10CRRegisterVySSGMR);
  v51 = *(v50 - 8);
  if ((*(v51 + 48))(v37, 1, v50) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v37, &_s9Coherence10CRRegisterVySSGSgMd, &_s9Coherence10CRRegisterVySSGSgMR);
  }

  else
  {
    CRRegister.visitReferences(_:)();
    (*(v51 + 8))(v37, v50);
  }

  outlined init with copy of Date?(v32 + v30[12], v41, &_s9Coherence10CRRegisterVy8PaperKit13PDFFieldFlagsVGSgMd, &_s9Coherence10CRRegisterVy8PaperKit13PDFFieldFlagsVGSgMR);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13PDFFieldFlagsVGMd, &_s9Coherence10CRRegisterVy8PaperKit13PDFFieldFlagsVGMR);
  v53 = *(v52 - 8);
  if ((*(v53 + 48))(v41, 1, v52) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v41, &_s9Coherence10CRRegisterVy8PaperKit13PDFFieldFlagsVGSgMd, &_s9Coherence10CRRegisterVy8PaperKit13PDFFieldFlagsVGSgMR);
  }

  else
  {
    CRRegister.visitReferences(_:)();
    (*(v53 + 8))(v41, v52);
  }

  outlined init with copy of Date?(v32 + v30[13], v36, &_s9Coherence10CRRegisterVyAA7WeakRefVy8PaperKit20PDFAnnotationElementVGSgGSgMd, &_s9Coherence10CRRegisterVyAA7WeakRefVy8PaperKit20PDFAnnotationElementVGSgGSgMR);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA7WeakRefVy8PaperKit20PDFAnnotationElementVGSgGMd, &_s9Coherence10CRRegisterVyAA7WeakRefVy8PaperKit20PDFAnnotationElementVGSgGMR);
  v55 = *(v54 - 8);
  if ((*(v55 + 48))(v36, 1, v54) == 1)
  {
    return outlined destroy of StocksKitCurrencyCache.Provider?(v36, &_s9Coherence10CRRegisterVyAA7WeakRefVy8PaperKit20PDFAnnotationElementVGSgGSgMd, &_s9Coherence10CRRegisterVyAA7WeakRefVy8PaperKit20PDFAnnotationElementVGSgGSgMR);
  }

  CRRegister.visitReferences(_:)();
  return (*(v55 + 8))(v36, v54);
}

double PDFAnnotationElement.Partial.init(from:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v151 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA7WeakRefVy8PaperKit20PDFAnnotationElementVGSgGSgMd, &_s9Coherence10CRRegisterVyAA7WeakRefVy8PaperKit20PDFAnnotationElementVGSgGSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v113 = &v102 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13PDFFieldFlagsVGSgMd, &_s9Coherence10CRRegisterVy8PaperKit13PDFFieldFlagsVGSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v139 = &v102 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSGSgMd, &_s9Coherence10CRRegisterVySSGSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v118 = &v102 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit20PDFAnnotationElementV15AnnotationShapeVGSgMd, &_s9Coherence10CRRegisterVy8PaperKit20PDFAnnotationElementV15AnnotationShapeVGSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v138 = &v102 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy10Foundation4DateVSgGSgMd, &_s9Coherence10CRRegisterVy10Foundation4DateVSgGSgMR);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v127 = &v102 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySiGSgMd, &_s9Coherence10CRRegisterVySiGSgMR);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v132 = &v102 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14SignatureValueVSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit14SignatureValueVSgGSgMR);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v148 = &v102 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMR);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v141 = &v102 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSSgGSgMd, &_s9Coherence10CRRegisterVySSSgGSgMR);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v143 = &v102 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v146 = &v102 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSSgGMd, &_s9Coherence10CRRegisterVySSSgGMR);
  v24 = *(v23 - 8);
  v25 = *(v24 + 56);
  v26 = v24 + 56;
  v25(a2, 1, 1, v23);
  v27 = type metadata accessor for PDFAnnotationElement.Partial(0);
  v137 = v27[5];
  v147 = v23;
  v145 = v25;
  v142 = v26;
  v25(a2 + v137, 1, 1, v23);
  v28 = v27[6];
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMR);
  v30 = *(v29 - 8);
  v135 = *(v30 + 56);
  v136 = v28;
  v133 = v29;
  v134 = v30 + 56;
  v135(a2 + v28, 1, 1);
  v31 = v27[7];
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14SignatureValueVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit14SignatureValueVSgGMR);
  v33 = *(v32 - 8);
  v34 = *(v33 + 56);
  v130 = v32;
  v131 = v31;
  v129 = v34;
  v128 = v33 + 56;
  (v34)(a2 + v31, 1, 1);
  v35 = v27[8];
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySiGMd, &_s9Coherence10CRRegisterVySiGMR);
  v37 = *(v36 - 8);
  v38 = *(v37 + 56);
  v126 = v35;
  v140 = v36;
  v125 = v38;
  v124 = v37 + 56;
  (v38)(a2 + v35, 1, 1);
  v39 = v27[9];
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy10Foundation4DateVSgGMd, &_s9Coherence10CRRegisterVy10Foundation4DateVSgGMR);
  v41 = *(v40 - 8);
  v42 = *(v41 + 56);
  v122 = v39;
  v121 = v40;
  v120 = v42;
  v119 = v41 + 56;
  (v42)(a2 + v39, 1, 1);
  v43 = v27[10];
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit20PDFAnnotationElementV15AnnotationShapeVGMd, &_s9Coherence10CRRegisterVy8PaperKit20PDFAnnotationElementV15AnnotationShapeVGMR);
  v45 = *(v44 - 8);
  v46 = *(v45 + 56);
  v117 = v43;
  v116 = v44;
  v115 = v46;
  v114 = v45 + 56;
  (v46)(a2 + v43, 1, 1);
  v47 = v27[11];
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSGMd, &_s9Coherence10CRRegisterVySSGMR);
  v49 = *(v48 - 8);
  v50 = *(v49 + 56);
  v144 = v47;
  v112 = v50;
  v111 = v49 + 56;
  v50(a2 + v47, 1, 1, v48);
  v51 = v27[12];
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13PDFFieldFlagsVGMd, &_s9Coherence10CRRegisterVy8PaperKit13PDFFieldFlagsVGMR);
  v53 = *(v52 - 8);
  v54 = *(v53 + 56);
  v55 = v53 + 56;
  v123 = v51;
  v110 = v54;
  v54(a2 + v51, 1, 1, v52);
  v56 = v27[13];
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA7WeakRefVy8PaperKit20PDFAnnotationElementVGSgGMd, &_s9Coherence10CRRegisterVyAA7WeakRefVy8PaperKit20PDFAnnotationElementVGSgGMR);
  v58 = *(v57 - 8);
  v59 = *(v58 + 56);
  v60 = v58 + 56;
  v150 = a2;
  v59(a2 + v56, 1, 1, v57);
  v61 = v149;
  v62 = dispatch thunk of CRDecoder.keyedContainer()();
  if (v61)
  {

    v63 = v150;
LABEL_32:
    outlined destroy of PDFAnnotationElement.Partial(v63, type metadata accessor for PDFAnnotationElement.Partial);
    return result;
  }

  v64 = v62;
  v65 = v147;
  v104 = v48;
  v102 = v55;
  v103 = v52;
  v108 = v60;
  v109 = v59;
  v105 = v57;
  v106 = v56;
  v149 = 0;
  if (dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)())
  {
    v107 = v64;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
    lazy protocol witness table accessor for type Date? and conformance <A> A?(&lazy protocol witness table cache variable for type String? and conformance <A> A?, &_sSSSgMd, &_sSSSgMR);
    v66 = v146;
    v67 = v149;
    CRRegister.init(from:)();
    v63 = v150;
    v68 = v148;
    if (v67)
    {
      goto LABEL_31;
    }

    v69 = v65;
    v149 = 0;
    v71 = v65;
    v70 = v145;
    v145(v66, 0, 1, v71);
    outlined assign with take of UUID?(v66, v63, &_s9Coherence10CRRegisterVySSSgGSgMd, &_s9Coherence10CRRegisterVySSSgGSgMR);
  }

  else
  {
    v63 = v150;
    v68 = v148;
    v69 = v65;
    v70 = v145;
  }

  if (dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
    lazy protocol witness table accessor for type Date? and conformance <A> A?(&lazy protocol witness table cache variable for type String? and conformance <A> A?, &_sSSSgMd, &_sSSSgMR);
    v72 = v143;
    v73 = v149;
    CRRegister.init(from:)();
    if (v73)
    {
      goto LABEL_31;
    }

    v149 = 0;
    v70(v72, 0, 1, v69);
    outlined assign with take of UUID?(v72, v63 + v137, &_s9Coherence10CRRegisterVySSSgGSgMd, &_s9Coherence10CRRegisterVySSSgGSgMR);
  }

  v74 = dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)();
  v75 = v109;
  v76 = v144;
  if (v74)
  {
    v77 = v109;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
    lazy protocol witness table accessor for type Color? and conformance <A> A?();
    v78 = v141;
    v79 = v149;
    CRRegister.init(from:)();
    if (v79)
    {
      goto LABEL_31;
    }

    v149 = 0;
    (v135)(v78, 0, 1, v133);
    outlined assign with take of UUID?(v78, v63 + v136, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMR);
    v75 = v77;
  }

  v80 = dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)();
  v81 = v140;
  if (v80)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit14SignatureValueVSgMd, &_s8PaperKit14SignatureValueVSgMR);
    lazy protocol witness table accessor for type SignatureValue? and conformance <A> A?();
    v82 = v149;
    CRRegister.init(from:)();
    if (v82)
    {
      goto LABEL_31;
    }

    v149 = 0;
    v129(v68, 0, 1, v130);
    outlined assign with take of UUID?(v68, v63 + v131, &_s9Coherence10CRRegisterVy8PaperKit14SignatureValueVSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit14SignatureValueVSgGSgMR);
  }

  v83 = dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)();
  v84 = v138;
  v85 = v139;
  if (v83)
  {
    v86 = v132;
    v87 = v149;
    CRRegister.init(from:)();
    if (v87)
    {
      goto LABEL_31;
    }

    v149 = 0;
    v125(v86, 0, 1, v81);
    outlined assign with take of UUID?(v86, v63 + v126, &_s9Coherence10CRRegisterVySiGSgMd, &_s9Coherence10CRRegisterVySiGSgMR);
  }

  if (dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    lazy protocol witness table accessor for type Date? and conformance <A> A?(&lazy protocol witness table cache variable for type Date? and conformance <A> A?, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v88 = v127;
    v89 = v149;
    CRRegister.init(from:)();
    if (v89)
    {
      goto LABEL_31;
    }

    v149 = 0;
    v120(v88, 0, 1, v121);
    outlined assign with take of UUID?(v88, v63 + v122, &_s9Coherence10CRRegisterVy10Foundation4DateVSgGSgMd, &_s9Coherence10CRRegisterVy10Foundation4DateVSgGSgMR);
    v84 = v138;
    v85 = v139;
    v76 = v144;
  }

  if (dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)())
  {
    lazy protocol witness table accessor for type PDFAnnotationElement.AnnotationShape and conformance PDFAnnotationElement.AnnotationShape();
    v90 = v149;
    CRRegister.init(from:)();
    if (v90)
    {
      goto LABEL_31;
    }

    v149 = 0;
    v115(v84, 0, 1, v116);
    outlined assign with take of UUID?(v84, v63 + v117, &_s9Coherence10CRRegisterVy8PaperKit20PDFAnnotationElementV15AnnotationShapeVGSgMd, &_s9Coherence10CRRegisterVy8PaperKit20PDFAnnotationElementV15AnnotationShapeVGSgMR);
  }

  v91 = dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)();
  v92 = v123;
  if (!v91)
  {
    goto LABEL_29;
  }

  v93 = v118;
  v94 = v149;
  CRRegister.init(from:)();
  v149 = v94;
  if (v94)
  {
LABEL_31:

    goto LABEL_32;
  }

  v112(v93, 0, 1, v104);
  outlined assign with take of UUID?(v93, v63 + v76, &_s9Coherence10CRRegisterVySSGSgMd, &_s9Coherence10CRRegisterVySSGSgMR);
LABEL_29:
  if (dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)())
  {
    lazy protocol witness table accessor for type PDFFieldFlags and conformance PDFFieldFlags();
    v95 = v149;
    CRRegister.init(from:)();
    if (v95)
    {
      goto LABEL_31;
    }

    v149 = 0;
    v110(v85, 0, 1, v103);
    outlined assign with take of UUID?(v85, v63 + v92, &_s9Coherence10CRRegisterVy8PaperKit13PDFFieldFlagsVGSgMd, &_s9Coherence10CRRegisterVy8PaperKit13PDFFieldFlagsVGSgMR);
  }

  v97 = dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)();
  v98 = v106;
  v99 = v105;
  if (v97)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit20PDFAnnotationElementVGSgMd, &_s9Coherence7WeakRefVy8PaperKit20PDFAnnotationElementVGSgMR);
    lazy protocol witness table accessor for type WeakRef<PDFAnnotationElement>? and conformance <A> A?();
    v100 = v149;
    CRRegister.init(from:)();

    if (v100)
    {
      goto LABEL_32;
    }

    v101 = v113;
    v75(v113, 0, 1, v99);
    outlined assign with take of UUID?(v101, v63 + v98, &_s9Coherence10CRRegisterVyAA7WeakRefVy8PaperKit20PDFAnnotationElementVGSgGSgMd, &_s9Coherence10CRRegisterVyAA7WeakRefVy8PaperKit20PDFAnnotationElementVGSgGSgMR);
  }

  else
  {
  }

  return result;
}

double PDFAnnotationElement.Partial.encode(to:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA7WeakRefVy8PaperKit20PDFAnnotationElementVGSgGSgMd, &_s9Coherence10CRRegisterVyAA7WeakRefVy8PaperKit20PDFAnnotationElementVGSgGSgMR);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v105 = &v100 - v1;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA7WeakRefVy8PaperKit20PDFAnnotationElementVGSgGMd, &_s9Coherence10CRRegisterVyAA7WeakRefVy8PaperKit20PDFAnnotationElementVGSgGMR);
  v114 = *(v106 - 8);
  MEMORY[0x1EEE9AC00](v106);
  v120 = &v100 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13PDFFieldFlagsVGSgMd, &_s9Coherence10CRRegisterVy8PaperKit13PDFFieldFlagsVGSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v108 = &v100 - v4;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13PDFFieldFlagsVGMd, &_s9Coherence10CRRegisterVy8PaperKit13PDFFieldFlagsVGMR);
  v109 = *(v119 - 8);
  MEMORY[0x1EEE9AC00](v119);
  v104 = &v100 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSGSgMd, &_s9Coherence10CRRegisterVySSGSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v111 = &v100 - v7;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSGMd, &_s9Coherence10CRRegisterVySSGMR);
  v112 = *(v113 - 8);
  MEMORY[0x1EEE9AC00](v113);
  v107 = &v100 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit20PDFAnnotationElementV15AnnotationShapeVGSgMd, &_s9Coherence10CRRegisterVy8PaperKit20PDFAnnotationElementV15AnnotationShapeVGSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v116 = &v100 - v10;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit20PDFAnnotationElementV15AnnotationShapeVGMd, &_s9Coherence10CRRegisterVy8PaperKit20PDFAnnotationElementV15AnnotationShapeVGMR);
  v124 = *(v117 - 8);
  MEMORY[0x1EEE9AC00](v117);
  v110 = &v100 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy10Foundation4DateVSgGSgMd, &_s9Coherence10CRRegisterVy10Foundation4DateVSgGSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v121 = &v100 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy10Foundation4DateVSgGMd, &_s9Coherence10CRRegisterVy10Foundation4DateVSgGMR);
  v122 = *(v14 - 8);
  v123 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v115 = &v100 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySiGSgMd, &_s9Coherence10CRRegisterVySiGSgMR);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v131 = &v100 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySiGMd, &_s9Coherence10CRRegisterVySiGMR);
  v126 = *(v18 - 8);
  v127 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v118 = &v100 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14SignatureValueVSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit14SignatureValueVSgGSgMR);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v133 = (&v100 - v21);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14SignatureValueVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit14SignatureValueVSgGMR);
  v128 = *(v22 - 8);
  v129 = v22;
  MEMORY[0x1EEE9AC00](v22);
  v125 = &v100 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMR);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v130 = &v100 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMR);
  v132 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v100 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSSgGSgMd, &_s9Coherence10CRRegisterVySSSgGSgMR);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v31 = &v100 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v100 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSSgGMd, &_s9Coherence10CRRegisterVySSSgGMR);
  v36 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v38 = &v100 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v41 = &v100 - v40;
  v42 = v135;
  dispatch thunk of CREncoder.keyedContainer()();
  if (!v42)
  {
    v102 = v31;
    v101 = v38;
    v100 = v28;
    v103 = v26;
    v135 = 0;
    outlined init with copy of Date?(v134, v34, &_s9Coherence10CRRegisterVySSSgGSgMd, &_s9Coherence10CRRegisterVySSSgGSgMR);
    v44 = *(v36 + 48);
    v45 = v36;
    v46 = v35;
    if (v44(v34, 1, v35) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v34, &_s9Coherence10CRRegisterVySSSgGSgMd, &_s9Coherence10CRRegisterVySSSgGSgMR);
      v47 = v133;
    }

    else
    {
      (*(v36 + 32))(v41, v34, v35);
      lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<String?> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVySSSgGMd, &_s9Coherence10CRRegisterVySSSgGMR, MEMORY[0x1E6995080]);
      v48 = v135;
      dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
      v135 = v48;
      v47 = v133;
      if (v48)
      {
        (*(v45 + 8))(v41, v35);
        goto LABEL_43;
      }

      (*(v45 + 8))(v41, v35);
    }

    v133 = type metadata accessor for PDFAnnotationElement.Partial(0);
    v49 = v134;
    v50 = v102;
    outlined init with copy of Date?(v134 + v133[5], v102, &_s9Coherence10CRRegisterVySSSgGSgMd, &_s9Coherence10CRRegisterVySSSgGSgMR);
    if (v44(v50, 1, v46) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v50, &_s9Coherence10CRRegisterVySSSgGSgMd, &_s9Coherence10CRRegisterVySSSgGSgMR);
      v51 = v131;
      v52 = v132;
      v53 = v103;
    }

    else
    {
      v54 = v101;
      (*(v45 + 32))(v101, v50, v46);
      lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<String?> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVySSSgGMd, &_s9Coherence10CRRegisterVySSSgGMR, MEMORY[0x1E6995080]);
      v55 = v135;
      dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
      v135 = v55;
      v53 = v103;
      v56 = v45;
      v51 = v131;
      v52 = v132;
      if (v55)
      {
        (*(v56 + 8))(v54, v46);
        goto LABEL_43;
      }

      (*(v56 + 8))(v54, v46);
    }

    v57 = v130;
    outlined init with copy of Date?(v49 + v133[6], v130, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMR);
    if ((*(v52 + 48))(v57, 1, v53) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v57, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMR);
    }

    else
    {
      v58 = v57;
      v59 = v100;
      (*(v52 + 32))(v100, v58, v53);
      lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<Color?> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMR, MEMORY[0x1E6995080]);
      v60 = v135;
      dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
      v135 = v60;
      if (v60)
      {
        (*(v52 + 8))(v59, v53);
        goto LABEL_43;
      }

      (*(v52 + 8))(v59, v53);
    }

    v61 = v49;
    outlined init with copy of Date?(v49 + v133[7], v47, &_s9Coherence10CRRegisterVy8PaperKit14SignatureValueVSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit14SignatureValueVSgGSgMR);
    v62 = v128;
    v63 = v129;
    if ((*(v128 + 48))(v47, 1, v129) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v47, &_s9Coherence10CRRegisterVy8PaperKit14SignatureValueVSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit14SignatureValueVSgGSgMR);
    }

    else
    {
      v64 = v51;
      v65 = v125;
      (*(v62 + 32))(v125, v47, v63);
      lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<SignatureValue?> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVy8PaperKit14SignatureValueVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit14SignatureValueVSgGMR, MEMORY[0x1E6995080]);
      v66 = v135;
      dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
      v135 = v66;
      if (v66)
      {
        (*(v62 + 8))(v65, v63);
        goto LABEL_43;
      }

      (*(v62 + 8))(v65, v63);
      v51 = v64;
    }

    outlined init with copy of Date?(v61 + v133[8], v51, &_s9Coherence10CRRegisterVySiGSgMd, &_s9Coherence10CRRegisterVySiGSgMR);
    v68 = v126;
    v67 = v127;
    if ((*(v126 + 48))(v51, 1, v127) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v51, &_s9Coherence10CRRegisterVySiGSgMd, &_s9Coherence10CRRegisterVySiGSgMR);
    }

    else
    {
      v69 = v118;
      (*(v68 + 32))(v118, v51, v67);
      lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<Int> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVySiGMd, &_s9Coherence10CRRegisterVySiGMR, MEMORY[0x1E6995080]);
      v70 = v135;
      dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
      v135 = v70;
      if (v70)
      {
        (*(v68 + 8))(v69, v67);
        goto LABEL_43;
      }

      (*(v68 + 8))(v69, v67);
    }

    v71 = v133;
    v72 = v121;
    outlined init with copy of Date?(v61 + v133[9], v121, &_s9Coherence10CRRegisterVy10Foundation4DateVSgGSgMd, &_s9Coherence10CRRegisterVy10Foundation4DateVSgGSgMR);
    v74 = v122;
    v73 = v123;
    v75 = (*(v122 + 48))(v72, 1, v123);
    v76 = v124;
    if (v75 == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v72, &_s9Coherence10CRRegisterVy10Foundation4DateVSgGSgMd, &_s9Coherence10CRRegisterVy10Foundation4DateVSgGSgMR);
    }

    else
    {
      v77 = v72;
      v78 = v115;
      (*(v74 + 32))(v115, v77, v73);
      lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<Date?> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVy10Foundation4DateVSgGMd, &_s9Coherence10CRRegisterVy10Foundation4DateVSgGMR, MEMORY[0x1E6995080]);
      v79 = v135;
      dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
      v135 = v79;
      if (v79)
      {
        (*(v74 + 8))(v78, v73);
        goto LABEL_43;
      }

      (*(v74 + 8))(v78, v73);
    }

    v80 = v71;
    v81 = v116;
    outlined init with copy of Date?(v61 + v71[10], v116, &_s9Coherence10CRRegisterVy8PaperKit20PDFAnnotationElementV15AnnotationShapeVGSgMd, &_s9Coherence10CRRegisterVy8PaperKit20PDFAnnotationElementV15AnnotationShapeVGSgMR);
    v82 = v117;
    if ((*(v76 + 48))(v81, 1, v117) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v81, &_s9Coherence10CRRegisterVy8PaperKit20PDFAnnotationElementV15AnnotationShapeVGSgMd, &_s9Coherence10CRRegisterVy8PaperKit20PDFAnnotationElementV15AnnotationShapeVGSgMR);
      v84 = v119;
      v83 = v120;
    }

    else
    {
      v85 = v110;
      (*(v76 + 32))(v110, v81, v82);
      lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<PDFAnnotationElement.AnnotationShape> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVy8PaperKit20PDFAnnotationElementV15AnnotationShapeVGMd, &_s9Coherence10CRRegisterVy8PaperKit20PDFAnnotationElementV15AnnotationShapeVGMR, MEMORY[0x1E6995080]);
      v86 = v135;
      dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
      (*(v76 + 8))(v85, v82);
      v135 = v86;
      v84 = v119;
      v83 = v120;
      if (v86)
      {
        goto LABEL_43;
      }
    }

    v87 = v111;
    outlined init with copy of Date?(v61 + v80[11], v111, &_s9Coherence10CRRegisterVySSGSgMd, &_s9Coherence10CRRegisterVySSGSgMR);
    v88 = v112;
    v89 = v113;
    v90 = (*(v112 + 48))(v87, 1, v113);
    v91 = v114;
    if (v90 == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v87, &_s9Coherence10CRRegisterVySSGSgMd, &_s9Coherence10CRRegisterVySSGSgMR);
    }

    else
    {
      v92 = v107;
      (*(v88 + 32))(v107, v87, v89);
      lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<String> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVySSGMd, &_s9Coherence10CRRegisterVySSGMR, MEMORY[0x1E6995080]);
      v93 = v135;
      dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
      (*(v88 + 8))(v92, v89);
      v135 = v93;
      if (v93)
      {
        goto LABEL_43;
      }

      v84 = v119;
      v83 = v120;
    }

    v94 = v108;
    outlined init with copy of Date?(v61 + v80[12], v108, &_s9Coherence10CRRegisterVy8PaperKit13PDFFieldFlagsVGSgMd, &_s9Coherence10CRRegisterVy8PaperKit13PDFFieldFlagsVGSgMR);
    v95 = v109;
    if ((*(v109 + 48))(v94, 1, v84) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v94, &_s9Coherence10CRRegisterVy8PaperKit13PDFFieldFlagsVGSgMd, &_s9Coherence10CRRegisterVy8PaperKit13PDFFieldFlagsVGSgMR);
      goto LABEL_45;
    }

    v96 = v104;
    (*(v95 + 32))(v104, v94, v84);
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<PDFFieldFlags> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVy8PaperKit13PDFFieldFlagsVGMd, &_s9Coherence10CRRegisterVy8PaperKit13PDFFieldFlagsVGMR, MEMORY[0x1E6995080]);
    v97 = v135;
    dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
    (*(v95 + 8))(v96, v84);
    v135 = v97;
    if (!v97)
    {
LABEL_45:
      v98 = v105;
      outlined init with copy of Date?(v61 + v80[13], v105, &_s9Coherence10CRRegisterVyAA7WeakRefVy8PaperKit20PDFAnnotationElementVGSgGSgMd, &_s9Coherence10CRRegisterVyAA7WeakRefVy8PaperKit20PDFAnnotationElementVGSgGSgMR);
      v99 = v106;
      if ((*(v91 + 48))(v98, 1, v106) == 1)
      {

        outlined destroy of StocksKitCurrencyCache.Provider?(v98, &_s9Coherence10CRRegisterVyAA7WeakRefVy8PaperKit20PDFAnnotationElementVGSgGSgMd, &_s9Coherence10CRRegisterVyAA7WeakRefVy8PaperKit20PDFAnnotationElementVGSgGSgMR);
      }

      else
      {
        (*(v91 + 32))(v83, v98, v99);
        lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<WeakRef<PDFAnnotationElement>?> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVyAA7WeakRefVy8PaperKit20PDFAnnotationElementVGSgGMd, &_s9Coherence10CRRegisterVyAA7WeakRefVy8PaperKit20PDFAnnotationElementVGSgGMR, MEMORY[0x1E6995080]);
        dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
        (*(v91 + 8))(v83, v99);
      }

      return result;
    }

LABEL_43:
  }

  return result;
}

void PDFAnnotationElement.init(_:)(PDFAnnotation *a1)
{
  v33 = a1;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit20PDFAnnotationElementVGSgMd, &_s9Coherence7WeakRefVy8PaperKit20PDFAnnotationElementVGSgMR);
  MEMORY[0x1EEE9AC00](v32);
  v31 = &v26 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v30 = &v26 - v3;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x1EEE9AC00](v29);
  v28 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v26 = &v26 - v6;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit14SignatureValueVSgMd, &_s8PaperKit14SignatureValueVSgMR);
  MEMORY[0x1EEE9AC00](v27);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v26 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v26 - v16;
  v34 = 0uLL;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  lazy protocol witness table accessor for type Date? and conformance <A> A?(&lazy protocol witness table cache variable for type String? and conformance <A> A?, &_sSSSgMd, &_sSSSgMR);
  CRRegister.init(wrappedValue:)();
  type metadata accessor for PDFAnnotationElement(0);
  v34 = 0uLL;
  CRRegister.init(wrappedValue:)();
  v18 = type metadata accessor for Color(0);
  (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
  outlined init with copy of Date?(v17, v14, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
  lazy protocol witness table accessor for type Color? and conformance <A> A?();
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v17, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
  v19 = type metadata accessor for SignatureValue(0);
  (*(*(v19 - 8) + 56))(v11, 1, 1, v19);
  outlined init with copy of Date?(v11, v8, &_s8PaperKit14SignatureValueVSgMd, &_s8PaperKit14SignatureValueVSgMR);
  lazy protocol witness table accessor for type SignatureValue? and conformance <A> A?();
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v11, &_s8PaperKit14SignatureValueVSgMd, &_s8PaperKit14SignatureValueVSgMR);
  *&v34 = 0;
  CRRegister.init(wrappedValue:)();
  v20 = type metadata accessor for Date();
  v21 = v26;
  (*(*(v20 - 8) + 56))(v26, 1, 1, v20);
  outlined init with copy of Date?(v21, v28, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  lazy protocol witness table accessor for type Date? and conformance <A> A?(&lazy protocol witness table cache variable for type Date? and conformance <A> A?, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v21, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  lazy protocol witness table accessor for type PDFAnnotationElement.AnnotationShape and conformance PDFAnnotationElement.AnnotationShape();
  v34 = 0u;
  v35 = 0u;
  v36 = 0;
  CRRegister.init(wrappedValue:)();
  *&v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(&v34 + 1) = v22;
  CRRegister.init(wrappedValue:)();
  *&v34 = 0;
  lazy protocol witness table accessor for type PDFFieldFlags and conformance PDFFieldFlags();
  CRRegister.init(wrappedValue:)();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit20PDFAnnotationElementVGMd, &_s9Coherence7WeakRefVy8PaperKit20PDFAnnotationElementVGMR);
  v24 = v30;
  (*(*(v23 - 8) + 56))(v30, 1, 1, v23);
  outlined init with copy of Date?(v24, v31, &_s9Coherence7WeakRefVy8PaperKit20PDFAnnotationElementVGSgMd, &_s9Coherence7WeakRefVy8PaperKit20PDFAnnotationElementVGSgMR);
  lazy protocol witness table accessor for type WeakRef<PDFAnnotationElement>? and conformance <A> A?();
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v24, &_s9Coherence7WeakRefVy8PaperKit20PDFAnnotationElementVGSgMd, &_s9Coherence7WeakRefVy8PaperKit20PDFAnnotationElementVGSgMR);
  UnknownProperties.init()();
  v25 = v33;
  PDFAnnotationElement.updateFrom(_:)(v33);
}

Swift::Void __swiftcall PDFAnnotationElement.updateFrom(_:)(PDFAnnotation *a1)
{
  v2 = v1;
  v185 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA7WeakRefVy8PaperKit20PDFAnnotationElementVGSgGMd, &_s9Coherence10CRRegisterVyAA7WeakRefVy8PaperKit20PDFAnnotationElementVGSgGMR);
  v184 = *(v185 - 8);
  MEMORY[0x1EEE9AC00](v185);
  v183 = &v159 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v182 = &v159 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence9CRKeyPathVSgMd, &_s9Coherence9CRKeyPathVSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v163 = &v159 - v8;
  v165 = type metadata accessor for CRKeyPath();
  v164 = *(v165 - 8);
  MEMORY[0x1EEE9AC00](v165);
  v159 = &v159 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v161 = &v159 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit20PDFAnnotationElementVGSgMd, &_s9Coherence7WeakRefVy8PaperKit20PDFAnnotationElementVGSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v160 = &v159 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v186 = &v159 - v15;
  v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit20PDFAnnotationElementV15AnnotationShapeVGMd, &_s9Coherence10CRRegisterVy8PaperKit20PDFAnnotationElementV15AnnotationShapeVGMR);
  v180 = *(v181 - 8);
  MEMORY[0x1EEE9AC00](v181);
  v179 = &v159 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v188 = &v159 - v18;
  v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy10Foundation4DateVSgGMd, &_s9Coherence10CRRegisterVy10Foundation4DateVSgGMR);
  v177 = *(v178 - 8);
  MEMORY[0x1EEE9AC00](v178);
  v176 = &v159 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v175 = &v159 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v174 = &v159 - v23;
  v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySiGMd, &_s9Coherence10CRRegisterVySiGMR);
  v172 = *(v173 - 8);
  MEMORY[0x1EEE9AC00](v173);
  v171 = &v159 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v170 = &v159 - v26;
  v189 = type metadata accessor for Color(0);
  v187 = *(v189 - 8);
  MEMORY[0x1EEE9AC00](v189);
  v162 = (&v159 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v168 = &v159 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v166 = &v159 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v167 = &v159 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v169 = &v159 - v35;
  v196 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13PDFFieldFlagsVGMd, &_s9Coherence10CRRegisterVy8PaperKit13PDFFieldFlagsVGMR);
  v195 = *(v196 - 8);
  MEMORY[0x1EEE9AC00](v196);
  v194 = &v159 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v198 = &v159 - v38;
  v193 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14SignatureValueVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit14SignatureValueVSgGMR);
  v192 = *(v193 - 8);
  MEMORY[0x1EEE9AC00](v193);
  v191 = &v159 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40);
  v190 = &v159 - v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit14SignatureValueVSgMd, &_s8PaperKit14SignatureValueVSgMR);
  MEMORY[0x1EEE9AC00](v42 - 8);
  v197 = &v159 - v43;
  v201 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSSgGMd, &_s9Coherence10CRRegisterVySSSgGMR);
  v202 = *(v201 - 8);
  MEMORY[0x1EEE9AC00](v201);
  v199 = &v159 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v45);
  v200 = &v159 - v46;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSGMd, &_s9Coherence10CRRegisterVySSGMR);
  v48 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v50 = &v159 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v52 = MEMORY[0x1EEE9AC00](v51).n128_u64[0];
  v54 = &v159 - v53;
  v55 = *MEMORY[0x1E6978078];
  v204 = a1;
  if (![(PDFAnnotation *)a1 valueForAnnotationKey:v55, v52])
  {
    __break(1u);
    return;
  }

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  outlined init with take of Any(&v210, &v205);
  swift_dynamicCast();
  v56 = v208;
  v57 = v209;
  v203 = type metadata accessor for PDFAnnotationElement(0);
  CRRegister.projectedValue.getter();
  CRRegister.value.getter();
  if (v205 == __PAIR128__(v57, v56))
  {
  }

  else
  {
    v58 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v58)
    {
    }

    else
    {
      *&v205 = v56;
      *(&v205 + 1) = v57;
      CRRegister.value.setter();
    }

    v2 = v1;
  }

  (*(v48 + 16))(v50, v54, v47);
  CRRegister.projectedValue.setter();
  (*(v48 + 8))(v54, v47);
  CRRegister.wrappedValue.getter();
  v59 = v205;
  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v59 && v60 == *(&v59 + 1))
  {

    return;
  }

  v61 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v61)
  {

    return;
  }

  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v59 && v62 == *(&v59 + 1))
  {

    v63 = v204;
    v64 = v198;
    v65 = v197;
    goto LABEL_17;
  }

  v66 = _stringCompareWithSmolCheck(_:_:expecting:)();

  v63 = v204;
  v64 = v198;
  v65 = v197;
  if ((v66 & 1) == 0)
  {
    v84 = [(PDFAnnotation *)v204 widgetStringValue];
    if (v84)
    {
      v85 = v84;
      v86 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v88 = v87;
    }

    else
    {
      v86 = 0;
      v88 = 0;
    }

    v89 = v202;
    v90 = v200;
    v91 = v201;
    CRRegister.projectedValue.getter();
    specialized CRRegister<>.setIfDifferent(_:)(v86, v88);

    v92 = *(v89 + 16);
    v92(v199, v90, v91);
    v198 = v2;
    CRRegister.projectedValue.setter();
    v93 = *(v89 + 8);
    v93(v90, v91);
    v94 = [(PDFAnnotation *)v63 contents];
    v202 = v89 + 8;
    if (v94)
    {
      v95 = v94;
      v96 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v98 = v97;
    }

    else
    {
      v96 = 0;
      v98 = 0;
    }

    v99 = v200;
    v100 = v201;
    CRRegister.projectedValue.getter();
    specialized CRRegister<>.setIfDifferent(_:)(v96, v98);

    v92(v199, v99, v100);
    CRRegister.projectedValue.setter();
    v93(v99, v100);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMR);
    v101 = v169;
    CRRegister.wrappedValue.getter();
    v102 = *(v187 + 48);
    if (v102(v101, 1, v189))
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v101, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
      v103 = 0;
    }

    else
    {
      v104 = v162;
      outlined init with copy of PDFAnnotationElement.Partial(v101, v162, type metadata accessor for Color);
      outlined destroy of StocksKitCurrencyCache.Provider?(v101, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
      v103 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithCGColor_];
      outlined destroy of PDFAnnotationElement.Partial(v104, type metadata accessor for Color);
    }

    v105 = v170;
    v106 = [(PDFAnnotation *)v204 color];
    v107 = v106;
    if (v103)
    {
      if (v106)
      {
        type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIColor, 0x1E69DC888);
        v108 = static NSObject.== infix(_:_:)();

        if (v108)
        {
          goto LABEL_58;
        }

        goto LABEL_54;
      }

      v107 = v103;
    }

    else if (!v106)
    {
      goto LABEL_58;
    }

LABEL_54:
    v109 = [(PDFAnnotation *)v204 color];
    v110 = [(UIColor *)v109 CGColor];
    v111 = v166;
    Color.init(cgColor:)(v110, v166);

    if (v102(v111, 1, v189))
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v111, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
      v112 = 1;
      v113 = v168;
      v114 = v167;
    }

    else
    {
      v114 = v167;
      outlined init with take of PDFAnnotationElement.MutatingAction(v111, v167, type metadata accessor for Color);
      v112 = 0;
      v113 = v168;
    }

    (*(v187 + 56))(v114, v112, 1, v189);
    outlined init with copy of Date?(v114, v113, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
    CRRegister.wrappedValue.setter();
    outlined destroy of StocksKitCurrencyCache.Provider?(v114, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
LABEL_58:
    if ([(PDFAnnotation *)v204 valueForAnnotationKey:*MEMORY[0x1E6978060]])
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v210 = 0u;
      v211 = 0u;
    }

    v115 = v181;
    v116 = v174;
    v117 = v173;
    v205 = v210;
    v206 = v211;
    if (*(&v211 + 1))
    {
      v118 = swift_dynamicCast();
      v119 = v177;
      if (v118)
      {
        v120 = v208;
      }

      else
      {
        v120 = 0;
      }
    }

    else
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(&v205, &_sypSgMd, &_sypSgMR);
      v120 = 0;
      v119 = v177;
    }

    CRRegister.projectedValue.getter();
    CRRegister.value.getter();
    if (v205 != v120)
    {
      *&v205 = v120;
      CRRegister.value.setter();
    }

    v121 = v172;
    (*(v172 + 16))(v171, v105, v117);
    CRRegister.projectedValue.setter();
    (*(v121 + 8))(v105, v117);
    v122 = v204;
    v123 = [(PDFAnnotation *)v204 modificationDate];
    if (v123)
    {
      v124 = v123;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v125 = 0;
    }

    else
    {
      v125 = 1;
    }

    v126 = v178;
    v127 = type metadata accessor for Date();
    (*(*(v127 - 8) + 56))(v116, v125, 1, v127);
    v128 = v175;
    CRRegister.projectedValue.getter();
    specialized CRRegister<>.setIfDifferent(_:)(v116);
    outlined destroy of StocksKitCurrencyCache.Provider?(v116, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    (*(v119 + 16))(v176, v128, v126);
    CRRegister.projectedValue.setter();
    (*(v119 + 8))(v128, v126);
    v129 = PDFAnnotation.quadPoints.getter();
    [(PDFAnnotation *)v122 bounds];
    v131 = v130;
    v133 = v132;
    v135 = v134;
    v137 = v136;
    CRRegister.projectedValue.getter();
    CRRegister.value.getter();
    v138 = v205;
    v140 = v206;
    v139 = v207;
    if (v205)
    {
      v141 = v186;
      v142 = v180;
      if (!v129 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZSo7CGPointV_Tt1g5(v205, v129) & 1) == 0)
      {
        goto LABEL_78;
      }
    }

    else
    {
      v141 = v186;
      v142 = v180;
      if (v129)
      {
        goto LABEL_78;
      }
    }

    v212.origin.x = *(&v138 + 1);
    *&v212.origin.y = v140;
    v212.size.height = v139;
    v213.origin.x = v131;
    v213.origin.y = v133;
    v213.size.width = v135;
    v213.size.height = v137;
    if (CGRectEqualToRect(v212, v213))
    {

      v143 = v188;
      goto LABEL_79;
    }

LABEL_78:

    *&v205 = v129;
    *(&v205 + 1) = v131;
    *&v206 = v133;
    *(&v206 + 1) = v135;
    v207 = v137;
    v143 = v188;
    CRRegister.value.setter();
LABEL_79:
    (*(v142 + 16))(v179, v143, v115);
    CRRegister.projectedValue.setter();
    (*(v142 + 8))(v143, v115);
    v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit20PDFAnnotationElementVGMd, &_s9Coherence7WeakRefVy8PaperKit20PDFAnnotationElementVGMR);
    v145 = *(*(v144 - 8) + 56);
    v145(v141, 1, 1, v144);
    v146 = [(PDFAnnotation *)v122 popup];
    if (v146)
    {
      v147 = v146;
      type metadata accessor for CanvasElementPDFAnnotation(0);
      v148 = swift_dynamicCastClass();
      if (v148)
      {
        v149 = OBJC_IVAR____TtC8PaperKit26CanvasElementPDFAnnotation_subelementId;
        v150 = v148;
        swift_beginAccess();
        v151 = v163;
        outlined init with copy of Date?(v150 + v149, v163, &_s9Coherence9CRKeyPathVSgMd, &_s9Coherence9CRKeyPathVSgMR);
        v152 = v164;
        v153 = v165;
        if ((*(v164 + 48))(v151, 1, v165) != 1)
        {
          v154 = v161;
          (*(v152 + 32))(v161, v151, v153);
          (*(v152 + 16))(v159, v154, v153);
          lazy protocol witness table accessor for type CGPoint and conformance CGPoint(&lazy protocol witness table cache variable for type PDFAnnotationElement and conformance PDFAnnotationElement, type metadata accessor for PDFAnnotationElement, &protocol conformance descriptor for PDFAnnotationElement);
          v155 = v160;
          WeakRef.init(id:)();

          (*(v152 + 8))(v154, v153);
          v141 = v186;
          outlined destroy of StocksKitCurrencyCache.Provider?(v186, &_s9Coherence7WeakRefVy8PaperKit20PDFAnnotationElementVGSgMd, &_s9Coherence7WeakRefVy8PaperKit20PDFAnnotationElementVGSgMR);
          v145(v155, 0, 1, v144);
          outlined init with take of Range<AttributedString.Index>(v155, v141, &_s9Coherence7WeakRefVy8PaperKit20PDFAnnotationElementVGSgMd, &_s9Coherence7WeakRefVy8PaperKit20PDFAnnotationElementVGSgMR);
          goto LABEL_86;
        }

        v141 = v186;
      }

      else
      {

        v151 = v163;
        (*(v164 + 56))(v163, 1, 1, v165);
      }

      outlined destroy of StocksKitCurrencyCache.Provider?(v151, &_s9Coherence9CRKeyPathVSgMd, &_s9Coherence9CRKeyPathVSgMR);
    }

LABEL_86:
    v156 = v182;
    v157 = v185;
    CRRegister.projectedValue.getter();
    specialized CRRegister<>.setIfDifferent(_:)(v141);
    v158 = v184;
    (*(v184 + 16))(v183, v156, v157);
    CRRegister.projectedValue.setter();
    (*(v158 + 8))(v156, v157);
    outlined destroy of StocksKitCurrencyCache.Provider?(v141, &_s9Coherence7WeakRefVy8PaperKit20PDFAnnotationElementVGSgMd, &_s9Coherence7WeakRefVy8PaperKit20PDFAnnotationElementVGSgMR);
    return;
  }

LABEL_17:
  v67 = [(PDFAnnotation *)v63 widgetStringValue];
  if (v67)
  {
    v68 = v67;
    v69 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v71 = v70;
  }

  else
  {
    v69 = 0;
    v71 = 0;
  }

  v72 = v200;
  v73 = v201;
  CRRegister.projectedValue.getter();
  specialized CRRegister<>.setIfDifferent(_:)(v69, v71);

  v74 = v202;
  (*(v202 + 16))(v199, v72, v73);
  CRRegister.projectedValue.setter();
  (*(v74 + 8))(v72, v73);
  if ([(PDFAnnotation *)v63 signatureAnnotationForRendering])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v210 = 0u;
    v211 = 0u;
  }

  v205 = v210;
  v206 = v211;
  if (*(&v211 + 1))
  {
    v75 = type metadata accessor for SignatureValue(0);
    v76 = swift_dynamicCast();
    (*(*(v75 - 8) + 56))(v65, v76 ^ 1u, 1, v75);
  }

  else
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(&v205, &_sypSgMd, &_sypSgMR);
    v77 = type metadata accessor for SignatureValue(0);
    (*(*(v77 - 8) + 56))(v65, 1, 1, v77);
  }

  v78 = v190;
  v79 = v193;
  CRRegister.projectedValue.getter();
  specialized CRRegister<>.setIfDifferent(_:)(v65);
  v80 = v192;
  (*(v192 + 16))(v191, v78, v79);
  CRRegister.projectedValue.setter();
  (*(v80 + 8))(v78, v79);
  outlined destroy of StocksKitCurrencyCache.Provider?(v65, &_s8PaperKit14SignatureValueVSgMd, &_s8PaperKit14SignatureValueVSgMR);
  if ([(PDFAnnotation *)v204 valueForAnnotationKey:*MEMORY[0x1E6978080]])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v210 = 0u;
    v211 = 0u;
  }

  v205 = v210;
  v206 = v211;
  if (!*(&v211 + 1))
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(&v205, &_sypSgMd, &_sypSgMR);
    goto LABEL_33;
  }

  if (!swift_dynamicCast())
  {
LABEL_33:
    v81 = 0;
    goto LABEL_34;
  }

  v81 = v208;
LABEL_34:
  v82 = v196;
  CRRegister.projectedValue.getter();
  CRRegister.value.getter();
  if (v205 != v81)
  {
    *&v205 = v81;
    CRRegister.value.setter();
  }

  v83 = v195;
  (*(v195 + 16))(v194, v64, v82);
  CRRegister.projectedValue.setter();
  (*(v83 + 8))(v64, v82);
}

void (*PDFAnnotationElement.frame.modify(uint64_t a1))()
{
  *a1 = 0;
  *(a1 + 8) = 0;
  __asm { FMOV            V0.2D, #1.0 }

  *(a1 + 16) = _Q0;
  return UnknownCanvasElementView.flags.modify;
}

uint64_t PDFAnnotationElement.thumbnail.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for CRAsset();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t PDFAnnotationElement.shared(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for CRKeyPath();
  v5 = MEMORY[0x1EEE9AC00](v4);
  v10[15] = 8;
  (*(v7 + 16))(&v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], a1, v5);
  lazy protocol witness table accessor for type TaggedCanvasElement and conformance TaggedCanvasElement();
  SharedTagged_10.init(_:id:)();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMR);
  return (*(*(v8 - 8) + 56))(a2, 0, 1, v8);
}

void (*protocol witness for CanvasElement.frame.modify in conformance PDFAnnotationElement(uint64_t a1))()
{
  *a1 = 0;
  *(a1 + 8) = 0;
  __asm { FMOV            V0.2D, #1.0 }

  *(a1 + 16) = _Q0;
  return UnknownCanvasElementView.flags.modify;
}

uint64_t protocol witness for CanvasElement.shared(_:) in conformance PDFAnnotationElement@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for CRKeyPath();
  v5 = MEMORY[0x1EEE9AC00](v4);
  v10[15] = 8;
  (*(v7 + 16))(&v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], a1, v5);
  lazy protocol witness table accessor for type TaggedCanvasElement and conformance TaggedCanvasElement();
  SharedTagged_10.init(_:id:)();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMR);
  return (*(*(v8 - 8) + 56))(a2, 0, 1, v8);
}

uint64_t PDFAnnotationElement.merge(_:)(uint64_t a1)
{
  v2 = type metadata accessor for MergeResult();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  PDFAnnotationElement.merge(_:)(a1, v5);
  return (*(v3 + 8))(v5, v2);
}

uint64_t PDFAnnotationElement.merge(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v154 = a1;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA7WeakRefVy8PaperKit20PDFAnnotationElementVGSgGMd, &_s9Coherence10CRRegisterVyAA7WeakRefVy8PaperKit20PDFAnnotationElementVGSgGMR);
  v148 = *(v146 - 8);
  MEMORY[0x1EEE9AC00](v146);
  v147 = v107 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v144 = v107 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v145 = v107 - v8;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13PDFFieldFlagsVGMd, &_s9Coherence10CRRegisterVy8PaperKit13PDFFieldFlagsVGMR);
  v143 = *(v139 - 8);
  MEMORY[0x1EEE9AC00](v139);
  v142 = v107 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v141 = v107 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v140 = v107 - v13;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSGMd, &_s9Coherence10CRRegisterVySSGMR);
  v138 = *(v134 - 8);
  MEMORY[0x1EEE9AC00](v134);
  v137 = v107 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v136 = v107 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v135 = v107 - v18;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit20PDFAnnotationElementV15AnnotationShapeVGMd, &_s9Coherence10CRRegisterVy8PaperKit20PDFAnnotationElementV15AnnotationShapeVGMR);
  v133 = *(v131 - 8);
  MEMORY[0x1EEE9AC00](v131);
  v132 = v107 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v130 = v107 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v129 = v107 - v23;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy10Foundation4DateVSgGMd, &_s9Coherence10CRRegisterVy10Foundation4DateVSgGMR);
  v128 = *(v126 - 8);
  MEMORY[0x1EEE9AC00](v126);
  v127 = v107 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v125 = v107 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v124 = v107 - v28;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySiGMd, &_s9Coherence10CRRegisterVySiGMR);
  v123 = *(v121 - 8);
  MEMORY[0x1EEE9AC00](v121);
  v122 = v107 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v120 = v107 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v119 = v107 - v33;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14SignatureValueVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit14SignatureValueVSgGMR);
  v118 = *(v116 - 8);
  MEMORY[0x1EEE9AC00](v116);
  v117 = v107 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v115 = v107 - v36;
  MEMORY[0x1EEE9AC00](v37);
  v114 = v107 - v38;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMR);
  v113 = *(v111 - 8);
  MEMORY[0x1EEE9AC00](v111);
  v112 = v107 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40);
  v110 = v107 - v41;
  MEMORY[0x1EEE9AC00](v42);
  v109 = v107 - v43;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSSgGMd, &_s9Coherence10CRRegisterVySSSgGMR);
  v45 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v149 = v107 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v47);
  v49 = v107 - v48;
  MEMORY[0x1EEE9AC00](v50);
  v52 = v107 - v51;
  v152 = type metadata accessor for MergeResult();
  v155 = *(v152 - 8);
  MEMORY[0x1EEE9AC00](v152);
  v107[0] = v107 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v151 = a2;
  MergeResult.init()();
  CRRegister.projectedValue.getter();
  CRRegister.projectedValue.getter();
  CRRegister.merge(_:)();
  v54 = *(v45 + 8);
  v54(v52, v44);
  v55 = *(v45 + 16);
  v107[2] = v45 + 16;
  v108 = v55;
  v55(v149, v49, v44);
  CRRegister.projectedValue.setter();
  v54(v49, v44);
  v56 = v107[0];
  MergeResult.merge(_:)();
  v57 = *(v155 + 8);
  v155 += 8;
  v153 = v57;
  v57(v56, v152);
  v58 = type metadata accessor for PDFAnnotationElement(0);
  CRRegister.projectedValue.getter();
  CRRegister.projectedValue.getter();
  CRRegister.merge(_:)();
  v54(v52, v44);
  v108(v149, v49, v44);
  CRRegister.projectedValue.setter();
  v54(v49, v44);
  MergeResult.merge(_:)();
  v59 = v56;
  v60 = v152;
  v153(v56, v152);
  v150 = v58;
  v61 = v109;
  v62 = v111;
  CRRegister.projectedValue.getter();
  v63 = v2;
  v64 = v110;
  CRRegister.projectedValue.getter();
  v65 = v61;
  CRRegister.merge(_:)();
  v66 = v113;
  v67 = *(v113 + 8);
  v67(v65, v62);
  (*(v66 + 16))(v112, v64, v62);
  CRRegister.projectedValue.setter();
  v67(v64, v62);
  MergeResult.merge(_:)();
  v153(v59, v60);
  v68 = v114;
  v69 = v116;
  CRRegister.projectedValue.getter();
  v70 = v115;
  CRRegister.projectedValue.getter();
  CRRegister.merge(_:)();
  v71 = v118;
  v72 = *(v118 + 8);
  v72(v68, v69);
  (*(v71 + 16))(v117, v70, v69);
  CRRegister.projectedValue.setter();
  v72(v70, v69);
  MergeResult.merge(_:)();
  v153(v59, v152);
  v73 = v119;
  v74 = v121;
  CRRegister.projectedValue.getter();
  v75 = v120;
  CRRegister.projectedValue.getter();
  CRRegister.merge(_:)();
  v76 = v123;
  v77 = *(v123 + 8);
  v77(v73, v74);
  (*(v76 + 16))(v122, v75, v74);
  CRRegister.projectedValue.setter();
  v77(v75, v74);
  MergeResult.merge(_:)();
  v153(v59, v152);
  v78 = v124;
  v79 = v126;
  CRRegister.projectedValue.getter();
  v80 = v125;
  CRRegister.projectedValue.getter();
  CRRegister.merge(_:)();
  v81 = v128;
  v82 = *(v128 + 8);
  v82(v78, v79);
  (*(v81 + 16))(v127, v80, v79);
  CRRegister.projectedValue.setter();
  v82(v80, v79);
  MergeResult.merge(_:)();
  v83 = v152;
  v153(v59, v152);
  v84 = v129;
  v85 = v131;
  CRRegister.projectedValue.getter();
  v86 = v130;
  CRRegister.projectedValue.getter();
  CRRegister.merge(_:)();
  v87 = v133;
  v88 = *(v133 + 8);
  v88(v84, v85);
  (*(v87 + 16))(v132, v86, v85);
  CRRegister.projectedValue.setter();
  v88(v86, v85);
  MergeResult.merge(_:)();
  v153(v59, v83);
  v89 = v135;
  v90 = v134;
  CRRegister.projectedValue.getter();
  v107[1] = v63;
  v91 = v136;
  CRRegister.projectedValue.getter();
  CRRegister.merge(_:)();
  v92 = v138;
  v93 = *(v138 + 8);
  v93(v89, v90);
  (*(v92 + 16))(v137, v91, v90);
  CRRegister.projectedValue.setter();
  v93(v91, v90);
  MergeResult.merge(_:)();
  v153(v59, v152);
  v95 = v139;
  v94 = v140;
  CRRegister.projectedValue.getter();
  v96 = v141;
  CRRegister.projectedValue.getter();
  CRRegister.merge(_:)();
  v97 = v143;
  v98 = *(v143 + 8);
  v98(v94, v95);
  (*(v97 + 16))(v142, v96, v95);
  CRRegister.projectedValue.setter();
  v98(v96, v95);
  MergeResult.merge(_:)();
  v153(v59, v152);
  v99 = v145;
  v100 = v146;
  CRRegister.projectedValue.getter();
  v101 = v144;
  CRRegister.projectedValue.getter();
  CRRegister.merge(_:)();
  v102 = v148;
  v103 = *(v148 + 8);
  v103(v99, v100);
  (*(v102 + 16))(v147, v101, v100);
  CRRegister.projectedValue.setter();
  v103(v101, v100);
  MergeResult.merge(_:)();
  v104 = v152;
  v105 = v153;
  v153(v59, v152);
  UnknownProperties.merge(_:)();
  MergeResult.merge(_:)();
  return v105(v59, v104);
}

uint64_t PDFAnnotationElement.actionUndoingDifference(from:)@<X0>(uint64_t a1@<X8>)
{
  v144 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA7WeakRefVy8PaperKit20PDFAnnotationElementVGSgGMd, &_s9Coherence10CRRegisterVyAA7WeakRefVy8PaperKit20PDFAnnotationElementVGSgGMR);
  v2 = *(v1 - 8);
  v142 = v1;
  v143 = v2;
  MEMORY[0x1EEE9AC00](v1);
  v141 = &v109 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v140 = &v109 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVyAA7WeakRefVy8PaperKit20PDFAnnotationElementVGSg_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVyAA7WeakRefVy8PaperKit20PDFAnnotationElementVGSg_GSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v130 = &v109 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13PDFFieldFlagsVGMd, &_s9Coherence10CRRegisterVy8PaperKit13PDFFieldFlagsVGMR);
  v9 = *(v8 - 8);
  v138 = v8;
  v139 = v9;
  MEMORY[0x1EEE9AC00](v8);
  v137 = &v109 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v136 = &v109 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit13PDFFieldFlagsV_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit13PDFFieldFlagsV_GSgMR);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v146 = &v109 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSGMd, &_s9Coherence10CRRegisterVySSGMR);
  v16 = *(v15 - 8);
  v134 = v15;
  v135 = v16;
  MEMORY[0x1EEE9AC00](v15);
  v133 = &v109 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v132 = &v109 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVySS_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVySS_GSgMR);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v147 = &v109 - v21;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit20PDFAnnotationElementV15AnnotationShapeVGMd, &_s9Coherence10CRRegisterVy8PaperKit20PDFAnnotationElementV15AnnotationShapeVGMR);
  v131 = *(v129 - 8);
  MEMORY[0x1EEE9AC00](v129);
  v128 = &v109 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v127 = &v109 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit20PDFAnnotationElementV15AnnotationShapeV_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit20PDFAnnotationElementV15AnnotationShapeV_GSgMR);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v148 = &v109 - v26;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy10Foundation4DateVSgGMd, &_s9Coherence10CRRegisterVy10Foundation4DateVSgGMR);
  v126 = *(v125 - 8);
  MEMORY[0x1EEE9AC00](v125);
  v124 = &v109 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v123 = &v109 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVy10Foundation4DateVSg_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVy10Foundation4DateVSg_GSgMR);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v149 = &v109 - v31;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySiGMd, &_s9Coherence10CRRegisterVySiGMR);
  v122 = *(v121 - 8);
  MEMORY[0x1EEE9AC00](v121);
  v120 = &v109 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v119 = &v109 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVySi_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVySi_GSgMR);
  MEMORY[0x1EEE9AC00](v35 - 8);
  v150 = &v109 - v36;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14SignatureValueVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit14SignatureValueVSgGMR);
  v117 = *(v115 - 8);
  MEMORY[0x1EEE9AC00](v115);
  v114 = &v109 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v113 = &v109 - v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit14SignatureValueVSg_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit14SignatureValueVSg_GSgMR);
  MEMORY[0x1EEE9AC00](v40 - 8);
  v151 = &v109 - v41;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMR);
  v112 = *(v111 - 8);
  MEMORY[0x1EEE9AC00](v111);
  v110 = &v109 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43);
  v109 = &v109 - v44;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit5ColorVSg_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit5ColorVSg_GSgMR);
  MEMORY[0x1EEE9AC00](v45 - 8);
  v145 = &v109 - v46;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSSgGMd, &_s9Coherence10CRRegisterVySSSgGMR);
  v48 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v50 = &v109 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v51);
  v53 = &v109 - v52;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVySSSg_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVySSSg_GSgMR);
  MEMORY[0x1EEE9AC00](v54 - 8);
  v116 = &v109 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v56);
  v118 = &v109 - v57;
  CRRegister.projectedValue.getter();
  CRRegister.projectedValue.getter();
  CRRegister.actionUndoingDifference(from:)();
  v58 = *(v48 + 8);
  v58(v50, v47);
  v58(v53, v47);
  type metadata accessor for PDFAnnotationElement(0);
  CRRegister.projectedValue.getter();
  CRRegister.projectedValue.getter();
  CRRegister.actionUndoingDifference(from:)();
  v58(v50, v47);
  v58(v53, v47);
  v59 = v109;
  v60 = v111;
  CRRegister.projectedValue.getter();
  v61 = v110;
  CRRegister.projectedValue.getter();
  CRRegister.actionUndoingDifference(from:)();
  v62 = *(v112 + 8);
  v62(v61, v60);
  v62(v59, v60);
  v63 = v113;
  v64 = v115;
  CRRegister.projectedValue.getter();
  v65 = v114;
  CRRegister.projectedValue.getter();
  CRRegister.actionUndoingDifference(from:)();
  v66 = *(v117 + 8);
  v66(v65, v64);
  v66(v63, v64);
  v67 = v119;
  v68 = v121;
  CRRegister.projectedValue.getter();
  v69 = v120;
  CRRegister.projectedValue.getter();
  CRRegister.actionUndoingDifference(from:)();
  v70 = *(v122 + 8);
  v70(v69, v68);
  v70(v67, v68);
  v71 = v123;
  v72 = v125;
  CRRegister.projectedValue.getter();
  v73 = v124;
  CRRegister.projectedValue.getter();
  CRRegister.actionUndoingDifference(from:)();
  v74 = *(v126 + 8);
  v74(v73, v72);
  v74(v71, v72);
  v75 = v127;
  v76 = v129;
  CRRegister.projectedValue.getter();
  v77 = v128;
  CRRegister.projectedValue.getter();
  CRRegister.actionUndoingDifference(from:)();
  v78 = *(v131 + 8);
  v78(v77, v76);
  v78(v75, v76);
  v79 = v132;
  v80 = v134;
  CRRegister.projectedValue.getter();
  v81 = v133;
  CRRegister.projectedValue.getter();
  CRRegister.actionUndoingDifference(from:)();
  v82 = *(v135 + 8);
  v82(v81, v80);
  v82(v79, v80);
  v83 = v136;
  v84 = v138;
  CRRegister.projectedValue.getter();
  v85 = v137;
  CRRegister.projectedValue.getter();
  CRRegister.actionUndoingDifference(from:)();
  v86 = *(v139 + 8);
  v86(v85, v84);
  v86(v83, v84);
  v87 = v140;
  v88 = v142;
  CRRegister.projectedValue.getter();
  v89 = v116;
  v90 = v141;
  CRRegister.projectedValue.getter();
  v91 = v130;
  v92 = v118;
  CRRegister.actionUndoingDifference(from:)();
  v93 = *(v143 + 8);
  v93(v90, v88);
  v93(v87, v88);
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVySSSg_GMd, &_s9Coherence10CRRegisterV14MutatingActionVySSSg_GMR);
  v95 = *(*(v94 - 8) + 48);
  if (v95(v92, 1, v94) == 1 && v95(v89, 1, v94) == 1 && (v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit5ColorVSg_GMd, &_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit5ColorVSg_GMR), (*(*(v96 - 8) + 48))(v145, 1, v96) == 1) && (v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit14SignatureValueVSg_GMd, &_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit14SignatureValueVSg_GMR), (*(*(v97 - 8) + 48))(v151, 1, v97) == 1) && (v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVySi_GMd, &_s9Coherence10CRRegisterV14MutatingActionVySi_GMR), (*(*(v98 - 8) + 48))(v150, 1, v98) == 1) && (v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVy10Foundation4DateVSg_GMd, &_s9Coherence10CRRegisterV14MutatingActionVy10Foundation4DateVSg_GMR), (*(*(v99 - 8) + 48))(v149, 1, v99) == 1) && (v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit20PDFAnnotationElementV15AnnotationShapeV_GMd, &_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit20PDFAnnotationElementV15AnnotationShapeV_GMR), (*(*(v100 - 8) + 48))(v148, 1, v100) == 1) && (v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVySS_GMd, &_s9Coherence10CRRegisterV14MutatingActionVySS_GMR), (*(*(v101 - 8) + 48))(v147, 1, v101) == 1) && (v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit13PDFFieldFlagsV_GMd, &_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit13PDFFieldFlagsV_GMR), (*(*(v102 - 8) + 48))(v146, 1, v102) == 1) && (v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVyAA7WeakRefVy8PaperKit20PDFAnnotationElementVGSg_GMd, &_s9Coherence10CRRegisterV14MutatingActionVyAA7WeakRefVy8PaperKit20PDFAnnotationElementVGSg_GMR), (*(*(v103 - 8) + 48))(v91, 1, v103) == 1))
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v92, &_s9Coherence10CRRegisterV14MutatingActionVySSSg_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVySSSg_GSgMR);
    v104 = type metadata accessor for PDFAnnotationElement.MutatingAction(0);
    (*(*(v104 - 8) + 56))(v144, 1, 1, v104);
    v105 = v145;
  }

  else
  {
    v106 = v144;
    outlined init with copy of Date?(v92, v144, &_s9Coherence10CRRegisterV14MutatingActionVySSSg_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVySSSg_GSgMR);
    v107 = type metadata accessor for PDFAnnotationElement.MutatingAction(0);
    outlined init with copy of Date?(v89, v106 + v107[5], &_s9Coherence10CRRegisterV14MutatingActionVySSSg_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVySSSg_GSgMR);
    v105 = v145;
    outlined init with copy of Date?(v145, v106 + v107[6], &_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit5ColorVSg_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit5ColorVSg_GSgMR);
    outlined init with copy of Date?(v151, v106 + v107[7], &_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit14SignatureValueVSg_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit14SignatureValueVSg_GSgMR);
    outlined init with copy of Date?(v150, v106 + v107[8], &_s9Coherence10CRRegisterV14MutatingActionVySi_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVySi_GSgMR);
    outlined init with copy of Date?(v149, v106 + v107[9], &_s9Coherence10CRRegisterV14MutatingActionVy10Foundation4DateVSg_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVy10Foundation4DateVSg_GSgMR);
    outlined init with copy of Date?(v148, v106 + v107[10], &_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit20PDFAnnotationElementV15AnnotationShapeV_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit20PDFAnnotationElementV15AnnotationShapeV_GSgMR);
    outlined init with copy of Date?(v147, v106 + v107[11], &_s9Coherence10CRRegisterV14MutatingActionVySS_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVySS_GSgMR);
    outlined init with copy of Date?(v146, v106 + v107[12], &_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit13PDFFieldFlagsV_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit13PDFFieldFlagsV_GSgMR);
    outlined init with copy of Date?(v91, v106 + v107[13], &_s9Coherence10CRRegisterV14MutatingActionVyAA7WeakRefVy8PaperKit20PDFAnnotationElementVGSg_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVyAA7WeakRefVy8PaperKit20PDFAnnotationElementVGSg_GSgMR);
    outlined destroy of StocksKitCurrencyCache.Provider?(v92, &_s9Coherence10CRRegisterV14MutatingActionVySSSg_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVySSSg_GSgMR);
    (*(*(v107 - 1) + 56))(v106, 0, 1, v107);
  }

  outlined destroy of StocksKitCurrencyCache.Provider?(v91, &_s9Coherence10CRRegisterV14MutatingActionVyAA7WeakRefVy8PaperKit20PDFAnnotationElementVGSg_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVyAA7WeakRefVy8PaperKit20PDFAnnotationElementVGSg_GSgMR);
  outlined destroy of StocksKitCurrencyCache.Provider?(v146, &_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit13PDFFieldFlagsV_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit13PDFFieldFlagsV_GSgMR);
  outlined destroy of StocksKitCurrencyCache.Provider?(v147, &_s9Coherence10CRRegisterV14MutatingActionVySS_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVySS_GSgMR);
  outlined destroy of StocksKitCurrencyCache.Provider?(v148, &_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit20PDFAnnotationElementV15AnnotationShapeV_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit20PDFAnnotationElementV15AnnotationShapeV_GSgMR);
  outlined destroy of StocksKitCurrencyCache.Provider?(v149, &_s9Coherence10CRRegisterV14MutatingActionVy10Foundation4DateVSg_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVy10Foundation4DateVSg_GSgMR);
  outlined destroy of StocksKitCurrencyCache.Provider?(v150, &_s9Coherence10CRRegisterV14MutatingActionVySi_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVySi_GSgMR);
  outlined destroy of StocksKitCurrencyCache.Provider?(v151, &_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit14SignatureValueVSg_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit14SignatureValueVSg_GSgMR);
  outlined destroy of StocksKitCurrencyCache.Provider?(v105, &_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit5ColorVSg_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit5ColorVSg_GSgMR);
  return outlined destroy of StocksKitCurrencyCache.Provider?(v89, &_s9Coherence10CRRegisterV14MutatingActionVySSSg_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVySSSg_GSgMR);
}

uint64_t PDFAnnotationElement.apply(_:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA7WeakRefVy8PaperKit20PDFAnnotationElementVGSgGMd, &_s9Coherence10CRRegisterVyAA7WeakRefVy8PaperKit20PDFAnnotationElementVGSgGMR);
  v3 = *(v2 - 8);
  v90 = v2;
  v91 = v3;
  MEMORY[0x1EEE9AC00](v2);
  v89 = v74 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v108 = v74 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13PDFFieldFlagsVGMd, &_s9Coherence10CRRegisterVy8PaperKit13PDFFieldFlagsVGMR);
  v106 = *(v7 - 8);
  v107 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v105 = v74 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v104 = v74 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSGMd, &_s9Coherence10CRRegisterVySSGMR);
  v102 = *(v11 - 8);
  v103 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v101 = v74 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v100 = v74 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit20PDFAnnotationElementV15AnnotationShapeVGMd, &_s9Coherence10CRRegisterVy8PaperKit20PDFAnnotationElementV15AnnotationShapeVGMR);
  v98 = *(v15 - 8);
  v99 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v97 = v74 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v96 = v74 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy10Foundation4DateVSgGMd, &_s9Coherence10CRRegisterVy10Foundation4DateVSgGMR);
  v94 = *(v19 - 8);
  v95 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v93 = v74 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v92 = v74 - v22;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySiGMd, &_s9Coherence10CRRegisterVySiGMR);
  v87 = *(v88 - 8);
  MEMORY[0x1EEE9AC00](v88);
  v86 = v74 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v85 = v74 - v25;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14SignatureValueVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit14SignatureValueVSgGMR);
  v83 = *(v84 - 8);
  MEMORY[0x1EEE9AC00](v84);
  v82 = v74 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v81 = v74 - v28;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMR);
  v79 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80);
  v78 = v74 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v77 = v74 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSSgGMd, &_s9Coherence10CRRegisterVySSSgGMR);
  v76 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v34 = v74 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v37 = v74 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit20PDFAnnotationElementV14MutatingActionVSgMd, &_s8PaperKit20PDFAnnotationElementV14MutatingActionVSgMR);
  MEMORY[0x1EEE9AC00](v38 - 8);
  v40 = v74 - v39;
  v41 = type metadata accessor for PDFAnnotationElement.MutatingAction(0);
  v42 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v44 = v74 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Date?(a1, v40, &_s8PaperKit20PDFAnnotationElementV14MutatingActionVSgMd, &_s8PaperKit20PDFAnnotationElementV14MutatingActionVSgMR);
  v45 = v41;
  if ((*(v42 + 48))(v40, 1, v41) == 1)
  {
    return outlined destroy of StocksKitCurrencyCache.Provider?(v40, &_s8PaperKit20PDFAnnotationElementV14MutatingActionVSgMd, &_s8PaperKit20PDFAnnotationElementV14MutatingActionVSgMR);
  }

  v47 = v44;
  outlined init with take of PDFAnnotationElement.MutatingAction(v40, v44, type metadata accessor for PDFAnnotationElement.MutatingAction);
  CRRegister.projectedValue.getter();
  CRRegister.apply(_:)();
  v48 = v76;
  v75 = *(v76 + 16);
  v75(v34, v37, v32);
  CRRegister.projectedValue.setter();
  v76 = *(v48 + 8);
  (v76)(v37, v32);
  v74[1] = v45;
  v74[0] = type metadata accessor for PDFAnnotationElement(0);
  CRRegister.projectedValue.getter();
  CRRegister.apply(_:)();
  v75(v34, v37, v32);
  CRRegister.projectedValue.setter();
  (v76)(v37, v32);
  v49 = v77;
  v50 = v80;
  CRRegister.projectedValue.getter();
  v51 = v47;
  CRRegister.apply(_:)();
  v52 = v79;
  (*(v79 + 16))(v78, v49, v50);
  CRRegister.projectedValue.setter();
  (*(v52 + 8))(v49, v50);
  v53 = v81;
  v54 = v84;
  CRRegister.projectedValue.getter();
  CRRegister.apply(_:)();
  v55 = v83;
  (*(v83 + 16))(v82, v53, v54);
  CRRegister.projectedValue.setter();
  (*(v55 + 8))(v53, v54);
  v56 = v85;
  v57 = v88;
  CRRegister.projectedValue.getter();
  CRRegister.apply(_:)();
  v58 = v87;
  (*(v87 + 16))(v86, v56, v57);
  CRRegister.projectedValue.setter();
  (*(v58 + 8))(v56, v57);
  v59 = v92;
  v60 = v95;
  CRRegister.projectedValue.getter();
  CRRegister.apply(_:)();
  v61 = v94;
  (*(v94 + 16))(v93, v59, v60);
  CRRegister.projectedValue.setter();
  (*(v61 + 8))(v59, v60);
  v62 = v96;
  v63 = v99;
  CRRegister.projectedValue.getter();
  CRRegister.apply(_:)();
  v64 = v98;
  (*(v98 + 16))(v97, v62, v63);
  CRRegister.projectedValue.setter();
  (*(v64 + 8))(v62, v63);
  v65 = v100;
  v66 = v103;
  CRRegister.projectedValue.getter();
  CRRegister.apply(_:)();
  v67 = v102;
  (*(v102 + 16))(v101, v65, v66);
  CRRegister.projectedValue.setter();
  (*(v67 + 8))(v65, v66);
  v68 = v104;
  v69 = v107;
  CRRegister.projectedValue.getter();
  CRRegister.apply(_:)();
  v70 = v106;
  (*(v106 + 16))(v105, v68, v69);
  CRRegister.projectedValue.setter();
  (*(v70 + 8))(v68, v69);
  v71 = v108;
  v72 = v90;
  CRRegister.projectedValue.getter();
  CRRegister.apply(_:)();
  v73 = v91;
  (*(v91 + 16))(v89, v71, v72);
  CRRegister.projectedValue.setter();
  (*(v73 + 8))(v71, v72);
  return outlined destroy of PDFAnnotationElement.Partial(v51, type metadata accessor for PDFAnnotationElement.MutatingAction);
}

uint64_t PDFAnnotationElement.hasDelta(from:)(uint64_t a1)
{
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA7WeakRefVy8PaperKit20PDFAnnotationElementVGSgGMd, &_s9Coherence10CRRegisterVyAA7WeakRefVy8PaperKit20PDFAnnotationElementVGSgGMR);
  v91 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92);
  v90 = &v86 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v89 = &v86 - v5;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13PDFFieldFlagsVGMd, &_s9Coherence10CRRegisterVy8PaperKit13PDFFieldFlagsVGMR);
  v95 = *(v96 - 8);
  MEMORY[0x1EEE9AC00](v96);
  v94 = &v86 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v93 = &v86 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSGMd, &_s9Coherence10CRRegisterVySSGMR);
  v99 = *(v9 - 8);
  v100 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v98 = &v86 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v97 = &v86 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit20PDFAnnotationElementV15AnnotationShapeVGMd, &_s9Coherence10CRRegisterVy8PaperKit20PDFAnnotationElementV15AnnotationShapeVGMR);
  v103 = *(v13 - 8);
  v104 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v102 = &v86 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v101 = &v86 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy10Foundation4DateVSgGMd, &_s9Coherence10CRRegisterVy10Foundation4DateVSgGMR);
  v106 = *(v17 - 8);
  v107 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v105 = &v86 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v86 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySiGMd, &_s9Coherence10CRRegisterVySiGMR);
  v110 = *(v22 - 8);
  v111 = v22;
  MEMORY[0x1EEE9AC00](v22);
  v109 = &v86 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v108 = &v86 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14SignatureValueVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit14SignatureValueVSgGMR);
  v114 = *(v26 - 8);
  v115 = v26;
  MEMORY[0x1EEE9AC00](v26);
  v113 = &v86 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v112 = &v86 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMR);
  v116 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v86 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v86 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSSgGMd, &_s9Coherence10CRRegisterVySSSgGMR);
  v37 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v39 = &v86 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40);
  v42 = &v86 - v41;
  v118 = v1;
  CRRegister.projectedValue.getter();
  v117 = a1;
  CRRegister.projectedValue.getter();
  v43 = CRRegister.hasDelta(from:)();
  v44 = *(v37 + 8);
  v44(v39, v36);
  v44(v42, v36);
  if (v43 & 1) != 0 || (v87 = v21, v45 = type metadata accessor for PDFAnnotationElement(0), CRRegister.projectedValue.getter(), v88 = v45, CRRegister.projectedValue.getter(), v46 = CRRegister.hasDelta(from:)(), v44(v39, v36), v44(v42, v36), (v46) || (CRRegister.projectedValue.getter(), CRRegister.projectedValue.getter(), v47 = CRRegister.hasDelta(from:)(), v48 = *(v116 + 8), v48(v32, v30), v48(v35, v30), (v47) || (v49 = v112, v50 = v115, CRRegister.projectedValue.getter(), v51 = v113, CRRegister.projectedValue.getter(), v52 = CRRegister.hasDelta(from:)(), v53 = *(v114 + 8), v53(v51, v50), v53(v49, v50), (v52) || (v54 = v108, v55 = v111, CRRegister.projectedValue.getter(), v56 = v109, CRRegister.projectedValue.getter(), v57 = CRRegister.hasDelta(from:)(), v58 = *(v110 + 8), v58(v56, v55), v58(v54, v55), (v57) || (v59 = v87, v60 = v107, CRRegister.projectedValue.getter(), v61 = v105, CRRegister.projectedValue.getter(), v62 = CRRegister.hasDelta(from:)(), v63 = *(v106 + 8), v63(v61, v60), v63(v59, v60), (v62) || (v64 = v101, v65 = v104, CRRegister.projectedValue.getter(), v66 = v102, CRRegister.projectedValue.getter(), v67 = CRRegister.hasDelta(from:)(), v68 = *(v103 + 8), v68(v66, v65), v68(v64, v65), (v67) || (v69 = v97, v70 = v100, CRRegister.projectedValue.getter(), v71 = v98, CRRegister.projectedValue.getter(), v72 = CRRegister.hasDelta(from:)(), v73 = *(v99 + 8), v73(v71, v70), v73(v69, v70), (v72) || (v74 = v93, v75 = v96, CRRegister.projectedValue.getter(), v76 = v94, CRRegister.projectedValue.getter(), v77 = CRRegister.hasDelta(from:)(), v78 = *(v95 + 8), v78(v76, v75), v78(v74, v75), (v77) || (v79 = v89, v80 = v92, CRRegister.projectedValue.getter(), v81 = v90, CRRegister.projectedValue.getter(), v82 = CRRegister.hasDelta(from:)(), v83 = *(v91 + 8), v83(v81, v80), v83(v79, v80), (v82))
  {
    v84 = 1;
  }

  else
  {
    v84 = UnknownProperties.hasDelta(from:)();
  }

  return v84 & 1;
}

uint64_t PDFAnnotationElement.copy(renamingReferences:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for UnknownProperties();
  v125 = *(v5 - 8);
  v126 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v124 = v91 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA7WeakRefVy8PaperKit20PDFAnnotationElementVGSgGMd, &_s9Coherence10CRRegisterVyAA7WeakRefVy8PaperKit20PDFAnnotationElementVGSgGMR);
  v8 = *(v7 - 8);
  v122 = v7;
  v123 = v8;
  MEMORY[0x1EEE9AC00](v7);
  v121 = v91 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v120 = v91 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13PDFFieldFlagsVGMd, &_s9Coherence10CRRegisterVy8PaperKit13PDFFieldFlagsVGMR);
  v13 = *(v12 - 8);
  v118 = v12;
  v119 = v13;
  MEMORY[0x1EEE9AC00](v12);
  v117 = v91 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v116 = v91 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSGMd, &_s9Coherence10CRRegisterVySSGMR);
  v18 = *(v17 - 8);
  v114 = v17;
  v115 = v18;
  MEMORY[0x1EEE9AC00](v17);
  v113 = v91 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v112 = v91 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit20PDFAnnotationElementV15AnnotationShapeVGMd, &_s9Coherence10CRRegisterVy8PaperKit20PDFAnnotationElementV15AnnotationShapeVGMR);
  v23 = *(v22 - 8);
  v110 = v22;
  v111 = v23;
  MEMORY[0x1EEE9AC00](v22);
  v109 = v91 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v108 = v91 - v26;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy10Foundation4DateVSgGMd, &_s9Coherence10CRRegisterVy10Foundation4DateVSgGMR);
  v107 = *(v106 - 8);
  MEMORY[0x1EEE9AC00](v106);
  v105 = v91 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v104 = v91 - v29;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySiGMd, &_s9Coherence10CRRegisterVySiGMR);
  v103 = *(v102 - 8);
  MEMORY[0x1EEE9AC00](v102);
  v101 = v91 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v100 = v91 - v32;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14SignatureValueVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit14SignatureValueVSgGMR);
  v99 = *(v98 - 8);
  MEMORY[0x1EEE9AC00](v98);
  v97 = v91 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v96 = v91 - v35;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMR);
  v95 = *(v94 - 8);
  MEMORY[0x1EEE9AC00](v94);
  v93 = v91 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v92 = v91 - v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSSgGMd, &_s9Coherence10CRRegisterVySSSgGMR);
  v40 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v42 = v91 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43);
  v45 = v91 - v44;
  v127 = v2;
  v128 = a2;
  outlined init with copy of PDFAnnotationElement.Partial(v2, a2, type metadata accessor for PDFAnnotationElement);
  CRRegister.projectedValue.getter();
  CRRegister.copy(renamingReferences:)();
  v46 = *(v40 + 8);
  v46(v42, v39);
  v91[0] = *(v40 + 16);
  (v91[0])(v42, v45, v39);
  CRRegister.projectedValue.setter();
  v46(v45, v39);
  v47 = type metadata accessor for PDFAnnotationElement(0);
  CRRegister.projectedValue.getter();
  CRRegister.copy(renamingReferences:)();
  v46(v42, v39);
  (v91[0])(v42, v45, v39);
  CRRegister.projectedValue.setter();
  v46(v45, v39);
  v48 = v93;
  v49 = v94;
  CRRegister.projectedValue.getter();
  v50 = v92;
  v91[1] = a1;
  CRRegister.copy(renamingReferences:)();
  v51 = v95;
  v52 = *(v95 + 8);
  v52(v48, v49);
  (*(v51 + 16))(v48, v50, v49);
  v53 = v128;
  CRRegister.projectedValue.setter();
  v52(v50, v49);
  v54 = v97;
  v55 = v98;
  CRRegister.projectedValue.getter();
  v56 = v96;
  CRRegister.copy(renamingReferences:)();
  v57 = v99;
  v58 = *(v99 + 8);
  v58(v54, v55);
  (*(v57 + 16))(v54, v56, v55);
  CRRegister.projectedValue.setter();
  v58(v56, v55);
  v59 = v101;
  v60 = v102;
  CRRegister.projectedValue.getter();
  v61 = v100;
  CRRegister.copy(renamingReferences:)();
  v62 = v103;
  v63 = *(v103 + 8);
  v63(v59, v60);
  (*(v62 + 16))(v59, v61, v60);
  CRRegister.projectedValue.setter();
  v63(v61, v60);
  v64 = v105;
  v65 = v106;
  CRRegister.projectedValue.getter();
  v66 = v104;
  CRRegister.copy(renamingReferences:)();
  v67 = v107;
  v68 = *(v107 + 8);
  v68(v64, v65);
  (*(v67 + 16))(v64, v66, v65);
  CRRegister.projectedValue.setter();
  v68(v66, v65);
  v70 = v109;
  v69 = v110;
  CRRegister.projectedValue.getter();
  v71 = v108;
  CRRegister.copy(renamingReferences:)();
  v72 = v111;
  v73 = *(v111 + 8);
  v73(v70, v69);
  (*(v72 + 16))(v70, v71, v69);
  CRRegister.projectedValue.setter();
  v73(v71, v69);
  v75 = v113;
  v74 = v114;
  CRRegister.projectedValue.getter();
  v76 = v112;
  CRRegister.copy(renamingReferences:)();
  v77 = v115;
  v78 = *(v115 + 8);
  v78(v75, v74);
  (*(v77 + 16))(v75, v76, v74);
  CRRegister.projectedValue.setter();
  v78(v76, v74);
  v80 = v117;
  v79 = v118;
  CRRegister.projectedValue.getter();
  v81 = v116;
  CRRegister.copy(renamingReferences:)();
  v82 = v119;
  v83 = *(v119 + 8);
  v83(v80, v79);
  (*(v82 + 16))(v80, v81, v79);
  CRRegister.projectedValue.setter();
  v83(v81, v79);
  v85 = v121;
  v84 = v122;
  CRRegister.projectedValue.getter();
  v86 = v120;
  CRRegister.copy(renamingReferences:)();
  v87 = v123;
  v88 = *(v123 + 8);
  v88(v85, v84);
  (*(v87 + 16))(v85, v86, v84);
  CRRegister.projectedValue.setter();
  v88(v86, v84);
  v89 = v124;
  UnknownProperties.copy(renamingReferences:)();
  return (*(v125 + 40))(v53 + *(v47 + 56), v89, v126);
}

uint64_t PDFAnnotationElement.init(defaultState:)@<X0>(uint64_t a1@<X8>)
{
  v119 = a1;
  v72 = type metadata accessor for UnknownProperties();
  v71 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72);
  v75 = &v69 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA7WeakRefVy8PaperKit20PDFAnnotationElementVGSgGMd, &_s9Coherence10CRRegisterVyAA7WeakRefVy8PaperKit20PDFAnnotationElementVGSgGMR);
  v73 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v79 = &v69 - v2;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13PDFFieldFlagsVGMd, &_s9Coherence10CRRegisterVy8PaperKit13PDFFieldFlagsVGMR);
  v77 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v83 = &v69 - v3;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSGMd, &_s9Coherence10CRRegisterVySSGMR);
  v81 = *(v82 - 8);
  MEMORY[0x1EEE9AC00](v82);
  v87 = &v69 - v4;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit20PDFAnnotationElementV15AnnotationShapeVGMd, &_s9Coherence10CRRegisterVy8PaperKit20PDFAnnotationElementV15AnnotationShapeVGMR);
  v85 = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86);
  v91 = &v69 - v5;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy10Foundation4DateVSgGMd, &_s9Coherence10CRRegisterVy10Foundation4DateVSgGMR);
  v89 = *(v90 - 8);
  MEMORY[0x1EEE9AC00](v90);
  v95 = &v69 - v6;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySiGMd, &_s9Coherence10CRRegisterVySiGMR);
  v93 = *(v94 - 8);
  MEMORY[0x1EEE9AC00](v94);
  v99 = &v69 - v7;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14SignatureValueVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit14SignatureValueVSgGMR);
  v97 = *(v98 - 8);
  MEMORY[0x1EEE9AC00](v98);
  v103 = &v69 - v8;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMR);
  v101 = *(v102 - 8);
  MEMORY[0x1EEE9AC00](v102);
  v107 = &v69 - v9;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSSgGMd, &_s9Coherence10CRRegisterVySSSgGMR);
  v108 = *(v110 - 8);
  MEMORY[0x1EEE9AC00](v110);
  v109 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v112 = &v69 - v12;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit20PDFAnnotationElementVGSgMd, &_s9Coherence7WeakRefVy8PaperKit20PDFAnnotationElementVGSgMR);
  MEMORY[0x1EEE9AC00](v121);
  v118 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v117 = &v69 - v15;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x1EEE9AC00](v122);
  v114 = &v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v113 = &v69 - v18;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit14SignatureValueVSgMd, &_s8PaperKit14SignatureValueVSgMR);
  MEMORY[0x1EEE9AC00](v126);
  v111 = &v69 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v69 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v69 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v69 - v27;
  v123 = 0uLL;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  v30 = lazy protocol witness table accessor for type Date? and conformance <A> A?(&lazy protocol witness table cache variable for type String? and conformance <A> A?, &_sSSSgMd, &_sSSSgMR);
  v31 = v119;
  v115 = v29;
  v116 = v30;
  CRRegister.init(wrappedValue:)();
  v32 = type metadata accessor for PDFAnnotationElement(0);
  v33 = v32[5];
  v123 = 0uLL;
  v106 = v33;
  CRRegister.init(wrappedValue:)();
  v34 = v32[6];
  v35 = type metadata accessor for Color(0);
  (*(*(v35 - 8) + 56))(v28, 1, 1, v35);
  outlined init with copy of Date?(v28, v25, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
  v36 = lazy protocol witness table accessor for type Color? and conformance <A> A?();
  v100 = v34;
  v105 = v23;
  v104 = v36;
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v28, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
  v37 = v32[7];
  v38 = type metadata accessor for SignatureValue(0);
  (*(*(v38 - 8) + 56))(v22, 1, 1, v38);
  outlined init with copy of Date?(v22, v111, &_s8PaperKit14SignatureValueVSgMd, &_s8PaperKit14SignatureValueVSgMR);
  v39 = lazy protocol witness table accessor for type SignatureValue? and conformance <A> A?();
  v96 = v37;
  v111 = v39;
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v22, &_s8PaperKit14SignatureValueVSgMd, &_s8PaperKit14SignatureValueVSgMR);
  v40 = v32[8];
  *&v123 = 0;
  v92 = v40;
  CRRegister.init(wrappedValue:)();
  v41 = v32[9];
  v42 = type metadata accessor for Date();
  v43 = v113;
  (*(*(v42 - 8) + 56))(v113, 1, 1, v42);
  outlined init with copy of Date?(v43, v114, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v44 = lazy protocol witness table accessor for type Date? and conformance <A> A?(&lazy protocol witness table cache variable for type Date? and conformance <A> A?, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v88 = v41;
  v114 = v44;
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v43, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v45 = v32[10];
  v46 = lazy protocol witness table accessor for type PDFAnnotationElement.AnnotationShape and conformance PDFAnnotationElement.AnnotationShape();
  v123 = 0u;
  v124 = 0u;
  v125 = 0;
  v84 = v45;
  v113 = v46;
  CRRegister.init(wrappedValue:)();
  v47 = v32[11];
  *&v123 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(&v123 + 1) = v48;
  v80 = v47;
  CRRegister.init(wrappedValue:)();
  v49 = v32[12];
  *&v123 = 0;
  v50 = lazy protocol witness table accessor for type PDFFieldFlags and conformance PDFFieldFlags();
  v76 = v49;
  CRRegister.init(wrappedValue:)();
  v51 = v32[13];
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit20PDFAnnotationElementVGMd, &_s9Coherence7WeakRefVy8PaperKit20PDFAnnotationElementVGMR);
  v53 = v117;
  (*(*(v52 - 8) + 56))(v117, 1, 1, v52);
  outlined init with copy of Date?(v53, v118, &_s9Coherence7WeakRefVy8PaperKit20PDFAnnotationElementVGSgMd, &_s9Coherence7WeakRefVy8PaperKit20PDFAnnotationElementVGSgMR);
  v54 = lazy protocol witness table accessor for type WeakRef<PDFAnnotationElement>? and conformance <A> A?();
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v53, &_s9Coherence7WeakRefVy8PaperKit20PDFAnnotationElementVGSgMd, &_s9Coherence7WeakRefVy8PaperKit20PDFAnnotationElementVGSgMR);
  v55 = v32[14];
  UnknownProperties.init()();
  v56 = v112;
  v57 = v120;
  CRRegister.init(defaultState:)();
  if (v57)
  {
    return outlined destroy of PDFAnnotationElement.Partial(v31, type metadata accessor for PDFAnnotationElement);
  }

  v118 = v54;
  v120 = v50;
  v70 = v55;
  v117 = v51;
  v58 = v106;
  v59 = v107;
  v60 = *(v108 + 40);
  v60(v31, v56, v110);
  CRRegister.init(defaultState:)();
  v60(v31 + v58, v109, v110);
  CRRegister.init(defaultState:)();
  (*(v101 + 40))(v31 + v100, v59, v102);
  v61 = v103;
  CRRegister.init(defaultState:)();
  (*(v97 + 40))(v31 + v96, v61, v98);
  v62 = v99;
  CRRegister.init(defaultState:)();
  (*(v93 + 40))(v31 + v92, v62, v94);
  v63 = v95;
  CRRegister.init(defaultState:)();
  (*(v89 + 40))(v31 + v88, v63, v90);
  v64 = v91;
  CRRegister.init(defaultState:)();
  (*(v85 + 40))(v31 + v84, v64, v86);
  v65 = v87;
  CRRegister.init(defaultState:)();
  (*(v81 + 40))(v31 + v80, v65, v82);
  v66 = v83;
  CRRegister.init(defaultState:)();
  (*(v77 + 40))(v31 + v76, v66, v78);
  v67 = v79;
  CRRegister.init(defaultState:)();
  (*(v73 + 40))(&v117[v31], v67, v74);
  UnknownProperties.init(defaultState:)();
  return (*(v71 + 40))(v31 + v70, v75, v72);
}

uint64_t PDFAnnotationElement.isDefaultState.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA7WeakRefVy8PaperKit20PDFAnnotationElementVGSgGMd, &_s9Coherence10CRRegisterVyAA7WeakRefVy8PaperKit20PDFAnnotationElementVGSgGMR);
  v49 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v48 = &v47 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13PDFFieldFlagsVGMd, &_s9Coherence10CRRegisterVy8PaperKit13PDFFieldFlagsVGMR);
  v51 = *(v3 - 8);
  v52 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v50 = &v47 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSGMd, &_s9Coherence10CRRegisterVySSGMR);
  v54 = *(v5 - 8);
  v55 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v53 = &v47 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit20PDFAnnotationElementV15AnnotationShapeVGMd, &_s9Coherence10CRRegisterVy8PaperKit20PDFAnnotationElementV15AnnotationShapeVGMR);
  v57 = *(v7 - 8);
  v58 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v56 = &v47 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy10Foundation4DateVSgGMd, &_s9Coherence10CRRegisterVy10Foundation4DateVSgGMR);
  v60 = *(v9 - 8);
  v61 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v59 = &v47 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySiGMd, &_s9Coherence10CRRegisterVySiGMR);
  v63 = *(v11 - 8);
  v64 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v62 = &v47 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14SignatureValueVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit14SignatureValueVSgGMR);
  v65 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v47 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMR);
  v66 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v47 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSSgGMd, &_s9Coherence10CRRegisterVySSSgGMR);
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v47 - v21;
  type metadata accessor for PDFAnnotationElement(0);
  v67 = v0;
  if (UnknownProperties.isDefaultState.getter() & 1) != 0 && (v47 = v1, CRRegister.projectedValue.getter(), v23 = CRRegister.isDefaultState.getter(), v24 = *(v20 + 8), v24(v22, v19), (v23) && (CRRegister.projectedValue.getter(), v25 = CRRegister.isDefaultState.getter(), v24(v22, v19), (v25) && (CRRegister.projectedValue.getter(), v26 = CRRegister.isDefaultState.getter(), (*(v66 + 8))(v18, v16), (v26) && (CRRegister.projectedValue.getter(), v27 = CRRegister.isDefaultState.getter(), (*(v65 + 8))(v15, v13), (v27) && (v28 = v62, v29 = v64, CRRegister.projectedValue.getter(), v30 = CRRegister.isDefaultState.getter(), (*(v63 + 8))(v28, v29), (v30) && (v31 = v59, v32 = v61, CRRegister.projectedValue.getter(), v33 = CRRegister.isDefaultState.getter(), (*(v60 + 8))(v31, v32), (v33) && (v34 = v56, v35 = v58, CRRegister.projectedValue.getter(), v36 = CRRegister.isDefaultState.getter(), (*(v57 + 8))(v34, v35), (v36) && (v37 = v53, v38 = v55, CRRegister.projectedValue.getter(), v39 = CRRegister.isDefaultState.getter(), (*(v54 + 8))(v37, v38), (v39) && (v40 = v50, v41 = v52, CRRegister.projectedValue.getter(), v42 = CRRegister.isDefaultState.getter(), (*(v51 + 8))(v40, v41), (v42))
  {
    v43 = v47;
    v44 = v48;
    CRRegister.projectedValue.getter();
    v45 = CRRegister.isDefaultState.getter();
    (*(v49 + 8))(v44, v43);
  }

  else
  {
    v45 = 0;
  }

  return v45 & 1;
}

uint64_t PDFAnnotationElement.visitReferences(_:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA7WeakRefVy8PaperKit20PDFAnnotationElementVGSgGMd, &_s9Coherence10CRRegisterVyAA7WeakRefVy8PaperKit20PDFAnnotationElementVGSgGMR);
  v2 = *(v1 - 8);
  v66 = v1;
  v67 = v2;
  MEMORY[0x1EEE9AC00](v1);
  v65 = &v45 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13PDFFieldFlagsVGMd, &_s9Coherence10CRRegisterVy8PaperKit13PDFFieldFlagsVGMR);
  v5 = *(v4 - 8);
  v63 = v4;
  v64 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v62 = &v45 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSGMd, &_s9Coherence10CRRegisterVySSGMR);
  v8 = *(v7 - 8);
  v60 = v7;
  v61 = v8;
  MEMORY[0x1EEE9AC00](v7);
  v59 = &v45 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit20PDFAnnotationElementV15AnnotationShapeVGMd, &_s9Coherence10CRRegisterVy8PaperKit20PDFAnnotationElementV15AnnotationShapeVGMR);
  v11 = *(v10 - 8);
  v57 = v10;
  v58 = v11;
  MEMORY[0x1EEE9AC00](v10);
  v56 = &v45 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy10Foundation4DateVSgGMd, &_s9Coherence10CRRegisterVy10Foundation4DateVSgGMR);
  v14 = *(v13 - 8);
  v54 = v13;
  v55 = v14;
  MEMORY[0x1EEE9AC00](v13);
  v53 = &v45 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySiGMd, &_s9Coherence10CRRegisterVySiGMR);
  v17 = *(v16 - 8);
  v51 = v16;
  v52 = v17;
  MEMORY[0x1EEE9AC00](v16);
  v50 = &v45 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14SignatureValueVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit14SignatureValueVSgGMR);
  v20 = *(v19 - 8);
  v48 = v19;
  v49 = v20;
  MEMORY[0x1EEE9AC00](v19);
  v47 = &v45 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMR);
  v46 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v45 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSSgGMd, &_s9Coherence10CRRegisterVySSSgGMR);
  v26 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v45 - v27;
  CRRegister.projectedValue.getter();
  CRRegister.visitReferences(_:)();
  v29 = *(v26 + 8);
  v29(v28, v25);
  type metadata accessor for PDFAnnotationElement(0);
  CRRegister.projectedValue.getter();
  CRRegister.visitReferences(_:)();
  v29(v28, v25);
  CRRegister.projectedValue.getter();
  CRRegister.visitReferences(_:)();
  (*(v46 + 8))(v24, v22);
  v31 = v47;
  v30 = v48;
  CRRegister.projectedValue.getter();
  CRRegister.visitReferences(_:)();
  (*(v49 + 8))(v31, v30);
  v33 = v50;
  v32 = v51;
  CRRegister.projectedValue.getter();
  CRRegister.visitReferences(_:)();
  (*(v52 + 8))(v33, v32);
  v35 = v53;
  v34 = v54;
  CRRegister.projectedValue.getter();
  CRRegister.visitReferences(_:)();
  (*(v55 + 8))(v35, v34);
  v37 = v56;
  v36 = v57;
  CRRegister.projectedValue.getter();
  CRRegister.visitReferences(_:)();
  (*(v58 + 8))(v37, v36);
  v39 = v59;
  v38 = v60;
  CRRegister.projectedValue.getter();
  CRRegister.visitReferences(_:)();
  (*(v61 + 8))(v39, v38);
  v41 = v62;
  v40 = v63;
  CRRegister.projectedValue.getter();
  CRRegister.visitReferences(_:)();
  (*(v64 + 8))(v41, v40);
  v43 = v65;
  v42 = v66;
  CRRegister.projectedValue.getter();
  CRRegister.visitReferences(_:)();
  (*(v67 + 8))(v43, v42);
  return UnknownProperties.visitReferences(_:)();
}

uint64_t PDFAnnotationElement.newRefs(from:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA7WeakRefVy8PaperKit20PDFAnnotationElementVGSgGMd, &_s9Coherence10CRRegisterVyAA7WeakRefVy8PaperKit20PDFAnnotationElementVGSgGMR);
  v3 = *(v2 - 8);
  v118 = v2;
  v119 = v3;
  MEMORY[0x1EEE9AC00](v2);
  v117 = &v88 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v116 = &v88 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13PDFFieldFlagsVGMd, &_s9Coherence10CRRegisterVy8PaperKit13PDFFieldFlagsVGMR);
  v8 = *(v7 - 8);
  v114 = v7;
  v115 = v8;
  MEMORY[0x1EEE9AC00](v7);
  v113 = &v88 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v112 = &v88 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSGMd, &_s9Coherence10CRRegisterVySSGMR);
  v13 = *(v12 - 8);
  v110 = v12;
  v111 = v13;
  MEMORY[0x1EEE9AC00](v12);
  v109 = &v88 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v108 = &v88 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit20PDFAnnotationElementV15AnnotationShapeVGMd, &_s9Coherence10CRRegisterVy8PaperKit20PDFAnnotationElementV15AnnotationShapeVGMR);
  v18 = *(v17 - 8);
  v106 = v17;
  v107 = v18;
  MEMORY[0x1EEE9AC00](v17);
  v105 = &v88 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v104 = &v88 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy10Foundation4DateVSgGMd, &_s9Coherence10CRRegisterVy10Foundation4DateVSgGMR);
  v23 = *(v22 - 8);
  v102 = v22;
  v103 = v23;
  MEMORY[0x1EEE9AC00](v22);
  v101 = &v88 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v100 = &v88 - v26;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySiGMd, &_s9Coherence10CRRegisterVySiGMR);
  v99 = *(v98 - 8);
  MEMORY[0x1EEE9AC00](v98);
  v97 = &v88 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v96 = &v88 - v29;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14SignatureValueVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit14SignatureValueVSgGMR);
  v95 = *(v94 - 8);
  MEMORY[0x1EEE9AC00](v94);
  v93 = &v88 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v92 = &v88 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMR);
  v91 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v90 = &v88 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v89 = &v88 - v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSSgGMd, &_s9Coherence10CRRegisterVySSSgGMR);
  v38 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v40 = &v88 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v41);
  v43 = &v88 - v42;
  v120 = MEMORY[0x1E69E7CD0];
  v88 = v1;
  CRRegister.projectedValue.getter();
  CRRegister.projectedValue.getter();
  v44 = CRRegister.newRefs(from:)();
  v45 = *(v38 + 8);
  v45(v40, v37);
  v45(v43, v37);
  specialized Set.formUnion<A>(_:)(v44);
  type metadata accessor for PDFAnnotationElement(0);
  CRRegister.projectedValue.getter();
  CRRegister.projectedValue.getter();
  v46 = CRRegister.newRefs(from:)();
  v45(v40, v37);
  v45(v43, v37);
  specialized Set.formUnion<A>(_:)(v46);
  v47 = v89;
  CRRegister.projectedValue.getter();
  v48 = v90;
  CRRegister.projectedValue.getter();
  v49 = CRRegister.newRefs(from:)();
  v50 = *(v91 + 8);
  v50(v48, v33);
  v50(v47, v33);
  specialized Set.formUnion<A>(_:)(v49);
  v51 = v92;
  v52 = v94;
  CRRegister.projectedValue.getter();
  v53 = v93;
  CRRegister.projectedValue.getter();
  v54 = CRRegister.newRefs(from:)();
  v55 = *(v95 + 8);
  v55(v53, v52);
  v55(v51, v52);
  specialized Set.formUnion<A>(_:)(v54);
  v56 = v96;
  v57 = v98;
  CRRegister.projectedValue.getter();
  v58 = v97;
  CRRegister.projectedValue.getter();
  v59 = CRRegister.newRefs(from:)();
  v60 = *(v99 + 8);
  v60(v58, v57);
  v60(v56, v57);
  specialized Set.formUnion<A>(_:)(v59);
  v61 = v100;
  v62 = v102;
  CRRegister.projectedValue.getter();
  v63 = v101;
  CRRegister.projectedValue.getter();
  v64 = CRRegister.newRefs(from:)();
  v65 = *(v103 + 8);
  v65(v63, v62);
  v65(v61, v62);
  specialized Set.formUnion<A>(_:)(v64);
  v66 = v104;
  v67 = v106;
  CRRegister.projectedValue.getter();
  v68 = v105;
  CRRegister.projectedValue.getter();
  v69 = CRRegister.newRefs(from:)();
  v70 = *(v107 + 8);
  v70(v68, v67);
  v70(v66, v67);
  specialized Set.formUnion<A>(_:)(v69);
  v71 = v108;
  v72 = v110;
  CRRegister.projectedValue.getter();
  v73 = v109;
  CRRegister.projectedValue.getter();
  v74 = CRRegister.newRefs(from:)();
  v75 = *(v111 + 8);
  v75(v73, v72);
  v75(v71, v72);
  specialized Set.formUnion<A>(_:)(v74);
  v76 = v112;
  v77 = v114;
  CRRegister.projectedValue.getter();
  v78 = v113;
  CRRegister.projectedValue.getter();
  v79 = CRRegister.newRefs(from:)();
  v80 = *(v115 + 8);
  v80(v78, v77);
  v80(v76, v77);
  specialized Set.formUnion<A>(_:)(v79);
  v81 = v116;
  v82 = v118;
  CRRegister.projectedValue.getter();
  v83 = v117;
  CRRegister.projectedValue.getter();
  v84 = CRRegister.newRefs(from:)();
  v85 = *(v119 + 8);
  v85(v83, v82);
  v85(v81, v82);
  specialized Set.formUnion<A>(_:)(v84);
  v86 = UnknownProperties.newRefs(from:)();
  specialized Set.formUnion<A>(_:)(v86);
  return v120;
}

Swift::Bool __swiftcall PDFAnnotationElement.needToFinalizeTimestamps()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA7WeakRefVy8PaperKit20PDFAnnotationElementVGSgGMd, &_s9Coherence10CRRegisterVyAA7WeakRefVy8PaperKit20PDFAnnotationElementVGSgGMR);
  v52 = *(v1 - 8);
  v53 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v51 = &v50 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13PDFFieldFlagsVGMd, &_s9Coherence10CRRegisterVy8PaperKit13PDFFieldFlagsVGMR);
  v55 = *(v3 - 8);
  v56 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v54 = &v50 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSGMd, &_s9Coherence10CRRegisterVySSGMR);
  v58 = *(v5 - 8);
  v59 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v57 = &v50 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit20PDFAnnotationElementV15AnnotationShapeVGMd, &_s9Coherence10CRRegisterVy8PaperKit20PDFAnnotationElementV15AnnotationShapeVGMR);
  v61 = *(v7 - 8);
  v62 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v60 = &v50 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy10Foundation4DateVSgGMd, &_s9Coherence10CRRegisterVy10Foundation4DateVSgGMR);
  v64 = *(v9 - 8);
  v65 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v63 = &v50 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySiGMd, &_s9Coherence10CRRegisterVySiGMR);
  v67 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v66 = &v50 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14SignatureValueVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit14SignatureValueVSgGMR);
  v68 = *(v13 - 8);
  v69 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v50 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMR);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v50 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSSgGMd, &_s9Coherence10CRRegisterVySSSgGMR);
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v50 - v22;
  v70 = v0;
  CRRegister.projectedValue.getter();
  v24 = CRRegister.needToFinalizeTimestamps()();
  v25 = *(v21 + 8);
  v25(v23, v20);
  v48 = v24 || (v50 = v11, type metadata accessor for PDFAnnotationElement(0), CRRegister.projectedValue.getter(), v26 = CRRegister.needToFinalizeTimestamps()(), v25(v23, v20), v26) || (CRRegister.projectedValue.getter(), v27 = CRRegister.needToFinalizeTimestamps()(), (*(v17 + 8))(v19, v16), v27) || (v28 = v69, CRRegister.projectedValue.getter(), v29 = CRRegister.needToFinalizeTimestamps()(), (*(v68 + 8))(v15, v28), v29) || (v30 = v66, v31 = v50, CRRegister.projectedValue.getter(), v32 = CRRegister.needToFinalizeTimestamps()(), (*(v67 + 8))(v30, v31), v32) || (v33 = v63, v34 = v65, CRRegister.projectedValue.getter(), v35 = CRRegister.needToFinalizeTimestamps()(), (*(v64 + 8))(v33, v34), v35) || (v36 = v60, v37 = v62, CRRegister.projectedValue.getter(), v38 = CRRegister.needToFinalizeTimestamps()(), (*(v61 + 8))(v36, v37), v38) || (v39 = v57, v40 = v59, CRRegister.projectedValue.getter(), v41 = CRRegister.needToFinalizeTimestamps()(), (*(v58 + 8))(v39, v40), v41) || (v42 = v54, v43 = v56, CRRegister.projectedValue.getter(), v44 = CRRegister.needToFinalizeTimestamps()(), (*(v55 + 8))(v42, v43), v44) || (v45 = v51, v46 = v53, CRRegister.projectedValue.getter(), v47 = CRRegister.needToFinalizeTimestamps()(), (*(v52 + 8))(v45, v46), v47) || UnknownProperties.needToFinalizeTimestamps()();
  return v48;
}

uint64_t PDFAnnotationElement.finalizeTimestamps(_:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA7WeakRefVy8PaperKit20PDFAnnotationElementVGSgGMd, &_s9Coherence10CRRegisterVyAA7WeakRefVy8PaperKit20PDFAnnotationElementVGSgGMR);
  v3 = *(v2 - 8);
  v101 = v2;
  v102 = v3;
  MEMORY[0x1EEE9AC00](v2);
  v100 = v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v99 = v69 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13PDFFieldFlagsVGMd, &_s9Coherence10CRRegisterVy8PaperKit13PDFFieldFlagsVGMR);
  v8 = *(v7 - 8);
  v97 = v7;
  v98 = v8;
  MEMORY[0x1EEE9AC00](v7);
  v96 = v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v95 = v69 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSGMd, &_s9Coherence10CRRegisterVySSGMR);
  v13 = *(v12 - 8);
  v93 = v12;
  v94 = v13;
  MEMORY[0x1EEE9AC00](v12);
  v92 = v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v91 = v69 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit20PDFAnnotationElementV15AnnotationShapeVGMd, &_s9Coherence10CRRegisterVy8PaperKit20PDFAnnotationElementV15AnnotationShapeVGMR);
  v18 = *(v17 - 8);
  v89 = v17;
  v90 = v18;
  MEMORY[0x1EEE9AC00](v17);
  v88 = v69 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v87 = v69 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy10Foundation4DateVSgGMd, &_s9Coherence10CRRegisterVy10Foundation4DateVSgGMR);
  v23 = *(v22 - 8);
  v85 = v22;
  v86 = v23;
  MEMORY[0x1EEE9AC00](v22);
  v84 = v69 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v83 = v69 - v26;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySiGMd, &_s9Coherence10CRRegisterVySiGMR);
  v82 = *(v81 - 8);
  MEMORY[0x1EEE9AC00](v81);
  v80 = v69 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v79 = v69 - v29;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14SignatureValueVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit14SignatureValueVSgGMR);
  v78 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77);
  v76 = v69 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v75 = v69 - v32;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMR);
  v74 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73);
  v72 = v69 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v71 = v69 - v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSSgGMd, &_s9Coherence10CRRegisterVySSSgGMR);
  v37 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v39 = v69 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40);
  v42 = v69 - v41;
  CRRegister.projectedValue.getter();
  CRRegister.finalizeTimestamps(_:)();
  v70 = *(v37 + 16);
  v70(v39, v42, v36);
  CRRegister.projectedValue.setter();
  v43 = *(v37 + 8);
  v43(v42, v36);
  v69[1] = type metadata accessor for PDFAnnotationElement(0);
  CRRegister.projectedValue.getter();
  CRRegister.finalizeTimestamps(_:)();
  v70(v39, v42, v36);
  CRRegister.projectedValue.setter();
  v43(v42, v36);
  v44 = v71;
  v45 = v73;
  CRRegister.projectedValue.getter();
  CRRegister.finalizeTimestamps(_:)();
  v46 = v74;
  (*(v74 + 16))(v72, v44, v45);
  CRRegister.projectedValue.setter();
  (*(v46 + 8))(v44, v45);
  v47 = v75;
  v48 = v77;
  CRRegister.projectedValue.getter();
  CRRegister.finalizeTimestamps(_:)();
  v49 = v78;
  (*(v78 + 16))(v76, v47, v48);
  CRRegister.projectedValue.setter();
  (*(v49 + 8))(v47, v48);
  v50 = v79;
  v51 = v81;
  CRRegister.projectedValue.getter();
  CRRegister.finalizeTimestamps(_:)();
  v52 = v82;
  (*(v82 + 16))(v80, v50, v51);
  CRRegister.projectedValue.setter();
  (*(v52 + 8))(v50, v51);
  v53 = v83;
  v54 = v85;
  CRRegister.projectedValue.getter();
  CRRegister.finalizeTimestamps(_:)();
  v55 = v86;
  (*(v86 + 16))(v84, v53, v54);
  CRRegister.projectedValue.setter();
  (*(v55 + 8))(v53, v54);
  v56 = v87;
  v57 = v89;
  CRRegister.projectedValue.getter();
  CRRegister.finalizeTimestamps(_:)();
  v58 = v90;
  (*(v90 + 16))(v88, v56, v57);
  CRRegister.projectedValue.setter();
  (*(v58 + 8))(v56, v57);
  v59 = v91;
  v60 = v93;
  CRRegister.projectedValue.getter();
  CRRegister.finalizeTimestamps(_:)();
  v61 = v94;
  (*(v94 + 16))(v92, v59, v60);
  CRRegister.projectedValue.setter();
  (*(v61 + 8))(v59, v60);
  v62 = v95;
  v63 = v97;
  CRRegister.projectedValue.getter();
  CRRegister.finalizeTimestamps(_:)();
  v64 = v98;
  (*(v98 + 16))(v96, v62, v63);
  CRRegister.projectedValue.setter();
  (*(v64 + 8))(v62, v63);
  v65 = v99;
  v66 = v101;
  CRRegister.projectedValue.getter();
  CRRegister.finalizeTimestamps(_:)();
  v67 = v102;
  (*(v102 + 16))(v100, v65, v66);
  CRRegister.projectedValue.setter();
  (*(v67 + 8))(v65, v66);
  return MEMORY[0x1DA6CBA30](a1);
}

uint64_t PDFAnnotationElement.observableDifference(from:with:)@<X0>(uint64_t a2@<X8>)
{
  v144 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA7WeakRefVy8PaperKit20PDFAnnotationElementVGSgGMd, &_s9Coherence10CRRegisterVyAA7WeakRefVy8PaperKit20PDFAnnotationElementVGSgGMR);
  v4 = *(v3 - 8);
  v142 = v3;
  v143 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v141 = &v108 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v140 = &v108 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefV20ObservableDifferenceOy8PaperKit20PDFAnnotationElementV_GSgMd, &_s9Coherence7WeakRefV20ObservableDifferenceOy8PaperKit20PDFAnnotationElementV_GSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v127 = &v108 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13PDFFieldFlagsVGMd, &_s9Coherence10CRRegisterVy8PaperKit13PDFFieldFlagsVGMR);
  v11 = *(v10 - 8);
  v138 = v10;
  v139 = v11;
  MEMORY[0x1EEE9AC00](v10);
  v137 = &v108 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v136 = &v108 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSGMd, &_s9Coherence10CRRegisterVySSGMR);
  v16 = *(v15 - 8);
  v134 = v15;
  v135 = v16;
  MEMORY[0x1EEE9AC00](v15);
  v133 = &v108 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v132 = &v108 - v19;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit20PDFAnnotationElementV15AnnotationShapeVGMd, &_s9Coherence10CRRegisterVy8PaperKit20PDFAnnotationElementV15AnnotationShapeVGMR);
  v131 = *(v130 - 8);
  MEMORY[0x1EEE9AC00](v130);
  v129 = &v108 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v128 = &v108 - v22;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy10Foundation4DateVSgGMd, &_s9Coherence10CRRegisterVy10Foundation4DateVSgGMR);
  v126 = *(v125 - 8);
  MEMORY[0x1EEE9AC00](v125);
  v124 = &v108 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v123 = &v108 - v25;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySiGMd, &_s9Coherence10CRRegisterVySiGMR);
  v122 = *(v121 - 8);
  MEMORY[0x1EEE9AC00](v121);
  v120 = &v108 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v118 = &v108 - v28;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14SignatureValueVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit14SignatureValueVSgGMR);
  v117 = *(v116 - 8);
  MEMORY[0x1EEE9AC00](v116);
  v115 = &v108 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v114 = &v108 - v31;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMR);
  v113 = *(v112 - 8);
  MEMORY[0x1EEE9AC00](v112);
  v111 = &v108 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v110 = &v108 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSSgGMd, &_s9Coherence10CRRegisterVySSSgGMR);
  v36 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v38 = &v108 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v41 = &v108 - v40;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence27CRValueObservableDifferenceOSgMd, &_s9Coherence27CRValueObservableDifferenceOSgMR);
  MEMORY[0x1EEE9AC00](v42 - 8);
  v149 = &v108 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v44);
  v150 = &v108 - v45;
  MEMORY[0x1EEE9AC00](v46);
  v147 = &v108 - v47;
  MEMORY[0x1EEE9AC00](v48);
  v146 = &v108 - v49;
  MEMORY[0x1EEE9AC00](v50);
  v151 = &v108 - v51;
  MEMORY[0x1EEE9AC00](v52);
  v148 = &v108 - v53;
  MEMORY[0x1EEE9AC00](v54);
  v152 = &v108 - v55;
  MEMORY[0x1EEE9AC00](v56);
  v145 = &v108 - v57;
  MEMORY[0x1EEE9AC00](v58);
  v119 = &v108 - v59;
  v109 = v2;
  CRRegister.projectedValue.getter();
  CRRegister.projectedValue.getter();
  CRRegister.observableDifference(from:with:)();
  v60 = *(v36 + 8);
  v60(v38, v35);
  v60(v41, v35);
  type metadata accessor for PDFAnnotationElement(0);
  CRRegister.projectedValue.getter();
  CRRegister.projectedValue.getter();
  CRRegister.observableDifference(from:with:)();
  v60(v38, v35);
  v60(v41, v35);
  v61 = v110;
  v62 = v112;
  CRRegister.projectedValue.getter();
  v63 = v111;
  CRRegister.projectedValue.getter();
  CRRegister.observableDifference(from:with:)();
  v64 = *(v113 + 8);
  v64(v63, v62);
  v64(v61, v62);
  v65 = v114;
  v66 = v116;
  CRRegister.projectedValue.getter();
  v67 = v115;
  CRRegister.projectedValue.getter();
  CRRegister.observableDifference(from:with:)();
  v68 = *(v117 + 8);
  v68(v67, v66);
  v68(v65, v66);
  v69 = v118;
  v70 = v121;
  CRRegister.projectedValue.getter();
  v71 = v120;
  CRRegister.projectedValue.getter();
  CRRegister.observableDifference(from:with:)();
  v72 = *(v122 + 8);
  v72(v71, v70);
  v72(v69, v70);
  v73 = v123;
  v74 = v125;
  CRRegister.projectedValue.getter();
  v75 = v124;
  CRRegister.projectedValue.getter();
  CRRegister.observableDifference(from:with:)();
  v76 = *(v126 + 8);
  v76(v75, v74);
  v76(v73, v74);
  v77 = v128;
  v78 = v130;
  CRRegister.projectedValue.getter();
  v79 = v129;
  CRRegister.projectedValue.getter();
  CRRegister.observableDifference(from:with:)();
  v80 = *(v131 + 8);
  v80(v79, v78);
  v80(v77, v78);
  v81 = v132;
  v82 = v134;
  CRRegister.projectedValue.getter();
  v83 = v133;
  CRRegister.projectedValue.getter();
  CRRegister.observableDifference(from:with:)();
  v84 = *(v135 + 8);
  v84(v83, v82);
  v84(v81, v82);
  v85 = v136;
  v86 = v138;
  CRRegister.projectedValue.getter();
  v87 = v137;
  CRRegister.projectedValue.getter();
  CRRegister.observableDifference(from:with:)();
  v88 = *(v139 + 8);
  v88(v87, v86);
  v88(v85, v86);
  v89 = v140;
  v90 = v142;
  CRRegister.projectedValue.getter();
  v91 = v145;
  v92 = v141;
  CRRegister.projectedValue.getter();
  v93 = v127;
  v94 = v119;
  CRRegister.observableDifference(from:with:)();
  v95 = *(v143 + 8);
  v96 = v92;
  v97 = v147;
  v95(v96, v90);
  v98 = v89;
  v99 = v146;
  v95(v98, v90);
  v100 = type metadata accessor for CRValueObservableDifference();
  v101 = *(*(v100 - 8) + 48);
  if (v101(v94, 1, v100) == 1 && v101(v91, 1, v100) == 1 && v101(v152, 1, v100) == 1 && v101(v148, 1, v100) == 1 && v101(v151, 1, v100) == 1 && v101(v99, 1, v100) == 1 && v101(v97, 1, v100) == 1 && v101(v150, 1, v100) == 1 && v101(v149, 1, v100) == 1 && (v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefV20ObservableDifferenceOy8PaperKit20PDFAnnotationElementV_GMd, &_s9Coherence7WeakRefV20ObservableDifferenceOy8PaperKit20PDFAnnotationElementV_GMR), (*(*(v102 - 8) + 48))(v93, 1, v102) == 1))
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v94, &_s9Coherence27CRValueObservableDifferenceOSgMd, &_s9Coherence27CRValueObservableDifferenceOSgMR);
    v103 = type metadata accessor for PDFAnnotationElement.ObservableDifference(0);
    (*(*(v103 - 8) + 56))(v144, 1, 1, v103);
    v104 = v148;
  }

  else
  {
    v105 = v144;
    outlined init with copy of Date?(v94, v144, &_s9Coherence27CRValueObservableDifferenceOSgMd, &_s9Coherence27CRValueObservableDifferenceOSgMR);
    v106 = type metadata accessor for PDFAnnotationElement.ObservableDifference(0);
    outlined init with copy of Date?(v91, v105 + v106[5], &_s9Coherence27CRValueObservableDifferenceOSgMd, &_s9Coherence27CRValueObservableDifferenceOSgMR);
    outlined init with copy of Date?(v152, v105 + v106[6], &_s9Coherence27CRValueObservableDifferenceOSgMd, &_s9Coherence27CRValueObservableDifferenceOSgMR);
    v104 = v148;
    outlined init with copy of Date?(v148, v105 + v106[7], &_s9Coherence27CRValueObservableDifferenceOSgMd, &_s9Coherence27CRValueObservableDifferenceOSgMR);
    outlined init with copy of Date?(v151, v105 + v106[8], &_s9Coherence27CRValueObservableDifferenceOSgMd, &_s9Coherence27CRValueObservableDifferenceOSgMR);
    outlined init with copy of Date?(v99, v105 + v106[9], &_s9Coherence27CRValueObservableDifferenceOSgMd, &_s9Coherence27CRValueObservableDifferenceOSgMR);
    outlined init with copy of Date?(v97, v105 + v106[10], &_s9Coherence27CRValueObservableDifferenceOSgMd, &_s9Coherence27CRValueObservableDifferenceOSgMR);
    outlined init with copy of Date?(v150, v105 + v106[11], &_s9Coherence27CRValueObservableDifferenceOSgMd, &_s9Coherence27CRValueObservableDifferenceOSgMR);
    outlined init with copy of Date?(v149, v105 + v106[12], &_s9Coherence27CRValueObservableDifferenceOSgMd, &_s9Coherence27CRValueObservableDifferenceOSgMR);
    outlined init with copy of Date?(v93, v105 + v106[13], &_s9Coherence7WeakRefV20ObservableDifferenceOy8PaperKit20PDFAnnotationElementV_GSgMd, &_s9Coherence7WeakRefV20ObservableDifferenceOy8PaperKit20PDFAnnotationElementV_GSgMR);
    outlined destroy of StocksKitCurrencyCache.Provider?(v94, &_s9Coherence27CRValueObservableDifferenceOSgMd, &_s9Coherence27CRValueObservableDifferenceOSgMR);
    (*(*(v106 - 1) + 56))(v105, 0, 1, v106);
  }

  outlined destroy of StocksKitCurrencyCache.Provider?(v93, &_s9Coherence7WeakRefV20ObservableDifferenceOy8PaperKit20PDFAnnotationElementV_GSgMd, &_s9Coherence7WeakRefV20ObservableDifferenceOy8PaperKit20PDFAnnotationElementV_GSgMR);
  outlined destroy of StocksKitCurrencyCache.Provider?(v149, &_s9Coherence27CRValueObservableDifferenceOSgMd, &_s9Coherence27CRValueObservableDifferenceOSgMR);
  outlined destroy of StocksKitCurrencyCache.Provider?(v150, &_s9Coherence27CRValueObservableDifferenceOSgMd, &_s9Coherence27CRValueObservableDifferenceOSgMR);
  outlined destroy of StocksKitCurrencyCache.Provider?(v97, &_s9Coherence27CRValueObservableDifferenceOSgMd, &_s9Coherence27CRValueObservableDifferenceOSgMR);
  outlined destroy of StocksKitCurrencyCache.Provider?(v99, &_s9Coherence27CRValueObservableDifferenceOSgMd, &_s9Coherence27CRValueObservableDifferenceOSgMR);
  outlined destroy of StocksKitCurrencyCache.Provider?(v151, &_s9Coherence27CRValueObservableDifferenceOSgMd, &_s9Coherence27CRValueObservableDifferenceOSgMR);
  outlined destroy of StocksKitCurrencyCache.Provider?(v104, &_s9Coherence27CRValueObservableDifferenceOSgMd, &_s9Coherence27CRValueObservableDifferenceOSgMR);
  outlined destroy of StocksKitCurrencyCache.Provider?(v152, &_s9Coherence27CRValueObservableDifferenceOSgMd, &_s9Coherence27CRValueObservableDifferenceOSgMR);
  return outlined destroy of StocksKitCurrencyCache.Provider?(v91, &_s9Coherence27CRValueObservableDifferenceOSgMd, &_s9Coherence27CRValueObservableDifferenceOSgMR);
}

double PDFAnnotationElement.encode(to:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA7WeakRefVy8PaperKit20PDFAnnotationElementVGSgGMd, &_s9Coherence10CRRegisterVyAA7WeakRefVy8PaperKit20PDFAnnotationElementVGSgGMR);
  v50 = *(v0 - 8);
  v51 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v49 = &v43 - v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13PDFFieldFlagsVGMd, &_s9Coherence10CRRegisterVy8PaperKit13PDFFieldFlagsVGMR);
  v53 = *(v2 - 8);
  v54 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v52 = &v43 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSGMd, &_s9Coherence10CRRegisterVySSGMR);
  v56 = *(v4 - 8);
  v57 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v55 = &v43 - v5;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit20PDFAnnotationElementV15AnnotationShapeVGMd, &_s9Coherence10CRRegisterVy8PaperKit20PDFAnnotationElementV15AnnotationShapeVGMR);
  v60 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v59 = &v43 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy10Foundation4DateVSgGMd, &_s9Coherence10CRRegisterVy10Foundation4DateVSgGMR);
  v62 = *(v7 - 8);
  v63 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v61 = &v43 - v8;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySiGMd, &_s9Coherence10CRRegisterVySiGMR);
  v66 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v65 = &v43 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14SignatureValueVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit14SignatureValueVSgGMR);
  v67 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v43 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMR);
  v68 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v43 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSSgGMd, &_s9Coherence10CRRegisterVySSSgGMR);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v43 - v21;
  v23 = v69;
  v69 = dispatch thunk of CREncoder.keyedContainer()();
  if (!v23)
  {
    v47 = v19;
    v48 = v17;
    v45 = v15;
    v46 = v13;
    v44 = v12;
    CRRegister.projectedValue.getter();
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<String?> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVySSSgGMd, &_s9Coherence10CRRegisterVySSSgGMR, MEMORY[0x1E6995080]);
    dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
    v25 = v22;
    v26 = *(v48 + 8);
    v26(v25, v16);
    v48 = type metadata accessor for PDFAnnotationElement(0);
    v27 = v47;
    CRRegister.projectedValue.getter();
    dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
    v26(v27, v16);
    v28 = v45;
    v29 = v46;
    CRRegister.projectedValue.getter();
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<Color?> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMR, MEMORY[0x1E6995080]);
    dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
    (*(v68 + 8))(v28, v29);
    v30 = v44;
    CRRegister.projectedValue.getter();
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<SignatureValue?> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVy8PaperKit14SignatureValueVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit14SignatureValueVSgGMR, MEMORY[0x1E6995080]);
    dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
    (*(v67 + 8))(v30, v10);
    v31 = v64;
    v32 = v65;
    CRRegister.projectedValue.getter();
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<Int> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVySiGMd, &_s9Coherence10CRRegisterVySiGMR, MEMORY[0x1E6995080]);
    dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
    (*(v66 + 8))(v32, v31);
    v33 = v61;
    v34 = v63;
    CRRegister.projectedValue.getter();
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<Date?> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVy10Foundation4DateVSgGMd, &_s9Coherence10CRRegisterVy10Foundation4DateVSgGMR, MEMORY[0x1E6995080]);
    dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
    (*(v62 + 8))(v33, v34);
    v35 = v58;
    v36 = v59;
    CRRegister.projectedValue.getter();
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<PDFAnnotationElement.AnnotationShape> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVy8PaperKit20PDFAnnotationElementV15AnnotationShapeVGMd, &_s9Coherence10CRRegisterVy8PaperKit20PDFAnnotationElementV15AnnotationShapeVGMR, MEMORY[0x1E6995080]);
    dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
    (*(v60 + 8))(v36, v35);
    v37 = v55;
    v38 = v57;
    CRRegister.projectedValue.getter();
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<String> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVySSGMd, &_s9Coherence10CRRegisterVySSGMR, MEMORY[0x1E6995080]);
    dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
    (*(v56 + 8))(v37, v38);
    v39 = v52;
    v40 = v54;
    CRRegister.projectedValue.getter();
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<PDFFieldFlags> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVy8PaperKit13PDFFieldFlagsVGMd, &_s9Coherence10CRRegisterVy8PaperKit13PDFFieldFlagsVGMR, MEMORY[0x1E6995080]);
    dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
    (*(v53 + 8))(v39, v40);
    v41 = v49;
    v42 = v51;
    CRRegister.projectedValue.getter();
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<WeakRef<PDFAnnotationElement>?> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVyAA7WeakRefVy8PaperKit20PDFAnnotationElementVGSgGMd, &_s9Coherence10CRRegisterVyAA7WeakRefVy8PaperKit20PDFAnnotationElementVGSgGMR, MEMORY[0x1E6995080]);
    dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
    (*(v50 + 8))(v41, v42);
    UnknownProperties.encode(to:)();
  }

  return result;
}

uint64_t PDFAnnotationElement.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v183 = a1;
  v130 = type metadata accessor for UnknownProperties();
  v129 = *(v130 - 8);
  MEMORY[0x1EEE9AC00](v130);
  v128 = &v122 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_9Coherence7AnyCRDTVtSgMd, &_sSS_9Coherence7AnyCRDTVtSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v136 = (&v122 - v5);
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_9Coherence7AnyCRDTVtMd, &_sSS_9Coherence7AnyCRDTVtMR);
  v131 = *(v137 - 8);
  MEMORY[0x1EEE9AC00](v137);
  v127 = &v122 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v126 = &v122 - v8;
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA7WeakRefVy8PaperKit20PDFAnnotationElementVGSgGMd, &_s9Coherence10CRRegisterVyAA7WeakRefVy8PaperKit20PDFAnnotationElementVGSgGMR);
  v145 = *(v140 - 8);
  MEMORY[0x1EEE9AC00](v140);
  v133 = &v122 - v9;
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13PDFFieldFlagsVGMd, &_s9Coherence10CRRegisterVy8PaperKit13PDFFieldFlagsVGMR);
  v173 = *(v144 - 8);
  MEMORY[0x1EEE9AC00](v144);
  v138 = &v122 - v10;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSGMd, &_s9Coherence10CRRegisterVySSGMR);
  v134 = *(v135 - 8);
  MEMORY[0x1EEE9AC00](v135);
  v141 = &v122 - v11;
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit20PDFAnnotationElementV15AnnotationShapeVGMd, &_s9Coherence10CRRegisterVy8PaperKit20PDFAnnotationElementV15AnnotationShapeVGMR);
  v139 = *(v155 - 8);
  MEMORY[0x1EEE9AC00](v155);
  v147 = &v122 - v12;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy10Foundation4DateVSgGMd, &_s9Coherence10CRRegisterVy10Foundation4DateVSgGMR);
  v142 = *(v143 - 8);
  MEMORY[0x1EEE9AC00](v143);
  v152 = &v122 - v13;
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySiGMd, &_s9Coherence10CRRegisterVySiGMR);
  v149 = *(v150 - 8);
  MEMORY[0x1EEE9AC00](v150);
  v156 = &v122 - v14;
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14SignatureValueVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit14SignatureValueVSgGMR);
  v153 = *(v154 - 8);
  MEMORY[0x1EEE9AC00](v154);
  v159 = &v122 - v15;
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMR);
  v157 = *(v158 - 8);
  MEMORY[0x1EEE9AC00](v158);
  v162 = &v122 - v16;
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSSgGMd, &_s9Coherence10CRRegisterVySSSgGMR);
  v172 = *(v166 - 8);
  MEMORY[0x1EEE9AC00](v166);
  v171 = &v122 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v170 = &v122 - v19;
  v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit20PDFAnnotationElementVGSgMd, &_s9Coherence7WeakRefVy8PaperKit20PDFAnnotationElementVGSgMR);
  MEMORY[0x1EEE9AC00](v179);
  v182 = &v122 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v177 = &v122 - v22;
  v180 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x1EEE9AC00](v180);
  v176 = &v122 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v175 = &v122 - v25;
  v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit14SignatureValueVSgMd, &_s8PaperKit14SignatureValueVSgMR);
  MEMORY[0x1EEE9AC00](v181);
  v174 = &v122 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v122 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v122 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v122 - v34;
  v184 = 0uLL;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  v37 = lazy protocol witness table accessor for type Date? and conformance <A> A?(&lazy protocol witness table cache variable for type String? and conformance <A> A?, &_sSSSgMd, &_sSSSgMR);
  CRRegister.init(wrappedValue:)();
  v38 = type metadata accessor for PDFAnnotationElement(0);
  v39 = v38[5];
  v184 = 0uLL;
  v160 = v39;
  v40 = a2;
  v168 = v37;
  v169 = v36;
  CRRegister.init(wrappedValue:)();
  v41 = v38[6];
  v42 = type metadata accessor for Color(0);
  (*(*(v42 - 8) + 56))(v35, 1, 1, v42);
  outlined init with copy of Date?(v35, v32, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
  v43 = lazy protocol witness table accessor for type Color? and conformance <A> A?();
  v164 = v41;
  v165 = v30;
  v161 = v43;
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v35, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
  v44 = v38[7];
  v45 = type metadata accessor for SignatureValue(0);
  (*(*(v45 - 8) + 56))(v29, 1, 1, v45);
  outlined init with copy of Date?(v29, v174, &_s8PaperKit14SignatureValueVSgMd, &_s8PaperKit14SignatureValueVSgMR);
  v46 = lazy protocol witness table accessor for type SignatureValue? and conformance <A> A?();
  v167 = v44;
  v163 = v46;
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v29, &_s8PaperKit14SignatureValueVSgMd, &_s8PaperKit14SignatureValueVSgMR);
  v47 = v38[8];
  *&v184 = 0;
  v148 = v47;
  CRRegister.init(wrappedValue:)();
  v48 = v38[9];
  v49 = type metadata accessor for Date();
  v50 = v175;
  (*(*(v49 - 8) + 56))(v175, 1, 1, v49);
  outlined init with copy of Date?(v50, v176, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v51 = lazy protocol witness table accessor for type Date? and conformance <A> A?(&lazy protocol witness table cache variable for type Date? and conformance <A> A?, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v174 = v48;
  v176 = v51;
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v50, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v52 = v38[10];
  v53 = lazy protocol witness table accessor for type PDFAnnotationElement.AnnotationShape and conformance PDFAnnotationElement.AnnotationShape();
  v184 = 0u;
  v185 = 0u;
  v186 = 0;
  v151 = v52;
  v146 = v53;
  CRRegister.init(wrappedValue:)();
  v54 = v38[11];
  *&v184 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(&v184 + 1) = v55;
  v175 = v54;
  CRRegister.init(wrappedValue:)();
  v56 = v38[12];
  *&v184 = 0;
  v57 = lazy protocol witness table accessor for type PDFFieldFlags and conformance PDFFieldFlags();
  v132 = v56;
  CRRegister.init(wrappedValue:)();
  v58 = v38[13];
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit20PDFAnnotationElementVGMd, &_s9Coherence7WeakRefVy8PaperKit20PDFAnnotationElementVGMR);
  v60 = v177;
  (*(*(v59 - 8) + 56))(v177, 1, 1, v59);
  outlined init with copy of Date?(v60, v182, &_s9Coherence7WeakRefVy8PaperKit20PDFAnnotationElementVGSgMd, &_s9Coherence7WeakRefVy8PaperKit20PDFAnnotationElementVGSgMR);
  v61 = lazy protocol witness table accessor for type WeakRef<PDFAnnotationElement>? and conformance <A> A?();
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v60, &_s9Coherence7WeakRefVy8PaperKit20PDFAnnotationElementVGSgMd, &_s9Coherence7WeakRefVy8PaperKit20PDFAnnotationElementVGSgMR);
  v62 = v38[14];
  v182 = v40;
  UnknownProperties.init()();
  v63 = v178;
  v64 = dispatch thunk of CRDecoder.keyedContainer()();
  if (v63)
  {

    return outlined destroy of PDFAnnotationElement.Partial(v182, type metadata accessor for PDFAnnotationElement);
  }

  else
  {
    v65 = v167;
    v177 = v57;
    v125 = v61;
    v66 = v170;
    v124 = v58;
    v67 = v171;
    v68 = v172;
    v123 = v62;
    v69 = v173;
    v178 = v64;
    if (dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)())
    {
      CRRegister.init(from:)();
      (*(v68 + 40))(v182, v66, v166);
    }

    if (dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)())
    {
      CRRegister.init(from:)();
      (*(v68 + 40))(v182 + v160, v67, v166);
    }

    v70 = dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)();
    v71 = v174;
    v72 = v164;
    if (v70)
    {
      v73 = v162;
      CRRegister.init(from:)();
      (*(v157 + 40))(v182 + v72, v73, v158);
    }

    if (dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)())
    {
      v74 = v159;
      CRRegister.init(from:)();
      (*(v153 + 40))(v182 + v65, v74, v154);
    }

    v75 = dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)();
    v76 = v175;
    if (v75)
    {
      v77 = v156;
      CRRegister.init(from:)();
      (*(v149 + 40))(v182 + v148, v77, v150);
    }

    v78 = dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)();
    v79 = v155;
    if (v78)
    {
      v80 = v152;
      CRRegister.init(from:)();
      (*(v142 + 40))(v182 + v71, v80, v143);
    }

    v81 = dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)();
    v82 = v151;
    if (v81)
    {
      v83 = v147;
      CRRegister.init(from:)();
      (*(v139 + 40))(v182 + v82, v83, v79);
    }

    v84 = dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)();
    v85 = v145;
    v86 = v144;
    if (v84)
    {
      v87 = v141;
      CRRegister.init(from:)();
      (*(v134 + 40))(&v76[v182], v87, v135);
    }

    v88 = dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)();
    v89 = v140;
    if (v88)
    {
      v90 = v138;
      CRRegister.init(from:)();
      (*(v69 + 40))(v182 + v132, v90, v86);
    }

    if (dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)())
    {
      v91 = v133;
      CRRegister.init(from:)();
      (*(v85 + 40))(v182 + v124, v91, v89);
    }

    v93 = dispatch thunk of CRDecoder.CRDTKeyedContainer.allKeys()();
    v94 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(v93);

    *&v184 = v94;
    specialized Set._Variant.remove(_:)(7102838, 0xE300000000000000);

    specialized Set._Variant.remove(_:)(7500915, 0xE300000000000000);

    specialized Set._Variant.remove(_:)(67, 0xE100000000000000);

    specialized Set._Variant.remove(_:)(0x727574616E676973, 0xEE0065756C615665);

    specialized Set._Variant.remove(_:)(70, 0xE100000000000000);

    specialized Set._Variant.remove(_:)(77, 0xE100000000000000);

    specialized Set._Variant.remove(_:)(0x6570616873, 0xE500000000000000);

    specialized Set._Variant.remove(_:)(0x65707974627573, 0xE700000000000000);

    specialized Set._Variant.remove(_:)(0x616C46646C656966, 0xEA00000000007367);

    specialized Set._Variant.remove(_:)(0x7075706F70, 0xE500000000000000);

    v95 = v184;
    v96 = v184 + 56;
    v97 = 1 << *(v184 + 32);
    v98 = -1;
    if (v97 < 64)
    {
      v98 = ~(-1 << v97);
    }

    v99 = v98 & *(v184 + 56);
    v100 = (v97 + 63) >> 6;
    v181 = (v131 + 56);

    v101 = 0;
    v180 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v102 = v101;
      if (!v99)
      {
        break;
      }

LABEL_31:
      v103 = __clz(__rbit64(v99));
      v99 &= v99 - 1;
      v104 = (*(v95 + 48) + ((v101 << 10) | (16 * v103)));
      v105 = *v104;
      v106 = v104[1];

      if (dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)())
      {
        v179 = *(v137 + 48);
        v108 = v136;
        *v136 = v105;
        v108[1] = v106;

        AnyCRDT.init(from:)();

        (*v181)(v108, 0, 1, v137);
        v109 = v108;
        v110 = v126;
        outlined init with take of Range<AttributedString.Index>(v109, v126, &_sSS_9Coherence7AnyCRDTVtMd, &_sSS_9Coherence7AnyCRDTVtMR);
        outlined init with take of Range<AttributedString.Index>(v110, v127, &_sSS_9Coherence7AnyCRDTVtMd, &_sSS_9Coherence7AnyCRDTVtMR);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v180 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v180[2] + 1, 1, v180);
        }

        v111 = v131;
        v113 = v180[2];
        v112 = v180[3];
        v114 = v127;
        if (v113 >= v112 >> 1)
        {
          v116 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v112 > 1), v113 + 1, 1, v180);
          v111 = v131;
          v180 = v116;
          v114 = v127;
        }

        v115 = v180;
        v180[2] = v113 + 1;
        outlined init with take of Range<AttributedString.Index>(v114, v115 + ((*(v111 + 80) + 32) & ~*(v111 + 80)) + *(v111 + 72) * v113, &_sSS_9Coherence7AnyCRDTVtMd, &_sSS_9Coherence7AnyCRDTVtMR);
      }

      else
      {

        v107 = v136;
        (*v181)(v136, 1, 1, v137);
        outlined destroy of StocksKitCurrencyCache.Provider?(v107, &_sSS_9Coherence7AnyCRDTVtSgMd, &_sSS_9Coherence7AnyCRDTVtSgMR);
      }
    }

    while (1)
    {
      v101 = v102 + 1;
      if (__OFADD__(v102, 1))
      {
        __break(1u);

        swift_bridgeObjectRelease_n();
        return outlined destroy of PDFAnnotationElement.Partial(v182, type metadata accessor for PDFAnnotationElement);
      }

      if (v101 >= v100)
      {
        break;
      }

      v99 = *(v96 + 8 * v101);
      ++v102;
      if (v99)
      {
        goto LABEL_31;
      }
    }

    v117 = v180;
    if (v180[2])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS9Coherence7AnyCRDTVGMd, &_ss18_DictionaryStorageCySS9Coherence7AnyCRDTVGMR);
      v118 = static _DictionaryStorage.allocate(capacity:)();
    }

    else
    {
      v118 = MEMORY[0x1E69E7CC8];
    }

    v119 = v130;
    v120 = v129;
    v121 = v128;
    v187 = v118;
    specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v117, 1, &v187);
    UnknownProperties.init(_:)();

    return (*(v120 + 40))(v182 + v123, v121, v119);
  }
}

uint64_t PDFAnnotationElement.delta(_:from:)@<X0>(uint64_t a2@<X8>)
{
  v157 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA7WeakRefVy8PaperKit20PDFAnnotationElementVGSgGMd, &_s9Coherence10CRRegisterVyAA7WeakRefVy8PaperKit20PDFAnnotationElementVGSgGMR);
  v173 = *(v2 - 8);
  v174 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v156 = &v138[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v4);
  v155 = &v138[-v5];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA7WeakRefVy8PaperKit20PDFAnnotationElementVGSgGSgMd, &_s9Coherence10CRRegisterVyAA7WeakRefVy8PaperKit20PDFAnnotationElementVGSgGSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v167 = &v138[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v169 = &v138[-v9];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13PDFFieldFlagsVGMd, &_s9Coherence10CRRegisterVy8PaperKit13PDFFieldFlagsVGMR);
  v175 = *(v10 - 8);
  v176 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v154 = &v138[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v12);
  v153 = &v138[-v13];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13PDFFieldFlagsVGSgMd, &_s9Coherence10CRRegisterVy8PaperKit13PDFFieldFlagsVGSgMR);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v166 = &v138[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v16);
  v187 = &v138[-v17];
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSGMd, &_s9Coherence10CRRegisterVySSGMR);
  v177 = *(v18 - 8);
  v178 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v152 = &v138[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v20);
  v151 = &v138[-v21];
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSGSgMd, &_s9Coherence10CRRegisterVySSGSgMR);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v165 = &v138[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v24);
  v188 = &v138[-v25];
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit20PDFAnnotationElementV15AnnotationShapeVGMd, &_s9Coherence10CRRegisterVy8PaperKit20PDFAnnotationElementV15AnnotationShapeVGMR);
  v179 = *(v26 - 8);
  v180 = v26;
  MEMORY[0x1EEE9AC00](v26);
  v150 = &v138[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v28);
  v149 = &v138[-v29];
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit20PDFAnnotationElementV15AnnotationShapeVGSgMd, &_s9Coherence10CRRegisterVy8PaperKit20PDFAnnotationElementV15AnnotationShapeVGSgMR);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v164 = &v138[-((v31 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v32);
  v189 = &v138[-v33];
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy10Foundation4DateVSgGMd, &_s9Coherence10CRRegisterVy10Foundation4DateVSgGMR);
  v181 = *(v34 - 8);
  v182 = v34;
  MEMORY[0x1EEE9AC00](v34);
  v148 = &v138[-((v35 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v36);
  v147 = &v138[-v37];
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy10Foundation4DateVSgGSgMd, &_s9Coherence10CRRegisterVy10Foundation4DateVSgGSgMR);
  MEMORY[0x1EEE9AC00](v38 - 8);
  v163 = &v138[-((v39 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v40);
  v190 = &v138[-v41];
  v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySiGMd, &_s9Coherence10CRRegisterVySiGMR);
  v171 = *(v183 - 8);
  MEMORY[0x1EEE9AC00](v183);
  v146 = &v138[-((v42 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v43);
  v145 = &v138[-v44];
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySiGSgMd, &_s9Coherence10CRRegisterVySiGSgMR);
  MEMORY[0x1EEE9AC00](v45 - 8);
  v162 = &v138[-((v46 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v47);
  v191 = &v138[-v48];
  v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14SignatureValueVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit14SignatureValueVSgGMR);
  v172 = *(v170 - 8);
  MEMORY[0x1EEE9AC00](v170);
  v143 = &v138[-((v49 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v50);
  v142 = &v138[-v51];
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14SignatureValueVSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit14SignatureValueVSgGSgMR);
  MEMORY[0x1EEE9AC00](v52 - 8);
  v161 = &v138[-((v53 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v54);
  v192 = &v138[-v55];
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMR);
  v184 = *(v56 - 8);
  v185 = v56;
  MEMORY[0x1EEE9AC00](v56);
  v140 = &v138[-((v57 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v58);
  v139 = &v138[-v59];
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMR);
  MEMORY[0x1EEE9AC00](v60 - 8);
  v160 = &v138[-((v61 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v62);
  v193 = &v138[-v63];
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSSgGMd, &_s9Coherence10CRRegisterVySSSgGMR);
  v141 = v64;
  v144 = *(v64 - 8);
  v65 = v144;
  MEMORY[0x1EEE9AC00](v64);
  v67 = &v138[-((v66 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v68);
  v70 = &v138[-v69];
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSSgGSgMd, &_s9Coherence10CRRegisterVySSSgGSgMR);
  MEMORY[0x1EEE9AC00](v71 - 8);
  v159 = &v138[-((v72 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v73);
  v158 = &v138[-v74];
  MEMORY[0x1EEE9AC00](v75);
  v186 = &v138[-v76];
  MEMORY[0x1EEE9AC00](v77);
  v168 = &v138[-v78];
  CRRegister.projectedValue.getter();
  CRRegister.projectedValue.getter();
  CRRegister.delta(_:from:)();
  v79 = *(v65 + 8);
  v79(v67, v64);
  v79(v70, v64);
  type metadata accessor for PDFAnnotationElement(0);
  CRRegister.projectedValue.getter();
  CRRegister.projectedValue.getter();
  CRRegister.delta(_:from:)();
  v79(v67, v64);
  v79(v70, v64);
  v80 = v139;
  v81 = v185;
  CRRegister.projectedValue.getter();
  v82 = v140;
  CRRegister.projectedValue.getter();
  CRRegister.delta(_:from:)();
  v83 = *(v184 + 8);
  v83(v82, v81);
  v83(v80, v81);
  v84 = v142;
  v85 = v170;
  CRRegister.projectedValue.getter();
  v86 = v143;
  CRRegister.projectedValue.getter();
  CRRegister.delta(_:from:)();
  v87 = *(v172 + 8);
  v87(v86, v85);
  v87(v84, v85);
  v88 = v145;
  v89 = v183;
  CRRegister.projectedValue.getter();
  v90 = v146;
  CRRegister.projectedValue.getter();
  CRRegister.delta(_:from:)();
  v91 = *(v171 + 8);
  v91(v90, v89);
  v91(v88, v89);
  v92 = v147;
  v93 = v182;
  CRRegister.projectedValue.getter();
  v94 = v148;
  CRRegister.projectedValue.getter();
  CRRegister.delta(_:from:)();
  v95 = *(v181 + 8);
  v95(v94, v93);
  v95(v92, v93);
  v96 = v149;
  v97 = v180;
  CRRegister.projectedValue.getter();
  v98 = v150;
  CRRegister.projectedValue.getter();
  CRRegister.delta(_:from:)();
  v99 = *(v179 + 8);
  v99(v98, v97);
  v99(v96, v97);
  v100 = v151;
  v101 = v178;
  CRRegister.projectedValue.getter();
  v102 = v152;
  CRRegister.projectedValue.getter();
  CRRegister.delta(_:from:)();
  v103 = *(v177 + 8);
  v103(v102, v101);
  v103(v100, v101);
  v104 = v153;
  v105 = v176;
  CRRegister.projectedValue.getter();
  v106 = v154;
  CRRegister.projectedValue.getter();
  CRRegister.delta(_:from:)();
  v107 = *(v175 + 8);
  v107(v106, v105);
  v108 = v104;
  v109 = v168;
  v107(v108, v105);
  v110 = v155;
  v111 = v174;
  CRRegister.projectedValue.getter();
  v112 = v172;
  v113 = v156;
  CRRegister.projectedValue.getter();
  v114 = v169;
  v115 = v171;
  CRRegister.delta(_:from:)();
  v116 = *(v173 + 8);
  v116(v113, v111);
  v117 = v110;
  v118 = v186;
  v119 = v111;
  v120 = v170;
  v116(v117, v119);
  v121 = v144;
  v122 = *(v144 + 48);
  v123 = v141;
  if ((v122)(v109, 1) == 1 && v122(v118, 1, v123) == 1 && (*(v184 + 48))(v193, 1, v185) == 1 && (*(v112 + 48))(v192, 1, v120) == 1 && (*(v115 + 48))(v191, 1, v183) == 1 && (*(v181 + 48))(v190, 1, v182) == 1 && (*(v179 + 48))(v189, 1, v180) == 1 && (*(v177 + 48))(v188, 1, v178) == 1 && (*(v175 + 48))(v187, 1, v176) == 1 && (*(v173 + 48))(v114, 1, v174) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v109, &_s9Coherence10CRRegisterVySSSgGSgMd, &_s9Coherence10CRRegisterVySSSgGSgMR);
    v124 = type metadata accessor for PDFAnnotationElement.Partial(0);
    (*(*(v124 - 8) + 56))(v157, 1, 1, v124);
    v125 = v193;
  }

  else
  {
    outlined init with copy of Date?(v109, v158, &_s9Coherence10CRRegisterVySSSgGSgMd, &_s9Coherence10CRRegisterVySSSgGSgMR);
    outlined init with copy of Date?(v118, v159, &_s9Coherence10CRRegisterVySSSgGSgMd, &_s9Coherence10CRRegisterVySSSgGSgMR);
    outlined init with copy of Date?(v193, v160, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMR);
    outlined init with copy of Date?(v192, v161, &_s9Coherence10CRRegisterVy8PaperKit14SignatureValueVSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit14SignatureValueVSgGSgMR);
    outlined init with copy of Date?(v191, v162, &_s9Coherence10CRRegisterVySiGSgMd, &_s9Coherence10CRRegisterVySiGSgMR);
    outlined init with copy of Date?(v190, v163, &_s9Coherence10CRRegisterVy10Foundation4DateVSgGSgMd, &_s9Coherence10CRRegisterVy10Foundation4DateVSgGSgMR);
    outlined init with copy of Date?(v189, v164, &_s9Coherence10CRRegisterVy8PaperKit20PDFAnnotationElementV15AnnotationShapeVGSgMd, &_s9Coherence10CRRegisterVy8PaperKit20PDFAnnotationElementV15AnnotationShapeVGSgMR);
    outlined init with copy of Date?(v188, v165, &_s9Coherence10CRRegisterVySSGSgMd, &_s9Coherence10CRRegisterVySSGSgMR);
    outlined init with copy of Date?(v187, v166, &_s9Coherence10CRRegisterVy8PaperKit13PDFFieldFlagsVGSgMd, &_s9Coherence10CRRegisterVy8PaperKit13PDFFieldFlagsVGSgMR);
    outlined init with copy of Date?(v114, v167, &_s9Coherence10CRRegisterVyAA7WeakRefVy8PaperKit20PDFAnnotationElementVGSgGSgMd, &_s9Coherence10CRRegisterVyAA7WeakRefVy8PaperKit20PDFAnnotationElementVGSgGSgMR);
    v126 = *(v121 + 56);
    v127 = v157;
    v126(v157, 1, 1, v123);
    v128 = type metadata accessor for PDFAnnotationElement.Partial(0);
    v156 = v128[5];
    v126(&v156[v127], 1, 1, v123);
    v155 = v128[6];
    (*(v184 + 56))(&v155[v127], 1, 1, v185);
    v185 = v128[7];
    (*(v112 + 56))(v127 + v185, 1, 1, v120);
    v129 = v128[8];
    (*(v115 + 56))(v127 + v129, 1, 1, v183);
    v130 = v128[9];
    (*(v181 + 56))(v127 + v130, 1, 1, v182);
    v131 = v128[10];
    (*(v179 + 56))(v127 + v131, 1, 1, v180);
    v132 = v128[11];
    (*(v177 + 56))(v127 + v132, 1, 1, v178);
    v133 = v128[12];
    (*(v175 + 56))(v127 + v133, 1, 1, v176);
    v134 = v128[13];
    (*(v173 + 56))(v127 + v134, 1, 1, v174);
    outlined assign with take of UUID?(v158, v127, &_s9Coherence10CRRegisterVySSSgGSgMd, &_s9Coherence10CRRegisterVySSSgGSgMR);
    outlined assign with take of UUID?(v159, &v156[v127], &_s9Coherence10CRRegisterVySSSgGSgMd, &_s9Coherence10CRRegisterVySSSgGSgMR);
    outlined assign with take of UUID?(v160, &v155[v127], &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMR);
    outlined assign with take of UUID?(v161, v127 + v185, &_s9Coherence10CRRegisterVy8PaperKit14SignatureValueVSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit14SignatureValueVSgGSgMR);
    outlined assign with take of UUID?(v162, v127 + v129, &_s9Coherence10CRRegisterVySiGSgMd, &_s9Coherence10CRRegisterVySiGSgMR);
    outlined assign with take of UUID?(v163, v127 + v130, &_s9Coherence10CRRegisterVy10Foundation4DateVSgGSgMd, &_s9Coherence10CRRegisterVy10Foundation4DateVSgGSgMR);
    outlined assign with take of UUID?(v164, v127 + v131, &_s9Coherence10CRRegisterVy8PaperKit20PDFAnnotationElementV15AnnotationShapeVGSgMd, &_s9Coherence10CRRegisterVy8PaperKit20PDFAnnotationElementV15AnnotationShapeVGSgMR);
    outlined assign with take of UUID?(v165, v127 + v132, &_s9Coherence10CRRegisterVySSGSgMd, &_s9Coherence10CRRegisterVySSGSgMR);
    v114 = v169;
    outlined assign with take of UUID?(v166, v127 + v133, &_s9Coherence10CRRegisterVy8PaperKit13PDFFieldFlagsVGSgMd, &_s9Coherence10CRRegisterVy8PaperKit13PDFFieldFlagsVGSgMR);
    v135 = v127 + v134;
    v125 = v193;
    outlined assign with take of UUID?(v167, v135, &_s9Coherence10CRRegisterVyAA7WeakRefVy8PaperKit20PDFAnnotationElementVGSgGSgMd, &_s9Coherence10CRRegisterVyAA7WeakRefVy8PaperKit20PDFAnnotationElementVGSgGSgMR);
    outlined destroy of StocksKitCurrencyCache.Provider?(v168, &_s9Coherence10CRRegisterVySSSgGSgMd, &_s9Coherence10CRRegisterVySSSgGSgMR);
    v136 = v127;
    v118 = v186;
    (*(*(v128 - 1) + 56))(v136, 0, 1, v128);
  }

  outlined destroy of StocksKitCurrencyCache.Provider?(v114, &_s9Coherence10CRRegisterVyAA7WeakRefVy8PaperKit20PDFAnnotationElementVGSgGSgMd, &_s9Coherence10CRRegisterVyAA7WeakRefVy8PaperKit20PDFAnnotationElementVGSgGSgMR);
  outlined destroy of StocksKitCurrencyCache.Provider?(v187, &_s9Coherence10CRRegisterVy8PaperKit13PDFFieldFlagsVGSgMd, &_s9Coherence10CRRegisterVy8PaperKit13PDFFieldFlagsVGSgMR);
  outlined destroy of StocksKitCurrencyCache.Provider?(v188, &_s9Coherence10CRRegisterVySSGSgMd, &_s9Coherence10CRRegisterVySSGSgMR);
  outlined destroy of StocksKitCurrencyCache.Provider?(v189, &_s9Coherence10CRRegisterVy8PaperKit20PDFAnnotationElementV15AnnotationShapeVGSgMd, &_s9Coherence10CRRegisterVy8PaperKit20PDFAnnotationElementV15AnnotationShapeVGSgMR);
  outlined destroy of StocksKitCurrencyCache.Provider?(v190, &_s9Coherence10CRRegisterVy10Foundation4DateVSgGSgMd, &_s9Coherence10CRRegisterVy10Foundation4DateVSgGSgMR);
  outlined destroy of StocksKitCurrencyCache.Provider?(v191, &_s9Coherence10CRRegisterVySiGSgMd, &_s9Coherence10CRRegisterVySiGSgMR);
  outlined destroy of StocksKitCurrencyCache.Provider?(v192, &_s9Coherence10CRRegisterVy8PaperKit14SignatureValueVSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit14SignatureValueVSgGSgMR);
  outlined destroy of StocksKitCurrencyCache.Provider?(v125, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMR);
  return outlined destroy of StocksKitCurrencyCache.Provider?(v118, &_s9Coherence10CRRegisterVySSSgGSgMd, &_s9Coherence10CRRegisterVySSSgGSgMR);
}

BOOL PDFAnnotationElement.canMerge(delta:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA7WeakRefVy8PaperKit20PDFAnnotationElementVGSgGSgMd, &_s9Coherence10CRRegisterVyAA7WeakRefVy8PaperKit20PDFAnnotationElementVGSgGSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v151 = &v134 - v4;
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA7WeakRefVy8PaperKit20PDFAnnotationElementVGSgGMd, &_s9Coherence10CRRegisterVyAA7WeakRefVy8PaperKit20PDFAnnotationElementVGSgGMR);
  v145 = *(v144 - 8);
  MEMORY[0x1EEE9AC00](v144);
  v136 = &v134 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v135 = &v134 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13PDFFieldFlagsVGSgMd, &_s9Coherence10CRRegisterVy8PaperKit13PDFFieldFlagsVGSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v149 = &v134 - v9;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13PDFFieldFlagsVGMd, &_s9Coherence10CRRegisterVy8PaperKit13PDFFieldFlagsVGMR);
  v150 = *(v143 - 8);
  MEMORY[0x1EEE9AC00](v143);
  v138 = &v134 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v137 = &v134 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSGSgMd, &_s9Coherence10CRRegisterVySSGSgMR);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v156 = &v134 - v14;
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSGMd, &_s9Coherence10CRRegisterVySSGMR);
  v157 = *(v148 - 8);
  MEMORY[0x1EEE9AC00](v148);
  v140 = &v134 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v139 = &v134 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit20PDFAnnotationElementV15AnnotationShapeVGSgMd, &_s9Coherence10CRRegisterVy8PaperKit20PDFAnnotationElementV15AnnotationShapeVGSgMR);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v154 = &v134 - v19;
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit20PDFAnnotationElementV15AnnotationShapeVGMd, &_s9Coherence10CRRegisterVy8PaperKit20PDFAnnotationElementV15AnnotationShapeVGMR);
  v161 = *(v155 - 8);
  MEMORY[0x1EEE9AC00](v155);
  v142 = &v134 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v141 = &v134 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy10Foundation4DateVSgGSgMd, &_s9Coherence10CRRegisterVy10Foundation4DateVSgGSgMR);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v176 = &v134 - v24;
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy10Foundation4DateVSgGMd, &_s9Coherence10CRRegisterVy10Foundation4DateVSgGMR);
  v165 = *(v160 - 8);
  MEMORY[0x1EEE9AC00](v160);
  v147 = &v134 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v146 = &v134 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySiGSgMd, &_s9Coherence10CRRegisterVySiGSgMR);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v168 = &v134 - v29;
  v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySiGMd, &_s9Coherence10CRRegisterVySiGMR);
  v164 = *(v169 - 8);
  MEMORY[0x1EEE9AC00](v169);
  v153 = &v134 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v152 = &v134 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14SignatureValueVSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit14SignatureValueVSgGSgMR);
  MEMORY[0x1EEE9AC00](v33 - 8);
  v175 = &v134 - v34;
  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14SignatureValueVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit14SignatureValueVSgGMR);
  v173 = *(v167 - 8);
  MEMORY[0x1EEE9AC00](v167);
  v159 = &v134 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v158 = &v134 - v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMR);
  MEMORY[0x1EEE9AC00](v38 - 8);
  v170 = &v134 - v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMR);
  v171 = *(v40 - 8);
  v172 = v40;
  MEMORY[0x1EEE9AC00](v40);
  v163 = &v134 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v42);
  v162 = &v134 - v43;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSSgGSgMd, &_s9Coherence10CRRegisterVySSSgGSgMR);
  MEMORY[0x1EEE9AC00](v44 - 8);
  v174 = &v134 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v46);
  v48 = &v134 - v47;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSSgGMd, &_s9Coherence10CRRegisterVySSSgGMR);
  v50 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v166 = &v134 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v52);
  v54 = &v134 - v53;
  MEMORY[0x1EEE9AC00](v55);
  v57 = &v134 - v56;
  v58 = a1;
  outlined init with copy of Date?(a1, v48, &_s9Coherence10CRRegisterVySSSgGSgMd, &_s9Coherence10CRRegisterVySSSgGSgMR);
  v59 = *(v50 + 48);
  v60 = v59(v48, 1, v49);
  v177 = v1;
  if (v60 == 1)
  {
    v61 = v50;
    outlined destroy of StocksKitCurrencyCache.Provider?(v48, &_s9Coherence10CRRegisterVySSSgGSgMd, &_s9Coherence10CRRegisterVySSSgGSgMR);
  }

  else
  {
    (*(v50 + 32))(v57, v48, v49);
    CRRegister.projectedValue.getter();
    v62 = CRRegister.canMerge(delta:)();
    v61 = v50;
    v63 = *(v50 + 8);
    v63(v54, v49);
    v63(v57, v49);
    if ((v62 & 1) == 0)
    {
      return 0;
    }
  }

  v178 = type metadata accessor for PDFAnnotationElement.Partial(0);
  v64 = v59;
  v65 = v58;
  v66 = v174;
  outlined init with copy of Date?(v58 + v178[5], v174, &_s9Coherence10CRRegisterVySSSgGSgMd, &_s9Coherence10CRRegisterVySSSgGSgMR);
  if (v64(v66, 1, v49) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v66, &_s9Coherence10CRRegisterVySSSgGSgMd, &_s9Coherence10CRRegisterVySSSgGSgMR);
    v67 = v176;
    v68 = v175;
  }

  else
  {
    v69 = v166;
    (*(v61 + 32))(v166, v66, v49);
    type metadata accessor for PDFAnnotationElement(0);
    CRRegister.projectedValue.getter();
    v70 = CRRegister.canMerge(delta:)();
    v71 = *(v61 + 8);
    v71(v54, v49);
    v71(v69, v49);
    v68 = v175;
    v67 = v176;
    if ((v70 & 1) == 0)
    {
      return 0;
    }
  }

  v72 = v170;
  outlined init with copy of Date?(v65 + v178[6], v170, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMR);
  v74 = v171;
  v73 = v172;
  if ((*(v171 + 48))(v72, 1, v172) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v72, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMR);
    v75 = v173;
  }

  else
  {
    v76 = v67;
    v77 = v162;
    (*(v74 + 32))(v162, v72, v73);
    type metadata accessor for PDFAnnotationElement(0);
    v78 = v65;
    v79 = v163;
    CRRegister.projectedValue.getter();
    v80 = CRRegister.canMerge(delta:)();
    v81 = *(v74 + 8);
    v82 = v79;
    v65 = v78;
    v81(v82, v73);
    v83 = v77;
    v67 = v76;
    v81(v83, v73);
    v75 = v173;
    if ((v80 & 1) == 0)
    {
      return 0;
    }
  }

  outlined init with copy of Date?(v65 + v178[7], v68, &_s9Coherence10CRRegisterVy8PaperKit14SignatureValueVSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit14SignatureValueVSgGSgMR);
  v84 = v167;
  if ((*(v75 + 48))(v68, 1, v167) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v68, &_s9Coherence10CRRegisterVy8PaperKit14SignatureValueVSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit14SignatureValueVSgGSgMR);
    v85 = v168;
  }

  else
  {
    v86 = v158;
    (*(v75 + 32))(v158, v68, v84);
    type metadata accessor for PDFAnnotationElement(0);
    v87 = v159;
    CRRegister.projectedValue.getter();
    v88 = CRRegister.canMerge(delta:)();
    v89 = *(v75 + 8);
    v89(v87, v84);
    v89(v86, v84);
    v85 = v168;
    if ((v88 & 1) == 0)
    {
      return 0;
    }
  }

  outlined init with copy of Date?(v65 + v178[8], v85, &_s9Coherence10CRRegisterVySiGSgMd, &_s9Coherence10CRRegisterVySiGSgMR);
  v90 = v164;
  if ((*(v164 + 48))(v85, 1, v169) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v85, &_s9Coherence10CRRegisterVySiGSgMd, &_s9Coherence10CRRegisterVySiGSgMR);
    v91 = v165;
  }

  else
  {
    v92 = v152;
    v93 = v169;
    (*(v90 + 32))(v152, v85, v169);
    type metadata accessor for PDFAnnotationElement(0);
    v94 = v153;
    CRRegister.projectedValue.getter();
    v95 = v90;
    v96 = CRRegister.canMerge(delta:)();
    v97 = *(v95 + 8);
    v97(v94, v93);
    v97(v92, v93);
    v91 = v165;
    if ((v96 & 1) == 0)
    {
      return 0;
    }
  }

  outlined init with copy of Date?(v65 + v178[9], v67, &_s9Coherence10CRRegisterVy10Foundation4DateVSgGSgMd, &_s9Coherence10CRRegisterVy10Foundation4DateVSgGSgMR);
  v98 = v160;
  if ((*(v91 + 48))(v67, 1, v160) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v67, &_s9Coherence10CRRegisterVy10Foundation4DateVSgGSgMd, &_s9Coherence10CRRegisterVy10Foundation4DateVSgGSgMR);
    v99 = v161;
  }

  else
  {
    v100 = v146;
    (*(v91 + 32))(v146, v67, v98);
    type metadata accessor for PDFAnnotationElement(0);
    v101 = v147;
    CRRegister.projectedValue.getter();
    v102 = CRRegister.canMerge(delta:)();
    v103 = *(v91 + 8);
    v103(v101, v98);
    v103(v100, v98);
    v99 = v161;
    if ((v102 & 1) == 0)
    {
      return 0;
    }
  }

  v104 = v154;
  outlined init with copy of Date?(v65 + v178[10], v154, &_s9Coherence10CRRegisterVy8PaperKit20PDFAnnotationElementV15AnnotationShapeVGSgMd, &_s9Coherence10CRRegisterVy8PaperKit20PDFAnnotationElementV15AnnotationShapeVGSgMR);
  v105 = v155;
  if ((*(v99 + 48))(v104, 1, v155) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v104, &_s9Coherence10CRRegisterVy8PaperKit20PDFAnnotationElementV15AnnotationShapeVGSgMd, &_s9Coherence10CRRegisterVy8PaperKit20PDFAnnotationElementV15AnnotationShapeVGSgMR);
    v106 = v157;
    v107 = v156;
  }

  else
  {
    v108 = v141;
    (*(v99 + 32))(v141, v104, v105);
    type metadata accessor for PDFAnnotationElement(0);
    v109 = v142;
    CRRegister.projectedValue.getter();
    v110 = CRRegister.canMerge(delta:)();
    v111 = *(v99 + 8);
    v111(v109, v105);
    v111(v108, v105);
    v106 = v157;
    v107 = v156;
    if ((v110 & 1) == 0)
    {
      return 0;
    }
  }

  outlined init with copy of Date?(v65 + v178[11], v107, &_s9Coherence10CRRegisterVySSGSgMd, &_s9Coherence10CRRegisterVySSGSgMR);
  v112 = v148;
  if ((*(v106 + 48))(v107, 1, v148) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v107, &_s9Coherence10CRRegisterVySSGSgMd, &_s9Coherence10CRRegisterVySSGSgMR);
    v113 = v150;
    v114 = v149;
  }

  else
  {
    v115 = v139;
    (*(v106 + 32))(v139, v107, v112);
    type metadata accessor for PDFAnnotationElement(0);
    v116 = v140;
    CRRegister.projectedValue.getter();
    v117 = v112;
    v118 = CRRegister.canMerge(delta:)();
    v119 = *(v106 + 8);
    v119(v116, v117);
    v119(v115, v117);
    v113 = v150;
    v114 = v149;
    if ((v118 & 1) == 0)
    {
      return 0;
    }
  }

  outlined init with copy of Date?(v65 + v178[12], v114, &_s9Coherence10CRRegisterVy8PaperKit13PDFFieldFlagsVGSgMd, &_s9Coherence10CRRegisterVy8PaperKit13PDFFieldFlagsVGSgMR);
  v120 = v143;
  if ((*(v113 + 48))(v114, 1, v143) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v114, &_s9Coherence10CRRegisterVy8PaperKit13PDFFieldFlagsVGSgMd, &_s9Coherence10CRRegisterVy8PaperKit13PDFFieldFlagsVGSgMR);
  }

  else
  {
    v121 = v137;
    (*(v113 + 32))(v137, v114, v120);
    type metadata accessor for PDFAnnotationElement(0);
    v122 = v138;
    CRRegister.projectedValue.getter();
    v123 = v120;
    v124 = CRRegister.canMerge(delta:)();
    v125 = *(v113 + 8);
    v125(v122, v123);
    v125(v121, v123);
    if ((v124 & 1) == 0)
    {
      return 0;
    }
  }

  v126 = v151;
  outlined init with copy of Date?(v65 + v178[13], v151, &_s9Coherence10CRRegisterVyAA7WeakRefVy8PaperKit20PDFAnnotationElementVGSgGSgMd, &_s9Coherence10CRRegisterVyAA7WeakRefVy8PaperKit20PDFAnnotationElementVGSgGSgMR);
  if ((*(v145 + 48))(v126, 1, v144) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v151, &_s9Coherence10CRRegisterVyAA7WeakRefVy8PaperKit20PDFAnnotationElementVGSgGSgMd, &_s9Coherence10CRRegisterVyAA7WeakRefVy8PaperKit20PDFAnnotationElementVGSgGSgMR);
    return 1;
  }

  v127 = v145;
  v128 = v135;
  v129 = v144;
  (*(v145 + 32))(v135, v151, v144);
  type metadata accessor for PDFAnnotationElement(0);
  v130 = v136;
  CRRegister.projectedValue.getter();
  v131 = CRRegister.canMerge(delta:)();
  v132 = *(v127 + 8);
  v132(v130, v129);
  v132(v128, v129);
  return (v131 & 1) != 0;
}

BOOL PDFAnnotationElement.merge(delta:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA7WeakRefVy8PaperKit20PDFAnnotationElementVGSgGSgMd, &_s9Coherence10CRRegisterVyAA7WeakRefVy8PaperKit20PDFAnnotationElementVGSgGSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v190 = &v142[-v4];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA7WeakRefVy8PaperKit20PDFAnnotationElementVGSgGMd, &_s9Coherence10CRRegisterVyAA7WeakRefVy8PaperKit20PDFAnnotationElementVGSgGMR);
  v191 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v169 = &v142[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v168 = &v142[-v8];
  MEMORY[0x1EEE9AC00](v9);
  v167 = &v142[-v10];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13PDFFieldFlagsVGSgMd, &_s9Coherence10CRRegisterVy8PaperKit13PDFFieldFlagsVGSgMR);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v187 = &v142[-v12];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13PDFFieldFlagsVGMd, &_s9Coherence10CRRegisterVy8PaperKit13PDFFieldFlagsVGMR);
  v188 = *(v13 - 8);
  v189 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v166 = &v142[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v15);
  v165 = &v142[-v16];
  MEMORY[0x1EEE9AC00](v17);
  v164 = &v142[-v18];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSGSgMd, &_s9Coherence10CRRegisterVySSGSgMR);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v184 = &v142[-v20];
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSGMd, &_s9Coherence10CRRegisterVySSGMR);
  v185 = *(v21 - 8);
  v186 = v21;
  MEMORY[0x1EEE9AC00](v21);
  v163 = &v142[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v23);
  v162 = &v142[-v24];
  MEMORY[0x1EEE9AC00](v25);
  v161 = &v142[-v26];
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit20PDFAnnotationElementV15AnnotationShapeVGSgMd, &_s9Coherence10CRRegisterVy8PaperKit20PDFAnnotationElementV15AnnotationShapeVGSgMR);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v181 = &v142[-v28];
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit20PDFAnnotationElementV15AnnotationShapeVGMd, &_s9Coherence10CRRegisterVy8PaperKit20PDFAnnotationElementV15AnnotationShapeVGMR);
  v182 = *(v29 - 8);
  v183 = v29;
  MEMORY[0x1EEE9AC00](v29);
  v160 = &v142[-((v30 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v31);
  v159 = &v142[-v32];
  MEMORY[0x1EEE9AC00](v33);
  v158 = &v142[-v34];
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy10Foundation4DateVSgGSgMd, &_s9Coherence10CRRegisterVy10Foundation4DateVSgGSgMR);
  MEMORY[0x1EEE9AC00](v35 - 8);
  v179 = &v142[-v36];
  v192 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy10Foundation4DateVSgGMd, &_s9Coherence10CRRegisterVy10Foundation4DateVSgGMR);
  v180 = *(v192 - 8);
  MEMORY[0x1EEE9AC00](v192);
  v157 = &v142[-((v37 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v38);
  v156 = &v142[-v39];
  MEMORY[0x1EEE9AC00](v40);
  v155 = &v142[-v41];
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySiGSgMd, &_s9Coherence10CRRegisterVySiGSgMR);
  MEMORY[0x1EEE9AC00](v42 - 8);
  v176 = &v142[-v43];
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySiGMd, &_s9Coherence10CRRegisterVySiGMR);
  v177 = *(v44 - 8);
  v178 = v44;
  MEMORY[0x1EEE9AC00](v44);
  v154 = &v142[-((v45 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v46);
  v153 = &v142[-v47];
  MEMORY[0x1EEE9AC00](v48);
  v152 = &v142[-v49];
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14SignatureValueVSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit14SignatureValueVSgGSgMR);
  MEMORY[0x1EEE9AC00](v50 - 8);
  v173 = &v142[-v51];
  v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14SignatureValueVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit14SignatureValueVSgGMR);
  v174 = *(v175 - 8);
  MEMORY[0x1EEE9AC00](v175);
  v151 = &v142[-((v52 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v53);
  v150 = &v142[-v54];
  MEMORY[0x1EEE9AC00](v55);
  v149 = &v142[-v56];
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMR);
  MEMORY[0x1EEE9AC00](v57 - 8);
  v170 = &v142[-v58];
  v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMR);
  v171 = *(v172 - 8);
  MEMORY[0x1EEE9AC00](v172);
  v148 = &v142[-((v59 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v60);
  v147 = &v142[-v61];
  MEMORY[0x1EEE9AC00](v62);
  v146 = &v142[-v63];
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSSgGSgMd, &_s9Coherence10CRRegisterVySSSgGSgMR);
  MEMORY[0x1EEE9AC00](v64 - 8);
  v66 = &v142[-((v65 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v67);
  v69 = &v142[-v68];
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSSgGMd, &_s9Coherence10CRRegisterVySSSgGMR);
  v71 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v145 = &v142[-((v72 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v73);
  v75 = &v142[-v74];
  MEMORY[0x1EEE9AC00](v76);
  v78 = &v142[-v77];
  MEMORY[0x1EEE9AC00](v79);
  v81 = &v142[-v80];
  v82 = PDFAnnotationElement.canMerge(delta:)(a1);
  if (v82)
  {
    v143 = v82;
    v144 = v5;
    v193 = a1;
    v194 = v1;
    outlined init with copy of Date?(a1, v69, &_s9Coherence10CRRegisterVySSSgGSgMd, &_s9Coherence10CRRegisterVySSSgGSgMR);
    v83 = *(v71 + 48);
    if (v83(v69, 1, v70) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v69, &_s9Coherence10CRRegisterVySSSgGSgMd, &_s9Coherence10CRRegisterVySSSgGSgMR);
    }

    else
    {
      (*(v71 + 32))(v81, v69, v70);
      CRRegister.projectedValue.getter();
      CRRegister.merge(delta:)();
      (*(v71 + 16))(v75, v78, v70);
      CRRegister.projectedValue.setter();
      v84 = *(v71 + 8);
      v84(v78, v70);
      v84(v81, v70);
    }

    v195 = type metadata accessor for PDFAnnotationElement.Partial(0);
    v85 = v193;
    outlined init with copy of Date?(v193 + v195[5], v66, &_s9Coherence10CRRegisterVySSSgGSgMd, &_s9Coherence10CRRegisterVySSSgGSgMR);
    if (v83(v66, 1, v70) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v66, &_s9Coherence10CRRegisterVySSSgGSgMd, &_s9Coherence10CRRegisterVySSSgGSgMR);
    }

    else
    {
      v86 = v145;
      (*(v71 + 32))(v145, v66, v70);
      type metadata accessor for PDFAnnotationElement(0);
      CRRegister.projectedValue.getter();
      CRRegister.merge(delta:)();
      (*(v71 + 16))(v75, v78, v70);
      CRRegister.projectedValue.setter();
      v87 = *(v71 + 8);
      v87(v78, v70);
      v87(v86, v70);
    }

    v88 = v175;
    v89 = v170;
    outlined init with copy of Date?(v85 + v195[6], v170, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMR);
    v90 = v171;
    v91 = v172;
    v92 = (*(v171 + 48))(v89, 1, v172);
    v93 = v192;
    if (v92 == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v89, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMR);
    }

    else
    {
      v94 = v146;
      (*(v90 + 32))(v146, v89, v91);
      type metadata accessor for PDFAnnotationElement(0);
      v95 = v147;
      CRRegister.projectedValue.getter();
      CRRegister.merge(delta:)();
      (*(v90 + 16))(v148, v95, v91);
      v85 = v193;
      CRRegister.projectedValue.setter();
      v96 = *(v90 + 8);
      v96(v95, v91);
      v97 = v94;
      v93 = v192;
      v96(v97, v91);
    }

    v98 = v173;
    outlined init with copy of Date?(v85 + v195[7], v173, &_s9Coherence10CRRegisterVy8PaperKit14SignatureValueVSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit14SignatureValueVSgGSgMR);
    v99 = v174;
    if ((*(v174 + 48))(v98, 1, v88) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v98, &_s9Coherence10CRRegisterVy8PaperKit14SignatureValueVSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit14SignatureValueVSgGSgMR);
    }

    else
    {
      v101 = v149;
      (*(v99 + 32))(v149, v98, v88);
      type metadata accessor for PDFAnnotationElement(0);
      v102 = v150;
      CRRegister.projectedValue.getter();
      CRRegister.merge(delta:)();
      (*(v99 + 16))(v151, v102, v88);
      CRRegister.projectedValue.setter();
      v103 = *(v99 + 8);
      v103(v102, v88);
      v103(v101, v88);
    }

    v100 = v176;
    v104 = v177;
    v105 = v178;
    outlined init with copy of Date?(v85 + v195[8], v176, &_s9Coherence10CRRegisterVySiGSgMd, &_s9Coherence10CRRegisterVySiGSgMR);
    if ((*(v104 + 48))(v100, 1, v105) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v100, &_s9Coherence10CRRegisterVySiGSgMd, &_s9Coherence10CRRegisterVySiGSgMR);
    }

    else
    {
      v106 = v152;
      (*(v104 + 32))(v152, v100, v105);
      type metadata accessor for PDFAnnotationElement(0);
      v107 = v153;
      CRRegister.projectedValue.getter();
      CRRegister.merge(delta:)();
      (*(v104 + 16))(v154, v107, v105);
      CRRegister.projectedValue.setter();
      v108 = *(v104 + 8);
      v108(v107, v105);
      v108(v106, v105);
    }

    v109 = v179;
    v110 = v180;
    v111 = v183;
    outlined init with copy of Date?(v193 + v195[9], v179, &_s9Coherence10CRRegisterVy10Foundation4DateVSgGSgMd, &_s9Coherence10CRRegisterVy10Foundation4DateVSgGSgMR);
    v112 = (*(v110 + 48))(v109, 1, v93);
    v113 = v182;
    if (v112 == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v109, &_s9Coherence10CRRegisterVy10Foundation4DateVSgGSgMd, &_s9Coherence10CRRegisterVy10Foundation4DateVSgGSgMR);
    }

    else
    {
      v114 = v93;
      v115 = v155;
      (*(v110 + 32))(v155, v109, v114);
      type metadata accessor for PDFAnnotationElement(0);
      v116 = v156;
      CRRegister.projectedValue.getter();
      CRRegister.merge(delta:)();
      (*(v110 + 16))(v157, v116, v114);
      CRRegister.projectedValue.setter();
      v117 = *(v110 + 8);
      v117(v116, v114);
      v117(v115, v114);
    }

    v118 = v181;
    v119 = v193;
    outlined init with copy of Date?(v193 + v195[10], v181, &_s9Coherence10CRRegisterVy8PaperKit20PDFAnnotationElementV15AnnotationShapeVGSgMd, &_s9Coherence10CRRegisterVy8PaperKit20PDFAnnotationElementV15AnnotationShapeVGSgMR);
    if ((*(v113 + 48))(v118, 1, v111) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v118, &_s9Coherence10CRRegisterVy8PaperKit20PDFAnnotationElementV15AnnotationShapeVGSgMd, &_s9Coherence10CRRegisterVy8PaperKit20PDFAnnotationElementV15AnnotationShapeVGSgMR);
    }

    else
    {
      v120 = v158;
      (*(v113 + 32))(v158, v118, v111);
      type metadata accessor for PDFAnnotationElement(0);
      v121 = v159;
      CRRegister.projectedValue.getter();
      CRRegister.merge(delta:)();
      (*(v113 + 16))(v160, v121, v111);
      CRRegister.projectedValue.setter();
      v122 = *(v113 + 8);
      v122(v121, v111);
      v122(v120, v111);
    }

    v123 = v184;
    v124 = v185;
    v125 = v188;
    v126 = v186;
    outlined init with copy of Date?(v119 + v195[11], v184, &_s9Coherence10CRRegisterVySSGSgMd, &_s9Coherence10CRRegisterVySSGSgMR);
    if ((*(v124 + 48))(v123, 1, v126) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v123, &_s9Coherence10CRRegisterVySSGSgMd, &_s9Coherence10CRRegisterVySSGSgMR);
    }

    else
    {
      v127 = v161;
      (*(v124 + 32))(v161, v123, v126);
      type metadata accessor for PDFAnnotationElement(0);
      v128 = v162;
      CRRegister.projectedValue.getter();
      CRRegister.merge(delta:)();
      (*(v124 + 16))(v163, v128, v126);
      CRRegister.projectedValue.setter();
      v129 = *(v124 + 8);
      v129(v128, v126);
      v129(v127, v126);
    }

    v130 = v187;
    v131 = v144;
    v132 = v189;
    outlined init with copy of Date?(v119 + v195[12], v187, &_s9Coherence10CRRegisterVy8PaperKit13PDFFieldFlagsVGSgMd, &_s9Coherence10CRRegisterVy8PaperKit13PDFFieldFlagsVGSgMR);
    if ((*(v125 + 48))(v130, 1, v132) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v130, &_s9Coherence10CRRegisterVy8PaperKit13PDFFieldFlagsVGSgMd, &_s9Coherence10CRRegisterVy8PaperKit13PDFFieldFlagsVGSgMR);
    }

    else
    {
      v133 = v164;
      (*(v125 + 32))(v164, v130, v132);
      type metadata accessor for PDFAnnotationElement(0);
      v134 = v165;
      CRRegister.projectedValue.getter();
      CRRegister.merge(delta:)();
      (*(v125 + 16))(v166, v134, v132);
      CRRegister.projectedValue.setter();
      v135 = *(v125 + 8);
      v135(v134, v132);
      v135(v133, v132);
    }

    v136 = v190;
    outlined init with copy of Date?(v119 + v195[13], v190, &_s9Coherence10CRRegisterVyAA7WeakRefVy8PaperKit20PDFAnnotationElementVGSgGSgMd, &_s9Coherence10CRRegisterVyAA7WeakRefVy8PaperKit20PDFAnnotationElementVGSgGSgMR);
    v137 = v191;
    if ((*(v191 + 48))(v136, 1, v131) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v136, &_s9Coherence10CRRegisterVyAA7WeakRefVy8PaperKit20PDFAnnotationElementVGSgGSgMd, &_s9Coherence10CRRegisterVyAA7WeakRefVy8PaperKit20PDFAnnotationElementVGSgGSgMR);
    }

    else
    {
      v138 = v167;
      (*(v137 + 32))(v167, v136, v131);
      type metadata accessor for PDFAnnotationElement(0);
      v139 = v168;
      CRRegister.projectedValue.getter();
      CRRegister.merge(delta:)();
      (*(v137 + 16))(v169, v139, v131);
      CRRegister.projectedValue.setter();
      v140 = *(v137 + 8);
      v140(v139, v131);
      v140(v138, v131);
    }

    LOBYTE(v82) = v143;
  }

  return v82;
}

uint64_t protocol witness for CRDT.context.getter in conformance PDFAnnotationElement(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CGPoint and conformance CGPoint(&lazy protocol witness table cache variable for type PDFAnnotationElement and conformance PDFAnnotationElement, type metadata accessor for PDFAnnotationElement, &protocol conformance descriptor for PDFAnnotationElement);

  return MEMORY[0x1EEDF5248](a1, v2);
}

uint64_t protocol witness for CRMergeable.merge(_:) in conformance PDFAnnotationElement(uint64_t a1)
{
  v2 = type metadata accessor for MergeResult();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  PDFAnnotationElement.merge(_:)(a1, v5);
  return (*(v3 + 8))(v5, v2);
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(uint64_t a1, uint64_t a2)
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
      if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
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

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ8PaperKit21ValueTypes_BezierPathV11ElementTypeO_Tt1g5(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    v4 = (a2 + 40);
    do
    {
      v6 = *v3;
      v3 += 2;
      v5 = v6;
      v7 = *(v4 - 1);
      if (*v4 == 1)
      {
        if (v7 <= 1)
        {
          if (v7)
          {
            if (v5 != 1)
            {
              return 0;
            }
          }

          else if (v5)
          {
            return 0;
          }
        }

        else if (v7 == 2)
        {
          if (v5 != 2)
          {
            return 0;
          }
        }

        else if (v7 == 3)
        {
          if (v5 != 3)
          {
            return 0;
          }
        }

        else if (v5 != 4)
        {
          return 0;
        }
      }

      else if (v5 != v7)
      {
        return 0;
      }

      v4 += 16;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZSd_Tt1g5(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v5 = *v3++;
    v6 = v5;
    v7 = *v4++;
    result = v6 == v7;
    if (v6 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ9Coherence9CRKeyPathV_Tt1g5Tm(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v33 = a5;
  v34 = a6;
  v32 = a4;
  v8 = a3(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v29 - v14;
  v16 = *(a1 + 16);
  if (v16 != *(a2 + 16))
  {
    v26 = 0;
    return v26 & 1;
  }

  if (!v16 || a1 == a2)
  {
    v26 = 1;
    return v26 & 1;
  }

  v17 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v18 = a1 + v17;
  v19 = a2 + v17;
  v21 = *(v9 + 16);
  v20 = v9 + 16;
  v22 = (v20 - 8);
  v30 = *(v20 + 56);
  v31 = v21;
  while (1)
  {
    v23 = v31;
    result = (v31)(v15, v18, v8, v13);
    if (!v16)
    {
      break;
    }

    v25 = v20;
    v23(v11, v19, v8);
    lazy protocol witness table accessor for type CGPoint and conformance CGPoint(v32, v33, v34);
    v26 = dispatch thunk of static Equatable.== infix(_:_:)();
    v27 = *v22;
    (*v22)(v11, v8);
    v27(v15, v8);
    if (v26)
    {
      v19 += v30;
      v18 += v30;
      v28 = v16-- == 1;
      v20 = v25;
      if (!v28)
      {
        continue;
      }
    }

    return v26 & 1;
  }

  __break(1u);
  return result;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZSo7CGPointV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = (a1 + 32);
  v4 = (a2 + 32);
  do
  {
    v5 = *v3++;
    v6 = v5;
    v7 = *v4++;
    v8 = vmovn_s64(vceqq_f64(v6, v7));
    if ((v8.i8[0] & v8.i8[4] & 1) == 0)
    {
      break;
    }

    --v2;
  }

  while (v2);
  return v8.i8[0] & v8.i8[4] & 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ8PaperKit20AnyCanvasElementViewC_Tt1g5Tm(unint64_t a1, unint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  v5 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v6)
    {
      goto LABEL_29;
    }

    v8 = v4 & 0xFFFFFFFFFFFFFF8;
    v9 = (v4 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v4 < 0)
    {
      v8 = v4;
    }

    if (v5)
    {
      v9 = v8;
    }

    v10 = a2 & 0xFFFFFFFFFFFFFF8;
    v11 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if ((a2 & 0x8000000000000000) != 0)
    {
      v10 = a2;
    }

    if (a2 >> 62)
    {
      v11 = v10;
    }

    if (v9 == v11)
    {
LABEL_29:
      v19 = 1;
      return v19 & 1;
    }

    if (v6 < 0)
    {
      __break(1u);
      return result;
    }

    v5 = a3(0);
    if (((a2 | v4) & 0xC000000000000001) != 0)
    {
      v12 = a2 & 0xC000000000000001;
      v13 = 4;
      while (1)
      {
        v14 = v13 - 4;
        v15 = v13 - 3;
        if (__OFADD__(v13 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v4 & 0xC000000000000001) != 0)
        {
          v16 = MEMORY[0x1DA6CE0C0](v13 - 4, v4);
          if (!v12)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v14 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v16 = *(v4 + 8 * v13);
          if (!v12)
          {
LABEL_24:
            if (v14 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v17 = *(a2 + 8 * v13);
            goto LABEL_26;
          }
        }

        v17 = MEMORY[0x1DA6CE0C0](v13 - 4, a2);
LABEL_26:
        v18 = v17;
        v19 = static NSObject.== infix(_:_:)();

        if (v19)
        {
          ++v13;
          if (v15 != v6)
          {
            continue;
          }
        }

        return v19 & 1;
      }
    }

    v20 = (v4 + 32);
    v21 = (a2 + 32);
    v22 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v23 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v24 = v6 - 1;
    while (1)
    {
      if (!v22)
      {
        goto LABEL_40;
      }

      if (!v23)
      {
        break;
      }

      v26 = *v20++;
      v25 = v26;
      v27 = *v21++;
      a2 = v25;
      v4 = v27;
      v19 = static NSObject.== infix(_:_:)();

      v29 = v24-- != 0;
      if (v19)
      {
        --v23;
        --v22;
        if (v29)
        {
          continue;
        }
      }

      return v19 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v30 = a3;
    v31 = __CocoaSet.count.getter();
    a3 = v30;
    v6 = v31;
  }

  v32 = a3;
  result = __CocoaSet.count.getter();
  a3 = v32;
  if (v6 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v19 = 0;
  return v19 & 1;
}

void _sSasSQRzlE2eeoiySbSayxG_ABtFZ8PaperKit13ReflowElementC_Tt1g5(unint64_t a1, unint64_t a2)
{
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_42;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
  {
    if (a2 >> 62)
    {
      if (i != __CocoaSet.count.getter())
      {
        return;
      }
    }

    else if (i != *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return;
    }

    if (!i)
    {
      return;
    }

    v6 = a1 & 0xFFFFFFFFFFFFFF8;
    v7 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
    if ((a1 & 0x8000000000000000) != 0)
    {
      v6 = a1;
    }

    if (v4)
    {
      v7 = v6;
    }

    v8 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if ((a2 & 0x8000000000000000) != 0)
    {
      v9 = a2;
    }

    else
    {
      v9 = a2 & 0xFFFFFFFFFFFFFF8;
    }

    if (a2 >> 62)
    {
      v8 = v9;
    }

    if (v7 == v8)
    {
      return;
    }

    if (i < 0)
    {
      break;
    }

    if (((a2 | a1) & 0xC000000000000001) != 0)
    {
      v10 = a2 & 0xC000000000000001;
      v11 = 4;
      while (1)
      {
        v12 = v11 - 4;
        v13 = v11 - 3;
        if (__OFADD__(v11 - 4, 1))
        {
          goto LABEL_41;
        }

        if ((a1 & 0xC000000000000001) != 0)
        {
          v4 = MEMORY[0x1DA6CE0C0](v11 - 4, a1);
          if (v10)
          {
            goto LABEL_22;
          }
        }

        else
        {
          if (v12 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
LABEL_46:
            __break(1u);
            goto LABEL_47;
          }

          v4 = *(a1 + 8 * v11);

          if (v10)
          {
LABEL_22:
            v14 = MEMORY[0x1DA6CE0C0](v11 - 4, a2);
            swift_unknownObjectRelease();
            goto LABEL_27;
          }
        }

        if (v12 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_46;
        }

        v14 = *(a2 + 8 * v11);
LABEL_27:

        if (v4 == v14)
        {
          ++v11;
          if (v13 != i)
          {
            continue;
          }
        }

        return;
      }
    }

    v15 = (a1 + 32);
    v16 = (a2 + 32);
    v17 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v18 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v19 = i - 1;
    while (v17)
    {
      if (!v18)
      {
        goto LABEL_40;
      }

      v21 = *v15++;
      v20 = v21;
      v23 = *v16++;
      v22 = v23;
      v25 = v19-- != 0;
      if (v20 == v22)
      {
        --v18;
        --v17;
        if (v25)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    ;
  }

LABEL_47:
  __break(1u);
}

uint64_t specialized Array<A>.hash(into:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1DA6CE810](v3);
  if (v3)
  {
    v5 = (a2 + 40);
    do
    {
      v6 = *(v5 - 1);
      v7 = *v5;
      if (v6 == 0.0)
      {
        v6 = 0.0;
      }

      MEMORY[0x1DA6CE840](*&v6);
      if (v7 == 0.0)
      {
        v8 = 0.0;
      }

      else
      {
        v8 = v7;
      }

      result = MEMORY[0x1DA6CE840](*&v8);
      v5 += 2;
      --v3;
    }

    while (v3);
  }

  return result;
}

{
  v3 = *(a2 + 16);
  result = MEMORY[0x1DA6CE810](v3);
  if (v3)
  {
    v5 = (a2 + 32);
    do
    {
      v6 = *v5++;
      v7 = v6;
      if (v6 == 0.0)
      {
        v7 = 0.0;
      }

      result = MEMORY[0x1DA6CE840](*&v7);
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t *specialized static PDFAnnotationElement.AnnotationShape.== infix(_:_:)(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  v3 = *a2;
  if (!*result)
  {
    if (!v3)
    {
      return CGRectEqualToRect(*(result + 1), *(a2 + 1));
    }

    return 0;
  }

  if (!v3)
  {
    return 0;
  }

  v4 = *(v2 + 16);
  if (v4 != *(v3 + 16))
  {
    return 0;
  }

  if (v4)
  {
    v5 = v2 == v3;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    return CGRectEqualToRect(*(result + 1), *(a2 + 1));
  }

  v6 = (v2 + 32);
  v7 = (v3 + 32);
  while (v4)
  {
    v8 = vmovn_s64(vceqq_f64(*v6, *v7));
    if ((v8.i32[0] & v8.i32[1] & 1) == 0)
    {
      return 0;
    }

    ++v6;
    ++v7;
    if (!--v4)
    {
      return CGRectEqualToRect(*(result + 1), *(a2 + 1));
    }
  }

  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type PDFAnnotationElement.AnnotationShape.CodingKeys and conformance PDFAnnotationElement.AnnotationShape.CodingKeys()
{
  result = lazy protocol witness table cache variable for type PDFAnnotationElement.AnnotationShape.CodingKeys and conformance PDFAnnotationElement.AnnotationShape.CodingKeys;
  if (!lazy protocol witness table cache variable for type PDFAnnotationElement.AnnotationShape.CodingKeys and conformance PDFAnnotationElement.AnnotationShape.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PDFAnnotationElement.AnnotationShape.CodingKeys and conformance PDFAnnotationElement.AnnotationShape.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PDFAnnotationElement.AnnotationShape.CodingKeys and conformance PDFAnnotationElement.AnnotationShape.CodingKeys;
  if (!lazy protocol witness table cache variable for type PDFAnnotationElement.AnnotationShape.CodingKeys and conformance PDFAnnotationElement.AnnotationShape.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PDFAnnotationElement.AnnotationShape.CodingKeys and conformance PDFAnnotationElement.AnnotationShape.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PDFAnnotationElement.AnnotationShape.CodingKeys and conformance PDFAnnotationElement.AnnotationShape.CodingKeys;
  if (!lazy protocol witness table cache variable for type PDFAnnotationElement.AnnotationShape.CodingKeys and conformance PDFAnnotationElement.AnnotationShape.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PDFAnnotationElement.AnnotationShape.CodingKeys and conformance PDFAnnotationElement.AnnotationShape.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PDFAnnotationElement.AnnotationShape.CodingKeys and conformance PDFAnnotationElement.AnnotationShape.CodingKeys;
  if (!lazy protocol witness table cache variable for type PDFAnnotationElement.AnnotationShape.CodingKeys and conformance PDFAnnotationElement.AnnotationShape.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PDFAnnotationElement.AnnotationShape.CodingKeys and conformance PDFAnnotationElement.AnnotationShape.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PDFAnnotationElement.AnnotationShape.CodingKeys and conformance PDFAnnotationElement.AnnotationShape.CodingKeys;
  if (!lazy protocol witness table cache variable for type PDFAnnotationElement.AnnotationShape.CodingKeys and conformance PDFAnnotationElement.AnnotationShape.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PDFAnnotationElement.AnnotationShape.CodingKeys and conformance PDFAnnotationElement.AnnotationShape.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PDFAnnotationElement.AnnotationShape.CodingKeys and conformance PDFAnnotationElement.AnnotationShape.CodingKeys;
  if (!lazy protocol witness table cache variable for type PDFAnnotationElement.AnnotationShape.CodingKeys and conformance PDFAnnotationElement.AnnotationShape.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PDFAnnotationElement.AnnotationShape.CodingKeys and conformance PDFAnnotationElement.AnnotationShape.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PDFAnnotationElement.AnnotationShape.CodingKeys and conformance PDFAnnotationElement.AnnotationShape.CodingKeys;
  if (!lazy protocol witness table cache variable for type PDFAnnotationElement.AnnotationShape.CodingKeys and conformance PDFAnnotationElement.AnnotationShape.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PDFAnnotationElement.AnnotationShape.CodingKeys and conformance PDFAnnotationElement.AnnotationShape.CodingKeys);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [CGPoint] and conformance <A> [A](unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo7CGPointVGMd, &_sSaySo7CGPointVGMR);
    lazy protocol witness table accessor for type CGPoint and conformance CGPoint(a2, type metadata accessor for CGPoint, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type WeakRef<PDFAnnotationElement>? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type WeakRef<PDFAnnotationElement>? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type WeakRef<PDFAnnotationElement>? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s9Coherence7WeakRefVy8PaperKit20PDFAnnotationElementVGSgMd, &_s9Coherence7WeakRefVy8PaperKit20PDFAnnotationElementVGSgMR);
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type WeakRef<PDFAnnotationElement> and conformance WeakRef<A>, &_s9Coherence7WeakRefVy8PaperKit20PDFAnnotationElementVGMd, &_s9Coherence7WeakRefVy8PaperKit20PDFAnnotationElementVGMR, MEMORY[0x1E6995460]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WeakRef<PDFAnnotationElement>? and conformance <A> A?);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PDFFieldFlags and conformance PDFFieldFlags()
{
  result = lazy protocol witness table cache variable for type PDFFieldFlags and conformance PDFFieldFlags;
  if (!lazy protocol witness table cache variable for type PDFFieldFlags and conformance PDFFieldFlags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PDFFieldFlags and conformance PDFFieldFlags);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PDFFieldFlags and conformance PDFFieldFlags;
  if (!lazy protocol witness table cache variable for type PDFFieldFlags and conformance PDFFieldFlags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PDFFieldFlags and conformance PDFFieldFlags);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PDFFieldFlags and conformance PDFFieldFlags;
  if (!lazy protocol witness table cache variable for type PDFFieldFlags and conformance PDFFieldFlags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PDFFieldFlags and conformance PDFFieldFlags);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PDFFieldFlags and conformance PDFFieldFlags;
  if (!lazy protocol witness table cache variable for type PDFFieldFlags and conformance PDFFieldFlags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PDFFieldFlags and conformance PDFFieldFlags);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PDFFieldFlags and conformance PDFFieldFlags;
  if (!lazy protocol witness table cache variable for type PDFFieldFlags and conformance PDFFieldFlags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PDFFieldFlags and conformance PDFFieldFlags);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PDFFieldFlags and conformance PDFFieldFlags;
  if (!lazy protocol witness table cache variable for type PDFFieldFlags and conformance PDFFieldFlags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PDFFieldFlags and conformance PDFFieldFlags);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PDFFieldFlags and conformance PDFFieldFlags;
  if (!lazy protocol witness table cache variable for type PDFFieldFlags and conformance PDFFieldFlags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PDFFieldFlags and conformance PDFFieldFlags);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PDFAnnotationElement.AnnotationShape and conformance PDFAnnotationElement.AnnotationShape()
{
  result = lazy protocol witness table cache variable for type PDFAnnotationElement.AnnotationShape and conformance PDFAnnotationElement.AnnotationShape;
  if (!lazy protocol witness table cache variable for type PDFAnnotationElement.AnnotationShape and conformance PDFAnnotationElement.AnnotationShape)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PDFAnnotationElement.AnnotationShape and conformance PDFAnnotationElement.AnnotationShape);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PDFAnnotationElement.AnnotationShape and conformance PDFAnnotationElement.AnnotationShape;
  if (!lazy protocol witness table cache variable for type PDFAnnotationElement.AnnotationShape and conformance PDFAnnotationElement.AnnotationShape)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PDFAnnotationElement.AnnotationShape and conformance PDFAnnotationElement.AnnotationShape);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PDFAnnotationElement.AnnotationShape and conformance PDFAnnotationElement.AnnotationShape;
  if (!lazy protocol witness table cache variable for type PDFAnnotationElement.AnnotationShape and conformance PDFAnnotationElement.AnnotationShape)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PDFAnnotationElement.AnnotationShape and conformance PDFAnnotationElement.AnnotationShape);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PDFAnnotationElement.AnnotationShape and conformance PDFAnnotationElement.AnnotationShape;
  if (!lazy protocol witness table cache variable for type PDFAnnotationElement.AnnotationShape and conformance PDFAnnotationElement.AnnotationShape)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PDFAnnotationElement.AnnotationShape and conformance PDFAnnotationElement.AnnotationShape);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PDFAnnotationElement.AnnotationShape and conformance PDFAnnotationElement.AnnotationShape;
  if (!lazy protocol witness table cache variable for type PDFAnnotationElement.AnnotationShape and conformance PDFAnnotationElement.AnnotationShape)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PDFAnnotationElement.AnnotationShape and conformance PDFAnnotationElement.AnnotationShape);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PDFAnnotationElement.AnnotationShape and conformance PDFAnnotationElement.AnnotationShape;
  if (!lazy protocol witness table cache variable for type PDFAnnotationElement.AnnotationShape and conformance PDFAnnotationElement.AnnotationShape)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PDFAnnotationElement.AnnotationShape and conformance PDFAnnotationElement.AnnotationShape);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PDFAnnotationElement.AnnotationShape and conformance PDFAnnotationElement.AnnotationShape;
  if (!lazy protocol witness table cache variable for type PDFAnnotationElement.AnnotationShape and conformance PDFAnnotationElement.AnnotationShape)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PDFAnnotationElement.AnnotationShape and conformance PDFAnnotationElement.AnnotationShape);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SignatureValue? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type SignatureValue? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type SignatureValue? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s8PaperKit14SignatureValueVSgMd, &_s8PaperKit14SignatureValueVSgMR);
    lazy protocol witness table accessor for type CGPoint and conformance CGPoint(&lazy protocol witness table cache variable for type SignatureValue and conformance SignatureValue, type metadata accessor for SignatureValue, &protocol conformance descriptor for SignatureValue);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SignatureValue? and conformance <A> A?);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Date? and conformance <A> A?(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t specialized static PDFAnnotationElement.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v115 = a2;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA7WeakRefVy8PaperKit20PDFAnnotationElementVGSgGMd, &_s9Coherence10CRRegisterVyAA7WeakRefVy8PaperKit20PDFAnnotationElementVGSgGMR);
  v87 = *(v88 - 8);
  MEMORY[0x1EEE9AC00](v88);
  v86 = v84 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v85 = v84 - v5;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13PDFFieldFlagsVGMd, &_s9Coherence10CRRegisterVy8PaperKit13PDFFieldFlagsVGMR);
  v91 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92);
  v90 = v84 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v89 = v84 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSGMd, &_s9Coherence10CRRegisterVySSGMR);
  v95 = *(v9 - 8);
  v96 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v94 = v84 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v93 = v84 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit20PDFAnnotationElementV15AnnotationShapeVGMd, &_s9Coherence10CRRegisterVy8PaperKit20PDFAnnotationElementV15AnnotationShapeVGMR);
  v99 = *(v13 - 8);
  v100 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v98 = v84 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v97 = v84 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy10Foundation4DateVSgGMd, &_s9Coherence10CRRegisterVy10Foundation4DateVSgGMR);
  v103 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v102 = v84 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v101 = v84 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySiGMd, &_s9Coherence10CRRegisterVySiGMR);
  v106 = *(v21 - 8);
  v107 = v21;
  MEMORY[0x1EEE9AC00](v21);
  v105 = v84 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v104 = v84 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14SignatureValueVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit14SignatureValueVSgGMR);
  v110 = *(v25 - 8);
  v111 = v25;
  MEMORY[0x1EEE9AC00](v25);
  v109 = v84 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v108 = v84 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMR);
  v113 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v112 = v84 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v33 = v84 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSSgGMd, &_s9Coherence10CRRegisterVySSSgGMR);
  v35 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v37 = v84 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v40 = v84 - v39;
  v114 = a1;
  CRRegister.projectedValue.getter();
  CRRegister.projectedValue.getter();
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<String?> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVySSSgGMd, &_s9Coherence10CRRegisterVySSSgGMR, MEMORY[0x1E6995090]);
  LOBYTE(a1) = dispatch thunk of static Equatable.== infix(_:_:)();
  v41 = *(v35 + 8);
  v41(v37, v34);
  v41(v40, v34);
  if ((a1 & 1) != 0
    && (v84[0] = v17, v42 = type metadata accessor for PDFAnnotationElement(0), CRRegister.projectedValue.getter(), v84[1] = v42, CRRegister.projectedValue.getter(), v43 = dispatch thunk of static Equatable.== infix(_:_:)(), v41(v37, v34), v41(v40, v34), (v43 & 1) != 0)
    && (CRRegister.projectedValue.getter(), v44 = v112, CRRegister.projectedValue.getter(), lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<Color?> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMR, MEMORY[0x1E6995090]), v45 = dispatch thunk of static Equatable.== infix(_:_:)(), v46 = *(v113 + 8), v46(v44, v29), v46(v33, v29), (v45 & 1) != 0)
    && (v47 = v108, v48 = v111, CRRegister.projectedValue.getter(), v49 = v109, CRRegister.projectedValue.getter(), lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<SignatureValue?> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVy8PaperKit14SignatureValueVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit14SignatureValueVSgGMR, MEMORY[0x1E6995090]), v50 = dispatch thunk of static Equatable.== infix(_:_:)(), v51 = *(v110 + 8), v51(v49, v48), v51(v47, v48), (v50 & 1) != 0)
    && (v52 = v104, v53 = v107, CRRegister.projectedValue.getter(), v54 = v105, CRRegister.projectedValue.getter(), lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<Int> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVySiGMd, &_s9Coherence10CRRegisterVySiGMR, MEMORY[0x1E6995090]), v55 = dispatch thunk of static Equatable.== infix(_:_:)(), v56 = *(v106 + 8), v56(v54, v53), v56(v52, v53), (v55 & 1) != 0)
    && (v57 = v101, v58 = v84[0], CRRegister.projectedValue.getter(), v59 = v102, CRRegister.projectedValue.getter(), lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<Date?> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVy10Foundation4DateVSgGMd, &_s9Coherence10CRRegisterVy10Foundation4DateVSgGMR, MEMORY[0x1E6995090]), v60 = dispatch thunk of static Equatable.== infix(_:_:)(), v61 = *(v103 + 8), v61(v59, v58), v61(v57, v58), (v60 & 1) != 0)
    && (v62 = v97, v63 = v100, CRRegister.projectedValue.getter(), v64 = v98, CRRegister.projectedValue.getter(), lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<PDFAnnotationElement.AnnotationShape> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVy8PaperKit20PDFAnnotationElementV15AnnotationShapeVGMd, &_s9Coherence10CRRegisterVy8PaperKit20PDFAnnotationElementV15AnnotationShapeVGMR, MEMORY[0x1E6995090]), v65 = dispatch thunk of static Equatable.== infix(_:_:)(), v66 = *(v99 + 8), v66(v64, v63), v66(v62, v63), (v65 & 1) != 0)
    && (v67 = v93, v68 = v96, CRRegister.projectedValue.getter(), v69 = v94, CRRegister.projectedValue.getter(), lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<String> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVySSGMd, &_s9Coherence10CRRegisterVySSGMR, MEMORY[0x1E6995090]), v70 = dispatch thunk of static Equatable.== infix(_:_:)(), v71 = *(v95 + 8), v71(v69, v68), v71(v67, v68), (v70 & 1) != 0)
    && (v72 = v89, v73 = v92, CRRegister.projectedValue.getter(), v74 = v90, CRRegister.projectedValue.getter(), lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<PDFFieldFlags> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVy8PaperKit13PDFFieldFlagsVGMd, &_s9Coherence10CRRegisterVy8PaperKit13PDFFieldFlagsVGMR, MEMORY[0x1E6995090]), v75 = dispatch thunk of static Equatable.== infix(_:_:)(), v76 = *(v91 + 8), v76(v74, v73), v76(v72, v73), (v75 & 1) != 0)
    && (v77 = v85, v78 = v88, CRRegister.projectedValue.getter(), v79 = v86, CRRegister.projectedValue.getter(), lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<WeakRef<PDFAnnotationElement>?> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVyAA7WeakRefVy8PaperKit20PDFAnnotationElementVGSgGMd, &_s9Coherence10CRRegisterVyAA7WeakRefVy8PaperKit20PDFAnnotationElementVGSgGMR, MEMORY[0x1E6995090]), v80 = dispatch thunk of static Equatable.== infix(_:_:)(), v81 = *(v87 + 8), v81(v79, v78), v81(v77, v78), (v80 & 1) != 0))
  {
    v82 = static UnknownProperties.== infix(_:_:)();
  }

  else
  {
    v82 = 0;
  }

  return v82 & 1;
}

void specialized PDFAnnotationElement.update<A>(use:ref:pdfAnnotation:capsule:options:)(unint64_t *a1, uint64_t a2, void *a3)
{
  v213 = a3;
  v212 = a2;
  v211 = a1;
  v182 = type metadata accessor for CRKeyPath();
  v181 = *(v182 - 8);
  MEMORY[0x1EEE9AC00](v182);
  v180 = &v179 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit20PDFAnnotationElementVGSgMd, &_s9Coherence7WeakRefVy8PaperKit20PDFAnnotationElementVGSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v188 = &v179 - v5;
  v191 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit20PDFAnnotationElementVGMd, &_s9Coherence7WeakRefVy8PaperKit20PDFAnnotationElementVGMR);
  v190 = *(v191 - 8);
  MEMORY[0x1EEE9AC00](v191);
  v189 = &v179 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v187 = &v179 - v8;
  v197 = type metadata accessor for Date();
  v198 = *(v197 - 8);
  MEMORY[0x1EEE9AC00](v197);
  v183 = &v179 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v186 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSg_ADtMd, &_s10Foundation4DateVSg_ADtMR);
  MEMORY[0x1EEE9AC00](v186);
  v196 = &v179 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v185 = &v179 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v184 = &v179 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v193 = &v179 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v194 = &v179 - v18;
  v208 = type metadata accessor for SignatureValue(0);
  v202 = *(v208 - 8);
  MEMORY[0x1EEE9AC00](v208);
  v195 = &v179 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v200 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit14SignatureValueVSg_ADtMd, &_s8PaperKit14SignatureValueVSg_ADtMR);
  MEMORY[0x1EEE9AC00](v200);
  v201 = &v179 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit14SignatureValueVSgMd, &_s8PaperKit14SignatureValueVSgMR);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v199 = &v179 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v192 = &v179 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v209 = &v179 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v210 = &v179 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit20PDFAnnotationElementVGSgMd, &_s9Coherence7CapsuleVy8PaperKit20PDFAnnotationElementVGSgMR);
  v206 = *(v29 - 8);
  v30 = *(v206 + 64);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v207 = &v179 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v203 = &v179 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMd, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMR);
  v204 = *(v33 - 8);
  v34 = *(v204 + 64);
  MEMORY[0x1EEE9AC00](v33 - 8);
  v205 = &v179 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v179 - v36;
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v179 - v39;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMR);
  v42 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v44 = &v179 - v43;
  v45 = *v211;
  outlined init with copy of Date?(v212, v40, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMd, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMR);
  if ((*(v42 + 48))(v40, 1, v41) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v40, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMd, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMR);
    v46 = v213;
  }

  else
  {
    v47 = *(v42 + 32);
    v47(v44, v40, v41);
    v48 = v45;
    if (v45 >> 62)
    {
      if (v45 >> 62 != 1)
      {
        (*(v42 + 8))(v44, v41);
        v46 = v213;
        goto LABEL_11;
      }

      v48 = v45 & 0x3FFFFFFFFFFFFFFFLL;
    }

    v211 = v48;
    v212 = v45;
    type metadata accessor for CanvasElementPDFAnnotation(0);
    v49 = v213;
    v50 = swift_dynamicCastClass();
    if (v50)
    {
      v179 = v50;
      v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit20PDFAnnotationElementVGMd, &_s9Coherence7CapsuleVy8PaperKit20PDFAnnotationElementVGMR);
      v52 = v203;
      (*(*(v51 - 8) + 56))(v203, 1, 1, v51);
      v47(v37, v44, v41);
      (*(v42 + 56))(v37, 0, 1, v41);
      v53 = v207;
      outlined init with take of Range<AttributedString.Index>(v52, v207, &_s9Coherence7CapsuleVy8PaperKit20PDFAnnotationElementVGSgMd, &_s9Coherence7CapsuleVy8PaperKit20PDFAnnotationElementVGSgMR);
      v54 = v205;
      outlined init with take of Range<AttributedString.Index>(v37, v205, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMd, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMR);
      v55 = (*(v206 + 80) + 16) & ~*(v206 + 80);
      v56 = (v30 + v55 + 7) & 0xFFFFFFFFFFFFFFF8;
      v57 = (*(v204 + 80) + v56 + 8) & ~*(v204 + 80);
      v58 = v57 + v34;
      v59 = swift_allocObject();
      outlined init with take of Range<AttributedString.Index>(v53, v59 + v55, &_s9Coherence7CapsuleVy8PaperKit20PDFAnnotationElementVGSgMd, &_s9Coherence7CapsuleVy8PaperKit20PDFAnnotationElementVGSgMR);
      *(v59 + v56) = v211;
      outlined init with take of Range<AttributedString.Index>(v54, v59 + v57, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMd, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMR);
      *(v59 + v58) = 0;
      v60 = v59 + (v58 & 0xFFFFFFFFFFFFFFF8);
      *(v60 + 8) = 0;
      *(v60 + 16) = 0;
      v61 = (v179 + OBJC_IVAR____TtC8PaperKit26CanvasElementPDFAnnotation_writePaperKitAnnotation);
      v62 = *(v179 + OBJC_IVAR____TtC8PaperKit26CanvasElementPDFAnnotation_writePaperKitAnnotation);
      v63 = *(v179 + OBJC_IVAR____TtC8PaperKit26CanvasElementPDFAnnotation_writePaperKitAnnotation + 8);
      *v61 = partial apply for specialized closure #1 in CanvasElementPDFAnnotation.encodePaperKit<A>(_:capsule:ref:writeHash:writeType:);
      v61[1] = v59;
      outlined copy of PaperDocument.PDFDocumentUse(v212);
      v64 = v49;
      outlined consume of (@escaping @callee_guaranteed () -> ())?(v62, v63);
    }

    else
    {
      (*(v42 + 8))(v44, v41);
    }

    v46 = v49;
  }

LABEL_11:
  v65 = type metadata accessor for PDFAnnotationElement(0);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSGMd, &_s9Coherence10CRRegisterVySSGMR);
  CRRegister.wrappedValue.getter();
  v67 = v216;
  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v67 && v68 == *(&v67 + 1))
  {

    return;
  }

  v69 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v69)
  {

    return;
  }

  v211 = v66;
  v70 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v212 = v65;
  if (__PAIR128__(v71, v70) == v67)
  {

    goto LABEL_19;
  }

  v72 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v72 & 1) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSSgGMd, &_s9Coherence10CRRegisterVySSSgGMR);
    CRRegister.wrappedValue.getter();
    v79 = v216;
    v80 = [v46 widgetStringValue];
    if (v80)
    {
      v81 = v80;
      v82 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v84 = v83;

      if (*(&v79 + 1))
      {
        if (v84)
        {
          if (v79 == __PAIR128__(v84, v82))
          {

            goto LABEL_75;
          }

          v172 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v172)
          {
LABEL_75:
            CRRegister.wrappedValue.getter();
            v106 = v216;
            v107 = [v46 contents];
            if (v107)
            {
              v108 = v107;
              v109 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v111 = v110;

              if (*(&v106 + 1))
              {
                if (v111)
                {
                  if (v106 == __PAIR128__(v111, v109))
                  {

                    goto LABEL_88;
                  }

                  v173 = _stringCompareWithSmolCheck(_:_:expecting:)();

                  if (v173)
                  {
LABEL_88:
                    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySiGMd, &_s9Coherence10CRRegisterVySiGMR);
                    CRRegister.wrappedValue.getter();
                    v113 = v216;
                    v114 = *MEMORY[0x1E6978060];
                    if ([v46 valueForAnnotationKey_])
                    {
                      _bridgeAnyObjectToAny(_:)();
                      swift_unknownObjectRelease();
                    }

                    else
                    {
                      v219 = 0u;
                      v220 = 0u;
                    }

                    v115 = v194;
                    v216 = v219;
                    v217 = v220;
                    if (*(&v220 + 1))
                    {
                      if ((swift_dynamicCast() & 1) != 0 && v113 == v215)
                      {
                        goto LABEL_97;
                      }
                    }

                    else
                    {
                      outlined destroy of StocksKitCurrencyCache.Provider?(&v216, &_sypSgMd, &_sypSgMR);
                    }

                    CRRegister.wrappedValue.getter();
                    isa = Int._bridgeToObjectiveC()().super.super.isa;
                    [v46 setValue:isa forAnnotationKey:v114];

LABEL_97:
                    v117 = *(v65 + 36);
                    v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy10Foundation4DateVSgGMd, &_s9Coherence10CRRegisterVy10Foundation4DateVSgGMR);
                    v210 = v117;
                    v209 = v118;
                    CRRegister.wrappedValue.getter();
                    v119 = [v46 modificationDate];
                    if (v119)
                    {
                      v120 = v193;
                      v121 = v119;
                      static Date._unconditionallyBridgeFromObjectiveC(_:)();

                      v122 = 0;
                      v123 = v197;
                    }

                    else
                    {
                      v122 = 1;
                      v123 = v197;
                      v120 = v193;
                    }

                    v124 = v198;
                    (*(v198 + 56))(v120, v122, 1, v123);
                    v125 = *(v186 + 48);
                    v126 = v196;
                    outlined init with copy of Date?(v115, v196, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
                    v127 = v126;
                    outlined init with copy of Date?(v120, v126 + v125, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
                    v128 = *(v124 + 48);
                    if (v128(v127, 1, v123) == 1)
                    {
                      outlined destroy of StocksKitCurrencyCache.Provider?(v120, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
                      v129 = v196;
                      outlined destroy of StocksKitCurrencyCache.Provider?(v115, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
                      if (v128(v129 + v125, 1, v123) == 1)
                      {
                        outlined destroy of StocksKitCurrencyCache.Provider?(v129, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
                        goto LABEL_110;
                      }
                    }

                    else
                    {
                      v130 = v184;
                      outlined init with copy of Date?(v127, v184, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
                      if (v128(v127 + v125, 1, v123) != 1)
                      {
                        v137 = v198;
                        v138 = v127 + v125;
                        v139 = v183;
                        (*(v198 + 32))(v183, v138, v123);
                        lazy protocol witness table accessor for type CGPoint and conformance CGPoint(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
                        v140 = v127;
                        v141 = dispatch thunk of static Equatable.== infix(_:_:)();
                        v142 = *(v137 + 8);
                        v142(v139, v197);
                        outlined destroy of StocksKitCurrencyCache.Provider?(v193, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
                        outlined destroy of StocksKitCurrencyCache.Provider?(v194, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
                        v142(v130, v197);
                        v123 = v197;
                        v46 = v213;
                        outlined destroy of StocksKitCurrencyCache.Provider?(v140, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
                        if (v141)
                        {
                          goto LABEL_110;
                        }

                        goto LABEL_106;
                      }

                      outlined destroy of StocksKitCurrencyCache.Provider?(v193, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
                      v129 = v196;
                      outlined destroy of StocksKitCurrencyCache.Provider?(v194, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
                      (*(v198 + 8))(v130, v123);
                    }

                    outlined destroy of StocksKitCurrencyCache.Provider?(v129, &_s10Foundation4DateVSg_ADtMd, &_s10Foundation4DateVSg_ADtMR);
LABEL_106:
                    v131 = v185;
                    CRRegister.wrappedValue.getter();
                    if (v128(v131, 1, v123) == 1)
                    {
                      v132 = 0;
                    }

                    else
                    {
                      v132 = Date._bridgeToObjectiveC()().super.isa;
                      (*(v198 + 8))(v131, v123);
                    }

                    [v46 setModificationDate_];

LABEL_110:
                    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit20PDFAnnotationElementV15AnnotationShapeVGMd, &_s9Coherence10CRRegisterVy8PaperKit20PDFAnnotationElementV15AnnotationShapeVGMR);
                    CRRegister.wrappedValue.getter();
                    v133 = v216;
                    v134 = PDFAnnotation.quadPoints.getter();
                    if (v133)
                    {
                      v135 = v189;
                      if (v134)
                      {
                        v136 = _sSasSQRzlE2eeoiySbSayxG_ABtFZSo7CGPointV_Tt1g5(v133, v134);

                        if (v136)
                        {
                          goto LABEL_120;
                        }

LABEL_119:
                        CRRegister.wrappedValue.getter();
                        PDFAnnotation.quadPoints.setter(v216);
                        goto LABEL_120;
                      }
                    }

                    else
                    {
                      v135 = v189;
                      if (!v134)
                      {
LABEL_120:
                        CRRegister.wrappedValue.getter();
                        v143 = *(&v216 + 1);
                        v145 = v217;
                        v144 = v218;

                        [v46 bounds];
                        v222.origin.x = v146;
                        v222.origin.y = v147;
                        v222.size.width = v148;
                        v222.size.height = v149;
                        v221.origin.x = v143;
                        *&v221.origin.y = v145;
                        v221.size.height = v144;
                        if (!CGRectEqualToRect(v221, v222))
                        {
                          CRRegister.wrappedValue.getter();
                          v150 = *(&v216 + 1);
                          v152 = v217;
                          v151 = v218;

                          [v46 setBounds_];
                        }

                        CRRegister.wrappedValue.getter();
                        v153 = v216;
                        v154 = *MEMORY[0x1E6978078];
                        if (![v46 valueForAnnotationKey_])
                        {
                          __break(1u);
                          return;
                        }

                        _bridgeAnyObjectToAny(_:)();
                        swift_unknownObjectRelease();
                        outlined init with take of Any(&v219, &v216);
                        swift_dynamicCast();
                        if (v153 == v215)
                        {
                        }

                        else
                        {
                          v155 = _stringCompareWithSmolCheck(_:_:expecting:)();

                          if ((v155 & 1) == 0)
                          {
                            CRRegister.wrappedValue.getter();
                            v156 = MEMORY[0x1DA6CCED0](v216, *(&v216 + 1));

                            [v46 setValue:v156 forAnnotationKey:v154];
                          }
                        }

                        __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMR);
                        v157 = v187;
                        CRRegister.wrappedValue.getter();
                        v158 = type metadata accessor for Color(0);
                        if ((*(*(v158 - 8) + 48))(v157, 1, v158) == 1)
                        {
                          outlined destroy of StocksKitCurrencyCache.Provider?(v157, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
                          v159 = v191;
                        }

                        else
                        {
                          v160 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithCGColor_];
                          outlined destroy of PDFAnnotationElement.Partial(v157, type metadata accessor for Color);
                          v161 = [v46 color];
                          type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIColor, 0x1E69DC888);
                          v162 = static NSObject.== infix(_:_:)();

                          v159 = v191;
                          if ((v162 & 1) == 0)
                          {
                            [v46 setColor_];
                          }
                        }

                        v163 = v188;
                        __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA7WeakRefVy8PaperKit20PDFAnnotationElementVGSgGMd, &_s9Coherence10CRRegisterVyAA7WeakRefVy8PaperKit20PDFAnnotationElementVGSgGMR);
                        CRRegister.wrappedValue.getter();
                        v164 = v190;
                        if ((*(v190 + 48))(v163, 1, v159) == 1)
                        {
                          outlined destroy of StocksKitCurrencyCache.Provider?(v163, &_s9Coherence7WeakRefVy8PaperKit20PDFAnnotationElementVGSgMd, &_s9Coherence7WeakRefVy8PaperKit20PDFAnnotationElementVGSgMR);
                          return;
                        }

                        (*(v164 + 32))(v135, v163, v159);
                        v165 = [v46 page];
                        if (v165)
                        {
                          v166 = v165;
                          type metadata accessor for PaperKitPDFPage(0);
                          v167 = swift_dynamicCastClass();
                          if (v167)
                          {
                            v168 = v180;
                            WeakRef.id.getter();
                            v169 = [v167 annotations];
                            type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for PDFAnnotation, 0x1E6978018);
                            v170 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

                            MEMORY[0x1EEE9AC00](v171);
                            *(&v179 - 2) = v168;
                            v167 = specialized Sequence.first(where:)(partial apply for closure #1 in PaperKitPDFPage.annotationFor(id:), (&v179 - 4), v170);

                            (*(v181 + 8))(v168, v182);
                          }

                          else
                          {
                          }
                        }

                        else
                        {
                          v167 = 0;
                        }

                        v174 = [v46 popup];
                        if (v174)
                        {
                          v175 = v174;
                          if (!v167)
                          {

LABEL_151:
                            [v46 setPopup_];
LABEL_152:

                            goto LABEL_153;
                          }

                          type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for PDFAnnotation, 0x1E6978018);
                          v167 = v167;
                          v176 = static NSObject.== infix(_:_:)();

                          if (v176)
                          {
                            goto LABEL_152;
                          }
                        }

                        else if (!v167)
                        {
LABEL_153:
                          (*(v164 + 8))(v135, v159);
                          return;
                        }

                        type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for PDFAnnotation, 0x1E6978018);
                        v177 = v46;
                        v167 = v167;
                        v178 = static NSObject.== infix(_:_:)();

                        if (v178)
                        {
                          (*(v164 + 8))(v135, v159);

                          return;
                        }

                        goto LABEL_151;
                      }
                    }

                    goto LABEL_119;
                  }

LABEL_84:
                  CRRegister.wrappedValue.getter();
                  if (*(&v216 + 1))
                  {
                    v112 = MEMORY[0x1DA6CCED0](v216, *(&v216 + 1));
                  }

                  else
                  {
                    v112 = 0;
                  }

                  [v46 setContents_];

                  goto LABEL_88;
                }
              }

              else if (!v111)
              {
                goto LABEL_88;
              }
            }

            else if (!*(&v106 + 1))
            {
              goto LABEL_88;
            }

            goto LABEL_84;
          }

LABEL_71:
          CRRegister.wrappedValue.getter();
          if (*(&v216 + 1))
          {
            v105 = MEMORY[0x1DA6CCED0](v216, *(&v216 + 1));
          }

          else
          {
            v105 = 0;
          }

          [v46 setWidgetStringValue_];

          goto LABEL_75;
        }
      }

      else if (!v84)
      {
        goto LABEL_75;
      }
    }

    else if (!*(&v79 + 1))
    {
      goto LABEL_75;
    }

    goto LABEL_71;
  }

LABEL_19:
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSSgGMd, &_s9Coherence10CRRegisterVySSSgGMR);
  CRRegister.wrappedValue.getter();
  v73 = v216;
  v74 = [v46 widgetStringValue];
  if (!v74)
  {
    if (!*(&v73 + 1))
    {
      goto LABEL_37;
    }

    goto LABEL_32;
  }

  v75 = v74;
  v76 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v78 = v77;

  if (!*(&v73 + 1))
  {
    if (!v78)
    {
      goto LABEL_37;
    }

    goto LABEL_32;
  }

  if (!v78)
  {
LABEL_32:

LABEL_33:
    CRRegister.wrappedValue.getter();
    if (*(&v216 + 1))
    {
      v85 = MEMORY[0x1DA6CCED0](v216, *(&v216 + 1));
    }

    else
    {
      v85 = 0;
    }

    [v46 setWidgetStringValue_];

    goto LABEL_37;
  }

  if (v73 == __PAIR128__(v78, v76))
  {

    goto LABEL_37;
  }

  v104 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v104 & 1) == 0)
  {
    goto LABEL_33;
  }

LABEL_37:
  v86 = *(v65 + 28);
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14SignatureValueVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit14SignatureValueVSgGMR);
  v213 = v86;
  v211 = v87;
  CRRegister.wrappedValue.getter();
  if ([v46 signatureAnnotationForRendering])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v219 = 0u;
    v220 = 0u;
  }

  v88 = v208;
  v89 = v202;
  v90 = v209;
  v216 = v219;
  v217 = v220;
  if (*(&v220 + 1))
  {
    v91 = swift_dynamicCast();
    (*(v89 + 56))(v90, v91 ^ 1u, 1, v88);
  }

  else
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(&v216, &_sypSgMd, &_sypSgMR);
    (*(v89 + 56))(v90, 1, 1, v88);
  }

  v92 = *(v200 + 48);
  v93 = v210;
  v94 = v201;
  outlined init with copy of Date?(v210, v201, &_s8PaperKit14SignatureValueVSgMd, &_s8PaperKit14SignatureValueVSgMR);
  v95 = v94;
  outlined init with copy of Date?(v90, v94 + v92, &_s8PaperKit14SignatureValueVSgMd, &_s8PaperKit14SignatureValueVSgMR);
  v96 = *(v89 + 48);
  if (v96(v95, 1, v88) != 1)
  {
    v97 = v192;
    outlined init with copy of Date?(v95, v192, &_s8PaperKit14SignatureValueVSgMd, &_s8PaperKit14SignatureValueVSgMR);
    if (v96(v95 + v92, 1, v88) != 1)
    {
      v101 = v95 + v92;
      v102 = v195;
      outlined init with take of PDFAnnotationElement.MutatingAction(v101, v195, type metadata accessor for SignatureValue);
      v103 = specialized static SignatureValue.== infix(_:_:)(v97, v102);
      outlined destroy of PDFAnnotationElement.Partial(v102, type metadata accessor for SignatureValue);
      outlined destroy of StocksKitCurrencyCache.Provider?(v210, &_s8PaperKit14SignatureValueVSgMd, &_s8PaperKit14SignatureValueVSgMR);
      outlined destroy of PDFAnnotationElement.Partial(v97, type metadata accessor for SignatureValue);
      outlined destroy of StocksKitCurrencyCache.Provider?(v95, &_s8PaperKit14SignatureValueVSgMd, &_s8PaperKit14SignatureValueVSgMR);
      v88 = v208;
      outlined destroy of StocksKitCurrencyCache.Provider?(v209, &_s8PaperKit14SignatureValueVSgMd, &_s8PaperKit14SignatureValueVSgMR);
      if (v103)
      {
        goto LABEL_53;
      }

LABEL_49:
      v98 = v199;
      CRRegister.wrappedValue.getter();
      if (v96(v98, 1, v88) == 1)
      {
        v99 = 0;
      }

      else
      {
        outlined init with copy of PDFAnnotationElement.Partial(v98, v195, type metadata accessor for SignatureValue);
        v99 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
        outlined destroy of PDFAnnotationElement.Partial(v98, type metadata accessor for SignatureValue);
      }

      [v46 setSignatureAnnotationForRendering_];
      swift_unknownObjectRelease();
      [v46 updateAnnotationEffect];
      goto LABEL_53;
    }

    outlined destroy of StocksKitCurrencyCache.Provider?(v210, &_s8PaperKit14SignatureValueVSgMd, &_s8PaperKit14SignatureValueVSgMR);
    outlined destroy of PDFAnnotationElement.Partial(v97, type metadata accessor for SignatureValue);
LABEL_48:
    outlined destroy of StocksKitCurrencyCache.Provider?(v95, &_s8PaperKit14SignatureValueVSg_ADtMd, &_s8PaperKit14SignatureValueVSg_ADtMR);
    outlined destroy of StocksKitCurrencyCache.Provider?(v209, &_s8PaperKit14SignatureValueVSgMd, &_s8PaperKit14SignatureValueVSgMR);
    goto LABEL_49;
  }

  outlined destroy of StocksKitCurrencyCache.Provider?(v93, &_s8PaperKit14SignatureValueVSgMd, &_s8PaperKit14SignatureValueVSgMR);
  if (v96(v95 + v92, 1, v88) != 1)
  {
    goto LABEL_48;
  }

  outlined destroy of StocksKitCurrencyCache.Provider?(v95, &_s8PaperKit14SignatureValueVSgMd, &_s8PaperKit14SignatureValueVSgMR);
  outlined destroy of StocksKitCurrencyCache.Provider?(v209, &_s8PaperKit14SignatureValueVSgMd, &_s8PaperKit14SignatureValueVSgMR);
LABEL_53:
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13PDFFieldFlagsVGMd, &_s9Coherence10CRRegisterVy8PaperKit13PDFFieldFlagsVGMR);
  CRRegister.wrappedValue.getter();
  v100 = v215;
  if ([v46 valueForAnnotationKey_])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v219 = 0u;
    v220 = 0u;
  }

  v216 = v219;
  v217 = v220;
  if (*(&v220 + 1))
  {
    if (swift_dynamicCast())
    {
      if (v100 == v214)
      {
        return;
      }

LABEL_62:
      CRRegister.wrappedValue.getter();
      [v46 setReadOnly_];
      return;
    }
  }

  else
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(&v216, &_sypSgMd, &_sypSgMR);
  }

  if (v100)
  {
    goto LABEL_62;
  }
}

id specialized PDFAnnotationElement.newPDFAnnotation<A>(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMd, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMR);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v10 - v1;
  type metadata accessor for PDFAnnotationElement(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit20PDFAnnotationElementV15AnnotationShapeVGMd, &_s9Coherence10CRRegisterVy8PaperKit20PDFAnnotationElementV15AnnotationShapeVGMR);
  CRRegister.wrappedValue.getter();
  v3 = *(&v10 + 1);
  v5 = v11;
  v4 = *&v12;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSGMd, &_s9Coherence10CRRegisterVySSGMR);
  CRRegister.wrappedValue.getter();
  v6 = MEMORY[0x1DA6CCED0](v17[0], v17[1]);

  v7 = [objc_allocWithZone(type metadata accessor for CanvasElementPDFAnnotation(0)) initWithBounds:v6 forType:0 withProperties:{v3, v5, v4}];

  v17[0] = 0x8000000000000000;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMR);
  (*(*(v8 - 8) + 56))(v2, 1, 1, v8);
  v10 = xmmword_1D405D330;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  memset(v16, 0, sizeof(v16));
  specialized PDFAnnotationElement.update<A>(use:ref:pdfAnnotation:capsule:options:)(v17, v2, v7);
  outlined destroy of StocksKitCurrencyCache.Provider?(&v10, &_s8PaperKit0A17RenderableOptionsVSgMd, &_s8PaperKit0A17RenderableOptionsVSgMR);
  outlined destroy of StocksKitCurrencyCache.Provider?(v2, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMd, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMR);
  return v7;
}

void specialized PDFAnnotationElement.update<A>(use:ref:pdfAnnotation:in:capsule:options:)(unint64_t *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *a1;
  type metadata accessor for Capsule();
  swift_getWitnessTable();
  specialized PDFAnnotationElement.update<A>(use:ref:pdfAnnotation:capsule:options:)(&v8, a2, a3);
}

uint64_t specialized PDFAnnotationElement.applyDifference<A, B>(id:in:from:)(uint64_t a1, void (*a2)(char *, uint64_t), uint64_t a3, void (*a4)(char *, char *, uint64_t, __n128), uint64_t a5, char *a6)
{
  v152 = a6;
  v151 = a4;
  v150 = a2;
  v149 = a1;
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA7WeakRefVy8PaperKit20PDFAnnotationElementVGSgGMd, &_s9Coherence10CRRegisterVyAA7WeakRefVy8PaperKit20PDFAnnotationElementVGSgGMR);
  v144 = *(v145 - 8);
  MEMORY[0x1EEE9AC00](v145);
  v143 = &v111 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v142 = &v111 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit20PDFAnnotationElementVGSgMd, &_s9Coherence7WeakRefVy8PaperKit20PDFAnnotationElementVGSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v141 = &v111 - v10;
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSGMd, &_s9Coherence10CRRegisterVySSGMR);
  v139 = *(v140 - 8);
  MEMORY[0x1EEE9AC00](v140);
  v138 = &v111 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v137 = &v111 - v13;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit20PDFAnnotationElementV15AnnotationShapeVGMd, &_s9Coherence10CRRegisterVy8PaperKit20PDFAnnotationElementV15AnnotationShapeVGMR);
  v135 = *(v136 - 8);
  MEMORY[0x1EEE9AC00](v136);
  v134 = &v111 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v133 = &v111 - v16;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy10Foundation4DateVSgGMd, &_s9Coherence10CRRegisterVy10Foundation4DateVSgGMR);
  v131 = *(v132 - 8);
  MEMORY[0x1EEE9AC00](v132);
  v130 = &v111 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v129 = &v111 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v128 = &v111 - v21;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySiGMd, &_s9Coherence10CRRegisterVySiGMR);
  v126 = *(v127 - 8);
  MEMORY[0x1EEE9AC00](v127);
  v125 = &v111 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v124 = &v111 - v24;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMR);
  v122 = *(v123 - 8);
  MEMORY[0x1EEE9AC00](v123);
  v121 = &v111 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v120 = &v111 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v119 = &v111 - v29;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13PDFFieldFlagsVGMd, &_s9Coherence10CRRegisterVy8PaperKit13PDFFieldFlagsVGMR);
  v117 = *(v118 - 8);
  MEMORY[0x1EEE9AC00](v118);
  v116 = &v111 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v153 = &v111 - v32;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14SignatureValueVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit14SignatureValueVSgGMR);
  v114 = *(v115 - 8);
  MEMORY[0x1EEE9AC00](v115);
  v113 = &v111 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v112 = &v111 - v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit14SignatureValueVSgMd, &_s8PaperKit14SignatureValueVSgMR);
  MEMORY[0x1EEE9AC00](v36 - 8);
  v111 = &v111 - v37;
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSSgGMd, &_s9Coherence10CRRegisterVySSSgGMR);
  v154 = *(v148 - 8);
  MEMORY[0x1EEE9AC00](v148);
  v147 = &v111 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v146 = &v111 - v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit20PDFAnnotationElementVSgMd, &_s8PaperKit20PDFAnnotationElementVSgMR);
  MEMORY[0x1EEE9AC00](v41 - 8);
  v43 = &v111 - v42;
  v44 = type metadata accessor for CRKeyPath();
  v45 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v47 = &v111 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit20PDFAnnotationElementVGMd, &_s9Coherence7WeakRefVy8PaperKit20PDFAnnotationElementVGMR);
  v49 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v51 = &v111 - v50;
  v52 = type metadata accessor for PDFAnnotationElement(0);
  v53 = *(v52 - 8);
  v54 = MEMORY[0x1EEE9AC00](v52);
  v56 = &v111 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v45 + 16))(v47, v149, v44, v54);
  lazy protocol witness table accessor for type CGPoint and conformance CGPoint(&lazy protocol witness table cache variable for type PDFAnnotationElement and conformance PDFAnnotationElement, type metadata accessor for PDFAnnotationElement, &protocol conformance descriptor for PDFAnnotationElement);
  WeakRef.init(id:)();
  WeakRef.subscript.getter();
  (*(v49 + 8))(v51, v48);
  if ((*(v53 + 48))(v43, 1, v52) == 1)
  {
    return outlined destroy of StocksKitCurrencyCache.Provider?(v43, &_s8PaperKit20PDFAnnotationElementVSgMd, &_s8PaperKit20PDFAnnotationElementVSgMR);
  }

  outlined init with take of PDFAnnotationElement.MutatingAction(v43, v56, type metadata accessor for PDFAnnotationElement);
  v58 = v148;
  CRRegister.wrappedValue.getter();
  v59 = v160;
  v60 = *&v161;
  v61 = v146;
  CRRegister.projectedValue.getter();
  specialized CRRegister<>.setIfDifferent(_:)(v59, v60);

  v62 = v154;
  v151 = *(v154 + 16);
  (v151)(v147, v61, v58);
  CRRegister.projectedValue.setter();
  v63 = *(v62 + 8);
  v154 = v62 + 8;
  v150 = v63;
  v63(v61, v58);
  v64 = v111;
  v65 = v115;
  CRRegister.wrappedValue.getter();
  v66 = v112;
  CRRegister.projectedValue.getter();
  specialized CRRegister<>.setIfDifferent(_:)(v64);
  outlined destroy of StocksKitCurrencyCache.Provider?(v64, &_s8PaperKit14SignatureValueVSgMd, &_s8PaperKit14SignatureValueVSgMR);
  v67 = v114;
  (*(v114 + 16))(v113, v66, v65);
  CRRegister.projectedValue.setter();
  (*(v67 + 8))(v66, v65);
  v152 = v56;
  v68 = v118;
  CRRegister.wrappedValue.getter();
  v69 = v160;
  CRRegister.projectedValue.getter();
  CRRegister.value.getter();
  if (v155 != v69)
  {
    v155 = v69;
    CRRegister.value.setter();
  }

  v70 = v117;
  v71 = v153;
  (*(v117 + 16))(v116, v153, v68);
  CRRegister.projectedValue.setter();
  (*(v70 + 8))(v71, v68);
  v72 = v148;
  CRRegister.wrappedValue.getter();
  v73 = v160;
  v74 = *&v161;
  v75 = v146;
  CRRegister.projectedValue.getter();
  specialized CRRegister<>.setIfDifferent(_:)(v73, v74);

  (v151)(v147, v75, v72);
  CRRegister.projectedValue.setter();
  v150(v75, v72);
  v76 = v119;
  v77 = v123;
  CRRegister.wrappedValue.getter();
  v78 = v120;
  CRRegister.projectedValue.getter();
  specialized CRRegister<>.setIfDifferent(_:)(v76);
  outlined destroy of StocksKitCurrencyCache.Provider?(v76, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
  v79 = v122;
  (*(v122 + 16))(v121, v78, v77);
  CRRegister.projectedValue.setter();
  (*(v79 + 8))(v78, v77);
  v80 = v127;
  CRRegister.wrappedValue.getter();
  v81 = v160;
  v82 = v124;
  CRRegister.projectedValue.getter();
  CRRegister.value.getter();
  if (v160 != v81)
  {
    v160 = v81;
    CRRegister.value.setter();
  }

  v83 = v126;
  (*(v126 + 16))(v125, v82, v80);
  CRRegister.projectedValue.setter();
  (*(v83 + 8))(v82, v80);
  v84 = v128;
  v85 = v132;
  CRRegister.wrappedValue.getter();
  v86 = v129;
  CRRegister.projectedValue.getter();
  specialized CRRegister<>.setIfDifferent(_:)(v84);
  outlined destroy of StocksKitCurrencyCache.Provider?(v84, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v87 = v131;
  (*(v131 + 16))(v130, v86, v85);
  CRRegister.projectedValue.setter();
  (*(v87 + 8))(v86, v85);
  v88 = v136;
  CRRegister.wrappedValue.getter();
  v89 = v160;
  v90 = v161;
  v91 = v162;
  v92 = v163;
  v93 = v164;
  v94 = v133;
  CRRegister.projectedValue.getter();
  CRRegister.value.getter();
  v95 = v156;
  v96 = v157;
  v97 = v158;
  v98 = v159;
  v99 = v140;
  v100 = v137;
  if (v155)
  {
    if (!v89 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZSo7CGPointV_Tt1g5(v155, v89) & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  else if (v89)
  {
    goto LABEL_14;
  }

  v165.origin.x = v95;
  v165.origin.y = v96;
  v165.size.width = v97;
  v165.size.height = v98;
  v166.origin.x = v90;
  v166.origin.y = v91;
  v166.size.width = v92;
  v166.size.height = v93;
  if (CGRectEqualToRect(v165, v166))
  {

    goto LABEL_15;
  }

LABEL_14:

  v155 = v89;
  v156 = v90;
  v157 = v91;
  v158 = v92;
  v159 = v93;
  CRRegister.value.setter();
LABEL_15:
  v101 = v135;
  (*(v135 + 16))(v134, v94, v88);
  CRRegister.projectedValue.setter();
  (*(v101 + 8))(v94, v88);
  v102 = v152;
  CRRegister.wrappedValue.getter();
  v104 = v160;
  v103 = v161;
  CRRegister.projectedValue.getter();
  CRRegister.value.getter();
  if (v160 == v104 && *&v161 == *&v103)
  {
  }

  else
  {
    v105 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v105)
    {
    }

    else
    {
      v160 = v104;
      v161 = v103;
      CRRegister.value.setter();
    }
  }

  v106 = v139;
  (*(v139 + 16))(v138, v100, v99);
  CRRegister.projectedValue.setter();
  (*(v106 + 8))(v100, v99);
  v107 = v141;
  v108 = v145;
  CRRegister.wrappedValue.getter();
  v109 = v142;
  CRRegister.projectedValue.getter();
  specialized CRRegister<>.setIfDifferent(_:)(v107);
  outlined destroy of StocksKitCurrencyCache.Provider?(v107, &_s9Coherence7WeakRefVy8PaperKit20PDFAnnotationElementVGSgMd, &_s9Coherence7WeakRefVy8PaperKit20PDFAnnotationElementVGSgMR);
  v110 = v144;
  (*(v144 + 16))(v143, v109, v108);
  CRRegister.projectedValue.setter();
  (*(v110 + 8))(v109, v108);
  return outlined destroy of PDFAnnotationElement.Partial(v102, type metadata accessor for PDFAnnotationElement);
}

uint64_t outlined destroy of PDFAnnotationElement.Partial(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with copy of PDFAnnotationElement.Partial(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void type metadata completion function for PDFAnnotationElement(uint64_t a1)
{
  type metadata accessor for CRRegister<String?>(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for CRRegister<WeakRef<PDFAnnotationElement>?>(319, &lazy cache variable for type metadata for CRRegister<Color?>, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR, lazy protocol witness table accessor for type Color? and conformance <A> A?);
    if (v2 <= 0x3F)
    {
      type metadata accessor for CRRegister<WeakRef<PDFAnnotationElement>?>(319, &lazy cache variable for type metadata for CRRegister<SignatureValue?>, &_s8PaperKit14SignatureValueVSgMd, &_s8PaperKit14SignatureValueVSgMR, lazy protocol witness table accessor for type SignatureValue? and conformance <A> A?);
      if (v3 <= 0x3F)
      {
        type metadata accessor for CRRegister<Int>(319, &lazy cache variable for type metadata for CRRegister<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E6995520]);
        if (v4 <= 0x3F)
        {
          type metadata accessor for CRRegister<Date?>(319);
          if (v5 <= 0x3F)
          {
            type metadata accessor for CRRegister<PDFAnnotationElement.AnnotationShape>(319, &lazy cache variable for type metadata for CRRegister<PDFAnnotationElement.AnnotationShape>, lazy protocol witness table accessor for type PDFAnnotationElement.AnnotationShape and conformance PDFAnnotationElement.AnnotationShape, &type metadata for PDFAnnotationElement.AnnotationShape);
            if (v6 <= 0x3F)
            {
              type metadata accessor for CRRegister<Int>(319, &lazy cache variable for type metadata for CRRegister<String>, MEMORY[0x1E69E6158], MEMORY[0x1E6995500]);
              if (v7 <= 0x3F)
              {
                type metadata accessor for CRRegister<PDFAnnotationElement.AnnotationShape>(319, &lazy cache variable for type metadata for CRRegister<PDFFieldFlags>, lazy protocol witness table accessor for type PDFFieldFlags and conformance PDFFieldFlags, &type metadata for PDFFieldFlags);
                if (v8 <= 0x3F)
                {
                  type metadata accessor for CRRegister<WeakRef<PDFAnnotationElement>?>(319, &lazy cache variable for type metadata for CRRegister<WeakRef<PDFAnnotationElement>?>, &_s9Coherence7WeakRefVy8PaperKit20PDFAnnotationElementVGSgMd, &_s9Coherence7WeakRefVy8PaperKit20PDFAnnotationElementVGSgMR, lazy protocol witness table accessor for type WeakRef<PDFAnnotationElement>? and conformance <A> A?);
                  if (v9 <= 0x3F)
                  {
                    type metadata accessor for UnknownProperties();
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

void type metadata accessor for CRRegister<String?>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for CRRegister<String?>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSSSgMd, &_sSSSgMR);
    lazy protocol witness table accessor for type Date? and conformance <A> A?(&lazy protocol witness table cache variable for type String? and conformance <A> A?, &_sSSSgMd, &_sSSSgMR);
    v1 = type metadata accessor for CRRegister();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for CRRegister<String?>);
    }
  }
}

void type metadata accessor for CRRegister<WeakRef<PDFAnnotationElement>?>(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    a5();
    v7 = type metadata accessor for CRRegister();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void type metadata accessor for CRRegister<Date?>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for CRRegister<Date?>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    lazy protocol witness table accessor for type Date? and conformance <A> A?(&lazy protocol witness table cache variable for type Date? and conformance <A> A?, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v1 = type metadata accessor for CRRegister();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for CRRegister<Date?>);
    }
  }
}

void type metadata accessor for CRRegister<Int>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (!*a2)
  {
    v5 = type metadata accessor for CRRegister();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void type metadata accessor for CRRegister<PDFAnnotationElement.AnnotationShape>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  if (!*a2)
  {
    a3();
    v5 = type metadata accessor for CRRegister();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for PDFAnnotationElement.AnnotationShape(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t storeEnumTagSinglePayload for PDFAnnotationElement.AnnotationShape(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

void type metadata completion function for PDFAnnotationElement.ObservableDifference(uint64_t a1)
{
  type metadata accessor for CRValueObservableDifference?(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Ref<PKStrokeInheritedProperties>.ObservableDifference?(319, &lazy cache variable for type metadata for WeakRef<PDFAnnotationElement>.ObservableDifference?, &_s9Coherence7WeakRefV20ObservableDifferenceOy8PaperKit20PDFAnnotationElementV_GMd, &_s9Coherence7WeakRefV20ObservableDifferenceOy8PaperKit20PDFAnnotationElementV_GMR);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for CRValueObservableDifference?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for CRValueObservableDifference?)
  {
    type metadata accessor for CRValueObservableDifference();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for CRValueObservableDifference?);
    }
  }
}

void type metadata completion function for PDFAnnotationElement.MutatingAction(uint64_t a1)
{
  type metadata accessor for Ref<PKStrokeInheritedProperties>.ObservableDifference?(319, &lazy cache variable for type metadata for CRRegister<String?>.MutatingAction?, &_s9Coherence10CRRegisterV14MutatingActionVySSSg_GMd, &_s9Coherence10CRRegisterV14MutatingActionVySSSg_GMR);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Ref<PKStrokeInheritedProperties>.ObservableDifference?(319, &lazy cache variable for type metadata for CRRegister<Color?>.MutatingAction?, &_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit5ColorVSg_GMd, &_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit5ColorVSg_GMR);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Ref<PKStrokeInheritedProperties>.ObservableDifference?(319, &lazy cache variable for type metadata for CRRegister<SignatureValue?>.MutatingAction?, &_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit14SignatureValueVSg_GMd, &_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit14SignatureValueVSg_GMR);
      if (v3 <= 0x3F)
      {
        type metadata accessor for Ref<PKStrokeInheritedProperties>.ObservableDifference?(319, &lazy cache variable for type metadata for CRRegister<Int>.MutatingAction?, &_s9Coherence10CRRegisterV14MutatingActionVySi_GMd, &_s9Coherence10CRRegisterV14MutatingActionVySi_GMR);
        if (v4 <= 0x3F)
        {
          type metadata accessor for Ref<PKStrokeInheritedProperties>.ObservableDifference?(319, &lazy cache variable for type metadata for CRRegister<Date?>.MutatingAction?, &_s9Coherence10CRRegisterV14MutatingActionVy10Foundation4DateVSg_GMd, &_s9Coherence10CRRegisterV14MutatingActionVy10Foundation4DateVSg_GMR);
          if (v5 <= 0x3F)
          {
            type metadata accessor for Ref<PKStrokeInheritedProperties>.ObservableDifference?(319, &lazy cache variable for type metadata for CRRegister<PDFAnnotationElement.AnnotationShape>.MutatingAction?, &_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit20PDFAnnotationElementV15AnnotationShapeV_GMd, &_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit20PDFAnnotationElementV15AnnotationShapeV_GMR);
            if (v6 <= 0x3F)
            {
              type metadata accessor for Ref<PKStrokeInheritedProperties>.ObservableDifference?(319, &lazy cache variable for type metadata for CRRegister<String>.MutatingAction?, &_s9Coherence10CRRegisterV14MutatingActionVySS_GMd, &_s9Coherence10CRRegisterV14MutatingActionVySS_GMR);
              if (v7 <= 0x3F)
              {
                type metadata accessor for Ref<PKStrokeInheritedProperties>.ObservableDifference?(319, &lazy cache variable for type metadata for CRRegister<PDFFieldFlags>.MutatingAction?, &_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit13PDFFieldFlagsV_GMd, &_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit13PDFFieldFlagsV_GMR);
                if (v8 <= 0x3F)
                {
                  type metadata accessor for Ref<PKStrokeInheritedProperties>.ObservableDifference?(319, &lazy cache variable for type metadata for CRRegister<WeakRef<PDFAnnotationElement>?>.MutatingAction?, &_s9Coherence10CRRegisterV14MutatingActionVyAA7WeakRefVy8PaperKit20PDFAnnotationElementVGSg_GMd, &_s9Coherence10CRRegisterV14MutatingActionVyAA7WeakRefVy8PaperKit20PDFAnnotationElementVGSg_GMR);
                  if (v9 <= 0x3F)
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

void type metadata completion function for PDFAnnotationElement.Partial(uint64_t a1)
{
  type metadata accessor for Ref<PKStrokeInheritedProperties>.ObservableDifference?(319, &lazy cache variable for type metadata for CRRegister<String?>?, &_s9Coherence10CRRegisterVySSSgGMd, &_s9Coherence10CRRegisterVySSSgGMR);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Ref<PKStrokeInheritedProperties>.ObservableDifference?(319, &lazy cache variable for type metadata for CRRegister<Color?>?, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMR);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Ref<PKStrokeInheritedProperties>.ObservableDifference?(319, &lazy cache variable for type metadata for CRRegister<SignatureValue?>?, &_s9Coherence10CRRegisterVy8PaperKit14SignatureValueVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit14SignatureValueVSgGMR);
      if (v3 <= 0x3F)
      {
        type metadata accessor for Ref<PKStrokeInheritedProperties>.ObservableDifference?(319, &lazy cache variable for type metadata for CRRegister<Int>?, &_s9Coherence10CRRegisterVySiGMd, &_s9Coherence10CRRegisterVySiGMR);
        if (v4 <= 0x3F)
        {
          type metadata accessor for Ref<PKStrokeInheritedProperties>.ObservableDifference?(319, &lazy cache variable for type metadata for CRRegister<Date?>?, &_s9Coherence10CRRegisterVy10Foundation4DateVSgGMd, &_s9Coherence10CRRegisterVy10Foundation4DateVSgGMR);
          if (v5 <= 0x3F)
          {
            type metadata accessor for Ref<PKStrokeInheritedProperties>.ObservableDifference?(319, &lazy cache variable for type metadata for CRRegister<PDFAnnotationElement.AnnotationShape>?, &_s9Coherence10CRRegisterVy8PaperKit20PDFAnnotationElementV15AnnotationShapeVGMd, &_s9Coherence10CRRegisterVy8PaperKit20PDFAnnotationElementV15AnnotationShapeVGMR);
            if (v6 <= 0x3F)
            {
              type metadata accessor for Ref<PKStrokeInheritedProperties>.ObservableDifference?(319, &lazy cache variable for type metadata for CRRegister<String>?, &_s9Coherence10CRRegisterVySSGMd, &_s9Coherence10CRRegisterVySSGMR);
              if (v7 <= 0x3F)
              {
                type metadata accessor for Ref<PKStrokeInheritedProperties>.ObservableDifference?(319, &lazy cache variable for type metadata for CRRegister<PDFFieldFlags>?, &_s9Coherence10CRRegisterVy8PaperKit13PDFFieldFlagsVGMd, &_s9Coherence10CRRegisterVy8PaperKit13PDFFieldFlagsVGMR);
                if (v8 <= 0x3F)
                {
                  type metadata accessor for Ref<PKStrokeInheritedProperties>.ObservableDifference?(319, &lazy cache variable for type metadata for CRRegister<WeakRef<PDFAnnotationElement>?>?, &_s9Coherence10CRRegisterVyAA7WeakRefVy8PaperKit20PDFAnnotationElementVGSgGMd, &_s9Coherence10CRRegisterVyAA7WeakRefVy8PaperKit20PDFAnnotationElementVGSgGMR);
                  if (v9 <= 0x3F)
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

uint64_t outlined init with take of PDFAnnotationElement.MutatingAction(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void partial apply for specialized closure #1 in CanvasElementPDFAnnotation.encodePaperKit<A>(_:capsule:ref:writeHash:writeType:)(void *a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit20PDFAnnotationElementVGSgMd, &_s9Coherence7CapsuleVy8PaperKit20PDFAnnotationElementVGSgMR) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMd, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMR) - 8);
  v7 = (v5 + *(v6 + 80) + 8) & ~*(v6 + 80);
  v8 = v7 + *(v6 + 64);
  v9 = *(v1 + v5);
  v10 = *(v1 + v8);
  v11 = v1 + (v8 & 0xFFFFFFFFFFFFFFF8);
  v12 = *(v11 + 8);
  v13 = *(v11 + 16);

  specialized closure #1 in CanvasElementPDFAnnotation.encodePaperKit<A>(_:capsule:ref:writeHash:writeType:)(a1, v1 + v4, v9, v1 + v7, v10, v12, v13);
}

{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVyAA10CRRegisterVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGGSgMd, &_s9Coherence7CapsuleVyAA10CRRegisterVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGGSgMR) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMd, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMR) - 8);
  v7 = (v5 + *(v6 + 80) + 8) & ~*(v6 + 80);
  specialized closure #1 in CanvasElementPDFAnnotation.encodePaperKit<A>(_:capsule:ref:writeHash:writeType:)(a1, v1 + v4, *(v1 + v5), v1 + v7, *(v1 + v7 + *(v6 + 64)), *(v1 + ((v7 + *(v6 + 64)) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + ((v7 + *(v6 + 64)) & 0xFFFFFFFFFFFFFFF8) + 16), &_s9Coherence7CapsuleVyAA10CRRegisterVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGGSgMd, &_s9Coherence7CapsuleVyAA10CRRegisterVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGGSgMR, &_s9Coherence7CapsuleVyAA10CRRegisterVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGGMd, &_s9Coherence7CapsuleVyAA10CRRegisterVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGGMR);
}

{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVyAA10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGGSgMd, &_s9Coherence7CapsuleVyAA10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGGSgMR) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMd, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMR) - 8);
  v7 = (v5 + *(v6 + 80) + 8) & ~*(v6 + 80);
  v8 = v7 + *(v6 + 64);
  v9 = *(v1 + v5);
  v10 = *(v1 + v8);
  v11 = v1 + (v8 & 0xFFFFFFFFFFFFFFF8);
  v12 = *(v11 + 8);
  v13 = *(v11 + 16);

  specialized closure #1 in CanvasElementPDFAnnotation.encodePaperKit<A>(_:capsule:ref:writeHash:writeType:)(a1, v1 + v4, v9, v1 + v7, v10, v12, v13);
}

unint64_t outlined copy of PaperDocument.PDFDocumentUse(unint64_t result)
{
  if (result >> 62)
  {
    if (result >> 62 != 1)
    {
      return result;
    }

    result &= 0x3FFFFFFFFFFFFFFFuLL;
  }

  return result;
}

void closure #1 in UITextView.enumeratePaperTextAttachments(in:createIfNeeded:options:using:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, char a6, uint64_t a7)
{
  outlined init with copy of Any?(a1, v29);
  if (!v30)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v29, &_sypSgMd, &_sypSgMR);
    return;
  }

  type metadata accessor for NSTextAttachment();
  if (swift_dynamicCast())
  {
    v13 = [v28 fileType];
    if (v13)
    {
      v26 = a7;
      v14 = v13;
      v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v17 = v16;

      if (v15 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v17 == v18)
      {
      }

      else
      {
        v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v20 & 1) == 0)
        {
          goto LABEL_18;
        }
      }

      v21 = [a5 _pk_viewProviderForAttachment_atCharacterIndex_createIfNeeded_];
      if (v21)
      {
        v22 = v21;
        v23 = [v21 view];
        if (v23)
        {
          v24 = v23;
          type metadata accessor for PaperTextAttachmentView(0);
          v25 = swift_dynamicCastClass();
          if (v25)
          {
            v27(v25, a2, a3, a4);
          }

          else
          {
          }

          return;
        }
      }
    }

LABEL_18:
  }
}

void closure #1 in UITextView.enumeratePaperDocumentTextAttachments(in:createIfNeeded:options:using:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, char a6, uint64_t a7, uint64_t a8)
{
  outlined init with copy of Any?(a1, v31);
  if (!v32)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v31, &_sypSgMd, &_sypSgMR);
    return;
  }

  type metadata accessor for NSTextAttachment();
  if (swift_dynamicCast())
  {
    v15 = [v30 fileType];
    if (v15)
    {
      v28 = a7;
      v16 = v15;
      v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v19 = v18;

      if (v17 == 0xD000000000000013 && 0x80000001D40838D0 == v19)
      {
      }

      else
      {
        v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v21 & 1) == 0)
        {
          goto LABEL_20;
        }
      }

      v22 = [a5 _pk_viewProviderForAttachment_atCharacterIndex_createIfNeeded_];
      if (v22)
      {
        v23 = v22;
        v24 = [v22 view];
        if (v24)
        {
          v25 = v24;
          swift_getObjectType();
          if (!swift_conformsToProtocol2())
          {
LABEL_23:

            return;
          }

          v26 = v25;
          v25 = specialized UIView.firstDescendent(where:)(v26);

          if (v25)
          {
            type metadata accessor for PaperDocumentView(0);
            v27 = swift_dynamicCastClass();
            if (v27)
            {
              v29(v27, a2, a3, a4);

              return;
            }

            goto LABEL_23;
          }
        }
      }
    }

LABEL_20:
  }
}

uint64_t outlined init with copy of Any?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t type metadata accessor for NSTextAttachment()
{
  result = lazy cache variable for type metadata for NSTextAttachment;
  if (!lazy cache variable for type metadata for NSTextAttachment)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSTextAttachment);
  }

  return result;
}

void closure #2 in UITextView._ppk_registerUndo(_:selection:undoManager:paperIdentifier:analyticsEvents:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, NSObject *a6, uint64_t a7, char a8, uint64_t a9)
{
  v39 = 0;
  v13 = [a1 textStorage];
  v14 = *MEMORY[0x1E69DB5F8];
  v15 = [a1 textStorage];
  v16 = [v15 length];

  v17 = swift_allocObject();
  v17[2] = a2;
  v17[3] = a3;
  v17[4] = &v39;
  v17[5] = a1;
  v18 = swift_allocObject();
  *(v18 + 16) = closure #1 in UITextView._ppk_paperTextAttachmentView(from:)partial apply;
  *(v18 + 24) = v17;
  v37 = thunk for @callee_guaranteed (@in_guaranteed Any?, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ()partial apply;
  v38 = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@in_guaranteed Any?, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ();
  v36 = &block_descriptor_14;
  v19 = _Block_copy(aBlock);

  v20 = a1;

  [v13 enumerateAttribute:v14 inRange:0 options:v16 usingBlock:{0, v19}];

  _Block_release(v19);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    goto LABEL_15;
  }

  v22 = v39;

  if (!v22)
  {
    goto LABEL_10;
  }

  MEMORY[0x1EEE9AC00](v23);
  specialized Canvas.undoable(newChange:persistSelection:action:)(1, v24, partial apply for specialized closure #1 in Canvas.applyUndo(_:selection:));
  if (a5)
  {

    v25 = a8 & 1;
    v26 = a5;
    v27 = a6;
    v28 = a7;
LABEL_8:
    AnyCanvas.selection.setter(v26, v27, v28, v25);
    goto LABEL_9;
  }

  v29 = *&v22[OBJC_IVAR____TtC8PaperKit9AnyCanvas_resizeView];
  if (!v29)
  {
LABEL_15:
    __break(1u);
    return;
  }

  if (*(v29 + OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection + 24) == 1)
  {
    v26 = MEMORY[0x1E69E7CD0];
    v27 = MEMORY[0x1E69E7CD0];
    v28 = 6;
    v25 = 0;
    goto LABEL_8;
  }

LABEL_9:

LABEL_10:
  v30 = *(a9 + 16);
  if (v30)
  {
    v31 = a9 + 32;
    do
    {
      outlined init with copy of FindResult(v31, aBlock);
      __swift_mutable_project_boxed_opaque_existential_1(aBlock, v36);
      AnalyticsEvent.send()();
      __swift_destroy_boxed_opaque_existential_0(aBlock);
      v31 += 40;
      --v30;
    }

    while (v30);
  }
}

void closure #1 in UITextView._ppk_registerUndo(_:undoManager:paperIdentifier:)(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void *))
{
  v19 = 0;
  v7 = [a1 textStorage];
  v8 = *MEMORY[0x1E69DB5F8];
  v9 = [a1 textStorage];
  v10 = [v9 length];

  v11 = swift_allocObject();
  v11[2] = a2;
  v11[3] = a3;
  v11[4] = &v19;
  v11[5] = a1;
  v12 = swift_allocObject();
  *(v12 + 16) = partial apply for closure #1 in UITextView._ppk_paperTextAttachmentView(from:);
  *(v12 + 24) = v11;
  aBlock[4] = partial apply for thunk for @callee_guaranteed (@in_guaranteed Any?, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ();
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@in_guaranteed Any?, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ();
  aBlock[3] = &block_descriptor_7;
  v13 = _Block_copy(aBlock);

  v14 = a1;

  [v7 enumerateAttribute:v8 inRange:0 options:v10 usingBlock:{0, v13}];

  _Block_release(v13);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v16 = v19;

    if (v16)
    {
      a4(v16);
    }
  }
}

void closure #1 in UITextView._ppk_paperTextAttachmentView(from:)(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t a5, uint64_t a6, void **a7, void *a8)
{
  outlined init with copy of Any?(a1, v27);
  if (!v28)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v27, &_sypSgMd, &_sypSgMR);
    return;
  }

  type metadata accessor for NSTextAttachment();
  if ((swift_dynamicCast() & 1) == 0)
  {
    return;
  }

  v14 = v26;
  v15 = swift_dynamicCastObjCProtocolConditional();
  if (v15)
  {
    v16 = v15;
    v14 = v26;
    v17 = [v16 _paperIdentifier];
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;

    if (v18 == a5 && v20 == a6)
    {
    }

    else
    {
      v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v21 & 1) == 0)
      {

        goto LABEL_16;
      }
    }

    v22 = [a8 _pk_viewProviderForAttachment_atCharacterIndex_createIfNeeded_];

    if (v22)
    {
      v23 = [v22 view];

      if (v23)
      {
        type metadata accessor for PaperTextAttachmentView(0);
        v24 = swift_dynamicCastClass();
        if (v24)
        {
LABEL_14:
          v25 = *a7;
          *a7 = v24;

          *a4 = 1;
          goto LABEL_16;
        }
      }
    }

    v24 = 0;
    goto LABEL_14;
  }

LABEL_16:
}

void specialized closure #1 in Canvas.applyUndo(_:selection:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence17CapsuleUndoActionVSgMd, &_s9Coherence17CapsuleUndoActionVSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v15 - v9;
  v11 = type metadata accessor for CapsuleUndoAction();
  v12 = *(v11 - 8);
  (*(v12 + 16))(v10, a2, v11);
  (*(v12 + 56))(v10, 0, 1, v11);
  v13 = *(a1 + direct field offset for Canvas.paperView);
  swift_beginAccess();
  v14 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  Capsule.apply(_:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v10, &_s9Coherence17CapsuleUndoActionVSgMd, &_s9Coherence17CapsuleUndoActionVSgMR);
  swift_endAccess();
}

double block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t objectdestroyTm_0()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

void partial apply for specialized closure #1 in Canvas.applyUndo(_:selection:)()
{
  specialized closure #1 in Canvas.applyUndo(_:selection:)(*(v0 + 16), *(v0 + 24), &_s9Coherence7CapsuleVy8PaperKit0C0VGMd, &_s9Coherence7CapsuleVy8PaperKit0C0VGMR);
}

{
  specialized closure #1 in Canvas.applyUndo(_:selection:)(*(v0 + 16), *(v0 + 24));
}

void specialized CanvasView.contentView.didset(id a1)
{
  v2 = v1;
  v4 = direct field offset for CanvasView.contentView;
  v5 = *(v1 + direct field offset for CanvasView.contentView);
  if (v5)
  {
    if (a1)
    {
      type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIView, 0x1E69DD250);
      v6 = v5;
      v7 = a1;
      v8 = static NSObject.== infix(_:_:)();

      if (v8)
      {
        return;
      }
    }
  }

  else if (!a1)
  {
    return;
  }

  [a1 removeFromSuperview];
  v9 = v2 + direct field offset for Canvas._editingView;
  v10 = *(v2 + direct field offset for Canvas._editingView);
  if (v10)
  {
    v11 = *(v9 + 8);
    v12 = *(v2 + direct field offset for Canvas._editingView);
  }

  else
  {
    v12 = *(v2 + direct field offset for Canvas.paperView);
    v11 = &protocol witness table for ContainerCanvasElementView<A>;
  }

  ObjectType = swift_getObjectType();
  v14 = v11[3];
  v15 = v10;
  v14(ObjectType, v11);

  v16 = *(v2 + v4);
  if (v16)
  {
    v17 = *v9;
    if (*v9)
    {
      v18 = *v9;
    }

    else
    {
      v18 = *(v2 + direct field offset for Canvas.paperView);
    }

    v31 = v16;
    v19 = v17;
    [v18 insertSubview:v31 atIndex:0];

    v20 = *v9;
    if (*v9)
    {
      v21 = *v9;
    }

    else
    {
      v21 = *(v2 + direct field offset for Canvas.paperView);
      v20 = 0;
    }

    v22 = v20;
    [v21 frame];
    v24 = v23;
    v26 = v25;
    v28 = v27;
    v30 = v29;

    [v31 setFrame_];
  }
}

void specialized Canvas.suggestedPositionForNewCanvasElement(withSize:)(double a1, double a2)
{
  v3 = v2;
  v92 = a2;
  v91 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMR);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v78 - v6;
  *&v8 = COERCE_DOUBLE(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd, &_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMR));
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v79 = v78 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v78 - v12;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C0VGMd, &_s9Coherence7CapsuleVy8PaperKit0C0VGMR);
  v83 = *(v84 - 8);
  MEMORY[0x1EEE9AC00](v84);
  v93 = v78 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v78 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMd, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMR);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = v78 - v19;
  x = *&direct field offset for Canvas._editingView;
  v21 = *(v3 + direct field offset for Canvas._editingView);
  v82 = *&v8;
  v81 = v9;
  v80 = v13;
  if (v21)
  {
    v22 = v21;
  }

  else
  {
    v22 = *(v3 + direct field offset for Canvas.paperView);
    v21 = 0;
  }

  (*((*MEMORY[0x1E69E7D40] & *v22) + 0xF0))(v21);

  if ((*(v5 + 48))(v20, 1, v4) == 1)
  {
    v23 = outlined destroy of StocksKitCurrencyCache.Provider?(v20, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMd, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMR);
    v100 = 0u;
    v101 = 0u;
    v102 = 0;
    v24 = MEMORY[0x1E69E7D40];
  }

  else
  {
    v25 = *(v3 + direct field offset for Canvas.paperView);
    v26 = MEMORY[0x1E69E7D40];
    v27 = *((*MEMORY[0x1E69E7D40] & *v25) + 0x3F0);
    swift_beginAccess();
    v28 = v83;
    v29 = v25 + v27;
    v30 = v84;
    (*(v83 + 16))(v17, v29, v84);
    type metadata accessor for Paper(0);
    _s8PaperKit0A20MarkupViewControllerCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type Paper and conformance Paper, 255, type metadata accessor for Paper, &protocol conformance descriptor for Paper);
    SharedTagged_10.subscript.getter();
    (*(v28 + 8))(v17, v30);
    (*(v5 + 8))(v20, v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit13CanvasElement_pMd, &_s8PaperKit13CanvasElement_pMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit22ContainerCanvasElement_pMd, &_s8PaperKit22ContainerCanvasElement_pMR);
    v23 = swift_dynamicCast();
    v24 = v26;
    if ((v23 & 1) == 0)
    {
      v102 = 0;
      v100 = 0u;
      v101 = 0u;
    }
  }

  v31 = (*((*v24 & *v3) + 0x450))(v23);
  if (!v31)
  {
    goto LABEL_30;
  }

  v32 = v31;
  outlined init with copy of Date?(&v100, &v94, &_s8PaperKit22ContainerCanvasElement_pSgMd, &_s8PaperKit22ContainerCanvasElement_pSgMR);
  if (!v95)
  {

    outlined destroy of StocksKitCurrencyCache.Provider?(&v94, &_s8PaperKit22ContainerCanvasElement_pSgMd, &_s8PaperKit22ContainerCanvasElement_pSgMR);
    goto LABEL_30;
  }

  outlined init with take of PaperKitHashable(&v94, v97);
  v33.n128_f64[0] = specialized Canvas.insertionPosition.getter();
  Height = 0.0;
  if ((*((*v24 & *v3) + 0x810))(v33))
  {
    [v32 bounds];
    Height = CGRectGetHeight(v103);
  }

  v35 = *(v3 + direct field offset for Canvas.paperView);
  v36 = *((*v24 & *v35) + 0x3F0);
  swift_beginAccess();
  (*(v83 + 16))(v93, &v35[v36], v84);
  v37 = *(v3 + *&x);
  if (v37)
  {
    v38 = *(v3 + *&x);
  }

  else
  {
    v38 = v35;
    v37 = 0;
  }

  v39 = v81;
  v40 = v80;
  v41 = v37;
  v42 = [v38 effectiveUserInterfaceLayoutDirection];

  v78[0] = v42;
  v43 = v42 == 0;
  v45 = v98;
  v44 = v99;
  __swift_project_boxed_opaque_existential_1(v97, v98);
  v78[1] = (*(*(v44 + 8) + 32))(v45);
  v46 = v98;
  v47 = v99;
  __swift_project_boxed_opaque_existential_1(v97, v98);
  v104.origin.x = (*(v47 + 16))(v46, v47);
  v104.size.height = Height + v48;
  v86 = v91 * 0.5;
  v85 = v92 * 0.5;
  x = v104.origin.x;
  y = v104.origin.y;
  width = v104.size.width;
  v87 = v104.size.height;
  v105 = CGRect.closestRect(in:)(v104);
  v49 = v105.origin.x;
  v50 = v105.origin.y;
  v51 = v105.size.width;
  v52 = v105.size.height;
  MidX = CGRectGetMidX(v105);
  v106.origin.x = v49;
  v106.origin.y = v50;
  v106.size.width = v51;
  v106.size.height = v52;
  MidY = CGRectGetMidY(v106);
  v55 = v98;
  v56 = v99;
  __swift_project_boxed_opaque_existential_1(v97, v98);
  v57 = (*(v56 + 88))(v55, v56);
  v58 = MEMORY[0x1EEE9AC00](v57);
  v78[-2] = v93;
  LOBYTE(v78[-1]) = v43;
  v59 = v82;
  (*(v39 + 16))(v79, v40, COERCE_DOUBLE(*&v82), v58);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CROrderedSet<SharedTagged_10<TaggedCanvasElement>> and conformance CROrderedSet<A>, &_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd, &_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMR, MEMORY[0x1E6995150]);
  *&v94 = dispatch thunk of Sequence._copyToContiguousArray()();
  specialized MutableCollection<>.sort(by:)(partial apply for specialized closure #1 in Capsule<>.suggestedPositionForNewCanvasElement(into:at:withSize:isLTR:extendCanvasHeight:), &v78[-4]);
  v79 = v32;
  (*(v39 + 8))(v40, COERCE_DOUBLE(*&v59));
  v60 = v94;
  v61 = *(v94 + 16);
  if (!v61)
  {
LABEL_29:

    (*(v83 + 8))(v93, v84);
    __swift_destroy_boxed_opaque_existential_0(v97);
LABEL_30:
    outlined destroy of StocksKitCurrencyCache.Provider?(&v100, &_s8PaperKit22ContainerCanvasElement_pSgMd, &_s8PaperKit22ContainerCanvasElement_pSgMR);
    return;
  }

  v62 = 0;
  v63 = -20.0;
  if (!v78[0])
  {
    v63 = 20.0;
  }

  v82 = v63;
  while (v62 < v60[2])
  {
    (*(v5 + 16))(v7, v60 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v62, v4);
    type metadata accessor for Paper(0);
    _s8PaperKit0A20MarkupViewControllerCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type Paper and conformance Paper, 255, type metadata accessor for Paper, &protocol conformance descriptor for Paper);
    SharedTagged_10.subscript.getter();
    v64 = v95;
    v65 = v96;
    __swift_project_boxed_opaque_existential_1(&v94, v95);
    v107.origin.x = (*(*(v65 + 8) + 8))(v64);
    v66 = v107.origin.x;
    v67 = v107.origin.y;
    v68 = v107.size.width;
    v69 = v107.size.height;
    v70 = CGRectGetMidX(v107);
    v108.origin.x = v66;
    v108.origin.y = v67;
    v108.size.width = v68;
    v108.size.height = v69;
    v71 = CGRectGetMidY(v108);
    __swift_destroy_boxed_opaque_existential_0(&v94);
    v72 = vabdd_f64(v71, MidY);
    if (vabdd_f64(v70, MidX) < 1.0 && v72 < 1.0)
    {
      v109.origin.x = x;
      v109.origin.y = y;
      v109.size.width = width;
      v109.size.height = v87;
      v110 = CGRect.closestRect(in:)(v109);
      v74 = v110.origin.x;
      v75 = v110.origin.y;
      v76 = v110.size.width;
      v77 = v110.size.height;
      MidX = CGRectGetMidX(v110);
      v111.origin.x = v74;
      v111.origin.y = v75;
      v111.size.width = v76;
      v111.size.height = v77;
      MidY = CGRectGetMidY(v111);
    }

    ++v62;
    (*(v5 + 8))(v7, v4);
    if (v61 == v62)
    {
      goto LABEL_29;
    }
  }

  __break(1u);

  __break(1u);
}

unint64_t specialized Canvas.recentlyAddedCanvasElement.getter()
{
  v1 = *(v0 + direct field offset for Canvas._editingView);
  if (v1)
  {
    v2 = *(v0 + direct field offset for Canvas._editingView + 8);
    v3 = *(v0 + direct field offset for Canvas._editingView);
  }

  else
  {
    v3 = *(v0 + direct field offset for Canvas.paperView);
    v2 = &protocol witness table for ContainerCanvasElementView<A>;
  }

  ObjectType = swift_getObjectType();
  v5 = v2[8];
  v6 = v1;
  v7 = v5(ObjectType, v2);

  if (!(v7 >> 62))
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
      goto LABEL_6;
    }

LABEL_13:

    return 0;
  }

  v8 = __CocoaSet.count.getter();
  if (!v8)
  {
    goto LABEL_13;
  }

LABEL_6:
  v9 = __OFSUB__(v8, 1);
  result = v8 - 1;
  if (v9)
  {
    __break(1u);
    goto LABEL_16;
  }

  if ((v7 & 0xC000000000000001) != 0)
  {
LABEL_16:
    v11 = MEMORY[0x1DA6CE0C0](result, v7);
    goto LABEL_11;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v11 = *(v7 + 8 * result + 32);
LABEL_11:
    v12 = v11;

    return v12;
  }

  __break(1u);
  return result;
}

double specialized Canvas.insertionPosition.getter()
{
  v1 = v0;
  v2 = [v0 window];
  if (!v2)
  {
    return 0.0;
  }

  v3 = v2;
  v4 = direct field offset for Canvas._editingView;
  v5 = *(v0 + direct field offset for Canvas._editingView);
  if (v5)
  {
    v6 = *(v0 + direct field offset for Canvas._editingView);
  }

  else
  {
    v6 = *(v0 + direct field offset for Canvas.paperView);
    v5 = 0;
  }

  v8 = v5;
  [v3 bounds];
  x = v62.origin.x;
  y = v62.origin.y;
  width = v62.size.width;
  height = v62.size.height;
  MidX = CGRectGetMidX(v62);
  v63.origin.x = x;
  v63.origin.y = y;
  v63.size.width = width;
  v63.size.height = height;
  [v6 convertPoint:v3 fromCoordinateSpace:{MidX, CGRectGetMidY(v63)}];
  v15 = v14;
  v17 = v16;

  v18 = *(v1 + v4);
  if (v18)
  {
    v19 = *(v1 + v4);
  }

  else
  {
    v19 = *(v1 + direct field offset for Canvas.paperView);
    v18 = 0;
  }

  v20 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v19) + 0x2C0))(v56, v18);
  v50 = v56[1];
  v52 = v56[0];
  v21 = v57;
  v22 = v58;

  (*((*v20 & *v1) + 0x858))(v59);
  if (v60)
  {
    v23 = -1;
  }

  else
  {
    v23 = 0;
  }

  v24 = vdupq_n_s64(v23);
  *&t1.a = v52;
  *&t1.c = v50;
  t1.tx = v21;
  t1.ty = v22;
  *&t2.a = vbslq_s8(v24, xmmword_1D4059320, v59[0]);
  *&t2.c = vbslq_s8(v24, xmmword_1D4059310, v59[1]);
  *&t2.tx = vbicq_s8(v59[2], v24);
  CGAffineTransformConcat(&v53, &t1, &t2);
  t1 = v53;
  CGAffineTransformInvert(&t2, &t1);
  a = t2.a;
  b = t2.b;
  c = t2.c;
  d = t2.d;
  t1 = t2;
  ty = t2.ty;
  tx = t2.tx;
  v61.x = v15;
  v61.y = v17;
  *&v51 = *&CGPointApplyAffineTransform(v61, &t1);
  v29 = *(v1 + v4);
  if (v29)
  {
    v30 = *(v1 + v4);
  }

  else
  {
    v30 = *(v1 + direct field offset for Canvas.paperView);
    v29 = 0;
  }

  v31 = v29;
  [v30 bounds];
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;

  t1.a = a;
  t1.b = b;
  t1.c = c;
  t1.d = d;
  t1.tx = tx;
  t1.ty = ty;
  v64.origin.x = v33;
  v64.origin.y = v35;
  v64.size.width = v37;
  v64.size.height = v39;
  v65 = CGRectApplyAffineTransform(v64, &t1);
  v40 = v65.origin.x;
  v41 = v65.origin.y;
  v42 = v65.size.width;
  v43 = v65.size.height;
  MinX = CGRectGetMinX(v65);
  v66.origin.x = v40;
  v66.origin.y = v41;
  v66.size.width = v42;
  v66.size.height = v43;
  MaxX = CGRectGetMaxX(v66);
  v46 = v51;
  if (MinX > v51)
  {
    v46 = MinX;
  }

  if (v46 >= MaxX)
  {
    v7 = MaxX;
  }

  else
  {
    v7 = v46;
  }

  v67.origin.x = v40;
  v67.origin.y = v41;
  v67.size.width = v42;
  v67.size.height = v43;
  CGRectGetMinY(v67);
  v68.origin.x = v40;
  v68.origin.y = v41;
  v68.size.width = v42;
  v68.size.height = v43;
  CGRectGetMaxY(v68);

  return v7;
}