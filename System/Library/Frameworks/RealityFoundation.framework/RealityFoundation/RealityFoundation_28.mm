void type metadata completion function for FromToByAction(uint64_t a1)
{
  v2 = *(a1 + 16);
  type metadata accessor for Optional();
  if (v4 <= 0x3F)
  {
    type metadata accessor for FromToByAction.TransformMode(319, v2, *(a1 + 24), v3);
    if (v5 <= 0x3F)
    {
      type metadata accessor for @thick AnimatableData.Type?(319);
      if (v6 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for FromToByAction(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (v5)
  {
    v6 = v5 - 1;
  }

  else
  {
    v6 = 0;
  }

  if (v6 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v8;
  }

  if (!a2)
  {
    return 0;
  }

  v9 = *(v4 + 80);
  v10 = v8 + v9;
  v11 = v8 + 15;
  if (v7 >= a2)
  {
    goto LABEL_33;
  }

  v12 = ((((v11 + ((v10 + (v10 & ~v9)) & ~v9)) & 0xFFFFFFFFFFFFFFF0) + 54) & 0xFFFFFFFFFFFFFFF0) + 16;
  v13 = a2 - v7;
  v14 = v12 & 0xFFFFFFF0;
  if ((v12 & 0xFFFFFFF0) != 0)
  {
    v15 = 2;
  }

  else
  {
    v15 = v13 + 1;
  }

  if (v15 >= 0x10000)
  {
    v16 = 4;
  }

  else
  {
    v16 = 2;
  }

  if (v15 < 0x100)
  {
    v16 = 1;
  }

  if (v15 >= 2)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  if (v17 > 1)
  {
    if (v17 == 2)
    {
      v18 = *(a1 + v12);
      if (!v18)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v18 = *(a1 + v12);
      if (!v18)
      {
        goto LABEL_33;
      }
    }
  }

  else if (!v17 || (v18 = *(a1 + v12)) == 0)
  {
LABEL_33:
    if (v6 < 0x7FFFFFFE)
    {
      v22 = *((((v11 + ((v10 + ((a1 + v10) & ~v9)) & ~v9)) & 0xFFFFFFFFFFFFFFF0) + 54) & 0xFFFFFFFFFFFFFFF0);
      if (v22 >= 0xFFFFFFFF)
      {
        LODWORD(v22) = -1;
      }

      if ((v22 + 1) >= 2)
      {
        return v22;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v21 = (*(v4 + 48))(a1);
      if (v21 >= 2)
      {
        return v21 - 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v20 = v18 - 1;
  if (v14)
  {
    v20 = 0;
    LODWORD(v14) = *a1;
  }

  return v7 + (v14 | v20) + 1;
}

void storeEnumTagSinglePayload for FromToByAction(unsigned int *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (!v7)
  {
    v8 = 0;
  }

  if (v8 <= 0x7FFFFFFE)
  {
    v9 = 2147483646;
  }

  else
  {
    v9 = v8;
  }

  v10 = *(*(*(a4 + 16) - 8) + 64);
  if (!v7)
  {
    ++v10;
  }

  v11 = *(v6 + 80);
  v14 = ((((v10 + 15 + ((v10 + v11 + ((v10 + v11) & ~v11)) & ~v11)) & 0xFFFFFFFFFFFFFFF0) + 54) & 0xFFFFFFFFFFFFFFF0) + 16;
  if (v9 < a3)
  {
    v15 = a3 - v9;
    if (((((v10 + 15 + ((v10 + v11 + ((v10 + v11) & ~v11)) & ~v11)) & 0xFFFFFFF0) + 54) & 0xFFFFFFF0) == 0xFFFFFFF0)
    {
      v16 = v15 + 1;
    }

    else
    {
      v16 = 2;
    }

    if (v16 >= 0x10000)
    {
      v17 = 4;
    }

    else
    {
      v17 = 2;
    }

    if (v16 < 0x100)
    {
      v17 = 1;
    }

    if (v16 >= 2)
    {
      v5 = v17;
    }

    else
    {
      v5 = 0;
    }
  }

  if (a2 > v9)
  {
    if (((((v10 + 15 + ((v10 + v11 + ((v10 + v11) & ~v11)) & ~v11)) & 0xFFFFFFF0) + 54) & 0xFFFFFFF0) == 0xFFFFFFF0)
    {
      v18 = a2 - v9;
    }

    else
    {
      v18 = 1;
    }

    if (((((v10 + 15 + ((v10 + v11 + ((v10 + v11) & ~v11)) & ~v11)) & 0xFFFFFFF0) + 54) & 0xFFFFFFF0) != 0xFFFFFFF0)
    {
      v19 = ~v9 + a2;
      v20 = a1;
      bzero(a1, v14);
      a1 = v20;
      *v20 = v19;
    }

    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(a1 + v14) = v18;
      }

      else
      {
        *(a1 + v14) = v18;
      }
    }

    else if (v5)
    {
      *(a1 + v14) = v18;
    }

    return;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(a1 + v14) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_38;
    }

    *(a1 + v14) = 0;
LABEL_37:
    if (!a2)
    {
      return;
    }

    goto LABEL_38;
  }

  if (!v5)
  {
    goto LABEL_37;
  }

  *(a1 + v14) = 0;
  if (!a2)
  {
    return;
  }

LABEL_38:
  if (v8 < 0x7FFFFFFE)
  {
    v12 = v10 + v11;
    v13 = v10 + 15;
    v25 = ((((v10 + 15 + ((v12 + ((a1 + v12) & ~v11)) & ~v11)) & 0xFFFFFFFFFFFFFFF0) + 54) & 0xFFFFFFFFFFFFFFF0);
    if (a2 > 0x7FFFFFFE)
    {
      *v25 = 0;
      *(((((v13 + ((v12 + ((a1 + v12) & ~v11)) & ~v11)) & 0xFFFFFFFFFFFFFFF0) + 54) & 0xFFFFFFFFFFFFFFF0) + 8) = 0;
      *v25 = a2 - 0x7FFFFFFF;
    }

    else
    {
      *v25 = a2;
    }
  }

  else if (v8 >= a2)
  {
    v26 = *(v6 + 56);

    v26();
  }

  else
  {
    if (v10 <= 3)
    {
      v21 = ~(-1 << (8 * v10));
    }

    else
    {
      v21 = -1;
    }

    if (v10)
    {
      v22 = v21 & (~v8 + a2);
      if (v10 <= 3)
      {
        v23 = v10;
      }

      else
      {
        v23 = 4;
      }

      v24 = a1;
      bzero(a1, v10);
      if (v23 > 2)
      {
        if (v23 == 3)
        {
          *v24 = v22;
          *(v24 + 2) = BYTE2(v22);
        }

        else
        {
          *v24 = v22;
        }
      }

      else if (v23 == 1)
      {
        *v24 = v22;
      }

      else
      {
        *v24 = v22;
      }
    }
  }
}

void type metadata accessor for @thick AnimatableData.Type?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for @thick AnimatableData.Type?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s17RealityFoundation14AnimatableData_pXmTMd, &_s17RealityFoundation14AnimatableData_pXmTMR);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for @thick AnimatableData.Type?);
    }
  }
}

uint64_t type metadata instantiation function for FromToByAction.TransformMode(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_17RealityFoundation14FromToByActionV13TransformModeOyx_G(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 > 1)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t getEnumTagSinglePayload for FromToByAction.TransformMode(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 17))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 16);
  if (v3 > 1)
  {
    v4 = (v3 ^ 0xFF) + 1;
  }

  else
  {
    v4 = 0;
  }

  if (v4 >= 4)
  {
    return v4 - 3;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for FromToByAction.TransformMode(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -3 - a2;
    }
  }

  return result;
}

uint64_t destructiveInjectEnumTag for FromToByAction.TransformMode(uint64_t result, unsigned int a2)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
  }

  else if (a2)
  {
    *(result + 16) = -a2;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type BlendShapeWeights and conformance BlendShapeWeights()
{
  result = lazy protocol witness table cache variable for type BlendShapeWeights and conformance BlendShapeWeights;
  if (!lazy protocol witness table cache variable for type BlendShapeWeights and conformance BlendShapeWeights)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for BlendShapeWeights, &type metadata for BlendShapeWeights, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type BlendShapeWeights and conformance BlendShapeWeights);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type BlendShapeWeights and conformance BlendShapeWeights;
  if (!lazy protocol witness table cache variable for type BlendShapeWeights and conformance BlendShapeWeights)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for BlendShapeWeights, &type metadata for BlendShapeWeights, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type BlendShapeWeights and conformance BlendShapeWeights);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type BlendShapeWeights and conformance BlendShapeWeights;
  if (!lazy protocol witness table cache variable for type BlendShapeWeights and conformance BlendShapeWeights)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for BlendShapeWeights, &type metadata for BlendShapeWeights, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type BlendShapeWeights and conformance BlendShapeWeights);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type BlendShapeWeights and conformance BlendShapeWeights;
  if (!lazy protocol witness table cache variable for type BlendShapeWeights and conformance BlendShapeWeights)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for BlendShapeWeights, &type metadata for BlendShapeWeights, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type BlendShapeWeights and conformance BlendShapeWeights);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type BlendShapeWeights and conformance BlendShapeWeights;
  if (!lazy protocol witness table cache variable for type BlendShapeWeights and conformance BlendShapeWeights)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for BlendShapeWeights, &type metadata for BlendShapeWeights, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type BlendShapeWeights and conformance BlendShapeWeights);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type BlendShapeWeights and conformance BlendShapeWeights;
  if (!lazy protocol witness table cache variable for type BlendShapeWeights and conformance BlendShapeWeights)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for BlendShapeWeights, &type metadata for BlendShapeWeights, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type BlendShapeWeights and conformance BlendShapeWeights);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type JointTransforms and conformance JointTransforms()
{
  result = lazy protocol witness table cache variable for type JointTransforms and conformance JointTransforms;
  if (!lazy protocol witness table cache variable for type JointTransforms and conformance JointTransforms)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for JointTransforms, &type metadata for JointTransforms, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type JointTransforms and conformance JointTransforms);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type JointTransforms and conformance JointTransforms;
  if (!lazy protocol witness table cache variable for type JointTransforms and conformance JointTransforms)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for JointTransforms, &type metadata for JointTransforms, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type JointTransforms and conformance JointTransforms);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type JointTransforms and conformance JointTransforms;
  if (!lazy protocol witness table cache variable for type JointTransforms and conformance JointTransforms)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for JointTransforms, &type metadata for JointTransforms, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type JointTransforms and conformance JointTransforms);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type JointTransforms and conformance JointTransforms;
  if (!lazy protocol witness table cache variable for type JointTransforms and conformance JointTransforms)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for JointTransforms, &type metadata for JointTransforms, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type JointTransforms and conformance JointTransforms);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type JointTransforms and conformance JointTransforms;
  if (!lazy protocol witness table cache variable for type JointTransforms and conformance JointTransforms)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for JointTransforms, &type metadata for JointTransforms, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type JointTransforms and conformance JointTransforms);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type JointTransforms and conformance JointTransforms;
  if (!lazy protocol witness table cache variable for type JointTransforms and conformance JointTransforms)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for JointTransforms, &type metadata for JointTransforms, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type JointTransforms and conformance JointTransforms);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Transform and conformance Transform()
{
  result = lazy protocol witness table cache variable for type Transform and conformance Transform;
  if (!lazy protocol witness table cache variable for type Transform and conformance Transform)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Transform, &type metadata for Transform, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type Transform and conformance Transform);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Transform and conformance Transform;
  if (!lazy protocol witness table cache variable for type Transform and conformance Transform)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Transform, &type metadata for Transform, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type Transform and conformance Transform);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Transform and conformance Transform;
  if (!lazy protocol witness table cache variable for type Transform and conformance Transform)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Transform, &type metadata for Transform, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type Transform and conformance Transform);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Transform and conformance Transform;
  if (!lazy protocol witness table cache variable for type Transform and conformance Transform)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Transform, &type metadata for Transform, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type Transform and conformance Transform);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Transform and conformance Transform;
  if (!lazy protocol witness table cache variable for type Transform and conformance Transform)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Transform, &type metadata for Transform, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type Transform and conformance Transform);
  }

  return result;
}

void specialized FromToByActionHandler<>.getFromToToParent(transformMode:playbackController:targetEntity:base:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __n128 *a4@<X8>, __n128 a5@<Q0>, __n128 a6@<Q1>, __n128 a7@<Q2>)
{
  v8 = *(a1 + 16);
  if (v8 == 253)
  {
    if (a3)
    {

      v10 = specialized HasHierarchy.parent.getter();
      if (v10)
      {
        *v11.i64 = _s10RealityKit12HasTransformPAAE16conversionMatrix4from2toSo13simd_float4x4aqd__Sg_qd_0_SgtAA6EntityCRbd__ALRbd_0_r0_lFZAL_A2LTt1g5(v10, 0);
        v46 = v12;
        v48 = v11;
        v43 = v14;
        v44 = v13;

        v55.columns[1] = v46;
        v55.columns[0] = v48;
        v55.columns[3] = v43;
        v55.columns[2] = v44;
        __invert_f4(v55);
      }

      REMakeSRTFromMatrix();
      v47 = v36;
      v49 = v35;
      v45 = v37;
      if (one-time initialization token for identity != -1)
      {
        swift_once();
      }

      goto LABEL_31;
    }

    goto LABEL_18;
  }

  if (v8 == 254)
  {
    v9 = 0;
    goto LABEL_32;
  }

  if (v8 != 255)
  {
    if (a3)
    {
      v16 = *a1;
      v15 = *(a1 + 8);
      if ((*(a2 + 40) & 1) != 0 || (Strong = swift_weakLoadStrong()) == 0)
      {

        outlined copy of FromToByAction<A>.TransformMode<A>(v16, v15, v8);
        _StringGuts.grow(_:)(70);
        v53 = 0;
        v54 = 0xE000000000000000;
        MEMORY[0x1C68F3410](0xD000000000000019, 0x80000001C18E5940);
        MEMORY[0x1C68F3410](0xD000000000000012, 0x80000001C18E5960);
        v50 = v16;
        v51 = v15;
        v52 = v8 & 1;
        v30 = String.init<A>(describing:)();
        MEMORY[0x1C68F3410](v30);

        MEMORY[0x1C68F3410](0xD000000000000030, 0x80000001C18E5980);
        if (one-time initialization token for logger != -1)
        {
          swift_once();
        }

        v31 = type metadata accessor for Logger();
        __swift_project_value_buffer(v31, static AnimationLogger.logger);

        v26 = Logger.logObject.getter();
        v32 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v26, v32))
        {
          v33 = swift_slowAlloc();
          v34 = swift_slowAlloc();
          v50 = v34;
          *v33 = 136315138;
          *(v33 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0, 0xE000000000000000, &v50);
          _os_log_impl(&dword_1C1358000, v26, v32, "%s", v33, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v34);
          MEMORY[0x1C6902A30](v34, -1, -1);
          MEMORY[0x1C6902A30](v33, -1, -1);
        }
      }

      else
      {
        v18 = Strong;
        v50 = v16;
        v51 = v15;
        v52 = v8 & 1;

        outlined copy of FromToByAction<A>.TransformMode<A>(v16, v15, v8);
        v19 = ActionEntityResolution.resolve(from:)(v18);
        if (v19)
        {
          v20 = v19;
          outlined consume of FromToByAction<A>.TransformMode<A>(v16, v15, v8);
          v21 = specialized HasHierarchy.parent.getter();
          _s10RealityKit12HasTransformPAAE16conversionMatrix4from2toSo13simd_float4x4aqd__Sg_qd_0_SgtAA6EntityCRbd__ALRbd_0_r0_lFZAL_A2LTt1g5(v20, v21);

          REMakeSRTFromMatrix();
          v47 = v23;
          v49 = v22;
          v45 = v24;
          if (one-time initialization token for identity != -1)
          {
            swift_once();
          }

LABEL_31:

          v9 = 0;
          a6 = v47;
          a5 = v49;
          a7 = v45;
          goto LABEL_32;
        }

        _StringGuts.grow(_:)(31);
        v53 = 0;
        v54 = 0xE000000000000000;
        MEMORY[0x1C68F3410](0xD000000000000019, 0x80000001C18E5940);
        MEMORY[0x1C68F3410](0xD000000000000012, 0x80000001C18E5960);
        v51 = v15;
        v52 = v8 & 1;
        _print_unlocked<A, B>(_:_:)();
        v38 = outlined consume of FromToByAction<A>.TransformMode<A>(v16, v15, v8);
        MEMORY[0x1C68F3410](0x206D6F726620, 0xE600000000000000, v38);
        v50 = v18;
        type metadata accessor for Entity();
        _print_unlocked<A, B>(_:_:)();
        MEMORY[0x1C68F3410](46, 0xE100000000000000);
        if (one-time initialization token for logger != -1)
        {
          swift_once();
        }

        v39 = type metadata accessor for Logger();
        __swift_project_value_buffer(v39, static AnimationLogger.logger);

        v26 = Logger.logObject.getter();
        v40 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v26, v40))
        {
          v41 = swift_slowAlloc();
          v42 = swift_slowAlloc();
          v50 = v42;
          *v41 = 136315138;
          *(v41 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0, 0xE000000000000000, &v50);
          _os_log_impl(&dword_1C1358000, v26, v40, "%s", v41, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v42);
          MEMORY[0x1C6902A30](v42, -1, -1);
          MEMORY[0x1C6902A30](v41, -1, -1);
        }
      }

LABEL_28:

      a5 = 0uLL;
      v9 = 1;
      a6 = 0uLL;
      a7 = 0uLL;
      goto LABEL_32;
    }

LABEL_18:
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    __swift_project_value_buffer(v25, static AnimationLogger.logger);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v50 = v29;
      *v28 = 136315138;
      *(v28 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000047, 0x80000001C18E58F0, &v50);
      _os_log_impl(&dword_1C1358000, v26, v27, "%s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v29);
      MEMORY[0x1C6902A30](v29, -1, -1);
      MEMORY[0x1C6902A30](v28, -1, -1);
    }

    goto LABEL_28;
  }

  if (one-time initialization token for identity != -1)
  {
    swift_once();
  }

  v9 = 0;
  a5 = static Transform.identity;
  a6 = xmmword_1EBEB2BB0;
  a7 = xmmword_1EBEB2BC0;
LABEL_32:
  *a4 = a5;
  a4[1] = a6;
  a4[2] = a7;
  a4[3].n128_u8[0] = v9;
}

uint64_t type metadata completion function for FromToByActionHandler(uint64_t a1)
{
  result = type metadata accessor for Optional();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FromToByActionHandler(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v7;
  }

  if (!a2)
  {
    return 0;
  }

  if (v6 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v9 = a2 - v6;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (v14)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (v14)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_28;
  }

  if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 2)
    {
      v17 = (*(v4 + 48))(a1);
      if (v17 >= 2)
      {
        return v17 - 1;
      }

      else
      {
        return 0;
      }
    }

    return 0;
  }

LABEL_21:
  v15 = v14 - 1;
  if (v10)
  {
    v15 = 0;
    LODWORD(v10) = *a1;
  }

  return v6 + (v10 | v15) + 1;
}

_DWORD *storeEnumTagSinglePayload for FromToByActionHandler(_DWORD *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 64);
  v9 = v7 - 1;
  if (!v7)
  {
    v9 = 0;
    ++v8;
  }

  v10 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v9 < a3)
  {
    v11 = a3 - v9;
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v5 = v13;
    }

    else
    {
      v5 = 0;
    }
  }

  if (a2 > v9)
  {
    if (v10)
    {
      v14 = 1;
    }

    else
    {
      v14 = a2 - v9;
    }

    if (v10)
    {
      v15 = ~v9 + a2;
      v16 = result;
      bzero(result, v10);
      result = v16;
      *v16 = v15;
    }

    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + v10) = v14;
      }

      else
      {
        *(result + v10) = v14;
      }
    }

    else if (v5)
    {
      *(result + v10) = v14;
    }

    return result;
  }

  if (v5 <= 1)
  {
    if (v5)
    {
      *(result + v10) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_33;
    }

LABEL_32:
    if (!a2)
    {
      return result;
    }

    goto LABEL_33;
  }

  if (v5 == 2)
  {
    *(result + v10) = 0;
    goto LABEL_32;
  }

  *(result + v10) = 0;
  if (!a2)
  {
    return result;
  }

LABEL_33:
  if (v7 >= 2)
  {
    v17 = *(v6 + 56);

    return v17();
  }

  return result;
}

void specialized FromToByActionHandler<>.getFromTo(event:base:)(uint64_t a1@<X0>, uint64_t a2@<X8>, __n128 a3@<Q0>, __n128 a4@<Q1>, __n128 a5@<Q2>)
{
  v9 = *a1;
  v10 = *(a1 + 64);
  v11 = *(a1 + 80);
  v12 = *(a1 + 96);
  v13 = *(a1 + 112);
  v14 = *(a1 + 128);
  v15 = *(a1 + 232);
  v16 = *(a1 + 248);
  v17 = *(a1 + 280);
  if (v10 != 1 || !*(a1 + 128))
  {
    v37 = *(a1 + 48);
    v39 = *(a1 + 32);
    v41 = *(a1 + 16);
    v34 = *(a1 + 112);
    v35 = *(a1 + 96);
    v36 = *(a1 + 80);
    if (one-time initialization token for identity != -1)
    {
      v33 = *a1;
      v31 = *(a1 + 280);
      v27 = a4;
      v29 = a5;
      v25 = *(a1 + 232);
      v26 = a3;
      swift_once();
      v15 = v25;
      a3 = v26;
      a4 = v27;
      a5 = v29;
      v17 = v31;
      v9 = v33;
    }

    v43 = v15;
    v44 = v16;
    specialized FromToByActionHandler<>.getFromToToParent(transformMode:playbackController:targetEntity:base:)(&v43, v9, v17, &v46, a3, a4, a5);
    if (v49)
    {
      v14 = 0;
      v10 = 0;
      v18 = 1;
      v19 = 0uLL;
      v20 = 0uLL;
      v21 = 0uLL;
      v11 = 0uLL;
      v12 = 0uLL;
      v13 = 0uLL;
      goto LABEL_14;
    }

    v30 = *&v47;
    v32 = v46;
    v28 = *&v48;
    if (v10)
    {
      v20 = v39;
      v19 = v41;
      v21 = v37;
      if ((v14 & 1) == 0)
      {
LABEL_10:
        v40 = v20;
        v42 = v19;
        v38 = v21;
        *v11.i64 = specialized static Transform.* infix(_:_:)(v32, v30, v28, v36);
        v21 = v38;
        v20 = v40;
        v19 = v42;
LABEL_13:
        v18 = 0;
        v45 = v10;
        LOBYTE(v43) = 0;
        goto LABEL_14;
      }
    }

    else
    {
      *v22.i64 = specialized static Transform.* infix(_:_:)(v46, *&v47, *&v48, v41);
      v19 = v22;
      v20 = v23;
      v21 = v24;
      if ((v14 & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    v12 = v35;
    v11 = v36;
    v13 = v34;
    goto LABEL_13;
  }

  v18 = 0;
  v14 = 1;
  LOBYTE(v43) = 1;
  v45 = 1;
  v46.i8[0] = 0;
  v10 = 1;
  v19 = v11;
  v20 = v12;
  v21 = v13;
LABEL_14:
  *a2 = v19;
  *(a2 + 16) = v20;
  *(a2 + 32) = v21;
  *(a2 + 48) = v10;
  *(a2 + 56) = 0;
  *(a2 + 64) = v11;
  *(a2 + 80) = v12;
  *(a2 + 96) = v13;
  *(a2 + 112) = v14;
  *(a2 + 113) = v18;
}

void static AnimationTimingFunction.linear.getter(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 20) = 10;
}

void AnimationTimingFunction.coreEasingFunction.getter()
{
  v1 = *v0;
  v2 = *(v0 + 20);
  if (v2 > 4)
  {
    if (*(v0 + 20) <= 7u)
    {
      if (v2 == 5)
      {
        v3 = RECreateExponentialEaseEx();
      }

      else if (v2 == 6)
      {
        v3 = RECreateLogarithmicEaseEx();
      }

      else
      {
        v3 = RECreatePowerEaseEx();
      }

      goto LABEL_29;
    }

    if (v2 != 8)
    {
      if (v2 != 9)
      {
        goto LABEL_34;
      }

      v5 = RECreateHermiteEaseEx();
LABEL_13:
      v6 = v5;
      if (v1 >= 2u)
      {
        if (v5)
        {
LABEL_31:
          REEasingFunctionSetModeEx();
          goto LABEL_32;
        }

        goto LABEL_34;
      }

      goto LABEL_30;
    }

    v3 = RECreateSineEaseEx();
LABEL_29:
    v6 = v3;
    if (v1)
    {
LABEL_30:
      if (v6)
      {
        goto LABEL_31;
      }

      goto LABEL_34;
    }

    if (v3)
    {
      goto LABEL_31;
    }

LABEL_34:
    type metadata accessor for AnimationTimingFunction.EasingFunction();
    *(swift_allocObject() + 16) = 0;
    return;
  }

  v4 = v0[1];
  if (*(v0 + 20) <= 1u)
  {
    if (!*(v0 + 20))
    {
      v10 = HIDWORD(*v0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySfGMd, &_ss23_ContiguousArrayStorageCySfGMR);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1C1897FC0;
      *(inited + 32) = v1;
      *(inited + 36) = v10;
      _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD2VySfG_SaySfGTt1gq5Tf4g_n(inited);
      swift_setDeallocating();
      v8 = swift_initStackObject();
      *(v8 + 16) = xmmword_1C1897FC0;
      *(v8 + 32) = v4;
      _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD2VySfG_SaySfGTt1gq5Tf4g_n(v8);
      swift_setDeallocating();
      v9 = RECreateCubicBezierEaseEx();
      if (v9)
      {
        v6 = v9;
LABEL_32:
        type metadata accessor for AnimationTimingFunction.EasingFunction();
        *(swift_allocObject() + 16) = v6;
        RERetain();
        RERelease();
        return;
      }

      goto LABEL_34;
    }

    v3 = RECreateBackEaseEx();
    goto LABEL_29;
  }

  if (v2 == 2)
  {
    if ((v4 & 0x8000000000000000) == 0)
    {
      if (!HIDWORD(v4))
      {
        v3 = RECreateBounceEaseEx();
        goto LABEL_29;
      }

      goto LABEL_37;
    }

    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (v2 == 3)
  {
    v5 = RECreateCircleEaseEx();
    goto LABEL_13;
  }

  if ((v4 & 0x8000000000000000) != 0)
  {
    goto LABEL_36;
  }

  if (!HIDWORD(v4))
  {
    v3 = RECreateElasticEaseEx();
    goto LABEL_29;
  }

LABEL_38:
  __break(1u);
}

Swift::Int AnimationTimingFunction.__Mode.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1C68F4C10](v1);
  return Hasher._finalize()();
}

void AnimationTimingFunction.EasingFunctionType.hash(into:)()
{
  v1 = v0->n128_u64[0];
  v2 = v0[1].n128_u8[4];
  if (v2 <= 4)
  {
    v5 = v0->n128_u64[1];
    if (v0[1].n128_u8[4] > 1u)
    {
      v6 = v0[1].n128_u32[0];
      if (v2 == 2)
      {
        v8 = 3;
      }

      else
      {
        if (v2 == 3)
        {
          v7 = 4;
LABEL_20:
          MEMORY[0x1C68F4C10](v7);
          MEMORY[0x1C68F4C10](v1);
          return;
        }

        v8 = 5;
      }

      MEMORY[0x1C68F4C10](v8);
      MEMORY[0x1C68F4C10](v1);
      MEMORY[0x1C68F4C10](v5);
      if ((v6 & 0x7FFFFFFF) != 0)
      {
        v9 = v6;
      }

      else
      {
        v9 = 0;
      }

LABEL_33:
      Hasher._combine(_:)(v9);
      return;
    }

    if (v0[1].n128_u8[4])
    {
      v3 = HIDWORD(v1);
      v4 = 2;
      goto LABEL_27;
    }

    v11 = *v0;
    MEMORY[0x1C68F4C10](1);

    specialized SIMD.hash(into:)(v11);
  }

  else
  {
    if (v0[1].n128_u8[4] <= 7u)
    {
      v3 = HIDWORD(v1);
      if (v2 == 5)
      {
        v4 = 6;
      }

      else if (v2 == 6)
      {
        v4 = 7;
      }

      else
      {
        v4 = 8;
      }

LABEL_27:
      MEMORY[0x1C68F4C10](v4);
      MEMORY[0x1C68F4C10](v1);
      if ((v3 & 0x7FFFFF) == 0 && (v1 & 0x7F80000000000000) == 0)
      {
        v9 = 0;
      }

      else
      {
        v9 = v3;
      }

      goto LABEL_33;
    }

    if (v2 == 8)
    {
      v7 = 9;
      goto LABEL_20;
    }

    if (v2 == 9)
    {
      v7 = 10;
      goto LABEL_20;
    }

    MEMORY[0x1C68F4C10](0);
  }
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance AnimationTimingFunction.EasingFunctionType()
{
  Hasher.init(_seed:)();
  AnimationTimingFunction.EasingFunctionType.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AnimationTimingFunction.EasingFunctionType()
{
  Hasher.init(_seed:)();
  AnimationTimingFunction.EasingFunctionType.hash(into:)();
  return Hasher._finalize()();
}

uint64_t AnimationTimingFunction.EasingFunction.__deallocating_deinit()
{
  if (*(v0 + 16))
  {
    RERelease();
  }

  return swift_deallocClassInstance();
}

unsigned __int8 *static AnimationTimingFunction.__smooth(_:)@<X0>(unsigned __int8 *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 20) = 9;
  return result;
}

unsigned __int8 *static AnimationTimingFunction.__back(_:amplitude:)@<X0>(unsigned __int8 *result@<X0>, uint64_t a2@<X8>, unsigned int a3@<S0>)
{
  *a2 = *result | (a3 << 32);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 20) = 1;
  return result;
}

unsigned __int8 *static AnimationTimingFunction.__bounce(_:bounces:bounciness:)@<X0>(unsigned __int8 *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, float a4@<S0>)
{
  *a3 = *result;
  *(a3 + 8) = a2;
  *(a3 + 16) = a4;
  *(a3 + 20) = 2;
  return result;
}

unsigned __int8 *static AnimationTimingFunction.__circle(_:)@<X0>(unsigned __int8 *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 20) = 3;
  return result;
}

