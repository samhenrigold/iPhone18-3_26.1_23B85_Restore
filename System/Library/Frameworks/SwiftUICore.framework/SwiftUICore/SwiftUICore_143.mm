uint64_t assignWithCopy for MappedViewElement(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);

  return a1;
}

uint64_t assignWithTake for MappedViewElement(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);

  return a1;
}

double destroy for MappedViews.MappedElements(void *a1)
{
  __swift_destroy_boxed_opaque_existential_1(a1);

  return result;
}

uint64_t assignWithCopy for MappedViews.MappedElements(uint64_t a1, uint64_t a2, __n128 a3)
{
  __swift_assign_boxed_opaque_existential_1(a1, a2, a3);
  *(a1 + 40) = *(a2 + 40);

  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);

  *(a1 + 64) = *(a2 + 64);
  *(a1 + 68) = *(a2 + 68);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 76) = *(a2 + 76);
  *(a1 + 80) = *(a2 + 80);

  *(a1 + 88) = *(a2 + 88);
  *(a1 + 92) = *(a2 + 92);
  *(a1 + 96) = *(a2 + 96);

  *(a1 + 104) = *(a2 + 104);
  *(a1 + 108) = *(a2 + 108);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = *(a2 + 120);

  return a1;
}

uint64_t assignWithTake for MappedViews.MappedElements(uint64_t a1, uint64_t a2)
{
  __swift_destroy_boxed_opaque_existential_1(a1);
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  v5 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v5;

  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);

  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);

  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);

  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = *(a2 + 120);

  return a1;
}

uint64_t assignWithCopy for MappedViews.MappedList.Init(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);

  return a1;
}

uint64_t assignWithTake for MappedViews.MappedList.Init(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);

  *(a1 + 48) = *(a2 + 48);

  return a1;
}

uint64_t assignWithCopy for MappedViews.ElementView(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 24) = *(a2 + 24);
  return a1;
}

uint64_t assignWithTake for MappedViews.ElementView(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  return a1;
}

double destroy for MappedViews.MappedList(void *a1)
{
  __swift_destroy_boxed_opaque_existential_1(a1);

  return result;
}

uint64_t initializeWithCopy for MappedViews.MappedList(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  *(a1 + 24) = v4;
  (**(v4 - 8))();
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);

  return a1;
}

uint64_t assignWithCopy for MappedViews.MappedList(uint64_t a1, uint64_t a2, __n128 a3)
{
  __swift_assign_boxed_opaque_existential_1(a1, a2, a3);
  *(a1 + 40) = *(a2 + 40);

  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);

  *(a1 + 64) = *(a2 + 64);
  *(a1 + 68) = *(a2 + 68);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 76) = *(a2 + 76);
  *(a1 + 80) = *(a2 + 80);

  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);

  return a1;
}

uint64_t assignWithTake for MappedViews.MappedList(uint64_t a1, uint64_t a2)
{
  __swift_destroy_boxed_opaque_existential_1(a1);
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  v5 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v5;

  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);

  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);

  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);

  return a1;
}

void _s14AttributeGraph0A0Vy7SwiftUI8ViewList_pGMaTm_1(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for AnyTrackedValue(255, &lazy cache variable for type metadata for ViewList, &protocol descriptor for ViewList);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t assignWithCopy for MappedViews.Transform(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);

  return a1;
}

uint64_t assignWithTake for MappedViews.Transform(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);

  *(a1 + 48) = *(a2 + 48);

  return a1;
}

BOOL static ProcessEnvironment.BOOL(forKey:defaultValue:)(uint64_t a1, uint64_t a2, BOOL a3)
{
  v4 = String.utf8CString.getter();
  v5 = getenv((v4 + 32));

  if (v5)
  {
    return atoi(v5) != 0;
  }

  return a3;
}

const char *one-time initialization function for tracingOptions()
{
  result = getenv("SWIFTUI_TRACE");
  if (result && (result = atoi(result), (result & 0x80000000) != 0))
  {
    __break(1u);
  }

  else
  {
    static ProcessEnvironment.tracingOptions = result;
  }

  return result;
}

SwiftUI::FluidSpringAnimation __swiftcall FluidSpringAnimation.init(response:dampingFraction:blendDuration:)(Swift::Double response, Swift::Double dampingFraction, Swift::Double blendDuration)
{
  *v3 = response;
  v3[1] = dampingFraction;
  v3[2] = blendDuration;
  result.blendDuration = blendDuration;
  result.dampingFraction = dampingFraction;
  result.response = response;
  return result;
}

uint64_t implicit closure #2 in FluidSpringAnimation.animate<A>(value:time:context:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, double a5@<D0>, double a6@<D1>, uint64_t a7@<X8>)
{
  v13 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v29 - v17;
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v29 - v21;
  v23 = *(v13 + 16);
  v23(&v29 - v21, v20);
  v25 = type metadata accessor for SpringState(0, a3, a4, v24);
  (v23)(v15, a2 + *(v25 + 36), a3);
  v26 = 6.28318531 / a5 * (6.28318531 / a5);
  v27 = sqrt(v26);
  VectorArithmetic.scaled(by:)(a3, a4, v18, (v27 + v27) * a6 / v26);
  (*(v13 + 8))(v15, a3);
  return AnimationSettlingContext.Data.init(delta:velocity:)(v22, v18, a3, a4, a7);
}

uint64_t FluidSpringAnimation.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x193AC11E0](*&v1);
  if (v2 == 0.0)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = v2;
  }

  MEMORY[0x193AC11E0](*&v4);
  if (v3 == 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = v3;
  }

  return MEMORY[0x193AC11E0](*&v5);
}

Swift::Int FluidSpringAnimation.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  Hasher.init(_seed:)();
  if (v1 == 0.0)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = v1;
  }

  MEMORY[0x193AC11E0](*&v4);
  if (v2 == 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = v2;
  }

  MEMORY[0x193AC11E0](*&v5);
  if (v3 == 0.0)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = v3;
  }

  MEMORY[0x193AC11E0](*&v6);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance FluidSpringAnimation(uint64_t a1)
{
  Hasher.init(_seed:)();
  FluidSpringAnimation.hash(into:)();
  return Hasher._finalize()();
}

double *FluidSpringAnimation.encode(to:)(double *result)
{
  v2 = v1;
  v3 = result;
  v5 = *v2;
  v4 = v2[1];
  v6 = v2[2];
  if (*v2 != 0.0)
  {
    ProtobufEncoder.encodeVarint(_:)(9uLL);
    v7 = *(v3 + 1);
    result = (v7 + 8);
    if (__OFADD__(v7, 8))
    {
      __break(1u);
      goto LABEL_15;
    }

    if (*(v3 + 2) < result)
    {
      goto LABEL_17;
    }

    *(v3 + 1) = result;
    *(*v3 + v7) = v5;
  }

  if (v4 != 0.0)
  {
    goto LABEL_6;
  }

LABEL_9:
  while (v6 != 0.0)
  {
    ProtobufEncoder.encodeVarint(_:)(0x19uLL);
    v9 = *(v3 + 1);
    result = (v9 + 8);
    if (!__OFADD__(v9, 8))
    {
      if (*(v3 + 2) < result)
      {
        result = ProtobufEncoder.growBufferSlow(to:)(result);
        *result = v6;
      }

      else
      {
        *(v3 + 1) = result;
        *(*v3 + v9) = v6;
      }

      return result;
    }

    while (1)
    {
      __break(1u);
LABEL_17:
      result = ProtobufEncoder.growBufferSlow(to:)(result);
      *result = v5;
      if (v4 == 0.0)
      {
        break;
      }

LABEL_6:
      ProtobufEncoder.encodeVarint(_:)(0x11uLL);
      v8 = *(v3 + 1);
      result = (v8 + 8);
      if (!__OFADD__(v8, 8))
      {
        if (*(v3 + 2) < result)
        {
          result = ProtobufEncoder.growBufferSlow(to:)(result);
          *result = v4;
        }

        else
        {
          *(v3 + 1) = result;
          *(*v3 + v8) = v4;
        }

        goto LABEL_9;
      }

LABEL_15:
      __break(1u);
    }
  }

  return result;
}

double *protocol witness for ProtobufEncodableMessage.encode(to:) in conformance FluidSpringAnimation(double *result)
{
  v2 = v1;
  v3 = result;
  v5 = *v2;
  v4 = v2[1];
  v6 = v2[2];
  if (*v2 != 0.0)
  {
    ProtobufEncoder.encodeVarint(_:)(9uLL);
    v7 = *(v3 + 1);
    v8 = v7 + 8;
    if (__OFADD__(v7, 8))
    {
      __break(1u);
      goto LABEL_19;
    }

    if (*(v3 + 2) < v8)
    {
      goto LABEL_21;
    }

    *(v3 + 1) = v8;
    result = (*v3 + v7);
    goto LABEL_8;
  }

  if (v4 != 0.0)
  {
    goto LABEL_9;
  }

  while (v6 != 0.0)
  {
LABEL_13:
    ProtobufEncoder.encodeVarint(_:)(0x19uLL);
    v10 = *(v3 + 1);
    v8 = v10 + 8;
    if (!__OFADD__(v10, 8))
    {
      if (*(v3 + 2) < v8)
      {
        result = ProtobufEncoder.growBufferSlow(to:)(v8);
      }

      else
      {
        *(v3 + 1) = v8;
        result = (*v3 + v10);
      }

      *result = v6;
      return result;
    }

    while (1)
    {
      __break(1u);
LABEL_21:
      result = ProtobufEncoder.growBufferSlow(to:)(v8);
LABEL_8:
      *result = v5;
      if (v4 == 0.0)
      {
        break;
      }

LABEL_9:
      ProtobufEncoder.encodeVarint(_:)(0x11uLL);
      v9 = *(v3 + 1);
      v8 = v9 + 8;
      if (!__OFADD__(v9, 8))
      {
        if (*(v3 + 2) < v8)
        {
          result = ProtobufEncoder.growBufferSlow(to:)(v8);
        }

        else
        {
          *(v3 + 1) = v8;
          result = (*v3 + v9);
        }

        *result = v4;
        if (v6 == 0.0)
        {
          return result;
        }

        goto LABEL_13;
      }

LABEL_19:
      __break(1u);
    }
  }

  return result;
}

uint64_t assignWithCopy for SpringState(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 24);
  v7(a1, a2, v5);
  v8 = *(v6 + 64);
  v9 = *(v6 + 80);
  v10 = (v8 + v9 + a2) & ~v9;
  v7((v8 + v9 + a1) & ~v9, v10, v5);
  v11 = (v8 + v9 + v10) & ~v9;
  v7((v8 + v9 + ((v8 + v9 + a1) & ~v9)) & ~v9, v11, v5);
  v12 = ((v8 + 7 + ((v8 + v9 + ((v8 + v9 + a1) & ~v9)) & ~v9)) & 0xFFFFFFFFFFFFFFF8);
  v13 = ((v8 + 7 + v11) & 0xFFFFFFFFFFFFFFF8);
  *v12 = *v13;
  v14 = ((v12 + 15) & 0xFFFFFFFFFFFFFFF8);
  v15 = ((v13 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v14 = *v15;
  v16 = ((v14 + 15) & 0xFFFFFFFFFFFFFFF8);
  v17 = ((v15 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v16 = *v17;
  *((v16 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v17 + 15) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t initializeWithTake for SpringState(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 32);
  v7(a1, a2, v5);
  v8 = *(v6 + 64);
  v9 = *(v6 + 80);
  v10 = (v8 + v9 + a2) & ~v9;
  v7((v8 + v9 + a1) & ~v9, v10, v5);
  v11 = (v8 + v9 + v10) & ~v9;
  v7((v8 + v9 + ((v8 + v9 + a1) & ~v9)) & ~v9, v11, v5);
  v12 = ((v8 + 7 + ((v8 + v9 + ((v8 + v9 + a1) & ~v9)) & ~v9)) & 0xFFFFFFFFFFFFFFF8);
  v13 = ((v8 + 7 + v11) & 0xFFFFFFFFFFFFFFF8);
  *v12 = *v13;
  v14 = ((v12 + 15) & 0xFFFFFFFFFFFFFFF8);
  v15 = ((v13 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v14 = *v15;
  v16 = ((v14 + 15) & 0xFFFFFFFFFFFFFFF8);
  v17 = ((v15 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v16 = *v17;
  *((v16 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v17 + 15) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t assignWithTake for SpringState(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 40);
  v7(a1, a2, v5);
  v8 = *(v6 + 64);
  v9 = *(v6 + 80);
  v10 = (v8 + v9 + a2) & ~v9;
  v7((v8 + v9 + a1) & ~v9, v10, v5);
  v11 = (v8 + v9 + v10) & ~v9;
  v7((v8 + v9 + ((v8 + v9 + a1) & ~v9)) & ~v9, v11, v5);
  v12 = ((v8 + 7 + ((v8 + v9 + ((v8 + v9 + a1) & ~v9)) & ~v9)) & 0xFFFFFFFFFFFFFFF8);
  v13 = ((v8 + 7 + v11) & 0xFFFFFFFFFFFFFFF8);
  *v12 = *v13;
  v14 = ((v12 + 15) & 0xFFFFFFFFFFFFFFF8);
  v15 = ((v13 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v14 = *v15;
  v16 = ((v14 + 15) & 0xFFFFFFFFFFFFFFF8);
  v17 = ((v15 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v16 = *v17;
  *((v16 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v17 + 15) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t getEnumTagSinglePayload for SpringState(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (!a2)
  {
    return 0;
  }

  if (v5 >= a2)
  {
    return (*(v4 + 48))(a1);
  }

  v6 = *(*(*(a3 + 16) - 8) + 64);
  v7 = ((((((((v6 + ((v6 + *(v4 + 80) + ((v6 + *(v4 + 80)) & ~*(v4 + 80))) & ~*(v4 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  v8 = a2 - v5;
  v9 = v7 & 0xFFFFFFF8;
  if ((v7 & 0xFFFFFFF8) != 0)
  {
    v10 = 2;
  }

  else
  {
    v10 = v8 + 1;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v12 > 1)
  {
    if (v12 == 2)
    {
      v13 = *(a1 + v7);
      if (!v13)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v13 = *(a1 + v7);
      if (!v13)
      {
        goto LABEL_24;
      }
    }
  }

  else if (!v12 || (v13 = *(a1 + v7)) == 0)
  {
LABEL_24:
    if (v5)
    {
      return (*(v4 + 48))(a1);
    }

    return 0;
  }

  v14 = v13 - 1;
  if (v9)
  {
    v14 = 0;
    LODWORD(v9) = *a1;
  }

  return v5 + (v9 | v14) + 1;
}

unsigned int *storeEnumTagSinglePayload for SpringState(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = v5;
  v7 = *(v5 + 84);
  v8 = ((((((((*(v5 + 64) + ((*(v5 + 64) + *(v6 + 80) + ((*(v5 + 64) + *(v6 + 80)) & ~*(v6 + 80))) & ~*(v6 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v7 >= a3)
  {
    v12 = 0;
    v13 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v9 = a3 - v7;
    if (((((((((*(v5 + 64) + ((*(v5 + 64) + *(v5 + 80) + ((*(v5 + 64) + *(v5 + 80)) & ~*(v5 + 80))) & ~*(v5 + 80)) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v10 = v9 + 1;
    }

    else
    {
      v10 = 2;
    }

    if (v10 >= 0x10000)
    {
      v11 = 4;
    }

    else
    {
      v11 = 2;
    }

    if (v10 < 0x100)
    {
      v11 = 1;
    }

    if (v10 >= 2)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    v13 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_14:
      if (v12 > 1)
      {
        if (v12 != 2)
        {
          *(result + v8) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_30;
        }

        *(result + v8) = 0;
      }

      else if (v12)
      {
        *(result + v8) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_30;
      }

      if (!a2)
      {
        return result;
      }

LABEL_30:
      v17 = *(v6 + 56);

      return v17();
    }
  }

  if (v8)
  {
    v14 = 1;
  }

  else
  {
    v14 = v13;
  }

  if (v8)
  {
    v15 = ~v7 + a2;
    v16 = result;
    bzero(result, v8);
    result = v16;
    *v16 = v15;
  }

  if (v12 > 1)
  {
    if (v12 == 2)
    {
      *(result + v8) = v14;
    }

    else
    {
      *(result + v8) = v14;
    }
  }

  else if (v12)
  {
    *(result + v8) = v14;
  }

  return result;
}

uint64_t outlined destroy of AnimationSettlingContext<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>(uint64_t a1)
{
  type metadata accessor for SpringState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>(0, &lazy cache variable for type metadata for AnimationSettlingContext<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>, type metadata accessor for AnimationSettlingContext);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata accessor for SpringState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>(255);
    v7 = v6;
    _s7SwiftUI14AnimatablePairVy12CoreGraphics7CGFloatVAFGACyxq_GAA16VectorArithmeticAAWlTm_0(&lazy protocol witness table cache variable for type AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>);
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void specialized SeedValues.collect()()
{
  v1 = v0;
  v2 = *v0;
  v3 = *v0 + 64;
  v4 = 1 << *(*v0 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(*v0 + 64);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  while (1)
  {
    v9 = v8;
    if (!v6)
    {
      break;
    }

    v10 = v8;
LABEL_13:
    v12 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v13 = v12 | (v10 << 6);
    v14 = *(*(v2 + 48) + 8 * v13);
    v15 = (*(v2 + 56) + 640 * v13);
    memcpy(__dst, v15, 0x27CuLL);
    memcpy(__src, v15, 0x27CuLL);
    v28 = v14;
    memcpy(v29, __src, sizeof(v29));
    _ViewInputs.base.modify();
    outlined init with copy of SeedValue<GlassContainer.EntryState>(__dst, v25, v16, v17);
    v18 = v28;
    memcpy(v30, v29, sizeof(v30));
    v19 = v29[158];
    v8 = v10;
LABEL_14:
    memcpy(v29, v30, 0x278uLL);
    v28 = v18;
    v29[158] = v19;
    if (_s7SwiftUI36AccessibilityDataSeriesConfigurationVSgWOg(&v28) == 1)
    {

      return;
    }

    memcpy(__src, v30, 0x278uLL);
    __src[158] = v19;
    outlined destroy of SeedValue<GlassContainer.EntryState>(__src);
    if (v19 != *(v1 + 2))
    {
      v20 = specialized __RawDictionaryStorage.find<A>(_:)(v18);
      if (v21)
      {
        v22 = v20;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v24 = *v1;
        v25[0] = *v1;
        if (!isUniquelyReferenced_nonNull_native)
        {
          specialized _NativeDictionary.copy()();
          v24 = v25[0];
        }

        memcpy(__dst, (*(v24 + 56) + 640 * v22), 0x27CuLL);
        outlined destroy of SeedValue<GlassContainer.EntryState>(__dst);
        specialized _NativeDictionary._delete(at:)(v22, v24);
        *v1 = v24;
      }
    }
  }

  if (v7 <= v8 + 1)
  {
    v11 = v8 + 1;
  }

  else
  {
    v11 = v7;
  }

  v8 = v11 - 1;
  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v7)
    {
      _s7SwiftUI14GlassContainerO5EntryV8StableIDV3key_AA9SeedValueVyAC0E5StateVG5valuetSgWOi0_(&v28);
      v18 = v28;
      memcpy(v30, v29, sizeof(v30));
      v6 = 0;
      v19 = v29[158];
      goto LABEL_14;
    }

    v6 = *(v3 + 8 * v10);
    ++v9;
    if (v6)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
}

{
  v1 = 1 << *(*v0 + 32);
  v2 = -1;
  if (v1 < 64)
  {
    v2 = ~(-1 << v1);
  }

  v3 = v2 & *(*v0 + 64);
  v4 = (v1 + 63) >> 6;
  v5 = 0;

  v6 = v23;
  if (v3)
  {
LABEL_10:
    while (1)
    {
      v8 = __clz(__rbit64(v3)) | (v5 << 6);
      v9 = *(v24 + 48) + 40 * v8;
      v10 = *v9;
      v11 = *(v9 + 8);
      v12 = *(v9 + 16);
      v13 = *(v9 + 24);
      v14 = *(v9 + 32);
      v15 = *(*(v24 + 56) + 16 * v8 + 8);
      outlined copy of ResolvedIDs.Key(*v9, v11, v12, v13, *(v9 + 32));
      if (v14 > 0xFB)
      {
        break;
      }

      v3 &= v3 - 1;
      v26[0] = v10;
      v26[1] = v11;
      v26[2] = v12;
      v26[3] = v13;
      v27 = v14;
      if (v15 == *(v22 + 8) || (v16 = specialized __RawDictionaryStorage.find<A>(_:)(v26), (v17 & 1) == 0))
      {
        outlined destroy of ResolvedIDs.Key(v26);
        v6 = v23;
        if (!v3)
        {
          goto LABEL_6;
        }
      }

      else
      {
        v18 = v16;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v20 = *v22;
        v25 = *v22;
        if (!isUniquelyReferenced_nonNull_native)
        {
          specialized _NativeDictionary.copy()();
          v20 = v25;
        }

        v21 = *(v20 + 48) + 40 * v18;
        outlined consume of ResolvedIDs.Key(*v21, *(v21 + 8), *(v21 + 16), *(v21 + 24), *(v21 + 32));
        specialized _NativeDictionary._delete(at:)(v18, v20);
        outlined destroy of ResolvedIDs.Key(v26);
        *v22 = v20;
        v6 = v23;
        if (!v3)
        {
          goto LABEL_6;
        }
      }
    }

LABEL_17:
  }

  else
  {
LABEL_6:
    while (1)
    {
      v7 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v7 >= v4)
      {
        goto LABEL_17;
      }

      v3 = *(v6 + 8 * v7);
      ++v5;
      if (v3)
      {
        v5 = v7;
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

{
  v1 = 1 << *(*v0 + 32);
  v2 = -1;
  if (v1 < 64)
  {
    v2 = ~(-1 << v1);
  }

  v3 = v2 & *(*v0 + 64);
  v4 = (v1 + 63) >> 6;
  v5 = 0;

  v6 = v23;
  if (v3)
  {
LABEL_10:
    while (1)
    {
      v8 = __clz(__rbit64(v3)) | (v5 << 6);
      v9 = *(v24 + 48) + 40 * v8;
      v10 = *v9;
      v11 = *(v9 + 8);
      v12 = *(v9 + 16);
      v13 = *(v9 + 24);
      v14 = *(v9 + 32);
      v15 = *(*(v24 + 56) + 32 * v8 + 28);
      outlined copy of GlassContainer.Entry.ModelID(*v9, v11, v12, v13, *(v9 + 32));
      if (v14 == 255)
      {
        break;
      }

      v3 &= v3 - 1;
      *&v26 = v10;
      *(&v26 + 1) = v11;
      v27 = v12;
      v28 = v13;
      v29 = v14;
      if (v15 == *(v22 + 8) || (v16 = specialized __RawDictionaryStorage.find<A>(_:)(&v26), (v17 & 1) == 0))
      {
        outlined destroy of GlassContainer.Entry.ModelID(&v26);
        v6 = v23;
        if (!v3)
        {
          goto LABEL_6;
        }
      }

      else
      {
        v18 = v16;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v20 = *v22;
        v25 = *v22;
        if (!isUniquelyReferenced_nonNull_native)
        {
          specialized _NativeDictionary.copy()();
          v20 = v25;
        }

        v21 = *(v20 + 48) + 40 * v18;
        outlined consume of GlassContainer.Entry.ModelID(*v21, *(v21 + 8), *(v21 + 16), *(v21 + 24), *(v21 + 32));
        specialized _NativeDictionary._delete(at:)(v18, v20);
        outlined destroy of GlassContainer.Entry.ModelID(&v26);
        *v22 = v20;
        v6 = v23;
        if (!v3)
        {
          goto LABEL_6;
        }
      }
    }

LABEL_17:
  }

  else
  {
LABEL_6:
    while (1)
    {
      v7 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v7 >= v4)
      {
        goto LABEL_17;
      }

      v3 = *(v6 + 8 * v7);
      ++v5;
      if (v3)
      {
        v5 = v7;
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

void *static GlassContainerTintConfigModifier._makeView(modifier:inputs:body:)(unsigned int *a1, __int128 *a2, uint64_t (*a3)(uint64_t, __int128 *))
{
  v44 = *MEMORY[0x1E69E9840];
  v4 = a2[1];
  v41 = *a2;
  v42 = v4;
  v5 = a2[3];
  *v43 = a2[2];
  *&v43[16] = v5;
  *&v43[32] = a2[4];
  *&v43[48] = *(a2 + 20);
  v6 = v42;
  v7 = *v43;
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE019GlassContainerCacheF033_7521D6231838360D8883796B4320212FLLV_Tt2g5(v41, &v38);
  Strong = swift_weakLoadStrong();
  v9 = outlined destroy of WeakBox<GlassContainerCache>(&v38);
  if (Strong)
  {
    OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
    swift_beginAccess();
    v11 = *(v6 + 16);
    type metadata accessor for PropertyList.Tracker();
    v12 = swift_allocObject();
    _s7SwiftUI12AtomicBuffer33_82B2D47816BC992595021D60C278AFF0LLCyAA11TrackerData33_D64CE6C88E7413721C59A34C0C940F2CLLVGMaTm_0(0, &lazy cache variable for type metadata for AtomicBuffer<TrackerData>, &type metadata for TrackerData, type metadata accessor for AtomicBuffer);
    v13 = swift_allocObject();
    *(v13 + 16) = 0;
    v14 = MEMORY[0x1E69E7CC8];
    *(v13 + 24) = 0;
    *(v13 + 32) = v14;
    v15 = MEMORY[0x1E69E7CC0];
    *(v13 + 40) = v14;
    *(v13 + 48) = v15;
    *(v13 + 56) = 0;
    *(v12 + 16) = v13;
    *&v38 = __PAIR64__(v11, OffsetAttribute2);
    *(&v38 + 1) = Strong;
    *&v39 = v12;
    *(&v39 + 1) = v15;
    LODWORD(v40[0]) = 0;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    lazy protocol witness table accessor for type GlassContainerResolvedTintConfig and conformance GlassContainerResolvedTintConfig();

    v16 = Attribute.init<A>(body:value:flags:update:)();

    v17 = *(&v42 + 1);
    v34 = *&v43[4];
    v35 = *&v43[20];
    v36 = *&v43[36];
    v37 = v41;
    *&v32[0] = __PAIR64__(*(v6 + 16), v16);
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    outlined init with copy of _ViewInputs(&v41, &v38);
    lazy protocol witness table accessor for type GlassContainerTintEnvironment and conformance GlassContainerTintEnvironment();
    v18 = Attribute.init<A>(body:value:flags:update:)();
    v19 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI19ResolvedShapeStyles33_B62A4B04AF9F1325924A089D63071424LLV_14AttributeGraph0O0VyAC01_F10Style_PackVGTt0g5Tf4g_n(v15);
    _s7SwiftUI12AtomicBuffer33_82B2D47816BC992595021D60C278AFF0LLCyAA11TrackerData33_D64CE6C88E7413721C59A34C0C940F2CLLVGMaTm_0(0, &lazy cache variable for type metadata for MutableBox<CachedEnvironment>, &type metadata for CachedEnvironment, type metadata accessor for MutableBox);
    v20 = swift_allocObject();
    *(v20 + 16) = v18;
    *(v20 + 24) = v15;
    *(v20 + 32) = 0u;
    *(v20 + 48) = 0u;
    *(v20 + 64) = 0u;
    *(v20 + 80) = 256;
    *(v20 + 88) = v19;

    *&v30 = v20;
    *(&v30 + 1) = v17;
    LODWORD(v31[0]) = v7 | 0x20;
    *(&v31[2] + 4) = v36;
    *(&v31[1] + 4) = v35;
    *(v31 + 4) = v34;
    v25 = v31[0];
    v26 = v31[1];
    v27 = v31[2];
    v29 = v37;
    v28 = HIDWORD(v36);
    v23 = v37;
    v24 = v30;
    v21 = outlined init with copy of _ViewInputs(&v29, &v38);
    a3(v21, &v23);

    v32[2] = v25;
    v32[3] = v26;
    v32[4] = v27;
    v33 = v28;
    v32[0] = v23;
    v32[1] = v24;
    outlined destroy of _ViewInputs(v32);
    v38 = v37;
    *&v39 = v20;
    *(&v39 + 1) = v17;
    LODWORD(v40[0]) = v7 | 0x20;
    *(v40 + 4) = v34;
    *(&v40[1] + 4) = v35;
    *(&v40[2] + 4) = v36;
    return outlined destroy of _ViewInputs(&v38);
  }

  else
  {
    v40[0] = *v43;
    v40[1] = *&v43[16];
    v40[2] = *&v43[32];
    LODWORD(v40[3]) = *&v43[48];
    v38 = v41;
    v39 = v42;
    return a3(v9, &v38);
  }
}

double GlassContainerResolvedTintConfig.updateValue()()
{
  v1 = v0;
  v35 = *MEMORY[0x1E69E9840];
  ++*(v0 + 32);
  Value = AGGraphGetValue();
  v4 = v3;
  v5 = *Value;

  v6 = AGGraphGetValue();
  v8 = v7;
  v9 = *v6;
  v10 = v6[1];
  if (v4)
  {

    v11 = swift_retain_n();
    v12 = PropertyList.Tracker.hasDifferentUsedValues(_:)(v11);
  }

  else
  {

    if ((v8 & 1) == 0)
    {
      v12 = 0;
      goto LABEL_10;
    }

    v12 = 1;
  }

  v13 = *(v1 + 16);
  PropertyList.Tracker.reset()();
  if (v9)
  {
    v14 = *(v9 + 64);
  }

  else
  {
    v14 = 0;
  }

  v15 = *(v13 + 16);
  swift_retain_n();

  os_unfair_lock_lock((v15 + 16));
  *(v15 + 24) = v14;
  os_unfair_lock_unlock((v15 + 16));

  v10 = v13;
LABEL_10:
  v33 = 0;
  v34 = MEMORY[0x1E69E7CD0];

  specialized GlassContainer.ResolvedStorage.forEachEntry(_:)(v5, v9, v10, v1, &v33);

  v16 = v34;

  specialized GlassContainer.ResolvedStorage.forEachEntry(_:)(v5, v16, v9, v10, v1);
  swift_bridgeObjectRelease_n();

  GlassContainerResolvedTintConfig.collectUnusedTints()();
  specialized GlassContainer.ResolvedStorage.forEachEntry(_:)(v5, v1);

  v17 = *(v1 + 24);
  v18 = *(v17 + 16);
  v19 = MEMORY[0x1E69E7CC0];
  if (v18)
  {
    v31 = v12;
    v32 = v4;
    v34 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v18, 0);
    v20 = 0;
    v19 = v34;
    v21 = *(v34 + 16);
    v22 = 32 * v21;
    do
    {
      v23 = *(v17 + v20 + 32);
      v24 = *(v17 + v20 + 40);
      v25 = *(v17 + v20 + 56);
      v34 = v19;
      v26 = *(v19 + 24);
      v27 = v21 + 1;
      if (v21 >= v26 >> 1)
      {
        v30 = v24;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v21 + 1, 1);
        v24 = v30;
        v19 = v34;
      }

      *(v19 + 16) = v27;
      v28 = v19 + v22 + v20;
      *(v28 + 32) = v23;
      *(v28 + 40) = v24;
      *(v28 + 56) = v25;
      v20 += 32;
      v21 = v27;
      --v18;
    }

    while (v18);
    v4 = v32;
    v12 = v31;
  }

  if ((v4 | v12))
  {
    swift_beginAccess();
    specialized SeedValues.collect()();
    swift_endAccess();
    v34 = v19;
    AGGraphSetOutputValue();
  }

  else
  {
  }

  return result;
}

void GlassContainerResolvedTintConfig.collectUnusedTints()()
{
  v1 = v0;
  v3 = *(v0 + 24);
  v2 = (v0 + 24);
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = *(v1 + 32);
    v6 = (32 * v4) | 0x1C;
    while (v4 <= *(*v2 + 2))
    {
      v7 = v4 - 1;
      if (*&(*v2)[v6] != v5)
      {
        specialized Array.remove(at:)(v4 - 1, v18);
      }

      if (v4 >= 65)
      {
        specialized Array.remove(at:)(v4 - 1, v18);
      }

      v6 -= 32;
      --v4;
      if (!v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_10:
    v8 = *v2;
    v9 = *(*v2 + 2);
    if (v9)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
      }

      if (v9 > *(v8 + 2))
      {
        __break(1u);
        return;
      }

      if (v9 == 1)
      {
        v10 = 0;
      }

      else
      {
        v11 = 0;
        v10 = v9 & 0x7FFFFFFFFFFFFFFELL;
        v12 = (v8 + 64);
        do
        {
          v13 = 1 << (v11 + 1);
          if ((v11 + 64) >= 0x80)
          {
            v14 = 0;
          }

          else
          {
            v14 = 1 << (v11 & 0x3E);
          }

          if ((v11 + 65) >= 0x80)
          {
            v13 = 0;
          }

          *(v12 - 4) = v14;
          *v12 = v13;
          v12 += 8;
          v11 += 2;
        }

        while (v10 != v11);
        if (v9 == v10)
        {
          goto LABEL_29;
        }
      }

      v15 = &v8[32 * v10 + 32];
      do
      {
        v16 = v10 + 1;
        if ((v10 + 64) >= 0x80)
        {
          v17 = 0;
        }

        else
        {
          v17 = 1 << v10;
        }

        *v15 = v17;
        v15 += 4;
        v10 = v16;
      }

      while (v9 != v16);
LABEL_29:
      *v2 = v8;
    }
  }
}

void closure #1 in GlassContainerResolvedTintConfig.updateRemainingTints(resolved:updatedIDs:env:)(int8x16_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = a1[1];
  v43[0] = *a1;
  v43[1] = v12;
  v44 = a1[2].i8[0];
  v13 = a1[4].i64[0];
  if (!v13)
  {
    return;
  }

  if ((specialized Set.contains(_:)(v43, a2) & 1) == 0)
  {
    v33[0] = a3;
    v33[1] = a4;
    (*(*v13 + 120))(&v34, v33);
    v18 = *(a5 + 24);
    v19 = *(v18 + 2);
    if (v19 >= 0x40)
    {
      v20 = 0;
    }

    else
    {
      v20 = 1 << v19;
    }

    if (v20 < 0)
    {
      __break(1u);
      goto LABEL_13;
    }

    v8 = *(&v34 + 1);
    LODWORD(v7) = v34;
    v9 = v35;
    v10 = v36;
    v11 = v37;
    if (!v19)
    {
LABEL_31:
      v25 = *(a5 + 32);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(a5 + 24) = v18;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v18 + 2) + 1, 1, v18);
        *(a5 + 24) = v18;
      }

      v28 = *(v18 + 2);
      v27 = *(v18 + 3);
      if (v28 >= v27 >> 1)
      {
        v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v27 > 1), v28 + 1, 1, v18);
        *(a5 + 24) = v18;
      }

      *(v18 + 2) = v28 + 1;
      v29 = &v18[32 * v28];
      *(v29 + 4) = v20;
      *(v29 + 10) = v7;
      *(v29 + 11) = v8;
      *(v29 + 12) = v9;
      *(v29 + 13) = v10;
      *(v29 + 14) = v11;
      *(v29 + 15) = v25;
LABEL_36:
      v30 = *(a5 + 8);
      swift_beginAccess();
      v31 = *(v30 + 192);
      *&v38 = v20;
      *(&v38 + 1) = __PAIR64__(LODWORD(v8), LODWORD(v7));
      v39 = v9;
      v40 = v10;
      v41 = v11;
      v42 = v31;

      outlined init with copy of GlassContainer.Entry.ModelID(v43, v33);
      v32 = swift_isUniquelyReferenced_nonNull_native();
      v33[0] = *(v30 + 184);
      *(v30 + 184) = 0x8000000000000000;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v38, v43[0].i8, v32);
      outlined destroy of GlassContainer.Entry.ModelID(v43);
      *(v30 + 184) = v33[0];
      swift_endAccess();

      return;
    }

    a3 = 0;
    v5 = 0;
    while (1)
    {
      v21 = &v18[a3];
      if (*&v18[a3 + 40] == v7)
      {
        v22 = v21[11] == v8 && v21[12] == v9;
        v23 = v22 && v21[13] == v10;
        if (v23 && v21[14] == v11)
        {
          break;
        }
      }

LABEL_13:
      ++v5;
      a3 += 32;
      if (v19 == v5)
      {
        goto LABEL_31;
      }
    }

    if (v5 <= 0x3F)
    {
      v20 = 1 << v5;
    }

    else
    {
      v20 = 0;
    }

    if (v20 < 0)
    {
      __break(1u);
    }

    else
    {
      v6 = *(a5 + 32);
      v24 = swift_isUniquelyReferenced_nonNull_native();
      *(a5 + 24) = v18;
      if (v24)
      {
LABEL_29:
        if (v5 >= *(v18 + 2))
        {
          __break(1u);
          return;
        }

        *&v18[a3 + 60] = v6;
        goto LABEL_36;
      }
    }

    v18 = specialized _ArrayBuffer._consumeAndCreateNew()(v18);
    *(a5 + 24) = v18;
    goto LABEL_29;
  }
}

float GlassEffectContainerTintConfiguration.Element.init(tags:color:)@<S0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = *(a2 + 16);
  *a3 = a1;
  *(a3 + 8) = *a2;
  *(a3 + 24) = result;
  return result;
}

double EnvironmentValues.glassEffectContainerTintConfiguration.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *v1;
  swift_retain_n();

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE037GlassEffectContainerTintConfigurationF033_EC08899B622ECCACC85E95BA1EEBE316LLVG_Tt2B5(v1, v2);

  if (v1[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA0L6ValuesVAAE037GlassEffectContainerTintConfigurationK033_EC08899B622ECCACC85E95BA1EEBE316LLVG_Ttg5(v3, *v1);
  }

  return result;
}

double protocol witness for Rule.value.getter in conformance GlassContainerTintEnvironment@<D0>(Swift::UInt *a1@<X8>)
{
  Value = AGGraphGetValue();
  v4 = *Value;
  v3 = Value[1];
  *a1 = *Value;
  a1[1] = v3;

  v5 = *AGGraphGetValue();
  swift_bridgeObjectRetain_n();
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE037GlassEffectContainerTintConfigurationF033_EC08899B622ECCACC85E95BA1EEBE316LLVG_Tt2B5(a1, v5);

  if (v3)
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA0L6ValuesVAAE037GlassEffectContainerTintConfigurationK033_EC08899B622ECCACC85E95BA1EEBE316LLVG_Ttg5(v4, *a1);
  }

  return result;
}

float GlassEffectContainerTintConfiguration.Element.color.getter@<S0>(uint64_t a1@<X8>)
{
  result = *(v1 + 24);
  *a1 = *(v1 + 8);
  *(a1 + 16) = result;
  return result;
}

__n128 GlassEffectContainerTintConfiguration.Element.color.setter(__n128 *a1)
{
  result = *a1;
  *(v1 + 8) = *a1;
  *(v1 + 24) = a1[1].n128_u32[0];
  return result;
}

void EnvironmentValues.glassEffectContainerTintConfiguration.getter(uint64_t *a1@<X8>)
{
  v2 = *v1;
  if (*(v1 + 8))
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE037GlassEffectContainerTintConfigurationI033_EC08899B622ECCACC85E95BA1EEBE316LLVG_Tt1g5(v2, a1);
  }

  else
  {
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE037GlassEffectContainerTintConfigurationF033_EC08899B622ECCACC85E95BA1EEBE316LLVG_Tt2g5(v2, a1);
  }
}

void key path getter for EnvironmentValues.glassEffectContainerTintConfiguration : EnvironmentValues(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if (a1[1])
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE037GlassEffectContainerTintConfigurationI033_EC08899B622ECCACC85E95BA1EEBE316LLVG_Tt1g5(v3, &v4);
  }

  else
  {
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE037GlassEffectContainerTintConfigurationF033_EC08899B622ECCACC85E95BA1EEBE316LLVG_Tt2g5(*a1, &v4);
  }

  *a2 = v4;
}

double key path setter for EnvironmentValues.glassEffectContainerTintConfiguration : EnvironmentValues(uint64_t *a1, Swift::UInt *a2)
{
  v3 = *a1;
  v4 = *a2;
  swift_retain_n();

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE037GlassEffectContainerTintConfigurationF033_EC08899B622ECCACC85E95BA1EEBE316LLVG_Tt2B5(a2, v3);

  if (a2[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA0L6ValuesVAAE037GlassEffectContainerTintConfigurationK033_EC08899B622ECCACC85E95BA1EEBE316LLVG_Ttg5(v4, *a2);
  }

  return result;
}

void (*EnvironmentValues.glassEffectContainerTintConfiguration.modify(uint64_t **a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v7 = v3;
  *a1 = v3;
  v3[3] = v1;
  v8 = *v1;
  v3[4] = *v1;
  v9 = *(v1 + 8);
  v3[5] = v9;
  if (v9)
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE037GlassEffectContainerTintConfigurationI033_EC08899B622ECCACC85E95BA1EEBE316LLVG_Tt1g5(v8, v7);
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.GlassEffectContainerTintConfigurationKey>(0, v4, v5, v6);
    BloomFilter.init(hashValue:)(v10);
    v11 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesVAAE037GlassEffectContainerTintConfigurationV033_EC08899B622ECCACC85E95BA1EEBE316LLVG_Tt0B5(v8, v13);
    if (v11)
    {
      *v7 = v11[9];
    }

    else
    {
      *v7 = MEMORY[0x1E69E7CC0];
    }
  }

  return EnvironmentValues.glassEffectContainerTintConfiguration.modify;
}

void EnvironmentValues.glassEffectContainerTintConfiguration.modify(uint64_t **a1, char a2)
{
  v3 = *a1;
  v4 = **a1;

  v5 = v3[5];
  v6 = v3[3];
  if (a2)
  {
    swift_bridgeObjectRetain_n();

    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE037GlassEffectContainerTintConfigurationF033_EC08899B622ECCACC85E95BA1EEBE316LLVG_Tt2B5(v6, v4);

    if (v5)
    {
      _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA0L6ValuesVAAE037GlassEffectContainerTintConfigurationK033_EC08899B622ECCACC85E95BA1EEBE316LLVG_Ttg5(v3[4], *v3[3]);
    }
  }

  else
  {

    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE037GlassEffectContainerTintConfigurationF033_EC08899B622ECCACC85E95BA1EEBE316LLVG_Tt2B5(v6, v4);

    if (v5)
    {
      _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA0L6ValuesVAAE037GlassEffectContainerTintConfigurationK033_EC08899B622ECCACC85E95BA1EEBE316LLVG_Ttg5(v3[4], *v3[3]);
    }
  }

  free(v3);
}

float MaterialEffectContainerTintConfiguration.Element.init(tags:color:)@<S0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = *(a2 + 16);
  *a3 = a1;
  *(a3 + 8) = *a2;
  *(a3 + 24) = result;
  return result;
}

uint64_t (*MaterialEffectContainerTintConfiguration.Element.tags.modify(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return Text.LineStyle.nsUnderlineStyle.modify;
}

float (*MaterialEffectContainerTintConfiguration.Element.color.modify(uint64_t a1))(uint64_t *a1)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 8);
  *(a1 + 24) = *(v1 + 24);
  return MaterialEffectContainerTintConfiguration.Element.color.modify;
}

float MaterialEffectContainerTintConfiguration.Element.color.modify(uint64_t *a1)
{
  v1 = *a1;
  result = *(a1 + 6);
  *(v1 + 8) = *(a1 + 1);
  *(v1 + 24) = result;
  return result;
}

void EnvironmentValues.materialEffectContainerTintConfiguration.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(*a1 + 16);
  if (v3)
  {
    v16 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3, 0);
    v4 = 0;
    v5 = v16;
    v6 = *(v16 + 16);
    v7 = 32 * v6;
    do
    {
      v8 = *(v2 + v4 + 32);
      v9 = *(v2 + v4 + 40);
      v10 = *(v2 + v4 + 56);
      v11 = *(v16 + 24);
      v12 = v6 + 1;
      if (v6 >= v11 >> 1)
      {
        v15 = *(v2 + v4 + 40);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v6 + 1, 1);
        v9 = v15;
      }

      *(v16 + 16) = v12;
      v13 = v16 + v7 + v4;
      *(v13 + 32) = v8;
      *(v13 + 40) = v9;
      *(v13 + 56) = v10;
      v4 += 32;
      v6 = v12;
      --v3;
    }

    while (v3);
  }

  else
  {

    v5 = MEMORY[0x1E69E7CC0];
  }

  v14 = *v1;
  swift_retain_n();

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE037GlassEffectContainerTintConfigurationF033_EC08899B622ECCACC85E95BA1EEBE316LLVG_Tt2B5(v1, v5);

  if (v1[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA0L6ValuesVAAE037GlassEffectContainerTintConfigurationK033_EC08899B622ECCACC85E95BA1EEBE316LLVG_Ttg5(v14, *v1);
  }
}

void (*EnvironmentValues.materialEffectContainerTintConfiguration.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t *a1, char a2)
{
  a1[1] = v4;
  EnvironmentValues.materialEffectContainerTintConfiguration.getter(a1, a2, a3, a4);
  return EnvironmentValues.materialEffectContainerTintConfiguration.modify;
}

void EnvironmentValues.materialEffectContainerTintConfiguration.modify(uint64_t *a1, char a2)
{
  if (a2)
  {
    v2 = *a1;

    EnvironmentValues.materialEffectContainerTintConfiguration.setter(&v2);
  }

  else
  {
    v2 = *a1;
    EnvironmentValues.materialEffectContainerTintConfiguration.setter(&v2);
  }
}

void type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.GlassEffectContainerTintConfigurationKey>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.GlassEffectContainerTintConfigurationKey>)
  {
    v4 = type metadata accessor for EnvironmentPropertyKey(0, &type metadata for EnvironmentValues.GlassEffectContainerTintConfigurationKey, &protocol witness table for EnvironmentValues.GlassEffectContainerTintConfigurationKey, a4);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.GlassEffectContainerTintConfigurationKey>);
    }
  }
}

BOOL specialized static MaterialEffectContainerTintConfiguration.Element.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = ~vaddvq_s32(vandq_s8(vceqq_f32(*(a1 + 8), *(a2 + 8)), xmmword_18DDA9F30)) & 0xF;
  v3 = *a1 == *a2 && v2 == 0;
  return v3 && *(a1 + 24) == *(a2 + 24);
}

void lazy protocol witness table accessor for type GlassContainerResolvedTintConfig and conformance GlassContainerResolvedTintConfig()
{
  if (!lazy protocol witness table cache variable for type GlassContainerResolvedTintConfig and conformance GlassContainerResolvedTintConfig)
  {
    swift_getWitnessTable(protocol conformance descriptor for GlassContainerResolvedTintConfig, &unk_1F009C320, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type GlassContainerResolvedTintConfig and conformance GlassContainerResolvedTintConfig);
  }
}

void lazy protocol witness table accessor for type GlassContainerTintEnvironment and conformance GlassContainerTintEnvironment()
{
  if (!lazy protocol witness table cache variable for type GlassContainerTintEnvironment and conformance GlassContainerTintEnvironment)
  {
    swift_getWitnessTable(protocol conformance descriptor for GlassContainerTintEnvironment, &unk_1F009C2A0, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type GlassContainerTintEnvironment and conformance GlassContainerTintEnvironment);
  }
}

uint64_t outlined destroy of SeedValue<GlassContainer.EntryState>(uint64_t a1)
{
  _s7SwiftUI12AtomicBuffer33_82B2D47816BC992595021D60C278AFF0LLCyAA11TrackerData33_D64CE6C88E7413721C59A34C0C940F2CLLVGMaTm_0(0, &lazy cache variable for type metadata for SeedValue<GlassContainer.EntryState>, &type metadata for GlassContainer.EntryState, type metadata accessor for SeedValue);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double destroy for GlassContainerResolvedTintConfig(uint64_t a1)
{

  return result;
}

uint64_t initializeWithCopy for GlassContainerResolvedTintConfig(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v3;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);

  return a1;
}

uint64_t assignWithCopy for GlassContainerResolvedTintConfig(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  return a1;
}

uint64_t assignWithTake for GlassContainerResolvedTintConfig(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);

  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  return a1;
}

uint64_t getEnumTagSinglePayload for GlassContainerResolvedTintConfig(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 36))
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

uint64_t storeEnumTagSinglePayload for GlassContainerResolvedTintConfig(uint64_t result, int a2, int a3)
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
      *(result + 36) = 1;
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

    *(result + 36) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t _ContentShapeKindModifier.init(shape:eoFill:kind:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  (*(*(a4 - 8) + 32))(a6, a1, a4);
  result = type metadata accessor for _ContentShapeKindModifier(0, a4, a5, v11);
  *(a6 + *(result + 36)) = a2;
  *(a6 + *(result + 40)) = *a3;
  return result;
}

uint64_t _ContentShapeKindModifier.contains(points:size:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>, double a5@<D0>)
{
  Shape.effectivePath(in:)(*(a3 + 16), *(a3 + 24), v9, a5);
  Path.contains(points:eoFill:origin:)(a1, a2, a4, 0.0, 0.0);
  return outlined destroy of Path(v9);
}

void _ContentShapeKindModifier.contentPath(size:)(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  if (*(v3 + *(a1 + 40)))
  {
    Shape.effectivePath(in:)(*(a1 + 16), *(a1 + 24), v8, a3);
    v5 = v8[0];
    v7 = v8[1];
    v6 = v9;
  }

  else
  {
    v5 = 0uLL;
    v6 = 6;
    v7 = 0uLL;
  }

  *a2 = v5;
  *(a2 + 16) = v7;
  *(a2 + 32) = v6;
}

void _ContentShapeKindModifier.contentPath(size:kind:)(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  if ((*(v4 + *(a2 + 40)) & *a1) != 0)
  {
    Shape.effectivePath(in:)(*(a2 + 16), *(a2 + 24), v9, a4);
    v6 = v9[0];
    v7 = v9[1];
    v8 = v10;
  }

  else
  {
    v6 = 0uLL;
    v8 = 6;
    v7 = 0uLL;
  }

  *a3 = v6;
  *(a3 + 16) = v7;
  *(a3 + 32) = v8;
}

double protocol witness for ContentResponder.contentPath(size:) in conformance _ContentShapeKindModifier<A>@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  _ContentShapeKindModifier.contentPath(size:)(a1, v6, a3);
  result = *v6;
  v5 = v6[1];
  *a2 = v6[0];
  *(a2 + 16) = v5;
  *(a2 + 32) = v7;
  return result;
}

double protocol witness for ContentResponder.contentPath(size:kind:) in conformance _ContentShapeKindModifier<A>@<D0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  _ContentShapeKindModifier.contentPath(size:kind:)(a1, a2, v7, a4);
  result = *v7;
  v6 = v7[1];
  *a3 = v7[0];
  *(a3 + 16) = v6;
  *(a3 + 32) = v8;
  return result;
}

uint64_t ContentShapeKindResponder.hitTestPolicy(options:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v6 = *a1;
  result = MultiViewResponder.hitTestPolicy(options:)(&v6);
  v5 = v7;
  if (v7 != 1 && (*(v2 + 216) & 1) != 0)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void ContentShapeKindResponder.containsGlobalPoints(_:cacheKey:options:)(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *v4;
  v9 = *a3;
  v22[0] = *a3;
  ContentShapeKindResponder.hitTestPolicy(options:)(v22, v21);
  if (LOBYTE(v21[0]) == 1)
  {
    swift_beginAccess();
    v10 = v4[5];
    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 16) = v10;

    return;
  }

  if ((v4[27] & 1) == 0)
  {
    v22[0] = v9;
    MultiViewResponder.containsGlobalPoints(_:cacheKey:options:)(a1, a2 | ((HIDWORD(a2) & 1) << 32), v22, a4);
    return;
  }

  if (one-time initialization token for v6 != -1)
  {
    swift_once();
  }

  v11 = static Semantics.v6;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v12 = HIDWORD(a2) & 1;
  if (byte_1ED53C51C == 1)
  {
    v13 = -1.0;
    if ((dyld_program_sdk_at_least() & 1) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v13 = -1.0;
  if (static Semantics.forced >= v11)
  {
LABEL_13:
    v20[0] = v9;
    MultiViewResponder.containsGlobalPoints(_:cacheKey:options:)(a1, a2 | (v12 << 32), v20, v21);
    v13 = v21[1];
  }

LABEL_14:
  *&v21[3] = v9;
  swift_beginAccess();
  v14 = v4[5];
  swift_beginAccess();
  v16 = type metadata accessor for _ContentShapeKindModifier(255, *(v8 + 400), *(v8 + 408), v15);
  v18 = type metadata accessor for ContentResponderHelper(0, v16, &protocol witness table for _ContentShapeKindModifier<A>, v17);

  ContentResponderHelper.containsGlobalPoints(_:cacheKey:options:children:)(a1, a2 | (v12 << 32), v14, v18, a4);
  swift_endAccess();

  v19 = *(a4 + 8);
  if (v19 <= v13)
  {
    v19 = v13;
  }

  *(a4 + 8) = v19;
}

void ContentShapeKindResponder.addContentPath(to:kind:in:observer:)(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4, uint64_t a5)
{
  Strong = v5;
  v11 = *v5;
  v12 = *a2;
  if ((v5[27] & *a2) != 0)
  {
    v31[0] = v5[27] & *a2;
    v13 = *(v11 + 424);
    v14 = v11;
    swift_beginAccess();
    v16 = type metadata accessor for _ContentShapeKindModifier(255, *(v14 + 400), *(v14 + 408), v15);
    v18 = type metadata accessor for ContentResponderHelper(0, v16, &protocol witness table for _ContentShapeKindModifier<A>, v17);
    v5 = (Strong + v13);
    ContentResponderHelper.addContentPath(to:kind:in:observer:)(a1, v31, a3, a4, a5, v18);
    swift_endAccess();
    v19 = Strong[27];
    if ((v19 & v12) != 0)
    {
      v20 = ~v19;
    }

    else
    {
      v20 = -1;
    }

    v12 &= v20;
  }

  if (v12)
  {
    if (!a4)
    {
      goto LABEL_20;
    }

    swift_beginAccess();
    v30 = Strong;
    v5 = Strong[10];
    v21 = v5[2];
    if (!v21)
    {
LABEL_15:
      v31[1] = a5;
      swift_unknownObjectWeakInit();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      Strong = v30;
      v30[10] = v5;
      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_16;
      }

      goto LABEL_34;
    }

    v22 = 0;
    v23 = (v5 + 4);
    while (1)
    {
      if (v22 >= v5[2])
      {
        __break(1u);
        goto LABEL_31;
      }

      outlined init with copy of ContentPathObservers.Observer(v23, v31);
      Strong = swift_unknownObjectWeakLoadStrong();
      outlined destroy of ContentPathObservers.Observer(v31);
      if (Strong)
      {
        swift_unknownObjectRelease();
        if (Strong == a4)
        {
          break;
        }
      }

      ++v22;
      v23 += 16;
      if (v21 == v22)
      {
        goto LABEL_15;
      }
    }

    for (Strong = v30; ; Strong[10] = v5)
    {
      swift_endAccess();
LABEL_20:
      swift_beginAccess();
      v22 = Strong[5];
      if (v22 >> 62)
      {
LABEL_31:
        v27 = __CocoaSet.count.getter();
        if (!v27)
        {
          return;
        }
      }

      else
      {
        v27 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v27)
        {
          return;
        }
      }

      if (v27 >= 1)
      {
        break;
      }

      __break(1u);
LABEL_34:
      v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5[2] + 1, 1, v5);
      Strong[10] = v5;
LABEL_16:
      v26 = v5[2];
      v25 = v5[3];
      if (v26 >= v25 >> 1)
      {
        v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), v26 + 1, 1, v5);
      }

      v5[2] = v26 + 1;
      outlined init with take of ContentPathObservers.Observer(v31, &v5[2 * v26 + 4]);
    }

    v28 = 0;
    do
    {
      if ((v22 & 0xC000000000000001) != 0)
      {
        v29 = MEMORY[0x193AC03C0](v28, v22);
      }

      else
      {
        v29 = *(v22 + 8 * v28 + 32);
      }

      ++v28;
      v31[0] = v12;
      (*(*v29 + 192))(a1, v31, a3, a4, a5);
    }

    while (v27 != v28);
  }
}

unint64_t ContentShapeKindResponder.descriptionName.getter()
{
  swift_beginAccess();
  _StringGuts.grow(_:)(41);

  v0 = _typeName(_:qualified:)();
  MEMORY[0x193ABEDD0](v0);

  MEMORY[0x193ABEDD0](62, 0xE100000000000000);
  v1 = ContentShapeKinds.description.getter();
  MEMORY[0x193ABEDD0](v1);

  MEMORY[0x193ABEDD0](10272, 0xE200000000000000);
  v2 = Double.description.getter();
  MEMORY[0x193ABEDD0](v2);

  MEMORY[0x193ABEDD0](8236, 0xE200000000000000);
  v3 = Double.description.getter();
  MEMORY[0x193ABEDD0](v3);

  MEMORY[0x193ABEDD0](8745, 0xE200000000000000);
  return 0xD00000000000001ALL;
}

void ContentShapeKindResponder.extendPrintTree(string:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  v6 = type metadata accessor for _ContentShapeKindModifier(255, *(*v4 + 400), *(*v4 + 408), a4);
  v8 = type metadata accessor for ContentResponderHelper(0, v6, &protocol witness table for _ContentShapeKindModifier<A>, v7);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v18 - v10;
  v12 = v4 + *(v5 + 424);
  swift_beginAccess();
  (*(v9 + 16))(v11, v12, v8);
  v13 = ContentResponderHelper.globalPosition.getter(v8);
  v15 = v14;
  (*(v9 + 8))(v11, v8);
  v19 = 0;
  v20 = 0xE000000000000000;
  MEMORY[0x193ABEDD0](91, 0xE100000000000000);
  v16 = Double.description.getter();
  MEMORY[0x193ABEDD0](v16);

  MEMORY[0x193ABEDD0](8236, 0xE200000000000000);
  v17 = Double.description.getter();
  MEMORY[0x193ABEDD0](v17);

  MEMORY[0x193ABEDD0](4202589, 0xE300000000000000);
  *&v18[1] = v13;
  v18[2] = v15;
  type metadata accessor for (CGFloat, CGFloat)();
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x193ABEDD0](v19, v20);
}

uint64_t ContentShapeKindResponder.init(inputs:viewSubgraph:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *v4;
  v7 = *(a1 + 48);
  v13[2] = *(a1 + 32);
  v13[3] = v7;
  v13[4] = *(a1 + 64);
  v14 = *(a1 + 80);
  v8 = *(a1 + 16);
  v13[0] = *a1;
  v13[1] = v8;
  v4[27] = 1;
  v9 = v6[53];
  v10 = type metadata accessor for _ContentShapeKindModifier(0, v6[50], v6[51], a4);
  ContentResponderHelper.init()(v10, &protocol witness table for _ContentShapeKindModifier<A>, v11, v4 + v9);
  return DefaultLayoutViewResponder.init(inputs:viewSubgraph:)(v13, a2);
}

uint64_t ContentShapeKindResponder.__ivar_destroyer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(*v4 + 424);
  v6 = type metadata accessor for _ContentShapeKindModifier(255, *(*v4 + 400), *(*v4 + 408), a4);
  v8 = type metadata accessor for ContentResponderHelper(0, v6, &protocol witness table for _ContentShapeKindModifier<A>, v7);
  v9 = *(*(v8 - 8) + 8);

  return v9(v4 + v5, v8);
}

uint64_t ContentShapeKindResponder.deinit(__n128 a1)
{
  v2 = *v1;
  v3 = DefaultLayoutViewResponder.deinit(a1);
  v4 = *(*v3 + 424);
  v6 = type metadata accessor for _ContentShapeKindModifier(255, *(v2 + 400), *(v2 + 408), v5);
  v8 = type metadata accessor for ContentResponderHelper(0, v6, &protocol witness table for _ContentShapeKindModifier<A>, v7);
  (*(*(v8 - 8) + 8))(v3 + v4, v8);
  return v3;
}

uint64_t ContentShapeKindResponder.__deallocating_deinit(__n128 a1)
{
  ContentShapeKindResponder.deinit(a1);

  return swift_deallocClassInstance();
}

void *initializeBufferWithCopyOfBuffer for _ContentShapeKindModifier(void *a1, void *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  if ((v6 & 0x1000F8) != 0 || (v5 & 0xFFFFFFFFFFFFFFF8) + 16 > 0x18)
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + (((v6 & 0xF8) + 23) & ~(v6 & 0xF8) & 0x1F8));
  }

  else
  {
    (*(v4 + 16))(a1);
    *(v3 + v5) = *(a2 + v5);
    *(((v3 + v5) & 0xFFFFFFFFFFFFFFF8) + 8) = *(((a2 + v5) & 0xFFFFFFFFFFFFFFF8) + 8);
  }

  return v3;
}

uint64_t initializeWithCopy for _ContentShapeKindModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  v6 = *(v5 + 48);
  v7 = v6 + a1;
  v8 = v6 + a2;
  *v7 = *v8;
  *((v7 & 0xFFFFFFFFFFFFFFF8) + 8) = *((v8 & 0xFFFFFFFFFFFFFFF8) + 8);
  return a1;
}

uint64_t assignWithCopy for _ContentShapeKindModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  v6 = *(v5 + 40);
  v7 = v6 + a1;
  v8 = v6 + a2;
  *v7 = *v8;
  *((v7 & 0xFFFFFFFFFFFFFFF8) + 8) = *((v8 & 0xFFFFFFFFFFFFFFF8) + 8);
  return a1;
}

uint64_t initializeWithTake for _ContentShapeKindModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 32;
  (*v5)();
  v6 = *(v5 + 32);
  v7 = v6 + a1;
  v8 = v6 + a2;
  *v7 = *v8;
  *((v7 & 0xFFFFFFFFFFFFFFF8) + 8) = *((v8 & 0xFFFFFFFFFFFFFFF8) + 8);
  return a1;
}

uint64_t assignWithTake for _ContentShapeKindModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  v6 = *(v5 + 24);
  v7 = v6 + a1;
  v8 = v6 + a2;
  *v7 = *v8;
  *((v7 & 0xFFFFFFFFFFFFFFF8) + 8) = *((v8 & 0xFFFFFFFFFFFFFFF8) + 8);
  return a1;
}

__n128 specialized Array.append(_:)(uint64_t a1)
{
  v3 = *v1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3[2] + 1, 1, v3);
  }

  v5 = v3[2];
  v4 = v3[3];
  if (v5 >= v4 >> 1)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v4 > 1), v5 + 1, 1, v3);
  }

  v3[2] = v5 + 1;
  v6 = &v3[9 * v5];
  *(v6 + 2) = *a1;
  result = *(a1 + 16);
  v8 = *(a1 + 32);
  v9 = *(a1 + 48);
  v6[12] = *(a1 + 64);
  *(v6 + 4) = v8;
  *(v6 + 5) = v9;
  *(v6 + 3) = result;
  *v1 = v3;
  return result;
}

{
  v3 = *v1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3[2] + 1, 1, v3);
  }

  v5 = v3[2];
  v4 = v3[3];
  if (v5 >= v4 >> 1)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v4 > 1), v5 + 1, 1, v3);
  }

  v3[2] = v5 + 1;
  v6 = &v3[8 * v5];
  result = *a1;
  v8 = *(a1 + 16);
  v9 = *(a1 + 48);
  *(v6 + 4) = *(a1 + 32);
  *(v6 + 5) = v9;
  *(v6 + 2) = result;
  *(v6 + 3) = v8;
  *v1 = v3;
  return result;
}

{
  v3 = *v1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3[2] + 1, 1, v3);
  }

  v5 = v3[2];
  v4 = v3[3];
  if (v5 >= v4 >> 1)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v4 > 1), v5 + 1, 1, v3);
  }

  v3[2] = v5 + 1;
  v6 = &v3[10 * v5];
  *(v6 + 2) = *a1;
  result = *(a1 + 16);
  v8 = *(a1 + 32);
  v9 = *(a1 + 64);
  *(v6 + 5) = *(a1 + 48);
  *(v6 + 6) = v9;
  *(v6 + 3) = result;
  *(v6 + 4) = v8;
  *v1 = v3;
  return result;
}

