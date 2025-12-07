uint64_t PKStrokeStruct.$inherited.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGMR);

  return CRRegister.projectedValue.getter();
}

uint64_t key path setter for PKStrokeInheritedProperties.$inherited : PKStrokeInheritedProperties(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v17 - v13;
  v15 = *(v8 + 16);
  v15(&v17 - v13, a1, v7, v12);
  (v15)(v10, v14, v7);
  CRRegister.projectedValue.setter();
  return (*(v8 + 8))(v14, v7);
}

uint64_t PKStrokeInheritedProperties.$inherited.setter(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  (*(v5 + 16))(&v9 - v7, a1, v4, v6);
  CRRegister.projectedValue.setter();
  return (*(v5 + 8))(a1, v4);
}

uint64_t (*PKStrokeStruct.$inherited.modify(void *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGMR);
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
  return PKStrokeStruct.$inherited.modify;
}

void PKStrokeInheritedProperties.$inherited.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 16) + 16);
  v4(*(*a1 + 32), v3[5], v3[1]);
  v5 = v3[4];
  v6 = v3[5];
  v8 = v3[2];
  v7 = v3[3];
  v9 = v3[1];
  if (a2)
  {
    v4(v3[3], v3[4], v3[1]);
    CRRegister.projectedValue.setter();
    v10 = *(v8 + 8);
    v10(v5, v9);
    v10(v6, v9);
  }

  else
  {
    CRRegister.projectedValue.setter();
    (*(v8 + 8))(v6, v9);
  }

  free(v6);
  free(v5);
  free(v7);

  free(v3);
}

uint64_t key path getter for PKStrokeInheritedProperties.$ink : PKStrokeInheritedProperties(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), uint64_t *a5, uint64_t *a6, uint64_t (*a7)(uint64_t))
{
  (a4)(0, a2, a3);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  return a7(v10);
}

uint64_t key path setter for PKStrokeStruct.properties : PKStrokeStruct(uint64_t a1)
{
  v2 = type metadata accessor for PKStrokeProperties(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v9 - v6;
  outlined init with copy of PKStrokeProperties(a1, &v9 - v6, type metadata accessor for PKStrokeProperties);
  outlined init with copy of PKStrokeProperties(v7, v4, type metadata accessor for PKStrokeProperties);
  type metadata accessor for PKStrokeStruct(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGMd, &_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGMR);
  CRRegister.wrappedValue.setter();
  return outlined destroy of PKStrokeProperties(v7, type metadata accessor for PKStrokeProperties);
}

uint64_t PKStrokeStruct.properties.setter(uint64_t a1)
{
  v2 = type metadata accessor for PKStrokeProperties(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  outlined init with copy of PKStrokeProperties(a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PKStrokeProperties);
  type metadata accessor for PKStrokeStruct(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGMd, &_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGMR);
  CRRegister.wrappedValue.setter();
  return outlined destroy of PKStrokeProperties(a1, type metadata accessor for PKStrokeProperties);
}

uint64_t (*PKStrokeStruct.properties.modify(uint64_t *a1))()
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
  type metadata accessor for PKStrokeStruct(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGMd, &_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGMR);
  *(v3 + 32) = CRRegister.wrappedValue.modify();
  return PKStrokeStruct.properties.modify;
}

void PKStrokeInheritedProperties.inherited.modify(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t key path setter for PKStrokeInheritedProperties.$ink : PKStrokeInheritedProperties(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, void (*a7)(void))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v19 - v15;
  v17 = *(v10 + 16);
  v17(&v19 - v15, a1, v9, v14);
  (v17)(v12, v16, v9);
  a7(0);
  CRRegister.projectedValue.setter();
  return (*(v10 + 8))(v16, v9);
}

uint64_t PKStrokeInheritedProperties.$ink.setter(uint64_t a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  (*(v7 + 16))(&v11 - v9, a1, v6, v8);
  a4(0);
  CRRegister.projectedValue.setter();
  return (*(v7 + 8))(a1, v6);
}

uint64_t (*PKStrokeStruct.$properties.modify(void *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGMd, &_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGMR);
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
  *(v5 + 12) = *(type metadata accessor for PKStrokeStruct(0) + 20);
  CRRegister.projectedValue.getter();
  return PKStrokeStruct.$properties.modify;
}

void PKStrokeInheritedProperties.$ink.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 16) + 16);
  v4(*(*a1 + 32), v3[5], v3[1]);
  v5 = v3[4];
  v11 = v3[5];
  v7 = v3[2];
  v6 = v3[3];
  v8 = v3[1];
  if (a2)
  {
    v4(v3[3], v5, v3[1]);
    CRRegister.projectedValue.setter();
    v9 = *(v7 + 8);
    v9(v5, v8);
    v10 = v11;
    v9(v11, v8);
  }

  else
  {
    CRRegister.projectedValue.setter();
    v10 = v11;
    (*(v7 + 8))(v11, v8);
  }

  free(v10);
  free(v5);
  free(v6);

  free(v3);
}

void PKStrokeStruct.apply(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit18PKStrokePropertiesV_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit18PKStrokePropertiesV_GSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v26 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit14PKStrokeStructV14MutatingActionVSgMd, &_s8PaperKit14PKStrokeStructV14MutatingActionVSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v26 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVG_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVG_GSgMR);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v26 - v14;
  outlined init with copy of Date?(a1, v12, &_s8PaperKit14PKStrokeStructV14MutatingActionVSgMd, &_s8PaperKit14PKStrokeStructV14MutatingActionVSgMR);
  v16 = type metadata accessor for PKStrokeStruct.MutatingAction(0);
  v17 = *(*(v16 - 8) + 48);
  if (v17(v12, 1, v16) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v12, &_s8PaperKit14PKStrokeStructV14MutatingActionVSgMd, &_s8PaperKit14PKStrokeStructV14MutatingActionVSgMR);
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVG_GMd, &_s9Coherence10CRRegisterV14MutatingActionVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVG_GMR);
    (*(*(v18 - 8) + 56))(v15, 1, 1, v18);
  }

  else
  {
    outlined init with copy of Date?(v12, v15, &_s9Coherence10CRRegisterV14MutatingActionVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVG_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVG_GSgMR);
    outlined destroy of PKStrokeProperties(v12, type metadata accessor for PKStrokeStruct.MutatingAction);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGMR);
  CRRegister.apply(_:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v15, &_s9Coherence10CRRegisterV14MutatingActionVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVG_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVG_GSgMR);
  outlined init with copy of Date?(a1, v9, &_s8PaperKit14PKStrokeStructV14MutatingActionVSgMd, &_s8PaperKit14PKStrokeStructV14MutatingActionVSgMR);
  if (v17(v9, 1, v16) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v9, &_s8PaperKit14PKStrokeStructV14MutatingActionVSgMd, &_s8PaperKit14PKStrokeStructV14MutatingActionVSgMR);
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit18PKStrokePropertiesV_GMd, &_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit18PKStrokePropertiesV_GMR);
    (*(*(v19 - 8) + 56))(v6, 1, 1, v19);
  }

  else
  {
    outlined init with copy of Date?(&v9[*(v16 + 20)], v6, &_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit18PKStrokePropertiesV_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit18PKStrokePropertiesV_GSgMR);
    outlined destroy of PKStrokeProperties(v9, type metadata accessor for PKStrokeStruct.MutatingAction);
  }

  v20 = type metadata accessor for PKStrokeStruct(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGMd, &_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGMR);
  CRRegister.apply(_:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v6, &_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit18PKStrokePropertiesV_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit18PKStrokePropertiesV_GSgMR);
  v21 = *(v20 + 24);
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v22 = *(v2 + v21);
    if (one-time initialization token for unfairLock != -1)
    {
      swift_once();
    }

    os_unfair_lock_lock(&static PKStrokeStructCache.unfairLock);
    v23 = *(MEMORY[0x1E695F050] + 16);
    *(v22 + 16) = *MEMORY[0x1E695F050];
    *(v22 + 32) = v23;
    os_unfair_lock_unlock(&static PKStrokeStructCache.unfairLock);
  }

  else
  {
    type metadata accessor for PKStrokeStructCache();
    v24 = swift_allocObject();
    v25 = *(MEMORY[0x1E695F050] + 16);
    *(v24 + 16) = *MEMORY[0x1E695F050];
    *(v24 + 32) = v25;
    *(v24 + 48) = 0;
    *(v24 + 56) = 0x3FF0000000000000;
    *(v24 + 64) = 0;
    *(v24 + 72) = 0;
    *(v24 + 80) = 0x3FF0000000000000;
    *(v24 + 88) = 0;
    *(v24 + 96) = 0;
    *(v24 + 104) = 0;

    *(v2 + v21) = v24;
  }
}

BOOL PKStrokeStruct.Partial.merge(delta:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGMd, &_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGMR);
  v49 = *(v4 - 8);
  v50 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v42 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGSgMd, &_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v48 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v42 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGMR);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v47 = &v42 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGSgMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGSgMR);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v42 - v19;
  v21 = type metadata accessor for PKStrokeStruct.Partial(0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v42 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PKStrokeProperties(v2, v23, type metadata accessor for PKStrokeStruct.Partial);
  v51 = a1;
  v24 = PKStrokeStruct.Partial.canMerge(delta:)(a1);
  outlined destroy of PKStrokeProperties(v23, type metadata accessor for PKStrokeStruct.Partial);
  if (v24)
  {
    v45 = v24;
    v46 = v11;
    v44 = v6;
    outlined init with copy of Date?(v2, v20, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGSgMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGSgMR);
    v25 = v2;
    v43 = v13;
    v26 = *(v13 + 48);
    v27 = v26(v20, 1, v12);
    outlined destroy of StocksKitCurrencyCache.Provider?(v20, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGSgMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGSgMR);
    if (v27 == 1)
    {
      outlined assign with copy of CRRegister<Ref<PKStrokeInheritedProperties>?>?(v51, v25, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGSgMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGSgMR);
    }

    else
    {
      outlined init with copy of Date?(v51, v17, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGSgMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGSgMR);
      if (v26(v17, 1, v12) == 1)
      {
        outlined destroy of StocksKitCurrencyCache.Provider?(v17, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGSgMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGSgMR);
      }

      else
      {
        v28 = v43;
        v29 = v47;
        (*(v43 + 32))(v47, v17, v12);
        if (!v26(v25, 1, v12))
        {
          CRRegister.merge(delta:)();
        }

        (*(v28 + 8))(v29, v12);
      }
    }

    v30 = v50;
    v31 = *(v21 + 20);
    v32 = v46;
    outlined init with copy of Date?(v25 + v31, v46, &_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGSgMd, &_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGSgMR);
    v33 = v49;
    v34 = *(v49 + 48);
    LODWORD(v30) = v34(v32, 1, v30);
    outlined destroy of StocksKitCurrencyCache.Provider?(v32, &_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGSgMd, &_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGSgMR);
    v35 = *(v21 + 20);
    if (v30 == 1)
    {
      outlined assign with copy of CRRegister<Ref<PKStrokeInheritedProperties>?>?(v51 + v35, v25 + v31, &_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGSgMd, &_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGSgMR);
      LOBYTE(v24) = v45;
    }

    else
    {
      v36 = v48;
      outlined init with copy of Date?(v51 + v35, v48, &_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGSgMd, &_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGSgMR);
      v37 = v34(v36, 1, v50);
      LOBYTE(v24) = v45;
      if (v37 == 1)
      {
        outlined destroy of StocksKitCurrencyCache.Provider?(v36, &_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGSgMd, &_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGSgMR);
      }

      else
      {
        v38 = v44;
        v39 = v36;
        v40 = v50;
        (*(v33 + 32))(v44, v39, v50);
        if (!v34(v25 + v31, 1, v40))
        {
          CRRegister.merge(delta:)();
        }

        (*(v33 + 8))(v38, v40);
      }
    }
  }

  return v24;
}

BOOL PKStrokeStruct.Partial.canMerge(delta:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGSgMd, &_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v31 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v30 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGMd, &_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGMR);
  v35 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v34 = &v30 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGSgMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v30 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGMR);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v30 - v17;
  v32 = a1;
  outlined init with copy of Date?(a1, v14, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGSgMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGSgMR);
  v19 = *(v16 + 48);
  if (v19(v14, 1, v15) == 1)
  {
    v11 = v14;
    v20 = v7;
  }

  else
  {
    (*(v16 + 32))(v18, v14, v15);
    outlined init with copy of Date?(v33, v11, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGSgMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGSgMR);
    v20 = v7;
    if (v19(v11, 1, v15) != 1)
    {
      v26 = CRRegister.canMerge(delta:)();
      v27 = *(v16 + 8);
      v27(v18, v15);
      v27(v11, v15);
      v22 = v34;
      v21 = v35;
      if ((v26 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_6;
    }

    (*(v16 + 8))(v18, v15);
  }

  outlined destroy of StocksKitCurrencyCache.Provider?(v11, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGSgMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGSgMR);
  v22 = v34;
  v21 = v35;
LABEL_6:
  v23 = type metadata accessor for PKStrokeStruct.Partial(0);
  outlined init with copy of Date?(v32 + *(v23 + 20), v6, &_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGSgMd, &_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGSgMR);
  v24 = *(v21 + 48);
  if (v24(v6, 1, v20) == 1)
  {
LABEL_9:
    outlined destroy of StocksKitCurrencyCache.Provider?(v6, &_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGSgMd, &_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGSgMR);
    return 1;
  }

  (*(v21 + 32))(v22, v6, v20);
  v6 = v31;
  outlined init with copy of Date?(v33 + *(v23 + 20), v31, &_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGSgMd, &_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGSgMR);
  if (v24(v6, 1, v20) == 1)
  {
    (*(v21 + 8))(v22, v20);
    goto LABEL_9;
  }

  v28 = CRRegister.canMerge(delta:)();
  v29 = *(v21 + 8);
  v29(v22, v20);
  v29(v6, v20);
  return (v28 & 1) != 0;
}

uint64_t PKStrokeStruct.Partial.visitReferences(_:)(uint64_t a1)
{
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGSgMd, &_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v15 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGSgMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v15 - v7;
  outlined init with copy of Date?(v2, &v15 - v7, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGSgMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGSgMR);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGMR);
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v8, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGSgMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGSgMR);
  }

  else
  {
    CRRegister.visitReferences(_:)();
    (*(v10 + 8))(v8, v9);
  }

  v11 = type metadata accessor for PKStrokeStruct.Partial(0);
  outlined init with copy of Date?(v2 + *(v11 + 20), v5, &_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGSgMd, &_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGSgMR);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGMd, &_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGMR);
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v5, 1, v12) == 1)
  {
    return outlined destroy of StocksKitCurrencyCache.Provider?(v5, &_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGSgMd, &_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGSgMR);
  }

  CRRegister.visitReferences(_:)();
  return (*(v13 + 8))(v5, v12);
}

uint64_t PKStrokeStruct.Partial.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGSgMd, &_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v35 = &v27 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGSgMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v34 = &v27 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGMR);
  v9 = *(v8 - 8);
  v10 = *(v9 + 56);
  v11 = v9 + 56;
  v10(a2, 1, 1, v8);
  v12 = *(type metadata accessor for PKStrokeStruct.Partial(0) + 20);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGMd, &_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGMR);
  v14 = *(v13 - 8);
  v15 = *(v14 + 56);
  v16 = v14 + 56;
  v37 = a2;
  v15(a2 + v12, 1, 1, v13);
  v17 = v36;
  dispatch thunk of CRDecoder.keyedContainer()();
  v36 = v17;
  if (v17)
  {

    v18 = v37;
  }

  else
  {
    v30 = v11;
    v31 = v8;
    v32 = v10;
    v33 = a1;
    v27 = v16;
    v28 = v15;
    v29 = v12;
    v20 = v34;
    v21 = v35;
    if (dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)())
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGMd, &_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGMR);
      lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type Ref<PKStrokeInheritedProperties> and conformance Ref<A>, &_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGMd, &_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGMR, MEMORY[0x1E69953B0]);
      v22 = v20;
      v23 = v36;
      CRRegister.init(from:)();
      v24 = v23;
      if (v23)
      {

        v18 = v37;
        return outlined destroy of PKStrokeProperties(v18, type metadata accessor for PKStrokeStruct.Partial);
      }

      v26 = v13;
      v32(v22, 0, 1, v31);
      v25 = v37;
      outlined assign with take of UUID?(v22, v37, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGSgMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGSgMR);
    }

    else
    {
      v25 = v37;
      v26 = v13;
      v24 = v36;
    }

    if (!dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)())
    {
    }

    type metadata accessor for PKStrokeProperties(0);
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type PKStrokeProperties and conformance PKStrokeProperties, type metadata accessor for PKStrokeProperties, &protocol conformance descriptor for PKStrokeProperties);
    CRRegister.init(from:)();

    v18 = v25;
    if (!v24)
    {
      v28(v21, 0, 1, v26);
      return outlined assign with take of UUID?(v21, v25 + v29, &_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGSgMd, &_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGSgMR);
    }
  }

  return outlined destroy of PKStrokeProperties(v18, type metadata accessor for PKStrokeStruct.Partial);
}

uint64_t PKStrokeStruct.Partial.encode(to:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGSgMd, &_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGSgMR);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v21 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGMd, &_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGMR);
  v24 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v21 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGSgMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v21 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGMR);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v21 - v12;
  result = dispatch thunk of CREncoder.keyedContainer()();
  if (!v0)
  {
    v22 = v3;
    v23 = v6;
    v15 = v25;
    outlined init with copy of Date?(v25, v9, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGSgMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGSgMR);
    if ((*(v11 + 48))(v9, 1, v10) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v9, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGSgMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGSgMR);
    }

    else
    {
      (*(v11 + 32))(v13, v9, v10);
      lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<Ref<PKStrokeInheritedProperties>> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGMR, MEMORY[0x1E6995080]);
      dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
      (*(v11 + 8))(v13, v10);
    }

    v16 = type metadata accessor for PKStrokeStruct.Partial(0);
    v17 = v22;
    outlined init with copy of Date?(v15 + *(v16 + 20), v22, &_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGSgMd, &_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGSgMR);
    v18 = v24;
    v19 = (*(v24 + 48))(v17, 1, v4);
    v20 = v23;
    if (v19 == 1)
    {

      return outlined destroy of StocksKitCurrencyCache.Provider?(v17, &_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGSgMd, &_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGSgMR);
    }

    else
    {
      (*(v18 + 32))(v23, v17, v4);
      lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<PKStrokeProperties> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGMd, &_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGMR, MEMORY[0x1E6995080]);
      dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
      (*(v18 + 8))(v20, v4);
    }
  }

  return result;
}

uint64_t PKStrokeStruct.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for PKStrokeProperties(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for CRKeyPath();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGMd, &_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGMR);
  MEMORY[0x1EEE9AC00](v6);
  v7 = *(type metadata accessor for PKStrokeStruct(0) + 24);
  type metadata accessor for PKStrokeStructCache();
  v8 = swift_allocObject();
  v9 = *(MEMORY[0x1E695F050] + 16);
  *(v8 + 16) = *MEMORY[0x1E695F050];
  *(v8 + 32) = v9;
  *(v8 + 48) = 0;
  *(v8 + 56) = 0x3FF0000000000000;
  *(v8 + 64) = 0;
  *(v8 + 72) = 0;
  *(v8 + 80) = 0x3FF0000000000000;
  *(v8 + 88) = 0;
  *(v8 + 96) = 0;
  *(v8 + 104) = 0;
  *(a1 + v7) = v8;
  UnknownProperties.init()();
  static CRKeyPath.unique.getter();
  type metadata accessor for PKStrokeInheritedProperties(0);
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type PKStrokeInheritedProperties and conformance PKStrokeInheritedProperties, type metadata accessor for PKStrokeInheritedProperties, &protocol conformance descriptor for PKStrokeInheritedProperties);
  Ref.init(id:)();
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type Ref<PKStrokeInheritedProperties> and conformance Ref<A>, &_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGMd, &_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGMR, MEMORY[0x1E69953B0]);
  CRRegister.init(_:)();
  v10 = v2[5];
  v11 = type metadata accessor for UUID();
  v12 = *(*(v11 - 8) + 56);
  v12(&v4[v10], 1, 1, v11);
  v12(&v4[v2[6]], 1, 1, v11);
  static CRKeyPath.unique.getter();
  type metadata accessor for PKStrokePathStruct(0);
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type PKStrokePathStruct and conformance PKStrokePathStruct, type metadata accessor for PKStrokePathStruct, &protocol conformance descriptor for PKStrokePathStruct);
  Ref.init(id:)();
  v13 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_9Coherence10AnyCRValueVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *v4 = 0;
  *&v4[v2[7]] = 0;
  *&v4[v2[9]] = 0;
  v14 = &v4[v2[10]];
  *v14 = 0u;
  *(v14 + 1) = 0u;
  v14[32] = 1;
  v15 = &v4[v2[11]];
  *(v15 + 1) = 0u;
  *(v15 + 2) = 0u;
  *v15 = 0u;
  v15[48] = 1;
  *&v4[v2[12]] = v13;
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type PKStrokeProperties and conformance PKStrokeProperties, type metadata accessor for PKStrokeProperties, &protocol conformance descriptor for PKStrokeProperties);
  return CRRegister.init(_:)();
}

uint64_t PKStrokeStruct.init(inheritedProperties:path:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v40 = a2;
  v42 = a1;
  v37 = a3;
  v5 = type metadata accessor for PKStrokeProperties(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit18PKStrokePathStructVGMd, &_s9Coherence3RefVy8PaperKit18PKStrokePathStructVGMR);
  v41 = *(v44 - 8);
  v8 = v41;
  MEMORY[0x1EEE9AC00](v44);
  v10 = &v35 - v9;
  v38 = &v35 - v9;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGMd, &_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGMR);
  v43 = *(v35 - 8);
  v11 = v43;
  MEMORY[0x1EEE9AC00](v35);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v35 - v16;
  v18 = *(v11 + 16);
  v39 = &v35 - v16;
  v18(&v35 - v16, a1, v15);
  v36 = *(v8 + 16);
  v36(v10, a2, v44);
  v19 = *(type metadata accessor for PKStrokeStruct(0) + 24);
  type metadata accessor for PKStrokeStructCache();
  v20 = swift_allocObject();
  v21 = *(MEMORY[0x1E695F050] + 16);
  *(v20 + 16) = *MEMORY[0x1E695F050];
  *(v20 + 32) = v21;
  *(v20 + 48) = 0;
  *(v20 + 56) = 0x3FF0000000000000;
  *(v20 + 64) = 0;
  *(v20 + 72) = 0;
  *(v20 + 80) = 0x3FF0000000000000;
  *(v20 + 88) = 0;
  *(v20 + 96) = 0;
  *(v20 + 104) = 0;
  *(v37 + v19) = v20;
  UnknownProperties.init()();
  v22 = v17;
  v23 = v35;
  (v18)(v13, v22, v35);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type Ref<PKStrokeInheritedProperties> and conformance Ref<A>, &_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGMd, &_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGMR, MEMORY[0x1E69953B0]);
  CRRegister.init(_:)();
  v24 = v5[5];
  v25 = type metadata accessor for UUID();
  v26 = *(*(v25 - 8) + 56);
  v26(&v7[v24], 1, 1, v25);
  v26(&v7[v5[6]], 1, 1, v25);
  type metadata accessor for PKStrokeMaskStruct();
  swift_allocObject();
  swift_deallocPartialClassInstance();
  v27 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_9Coherence10AnyCRValueVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *v7 = 0;
  *&v7[v5[7]] = 0;
  v28 = v38;
  v29 = v44;
  v36(&v7[v5[8]], v38, v44);
  *&v7[v5[9]] = 0;
  v30 = &v7[v5[10]];
  *v30 = 0u;
  *(v30 + 1) = 0u;
  v30[32] = 1;
  v31 = &v7[v5[11]];
  *(v31 + 1) = 0u;
  *(v31 + 2) = 0u;
  *v31 = 0u;
  v31[48] = 1;
  *&v7[v5[12]] = v27;
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type PKStrokeProperties and conformance PKStrokeProperties, type metadata accessor for PKStrokeProperties, &protocol conformance descriptor for PKStrokeProperties);
  CRRegister.init(_:)();
  v32 = *(v41 + 8);
  v32(v40, v29);
  v33 = *(v43 + 8);
  v33(v42, v23);
  v32(v28, v29);
  return (v33)(v39, v23);
}