unsigned __int8 *static AnimationTimingFunction.__exponential(_:exponent:)@<X0>(unsigned __int8 *result@<X0>, uint64_t a2@<X8>, unsigned int a3@<S0>)
{
  *a2 = *result | (a3 << 32);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 20) = 5;
  return result;
}

unsigned __int8 *static AnimationTimingFunction.__logarithmic(_:base:)@<X0>(unsigned __int8 *result@<X0>, uint64_t a2@<X8>, unsigned int a3@<S0>)
{
  *a2 = *result | (a3 << 32);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 20) = 6;
  return result;
}

void static AnimationTimingFunction.__power(_:power:)(uint64_t a1@<X8>, unsigned int a2@<S0>)
{
  *a1 = a2 << 32;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 20) = 7;
}

unsigned __int8 *static AnimationTimingFunction.__sine(_:)@<X0>(unsigned __int8 *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 20) = 8;
  return result;
}

unsigned __int8 *static AnimationTimingFunction.__spring(_:oscillations:springiness:)@<X0>(unsigned __int8 *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, float a4@<S0>)
{
  *a3 = *result;
  *(a3 + 8) = a2;
  *(a3 + 16) = a4;
  *(a3 + 20) = 4;
  return result;
}

__n128 static AnimationTimingFunction.cubicBezier(controlPoint1:controlPoint2:)@<Q0>(__n128 *a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySfGMd, &_ss23_ContiguousArrayStorageCySfGMR);
  inited = swift_initStackObject();
  *&v5 = a2;
  *(&v5 + 1) = a3;
  *(inited + 16) = xmmword_1C189FFC0;
  *(inited + 32) = v5;
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD4VySfG_SaySfGTt1g5Tf4g_n(inited);
  v10 = v6;
  swift_setDeallocating();
  result = v10;
  *a1 = v10;
  a1[1].n128_u32[0] = 0;
  a1[1].n128_u8[4] = 0;
  return result;
}

__n128 static AnimationTimingFunction.default.getter@<Q0>(__n128 *a1@<X8>, __n128 a2@<Q0>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySfGMd, &_ss23_ContiguousArrayStorageCySfGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C189FFC0;
  *(inited + 32) = a2;
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD4VySfG_SaySfGTt1g5Tf4g_n(inited);
  v7 = v4;
  swift_setDeallocating();
  result = v7;
  *a1 = v7;
  a1[1].n128_u32[0] = 0;
  a1[1].n128_u8[4] = 0;
  return result;
}

uint64_t static AnimationTimingFunction.== infix(_:_:)(__int128 *a1, __int128 *a2)
{
  v2 = *(a1 + 4);
  v3 = *(a1 + 20);
  v4 = *(a2 + 4);
  v5 = *(a2 + 20);
  v10 = *a1;
  v11 = v2;
  v12 = v3;
  v7 = *a2;
  v8 = v4;
  v9 = v5;
  return specialized static AnimationTimingFunction.EasingFunctionType.== infix(_:_:)(&v10, &v7) & 1;
}

Swift::Int AnimationTimingFunction.hashValue.getter()
{
  Hasher.init(_seed:)();
  AnimationTimingFunction.EasingFunctionType.hash(into:)();
  return Hasher._finalize()();
}

uint64_t AnimationTimingFunction.CodableAnimationTimingFunction.encode(to:)(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v22 = a4;
  v18 = a3;
  v19 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10RealityKit23AnimationTimingFunctionV0D10FoundationE07CodablefgH0O21CubicBezierCodingKeys33_50AEC0F04C439D5B3A831598008F67C4LLOGMd, &_ss22KeyedEncodingContainerVy10RealityKit23AnimationTimingFunctionV0D10FoundationE07CodablefgH0O21CubicBezierCodingKeys33_50AEC0F04C439D5B3A831598008F67C4LLOGMR);
  v20 = *(v5 - 8);
  v21 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v17 - v6;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10RealityKit23AnimationTimingFunctionV0D10FoundationE07CodablefgH0O16LinearCodingKeys33_50AEC0F04C439D5B3A831598008F67C4LLOGMd, &_ss22KeyedEncodingContainerVy10RealityKit23AnimationTimingFunctionV0D10FoundationE07CodablefgH0O16LinearCodingKeys33_50AEC0F04C439D5B3A831598008F67C4LLOGMR);
  v8 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v10 = &v17 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10RealityKit23AnimationTimingFunctionV0D10FoundationE07CodablefgH0O10CodingKeys33_50AEC0F04C439D5B3A831598008F67C4LLOGMd, &_ss22KeyedEncodingContainerVy10RealityKit23AnimationTimingFunctionV0D10FoundationE07CodablefgH0O10CodingKeys33_50AEC0F04C439D5B3A831598008F67C4LLOGMR);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v17 - v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type AnimationTimingFunction.CodableAnimationTimingFunction.CodingKeys and conformance AnimationTimingFunction.CodableAnimationTimingFunction.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (v22)
  {
    LOBYTE(v23) = 0;
    lazy protocol witness table accessor for type AnimationTimingFunction.CodableAnimationTimingFunction.LinearCodingKeys and conformance AnimationTimingFunction.CodableAnimationTimingFunction.LinearCodingKeys();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v8 + 8))(v10, v17);
  }

  else
  {
    LOBYTE(v23) = 1;
    lazy protocol witness table accessor for type AnimationTimingFunction.CodableAnimationTimingFunction.CubicBezierCodingKeys and conformance AnimationTimingFunction.CodableAnimationTimingFunction.CubicBezierCodingKeys();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v23 = v19;
    v24 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD4VySfGMd, &_ss5SIMD4VySfGMR);
    lazy protocol witness table accessor for type SIMD4<Float> and conformance SIMD4<A>(&lazy protocol witness table cache variable for type SIMD4<Float> and conformance SIMD4<A>, MEMORY[0x1E69E74B0]);
    v16 = v21;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v20 + 8))(v7, v16);
  }

  return (*(v12 + 8))(v14, v11);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance AnimationTimingFunction()
{
  Hasher.init(_seed:)();
  AnimationTimingFunction.EasingFunctionType.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AnimationTimingFunction()
{
  Hasher.init(_seed:)();
  AnimationTimingFunction.EasingFunctionType.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance AnimationTimingFunction(__int128 *a1, __int128 *a2)
{
  v2 = *(a1 + 4);
  v3 = *(a1 + 20);
  v4 = *(a2 + 4);
  v5 = *(a2 + 20);
  v10 = *a1;
  v11 = v2;
  v12 = v3;
  v7 = *a2;
  v8 = v4;
  v9 = v5;
  return specialized static AnimationTimingFunction.EasingFunctionType.== infix(_:_:)(&v10, &v7) & 1;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance AnimationTimingFunction.CodableAnimationTimingFunction.CodingKeys()
{
  if (*v0)
  {
    return 0x7A65426369627563;
  }

  else
  {
    return 0x7261656E696CLL;
  }
}

void protocol witness for CodingKey.init(stringValue:) in conformance AnimationTimingFunction.CodableAnimationTimingFunction.CodingKeys(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7261656E696CLL && a2 == 0xE600000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x7A65426369627563 && a2 == 0xEB00000000726569)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AnimationTimingFunction.CodableAnimationTimingFunction.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AnimationTimingFunction.CodableAnimationTimingFunction.CodingKeys and conformance AnimationTimingFunction.CodableAnimationTimingFunction.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AnimationTimingFunction.CodableAnimationTimingFunction.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AnimationTimingFunction.CodableAnimationTimingFunction.CodingKeys and conformance AnimationTimingFunction.CodableAnimationTimingFunction.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void protocol witness for CodingKey.init(stringValue:) in conformance AnimationTimingFunction.CodableAnimationTimingFunction.CubicBezierCodingKeys(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x506C6F72746E6F63 && a2 == 0xED000073746E696FLL)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AnimationTimingFunction.CodableAnimationTimingFunction.CubicBezierCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AnimationTimingFunction.CodableAnimationTimingFunction.CubicBezierCodingKeys and conformance AnimationTimingFunction.CodableAnimationTimingFunction.CubicBezierCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AnimationTimingFunction.CodableAnimationTimingFunction.CubicBezierCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AnimationTimingFunction.CodableAnimationTimingFunction.CubicBezierCodingKeys and conformance AnimationTimingFunction.CodableAnimationTimingFunction.CubicBezierCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AnimationTimingFunction.CodableAnimationTimingFunction.LinearCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AnimationTimingFunction.CodableAnimationTimingFunction.LinearCodingKeys and conformance AnimationTimingFunction.CodableAnimationTimingFunction.LinearCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AnimationTimingFunction.CodableAnimationTimingFunction.LinearCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AnimationTimingFunction.CodableAnimationTimingFunction.LinearCodingKeys and conformance AnimationTimingFunction.CodableAnimationTimingFunction.LinearCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *protocol witness for Decodable.init(from:) in conformance AnimationTimingFunction.CodableAnimationTimingFunction@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = specialized AnimationTimingFunction.CodableAnimationTimingFunction.init(from:)(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6 & 1;
  }

  return result;
}

uint64_t AnimationTimingFunction.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  outlined init with copy of __REAssetService(a1, v15);
  v5 = specialized AnimationTimingFunction.CodableAnimationTimingFunction.init(from:)(v15);
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v9 = v5;
  v10 = v6;
  v11 = v7;
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  if (v11)
  {
    v12 = 0;
  }

  else
  {
    v12 = v9;
  }

  if (v11)
  {
    v13 = 0;
  }

  else
  {
    v13 = v10;
  }

  *a2 = v12;
  *(a2 + 8) = v13;
  if (v11)
  {
    v14 = 10;
  }

  else
  {
    v14 = 0;
  }

  *(a2 + 16) = 0;
  *(a2 + 20) = v14;
  return result;
}

uint64_t AnimationTimingFunction.encode(to:)(void *a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  if (*(v1 + 20))
  {
    if (*(v1 + 20) != 10 || (!(v3 | v2) ? (v4 = *(v1 + 16) == 0) : (v4 = 0), !v4))
    {
      lazy protocol witness table accessor for type AnimationTimingFunction.EncodingErrors and conformance AnimationTimingFunction.EncodingErrors();
      swift_allocError();
      return swift_willThrow();
    }

    v2 = 0;
    v3 = 0;
    v6 = 1;
  }

  else
  {
    v6 = 0;
  }

  return AnimationTimingFunction.CodableAnimationTimingFunction.encode(to:)(a1, v2, v3, v6);
}

uint64_t protocol witness for Decodable.init(from:) in conformance AnimationTimingFunction@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  outlined init with copy of __REAssetService(a1, v15);
  v5 = specialized AnimationTimingFunction.CodableAnimationTimingFunction.init(from:)(v15);
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v9 = v5;
  v10 = v6;
  v11 = v7;
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  if (v11)
  {
    v12 = 0;
  }

  else
  {
    v12 = v9;
  }

  if (v11)
  {
    v13 = 0;
  }

  else
  {
    v13 = v10;
  }

  *a2 = v12;
  *(a2 + 8) = v13;
  if (v11)
  {
    v14 = 10;
  }

  else
  {
    v14 = 0;
  }

  *(a2 + 16) = 0;
  *(a2 + 20) = v14;
  return result;
}

uint64_t protocol witness for Encodable.encode(to:) in conformance AnimationTimingFunction(void *a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  if (*(v1 + 20))
  {
    if (*(v1 + 20) != 10 || (!(v3 | v2) ? (v4 = *(v1 + 16) == 0) : (v4 = 0), !v4))
    {
      lazy protocol witness table accessor for type AnimationTimingFunction.EncodingErrors and conformance AnimationTimingFunction.EncodingErrors();
      swift_allocError();
      return swift_willThrow();
    }

    v2 = 0;
    v3 = 0;
    v6 = 1;
  }

  else
  {
    v6 = 0;
  }

  return AnimationTimingFunction.CodableAnimationTimingFunction.encode(to:)(a1, v2, v3, v6);
}

uint64_t specialized static AnimationTimingFunction.EasingFunctionType.== infix(_:_:)(float32x4_t *a1, float32x4_t *a2)
{
  v2 = a1->i64[0];
  v3 = a1[1].u8[4];
  v4 = a2->i64[0];
  v5 = a2->i64[1];
  v6 = a2[1].u8[4];
  if (v3 <= 4)
  {
    v7 = a1->i64[1];
    if (a1[1].u8[4] <= 1u)
    {
      if (!a1[1].i8[4])
      {
        if (!a2[1].i8[4])
        {
          if (*&v2 == *&v4)
          {
            v8 = vmovn_s32(vceqq_f32(*a1, *a2));
            if (v8.i8[2] & 1) != 0 && (v8.i8[4])
            {
              return v8.i8[6] & 1;
            }
          }

          return v6 & 1;
        }

        goto LABEL_50;
      }

      if (v6 != 1)
      {
        goto LABEL_50;
      }

      goto LABEL_39;
    }

    if (v3 == 2)
    {
      if (v6 != 2)
      {
        goto LABEL_50;
      }

      if (v4 != v2 || v7 != v5)
      {
        goto LABEL_50;
      }
    }

    else
    {
      if (v3 == 3)
      {
        if (v6 != 3)
        {
          goto LABEL_50;
        }

        goto LABEL_31;
      }

      if (v6 != 4)
      {
        goto LABEL_50;
      }

      LOBYTE(v6) = 0;
      if (v4 != v2 || v7 != v5)
      {
        return v6 & 1;
      }
    }

    v12 = a1[1].f32[0];
    v13 = a2[1].f32[0];
LABEL_41:
    v11 = v12 == v13;
    goto LABEL_42;
  }

  if (a1[1].u8[4] <= 7u)
  {
    if (v3 == 5)
    {
      if (v6 != 5)
      {
        goto LABEL_50;
      }
    }

    else if (v3 == 6)
    {
      if (v6 != 6)
      {
        goto LABEL_50;
      }
    }

    else if (v6 != 7)
    {
      goto LABEL_50;
    }

LABEL_39:
    if (v4 == v2)
    {
      LODWORD(v12) = HIDWORD(a1->i64[0]);
      LODWORD(v13) = HIDWORD(a2->i64[0]);
      goto LABEL_41;
    }

LABEL_50:
    LOBYTE(v6) = 0;
    return v6 & 1;
  }

  if (v3 == 8)
  {
    if (v6 != 8)
    {
      goto LABEL_50;
    }
  }

  else
  {
    if (v3 != 9)
    {
      if (v6 == 10 && !(v5 | v4) && !a2[1].i32[0])
      {
        return 1;
      }

      goto LABEL_50;
    }

    if (v6 != 9)
    {
      goto LABEL_50;
    }
  }

LABEL_31:
  v11 = (v4 ^ v2) == 0;
LABEL_42:
  v14 = v11;
  return v14 & 1;
}

void *specialized AnimationTimingFunction.CodableAnimationTimingFunction.init(from:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10RealityKit23AnimationTimingFunctionV0D10FoundationE07CodablefgH0O21CubicBezierCodingKeys33_50AEC0F04C439D5B3A831598008F67C4LLOGMd, &_ss22KeyedDecodingContainerVy10RealityKit23AnimationTimingFunctionV0D10FoundationE07CodablefgH0O21CubicBezierCodingKeys33_50AEC0F04C439D5B3A831598008F67C4LLOGMR);
  v3 = *(v2 - 8);
  v28 = v2;
  v29 = v3;
  MEMORY[0x1EEE9AC00](v2);
  v5 = v27 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10RealityKit23AnimationTimingFunctionV0D10FoundationE07CodablefgH0O16LinearCodingKeys33_50AEC0F04C439D5B3A831598008F67C4LLOGMd, &_ss22KeyedDecodingContainerVy10RealityKit23AnimationTimingFunctionV0D10FoundationE07CodablefgH0O16LinearCodingKeys33_50AEC0F04C439D5B3A831598008F67C4LLOGMR);
  v30 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v27 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10RealityKit23AnimationTimingFunctionV0D10FoundationE07CodablefgH0O10CodingKeys33_50AEC0F04C439D5B3A831598008F67C4LLOGMd, &_ss22KeyedDecodingContainerVy10RealityKit23AnimationTimingFunctionV0D10FoundationE07CodablefgH0O10CodingKeys33_50AEC0F04C439D5B3A831598008F67C4LLOGMR);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v27 - v11;
  v13 = a1[3];
  v37 = a1;
  v14 = __swift_project_boxed_opaque_existential_1(a1, v13);
  lazy protocol witness table accessor for type AnimationTimingFunction.CodableAnimationTimingFunction.CodingKeys and conformance AnimationTimingFunction.CodableAnimationTimingFunction.CodingKeys();
  v15 = v31;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v15)
  {
    v16 = v30;
    v31 = v10;
    v17 = KeyedDecodingContainer.allKeys.getter();
    v18 = (2 * *(v17 + 16)) | 1;
    v33 = v17;
    v34 = v17 + 32;
    v35 = 0;
    v36 = v18;
    v19 = specialized Collection<>.popFirst()();
    if (v19 == 2 || v35 != v36 >> 1)
    {
      v21 = type metadata accessor for DecodingError();
      swift_allocError();
      v23 = v22;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR);
      *v23 = &type metadata for AnimationTimingFunction.CodableAnimationTimingFunction;
      v14 = v12;
      KeyedDecodingContainer.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v21 - 8) + 104))(v23, *MEMORY[0x1E69E6AF8], v21);
      swift_willThrow();
      (*(v31 + 8))(v12, v9);
      swift_unknownObjectRelease();
    }

    else
    {
      v27[3] = v19;
      if (v19)
      {
        LOBYTE(v32) = 1;
        lazy protocol witness table accessor for type AnimationTimingFunction.CodableAnimationTimingFunction.CubicBezierCodingKeys and conformance AnimationTimingFunction.CodableAnimationTimingFunction.CubicBezierCodingKeys();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v20 = v31;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD4VySfGMd, &_ss5SIMD4VySfGMR);
        lazy protocol witness table accessor for type SIMD4<Float> and conformance SIMD4<A>(&lazy protocol witness table cache variable for type SIMD4<Float> and conformance SIMD4<A>, MEMORY[0x1E69E74C0]);
        v26 = v28;
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        (*(v29 + 8))(v5, v26);
        (*(v20 + 8))(v12, v9);
        swift_unknownObjectRelease();
        v14 = v32;
      }

      else
      {
        LOBYTE(v32) = 0;
        lazy protocol witness table accessor for type AnimationTimingFunction.CodableAnimationTimingFunction.LinearCodingKeys and conformance AnimationTimingFunction.CodableAnimationTimingFunction.LinearCodingKeys();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v25 = v31;
        (*(v16 + 8))(v8, v6);
        (*(v25 + 8))(v12, v9);
        swift_unknownObjectRelease();
        v14 = 0;
      }
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v37);
  return v14;
}

unint64_t lazy protocol witness table accessor for type AnimationTimingFunction.EncodingErrors and conformance AnimationTimingFunction.EncodingErrors()
{
  result = lazy protocol witness table cache variable for type AnimationTimingFunction.EncodingErrors and conformance AnimationTimingFunction.EncodingErrors;
  if (!lazy protocol witness table cache variable for type AnimationTimingFunction.EncodingErrors and conformance AnimationTimingFunction.EncodingErrors)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AnimationTimingFunction.EncodingErrors, &type metadata for AnimationTimingFunction.EncodingErrors, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AnimationTimingFunction.EncodingErrors and conformance AnimationTimingFunction.EncodingErrors);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnimationTimingFunction.EncodingErrors and conformance AnimationTimingFunction.EncodingErrors;
  if (!lazy protocol witness table cache variable for type AnimationTimingFunction.EncodingErrors and conformance AnimationTimingFunction.EncodingErrors)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AnimationTimingFunction.EncodingErrors, &type metadata for AnimationTimingFunction.EncodingErrors, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AnimationTimingFunction.EncodingErrors and conformance AnimationTimingFunction.EncodingErrors);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AnimationTimingFunction.__Mode and conformance AnimationTimingFunction.__Mode()
{
  result = lazy protocol witness table cache variable for type AnimationTimingFunction.__Mode and conformance AnimationTimingFunction.__Mode;
  if (!lazy protocol witness table cache variable for type AnimationTimingFunction.__Mode and conformance AnimationTimingFunction.__Mode)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AnimationTimingFunction.__Mode, &type metadata for AnimationTimingFunction.__Mode, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AnimationTimingFunction.__Mode and conformance AnimationTimingFunction.__Mode);
  }

  return result;
}

