uint64_t key path getter for ModelComponent.subscript<A, B>(_:_:) : ModelComponentPhysicallyBasedMaterialFloat@<X0>(uint64_t result@<X0>, unint64_t *a2@<X1>, _DWORD *a3@<X8>)
{
  v4 = *a2;
  if ((*a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v5 = *(result + 8);
    if (v4 < *(v5 + 16))
    {
      outlined init with copy of __REAssetService(v5 + 40 * v4 + 32, v7);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit8Material_pMd, &_s10RealityKit8Material_pMR);
      swift_dynamicCast();
      swift_getAtKeyPath();
      result = outlined destroy of PhysicallyBasedMaterial(v6);
      *a3 = v8;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t key path getter for ModelComponent.subscript<A, B>(_:_:) : ModelComponentPhysicallyBasedMaterialPhysicallyBasedMaterial.BaseColor@<X0>(uint64_t result@<X0>, unint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a2;
  if ((*a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v5 = *(result + 8);
    if (v4 < *(v5 + 16))
    {
      outlined init with copy of __REAssetService(v5 + 40 * v4 + 32, v9);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit8Material_pMd, &_s10RealityKit8Material_pMR);
      swift_dynamicCast();
      swift_getAtKeyPath();
      result = outlined destroy of PhysicallyBasedMaterial(v8);
      v6 = v12;
      v7 = v13;
      *a3 = v10;
      *(a3 + 8) = v11;
      *(a3 + 24) = v6;
      *(a3 + 32) = v7;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t key path setter for ModelComponent.subscript<A, B>(_:_:) : ModelComponentPhysicallyBasedMaterialPhysicallyBasedMaterial.BaseColor(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, void (*a5)(__int128 *, _BYTE *, __n128))
{
  v6 = *a3;
  v7 = a3[1];
  v8 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v8;
  v12 = *(a1 + 32);

  (a5)(v11, v10);
  return specialized ModelComponent.subscript.setter(v11, v6, v7);
}

uint64_t key path getter for ModelComponent.subscript<A, B>(_:_:) : ModelComponentPhysicallyBasedMaterialSIMD2<Float>@<X0>(uint64_t result@<X0>, unint64_t *a2@<X1>, void *a3@<X8>)
{
  v4 = *a2;
  if ((*a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v5 = *(result + 8);
    if (v4 < *(v5 + 16))
    {
      outlined init with copy of __REAssetService(v5 + 40 * v4 + 32, v7);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit8Material_pMd, &_s10RealityKit8Material_pMR);
      swift_dynamicCast();
      swift_getAtKeyPath();
      result = outlined destroy of PhysicallyBasedMaterial(v6);
      *a3 = v8;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t key path getter for ModelComponent.subscript<A, B>(_:_:) : ModelComponentSimpleMaterialPhysicallyBasedMaterial.BaseColor@<X0>(uint64_t result@<X0>, unint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a2;
  if ((*a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v5 = *(result + 8);
    if (v4 < *(v5 + 16))
    {
      outlined init with copy of __REAssetService(v5 + 40 * v4 + 32, v9);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit8Material_pMd, &_s10RealityKit8Material_pMR);
      swift_dynamicCast();
      swift_getAtKeyPath();
      result = outlined destroy of SimpleMaterial(&v8);
      v6 = v12;
      v7 = v13;
      *a3 = v10;
      *(a3 + 8) = v11;
      *(a3 + 24) = v6;
      *(a3 + 32) = v7;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t key path getter for ModelComponent.subscript<A, B>(_:_:) : ModelComponentSimpleMaterialMaterialScalarParameter@<X0>(uint64_t result@<X0>, unint64_t *a2@<X1>, void *a3@<X8>)
{
  v4 = *a2;
  if ((*a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v5 = *(result + 8);
    if (v4 < *(v5 + 16))
    {
      outlined init with copy of __REAssetService(v5 + 40 * v4 + 32, v7);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit8Material_pMd, &_s10RealityKit8Material_pMR);
      swift_dynamicCast();
      swift_getAtKeyPath();
      result = outlined destroy of SimpleMaterial(&v6);
      *a3 = v8;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t key path setter for ModelComponent.subscript<A, B>(_:_:) : ModelComponentSimpleMaterialMaterialScalarParameter(uint64_t *a1, uint64_t a2, unint64_t *a3)
{
  v3 = *a3;
  v4 = a3[1];
  v5 = *a1;

  outlined copy of MaterialScalarParameter(v5);
  return specialized ModelComponent.subscript.setter(v5, v3, v4);
}

uint64_t key path getter for ModelComponent.subscript<A, B>(_:_:) : ModelComponentUnlitMaterialPhysicallyBasedMaterial.BaseColor@<X0>(uint64_t result@<X0>, unint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a2;
  if ((*a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v5 = *(result + 8);
    if (v4 < *(v5 + 16))
    {
      outlined init with copy of __REAssetService(v5 + 40 * v4 + 32, v9);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit8Material_pMd, &_s10RealityKit8Material_pMR);
      swift_dynamicCast();
      swift_getAtKeyPath();
      result = outlined destroy of UnlitMaterial(&v8);
      v6 = v12;
      v7 = v13;
      *a3 = v10;
      *(a3 + 8) = v11;
      *(a3 + 24) = v6;
      *(a3 + 32) = v7;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t key path setter for ModelComponent.subscript<A, B>(_:_:) : ModelComponentSimpleMaterialPhysicallyBasedMaterial.BaseColor(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(_OWORD *, uint64_t, uint64_t))
{
  v6 = *a3;
  v7 = a3[1];
  v8 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v8;
  v12 = *(a1 + 32);

  outlined init with copy of PhysicallyBasedMaterial.BaseColor(v11, v10);
  return a5(v11, v6, v7);
}

uint64_t key path getter for ModelComponent.subscript<A, B>(_:_:) : ModelComponentUnlitMaterialSIMD2<Float>@<X0>(uint64_t result@<X0>, unint64_t *a2@<X1>, void *a3@<X8>)
{
  v4 = *a2;
  if ((*a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v5 = *(result + 8);
    if (v4 < *(v5 + 16))
    {
      outlined init with copy of __REAssetService(v5 + 40 * v4 + 32, v7);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit8Material_pMd, &_s10RealityKit8Material_pMR);
      swift_dynamicCast();
      swift_getAtKeyPath();
      result = outlined destroy of UnlitMaterial(&v6);
      *a3 = v8;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t key path getter for ModelComponent.subscript<A, B>(_:_:) : ModelComponentCustomMaterialFloat@<X0>(uint64_t result@<X0>, unint64_t *a2@<X1>, _DWORD *a3@<X8>)
{
  v4 = *a2;
  if ((*a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v5 = *(result + 8);
    if (v4 < *(v5 + 16))
    {
      outlined init with copy of __REAssetService(v5 + 40 * v4 + 32, v7);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit8Material_pMd, &_s10RealityKit8Material_pMR);
      swift_dynamicCast();
      swift_getAtKeyPath();
      result = outlined destroy of CustomMaterial(v6);
      *a3 = v8;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t key path getter for ModelComponent.subscript<A, B>(_:_:) : ModelComponentCustomMaterialCustomMaterial.BaseColor@<X0>(uint64_t result@<X0>, unint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a2;
  if ((*a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v5 = *(result + 8);
    if (v4 < *(v5 + 16))
    {
      outlined init with copy of __REAssetService(v5 + 40 * v4 + 32, v9);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit8Material_pMd, &_s10RealityKit8Material_pMR);
      swift_dynamicCast();
      swift_getAtKeyPath();
      result = outlined destroy of CustomMaterial(v8);
      v6 = v11;
      v7 = v12;
      *a3 = v10;
      *(a3 + 8) = v6;
      *(a3 + 16) = v7;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t key path setter for ModelComponent.subscript<A, B>(_:_:) : ModelComponentCustomMaterialCustomMaterial.BaseColor(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  v3 = *a3;
  v4 = a3[1];
  v6 = *a1;
  v5 = *(a1 + 8);
  v7 = *(a1 + 16);

  return specialized ModelComponent.subscript.setter(v6, v5, v7, v3, v4);
}

BOOL key path index equality operator for (Int, WritableKeyPath<PhysicallyBasedMaterial, PhysicallyBasedMaterial.BaseColor>)(void *a1, void *a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  result = 0;
  if (*a2 == *a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    if (dispatch thunk of static Equatable.== infix(_:_:)())
    {
      return 1;
    }
  }

  return result;
}

uint64_t key path getter for ModelComponent.subscript<A, B>(_:_:) : ModelComponentCustomMaterialSIMD2<Float>@<X0>(uint64_t result@<X0>, unint64_t *a2@<X1>, void *a3@<X8>)
{
  v4 = *a2;
  if ((*a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v5 = *(result + 8);
    if (v4 < *(v5 + 16))
    {
      outlined init with copy of __REAssetService(v5 + 40 * v4 + 32, v7);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit8Material_pMd, &_s10RealityKit8Material_pMR);
      swift_dynamicCast();
      swift_getAtKeyPath();
      result = outlined destroy of CustomMaterial(v6);
      *a3 = v8;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t static ParticleEmitterComponent.animation(from:to:)(unint64_t *a1, uint64_t *a2, void *__src, const void *a4)
{
  memcpy(__dst, __src, 0x382uLL);
  memcpy(v15, a4, 0x382uLL);
  v7 = MEMORY[0x1E69E7CC0];
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs10AnyKeyPathC_17RealityFoundation07_Proto_C21AnimatableProperty_v1VyAE24ParticleEmitterComponentVGTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs10AnyKeyPathC_17RealityFoundation07_Proto_C21AnimatableProperty_v1VyAE24ParticleEmitterComponentVGTt0g5Tf4g_n(v7);
  v8 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs10AnyKeyPathC_17RealityFoundation07_Proto_C21AnimatableProperty_v1VyAE24ParticleEmitterComponentVGTt0g5Tf4g_n(v7);

  v12 = v8;
  v9 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs10AnyKeyPathC_17RealityFoundation07_Proto_C21AnimatableProperty_v1VyAE24ParticleEmitterComponentVGTt0g5Tf4g_n(v7);

  v13 = v9;
  result = closure #1 in static ParticleEmitterComponent.animation(from:to:)(&v12, __dst, v15);
  v11 = v13;
  *a1 = v12;
  *a2 = v11;
  return result;
}

uint64_t closure #1 in static ParticleEmitterComponent.animation(from:to:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v433 = *(a3 + 128);
  v436 = *(a2 + 128);
  KeyPath = swift_getKeyPath();
  specialized propertyCanAnimate<A, B>(from:to:keyPath:animatableContext:)(KeyPath, a1, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_s5SIMD3VySfGGMd, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_s5SIMD3VySfGGMR, specialized _NativeDictionary.setValue(_:forKey:isUnique:), v436, v433);

  v434 = *(a3 + 96);
  v437 = *(a2 + 96);
  v7 = swift_getKeyPath();
  specialized propertyCanAnimate<A, B>(from:to:keyPath:animatableContext:)(v7, a1, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_s5SIMD3VySfGGMd, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_s5SIMD3VySfGGMR, specialized _NativeDictionary.setValue(_:forKey:isUnique:), v437, v434);

  v8 = *(a2 + 144);
  v9 = *(a3 + 144);
  v10 = swift_getKeyPath();
  if (v8 != v9)
  {
    v11 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_SfGMd, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_SfGMR);
    v12 = swift_allocObject();
    *(v12 + 16) = v8;
    *(v12 + 24) = v11;
    swift_retain_n();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v443[0] = *a1;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v12, v11, isUniquelyReferenced_nonNull_native);
    *a1 = *&v443[0];
    v14 = swift_allocObject();
    *(v14 + 16) = v9;
    *(v14 + 24) = v11;

    v15 = swift_isUniquelyReferenced_nonNull_native();
    *&v443[0] = a1[1];
    a1[1] = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v14, v11, v15);

    a1[1] = *&v443[0];
  }

  v16 = *(a2 + 160);
  v17 = *(a3 + 160);
  v18 = swift_getKeyPath();
  if (v16 != v17)
  {
    v19 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_SfGMd, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_SfGMR);
    v20 = swift_allocObject();
    *(v20 + 16) = v16;
    *(v20 + 24) = v19;
    swift_retain_n();
    v21 = swift_isUniquelyReferenced_nonNull_native();
    *&v443[0] = *a1;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v20, v19, v21);
    *a1 = *&v443[0];
    v22 = swift_allocObject();
    *(v22 + 16) = v17;
    *(v22 + 24) = v19;

    v23 = swift_isUniquelyReferenced_nonNull_native();
    *&v443[0] = a1[1];
    a1[1] = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v22, v19, v23);

    a1[1] = *&v443[0];
  }

  v24 = *(a2 + 164);
  v25 = *(a3 + 164);
  v26 = swift_getKeyPath();
  if (v24 != v25)
  {
    v27 = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_SfGMd, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_SfGMR);
    v28 = swift_allocObject();
    *(v28 + 16) = v24;
    *(v28 + 24) = v27;
    swift_retain_n();
    v29 = swift_isUniquelyReferenced_nonNull_native();
    *&v443[0] = *a1;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v28, v27, v29);
    *a1 = *&v443[0];
    v30 = swift_allocObject();
    *(v30 + 16) = v25;
    *(v30 + 24) = v27;

    v31 = swift_isUniquelyReferenced_nonNull_native();
    *&v443[0] = a1[1];
    a1[1] = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v30, v27, v31);

    a1[1] = *&v443[0];
  }

  v32 = *(a2 + 156);
  v33 = *(a3 + 156);
  v34 = swift_getKeyPath();
  if (v32 != v33)
  {
    v35 = v34;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_SfGMd, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_SfGMR);
    v36 = swift_allocObject();
    *(v36 + 16) = v32;
    *(v36 + 24) = v35;
    swift_retain_n();
    v37 = swift_isUniquelyReferenced_nonNull_native();
    *&v443[0] = *a1;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v36, v35, v37);
    *a1 = *&v443[0];
    v38 = swift_allocObject();
    *(v38 + 16) = v33;
    *(v38 + 24) = v35;

    v39 = swift_isUniquelyReferenced_nonNull_native();
    *&v443[0] = a1[1];
    a1[1] = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v38, v35, v39);

    a1[1] = *&v443[0];
  }

  v40 = *(a2 + 112);
  v41 = *(a3 + 112);
  v42 = swift_getKeyPath();
  if (v40 != v41)
  {
    v43 = v42;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_SfGMd, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_SfGMR);
    v44 = swift_allocObject();
    *(v44 + 16) = v40;
    *(v44 + 24) = v43;
    swift_retain_n();
    v45 = swift_isUniquelyReferenced_nonNull_native();
    *&v443[0] = *a1;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v44, v43, v45);
    *a1 = *&v443[0];
    v46 = swift_allocObject();
    *(v46 + 16) = v41;
    *(v46 + 24) = v43;

    v47 = swift_isUniquelyReferenced_nonNull_native();
    *&v443[0] = a1[1];
    a1[1] = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v46, v43, v47);

    a1[1] = *&v443[0];
  }

  v48 = *(a2 + 116);
  v49 = *(a3 + 116);
  v50 = swift_getKeyPath();
  if (v48 != v49)
  {
    v51 = v50;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_SfGMd, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_SfGMR);
    v52 = swift_allocObject();
    *(v52 + 16) = v48;
    *(v52 + 24) = v51;
    swift_retain_n();
    v53 = swift_isUniquelyReferenced_nonNull_native();
    *&v443[0] = *a1;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v52, v51, v53);
    *a1 = *&v443[0];
    v54 = swift_allocObject();
    *(v54 + 16) = v49;
    *(v54 + 24) = v51;

    v55 = swift_isUniquelyReferenced_nonNull_native();
    *&v443[0] = a1[1];
    a1[1] = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v54, v51, v55);

    a1[1] = *&v443[0];
  }

  v56 = *(a2 + 148);
  v57 = *(a3 + 148);
  v58 = swift_getKeyPath();
  if (v56 != v57)
  {
    v59 = v58;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_SfGMd, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_SfGMR);
    v60 = swift_allocObject();
    *(v60 + 16) = v56;
    *(v60 + 24) = v59;
    swift_retain_n();
    v61 = swift_isUniquelyReferenced_nonNull_native();
    *&v443[0] = *a1;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v60, v59, v61);
    *a1 = *&v443[0];
    v62 = swift_allocObject();
    *(v62 + 16) = v57;
    *(v62 + 24) = v59;

    v63 = swift_isUniquelyReferenced_nonNull_native();
    *&v443[0] = a1[1];
    a1[1] = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v62, v59, v63);

    a1[1] = *&v443[0];
  }

  v383 = *(a2 + 240);
  v387 = *(a2 + 244);
  v393 = *(a2 + 248);
  v426 = *(a2 + 256);
  v422 = *(a2 + 272);
  v407 = *(a2 + 280);
  v416 = *(a2 + 284);
  v64 = *(a2 + 360);
  v400 = *(a2 + 364);
  v65 = *(a2 + 368);
  v397 = *(a2 + 376);
  v66 = *(a2 + 384);
  v67 = *(a2 + 388);
  v374 = *(a2 + 392);
  v377 = *(a2 + 396);
  v410 = *(a2 + 412);
  v413 = *(a2 + 416);
  v430 = *(a2 + 424);
  v403 = *(a2 + 428);
  v427 = *(a2 + 432);
  v380 = *(a2 + 436);
  v379 = *(a2 + 448);
  v438 = *(a2 + 464);
  v419 = *(a2 + 480);
  v432 = *(a2 + 500);
  v385 = *(a3 + 240);
  v389 = *(a3 + 244);
  v391 = *(a2 + 420);
  v394 = *(a3 + 248);
  v421 = *(a3 + 256);
  v68 = *(a3 + 272);
  v408 = *(a3 + 280);
  v411 = *(a3 + 284);
  v424 = *(a3 + 360);
  v401 = *(a3 + 364);
  v395 = *(a3 + 368);
  v398 = *(a3 + 376);
  v69 = *(a3 + 384);
  v70 = *(a3 + 388);
  v375 = *(a3 + 392);
  v71 = *(a3 + 396);
  v415 = *(a3 + 416);
  v392 = *(a3 + 420);
  v428 = *(a3 + 424);
  v405 = *(a3 + 428);
  v406 = *(a3 + 412);
  v423 = *(a3 + 432);
  v382 = *(a3 + 436);
  v378 = *(a3 + 448);
  v435 = *(a3 + 464);
  v418 = *(a3 + 480);
  v429 = *(a3 + 500);
  v72 = swift_getKeyPath();
  specialized propertyCanAnimate<A, B>(from:to:keyPath:animatableContext:)(v72, a1, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_s5SIMD3VySfGGMd, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_s5SIMD3VySfGGMR, specialized _NativeDictionary.setValue(_:forKey:isUnique:), v426, v421);

  v73 = swift_getKeyPath();
  if (v66 != v69)
  {
    v74 = v73;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_SfGMd, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_SfGMR);
    v75 = swift_allocObject();
    *(v75 + 16) = v66;
    *(v75 + 24) = v74;
    swift_retain_n();
    v76 = swift_isUniquelyReferenced_nonNull_native();
    *&v443[0] = *a1;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v75, v74, v76);
    *a1 = *&v443[0];
    v77 = swift_allocObject();
    *(v77 + 16) = v69;
    *(v77 + 24) = v74;

    v78 = swift_isUniquelyReferenced_nonNull_native();
    *&v443[0] = a1[1];
    a1[1] = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v77, v74, v78);

    a1[1] = *&v443[0];
  }

  v79 = swift_getKeyPath();
  if (v67 != v70)
  {
    v80 = v79;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_SfGMd, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_SfGMR);
    v81 = swift_allocObject();
    *(v81 + 16) = v67;
    *(v81 + 24) = v80;
    swift_retain_n();
    v82 = swift_isUniquelyReferenced_nonNull_native();
    *&v443[0] = *a1;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v81, v80, v82);
    *a1 = *&v443[0];
    v83 = swift_allocObject();
    *(v83 + 16) = v70;
    *(v83 + 24) = v80;

    v84 = swift_isUniquelyReferenced_nonNull_native();
    *&v443[0] = a1[1];
    a1[1] = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v83, v80, v84);

    a1[1] = *&v443[0];
  }

  v85 = swift_getKeyPath();
  if (v374 != v375)
  {
    v86 = v85;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_SfGMd, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_SfGMR);
    v87 = swift_allocObject();
    *(v87 + 16) = v374;
    *(v87 + 24) = v86;
    swift_retain_n();
    v88 = swift_isUniquelyReferenced_nonNull_native();
    *&v443[0] = *a1;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v87, v86, v88);
    *a1 = *&v443[0];
    v89 = swift_allocObject();
    *(v89 + 16) = v375;
    *(v89 + 24) = v86;

    v90 = swift_isUniquelyReferenced_nonNull_native();
    *&v443[0] = a1[1];
    a1[1] = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v89, v86, v90);

    a1[1] = *&v443[0];
  }

  v91 = swift_getKeyPath();
  if (v377 != v71)
  {
    v92 = v91;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_SfGMd, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_SfGMR);
    v93 = swift_allocObject();
    *(v93 + 16) = v377;
    *(v93 + 24) = v92;
    swift_retain_n();
    v94 = swift_isUniquelyReferenced_nonNull_native();
    *&v443[0] = *a1;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v93, v92, v94);
    *a1 = *&v443[0];
    v95 = swift_allocObject();
    *(v95 + 16) = v71;
    *(v95 + 24) = v92;

    v96 = swift_isUniquelyReferenced_nonNull_native();
    *&v443[0] = a1[1];
    a1[1] = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v95, v92, v96);

    a1[1] = *&v443[0];
  }

  v97 = swift_getKeyPath();
  specialized propertyCanAnimate<A, B>(from:to:keyPath:animatableContext:)(v97, a1, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_s5SIMD3VySfGGMd, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_s5SIMD3VySfGGMR, specialized _NativeDictionary.setValue(_:forKey:isUnique:), v379, v378);

  v98 = swift_getKeyPath();
  if (v380 != v382)
  {
    v99 = v98;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_SfGMd, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_SfGMR);
    v100 = swift_allocObject();
    *(v100 + 16) = v380;
    *(v100 + 24) = v99;
    swift_retain_n();
    v101 = swift_isUniquelyReferenced_nonNull_native();
    *&v443[0] = *a1;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v100, v99, v101);
    *a1 = *&v443[0];
    v102 = swift_allocObject();
    *(v102 + 16) = v382;
    *(v102 + 24) = v99;

    v103 = swift_isUniquelyReferenced_nonNull_native();
    *&v443[0] = a1[1];
    a1[1] = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v102, v99, v103);

    a1[1] = *&v443[0];
  }

  v104 = swift_getKeyPath();
  if (v383 != v385)
  {
    v105 = v104;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_SfGMd, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_SfGMR);
    v106 = swift_allocObject();
    *(v106 + 16) = v383;
    *(v106 + 24) = v105;
    swift_retain_n();
    v107 = swift_isUniquelyReferenced_nonNull_native();
    *&v443[0] = *a1;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v106, v105, v107);
    *a1 = *&v443[0];
    v108 = swift_allocObject();
    *(v108 + 16) = v385;
    *(v108 + 24) = v105;

    v109 = swift_isUniquelyReferenced_nonNull_native();
    *&v443[0] = a1[1];
    a1[1] = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v108, v105, v109);

    a1[1] = *&v443[0];
  }

  v110 = swift_getKeyPath();
  if (v387 != v389)
  {
    v111 = v110;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_SfGMd, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_SfGMR);
    v112 = swift_allocObject();
    *(v112 + 16) = v387;
    *(v112 + 24) = v111;
    swift_retain_n();
    v113 = swift_isUniquelyReferenced_nonNull_native();
    *&v443[0] = *a1;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v112, v111, v113);
    *a1 = *&v443[0];
    v114 = swift_allocObject();
    *(v114 + 16) = v389;
    *(v114 + 24) = v111;

    v115 = swift_isUniquelyReferenced_nonNull_native();
    *&v443[0] = a1[1];
    a1[1] = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v114, v111, v115);

    a1[1] = *&v443[0];
  }

  v116 = swift_getKeyPath();
  if (v391 != v392)
  {
    v117 = v116;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_SfGMd, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_SfGMR);
    v118 = swift_allocObject();
    *(v118 + 16) = v391;
    *(v118 + 24) = v117;
    swift_retain_n();
    v119 = swift_isUniquelyReferenced_nonNull_native();
    *&v443[0] = *a1;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v118, v117, v119);
    *a1 = *&v443[0];
    v120 = swift_allocObject();
    *(v120 + 16) = v392;
    *(v120 + 24) = v117;

    v121 = swift_isUniquelyReferenced_nonNull_native();
    *&v443[0] = a1[1];
    a1[1] = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v120, v117, v121);

    a1[1] = *&v443[0];
  }

  v122 = swift_getKeyPath();
  if (v393 != v394)
  {
    v123 = v122;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_SfGMd, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_SfGMR);
    v124 = swift_allocObject();
    *(v124 + 16) = v393;
    *(v124 + 24) = v123;
    swift_retain_n();
    v125 = swift_isUniquelyReferenced_nonNull_native();
    *&v443[0] = *a1;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v124, v123, v125);
    *a1 = *&v443[0];
    v126 = swift_allocObject();
    *(v126 + 16) = v394;
    *(v126 + 24) = v123;

    v127 = swift_isUniquelyReferenced_nonNull_native();
    *&v443[0] = a1[1];
    a1[1] = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v126, v123, v127);

    a1[1] = *&v443[0];
  }

  v128 = swift_getKeyPath();
  if (v65 != v395)
  {
    v129 = v128;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_SdGMd, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_SdGMR);
    v130 = swift_allocObject();
    *(v130 + 16) = v65;
    *(v130 + 24) = v129;
    swift_retain_n();
    v131 = swift_isUniquelyReferenced_nonNull_native();
    *&v443[0] = *a1;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v130, v129, v131);
    *a1 = *&v443[0];
    v132 = swift_allocObject();
    *(v132 + 16) = v395;
    *(v132 + 24) = v129;

    v133 = swift_isUniquelyReferenced_nonNull_native();
    *&v443[0] = a1[1];
    a1[1] = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v132, v129, v133);

    a1[1] = *&v443[0];
  }

  v134 = swift_getKeyPath();
  if (v397 != v398)
  {
    v135 = v134;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_SdGMd, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_SdGMR);
    v136 = swift_allocObject();
    *(v136 + 16) = v397;
    *(v136 + 24) = v135;
    swift_retain_n();
    v137 = swift_isUniquelyReferenced_nonNull_native();
    *&v443[0] = *a1;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v136, v135, v137);
    *a1 = *&v443[0];
    v138 = swift_allocObject();
    *(v138 + 16) = v398;
    *(v138 + 24) = v135;

    v139 = swift_isUniquelyReferenced_nonNull_native();
    *&v443[0] = a1[1];
    a1[1] = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v138, v135, v139);

    a1[1] = *&v443[0];
  }

  v140 = swift_getKeyPath();
  if (v64 != v424)
  {
    v141 = v140;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_SfGMd, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_SfGMR);
    v142 = swift_allocObject();
    *(v142 + 16) = v64;
    *(v142 + 24) = v141;
    swift_retain_n();
    v143 = swift_isUniquelyReferenced_nonNull_native();
    *&v443[0] = *a1;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v142, v141, v143);
    *a1 = *&v443[0];
    v144 = swift_allocObject();
    *(v144 + 16) = v424;
    *(v144 + 24) = v141;

    v145 = swift_isUniquelyReferenced_nonNull_native();
    *&v443[0] = a1[1];
    a1[1] = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v144, v141, v145);

    a1[1] = *&v443[0];
  }

  v146 = swift_getKeyPath();
  if (v400 != v401)
  {
    v147 = v146;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_SfGMd, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_SfGMR);
    v148 = swift_allocObject();
    *(v148 + 16) = v400;
    *(v148 + 24) = v147;
    swift_retain_n();
    v149 = swift_isUniquelyReferenced_nonNull_native();
    *&v443[0] = *a1;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v148, v147, v149);
    *a1 = *&v443[0];
    v150 = swift_allocObject();
    *(v150 + 16) = v401;
    *(v150 + 24) = v147;

    v151 = swift_isUniquelyReferenced_nonNull_native();
    *&v443[0] = a1[1];
    a1[1] = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v150, v147, v151);

    a1[1] = *&v443[0];
  }

  v152 = swift_getKeyPath();
  if (v427 != v423)
  {
    v153 = v152;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_SfGMd, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_SfGMR);
    v154 = swift_allocObject();
    *(v154 + 16) = v427;
    *(v154 + 24) = v153;
    swift_retain_n();
    v155 = swift_isUniquelyReferenced_nonNull_native();
    *&v443[0] = *a1;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v154, v153, v155);
    *a1 = *&v443[0];
    v156 = swift_allocObject();
    *(v156 + 16) = v423;
    *(v156 + 24) = v153;

    v157 = swift_isUniquelyReferenced_nonNull_native();
    *&v443[0] = a1[1];
    a1[1] = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v156, v153, v157);

    a1[1] = *&v443[0];
  }

  v158 = swift_getKeyPath();
  if (v403 != v405)
  {
    v159 = v158;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_SfGMd, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_SfGMR);
    v160 = swift_allocObject();
    *(v160 + 16) = v403;
    *(v160 + 24) = v159;
    swift_retain_n();
    v161 = swift_isUniquelyReferenced_nonNull_native();
    *&v443[0] = *a1;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v160, v159, v161);
    *a1 = *&v443[0];
    v162 = swift_allocObject();
    *(v162 + 16) = v405;
    *(v162 + 24) = v159;

    v163 = swift_isUniquelyReferenced_nonNull_native();
    *&v443[0] = a1[1];
    a1[1] = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v162, v159, v163);

    a1[1] = *&v443[0];
  }

  v164 = swift_getKeyPath();
  if (v430 != v428)
  {
    v165 = v164;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_SfGMd, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_SfGMR);
    v166 = swift_allocObject();
    *(v166 + 16) = v430;
    *(v166 + 24) = v165;
    swift_retain_n();
    v167 = swift_isUniquelyReferenced_nonNull_native();
    *&v443[0] = *a1;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v166, v165, v167);
    *a1 = *&v443[0];
    v168 = swift_allocObject();
    *(v168 + 16) = v428;
    *(v168 + 24) = v165;

    v169 = swift_isUniquelyReferenced_nonNull_native();
    *&v443[0] = a1[1];
    a1[1] = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v168, v165, v169);

    a1[1] = *&v443[0];
  }

  v170 = swift_getKeyPath();
  if (v407 != v408)
  {
    v171 = v170;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_SfGMd, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_SfGMR);
    v172 = swift_allocObject();
    *(v172 + 16) = v407;
    *(v172 + 24) = v171;
    swift_retain_n();
    v173 = swift_isUniquelyReferenced_nonNull_native();
    *&v443[0] = *a1;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v172, v171, v173);
    *a1 = *&v443[0];
    v174 = swift_allocObject();
    *(v174 + 16) = v408;
    *(v174 + 24) = v171;

    v175 = swift_isUniquelyReferenced_nonNull_native();
    *&v443[0] = a1[1];
    a1[1] = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v174, v171, v175);

    a1[1] = *&v443[0];
  }

  v176 = swift_getKeyPath();
  if (v410 != v406)
  {
    v177 = v176;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_SfGMd, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_SfGMR);
    v178 = swift_allocObject();
    *(v178 + 16) = v410;
    *(v178 + 24) = v177;
    swift_retain_n();
    v179 = swift_isUniquelyReferenced_nonNull_native();
    *&v443[0] = *a1;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v178, v177, v179);
    *a1 = *&v443[0];
    v180 = swift_allocObject();
    *(v180 + 16) = v406;
    *(v180 + 24) = v177;

    v181 = swift_isUniquelyReferenced_nonNull_native();
    *&v443[0] = a1[1];
    a1[1] = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v180, v177, v181);

    a1[1] = *&v443[0];
  }

  v182 = swift_getKeyPath();
  if (v413 != v415)
  {
    v183 = v182;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_SfGMd, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_SfGMR);
    v184 = swift_allocObject();
    *(v184 + 16) = v413;
    *(v184 + 24) = v183;
    swift_retain_n();
    v185 = swift_isUniquelyReferenced_nonNull_native();
    *&v443[0] = *a1;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v184, v183, v185);
    *a1 = *&v443[0];
    v186 = swift_allocObject();
    *(v186 + 16) = v415;
    *(v186 + 24) = v183;

    v187 = swift_isUniquelyReferenced_nonNull_native();
    *&v443[0] = a1[1];
    a1[1] = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v186, v183, v187);

    a1[1] = *&v443[0];
  }

  v188 = swift_getKeyPath();
  if (v416 != v411)
  {
    v189 = v188;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_SfGMd, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_SfGMR);
    v190 = swift_allocObject();
    *(v190 + 16) = v416;
    *(v190 + 24) = v189;
    swift_retain_n();
    v191 = swift_isUniquelyReferenced_nonNull_native();
    *&v443[0] = *a1;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v190, v189, v191);
    *a1 = *&v443[0];
    v192 = swift_allocObject();
    *(v192 + 16) = v411;
    *(v192 + 24) = v189;

    v193 = swift_isUniquelyReferenced_nonNull_native();
    *&v443[0] = a1[1];
    a1[1] = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v192, v189, v193);

    a1[1] = *&v443[0];
  }

  v194 = swift_getKeyPath();
  if (v422 != v68)
  {
    v195 = v194;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_SfGMd, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_SfGMR);
    v196 = swift_allocObject();
    *(v196 + 16) = v422;
    *(v196 + 24) = v195;
    swift_retain_n();
    v197 = swift_isUniquelyReferenced_nonNull_native();
    *&v443[0] = *a1;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v196, v195, v197);
    *a1 = *&v443[0];
    v198 = swift_allocObject();
    *(v198 + 16) = v68;
    *(v198 + 24) = v195;

    v199 = swift_isUniquelyReferenced_nonNull_native();
    *&v443[0] = a1[1];
    a1[1] = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v198, v195, v199);

    a1[1] = *&v443[0];
  }

  v200 = swift_getKeyPath();
  if (v432 != v429)
  {
    v201 = v200;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_SfGMd, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_SfGMR);
    v202 = swift_allocObject();
    *(v202 + 16) = v432;
    *(v202 + 24) = v201;
    swift_retain_n();
    v203 = swift_isUniquelyReferenced_nonNull_native();
    *&v443[0] = *a1;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v202, v201, v203);
    *a1 = *&v443[0];
    v204 = swift_allocObject();
    *(v204 + 16) = v429;
    *(v204 + 24) = v201;

    v205 = swift_isUniquelyReferenced_nonNull_native();
    *&v443[0] = a1[1];
    a1[1] = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v204, v201, v205);

    a1[1] = *&v443[0];
  }

  v206 = swift_getKeyPath();
  specialized propertyCanAnimate<A, B>(from:to:keyPath:animatableContext:)(v206, a1, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_s5SIMD3VySfGGMd, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_s5SIMD3VySfGGMR, specialized _NativeDictionary.setValue(_:forKey:isUnique:), v419, v418);

  v207 = swift_getKeyPath();
  if (v438 != v435)
  {
    v208 = v207;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_SfGMd, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_SfGMR);
    v209 = swift_allocObject();
    *(v209 + 16) = v438;
    *(v209 + 24) = v208;
    swift_retain_n();
    v210 = swift_isUniquelyReferenced_nonNull_native();
    *&v443[0] = *a1;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v209, v208, v210);
    *a1 = *&v443[0];
    v211 = swift_allocObject();
    *(v211 + 16) = v435;
    *(v211 + 24) = v208;

    v212 = swift_isUniquelyReferenced_nonNull_native();
    *&v443[0] = a1[1];
    a1[1] = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v211, v208, v212);

    a1[1] = *&v443[0];
  }

  memcpy(__dst, (a2 + 576), 0x141uLL);
  memcpy(v442, (a2 + 576), 0x141uLL);
  result = _s17RealityFoundation24ParticleEmitterComponentV0cD0VSgWOg(v442);
  if (result != 1)
  {
    v214 = *&v442[0];
    v425 = *(v442 + 2);
    v414 = v442[1];
    v215 = *&v442[2];
    v216 = *(&v442[2] + 1);
    v217 = *(&v442[7] + 1);
    v218 = v442[8];
    v220 = v442[9];
    v417 = v220 >> 64;
    v219 = v220;
    v221 = *(&v442[10] + 3);
    v222 = v442[11];
    v223 = *&v442[12];
    v420 = v442[13];
    v224 = *&v442[14];
    v431 = v442[15];
    v225 = *(&v442[16] + 1);
    memcpy(v440, (a3 + 576), 0x141uLL);
    memcpy(v443, (a3 + 576), 0x141uLL);
    result = _s17RealityFoundation24ParticleEmitterComponentV0cD0VSgWOg(v443);
    if (result != 1)
    {
      v226 = *&v443[0];
      v381 = *(v443 + 2);
      v399 = v443[1];
      v409 = *&v443[2];
      v390 = *(&v443[2] + 1);
      v227 = v443[8];
      v229 = v443[9];
      v373 = v229 >> 64;
      v228 = v229;
      v388 = *(&v443[10] + 3);
      v230 = *&v443[11];
      v402 = *(&v443[7] + 2);
      v404 = *(&v443[11] + 2);
      v384 = *(&v443[7] + 3);
      v386 = *(&v443[11] + 3);
      v231 = *&v443[12];
      v376 = v443[13];
      v232 = *&v443[14];
      v396 = v443[15];
      v412 = *(&v443[16] + 1);
      v233 = swift_getKeyPath();
      outlined init with copy of ParticleEmitterComponent.ParticleEmitter?(__dst, v439);
      outlined init with copy of ParticleEmitterComponent.ParticleEmitter?(v440, v439);
      specialized propertyCanAnimate<A, B>(from:to:keyPath:animatableContext:)(v233, a1, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_s5SIMD3VySfGGMd, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_s5SIMD3VySfGGMR, specialized _NativeDictionary.setValue(_:forKey:isUnique:), v414, v399);

      v234 = swift_getKeyPath();
      if (*&v219 != *&v228)
      {
        v235 = v234;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_SfGMd, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_SfGMR);
        v236 = swift_allocObject();
        *(v236 + 16) = v219;
        *(v236 + 24) = v235;
        swift_retain_n();
        v237 = swift_isUniquelyReferenced_nonNull_native();
        v439[0] = *a1;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v236, v235, v237);
        *a1 = v439[0];
        v238 = swift_allocObject();
        *(v238 + 16) = v228;
        *(v238 + 24) = v235;

        v239 = swift_isUniquelyReferenced_nonNull_native();
        v439[0] = a1[1];
        a1[1] = 0x8000000000000000;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v238, v235, v239);

        a1[1] = v439[0];
      }

      v240 = swift_getKeyPath();
      if (*(&v219 + 1) != *(&v228 + 1))
      {
        v241 = v240;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_SfGMd, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_SfGMR);
        v242 = swift_allocObject();
        *(v242 + 16) = HIDWORD(v219);
        *(v242 + 24) = v241;
        swift_retain_n();
        v243 = swift_isUniquelyReferenced_nonNull_native();
        v439[0] = *a1;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v242, v241, v243);
        *a1 = v439[0];
        v244 = swift_allocObject();
        *(v244 + 16) = HIDWORD(v228);
        *(v244 + 24) = v241;

        v245 = swift_isUniquelyReferenced_nonNull_native();
        v439[0] = a1[1];
        a1[1] = 0x8000000000000000;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v244, v241, v245);

        a1[1] = v439[0];
      }

      v246 = swift_getKeyPath();
      if (*&v417 != *&v373)
      {
        v247 = v246;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_SfGMd, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_SfGMR);
        v248 = swift_allocObject();
        *(v248 + 16) = v417;
        *(v248 + 24) = v247;
        swift_retain_n();
        v249 = swift_isUniquelyReferenced_nonNull_native();
        v439[0] = *a1;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v248, v247, v249);
        *a1 = v439[0];
        v250 = swift_allocObject();
        *(v250 + 16) = v373;
        *(v250 + 24) = v247;

        v251 = swift_isUniquelyReferenced_nonNull_native();
        v439[0] = a1[1];
        a1[1] = 0x8000000000000000;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v250, v247, v251);

        a1[1] = v439[0];
      }

      v252 = swift_getKeyPath();
      if (*(&v417 + 1) != *(&v373 + 1))
      {
        v253 = v252;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_SfGMd, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_SfGMR);
        v254 = swift_allocObject();
        *(v254 + 16) = HIDWORD(v417);
        *(v254 + 24) = v253;
        swift_retain_n();
        v255 = swift_isUniquelyReferenced_nonNull_native();
        v439[0] = *a1;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v254, v253, v255);
        *a1 = v439[0];
        v256 = swift_allocObject();
        *(v256 + 16) = HIDWORD(v373);
        *(v256 + 24) = v253;

        v257 = swift_isUniquelyReferenced_nonNull_native();
        v439[0] = a1[1];
        a1[1] = 0x8000000000000000;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v256, v253, v257);

        a1[1] = v439[0];
      }

      v258 = swift_getKeyPath();
      specialized propertyCanAnimate<A, B>(from:to:keyPath:animatableContext:)(v258, a1, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_s5SIMD3VySfGGMd, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_s5SIMD3VySfGGMR, specialized _NativeDictionary.setValue(_:forKey:isUnique:), v420, v376);

      v259 = swift_getKeyPath();
      if (*(&v223 + 1) != *(&v231 + 1))
      {
        v260 = v259;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_SfGMd, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_SfGMR);
        v261 = swift_allocObject();
        *(v261 + 16) = HIDWORD(v223);
        *(v261 + 24) = v260;
        swift_retain_n();
        v262 = swift_isUniquelyReferenced_nonNull_native();
        v439[0] = *a1;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v261, v260, v262);
        *a1 = v439[0];
        v263 = swift_allocObject();
        *(v263 + 16) = HIDWORD(v231);
        *(v263 + 24) = v260;

        v264 = swift_isUniquelyReferenced_nonNull_native();
        v439[0] = a1[1];
        a1[1] = 0x8000000000000000;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v263, v260, v264);

        a1[1] = v439[0];
      }

      v265 = swift_getKeyPath();
      if (*&v214 != *&v226)
      {
        v266 = v265;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_SfGMd, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_SfGMR);
        v267 = swift_allocObject();
        *(v267 + 16) = v214;
        *(v267 + 24) = v266;
        swift_retain_n();
        v268 = swift_isUniquelyReferenced_nonNull_native();
        v439[0] = *a1;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v267, v266, v268);
        *a1 = v439[0];
        v269 = swift_allocObject();
        *(v269 + 16) = v226;
        *(v269 + 24) = v266;

        v270 = swift_isUniquelyReferenced_nonNull_native();
        v439[0] = a1[1];
        a1[1] = 0x8000000000000000;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v269, v266, v270);

        a1[1] = v439[0];
      }

      v271 = swift_getKeyPath();
      if (*(&v214 + 1) != *(&v226 + 1))
      {
        v272 = v271;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_SfGMd, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_SfGMR);
        v273 = swift_allocObject();
        *(v273 + 16) = HIDWORD(v214);
        *(v273 + 24) = v272;
        swift_retain_n();
        v274 = swift_isUniquelyReferenced_nonNull_native();
        v439[0] = *a1;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v273, v272, v274);
        *a1 = v439[0];
        v275 = swift_allocObject();
        *(v275 + 16) = HIDWORD(v226);
        *(v275 + 24) = v272;

        v276 = swift_isUniquelyReferenced_nonNull_native();
        v439[0] = a1[1];
        a1[1] = 0x8000000000000000;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v275, v272, v276);

        a1[1] = v439[0];
      }

      v277 = swift_getKeyPath();
      if (*(&v222 + 1) != *(&v230 + 1))
      {
        v278 = v277;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_SfGMd, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_SfGMR);
        v279 = swift_allocObject();
        *(v279 + 16) = DWORD1(v222);
        *(v279 + 24) = v278;
        swift_retain_n();
        v280 = swift_isUniquelyReferenced_nonNull_native();
        v439[0] = *a1;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v279, v278, v280);
        *a1 = v439[0];
        v281 = swift_allocObject();
        *(v281 + 16) = HIDWORD(v230);
        *(v281 + 24) = v278;

        v282 = swift_isUniquelyReferenced_nonNull_native();
        v439[0] = a1[1];
        a1[1] = 0x8000000000000000;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v281, v278, v282);

        a1[1] = v439[0];
      }

      v283 = swift_getKeyPath();
      if (v425 != v381)
      {
        v284 = v283;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_SfGMd, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_SfGMR);
        v285 = swift_allocObject();
        *(v285 + 16) = v425;
        *(v285 + 24) = v284;
        swift_retain_n();
        v286 = swift_isUniquelyReferenced_nonNull_native();
        v439[0] = *a1;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v285, v284, v286);
        *a1 = v439[0];
        v287 = swift_allocObject();
        *(v287 + 16) = v381;
        *(v287 + 24) = v284;

        v288 = swift_isUniquelyReferenced_nonNull_native();
        v439[0] = a1[1];
        a1[1] = 0x8000000000000000;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v287, v284, v288);

        a1[1] = v439[0];
      }

      v289 = swift_getKeyPath();
      if (*&v218 != *&v227)
      {
        v290 = v289;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_SdGMd, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_SdGMR);
        v291 = swift_allocObject();
        *(v291 + 16) = v218;
        *(v291 + 24) = v290;
        swift_retain_n();
        v292 = swift_isUniquelyReferenced_nonNull_native();
        v439[0] = *a1;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v291, v290, v292);
        *a1 = v439[0];
        v293 = swift_allocObject();
        *(v293 + 16) = v227;
        *(v293 + 24) = v290;

        v294 = swift_isUniquelyReferenced_nonNull_native();
        v439[0] = a1[1];
        a1[1] = 0x8000000000000000;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v293, v290, v294);

        a1[1] = v439[0];
      }

      v295 = swift_getKeyPath();
      if (*(&v218 + 1) != *(&v227 + 1))
      {
        v296 = v295;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_SdGMd, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_SdGMR);
        v297 = swift_allocObject();
        *(v297 + 16) = *(&v218 + 1);
        *(v297 + 24) = v296;
        swift_retain_n();
        v298 = swift_isUniquelyReferenced_nonNull_native();
        v439[0] = *a1;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v297, v296, v298);
        *a1 = v439[0];
        v299 = swift_allocObject();
        *(v299 + 16) = *(&v227 + 1);
        *(v299 + 24) = v296;

        v300 = swift_isUniquelyReferenced_nonNull_native();
        v439[0] = a1[1];
        a1[1] = 0x8000000000000000;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v299, v296, v300);

        a1[1] = v439[0];
      }

      v301 = swift_getKeyPath();
      if (*&v217 != v402)
      {
        v302 = v301;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_SfGMd, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_SfGMR);
        v303 = swift_allocObject();
        *(v303 + 16) = v217;
        *(v303 + 24) = v302;
        swift_retain_n();
        v304 = swift_isUniquelyReferenced_nonNull_native();
        v439[0] = *a1;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v303, v302, v304);
        *a1 = v439[0];
        v305 = swift_allocObject();
        *(v305 + 16) = v402;
        *(v305 + 24) = v302;

        v306 = swift_isUniquelyReferenced_nonNull_native();
        v439[0] = a1[1];
        a1[1] = 0x8000000000000000;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v305, v302, v306);

        a1[1] = v439[0];
      }

      v307 = swift_getKeyPath();
      if (*(&v217 + 1) != v384)
      {
        v308 = v307;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_SfGMd, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_SfGMR);
        v309 = swift_allocObject();
        *(v309 + 16) = HIDWORD(v217);
        *(v309 + 24) = v308;
        swift_retain_n();
        v310 = swift_isUniquelyReferenced_nonNull_native();
        v439[0] = *a1;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v309, v308, v310);
        *a1 = v439[0];
        v311 = swift_allocObject();
        *(v311 + 16) = v384;
        *(v311 + 24) = v308;

        v312 = swift_isUniquelyReferenced_nonNull_native();
        v439[0] = a1[1];
        a1[1] = 0x8000000000000000;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v311, v308, v312);

        a1[1] = v439[0];
      }

      v313 = swift_getKeyPath();
      if (*&v223 != *&v231)
      {
        v314 = v313;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_SfGMd, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_SfGMR);
        v315 = swift_allocObject();
        *(v315 + 16) = v223;
        *(v315 + 24) = v314;
        swift_retain_n();
        v316 = swift_isUniquelyReferenced_nonNull_native();
        v439[0] = *a1;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v315, v314, v316);
        *a1 = v439[0];
        v317 = swift_allocObject();
        *(v317 + 16) = v231;
        *(v317 + 24) = v314;

        v318 = swift_isUniquelyReferenced_nonNull_native();
        v439[0] = a1[1];
        a1[1] = 0x8000000000000000;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v317, v314, v318);

        a1[1] = v439[0];
      }

      v319 = swift_getKeyPath();
      if (*(&v222 + 3) != v386)
      {
        v320 = v319;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_SfGMd, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_SfGMR);
        v321 = swift_allocObject();
        *(v321 + 16) = HIDWORD(v222);
        *(v321 + 24) = v320;
        swift_retain_n();
        v322 = swift_isUniquelyReferenced_nonNull_native();
        v439[0] = *a1;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v321, v320, v322);
        *a1 = v439[0];
        v323 = swift_allocObject();
        *(v323 + 16) = v386;
        *(v323 + 24) = v320;

        v324 = swift_isUniquelyReferenced_nonNull_native();
        v439[0] = a1[1];
        a1[1] = 0x8000000000000000;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v323, v320, v324);

        a1[1] = v439[0];
      }

      v325 = swift_getKeyPath();
      if (*(&v222 + 2) != v404)
      {
        v326 = v325;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_SfGMd, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_SfGMR);
        v327 = swift_allocObject();
        *(v327 + 16) = DWORD2(v222);
        *(v327 + 24) = v326;
        swift_retain_n();
        v328 = swift_isUniquelyReferenced_nonNull_native();
        v439[0] = *a1;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v327, v326, v328);
        *a1 = v439[0];
        v329 = swift_allocObject();
        *(v329 + 16) = v404;
        *(v329 + 24) = v326;

        v330 = swift_isUniquelyReferenced_nonNull_native();
        v439[0] = a1[1];
        a1[1] = 0x8000000000000000;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v329, v326, v330);

        a1[1] = v439[0];
      }

      v331 = swift_getKeyPath();
      if (*&v216 != *&v390)
      {
        v332 = v331;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_SfGMd, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_SfGMR);
        v333 = swift_allocObject();
        *(v333 + 16) = v216;
        *(v333 + 24) = v332;
        swift_retain_n();
        v334 = swift_isUniquelyReferenced_nonNull_native();
        v439[0] = *a1;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v333, v332, v334);
        *a1 = v439[0];
        v335 = swift_allocObject();
        *(v335 + 16) = v390;
        *(v335 + 24) = v332;

        v336 = swift_isUniquelyReferenced_nonNull_native();
        v439[0] = a1[1];
        a1[1] = 0x8000000000000000;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v335, v332, v336);

        a1[1] = v439[0];
      }

      v337 = swift_getKeyPath();
      if (v221 != v388)
      {
        v338 = v337;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_SfGMd, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_SfGMR);
        v339 = swift_allocObject();
        *(v339 + 16) = v221;
        *(v339 + 24) = v338;
        swift_retain_n();
        v340 = swift_isUniquelyReferenced_nonNull_native();
        v439[0] = *a1;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v339, v338, v340);
        *a1 = v439[0];
        v341 = swift_allocObject();
        *(v341 + 16) = v388;
        *(v341 + 24) = v338;

        v342 = swift_isUniquelyReferenced_nonNull_native();
        v439[0] = a1[1];
        a1[1] = 0x8000000000000000;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v341, v338, v342);

        a1[1] = v439[0];
      }

      v343 = swift_getKeyPath();
      if (*&v222 != *&v230)
      {
        v344 = v343;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_SfGMd, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_SfGMR);
        v345 = swift_allocObject();
        *(v345 + 16) = v222;
        *(v345 + 24) = v344;
        swift_retain_n();
        v346 = swift_isUniquelyReferenced_nonNull_native();
        v439[0] = *a1;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v345, v344, v346);
        *a1 = v439[0];
        v347 = swift_allocObject();
        *(v347 + 16) = v230;
        *(v347 + 24) = v344;

        v348 = swift_isUniquelyReferenced_nonNull_native();
        v439[0] = a1[1];
        a1[1] = 0x8000000000000000;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v347, v344, v348);

        a1[1] = v439[0];
      }

      v349 = swift_getKeyPath();
      if (*(&v216 + 1) != *(&v390 + 1))
      {
        v350 = v349;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_SfGMd, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_SfGMR);
        v351 = swift_allocObject();
        *(v351 + 16) = HIDWORD(v216);
        *(v351 + 24) = v350;
        swift_retain_n();
        v352 = swift_isUniquelyReferenced_nonNull_native();
        v439[0] = *a1;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v351, v350, v352);
        *a1 = v439[0];
        v353 = swift_allocObject();
        *(v353 + 16) = HIDWORD(v390);
        *(v353 + 24) = v350;

        v354 = swift_isUniquelyReferenced_nonNull_native();
        v439[0] = a1[1];
        a1[1] = 0x8000000000000000;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v353, v350, v354);

        a1[1] = v439[0];
      }

      v355 = swift_getKeyPath();
      if (v215 != v409)
      {
        v356 = v355;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_SfGMd, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_SfGMR);
        v357 = swift_allocObject();
        *(v357 + 16) = v215;
        *(v357 + 24) = v356;
        swift_retain_n();
        v358 = swift_isUniquelyReferenced_nonNull_native();
        v439[0] = *a1;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v357, v356, v358);
        *a1 = v439[0];
        v359 = swift_allocObject();
        *(v359 + 16) = v409;
        *(v359 + 24) = v356;

        v360 = swift_isUniquelyReferenced_nonNull_native();
        v439[0] = a1[1];
        a1[1] = 0x8000000000000000;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v359, v356, v360);

        a1[1] = v439[0];
      }

      v361 = swift_getKeyPath();
      if (v225 != v412)
      {
        v362 = v361;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_SfGMd, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_SfGMR);
        v363 = swift_allocObject();
        *(v363 + 16) = v225;
        *(v363 + 24) = v362;
        swift_retain_n();
        v364 = swift_isUniquelyReferenced_nonNull_native();
        v439[0] = *a1;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v363, v362, v364);
        *a1 = v439[0];
        v365 = swift_allocObject();
        *(v365 + 16) = v412;
        *(v365 + 24) = v362;

        v366 = swift_isUniquelyReferenced_nonNull_native();
        v439[0] = a1[1];
        a1[1] = 0x8000000000000000;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v365, v362, v366);

        a1[1] = v439[0];
      }

      v367 = swift_getKeyPath();
      specialized propertyCanAnimate<A, B>(from:to:keyPath:animatableContext:)(v367, a1, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_s5SIMD3VySfGGMd, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_s5SIMD3VySfGGMR, specialized _NativeDictionary.setValue(_:forKey:isUnique:), v431, v396);

      v368 = swift_getKeyPath();
      if (v224 != v232)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_SfGMd, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_SfGMR);
        v369 = swift_allocObject();
        *(v369 + 16) = v224;
        *(v369 + 24) = v368;
        swift_retain_n();
        v370 = swift_isUniquelyReferenced_nonNull_native();
        v439[0] = *a1;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v369, v368, v370);
        *a1 = v439[0];
        v371 = swift_allocObject();
        *(v371 + 16) = v232;
        *(v371 + 24) = v368;

        v372 = swift_isUniquelyReferenced_nonNull_native();
        v439[0] = a1[1];
        a1[1] = 0x8000000000000000;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v371, v368, v372);

        a1[1] = v439[0];
      }

      outlined destroy of BodyTrackingComponent?(v440, &_s17RealityFoundation24ParticleEmitterComponentV0cD0VSgMd, &_s17RealityFoundation24ParticleEmitterComponentV0cD0VSgMR);
      outlined destroy of BodyTrackingComponent?(__dst, &_s17RealityFoundation24ParticleEmitterComponentV0cD0VSgMd, &_s17RealityFoundation24ParticleEmitterComponentV0cD0VSgMR);
    }
  }

  return result;
}

