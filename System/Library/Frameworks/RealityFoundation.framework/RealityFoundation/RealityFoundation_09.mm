uint64_t __RKEntityAudioActionArguments.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10RealityKit30__RKEntityAudioActionArgumentsV10CodingKeys33_DD6F8BA54B92BC4851BC0C702261433ALLOGMd, &_ss22KeyedEncodingContainerVy10RealityKit30__RKEntityAudioActionArgumentsV10CodingKeys33_DD6F8BA54B92BC4851BC0C702261433ALLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type __RKEntityAudioActionArguments.CodingKeys and conformance __RKEntityAudioActionArguments.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11[15] = 0;
  type metadata accessor for UUID();
  lazy protocol witness table accessor for type __RKEntityTriggerSpecification and conformance __RKEntityTriggerSpecification(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v9 = type metadata accessor for __RKEntityAudioActionArguments(0);
    v11[14] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v11[13] = *(v3 + v9[6]);
    v11[12] = 2;
    lazy protocol witness table accessor for type __RKEntityAudioActionType and conformance __RKEntityAudioActionType();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v11[11] = 3;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v11[10] = 4;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v11[9] = *(v3 + v9[9]);
    v11[8] = 5;
    lazy protocol witness table accessor for type __RKAudioSpatialModeSelection and conformance __RKAudioSpatialModeSelection();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v11[7] = *(v3 + v9[10]);
    v11[6] = 6;
    lazy protocol witness table accessor for type __RKEntityActionMultiplePerformBehavior and conformance __RKEntityActionMultiplePerformBehavior();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t __RKEntityAudioActionArguments.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v33 = type metadata accessor for UUID();
  v31 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v32 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10RealityKit30__RKEntityAudioActionArgumentsV10CodingKeys33_DD6F8BA54B92BC4851BC0C702261433ALLOGMd, &_ss22KeyedDecodingContainerVy10RealityKit30__RKEntityAudioActionArgumentsV10CodingKeys33_DD6F8BA54B92BC4851BC0C702261433ALLOGMR);
  v30 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v5 = &v26 - v4;
  v6 = type metadata accessor for __RKEntityAudioActionArguments(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v9 + 24);
  v8[v10] = 3;
  v11 = *(v9 + 36);
  v8[v11] = 3;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type __RKEntityAudioActionArguments.CodingKeys and conformance __RKEntityAudioActionArguments.CodingKeys();
  v34 = v5;
  v12 = v36;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v12)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v27 = v11;
  v28 = v10;
  v13 = v30;
  v14 = v31;
  v36 = a1;
  v46 = 0;
  lazy protocol witness table accessor for type __RKEntityTriggerSpecification and conformance __RKEntityTriggerSpecification(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
  v16 = v32;
  v15 = v33;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v17 = v8;
  (*(v14 + 32))(v8, v16, v15);
  v45 = 1;
  v18 = KeyedDecodingContainer.decode(_:forKey:)();
  v19 = &v8[v6[5]];
  *v19 = v18;
  v19[1] = v20;
  v43 = 2;
  lazy protocol witness table accessor for type __RKEntityAudioActionType and conformance __RKEntityAudioActionType();
  v32 = 0;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v21 = v36;
  *(v17 + v28) = v44;
  v42 = 3;
  v22 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v23 = v17 + v6[7];
  *v23 = v22;
  *(v23 + 8) = v24 & 1;
  v41 = 4;
  *(v17 + v6[8]) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v39 = 5;
  lazy protocol witness table accessor for type __RKAudioSpatialModeSelection and conformance __RKAudioSpatialModeSelection();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  *(v17 + v27) = v40;
  v37 = 6;
  lazy protocol witness table accessor for type __RKEntityActionMultiplePerformBehavior and conformance __RKEntityActionMultiplePerformBehavior();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v13 + 8))(v34, v35);
  *(v17 + v6[10]) = v38;
  outlined init with copy of __RKEntityTriggerSpecification(v17, v29, type metadata accessor for __RKEntityAudioActionArguments);
  __swift_destroy_boxed_opaque_existential_1(v21);
  return outlined destroy of __RKEntityTriggerSpecification(v17, type metadata accessor for __RKEntityAudioActionArguments);
}

uint64_t __RKEntityTransformActionArguments.orientation.getter()
{
  v1 = type metadata accessor for __RKEntityTransformActionArguments(0);
  result = 0;
  v3 = (v0 + *(v1 + 24));
  if ((v3[16] & 1) == 0)
  {
    return *v3;
  }

  return result;
}

uint64_t __RKEntityTransformActionArguments.orientation.setter(uint64_t a1, uint64_t a2, char a3)
{
  result = type metadata accessor for __RKEntityTransformActionArguments(0);
  v8 = v3 + *(result + 24);
  *v8 = 0;
  *(v8 + 8) = 0;
  *(v8 + 16) = 1;
  if ((a3 & 1) == 0)
  {
    *v8 = a1;
    *(v8 + 8) = a2;
    *(v8 + 16) = 0;
  }

  return result;
}

void (*__RKEntityTransformActionArguments.orientation.modify(uint64_t *a1))(void **a1)
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
  v5 = *(type metadata accessor for __RKEntityTransformActionArguments(0) + 24);
  *(v4 + 20) = v5;
  v6 = (v1 + v5);
  v7 = *(v1 + v5 + 16);
  v8 = 0uLL;
  if ((v7 & 1) == 0)
  {
    v8 = *v6;
  }

  *v4 = v8;
  *(v4 + 16) = v7;
  return __RKEntityTransformActionArguments.orientation.modify;
}

void __RKEntityTransformActionArguments.orientation.modify(void **a1)
{
  v1 = *a1;
  v2 = *(v1 + 3) + v1[5];
  v3 = *v1;
  v4 = *(v1 + 16);
  *v2 = 0;
  *(v2 + 8) = 0;
  *(v2 + 16) = 1;
  if ((v4 & 1) == 0)
  {
    v5 = *(v1 + 3) + v1[5];
    *v5 = v3;
    *(v5 + 16) = 0;
  }

  free(v1);
}

uint64_t __RKEntityTransformActionArguments.moveType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for __RKEntityTransformActionArguments(0);
  *a1 = *(v1 + *(result + 36));
  return result;
}

uint64_t __RKEntityTransformActionArguments.moveType.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for __RKEntityTransformActionArguments(0);
  *(v1 + *(result + 36)) = v2;
  return result;
}

uint64_t __RKEntityTransformActionArguments.ease.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for __RKEntityTransformActionArguments(0);
  *a1 = *(v1 + *(result + 40));
  return result;
}

uint64_t __RKEntityTransformActionArguments.ease.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for __RKEntityTransformActionArguments(0);
  *(v1 + *(result + 40)) = v2;
  return result;
}

uint64_t __RKEntityTransformActionArguments.easeType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for __RKEntityTransformActionArguments(0);
  *a1 = *(v1 + *(result + 44));
  return result;
}

uint64_t __RKEntityTransformActionArguments.easeType.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for __RKEntityTransformActionArguments(0);
  *(v1 + *(result + 44)) = v2;
  return result;
}

uint64_t __RKEntityTransformActionArguments.respectPhysics.setter(char a1)
{
  result = type metadata accessor for __RKEntityTransformActionArguments(0);
  *(v1 + *(result + 48)) = a1;
  return result;
}

uint64_t __RKEntityTransformActionArguments.physicsAngularCoefficient.setter(uint64_t a1)
{
  result = type metadata accessor for __RKEntityTransformActionArguments(0);
  v4 = v1 + *(result + 56);
  *v4 = a1;
  *(v4 + 4) = BYTE4(a1) & 1;
  return result;
}

uint64_t __RKEntityTransformActionArguments.relativeToEntity.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for __RKEntityTransformActionArguments(0) + 60);

  return outlined init with copy of UUID?(v3, a1);
}

uint64_t __RKEntityTransformActionArguments.relativeToEntity.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for __RKEntityTransformActionArguments(0) + 60);

  return outlined assign with take of UUID?(a1, v3);
}

uint64_t __RKEntityTransformActionArguments.init(target:location:orientation:scale:duration:moveType:ease:easeType:respectPhysics:physicsLinearCoefficient:physicsAngularCoefficient:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, float a10@<S0>, float a11@<S1>, float a12@<S2>, char *a13, char *a14, char *a15, char a16)
{
  v48 = *a14;
  v46 = *a13;
  v47 = *a15;
  v22 = type metadata accessor for __RKEntityTransformActionArguments(0);
  v23 = v22[9];
  *(a9 + v23) = 2;
  v24 = v22[10];
  *(a9 + v24) = 10;
  v25 = v22[11];
  *(a9 + v25) = 3;
  v26 = v22[15];
  v27 = type metadata accessor for UUID();
  v28 = *(v27 - 8);
  v41 = *(v28 + 56);
  v41(a9 + v26, 1, 1, v27);
  (*(v28 + 32))(a9, a1, v27);
  v29 = 1.0;
  if (a10 >= 0.0)
  {
    v29 = a10;
  }

  v30 = a9 + v22[5];
  v31 = a9 + v22[6];
  v32 = a9 + v22[8];
  *v32 = v29;
  *(v32 + 4) = 0;
  *v30 = a2;
  *(v30 + 8) = a3;
  *(v30 + 16) = a4 & 1;
  *v31 = 0;
  *(v31 + 8) = 0;
  *(v31 + 16) = 1;
  if ((a7 & 1) == 0)
  {
    *v31 = a5;
    *(v31 + 8) = a6;
    *(v31 + 16) = 0;
  }

  v33 = a9 + v22[7];
  v34 = v22[12];
  v35 = a9 + v22[13];
  v36 = v22[14];
  *v33 = a8;
  *(v33 + 4) = BYTE4(a8) & 1;
  *(a9 + v23) = v46;
  v37 = a9 + v36;
  *(a9 + v24) = v48;
  *(a9 + v25) = v47;
  *(a9 + v34) = a16 & 1;
  *v35 = a11;
  *(v35 + 4) = 0;
  *v37 = a12;
  *(v37 + 4) = 0;
  outlined destroy of BodyTrackingComponent?(a9 + v26, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);

  return (v41)(a9 + v26, 1, 1, v27);
}

unint64_t __RKEntityTransformActionArguments.CodingKeys.stringValue.getter(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 0xD000000000000019;
    if (a1 != 10)
    {
      v6 = 0xD000000000000010;
    }

    if (a1 == 9)
    {
      v6 = 0xD000000000000018;
    }

    v7 = 1702060389;
    v8 = 0x6570795465736165;
    if (a1 != 7)
    {
      v8 = 0x5074636570736572;
    }

    if (a1 != 6)
    {
      v7 = v8;
    }

    if (a1 <= 8u)
    {
      return v7;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x746567726174;
    v2 = 0x656C616373;
    v3 = 0x6E6F697461727564;
    if (a1 != 4)
    {
      v3 = 0x6570795465766F6DLL;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0x6E6F697461636F6CLL;
    if (a1 != 1)
    {
      v4 = 0x61746E6569726F5FLL;
    }

    if (a1)
    {
      v1 = v4;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance __RKEntityTransformActionArguments.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized __RKEntityTransformActionArguments.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance __RKEntityTransformActionArguments.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type __RKEntityTransformActionArguments.CodingKeys and conformance __RKEntityTransformActionArguments.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance __RKEntityTransformActionArguments.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type __RKEntityTransformActionArguments.CodingKeys and conformance __RKEntityTransformActionArguments.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t __RKEntityTransformActionArguments.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10RealityKit34__RKEntityTransformActionArgumentsV10CodingKeys33_DD6F8BA54B92BC4851BC0C702261433ALLOGMd, &_ss22KeyedEncodingContainerVy10RealityKit34__RKEntityTransformActionArgumentsV10CodingKeys33_DD6F8BA54B92BC4851BC0C702261433ALLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v20 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type __RKEntityTransformActionArguments.CodingKeys and conformance __RKEntityTransformActionArguments.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v22) = 0;
  type metadata accessor for UUID();
  lazy protocol witness table accessor for type __RKEntityTriggerSpecification and conformance __RKEntityTriggerSpecification(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v9 = type metadata accessor for __RKEntityTransformActionArguments(0);
    v20 = v3;
    v21 = v9;
    v10 = (v3 + *(v9 + 20));
    v11 = *(v10 + 16);
    v22 = *v10;
    v23 = v11;
    v24 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD3VySfGMd, &_ss5SIMD3VySfGMR);
    lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type SIMD3<Float> and conformance SIMD3<A>, &_ss5SIMD3VySfGMd, &_ss5SIMD3VySfGMR, MEMORY[0x1E69E7458]);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v12 = (v20 + v21[6]);
    v13 = *(v12 + 16);
    v22 = *v12;
    v23 = v13;
    v24 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD4VySfGMd, &_ss5SIMD4VySfGMR);
    lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type SIMD4<Float> and conformance SIMD4<A>, &_ss5SIMD4VySfGMd, &_ss5SIMD4VySfGMR, MEMORY[0x1E69E74B0]);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v14 = v20;
    v15 = *(v20 + v21[7] + 4);
    LOBYTE(v22) = 3;
    v24 = v15;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v16 = *(v14 + v21[8] + 4);
    LOBYTE(v22) = 4;
    v24 = v16;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v22) = *(v14 + v21[9]);
    v24 = 5;
    lazy protocol witness table accessor for type __RKEntityMoveSelection and conformance __RKEntityMoveSelection();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v22) = *(v14 + v21[10]);
    v24 = 6;
    lazy protocol witness table accessor for type __RKEntityMoveEase and conformance __RKEntityMoveEase();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v22) = *(v14 + v21[11]);
    v24 = 7;
    lazy protocol witness table accessor for type __RKEntityMoveEaseType and conformance __RKEntityMoveEaseType();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v22) = 8;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v17 = *(v14 + v21[13] + 4);
    LOBYTE(v22) = 9;
    v24 = v17;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v18 = *(v14 + v21[14] + 4);
    LOBYTE(v22) = 10;
    v24 = v18;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v22) = 11;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t __RKEntityTransformActionArguments.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v48 = &v42 - v4;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v50 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10RealityKit34__RKEntityTransformActionArgumentsV10CodingKeys33_DD6F8BA54B92BC4851BC0C702261433ALLOGMd, &_ss22KeyedDecodingContainerVy10RealityKit34__RKEntityTransformActionArgumentsV10CodingKeys33_DD6F8BA54B92BC4851BC0C702261433ALLOGMR);
  v51 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v9 = &v42 - v8;
  v10 = type metadata accessor for __RKEntityTransformActionArguments(0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v14[9];
  v13[v15] = 2;
  v16 = v14[10];
  v13[v16] = 10;
  v17 = v14[11];
  v13[v17] = 3;
  v18 = v14[15];
  v49 = v6;
  v19 = *(v6 + 56);
  v56 = v18;
  v57 = v13;
  v52 = v5;
  v19(&v13[v18], 1, 1, v5, v11);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type __RKEntityTransformActionArguments.CodingKeys and conformance __RKEntityTransformActionArguments.CodingKeys();
  v53 = v9;
  v20 = v55;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v20)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    return outlined destroy of BodyTrackingComponent?(&v57[v56], &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  }

  else
  {
    v44 = v16;
    v45 = v15;
    v43 = v17;
    v46 = v10;
    v21 = v49;
    v55 = a1;
    LOBYTE(v58) = 0;
    v22 = lazy protocol witness table accessor for type __RKEntityTriggerSpecification and conformance __RKEntityTriggerSpecification(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
    v23 = v50;
    v24 = v52;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v25 = v24;
    v26 = v57;
    (*(v21 + 32))(v57, v23, v25);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD3VySfGMd, &_ss5SIMD3VySfGMR);
    v60 = 1;
    lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type SIMD3<Float> and conformance SIMD3<A>, &_ss5SIMD3VySfGMd, &_ss5SIMD3VySfGMR, MEMORY[0x1E69E7468]);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v50 = v22;
    v27 = v46;
    v28 = &v26[v46[5]];
    v29 = v59;
    *v28 = v58;
    v28[16] = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD4VySfGMd, &_ss5SIMD4VySfGMR);
    v60 = 2;
    lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type SIMD4<Float> and conformance SIMD4<A>, &_ss5SIMD4VySfGMd, &_ss5SIMD4VySfGMR, MEMORY[0x1E69E74C0]);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v30 = &v26[v27[6]];
    v31 = v59;
    *v30 = v58;
    v30[16] = v31;
    LOBYTE(v58) = 3;
    v32 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v33 = &v26[v27[7]];
    *v33 = v32;
    v33[4] = BYTE4(v32) & 1;
    LOBYTE(v58) = 4;
    v34 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v35 = &v26[v27[8]];
    *v35 = v34;
    v35[4] = BYTE4(v34) & 1;
    v60 = 5;
    lazy protocol witness table accessor for type __RKEntityMoveSelection and conformance __RKEntityMoveSelection();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v26[v45] = v58;
    v60 = 6;
    lazy protocol witness table accessor for type __RKEntityMoveEase and conformance __RKEntityMoveEase();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v26[v44] = v58;
    v60 = 7;
    lazy protocol witness table accessor for type __RKEntityMoveEaseType and conformance __RKEntityMoveEaseType();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v26[v43] = v58;
    LOBYTE(v58) = 8;
    v26[v27[12]] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    LOBYTE(v58) = 9;
    v36 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v37 = &v57[v46[13]];
    *v37 = v36;
    v37[4] = BYTE4(v36) & 1;
    LOBYTE(v58) = 10;
    v38 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v39 = &v57[v46[14]];
    *v39 = v38;
    v39[4] = BYTE4(v38) & 1;
    LOBYTE(v58) = 11;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v51 + 8))(v53, v54);
    v40 = v57;
    outlined assign with take of UUID?(v48, &v57[v56]);
    outlined init with copy of __RKEntityTriggerSpecification(v40, v47, type metadata accessor for __RKEntityTransformActionArguments);
    __swift_destroy_boxed_opaque_existential_1(v55);
    return outlined destroy of __RKEntityTriggerSpecification(v40, type metadata accessor for __RKEntityTransformActionArguments);
  }
}

uint64_t __RKEntityTransformActionArguments.location.setter(uint64_t a1, uint64_t a2, char a3, uint64_t (*a4)(void))
{
  result = a4(0);
  v9 = v4 + *(result + 20);
  *v9 = a1;
  *(v9 + 8) = a2;
  *(v9 + 16) = a3 & 1;
  return result;
}

uint64_t __RKEntityForceActionArguments.velocity.setter(uint64_t a1, uint64_t a2, char a3)
{
  result = type metadata accessor for __RKEntityForceActionArguments(0);
  v8 = v3 + *(result + 24);
  *v8 = a1;
  *(v8 + 8) = a2;
  *(v8 + 16) = a3 & 1;
  return result;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance __RKEntityForceActionArguments.CodingKeys()
{
  v1 = 0x6563726F66;
  if (*v0 != 1)
  {
    v1 = 0x797469636F6C6576;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x746567726174;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance __RKEntityForceActionArguments.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized __RKEntityForceActionArguments.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance __RKEntityForceActionArguments.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type __RKEntityForceActionArguments.CodingKeys and conformance __RKEntityForceActionArguments.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance __RKEntityForceActionArguments.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type __RKEntityForceActionArguments.CodingKeys and conformance __RKEntityForceActionArguments.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t __RKEntityForceActionArguments.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10RealityKit30__RKEntityForceActionArgumentsV10CodingKeys33_DD6F8BA54B92BC4851BC0C702261433ALLOGMd, &_ss22KeyedEncodingContainerVy10RealityKit30__RKEntityForceActionArgumentsV10CodingKeys33_DD6F8BA54B92BC4851BC0C702261433ALLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type __RKEntityForceActionArguments.CodingKeys and conformance __RKEntityForceActionArguments.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v15) = 0;
  type metadata accessor for UUID();
  lazy protocol witness table accessor for type __RKEntityTriggerSpecification and conformance __RKEntityTriggerSpecification(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v9 = type metadata accessor for __RKEntityForceActionArguments(0);
    v10 = (v3 + *(v9 + 20));
    v11 = *(v10 + 16);
    v15 = *v10;
    v16 = v11;
    v17 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD3VySfGMd, &_ss5SIMD3VySfGMR);
    lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type SIMD3<Float> and conformance SIMD3<A>, &_ss5SIMD3VySfGMd, &_ss5SIMD3VySfGMR, MEMORY[0x1E69E7458]);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v12 = (v3 + *(v9 + 24));
    v13 = *(v12 + 16);
    v15 = *v12;
    v16 = v13;
    v17 = 2;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t __RKEntityForceActionArguments.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v4 = type metadata accessor for UUID();
  v24 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v25 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10RealityKit30__RKEntityForceActionArgumentsV10CodingKeys33_DD6F8BA54B92BC4851BC0C702261433ALLOGMd, &_ss22KeyedDecodingContainerVy10RealityKit30__RKEntityForceActionArgumentsV10CodingKeys33_DD6F8BA54B92BC4851BC0C702261433ALLOGMR);
  v26 = *(v6 - 8);
  v27 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v22 - v7;
  v9 = type metadata accessor for __RKEntityForceActionArguments(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type __RKEntityForceActionArguments.CodingKeys and conformance __RKEntityForceActionArguments.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v22 = a1;
  v12 = v11;
  v13 = v24;
  LOBYTE(v28) = 0;
  lazy protocol witness table accessor for type __RKEntityTriggerSpecification and conformance __RKEntityTriggerSpecification(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
  v14 = v25;
  v15 = v27;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v16 = *(v13 + 32);
  v25 = v4;
  v16(v12, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD3VySfGMd, &_ss5SIMD3VySfGMR);
  v30 = 1;
  lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type SIMD3<Float> and conformance SIMD3<A>, &_ss5SIMD3VySfGMd, &_ss5SIMD3VySfGMR, MEMORY[0x1E69E7468]);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v17 = v12 + *(v9 + 20);
  v18 = v29;
  *v17 = v28;
  *(v17 + 16) = v18;
  v30 = 2;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v19 = v12 + *(v9 + 24);
  (*(v26 + 8))(v8, v15);
  v20 = v29;
  *v19 = v28;
  *(v19 + 16) = v20;
  outlined init with copy of __RKEntityTriggerSpecification(v12, v23, type metadata accessor for __RKEntityForceActionArguments);
  __swift_destroy_boxed_opaque_existential_1(v22);
  return outlined destroy of __RKEntityTriggerSpecification(v12, type metadata accessor for __RKEntityForceActionArguments);
}

uint64_t __RKChangeSceneActionArguments.targetSceneIdentifier.getter@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 20);
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t __RKChangeSceneActionArguments.targetSceneIdentifier.setter(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 20);
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t __RKEntitySwapEntityActionArguments.init(target:newTarget:buildOutAction:buildInAction:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for UUID();
  v11 = *(*(v10 - 8) + 32);
  v11(a5, a1, v10);
  v12 = type metadata accessor for __RKEntitySwapEntityActionArguments(0);
  v11(a5 + v12[5], a2, v10);
  outlined init with take of __RKEntityTriggerSpecification(a3, a5 + v12[6], type metadata accessor for __RKEntityHideActionArguments);
  return outlined init with take of __RKEntityTriggerSpecification(a4, a5 + v12[7], type metadata accessor for __RKEntityShowActionArguments);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance __RKEntitySwapEntityActionArguments.CodingKeys()
{
  v1 = 0x746567726174;
  v2 = 0x74754F646C697562;
  if (*v0 != 2)
  {
    v2 = 0x416E49646C697562;
  }

  if (*v0)
  {
    v1 = 0x656772615477656ELL;
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

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance __RKEntitySwapEntityActionArguments.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized __RKEntitySwapEntityActionArguments.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance __RKEntitySwapEntityActionArguments.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type __RKEntitySwapEntityActionArguments.CodingKeys and conformance __RKEntitySwapEntityActionArguments.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance __RKEntitySwapEntityActionArguments.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type __RKEntitySwapEntityActionArguments.CodingKeys and conformance __RKEntitySwapEntityActionArguments.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t __RKEntitySwapEntityActionArguments.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10RealityKit35__RKEntitySwapEntityActionArgumentsV10CodingKeys33_DD6F8BA54B92BC4851BC0C702261433ALLOGMd, &_ss22KeyedEncodingContainerVy10RealityKit35__RKEntitySwapEntityActionArgumentsV10CodingKeys33_DD6F8BA54B92BC4851BC0C702261433ALLOGMR);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type __RKEntitySwapEntityActionArguments.CodingKeys and conformance __RKEntitySwapEntityActionArguments.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v12 = 0;
  type metadata accessor for UUID();
  lazy protocol witness table accessor for type __RKEntityTriggerSpecification and conformance __RKEntityTriggerSpecification(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v1)
  {
    type metadata accessor for __RKEntitySwapEntityActionArguments(0);
    v11 = 1;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v10 = 2;
    type metadata accessor for __RKEntityHideActionArguments(0);
    lazy protocol witness table accessor for type __RKEntityTriggerSpecification and conformance __RKEntityTriggerSpecification(&lazy protocol witness table cache variable for type __RKEntityHideActionArguments and conformance __RKEntityHideActionArguments, type metadata accessor for __RKEntityHideActionArguments, protocol conformance descriptor for __RKEntityHideActionArguments);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v9 = 3;
    type metadata accessor for __RKEntityShowActionArguments(0);
    lazy protocol witness table accessor for type __RKEntityTriggerSpecification and conformance __RKEntityTriggerSpecification(&lazy protocol witness table cache variable for type __RKEntityShowActionArguments and conformance __RKEntityShowActionArguments, type metadata accessor for __RKEntityShowActionArguments, protocol conformance descriptor for __RKEntityShowActionArguments);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t __RKEntitySwapEntityActionArguments.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v28 = type metadata accessor for __RKEntityShowActionArguments(0);
  MEMORY[0x1EEE9AC00](v28);
  v29 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for __RKEntityHideActionArguments(0);
  MEMORY[0x1EEE9AC00](v30);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for UUID();
  v31 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v32 = &v24 - v9;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10RealityKit35__RKEntitySwapEntityActionArgumentsV10CodingKeys33_DD6F8BA54B92BC4851BC0C702261433ALLOGMd, &_ss22KeyedDecodingContainerVy10RealityKit35__RKEntitySwapEntityActionArgumentsV10CodingKeys33_DD6F8BA54B92BC4851BC0C702261433ALLOGMR);
  v33 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v11 = &v24 - v10;
  v12 = type metadata accessor for __RKEntitySwapEntityActionArguments(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type __RKEntitySwapEntityActionArguments.CodingKeys and conformance __RKEntitySwapEntityActionArguments.CodingKeys();
  v35 = v11;
  v15 = v37;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v15)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v25 = v5;
  v26 = v7;
  v37 = v14;
  v41 = 0;
  lazy protocol witness table accessor for type __RKEntityTriggerSpecification and conformance __RKEntityTriggerSpecification(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
  v16 = v32;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v17 = v34;
  v18 = *(v31 + 32);
  v18(v37, v16, v34);
  v40 = 1;
  v19 = v26;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v18(&v37[v12[5]], v19, v17);
  v39 = 2;
  lazy protocol witness table accessor for type __RKEntityTriggerSpecification and conformance __RKEntityTriggerSpecification(&lazy protocol witness table cache variable for type __RKEntityHideActionArguments and conformance __RKEntityHideActionArguments, type metadata accessor for __RKEntityHideActionArguments, protocol conformance descriptor for __RKEntityHideActionArguments);
  v20 = v25;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v22 = v37;
  outlined init with take of __RKEntityTriggerSpecification(v20, &v37[v12[6]], type metadata accessor for __RKEntityHideActionArguments);
  v38 = 3;
  lazy protocol witness table accessor for type __RKEntityTriggerSpecification and conformance __RKEntityTriggerSpecification(&lazy protocol witness table cache variable for type __RKEntityShowActionArguments and conformance __RKEntityShowActionArguments, type metadata accessor for __RKEntityShowActionArguments, protocol conformance descriptor for __RKEntityShowActionArguments);
  v23 = v29;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v33 + 8))(v35, v36);
  outlined init with take of __RKEntityTriggerSpecification(v23, v22 + v12[7], type metadata accessor for __RKEntityShowActionArguments);
  outlined init with copy of __RKEntityTriggerSpecification(v22, v27, type metadata accessor for __RKEntitySwapEntityActionArguments);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return outlined destroy of __RKEntityTriggerSpecification(v22, type metadata accessor for __RKEntitySwapEntityActionArguments);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance __RKEntitySwapEntityActionArguments(uint64_t a1, uint64_t a2, int *a3)
{
  if (static UUID.== infix(_:_:)() & 1) != 0 && (static UUID.== infix(_:_:)() & 1) != 0 && (specialized static __RKEntityHideActionArguments.== infix(_:_:)(a1 + a3[6], a2 + a3[6], type metadata accessor for __RKEntityHideActionArguments, specialized == infix<A>(_:_:)))
  {
    v6 = specialized static __RKEntityHideActionArguments.== infix(_:_:)(a1 + a3[7], a2 + a3[7], type metadata accessor for __RKEntityShowActionArguments, specialized == infix<A>(_:_:));
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t __RKEntitySpinActionArguments.direction.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for __RKEntitySpinActionArguments(0);
  *a1 = *(v2 + *(result + 28));
  return result;
}

uint64_t __RKEntitySpinActionArguments.direction.setter(char *a1, __n128 a2)
{
  v3 = *a1;
  result = type metadata accessor for __RKEntitySpinActionArguments(0);
  *(v2 + *(result + 28)) = v3;
  return result;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance __RKEntitySpinActionArguments.CodingKeys()
{
  v1 = *v0;
  v2 = 0x746567726174;
  v3 = 0x6F69746172657469;
  v4 = 0x6F69746365726964;
  if (v1 != 3)
  {
    v4 = 1936291937;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6E6F697461727564;
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

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance __RKEntitySpinActionArguments.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized __RKEntitySpinActionArguments.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance __RKEntitySpinActionArguments.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type __RKEntitySpinActionArguments.CodingKeys and conformance __RKEntitySpinActionArguments.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance __RKEntitySpinActionArguments.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type __RKEntitySpinActionArguments.CodingKeys and conformance __RKEntitySpinActionArguments.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t __RKEntitySpinActionArguments.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10RealityKit29__RKEntitySpinActionArgumentsV10CodingKeys33_DD6F8BA54B92BC4851BC0C702261433ALLOGMd, &_ss22KeyedEncodingContainerVy10RealityKit29__RKEntitySpinActionArgumentsV10CodingKeys33_DD6F8BA54B92BC4851BC0C702261433ALLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type __RKEntitySpinActionArguments.CodingKeys and conformance __RKEntitySpinActionArguments.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v15) = 0;
  type metadata accessor for UUID();
  lazy protocol witness table accessor for type __RKEntityTriggerSpecification and conformance __RKEntityTriggerSpecification(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v9 = type metadata accessor for __RKEntitySpinActionArguments(0);
    v10 = *(v3 + v9[5] + 4);
    LOBYTE(v15) = 1;
    v17 = v10;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v11 = *(v3 + v9[6] + 4);
    LOBYTE(v15) = 2;
    v17 = v11;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v15) = *(v3 + v9[7]);
    v17 = 3;
    lazy protocol witness table accessor for type __RKEntitySpinDirectionType and conformance __RKEntitySpinDirectionType();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v12 = (v3 + v9[8]);
    v13 = *(v12 + 16);
    v15 = *v12;
    v16 = v13;
    v17 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD3VySfGMd, &_ss5SIMD3VySfGMR);
    lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type SIMD3<Float> and conformance SIMD3<A>, &_ss5SIMD3VySfGMd, &_ss5SIMD3VySfGMR, MEMORY[0x1E69E7458]);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t __RKEntitySpinActionArguments.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v3 = type metadata accessor for UUID();
  v29 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v33 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10RealityKit29__RKEntitySpinActionArgumentsV10CodingKeys33_DD6F8BA54B92BC4851BC0C702261433ALLOGMd, &_ss22KeyedDecodingContainerVy10RealityKit29__RKEntitySpinActionArgumentsV10CodingKeys33_DD6F8BA54B92BC4851BC0C702261433ALLOGMR);
  v30 = *(v5 - 8);
  v31 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v27 - v6;
  v8 = type metadata accessor for __RKEntitySpinActionArguments(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v11 + 28);
  v10[v12] = 2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type __RKEntitySpinActionArguments.CodingKeys and conformance __RKEntitySpinActionArguments.CodingKeys();
  v32 = v7;
  v13 = v34;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v13)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v34 = v8;
  v14 = v29;
  LOBYTE(v35) = 0;
  lazy protocol witness table accessor for type __RKEntityTriggerSpecification and conformance __RKEntityTriggerSpecification(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
  v15 = v31;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v16 = *(v14 + 32);
  v17 = v10;
  v16(v10, v33, v3);
  LOBYTE(v35) = 1;
  v18 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v33 = v3;
  v19 = v34;
  v20 = &v10[*(v34 + 20)];
  *v20 = v18;
  v20[4] = BYTE4(v18) & 1;
  LOBYTE(v35) = 2;
  v21 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v22 = v30;
  v23 = v17 + *(v19 + 24);
  *v23 = v21;
  *(v23 + 4) = BYTE4(v21) & 1;
  v37 = 3;
  lazy protocol witness table accessor for type __RKEntitySpinDirectionType and conformance __RKEntitySpinDirectionType();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  *(v17 + v12) = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD3VySfGMd, &_ss5SIMD3VySfGMR);
  v37 = 4;
  lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type SIMD3<Float> and conformance SIMD3<A>, &_ss5SIMD3VySfGMd, &_ss5SIMD3VySfGMR, MEMORY[0x1E69E7468]);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v24 = v17 + *(v34 + 32);
  (*(v22 + 8))(v32, v15);
  v25 = v36;
  *v24 = v35;
  *(v24 + 16) = v25;
  outlined init with copy of __RKEntityTriggerSpecification(v17, v28, type metadata accessor for __RKEntitySpinActionArguments);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return outlined destroy of __RKEntityTriggerSpecification(v17, type metadata accessor for __RKEntitySpinActionArguments);
}