__n128 __swift_memcpy21_16(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 13) = *(a2 + 13);
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for AnimationTimingFunction(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF6 && *(a1 + 21))
  {
    return (*a1 + 246);
  }

  v3 = *(a1 + 20);
  if (v3 <= 0xA)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for AnimationTimingFunction(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF5)
  {
    *(result + 20) = 0;
    *(result + 16) = 0;
    *result = a2 - 246;
    *(result + 8) = 0;
    if (a3 >= 0xF6)
    {
      *(result + 21) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF6)
    {
      *(result + 21) = 0;
    }

    if (a2)
    {
      *(result + 20) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTag for AnimationTimingFunction.EasingFunctionType(uint64_t a1)
{
  if (*(a1 + 20) <= 9u)
  {
    return *(a1 + 20);
  }

  else
  {
    return (*a1 + 10);
  }
}

uint64_t destructiveInjectEnumTag for AnimationTimingFunction.EasingFunctionType(uint64_t result, unsigned int a2)
{
  if (a2 >= 0xA)
  {
    *result = a2 - 10;
    *(result + 8) = 0;
    LOBYTE(a2) = 10;
    *(result + 16) = 0;
  }

  *(result + 20) = a2;
  return result;
}

unint64_t lazy protocol witness table accessor for type AnimationTimingFunction.EasingFunctionType and conformance AnimationTimingFunction.EasingFunctionType()
{
  result = lazy protocol witness table cache variable for type AnimationTimingFunction.EasingFunctionType and conformance AnimationTimingFunction.EasingFunctionType;
  if (!lazy protocol witness table cache variable for type AnimationTimingFunction.EasingFunctionType and conformance AnimationTimingFunction.EasingFunctionType)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AnimationTimingFunction.EasingFunctionType, &unk_1F40FDA70, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AnimationTimingFunction.EasingFunctionType and conformance AnimationTimingFunction.EasingFunctionType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AnimationTimingFunction.CodableAnimationTimingFunction.CodingKeys and conformance AnimationTimingFunction.CodableAnimationTimingFunction.CodingKeys()
{
  result = lazy protocol witness table cache variable for type AnimationTimingFunction.CodableAnimationTimingFunction.CodingKeys and conformance AnimationTimingFunction.CodableAnimationTimingFunction.CodingKeys;
  if (!lazy protocol witness table cache variable for type AnimationTimingFunction.CodableAnimationTimingFunction.CodingKeys and conformance AnimationTimingFunction.CodableAnimationTimingFunction.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AnimationTimingFunction.CodableAnimationTimingFunction.CodingKeys, &unk_1F40FDB90, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AnimationTimingFunction.CodableAnimationTimingFunction.CodingKeys and conformance AnimationTimingFunction.CodableAnimationTimingFunction.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnimationTimingFunction.CodableAnimationTimingFunction.CodingKeys and conformance AnimationTimingFunction.CodableAnimationTimingFunction.CodingKeys;
  if (!lazy protocol witness table cache variable for type AnimationTimingFunction.CodableAnimationTimingFunction.CodingKeys and conformance AnimationTimingFunction.CodableAnimationTimingFunction.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AnimationTimingFunction.CodableAnimationTimingFunction.CodingKeys, &unk_1F40FDB90, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AnimationTimingFunction.CodableAnimationTimingFunction.CodingKeys and conformance AnimationTimingFunction.CodableAnimationTimingFunction.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnimationTimingFunction.CodableAnimationTimingFunction.CodingKeys and conformance AnimationTimingFunction.CodableAnimationTimingFunction.CodingKeys;
  if (!lazy protocol witness table cache variable for type AnimationTimingFunction.CodableAnimationTimingFunction.CodingKeys and conformance AnimationTimingFunction.CodableAnimationTimingFunction.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AnimationTimingFunction.CodableAnimationTimingFunction.CodingKeys, &unk_1F40FDB90, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AnimationTimingFunction.CodableAnimationTimingFunction.CodingKeys and conformance AnimationTimingFunction.CodableAnimationTimingFunction.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnimationTimingFunction.CodableAnimationTimingFunction.CodingKeys and conformance AnimationTimingFunction.CodableAnimationTimingFunction.CodingKeys;
  if (!lazy protocol witness table cache variable for type AnimationTimingFunction.CodableAnimationTimingFunction.CodingKeys and conformance AnimationTimingFunction.CodableAnimationTimingFunction.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AnimationTimingFunction.CodableAnimationTimingFunction.CodingKeys, &unk_1F40FDB90, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AnimationTimingFunction.CodableAnimationTimingFunction.CodingKeys and conformance AnimationTimingFunction.CodableAnimationTimingFunction.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AnimationTimingFunction.CodableAnimationTimingFunction.CubicBezierCodingKeys and conformance AnimationTimingFunction.CodableAnimationTimingFunction.CubicBezierCodingKeys()
{
  result = lazy protocol witness table cache variable for type AnimationTimingFunction.CodableAnimationTimingFunction.CubicBezierCodingKeys and conformance AnimationTimingFunction.CodableAnimationTimingFunction.CubicBezierCodingKeys;
  if (!lazy protocol witness table cache variable for type AnimationTimingFunction.CodableAnimationTimingFunction.CubicBezierCodingKeys and conformance AnimationTimingFunction.CodableAnimationTimingFunction.CubicBezierCodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AnimationTimingFunction.CodableAnimationTimingFunction.CubicBezierCodingKeys, &unk_1F40FDCD0, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AnimationTimingFunction.CodableAnimationTimingFunction.CubicBezierCodingKeys and conformance AnimationTimingFunction.CodableAnimationTimingFunction.CubicBezierCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnimationTimingFunction.CodableAnimationTimingFunction.CubicBezierCodingKeys and conformance AnimationTimingFunction.CodableAnimationTimingFunction.CubicBezierCodingKeys;
  if (!lazy protocol witness table cache variable for type AnimationTimingFunction.CodableAnimationTimingFunction.CubicBezierCodingKeys and conformance AnimationTimingFunction.CodableAnimationTimingFunction.CubicBezierCodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AnimationTimingFunction.CodableAnimationTimingFunction.CubicBezierCodingKeys, &unk_1F40FDCD0, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AnimationTimingFunction.CodableAnimationTimingFunction.CubicBezierCodingKeys and conformance AnimationTimingFunction.CodableAnimationTimingFunction.CubicBezierCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnimationTimingFunction.CodableAnimationTimingFunction.CubicBezierCodingKeys and conformance AnimationTimingFunction.CodableAnimationTimingFunction.CubicBezierCodingKeys;
  if (!lazy protocol witness table cache variable for type AnimationTimingFunction.CodableAnimationTimingFunction.CubicBezierCodingKeys and conformance AnimationTimingFunction.CodableAnimationTimingFunction.CubicBezierCodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AnimationTimingFunction.CodableAnimationTimingFunction.CubicBezierCodingKeys, &unk_1F40FDCD0, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AnimationTimingFunction.CodableAnimationTimingFunction.CubicBezierCodingKeys and conformance AnimationTimingFunction.CodableAnimationTimingFunction.CubicBezierCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnimationTimingFunction.CodableAnimationTimingFunction.CubicBezierCodingKeys and conformance AnimationTimingFunction.CodableAnimationTimingFunction.CubicBezierCodingKeys;
  if (!lazy protocol witness table cache variable for type AnimationTimingFunction.CodableAnimationTimingFunction.CubicBezierCodingKeys and conformance AnimationTimingFunction.CodableAnimationTimingFunction.CubicBezierCodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AnimationTimingFunction.CodableAnimationTimingFunction.CubicBezierCodingKeys, &unk_1F40FDCD0, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AnimationTimingFunction.CodableAnimationTimingFunction.CubicBezierCodingKeys and conformance AnimationTimingFunction.CodableAnimationTimingFunction.CubicBezierCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AnimationTimingFunction.CodableAnimationTimingFunction.LinearCodingKeys and conformance AnimationTimingFunction.CodableAnimationTimingFunction.LinearCodingKeys()
{
  result = lazy protocol witness table cache variable for type AnimationTimingFunction.CodableAnimationTimingFunction.LinearCodingKeys and conformance AnimationTimingFunction.CodableAnimationTimingFunction.LinearCodingKeys;
  if (!lazy protocol witness table cache variable for type AnimationTimingFunction.CodableAnimationTimingFunction.LinearCodingKeys and conformance AnimationTimingFunction.CodableAnimationTimingFunction.LinearCodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AnimationTimingFunction.CodableAnimationTimingFunction.LinearCodingKeys, &unk_1F40FDBB0, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AnimationTimingFunction.CodableAnimationTimingFunction.LinearCodingKeys and conformance AnimationTimingFunction.CodableAnimationTimingFunction.LinearCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnimationTimingFunction.CodableAnimationTimingFunction.LinearCodingKeys and conformance AnimationTimingFunction.CodableAnimationTimingFunction.LinearCodingKeys;
  if (!lazy protocol witness table cache variable for type AnimationTimingFunction.CodableAnimationTimingFunction.LinearCodingKeys and conformance AnimationTimingFunction.CodableAnimationTimingFunction.LinearCodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AnimationTimingFunction.CodableAnimationTimingFunction.LinearCodingKeys, &unk_1F40FDBB0, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AnimationTimingFunction.CodableAnimationTimingFunction.LinearCodingKeys and conformance AnimationTimingFunction.CodableAnimationTimingFunction.LinearCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnimationTimingFunction.CodableAnimationTimingFunction.LinearCodingKeys and conformance AnimationTimingFunction.CodableAnimationTimingFunction.LinearCodingKeys;
  if (!lazy protocol witness table cache variable for type AnimationTimingFunction.CodableAnimationTimingFunction.LinearCodingKeys and conformance AnimationTimingFunction.CodableAnimationTimingFunction.LinearCodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AnimationTimingFunction.CodableAnimationTimingFunction.LinearCodingKeys, &unk_1F40FDBB0, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AnimationTimingFunction.CodableAnimationTimingFunction.LinearCodingKeys and conformance AnimationTimingFunction.CodableAnimationTimingFunction.LinearCodingKeys);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type SIMD4<Float> and conformance SIMD4<A>(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5SIMD4VySfGMd, &_ss5SIMD4VySfGMR);
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AnimationTimingFunction.CodableAnimationTimingFunction(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 17))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for AnimationTimingFunction.CodableAnimationTimingFunction(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 1;
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

  *(result + 17) = v3;
  return result;
}

uint64_t getEnumTag for AnimationTimingFunction.CodableAnimationTimingFunction(uint64_t a1)
{
  if (*(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t destructiveInjectEnumTag for AnimationTimingFunction.CodableAnimationTimingFunction(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    *(result + 16) = 1;
  }

  else
  {
    *(result + 16) = 0;
  }

  return result;
}

uint64_t protocol witness for static BindableDataInternal.get(from:) in conformance Bool@<X0>(char *a2@<X8>)
{
  result = REBindPointGetBool();
  v4 = 0;
  if (!result)
  {
    v4 = 2;
  }

  *a2 = v4;
  return result;
}

uint64_t protocol witness for BindableDataInternal.createAndSetParameter(name:_:) in conformance Bool(uint64_t a1, uint64_t a2, uint64_t a3)
{
  REKeyValueComponentGetComponentType();
  REEntityGetOrAddComponentByClass();
  String.utf8CString.getter();
  REKeyValueComponentAddBoolValue();
}

uint64_t protocol witness for static BindableDataInternal.get(from:) in conformance Int8@<X0>(uint64_t a1@<X0>, _BYTE *x8_0@<X8>)
{
  v4 = MEMORY[0x1E6998848];

  return protocol witness for static BindableDataInternal.get(from:) in conformance Int8(a1, v4, x8_0);
}

uint64_t protocol witness for BindableDataInternal.createAndSetParameter(name:_:) in conformance Int8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  REKeyValueComponentGetComponentType();
  REEntityGetOrAddComponentByClass();
  String.utf8CString.getter();
  REKeyValueComponentAddIntValue();
}

uint64_t static UInt8.createBindPoint(_:entity:type:allowConversion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a4 == 1)
  {
    String.utf8CString.getter();
    ReferenceForEntityAnimatedValuesUInt8 = REBindPointCreateReferenceForEntityAnimatedValuesUInt8();
  }

  else
  {
    if (a4)
    {
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return result;
    }

    String.utf8CString.getter();
    ReferenceForEntityAnimatedValuesUInt8 = REBindPointCreateReferenceForEntityUInt8();
  }

  v11 = ReferenceForEntityAnimatedValuesUInt8;

  if ((REBindPointIsValid() & 1) != 0 || (a5 & 1) == 0)
  {
    return v11;
  }

  REBindPointDestroy();
  String.utf8CString.getter();
  v12 = a4 ? REBindPointCreateReferenceForEntityAnimatedValuesInt32() : REBindPointCreateReferenceForEntityInt32();
  v11 = v12;

  if (REBindPointIsValid())
  {
    return v11;
  }

  REBindPointDestroy();
  v11 = static UInt8.createBindPoint(_:entity:type:allowConversion:)(a1, a2, a3, a4, 0);
  if (REBindPointIsValid())
  {
    return v11;
  }

  REBindPointDestroy();

  return static UInt16.createBindPoint(_:entity:type:allowConversion:)(a1, a2, a3, a4, 0);
}

uint64_t protocol witness for static BindableDataInternal.get(from:) in conformance UInt8@<X0>(uint64_t a1@<X0>, _BYTE *x8_0@<X8>)
{
  v4 = MEMORY[0x1E6998860];

  return protocol witness for static BindableDataInternal.get(from:) in conformance Int8(a1, v4, x8_0);
}

uint64_t protocol witness for static BindableDataInternal.get(from:) in conformance Int8@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, char *)@<X3>, _BYTE *a3@<X8>)
{
  v7 = *MEMORY[0x1E69E9840];
  v6 = 0;
  result = a2(a1, &v6);
  v5 = v6;
  if (!result)
  {
    v5 = 0;
  }

  *a3 = v5;
  a3[1] = result ^ 1;
  return result;
}

uint64_t protocol witness for BindableDataInternal.createAndSetParameter(name:_:) in conformance UInt8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  REKeyValueComponentGetComponentType();
  REEntityGetOrAddComponentByClass();
  String.utf8CString.getter();
  REKeyValueComponentAddIntValue();
}

uint64_t protocol witness for static BindableDataInternal.get(from:) in conformance Int16@<X0>(uint64_t a1@<X0>, uint64_t x8_0@<X8>)
{
  v4 = MEMORY[0x1E6998838];

  return protocol witness for static BindableDataInternal.get(from:) in conformance Int16(a1, v4, x8_0);
}

uint64_t protocol witness for BindableDataInternal.createAndSetParameter(name:_:) in conformance Int16(uint64_t a1, uint64_t a2, uint64_t a3)
{
  REKeyValueComponentGetComponentType();
  REEntityGetOrAddComponentByClass();
  String.utf8CString.getter();
  REKeyValueComponentAddIntValue();
}

uint64_t static UInt16.createBindPoint(_:entity:type:allowConversion:)(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, int a5)
{
  if (a4 > 1)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v6 = a5 ^ 1;
    String.utf8CString.getter();
    if (a4)
    {
      ReferenceForEntityAnimatedValuesUInt16 = REBindPointCreateReferenceForEntityAnimatedValuesUInt16();
    }

    else
    {
      ReferenceForEntityAnimatedValuesUInt16 = REBindPointCreateReferenceForEntityUInt16();
    }

    v8 = ReferenceForEntityAnimatedValuesUInt16;

    if (((REBindPointIsValid() | v6) & 1) == 0)
    {
      REBindPointDestroy();
      String.utf8CString.getter();
      v9 = a4 ? REBindPointCreateReferenceForEntityAnimatedValuesInt32() : REBindPointCreateReferenceForEntityInt32();
      v8 = v9;

      if ((REBindPointIsValid() & 1) == 0)
      {
        REBindPointDestroy();
        String.utf8CString.getter();
        v10 = a4 ? REBindPointCreateReferenceForEntityAnimatedValuesUInt8() : REBindPointCreateReferenceForEntityUInt8();
        v8 = v10;

        REBindPointIsValid();
        if ((REBindPointIsValid() & 1) == 0)
        {
          REBindPointDestroy();
          String.utf8CString.getter();
          if (a4)
          {
            ReferenceForEntityUInt16 = REBindPointCreateReferenceForEntityAnimatedValuesUInt16();
          }

          else
          {
            ReferenceForEntityUInt16 = REBindPointCreateReferenceForEntityUInt16();
          }

          v8 = ReferenceForEntityUInt16;

          REBindPointIsValid();
        }
      }
    }

    return v8;
  }

  return result;
}

uint64_t protocol witness for static BindableDataInternal.get(from:) in conformance UInt16@<X0>(uint64_t a1@<X0>, uint64_t x8_0@<X8>)
{
  v4 = MEMORY[0x1E6998850];

  return protocol witness for static BindableDataInternal.get(from:) in conformance Int16(a1, v4, x8_0);
}

uint64_t protocol witness for static BindableDataInternal.get(from:) in conformance Int16@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, __int16 *)@<X3>, uint64_t a3@<X8>)
{
  v7 = *MEMORY[0x1E69E9840];
  v6 = 0;
  result = a2(a1, &v6);
  v5 = v6;
  if (!result)
  {
    v5 = 0;
  }

  *a3 = v5;
  *(a3 + 2) = result ^ 1;
  return result;
}

uint64_t protocol witness for BindableDataInternal.createAndSetParameter(name:_:) in conformance UInt16(uint64_t a1, uint64_t a2, uint64_t a3)
{
  REKeyValueComponentGetComponentType();
  REEntityGetOrAddComponentByClass();
  String.utf8CString.getter();
  REKeyValueComponentAddIntValue();
}

uint64_t protocol witness for static BindableDataInternal.get(from:) in conformance Int32@<X0>(uint64_t a1@<X0>, uint64_t x8_0@<X8>)
{
  v4 = MEMORY[0x1E6998840];

  return protocol witness for static BindableDataInternal.get(from:) in conformance Int32(a1, v4, x8_0);
}

uint64_t protocol witness for BindableDataInternal.createAndSetParameter(name:_:) in conformance Int32(uint64_t a1, uint64_t a2, uint64_t a3)
{
  REKeyValueComponentGetComponentType();
  REEntityGetOrAddComponentByClass();
  String.utf8CString.getter();
  REKeyValueComponentAddIntValue();
}

uint64_t protocol witness for static BindableDataInternal.get(from:) in conformance UInt32@<X0>(uint64_t a1@<X0>, uint64_t x8_0@<X8>)
{
  v4 = MEMORY[0x1E6998858];

  return protocol witness for static BindableDataInternal.get(from:) in conformance Int32(a1, v4, x8_0);
}

uint64_t protocol witness for static BindableDataInternal.get(from:) in conformance Int32@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, int *)@<X3>, uint64_t a3@<X8>)
{
  v7 = *MEMORY[0x1E69E9840];
  v6 = 0;
  result = a2(a1, &v6);
  v5 = v6;
  if (!result)
  {
    v5 = 0;
  }

  *a3 = v5;
  *(a3 + 4) = result ^ 1;
  return result;
}

uint64_t protocol witness for BindableDataInternal.createAndSetParameter(name:_:) in conformance UInt32(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  REKeyValueComponentGetComponentType();
  result = REEntityGetOrAddComponentByClass();
  if (v4 < 0)
  {
    __break(1u);
  }

  else
  {
    String.utf8CString.getter();
    REKeyValueComponentAddIntValue();
  }

  return result;
}

uint64_t protocol witness for static BindableDataInternal.get(from:) in conformance Int@<X0>(uint64_t a2@<X8>)
{
  result = REBindPointGetInt64();
  *a2 = 0;
  *(a2 + 8) = result ^ 1;
  return result;
}

uint64_t protocol witness for BindableDataInternal.createAndSetParameter(name:_:) in conformance Int(uint64_t a1, uint64_t a2, uint64_t a3)
{
  REKeyValueComponentGetComponentType();
  REEntityGetOrAddComponentByClass();
  String.utf8CString.getter();
  REKeyValueComponentAddInt64Value();
}

uint64_t protocol witness for static BindableDataInternal.get(from:) in conformance Float@<X0>(uint64_t a2@<X8>)
{
  result = REBindPointGetFloat();
  *a2 = 0;
  *(a2 + 4) = result ^ 1;
  return result;
}

uint64_t protocol witness for BindableDataInternal.createAndSetParameter(name:_:) in conformance Float(uint64_t a1, uint64_t a2, uint64_t a3)
{
  REKeyValueComponentGetComponentType();
  REEntityGetOrAddComponentByClass();
  String.utf8CString.getter();
  REKeyValueComponentAddFloatValue();
}

uint64_t protocol witness for static BindableDataInternal.get(from:) in conformance Double@<X0>(uint64_t a2@<X8>)
{
  result = REBindPointGetDouble();
  *a2 = 0;
  *(a2 + 8) = result ^ 1;
  return result;
}

uint64_t protocol witness for BindableDataInternal.createAndSetParameter(name:_:) in conformance Double(uint64_t a1, uint64_t a2, uint64_t a3)
{
  REKeyValueComponentGetComponentType();
  REEntityGetOrAddComponentByClass();
  String.utf8CString.getter();
  REKeyValueComponentAddDoubleValue();
}

uint64_t SIMD2.set(to:type:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v10 = *(v5 + 16);
  v10(&v13 - v11, v3, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD2VySfGMd, &_ss5SIMD2VySfGMR);
  if (swift_dynamicCast())
  {
    return REBindPointSetFloat2();
  }

  (v10)(v7, v3, a3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD2VySdGMd, &_ss5SIMD2VySdGMR);
  result = swift_dynamicCast();
  if (result)
  {
    return REBindPointSetDouble2();
  }

  return result;
}

uint64_t static SIMD2.get(from:)@<X0>(char *a2@<X8>)
{
  v35 = a2;
  v39 = *MEMORY[0x1E69E9840];
  v2 = type metadata accessor for SIMD2();
  v3 = type metadata accessor for Optional();
  v4 = *(v3 - 8);
  v33 = v3;
  v34 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v32 - v8;
  v10 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v32 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v32 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v32 - v21;
  v38 = 0;
  *&v37 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD2VySfGMd, &_ss5SIMD2VySfGMR);
  if (swift_dynamicCast())
  {
    (*(v10 + 8))(v22, v2);
    if (REBindPointGetFloat2())
    {
      *&v37 = v38;
      v23 = swift_dynamicCast();
      v24 = *(v10 + 56);
      if (v23)
      {
        v24(v9, 0, 1, v2);
        v25 = *(v10 + 32);
        v25(v19, v9, v2);
        v26 = v35;
        v25(v35, v19, v2);
        return (v24)(v26, 0, 1, v2);
      }

      v24(v9, 1, 1, v2);
      (*(v34 + 8))(v9, v33);
    }
  }

  v36 = 0u;
  v37 = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD2VySdGMd, &_ss5SIMD2VySdGMR);
  if (swift_dynamicCast())
  {
    (*(v10 + 8))(v16, v2);
    if (REBindPointGetDouble2())
    {
      v36 = v37;
      v28 = swift_dynamicCast();
      v29 = *(v10 + 56);
      if (v28)
      {
        v29(v6, 0, 1, v2);
        v30 = *(v10 + 32);
        v30(v13, v6, v2);
        v31 = v35;
        v30(v35, v13, v2);
        return (v29)(v31, 0, 1, v2);
      }

      v29(v6, 1, 1, v2);
      (*(v34 + 8))(v6, v33);
    }
  }

  return (*(v10 + 56))(v35, 1, 1, v2);
}

uint64_t static SIMD2.createBindPoint(_:entity:type:allowConversion:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4, char a5)
{
  type metadata accessor for SIMD2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD2VySdGMd, &_ss5SIMD2VySdGMR);
  if (swift_dynamicCastMetatype())
  {
    if (a4 == 1)
    {
      String.utf8CString.getter();
      ReferenceForEntityAnimatedValuesDouble2 = REBindPointCreateReferenceForEntityAnimatedValuesDouble2();
      goto LABEL_9;
    }

    if (!a4)
    {
      String.utf8CString.getter();
      ReferenceForEntityAnimatedValuesDouble2 = REBindPointCreateReferenceForEntityDouble2();
LABEL_9:
      v9 = ReferenceForEntityAnimatedValuesDouble2;

      if ((REBindPointIsValid() & 1) != 0 || (a5 & 1) == 0)
      {
        return v9;
      }

      REBindPointDestroy();
      String.utf8CString.getter();
      if (a4)
      {
        ReferenceForEntityAnimatedValuesFloat2 = REBindPointCreateReferenceForEntityAnimatedValuesFloat2();
      }

      else
      {
        ReferenceForEntityAnimatedValuesFloat2 = REBindPointCreateReferenceForEntityFloat2();
      }

LABEL_21:
      v9 = ReferenceForEntityAnimatedValuesFloat2;

      REBindPointIsValid();
      return v9;
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD2VySfGMd, &_ss5SIMD2VySfGMR);
    if (swift_dynamicCastMetatype())
    {
      if (a4 == 1)
      {
        String.utf8CString.getter();
        ReferenceForEntityFloat2 = REBindPointCreateReferenceForEntityAnimatedValuesFloat2();
      }

      else
      {
        if (a4)
        {
          goto LABEL_23;
        }

        String.utf8CString.getter();
        ReferenceForEntityFloat2 = REBindPointCreateReferenceForEntityFloat2();
      }

      v9 = ReferenceForEntityFloat2;

      if ((REBindPointIsValid() & 1) != 0 || (a5 & 1) == 0)
      {
        return v9;
      }

      REBindPointDestroy();
      String.utf8CString.getter();
      if (a4)
      {
        ReferenceForEntityAnimatedValuesFloat2 = REBindPointCreateReferenceForEntityAnimatedValuesDouble2();
      }

      else
      {
        ReferenceForEntityAnimatedValuesFloat2 = REBindPointCreateReferenceForEntityDouble2();
      }

      goto LABEL_21;
    }
  }

LABEL_23:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t SIMD2.createAndSetParameter(name:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = MEMORY[0x1EEE9AC00](a1);
  (*(v6 + 16))(&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v8, v7, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD2VySfGMd, &_ss5SIMD2VySfGMR);
  result = swift_dynamicCast();
  if (result)
  {
    REKeyValueComponentGetComponentType();
    REEntityGetOrAddComponentByClass();
    String.utf8CString.getter();
    REKeyValueComponentAddFloat2Value();
  }

  return result;
}

uint64_t SIMD3.set(to:type:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v10 = *(v5 + 16);
  v10(&v13 - v11, v3, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD3VySfGMd, &_ss5SIMD3VySfGMR);
  if (swift_dynamicCast())
  {
    return REBindPointSetFloat3();
  }

  (v10)(v7, v3, a3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD3VySdGMd, &_ss5SIMD3VySdGMR);
  result = swift_dynamicCast();
  if (result)
  {
    return REBindPointSetDouble3();
  }

  return result;
}

uint64_t static SIMD3.get(from:)@<X0>(char *a2@<X8>)
{
  v35 = a2;
  v41 = *MEMORY[0x1E69E9840];
  v2 = type metadata accessor for SIMD3();
  v3 = type metadata accessor for Optional();
  v4 = *(v3 - 8);
  v33 = v3;
  v34 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v32 - v8;
  v10 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v32 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v32 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v32 - v21;
  v40 = 0u;
  v38 = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD3VySfGMd, &_ss5SIMD3VySfGMR);
  if (swift_dynamicCast())
  {
    (*(v10 + 8))(v22, v2);
    if (REBindPointGetFloat3())
    {
      v38 = v40;
      v23 = swift_dynamicCast();
      v24 = *(v10 + 56);
      if (v23)
      {
        v24(v9, 0, 1, v2);
        v25 = *(v10 + 32);
        v25(v19, v9, v2);
        v26 = v35;
        v25(v35, v19, v2);
        return (v24)(v26, 0, 1, v2);
      }

      v24(v9, 1, 1, v2);
      (*(v34 + 8))(v9, v33);
    }
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD3VySdGMd, &_ss5SIMD3VySdGMR);
  if (swift_dynamicCast())
  {
    (*(v10 + 8))(v16, v2);
    if (REBindPointGetDouble3())
    {
      v36 = v38;
      v37 = v39;
      v28 = swift_dynamicCast();
      v29 = *(v10 + 56);
      if (v28)
      {
        v29(v6, 0, 1, v2);
        v30 = *(v10 + 32);
        v30(v13, v6, v2);
        v31 = v35;
        v30(v35, v13, v2);
        return (v29)(v31, 0, 1, v2);
      }

      v29(v6, 1, 1, v2);
      (*(v34 + 8))(v6, v33);
    }
  }

  return (*(v10 + 56))(v35, 1, 1, v2);
}

uint64_t static SIMD3.createBindPoint(_:entity:type:allowConversion:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4, char a5)
{
  type metadata accessor for SIMD3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD3VySdGMd, &_ss5SIMD3VySdGMR);
  if (swift_dynamicCastMetatype())
  {
    if (a4 == 1)
    {
      String.utf8CString.getter();
      ReferenceForEntityAnimatedValuesDouble3 = REBindPointCreateReferenceForEntityAnimatedValuesDouble3();
      goto LABEL_9;
    }

    if (!a4)
    {
      String.utf8CString.getter();
      ReferenceForEntityAnimatedValuesDouble3 = REBindPointCreateReferenceForEntityDouble3();
LABEL_9:
      v9 = ReferenceForEntityAnimatedValuesDouble3;

      if ((REBindPointIsValid() & 1) != 0 || (a5 & 1) == 0)
      {
        return v9;
      }

      REBindPointDestroy();
      String.utf8CString.getter();
      if (a4)
      {
        ReferenceForEntityAnimatedValuesFloat3 = REBindPointCreateReferenceForEntityAnimatedValuesFloat3();
      }

      else
      {
        ReferenceForEntityAnimatedValuesFloat3 = REBindPointCreateReferenceForEntityFloat3();
      }

LABEL_21:
      v9 = ReferenceForEntityAnimatedValuesFloat3;

      REBindPointIsValid();
      return v9;
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD3VySfGMd, &_ss5SIMD3VySfGMR);
    if (swift_dynamicCastMetatype())
    {
      if (a4 == 1)
      {
        String.utf8CString.getter();
        ReferenceForEntityFloat3 = REBindPointCreateReferenceForEntityAnimatedValuesFloat3();
      }

      else
      {
        if (a4)
        {
          goto LABEL_23;
        }

        String.utf8CString.getter();
        ReferenceForEntityFloat3 = REBindPointCreateReferenceForEntityFloat3();
      }

      v9 = ReferenceForEntityFloat3;

      if ((REBindPointIsValid() & 1) != 0 || (a5 & 1) == 0)
      {
        return v9;
      }

      REBindPointDestroy();
      String.utf8CString.getter();
      if (a4)
      {
        ReferenceForEntityAnimatedValuesFloat3 = REBindPointCreateReferenceForEntityAnimatedValuesDouble3();
      }

      else
      {
        ReferenceForEntityAnimatedValuesFloat3 = REBindPointCreateReferenceForEntityDouble3();
      }

      goto LABEL_21;
    }
  }

LABEL_23:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t SIMD3.createAndSetParameter(name:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = MEMORY[0x1EEE9AC00](a1);
  (*(v6 + 16))(v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v8, v7, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD3VySfGMd, &_ss5SIMD3VySfGMR);
  result = swift_dynamicCast();
  if (result)
  {
    v10[0] = v10[1];
    REKeyValueComponentGetComponentType();
    REEntityGetOrAddComponentByClass();
    String.utf8CString.getter();
    REKeyValueComponentAddFloat3Value();
  }

  return result;
}

uint64_t SIMD4.set(to:type:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v10 = *(v5 + 16);
  v10(&v13 - v11, v3, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD4VySfGMd, &_ss5SIMD4VySfGMR);
  if (swift_dynamicCast())
  {
    return REBindPointSetFloat4();
  }

  (v10)(v7, v3, a3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD4VySdGMd, &_ss5SIMD4VySdGMR);
  result = swift_dynamicCast();
  if (result)
  {
    return REBindPointSetDouble4();
  }

  return result;
}

uint64_t static SIMD4.get(from:)@<X0>(char *a2@<X8>)
{
  v35 = a2;
  v41 = *MEMORY[0x1E69E9840];
  v2 = type metadata accessor for SIMD4();
  v3 = type metadata accessor for Optional();
  v4 = *(v3 - 8);
  v33 = v3;
  v34 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v32 - v8;
  v10 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v32 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v32 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v32 - v21;
  v40 = 0u;
  v38 = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD4VySfGMd, &_ss5SIMD4VySfGMR);
  if (swift_dynamicCast())
  {
    (*(v10 + 8))(v22, v2);
    if (REBindPointGetFloat4())
    {
      v38 = v40;
      v23 = swift_dynamicCast();
      v24 = *(v10 + 56);
      if (v23)
      {
        v24(v9, 0, 1, v2);
        v25 = *(v10 + 32);
        v25(v19, v9, v2);
        v26 = v35;
        v25(v35, v19, v2);
        return (v24)(v26, 0, 1, v2);
      }

      v24(v9, 1, 1, v2);
      (*(v34 + 8))(v9, v33);
    }
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD4VySdGMd, &_ss5SIMD4VySdGMR);
  if (swift_dynamicCast())
  {
    (*(v10 + 8))(v16, v2);
    if (REBindPointGetDouble4())
    {
      v36 = v38;
      v37 = v39;
      v28 = swift_dynamicCast();
      v29 = *(v10 + 56);
      if (v28)
      {
        v29(v6, 0, 1, v2);
        v30 = *(v10 + 32);
        v30(v13, v6, v2);
        v31 = v35;
        v30(v35, v13, v2);
        return (v29)(v31, 0, 1, v2);
      }

      v29(v6, 1, 1, v2);
      (*(v34 + 8))(v6, v33);
    }
  }

  return (*(v10 + 56))(v35, 1, 1, v2);
}

uint64_t static SIMD4.createBindPoint(_:entity:type:allowConversion:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4, char a5)
{
  type metadata accessor for SIMD4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD4VySdGMd, &_ss5SIMD4VySdGMR);
  if (swift_dynamicCastMetatype())
  {
    if (a4 == 1)
    {
      String.utf8CString.getter();
      ReferenceForEntityAnimatedValuesDouble4 = REBindPointCreateReferenceForEntityAnimatedValuesDouble4();
      goto LABEL_9;
    }

    if (!a4)
    {
      String.utf8CString.getter();
      ReferenceForEntityAnimatedValuesDouble4 = REBindPointCreateReferenceForEntityDouble4();
LABEL_9:
      v9 = ReferenceForEntityAnimatedValuesDouble4;

      if ((REBindPointIsValid() & 1) != 0 || (a5 & 1) == 0)
      {
        return v9;
      }

      REBindPointDestroy();
      String.utf8CString.getter();
      if (a4)
      {
        ReferenceForEntityAnimatedValuesFloat4 = REBindPointCreateReferenceForEntityAnimatedValuesFloat4();
      }

      else
      {
        ReferenceForEntityAnimatedValuesFloat4 = REBindPointCreateReferenceForEntityFloat4();
      }

LABEL_21:
      v9 = ReferenceForEntityAnimatedValuesFloat4;

      REBindPointIsValid();
      return v9;
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD4VySfGMd, &_ss5SIMD4VySfGMR);
    if (swift_dynamicCastMetatype())
    {
      if (a4 == 1)
      {
        String.utf8CString.getter();
        ReferenceForEntityFloat4 = REBindPointCreateReferenceForEntityAnimatedValuesFloat4();
      }

      else
      {
        if (a4)
        {
          goto LABEL_23;
        }

        String.utf8CString.getter();
        ReferenceForEntityFloat4 = REBindPointCreateReferenceForEntityFloat4();
      }

      v9 = ReferenceForEntityFloat4;

      if ((REBindPointIsValid() & 1) != 0 || (a5 & 1) == 0)
      {
        return v9;
      }

      REBindPointDestroy();
      String.utf8CString.getter();
      if (a4)
      {
        ReferenceForEntityAnimatedValuesFloat4 = REBindPointCreateReferenceForEntityAnimatedValuesDouble4();
      }

      else
      {
        ReferenceForEntityAnimatedValuesFloat4 = REBindPointCreateReferenceForEntityDouble4();
      }

      goto LABEL_21;
    }
  }

LABEL_23:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t SIMD4.createAndSetParameter(name:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = MEMORY[0x1EEE9AC00](a1);
  (*(v6 + 16))(v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v8, v7, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD4VySfGMd, &_ss5SIMD4VySfGMR);
  result = swift_dynamicCast();
  if (result)
  {
    v10[0] = v10[1];
    REKeyValueComponentGetComponentType();
    REEntityGetOrAddComponentByClass();
    String.utf8CString.getter();
    REKeyValueComponentAddFloat4Value();
  }

  return result;
}

uint64_t protocol witness for static BindableDataInternal.get(from:) in conformance simd_quatf@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for identity != -1)
  {
    swift_once();
  }

  v5 = static simd_quatf.identity;
  result = REBindPointGetQuatF();
  v3 = *(&v5 + 1);
  v4 = v5;
  if (!result)
  {
    v4 = 0;
    v3 = 0;
  }

  *a1 = v4;
  *(a1 + 8) = v3;
  *(a1 + 16) = result ^ 1;
  return result;
}

uint64_t protocol witness for BindableDataInternal.createAndSetParameter(name:_:) in conformance simd_quatf(uint64_t a1, uint64_t a2, uint64_t a3)
{
  REKeyValueComponentGetComponentType();
  REEntityGetOrAddComponentByClass();
  String.utf8CString.getter();
  REKeyValueComponentAddQuatFValue();
}

uint64_t protocol witness for static BindableDataInternal.get(from:) in conformance Transform@<X0>(uint64_t a2@<X8>)
{
  result = REBindPointGetSRT();
  if (result && one-time initialization token for identity != -1)
  {
    v4 = result;
    swift_once();
    result = v4;
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = result ^ 1;
  return result;
}

uint64_t protocol witness for BindableDataInternal.createAndSetParameter(name:_:) in conformance Transform(uint64_t a1, uint64_t a2, uint64_t a3)
{
  REKeyValueComponentGetComponentType();
  REEntityGetOrAddComponentByClass();
  String.utf8CString.getter();
  REKeyValueComponentAddRESRTValue();
}

uint64_t protocol witness for BindableDataInternal.set(to:type:) in conformance String(uint64_t a1, uint64_t a2)
{
  String.utf8CString.getter();
  v2 = REBindPointSetString();

  return v2;
}

uint64_t protocol witness for static BindableDataInternal.get(from:) in conformance String@<X0>(uint64_t *a2@<X8>)
{
  if (REBindPointGetString())
  {
    result = String.init(cString:)();
  }

  else
  {
    result = 0;
    v4 = 0;
  }

  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t protocol witness for BindableDataInternal.createAndSetParameter(name:_:) in conformance String(uint64_t a1, uint64_t a2, uint64_t a3)
{
  REKeyValueComponentGetComponentType();
  REEntityGetOrAddComponentByClass();
  String.utf8CString.getter();
  String.utf8CString.getter();
  REKeyValueComponentAddStringValue();
}

uint64_t CommonBindPoint.__deallocating_deinit()
{
  REBindPointDestroy();

  return swift_deallocClassInstance();
}

uint64_t specialized static Double.createBindPoint(_:entity:type:allowConversion:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4, char a5)
{
  if (a4 == 1)
  {
    String.utf8CString.getter();
    ReferenceForEntityAnimatedValuesDouble = REBindPointCreateReferenceForEntityAnimatedValuesDouble();
  }

  else
  {
    if (a4)
    {
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return result;
    }

    String.utf8CString.getter();
    ReferenceForEntityAnimatedValuesDouble = REBindPointCreateReferenceForEntityDouble();
  }

  v8 = ReferenceForEntityAnimatedValuesDouble;

  if (REBindPointIsValid() & 1) == 0 && (a5)
  {
    REBindPointDestroy();
    String.utf8CString.getter();
    if (a4)
    {
      ReferenceForEntityAnimatedValuesFloat = REBindPointCreateReferenceForEntityAnimatedValuesFloat();
    }

    else
    {
      ReferenceForEntityAnimatedValuesFloat = REBindPointCreateReferenceForEntityFloat();
    }

    v8 = ReferenceForEntityAnimatedValuesFloat;

    REBindPointIsValid();
  }

  return v8;
}

uint64_t specialized static Float.createBindPoint(_:entity:type:allowConversion:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4, char a5)
{
  if (a4 == 1)
  {
    String.utf8CString.getter();
    ReferenceForEntityAnimatedValuesFloat = REBindPointCreateReferenceForEntityAnimatedValuesFloat();
  }

  else
  {
    if (a4)
    {
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return result;
    }

    String.utf8CString.getter();
    ReferenceForEntityAnimatedValuesFloat = REBindPointCreateReferenceForEntityFloat();
  }

  v8 = ReferenceForEntityAnimatedValuesFloat;

  if (REBindPointIsValid() & 1) == 0 && (a5)
  {
    REBindPointDestroy();
    String.utf8CString.getter();
    if (a4)
    {
      ReferenceForEntityAnimatedValuesDouble = REBindPointCreateReferenceForEntityAnimatedValuesDouble();
    }

    else
    {
      ReferenceForEntityAnimatedValuesDouble = REBindPointCreateReferenceForEntityDouble();
    }

    v8 = ReferenceForEntityAnimatedValuesDouble;

    REBindPointIsValid();
  }

  return v8;
}

uint64_t specialized static Int.createBindPoint(_:entity:type:allowConversion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a4 == 1)
  {
    String.utf8CString.getter();
    ReferenceForEntityAnimatedValuesInt64 = REBindPointCreateReferenceForEntityAnimatedValuesInt64();
  }

  else
  {
    if (a4)
    {
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return result;
    }

    String.utf8CString.getter();
    ReferenceForEntityAnimatedValuesInt64 = REBindPointCreateReferenceForEntityInt64();
  }

  v11 = ReferenceForEntityAnimatedValuesInt64;

  if (REBindPointIsValid() & 1) == 0 && (a5)
  {
    REBindPointDestroy();
    v11 = static UInt8.createBindPoint(_:entity:type:allowConversion:)(a1, a2, a3, a4, 0);
    if ((REBindPointIsValid() & 1) == 0)
    {
      REBindPointDestroy();
      v11 = static UInt16.createBindPoint(_:entity:type:allowConversion:)(a1, a2, a3, a4, 0);
      if ((REBindPointIsValid() & 1) == 0)
      {
        REBindPointDestroy();
        String.utf8CString.getter();
        if (a4)
        {
          ReferenceForEntityAnimatedValuesUInt32 = REBindPointCreateReferenceForEntityAnimatedValuesUInt32();
        }

        else
        {
          ReferenceForEntityAnimatedValuesUInt32 = REBindPointCreateReferenceForEntityUInt32();
        }

        v11 = ReferenceForEntityAnimatedValuesUInt32;

        REBindPointIsValid();
      }
    }
  }

  return v11;
}

uint64_t specialized static Transform.createBindPoint(_:entity:type:allowConversion:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t (*a5)(uint64_t, uint64_t), uint64_t (*a6)(uint64_t, uint64_t), uint64_t a7)
{
  if (a4 == 1)
  {
    v8 = *(a3 + 16);
    v9 = String.utf8CString.getter();
    v10 = a6(v8, v9 + 32);
LABEL_5:
    v14 = v10;

    return v14;
  }

  if (!a4)
  {
    v12 = *(a3 + 16);
    v13 = String.utf8CString.getter();
    v10 = a5(v12, v13 + 32);
    goto LABEL_5;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t specialized static Bool.createBindPoint(_:entity:type:allowConversion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t (*a6)(uint64_t, uint64_t), uint64_t (*a7)(uint64_t, uint64_t), uint64_t a8)
{
  if (a4 == 1)
  {
    v14 = *(a3 + 16);
    v15 = String.utf8CString.getter();
    v16 = a7(v14, v15 + 32);
  }

  else
  {
    if (a4)
    {
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return result;
    }

    v18 = *(a3 + 16);
    v19 = String.utf8CString.getter();
    v16 = a6(v18, v19 + 32);
  }

  v20 = v16;

  if ((REBindPointIsValid() & 1) != 0 || (a5 & 1) == 0)
  {
    return v20;
  }

  REBindPointDestroy();
  String.utf8CString.getter();
  v21 = a4 ? REBindPointCreateReferenceForEntityAnimatedValuesInt32() : REBindPointCreateReferenceForEntityInt32();
  v20 = v21;

  if (REBindPointIsValid())
  {
    return v20;
  }

  REBindPointDestroy();
  v20 = static UInt8.createBindPoint(_:entity:type:allowConversion:)(a1, a2, a3, a4, 0);
  if (REBindPointIsValid())
  {
    return v20;
  }

  REBindPointDestroy();

  return static UInt16.createBindPoint(_:entity:type:allowConversion:)(a1, a2, a3, a4, 0);
}

uint64_t specialized static Int32.createBindPoint(_:entity:type:allowConversion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t (*a6)(uint64_t, uint64_t), uint64_t (*a7)(uint64_t, uint64_t), uint64_t a8)
{
  if (a4 == 1)
  {
    v14 = *(a3 + 16);
    v15 = String.utf8CString.getter();
    v16 = a7(v14, v15 + 32);
  }

  else
  {
    if (a4)
    {
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return result;
    }

    v18 = *(a3 + 16);
    v19 = String.utf8CString.getter();
    v16 = a6(v18, v19 + 32);
  }

  v20 = v16;

  if (REBindPointIsValid())
  {
    return v20;
  }

  if ((a5 & 1) == 0)
  {
    return v20;
  }

  REBindPointDestroy();
  v20 = static UInt8.createBindPoint(_:entity:type:allowConversion:)(a1, a2, a3, a4, 0);
  if (REBindPointIsValid())
  {
    return v20;
  }

  REBindPointDestroy();

  return static UInt16.createBindPoint(_:entity:type:allowConversion:)(a1, a2, a3, a4, 0);
}

uint64_t static Resource.__fromCore(_:)()
{
  if (REAssetGetSwiftObject())
  {
    return swift_dynamicCast();
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void _s17RealityFoundation16LoadableResourcePAAE012getAssetFromA12FileInBundle4name2in0eF0qd__SS_So8NSBundleCSgqd__SS_0B03URLVtKXEtKlFZAA05Audioh5GroupD0C_AOTt3g504_s17a12Foundation16cd12PAAE04loadd4g3A12hi22Bundle5named2inxSS_So8m8CSgtKFZxv26_0B03URLVtKcfu_AA05Audiog5P9D0C_Tt2G5Tf1nnc_n(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v43 = a2;
  v48 = a1;
  v53 = type metadata accessor for URL();
  v6 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    v9 = a3;
  }

  else
  {
    v9 = [objc_opt_self() mainBundle];
  }

  v10 = a3;
  v11 = MEMORY[0x1C68F3280](0x7974696C616572, 0xE700000000000000);
  v12 = [v9 URLsForResourcesWithExtension:v11 subdirectory:0];

  if (!v12)
  {
    v51 = 0;
    v52 = 0xE000000000000000;
    _StringGuts.grow(_:)(35);

    v51 = 0xD000000000000021;
    v52 = 0x80000001C18E5B10;
    v25 = [v9 description];
LABEL_22:
    v27 = v25;
    v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = v29;

    MEMORY[0x1C68F3410](v28, v30);

    v31 = v51;
    v32 = v52;
    goto LABEL_23;
  }

  v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v47 = *(v13 + 16);
  if (!v47)
  {

    v51 = 0;
    v52 = 0xE000000000000000;
    _StringGuts.grow(_:)(35);

    v51 = 0xD000000000000021;
    v52 = 0x80000001C18E5B10;
    v25 = [v9 description];
    goto LABEL_22;
  }

  v38 = v9;
  v14 = 0;
  v41 = "Loadable resource named ";
  v42 = 0x80000001C18E5B40;
  v44 = v6 + 16;
  v45 = (v6 + 8);
  v15 = MEMORY[0x1E69E7CC0];
  v39 = 0xD000000000000015;
  v40 = 0xD000000000000018;
  v16 = v43;
  v46 = v13;
  do
  {
    if (v14 >= *(v13 + 16))
    {
      __break(1u);
      return;
    }

    (*(v6 + 16))(v8, v13 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v14, v53);
    v17 = specialized static __ServiceLocator.shared.getter();
    swift_beginAccess();
    __swift_project_boxed_opaque_existential_1((v17 + 120), *(v17 + 144));

    v18 = specialized __REAssetService.assetRef(named:in:)(v48, v16);
    v19 = v4;
    if (v4)
    {
      v4 = 0;
    }

    else
    {
      if (_s17RealityFoundation16LoadableResourcePAAE17fromCoreAssetType8assetRefxSgs13OpaquePointerV_tFZAA014AudioFileGroupD0C_Tt1g5(*(v18 + 16)))
      {

        (*v45)(v8, v53);

        return;
      }

      v49 = 0;
      v50 = 0xE000000000000000;
      _StringGuts.grow(_:)(47);

      v49 = v40;
      v50 = v42;
      MEMORY[0x1C68F3410](v48, v16);
      MEMORY[0x1C68F3410](v39, v41 | 0x8000000000000000);
      v20 = v49;
      v21 = v50;
      lazy protocol witness table accessor for type __REAsset.LoadError and conformance __REAsset.LoadError();
      v19 = swift_allocError();
      *v22 = v20;
      *(v22 + 8) = v21;
      v16 = v43;
      *(v22 + 16) = 0;
      *(v22 + 24) = 0;
      *(v22 + 32) = 2;
      swift_willThrow();

      v4 = 0;
    }

    (*v45)(v8, v53);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v15[2] + 1, 1, v15);
    }

    v24 = v15[2];
    v23 = v15[3];
    if (v24 >= v23 >> 1)
    {
      v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v24 + 1, 1, v15);
    }

    ++v14;
    v15[2] = v24 + 1;
    v15[v24 + 4] = v19;
    v13 = v46;
  }

  while (v47 != v14);

  if (v15[2])
  {
    v26 = v15[4];

    v9 = v38;
    goto LABEL_24;
  }

  v49 = 0;
  v50 = 0xE000000000000000;
  _StringGuts.grow(_:)(65);
  MEMORY[0x1C68F3410](0xD000000000000019, 0x80000001C18E5B80);
  MEMORY[0x1C68F3410](v48, v16);
  MEMORY[0x1C68F3410](0xD000000000000024, 0x80000001C18E5BA0);
  v9 = v38;
  v34 = [v38 description];
  v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v37 = v36;

  MEMORY[0x1C68F3410](v35, v37);

  v31 = v49;
  v32 = v50;
LABEL_23:
  lazy protocol witness table accessor for type __REAsset.LoadError and conformance __REAsset.LoadError();
  swift_allocError();
  *v33 = v31;
  *(v33 + 8) = v32;
  *(v33 + 16) = 0;
  *(v33 + 24) = 0;
  *(v33 + 32) = 2;
LABEL_24:
  swift_willThrow();
}

void _s17RealityFoundation16LoadableResourcePAAE012getAssetFromA12FileInBundle4name2in0eF0qd__SS_So8NSBundleCSgqd__SS_0B03URLVtKXEtKlFZ0A3Kit05AudiohD0C_APTt3g504_s17a12Foundation16cd12PAAE04loadd4g3A12hi22Bundle5named2inxSS_So8m8CSgtKFZxV38_0B03URLVtKcfu_0A3Kit05AudiogD0C_Tt2G5Tf1nnc_n(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v43 = a2;
  v48 = a1;
  v53 = type metadata accessor for URL();
  v6 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    v9 = a3;
  }

  else
  {
    v9 = [objc_opt_self() mainBundle];
  }

  v10 = a3;
  v11 = MEMORY[0x1C68F3280](0x7974696C616572, 0xE700000000000000);
  v12 = [v9 URLsForResourcesWithExtension:v11 subdirectory:0];

  if (!v12)
  {
    v51 = 0;
    v52 = 0xE000000000000000;
    _StringGuts.grow(_:)(35);

    v51 = 0xD000000000000021;
    v52 = 0x80000001C18E5B10;
    v25 = [v9 description];
LABEL_22:
    v27 = v25;
    v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = v29;

    MEMORY[0x1C68F3410](v28, v30);

    v31 = v51;
    v32 = v52;
    goto LABEL_23;
  }

  v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v47 = *(v13 + 16);
  if (!v47)
  {

    v51 = 0;
    v52 = 0xE000000000000000;
    _StringGuts.grow(_:)(35);

    v51 = 0xD000000000000021;
    v52 = 0x80000001C18E5B10;
    v25 = [v9 description];
    goto LABEL_22;
  }

  v38 = v9;
  v14 = 0;
  v41 = "Loadable resource named ";
  v42 = 0x80000001C18E5B40;
  v44 = v6 + 16;
  v45 = (v6 + 8);
  v15 = MEMORY[0x1E69E7CC0];
  v39 = 0xD000000000000015;
  v40 = 0xD000000000000018;
  v16 = v43;
  v46 = v13;
  do
  {
    if (v14 >= *(v13 + 16))
    {
      __break(1u);
      return;
    }

    (*(v6 + 16))(v8, v13 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v14, v53);
    v17 = specialized static __ServiceLocator.shared.getter();
    swift_beginAccess();
    __swift_project_boxed_opaque_existential_1((v17 + 120), *(v17 + 144));

    v18 = specialized __REAssetService.assetRef(named:in:)(v48, v16);
    v19 = v4;
    if (v4)
    {
      v4 = 0;
    }

    else
    {
      if (_s17RealityFoundation16LoadableResourcePAAE17fromCoreAssetType8assetRefxSgs13OpaquePointerV_tFZ0A3Kit09AudioFileD0C_Tt1g5(*(v18 + 16)))
      {

        (*v45)(v8, v53);

        return;
      }

      v49 = 0;
      v50 = 0xE000000000000000;
      _StringGuts.grow(_:)(47);

      v49 = v40;
      v50 = v42;
      MEMORY[0x1C68F3410](v48, v16);
      MEMORY[0x1C68F3410](v39, v41 | 0x8000000000000000);
      v20 = v49;
      v21 = v50;
      lazy protocol witness table accessor for type __REAsset.LoadError and conformance __REAsset.LoadError();
      v19 = swift_allocError();
      *v22 = v20;
      *(v22 + 8) = v21;
      v16 = v43;
      *(v22 + 16) = 0;
      *(v22 + 24) = 0;
      *(v22 + 32) = 2;
      swift_willThrow();

      v4 = 0;
    }

    (*v45)(v8, v53);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v15[2] + 1, 1, v15);
    }

    v24 = v15[2];
    v23 = v15[3];
    if (v24 >= v23 >> 1)
    {
      v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v24 + 1, 1, v15);
    }

    ++v14;
    v15[2] = v24 + 1;
    v15[v24 + 4] = v19;
    v13 = v46;
  }

  while (v47 != v14);

  if (v15[2])
  {
    v26 = v15[4];

    v9 = v38;
    goto LABEL_24;
  }

  v49 = 0;
  v50 = 0xE000000000000000;
  _StringGuts.grow(_:)(65);
  MEMORY[0x1C68F3410](0xD000000000000019, 0x80000001C18E5B80);
  MEMORY[0x1C68F3410](v48, v16);
  MEMORY[0x1C68F3410](0xD000000000000024, 0x80000001C18E5BA0);
  v9 = v38;
  v34 = [v38 description];
  v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v37 = v36;

  MEMORY[0x1C68F3410](v35, v37);

  v31 = v49;
  v32 = v50;