uint64_t PKStrokeStruct.minAppFormatVersion.getter()
{
  v0 = type metadata accessor for PKStrokeProperties(0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = (&v5 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for PKStrokeStruct(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGMd, &_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGMR);
  CRRegister.wrappedValue.getter();
  v3 = *v2;
  outlined destroy of PKStrokeProperties(v2, type metadata accessor for PKStrokeProperties);
  if (_So13PKStrokeFlagsa34__Unnamed_union___Anonymous_field0V02__c10_struct___e1_F0V_shouldSolveMath_getter(v3 & 0xFFFFFFFFFFFFLL))
  {
    return 6;
  }

  else
  {
    return 0;
  }
}

uint64_t PKStrokeStruct.uniqueInheritedPropertiesIfNeeded<A>(in:)(void *a1)
{
  v50 = *a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgMd, &_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v44 = v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v43 = v41 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v9 = v41 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = v41 - v11;
  v13 = type metadata accessor for PKStrokeInheritedProperties(0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v41[1] = v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v41 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = v41 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGMd, &_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGMR);
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v42 = v41 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = v41 - v25;
  MEMORY[0x1EEE9AC00](v27);
  v46 = v41 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v31 = v41 - v30;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGMR);
  v48 = v1;
  CRRegister.wrappedValue.getter();
  v49 = a1;
  Ref.subscript.getter();
  v32 = *(v22 + 8);
  v32(v31, v21);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGMR);
  CRRegister.wrappedValue.getter();
  outlined destroy of PKStrokeProperties(v20, type metadata accessor for PKStrokeInheritedProperties);
  v47 = v22;
  v33 = *(v22 + 48);
  v34 = v33(v12, 1, v21);
  result = outlined destroy of StocksKitCurrencyCache.Provider?(v12, &_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgMd, &_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgMR);
  if (v34 != 1)
  {
    CRRegister.wrappedValue.getter();
    v52 = v49;
    swift_retain_n();
    CRRegister.wrappedValue.getter();
    for (i = (v47 + 32); ; (*i)(v26, v9, v21))
    {
      type metadata accessor for Capsule.Ref();
      swift_getWitnessTable();
      Ref.subscript.getter();
      CRRegister.wrappedValue.getter();
      outlined destroy of PKStrokeProperties(v17, type metadata accessor for PKStrokeInheritedProperties);
      if (v33(v9, 1, v21) == 1)
      {
        break;
      }

      v32(v26, v21);
    }

    outlined destroy of StocksKitCurrencyCache.Provider?(v9, &_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgMd, &_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgMR);

    Ref.subscript.getter();
    v32(v26, v21);
    v37 = v46;
    Ref.subscript.setter();
    v32(v37, v21);
    v38 = v42;
    CRRegister.wrappedValue.getter();
    v39 = v43;
    (*(v47 + 56))(v43, 1, 1, v21);
    v40 = Ref.subscript.modify();
    outlined init with copy of Date?(v39, v44, &_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgMd, &_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgMR);
    CRRegister.wrappedValue.setter();
    outlined destroy of StocksKitCurrencyCache.Provider?(v39, &_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgMd, &_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgMR);
    v40(&v52, 0);
    return (v32)(v38, v21);
  }

  return result;
}

Swift::Void __swiftcall PKStrokeStruct.didMerge()()
{
  v1 = *(type metadata accessor for PKStrokeStruct(0) + 24);
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v2 = *(v0 + v1);
    if (one-time initialization token for unfairLock != -1)
    {
      swift_once();
    }

    os_unfair_lock_lock(&static PKStrokeStructCache.unfairLock);
    v3 = *(MEMORY[0x1E695F050] + 16);
    *(v2 + 16) = *MEMORY[0x1E695F050];
    *(v2 + 32) = v3;

    os_unfair_lock_unlock(&static PKStrokeStructCache.unfairLock);
  }

  else
  {
    type metadata accessor for PKStrokeStructCache();
    v4 = swift_allocObject();
    v5 = *(MEMORY[0x1E695F050] + 16);
    *(v4 + 16) = *MEMORY[0x1E695F050];
    *(v4 + 32) = v5;
    *(v4 + 48) = 0;
    *(v4 + 56) = 0x3FF0000000000000;
    *(v4 + 64) = 0;
    *(v4 + 72) = 0;
    *(v4 + 80) = 0x3FF0000000000000;
    *(v4 + 88) = 0;
    *(v4 + 96) = 0;
    *(v4 + 104) = 0;

    *(v0 + v1) = v4;
  }
}

uint64_t TaggedStroke.unknown.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for TaggedStroke(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PKStrokeProperties(v2, v6, type metadata accessor for TaggedStroke);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_9Coherence10AnyCRValueVtMd, &_sSi_9Coherence10AnyCRValueVtMR) + 48);
    v8 = type metadata accessor for AnyCRValue();
    v9 = *(v8 - 8);
    (*(v9 + 32))(a1, &v6[v7], v8);
    return (*(v9 + 56))(a1, 0, 1, v8);
  }

  else
  {
    outlined destroy of PKStrokeProperties(v6, type metadata accessor for TaggedStroke);
    v11 = type metadata accessor for AnyCRValue();
    return (*(*(v11 - 8) + 56))(a1, 1, 1, v11);
  }
}

uint64_t TaggedStroke.observableDifference(from:with:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v76 = a1;
  v70 = a2;
  v77 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefV20ObservableDifferenceOyAA10CRSequenceVyACyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGG_GSgMd, &_s9Coherence3RefV20ObservableDifferenceOyAA10CRSequenceVyACyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGG_GSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v69 = &v62 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefV20ObservableDifferenceOyAA10CRSequenceVyACyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGG_GMd, &_s9Coherence3RefV20ObservableDifferenceOyAA10CRSequenceVyACyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGG_GMR);
  v67 = *(v5 - 8);
  v68 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v62 = &v62 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRSequenceVyACyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGGMd, &_s9Coherence3RefVyAA10CRSequenceVyACyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGGMR);
  v71 = *(v7 - 8);
  v72 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v66 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v65 = &v62 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefV20ObservableDifferenceOy8PaperKit14PKStrokeStructV_GSgMd, &_s9Coherence3RefV20ObservableDifferenceOy8PaperKit14PKStrokeStructV_GSgMR);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v74 = &v62 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefV20ObservableDifferenceOy8PaperKit14PKStrokeStructV_GMd, &_s9Coherence3RefV20ObservableDifferenceOy8PaperKit14PKStrokeStructV_GMR);
  v14 = *(v13 - 8);
  v63 = v13;
  v64 = v14;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v62 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit14PKStrokeStructVGMd, &_s9Coherence3RefVy8PaperKit14PKStrokeStructVGMR);
  v73 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v62 - v21;
  v23 = type metadata accessor for TaggedStroke(0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v62 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v62 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit12TaggedStrokeO_ACtMd, &_s8PaperKit12TaggedStrokeO_ACtMR);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v31 = &v62 - v30;
  v33 = *(v32 + 56);
  outlined init with copy of PKStrokeProperties(v75, &v62 - v30, type metadata accessor for TaggedStroke);
  outlined init with copy of PKStrokeProperties(v76, &v31[v33], type metadata accessor for TaggedStroke);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      outlined init with copy of PKStrokeProperties(v31, v25, type metadata accessor for TaggedStroke);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v36 = v71;
        v35 = v72;
        v37 = *(v71 + 32);
        v38 = v65;
        v37(v65, v25, v72);
        v39 = &v31[v33];
        v40 = v66;
        v37(v66, v39, v35);
        v41 = v69;
        Ref.observableDifference(from:with:)();
        v42 = *(v36 + 8);
        v42(v40, v35);
        v42(v38, v35);
        if ((*(v67 + 48))(v41, 1, v68) == 1)
        {
          v43 = &_s9Coherence3RefV20ObservableDifferenceOyAA10CRSequenceVyACyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGG_GSgMd;
          v44 = &_s9Coherence3RefV20ObservableDifferenceOyAA10CRSequenceVyACyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGG_GSgMR;
          v45 = v41;
LABEL_13:
          outlined destroy of StocksKitCurrencyCache.Provider?(v45, v43, v44);
          outlined destroy of PKStrokeProperties(v31, type metadata accessor for TaggedStroke);
          v54 = type metadata accessor for TaggedStroke.ObservableDifference(0);
          return (*(*(v54 - 8) + 56))(v77, 1, 1, v54);
        }

        v55 = v41;
        v56 = v62;
        outlined init with take of Range<AttributedString.Index>(v55, v62, &_s9Coherence3RefV20ObservableDifferenceOyAA10CRSequenceVyACyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGG_GMd, &_s9Coherence3RefV20ObservableDifferenceOyAA10CRSequenceVyACyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGG_GMR);
        v57 = v56;
        v58 = v77;
        outlined init with take of Range<AttributedString.Index>(v57, v77, &_s9Coherence3RefV20ObservableDifferenceOyAA10CRSequenceVyACyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGG_GMd, &_s9Coherence3RefV20ObservableDifferenceOyAA10CRSequenceVyACyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGG_GMR);
        v59 = type metadata accessor for TaggedStroke.ObservableDifference(0);
LABEL_16:
        swift_storeEnumTagMultiPayload();
        (*(*(v59 - 8) + 56))(v58, 0, 1, v59);
        return outlined destroy of PKStrokeProperties(v31, type metadata accessor for TaggedStroke);
      }

      (*(v71 + 8))(v25, v72);
    }
  }

  else
  {
    v75 = v16;
    v76 = v19;
    v46 = v73;
    v47 = v74;
    outlined init with copy of PKStrokeProperties(v31, v28, type metadata accessor for TaggedStroke);
    if (!swift_getEnumCaseMultiPayload())
    {
      v51 = *(v46 + 32);
      v51(v22, v28, v17);
      v52 = v76;
      v51(v76, &v31[v33], v17);
      Ref.observableDifference(from:with:)();
      v53 = *(v46 + 8);
      v53(v52, v17);
      v53(v22, v17);
      if ((*(v64 + 48))(v47, 1, v63) == 1)
      {
        v43 = &_s9Coherence3RefV20ObservableDifferenceOy8PaperKit14PKStrokeStructV_GSgMd;
        v44 = &_s9Coherence3RefV20ObservableDifferenceOy8PaperKit14PKStrokeStructV_GSgMR;
        v45 = v47;
        goto LABEL_13;
      }

      v60 = v75;
      outlined init with take of Range<AttributedString.Index>(v47, v75, &_s9Coherence3RefV20ObservableDifferenceOy8PaperKit14PKStrokeStructV_GMd, &_s9Coherence3RefV20ObservableDifferenceOy8PaperKit14PKStrokeStructV_GMR);
      v61 = v60;
      v58 = v77;
      outlined init with take of Range<AttributedString.Index>(v61, v77, &_s9Coherence3RefV20ObservableDifferenceOy8PaperKit14PKStrokeStructV_GMd, &_s9Coherence3RefV20ObservableDifferenceOy8PaperKit14PKStrokeStructV_GMR);
      v59 = type metadata accessor for TaggedStroke.ObservableDifference(0);
      goto LABEL_16;
    }

    (*(v46 + 8))(v28, v17);
  }

  v48 = type metadata accessor for TaggedStroke.ObservableDifference(0);
  v49 = v77;
  swift_storeEnumTagMultiPayload();
  (*(*(v48 - 8) + 56))(v49, 0, 1, v48);
  return outlined destroy of StocksKitCurrencyCache.Provider?(v31, &_s8PaperKit12TaggedStrokeO_ACtMd, &_s8PaperKit12TaggedStrokeO_ACtMR);
}

uint64_t TaggedStroke.visitReferences(_:)(uint64_t a1)
{
  v22 = a1;
  v1 = type metadata accessor for AnyCRValue();
  v20 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRSequenceVyACyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGGMd, &_s9Coherence3RefVyAA10CRSequenceVyACyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGGMR);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v19 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit14PKStrokeStructVGMd, &_s9Coherence3RefVy8PaperKit14PKStrokeStructVGMR);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v19 - v10;
  v12 = type metadata accessor for TaggedStroke(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PKStrokeProperties(v21, v14, type metadata accessor for TaggedStroke);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      (*(v5 + 32))(v7, v14, v4);
      Ref.visitReferences(_:)();
      return (*(v5 + 8))(v7, v4);
    }

    else
    {
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_9Coherence10AnyCRValueVtMd, &_sSi_9Coherence10AnyCRValueVtMR);
      v18 = v20;
      (*(v20 + 32))(v3, &v14[*(v17 + 48)], v1);
      AnyCRValue.visitReferences(_:)();
      return (*(v18 + 8))(v3, v1);
    }
  }

  else
  {
    (*(v9 + 32))(v11, v14, v8);
    Ref.visitReferences(_:)();
    return (*(v9 + 8))(v11, v8);
  }
}

uint64_t TaggedStroke.copy(renamingReferences:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v26 = a1;
  v27 = a2;
  v4 = type metadata accessor for AnyCRValue();
  v24 = *(v4 - 8);
  v25 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRSequenceVyACyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGGMd, &_s9Coherence3RefVyAA10CRSequenceVyACyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGGMR);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v24 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit14PKStrokeStructVGMd, &_s9Coherence3RefVy8PaperKit14PKStrokeStructVGMR);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v24 - v13;
  v15 = type metadata accessor for TaggedStroke(0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PKStrokeProperties(v3, v17, type metadata accessor for TaggedStroke);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      (*(v8 + 32))(v10, v17, v7);
      Ref.copy(renamingReferences:)();
      (*(v8 + 8))(v10, v7);
    }

    else
    {
      v19 = *v17;
      v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_9Coherence10AnyCRValueVtMd, &_sSi_9Coherence10AnyCRValueVtMR);
      v22 = v24;
      v21 = v25;
      (*(v24 + 32))(v6, &v17[*(v20 + 48)], v25);
      *v27 = v19;
      AnyCRValue.copy(renamingReferences:)();
      (*(v22 + 8))(v6, v21);
    }
  }

  else
  {
    (*(v12 + 32))(v14, v17, v11);
    Ref.copy(renamingReferences:)();
    (*(v12 + 8))(v14, v11);
  }

  return swift_storeEnumTagMultiPayload();
}

uint64_t TaggedStroke.init(from:)@<X0>(uint64_t a2@<X8>)
{
  v4 = type metadata accessor for TaggedStroke(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v17 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v17 - v11);
  dispatch thunk of CRDecoder.valueContainer()();
  if (v2)
  {
  }

  v18 = a2;
  v13 = dispatch thunk of CRDecoder.CRValueContainer.decodeTaggedContainer()();

  if (v13 == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRSequenceVyAA3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGMd, &_s9Coherence10CRSequenceVyAA3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGMR);
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRSequence<Ref<CRRegister<TaggedStroke>>> and conformance CRSequence<A>, &_s9Coherence10CRSequenceVyAA3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGMd, &_s9Coherence10CRSequenceVyAA3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGMR, MEMORY[0x1E69950A0]);
    Ref.init(from:)();

    swift_storeEnumTagMultiPayload();
    v12 = v9;
LABEL_9:
    v16 = v18;
    return outlined init with take of TaggedStroke(v12, v16, type metadata accessor for TaggedStroke);
  }

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_9Coherence10AnyCRValueVtMd, &_sSi_9Coherence10AnyCRValueVtMR);
    *v6 = v13;
    AnyCRValue.init(from:)();

    swift_storeEnumTagMultiPayload();
    v12 = v6;
    goto LABEL_9;
  }

  type metadata accessor for PKStrokeStruct(0);
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type PKStrokeStruct and conformance PKStrokeStruct, type metadata accessor for PKStrokeStruct, &protocol conformance descriptor for PKStrokeStruct);
  Ref.init(from:)();

  v15 = v18;
  swift_storeEnumTagMultiPayload();
  v16 = v15;
  return outlined init with take of TaggedStroke(v12, v16, type metadata accessor for TaggedStroke);
}

uint64_t TaggedStroke.encode(to:)()
{
  v25 = type metadata accessor for AnyCRValue();
  v27 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v1 = v24 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRSequenceVyACyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGGMd, &_s9Coherence3RefVyAA10CRSequenceVyACyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGGMR);
  v26 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = v24 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit14PKStrokeStructVGMd, &_s9Coherence3RefVy8PaperKit14PKStrokeStructVGMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v24 - v7;
  v9 = type metadata accessor for TaggedStroke(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = v29;
  result = dispatch thunk of CREncoder.valueContainer()();
  if (!v12)
  {
    v24[0] = v1;
    v24[1] = result;
    v14 = v5;
    v16 = v26;
    v15 = v27;
    v29 = 0;
    outlined init with copy of PKStrokeProperties(v28, v11, type metadata accessor for TaggedStroke);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        (*(v16 + 32))(v4, v11, v2);
        lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type Ref<CRSequence<Ref<CRRegister<TaggedStroke>>>> and conformance Ref<A>, &_s9Coherence3RefVyAA10CRSequenceVyACyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGGMd, &_s9Coherence3RefVyAA10CRSequenceVyACyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGGMR, MEMORY[0x1E69953B0]);
        v18 = v29;
        dispatch thunk of CREncoder.CRValueContainer.encode<A>(_:)();
        if (!v18)
        {
          dispatch thunk of CREncoder.CRValueContainer.encode(tag:)();

          return (*(v16 + 8))(v4, v2);
        }

        (*(v16 + 8))(v4, v2);
      }

      else
      {
        v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_9Coherence10AnyCRValueVtMd, &_sSi_9Coherence10AnyCRValueVtMR);
        v21 = v24[0];
        v22 = v25;
        (*(v15 + 32))(v24[0], &v11[*(v20 + 48)], v25);
        v23 = v29;
        dispatch thunk of CREncoder.CRValueContainer.encode<A>(_:)();
        if (!v23)
        {
          dispatch thunk of CREncoder.CRValueContainer.encode(tag:)();

          return (*(v15 + 8))(v21, v22);
        }

        (*(v15 + 8))(v21, v22);
      }
    }

    else
    {
      (*(v6 + 32))(v8, v11, v14);
      lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type Ref<PKStrokeStruct> and conformance Ref<A>, &_s9Coherence3RefVy8PaperKit14PKStrokeStructVGMd, &_s9Coherence3RefVy8PaperKit14PKStrokeStructVGMR, MEMORY[0x1E69953B0]);
      v19 = v29;
      dispatch thunk of CREncoder.CRValueContainer.encode<A>(_:)();
      if (!v19)
      {
        dispatch thunk of CREncoder.CRValueContainer.encode(tag:)();

        return (*(v6 + 8))(v8, v14);
      }

      (*(v6 + 8))(v8, v14);
    }
  }

  return result;
}

uint64_t TaggedStroke.minEncodingVersion.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E6995278];
  v3 = type metadata accessor for CRCodableVersion();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t protocol witness for CRCodable.minEncodingVersion.getter in conformance TaggedStroke@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E6995278];
  v3 = type metadata accessor for CRCodableVersion();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t PKStrokeStruct.merge(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a1;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGMd, &_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGMR);
  v37 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v35 = &v31 - v5;
  MEMORY[0x1EEE9AC00](v6);
  v33 = &v31 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGMR);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v32 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v31 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v31 - v15;
  v17 = type metadata accessor for MergeResult();
  v18 = *(v17 - 8);
  v39 = v17;
  v40 = v18;
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = a2;
  MergeResult.init()();
  CRRegister.projectedValue.getter();
  CRRegister.projectedValue.getter();
  CRRegister.merge(_:)();
  v21 = *(v9 + 8);
  v21(v16, v8);
  (*(v9 + 16))(v32, v13, v8);
  CRRegister.projectedValue.setter();
  v21(v13, v8);
  MergeResult.merge(_:)();
  v22 = *(v40 + 8);
  v40 += 8;
  v32 = v22;
  (v22)(v20, v39);
  type metadata accessor for PKStrokeStruct(0);
  v24 = v33;
  v23 = v34;
  CRRegister.projectedValue.getter();
  v25 = v35;
  CRRegister.projectedValue.getter();
  CRRegister.merge(_:)();
  v26 = v37;
  v27 = *(v37 + 8);
  v27(v24, v23);
  (*(v26 + 16))(v36, v25, v23);
  CRRegister.projectedValue.setter();
  v27(v25, v23);
  MergeResult.merge(_:)();
  v28 = v39;
  v29 = v32;
  (v32)(v20, v39);
  UnknownProperties.merge(_:)();
  MergeResult.merge(_:)();
  return (v29)(v20, v28);
}

uint64_t PKStrokeStruct.actionUndoingDifference(from:)@<X0>(uint64_t a1@<X8>)
{
  v32 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGMd, &_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGMR);
  v31 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v30 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v29 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit18PKStrokePropertiesV_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit18PKStrokePropertiesV_GSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v29 = &v29 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGMR);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v29 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVG_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVG_GSgMR);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v29 - v16;
  CRRegister.projectedValue.getter();
  CRRegister.projectedValue.getter();
  CRRegister.actionUndoingDifference(from:)();
  v18 = *(v9 + 8);
  v18(v11, v8);
  v19 = v14;
  v20 = v29;
  v18(v19, v8);
  type metadata accessor for PKStrokeStruct(0);
  CRRegister.projectedValue.getter();
  v21 = v30;
  CRRegister.projectedValue.getter();
  CRRegister.actionUndoingDifference(from:)();
  v22 = *(v31 + 8);
  v22(v21, v1);
  v22(v5, v1);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVG_GMd, &_s9Coherence10CRRegisterV14MutatingActionVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVG_GMR);
  if ((*(*(v23 - 8) + 48))(v17, 1, v23) == 1 && (v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit18PKStrokePropertiesV_GMd, &_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit18PKStrokePropertiesV_GMR), (*(*(v24 - 8) + 48))(v20, 1, v24) == 1))
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v17, &_s9Coherence10CRRegisterV14MutatingActionVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVG_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVG_GSgMR);
    v25 = type metadata accessor for PKStrokeStruct.MutatingAction(0);
    (*(*(v25 - 8) + 56))(v32, 1, 1, v25);
  }

  else
  {
    v26 = v32;
    outlined init with copy of Date?(v17, v32, &_s9Coherence10CRRegisterV14MutatingActionVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVG_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVG_GSgMR);
    v27 = type metadata accessor for PKStrokeStruct.MutatingAction(0);
    outlined init with copy of Date?(v20, v26 + *(v27 + 20), &_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit18PKStrokePropertiesV_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit18PKStrokePropertiesV_GSgMR);
    outlined destroy of StocksKitCurrencyCache.Provider?(v17, &_s9Coherence10CRRegisterV14MutatingActionVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVG_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVG_GSgMR);
    (*(*(v27 - 8) + 56))(v26, 0, 1, v27);
  }

  return outlined destroy of StocksKitCurrencyCache.Provider?(v20, &_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit18PKStrokePropertiesV_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit18PKStrokePropertiesV_GSgMR);
}

uint64_t PKStrokeStruct.hasDelta(from:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGMd, &_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGMR);
  v21[0] = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v21 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGMR);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v21 - v13;
  CRRegister.projectedValue.getter();
  v21[1] = a1;
  CRRegister.projectedValue.getter();
  v15 = CRRegister.hasDelta(from:)();
  v16 = *(v9 + 8);
  v16(v11, v8);
  v16(v14, v8);
  if (v15 & 1) != 0 || (type metadata accessor for PKStrokeStruct(0), CRRegister.projectedValue.getter(), CRRegister.projectedValue.getter(), v17 = CRRegister.hasDelta(from:)(), v18 = *(v21[0] + 8), v18(v4, v2), v18(v7, v2), (v17))
  {
    v19 = 1;
  }

  else
  {
    v19 = UnknownProperties.hasDelta(from:)();
  }

  return v19 & 1;
}