uint64_t __RKEntityTransformActionArguments.scale.setter(uint64_t a1, uint64_t (*a2)(void))
{
  result = a2(0);
  v5 = v2 + *(result + 28);
  *v5 = a1;
  *(v5 + 4) = BYTE4(a1) & 1;
  return result;
}

uint64_t __RKEntitySpinActionArguments.axis.setter(uint64_t a1, uint64_t a2, char a3, uint64_t (*a4)(void))
{
  result = a4(0);
  v9 = v4 + *(result + 32);
  *v9 = a1;
  *(v9 + 8) = a2;
  *(v9 + 16) = a3 & 1;
  return result;
}

uint64_t __RKEntityOrbitEntityActionArguments.orientToPath.setter(char a1, __n128 a2)
{
  result = type metadata accessor for __RKEntityOrbitEntityActionArguments(0);
  *(v2 + *(result + 36)) = a1;
  return result;
}

uint64_t __RKEntityOrbitEntityActionArguments.spinDirection.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for __RKEntityOrbitEntityActionArguments(0);
  *a1 = *(v2 + *(result + 40));
  return result;
}

uint64_t __RKEntityOrbitEntityActionArguments.spinDirection.setter(char *a1, __n128 a2)
{
  v3 = *a1;
  result = type metadata accessor for __RKEntityOrbitEntityActionArguments(0);
  *(v2 + *(result + 40)) = v3;
  return result;
}

uint64_t __RKEntityOrbitEntityActionArguments.respectPhysics.setter(char a1, __n128 a2)
{
  result = type metadata accessor for __RKEntityOrbitEntityActionArguments(0);
  *(v2 + *(result + 44)) = a1;
  return result;
}

uint64_t __RKEntityOrbitEntityActionArguments.CodingKeys.stringValue.getter(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x5074636570736572;
    v6 = 0xD000000000000018;
    if (a1 != 8)
    {
      v6 = 0xD000000000000019;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x6F54746E6569726FLL;
    if (a1 != 5)
    {
      v7 = 0x657269446E697073;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x746567726174;
    v2 = 0x6E6F697461727564;
    v3 = 0x6E6F697461746F72;
    if (a1 != 3)
    {
      v3 = 0x416C61746962726FLL;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x726154746F766970;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance __RKEntityOrbitEntityActionArguments.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized __RKEntityOrbitEntityActionArguments.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance __RKEntityOrbitEntityActionArguments.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type __RKEntityOrbitEntityActionArguments.CodingKeys and conformance __RKEntityOrbitEntityActionArguments.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance __RKEntityOrbitEntityActionArguments.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type __RKEntityOrbitEntityActionArguments.CodingKeys and conformance __RKEntityOrbitEntityActionArguments.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t __RKEntityOrbitEntityActionArguments.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10RealityKit36__RKEntityOrbitEntityActionArgumentsV10CodingKeys33_DD6F8BA54B92BC4851BC0C702261433ALLOGMd, &_ss22KeyedEncodingContainerVy10RealityKit36__RKEntityOrbitEntityActionArgumentsV10CodingKeys33_DD6F8BA54B92BC4851BC0C702261433ALLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v17 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type __RKEntityOrbitEntityActionArguments.CodingKeys and conformance __RKEntityOrbitEntityActionArguments.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v17) = 0;
  type metadata accessor for UUID();
  lazy protocol witness table accessor for type __RKEntityTriggerSpecification and conformance __RKEntityTriggerSpecification(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v9 = type metadata accessor for __RKEntityOrbitEntityActionArguments(0);
    LOBYTE(v17) = 1;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v10 = *(v3 + v9[6] + 4);
    LOBYTE(v17) = 2;
    v19 = v10;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v11 = *(v3 + v9[7] + 4);
    LOBYTE(v17) = 3;
    v19 = v11;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v12 = (v3 + v9[8]);
    v13 = *(v12 + 16);
    v17 = *v12;
    v18 = v13;
    v19 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD3VySfGMd, &_ss5SIMD3VySfGMR);
    lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type SIMD3<Float> and conformance SIMD3<A>, &_ss5SIMD3VySfGMd, &_ss5SIMD3VySfGMR, MEMORY[0x1E69E7458]);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v17) = 5;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v17) = *(v3 + v9[10]);
    v19 = 6;
    lazy protocol witness table accessor for type __RKEntitySpinDirectionType and conformance __RKEntitySpinDirectionType();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v17) = 7;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v14 = *(v3 + v9[12] + 4);
    LOBYTE(v17) = 8;
    v19 = v14;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v15 = *(v3 + v9[13] + 4);
    LOBYTE(v17) = 9;
    v19 = v15;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t __RKEntityOrbitEntityActionArguments.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v43 = type metadata accessor for UUID();
  v39 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v4 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v40 = &v34 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10RealityKit36__RKEntityOrbitEntityActionArgumentsV10CodingKeys33_DD6F8BA54B92BC4851BC0C702261433ALLOGMd, &_ss22KeyedDecodingContainerVy10RealityKit36__RKEntityOrbitEntityActionArgumentsV10CodingKeys33_DD6F8BA54B92BC4851BC0C702261433ALLOGMR);
  v41 = *(v7 - 8);
  v42 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v34 - v8;
  v10 = type metadata accessor for __RKEntityOrbitEntityActionArguments(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v13 + 40);
  v12[v14] = 2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type __RKEntityOrbitEntityActionArguments.CodingKeys and conformance __RKEntityOrbitEntityActionArguments.CodingKeys();
  v44 = v9;
  v15 = v45;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v15)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v34 = v14;
  v35 = v4;
  v36 = v10;
  v37 = v12;
  v45 = a1;
  LOBYTE(v46) = 0;
  lazy protocol witness table accessor for type __RKEntityTriggerSpecification and conformance __RKEntityTriggerSpecification(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
  v16 = v40;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v17 = v37;
  v18 = v16;
  v19 = v43;
  v40 = *(v39 + 32);
  (v40)(v37, v18, v43);
  LOBYTE(v46) = 1;
  v20 = v35;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v21 = v36;
  (v40)(&v17[v36[5]], v20, v19);
  LOBYTE(v46) = 2;
  v22 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v23 = &v17[v21[6]];
  *v23 = v22;
  v23[4] = BYTE4(v22) & 1;
  LOBYTE(v46) = 3;
  v24 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v25 = &v17[v21[7]];
  *v25 = v24;
  v25[4] = BYTE4(v24) & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD3VySfGMd, &_ss5SIMD3VySfGMR);
  v48 = 4;
  lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type SIMD3<Float> and conformance SIMD3<A>, &_ss5SIMD3VySfGMd, &_ss5SIMD3VySfGMR, MEMORY[0x1E69E7468]);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v26 = &v17[v21[8]];
  v27 = v47;
  *v26 = v46;
  v26[16] = v27;
  LOBYTE(v46) = 5;
  v17[v21[9]] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v48 = 6;
  lazy protocol witness table accessor for type __RKEntitySpinDirectionType and conformance __RKEntitySpinDirectionType();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v17[v34] = v46;
  LOBYTE(v46) = 7;
  v17[v21[11]] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  LOBYTE(v46) = 8;
  v28 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v29 = &v17[v21[12]];
  *v29 = v28;
  v29[4] = BYTE4(v28) & 1;
  LOBYTE(v46) = 9;
  v30 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v31 = v37;
  v32 = &v37[v36[13]];
  (*(v41 + 8))(v44, v42);
  *v32 = v30;
  v32[4] = BYTE4(v30) & 1;
  outlined init with copy of __RKEntityTriggerSpecification(v31, v38, type metadata accessor for __RKEntityOrbitEntityActionArguments);
  __swift_destroy_boxed_opaque_existential_1(v45);
  return outlined destroy of __RKEntityTriggerSpecification(v31, type metadata accessor for __RKEntityOrbitEntityActionArguments);
}

uint64_t __RKEntityLookAtCameraActionArguments.direction.setter(uint64_t a1, uint64_t a2, char a3)
{
  result = type metadata accessor for __RKEntityLookAtCameraActionArguments(0);
  v8 = v3 + *(result + 28);
  *v8 = a1;
  *(v8 + 8) = a2;
  *(v8 + 16) = a3 & 1;
  return result;
}

uint64_t __RKEntityTransformActionArguments.duration.setter(uint64_t a1, uint64_t (*a2)(void))
{
  result = a2(0);
  v5 = v2 + *(result + 32);
  *v5 = a1;
  *(v5 + 4) = BYTE4(a1) & 1;
  return result;
}

uint64_t __RKEntityLookAtCameraActionArguments.upVector.setter(uint64_t a1, uint64_t a2, char a3)
{
  result = type metadata accessor for __RKEntityLookAtCameraActionArguments(0);
  v8 = v3 + *(result + 36);
  *v8 = a1;
  *(v8 + 8) = a2;
  *(v8 + 16) = a3 & 1;
  return result;
}

uint64_t __RKEntityLookAtCameraActionArguments.loops.setter(char a1)
{
  result = type metadata accessor for __RKEntityLookAtCameraActionArguments(0);
  *(v1 + *(result + 40)) = a1;
  return result;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance __RKEntityLookAtCameraActionArguments.CodingKeys()
{
  v1 = *v0;
  v2 = 0x746567726174;
  v3 = 0x726F746365567075;
  if (v1 != 5)
  {
    v3 = 0x73706F6F6CLL;
  }

  v4 = 0x6F69746365726964;
  if (v1 != 3)
  {
    v4 = 0x6E6F697461746F72;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x6E6F697461727564;
  if (v1 != 1)
  {
    v5 = 0xD000000000000011;
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

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance __RKEntityLookAtCameraActionArguments.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized __RKEntityLookAtCameraActionArguments.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance __RKEntityLookAtCameraActionArguments.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type __RKEntityLookAtCameraActionArguments.CodingKeys and conformance __RKEntityLookAtCameraActionArguments.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance __RKEntityLookAtCameraActionArguments.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type __RKEntityLookAtCameraActionArguments.CodingKeys and conformance __RKEntityLookAtCameraActionArguments.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t __RKEntityLookAtCameraActionArguments.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10RealityKit37__RKEntityLookAtCameraActionArgumentsV10CodingKeys33_DD6F8BA54B92BC4851BC0C702261433ALLOGMd, &_ss22KeyedEncodingContainerVy10RealityKit37__RKEntityLookAtCameraActionArgumentsV10CodingKeys33_DD6F8BA54B92BC4851BC0C702261433ALLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v18 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type __RKEntityLookAtCameraActionArguments.CodingKeys and conformance __RKEntityLookAtCameraActionArguments.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v18) = 0;
  type metadata accessor for UUID();
  lazy protocol witness table accessor for type __RKEntityTriggerSpecification and conformance __RKEntityTriggerSpecification(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v9 = type metadata accessor for __RKEntityLookAtCameraActionArguments(0);
    v10 = *(v3 + v9[5] + 4);
    LOBYTE(v18) = 1;
    v20 = v10;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v11 = *(v3 + v9[6] + 4);
    LOBYTE(v18) = 2;
    v20 = v11;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v12 = (v3 + v9[7]);
    v13 = *(v12 + 16);
    v18 = *v12;
    v19 = v13;
    v20 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD3VySfGMd, &_ss5SIMD3VySfGMR);
    lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type SIMD3<Float> and conformance SIMD3<A>, &_ss5SIMD3VySfGMd, &_ss5SIMD3VySfGMR, MEMORY[0x1E69E7458]);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v14 = *(v3 + v9[8] + 4);
    LOBYTE(v18) = 4;
    v20 = v14;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v15 = (v3 + v9[9]);
    v16 = *(v15 + 16);
    v18 = *v15;
    v19 = v16;
    v20 = 5;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v18) = 6;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t __RKEntityLookAtCameraActionArguments.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v4 = type metadata accessor for UUID();
  v32 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v34 = v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10RealityKit37__RKEntityLookAtCameraActionArgumentsV10CodingKeys33_DD6F8BA54B92BC4851BC0C702261433ALLOGMd, &_ss22KeyedDecodingContainerVy10RealityKit37__RKEntityLookAtCameraActionArgumentsV10CodingKeys33_DD6F8BA54B92BC4851BC0C702261433ALLOGMR);
  v31 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v7 = v29 - v6;
  v8 = type metadata accessor for __RKEntityLookAtCameraActionArguments(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type __RKEntityLookAtCameraActionArguments.CodingKeys and conformance __RKEntityLookAtCameraActionArguments.CodingKeys();
  v35 = v7;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v12 = v31;
  v11 = v32;
  v13 = v10;
  LOBYTE(v36) = 0;
  lazy protocol witness table accessor for type __RKEntityTriggerSpecification and conformance __RKEntityTriggerSpecification(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v11 + 32))(v10, v34, v4);
  LOBYTE(v36) = 1;
  v14 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v15 = &v10[v8[5]];
  *v15 = v14;
  v15[4] = BYTE4(v14) & 1;
  LOBYTE(v36) = 2;
  v16 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v17 = a1;
  v34 = v4;
  v18 = v13 + v8[6];
  *v18 = v16;
  *(v18 + 4) = BYTE4(v16) & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD3VySfGMd, &_ss5SIMD3VySfGMR);
  v38 = 3;
  v19 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type SIMD3<Float> and conformance SIMD3<A>, &_ss5SIMD3VySfGMd, &_ss5SIMD3VySfGMR, MEMORY[0x1E69E7468]);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v29[1] = v19;
  v20 = v13 + v8[7];
  v21 = v37;
  *v20 = v36;
  *(v20 + 16) = v21;
  LOBYTE(v36) = 4;
  v22 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v23 = v13 + v8[8];
  *v23 = v22;
  *(v23 + 4) = BYTE4(v22) & 1;
  v38 = 5;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v24 = v13 + v8[9];
  v25 = v37;
  *v24 = v36;
  *(v24 + 16) = v25;
  LOBYTE(v36) = 6;
  v26 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v27 = v8[10];
  (*(v12 + 8))(v35, v33);
  *(v13 + v27) = v26;
  outlined init with copy of __RKEntityTriggerSpecification(v13, v30, type metadata accessor for __RKEntityLookAtCameraActionArguments);
  __swift_destroy_boxed_opaque_existential_1(v17);
  return outlined destroy of __RKEntityTriggerSpecification(v13, type metadata accessor for __RKEntityLookAtCameraActionArguments);
}

uint64_t __RKEntitySetOpacityActionArguments.duration.setter(__n128 a1)
{
  v2 = a1.n128_u32[0];
  result = type metadata accessor for __RKEntitySetOpacityActionArguments(0);
  *(v1 + *(result + 20)) = v2;
  return result;
}

uint64_t __RKEntitySetOpacityActionArguments.opacity.setter(__n128 a1)
{
  v2 = a1.n128_u32[0];
  result = type metadata accessor for __RKEntitySetOpacityActionArguments(0);
  *(v1 + *(result + 24)) = v2;
  return result;
}

uint64_t __RKEntitySetOpacityActionArguments.init(target:duration:opacity:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, float a3@<S0>, float a4@<S1>)
{
  v8 = type metadata accessor for UUID();
  (*(*(v8 - 8) + 32))(a2, a1, v8);
  result = type metadata accessor for __RKEntitySetOpacityActionArguments(0);
  *(a2 + *(result + 20)) = a3;
  *(a2 + *(result + 24)) = a4;
  return result;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance __RKEntitySetOpacityActionArguments.CodingKeys()
{
  v1 = 0x6E6F697461727564;
  if (*v0 != 1)
  {
    v1 = 0x7974696361706FLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x746567726174;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance __RKEntitySetOpacityActionArguments.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized __RKEntitySetOpacityActionArguments.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance __RKEntitySetOpacityActionArguments.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type __RKEntitySetOpacityActionArguments.CodingKeys and conformance __RKEntitySetOpacityActionArguments.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance __RKEntitySetOpacityActionArguments.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type __RKEntitySetOpacityActionArguments.CodingKeys and conformance __RKEntitySetOpacityActionArguments.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t __RKEntitySetOpacityActionArguments.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10RealityKit35__RKEntitySetOpacityActionArgumentsV10CodingKeys33_DD6F8BA54B92BC4851BC0C702261433ALLOGMd, &_ss22KeyedEncodingContainerVy10RealityKit35__RKEntitySetOpacityActionArgumentsV10CodingKeys33_DD6F8BA54B92BC4851BC0C702261433ALLOGMR);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type __RKEntitySetOpacityActionArguments.CodingKeys and conformance __RKEntitySetOpacityActionArguments.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  type metadata accessor for UUID();
  lazy protocol witness table accessor for type __RKEntityTriggerSpecification and conformance __RKEntityTriggerSpecification(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v1)
  {
    type metadata accessor for __RKEntitySetOpacityActionArguments(0);
    v8[14] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v8[13] = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t __RKEntitySetOpacityActionArguments.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v4 = type metadata accessor for UUID();
  v20 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v23 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10RealityKit35__RKEntitySetOpacityActionArgumentsV10CodingKeys33_DD6F8BA54B92BC4851BC0C702261433ALLOGMd, &_ss22KeyedDecodingContainerVy10RealityKit35__RKEntitySetOpacityActionArgumentsV10CodingKeys33_DD6F8BA54B92BC4851BC0C702261433ALLOGMR);
  v21 = *(v6 - 8);
  v22 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v19 - v7;
  v9 = type metadata accessor for __RKEntitySetOpacityActionArguments(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type __RKEntitySetOpacityActionArguments.CodingKeys and conformance __RKEntitySetOpacityActionArguments.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v12 = v11;
  v13 = v20;
  v26 = 0;
  lazy protocol witness table accessor for type __RKEntityTriggerSpecification and conformance __RKEntityTriggerSpecification(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
  v14 = v22;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v13 + 32))(v12, v23, v4);
  v25 = 1;
  KeyedDecodingContainer.decode(_:forKey:)();
  *(v12 + *(v9 + 20)) = v15;
  v24 = 2;
  KeyedDecodingContainer.decode(_:forKey:)();
  v17 = v16;
  (*(v21 + 8))(v8, v14);
  *(v12 + *(v9 + 24)) = v17;
  outlined init with copy of __RKEntityTriggerSpecification(v12, v19, type metadata accessor for __RKEntitySetOpacityActionArguments);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return outlined destroy of __RKEntityTriggerSpecification(v12, type metadata accessor for __RKEntitySetOpacityActionArguments);
}

uint64_t __RKChangeSceneActionArguments.target.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UUID();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t __RKEntityCustomActionArguments.target.setter(uint64_t a1)
{
  v3 = type metadata accessor for UUID();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t __RKEntityPlayTimelineActionArguments.animationLibraryKey.getter()
{
  v1 = *(v0 + *(type metadata accessor for __RKEntityPlayTimelineActionArguments(0) + 24));

  return v1;
}

uint64_t __RKEntityPlayTimelineActionArguments.animationLibraryKey.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for __RKEntityPlayTimelineActionArguments(0) + 24));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t __RKEntityPlayTimelineActionArguments.animationLibraryKeyOverrideEntity.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for __RKEntityPlayTimelineActionArguments(0) + 28);

  return outlined init with copy of UUID?(v3, a1);
}

uint64_t __RKEntityPlayTimelineActionArguments.animationLibraryKeyOverrideEntity.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for __RKEntityPlayTimelineActionArguments(0) + 28);

  return outlined assign with take of UUID?(a1, v3);
}

uint64_t __RKEntityPlayTimelineActionArguments.animationLibraryKeyOverrideKey.getter()
{
  v1 = *(v0 + *(type metadata accessor for __RKEntityPlayTimelineActionArguments(0) + 32));

  return v1;
}

uint64_t __RKEntityPlayTimelineActionArguments.animationLibraryKeyOverrideKey.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for __RKEntityPlayTimelineActionArguments(0) + 32));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t __RKEntityPlayTimelineActionArguments.init(target:animationLibraryComponentEntity:animationLibraryKey:animationLibraryKeyOverrideEntity:animationLibraryKeyOverrideKey:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v12 = type metadata accessor for __RKEntityPlayTimelineActionArguments(0);
  v13 = v12[7];
  v14 = type metadata accessor for UUID();
  v15 = *(v14 - 8);
  (*(v15 + 56))(a8 + v13, 1, 1, v14);
  v16 = (a8 + v12[8]);
  v17 = *(v15 + 32);
  v17(a8, a1, v14);
  v17(a8 + v12[5], a2, v14);
  v18 = (a8 + v12[6]);
  *v18 = a3;
  v18[1] = a4;
  result = outlined assign with take of UUID?(a5, a8 + v13);
  *v16 = a6;
  v16[1] = a7;
  return result;
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance __RKEntityPlayTimelineActionArguments.CodingKeys()
{
  v1 = *v0;
  v2 = 0x746567726174;
  v3 = 0xD000000000000021;
  if (v1 != 3)
  {
    v3 = 0xD00000000000001ELL;
  }

  if (v1 == 2)
  {
    v3 = 0xD000000000000013;
  }

  if (*v0)
  {
    v2 = 0xD00000000000001FLL;
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

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance __RKEntityPlayTimelineActionArguments.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized __RKEntityPlayTimelineActionArguments.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance __RKEntityPlayTimelineActionArguments.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type __RKEntityPlayTimelineActionArguments.CodingKeys and conformance __RKEntityPlayTimelineActionArguments.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance __RKEntityPlayTimelineActionArguments.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type __RKEntityPlayTimelineActionArguments.CodingKeys and conformance __RKEntityPlayTimelineActionArguments.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t __RKEntityPlayTimelineActionArguments.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy17RealityFoundation37__RKEntityPlayTimelineActionArgumentsV10CodingKeys33_DD6F8BA54B92BC4851BC0C702261433ALLOGMd, &_ss22KeyedEncodingContainerVy17RealityFoundation37__RKEntityPlayTimelineActionArgumentsV10CodingKeys33_DD6F8BA54B92BC4851BC0C702261433ALLOGMR);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type __RKEntityPlayTimelineActionArguments.CodingKeys and conformance __RKEntityPlayTimelineActionArguments.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v13 = 0;
  type metadata accessor for UUID();
  lazy protocol witness table accessor for type __RKEntityTriggerSpecification and conformance __RKEntityTriggerSpecification(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v1)
  {
    type metadata accessor for __RKEntityPlayTimelineActionArguments(0);
    v12 = 1;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v11 = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v10 = 3;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v9 = 4;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t __RKEntityPlayTimelineActionArguments.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v36 = v33 - v4;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v38 = v33 - v10;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy17RealityFoundation37__RKEntityPlayTimelineActionArgumentsV10CodingKeys33_DD6F8BA54B92BC4851BC0C702261433ALLOGMd, &_ss22KeyedDecodingContainerVy17RealityFoundation37__RKEntityPlayTimelineActionArgumentsV10CodingKeys33_DD6F8BA54B92BC4851BC0C702261433ALLOGMR);
  v37 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v12 = v33 - v11;
  v13 = type metadata accessor for __RKEntityPlayTimelineActionArguments(0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v17 = *(v16 + 28);
  v18 = *(v6 + 56);
  v42 = v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = v17;
  v18(&v42[v17], 1, 1, v5, v14);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type __RKEntityPlayTimelineActionArguments.CodingKeys and conformance __RKEntityPlayTimelineActionArguments.CodingKeys();
  v40 = v12;
  v19 = v41;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v19)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    return outlined destroy of BodyTrackingComponent?(&v42[v43], &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  }

  else
  {
    v20 = v8;
    v34 = v13;
    v41 = v6;
    v48 = 0;
    v21 = lazy protocol witness table accessor for type __RKEntityTriggerSpecification and conformance __RKEntityTriggerSpecification(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v22 = v42;
    v33[1] = v21;
    v23 = *(v41 + 32);
    v23(v42, v38, v5);
    v47 = 1;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v33[0] = v5;
    v24 = v34;
    v23((v22 + *(v34 + 20)), v20, v5);
    v46 = 2;
    v38 = 0;
    v25 = KeyedDecodingContainer.decode(_:forKey:)();
    v26 = (v22 + *(v24 + 24));
    *v26 = v25;
    v26[1] = v27;
    v45 = 3;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    outlined assign with take of UUID?(v36, v22 + v43);
    v44 = 4;
    v28 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v30 = v29;
    v31 = (v22 + *(v34 + 32));
    (*(v37 + 8))(v40, v39);
    *v31 = v28;
    v31[1] = v30;
    outlined init with copy of __RKEntityTriggerSpecification(v22, v35, type metadata accessor for __RKEntityPlayTimelineActionArguments);
    __swift_destroy_boxed_opaque_existential_1(a1);
    return outlined destroy of __RKEntityTriggerSpecification(v22, type metadata accessor for __RKEntityPlayTimelineActionArguments);
  }
}

uint64_t __RKEntityInteractionSpecification.accessibilityDescription.getter()
{
  v1 = *(v0 + *(type metadata accessor for __RKEntityInteractionSpecification(0) + 24));

  return v1;
}

uint64_t __RKEntityInteractionSpecification.accessibilityDescription.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for __RKEntityInteractionSpecification(0) + 24));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t __RKEntityInteractionSpecification.init(trigger:action:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for __RKEntityInteractionSpecification(0);
  v7 = (a3 + *(v6 + 24));
  outlined init with take of __RKEntityTriggerSpecification(a1, a3, type metadata accessor for __RKEntityTriggerSpecification);
  result = outlined init with take of __RKEntityTriggerSpecification(a2, a3 + *(v6 + 20), type metadata accessor for __RKEntityActionSpecification);
  *v7 = 0;
  v7[1] = 0;
  return result;
}

uint64_t __RKEntityInteractionSpecification.init(trigger:action:accessibilityDescription:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for __RKEntityInteractionSpecification(0);
  v11 = (a5 + *(v10 + 24));
  outlined init with take of __RKEntityTriggerSpecification(a1, a5, type metadata accessor for __RKEntityTriggerSpecification);
  result = outlined init with take of __RKEntityTriggerSpecification(a2, a5 + *(v10 + 20), type metadata accessor for __RKEntityActionSpecification);
  *v11 = a3;
  v11[1] = a4;
  return result;
}