LABEL_23:
  lazy protocol witness table accessor for type __REAsset.LoadError and conformance __REAsset.LoadError();
  swift_allocError();
  *v33 = v31;
  *(v33 + 8) = v32;
  *(v33 + 16) = 0;
  *(v33 + 24) = 0;
  *(v33 + 32) = 2;
LABEL_24:
  swift_willThrow();
}

void static LoadableResource.getAssetFromRealityFileInBundle<A>(name:in:getAsset:)(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void (*a4)(uint64_t, uint64_t, char *)@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v38 = a4;
  v39 = a1;
  v40 = a2;
  v37 = a5;
  v8 = type metadata accessor for URL();
  v43 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    v11 = a3;
  }

  else
  {
    v11 = [objc_opt_self() mainBundle];
  }

  v12 = a3;
  v13 = MEMORY[0x1C68F3280](0x7974696C616572, 0xE700000000000000);
  v14 = [v11 URLsForResourcesWithExtension:v13 subdirectory:0];

  if (v14)
  {
    v15 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v36 = *(v15 + 16);
    if (v36)
    {
      v32 = v11;
      v16 = 0;
      v35 = v43 + 16;
      v17 = (v43 + 8);
      v18 = MEMORY[0x1E69E7CC0];
      v33 = v15;
      v34 = v8;
      do
      {
        if (v16 >= *(v15 + 16))
        {
          __break(1u);
          return;
        }

        (*(v43 + 16))(v10, v15 + ((*(v43 + 80) + 32) & ~*(v43 + 80)) + *(v43 + 72) * v16, v8);
        v19 = v6;
        v38(v39, v40, v10);
        if (!v6)
        {
          (*v17)(v10, v8);

          return;
        }

        (*v17)(v10, v8);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v18[2] + 1, 1, v18);
        }

        v21 = v18[2];
        v20 = v18[3];
        if (v21 >= v20 >> 1)
        {
          v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1, v18);
        }

        v6 = 0;
        ++v16;
        v18[2] = v21 + 1;
        v18[v21 + 4] = v19;
        v15 = v33;
        v8 = v34;
      }

      while (v36 != v16);

      if (v18[2])
      {
        v23 = v18[4];

        v11 = v32;
        goto LABEL_22;
      }

      v41 = 0;
      v42 = 0xE000000000000000;
      _StringGuts.grow(_:)(65);
      MEMORY[0x1C68F3410](0xD000000000000019, 0x80000001C18E5B80);
      MEMORY[0x1C68F3410](v39, v40);
      MEMORY[0x1C68F3410](0xD000000000000024, 0x80000001C18E5BA0);
      v11 = v32;
      v22 = [v32 description];
    }

    else
    {

      v41 = 0;
      v42 = 0xE000000000000000;
      _StringGuts.grow(_:)(35);

      v41 = 0xD000000000000021;
      v42 = 0x80000001C18E5B10;
      v22 = [v11 description];
    }
  }

  else
  {
    v41 = 0;
    v42 = 0xE000000000000000;
    _StringGuts.grow(_:)(35);

    v41 = 0xD000000000000021;
    v42 = 0x80000001C18E5B10;
    v22 = [v11 description];
  }

  v24 = v22;
  v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v27 = v26;

  MEMORY[0x1C68F3410](v25, v27);

  v28 = v41;
  v29 = v42;
  lazy protocol witness table accessor for type __REAsset.LoadError and conformance __REAsset.LoadError();
  swift_allocError();
  *v30 = v28;
  *(v30 + 8) = v29;
  *(v30 + 16) = 0;
  *(v30 + 24) = 0;
  *(v30 + 32) = 2;
LABEL_22:
  swift_willThrow();
}

uint64_t closure #1 in static LoadableResource.getAssetRefFromRealityFileInBundle(named:in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v8 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  __swift_project_boxed_opaque_existential_1((v8 + 120), *(v8 + 144));

  v9 = specialized __REAssetService.assetRef(named:in:)(a1, a2);

  if (!v4)
  {
    *a3 = v9;
  }

  return result;
}

void one-time initialization function for resourceClasses()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo11REAssetTypeV_17RealityFoundation16LoadableResource_pXptGMd, &_ss23_ContiguousArrayStorageCySo11REAssetTypeV_17RealityFoundation16LoadableResource_pXptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C1897FD0;
  *(inited + 32) = 13;
  *(inited + 40) = type metadata accessor for AudioFileResource();
  *(inited + 48) = &protocol witness table for AudioResource;
  *(inited + 56) = 14;
  *(inited + 64) = type metadata accessor for AudioFileGroupResource();
  *(inited + 72) = &protocol witness table for AudioResource;
  *(inited + 80) = 15;
  *(inited + 88) = type metadata accessor for AudioUnitResource();
  *(inited + 96) = &protocol witness table for AudioResource;
  v1 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo11REAssetTypeV_17RealityFoundation16LoadableResource_pXpTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  resourceClasses._rawValue = v1;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a8;
  v38 = a1;
  v39 = a2;
  v10 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v40 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v13 = &v27 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v36 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_getAssociatedTypeWitness();
  v30 = *(v16 - 8);
  v31 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v27 - v17;
  v19 = dispatch thunk of Collection.count.getter();
  if (!v19)
  {
    return static Array._allocateUninitialized(_:)();
  }

  v41 = v19;
  v45 = ContiguousArray.init()();
  v32 = type metadata accessor for ContiguousArray();
  ContiguousArray.reserveCapacity(_:)(v41);
  result = dispatch thunk of Collection.startIndex.getter();
  if ((v41 & 0x8000000000000000) == 0)
  {
    v27 = v10;
    v28 = a5;
    v21 = 0;
    v33 = (v42 + 16);
    v34 = (v42 + 8);
    v35 = v8;
    while (!__OFADD__(v21, 1))
    {
      v42 = v21 + 1;
      v22 = dispatch thunk of Collection.subscript.read();
      v23 = v13;
      v24 = v13;
      v25 = AssociatedTypeWitness;
      (*v33)(v23);
      v22(v44, 0);
      v26 = v43;
      v38(v24, v40);
      if (v26)
      {
        (*v34)(v24, v25);
        (*(v30 + 8))(v18, v31);

        return (*(v27 + 32))(v29, v40, v28);
      }

      v43 = 0;
      (*v34)(v24, v25);
      ContiguousArray.append(_:)();
      result = dispatch thunk of Collection.formIndex(after:)();
      ++v21;
      v13 = v24;
      if (v42 == v41)
      {
        (*(v30 + 8))(v18, v31);
        return v45;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

CGColorRef SIMD4<>.cgColor.getter(uint64_t a1, uint64_t a2)
{
  v16 = SIMD4.scalars.getter(a1);
  v4 = *(a1 + 24);
  v13 = *(a1 + 16);
  v14 = a2;
  v15 = v4;
  v5 = type metadata accessor for Array();
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E69E6340], v5);
  v8 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for implicit closure #1 in SIMD4<>.cgColor.getter, v12, v5, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v7);

  if (one-time initialization token for linearSRGBColorSpace != -1)
  {
    swift_once();
  }

  v9 = CGColorCreate(static CGColorSpaceRef.linearSRGBColorSpace, (v8 + 32));
  if (v9)
  {
    v10 = v9;

    return v10;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

__n128 CGColorRef.simd4.getter()
{
  v1 = v0;
  _ss5SIMD4V17RealityFoundationSBRzrlEyAByxGSo10CGColorRefacfCSf_Tt1g5Tf4g_n(v1);
  v4 = v2;

  return v4;
}

uint64_t SIMD4.init(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  MEMORY[0x1EEE9AC00](a1);
  MEMORY[0x1EEE9AC00](v5);
  MEMORY[0x1EEE9AC00](v6);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  dispatch thunk of SIMDStorage.subscript.getter();
  dispatch thunk of SIMDStorage.subscript.getter();
  dispatch thunk of SIMDStorage.subscript.getter();
  dispatch thunk of SIMDStorage.init()();
  dispatch thunk of SIMDStorage.subscript.setter();
  dispatch thunk of SIMDStorage.subscript.setter();
  dispatch thunk of SIMDStorage.subscript.setter();
  v7 = type metadata accessor for SIMD3();
  (*(*(v7 - 8) + 8))(a1, v7);
  return dispatch thunk of SIMDStorage.subscript.setter();
}

uint64_t SIMD3<>.init(_:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(*(a2 - 8) + 64);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v22 = &v22 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v22 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v22 - v16;
  v18 = type metadata accessor for SIMD4();
  v24 = *(v18 - 8);
  v25 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v22 - v19;
  v23 = a1;
  SIMD4<>.init(_:)(v23, a2, a3, a4);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  dispatch thunk of SIMDStorage.subscript.getter();
  dispatch thunk of SIMDStorage.subscript.getter();
  dispatch thunk of SIMDStorage.subscript.getter();
  dispatch thunk of SIMDStorage.init()();
  memcpy(v9, v17, v8);
  dispatch thunk of SIMDStorage.subscript.setter();
  memcpy(v9, v14, v8);
  dispatch thunk of SIMDStorage.subscript.setter();
  dispatch thunk of SIMDStorage.subscript.setter();

  return (*(v24 + 8))(v20, v25);
}

void SIMD4<>.init(_:)(CGColorRef color, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (one-time initialization token for linearSRGBColorSpace != -1)
  {
    swift_once();
  }

  CopyByMatchingToColorSpace = CGColorCreateCopyByMatchingToColorSpace(static CGColorSpaceRef.linearSRGBColorSpace, kCGRenderingIntentDefault, color, 0);
  if (CopyByMatchingToColorSpace)
  {
    v9 = CopyByMatchingToColorSpace;
    v10 = CGColorRef.components.getter();
    if (v10)
    {
      v21 = v10;
      MEMORY[0x1EEE9AC00](v10);
      v18[2] = a2;
      v18[3] = a3;
      v19 = a4;
      v20 = a2;
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay12CoreGraphics7CGFloatVGMd, &_sSay12CoreGraphics7CGFloatVGMR);
      v12 = lazy protocol witness table accessor for type [CGFloat] and conformance [A]();
      v14 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for implicit closure #2 in SIMD4<>.init(_:), v18, v11, a2, MEMORY[0x1E69E73E0], v12, MEMORY[0x1E69E7410], v13);

      if (MEMORY[0x1C68F3740](v14, a2) == 4)
      {
        v15 = type metadata accessor for SIMD4();
        v21 = v14;
        v16 = type metadata accessor for Array();
        swift_getWitnessTable(MEMORY[0x1E69E74C8], v15);
        swift_getWitnessTable(MEMORY[0x1E69E6328], v16);
        SIMD.init<A>(_:)();

        return;
      }
    }

    LODWORD(v20) = 0;
    v17 = 27;
  }

  else
  {
    LODWORD(v20) = 0;
    v17 = 24;
  }

  v19 = v17;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

CGColorRef SIMD3<>.cgColor.getter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v23 = a2;
  v5 = *(a1 + 16);
  MEMORY[0x1EEE9AC00](a1);
  v22 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21[1] = *(*(*(*(v7 + 16) + 16) + 8) + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v9 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21[0] = *(a1 + 24);
  v13 = type metadata accessor for SIMD4();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = v21 - v16;
  (*(v9 + 16))(v12, v3, a1, v15);
  swift_getAssociatedConformanceWitness();
  dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
  v18 = v22;
  dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
  SIMD4.init(_:_:)(v12, v18, v5, v21[0]);
  v19 = SIMD4<>.cgColor.getter(v13, v23);
  (*(v14 + 8))(v17, v13);
  return v19;
}

uint64_t SIMD4.scalars.getter(uint64_t a1)
{
  v1 = *(a1 + 16);
  getContiguousArrayStorageType<A>(for:)(v1, v1);
  swift_allocObject();
  v2 = static Array._adoptStorage(_:count:)();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  dispatch thunk of SIMDStorage.subscript.getter();
  dispatch thunk of SIMDStorage.subscript.getter();
  dispatch thunk of SIMDStorage.subscript.getter();
  dispatch thunk of SIMDStorage.subscript.getter();

  return _finalizeUninitializedArray<A>(_:)(v2, v1);
}

uint64_t implicit closure #1 in SIMD4<>.cgColor.getter(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  memcpy(&v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0), v2, v1);
  lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
  return BinaryFloatingPoint.init<A>(_:)();
}

__n128 CGColorRef.simd3.getter()
{
  v1 = v0;
  _ss5SIMD4V17RealityFoundationSBRzrlEyAByxGSo10CGColorRefacfCSf_Tt1g5Tf4g_n(v1);
  v4 = v2;

  return v4;
}

CGColorRef one-time initialization function for linearSRGBWhite()
{
  if (one-time initialization token for linearSRGBColorSpace != -1)
  {
    swift_once();
  }

  result = CGColorCreate(static CGColorSpaceRef.linearSRGBColorSpace, dbl_1F409B290);
  if (result)
  {
    static CGColorRef.linearSRGBWhite = result;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

CGColorSpaceRef one-time initialization function for linearSRGBColorSpace()
{
  result = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1B0]);
  if (result)
  {
    static CGColorSpaceRef.linearSRGBColorSpace = result;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t getContiguousArrayStorageType<A>(for:)(uint64_t a1, uint64_t a2)
{
  if (swift_isClassType() && a2)
  {

    return __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  }

  else
  {

    return type metadata accessor for _ContiguousArrayStorage();
  }
}

void _ss5SIMD4V17RealityFoundationSBRzrlEyAByxGSo10CGColorRefacfCSf_Tt1g5Tf4g_n(CGColorRef color)
{
  if (one-time initialization token for linearSRGBColorSpace != -1)
  {
    swift_once();
  }

  CopyByMatchingToColorSpace = CGColorCreateCopyByMatchingToColorSpace(static CGColorSpaceRef.linearSRGBColorSpace, kCGRenderingIntentDefault, color, 0);
  if (CopyByMatchingToColorSpace)
  {
    v3 = CopyByMatchingToColorSpace;
    v4 = CGColorRef.components.getter();
    if (v4)
    {
      v5 = *(v4 + 16);
      if (v5)
      {
        v14 = MEMORY[0x1E69E7CC0];
        v6 = v4;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5, 0);
        v7 = v6;
        v8 = v14;
        v9 = *(v14 + 16);
        v10 = 32;
        do
        {
          v11 = *(v7 + v10);
          v12 = *(v14 + 24);
          if (v9 >= v12 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v9 + 1, 1);
            v7 = v6;
          }

          v13 = v11;
          *(v14 + 16) = v9 + 1;
          *(v14 + 4 * v9 + 32) = v13;
          v10 += 8;
          ++v9;
          --v5;
        }

        while (v5);
      }

      else
      {

        v8 = MEMORY[0x1E69E7CC0];
      }

      if (*(v8 + 16) == 4)
      {
        _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD4VySfG_SaySfGTt1g5Tf4g_n(v8);

        return;
      }
    }
  }

  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

unint64_t lazy protocol witness table accessor for type [CGFloat] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [CGFloat] and conformance [A];
  if (!lazy protocol witness table cache variable for type [CGFloat] and conformance [A])
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay12CoreGraphics7CGFloatVGMd, &_sSay12CoreGraphics7CGFloatVGMR);
    result = swift_getWitnessTable(MEMORY[0x1E69E6340], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type [CGFloat] and conformance [A]);
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for ColorGamut4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 17) = v3;
  return result;
}