uint64_t protocol witness for static _ImplicitlyAnimatableBuiltinComponent.animation(from:to:) in conformance ParticleEmitterComponent(unint64_t *a1, uint64_t *a2, void *__src, const void *a4)
{
  memcpy(__dst, __src, 0x382uLL);
  memcpy(v15, a4, 0x382uLL);
  v7 = MEMORY[0x1E69E7CC0];
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs10AnyKeyPathC_17RealityFoundation07_Proto_C21AnimatableProperty_v1VyAE24ParticleEmitterComponentVGTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs10AnyKeyPathC_17RealityFoundation07_Proto_C21AnimatableProperty_v1VyAE24ParticleEmitterComponentVGTt0g5Tf4g_n(v7);
  v8 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs10AnyKeyPathC_17RealityFoundation07_Proto_C21AnimatableProperty_v1VyAE24ParticleEmitterComponentVGTt0g5Tf4g_n(v7);

  v12 = v8;
  v9 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs10AnyKeyPathC_17RealityFoundation07_Proto_C21AnimatableProperty_v1VyAE24ParticleEmitterComponentVGTt0g5Tf4g_n(v7);

  v13 = v9;
  result = closure #1 in static ParticleEmitterComponent.animation(from:to:)(&v12, __dst, v15);
  v11 = v13;
  *a1 = v12;
  *a2 = v11;
  return result;
}

uint64_t static BillboardComponent.animation(from:to:)(unint64_t *a1, unint64_t *a2, float *a3, float *a4)
{
  v6 = *a3;
  v7 = *a4;
  v8 = MEMORY[0x1E69E7CC0];
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs10AnyKeyPathC_17RealityFoundation07_Proto_C21AnimatableProperty_v1VyAE18BillboardComponentVGTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs10AnyKeyPathC_17RealityFoundation07_Proto_C21AnimatableProperty_v1VyAE18BillboardComponentVGTt0g5Tf4g_n(v8);
  v9 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs10AnyKeyPathC_17RealityFoundation07_Proto_C21AnimatableProperty_v1VyAE18BillboardComponentVGTt0g5Tf4g_n(v8);

  v10 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs10AnyKeyPathC_17RealityFoundation07_Proto_C21AnimatableProperty_v1VyAE18BillboardComponentVGTt0g5Tf4g_n(v8);

  KeyPath = swift_getKeyPath();
  if (v6 == v7)
  {
  }

  else
  {
    v13 = KeyPath;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA18BillboardComponentV_SfGMd, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA18BillboardComponentV_SfGMR);
    v14 = swift_allocObject();
    *(v14 + 16) = v6;
    *(v14 + 24) = v13;
    swift_retain_n();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v14, v13, isUniquelyReferenced_nonNull_native);
    v16 = swift_allocObject();
    *(v16 + 16) = v7;
    *(v16 + 24) = v13;

    v17 = swift_isUniquelyReferenced_nonNull_native();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v16, v13, v17);
  }

  *a1 = v9;
  *a2 = v10;
  return result;
}

double DirectionalLightComponent.lightColor.getter(double a1)
{
  v1 = CGColorRef.components.getter();
  if (!v1)
  {
    return 0.0;
  }

  v2 = 0.0;
  if (*(v1 + 16) == 4)
  {
    v2 = *(v1 + 32);
  }

  return v2;
}

uint64_t static DirectionalLightComponent.animation(from:to:)(unint64_t *a1, uint64_t *a2, float *a3, float *a4)
{
  v6 = a3[2];
  v7 = a4[2];
  v8 = MEMORY[0x1E69E7CC0];
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs10AnyKeyPathC_17RealityFoundation07_Proto_C21AnimatableProperty_v1Vy0F3Kit25DirectionalLightComponentVGTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs10AnyKeyPathC_17RealityFoundation07_Proto_C21AnimatableProperty_v1Vy0F3Kit25DirectionalLightComponentVGTt0g5Tf4g_n(v8);
  v9 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs10AnyKeyPathC_17RealityFoundation07_Proto_C21AnimatableProperty_v1Vy0F3Kit25DirectionalLightComponentVGTt0g5Tf4g_n(v8);

  v13 = v9;
  v10 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs10AnyKeyPathC_17RealityFoundation07_Proto_C21AnimatableProperty_v1Vy0F3Kit25DirectionalLightComponentVGTt0g5Tf4g_n(v8);

  v14 = v10;
  result = closure #1 in static DirectionalLightComponent.animation(from:to:)(&v13, v6, v7);
  v12 = v14;
  *a1 = v13;
  *a2 = v12;
  return result;
}