{
  v3 = *v1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3[2] + 1, 1, v3);
  }

  v5 = v3[2];
  v4 = v3[3];
  if (v5 >= v4 >> 1)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v4 > 1), v5 + 1, 1, v3);
  }

  v3[2] = v5 + 1;
  v6 = &v3[10 * v5];
  *(v6 + 2) = *a1;
  result = *(a1 + 16);
  v8 = *(a1 + 32);
  v9 = *(a1 + 64);
  *(v6 + 5) = *(a1 + 48);
  *(v6 + 6) = v9;
  *(v6 + 3) = result;
  *(v6 + 4) = v8;
  *v1 = v3;
  return result;
}

{
  v3 = *v1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3[2] + 1, 1, v3);
  }

  v5 = v3[2];
  v4 = v3[3];
  if (v5 >= v4 >> 1)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v4 > 1), v5 + 1, 1, v3);
  }

  v3[2] = v5 + 1;
  v6 = &v3[12 * v5];
  v7 = *(a1 + 16);
  *(v6 + 2) = *a1;
  *(v6 + 3) = v7;
  result = *(a1 + 32);
  v9 = *(a1 + 48);
  v10 = *(a1 + 80);
  *(v6 + 6) = *(a1 + 64);
  *(v6 + 7) = v10;
  *(v6 + 4) = result;
  *(v6 + 5) = v9;
  *v1 = v3;
  return result;
}

{
  v3 = *v1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3[2] + 1, 1, v3);
  }

  v5 = v3[2];
  v4 = v3[3];
  if (v5 >= v4 >> 1)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v4 > 1), v5 + 1, 1, v3);
  }

  v3[2] = v5 + 1;
  v6 = &v3[12 * v5];
  v7 = *(a1 + 16);
  *(v6 + 2) = *a1;
  *(v6 + 3) = v7;
  result = *(a1 + 32);
  v9 = *(a1 + 48);
  v10 = *(a1 + 80);
  *(v6 + 6) = *(a1 + 64);
  *(v6 + 7) = v10;
  *(v6 + 4) = result;
  *(v6 + 5) = v9;
  *v1 = v3;
  return result;
}

{
  v3 = *v1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3[2] + 1, 1, v3);
  }

  v5 = v3[2];
  v4 = v3[3];
  if (v5 >= v4 >> 1)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v4 > 1), v5 + 1, 1, v3);
  }

  v3[2] = v5 + 1;
  v6 = &v3[12 * v5];
  v7 = *(a1 + 16);
  *(v6 + 2) = *a1;
  *(v6 + 3) = v7;
  result = *(a1 + 32);
  v9 = *(a1 + 48);
  v10 = *(a1 + 80);
  *(v6 + 6) = *(a1 + 64);
  *(v6 + 7) = v10;
  *(v6 + 4) = result;
  *(v6 + 5) = v9;
  *v1 = v3;
  return result;
}

{
  v3 = *v1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3[2] + 1, 1, v3);
  }

  v5 = v3[2];
  v4 = v3[3];
  if (v5 >= v4 >> 1)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v4 > 1), v5 + 1, 1, v3);
  }

  v3[2] = v5 + 1;
  v6 = &v3[8 * v5];
  result = *a1;
  v8 = *(a1 + 16);
  v9 = *(a1 + 48);
  *(v6 + 4) = *(a1 + 32);
  *(v6 + 5) = v9;
  *(v6 + 2) = result;
  *(v6 + 3) = v8;
  *v1 = v3;
  return result;
}

{
  v3 = *v1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3[2] + 1, 1, v3);
  }

  v5 = v3[2];
  v4 = v3[3];
  if (v5 >= v4 >> 1)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v4 > 1), v5 + 1, 1, v3);
  }

  v3[2] = v5 + 1;
  v6 = &v3[8 * v5];
  result = *a1;
  v8 = *(a1 + 16);
  v9 = *(a1 + 48);
  *(v6 + 4) = *(a1 + 32);
  *(v6 + 5) = v9;
  *(v6 + 2) = result;
  *(v6 + 3) = v8;
  *v1 = v3;
  return result;
}

{
  v3 = *v1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3[2] + 1, 1, v3);
  }

  v5 = v3[2];
  v4 = v3[3];
  if (v5 >= v4 >> 1)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v4 > 1), v5 + 1, 1, v3);
  }

  v3[2] = v5 + 1;
  v6 = &v3[18 * v5];
  *(v6 + 2) = *a1;
  v7 = *(a1 + 16);
  v8 = *(a1 + 32);
  v9 = *(a1 + 64);
  *(v6 + 5) = *(a1 + 48);
  *(v6 + 6) = v9;
  *(v6 + 3) = v7;
  *(v6 + 4) = v8;
  result = *(a1 + 80);
  v11 = *(a1 + 96);
  v12 = *(a1 + 128);
  *(v6 + 9) = *(a1 + 112);
  *(v6 + 10) = v12;
  *(v6 + 7) = result;
  *(v6 + 8) = v11;
  *v1 = v3;
  return result;
}

{
  v3 = *v1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3[2] + 1, 1, v3);
  }

  v5 = v3[2];
  v4 = v3[3];
  if (v5 >= v4 >> 1)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v4 > 1), v5 + 1, 1, v3);
  }

  v3[2] = v5 + 1;
  v6 = &v3[11 * v5];
  v7 = *(a1 + 16);
  *(v6 + 2) = *a1;
  *(v6 + 3) = v7;
  result = *(a1 + 32);
  v9 = *(a1 + 48);
  v10 = *(a1 + 64);
  v6[14] = *(a1 + 80);
  *(v6 + 5) = v9;
  *(v6 + 6) = v10;
  *(v6 + 4) = result;
  *v1 = v3;
  return result;
}

{
  v3 = *v1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3[2] + 1, 1, v3);
  }

  v5 = v3[2];
  v4 = v3[3];
  if (v5 >= v4 >> 1)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v4 > 1), v5 + 1, 1, v3);
  }

  v3[2] = v5 + 1;
  v6 = &v3[12 * v5];
  v7 = *(a1 + 16);
  *(v6 + 2) = *a1;
  *(v6 + 3) = v7;
  result = *(a1 + 32);
  v9 = *(a1 + 48);
  v10 = *(a1 + 80);
  *(v6 + 6) = *(a1 + 64);
  *(v6 + 7) = v10;
  *(v6 + 4) = result;
  *(v6 + 5) = v9;
  *v1 = v3;
  return result;
}

{
  v3 = *v1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3[2] + 1, 1, v3);
  }

  v5 = v3[2];
  v4 = v3[3];
  if (v5 >= v4 >> 1)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v4 > 1), v5 + 1, 1, v3);
  }

  v3[2] = v5 + 1;
  v6 = &v3[7 * v5];
  result = *a1;
  v8 = *(a1 + 16);
  v9 = *(a1 + 32);
  v6[10] = *(a1 + 48);
  *(v6 + 3) = v8;
  *(v6 + 4) = v9;
  *(v6 + 2) = result;
  *v1 = v3;
  return result;
}

{
  v3 = *v1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3[2] + 1, 1, v3);
  }

  v5 = v3[2];
  v4 = v3[3];
  if (v5 >= v4 >> 1)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v4 > 1), v5 + 1, 1, v3);
  }

  v3[2] = v5 + 1;
  v6 = &v3[8 * v5];
  result = *a1;
  v8 = *(a1 + 16);
  v9 = *(a1 + 48);
  *(v6 + 4) = *(a1 + 32);
  *(v6 + 5) = v9;
  *(v6 + 2) = result;
  *(v6 + 3) = v8;
  *v1 = v3;
  return result;
}

{
  v3 = *v1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3[2] + 1, 1, v3);
  }

  v5 = v3[2];
  v4 = v3[3];
  if (v5 >= v4 >> 1)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v4 > 1), v5 + 1, 1, v3);
  }

  v3[2] = v5 + 1;
  v6 = &v3[10 * v5];
  *(v6 + 2) = *a1;
  result = *(a1 + 16);
  v8 = *(a1 + 32);
  v9 = *(a1 + 64);
  *(v6 + 5) = *(a1 + 48);
  *(v6 + 6) = v9;
  *(v6 + 3) = result;
  *(v6 + 4) = v8;
  *v1 = v3;
  return result;
}

{
  v3 = *v1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3[2] + 1, 1, v3);
  }

  v5 = v3[2];
  v4 = v3[3];
  if (v5 >= v4 >> 1)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v4 > 1), v5 + 1, 1, v3);
  }

  v3[2] = v5 + 1;
  v6 = &v3[8 * v5];
  result = *a1;
  v8 = *(a1 + 16);
  v9 = *(a1 + 48);
  *(v6 + 4) = *(a1 + 32);
  *(v6 + 5) = v9;
  *(v6 + 2) = result;
  *(v6 + 3) = v8;
  *v1 = v3;
  return result;
}

{
  v3 = *v1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3[2] + 1, 1, v3);
  }

  v5 = v3[2];
  v4 = v3[3];
  if (v5 >= v4 >> 1)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v4 > 1), v5 + 1, 1, v3);
  }

  v3[2] = v5 + 1;
  v6 = &v3[8 * v5];
  result = *a1;
  v8 = *(a1 + 16);
  v9 = *(a1 + 48);
  *(v6 + 4) = *(a1 + 32);
  *(v6 + 5) = v9;
  *(v6 + 2) = result;
  *(v6 + 3) = v8;
  *v1 = v3;
  return result;
}

{
  v3 = *v1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3[2] + 1, 1, v3);
  }

  v5 = v3[2];
  v4 = v3[3];
  if (v5 >= v4 >> 1)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v4 > 1), v5 + 1, 1, v3);
  }

  v3[2] = v5 + 1;
  v6 = &v3[17 * v5];
  *(v6 + 2) = *a1;
  v7 = *(a1 + 16);
  v8 = *(a1 + 32);
  v9 = *(a1 + 64);
  *(v6 + 5) = *(a1 + 48);
  *(v6 + 6) = v9;
  *(v6 + 3) = v7;
  *(v6 + 4) = v8;
  result = *(a1 + 80);
  v11 = *(a1 + 96);
  v12 = *(a1 + 112);
  v6[20] = *(a1 + 128);
  *(v6 + 8) = v11;
  *(v6 + 9) = v12;
  *(v6 + 7) = result;
  *v1 = v3;
  return result;
}

{
  v3 = *v1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3[2] + 1, 1, v3);
  }

  v5 = v3[2];
  v4 = v3[3];
  if (v5 >= v4 >> 1)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v4 > 1), v5 + 1, 1, v3);
  }

  v3[2] = v5 + 1;
  v6 = &v3[18 * v5];
  *(v6 + 2) = *a1;
  v7 = *(a1 + 16);
  v8 = *(a1 + 32);
  v9 = *(a1 + 64);
  *(v6 + 5) = *(a1 + 48);
  *(v6 + 6) = v9;
  *(v6 + 3) = v7;
  *(v6 + 4) = v8;
  result = *(a1 + 80);
  v11 = *(a1 + 96);
  v12 = *(a1 + 128);
  *(v6 + 9) = *(a1 + 112);
  *(v6 + 10) = v12;
  *(v6 + 7) = result;
  *(v6 + 8) = v11;
  *v1 = v3;
  return result;
}