unint64_t lazy protocol witness table accessor for type CGFloat and conformance CGFloat()
{
  result = lazy protocol witness table cache variable for type CGFloat and conformance CGFloat;
  if (!lazy protocol witness table cache variable for type CGFloat and conformance CGFloat)
  {
    result = swift_getWitnessTable(MEMORY[0x1E69E7DF0], MEMORY[0x1E69E7DE0], v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type CGFloat and conformance CGFloat);
  }

  return result;
}

void *__RKMaterialParameterBlock.buildParametersDictionaryFromCurrentState()()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = v0[3];
  v58 = v0[2];
  v4 = REMaterialParameterBlockValueCopyParameterNameArray();
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v6 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_10RealityKit26__RKMaterialParameterBlockV0F0OTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v7 = v5;
  v8 = *(v5 + 16);
  if (!v8)
  {

    return v6;
  }

  v9 = 0;
  v57 = 0;
  v10 = (v5 + 40);
  v55 = v8 - 1;
  v54 = v3;
  v53 = v7;
  do
  {
    v11 = *(v10 - 1);
    v12 = *v10;
    MEMORY[0x1EEE9AC00](v7);
    *(&v52 - 4) = v1;
    *(&v52 - 24) = v2;
    *(&v52 - 2) = v58;
    *(&v52 - 1) = v3;
    v56 = v13;
    v59 = v11;
    if ((v12 & 0x1000000000000000) != 0)
    {
      goto LABEL_29;
    }

    if ((v12 & 0x2000000000000000) == 0)
    {
      if ((v11 & 0x1000000000000000) != 0)
      {

        v14 = v3;

        v15 = v57;
        closure #1 in __RKMaterialParameterBlock.get(parameter:)(v70);
        v57 = v15;

        goto LABEL_9;
      }

LABEL_29:

      v16 = v3;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMd, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMR);
      v17 = v57;
      _StringGuts._slowWithCString<A>(_:)();
      goto LABEL_8;
    }

    *&v60 = v11;
    *(&v60 + 1) = v12 & 0xFFFFFFFFFFFFFFLL;

    v16 = v3;

    v17 = v57;
    closure #1 in __RKMaterialParameterBlock.get(parameter:)(v70);
LABEL_8:
    v57 = v17;

LABEL_9:

    v66 = v70[0];
    v67 = v70[1];
    v68 = v70[2];
    v69 = v70[3];
    v18 = v71;
    if (v71 != 255)
    {
      v19 = v2;
      v20 = v1;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v65 = v6;
      v23 = specialized __RawDictionaryStorage.find<A>(_:)(v59, v12);
      v24 = v6[2];
      v25 = (v22 & 1) == 0;
      v7 = v24 + v25;
      if (__OFADD__(v24, v25))
      {
        goto LABEL_33;
      }

      v26 = v22;
      if (v6[3] >= v7)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v7 = specialized _NativeDictionary.copy()();
        }

        v27 = v59;
        if ((v26 & 1) == 0)
        {
LABEL_14:
          v6 = v65;
          v65[(v23 >> 6) + 8] |= 1 << v23;
          v29 = (v6[6] + 16 * v23);
          *v29 = v27;
          v29[1] = v12;
          v30 = v6[7] + 80 * v23;
          v31 = v67;
          *v30 = v66;
          *(v30 + 16) = v31;
          v32 = v69;
          *(v30 + 32) = v68;
          *(v30 + 48) = v32;
          *(v30 + 64) = v18;
          v33 = v6[2];
          v34 = __OFADD__(v33, 1);
          v35 = v33 + 1;
          if (v34)
          {
            goto LABEL_34;
          }

          v6[2] = v35;
          goto LABEL_24;
        }
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v7, isUniquelyReferenced_nonNull_native);
        v27 = v59;
        v7 = specialized __RawDictionaryStorage.find<A>(_:)(v59, v12);
        if ((v26 & 1) != (v28 & 1))
        {
          goto LABEL_35;
        }

        v23 = v7;
        if ((v26 & 1) == 0)
        {
          goto LABEL_14;
        }
      }

      v6 = v65;
      v45 = v65[7] + 80 * v23;
      v46 = *(v45 + 16);
      v47 = *(v45 + 32);
      v48 = *(v45 + 48);
      v64 = *(v45 + 64);
      v63 = v48;
      v62 = v47;
      v60 = *v45;
      v61 = v46;
      v49 = v67;
      *v45 = v66;
      *(v45 + 16) = v49;
      v50 = v69;
      *(v45 + 32) = v68;
      *(v45 + 48) = v50;
      *(v45 + 64) = v18;
      v7 = outlined destroy of __RKMaterialParameterBlock.Parameter(&v60);
LABEL_24:
      v1 = v20;
      v2 = v19;
LABEL_25:
      v3 = v54;
      v40 = v53;
      goto LABEL_26;
    }

    v36 = specialized __RawDictionaryStorage.find<A>(_:)(v59, v12);
    v38 = v37;

    if ((v38 & 1) == 0)
    {
      goto LABEL_25;
    }

    v39 = swift_isUniquelyReferenced_nonNull_native();
    v65 = v6;
    v3 = v54;
    v40 = v53;
    if (!v39)
    {
      specialized _NativeDictionary.copy()();
      v6 = v65;
    }

    v41 = v6[7] + 80 * v36;
    v60 = *v41;
    v43 = *(v41 + 32);
    v42 = *(v41 + 48);
    v44 = *(v41 + 64);
    v61 = *(v41 + 16);
    v62 = v43;
    v64 = v44;
    v63 = v42;
    outlined destroy of __RKMaterialParameterBlock.Parameter(&v60);
    specialized _NativeDictionary._delete(at:)(v36, v6);
LABEL_26:
    if (v55 == v9)
    {

      return v6;
    }

    ++v9;
    v10 += 2;
  }

  while (v9 < *(v40 + 16));
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t __RKMaterialParameterBlock.parameters.setter(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 64;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 64);
  for (i = (v4 + 63) >> 6; v6; result = outlined destroy of __RKMaterialParameterBlock.Parameter(v20))
  {
    v8 = v2;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v10 = *(v1 + 56) + 80 * (v9 | (v8 << 6));
    v20[0] = *v10;
    v12 = *(v10 + 32);
    v11 = *(v10 + 48);
    v13 = *(v10 + 16);
    v21 = *(v10 + 64);
    v20[2] = v12;
    v20[3] = v11;
    v20[1] = v13;
    v14 = *(v10 + 48);
    v18[2] = *(v10 + 32);
    v18[3] = v14;
    v19 = *(v10 + 64);
    v15 = *(v10 + 16);
    v18[0] = *v10;
    v18[1] = v15;
    v16 = String.utf8CString.getter();
    outlined init with copy of __RKMaterialParameterBlock.Parameter(v20, &v17);
    __RKMaterialParameterBlock.unsafeSet(parameter:value:)((v16 + 32), v18);
  }

  while (1)
  {
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      break;
    }

    if (v8 >= i)
    {
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void (*__RKMaterialParameterBlock.parameters.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0xA0uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 152) = v1;
  v8 = *(v1 + 24);

  v5 = v8;

  v6 = __RKMaterialParameterBlock.buildParametersDictionaryFromCurrentState()();

  *(v4 + 72) = v6;
  return __RKMaterialParameterBlock.parameters.modify;
}

void __RKMaterialParameterBlock.parameters.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  if (a2)
  {
LABEL_13:

    free(v2);
  }

  else
  {
    v4 = -1;
    v5 = -1 << *(v3 + 32);
    if (-v5 < 64)
    {
      v4 = ~(-1 << -v5);
    }

    v6 = v4 & *(v3 + 64);
    v7 = (63 - v5) >> 6;

    v8 = 0;
    while (v6)
    {
      v9 = v8;
LABEL_10:
      v10 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v11 = *(v3 + 56) + 80 * (v10 | (v9 << 6));
      *v2 = *v11;
      v13 = *(v11 + 32);
      v12 = *(v11 + 48);
      v14 = *(v11 + 16);
      *(v2 + 64) = *(v11 + 64);
      v2[2] = v13;
      v2[3] = v12;
      v2[1] = v14;
      v15 = *(v11 + 48);
      v18[2] = *(v11 + 32);
      v18[3] = v15;
      v19 = *(v11 + 64);
      v16 = *(v11 + 16);
      v18[0] = *v11;
      v18[1] = v16;
      v17 = String.utf8CString.getter();
      outlined init with copy of __RKMaterialParameterBlock.Parameter(v2, (v2 + 5));
      __RKMaterialParameterBlock.unsafeSet(parameter:value:)((v17 + 32), v18);

      outlined destroy of __RKMaterialParameterBlock.Parameter(v2);
    }

    while (1)
    {
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v9 >= v7)
      {

        goto LABEL_13;
      }

      v6 = *(v3 + 64 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

id static HoverEffectComponent.HoverEffect.spotlight(_:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8) | (*(a1 + 12) << 32);
  *a3 = *a1;
  *(a3 + 8) = v4;
  *(a3 + 16) = a2;
  *(a3 + 24) = 0;
  *(a3 + 32) = 1;
  *(a3 + 33) = 1;
  *(a3 + 36) = 3;
  return v3;
}

__n128 static HoverEffectComponent.HoverEffect.shader(_:)@<Q0>(__n128 *a1@<X0>, uint64_t a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  *(a2 + 16) = 2;
  *(a2 + 24) = 0;
  *(a2 + 32) = 1;
  *(a2 + 33) = 1;
  *(a2 + 36) = 3;
  return result;
}

void HoverEffectComponent.HoverEffect.groupID.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  *a1 = *(v1 + 24);
  *(a1 + 8) = v2;
}

uint64_t *HoverEffectComponent.HoverEffect.groupID.setter(uint64_t *result)
{
  v2 = *result;
  v3 = *(result + 8);
  *(v1 + 33) = 0;
  *(v1 + 24) = v2;
  *(v1 + 32) = v3;
  return result;
}

uint64_t *(*HoverEffectComponent.HoverEffect.groupID.modify(uint64_t a1))(uint64_t *result)
{
  *(a1 + 16) = v1;
  v2 = *(v1 + 32);
  *a1 = *(v1 + 24);
  *(a1 + 8) = v2;
  return HoverEffectComponent.HoverEffect.groupID.modify;
}

uint64_t *HoverEffectComponent.HoverEffect.groupID.modify(uint64_t *result)
{
  v1 = result[2];
  v2 = *result;
  v3 = *(result + 8);
  *(v1 + 33) = 0;
  *(v1 + 24) = v2;
  *(v1 + 32) = v3;
  return result;
}

uint64_t static HoverEffectComponent.HoverEffect.spotlight(_:groupID:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v4 = *a2;
  v5 = *(a1 + 8) | (*(a1 + 12) << 32);
  *a4 = *a1;
  *(a4 + 8) = v5;
  *(a4 + 16) = a3;
  *(a4 + 36) = 3;
  *(a4 + 33) = 0;
  *(a4 + 24) = v4;
  *(a4 + 32) = 0;
  return MEMORY[0x1EEE66D28]();
}

__n128 static HoverEffectComponent.HoverEffect.shader(_:groupID:)@<Q0>(__n128 *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  result = *a1;
  *a3 = *a1;
  *(a3 + 16) = 2;
  *(a3 + 36) = 3;
  *(a3 + 33) = 0;
  *(a3 + 24) = v3;
  *(a3 + 32) = 0;
  return result;
}

uint64_t (*HoverEffectComponent.HoverEffect.allowedInputTypes_protoV1.modify(uint64_t a1))()
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 36);
  return HoverEffectComponent.HoverEffect.allowedInputTypes_protoV1.modify;
}

uint64_t HoverEffectComponent.hoverEffect.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  if (*(*v1 + 16))
  {
    v3 = *(v2 + 32);
    v4 = *(v2 + 48);
    v8 = *(v2 + 64);
    v7[0] = v3;
    v7[1] = v4;
    *(a1 + 32) = v8;
    *a1 = *(v2 + 32);
    *(a1 + 16) = v4;
    return outlined init with copy of HoverEffectComponent.HoverEffect(v7, v6);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t key path setter for HoverEffectComponent.hoverEffect : HoverEffectComponent(__int128 *a1, uint64_t *a2)
{
  v3 = a1[1];
  v11 = *a1;
  v12 = v3;
  v13 = *(a1 + 4);
  v4 = *a2;
  outlined init with copy of HoverEffectComponent.HoverEffect(&v11, v9);
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    if (*(v4 + 16))
    {
LABEL_3:
      v6 = *(v4 + 32);
      v7 = *(v4 + 48);
      v10 = *(v4 + 64);
      v9[0] = v6;
      v9[1] = v7;
      *(v4 + 64) = v13;
      v8 = v12;
      *(v4 + 32) = v11;
      *(v4 + 48) = v8;
      result = outlined destroy of HoverEffectComponent.HoverEffect(v9);
      *a2 = v4;
      return result;
    }
  }

  else
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v4);
    v4 = result;
    if (*(result + 16))
    {
      goto LABEL_3;
    }
  }

  __break(1u);
  return result;
}

uint64_t HoverEffectComponent.hoverEffect.setter(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    if (*(v3 + 16))
    {
LABEL_3:
      v5 = *(v3 + 32);
      v6 = *(v3 + 48);
      v9 = *(v3 + 64);
      v8[0] = v5;
      v8[1] = v6;
      *(v3 + 64) = *(a1 + 32);
      v7 = *(a1 + 16);
      *(v3 + 32) = *a1;
      *(v3 + 48) = v7;
      result = outlined destroy of HoverEffectComponent.HoverEffect(v8);
      *v1 = v3;
      return result;
    }
  }

  else
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
    v3 = result;
    if (*(result + 16))
    {
      goto LABEL_3;
    }
  }

  __break(1u);
  return result;
}

void (*HoverEffectComponent.hoverEffect.modify(void (**a1)(uint64_t *a1, char a2)))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    result = swift_coroFrameAlloc();
  }

  else
  {
    result = malloc(0xD8uLL);
  }

  *a1 = result;
  *(result + 25) = v1;
  v4 = *v1;
  *(result + 26) = *v1;
  if (*(v4 + 16))
  {
    v5 = *(v4 + 32);
    v6 = *(v4 + 48);
    *(result + 4) = *(v4 + 64);
    *result = v5;
    *(result + 1) = v6;
    v7 = *(v4 + 32);
    v8 = *(v4 + 48);
    *(result + 9) = *(v4 + 64);
    *(result + 56) = v8;
    *(result + 40) = v7;
    outlined init with copy of HoverEffectComponent.HoverEffect(result, result + 80);
    return HoverEffectComponent.hoverEffect.modify;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void HoverEffectComponent.hoverEffect.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  if ((a2 & 1) == 0)
  {
    v15 = *(v2 + 40);
    v16 = *(v2 + 56);
    v17 = *(v2 + 72);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v5 = *(v2 + 208);
    if (isUniquelyReferenced_nonNull_native)
    {
      if (!*(v5 + 2))
      {
LABEL_14:
        __break(1u);
        return;
      }

LABEL_7:
      v12 = *(v2 + 200);
      v13 = *(v5 + 8);
      v14 = *(v5 + 3);
      *(v2 + 80) = *(v5 + 2);
      *(v2 + 96) = v14;
      *(v2 + 112) = v13;
      *(v5 + 2) = v15;
      *(v5 + 3) = v16;
      *(v5 + 8) = v17;
      outlined destroy of HoverEffectComponent.HoverEffect(v2 + 80);
      *v12 = v5;
      goto LABEL_8;
    }

LABEL_13:
    v5 = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
    if (!*(v5 + 2))
    {
      goto LABEL_14;
    }

    goto LABEL_7;
  }

  v3 = *(v2 + 56);
  *(v2 + 80) = *(v2 + 40);
  *(v2 + 96) = v3;
  *(v2 + 112) = *(v2 + 72);
  outlined init with copy of HoverEffectComponent.HoverEffect(v2 + 80, v2 + 120);
  v4 = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v2 + 208);
  if ((v4 & 1) == 0)
  {
    v5 = specialized _ArrayBuffer._consumeAndCreateNew()(*(v2 + 208));
    if (*(v5 + 2))
    {
      goto LABEL_4;
    }

    goto LABEL_12;
  }

  if (!*(v5 + 2))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

LABEL_4:
  v6 = *(v2 + 200);
  v7 = *(v5 + 8);
  v8 = *(v5 + 3);
  *(v2 + 160) = *(v5 + 2);
  *(v2 + 176) = v8;
  *(v2 + 192) = v7;
  v9 = *(v2 + 80);
  v10 = *(v2 + 96);
  *(v5 + 8) = *(v2 + 112);
  *(v5 + 2) = v9;
  *(v5 + 3) = v10;
  outlined destroy of HoverEffectComponent.HoverEffect(v2 + 160);
  *v6 = v5;
  *(v2 + 120) = *(v2 + 40);
  *(v2 + 136) = *(v2 + 56);
  *(v2 + 152) = *(v2 + 72);
  outlined destroy of HoverEffectComponent.HoverEffect(v2 + 120);
LABEL_8:

  free(v2);
}

void HoverEffectComponent.hoverEffects_protoV1.setter(uint64_t a1)
{
  if (*(a1 + 16))
  {

    *v1 = a1;
  }

  else
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

uint64_t (*HoverEffectComponent.hoverEffects_protoV1.modify(void *a1))()
{
  v3 = *v1;
  a1[1] = v1;
  a1[2] = v3;
  *a1 = v3;

  return HoverEffectComponent.hoverEffects_protoV1.modify;
}

void key path setter for HoverEffectComponent.hoverEffects_protoV1 : HoverEffectComponent(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  if (*(*a1 + 16))
  {

    *a2 = v2;
  }

  else
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

uint64_t (*HoverEffectComponent.hoverEffects.modify(void *a1))()
{
  v3 = *v1;
  a1[1] = v1;
  a1[2] = v3;
  *a1 = v3;

  return HoverEffectComponent.hoverEffects.modify;
}

void HoverEffectComponent.hoverEffects_protoV1.modify(void *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 16);
  if ((a2 & 1) == 0)
  {
    if (v3)
    {
      v5 = a1[1];

      *v5 = v2;
      return;
    }

    goto LABEL_8;
  }

  if (!v3)
  {
LABEL_8:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  v4 = a1[1];

  *v4 = v2;
}

CGColorRef one-time initialization function for default()
{
  result = CGColorCreateGenericRGB(1.0, 1.0, 1.0, 1.0);
  static HoverEffectComponent.SpotlightHoverEffectStyle.default = result;
  dword_1EBEAC2C8 = 1065353216;
  byte_1EBEAC2CC = 0;
  return result;
}

{
  result = CGColorCreateGenericRGB(1.0, 1.0, 1.0, 1.0);
  static HoverEffectComponent.HighlightHoverEffectStyle.default = result;
  dword_1EBEAC2D8 = 1065353216;
  byte_1EBEAC2DC = 0;
  return result;
}

id static HoverEffectComponent.SpotlightHoverEffectStyle.default.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for default != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v2 = static HoverEffectComponent.SpotlightHoverEffectStyle.default;
  v3 = dword_1EBEAC2C8;
  v4 = byte_1EBEAC2CC;
  *a1 = static HoverEffectComponent.SpotlightHoverEffectStyle.default;
  *(a1 + 8) = v3;
  *(a1 + 12) = v4;

  return v2;
}

CGColorRef HoverEffectComponent.SpotlightHoverEffectStyle.init(color:strength:opacityFunction:)@<X0>(CGColorRef result@<X0>, char *a2@<X1>, uint64_t a3@<X8>, float a4@<S0>)
{
  v6 = *a2;
  if (!result)
  {
    result = CGColorCreateGenericRGB(1.0, 1.0, 1.0, 1.0);
  }

  *a3 = result;
  *(a3 + 8) = a4;
  *(a3 + 12) = v6;
  return result;
}

id static HoverEffectComponent.HighlightHoverEffectStyle.default.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for default != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v2 = static HoverEffectComponent.HighlightHoverEffectStyle.default;
  v3 = dword_1EBEAC2D8;
  v4 = byte_1EBEAC2DC;
  *a1 = static HoverEffectComponent.HighlightHoverEffectStyle.default;
  *(a1 + 8) = v3;
  *(a1 + 12) = v4;

  return v2;
}

double one-time initialization function for default()
{
  result = 0.2;
  static HoverEffectComponent.ShaderHoverEffectInputs.default = xmmword_1C18AEF60;
  return result;
}

{
  result = NAN;
  static CollisionFilter.default = 0xFFFFFFFF00000001;
  return result;
}

{
  if (one-time initialization token for identity != -1)
  {
    swift_once();
  }

  result = *&static simd_quatf.identity;
  static PhysicsMassProperties.default = 1065353216;
  xmmword_1EBEB20F0 = xmmword_1C18C7150;
  qword_1EBEB2100 = 0;
  unk_1EBEB2108 = 0;
  xmmword_1EBEB2110 = static simd_quatf.identity;
  return result;
}

RealityFoundation::HoverEffectComponent::ShaderHoverEffectInputs __swiftcall HoverEffectComponent.ShaderHoverEffectInputs.init(fadeInDuration:fadeOutDuration:)(Swift::Double fadeInDuration, Swift::Double fadeOutDuration)
{
  __asm { FMOV            V1.2D, #10.0 }

  v9 = vbslq_s8(vcgtq_f64(*&fadeInDuration, _Q1), _Q1, *&fadeInDuration);
  v10 = vclezq_f64(v9);
  v11 = vbicq_s8(v9, v10);
  *v2 = v11;
  result._fadeOutDuration = *v10.i64;
  result._fadeInDuration = *v11.i64;
  return result;
}

double static HoverEffectComponent.ShaderHoverEffectInputs.default.getter@<D0>(_OWORD *a1@<X8>)
{
  if (one-time initialization token for default != -1)
  {
    v2 = a1;
    swift_once();
    a1 = v2;
  }

  result = *&static HoverEffectComponent.ShaderHoverEffectInputs.default;
  *a1 = static HoverEffectComponent.ShaderHoverEffectInputs.default;
  return result;
}

void HoverEffectComponent.ShaderHoverEffectInputs.fadeInDuration.setter(double a1)
{
  if (a1 > 10.0)
  {
    a1 = 10.0;
  }

  if (a1 <= 0.0)
  {
    a1 = 0.0;
  }

  *v1 = a1;
}

uint64_t (*HoverEffectComponent.ShaderHoverEffectInputs.fadeInDuration.modify(void *a1))(uint64_t result)
{
  a1[1] = v1;
  *a1 = *v1;
  return HoverEffectComponent.ShaderHoverEffectInputs.fadeInDuration.modify;
}

uint64_t HoverEffectComponent.ShaderHoverEffectInputs.fadeInDuration.modify(uint64_t result)
{
  v1 = *result;
  if (*result > 10.0)
  {
    v1 = 10.0;
  }

  if (v1 <= 0.0)
  {
    v1 = 0.0;
  }

  **(result + 8) = v1;
  return result;
}

void HoverEffectComponent.ShaderHoverEffectInputs.fadeOutDuration.setter(double a1)
{
  if (a1 > 10.0)
  {
    a1 = 10.0;
  }

  if (a1 <= 0.0)
  {
    a1 = 0.0;
  }

  *(v1 + 8) = a1;
}

uint64_t (*HoverEffectComponent.ShaderHoverEffectInputs.fadeOutDuration.modify(void *a1))(uint64_t result)
{
  a1[1] = v1;
  *a1 = *(v1 + 8);
  return HoverEffectComponent.ShaderHoverEffectInputs.fadeOutDuration.modify;
}

uint64_t HoverEffectComponent.ShaderHoverEffectInputs.fadeOutDuration.modify(uint64_t result)
{
  v1 = *result;
  if (*result > 10.0)
  {
    v1 = 10.0;
  }

  if (v1 <= 0.0)
  {
    v1 = 0.0;
  }

  *(*(result + 8) + 8) = v1;
  return result;
}

id HoverEffectComponent.init()@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation20HoverEffectComponentV0fG0VGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation20HoverEffectComponentV0fG0VGMR);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1C1887600;
  if (one-time initialization token for default != -1)
  {
    v6 = v2;
    swift_once();
    v2 = v6;
  }

  v3 = static HoverEffectComponent.SpotlightHoverEffectStyle.default;
  v4 = dword_1EBEAC2C8 | (byte_1EBEAC2CC << 32);
  *(v2 + 32) = static HoverEffectComponent.SpotlightHoverEffectStyle.default;
  *(v2 + 40) = v4;
  *(v2 + 48) = 0;
  *(v2 + 56) = 0;
  *(v2 + 64) = 1;
  *(v2 + 65) = 1;
  *(v2 + 68) = 3;
  *a1 = v2;
  *(a1 + 12) = 0;
  *(a1 + 8) = 0;

  return v3;
}