uint64_t closure #1 in static DirectionalLightComponent.animation(from:to:)(uint64_t *a1, float a2, float a3)
{
  KeyPath = swift_getKeyPath();
  if (a2 == a3)
  {
  }

  else
  {
    v8 = KeyPath;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCy0A3Kit25DirectionalLightComponentV_SfGMd, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCy0A3Kit25DirectionalLightComponentV_SfGMR);
    v9 = swift_allocObject();
    *(v9 + 16) = a2;
    *(v9 + 24) = v8;
    swift_retain_n();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v36 = *a1;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v9, v8, isUniquelyReferenced_nonNull_native);
    *a1 = v36;
    v11 = swift_allocObject();
    *(v11 + 16) = a3;
    *(v11 + 24) = v8;

    v12 = swift_isUniquelyReferenced_nonNull_native();
    v37 = a1[1];
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v11, v8, v12);

    a1[1] = v37;
  }

  v13 = DirectionalLightComponent.lightColor.getter(v7);
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = DirectionalLightComponent.lightColor.getter(v13);
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v27 = swift_getKeyPath();
  if (v13 == v20 && v15 == v22 && v17 == v24 && v19 == v26)
  {
  }

  else
  {
    v29 = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCy0A3Kit25DirectionalLightComponentV_AA010ImplicitlyeK5ColorVGMd, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCy0A3Kit25DirectionalLightComponentV_AA010ImplicitlyeK5ColorVGMR);
    v30 = swift_allocObject();
    *(v30 + 16) = v13;
    *(v30 + 24) = v15;
    *(v30 + 32) = v17;
    *(v30 + 40) = v19;
    *(v30 + 48) = v29;
    swift_retain_n();
    v31 = swift_isUniquelyReferenced_nonNull_native();
    v34 = *a1;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v30, v29, v31);
    *a1 = v34;
    v32 = swift_allocObject();
    *(v32 + 16) = v20;
    *(v32 + 24) = v22;
    *(v32 + 32) = v24;
    *(v32 + 40) = v26;
    *(v32 + 48) = v29;

    v33 = swift_isUniquelyReferenced_nonNull_native();
    v35 = a1[1];
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v32, v29, v33);

    a1[1] = v35;
  }

  return result;
}

uint64_t protocol witness for static _ImplicitlyAnimatableBuiltinComponent.animation(from:to:) in conformance DirectionalLightComponent(unint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 + 8);
  v7 = *(a4 + 8);
  v8 = MEMORY[0x1E69E7CC0];
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs10AnyKeyPathC_17RealityFoundation07_Proto_C21AnimatableProperty_v1Vy0F3Kit25DirectionalLightComponentVGTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs10AnyKeyPathC_17RealityFoundation07_Proto_C21AnimatableProperty_v1Vy0F3Kit25DirectionalLightComponentVGTt0g5Tf4g_n(v8);
  v9 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs10AnyKeyPathC_17RealityFoundation07_Proto_C21AnimatableProperty_v1Vy0F3Kit25DirectionalLightComponentVGTt0g5Tf4g_n(v8);

  v13 = v9;
  v10 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs10AnyKeyPathC_17RealityFoundation07_Proto_C21AnimatableProperty_v1Vy0F3Kit25DirectionalLightComponentVGTt0g5Tf4g_n(v8);

  v14 = v10;
  result = closure #1 in static DirectionalLightComponent.animation(from:to:)(&v13, v6, v7);
  v12 = v14;
  *a1 = v13;
  *a2 = v12;
  return result;
}

uint64_t static PointLightComponent.animation(from:to:)(unint64_t *a1, uint64_t *a2, float *a3, float *a4)
{
  v6 = a3[2];
  v7 = a3[3];
  v8 = a3[4];
  v9 = a4[2];
  v10 = a4[3];
  v11 = a4[4];
  v12 = MEMORY[0x1E69E7CC0];
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs10AnyKeyPathC_17RealityFoundation07_Proto_C21AnimatableProperty_v1Vy0F3Kit19PointLightComponentVGTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs10AnyKeyPathC_17RealityFoundation07_Proto_C21AnimatableProperty_v1Vy0F3Kit19PointLightComponentVGTt0g5Tf4g_n(v12);
  v13 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs10AnyKeyPathC_17RealityFoundation07_Proto_C21AnimatableProperty_v1Vy0F3Kit19PointLightComponentVGTt0g5Tf4g_n(v12);

  v17 = v13;
  v14 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs10AnyKeyPathC_17RealityFoundation07_Proto_C21AnimatableProperty_v1Vy0F3Kit19PointLightComponentVGTt0g5Tf4g_n(v12);

  v18 = v14;
  result = closure #1 in static PointLightComponent.animation(from:to:)(&v17, v6, v7, v8, v9, v10, v11);
  v16 = v18;
  *a1 = v17;
  *a2 = v16;
  return result;
}

uint64_t closure #1 in static PointLightComponent.animation(from:to:)(uint64_t *a1, float a2, float a3, float a4, float a5, float a6, float a7)
{
  KeyPath = swift_getKeyPath();
  if (a2 == a5)
  {
  }

  else
  {
    v15 = KeyPath;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCy0A3Kit19PointLightComponentV_SfGMd, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCy0A3Kit19PointLightComponentV_SfGMR);
    v16 = swift_allocObject();
    *(v16 + 16) = a2;
    *(v16 + 24) = v15;
    swift_retain_n();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v56 = *a1;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v16, v15, isUniquelyReferenced_nonNull_native);
    *a1 = v56;
    v18 = swift_allocObject();
    *(v18 + 16) = a5;
    *(v18 + 24) = v15;

    v19 = swift_isUniquelyReferenced_nonNull_native();
    v57 = a1[1];
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v18, v15, v19);

    a1[1] = v57;
  }

  v20 = swift_getKeyPath();
  if (a4 == a7)
  {
  }

  else
  {
    v21 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCy0A3Kit19PointLightComponentV_SfGMd, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCy0A3Kit19PointLightComponentV_SfGMR);
    v22 = swift_allocObject();
    *(v22 + 16) = a4;
    *(v22 + 24) = v21;
    swift_retain_n();
    v23 = swift_isUniquelyReferenced_nonNull_native();
    v58 = *a1;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v22, v21, v23);
    *a1 = v58;
    v24 = swift_allocObject();
    *(v24 + 16) = a7;
    *(v24 + 24) = v21;

    v25 = swift_isUniquelyReferenced_nonNull_native();
    v59 = a1[1];
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v24, v21, v25);

    a1[1] = v59;
  }

  v26 = swift_getKeyPath();
  if (a3 == a6)
  {
  }

  else
  {
    v28 = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCy0A3Kit19PointLightComponentV_SfGMd, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCy0A3Kit19PointLightComponentV_SfGMR);
    v29 = swift_allocObject();
    *(v29 + 16) = a3;
    *(v29 + 24) = v28;
    swift_retain_n();
    v30 = swift_isUniquelyReferenced_nonNull_native();
    v60 = *a1;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v29, v28, v30);
    *a1 = v60;
    v31 = swift_allocObject();
    *(v31 + 16) = a6;
    *(v31 + 24) = v28;

    v32 = swift_isUniquelyReferenced_nonNull_native();
    v61 = a1[1];
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v31, v28, v32);

    a1[1] = v61;
  }

  v33 = DirectionalLightComponent.lightColor.getter(v27);
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v40 = DirectionalLightComponent.lightColor.getter(v33);
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v47 = swift_getKeyPath();
  if (v33 == v40 && v35 == v42 && v37 == v44 && v39 == v46)
  {
  }

  else
  {
    v49 = v47;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCy0A3Kit19PointLightComponentV_AA010ImplicitlyeK5ColorVGMd, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCy0A3Kit19PointLightComponentV_AA010ImplicitlyeK5ColorVGMR);
    v50 = swift_allocObject();
    *(v50 + 16) = v33;
    *(v50 + 24) = v35;
    *(v50 + 32) = v37;
    *(v50 + 40) = v39;
    *(v50 + 48) = v49;
    swift_retain_n();
    v51 = swift_isUniquelyReferenced_nonNull_native();
    v54 = *a1;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v50, v49, v51);
    *a1 = v54;
    v52 = swift_allocObject();
    *(v52 + 16) = v40;
    *(v52 + 24) = v42;
    *(v52 + 32) = v44;
    *(v52 + 40) = v46;
    *(v52 + 48) = v49;

    v53 = swift_isUniquelyReferenced_nonNull_native();
    v55 = a1[1];
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v52, v49, v53);

    a1[1] = v55;
  }

  return result;
}

uint64_t protocol witness for static _ImplicitlyAnimatableBuiltinComponent.animation(from:to:) in conformance PointLightComponent(unint64_t *a1, uint64_t *a2, float *a3, float *a4)
{
  v6 = a3[2];
  v7 = a3[3];
  v8 = a3[4];
  v9 = a4[2];
  v10 = a4[3];
  v11 = a4[4];
  v12 = MEMORY[0x1E69E7CC0];
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs10AnyKeyPathC_17RealityFoundation07_Proto_C21AnimatableProperty_v1Vy0F3Kit19PointLightComponentVGTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs10AnyKeyPathC_17RealityFoundation07_Proto_C21AnimatableProperty_v1Vy0F3Kit19PointLightComponentVGTt0g5Tf4g_n(v12);
  v13 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs10AnyKeyPathC_17RealityFoundation07_Proto_C21AnimatableProperty_v1Vy0F3Kit19PointLightComponentVGTt0g5Tf4g_n(v12);

  v17 = v13;
  v14 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs10AnyKeyPathC_17RealityFoundation07_Proto_C21AnimatableProperty_v1Vy0F3Kit19PointLightComponentVGTt0g5Tf4g_n(v12);

  v18 = v14;
  result = closure #1 in static PointLightComponent.animation(from:to:)(&v17, v6, v7, v8, v9, v10, v11);
  v16 = v18;
  *a1 = v17;
  *a2 = v16;
  return result;
}

uint64_t static SpotLightComponent.animation(from:to:)(unint64_t *a1, uint64_t *a2, _OWORD *a3, _OWORD *a4)
{
  *v13 = *a3;
  *&v13[3] = *(a3 + 12);
  *v14 = *a4;
  *&v14[3] = *(a4 + 12);
  v6 = MEMORY[0x1E69E7CC0];
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs10AnyKeyPathC_17RealityFoundation07_Proto_C21AnimatableProperty_v1Vy0F3Kit18SpotLightComponentVGTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs10AnyKeyPathC_17RealityFoundation07_Proto_C21AnimatableProperty_v1Vy0F3Kit18SpotLightComponentVGTt0g5Tf4g_n(v6);
  v7 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs10AnyKeyPathC_17RealityFoundation07_Proto_C21AnimatableProperty_v1Vy0F3Kit18SpotLightComponentVGTt0g5Tf4g_n(v6);

  v11 = v7;
  v8 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs10AnyKeyPathC_17RealityFoundation07_Proto_C21AnimatableProperty_v1Vy0F3Kit18SpotLightComponentVGTt0g5Tf4g_n(v6);

  v12 = v8;
  result = closure #1 in static SpotLightComponent.animation(from:to:)(&v11, v13, v14);
  v10 = v12;
  *a1 = v11;
  *a2 = v10;
  return result;
}

uint64_t closure #1 in static SpotLightComponent.animation(from:to:)(uint64_t *a1, float *a2, float *a3)
{
  v6 = a2[2];
  v7 = a3[2];
  KeyPath = swift_getKeyPath();
  if (v6 == v7)
  {
  }

  else
  {
    v9 = KeyPath;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCy0A3Kit18SpotLightComponentV_SfGMd, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCy0A3Kit18SpotLightComponentV_SfGMR);
    v10 = swift_allocObject();
    *(v10 + 16) = v6;
    *(v10 + 24) = v9;
    swift_retain_n();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v68 = *a1;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v10, v9, isUniquelyReferenced_nonNull_native);
    *a1 = v68;
    v12 = swift_allocObject();
    *(v12 + 16) = v7;
    *(v12 + 24) = v9;

    v13 = swift_isUniquelyReferenced_nonNull_native();
    v69 = a1[1];
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v12, v9, v13);

    a1[1] = v69;
  }

  v14 = a2[3];
  v15 = a3[3];
  v16 = swift_getKeyPath();
  if (v14 == v15)
  {
  }

  else
  {
    v17 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCy0A3Kit18SpotLightComponentV_SfGMd, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCy0A3Kit18SpotLightComponentV_SfGMR);
    v18 = swift_allocObject();
    *(v18 + 16) = v14;
    *(v18 + 24) = v17;
    swift_retain_n();
    v19 = swift_isUniquelyReferenced_nonNull_native();
    v70 = *a1;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v18, v17, v19);
    *a1 = v70;
    v20 = swift_allocObject();
    *(v20 + 16) = v15;
    *(v20 + 24) = v17;

    v21 = swift_isUniquelyReferenced_nonNull_native();
    v71 = a1[1];
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v20, v17, v21);

    a1[1] = v71;
  }

  v22 = a2[4];
  v23 = a3[4];
  v24 = swift_getKeyPath();
  if (v22 == v23)
  {
  }

  else
  {
    v25 = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCy0A3Kit18SpotLightComponentV_SfGMd, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCy0A3Kit18SpotLightComponentV_SfGMR);
    v26 = swift_allocObject();
    *(v26 + 16) = v22;
    *(v26 + 24) = v25;
    swift_retain_n();
    v27 = swift_isUniquelyReferenced_nonNull_native();
    v72 = *a1;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v26, v25, v27);
    *a1 = v72;
    v28 = swift_allocObject();
    *(v28 + 16) = v23;
    *(v28 + 24) = v25;

    v29 = swift_isUniquelyReferenced_nonNull_native();
    v73 = a1[1];
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v28, v25, v29);

    a1[1] = v73;
  }

  v30 = a2[5];
  v31 = a3[5];
  v32 = swift_getKeyPath();
  if (v30 == v31)
  {
  }

  else
  {
    v33 = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCy0A3Kit18SpotLightComponentV_SfGMd, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCy0A3Kit18SpotLightComponentV_SfGMR);
    v34 = swift_allocObject();
    *(v34 + 16) = v30;
    *(v34 + 24) = v33;
    swift_retain_n();
    v35 = swift_isUniquelyReferenced_nonNull_native();
    v74 = *a1;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v34, v33, v35);
    *a1 = v74;
    v36 = swift_allocObject();
    *(v36 + 16) = v31;
    *(v36 + 24) = v33;

    v37 = swift_isUniquelyReferenced_nonNull_native();
    v75 = a1[1];
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v36, v33, v37);

    a1[1] = v75;
  }

  v38 = a2[6];
  v39 = a3[6];
  v40 = swift_getKeyPath();
  if (v38 == v39)
  {
  }

  else
  {
    v42 = v40;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCy0A3Kit18SpotLightComponentV_SfGMd, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCy0A3Kit18SpotLightComponentV_SfGMR);
    v43 = swift_allocObject();
    *(v43 + 16) = v38;
    *(v43 + 24) = v42;
    swift_retain_n();
    v44 = swift_isUniquelyReferenced_nonNull_native();
    v76 = *a1;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v43, v42, v44);
    *a1 = v76;
    v45 = swift_allocObject();
    *(v45 + 16) = v39;
    *(v45 + 24) = v42;

    v46 = swift_isUniquelyReferenced_nonNull_native();
    v77 = a1[1];
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v45, v42, v46);

    a1[1] = v77;
  }

  v47 = DirectionalLightComponent.lightColor.getter(v41);
  v49 = v48;
  v51 = v50;
  v53 = v52;
  v54 = DirectionalLightComponent.lightColor.getter(v47);
  v56 = v55;
  v58 = v57;
  v60 = v59;
  v61 = swift_getKeyPath();
  if (v47 == v54 && v49 == v56 && v51 == v58 && v53 == v60)
  {
  }

  else
  {
    v63 = v61;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCy0A3Kit18SpotLightComponentV_AA010ImplicitlyeK5ColorVGMd, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCy0A3Kit18SpotLightComponentV_AA010ImplicitlyeK5ColorVGMR);
    v64 = swift_allocObject();
    *(v64 + 16) = v47;
    *(v64 + 24) = v49;
    *(v64 + 32) = v51;
    *(v64 + 40) = v53;
    *(v64 + 48) = v63;
    swift_retain_n();
    v65 = swift_isUniquelyReferenced_nonNull_native();
    v78 = *a1;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v64, v63, v65);
    *a1 = v78;
    v66 = swift_allocObject();
    *(v66 + 16) = v54;
    *(v66 + 24) = v56;
    *(v66 + 32) = v58;
    *(v66 + 40) = v60;
    *(v66 + 48) = v63;

    v67 = swift_isUniquelyReferenced_nonNull_native();
    v79 = a1[1];
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v66, v63, v67);

    a1[1] = v79;
  }

  return result;
}

uint64_t protocol witness for static _ImplicitlyAnimatableBuiltinComponent.animation(from:to:) in conformance SpotLightComponent(unint64_t *a1, uint64_t *a2, _OWORD *a3, _OWORD *a4)
{
  v13[0] = *a3;
  *(v13 + 12) = *(a3 + 12);
  v14[0] = *a4;
  *(v14 + 12) = *(a4 + 12);
  v6 = MEMORY[0x1E69E7CC0];
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs10AnyKeyPathC_17RealityFoundation07_Proto_C21AnimatableProperty_v1Vy0F3Kit18SpotLightComponentVGTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs10AnyKeyPathC_17RealityFoundation07_Proto_C21AnimatableProperty_v1Vy0F3Kit18SpotLightComponentVGTt0g5Tf4g_n(v6);
  v7 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs10AnyKeyPathC_17RealityFoundation07_Proto_C21AnimatableProperty_v1Vy0F3Kit18SpotLightComponentVGTt0g5Tf4g_n(v6);

  v11 = v7;
  v8 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs10AnyKeyPathC_17RealityFoundation07_Proto_C21AnimatableProperty_v1Vy0F3Kit18SpotLightComponentVGTt0g5Tf4g_n(v6);

  v12 = v8;
  result = closure #1 in static SpotLightComponent.animation(from:to:)(&v11, v13, v14);
  v10 = v12;
  *a1 = v11;
  *a2 = v10;
  return result;
}

uint64_t one-time initialization function for $current()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss9TaskLocalCy17RealityFoundation20EntityChangeModifier_pSgGMd, &_ss9TaskLocalCy17RealityFoundation20EntityChangeModifier_pSgGMR);
  swift_allocObject();
  result = TaskLocal.init(wrappedValue:)();
  static ImplicitAnimationStack.$current = result;
  return result;
}

uint64_t static ImplicitAnimationStack.withModifier<A>(_:operation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (one-time initialization token for $current != -1)
  {
    swift_once();
  }

  swift_unknownObjectRetain();
  TaskLocal.withValue<A>(_:operation:file:line:)();
  return swift_unknownObjectRelease();
}

void (*Entity.ComponentSet.subscript.modify(void *a1, uint64_t a2, ValueMetadata *a3, uint64_t a4))(uint64_t **a1, char a2)
{
  v9 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x40uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[2] = a4;
  v10[3] = v4;
  *v10 = a2;
  v10[1] = a3;
  v12 = type metadata accessor for Optional();
  v11[4] = v12;
  v13 = *(v12 - 8);
  v11[5] = v13;
  v14 = *(v13 + 64);
  if (v9)
  {
    v11[6] = swift_coroFrameAlloc();
    v15 = swift_coroFrameAlloc();
  }

  else
  {
    v11[6] = malloc(*(v13 + 64));
    v15 = malloc(v14);
  }

  v11[7] = v15;
  Entity.ComponentSet.subscript.getter(a3, *(a4 + 8), v15);
  return Entity.ComponentSet.subscript.modify;
}

{
  v8 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(0x38uLL);
  }

  v10 = v9;
  *a1 = v9;
  v9[1] = a4;
  v9[2] = v4;
  *v9 = a3;
  v11 = type metadata accessor for Optional();
  v10[3] = v11;
  v12 = *(v11 - 8);
  v10[4] = v12;
  v13 = *(v12 + 64);
  if (v8)
  {
    v10[5] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v10[5] = malloc(*(v12 + 64));
    v14 = malloc(v13);
  }

  v15 = v14;
  v10[6] = v14;

  Entity.ComponentSet.doGet<A>(_:borrowStrongReference:)(a3, 1, a3, a4, v15);

  return Entity.ComponentSet.subscript.modify;
}

void Entity.ComponentSet.subscript.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[6];
  v4 = (*a1)[7];
  if (a2)
  {
    v5 = *(v2 + 32);
    v6 = *(v2 + 40);
    v7 = *(v2 + 16);
    v9 = *v2;
    v8 = *(v2 + 8);
    (*(v6 + 16))((*a1)[6], v4, v5);
    Entity.ComponentSet.subscript.setter(v3, v9, v8, v7);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    Entity.ComponentSet.subscript.setter((*a1)[7], *v2, *(v2 + 8), *(v2 + 16));
  }

  free(v4);
  free(v3);

  free(v2);
}

{
  v2 = *a1;
  v3 = (*a1)[5];
  v4 = (*a1)[6];
  v5 = (*a1)[3];
  v6 = (*a1)[4];
  if (a2)
  {
    (*(v6 + 8))((*a1)[6], v5);
  }

  else
  {
    v7 = v2[1];
    v8 = *v2;
    (*(v6 + 16))(v3, v4, v5);

    Entity.ComponentSet.doSet<A>(_:newValue:returnStrongReference:)(v8, v3, 1, v8, v7);
    v9 = *(v6 + 8);
    v9(v3, v5);

    v9(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

{
  v2 = *a1;
  v3 = (*a1)[5];
  v4 = (*a1)[6];
  v5 = (*a1)[4];
  v6 = (*a1)[1];
  v7 = (*a1)[2];
  v8 = **a1;
  if (a2)
  {
    (*(v5 + 16))((*a1)[5], v4, v6);
    specialized Entity.ComponentSet.subscript.setter(v3, v8, v6, v7);
    v9 = *(v5 + 8);
    v9(v3, v6);
    v9(v4, v6);
  }

  else
  {
    specialized Entity.ComponentSet.subscript.setter((*a1)[6], v8, v6, v7);
    (*(v5 + 8))(v4, v6);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t Entity.Observable.Components.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return Entity.Observable.Components.subscript.getter(a1, a2, *(a3 + 8));
}

{
  return Entity.Observable.Components.subscript.getter(a2, a2, *(a3 + 8));
}

uint64_t Entity.Observable.Components.subscript.setter(uint64_t a1, uint64_t a2, ValueMetadata *a3, uint64_t a4)
{
  specialized Entity.Observable.Components.subscript.setter(a1, a2, a3, a4);
  v5 = type metadata accessor for Optional();
  v6 = *(*(v5 - 8) + 8);

  return v6(a1, v5);
}

{
  specialized Entity.Observable.Components.subscript.setter(a1, a3, a4);
  v5 = type metadata accessor for Optional();
  v6 = *(*(v5 - 8) + 8);

  return v6(a1, v5);
}

void (*Entity.Observable.Components.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t **a1, char a2)
{
  v9 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x40uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[2] = a4;
  v10[3] = v4;
  *v10 = a2;
  v10[1] = a3;
  v12 = type metadata accessor for Optional();
  v11[4] = v12;
  v13 = *(v12 - 8);
  v11[5] = v13;
  v14 = *(v13 + 64);
  if (v9)
  {
    v11[6] = swift_coroFrameAlloc();
    v15 = swift_coroFrameAlloc();
  }

  else
  {
    v11[6] = malloc(*(v13 + 64));
    v15 = malloc(v14);
  }

  v11[7] = v15;
  Entity.Observable.Components.subscript.getter(a2, a3, *(a4 + 8));
  return Entity.Observable.Components.subscript.modify;
}

void Entity.Observable.Components.subscript.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[6];
  v4 = (*a1)[7];
  v5 = (*a1)[4];
  v6 = (*a1)[5];
  v7 = (*a1)[2];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    (*(v6 + 16))((*a1)[6], v4, v5);
    specialized Entity.Observable.Components.subscript.setter(v3, v9, v8, v7);
    v10 = *(v6 + 8);
    v10(v3, v5);
    v10(v4, v5);
  }

  else
  {
    specialized Entity.Observable.Components.subscript.setter((*a1)[7], v9, v8, v7);
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

{
  v2 = *a1;
  v3 = (*a1)[5];
  v4 = (*a1)[6];
  v5 = (*a1)[3];
  v6 = (*a1)[4];
  v7 = (*a1)[1];
  v8 = **a1;
  if (a2)
  {
    (*(v6 + 16))((*a1)[5], v4, v5);
    specialized Entity.Observable.Components.subscript.setter(v3, v8, v7);
    v9 = *(v6 + 8);
    v9(v3, v5);
    v9(v4, v5);
  }

  else
  {
    specialized Entity.Observable.Components.subscript.setter((*a1)[6], v8, v7);
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

{
  v2 = *a1;
  v3 = (*a1)[6];
  v4 = (*a1)[7];
  v5 = (*a1)[4];
  v6 = (*a1)[5];
  v7 = (*a1)[2];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    (*(v6 + 16))((*a1)[6], v4, v5);
    specialized Entity.Observable.Components.subscript.setter(v3, v9, v8, v7);
    v10 = *(v6 + 8);
    v10(v3, v5);
    v10(v4, v5);
  }

  else
  {
    specialized Entity.Observable.Components.subscript.setter((*a1)[7], v9, v8, v7);
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

void (*Entity.Observable.Components.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(ValueMetadata ***a1, char a2)
{
  v8 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(0x38uLL);
  }

  v10 = v9;
  *a1 = v9;
  v9[1] = a4;
  v9[2] = v4;
  *v9 = a3;
  v11 = type metadata accessor for Optional();
  v10[3] = v11;
  v12 = *(v11 - 8);
  v10[4] = v12;
  v13 = *(v12 + 64);
  if (v8)
  {
    v10[5] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v10[5] = malloc(*(v12 + 64));
    v14 = malloc(v13);
  }

  v10[6] = v14;
  Entity.Observable.Components.subscript.getter(a3, a3, *(a4 + 8));
  return Entity.Observable.Components.subscript.modify;
}

void Entity.Observable.Components.subscript.modify(ValueMetadata ***a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v4 = (*a1)[6];
  v5 = (*a1)[3];
  v6 = (*a1)[4];
  v7 = (*a1)[1];
  v8 = **a1;
  if (a2)
  {
    (*(v6 + 16))((*a1)[5], v4, v5);
    specialized Entity.Observable.Components.subscript.setter(v3, v8, v7);
    v9 = *(v6 + 8);
    v9(v3, v5);
    v9(v4, v5);
  }

  else
  {
    specialized Entity.Observable.Components.subscript.setter((*a1)[6], v8, v7);
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

unint64_t protocol witness for static _ImplicitlyAnimatableBuiltinComponent.animation(from:to:) in conformance AmbientAudioComponent(unint64_t *a1, unint64_t *a2)
{
  v3 = MEMORY[0x1E69E7CC0];
  *a1 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs10AnyKeyPathC_17RealityFoundation07_Proto_C21AnimatableProperty_v1VyAE21AmbientAudioComponentVGTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  result = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs10AnyKeyPathC_17RealityFoundation07_Proto_C21AnimatableProperty_v1VyAE21AmbientAudioComponentVGTt0g5Tf4g_n(v3);
  *a2 = result;
  return result;
}

unint64_t protocol witness for static _ImplicitlyAnimatableBuiltinComponent.animation(from:to:) in conformance ChannelAudioComponent(unint64_t *a1, unint64_t *a2)
{
  v3 = MEMORY[0x1E69E7CC0];
  *a1 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs10AnyKeyPathC_17RealityFoundation07_Proto_C21AnimatableProperty_v1VyAE21ChannelAudioComponentVGTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  result = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs10AnyKeyPathC_17RealityFoundation07_Proto_C21AnimatableProperty_v1VyAE21ChannelAudioComponentVGTt0g5Tf4g_n(v3);
  *a2 = result;
  return result;
}

unint64_t protocol witness for static _ImplicitlyAnimatableBuiltinComponent.animation(from:to:) in conformance SpatialAudioComponent(unint64_t *a1, unint64_t *a2)
{
  v3 = MEMORY[0x1E69E7CC0];
  *a1 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs10AnyKeyPathC_17RealityFoundation07_Proto_C21AnimatableProperty_v1VyAE21SpatialAudioComponentVGTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  result = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs10AnyKeyPathC_17RealityFoundation07_Proto_C21AnimatableProperty_v1VyAE21SpatialAudioComponentVGTt0g5Tf4g_n(v3);
  *a2 = result;
  return result;
}

uint64_t specialized static PhysicallyBasedMaterial.SheenColor.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v5 = *(a1 + 8);
  v6 = a2[1];
  v8 = a2[2];
  v7 = a2[3];
  v16 = *(a2 + 8);
  type metadata accessor for CGColorRef(0);
  lazy protocol witness table accessor for type CGColorRef and conformance CGColorRef();
  if ((static _CFObject.== infix(_:_:)() & 1) == 0)
  {
    v12 = 0;
    return v12 & 1;
  }

  if (!v3)
  {
    outlined copy of MaterialParameters.Texture?(v2, 0);
    if (!v8)
    {
      outlined copy of MaterialParameters.Texture?(v6, 0);
      outlined consume of MaterialParameters.Texture?(v2, 0);
      v12 = 1;
      return v12 & 1;
    }

    v9 = v8;
    outlined copy of MaterialParameters.Texture?(v6, v8);
    goto LABEL_9;
  }

  v19[0] = v2;
  v19[1] = v3;
  v19[2] = v4;
  v20 = v5;
  v9 = v8;
  if (!v8)
  {
    outlined copy of MaterialParameters.Texture?(v2, v3);
    outlined copy of MaterialParameters.Texture?(v6, 0);
    outlined copy of MaterialParameters.Texture?(v2, v3);

LABEL_9:
    outlined consume of MaterialParameters.Texture?(v2, v3);
    outlined consume of MaterialParameters.Texture?(v6, v9);
    v12 = 0;
    return v12 & 1;
  }

  v17[0] = v6;
  v17[1] = v8;
  v17[2] = v7;
  v18 = v16;
  v10 = v3;
  outlined copy of MaterialParameters.Texture?(v2, v3);
  outlined copy of MaterialParameters.Texture?(v6, v9);
  v11 = outlined copy of MaterialParameters.Texture?(v2, v3);
  v12 = specialized static MaterialParameters.Texture.== infix(_:_:)(v19, v17, *&v11);
  v13 = v17[0];

  v14 = v19[0];

  outlined consume of MaterialParameters.Texture?(v2, v10);
  return v12 & 1;
}

double simd_inverse(float32x4_t a1)
{
  v1 = vmulq_f32(a1, xmmword_1C1899C90);
  v2 = vmulq_f32(a1, a1);
  *v2.i8 = vadd_f32(*v2.i8, *&vextq_s8(v2, v2, 8uLL));
  v2.i32[0] = vadd_f32(*v2.i8, vdup_lane_s32(*v2.i8, 1)).u32[0];
  v3 = vrecpe_f32(v2.u32[0]);
  v4 = vmul_f32(v3, vrecps_f32(v2.u32[0], v3));
  *&result = vmulq_n_f32(v1, vmul_f32(v4, vrecps_f32(v2.u32[0], v4)).f32[0]).u64[0];
  return result;
}

double simd_mul(float32x4_t a1, float32x4_t a2)
{
  v2 = vnegq_f32(a2);
  v3 = vtrn2q_s32(a2, vtrn1q_s32(a2, v2));
  v4 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(a2, v2, 8uLL), *a1.f32, 1), vextq_s8(v3, v3, 8uLL), a1.f32[0]);
  v5 = vrev64q_s32(a2);
  v5.i32[0] = v2.i32[1];
  v5.i32[3] = v2.i32[2];
  *&result = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(a2, a1, 3), v5, a1, 2), v4).u64[0];
  return result;
}

uint64_t specialized Entity.Observable.Components.subscript.setter(uint64_t a1, uint64_t a2, ValueMetadata *a3, uint64_t a4)
{
  v9 = type metadata accessor for Optional();
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v17 - v11;
  v13 = *v4;
  (*(v14 + 16))(&v17 - v11, a1, v10);
  v18 = v13;

  Entity.ComponentSet.subscript.setter(v12, a2, a3, a4);
  v15 = *(v18 + 16);

  if (v15 != *(v13 + 16))
  {
    __break(1u);
  }

  return result;
}

uint64_t specialized Entity.ComponentSet.subscript.setter(uint64_t a1, ValueMetadata *a2, uint64_t a3)
{
  v6 = type metadata accessor for Optional();
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - v8;
  (*(v10 + 16))(&v12 - v8, a1, v7);
  return Entity.ComponentSet.subscript.setter(v9, a2, a2, a3);
}

uint64_t specialized Entity.Observable.Components.subscript.setter(uint64_t a1, ValueMetadata *a2, uint64_t a3)
{
  v7 = *v3;
  v10 = *v3;

  specialized Entity.ComponentSet.subscript.setter(a1, a2, a3);
  v8 = *(v10 + 16);

  if (v8 != *(v7 + 16))
  {
    __break(1u);
  }

  return result;
}

uint64_t type metadata instantiation function for _Proto_AnyAnimatableProperty_v1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t type metadata completion function for _Proto_AnyAnimatableProperty_v1.PropertyStorage(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t type metadata instantiation function for ComponentAnimatableData(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t type metadata instantiation function for ImplicitAnimatableContext(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t _s17RealityFoundation24ParticleEmitterComponentV0cD0VSgWOg(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t outlined init with copy of ParticleEmitterComponent.ParticleEmitter?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation24ParticleEmitterComponentV0cD0VSgMd, &_s17RealityFoundation24ParticleEmitterComponentV0cD0VSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t keypath_set_246Tm(float *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, float))
{
  v6 = *a3;
  v7 = a3[1];
  v8 = *a1;

  return a5(v6, v7, v8);
}

uint64_t keypath_set_300Tm(double *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, double))
{
  v6 = *a3;
  v7 = a3[1];
  v8 = *a1;

  return a5(v6, v7, v8);
}

unint64_t lazy protocol witness table accessor for type CustomMaterial.EmissiveColor and conformance CustomMaterial.EmissiveColor()
{
  result = lazy protocol witness table cache variable for type CustomMaterial.EmissiveColor and conformance CustomMaterial.EmissiveColor;
  if (!lazy protocol witness table cache variable for type CustomMaterial.EmissiveColor and conformance CustomMaterial.EmissiveColor)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for CustomMaterial.EmissiveColor, &type metadata for CustomMaterial.EmissiveColor, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type CustomMaterial.EmissiveColor and conformance CustomMaterial.EmissiveColor);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CustomMaterial.BaseColor and conformance CustomMaterial.BaseColor()
{
  result = lazy protocol witness table cache variable for type CustomMaterial.BaseColor and conformance CustomMaterial.BaseColor;
  if (!lazy protocol witness table cache variable for type CustomMaterial.BaseColor and conformance CustomMaterial.BaseColor)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for CustomMaterial.BaseColor, &type metadata for CustomMaterial.BaseColor, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type CustomMaterial.BaseColor and conformance CustomMaterial.BaseColor);
  }

  return result;
}

uint64_t AudioGeneratorConfiguration.init(layoutTag:mixGroupName:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = 48000;
  *(a4 + 4) = result;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  return result;
}

uint64_t AudioGeneratorConfiguration.mixGroupName.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

void AudioGeneratorConfiguration.mixGroupName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
}

uint64_t ModelSortGroup.init(depthPass:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = *a1;
  *(a2 + 1) = 3;
  type metadata accessor for ModelSortGroup.SortGroupRef();
  v3 = swift_allocObject();
  result = RECreateMeshSortGroup();
  *(v3 + 16) = result;
  *(a2 + 8) = v3;
  return result;
}

BOOL static ModelSortGroup.!= infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 1);
  v3 = *(a2 + 1);
  if (REMeshSortingComponentCheckIfEqual())
  {
    v4 = v3 == 3;
    v6 = v3 != 3 && v2 == v3;
    if (v2 != 3)
    {
      v4 = v6;
    }
  }

  else
  {
    v4 = 0;
  }

  return !v4;
}

Swift::Int ModelSortGroup.DepthPass.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1C68F4C10](v1);
  return Hasher._finalize()();
}