{
  v3 = *v1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3[2] + 1, 1, v3);
  }

  v5 = v3[2];
  v4 = v3[3];
  if (v5 >= v4 >> 1)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v4 > 1), v5 + 1, 1, v3);
  }

  v3[2] = v5 + 1;
  v6 = &v3[9 * v5];
  *(v6 + 2) = *a1;
  result = *(a1 + 16);
  v8 = *(a1 + 32);
  v9 = *(a1 + 48);
  v6[12] = *(a1 + 64);
  *(v6 + 4) = v8;
  *(v6 + 5) = v9;
  *(v6 + 3) = result;
  *v1 = v3;
  return result;
}

{
  v3 = *v1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3[2] + 1, 1, v3);
  }

  v5 = v3[2];
  v4 = v3[3];
  if (v5 >= v4 >> 1)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v4 > 1), v5 + 1, 1, v3);
  }

  v3[2] = v5 + 1;
  v6 = &v3[8 * v5];
  result = *a1;
  v8 = *(a1 + 16);
  v9 = *(a1 + 48);
  *(v6 + 4) = *(a1 + 32);
  *(v6 + 5) = v9;
  *(v6 + 2) = result;
  *(v6 + 3) = v8;
  *v1 = v3;
  return result;
}

{
  v3 = *v1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v3 + 2) + 1, 1, v3);
  }

  v5 = *(v3 + 2);
  v4 = *(v3 + 3);
  if (v5 >= v4 >> 1)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v4 > 1), v5 + 1, 1, v3);
  }

  *(v3 + 2) = v5 + 1;
  v6 = &v3[48 * v5];
  result = *a1;
  v8 = *(a1 + 32);
  *(v6 + 3) = *(a1 + 16);
  *(v6 + 4) = v8;
  *(v6 + 2) = result;
  *v1 = v3;
  return result;
}

__n128 specialized Array.append(_:)(__int128 *a1)
{
  v3 = *v1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3[2] + 1, 1, v3);
  }

  v5 = v3[2];
  v4 = v3[3];
  if (v5 >= v4 >> 1)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v4 > 1), v5 + 1, 1, v3);
  }

  v3[2] = v5 + 1;
  v6 = &v3[16 * v5];
  v7 = *a1;
  v8 = a1[1];
  v9 = a1[3];
  *(v6 + 4) = a1[2];
  *(v6 + 5) = v9;
  *(v6 + 2) = v7;
  *(v6 + 3) = v8;
  result = a1[4];
  v11 = a1[5];
  v12 = a1[7];
  *(v6 + 8) = a1[6];
  *(v6 + 9) = v12;
  *(v6 + 6) = result;
  *(v6 + 7) = v11;
  *v1 = v3;
  return result;
}

{
  v3 = *v1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3[2] + 1, 1, v3);
  }

  v5 = v3[2];
  v4 = v3[3];
  if (v5 >= v4 >> 1)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v4 > 1), v5 + 1, 1, v3);
  }

  v3[2] = v5 + 1;
  v6 = &v3[21 * v5];
  v7 = *a1;
  v8 = a1[2];
  *(v6 + 3) = a1[1];
  *(v6 + 4) = v8;
  *(v6 + 2) = v7;
  v9 = a1[3];
  v10 = a1[4];
  v11 = a1[6];
  *(v6 + 7) = a1[5];
  *(v6 + 8) = v11;
  *(v6 + 5) = v9;
  *(v6 + 6) = v10;
  result = a1[7];
  v13 = a1[8];
  v14 = a1[9];
  v6[24] = *(a1 + 20);
  *(v6 + 10) = v13;
  *(v6 + 11) = v14;
  *(v6 + 9) = result;
  *v1 = v3;
  return result;
}

{
  v3 = *v1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v3 + 2) + 1, 1, v3);
  }

  v5 = *(v3 + 2);
  v4 = *(v3 + 3);
  if (v5 >= v4 >> 1)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v4 > 1), v5 + 1, 1, v3);
  }

  *(v3 + 2) = v5 + 1;
  v6 = &v3[112 * v5];
  v7 = *a1;
  v8 = a1[2];
  *(v6 + 3) = a1[1];
  *(v6 + 4) = v8;
  *(v6 + 2) = v7;
  result = a1[3];
  v10 = a1[4];
  v11 = a1[6];
  *(v6 + 7) = a1[5];
  *(v6 + 8) = v11;
  *(v6 + 5) = result;
  *(v6 + 6) = v10;
  *v1 = v3;
  return result;
}

void *specialized Array.append(_:)(const void *a1)
{
  v3 = *v1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3[2] + 1, 1, v3);
  }

  v5 = v3[2];
  v4 = v3[3];
  if (v5 >= v4 >> 1)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v4 > 1), v5 + 1, 1, v3);
  }

  v3[2] = v5 + 1;
  result = memcpy(&v3[37 * v5 + 4], a1, 0x128uLL);
  *v1 = v3;
  return result;
}

void *specialized Animation.animate<A>(value:time:context:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>, double a7@<D3>, double a8@<D4>)
{
  *v30 = a4;
  *&v30[1] = a5;
  *&v30[2] = a6;
  *&v30[3] = a7;
  type metadata accessor for AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>(0);
  if (v16 == MEMORY[0x1E69E63B0])
  {
    *v29 = a4;
    result = (*(*a2 + 120))(&v31, v29, a1, MEMORY[0x1E69E63B0], &protocol witness table for Double, a8);
    v22 = v31;
    v24 = v32;
  }

  else
  {
    v17 = v16;
    type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>(0);
    if (v17 == v18)
    {
      v25 = v18;
      *v29 = a4;
      *&v29[1] = a5;
      *&v29[2] = a6;
      *&v29[3] = a7;
      v26 = *(*a2 + 120);
      lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, protocol conformance descriptor for AnimatablePair<A, B>);
      result = v26(&v31, v29, a1, v25, v27, a8);
    }

    else
    {
      v19 = *(*a2 + 120);
      lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>, protocol conformance descriptor for AnimatablePair<A, B>);
      result = v19(&v31, v30, a1, v17, v20, a8);
    }

    v22 = v31;
    v23 = v33;
    v24 = v34;
  }

  v28 = v32;
  *a3 = v22;
  *(a3 + 8) = v28;
  *(a3 + 16) = v23;
  *(a3 + 32) = v24 & 1;
  return result;
}

uint64_t specialized Animation.animate<A>(value:time:context:)(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  *v23 = a3;
  *&v23[1] = a4;
  *&v23[2] = a5;
  type metadata accessor for AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>(0);
  if (v12 == MEMORY[0x1E69E63B0])
  {
    *v21 = a3;
    (*(*a2 + 120))(&v22, v21, a1, MEMORY[0x1E69E63B0], &protocol witness table for Double, a6);
    return v22;
  }

  else
  {
    v13 = v12;
    type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>(0);
    if (v13 == v14)
    {
      v18 = v14;
      *v21 = a3;
      *&v21[1] = a4;
      *&v21[2] = a5;
      v19 = *(*a2 + 120);
      lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, protocol conformance descriptor for AnimatablePair<A, B>);
      v19(&v22, v21, a1, v18, v20, a6);
    }

    else
    {
      v15 = *(*a2 + 120);
      lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>, protocol conformance descriptor for AnimatablePair<A, B>);
      v15(&v22, v23, a1, v13, v16, a6);
    }

    return v22;
  }
}

{
  *v23 = a3;
  *&v23[1] = a4;
  *&v23[2] = a5;
  type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, CGFloat>(0);
  if (v12 == MEMORY[0x1E69E63B0])
  {
    *v21 = a3;
    (*(*a2 + 120))(&v22, v21, a1, MEMORY[0x1E69E63B0], &protocol witness table for Double, a6);
    return v22;
  }

  else
  {
    v13 = v12;
    type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>(0);
    if (v13 == v14)
    {
      v18 = v14;
      *v21 = a3;
      *&v21[1] = a4;
      *&v21[2] = a5;
      v19 = *(*a2 + 120);
      lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, protocol conformance descriptor for AnimatablePair<A, B>);
      v19(&v22, v21, a1, v18, v20, a6);
    }

    else
    {
      v15 = *(*a2 + 120);
      lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<AnimatablePair<CGFloat, CGFloat>, CGFloat> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, CGFloat>, protocol conformance descriptor for AnimatablePair<A, B>);
      v15(&v22, v23, a1, v13, v16, a6);
    }

    return v22;
  }
}

{
  *v23 = a3;
  *&v23[1] = a4;
  *&v23[2] = a5;
  type metadata accessor for AnimatableValues<Pack{CGFloat, CGFloat, CGFloat}>(0);
  if (v12 == MEMORY[0x1E69E63B0])
  {
    *v21 = a3;
    (*(*a2 + 120))(&v22, v21, a1, MEMORY[0x1E69E63B0], &protocol witness table for Double, a6);
    return v22;
  }

  else
  {
    v13 = v12;
    type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>(0);
    if (v13 == v14)
    {
      v18 = v14;
      *v21 = a3;
      *&v21[1] = a4;
      *&v21[2] = a5;
      v19 = *(*a2 + 120);
      lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, protocol conformance descriptor for AnimatablePair<A, B>);
      v19(&v22, v21, a1, v18, v20, a6);
    }

    else
    {
      v15 = *(*a2 + 120);
      lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatableValues<Pack{CGFloat, CGFloat, CGFloat}> and conformance AnimatableValues<Pack{repeat A}>, type metadata accessor for AnimatableValues<Pack{CGFloat, CGFloat, CGFloat}>, protocol conformance descriptor for AnimatableValues<Pack{repeat A}>);
      v15(&v22, v23, a1, v13, v16, a6);
    }

    return v22;
  }
}

uint64_t specialized Animation.animate<A>(value:time:context:)(uint64_t a1, uint64_t a2, float a3, float a4, float a5, float a6, double a7)
{
  *&v21 = __PAIR64__(LODWORD(a4), LODWORD(a3));
  *(&v21 + 1) = __PAIR64__(LODWORD(a6), LODWORD(a5));
  type metadata accessor for AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>(0);
  if (v10 == MEMORY[0x1E69E63B0])
  {
    *&v19[0] = v21;
    (*(*a2 + 120))(&v20, v19, a1, MEMORY[0x1E69E63B0], &protocol witness table for Double, a7);
    return v20;
  }

  else
  {
    v11 = v10;
    type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>(0);
    if (v11 == v12)
    {
      v16 = v12;
      v19[0] = v21;
      v17 = *(*a2 + 120);
      lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, protocol conformance descriptor for AnimatablePair<A, B>);
      v17(&v20, v19, a1, v16, v18, a7);
    }

    else
    {
      v13 = *(*a2 + 120);
      lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>, protocol conformance descriptor for AnimatablePair<A, B>);
      v13(&v20, &v21, a1, v11, v14, a7);
    }

    return v20;
  }
}

uint64_t specialized Animation.animate<A>(value:time:context:)(__int128 *a1, uint64_t a2, uint64_t a3, double a4)
{
  v19 = *a1;
  LODWORD(v20) = *(a1 + 4);
  type metadata accessor for AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>(0);
  if (v7 == MEMORY[0x1E69E63B0])
  {
    *&v16 = v19;
    (*(*a3 + 120))(&v18, &v16, a2, MEMORY[0x1E69E63B0], &protocol witness table for Double, a4);
    return v18;
  }

  else
  {
    v8 = v7;
    type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>(0);
    if (v8 == v9)
    {
      v13 = v9;
      v16 = v19;
      v17 = v20;
      v14 = *(*a3 + 120);
      lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, protocol conformance descriptor for AnimatablePair<A, B>);
      v14(&v18, &v16, a2, v13, v15, a4);
    }

    else
    {
      v10 = *(*a3 + 120);
      lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>, protocol conformance descriptor for AnimatablePair<A, B>);
      v10(&v18, &v19, a2, v8, v11, a4);
    }

    return v18;
  }
}

{
  v19 = *a1;
  v20 = *(a1 + 2);
  type metadata accessor for AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>>(0);
  if (v7 == MEMORY[0x1E69E63B0])
  {
    *&v16 = v19;
    (*(*a3 + 120))(&v18, &v16, a2, MEMORY[0x1E69E63B0], &protocol witness table for Double, a4);
    return v18;
  }

  else
  {
    v8 = v7;
    type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>(0);
    if (v8 == v9)
    {
      v13 = v9;
      v16 = v19;
      v17 = v20;
      v14 = *(*a3 + 120);
      lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, protocol conformance descriptor for AnimatablePair<A, B>);
      v14(&v18, &v16, a2, v13, v15, a4);
    }

    else
    {
      v10 = *(*a3 + 120);
      lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>>, protocol conformance descriptor for AnimatablePair<A, B>);
      v10(&v18, &v19, a2, v8, v11, a4);
    }

    return v18;
  }
}

{
  v19 = *a1;
  v20 = *(a1 + 2);
  type metadata accessor for AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, Float>>, AnimatablePair<Float, AnimatablePair<Float, Float>>>(0);
  if (v7 == MEMORY[0x1E69E63B0])
  {
    *&v16 = v19;
    (*(*a3 + 120))(&v18, &v16, a2, MEMORY[0x1E69E63B0], &protocol witness table for Double, a4);
    return v18;
  }

  else
  {
    v8 = v7;
    type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>(0);
    if (v8 == v9)
    {
      v13 = v9;
      v16 = v19;
      v17 = v20;
      v14 = *(*a3 + 120);
      lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, protocol conformance descriptor for AnimatablePair<A, B>);
      v14(&v18, &v16, a2, v13, v15, a4);
    }

    else
    {
      v10 = *(*a3 + 120);
      lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, Float>>, AnimatablePair<Float, AnimatablePair<Float, Float>>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, Float>>, AnimatablePair<Float, AnimatablePair<Float, Float>>>, protocol conformance descriptor for AnimatablePair<A, B>);
      v10(&v18, &v19, a2, v8, v11, a4);
    }

    return v18;
  }
}

void *specialized Animation.animate<A>(value:time:context:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v9 = a1[1];
  v25 = *a1;
  v26 = v9;
  v27 = *(a1 + 4);
  type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, CGFloat>(0);
  if (v10 == MEMORY[0x1E69E63B0])
  {
    *&v24[0] = v25;
    result = (*(*a3 + 120))(v28, v24, a2, MEMORY[0x1E69E63B0], &protocol witness table for Double, a5);
    v16 = v28[0];
  }

  else
  {
    v11 = v10;
    type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>(0);
    if (v11 == v12)
    {
      v18 = v12;
      v24[0] = v25;
      v24[1] = v26;
      v19 = *(*a3 + 120);
      lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, protocol conformance descriptor for AnimatablePair<A, B>);
      result = v19(v28, v24, a2, v18, v20, a5);
    }

    else
    {
      v13 = *(*a3 + 120);
      lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, CGFloat> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, CGFloat>, protocol conformance descriptor for AnimatablePair<A, B>);
      result = v13(v28, &v25, a2, v11, v14, a5);
    }

    v16 = v28[0];
    v17 = v29;
  }

  v21 = v28[1];
  v22 = v30;
  v23 = v31;
  *a4 = v16;
  *(a4 + 8) = v21;
  *(a4 + 16) = v17;
  *(a4 + 32) = v22;
  *(a4 + 40) = v23;
  return result;
}

unint64_t *AnimatorState.__allocating_init(animation:interval:at:in:)(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = specialized AnimatorState.__allocating_init(animation:interval:at:in:)(a1, a2, a3, a4);
  (*(*(*(v4 + 80) - 8) + 8))(a2);
  return v6;
}

uint64_t specialized AnimatorState.update(_:at:environment:)(void *a1, unint64_t a2, double a3)
{
  v4 = v3;
  v7 = *(v3 + 56);
  v8 = *(v3 + 64);
  if (v8 + v7 * -0.5 >= a3)
  {
    goto LABEL_19;
  }

  if (*(v3 + 89) <= 1u)
  {
    if (!*(v3 + 89))
    {
      *(v3 + 48) = a3;
      v10 = 1;
LABEL_10:
      *(v3 + 89) = v10;
      goto LABEL_11;
    }

    *(v3 + 89) = 2;
    swift_beginAccess();
    if (static CoreTesting.isRunning)
    {
      goto LABEL_11;
    }

    *(v3 + 64) = v8 - *(v3 + 48) + a3;
    *(v3 + 48) = a3;
LABEL_19:
    swift_beginAccess();
    v35 = *(v3 + 72);
    v36 = *(v4 + 80);

    _s7SwiftUI20KeyedAnimatableArrayV2peoiyyACyxq_Gz_AEtFZAA16_ShapeStyle_PackV3KeyV_AA0D4PairVyAG4FillO0D4DataOAKySfAA0dE0VyAKySfAG6EffectV4KindOANOGGGGTt1B5(a1, v35, v36);

    swift_beginAccess();
    v37 = *(v4 + 32);
    v38 = *(v4 + 40);

    _s7SwiftUI20KeyedAnimatableArrayV2seoiyyACyxq_Gz_AEtFZAA16_ShapeStyle_PackV3KeyV_AA0D4PairVyAG4FillO0D4DataOAKySfAA0dE0VyAKySfAG6EffectV4KindOANOGGGGTt1B5(a1, v37, v38);

    return 0;
  }

  if (*(v3 + 89) == 2)
  {
    v11 = fmax(v7, 0.0166666667);
    v12 = v11 + v11;
    if (v11 + v11 < a3 - *(v3 + 48))
    {
      swift_beginAccess();
      if ((static CoreTesting.isRunning & 1) == 0)
      {
        *(v3 + 48) = a3 - v12;
      }
    }

    v10 = 3;
    goto LABEL_10;
  }

LABEL_11:
  v13 = a3 - *(v3 + 48);
  swift_beginAccess();
  v14 = *(v3 + 24);
  v15 = *(v4 + 112);

  v44[0] = v14;
  v44[1] = AGCreateWeakAttribute();
  v45 = 0;
  v46 = v15;
  v16 = *(v4 + 120);
  if (v16)
  {
    v17 = *(v4 + 128);
    type metadata accessor for AnimationFinishingDefinitionKey<KeyedAnimatableArray<_ShapeStyle_Pack.Key, AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>>(0);
    v19 = v18;
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<KeyedAnimatableArray<_ShapeStyle_Pack.Key, AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>>?, type metadata accessor for AnimationFinishingDefinitionKey<KeyedAnimatableArray<_ShapeStyle_Pack.Key, AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>>, MEMORY[0x1E69E6720]);
    v39[3] = v20;
    v39[0] = v16;
    v39[1] = v17;
    specialized Dictionary.subscript.setter(v39, v19);
  }

  swift_beginAccess();
  v21 = *(v4 + 16);
  swift_beginAccess();
  v22 = *(v4 + 40);
  v42 = *(v4 + 32);
  v43 = v22;
  v23 = *(*v21 + 120);
  type metadata accessor for KeyedAnimatableArray<_ShapeStyle_Pack.Key, AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>(0);
  v25 = v24;
  lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type KeyedAnimatableArray<_ShapeStyle_Pack.Key, AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>> and conformance KeyedAnimatableArray<A, B>, type metadata accessor for KeyedAnimatableArray<_ShapeStyle_Pack.Key, AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>, protocol conformance descriptor for KeyedAnimatableArray<A, B>);
  v27 = v26;

  v23(&v40, &v42, v44, v25, v27, v13);

  v28 = v40;
  if (!v40)
  {

    return 1;
  }

  v29 = v41;
  specialized AnimatorState.updateListeners(isLogicallyComplete:time:environment:)(v46, a2 | ((HIDWORD(a2) & 1) << 32), v13);
  *(v4 + 24) = v44[0];

  v30 = v29 & 1;
  _s7SwiftUI20KeyedAnimatableArrayV2peoiyyACyxq_Gz_AEtFZAA16_ShapeStyle_PackV3KeyV_AA0D4PairVyAG4FillO0D4DataOAKySfAA0dE0VyAKySfAG6EffectV4KindOANOGGGGTt1B5(a1, v28, v29 & 1);
  v31 = *(v4 + 32);
  v32 = *(v4 + 40);

  _s7SwiftUI20KeyedAnimatableArrayV2seoiyyACyxq_Gz_AEtFZAA16_ShapeStyle_PackV3KeyV_AA0D4PairVyAG4FillO0D4DataOAKySfAA0dE0VyAKySfAG6EffectV4KindOANOGGGGTt1B5(a1, v31, v32);

  swift_beginAccess();
  *(v4 + 72) = v28;
  *(v4 + 80) = v30;

  *(v4 + 64) = a3;
  v33 = *(v4 + 56);
  if (v33 > 0.0)
  {
    *(v4 + 64) = v33 * (round(a3 / v33) + 1.0);
  }

  return 0;
}

uint64_t specialized AnimatorState.update(_:at:environment:)(unint64_t a1, unint64_t a2, double a3)
{
  v4 = v3;
  v7 = *(v3 + 64);
  v8 = *(v3 + 72);
  if (v8 + v7 * -0.5 >= a3)
  {
    goto LABEL_20;
  }

  if (*(v3 + 109) <= 1u)
  {
    if (!*(v3 + 109))
    {
      *(v3 + 56) = a3;
      v10 = 1;
LABEL_10:
      *(v3 + 109) = v10;
      goto LABEL_11;
    }

    *(v3 + 109) = 2;
    swift_beginAccess();
    if (static CoreTesting.isRunning)
    {
      goto LABEL_11;
    }

    *(v3 + 72) = v8 - *(v3 + 56) + a3;
    *(v3 + 56) = a3;
LABEL_20:
    swift_beginAccess();
    v39 = *(v3 + 80);
    v40 = *(v4 + 88);
    v41 = *(v4 + 96);

    _s7SwiftUI20KeyedAnimatableArrayV2peoiyyACyxq_Gz_AEtFZSi_AA04_AnyD4DataVTt1B5(a1, v39, v40);

    v42 = v41 + *(a1 + 16);
    swift_beginAccess();
    v43 = *(v4 + 32);
    v44 = *(v4 + 40);
    v45 = *(v4 + 48);

    _s7SwiftUI20KeyedAnimatableArrayV2seoiyyACyxq_Gz_AEtFZSi_AA04_AnyD4DataVTt1B5(a1, v43, v44);

    result = 0;
    *(a1 + 16) = v42 - v45;
    return result;
  }

  if (*(v3 + 109) == 2)
  {
    v11 = fmax(v7, 0.0166666667);
    v12 = v11 + v11;
    if (v11 + v11 < a3 - *(v3 + 56))
    {
      swift_beginAccess();
      if ((static CoreTesting.isRunning & 1) == 0)
      {
        *(v3 + 56) = a3 - v12;
      }
    }

    v10 = 3;
    goto LABEL_10;
  }

LABEL_11:
  v13 = a3 - *(v3 + 56);
  swift_beginAccess();
  v14 = *(v3 + 24);
  v15 = *(v4 + 128);

  v53[0] = v14;
  v53[1] = AGCreateWeakAttribute();
  v54 = 0;
  v55 = v15;
  v16 = *(v4 + 136);
  if (v16)
  {
    v17 = *(v4 + 144);
    type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<KeyedAnimatableArray<Int, _AnyAnimatableData>, CGFloat>>(0);
    v19 = v18;
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<AnimatablePair<KeyedAnimatableArray<Int, _AnyAnimatableData>, CGFloat>>?, type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<KeyedAnimatableArray<Int, _AnyAnimatableData>, CGFloat>>, MEMORY[0x1E69E6720]);
    v49 = v20;
    v46 = v16;
    v47 = v17;
    specialized Dictionary.subscript.setter(&v46, v19);
  }

  swift_beginAccess();
  v21 = *(v4 + 16);
  swift_beginAccess();
  v22 = *(v4 + 40);
  v23 = *(v4 + 48);
  v50 = *(v4 + 32);
  v51 = v22;
  v52 = v23;
  v24 = *(*v21 + 120);
  type metadata accessor for AnimatablePair<KeyedAnimatableArray<Int, _AnyAnimatableData>, CGFloat>(0);
  v26 = v25;
  lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<KeyedAnimatableArray<Int, _AnyAnimatableData>, CGFloat> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<KeyedAnimatableArray<Int, _AnyAnimatableData>, CGFloat>, protocol conformance descriptor for AnimatablePair<A, B>);
  v28 = v27;

  v24(&v46, &v50, v53, v26, v28, v13);

  v29 = v46;
  if (v46)
  {
    v30 = v47;
    v31 = v48;
    specialized AnimatorState.updateListeners(isLogicallyComplete:time:environment:)(v55, a2 | ((HIDWORD(a2) & 1) << 32), v13);
    *(v4 + 24) = v53[0];

    v32 = v30 & 1;
    _s7SwiftUI20KeyedAnimatableArrayV2peoiyyACyxq_Gz_AEtFZSi_AA04_AnyD4DataVTt1B5(a1, v29, v30 & 1);
    v33 = v31 + *(a1 + 16);
    v34 = *(v4 + 32);
    v35 = *(v4 + 40);
    v36 = *(v4 + 48);

    _s7SwiftUI20KeyedAnimatableArrayV2seoiyyACyxq_Gz_AEtFZSi_AA04_AnyD4DataVTt1B5(a1, v34, v35);

    *(a1 + 16) = v33 - v36;
    swift_beginAccess();
    *(v4 + 80) = v29;
    *(v4 + 88) = v32;
    *(v4 + 96) = v31;

    *(v4 + 72) = a3;
    v37 = *(v4 + 64);
    if (v37 > 0.0)
    {
      *(v4 + 72) = v37 * (round(a3 / v37) + 1.0);
    }

    return 0;
  }

  else
  {

    return 1;
  }
}

uint64_t specialized AnimatorState.update(_:at:environment:)(float32x4_t *a1, unint64_t a2, double a3)
{
  v4 = v3;
  v7 = *(v3 + 64);
  v8 = *(v3 + 72);
  if (v8 + v7 * -0.5 >= a3)
  {
    goto LABEL_25;
  }

  if (*(v3 + 105) <= 1u)
  {
    if (!*(v3 + 105))
    {
      *(v3 + 56) = a3;
      v10 = 1;
LABEL_10:
      *(v3 + 105) = v10;
      goto LABEL_11;
    }

    *(v3 + 105) = 2;
    swift_beginAccess();
    if (static CoreTesting.isRunning)
    {
      goto LABEL_11;
    }

    *(v3 + 72) = v8 - *(v3 + 56) + a3;
    *(v3 + 56) = a3;
LABEL_25:
    swift_beginAccess();
    if (a1[1].f32[0] > *(v3 + 96))
    {
      v46 = a1[1].f32[0];
    }

    else
    {
      v46 = *(v3 + 96);
    }

    v49 = vaddq_f32(*(v3 + 80), *a1);
    *a1 = v49;
    a1[1].f32[0] = v46;
    swift_beginAccess();
    result = 0;
    v47 = *(v3 + 48);
    *a1 = vsubq_f32(v49, *(v3 + 32));
    if (v46 > v47)
    {
      v48 = v46;
    }

    else
    {
      v48 = v47;
    }

    a1[1].f32[0] = v48;
    return result;
  }

  if (*(v3 + 105) == 2)
  {
    v11 = fmax(v7, 0.0166666667);
    v12 = v11 + v11;
    if (v11 + v11 < a3 - *(v3 + 56))
    {
      swift_beginAccess();
      if ((static CoreTesting.isRunning & 1) == 0)
      {
        *(v3 + 56) = a3 - v12;
      }
    }

    v10 = 3;
    goto LABEL_10;
  }

LABEL_11:
  v13 = a3 - *(v3 + 56);
  swift_beginAccess();
  v14 = *(v3 + 24);
  v15 = *(v4 + 128);

  v58[0] = v14;
  v58[1] = AGCreateWeakAttribute();
  v59 = 0;
  v60 = v15;
  v16 = *(v4 + 136);
  if (v16)
  {
    v17 = *(v4 + 144);
    type metadata accessor for AnimationFinishingDefinitionKey<CGFloat>(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<Color.ResolvedHDR._Animatable>, lazy protocol witness table accessor for type Color.ResolvedHDR._Animatable and conformance Color.ResolvedHDR._Animatable, &type metadata for Color.ResolvedHDR._Animatable, type metadata accessor for AnimationFinishingDefinitionKey);
    v19 = v18;
    type metadata accessor for AnimationFinishingDefinitionKey<ShaderVectorData>?(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<Color.ResolvedHDR._Animatable>?, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<Color.ResolvedHDR._Animatable>, lazy protocol witness table accessor for type Color.ResolvedHDR._Animatable and conformance Color.ResolvedHDR._Animatable, &type metadata for Color.ResolvedHDR._Animatable);
    v50[3] = v20;
    v50[0] = v16;
    v50[1] = v17;
    specialized Dictionary.subscript.setter(v50, v19);
  }

  swift_beginAccess();
  v21 = *(v4 + 16);
  swift_beginAccess();
  v22 = *(v4 + 48);
  v56 = *(v4 + 32);
  v57 = v22;
  v23 = *(*v21 + 120);
  lazy protocol witness table accessor for type Color.ResolvedHDR._Animatable and conformance Color.ResolvedHDR._Animatable();
  v25 = v24;

  v23(&v51, &v56, v58, &type metadata for Color.ResolvedHDR._Animatable, v25, v13);

  if (v55)
  {

    return 1;
  }

  else
  {
    v28 = v51;
    v27 = HIDWORD(v51);
    v30 = v52;
    v29 = v53;
    v31 = v54;
    v32 = v51;
    v33 = v52;
    v34 = v53;
    specialized AnimatorState.updateListeners(isLogicallyComplete:time:environment:)(v60, a2 | ((HIDWORD(a2) & 1) << 32), v13);
    *(v4 + 24) = v58[0];

    v35 = a1->f32[0] + *&v32;
    v36 = a1->f32[1] + *(&v32 + 1);
    a1->f32[0] = v35;
    a1->f32[1] = v36;
    v37 = a1->f32[2] + v33;
    v38 = a1->f32[3] + v34;
    a1->f32[2] = v37;
    a1->f32[3] = v38;
    v39 = a1[1].f32[0];
    if (v39 <= v31)
    {
      v39 = v31;
    }

    a1[1].f32[0] = v39;
    v40 = *(v4 + 36);
    v41 = *(v4 + 40);
    v42 = *(v4 + 44);
    v43 = *(v4 + 48);
    a1->f32[0] = v35 - *(v4 + 32);
    a1->f32[1] = v36 - v40;
    a1->f32[2] = v37 - v41;
    a1->f32[3] = v38 - v42;
    if (v39 > v43)
    {
      v44 = v39;
    }

    else
    {
      v44 = v43;
    }

    a1[1].f32[0] = v44;
    swift_beginAccess();
    *(v4 + 80) = v28;
    *(v4 + 84) = v27;
    *(v4 + 88) = v30;
    *(v4 + 92) = v29;
    *(v4 + 96) = v31;
    *(v4 + 72) = a3;
    v45 = *(v4 + 64);
    if (v45 > 0.0)
    {
      *(v4 + 72) = v45 * (round(a3 / v45) + 1.0);
    }

    return 0;
  }
}

{
  v4 = v3;
  v7 = *(v3 + 56);
  v8 = *(v3 + 64);
  if (v8 + v7 * -0.5 >= a3)
  {
    goto LABEL_20;
  }

  if (*(v3 + 93) <= 1u)
  {
    if (!*(v3 + 93))
    {
      *(v3 + 48) = a3;
      v10 = 1;
LABEL_10:
      *(v3 + 93) = v10;
      goto LABEL_11;
    }

    *(v3 + 93) = 2;
    swift_beginAccess();
    if (static CoreTesting.isRunning)
    {
      goto LABEL_11;
    }

    *(v3 + 64) = v8 - *(v3 + 48) + a3;
    *(v3 + 48) = a3;
LABEL_20:
    swift_beginAccess();
    v38 = vaddq_f32(*(v3 + 72), *a1);
    swift_beginAccess();
    result = 0;
    *a1 = vsubq_f32(v38, *(v3 + 32));
    return result;
  }

  if (*(v3 + 93) == 2)
  {
    v11 = fmax(v7, 0.0166666667);
    v12 = v11 + v11;
    if (v11 + v11 < a3 - *(v3 + 48))
    {
      swift_beginAccess();
      if ((static CoreTesting.isRunning & 1) == 0)
      {
        *(v3 + 48) = a3 - v12;
      }
    }

    v10 = 3;
    goto LABEL_10;
  }

LABEL_11:
  v13 = a3 - *(v3 + 48);
  swift_beginAccess();
  v14 = *(v3 + 24);
  v15 = *(v4 + 112);

  v40[0] = v14;
  v40[1] = AGCreateWeakAttribute();
  v41 = 0;
  v42 = v15;
  v16 = *(v4 + 120);
  if (v16)
  {
    v17 = *(v4 + 128);
    type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>(0);
    v19 = v18;
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>?, type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>, MEMORY[0x1E69E6720]);
    v39[3] = v20;
    v39[0] = v16;
    v39[1] = v17;
    specialized Dictionary.subscript.setter(v39, v19);
  }

  swift_beginAccess();
  v21 = *(v4 + 16);
  swift_beginAccess();
  v22 = *(v4 + 32);
  v23 = *(v4 + 36);
  v24 = *(v4 + 40);
  v25 = *(v4 + 44);

  v26 = specialized Animation.animate<A>(value:time:context:)(v40, v21, v22, v23, v24, v25, v13);
  v28 = v27;
  v30 = v29;

  if (v30)
  {

    return 1;
  }

  else
  {
    specialized AnimatorState.updateListeners(isLogicallyComplete:time:environment:)(v42, a2 | ((HIDWORD(a2) & 1) << 32), v13);
    *(v4 + 24) = v40[0];

    v32 = a1->f32[2] + *&v28;
    v33 = a1->f32[3] + *(&v28 + 1);
    v34 = *(v4 + 40);
    v35 = *(v4 + 44);
    v36 = (a1->f32[1] + *(&v26 + 1)) - *(v4 + 36);
    a1->f32[0] = (a1->f32[0] + *&v26) - *(v4 + 32);
    a1->f32[1] = v36;
    a1->f32[2] = v32 - v34;
    a1->f32[3] = v33 - v35;
    swift_beginAccess();
    *(v4 + 72) = v26;
    *(v4 + 80) = v28;
    *(v4 + 64) = a3;
    v37 = *(v4 + 56);
    if (v37 > 0.0)
    {
      *(v4 + 64) = v37 * (round(a3 / v37) + 1.0);
    }

    return 0;
  }
}

{
  v4 = v3;
  v7 = *(v3 + 64);
  v8 = *(v3 + 72);
  if (v8 + v7 * -0.5 >= a3)
  {
    goto LABEL_20;
  }

  if (*(v3 + 105) <= 1u)
  {
    if (!*(v3 + 105))
    {
      *(v3 + 56) = a3;
      v10 = 1;
LABEL_10:
      *(v3 + 105) = v10;
      goto LABEL_11;
    }

    *(v3 + 105) = 2;
    swift_beginAccess();
    if (static CoreTesting.isRunning)
    {
      goto LABEL_11;
    }

    *(v3 + 72) = v8 - *(v3 + 56) + a3;
    *(v3 + 56) = a3;
LABEL_20:
    swift_beginAccess();
    v36 = *(v3 + 96) + a1[1].f32[0];
    v38 = vaddq_f32(*(v3 + 80), *a1);
    swift_beginAccess();
    result = 0;
    v37 = *(v3 + 48);
    *a1 = vsubq_f32(v38, *(v3 + 32));
    a1[1].f32[0] = v36 - v37;
    return result;
  }

  if (*(v3 + 105) == 2)
  {
    v11 = fmax(v7, 0.0166666667);
    v12 = v11 + v11;
    if (v11 + v11 < a3 - *(v3 + 56))
    {
      swift_beginAccess();
      if ((static CoreTesting.isRunning & 1) == 0)
      {
        *(v3 + 56) = a3 - v12;
      }
    }

    v10 = 3;
    goto LABEL_10;
  }

LABEL_11:
  v13 = a3 - *(v3 + 56);
  swift_beginAccess();
  v14 = *(v3 + 24);
  v15 = *(v4 + 128);

  v40[0] = v14;
  v40[1] = AGCreateWeakAttribute();
  v41 = 0;
  v42 = v15;
  v16 = *(v4 + 136);
  if (v16)
  {
    v17 = *(v4 + 144);
    type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>>(0);
    v19 = v18;
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>>?, type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>>, MEMORY[0x1E69E6720]);
    v39[3] = v20;
    v39[0] = v16;
    v39[1] = v17;
    specialized Dictionary.subscript.setter(v39, v19);
  }

  swift_beginAccess();
  v21 = *(v4 + 16);
  swift_beginAccess();
  v43 = *(v4 + 32);
  v44 = *(v4 + 48);

  v22 = specialized Animation.animate<A>(value:time:context:)(&v43, v40, v21, v13);
  v24 = v23;
  v26 = v25;

  if ((v26 & 0x100000000) != 0)
  {

    return 1;
  }

  else
  {
    specialized AnimatorState.updateListeners(isLogicallyComplete:time:environment:)(v42, a2 | ((HIDWORD(a2) & 1) << 32), v13);
    *(v4 + 24) = v40[0];

    v27 = a1->f32[2] + *&v24;
    v28 = a1->f32[3] + *(&v24 + 1);
    v29 = a1[1].f32[0] + *&v26;
    v30 = *(v4 + 40);
    v31 = *(v4 + 44);
    v32 = *(v4 + 48);
    v33 = (a1->f32[1] + *(&v22 + 1)) - *(v4 + 36);
    a1->f32[0] = (a1->f32[0] + *&v22) - *(v4 + 32);
    a1->f32[1] = v33;
    a1->f32[2] = v27 - v30;
    a1->f32[3] = v28 - v31;
    a1[1].f32[0] = v29 - v32;
    swift_beginAccess();
    *(v4 + 80) = v22;
    *(v4 + 88) = v24;
    *(v4 + 96) = v26;
    *(v4 + 72) = a3;
    v34 = *(v4 + 64);
    if (v34 > 0.0)
    {
      *(v4 + 72) = v34 * (round(a3 / v34) + 1.0);
    }

    return 0;
  }
}