uint64_t PKStrokeStruct.copy(renamingReferences:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a1;
  v4 = type metadata accessor for UnknownProperties();
  v32 = *(v4 - 8);
  v33 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v31 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGMd, &_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGMR);
  v30 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v29 = &v26 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGMR);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v26 - v16;
  v27 = v2;
  outlined init with copy of PKStrokeProperties(v2, a2, type metadata accessor for PKStrokeStruct);
  CRRegister.projectedValue.getter();
  CRRegister.copy(renamingReferences:)();
  v18 = *(v12 + 8);
  v18(v14, v11);
  (*(v12 + 16))(v14, v17, v11);
  v19 = a2;
  CRRegister.projectedValue.setter();
  v18(v17, v11);
  v20 = type metadata accessor for PKStrokeStruct(0);
  CRRegister.projectedValue.getter();
  v21 = v29;
  CRRegister.copy(renamingReferences:)();
  v22 = v30;
  v23 = *(v30 + 8);
  v23(v8, v6);
  (*(v22 + 16))(v8, v21, v6);
  CRRegister.projectedValue.setter();
  v23(v21, v6);
  v24 = v31;
  UnknownProperties.copy(renamingReferences:)();
  return (*(v32 + 40))(v19 + *(v20 + 28), v24, v33);
}

uint64_t PKStrokeStruct.init(defaultState:)@<X0>(uint64_t a1@<X8>)
{
  v24 = type metadata accessor for UnknownProperties();
  v23 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGMd, &_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGMR);
  v17 = *(v4 - 8);
  v18 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v19 = &v16 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGMR);
  v20 = *(v6 - 8);
  v21 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v16 - v7;
  v9 = type metadata accessor for PKStrokeStruct(0);
  v10 = v9[6];
  type metadata accessor for PKStrokeStructCache();
  v11 = swift_allocObject();
  v12 = *(MEMORY[0x1E695F050] + 16);
  *(v11 + 16) = *MEMORY[0x1E695F050];
  *(v11 + 32) = v12;
  *(v11 + 48) = 0;
  *(v11 + 56) = 0x3FF0000000000000;
  *(v11 + 64) = 0;
  *(v11 + 72) = 0;
  *(v11 + 80) = 0x3FF0000000000000;
  *(v11 + 88) = 0;
  *(v11 + 96) = 0;
  *(v11 + 104) = 0;
  *(a1 + v10) = v11;
  v13 = v9[7];
  UnknownProperties.init()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGMd, &_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGMR);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type Ref<PKStrokeInheritedProperties> and conformance Ref<A>, &_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGMd, &_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGMR, MEMORY[0x1E69953B0]);
  v14 = v22;
  CRRegister.init(defaultState:)();
  if (v14)
  {

    return (*(v23 + 8))(a1 + v13, v24);
  }

  else
  {
    (*(v20 + 32))(a1, v8, v21);
    type metadata accessor for PKStrokeProperties(0);
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type PKStrokeProperties and conformance PKStrokeProperties, type metadata accessor for PKStrokeProperties, &protocol conformance descriptor for PKStrokeProperties);
    CRRegister.init(defaultState:)();
    (*(v17 + 32))(a1 + v9[5], v19, v18);
    UnknownProperties.init(defaultState:)();
    return (*(v23 + 40))(a1 + v13, v3, v24);
  }
}

uint64_t PKStrokeStruct.isDefaultState.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGMd, &_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGMR);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v11 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGMR);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - v6;
  type metadata accessor for PKStrokeStruct(0);
  if (UnknownProperties.isDefaultState.getter() & 1) != 0 && (CRRegister.projectedValue.getter(), v8 = CRRegister.isDefaultState.getter(), (*(v5 + 8))(v7, v4), (v8))
  {
    CRRegister.projectedValue.getter();
    v9 = CRRegister.isDefaultState.getter();
    (*(v1 + 8))(v3, v0);
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

uint64_t PKStrokeStruct.visitReferences(_:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGMd, &_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGMR);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - v7;
  CRRegister.projectedValue.getter();
  CRRegister.visitReferences(_:)();
  (*(v6 + 8))(v8, v5);
  type metadata accessor for PKStrokeStruct(0);
  CRRegister.projectedValue.getter();
  CRRegister.visitReferences(_:)();
  (*(v2 + 8))(v4, v1);
  return UnknownProperties.visitReferences(_:)();
}

uint64_t PKStrokeStruct.newRefs(from:)(uint64_t a1)
{
  v20[1] = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGMd, &_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGMR);
  v21 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v3 = v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v20 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGMR);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v20 - v12;
  v22 = MEMORY[0x1E69E7CD0];
  CRRegister.projectedValue.getter();
  CRRegister.projectedValue.getter();
  v14 = CRRegister.newRefs(from:)();
  v15 = *(v8 + 8);
  v15(v10, v7);
  v15(v13, v7);
  specialized Set.formUnion<A>(_:)(v14);
  type metadata accessor for PKStrokeStruct(0);
  CRRegister.projectedValue.getter();
  CRRegister.projectedValue.getter();
  v16 = CRRegister.newRefs(from:)();
  v17 = *(v21 + 8);
  v17(v3, v1);
  v17(v6, v1);
  specialized Set.formUnion<A>(_:)(v16);
  v18 = UnknownProperties.newRefs(from:)();
  specialized Set.formUnion<A>(_:)(v18);
  return v22;
}

void specialized Set.formUnion<A>(_:)(uint64_t a1)
{
  v2 = type metadata accessor for CRKeyPath();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v23 - v7;
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = v23 - v11;
  v13 = 0;
  v24 = a1;
  v16 = *(a1 + 56);
  v15 = a1 + 56;
  v14 = v16;
  v17 = 1 << *(v15 - 24);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v14;
  v20 = (v17 + 63) >> 6;
  v23[1] = v3 + 32;
  v23[2] = v3 + 16;
  v23[0] = v3 + 8;
  if ((v18 & v14) != 0)
  {
    do
    {
      v21 = v13;
LABEL_9:
      v22 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
      (*(v3 + 16))(v12, *(v24 + 48) + *(v3 + 72) * (v22 | (v21 << 6)), v2, v10);
      (*(v3 + 32))(v5, v12, v2);
      specialized Set._Variant.insert(_:)(v8, v5);
      (*(v3 + 8))(v8, v2);
    }

    while (v19);
  }

  while (1)
  {
    v21 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v21 >= v20)
    {

      return;
    }

    v19 = *(v15 + 8 * v21);
    ++v13;
    if (v19)
    {
      v13 = v21;
      goto LABEL_9;
    }
  }

  __break(1u);
}

{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    __CocoaSet.makeIterator()();
    type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIColor, 0x1E69DC888);
    lazy protocol witness table accessor for type UIColor and conformance NSObject(&lazy protocol witness table cache variable for type UIColor and conformance NSObject, &lazy cache variable for type metadata for UIColor, 0x1E69DC888, MEMORY[0x1E69E81B8]);
    Set.Iterator.init(_cocoa:)();
    v1 = v14[1];
    v2 = v14[2];
    v3 = v14[3];
    v4 = v14[4];
    v5 = v14[5];
  }

  else
  {
    v4 = 0;
    v6 = -1 << *(a1 + 32);
    v2 = (a1 + 56);
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = (v8 & *(a1 + 56));
  }

  if (v1 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v9 = v4;
    v10 = v5;
    v11 = v4;
    if (!v5)
    {
      break;
    }

LABEL_12:
    v12 = (v10 - 1) & v10;
    v13 = *(*(v1 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v10)))));
    if (!v13)
    {
LABEL_18:
      outlined consume of Set<UIColor>.Iterator._Variant(v1);
      return;
    }

    while (1)
    {
      specialized Set._Variant.insert(_:)(v14, v13);

      v4 = v11;
      v5 = v12;
      if ((v1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (__CocoaSet.Iterator.next()())
      {
        type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIColor, 0x1E69DC888);
        swift_dynamicCast();
        v13 = v14[0];
        v11 = v4;
        v12 = v5;
        if (v14[0])
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v11 = (v9 + 1);
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v11 >= ((v3 + 64) >> 6))
    {
      goto LABEL_18;
    }

    v10 = v2[v11];
    ++v9;
    if (v10)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

Swift::Bool __swiftcall PKStrokeStruct.needToFinalizeTimestamps()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGMd, &_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGMR);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v12 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGMR);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - v6;
  CRRegister.projectedValue.getter();
  v8 = CRRegister.needToFinalizeTimestamps()();
  (*(v5 + 8))(v7, v4);
  v10 = v8 || (type metadata accessor for PKStrokeStruct(0), CRRegister.projectedValue.getter(), v9 = CRRegister.needToFinalizeTimestamps()(), (*(v1 + 8))(v3, v0), v9) || UnknownProperties.needToFinalizeTimestamps()();
  return v10;
}

uint64_t PKStrokeStruct.finalizeTimestamps(_:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGMd, &_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGMR);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v17 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGMR);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v16 - v13;
  CRRegister.projectedValue.getter();
  CRRegister.finalizeTimestamps(_:)();
  (*(v9 + 16))(v11, v14, v8);
  CRRegister.projectedValue.setter();
  (*(v9 + 8))(v14, v8);
  type metadata accessor for PKStrokeStruct(0);
  CRRegister.projectedValue.getter();
  CRRegister.finalizeTimestamps(_:)();
  (*(v3 + 16))(v17, v7, v2);
  CRRegister.projectedValue.setter();
  (*(v3 + 8))(v7, v2);
  return MEMORY[0x1DA6CBA30](a1);
}

uint64_t PKStrokeStruct.minEncodingVersion.getter@<X0>(uint64_t a1@<X8>)
{
  v50 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGMd, &_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGMR);
  v42 = *(v2 - 8);
  v43 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v41 = &v39 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGMR);
  v47 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v39 - v5;
  v7 = type metadata accessor for CRCodableVersion();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v40 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v39 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v46 = &v39 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v39 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v39 - v19;
  v39 = type metadata accessor for PKStrokeStruct(0);
  v49 = v1;
  UnknownProperties.minEncodingVersion.getter();
  v21 = *(v8 + 104);
  v45 = *MEMORY[0x1E6995288];
  v44 = v21;
  v21(v17);
  v22 = static CRCodableVersion.== infix(_:_:)();
  v48 = *(v8 + 8);
  v48(v17, v7);
  if (v22)
  {
    return (*(v8 + 32))(v50, v20, v7);
  }

  CRRegister.projectedValue.getter();
  CRRegister.minEncodingVersion.getter();
  (*(v47 + 8))(v6, v4);
  v47 = lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type CRCodableVersion and conformance CRCodableVersion, MEMORY[0x1E6995298], MEMORY[0x1E69952A0]);
  v24 = dispatch thunk of static Comparable.>= infix(_:_:)();
  v25 = (v24 & 1) == 0;
  if (v24)
  {
    v26 = v20;
  }

  else
  {
    v26 = v12;
  }

  if (v25)
  {
    v27 = v20;
  }

  else
  {
    v27 = v12;
  }

  v28 = v48;
  v48(v26, v7);
  v29 = *(v8 + 32);
  v30 = v46;
  v29(v46, v27, v7);
  v29(v20, v30, v7);
  v44(v17, v45, v7);
  v31 = static CRCodableVersion.== infix(_:_:)();
  v28(v17, v7);
  if (v31)
  {
    v32 = v50;
LABEL_14:
    v38 = v20;
    return (v29)(v32, v38, v7);
  }

  v33 = v41;
  v34 = v43;
  CRRegister.projectedValue.getter();
  v35 = v40;
  CRRegister.minEncodingVersion.getter();
  (*(v42 + 8))(v33, v34);
  v36 = dispatch thunk of static Comparable.>= infix(_:_:)();
  v37 = v50;
  if ((v36 & 1) == 0)
  {
    v48(v35, v7);
    v32 = v37;
    goto LABEL_14;
  }

  v48(v20, v7);
  v32 = v37;
  v38 = v35;
  return (v29)(v32, v38, v7);
}

uint64_t PKStrokeStruct.observableDifference(from:with:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v32 = a1;
  v35 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGMd, &_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGMR);
  v34 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v33 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v31 = &v30 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence27CRValueObservableDifferenceOSgMd, &_s9Coherence27CRValueObservableDifferenceOSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v30 = &v30 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGMR);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v30 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefV20ObservableDifferenceOy8PaperKit27PKStrokeInheritedPropertiesV_GSgMd, &_s9Coherence3RefV20ObservableDifferenceOy8PaperKit27PKStrokeInheritedPropertiesV_GSgMR);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v30 - v16;
  CRRegister.projectedValue.getter();
  CRRegister.projectedValue.getter();
  CRRegister.observableDifference(from:with:)();
  v18 = *(v9 + 8);
  v19 = v11;
  v20 = v30;
  v18(v19, v8);
  v18(v14, v8);
  type metadata accessor for PKStrokeStruct(0);
  v21 = v31;
  CRRegister.projectedValue.getter();
  v22 = v33;
  CRRegister.projectedValue.getter();
  CRRegister.observableDifference(from:with:)();
  v23 = *(v34 + 8);
  v23(v22, v2);
  v23(v21, v2);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefV20ObservableDifferenceOy8PaperKit27PKStrokeInheritedPropertiesV_GMd, &_s9Coherence3RefV20ObservableDifferenceOy8PaperKit27PKStrokeInheritedPropertiesV_GMR);
  if ((*(*(v24 - 8) + 48))(v17, 1, v24) == 1 && (v25 = type metadata accessor for CRValueObservableDifference(), (*(*(v25 - 8) + 48))(v20, 1, v25) == 1))
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v17, &_s9Coherence3RefV20ObservableDifferenceOy8PaperKit27PKStrokeInheritedPropertiesV_GSgMd, &_s9Coherence3RefV20ObservableDifferenceOy8PaperKit27PKStrokeInheritedPropertiesV_GSgMR);
    v26 = type metadata accessor for PKStrokeStruct.ObservableDifference(0);
    (*(*(v26 - 8) + 56))(v35, 1, 1, v26);
  }

  else
  {
    v27 = v35;
    outlined init with copy of Date?(v17, v35, &_s9Coherence3RefV20ObservableDifferenceOy8PaperKit27PKStrokeInheritedPropertiesV_GSgMd, &_s9Coherence3RefV20ObservableDifferenceOy8PaperKit27PKStrokeInheritedPropertiesV_GSgMR);
    v28 = type metadata accessor for PKStrokeStruct.ObservableDifference(0);
    outlined init with copy of Date?(v20, v27 + *(v28 + 20), &_s9Coherence27CRValueObservableDifferenceOSgMd, &_s9Coherence27CRValueObservableDifferenceOSgMR);
    outlined destroy of StocksKitCurrencyCache.Provider?(v17, &_s9Coherence3RefV20ObservableDifferenceOy8PaperKit27PKStrokeInheritedPropertiesV_GSgMd, &_s9Coherence3RefV20ObservableDifferenceOy8PaperKit27PKStrokeInheritedPropertiesV_GSgMR);
    (*(*(v28 - 8) + 56))(v27, 0, 1, v28);
  }

  return outlined destroy of StocksKitCurrencyCache.Provider?(v20, &_s9Coherence27CRValueObservableDifferenceOSgMd, &_s9Coherence27CRValueObservableDifferenceOSgMR);
}

uint64_t PKStrokeStruct.encode(to:)()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGMd, &_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGMR);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v11 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGMR);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v11 - v8;
  result = dispatch thunk of CREncoder.keyedContainer()();
  if (!v1)
  {
    v11[1] = v0;
    CRRegister.projectedValue.getter();
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<Ref<PKStrokeInheritedProperties>> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGMR, MEMORY[0x1E6995080]);
    dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
    (*(v7 + 8))(v9, v6);
    type metadata accessor for PKStrokeStruct(0);
    CRRegister.projectedValue.getter();
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<PKStrokeProperties> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGMd, &_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGMR, MEMORY[0x1E6995080]);
    dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
    (*(v3 + 8))(v5, v2);
    UnknownProperties.encode(to:)();
  }

  return result;
}

uint64_t PKStrokeStruct.init(from:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v100 = a1;
  v101 = a2;
  v2 = type metadata accessor for UnknownProperties();
  v97 = *(v2 - 8);
  v98 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v88 = &v80 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_9Coherence7AnyCRDTVtSgMd, &_sSS_9Coherence7AnyCRDTVtSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v91 = (&v80 - v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_9Coherence7AnyCRDTVtMd, &_sSS_9Coherence7AnyCRDTVtMR);
  v89 = *(v6 - 8);
  v90 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v87 = &v80 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v86 = &v80 - v9;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGMd, &_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGMR);
  v92 = *(v94 - 8);
  MEMORY[0x1EEE9AC00](v94);
  v93 = &v80 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v80 - v12);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v80 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGMR);
  v95 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v80 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v80 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v80 - v24;
  v26 = type metadata accessor for PKStrokeStruct(0);
  v27 = *(v26 + 24);
  type metadata accessor for PKStrokeStructCache();
  v28 = swift_allocObject();
  v29 = *(MEMORY[0x1E695F050] + 16);
  *(v28 + 16) = *MEMORY[0x1E695F050];
  *(v28 + 32) = v29;
  *(v28 + 48) = 0;
  *(v28 + 56) = 0x3FF0000000000000;
  *(v28 + 64) = 0;
  *(v28 + 72) = 0;
  *(v28 + 80) = 0x3FF0000000000000;
  *(v28 + 88) = 0;
  *(v28 + 96) = 0;
  *(v28 + 104) = 0;
  *&v101[v27] = v28;
  v96 = *(v26 + 28);
  UnknownProperties.init()();
  v30 = v99;
  v31 = dispatch thunk of CRDecoder.keyedContainer()();
  if (v30)
  {

    goto LABEL_8;
  }

  v84 = v28;
  v80 = v16;
  v81 = v13;
  v82 = v26;
  v83 = v17;
  v85 = 0;
  v99 = v31;
  if (dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGMd, &_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGMR);
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type Ref<PKStrokeInheritedProperties> and conformance Ref<A>, &_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGMd, &_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGMR, MEMORY[0x1E69953B0]);
    v32 = v85;
    CRRegister.init(from:)();
    if (!v32)
    {
      v33 = v101;
      (*(v95 + 32))(v101, v19, v83);
      goto LABEL_11;
    }

LABEL_7:

LABEL_8:

    v35 = v101;
    return (*(v97 + 8))(&v35[v96], v98);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGMd, &_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGMR);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type Ref<PKStrokeInheritedProperties> and conformance Ref<A>, &_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGMd, &_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGMR, MEMORY[0x1E69953B0]);
  v34 = v85;
  CRRegister.init(defaultState:)();
  if (v34)
  {
    goto LABEL_7;
  }

  v37 = *(v95 + 32);
  v38 = v83;
  v37(v25, v22, v83);
  v33 = v101;
  v37(v101, v25, v38);
LABEL_11:
  v39 = dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)();
  v40 = v93;
  if (v39)
  {
    type metadata accessor for PKStrokeProperties(0);
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type PKStrokeProperties and conformance PKStrokeProperties, type metadata accessor for PKStrokeProperties, &protocol conformance descriptor for PKStrokeProperties);
    CRRegister.init(from:)();
    (*(v92 + 32))(&v33[*(v82 + 20)], v40, v94);
  }

  else
  {
    type metadata accessor for PKStrokeProperties(0);
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type PKStrokeProperties and conformance PKStrokeProperties, type metadata accessor for PKStrokeProperties, &protocol conformance descriptor for PKStrokeProperties);
    v41 = v81;
    CRRegister.init(defaultState:)();
    v42 = *(v92 + 32);
    v43 = v80;
    v44 = v41;
    v45 = v94;
    v42(v80, v44, v94);
    v42(&v33[*(v82 + 20)], v43, v45);
  }

  v46 = dispatch thunk of CRDecoder.CRDTKeyedContainer.allKeys()();
  v85 = 0;
  v47 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(v46);

  v103 = v47;
  specialized Set._Variant.remove(_:)(0x6574697265686E69, 0xE900000000000064);

  specialized Set._Variant.remove(_:)(0x69747265706F7270, 0xEA00000000007365);

  v48 = v103;
  v49 = v103 + 56;
  v50 = 1 << *(v103 + 32);
  v51 = -1;
  if (v50 < 64)
  {
    v51 = ~(-1 << v50);
  }

  v52 = v51 & *(v103 + 56);
  v53 = (v50 + 63) >> 6;
  v93 = (v89 + 56);

  v54 = 0;
  v81 = MEMORY[0x1E69E7CC0];
  v55 = v90;
  while (1)
  {
    v56 = v54;
    if (!v52)
    {
      break;
    }

LABEL_21:
    v57 = __clz(__rbit64(v52));
    v52 &= v52 - 1;
    v58 = (*(v48 + 6) + ((v54 << 10) | (16 * v57)));
    v60 = *v58;
    v59 = v58[1];

    if (dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)())
    {
      v80 = v48;
      v62 = v91;
      *v91 = v60;
      v62[1] = v59;
      v63 = v62;

      v64 = v85;
      AnyCRDT.init(from:)();
      if (v64)
      {
LABEL_37:

        swift_bridgeObjectRelease_n();
        v35 = v101;
        v75 = v94;
        v76 = v95;
        v78 = v83;
LABEL_34:
        (*(v76 + 8))(v35, v78);
        (*(v92 + 8))(&v35[*(v82 + 20)], v75);

        return (*(v97 + 8))(&v35[v96], v98);
      }

      (*v93)(v63, 0, 1, v55);
      v65 = v86;
      outlined init with take of Range<AttributedString.Index>(v63, v86, &_sSS_9Coherence7AnyCRDTVtMd, &_sSS_9Coherence7AnyCRDTVtMR);
      outlined init with take of Range<AttributedString.Index>(v65, v87, &_sSS_9Coherence7AnyCRDTVtMd, &_sSS_9Coherence7AnyCRDTVtMR);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v85 = 0;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v81 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v81[2] + 1, 1, v81, &_ss23_ContiguousArrayStorageCySS_9Coherence7AnyCRDTVtGMd, &_ss23_ContiguousArrayStorageCySS_9Coherence7AnyCRDTVtGMR, &_sSS_9Coherence7AnyCRDTVtMd, &_sSS_9Coherence7AnyCRDTVtMR);
      }

      v67 = v89;
      v69 = v81[2];
      v68 = v81[3];
      v70 = v87;
      v48 = v80;
      if (v69 >= v68 >> 1)
      {
        v72 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v68 > 1), v69 + 1, 1, v81, &_ss23_ContiguousArrayStorageCySS_9Coherence7AnyCRDTVtGMd, &_ss23_ContiguousArrayStorageCySS_9Coherence7AnyCRDTVtGMR, &_sSS_9Coherence7AnyCRDTVtMd, &_sSS_9Coherence7AnyCRDTVtMR);
        v67 = v89;
        v81 = v72;
        v70 = v87;
      }

      v71 = v81;
      v81[2] = v69 + 1;
      outlined init with take of Range<AttributedString.Index>(v70, v71 + ((*(v67 + 80) + 32) & ~*(v67 + 80)) + *(v67 + 72) * v69, &_sSS_9Coherence7AnyCRDTVtMd, &_sSS_9Coherence7AnyCRDTVtMR);
    }

    else
    {

      v61 = v91;
      (*v93)(v91, 1, 1, v90);
      outlined destroy of StocksKitCurrencyCache.Provider?(v61, &_sSS_9Coherence7AnyCRDTVtSgMd, &_sSS_9Coherence7AnyCRDTVtSgMR);
    }
  }

  while (1)
  {
    v54 = v56 + 1;
    if (__OFADD__(v56, 1))
    {
      __break(1u);
      goto LABEL_37;
    }

    if (v54 >= v53)
    {
      break;
    }

    v52 = *(v49 + 8 * v54);
    ++v56;
    if (v52)
    {
      goto LABEL_21;
    }
  }

  v73 = v81;
  if (v81[2])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS9Coherence7AnyCRDTVGMd, &_ss18_DictionaryStorageCySS9Coherence7AnyCRDTVGMR);
    v74 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v74 = MEMORY[0x1E69E7CC8];
  }

  v35 = v101;
  v75 = v94;
  v76 = v95;
  v77 = v88;
  v78 = v83;
  v102 = v74;
  v79 = v85;
  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v73, 1, &v102);
  if (v79)
  {

    goto LABEL_34;
  }

  UnknownProperties.init(_:)();

  return (*(v97 + 40))(&v35[v96], v77, v98);
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC9Coherence9CRKeyPathV_SD4KeysVyAF8PaperKit09AnyCanvasA4ViewC_GTt0g5(uint64_t a1)
{
  v2 = type metadata accessor for CRKeyPath();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v25 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = v25 - v10;
  v12 = *(a1 + 16);
  v13 = lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type CRKeyPath and conformance CRKeyPath, MEMORY[0x1E69954B8], MEMORY[0x1E69954C8]);
  result = MEMORY[0x1DA6CD4F0](v12, v2, v13);
  v15 = 0;
  v26 = a1;
  v27 = result;
  v18 = *(a1 + 64);
  v17 = a1 + 64;
  v16 = v18;
  v19 = 1 << *(v17 - 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v16;
  v22 = (v19 + 63) >> 6;
  v25[2] = v3 + 32;
  v25[3] = v3 + 16;
  v25[1] = v3 + 8;
  if ((v20 & v16) != 0)
  {
    do
    {
      v23 = v15;
LABEL_9:
      v24 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
      (*(v3 + 16))(v11, *(v26 + 48) + *(v3 + 72) * (v24 | (v23 << 6)), v2);
      (*(v3 + 32))(v5, v11, v2);
      specialized Set._Variant.insert(_:)(v8, v5);
      result = (*(v3 + 8))(v8, v2);
    }

    while (v21);
  }

  while (1)
  {
    v23 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v23 >= v22)
    {

      return v27;
    }

    v21 = *(v17 + 8 * v23);
    ++v15;
    if (v21)
    {
      v15 = v23;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t PKStrokeStruct.delta(_:from:)@<X0>(uint64_t a2@<X8>)
{
  v46 = a2;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGMd, &_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGMR);
  v45 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v44 = &v39 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v43 = &v39 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGSgMd, &_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v40 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v41 = &v39 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGMR);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v39 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGSgMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGSgMR);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v39 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v39 - v19;
  CRRegister.projectedValue.getter();
  CRRegister.projectedValue.getter();
  CRRegister.delta(_:from:)();
  v21 = *(v10 + 8);
  v21(v12, v9);
  v22 = v15;
  v23 = v41;
  v21(v22, v9);
  type metadata accessor for PKStrokeStruct(0);
  v24 = v42;
  v25 = v43;
  CRRegister.projectedValue.getter();
  v26 = v10;
  v27 = v24;
  v28 = v44;
  CRRegister.projectedValue.getter();
  v29 = v25;
  CRRegister.delta(_:from:)();
  v30 = v45;
  v31 = *(v45 + 8);
  v31(v28, v27);
  v31(v29, v27);
  if ((*(v26 + 48))(v20, 1, v9) == 1 && (*(v30 + 48))(v23, 1, v27) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v20, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGSgMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGSgMR);
    v32 = type metadata accessor for PKStrokeStruct.Partial(0);
    (*(*(v32 - 8) + 56))(v46, 1, 1, v32);
  }

  else
  {
    v33 = v39;
    outlined init with copy of Date?(v20, v39, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGSgMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGSgMR);
    v34 = v40;
    outlined init with copy of Date?(v23, v40, &_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGSgMd, &_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGSgMR);
    v35 = v46;
    (*(v26 + 56))(v46, 1, 1, v9);
    v36 = type metadata accessor for PKStrokeStruct.Partial(0);
    v37 = *(v36 + 20);
    (*(v30 + 56))(v35 + v37, 1, 1, v27);
    outlined assign with take of UUID?(v33, v35, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGSgMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGSgMR);
    outlined assign with take of UUID?(v34, v35 + v37, &_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGSgMd, &_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGSgMR);
    outlined destroy of StocksKitCurrencyCache.Provider?(v20, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGSgMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGSgMR);
    (*(*(v36 - 8) + 56))(v35, 0, 1, v36);
  }

  return outlined destroy of StocksKitCurrencyCache.Provider?(v23, &_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGSgMd, &_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGSgMR);
}