void HoverEffectComponent.init(_:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation20HoverEffectComponentV0fG0VGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation20HoverEffectComponentV0fG0VGMR);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C1887600;
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v5 = static HoverEffectComponent.SpotlightHoverEffectStyle.default;
  v6 = dword_1EBEAC2C8 | (byte_1EBEAC2CC << 32);
  *(v4 + 32) = static HoverEffectComponent.SpotlightHoverEffectStyle.default;
  *(v4 + 40) = v6;
  *(v4 + 48) = 0;
  *(v4 + 56) = 0;
  *(v4 + 64) = 1;
  *(v4 + 65) = 1;
  *(v4 + 68) = 3;
  *a2 = v4;
  *(a2 + 12) = 0;
  *(a2 + 8) = 0;
  if (*(a1 + 16))
  {
    v7 = v5;

    *a2 = a1;
  }

  else
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

uint64_t HoverEffectComponent.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation20HoverEffectComponentV0fG0VGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation20HoverEffectComponentV0fG0VGMR);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C1887600;
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v5 = static HoverEffectComponent.SpotlightHoverEffectStyle.default;
  v6 = dword_1EBEAC2C8 | (byte_1EBEAC2CC << 32);
  *(v4 + 32) = static HoverEffectComponent.SpotlightHoverEffectStyle.default;
  *(v4 + 40) = v6;
  *(v4 + 48) = 0;
  *(v4 + 56) = 0;
  *(v4 + 64) = 1;
  *(v4 + 65) = 1;
  *(v4 + 68) = 3;
  *(a2 + 12) = 0;
  *(a2 + 8) = 0;
  v12 = *(v4 + 64);
  v7 = *(v4 + 48);
  v11[0] = *(v4 + 32);
  v11[1] = v7;
  v8 = *(a1 + 16);
  *(v4 + 32) = *a1;
  *(v4 + 48) = v8;
  *(v4 + 64) = *(a1 + 32);
  v9 = v5;
  result = outlined destroy of HoverEffectComponent.HoverEffect(v11);
  *a2 = v4;
  return result;
}

uint64_t (*HoverEffectComponent.settingsModifier.modify(uint64_t a1))()
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 8);
  return HoverEffectComponent.settingsModifier.modify;
}

uint64_t static HoverEffectComponent.__fromCore(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  StyleCount = RERemoteEffectsComponentGetStyleCount();
  if (StyleCount)
  {
    v3 = 0;
    v4 = MEMORY[0x1E69E7CC0];
    do
    {
      StyleIDAtIndex = RERemoteEffectsComponentGetStyleIDAtIndex();
      if (StyleIDAtIndex == RERemoteEffectsComponentGetInvalidStyleID())
      {
        break;
      }

      static HoverEffectComponent.SwiftStyleFromREComponent(_:styleId:)(v2, StyleIDAtIndex, &v28);
      v6 = v28;
      v19 = v29;
      v31 = 1;
      GroupID = RERemoteEffectsComponentStyleGetGroupID();
      if (GroupID == RERemoteEffectsComponentGetInvalidGroupID())
      {
        GroupID = 0;
      }

      else
      {
        RERemoteEffectsComponentCreateGroupID();
        v31 = 0;
      }

      IsHierarchical = RERemoteEffectsComponentStyleIsHierarchical();
      EnableDirectPinchAnimation = RERemoteEffectsComponentStyleGetEnableDirectPinchAnimation();
      AllowsDirectInput = RERemoteEffectsComponentStyleGetAllowsDirectInput();
      if (RERemoteEffectsComponentStyleGetAllowsIndirectInput())
      {
        AllowsDirectInput |= 2u;
      }

      v28 = v6;
      LOBYTE(v29) = v19;
      *(&v29 + 1) = GroupID;
      LOBYTE(v30) = v31;
      BYTE1(v30) = IsHierarchical;
      BYTE2(v30) = EnableDirectPinchAnimation;
      HIDWORD(v30) = AllowsDirectInput;
      outlined init with copy of HoverEffectComponent.HoverEffect(&v28, &v20);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v4 + 2) + 1, 1, v4);
      }

      v12 = *(v4 + 2);
      v11 = *(v4 + 3);
      if (v12 >= v11 >> 1)
      {
        v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1, v4);
      }

      ++v3;
      v20 = v6;
      v21 = v19;
      *v22 = *v32;
      *&v22[3] = *&v32[3];
      v23 = GroupID;
      v24 = v31;
      v25 = IsHierarchical;
      v26 = EnableDirectPinchAnimation;
      v27 = AllowsDirectInput;
      outlined destroy of HoverEffectComponent.HoverEffect(&v20);
      *(v4 + 2) = v12 + 1;
      v13 = &v4[40 * v12];
      v14 = v30;
      v15 = v29;
      *(v13 + 2) = v28;
      *(v13 + 3) = v15;
      *(v13 + 8) = v14;
    }

    while (StyleCount != v3);
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC0];
  }

  HoverEffectComponent.init(_:)(v4, a2);
  *(a2 + 8) = RERemoteEffectsComponentGetSettingsModifier();
  result = RERemoteEffectsComponentIsPinchActive();
  *(a2 + 12) = result;
  return result;
}

uint64_t *HoverEffectComponent.__toCore(_:)(uint64_t *result)
{
  v2 = *v1;
  if (*(*v1 + 16))
  {
    v3 = *result;
    RERemoteEffectsComponentSetIsHierarchical();
    RERemoteEffectsComponentSetSettingsModifier();
    RERemoteEffectsComponentSetIsPinchActive();
    RELinkedOnOrAfterFall2024OSVersions();
    RERemoteEffectsComponentSetVersion();
    RERemoteEffectsComponentSetEnableEntityHoverEffect();
    v4 = *(v2 + 16);

    if (!v4)
    {
LABEL_7:

      RERemoteEffectsComponentResizeStyles();
      return RENetworkMarkComponentDirty();
    }

    v5 = 0;
    v6 = (v2 + 32);
    while (v5 < v4)
    {
      v7 = *v6;
      v8 = v6[1];
      v15 = *(v6 + 4);
      v14[0] = v7;
      v14[1] = v8;
      v9 = *v6;
      v10 = v6[1];
      v17 = *(v6 + 4);
      v16[0] = v9;
      v16[1] = v10;
      v12[0] = v9;
      v12[1] = v10;
      v13 = v17;
      if (v5 == 0x100000000)
      {
        goto LABEL_9;
      }

      outlined init with copy of HoverEffectComponent.HoverEffect(v14, v11);
      specialized static HoverEffectComponent.addOrUpdateCoreHoverEffect(_:hoverEffect:at:)(v3, v12, v5);
      result = outlined destroy of HoverEffectComponent.HoverEffect(v16);
      v4 = *(v2 + 16);
      v6 = (v6 + 40);
      if (++v5 == v4)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
LABEL_9:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t HoverEffectComponent.GroupID.init()@<X0>(uint64_t *a1@<X8>)
{
  result = RERemoteEffectsComponentCreateGroupID();
  *a1 = result;
  return result;
}

Swift::Int HoverEffectComponent.GroupID.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1C68F4C50](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance HoverEffectComponent.GroupID()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1C68F4C50](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance HoverEffectComponent.GroupID()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1C68F4C50](v1);
  return Hasher._finalize()();
}

void SettingsModifierV2.modifier.getter(char *a1@<X8>)
{
  if (*v1 == 2)
  {
    v2 = 2;
  }

  else
  {
    v2 = *v1 == 1;
  }

  *a1 = v2;
}

uint64_t (*SettingsModifierV2.modifier.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  if (*v1 == 2)
  {
    v2 = 2;
  }

  else
  {
    v2 = *v1 == 1;
  }

  *(a1 + 8) = v2;
  return SettingsModifierV2.modifier.modify;
}

uint64_t static HoverEffectComponent.SwiftStyleFromREComponent(_:styleId:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  RERemoteEffectsComponentStyleGetGlowAppearDurationOverride();
  v21 = v4;
  RERemoteEffectsComponentStyleGetGlowDisappearDurationOverride();
  v20 = v5;
  RERemoteEffectsComponentStyleGetIntensityMultiplier();
  v7 = v6;
  OpacityFunction = RERemoteEffectsComponentStyleGetOpacityFunction();
  RERemoteEffectsComponentStyleGetFadeUsesActiveTime();
  RERemoteEffectsComponentStyleGetFadeUsesActiveTimeMultiplier();
  RERemoteEffectsComponentStyleGetActivationDelay();
  RERemoteEffectsComponentStyleGetColorTint();
  result = RERemoteEffectsComponentStyleGetType();
  if (result == 2)
  {
    result = RECreateCGColorFromColorGamut();
    v18 = (OpacityFunction == 2) << 33;
    if (OpacityFunction == 1)
    {
      v18 = 0x100000000;
    }

    *a3 = result;
    *(a3 + 8) = v18 | v7;
    v17 = 1;
  }

  else if (result == 1)
  {
    v10.f64[0] = v21;
    v10.f64[1] = v20;
    __asm { FMOV            V0.2D, #10.0 }

    v16 = vbslq_s8(vcgtq_f64(v10, _Q0), _Q0, v10);
    *a3 = vbicq_s8(v16, vclezq_f64(v16));
    v17 = 2;
  }

  else
  {
    result = RECreateCGColorFromColorGamut();
    v17 = 0;
    v19 = (OpacityFunction == 2) << 33;
    if (OpacityFunction == 1)
    {
      v19 = 0x100000000;
    }

    *a3 = result;
    *(a3 + 8) = v19 | v7;
  }

  *(a3 + 16) = v17;
  return result;
}

BOOL specialized static HoverEffectComponent.HighlightHoverEffectStyle.== infix(_:_:)(float *a1, float *a2)
{
  v2 = a1[2];
  v3 = *(a1 + 12);
  v4 = a2[2];
  v5 = *(a2 + 12);
  type metadata accessor for CGColorRef(0);
  lazy protocol witness table accessor for type CGColorRef and conformance CGColorRef();
  v6 = static _CFObject.== infix(_:_:)();
  result = 0;
  if ((v6 & 1) != 0 && v2 == v4)
  {
    return v3 == v5;
  }

  return result;
}

BOOL specialized static HoverEffectComponent.HoverEffect.HoverEffectType.== infix(_:_:)(double *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *(a1 + 16);
  v6 = *a2;
  v5 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (!*(a1 + 16))
  {
    if (!*(a2 + 16))
    {
      type metadata accessor for CGColorRef(0);
      outlined copy of HoverEffectComponent.HoverEffect.HoverEffectType(*&v6, *&v5, 0);
      outlined copy of HoverEffectComponent.HoverEffect.HoverEffectType(*&v3, *&v2, 0);
      outlined copy of HoverEffectComponent.HoverEffect.HoverEffectType(*&v3, *&v2, 0);
      outlined copy of HoverEffectComponent.HoverEffect.HoverEffectType(*&v6, *&v5, 0);
      lazy protocol witness table accessor for type CGColorRef and conformance CGColorRef();
      v19 = static _CFObject.== infix(_:_:)();
      outlined consume of HoverEffectComponent.HoverEffect.HoverEffectType(*&v3, *&v2, 0);
      outlined consume of HoverEffectComponent.HoverEffect.HoverEffectType(*&v6, *&v5, 0);
      if (v19)
      {
        v9 = *&v2;
        v10 = *&v5;
        outlined consume of HoverEffectComponent.HoverEffect.HoverEffectType(*&v6, *&v5, 0);
        v11 = v3;
        v12 = *&v2;
        v13 = 0;
        goto LABEL_17;
      }

      outlined consume of HoverEffectComponent.HoverEffect.HoverEffectType(*&v6, *&v5, 0);
      v16 = v3;
      v17 = *&v2;
      v18 = 0;
LABEL_13:
      outlined consume of HoverEffectComponent.HoverEffect.HoverEffectType(*&v16, v17, v18);
      return 0;
    }

    goto LABEL_7;
  }

  if (v4 == 1)
  {
    if (v7 == 1)
    {
      type metadata accessor for CGColorRef(0);
      outlined copy of HoverEffectComponent.HoverEffect.HoverEffectType(*&v6, *&v5, 1u);
      outlined copy of HoverEffectComponent.HoverEffect.HoverEffectType(*&v3, *&v2, 1u);
      outlined copy of HoverEffectComponent.HoverEffect.HoverEffectType(*&v3, *&v2, 1u);
      outlined copy of HoverEffectComponent.HoverEffect.HoverEffectType(*&v6, *&v5, 1u);
      lazy protocol witness table accessor for type CGColorRef and conformance CGColorRef();
      v8 = static _CFObject.== infix(_:_:)();
      outlined consume of HoverEffectComponent.HoverEffect.HoverEffectType(*&v3, *&v2, 1u);
      outlined consume of HoverEffectComponent.HoverEffect.HoverEffectType(*&v6, *&v5, 1u);
      if (v8)
      {
        v9 = *&v2;
        v10 = *&v5;
        outlined consume of HoverEffectComponent.HoverEffect.HoverEffectType(*&v6, *&v5, 1u);
        v11 = v3;
        v12 = *&v2;
        v13 = 1;
LABEL_17:
        outlined consume of HoverEffectComponent.HoverEffect.HoverEffectType(*&v11, v12, v13);
        return v9 == v10 && ((*&v5 ^ *&v2) & 0xFF00000000) == 0;
      }

      outlined consume of HoverEffectComponent.HoverEffect.HoverEffectType(*&v6, *&v5, 1u);
      v16 = v3;
      v17 = *&v2;
      v18 = 1;
      goto LABEL_13;
    }

LABEL_7:
    v14 = *&v3;
LABEL_12:
    outlined copy of HoverEffectComponent.HoverEffect.HoverEffectType(*&v6, *&v5, v7);
    outlined consume of HoverEffectComponent.HoverEffect.HoverEffectType(*&v3, *&v2, v4);
    v16 = v6;
    v17 = *&v5;
    v18 = v7;
    goto LABEL_13;
  }

  if (v7 != 2)
  {
    goto LABEL_12;
  }

  outlined consume of HoverEffectComponent.HoverEffect.HoverEffectType(*a1, *&v2, 2u);
  outlined consume of HoverEffectComponent.HoverEffect.HoverEffectType(*&v6, *&v5, 2u);
  return v2 == v5 && v3 == v6;
}

void specialized static HoverEffectComponent.addOrUpdateCoreHoverEffect(_:hoverEffect:at:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  v8 = v7;
  v16 = *(a2 + 32);
  if (!*(a2 + 16))
  {
    goto LABEL_4;
  }

  if (v7 == 1)
  {
    v8 = 2;
LABEL_4:
    v9 = v5;
    goto LABEL_6;
  }

  v8 = 1;
LABEL_6:
  if (RERemoteEffectsComponentGetStyleCount() <= v3)
  {
    RERemoteEffectsComponentCreateStyleID();
    RERemoteEffectsComponentAddStyle();
  }

  else
  {
    RERemoteEffectsComponentGetStyleIDAtIndex();
    Type = RERemoteEffectsComponentStyleGetType();
    RERemoteEffectsComponentStyleReset();
    if (v8 != Type)
    {
      RERemoteEffectsComponentCreateStyleID();
    }

    RERemoteEffectsComponentSetStyleIDAtIndex();
  }

  StyleIDAtIndex = RERemoteEffectsComponentGetStyleIDAtIndex();
  RERemoteEffectsComponentStyleSetType();
  RERemoteEffectsComponentStyleSetIsPlanar();
  if (v16)
  {
    RERemoteEffectsComponentGetInvalidGroupID();
  }

  RERemoteEffectsComponentStyleSetGroupID();
  RERemoteEffectsComponentStyleSetAllowsDirectInput();
  RERemoteEffectsComponentStyleSetAllowsIndirectInput();
  RERemoteEffectsComponentStyleSetIsHierarchical();
  RERemoteEffectsComponentStyleSetEnableDirectPinchAnimation();
  RERemoteEffectsComponentStyleResetGlowAppearDurationOverride();
  RERemoteEffectsComponentStyleResetGlowDisappearDurationOverride();
  if (!v7)
  {
    RECGColorToColorGamut();
    RERemoteEffectsComponentStyleSetColorTint();
    RERemoteEffectsComponentStyleSetIntensityMultiplier();
    RERemoteEffectsComponentStyleSetOpacityFunction();
    v12 = v5;
    v13 = v6;
    v14 = 0;
    goto LABEL_18;
  }

  if (v7 == 1)
  {
    RECGColorToColorGamut();
    RERemoteEffectsComponentStyleSetColorTint();
    RERemoteEffectsComponentStyleSetIntensityMultiplier();
    RERemoteEffectsComponentStyleSetOpacityFunction();
    v12 = v5;
    v13 = v6;
    v14 = 1;
LABEL_18:
    outlined consume of HoverEffectComponent.HoverEffect.HoverEffectType(v12, v13, v14);
    return;
  }

  RERemoteEffectsComponentStyleSetGlowAppearDurationOverride();
  v15.n128_u64[0] = v6;

  MEMORY[0x1EEDFDE50](a1, StyleIDAtIndex, v15);
}

unint64_t lazy protocol witness table accessor for type HoverEffectComponent.OpacityFunction and conformance HoverEffectComponent.OpacityFunction()
{
  result = lazy protocol witness table cache variable for type HoverEffectComponent.OpacityFunction and conformance HoverEffectComponent.OpacityFunction;
  if (!lazy protocol witness table cache variable for type HoverEffectComponent.OpacityFunction and conformance HoverEffectComponent.OpacityFunction)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for HoverEffectComponent.OpacityFunction, &type metadata for HoverEffectComponent.OpacityFunction, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type HoverEffectComponent.OpacityFunction and conformance HoverEffectComponent.OpacityFunction);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type HoverEffectComponent.GroupID and conformance HoverEffectComponent.GroupID()
{
  result = lazy protocol witness table cache variable for type HoverEffectComponent.GroupID and conformance HoverEffectComponent.GroupID;
  if (!lazy protocol witness table cache variable for type HoverEffectComponent.GroupID and conformance HoverEffectComponent.GroupID)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for HoverEffectComponent.GroupID, &type metadata for HoverEffectComponent.GroupID, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type HoverEffectComponent.GroupID and conformance HoverEffectComponent.GroupID);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SettingsModifierV2.ModifierType and conformance SettingsModifierV2.ModifierType()
{
  result = lazy protocol witness table cache variable for type SettingsModifierV2.ModifierType and conformance SettingsModifierV2.ModifierType;
  if (!lazy protocol witness table cache variable for type SettingsModifierV2.ModifierType and conformance SettingsModifierV2.ModifierType)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SettingsModifierV2.ModifierType, &type metadata for SettingsModifierV2.ModifierType, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SettingsModifierV2.ModifierType and conformance SettingsModifierV2.ModifierType);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HoverEffectComponent.HoverEffect(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 40))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 33);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for HoverEffectComponent.HoverEffect(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 33) = a2 + 1;
    }
  }

  return result;
}

id outlined copy of HoverEffectComponent.HoverEffect.HoverEffectType(id result, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
    return result;
  }

  return result;
}

void outlined consume of HoverEffectComponent.HoverEffect.HoverEffectType(id a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }
}

void SkeletalPosesComponent.poses.setter(uint64_t *a1)
{
  v2 = *a1;

  *v1 = v2;
}

uint64_t SkeletalPosesComponent.init(poses:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = swift_bridgeObjectRelease_n();
  *a2 = a1;
  a2[1] = 0;
  return result;
}

uint64_t static SkeletalPosesComponent.__fromCore(_:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v21 = *a1;
  v4 = specialized static SkeletalPosesComponent.getCoreAsset(_:)(&v21);
  if (!v4)
  {
    v7 = MEMORY[0x1E69E7CC0];
LABEL_16:
    result = swift_bridgeObjectRelease_n();
    *a2 = v7;
    a2[1] = v4;
    return result;
  }

  result = RESkeletalPoseComponentGetSkeletonCount();
  if (result < 0)
  {
    goto LABEL_18;
  }

  v6 = result;
  v7 = MEMORY[0x1E69E7CC0];
  if (!result)
  {
    goto LABEL_16;
  }

  v19 = v4;
  v20 = a2;
  v21 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, result, 0);
  v8 = 0;
  v7 = v21;
  while (1)
  {
    RESkeletalPoseComponentGetPoseName();
    v9 = String.init(cString:)();
    v11 = v10;
    RESkeletalPoseComponentEnsureSkeletalPosesInitialized();
    if (v8 >= RESkeletalPoseComponentGetSkeletonCount())
    {
      result = 0;
LABEL_10:
      v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, 0, 0, MEMORY[0x1E69E7CC0]);
      goto LABEL_11;
    }

    result = RESkeletalPoseComponentGetJointCount();
    if (!result)
    {
      goto LABEL_10;
    }

    v12 = result;
    if (result < 0)
    {
      break;
    }

    type metadata accessor for RESRT(0);
    v13 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    *(v13 + 16) = v12;
    RESkeletalPoseComponentGetJointTransforms();
    v14 = v13;
    *(v13 + 16) = v12;
LABEL_11:
    v21 = v7;
    v16 = *(v7 + 16);
    v15 = *(v7 + 24);
    if (v16 >= v15 >> 1)
    {
      v18 = v14;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1);
      v14 = v18;
      v7 = v21;
    }

    v17 = v7 + 56 * v16;
    *(v17 + 32) = v3;
    *(v17 + 40) = v8;
    *(v7 + 16) = v16 + 1;
    *(v17 + 48) = 0;
    *(v17 + 56) = v9;
    *(v17 + 64) = v11;
    *(v17 + 72) = 0;
    *(v17 + 80) = v14;
    if (v6 == ++v8)
    {
      v4 = v19;
      a2 = v20;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
  return result;
}

void SkeletalPosesComponent.__toCore(_:)(Swift::OpaquePointer *a1)
{
  v2 = *v1;
  v3 = *v1 + 32;
  v4 = *(*v1 + 16) + 1;
  v5 = 72;
  while (--v4)
  {
    v6 = *(v2 + v5);
    v5 += 56;
    if (v6)
    {
      SkeletalPosesComponent.updateInternalPoseJointNames(_:)(a1->_rawValue);
      break;
    }
  }

  RESkeletalPoseComponentEnsureSkeletalPosesInitialized();
  v7 = *(v2 + 16);

  if (v7)
  {
    v8 = 0;
    v15 = v3;
    do
    {
      if (v8 >= *(v2 + 16))
      {
        __break(1u);
        return;
      }

      v9 = *(v3 + 56 * v8 + 48);

      RESkeletalPoseComponentEnsureSkeletalPosesInitialized();
      if (v8 >= RESkeletalPoseComponentGetSkeletonCount())
      {
        goto LABEL_8;
      }

      JointCount = RESkeletalPoseComponentGetJointCount();
      v11 = *(v9 + 16);
      if (v11)
      {
        if (v11 < JointCount)
        {
          v12 = 0;
          v13 = v9 + 64;
          do
          {
            v14 = v12 + 1;
            RESkeletalPoseComponentSetJointTransform();
            v13 += 48;
            v12 = v14;
          }

          while (v11 != v14);
          goto LABEL_19;
        }
      }

      else if (JointCount >= 1)
      {
        goto LABEL_8;
      }

      if (JointCount)
      {
        RESkeletalPoseComponentSetJointTransforms();
LABEL_19:
        RENetworkMarkComponentDirty();

        v3 = v15;
        goto LABEL_9;
      }

LABEL_8:

LABEL_9:
      ++v8;
    }

    while (v8 != v7);
  }
}

Swift::Void __swiftcall SkeletalPosesComponent.updateInternalPoseJointNames(_:)(Swift::OpaquePointer a1)
{
  v3 = *v1;
  SkeletalPoseDefinition = RESkeletalPoseComponentGetSkeletalPoseDefinition();
  if (SkeletalPoseDefinition)
  {
    v5 = SkeletalPoseDefinition;
    PoseCount = RESkeletalPoseDefinitionAssetGetPoseCount();
    v7 = MEMORY[0x1E69E7CC0];
    v31 = MEMORY[0x1E69E7CC0];
    v32 = MEMORY[0x1E69E7CC0];
    v30 = MEMORY[0x1E69E7CC0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySaySPys4Int8VGGGMd, &_ss23_ContiguousArrayStorageCySaySPys4Int8VGGGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C1887600;
    *(inited + 32) = v7;
    v29 = inited;
    ModelSpacePoseCount = RESkeletalPoseDefinitionAssetGetModelSpacePoseCount();
    v27 = v7;
    v28 = v7;
    v26 = v7;
    v10 = swift_initStackObject();
    *(v10 + 16) = xmmword_1C1887600;
    *(v10 + 32) = v7;
    v25 = v10;
    v24 = v7;
    v11 = *(v3 + 16);

    if (v11)
    {
      v12 = (v3 + 80);
      do
      {
        v13 = *(v12 - 1);
        v14 = *v12;
        v15 = *(v12 - 3);
        v16 = *(v12 - 2);
        v17 = *(v12 - 32);
        v18 = *(v12 - 3);
        v19 = v17;
        v20 = v15;
        v21 = v16;
        v22 = v13;
        v23 = v14;

        closure #1 in SkeletalPosesComponent.updateInternalPoseJointNames(_:)(&v18, PoseCount, v5, &v32, &v29, &v31, &v30, &v24, a1._rawValue, ModelSpacePoseCount, &v28, &v25, &v27, &v26);

        v12 += 7;
        --v11;
      }

      while (v11);
    }

    RENetworkMarkComponentDirty();

    $defer #1 () in SkeletalPosesComponent.updateInternalPoseJointNames(_:)(&v25);

    $defer #1 () in SkeletalPosesComponent.updateInternalPoseJointNames(_:)(&v29);
  }
}

void $defer #1 () in SkeletalPosesComponent.updateInternalPoseJointNames(_:)(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 16);

  if (v2)
  {
    v3 = 0;
    while (v3 < *(v1 + 16))
    {
      v4 = *(v1 + 32 + 8 * v3);
      v5 = *(v4 + 16);
      if (v5)
      {

        v6 = 32;
        do
        {
          free(*(v4 + v6));
          v6 += 8;
          --v5;
        }

        while (v5);
      }

      if (++v3 == v2)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_9:
  }
}

uint64_t closure #1 in SkeletalPosesComponent.updateInternalPoseJointNames(_:)(uint64_t *isUniquelyReferenced_nonNull_native, uint64_t a2, uint64_t a3, char **a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, char **a8, uint64_t a9, uint64_t a10, char **a11, uint64_t *a12, uint64_t a13, char **a14)
{
  v242 = *MEMORY[0x1E69E9840];
  v15 = isUniquelyReferenced_nonNull_native[1];
  v220 = *isUniquelyReferenced_nonNull_native;
  v219 = isUniquelyReferenced_nonNull_native[3];
  v218 = isUniquelyReferenced_nonNull_native[4];
  v217 = isUniquelyReferenced_nonNull_native[5];
  v16 = isUniquelyReferenced_nonNull_native[6];
  v224 = v15;
  v227 = v16;
  if ((isUniquelyReferenced_nonNull_native[2] & 1) == 0)
  {
    if (a2 < 0)
    {
      goto LABEL_214;
    }

    if (!a2)
    {
      goto LABEL_180;
    }

    v17 = 0;
    a12 = (v16 + 64);
    while (1)
    {
      if (v17 == v15)
      {
        *&v238 = v220;
        *(&v238 + 1) = v15;
        LOBYTE(v239) = 0;
        *(&v239 + 1) = v219;
        *&v240 = v218;
        *(&v240 + 1) = v217;
        *&v241 = v16;
        v18 = SkeletalPose.jointNames.getter();
        v19 = *a6;

        JointCount = swift_isUniquelyReferenced_nonNull_native();
        *a6 = v19;
        if ((JointCount & 1) == 0)
        {
          JointCount = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v19[2] + 1, 1, v19);
          v19 = JointCount;
          *a6 = JointCount;
        }

        v22 = v19[2];
        v21 = v19[3];
        v14 = v22 + 1;
        if (v22 >= v21 >> 1)
        {
          JointCount = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v22 + 1, 1, v19);
          v19 = JointCount;
          *a6 = JointCount;
        }

        v23 = 0;
        v19[2] = v14;
        v19[v22 + 4] = v18;
        v24 = *(v18 + 16);
        v25 = MEMORY[0x1E69E7CC0];
LABEL_14:
        v26 = (v18 + 40 + 16 * v23);
        while (v24 != v23)
        {
          if (v23 >= *(v18 + 16))
          {
            __break(1u);
LABEL_89:
            __break(1u);
LABEL_90:
            __break(1u);
            goto LABEL_91;
          }

          ++v23;
          v27 = v26 + 2;
          v14 = String.utf8CString.getter();
          v22 = strdup((v14 + 32));

          v26 = v27;
          if (v22)
          {
            JointCount = swift_isUniquelyReferenced_nonNull_native();
            if ((JointCount & 1) == 0)
            {
              JointCount = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v25 + 2) + 1, 1, v25);
              v25 = JointCount;
            }

            v29 = *(v25 + 2);
            v28 = *(v25 + 3);
            v14 = v29 + 1;
            if (v29 >= v28 >> 1)
            {
              JointCount = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v29 + 1, 1, v25);
              v25 = JointCount;
            }

            *(v25 + 2) = v14;
            *&v25[8 * v29 + 32] = v22;
            goto LABEL_14;
          }
        }

        v37 = *(v25 + 2);
        v38 = *a4;
        v39 = swift_isUniquelyReferenced_nonNull_native();
        *a4 = v38;
        if ((v39 & 1) == 0)
        {
          v38 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v38 + 2) + 1, 1, v38);
          *a4 = v38;
        }

        v41 = *(v38 + 2);
        v40 = *(v38 + 3);
        if (v41 >= v40 >> 1)
        {
          v38 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v40 > 1), v41 + 1, 1, v38);
          *a4 = v38;
        }

        *(v38 + 2) = v41 + 1;
        v42 = &v38[24 * v41];
        *(v42 + 4) = v37;
        *(v42 + 5) = v25 + 32;
        *(v42 + 6) = 0;
        v43 = *a5;
        v44 = swift_isUniquelyReferenced_nonNull_native();
        *a5 = v43;
        if ((v44 & 1) == 0)
        {
          v43 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v43[2] + 1, 1, v43);
          *a5 = v43;
        }

        v46 = v43[2];
        v45 = v43[3];
        v14 = v46 + 1;
        if (v46 >= v45 >> 1)
        {
          v43 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v45 > 1), v46 + 1, 1, v43);
          *a5 = v43;
        }

        v43[2] = v14;
        v43[v46 + 4] = v25;
        v47 = specialized BidirectionalCollection.distance(from:to:)(0, *(v227 + 16));
        if (v47)
        {
          v22 = v47;
          *&v238 = MEMORY[0x1E69E7CC0];
          v25 = &v238;
          JointCount = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v47 & ~(v47 >> 63), 0);
          if ((v22 & 0x8000000000000000) != 0)
          {
            goto LABEL_208;
          }

          v23 = v238;
          if (one-time initialization token for identity != -1)
          {
            JointCount = swift_once();
          }

          v48 = 0;
          v49 = a12;
          v50 = v227;
          while (1)
          {
            v26 = *(v50 + 16);
            if (v48 >= v26)
            {
              goto LABEL_90;
            }

            v51 = *(v49 - 2);
            v52 = *(v49 - 1);
            v53 = *v49;
            *&v238 = v23;
            v55 = *(v23 + 16);
            v54 = *(v23 + 24);
            v14 = v55 + 1;
            if (v55 >= v54 >> 1)
            {
              v25 = &v238;
              v223 = v51;
              v215 = v52;
              v211 = v53;
              JointCount = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v54 > 1), v55 + 1, 1);
              v53 = v211;
              v52 = v215;
              v51 = v223;
              v50 = v227;
              v23 = v238;
            }

            ++v48;
            *(v23 + 16) = v14;
            v56 = (v23 + 48 * v55);
            v56[2] = v51;
            v56[3] = v52;
            v56[4] = v53;
            v49 += 6;
            if (v22 == v48)
            {
              goto LABEL_78;
            }
          }
        }
      }

      else
      {
        JointCount = RESkeletalPoseDefinitionAssetGetJointCount();
        if (JointCount < 0)
        {
          goto LABEL_206;
        }

        v30 = JointCount;
        if (JointCount)
        {
          *&v238 = MEMORY[0x1E69E7CC0];
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, JointCount, 0);
          v31 = 0;
          v23 = v238;
          do
          {
            RESkeletalPoseDefinitionAssetGetJointName();
            JointCount = String.init(cString:)();
            v32 = JointCount;
            v14 = v33;
            *&v238 = v23;
            v35 = *(v23 + 16);
            v34 = *(v23 + 24);
            v22 = v35 + 1;
            if (v35 >= v34 >> 1)
            {
              JointCount = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v34 > 1), v35 + 1, 1);
              v23 = v238;
            }

            ++v31;
            *(v23 + 16) = v22;
            v36 = v23 + 16 * v35;
            *(v36 + 32) = v32;
            *(v36 + 40) = v14;
          }

          while (v30 != v31);
          v25 = MEMORY[0x1E69E7CC0];
        }

        else
        {
          v25 = MEMORY[0x1E69E7CC0];
          v22 = *(MEMORY[0x1E69E7CC0] + 16);
          v23 = MEMORY[0x1E69E7CC0];
        }

        v57 = 0;
        v58 = v23 + 40;
        *&v223 = v23 + 40;