uint64_t specialized AnimatorState.update(_:at:environment:)(char **a1, unint64_t a2, double a3)
{
  v4 = v3;
  v7 = *(v3 + 48);
  v8 = *(v3 + 56);
  if (v8 + v7 * -0.5 >= a3)
  {
    goto LABEL_19;
  }

  if (*(v3 + 77) <= 1u)
  {
    if (!*(v3 + 77))
    {
      *(v3 + 40) = a3;
      v10 = 1;
LABEL_10:
      *(v3 + 77) = v10;
      goto LABEL_11;
    }

    *(v3 + 77) = 2;
    swift_beginAccess();
    if (static CoreTesting.isRunning)
    {
      goto LABEL_11;
    }

    *(v3 + 56) = v8 - *(v3 + 40) + a3;
    *(v3 + 40) = a3;
LABEL_19:
    swift_beginAccess();
    v35 = *(v3 + 64);

    specialized static ShaderVectorData.+= infix(_:_:)(a1, &v35);

    swift_beginAccess();
    v30 = *(v3 + 32);

    specialized static ShaderVectorData.-= infix(_:_:)(a1, &v30);

    return 0;
  }

  if (*(v3 + 77) == 2)
  {
    v11 = fmax(v7, 0.0166666667);
    v12 = v11 + v11;
    if (v11 + v11 < a3 - *(v3 + 40))
    {
      swift_beginAccess();
      if ((static CoreTesting.isRunning & 1) == 0)
      {
        *(v3 + 40) = a3 - v12;
      }
    }

    v10 = 3;
    goto LABEL_10;
  }

LABEL_11:
  v13 = a3 - *(v3 + 40);
  swift_beginAccess();
  v14 = *(v3 + 24);
  v15 = *(v4 + 96);

  v32[0] = v14;
  v32[1] = AGCreateWeakAttribute();
  v33 = 0;
  v34 = v15;
  v16 = *(v4 + 104);
  if (v16)
  {
    v17 = *(v4 + 112);
    type metadata accessor for AnimationFinishingDefinitionKey<CGFloat>(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<ShaderVectorData>, lazy protocol witness table accessor for type ShaderVectorData and conformance ShaderVectorData, &type metadata for ShaderVectorData, type metadata accessor for AnimationFinishingDefinitionKey);
    v19 = v18;
    type metadata accessor for AnimationFinishingDefinitionKey<ShaderVectorData>?(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<ShaderVectorData>?, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<ShaderVectorData>, lazy protocol witness table accessor for type ShaderVectorData and conformance ShaderVectorData, &type metadata for ShaderVectorData);
    v27[3] = v20;
    v27[0] = v16;
    v27[1] = v17;
    specialized Dictionary.subscript.setter(v27, v19);
  }

  swift_beginAccess();
  v21 = *(v4 + 16);
  swift_beginAccess();
  v29 = *(v4 + 32);
  v22 = *(*v21 + 120);
  lazy protocol witness table accessor for type ShaderVectorData and conformance ShaderVectorData();
  v24 = v23;

  v22(v28, &v29, v32, &type metadata for ShaderVectorData, v24, v13);

  if (!v28[0])
  {

    return 1;
  }

  v31 = v28[0];
  specialized AnimatorState.updateListeners(isLogicallyComplete:time:environment:)(v34, a2 | ((HIDWORD(a2) & 1) << 32), v13);
  *(v4 + 24) = v32[0];

  specialized static ShaderVectorData.+= infix(_:_:)(a1, &v31);
  v28[0] = *(v4 + 32);

  specialized static ShaderVectorData.-= infix(_:_:)(a1, v28);

  swift_beginAccess();
  *(v4 + 64) = v31;

  *(v4 + 56) = a3;
  v25 = *(v4 + 48);
  if (v25 > 0.0)
  {
    *(v4 + 56) = (round(a3 / v25) + 1.0) * v25;
  }

  return 0;
}

uint64_t specialized AnimatorState.update(_:at:environment:)(float32x2_t *a1, unint64_t a2, double a3)
{
  v4 = v3;
  v7 = *(v3 + 80);
  v8 = *(v3 + 88);
  if (v8 + v7 * -0.5 < a3)
  {
    if (*(v3 + 137) > 1u)
    {
      if (*(v3 + 137) != 2)
      {
        goto LABEL_11;
      }

      v11 = fmax(v7, 0.0166666667);
      v12 = v11 + v11;
      if (v11 + v11 < a3 - *(v3 + 72))
      {
        swift_beginAccess();
        if ((static CoreTesting.isRunning & 1) == 0)
        {
          *(v3 + 72) = a3 - v12;
        }
      }

      v10 = 3;
      goto LABEL_10;
    }

    if (!*(v3 + 137))
    {
      *(v3 + 72) = a3;
      v10 = 1;
LABEL_10:
      *(v3 + 137) = v10;
      goto LABEL_11;
    }

    *(v3 + 137) = 2;
    swift_beginAccess();
    if (static CoreTesting.isRunning)
    {
LABEL_11:
      v13 = *(v3 + 72);
      swift_beginAccess();
      v14 = *(v3 + 24);
      v15 = *(v4 + 160);

      v90[0] = v14;
      v90[1] = AGCreateWeakAttribute();
      v91 = 0;
      v92 = v15;
      v16 = *(v4 + 168);
      if (v16)
      {
        v17 = *(v4 + 176);
        type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<AnimatableArray<Float>, AnimatablePair<AnimatableArray<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>, Color.ResolvedHDR._Animatable>>>(0);
        v19 = v18;
        type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<AnimatablePair<AnimatableArray<Float>, AnimatablePair<AnimatableArray<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>, Color.ResolvedHDR._Animatable>>>?, type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<AnimatableArray<Float>, AnimatablePair<AnimatableArray<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>, Color.ResolvedHDR._Animatable>>>, MEMORY[0x1E69E6720]);
        *(&v88 + 1) = v20;
        *&v87 = v16;
        *(&v87 + 1) = v17;
        specialized Dictionary.subscript.setter(&v87, v19);
      }

      v21 = a3 - v13;
      swift_beginAccess();
      v22 = *(v4 + 16);
      swift_beginAccess();
      v23 = *(v4 + 32);
      v24 = *(v4 + 40);
      v25 = *(v4 + 64);
      v84[0] = v23;
      v84[1] = v24;
      v85 = *(v4 + 48);
      v86 = v25;
      type metadata accessor for AnimatablePair<AnimatableArray<Float>, AnimatablePair<AnimatableArray<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>, Color.ResolvedHDR._Animatable>>(0);
      if (v26 == MEMORY[0x1E69E63B0])
      {
        v80[0] = v23;
        v55 = *(*v22 + 120);

        v55(v82, v80, v90, MEMORY[0x1E69E63B0], &protocol witness table for Double, v21);
        v32 = *&v82[0];
        *&v87 = *&v82[0];
        BYTE8(v87) = BYTE8(v82[0]);

        if (v32)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v27 = v26;
        type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>(0);
        if (v27 == v28)
        {
          v69 = v28;
          v80[0] = v23;
          v80[1] = v24;
          v81 = v85;
          v70 = *(*v22 + 120);
          lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, protocol conformance descriptor for AnimatablePair<A, B>);
          v72 = v71;

          v70(v82, v80, v90, v69, v72, v21);
          v79 = *&v82[0];
          v87 = v82[0];
          v88 = v82[1];
          LOBYTE(v89) = v83;

          v32 = v79;
          if (v79)
          {
            goto LABEL_16;
          }
        }

        else
        {
          v29 = *(*v22 + 120);
          lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<AnimatableArray<Float>, AnimatablePair<AnimatableArray<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>, Color.ResolvedHDR._Animatable>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatableArray<Float>, AnimatablePair<AnimatableArray<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>, Color.ResolvedHDR._Animatable>>, protocol conformance descriptor for AnimatablePair<A, B>);
          v31 = v30;

          v29(&v87, v84, v90, v27, v31, v21);

          v32 = v87;
          if (v87)
          {
LABEL_16:
            v33 = *(&v87 + 1);
            v34 = v88;
            v35 = DWORD2(v88);
            v36 = v89;
            v37 = *&v88;
            v75 = DWORD1(v88);
            v38 = *(&v88 + 4);
            v39 = HIDWORD(*(&v88 + 1));
            v40 = *(&v88 + 3);
            v41 = v89;
            specialized AnimatorState.updateListeners(isLogicallyComplete:time:environment:)(v92, a2 | ((HIDWORD(a2) & 1) << 32), v21);
            *(v4 + 24) = v90[0];

            _s7SwiftUI15AnimatableArrayV2peoiyyACyxGz_AEtFZSf_Tt1B5(a1, v32);
            _s7SwiftUI15AnimatableArrayV2peoiyyACyxGz_AEtFZAA0C4PairVySfAGySfAGyS2fGGG_Tt1B5(&a1[1], v33);
            v42 = a1[2].f32[0] + v37;
            v43 = a1[2].f32[1] + *&v38;
            a1[2].f32[0] = v42;
            a1[2].f32[1] = v43;
            v44 = a1[3].f32[0] + *(&v38 + 1);
            v45 = a1[3].f32[1] + v40;
            a1[3].f32[0] = v44;
            a1[3].f32[1] = v45;
            if (a1[4].f32[0] > v41)
            {
              v46 = a1[4].f32[0];
            }

            else
            {
              v46 = v41;
            }

            a1[4].f32[0] = v46;
            v47 = *(v4 + 32);
            v48 = *(v4 + 40);
            v49 = *(v4 + 48);
            v50 = *(v4 + 52);
            v73 = *(v4 + 56);
            v74 = *(v4 + 60);
            v77 = a3;
            v51 = *(v4 + 64);

            _s7SwiftUI15AnimatableArrayV2seoiyyACyxGz_AEtFZSf_Tt1B5(a1, v47);
            _s7SwiftUI15AnimatableArrayV2seoiyyACyxGz_AEtFZAA0C4PairVySfAGySfAGyS2fGGG_Tt1B5(&a1[1], v48);

            a1[2].f32[0] = v42 - v49;
            a1[2].f32[1] = v43 - v50;
            a1[3].f32[0] = v44 - v73;
            a1[3].f32[1] = v45 - v74;
            if (v46 > v51)
            {
              v52 = v46;
            }

            else
            {
              v52 = v51;
            }

            a1[4].f32[0] = v52;
            swift_beginAccess();
            *(v4 + 96) = v32;
            *(v4 + 104) = v33;
            *(v4 + 112) = v34;
            *(v4 + 116) = v75;
            *(v4 + 120) = v35;
            *(v4 + 124) = v39;
            *(v4 + 128) = v36;

            *(v4 + 88) = v77;
            v53 = *(v4 + 80);
            if (v53 <= 0.0)
            {
              outlined consume of ScrapeableContent?(v32);
            }

            else
            {
              v54 = round(v77 / v53);
              outlined consume of ScrapeableContent?(v32);
              *(v4 + 88) = (v54 + 1.0) * *(v4 + 80);
            }

            return 0;
          }
        }
      }

      outlined consume of ScrapeableContent?(v87);
      return 1;
    }

    *(v3 + 88) = v8 - *(v3 + 72) + a3;
    *(v3 + 72) = a3;
  }

  swift_beginAccess();
  v57 = *(v3 + 96);
  v58 = *(v4 + 104);
  v59 = *(v4 + 128);

  v60 = *(v4 + 112);
  v61 = *(v4 + 120);
  _s7SwiftUI15AnimatableArrayV2peoiyyACyxGz_AEtFZSf_Tt1B5(a1, v57);
  _s7SwiftUI15AnimatableArrayV2peoiyyACyxGz_AEtFZAA0C4PairVySfAGySfAGyS2fGGG_Tt1B5(&a1[1], v58);

  *&v62 = vadd_f32(v60, a1[2]);
  v76 = v62;
  v78 = vadd_f32(v61, a1[3]);
  *(&v62 + 1) = v78;
  *a1[2].f32 = v62;
  if (a1[4].f32[0] > v59)
  {
    v59 = a1[4].f32[0];
  }

  a1[4].f32[0] = v59;
  swift_beginAccess();
  v63 = *(v4 + 32);
  v64 = *(v4 + 40);
  v65 = *(v4 + 48);
  v66 = *(v4 + 56);
  v67 = *(v4 + 64);

  _s7SwiftUI15AnimatableArrayV2seoiyyACyxGz_AEtFZSf_Tt1B5(a1, v63);
  _s7SwiftUI15AnimatableArrayV2seoiyyACyxGz_AEtFZAA0C4PairVySfAGySfAGyS2fGGG_Tt1B5(&a1[1], v64);

  result = 0;
  a1[2] = vsub_f32(v76, v65);
  a1[3] = vsub_f32(v78, v66);
  if (v59 > v67)
  {
    v68 = v59;
  }

  else
  {
    v68 = v67;
  }

  a1[4].f32[0] = v68;
  return result;
}

uint64_t specialized AnimatorState.update(_:at:environment:)(uint64_t a1, unint64_t a2, double a3)
{
  v4 = v3;
  v7 = *(v3 + 80);
  v8 = *(v3 + 88);
  if (v8 + v7 * -0.5 >= a3)
  {
    goto LABEL_19;
  }

  if (*(v3 + 141) <= 1u)
  {
    if (!*(v3 + 141))
    {
      *(v3 + 72) = a3;
      v10 = 1;
LABEL_10:
      *(v3 + 141) = v10;
      goto LABEL_11;
    }

    *(v3 + 141) = 2;
    swift_beginAccess();
    if (static CoreTesting.isRunning)
    {
      goto LABEL_11;
    }

    *(v3 + 88) = v8 - *(v3 + 72) + a3;
    *(v3 + 72) = a3;
LABEL_19:
    swift_beginAccess();
    v31 = *(v3 + 128) + *(a1 + 32);
    v61 = vaddq_f32(*(v3 + 96), *a1);
    v63 = vaddq_f64(*(v3 + 112), *(a1 + 16));
    swift_beginAccess();
    result = 0;
    v33 = *(v3 + 64);
    v34 = vsubq_f64(v63, *(v3 + 48));
    *a1 = vsubq_f32(v61, *(v3 + 32));
    *(a1 + 16) = v34;
    *(a1 + 32) = v31 - v33;
    return result;
  }

  if (*(v3 + 141) == 2)
  {
    v11 = fmax(v7, 0.0166666667);
    v12 = v11 + v11;
    if (v11 + v11 < a3 - *(v3 + 72))
    {
      swift_beginAccess();
      if ((static CoreTesting.isRunning & 1) == 0)
      {
        *(v3 + 72) = a3 - v12;
      }
    }

    v10 = 3;
    goto LABEL_10;
  }

LABEL_11:
  v13 = *(v3 + 72);
  swift_beginAccess();
  v14 = *(v3 + 24);
  v15 = *(v4 + 160);

  v76[0] = v14;
  v76[1] = AGCreateWeakAttribute();
  v77 = 0;
  v78 = v15;
  v16 = *(v4 + 168);
  if (v16)
  {
    v17 = *(v4 + 176);
    type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>>(0);
    v19 = v18;
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>>?, type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>>, MEMORY[0x1E69E6720]);
    *(&v73 + 1) = v20;
    *&v72 = v16;
    *(&v72 + 1) = v17;
    specialized Dictionary.subscript.setter(&v72, v19);
  }

  v21 = a3 - v13;
  swift_beginAccess();
  v22 = *(v4 + 16);
  swift_beginAccess();
  v23 = *(v4 + 48);
  v69 = *(v4 + 32);
  v70 = v23;
  v62 = *(v4 + 56);
  v71 = v62;
  type metadata accessor for AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>(0);
  if (v24 == MEMORY[0x1E69E63B0])
  {
    *&v64 = v69;
    v30 = *(*v22 + 120);

    v30(v67, &v64, v76, MEMORY[0x1E69E63B0], &protocol witness table for Double, v21);
    *&v72 = *&v67[0];
    BYTE8(v72) = BYTE8(v67[0]);
  }

  else
  {
    v25 = v24;
    type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>(0);
    if (v25 == v26)
    {
      v35 = v26;
      v64 = v69;
      v65 = v23;
      v66 = v62;
      v36 = *(*v22 + 120);
      lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, protocol conformance descriptor for AnimatablePair<A, B>);
      v38 = v37;

      v36(v67, &v64, v76, v35, v38, v21);
      v72 = v67[0];
      v73 = v67[1];
      LOBYTE(v74) = v68;
    }

    else
    {
      v27 = *(*v22 + 120);
      lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>, protocol conformance descriptor for AnimatablePair<A, B>);
      v29 = v28;

      v27(&v72, &v69, v76, v25, v29, v21);
    }
  }

  if (v75)
  {

    return 1;
  }

  else
  {
    v40 = v72;
    v39 = DWORD1(v72);
    v42 = DWORD2(v72);
    v41 = HIDWORD(v72);
    v43 = v73;
    v44 = v74;
    v45 = v72;
    v46 = *(&v72 + 2);
    v47 = v21;
    v48 = *(&v72 + 3);
    specialized AnimatorState.updateListeners(isLogicallyComplete:time:environment:)(v78, a2 | ((HIDWORD(a2) & 1) << 32), v47);
    *(v4 + 24) = v76[0];

    v49 = *(a1 + 8) + v46;
    v50 = *(a1 + 12) + v48;
    v51 = *&v43 + *(a1 + 16);
    v52 = *(&v43 + 1) + *(a1 + 24);
    v53 = v44 + *(a1 + 32);
    v54 = *(v4 + 40);
    v55 = *(v4 + 44);
    v56 = *(v4 + 48);
    v57 = *(v4 + 56);
    v58 = *(v4 + 64);
    v59 = (*(a1 + 4) + *(&v45 + 1)) - *(v4 + 36);
    *a1 = (*a1 + *&v45) - *(v4 + 32);
    *(a1 + 4) = v59;
    *(a1 + 8) = v49 - v54;
    *(a1 + 12) = v50 - v55;
    *(a1 + 16) = v51 - v56;
    *(a1 + 24) = v52 - v57;
    *(a1 + 32) = v53 - v58;
    swift_beginAccess();
    *(v4 + 96) = v40;
    *(v4 + 100) = v39;
    *(v4 + 104) = v42;
    *(v4 + 108) = v41;
    *(v4 + 112) = v43;
    *(v4 + 128) = v44;
    *(v4 + 88) = a3;
    v60 = *(v4 + 80);
    if (v60 > 0.0)
    {
      *(v4 + 88) = v60 * (round(a3 / v60) + 1.0);
    }

    return 0;
  }
}

{
  v4 = v3;
  v7 = *(v3 + 144);
  v8 = *(v3 + 152);
  if (v8 + v7 * -0.5 >= a3)
  {
    goto LABEL_19;
  }

  if (*(v3 + 269) > 1u)
  {
    if (*(v3 + 269) != 2)
    {
      goto LABEL_11;
    }

    v11 = fmax(v7, 0.0166666667);
    v12 = v11 + v11;
    if (v11 + v11 < a3 - *(v3 + 136))
    {
      swift_beginAccess();
      if ((static CoreTesting.isRunning & 1) == 0)
      {
        *(v3 + 136) = a3 - v12;
      }
    }

    v10 = 3;
    goto LABEL_10;
  }

  if (!*(v3 + 269))
  {
    *(v3 + 136) = a3;
    v10 = 1;
LABEL_10:
    *(v3 + 269) = v10;
    goto LABEL_11;
  }

  *(v3 + 269) = 2;
  swift_beginAccess();
  if ((static CoreTesting.isRunning & 1) == 0)
  {
    *(v3 + 152) = v8 - *(v3 + 136) + a3;
    *(v3 + 136) = a3;
LABEL_19:
    swift_beginAccess();
    v36 = *(v3 + 208);
    v37 = *(v3 + 240);
    v127 = *(v3 + 224);
    *v128 = v37;
    v38 = *(v3 + 176);
    v123 = *(v3 + 160);
    v124 = v38;
    v39 = *(v3 + 208);
    v41 = *(v3 + 160);
    v40 = *(v3 + 176);
    v125 = *(v3 + 192);
    v126 = v39;
    v42 = *(v3 + 240);
    v133 = v127;
    v134 = v42;
    *&v128[16] = *(v3 + 256);
    v129 = v41;
    v130 = v40;
    v43 = *&v128[8];
    v135 = *(v3 + 256);
    v131 = v125;
    v132 = v36;
    _s7SwiftUI13AnimatorStateC4Fork33_35ADF281214A25133F1A6DF28858952DLLVyAA14AnimatablePairVyAA05KeyedK5ArrayVySiAA04_AnyK4DataVG12CoreGraphics7CGFloatVG_GWOcTm_0(&v123, &v116, type metadata accessor for AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>);
    specialized static _ShapeStyle_Pack.Fill.AnimatableData.+= infix(_:_:)(a1, &v129);
    v44 = v43 + *(a1 + 88);
    _s7SwiftUI15AnimatableArrayV2peoiyyACyxGz_AEtFZAA0C4PairVySfAA16_ShapeStyle_PackV6EffectV4KindO0C4DataOG_Tt1B5((a1 + 96), v135);
    outlined destroy of Slice<IndexSet>(&v123, type metadata accessor for AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>);
    swift_beginAccess();
    v45 = *(v3 + 80);
    v46 = *(v3 + 112);
    v133 = *(v3 + 96);
    v134 = v46;
    v47 = *(v3 + 48);
    v129 = *(v3 + 32);
    v130 = v47;
    v48 = *(v3 + 80);
    v50 = *(v3 + 32);
    v49 = *(v3 + 48);
    v131 = *(v3 + 64);
    v132 = v48;
    v51 = *(v3 + 112);
    v120 = v133;
    v121 = v51;
    v135 = *(v3 + 128);
    v116 = v50;
    v117 = v49;
    v52 = *(&v134 + 2);
    v122 = *(v3 + 128);
    v118 = v131;
    v119 = v45;
    _s7SwiftUI13AnimatorStateC4Fork33_35ADF281214A25133F1A6DF28858952DLLVyAA14AnimatablePairVyAA05KeyedK5ArrayVySiAA04_AnyK4DataVG12CoreGraphics7CGFloatVG_GWOcTm_0(&v129, &v110, type metadata accessor for AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>);
    specialized static _ShapeStyle_Pack.Fill.AnimatableData.-= infix(_:_:)(a1, &v116);
    v53 = v122;
    *(a1 + 88) = v44 - v52;
    _s7SwiftUI15AnimatableArrayV2seoiyyACyxGz_AEtFZAA0C4PairVySfAA16_ShapeStyle_PackV6EffectV4KindO0C4DataOG_Tt1B5((a1 + 96), v53);
    v54 = &v129;
    v55 = type metadata accessor for AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>;
    goto LABEL_20;
  }

LABEL_11:
  v13 = *(v3 + 136);
  swift_beginAccess();
  v14 = *(v3 + 24);
  v15 = *(v4 + 288);

  v107[0] = v14;
  v107[1] = AGCreateWeakAttribute();
  v108 = 0;
  v109 = v15;
  v16 = *(v4 + 296);
  if (v16)
  {
    v17 = *(v4 + 304);
    type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>(0);
    v19 = v18;
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>?, type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>, MEMORY[0x1E69E6720]);
    *(&v130 + 1) = v20;
    *&v129 = v16;
    *(&v129 + 1) = v17;
    specialized Dictionary.subscript.setter(&v129, v19);
  }

  v21 = a3 - v13;
  swift_beginAccess();
  v22 = *(v4 + 16);
  swift_beginAccess();
  v23 = *(v4 + 80);
  v24 = *(v4 + 112);
  v133 = *(v4 + 96);
  v134 = v24;
  v25 = *(v4 + 48);
  v129 = *(v4 + 32);
  v130 = v25;
  v26 = *(v4 + 80);
  v28 = *(v4 + 32);
  v27 = *(v4 + 48);
  v131 = *(v4 + 64);
  v132 = v26;
  v29 = *(v4 + 112);
  v120 = v133;
  v121 = v29;
  v116 = v28;
  v117 = v27;
  v135 = *(v4 + 128);
  v122 = *(v4 + 128);
  v118 = v131;
  v119 = v23;
  type metadata accessor for AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>(0);
  if (v30 == MEMORY[0x1E69E63B0])
  {
    *&v100 = v116;
    v35 = *(*v22 + 120);

    _s7SwiftUI13AnimatorStateC4Fork33_35ADF281214A25133F1A6DF28858952DLLVyAA14AnimatablePairVyAA05KeyedK5ArrayVySiAA04_AnyK4DataVG12CoreGraphics7CGFloatVG_GWOcTm_0(&v129, &v110, type metadata accessor for AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>);
    v35(&v110, &v100, v107, MEMORY[0x1E69E63B0], &protocol witness table for Double, v21);
    *&v123 = v110;
    BYTE8(v123) = BYTE8(v110);
  }

  else
  {
    v31 = v30;
    type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>(0);
    if (v31 == v32)
    {
      v57 = v32;
      v100 = v116;
      v101 = v117;
      v58 = *(*v22 + 120);

      _s7SwiftUI13AnimatorStateC4Fork33_35ADF281214A25133F1A6DF28858952DLLVyAA14AnimatablePairVyAA05KeyedK5ArrayVySiAA04_AnyK4DataVG12CoreGraphics7CGFloatVG_GWOcTm_0(&v129, &v110, type metadata accessor for AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>);
      lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, protocol conformance descriptor for AnimatablePair<A, B>);
      v58(&v110, &v100, v107, v57, v59, v21);
      v123 = v110;
      v124 = v111;
      LOBYTE(v125) = v112;
    }

    else
    {
      v33 = *(*v22 + 120);

      _s7SwiftUI13AnimatorStateC4Fork33_35ADF281214A25133F1A6DF28858952DLLVyAA14AnimatablePairVyAA05KeyedK5ArrayVySiAA04_AnyK4DataVG12CoreGraphics7CGFloatVG_GWOcTm_0(&v129, &v110, type metadata accessor for AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>);
      lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>, protocol conformance descriptor for AnimatablePair<A, B>);
      v33(&v123, &v116, v107, v31, v34, v21);
    }
  }

  outlined destroy of Slice<IndexSet>(&v129, type metadata accessor for AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>);
  if (*&v128[16])
  {
    v83 = v127;
    v84 = *v128;
    v79 = v123;
    v80 = v124;
    v81 = v125;
    v82 = v126;
    v88 = v123;
    v89 = v124;
    v85 = *&v128[16];
    v93 = *v128;
    v91 = v126;
    v92 = v127;
    v90 = v125;
    v60 = *&v128[8];
    v87 = *&v128[20];
    v86 = *&v128[12];
    specialized AnimatorState.updateListeners(isLogicallyComplete:time:environment:)(v109, a2 | ((HIDWORD(a2) & 1) << 32), v21);
    *(v4 + 24) = v107[0];

    v112 = v90;
    v113 = v91;
    v114 = v92;
    *v115 = v93;
    v110 = v88;
    v111 = v89;
    *&v115[8] = v60;
    *&v115[12] = v86;
    *&v115[20] = v87;
    specialized static _ShapeStyle_Pack.Fill.AnimatableData.+= infix(_:_:)(a1, &v110);
    v61 = v60 + *(a1 + 88);
    _s7SwiftUI15AnimatableArrayV2peoiyyACyxGz_AEtFZAA0C4PairVySfAA16_ShapeStyle_PackV6EffectV4KindO0C4DataOG_Tt1B5((a1 + 96), *&v115[16]);
    v62 = *(v4 + 80);
    v63 = *(v4 + 112);
    v97 = *(v4 + 96);
    v98 = v63;
    v64 = *(v4 + 48);
    v94[0] = *(v4 + 32);
    v94[1] = v64;
    v65 = *(v4 + 80);
    v67 = *(v4 + 32);
    v66 = *(v4 + 48);
    v95 = *(v4 + 64);
    v96 = v65;
    v68 = *(v4 + 112);
    v114 = v97;
    *v115 = v68;
    v99 = *(v4 + 128);
    v110 = v67;
    v111 = v66;
    v69 = *(&v98 + 2);
    *&v115[16] = *(v4 + 128);
    v112 = v95;
    v113 = v62;
    _s7SwiftUI13AnimatorStateC4Fork33_35ADF281214A25133F1A6DF28858952DLLVyAA14AnimatablePairVyAA05KeyedK5ArrayVySiAA04_AnyK4DataVG12CoreGraphics7CGFloatVG_GWOcTm_0(v94, &v100, type metadata accessor for AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>);
    specialized static _ShapeStyle_Pack.Fill.AnimatableData.-= infix(_:_:)(a1, &v110);
    v70 = *&v115[16];
    *(a1 + 88) = v61 - v69;
    _s7SwiftUI15AnimatableArrayV2seoiyyACyxGz_AEtFZAA0C4PairVySfAA16_ShapeStyle_PackV6EffectV4KindO0C4DataOG_Tt1B5((a1 + 96), v70);
    outlined destroy of Slice<IndexSet>(v94, type metadata accessor for AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>);
    swift_beginAccess();
    v71 = *(v4 + 240);
    v104 = *(v4 + 224);
    v105 = v71;
    v106 = *(v4 + 256);
    v72 = *(v4 + 176);
    v100 = *(v4 + 160);
    v101 = v72;
    v73 = *(v4 + 208);
    v102 = *(v4 + 192);
    v103 = v73;
    v110 = v79;
    v111 = v80;
    *&v115[16] = v85;
    v114 = v83;
    *v115 = v84;
    v112 = v81;
    v113 = v82;
    _s7SwiftUI13AnimatorStateC4Fork33_35ADF281214A25133F1A6DF28858952DLLVyAA14AnimatablePairVyAA05KeyedK5ArrayVySiAA04_AnyK4DataVG12CoreGraphics7CGFloatVG_GWOcTm_0(&v110, v78, type metadata accessor for AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>);
    v74 = v91;
    *(v4 + 192) = v90;
    *(v4 + 208) = v74;
    *(v4 + 224) = v92;
    *(v4 + 240) = v93;
    v75 = v89;
    *(v4 + 160) = v88;
    *(v4 + 176) = v75;
    *(v4 + 248) = v60;
    *(v4 + 252) = v86;
    *(v4 + 260) = v87;
    outlined destroy of Slice<IndexSet>(&v100, type metadata accessor for AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>);
    *(v4 + 152) = a3;
    v76 = *(v4 + 144);
    if (v76 > 0.0)
    {
      v77 = round(a3 / v76);
      outlined destroy of Slice<IndexSet>(&v79, type metadata accessor for AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>?);
      *(v4 + 152) = (v77 + 1.0) * *(v4 + 144);
      return 0;
    }

    v55 = type metadata accessor for AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>?;
    v54 = &v79;
LABEL_20:
    outlined destroy of Slice<IndexSet>(v54, v55);
    return 0;
  }

  v114 = v127;
  *v115 = *v128;
  *&v115[16] = *&v128[16];
  v110 = v123;
  v111 = v124;
  v112 = v125;
  v113 = v126;
  outlined destroy of Slice<IndexSet>(&v110, type metadata accessor for AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>?);
  return 1;
}

{
  v4 = v3;
  v7 = *(v3 + 128);
  v8 = *(v3 + 136);
  if (v8 + v7 * -0.5 >= a3)
  {
    goto LABEL_23;
  }

  if (*(v3 + 233) > 1u)
  {
    if (*(v3 + 233) != 2)
    {
      goto LABEL_11;
    }

    v11 = fmax(v7, 0.0166666667);
    v12 = v11 + v11;
    if (v11 + v11 < a3 - *(v3 + 120))
    {
      swift_beginAccess();
      if ((static CoreTesting.isRunning & 1) == 0)
      {
        *(v3 + 120) = a3 - v12;
      }
    }

    v10 = 3;
    goto LABEL_10;
  }

  if (!*(v3 + 233))
  {
    *(v3 + 120) = a3;
    v10 = 1;
LABEL_10:
    *(v3 + 233) = v10;
    goto LABEL_11;
  }

  *(v3 + 233) = 2;
  swift_beginAccess();
  if ((static CoreTesting.isRunning & 1) == 0)
  {
    *(v3 + 136) = v8 - *(v3 + 120) + a3;
    *(v3 + 120) = a3;
LABEL_23:
    swift_beginAccess();
    v42 = *(v3 + 192);
    v76 = *(v3 + 176);
    v77 = v42;
    v78 = *(v3 + 208);
    v79 = *(v3 + 224);
    v43 = *(v3 + 160);
    v74 = *(v3 + 144);
    v75 = v43;
    v97 = v79;
    v94 = v76;
    v95 = v42;
    v96 = v78;
    v92 = v74;
    v93 = v43;
    outlined init with copy of _ShapeStyle_Pack.Fill.AnimatableData(&v74, &v86);
    specialized static _ShapeStyle_Pack.Fill.AnimatableData.+= infix(_:_:)(a1, &v92);
    v82 = v94;
    v83 = v95;
    v84 = v96;
    v85 = v97;
    v80 = v92;
    v81 = v93;
    outlined destroy of _ShapeStyle_Pack.Fill.AnimatableData(&v80);
    swift_beginAccess();
    v44 = *(v3 + 80);
    v88 = *(v3 + 64);
    v89 = v44;
    v90 = *(v3 + 96);
    v91 = *(v3 + 112);
    v45 = *(v3 + 48);
    v86 = *(v3 + 32);
    v87 = v45;
    v73 = v91;
    v70 = v88;
    v71 = v44;
    v72 = v90;
    v68 = v86;
    v69 = v45;
    outlined init with copy of _ShapeStyle_Pack.Fill.AnimatableData(&v86, &v92);
    specialized static _ShapeStyle_Pack.Fill.AnimatableData.-= infix(_:_:)(a1, &v68);
    v94 = v70;
    v95 = v71;
    v96 = v72;
    v97 = v73;
    v92 = v68;
    v93 = v69;
    v41 = &v92;
    goto LABEL_24;
  }

LABEL_11:
  v13 = *(v3 + 120);
  swift_beginAccess();
  v14 = *(v3 + 24);
  v15 = *(v4 + 256);

  v65[0] = v14;
  v65[1] = AGCreateWeakAttribute();
  v66 = 0;
  v67 = v15;
  v16 = *(v4 + 264);
  if (v16)
  {
    v17 = *(v4 + 272);
    type metadata accessor for AnimationFinishingDefinitionKey<CGFloat>(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<_ShapeStyle_Pack.Fill.AnimatableData>, lazy protocol witness table accessor for type _ShapeStyle_Pack.Fill.AnimatableData and conformance _ShapeStyle_Pack.Fill.AnimatableData, &type metadata for _ShapeStyle_Pack.Fill.AnimatableData, type metadata accessor for AnimationFinishingDefinitionKey);
    v19 = v18;
    type metadata accessor for AnimationFinishingDefinitionKey<ShaderVectorData>?(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<_ShapeStyle_Pack.Fill.AnimatableData>?, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<_ShapeStyle_Pack.Fill.AnimatableData>, lazy protocol witness table accessor for type _ShapeStyle_Pack.Fill.AnimatableData and conformance _ShapeStyle_Pack.Fill.AnimatableData, &type metadata for _ShapeStyle_Pack.Fill.AnimatableData);
    *(&v93 + 1) = v20;
    *&v92 = v16;
    *(&v92 + 1) = v17;
    specialized Dictionary.subscript.setter(&v92, v19);
  }

  v21 = a3 - v13;
  swift_beginAccess();
  v22 = *(v4 + 16);
  swift_beginAccess();
  v23 = *(v4 + 80);
  v24 = *(v4 + 48);
  v94 = *(v4 + 64);
  v95 = v23;
  v25 = *(v4 + 80);
  v96 = *(v4 + 96);
  v26 = *(v4 + 48);
  v92 = *(v4 + 32);
  v93 = v26;
  v76 = v94;
  v77 = v25;
  v78 = *(v4 + 96);
  v97 = *(v4 + 112);
  v79 = *(v4 + 112);
  v74 = v92;
  v75 = v24;
  type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>(0);
  if (v27 == &type metadata for _ShapeStyle_Pack.Fill.AnimatableData)
  {
    v59 = v74;
    v60 = v75;
    v30 = *(*v22 + 120);

    outlined init with copy of _ShapeStyle_Pack.Fill.AnimatableData(&v92, &v68);
    lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, protocol conformance descriptor for AnimatablePair<A, B>);
    v30(&v68, &v59, v65, &type metadata for _ShapeStyle_Pack.Fill.AnimatableData, v31, v21);
    v80 = v68;
    v81 = v69;
    LOBYTE(v82) = v70;
  }

  else
  {
    v28 = *(*v22 + 120);

    outlined init with copy of _ShapeStyle_Pack.Fill.AnimatableData(&v92, &v68);
    lazy protocol witness table accessor for type _ShapeStyle_Pack.Fill.AnimatableData and conformance _ShapeStyle_Pack.Fill.AnimatableData();
    v28(&v80, &v74, v65, &type metadata for _ShapeStyle_Pack.Fill.AnimatableData, v29, v21);
  }

  outlined destroy of _ShapeStyle_Pack.Fill.AnimatableData(&v92);
  if (v85 == 255)
  {

    v70 = v82;
    v71 = v83;
    v72 = v84;
    v73 = v85;
    v68 = v80;
    v69 = v81;
    outlined destroy of HitTestableEvent?(&v68, &lazy cache variable for type metadata for _ShapeStyle_Pack.Fill.AnimatableData?, &type metadata for _ShapeStyle_Pack.Fill.AnimatableData);
    return 1;
  }

  v88 = v82;
  v89 = v83;
  v90 = v84;
  v91 = v85;
  v86 = v80;
  v87 = v81;
  specialized AnimatorState.updateListeners(isLogicallyComplete:time:environment:)(v67, a2 | ((HIDWORD(a2) & 1) << 32), v21);
  *(v4 + 24) = v65[0];

  specialized static _ShapeStyle_Pack.Fill.AnimatableData.+= infix(_:_:)(a1, &v86);
  v32 = *(v4 + 80);
  v53 = *(v4 + 64);
  v54 = v32;
  v55 = *(v4 + 96);
  v56 = *(v4 + 112);
  v33 = *(v4 + 48);
  v52[0] = *(v4 + 32);
  v52[1] = v33;
  v73 = v56;
  v70 = v53;
  v71 = v32;
  v72 = v55;
  v68 = v52[0];
  v69 = v33;
  outlined init with copy of _ShapeStyle_Pack.Fill.AnimatableData(v52, &v59);
  specialized static _ShapeStyle_Pack.Fill.AnimatableData.-= infix(_:_:)(a1, &v68);
  v57[2] = v70;
  v57[3] = v71;
  v57[4] = v72;
  v58 = v73;
  v57[0] = v68;
  v57[1] = v69;
  outlined destroy of _ShapeStyle_Pack.Fill.AnimatableData(v57);
  swift_beginAccess();
  v61 = v88;
  v62 = v89;
  v63 = v90;
  v64 = v91;
  v59 = v86;
  v60 = v87;
  v34 = *(v4 + 192);
  v70 = *(v4 + 176);
  v71 = v34;
  v72 = *(v4 + 208);
  v73 = *(v4 + 224);
  v35 = *(v4 + 160);
  v68 = *(v4 + 144);
  v69 = v35;
  outlined init with copy of _ShapeStyle_Pack.Fill.AnimatableData(&v59, &v46);
  v36 = v62;
  *(v4 + 176) = v61;
  *(v4 + 192) = v36;
  *(v4 + 208) = v63;
  *(v4 + 224) = v64;
  v37 = v60;
  *(v4 + 144) = v59;
  *(v4 + 160) = v37;
  outlined destroy of _ShapeStyle_Pack.Fill.AnimatableData(&v68);
  *(v4 + 136) = a3;
  v38 = *(v4 + 128);
  if (v38 <= 0.0)
  {
    v48 = v88;
    v49 = v89;
    v50 = v90;
    v51 = v91;
    v46 = v86;
    v47 = v87;
    v41 = &v46;
LABEL_24:
    outlined destroy of _ShapeStyle_Pack.Fill.AnimatableData(v41);
    return 0;
  }

  v48 = v88;
  v49 = v89;
  v50 = v90;
  v51 = v91;
  v39 = round(a3 / v38);
  v46 = v86;
  v47 = v87;
  outlined destroy of _ShapeStyle_Pack.Fill.AnimatableData(&v46);
  *(v4 + 136) = (v39 + 1.0) * *(v4 + 128);
  return 0;
}