BOOL PKStrokeStruct.canMerge(delta:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGSgMd, &_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v28 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGMd, &_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGMR);
  v31 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v30 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v29 = &v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGSgMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v28 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGMR);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v28 - v17;
  v32 = a1;
  outlined init with copy of Date?(a1, v11, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGSgMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGSgMR);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v11, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGSgMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGSgMR);
  }

  else
  {
    (*(v13 + 32))(v18, v11, v12);
    CRRegister.projectedValue.getter();
    v19 = CRRegister.canMerge(delta:)();
    v20 = *(v13 + 8);
    v20(v15, v12);
    v20(v18, v12);
    if ((v19 & 1) == 0)
    {
      return 0;
    }
  }

  v21 = type metadata accessor for PKStrokeStruct.Partial(0);
  outlined init with copy of Date?(v32 + *(v21 + 20), v4, &_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGSgMd, &_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGSgMR);
  v22 = v31;
  if ((*(v31 + 48))(v4, 1, v5) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v4, &_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGSgMd, &_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGSgMR);
    return 1;
  }

  v23 = v29;
  (*(v22 + 32))(v29, v4, v5);
  type metadata accessor for PKStrokeStruct(0);
  v24 = v30;
  CRRegister.projectedValue.getter();
  v25 = CRRegister.canMerge(delta:)();
  v26 = *(v22 + 8);
  v26(v24, v5);
  v26(v23, v5);
  return (v25 & 1) != 0;
}

BOOL PKStrokeStruct.merge(delta:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGSgMd, &_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v36 = &v33 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGMd, &_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGMR);
  v37 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v35 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v34 = &v33 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v33 = &v33 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGSgMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGSgMR);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v33 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGMR);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v33 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v33 - v22;
  v38 = v1;
  v24 = PKStrokeStruct.canMerge(delta:)(a1);
  if (v24)
  {
    outlined init with copy of Date?(a1, v13, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGSgMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGSgMR);
    if ((*(v15 + 48))(v13, 1, v14) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v13, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGSgMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGSgMR);
    }

    else
    {
      (*(v15 + 32))(v23, v13, v14);
      CRRegister.projectedValue.getter();
      CRRegister.merge(delta:)();
      (*(v15 + 16))(v17, v20, v14);
      CRRegister.projectedValue.setter();
      v25 = *(v15 + 8);
      v25(v20, v14);
      v25(v23, v14);
    }

    v26 = type metadata accessor for PKStrokeStruct.Partial(0);
    v27 = v36;
    outlined init with copy of Date?(a1 + *(v26 + 20), v36, &_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGSgMd, &_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGSgMR);
    v28 = v37;
    if ((*(v37 + 48))(v27, 1, v5) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v27, &_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGSgMd, &_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGSgMR);
    }

    else
    {
      v29 = v33;
      (*(v28 + 32))(v33, v27, v5);
      type metadata accessor for PKStrokeStruct(0);
      v30 = v34;
      CRRegister.projectedValue.getter();
      CRRegister.merge(delta:)();
      (*(v28 + 16))(v35, v30, v5);
      CRRegister.projectedValue.setter();
      v31 = *(v28 + 8);
      v31(v30, v5);
      v31(v29, v5);
    }
  }

  return v24;
}

uint64_t protocol witness for CRDT.context.getter in conformance PKStrokeStruct(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type PKStrokeStruct and conformance PKStrokeStruct, type metadata accessor for PKStrokeStruct, &protocol conformance descriptor for PKStrokeStruct);

  return MEMORY[0x1EEDF5248](a1, v2);
}

uint64_t protocol witness for CRType.visitReferences(_:) in conformance PKStrokeStruct(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGMd, &_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGMR);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - v7;
  CRRegister.projectedValue.getter();
  CRRegister.visitReferences(_:)();
  (*(v6 + 8))(v8, v5);
  CRRegister.projectedValue.getter();
  CRRegister.visitReferences(_:)();
  (*(v2 + 8))(v4, v1);
  return UnknownProperties.visitReferences(_:)();
}

BOOL protocol witness for CRType.needToFinalizeTimestamps() in conformance PKStrokeStruct()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGMd, &_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGMR);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v12 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGMR);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - v6;
  CRRegister.projectedValue.getter();
  v8 = CRRegister.needToFinalizeTimestamps()();
  (*(v5 + 8))(v7, v4);
  v10 = v8 || (CRRegister.projectedValue.getter(), v9 = CRRegister.needToFinalizeTimestamps()(), (*(v1 + 8))(v3, v0), v9) || UnknownProperties.needToFinalizeTimestamps()();
  return v10;
}

uint64_t protocol witness for CRCodable.minAppFormatVersion.getter in conformance PKStrokeStruct()
{
  v0 = type metadata accessor for PKStrokeProperties(0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = (&v5 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGMd, &_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGMR);
  CRRegister.wrappedValue.getter();
  v3 = *v2;
  outlined destroy of PKStrokeProperties(v2, type metadata accessor for PKStrokeProperties);
  if (_So13PKStrokeFlagsa34__Unnamed_union___Anonymous_field0V02__c10_struct___e1_F0V_shouldSolveMath_getter(v3 & 0xFFFFFFFFFFFFLL))
  {
    return 6;
  }

  else
  {
    return 0;
  }
}

uint64_t protocol witness for CRCodable.isDefaultState.getter in conformance PKStrokeStruct()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGMd, &_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGMR);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v11 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGMR);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - v6;
  if (UnknownProperties.isDefaultState.getter() & 1) != 0 && (CRRegister.projectedValue.getter(), v8 = CRRegister.isDefaultState.getter(), (*(v5 + 8))(v7, v4), (v8))
  {
    CRRegister.projectedValue.getter();
    v9 = CRRegister.isDefaultState.getter();
    (*(v1 + 8))(v3, v0);
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

uint64_t PKStrokeStruct.merge(_:)(uint64_t a1, void (*a2)(uint64_t, __n128))
{
  v4 = type metadata accessor for MergeResult();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  a2(a1, v6);
  return (*(v5 + 8))(v8, v4);
}

uint64_t PKStrokeInheritedProperties.merge(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a1;
  v53 = a2;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo17CGAffineTransformVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo17CGAffineTransformVAeA7CRValue8PaperKityHCg_GMR);
  v50 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v49 = &v40 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v47 = &v40 - v4;
  MEMORY[0x1EEE9AC00](v5);
  v46 = &v40 - v6;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GMd, &_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GMR);
  v45 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v44 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v42 = &v40 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v41 = &v40 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGMR);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v40 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v40 - v20;
  v22 = type metadata accessor for MergeResult();
  v23 = *(v22 - 8);
  v54 = v22;
  v55 = v23;
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v40 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MergeResult.init()();
  CRRegister.projectedValue.getter();
  CRRegister.projectedValue.getter();
  CRRegister.merge(_:)();
  v26 = *(v13 + 8);
  v26(v21, v12);
  (*(v13 + 16))(v15, v18, v12);
  CRRegister.projectedValue.setter();
  v26(v18, v12);
  MergeResult.merge(_:)();
  v40 = *(v55 + 8);
  v55 += 8;
  v40(v25, v54);
  v51 = type metadata accessor for PKStrokeInheritedProperties(0);
  v27 = v41;
  v28 = v43;
  CRRegister.projectedValue.getter();
  v29 = v42;
  CRRegister.projectedValue.getter();
  CRRegister.merge(_:)();
  v30 = v45;
  v31 = *(v45 + 8);
  v31(v27, v28);
  (*(v30 + 16))(v44, v29, v28);
  CRRegister.projectedValue.setter();
  v31(v29, v28);
  MergeResult.merge(_:)();
  v32 = v40;
  v40(v25, v54);
  v33 = v46;
  v34 = v48;
  CRRegister.projectedValue.getter();
  v35 = v47;
  CRRegister.projectedValue.getter();
  CRRegister.merge(_:)();
  v36 = v50;
  v37 = *(v50 + 8);
  v37(v33, v34);
  (*(v36 + 16))(v49, v35, v34);
  CRRegister.projectedValue.setter();
  v37(v35, v34);
  MergeResult.merge(_:)();
  v38 = v54;
  v32(v25, v54);
  UnknownProperties.merge(_:)();
  MergeResult.merge(_:)();
  return (v32)(v25, v38);
}

uint64_t PKStrokeInheritedProperties.actionUndoingDifference(from:)@<X0>(uint64_t a1@<X8>)
{
  v52 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo17CGAffineTransformVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo17CGAffineTransformVAeA7CRValue8PaperKityHCg_GMR);
  v2 = *(v1 - 8);
  v50 = v1;
  v51 = v2;
  MEMORY[0x1EEE9AC00](v1);
  v49 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v48 = &v43 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVySo17CGAffineTransformV_AgA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVySo17CGAffineTransformV_AgA7CRValue8PaperKityHCg_GSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v47 = &v43 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GMd, &_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GMR);
  v46 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v45 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v43 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVySo5PKInkCSg_AhA7CRValueHpAgaI8PaperKityHC_HCg_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVySo5PKInkCSg_AhA7CRValueHpAgaI8PaperKityHC_HCg_GSgMR);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v44 = &v43 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGMR);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v43 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSg_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSg_GSgMR);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v24 = &v43 - v23;
  CRRegister.projectedValue.getter();
  CRRegister.projectedValue.getter();
  CRRegister.actionUndoingDifference(from:)();
  v25 = *(v16 + 8);
  v26 = v18;
  v27 = v44;
  v25(v26, v15);
  v25(v21, v15);
  type metadata accessor for PKStrokeInheritedProperties(0);
  CRRegister.projectedValue.getter();
  v28 = v45;
  CRRegister.projectedValue.getter();
  CRRegister.actionUndoingDifference(from:)();
  v29 = *(v46 + 8);
  v29(v28, v8);
  v30 = v12;
  v31 = v47;
  v29(v30, v8);
  v32 = v48;
  v33 = v50;
  CRRegister.projectedValue.getter();
  v34 = v49;
  CRRegister.projectedValue.getter();
  CRRegister.actionUndoingDifference(from:)();
  v35 = *(v51 + 8);
  v35(v34, v33);
  v35(v32, v33);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSg_GMd, &_s9Coherence10CRRegisterV14MutatingActionVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSg_GMR);
  if ((*(*(v36 - 8) + 48))(v24, 1, v36) == 1 && (v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVySo5PKInkCSg_AhA7CRValueHpAgaI8PaperKityHC_HCg_GMd, &_s9Coherence10CRRegisterV14MutatingActionVySo5PKInkCSg_AhA7CRValueHpAgaI8PaperKityHC_HCg_GMR), (*(*(v37 - 8) + 48))(v27, 1, v37) == 1) && (v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVySo17CGAffineTransformV_AgA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterV14MutatingActionVySo17CGAffineTransformV_AgA7CRValue8PaperKityHCg_GMR), (*(*(v38 - 8) + 48))(v31, 1, v38) == 1))
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v24, &_s9Coherence10CRRegisterV14MutatingActionVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSg_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSg_GSgMR);
    v39 = type metadata accessor for PKStrokeInheritedProperties.MutatingAction(0);
    (*(*(v39 - 8) + 56))(v52, 1, 1, v39);
  }

  else
  {
    v40 = v52;
    outlined init with copy of Date?(v24, v52, &_s9Coherence10CRRegisterV14MutatingActionVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSg_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSg_GSgMR);
    v41 = type metadata accessor for PKStrokeInheritedProperties.MutatingAction(0);
    outlined init with copy of Date?(v27, v40 + *(v41 + 20), &_s9Coherence10CRRegisterV14MutatingActionVySo5PKInkCSg_AhA7CRValueHpAgaI8PaperKityHC_HCg_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVySo5PKInkCSg_AhA7CRValueHpAgaI8PaperKityHC_HCg_GSgMR);
    outlined init with copy of Date?(v31, v40 + *(v41 + 24), &_s9Coherence10CRRegisterV14MutatingActionVySo17CGAffineTransformV_AgA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVySo17CGAffineTransformV_AgA7CRValue8PaperKityHCg_GSgMR);
    outlined destroy of StocksKitCurrencyCache.Provider?(v24, &_s9Coherence10CRRegisterV14MutatingActionVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSg_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSg_GSgMR);
    (*(*(v41 - 8) + 56))(v40, 0, 1, v41);
  }

  outlined destroy of StocksKitCurrencyCache.Provider?(v31, &_s9Coherence10CRRegisterV14MutatingActionVySo17CGAffineTransformV_AgA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVySo17CGAffineTransformV_AgA7CRValue8PaperKityHCg_GSgMR);
  return outlined destroy of StocksKitCurrencyCache.Provider?(v27, &_s9Coherence10CRRegisterV14MutatingActionVySo5PKInkCSg_AhA7CRValueHpAgaI8PaperKityHC_HCg_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVySo5PKInkCSg_AhA7CRValueHpAgaI8PaperKityHC_HCg_GSgMR);
}

uint64_t PKStrokeInheritedProperties.apply(_:)(uint64_t a1)
{
  v38 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo17CGAffineTransformVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo17CGAffineTransformVAeA7CRValue8PaperKityHCg_GMR);
  v36 = *(v1 - 8);
  v37 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v35 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v34 = &v30 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GMd, &_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GMR);
  v32 = *(v5 - 8);
  v33 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v31 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v30 = &v30 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGMR);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v30 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit27PKStrokeInheritedPropertiesV14MutatingActionVSgMd, &_s8PaperKit27PKStrokeInheritedPropertiesV14MutatingActionVSgMR);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v30 - v17;
  v19 = type metadata accessor for PKStrokeInheritedProperties.MutatingAction(0);
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v30 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Date?(v38, v18, &_s8PaperKit27PKStrokeInheritedPropertiesV14MutatingActionVSgMd, &_s8PaperKit27PKStrokeInheritedPropertiesV14MutatingActionVSgMR);
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    return outlined destroy of StocksKitCurrencyCache.Provider?(v18, &_s8PaperKit27PKStrokeInheritedPropertiesV14MutatingActionVSgMd, &_s8PaperKit27PKStrokeInheritedPropertiesV14MutatingActionVSgMR);
  }

  outlined init with take of TaggedStroke(v18, v22, type metadata accessor for PKStrokeInheritedProperties.MutatingAction);
  CRRegister.projectedValue.getter();
  CRRegister.apply(_:)();
  (*(v10 + 16))(v12, v15, v9);
  CRRegister.projectedValue.setter();
  (*(v10 + 8))(v15, v9);
  type metadata accessor for PKStrokeInheritedProperties(0);
  v24 = v30;
  v25 = v33;
  CRRegister.projectedValue.getter();
  CRRegister.apply(_:)();
  v26 = v32;
  (*(v32 + 16))(v31, v24, v25);
  CRRegister.projectedValue.setter();
  (*(v26 + 8))(v24, v25);
  v27 = v34;
  v28 = v37;
  CRRegister.projectedValue.getter();
  CRRegister.apply(_:)();
  v29 = v36;
  (*(v36 + 16))(v35, v27, v28);
  CRRegister.projectedValue.setter();
  (*(v29 + 8))(v27, v28);
  return outlined destroy of PKStrokeProperties(v22, type metadata accessor for PKStrokeInheritedProperties.MutatingAction);
}

uint64_t PKStrokeInheritedProperties.hasDelta(from:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo17CGAffineTransformVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo17CGAffineTransformVAeA7CRValue8PaperKityHCg_GMR);
  v32 = *(v2 - 8);
  v33 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v31 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v30 = &v30 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GMd, &_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GMR);
  v34 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v30 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGMR);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v30 - v17;
  CRRegister.projectedValue.getter();
  v35 = a1;
  CRRegister.projectedValue.getter();
  v19 = CRRegister.hasDelta(from:)();
  v20 = *(v13 + 8);
  v20(v15, v12);
  v20(v18, v12);
  if (v19 & 1) != 0 || (type metadata accessor for PKStrokeInheritedProperties(0), CRRegister.projectedValue.getter(), CRRegister.projectedValue.getter(), v21 = CRRegister.hasDelta(from:)(), v22 = *(v34 + 8), v22(v8, v6), v22(v11, v6), (v21) || (v23 = v30, v24 = v33, CRRegister.projectedValue.getter(), v25 = v31, CRRegister.projectedValue.getter(), v26 = CRRegister.hasDelta(from:)(), v27 = *(v32 + 8), v27(v25, v24), v27(v23, v24), (v26))
  {
    v28 = 1;
  }

  else
  {
    v28 = UnknownProperties.hasDelta(from:)();
  }

  return v28 & 1;
}

uint64_t PKStrokeInheritedProperties.copy(renamingReferences:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a1;
  v4 = type metadata accessor for UnknownProperties();
  v46 = *(v4 - 8);
  v47 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v45 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo17CGAffineTransformVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo17CGAffineTransformVAeA7CRValue8PaperKityHCg_GMR);
  v7 = *(v6 - 8);
  v43 = v6;
  v44 = v7;
  MEMORY[0x1EEE9AC00](v6);
  v42 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v41 = &v36 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GMd, &_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GMR);
  v40 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v39 = &v36 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGMR);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v36 - v21;
  v37 = v2;
  outlined init with copy of PKStrokeProperties(v2, a2, type metadata accessor for PKStrokeInheritedProperties);
  CRRegister.projectedValue.getter();
  CRRegister.copy(renamingReferences:)();
  v23 = *(v17 + 8);
  v23(v19, v16);
  (*(v17 + 16))(v19, v22, v16);
  CRRegister.projectedValue.setter();
  v23(v22, v16);
  v24 = type metadata accessor for PKStrokeInheritedProperties(0);
  CRRegister.projectedValue.getter();
  v25 = v39;
  CRRegister.copy(renamingReferences:)();
  v26 = v40;
  v27 = *(v40 + 8);
  v27(v13, v11);
  (*(v26 + 16))(v13, v25, v11);
  v36 = a2;
  CRRegister.projectedValue.setter();
  v27(v25, v11);
  v29 = v42;
  v28 = v43;
  CRRegister.projectedValue.getter();
  v30 = v41;
  CRRegister.copy(renamingReferences:)();
  v31 = v44;
  v32 = *(v44 + 8);
  v32(v29, v28);
  (*(v31 + 16))(v29, v30, v28);
  v33 = v36;
  CRRegister.projectedValue.setter();
  v32(v30, v28);
  v34 = v45;
  UnknownProperties.copy(renamingReferences:)();
  return (*(v46 + 40))(v33 + *(v24 + 28), v34, v47);
}

uint64_t PKStrokeInheritedProperties.init(defaultState:)@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for UnknownProperties();
  v36 = *(v2 - 8);
  v37 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v40 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo17CGAffineTransformVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo17CGAffineTransformVAeA7CRValue8PaperKityHCg_GMR);
  v38 = *(v4 - 8);
  v39 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v42 = &v33 - v5;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GMd, &_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GMR);
  v47 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v48 = &v33 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGMR);
  v45 = *(v7 - 8);
  v46 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v49 = &v33 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgMd, &_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgMR);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v33 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGMd, &_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGMR);
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  outlined init with copy of Date?(v14, v11, &_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgMd, &_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgMR);
  lazy protocol witness table accessor for type Ref<PKStrokeInheritedProperties>? and conformance <A> A?();
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v14, &_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgMd, &_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgMR);
  v16 = type metadata accessor for PKStrokeInheritedProperties(0);
  v17 = v16[5];
  v50 = 0;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo5PKInkCSgMd, &_sSo5PKInkCSgMR);
  v43 = lazy protocol witness table accessor for type PKInk? and conformance <A> A?();
  v44 = v18;
  CRRegister.init(wrappedValue:)();
  v19 = v16[6];
  v50 = 0x3FF0000000000000;
  v51 = 0;
  v52 = 0;
  v53 = 0x3FF0000000000000;
  type metadata accessor for CGAffineTransform(0);
  v21 = v20;
  v22 = lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type CGAffineTransform and conformance CGAffineTransform, type metadata accessor for CGAffineTransform, &protocol conformance descriptor for CGAffineTransform);
  v54 = 0;
  v55 = 0;
  CRRegister.init(wrappedValue:)();
  v23 = v16[7];
  v24 = a1;
  UnknownProperties.init()();
  v25 = v49;
  v26 = v56;
  CRRegister.init(defaultState:)();
  if (v26)
  {
    return outlined destroy of PKStrokeProperties(v24, type metadata accessor for PKStrokeInheritedProperties);
  }

  v35 = v22;
  v56 = v21;
  v34 = v19;
  v27 = v47;
  (*(v45 + 40))(v24, v25, v46);
  v28 = v48;
  CRRegister.init(defaultState:)();
  v29 = v24;
  (*(v27 + 40))(v24 + v17, v28, v41);
  v30 = v42;
  CRRegister.init(defaultState:)();
  (*(v38 + 40))(v29 + v34, v30, v39);
  v31 = v40;
  UnknownProperties.init(defaultState:)();
  return (*(v36 + 40))(v29 + v23, v31, v37);
}