Swift::Int ModelSortGroup.PlanarUIPlacement.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1C68F4C10](v1);
  return Hasher._finalize()();
}

double static ModelSortGroup.planarUIInline.getter@<D0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for planarUIInline != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v2 = qword_1EBEAEC38;
  *a1 = static ModelSortGroup.planarUIInline;
  *(a1 + 8) = v2;

  return result;
}

uint64_t one-time initialization function for planarUIInline(uint64_t a1, char a2, _BYTE *a3, _BYTE *a4, uint64_t *a5)
{
  *a3 = a2;
  *a4 = 2;
  type metadata accessor for ModelSortGroup.SortGroupRef();
  v6 = swift_allocObject();
  result = RECreateMeshSortGroup();
  *(v6 + 16) = result;
  *a5 = v6;
  return result;
}

double static ModelSortGroup.planarUIAlwaysInFront.getter@<D0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for planarUIAlwaysInFront != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v2 = qword_1EBEAEC48;
  *a1 = static ModelSortGroup.planarUIAlwaysInFront;
  *(a1 + 8) = v2;

  return result;
}

uint64_t one-time initialization function for planarUIAlwaysBehind()
{
  type metadata accessor for ModelSortGroup.SortGroupRef();
  static ModelSortGroup.planarUIAlwaysBehind = 514;
  v0 = swift_allocObject();
  result = RECreateMeshSortGroup();
  *(v0 + 16) = result;
  qword_1EBEAEC58 = v0;
  return result;
}

double static ModelSortGroup.planarUIAlwaysBehind.getter@<D0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for planarUIAlwaysBehind != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v2 = qword_1EBEAEC58;
  *a1 = static ModelSortGroup.planarUIAlwaysBehind;
  *(a1 + 8) = v2;

  return result;
}

uint64_t ModelSortGroupComponent.init(group:order:)@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v3 = *(result + 8);
  *(a3 + 8) = *result;
  *(a3 + 16) = v3;
  *a3 = a2;
  return result;
}

double ModelSortGroupComponent.group.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *(v1 + 8);
  *(a1 + 8) = v2;

  return result;
}

uint64_t ModelSortGroupComponent.group.setter(__int16 *a1)
{
  v2 = *a1;
  v3 = *(a1 + 1);

  *(v1 + 8) = v2;
  *(v1 + 16) = v3;
  return result;
}

uint64_t (*ModelSortGroupComponent.group.modify(uint64_t a1))(char *a1, char a2)
{
  v3 = *(v1 + 16);
  *a1 = *(v1 + 8);
  *(a1 + 8) = v3;
  *(a1 + 16) = v1;

  return ModelSortGroupComponent.group.modify;
}

uint64_t ModelSortGroupComponent.group.modify(char *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 1);
  v5 = *(a1 + 2);
  if (a2)
  {

    *(v5 + 8) = v2;
    *(v5 + 9) = v3;
    *(v5 + 16) = v4;
  }

  else
  {

    *(v5 + 8) = v2;
    *(v5 + 9) = v3;
    *(v5 + 16) = v4;
  }

  return result;
}

uint64_t (*ModelSortGroupComponent.order.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  *(a1 + 8) = *v1;
  return ModelSortGroupComponent.order.modify;
}

uint64_t static ModelSortGroupComponent.__fromCore(_:)@<X0>(uint64_t a2@<X8>)
{
  v3 = REMeshSortingComponentCopySortGroup();
  RECreateMeshSortGroup();
  type metadata accessor for ModelSortGroup.SortGroupRef();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  RERelease();
  REComponentGetEntity();
  REUISortingComponentGetComponentType();
  if (REEntityGetComponentByClass())
  {
    SortCategory = REUISortingComponentGetSortCategory();
    if ((SortCategory + 2) >= 5)
    {
      v6 = 0;
    }

    else
    {
      v6 = 0x101000202uLL >> (8 * (SortCategory + 2));
    }

    SortPriorityHint = REUISortingComponentGetSortPriorityHint();
    v8 = 2;
  }

  else
  {
    SortPriorityHint = REMeshSortingComponentGetPriorityInSortGroup();
    DepthPriorityInSortGroup = REMeshSortingComponentGetDepthPriorityInSortGroup();
    if (DepthPriorityInSortGroup == 0x7FFFFFFF)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }

    if (DepthPriorityInSortGroup == 0x80000000)
    {
      v8 = 0;
    }

    v6 = 3;
  }

  *(a2 + 8) = v8;
  *(a2 + 9) = v6;
  *(a2 + 16) = v4;
  *a2 = SortPriorityHint;
}

uint64_t ModelSortGroupComponent.__toCore(_:)(uint64_t *a1)
{
  if (*(v1 + 9) == 3)
  {
    if (REMeshSortingComponentGetIsUI())
    {
      REMeshSortingComponentSetIsUI();
      REComponentGetEntity();
      REUISortingComponentGetComponentType();
      REEntityRemoveComponentByClass();
    }

    REMeshSortingComponentSetPriorityInSortGroup();
  }

  else
  {
    REMeshSortingComponentSetIsUI();
    REComponentGetEntity();
    REUISortingComponentGetComponentType();
    REEntityGetOrAddComponentByClass();
    REUISortingComponentSetSortCategory();
    REUISortingComponentSetSortPriorityHint();
    REUISortingComponentSetUsesMeshBoundingBox();
    RENetworkMarkComponentDirty();
  }

  REMeshSortingComponentSetDepthPriorityInSortGroup();
  REMeshSortingComponentSetSortGroup();

  return RENetworkMarkComponentDirty();
}

uint64_t ModelSortGroupComponent.customMirror.getter@<X0>(uint64_t a1@<X8>)
{
  v16 = a1;
  v2 = type metadata accessor for Mirror.AncestorRepresentation();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v16 - v7;
  v10 = *(v1 + 8);
  v11 = *(v1 + 9);
  v12 = *(v1 + 2);
  v17 = *v1;
  v9 = v17;
  v18 = v10;
  v19 = v11;
  v20 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1C1897FC0;
  *(v13 + 32) = 0x70756F7267;
  *(v13 + 40) = 0xE500000000000000;
  *(v13 + 48) = v10;
  *(v13 + 49) = v11;
  *(v13 + 56) = v12;
  *(v13 + 72) = &type metadata for ModelSortGroup;
  *(v13 + 80) = 0x726564726FLL;
  *(v13 + 88) = 0xE500000000000000;
  *(v13 + 120) = MEMORY[0x1E69E72F0];
  *(v13 + 96) = v9;
  v14 = type metadata accessor for Mirror.DisplayStyle();
  (*(*(v14 - 8) + 56))(v8, 1, 1, v14);
  (*(v3 + 104))(v5, *MEMORY[0x1E69E75D8], v2);
  swift_retain_n();
  return Mirror.init<A>(_:children:displayStyle:ancestorRepresentation:)();
}

uint64_t ModelSortGroup.customMirror.getter()
{
  v1 = type metadata accessor for Mirror.AncestorRepresentation();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v13[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v13[-v6];
  LOBYTE(v6) = *(v0 + 1);
  v9 = *(v0 + 8);
  v13[0] = *v0;
  v8 = v13[0];
  v13[1] = v6;
  v14 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1C1887600;
  *(v10 + 32) = 0x7361506874706564;
  *(v10 + 40) = 0xE900000000000073;
  *(v10 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14ModelSortGroupV9DepthPassOSgMd, &_s17RealityFoundation14ModelSortGroupV9DepthPassOSgMR);
  *(v10 + 48) = v8;
  v11 = type metadata accessor for Mirror.DisplayStyle();
  (*(*(v11 - 8) + 56))(v7, 1, 1, v11);
  (*(v2 + 104))(v4, *MEMORY[0x1E69E75D8], v1);

  return Mirror.init<A>(_:children:displayStyle:ancestorRepresentation:)();
}

uint64_t specialized static ModelSortGroup.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 1);
  v3 = *(a2 + 1);
  result = REMeshSortingComponentCheckIfEqual();
  if (result)
  {
    v6 = v3 != 3 && v2 == v3;
    if (v2 == 3)
    {
      return v3 == 3;
    }

    else
    {
      return v6;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModelSortGroup.DepthPass and conformance ModelSortGroup.DepthPass()
{
  result = lazy protocol witness table cache variable for type ModelSortGroup.DepthPass and conformance ModelSortGroup.DepthPass;
  if (!lazy protocol witness table cache variable for type ModelSortGroup.DepthPass and conformance ModelSortGroup.DepthPass)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ModelSortGroup.DepthPass, &type metadata for ModelSortGroup.DepthPass, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ModelSortGroup.DepthPass and conformance ModelSortGroup.DepthPass);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModelSortGroup.PlanarUIPlacement and conformance ModelSortGroup.PlanarUIPlacement()
{
  result = lazy protocol witness table cache variable for type ModelSortGroup.PlanarUIPlacement and conformance ModelSortGroup.PlanarUIPlacement;
  if (!lazy protocol witness table cache variable for type ModelSortGroup.PlanarUIPlacement and conformance ModelSortGroup.PlanarUIPlacement)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ModelSortGroup.PlanarUIPlacement, &type metadata for ModelSortGroup.PlanarUIPlacement, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ModelSortGroup.PlanarUIPlacement and conformance ModelSortGroup.PlanarUIPlacement);
  }

  return result;
}

void Entity.moveCharacter(by:deltaTime:relativeTo:collisionHandler:)(uint64_t a1@<X0>, void (*a2)(void *, __n128)@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v7 = v6;
  RECharacterControllerComponentGetComponentType();
  if (!REEntityGetComponentByClass())
  {
    v15 = static os_log_type_t.error.getter();
    type metadata accessor for OS_os_log();
    v16 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)(v15, &dword_1C1358000, v16, "Entity does not have CharacterControllerComponent", 49, 2, MEMORY[0x1E69E7CC0]);

LABEL_30:
    *a4 = 0;
    return;
  }

  RECharacterControllerComponentStateGetComponentType();
  REEntityGetOrAddComponentByClass();
  if (a1)
  {

    SceneNullable = REEntityGetSceneNullable();
    if (!SceneNullable)
    {
      goto LABEL_10;
    }

    v13 = SceneNullable;
    v14 = RESceneGetSwiftObject();
    type metadata accessor for Scene();
    if (v14)
    {
      swift_dynamicCastClassUnconditional();
    }

    else
    {
      swift_allocObject();
      Scene.init(coreScene:)(v13);
    }

    v17 = Scene.physicsOrigin.getter();

    if (!v17)
    {
LABEL_10:
      v17 = specialized static PhysicsSimulationComponent.nearestSimulationEntity(for:)(a1);
    }
  }

  else
  {
    v17 = 0;
  }

  _s10RealityKit12HasTransformPAAE16conversionMatrix4from2toSo13simd_float4x4aqd__Sg_qd_0_SgtAA6EntityCRbd__ALRbd_0_r0_lFZAL_A2LTt1g5(a1, v17);
  if (!RECharacterControllerComponentMoveEx())
  {

    goto LABEL_30;
  }

  if (!a2)
  {
LABEL_26:
    *a4 = RECharacterControllerCollisionResultGetHitFlags();
    RERelease();

    return;
  }

  v34 = a4;

  CollisionCount = RECharacterControllerCollisionResultGetCollisionCount();
  if (CollisionCount < 0)
  {
    goto LABEL_32;
  }

  v19 = CollisionCount;
  if (!CollisionCount)
  {
LABEL_25:
    outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(a2, a3);
    a4 = v34;
    goto LABEL_26;
  }

  v20 = 0;
  while (1)
  {
    HitEntityAtCollisionIndex = RECharacterControllerCollisionResultGetHitEntityAtCollisionIndex();
    RECharacterControllerCollisionResultGetHitPositionAtCollisionIndex();
    v40 = v27;
    RECharacterControllerCollisionResultGetHitNormalAtCollisionIndex();
    v39 = v28;
    RECharacterControllerCollisionResultGetMoveDirectionAtCollisionIndex();
    v38 = v29;
    RECharacterControllerCollisionResultGetMoveDistanceAtCollisionIndex();
    v31 = v30;
    if (REEntityGetSwiftObject())
    {
      type metadata accessor for Entity();
      v21 = swift_dynamicCastClassUnconditional();
      goto LABEL_18;
    }

    if (REEntityIsBeingDestroyed())
    {
      break;
    }

    specialized static Entity.entityInfoType(_:)(HitEntityAtCollisionIndex);
    if (v32)
    {
      v22 = (*(v32 + 232))();
      v33 = *(v22 + 16);

      MEMORY[0x1C68F9740](v33, 0);
      *(v22 + 16) = HitEntityAtCollisionIndex;
      MEMORY[0x1C68F9740](HitEntityAtCollisionIndex, v22);

      goto LABEL_19;
    }

    v21 = makeEntity(for:)(HitEntityAtCollisionIndex);
LABEL_18:
    v22 = v21;
LABEL_19:
    ++v20;
    v24 = v39;
    v23 = v40;
    HIDWORD(v23) = v35;
    HIDWORD(v24) = v36;
    v25 = v38;
    HIDWORD(v25) = v37;
    v41[0] = v7;
    v41[1] = v22;
    v42 = v23;
    v43 = v24;
    v44 = v25;
    v45 = v31;

    (a2)(v41);

    if (v19 == v20)
    {
      goto LABEL_25;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
}

void Entity.teleportCharacter(to:relativeTo:)(uint64_t a1, float32x4_t a2)
{
  RECharacterControllerComponentGetComponentType();
  if (REEntityGetComponentByClass())
  {
    RECharacterControllerComponentStateGetComponentType();
    REEntityGetOrAddComponentByClass();
    if (a1)
    {

      SceneNullable = REEntityGetSceneNullable();
      if (!SceneNullable)
      {
        goto LABEL_12;
      }

      v4 = SceneNullable;
      v5 = RESceneGetSwiftObject();
      type metadata accessor for Scene();
      if (v5)
      {
        swift_dynamicCastClassUnconditional();
      }

      else
      {
        swift_allocObject();
        Scene.init(coreScene:)(v4);
      }

      v7 = Scene.physicsOrigin.getter();

      if (!v7)
      {
LABEL_12:
        v7 = specialized static PhysicsSimulationComponent.nearestSimulationEntity(for:)(a1);
      }
    }

    else
    {
      v7 = 0;
    }

    *v8.i64 = _s10RealityKit12HasTransformPAAE16conversionMatrix4from2toSo13simd_float4x4aqd__Sg_qd_0_SgtAA6EntityCRbd__ALRbd_0_r0_lFZAL_A2LTt1g5(a1, v7);
    simd_float4x4.transform(position:)(a2, v8, v9, v10, v11);
    RECharacterControllerComponentSetPosition();
  }

  else
  {
    v6 = static os_log_type_t.error.getter();
    type metadata accessor for OS_os_log();
    v13 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)(v6, &dword_1C1358000, v13, "Entity does not have CharacterControllerComponent", 49, 2, MEMORY[0x1E69E7CC0]);
  }
}

uint64_t Entity.characterController.setter(uint64_t a1)
{
  v2 = *(a1 + 16);
  v4[0] = *a1;
  v4[1] = v2;
  v5[0] = *(a1 + 32);
  *(v5 + 9) = *(a1 + 41);
  return _s10RealityKit6EntityC12ComponentSetV02doE0_8newValue21returnStrongReferenceyxm_xSgSbtAA0D0RzlF0A10Foundation019CharacterControllerD0V_TtB5Tf4ndn_n(v4, v1);
}

void (*Entity.characterController.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0xC8uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 192) = v1;
  if (REEntityGetComponent())
  {
    static CharacterControllerComponent.__fromCore(_:)((v4 + 128));
    *(v4 + 184) = 0;
  }

  else
  {
    *(v4 + 128) = 0u;
    *(v4 + 144) = 0u;
    *(v4 + 160) = 0u;
    *(v4 + 176) = 0;
    *(v4 + 184) = 1;
  }

  return Entity.characterController.modify;
}

void Entity.characterController.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 192);
  if (a2)
  {
    v4 = *a1;
  }

  else
  {
    v4 = *a1 + 64;
  }

  v5 = v2[9];
  *v4 = v2[8];
  *(v4 + 16) = v5;
  *(v4 + 32) = v2[10];
  *(v4 + 41) = *(v2 + 169);
  _s10RealityKit6EntityC12ComponentSetV02doE0_8newValue21returnStrongReferenceyxm_xSgSbtAA0D0RzlF0A10Foundation019CharacterControllerD0V_TtB5Tf4ndn_n(v4, v3);

  free(v2);
}

void (*Entity.characterControllerState.modify(uint64_t *a1))(uint64_t **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x20uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  if (REEntityGetComponent())
  {
    static CharacterControllerStateComponent.__fromCore(_:)(v4);
  }

  else
  {
    *v4 = 0;
    *(v4 + 8) = 0;
    *(v4 + 16) = 2;
  }

  return Entity.characterControllerState.modify;
}

void Entity.characterControllerState.modify(uint64_t **a1)
{
  v1 = *a1;
  _s10RealityKit6EntityC12ComponentSetV02doE0_8newValue21returnStrongReferenceyxm_xSgSbtAA0D0RzlF0A10Foundation024CharacterControllerStateD0V_TtB5Tf4ndn_n(**a1, v1[1], *(v1 + 16), (*a1)[3]);

  free(v1);
}

__n128 simd_float4x4.decompose()(float32x4_t a1, int32x4_t a2, int8x16_t a3, __n128 a4)
{
  REDecomposeMatrix();
  simd_float4x4.scale.getter(a1, a2, a3);
  return a4;
}

double simd_float4x4.init(scale:)(float a1)
{
  HIDWORD(v1) = vdupq_lane_s32(0, 0).i32[1];
  *&v1 = a1;
  return v1;
}

float32x2_t simd_float4x4.scale.getter(float32x4_t a1, int32x4_t a2, int8x16_t a3)
{
  v3 = vmulq_f32(a1, vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(a3, a3, 0xCuLL), a3, 8uLL), vnegq_f32(vextq_s8(vuzp1q_s32(a2, a2), a2, 0xCuLL))), vextq_s8(vuzp1q_s32(a3, a3), a3, 0xCuLL), vextq_s8(vextq_s8(a2, a2, 0xCuLL), a2, 8uLL)));
  v4 = vaddv_f32(*v3.f32);
  v5 = -1.0;
  if ((v3.f32[2] + v4) > 0.0)
  {
    v5 = 1.0;
  }

  v6 = vzip1_s32(*a1.f32, *a2.i8);
  v7 = vzip2_s32(*a1.f32, *a2.i8);
  v8 = vzip1_s32(*&vextq_s8(a1, a1, 8uLL), *&vextq_s8(a2, a2, 8uLL));
  return vmul_n_f32(vsqrt_f32(vadd_f32(vmul_f32(v8, v8), vadd_f32(vmul_f32(v6, v6), vmul_f32(v7, v7)))), v5);
}

void __swiftcall simd_float3x3.init(_:)(simd_float3x3 *__return_ptr retstr, simd_float4x4 *a2)
{
  v2.i32[3] = 0;
  v3.i32[3] = 0;
  v4.i32[3] = 0;
  retstr->columns[0] = v2;
  retstr->columns[1] = v3;
  retstr->columns[2] = v4;
}

float32x4_t simd_float4x4.scale(_:)(float32x4_t a1)
{
  v2 = vmulq_lane_f32(v1[1], *a1.f32, 1);
  *v1 = vmulq_n_f32(*v1, a1.f32[0]);
  v1[1] = v2;
  result = vmulq_laneq_f32(v1[2], a1, 2);
  v1[2] = result;
  return result;
}

float32x4_t simd_float4x4.translate(_:)(float32x4_t a1)
{
  result = vaddq_f32(v1[3], a1);
  result.i32[3] = HIDWORD(*&v1[3]);
  v1[3] = result;
  return result;
}

double key path setter for simd_float4x4.scale : simd_float4x4(float32x4_t *a1, __n128 *a2)
{
  v3 = *a2;
  v10 = *a2;
  v11 = *a1;
  v3.i32[3] = 0;
  v4.n128_f64[0] = simd_normalize(v3);
  v4.n128_u32[3] = v10.u32[3];
  *a2 = v4;
  v5 = a2[1];
  v10.i32[3] = v5.i32[3];
  v5.i32[3] = 0;
  v6.n128_f64[0] = simd_normalize(v5);
  v6.n128_u32[3] = v10.u32[3];
  a2[1] = v6;
  v7 = a2[2];
  v10.i32[3] = v7.i32[3];
  v7.i32[3] = 0;
  v8.n128_f64[0] = simd_normalize(v7);
  v8.n128_u32[3] = v10.u32[3];
  a2[2] = v8;
  *&result = simd_float4x4.scale(_:)(v11).u64[0];
  return result;
}

double simd_float4x4.scale.setter(float32x4_t a1)
{
  v2 = v1[1];
  v3 = vmulq_f32(*v1, *v1);
  *&v4 = v3.f32[2] + vaddv_f32(*v3.f32);
  *v3.f32 = vrsqrte_f32(v4);
  *v3.f32 = vmul_f32(*v3.f32, vrsqrts_f32(v4, vmul_f32(*v3.f32, *v3.f32)));
  v5 = vmulq_n_f32(*v1, vmul_f32(*v3.f32, vrsqrts_f32(v4, vmul_f32(*v3.f32, *v3.f32))).f32[0]);
  v5.i32[3] = HIDWORD(*v1);
  v6 = vmulq_f32(v2, v2);
  *&v7 = v6.f32[2] + vaddv_f32(*v6.f32);
  *v6.f32 = vrsqrte_f32(v7);
  *v6.f32 = vmul_f32(*v6.f32, vrsqrts_f32(v7, vmul_f32(*v6.f32, *v6.f32)));
  v8 = vmulq_n_f32(v2, vmul_f32(*v6.f32, vrsqrts_f32(v7, vmul_f32(*v6.f32, *v6.f32))).f32[0]);
  v8.i32[3] = v2.i32[3];
  *v1 = v5;
  v1[1] = v8;
  v9 = v1[2];
  v10 = vmulq_f32(v9, v9);
  *&v11 = v10.f32[2] + vaddv_f32(*v10.f32);
  *v10.f32 = vrsqrte_f32(v11);
  *v10.f32 = vmul_f32(*v10.f32, vrsqrts_f32(v11, vmul_f32(*v10.f32, *v10.f32)));
  v12 = vmulq_n_f32(v9, vmul_f32(*v10.f32, vrsqrts_f32(v11, vmul_f32(*v10.f32, *v10.f32))).f32[0]);
  v12.i32[3] = v9.i32[3];
  v1[2] = v12;
  *&result = simd_float4x4.scale(_:)(a1).u64[0];
  return result;
}

void (*simd_float4x4.scale.modify(uint64_t *a1))(float32x4_t **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x50uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 64) = v1;
  v5 = *v1;
  *(v3 + 16) = *v1;
  v6 = *(v1 + 1);
  *(v3 + 32) = v6;
  v7 = *(v1 + 2);
  *(v3 + 48) = v7;
  *&v8 = simd_float4x4.scale.getter(v5, v6, v7);
  *v4 = v8;
  return simd_float4x4.scale.modify;
}

void simd_float4x4.scale.modify(float32x4_t **a1)
{
  v1 = *a1;
  v3 = (*a1)[2];
  v2 = (*a1)[3];
  v4 = **a1;
  v5 = (*a1)[1];
  v6 = vmulq_f32(v5, v5);
  *&v7 = v6.f32[2] + vaddv_f32(*v6.f32);
  v8 = (*a1)[4].i64[0];
  *v6.f32 = vrsqrte_f32(v7);
  *v6.f32 = vmul_f32(*v6.f32, vrsqrts_f32(v7, vmul_f32(*v6.f32, *v6.f32)));
  v9 = vmulq_n_f32(v5, vmul_f32(*v6.f32, vrsqrts_f32(v7, vmul_f32(*v6.f32, *v6.f32))).f32[0]);
  v9.i32[3] = v5.i32[3];
  v10 = vmulq_f32(v3, v3);
  *&v11 = v10.f32[2] + vaddv_f32(*v10.f32);
  v12 = vrsqrte_f32(v11);
  v13 = vmul_f32(v12, vrsqrts_f32(v11, vmul_f32(v12, v12)));
  v14 = vmulq_n_f32(v3, vmul_f32(v13, vrsqrts_f32(v11, vmul_f32(v13, v13))).f32[0]);
  v14.i32[3] = v3.i32[3];
  v15 = vmulq_f32(v2, v2);
  v13.f32[0] = vaddv_f32(*v15.f32);
  *v8 = v9;
  v8[1] = v14;
  *v15.f32 = vrsqrte_f32(COERCE_UNSIGNED_INT(v15.f32[2] + v13.f32[0]));
  *v15.f32 = vmul_f32(*v15.f32, vrsqrts_f32(COERCE_UNSIGNED_INT(v15.f32[2] + v13.f32[0]), vmul_f32(*v15.f32, *v15.f32)));
  v16 = vmulq_n_f32(v2, vmul_f32(*v15.f32, vrsqrts_f32(COERCE_UNSIGNED_INT(v15.f32[2] + v13.f32[0]), vmul_f32(*v15.f32, *v15.f32))).f32[0]);
  v16.i32[3] = v2.i32[3];
  v8[2] = v16;
  simd_float4x4.scale(_:)(v4);

  free(v1);
}