{
  v4 = v3;
  v7 = *(v3 + 88);
  v8 = *(v3 + 96);
  if (v8 + v7 * -0.5 >= a3)
  {
    goto LABEL_22;
  }

  if (*(v3 + 153) <= 1u)
  {
    if (!*(v3 + 153))
    {
      *(v3 + 80) = a3;
      v10 = 1;
LABEL_10:
      *(v3 + 153) = v10;
      goto LABEL_11;
    }

    *(v3 + 153) = 2;
    swift_beginAccess();
    if (static CoreTesting.isRunning)
    {
      goto LABEL_11;
    }

    *(v3 + 96) = v8 - *(v3 + 80) + a3;
    *(v3 + 80) = a3;
LABEL_22:
    swift_beginAccess();
    v42 = *(v3 + 136);
    v43 = *(v3 + 144);
    v44 = *(v3 + 120);
    v55 = *(v3 + 104);
    v56 = v44;
    v57 = v42;
    v58 = v43;
    specialized static _ShapeStyle_Pack.Effect.Kind.AnimatableData.+= infix(_:_:)(a1, &v55);
    swift_beginAccess();
    v45 = *(v3 + 64);
    v46 = *(v3 + 72);
    v47 = *(v3 + 48);
    v55 = *(v3 + 32);
    v56 = v47;
    v57 = v45;
    v58 = v46;
    specialized static _ShapeStyle_Pack.Effect.Kind.AnimatableData.-= infix(_:_:)(a1, &v55);
    return 0;
  }

  if (*(v3 + 153) == 2)
  {
    v11 = fmax(v7, 0.0166666667);
    v12 = v11 + v11;
    if (v11 + v11 < a3 - *(v3 + 80))
    {
      swift_beginAccess();
      if ((static CoreTesting.isRunning & 1) == 0)
      {
        *(v3 + 80) = a3 - v12;
      }
    }

    v10 = 3;
    goto LABEL_10;
  }

LABEL_11:
  v13 = *(v3 + 80);
  swift_beginAccess();
  v14 = *(v3 + 24);
  v15 = *(v4 + 176);

  v64[0] = v14;
  v64[1] = AGCreateWeakAttribute();
  v65 = 0;
  v66 = v15;
  v16 = *(v4 + 184);
  if (v16)
  {
    v17 = *(v4 + 192);
    type metadata accessor for AnimationFinishingDefinitionKey<CGFloat>(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<_ShapeStyle_Pack.Effect.Kind.AnimatableData>, lazy protocol witness table accessor for type _ShapeStyle_Pack.Effect.Kind.AnimatableData and conformance _ShapeStyle_Pack.Effect.Kind.AnimatableData, &type metadata for _ShapeStyle_Pack.Effect.Kind.AnimatableData, type metadata accessor for AnimationFinishingDefinitionKey);
    v19 = v18;
    type metadata accessor for AnimationFinishingDefinitionKey<ShaderVectorData>?(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<_ShapeStyle_Pack.Effect.Kind.AnimatableData>?, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<_ShapeStyle_Pack.Effect.Kind.AnimatableData>, lazy protocol witness table accessor for type _ShapeStyle_Pack.Effect.Kind.AnimatableData and conformance _ShapeStyle_Pack.Effect.Kind.AnimatableData, &type metadata for _ShapeStyle_Pack.Effect.Kind.AnimatableData);
    *(&v56 + 1) = v20;
    *&v55 = v16;
    *(&v55 + 1) = v17;
    specialized Dictionary.subscript.setter(&v55, v19);
  }

  v21 = a3 - v13;
  swift_beginAccess();
  v22 = *(v4 + 16);
  swift_beginAccess();
  v23 = *(v4 + 32);
  v24 = *(v4 + 40);
  v25 = *(v4 + 48);
  v26 = *(v4 + 72);
  v52[0] = v23;
  v52[1] = v24;
  v52[2] = v25;
  v48 = *(v4 + 56);
  v53 = v48;
  v54 = v26;
  type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>(0);
  if (v27 == &type metadata for _ShapeStyle_Pack.Effect.Kind.AnimatableData)
  {
    v49[0] = v23;
    v49[1] = v24;
    v49[2] = v25;
    v49[3] = v48;
    v31 = *(*v22 + 120);
    lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, protocol conformance descriptor for AnimatablePair<A, B>);
    v33 = v32;

    v31(v50, v49, v64, &type metadata for _ShapeStyle_Pack.Effect.Kind.AnimatableData, v33, v21);
    v55 = v50[0];
    v56 = v50[1];
    LOBYTE(v57) = v51;
  }

  else
  {
    v28 = *(*v22 + 120);
    lazy protocol witness table accessor for type _ShapeStyle_Pack.Effect.Kind.AnimatableData and conformance _ShapeStyle_Pack.Effect.Kind.AnimatableData();
    v30 = v29;

    v28(&v55, v52, v64, &type metadata for _ShapeStyle_Pack.Effect.Kind.AnimatableData, v30, v21);
  }

  if (v59)
  {

    return 1;
  }

  v60 = v55;
  v61 = v56;
  v62 = v57;
  v63 = v58 & 1;
  specialized AnimatorState.updateListeners(isLogicallyComplete:time:environment:)(v66, a2 | ((HIDWORD(a2) & 1) << 32), v21);
  *(v4 + 24) = v64[0];

  specialized static _ShapeStyle_Pack.Effect.Kind.AnimatableData.+= infix(_:_:)(a1, &v60);
  v35 = *(v4 + 64);
  v36 = *(v4 + 72);
  v37 = *(v4 + 48);
  v55 = *(v4 + 32);
  v56 = v37;
  v57 = v35;
  v58 = v36;
  specialized static _ShapeStyle_Pack.Effect.Kind.AnimatableData.-= infix(_:_:)(a1, &v55);
  swift_beginAccess();
  v38 = v62;
  v39 = v63;
  v40 = v61;
  *(v4 + 104) = v60;
  *(v4 + 120) = v40;
  *(v4 + 136) = v38;
  *(v4 + 144) = v39;
  *(v4 + 96) = a3;
  v41 = *(v4 + 88);
  if (v41 > 0.0)
  {
    *(v4 + 96) = v41 * (round(a3 / v41) + 1.0);
  }

  return 0;
}

{
  v4 = v3;
  v7 = *(v3 + 64);
  v8 = *(v3 + 72);
  if (v8 + v7 * -0.5 >= a3)
  {
    goto LABEL_20;
  }

  if (*(v3 + 109) <= 1u)
  {
    if (!*(v3 + 109))
    {
      *(v3 + 56) = a3;
      v10 = 1;
LABEL_10:
      *(v3 + 109) = v10;
      goto LABEL_11;
    }

    *(v3 + 109) = 2;
    swift_beginAccess();
    if (static CoreTesting.isRunning)
    {
      goto LABEL_11;
    }

    *(v3 + 72) = v8 - *(v3 + 56) + a3;
    *(v3 + 56) = a3;
LABEL_20:
    swift_beginAccess();
    v42 = vaddq_f32(*(v3 + 80), *a1);
    v40 = vadd_f32(*(v3 + 96), *(a1 + 16));
    swift_beginAccess();
    result = 0;
    v41 = *(v3 + 48);
    *a1 = vsubq_f32(v42, *(v3 + 32));
    *(a1 + 16) = vsub_f32(v40, v41);
    return result;
  }

  if (*(v3 + 109) == 2)
  {
    v11 = fmax(v7, 0.0166666667);
    v12 = v11 + v11;
    if (v11 + v11 < a3 - *(v3 + 56))
    {
      swift_beginAccess();
      if ((static CoreTesting.isRunning & 1) == 0)
      {
        *(v3 + 56) = a3 - v12;
      }
    }

    v10 = 3;
    goto LABEL_10;
  }

LABEL_11:
  v13 = a3 - *(v3 + 56);
  swift_beginAccess();
  v14 = *(v3 + 24);
  v15 = *(v4 + 128);

  v46[0] = v14;
  v46[1] = AGCreateWeakAttribute();
  v47 = 0;
  v48 = v15;
  v16 = *(v4 + 136);
  if (v16)
  {
    v17 = *(v4 + 144);
    type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>>>(0);
    v19 = v18;
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>>>?, type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>>>, MEMORY[0x1E69E6720]);
    v45 = v20;
    *&v43 = v16;
    *(&v43 + 1) = v17;
    specialized Dictionary.subscript.setter(&v43, v19);
  }

  swift_beginAccess();
  v21 = *(v4 + 16);
  swift_beginAccess();
  v43 = *(v4 + 32);
  v44 = *(v4 + 48);

  v22 = specialized Animation.animate<A>(value:time:context:)(&v43, v46, v21, v13);
  v24 = v23;
  v26 = v25;
  v28 = v27;

  if (v28)
  {

    return 1;
  }

  else
  {
    specialized AnimatorState.updateListeners(isLogicallyComplete:time:environment:)(v48, a2 | ((HIDWORD(a2) & 1) << 32), v13);
    *(v4 + 24) = v46[0];

    v30 = *(a1 + 8) + *&v24;
    v31 = *(a1 + 12) + *(&v24 + 1);
    v32 = *(a1 + 16) + *&v26;
    v33 = *(a1 + 20) + *(&v26 + 1);
    v34 = *(v4 + 40);
    v35 = *(v4 + 44);
    v36 = *(v4 + 48);
    v37 = *(v4 + 52);
    v38 = (*(a1 + 4) + *(&v22 + 1)) - *(v4 + 36);
    *a1 = (*a1 + *&v22) - *(v4 + 32);
    *(a1 + 4) = v38;
    *(a1 + 8) = v30 - v34;
    *(a1 + 12) = v31 - v35;
    *(a1 + 16) = v32 - v36;
    *(a1 + 20) = v33 - v37;
    swift_beginAccess();
    *(v4 + 80) = v22;
    *(v4 + 88) = v24;
    *(v4 + 96) = v26;
    *(v4 + 72) = a3;
    v39 = *(v4 + 64);
    if (v39 > 0.0)
    {
      *(v4 + 72) = v39 * (round(a3 / v39) + 1.0);
    }

    return 0;
  }
}

{
  v4 = v3;
  v7 = *(v3 + 144);
  v8 = *(v3 + 152);
  if (v8 + v7 * -0.5 >= a3)
  {
    goto LABEL_19;
  }

  if (*(v3 + 269) <= 1u)
  {
    if (!*(v3 + 269))
    {
      *(v3 + 136) = a3;
      v10 = 1;
LABEL_10:
      *(v3 + 269) = v10;
      goto LABEL_11;
    }

    *(v3 + 269) = 2;
    swift_beginAccess();
    if (static CoreTesting.isRunning)
    {
      goto LABEL_11;
    }

    *(v3 + 152) = v8 - *(v3 + 136) + a3;
    *(v3 + 136) = a3;
LABEL_19:
    swift_beginAccess();
    v33 = *(v3 + 160);
    v34 = *(v3 + 216);
    v445 = *(v3 + 200);
    v446 = v34;
    v35 = *(v3 + 248);
    v447 = *(v3 + 232);
    v448 = v35;
    v36 = *(v3 + 184);
    v443 = *(v3 + 168);
    v444 = v36;
    v37 = v33 + *a1;
    v38 = *(a1 + 56);
    v451 = *(a1 + 40);
    v452 = v38;
    v39 = *(a1 + 88);
    v453 = *(a1 + 72);
    v454 = v39;
    v40 = *(a1 + 24);
    v449 = *(a1 + 8);
    v450 = v40;
    lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
    v387 = v41;
    v379 = &v377;
    v42 = MEMORY[0x1E69E7DE0];
    v43 = *(MEMORY[0x1E69E7DE0] - 8);
    v44 = v43[8];
    v45 = MEMORY[0x1EEE9AC00](v41);
    v46 = (v44 + 15) & 0xFFFFFFFFFFFFFFF0;
    v47 = v43[2];
    v48 = v47(&v377 - v46, &v449, v42, v45);
    v382 = v43 + 2;
    v383 = v4;
    v49 = MEMORY[0x1EEE9AC00](v48);
    v381 = a1;
    v47(&v377 - v46, &v443, v42, v49);
    v385 = *(v387 + 1);
    dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
    v50 = v43[1];
    v50(&v377 - v46, v42);
    v51 = (v50)(&v377 - v46, v42);
    v379 = &v377;
    *&v461 = &v455;
    v388 = v44;
    v52 = MEMORY[0x1EEE9AC00](v51);
    v384 = v46;
    v53 = v47(&v377 - v46, (&v449 + 8), v42, v52);
    v378 = &v377;
    v54 = MEMORY[0x1EEE9AC00](v53);
    v47(&v377 - v46, (&v443 + 8), v42, v54);
    dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
    v50(&v377 - v46, v42);
    v55 = (v50)(&v377 - v46, v42);
    v379 = &v377;
    *(&v461 + 1) = &v455 + 8;
    v377 = &v456;
    v56 = MEMORY[0x1EEE9AC00](v55);
    v57 = v384;
    v380 = v47;
    v58 = v47((&v377 - v384), &v450, v42, v56);
    v378 = &v377;
    v59 = MEMORY[0x1EEE9AC00](v58);
    v47((&v377 - v57), &v444, v42, v59);
    v60 = v377;
    dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
    v386 = v43 + 1;
    v50((&v377 - v57), v42);
    v61 = (v50)(&v377 - v57, v42);
    v379 = &v377;
    *&v462 = v60;
    v62 = MEMORY[0x1EEE9AC00](v61);
    v63 = v380;
    v64 = (v380)(&v377 - v57, &v450 + 8, v42, v62);
    v378 = &v377;
    v65 = MEMORY[0x1EEE9AC00](v64);
    v63(&v377 - v57, &v444 + 8, v42, v65);
    dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
    v50((&v377 - v57), v42);
    v66 = (v50)(&v377 - v57, v42);
    v379 = &v377;
    *(&v462 + 1) = &v456 + 8;
    v67 = MEMORY[0x1EEE9AC00](v66);
    v68 = (v63)(&v377 - v57, &v451, v42, v67);
    v69 = MEMORY[0x1EEE9AC00](v68);
    v63(&v377 - v57, &v445, v42, v69);
    dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
    v50((&v377 - v57), v42);
    v70 = (v50)(&v377 - v57, v42);
    v379 = &v377;
    *&v463 = &v457;
    v71 = MEMORY[0x1EEE9AC00](v70);
    v72 = v384;
    v73 = (&v377 - v384);
    v74 = (v63)(&v377 - v384, &v451 + 8, v42, v71);
    v378 = &v377;
    v75 = MEMORY[0x1EEE9AC00](v74);
    v63(&v377 - v72, &v445 + 8, v42, v75);
    dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
    v50((&v377 - v72), v42);
    v76 = (v50)(v73, v42);
    v379 = &v377;
    *(&v463 + 1) = &v457 + 8;
    v77 = MEMORY[0x1EEE9AC00](v76);
    v78 = v384;
    v79 = (&v377 - v384);
    v80 = (v63)(&v377 - v384, &v452, v42, v77);
    v378 = &v377;
    v81 = MEMORY[0x1EEE9AC00](v80);
    v63(&v377 - v78, &v446, v42, v81);
    dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
    v50((&v377 - v78), v42);
    v82 = (v50)(v79, v42);
    v379 = &v377;
    *&v464 = &v458;
    v83 = MEMORY[0x1EEE9AC00](v82);
    v84 = v384;
    v85 = (v63)(&v377 - v384, &v452 + 8, v42, v83);
    v378 = &v377;
    v86 = MEMORY[0x1EEE9AC00](v85);
    v63(&v377 - v84, &v446 + 8, v42, v86);
    dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
    v50((&v377 - v84), v42);
    v87 = (v50)(&v377 - v84, v42);
    v379 = &v377;
    *(&v464 + 1) = &v458 + 8;
    v88 = MEMORY[0x1EEE9AC00](v87);
    v89 = (v63)(&v377 - v84, &v453, v42, v88);
    v378 = &v377;
    v90 = MEMORY[0x1EEE9AC00](v89);
    v63(&v377 - v84, &v447, v42, v90);
    dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
    v50((&v377 - v84), v42);
    v91 = (v50)(&v377 - v84, v42);
    v379 = &v377;
    *&v465 = &v459;
    v92 = MEMORY[0x1EEE9AC00](v91);
    v93 = (v63)(&v377 - v84, &v453 + 8, v42, v92);
    v378 = &v377;
    v94 = MEMORY[0x1EEE9AC00](v93);
    v63(&v377 - v84, &v447 + 8, v42, v94);
    dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
    v50((&v377 - v84), v42);
    v95 = (v50)(&v377 - v84, v42);
    v379 = &v377;
    *(&v465 + 1) = &v459 + 8;
    v96 = MEMORY[0x1EEE9AC00](v95);
    v97 = v384;
    v98 = (&v377 - v384);
    v99 = (v63)(&v377 - v384, &v454, v42, v96);
    v378 = &v377;
    v100 = MEMORY[0x1EEE9AC00](v99);
    v101 = (&v377 - v97);
    v102 = (&v377 - v97);
    v103 = v63;
    v63(v102, &v448, v42, v100);
    dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
    v50(v101, v42);
    v104 = (v50)(v98, v42);
    v379 = &v377;
    *&v466 = &v460;
    v105 = MEMORY[0x1EEE9AC00](v104);
    v106 = v384;
    v107 = (&v377 - v384);
    v108 = v103(&v377 - v384, &v454 + 8, v42, v105);
    v378 = &v377;
    v109 = MEMORY[0x1EEE9AC00](v108);
    v103(&v377 - v106, &v448 + 8, v42, v109);
    dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
    v387 = v50;
    v50((&v377 - v106), v42);
    v50(v107, v42);
    *(&v466 + 1) = &v460 + 8;
    _s7SwiftUI16AnimatableValuesVyACyxxQp_QPGxxQpcfC12CoreGraphics7CGFloatV_A11GQP_Tt1g5(&v461, &v407);
    v110 = v410;
    v111 = v381;
    *(v381 + 40) = v409;
    *(v111 + 56) = v110;
    v112 = v412;
    *(v111 + 72) = v411;
    *(v111 + 88) = v112;
    v113 = v408;
    *(v111 + 8) = v407;
    *(v111 + 24) = v113;
    v114 = v383;
    v115 = swift_beginAccess();
    v379 = &v377;
    v116 = *(v114 + 4);
    v117 = *(v114 + 11);
    v421 = *(v114 + 9);
    v422 = v117;
    v118 = *(v114 + 15);
    v423 = *(v114 + 13);
    v424 = v118;
    v119 = *(v114 + 7);
    v419 = *(v114 + 5);
    v420 = v119;
    *v111 = v37 - v116;
    v120 = *(v111 + 56);
    v427 = *(v111 + 40);
    v428 = v120;
    v121 = *(v111 + 88);
    v429 = *(v111 + 72);
    v430 = v121;
    v122 = *(v111 + 24);
    v425 = *(v111 + 8);
    v426 = v122;
    v123 = MEMORY[0x1EEE9AC00](v115);
    v124 = v384;
    v125 = v380;
    v126 = (v380)(&v377 - v384, &v425, v42, v123);
    v127 = MEMORY[0x1EEE9AC00](v126);
    v125(&v377 - v124, &v419, v42, v127);
    dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
    v128 = v387;
    v387(&v377 - v124, v42);
    v129 = v128(&v377 - v124, v42);
    v383 = &v377;
    *&v437 = &v431;
    v130 = MEMORY[0x1EEE9AC00](v129);
    v131 = v125;
    v132 = (v125)(&v377 - v124, &v425 + 8, v42, v130);
    v379 = &v377;
    v133 = MEMORY[0x1EEE9AC00](v132);
    v125(&v377 - v124, (&v419 + 8), v42, v133);
    dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
    v134 = v387;
    v387(&v377 - v124, v42);
    v135 = v134(&v377 - v124, v42);
    v383 = &v377;
    *(&v437 + 1) = &v431 + 8;
    v136 = MEMORY[0x1EEE9AC00](v135);
    v137 = v384;
    v138 = (v125)(&v377 - v384, &v426, v42, v136);
    v379 = &v377;
    v139 = MEMORY[0x1EEE9AC00](v138);
    v125(&v377 - v137, &v420, v42, v139);
    dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
    v140 = v387;
    v387(&v377 - v137, v42);
    v141 = v140(&v377 - v137, v42);
    v383 = &v377;
    *&v438 = &v432;
    v142 = MEMORY[0x1EEE9AC00](v141);
    v143 = v131(&v377 - v137, &v426 + 8, v42, v142);
    v379 = &v377;
    v144 = MEMORY[0x1EEE9AC00](v143);
    v131(&v377 - v137, &v420 + 8, v42, v144);
    dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
    v145 = v387;
    v387(&v377 - v137, v42);
    v146 = v145(&v377 - v137, v42);
    v383 = &v377;
    *(&v438 + 1) = &v432 + 8;
    v147 = MEMORY[0x1EEE9AC00](v146);
    v148 = v131(&v377 - v137, &v427, v42, v147);
    v379 = &v377;
    v149 = MEMORY[0x1EEE9AC00](v148);
    v131(&v377 - v137, &v421, v42, v149);
    dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
    v150 = v387;
    v387(&v377 - v137, v42);
    v151 = v150(&v377 - v137, v42);
    v383 = &v377;
    *&v439 = &v433;
    v152 = MEMORY[0x1EEE9AC00](v151);
    v153 = v131(&v377 - v137, &v427 + 8, v42, v152);
    v379 = &v377;
    v154 = MEMORY[0x1EEE9AC00](v153);
    v131(&v377 - v137, &v421 + 8, v42, v154);
    dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
    v155 = v387;
    v387(&v377 - v137, v42);
    v156 = v155(&v377 - v137, v42);
    v383 = &v377;
    *(&v439 + 1) = &v433 + 8;
    v157 = MEMORY[0x1EEE9AC00](v156);
    v158 = v131(&v377 - v137, &v428, v42, v157);
    v379 = &v377;
    v159 = MEMORY[0x1EEE9AC00](v158);
    v131(&v377 - v137, &v422, v42, v159);
    dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
    v160 = v387;
    v387(&v377 - v137, v42);
    v161 = v160(&v377 - v137, v42);
    v383 = &v377;
    *&v440 = &v434;
    v162 = MEMORY[0x1EEE9AC00](v161);
    v163 = v131(&v377 - v137, &v428 + 8, v42, v162);
    v379 = &v377;
    v164 = MEMORY[0x1EEE9AC00](v163);
    v131(&v377 - v137, &v422 + 8, v42, v164);
    dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
    v165 = v387;
    v387(&v377 - v137, v42);
    v166 = v165(&v377 - v137, v42);
    v383 = &v377;
    *(&v440 + 1) = &v434 + 8;
    v167 = MEMORY[0x1EEE9AC00](v166);
    v168 = v131(&v377 - v137, &v429, v42, v167);
    v379 = &v377;
    v169 = MEMORY[0x1EEE9AC00](v168);
    v131(&v377 - v137, &v423, v42, v169);
    dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
    v170 = v387;
    v387(&v377 - v137, v42);
    v171 = v170(&v377 - v137, v42);
    v383 = &v377;
    *&v441 = &v435;
    v172 = MEMORY[0x1EEE9AC00](v171);
    v173 = v131(&v377 - v137, &v429 + 8, v42, v172);
    v379 = &v377;
    v174 = MEMORY[0x1EEE9AC00](v173);
    v131(&v377 - v137, &v423 + 8, v42, v174);
    dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
    v175 = v387;
    v387(&v377 - v137, v42);
    v176 = v175(&v377 - v137, v42);
    v383 = &v377;
    *(&v441 + 1) = &v435 + 8;
    v177 = MEMORY[0x1EEE9AC00](v176);
    v178 = v131(&v377 - v137, &v430, v42, v177);
    v379 = &v377;
    v179 = MEMORY[0x1EEE9AC00](v178);
    v131(&v377 - v137, &v424, v42, v179);
    dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
    v180 = v387;
    v387(&v377 - v137, v42);
    v181 = v180(&v377 - v137, v42);
    v383 = &v377;
    *&v442 = &v436;
    v182 = MEMORY[0x1EEE9AC00](v181);
    v183 = v131(&v377 - v137, &v430 + 8, v42, v182);
    v379 = &v377;
    v184 = MEMORY[0x1EEE9AC00](v183);
    v131(&v377 - v137, &v424 + 8, v42, v184);
    dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
    v180(&v377 - v137, v42);
    v180(&v377 - v137, v42);
    *(&v442 + 1) = &v436 + 8;
    _s7SwiftUI16AnimatableValuesVyACyxxQp_QPGxxQpcfC12CoreGraphics7CGFloatV_A11GQP_Tt1g5(&v437, v414);
    result = 0;
    v186 = *&v414[48];
    v187 = v381;
    *(v381 + 40) = *&v414[32];
    *(v187 + 56) = v186;
    v188 = *&v414[80];
    *(v187 + 72) = *&v414[64];
    *(v187 + 88) = v188;
    v189 = *&v414[16];
    *(v187 + 8) = *v414;
    *(v187 + 24) = v189;
    return result;
  }

  if (*(v3 + 269) == 2)
  {
    v11 = fmax(v7, 0.0166666667);
    v12 = v11 + v11;
    if (v11 + v11 < a3 - *(v3 + 136))
    {
      swift_beginAccess();
      if ((static CoreTesting.isRunning & 1) == 0)
      {
        *(v3 + 136) = a3 - v12;
      }
    }

    v10 = 3;
    goto LABEL_10;
  }

LABEL_11:
  v13 = *(v3 + 136);
  swift_beginAccess();
  v14 = *(v3 + 24);
  v15 = *(v4 + 288);

  v416[0] = v14;
  v416[1] = AGCreateWeakAttribute();
  v417 = 0;
  v418 = v15;
  v16 = *(v4 + 296);
  if (v16)
  {
    v17 = *(v4 + 304);
    type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<CGFloat, AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}>>>(0);
    v19 = v18;
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<AnimatablePair<CGFloat, AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}>>>?, type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<CGFloat, AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}>>>, MEMORY[0x1E69E6720]);
    *&v414[24] = v20;
    *v414 = v16;
    *&v414[8] = v17;
    specialized Dictionary.subscript.setter(v414, v19);
  }

  v21 = a3 - v13;
  swift_beginAccess();
  v22 = *(v4 + 16);
  swift_beginAccess();
  v23 = *(v4 + 112);
  v411 = *(v4 + 96);
  v412 = v23;
  v413 = *(v4 + 128);
  v24 = *(v4 + 48);
  v407 = *(v4 + 32);
  v408 = v24;
  v25 = *(v4 + 80);
  v409 = *(v4 + 64);
  v410 = v25;
  type metadata accessor for AnimatablePair<CGFloat, AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}>>(0);
  if (v26 == MEMORY[0x1E69E63B0])
  {
    *&v455 = v407;
    v32 = *(*v22 + 120);

    v32(&v461, &v455, v416, MEMORY[0x1E69E63B0], &protocol witness table for Double, v21);
    *v414 = v461;
    v414[8] = BYTE8(v461);
  }

  else
  {
    v27 = v26;
    type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>(0);
    if (v27 == v28)
    {
      v190 = v28;
      v455 = v407;
      v456 = v408;
      v191 = *(*v22 + 120);
      lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, protocol conformance descriptor for AnimatablePair<A, B>);
      v193 = v192;

      v191(&v461, &v455, v416, v190, v193, v21);
      *v414 = v461;
      *&v414[16] = v462;
      v414[32] = v463;
    }

    else
    {
      v29 = *(*v22 + 120);
      lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<CGFloat, AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<CGFloat, AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}>>, protocol conformance descriptor for AnimatablePair<A, B>);
      v31 = v30;

      v29(v414, &v407, v416, v27, v31, v21);
    }
  }

  if (v415)
  {

    return 1;
  }

  else
  {
    v194 = *v414;
    v457 = *&v414[40];
    v458 = *&v414[56];
    v459 = *&v414[72];
    v460 = *&v414[88];
    v455 = *&v414[8];
    v456 = *&v414[24];
    specialized AnimatorState.updateListeners(isLogicallyComplete:time:environment:)(v418, a2 | ((HIDWORD(a2) & 1) << 32), v21);
    *(v4 + 24) = v416[0];

    v195 = v194 + *a1;
    v196 = *(a1 + 56);
    v439 = *(a1 + 40);
    v440 = v196;
    v197 = *(a1 + 88);
    v441 = *(a1 + 72);
    v442 = v197;
    v198 = *(a1 + 24);
    v437 = *(a1 + 8);
    v438 = v198;
    v433 = v457;
    v434 = v458;
    v435 = v459;
    v436 = v460;
    v431 = v455;
    v432 = v456;
    lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
    v388 = v199;
    v379 = &v377;
    v200 = MEMORY[0x1E69E7DE0];
    v201 = *(*(MEMORY[0x1E69E7DE0] - 8) + 64);
    v202 = MEMORY[0x1EEE9AC00](v199);
    v386 = v201;
    v203 = &v377 - ((v201 + 15) & 0xFFFFFFFFFFFFFFF0);
    v205 = v204;
    v206 = (v204 + 16);
    v207 = *(v204 + 16);
    v208 = v207(v203, &v437, v200, v202);
    v380 = v206;
    v387 = v207;
    v383 = v4;
    v209 = MEMORY[0x1EEE9AC00](v208);
    v381 = a1;
    v210 = (v201 + 15) & 0xFFFFFFFFFFFFFFF0;
    v207(v203, &v431, v200, v209);
    v388 = *(v388 + 8);
    dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
    v211 = *(v205 + 8);
    v382 = (v205 + 8);
    v211(v203, v200);
    v212 = (v211)(v203, v200);
    v379 = &v377;
    *&v449 = &v443;
    v213 = MEMORY[0x1EEE9AC00](v212);
    v214 = v210;
    v385 = v210;
    v215 = &v377 - v210;
    v216 = &v377 - v210;
    v217 = v387;
    v218 = (v387)(v216, &v437 + 8, v200, v213);
    v378 = &v377;
    v219 = MEMORY[0x1EEE9AC00](v218);
    v217(&v377 - v214, &v431 + 8, v200, v219);
    dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
    v211(&v377 - v214, v200);
    v220 = (v211)(v215, v200);
    v379 = &v377;
    *(&v449 + 1) = &v443 + 8;
    v221 = MEMORY[0x1EEE9AC00](v220);
    v222 = v385;
    v223 = &v377 - v385;
    v224 = (v217)(&v377 - v385, &v438, v200, v221);
    v378 = &v377;
    v225 = MEMORY[0x1EEE9AC00](v224);
    v217(&v377 - v222, &v432, v200, v225);
    dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
    v211(&v377 - v222, v200);
    v226 = (v211)(v223, v200);
    v379 = &v377;
    *&v450 = &v444;
    v227 = MEMORY[0x1EEE9AC00](v226);
    v228 = v385;
    v229 = &v377 - v385;
    v230 = (v217)(&v377 - v385, &v438 + 8, v200, v227);
    v378 = &v377;
    v231 = MEMORY[0x1EEE9AC00](v230);
    v217(&v377 - v228, &v432 + 8, v200, v231);
    dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
    v211(&v377 - v228, v200);
    v232 = (v211)(v229, v200);
    v379 = &v377;
    *(&v450 + 1) = &v444 + 8;
    v233 = MEMORY[0x1EEE9AC00](v232);
    v234 = v385;
    v235 = (v217)(&v377 - v385, &v439, v200, v233);
    v378 = &v377;
    v236 = MEMORY[0x1EEE9AC00](v235);
    v217(&v377 - v234, &v433, v200, v236);
    dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
    v211(&v377 - v234, v200);
    v237 = (v211)(&v377 - v234, v200);
    v379 = &v377;
    *&v451 = &v445;
    v238 = MEMORY[0x1EEE9AC00](v237);
    v239 = (v217)(&v377 - v234, &v439 + 8, v200, v238);
    v378 = &v377;
    v240 = MEMORY[0x1EEE9AC00](v239);
    v217(&v377 - v234, &v433 + 8, v200, v240);
    dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
    v211(&v377 - v234, v200);
    v241 = (v211)(&v377 - v234, v200);
    v379 = &v377;
    *(&v451 + 1) = &v445 + 8;
    v242 = MEMORY[0x1EEE9AC00](v241);
    v243 = (v217)(&v377 - v234, &v440, v200, v242);
    v378 = &v377;
    v244 = MEMORY[0x1EEE9AC00](v243);
    v217(&v377 - v234, &v434, v200, v244);
    dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
    v211(&v377 - v234, v200);
    v245 = (v211)(&v377 - v234, v200);
    v379 = &v377;
    *&v452 = &v446;
    v246 = MEMORY[0x1EEE9AC00](v245);
    v247 = v387;
    v248 = (v387)(&v377 - v234, &v440 + 8, v200, v246);
    v378 = &v377;
    v249 = MEMORY[0x1EEE9AC00](v248);
    v247(&v377 - v234, &v434 + 8, v200, v249);
    dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
    v211(&v377 - v234, v200);
    v250 = (v211)(&v377 - v234, v200);
    v379 = &v377;
    *(&v452 + 1) = &v446 + 8;
    v251 = MEMORY[0x1EEE9AC00](v250);
    v252 = (v247)(&v377 - v234, &v441, v200, v251);
    v378 = &v377;
    v253 = MEMORY[0x1EEE9AC00](v252);
    v247(&v377 - v234, &v435, v200, v253);
    dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
    v211(&v377 - v234, v200);
    v254 = (v211)(&v377 - v234, v200);
    v379 = &v377;
    *&v453 = &v447;
    v255 = MEMORY[0x1EEE9AC00](v254);
    v256 = v385;
    v257 = v387;
    v258 = (v387)(&v377 - v385, &v441 + 8, v200, v255);
    v378 = &v377;
    v259 = MEMORY[0x1EEE9AC00](v258);
    v257(&v377 - v256, &v435 + 8, v200, v259);
    dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
    v211(&v377 - v256, v200);
    v260 = (v211)(&v377 - v256, v200);
    v379 = &v377;
    *(&v453 + 1) = &v447 + 8;
    v261 = MEMORY[0x1EEE9AC00](v260);
    v262 = v256;
    v263 = &v377 - v256;
    v264 = &v377 - v256;
    v265 = v387;
    v266 = (v387)(v264, &v442, v200, v261);
    v378 = &v377;
    v267 = MEMORY[0x1EEE9AC00](v266);
    v265(&v377 - v262, &v436, v200, v267);
    dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
    v211(&v377 - v262, v200);
    v268 = (v211)(v263, v200);
    v379 = &v377;
    *&v454 = &v448;
    v269 = MEMORY[0x1EEE9AC00](v268);
    v270 = v385;
    v271 = v387;
    v272 = (v387)(&v377 - v385, &v442 + 8, v200, v269);
    v378 = &v377;
    v273 = MEMORY[0x1EEE9AC00](v272);
    v271(&v377 - v270, &v436 + 8, v200, v273);
    dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
    v384 = v211;
    v211(&v377 - v270, v200);
    v211(&v377 - v270, v200);
    *(&v454 + 1) = &v448 + 8;
    v274 = _s7SwiftUI16AnimatableValuesVyACyxxQp_QPGxxQpcfC12CoreGraphics7CGFloatV_A11GQP_Tt1g5(&v449, &v401);
    v379 = &v377;
    v275 = v404;
    v276 = v381;
    *(v381 + 40) = v403;
    v277 = v403;
    v278 = v404;
    *(v276 + 56) = v275;
    v279 = v406;
    *(v276 + 72) = v405;
    v280 = v405;
    v281 = v406;
    *(v276 + 88) = v279;
    v282 = v402;
    *(v276 + 8) = v401;
    v283 = v401;
    v284 = v402;
    *(v276 + 24) = v282;
    v285 = *(v383 + 11);
    v391 = *(v383 + 9);
    v392 = v285;
    v286 = *(v383 + 15);
    v393 = *(v383 + 13);
    v394 = v286;
    v287 = *(v383 + 7);
    v389 = *(v383 + 5);
    v390 = v287;
    *v276 = v195 - *(v383 + 4);
    v397 = v277;
    v398 = v278;
    v399 = v280;
    v400[0] = v281;
    v395 = v283;
    v396 = v284;
    v288 = MEMORY[0x1EEE9AC00](v274);
    v289 = (v271)(&v377 - v270, &v395, v200, v288);
    v290 = MEMORY[0x1EEE9AC00](v289);
    v271(&v377 - v270, &v389, v200, v290);
    dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
    v291 = v384;
    (v384)(&v377 - v270, v200);
    v292 = (v291)(&v377 - v270, v200);
    v379 = &v377;
    *&v425 = &v419;
    v293 = MEMORY[0x1EEE9AC00](v292);
    v294 = (v271)(&v377 - v270, &v395 + 8, v200, v293);
    v378 = &v377;
    v295 = MEMORY[0x1EEE9AC00](v294);
    v271(&v377 - v270, &v389 + 8, v200, v295);
    dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
    v296 = v384;
    (v384)(&v377 - v270, v200);
    v297 = (v296)(&v377 - v270, v200);
    v379 = &v377;
    *(&v425 + 1) = &v419 + 8;
    v298 = MEMORY[0x1EEE9AC00](v297);
    v299 = &v377 - v270;
    v300 = v387;
    v301 = (v387)(&v377 - v270, &v396, v200, v298);
    v378 = &v377;
    v302 = MEMORY[0x1EEE9AC00](v301);
    v303 = &v377 - v270;
    v300(&v377 - v270, &v390, v200, v302);
    v304 = v300;
    dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
    v305 = v384;
    (v384)(v303, v200);
    v306 = (v305)(v299, v200);
    v379 = &v377;
    *&v426 = &v420;
    v307 = MEMORY[0x1EEE9AC00](v306);
    v308 = v385;
    v309 = &v377 - v385;
    v310 = v304(&v377 - v385, &v396 + 8, v200, v307);
    v378 = &v377;
    v311 = MEMORY[0x1EEE9AC00](v310);
    v304(&v377 - v308, &v390 + 8, v200, v311);
    dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
    v312 = &v377 - v308;
    v313 = v384;
    (v384)(v312, v200);
    v314 = (v313)(v309, v200);
    v379 = &v377;
    *(&v426 + 1) = &v420 + 8;
    v315 = MEMORY[0x1EEE9AC00](v314);
    v316 = v385;
    v317 = v387;
    v318 = (v387)(&v377 - v385, &v397, v200, v315);
    v378 = &v377;
    v319 = MEMORY[0x1EEE9AC00](v318);
    v317(&v377 - v316, &v391, v200, v319);
    dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
    v320 = v384;
    (v384)(&v377 - v316, v200);
    v321 = (v320)(&v377 - v316, v200);
    v379 = &v377;
    *&v427 = &v421;
    v322 = MEMORY[0x1EEE9AC00](v321);
    v323 = v385;
    v324 = v387;
    v325 = (v387)(&v377 - v385, &v397 + 8, v200, v322);
    v378 = &v377;
    v326 = MEMORY[0x1EEE9AC00](v325);
    v324(&v377 - v323, &v391 + 8, v200, v326);
    dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
    v327 = v384;
    (v384)(&v377 - v323, v200);
    v328 = (v327)(&v377 - v323, v200);
    v379 = &v377;
    *(&v427 + 1) = &v421 + 8;
    v329 = MEMORY[0x1EEE9AC00](v328);
    v330 = v387;
    v331 = (v387)(&v377 - v323, &v398, v200, v329);
    v332 = MEMORY[0x1EEE9AC00](v331);
    v330(&v377 - v323, &v392, v200, v332);
    dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
    v333 = v384;
    (v384)(&v377 - v323, v200);
    v334 = (v333)(&v377 - v323, v200);
    v379 = &v377;
    *&v428 = &v422;
    v335 = MEMORY[0x1EEE9AC00](v334);
    v336 = v385;
    v337 = &v377 - v385;
    v338 = v387;
    v339 = (v387)(&v377 - v385, &v398 + 8, v200, v335);
    v378 = &v377;
    v340 = MEMORY[0x1EEE9AC00](v339);
    v338(&v377 - v336, &v392 + 8, v200, v340);
    dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
    v341 = v384;
    (v384)(&v377 - v336, v200);
    v342 = (v341)(v337, v200);
    v379 = &v377;
    *(&v428 + 1) = &v422 + 8;
    v343 = MEMORY[0x1EEE9AC00](v342);
    v344 = v385;
    v345 = v387;
    v346 = (v387)(&v377 - v385, &v399, v200, v343);
    v378 = &v377;
    v347 = MEMORY[0x1EEE9AC00](v346);
    v345(&v377 - v344, &v393, v200, v347);
    dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
    v348 = v384;
    (v384)(&v377 - v344, v200);
    v349 = (v348)(&v377 - v344, v200);
    v379 = &v377;
    *&v429 = &v423;
    v350 = MEMORY[0x1EEE9AC00](v349);
    v351 = v385;
    v352 = &v377 - v385;
    v353 = v387;
    v354 = (v387)(&v377 - v385, &v399 + 8, v200, v350);
    v378 = &v377;
    v355 = MEMORY[0x1EEE9AC00](v354);
    v353(&v377 - v351, &v393 + 8, v200, v355);
    dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
    v356 = v384;
    (v384)(&v377 - v351, v200);
    v357 = (v356)(v352, v200);
    v379 = &v377;
    *(&v429 + 1) = &v423 + 8;
    v358 = MEMORY[0x1EEE9AC00](v357);
    v359 = v385;
    v360 = v387;
    v361 = (v387)(&v377 - v385, v400, v200, v358);
    v378 = &v377;
    v362 = MEMORY[0x1EEE9AC00](v361);
    v360(&v377 - v359, &v394, v200, v362);
    dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
    v363 = v384;
    (v384)(&v377 - v359, v200);
    v364 = (v363)(&v377 - v359, v200);
    v379 = &v377;
    *&v430 = &v424;
    v365 = MEMORY[0x1EEE9AC00](v364);
    v366 = (v360)(&v377 - v359, v400 + 8, v200, v365);
    v378 = &v377;
    v367 = MEMORY[0x1EEE9AC00](v366);
    v360(&v377 - v359, (&v394 + 8), v200, v367);
    dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
    (v363)(&v377 - v359, v200);
    (v363)(&v377 - v359, v200);
    v368 = v383;
    *(&v430 + 1) = &v424 + 8;
    _s7SwiftUI16AnimatableValuesVyACyxxQp_QPGxxQpcfC12CoreGraphics7CGFloatV_A11GQP_Tt1g5(&v425, &v461);
    v369 = v464;
    v370 = v381;
    *(v381 + 40) = v463;
    *(v370 + 56) = v369;
    v371 = v466;
    *(v370 + 72) = v465;
    *(v370 + 88) = v371;
    v372 = v462;
    *(v370 + 8) = v461;
    *(v370 + 24) = v372;
    swift_beginAccess();
    v373 = v458;
    *(v368 + 25) = v457;
    *(v368 + 27) = v373;
    v374 = v460;
    *(v368 + 29) = v459;
    *(v368 + 31) = v374;
    v375 = v456;
    *(v368 + 21) = v455;
    *(v368 + 23) = v375;
    v376 = *(v368 + 18);
    *(v368 + 19) = a3;
    *(v368 + 20) = v194;
    if (v376 > 0.0)
    {
      *(v368 + 19) = v376 * (round(a3 / v376) + 1.0);
    }

    return 0;
  }
}