uint64_t PKStrokeInheritedProperties.isDefaultState.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo17CGAffineTransformVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo17CGAffineTransformVAeA7CRValue8PaperKityHCg_GMR);
  v16 = *(v0 - 8);
  v17 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v16 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GMd, &_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GMR);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v16 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGMR);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v16 - v9;
  type metadata accessor for PKStrokeInheritedProperties(0);
  if (UnknownProperties.isDefaultState.getter() & 1) != 0 && (CRRegister.projectedValue.getter(), v11 = CRRegister.isDefaultState.getter(), (*(v8 + 8))(v10, v7), (v11) && (CRRegister.projectedValue.getter(), v12 = CRRegister.isDefaultState.getter(), (*(v4 + 8))(v6, v3), (v12))
  {
    v13 = v17;
    CRRegister.projectedValue.getter();
    v14 = CRRegister.isDefaultState.getter();
    (*(v16 + 8))(v2, v13);
  }

  else
  {
    v14 = 0;
  }

  return v14 & 1;
}

uint64_t PKStrokeInheritedProperties.visitReferences(_:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo17CGAffineTransformVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo17CGAffineTransformVAeA7CRValue8PaperKityHCg_GMR);
  v2 = *(v1 - 8);
  v15 = v1;
  v16 = v2;
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v15 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GMd, &_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGMR);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v15 - v11;
  CRRegister.projectedValue.getter();
  CRRegister.visitReferences(_:)();
  (*(v10 + 8))(v12, v9);
  type metadata accessor for PKStrokeInheritedProperties(0);
  CRRegister.projectedValue.getter();
  CRRegister.visitReferences(_:)();
  (*(v6 + 8))(v8, v5);
  v13 = v15;
  CRRegister.projectedValue.getter();
  CRRegister.visitReferences(_:)();
  (*(v16 + 8))(v4, v13);
  return UnknownProperties.visitReferences(_:)();
}

uint64_t PKStrokeInheritedProperties.newRefs(from:)(uint64_t a1)
{
  v30[1] = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo17CGAffineTransformVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo17CGAffineTransformVAeA7CRValue8PaperKityHCg_GMR);
  v2 = *(v1 - 8);
  v34 = v1;
  v35 = v2;
  MEMORY[0x1EEE9AC00](v1);
  v33 = v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v32 = v30 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GMd, &_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GMR);
  v31 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v30 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGMR);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v30 - v17;
  v36 = MEMORY[0x1E69E7CD0];
  CRRegister.projectedValue.getter();
  CRRegister.projectedValue.getter();
  v19 = CRRegister.newRefs(from:)();
  v20 = *(v13 + 8);
  v20(v15, v12);
  v20(v18, v12);
  specialized Set.formUnion<A>(_:)(v19);
  type metadata accessor for PKStrokeInheritedProperties(0);
  CRRegister.projectedValue.getter();
  CRRegister.projectedValue.getter();
  v21 = CRRegister.newRefs(from:)();
  v22 = *(v31 + 8);
  v22(v8, v6);
  v22(v11, v6);
  specialized Set.formUnion<A>(_:)(v21);
  v23 = v32;
  v24 = v34;
  CRRegister.projectedValue.getter();
  v25 = v33;
  CRRegister.projectedValue.getter();
  v26 = CRRegister.newRefs(from:)();
  v27 = *(v35 + 8);
  v27(v25, v24);
  v27(v23, v24);
  specialized Set.formUnion<A>(_:)(v26);
  v28 = UnknownProperties.newRefs(from:)();
  specialized Set.formUnion<A>(_:)(v28);
  return v36;
}

Swift::Bool __swiftcall PKStrokeInheritedProperties.needToFinalizeTimestamps()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo17CGAffineTransformVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo17CGAffineTransformVAeA7CRValue8PaperKityHCg_GMR);
  v17 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v16 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GMd, &_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GMR);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v16 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGMR);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v16 - v9;
  CRRegister.projectedValue.getter();
  v11 = CRRegister.needToFinalizeTimestamps()();
  (*(v8 + 8))(v10, v7);
  v14 = v11 || (type metadata accessor for PKStrokeInheritedProperties(0), CRRegister.projectedValue.getter(), v12 = CRRegister.needToFinalizeTimestamps()(), (*(v4 + 8))(v6, v3), v12) || (CRRegister.projectedValue.getter(), v13 = CRRegister.needToFinalizeTimestamps()(), (*(v17 + 8))(v2, v0), v13) || UnknownProperties.needToFinalizeTimestamps()();
  return v14;
}

uint64_t PKStrokeInheritedProperties.finalizeTimestamps(_:)(uint64_t a1)
{
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo17CGAffineTransformVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo17CGAffineTransformVAeA7CRValue8PaperKityHCg_GMR);
  v28 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v26 = &v23 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GMd, &_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v24 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v23 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGMR);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v23 - v16;
  CRRegister.projectedValue.getter();
  CRRegister.finalizeTimestamps(_:)();
  (*(v12 + 16))(v14, v17, v11);
  CRRegister.projectedValue.setter();
  (*(v12 + 8))(v17, v11);
  type metadata accessor for PKStrokeInheritedProperties(0);
  CRRegister.projectedValue.getter();
  v18 = a1;
  CRRegister.finalizeTimestamps(_:)();
  (*(v6 + 16))(v24, v10, v5);
  CRRegister.projectedValue.setter();
  (*(v6 + 8))(v10, v5);
  v19 = v25;
  v20 = v26;
  CRRegister.projectedValue.getter();
  CRRegister.finalizeTimestamps(_:)();
  v21 = v28;
  (*(v28 + 16))(v27, v20, v19);
  CRRegister.projectedValue.setter();
  (*(v21 + 8))(v20, v19);
  return MEMORY[0x1DA6CBA30](v18);
}

uint64_t PKStrokeInheritedProperties.minEncodingVersion.getter@<X0>(uint64_t a1@<X8>)
{
  v71 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo17CGAffineTransformVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo17CGAffineTransformVAeA7CRValue8PaperKityHCg_GMR);
  v57 = *(v2 - 8);
  v58 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v56 = &v54 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GMd, &_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GMR);
  v62 = *(v4 - 8);
  v63 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v61 = &v54 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGMR);
  v66 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v54 - v7;
  v9 = type metadata accessor for CRCodableVersion();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v55 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v59 = &v54 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v60 = &v54 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v54 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v65 = &v54 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v54 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v54 - v25;
  v64 = type metadata accessor for PKStrokeInheritedProperties(0);
  v70 = v1;
  UnknownProperties.minEncodingVersion.getter();
  v27 = *(v10 + 104);
  v68 = *MEMORY[0x1E6995288];
  v69 = v10 + 104;
  v67 = v27;
  v27(v23);
  v28 = static CRCodableVersion.== infix(_:_:)();
  v29 = *(v10 + 8);
  v29(v23, v9);
  if (v28)
  {
    return (*(v10 + 32))(v71, v26, v9);
  }

  CRRegister.projectedValue.getter();
  CRRegister.minEncodingVersion.getter();
  v66[1](v8, v6);
  v54 = lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type CRCodableVersion and conformance CRCodableVersion, MEMORY[0x1E6995298], MEMORY[0x1E69952A0]);
  v31 = dispatch thunk of static Comparable.>= infix(_:_:)();
  v32 = (v31 & 1) == 0;
  if (v31)
  {
    v33 = v26;
  }

  else
  {
    v33 = v18;
  }

  if (v32)
  {
    v18 = v26;
  }

  v29(v33, v9);
  v34 = *(v10 + 32);
  v35 = v65;
  (v34)(v65, v18, v9);
  (v34)(v26, v35, v9);
  v67(v23, v68, v9);
  v36 = static CRCodableVersion.== infix(_:_:)();
  v29(v23, v9);
  if (v36)
  {
    return (v34)(v71, v26, v9);
  }

  v37 = v63;
  v66 = v34;
  v38 = v61;
  CRRegister.projectedValue.getter();
  v39 = v59;
  CRRegister.minEncodingVersion.getter();
  (*(v62 + 8))(v38, v37);
  v40 = dispatch thunk of static Comparable.>= infix(_:_:)();
  v41 = (v40 & 1) == 0;
  v42 = (v40 & 1) != 0 ? v26 : v39;
  v43 = v41 ? v26 : v39;
  v29(v42, v9);
  v44 = v60;
  (v66)(v60, v43, v9);
  v45 = v44;
  v34 = v66;
  (v66)(v26, v45, v9);
  v67(v23, v68, v9);
  v46 = static CRCodableVersion.== infix(_:_:)();
  v29(v23, v9);
  if (v46)
  {
    return (v34)(v71, v26, v9);
  }

  v47 = v56;
  v48 = v58;
  CRRegister.projectedValue.getter();
  v49 = v55;
  CRRegister.minEncodingVersion.getter();
  (*(v57 + 8))(v47, v48);
  v50 = dispatch thunk of static Comparable.>= infix(_:_:)();
  v51 = v71;
  if (v50)
  {
    v29(v26, v9);
    v52 = v51;
    v53 = v49;
  }

  else
  {
    v29(v49, v9);
    v52 = v51;
    v53 = v26;
  }

  return (v66)(v52, v53, v9);
}

uint64_t PKStrokeInheritedProperties.observableDifference(from:with:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v47 = a1;
  v55 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo17CGAffineTransformVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo17CGAffineTransformVAeA7CRValue8PaperKityHCg_GMR);
  v3 = *(v2 - 8);
  v53 = v2;
  v54 = v3;
  MEMORY[0x1EEE9AC00](v2);
  v52 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v51 = &v45 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GMd, &_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GMR);
  v50 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v49 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v45 = &v45 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence27CRValueObservableDifferenceOSgMd, &_s9Coherence27CRValueObservableDifferenceOSgMR);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v48 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v45 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGMR);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v45 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefV20ObservableDifferenceOy8PaperKit27PKStrokeInheritedPropertiesV_GSgMd, &_s9Coherence3RefV20ObservableDifferenceOy8PaperKit27PKStrokeInheritedPropertiesV_GSgMR);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v46 = &v45 - v24;
  CRRegister.projectedValue.getter();
  CRRegister.projectedValue.getter();
  CRRegister.observableDifference(from:with:)();
  v25 = *(v17 + 8);
  v26 = v19;
  v27 = v15;
  v25(v26, v16);
  v25(v22, v16);
  type metadata accessor for PKStrokeInheritedProperties(0);
  v28 = v45;
  CRRegister.projectedValue.getter();
  v29 = v49;
  CRRegister.projectedValue.getter();
  v56 = v27;
  v30 = v29;
  CRRegister.observableDifference(from:with:)();
  v31 = *(v50 + 8);
  v31(v30, v7);
  v32 = v48;
  v31(v28, v7);
  v33 = v51;
  v34 = v53;
  CRRegister.projectedValue.getter();
  v35 = v52;
  CRRegister.projectedValue.getter();
  v36 = v46;
  CRRegister.observableDifference(from:with:)();
  v37 = *(v54 + 8);
  v37(v35, v34);
  v37(v33, v34);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefV20ObservableDifferenceOy8PaperKit27PKStrokeInheritedPropertiesV_GMd, &_s9Coherence3RefV20ObservableDifferenceOy8PaperKit27PKStrokeInheritedPropertiesV_GMR);
  if ((*(*(v38 - 8) + 48))(v36, 1, v38) == 1 && (v39 = type metadata accessor for CRValueObservableDifference(), v40 = *(*(v39 - 8) + 48), v40(v56, 1, v39) == 1) && v40(v32, 1, v39) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v36, &_s9Coherence3RefV20ObservableDifferenceOy8PaperKit27PKStrokeInheritedPropertiesV_GSgMd, &_s9Coherence3RefV20ObservableDifferenceOy8PaperKit27PKStrokeInheritedPropertiesV_GSgMR);
    v41 = type metadata accessor for PKStrokeInheritedProperties.ObservableDifference(0);
    (*(*(v41 - 8) + 56))(v55, 1, 1, v41);
  }

  else
  {
    v42 = v55;
    outlined init with copy of Date?(v36, v55, &_s9Coherence3RefV20ObservableDifferenceOy8PaperKit27PKStrokeInheritedPropertiesV_GSgMd, &_s9Coherence3RefV20ObservableDifferenceOy8PaperKit27PKStrokeInheritedPropertiesV_GSgMR);
    v43 = type metadata accessor for PKStrokeInheritedProperties.ObservableDifference(0);
    outlined init with copy of Date?(v56, v42 + *(v43 + 20), &_s9Coherence27CRValueObservableDifferenceOSgMd, &_s9Coherence27CRValueObservableDifferenceOSgMR);
    outlined init with copy of Date?(v32, v42 + *(v43 + 24), &_s9Coherence27CRValueObservableDifferenceOSgMd, &_s9Coherence27CRValueObservableDifferenceOSgMR);
    outlined destroy of StocksKitCurrencyCache.Provider?(v36, &_s9Coherence3RefV20ObservableDifferenceOy8PaperKit27PKStrokeInheritedPropertiesV_GSgMd, &_s9Coherence3RefV20ObservableDifferenceOy8PaperKit27PKStrokeInheritedPropertiesV_GSgMR);
    (*(*(v43 - 8) + 56))(v42, 0, 1, v43);
  }

  outlined destroy of StocksKitCurrencyCache.Provider?(v32, &_s9Coherence27CRValueObservableDifferenceOSgMd, &_s9Coherence27CRValueObservableDifferenceOSgMR);
  return outlined destroy of StocksKitCurrencyCache.Provider?(v56, &_s9Coherence27CRValueObservableDifferenceOSgMd, &_s9Coherence27CRValueObservableDifferenceOSgMR);
}

uint64_t PKStrokeInheritedProperties.encode(to:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo17CGAffineTransformVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo17CGAffineTransformVAeA7CRValue8PaperKityHCg_GMR);
  v16 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v14 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GMd, &_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GMR);
  v17 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v14 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGMR);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v14 - v9;
  result = dispatch thunk of CREncoder.keyedContainer()();
  if (!v0)
  {
    v14 = v3;
    v15 = v6;
    CRRegister.projectedValue.getter();
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<Ref<PKStrokeInheritedProperties>?> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGMR, MEMORY[0x1E6995080]);
    dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
    (*(v8 + 8))(v10, v7);
    type metadata accessor for PKStrokeInheritedProperties(0);
    v12 = v15;
    CRRegister.projectedValue.getter();
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<PKInk?> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GMd, &_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GMR, MEMORY[0x1E6995080]);
    dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
    (*(v17 + 8))(v12, v4);
    v13 = v14;
    CRRegister.projectedValue.getter();
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<CGAffineTransform> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVySo17CGAffineTransformVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo17CGAffineTransformVAeA7CRValue8PaperKityHCg_GMR, MEMORY[0x1E6995080]);
    dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
    (*(v16 + 8))(v13, v1);
    UnknownProperties.encode(to:)();
  }

  return result;
}

uint64_t PKStrokeInheritedProperties.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v102 = a1;
  v83 = type metadata accessor for UnknownProperties();
  v82 = *(v83 - 8);
  MEMORY[0x1EEE9AC00](v83);
  v81 = &v76 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_9Coherence7AnyCRDTVtSgMd, &_sSS_9Coherence7AnyCRDTVtSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v88 = (&v76 - v5);
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_9Coherence7AnyCRDTVtMd, &_sSS_9Coherence7AnyCRDTVtMR);
  v84 = *(v89 - 8);
  MEMORY[0x1EEE9AC00](v89);
  v80 = &v76 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v79 = &v76 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo17CGAffineTransformVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo17CGAffineTransformVAeA7CRValue8PaperKityHCg_GMR);
  v90 = *(v9 - 8);
  v91 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v96 = &v76 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GMd, &_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GMR);
  v94 = *(v11 - 8);
  v95 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v93 = &v76 - v12;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGMR);
  v86 = *(v87 - 8);
  MEMORY[0x1EEE9AC00](v87);
  v99 = (&v76 - v13);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgMd, &_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgMR);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v76 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v76 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGMd, &_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGMR);
  (*(*(v20 - 8) + 56))(v19, 1, 1, v20);
  outlined init with copy of Date?(v19, v16, &_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgMd, &_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgMR);
  v97 = lazy protocol witness table accessor for type Ref<PKStrokeInheritedProperties>? and conformance <A> A?();
  v98 = v14;
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v19, &_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgMd, &_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgMR);
  v21 = type metadata accessor for PKStrokeInheritedProperties(0);
  v22 = v21[5];
  v103 = 0;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo5PKInkCSgMd, &_sSo5PKInkCSgMR);
  lazy protocol witness table accessor for type PKInk? and conformance <A> A?();
  v85 = v22;
  CRRegister.init(wrappedValue:)();
  v24 = v21[6];
  v103 = 0x3FF0000000000000;
  v104 = 0;
  v105 = 0;
  v106 = 0x3FF0000000000000;
  type metadata accessor for CGAffineTransform(0);
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type CGAffineTransform and conformance CGAffineTransform, type metadata accessor for CGAffineTransform, &protocol conformance descriptor for CGAffineTransform);
  v107 = 0;
  v108 = 0;
  CRRegister.init(wrappedValue:)();
  v25 = v21[7];
  v101 = a2;
  UnknownProperties.init()();
  v26 = v100;
  v27 = dispatch thunk of CRDecoder.keyedContainer()();
  if (v26)
  {
    goto LABEL_2;
  }

  v78 = v23;
  v77 = v24;
  v76 = v25;
  v92 = 0;
  v100 = v27;
  if (dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)())
  {
    v29 = v92;
    CRRegister.init(from:)();
    if (v29)
    {

LABEL_2:

      v28 = v101;
      return outlined destroy of PKStrokeProperties(v28, type metadata accessor for PKStrokeInheritedProperties);
    }

    v92 = 0;
    v30 = v101;
    (*(v86 + 40))();
  }

  else
  {
    v30 = v101;
  }

  v31 = dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)();
  v33 = v95;
  v32 = v96;
  v35 = v93;
  v34 = v94;
  if (v31)
  {
    v36 = v92;
    CRRegister.init(from:)();
    if (v36)
    {
      goto LABEL_16;
    }

    v92 = 0;
    (*(v34 + 40))(v30 + v85, v35, v33);
  }

  v37 = dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)();
  v39 = v90;
  v38 = v91;
  if (v37)
  {
    v40 = v92;
    CRRegister.init(from:)();
    if (v40)
    {
      goto LABEL_16;
    }

    v92 = 0;
    (*(v39 + 40))(v30 + v77, v32, v38);
  }

  v41 = v92;
  v42 = dispatch thunk of CRDecoder.CRDTKeyedContainer.allKeys()();
  v43 = v41;
  if (v41)
  {
LABEL_16:

    v28 = v30;
    return outlined destroy of PKStrokeProperties(v28, type metadata accessor for PKStrokeInheritedProperties);
  }

  v92 = 0;
  v45 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(v42);

  v103 = v45;
  specialized Set._Variant.remove(_:)(0x6574697265686E69, 0xE900000000000064);

  specialized Set._Variant.remove(_:)(7040617, 0xE300000000000000);

  specialized Set._Variant.remove(_:)(0x726F66736E617274, 0xE90000000000006DLL);

  v46 = v103;
  v47 = v103 + 56;
  v48 = 1 << *(v103 + 32);
  v49 = -1;
  if (v48 < 64)
  {
    v49 = ~(-1 << v48);
  }

  v50 = v49 & *(v103 + 56);
  v51 = (v48 + 63) >> 6;
  v52 = (v84 + 56);

  v99 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v53 = v43;
    if (!v50)
    {
      break;
    }

LABEL_25:
    v54 = __clz(__rbit64(v50));
    v50 &= v50 - 1;
    v55 = (*(v46 + 48) + ((v43 << 10) | (16 * v54)));
    v57 = *v55;
    v56 = v55[1];

    if (dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)())
    {
      v59 = v88;
      v98 = *(v89 + 48);
      *v88 = v57;
      *(v59 + 8) = v56;

      v60 = v92;
      AnyCRDT.init(from:)();
      v92 = v60;
      if (v60)
      {
LABEL_40:

        swift_bridgeObjectRelease_n();
        v28 = v101;
        return outlined destroy of PKStrokeProperties(v28, type metadata accessor for PKStrokeInheritedProperties);
      }

      (*v52)(v59, 0, 1, v89);
      v61 = v79;
      outlined init with take of Range<AttributedString.Index>(v59, v79, &_sSS_9Coherence7AnyCRDTVtMd, &_sSS_9Coherence7AnyCRDTVtMR);
      outlined init with take of Range<AttributedString.Index>(v61, v80, &_sSS_9Coherence7AnyCRDTVtMd, &_sSS_9Coherence7AnyCRDTVtMR);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v99 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v99[2] + 1, 1, v99, &_ss23_ContiguousArrayStorageCySS_9Coherence7AnyCRDTVtGMd, &_ss23_ContiguousArrayStorageCySS_9Coherence7AnyCRDTVtGMR, &_sSS_9Coherence7AnyCRDTVtMd, &_sSS_9Coherence7AnyCRDTVtMR);
      }

      v62 = v84;
      v64 = v99[2];
      v63 = v99[3];
      v65 = v80;
      if (v64 >= v63 >> 1)
      {
        v67 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v63 > 1), v64 + 1, 1, v99, &_ss23_ContiguousArrayStorageCySS_9Coherence7AnyCRDTVtGMd, &_ss23_ContiguousArrayStorageCySS_9Coherence7AnyCRDTVtGMR, &_sSS_9Coherence7AnyCRDTVtMd, &_sSS_9Coherence7AnyCRDTVtMR);
        v62 = v84;
        v99 = v67;
        v65 = v80;
      }

      v66 = v99;
      v99[2] = v64 + 1;
      outlined init with take of Range<AttributedString.Index>(v65, v66 + ((*(v62 + 80) + 32) & ~*(v62 + 80)) + *(v62 + 72) * v64, &_sSS_9Coherence7AnyCRDTVtMd, &_sSS_9Coherence7AnyCRDTVtMR);
    }

    else
    {

      v58 = v88;
      (*v52)(v88, 1, 1, v89);
      outlined destroy of StocksKitCurrencyCache.Provider?(v58, &_sSS_9Coherence7AnyCRDTVtSgMd, &_sSS_9Coherence7AnyCRDTVtSgMR);
    }
  }

  while (1)
  {
    v43 = v53 + 1;
    if (__OFADD__(v53, 1))
    {
      __break(1u);
      goto LABEL_40;
    }

    if (v43 >= v51)
    {
      break;
    }

    v50 = *(v47 + 8 * v43);
    ++v53;
    if (v50)
    {
      goto LABEL_25;
    }
  }

  v68 = v99;
  if (v99[2])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS9Coherence7AnyCRDTVGMd, &_ss18_DictionaryStorageCySS9Coherence7AnyCRDTVGMR);
    v69 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v69 = MEMORY[0x1E69E7CC8];
  }

  v70 = v101;
  v71 = v83;
  v72 = v82;
  v73 = v81;
  v74 = v76;
  v109 = v69;
  v75 = v92;
  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v68, 1, &v109);
  if (v75)
  {

    v28 = v70;
    return outlined destroy of PKStrokeProperties(v28, type metadata accessor for PKStrokeInheritedProperties);
  }

  UnknownProperties.init(_:)();

  return (*(v72 + 40))(v70 + v74, v73, v71);
}