uint64_t __RKEntityInteractionSpecification.description.getter()
{
  type metadata accessor for __RKEntityTriggerSpecification(0);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1C68F3410](540945696, 0xE400000000000000);
  type metadata accessor for __RKEntityInteractionSpecification(0);
  type metadata accessor for __RKEntityActionSpecification(0);
  _print_unlocked<A, B>(_:_:)();
  return 0;
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance __RKEntityInteractionSpecification.CodingKeys()
{
  v1 = 0x6E6F69746361;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000018;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x72656767697274;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance __RKEntityInteractionSpecification.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized __RKEntityInteractionSpecification.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance __RKEntityInteractionSpecification.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type __RKEntityInteractionSpecification.CodingKeys and conformance __RKEntityInteractionSpecification.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance __RKEntityInteractionSpecification.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type __RKEntityInteractionSpecification.CodingKeys and conformance __RKEntityInteractionSpecification.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t __RKEntityInteractionSpecification.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10RealityKit34__RKEntityInteractionSpecificationV10CodingKeys33_DD6F8BA54B92BC4851BC0C702261433ALLOGMd, &_ss22KeyedEncodingContainerVy10RealityKit34__RKEntityInteractionSpecificationV10CodingKeys33_DD6F8BA54B92BC4851BC0C702261433ALLOGMR);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type __RKEntityInteractionSpecification.CodingKeys and conformance __RKEntityInteractionSpecification.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  type metadata accessor for __RKEntityTriggerSpecification(0);
  lazy protocol witness table accessor for type __RKEntityTriggerSpecification and conformance __RKEntityTriggerSpecification(&lazy protocol witness table cache variable for type __RKEntityTriggerSpecification and conformance __RKEntityTriggerSpecification, type metadata accessor for __RKEntityTriggerSpecification, protocol conformance descriptor for __RKEntityTriggerSpecification);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v1)
  {
    type metadata accessor for __RKEntityInteractionSpecification(0);
    v8[14] = 1;
    type metadata accessor for __RKEntityActionSpecification(0);
    lazy protocol witness table accessor for type __RKEntityTriggerSpecification and conformance __RKEntityTriggerSpecification(&lazy protocol witness table cache variable for type __RKEntityActionSpecification and conformance __RKEntityActionSpecification, type metadata accessor for __RKEntityActionSpecification, protocol conformance descriptor for __RKEntityActionSpecification);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v8[13] = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t __RKEntityInteractionSpecification.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v30 = type metadata accessor for __RKEntityActionSpecification(0);
  MEMORY[0x1EEE9AC00](v30);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for __RKEntityTriggerSpecification(0);
  MEMORY[0x1EEE9AC00](v6);
  v32 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10RealityKit34__RKEntityInteractionSpecificationV10CodingKeys33_DD6F8BA54B92BC4851BC0C702261433ALLOGMd, &_ss22KeyedDecodingContainerVy10RealityKit34__RKEntityInteractionSpecificationV10CodingKeys33_DD6F8BA54B92BC4851BC0C702261433ALLOGMR);
  v31 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v9 = &v27 - v8;
  v10 = type metadata accessor for __RKEntityInteractionSpecification(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v34 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  lazy protocol witness table accessor for type __RKEntityInteractionSpecification.CodingKeys and conformance __RKEntityInteractionSpecification.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v34);
  }

  v28 = v10;
  v14 = v31;
  v15 = v12;
  v37 = 0;
  lazy protocol witness table accessor for type __RKEntityTriggerSpecification and conformance __RKEntityTriggerSpecification(&lazy protocol witness table cache variable for type __RKEntityTriggerSpecification and conformance __RKEntityTriggerSpecification, type metadata accessor for __RKEntityTriggerSpecification, protocol conformance descriptor for __RKEntityTriggerSpecification);
  v16 = v32;
  v17 = v33;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v18 = v16;
  v19 = v15;
  outlined init with take of __RKEntityTriggerSpecification(v18, v15, type metadata accessor for __RKEntityTriggerSpecification);
  v36 = 1;
  lazy protocol witness table accessor for type __RKEntityTriggerSpecification and conformance __RKEntityTriggerSpecification(&lazy protocol witness table cache variable for type __RKEntityActionSpecification and conformance __RKEntityActionSpecification, type metadata accessor for __RKEntityActionSpecification, protocol conformance descriptor for __RKEntityActionSpecification);
  v20 = v5;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v21 = v28;
  outlined init with take of __RKEntityTriggerSpecification(v20, v15 + *(v28 + 20), type metadata accessor for __RKEntityActionSpecification);
  v35 = 2;
  v22 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v24 = v23;
  v25 = (v15 + *(v21 + 24));
  (*(v14 + 8))(v9, v17);
  *v25 = v22;
  v25[1] = v24;
  outlined init with copy of __RKEntityTriggerSpecification(v19, v29, type metadata accessor for __RKEntityInteractionSpecification);
  __swift_destroy_boxed_opaque_existential_1(v34);
  return outlined destroy of __RKEntityTriggerSpecification(v19, type metadata accessor for __RKEntityInteractionSpecification);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance __RKEntityInteractionSpecification(uint64_t a1)
{
  type metadata accessor for __RKEntityTriggerSpecification(0);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1C68F3410](540945696, 0xE400000000000000);
  type metadata accessor for __RKEntityActionSpecification(0);
  _print_unlocked<A, B>(_:_:)();
  return 0;
}

uint64_t specialized static __RKEntityAudioActionArguments.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for __RKEntityAudioActionArguments(0);
  v5 = v4[5];
  v6 = *(a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v6 == *v8 && v7 == v8[1];
  if (!v9 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v10 = v4[6];
  v11 = *(a1 + v10);
  v12 = *(a2 + v10);
  if (v11 == 3)
  {
    if (v12 != 3)
    {
      return 0;
    }

    goto LABEL_25;
  }

  if (v12 == 3)
  {
    return 0;
  }

  v13 = 2036427888;
  if (!v11)
  {
    v14 = 0xE400000000000000;
    v15 = 2036427888;
    if (v12)
    {
      goto LABEL_16;
    }

    goto LABEL_19;
  }

  if (v11 != 1)
  {
    v14 = 0xE400000000000000;
    v15 = 1886352499;
    if (v12)
    {
      goto LABEL_16;
    }

LABEL_19:
    v16 = 0xE400000000000000;
    goto LABEL_21;
  }

  v14 = 0xE500000000000000;
  v15 = 0x6573756170;
  if (!v12)
  {
    goto LABEL_19;
  }

LABEL_16:
  if (v12 == 1)
  {
    v16 = 0xE500000000000000;
    v13 = 0x6573756170;
  }

  else
  {
    v16 = 0xE400000000000000;
    v13 = 1886352499;
  }

LABEL_21:
  if (v15 == v13 && v14 == v16)
  {
  }

  else
  {
    v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v17 & 1) == 0)
    {
      return 0;
    }
  }

LABEL_25:
  v18 = v4[7];
  v19 = (a1 + v18);
  v20 = *(a1 + v18 + 8);
  v21 = (a2 + v18);
  v22 = *(a2 + v18 + 8);
  if (v20)
  {
    if (!v22)
    {
      return 0;
    }
  }

  else
  {
    if (*v19 != *v21)
    {
      LOBYTE(v22) = 1;
    }

    if (v22)
    {
      return 0;
    }
  }

  v23 = v4[8];
  v24 = *(a1 + v23);
  v25 = *(a2 + v23);
  if (v24 == 2)
  {
    if (v25 != 2)
    {
      return 0;
    }

    goto LABEL_36;
  }

  result = 0;
  if (v25 != 2 && ((v25 ^ v24) & 1) == 0)
  {
LABEL_36:
    v27 = v4[9];
    v28 = *(a1 + v27);
    v29 = *(a2 + v27);
    if (v28 == 3)
    {
      if (v29 != 3)
      {
        return 0;
      }
    }

    else
    {
      if (v29 == 3)
      {
        return 0;
      }

      v30 = 0xEC00000065637275;
      v31 = 0x6F7320746E696F70;
      if (v28)
      {
        if (v28 == 1)
        {
          v32 = 0xE700000000000000;
          v33 = 0x746E6569626D61;
        }

        else
        {
          v32 = 0xE500000000000000;
          v33 = 0x636973756DLL;
        }
      }

      else
      {
        v33 = 0x6F7320746E696F70;
        v32 = 0xEC00000065637275;
      }

      if (v29)
      {
        if (v29 == 1)
        {
          v30 = 0xE700000000000000;
          v31 = 0x746E6569626D61;
        }

        else
        {
          v30 = 0xE500000000000000;
          v31 = 0x636973756DLL;
        }
      }

      if (v33 == v31 && v32 == v30)
      {
      }

      else
      {
        v34 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v34 & 1) == 0)
        {
          return 0;
        }
      }
    }

    v35 = v4[10];
    v36 = *(a1 + v35);
    v37 = *(a2 + v35);
    if (v36 == 3)
    {
      if (v37 == 3)
      {
        return 1;
      }
    }

    else if (v37 != 3)
    {
      v38 = 0xED00007473657571;
      v39 = 0x657220776F6C6C61;
      if (v36)
      {
        if (v36 == 1)
        {
          v40 = 0x722065726F6E6769;
          v41 = 0xEE00747365757165;
        }

        else
        {
          v40 = 0xD000000000000014;
          v41 = 0x80000001C18DD930;
        }
      }

      else
      {
        v40 = 0x657220776F6C6C61;
        v41 = 0xED00007473657571;
      }

      if (v37)
      {
        if (v37 == 1)
        {
          v39 = 0x722065726F6E6769;
          v38 = 0xEE00747365757165;
        }

        else
        {
          v39 = 0xD000000000000014;
          v38 = 0x80000001C18DD930;
        }
      }

      if (v40 == v39 && v41 == v38)
      {
      }

      else
      {
        v42 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v42 & 1) == 0)
        {
          return 0;
        }
      }

      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t specialized static __RKEntityEmphasisActionArguments.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for __RKEntityEmphasisActionArguments(0);
  v5 = v4[5];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 4);
  v8 = (a2 + v5);
  v9 = *(a2 + v5 + 4);
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }
  }

  else
  {
    if (*v6 != *v8)
    {
      LOBYTE(v9) = 1;
    }

    if (v9)
    {
      return 0;
    }
  }

  v10 = v4[6];
  v11 = (a1 + v10);
  v12 = *(a1 + v10 + 4);
  v13 = (a2 + v10);
  v14 = *(a2 + v10 + 4);
  if (v12)
  {
    if (!v14)
    {
      return 0;
    }
  }

  else
  {
    if (*v11 != *v13)
    {
      LOBYTE(v14) = 1;
    }

    if (v14)
    {
      return 0;
    }
  }

  v15 = v4[7];
  v16 = *(a1 + v15);
  v17 = *(a2 + v15);
  if (v16 == 3)
  {
    if (v17 != 3)
    {
      return 0;
    }

    goto LABEL_32;
  }

  if (v17 != 3)
  {
    v18 = 0x6369736162;
    if (v16)
    {
      if (v16 == 1)
      {
        v19 = 0xE700000000000000;
        v20 = 0x6C756679616C70;
      }

      else
      {
        v19 = 0xE400000000000000;
        v20 = 1684826487;
      }
    }

    else
    {
      v19 = 0xE500000000000000;
      v20 = 0x6369736162;
    }

    if (v17)
    {
      if (v17 == 1)
      {
        v21 = 0xE700000000000000;
        v18 = 0x6C756679616C70;
      }

      else
      {
        v21 = 0xE400000000000000;
        v18 = 1684826487;
      }
    }

    else
    {
      v21 = 0xE500000000000000;
    }

    v22 = v4;
    if (v20 == v18 && v19 == v21)
    {

      v4 = v22;
      goto LABEL_32;
    }

    v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v4 = v22;
    if (v23)
    {
LABEL_32:
      v24 = v4[8];
      v25 = *(a1 + v24);
      v26 = *(a2 + v24);
      if (v25 == 8)
      {
        if (v26 != 8)
        {
          return 0;
        }
      }

      else if (v26 == 8 || (specialized == infix<A>(_:_:)(v25, v26) & 1) == 0)
      {
        return 0;
      }

      return 1;
    }
  }

  return 0;
}

BOOL specialized static __RKEntityForceActionArguments.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for __RKEntityForceActionArguments(0);
  v5 = *(v4 + 20);
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 16);
  v8 = (a2 + v5);
  if (v7)
  {
    if ((v8[1].i8[0] & 1) == 0)
    {
      return 0;
    }

    goto LABEL_9;
  }

  if (v8[1].i8[0])
  {
    return 0;
  }

  result = 0;
  if (COERCE_FLOAT(v6->i64[0]) == COERCE_FLOAT(v8->i64[0]))
  {
    v10 = vmovn_s32(vceqq_f32(*v6, *v8));
    if (v10.i8[2] & 1) != 0 && (v10.i8[4])
    {
LABEL_9:
      v11 = *(v4 + 24);
      v12 = (a1 + v11);
      v13 = *(a1 + v11 + 16);
      v14 = (a2 + v11);
      if ((v13 & 1) == 0)
      {
        if (v14[1].i8[0])
        {
          return 0;
        }

        if (COERCE_FLOAT(v12->i64[0]) != COERCE_FLOAT(v14->i64[0]))
        {
          return 0;
        }

        v15 = vmovn_s32(vceqq_f32(*v12, *v14));
        return (v15.i8[2] & 1) != 0 && (v15.i8[4] & 1) != 0;
      }

      return (v14[1].i8[0] & 1) != 0;
    }
  }

  return result;
}