{
  v4 = v3;
  v7 = *(v3 + 64);
  v8 = *(v3 + 72);
  if (v8 + v7 * -0.5 >= a3)
  {
    goto LABEL_20;
  }

  if (*(v3 + 109) <= 1u)
  {
    if (!*(v3 + 109))
    {
      *(v3 + 56) = a3;
      v10 = 1;
LABEL_10:
      *(v3 + 109) = v10;
      goto LABEL_11;
    }

    *(v3 + 109) = 2;
    swift_beginAccess();
    if (static CoreTesting.isRunning)
    {
      goto LABEL_11;
    }

    *(v3 + 72) = v8 - *(v3 + 56) + a3;
    *(v3 + 56) = a3;
LABEL_20:
    swift_beginAccess();
    v42 = vaddq_f32(*(v3 + 80), *a1);
    v40 = vadd_f32(*(v3 + 96), *(a1 + 16));
    swift_beginAccess();
    result = 0;
    v41 = *(v3 + 48);
    *a1 = vsubq_f32(v42, *(v3 + 32));
    *(a1 + 16) = vsub_f32(v40, v41);
    return result;
  }

  if (*(v3 + 109) == 2)
  {
    v11 = fmax(v7, 0.0166666667);
    v12 = v11 + v11;
    if (v11 + v11 < a3 - *(v3 + 56))
    {
      swift_beginAccess();
      if ((static CoreTesting.isRunning & 1) == 0)
      {
        *(v3 + 56) = a3 - v12;
      }
    }

    v10 = 3;
    goto LABEL_10;
  }

LABEL_11:
  v13 = a3 - *(v3 + 56);
  swift_beginAccess();
  v14 = *(v3 + 24);
  v15 = *(v4 + 128);

  v46[0] = v14;
  v46[1] = AGCreateWeakAttribute();
  v47 = 0;
  v48 = v15;
  v16 = *(v4 + 136);
  if (v16)
  {
    v17 = *(v4 + 144);
    type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, Float>>, AnimatablePair<Float, AnimatablePair<Float, Float>>>>(0);
    v19 = v18;
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, Float>>, AnimatablePair<Float, AnimatablePair<Float, Float>>>>?, type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, Float>>, AnimatablePair<Float, AnimatablePair<Float, Float>>>>, MEMORY[0x1E69E6720]);
    v45 = v20;
    *&v43 = v16;
    *(&v43 + 1) = v17;
    specialized Dictionary.subscript.setter(&v43, v19);
  }

  swift_beginAccess();
  v21 = *(v4 + 16);
  swift_beginAccess();
  v43 = *(v4 + 32);
  v44 = *(v4 + 48);

  v22 = specialized Animation.animate<A>(value:time:context:)(&v43, v46, v21, v13);
  v24 = v23;
  v26 = v25;
  v28 = v27;

  if (v28)
  {

    return 1;
  }

  else
  {
    specialized AnimatorState.updateListeners(isLogicallyComplete:time:environment:)(v48, a2 | ((HIDWORD(a2) & 1) << 32), v13);
    *(v4 + 24) = v46[0];

    v30 = *(a1 + 8) + *&v24;
    v31 = *(a1 + 12) + *(&v24 + 1);
    v32 = *(a1 + 16) + *&v26;
    v33 = *(a1 + 20) + *(&v26 + 1);
    v34 = *(v4 + 40);
    v35 = *(v4 + 44);
    v36 = *(v4 + 48);
    v37 = *(v4 + 52);
    v38 = (*(a1 + 4) + *(&v22 + 1)) - *(v4 + 36);
    *a1 = (*a1 + *&v22) - *(v4 + 32);
    *(a1 + 4) = v38;
    *(a1 + 8) = v30 - v34;
    *(a1 + 12) = v31 - v35;
    *(a1 + 16) = v32 - v36;
    *(a1 + 20) = v33 - v37;
    swift_beginAccess();
    *(v4 + 80) = v22;
    *(v4 + 88) = v24;
    *(v4 + 96) = v26;
    *(v4 + 72) = a3;
    v39 = *(v4 + 64);
    if (v39 > 0.0)
    {
      *(v4 + 72) = v39 * (round(a3 / v39) + 1.0);
    }

    return 0;
  }
}

uint64_t specialized AnimatorState.update(_:at:environment:)(double a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v6 = *(v3 + 64);
  v7 = *(v3 + 72);
  if (v7 + v6 * -0.5 < a1)
  {
    if (*(v3 + 105) > 1u)
    {
      if (*(v3 + 105) != 2)
      {
        goto LABEL_11;
      }

      v10 = fmax(v6, 0.0166666667);
      v11 = v10 + v10;
      if (v10 + v10 < a1 - *(v3 + 56))
      {
        swift_beginAccess();
        if ((static CoreTesting.isRunning & 1) == 0)
        {
          *(v3 + 56) = a1 - v11;
        }
      }

      v9 = 3;
      goto LABEL_10;
    }

    if (!*(v3 + 105))
    {
      *(v3 + 56) = a1;
      v9 = 1;
LABEL_10:
      *(v3 + 105) = v9;
      goto LABEL_11;
    }

    *(v3 + 105) = 2;
    swift_beginAccess();
    if (static CoreTesting.isRunning)
    {
LABEL_11:
      v12 = *(v3 + 56);
      swift_beginAccess();
      v13 = *(v3 + 24);
      v14 = *(v4 + 128);

      v64[0] = v13;
      v64[1] = AGCreateWeakAttribute();
      v65 = 0;
      v66 = v14;
      v15 = *(v4 + 136);
      if (v15)
      {
        v16 = *(v4 + 144);
        type metadata accessor for AnimationFinishingDefinitionKey<CGFloat>(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<ResolvedGradientVector>, lazy protocol witness table accessor for type ResolvedGradientVector and conformance ResolvedGradientVector, &type metadata for ResolvedGradientVector, type metadata accessor for AnimationFinishingDefinitionKey);
        v18 = v17;
        type metadata accessor for AnimationFinishingDefinitionKey<ShaderVectorData>?(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<ResolvedGradientVector>?, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<ResolvedGradientVector>, lazy protocol witness table accessor for type ResolvedGradientVector and conformance ResolvedGradientVector, &type metadata for ResolvedGradientVector);
        *(&v53 + 1) = v19;
        *&v52 = v15;
        *(&v52 + 1) = v16;
        specialized Dictionary.subscript.setter(&v52, v18);
      }

      v20 = a1 - v12;
      swift_beginAccess();
      v21 = *(v4 + 16);
      swift_beginAccess();
      v22 = *(v4 + 32);
      v23 = *(v4 + 40);
      v24 = *(v4 + 44);
      v25 = *(v4 + 48);
      v55 = v22;
      LOBYTE(v56) = v23;
      DWORD1(v56) = v24;
      BYTE8(v56) = v25;
      type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>(0);
      if (v26 == &type metadata for ResolvedGradientVector)
      {
        v49 = v22;
        v50 = v56;
        v51 = v57[0];
        v38 = *(*v21 + 120);
        lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, protocol conformance descriptor for AnimatablePair<A, B>);
        v40 = v39;

        v38(&v52, &v49, v64, &type metadata for ResolvedGradientVector, v40, v20);
        v48 = v52;
        v58 = v52;
        v59 = v53;
        LOBYTE(v60) = v54;

        v30 = v48;
        if (v48)
        {
LABEL_15:
          v32 = BYTE8(v58);
          v31 = HIDWORD(v58);
          v33 = v59;
          specialized AnimatorState.updateListeners(isLogicallyComplete:time:environment:)(v66, a3 | ((HIDWORD(a3) & 1) << 32), v20);
          *(v4 + 24) = v64[0];

          *&v52 = v30;
          BYTE8(v52) = v32;
          HIDWORD(v52) = v31;
          LOBYTE(v53) = v33 & 1;
          ResolvedGradientVector.add(_:scaledBy:)(&v52, 1.0);
          v34 = *(v4 + 40);
          v35 = *(v4 + 44);
          v36 = *(v4 + 48);
          *&v52 = *(v4 + 32);
          BYTE8(v52) = v34;
          HIDWORD(v52) = v35;
          LOBYTE(v53) = v36;
          ResolvedGradientVector.add(_:scaledBy:)(&v52, -1.0);
          swift_beginAccess();
          *(v4 + 80) = v30;
          *(v4 + 88) = v32;
          *(v4 + 92) = v31;
          *(v4 + 96) = v33 & 1;

          *(v4 + 72) = a1;
          v37 = *(v4 + 64);

          if (v37 > 0.0)
          {
            *(v4 + 72) = (round(a1 / v37) + 1.0) * *(v4 + 64);
          }

          return 0;
        }
      }

      else
      {
        v27 = *(*v21 + 120);
        lazy protocol witness table accessor for type ResolvedGradientVector and conformance ResolvedGradientVector();
        v29 = v28;

        v27(&v58, &v55, v64, &type metadata for ResolvedGradientVector, v29, v20);

        v30 = v58;
        if (v58)
        {
          goto LABEL_15;
        }
      }

      return 1;
    }

    *(v3 + 72) = v7 - *(v3 + 56) + a1;
    *(v3 + 56) = a1;
  }

  swift_beginAccess();
  v42 = *(v3 + 88);
  v43 = *(v3 + 92);
  v44 = *(v3 + 96);
  v49 = *(v3 + 80);
  LOBYTE(v50) = v42;
  DWORD1(v50) = v43;
  BYTE8(v50) = v44;
  ResolvedGradientVector.add(_:scaledBy:)(&v49, 1.0);
  swift_beginAccess();
  v45 = *(v3 + 40);
  v46 = *(v3 + 44);
  v47 = *(v3 + 48);
  v60 = *(v3 + 32);
  v61 = v45;
  v62 = v46;
  v63 = v47;
  ResolvedGradientVector.add(_:scaledBy:)(&v60, -1.0);
  return 0;
}

uint64_t specialized AnimatorState.update(_:at:environment:)(float *a1, unint64_t a2, double a3)
{
  v4 = v3;
  v7 = *(v3 + 96);
  v8 = *(v3 + 104);
  if (v8 + v7 * -0.5 >= a3)
  {
    goto LABEL_19;
  }

  if (*(v3 + 169) > 1u)
  {
    if (*(v3 + 169) != 2)
    {
      goto LABEL_11;
    }

    v11 = fmax(v7, 0.0166666667);
    v12 = v11 + v11;
    if (v11 + v11 < a3 - *(v3 + 88))
    {
      swift_beginAccess();
      if ((static CoreTesting.isRunning & 1) == 0)
      {
        *(v3 + 88) = a3 - v12;
      }
    }

    v10 = 3;
    goto LABEL_10;
  }

  if (!*(v3 + 169))
  {
    *(v3 + 88) = a3;
    v10 = 1;
LABEL_10:
    *(v3 + 169) = v10;
    goto LABEL_11;
  }

  *(v3 + 169) = 2;
  swift_beginAccess();
  if ((static CoreTesting.isRunning & 1) == 0)
  {
    *(v3 + 104) = v8 - *(v3 + 88) + a3;
    *(v3 + 88) = a3;
LABEL_19:
    swift_beginAccess();
    v34 = *(v3 + 152);
    v35 = *(v3 + 160);
    *v68 = *(v3 + 112);
    v36 = *(v3 + 136);
    *&v68[8] = *(v3 + 120);
    *&v68[24] = v36;
    v69 = v34;
    v37 = *v68 + *a1;
    v70 = v35;
    specialized static _ShapeStyle_Pack.Effect.Kind.AnimatableData.+= infix(_:_:)((a1 + 2), &v68[8]);
    swift_beginAccess();
    v38 = *(v3 + 72);
    v39 = *(v3 + 80);
    *v68 = *(v3 + 32);
    v40 = *(v3 + 56);
    *&v68[8] = *(v3 + 40);
    *&v68[24] = v40;
    v69 = v38;
    v70 = v39;
    *a1 = v37 - *v68;
    specialized static _ShapeStyle_Pack.Effect.Kind.AnimatableData.-= infix(_:_:)((a1 + 2), &v68[8]);
    return 0;
  }

LABEL_11:
  v13 = *(v3 + 88);
  swift_beginAccess();
  v14 = *(v3 + 24);
  v15 = *(v4 + 192);

  v72[0] = v14;
  v72[1] = AGCreateWeakAttribute();
  v73 = 0;
  v74 = v15;
  v16 = *(v4 + 200);
  if (v16)
  {
    v17 = *(v4 + 208);
    type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>(0);
    v19 = v18;
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>?, type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>, MEMORY[0x1E69E6720]);
    *&v68[24] = v20;
    *v68 = v16;
    *&v68[8] = v17;
    specialized Dictionary.subscript.setter(v68, v19);
  }

  v21 = a3 - v13;
  swift_beginAccess();
  v22 = *(v4 + 16);
  swift_beginAccess();
  v23 = *(v4 + 40);
  v24 = *(v4 + 48);
  v25 = *(v4 + 72);
  v26 = *(v4 + 80);
  LODWORD(v64[0]) = *(v4 + 32);
  v64[1] = v23;
  v64[2] = v24;
  v59 = *(v4 + 56);
  v65 = v59;
  v66 = v25;
  v67 = v26;
  type metadata accessor for AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>(0);
  if (v27 == MEMORY[0x1E69E63B0])
  {
    v60[0] = v64[0];
    v33 = *(*v22 + 120);

    v33(v61, v60, v72, MEMORY[0x1E69E63B0], &protocol witness table for Double, v21);
    *v68 = *v61;
    v68[8] = v61[8];
  }

  else
  {
    v28 = v27;
    type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>(0);
    if (v28 == v29)
    {
      v42 = v29;
      v60[0] = v64[0];
      v60[1] = v23;
      v60[2] = v24;
      v60[3] = v59;
      v43 = *(*v22 + 120);
      lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, protocol conformance descriptor for AnimatablePair<A, B>);
      v45 = v44;

      v43(v61, v60, v72, v42, v45, v21);
      *v68 = *v61;
      *&v68[16] = *&v61[16];
      v68[32] = v61[32];
    }

    else
    {
      v30 = *(*v22 + 120);
      lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>, protocol conformance descriptor for AnimatablePair<A, B>);
      v32 = v31;

      v30(v68, v64, v72, v28, v32, v21);
    }
  }

  if ((v71 & 1) == 0)
  {
    v46 = *v68;
    v47 = *&v68[8];
    v48 = *&v68[16];
    v49 = *&v68[24];
    v50 = *&v68[32];
    v51 = v69;
    v52 = HIDWORD(a2) & 1;
    v53 = a2;
    v54 = v70;
    specialized AnimatorState.updateListeners(isLogicallyComplete:time:environment:)(v74, v53 | (v52 << 32), v21);
    *(v4 + 24) = v72[0];

    *v61 = v46;
    *&v61[8] = v47;
    *&v61[16] = v48;
    *&v61[24] = v49;
    *&v61[32] = v50;
    v62 = v51;
    v54 &= 1u;
    v63 = v54;
    v55 = v46 + *a1;
    specialized static _ShapeStyle_Pack.Effect.Kind.AnimatableData.+= infix(_:_:)((a1 + 2), &v61[8]);
    v56 = *(v4 + 72);
    v57 = *(v4 + 80);
    *v61 = *(v4 + 32);
    *&v61[8] = *(v4 + 40);
    *&v61[24] = *(v4 + 56);
    v62 = v56;
    v63 = v57;
    *a1 = v55 - *v61;
    specialized static _ShapeStyle_Pack.Effect.Kind.AnimatableData.-= infix(_:_:)((a1 + 2), &v61[8]);
    swift_beginAccess();
    *(v4 + 112) = v46;
    *(v4 + 120) = v47;
    *(v4 + 128) = v48;
    *(v4 + 136) = v49;
    *(v4 + 144) = v50;
    *(v4 + 152) = v51;
    *(v4 + 160) = v54;
    *(v4 + 104) = a3;
    v58 = *(v4 + 96);
    if (v58 > 0.0)
    {
      *(v4 + 104) = v58 * (round(a3 / v58) + 1.0);
    }

    return 0;
  }

  return 1;
}