uint64_t PKStrokeInheritedProperties.delta(_:from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v63 = a1;
  v69 = a3;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo17CGAffineTransformVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo17CGAffineTransformVAeA7CRValue8PaperKityHCg_GMR);
  v67 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v68 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v66 = &v56 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo17CGAffineTransformVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo17CGAffineTransformVAeA7CRValue8PaperKityHCg_GSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v58 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v56 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GMd, &_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GMR);
  v70 = v13;
  v74 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v65 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v64 = &v56 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GSgMd, &_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GSgMR);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v57 = &v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v72 = &v56 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGMR);
  v62 = *(v21 - 8);
  v22 = v62;
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v56 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v56 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGSgMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGSgMR);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v56 = &v56 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v61 = &v56 - v31;
  v59 = v3;
  CRRegister.projectedValue.getter();
  v60 = a2;
  CRRegister.projectedValue.getter();
  CRRegister.delta(_:from:)();
  v32 = *(v22 + 8);
  v32(v24, v21);
  v32(v27, v21);
  v33 = v12;
  type metadata accessor for PKStrokeInheritedProperties(0);
  v34 = v64;
  CRRegister.projectedValue.getter();
  v35 = v65;
  CRRegister.projectedValue.getter();
  v36 = v72;
  v37 = v35;
  CRRegister.delta(_:from:)();
  v38 = *(v74 + 8);
  v38(v37, v13);
  v39 = v67;
  v38(v34, v13);
  v40 = v71;
  v41 = v66;
  CRRegister.projectedValue.getter();
  v42 = v68;
  CRRegister.projectedValue.getter();
  v73 = v33;
  v43 = v61;
  CRRegister.delta(_:from:)();
  v44 = *(v39 + 8);
  v45 = v62;
  v44(v42, v40);
  v44(v41, v40);
  if ((*(v45 + 48))(v43, 1, v21) == 1 && (*(v74 + 48))(v36, 1, v70) == 1 && (*(v39 + 48))(v73, 1, v40) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v43, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGSgMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGSgMR);
    v46 = type metadata accessor for PKStrokeInheritedProperties.Partial(0);
    (*(*(v46 - 8) + 56))(v69, 1, 1, v46);
  }

  else
  {
    v47 = v56;
    outlined init with copy of Date?(v43, v56, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGSgMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGSgMR);
    v48 = v57;
    outlined init with copy of Date?(v36, v57, &_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GSgMd, &_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GSgMR);
    v49 = v58;
    outlined init with copy of Date?(v73, v58, &_s9Coherence10CRRegisterVySo17CGAffineTransformVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo17CGAffineTransformVAeA7CRValue8PaperKityHCg_GSgMR);
    v50 = v69;
    (*(v45 + 56))(v69, 1, 1, v21);
    v51 = type metadata accessor for PKStrokeInheritedProperties.Partial(0);
    v52 = *(v51 + 20);
    (*(v74 + 56))(v50 + v52, 1, 1, v70);
    v53 = *(v51 + 24);
    (*(v39 + 56))(v50 + v53, 1, 1, v71);
    outlined assign with take of UUID?(v47, v50, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGSgMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGSgMR);
    outlined assign with take of UUID?(v48, v50 + v52, &_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GSgMd, &_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GSgMR);
    v54 = v50 + v53;
    v36 = v72;
    outlined assign with take of UUID?(v49, v54, &_s9Coherence10CRRegisterVySo17CGAffineTransformVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo17CGAffineTransformVAeA7CRValue8PaperKityHCg_GSgMR);
    outlined destroy of StocksKitCurrencyCache.Provider?(v43, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGSgMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGSgMR);
    (*(*(v51 - 8) + 56))(v50, 0, 1, v51);
  }

  outlined destroy of StocksKitCurrencyCache.Provider?(v73, &_s9Coherence10CRRegisterVySo17CGAffineTransformVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo17CGAffineTransformVAeA7CRValue8PaperKityHCg_GSgMR);
  return outlined destroy of StocksKitCurrencyCache.Provider?(v36, &_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GSgMd, &_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GSgMR);
}

BOOL PKStrokeInheritedProperties.canMerge(delta:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo17CGAffineTransformVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo17CGAffineTransformVAeA7CRValue8PaperKityHCg_GSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v47 = &v42 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo17CGAffineTransformVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo17CGAffineTransformVAeA7CRValue8PaperKityHCg_GMR);
  v48 = *(v4 - 8);
  v49 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v44 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v43 = &v42 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GSgMd, &_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v42 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GMd, &_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GMR);
  v50 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v46 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v45 = &v42 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGSgMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGSgMR);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v42 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGMR);
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v42 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v42 - v23;
  outlined init with copy of Date?(a1, v17, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGSgMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGSgMR);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v17, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGSgMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGSgMR);
  }

  else
  {
    (*(v19 + 32))(v24, v17, v18);
    CRRegister.projectedValue.getter();
    v25 = CRRegister.canMerge(delta:)();
    v26 = *(v19 + 8);
    v26(v21, v18);
    v26(v24, v18);
    if ((v25 & 1) == 0)
    {
      return 0;
    }
  }

  v27 = type metadata accessor for PKStrokeInheritedProperties.Partial(0);
  v28 = a1;
  outlined init with copy of Date?(a1 + *(v27 + 20), v10, &_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GSgMd, &_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GSgMR);
  v29 = v50;
  if ((*(v50 + 48))(v10, 1, v11) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v10, &_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GSgMd, &_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GSgMR);
  }

  else
  {
    v30 = v45;
    (*(v29 + 32))(v45, v10, v11);
    type metadata accessor for PKStrokeInheritedProperties(0);
    v31 = v46;
    CRRegister.projectedValue.getter();
    v32 = CRRegister.canMerge(delta:)();
    v33 = *(v29 + 8);
    v33(v31, v11);
    v33(v30, v11);
    if ((v32 & 1) == 0)
    {
      return 0;
    }
  }

  v34 = v47;
  outlined init with copy of Date?(v28 + *(v27 + 24), v47, &_s9Coherence10CRRegisterVySo17CGAffineTransformVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo17CGAffineTransformVAeA7CRValue8PaperKityHCg_GSgMR);
  v36 = v48;
  v35 = v49;
  if ((*(v48 + 48))(v34, 1, v49) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v34, &_s9Coherence10CRRegisterVySo17CGAffineTransformVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo17CGAffineTransformVAeA7CRValue8PaperKityHCg_GSgMR);
    return 1;
  }

  v37 = v43;
  (*(v36 + 32))(v43, v34, v35);
  type metadata accessor for PKStrokeInheritedProperties(0);
  v38 = v44;
  CRRegister.projectedValue.getter();
  v39 = CRRegister.canMerge(delta:)();
  v40 = *(v36 + 8);
  v40(v38, v35);
  v40(v37, v35);
  return (v39 & 1) != 0;
}

BOOL PKStrokeInheritedProperties.merge(delta:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo17CGAffineTransformVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo17CGAffineTransformVAeA7CRValue8PaperKityHCg_GSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v64 = v54 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo17CGAffineTransformVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo17CGAffineTransformVAeA7CRValue8PaperKityHCg_GMR);
  v6 = *(v5 - 8);
  v65 = v5;
  v66 = v6;
  MEMORY[0x1EEE9AC00](v5);
  v61 = v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v60 = v54 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v59 = v54 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GSgMd, &_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v62 = v54 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GMd, &_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GMR);
  v63 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v58 = v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v57 = v54 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v56 = v54 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGSgMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGSgMR);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = v54 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGMR);
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v26 = v54 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v29 = v54 - v28;
  MEMORY[0x1EEE9AC00](v30);
  v32 = v54 - v31;
  v33 = a1;
  v34 = a1;
  v35 = v1;
  v36 = PKStrokeInheritedProperties.canMerge(delta:)(v34);
  if (v36)
  {
    v55 = v36;
    outlined init with copy of Date?(v33, v22, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGSgMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGSgMR);
    v37 = (*(v24 + 48))(v22, 1, v23);
    v38 = v33;
    v54[1] = v35;
    if (v37 == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v22, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGSgMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGSgMR);
    }

    else
    {
      (*(v24 + 32))(v32, v22, v23);
      CRRegister.projectedValue.getter();
      CRRegister.merge(delta:)();
      (*(v24 + 16))(v26, v29, v23);
      CRRegister.projectedValue.setter();
      v39 = *(v24 + 8);
      v39(v29, v23);
      v39(v32, v23);
      v38 = v33;
    }

    v40 = v65;
    v41 = v66;
    v42 = type metadata accessor for PKStrokeInheritedProperties.Partial(0);
    v43 = v62;
    outlined init with copy of Date?(v38 + *(v42 + 20), v62, &_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GSgMd, &_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GSgMR);
    v44 = v63;
    if ((*(v63 + 48))(v43, 1, v14) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v43, &_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GSgMd, &_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GSgMR);
    }

    else
    {
      v45 = v56;
      (*(v44 + 32))(v56, v43, v14);
      type metadata accessor for PKStrokeInheritedProperties(0);
      v65 = v38;
      v46 = v57;
      CRRegister.projectedValue.getter();
      CRRegister.merge(delta:)();
      (*(v44 + 16))(v58, v46, v14);
      CRRegister.projectedValue.setter();
      v47 = *(v44 + 8);
      v48 = v46;
      v38 = v65;
      v41 = v66;
      v47(v48, v14);
      v47(v45, v14);
    }

    v49 = v64;
    outlined init with copy of Date?(v38 + *(v42 + 24), v64, &_s9Coherence10CRRegisterVySo17CGAffineTransformVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo17CGAffineTransformVAeA7CRValue8PaperKityHCg_GSgMR);
    if ((*(v41 + 48))(v49, 1, v40) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v49, &_s9Coherence10CRRegisterVySo17CGAffineTransformVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo17CGAffineTransformVAeA7CRValue8PaperKityHCg_GSgMR);
    }

    else
    {
      v50 = v59;
      (*(v41 + 32))(v59, v49, v40);
      type metadata accessor for PKStrokeInheritedProperties(0);
      v51 = v60;
      CRRegister.projectedValue.getter();
      CRRegister.merge(delta:)();
      (*(v41 + 16))(v61, v51, v40);
      CRRegister.projectedValue.setter();
      v52 = *(v41 + 8);
      v52(v51, v40);
      v52(v50, v40);
    }

    LOBYTE(v36) = v55;
  }

  return v36;
}

uint64_t protocol witness for CRDT.context.getter in conformance PKStrokeInheritedProperties(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type PKStrokeInheritedProperties and conformance PKStrokeInheritedProperties, type metadata accessor for PKStrokeInheritedProperties, &protocol conformance descriptor for PKStrokeInheritedProperties);

  return MEMORY[0x1EEDF5248](a1, v2);
}

uint64_t protocol witness for CRType.visitReferences(_:) in conformance PKStrokeInheritedProperties(uint64_t a1, uint64_t a2)
{
  v16[1] = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo17CGAffineTransformVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo17CGAffineTransformVAeA7CRValue8PaperKityHCg_GMR);
  v3 = *(v2 - 8);
  v17 = v2;
  v18 = v3;
  MEMORY[0x1EEE9AC00](v2);
  v5 = v16 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GMd, &_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GMR);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v16 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGMR);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v16 - v12;
  CRRegister.projectedValue.getter();
  CRRegister.visitReferences(_:)();
  (*(v11 + 8))(v13, v10);
  CRRegister.projectedValue.getter();
  CRRegister.visitReferences(_:)();
  (*(v7 + 8))(v9, v6);
  v14 = v17;
  CRRegister.projectedValue.getter();
  CRRegister.visitReferences(_:)();
  (*(v18 + 8))(v5, v14);
  return UnknownProperties.visitReferences(_:)();
}

uint64_t protocol witness for CRMergeable.merge(_:) in conformance PKStrokeStruct(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, __n128))
{
  v6 = type metadata accessor for MergeResult();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  a4(a1, v8);
  return (*(v7 + 8))(v10, v6);
}

uint64_t closure #1 in static Data.== infix(_:_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = __DataStorage._bytes.getter();
    if (v10)
    {
      v11 = __DataStorage._offset.getter();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = MEMORY[0x1DA6C8120]();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v20 = a3;
    v21 = BYTE2(a3);
    v22 = BYTE3(a3);
    v23 = BYTE4(a3);
    v24 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = __DataStorage._bytes.getter();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = __DataStorage._offset.getter();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = MEMORY[0x1DA6C8120]();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy8PaperKit27SortableCalculateExpression33_E3D731F3B4C1040BE7071FABB2CF7A67LLVGMd, &_ss23_ContiguousArrayStorageCy8PaperKit27SortableCalculateExpression33_E3D731F3B4C1040BE7071FABB2CF7A67LLVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySfGMd, &_ss23_ContiguousArrayStorageCySfGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo15NSTextAlignmentVGMd, &_ss23_ContiguousArrayStorageCySo15NSTextAlignmentVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5Int16VGMd, &_ss23_ContiguousArrayStorageCys5Int16VGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = (v11 - 32 + ((v11 - 32) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[2 * v8])
    {
      memmove(v12, v13, 2 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 2 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy8PaperKit20IndexableTextContentVGMd, &_ss23_ContiguousArrayStorageCy8PaperKit20IndexableTextContentVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy8PaperKit10ReflowEnumOGMd, &_ss23_ContiguousArrayStorageCy8PaperKit10ReflowEnumOGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo6CGRectVGMd, &_ss23_ContiguousArrayStorageCySo6CGRectVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 32 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_8PaperKit17SearchQueryResultVtGMd, &_ss23_ContiguousArrayStorageCySi_8PaperKit17SearchQueryResultVtGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 40 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy8PaperKit0D18DocumentFindResultVGMd, &_ss23_ContiguousArrayStorageCy8PaperKit0D18DocumentFindResultVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation4DataVGMd, &_ss23_ContiguousArrayStorageCy10Foundation4DataVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12CoreGraphics7CGFloatVGMd, &_ss23_ContiguousArrayStorageCy12CoreGraphics7CGFloatVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySdGMd, &_ss23_ContiguousArrayStorageCySdGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy8PaperKit21ValueTypes_BezierPathV11ElementTypeOGMd, &_ss23_ContiguousArrayStorageCy8PaperKit21ValueTypes_BezierPathV11ElementTypeOGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  v15 = 16 * v8;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[v15])
    {
      memmove(v13, v14, v15);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v15);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo17CGAffineTransformVGMd, &_ss23_ContiguousArrayStorageCySo17CGAffineTransformVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 48 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy8PaperKit14ReflowTextLineVGMd, &_ss23_ContiguousArrayStorageCy8PaperKit14ReflowTextLineVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 168);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[168 * v8])
    {
      memmove(v12, v13, 168 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy8PaperKit17SearchQueryResultVGMd, &_ss23_ContiguousArrayStorageCy8PaperKit17SearchQueryResultVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 32 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5Int32VGMd, &_ss23_ContiguousArrayStorageCys5Int32VGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy8PaperKit16MiniDefaultColorVGMd, &_ss23_ContiguousArrayStorageCy8PaperKit16MiniDefaultColorVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySnySiGGMd, &_ss23_ContiguousArrayStorageCySnySiGGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *a1, uint64_t a2, uint64_t a3, char *a4)
{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCySnySiGGMd, &_ss23_ContiguousArrayStorageCySnySiGGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy8PaperKit10FeatureSetV08InternalF0OGMd, &_ss23_ContiguousArrayStorageCy8PaperKit10FeatureSetV08InternalF0OGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy8PaperKit10FeatureSetV0F0OGMd, &_ss23_ContiguousArrayStorageCy8PaperKit10FeatureSetV0F0OGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy8PaperKit18ShapeConfigurationV0F0OGMd, &_ss23_ContiguousArrayStorageCy8PaperKit18ShapeConfigurationV0F0OGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCySo8_NSRangeVGMd, &_ss23_ContiguousArrayStorageCySo8_NSRangeVGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCySccyyts5NeverOGGMd, &_ss23_ContiguousArrayStorageCySccyyts5NeverOGGMR);
}

void *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy8PaperKit12WeakObserver33_8D2F688A48D6891537C9DABEFCA94965LLVGMd, &_ss23_ContiguousArrayStorageCy8PaperKit12WeakObserver33_8D2F688A48D6891537C9DABEFCA94965LLVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 < a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v10 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy8PaperKit14AnalyticsEvent_pGMd, &_ss23_ContiguousArrayStorageCy8PaperKit14AnalyticsEvent_pGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit14AnalyticsEvent_pMd, &_s8PaperKit14AnalyticsEvent_pMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo8_NSRangeV_8PaperKit10ReflowWordCtGMd, &_ss23_ContiguousArrayStorageCySo8_NSRangeV_8PaperKit10ReflowWordCtGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8_NSRangeV_8PaperKit10ReflowWordCtMd, &_sSo8_NSRangeV_8PaperKit10ReflowWordCtMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy9Coherence17CapsuleUndoActionVGMd, &_ss23_ContiguousArrayStorageCy9Coherence17CapsuleUndoActionVGMR, MEMORY[0x1E69952B0]);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy9Coherence15SharedTagged_10Vy8PaperKit0F13CanvasElementVGGMd, &_ss23_ContiguousArrayStorageCy9Coherence15SharedTagged_10Vy8PaperKit0F13CanvasElementVGGMR, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy8PaperKit4LinkVGMd, &_ss23_ContiguousArrayStorageCy8PaperKit4LinkVGMR, type metadata accessor for Link);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMd, &_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMR, MEMORY[0x1E69695A8]);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy8PaperKit15CanvasUIOverlay_pGMd, &_ss23_ContiguousArrayStorageCy8PaperKit15CanvasUIOverlay_pGMR, &_s8PaperKit15CanvasUIOverlay_pMd, &_s8PaperKit15CanvasUIOverlay_pMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy8PaperKit5ColorVGMd, &_ss23_ContiguousArrayStorageCy8PaperKit5ColorVGMR, type metadata accessor for Color);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy9PencilKit8PKStrokeVGMd, &_ss23_ContiguousArrayStorageCy9PencilKit8PKStrokeVGMR, MEMORY[0x1E69783C8]);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy9Coherence13WeakTagged_10Vy8PaperKit0F13CanvasElementVGGMd, &_ss23_ContiguousArrayStorageCy9Coherence13WeakTagged_10Vy8PaperKit0F13CanvasElementVGGMR, &_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd, &_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCySS_9Coherence7AnyCRDTVtGMd, &_ss23_ContiguousArrayStorageCySS_9Coherence7AnyCRDTVtGMR, &_sSS_9Coherence7AnyCRDTVtMd, &_sSS_9Coherence7AnyCRDTVtMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy8PaperKit6PageIdVSgGMd, &_ss23_ContiguousArrayStorageCy8PaperKit6PageIdVSgGMR, &_s8PaperKit6PageIdVSgMd, &_s8PaperKit6PageIdVSgMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCySi_9Coherence10AnyCRValueVtGMd, &_ss23_ContiguousArrayStorageCySi_9Coherence10AnyCRValueVtGMR, &_sSi_9Coherence10AnyCRValueVtMd, &_sSi_9Coherence10AnyCRValueVtMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCySay8PaperKit20AnyCanvasElementViewCGGMd, &_ss23_ContiguousArrayStorageCySay8PaperKit20AnyCanvasElementViewCGGMR, &_sSay8PaperKit20AnyCanvasElementViewCGMd, &_sSay8PaperKit20AnyCanvasElementViewCGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy9Coherence7WeakRefVyAC10CRRegisterVy8PaperKit12TaggedStrokeOGGGMd, &_ss23_ContiguousArrayStorageCy9Coherence7WeakRefVyAC10CRRegisterVy8PaperKit12TaggedStrokeOGGGMR, &_s9Coherence7WeakRefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd, &_s9Coherence7WeakRefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy8PaperKit0D8DocumentV010PDFPageAndD4PageVGMd, &_ss23_ContiguousArrayStorageCy8PaperKit0D8DocumentV010PDFPageAndD4PageVGMR, type metadata accessor for PaperDocument.PDFPageAndPaperPage);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCyScS12ContinuationVy10Foundation4DataV_GGMd, &_ss23_ContiguousArrayStorageCyScS12ContinuationVy10Foundation4DataV_GGMR, &_sScS12ContinuationVy10Foundation4DataV_GMd, &_sScS12ContinuationVy10Foundation4DataV_GMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy9PencilKit12PKInkingToolV7InkTypeOGMd, &_ss23_ContiguousArrayStorageCy9PencilKit12PKInkingToolV7InkTypeOGMR, MEMORY[0x1E6978358]);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy9Coherence7WeakRefVy8PaperKit9SignatureVGGMd, &_ss23_ContiguousArrayStorageCy9Coherence7WeakRefVy8PaperKit9SignatureVGGMR, &_s9Coherence7WeakRefVy8PaperKit9SignatureVGMd, &_s9Coherence7WeakRefVy8PaperKit9SignatureVGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy9Coherence7WeakRefVy8PaperKit5ShapeVGGMd, &_ss23_ContiguousArrayStorageCy9Coherence7WeakRefVy8PaperKit5ShapeVGGMR, &_s9Coherence7WeakRefVy8PaperKit5ShapeVGMd, &_s9Coherence7WeakRefVy8PaperKit5ShapeVGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy9Coherence7WeakRefVy8PaperKit5ImageVGGMd, &_ss23_ContiguousArrayStorageCy9Coherence7WeakRefVy8PaperKit5ImageVGGMR, &_s9Coherence7WeakRefVy8PaperKit5ImageVGMd, &_s9Coherence7WeakRefVy8PaperKit5ImageVGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy9Coherence14SharedTagged_3Vy8PaperKit0fG4PageVGGMd, &_ss23_ContiguousArrayStorageCy9Coherence14SharedTagged_3Vy8PaperKit0fG4PageVGGMR, &_s9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGMd, &_s9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy8PaperKit18AnnotationImporterV15ImportedElementOGMd, &_ss23_ContiguousArrayStorageCy8PaperKit18AnnotationImporterV15ImportedElementOGMR, type metadata accessor for AnnotationImporter.ImportedElement);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy9Coherence9CRKeyPathVGMd, &_ss23_ContiguousArrayStorageCy9Coherence9CRKeyPathVGMR, MEMORY[0x1E69954B8]);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy9Coherence3RefVyAC10CRRegisterVy8PaperKit12TaggedStrokeOGGGMd, &_ss23_ContiguousArrayStorageCy9Coherence3RefVyAC10CRRegisterVy8PaperKit12TaggedStrokeOGGGMR, &_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd, &_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy8PaperKit15PageOverlayView_pGMd, &_ss23_ContiguousArrayStorageCy8PaperKit15PageOverlayView_pGMR, &_s8PaperKit15PageOverlayView_pMd, &_s8PaperKit15PageOverlayView_pMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCyScCyyts5NeverOGGMd, &_ss23_ContiguousArrayStorageCyScCyyts5NeverOGGMR, &_sScCyyts5NeverOGMd, &_sScCyyts5NeverOGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCySaySSGGMd, &_ss23_ContiguousArrayStorageCySaySSGGMR, &_sSaySSGMd, &_sSaySSGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy8PaperKit20LoupeRenderDebouncerC0G5StateVGMd, &_ss23_ContiguousArrayStorageCy8PaperKit20LoupeRenderDebouncerC0G5StateVGMR, type metadata accessor for LoupeRenderDebouncer.RenderState);
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * v13 - 64;
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[v10])
    {
      memmove(v14, v15, v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, v10);
  }

  return v12;
}

{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 17;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 4);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[16 * v10])
    {
      memmove(v15, v16, 16 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 16 * v10);
  }

  return v12;
}

{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 25;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 3);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[8 * v10])
    {
      memmove(v15, v16, 8 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 8 * v10);
  }

  return v12;
}

void *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 17;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 4);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[2 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 16 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v18) == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 25;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 3);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 8 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

void *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1)
{
  type metadata accessor for UUID();
  v2 = MEMORY[0x1E69695A8];
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  v3 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v3, MEMORY[0x1E69695A8], &lazy protocol witness table cache variable for type UUID and conformance UUID, v2, MEMORY[0x1E69695C8]);
}

{
  v3 = MEMORY[0x1DA6CE7F0](*(v1 + 40), a1);

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v3);
}

{
  type metadata accessor for CRKeyPath();
  v2 = MEMORY[0x1E69954B8];
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type CRKeyPath and conformance CRKeyPath, MEMORY[0x1E69954B8], MEMORY[0x1E69954C8]);
  v3 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v3, MEMORY[0x1E69954B8], &lazy protocol witness table cache variable for type CRKeyPath and conformance CRKeyPath, v2, MEMORY[0x1E69954D0]);
}

{
  type metadata accessor for CodingUserInfoKey();
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v2);
}

{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v2);
}

{
  Hasher.init(_seed:)();
  type metadata accessor for CFStringRef(0);
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef, type metadata accessor for CFStringRef, &protocol conformance descriptor for CFStringRef);
  _CFObject.hash(into:)();
  v2 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v2);
}

{
  v2 = v1;
  v4 = NSObject._rawHashValue(seed:)(*(v2 + 40));
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v4, &lazy cache variable for type metadata for NSObject, 0x1E69E58C0);
}

{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v4);
}

{
  v2 = v1;
  v4 = NSObject._rawHashValue(seed:)(*(v2 + 40));
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v4, &lazy cache variable for type metadata for UIDragItem, 0x1E69DC990);
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd, &_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMR);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type Ref<CRRegister<TaggedStroke>> and conformance Ref<A>, &_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd, &_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMR, MEMORY[0x1E69953C8]);
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v2);
}