uint64_t specialized static __RKEntityHideActionArguments.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v8 = a3(0);
  v9 = v8[5];
  v10 = (a1 + v9);
  v11 = *(a1 + v9 + 4);
  v12 = (a2 + v9);
  v13 = *(a2 + v9 + 4);
  if (v11)
  {
    if (!v13)
    {
      return v13;
    }
  }

  else
  {
    if (*v10 != *v12)
    {
      LOBYTE(v13) = 1;
    }

    if (v13)
    {
      return 0;
    }
  }

  v14 = v8[6];
  v15 = (a1 + v14);
  v16 = *(a1 + v14 + 4);
  v17 = (a2 + v14);
  v13 = *(a2 + v14 + 4);
  if (v16)
  {
    if (!v13)
    {
      return v13;
    }
  }

  else
  {
    if (*v15 != *v17)
    {
      LOBYTE(v13) = 1;
    }

    if (v13)
    {
      return 0;
    }
  }

  v18 = v8[7];
  v19 = *(a2 + v18);
  if (*(a1 + v18) == 10)
  {
    if (v19 != 10)
    {
      return 0;
    }
  }

  else
  {
    if (v19 == 10)
    {
      return 0;
    }

    v20 = v8;
    v21 = specialized == infix<A>(_:_:)(*(a1 + v18), v19);
    v8 = v20;
    if ((v21 & 1) == 0)
    {
      return 0;
    }
  }

  v22 = v8[8];
  v23 = *(a1 + v22);
  v24 = *(a2 + v22);
  if (v23 == 3)
  {
    if (v24 != 3)
    {
      return 0;
    }
  }

  else
  {
    if (v24 == 3)
    {
      return 0;
    }

    v25 = 0x6E692065736165;
    if (v23)
    {
      if (v23 == 1)
      {
        v26 = 0xE800000000000000;
        v27 = 0x74756F2065736165;
      }

      else
      {
        v27 = 0xD000000000000010;
        v26 = 0x80000001C18DD6D0;
      }
    }

    else
    {
      v26 = 0xE700000000000000;
      v27 = 0x6E692065736165;
    }

    if (v24)
    {
      if (v24 == 1)
      {
        v28 = 0xE800000000000000;
        v25 = 0x74756F2065736165;
      }

      else
      {
        v25 = 0xD000000000000010;
        v28 = 0x80000001C18DD6D0;
      }
    }

    else
    {
      v28 = 0xE700000000000000;
    }

    v29 = v8;
    if (v27 == v25 && v26 == v28)
    {

      v8 = v29;
    }

    else
    {
      v30 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v8 = v29;
      if ((v30 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v31 = v8[9];
  v32 = *(a1 + v31);
  v33 = *(a2 + v31);
  if (v32 == 2)
  {
    if (v33 != 2)
    {
      return 0;
    }
  }

  else
  {
    v13 = 0;
    if (v33 == 2 || ((v33 ^ v32) & 1) != 0)
    {
      return v13;
    }
  }

  v34 = v8[10];
  v35 = (a1 + v34);
  v36 = *(a1 + v34 + 4);
  v37 = (a2 + v34);
  v13 = *(a2 + v34 + 4);
  if (v36)
  {
    if (!v13)
    {
      return v13;
    }
  }

  else
  {
    if (*v35 != *v37)
    {
      LOBYTE(v13) = 1;
    }

    if (v13)
    {
      return 0;
    }
  }

  v38 = v8[11];
  v39 = *(a1 + v38);
  v40 = *(a2 + v38);
  if (v39 == 2)
  {
    if (v40 != 2)
    {
      return 0;
    }
  }

  else
  {
    v13 = 0;
    if (v40 == 2 || ((v40 ^ v39) & 1) != 0)
    {
      return v13;
    }
  }

  v41 = v8[12];
  v42 = (a1 + v41);
  v43 = *(a1 + v41 + 4);
  v44 = (a2 + v41);
  v13 = *(a2 + v41 + 4);
  if (v43)
  {
    if (!v13)
    {
      return v13;
    }
  }

  else
  {
    if (*v42 != *v44)
    {
      LOBYTE(v13) = 1;
    }

    if (v13)
    {
      return 0;
    }
  }

  v45 = v8[13];
  v46 = (a1 + v45);
  v47 = *(a1 + v45 + 4);
  v48 = (a2 + v45);
  v13 = *(a2 + v45 + 4);
  if (v47)
  {
    if (!v13)
    {
      return v13;
    }
  }

  else
  {
    if (*v46 != *v48)
    {
      LOBYTE(v13) = 1;
    }

    if (v13)
    {
      return 0;
    }
  }

  v49 = v8[14];
  v50 = *(a1 + v49);
  v51 = *(a2 + v49);
  if (v50 == 3)
  {
    if (v51 != 3)
    {
      return 0;
    }

    goto LABEL_83;
  }

  if (v51 == 3)
  {
    return 0;
  }

  v52 = 0x6369736162;
  v53 = v8;
  if (v50)
  {
    if (v50 == 1)
    {
      v54 = 0xE700000000000000;
      v55 = 0x6C756679616C70;
    }

    else
    {
      v54 = 0xE400000000000000;
      v55 = 1684826487;
    }
  }

  else
  {
    v54 = 0xE500000000000000;
    v55 = 0x6369736162;
  }

  if (v51)
  {
    if (v51 == 1)
    {
      v56 = 0xE700000000000000;
      v52 = 0x6C756679616C70;
    }

    else
    {
      v56 = 0xE400000000000000;
      v52 = 1684826487;
    }
  }

  else
  {
    v56 = 0xE500000000000000;
  }

  if (v55 != v52 || v54 != v56)
  {
    v57 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v8 = v53;
    if (v57)
    {
      goto LABEL_83;
    }

    return 0;
  }

  v8 = v53;
LABEL_83:
  v58 = v8[15];
  v59 = *(a2 + v58);
  if (*(a1 + v58) == 10)
  {
    if (v59 != 10)
    {
      return 0;
    }
  }

  else if (v59 == 10 || (a4() & 1) == 0)
  {
    return 0;
  }

  return 1;
}

uint64_t specialized static __RKEntityFadeActionArguments.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for __RKEntityFadeActionArguments(0);
  if (*(a1 + *(v4 + 20)) != *(a2 + *(v4 + 20)))
  {
    return 0;
  }

  v5 = *(v4 + 24);
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 4);
  v8 = (a2 + v5);
  v9 = *(a2 + v5 + 4);
  if (v7)
  {
    if ((v9 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*v6 != *v8)
    {
      v9 = 1;
    }

    if (v9)
    {
      return 0;
    }
  }

  return 1;
}

BOOL specialized static __RKEntitySpinActionArguments.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for __RKEntitySpinActionArguments(0);
  v5 = v4[5];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 4);
  v8 = (a2 + v5);
  v9 = *(a2 + v5 + 4);
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }
  }

  else
  {
    if (*v6 != *v8)
    {
      LOBYTE(v9) = 1;
    }

    if (v9)
    {
      return 0;
    }
  }

  v10 = v4[6];
  v11 = (a1 + v10);
  v12 = *(a1 + v10 + 4);
  v13 = (a2 + v10);
  v14 = *(a2 + v10 + 4);
  if (v12)
  {
    if (!v14)
    {
      return 0;
    }
  }

  else
  {
    if (*v11 != *v13)
    {
      LOBYTE(v14) = 1;
    }

    if (v14)
    {
      return 0;
    }
  }

  v15 = v4[7];
  v16 = *(a1 + v15);
  v17 = *(a2 + v15);
  if (v16 == 2)
  {
    if (v17 != 2)
    {
      return 0;
    }
  }

  else
  {
    if (v17 == 2)
    {
      return 0;
    }

    v18 = v4;
    if (v16)
    {
      v19 = 0xD000000000000010;
    }

    else
    {
      v19 = 0x7369776B636F6C63;
    }

    if (v16)
    {
      v20 = 0x80000001C18DDB90;
    }

    else
    {
      v20 = 0xE900000000000065;
    }

    if (v17)
    {
      v21 = 0xD000000000000010;
    }

    else
    {
      v21 = 0x7369776B636F6C63;
    }

    if (v17)
    {
      v22 = 0x80000001C18DDB90;
    }

    else
    {
      v22 = 0xE900000000000065;
    }

    if (v19 == v21 && v20 == v22)
    {

      v4 = v18;
    }

    else
    {
      v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v4 = v18;
      if ((v24 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v25 = v4[8];
  v26 = (a1 + v25);
  v27 = *(a1 + v25 + 16);
  v28 = (a2 + v25);
  if (v27)
  {
    return (v28[1].i8[0] & 1) != 0;
  }

  if (v28[1].i8[0])
  {
    return 0;
  }

  if (COERCE_FLOAT(v26->i64[0]) != COERCE_FLOAT(v28->i64[0]))
  {
    return 0;
  }

  v30 = vmovn_s32(vceqq_f32(*v26, *v28));
  return (v30.i8[2] & 1) != 0 && (v30.i8[4] & 1) != 0;
}

BOOL specialized static __RKEntityOrbitEntityActionArguments.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for __RKEntityOrbitEntityActionArguments(0);
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v5 = v4[6];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 4);
  v8 = (a2 + v5);
  v9 = *(a2 + v5 + 4);
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }
  }

  else
  {
    if (*v6 != *v8)
    {
      LOBYTE(v9) = 1;
    }

    if (v9)
    {
      return 0;
    }
  }

  v10 = v4[7];
  v11 = (a1 + v10);
  v12 = *(a1 + v10 + 4);
  v13 = (a2 + v10);
  v14 = *(a2 + v10 + 4);
  if (v12)
  {
    if (!v14)
    {
      return 0;
    }
  }

  else
  {
    if (*v11 != *v13)
    {
      LOBYTE(v14) = 1;
    }

    if (v14)
    {
      return 0;
    }
  }

  v15 = v4[8];
  v16 = (a1 + v15);
  v17 = *(a1 + v15 + 16);
  v18 = (a2 + v15);
  if (v17)
  {
    if ((v18[1].i8[0] & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v18[1].i8[0])
    {
      return 0;
    }

    result = 0;
    if (COERCE_FLOAT(v16->i64[0]) != COERCE_FLOAT(v18->i64[0]))
    {
      return result;
    }

    v20 = vmovn_s32(vceqq_f32(*v16, *v18));
    if ((v20.i8[2] & 1) == 0 || (v20.i8[4] & 1) == 0)
    {
      return result;
    }
  }

  v21 = v4[9];
  v22 = *(a1 + v21);
  v23 = *(a2 + v21);
  if (v22 == 2)
  {
    if (v23 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v23 == 2 || ((v23 ^ v22) & 1) != 0)
    {
      return result;
    }
  }

  v24 = v4[10];
  v25 = *(a1 + v24);
  v26 = *(a2 + v24);
  if (v25 == 2)
  {
    if (v26 != 2)
    {
      return 0;
    }
  }

  else
  {
    if (v26 == 2)
    {
      return 0;
    }

    if (v25)
    {
      v27 = 0xD000000000000010;
    }

    else
    {
      v27 = 0x7369776B636F6C63;
    }

    if (v25)
    {
      v28 = 0x80000001C18DDB90;
    }

    else
    {
      v28 = 0xE900000000000065;
    }

    if (v26)
    {
      v29 = 0xD000000000000010;
    }

    else
    {
      v29 = 0x7369776B636F6C63;
    }

    if (v26)
    {
      v30 = 0x80000001C18DDB90;
    }

    else
    {
      v30 = 0xE900000000000065;
    }

    if (v27 == v29 && v28 == v30)
    {
    }

    else
    {
      v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v31 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v32 = v4[11];
  v33 = *(a1 + v32);
  v34 = *(a2 + v32);
  if (v33 == 2)
  {
    if (v34 != 2)
    {
      return 0;
    }

    goto LABEL_52;
  }

  result = 0;
  if (v34 != 2 && ((v34 ^ v33) & 1) == 0)
  {
LABEL_52:
    v35 = v4[12];
    v36 = (a1 + v35);
    v37 = *(a1 + v35 + 4);
    v38 = (a2 + v35);
    v39 = *(a2 + v35 + 4);
    if (v37)
    {
      if (!v39)
      {
        return 0;
      }
    }

    else
    {
      if (*v36 != *v38)
      {
        LOBYTE(v39) = 1;
      }

      if (v39)
      {
        return 0;
      }
    }

    v40 = v4[13];
    v41 = (a1 + v40);
    v42 = *(a1 + v40 + 4);
    v43 = (a2 + v40);
    v44 = *(a2 + v40 + 4);
    if ((v42 & 1) == 0)
    {
      if (*v41 != *v43)
      {
        v44 = 1;
      }

      return (v44 & 1) == 0;
    }

    return (v44 & 1) != 0;
  }

  return result;
}

uint64_t specialized static __RKEntityLookAtCameraActionArguments.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for __RKEntityLookAtCameraActionArguments(0);
  v5 = v4[5];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 4);
  v8 = (a2 + v5);
  v9 = *(a2 + v5 + 4);
  if (v7)
  {
    if (!v9)
    {
      return v9;
    }
  }

  else
  {
    if (*v6 != *v8)
    {
      LOBYTE(v9) = 1;
    }

    if (v9)
    {
      return 0;
    }
  }

  v10 = v4[6];
  v11 = (a1 + v10);
  v12 = *(a1 + v10 + 4);
  v13 = (a2 + v10);
  v9 = *(a2 + v10 + 4);
  if (v12)
  {
    if (!v9)
    {
      return v9;
    }
  }

  else
  {
    if (*v11 != *v13)
    {
      LOBYTE(v9) = 1;
    }

    if (v9)
    {
      return 0;
    }
  }

  v14 = v4[7];
  v15 = (a1 + v14);
  v16 = *(a1 + v14 + 16);
  v17 = (a2 + v14);
  v18 = *(a2 + v14 + 16);
  if (v16)
  {
    if ((v18 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v18)
    {
      return 0;
    }

    v9 = 0;
    if (COERCE_FLOAT(v15->i64[0]) != COERCE_FLOAT(v17->i64[0]))
    {
      return v9;
    }

    v19 = vmovn_s32(vceqq_f32(*v15, *v17));
    if ((v19.i8[2] & 1) == 0 || (v19.i8[4] & 1) == 0)
    {
      return v9;
    }
  }

  v20 = v4[8];
  v21 = (a1 + v20);
  v22 = *(a1 + v20 + 4);
  v23 = (a2 + v20);
  v9 = *(a2 + v20 + 4);
  if (v22)
  {
    if (!v9)
    {
      return v9;
    }
  }

  else
  {
    if (*v21 != *v23)
    {
      LOBYTE(v9) = 1;
    }

    if (v9)
    {
      return 0;
    }
  }

  v24 = v4[9];
  v25 = (a1 + v24);
  v26 = *(a1 + v24 + 16);
  v27 = (a2 + v24);
  v28 = *(a2 + v24 + 16);
  if ((v26 & 1) == 0)
  {
    if ((v28 & 1) == 0)
    {
      v9 = 0;
      if (COERCE_FLOAT(v25->i64[0]) != COERCE_FLOAT(v27->i64[0]))
      {
        return v9;
      }

      v29 = vmovn_s32(vceqq_f32(*v25, *v27));
      if ((v29.i8[2] & 1) == 0 || (v29.i8[4] & 1) == 0)
      {
        return v9;
      }

      goto LABEL_34;
    }

    return 0;
  }

  if ((v28 & 1) == 0)
  {
    return 0;
  }

LABEL_34:
  v30 = v4[10];
  v31 = *(a1 + v30);
  v32 = *(a2 + v30);
  if (v31 == 2)
  {
    if (v32 != 2)
    {
      return 0;
    }
  }

  else if (v32 == 2 || ((v32 ^ v31) & 1) != 0)
  {
    return 0;
  }

  return 1;
}

uint64_t specialized static __RKEntityPlayTimelineActionArguments.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v32 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v32 - v12;
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v14 = type metadata accessor for __RKEntityPlayTimelineActionArguments(0);
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v15 = v14[6];
  v16 = *(a1 + v15);
  v17 = *(a1 + v15 + 8);
  v18 = (a2 + v15);
  v19 = v16 == *v18 && v17 == v18[1];
  if (!v19 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v20 = v14[7];
  v21 = *(v11 + 48);
  outlined init with copy of UUID?(a1 + v20, v13);
  outlined init with copy of UUID?(a2 + v20, &v13[v21]);
  v33 = v5;
  v22 = *(v5 + 48);
  if (v22(v13, 1, v4) != 1)
  {
    outlined init with copy of UUID?(v13, v10);
    if (v22(&v13[v21], 1, v4) != 1)
    {
      v24 = v33;
      (*(v33 + 32))(v7, &v13[v21], v4);
      lazy protocol witness table accessor for type __RKEntityTriggerSpecification and conformance __RKEntityTriggerSpecification(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
      v25 = dispatch thunk of static Equatable.== infix(_:_:)();
      v26 = *(v24 + 8);
      v26(v7, v4);
      v26(v10, v4);
      outlined destroy of BodyTrackingComponent?(v13, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      if ((v25 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_17;
    }

    (*(v33 + 8))(v10, v4);
LABEL_13:
    outlined destroy of BodyTrackingComponent?(v13, &_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
    return 0;
  }

  if (v22(&v13[v21], 1, v4) != 1)
  {
    goto LABEL_13;
  }

  outlined destroy of BodyTrackingComponent?(v13, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
LABEL_17:
  v27 = v14[8];
  v28 = (a1 + v27);
  v29 = *(a1 + v27 + 8);
  v30 = (a2 + v27);
  v31 = v30[1];
  if (v29)
  {
    if (v31 && (*v28 == *v30 && v29 == v31 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v31)
  {
    return 1;
  }

  return 0;
}

BOOL specialized static __RKEntityTransformActionArguments.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v67[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v67[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v67[-v12];
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v14 = type metadata accessor for __RKEntityTransformActionArguments(0);
  v15 = v14[5];
  v16 = (a1 + v15);
  v17 = *(a1 + v15 + 16);
  v18 = (a2 + v15);
  v19 = *(a2 + v15 + 16);
  if (v17)
  {
    if ((v19 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v19)
    {
      return 0;
    }

    v20 = 0;
    if (COERCE_FLOAT(v16->i64[0]) != COERCE_FLOAT(v18->i64[0]))
    {
      return v20;
    }

    v21 = vmovn_s32(vceqq_f32(*v16, *v18));
    if ((v21.i8[2] & 1) == 0 || (v21.i8[4] & 1) == 0)
    {
      return v20;
    }
  }

  v22 = v14[6];
  v23 = (a1 + v22);
  v24 = *(a1 + v22 + 16);
  v25 = (a2 + v22);
  if (v24)
  {
    if ((v25[1].i8[0] & 1) == 0)
    {
      return 0;
    }
  }

  else if ((v25[1].i8[0] & 1) != 0 || (vminv_u16(vmovn_s32(vceqq_f32(*v23, *v25))) & 1) == 0)
  {
    return 0;
  }

  v26 = v14[7];
  v27 = (a1 + v26);
  v28 = *(a1 + v26 + 4);
  v29 = (a2 + v26);
  v20 = *(a2 + v26 + 4);
  if (v28)
  {
    if (!v20)
    {
      return v20;
    }
  }

  else
  {
    if (*v27 != *v29)
    {
      LOBYTE(v20) = 1;
    }

    if (v20)
    {
      return 0;
    }
  }

  v30 = v14[8];
  v31 = (a1 + v30);
  v32 = *(a1 + v30 + 4);
  v33 = (a2 + v30);
  v20 = *(a2 + v30 + 4);
  if (v32)
  {
    if (!v20)
    {
      return v20;
    }
  }

  else
  {
    if (*v31 != *v33)
    {
      LOBYTE(v20) = 1;
    }

    if (v20)
    {
      return 0;
    }
  }

  v34 = v14[9];
  v35 = *(a1 + v34);
  v36 = *(a2 + v34);
  if (v35 == 2)
  {
    if (v36 != 2)
    {
      return 0;
    }
  }

  else
  {
    if (v36 == 2)
    {
      return 0;
    }

    v69 = v14;
    if (v35)
    {
      v37 = "move by distance";
    }

    else
    {
      v37 = "e";
    }

    if (v36)
    {
      v38 = "move by distance";
    }

    else
    {
      v38 = "e";
    }

    if ((v37 | 0x8000000000000000) == (v38 | 0x8000000000000000))
    {

      v14 = v69;
    }

    else
    {
      v68 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v14 = v69;
      if ((v68 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v39 = v14[10];
  v40 = *(a2 + v39);
  if (*(a1 + v39) == 10)
  {
    if (v40 != 10)
    {
      return 0;
    }
  }

  else
  {
    if (v40 == 10)
    {
      return 0;
    }

    v41 = v14;
    v42 = specialized == infix<A>(_:_:)(*(a1 + v39), v40);
    v14 = v41;
    if ((v42 & 1) == 0)
    {
      return 0;
    }
  }

  v43 = v14[11];
  v44 = *(a1 + v43);
  v45 = *(a2 + v43);
  if (v44 == 3)
  {
    if (v45 != 3)
    {
      return 0;
    }
  }

  else
  {
    if (v45 == 3)
    {
      return 0;
    }

    v46 = 0x6E692065736165;
    if (v44)
    {
      if (v44 == 1)
      {
        v47 = 0xE800000000000000;
        v48 = 0x74756F2065736165;
      }

      else
      {
        v48 = 0xD000000000000010;
        v47 = 0x80000001C18DD6D0;
      }
    }

    else
    {
      v47 = 0xE700000000000000;
      v48 = 0x6E692065736165;
    }

    if (v45)
    {
      if (v45 == 1)
      {
        v49 = 0xE800000000000000;
        v46 = 0x74756F2065736165;
      }

      else
      {
        v46 = 0xD000000000000010;
        v49 = 0x80000001C18DD6D0;
      }
    }

    else
    {
      v49 = 0xE700000000000000;
    }

    v69 = v14;
    if (v48 == v46 && v47 == v49)
    {

      v14 = v69;
    }

    else
    {
      v68 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v14 = v69;
      if ((v68 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v50 = v14[12];
  v51 = *(a1 + v50);
  v52 = *(a2 + v50);
  if (v51 == 2)
  {
    if (v52 != 2)
    {
      return 0;
    }

    goto LABEL_67;
  }

  v20 = 0;
  if (v52 != 2 && ((v52 ^ v51) & 1) == 0)
  {
LABEL_67:
    v53 = v14[13];
    v54 = (a1 + v53);
    v55 = *(a1 + v53 + 4);
    v56 = (a2 + v53);
    v20 = *(a2 + v53 + 4);
    if (v55)
    {
      if (!v20)
      {
        return v20;
      }
    }

    else
    {
      if (*v54 != *v56)
      {
        LOBYTE(v20) = 1;
      }

      if (v20)
      {
        return 0;
      }
    }

    v57 = v14[14];
    v58 = (a1 + v57);
    v59 = *(a1 + v57 + 4);
    v60 = (a2 + v57);
    v20 = *(a2 + v57 + 4);
    if (v59)
    {
      if (!v20)
      {
        return v20;
      }
    }

    else
    {
      if (*v58 != *v60)
      {
        LOBYTE(v20) = 1;
      }

      if (v20)
      {
        return 0;
      }
    }

    v61 = v14[15];
    v62 = *(v11 + 48);
    outlined init with copy of UUID?(a1 + v61, v13);
    outlined init with copy of UUID?(a2 + v61, &v13[v62]);
    v63 = *(v5 + 48);
    if (v63(v13, 1, v4) == 1)
    {
      if (v63(&v13[v62], 1, v4) == 1)
      {
        outlined destroy of BodyTrackingComponent?(v13, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        return 1;
      }

      goto LABEL_84;
    }

    outlined init with copy of UUID?(v13, v10);
    if (v63(&v13[v62], 1, v4) == 1)
    {
      (*(v5 + 8))(v10, v4);
LABEL_84:
      outlined destroy of BodyTrackingComponent?(v13, &_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
      return 0;
    }

    (*(v5 + 32))(v7, &v13[v62], v4);
    lazy protocol witness table accessor for type __RKEntityTriggerSpecification and conformance __RKEntityTriggerSpecification(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
    v65 = dispatch thunk of static Equatable.== infix(_:_:)();
    v66 = *(v5 + 8);
    v66(v7, v4);
    v66(v10, v4);
    outlined destroy of BodyTrackingComponent?(v13, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    return (v65 & 1) != 0;
  }

  return v20;
}

uint64_t specialized static __RKEntityInteractionSpecification.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (specialized static __RKEntityTriggerSpecification.== infix(_:_:)(a1, a2))
  {
    v4 = type metadata accessor for __RKEntityInteractionSpecification(0);
    if (specialized static __RKEntityActionSpecification.== infix(_:_:)(a1 + *(v4 + 20), (a2 + *(v4 + 20))))
    {
      v5 = *(v4 + 24);
      v6 = (a1 + v5);
      v7 = *(a1 + v5 + 8);
      v8 = (a2 + v5);
      v9 = v8[1];
      if (v7)
      {
        if (v9)
        {
          v10 = *v6 == *v8 && v7 == v9;
          if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            return 1;
          }
        }
      }

      else if (!v9)
      {
        return 1;
      }
    }
  }

  return 0;
}

unint64_t lazy protocol witness table accessor for type __RKEntityTriggerSpecification.CodingKeys and conformance __RKEntityTriggerSpecification.CodingKeys()
{
  result = lazy protocol witness table cache variable for type __RKEntityTriggerSpecification.CodingKeys and conformance __RKEntityTriggerSpecification.CodingKeys;
  if (!lazy protocol witness table cache variable for type __RKEntityTriggerSpecification.CodingKeys and conformance __RKEntityTriggerSpecification.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __RKEntityTriggerSpecification.CodingKeys, &unk_1F40EE548, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntityTriggerSpecification.CodingKeys and conformance __RKEntityTriggerSpecification.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __RKEntityTriggerSpecification.CodingKeys and conformance __RKEntityTriggerSpecification.CodingKeys;
  if (!lazy protocol witness table cache variable for type __RKEntityTriggerSpecification.CodingKeys and conformance __RKEntityTriggerSpecification.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __RKEntityTriggerSpecification.CodingKeys, &unk_1F40EE548, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntityTriggerSpecification.CodingKeys and conformance __RKEntityTriggerSpecification.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __RKEntityTriggerSpecification.CodingKeys and conformance __RKEntityTriggerSpecification.CodingKeys;
  if (!lazy protocol witness table cache variable for type __RKEntityTriggerSpecification.CodingKeys and conformance __RKEntityTriggerSpecification.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __RKEntityTriggerSpecification.CodingKeys, &unk_1F40EE548, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntityTriggerSpecification.CodingKeys and conformance __RKEntityTriggerSpecification.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __RKEntityTriggerSpecification.CodingKeys and conformance __RKEntityTriggerSpecification.CodingKeys;
  if (!lazy protocol witness table cache variable for type __RKEntityTriggerSpecification.CodingKeys and conformance __RKEntityTriggerSpecification.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __RKEntityTriggerSpecification.CodingKeys, &unk_1F40EE548, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntityTriggerSpecification.CodingKeys and conformance __RKEntityTriggerSpecification.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type __RKEntityTriggerSpecification.TriggerError and conformance __RKEntityTriggerSpecification.TriggerError()
{
  result = lazy protocol witness table cache variable for type __RKEntityTriggerSpecification.TriggerError and conformance __RKEntityTriggerSpecification.TriggerError;
  if (!lazy protocol witness table cache variable for type __RKEntityTriggerSpecification.TriggerError and conformance __RKEntityTriggerSpecification.TriggerError)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __RKEntityTriggerSpecification.TriggerError, &unk_1F40EE4B8, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntityTriggerSpecification.TriggerError and conformance __RKEntityTriggerSpecification.TriggerError);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type __RKEntityTriggerSpecification.GroupCodingKeys and conformance __RKEntityTriggerSpecification.GroupCodingKeys()
{
  result = lazy protocol witness table cache variable for type __RKEntityTriggerSpecification.GroupCodingKeys and conformance __RKEntityTriggerSpecification.GroupCodingKeys;
  if (!lazy protocol witness table cache variable for type __RKEntityTriggerSpecification.GroupCodingKeys and conformance __RKEntityTriggerSpecification.GroupCodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __RKEntityTriggerSpecification.GroupCodingKeys, &unk_1F40EE8A8, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntityTriggerSpecification.GroupCodingKeys and conformance __RKEntityTriggerSpecification.GroupCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __RKEntityTriggerSpecification.GroupCodingKeys and conformance __RKEntityTriggerSpecification.GroupCodingKeys;
  if (!lazy protocol witness table cache variable for type __RKEntityTriggerSpecification.GroupCodingKeys and conformance __RKEntityTriggerSpecification.GroupCodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __RKEntityTriggerSpecification.GroupCodingKeys, &unk_1F40EE8A8, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntityTriggerSpecification.GroupCodingKeys and conformance __RKEntityTriggerSpecification.GroupCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __RKEntityTriggerSpecification.GroupCodingKeys and conformance __RKEntityTriggerSpecification.GroupCodingKeys;
  if (!lazy protocol witness table cache variable for type __RKEntityTriggerSpecification.GroupCodingKeys and conformance __RKEntityTriggerSpecification.GroupCodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __RKEntityTriggerSpecification.GroupCodingKeys, &unk_1F40EE8A8, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntityTriggerSpecification.GroupCodingKeys and conformance __RKEntityTriggerSpecification.GroupCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __RKEntityTriggerSpecification.GroupCodingKeys and conformance __RKEntityTriggerSpecification.GroupCodingKeys;
  if (!lazy protocol witness table cache variable for type __RKEntityTriggerSpecification.GroupCodingKeys and conformance __RKEntityTriggerSpecification.GroupCodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __RKEntityTriggerSpecification.GroupCodingKeys, &unk_1F40EE8A8, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntityTriggerSpecification.GroupCodingKeys and conformance __RKEntityTriggerSpecification.GroupCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [__RKEntityTriggerSpecification] and conformance <A> [A]()
{
  result = lazy protocol witness table cache variable for type [__RKEntityTriggerSpecification] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [__RKEntityTriggerSpecification] and conformance <A> [A])
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay10RealityKit30__RKEntityTriggerSpecificationOGMd, &_sSay10RealityKit30__RKEntityTriggerSpecificationOGMR);
    v4[0] = lazy protocol witness table accessor for type __RKEntityTriggerSpecification and conformance __RKEntityTriggerSpecification(&lazy protocol witness table cache variable for type __RKEntityTriggerSpecification and conformance __RKEntityTriggerSpecification, type metadata accessor for __RKEntityTriggerSpecification, protocol conformance descriptor for __RKEntityTriggerSpecification);
    result = swift_getWitnessTable(MEMORY[0x1E69E6330], v3, v4);
    atomic_store(result, &lazy protocol witness table cache variable for type [__RKEntityTriggerSpecification] and conformance <A> [A]);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type [__RKEntityTriggerSpecification] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [__RKEntityTriggerSpecification] and conformance <A> [A])
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay10RealityKit30__RKEntityTriggerSpecificationOGMd, &_sSay10RealityKit30__RKEntityTriggerSpecificationOGMR);
    v4[0] = lazy protocol witness table accessor for type __RKEntityTriggerSpecification and conformance __RKEntityTriggerSpecification(&lazy protocol witness table cache variable for type __RKEntityTriggerSpecification and conformance __RKEntityTriggerSpecification, type metadata accessor for __RKEntityTriggerSpecification, protocol conformance descriptor for __RKEntityTriggerSpecification);
    result = swift_getWitnessTable(MEMORY[0x1E69E6300], v3, v4);
    atomic_store(result, &lazy protocol witness table cache variable for type [__RKEntityTriggerSpecification] and conformance <A> [A]);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type __RKEntityTriggerSpecification.TapTargetCodingKeys and conformance __RKEntityTriggerSpecification.TapTargetCodingKeys()
{
  result = lazy protocol witness table cache variable for type __RKEntityTriggerSpecification.TapTargetCodingKeys and conformance __RKEntityTriggerSpecification.TapTargetCodingKeys;
  if (!lazy protocol witness table cache variable for type __RKEntityTriggerSpecification.TapTargetCodingKeys and conformance __RKEntityTriggerSpecification.TapTargetCodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __RKEntityTriggerSpecification.TapTargetCodingKeys, &unk_1F40EE818, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntityTriggerSpecification.TapTargetCodingKeys and conformance __RKEntityTriggerSpecification.TapTargetCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __RKEntityTriggerSpecification.TapTargetCodingKeys and conformance __RKEntityTriggerSpecification.TapTargetCodingKeys;
  if (!lazy protocol witness table cache variable for type __RKEntityTriggerSpecification.TapTargetCodingKeys and conformance __RKEntityTriggerSpecification.TapTargetCodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __RKEntityTriggerSpecification.TapTargetCodingKeys, &unk_1F40EE818, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntityTriggerSpecification.TapTargetCodingKeys and conformance __RKEntityTriggerSpecification.TapTargetCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __RKEntityTriggerSpecification.TapTargetCodingKeys and conformance __RKEntityTriggerSpecification.TapTargetCodingKeys;
  if (!lazy protocol witness table cache variable for type __RKEntityTriggerSpecification.TapTargetCodingKeys and conformance __RKEntityTriggerSpecification.TapTargetCodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __RKEntityTriggerSpecification.TapTargetCodingKeys, &unk_1F40EE818, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntityTriggerSpecification.TapTargetCodingKeys and conformance __RKEntityTriggerSpecification.TapTargetCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __RKEntityTriggerSpecification.TapTargetCodingKeys and conformance __RKEntityTriggerSpecification.TapTargetCodingKeys;
  if (!lazy protocol witness table cache variable for type __RKEntityTriggerSpecification.TapTargetCodingKeys and conformance __RKEntityTriggerSpecification.TapTargetCodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __RKEntityTriggerSpecification.TapTargetCodingKeys, &unk_1F40EE818, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntityTriggerSpecification.TapTargetCodingKeys and conformance __RKEntityTriggerSpecification.TapTargetCodingKeys);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type __RKEntityTriggerSpecification and conformance __RKEntityTriggerSpecification(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

unint64_t lazy protocol witness table accessor for type __RKEntityTriggerSpecification.CustomWithArgumentsCodingKeys and conformance __RKEntityTriggerSpecification.CustomWithArgumentsCodingKeys()
{
  result = lazy protocol witness table cache variable for type __RKEntityTriggerSpecification.CustomWithArgumentsCodingKeys and conformance __RKEntityTriggerSpecification.CustomWithArgumentsCodingKeys;
  if (!lazy protocol witness table cache variable for type __RKEntityTriggerSpecification.CustomWithArgumentsCodingKeys and conformance __RKEntityTriggerSpecification.CustomWithArgumentsCodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __RKEntityTriggerSpecification.CustomWithArgumentsCodingKeys, &unk_1F40EE788, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntityTriggerSpecification.CustomWithArgumentsCodingKeys and conformance __RKEntityTriggerSpecification.CustomWithArgumentsCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __RKEntityTriggerSpecification.CustomWithArgumentsCodingKeys and conformance __RKEntityTriggerSpecification.CustomWithArgumentsCodingKeys;
  if (!lazy protocol witness table cache variable for type __RKEntityTriggerSpecification.CustomWithArgumentsCodingKeys and conformance __RKEntityTriggerSpecification.CustomWithArgumentsCodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __RKEntityTriggerSpecification.CustomWithArgumentsCodingKeys, &unk_1F40EE788, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntityTriggerSpecification.CustomWithArgumentsCodingKeys and conformance __RKEntityTriggerSpecification.CustomWithArgumentsCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __RKEntityTriggerSpecification.CustomWithArgumentsCodingKeys and conformance __RKEntityTriggerSpecification.CustomWithArgumentsCodingKeys;
  if (!lazy protocol witness table cache variable for type __RKEntityTriggerSpecification.CustomWithArgumentsCodingKeys and conformance __RKEntityTriggerSpecification.CustomWithArgumentsCodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __RKEntityTriggerSpecification.CustomWithArgumentsCodingKeys, &unk_1F40EE788, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntityTriggerSpecification.CustomWithArgumentsCodingKeys and conformance __RKEntityTriggerSpecification.CustomWithArgumentsCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __RKEntityTriggerSpecification.CustomWithArgumentsCodingKeys and conformance __RKEntityTriggerSpecification.CustomWithArgumentsCodingKeys;
  if (!lazy protocol witness table cache variable for type __RKEntityTriggerSpecification.CustomWithArgumentsCodingKeys and conformance __RKEntityTriggerSpecification.CustomWithArgumentsCodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __RKEntityTriggerSpecification.CustomWithArgumentsCodingKeys, &unk_1F40EE788, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntityTriggerSpecification.CustomWithArgumentsCodingKeys and conformance __RKEntityTriggerSpecification.CustomWithArgumentsCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type __RKEntityTriggerSpecification.CustomCodingKeys and conformance __RKEntityTriggerSpecification.CustomCodingKeys()
{
  result = lazy protocol witness table cache variable for type __RKEntityTriggerSpecification.CustomCodingKeys and conformance __RKEntityTriggerSpecification.CustomCodingKeys;
  if (!lazy protocol witness table cache variable for type __RKEntityTriggerSpecification.CustomCodingKeys and conformance __RKEntityTriggerSpecification.CustomCodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __RKEntityTriggerSpecification.CustomCodingKeys, &unk_1F40EE6F8, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntityTriggerSpecification.CustomCodingKeys and conformance __RKEntityTriggerSpecification.CustomCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __RKEntityTriggerSpecification.CustomCodingKeys and conformance __RKEntityTriggerSpecification.CustomCodingKeys;
  if (!lazy protocol witness table cache variable for type __RKEntityTriggerSpecification.CustomCodingKeys and conformance __RKEntityTriggerSpecification.CustomCodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __RKEntityTriggerSpecification.CustomCodingKeys, &unk_1F40EE6F8, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntityTriggerSpecification.CustomCodingKeys and conformance __RKEntityTriggerSpecification.CustomCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __RKEntityTriggerSpecification.CustomCodingKeys and conformance __RKEntityTriggerSpecification.CustomCodingKeys;
  if (!lazy protocol witness table cache variable for type __RKEntityTriggerSpecification.CustomCodingKeys and conformance __RKEntityTriggerSpecification.CustomCodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __RKEntityTriggerSpecification.CustomCodingKeys, &unk_1F40EE6F8, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntityTriggerSpecification.CustomCodingKeys and conformance __RKEntityTriggerSpecification.CustomCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __RKEntityTriggerSpecification.CustomCodingKeys and conformance __RKEntityTriggerSpecification.CustomCodingKeys;
  if (!lazy protocol witness table cache variable for type __RKEntityTriggerSpecification.CustomCodingKeys and conformance __RKEntityTriggerSpecification.CustomCodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __RKEntityTriggerSpecification.CustomCodingKeys, &unk_1F40EE6F8, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntityTriggerSpecification.CustomCodingKeys and conformance __RKEntityTriggerSpecification.CustomCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type __RKEntityTriggerSpecification.CollisionCodingKeys and conformance __RKEntityTriggerSpecification.CollisionCodingKeys()
{
  result = lazy protocol witness table cache variable for type __RKEntityTriggerSpecification.CollisionCodingKeys and conformance __RKEntityTriggerSpecification.CollisionCodingKeys;
  if (!lazy protocol witness table cache variable for type __RKEntityTriggerSpecification.CollisionCodingKeys and conformance __RKEntityTriggerSpecification.CollisionCodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __RKEntityTriggerSpecification.CollisionCodingKeys, &unk_1F40EE668, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntityTriggerSpecification.CollisionCodingKeys and conformance __RKEntityTriggerSpecification.CollisionCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __RKEntityTriggerSpecification.CollisionCodingKeys and conformance __RKEntityTriggerSpecification.CollisionCodingKeys;
  if (!lazy protocol witness table cache variable for type __RKEntityTriggerSpecification.CollisionCodingKeys and conformance __RKEntityTriggerSpecification.CollisionCodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __RKEntityTriggerSpecification.CollisionCodingKeys, &unk_1F40EE668, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntityTriggerSpecification.CollisionCodingKeys and conformance __RKEntityTriggerSpecification.CollisionCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __RKEntityTriggerSpecification.CollisionCodingKeys and conformance __RKEntityTriggerSpecification.CollisionCodingKeys;
  if (!lazy protocol witness table cache variable for type __RKEntityTriggerSpecification.CollisionCodingKeys and conformance __RKEntityTriggerSpecification.CollisionCodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __RKEntityTriggerSpecification.CollisionCodingKeys, &unk_1F40EE668, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntityTriggerSpecification.CollisionCodingKeys and conformance __RKEntityTriggerSpecification.CollisionCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __RKEntityTriggerSpecification.CollisionCodingKeys and conformance __RKEntityTriggerSpecification.CollisionCodingKeys;
  if (!lazy protocol witness table cache variable for type __RKEntityTriggerSpecification.CollisionCodingKeys and conformance __RKEntityTriggerSpecification.CollisionCodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __RKEntityTriggerSpecification.CollisionCodingKeys, &unk_1F40EE668, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntityTriggerSpecification.CollisionCodingKeys and conformance __RKEntityTriggerSpecification.CollisionCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [UUID] and conformance <A> [A]()
{
  result = lazy protocol witness table cache variable for type [UUID] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [UUID] and conformance <A> [A])
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay10Foundation4UUIDVGMd, &_sSay10Foundation4UUIDVGMR);
    v4[0] = lazy protocol witness table accessor for type __RKEntityTriggerSpecification and conformance __RKEntityTriggerSpecification(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
    result = swift_getWitnessTable(MEMORY[0x1E69E6330], v3, v4);
    atomic_store(result, &lazy protocol witness table cache variable for type [UUID] and conformance <A> [A]);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type [UUID] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [UUID] and conformance <A> [A])
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay10Foundation4UUIDVGMd, &_sSay10Foundation4UUIDVGMR);
    v4[0] = lazy protocol witness table accessor for type __RKEntityTriggerSpecification and conformance __RKEntityTriggerSpecification(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
    result = swift_getWitnessTable(MEMORY[0x1E69E6300], v3, v4);
    atomic_store(result, &lazy protocol witness table cache variable for type [UUID] and conformance <A> [A]);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type __RKEntityTriggerSpecification.ProximityCodingKeys and conformance __RKEntityTriggerSpecification.ProximityCodingKeys()
{
  result = lazy protocol witness table cache variable for type __RKEntityTriggerSpecification.ProximityCodingKeys and conformance __RKEntityTriggerSpecification.ProximityCodingKeys;
  if (!lazy protocol witness table cache variable for type __RKEntityTriggerSpecification.ProximityCodingKeys and conformance __RKEntityTriggerSpecification.ProximityCodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __RKEntityTriggerSpecification.ProximityCodingKeys, &unk_1F40EE5D8, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntityTriggerSpecification.ProximityCodingKeys and conformance __RKEntityTriggerSpecification.ProximityCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __RKEntityTriggerSpecification.ProximityCodingKeys and conformance __RKEntityTriggerSpecification.ProximityCodingKeys;
  if (!lazy protocol witness table cache variable for type __RKEntityTriggerSpecification.ProximityCodingKeys and conformance __RKEntityTriggerSpecification.ProximityCodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __RKEntityTriggerSpecification.ProximityCodingKeys, &unk_1F40EE5D8, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntityTriggerSpecification.ProximityCodingKeys and conformance __RKEntityTriggerSpecification.ProximityCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __RKEntityTriggerSpecification.ProximityCodingKeys and conformance __RKEntityTriggerSpecification.ProximityCodingKeys;
  if (!lazy protocol witness table cache variable for type __RKEntityTriggerSpecification.ProximityCodingKeys and conformance __RKEntityTriggerSpecification.ProximityCodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __RKEntityTriggerSpecification.ProximityCodingKeys, &unk_1F40EE5D8, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntityTriggerSpecification.ProximityCodingKeys and conformance __RKEntityTriggerSpecification.ProximityCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __RKEntityTriggerSpecification.ProximityCodingKeys and conformance __RKEntityTriggerSpecification.ProximityCodingKeys;
  if (!lazy protocol witness table cache variable for type __RKEntityTriggerSpecification.ProximityCodingKeys and conformance __RKEntityTriggerSpecification.ProximityCodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __RKEntityTriggerSpecification.ProximityCodingKeys, &unk_1F40EE5D8, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntityTriggerSpecification.ProximityCodingKeys and conformance __RKEntityTriggerSpecification.ProximityCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type __RKEntityProximityTrigger.ExitType and conformance __RKEntityProximityTrigger.ExitType()
{
  result = lazy protocol witness table cache variable for type __RKEntityProximityTrigger.ExitType and conformance __RKEntityProximityTrigger.ExitType;
  if (!lazy protocol witness table cache variable for type __RKEntityProximityTrigger.ExitType and conformance __RKEntityProximityTrigger.ExitType)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __RKEntityProximityTrigger.ExitType, &type metadata for __RKEntityProximityTrigger.ExitType, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntityProximityTrigger.ExitType and conformance __RKEntityProximityTrigger.ExitType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __RKEntityProximityTrigger.ExitType and conformance __RKEntityProximityTrigger.ExitType;
  if (!lazy protocol witness table cache variable for type __RKEntityProximityTrigger.ExitType and conformance __RKEntityProximityTrigger.ExitType)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __RKEntityProximityTrigger.ExitType, &type metadata for __RKEntityProximityTrigger.ExitType, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntityProximityTrigger.ExitType and conformance __RKEntityProximityTrigger.ExitType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __RKEntityProximityTrigger.ExitType and conformance __RKEntityProximityTrigger.ExitType;
  if (!lazy protocol witness table cache variable for type __RKEntityProximityTrigger.ExitType and conformance __RKEntityProximityTrigger.ExitType)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __RKEntityProximityTrigger.ExitType, &type metadata for __RKEntityProximityTrigger.ExitType, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntityProximityTrigger.ExitType and conformance __RKEntityProximityTrigger.ExitType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __RKEntityProximityTrigger.ExitType and conformance __RKEntityProximityTrigger.ExitType;
  if (!lazy protocol witness table cache variable for type __RKEntityProximityTrigger.ExitType and conformance __RKEntityProximityTrigger.ExitType)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __RKEntityProximityTrigger.ExitType, &type metadata for __RKEntityProximityTrigger.ExitType, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntityProximityTrigger.ExitType and conformance __RKEntityProximityTrigger.ExitType);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [String] and conformance <A> [A](unint64_t *a1, uint64_t a2, const char *a3)
{
  result = *a1;
  if (!result)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySSGMd, &_sSaySSGMR);
    v8 = a2;
    result = swift_getWitnessTable(a3, v7, &v8);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t specialized static __RKEntityTriggerSpecification.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v83 = a1;
  v84 = a2;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v81 = v2;
  v82 = v3;
  MEMORY[0x1EEE9AC00](v2);
  v80 = &v77 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v79 = &v77 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v78 = &v77 - v8;
  v9 = type metadata accessor for __RKEntityTriggerSpecification(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v12);
  v14 = (&v77 - v13);
  MEMORY[0x1EEE9AC00](v15);
  v17 = (&v77 - v16);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v77 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v77 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v77 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit30__RKEntityTriggerSpecificationO_ACtMd, &_s10RealityKit30__RKEntityTriggerSpecificationO_ACtMR);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v29 = &v77 - v28;
  v31 = (&v77 + *(v30 + 56) - v28);
  outlined init with copy of __RKEntityTriggerSpecification(v83, &v77 - v28, type metadata accessor for __RKEntityTriggerSpecification);
  outlined init with copy of __RKEntityTriggerSpecification(v84, v31, type metadata accessor for __RKEntityTriggerSpecification);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      outlined init with copy of __RKEntityTriggerSpecification(v29, v23, type metadata accessor for __RKEntityTriggerSpecification);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v61 = v82;
        v62 = v79;
        v63 = v31;
        v64 = v81;
        (*(v82 + 32))(v79, v63, v81);
        v56 = static UUID.== infix(_:_:)();
        v65 = *(v61 + 8);
        v65(v62, v64);
        v65(v23, v64);
        goto LABEL_34;
      }

      (*(v82 + 8))(v23, v81);
      goto LABEL_47;
    case 2u:
      outlined init with copy of __RKEntityTriggerSpecification(v29, v20, type metadata accessor for __RKEntityTriggerSpecification);
      v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV6target_SayACG17collidingEntitiesSaySSG4tagstMd, &_s10Foundation4UUIDV6target_SayACG17collidingEntitiesSaySSG4tagstMR);
      v44 = *(v43 + 48);
      v45 = *&v20[v44];
      v46 = *(v43 + 64);
      v47 = *&v20[v46];
      if (swift_getEnumCaseMultiPayload() != 2)
      {

        (*(v82 + 8))(v20, v81);
        goto LABEL_47;
      }

      v84 = v47;
      v48 = *(v31 + v44);
      v49 = *(v31 + v46);
      v51 = v81;
      v50 = v82;
      v52 = v80;
      (*(v82 + 32))(v80, v31, v81);
      v53 = static UUID.== infix(_:_:)();
      v54 = *(v50 + 8);
      v54(v20, v51);
      if (v53)
      {
        v55 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ10Foundation4UUIDV_Tt1g5(v45, v48);

        if (v55)
        {
          v56 = _sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(v84, v49);

          v54(v80, v51);
          goto LABEL_34;
        }

        v54(v80, v51);
      }

      else
      {
        v54(v52, v51);
      }

      goto LABEL_12;
    case 3u:
      outlined init with copy of __RKEntityTriggerSpecification(v29, v17, type metadata accessor for __RKEntityTriggerSpecification);
      v58 = *v17;
      v57 = v17[1];
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        goto LABEL_44;
      }

      if (v58 == *v31 && v57 == v31[1])
      {

        goto LABEL_59;
      }

      v60 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v60)
      {
        goto LABEL_59;
      }

      goto LABEL_65;
    case 4u:
      outlined init with copy of __RKEntityTriggerSpecification(v29, v14, type metadata accessor for __RKEntityTriggerSpecification);
      v38 = *v14;
      v37 = v14[1];
      v39 = v14[2];
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        v40 = v31[2];
        if (v38 == *v31 && v37 == v31[1])
        {
        }

        else
        {
          v42 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v42 & 1) == 0)
          {
LABEL_12:

            goto LABEL_64;
          }
        }

        if (v39)
        {
          if (v40)
          {

            v75 = _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_SSTt1g5(v74, v40);
            swift_bridgeObjectRelease_n();
            swift_bridgeObjectRelease_n();
            if ((v75 & 1) == 0)
            {
              goto LABEL_65;
            }

            goto LABEL_59;
          }
        }

        else if (!v40)
        {
LABEL_59:
          outlined destroy of __RKEntityTriggerSpecification(v29, type metadata accessor for __RKEntityTriggerSpecification);
          v56 = 1;
          return v56 & 1;
        }

LABEL_64:

LABEL_65:
        outlined destroy of __RKEntityTriggerSpecification(v29, type metadata accessor for __RKEntityTriggerSpecification);
        goto LABEL_48;
      }

LABEL_44:

LABEL_47:
      outlined destroy of BodyTrackingComponent?(v29, &_s10RealityKit30__RKEntityTriggerSpecificationO_ACtMd, &_s10RealityKit30__RKEntityTriggerSpecificationO_ACtMR);
LABEL_48:
      v56 = 0;
      return v56 & 1;
    case 5u:
      outlined init with copy of __RKEntityTriggerSpecification(v29, v11, type metadata accessor for __RKEntityTriggerSpecification);
      v66 = *v11;
      if (swift_getEnumCaseMultiPayload() != 5)
      {
        goto LABEL_44;
      }

      v56 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ10RealityKit30__RKEntityTriggerSpecificationO_Tt1g5(v66, *v31);

      goto LABEL_34;
    case 6u:
      if (swift_getEnumCaseMultiPayload() == 6)
      {
        goto LABEL_59;
      }

      goto LABEL_47;
    case 7u:
      if (swift_getEnumCaseMultiPayload() == 7)
      {
        goto LABEL_59;
      }

      goto LABEL_47;
    case 8u:
      if (swift_getEnumCaseMultiPayload() == 8)
      {
        goto LABEL_59;
      }

      goto LABEL_47;
    case 9u:
      if (swift_getEnumCaseMultiPayload() == 9)
      {
        goto LABEL_59;
      }

      goto LABEL_47;
    case 0xAu:
      if (swift_getEnumCaseMultiPayload() == 10)
      {
        goto LABEL_59;
      }

      goto LABEL_47;
    case 0xBu:
      if (swift_getEnumCaseMultiPayload() == 11)
      {
        goto LABEL_59;
      }

      goto LABEL_47;
    case 0xCu:
      if (swift_getEnumCaseMultiPayload() == 12)
      {
        goto LABEL_59;
      }

      goto LABEL_47;
    case 0xDu:
      if (swift_getEnumCaseMultiPayload() == 13)
      {
        goto LABEL_59;
      }

      goto LABEL_47;
    default:
      outlined init with copy of __RKEntityTriggerSpecification(v29, v26, type metadata accessor for __RKEntityTriggerSpecification);
      v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV6target_Sf8distance10RealityKit26__RKEntityProximityTriggerC8ExitTypeO4typetMd, &_s10Foundation4UUIDV6target_Sf8distance10RealityKit26__RKEntityProximityTriggerC8ExitTypeO4typetMR);
      v33 = *(v32 + 48);
      v34 = *&v26[v33];
      v35 = *(v32 + 64);
      v36 = v26[v35];
      if (swift_getEnumCaseMultiPayload())
      {
        (*(v82 + 8))(v26, v81);
        goto LABEL_47;
      }

      v67 = *(v31 + v33);
      v68 = *(v31 + v35);
      v70 = v81;
      v69 = v82;
      v71 = v78;
      (*(v82 + 32))(v78, v31, v81);
      v72 = static UUID.== infix(_:_:)();
      v73 = *(v69 + 8);
      v73(v71, v70);
      v73(v26, v70);
      if ((v72 & 1) == 0 || v34 != v67)
      {
        goto LABEL_65;
      }

      v56 = v36 == v68;
LABEL_34:
      outlined destroy of __RKEntityTriggerSpecification(v29, type metadata accessor for __RKEntityTriggerSpecification);
      return v56 & 1;
  }
}

uint64_t outlined init with copy of __RKEntityTriggerSpecification(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of __RKEntityTriggerSpecification(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with take of __RKEntityTriggerSpecification(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t lazy protocol witness table accessor for type __RKEntityActionSpecification.CodingKeys and conformance __RKEntityActionSpecification.CodingKeys()
{
  result = lazy protocol witness table cache variable for type __RKEntityActionSpecification.CodingKeys and conformance __RKEntityActionSpecification.CodingKeys;
  if (!lazy protocol witness table cache variable for type __RKEntityActionSpecification.CodingKeys and conformance __RKEntityActionSpecification.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __RKEntityActionSpecification.CodingKeys, &unk_1F40EE428, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntityActionSpecification.CodingKeys and conformance __RKEntityActionSpecification.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __RKEntityActionSpecification.CodingKeys and conformance __RKEntityActionSpecification.CodingKeys;
  if (!lazy protocol witness table cache variable for type __RKEntityActionSpecification.CodingKeys and conformance __RKEntityActionSpecification.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __RKEntityActionSpecification.CodingKeys, &unk_1F40EE428, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntityActionSpecification.CodingKeys and conformance __RKEntityActionSpecification.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __RKEntityActionSpecification.CodingKeys and conformance __RKEntityActionSpecification.CodingKeys;
  if (!lazy protocol witness table cache variable for type __RKEntityActionSpecification.CodingKeys and conformance __RKEntityActionSpecification.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __RKEntityActionSpecification.CodingKeys, &unk_1F40EE428, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntityActionSpecification.CodingKeys and conformance __RKEntityActionSpecification.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __RKEntityActionSpecification.CodingKeys and conformance __RKEntityActionSpecification.CodingKeys;
  if (!lazy protocol witness table cache variable for type __RKEntityActionSpecification.CodingKeys and conformance __RKEntityActionSpecification.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __RKEntityActionSpecification.CodingKeys, &unk_1F40EE428, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntityActionSpecification.CodingKeys and conformance __RKEntityActionSpecification.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type __RKEntityActionSpecification.ActionError and conformance __RKEntityActionSpecification.ActionError()
{
  result = lazy protocol witness table cache variable for type __RKEntityActionSpecification.ActionError and conformance __RKEntityActionSpecification.ActionError;
  if (!lazy protocol witness table cache variable for type __RKEntityActionSpecification.ActionError and conformance __RKEntityActionSpecification.ActionError)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __RKEntityActionSpecification.ActionError, &unk_1F40EE398, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntityActionSpecification.ActionError and conformance __RKEntityActionSpecification.ActionError);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type __RKFadeSceneActionArguments and conformance __RKFadeSceneActionArguments()
{
  result = lazy protocol witness table cache variable for type __RKFadeSceneActionArguments and conformance __RKFadeSceneActionArguments;
  if (!lazy protocol witness table cache variable for type __RKFadeSceneActionArguments and conformance __RKFadeSceneActionArguments)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __RKFadeSceneActionArguments, &type metadata for __RKFadeSceneActionArguments, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __RKFadeSceneActionArguments and conformance __RKFadeSceneActionArguments);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __RKFadeSceneActionArguments and conformance __RKFadeSceneActionArguments;
  if (!lazy protocol witness table cache variable for type __RKFadeSceneActionArguments and conformance __RKFadeSceneActionArguments)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __RKFadeSceneActionArguments, &type metadata for __RKFadeSceneActionArguments, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __RKFadeSceneActionArguments and conformance __RKFadeSceneActionArguments);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type __RKWaitActionArguments and conformance __RKWaitActionArguments()
{
  result = lazy protocol witness table cache variable for type __RKWaitActionArguments and conformance __RKWaitActionArguments;
  if (!lazy protocol witness table cache variable for type __RKWaitActionArguments and conformance __RKWaitActionArguments)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __RKWaitActionArguments, &type metadata for __RKWaitActionArguments, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __RKWaitActionArguments and conformance __RKWaitActionArguments);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __RKWaitActionArguments and conformance __RKWaitActionArguments;
  if (!lazy protocol witness table cache variable for type __RKWaitActionArguments and conformance __RKWaitActionArguments)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __RKWaitActionArguments, &type metadata for __RKWaitActionArguments, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __RKWaitActionArguments and conformance __RKWaitActionArguments);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type __RKEntityActionGroupArguments and conformance __RKEntityActionGroupArguments()
{
  result = lazy protocol witness table cache variable for type __RKEntityActionGroupArguments and conformance __RKEntityActionGroupArguments;
  if (!lazy protocol witness table cache variable for type __RKEntityActionGroupArguments and conformance __RKEntityActionGroupArguments)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __RKEntityActionGroupArguments, &type metadata for __RKEntityActionGroupArguments, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntityActionGroupArguments and conformance __RKEntityActionGroupArguments);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __RKEntityActionGroupArguments and conformance __RKEntityActionGroupArguments;
  if (!lazy protocol witness table cache variable for type __RKEntityActionGroupArguments and conformance __RKEntityActionGroupArguments)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __RKEntityActionGroupArguments, &type metadata for __RKEntityActionGroupArguments, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntityActionGroupArguments and conformance __RKEntityActionGroupArguments);
  }

  return result;
}

BOOL specialized static __RKEntityStartAnimateActionArguments.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v40 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v40 - v12;
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  started = type metadata accessor for __RKEntityStartAnimateActionArguments(0);
  if (*(a1 + *(started + 20)) != *(a2 + *(started + 20)))
  {
    return 0;
  }

  v15 = started;
  v41 = v5;
  v16 = 0xED00007473657571;
  v17 = 0x657220776F6C6C61;
  v18 = *(started + 24);
  v19 = *(a1 + v18);
  v20 = *(a2 + v18);
  if (v19)
  {
    if (v19 == 1)
    {
      v21 = 0x722065726F6E6769;
      v22 = 0xEE00747365757165;
      if (!v20)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v21 = 0xD000000000000014;
      v22 = 0x80000001C18DD930;
      if (!v20)
      {
        goto LABEL_13;
      }
    }
  }

  else
  {
    v21 = 0x657220776F6C6C61;
    v22 = 0xED00007473657571;
    if (!v20)
    {
      goto LABEL_13;
    }
  }

  if (v20 == 1)
  {
    v17 = 0x722065726F6E6769;
    v16 = 0xEE00747365757165;
  }

  else
  {
    v17 = 0xD000000000000014;
    v16 = 0x80000001C18DD930;
  }

LABEL_13:
  v40 = v4;
  if (v21 == v17 && v22 == v16)
  {
  }

  else
  {
    v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v23 & 1) == 0)
    {
      return 0;
    }
  }

  if (*(a1 + v15[7]) != *(a2 + v15[7]) || *(a1 + v15[8]) != *(a2 + v15[8]) || *(a1 + v15[9]) != *(a2 + v15[9]) || *(a1 + v15[10]) != *(a2 + v15[10]) || *(a1 + v15[11]) != *(a2 + v15[11]))
  {
    return 0;
  }

  v24 = v15[12];
  v25 = *(a1 + v24);
  v26 = *(a2 + v24);
  if (v25 == 2)
  {
    v27 = v41;
    if (v26 != 2)
    {
      return 0;
    }

    goto LABEL_27;
  }

  result = 0;
  v27 = v41;
  if (v26 != 2 && ((v26 ^ v25) & 1) == 0)
  {
LABEL_27:
    v29 = v15[13];
    v30 = (a1 + v29);
    v31 = *(a1 + v29 + 8);
    v32 = (a2 + v29);
    v33 = *(a2 + v29 + 8);
    if (v31)
    {
      if (!v33)
      {
        return 0;
      }
    }

    else
    {
      if (*v30 != *v32)
      {
        LOBYTE(v33) = 1;
      }

      if (v33)
      {
        return 0;
      }
    }

    v34 = v15[14];
    v35 = *(v11 + 48);
    outlined init with copy of UUID?(a1 + v34, v13);
    outlined init with copy of UUID?(a2 + v34, &v13[v35]);
    v36 = *(v27 + 48);
    v37 = v40;
    if (v36(v13, 1, v40) == 1)
    {
      if (v36(&v13[v35], 1, v37) == 1)
      {
        outlined destroy of BodyTrackingComponent?(v13, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        return 1;
      }

      goto LABEL_38;
    }

    outlined init with copy of UUID?(v13, v10);
    if (v36(&v13[v35], 1, v37) == 1)
    {
      (*(v27 + 8))(v10, v37);
LABEL_38:
      outlined destroy of BodyTrackingComponent?(v13, &_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
      return 0;
    }

    (*(v27 + 32))(v7, &v13[v35], v37);
    lazy protocol witness table accessor for type __RKEntityTriggerSpecification and conformance __RKEntityTriggerSpecification(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
    v38 = dispatch thunk of static Equatable.== infix(_:_:)();
    v39 = *(v27 + 8);
    v39(v7, v37);
    v39(v10, v37);
    outlined destroy of BodyTrackingComponent?(v13, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    return (v38 & 1) != 0;
  }

  return result;
}

uint64_t specialized static __RKEntityActionGroupArguments.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v18 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  v19 = *(a2 + 33);
  v20 = *(a1 + 33);
  v9 = *a1 == 0;
  if (*a1)
  {
    v10 = 0x65636E6575716573;
  }

  else
  {
    v10 = 0x65727275636E6F63;
  }

  if (v9)
  {
    v11 = 0xEA0000000000746ELL;
  }

  else
  {
    v11 = 0xE900000000000064;
  }

  if (*a2)
  {
    v12 = 0x65636E6575716573;
  }

  else
  {
    v12 = 0x65727275636E6F63;
  }

  if (*a2)
  {
    v13 = 0xE900000000000064;
  }

  else
  {
    v13 = 0xEA0000000000746ELL;
  }

  if (v10 == v12 && v11 == v13)
  {
  }

  else
  {
    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v15 & 1) == 0)
    {
      return 0;
    }
  }

  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ10RealityKit29__RKEntityActionSpecificationO_Tt1g5(v2, v5) & 1) == 0)
  {
    return 0;
  }

  if (v3 == 2)
  {
    if (v6 != 2)
    {
      return 0;
    }

LABEL_26:
    if (v4)
    {
      if (!v8)
      {
        return 0;
      }
    }

    else
    {
      if (v18 == v7)
      {
        v17 = v8;
      }

      else
      {
        v17 = 1;
      }

      if (v17)
      {
        return 0;
      }
    }

    if (v20 == 2)
    {
      if (v19 != 2)
      {
        return 0;
      }
    }

    else if (v19 == 2 || ((v19 ^ v20) & 1) != 0)
    {
      return 0;
    }

    return 1;
  }

  result = 0;
  if (v6 != 2 && ((v6 ^ v3) & 1) == 0)
  {
    goto LABEL_26;
  }

  return result;
}

uint64_t specialized static __RKEntityActionSpecification.== infix(_:_:)(uint64_t a1, float *a2)
{
  v211 = a1;
  v212 = a2;
  v2 = type metadata accessor for __RKEntityPlayTimelineActionArguments(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v194 = &v170 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v174 = type metadata accessor for __RKEntitySetOpacityActionArguments(0);
  MEMORY[0x1EEE9AC00](v174);
  v193 = &v170 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for __RKEntitySpinActionArguments(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v191 = &v170 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v176 = type metadata accessor for __RKEntitySwapEntityActionArguments(0);
  MEMORY[0x1EEE9AC00](v176);
  v192 = &v170 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for __RKEntityLookAtCameraActionArguments(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v190 = &v170 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for __RKEntityOrbitEntityActionArguments(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v189 = &v170 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for __RKEntityTransformActionArguments(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v188 = &v170 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for __RKEntityToggleVisibilityActionArguments(0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v187 = &v170 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for __RKEntityToggleAnimateActionArguments(0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v186 = &v170 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for __RKEntityStopAnimateActionArguments(0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v185 = &v170 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  started = type metadata accessor for __RKEntityStartAnimateActionArguments(0);
  MEMORY[0x1EEE9AC00](started - 8);
  v184 = &v170 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for __RKEntityShowActionArguments(0);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v183 = &v170 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for __RKEntityForceActionArguments(0);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v182 = &v170 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for __RKEntityHideActionArguments(0);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v181 = &v170 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v173 = type metadata accessor for __RKEntityFadeActionArguments(0);
  MEMORY[0x1EEE9AC00](v173);
  v180 = &v170 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for __RKEntityEmphasisActionArguments(0);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v178 = &v170 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v175 = type metadata accessor for __RKEntityCustomActionArguments(0);
  MEMORY[0x1EEE9AC00](v175);
  v179 = &v170 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v171 = type metadata accessor for __RKChangeSceneActionArguments(0);
  MEMORY[0x1EEE9AC00](v171);
  v177 = &v170 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for __RKEntityAudioActionArguments(0);
  MEMORY[0x1EEE9AC00](v33 - 8);
  v172 = &v170 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for __RKEntityActionSpecification(0);
  MEMORY[0x1EEE9AC00](v35);
  v208 = &v170 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v209 = &v170 - v38;
  MEMORY[0x1EEE9AC00](v39);
  v207 = &v170 - v40;
  MEMORY[0x1EEE9AC00](v41);
  v210 = &v170 - v42;
  MEMORY[0x1EEE9AC00](v43);
  v206 = &v170 - v44;
  MEMORY[0x1EEE9AC00](v45);
  v205 = &v170 - v46;
  MEMORY[0x1EEE9AC00](v47);
  v201 = (&v170 - v48);
  MEMORY[0x1EEE9AC00](v49);
  v204 = &v170 - v50;
  MEMORY[0x1EEE9AC00](v51);
  v203 = &v170 - v52;
  MEMORY[0x1EEE9AC00](v53);
  v202 = &v170 - v54;
  MEMORY[0x1EEE9AC00](v55);
  v200 = &v170 - v56;
  MEMORY[0x1EEE9AC00](v57);
  v199 = &v170 - v58;
  MEMORY[0x1EEE9AC00](v59);
  v198 = &v170 - v60;
  MEMORY[0x1EEE9AC00](v61);
  v63 = &v170 - v62;
  MEMORY[0x1EEE9AC00](v64);
  v195 = &v170 - v65;
  MEMORY[0x1EEE9AC00](v66);
  v68 = &v170 - v67;
  MEMORY[0x1EEE9AC00](v69);
  v71 = (&v170 - v70);
  MEMORY[0x1EEE9AC00](v72);
  v197 = &v170 - v73;
  MEMORY[0x1EEE9AC00](v74);
  v76 = &v170 - v75;
  MEMORY[0x1EEE9AC00](v77);
  v196 = &v170 - v78;
  MEMORY[0x1EEE9AC00](v79);
  v81 = &v170 - v80;
  MEMORY[0x1EEE9AC00](v82);
  v84 = &v170 - v83;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit29__RKEntityActionSpecificationO_ACtMd, &_s10RealityKit29__RKEntityActionSpecificationO_ACtMR);
  MEMORY[0x1EEE9AC00](v85 - 8);
  v87 = &v170 - v86;
  v89 = (&v170 + *(v88 + 56) - v86);
  outlined init with copy of __RKEntityTriggerSpecification(v211, &v170 - v86, type metadata accessor for __RKEntityActionSpecification);
  v90 = v212;
  v212 = v89;
  outlined init with copy of __RKEntityTriggerSpecification(v90, v89, type metadata accessor for __RKEntityActionSpecification);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      outlined init with copy of __RKEntityTriggerSpecification(v87, v81, type metadata accessor for __RKEntityActionSpecification);
      v127 = v212;
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        v92 = type metadata accessor for __RKChangeSceneActionArguments;
        v93 = v81;
        goto LABEL_92;
      }

      v128 = v177;
      outlined init with take of __RKEntityTriggerSpecification(v127, v177, type metadata accessor for __RKChangeSceneActionArguments);
      if (static UUID.== infix(_:_:)())
      {
        v129 = static UUID.== infix(_:_:)();
        outlined destroy of __RKEntityTriggerSpecification(v128, type metadata accessor for __RKChangeSceneActionArguments);
        if (v129)
        {
          v119 = type metadata accessor for __RKChangeSceneActionArguments;
          v118 = v81;
          goto LABEL_117;
        }
      }

      else
      {
        outlined destroy of __RKEntityTriggerSpecification(v128, type metadata accessor for __RKChangeSceneActionArguments);
      }

      v166 = type metadata accessor for __RKChangeSceneActionArguments;
      v167 = v81;
      goto LABEL_106;
    case 2u:
      v94 = v196;
      outlined init with copy of __RKEntityTriggerSpecification(v87, v196, type metadata accessor for __RKEntityActionSpecification);
      v112 = v212;
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        v163 = type metadata accessor for __RKEntityCustomActionArguments;
        goto LABEL_91;
      }

      v113 = v179;
      outlined init with take of __RKEntityTriggerSpecification(v112, v179, type metadata accessor for __RKEntityCustomActionArguments);
      if (static UUID.== infix(_:_:)())
      {
        if (v114 = *(v175 + 20), v115 = *(v94 + v114), v116 = *(v94 + v114 + 8), v117 = (v113 + v114), v115 == *v117) && v116 == v117[1] || (_stringCompareWithSmolCheck(_:_:expecting:)())
        {
          if (_sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_SSTt1g5(*(v94 + *(v175 + 24)), *(v113 + *(v175 + 24))))
          {
            outlined destroy of __RKEntityTriggerSpecification(v113, type metadata accessor for __RKEntityCustomActionArguments);
            v118 = v94;
            v119 = type metadata accessor for __RKEntityCustomActionArguments;
            goto LABEL_117;
          }
        }
      }

      outlined destroy of __RKEntityTriggerSpecification(v113, type metadata accessor for __RKEntityCustomActionArguments);
      v167 = v94;
      v166 = type metadata accessor for __RKEntityCustomActionArguments;
      goto LABEL_106;
    case 3u:
      outlined init with copy of __RKEntityTriggerSpecification(v87, v76, type metadata accessor for __RKEntityActionSpecification);
      v122 = v212;
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        v123 = v178;
        outlined init with take of __RKEntityTriggerSpecification(v122, v178, type metadata accessor for __RKEntityEmphasisActionArguments);
        v97 = specialized static __RKEntityEmphasisActionArguments.== infix(_:_:)(v76, v123);
        v124 = type metadata accessor for __RKEntityEmphasisActionArguments;
        outlined destroy of __RKEntityTriggerSpecification(v123, type metadata accessor for __RKEntityEmphasisActionArguments);
        v125 = v76;
        goto LABEL_68;
      }

      v164 = type metadata accessor for __RKEntityEmphasisActionArguments;
      goto LABEL_83;
    case 4u:
      v101 = v197;
      outlined init with copy of __RKEntityTriggerSpecification(v87, v197, type metadata accessor for __RKEntityActionSpecification);
      v102 = v212;
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        v92 = type metadata accessor for __RKEntityFadeActionArguments;
        v93 = v101;
        goto LABEL_92;
      }

      v103 = v180;
      outlined init with take of __RKEntityTriggerSpecification(v102, v180, type metadata accessor for __RKEntityFadeActionArguments);
      if ((static UUID.== infix(_:_:)() & 1) == 0 || *(v101 + *(v173 + 20)) != *(v103 + *(v173 + 20)))
      {
        outlined destroy of __RKEntityTriggerSpecification(v103, type metadata accessor for __RKEntityFadeActionArguments);
        goto LABEL_101;
      }

      v104 = *(v173 + 24);
      v105 = *(v101 + v104);
      v106 = *(v101 + v104 + 4);
      v107 = v103 + v104;
      v108 = *v107;
      v109 = *(v107 + 4);
      outlined destroy of __RKEntityTriggerSpecification(v103, type metadata accessor for __RKEntityFadeActionArguments);
      if (v106)
      {
        if (v109)
        {
          goto LABEL_116;
        }

LABEL_101:
        v166 = type metadata accessor for __RKEntityFadeActionArguments;
        v167 = v101;
        goto LABEL_106;
      }

      if (v105 == v108)
      {
        v169 = v109;
      }

      else
      {
        v169 = 1;
      }

      if (v169)
      {
        goto LABEL_101;
      }

LABEL_116:
      v119 = type metadata accessor for __RKEntityFadeActionArguments;
      v118 = v101;
LABEL_117:
      outlined destroy of __RKEntityTriggerSpecification(v118, v119);
LABEL_118:
      outlined destroy of __RKEntityTriggerSpecification(v87, type metadata accessor for __RKEntityActionSpecification);
      v97 = 1;
      return v97 & 1;
    case 5u:
      outlined init with copy of __RKEntityTriggerSpecification(v87, v71, type metadata accessor for __RKEntityActionSpecification);
      v137 = v71[1];
      v138 = *(v71 + 8);
      v139 = v212;
      if (swift_getEnumCaseMultiPayload() != 5)
      {
        goto LABEL_93;
      }

      if (*v71 != *v139)
      {
        goto LABEL_107;
      }

      v140 = *(v139 + 8);
      if (v138)
      {
        if (!*(v139 + 8))
        {
          goto LABEL_107;
        }
      }

      else
      {
        if (v137 != v139[1])
        {
          v140 = 1;
        }

        if (v140)
        {
          goto LABEL_107;
        }
      }

      goto LABEL_118;
    case 6u:
      outlined init with copy of __RKEntityTriggerSpecification(v87, v68, type metadata accessor for __RKEntityActionSpecification);
      v143 = *(v68 + 1);
      v144 = v212;
      if (swift_getEnumCaseMultiPayload() == 6)
      {
        v145 = v68[33];
        v146 = v68[32];
        v147 = *(v68 + 3);
        v148 = v68[16];
        v149 = *v144;
        v150 = *(v144 + 1);
        v151 = *(v144 + 16);
        v152 = *(v144 + 3);
        v153 = *(v144 + 32);
        v154 = *(v144 + 33);
        v219[0] = *v68;
        v220 = v143;
        v221 = v148;
        v222 = v147;
        v223 = v146;
        v224 = v145;
        v213[0] = v149;
        v214 = v150;
        v215 = v151;
        v216 = v152;
        v217 = v153;
        v218 = v154;
        v97 = specialized static __RKEntityActionGroupArguments.== infix(_:_:)(v219, v213);

        goto LABEL_70;
      }

      goto LABEL_93;
    case 7u:
      v94 = v195;
      outlined init with copy of __RKEntityTriggerSpecification(v87, v195, type metadata accessor for __RKEntityActionSpecification);
      v126 = v212;
      if (swift_getEnumCaseMultiPayload() == 7)
      {
        v96 = v181;
        outlined init with take of __RKEntityTriggerSpecification(v126, v181, type metadata accessor for __RKEntityHideActionArguments);
        v97 = specialized static __RKEntityHideActionArguments.== infix(_:_:)(v94, v96, type metadata accessor for __RKEntityHideActionArguments, specialized == infix<A>(_:_:));
        v98 = type metadata accessor for __RKEntityHideActionArguments;
        goto LABEL_67;
      }

      v163 = type metadata accessor for __RKEntityHideActionArguments;
      goto LABEL_91;
    case 8u:
      outlined init with copy of __RKEntityTriggerSpecification(v87, v63, type metadata accessor for __RKEntityActionSpecification);
      v159 = v212;
      if (swift_getEnumCaseMultiPayload() == 8)
      {
        v160 = v182;
        outlined init with take of __RKEntityTriggerSpecification(v159, v182, type metadata accessor for __RKEntityForceActionArguments);
        v97 = specialized static __RKEntityForceActionArguments.== infix(_:_:)(v63, v160);
        v124 = type metadata accessor for __RKEntityForceActionArguments;
        outlined destroy of __RKEntityTriggerSpecification(v160, type metadata accessor for __RKEntityForceActionArguments);
        v125 = v63;
        goto LABEL_68;
      }

      v92 = type metadata accessor for __RKEntityForceActionArguments;
      v93 = v63;
      goto LABEL_92;
    case 9u:
      v94 = v198;
      outlined init with copy of __RKEntityTriggerSpecification(v87, v198, type metadata accessor for __RKEntityActionSpecification);
      v111 = v212;
      if (swift_getEnumCaseMultiPayload() == 9)
      {
        v96 = v183;
        outlined init with take of __RKEntityTriggerSpecification(v111, v183, type metadata accessor for __RKEntityShowActionArguments);
        v97 = specialized static __RKEntityHideActionArguments.== infix(_:_:)(v94, v96, type metadata accessor for __RKEntityShowActionArguments, specialized == infix<A>(_:_:));
        v98 = type metadata accessor for __RKEntityShowActionArguments;
        goto LABEL_67;
      }

      v163 = type metadata accessor for __RKEntityShowActionArguments;
      goto LABEL_91;
    case 0xAu:
      v94 = v199;
      outlined init with copy of __RKEntityTriggerSpecification(v87, v199, type metadata accessor for __RKEntityActionSpecification);
      v158 = v212;
      if (swift_getEnumCaseMultiPayload() == 10)
      {
        v96 = v184;
        outlined init with take of __RKEntityTriggerSpecification(v158, v184, type metadata accessor for __RKEntityStartAnimateActionArguments);
        v97 = specialized static __RKEntityStartAnimateActionArguments.== infix(_:_:)(v94, v96);
        v98 = type metadata accessor for __RKEntityStartAnimateActionArguments;
        goto LABEL_67;
      }

      v163 = type metadata accessor for __RKEntityStartAnimateActionArguments;
      goto LABEL_91;
    case 0xBu:
      v94 = v200;
      outlined init with copy of __RKEntityTriggerSpecification(v87, v200, type metadata accessor for __RKEntityActionSpecification);
      v100 = v212;
      if (swift_getEnumCaseMultiPayload() == 11)
      {
        v96 = v185;
        outlined init with take of __RKEntityTriggerSpecification(v100, v185, type metadata accessor for __RKEntityStopAnimateActionArguments);
        v97 = static UUID.== infix(_:_:)();
        v98 = type metadata accessor for __RKEntityStopAnimateActionArguments;
        goto LABEL_67;
      }

      v163 = type metadata accessor for __RKEntityStopAnimateActionArguments;
      goto LABEL_91;
    case 0xCu:
      v94 = v202;
      outlined init with copy of __RKEntityTriggerSpecification(v87, v202, type metadata accessor for __RKEntityActionSpecification);
      v110 = v212;
      if (swift_getEnumCaseMultiPayload() == 12)
      {
        v96 = v186;
        outlined init with take of __RKEntityTriggerSpecification(v110, v186, type metadata accessor for __RKEntityToggleAnimateActionArguments);
        v97 = static UUID.== infix(_:_:)();
        v98 = type metadata accessor for __RKEntityToggleAnimateActionArguments;
        goto LABEL_67;
      }

      v163 = type metadata accessor for __RKEntityToggleAnimateActionArguments;
      goto LABEL_91;
    case 0xDu:
      v94 = v203;
      outlined init with copy of __RKEntityTriggerSpecification(v87, v203, type metadata accessor for __RKEntityActionSpecification);
      v142 = v212;
      if (swift_getEnumCaseMultiPayload() == 13)
      {
        v96 = v187;
        outlined init with take of __RKEntityTriggerSpecification(v142, v187, type metadata accessor for __RKEntityToggleVisibilityActionArguments);
        v97 = static UUID.== infix(_:_:)();
        v98 = type metadata accessor for __RKEntityToggleVisibilityActionArguments;
        goto LABEL_67;
      }

      v163 = type metadata accessor for __RKEntityToggleVisibilityActionArguments;
      goto LABEL_91;
    case 0xEu:
      v94 = v204;
      outlined init with copy of __RKEntityTriggerSpecification(v87, v204, type metadata accessor for __RKEntityActionSpecification);
      v99 = v212;
      if (swift_getEnumCaseMultiPayload() == 14)
      {
        v96 = v188;
        outlined init with take of __RKEntityTriggerSpecification(v99, v188, type metadata accessor for __RKEntityTransformActionArguments);
        v97 = specialized static __RKEntityTransformActionArguments.== infix(_:_:)(v94, v96);
        v98 = type metadata accessor for __RKEntityTransformActionArguments;
        goto LABEL_67;
      }

      v163 = type metadata accessor for __RKEntityTransformActionArguments;
      goto LABEL_91;
    case 0xFu:
      v120 = v201;
      outlined init with copy of __RKEntityTriggerSpecification(v87, v201, type metadata accessor for __RKEntityActionSpecification);
      v121 = v212;
      if (swift_getEnumCaseMultiPayload() != 15)
      {
        goto LABEL_93;
      }

      v97 = *v120 == *v121;
      goto LABEL_70;
    case 0x10u:
      v94 = v205;
      outlined init with copy of __RKEntityTriggerSpecification(v87, v205, type metadata accessor for __RKEntityActionSpecification);
      v95 = v212;
      if (swift_getEnumCaseMultiPayload() == 16)
      {
        v96 = v189;
        outlined init with take of __RKEntityTriggerSpecification(v95, v189, type metadata accessor for __RKEntityOrbitEntityActionArguments);
        v97 = specialized static __RKEntityOrbitEntityActionArguments.== infix(_:_:)(v94, v96);
        v98 = type metadata accessor for __RKEntityOrbitEntityActionArguments;
        goto LABEL_67;
      }

      v163 = type metadata accessor for __RKEntityOrbitEntityActionArguments;
      goto LABEL_91;
    case 0x11u:
      v94 = v206;
      outlined init with copy of __RKEntityTriggerSpecification(v87, v206, type metadata accessor for __RKEntityActionSpecification);
      v130 = v212;
      if (swift_getEnumCaseMultiPayload() == 17)
      {
        v96 = v190;
        outlined init with take of __RKEntityTriggerSpecification(v130, v190, type metadata accessor for __RKEntityLookAtCameraActionArguments);
        v97 = specialized static __RKEntityLookAtCameraActionArguments.== infix(_:_:)(v94, v96);
        v98 = type metadata accessor for __RKEntityLookAtCameraActionArguments;
        goto LABEL_67;
      }

      v163 = type metadata accessor for __RKEntityLookAtCameraActionArguments;
      goto LABEL_91;
    case 0x12u:
      v94 = v210;
      outlined init with copy of __RKEntityTriggerSpecification(v87, v210, type metadata accessor for __RKEntityActionSpecification);
      v155 = v212;
      if (swift_getEnumCaseMultiPayload() != 18)
      {
        v163 = type metadata accessor for __RKEntitySwapEntityActionArguments;
        goto LABEL_91;
      }

      v156 = v192;
      outlined init with take of __RKEntityTriggerSpecification(v155, v192, type metadata accessor for __RKEntitySwapEntityActionArguments);
      if (static UUID.== infix(_:_:)() & 1) != 0 && (static UUID.== infix(_:_:)() & 1) != 0 && (specialized static __RKEntityHideActionArguments.== infix(_:_:)(v94 + *(v176 + 24), v156 + *(v176 + 24), type metadata accessor for __RKEntityHideActionArguments, specialized == infix<A>(_:_:)))
      {
        v157 = specialized static __RKEntityHideActionArguments.== infix(_:_:)(v94 + *(v176 + 28), v156 + *(v176 + 28), type metadata accessor for __RKEntityShowActionArguments, specialized == infix<A>(_:_:));
        outlined destroy of __RKEntityTriggerSpecification(v156, type metadata accessor for __RKEntitySwapEntityActionArguments);
        if (v157)
        {
          v119 = type metadata accessor for __RKEntitySwapEntityActionArguments;
          v118 = v94;
          goto LABEL_117;
        }
      }

      else
      {
        outlined destroy of __RKEntityTriggerSpecification(v156, type metadata accessor for __RKEntitySwapEntityActionArguments);
      }

      v166 = type metadata accessor for __RKEntitySwapEntityActionArguments;
      v167 = v94;
      goto LABEL_106;
    case 0x13u:
      v94 = v207;
      outlined init with copy of __RKEntityTriggerSpecification(v87, v207, type metadata accessor for __RKEntityActionSpecification);
      v161 = v212;
      if (swift_getEnumCaseMultiPayload() == 19)
      {
        v96 = v191;
        outlined init with take of __RKEntityTriggerSpecification(v161, v191, type metadata accessor for __RKEntitySpinActionArguments);
        v97 = specialized static __RKEntitySpinActionArguments.== infix(_:_:)(v94, v96);
        v98 = type metadata accessor for __RKEntitySpinActionArguments;
        goto LABEL_67;
      }

      v163 = type metadata accessor for __RKEntitySpinActionArguments;
      goto LABEL_91;
    case 0x14u:
      v76 = v209;
      outlined init with copy of __RKEntityTriggerSpecification(v87, v209, type metadata accessor for __RKEntityActionSpecification);
      v131 = v212;
      if (swift_getEnumCaseMultiPayload() != 20)
      {
        v164 = type metadata accessor for __RKEntitySetOpacityActionArguments;
LABEL_83:
        v92 = v164;
        v93 = v76;
        goto LABEL_92;
      }

      v132 = v131;
      v133 = v193;
      outlined init with take of __RKEntityTriggerSpecification(v132, v193, type metadata accessor for __RKEntitySetOpacityActionArguments);
      if ((static UUID.== infix(_:_:)() & 1) != 0 && *&v76[*(v174 + 20)] == *(v133 + *(v174 + 20)))
      {
        v134 = *(v174 + 24);
        v135 = *&v76[v134];
        v136 = *(v133 + v134);
        outlined destroy of __RKEntityTriggerSpecification(v133, type metadata accessor for __RKEntitySetOpacityActionArguments);
        if (v135 == v136)
        {
          v119 = type metadata accessor for __RKEntitySetOpacityActionArguments;
          v118 = v76;
          goto LABEL_117;
        }
      }

      else
      {
        outlined destroy of __RKEntityTriggerSpecification(v133, type metadata accessor for __RKEntitySetOpacityActionArguments);
      }

      v166 = type metadata accessor for __RKEntitySetOpacityActionArguments;
      v167 = v76;
LABEL_106:
      outlined destroy of __RKEntityTriggerSpecification(v167, v166);
LABEL_107:
      outlined destroy of __RKEntityTriggerSpecification(v87, type metadata accessor for __RKEntityActionSpecification);
      goto LABEL_94;
    case 0x15u:
      v94 = v208;
      outlined init with copy of __RKEntityTriggerSpecification(v87, v208, type metadata accessor for __RKEntityActionSpecification);
      v141 = v212;
      if (swift_getEnumCaseMultiPayload() == 21)
      {
        v96 = v194;
        outlined init with take of __RKEntityTriggerSpecification(v141, v194, type metadata accessor for __RKEntityPlayTimelineActionArguments);
        v97 = specialized static __RKEntityPlayTimelineActionArguments.== infix(_:_:)(v94, v96);
        v98 = type metadata accessor for __RKEntityPlayTimelineActionArguments;
LABEL_67:
        v124 = v98;
        outlined destroy of __RKEntityTriggerSpecification(v96, v98);
        v125 = v94;
LABEL_68:
        v162 = v124;
        goto LABEL_69;
      }

      v163 = type metadata accessor for __RKEntityPlayTimelineActionArguments;
LABEL_91:
      v92 = v163;
      v93 = v94;
      goto LABEL_92;
    default:
      outlined init with copy of __RKEntityTriggerSpecification(v87, v84, type metadata accessor for __RKEntityActionSpecification);
      v91 = v212;
      if (swift_getEnumCaseMultiPayload())
      {
        v92 = type metadata accessor for __RKEntityAudioActionArguments;
        v93 = v84;
LABEL_92:
        outlined destroy of __RKEntityTriggerSpecification(v93, v92);
LABEL_93:
        outlined destroy of BodyTrackingComponent?(v87, &_s10RealityKit29__RKEntityActionSpecificationO_ACtMd, &_s10RealityKit29__RKEntityActionSpecificationO_ACtMR);
LABEL_94:
        v97 = 0;
      }

      else
      {
        v168 = v172;
        outlined init with take of __RKEntityTriggerSpecification(v91, v172, type metadata accessor for __RKEntityAudioActionArguments);
        v97 = specialized static __RKEntityAudioActionArguments.== infix(_:_:)(v84, v168);
        outlined destroy of __RKEntityTriggerSpecification(v168, type metadata accessor for __RKEntityAudioActionArguments);
        v125 = v84;
        v162 = type metadata accessor for __RKEntityAudioActionArguments;
LABEL_69:
        outlined destroy of __RKEntityTriggerSpecification(v125, v162);
LABEL_70:
        outlined destroy of __RKEntityTriggerSpecification(v87, type metadata accessor for __RKEntityActionSpecification);
      }

      return v97 & 1;
  }
}

unint64_t lazy protocol witness table accessor for type __RKEntityActionGroupArguments.CodingKeys and conformance __RKEntityActionGroupArguments.CodingKeys()
{
  result = lazy protocol witness table cache variable for type __RKEntityActionGroupArguments.CodingKeys and conformance __RKEntityActionGroupArguments.CodingKeys;
  if (!lazy protocol witness table cache variable for type __RKEntityActionGroupArguments.CodingKeys and conformance __RKEntityActionGroupArguments.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __RKEntityActionGroupArguments.CodingKeys, &unk_1F40EE308, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntityActionGroupArguments.CodingKeys and conformance __RKEntityActionGroupArguments.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __RKEntityActionGroupArguments.CodingKeys and conformance __RKEntityActionGroupArguments.CodingKeys;
  if (!lazy protocol witness table cache variable for type __RKEntityActionGroupArguments.CodingKeys and conformance __RKEntityActionGroupArguments.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __RKEntityActionGroupArguments.CodingKeys, &unk_1F40EE308, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntityActionGroupArguments.CodingKeys and conformance __RKEntityActionGroupArguments.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __RKEntityActionGroupArguments.CodingKeys and conformance __RKEntityActionGroupArguments.CodingKeys;
  if (!lazy protocol witness table cache variable for type __RKEntityActionGroupArguments.CodingKeys and conformance __RKEntityActionGroupArguments.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __RKEntityActionGroupArguments.CodingKeys, &unk_1F40EE308, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntityActionGroupArguments.CodingKeys and conformance __RKEntityActionGroupArguments.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __RKEntityActionGroupArguments.CodingKeys and conformance __RKEntityActionGroupArguments.CodingKeys;
  if (!lazy protocol witness table cache variable for type __RKEntityActionGroupArguments.CodingKeys and conformance __RKEntityActionGroupArguments.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __RKEntityActionGroupArguments.CodingKeys, &unk_1F40EE308, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntityActionGroupArguments.CodingKeys and conformance __RKEntityActionGroupArguments.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type __RKEntityGroupActionOrder and conformance __RKEntityGroupActionOrder()
{
  result = lazy protocol witness table cache variable for type __RKEntityGroupActionOrder and conformance __RKEntityGroupActionOrder;
  if (!lazy protocol witness table cache variable for type __RKEntityGroupActionOrder and conformance __RKEntityGroupActionOrder)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __RKEntityGroupActionOrder, &type metadata for __RKEntityGroupActionOrder, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntityGroupActionOrder and conformance __RKEntityGroupActionOrder);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __RKEntityGroupActionOrder and conformance __RKEntityGroupActionOrder;
  if (!lazy protocol witness table cache variable for type __RKEntityGroupActionOrder and conformance __RKEntityGroupActionOrder)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __RKEntityGroupActionOrder, &type metadata for __RKEntityGroupActionOrder, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntityGroupActionOrder and conformance __RKEntityGroupActionOrder);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __RKEntityGroupActionOrder and conformance __RKEntityGroupActionOrder;
  if (!lazy protocol witness table cache variable for type __RKEntityGroupActionOrder and conformance __RKEntityGroupActionOrder)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __RKEntityGroupActionOrder, &type metadata for __RKEntityGroupActionOrder, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntityGroupActionOrder and conformance __RKEntityGroupActionOrder);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __RKEntityGroupActionOrder and conformance __RKEntityGroupActionOrder;
  if (!lazy protocol witness table cache variable for type __RKEntityGroupActionOrder and conformance __RKEntityGroupActionOrder)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __RKEntityGroupActionOrder, &type metadata for __RKEntityGroupActionOrder, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntityGroupActionOrder and conformance __RKEntityGroupActionOrder);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [__RKEntityActionSpecification] and conformance <A> [A]()
{
  result = lazy protocol witness table cache variable for type [__RKEntityActionSpecification] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [__RKEntityActionSpecification] and conformance <A> [A])
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay10RealityKit29__RKEntityActionSpecificationOGMd, &_sSay10RealityKit29__RKEntityActionSpecificationOGMR);
    v4[0] = lazy protocol witness table accessor for type __RKEntityTriggerSpecification and conformance __RKEntityTriggerSpecification(&lazy protocol witness table cache variable for type __RKEntityActionSpecification and conformance __RKEntityActionSpecification, type metadata accessor for __RKEntityActionSpecification, protocol conformance descriptor for __RKEntityActionSpecification);
    result = swift_getWitnessTable(MEMORY[0x1E69E6300], v3, v4);
    atomic_store(result, &lazy protocol witness table cache variable for type [__RKEntityActionSpecification] and conformance <A> [A]);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type [__RKEntityActionSpecification] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [__RKEntityActionSpecification] and conformance <A> [A])
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay10RealityKit29__RKEntityActionSpecificationOGMd, &_sSay10RealityKit29__RKEntityActionSpecificationOGMR);
    v4[0] = lazy protocol witness table accessor for type __RKEntityTriggerSpecification and conformance __RKEntityTriggerSpecification(&lazy protocol witness table cache variable for type __RKEntityActionSpecification and conformance __RKEntityActionSpecification, type metadata accessor for __RKEntityActionSpecification, protocol conformance descriptor for __RKEntityActionSpecification);
    result = swift_getWitnessTable(MEMORY[0x1E69E6330], v3, v4);
    atomic_store(result, &lazy protocol witness table cache variable for type [__RKEntityActionSpecification] and conformance <A> [A]);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type __RKWaitActionArguments.CodingKeys and conformance __RKWaitActionArguments.CodingKeys()
{
  result = lazy protocol witness table cache variable for type __RKWaitActionArguments.CodingKeys and conformance __RKWaitActionArguments.CodingKeys;
  if (!lazy protocol witness table cache variable for type __RKWaitActionArguments.CodingKeys and conformance __RKWaitActionArguments.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __RKWaitActionArguments.CodingKeys, &unk_1F40EE278, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __RKWaitActionArguments.CodingKeys and conformance __RKWaitActionArguments.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __RKWaitActionArguments.CodingKeys and conformance __RKWaitActionArguments.CodingKeys;
  if (!lazy protocol witness table cache variable for type __RKWaitActionArguments.CodingKeys and conformance __RKWaitActionArguments.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __RKWaitActionArguments.CodingKeys, &unk_1F40EE278, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __RKWaitActionArguments.CodingKeys and conformance __RKWaitActionArguments.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __RKWaitActionArguments.CodingKeys and conformance __RKWaitActionArguments.CodingKeys;
  if (!lazy protocol witness table cache variable for type __RKWaitActionArguments.CodingKeys and conformance __RKWaitActionArguments.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __RKWaitActionArguments.CodingKeys, &unk_1F40EE278, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __RKWaitActionArguments.CodingKeys and conformance __RKWaitActionArguments.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __RKWaitActionArguments.CodingKeys and conformance __RKWaitActionArguments.CodingKeys;
  if (!lazy protocol witness table cache variable for type __RKWaitActionArguments.CodingKeys and conformance __RKWaitActionArguments.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __RKWaitActionArguments.CodingKeys, &unk_1F40EE278, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __RKWaitActionArguments.CodingKeys and conformance __RKWaitActionArguments.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type __RKEntityCustomActionArguments.CodingKeys and conformance __RKEntityCustomActionArguments.CodingKeys()
{
  result = lazy protocol witness table cache variable for type __RKEntityCustomActionArguments.CodingKeys and conformance __RKEntityCustomActionArguments.CodingKeys;
  if (!lazy protocol witness table cache variable for type __RKEntityCustomActionArguments.CodingKeys and conformance __RKEntityCustomActionArguments.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __RKEntityCustomActionArguments.CodingKeys, &unk_1F40EE1E8, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntityCustomActionArguments.CodingKeys and conformance __RKEntityCustomActionArguments.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __RKEntityCustomActionArguments.CodingKeys and conformance __RKEntityCustomActionArguments.CodingKeys;
  if (!lazy protocol witness table cache variable for type __RKEntityCustomActionArguments.CodingKeys and conformance __RKEntityCustomActionArguments.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __RKEntityCustomActionArguments.CodingKeys, &unk_1F40EE1E8, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntityCustomActionArguments.CodingKeys and conformance __RKEntityCustomActionArguments.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __RKEntityCustomActionArguments.CodingKeys and conformance __RKEntityCustomActionArguments.CodingKeys;
  if (!lazy protocol witness table cache variable for type __RKEntityCustomActionArguments.CodingKeys and conformance __RKEntityCustomActionArguments.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __RKEntityCustomActionArguments.CodingKeys, &unk_1F40EE1E8, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntityCustomActionArguments.CodingKeys and conformance __RKEntityCustomActionArguments.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __RKEntityCustomActionArguments.CodingKeys and conformance __RKEntityCustomActionArguments.CodingKeys;
  if (!lazy protocol witness table cache variable for type __RKEntityCustomActionArguments.CodingKeys and conformance __RKEntityCustomActionArguments.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __RKEntityCustomActionArguments.CodingKeys, &unk_1F40EE1E8, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntityCustomActionArguments.CodingKeys and conformance __RKEntityCustomActionArguments.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type __RKChangeSceneActionArguments.CodingKeys and conformance __RKChangeSceneActionArguments.CodingKeys()
{
  result = lazy protocol witness table cache variable for type __RKChangeSceneActionArguments.CodingKeys and conformance __RKChangeSceneActionArguments.CodingKeys;
  if (!lazy protocol witness table cache variable for type __RKChangeSceneActionArguments.CodingKeys and conformance __RKChangeSceneActionArguments.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __RKChangeSceneActionArguments.CodingKeys, &unk_1F40EE158, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __RKChangeSceneActionArguments.CodingKeys and conformance __RKChangeSceneActionArguments.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __RKChangeSceneActionArguments.CodingKeys and conformance __RKChangeSceneActionArguments.CodingKeys;
  if (!lazy protocol witness table cache variable for type __RKChangeSceneActionArguments.CodingKeys and conformance __RKChangeSceneActionArguments.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __RKChangeSceneActionArguments.CodingKeys, &unk_1F40EE158, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __RKChangeSceneActionArguments.CodingKeys and conformance __RKChangeSceneActionArguments.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __RKChangeSceneActionArguments.CodingKeys and conformance __RKChangeSceneActionArguments.CodingKeys;
  if (!lazy protocol witness table cache variable for type __RKChangeSceneActionArguments.CodingKeys and conformance __RKChangeSceneActionArguments.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __RKChangeSceneActionArguments.CodingKeys, &unk_1F40EE158, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __RKChangeSceneActionArguments.CodingKeys and conformance __RKChangeSceneActionArguments.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __RKChangeSceneActionArguments.CodingKeys and conformance __RKChangeSceneActionArguments.CodingKeys;
  if (!lazy protocol witness table cache variable for type __RKChangeSceneActionArguments.CodingKeys and conformance __RKChangeSceneActionArguments.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __RKChangeSceneActionArguments.CodingKeys, &unk_1F40EE158, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __RKChangeSceneActionArguments.CodingKeys and conformance __RKChangeSceneActionArguments.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type __RKFadeSceneActionArguments.CodingKeys and conformance __RKFadeSceneActionArguments.CodingKeys()
{
  result = lazy protocol witness table cache variable for type __RKFadeSceneActionArguments.CodingKeys and conformance __RKFadeSceneActionArguments.CodingKeys;
  if (!lazy protocol witness table cache variable for type __RKFadeSceneActionArguments.CodingKeys and conformance __RKFadeSceneActionArguments.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __RKFadeSceneActionArguments.CodingKeys, &unk_1F40EE0C8, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __RKFadeSceneActionArguments.CodingKeys and conformance __RKFadeSceneActionArguments.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __RKFadeSceneActionArguments.CodingKeys and conformance __RKFadeSceneActionArguments.CodingKeys;
  if (!lazy protocol witness table cache variable for type __RKFadeSceneActionArguments.CodingKeys and conformance __RKFadeSceneActionArguments.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __RKFadeSceneActionArguments.CodingKeys, &unk_1F40EE0C8, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __RKFadeSceneActionArguments.CodingKeys and conformance __RKFadeSceneActionArguments.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __RKFadeSceneActionArguments.CodingKeys and conformance __RKFadeSceneActionArguments.CodingKeys;
  if (!lazy protocol witness table cache variable for type __RKFadeSceneActionArguments.CodingKeys and conformance __RKFadeSceneActionArguments.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __RKFadeSceneActionArguments.CodingKeys, &unk_1F40EE0C8, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __RKFadeSceneActionArguments.CodingKeys and conformance __RKFadeSceneActionArguments.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __RKFadeSceneActionArguments.CodingKeys and conformance __RKFadeSceneActionArguments.CodingKeys;
  if (!lazy protocol witness table cache variable for type __RKFadeSceneActionArguments.CodingKeys and conformance __RKFadeSceneActionArguments.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __RKFadeSceneActionArguments.CodingKeys, &unk_1F40EE0C8, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __RKFadeSceneActionArguments.CodingKeys and conformance __RKFadeSceneActionArguments.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type __RKEntityFadeActionArguments.CodingKeys and conformance __RKEntityFadeActionArguments.CodingKeys()
{
  result = lazy protocol witness table cache variable for type __RKEntityFadeActionArguments.CodingKeys and conformance __RKEntityFadeActionArguments.CodingKeys;
  if (!lazy protocol witness table cache variable for type __RKEntityFadeActionArguments.CodingKeys and conformance __RKEntityFadeActionArguments.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __RKEntityFadeActionArguments.CodingKeys, &unk_1F40EE038, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntityFadeActionArguments.CodingKeys and conformance __RKEntityFadeActionArguments.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __RKEntityFadeActionArguments.CodingKeys and conformance __RKEntityFadeActionArguments.CodingKeys;
  if (!lazy protocol witness table cache variable for type __RKEntityFadeActionArguments.CodingKeys and conformance __RKEntityFadeActionArguments.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __RKEntityFadeActionArguments.CodingKeys, &unk_1F40EE038, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntityFadeActionArguments.CodingKeys and conformance __RKEntityFadeActionArguments.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __RKEntityFadeActionArguments.CodingKeys and conformance __RKEntityFadeActionArguments.CodingKeys;
  if (!lazy protocol witness table cache variable for type __RKEntityFadeActionArguments.CodingKeys and conformance __RKEntityFadeActionArguments.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __RKEntityFadeActionArguments.CodingKeys, &unk_1F40EE038, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntityFadeActionArguments.CodingKeys and conformance __RKEntityFadeActionArguments.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __RKEntityFadeActionArguments.CodingKeys and conformance __RKEntityFadeActionArguments.CodingKeys;
  if (!lazy protocol witness table cache variable for type __RKEntityFadeActionArguments.CodingKeys and conformance __RKEntityFadeActionArguments.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __RKEntityFadeActionArguments.CodingKeys, &unk_1F40EE038, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntityFadeActionArguments.CodingKeys and conformance __RKEntityFadeActionArguments.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type __RKEntityToggleAnimateActionArguments.CodingKeys and conformance __RKEntityToggleAnimateActionArguments.CodingKeys()
{
  result = lazy protocol witness table cache variable for type __RKEntityToggleAnimateActionArguments.CodingKeys and conformance __RKEntityToggleAnimateActionArguments.CodingKeys;
  if (!lazy protocol witness table cache variable for type __RKEntityToggleAnimateActionArguments.CodingKeys and conformance __RKEntityToggleAnimateActionArguments.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __RKEntityToggleAnimateActionArguments.CodingKeys, &unk_1F40EDFA8, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntityToggleAnimateActionArguments.CodingKeys and conformance __RKEntityToggleAnimateActionArguments.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __RKEntityToggleAnimateActionArguments.CodingKeys and conformance __RKEntityToggleAnimateActionArguments.CodingKeys;
  if (!lazy protocol witness table cache variable for type __RKEntityToggleAnimateActionArguments.CodingKeys and conformance __RKEntityToggleAnimateActionArguments.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __RKEntityToggleAnimateActionArguments.CodingKeys, &unk_1F40EDFA8, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntityToggleAnimateActionArguments.CodingKeys and conformance __RKEntityToggleAnimateActionArguments.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __RKEntityToggleAnimateActionArguments.CodingKeys and conformance __RKEntityToggleAnimateActionArguments.CodingKeys;
  if (!lazy protocol witness table cache variable for type __RKEntityToggleAnimateActionArguments.CodingKeys and conformance __RKEntityToggleAnimateActionArguments.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __RKEntityToggleAnimateActionArguments.CodingKeys, &unk_1F40EDFA8, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntityToggleAnimateActionArguments.CodingKeys and conformance __RKEntityToggleAnimateActionArguments.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __RKEntityToggleAnimateActionArguments.CodingKeys and conformance __RKEntityToggleAnimateActionArguments.CodingKeys;
  if (!lazy protocol witness table cache variable for type __RKEntityToggleAnimateActionArguments.CodingKeys and conformance __RKEntityToggleAnimateActionArguments.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __RKEntityToggleAnimateActionArguments.CodingKeys, &unk_1F40EDFA8, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntityToggleAnimateActionArguments.CodingKeys and conformance __RKEntityToggleAnimateActionArguments.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type __RKEntityStartAnimateActionArguments.CodingKeys and conformance __RKEntityStartAnimateActionArguments.CodingKeys()
{
  result = lazy protocol witness table cache variable for type __RKEntityStartAnimateActionArguments.CodingKeys and conformance __RKEntityStartAnimateActionArguments.CodingKeys;
  if (!lazy protocol witness table cache variable for type __RKEntityStartAnimateActionArguments.CodingKeys and conformance __RKEntityStartAnimateActionArguments.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __RKEntityStartAnimateActionArguments.CodingKeys, &unk_1F40EDF18, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntityStartAnimateActionArguments.CodingKeys and conformance __RKEntityStartAnimateActionArguments.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __RKEntityStartAnimateActionArguments.CodingKeys and conformance __RKEntityStartAnimateActionArguments.CodingKeys;
  if (!lazy protocol witness table cache variable for type __RKEntityStartAnimateActionArguments.CodingKeys and conformance __RKEntityStartAnimateActionArguments.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __RKEntityStartAnimateActionArguments.CodingKeys, &unk_1F40EDF18, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntityStartAnimateActionArguments.CodingKeys and conformance __RKEntityStartAnimateActionArguments.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __RKEntityStartAnimateActionArguments.CodingKeys and conformance __RKEntityStartAnimateActionArguments.CodingKeys;
  if (!lazy protocol witness table cache variable for type __RKEntityStartAnimateActionArguments.CodingKeys and conformance __RKEntityStartAnimateActionArguments.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __RKEntityStartAnimateActionArguments.CodingKeys, &unk_1F40EDF18, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntityStartAnimateActionArguments.CodingKeys and conformance __RKEntityStartAnimateActionArguments.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __RKEntityStartAnimateActionArguments.CodingKeys and conformance __RKEntityStartAnimateActionArguments.CodingKeys;
  if (!lazy protocol witness table cache variable for type __RKEntityStartAnimateActionArguments.CodingKeys and conformance __RKEntityStartAnimateActionArguments.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __RKEntityStartAnimateActionArguments.CodingKeys, &unk_1F40EDF18, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntityStartAnimateActionArguments.CodingKeys and conformance __RKEntityStartAnimateActionArguments.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type __RKEntityActionMultiplePerformBehavior and conformance __RKEntityActionMultiplePerformBehavior()
{
  result = lazy protocol witness table cache variable for type __RKEntityActionMultiplePerformBehavior and conformance __RKEntityActionMultiplePerformBehavior;
  if (!lazy protocol witness table cache variable for type __RKEntityActionMultiplePerformBehavior and conformance __RKEntityActionMultiplePerformBehavior)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __RKEntityActionMultiplePerformBehavior, &type metadata for __RKEntityActionMultiplePerformBehavior, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntityActionMultiplePerformBehavior and conformance __RKEntityActionMultiplePerformBehavior);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __RKEntityActionMultiplePerformBehavior and conformance __RKEntityActionMultiplePerformBehavior;
  if (!lazy protocol witness table cache variable for type __RKEntityActionMultiplePerformBehavior and conformance __RKEntityActionMultiplePerformBehavior)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __RKEntityActionMultiplePerformBehavior, &type metadata for __RKEntityActionMultiplePerformBehavior, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntityActionMultiplePerformBehavior and conformance __RKEntityActionMultiplePerformBehavior);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __RKEntityActionMultiplePerformBehavior and conformance __RKEntityActionMultiplePerformBehavior;
  if (!lazy protocol witness table cache variable for type __RKEntityActionMultiplePerformBehavior and conformance __RKEntityActionMultiplePerformBehavior)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __RKEntityActionMultiplePerformBehavior, &type metadata for __RKEntityActionMultiplePerformBehavior, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntityActionMultiplePerformBehavior and conformance __RKEntityActionMultiplePerformBehavior);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __RKEntityActionMultiplePerformBehavior and conformance __RKEntityActionMultiplePerformBehavior;
  if (!lazy protocol witness table cache variable for type __RKEntityActionMultiplePerformBehavior and conformance __RKEntityActionMultiplePerformBehavior)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __RKEntityActionMultiplePerformBehavior, &type metadata for __RKEntityActionMultiplePerformBehavior, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntityActionMultiplePerformBehavior and conformance __RKEntityActionMultiplePerformBehavior);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type __RKEntityStopAnimateActionArguments.CodingKeys and conformance __RKEntityStopAnimateActionArguments.CodingKeys()
{
  result = lazy protocol witness table cache variable for type __RKEntityStopAnimateActionArguments.CodingKeys and conformance __RKEntityStopAnimateActionArguments.CodingKeys;
  if (!lazy protocol witness table cache variable for type __RKEntityStopAnimateActionArguments.CodingKeys and conformance __RKEntityStopAnimateActionArguments.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __RKEntityStopAnimateActionArguments.CodingKeys, &unk_1F40EDE88, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntityStopAnimateActionArguments.CodingKeys and conformance __RKEntityStopAnimateActionArguments.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __RKEntityStopAnimateActionArguments.CodingKeys and conformance __RKEntityStopAnimateActionArguments.CodingKeys;
  if (!lazy protocol witness table cache variable for type __RKEntityStopAnimateActionArguments.CodingKeys and conformance __RKEntityStopAnimateActionArguments.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __RKEntityStopAnimateActionArguments.CodingKeys, &unk_1F40EDE88, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntityStopAnimateActionArguments.CodingKeys and conformance __RKEntityStopAnimateActionArguments.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __RKEntityStopAnimateActionArguments.CodingKeys and conformance __RKEntityStopAnimateActionArguments.CodingKeys;
  if (!lazy protocol witness table cache variable for type __RKEntityStopAnimateActionArguments.CodingKeys and conformance __RKEntityStopAnimateActionArguments.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __RKEntityStopAnimateActionArguments.CodingKeys, &unk_1F40EDE88, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntityStopAnimateActionArguments.CodingKeys and conformance __RKEntityStopAnimateActionArguments.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __RKEntityStopAnimateActionArguments.CodingKeys and conformance __RKEntityStopAnimateActionArguments.CodingKeys;
  if (!lazy protocol witness table cache variable for type __RKEntityStopAnimateActionArguments.CodingKeys and conformance __RKEntityStopAnimateActionArguments.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __RKEntityStopAnimateActionArguments.CodingKeys, &unk_1F40EDE88, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntityStopAnimateActionArguments.CodingKeys and conformance __RKEntityStopAnimateActionArguments.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type __RKEntityToggleVisibilityActionArguments.CodingKeys and conformance __RKEntityToggleVisibilityActionArguments.CodingKeys()
{
  result = lazy protocol witness table cache variable for type __RKEntityToggleVisibilityActionArguments.CodingKeys and conformance __RKEntityToggleVisibilityActionArguments.CodingKeys;
  if (!lazy protocol witness table cache variable for type __RKEntityToggleVisibilityActionArguments.CodingKeys and conformance __RKEntityToggleVisibilityActionArguments.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __RKEntityToggleVisibilityActionArguments.CodingKeys, &unk_1F40EDDF8, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntityToggleVisibilityActionArguments.CodingKeys and conformance __RKEntityToggleVisibilityActionArguments.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __RKEntityToggleVisibilityActionArguments.CodingKeys and conformance __RKEntityToggleVisibilityActionArguments.CodingKeys;
  if (!lazy protocol witness table cache variable for type __RKEntityToggleVisibilityActionArguments.CodingKeys and conformance __RKEntityToggleVisibilityActionArguments.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __RKEntityToggleVisibilityActionArguments.CodingKeys, &unk_1F40EDDF8, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntityToggleVisibilityActionArguments.CodingKeys and conformance __RKEntityToggleVisibilityActionArguments.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __RKEntityToggleVisibilityActionArguments.CodingKeys and conformance __RKEntityToggleVisibilityActionArguments.CodingKeys;
  if (!lazy protocol witness table cache variable for type __RKEntityToggleVisibilityActionArguments.CodingKeys and conformance __RKEntityToggleVisibilityActionArguments.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __RKEntityToggleVisibilityActionArguments.CodingKeys, &unk_1F40EDDF8, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntityToggleVisibilityActionArguments.CodingKeys and conformance __RKEntityToggleVisibilityActionArguments.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __RKEntityToggleVisibilityActionArguments.CodingKeys and conformance __RKEntityToggleVisibilityActionArguments.CodingKeys;
  if (!lazy protocol witness table cache variable for type __RKEntityToggleVisibilityActionArguments.CodingKeys and conformance __RKEntityToggleVisibilityActionArguments.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __RKEntityToggleVisibilityActionArguments.CodingKeys, &unk_1F40EDDF8, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntityToggleVisibilityActionArguments.CodingKeys and conformance __RKEntityToggleVisibilityActionArguments.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type __RKEntityShowActionArguments.CodingKeys and conformance __RKEntityShowActionArguments.CodingKeys()
{
  result = lazy protocol witness table cache variable for type __RKEntityShowActionArguments.CodingKeys and conformance __RKEntityShowActionArguments.CodingKeys;
  if (!lazy protocol witness table cache variable for type __RKEntityShowActionArguments.CodingKeys and conformance __RKEntityShowActionArguments.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __RKEntityShowActionArguments.CodingKeys, &unk_1F40EDD68, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntityShowActionArguments.CodingKeys and conformance __RKEntityShowActionArguments.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __RKEntityShowActionArguments.CodingKeys and conformance __RKEntityShowActionArguments.CodingKeys;
  if (!lazy protocol witness table cache variable for type __RKEntityShowActionArguments.CodingKeys and conformance __RKEntityShowActionArguments.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __RKEntityShowActionArguments.CodingKeys, &unk_1F40EDD68, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntityShowActionArguments.CodingKeys and conformance __RKEntityShowActionArguments.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __RKEntityShowActionArguments.CodingKeys and conformance __RKEntityShowActionArguments.CodingKeys;
  if (!lazy protocol witness table cache variable for type __RKEntityShowActionArguments.CodingKeys and conformance __RKEntityShowActionArguments.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __RKEntityShowActionArguments.CodingKeys, &unk_1F40EDD68, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntityShowActionArguments.CodingKeys and conformance __RKEntityShowActionArguments.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __RKEntityShowActionArguments.CodingKeys and conformance __RKEntityShowActionArguments.CodingKeys;
  if (!lazy protocol witness table cache variable for type __RKEntityShowActionArguments.CodingKeys and conformance __RKEntityShowActionArguments.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __RKEntityShowActionArguments.CodingKeys, &unk_1F40EDD68, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntityShowActionArguments.CodingKeys and conformance __RKEntityShowActionArguments.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type __RKEntityMoveEase and conformance __RKEntityMoveEase()
{
  result = lazy protocol witness table cache variable for type __RKEntityMoveEase and conformance __RKEntityMoveEase;
  if (!lazy protocol witness table cache variable for type __RKEntityMoveEase and conformance __RKEntityMoveEase)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __RKEntityMoveEase, &type metadata for __RKEntityMoveEase, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntityMoveEase and conformance __RKEntityMoveEase);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __RKEntityMoveEase and conformance __RKEntityMoveEase;
  if (!lazy protocol witness table cache variable for type __RKEntityMoveEase and conformance __RKEntityMoveEase)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __RKEntityMoveEase, &type metadata for __RKEntityMoveEase, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntityMoveEase and conformance __RKEntityMoveEase);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __RKEntityMoveEase and conformance __RKEntityMoveEase;
  if (!lazy protocol witness table cache variable for type __RKEntityMoveEase and conformance __RKEntityMoveEase)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __RKEntityMoveEase, &type metadata for __RKEntityMoveEase, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntityMoveEase and conformance __RKEntityMoveEase);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __RKEntityMoveEase and conformance __RKEntityMoveEase;
  if (!lazy protocol witness table cache variable for type __RKEntityMoveEase and conformance __RKEntityMoveEase)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __RKEntityMoveEase, &type metadata for __RKEntityMoveEase, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntityMoveEase and conformance __RKEntityMoveEase);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type __RKEntityMoveEaseType and conformance __RKEntityMoveEaseType()
{
  result = lazy protocol witness table cache variable for type __RKEntityMoveEaseType and conformance __RKEntityMoveEaseType;
  if (!lazy protocol witness table cache variable for type __RKEntityMoveEaseType and conformance __RKEntityMoveEaseType)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __RKEntityMoveEaseType, &type metadata for __RKEntityMoveEaseType, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntityMoveEaseType and conformance __RKEntityMoveEaseType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __RKEntityMoveEaseType and conformance __RKEntityMoveEaseType;
  if (!lazy protocol witness table cache variable for type __RKEntityMoveEaseType and conformance __RKEntityMoveEaseType)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __RKEntityMoveEaseType, &type metadata for __RKEntityMoveEaseType, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntityMoveEaseType and conformance __RKEntityMoveEaseType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __RKEntityMoveEaseType and conformance __RKEntityMoveEaseType;
  if (!lazy protocol witness table cache variable for type __RKEntityMoveEaseType and conformance __RKEntityMoveEaseType)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __RKEntityMoveEaseType, &type metadata for __RKEntityMoveEaseType, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntityMoveEaseType and conformance __RKEntityMoveEaseType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __RKEntityMoveEaseType and conformance __RKEntityMoveEaseType;
  if (!lazy protocol witness table cache variable for type __RKEntityMoveEaseType and conformance __RKEntityMoveEaseType)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __RKEntityMoveEaseType, &type metadata for __RKEntityMoveEaseType, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntityMoveEaseType and conformance __RKEntityMoveEaseType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type __RKEntityActionAnimationStyle and conformance __RKEntityActionAnimationStyle()
{
  result = lazy protocol witness table cache variable for type __RKEntityActionAnimationStyle and conformance __RKEntityActionAnimationStyle;
  if (!lazy protocol witness table cache variable for type __RKEntityActionAnimationStyle and conformance __RKEntityActionAnimationStyle)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __RKEntityActionAnimationStyle, &type metadata for __RKEntityActionAnimationStyle, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntityActionAnimationStyle and conformance __RKEntityActionAnimationStyle);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __RKEntityActionAnimationStyle and conformance __RKEntityActionAnimationStyle;
  if (!lazy protocol witness table cache variable for type __RKEntityActionAnimationStyle and conformance __RKEntityActionAnimationStyle)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __RKEntityActionAnimationStyle, &type metadata for __RKEntityActionAnimationStyle, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntityActionAnimationStyle and conformance __RKEntityActionAnimationStyle);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __RKEntityActionAnimationStyle and conformance __RKEntityActionAnimationStyle;
  if (!lazy protocol witness table cache variable for type __RKEntityActionAnimationStyle and conformance __RKEntityActionAnimationStyle)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __RKEntityActionAnimationStyle, &type metadata for __RKEntityActionAnimationStyle, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntityActionAnimationStyle and conformance __RKEntityActionAnimationStyle);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __RKEntityActionAnimationStyle and conformance __RKEntityActionAnimationStyle;
  if (!lazy protocol witness table cache variable for type __RKEntityActionAnimationStyle and conformance __RKEntityActionAnimationStyle)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __RKEntityActionAnimationStyle, &type metadata for __RKEntityActionAnimationStyle, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntityActionAnimationStyle and conformance __RKEntityActionAnimationStyle);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type __RKEntityShowActionBuildInAnimationType and conformance __RKEntityShowActionBuildInAnimationType()
{
  result = lazy protocol witness table cache variable for type __RKEntityShowActionBuildInAnimationType and conformance __RKEntityShowActionBuildInAnimationType;
  if (!lazy protocol witness table cache variable for type __RKEntityShowActionBuildInAnimationType and conformance __RKEntityShowActionBuildInAnimationType)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __RKEntityShowActionBuildInAnimationType, &type metadata for __RKEntityShowActionBuildInAnimationType, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntityShowActionBuildInAnimationType and conformance __RKEntityShowActionBuildInAnimationType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __RKEntityShowActionBuildInAnimationType and conformance __RKEntityShowActionBuildInAnimationType;
  if (!lazy protocol witness table cache variable for type __RKEntityShowActionBuildInAnimationType and conformance __RKEntityShowActionBuildInAnimationType)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __RKEntityShowActionBuildInAnimationType, &type metadata for __RKEntityShowActionBuildInAnimationType, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntityShowActionBuildInAnimationType and conformance __RKEntityShowActionBuildInAnimationType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __RKEntityShowActionBuildInAnimationType and conformance __RKEntityShowActionBuildInAnimationType;
  if (!lazy protocol witness table cache variable for type __RKEntityShowActionBuildInAnimationType and conformance __RKEntityShowActionBuildInAnimationType)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __RKEntityShowActionBuildInAnimationType, &type metadata for __RKEntityShowActionBuildInAnimationType, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntityShowActionBuildInAnimationType and conformance __RKEntityShowActionBuildInAnimationType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __RKEntityShowActionBuildInAnimationType and conformance __RKEntityShowActionBuildInAnimationType;
  if (!lazy protocol witness table cache variable for type __RKEntityShowActionBuildInAnimationType and conformance __RKEntityShowActionBuildInAnimationType)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __RKEntityShowActionBuildInAnimationType, &type metadata for __RKEntityShowActionBuildInAnimationType, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntityShowActionBuildInAnimationType and conformance __RKEntityShowActionBuildInAnimationType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type __RKEntityHideActionArguments.CodingKeys and conformance __RKEntityHideActionArguments.CodingKeys()
{
  result = lazy protocol witness table cache variable for type __RKEntityHideActionArguments.CodingKeys and conformance __RKEntityHideActionArguments.CodingKeys;
  if (!lazy protocol witness table cache variable for type __RKEntityHideActionArguments.CodingKeys and conformance __RKEntityHideActionArguments.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __RKEntityHideActionArguments.CodingKeys, &unk_1F40EDCD8, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntityHideActionArguments.CodingKeys and conformance __RKEntityHideActionArguments.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __RKEntityHideActionArguments.CodingKeys and conformance __RKEntityHideActionArguments.CodingKeys;
  if (!lazy protocol witness table cache variable for type __RKEntityHideActionArguments.CodingKeys and conformance __RKEntityHideActionArguments.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __RKEntityHideActionArguments.CodingKeys, &unk_1F40EDCD8, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntityHideActionArguments.CodingKeys and conformance __RKEntityHideActionArguments.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __RKEntityHideActionArguments.CodingKeys and conformance __RKEntityHideActionArguments.CodingKeys;
  if (!lazy protocol witness table cache variable for type __RKEntityHideActionArguments.CodingKeys and conformance __RKEntityHideActionArguments.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __RKEntityHideActionArguments.CodingKeys, &unk_1F40EDCD8, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntityHideActionArguments.CodingKeys and conformance __RKEntityHideActionArguments.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __RKEntityHideActionArguments.CodingKeys and conformance __RKEntityHideActionArguments.CodingKeys;
  if (!lazy protocol witness table cache variable for type __RKEntityHideActionArguments.CodingKeys and conformance __RKEntityHideActionArguments.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __RKEntityHideActionArguments.CodingKeys, &unk_1F40EDCD8, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntityHideActionArguments.CodingKeys and conformance __RKEntityHideActionArguments.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type __RKEntityHideActionBuildOutAnimationType and conformance __RKEntityHideActionBuildOutAnimationType()
{
  result = lazy protocol witness table cache variable for type __RKEntityHideActionBuildOutAnimationType and conformance __RKEntityHideActionBuildOutAnimationType;
  if (!lazy protocol witness table cache variable for type __RKEntityHideActionBuildOutAnimationType and conformance __RKEntityHideActionBuildOutAnimationType)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __RKEntityHideActionBuildOutAnimationType, &type metadata for __RKEntityHideActionBuildOutAnimationType, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntityHideActionBuildOutAnimationType and conformance __RKEntityHideActionBuildOutAnimationType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __RKEntityHideActionBuildOutAnimationType and conformance __RKEntityHideActionBuildOutAnimationType;
  if (!lazy protocol witness table cache variable for type __RKEntityHideActionBuildOutAnimationType and conformance __RKEntityHideActionBuildOutAnimationType)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __RKEntityHideActionBuildOutAnimationType, &type metadata for __RKEntityHideActionBuildOutAnimationType, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntityHideActionBuildOutAnimationType and conformance __RKEntityHideActionBuildOutAnimationType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __RKEntityHideActionBuildOutAnimationType and conformance __RKEntityHideActionBuildOutAnimationType;
  if (!lazy protocol witness table cache variable for type __RKEntityHideActionBuildOutAnimationType and conformance __RKEntityHideActionBuildOutAnimationType)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __RKEntityHideActionBuildOutAnimationType, &type metadata for __RKEntityHideActionBuildOutAnimationType, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntityHideActionBuildOutAnimationType and conformance __RKEntityHideActionBuildOutAnimationType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __RKEntityHideActionBuildOutAnimationType and conformance __RKEntityHideActionBuildOutAnimationType;
  if (!lazy protocol witness table cache variable for type __RKEntityHideActionBuildOutAnimationType and conformance __RKEntityHideActionBuildOutAnimationType)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __RKEntityHideActionBuildOutAnimationType, &type metadata for __RKEntityHideActionBuildOutAnimationType, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntityHideActionBuildOutAnimationType and conformance __RKEntityHideActionBuildOutAnimationType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type __RKEntityEmphasisActionArguments.CodingKeys and conformance __RKEntityEmphasisActionArguments.CodingKeys()
{
  result = lazy protocol witness table cache variable for type __RKEntityEmphasisActionArguments.CodingKeys and conformance __RKEntityEmphasisActionArguments.CodingKeys;
  if (!lazy protocol witness table cache variable for type __RKEntityEmphasisActionArguments.CodingKeys and conformance __RKEntityEmphasisActionArguments.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __RKEntityEmphasisActionArguments.CodingKeys, &unk_1F40EDC48, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntityEmphasisActionArguments.CodingKeys and conformance __RKEntityEmphasisActionArguments.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __RKEntityEmphasisActionArguments.CodingKeys and conformance __RKEntityEmphasisActionArguments.CodingKeys;
  if (!lazy protocol witness table cache variable for type __RKEntityEmphasisActionArguments.CodingKeys and conformance __RKEntityEmphasisActionArguments.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __RKEntityEmphasisActionArguments.CodingKeys, &unk_1F40EDC48, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntityEmphasisActionArguments.CodingKeys and conformance __RKEntityEmphasisActionArguments.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __RKEntityEmphasisActionArguments.CodingKeys and conformance __RKEntityEmphasisActionArguments.CodingKeys;
  if (!lazy protocol witness table cache variable for type __RKEntityEmphasisActionArguments.CodingKeys and conformance __RKEntityEmphasisActionArguments.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __RKEntityEmphasisActionArguments.CodingKeys, &unk_1F40EDC48, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntityEmphasisActionArguments.CodingKeys and conformance __RKEntityEmphasisActionArguments.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __RKEntityEmphasisActionArguments.CodingKeys and conformance __RKEntityEmphasisActionArguments.CodingKeys;
  if (!lazy protocol witness table cache variable for type __RKEntityEmphasisActionArguments.CodingKeys and conformance __RKEntityEmphasisActionArguments.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __RKEntityEmphasisActionArguments.CodingKeys, &unk_1F40EDC48, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntityEmphasisActionArguments.CodingKeys and conformance __RKEntityEmphasisActionArguments.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type __RKEntityEmphasisAnimationType and conformance __RKEntityEmphasisAnimationType()
{
  result = lazy protocol witness table cache variable for type __RKEntityEmphasisAnimationType and conformance __RKEntityEmphasisAnimationType;
  if (!lazy protocol witness table cache variable for type __RKEntityEmphasisAnimationType and conformance __RKEntityEmphasisAnimationType)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __RKEntityEmphasisAnimationType, &type metadata for __RKEntityEmphasisAnimationType, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntityEmphasisAnimationType and conformance __RKEntityEmphasisAnimationType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __RKEntityEmphasisAnimationType and conformance __RKEntityEmphasisAnimationType;
  if (!lazy protocol witness table cache variable for type __RKEntityEmphasisAnimationType and conformance __RKEntityEmphasisAnimationType)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __RKEntityEmphasisAnimationType, &type metadata for __RKEntityEmphasisAnimationType, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntityEmphasisAnimationType and conformance __RKEntityEmphasisAnimationType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __RKEntityEmphasisAnimationType and conformance __RKEntityEmphasisAnimationType;
  if (!lazy protocol witness table cache variable for type __RKEntityEmphasisAnimationType and conformance __RKEntityEmphasisAnimationType)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __RKEntityEmphasisAnimationType, &type metadata for __RKEntityEmphasisAnimationType, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntityEmphasisAnimationType and conformance __RKEntityEmphasisAnimationType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __RKEntityEmphasisAnimationType and conformance __RKEntityEmphasisAnimationType;
  if (!lazy protocol witness table cache variable for type __RKEntityEmphasisAnimationType and conformance __RKEntityEmphasisAnimationType)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __RKEntityEmphasisAnimationType, &type metadata for __RKEntityEmphasisAnimationType, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntityEmphasisAnimationType and conformance __RKEntityEmphasisAnimationType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type __RKEntityAudioActionArguments.CodingKeys and conformance __RKEntityAudioActionArguments.CodingKeys()
{
  result = lazy protocol witness table cache variable for type __RKEntityAudioActionArguments.CodingKeys and conformance __RKEntityAudioActionArguments.CodingKeys;
  if (!lazy protocol witness table cache variable for type __RKEntityAudioActionArguments.CodingKeys and conformance __RKEntityAudioActionArguments.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __RKEntityAudioActionArguments.CodingKeys, &unk_1F40EDBB8, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntityAudioActionArguments.CodingKeys and conformance __RKEntityAudioActionArguments.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __RKEntityAudioActionArguments.CodingKeys and conformance __RKEntityAudioActionArguments.CodingKeys;
  if (!lazy protocol witness table cache variable for type __RKEntityAudioActionArguments.CodingKeys and conformance __RKEntityAudioActionArguments.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __RKEntityAudioActionArguments.CodingKeys, &unk_1F40EDBB8, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntityAudioActionArguments.CodingKeys and conformance __RKEntityAudioActionArguments.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __RKEntityAudioActionArguments.CodingKeys and conformance __RKEntityAudioActionArguments.CodingKeys;
  if (!lazy protocol witness table cache variable for type __RKEntityAudioActionArguments.CodingKeys and conformance __RKEntityAudioActionArguments.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __RKEntityAudioActionArguments.CodingKeys, &unk_1F40EDBB8, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntityAudioActionArguments.CodingKeys and conformance __RKEntityAudioActionArguments.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __RKEntityAudioActionArguments.CodingKeys and conformance __RKEntityAudioActionArguments.CodingKeys;
  if (!lazy protocol witness table cache variable for type __RKEntityAudioActionArguments.CodingKeys and conformance __RKEntityAudioActionArguments.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __RKEntityAudioActionArguments.CodingKeys, &unk_1F40EDBB8, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntityAudioActionArguments.CodingKeys and conformance __RKEntityAudioActionArguments.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type __RKEntityAudioActionType and conformance __RKEntityAudioActionType()
{
  result = lazy protocol witness table cache variable for type __RKEntityAudioActionType and conformance __RKEntityAudioActionType;
  if (!lazy protocol witness table cache variable for type __RKEntityAudioActionType and conformance __RKEntityAudioActionType)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __RKEntityAudioActionType, &type metadata for __RKEntityAudioActionType, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntityAudioActionType and conformance __RKEntityAudioActionType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __RKEntityAudioActionType and conformance __RKEntityAudioActionType;
  if (!lazy protocol witness table cache variable for type __RKEntityAudioActionType and conformance __RKEntityAudioActionType)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __RKEntityAudioActionType, &type metadata for __RKEntityAudioActionType, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntityAudioActionType and conformance __RKEntityAudioActionType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __RKEntityAudioActionType and conformance __RKEntityAudioActionType;
  if (!lazy protocol witness table cache variable for type __RKEntityAudioActionType and conformance __RKEntityAudioActionType)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __RKEntityAudioActionType, &type metadata for __RKEntityAudioActionType, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntityAudioActionType and conformance __RKEntityAudioActionType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __RKEntityAudioActionType and conformance __RKEntityAudioActionType;
  if (!lazy protocol witness table cache variable for type __RKEntityAudioActionType and conformance __RKEntityAudioActionType)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __RKEntityAudioActionType, &type metadata for __RKEntityAudioActionType, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntityAudioActionType and conformance __RKEntityAudioActionType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type __RKAudioSpatialModeSelection and conformance __RKAudioSpatialModeSelection()
{
  result = lazy protocol witness table cache variable for type __RKAudioSpatialModeSelection and conformance __RKAudioSpatialModeSelection;
  if (!lazy protocol witness table cache variable for type __RKAudioSpatialModeSelection and conformance __RKAudioSpatialModeSelection)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __RKAudioSpatialModeSelection, &type metadata for __RKAudioSpatialModeSelection, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __RKAudioSpatialModeSelection and conformance __RKAudioSpatialModeSelection);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __RKAudioSpatialModeSelection and conformance __RKAudioSpatialModeSelection;
  if (!lazy protocol witness table cache variable for type __RKAudioSpatialModeSelection and conformance __RKAudioSpatialModeSelection)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __RKAudioSpatialModeSelection, &type metadata for __RKAudioSpatialModeSelection, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __RKAudioSpatialModeSelection and conformance __RKAudioSpatialModeSelection);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __RKAudioSpatialModeSelection and conformance __RKAudioSpatialModeSelection;
  if (!lazy protocol witness table cache variable for type __RKAudioSpatialModeSelection and conformance __RKAudioSpatialModeSelection)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __RKAudioSpatialModeSelection, &type metadata for __RKAudioSpatialModeSelection, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __RKAudioSpatialModeSelection and conformance __RKAudioSpatialModeSelection);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __RKAudioSpatialModeSelection and conformance __RKAudioSpatialModeSelection;
  if (!lazy protocol witness table cache variable for type __RKAudioSpatialModeSelection and conformance __RKAudioSpatialModeSelection)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __RKAudioSpatialModeSelection, &type metadata for __RKAudioSpatialModeSelection, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __RKAudioSpatialModeSelection and conformance __RKAudioSpatialModeSelection);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type __RKEntityTransformActionArguments.CodingKeys and conformance __RKEntityTransformActionArguments.CodingKeys()
{
  result = lazy protocol witness table cache variable for type __RKEntityTransformActionArguments.CodingKeys and conformance __RKEntityTransformActionArguments.CodingKeys;
  if (!lazy protocol witness table cache variable for type __RKEntityTransformActionArguments.CodingKeys and conformance __RKEntityTransformActionArguments.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __RKEntityTransformActionArguments.CodingKeys, &unk_1F40EDB28, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntityTransformActionArguments.CodingKeys and conformance __RKEntityTransformActionArguments.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __RKEntityTransformActionArguments.CodingKeys and conformance __RKEntityTransformActionArguments.CodingKeys;
  if (!lazy protocol witness table cache variable for type __RKEntityTransformActionArguments.CodingKeys and conformance __RKEntityTransformActionArguments.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __RKEntityTransformActionArguments.CodingKeys, &unk_1F40EDB28, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntityTransformActionArguments.CodingKeys and conformance __RKEntityTransformActionArguments.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __RKEntityTransformActionArguments.CodingKeys and conformance __RKEntityTransformActionArguments.CodingKeys;
  if (!lazy protocol witness table cache variable for type __RKEntityTransformActionArguments.CodingKeys and conformance __RKEntityTransformActionArguments.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __RKEntityTransformActionArguments.CodingKeys, &unk_1F40EDB28, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntityTransformActionArguments.CodingKeys and conformance __RKEntityTransformActionArguments.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __RKEntityTransformActionArguments.CodingKeys and conformance __RKEntityTransformActionArguments.CodingKeys;
  if (!lazy protocol witness table cache variable for type __RKEntityTransformActionArguments.CodingKeys and conformance __RKEntityTransformActionArguments.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __RKEntityTransformActionArguments.CodingKeys, &unk_1F40EDB28, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntityTransformActionArguments.CodingKeys and conformance __RKEntityTransformActionArguments.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type __RKEntityMoveSelection and conformance __RKEntityMoveSelection()
{
  result = lazy protocol witness table cache variable for type __RKEntityMoveSelection and conformance __RKEntityMoveSelection;
  if (!lazy protocol witness table cache variable for type __RKEntityMoveSelection and conformance __RKEntityMoveSelection)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __RKEntityMoveSelection, &type metadata for __RKEntityMoveSelection, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntityMoveSelection and conformance __RKEntityMoveSelection);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __RKEntityMoveSelection and conformance __RKEntityMoveSelection;
  if (!lazy protocol witness table cache variable for type __RKEntityMoveSelection and conformance __RKEntityMoveSelection)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __RKEntityMoveSelection, &type metadata for __RKEntityMoveSelection, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntityMoveSelection and conformance __RKEntityMoveSelection);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __RKEntityMoveSelection and conformance __RKEntityMoveSelection;
  if (!lazy protocol witness table cache variable for type __RKEntityMoveSelection and conformance __RKEntityMoveSelection)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __RKEntityMoveSelection, &type metadata for __RKEntityMoveSelection, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntityMoveSelection and conformance __RKEntityMoveSelection);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __RKEntityMoveSelection and conformance __RKEntityMoveSelection;
  if (!lazy protocol witness table cache variable for type __RKEntityMoveSelection and conformance __RKEntityMoveSelection)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __RKEntityMoveSelection, &type metadata for __RKEntityMoveSelection, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntityMoveSelection and conformance __RKEntityMoveSelection);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type __RKEntityForceActionArguments.CodingKeys and conformance __RKEntityForceActionArguments.CodingKeys()
{
  result = lazy protocol witness table cache variable for type __RKEntityForceActionArguments.CodingKeys and conformance __RKEntityForceActionArguments.CodingKeys;
  if (!lazy protocol witness table cache variable for type __RKEntityForceActionArguments.CodingKeys and conformance __RKEntityForceActionArguments.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __RKEntityForceActionArguments.CodingKeys, &unk_1F40EDA98, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntityForceActionArguments.CodingKeys and conformance __RKEntityForceActionArguments.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __RKEntityForceActionArguments.CodingKeys and conformance __RKEntityForceActionArguments.CodingKeys;
  if (!lazy protocol witness table cache variable for type __RKEntityForceActionArguments.CodingKeys and conformance __RKEntityForceActionArguments.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __RKEntityForceActionArguments.CodingKeys, &unk_1F40EDA98, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntityForceActionArguments.CodingKeys and conformance __RKEntityForceActionArguments.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __RKEntityForceActionArguments.CodingKeys and conformance __RKEntityForceActionArguments.CodingKeys;
  if (!lazy protocol witness table cache variable for type __RKEntityForceActionArguments.CodingKeys and conformance __RKEntityForceActionArguments.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __RKEntityForceActionArguments.CodingKeys, &unk_1F40EDA98, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntityForceActionArguments.CodingKeys and conformance __RKEntityForceActionArguments.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __RKEntityForceActionArguments.CodingKeys and conformance __RKEntityForceActionArguments.CodingKeys;
  if (!lazy protocol witness table cache variable for type __RKEntityForceActionArguments.CodingKeys and conformance __RKEntityForceActionArguments.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __RKEntityForceActionArguments.CodingKeys, &unk_1F40EDA98, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntityForceActionArguments.CodingKeys and conformance __RKEntityForceActionArguments.CodingKeys);
  }

  return result;
}

uint64_t outlined assign with take of __RKEntityHideActionArguments(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

unint64_t lazy protocol witness table accessor for type __RKEntitySwapEntityActionArguments.CodingKeys and conformance __RKEntitySwapEntityActionArguments.CodingKeys()
{
  result = lazy protocol witness table cache variable for type __RKEntitySwapEntityActionArguments.CodingKeys and conformance __RKEntitySwapEntityActionArguments.CodingKeys;
  if (!lazy protocol witness table cache variable for type __RKEntitySwapEntityActionArguments.CodingKeys and conformance __RKEntitySwapEntityActionArguments.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __RKEntitySwapEntityActionArguments.CodingKeys, &unk_1F40EDA08, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntitySwapEntityActionArguments.CodingKeys and conformance __RKEntitySwapEntityActionArguments.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __RKEntitySwapEntityActionArguments.CodingKeys and conformance __RKEntitySwapEntityActionArguments.CodingKeys;
  if (!lazy protocol witness table cache variable for type __RKEntitySwapEntityActionArguments.CodingKeys and conformance __RKEntitySwapEntityActionArguments.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __RKEntitySwapEntityActionArguments.CodingKeys, &unk_1F40EDA08, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntitySwapEntityActionArguments.CodingKeys and conformance __RKEntitySwapEntityActionArguments.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __RKEntitySwapEntityActionArguments.CodingKeys and conformance __RKEntitySwapEntityActionArguments.CodingKeys;
  if (!lazy protocol witness table cache variable for type __RKEntitySwapEntityActionArguments.CodingKeys and conformance __RKEntitySwapEntityActionArguments.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __RKEntitySwapEntityActionArguments.CodingKeys, &unk_1F40EDA08, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntitySwapEntityActionArguments.CodingKeys and conformance __RKEntitySwapEntityActionArguments.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __RKEntitySwapEntityActionArguments.CodingKeys and conformance __RKEntitySwapEntityActionArguments.CodingKeys;
  if (!lazy protocol witness table cache variable for type __RKEntitySwapEntityActionArguments.CodingKeys and conformance __RKEntitySwapEntityActionArguments.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __RKEntitySwapEntityActionArguments.CodingKeys, &unk_1F40EDA08, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntitySwapEntityActionArguments.CodingKeys and conformance __RKEntitySwapEntityActionArguments.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type __RKEntitySpinActionArguments.CodingKeys and conformance __RKEntitySpinActionArguments.CodingKeys()
{
  result = lazy protocol witness table cache variable for type __RKEntitySpinActionArguments.CodingKeys and conformance __RKEntitySpinActionArguments.CodingKeys;
  if (!lazy protocol witness table cache variable for type __RKEntitySpinActionArguments.CodingKeys and conformance __RKEntitySpinActionArguments.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __RKEntitySpinActionArguments.CodingKeys, &unk_1F40ED978, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntitySpinActionArguments.CodingKeys and conformance __RKEntitySpinActionArguments.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __RKEntitySpinActionArguments.CodingKeys and conformance __RKEntitySpinActionArguments.CodingKeys;
  if (!lazy protocol witness table cache variable for type __RKEntitySpinActionArguments.CodingKeys and conformance __RKEntitySpinActionArguments.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __RKEntitySpinActionArguments.CodingKeys, &unk_1F40ED978, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntitySpinActionArguments.CodingKeys and conformance __RKEntitySpinActionArguments.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __RKEntitySpinActionArguments.CodingKeys and conformance __RKEntitySpinActionArguments.CodingKeys;
  if (!lazy protocol witness table cache variable for type __RKEntitySpinActionArguments.CodingKeys and conformance __RKEntitySpinActionArguments.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __RKEntitySpinActionArguments.CodingKeys, &unk_1F40ED978, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntitySpinActionArguments.CodingKeys and conformance __RKEntitySpinActionArguments.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __RKEntitySpinActionArguments.CodingKeys and conformance __RKEntitySpinActionArguments.CodingKeys;
  if (!lazy protocol witness table cache variable for type __RKEntitySpinActionArguments.CodingKeys and conformance __RKEntitySpinActionArguments.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __RKEntitySpinActionArguments.CodingKeys, &unk_1F40ED978, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntitySpinActionArguments.CodingKeys and conformance __RKEntitySpinActionArguments.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type __RKEntitySpinDirectionType and conformance __RKEntitySpinDirectionType()
{
  result = lazy protocol witness table cache variable for type __RKEntitySpinDirectionType and conformance __RKEntitySpinDirectionType;
  if (!lazy protocol witness table cache variable for type __RKEntitySpinDirectionType and conformance __RKEntitySpinDirectionType)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __RKEntitySpinDirectionType, &type metadata for __RKEntitySpinDirectionType, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntitySpinDirectionType and conformance __RKEntitySpinDirectionType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __RKEntitySpinDirectionType and conformance __RKEntitySpinDirectionType;
  if (!lazy protocol witness table cache variable for type __RKEntitySpinDirectionType and conformance __RKEntitySpinDirectionType)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __RKEntitySpinDirectionType, &type metadata for __RKEntitySpinDirectionType, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntitySpinDirectionType and conformance __RKEntitySpinDirectionType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __RKEntitySpinDirectionType and conformance __RKEntitySpinDirectionType;
  if (!lazy protocol witness table cache variable for type __RKEntitySpinDirectionType and conformance __RKEntitySpinDirectionType)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __RKEntitySpinDirectionType, &type metadata for __RKEntitySpinDirectionType, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntitySpinDirectionType and conformance __RKEntitySpinDirectionType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __RKEntitySpinDirectionType and conformance __RKEntitySpinDirectionType;
  if (!lazy protocol witness table cache variable for type __RKEntitySpinDirectionType and conformance __RKEntitySpinDirectionType)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __RKEntitySpinDirectionType, &type metadata for __RKEntitySpinDirectionType, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntitySpinDirectionType and conformance __RKEntitySpinDirectionType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type __RKEntityOrbitEntityActionArguments.CodingKeys and conformance __RKEntityOrbitEntityActionArguments.CodingKeys()
{
  result = lazy protocol witness table cache variable for type __RKEntityOrbitEntityActionArguments.CodingKeys and conformance __RKEntityOrbitEntityActionArguments.CodingKeys;
  if (!lazy protocol witness table cache variable for type __RKEntityOrbitEntityActionArguments.CodingKeys and conformance __RKEntityOrbitEntityActionArguments.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __RKEntityOrbitEntityActionArguments.CodingKeys, &unk_1F40ED8E8, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntityOrbitEntityActionArguments.CodingKeys and conformance __RKEntityOrbitEntityActionArguments.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __RKEntityOrbitEntityActionArguments.CodingKeys and conformance __RKEntityOrbitEntityActionArguments.CodingKeys;
  if (!lazy protocol witness table cache variable for type __RKEntityOrbitEntityActionArguments.CodingKeys and conformance __RKEntityOrbitEntityActionArguments.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __RKEntityOrbitEntityActionArguments.CodingKeys, &unk_1F40ED8E8, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntityOrbitEntityActionArguments.CodingKeys and conformance __RKEntityOrbitEntityActionArguments.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __RKEntityOrbitEntityActionArguments.CodingKeys and conformance __RKEntityOrbitEntityActionArguments.CodingKeys;
  if (!lazy protocol witness table cache variable for type __RKEntityOrbitEntityActionArguments.CodingKeys and conformance __RKEntityOrbitEntityActionArguments.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __RKEntityOrbitEntityActionArguments.CodingKeys, &unk_1F40ED8E8, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntityOrbitEntityActionArguments.CodingKeys and conformance __RKEntityOrbitEntityActionArguments.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __RKEntityOrbitEntityActionArguments.CodingKeys and conformance __RKEntityOrbitEntityActionArguments.CodingKeys;
  if (!lazy protocol witness table cache variable for type __RKEntityOrbitEntityActionArguments.CodingKeys and conformance __RKEntityOrbitEntityActionArguments.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __RKEntityOrbitEntityActionArguments.CodingKeys, &unk_1F40ED8E8, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntityOrbitEntityActionArguments.CodingKeys and conformance __RKEntityOrbitEntityActionArguments.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type __RKEntityLookAtCameraActionArguments.CodingKeys and conformance __RKEntityLookAtCameraActionArguments.CodingKeys()
{
  result = lazy protocol witness table cache variable for type __RKEntityLookAtCameraActionArguments.CodingKeys and conformance __RKEntityLookAtCameraActionArguments.CodingKeys;
  if (!lazy protocol witness table cache variable for type __RKEntityLookAtCameraActionArguments.CodingKeys and conformance __RKEntityLookAtCameraActionArguments.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __RKEntityLookAtCameraActionArguments.CodingKeys, &unk_1F40ED858, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntityLookAtCameraActionArguments.CodingKeys and conformance __RKEntityLookAtCameraActionArguments.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __RKEntityLookAtCameraActionArguments.CodingKeys and conformance __RKEntityLookAtCameraActionArguments.CodingKeys;
  if (!lazy protocol witness table cache variable for type __RKEntityLookAtCameraActionArguments.CodingKeys and conformance __RKEntityLookAtCameraActionArguments.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __RKEntityLookAtCameraActionArguments.CodingKeys, &unk_1F40ED858, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntityLookAtCameraActionArguments.CodingKeys and conformance __RKEntityLookAtCameraActionArguments.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __RKEntityLookAtCameraActionArguments.CodingKeys and conformance __RKEntityLookAtCameraActionArguments.CodingKeys;
  if (!lazy protocol witness table cache variable for type __RKEntityLookAtCameraActionArguments.CodingKeys and conformance __RKEntityLookAtCameraActionArguments.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __RKEntityLookAtCameraActionArguments.CodingKeys, &unk_1F40ED858, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntityLookAtCameraActionArguments.CodingKeys and conformance __RKEntityLookAtCameraActionArguments.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __RKEntityLookAtCameraActionArguments.CodingKeys and conformance __RKEntityLookAtCameraActionArguments.CodingKeys;
  if (!lazy protocol witness table cache variable for type __RKEntityLookAtCameraActionArguments.CodingKeys and conformance __RKEntityLookAtCameraActionArguments.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __RKEntityLookAtCameraActionArguments.CodingKeys, &unk_1F40ED858, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntityLookAtCameraActionArguments.CodingKeys and conformance __RKEntityLookAtCameraActionArguments.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type __RKEntitySetOpacityActionArguments.CodingKeys and conformance __RKEntitySetOpacityActionArguments.CodingKeys()
{
  result = lazy protocol witness table cache variable for type __RKEntitySetOpacityActionArguments.CodingKeys and conformance __RKEntitySetOpacityActionArguments.CodingKeys;
  if (!lazy protocol witness table cache variable for type __RKEntitySetOpacityActionArguments.CodingKeys and conformance __RKEntitySetOpacityActionArguments.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __RKEntitySetOpacityActionArguments.CodingKeys, &unk_1F40ED7C8, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntitySetOpacityActionArguments.CodingKeys and conformance __RKEntitySetOpacityActionArguments.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __RKEntitySetOpacityActionArguments.CodingKeys and conformance __RKEntitySetOpacityActionArguments.CodingKeys;
  if (!lazy protocol witness table cache variable for type __RKEntitySetOpacityActionArguments.CodingKeys and conformance __RKEntitySetOpacityActionArguments.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __RKEntitySetOpacityActionArguments.CodingKeys, &unk_1F40ED7C8, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntitySetOpacityActionArguments.CodingKeys and conformance __RKEntitySetOpacityActionArguments.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __RKEntitySetOpacityActionArguments.CodingKeys and conformance __RKEntitySetOpacityActionArguments.CodingKeys;
  if (!lazy protocol witness table cache variable for type __RKEntitySetOpacityActionArguments.CodingKeys and conformance __RKEntitySetOpacityActionArguments.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __RKEntitySetOpacityActionArguments.CodingKeys, &unk_1F40ED7C8, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntitySetOpacityActionArguments.CodingKeys and conformance __RKEntitySetOpacityActionArguments.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __RKEntitySetOpacityActionArguments.CodingKeys and conformance __RKEntitySetOpacityActionArguments.CodingKeys;
  if (!lazy protocol witness table cache variable for type __RKEntitySetOpacityActionArguments.CodingKeys and conformance __RKEntitySetOpacityActionArguments.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __RKEntitySetOpacityActionArguments.CodingKeys, &unk_1F40ED7C8, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntitySetOpacityActionArguments.CodingKeys and conformance __RKEntitySetOpacityActionArguments.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type __RKEntityPlayTimelineActionArguments.CodingKeys and conformance __RKEntityPlayTimelineActionArguments.CodingKeys()
{
  result = lazy protocol witness table cache variable for type __RKEntityPlayTimelineActionArguments.CodingKeys and conformance __RKEntityPlayTimelineActionArguments.CodingKeys;
  if (!lazy protocol witness table cache variable for type __RKEntityPlayTimelineActionArguments.CodingKeys and conformance __RKEntityPlayTimelineActionArguments.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __RKEntityPlayTimelineActionArguments.CodingKeys, &unk_1F40ED738, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntityPlayTimelineActionArguments.CodingKeys and conformance __RKEntityPlayTimelineActionArguments.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __RKEntityPlayTimelineActionArguments.CodingKeys and conformance __RKEntityPlayTimelineActionArguments.CodingKeys;
  if (!lazy protocol witness table cache variable for type __RKEntityPlayTimelineActionArguments.CodingKeys and conformance __RKEntityPlayTimelineActionArguments.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __RKEntityPlayTimelineActionArguments.CodingKeys, &unk_1F40ED738, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntityPlayTimelineActionArguments.CodingKeys and conformance __RKEntityPlayTimelineActionArguments.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __RKEntityPlayTimelineActionArguments.CodingKeys and conformance __RKEntityPlayTimelineActionArguments.CodingKeys;
  if (!lazy protocol witness table cache variable for type __RKEntityPlayTimelineActionArguments.CodingKeys and conformance __RKEntityPlayTimelineActionArguments.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __RKEntityPlayTimelineActionArguments.CodingKeys, &unk_1F40ED738, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntityPlayTimelineActionArguments.CodingKeys and conformance __RKEntityPlayTimelineActionArguments.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __RKEntityPlayTimelineActionArguments.CodingKeys and conformance __RKEntityPlayTimelineActionArguments.CodingKeys;
  if (!lazy protocol witness table cache variable for type __RKEntityPlayTimelineActionArguments.CodingKeys and conformance __RKEntityPlayTimelineActionArguments.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __RKEntityPlayTimelineActionArguments.CodingKeys, &unk_1F40ED738, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntityPlayTimelineActionArguments.CodingKeys and conformance __RKEntityPlayTimelineActionArguments.CodingKeys);
  }

  return result;
}

uint64_t type metadata accessor for __RKEntitySpinActionArguments(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type __RKEntityInteractionSpecification.CodingKeys and conformance __RKEntityInteractionSpecification.CodingKeys()
{
  result = lazy protocol witness table cache variable for type __RKEntityInteractionSpecification.CodingKeys and conformance __RKEntityInteractionSpecification.CodingKeys;
  if (!lazy protocol witness table cache variable for type __RKEntityInteractionSpecification.CodingKeys and conformance __RKEntityInteractionSpecification.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __RKEntityInteractionSpecification.CodingKeys, &unk_1F40ED6A8, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntityInteractionSpecification.CodingKeys and conformance __RKEntityInteractionSpecification.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __RKEntityInteractionSpecification.CodingKeys and conformance __RKEntityInteractionSpecification.CodingKeys;
  if (!lazy protocol witness table cache variable for type __RKEntityInteractionSpecification.CodingKeys and conformance __RKEntityInteractionSpecification.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __RKEntityInteractionSpecification.CodingKeys, &unk_1F40ED6A8, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntityInteractionSpecification.CodingKeys and conformance __RKEntityInteractionSpecification.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __RKEntityInteractionSpecification.CodingKeys and conformance __RKEntityInteractionSpecification.CodingKeys;
  if (!lazy protocol witness table cache variable for type __RKEntityInteractionSpecification.CodingKeys and conformance __RKEntityInteractionSpecification.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __RKEntityInteractionSpecification.CodingKeys, &unk_1F40ED6A8, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntityInteractionSpecification.CodingKeys and conformance __RKEntityInteractionSpecification.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __RKEntityInteractionSpecification.CodingKeys and conformance __RKEntityInteractionSpecification.CodingKeys;
  if (!lazy protocol witness table cache variable for type __RKEntityInteractionSpecification.CodingKeys and conformance __RKEntityInteractionSpecification.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __RKEntityInteractionSpecification.CodingKeys, &unk_1F40ED6A8, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntityInteractionSpecification.CodingKeys and conformance __RKEntityInteractionSpecification.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type __RKEntityTriggerSpecification.Name and conformance __RKEntityTriggerSpecification.Name()
{
  result = lazy protocol witness table cache variable for type __RKEntityTriggerSpecification.Name and conformance __RKEntityTriggerSpecification.Name;
  if (!lazy protocol witness table cache variable for type __RKEntityTriggerSpecification.Name and conformance __RKEntityTriggerSpecification.Name)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __RKEntityTriggerSpecification.Name, &type metadata for __RKEntityTriggerSpecification.Name, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntityTriggerSpecification.Name and conformance __RKEntityTriggerSpecification.Name);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type __RKEntityActionSpecification.Name and conformance __RKEntityActionSpecification.Name()
{
  result = lazy protocol witness table cache variable for type __RKEntityActionSpecification.Name and conformance __RKEntityActionSpecification.Name;
  if (!lazy protocol witness table cache variable for type __RKEntityActionSpecification.Name and conformance __RKEntityActionSpecification.Name)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __RKEntityActionSpecification.Name, &type metadata for __RKEntityActionSpecification.Name, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntityActionSpecification.Name and conformance __RKEntityActionSpecification.Name);
  }

  return result;
}

void type metadata completion function for __RKEntityTriggerSpecification(uint64_t a1)
{
  type metadata accessor for (target: UUID, distance: Float, type: __RKEntityProximityTrigger.ExitType)(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for (target: UUID)();
    if (v2 <= 0x3F)
    {
      type metadata accessor for (target: UUID, collidingEntities: [UUID], tags: [String])(319);
      if (v3 <= 0x3F)
      {
        type metadata accessor for (tag: String)();
        if (v4 <= 0x3F)
        {
          type metadata accessor for (identifier: String, customArguments: [String : String]?)(319);
          if (v5 <= 0x3F)
          {
            type metadata accessor for (triggers: [__RKEntityTriggerSpecification])();
            if (v6 <= 0x3F)
            {
              swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void type metadata accessor for (target: UUID, distance: Float, type: __RKEntityProximityTrigger.ExitType)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (target: UUID, distance: Float, type: __RKEntityProximityTrigger.ExitType))
  {
    type metadata accessor for UUID();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &lazy cache variable for type metadata for (target: UUID, distance: Float, type: __RKEntityProximityTrigger.ExitType));
    }
  }
}

void type metadata accessor for (target: UUID)()
{
  if (!lazy cache variable for type metadata for (target: UUID))
  {
    v0 = type metadata accessor for UUID();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for (target: UUID));
    }
  }
}

void type metadata accessor for (target: UUID, collidingEntities: [UUID], tags: [String])(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (target: UUID, collidingEntities: [UUID], tags: [String]))
  {
    type metadata accessor for UUID();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay10Foundation4UUIDVGMd, &_sSay10Foundation4UUIDVGMR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySSGMd, &_sSaySSGMR);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &lazy cache variable for type metadata for (target: UUID, collidingEntities: [UUID], tags: [String]));
    }
  }
}

uint64_t type metadata accessor for (tag: String)()
{
  result = lazy cache variable for type metadata for (tag: String);
  if (!lazy cache variable for type metadata for (tag: String))
  {
    result = MEMORY[0x1E69E6158];
    atomic_store(MEMORY[0x1E69E6158], &lazy cache variable for type metadata for (tag: String));
  }

  return result;
}

void type metadata accessor for (triggers: [__RKEntityTriggerSpecification])()
{
  if (!lazy cache variable for type metadata for (triggers: [__RKEntityTriggerSpecification]))
  {
    type metadata accessor for [__RKEntityTriggerSpecification](0, &lazy cache variable for type metadata for [__RKEntityTriggerSpecification], type metadata accessor for __RKEntityTriggerSpecification, MEMORY[0x1E69E62F8]);
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for (triggers: [__RKEntityTriggerSpecification]));
    }
  }
}

uint64_t getEnumTagSinglePayload for __RKEntityTriggerSpecification.Name(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF3)
  {
    goto LABEL_17;
  }

  if (a2 + 13 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 13) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 13;
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

      return (*a1 | (v4 << 8)) - 13;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 13;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v8 = v6 - 14;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for __RKEntityTriggerSpecification.Name(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF3)
  {
    v4 = 0;
  }

  if (a2 > 0xF2)
  {
    v5 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
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
    *result = a2 + 13;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t type metadata completion function for __RKEntityActionSpecification(uint64_t a1)
{
  result = type metadata accessor for __RKEntityAudioActionArguments(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for __RKChangeSceneActionArguments(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for __RKEntityCustomActionArguments(319);
      if (v4 <= 0x3F)
      {
        result = type metadata accessor for __RKEntityEmphasisActionArguments(319);
        if (v5 <= 0x3F)
        {
          result = type metadata accessor for __RKEntityFadeActionArguments(319);
          if (v6 <= 0x3F)
          {
            result = type metadata accessor for __RKEntityHideActionArguments(319);
            if (v7 <= 0x3F)
            {
              result = type metadata accessor for __RKEntityForceActionArguments(319);
              if (v8 <= 0x3F)
              {
                result = type metadata accessor for __RKEntityShowActionArguments(319);
                if (v9 <= 0x3F)
                {
                  result = type metadata accessor for __RKEntityStartAnimateActionArguments(319);
                  if (v10 <= 0x3F)
                  {
                    result = type metadata accessor for __RKEntityStopAnimateActionArguments(319);
                    if (v11 <= 0x3F)
                    {
                      result = type metadata accessor for __RKEntityToggleAnimateActionArguments(319);
                      if (v12 <= 0x3F)
                      {
                        result = type metadata accessor for __RKEntityToggleVisibilityActionArguments(319);
                        if (v13 <= 0x3F)
                        {
                          result = type metadata accessor for __RKEntityTransformActionArguments(319);
                          if (v14 <= 0x3F)
                          {
                            result = type metadata accessor for __RKEntityOrbitEntityActionArguments(319);
                            if (v15 <= 0x3F)
                            {
                              result = type metadata accessor for __RKEntityLookAtCameraActionArguments(319);
                              if (v16 <= 0x3F)
                              {
                                result = type metadata accessor for __RKEntitySwapEntityActionArguments(319);
                                if (v17 <= 0x3F)
                                {
                                  result = type metadata accessor for __RKEntitySpinActionArguments(319);
                                  if (v18 <= 0x3F)
                                  {
                                    result = type metadata accessor for __RKEntitySetOpacityActionArguments(319);
                                    if (v19 <= 0x3F)
                                    {
                                      result = type metadata accessor for __RKEntityPlayTimelineActionArguments(319);
                                      if (v20 <= 0x3F)
                                      {
                                        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                                        return 0;
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
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for __RKEntityActionSpecification.Name(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEB)
  {
    goto LABEL_17;
  }

  if (a2 + 21 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 21) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 21;
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

      return (*a1 | (v4 << 8)) - 21;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 21;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x16;
  v8 = v6 - 22;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for __RKEntityActionSpecification.Name(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 21 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 21) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEB)
  {
    v4 = 0;
  }

  if (a2 > 0xEA)
  {
    v5 = ((a2 - 235) >> 8) + 1;
    *result = a2 + 21;
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
    *result = a2 + 21;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 __swift_memcpy34_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for __RKEntityActionGroupArguments(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 34))
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

uint64_t storeEnumTagSinglePayload for __RKEntityActionGroupArguments(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 34) = 1;
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

    *(result + 34) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void type metadata completion function for __RKEntityCustomActionArguments(uint64_t a1)
{
  type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    type metadata accessor for [String : String]();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t type metadata completion function for __RKChangeSceneActionArguments(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t __swift_memcpy9_4(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for __RKFadeSceneActionArguments(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for __RKFadeSceneActionArguments(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
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

  *(result + 9) = v3;
  return result;
}

void type metadata completion function for __RKEntityFadeActionArguments(uint64_t a1)
{
  type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Double?(319, &lazy cache variable for type metadata for Float?, MEMORY[0x1E69E6448]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata completion function for __RKEntityStartAnimateActionArguments(uint64_t a1)
{
  type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Double?(319, &lazy cache variable for type metadata for Bool?, MEMORY[0x1E69E6370]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Double?(319, &lazy cache variable for type metadata for Double?, MEMORY[0x1E69E63B0]);
      if (v3 <= 0x3F)
      {
        type metadata accessor for [__RKEntityTriggerSpecification](319, &lazy cache variable for type metadata for UUID?, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void type metadata accessor for [__RKEntityTriggerSpecification](uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t type metadata completion function for __RKEntityToggleAnimateActionArguments(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void type metadata completion function for __RKEntityShowActionArguments(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t a5)
{
  type metadata accessor for UUID();
  if (v7 <= 0x3F)
  {
    type metadata accessor for Double?(319, &lazy cache variable for type metadata for Float?, MEMORY[0x1E69E6448]);
    if (v8 <= 0x3F)
    {
      type metadata accessor for Double?(319, &lazy cache variable for type metadata for __RKEntityMoveEase?, &type metadata for __RKEntityMoveEase);
      if (v9 <= 0x3F)
      {
        type metadata accessor for Double?(319, &lazy cache variable for type metadata for __RKEntityMoveEaseType?, &type metadata for __RKEntityMoveEaseType);
        if (v10 <= 0x3F)
        {
          type metadata accessor for Double?(319, &lazy cache variable for type metadata for Bool?, MEMORY[0x1E69E6370]);
          if (v11 <= 0x3F)
          {
            type metadata accessor for Double?(319, &lazy cache variable for type metadata for __RKEntityActionAnimationStyle?, &type metadata for __RKEntityActionAnimationStyle);
            if (v12 <= 0x3F)
            {
              type metadata accessor for Double?(319, a4, a5);
              if (v13 <= 0x3F)
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

void type metadata completion function for __RKEntityEmphasisActionArguments(uint64_t a1)
{
  type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Double?(319, &lazy cache variable for type metadata for Float?, MEMORY[0x1E69E6448]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Double?(319, &lazy cache variable for type metadata for __RKEntityActionAnimationStyle?, &type metadata for __RKEntityActionAnimationStyle);
      if (v3 <= 0x3F)
      {
        type metadata accessor for Double?(319, &lazy cache variable for type metadata for __RKEntityEmphasisAnimationType?, &type metadata for __RKEntityEmphasisAnimationType);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

void type metadata completion function for __RKEntityAudioActionArguments(uint64_t a1)
{
  type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Double?(319, &lazy cache variable for type metadata for __RKEntityAudioActionType?, &type metadata for __RKEntityAudioActionType);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Double?(319, &lazy cache variable for type metadata for Double?, MEMORY[0x1E69E63B0]);
      if (v3 <= 0x3F)
      {
        type metadata accessor for Double?(319, &lazy cache variable for type metadata for Bool?, MEMORY[0x1E69E6370]);
        if (v4 <= 0x3F)
        {
          type metadata accessor for Double?(319, &lazy cache variable for type metadata for __RKAudioSpatialModeSelection?, &type metadata for __RKAudioSpatialModeSelection);
          if (v5 <= 0x3F)
          {
            type metadata accessor for Double?(319, &lazy cache variable for type metadata for __RKEntityActionMultiplePerformBehavior?, &type metadata for __RKEntityActionMultiplePerformBehavior);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void type metadata completion function for __RKEntityTransformActionArguments(uint64_t a1)
{
  type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    type metadata accessor for SIMD3<Float>?(319, &lazy cache variable for type metadata for SIMD3<Float>?, &_ss5SIMD3VySfGMd, &_ss5SIMD3VySfGMR);
    if (v2 <= 0x3F)
    {
      type metadata accessor for SIMD3<Float>?(319, &lazy cache variable for type metadata for SIMD4<Float>?, &_ss5SIMD4VySfGMd, &_ss5SIMD4VySfGMR);
      if (v3 <= 0x3F)
      {
        type metadata accessor for Double?(319, &lazy cache variable for type metadata for Float?, MEMORY[0x1E69E6448]);
        if (v4 <= 0x3F)
        {
          type metadata accessor for Double?(319, &lazy cache variable for type metadata for __RKEntityMoveSelection?, &type metadata for __RKEntityMoveSelection);
          if (v5 <= 0x3F)
          {
            type metadata accessor for Double?(319, &lazy cache variable for type metadata for __RKEntityMoveEase?, &type metadata for __RKEntityMoveEase);
            if (v6 <= 0x3F)
            {
              type metadata accessor for Double?(319, &lazy cache variable for type metadata for __RKEntityMoveEaseType?, &type metadata for __RKEntityMoveEaseType);
              if (v7 <= 0x3F)
              {
                type metadata accessor for Double?(319, &lazy cache variable for type metadata for Bool?, MEMORY[0x1E69E6370]);
                if (v8 <= 0x3F)
                {
                  type metadata accessor for [__RKEntityTriggerSpecification](319, &lazy cache variable for type metadata for UUID?, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
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

void type metadata accessor for SIMD3<Float>?(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = type metadata accessor for Optional();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void type metadata completion function for __RKEntityForceActionArguments(uint64_t a1)
{
  type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    type metadata accessor for SIMD3<Float>?(319, &lazy cache variable for type metadata for SIMD3<Float>?, &_ss5SIMD3VySfGMd, &_ss5SIMD3VySfGMR);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t type metadata completion function for __RKEntitySwapEntityActionArguments(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for __RKEntityHideActionArguments(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for __RKEntityShowActionArguments(319);
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

void type metadata completion function for __RKEntitySpinActionArguments(uint64_t a1)
{
  type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Double?(319, &lazy cache variable for type metadata for Float?, MEMORY[0x1E69E6448]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Double?(319, &lazy cache variable for type metadata for __RKEntitySpinDirectionType?, &type metadata for __RKEntitySpinDirectionType);
      if (v3 <= 0x3F)
      {
        type metadata accessor for SIMD3<Float>?(319, &lazy cache variable for type metadata for SIMD3<Float>?, &_ss5SIMD3VySfGMd, &_ss5SIMD3VySfGMR);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_145Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 36));
    if (v10 >= 2)
    {
      v11 = ((v10 + 2147483646) & 0x7FFFFFFF) - 1;
    }

    else
    {
      v11 = -2;
    }

    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t __swift_store_extra_inhabitant_index_146Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 36)) = a2 + 2;
  }

  return result;
}

void type metadata completion function for __RKEntityOrbitEntityActionArguments(uint64_t a1)
{
  type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Double?(319, &lazy cache variable for type metadata for Float?, MEMORY[0x1E69E6448]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for SIMD3<Float>?(319, &lazy cache variable for type metadata for SIMD3<Float>?, &_ss5SIMD3VySfGMd, &_ss5SIMD3VySfGMR);
      if (v3 <= 0x3F)
      {
        type metadata accessor for Double?(319, &lazy cache variable for type metadata for Bool?, MEMORY[0x1E69E6370]);
        if (v4 <= 0x3F)
        {
          type metadata accessor for Double?(319, &lazy cache variable for type metadata for __RKEntitySpinDirectionType?, &type metadata for __RKEntitySpinDirectionType);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void type metadata completion function for __RKEntityLookAtCameraActionArguments(uint64_t a1)
{
  type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Double?(319, &lazy cache variable for type metadata for Float?, MEMORY[0x1E69E6448]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for SIMD3<Float>?(319, &lazy cache variable for type metadata for SIMD3<Float>?, &_ss5SIMD3VySfGMd, &_ss5SIMD3VySfGMR);
      if (v3 <= 0x3F)
      {
        type metadata accessor for Double?(319, &lazy cache variable for type metadata for Bool?, MEMORY[0x1E69E6370]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_100Tm(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t __swift_store_extra_inhabitant_index_101Tm(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata completion function for __RKEntitySetOpacityActionArguments(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void type metadata completion function for __RKEntityPlayTimelineActionArguments(uint64_t a1)
{
  type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    type metadata accessor for [__RKEntityTriggerSpecification](319, &lazy cache variable for type metadata for UUID?, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Double?(319, &lazy cache variable for type metadata for String?, MEMORY[0x1E69E6158]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata completion function for __RKEntityInteractionSpecification(uint64_t a1)
{
  type metadata accessor for __RKEntityTriggerSpecification(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for __RKEntityActionSpecification(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Double?(319, &lazy cache variable for type metadata for String?, MEMORY[0x1E69E6158]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for __RKEntityOrbitEntityActionArguments.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for __RKEntityOrbitEntityActionArguments.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for __RKEntitySwapEntityActionArguments.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for __RKEntitySwapEntityActionArguments.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for __RKEntityLookAtCameraActionArguments.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for __RKEntityLookAtCameraActionArguments.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for __RKEntityTransformActionArguments.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 11;
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

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for __RKEntityTransformActionArguments.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for __RKEntityStartAnimateActionArguments.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t getEnumTagSinglePayload for __RKEntityPlayTimelineActionArguments.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for __RKEntityPlayTimelineActionArguments.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t specialized __RKEntityTriggerSpecification.ProximityCodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of __RKEntityTriggerSpecification.ProximityCodingKeys.init(rawValue:), v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

unint64_t specialized __RKEntityTriggerSpecification.CollisionCodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of __RKEntityTriggerSpecification.CollisionCodingKeys.init(rawValue:), v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

unint64_t specialized __RKEntityTriggerSpecification.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of __RKEntityTriggerSpecification.CodingKeys.init(rawValue:), v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}