uint64_t specialized AnimatorState.update(_:at:environment:)(__int128 *a1, unint64_t a2, double a3)
{
  v4 = v3;
  v7 = *(v3 + 136);
  v8 = *(v3 + 144);
  if (v8 + v7 * -0.5 >= a3)
  {
    goto LABEL_19;
  }

  if (*(v3 + 253) <= 1u)
  {
    if (!*(v3 + 253))
    {
      *(v3 + 128) = a3;
      v10 = 1;
LABEL_10:
      *(v3 + 253) = v10;
      goto LABEL_11;
    }

    *(v3 + 253) = 2;
    swift_beginAccess();
    if (static CoreTesting.isRunning)
    {
      goto LABEL_11;
    }

    *(v3 + 144) = v8 - *(v3 + 128) + a3;
    *(v3 + 128) = a3;
LABEL_19:
    swift_beginAccess();
    v33 = *(v3 + 200);
    v423 = *(v3 + 184);
    v424 = v33;
    v34 = *(v3 + 232);
    v425 = *(v3 + 216);
    v426 = v34;
    v35 = *(v3 + 168);
    v421 = *(v3 + 152);
    v422 = v35;
    v36 = a1[3];
    v429 = a1[2];
    v430 = v36;
    v37 = a1[5];
    v431 = a1[4];
    v432 = v37;
    v38 = a1[1];
    v427 = *a1;
    v428 = v38;
    lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
    v360 = v39;
    v352 = &v350;
    v40 = MEMORY[0x1E69E7DE0];
    v41 = *(MEMORY[0x1E69E7DE0] - 8);
    v42 = v41[8];
    v43 = MEMORY[0x1EEE9AC00](v39);
    v44 = (v42 + 15) & 0xFFFFFFFFFFFFFFF0;
    v45 = v41[2];
    v46 = v45(&v350 - v44, &v427, v40, v43);
    v355 = (v41 + 2);
    v356 = v4;
    v47 = MEMORY[0x1EEE9AC00](v46);
    v354 = a1;
    v45(&v350 - v44, &v421, v40, v47);
    v359 = *(v360 + 1);
    dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
    v48 = v41[1];
    v48(&v350 - v44, v40);
    v49 = (v48)(&v350 - v44, v40);
    v352 = &v350;
    *&v439 = &v433;
    v361 = v42;
    v50 = MEMORY[0x1EEE9AC00](v49);
    v357 = v44;
    v51 = v45(&v350 - v44, (&v427 + 8), v40, v50);
    v351 = &v350;
    v52 = MEMORY[0x1EEE9AC00](v51);
    v45(&v350 - v44, (&v421 + 8), v40, v52);
    dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
    v48(&v350 - v44, v40);
    v53 = (v48)(&v350 - v44, v40);
    v352 = &v350;
    *(&v439 + 1) = &v433 + 8;
    v350 = &v434;
    v54 = MEMORY[0x1EEE9AC00](v53);
    v55 = v357;
    v353 = v45;
    v56 = v45(&v350 - v357, &v428, v40, v54);
    v351 = &v350;
    v57 = MEMORY[0x1EEE9AC00](v56);
    v45(&v350 - v55, &v422, v40, v57);
    v58 = v350;
    dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
    v358 = v41 + 1;
    v48(&v350 - v55, v40);
    v59 = (v48)(&v350 - v55, v40);
    v352 = &v350;
    *&v440 = v58;
    v60 = MEMORY[0x1EEE9AC00](v59);
    v61 = v353;
    v62 = (v353)(&v350 - v55, &v428 + 8, v40, v60);
    v351 = &v350;
    v63 = MEMORY[0x1EEE9AC00](v62);
    v61(&v350 - v55, &v422 + 8, v40, v63);
    dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
    v48(&v350 - v55, v40);
    v64 = (v48)(&v350 - v55, v40);
    v352 = &v350;
    *(&v440 + 1) = &v434 + 8;
    v65 = MEMORY[0x1EEE9AC00](v64);
    v66 = (v61)(&v350 - v55, &v429, v40, v65);
    v67 = MEMORY[0x1EEE9AC00](v66);
    v61(&v350 - v55, &v423, v40, v67);
    dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
    v48(&v350 - v55, v40);
    v68 = (v48)(&v350 - v55, v40);
    v352 = &v350;
    *&v441 = &v435;
    v69 = MEMORY[0x1EEE9AC00](v68);
    v70 = v357;
    v71 = &v350 - v357;
    v72 = (v61)(&v350 - v357, &v429 + 8, v40, v69);
    v351 = &v350;
    v73 = MEMORY[0x1EEE9AC00](v72);
    v61(&v350 - v70, &v423 + 8, v40, v73);
    dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
    v48(&v350 - v70, v40);
    v74 = (v48)(v71, v40);
    v352 = &v350;
    *(&v441 + 1) = &v435 + 8;
    v75 = MEMORY[0x1EEE9AC00](v74);
    v76 = v357;
    v77 = &v350 - v357;
    v78 = (v61)(&v350 - v357, &v430, v40, v75);
    v351 = &v350;
    v79 = MEMORY[0x1EEE9AC00](v78);
    v61(&v350 - v76, &v424, v40, v79);
    dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
    v48(&v350 - v76, v40);
    v80 = (v48)(v77, v40);
    v352 = &v350;
    *&v442 = &v436;
    v81 = MEMORY[0x1EEE9AC00](v80);
    v82 = v357;
    v83 = (v61)(&v350 - v357, &v430 + 8, v40, v81);
    v351 = &v350;
    v84 = MEMORY[0x1EEE9AC00](v83);
    v61(&v350 - v82, &v424 + 8, v40, v84);
    dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
    v48(&v350 - v82, v40);
    v85 = (v48)(&v350 - v82, v40);
    v352 = &v350;
    *(&v442 + 1) = &v436 + 8;
    v86 = MEMORY[0x1EEE9AC00](v85);
    v87 = v357;
    v88 = (v61)(&v350 - v357, &v431, v40, v86);
    v351 = &v350;
    v89 = MEMORY[0x1EEE9AC00](v88);
    v61(&v350 - v87, &v425, v40, v89);
    dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
    v48(&v350 - v87, v40);
    v90 = (v48)(&v350 - v87, v40);
    v352 = &v350;
    *&v443 = &v437;
    v91 = MEMORY[0x1EEE9AC00](v90);
    v92 = (v61)(&v350 - v87, &v431 + 8, v40, v91);
    v351 = &v350;
    v93 = MEMORY[0x1EEE9AC00](v92);
    v61(&v350 - v87, &v425 + 8, v40, v93);
    dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
    v48(&v350 - v87, v40);
    v94 = (v48)(&v350 - v87, v40);
    v352 = &v350;
    *(&v443 + 1) = &v437 + 8;
    v95 = MEMORY[0x1EEE9AC00](v94);
    v96 = v353;
    v97 = (v353)(&v350 - v87, &v432, v40, v95);
    v351 = &v350;
    v98 = MEMORY[0x1EEE9AC00](v97);
    v96(&v350 - v87, &v426, v40, v98);
    dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
    v48(&v350 - v87, v40);
    v99 = (v48)(&v350 - v87, v40);
    v352 = &v350;
    *&v444 = &v438;
    v100 = MEMORY[0x1EEE9AC00](v99);
    v101 = v357;
    v102 = &v350 - v357;
    v103 = (v96)(&v350 - v357, &v432 + 8, v40, v100);
    v351 = &v350;
    v104 = MEMORY[0x1EEE9AC00](v103);
    v105 = &v350 - v101;
    v96(v105, (&v426 + 8), v40, v104);
    dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
    v360 = v48;
    v48(v105, v40);
    v48(v102, v40);
    *(&v444 + 1) = &v438 + 8;
    _s7SwiftUI16AnimatableValuesVyACyxxQp_QPGxxQpcfC12CoreGraphics7CGFloatV_A11GQP_Tt1g5(&v439, &v374);
    v106 = v377;
    v107 = v354;
    v354[2] = v376;
    v107[3] = v106;
    v108 = v379;
    v107[4] = v378;
    v107[5] = v108;
    v109 = v375;
    *v107 = v374;
    v107[1] = v109;
    v110 = v107;
    v111 = v356;
    v112 = swift_beginAccess();
    v352 = &v350;
    v113 = *(v111 + 5);
    v399 = *(v111 + 4);
    v400 = v113;
    v114 = *(v111 + 7);
    v401 = *(v111 + 6);
    v402 = v114;
    v115 = *(v111 + 3);
    v397 = *(v111 + 2);
    v398 = v115;
    v116 = v110[3];
    v405 = v110[2];
    v406 = v116;
    v117 = v110[5];
    v407 = v110[4];
    v408 = v117;
    v118 = v110[1];
    v403 = *v110;
    v404 = v118;
    v119 = MEMORY[0x1EEE9AC00](v112);
    v120 = v357;
    v121 = v353;
    v122 = (v353)(&v350 - v357, &v403, v40, v119);
    v123 = MEMORY[0x1EEE9AC00](v122);
    v121(&v350 - v120, &v397, v40, v123);
    dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
    v124 = v360;
    v360(&v350 - v120, v40);
    v125 = v124(&v350 - v120, v40);
    v356 = &v350;
    *&v415 = &v409;
    v126 = MEMORY[0x1EEE9AC00](v125);
    v127 = v121;
    v128 = (v121)(&v350 - v120, &v403 + 8, v40, v126);
    v352 = &v350;
    v129 = MEMORY[0x1EEE9AC00](v128);
    v121(&v350 - v120, (&v397 + 8), v40, v129);
    dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
    v130 = v360;
    v360(&v350 - v120, v40);
    v131 = v130(&v350 - v120, v40);
    v356 = &v350;
    *(&v415 + 1) = &v409 + 8;
    v132 = MEMORY[0x1EEE9AC00](v131);
    v133 = v357;
    v134 = (v121)(&v350 - v357, &v404, v40, v132);
    v352 = &v350;
    v135 = MEMORY[0x1EEE9AC00](v134);
    v121(&v350 - v133, &v398, v40, v135);
    dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
    v136 = v360;
    v360(&v350 - v133, v40);
    v137 = v136(&v350 - v133, v40);
    v356 = &v350;
    *&v416 = &v410;
    v138 = MEMORY[0x1EEE9AC00](v137);
    v139 = v127(&v350 - v133, &v404 + 8, v40, v138);
    v352 = &v350;
    v140 = MEMORY[0x1EEE9AC00](v139);
    v127(&v350 - v133, &v398 + 8, v40, v140);
    dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
    v141 = v360;
    v360(&v350 - v133, v40);
    v142 = v141(&v350 - v133, v40);
    v356 = &v350;
    *(&v416 + 1) = &v410 + 8;
    v143 = MEMORY[0x1EEE9AC00](v142);
    v144 = v127(&v350 - v133, &v405, v40, v143);
    v352 = &v350;
    v145 = MEMORY[0x1EEE9AC00](v144);
    v127(&v350 - v133, &v399, v40, v145);
    dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
    v146 = v360;
    v360(&v350 - v133, v40);
    v147 = v146(&v350 - v133, v40);
    v356 = &v350;
    *&v417 = &v411;
    v148 = MEMORY[0x1EEE9AC00](v147);
    v149 = v127(&v350 - v133, &v405 + 8, v40, v148);
    v352 = &v350;
    v150 = MEMORY[0x1EEE9AC00](v149);
    v127(&v350 - v133, &v399 + 8, v40, v150);
    dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
    v151 = v360;
    v360(&v350 - v133, v40);
    v152 = v151(&v350 - v133, v40);
    v356 = &v350;
    *(&v417 + 1) = &v411 + 8;
    v153 = MEMORY[0x1EEE9AC00](v152);
    v154 = v127(&v350 - v133, &v406, v40, v153);
    v352 = &v350;
    v155 = MEMORY[0x1EEE9AC00](v154);
    v127(&v350 - v133, &v400, v40, v155);
    dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
    v156 = v360;
    v360(&v350 - v133, v40);
    v157 = v156(&v350 - v133, v40);
    v356 = &v350;
    *&v418 = &v412;
    v158 = MEMORY[0x1EEE9AC00](v157);
    v159 = v127(&v350 - v133, &v406 + 8, v40, v158);
    v352 = &v350;
    v160 = MEMORY[0x1EEE9AC00](v159);
    v127(&v350 - v133, &v400 + 8, v40, v160);
    dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
    v161 = v360;
    v360(&v350 - v133, v40);
    v162 = v161(&v350 - v133, v40);
    v356 = &v350;
    *(&v418 + 1) = &v412 + 8;
    v163 = MEMORY[0x1EEE9AC00](v162);
    v164 = v127(&v350 - v133, &v407, v40, v163);
    v352 = &v350;
    v165 = MEMORY[0x1EEE9AC00](v164);
    v127(&v350 - v133, &v401, v40, v165);
    dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
    v166 = v360;
    v360(&v350 - v133, v40);
    v167 = v166(&v350 - v133, v40);
    v356 = &v350;
    *&v419 = &v413;
    v168 = MEMORY[0x1EEE9AC00](v167);
    v169 = v127(&v350 - v133, &v407 + 8, v40, v168);
    v352 = &v350;
    v170 = MEMORY[0x1EEE9AC00](v169);
    v127(&v350 - v133, &v401 + 8, v40, v170);
    dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
    v171 = v360;
    v360(&v350 - v133, v40);
    v172 = v171(&v350 - v133, v40);
    v356 = &v350;
    *(&v419 + 1) = &v413 + 8;
    v173 = MEMORY[0x1EEE9AC00](v172);
    v174 = v127(&v350 - v133, &v408, v40, v173);
    v352 = &v350;
    v175 = MEMORY[0x1EEE9AC00](v174);
    v127(&v350 - v133, &v402, v40, v175);
    dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
    v176 = v360;
    v360(&v350 - v133, v40);
    v177 = v176(&v350 - v133, v40);
    v356 = &v350;
    *&v420 = &v414;
    v178 = MEMORY[0x1EEE9AC00](v177);
    v179 = v127(&v350 - v133, &v408 + 8, v40, v178);
    v352 = &v350;
    v180 = MEMORY[0x1EEE9AC00](v179);
    v127(&v350 - v133, &v402 + 8, v40, v180);
    dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
    v176(&v350 - v133, v40);
    v176(&v350 - v133, v40);
    *(&v420 + 1) = &v414 + 8;
    _s7SwiftUI16AnimatableValuesVyACyxxQp_QPGxxQpcfC12CoreGraphics7CGFloatV_A11GQP_Tt1g5(&v415, &v387);
    result = 0;
    v182 = v390;
    v183 = v354;
    v354[2] = v389;
    v183[3] = v182;
    v184 = v392;
    v183[4] = v391;
    v183[5] = v184;
    v185 = v388;
    *v183 = v387;
    v183[1] = v185;
    return result;
  }

  if (*(v3 + 253) == 2)
  {
    v11 = fmax(v7, 0.0166666667);
    v12 = v11 + v11;
    if (v11 + v11 < a3 - *(v3 + 128))
    {
      swift_beginAccess();
      if ((static CoreTesting.isRunning & 1) == 0)
      {
        *(v3 + 128) = a3 - v12;
      }
    }

    v10 = 3;
    goto LABEL_10;
  }

LABEL_11:
  v13 = *(v3 + 128);
  swift_beginAccess();
  v14 = *(v3 + 24);
  v15 = *(v4 + 272);

  v394[0] = v14;
  v394[1] = AGCreateWeakAttribute();
  v395 = 0;
  v396 = v15;
  v16 = *(v4 + 280);
  if (v16)
  {
    v17 = *(v4 + 288);
    type metadata accessor for AnimationFinishingDefinitionKey<AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}>>(0);
    v19 = v18;
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}>>?, type metadata accessor for AnimationFinishingDefinitionKey<AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}>>, MEMORY[0x1E69E6720]);
    *(&v388 + 1) = v20;
    *&v387 = v16;
    *(&v387 + 1) = v17;
    specialized Dictionary.subscript.setter(&v387, v19);
  }

  v21 = a3 - v13;
  swift_beginAccess();
  v22 = *(v4 + 16);
  swift_beginAccess();
  v23 = *(v4 + 80);
  v441 = *(v4 + 64);
  v442 = v23;
  v24 = *(v4 + 112);
  v443 = *(v4 + 96);
  v444 = v24;
  v25 = *(v4 + 48);
  v439 = *(v4 + 32);
  v440 = v25;
  type metadata accessor for AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}>(0);
  if (v26 == MEMORY[0x1E69E63B0])
  {
    *&v433 = v439;
    v32 = *(*v22 + 120);

    v32(&v374, &v433, v394, MEMORY[0x1E69E63B0], &protocol witness table for Double, v21);
    *&v387 = v374;
    BYTE8(v387) = BYTE8(v374);
  }

  else
  {
    v27 = v26;
    type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>(0);
    if (v27 == v28)
    {
      v186 = v28;
      v433 = v439;
      v434 = v440;
      v187 = *(*v22 + 120);
      lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, protocol conformance descriptor for AnimatablePair<A, B>);
      v189 = v188;

      v187(&v374, &v433, v394, v186, v189, v21);
      v387 = v374;
      v388 = v375;
      LOBYTE(v389) = v376;
    }

    else
    {
      v29 = *(*v22 + 120);
      lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}> and conformance AnimatableValues<Pack{repeat A}>, type metadata accessor for AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}>, protocol conformance descriptor for AnimatableValues<Pack{repeat A}>);
      v31 = v30;

      v29(&v387, &v439, v394, v27, v31, v21);
    }
  }

  if (v393)
  {

    return 1;
  }

  else
  {
    v378 = v391;
    v379 = v392;
    v380 = v393;
    v374 = v387;
    v375 = v388;
    v376 = v389;
    v377 = v390;
    specialized AnimatorState.updateListeners(isLogicallyComplete:time:environment:)(v396, a2 | ((HIDWORD(a2) & 1) << 32), v21);
    *(v4 + 24) = v394[0];

    v190 = a1[3];
    v417 = a1[2];
    v418 = v190;
    v191 = a1[5];
    v419 = a1[4];
    v420 = v191;
    v192 = a1[1];
    v415 = *a1;
    v416 = v192;
    v411 = v376;
    v412 = v377;
    v413 = v378;
    v414 = v379;
    v409 = v374;
    v410 = v375;
    lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
    v361 = v193;
    v352 = &v350;
    v194 = MEMORY[0x1E69E7DE0];
    v195 = *(MEMORY[0x1E69E7DE0] - 8);
    v196 = v195[8];
    v197 = MEMORY[0x1EEE9AC00](v193);
    v360 = v196;
    v198 = (v196 + 15) & 0xFFFFFFFFFFFFFFF0;
    v199 = v195[2];
    v200 = v199(&v350 - v198, &v415, v194, v197);
    v356 = v4;
    v201 = MEMORY[0x1EEE9AC00](v200);
    v354 = a1;
    v199(&v350 - v198, &v409, v194, v201);
    v202 = v195 + 2;
    v361 = *(v361 + 8);
    dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
    v203 = v195[1];
    v358 = v195 + 1;
    v203(&v350 - v198, v194);
    v204 = (v203)(&v350 - v198, v194);
    v352 = &v350;
    *&v427 = &v421;
    v205 = MEMORY[0x1EEE9AC00](v204);
    v353 = v198;
    v206 = v199(&v350 - v198, (&v415 + 8), v194, v205);
    v351 = &v350;
    v207 = MEMORY[0x1EEE9AC00](v206);
    v199(&v350 - v198, (&v409 + 8), v194, v207);
    v355 = v199;
    dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
    v203(&v350 - v198, v194);
    v208 = (v203)(&v350 - v198, v194);
    v352 = &v350;
    *(&v427 + 1) = &v421 + 8;
    v209 = MEMORY[0x1EEE9AC00](v208);
    v210 = v353;
    v211 = v199((&v350 - v353), &v416, v194, v209);
    v351 = &v350;
    v212 = MEMORY[0x1EEE9AC00](v211);
    v199((&v350 - v210), &v410, v194, v212);
    dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
    v203((&v350 - v210), v194);
    v213 = (v203)(&v350 - v210, v194);
    v352 = &v350;
    *&v428 = &v422;
    v214 = MEMORY[0x1EEE9AC00](v213);
    v215 = (&v350 - v210);
    v216 = v210;
    v217 = (&v350 - v210);
    v218 = v355;
    v219 = (v355)(v217, &v416 + 8, v194, v214);
    v351 = &v350;
    v220 = MEMORY[0x1EEE9AC00](v219);
    v218(&v350 - v216, &v410 + 8, v194, v220);
    dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
    v203((&v350 - v216), v194);
    v221 = (v203)(v215, v194);
    v352 = &v350;
    *(&v428 + 1) = &v422 + 8;
    v222 = MEMORY[0x1EEE9AC00](v221);
    v223 = (v218)(&v350 - v216, &v417, v194, v222);
    v351 = &v350;
    v224 = MEMORY[0x1EEE9AC00](v223);
    v218(&v350 - v216, &v411, v194, v224);
    dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
    v203((&v350 - v216), v194);
    v225 = (v203)(&v350 - v216, v194);
    v352 = &v350;
    *&v429 = &v423;
    v226 = MEMORY[0x1EEE9AC00](v225);
    v227 = v353;
    v228 = (&v350 - v353);
    v229 = (v218)(&v350 - v353, &v417 + 8, v194, v226);
    v351 = &v350;
    v230 = MEMORY[0x1EEE9AC00](v229);
    v231 = (&v350 - v227);
    v218(v231, &v411 + 8, v194, v230);
    dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
    v203(v231, v194);
    v232 = (v203)(v228, v194);
    v352 = &v350;
    *(&v429 + 1) = &v423 + 8;
    v233 = MEMORY[0x1EEE9AC00](v232);
    v234 = v353;
    v235 = (&v350 - v353);
    v236 = (v218)(&v350 - v353, &v418, v194, v233);
    v351 = &v350;
    v237 = MEMORY[0x1EEE9AC00](v236);
    v218(&v350 - v234, &v412, v194, v237);
    dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
    v203((&v350 - v234), v194);
    v238 = (v203)(v235, v194);
    v352 = &v350;
    *&v430 = &v424;
    v239 = MEMORY[0x1EEE9AC00](v238);
    v240 = v353;
    v357 = v202;
    v241 = (v218)(&v350 - v353, &v418 + 8, v194, v239);
    v351 = &v350;
    v242 = MEMORY[0x1EEE9AC00](v241);
    v218(&v350 - v240, &v412 + 8, v194, v242);
    dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
    v203((&v350 - v240), v194);
    v243 = (v203)(&v350 - v240, v194);
    v352 = &v350;
    *(&v430 + 1) = &v424 + 8;
    v244 = MEMORY[0x1EEE9AC00](v243);
    v245 = (v218)(&v350 - v240, &v419, v194, v244);
    v351 = &v350;
    v246 = MEMORY[0x1EEE9AC00](v245);
    v218(&v350 - v240, &v413, v194, v246);
    dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
    v203((&v350 - v240), v194);
    v247 = (v203)(&v350 - v240, v194);
    v352 = &v350;
    *&v431 = &v425;
    v248 = MEMORY[0x1EEE9AC00](v247);
    v249 = (v218)(&v350 - v240, &v419 + 8, v194, v248);
    v351 = &v350;
    v250 = MEMORY[0x1EEE9AC00](v249);
    v218(&v350 - v240, &v413 + 8, v194, v250);
    dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
    v203((&v350 - v240), v194);
    v251 = (v203)(&v350 - v240, v194);
    v352 = &v350;
    *(&v431 + 1) = &v425 + 8;
    v252 = MEMORY[0x1EEE9AC00](v251);
    v253 = (v218)(&v350 - v240, &v420, v194, v252);
    v351 = &v350;
    v254 = MEMORY[0x1EEE9AC00](v253);
    v218(&v350 - v240, &v414, v194, v254);
    dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
    v203((&v350 - v240), v194);
    v255 = (v203)(&v350 - v240, v194);
    v352 = &v350;
    *&v432 = &v426;
    v256 = MEMORY[0x1EEE9AC00](v255);
    v257 = (v218)(&v350 - v240, &v420 + 8, v194, v256);
    v351 = &v350;
    v258 = MEMORY[0x1EEE9AC00](v257);
    v218(&v350 - v240, &v414 + 8, v194, v258);
    dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
    v359 = v203;
    v203((&v350 - v240), v194);
    v203((&v350 - v240), v194);
    *(&v432 + 1) = &v426 + 8;
    v259 = _s7SwiftUI16AnimatableValuesVyACyxxQp_QPGxxQpcfC12CoreGraphics7CGFloatV_A11GQP_Tt1g5(&v427, &v381);
    v352 = &v350;
    v260 = v384;
    v261 = v383;
    v262 = v384;
    v263 = v354;
    v354[2] = v383;
    v263[3] = v260;
    v264 = v386;
    v265 = v385;
    v266 = v386;
    v263[4] = v385;
    v263[5] = v264;
    v267 = v382;
    v268 = v381;
    v269 = v382;
    *v263 = v381;
    v263[1] = v267;
    v270 = *(v356 + 5);
    v364 = *(v356 + 4);
    v365 = v270;
    v271 = *(v356 + 7);
    v366 = *(v356 + 6);
    v367 = v271;
    v272 = *(v356 + 3);
    v362 = *(v356 + 2);
    v363 = v272;
    v370 = v261;
    v371 = v262;
    v372 = v265;
    v373[0] = v266;
    v368 = v268;
    v369 = v269;
    v273 = MEMORY[0x1EEE9AC00](v259);
    v274 = (v218)(&v350 - v240, &v368, v194, v273);
    v275 = MEMORY[0x1EEE9AC00](v274);
    v218(&v350 - v240, &v362, v194, v275);
    dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
    v276 = v359;
    v359((&v350 - v240), v194);
    v277 = v276(&v350 - v240, v194);
    v352 = &v350;
    *&v403 = &v397;
    v278 = MEMORY[0x1EEE9AC00](v277);
    v279 = (v218)(&v350 - v240, &v368 + 8, v194, v278);
    v351 = &v350;
    v280 = MEMORY[0x1EEE9AC00](v279);
    v218(&v350 - v240, &v362 + 8, v194, v280);
    dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
    v281 = v359;
    v359((&v350 - v240), v194);
    v282 = v281(&v350 - v240, v194);
    v352 = &v350;
    *(&v403 + 1) = &v397 + 8;
    v283 = MEMORY[0x1EEE9AC00](v282);
    v284 = (v218)(&v350 - v240, &v369, v194, v283);
    v351 = &v350;
    v285 = MEMORY[0x1EEE9AC00](v284);
    v218(&v350 - v240, &v363, v194, v285);
    dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
    v286 = v359;
    v359((&v350 - v240), v194);
    v287 = v286(&v350 - v240, v194);
    v352 = &v350;
    *&v404 = &v398;
    v288 = MEMORY[0x1EEE9AC00](v287);
    v289 = v355;
    v290 = (v355)(&v350 - v240, &v369 + 8, v194, v288);
    v351 = &v350;
    v291 = MEMORY[0x1EEE9AC00](v290);
    v289(&v350 - v240, &v363 + 8, v194, v291);
    dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
    v292 = v359;
    v359((&v350 - v240), v194);
    v293 = v292(&v350 - v240, v194);
    v352 = &v350;
    *(&v404 + 1) = &v398 + 8;
    v294 = MEMORY[0x1EEE9AC00](v293);
    v295 = v355;
    v296 = (v355)(&v350 - v240, &v370, v194, v294);
    v351 = &v350;
    v297 = MEMORY[0x1EEE9AC00](v296);
    v295(&v350 - v240, &v364, v194, v297);
    dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
    v298 = v359;
    v359((&v350 - v240), v194);
    v299 = v298(&v350 - v240, v194);
    v352 = &v350;
    *&v405 = &v399;
    v300 = MEMORY[0x1EEE9AC00](v299);
    v301 = v355;
    v302 = (v355)(&v350 - v240, &v370 + 8, v194, v300);
    v351 = &v350;
    v303 = MEMORY[0x1EEE9AC00](v302);
    v301(&v350 - v240, &v364 + 8, v194, v303);
    dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
    v304 = v359;
    v359((&v350 - v240), v194);
    v305 = v304(&v350 - v240, v194);
    v352 = &v350;
    *(&v405 + 1) = &v399 + 8;
    v306 = MEMORY[0x1EEE9AC00](v305);
    v307 = (&v350 - v240);
    v308 = v355;
    v309 = (v355)(&v350 - v240, &v371, v194, v306);
    v351 = &v350;
    v310 = MEMORY[0x1EEE9AC00](v309);
    v308(&v350 - v240, &v365, v194, v310);
    dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
    v311 = (&v350 - v240);
    v312 = v359;
    v359(v311, v194);
    v313 = v312(v307, v194);
    v352 = &v350;
    *&v406 = &v400;
    v314 = MEMORY[0x1EEE9AC00](v313);
    v315 = v353;
    v316 = (v308)(&v350 - v353, &v371 + 8, v194, v314);
    v351 = &v350;
    v317 = MEMORY[0x1EEE9AC00](v316);
    v308(&v350 - v315, (&v365 + 8), v194, v317);
    dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
    v318 = v359;
    v359((&v350 - v315), v194);
    v319 = v318(&v350 - v315, v194);
    v352 = &v350;
    *(&v406 + 1) = &v400 + 8;
    v320 = MEMORY[0x1EEE9AC00](v319);
    v321 = (v308)(&v350 - v315, &v372, v194, v320);
    v351 = &v350;
    v322 = MEMORY[0x1EEE9AC00](v321);
    v308(&v350 - v315, &v366, v194, v322);
    dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
    v323 = v359;
    v359((&v350 - v315), v194);
    v324 = v323(&v350 - v315, v194);
    v352 = &v350;
    *&v407 = &v401;
    v325 = MEMORY[0x1EEE9AC00](v324);
    v326 = v353;
    v327 = v355;
    v328 = (v355)(&v350 - v353, &v372 + 8, v194, v325);
    v351 = &v350;
    v329 = MEMORY[0x1EEE9AC00](v328);
    v327(&v350 - v326, &v366 + 8, v194, v329);
    dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
    v330 = v359;
    v359((&v350 - v326), v194);
    v331 = v330(&v350 - v326, v194);
    v352 = &v350;
    *(&v407 + 1) = &v401 + 8;
    v332 = MEMORY[0x1EEE9AC00](v331);
    v333 = v355;
    v334 = (v355)(&v350 - v326, v373, v194, v332);
    v351 = &v350;
    v335 = MEMORY[0x1EEE9AC00](v334);
    v333(&v350 - v326, &v367, v194, v335);
    dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
    v336 = v359;
    v359((&v350 - v326), v194);
    v337 = v336(&v350 - v326, v194);
    v352 = &v350;
    *&v408 = &v402;
    v338 = MEMORY[0x1EEE9AC00](v337);
    v339 = (v333)(&v350 - v326, v373 + 8, v194, v338);
    v351 = &v350;
    v340 = MEMORY[0x1EEE9AC00](v339);
    v333(&v350 - v326, (&v367 + 8), v194, v340);
    dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
    v336(&v350 - v326, v194);
    v336(&v350 - v326, v194);
    v341 = v356;
    *(&v408 + 1) = &v402 + 8;
    _s7SwiftUI16AnimatableValuesVyACyxxQp_QPGxxQpcfC12CoreGraphics7CGFloatV_A11GQP_Tt1g5(&v403, &v433);
    v342 = v436;
    v343 = v354;
    v354[2] = v435;
    v343[3] = v342;
    v344 = v438;
    v343[4] = v437;
    v343[5] = v344;
    v345 = v434;
    *v343 = v433;
    v343[1] = v345;
    swift_beginAccess();
    v346 = v377;
    *(v341 + 23) = v376;
    *(v341 + 25) = v346;
    v347 = v379;
    *(v341 + 27) = v378;
    *(v341 + 29) = v347;
    v348 = v375;
    *(v341 + 19) = v374;
    *(v341 + 21) = v348;
    v349 = *(v341 + 17);
    *(v341 + 18) = a3;
    if (v349 > 0.0)
    {
      *(v341 + 18) = v349 * (round(a3 / v349) + 1.0);
    }

    return 0;
  }
}

{
  v4 = v3;
  v7 = *(v3 + 168);
  v8 = *(v3 + 176);
  if (v8 + v7 * -0.5 >= a3)
  {
    goto LABEL_22;
  }

  if (*(v3 + 317) <= 1u)
  {
    if (!*(v3 + 317))
    {
      *(v3 + 160) = a3;
      v10 = 1;
LABEL_10:
      *(v3 + 317) = v10;
      goto LABEL_11;
    }

    *(v3 + 317) = 2;
    swift_beginAccess();
    if (static CoreTesting.isRunning)
    {
      goto LABEL_11;
    }

    *(v3 + 176) = v8 - *(v3 + 160) + a3;
    *(v3 + 160) = a3;
LABEL_22:
    swift_beginAccess();
    v55 = *(v3 + 264);
    v56 = *(v3 + 280);
    v102 = *(v3 + 248);
    v103 = v55;
    v57 = *(v3 + 296);
    v104 = v56;
    v105 = v57;
    v58 = *(v3 + 200);
    v98 = *(v3 + 184);
    v99 = v58;
    v59 = *(v3 + 232);
    v100 = *(v3 + 216);
    v101 = v59;
    v60 = a1[5];
    v85 = a1[4];
    v86 = v60;
    v61 = a1[7];
    v87 = a1[6];
    v88 = v61;
    v62 = a1[1];
    v81 = *a1;
    v82 = v62;
    v63 = a1[3];
    v83 = a1[2];
    v84 = v63;
    static RoundedRectangularShapeCorners.AnimatableData.+ infix(_:_:)(&v81);
    swift_beginAccess();
    v64 = *(v3 + 112);
    v102 = *(v3 + 96);
    v103 = v64;
    v65 = *(v3 + 144);
    v104 = *(v3 + 128);
    v105 = v65;
    v66 = *(v3 + 48);
    v98 = *(v3 + 32);
    v99 = v66;
    v67 = *(v3 + 80);
    v100 = *(v3 + 64);
    v101 = v67;
    v68 = a1[5];
    v85 = a1[4];
    v86 = v68;
    v69 = a1[7];
    v87 = a1[6];
    v88 = v69;
    v70 = a1[1];
    v81 = *a1;
    v82 = v70;
    v71 = a1[3];
    v83 = a1[2];
    v84 = v71;
    static RoundedRectangularShapeCorners.AnimatableData.- infix(_:_:)(&v81);
    return 0;
  }

  if (*(v3 + 317) == 2)
  {
    v11 = fmax(v7, 0.0166666667);
    v12 = v11 + v11;
    if (v11 + v11 < a3 - *(v3 + 160))
    {
      swift_beginAccess();
      if ((static CoreTesting.isRunning & 1) == 0)
      {
        *(v3 + 160) = a3 - v12;
      }
    }

    v10 = 3;
    goto LABEL_10;
  }

LABEL_11:
  v13 = *(v3 + 160);
  swift_beginAccess();
  v14 = *(v3 + 24);
  v15 = *(v4 + 336);

  v115[0] = v14;
  v115[1] = AGCreateWeakAttribute();
  v116 = 0;
  v117 = v15;
  v16 = *(v4 + 344);
  if (v16)
  {
    v17 = *(v4 + 352);
    type metadata accessor for AnimationFinishingDefinitionKey<CGFloat>(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<RoundedRectangularShapeCorners.AnimatableData>, lazy protocol witness table accessor for type RoundedRectangularShapeCorners.AnimatableData and conformance RoundedRectangularShapeCorners.AnimatableData, &type metadata for RoundedRectangularShapeCorners.AnimatableData, type metadata accessor for AnimationFinishingDefinitionKey);
    v19 = v18;
    type metadata accessor for AnimationFinishingDefinitionKey<ShaderVectorData>?(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<RoundedRectangularShapeCorners.AnimatableData>?, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<RoundedRectangularShapeCorners.AnimatableData>, lazy protocol witness table accessor for type RoundedRectangularShapeCorners.AnimatableData and conformance RoundedRectangularShapeCorners.AnimatableData, &type metadata for RoundedRectangularShapeCorners.AnimatableData);
    *(&v99 + 1) = v20;
    *&v98 = v16;
    *(&v98 + 1) = v17;
    specialized Dictionary.subscript.setter(&v98, v19);
  }

  v21 = a3 - v13;
  swift_beginAccess();
  v22 = *(v4 + 16);
  swift_beginAccess();
  v23 = *(v4 + 112);
  v94 = *(v4 + 96);
  v95 = v23;
  v24 = *(v4 + 144);
  v96 = *(v4 + 128);
  v97 = v24;
  v25 = *(v4 + 48);
  v90 = *(v4 + 32);
  v91 = v25;
  v26 = *(v4 + 80);
  v92 = *(v4 + 64);
  v93 = v26;
  type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>(0);
  if (v27 == &type metadata for RoundedRectangularShapeCorners.AnimatableData)
  {
    v73 = v90;
    v74 = v91;
    v31 = *(*v22 + 120);
    lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, protocol conformance descriptor for AnimatablePair<A, B>);
    v33 = v32;

    v31(&v81, &v73, v115, &type metadata for RoundedRectangularShapeCorners.AnimatableData, v33, v21);
    v98 = v81;
    v99 = v82;
    LOBYTE(v100) = v83;
  }

  else
  {
    v28 = *(*v22 + 120);
    lazy protocol witness table accessor for type RoundedRectangularShapeCorners.AnimatableData and conformance RoundedRectangularShapeCorners.AnimatableData();
    v30 = v29;

    v28(&v98, &v90, v115, &type metadata for RoundedRectangularShapeCorners.AnimatableData, v30, v21);
  }

  v87 = v104;
  v88 = v105;
  v89 = v106;
  v83 = v100;
  v84 = v101;
  v85 = v102;
  v86 = v103;
  v81 = v98;
  v82 = v99;
  if (_s7SwiftUI30RoundedRectangularShapeCornersV14AnimatableDataVSgWOg(&v81) == 1)
  {

    return 1;
  }

  v111 = v102;
  v112 = v103;
  v113 = v104;
  v114 = v105;
  v107 = v98;
  v108 = v99;
  v109 = v100;
  v110 = v101;
  specialized AnimatorState.updateListeners(isLogicallyComplete:time:environment:)(v117, a2 | ((HIDWORD(a2) & 1) << 32), v21);
  *(v4 + 24) = v115[0];

  v35 = a1[5];
  v77 = a1[4];
  v78 = v35;
  v36 = a1[7];
  v79 = a1[6];
  v80 = v36;
  v37 = a1[1];
  v73 = *a1;
  v74 = v37;
  v38 = a1[3];
  v75 = a1[2];
  v76 = v38;
  static RoundedRectangularShapeCorners.AnimatableData.+ infix(_:_:)(&v73);
  v39 = *(v4 + 96);
  v40 = *(v4 + 128);
  v41 = *(v4 + 144);
  v78 = *(v4 + 112);
  v79 = v40;
  v80 = v41;
  v42 = *(v4 + 32);
  v43 = *(v4 + 64);
  v44 = *(v4 + 80);
  v74 = *(v4 + 48);
  v75 = v43;
  v76 = v44;
  v77 = v39;
  v45 = a1[5];
  v72[4] = a1[4];
  v72[5] = v45;
  v46 = a1[7];
  v72[6] = a1[6];
  v72[7] = v46;
  v73 = v42;
  v47 = a1[1];
  v72[0] = *a1;
  v72[1] = v47;
  v48 = a1[3];
  v72[2] = a1[2];
  v72[3] = v48;
  static RoundedRectangularShapeCorners.AnimatableData.- infix(_:_:)(v72);
  swift_beginAccess();
  v49 = v112;
  *(v4 + 248) = v111;
  v50 = v113;
  v51 = v114;
  *(v4 + 264) = v49;
  *(v4 + 280) = v50;
  *(v4 + 296) = v51;
  v52 = v108;
  *(v4 + 184) = v107;
  *(v4 + 200) = v52;
  v53 = v110;
  *(v4 + 216) = v109;
  *(v4 + 232) = v53;
  v54 = *(v4 + 168);
  *(v4 + 176) = a3;
  if (v54 > 0.0)
  {
    *(v4 + 176) = v54 * (round(a3 / v54) + 1.0);
  }

  return 0;
}

uint64_t specialized AnimatorState.combine(newAnimation:newInterval:at:in:environment:)(uint64_t a1, void *a2, char a3, void *a4, uint64_t a5, double a6)
{
  v7 = v6;
  if (*(v6 + 89))
  {
    goto LABEL_2;
  }

  if (one-time initialization token for semantic != -1)
  {
    swift_once();
  }

  v39 = static Semantics_v3.semantic;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C == 1)
  {
    if ((dyld_program_sdk_at_least() & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  else if (static Semantics.forced < v39)
  {
LABEL_25:
    swift_beginAccess();
    *(v6 + 16) = a1;

    swift_beginAccess();
    *(v6 + 32) = a2;
    *(v6 + 40) = a3 & 1;

    goto LABEL_8;
  }

LABEL_2:
  v13 = a6 - *(v6 + 48);
  swift_beginAccess();
  v14 = *(v6 + 24);
  v15 = *(v6 + 112);

  v43[0] = v14;
  v43[1] = AGCreateWeakAttribute();
  v44 = 0;
  v45 = v15;
  v16 = *(v6 + 120);
  if (v16)
  {
    v17 = *(v7 + 128);
    type metadata accessor for AnimationFinishingDefinitionKey<KeyedAnimatableArray<_ShapeStyle_Pack.Key, AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>>(0);
    v19 = v18;
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<KeyedAnimatableArray<_ShapeStyle_Pack.Key, AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>>?, type metadata accessor for AnimationFinishingDefinitionKey<KeyedAnimatableArray<_ShapeStyle_Pack.Key, AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>>, MEMORY[0x1E69E6720]);
    v40[3] = v20;
    v40[0] = v16;
    v40[1] = v17;
    specialized Dictionary.subscript.setter(v40, v19);
  }

  swift_beginAccess();
  v21 = *(v7 + 16);
  v22 = *(v7 + 24);
  swift_beginAccess();
  v23 = *(v7 + 32);
  v24 = *(v7 + 40);

  specialized AnimatorState.forkListeners(animation:state:interval:)(v21, v22, v23, v24);

  *(v7 + 112) = 0;
  v25 = *(v7 + 16);
  v26 = *(v7 + 40);
  v41 = *(v7 + 32);
  v42 = v26;
  v27 = *(*a1 + 136);
  type metadata accessor for KeyedAnimatableArray<_ShapeStyle_Pack.Key, AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>(0);
  v29 = v28;
  lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type KeyedAnimatableArray<_ShapeStyle_Pack.Key, AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>> and conformance KeyedAnimatableArray<A, B>, type metadata accessor for KeyedAnimatableArray<_ShapeStyle_Pack.Key, AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>, protocol conformance descriptor for KeyedAnimatableArray<A, B>);
  v31 = v30;

  LOBYTE(v29) = v27(v25, &v41, v43, v29, v31, v13);

  if (v29)
  {
    *(v7 + 24) = v43[0];

    *(v7 + 16) = a1;
  }

  else
  {

    v32 = *(v7 + 32);
    v33 = *(v7 + 40);
    swift_beginAccess();
    swift_beginAccess();

    specialized combineAnimation<A>(into:state:value:elapsed:newAnimation:newValue:)((v7 + 16), (v7 + 24), v32, v33, a1, a2, a3 & 1, v13);
    swift_endAccess();
    swift_endAccess();
  }

  swift_beginAccess();
  _s7SwiftUI20KeyedAnimatableArrayV2peoiyyACyxq_Gz_AEtFZAA16_ShapeStyle_PackV3KeyV_AA0D4PairVyAG4FillO0D4DataOAKySfAA0dE0VyAKySfAG6EffectV4KindOANOGGGGTt1B5((v7 + 32), a2, a3 & 1);
  swift_endAccess();
  *(v7 + 64) = a6;
LABEL_8:
  *&result = COERCE_DOUBLE(_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA022AnimationFrameIntervalF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a4));
  if ((v35 & 1) == 0)
  {
    v36 = 0.0;
    if (*&result > 0.0)
    {
      v37 = log2(*&result * 240.0);
      v36 = exp2(floor(v37 + 0.01)) * 0.00416666667;
    }

    if (v36 >= *(v7 + 56))
    {
      v36 = *(v7 + 56);
    }

    *(v7 + 56) = v36;
    if (v36 >= 0.0166666667)
    {
      *&result = 0.0;
      v38 = 1;
    }

    else
    {
      *&result = COERCE_DOUBLE(_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA015AnimationReasonF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a4));
      if ((result & 0x100000000) != 0)
      {
        result = *(v7 + 84);
        v38 = *(v7 + 88);
      }

      else
      {
        v38 = 0;
      }
    }

    *(v7 + 84) = result;
    *(v7 + 88) = v38;
  }

  return result;
}

uint64_t specialized AnimatorState.combine(newAnimation:newInterval:at:in:environment:)(uint64_t a1, void *a2, uint64_t a3, __n128 a4, __n128 a5, double a6)
{
  v7 = v6;
  v38 = a4.n128_f64[0];
  v39 = a5.n128_f64[0];
  if (*(v6 + 93))
  {
    goto LABEL_2;
  }

  if (one-time initialization token for semantic != -1)
  {
    swift_once();
  }

  v37 = static Semantics_v3.semantic;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C == 1)
  {
    if ((dyld_program_sdk_at_least() & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  else if (static Semantics.forced < v37)
  {
LABEL_25:
    swift_beginAccess();
    *(v6 + 16) = a1;

    swift_beginAccess();
    *(v6 + 32) = v38;
    *(v6 + 40) = v39;
    goto LABEL_8;
  }

LABEL_2:
  v11 = a6 - *(v6 + 48);
  swift_beginAccess();
  v12 = *(v6 + 24);
  v13 = *(v6 + 112);

  v42[0] = v12;
  v42[1] = AGCreateWeakAttribute();
  v43 = 0;
  v44 = v13;
  v14 = *(v6 + 120);
  if (v14)
  {
    v15 = *(v7 + 128);
    type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<CGFloat, CGFloat>>(0);
    v17 = v16;
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<AnimatablePair<CGFloat, CGFloat>>?, type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<CGFloat, CGFloat>>, MEMORY[0x1E69E6720]);
    v40[3] = v18;
    v40[0] = v14;
    v40[1] = v15;
    specialized Dictionary.subscript.setter(v40, v17);
  }

  swift_beginAccess();
  v19 = *(v7 + 16);
  v20 = *(v7 + 24);
  swift_beginAccess();
  v21 = *(v7 + 32);
  v22 = *(v7 + 40);

  specialized AnimatorState.forkListeners(animation:state:interval:)(v19, v20, v21, v22);

  *(v7 + 112) = 0;
  v41 = *(v7 + 32);
  v23 = *(*a1 + 136);
  type metadata accessor for AnimatablePair<CGFloat, CGFloat>(0);
  v25 = v24;
  lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<CGFloat, CGFloat> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<CGFloat, CGFloat>, protocol conformance descriptor for AnimatablePair<A, B>);
  v27 = v26;

  LOBYTE(v25) = v23(v28, &v41, v42, v25, v27, v11);

  if (v25)
  {
    *(v7 + 24) = v42[0];

    *(v7 + 16) = a1;
  }

  else
  {

    v29 = *(v7 + 32);
    v30 = *(v7 + 40);
    swift_beginAccess();
    swift_beginAccess();
    specialized combineAnimation<A>(into:state:value:elapsed:newAnimation:newValue:)((v7 + 16), (v7 + 24), a1, v29, v30, v11, v38, v39);
    swift_endAccess();
    swift_endAccess();
  }

  v31.f64[0] = v38;
  v31.f64[1] = v39;
  *(v7 + 32) = vaddq_f64(*(v7 + 32), v31);
  *(v7 + 64) = a6;
LABEL_8:
  *&result = COERCE_DOUBLE(_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA022AnimationFrameIntervalF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a2));
  if ((v33 & 1) == 0)
  {
    v34 = 0.0;
    if (*&result > 0.0)
    {
      v35 = log2(*&result * 240.0);
      v34 = exp2(floor(v35 + 0.01)) * 0.00416666667;
    }

    if (v34 >= *(v7 + 56))
    {
      v34 = *(v7 + 56);
    }

    *(v7 + 56) = v34;
    if (v34 >= 0.0166666667)
    {
      *&result = 0.0;
      v36 = 1;
    }

    else
    {
      *&result = COERCE_DOUBLE(_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA015AnimationReasonF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a2));
      if ((result & 0x100000000) != 0)
      {
        result = *(v7 + 88);
        v36 = *(v7 + 92);
      }

      else
      {
        v36 = 0;
      }
    }

    *(v7 + 88) = result;
    *(v7 + 92) = v36;
  }

  return result;
}

uint64_t specialized AnimatorState.combine(newAnimation:newInterval:at:in:environment:)(uint64_t a1, void *a2, uint64_t a3, double a4, double a5)
{
  v6 = v5;
  if (*(v5 + 77))
  {
    goto LABEL_2;
  }

  if (one-time initialization token for semantic != -1)
  {
    swift_once();
  }

  v31 = static Semantics_v3.semantic;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C == 1)
  {
    if ((dyld_program_sdk_at_least() & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  else if (static Semantics.forced < v31)
  {
LABEL_25:
    swift_beginAccess();
    *(v5 + 16) = a1;

    swift_beginAccess();
    *(v5 + 32) = a4;
    goto LABEL_8;
  }

LABEL_2:
  v11 = a5 - *(v5 + 40);
  swift_beginAccess();
  v12 = *(v5 + 24);
  v13 = *(v5 + 96);

  v34[0] = v12;
  v34[1] = AGCreateWeakAttribute();
  v35 = 0;
  v36 = v13;
  v14 = *(v5 + 104);
  if (v14)
  {
    v15 = *(v6 + 112);
    type metadata accessor for AnimationFinishingDefinitionKey<Double>(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<Double>, MEMORY[0x1E69E63B0], &protocol witness table for Double, type metadata accessor for AnimationFinishingDefinitionKey);
    v17 = v16;
    type metadata accessor for AnimationFinishingDefinitionKey<Double>?(0);
    v32[3] = v18;
    v32[0] = v14;
    v32[1] = v15;
    specialized Dictionary.subscript.setter(v32, v17);
  }

  swift_beginAccess();
  v19 = *(v6 + 16);
  v20 = *(v6 + 24);
  swift_beginAccess();
  v21 = *(v6 + 32);

  specialized AnimatorState.forkListeners(animation:state:interval:)(v19, v20, v21);

  *(v6 + 96) = 0;
  v33[0] = *(v6 + 32);
  v22 = *(*a1 + 136);

  v24 = v22(v23, v33, v34, MEMORY[0x1E69E63B0], &protocol witness table for Double, v11);

  if (v24)
  {
    *(v6 + 24) = v34[0];

    *(v6 + 16) = a1;
  }

  else
  {

    v25 = *(v6 + 32);
    swift_beginAccess();
    swift_beginAccess();
    specialized combineAnimation<A>(into:state:value:elapsed:newAnimation:newValue:)((v6 + 16), (v6 + 24), a1, v25, v11, a4);
    swift_endAccess();
    swift_endAccess();
  }

  *(v6 + 32) = *(v6 + 32) + a4;
  *(v6 + 56) = a5;
LABEL_8:
  *&result = COERCE_DOUBLE(_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA022AnimationFrameIntervalF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a2));
  if ((v27 & 1) == 0)
  {
    v28 = 0.0;
    if (*&result > 0.0)
    {
      v29 = log2(*&result * 240.0);
      v28 = exp2(floor(v29 + 0.01)) * 0.00416666667;
    }

    if (v28 >= *(v6 + 48))
    {
      v28 = *(v6 + 48);
    }

    *(v6 + 48) = v28;
    if (v28 >= 0.0166666667)
    {
      *&result = 0.0;
      v30 = 1;
    }

    else
    {
      *&result = COERCE_DOUBLE(_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA015AnimationReasonF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a2));
      if ((result & 0x100000000) != 0)
      {
        result = *(v6 + 72);
        v30 = *(v6 + 76);
      }

      else
      {
        v30 = 0;
      }
    }

    *(v6 + 72) = result;
    *(v6 + 76) = v30;
  }

  return result;
}