{
  type metadata accessor for CRAsset();
  v2 = MEMORY[0x1E6995408];
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type CRAsset and conformance CRAsset, MEMORY[0x1E6995408], MEMORY[0x1E6995418]);
  v3 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v3, MEMORY[0x1E6995408], &lazy protocol witness table cache variable for type CRAsset and conformance CRAsset, v2, MEMORY[0x1E6995420]);
}

{
  v2 = v1;
  v4 = NSObject._rawHashValue(seed:)(*(v2 + 40));

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v4);
}

{
  v2 = v1;
  v4 = NSObject._rawHashValue(seed:)(*(v2 + 40));
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v4, &lazy cache variable for type metadata for UIColor, 0x1E69DC888);
}

{
  v2 = v1;
  v4 = NSObject._rawHashValue(seed:)(*(v2 + 40));
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v4, &lazy cache variable for type metadata for PDFAnnotation, 0x1E6978018);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(void *a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x1DA6CE810]([a1 hash]);
  v2 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v2);
}

uint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2)
{
  return specialized __RawDictionaryStorage.find<A>(_:)(a1, a2, MEMORY[0x1E69E60C8], specialized __RawDictionaryStorage.find<A>(_:hashValue:));
}

{
  return specialized __RawDictionaryStorage.find<A>(_:)(a1, a2, MEMORY[0x1E6969048], specialized __RawDictionaryStorage.find<A>(_:hashValue:));
}

uint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2, void (*a3)(void *, uint64_t, uint64_t), uint64_t (*a4)(uint64_t, uint64_t, Swift::Int))
{
  Hasher.init(_seed:)();
  a3(v10, a1, a2);
  v7 = Hasher._finalize()();

  return a4(a1, a2, v7);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t *a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x1DA6CE810](*a1);
  type metadata accessor for PDFPageID(0);
  type metadata accessor for CRAsset();
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type CRAsset and conformance CRAsset, MEMORY[0x1E6995408], MEMORY[0x1E6995418]);
  dispatch thunk of Hashable.hash(into:)();
  v2 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v2);
}

uint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(uint64_t, Swift::Int))
{
  Hasher.init(_seed:)();
  a2(a1);
  String.hash(into:)();

  v5 = Hasher._finalize()();

  return a3(a1, v5);
}

void specialized Dictionary._Variant.removeValue(forKey:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  v7 = v6;
  if (v6)
  {
    v8 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v2;
    v13 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v10 = v13;
    }

    v11 = *(v10 + 48);
    v12 = type metadata accessor for UUID();
    (*(*(v12 - 8) + 8))(v11 + *(*(v12 - 8) + 72) * v8, v12);
    outlined init with take of WeakCalculateExpression(*(v10 + 56) + 8 * v8, a2);
    specialized _NativeDictionary._delete(at:)(v8, v10);
    *v3 = v10;
  }

  else
  {
    *a2 = 0;
  }

  *(a2 + 8) = (v7 & 1) == 0;
}

{
  v3 = v2;
  v5 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  v7 = v6;
  if (v6)
  {
    v8 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v2;
    v17 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v10 = v17;
    }

    v11 = *(v10 + 56) + 40 * v8;
    v15 = *v11;
    v16 = *(v11 + 16);
    v12 = *(v11 + 32);
    specialized _NativeDictionary._delete(at:)(v8, v10);
    v13 = v15;
    v14 = v16;
    *v3 = v10;
  }

  else
  {
    v12 = 0;
    v13 = 0uLL;
    v14 = 0uLL;
  }

  *a2 = v13;
  *(a2 + 16) = v14;
  *(a2 + 32) = v12;
  *(a2 + 40) = (v7 & 1) == 0;
}

double specialized Dictionary._Variant.removeValue(forKey:)@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v11 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v9 = v11;
    }

    outlined init with take of Any((*(v9 + 56) + 32 * v7), a2);
    specialized _NativeDictionary._delete(at:)(v7, v9);
    *v3 = v9;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t specialized Dictionary._Variant.removeValue(forKey:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v9 = v21;
    }

    v10 = *(v9 + 48);
    v11 = type metadata accessor for CRKeyPath();
    v12 = *(v11 - 8);
    v20 = v12;
    v13 = *(v12 + 72) * v7;
    (*(v12 + 8))(v10 + v13, v11);
    (*(v20 + 32))(a2, *(v9 + 56) + v13, v11);
    specialized _NativeDictionary._delete(at:)(v7, v9);
    *v3 = v9;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v11;
  }

  else
  {
    v18 = type metadata accessor for CRKeyPath();
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

{
  v3 = v2;
  v5 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v9 = v21;
    }

    v10 = *(v9 + 48);
    v11 = type metadata accessor for UUID();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    v12 = *(v9 + 56);
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo10CGImageRefaSgs5NeverOGMd, &_sScCySo10CGImageRefaSgs5NeverOGMR);
    v20 = *(v13 - 8);
    (*(v20 + 32))(a2, v12 + *(v20 + 72) * v7, v13);
    specialized _NativeDictionary._delete(at:)(v7, v9);
    *v3 = v9;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo10CGImageRefaSgs5NeverOGMd, &_sScCySo10CGImageRefaSgs5NeverOGMR);
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

{
  v3 = v2;
  v5 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v9 = v21;
    }

    v10 = *(v9 + 48);
    v11 = type metadata accessor for UUID();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    v12 = *(v9 + 56);
    v13 = type metadata accessor for Date();
    v20 = *(v13 - 8);
    (*(v20 + 32))(a2, v12 + *(v20 + 72) * v7, v13);
    specialized _NativeDictionary._delete(at:)(v7, v9);
    *v3 = v9;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = type metadata accessor for Date();
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

uint64_t specialized Dictionary._Variant.removeValue(forKey:)(uint64_t a1)
{
  v2 = v1;
  v3 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  v10 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    specialized _NativeDictionary.copy()();
    v7 = v10;
  }

  v8 = *(*(v7 + 56) + 16 * v5);
  specialized _NativeDictionary._delete(at:)(v5, v7);
  *v2 = v7;
  return v8;
}

double specialized Dictionary._Variant.removeValue(forKey:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2, MEMORY[0x1E69E60C8], specialized __RawDictionaryStorage.find<A>(_:hashValue:));
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v10 = v12;
    }

    outlined init with take of Any((*(v10 + 56) + 32 * v8), a3);
    specialized _NativeDictionary._delete(at:)(v8, v10);
    *v4 = v10;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t specialized Dictionary._Variant.removeValue(forKey:)(void *a1)
{
  v2 = v1;
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) == 0)
  {
    v13 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
    if (v14)
    {
      v3 = v13;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v8 = *v1;
      v17 = *v1;
      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_10:

        v12 = *(*(v8 + 56) + 8 * v3);
        specialized _NativeDictionary._delete(at:)(v3, v8);
        goto LABEL_11;
      }

LABEL_15:
      specialized _NativeDictionary.copy()();
      v8 = v17;
      goto LABEL_10;
    }

    return 0;
  }

  if (v3 < 0)
  {
    v4 = *v1;
  }

  else
  {
    v4 = v3 & 0xFFFFFFFFFFFFFF8;
  }

  v5 = a1;
  v6 = __CocoaDictionary.lookup(_:)();

  if (!v6)
  {
    return 0;
  }

  swift_unknownObjectRelease();

  v7 = __CocoaSet.count.getter();
  v8 = _ss17_NativeDictionaryV_8capacityAByxq_Gs07__CocoaB0Vn_SitcfCSo8NSObjectC_yXlTt1g5(v4, v7);

  v9 = specialized __RawDictionaryStorage.find<A>(_:)(v5);
  v11 = v10;

  if ((v11 & 1) == 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v12 = *(*(v8 + 56) + 8 * v9);
  specialized _NativeDictionary._delete(at:)(v9, v8);

LABEL_11:
  *v2 = v8;
  return v12;
}