void simd_float4x4.rotation.setter(float32x4_t a1)
{
  v7 = *(v1 + 48);
  LODWORD(v2) = simd_float4x4.scale.getter(*v1, *(v1 + 16), *(v1 + 32)).u32[0];
  *&v3 = specialized simd_float4x4.init(translation:rotation:scale:)(v7, a1, v2);
  *v1 = v3;
  *(v1 + 16) = v4;
  *(v1 + 32) = v5;
  *(v1 + 48) = v6;
}

void (*simd_float4x4.rotation.modify(uint64_t *a1))(float32x4_t **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x90uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 128) = v1;
  *(v3 + 64) = *v1;
  *(v3 + 80) = v1[1];
  *(v3 + 96) = v1[2];
  *(v3 + 112) = v1[3];
  *(v3 + 16) = 0u;
  *(v3 + 32) = 0u;
  v5 = (v3 + 32);
  *(v3 + 48) = 0u;
  REDecomposeMatrix();
  *v4 = *v5;
  return simd_float4x4.rotation.modify;
}

void simd_float4x4.rotation.modify(float32x4_t **a1)
{
  v1 = *a1;
  v2 = (*a1)[8].i64[0];
  v8 = *(*a1)[7].i64;
  v9 = **a1;
  LODWORD(v3) = simd_float4x4.scale.getter((*a1)[4], (*a1)[5], (*a1)[6]).u32[0];
  *&v4 = specialized simd_float4x4.init(translation:rotation:scale:)(v8, v9, v3);
  *v2 = v4;
  v2[1] = v5;
  v2[2] = v6;
  v2[3] = v7;

  free(v1);
}

__n128 simd_float4x4.translation.setter(__n128 result)
{
  result.n128_u32[3] = v1[3].n128_u32[3];
  v1[3] = result;
  return result;
}

__n128 (*simd_float4x4.translation.modify(uint64_t *a1))(void **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  *a1 = v3;
  *(v3 + 32) = v1;
  v4 = *(v1 + 48);
  *(v3 + 16) = v4;
  HIDWORD(v4) = 0;
  *v3 = v4;
  return simd_float4x4.translation.modify;
}

__n128 simd_float4x4.translation.modify(void **a1)
{
  v1 = *a1;
  v2 = *v1;
  HIDWORD(v2) = v1[7];
  *(*(v1 + 4) + 48) = v2;
  free(v1);
  return result;
}

double specialized simd_float4x4.init(translation:rotation:scale:)(double a1, float32x4_t a2, float a3)
{
  *v3.i64 = simd_matrix4x4(a2);
  *&result = vmulq_n_f32(v3, a3).u64[0];
  return result;
}

double simd_normalize(float32x4_t a1)
{
  v1 = vmulq_f32(a1, a1);
  *&v2 = v1.f32[2] + vaddv_f32(*v1.f32);
  *v1.f32 = vrsqrte_f32(v2);
  *v1.f32 = vmul_f32(*v1.f32, vrsqrts_f32(v2, vmul_f32(*v1.f32, *v1.f32)));
  *&result = vmulq_n_f32(a1, vmul_f32(*v1.f32, vrsqrts_f32(v2, vmul_f32(*v1.f32, *v1.f32))).f32[0]).u64[0];
  return result;
}

uint64_t GeometricPin.pose.getter@<X0>(uint64_t a1@<X8>)
{
  result = swift_weakLoadStrong();
  if (!result)
  {
    goto LABEL_6;
  }

  if (!v1[4])
  {

LABEL_6:
    v7 = 0;
    v8 = v1[6];
    v9 = v1[7];
    v10 = v1[8];
    v11 = v1[9];
    goto LABEL_8;
  }

  String.utf8CString.getter();
  SkeletalJointPinPose = REEntityTryGetSkeletalJointPinPose();

  if (SkeletalJointPinPose)
  {
    REPoseMultiply();
    v12 = v5;
    v13 = v6;

    v7 = 0;
    v9 = *(&v12 + 1);
    v8 = v12;
    v11 = *(&v13 + 1);
    v10 = v13;
  }

  else
  {

    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v7 = 1;
  }

LABEL_8:
  *a1 = v8;
  *(a1 + 8) = v9;
  *(a1 + 16) = v10;
  *(a1 + 24) = v11;
  *(a1 + 32) = v7;
  return result;
}

void *GeometricPin.init(named:offsetPosition:offsetOrientation:)(uint64_t a1, uint64_t a2, __n128 a4, __n128 a5)
{
  v7 = swift_weakInit();
  v7[3] = a4;
  v7[4] = a5;
  result = swift_weakAssign();
  result[1] = a1;
  result[2] = a2;
  result[3] = 0;
  result[4] = 0;
  return result;
}

void *GeometricPin.init(named:skeletalJointName:offsetPosition:offsetOrientation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __n128 a6, __n128 a7)
{
  v11 = swift_weakInit();
  v11[3] = a6;
  v11[4] = a7;
  result = swift_weakAssign();
  result[1] = a1;
  result[2] = a2;
  result[3] = a3;
  result[4] = a4;
  return result;
}

uint64_t GeometricPin.position.getter()
{
  if (!swift_weakLoadStrong())
  {
    return *(v0 + 48);
  }

  if (!*(v0 + 32))
  {

    return *(v0 + 48);
  }

  String.utf8CString.getter();
  SkeletalJointPinPose = REEntityTryGetSkeletalJointPinPose();

  if ((SkeletalJointPinPose & 1) == 0)
  {

    return 0;
  }

  REPoseMultiply();
  v5 = v2;

  *&v3 = v5;
  return v3;
}

uint64_t GeometricPin.orientation.getter()
{
  if (!swift_weakLoadStrong())
  {
    return *(v0 + 64);
  }

  if (!*(v0 + 32))
  {

    return *(v0 + 64);
  }

  String.utf8CString.getter();
  SkeletalJointPinPose = REEntityTryGetSkeletalJointPinPose();

  if ((SkeletalJointPinPose & 1) == 0)
  {

    return 0;
  }

  REPoseMultiply();
  v5 = v2;

  *&v3 = v5;
  return v3;
}

uint64_t GeometricPin.position(relativeTo:)(uint64_t a1)
{
  GeometricPin.pose(relativeTo:)(&v2, a1);
  if (v3)
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

uint64_t GeometricPin.pose(relativeTo:)@<X0>(uint64_t a1@<X8>, uint64_t a2@<X0>)
{
  v3 = v2;
  if (!swift_weakLoadStrong())
  {
    goto LABEL_6;
  }

  if (!*(v3 + 32))
  {

LABEL_6:
    v18 = *(v3 + 64);
    v20 = *(v3 + 48);
    goto LABEL_7;
  }

  String.utf8CString.getter();
  SkeletalJointPinPose = REEntityTryGetSkeletalJointPinPose();

  if ((SkeletalJointPinPose & 1) == 0)
  {

    v15 = 1;
    v14 = 0uLL;
    v16 = 0uLL;
    goto LABEL_8;
  }

  REPoseMultiply();
  v18 = v8;
  v20 = v7;

LABEL_7:
  Strong = swift_weakLoadStrong();
  LODWORD(v10) = DWORD2(v20);
  v19 = transformPose(_:from:to:)(Strong, a2, *&v20, v10, v18);
  v21 = v11;
  v17 = v12;

  v14 = v17;
  v16 = v19;
  v15 = 0;
  v16.n128_u32[2] = v21;
LABEL_8:
  *a1 = v16;
  *(a1 + 16) = v14;
  *(a1 + 32) = v15;
  return result;
}

uint64_t GeometricPin.orientation(relativeTo:)(uint64_t a1)
{
  GeometricPin.pose(relativeTo:)(v2, a1);
  if (v3)
  {
    return 0;
  }

  else
  {
    return v2[2];
  }
}

uint64_t GeometricPin.name.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

void GeometricPin.name.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
}

void (*GeometricPin.offsetPosition.modify(uint64_t *a1))(void **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x18uLL);
  }

  *a1 = v3;
  *(v3 + 16) = v1;
  *v3 = *(v1 + 48);
  return SpatialMediaComponent.spatialMediaPlaneOffset.modify;
}

void (*GeometricPin.offsetOrientation.modify(uint64_t *a1))(void **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x18uLL);
  }

  *a1 = v3;
  *(v3 + 16) = v1;
  *v3 = *(v1 + 64);
  return GeometricPin.offsetOrientation.modify;
}

void GeometricPin.offsetOrientation.modify(void **a1)
{
  v1 = *a1;
  *(v1[2] + 64) = *v1;
  free(v1);
}

__n128 transformPose(_:from:to:)(uint64_t a1, uint64_t a2, double a3, double a4, float32x4_t a5)
{
  *v5.i64 = _s10RealityKit12HasTransformPAAE16conversionMatrix4from2toSo13simd_float4x4aqd__Sg_qd_0_SgtAA6EntityCRbd__ALRbd_0_r0_lFZAL_A2LTt1g5(a1, a2);
  v13 = v5;
  v14 = v6;
  v15 = v7;
  v16 = v8;
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #0 of transformPose(_:from:to:));
  specialized simd_float4x4.init(translation:rotation:scale:)(a3, a5, v9);
  v18 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v13, v10.f32[0]), v14, *v10.f32, 1), v15, v10, 2), v16, v10, 3);
  REDecomposeMatrix();
  return v18;
}

void GeometricPin.alignment(to:relativeTo:)(float32x4_t *a1@<X8>, uint64_t a2@<X1>)
{
  GeometricPin.pose(relativeTo:)(v29, a2);
  if (v30)
  {
    goto LABEL_7;
  }

  v27 = v29[0];
  GeometricPin.pose(relativeTo:)(v31, a2);
  if (v33)
  {
    goto LABEL_7;
  }

  v4 = v32;
  if (one-time initialization token for identity != -1)
  {
    v26 = v32;
    swift_once();
    v4 = v26;
  }

  *v5.i64 = specialized simd_float4x4.init(translation:rotation:scale:)(v27, v4, 1.0);
  v25 = v6;
  v28 = v5;
  v23 = v8;
  v24 = v7;
  GeometricPin.pose(relativeTo:)(v34, a2);
  if (v35 & 1) != 0 || (v20 = v34[0], GeometricPin.pose(relativeTo:)(v36, a2), (v38))
  {
LABEL_7:
    v9 = 1;
    v10 = 0uLL;
    v11 = 0uLL;
    v12 = 0uLL;
    v13 = 0uLL;
  }

  else
  {
    *v14.i64 = specialized simd_float4x4.init(translation:rotation:scale:)(v20, v37, 1.0);
    v18 = v14;
    v19 = v15;
    v21 = v16;
    v22 = v17;
    v39.columns[1] = v25;
    v39.columns[0] = v28;
    v39.columns[3] = v23;
    v39.columns[2] = v24;
    v40 = __invert_f4(v39);
    v9 = 0;
    v10 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v18, v40.columns[0].f32[0]), v19, *v40.columns[0].f32, 1), v21, v40.columns[0], 2), v22, v40.columns[0], 3);
    v11 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v18, v40.columns[1].f32[0]), v19, *v40.columns[1].f32, 1), v21, v40.columns[1], 2), v22, v40.columns[1], 3);
    v12 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v18, v40.columns[2].f32[0]), v19, *v40.columns[2].f32, 1), v21, v40.columns[2], 2), v22, v40.columns[2], 3);
    v13 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v18, v40.columns[3].f32[0]), v19, *v40.columns[3].f32, 1), v21, v40.columns[3], 2), v22, v40.columns[3], 3);
  }

  *a1 = v10;
  a1[1] = v11;
  a1[2] = v12;
  a1[3] = v13;
  a1[4].i8[0] = v9;
}

Swift::Int GeometricPin.hashValue.getter()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance GeometricPin()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance GeometricPin()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t HasTransform.align(_:to:)@<X0>(float32x4_t *a3@<X8>)
{
  result = swift_weakLoadStrong();
  if (result && (v6 = *(result + 16), result = , v6 == *(v3 + 16)))
  {
    v12 = HasHierarchy.parent.getter();
    GeometricPin.alignment(to:relativeTo:)(v26, v12);
    v24 = v26[1];
    v25 = v26[0];
    v22 = v26[3];
    v23 = v26[2];
    v7 = v27;

    if ((v7 & 1) == 0)
    {
      v13 = HasTransform.transform.getter();
      specialized simd_float4x4.init(translation:rotation:scale:)(v15, v14, *&v13);
      REMakeSRTFromMatrix();
      if (one-time initialization token for identity != -1)
      {
        v20 = v16;
        v21 = v17;
        v19 = v18;
        swift_once();
        v18 = v19;
        v16 = v20;
        v17 = v21;
      }

      result = HasTransform.transform.setter(v16, v17, v18);
    }

    v9 = v24;
    v8 = v25;
    v11 = v22;
    v10 = v23;
  }

  else
  {
    v7 = 1;
    v8 = 0uLL;
    v9 = 0uLL;
    v10 = 0uLL;
    v11 = 0uLL;
  }

  *a3 = v8;
  a3[1] = v9;
  a3[2] = v10;
  a3[3] = v11;
  a3[4].i8[0] = v7;
  return result;
}

void Entity.attach(_:to:)(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for String.Encoding();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  REAttachedTransformComponentGetComponentType();
  v8 = REEntityGetOrAddComponentByClass();
  REAttachedTransformComponentDetach();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v9 = a2[4];
    v19 = a1;
    if (v9)
    {
      v25 = a2[3];
      v26 = v9;

      static String.Encoding.utf8.getter();
      lazy protocol witness table accessor for type String and conformance String();
      v20 = StringProtocol.cString(using:)();
      (*(v5 + 8))(v7, v4);
    }

    else
    {
      v20 = 0;
    }

    v12 = a2[1];
    v13 = a2[2];
    v25 = v12;
    v26 = v13;

    static String.Encoding.utf8.getter();
    lazy protocol witness table accessor for type String and conformance String();
    v14 = StringProtocol.cString(using:)();
    v15 = *(v5 + 8);
    v15(v7, v4);
    if (v14)
    {
      REAttachedTransformComponentSetTargetPinWithName();

      v25 = v12;
      v26 = v13;
      static String.Encoding.utf8.getter();
      v16 = StringProtocol.cString(using:)();
      v15(v7, v4);

      if (v16)
      {
        v18 = v8;
        REAttachedTransformComponentAttach();

        outlined init with copy of GeometricPin?(v19, &v22);
        if (!v24)
        {

          outlined destroy of GeometricPin?(&v22);
          return;
        }

        outlined init with take of GeometricPin(&v22, &v25);
        if (!swift_weakLoadStrong())
        {

          outlined destroy of GeometricPin(&v25);
          return;
        }

        if (v29)
        {
          v22 = v28;
          v23 = v29;

          static String.Encoding.utf8.getter();
          StringProtocol.cString(using:)();
          v15(v7, v4);
        }

        v22 = v26;
        v23 = v27;

        static String.Encoding.utf8.getter();
        v17 = StringProtocol.cString(using:)();
        v15(v7, v4);

        if (v17)
        {
          if (swift_weakLoadStrong())
          {

            REAttachedTransformComponentSetSourcePinWithName();

            outlined destroy of GeometricPin(&v25);

            return;
          }

          goto LABEL_22;
        }

LABEL_21:
        __break(1u);
LABEL_22:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_21;
  }

  v10 = static os_log_type_t.error.getter();
  type metadata accessor for OS_os_log();
  Strong = static OS_os_log.default.getter();
  os_log(_:dso:log:_:_:)(v10, &dword_1C1358000, Strong, "Target entity not set", 21, 2, MEMORY[0x1E69E7CC0]);
  v11 = Strong;
}

BOOL specialized static GeometricPin.== infix(_:_:)(float32x4_t *a1, float32x4_t *a2)
{
  v4 = a1->i64[1] == a2->i64[1] && a1[1].i64[0] == a2[1].i64[0];
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2].i64[0];
  v6 = a2[2].i64[0];
  if (!v5)
  {
    if (!v6)
    {
      goto LABEL_15;
    }

    return 0;
  }

  if (!v6)
  {
    return 0;
  }

  v7 = a1[1].i64[1] == a2[1].i64[1] && v5 == v6;
  if (!v7 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

LABEL_15:
  result = 0;
  v9 = vmovn_s32(vceqq_f32(a1[3], a2[3]));
  if (v9.i8[0] & 1) != 0 && (v9.i8[2] & 1) != 0 && (v9.i8[4])
  {
    if (vminv_u16(vmovn_s32(vceqq_f32(a1[4], a2[4]))))
    {
      Strong = swift_weakLoadStrong();
      v11 = swift_weakLoadStrong();
      if (Strong)
      {
        if (v11)
        {
          v12 = *(Strong + 16);
          v13 = v11;

          v14 = *(v13 + 16);

          return v12 == v14;
        }
      }

      else if (!v11)
      {
        return 1;
      }
    }

    return 0;
  }

  return result;
}

uint64_t outlined init with copy of GeometricPin?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation12GeometricPinVSgMd, &_s17RealityFoundation12GeometricPinVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of GeometricPin?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation12GeometricPinVSgMd, &_s17RealityFoundation12GeometricPinVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type GeometricPin and conformance GeometricPin()
{
  result = lazy protocol witness table cache variable for type GeometricPin and conformance GeometricPin;
  if (!lazy protocol witness table cache variable for type GeometricPin and conformance GeometricPin)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for GeometricPin, &type metadata for GeometricPin, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type GeometricPin and conformance GeometricPin);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for GeometricPin(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for GeometricPin(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t __RKScenePhysics.Registration.init()()
{
  REStructBuilderCreate();
  String.utf8CString.getter();
  v2 = REStructBuilderInit();

  if (!v2 || (String.utf8CString.getter(), REStructBuilderAddMemberDataTypeWithTag(), , String.utf8CString.getter(), REStructBuilderAddMemberDataTypeWithTag(), , (v3 = RECIntrospectionStructRegister()) == 0))
  {
    lazy protocol witness table accessor for type __RKScenePhysics.Registration.RegistrationError and conformance __RKScenePhysics.Registration.RegistrationError();
    swift_allocError();
    swift_willThrow();
    goto LABEL_6;
  }

  *(v0 + 16) = v3;
  v4 = specialized String.withCString<A>(_:)(0x50656E6563534552, 0xEE00736369737968, v3);
  if (v1)
  {
LABEL_6:
    REStructBuilderDestroy();
    type metadata accessor for __RKScenePhysics.Registration();
    swift_deallocPartialClassInstance();
    return v0;
  }

  *(v0 + 24) = v4;
  REStructBuilderDestroy();
  return v0;
}

uint64_t closure #1 in __RKScenePhysics.Registration.init()@<X0>(uint64_t *a3@<X8>)
{
  result = RECustomComponentTypeCreate();
  if (result)
  {
    *a3 = result;
  }

  else
  {
    lazy protocol witness table accessor for type __RKScenePhysics.Registration.RegistrationError and conformance __RKScenePhysics.Registration.RegistrationError();
    swift_allocError();
    return swift_willThrow();
  }

  return result;
}

uint64_t __RKScenePhysics.Registration.deinit()
{
  RECustomComponentTypeDestroy();
  RECIntrospectionStructUnregister();
  return v0;
}

uint64_t __RKScenePhysics.Registration.__deallocating_deinit()
{
  RECustomComponentTypeDestroy();
  RECIntrospectionStructUnregister();

  return swift_deallocClassInstance();
}

double static __RKScenePhysics.registration.getter()
{
  swift_beginAccess();

  return result;
}

uint64_t static __RKScenePhysics.registration.setter(void *a1)
{
  swift_beginAccess();
  static __RKScenePhysics.registration = a1;
}

uint64_t key path setter for static __RKScenePhysics.registration : __RKScenePhysics.Type(void **a1)
{
  v1 = *a1;
  swift_beginAccess();
  static __RKScenePhysics.registration = v1;
}

uint64_t Scene.getOrAddInternalComponentPointer()()
{
  swift_beginAccess();
  if (!static __RKScenePhysics.registration)
  {
    return 0;
  }

  RESceneGetComponentsOfCustomType();
  if (v0 >= 1)
  {
    return RECustomComponentGetObject();
  }

  if (!Scene.AnchorCollection.endIndex.getter())
  {
    REEntityCreate();
    RESceneAddEntity();
    result = Scene.AnchorCollection.endIndex.getter();
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  Scene.AnchorCollection.subscript.getter(0);

  result = REEntityAddComponentByClass();
  if (result)
  {
    return RECustomComponentGetObject();
  }

  return result;
}

uint64_t Scene.__gravity.getter()
{
  swift_beginAccess();
  if (!static __RKScenePhysics.registration)
  {
    return 0;
  }

  RESceneGetComponentsOfCustomType();
  if (!v0)
  {
    return 0;
  }

  result = RECustomComponentGetObject();
  if (result)
  {
    return *result;
  }

  return result;
}

void *Scene.__gravity.setter(uint64_t a1, uint64_t a2, char a3)
{
  result = swift_beginAccess();
  if (static __RKScenePhysics.registration)
  {
    if (a3)
    {
      result = REEntityGetCustomComponent();
      if (result)
      {
        return REEntityRemoveComponentByClass();
      }
    }

    else
    {
      result = Scene.getOrAddInternalComponentPointer()();
      if (result)
      {
        *result = a1;
        result[1] = a2;
      }
    }
  }

  return result;
}

void (*Scene.__gravity.modify(uint64_t *a1))(uint64_t **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 48) = v1;
  swift_beginAccess();
  v5 = static __RKScenePhysics.registration;
  if (!static __RKScenePhysics.registration)
  {
    goto LABEL_9;
  }

  RESceneGetComponentsOfCustomType();
  if (!v6 || (Object = RECustomComponentGetObject()) == 0)
  {
    v5 = 0;
LABEL_9:
    v9 = 0;
    v8 = 1;
    goto LABEL_10;
  }

  v8 = 0;
  v5 = *Object;
  v9 = Object[1];
LABEL_10:
  *v4 = v5;
  *(v4 + 8) = v9;
  *(v4 + 16) = v8;
  return Scene.__gravity.modify;
}

void Scene.__gravity.modify(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = (*a1)[1];
  if (static __RKScenePhysics.registration)
  {
    if (v1[2])
    {
      if (REEntityGetCustomComponent())
      {
        REEntityRemoveComponentByClass();
      }
    }

    else
    {
      v4 = Scene.getOrAddInternalComponentPointer()();
      if (v4)
      {
        *v4 = v2;
        v4[1] = v3;
      }
    }
  }

  free(v1);
}

uint64_t Scene.__adaptiveTimeStep.getter()
{
  swift_beginAccess();
  if (static __RKScenePhysics.registration && (RESceneGetComponentsOfCustomType(), v0) && (Object = RECustomComponentGetObject()) != 0)
  {
    return *(Object + 16);
  }

  else
  {
    return 2;
  }
}

uint64_t Scene.__adaptiveTimeStep.setter(char a1)
{
  result = swift_beginAccess();
  if (static __RKScenePhysics.registration)
  {
    if (a1 == 2)
    {
      result = REEntityGetCustomComponent();
      if (result)
      {
        return REEntityRemoveComponentByClass();
      }
    }

    else
    {
      result = Scene.getOrAddInternalComponentPointer()();
      if (result)
      {
        *(result + 16) = a1 & 1;
      }
    }
  }

  return result;
}

void (*Scene.__adaptiveTimeStep.modify(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_beginAccess();
  if (static __RKScenePhysics.registration && (RESceneGetComponentsOfCustomType(), v5) && (Object = RECustomComponentGetObject()) != 0)
  {
    v7 = *(Object + 16);
  }

  else
  {
    v7 = 2;
  }

  *(v4 + 32) = v7;
  return Scene.__adaptiveTimeStep.modify;
}

void Scene.__adaptiveTimeStep.modify(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 32);
  if (static __RKScenePhysics.registration)
  {
    if (v2 == 2)
    {
      if (REEntityGetCustomComponent())
      {
        REEntityRemoveComponentByClass();
      }
    }

    else
    {
      v3 = Scene.getOrAddInternalComponentPointer()();
      if (v3)
      {
        *(v3 + 16) = v2 & 1;
      }
    }
  }

  free(v1);
}

uint64_t getEnumTagSinglePayload for __RKScenePhysics(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for __RKScenePhysics(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type __RKScenePhysics.Registration.RegistrationError and conformance __RKScenePhysics.Registration.RegistrationError()
{
  result = lazy protocol witness table cache variable for type __RKScenePhysics.Registration.RegistrationError and conformance __RKScenePhysics.Registration.RegistrationError;
  if (!lazy protocol witness table cache variable for type __RKScenePhysics.Registration.RegistrationError and conformance __RKScenePhysics.Registration.RegistrationError)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __RKScenePhysics.Registration.RegistrationError, &type metadata for __RKScenePhysics.Registration.RegistrationError, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __RKScenePhysics.Registration.RegistrationError and conformance __RKScenePhysics.Registration.RegistrationError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __RKScenePhysics.Registration.RegistrationError and conformance __RKScenePhysics.Registration.RegistrationError;
  if (!lazy protocol witness table cache variable for type __RKScenePhysics.Registration.RegistrationError and conformance __RKScenePhysics.Registration.RegistrationError)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __RKScenePhysics.Registration.RegistrationError, &type metadata for __RKScenePhysics.Registration.RegistrationError, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __RKScenePhysics.Registration.RegistrationError and conformance __RKScenePhysics.Registration.RegistrationError);
  }

  return result;
}

uint64_t AudioPlaybackController._proto_fade(to:duration:)(uint64_t a1, uint64_t a2, double a3)
{
  Duration.components.getter();
  Duration.components.getter();
  REAudioPlayerComponentFadeTokenToGainWithDuration();

  return RENetworkMarkComponentDirty();
}

void CharacterControllerStateComponent.init()(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
}

uint64_t static CharacterControllerStateComponent.__fromCore(_:)@<X0>(uint64_t a2@<X8>)
{
  REComponentGetEntity();
  RECharacterControllerComponentGetComponentType();
  if (REEntityGetComponentByClass())
  {
    RECharacterControllerComponentGetVelocity();
    v8 = v3;
    result = RECharacterControllerComponentOnGround();
    v5 = v8;
  }

  else
  {
    v6 = static os_log_type_t.error.getter();
    type metadata accessor for OS_os_log();
    v7 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)(v6, &dword_1C1358000, v7, "Entity does not have CharacterControllerComponent", 49, 2, MEMORY[0x1E69E7CC0]);

    result = 0;
    v5 = 0uLL;
  }

  *a2 = v5;
  *(a2 + 16) = result;
  return result;
}

uint64_t CharacterControllerStateComponent.customMirror.getter()
{
  v1 = type metadata accessor for Mirror.AncestorRepresentation();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v14[0] = *v0;
  v14[1] = v14[0];
  v8 = *(v0 + 16);
  v15 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1C1897FC0;
  *(v9 + 32) = 0x756F72476E4F7369;
  *(v9 + 40) = 0xEA0000000000646ELL;
  v10 = MEMORY[0x1E69E6370];
  *(v9 + 48) = v8;
  *(v9 + 72) = v10;
  *(v9 + 80) = 0x797469636F6C6576;
  *(v9 + 88) = 0xE800000000000000;
  *(v9 + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD3VySfGMd, &_ss5SIMD3VySfGMR);
  v11 = swift_allocObject();
  *(v9 + 96) = v11;
  *(v11 + 16) = v14[0];
  v12 = type metadata accessor for Mirror.DisplayStyle();
  (*(*(v12 - 8) + 56))(v7, 1, 1, v12);
  (*(v2 + 104))(v4, *MEMORY[0x1E69E75D8], v1);
  return Mirror.init<A>(_:children:displayStyle:ancestorRepresentation:)();
}

id __RCInteractionsController.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for __RCInteractionsController();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

Swift::Void __swiftcall __RCEntity.invokeCustomTrigger(named:overrides:)(Swift::String named, Swift::OpaquePointer_optional overrides)
{
  rawValue = overrides.value._rawValue;
  object = named._object;
  countAndFlagsBits = named._countAndFlagsBits;
  SceneNullable = REEntityGetSceneNullable();
  if (SceneNullable)
  {
    v6 = SceneNullable;
    v7 = RESceneGetSwiftObject();
    type metadata accessor for Scene();
    if (v7)
    {
      swift_dynamicCastClassUnconditional();
    }

    else
    {
      swift_allocObject();
      Scene.init(coreScene:)(v6);
    }

    Scene.__interactionService.getter();
    v9 = v8;

    ObjectType = swift_getObjectType();
    (*(v9 + 48))(countAndFlagsBits, object, 0, rawValue, ObjectType, v9);

    swift_unknownObjectRelease();
  }
}

uint64_t __RCEntity.registerCustomAction(named:action:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = REEntityGetSceneNullable();
  if (result)
  {
    v9 = result;
    v10 = RESceneGetSwiftObject();
    type metadata accessor for Scene();
    if (v10)
    {
      swift_dynamicCastClassUnconditional();
    }

    else
    {
      swift_allocObject();
      Scene.init(coreScene:)(v9);
    }

    Scene.__interactionService.getter();
    v12 = v11;

    ObjectType = swift_getObjectType();
    (*(v12 + 56))(a1, a2, a3, a4, ObjectType, v12);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t __RCEntity.__allocating_init(_coreEntity:)(void *a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = *a1;
  MEMORY[0x1C68F9740]();
  return v2;
}

uint64_t __RCEntity.init(_coreEntity:)(void *a1)
{
  *(v1 + 16) = *a1;
  MEMORY[0x1C68F9740]();
  return v1;
}

uint64_t __RCEntity.__deallocating_deinit()
{
  MEMORY[0x1C68F9740](*(v0 + 16), 0);

  return swift_deallocClassInstance();
}

void partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned NSString) -> ()()
{
  v1 = *(v0 + 16);
  v2 = MEMORY[0x1C68F3280]();
  (*(v1 + 16))(v1, v2);
}

uint64_t specialized static __RCInteractionsController.__invokeCustomTrigger(named:onEntityNamed:inSceneNamed:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v6 + 80, v23);
  v7 = v24;
  v8 = v25;
  __swift_project_boxed_opaque_existential_1(v23, v24);
  v9 = (*(v8 + 8))(v7, v8);
  v10 = v9;
  if (v9 >> 62)
  {
LABEL_20:
    v11 = __CocoaSet.count.getter();
    if (v11)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v11 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11)
    {
LABEL_3:
      v12 = 0;
      do
      {
        if ((v10 & 0xC000000000000001) != 0)
        {
          MEMORY[0x1C68F41F0](v12, v10);
          v13 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
LABEL_16:
            __break(1u);
LABEL_17:

LABEL_18:

            __swift_destroy_boxed_opaque_existential_1(v23);

            Scene.__interactionService.getter();
            v18 = v17;

            ObjectType = swift_getObjectType();
            (*(v18 + 48))(a1, a2, 0, 0, ObjectType, v18);
            swift_unknownObjectRelease();
          }
        }

        else
        {
          if (v12 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_20;
          }

          v13 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
            goto LABEL_16;
          }
        }

        RESceneGetName();
        if (String.init(cString:)() == a3 && v14 == a4)
        {
          goto LABEL_17;
        }

        v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v16)
        {
          goto LABEL_18;
        }

        ++v12;
      }

      while (v13 != v11);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v23);
}