{
  v6 = v5;
  if (*(v5 + 77))
  {
    goto LABEL_2;
  }

  if (one-time initialization token for semantic != -1)
  {
    swift_once();
  }

  v32 = static Semantics_v3.semantic;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C == 1)
  {
    if ((dyld_program_sdk_at_least() & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  else if (static Semantics.forced < v32)
  {
LABEL_25:
    swift_beginAccess();
    *(v5 + 16) = a1;

    swift_beginAccess();
    *(v5 + 32) = a4;
    goto LABEL_8;
  }

LABEL_2:
  v11 = a5 - *(v5 + 40);
  swift_beginAccess();
  v12 = *(v5 + 24);
  v13 = *(v5 + 96);

  v35[0] = v12;
  v35[1] = AGCreateWeakAttribute();
  v36 = 0;
  v37 = v13;
  v14 = *(v5 + 104);
  if (v14)
  {
    v15 = *(v6 + 112);
    type metadata accessor for AnimationFinishingDefinitionKey<CGFloat>(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<CGFloat>, lazy protocol witness table accessor for type CGFloat and conformance CGFloat, MEMORY[0x1E69E7DE0], type metadata accessor for AnimationFinishingDefinitionKey);
    v17 = v16;
    type metadata accessor for AnimationFinishingDefinitionKey<CGFloat>?(0);
    v33[3] = v18;
    v33[0] = v14;
    v33[1] = v15;
    specialized Dictionary.subscript.setter(v33, v17);
  }

  swift_beginAccess();
  v19 = *(v6 + 16);
  v20 = *(v6 + 24);
  swift_beginAccess();
  v21 = *(v6 + 32);

  specialized AnimatorState.forkListeners(animation:state:interval:)(v19, v20, v21);

  *(v6 + 96) = 0;
  v34[0] = *(v6 + 32);
  v22 = *(*a1 + 136);
  lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
  v24 = v23;

  LOBYTE(v24) = v22(v25, v34, v35, MEMORY[0x1E69E7DE0], v24, v11);

  if (v24)
  {
    *(v6 + 24) = v35[0];

    *(v6 + 16) = a1;
  }

  else
  {

    v26 = *(v6 + 32);
    swift_beginAccess();
    swift_beginAccess();
    specialized combineAnimation<A>(into:state:value:elapsed:newAnimation:newValue:)((v6 + 16), (v6 + 24), a1, v26, v11, a4);
    swift_endAccess();
    swift_endAccess();
  }

  *(v6 + 32) = *(v6 + 32) + a4;
  *(v6 + 56) = a5;
LABEL_8:
  *&result = COERCE_DOUBLE(_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA022AnimationFrameIntervalF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a2));
  if ((v28 & 1) == 0)
  {
    v29 = 0.0;
    if (*&result > 0.0)
    {
      v30 = log2(*&result * 240.0);
      v29 = exp2(floor(v30 + 0.01)) * 0.00416666667;
    }

    if (v29 >= *(v6 + 48))
    {
      v29 = *(v6 + 48);
    }

    *(v6 + 48) = v29;
    if (v29 >= 0.0166666667)
    {
      *&result = 0.0;
      v31 = 1;
    }

    else
    {
      *&result = COERCE_DOUBLE(_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA015AnimationReasonF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a2));
      if ((result & 0x100000000) != 0)
      {
        result = *(v6 + 72);
        v31 = *(v6 + 76);
      }

      else
      {
        v31 = 0;
      }
    }

    *(v6 + 72) = result;
    *(v6 + 76) = v31;
  }

  return result;
}

uint64_t specialized AnimatorState.combine(newAnimation:newInterval:at:in:environment:)(uint64_t a1, void *a2, uint64_t a3, double a4, double a5, double a6, double a7)
{
  v8 = v7;
  if (*(v7 + 109))
  {
    goto LABEL_2;
  }

  if (one-time initialization token for semantic != -1)
  {
    swift_once();
  }

  v67 = static Semantics_v3.semantic;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C == 1)
  {
    if ((dyld_program_sdk_at_least() & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  else if (static Semantics.forced < v67)
  {
LABEL_25:
    swift_beginAccess();
    *(v7 + 16) = a1;

    swift_beginAccess();
    *(v7 + 32) = a4;
    *(v7 + 40) = a5;
    *(v7 + 48) = a6;
    goto LABEL_8;
  }

LABEL_2:
  v71 = a2;
  v15 = a7 - *(v7 + 56);
  swift_beginAccess();
  v16 = *(v7 + 24);
  v17 = *(v7 + 128);

  v81[0] = v16;
  v81[1] = AGCreateWeakAttribute();
  v82 = 0;
  v83 = v17;
  v18 = *(v7 + 136);
  if (v18)
  {
    v19 = *(v8 + 144);
    type metadata accessor for AnimationFinishingDefinitionKey<AnimatableValues<Pack{CGFloat, AnimatablePair<CGFloat, CGFloat>}>>(0);
    v21 = v20;
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<AnimatableValues<Pack{CGFloat, AnimatablePair<CGFloat, CGFloat>}>>?, type metadata accessor for AnimationFinishingDefinitionKey<AnimatableValues<Pack{CGFloat, AnimatablePair<CGFloat, CGFloat>}>>, MEMORY[0x1E69E6720]);
    v72[3] = v22;
    v72[0] = v18;
    v72[1] = v19;
    specialized Dictionary.subscript.setter(v72, v21);
  }

  swift_beginAccess();
  v23 = *(v8 + 16);
  v24 = *(v8 + 24);
  swift_beginAccess();
  v25 = *(v8 + 32);
  v26 = *(v8 + 40);
  v27 = *(v8 + 48);

  specialized AnimatorState.forkListeners(animation:state:interval:)(v23, v24, v25, v26, v27);

  *(v8 + 128) = 0;
  v28 = *(v8 + 48);
  v79 = *(v8 + 32);
  v80 = v28;
  v29 = *(*a1 + 136);
  type metadata accessor for AnimatableValues<Pack{CGFloat, AnimatablePair<CGFloat, CGFloat>}>(0);
  v31 = v30;
  lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatableValues<Pack{CGFloat, AnimatablePair<CGFloat, CGFloat>}> and conformance AnimatableValues<Pack{repeat A}>, type metadata accessor for AnimatableValues<Pack{CGFloat, AnimatablePair<CGFloat, CGFloat>}>, protocol conformance descriptor for AnimatableValues<Pack{repeat A}>);
  v33 = v32;

  LOBYTE(v31) = v29(v34, &v79, v81, v31, v33, v15);

  if (v31)
  {
    *(v8 + 24) = v81[0];

    *(v8 + 16) = a1;
  }

  else
  {

    v35 = *(v8 + 32);
    v36 = *(v8 + 40);
    v37 = *(v8 + 48);
    swift_beginAccess();
    swift_beginAccess();
    specialized combineAnimation<A>(into:state:value:elapsed:newAnimation:newValue:)((v8 + 16), (v8 + 24), a1, v35, v36, v37, v15, a4, a5, a6);
    swift_endAccess();
    swift_endAccess();
  }

  swift_beginAccess();
  v76 = *(v8 + 32);
  v75 = *(v8 + 40);
  *&v73[1] = a6;
  v74 = a4;
  *v73 = a5;
  lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
  v69 = v68;
  v70 = v38;
  v39 = MEMORY[0x1E69E7DE0];
  v40 = *(MEMORY[0x1E69E7DE0] - 8);
  v41 = v40[8];
  v42 = MEMORY[0x1EEE9AC00](v38);
  v43 = v68 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = v40[2];
  v45 = v44(v43, &v76, v39, v42);
  v46 = MEMORY[0x1EEE9AC00](v45);
  v44(v43, &v74, v39, v46);
  dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
  v47 = v40[1];
  v70 = v47;
  v47(v43, v39);
  v47(v43, v39);
  type metadata accessor for AnimatablePair<CGFloat, CGFloat>(0);
  v49 = v48;
  lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<CGFloat, CGFloat> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<CGFloat, CGFloat>, protocol conformance descriptor for AnimatablePair<A, B>);
  v68[1] = v50;
  v69 = v68;
  v51 = *(v49 - 8);
  v52 = v51[8];
  v53 = MEMORY[0x1EEE9AC00](v50);
  v54 = v68 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = v51[2];
  v56 = v55(v54, &v75, v49, v53);
  v68[0] = v68;
  v57 = MEMORY[0x1EEE9AC00](v56);
  v55(v54, v73, v49, v57);
  dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
  v58 = v51[1];
  v58(v54, v49);
  v58(v54, v49);
  v59 = v77;
  v60 = v78[0];
  v61 = v78[1];
  v58(v78, v49);
  v70(&v77, MEMORY[0x1E69E7DE0]);
  *(v8 + 32) = v59;
  *(v8 + 40) = v60;
  *(v8 + 48) = v61;
  swift_endAccess();
  *(v8 + 72) = a7;
  a2 = v71;
LABEL_8:
  *&result = COERCE_DOUBLE(_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA022AnimationFrameIntervalF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a2));
  if ((v63 & 1) == 0)
  {
    v64 = 0.0;
    if (*&result > 0.0)
    {
      v65 = log2(*&result * 240.0);
      v64 = exp2(floor(v65 + 0.01)) * 0.00416666667;
    }

    if (v64 >= *(v8 + 64))
    {
      v64 = *(v8 + 64);
    }

    *(v8 + 64) = v64;
    if (v64 >= 0.0166666667)
    {
      *&result = 0.0;
      v66 = 1;
    }

    else
    {
      *&result = COERCE_DOUBLE(_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA015AnimationReasonF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a2));
      if ((result & 0x100000000) != 0)
      {
        result = *(v8 + 104);
        v66 = *(v8 + 108);
      }

      else
      {
        v66 = 0;
      }
    }

    *(v8 + 104) = result;
    *(v8 + 108) = v66;
  }

  return result;
}

{
  v8 = v7;
  if (*(v7 + 109))
  {
    goto LABEL_2;
  }

  if (one-time initialization token for semantic != -1)
  {
    swift_once();
  }

  v73 = static Semantics_v3.semantic;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C == 1)
  {
    if ((dyld_program_sdk_at_least() & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  else if (static Semantics.forced < v73)
  {
LABEL_25:
    swift_beginAccess();
    *(v7 + 16) = a1;

    swift_beginAccess();
    *(v7 + 32) = a4;
    *(v7 + 40) = a5;
    *(v7 + 48) = a6;
    goto LABEL_8;
  }

LABEL_2:
  v78 = a2;
  v15 = a7 - *(v7 + 56);
  swift_beginAccess();
  v16 = *(v7 + 24);
  v17 = *(v7 + 128);

  v93[0] = v16;
  v93[1] = AGCreateWeakAttribute();
  v94 = 0;
  v95 = v17;
  v18 = *(v7 + 136);
  if (v18)
  {
    v19 = *(v8 + 144);
    type metadata accessor for AnimationFinishingDefinitionKey<AnimatableValues<Pack{CGFloat, CGFloat, CGFloat}>>(0);
    v21 = v20;
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<AnimatableValues<Pack{CGFloat, CGFloat, CGFloat}>>?, type metadata accessor for AnimationFinishingDefinitionKey<AnimatableValues<Pack{CGFloat, CGFloat, CGFloat}>>, MEMORY[0x1E69E6720]);
    v81[3] = v22;
    v81[0] = v18;
    v81[1] = v19;
    specialized Dictionary.subscript.setter(v81, v21);
  }

  swift_beginAccess();
  v23 = *(v8 + 16);
  v24 = *(v8 + 24);
  swift_beginAccess();
  v25 = *(v8 + 32);
  v26 = *(v8 + 40);
  v27 = *(v8 + 48);

  specialized AnimatorState.forkListeners(animation:state:interval:)(v23, v24, v25, v26, v27);

  *(v8 + 128) = 0;
  v28 = *(v8 + 48);
  v91 = *(v8 + 32);
  v92 = v28;
  v29 = *(*a1 + 136);
  type metadata accessor for AnimatableValues<Pack{CGFloat, CGFloat, CGFloat}>(0);
  v31 = v30;
  lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatableValues<Pack{CGFloat, CGFloat, CGFloat}> and conformance AnimatableValues<Pack{repeat A}>, type metadata accessor for AnimatableValues<Pack{CGFloat, CGFloat, CGFloat}>, protocol conformance descriptor for AnimatableValues<Pack{repeat A}>);
  v33 = v32;

  LOBYTE(v31) = v29(v34, &v91, v93, v31, v33, v15);

  if (v31)
  {
    *(v8 + 24) = v93[0];

    *(v8 + 16) = a1;
  }

  else
  {

    v35 = *(v8 + 32);
    v36 = *(v8 + 40);
    v37 = *(v8 + 48);
    swift_beginAccess();
    swift_beginAccess();
    specialized combineAnimation<A>(into:state:value:elapsed:newAnimation:newValue:)((v8 + 16), (v8 + 24), a1, v35, v36, v37, v15, a4, a5, a6);
    swift_endAccess();
    swift_endAccess();
  }

  swift_beginAccess();
  v38 = *(v8 + 32);
  v39 = *(v8 + 48);
  v86 = *(v8 + 40);
  v87 = v38;
  v84 = a4;
  v85 = v39;
  v82 = a6;
  v83 = a5;
  lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
  v80 = v40;
  v77 = v74;
  v41 = MEMORY[0x1E69E7DE0];
  v42 = *(MEMORY[0x1E69E7DE0] - 8);
  v43 = v42[8];
  v44 = MEMORY[0x1EEE9AC00](v40);
  v45 = (v43 + 15) & 0xFFFFFFFFFFFFFFF0;
  v46 = v42[2];
  v47 = v46(v74 - v45, &v87, v41, v44);
  v79 = v46;
  v76 = v74;
  v48 = MEMORY[0x1EEE9AC00](v47);
  v49(v74 - v45, &v84, v41, v48);
  v80 = *(v80 + 8);
  dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
  v50 = v42[1];
  v50(v74 - v45, v41);
  v51 = (v50)(v74 - v45, v41);
  v77 = v74;
  v74[1] = v43;
  v52 = MEMORY[0x1EEE9AC00](v51);
  v53 = v74 - v45;
  v54 = v45;
  v75 = v45;
  v55 = v74 - v45;
  v56 = v79;
  v57 = (v79)(v55, &v86, v41, v52);
  v76 = v74;
  v58 = MEMORY[0x1EEE9AC00](v57);
  v56(v74 - v54, &v83, v41, v58);
  dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
  v50(v74 - v54, v41);
  v59 = (v50)(v53, v41);
  v77 = v74;
  v60 = MEMORY[0x1EEE9AC00](v59);
  v61 = v75;
  v62 = v79;
  v63 = (v79)(v74 - v75, &v85, v41, v60);
  v76 = v74;
  v64 = MEMORY[0x1EEE9AC00](v63);
  v62(v74 - v61, &v82, v41, v64);
  dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
  v50(v74 - v61, v41);
  v50(v74 - v61, v41);
  v66 = v89;
  v65 = v90[0];
  v67 = v88;
  v50(&v88, v41);
  v50(&v89, v41);
  v50(v90, v41);
  *(v8 + 32) = v65;
  *(v8 + 40) = v66;
  *(v8 + 48) = v67;
  swift_endAccess();
  *(v8 + 72) = a7;
  a2 = v78;
LABEL_8:
  *&result = COERCE_DOUBLE(_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA022AnimationFrameIntervalF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a2));
  if ((v69 & 1) == 0)
  {
    v70 = 0.0;
    if (*&result > 0.0)
    {
      v71 = log2(*&result * 240.0);
      v70 = exp2(floor(v71 + 0.01)) * 0.00416666667;
    }

    if (v70 >= *(v8 + 64))
    {
      v70 = *(v8 + 64);
    }

    *(v8 + 64) = v70;
    if (v70 >= 0.0166666667)
    {
      *&result = 0.0;
      v72 = 1;
    }

    else
    {
      *&result = COERCE_DOUBLE(_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA015AnimationReasonF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a2));
      if ((result & 0x100000000) != 0)
      {
        result = *(v8 + 104);
        v72 = *(v8 + 108);
      }

      else
      {
        v72 = 0;
      }
    }

    *(v8 + 104) = result;
    *(v8 + 108) = v72;
  }

  return result;
}

uint64_t specialized AnimatorState.combine(newAnimation:newInterval:at:in:environment:)(uint64_t a1, unint64_t a2, char a3, void *a4, uint64_t a5, double a6, double a7)
{
  v8 = v7;
  if (*(v7 + 109))
  {
    goto LABEL_2;
  }

  if (one-time initialization token for semantic != -1)
  {
    swift_once();
  }

  v44 = static Semantics_v3.semantic;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C == 1)
  {
    if ((dyld_program_sdk_at_least() & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  else if (static Semantics.forced < v44)
  {
LABEL_25:
    swift_beginAccess();
    *(v7 + 16) = a1;

    swift_beginAccess();
    *(v7 + 32) = a2;
    *(v7 + 40) = a3 & 1;
    *(v7 + 48) = a6;

    goto LABEL_8;
  }

LABEL_2:
  v15 = a7 - *(v7 + 56);
  swift_beginAccess();
  v16 = *(v7 + 24);
  v17 = *(v7 + 128);

  v49[0] = v16;
  v49[1] = AGCreateWeakAttribute();
  v50 = 0;
  v51 = v17;
  v18 = *(v7 + 136);
  if (v18)
  {
    v19 = *(v8 + 144);
    type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<KeyedAnimatableArray<Int, _AnyAnimatableData>, CGFloat>>(0);
    v21 = v20;
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<AnimatablePair<KeyedAnimatableArray<Int, _AnyAnimatableData>, CGFloat>>?, type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<KeyedAnimatableArray<Int, _AnyAnimatableData>, CGFloat>>, MEMORY[0x1E69E6720]);
    v45[3] = v22;
    v45[0] = v18;
    v45[1] = v19;
    specialized Dictionary.subscript.setter(v45, v21);
  }

  swift_beginAccess();
  v23 = *(v8 + 16);
  v24 = *(v8 + 24);
  swift_beginAccess();
  v25 = *(v8 + 32);
  v26 = *(v8 + 40);
  v27 = *(v8 + 48);

  specialized AnimatorState.forkListeners(animation:state:interval:)(v23, v24, v25, v26, v27);

  *(v8 + 128) = 0;
  v28 = *(v8 + 16);
  v29 = *(v8 + 40);
  v30 = *(v8 + 48);
  v46 = *(v8 + 32);
  v47 = v29;
  v48 = v30;
  v31 = *(*a1 + 136);
  type metadata accessor for AnimatablePair<KeyedAnimatableArray<Int, _AnyAnimatableData>, CGFloat>(0);
  v33 = v32;
  lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<KeyedAnimatableArray<Int, _AnyAnimatableData>, CGFloat> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<KeyedAnimatableArray<Int, _AnyAnimatableData>, CGFloat>, protocol conformance descriptor for AnimatablePair<A, B>);
  v35 = v34;

  LOBYTE(v33) = v31(v28, &v46, v49, v33, v35, v15);

  if (v33)
  {
    *(v8 + 24) = v49[0];

    *(v8 + 16) = a1;
  }

  else
  {

    v36 = *(v8 + 32);
    v37 = *(v8 + 40);
    v38 = *(v8 + 48);
    swift_beginAccess();
    swift_beginAccess();

    specialized combineAnimation<A>(into:state:value:elapsed:newAnimation:newValue:)((v8 + 16), (v8 + 24), v36, v37, a1, a2, a3 & 1, v38, v15, a6);
    swift_endAccess();
    swift_endAccess();
  }

  swift_beginAccess();
  _s7SwiftUI20KeyedAnimatableArrayV2peoiyyACyxq_Gz_AEtFZSi_AA04_AnyD4DataVTt1B5(v8 + 32, a2, a3 & 1);
  *(v8 + 48) = *(v8 + 48) + a6;
  swift_endAccess();
  *(v8 + 72) = a7;
LABEL_8:
  *&result = COERCE_DOUBLE(_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA022AnimationFrameIntervalF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a4));
  if ((v40 & 1) == 0)
  {
    v41 = 0.0;
    if (*&result > 0.0)
    {
      v42 = log2(*&result * 240.0);
      v41 = exp2(floor(v42 + 0.01)) * 0.00416666667;
    }

    if (v41 >= *(v8 + 64))
    {
      v41 = *(v8 + 64);
    }

    *(v8 + 64) = v41;
    if (v41 >= 0.0166666667)
    {
      *&result = 0.0;
      v43 = 1;
    }

    else
    {
      *&result = COERCE_DOUBLE(_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA015AnimationReasonF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a4));
      if ((result & 0x100000000) != 0)
      {
        result = *(v8 + 104);
        v43 = *(v8 + 108);
      }

      else
      {
        v43 = 0;
      }
    }

    *(v8 + 104) = result;
    *(v8 + 108) = v43;
  }

  return result;
}

uint64_t specialized AnimatorState.combine(newAnimation:newInterval:at:in:environment:)(uint64_t a1, float64x2_t *a2, void *a3, uint64_t a4, double a5)
{
  v6 = v5;
  if (*(v5 + 189))
  {
    goto LABEL_2;
  }

  if (one-time initialization token for semantic != -1)
  {
    swift_once();
  }

  v40 = static Semantics_v3.semantic;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C == 1)
  {
    if ((dyld_program_sdk_at_least() & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  else if (static Semantics.forced < v40)
  {
LABEL_25:
    swift_beginAccess();
    *(v5 + 16) = a1;

    swift_beginAccess();
    v41 = a2[1];
    *(v5 + 32) = *a2;
    *(v5 + 48) = v41;
    v42 = a2[3];
    *(v5 + 64) = a2[2];
    *(v5 + 80) = v42;
    goto LABEL_8;
  }

LABEL_2:
  v11 = a5 - *(v5 + 96);
  swift_beginAccess();
  v12 = *(v5 + 24);
  v13 = *(v5 + 208);

  v43[0] = v12;
  v43[1] = AGCreateWeakAttribute();
  v44 = 0;
  v45 = v13;
  v14 = *(v5 + 216);
  if (v14)
  {
    v15 = *(v6 + 224);
    type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<Double, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>>>>>(0);
    v17 = v16;
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<AnimatablePair<Double, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>>>>>?, type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<Double, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>>>>>, MEMORY[0x1E69E6720]);
    *(&v51 + 1) = v18;
    *&v50 = v14;
    *(&v50 + 1) = v15;
    specialized Dictionary.subscript.setter(&v50, v17);
  }

  swift_beginAccess();
  v19 = *(v6 + 16);
  v20 = *(v6 + 24);
  swift_beginAccess();
  v21 = *(v6 + 48);
  v50 = *(v6 + 32);
  v51 = v21;
  v22 = *(v6 + 80);
  v52 = *(v6 + 64);
  v53 = v22;

  specialized AnimatorState.forkListeners(animation:state:interval:)(v19, v20, &v50);

  *(v6 + 208) = 0;
  v23 = *(v6 + 48);
  v46 = *(v6 + 32);
  v47 = v23;
  v24 = *(v6 + 80);
  v48 = *(v6 + 64);
  v49 = v24;
  v25 = *(*a1 + 136);
  type metadata accessor for AnimatablePair<Double, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>>>>(0);
  v27 = v26;
  lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<Double, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>>>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<Double, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>>>>, protocol conformance descriptor for AnimatablePair<A, B>);
  v29 = v28;

  LOBYTE(v27) = v25(v30, &v46, v43, v27, v29, v11);

  if (v27)
  {
    *(v6 + 24) = v43[0];

    *(v6 + 16) = a1;
  }

  else
  {

    v31 = *(v6 + 48);
    v46 = *(v6 + 32);
    v47 = v31;
    v32 = *(v6 + 80);
    v48 = *(v6 + 64);
    v49 = v32;
    swift_beginAccess();
    swift_beginAccess();
    specialized combineAnimation<A>(into:state:value:elapsed:newAnimation:newValue:)((v6 + 16), (v6 + 24), &v46, a1, a2, v11);
    swift_endAccess();
    swift_endAccess();
  }

  v33 = vaddq_f64(a2[1], *(v6 + 48));
  *(v6 + 32) = vaddq_f64(*a2, *(v6 + 32));
  *(v6 + 48) = v33;
  v34 = vaddq_f64(a2[3], *(v6 + 80));
  *(v6 + 64) = vaddq_f64(a2[2], *(v6 + 64));
  *(v6 + 80) = v34;
  *(v6 + 112) = a5;
LABEL_8:
  *&result = COERCE_DOUBLE(_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA022AnimationFrameIntervalF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a3));
  if ((v36 & 1) == 0)
  {
    v37 = 0.0;
    if (*&result > 0.0)
    {
      v38 = log2(*&result * 240.0);
      v37 = exp2(floor(v38 + 0.01)) * 0.00416666667;
    }

    if (v37 >= *(v6 + 104))
    {
      v37 = *(v6 + 104);
    }

    *(v6 + 104) = v37;
    if (v37 >= 0.0166666667)
    {
      *&result = 0.0;
      v39 = 1;
    }

    else
    {
      *&result = COERCE_DOUBLE(_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA015AnimationReasonF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a3));
      if ((result & 0x100000000) != 0)
      {
        result = *(v6 + 184);
        v39 = *(v6 + 188);
      }

      else
      {
        v39 = 0;
      }
    }

    *(v6 + 184) = result;
    *(v6 + 188) = v39;
  }

  return result;
}

{
  v6 = v5;
  v10 = a2[13];
  v95 = a2[12];
  v96 = v10;
  v11 = a2[15];
  v97 = a2[14];
  v98 = v11;
  v12 = a2[9];
  v91 = a2[8];
  v92 = v12;
  v13 = a2[11];
  v93 = a2[10];
  v94 = v13;
  v14 = a2[5];
  v87 = a2[4];
  v88 = v14;
  v15 = a2[7];
  v89 = a2[6];
  v90 = v15;
  v16 = a2[1];
  v83 = *a2;
  v84 = v16;
  v17 = a2[3];
  v85 = a2[2];
  v86 = v17;
  if (*(v5 + 573))
  {
    goto LABEL_2;
  }

  if (one-time initialization token for semantic != -1)
  {
    swift_once();
  }

  v70 = static Semantics_v3.semantic;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C == 1)
  {
    if ((dyld_program_sdk_at_least() & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  else if (static Semantics.forced < v70)
  {
LABEL_25:
    swift_beginAccess();
    *(v6 + 16) = a1;

    swift_beginAccess();
    v71 = a2[13];
    *(v6 + 224) = a2[12];
    *(v6 + 240) = v71;
    v72 = a2[15];
    *(v6 + 256) = a2[14];
    *(v6 + 272) = v72;
    v73 = a2[9];
    *(v6 + 160) = a2[8];
    *(v6 + 176) = v73;
    v74 = a2[11];
    *(v6 + 192) = a2[10];
    *(v6 + 208) = v74;
    v75 = a2[5];
    *(v6 + 96) = a2[4];
    *(v6 + 112) = v75;
    v76 = a2[7];
    *(v6 + 128) = a2[6];
    *(v6 + 144) = v76;
    v77 = a2[1];
    *(v6 + 32) = *a2;
    *(v6 + 48) = v77;
    v78 = a2[3];
    *(v6 + 64) = a2[2];
    *(v6 + 80) = v78;
    goto LABEL_8;
  }

LABEL_2:
  v18 = a5 - *(v6 + 288);
  swift_beginAccess();
  v19 = *(v6 + 24);
  v20 = *(v6 + 592);

  v80[0] = v19;
  v80[1] = AGCreateWeakAttribute();
  v81 = 0;
  v82 = v20;
  v21 = *(v6 + 600);
  if (v21)
  {
    v22 = *(v6 + 608);
    type metadata accessor for AnimationFinishingDefinitionKey<CGFloat>(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<ConcentricRectangle.AnimatableData>, lazy protocol witness table accessor for type ConcentricRectangle.AnimatableData and conformance ConcentricRectangle.AnimatableData, &type metadata for ConcentricRectangle.AnimatableData, type metadata accessor for AnimationFinishingDefinitionKey);
    v24 = v23;
    type metadata accessor for AnimationFinishingDefinitionKey<ShaderVectorData>?(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<ConcentricRectangle.AnimatableData>?, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<ConcentricRectangle.AnimatableData>, lazy protocol witness table accessor for type ConcentricRectangle.AnimatableData and conformance ConcentricRectangle.AnimatableData, &type metadata for ConcentricRectangle.AnimatableData);
    *(&v117 + 1) = v25;
    *&v116 = v21;
    *(&v116 + 1) = v22;
    specialized Dictionary.subscript.setter(&v116, v24);
  }

  swift_beginAccess();
  v26 = *(v6 + 16);
  v27 = *(v6 + 24);
  swift_beginAccess();
  v28 = *(v6 + 240);
  v128 = *(v6 + 224);
  v129 = v28;
  v29 = *(v6 + 272);
  v130 = *(v6 + 256);
  v131 = v29;
  v30 = *(v6 + 176);
  v124 = *(v6 + 160);
  v125 = v30;
  v31 = *(v6 + 208);
  v126 = *(v6 + 192);
  v127 = v31;
  v32 = *(v6 + 112);
  v120 = *(v6 + 96);
  v121 = v32;
  v33 = *(v6 + 144);
  v122 = *(v6 + 128);
  v123 = v33;
  v34 = *(v6 + 48);
  v116 = *(v6 + 32);
  v117 = v34;
  v35 = *(v6 + 80);
  v118 = *(v6 + 64);
  v119 = v35;

  specialized AnimatorState.forkListeners(animation:state:interval:)(v26, v27, &v116);

  *(v6 + 592) = 0;
  v36 = *(v6 + 240);
  v112 = *(v6 + 224);
  v113 = v36;
  v37 = *(v6 + 272);
  v114 = *(v6 + 256);
  v115 = v37;
  v38 = *(v6 + 176);
  v108 = *(v6 + 160);
  v109 = v38;
  v39 = *(v6 + 208);
  v110 = *(v6 + 192);
  v111 = v39;
  v40 = *(v6 + 112);
  v104 = *(v6 + 96);
  v105 = v40;
  v41 = *(v6 + 144);
  v106 = *(v6 + 128);
  v107 = v41;
  v42 = *(v6 + 48);
  v100 = *(v6 + 32);
  v101 = v42;
  v43 = *(v6 + 80);
  v102 = *(v6 + 64);
  v103 = v43;
  v44 = *(*a1 + 136);
  lazy protocol witness table accessor for type ConcentricRectangle.AnimatableData and conformance ConcentricRectangle.AnimatableData();
  v46 = v45;

  LOBYTE(v46) = v44(v47, &v100, v80, &type metadata for ConcentricRectangle.AnimatableData, v46, v18);

  if (v46)
  {
    *(v6 + 24) = v80[0];

    *(v6 + 16) = a1;
  }

  else
  {

    v48 = *(v6 + 240);
    v99[12] = *(v6 + 224);
    v99[13] = v48;
    v49 = *(v6 + 272);
    v99[14] = *(v6 + 256);
    v99[15] = v49;
    v50 = *(v6 + 176);
    v99[8] = *(v6 + 160);
    v99[9] = v50;
    v51 = *(v6 + 208);
    v99[10] = *(v6 + 192);
    v99[11] = v51;
    v52 = *(v6 + 112);
    v99[4] = *(v6 + 96);
    v99[5] = v52;
    v53 = *(v6 + 144);
    v99[6] = *(v6 + 128);
    v99[7] = v53;
    v54 = *(v6 + 48);
    v99[0] = *(v6 + 32);
    v99[1] = v54;
    v55 = *(v6 + 80);
    v99[2] = *(v6 + 64);
    v99[3] = v55;
    swift_beginAccess();
    swift_beginAccess();
    v112 = v95;
    v113 = v96;
    v114 = v97;
    v115 = v98;
    v108 = v91;
    v109 = v92;
    v110 = v93;
    v111 = v94;
    v104 = v87;
    v105 = v88;
    v106 = v89;
    v107 = v90;
    v100 = v83;
    v101 = v84;
    v102 = v85;
    v103 = v86;
    specialized combineAnimation<A>(into:state:value:elapsed:newAnimation:newValue:)((v6 + 16), (v6 + 24), v99, a1, v100.f64, v18);
    swift_endAccess();
    swift_endAccess();
  }

  v56 = *(v6 + 240);
  v79[12] = *(v6 + 224);
  v79[13] = v56;
  v57 = *(v6 + 272);
  v79[14] = *(v6 + 256);
  v79[15] = v57;
  v58 = *(v6 + 176);
  v79[8] = *(v6 + 160);
  v79[9] = v58;
  v59 = *(v6 + 208);
  v79[10] = *(v6 + 192);
  v79[11] = v59;
  v60 = *(v6 + 112);
  v79[4] = *(v6 + 96);
  v79[5] = v60;
  v61 = *(v6 + 144);
  v79[6] = *(v6 + 128);
  v79[7] = v61;
  v62 = *(v6 + 48);
  v79[0] = *(v6 + 32);
  v79[1] = v62;
  v63 = *(v6 + 80);
  v79[2] = *(v6 + 64);
  v79[3] = v63;
  static ConcentricRectangle.AnimatableData.+ infix(_:_:)(v79, &v83, (v6 + 32));
  *(v6 + 304) = a5;
LABEL_8:
  *&result = COERCE_DOUBLE(_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA022AnimationFrameIntervalF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a3));
  if ((v65 & 1) == 0)
  {
    v66 = 0.0;
    if (*&result > 0.0)
    {
      v67 = log2(*&result * 240.0);
      v66 = exp2(floor(v67 + 0.01)) * 0.00416666667;
    }

    if (v66 >= *(v6 + 296))
    {
      v66 = *(v6 + 296);
    }

    *(v6 + 296) = v66;
    if (v66 >= 0.0166666667)
    {
      *&result = 0.0;
      v68 = 1;
    }

    else
    {
      *&result = COERCE_DOUBLE(_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA015AnimationReasonF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a3));
      if ((result & 0x100000000) != 0)
      {
        result = *(v6 + 568);
        v68 = *(v6 + 572);
      }

      else
      {
        v68 = 0;
      }
    }

    *(v6 + 568) = result;
    *(v6 + 572) = v68;
  }

  return result;
}

{
  v6 = v5;
  if (*(v5 + 141))
  {
    goto LABEL_2;
  }

  if (one-time initialization token for semantic != -1)
  {
    swift_once();
  }

  v38 = static Semantics_v3.semantic;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C == 1)
  {
    if ((dyld_program_sdk_at_least() & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  else if (static Semantics.forced < v38)
  {
LABEL_25:
    swift_beginAccess();
    *(v5 + 16) = a1;

    swift_beginAccess();
    v39 = a2[1];
    *(v5 + 32) = *a2;
    *(v5 + 48) = v39;
    *(v5 + 64) = a2[2].f64[0];
    goto LABEL_8;
  }

LABEL_2:
  v11 = a5 - *(v5 + 72);
  swift_beginAccess();
  v12 = *(v5 + 24);
  v13 = *(v5 + 160);

  v40[0] = v12;
  v40[1] = AGCreateWeakAttribute();
  v41 = 0;
  v42 = v13;
  v14 = *(v5 + 168);
  if (v14)
  {
    v15 = *(v6 + 176);
    type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, CGFloat>>(0);
    v17 = v16;
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, CGFloat>>?, type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, CGFloat>>, MEMORY[0x1E69E6720]);
    *(&v47 + 1) = v18;
    *&v46 = v14;
    *(&v46 + 1) = v15;
    specialized Dictionary.subscript.setter(&v46, v17);
  }

  swift_beginAccess();
  v19 = *(v6 + 16);
  v20 = *(v6 + 24);
  swift_beginAccess();
  v21 = *(v6 + 48);
  v46 = *(v6 + 32);
  v47 = v21;
  v48 = *(v6 + 64);

  specialized AnimatorState.forkListeners(animation:state:interval:)(v19, v20, &v46);

  *(v6 + 160) = 0;
  v22 = *(v6 + 64);
  v23 = *(v6 + 48);
  v43 = *(v6 + 32);
  v44 = v23;
  v45 = v22;
  v24 = *(*a1 + 136);
  type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, CGFloat>(0);
  v26 = v25;
  lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, CGFloat> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, CGFloat>, protocol conformance descriptor for AnimatablePair<A, B>);
  v28 = v27;

  LOBYTE(v26) = v24(v29, &v43, v40, v26, v28, v11);

  if (v26)
  {
    *(v6 + 24) = v40[0];

    *(v6 + 16) = a1;
  }

  else
  {

    v30 = *(v6 + 48);
    v43 = *(v6 + 32);
    v44 = v30;
    v45 = *(v6 + 64);
    swift_beginAccess();
    swift_beginAccess();
    specialized combineAnimation<A>(into:state:value:elapsed:newAnimation:newValue:)((v6 + 16), (v6 + 24), &v43, a1, a2->f64, v11);
    swift_endAccess();
    swift_endAccess();
  }

  v31 = a2[2].f64[0];
  v32 = vaddq_f64(a2[1], *(v6 + 48));
  *(v6 + 32) = vaddq_f64(*a2, *(v6 + 32));
  *(v6 + 48) = v32;
  *(v6 + 64) = v31 + *(v6 + 64);
  *(v6 + 88) = a5;
LABEL_8:
  *&result = COERCE_DOUBLE(_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA022AnimationFrameIntervalF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a3));
  if ((v34 & 1) == 0)
  {
    v35 = 0.0;
    if (*&result > 0.0)
    {
      v36 = log2(*&result * 240.0);
      v35 = exp2(floor(v36 + 0.01)) * 0.00416666667;
    }

    if (v35 >= *(v6 + 80))
    {
      v35 = *(v6 + 80);
    }

    *(v6 + 80) = v35;
    if (v35 >= 0.0166666667)
    {
      *&result = 0.0;
      v37 = 1;
    }

    else
    {
      *&result = COERCE_DOUBLE(_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA015AnimationReasonF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a3));
      if ((result & 0x100000000) != 0)
      {
        result = *(v6 + 136);
        v37 = *(v6 + 140);
      }

      else
      {
        v37 = 0;
      }
    }

    *(v6 + 136) = result;
    *(v6 + 140) = v37;
  }

  return result;
}