void specialized _NativeDictionary._delete(at:)(int64_t a1, uint64_t a2)
{
  v40 = type metadata accessor for UUID();
  v4 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v39 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a2 + 64;
  v8 = -1 << *(a2 + 32);
  v9 = (a1 + 1) & ~v8;
  if ((*(a2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v41 = v5;
    v11 = _HashTable.previousHole(before:)();
    v12 = v40;
    v5 = v41;
    v13 = v10;
    v15 = *(v4 + 16);
    v14 = v4 + 16;
    v37 = (v11 + 1) & v10;
    v38 = v15;
    v16 = *(v14 + 56);
    v35 = (v14 - 8);
    v36 = a2 + 64;
    do
    {
      v17 = v16;
      v18 = v16 * v9;
      v19 = v39;
      v20 = v13;
      v21 = v14;
      v38(v39, *(v5 + 48) + v16 * v9, v12);
      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      v22 = dispatch thunk of Hashable._rawHashValue(seed:)();
      (*v35)(v19, v12);
      v13 = v20;
      v23 = v22 & v20;
      if (a1 >= v37)
      {
        if (v23 >= v37 && a1 >= v23)
        {
LABEL_15:
          v5 = v41;
          v14 = v21;
          if (v17 * a1 < v18 || (v16 = v17, *(v41 + 48) + v17 * a1 >= (*(v41 + 48) + v18 + v17)))
          {
            swift_arrayInitWithTakeFrontToBack();
            v5 = v41;
            v16 = v17;
            v13 = v20;
            v7 = v36;
          }

          else
          {
            v7 = v36;
            if (v17 * a1 != v18)
            {
              swift_arrayInitWithTakeBackToFront();
              v5 = v41;
              v16 = v17;
              v13 = v20;
            }
          }

          v26 = *(v5 + 56);
          v27 = v26 + 40 * a1;
          v28 = (v26 + 40 * v9);
          if (a1 != v9 || v27 >= v28 + 40)
          {
            v29 = *v28;
            v30 = v28[1];
            *(v27 + 32) = *(v28 + 4);
            *v27 = v29;
            *(v27 + 16) = v30;
            a1 = v9;
          }

          goto LABEL_4;
        }
      }

      else if (v23 >= v37 || a1 >= v23)
      {
        goto LABEL_15;
      }

      v14 = v21;
      v7 = v36;
      v16 = v17;
      v5 = v41;
LABEL_4:
      v9 = (v9 + 1) & v13;
    }

    while (((*(v7 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  *(v7 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v31 = *(v5 + 16);
  v32 = __OFSUB__(v31, 1);
  v33 = v31 - 1;
  if (v32)
  {
    __break(1u);
  }

  else
  {
    *(v5 + 16) = v33;
    ++*(v5 + 36);
  }
}

{
  v33 = type metadata accessor for UUID();
  v4 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a2 + 64;
  v8 = -1 << *(a2 + 32);
  v9 = (a1 + 1) & ~v8;
  if ((*(a2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v11 = _HashTable.previousHole(before:)();
    v12 = v10;
    v32 = (v11 + 1) & v10;
    v14 = *(v4 + 16);
    v13 = v4 + 16;
    v30 = a2 + 64;
    v31 = v14;
    v15 = *(v13 + 56);
    v29 = (v13 - 8);
    v34 = v12;
    v16 = v33;
    do
    {
      v17 = v15;
      v18 = v15 * v9;
      v19 = *(a2 + 48) + v15 * v9;
      v20 = v13;
      v31(v6, v19, v16);
      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      v21 = dispatch thunk of Hashable._rawHashValue(seed:)();
      (*v29)(v6, v16);
      v22 = v34;
      v23 = v21 & v34;
      if (a1 >= v32)
      {
        if (v23 >= v32 && a1 >= v23)
        {
LABEL_15:
          v13 = v20;
          v15 = v17;
          if (v17 * a1 < v18 || *(a2 + 48) + v17 * a1 >= (*(a2 + 48) + v18 + v17))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v17 * a1 != v18)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v7 = v30;
          if (a1 < v9 || *(a2 + 56) + 8 * a1 >= *(a2 + 56) + 8 * v9 + 8)
          {
            swift_arrayInitWithTakeFrontToBack();
            a1 = v9;
            v22 = v34;
          }

          else
          {
            v22 = v34;
            if (a1 != v9)
            {
              swift_arrayInitWithTakeBackToFront();
              v22 = v34;
              a1 = v9;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v23 >= v32 || a1 >= v23)
      {
        goto LABEL_15;
      }

      v13 = v20;
      v7 = v30;
      v15 = v17;
LABEL_4:
      v9 = (v9 + 1) & v22;
    }

    while (((*(v7 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  *(v7 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v26 = *(a2 + 16);
  v27 = __OFSUB__(v26, 1);
  v28 = v26 - 1;
  if (v27)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v28;
    ++*(a2 + 36);
  }
}

{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v10 = *(*(a2 + 48) + 8 * v6);
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      v11 = v10;
      String.hash(into:)();
      v12 = Hasher._finalize()();

      v13 = v12 & v7;
      if (v3 >= v8)
      {
        if (v13 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v13 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v13)
      {
LABEL_10:
        v14 = *(a2 + 48);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
        }

        v17 = *(a2 + 56);
        v18 = (v17 + 32 * v3);
        v19 = (v17 + 32 * v6);
        if (v3 != v6 || v18 >= v19 + 2)
        {
          v9 = v19[1];
          *v18 = *v19;
          v18[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }
}

{
  v4 = type metadata accessor for CRKeyPath();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v12 = _HashTable.previousHole(before:)();
    v13 = v11;
    v31 = (v12 + 1) & v11;
    v32 = a2 + 64;
    v15 = *(v5 + 16);
    v14 = v5 + 16;
    v16 = *(v14 + 56);
    v29 = (v14 - 8);
    v30 = v15;
    do
    {
      v17 = v16 * v10;
      v18 = v13;
      v19 = v14;
      v30(v7, *(a2 + 48) + v16 * v10, v4);
      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type CRKeyPath and conformance CRKeyPath, MEMORY[0x1E69954B8], MEMORY[0x1E69954C8]);
      v20 = dispatch thunk of Hashable._rawHashValue(seed:)();
      (*v29)(v7, v4);
      v13 = v18;
      v21 = v20 & v18;
      if (a1 >= v31)
      {
        if (v21 >= v31 && a1 >= v21)
        {
LABEL_15:
          v24 = v16 * a1;
          if (v16 * a1 < v17 || *(a2 + 48) + v16 * a1 >= (*(a2 + 48) + v17 + v16))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v24 != v17)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v24 < v17 || *(a2 + 56) + v24 >= (*(a2 + 56) + v17 + v16))
          {
            swift_arrayInitWithTakeFrontToBack();
            a1 = v10;
            v14 = v19;
            v13 = v18;
          }

          else
          {
            a1 = v10;
            v25 = v24 == v17;
            v14 = v19;
            v13 = v18;
            if (!v25)
            {
              swift_arrayInitWithTakeBackToFront();
              v13 = v18;
              a1 = v10;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v21 >= v31 || a1 >= v21)
      {
        goto LABEL_15;
      }

      v14 = v19;
LABEL_4:
      v10 = (v10 + 1) & v13;
      v8 = v32;
    }

    while (((*(v32 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v26 = *(a2 + 16);
  v27 = __OFSUB__(v26, 1);
  v28 = v26 - 1;
  if (v27)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v28;
    ++*(a2 + 36);
  }
}

{
  v26 = type metadata accessor for PDFPageID(0);
  v4 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v6 = (&v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = a2 + 64;
  v8 = -1 << *(a2 + 32);
  v9 = (a1 + 1) & ~v8;
  if ((*(a2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v11 = (_HashTable.previousHole(before:)() + 1) & ~v8;
    v12 = *(v4 + 72);
    v25 = a2 + 64;
    do
    {
      v13 = v12;
      v14 = v12 * v9;
      outlined init with copy of PKStrokeProperties(*(a2 + 48) + v12 * v9, v6, type metadata accessor for PDFPageID);
      Hasher.init(_seed:)();
      MEMORY[0x1DA6CE810](*v6);
      type metadata accessor for CRAsset();
      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type CRAsset and conformance CRAsset, MEMORY[0x1E6995408], MEMORY[0x1E6995418]);
      dispatch thunk of Hashable.hash(into:)();
      v15 = Hasher._finalize()();
      outlined destroy of PKStrokeProperties(v6, type metadata accessor for PDFPageID);
      v16 = v15 & v10;
      if (a1 >= v11)
      {
        if (v16 < v11)
        {
          v7 = v25;
          v12 = v13;
          goto LABEL_4;
        }

        v12 = v13;
        if (a1 >= v16)
        {
          goto LABEL_11;
        }
      }

      else
      {
        v12 = v13;
        if (v16 >= v11 || a1 >= v16)
        {
LABEL_11:
          if (v12 * a1 < v14 || *(a2 + 48) + v12 * a1 >= (*(a2 + 48) + v14 + v12))
          {
            swift_arrayInitWithTakeFrontToBack();
            v7 = v25;
          }

          else
          {
            v17 = v12 * a1 == v14;
            v7 = v25;
            if (!v17)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v18 = *(a2 + 56);
          v19 = (v18 + 8 * a1);
          v20 = (v18 + 8 * v9);
          if (a1 != v9 || v19 >= v20 + 1)
          {
            *v19 = *v20;
            a1 = v9;
          }

          goto LABEL_4;
        }
      }

      v7 = v25;
LABEL_4:
      v9 = (v9 + 1) & v10;
    }

    while (((*(v7 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  *(v7 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }
}

{
  v38 = type metadata accessor for CRKeyPath();
  v4 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v37 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a2 + 64;
  v8 = -1 << *(a2 + 32);
  v9 = (a1 + 1) & ~v8;
  if ((*(a2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v39 = v5;
    v11 = _HashTable.previousHole(before:)();
    v12 = v38;
    v5 = v39;
    v13 = v10;
    v36 = (v11 + 1) & v10;
    v15 = *(v4 + 16);
    v14 = v4 + 16;
    v34 = a2 + 64;
    v35 = v15;
    v16 = *(v14 + 56);
    v33 = (v14 - 8);
    do
    {
      v17 = v16;
      v18 = v16 * v9;
      v19 = v37;
      v20 = v13;
      v21 = v14;
      v35(v37, *(v5 + 48) + v16 * v9, v12);
      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type CRKeyPath and conformance CRKeyPath, MEMORY[0x1E69954B8], MEMORY[0x1E69954C8]);
      v22 = dispatch thunk of Hashable._rawHashValue(seed:)();
      (*v33)(v19, v12);
      v13 = v20;
      v23 = v22 & v20;
      if (a1 >= v36)
      {
        if (v23 >= v36 && a1 >= v23)
        {
LABEL_15:
          v5 = v39;
          v14 = v21;
          if (v17 * a1 < v18 || (v16 = v17, *(v39 + 48) + v17 * a1 >= (*(v39 + 48) + v18 + v17)))
          {
            swift_arrayInitWithTakeFrontToBack();
            v5 = v39;
            v16 = v17;
            v13 = v20;
            v7 = v34;
          }

          else
          {
            v7 = v34;
            if (v17 * a1 != v18)
            {
              swift_arrayInitWithTakeBackToFront();
              v5 = v39;
              v16 = v17;
              v13 = v20;
            }
          }

          v26 = *(v5 + 56);
          v27 = (v26 + 8 * a1);
          v28 = (v26 + 8 * v9);
          if (a1 != v9 || v27 >= v28 + 1)
          {
            *v27 = *v28;
            a1 = v9;
          }

          goto LABEL_4;
        }
      }

      else if (v23 >= v36 || a1 >= v23)
      {
        goto LABEL_15;
      }

      v14 = v21;
      v7 = v34;
      v16 = v17;
      v5 = v39;
LABEL_4:
      v9 = (v9 + 1) & v13;
    }

    while (((*(v7 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  *(v7 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v29 = *(v5 + 16);
  v30 = __OFSUB__(v29, 1);
  v31 = v29 - 1;
  if (v30)
  {
    __break(1u);
  }

  else
  {
    *(v5 + 16) = v31;
    ++*(v5 + 36);
  }
}

{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      Hasher.init(_seed:)();

      String.hash(into:)();
      v10 = Hasher._finalize()();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 16 * v3);
        v14 = (v12 + 16 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 32 * v3);
        v17 = (v15 + 32 * v6);
        if (v3 != v6 || v16 >= v17 + 2)
        {
          v9 = v17[1];
          *v16 = *v17;
          v16[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }
}

{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v11 = *(a2 + 40);
      v12 = *(*(a2 + 48) + 8 * v6);
      v13 = NSObject._rawHashValue(seed:)(v11);

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 >= v8 && v3 >= v14)
        {
LABEL_15:
          v17 = *(a2 + 48);
          v18 = (v17 + 8 * v3);
          v19 = (v17 + 8 * v6);
          if (v3 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
          }

          v20 = *(a2 + 56);
          v21 = v20 + 40 * v3;
          v22 = (v20 + 40 * v6);
          if (v3 != v6 || v21 >= v22 + 40)
          {
            v9 = *v22;
            v10 = v22[1];
            *(v21 + 32) = *(v22 + 4);
            *v21 = v9;
            *(v21 + 16) = v10;
            v3 = v6;
          }
        }
      }

      else if (v14 >= v8 || v3 >= v14)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v23 = *(a2 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v25;
    ++*(a2 + 36);
  }
}

{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 8 * v6);
      v11 = NSObject._rawHashValue(seed:)(v9);

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 >= v8 && v3 >= v12)
        {
LABEL_15:
          v15 = *(a2 + 48);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
          }

          v18 = *(a2 + 56);
          v19 = (v18 + 8 * v3);
          v20 = (v18 + 8 * v6);
          if (v3 != v6 || v19 >= v20 + 1)
          {
            *v19 = *v20;
            v3 = v6;
          }
        }
      }

      else if (v12 >= v8 || v3 >= v12)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }
}

{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 8 * v6);
      v11 = NSObject._rawHashValue(seed:)(v9);

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 >= v8 && v3 >= v12)
        {
LABEL_15:
          v15 = *(a2 + 48);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
          }

          v18 = *(a2 + 56);
          v19 = (v18 + 16 * v3);
          v20 = (v18 + 16 * v6);
          if (v3 != v6 || v19 >= v20 + 1)
          {
            *v19 = *v20;
            v3 = v6;
          }
        }
      }

      else if (v12 >= v8 || v3 >= v12)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }
}

{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v41 = a2;
    v11 = ~v9;
    v12 = _HashTable.previousHole(before:)();
    v13 = v11;
    a2 = v41;
    v40 = (v12 + 1) & v13;
    v15 = *(v5 + 16);
    v14 = v5 + 16;
    v38 = v8;
    v39 = v15;
    v16 = *(v14 + 56);
    v37 = (v14 - 8);
    do
    {
      v17 = v16;
      v18 = v16 * v10;
      v19 = v13;
      v20 = v14;
      v39(v7, *(a2 + 48) + v16 * v10, v4);
      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      v21 = dispatch thunk of Hashable._rawHashValue(seed:)();
      (*v37)(v7, v4);
      v13 = v19;
      v22 = v21 & v19;
      if (a1 >= v40)
      {
        if (v22 >= v40 && a1 >= v22)
        {
LABEL_15:
          v14 = v20;
          if (v17 * a1 < v18 || *(v41 + 48) + v17 * a1 >= (*(v41 + 48) + v18 + v17))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v17 * a1 != v18)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v41;
          v25 = *(v41 + 56);
          v26 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo10CGImageRefaSgs5NeverOGMd, &_sScCySo10CGImageRefaSgs5NeverOGMR) - 8) + 72);
          v27 = v26 * a1;
          v28 = v25 + v26 * a1;
          v29 = v26 * v10;
          v30 = v25 + v26 * v10 + v26;
          if (v27 < v29 || v28 >= v30)
          {
            swift_arrayInitWithTakeFrontToBack();
            a1 = v10;
            v8 = v38;
            v13 = v19;
          }

          else
          {
            a1 = v10;
            v32 = v27 == v29;
            v8 = v38;
            v13 = v19;
            if (!v32)
            {
              swift_arrayInitWithTakeBackToFront();
              v13 = v19;
              a1 = v10;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v22 >= v40 || a1 >= v22)
      {
        goto LABEL_15;
      }

      v14 = v20;
      v8 = v38;
      a2 = v41;
LABEL_4:
      v10 = (v10 + 1) & v13;
      v16 = v17;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v33 = *(a2 + 16);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v35;
    ++*(a2 + 36);
  }
}

{
  v39 = type metadata accessor for UUID();
  v4 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v38 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a2 + 64;
  v8 = -1 << *(a2 + 32);
  v9 = (a1 + 1) & ~v8;
  if ((*(a2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v40 = v5;
    v11 = _HashTable.previousHole(before:)();
    v12 = v39;
    v5 = v40;
    v13 = v10;
    v37 = (v11 + 1) & v10;
    v15 = *(v4 + 16);
    v14 = v4 + 16;
    v35 = a2 + 64;
    v36 = v15;
    v16 = *(v14 + 56);
    v34 = (v14 - 8);
    do
    {
      v17 = v16;
      v18 = v16 * v9;
      v19 = v38;
      v20 = v13;
      v21 = v14;
      v36(v38, *(v5 + 48) + v16 * v9, v12);
      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      v22 = dispatch thunk of Hashable._rawHashValue(seed:)();
      (*v34)(v19, v12);
      v13 = v20;
      v23 = v22 & v20;
      if (a1 >= v37)
      {
        if (v23 >= v37 && a1 >= v23)
        {
LABEL_15:
          v5 = v40;
          v14 = v21;
          if (v17 * a1 < v18 || (v16 = v17, *(v40 + 48) + v17 * a1 >= (*(v40 + 48) + v18 + v17)))
          {
            swift_arrayInitWithTakeFrontToBack();
            v5 = v40;
            v16 = v17;
            v13 = v20;
            v7 = v35;
          }

          else
          {
            v7 = v35;
            if (v17 * a1 != v18)
            {
              swift_arrayInitWithTakeBackToFront();
              v5 = v40;
              v16 = v17;
              v13 = v20;
            }
          }

          v26 = *(v5 + 56);
          v27 = (v26 + 32 * a1);
          v28 = (v26 + 32 * v9);
          if (a1 != v9 || v27 >= v28 + 2)
          {
            v29 = v28[1];
            *v27 = *v28;
            v27[1] = v29;
            a1 = v9;
          }

          goto LABEL_4;
        }
      }

      else if (v23 >= v37 || a1 >= v23)
      {
        goto LABEL_15;
      }

      v14 = v21;
      v7 = v35;
      v16 = v17;
      v5 = v40;
LABEL_4:
      v9 = (v9 + 1) & v13;
    }

    while (((*(v7 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  *(v7 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v30 = *(v5 + 16);
  v31 = __OFSUB__(v30, 1);
  v32 = v30 - 1;
  if (v31)
  {
    __break(1u);
  }

  else
  {
    *(v5 + 16) = v32;
    ++*(v5 + 36);
  }
}

{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v41 = a2;
    v11 = ~v9;
    v12 = _HashTable.previousHole(before:)();
    v13 = v11;
    a2 = v41;
    v40 = (v12 + 1) & v13;
    v15 = *(v5 + 16);
    v14 = v5 + 16;
    v38 = v8;
    v39 = v15;
    v16 = *(v14 + 56);
    v37 = (v14 - 8);
    do
    {
      v17 = v16;
      v18 = v16 * v10;
      v19 = v13;
      v20 = v14;
      v39(v7, *(a2 + 48) + v16 * v10, v4);
      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      v21 = dispatch thunk of Hashable._rawHashValue(seed:)();
      (*v37)(v7, v4);
      v13 = v19;
      v22 = v21 & v19;
      if (a1 >= v40)
      {
        if (v22 >= v40 && a1 >= v22)
        {
LABEL_15:
          v14 = v20;
          if (v17 * a1 < v18 || *(v41 + 48) + v17 * a1 >= (*(v41 + 48) + v18 + v17))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v17 * a1 != v18)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v41;
          v25 = *(v41 + 56);
          v26 = *(*(type metadata accessor for Date() - 8) + 72);
          v27 = v26 * a1;
          v28 = v25 + v26 * a1;
          v29 = v26 * v10;
          v30 = v25 + v26 * v10 + v26;
          if (v27 < v29 || v28 >= v30)
          {
            swift_arrayInitWithTakeFrontToBack();
            a1 = v10;
            v8 = v38;
            v13 = v19;
          }

          else
          {
            a1 = v10;
            v32 = v27 == v29;
            v8 = v38;
            v13 = v19;
            if (!v32)
            {
              swift_arrayInitWithTakeBackToFront();
              v13 = v19;
              a1 = v10;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v22 >= v40 || a1 >= v22)
      {
        goto LABEL_15;
      }

      v14 = v20;
      v8 = v38;
      a2 = v41;
LABEL_4:
      v10 = (v10 + 1) & v13;
      v16 = v17;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v33 = *(a2 + 16);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v35;
    ++*(a2 + 36);
  }
}

void specialized _NativeDictionary._delete(at:)(int64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v42 = a5;
  v43 = a6;
  v41 = a4;
  v8 = a3(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v37 - v10;
  v12 = a2 + 64;
  v13 = -1 << *(a2 + 32);
  v14 = (a1 + 1) & ~v13;
  if ((*(a2 + 64 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v16 = _HashTable.previousHole(before:)();
    v17 = v15;
    v40 = (v16 + 1) & v15;
    v19 = *(v9 + 16);
    v18 = v9 + 16;
    v44 = *(v18 + 56);
    v38 = (v18 - 8);
    v39 = v19;
    do
    {
      v20 = v44 * v14;
      v21 = v17;
      v22 = v18;
      v39(v11, *(a2 + 48) + v44 * v14, v8);
      lazy protocol witness table accessor for type UUID and conformance UUID(v41, v42, v43);
      v23 = dispatch thunk of Hashable._rawHashValue(seed:)();
      (*v38)(v11, v8);
      v17 = v21;
      v24 = v23 & v21;
      if (a1 >= v40)
      {
        if (v24 >= v40 && a1 >= v24)
        {
LABEL_15:
          v27 = *(a2 + 48);
          v28 = v27 + v44 * a1;
          v29 = v27 + v20 + v44;
          v30 = v44 * a1 < v20 || v28 >= v29;
          v18 = v22;
          if (!v30)
          {
            if (v44 * a1 != v20)
            {
              swift_arrayInitWithTakeBackToFront();
LABEL_23:
              v17 = v21;
            }

            v31 = *(a2 + 56);
            v32 = (v31 + 8 * a1);
            v33 = (v31 + 8 * v14);
            if (a1 != v14 || v32 >= v33 + 1)
            {
              *v32 = *v33;
              a1 = v14;
            }

            goto LABEL_4;
          }

          swift_arrayInitWithTakeFrontToBack();
          goto LABEL_23;
        }
      }

      else if (v24 >= v40 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v18 = v22;
LABEL_4:
      v14 = (v14 + 1) & v17;
    }

    while (((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) != 0);
  }

  *(v12 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v34 = *(a2 + 16);
  v35 = __OFSUB__(v34, 1);
  v36 = v34 - 1;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v36;
    ++*(a2 + 36);
  }
}

uint64_t specialized _NativeDictionary._delete(at:)(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      Hasher.init(_seed:)();
      outlined copy of Data._Representation(v11, v12);
      Data.hash(into:)();
      v13 = Hasher._finalize()();
      result = outlined consume of Data._Representation(v11, v12);
      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = v18 + 24 * v3;
        v20 = (v18 + 24 * v6);
        if (24 * v3 < (24 * v6) || v19 >= v20 + 24 || v3 != v6)
        {
          v9 = *v20;
          *(v19 + 16) = *(v20 + 2);
          *v19 = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = (*(a2 + 48) + 16 * v6);
      v10 = *v9;
      v11 = v9[1];
      Hasher.init(_seed:)();
      outlined copy of Data._Representation(v10, v11);
      Data.hash(into:)();
      v12 = Hasher._finalize()();
      result = outlined consume of Data._Representation(v10, v11);
      v13 = v12 & v7;
      if (v3 >= v8)
      {
        if (v13 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v13 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v13)
      {
LABEL_10:
        v14 = *(a2 + 48);
        v15 = (v14 + 16 * v3);
        v16 = (v14 + 16 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
        }

        v17 = *(a2 + 56);
        v18 = (v17 + 16 * v3);
        v19 = (v17 + 16 * v6);
        if (v3 != v6 || v18 >= v19 + 1)
        {
          *v18 = *v19;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for NSObject, 0x1E69E58C0);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = static NSObject.== infix(_:_:)();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

{
  v22 = a1;
  v4 = type metadata accessor for CodingUserInfoKey();
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v21 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v12 = v5 + 16;
    v13 = v14;
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    do
    {
      v17 = v12;
      v13(v8, *(v23 + 48) + v15 * v10, v4, v6);
      v18 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*v16)(v8, v4);
      if (v18)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      v12 = v17;
    }

    while (((*(v21 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for CFStringRef(0);
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef, type metadata accessor for CFStringRef, &protocol conformance descriptor for CFStringRef);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = static _CFObject.== infix(_:_:)();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      outlined init with copy of AnyHashable(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x1DA6CDFF0](v9, a1);
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

{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = a1;
    v6 = ~v3;
    while (1)
    {
      v7 = FormAnalyticsKeys.rawValue.getter(*(*(v2 + 48) + v4));
      v9 = v8;
      if (v7 == FormAnalyticsKeys.rawValue.getter(v5) && v9 == v10)
      {
        break;
      }

      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

{
  v20 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd, &_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMR);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v18 - v7;
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4, v6);
      lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type Ref<CRRegister<TaggedStroke>> and conformance Ref<A>, &_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd, &_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMR, MEMORY[0x1E69953D0]);
      v16 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for PaperKitPDFPage(0);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = static NSObject.== infix(_:_:)();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = v7;
      if (v6 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v8 == v9)
      {
        break;
      }

      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v45[3] = *MEMORY[0x1E69E9840];
  v4 = v3 + 64;
  v5 = -1 << *(v3 + 32);
  v6 = a3 & ~v5;
  if ((*(v3 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = v3;
    v8 = a2;
    v9 = a1;
    v10 = ~v5;
    if (a1)
    {
      v11 = 0;
    }

    else
    {
      v11 = a2 == 0xC000000000000000;
    }

    v12 = !v11;
    v43 = v12;
    v13 = a2 >> 62;
    v14 = __OFSUB__(HIDWORD(a1), a1);
    v40 = v14;
    v39 = HIDWORD(a1) - a1;
    v41 = v10;
    v42 = BYTE6(a2);
    v36 = v4;
    while (1)
    {
      v15 = (*(v7 + 48) + 16 * v6);
      v17 = *v15;
      v16 = v15[1];
      v18 = v16 >> 62;
      if (v16 >> 62 == 3)
      {
        break;
      }

      if (v18 > 1)
      {
        if (v18 != 2)
        {
          goto LABEL_36;
        }

        v24 = *(v17 + 16);
        v23 = *(v17 + 24);
        v25 = __OFSUB__(v23, v24);
        v22 = v23 - v24;
        if (v25)
        {
          goto LABEL_64;
        }

        if (v13 <= 1)
        {
          goto LABEL_33;
        }
      }

      else if (v18)
      {
        LODWORD(v22) = HIDWORD(v17) - v17;
        if (__OFSUB__(HIDWORD(v17), v17))
        {
          goto LABEL_65;
        }

        v22 = v22;
        if (v13 <= 1)
        {
LABEL_33:
          v26 = v42;
          if (v13)
          {
            v26 = v39;
            if (v40)
            {
              goto LABEL_63;
            }
          }

          goto LABEL_39;
        }
      }

      else
      {
        v22 = BYTE6(v16);
        if (v13 <= 1)
        {
          goto LABEL_33;
        }
      }

LABEL_37:
      if (v13 != 2)
      {
        if (!v22)
        {
          return v6;
        }

        goto LABEL_13;
      }

      v28 = *(v9 + 16);
      v27 = *(v9 + 24);
      v25 = __OFSUB__(v27, v28);
      v26 = v27 - v28;
      if (v25)
      {
        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
LABEL_65:
        __break(1u);
LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
LABEL_69:
        __break(1u);
      }

LABEL_39:
      if (v22 != v26)
      {
        goto LABEL_13;
      }

      if (v22 < 1)
      {
        return v6;
      }

      if (v18 <= 1)
      {
        if (!v18)
        {
          v45[0] = v17;
          LOWORD(v45[1]) = v16;
          BYTE2(v45[1]) = BYTE2(v16);
          BYTE3(v45[1]) = BYTE3(v16);
          BYTE4(v45[1]) = BYTE4(v16);
          BYTE5(v45[1]) = BYTE5(v16);
          outlined copy of Data._Representation(v17, v16);
          closure #1 in static Data.== infix(_:_:)(v45, v9, v8, &v44);
          outlined consume of Data._Representation(v17, v16);
          if (v44)
          {
            return v6;
          }

          v10 = v41;
          goto LABEL_13;
        }

        if (v17 >> 32 < v17)
        {
          goto LABEL_66;
        }

        outlined copy of Data._Representation(v17, v16);
        v31 = __DataStorage._bytes.getter();
        if (v31)
        {
          v33 = __DataStorage._offset.getter();
          if (__OFSUB__(v17, v33))
          {
            goto LABEL_69;
          }

          v31 += v17 - v33;
        }

        goto LABEL_58;
      }

      if (v18 == 2)
      {
        v30 = *(v17 + 16);
        v29 = *(v17 + 24);
        outlined copy of Data._Representation(v17, v16);
        v31 = __DataStorage._bytes.getter();
        if (v31)
        {
          v32 = __DataStorage._offset.getter();
          if (__OFSUB__(v30, v32))
          {
            goto LABEL_68;
          }

          v31 += v30 - v32;
        }

        if (__OFSUB__(v29, v30))
        {
          goto LABEL_67;
        }

LABEL_58:
        MEMORY[0x1DA6C8120]();
        v34 = v31;
        v9 = a1;
        v8 = a2;
        closure #1 in static Data.== infix(_:_:)(v34, a1, a2, v45);
        outlined consume of Data._Representation(v17, v16);
        if (v45[0])
        {
          return v6;
        }

        v4 = v36;
        v10 = v41;
        goto LABEL_13;
      }

      memset(v45, 0, 14);
      outlined copy of Data._Representation(v17, v16);
      closure #1 in static Data.== infix(_:_:)(v45, v9, v8, &v44);
      outlined consume of Data._Representation(v17, v16);
      if (v44)
      {
        return v6;
      }

LABEL_13:
      v6 = (v6 + 1) & v10;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        return v6;
      }
    }

    if (v17)
    {
      v19 = 0;
    }

    else
    {
      v19 = v16 == 0xC000000000000000;
    }

    v21 = !v19 || v13 < 3;
    if (((v21 | v43) & 1) == 0)
    {
      return v6;
    }

LABEL_36:
    v22 = 0;
    if (v13 <= 1)
    {
      goto LABEL_33;
    }

    goto LABEL_37;
  }

  return v6;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t *a1, uint64_t a2)
{
  v5 = type metadata accessor for PDFPageID(0);
  MEMORY[0x1EEE9AC00](v5);
  v8 = (&v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v12 = *a1;
    v13 = *(v6 + 72);
    do
    {
      outlined init with copy of PKStrokeProperties(*(v2 + 48) + v13 * v10, v8, type metadata accessor for PDFPageID);
      if (*v8 == v12)
      {
        v14 = static CRAsset.== infix(_:_:)();
        outlined destroy of PKStrokeProperties(v8, type metadata accessor for PDFPageID);
        if (v14)
        {
          return v10;
        }
      }

      else
      {
        outlined destroy of PKStrokeProperties(v8, type metadata accessor for PDFPageID);
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2, unint64_t *a3, void *a4)
{
  v5 = -1 << *(v4 + 32);
  v6 = a2 & ~v5;
  if ((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    type metadata accessor for PKMathRecognitionItemAttributes(0, a3, a4);
    do
    {
      v8 = *(*(v4 + 48) + 8 * v6);
      v9 = static NSObject.== infix(_:_:)();

      if (v9)
      {
        break;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v25 = a5;
  v26 = a6;
  v24 = a4;
  v22[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = v22 - v11;
  v23 = v6;
  v13 = -1 << *(v6 + 32);
  v14 = a2 & ~v13;
  v22[0] = v6 + 64;
  if ((*(v6 + 64 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v18 = *(v9 + 16);
    v17 = v9 + 16;
    v16 = v18;
    v19 = *(v17 + 56);
    do
    {
      v16(v12, *(v23 + 48) + v19 * v14, v8, v10);
      lazy protocol witness table accessor for type UUID and conformance UUID(v24, v25, v26);
      v20 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v17 - 8))(v12, v8);
      if (v20)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
    }

    while (((*(v22[0] + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) != 0);
  }

  return v14;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xE300000000000000;
      v8 = 6579297;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v8 = 0xD000000000000011;
          v7 = 0x80000001D4080610;
          break;
        case 2:
          v8 = 0xD000000000000016;
          v7 = 0x80000001D4080630;
          break;
        case 3:
          break;
        case 4:
          v7 = 0xE600000000000000;
          v8 = 0x65766F6D6572;
          break;
        case 5:
          v8 = 0xD00000000000002ALL;
          v7 = 0x80000001D4080660;
          break;
        case 6:
          v8 = 0x6F697463656C6573;
          v7 = 0xED0000657079546ELL;
          break;
        case 7:
          v8 = 7364980;
          break;
        case 8:
          v7 = 0xE500000000000000;
          v8 = 0x6F7373616CLL;
          break;
        case 9:
          v8 = 0xD000000000000028;
          v7 = 0x80000001D40806B0;
          break;
        case 0xA:
          v8 = 0x54746E65746E6F63;
          v7 = 0xEB00000000657079;
          break;
        case 0xB:
          v7 = 0xED0000746E656D65;
          goto LABEL_10;
        case 0xC:
          v7 = 0xEE0073746E656D65;
LABEL_10:
          v8 = 0x6C457361766E6163;
          break;
        case 0xD:
          v7 = 0xE500000000000000;
          v8 = 0x646578696DLL;
          break;
        case 0xE:
          v8 = 0xD00000000000001ELL;
          v7 = 0x80000001D4080710;
          break;
        case 0xF:
          v8 = 0x44646E4167617264;
          v7 = 0xEF65707954706F72;
          break;
        case 0x10:
          v8 = 0x4E6564697374756FLL;
          v7 = 0xEB0000000065746FLL;
          break;
        case 0x11:
          v8 = 0xD00000000000001DLL;
          v7 = 0x80000001D4080750;
          break;
        case 0x12:
          v8 = 0xD000000000000018;
          v7 = 0x80000001D4080770;
          break;
        case 0x13:
          v8 = 0xD00000000000001ELL;
          v7 = 0x80000001D4080790;
          break;
        case 0x14:
          v8 = 0x6E756F436E65706FLL;
          v7 = 0xE900000000000074;
          break;
        case 0x15:
          v8 = 0xD000000000000020;
          v7 = 0x80000001D40807C0;
          break;
        case 0x16:
          v8 = 0x64657463656C6573;
          v7 = 0xED0000746E756F43;
          break;
        case 0x17:
          v8 = 0xD000000000000020;
          v7 = 0x80000001D40807F0;
          break;
        case 0x18:
          v8 = 0x4C6464416D6F7266;
          v7 = 0xEF756E654D6B6E69;
          break;
        case 0x19:
          v8 = 0xD000000000000028;
          v7 = 0x80000001D4080830;
          break;
        case 0x1A:
          v8 = 0xD000000000000013;
          v7 = 0x80000001D4080860;
          break;
        default:
          v8 = 0xD000000000000020;
          v7 = 0x80000001D40805E0;
          break;
      }

      v9 = 0xE300000000000000;
      v10 = 6579297;
      switch(a1)
      {
        case 1:
          v9 = 0x80000001D4080610;
          if (v8 == 0xD000000000000011)
          {
            goto LABEL_82;
          }

          goto LABEL_83;
        case 2:
          v9 = 0x80000001D4080630;
          if (v8 != 0xD000000000000016)
          {
            goto LABEL_83;
          }

          goto LABEL_82;
        case 3:
          goto LABEL_81;
        case 4:
          v9 = 0xE600000000000000;
          if (v8 != 0x65766F6D6572)
          {
            goto LABEL_83;
          }

          goto LABEL_82;
        case 5:
          v9 = 0x80000001D4080660;
          if (v8 != 0xD00000000000002ALL)
          {
            goto LABEL_83;
          }

          goto LABEL_82;
        case 6:
          v11 = 0x6F697463656C6573;
          v12 = 0x657079546ELL;
          goto LABEL_76;
        case 7:
          if (v8 != 7364980)
          {
            goto LABEL_83;
          }

          goto LABEL_82;
        case 8:
          v9 = 0xE500000000000000;
          if (v8 != 0x6F7373616CLL)
          {
            goto LABEL_83;
          }

          goto LABEL_82;
        case 9:
          v9 = 0x80000001D40806B0;
          if (v8 != 0xD000000000000028)
          {
            goto LABEL_83;
          }

          goto LABEL_82;
        case 10:
          v9 = 0xEB00000000657079;
          if (v8 != 0x54746E65746E6F63)
          {
            goto LABEL_83;
          }

          goto LABEL_82;
        case 11:
          v9 = 0xED0000746E656D65;
          goto LABEL_42;
        case 12:
          v9 = 0xEE0073746E656D65;
LABEL_42:
          if (v8 != 0x6C457361766E6163)
          {
            goto LABEL_83;
          }

          goto LABEL_82;
        case 13:
          v9 = 0xE500000000000000;
          if (v8 != 0x646578696DLL)
          {
            goto LABEL_83;
          }

          goto LABEL_82;
        case 14:
          v9 = 0x80000001D4080710;
          if (v8 != 0xD00000000000001ELL)
          {
            goto LABEL_83;
          }

          goto LABEL_82;
        case 15:
          v9 = 0xEF65707954706F72;
          if (v8 != 0x44646E4167617264)
          {
            goto LABEL_83;
          }

          goto LABEL_82;
        case 16:
          v9 = 0xEB0000000065746FLL;
          if (v8 != 0x4E6564697374756FLL)
          {
            goto LABEL_83;
          }

          goto LABEL_82;
        case 17:
          v9 = 0x80000001D4080750;
          if (v8 != 0xD00000000000001DLL)
          {
            goto LABEL_83;
          }

          goto LABEL_82;
        case 18:
          v9 = 0x80000001D4080770;
          if (v8 != 0xD000000000000018)
          {
            goto LABEL_83;
          }

          goto LABEL_82;
        case 19:
          v9 = 0x80000001D4080790;
          if (v8 != 0xD00000000000001ELL)
          {
            goto LABEL_83;
          }

          goto LABEL_82;
        case 20:
          v9 = 0xE900000000000074;
          if (v8 != 0x6E756F436E65706FLL)
          {
            goto LABEL_83;
          }

          goto LABEL_82;
        case 21:
          v9 = 0x80000001D40807C0;
          if (v8 != 0xD000000000000020)
          {
            goto LABEL_83;
          }

          goto LABEL_82;
        case 22:
          v11 = 0x64657463656C6573;
          v12 = 0x746E756F43;
LABEL_76:
          v9 = v12 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
          if (v8 != v11)
          {
            goto LABEL_83;
          }

          goto LABEL_82;
        case 23:
          v10 = 0xD000000000000020;
          v9 = 0x80000001D40807F0;
LABEL_81:
          if (v8 == v10)
          {
            goto LABEL_82;
          }

          goto LABEL_83;
        case 24:
          v9 = 0xEF756E654D6B6E69;
          if (v8 != 0x4C6464416D6F7266)
          {
            goto LABEL_83;
          }

          goto LABEL_82;
        case 25:
          v9 = 0x80000001D4080830;
          if (v8 != 0xD000000000000028)
          {
            goto LABEL_83;
          }

          goto LABEL_82;
        case 26:
          v9 = 0x80000001D4080860;
          if (v8 != 0xD000000000000013)
          {
            goto LABEL_83;
          }

          goto LABEL_82;
        default:
          v9 = 0x80000001D40805E0;
          if (v8 != 0xD000000000000020)
          {
            goto LABEL_83;
          }

LABEL_82:
          if (v7 == v9)
          {

            return v4;
          }

LABEL_83:
          v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v13)
          {
            return v4;
          }

          v4 = (v4 + 1) & v6;
          if (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
          {
            return v4;
          }

          break;
      }
    }
  }

  return v4;
}