uint64_t specialized static __RCInteractionsController.__registerCustomAction(named:inSceneNamed:action:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v10 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v10 + 80, v30);
  v11 = v31;
  v12 = v32;
  __swift_project_boxed_opaque_existential_1(v30, v31);
  v13 = (*(v12 + 8))(v11, v12);
  v14 = v13;
  v29 = a2;
  if (v13 >> 62)
  {
LABEL_20:
    v15 = __CocoaSet.count.getter();
    if (v15)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v15)
    {
LABEL_3:
      v16 = 0;
      do
      {
        if ((v14 & 0xC000000000000001) != 0)
        {
          MEMORY[0x1C68F41F0](v16, v14);
          v17 = v16 + 1;
          if (__OFADD__(v16, 1))
          {
LABEL_16:
            __break(1u);
LABEL_17:

LABEL_18:

            __swift_destroy_boxed_opaque_existential_1(v30);

            Scene.__interactionService.getter();
            v22 = v21;

            ObjectType = swift_getObjectType();
            v24 = swift_allocObject();
            *(v24 + 16) = a5;
            *(v24 + 24) = a6;
            v25 = *(v22 + 56);

            v25(a1, v29, partial apply for closure #2 in static __RCInteractionsController.__registerCustomAction(named:inSceneNamed:action:), v24, ObjectType, v22);

            swift_unknownObjectRelease();
          }
        }

        else
        {
          if (v16 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_20;
          }

          v17 = v16 + 1;
          if (__OFADD__(v16, 1))
          {
            goto LABEL_16;
          }
        }

        RESceneGetName();
        if (String.init(cString:)() == a3 && v18 == a4)
        {
          goto LABEL_17;
        }

        v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v20)
        {
          goto LABEL_18;
        }

        ++v16;
      }

      while (v17 != v15);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v30);
}

uint64_t MaterialDefinitionResource.deinit()
{
  REAssetSetSwiftObject();
  RERelease();
  return v0;
}

uint64_t MaterialDefinitionResource.__deallocating_deinit()
{
  REAssetSetSwiftObject();
  RERelease();

  return swift_deallocClassInstance();
}

uint64_t MaterialDefinitionResource.__allocating_init(_:)(uint64_t *a1)
{
  v1 = *a1;
  type metadata accessor for MaterialDefinitionResource();
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  RERetain();
  REAssetSetSwiftObject();
  return v2;
}

uint64_t MaterialDefinitionResource.BuildParameters.name.getter()
{
  v1 = *v0;

  return v1;
}

void MaterialDefinitionResource.BuildParameters.name.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

uint64_t MaterialDefinitionResource.BuildParameters.overrideMaterial.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t MaterialDefinitionResource.BuildParameters.library.setter(uint64_t a1)
{

  *(v1 + 32) = a1;
  return result;
}

unint64_t MaterialDefinitionResource.BuildParameters.DebugMapping.init(name:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_s5Int32VTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  a3[1] = a2;
  a3[2] = result;
  *a3 = a1;
  return result;
}

uint64_t MaterialDefinitionResource.BuildParameters.Technique.name.getter()
{
  v1 = *v0;

  return v1;
}

void MaterialDefinitionResource.BuildParameters.Technique.name.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

uint64_t MaterialDefinitionResource.BuildParameters.Technique.library.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t MaterialDefinitionResource.BuildParameters.Technique.debugMapping.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

void MaterialDefinitionResource.BuildParameters.Technique.debugMapping.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
}

uint64_t MaterialDefinitionResource.BuildParameters.Technique.ShaderData.library.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t MaterialDefinitionResource.BuildParameters.Technique.ShaderData.entry.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

void MaterialDefinitionResource.BuildParameters.Technique.ShaderData.entry.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
}

uint64_t MaterialDefinitionResource.BuildParameters.Technique.ShaderData.init(entry:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = result;
  a3[2] = a2;
  return result;
}

double MaterialDefinitionResource.BuildParameters.Technique.vertexShader.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 56);
  *a1 = *(v1 + 40);
  *(a1 + 16) = v2;

  return result;
}

__n128 MaterialDefinitionResource.BuildParameters.Technique.vertexShader.setter(__n128 *a1)
{
  v4 = *a1;
  v2 = a1[1].n128_u64[0];

  result = v4;
  *(v1 + 40) = v4;
  *(v1 + 56) = v2;
  return result;
}

double MaterialDefinitionResource.BuildParameters.Technique.pixelShader.getter@<D0>(uint64_t *a1@<X8>)
{
  v2 = v1[8];
  v3 = v1[9];
  v4 = v1[10];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  return outlined copy of MaterialDefinitionResource.BuildParameters.Technique.ShaderData?(v2, v3, v4);
}

__n128 MaterialDefinitionResource.BuildParameters.Technique.pixelShader.setter(__n128 *a1)
{
  v4 = *a1;
  v2 = a1[1].n128_u64[0];
  outlined consume of MaterialDefinitionResource.BuildParameters.Technique.ShaderData?(v1[8], v1[9], v1[10]);
  result = v4;
  *(v1 + 4) = v4;
  v1[10] = v2;
  return result;
}

uint64_t MaterialDefinitionResource.BuildParameters.Technique.State.depthCompareFunction.setter(uint64_t result, char a2)
{
  *(v2 + 8) = result;
  *(v2 + 16) = a2 & 1;
  return result;
}

uint64_t MaterialDefinitionResource.BuildParameters.Technique.State.cullMode.setter(uint64_t result, char a2)
{
  *(v2 + 24) = result;
  *(v2 + 32) = a2 & 1;
  return result;
}

uint64_t MaterialDefinitionResource.BuildParameters.Technique.State.colorWriteMask.setter(uint64_t result, char a2)
{
  *(v2 + 40) = result;
  *(v2 + 48) = a2 & 1;
  return result;
}

void MaterialDefinitionResource.BuildParameters.Technique.State.init()(uint64_t a1@<X8>)
{
  *a1 = 514;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 24) = 0;
  *(a1 + 32) = 1;
  *(a1 + 40) = 0;
  *(a1 + 48) = 1;
}

__n128 MaterialDefinitionResource.BuildParameters.Technique.state.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 104);
  *a1 = *(v1 + 88);
  *(a1 + 16) = v2;
  result = *(v1 + 120);
  *(a1 + 32) = result;
  *(a1 + 48) = *(v1 + 136);
  return result;
}

__n128 MaterialDefinitionResource.BuildParameters.Technique.state.setter(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(v1 + 88) = *a1;
  *(v1 + 104) = v2;
  result = *(a1 + 32);
  *(v1 + 120) = result;
  *(v1 + 136) = *(a1 + 48);
  return result;
}

__n128 MaterialDefinitionResource.BuildParameters.Technique.init(name:vertexShader:fragmentShader:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, __n128 *a4@<X3>, uint64_t a5@<X8>)
{
  v8 = *(a3 + 2);
  v12 = *a3;
  v13 = *a4;
  v9 = a4[1].n128_u64[0];
  *(a5 + 24) = 0;
  *(a5 + 32) = 0;
  *(a5 + 16) = 0;
  *(a5 + 72) = 0;
  *(a5 + 80) = 0;
  *(a5 + 64) = 0;
  *(a5 + 88) = 514;
  *(a5 + 96) = 0;
  *(a5 + 104) = 1;
  *(a5 + 112) = 0;
  *(a5 + 120) = 1;
  *(a5 + 128) = 0;
  *(a5 + 136) = 1;
  v10 = MEMORY[0x1E69E7CC0];
  *(a5 + 144) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(a5 + 152) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SaySSGTt0g5Tf4g_n(v10);
  *(a5 + 160) = v10;
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 40) = v12;
  *(a5 + 56) = v8;
  outlined consume of MaterialDefinitionResource.BuildParameters.Technique.ShaderData?(0, 0, 0);
  result = v13;
  *(a5 + 64) = v13;
  *(a5 + 80) = v9;
  return result;
}

unint64_t MaterialDefinitionResource.BuildParameters.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v2 = MEMORY[0x1E69E7CC0];
  result = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  a1[3] = result;
  a1[4] = 0;
  a1[5] = v2;
  a1[6] = v2;
  return result;
}

uint64_t static MaterialDefinitionResource.load(_:services:)(__int128 *a1, uint64_t a2)
{
  v3 = *(a1 + 4);
  v4 = a1[1];
  v11 = *a1;
  v12 = v4;
  v13 = v3;
  v14 = *(a1 + 40);
  specialized static MaterialDefinitionResource.createBuilder(_:)(&v11);
  v6 = v5;
  swift_beginAccess();
  outlined init with copy of __REAssetService(a2 + 120, &v11);
  v7 = *(&v12 + 1);
  v8 = v13;
  __swift_project_boxed_opaque_existential_1(&v11, *(&v12 + 1));
  (*(v8 + 32))(v7, v8);
  v9 = REAssetManagerMaterialDefinitionAssetBuilderBuild();
  __swift_destroy_boxed_opaque_existential_1(&v11);
  RERelease();
  REAssetHandleLoadNow();
  if (REAssetHandleLoadFailed())
  {
    lazy protocol witness table accessor for type MaterialDefinitionResource.LoadError and conformance MaterialDefinitionResource.LoadError();
    swift_allocError();
    swift_willThrow();
  }

  else
  {
    type metadata accessor for MaterialDefinitionResource();
    v6 = swift_allocObject();
    *(v6 + 16) = v9;
    RERetain();
    REAssetSetSwiftObject();
  }

  RERelease();
  return v6;
}

uint64_t static MaterialDefinitionResource.loadAsync(_:services:)(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = a1[4];
  v30 = *(a1 + 5);
  swift_beginAccess();
  outlined init with copy of __REAssetService(a2 + 120, v31);
  outlined init with copy of __REAssetService(a2 + 120, v35);
  v8 = v36;
  v9 = v37;
  __swift_project_boxed_opaque_existential_1(v35, v36);
  LOBYTE(v9) = (*(v9 + 56))(v8, v9);
  v10 = v32;
  v11 = v33;
  __swift_project_boxed_opaque_existential_1(v31, v32);
  (*(v11 + 32))(v10, v11);
  AssetRequest = REAssetManagerCreateAssetRequest();
  Request = type metadata accessor for __AssetLoadRequest();
  v14 = swift_allocObject();
  *(v14 + 16) = AssetRequest;
  if (v9)
  {
    REAssetLoadRequestSetLoadAndWaitForResourceSharingClients();
  }

  v15 = swift_allocObject();
  __swift_destroy_boxed_opaque_existential_1(v31);
  __swift_destroy_boxed_opaque_existential_1(v35);
  *(v15 + 16) = v14;
  v16 = (v15 + 16);
  v31[0] = v3;
  v31[1] = v4;
  v31[2] = v5;
  v32 = v6;
  v33 = v7;
  v34 = v30;
  specialized static MaterialDefinitionResource.createBuilder(_:)(v31);
  outlined init with copy of __REAssetService(a2 + 120, v31);
  v17 = v32;
  v18 = v33;
  __swift_project_boxed_opaque_existential_1(v31, v32);
  (*(v18 + 32))(v17, v18);
  v19 = REAssetManagerMaterialDefinitionAssetBuilderBuild();
  __swift_destroy_boxed_opaque_existential_1(v31);
  RERelease();
  v20 = swift_allocObject();
  *(v20 + 16) = v15;
  *(v20 + 24) = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1C1887600;
  swift_beginAccess();
  v22 = *v16;
  *(v21 + 56) = Request;
  *(v21 + 32) = v22;
  type metadata accessor for LoadRequestDependencies();
  v23 = swift_allocObject();
  *(v23 + 16) = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  *(v23 + 24) = v24;
  swift_beginAccess();
  *(v23 + 16) = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit11LoadRequestCy0A10Foundation26MaterialDefinitionResourceCGMd, &_s10RealityKit11LoadRequestCy0A10Foundation26MaterialDefinitionResourceCGMR);
  v25 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation24LoadRequestAllocatedLock33_6AA91A85AECC85EF216D9CC8FE978720LLCys6ResultOyAA26MaterialDefinitionResourceCs5Error_pGSgGMd, &_s17RealityFoundation24LoadRequestAllocatedLock33_6AA91A85AECC85EF216D9CC8FE978720LLCys6ResultOyAA26MaterialDefinitionResourceCs5Error_pGSgGMR);
  v26 = swift_allocObject();
  v27 = swift_allocObject();
  *(v27 + 16) = 0;
  *(v26 + 16) = v27;
  *(v26 + 24) = 0;
  *(v26 + 32) = -1;
  *(v25 + 16) = v26;
  v28 = swift_allocObject();
  v28[2] = partial apply for closure #1 in static MaterialDefinitionResource.loadAsync(_:services:);
  v28[3] = v20;
  v28[4] = v26;
  v28[5] = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine6FutureCy17RealityFoundation26MaterialDefinitionResourceCs5Error_pGMd, &_s7Combine6FutureCy17RealityFoundation26MaterialDefinitionResourceCs5Error_pGMR);
  swift_allocObject();

  *(v25 + 24) = Future.init(_:)();
  return v25;
}

uint64_t closure #1 in static MaterialDefinitionResource.loadAsync(_:services:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  swift_beginAccess();
  v9 = swift_allocObject();
  v9[2] = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed Result<TextureResource, Error>) -> ();
  v9[3] = v8;
  v9[4] = a4;
  v9[5] = a3;
  aBlock[4] = partial apply for closure #1 in closure #1 in static MaterialDefinitionResource.loadAsync(_:services:);
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
  aBlock[3] = &block_descriptor_31;
  v10 = _Block_copy(aBlock);
  v11 = _Block_copy(v10);
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  v15[4] = partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned Bool) -> ();
  v15[5] = v12;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 1107296256;
  v15[2] = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
  v15[3] = &block_descriptor_49;
  v13 = _Block_copy(v15);

  REAssetLoadRequestSetCompletionHandler();
  _Block_release(v13);

  _Block_release(v10);

  swift_beginAccess();
  return REAssetLoadRequestAddAsset();
}

void closure #1 in closure #1 in static MaterialDefinitionResource.loadAsync(_:services:)(char a1, void (*a2)(uint64_t, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    type metadata accessor for MaterialDefinitionResource();
    v7 = swift_allocObject();
    *(v7 + 16) = a4;
    RERetain();
    REAssetSetSwiftObject();
    a2(v7, 0);

    swift_beginAccess();
    aBlock[4] = destructiveProjectEnumData for __RKEntityInteractionsComponent.Registration.RegistrationError;
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
    aBlock[3] = &block_descriptor_52_0;
    v8 = _Block_copy(aBlock);
    v9 = _Block_copy(v8);
    v10 = swift_allocObject();
    *(v10 + 16) = v9;
    v13[4] = thunk for @escaping @callee_unowned @convention(block) (@unowned Bool) -> ()partial apply;
    v13[5] = v10;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 1107296256;
    v13[2] = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
    v13[3] = &block_descriptor_59;
    v11 = _Block_copy(v13);

    REAssetLoadRequestSetCompletionHandler();
    _Block_release(v11);

    _Block_release(v8);
  }

  else
  {
    lazy protocol witness table accessor for type MaterialDefinitionResource.LoadError and conformance MaterialDefinitionResource.LoadError();
    v12 = swift_allocError();
    a2(v12, 1);
  }
}

uint64_t MaterialDefinitionResource.update(from:services:)(__int128 *a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 4);
  v4 = a1[1];
  v8 = *a1;
  v9 = v4;
  v10 = v3;
  v11 = *(a1 + 40);
  specialized static MaterialDefinitionResource.createBuilder(_:)(&v8);
  swift_beginAccess();
  outlined init with copy of __REAssetService(a2 + 120, &v8);
  v5 = *(&v9 + 1);
  v6 = v10;
  __swift_project_boxed_opaque_existential_1(&v8, *(&v9 + 1));
  (*(v6 + 32))(v5, v6);
  LOBYTE(a2) = REAssetManagerMaterialDefinitionAssetBuilderUpdateExistingAsset();
  __swift_destroy_boxed_opaque_existential_1(&v8);
  if ((a2 & 1) == 0)
  {
    lazy protocol witness table accessor for type MaterialDefinitionResource.LoadError and conformance MaterialDefinitionResource.LoadError();
    swift_allocError();
    swift_willThrow();
  }

  return RERelease();
}

uint64_t MaterialDefinitionResource.udpate(from:services:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v3;
  v6 = v2;
  v7 = *(a1 + 40);
  return MaterialDefinitionResource.update(from:services:)(v5, a2);
}

double outlined copy of MaterialDefinitionResource.BuildParameters.Technique.ShaderData?(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t outlined consume of MaterialDefinitionResource.BuildParameters.Technique.ShaderData?(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t specialized MaterialDefinitionResource.__allocating_init(path:)(uint64_t a1, uint64_t a2)
{
  v4 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v4 + 120, &v11);
  v5 = v13;
  v6 = v14;
  __swift_project_boxed_opaque_existential_1(&v11, v13);
  v7 = *(v6 + 32);

  v7(v5, v6);
  String.utf8CString.getter();
  AssetHandle = REAssetManagerCreateAssetHandle();

  __swift_destroy_boxed_opaque_existential_1(&v11);
  if (AssetHandle)
  {

    REAssetHandleLoadNow();
    type metadata accessor for MaterialDefinitionResource();
    v9 = swift_allocObject();
    *(v9 + 16) = AssetHandle;
    RERetain();
    REAssetSetSwiftObject();
    RERelease();

    return v9;
  }

  else
  {
    v11 = 0;
    v12 = 0xE000000000000000;
    _StringGuts.grow(_:)(38);

    v11 = 0xD000000000000024;
    v12 = 0x80000001C18EA270;
    MEMORY[0x1C68F3410](a1, a2);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

void specialized static MaterialDefinitionResource.createBuilder(_:)(uint64_t *a1)
{
  v1 = a1[1];
  v2 = a1[3];
  v62 = a1[5];
  v55 = a1[6];
  REMaterialDefinitionAssetBuilderCreate();
  if (v1)
  {
    String.utf8CString.getter();
    REMaterialDefinitionAssetBuilderSetName();
  }

  REMaterialDefinitionAssetBuilderSetOverrideMaterial();
  v3 = 1 << *(v2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v2 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (v5)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      goto LABEL_81;
    }

    if (v8 >= v6)
    {
      break;
    }

    v5 = *(v2 + 64 + 8 * v8);
    ++v7;
    if (v5)
    {
      v7 = v8;
      do
      {
LABEL_11:
        v5 &= v5 - 1;
        String.utf8CString.getter();
        String.utf8CString.getter();
        REMaterialDefinitionAssetBuilderSetTechniqueMapping();
      }

      while (v5);
      continue;
    }
  }

  REMaterialDefinitionAssetBuilderSetLibrary();
  v61 = *(v62 + 16);
  if (v61)
  {
    v9 = 0;
    while (v9 < *(v62 + 16))
    {
      v10 = *(v62 + 32 + 24 * v9++ + 16);

      REMaterialDefinitionAssetBuilderAddDebugMapping();
      String.utf8CString.getter();
      REMaterialDefinitionAssetBuilderSetDebugMappingName();

      v11 = 0;
      v12 = 1 << *(v10 + 32);
      if (v12 < 64)
      {
        v13 = ~(-1 << v12);
      }

      else
      {
        v13 = -1;
      }

      v14 = v13 & *(v10 + 64);
      v15 = (v12 + 63) >> 6;
      if (v14)
      {
        goto LABEL_26;
      }

      while (1)
      {
        v16 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          __break(1u);
LABEL_79:
          __break(1u);
          goto LABEL_80;
        }

        if (v16 >= v15)
        {
          break;
        }

        v14 = *(v10 + 64 + 8 * v16);
        ++v11;
        if (v14)
        {
          v11 = v16;
          do
          {
LABEL_26:
            v14 &= v14 - 1;
            String.utf8CString.getter();

            REMaterialDefinitionAssetBuilderSetDebugMappingEntry();
          }

          while (v14);
          continue;
        }
      }

      if (v9 == v61)
      {
        goto LABEL_28;
      }
    }

LABEL_82:
    __break(1u);
    return;
  }

LABEL_28:
  v54 = *(v55 + 16);
  if (v54)
  {
    v17 = 0;
LABEL_30:
    v59 = v17;
    v18 = v55 + 32 + 168 * v17;
    v19 = *v18;
    v20 = *(v18 + 32);
    v65[1] = *(v18 + 16);
    v66 = v20;
    v65[0] = v19;
    v21 = *(v18 + 48);
    v22 = *(v18 + 64);
    v23 = *(v18 + 96);
    v69 = *(v18 + 80);
    v70 = v23;
    v67 = v21;
    v68 = v22;
    v24 = *(v18 + 112);
    v25 = *(v18 + 128);
    v26 = *(v18 + 144);
    v74 = *(v18 + 160);
    v72 = v25;
    v73 = v26;
    v71 = v24;
    outlined init with copy of MaterialDefinitionResource.BuildParameters.Technique(v65, v64);
    REMaterialDefinitionAssetBuilderAddTechnique();
    String.utf8CString.getter();
    REMaterialDefinitionAssetBuilderSetTechniqueName();

    v27 = v66;
    REMaterialDefinitionAssetBuilderSetTechniqueLibrary();
    if (v27)
    {
      String.utf8CString.getter();

      REMaterialDefinitionAssetBuilderSetTechniqueDebugMapping();
    }

    v28 = v68;
    v29 = v69;
    REMaterialDefinitionAssetBuilderSetTechniqueVertexShaderLibrary();
    String.utf8CString.getter();
    REMaterialDefinitionAssetBuilderSetTechniqueVertexShaderEntry();

    if (v29)
    {

      REMaterialDefinitionAssetBuilderSetTechniquePixelShaderLibrary();
      String.utf8CString.getter();
      REMaterialDefinitionAssetBuilderSetTechniquePixelShaderEntry();

      outlined consume of MaterialDefinitionResource.BuildParameters.Technique.ShaderData?(v28, *(&v28 + 1), v29);
    }

    v30 = BYTE9(v69);
    v31 = BYTE8(v70);
    v32 = BYTE8(v71);
    v33 = BYTE8(v72);
    if (BYTE8(v69) == 2)
    {
      if (BYTE9(v69) == 2)
      {
        goto LABEL_36;
      }
    }

    else
    {
      REMaterialDefinitionAssetBuilderSetTechniqueStateAlphaBlend();
      if (v30 == 2)
      {
LABEL_36:
        if (v31)
        {
          goto LABEL_37;
        }

        goto LABEL_70;
      }
    }

    REMaterialDefinitionAssetBuilderSetTechniqueStateWriteDepth();
    if (v31)
    {
LABEL_37:
      if (v32)
      {
        goto LABEL_38;
      }

      goto LABEL_71;
    }

LABEL_70:
    REMaterialDefinitionAssetBuilderSetTechniqueStateDepthCompareFunction();
    if (v32)
    {
LABEL_38:
      if (v33)
      {
LABEL_40:
        v60 = v59 + 1;
        v34 = v73 + 64;
        v35 = 1 << *(v73 + 32);
        if (v35 < 64)
        {
          v36 = ~(-1 << v35);
        }

        else
        {
          v36 = -1;
        }

        v37 = v36 & *(v73 + 64);
        v38 = (v35 + 63) >> 6;

        v39 = 0;
        if (v37)
        {
          goto LABEL_49;
        }

        while (1)
        {
          v40 = v39 + 1;
          if (__OFADD__(v39, 1))
          {
            goto LABEL_79;
          }

          if (v40 >= v38)
          {
            break;
          }

          v37 = *(v34 + 8 * v40);
          ++v39;
          if (v37)
          {
            v39 = v40;
            do
            {
LABEL_49:
              v37 &= v37 - 1;
              String.utf8CString.getter();
              String.utf8CString.getter();
              REMaterialDefinitionAssetBuilderSetTechniqueFunctionConstant();
            }

            while (v37);
            continue;
          }
        }

        v57 = *(&v73 + 1) + 64;
        v41 = 1 << *(*(&v73 + 1) + 32);
        if (v41 < 64)
        {
          v42 = ~(-1 << v41);
        }

        else
        {
          v42 = -1;
        }

        v43 = v42 & *(*(&v73 + 1) + 64);
        v56 = (v41 + 63) >> 6;

        v45 = 0;
        v58 = v44;
        while (v43)
        {
LABEL_60:
          v47 = __clz(__rbit64(v43));
          v43 &= v43 - 1;
          v48 = *(*(v44 + 56) + 8 * (v47 | (v45 << 6)));
          v49 = *(v48 + 16);
          if (v49)
          {
            v63 = v45;
            swift_bridgeObjectRetain_n();

            v50 = v48 + 40;
            do
            {
              String.utf8CString.getter();

              REMaterialDefinitionAssetBuilderAddTechniqueVariation();

              String.utf8CString.getter();
              String.utf8CString.getter();

              REMaterialDefinitionAssetBuilderSetTechniqueVariation();

              v50 += 16;
              --v49;
            }

            while (v49);

            swift_bridgeObjectRelease_n();
            v44 = v58;
            v45 = v63;
          }
        }

        while (1)
        {
          v46 = v45 + 1;
          if (__OFADD__(v45, 1))
          {
            break;
          }

          if (v46 >= v56)
          {

            v51 = v74;
            v52 = *(v74 + 16);
            if (v52)
            {

              v53 = v51 + 40;
              do
              {

                REMaterialDefinitionAssetBuilderAddTechniqueDefaultVariation();
                String.utf8CString.getter();

                REMaterialDefinitionAssetBuilderSetTechniqueDefaultVariation();

                v53 += 16;
                --v52;
              }

              while (v52);
            }

            else
            {
            }

            outlined destroy of MaterialDefinitionResource.BuildParameters.Technique(v65);

            v17 = v60;
            if (v60 != v54)
            {
              if (v60 < *(v55 + 16))
              {
                goto LABEL_30;
              }

              __break(1u);
            }

            return;
          }

          v43 = *(v57 + 8 * v46);
          ++v45;
          if (v43)
          {
            v45 = v46;
            goto LABEL_60;
          }
        }

LABEL_80:
        __break(1u);
LABEL_81:
        __break(1u);
        goto LABEL_82;
      }

LABEL_39:
      REMaterialDefinitionAssetBuilderSetTechniqueStateColorWriteMask();
      goto LABEL_40;
    }

LABEL_71:
    REMaterialDefinitionAssetBuilderSetTechniqueStateCullMode();
    if (v33)
    {
      goto LABEL_40;
    }

    goto LABEL_39;
  }
}

unint64_t lazy protocol witness table accessor for type MaterialDefinitionResource.LoadError and conformance MaterialDefinitionResource.LoadError()
{
  result = lazy protocol witness table cache variable for type MaterialDefinitionResource.LoadError and conformance MaterialDefinitionResource.LoadError;
  if (!lazy protocol witness table cache variable for type MaterialDefinitionResource.LoadError and conformance MaterialDefinitionResource.LoadError)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for MaterialDefinitionResource.LoadError, &unk_1F41110C8, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type MaterialDefinitionResource.LoadError and conformance MaterialDefinitionResource.LoadError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MaterialDefinitionResource.LoadError and conformance MaterialDefinitionResource.LoadError;
  if (!lazy protocol witness table cache variable for type MaterialDefinitionResource.LoadError and conformance MaterialDefinitionResource.LoadError)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for MaterialDefinitionResource.LoadError, &unk_1F41110C8, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type MaterialDefinitionResource.LoadError and conformance MaterialDefinitionResource.LoadError);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MaterialDefinitionResource.BuildParameters(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for MaterialDefinitionResource.BuildParameters(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_17RealityFoundation26MaterialDefinitionResourceC15BuildParametersV9TechniqueV10ShaderDataVSg(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy168_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[9];
  *(a1 + 160) = *(a2 + 20);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 112) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for MaterialDefinitionResource.BuildParameters.Technique(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 168))
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

uint64_t storeEnumTagSinglePayload for MaterialDefinitionResource.BuildParameters.Technique(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 152) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 168) = 1;
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

    *(result + 168) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MaterialDefinitionResource.BuildParameters.Technique.State(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && a1[49])
  {
    return (*a1 + 254);
  }

  v3 = *a1;
  if (v3 >= 2)
  {
    v4 = ((v3 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v4 = -2;
  }

  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

double block_copy_helper_31(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

void protocol witness for CodingKey.init(stringValue:) in conformance Audio.Directivity.BeamCodingKeys(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7375636F66 && a2 == 0xE500000000000000)
  {

    v6 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Audio.Directivity.BeamCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Audio.Directivity.BeamCodingKeys and conformance Audio.Directivity.BeamCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Audio.Directivity.BeamCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Audio.Directivity.BeamCodingKeys and conformance Audio.Directivity.BeamCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance Audio.Directivity.CodingKeys()
{
  v1 = 0x65726964696E6D6FLL;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000016;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1835099490;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance Audio.Directivity.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized Audio.Directivity.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Audio.Directivity.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Audio.Directivity.CodingKeys and conformance Audio.Directivity.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Audio.Directivity.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Audio.Directivity.CodingKeys and conformance Audio.Directivity.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Audio.Directivity.OmnidirectionalCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Audio.Directivity.OmnidirectionalCodingKeys and conformance Audio.Directivity.OmnidirectionalCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Audio.Directivity.OmnidirectionalCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Audio.Directivity.OmnidirectionalCodingKeys and conformance Audio.Directivity.OmnidirectionalCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance Audio.Directivity.SphericalApproximationCodingKeys()
{
  if (*v0)
  {
    return 0x41676E696E65706FLL;
  }

  else
  {
    return 0x726574656D616964;
  }
}

void protocol witness for CodingKey.init(stringValue:) in conformance Audio.Directivity.SphericalApproximationCodingKeys(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x726574656D616964 && a2 == 0xE800000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x41676E696E65706FLL && a2 == 0xEC000000656C676ELL)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Audio.Directivity.SphericalApproximationCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Audio.Directivity.SphericalApproximationCodingKeys and conformance Audio.Directivity.SphericalApproximationCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Audio.Directivity.SphericalApproximationCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Audio.Directivity.SphericalApproximationCodingKeys and conformance Audio.Directivity.SphericalApproximationCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Audio.Directivity.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy17RealityFoundation5AudioO11DirectivityO32SphericalApproximationCodingKeys33_1928A484B4E4C4067D3BE3233C707E40LLOGMd, &_ss22KeyedEncodingContainerVy17RealityFoundation5AudioO11DirectivityO32SphericalApproximationCodingKeys33_1928A484B4E4C4067D3BE3233C707E40LLOGMR);
  v26 = *(v3 - 8);
  v27 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v25 = &v21 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy17RealityFoundation5AudioO11DirectivityO25OmnidirectionalCodingKeys33_1928A484B4E4C4067D3BE3233C707E40LLOGMd, &_ss22KeyedEncodingContainerVy17RealityFoundation5AudioO11DirectivityO25OmnidirectionalCodingKeys33_1928A484B4E4C4067D3BE3233C707E40LLOGMR);
  v23 = *(v5 - 8);
  v24 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v22 = &v21 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy17RealityFoundation5AudioO11DirectivityO14BeamCodingKeys33_1928A484B4E4C4067D3BE3233C707E40LLOGMd, &_ss22KeyedEncodingContainerVy17RealityFoundation5AudioO11DirectivityO14BeamCodingKeys33_1928A484B4E4C4067D3BE3233C707E40LLOGMR);
  v21 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v21 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy17RealityFoundation5AudioO11DirectivityO10CodingKeys33_1928A484B4E4C4067D3BE3233C707E40LLOGMd, &_ss22KeyedEncodingContainerVy17RealityFoundation5AudioO11DirectivityO10CodingKeys33_1928A484B4E4C4067D3BE3233C707E40LLOGMR);
  v28 = *(v10 - 8);
  v29 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v21 - v11;
  v13 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type Audio.Directivity.CodingKeys and conformance Audio.Directivity.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (v13)
  {
    if (v13 != 1)
    {
      v32 = 1;
      lazy protocol witness table accessor for type Audio.Directivity.OmnidirectionalCodingKeys and conformance Audio.Directivity.OmnidirectionalCodingKeys();
      v18 = v22;
      v19 = v29;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v23 + 8))(v18, v24);
      return (*(v28 + 8))(v12, v19);
    }

    v35 = 2;
    lazy protocol witness table accessor for type Audio.Directivity.SphericalApproximationCodingKeys and conformance Audio.Directivity.SphericalApproximationCodingKeys();
    v14 = v25;
    v15 = v29;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v34 = 0;
    v16 = v27;
    v17 = v30;
    KeyedEncodingContainer.encode(_:forKey:)();
    if (!v17)
    {
      v33 = 1;
      KeyedEncodingContainer.encode(_:forKey:)();
    }

    (*(v26 + 8))(v14, v16);
  }

  else
  {
    v31 = 0;
    lazy protocol witness table accessor for type Audio.Directivity.BeamCodingKeys and conformance Audio.Directivity.BeamCodingKeys();
    v15 = v29;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    KeyedEncodingContainer.encode(_:forKey:)();
    (*(v21 + 8))(v9, v7);
  }

  return (*(v28 + 8))(v12, v15);
}