LABEL_50:
        v26 = (v58 + 16 * v57);
        while (v22 != v57)
        {
          if (v57 >= *(v23 + 16))
          {
            goto LABEL_89;
          }

          ++v57;
          v59 = v26 + 2;
          v14 = String.utf8CString.getter();
          v60 = strdup((v14 + 32));

          v26 = v59;
          if (v60)
          {
            JointCount = swift_isUniquelyReferenced_nonNull_native();
            if ((JointCount & 1) == 0)
            {
              JointCount = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v25 + 2) + 1, 1, v25);
              v25 = JointCount;
            }

            v62 = *(v25 + 2);
            v61 = *(v25 + 3);
            v14 = v62 + 1;
            if (v62 >= v61 >> 1)
            {
              JointCount = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v61 > 1), v62 + 1, 1, v25);
              v25 = JointCount;
            }

            *(v25 + 2) = v14;
            *&v25[8 * v62 + 32] = v60;
            v58 = v23 + 40;
            goto LABEL_50;
          }
        }

        v63 = *(v25 + 2);
        v64 = *a4;
        v65 = swift_isUniquelyReferenced_nonNull_native();
        *a4 = v64;
        if ((v65 & 1) == 0)
        {
          v64 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v64 + 2) + 1, 1, v64);
          *a4 = v64;
        }

        v67 = *(v64 + 2);
        v66 = *(v64 + 3);
        if (v67 >= v66 >> 1)
        {
          v64 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v66 > 1), v67 + 1, 1, v64);
          *a4 = v64;
        }

        *(v64 + 2) = v67 + 1;
        v68 = &v64[24 * v67];
        *(v68 + 4) = v63;
        *(v68 + 5) = v25 + 32;
        *(v68 + 6) = 0;
        v69 = *a5;
        v70 = swift_isUniquelyReferenced_nonNull_native();
        *a5 = v69;
        if ((v70 & 1) == 0)
        {
          v69 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v69[2] + 1, 1, v69);
          *a5 = v69;
        }

        v72 = v69[2];
        v71 = v69[3];
        if (v72 >= v71 >> 1)
        {
          v69 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v71 > 1), v72 + 1, 1, v69);
          *a5 = v69;
        }

        v69[2] = v72 + 1;
        v69[v72 + 4] = v25;
        v73 = *a6;
        v74 = swift_isUniquelyReferenced_nonNull_native();
        *a6 = v73;
        if ((v74 & 1) == 0)
        {
          v73 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v73[2] + 1, 1, v73);
          *a6 = v73;
        }

        v76 = v73[2];
        v75 = v73[3];
        if (v76 >= v75 >> 1)
        {
          v73 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v75 > 1), v76 + 1, 1, v73);
          *a6 = v73;
        }

        v73[2] = v76 + 1;
        v73[v76 + 4] = v23;
        if (v30)
        {
          v236 = MEMORY[0x1E69E7CC0];
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v30, 0);
          v77 = 0;
          v23 = v236;
          do
          {
            v239 = 0u;
            v240 = 0u;
            v238 = 0u;
            RESkeletalPoseDefinitionAssetGetJointDefaultTransform();
            v78 = v238;
            v79 = v239;
            v80 = v240;
            v82 = *(v236 + 16);
            v81 = *(v236 + 24);
            if (v82 >= v81 >> 1)
            {
              v223 = v238;
              v215 = v239;
              v212 = v240;
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v81 > 1), v82 + 1, 1);
              v80 = v212;
              v79 = v215;
              v78 = v223;
            }

            ++v77;
            *(v236 + 16) = v82 + 1;
            v83 = (v236 + 48 * v82);
            v83[2] = v78;
            v83[3] = v79;
            v83[4] = v80;
          }

          while (v30 != v77);
          goto LABEL_78;
        }
      }

      v23 = MEMORY[0x1E69E7CC0];
LABEL_78:
      v84 = *a7;
      v85 = swift_isUniquelyReferenced_nonNull_native();
      *a7 = v84;
      if ((v85 & 1) == 0)
      {
        v84 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v84[2] + 1, 1, v84);
        *a7 = v84;
      }

      v87 = v84[2];
      v86 = v84[3];
      if (v87 >= v86 >> 1)
      {
        v84 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v86 > 1), v87 + 1, 1, v84);
        *a7 = v84;
      }

      v84[2] = v87 + 1;
      v84[v87 + 4] = v23;
      RESkeletalPoseComponentGetPoseName();
      v88 = String.init(cString:)();
      v90 = v89;
      v91 = *a8;
      v92 = swift_isUniquelyReferenced_nonNull_native();
      *a8 = v91;
      if ((v92 & 1) == 0)
      {
        v91 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v91 + 2) + 1, 1, v91);
        *a8 = v91;
      }

      v94 = *(v91 + 2);
      v93 = *(v91 + 3);
      v14 = v94 + 1;
      if (v94 >= v93 >> 1)
      {
        v91 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v93 > 1), v94 + 1, 1, v91);
        *a8 = v91;
      }

      ++v17;
      *(v91 + 2) = v14;
      v95 = &v91[16 * v94];
      *(v95 + 4) = v88;
      *(v95 + 5) = v90;
      v15 = v224;
      v16 = v227;
      if (v17 == a2)
      {
        goto LABEL_180;
      }
    }
  }

  if (a10 < 0)
  {
LABEL_213:
    __break(1u);
LABEL_214:
    __break(1u);
  }

  if (a10)
  {
    v14 = 0;
    *&v223 = a13;
    *&v215 = v16 + 64;
    do
    {
      if (v14 == v15)
      {
        *&v238 = v220;
        *(&v238 + 1) = v15;
        LOBYTE(v239) = 1;
        *(&v239 + 1) = v219;
        *&v240 = v218;
        *(&v240 + 1) = v217;
        *&v241 = v16;
        v96 = SkeletalPose.jointNames.getter();
        v97 = *v223;

        v98 = swift_isUniquelyReferenced_nonNull_native();
        *v223 = v97;
        if ((v98 & 1) == 0)
        {
          v97 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v97[2] + 1, 1, v97);
          *v223 = v97;
        }

        v100 = v97[2];
        v99 = v97[3];
        if (v100 >= v99 >> 1)
        {
          v97 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v99 > 1), v100 + 1, 1, v97);
          *v223 = v97;
        }

        v101 = 0;
        v97[2] = v100 + 1;
        v97[v100 + 4] = v96;
        v102 = *(v96 + 16);
        v103 = MEMORY[0x1E69E7CC0];
LABEL_99:
        v104 = v96 + 40 + 16 * v101;
        while (v102 != v101)
        {
          if (v101 >= *(v96 + 16))
          {
            __break(1u);
LABEL_201:
            __break(1u);
LABEL_202:
            __break(1u);
LABEL_203:
            __break(1u);
LABEL_204:
            __break(1u);
LABEL_205:
            __break(1u);
LABEL_206:
            __break(1u);
LABEL_207:
            __break(1u);
LABEL_208:
            __break(1u);
LABEL_209:
            __break(1u);
LABEL_210:
            __break(1u);
            goto LABEL_211;
          }

          ++v101;
          v105 = v104 + 16;
          v106 = String.utf8CString.getter();
          v107 = strdup((v106 + 32));

          v104 = v105;
          if (v107)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v103 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v103 + 2) + 1, 1, v103);
            }

            v109 = *(v103 + 2);
            v108 = *(v103 + 3);
            if (v109 >= v108 >> 1)
            {
              v103 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v108 > 1), v109 + 1, 1, v103);
            }

            *(v103 + 2) = v109 + 1;
            *&v103[8 * v109 + 32] = v107;
            goto LABEL_99;
          }
        }

        v121 = *(v103 + 2);
        v122 = *a11;
        v123 = swift_isUniquelyReferenced_nonNull_native();
        *a11 = v122;
        if ((v123 & 1) == 0)
        {
          v122 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v122 + 2) + 1, 1, v122);
          *a11 = v122;
        }

        v125 = *(v122 + 2);
        v124 = *(v122 + 3);
        if (v125 >= v124 >> 1)
        {
          v122 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v124 > 1), v125 + 1, 1, v122);
          *a11 = v122;
        }

        *(v122 + 2) = v125 + 1;
        v126 = &v122[24 * v125];
        *(v126 + 4) = v121;
        *(v126 + 5) = v103 + 32;
        *(v126 + 6) = 0;
        v127 = *a12;
        v128 = swift_isUniquelyReferenced_nonNull_native();
        *a12 = v127;
        if ((v128 & 1) == 0)
        {
          v127 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v127[2] + 1, 1, v127);
          *a12 = v127;
        }

        v130 = v127[2];
        v129 = v127[3];
        if (v130 >= v129 >> 1)
        {
          v127 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v129 > 1), v130 + 1, 1, v127);
          *a12 = v127;
        }

        v127[2] = v130 + 1;
        v127[v130 + 4] = v103;
        v131 = *v223;
        v132 = swift_isUniquelyReferenced_nonNull_native();
        *v223 = v131;
        if ((v132 & 1) == 0)
        {
          v131 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v131[2] + 1, 1, v131);
          *v223 = v131;
        }

        v134 = v131[2];
        v133 = v131[3];
        if (v134 >= v133 >> 1)
        {
          v131 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v133 > 1), v134 + 1, 1, v131);
          *v223 = v131;
        }

        v131[2] = v134 + 1;
        v131[v134 + 4] = v96;
        v135 = specialized BidirectionalCollection.distance(from:to:)(0, *(v227 + 16));
        if (v135)
        {
          v136 = v135;
          *&v238 = MEMORY[0x1E69E7CC0];
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v135 & ~(v135 >> 63), 0);
          if ((v136 & 0x8000000000000000) == 0)
          {
            v17 = v238;
            if (one-time initialization token for identity != -1)
            {
              swift_once();
            }

            v137 = 0;
            v138 = v215;
            v139 = v227;
            while (v137 < *(v139 + 16))
            {
              v233 = v138[-2];
              v229 = *v138;
              *v140.i64 = simd_matrix4x4(v138[-1]);
              v144 = v143;
              *&v238 = v17;
              v146 = *(v17 + 16);
              v145 = *(v17 + 24);
              if (v146 >= v145 >> 1)
              {
                v209 = v140;
                v213 = v143;
                v207 = v142;
                v208 = v141;
                specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v145 > 1), v146 + 1, 1);
                v142 = v207;
                v141 = v208;
                v140 = v209;
                v144 = v213;
                v139 = v227;
                v17 = v238;
              }

              v147 = vaddq_f32(v229, v144);
              v147.i32[3] = v144.i32[3];
              ++v137;
              *(v17 + 16) = v146 + 1;
              v148 = (v17 + (v146 << 6));
              v148[2] = vmulq_n_f32(v140, v233.f32[0]);
              v148[3] = vmulq_lane_f32(v141, *v233.f32, 1);
              v148[4] = vmulq_laneq_f32(v142, v233, 2);
              v148[5] = v147;
              v138 += 3;
              if (v136 == v137)
              {
                goto LABEL_167;
              }
            }

            goto LABEL_202;
          }

          goto LABEL_209;
        }

        v17 = MEMORY[0x1E69E7CC0];
LABEL_167:
        v25 = *a14;
        v181 = swift_isUniquelyReferenced_nonNull_native();
        *a14 = v25;
        if ((v181 & 1) == 0)
        {
          v25 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v25 + 2) + 1, 1, v25);
          *a14 = v25;
        }

        v23 = *(v25 + 2);
        v182 = *(v25 + 3);
        v22 = v23 + 1;
        if (v23 < v182 >> 1)
        {
          goto LABEL_92;
        }

        JointCount = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v182 > 1), v23 + 1, 1, v25);
        v25 = JointCount;
        v26 = a14;
      }

      else
      {
        ModelSpaceJointCount = RESkeletalPoseDefinitionAssetGetModelSpaceJointCount();
        if (ModelSpaceJointCount < 0)
        {
          goto LABEL_207;
        }

        v111 = ModelSpaceJointCount;
        if (ModelSpaceJointCount)
        {
          *&v238 = MEMORY[0x1E69E7CC0];
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, ModelSpaceJointCount, 0);
          v112 = 0;
          v17 = v238;
          do
          {
            RESkeletalPoseDefinitionAssetGetModelSpaceJointName();
            v113 = String.init(cString:)();
            *&v238 = v17;
            v116 = *(v17 + 16);
            v115 = *(v17 + 24);
            v117 = v116 + 1;
            if (v116 >= v115 >> 1)
            {
              v119 = v113;
              v120 = v114;
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v115 > 1), v116 + 1, 1);
              v114 = v120;
              v113 = v119;
              v17 = v238;
            }

            ++v112;
            *(v17 + 16) = v117;
            v118 = v17 + 16 * v116;
            *(v118 + 32) = v113;
            *(v118 + 40) = v114;
          }

          while (v111 != v112);
          v149 = MEMORY[0x1E69E7CC0];
        }

        else
        {
          v149 = MEMORY[0x1E69E7CC0];
          v117 = *(MEMORY[0x1E69E7CC0] + 16);
          v17 = MEMORY[0x1E69E7CC0];
        }

        v150 = 0;
        v151 = v17 + 40;
LABEL_139:
        v152 = v151 + 16 * v150;
        while (v117 != v150)
        {
          if (v150 >= *(v17 + 16))
          {
            goto LABEL_201;
          }

          ++v150;
          v153 = v152 + 16;
          v154 = String.utf8CString.getter();
          v155 = strdup((v154 + 32));

          v152 = v153;
          if (v155)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v149 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v149 + 2) + 1, 1, v149);
            }

            v157 = *(v149 + 2);
            v156 = *(v149 + 3);
            if (v157 >= v156 >> 1)
            {
              v149 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v156 > 1), v157 + 1, 1, v149);
            }

            *(v149 + 2) = v157 + 1;
            *&v149[8 * v157 + 32] = v155;
            v151 = v17 + 40;
            goto LABEL_139;
          }
        }

        v158 = *(v149 + 2);
        v159 = *a11;
        v160 = swift_isUniquelyReferenced_nonNull_native();
        *a11 = v159;
        if ((v160 & 1) == 0)
        {
          v159 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v159 + 2) + 1, 1, v159);
          *a11 = v159;
        }

        v162 = *(v159 + 2);
        v161 = *(v159 + 3);
        if (v162 >= v161 >> 1)
        {
          v159 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v161 > 1), v162 + 1, 1, v159);
          *a11 = v159;
        }

        *(v159 + 2) = v162 + 1;
        v163 = &v159[24 * v162];
        *(v163 + 4) = v158;
        *(v163 + 5) = v149 + 32;
        *(v163 + 6) = 0;
        v164 = *a12;
        v165 = swift_isUniquelyReferenced_nonNull_native();
        *a12 = v164;
        if ((v165 & 1) == 0)
        {
          v164 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v164[2] + 1, 1, v164);
          *a12 = v164;
        }

        v167 = v164[2];
        v166 = v164[3];
        if (v167 >= v166 >> 1)
        {
          v164 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v166 > 1), v167 + 1, 1, v164);
          *a12 = v164;
        }

        v164[2] = v167 + 1;
        v164[v167 + 4] = v149;
        v168 = *v223;

        v169 = swift_isUniquelyReferenced_nonNull_native();
        *v223 = v168;
        if ((v169 & 1) == 0)
        {
          v168 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v168[2] + 1, 1, v168);
          *v223 = v168;
        }

        v171 = v168[2];
        v170 = v168[3];
        if (v171 >= v170 >> 1)
        {
          v168 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v170 > 1), v171 + 1, 1, v168);
          *v223 = v168;
        }

        v168[2] = v171 + 1;
        v168[v171 + 4] = v17;
        if (v111)
        {
          v237 = MEMORY[0x1E69E7CC0];
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v111, 0);
          v172 = 0;
          v173 = v237;
          do
          {
            v240 = 0u;
            v241 = 0u;
            v238 = 0u;
            v239 = 0u;
            RESkeletalPoseDefinitionAssetGetModelSpaceJointDefaultTransform();
            v174 = v238;
            v175 = v239;
            v176 = v240;
            v177 = v241;
            v179 = *(v237 + 16);
            v178 = *(v237 + 24);
            if (v179 >= v178 >> 1)
            {
              v230 = v239;
              v234 = v238;
              v210 = v241;
              v214 = v240;
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v178 > 1), v179 + 1, 1);
              v177 = v210;
              v176 = v214;
              v175 = v230;
              v174 = v234;
            }

            ++v172;
            *(v237 + 16) = v179 + 1;
            v180 = (v237 + (v179 << 6));
            v180[2] = v174;
            v180[3] = v175;
            v180[4] = v176;
            v180[5] = v177;
          }

          while (v111 != v172);
        }

        else
        {
          v173 = MEMORY[0x1E69E7CC0];
        }

        v183 = *a14;
        v184 = swift_isUniquelyReferenced_nonNull_native();
        *a14 = v183;
        if ((v184 & 1) == 0)
        {
          v183 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v183 + 2) + 1, 1, v183);
          *a14 = v183;
        }

        v186 = *(v183 + 2);
        v185 = *(v183 + 3);
        if (v186 >= v185 >> 1)
        {
          v183 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v185 > 1), v186 + 1, 1, v183);
          *a14 = v183;
        }

        *(v183 + 2) = v186 + 1;
        *&v183[8 * v186 + 32] = v173;
        v25 = *v223;
        v187 = swift_isUniquelyReferenced_nonNull_native();
        *v223 = v25;
        if ((v187 & 1) == 0)
        {
          v25 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v25 + 2) + 1, 1, v25);
          *v223 = v25;
        }

        v23 = *(v25 + 2);
        v188 = *(v25 + 3);
        v22 = v23 + 1;
        if (v23 < v188 >> 1)
        {
          goto LABEL_92;
        }

        JointCount = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v188 > 1), v23 + 1, 1, v25);
        v25 = JointCount;
        v26 = v223;
      }

LABEL_91:
      *v26 = JointCount;
LABEL_92:
      ++v14;
      *(v25 + 2) = v22;
      *&v25[8 * v23 + 32] = v17;
      v15 = v224;
      v16 = v227;
    }

    while (v14 != a10);
  }

LABEL_180:
  PoseMeshMapCount = RESkeletalPoseDefinitionAssetGetPoseMeshMapCountEx();
  if (PoseMeshMapCount < 0)
  {
    goto LABEL_210;
  }

  if (PoseMeshMapCount)
  {
    v190 = 0;
    v191 = MEMORY[0x1E69E7CC0];
    v231 = PoseMeshMapCount;
    do
    {
      LOBYTE(v238) = 0;
      DWORD1(v240) = 0;
      v239 = 0uLL;
      *(&v238 + 1) = 0;
      LOBYTE(v240) = 0;
      RESkeletalPoseDefinitionAssetGetPoseMeshMapEx();
      v192 = v238;
      v193 = *(&v238 + 1);
      v194 = v239;
      v235 = v240;
      v195 = DWORD1(v240);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v191 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v191 + 2) + 1, 1, v191);
      }

      v197 = *(v191 + 2);
      v196 = *(v191 + 3);
      if (v197 >= v196 >> 1)
      {
        v191 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v196 > 1), v197 + 1, 1, v191);
      }

      *(v191 + 2) = v197 + 1;
      v198 = &v191[40 * v197];
      v198[32] = v192;
      ++v190;
      *(v198 + 5) = v193;
      *(v198 + 3) = v194;
      v198[64] = v235;
      *(v198 + 17) = v195;
    }

    while (v231 != v190);
  }

  v199 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v199 + 120, &v238);
  v200 = *(&v239 + 1);
  v201 = v240;
  __swift_project_boxed_opaque_existential_1(&v238, *(&v239 + 1));
  (*(v201 + 32))(v200, v201);
  __swift_destroy_boxed_opaque_existential_1(&v238);

  RESkeletalPoseDefinitionAssetCreateAssetWithDefinitionsEx();

  RESkeletalPoseComponentSetSkeletalPoseDefinition();
  result = RESkeletalPoseComponentEnsureSkeletalPosesInitialized();
  if (a2 < 0)
  {
LABEL_211:
    __break(1u);
LABEL_212:
    __break(1u);
    goto LABEL_213;
  }

  if (a2)
  {
    v203 = 0;
    v204 = 0;
    while (v204 < *(*a7 + 16))
    {
      RESkeletalPoseComponentSetJointTransforms();
      if (v204 >= *(*a8 + 2))
      {
        goto LABEL_204;
      }

      String.utf8CString.getter();
      RESkeletalPoseComponentSetPoseName();

      v203 += 16;
      if (a2 == ++v204)
      {
        goto LABEL_194;
      }
    }

    goto LABEL_203;
  }

LABEL_194:
  if (a10 < 0)
  {
    goto LABEL_212;
  }

  if (a10)
  {
    v205 = 0;
    while (v205 < *(*a14 + 2))
    {
      v206 = v205 + 1;
      result = RESkeletalPoseComponentSetModelSpaceJointTransforms();
      v205 = v206;
      if (a10 == v206)
      {
        return result;
      }
    }

    goto LABEL_205;
  }

  return result;
}

uint64_t specialized static SkeletalPosesComponent.getCoreAsset(_:)(void *a1)
{
  RESkeletalPoseComponentEnsureSkeletalPosesInitialized();
  result = RESkeletalPoseComponentGetSkeletalPoseDefinition();
  if (!result)
  {
    Entity = REComponentGetEntity();
    type metadata accessor for Entity();
    if (REEntityGetSwiftObject())
    {
      swift_dynamicCastClassUnconditional();
    }

    else
    {
      result = REEntityIsBeingDestroyed();
      if (result)
      {
        __break(1u);
        return result;
      }

      v3 = static Entity.entityInfoType(_:)(Entity);
      if (v3)
      {
        v4 = (*(v3 + 232))();
        v5 = *(v4 + 16);

        MEMORY[0x1C68F9740](v5, 0);
        *(v4 + 16) = Entity;
        MEMORY[0x1C68F9740](Entity, v4);
      }

      else
      {
        makeEntity(for:)(Entity);
      }
    }

    Component = REEntityGetComponent();
    if (Component)
    {
      v12[0] = Component;
      static ModelComponent.__fromCore(_:borrowStrongReference:)(v12, 0, &v13);

      if (*(v13 + 16))
      {
        type metadata accessor for __ServiceLocator();
        static __ServiceLocator.shared.getter();
        v8 = v7;
        swift_beginAccess();
        outlined init with copy of __REAssetService(v8 + 120, &v13);

        v9 = v14;
        v10 = v15;
        __swift_project_boxed_opaque_existential_1(&v13, v14);
        (*(v10 + 32))(v9, v10);
        __swift_destroy_boxed_opaque_existential_1(&v13);
        AssetForMesh = RESkeletalPoseDefinitionAssetCreateAssetForMesh();
        RESkeletalPoseComponentSetSkeletalPoseDefinition();

        return AssetForMesh;
      }
    }

    else
    {
    }

    return 0;
  }

  return result;
}