uint64_t Audio.Directivity.hash(into:)()
{
  v1 = *v0;
  if (!*(v0 + 16))
  {
    MEMORY[0x1C68F4C10](0);
    if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v4 = v1;
    }

    else
    {
      v4 = 0;
    }

    return MEMORY[0x1C68F4C50](v4);
  }

  if (*(v0 + 16) == 1)
  {
    v2 = v0[1];
    MEMORY[0x1C68F4C10](2);
    if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v3 = v1;
    }

    else
    {
      v3 = 0;
    }

    MEMORY[0x1C68F4C50](v3);
    if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v4 = v2;
    }

    else
    {
      v4 = 0;
    }

    return MEMORY[0x1C68F4C50](v4);
  }

  return MEMORY[0x1C68F4C10](1);
}

Swift::Int Audio.Directivity.hashValue.getter()
{
  Hasher.init(_seed:)();
  Audio.Directivity.hash(into:)();
  return Hasher._finalize()();
}

uint64_t Audio.Directivity.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy17RealityFoundation5AudioO11DirectivityO32SphericalApproximationCodingKeys33_1928A484B4E4C4067D3BE3233C707E40LLOGMd, &_ss22KeyedDecodingContainerVy17RealityFoundation5AudioO11DirectivityO32SphericalApproximationCodingKeys33_1928A484B4E4C4067D3BE3233C707E40LLOGMR);
  v4 = *(v3 - 8);
  v42 = v3;
  v43 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v45 = &v39 - v5;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy17RealityFoundation5AudioO11DirectivityO25OmnidirectionalCodingKeys33_1928A484B4E4C4067D3BE3233C707E40LLOGMd, &_ss22KeyedDecodingContainerVy17RealityFoundation5AudioO11DirectivityO25OmnidirectionalCodingKeys33_1928A484B4E4C4067D3BE3233C707E40LLOGMR);
  v44 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v7 = &v39 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy17RealityFoundation5AudioO11DirectivityO14BeamCodingKeys33_1928A484B4E4C4067D3BE3233C707E40LLOGMd, &_ss22KeyedDecodingContainerVy17RealityFoundation5AudioO11DirectivityO14BeamCodingKeys33_1928A484B4E4C4067D3BE3233C707E40LLOGMR);
  v41 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v39 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy17RealityFoundation5AudioO11DirectivityO10CodingKeys33_1928A484B4E4C4067D3BE3233C707E40LLOGMd, &_ss22KeyedDecodingContainerVy17RealityFoundation5AudioO11DirectivityO10CodingKeys33_1928A484B4E4C4067D3BE3233C707E40LLOGMR);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v39 - v13;
  v15 = a1[3];
  v48 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  lazy protocol witness table accessor for type Audio.Directivity.CodingKeys and conformance Audio.Directivity.CodingKeys();
  v16 = v47;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v16)
  {
    v17 = v44;
    v18 = v45;
    v39 = 0;
    v47 = v12;
    v19 = v46;
    v20 = KeyedDecodingContainer.allKeys.getter();
    v21 = (2 * *(v20 + 16)) | 1;
    v49 = v20;
    v50 = v20 + 32;
    v51 = 0;
    v52 = v21;
    v22 = specialized Collection<>.popFirst()();
    if (v22 == 3 || v51 != v52 >> 1)
    {
      v27 = type metadata accessor for DecodingError();
      swift_allocError();
      v29 = v28;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR);
      *v29 = &type metadata for Audio.Directivity;
      KeyedDecodingContainer.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v27 - 8) + 104))(v29, *MEMORY[0x1E69E6AF8], v27);
      swift_willThrow();
    }

    else if (v22)
    {
      if (v22 == 1)
      {
        v53 = 1;
        lazy protocol witness table accessor for type Audio.Directivity.OmnidirectionalCodingKeys and conformance Audio.Directivity.OmnidirectionalCodingKeys();
        v23 = v39;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        if (!v23)
        {
          (*(v17 + 8))(v7, v40);
          (*(v47 + 8))(v14, v11);
          swift_unknownObjectRelease();
          v24 = 2;
          v25 = 0;
          v26 = 0;
LABEL_16:
          *v19 = v25;
          *(v19 + 8) = v26;
          *(v19 + 16) = v24;
          return __swift_destroy_boxed_opaque_existential_1(v48);
        }
      }

      else
      {
        v53 = 2;
        lazy protocol witness table accessor for type Audio.Directivity.SphericalApproximationCodingKeys and conformance Audio.Directivity.SphericalApproximationCodingKeys();
        v33 = v18;
        v34 = v39;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        if (!v34)
        {
          v53 = 0;
          v35 = v42;
          KeyedDecodingContainer.decode(_:forKey:)();
          v36 = v47;
          v25 = v37;
          v53 = 1;
          KeyedDecodingContainer.decode(_:forKey:)();
          v26 = v38;
          (*(v43 + 8))(v33, v35);
          (*(v36 + 8))(v14, v11);
          swift_unknownObjectRelease();
          v24 = 1;
          goto LABEL_16;
        }
      }
    }

    else
    {
      v53 = 0;
      lazy protocol witness table accessor for type Audio.Directivity.BeamCodingKeys and conformance Audio.Directivity.BeamCodingKeys();
      v31 = v39;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (!v31)
      {
        KeyedDecodingContainer.decode(_:forKey:)();
        v25 = v32;
        (*(v41 + 8))(v10, v8);
        (*(v47 + 8))(v14, v11);
        swift_unknownObjectRelease();
        v24 = 0;
        v26 = 0;
        goto LABEL_16;
      }
    }

    (*(v47 + 8))(v14, v11);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(v48);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Audio.Directivity()
{
  Hasher.init(_seed:)();
  Audio.Directivity.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Audio.Directivity()
{
  Hasher.init(_seed:)();
  Audio.Directivity.hash(into:)();
  return Hasher._finalize()();
}

BOOL specialized static Audio.Directivity.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 16);
  if (!*(a1 + 16))
  {
    return !*(a2 + 16) && v2 == v3;
  }

  v5 = *(a2 + 8);
  if (*(a1 + 16) == 1)
  {
    if (v4 == 1 && v2 == v3)
    {
      return *(a1 + 8) == v5;
    }

    return 0;
  }

  v7 = *&v5 | *&v3;
  return v4 == 2 && v7 == 0;
}

unint64_t lazy protocol witness table accessor for type Audio.Directivity.CodingKeys and conformance Audio.Directivity.CodingKeys()
{
  result = lazy protocol witness table cache variable for type Audio.Directivity.CodingKeys and conformance Audio.Directivity.CodingKeys;
  if (!lazy protocol witness table cache variable for type Audio.Directivity.CodingKeys and conformance Audio.Directivity.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Audio.Directivity.CodingKeys, &unk_1F41113B8, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type Audio.Directivity.CodingKeys and conformance Audio.Directivity.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Audio.Directivity.CodingKeys and conformance Audio.Directivity.CodingKeys;
  if (!lazy protocol witness table cache variable for type Audio.Directivity.CodingKeys and conformance Audio.Directivity.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Audio.Directivity.CodingKeys, &unk_1F41113B8, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type Audio.Directivity.CodingKeys and conformance Audio.Directivity.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Audio.Directivity.CodingKeys and conformance Audio.Directivity.CodingKeys;
  if (!lazy protocol witness table cache variable for type Audio.Directivity.CodingKeys and conformance Audio.Directivity.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Audio.Directivity.CodingKeys, &unk_1F41113B8, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type Audio.Directivity.CodingKeys and conformance Audio.Directivity.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Audio.Directivity.CodingKeys and conformance Audio.Directivity.CodingKeys;
  if (!lazy protocol witness table cache variable for type Audio.Directivity.CodingKeys and conformance Audio.Directivity.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Audio.Directivity.CodingKeys, &unk_1F41113B8, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type Audio.Directivity.CodingKeys and conformance Audio.Directivity.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Audio.Directivity.SphericalApproximationCodingKeys and conformance Audio.Directivity.SphericalApproximationCodingKeys()
{
  result = lazy protocol witness table cache variable for type Audio.Directivity.SphericalApproximationCodingKeys and conformance Audio.Directivity.SphericalApproximationCodingKeys;
  if (!lazy protocol witness table cache variable for type Audio.Directivity.SphericalApproximationCodingKeys and conformance Audio.Directivity.SphericalApproximationCodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Audio.Directivity.SphericalApproximationCodingKeys, &unk_1F41114F8, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type Audio.Directivity.SphericalApproximationCodingKeys and conformance Audio.Directivity.SphericalApproximationCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Audio.Directivity.SphericalApproximationCodingKeys and conformance Audio.Directivity.SphericalApproximationCodingKeys;
  if (!lazy protocol witness table cache variable for type Audio.Directivity.SphericalApproximationCodingKeys and conformance Audio.Directivity.SphericalApproximationCodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Audio.Directivity.SphericalApproximationCodingKeys, &unk_1F41114F8, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type Audio.Directivity.SphericalApproximationCodingKeys and conformance Audio.Directivity.SphericalApproximationCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Audio.Directivity.SphericalApproximationCodingKeys and conformance Audio.Directivity.SphericalApproximationCodingKeys;
  if (!lazy protocol witness table cache variable for type Audio.Directivity.SphericalApproximationCodingKeys and conformance Audio.Directivity.SphericalApproximationCodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Audio.Directivity.SphericalApproximationCodingKeys, &unk_1F41114F8, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type Audio.Directivity.SphericalApproximationCodingKeys and conformance Audio.Directivity.SphericalApproximationCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Audio.Directivity.SphericalApproximationCodingKeys and conformance Audio.Directivity.SphericalApproximationCodingKeys;
  if (!lazy protocol witness table cache variable for type Audio.Directivity.SphericalApproximationCodingKeys and conformance Audio.Directivity.SphericalApproximationCodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Audio.Directivity.SphericalApproximationCodingKeys, &unk_1F41114F8, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type Audio.Directivity.SphericalApproximationCodingKeys and conformance Audio.Directivity.SphericalApproximationCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Audio.Directivity.OmnidirectionalCodingKeys and conformance Audio.Directivity.OmnidirectionalCodingKeys()
{
  result = lazy protocol witness table cache variable for type Audio.Directivity.OmnidirectionalCodingKeys and conformance Audio.Directivity.OmnidirectionalCodingKeys;
  if (!lazy protocol witness table cache variable for type Audio.Directivity.OmnidirectionalCodingKeys and conformance Audio.Directivity.OmnidirectionalCodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Audio.Directivity.OmnidirectionalCodingKeys, &unk_1F4111468, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type Audio.Directivity.OmnidirectionalCodingKeys and conformance Audio.Directivity.OmnidirectionalCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Audio.Directivity.OmnidirectionalCodingKeys and conformance Audio.Directivity.OmnidirectionalCodingKeys;
  if (!lazy protocol witness table cache variable for type Audio.Directivity.OmnidirectionalCodingKeys and conformance Audio.Directivity.OmnidirectionalCodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Audio.Directivity.OmnidirectionalCodingKeys, &unk_1F4111468, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type Audio.Directivity.OmnidirectionalCodingKeys and conformance Audio.Directivity.OmnidirectionalCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Audio.Directivity.OmnidirectionalCodingKeys and conformance Audio.Directivity.OmnidirectionalCodingKeys;
  if (!lazy protocol witness table cache variable for type Audio.Directivity.OmnidirectionalCodingKeys and conformance Audio.Directivity.OmnidirectionalCodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Audio.Directivity.OmnidirectionalCodingKeys, &unk_1F4111468, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type Audio.Directivity.OmnidirectionalCodingKeys and conformance Audio.Directivity.OmnidirectionalCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Audio.Directivity.BeamCodingKeys and conformance Audio.Directivity.BeamCodingKeys()
{
  result = lazy protocol witness table cache variable for type Audio.Directivity.BeamCodingKeys and conformance Audio.Directivity.BeamCodingKeys;
  if (!lazy protocol witness table cache variable for type Audio.Directivity.BeamCodingKeys and conformance Audio.Directivity.BeamCodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Audio.Directivity.BeamCodingKeys, &unk_1F4111448, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type Audio.Directivity.BeamCodingKeys and conformance Audio.Directivity.BeamCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Audio.Directivity.BeamCodingKeys and conformance Audio.Directivity.BeamCodingKeys;
  if (!lazy protocol witness table cache variable for type Audio.Directivity.BeamCodingKeys and conformance Audio.Directivity.BeamCodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Audio.Directivity.BeamCodingKeys, &unk_1F4111448, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type Audio.Directivity.BeamCodingKeys and conformance Audio.Directivity.BeamCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Audio.Directivity.BeamCodingKeys and conformance Audio.Directivity.BeamCodingKeys;
  if (!lazy protocol witness table cache variable for type Audio.Directivity.BeamCodingKeys and conformance Audio.Directivity.BeamCodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Audio.Directivity.BeamCodingKeys, &unk_1F4111448, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type Audio.Directivity.BeamCodingKeys and conformance Audio.Directivity.BeamCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Audio.Directivity.BeamCodingKeys and conformance Audio.Directivity.BeamCodingKeys;
  if (!lazy protocol witness table cache variable for type Audio.Directivity.BeamCodingKeys and conformance Audio.Directivity.BeamCodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Audio.Directivity.BeamCodingKeys, &unk_1F4111448, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type Audio.Directivity.BeamCodingKeys and conformance Audio.Directivity.BeamCodingKeys);
  }

  return result;
}

uint64_t specialized Audio.Directivity.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1835099490 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65726964696E6D6FLL && a2 == 0xEF6C616E6F697463 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001C18EA2A0 == a2)
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

Swift::Int Entity.CoordinateSpaceReference.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1C68F4C10](v1);
  return Hasher._finalize()();
}

void Entity.transformMatrix(relativeTo:)(char *a1@<X0>, float32x4_t *a2@<X8>)
{
  v4 = *a1;
  if (RESceneSpaceRootComponentFindComponentInHierarchy() && (v18[0] = v4, specialized static Entity.conversionMatrix(from:to:requiresImmersiveSpaceOpen:)(v18, 1, v19), (v20 & 1) == 0))
  {
    v16 = v19[2];
    v17 = v19[3];
    v14 = v19[0];
    v15 = v19[1];
    *v10.i64 = findWorldMatrix4x4FFromTransformComponent(_:)(v2);
    v5 = 0;
    v6 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v14, v10.f32[0]), v15, *v10.f32, 1), v16, v10, 2), v17, v10, 3);
    v7 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v14, v11.f32[0]), v15, *v11.f32, 1), v16, v11, 2), v17, v11, 3);
    v8 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v14, v12.f32[0]), v15, *v12.f32, 1), v16, v12, 2), v17, v12, 3);
    v9 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v14, v13.f32[0]), v15, *v13.f32, 1), v16, v13, 2), v17, v13, 3);
    v18[0] = 0;
  }

  else
  {
    v5 = 1;
    v6 = 0uLL;
    v7 = 0uLL;
    v8 = 0uLL;
    v9 = 0uLL;
  }

  *a2 = v6;
  a2[1] = v7;
  a2[2] = v8;
  a2[3] = v9;
  a2[4].i8[0] = v5;
}

double findWorldMatrix4x4FFromTransformComponent(_:)(uint64_t a1)
{
  if (MEMORY[0x1C69004D0](*(a1 + 16)))
  {
    RETransformServiceGetWorldMatrix4x4F();
  }

  else
  {
    RETransformComponentGetComponentType();
    if (REEntityGetComponentByClass())
    {
      RETransformComponentGetWorldMatrix4x4F();
    }

    else
    {
      v2 = specialized HasHierarchy.parent.getter();
      if (v2)
      {
        v3 = findWorldMatrix4x4FFromTransformComponent(_:)(v2);

        return v3;
      }

      else
      {
        *&result = 1065353216;
      }
    }
  }

  return result;
}

uint64_t specialized static Entity.conversionMatrix(from:to:requiresImmersiveSpaceOpen:)@<X0>(char *a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v6 = *a2;
  IsSelfInImmersiveSpace = RESceneSpaceRootComponentGetIsSelfInImmersiveSpace();
  result = RESceneSpaceRootComponentGetIsImmersiveSpaceOpen();
  if ((v6 & 1) == 0)
  {
    if ((IsSelfInImmersiveSpace & 1) == 0)
    {
      goto LABEL_7;
    }

LABEL_6:
    v13 = 1;
    v9 = 0uLL;
    v10 = 0uLL;
    v11 = 0uLL;
    v12 = 0uLL;
    goto LABEL_8;
  }

  if (!(result & 1 | ((a3 & 1) == 0)))
  {
    goto LABEL_6;
  }

  if (IsSelfInImmersiveSpace)
  {
LABEL_7:
    v13 = 0;
    v12 = *&zmmword_1C1887630[48];
    v11 = *&zmmword_1C1887630[32];
    v10 = *&zmmword_1C1887630[16];
    v9 = *zmmword_1C1887630;
    goto LABEL_8;
  }

  result = RESceneSpaceRootComponentGetSceneToImmersiveTransform();
  v13 = 0;
LABEL_8:
  *a4 = v9;
  *(a4 + 16) = v10;
  *(a4 + 32) = v11;
  *(a4 + 48) = v12;
  *(a4 + 64) = v13;
  return result;
}

unint64_t lazy protocol witness table accessor for type Entity.CoordinateSpaceReference and conformance Entity.CoordinateSpaceReference()
{
  result = lazy protocol witness table cache variable for type Entity.CoordinateSpaceReference and conformance Entity.CoordinateSpaceReference;
  if (!lazy protocol witness table cache variable for type Entity.CoordinateSpaceReference and conformance Entity.CoordinateSpaceReference)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Entity.CoordinateSpaceReference, &type metadata for Entity.CoordinateSpaceReference, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type Entity.CoordinateSpaceReference and conformance Entity.CoordinateSpaceReference);
  }

  return result;
}

uint64_t one-time initialization function for SpatialMediaLogger()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, SpatialMediaLogger);
  __swift_project_value_buffer(v0, SpatialMediaLogger);
  if (one-time initialization token for SpatialMediaLog != -1)
  {
    swift_once();
  }

  v1 = SpatialMediaLog;
  return Logger.init(_:)();
}

uint64_t one-time initialization function for SpatialMediaLog()
{
  type metadata accessor for OS_os_log();
  result = OS_os_log.init(subsystem:category:)();
  SpatialMediaLog = result;
  return result;
}

uint64_t AudioFileResource.CreateOptions.mixGroupName.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

void AudioFileResource.CreateOptions.mixGroupName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
}

void AudioFileResource.CreateOptions.normalization.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  *a1 = *(v1 + 24);
  *(a1 + 8) = v2;
}

uint64_t AudioFileResource.CreateOptions.normalization.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 24) = *result;
  *(v1 + 32) = v2;
  return result;
}

void AudioFileResource.CreateOptions.calibration.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  *a1 = *(v1 + 40);
  *(a1 + 8) = v2;
}

uint64_t AudioFileResource.CreateOptions.calibration.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 40) = *result;
  *(v1 + 48) = v2;
  return result;
}

double AudioFileResource.CreateOptions.init()@<D0>(uint64_t a1@<X8>)
{
  *&result = 257;
  *a1 = 257;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 8) = 0;
  *(a1 + 32) = -1;
  *(a1 + 40) = 0;
  *(a1 + 48) = -1;
  return result;
}

uint64_t AudioFileResource.CreateOptions.init(from:)@<X0>(uint64_t a2@<X8>)
{
  InputMode = REAudioFileAssetGetInputMode();
  if (InputMode >= 3)
  {
    goto LABEL_21;
  }

  v4 = InputMode;
  Streaming = REAudioFileAssetGetStreaming();
  LoopCount = REAudioFileAssetGetLoopCount();
  RandomizeStart = REAudioFileAssetGetRandomizeStart();
  v8 = REAudioFileAssetGetMixGroupName();
  if (v8)
  {
    v9 = v8;
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0;
  }

  NormalizationMode = REAudioFileAssetGetNormalizationMode();
  REAudioFileAssetGetTargetLUFS();
  if (NormalizationMode == 2)
  {
    v16 = 0;
LABEL_12:
    v15 = v14;
    goto LABEL_13;
  }

  v15 = 0.0;
  if (NormalizationMode != 1)
  {
    v16 = -1;
    goto LABEL_13;
  }

  if (v14 != *MEMORY[0x1E6998DF0])
  {
    v16 = 1;
    goto LABEL_12;
  }

  v16 = 2;
LABEL_13:
  CalibrationMode = REAudioFileAssetGetCalibrationMode();
  result = REAudioFileAssetGetCalibrationLevel();
  switch(CalibrationMode)
  {
    case 0:
      v21 = 0;
      v20 = -1;
LABEL_20:
      *a2 = 0x20001u >> (8 * (v4 & 0x1F));
      *(a2 + 1) = Streaming ^ 1;
      *(a2 + 2) = LoopCount != 0;
      *(a2 + 3) = RandomizeStart;
      *(a2 + 8) = v10;
      *(a2 + 16) = v12;
      *(a2 + 24) = v15;
      *(a2 + 32) = v16;
      *(a2 + 40) = v21;
      *(a2 + 48) = v20;
      return result;
    case 1:
      v20 = 0;
LABEL_19:
      v21 = v19;
      goto LABEL_20;
    case 2:
      v20 = 1;
      goto LABEL_19;
  }

LABEL_21:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t specialized static AudioFileResource.CreateOptions.== infix(_:_:)(double *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a1 + 2);
  v3 = *(a1 + 3);
  v4 = a1[3];
  v25 = *(a1 + 32);
  v5 = a1[5];
  v6 = *(a1 + 48);
  v7 = a2[2];
  v8 = a2[3];
  v23 = *(a2 + 1);
  v24 = *(a1 + 1);
  v27 = *(a2 + 2);
  v28 = *(a1 + 2);
  v9 = *(a1 + 1) == 0;
  v10 = *(a2 + 3);
  if (*(a1 + 1))
  {
    v11 = 0x64616F6C657270;
  }

  else
  {
    v11 = 0x6D6165727473;
  }

  v26 = a2[32];
  if (v9)
  {
    v12 = 0xE600000000000000;
  }

  else
  {
    v12 = 0xE700000000000000;
  }

  v13 = *(a2 + 5);
  if (a2[1])
  {
    v14 = 0x64616F6C657270;
  }

  else
  {
    v14 = 0x6D6165727473;
  }

  if (a2[1])
  {
    v15 = 0xE700000000000000;
  }

  else
  {
    v15 = 0xE600000000000000;
  }

  v16 = a2[48];
  if (v11 == v14 && v12 == v15)
  {

    result = 0;
    if (v2 != v7 || ((v3 ^ v8) & 1) != 0)
    {
      return result;
    }

LABEL_23:
    if (v28)
    {
      if (!v27 || (v24 != v23 || v28 != v27) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v27)
    {
      return 0;
    }

    if (v25 == 255)
    {
      if (v26 != 255)
      {
        return 0;
      }

LABEL_43:
      if (v6 == 255)
      {
        if (v16 == 255)
        {
          return 1;
        }
      }

      else if (v16 != 255)
      {
        if (v6)
        {
          if ((v16 & 1) == 0)
          {
            return 0;
          }
        }

        else if (v16)
        {
          return 0;
        }

        if (v5 == v13)
        {
          return 1;
        }
      }

      return 0;
    }

    if (v26 == 255)
    {
      return 0;
    }

    if (v25)
    {
      if (v25 != 1)
      {
        result = 0;
        if (v26 != 2 || v10 != 0.0)
        {
          return result;
        }

        goto LABEL_43;
      }

      result = 0;
      if (v26 != 1)
      {
        return result;
      }
    }

    else
    {
      result = 0;
      if (v26)
      {
        return result;
      }
    }

    if (v4 != v10)
    {
      return result;
    }

    goto LABEL_43;
  }

  v22 = *(a2 + 3);
  v18 = v4;
  v19 = a2[48];
  v20 = v6;
  v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

  result = 0;
  if ((v21 & 1) != 0 && ((v2 ^ v7) & 1) == 0)
  {
    v6 = v20;
    v16 = v19;
    v4 = v18;
    v10 = v22;
    if (((v3 ^ v8) & 1) == 0)
    {
      goto LABEL_23;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AudioFileResource.CreateOptions(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 49))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t storeEnumTagSinglePayload for AudioFileResource.CreateOptions(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

CGColorRef HasAmbientLight.light.getter@<X0>(uint64_t a1@<X8>)
{
  (*(*v1 + 96))(&v7);
  _s10RealityKit6EntityC12ComponentSetV5doGet_21borrowStrongReferencexSgxm_SbtAA0D0RzlFAA014__AmbientLightD0V_Tt0B5(&v5);

  result = v5;
  if (v5)
  {
    v4 = v6;
  }

  else
  {
    result = CGColorCreateGenericRGB(1.0, 1.0, 1.0, 1.0);
    v4 = 1143652352;
  }

  *a1 = result;
  *(a1 + 8) = v4;
  return result;
}

uint64_t key path setter for HasAmbientLight.light : <A>A(uint64_t a1)
{
  v1 = *(a1 + 8);
  v4 = *a1;
  v5 = v1;
  v2 = v4;
  return HasAmbientLight.light.setter(&v4);
}

uint64_t HasAmbientLight.light.setter(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = (*(*v1 + 112))(v7);
  _s10RealityKit6EntityC12ComponentSetV02doE0_8newValue21returnStrongReferenceyxm_xSgSbtAA0D0RzlFAA014__AmbientLightD0V_TtB5(v2, v3, 0, *v5);

  return v4(v7, 0);
}

void (*HasAmbientLight.light.modify(void *a1, uint64_t a2, uint64_t a3))(void ***a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x28uLL);
  }

  *a1 = v7;
  v7[3] = a3;
  v7[4] = v3;
  v7[2] = a2;
  HasAmbientLight.light.getter(v7);
  return HasAmbientLight.light.modify;
}

void HasAmbientLight.light.modify(void ***a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  v4 = *(*a1 + 2);
  v6 = v3;
  v7 = v4;
  if (a2)
  {
    v5 = v3;
    HasAmbientLight.light.setter(&v6);
  }

  else
  {
    HasAmbientLight.light.setter(&v6);
  }

  free(v2);
}

double PhysicsMotionComponent.init()@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

void static PhysicsMotionComponent.__fromCore(_:)(_OWORD *a2@<X8>)
{
  REMotionStateComponentGetLinearVelocity();
  v5 = v3;
  REMotionStateComponentGetAngularVelocity();
  *a2 = v5;
  a2[1] = v4;
}

uint64_t PhysicsMotionComponent.__toCore(_:)(void *a1)
{
  REMotionStateComponentSetLinearVelocity();
  REMotionStateComponentSetAngularVelocity();

  return RENetworkMarkComponentDirty();
}

void protocol witness for static Component.__fromCore(_:) in conformance PhysicsMotionComponent(_OWORD *a2@<X8>)
{
  REMotionStateComponentGetLinearVelocity();
  v5 = v3;
  REMotionStateComponentGetAngularVelocity();
  *a2 = v5;
  a2[1] = v4;
}

uint64_t protocol witness for Component.__toCore(_:) in conformance PhysicsMotionComponent(void *a1)
{
  REMotionStateComponentSetLinearVelocity();
  REMotionStateComponentSetAngularVelocity();

  return RENetworkMarkComponentDirty();
}

uint64_t specialized Collection.index(_:offsetBy:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    v3 = a2;
    v4 = result;
    if (!a2)
    {
      return v4;
    }

    v5 = a2 + result;
    v6 = result;
    while ((v4 & 0x8000000000000000) == 0)
    {
      result = REEntityGetChildCount();
      if (v6 >= result)
      {
        goto LABEL_10;
      }

      ++v6;
      if (!--v3)
      {
        return v5;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  __break(1u);
  return result;
}

void specialized Collection.index(_:offsetBy:)(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  if (a4 < 0)
  {
    goto LABEL_26;
  }

  v7 = a3;
  v8 = a2;
  v9 = a1;
  if (!a4)
  {
LABEL_22:
    outlined copy of [A : B].Index._Variant<A, B>(v9, v8, v7 & 1);
    v14 = v9;
    v15 = v7;
LABEL_23:
    *a5 = v14;
    *(a5 + 8) = v8;
    *(a5 + 16) = v15 & 1;
    return;
  }

  v10 = v5;
  v11 = *v5;
  v28 = v10[1];
  outlined copy of [A : B].Index._Variant<A, B>(a1, a2, a3 & 1);
  v12 = 0;
  v13 = a4 - 1;
  while (1)
  {
    v17 = v28;
    if (v28)
    {
      goto LABEL_9;
    }

    if (v11)
    {
      v17 = AnimationLibraryResource.keyedResources.getter();
LABEL_9:
      if ((v9 & 0x8000000000000000) != 0)
      {
        goto LABEL_21;
      }

      goto LABEL_10;
    }

    v17 = MEMORY[0x1E69E7CC8];
    if ((v9 & 0x8000000000000000) != 0)
    {
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

LABEL_10:
    v14 = 1 << *(v17 + 32);
    if (v9 >= v14)
    {
      goto LABEL_21;
    }

    v18 = v9 >> 6;
    v19 = v17[(v9 >> 6) + 8];
    if (((v19 >> v9) & 1) == 0)
    {
      break;
    }

    if (*(v17 + 9) != v8)
    {
      goto LABEL_25;
    }

    v20 = v19 & (-2 << (v9 & 0x3F));
    if (v20)
    {
      v14 = __clz(__rbit64(v20)) | v9 & 0x7FFFFFFFFFFFFFC0;
      outlined init with copy of [String : String](&v28, v27, &_sSDySS10RealityKit17AnimationResourceCGSgMd, &_sSDySS10RealityKit17AnimationResourceCGSgMR);
    }

    else
    {
      v21 = v18 << 6;
      v22 = v18 + 1;
      v23 = &v17[v18 + 9];
      while (v22 < (v14 + 63) >> 6)
      {
        v25 = *v23++;
        v24 = v25;
        v21 += 64;
        ++v22;
        if (v25)
        {
          outlined init with copy of [String : String](&v28, v27, &_sSDySS10RealityKit17AnimationResourceCGSgMd, &_sSDySS10RealityKit17AnimationResourceCGSgMR);
          outlined consume of [String : AudioResource].Index._Variant(v9, v8, v7 & 1);
          v14 = __clz(__rbit64(v24)) + v21;
          goto LABEL_5;
        }
      }

      outlined init with copy of [String : String](&v28, v27, &_sSDySS10RealityKit17AnimationResourceCGSgMd, &_sSDySS10RealityKit17AnimationResourceCGSgMR);
      outlined consume of [String : AudioResource].Index._Variant(v9, v8, v7 & 1);
    }

LABEL_5:
    v8 = *(v17 + 9);

    v7 = 0;
    v15 = 0;
    v9 = v14;
    if (v12++ == v13)
    {
      goto LABEL_23;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
}

uint64_t _sSa9repeating5countSayxGx_SitcfC10RealityKit9TransformV_Tt1g5(uint64_t result, __n128 a2, __n128 a3, __n128 a4)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = result;
    if (result)
    {
      result = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(result + 16) = v4;
      v5 = 32;
      do
      {
        v6 = (result + v5);
        *v6 = a2;
        v6[1] = a3;
        v6[2] = a4;
        v5 += 48;
        --v4;
      }

      while (v4);
    }

    else
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  return result;
}

unint64_t _sSa9repeating5countSayxGx_SitcfCSf_Tt1g5(unint64_t result, int32x2_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    return result;
  }

  v2 = result;
  if (!result)
  {
    return MEMORY[0x1E69E7CC0];
  }

  result = static Array._allocateBufferUninitialized(minimumCapacity:)();
  *(result + 16) = v2;
  v3 = (result + 32);
  if (v2 <= 7)
  {
    v4 = 0;
    v5 = a2.i32[0];
LABEL_9:
    v9 = v2 - v4;
    do
    {
      *v3++ = v5;
      --v9;
    }

    while (v9);
    return result;
  }

  v4 = v2 & 0x7FFFFFFFFFFFFFF8;
  v3 += v2 & 0x7FFFFFFFFFFFFFF8;
  v5 = a2.i32[0];
  v6 = vdupq_lane_s32(a2, 0);
  v7 = (result + 48);
  v8 = v2 & 0x7FFFFFFFFFFFFFF8;
  do
  {
    v7[-1] = v6;
    *v7 = v6;
    v7 += 2;
    v8 -= 8;
  }

  while (v8);
  if (v4 != v2)
  {
    goto LABEL_9;
  }

  return result;
}

uint64_t AnimationLibraryResource.__deallocating_deinit()
{
  RERelease();

  return swift_deallocClassInstance();
}

uint64_t AnimationLibraryResource.resource(_:)(unint64_t a1)
{
  swift_beginAccess();
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_17;
  }

  v5 = *(v1 + 24);
  if (*(v5 + 16) <= a1)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
    v3 = result;
    *(v1 + 24) = result;
    goto LABEL_11;
  }

  v6 = v5 + 8 * a1;
  if (*(v6 + 32))
  {
    v7 = *(v6 + 32);
LABEL_15:

    return v7;
  }

  Entry = REAnimationLibraryAssetGetEntry();
  type metadata accessor for AnimationResource();
  v2 = swift_allocObject();
  v2[2] = Entry;
  if (REAssetHandleAssetType() == 11)
  {
    REAnimationSceneAssetGetRootTimeline();
  }

  Name = REAnimationAssetGetName();
  if (Name)
  {
    Name = String.init(cString:)();
  }

  else
  {
    v10 = 0xE000000000000000;
  }

  v2[3] = Name;
  v2[4] = v10;
  RERetain();
  REAssetSetSwiftObject();
  swift_beginAccess();
  v3 = *(v1 + 24);
  result = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + 24) = v3;
  if ((result & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_11:
  if (*(v3 + 16) <= a1)
  {
    __break(1u);
    goto LABEL_20;
  }

  *(v3 + 32 + 8 * a1) = v2;
  *(v1 + 24) = v3;
  swift_endAccess();

  if (*(v3 + 16) <= a1)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v7 = *(v3 + 32 + 8 * a1);
  if (v7)
  {

    goto LABEL_15;
  }

LABEL_21:
  __break(1u);
  return result;
}

void *AnimationLibraryResource.keyedResources.getter()
{
  v1 = v0;
  v2 = *(v0 + 32);
  if (v2)
  {

    return v2;
  }

  swift_beginAccess();
  v3 = *(*(v1 + 24) + 16);
  if (!v3)
  {
LABEL_19:
    KeyCount = REAnimationLibraryAssetGetKeyCount();
    if (KeyCount < 1)
    {
      v2 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_10RealityKit17AnimationResourceCTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
      *(v1 + 32) = v2;
    }

    else
    {
      v14 = KeyCount;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSPys4Int8VGMd, &_sSPys4Int8VGMR);
      v15 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v15 + 16) = v14;
      REAnimationLibraryAssetGetKeys();
      *(v15 + 16) = v14;

      v41 = *(v15 + 16);
      if (v41)
      {
        v16 = 0;
        v2 = MEMORY[0x1E69E7CC8];
        while (1)
        {
          if (v16 >= *(v15 + 16))
          {
            goto LABEL_45;
          }

          EntryIndexFromKey = REAnimationLibraryAssetGetEntryIndexFromKey();
          if (EntryIndexFromKey)
          {
            break;
          }

LABEL_23:
          if (v41 == ++v16)
          {
            goto LABEL_41;
          }
        }

        v19 = EntryIndexFromKey;
        v20 = String.init(cString:)();
        v22 = *v19;
        if ((*v19 & 0x8000000000000000) != 0)
        {
          goto LABEL_46;
        }

        v23 = *(v1 + 24);
        if (v22 >= *(v23 + 16))
        {
          goto LABEL_47;
        }

        v24 = *(v23 + 8 * v22 + 32);
        if (!v24)
        {
          goto LABEL_52;
        }

        v25 = v20;
        v26 = v21;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v28 = specialized __RawDictionaryStorage.find<A>(_:)(v25, v26);
        v30 = v2[2];
        v31 = (v29 & 1) == 0;
        v32 = __OFADD__(v30, v31);
        v33 = v30 + v31;
        if (v32)
        {
          goto LABEL_48;
        }

        v34 = v29;
        if (v2[3] >= v33)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v39 = v28;
            specialized _NativeDictionary.copy()();
            v28 = v39;
            if (v34)
            {
LABEL_22:
              v17 = v28;

              *(v2[7] + 8 * v17) = v24;

              goto LABEL_23;
            }

            goto LABEL_35;
          }
        }

        else
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v33, isUniquelyReferenced_nonNull_native);
          v28 = specialized __RawDictionaryStorage.find<A>(_:)(v25, v26);
          if ((v34 & 1) != (v35 & 1))
          {
            goto LABEL_54;
          }
        }

        if (v34)
        {
          goto LABEL_22;
        }

LABEL_35:
        v2[(v28 >> 6) + 8] |= 1 << v28;
        v36 = (v2[6] + 16 * v28);
        *v36 = v25;
        v36[1] = v26;
        *(v2[7] + 8 * v28) = v24;
        v37 = v2[2];
        v32 = __OFADD__(v37, 1);
        v38 = v37 + 1;
        if (v32)
        {
          goto LABEL_51;
        }

        v2[2] = v38;
        goto LABEL_23;
      }

      v2 = MEMORY[0x1E69E7CC8];
LABEL_41:

      *(v1 + 32) = v2;
    }

    return v2;
  }

  v4 = 4;
  while (1)
  {
    v5 = v4 - 4;
    v6 = *(v1 + 24);
    if ((v4 - 4) >= *(v6 + 16))
    {
      break;
    }

    if (!*(v6 + 8 * v4))
    {
      Entry = REAnimationLibraryAssetGetEntry();
      type metadata accessor for AnimationResource();
      v8 = swift_allocObject();
      v8[2] = Entry;
      if (REAssetHandleAssetType() == 11)
      {
        REAnimationSceneAssetGetRootTimeline();
      }

      Name = REAnimationAssetGetName();
      if (Name)
      {
        Name = String.init(cString:)();
      }

      else
      {
        v10 = 0xE000000000000000;
      }

      v8[3] = Name;
      v8[4] = v10;
      RERetain();
      REAssetSetSwiftObject();
      swift_beginAccess();
      v11 = *(v1 + 24);
      v12 = swift_isUniquelyReferenced_nonNull_native();
      *(v1 + 24) = v11;
      if ((v12 & 1) == 0)
      {
        v11 = specialized _ArrayBuffer._consumeAndCreateNew()(v11);
        *(v1 + 24) = v11;
      }

      if (v5 >= *(v11 + 16))
      {
        goto LABEL_49;
      }

      *(v11 + 8 * v4) = v8;
      *(v1 + 24) = v11;
      swift_endAccess();

      if (v5 >= *(v11 + 16))
      {
        goto LABEL_50;
      }

      if (!*(v11 + 8 * v4))
      {
        goto LABEL_53;
      }
    }

    ++v4;
    if (!--v3)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t AnimationLibraryResource.resourceArray.getter()
{
  v1 = v0;
  swift_beginAccess();
  v2 = *(*(v0 + 24) + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v12 = MEMORY[0x1E69E7CC0];
    result = specialized ContiguousArray.reserveCapacity(_:)();
    for (i = 4; ; ++i)
    {
      v5 = i - 4;
      v6 = *(v1 + 24);
      if ((i - 4) >= *(v6 + 16))
      {
        break;
      }

      if (!*(v6 + 8 * i))
      {
        Entry = REAnimationLibraryAssetGetEntry();
        type metadata accessor for AnimationResource();
        v8 = swift_allocObject();
        v8[2] = Entry;
        if (REAssetHandleAssetType() == 11)
        {
          REAnimationSceneAssetGetRootTimeline();
        }

        Name = REAnimationAssetGetName();
        if (Name)
        {
          Name = String.init(cString:)();
        }

        else
        {
          v10 = 0xE000000000000000;
        }

        v8[3] = Name;
        v8[4] = v10;
        RERetain();
        REAssetSetSwiftObject();
        swift_beginAccess();
        v11 = *(v1 + 24);
        result = swift_isUniquelyReferenced_nonNull_native();
        *(v1 + 24) = v11;
        if ((result & 1) == 0)
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew()(v11);
          v11 = result;
          *(v1 + 24) = result;
        }

        if (v5 >= *(v11 + 16))
        {
          goto LABEL_20;
        }

        *(v11 + 8 * i) = v8;
        *(v1 + 24) = v11;
        swift_endAccess();

        if (v5 >= *(v11 + 16))
        {
          goto LABEL_21;
        }

        if (!*(v11 + 8 * i))
        {
          goto LABEL_22;
        }
      }

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      result = specialized ContiguousArray._endMutation()();
      if (!--v2)
      {
        return v12;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
  }

  return result;
}

void AnimationLibraryDefinition.addResource(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24 = v3;
  v5 = *v3;
  v6 = v24[4];
  if (v6)
  {
    v7 = v24[4];
  }

  else if (v5)
  {
    v8 = a2;
    v9 = AnimationLibraryResource.resourceArray.getter();
    a2 = v8;
    v7 = v9;
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  v26 = a2;
  if (v7 >> 62)
  {
LABEL_33:
    v10 = __CocoaSet.count.getter();
  }

  else
  {
    v10 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = 0;
  while (1)
  {
    if (v10 == v11)
    {
      goto LABEL_18;
    }

    if ((v7 & 0xC000000000000001) == 0)
    {
      if (v11 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (__OFADD__(v11, 1))
      {
        break;
      }

      goto LABEL_13;
    }

    v12 = MEMORY[0x1C68F41F0](v11, v7);
    if (__OFADD__(v11, 1))
    {
      break;
    }

LABEL_13:
    v13 = *(a3 + 16);
    v14 = *(v12 + 16);

    ++v11;
    if (v13 == v14)
    {

      v16 = v26;
      v17 = v5;
      v18 = v24;
      v19 = v24[1];
      if (v19)
      {
        goto LABEL_30;
      }

      goto LABEL_22;
    }
  }

  __break(1u);
LABEL_18:

  v15 = v6;
  v16 = v26;
  v17 = v5;
  if (!v6)
  {
    if (v5)
    {
      v15 = AnimationLibraryResource.resourceArray.getter();
    }

    else
    {
      v15 = MEMORY[0x1E69E7CC0];
    }
  }

  v27 = v15;

  MEMORY[0x1C68F3650](v22);
  if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

  v18 = v24;
  v24[4] = v27;
  v19 = v24[1];
  if (v19)
  {
LABEL_30:

    v21 = v19;
    goto LABEL_31;
  }

LABEL_22:

  if (v17)
  {
    v20 = AnimationLibraryResource.keyedResources.getter();
  }

  else
  {
    v20 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_10RealityKit17AnimationResourceCTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  }

  v21 = v20;
LABEL_31:

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a3, a1, v16, isUniquelyReferenced_nonNull_native);

  v18[1] = v21;
}

void *specialized Dictionary.subscript.getter(void *result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v5 = *(*(a5 + 48) + 16 * a2);
    *result = *(*(a5 + 56) + 8 * a2);

    return v5;
  }

LABEL_8:
  __break(1u);
  return result;
}

void *specialized Dictionary.subscript.getter(void *result, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v7 = result;
  if ((a5 & 0xC000000000000001) == 0)
  {
    if (a4)
    {
      result = __CocoaDictionary.Index.age.getter();
      if (result != *(a5 + 36))
      {
        __break(1u);
        goto LABEL_15;
      }

      __CocoaDictionary.Index.key.getter();
      type metadata accessor for __REAsset();
      swift_dynamicCast();
      a2 = specialized __RawDictionaryStorage.find<A>(_:)();
      v10 = v9;

      if (v10)
      {
LABEL_12:
        v11 = *(a5 + 56);
        v8 = *(*(a5 + 48) + 8 * a2);
        *v7 = *(v11 + 8 * a2);

        return v8;
      }

      __break(1u);
    }

    if ((a2 & 0x8000000000000000) == 0 && 1 << *(a5 + 32) > a2)
    {
      if ((*(a5 + 8 * (a2 >> 6) + 64) >> a2))
      {
        if (*(a5 + 36) == a3)
        {
          goto LABEL_12;
        }

LABEL_17:
        __break(1u);
        goto LABEL_18;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (a4)
  {
    __CocoaDictionary.lookup(_:)();
    type metadata accessor for __REAsset();
    swift_dynamicCast();
    v8 = v12;
    type metadata accessor for RESceneDescriptor();
    swift_dynamicCast();
    *v7 = v12;
    return v8;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t AnimationLibraryDefinition.removeResource(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  if (v2[1])
  {
    v6 = v2[1];
  }

  else if (v5)
  {
    v6 = AnimationLibraryResource.keyedResources.getter();
  }

  else
  {
    v6 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_10RealityKit17AnimationResourceCTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  }

  v20 = v6;

  v7 = specialized Dictionary._Variant.removeValue(forKey:)(a1, a2);

  v8 = v20;
  v2[1] = v20;
  if (!v7)
  {
    return v7;
  }

  v9 = 0;
  v10 = 1 << *(v8 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(v8 + 64);
  v13 = (v10 + 63) >> 6;
  while (v12)
  {
    v14 = v9;
LABEL_16:
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    if (*(*(*(v8 + 56) + ((v14 << 9) | (8 * v15))) + 16) == *(v7 + 16))
    {
      return v7;
    }
  }

  while (1)
  {
    v14 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
      goto LABEL_28;
    }

    if (v14 >= v13)
    {
      break;
    }

    v12 = *(v8 + 64 + 8 * v14);
    ++v9;
    if (v12)
    {
      v9 = v14;
      goto LABEL_16;
    }
  }

  v16 = v2[4];
  if (v16)
  {

    v17 = v16;
  }

  else
  {

    if (v5)
    {
      v17 = AnimationLibraryResource.resourceArray.getter();
    }

    else
    {
      v17 = MEMORY[0x1E69E7CC0];
    }
  }

  v20 = v17;

  v5 = specialized MutableCollection._halfStablePartition(isSuffixElement:)(&v20, v7);

  if (v20 >> 62)
  {
LABEL_28:
    result = __CocoaSet.count.getter();
    v19 = result;
    if (result >= v5)
    {
      goto LABEL_25;
    }

    goto LABEL_29;
  }

  v19 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v19 >= v5)
  {
LABEL_25:
    specialized Array.replaceSubrange<A>(_:with:)(v5, v19);

    v2[4] = v20;
    return v7;
  }

LABEL_29:
  __break(1u);
  return result;
}

void AnimationLibraryDefinition.removeAll(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  if (v2[1])
  {
    v5 = v2[1];
  }

  else
  {
    if (v4)
    {
      v6 = AnimationLibraryResource.keyedResources.getter();
    }

    else
    {
      v6 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_10RealityKit17AnimationResourceCTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    }

    v5 = v6;
  }

  v7 = specialized _NativeDictionary.filter(_:)(v5, a1);

  v2[1] = v7;
  v8 = v2[4];
  if (v8)
  {

    v9 = v8;
  }

  else
  {

    if (v4)
    {
      v9 = AnimationLibraryResource.resourceArray.getter();
    }

    else
    {
      v9 = MEMORY[0x1E69E7CC0];
    }
  }

  v12 = v9;

  v10 = specialized MutableCollection._halfStablePartition(isSuffixElement:)(&v12, a1);

  if (v12 >> 62)
  {
    v11 = __CocoaSet.count.getter();
    if (v11 >= v10)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v11 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11 >= v10)
    {
LABEL_14:
      specialized Array.replaceSubrange<A>(_:with:)(v10, v11);

      v2[4] = v12;
      return;
    }
  }

  __break(1u);
}

void AnimationLibraryDefinition.defaultResource.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = specialized AnimationLibraryDefinition.defaultResourceKey.getter(*v0, v1, v0[2], v0[3]);
  if (v4)
  {
    if (v1)
    {
      if (*(v1 + 16))
      {
        specialized __RawDictionaryStorage.find<A>(_:)(v3, v4);
        v6 = v5;

        if (v6)
        {
LABEL_5:

          return;
        }

        return;
      }

LABEL_15:

      return;
    }

    if (!v2)
    {
      goto LABEL_15;
    }

    String.utf8CString.getter();

    EntryIndexFromKey = REAnimationLibraryAssetGetEntryIndexFromKey();

    if (!EntryIndexFromKey)
    {
      return;
    }

    v10 = *EntryIndexFromKey;
LABEL_18:
    AnimationLibraryResource.resource(_:)(v10);
    return;
  }

  v7 = v0[4];
  if (!v7)
  {
    v10 = 0;
    if (!v2)
    {
      return;
    }

    goto LABEL_18;
  }

  v8 = v7 & 0xFFFFFFFFFFFFFF8;
  if (v7 >> 62)
  {
    v11 = v0[4];
    v12 = __CocoaSet.count.getter();
    v7 = v11;
    if (v12 <= 0)
    {
      return;
    }
  }

  else if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) <= 0)
  {
    return;
  }

  if ((v7 & 0xC000000000000001) != 0)
  {
    MEMORY[0x1C68F41F0](0);
  }

  else
  {
    if (*(v8 + 16))
    {
      goto LABEL_5;
    }

    __break(1u);
  }
}

uint64_t AnimationLibraryDefinition.createAsset()()
{
  specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  swift_unownedRetainStrong();

  ServiceLocator = REEngineGetServiceLocator();
  if (MEMORY[0x1C68FE1F0](ServiceLocator))
  {
    v56 = MEMORY[0x1E69E7CC8];
    REAnimationLibraryDefinitionCreate();
    v2 = v0[4];
    v57 = v2;
    if (!v2)
    {
      if (*v0)
      {
        v2 = AnimationLibraryResource.resourceArray.getter();
      }

      else
      {
        v2 = MEMORY[0x1E69E7CC0];
      }
    }

    v50 = v0;
    v4 = v2 & 0xFFFFFFFFFFFFFF8;
    if (v2 >> 62)
    {
      goto LABEL_71;
    }

    v5 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_9:
    outlined init with copy of [String : String](&v57, v55, &_sSay10RealityKit17AnimationResourceCGSgMd, &_sSay10RealityKit17AnimationResourceCGSgMR);
    v6 = 0;
    v52 = 0;
    v7 = MEMORY[0x1E69E7CC8];
    while (1)
    {
      v8 = v6;
      if (v6 == v5)
      {
        goto LABEL_34;
      }

      while (1)
      {
        if ((v2 & 0xC000000000000001) != 0)
        {
          v9 = MEMORY[0x1C68F41F0](v8, v2);
          v6 = v8 + 1;
          if (__OFADD__(v8, 1))
          {
            goto LABEL_65;
          }
        }

        else
        {
          if (v8 >= *(v4 + 16))
          {
            goto LABEL_66;
          }

          v9 = *(v2 + 8 * v8 + 32);

          v6 = v8 + 1;
          if (__OFADD__(v8, 1))
          {
LABEL_65:
            __break(1u);
LABEL_66:
            __break(1u);
            goto LABEL_67;
          }
        }

        v10 = *(v9 + 16);
        if (!v7[2])
        {
          break;
        }

        specialized __RawDictionaryStorage.find<A>(_:)(*(v9 + 16));
        if ((v11 & 1) == 0)
        {
          break;
        }

        ++v8;
        if (v6 == v5)
        {
          goto LABEL_34;
        }
      }

      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v13 = v56;
      v53 = v56;
      v14 = specialized __RawDictionaryStorage.find<A>(_:)(v10);
      v16 = v13[2];
      v17 = (v15 & 1) == 0;
      v18 = __OFADD__(v16, v17);
      v19 = v16 + v17;
      if (v18)
      {
        goto LABEL_68;
      }

      v20 = v15;
      if (v13[3] < v19)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_26;
      }

      v23 = v14;
      specialized _NativeDictionary.copy()();
      v14 = v23;
      v7 = v53;
      if ((v20 & 1) == 0)
      {
LABEL_29:
        v7[(v14 >> 6) + 8] |= 1 << v14;
        *(v7[6] + 8 * v14) = v10;
        *(v7[7] + 8 * v14) = v52;
        v24 = v7[2];
        v18 = __OFADD__(v24, 1);
        v25 = v24 + 1;
        if (v18)
        {
          __break(1u);
LABEL_73:
          __break(1u);
LABEL_74:
          result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          return result;
        }

        v7[2] = v25;
        v22 = v52;
        goto LABEL_31;
      }

LABEL_27:
      v22 = v52;
      *(v7[7] + 8 * v14) = v52;
LABEL_31:
      v56 = v7;
      swift_endAccess();
      REAnimationLibraryDefinitionAddEntryAsset();

      v52 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
LABEL_34:

        v26 = v50;
        v27 = v50[1];
        if (v27)
        {
          v2 = v27 + 64;
          v28 = 1 << *(v27 + 32);
          v29 = -1;
          if (v28 < 64)
          {
            v29 = ~(-1 << v28);
          }

          v4 = v29 & *(v27 + 64);
          v30 = (v28 + 63) >> 6;

          v31 = 0;
          v51 = v27;
          while (2)
          {
            if (!v4)
            {
              while (1)
              {
                v32 = v31 + 1;
                if (__OFADD__(v31, 1))
                {
                  break;
                }

                if (v32 >= v30)
                {

                  v26 = v50;
                  goto LABEL_61;
                }

                v4 = *(v2 + 8 * v32);
                ++v31;
                if (v4)
                {
                  v31 = v32;
                  goto LABEL_45;
                }
              }

LABEL_67:
              __break(1u);
LABEL_68:
              __break(1u);
LABEL_69:
              __break(1u);
LABEL_70:
              __break(1u);
LABEL_71:
              v5 = __CocoaSet.count.getter();
              goto LABEL_9;
            }

LABEL_45:
            v33 = *(*(*(v27 + 56) + 8 * (__clz(__rbit64(v4)) | (v31 << 6))) + 16);
            if (!v7[2] || (specialized __RawDictionaryStorage.find<A>(_:)(v33), (v34 & 1) == 0))
            {
              swift_beginAccess();

              v35 = swift_isUniquelyReferenced_nonNull_native();
              v36 = v56;
              v54 = v56;
              v38 = specialized __RawDictionaryStorage.find<A>(_:)(v33);
              v39 = v36[2];
              v40 = (v37 & 1) == 0;
              v41 = v39 + v40;
              if (__OFADD__(v39, v40))
              {
                goto LABEL_69;
              }

              v42 = v37;
              if (v36[3] >= v41)
              {
                if (v35)
                {
                  v45 = v52;
                  v7 = v54;
                  if ((v37 & 1) == 0)
                  {
                    goto LABEL_56;
                  }
                }

                else
                {
                  specialized _NativeDictionary.copy()();
                  v45 = v52;
                  v7 = v54;
                  if ((v42 & 1) == 0)
                  {
                    goto LABEL_56;
                  }
                }
              }

              else
              {
                specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v41, v35);
                v43 = specialized __RawDictionaryStorage.find<A>(_:)(v33);
                if ((v42 & 1) != (v44 & 1))
                {
                  goto LABEL_74;
                }

                v38 = v43;
                v45 = v52;
                v7 = v54;
                if ((v42 & 1) == 0)
                {
LABEL_56:
                  v7[(v38 >> 6) + 8] |= 1 << v38;
                  *(v7[6] + 8 * v38) = v33;
                  *(v7[7] + 8 * v38) = v45;
                  v46 = v7[2];
                  v18 = __OFADD__(v46, 1);
                  v47 = v46 + 1;
                  if (v18)
                  {
                    goto LABEL_73;
                  }

                  v7[2] = v47;
LABEL_58:
                  v56 = v7;
                  swift_endAccess();
                  REAnimationLibraryDefinitionAddEntryAsset();
                  if (__OFADD__(v45, 1))
                  {
                    goto LABEL_70;
                  }

                  v52 = v45 + 1;
LABEL_39:
                  v4 &= v4 - 1;
                  String.utf8CString.getter();

                  REAnimationLibraryDefinitionAddKeyedEntryIndex();

                  v27 = v51;
                  continue;
                }
              }

              *(v7[7] + 8 * v38) = v45;
              goto LABEL_58;
            }

            break;
          }

          goto LABEL_39;
        }

LABEL_61:
        specialized AnimationLibraryDefinition.defaultResourceKey.getter(*v26, v27, v26[2], v26[3]);
        if (v48)
        {
          String.utf8CString.getter();

          REAnimationLibraryDefinitionSetDefaultEntryKey();
        }

        AnimationLibraryAsset = REAnimationLibraryDefinitionCreateAnimationLibraryAsset();
        RERelease();

        return AnimationLibraryAsset;
      }
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v19, isUniquelyReferenced_nonNull_native);
    v14 = specialized __RawDictionaryStorage.find<A>(_:)(v10);
    if ((v20 & 1) != (v21 & 1))
    {
      goto LABEL_74;
    }

LABEL_26:
    v7 = v53;
    if ((v20 & 1) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_27;
  }

  return 0;
}

double AnimationLibraryComponent.init(dictionaryLiteral:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  specialized AnimationLibraryDefinition.init(_:)(a1, v6);
  v3 = v7;

  result = *v6;
  v5 = v6[1];
  *a2 = v6[0];
  *(a2 + 16) = v5;
  *(a2 + 32) = v3;
  return result;
}

double AnimationLibraryComponent.init(animations:)@<D0>(uint64_t a1@<X8>, uint64_t a2@<X0>)
{
  AnimationLibraryComponent.AnimationCollection.init(dictionary:)(a2, v6);
  v3 = v7;
  result = *v6;
  v5 = v6[1];
  *a1 = v6[0];
  *(a1 + 16) = v5;
  *(a1 + 32) = v3;
  return result;
}