uint64_t Scene.performQuery(_:rootEntity:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *(a1 + 48);
  v7 = *(a1 + 64);
  v55 = *a1;
  v56 = *(a1 + 56);
  if (!a2)
  {
    if (v6)
    {
      outlined copy of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v6, v56);

      outlined copy of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v6, v56);
      v8 = v6(v3);
      outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v6, v56);

      result = outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v6, v56);
      if (v8)
      {
        goto LABEL_63;
      }
    }
  }

  v10 = swift_allocObject();
  *(v10 + 16) = MEMORY[0x1E69E7CC0];
  v53 = a3;
  v54 = (v10 + 16);
  v52 = v10;
  if (v7 && *(v7 + 16))
  {
    v59 = partial apply for closure #1 in Scene.performQuery(_:rootEntity:);
    v60 = v10;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> ();
    v58 = &block_descriptor_15;
    v11 = _Block_copy(aBlock);
    swift_retain_n();

    REQueryEvaluateEntityQueryWithRootEntity();
    _Block_release(v11);

LABEL_62:
    swift_beginAccess();
    v8 = *(v52 + 16);

    a3 = v53;
LABEL_63:
    *a3 = v8;
    return result;
  }

  AllEntitiesArray = RESceneGetAllEntitiesArray();
  if (a2)
  {
    if (!v12)
    {
      goto LABEL_62;
    }
  }

  else if (!v12)
  {
    goto LABEL_62;
  }

  v14 = 8 * v12;
  while (1)
  {
    v15 = *AllEntitiesArray;
    if (REEntityIsNonHiddenAndInHierarchy())
    {
      break;
    }

LABEL_14:
    ++AllEntitiesArray;
    v14 -= 8;
    if (!v14)
    {
      goto LABEL_62;
    }
  }

  v58 = MEMORY[0x1E69E6B70];
  aBlock[0] = v15;
  outlined init with copy of Any(aBlock, v62);
  swift_dynamicCast();
  v16 = v61;
  __swift_destroy_boxed_opaque_existential_1(aBlock);
  if (REEntityGetSwiftObject())
  {
    type metadata accessor for Entity();
    v17 = swift_dynamicCastClassUnconditional();
    goto LABEL_58;
  }

  if ((REEntityIsBeingDestroyed() & 1) == 0)
  {
    if (one-time initialization token for customComponentTypeObjectIdToHandles != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    if (*(static SceneManager.customComponentTypeObjectIdToHandles + 16))
    {
      specialized __RawDictionaryStorage.find<A>(_:)(&type metadata for __EntityInfoComponent);
      if (v18)
      {
LABEL_35:
        swift_endAccess();
        if (REEntityGetCustomComponent())
        {
          Object = RECustomComponentGetObject();
          if (Object)
          {
            v35 = *Object;
            if (*(Object + 8))
            {
              v36 = 1;
            }

            else
            {
              v36 = v35 == 0;
            }

            if (v36)
            {
            }

            else
            {
              v37 = *v35;
              v38 = String.init(utf8String:)();
              if (v39)
              {
                v40 = v38;
              }

              else
              {
                v40 = 0;
              }

              if (v39)
              {
                v41 = v39;
              }

              else
              {
                v41 = 0xE000000000000000;
              }

              v35 = specialized static __EntityInfoComponent.makeRawData(isNinja:entityTypeName:)(v37 == 42, v40, v41);

              type metadata accessor for IntrospectionDataCleanupHelper();
              *(swift_allocObject() + 16) = v35;
            }

            if (!v35)
            {
              goto LABEL_67;
            }

            v42 = String.init(utf8String:)();
            if (v43)
            {
              v44 = v43;
            }

            else
            {
              v42 = 0;
              v44 = 0xE000000000000000;
            }

            v45 = MEMORY[0x1C68F3280](v42, v44);

            v46 = NSClassFromString(v45);

            if (v46)
            {
              swift_getObjCClassMetadata();
              type metadata accessor for Entity();
              v47 = swift_dynamicCastMetatype();
              if (v47)
              {
                v48 = (*(v47 + 232))();
                v49 = *(v48 + 16);

                MEMORY[0x1C68F9740](v49, 0);
                *(v48 + 16) = v16;
                MEMORY[0x1C68F9740](v16, v48);

LABEL_59:
                aBlock[0] = v48;

                outlined copy of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v6, v56);
                v50 = v55(aBlock);

                outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v6, v56);
                if (v50)
                {

                  MEMORY[0x1C68F3650](v51);
                  if (*((*v54 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v54 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                  {
                    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                  }

                  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                }

                goto LABEL_14;
              }
            }
          }
        }

        v17 = makeEntity(for:)(v16);
LABEL_58:
        v48 = v17;
        goto LABEL_59;
      }
    }

    swift_endAccess();
    v19 = specialized static SceneManager.customComponentTypeHelper(_:typeName:)(&type metadata for __EntityInfoComponent, &protocol witness table for __EntityInfoComponent, 0, 0);
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = static SceneManager.customComponentTypeObjectIdToHandles;
    v62[0] = static SceneManager.customComponentTypeObjectIdToHandles;
    static SceneManager.customComponentTypeObjectIdToHandles = 0x8000000000000000;
    v23 = specialized __RawDictionaryStorage.find<A>(_:)(&type metadata for __EntityInfoComponent);
    v24 = *(v21 + 16);
    v25 = (v22 & 1) == 0;
    v26 = v24 + v25;
    if (__OFADD__(v24, v25))
    {
      goto LABEL_65;
    }

    v27 = v22;
    if (*(v21 + 24) < v26)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v26, isUniquelyReferenced_nonNull_native);
      v28 = specialized __RawDictionaryStorage.find<A>(_:)(&type metadata for __EntityInfoComponent);
      if ((v27 & 1) != (v29 & 1))
      {
        goto LABEL_68;
      }

      v23 = v28;
      v30 = v62[0];
      if ((v27 & 1) == 0)
      {
        goto LABEL_32;
      }

LABEL_30:
      *(v30[7] + 8 * v23) = v19;
LABEL_34:
      static SceneManager.customComponentTypeObjectIdToHandles = v30;
      goto LABEL_35;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      v30 = v62[0];
      if (v22)
      {
        goto LABEL_30;
      }
    }

    else
    {
      specialized _NativeDictionary.copy()();
      v30 = v62[0];
      if (v27)
      {
        goto LABEL_30;
      }
    }

LABEL_32:
    v30[(v23 >> 6) + 8] |= 1 << v23;
    *(v30[6] + 8 * v23) = &type metadata for __EntityInfoComponent;
    *(v30[7] + 8 * v23) = v19;
    v31 = v30[2];
    v32 = __OFADD__(v31, 1);
    v33 = v31 + 1;
    if (v32)
    {
      goto LABEL_66;
    }

    v30[2] = v33;
    goto LABEL_34;
  }

  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t closure #1 in Scene.performQuery(_:rootEntity:)(uint64_t a1, uint64_t a2)
{
  if (REEntityGetSwiftObject())
  {
    type metadata accessor for Entity();
    swift_dynamicCastClassUnconditional();
  }

  else
  {
    result = REEntityIsBeingDestroyed();
    if (result)
    {
      __break(1u);
      return result;
    }

    specialized static Entity.entityInfoType(_:)(a1);
    if (v5)
    {
      v6 = (*(v5 + 232))();
      v7 = *(v6 + 16);

      MEMORY[0x1C68F9740](v7, 0);
      *(v6 + 16) = a1;
      MEMORY[0x1C68F9740](a1, v6);
    }

    else
    {
      makeEntity(for:)(a1);
    }
  }

  swift_beginAccess();

  MEMORY[0x1C68F3650](v8);
  if (*((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
}

uint64_t thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> ()(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

{
  return (*(a1 + 32))(a2);
}

uint64_t Scene.performQuery<A>(_:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v6 = swift_allocObject();
  swift_getAssociatedTypeWitness();
  *(v6 + 16) = static Array._allocateUninitialized(_:)();
  v8 = type metadata accessor for Query(0, a1, a2, v7);
  if (Query.internalQuery.getter(v8))
  {
    v9 = swift_allocObject();
    v9[2] = a1;
    v9[3] = a2;
    v9[4] = v6;
    v12[4] = partial apply for closure #1 in Scene.performQuery<A>(_:);
    v12[5] = v9;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 1107296256;
    v12[2] = thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> ();
    v12[3] = &block_descriptor_9;
    v10 = _Block_copy(v12);

    REQueryEvaluateEntityQuery();
    _Block_release(v10);
  }

  swift_beginAccess();
  QueryResult.init(_:)(*(v6 + 16), a3);
}

uint64_t closure #1 in Scene.performQuery<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = type metadata accessor for Optional();
  v26 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v25 - v10;
  v12 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v25 - v17;
  result = REIsEntityHidden();
  if ((result & 1) == 0)
  {
    v25[0] = v9;
    v20 = REEntityGetSwiftObject();
    v25[1] = a2;
    if (v20)
    {
      type metadata accessor for Entity();
      v21 = swift_dynamicCastClassUnconditional();
    }

    else
    {
      result = REEntityIsBeingDestroyed();
      if (result)
      {
        __break(1u);
        return result;
      }

      specialized static Entity.entityInfoType(_:)(a1);
      if (v23)
      {
        v22 = (*(v23 + 232))();
        v24 = *(v22 + 16);

        MEMORY[0x1C68F9740](v24, 0);
        *(v22 + 16) = a1;
        MEMORY[0x1C68F9740](a1, v22);

LABEL_8:
        v27[0] = v22;
        (*(a4 + 24))(v27, a3, a4);
        if ((*(v12 + 48))(v11, 1, AssociatedTypeWitness) == 1)
        {

          return (*(v26 + 8))(v11, v25[0]);
        }

        else
        {
          (*(v12 + 32))(v18, v11, AssociatedTypeWitness);
          (*(v12 + 16))(v15, v18, AssociatedTypeWitness);
          swift_beginAccess();
          type metadata accessor for Array();
          Array.append(_:)();
          swift_endAccess();

          return (*(v12 + 8))(v18, AssociatedTypeWitness);
        }
      }

      v21 = makeEntity(for:)(a1);
    }

    v22 = v21;
    goto LABEL_8;
  }

  return result;
}

uint64_t Scene.performQuery<A>(_:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v7 = a1[3];
  v23 = a1[2];
  v24 = v7;
  v25 = *(a1 + 8);
  v8 = a1[1];
  aBlock = *a1;
  v22 = v8;
  v9 = swift_allocObject();
  type metadata accessor for QuerySelectors.ComponentQueryResult(0, a2, a3, v10);
  *(v9 + 16) = static Array._allocateUninitialized(_:)();
  v12 = type metadata accessor for QuerySelectors.ComponentTypeSelector(255, a2, a3, v11);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for QuerySelectors.ComponentTypeSelector<A>, v12);
  v15 = type metadata accessor for Query(0, v12, WitnessTable, v14);
  if (!Query.internalQuery.getter(v15))
  {
    goto LABEL_5;
  }

  v20 = a4;
  v16 = swift_allocObject();
  v16[2] = a2;
  v16[3] = a3;
  v16[4] = v9;

  v17 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v17 + 80, &aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit14__SceneService_pMd, &_s10RealityKit14__SceneService_pMR);
  type metadata accessor for SceneManager();
  swift_dynamicCast();
  if (SceneManager.componentTypeToComponentClass(_:)(a2, a3) || (static Component.registerComponent()(a2, a3), (result = SceneManager.componentTypeToComponentClass(_:)(a2, a3)) != 0))
  {
    *&v23 = partial apply for closure #1 in Scene.performQuery<A>(_:);
    *(&v23 + 1) = v16;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    *&v22 = thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> ();
    *(&v22 + 1) = &block_descriptor_18_0;
    v19 = _Block_copy(&aBlock);

    REQueryEvaluateComponentQuery();

    _Block_release(v19);
    a4 = v20;
LABEL_5:
    swift_beginAccess();
    QueryResult.init(_:)(*(v9 + 16), a4);
  }

  __break(1u);
  return result;
}

uint64_t closure #1 in Scene.performQuery<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __n128 a5)
{
  result = REIsEntityHidden();
  if ((result & 1) == 0)
  {
    if (REEntityGetSwiftObject())
    {
      type metadata accessor for Entity();
      v9 = swift_dynamicCastClassUnconditional();
    }

    else
    {
      result = REEntityIsBeingDestroyed();
      if (result)
      {
        __break(1u);
        return result;
      }

      specialized static Entity.entityInfoType(_:)(a1);
      if (v12)
      {
        v11 = (*(v12 + 232))();
        v13 = *(v11 + 16);

        MEMORY[0x1C68F9740](v13, 0);
        *(v11 + 16) = a1;
        MEMORY[0x1C68F9740](a1, v11);

        goto LABEL_8;
      }

      v9 = makeEntity(for:)(a1);
    }

    v11 = v9;
LABEL_8:
    type metadata accessor for QuerySelectors.ComponentQueryResult(0, a3, a4, v10);
    QuerySelectors.ComponentQueryResult.__allocating_init(entity:)(v11);
    swift_beginAccess();
    type metadata accessor for Array();

    Array.append(_:)();
    swift_endAccess();
  }

  return result;
}

double block_copy_helper_15(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t specialized static CameraMath.intrinsicIsSimplePinhole(matrix:allowShear:floatingPointTol:)(double *a1, char a2, double a3)
{
  v3 = *a1;
  v4 = *(a1 + 2);
  if ((a2 & 1) == 0)
  {
    v5 = fabs(*&v4) < a3;
    if (*&v3 <= 0.0)
    {
      v6 = 1;
      goto LABEL_7;
    }

LABEL_5:
    v6 = *(&v4 + 1) <= 0.0;
    goto LABEL_7;
  }

  v5 = 1;
  v6 = 1;
  if (*&v3 > 0.0)
  {
    goto LABEL_5;
  }

LABEL_7:
  v7 = fabs(a1[2]);
  v8 = fabs(a1[6]) >= a3;
  v10 = fabs(*(&v3 + 1)) >= a3 || v7 >= a3 || v8;
  return ((fabs(a1[10] + -1.0) < a3) & ~(v6 | v10)) & v5;
}

BOOL specialized static CameraMath.intrinsicsAreEqual(left:right:toleranceInPixel:)(double *a1, double *a2, double a3)
{
  v3 = *a1;
  v4 = *(a1 + 4);
  v5 = a1[5];
  v6 = a1[9];
  v7 = *a2;
  v8 = a2[5];
  v9 = *&v4 + *&v4;
  v10 = v6 + v6;
  *&v4 = vabdd_f64(*&v4, a2[8]);
  v11 = vabdd_f64(v6, a2[9]);
  v12 = (*&v3 + *&v3) / v9;
  v13 = v12 * vabdd_f64(*a1, *a2);
  v14 = v12 * (v10 * vabdd_f64(v5, v8)) / v9;
  v15 = sqrt((*&v4 - v13) * (*&v4 - v13) + (v11 - v14) * (v11 - v14));
  v16 = sqrt((v13 + *&v4) * (v13 + *&v4) + (v11 + v14) * (v11 + v14));
  if (v15 > v16)
  {
    v16 = v15;
  }

  v17 = *&v3 <= 0.0;
  if (v5 <= 0.0)
  {
    v17 = 1;
  }

  v18 = 1;
  if (fabs(*(&v3 + 1)) < 0.00001 && fabs(a1[2]) < 0.00001)
  {
    v18 = fabs(a1[6]) >= 0.00001;
  }

  v19 = vabdd_f64(a1[4], a2[4]);
  result = 0;
  if (!v17 && !v18 && fabs(a1[10] + -1.0) < 0.00001 && fabs(*(&v7 + 1)) < 0.00001 && fabs(a2[2]) < 0.00001 && *&v7 > 0.0 && v8 > 0.0 && fabs(a2[6]) < 0.00001 && fabs(a2[10] + -1.0) < 0.00001 && v16 < a3 && v19 < 1.0 / v10 * a3)
  {
    return 1;
  }

  return result;
}

unint64_t specialized Array.replaceSubrange<A>(_:with:)(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v5 = *v3;
  v6 = *(*v3 + 16);
  if (v6 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = result;
  v8 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v9 = __OFSUB__(1, v8);
  v10 = 1 - v8;
  if (v9)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = v6 + v10;
  if (__OFADD__(v6, v10))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v5;
  if (!isUniquelyReferenced_nonNull_native || v11 > v5[3] >> 1)
  {
    if (v6 <= v11)
    {
      v14 = v11;
    }

    else
    {
      v14 = v6;
    }

    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v14, 1, v5);
    *v3 = v5;
  }

  result = specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v7, a2, 1, a3);
  *v3 = v5;
  return result;
}

double key path setter for __RKEntityTriggerGroup.triggers : __RKEntityTriggerGroup(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 24) = v2;

  return result;
}

uint64_t __RKEntityTriggerGroup.__allocating_init(triggers:)(unint64_t a1)
{
  v2 = swift_allocObject();
  __RKEntityTriggerGroup.init(triggers:)(a1);
  return v2;
}

uint64_t __RKEntityTriggerGroup.init(triggers:)(unint64_t a1)
{
  v2 = a1;
  *(v1 + 24) = a1;
  v3 = (v1 + 24);
  if (!(a1 >> 62))
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_47:
    *(v1 + 16) = 0;
    *(v1 + 18) = 0;
    return v1;
  }

LABEL_90:
  v4 = __CocoaSet.count.getter();
  if (!v4)
  {
    goto LABEL_47;
  }

LABEL_3:
  if ((v2 & 0xC000000000000001) == 0)
  {
    v9 = 0;
    v10 = 0;
    v11 = v2 + 32;
    v12 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    do
    {
      while (1)
      {
        if (v10 >= v12)
        {
LABEL_83:
          __break(1u);
LABEL_84:
          __break(1u);
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

        v13 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          goto LABEL_84;
        }

        v2 = *(v11 + 8 * v10);
        type metadata accessor for __RKEntityTriggerGroup();
        if (!swift_dynamicCastClass())
        {
          break;
        }

        v9 = 1;
        ++v10;
        if (v13 == v4)
        {
          goto LABEL_22;
        }
      }

      ++v10;
    }

    while (v13 != v4);
    if (v9)
    {
      goto LABEL_22;
    }

    goto LABEL_47;
  }

  v5 = 0;
  v6 = 0;
  do
  {
    while (1)
    {
      MEMORY[0x1C68F41F0](v6, v2);
      v7 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
LABEL_82:
        __break(1u);
        goto LABEL_83;
      }

      type metadata accessor for __RKEntityTriggerGroup();
      v8 = swift_dynamicCastClass();
      swift_unknownObjectRelease();
      if (v8)
      {
        break;
      }

      ++v6;
      if (v7 == v4)
      {

        if (v5)
        {
          goto LABEL_22;
        }

        goto LABEL_47;
      }
    }

    v5 = 1;
    ++v6;
  }

  while (v7 != v4);

LABEL_22:
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1C1887600;
  *(v14 + 56) = MEMORY[0x1E69E6158];
  *(v14 + 32) = 0xD000000000000042;
  *(v14 + 40) = 0x80000001C18E5D00;
  print(_:separator:terminator:)();

  result = swift_beginAccess();
  v16 = *v3;
  v32 = *v3 >> 62;
  v17 = *v3 & 0xFFFFFFFFFFFFFF8;
  if (v32)
  {
    goto LABEL_96;
  }

  for (i = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = result)
  {
    v2 = 0;
    while (1)
    {
      if (i == v2)
      {
        if (v32)
        {
          result = __CocoaSet.count.getter();
          v2 = result;
        }

        else
        {
          v2 = *(v17 + 16);
        }

        goto LABEL_44;
      }

      if ((v16 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1C68F41F0](v2, v16);
      }

      else
      {
        if (v2 >= *(v17 + 16))
        {
          goto LABEL_85;
        }
      }

      type metadata accessor for __RKEntityTriggerGroup();
      v19 = swift_dynamicCastClass();

      v20 = v2 + 1;
      v21 = __OFADD__(v2, 1);
      if (v19)
      {
        break;
      }

      ++v2;
      if (v21)
      {
        goto LABEL_86;
      }
    }

    if (v21)
    {
      goto LABEL_102;
    }

    if (!v32)
    {
      break;
    }

    result = __CocoaSet.count.getter();
    if (v20 == result)
    {
      goto LABEL_44;
    }

LABEL_48:
    v17 = v2 + 5;
    while (1)
    {
      v23 = v17 - 4;
      if ((v16 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1C68F41F0](v17 - 4, v16);
      }

      else
      {
        if ((v23 & 0x8000000000000000) != 0)
        {
          goto LABEL_87;
        }

        if (v23 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_88;
        }
      }

      v24 = swift_dynamicCastClass();

      if (!v24)
      {
        if (v23 != v2)
        {
          if ((v16 & 0xC000000000000001) != 0)
          {
            v25 = MEMORY[0x1C68F41F0](v2, v16);
            v26 = MEMORY[0x1C68F41F0](v17 - 4, v16);
          }

          else
          {
            if ((v2 & 0x8000000000000000) != 0)
            {
              goto LABEL_99;
            }

            v27 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v2 >= v27)
            {
              goto LABEL_100;
            }

            if (v23 >= v27)
            {
              goto LABEL_101;
            }

            v25 = *(v16 + 8 * v2 + 32);
            v26 = *(v16 + 8 * v17);
          }

          isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
          *v3 = v16;
          if (!isUniquelyReferenced_nonNull_bridgeObject || (v16 & 0x8000000000000000) != 0 || (v16 & 0x4000000000000000) != 0)
          {
            v16 = specialized _ArrayBuffer._consumeAndCreateNew()();
            *v3 = v16;
          }

          if ((v2 & 0x8000000000000000) != 0)
          {
            goto LABEL_93;
          }

          v29 = v16 & 0xFFFFFFFFFFFFFF8;
          if (v2 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_94;
          }

          *((v16 & 0xFFFFFFFFFFFFFF8) + 8 * v2 + 0x20) = v26;

          *v3 = v16;
          if ((v16 & 0x8000000000000000) != 0 || (v16 & 0x4000000000000000) != 0)
          {
            v16 = specialized _ArrayBuffer._consumeAndCreateNew()();
            *v3 = v16;
            v29 = v16 & 0xFFFFFFFFFFFFFF8;
            if ((v23 & 0x8000000000000000) != 0)
            {
LABEL_81:
              __break(1u);
              goto LABEL_82;
            }
          }

          else if ((v23 & 0x8000000000000000) != 0)
          {
            goto LABEL_81;
          }

          if (v23 >= *(v29 + 16))
          {
            goto LABEL_95;
          }

          *(v29 + 8 * v17) = v25;

          *v3 = v16;
        }

        v30 = __OFADD__(v2++, 1);
        if (v30)
        {
          break;
        }
      }

      v30 = __OFADD__(v23, 1);
      v31 = v17 - 3;
      if (v30)
      {
        goto LABEL_89;
      }

      if (v16 >> 62)
      {
        result = __CocoaSet.count.getter();
      }

      else
      {
        result = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      ++v17;
      if (v31 == result)
      {
        goto LABEL_44;
      }
    }

    __break(1u);
LABEL_93:
    __break(1u);
LABEL_94:
    __break(1u);
LABEL_95:
    __break(1u);
LABEL_96:
    result = __CocoaSet.count.getter();
  }

  result = *(v17 + 16);
  if (v20 != result)
  {
    goto LABEL_48;
  }

LABEL_44:
  if (v16 >> 62)
  {
    result = __CocoaSet.count.getter();
    v22 = result;
    if (result >= v2)
    {
      goto LABEL_46;
    }
  }

  else
  {
    v22 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v22 >= v2)
    {
LABEL_46:
      specialized Array.replaceSubrange<A>(_:with:)(v2, v22, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
      swift_endAccess();
      goto LABEL_47;
    }
  }

  __break(1u);
LABEL_99:
  __break(1u);
LABEL_100:
  __break(1u);
LABEL_101:
  __break(1u);
LABEL_102:
  __break(1u);
  return result;
}

uint64_t __RKEntityTriggerGroup.matches(with:)(uint64_t a1)
{
  v12 = 0;
  v13 = 0xE000000000000000;

  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1C68F3410](0, 0xE000000000000000);

  MEMORY[0x1C68F3410](8285, 0xE200000000000000);
  v3 = StaticString.description.getter();
  MEMORY[0x1C68F3410](v3);

  MEMORY[0x1C68F3410](8250, 0xE200000000000000);

  swift_beginAccess();
  v4 = *(v1 + 24);
  if (v4 >> 62)
  {
LABEL_18:
    v5 = __CocoaSet.count.getter();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v5)
  {
    v6 = 0;
    do
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x1C68F41F0](v6, v4);
        v8 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
LABEL_13:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_18;
        }

        v7 = *(v4 + 8 * v6 + 32);

        v8 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          goto LABEL_13;
        }
      }

      if ((*(*v7 + 184))(a1))
      {

        v12 = 91;
        v13 = 0xE100000000000000;
        v11 = static os_log_type_t.info.getter();
        specialized InteractionsLogger.log(_:_:)(v11, &v12);

        return 1;
      }

      ++v6;
    }

    while (v8 != v5);
  }

  v12 = 91;
  v13 = 0xE100000000000000;
  v9 = static os_log_type_t.info.getter();
  specialized InteractionsLogger.log(_:_:)(v9, &v12);

  return 0;
}

unint64_t __RKEntityTriggerGroup.description.getter()
{
  v1 = v0;
  swift_beginAccess();
  v2 = *(v0 + 24);
  if (v2 >> 62)
  {
    goto LABEL_17;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v3 >= 1)
  {
    while (1)
    {
      MEMORY[0x1C68F3410](5966090, 0xE300000000000000);
      v4 = *(v1 + 24);
      if ((v4 & 0xC000000000000001) != 0)
      {
        break;
      }

      if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v5 = *(v4 + 32);

        goto LABEL_6;
      }

LABEL_16:
      __break(1u);
LABEL_17:
      v3 = __CocoaSet.count.getter();
      if (v3 < 1)
      {
        goto LABEL_8;
      }
    }

    v5 = MEMORY[0x1C68F41F0](0, v4);

LABEL_6:
    v7 = (*(*v5 + 192))(v6);
    v9 = v8;

    MEMORY[0x1C68F3410](v7, v9);

    v10 = v3 - 1;
    if (v3 != 1)
    {
      v12 = 5;
      do
      {
        MEMORY[0x1C68F3410](8236, 0xE200000000000000);
        v13 = *(v1 + 24);
        if ((v13 & 0xC000000000000001) != 0)
        {

          v14 = MEMORY[0x1C68F41F0](v12 - 4, v13);
        }

        else
        {
          if ((v12 - 4) >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_16;
          }

          v14 = *(v13 + 8 * v12);
        }

        v16 = (*(*v14 + 192))(v15);
        v18 = v17;

        MEMORY[0x1C68F3410](v16, v18);

        ++v12;
        --v10;
      }

      while (v10);
    }

    MEMORY[0x1C68F3410](93, 0xE100000000000000);
  }

LABEL_8:
  MEMORY[0x1C68F3410](665949, 0xE300000000000000);
  return 0xD00000000000001ALL;
}

uint64_t __RKEntityTriggerGroup.copy(with:)@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v14 = MEMORY[0x1E69E7CC0];
  result = swift_beginAccess();
  v5 = v1[3];
  if (!(v5 >> 62))
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_18:
    v8 = MEMORY[0x1E69E7CC0];
    if (!(MEMORY[0x1E69E7CC0] >> 62))
    {
      goto LABEL_15;
    }

    goto LABEL_19;
  }

  result = __CocoaSet.count.getter();
  v6 = result;
  if (!result)
  {
    goto LABEL_18;
  }

LABEL_3:
  if (v6 >= 1)
  {

    v7 = 0;
    v8 = MEMORY[0x1E69E7CC0];
    do
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x1C68F41F0](v7, v5);
      }

      else
      {
        v9 = *(v5 + 8 * v7 + 32);
      }

      [v9 copyWithZone_];
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      type metadata accessor for __RKEntityTrigger();
      if (swift_dynamicCast())
      {

        MEMORY[0x1C68F3650](v10);
        if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v8 = v14;
      }

      else
      {
      }

      ++v7;
    }

    while (v6 != v7);

    if (!(v8 >> 62))
    {
LABEL_15:
      if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
      {
LABEL_16:
        v11 = type metadata accessor for __RKEntityTriggerGroup();
        v12 = swift_allocObject();
        result = __RKEntityTriggerGroup.init(triggers:)(v8);
        a1[3] = v11;
        *a1 = v12;
        return result;
      }

      goto LABEL_20;
    }

LABEL_19:
    if (__CocoaSet.count.getter() >= 1)
    {
      goto LABEL_16;
    }

LABEL_20:

    v13.receiver = v2;
    v13.super_class = type metadata accessor for __RKEntityTriggerGroup();
    objc_msgSendSuper2(&v13, sel_copyWithZone_, 0);
    _bridgeAnyObjectToAny(_:)();
    return swift_unknownObjectRelease();
  }

  __break(1u);
  return result;
}

uint64_t __RKEntityTriggerGroup.clone(matching:newEntity:)(uint64_t a1, uint64_t a2)
{
  v13 = MEMORY[0x1E69E7CC0];
  swift_beginAccess();
  v6 = *(v3 + 24);
  if (!(v6 >> 62))
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_21:
    v2 = MEMORY[0x1E69E7CC0];
    if (!(MEMORY[0x1E69E7CC0] >> 62))
    {
      goto LABEL_15;
    }

    goto LABEL_22;
  }

  v7 = __CocoaSet.count.getter();
  if (!v7)
  {
    goto LABEL_21;
  }

LABEL_3:
  if (v7 < 1)
  {
    __break(1u);
    goto LABEL_29;
  }

  v8 = 0;
  v2 = MEMORY[0x1E69E7CC0];
  do
  {
    if ((v6 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x1C68F41F0](v8, v6);
    }

    else
    {
      v9 = *(v6 + 8 * v8 + 32);
    }

    if ((*(*v9 + 200))(a1, a2))
    {

      MEMORY[0x1C68F3650](v10);
      if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v2 = v13;
    }

    else
    {
    }

    ++v8;
  }

  while (v7 != v8);

  if (!(v2 >> 62))
  {
LABEL_15:
    result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result == 1)
    {
      goto LABEL_16;
    }

LABEL_24:
    if (result < 2)
    {

      return 0;
    }

    else
    {
      type metadata accessor for __RKEntityTriggerGroup();
      v12 = swift_allocObject();
      __RKEntityTriggerGroup.init(triggers:)(v2);
    }

    return v12;
  }

LABEL_22:
  result = __CocoaSet.count.getter();
  if (result != 1)
  {
    result = __CocoaSet.count.getter();
    goto LABEL_24;
  }

LABEL_16:
  if ((v2 & 0xC000000000000001) != 0)
  {
LABEL_29:
    v12 = MEMORY[0x1C68F41F0](0, v2);
    goto LABEL_19;
  }

  if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v12 = *(v2 + 32);

LABEL_19:

    return v12;
  }

  __break(1u);
  return result;
}

uint64_t __RKEntityTriggerGroup.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

unint64_t specialized Array.replaceSubrange<A>(_:with:)(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 16);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > v4[3] >> 1)
  {
    if (v5 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }

    v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    *v2 = v4;
  }

  result = specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v6, a2, 0);
  *v2 = v4;
  return result;
}