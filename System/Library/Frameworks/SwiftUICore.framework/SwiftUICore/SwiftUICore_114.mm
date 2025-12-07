double ShaderVectorData.magnitudeSquared.getter()
{
  v1 = *(*v0 + 16);
  if (v1)
  {
    v2 = 0;
    result = 0.0;
    while (1)
    {
      v6 = *v0 + 32 + 24 * v2;
      v7 = *v6;
      v8 = *(v6 + 8);
      v9 = *(v6 + 16);
      if (v9 > 2)
      {
        if (v9 == 3)
        {
          v12 = (*&v8 * *&v8) + ((*&v7 * *&v7) + (*(&v7 + 1) * *(&v7 + 1)));
          v13 = *(&v8 + 1) * *(&v8 + 1);
LABEL_17:
          v4 = v13 + v12;
          goto LABEL_4;
        }

        v5 = 0.0;
        if (v9 != 4)
        {
          goto LABEL_5;
        }

        v10 = v7[1].u64[0];
        if (!v10)
        {
          goto LABEL_5;
        }

        if (v10 > 7)
        {
          v11 = v10 & 0x7FFFFFFFFFFFFFF8;
          v14 = v7 + 3;
          v4 = 0.0;
          v15 = v10 & 0x7FFFFFFFFFFFFFF8;
          do
          {
            v16 = vmulq_f32(v14[-1], v14[-1]);
            v17 = vmulq_f32(*v14, *v14);
            v4 = (((((((v4 + v16.f32[0]) + v16.f32[1]) + v16.f32[2]) + v16.f32[3]) + v17.f32[0]) + v17.f32[1]) + v17.f32[2]) + v17.f32[3];
            v14 += 2;
            v15 -= 8;
          }

          while (v15);
          if (v10 == v11)
          {
            goto LABEL_4;
          }
        }

        else
        {
          v11 = 0;
          v4 = 0.0;
        }

        v18 = v10 - v11;
        v19 = &v7[2].f32[v11];
        do
        {
          v20 = *v19++;
          v4 = v4 + (v20 * v20);
          --v18;
        }

        while (v18);
      }

      else if (v9)
      {
        if (v9 != 1)
        {
          v12 = (*&v7 * *&v7) + (*(&v7 + 1) * *(&v7 + 1));
          v13 = *&v8 * *&v8;
          goto LABEL_17;
        }

        v4 = (*&v7 * *&v7) + (*(&v7 + 1) * *(&v7 + 1));
      }

      else
      {
        v4 = *&v7 * *&v7;
      }

LABEL_4:
      v5 = v4;
LABEL_5:
      ++v2;
      result = result + v5;
      if (v2 == v1)
      {
        return result;
      }
    }
  }

  return 0.0;
}

id static ShaderLibrary.bundle(_:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = [objc_opt_self() defaultLibraryWithBundle_];
  *a2 = result;
  return result;
}

void ShaderLibrary.init(data:)(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  isa = Data._bridgeToObjectiveC()().super.isa;
  v7 = [objc_opt_self() libraryWithData_];

  outlined consume of Data._Representation(a1, a2);
  *a3 = v7;
}

uint64_t ShaderLibrary.init(url:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4, v6);
  URL._bridgeToObjectiveC()(v9);
  v11 = v10;
  v12 = [objc_opt_self() libraryWithContentsOfURL_];

  v13 = *(v5 + 8);
  v13(a1, v4);
  result = (v13)(v8, v4);
  *a2 = v12;
  return result;
}

double static ShaderLibrary.subscript.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (one-time initialization token for default != -1)
  {
    v7 = a1;
    v8 = a3;
    swift_once();
    a1 = v7;
    a3 = v8;
  }

  v4 = static ShaderLibrary.default;
  *a3 = static ShaderLibrary.default;
  a3[1] = a1;
  a3[2] = a2;
  v5 = v4;

  return result;
}

void *ShaderFunction.init(library:name:)@<X0>(void *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = *result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

id ShaderLibrary.rbShaderLibrary.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

id one-time initialization function for default(uint64_t a1, SEL *a2, void *a3)
{
  result = [objc_opt_self() *a2];
  *a3 = result;
  return result;
}

id ShaderFunction.library.getter@<X0>(void **a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  return v2;
}

void ShaderFunction.library.setter(void **a1)
{
  v2 = *a1;

  *v1 = v2;
}

uint64_t ShaderFunction.name.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

void ShaderFunction.name.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
}

__n128 Shader.init(function:arguments:)@<Q0>(__n128 *a1@<X0>, unint64_t a2@<X1>, __n128 *a3@<X8>)
{
  result = *a1;
  v4 = a1[1].n128_u64[0];
  a3[2].n128_u32[0] = 0;
  *a3 = result;
  a3[1].n128_u64[0] = v4;
  a3[1].n128_u64[1] = a2;
  return result;
}

uint64_t static ShaderFunction.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (a1[1] == a2[1] && a1[2] == a2[2])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance ShaderFunction(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (a1[1] == a2[1] && a1[2] == a2[2])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

void static Shader.Argument._float(_:)(uint64_t a1@<X8>, unsigned int a2@<S0>)
{
  *a1 = a2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 20) = 0;
}

void static Shader.Argument._float2(_:_:)(uint64_t a1@<X8>, unsigned int a2@<S0>, unsigned int a3@<S1>)
{
  *a1 = a2 | (a3 << 32);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 20) = 1;
}

void static Shader.Argument._float3(_:_:_:)(uint64_t a1@<X8>, unsigned int a2@<S0>, unsigned int a3@<S1>, unsigned int a4@<S2>)
{
  *a1 = a2 | (a3 << 32);
  *(a1 + 8) = a4;
  *(a1 + 16) = 0;
  *(a1 + 20) = 2;
}

int8x16_t static Shader.Argument._float4(_:_:_:_:)@<Q0>(int8x16_t *a1@<X8>, unsigned int a2@<S0>, int32x2_t a3@<D1>, unsigned int a4@<S2>, __int32 a5@<S3>)
{
  a1[1].i32[0] = 0;
  a3.i32[1] = a5;
  v5.i64[0] = a2;
  v5.i64[1] = a4;
  result = vorrq_s8(vshll_n_s32(a3, 0x20uLL), v5);
  *a1 = result;
  a1[1].i8[4] = 3;
  return result;
}

double static Shader.Argument.floatArray(_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = a1;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 20) = 4;

  return result;
}

void static Shader.Argument.boundingRect.getter(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 20) = 10;
}

double static Shader.Argument.color(_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = a1;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 20) = 5;

  return result;
}

double static Shader.Argument.colorArray(_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = a1;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 20) = 6;

  return result;
}

double static Shader.Argument.image(_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = a1;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 20) = 8;

  return result;
}

double static Shader.Argument.data(_:)@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = a1;
  *(a3 + 8) = a2;
  *(a3 + 16) = 0;
  *(a3 + 20) = 9;
  return outlined copy of Data._Representation(a1, a2);
}

double Shader.function.getter@<D0>(void *a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  *a1 = *v1;
  a1[1] = v3;
  a1[2] = v4;
  v5 = v2;

  return result;
}

__n128 Shader.function.setter(__n128 *a1)
{
  v5 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = *v1;

  result = v5;
  *v1 = v5;
  *(v1 + 16) = v2;
  return result;
}

uint64_t (*Shader.dithersColor.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v2 = *(v1 + 32);
  *(a1 + 8) = v2;
  *(a1 + 12) = v2 & 1;
  return Shader.dithersColor.modify;
}

uint64_t Shader.alphaOnlyLayer.setter(uint64_t result)
{
  if (result)
  {
    v2 = 8;
  }

  else
  {
    v2 = 0;
  }

  *(v1 + 32) = *(v1 + 32) & 0xFFFFFFF7 | v2;
  return result;
}

uint64_t (*Shader.alphaOnlyLayer.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v2 = *(v1 + 32);
  *(a1 + 8) = v2;
  *(a1 + 12) = (v2 & 8) != 0;
  return Shader.alphaOnlyLayer.modify;
}

uint64_t Shader.alphaOnlyLayer.modify(uint64_t result)
{
  if (*(result + 12))
  {
    v1 = 8;
  }

  else
  {
    v1 = 0;
  }

  *(*result + 32) = v1 | *(result + 8) & 0xFFFFFFF7;
  return result;
}

uint64_t Shader.ignoresSecondaryDOD.setter(uint64_t result)
{
  if (result)
  {
    v2 = 16;
  }

  else
  {
    v2 = 0;
  }

  *(v1 + 32) = *(v1 + 32) & 0xFFFFFFEF | v2;
  return result;
}

uint64_t (*Shader.ignoresSecondaryDOD.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v2 = *(v1 + 32);
  *(a1 + 8) = v2;
  *(a1 + 12) = (v2 & 0x10) != 0;
  return Shader.ignoresSecondaryDOD.modify;
}

uint64_t Shader.ignoresSecondaryDOD.modify(uint64_t result)
{
  if (*(result + 12))
  {
    v1 = 16;
  }

  else
  {
    v1 = 0;
  }

  *(*result + 32) = v1 | *(result + 8) & 0xFFFFFFEF;
  return result;
}

id Shader.ResolvedShader.rbShader.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

uint64_t Shader.ResolvedShader.init(rbShader:maxSampleOffset:options:)@<X0>(uint64_t result@<X0>, int *a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v5 = *a2;
  *a3 = result;
  *(a3 + 8) = a4;
  *(a3 + 16) = a5;
  *(a3 + 24) = v5;
  return result;
}

void closure #1 in closure #3 in Shader.makeRBShader(in:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8)
{
  if (a2)
  {
    if (a2 < 0)
    {
      __break(1u);
      goto LABEL_8;
    }

    v13 = (a1 + 8);
    v14 = a2;
    do
    {
      v15 = *a3++;
      v26[0] = a5;
      v26[1] = a6;
      v16 = *(*v15 + 112);

      v17 = v16(v26);
      v19 = v18;
      v21 = v20;
      v23 = v22;

      *(v13 - 2) = v17;
      *(v13 - 1) = v19;
      *v13 = v21;
      *(v13 + 1) = v23;
      v13 += 4;
      --v14;
    }

    while (v14);
  }

  if (a1)
  {
    [a7 setArgumentBytes:a1 atIndex:a8 type:5 count:a2 flags:3];
    [a7 setArgumentColorSpace:2 atIndex:a8];
    return;
  }

LABEL_8:
  __break(1u);
}

uint64_t Shader.compile(as:)(int *a1)
{
  v3 = *a1;
  v4 = *(v1 + 16);
  *(v2 + 16) = *v1;
  *(v2 + 32) = v4;
  *(v2 + 48) = *(v1 + 32);
  *(v2 + 52) = v3;
  return MEMORY[0x1EEE6DFA0](Shader.compile(as:), 0, 0);
}

uint64_t Shader.compile(as:)()
{
  v1 = [objc_opt_self() sharedDefaultDevice];
  *(v0 + 56) = v1;
  if (v1)
  {
    v2 = *(v0 + 52);
    v3 = swift_task_alloc();
    *(v0 + 64) = v3;
    *(v3 + 16) = v0 + 16;
    *(v3 + 24) = v2;
    *(v3 + 32) = v1;
    v4 = swift_task_alloc();
    *(v0 + 72) = v4;
    *v4 = v0;
    v4[1] = Shader.compile(as:);

    return MEMORY[0x1EEE6DE38]();
  }

  else
  {
    v5 = *(v0 + 8);

    return v5();
  }
}

{

  v1 = *(v0 + 8);

  return v1();
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t Shader.compile(as:)(__n128 a1)
{
  *(*v2 + 80) = v1;

  if (v1)
  {
    v3 = Shader.compile(as:);
  }

  else
  {

    v3 = Shader.compile(as:);
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

void closure #1 in Shader.compile(as:)(uint64_t a1, __int128 *a2, uint64_t a3, void *a4)
{
  type metadata accessor for CheckedContinuation<(), Error>(0);
  v9 = v8;
  v10 = *(v8 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = a2[1];
  aBlock = *a2;
  v19 = v12;
  LODWORD(v20) = *(a2 + 8);
  v22 = xmmword_18DD85500;
  v13 = Shader.makeRBShader(in:)(&v22);
  [v13 setType_];
  type metadata accessor for CAMediaTimingFunction(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  v14 = static OS_dispatch_queue.main.getter();
  (*(v10 + 16))(&aBlock - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v9);
  v15 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v16 = swift_allocObject();
  (*(v10 + 32))(v16 + v15, &aBlock - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
  v20 = partial apply for closure #1 in closure #1 in Shader.compile(as:);
  v21 = v16;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v19 = thunk for @escaping @callee_guaranteed (@guaranteed Error?) -> ();
  *(&v19 + 1) = &block_descriptor_14;
  v17 = _Block_copy(&aBlock);

  [a4 compileShader:v13 completionQueue:v14 handler:v17];
  _Block_release(v17);
}

uint64_t closure #1 in closure #1 in Shader.compile(as:)(void *a1)
{
  if (a1)
  {
    v1 = a1;
    type metadata accessor for CheckedContinuation<(), Error>(0);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    type metadata accessor for CheckedContinuation<(), Error>(0);
    return CheckedContinuation.resume(returning:)();
  }
}

void thunk for @escaping @callee_guaranteed (@guaranteed Error?) -> ()(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

Swift::Int Shader.UsageType.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

id Shader.rbShader(in:)(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = v1[1];
  v5 = *(v1 + 8);
  v10 = *v1;
  v11 = v4;
  v12 = *(v1 + 1);
  v13 = v5;
  v8 = v3;
  v9 = v2;

  v6 = Shader.makeRBShader(in:)(&v8);
  outlined consume of EnvironmentValues?(v8, v9);
  return v6;
}

void View.colorEffect(_:isEnabled:)(uint64_t a1, char a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32) | 2;
  *&v9 = *a1;
  *(&v9 + 1) = v3;
  v10 = v4;
  v11 = v5;
  v12 = v6;
  v7 = v9;
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  v8 = v7;
  View.layerEffect(_:maxSampleOffset:isEnabled:)(&v9, a2, 0.0, 0.0);
  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();
}

void View.distortionEffect(_:maxSampleOffset:isEnabled:)(uint64_t a1, char a2, double a3, double a4)
{
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
  v10 = *(a1 + 32) | 4;
  *&v13 = *a1;
  *(&v13 + 1) = v7;
  v14 = v8;
  v15 = v9;
  v16 = v10;
  v11 = v13;
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  v12 = v11;
  View.layerEffect(_:maxSampleOffset:isEnabled:)(&v13, a2, a3, a4);
  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();
}

double _ShaderFilterEffect.shader.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  v7 = v2;

  return result;
}

__n128 _ShaderFilterEffect.shader.setter(__n128 *a1)
{
  v3 = a1->n128_u64[0];
  v4 = a1->n128_u64[1];
  v5 = a1[2].n128_u32[0];
  v6 = *v1;

  *v1 = v3;
  *(v1 + 8) = v4;
  result = a1[1];
  *(v1 + 16) = result;
  *(v1 + 32) = v5;
  return result;
}

void _ShaderFilterEffect.ResolvedEffect.updateValue()()
{
  v1 = v0;
  v30 = *MEMORY[0x1E69E9840];
  Value = AGGraphGetValue();
  v4 = v3;
  v6 = Value[1];
  v5 = Value[2];
  v7 = *Value;
  *&v23[9] = *(Value + 41);
  v22 = v6;
  *v23 = v5;
  v21 = v7;
  v8 = v3 & 1;
  memmove(__dst, Value, 0x39uLL);
  __dst[57] = v8;
  if (v4)
  {
    outlined init with copy of _ShaderFilterEffect(&v21, &v27);
  }

  else
  {
    outlined init with copy of _ShaderFilterEffect(&v21, &v27);
    AGGraphGetValue();

    v10 = PropertyList.Tracker.hasDifferentUsedValues(_:)(v9);

    if ((v10 & 1) == 0)
    {
      outlined destroy of _ShaderFilterEffect(&v21);
      return;
    }
  }

  v11 = *(v1 + 8);
  PropertyList.Tracker.reset()();
  outlined init with copy of (value: _ShaderFilterEffect, changed: Bool)(__dst, &v27);
  v12 = *AGGraphGetValue();
  if (v12)
  {
    v13 = *(v12 + 64);
  }

  else
  {
    v13 = 0;
  }

  v14 = v21;
  v20 = v22;
  v15 = *v23;
  v16 = *(v11 + 16);
  swift_retain_n();

  os_unfair_lock_lock((v16 + 16));
  *(v16 + 24) = v13;
  os_unfair_lock_unlock((v16 + 16));

  if (v23[24] == 1)
  {
    v18 = *&v23[16];
    v17 = *&v23[8];
    v27 = v14;
    v28 = v20;
    v29 = v15;
    v25 = v12;
    v26 = v11;
    v19 = Shader.makeRBShader(in:)(&v25);
    outlined consume of EnvironmentValues?(v25, v26);
    outlined destroy of _ShaderFilterEffect(&v21);
  }

  else
  {
    outlined destroy of _ShaderFilterEffect(&v21);

    v19 = 0;
    v15 = 0;
    v17 = 0;
    v18 = 0;
  }

  *&v27 = v19;
  *(&v27 + 1) = v17;
  *&v28 = v18;
  DWORD2(v28) = v15;
  AGGraphSetOutputValue();
  outlined destroy of _ShaderFilterEffect(&v21);
}

void Shader.ResolvedShader.encode(to:)(__int128 *a1)
{
  v3 = v1;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  if (*v3)
  {
    v8 = *v3;
    ProtobufEncoder.encodeVarint(_:)(0xAuLL);
    v9 = *(a1 + 1);
    v10 = *(a1 + 3);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 2) + 1, 1, v10);
    }

    v12 = *(v10 + 2);
    v11 = *(v10 + 3);
    v13 = v12 + 1;
    if (v12 >= v11 >> 1)
    {
      v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1, v10);
    }

    *(v10 + 2) = v13;
    *&v10[8 * v12 + 32] = v9;
    *(a1 + 3) = v10;
    v14 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
LABEL_21:
      v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 2) + 1, 1, v8);
      goto LABEL_13;
    }

    v27 = v7;
    *(a1 + 1) = v14;
    v15 = *a1;
    v16 = *(a1 + 2);
    v17 = *(a1 + 4);
    v18 = type metadata accessor for RBDisplayListEncoderDelegate();
    v19 = objc_allocWithZone(v18);
    v20 = &v19[OBJC_IVAR____TtC7SwiftUI28RBDisplayListEncoderDelegate_encoder];
    *v20 = v15;
    *(v20 + 1) = v14;
    *(v20 + 2) = v16;
    *(v20 + 3) = v10;
    *(v20 + 4) = v17;
    v26.receiver = v19;
    v26.super_class = v18;

    v21 = objc_msgSendSuper2(&v26, sel_init);
    v22 = v8;
    v23 = v21;
    specialized ProtobufEncoder.encodeAttachedValue<A>(key:data:)(v22, a1, v22, v23);
    if (v2)
    {

      return;
    }

    ProtobufEncoder.endLengthDelimited()();
    v7 = v27;
  }

  if (v5 == 0.0 && v6 == 0.0)
  {
    goto LABEL_17;
  }

  ProtobufEncoder.encodeVarint(_:)(0x12uLL);
  v13 = *(a1 + 1);
  v8 = *(a1 + 3);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_13:
  v25 = *(v8 + 2);
  v24 = *(v8 + 3);
  if (v25 >= v24 >> 1)
  {
    v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v24 > 1), v25 + 1, 1, v8);
  }

  *(v8 + 2) = v25 + 1;
  *&v8[8 * v25 + 32] = v13;
  *(a1 + 3) = v8;
  if (__OFADD__(v13, 1))
  {
    __break(1u);
    return;
  }

  *(a1 + 1) = v13 + 1;
  CGSize.encode(to:)(a1, v5, v6);
  ProtobufEncoder.endLengthDelimited()();
LABEL_17:
  if (v7)
  {
    ProtobufEncoder.encodeVarint(_:)(0x18uLL);
    ProtobufEncoder.encodeVarint(_:)(v7);
  }
}

void *closure #1 in closure #1 in Shader.ResolvedShader.encode(to:)(void *a1, uint64_t a2)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  v2 = [a1 encodedDataForDelegate:a2 error:v6];
  v3 = v6[0];
  if (v2)
  {
    v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v4 = v3;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v4;
}

void Shader.ResolvedShader.init(from:)(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v6 = *(a1 + 1);
  v7 = *(a1 + 2);
  if (v6 >= v7)
  {
LABEL_65:
    v8 = 0;
    v61 = 0;
    v10 = 0;
    v11 = 0;
LABEL_66:
    *(a1 + 3) = 0;
    *a2 = v8;
    *(a2 + 8) = v10;
    *(a2 + 16) = v11;
    *(a2 + 24) = v61;
    return;
  }

  v8 = 0;
  v61 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  while (1)
  {
    v12 = *(a1 + 3);
    if (v12)
    {
      v13 = *(a1 + 4);
      if (v6 < v13)
      {
        goto LABEL_11;
      }

      if (v13 < v6)
      {
        goto LABEL_67;
      }

      *(a1 + 3) = 0;
    }

    v12 = ProtobufDecoder.decodeVarint()(v12);
    if (v2)
    {
      goto LABEL_74;
    }

    if (v12 <= 7)
    {
      goto LABEL_67;
    }

LABEL_11:
    v14 = v12 >> 3;
    if (v12 >> 3 != 3)
    {
      break;
    }

    if ((v12 & 7) != 0)
    {
      if ((v12 & 7) != 2)
      {
        goto LABEL_67;
      }

      v12 = ProtobufDecoder.decodeVarint()(v12);
      if (v2)
      {
        goto LABEL_74;
      }

      if ((v12 & 0x8000000000000000) != 0)
      {
        goto LABEL_80;
      }

      v44 = *(a1 + 1) + v12;
      if (v7 < v44)
      {
LABEL_67:
        lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
        swift_allocError();
        swift_willThrow();
        goto LABEL_74;
      }

      *(a1 + 3) = 24;
      *(a1 + 4) = v44;
    }

    v45 = ProtobufDecoder.decodeVarint()(v12);
    if (v2)
    {
      goto LABEL_74;
    }

    v61 = v45;
LABEL_4:
    v6 = *(a1 + 1);
    if (v6 >= v7)
    {
      goto LABEL_66;
    }
  }

  if (v14 == 2)
  {
    if ((v12 & 7) != 2)
    {
      goto LABEL_67;
    }

    v3 = *(a1 + 5);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v3 + 2) + 1, 1, v3);
      v3 = isUniquelyReferenced_nonNull_native;
    }

    v37 = *(v3 + 2);
    v36 = *(v3 + 3);
    if (v37 >= v36 >> 1)
    {
      isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v36 > 1), v37 + 1, 1, v3);
      v3 = isUniquelyReferenced_nonNull_native;
    }

    *(v3 + 2) = v37 + 1;
    *&v3[8 * v37 + 32] = v7;
    *(a1 + 5) = v3;
    v38 = ProtobufDecoder.decodeVarint()(isUniquelyReferenced_nonNull_native);
    if (v2)
    {
      goto LABEL_74;
    }

    if (v38 < 0)
    {
      goto LABEL_76;
    }

    v39 = *(a1 + 1) + v38;
    if (v7 < v39)
    {
      goto LABEL_67;
    }

    *(a1 + 2) = v39;
    specialized CGPoint.init(from:)(a1);
    v3 = *(a1 + 5);
    if (!*(v3 + 2))
    {
      goto LABEL_77;
    }

    v10 = v40;
    v11 = v41;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v42 = *(v3 + 2);
      if (!v42)
      {
        goto LABEL_79;
      }
    }

    else
    {
      v3 = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
      v42 = *(v3 + 2);
      if (!v42)
      {
        goto LABEL_79;
      }
    }

    v43 = v42 - 1;
    v7 = *&v3[8 * v43 + 32];
    *(v3 + 2) = v43;
    *(a1 + 5) = v3;
    *(a1 + 2) = v7;
    goto LABEL_4;
  }

  if (v14 != 1)
  {
    v46 = v12 & 7;
    if (v46 > 1)
    {
      if (v46 == 2)
      {
        v48 = ProtobufDecoder.decodeVarint()(v12);
        if (v2)
        {
          goto LABEL_74;
        }

        if (v48 < 0)
        {
          goto LABEL_81;
        }

        v47 = *(a1 + 1) + v48;
        if (v7 < v47)
        {
          goto LABEL_67;
        }
      }

      else
      {
        if (v46 != 5)
        {
          goto LABEL_67;
        }

        v47 = *(a1 + 1) + 4;
        if (v7 < v47)
        {
          goto LABEL_67;
        }
      }
    }

    else
    {
      if ((v12 & 7) == 0)
      {
        ProtobufDecoder.decodeVarint()(v12);
        if (v2)
        {
          goto LABEL_74;
        }

        goto LABEL_4;
      }

      if (v46 != 1)
      {
        goto LABEL_67;
      }

      v47 = *(a1 + 1) + 8;
      if (v7 < v47)
      {
        goto LABEL_67;
      }
    }

    *(a1 + 1) = v47;
    goto LABEL_4;
  }

  v15 = v9;
  v16 = a2;
  v57 = v8;
  v17 = *(a1 + 2);
  v18 = *(a1 + 3);
  v19 = *(a1 + 4);
  v20 = *(a1 + 5);
  v21 = *(a1 + 6);
  v59 = v12;
  v22 = type metadata accessor for RBDisplayListDecoderDelegate();
  v58 = *a1;
  v23 = objc_allocWithZone(v22);
  v24 = &v23[OBJC_IVAR____TtC7SwiftUI28RBDisplayListDecoderDelegate_decoder];
  *v24 = v58;
  *(v24 + 2) = v17;
  *(v24 + 3) = v18;
  *(v24 + 4) = v19;
  *(v24 + 5) = v20;
  *(v24 + 6) = v21;
  v60.receiver = v23;
  v60.super_class = v22;
  v25 = v58;

  v3 = objc_msgSendSuper2(&v60, sel_init);
  if ((v59 & 7) != 2)
  {
    lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
    swift_allocError();
    swift_willThrow();
LABEL_70:

    v8 = v57;
LABEL_74:

    return;
  }

  v26 = swift_isUniquelyReferenced_nonNull_native();
  if ((v26 & 1) == 0)
  {
    v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v20 + 16) + 1, 1, v20);
    v20 = v26;
  }

  a2 = v16;
  v8 = *(v20 + 16);
  v27 = *(v20 + 24);
  if (v8 >= v27 >> 1)
  {
    v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v27 > 1), v8 + 1, 1, v20);
    v20 = v26;
  }

  *(v20 + 16) = v8 + 1;
  *(v20 + 8 * v8 + 32) = v17;
  *(a1 + 5) = v20;
  v28 = ProtobufDecoder.decodeVarint()(v26);
  if (v2)
  {
    goto LABEL_70;
  }

  if ((v28 & 0x8000000000000000) == 0)
  {
    v29 = *(a1 + 1) + v28;
    v8 = v57;
    if (v17 < v29)
    {
      lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
      swift_allocError();
      swift_willThrow();

      goto LABEL_74;
    }

    *(a1 + 2) = v29;
    v3 = v3;
    _s7SwiftUI15ProtobufDecoderV19decodeAttachedValue2as9generatorxxm_x10Foundation4DataVKXEtKlFSo8RBShaderC_Tt0g503_s7a36UI6ShaderV08ResolvedC0VAAE4fromAeA15cd11Vz_tKcfcSo8l25CAHzKXEfU_AJ10Foundation4K7VKXEfU_AA013RBDisplayListD8DelegateCTf1cn_n(a1, v3);
    v31 = *(a1 + 5);
    if (!*(v31 + 2))
    {
      goto LABEL_78;
    }

    v32 = v30;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v33 = *(v31 + 2);
      if (!v33)
      {
        goto LABEL_64;
      }
    }

    else
    {
      v31 = specialized _ArrayBuffer._consumeAndCreateNew()(v31);
      v33 = *(v31 + 2);
      if (!v33)
      {
LABEL_64:
        __break(1u);
        goto LABEL_65;
      }
    }

    v34 = v33 - 1;
    v7 = *&v31[8 * v34 + 32];
    *(v31 + 2) = v34;

    *(a1 + 5) = v31;
    *(a1 + 2) = v7;
    v8 = v32;
    v9 = v32;
    goto LABEL_4;
  }

  __break(1u);
LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
LABEL_78:
  __break(1u);
LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  __break(1u);
  __break(1u);
  __break(1u);
  v53 = specialized _ArrayBuffer._consumeAndCreateNew()(a2);
  v54 = *(v53 + 2);
  if (v54)
  {
    v49 = v54 - 1;
    v50 = *&v53[8 * v49 + 32];
    *(v53 + 2) = v49;

    *(a1 + 5) = v53;
    *(a1 + 2) = v50;
    goto LABEL_74;
  }

  __break(1u);
  v55 = specialized _ArrayBuffer._consumeAndCreateNew()(v53);
  v56 = *(v55 + 2);
  if (v56)
  {
    v51 = v56 - 1;
    v52 = *&v55[8 * v51 + 32];
    *(v55 + 2) = v51;
    *(a1 + 5) = v55;
    *(a1 + 2) = v52;
    goto LABEL_74;
  }

  __break(1u);
}

id closure #1 in closure #1 in Shader.ResolvedShader.init(from:)@<X0>(uint64_t a1@<X2>, void *a2@<X8>)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v4 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  v10[0] = 0;
  v6 = [v4 decodedObjectWithData:isa delegate:a1 error:v10];

  v7 = v10[0];
  if (v6)
  {
    *a2 = v6;
    return v7;
  }

  else
  {
    v9 = v10[0];
    _convertNSErrorToError(_:)();

    return swift_willThrow();
  }
}

uint64_t Shader.ResolvedShader.draw(path:style:in:bounds:)(double *a1, __int128 *a2, uint64_t a3, __int128 *a4)
{
  v7 = *(a2 + 4);
  v8 = *(a2 + 40);
  v9 = *v4;
  v10 = *(v4 + 8);
  v11 = *(v4 + 24);
  v29 = a2[1];
  v30 = *a2;
  if ((a4[2] & 1) == 0)
  {
    v12 = *a4;
    v14 = a4[1];
    goto LABEL_6;
  }

  v12 = *a1;
  v13 = *(a1 + 32);
  if (v13 <= 2)
  {
    v14 = *(a1 + 1);
    if (v13 >= 2)
    {
      v12 = *(v12 + 16);
      v14 = *(*a1 + 32);
    }

    goto LABEL_6;
  }

  if (v13 != 5)
  {
    if (v13 != 6)
    {
      goto LABEL_19;
    }

    v12 = *MEMORY[0x1E695F050];
    v14 = *(MEMORY[0x1E695F050] + 16);
LABEL_6:
    *v45 = v9;
    *&v45[8] = v10;
    *&v45[24] = v11;
    v46 = v12;
    v47 = v14;
    _s7SwiftUI15GraphicsContextV15ResolvedShadingOWOi2_(v45);
    v42 = v52;
    v43 = v53;
    v44 = v54;
    v38 = v48;
    v39 = v49;
    v40 = v50;
    v41 = v51;
    v34 = *v45;
    v35 = *&v45[16];
    v36 = v46;
    v37 = v47;
    v31[0] = v30;
    v31[1] = v29;
    v32 = v7;
    v33 = v8;
    v15 = v9;
    GraphicsContext.draw(_:with:style:)(a1, &v34, v31, a3);
    v55[8] = v42;
    v55[9] = v43;
    v56 = v44;
    v55[4] = v38;
    v55[5] = v39;
    v55[6] = v40;
    v55[7] = v41;
    v55[0] = v34;
    v55[1] = v35;
    v55[2] = v36;
    v55[3] = v37;
    return outlined destroy of GraphicsContext.ResolvedShading(v55);
  }

  v17 = *a1;
  v28 = *(v4 + 8);
  if (*(v12 + 16))
  {
    if (*(v12 + 16) == 1)
    {

      RBPathGetBoundingRect();
    }

    else
    {

      v18 = MEMORY[0x193AC3640](v17 + 24);
    }

    width = v20;
    x = v18;
    y = v19;
    height = v21;
    goto LABEL_17;
  }

  v22 = *(v12 + 24);
  if (v22)
  {
    v23 = v22;

    PathBoundingBox = CGPathGetPathBoundingBox(v23);
    width = PathBoundingBox.size.width;
    x = PathBoundingBox.origin.x;
    y = PathBoundingBox.origin.y;
    height = PathBoundingBox.size.height;

LABEL_17:
    outlined destroy of Path(a1);
    *&v14 = width;
    *&v12 = x;
    *(&v12 + 1) = y;
    *(&v14 + 1) = height;
    v10 = v28;
    goto LABEL_6;
  }

  __break(1u);
LABEL_19:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t protocol witness for ResolvedPaint.draw(path:style:in:bounds:) in conformance Shader.ResolvedShader(double *a1, __int128 *a2, uint64_t a3, uint64_t *a4)
{
  v19 = a2[1];
  v20 = *a2;
  v7 = *(a2 + 4);
  v8 = *(a2 + 40);
  v9 = *v4;
  v10 = *(v4 + 8);
  v11 = *(v4 + 24);
  if (a4[4])
  {
    v18 = *(v4 + 8);
    Path.boundingRect.getter();
    v10 = v18;
  }

  else
  {
    v12 = *a4;
    v13 = a4[1];
    v14 = a4[2];
    v15 = a4[3];
  }

  *v35 = v9;
  *&v35[8] = v10;
  *&v35[24] = v11;
  *&v36 = v12;
  *(&v36 + 1) = v13;
  *&v37 = v14;
  *(&v37 + 1) = v15;
  _s7SwiftUI15GraphicsContextV15ResolvedShadingOWOi2_(v35);
  v32 = v42;
  v33 = v43;
  v34 = v44;
  v28 = v38;
  v29 = v39;
  v30 = v40;
  v31 = v41;
  v24 = *v35;
  v25 = *&v35[16];
  v26 = v36;
  v27 = v37;
  v21[0] = v20;
  v21[1] = v19;
  v22 = v7;
  v23 = v8;
  v16 = v9;
  GraphicsContext.draw(_:with:style:)(a1, &v24, v21, a3);
  v45[8] = v32;
  v45[9] = v33;
  v46 = v34;
  v45[4] = v28;
  v45[5] = v29;
  v45[6] = v30;
  v45[7] = v31;
  v45[0] = v24;
  v45[1] = v25;
  v45[2] = v26;
  v45[3] = v27;
  return outlined destroy of GraphicsContext.ResolvedShading(v45);
}

void Shader.ResolvedShader.animatableData.setter(uint64_t *a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = ShaderVectorData.updating(rbShader:)(*v1);

  *v2 = v4;
}

void ShaderVectorData.init(rbShader:)(void *a1@<X0>, char **a2@<X8>)
{
  if (!a1)
  {
    v7 = MEMORY[0x1E69E7CC0];
LABEL_40:
    *a2 = v7;
    return;
  }

  v4 = [a1 numberOfArguments];
  if ((v4 & 0x8000000000000000) != 0)
  {
    goto LABEL_43;
  }

  v5 = v4;
  v23 = a2;
  if (!v4)
  {
    v7 = MEMORY[0x1E69E7CC0];
LABEL_39:

    a2 = v23;
    goto LABEL_40;
  }

  v6 = 0;
  v7 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    [a1 argumentAtIndex_];
    v10 = v25;
    v9 = v26;
    if (v25 != 1)
    {
      break;
    }

    v11 = 0;
    v12 = 5;
    if (v24 > 3)
    {
      v13 = 0;
      if ((v24 - 4) < 2)
      {
        v11 = *v26;
        v13 = *(v26 + 1);
        v12 = 3;
      }
    }

    else if (v24 == 1)
    {
      v13 = 0;
      v12 = 0;
      v11 = *v26;
    }

    else if (v24 == 2)
    {
      v13 = 0;
      v11 = *v26;
      v12 = 1;
    }

    else
    {
      v13 = 0;
      if (v24 == 3)
      {
        v11 = *v26;
        v13 = v26[2];
        v12 = 2;
      }
    }

LABEL_33:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v7 + 2) + 1, 1, v7);
    }

    v22 = *(v7 + 2);
    v21 = *(v7 + 3);
    if (v22 >= v21 >> 1)
    {
      v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v22 + 1, 1, v7);
    }

    *(v7 + 2) = v22 + 1;
    v8 = &v7[24 * v22];
    *(v8 + 4) = v11;
    *(v8 + 5) = v13;
    v8[48] = v12;
LABEL_6:
    if (++v6 == v5)
    {
      goto LABEL_39;
    }
  }

  if (v24 != 1)
  {
    if (v24 != 5)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v7 + 2) + 1, 1, v7);
      }

      v19 = *(v7 + 2);
      v18 = *(v7 + 3);
      if (v19 >= v18 >> 1)
      {
        v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1, v7);
      }

      *(v7 + 2) = v19 + 1;
      v20 = &v7[24 * v19];
      *(v20 + 4) = 0;
      *(v20 + 5) = 0;
      v20[48] = 5;
      goto LABEL_6;
    }

    if ((v25 - 0x2000000000000000) >> 62 != 3)
    {
      goto LABEL_42;
    }

    v10 = 4 * v25;
  }

  v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v10 & ~(v10 >> 63), 0, MEMORY[0x1E69E7CC0]);
  if ((v10 & 0x8000000000000000) == 0)
  {
    v11 = v14;
    if (v10)
    {
      v15 = *(v14 + 2);
      do
      {
        v16 = *v9;
        v17 = *(v11 + 3);
        if (v15 >= v17 >> 1)
        {
          v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v15 + 1, 1, v11);
        }

        *(v11 + 2) = v15 + 1;
        *&v11[4 * v15 + 32] = v16;
        ++v9;
        ++v15;
        --v10;
      }

      while (v10);
    }

    v13 = 0;
    v12 = 4;
    goto LABEL_33;
  }

  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
}

void *ShaderVectorData.updating(rbShader:)(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 0;
  }

  v2 = *v1;
  v3 = a1;
  [v3 copy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  type metadata accessor for CAMediaTimingFunction(0, &lazy cache variable for type metadata for RBShader, 0x1E69C70F0);
  swift_dynamicCast();
  v4 = v15;
  v5 = *(v2 + 16);
  if (v5)
  {
    v6 = 0;
    v7 = (v2 + 48);
    do
    {
      if (v6 >= *(v2 + 16))
      {
        __break(1u);
      }

      v9 = *(v7 - 2);
      v8 = *(v7 - 1);
      v10 = *v7;
      [v3 argumentAtIndex_];
      if (v16 > 2)
      {
        if (v16 == 3)
        {
          if (v10 != 2)
          {
            goto LABEL_23;
          }

          v16 = v9;
          LODWORD(v17) = v8;
          [v15 setArgumentBytes:&v16 atIndex:v6 type:3 count:1 flags:?];
        }

        else
        {
          if (v16 != 5)
          {
            goto LABEL_23;
          }

          if (v10 == 4)
          {
            [v15 setArgumentBytes:v9 + 32 atIndex:v6 type:5 count:*(v9 + 16) >> 2 flags:HIDWORD(v16)];
            goto LABEL_29;
          }

          if (v10 != 3)
          {
            goto LABEL_23;
          }

          v16 = v9;
          v17 = v8;
          [v15 setArgumentBytes:&v16 atIndex:v6 type:5 count:1 flags:?];
        }
      }

      else
      {
        if (v16 == 1)
        {
          switch(v10)
          {
            case 4:
              [v15 setArgumentBytes:v9 + 32 atIndex:v6 type:1 count:*(v9 + 16) flags:HIDWORD(v16)];
LABEL_29:
              v11 = v9;
              v12 = v8;
              v13 = 4;
              break;
            case 3:
              v16 = v9;
              v17 = v8;
              goto LABEL_27;
            case 0:
              LODWORD(v16) = v9;
LABEL_27:
              [v15 setArgumentBytes:&v16 atIndex:v6 type:1 count:1 flags:?];
              goto LABEL_5;
            default:
LABEL_23:
              v11 = v9;
              v12 = v8;
              v13 = v10;
              break;
          }

          outlined consume of ShaderVectorData.Element(v11, v12, v13);
          goto LABEL_5;
        }

        if (v16 != 2 || v10 != 1)
        {
          goto LABEL_23;
        }

        v16 = v9;
        [v15 setArgumentBytes:&v16 atIndex:v6 type:2 count:1 flags:?];
      }

LABEL_5:
      ++v6;
      v7 += 24;
    }

    while (v5 != v6);
  }

  return v4;
}

void (*Shader.ResolvedShader.animatableData.modify(uint64_t a1))(uint64_t *a1, char a2)
{
  v3 = *v1;
  *(a1 + 8) = v1;
  *(a1 + 16) = v3;
  v4 = v3;
  ShaderVectorData.init(rbShader:)(v3, a1);
  return Shader.ResolvedShader.animatableData.modify;
}

void Shader.ResolvedShader.animatableData.modify(uint64_t *a1, char a2)
{
  v3 = a1[1];
  v2 = a1[2];
  if (a2)
  {

    v4 = ShaderVectorData.updating(rbShader:)(v2);

    *v3 = v4;
  }

  else
  {
    v5 = ShaderVectorData.updating(rbShader:)(v2);

    *v3 = v5;
  }
}

void protocol witness for Animatable.animatableData.getter in conformance Shader.ResolvedShader(char **a1@<X8>)
{
  v3 = *v1;
  v4 = v3;

  ShaderVectorData.init(rbShader:)(v3, a1);
}

void protocol witness for Animatable.animatableData.setter in conformance Shader.ResolvedShader(uint64_t *a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = ShaderVectorData.updating(rbShader:)(*v1);

  *v2 = v4;
}

void (*protocol witness for Animatable.animatableData.modify in conformance Shader.ResolvedShader(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = Shader.ResolvedShader.animatableData.modify(v2);
  return protocol witness for Animatable.animatableData.modify in conformance LinearGradient._Paint;
}

id Shader.ResolvedShader.effectValue(size:)@<X0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  v15 = *v3;
  v7 = *(v3 + 8);
  v8 = *(v3 + 16);
  v9 = *(v3 + 24);
  v10 = swift_allocObject();
  *&v16 = v15;
  *(&v16 + 1) = v7;
  *&v17 = v8;
  DWORD2(v17) = v9;
  *&v18 = a2;
  *(&v18 + 1) = a3;
  _s7SwiftUI14GraphicsFilterOWOi17_(&v16);
  v11 = v21;
  v10[5] = v20;
  v10[6] = v11;
  v10[7] = v22[0];
  *(v10 + 124) = *(v22 + 12);
  v12 = v17;
  v10[1] = v16;
  v10[2] = v12;
  v13 = v19;
  v10[3] = v18;
  v10[4] = v13;
  *a1 = v10;
  *(a1 + 8) = 0;
  *(a1 + 12) = 10;

  return v15;
}

id protocol witness for _RendererEffect.effectValue(size:) in conformance Shader.ResolvedShader@<X0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  v15 = *v3;
  v7 = *(v3 + 8);
  v8 = *(v3 + 16);
  v9 = *(v3 + 24);
  v10 = swift_allocObject();
  *&v16 = v15;
  *(&v16 + 1) = v7;
  *&v17 = v8;
  DWORD2(v17) = v9;
  *&v18 = a2;
  *(&v18 + 1) = a3;
  _s7SwiftUI14GraphicsFilterOWOi17_(&v16);
  v11 = v21;
  v10[5] = v20;
  v10[6] = v11;
  v10[7] = v22[0];
  *(v10 + 124) = *(v22 + 12);
  v12 = v17;
  v10[1] = v16;
  v10[2] = v12;
  v13 = v19;
  v10[3] = v18;
  v10[4] = v13;
  *a1 = v10;
  *(a1 + 8) = 0;
  *(a1 + 12) = 10;

  return v15;
}

uint64_t static ShaderVectorData.- infix(_:_:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t (*a3)(void *, uint64_t *, __n128)@<X2>, void *a4@<X8>)
{
  v6 = *a2;
  *a4 = *a1;
  v8 = v6;

  return (a3)(a4, &v8);
}

Swift::Void __swiftcall ShaderVectorData.Element.scale(by:)(Swift::Double by)
{
  v2 = *v1;
  v3 = v1[1].u8[0];
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v17 = by;
      v18 = vmul_n_f32(vmovn_s64(v2), v17);
      v19.i64[0] = v18.u32[0];
      v19.i64[1] = v18.u32[1];
      v5 = vorrq_s8(vshll_n_s32(vmul_n_f32(vshrn_n_s64(v2, 0x20uLL), v17), 0x20uLL), v19);
    }

    else
    {
      if (v3 != 4)
      {
        return;
      }

      v6 = v1->i64[0];
      v7 = *(v2.i64[0] + 16);
      if (v7)
      {
        v21 = *v1;
        v22 = MEMORY[0x1E69E7CC0];
        v8 = v1;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7, 0);
        v10 = by;
        v11 = v22;
        v12 = (v6 + 32);
        v13 = *(v22 + 16);
        do
        {
          v14 = *v12;
          v15 = *(v22 + 24);
          if (v13 >= v15 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v13 + 1, 1);
            v1 = v8;
          }

          *(v22 + 16) = v13 + 1;
          *(v22 + 4 * v13 + 32) = v14 * v10;
          ++v12;
          ++v13;
          --v7;
        }

        while (v7);
        outlined consume of ShaderVectorData.Element(v6, v21.i64[1], 4);
      }

      else
      {
        outlined consume of ShaderVectorData.Element(v2.i64[0], v2.i64[1], 4);
        v11 = MEMORY[0x1E69E7CC0];
      }

      v5 = v11;
    }
  }

  else if (v1[1].i8[0])
  {
    v4 = by;
    if (v3 == 1)
    {
      v5 = COERCE_UNSIGNED_INT(v4 * *v2.i32) | (COERCE_UNSIGNED_INT(v4 * *&v2.i32[1]) << 32);
    }

    else
    {
      v20 = COERCE_UNSIGNED_INT(vmuls_lane_f32(v4, v2, 2));
      *&v5 = COERCE_UNSIGNED_INT(v4 * *v2.i32) | (COERCE_UNSIGNED_INT(v4 * *&v2.i32[1]) << 32);
      *(&v5 + 1) = v20;
    }
  }

  else
  {
    v16 = by;
    DWORD1(v5) = 0;
    *(&v5 + 1) = 0;
    *&v5 = v16 * *v2.i32;
  }

  *v1 = v5;
  v1[1].i8[0] = v3;
}

double ShaderVectorData.Element.magnitudeSquared.getter(float32x4_t *a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 > 2u)
  {
    if (a3 == 3)
    {
      return ((*(&a2 + 1) * *(&a2 + 1)) + ((*&a2 * *&a2) + ((*&a1 * *&a1) + (*(&a1 + 1) * *(&a1 + 1)))));
    }

    else
    {
      result = 0.0;
      if (a3 != 4)
      {
        return result;
      }

      v8 = a1[1].u64[0];
      if (!v8)
      {
        return result;
      }

      if (v8 > 7)
      {
        v9 = v8 & 0x7FFFFFFFFFFFFFF8;
        v11 = a1 + 3;
        v10 = 0.0;
        v12 = v8 & 0x7FFFFFFFFFFFFFF8;
        do
        {
          v13 = vmulq_f32(v11[-1], v11[-1]);
          v14 = vmulq_f32(*v11, *v11);
          v10 = (((((((v10 + v13.f32[0]) + v13.f32[1]) + v13.f32[2]) + v13.f32[3]) + v14.f32[0]) + v14.f32[1]) + v14.f32[2]) + v14.f32[3];
          v11 += 2;
          v12 -= 8;
        }

        while (v12);
        if (v8 == v9)
        {
          return v10;
        }
      }

      else
      {
        v9 = 0;
        v10 = 0.0;
      }

      v15 = v8 - v9;
      v16 = &a1[2].f32[v9];
      do
      {
        v17 = *v16++;
        v10 = v10 + (v17 * v17);
        --v15;
      }

      while (v15);
    }

    return v10;
  }

  v3 = *&a1;
  v4 = (v3 * v3);
  v5 = *(&a1 + 1);
  v6 = ((v3 * v3) + (v5 * v5));
  result = ((*&a2 * *&a2) + ((v3 * v3) + (v5 * v5)));
  if (a3 == 1)
  {
    result = v6;
  }

  if (!a3)
  {
    return v4;
  }

  return result;
}

uint64_t protocol witness for static AdditiveArithmetic.+ infix(_:_:) in conformance ShaderVectorData@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t (*a3)(void *, uint64_t *, __n128)@<X4>, void *a4@<X8>)
{
  v6 = *a2;
  *a4 = *a1;
  v8 = v6;

  return (a3)(a4, &v8);
}

void protocol witness for static AdditiveArithmetic.zero.getter in conformance ShaderVectorData.Element(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 5;
}

double protocol witness for static AdditiveArithmetic.+ infix(_:_:) in conformance ShaderVectorData.Element@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, void (*a3)(__int128 *, uint64_t, uint64_t, uint64_t, double)@<X4>, uint64_t a4@<X8>)
{
  v6 = *(a1 + 8);
  v7 = *a2;
  v8 = a2[1];
  v9 = *(a1 + 16);
  v10 = *(a2 + 16);
  *&v14 = *a1;
  *(&v14 + 1) = v6;
  v15 = v9;
  v11 = outlined copy of ShaderVectorData.Element(v14, v6, v9);
  a3(&v14, v7, v8, v10, v11);
  v12 = v15;
  result = *&v14;
  *a4 = v14;
  *(a4 + 16) = v12;
  return result;
}

BOOL specialized static Shader.ResolvedShader.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *a2;
  v8 = *(a2 + 8);
  v7 = *(a2 + 16);
  v9 = *(a2 + 24);
  if (!*a1)
  {
    if (v6)
    {
      v15 = 0;
    }

    else
    {
      v15 = v4 == v8;
    }

    if (v15 && v3 == v7)
    {
      return v5 == v9;
    }

    return 0;
  }

  if (!v6)
  {
    return 0;
  }

  type metadata accessor for CAMediaTimingFunction(0, &lazy cache variable for type metadata for RBShader, 0x1E69C70F0);
  v10 = v6;
  v11 = v2;
  v12 = static NSObject.== infix(_:_:)();

  result = 0;
  if ((v12 & 1) != 0 && v4 == v8 && v3 == v7)
  {
    return v5 == v9;
  }

  return result;
}

uint64_t specialized static ShaderVectorData.Element.== infix(_:_:)(uint64_t result, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3 > 2u)
  {
    if (a3 != 3)
    {
      if (a3 == 4)
      {
        if (a6 != 4)
        {
          return 0;
        }

        v6 = *(result + 16);
        if (v6 != *(a4 + 16))
        {
          return 0;
        }

        if (v6 && result != a4)
        {
          v7 = (result + 32);
          v8 = (a4 + 32);
          while (v6)
          {
            v9 = *v7++;
            v10 = v9;
            v11 = *v8++;
            result = v10 == v11;
            if (v10 != v11 || v6-- == 1)
            {
              return result;
            }
          }

          __break(1u);
          return result;
        }
      }

      else if (a6 != 5 || a5 | a4)
      {
        return 0;
      }

      return 1;
    }

    if (a6 != 3)
    {
      return 0;
    }

    v13 = *(&a2 + 1) == *(&a5 + 1);
    if (*&a2 != *&a5)
    {
      v13 = 0;
    }

    if (*(&result + 1) != *(&a4 + 1))
    {
      v13 = 0;
    }

    return *&result == *&a4 && v13;
  }

  else
  {
    if (!a3)
    {
      if (!a6)
      {
        return *&result == *&a4;
      }

      return 0;
    }

    if (a3 == 1)
    {
      if (a6 == 1)
      {
        return *&result == *&a4 && *(&result + 1) == *(&a4 + 1);
      }

      return 0;
    }

    if (a6 != 2)
    {
      return 0;
    }

    v14 = *&a2 == *&a5;
    if (*(&result + 1) != *(&a4 + 1))
    {
      v14 = 0;
    }

    return *&result == *&a4 && v14;
  }
}

double specialized static ShaderVectorData.Element.+= infix(_:_:)(int64x2_t *a1, float32x4_t *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v7 = *a1;
  v8 = a1[1].u8[0];
  if (v8 <= 2)
  {
    if (a1[1].i8[0])
    {
      if (v8 == 1)
      {
        if (a4 == 1)
        {
          LODWORD(v9) = HIDWORD(a1->i64[0]);
          v10 = COERCE_FLOAT(*a1);
          outlined consume of ShaderVectorData.Element(v7.i64[0], v7.i64[1], 1);
          *v12.i64 = outlined consume of ShaderVectorData.Element(a2, a3, 1);
          *v12.i32 = *&a2 + v10;
          a1->i64[0] = COERCE_UNSIGNED_INT(*&a2 + v10) | (COERCE_UNSIGNED_INT(*(&a2 + 1) + v9) << 32);
          a1->i64[1] = 0;
          a1[1].i8[0] = 1;
          return *v12.i64;
        }

        v55 = *a1;
        outlined copy of ShaderVectorData.Element(a2, a3, a4);
        v23 = v55.i64[1];
        v22 = v55.i64[0];
        v24 = 1;
      }

      else
      {
        if (a4 == 2)
        {
          v31 = COERCE_FLOAT(a1->i64[1]);
          LODWORD(v32) = HIDWORD(a1->i64[0]);
          v33 = COERCE_FLOAT(*a1);
          outlined consume of ShaderVectorData.Element(v7.i64[0], v7.i64[1], 2);
          *v12.i64 = outlined consume of ShaderVectorData.Element(a2, a3, 2);
          *v12.i32 = *&a2 + v33;
          a1->i64[0] = COERCE_UNSIGNED_INT(*&a2 + v33) | (COERCE_UNSIGNED_INT(*(&a2 + 1) + v32) << 32);
          a1->i64[1] = COERCE_UNSIGNED_INT(*&a3 + v31);
          a1[1].i8[0] = 2;
          return *v12.i64;
        }

        v57 = *a1;
        outlined copy of ShaderVectorData.Element(a2, a3, a4);
        v23 = v57.i64[1];
        v22 = v57.i64[0];
        v24 = 2;
      }
    }

    else
    {
      if (!a4)
      {
        v38 = COERCE_FLOAT(*a1);
        outlined consume of ShaderVectorData.Element(v7.i64[0], v7.i64[1], 0);
        *v12.i64 = outlined consume of ShaderVectorData.Element(a2, a3, 0);
        *v12.i32 = *&a2 + v38;
        a1->i64[0] = COERCE_UNSIGNED_INT(*&a2 + v38);
        a1->i64[1] = 0;
        a1[1].i8[0] = 0;
        return *v12.i64;
      }

      v52 = *a1;
      outlined copy of ShaderVectorData.Element(a2, a3, a4);
      v23 = v52.i64[1];
      v22 = v52.i64[0];
      v24 = 0;
    }

    goto LABEL_28;
  }

  if (v8 == 3)
  {
    v53 = *a1;
    if (a4 == 3)
    {
      v25 = vmovn_s64(v7);
      v26.i64[0] = a2;
      v26.i64[1] = a3;
      v51 = v26;
      v27 = vmovn_s64(v26);
      outlined consume of ShaderVectorData.Element(v7.i64[0], v7.i64[1], 3);
      outlined consume of ShaderVectorData.Element(a2, a3, 3);
      v29 = vadd_f32(v27, v25);
      v30.i64[0] = v29.u32[0];
      v30.i64[1] = v29.u32[1];
      v12 = vorrq_s8(vshll_n_s32(vadd_f32(vshrn_n_s64(v51, 0x20uLL), vshrn_n_s64(v53, 0x20uLL)), 0x20uLL), v30);
      *a1 = v12;
      a1[1].i8[0] = 3;
      return *v12.i64;
    }

    outlined copy of ShaderVectorData.Element(a2, a3, a4);
    v23 = v53.i64[1];
    v22 = v53.i64[0];
    v24 = 3;
    goto LABEL_28;
  }

  if (v8 != 4)
  {
    v54 = *a1;
    outlined copy of ShaderVectorData.Element(a2, a3, a4);
    v23 = v54.i64[1];
    v22 = v54.i64[0];
    v24 = 5;
LABEL_28:
    outlined consume of ShaderVectorData.Element(v22, v23, v24);
    v35 = a2;
    v36 = a3;
    v37 = v4;
LABEL_29:

    *v12.i64 = outlined consume of ShaderVectorData.Element(v35, v36, v37);
    return *v12.i64;
  }

  v13 = a1->i64[0];
  if (a4 != 4)
  {
    v56 = *a1;
    outlined copy of ShaderVectorData.Element(a2, a3, a4);
    outlined copy of ShaderVectorData.Element(v13, v56.i64[1], 4);
    v22 = v13;
    v23 = v56.i64[1];
    v24 = 4;
    goto LABEL_28;
  }

  v14 = *(v7.i64[0] + 16);
  v15 = a1->i64[1];
  if (v14 != a2[1].i64[0])
  {
    outlined copy of ShaderVectorData.Element(a2, a3, 4);
    outlined copy of ShaderVectorData.Element(v13, v15, 4);
    outlined consume of ShaderVectorData.Element(v13, v15, 4);
    v35 = a2;
    v36 = a3;
    v37 = 4;
    goto LABEL_29;
  }

  outlined copy of ShaderVectorData.Element(v7.i64[0], v7.i64[1], 4);
  outlined copy of ShaderVectorData.Element(a2, a3, 4);
  outlined copy of ShaderVectorData.Element(v13, v15, 4);
  if (v14)
  {
    v16 = v13;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_52;
    }

    while (1)
    {
      v17 = a2 + 2;
      v18 = *(v16 + 2);
      v19 = v14 - 1;
      if (v18 >= v14 - 1)
      {
        v20 = v14 - 1;
      }

      else
      {
        v20 = *(v16 + 2);
      }

      if (v20 >= 8)
      {
        if (v18 < v19)
        {
          v19 = *(v16 + 2);
        }

        v40 = 4 * v19 + 36;
        if (v16 + 32 >= a2 + v40 || v17 >= &v16[v40])
        {
          v42 = v20 + 1;
          v43 = v42 & 7;
          if ((v42 & 7) == 0)
          {
            v43 = 8;
          }

          v21 = v42 - v43;
          v44 = a2 + 3;
          v45 = (v16 + 48);
          v46 = v21;
          do
          {
            v47 = vaddq_f32(*v44, *v45);
            v45[-1] = vaddq_f32(v44[-1], v45[-1]);
            *v45 = v47;
            v44 += 2;
            v45 += 2;
            v46 -= 8;
          }

          while (v46);
        }

        else
        {
          v21 = 0;
        }
      }

      else
      {
        v21 = 0;
      }

      while (v21 < v18)
      {
        v48 = 4 * v21;
        v49 = v17->f32[v21++];
        *&v16[v48 + 32] = v49 + *&v16[v48 + 32];
        if (v14 == v21)
        {
          goto LABEL_48;
        }
      }

      __break(1u);
LABEL_52:
      v16 = specialized _ArrayBuffer._consumeAndCreateNew()(v13);
    }
  }

LABEL_48:
  outlined consume of ShaderVectorData.Element(v13, v15, 4);
  outlined consume of ShaderVectorData.Element(a2, a3, 4);

  return *v12.i64;
}

void specialized static ShaderVectorData.+= infix(_:_:)(char **a1, char **a2)
{
  v3 = *a2;
  v4 = *a1;
  v5 = *(*a1 + 2);
  if (v5 == *(*a2 + 2))
  {
    if (v5)
    {
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v8 = *&v3[v6 + 32];
        v9 = *&v3[v6 + 40];
        v10 = v3[v6 + 48];
        outlined copy of ShaderVectorData.Element(v8, v9, v3[v6 + 48]);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v4 = specialized _ArrayBuffer._consumeAndCreateNew()(v4);
        }

        if (v7 >= *(v4 + 2))
        {
          break;
        }

        ++v7;
        specialized static ShaderVectorData.Element.+= infix(_:_:)(&v4[v6 + 32], v8, v9, v10);
        outlined consume of ShaderVectorData.Element(v8, v9, v10);
        v6 += 24;
        if (v5 == v7)
        {
          *a1 = v4;
          return;
        }
      }

      __break(1u);
    }
  }

  else if (!v5)
  {

    *a1 = v3;
  }
}

double specialized static ShaderVectorData.Element.-= infix(_:_:)(int64x2_t *a1, float32x4_t *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v8 = *a1;
  v9 = a1[1].u8[0];
  if (v9 <= 2)
  {
    if (a1[1].i8[0])
    {
      if (v9 == 1)
      {
        if (a4 == 1)
        {
          LODWORD(v10) = HIDWORD(a1->i64[0]);
          v11 = COERCE_FLOAT(*a1);
          outlined consume of ShaderVectorData.Element(v8.i64[0], v8.i64[1], 1);
          *v12.i64 = outlined consume of ShaderVectorData.Element(a2, a3, 1);
          *v12.i32 = v11 - *&a2;
          a1->i64[0] = COERCE_UNSIGNED_INT(v11 - *&a2) | (COERCE_UNSIGNED_INT(v10 - *(&a2 + 1)) << 32);
          a1->i64[1] = 0;
          a1[1].i8[0] = 1;
          return *v12.i64;
        }

        v52 = *a1;
        outlined copy of ShaderVectorData.Element(a2, a3, a4);
        v23 = v52.i64[1];
        v22 = v52.i64[0];
        v24 = 1;
      }

      else
      {
        if (a4 == 2)
        {
          v30 = COERCE_FLOAT(a1->i64[1]);
          LODWORD(v31) = HIDWORD(a1->i64[0]);
          v32 = COERCE_FLOAT(*a1);
          outlined consume of ShaderVectorData.Element(v8.i64[0], v8.i64[1], 2);
          *v12.i64 = outlined consume of ShaderVectorData.Element(a2, a3, 2);
          *v12.i32 = v32 - *&a2;
          a1->i64[0] = COERCE_UNSIGNED_INT(v32 - *&a2) | (COERCE_UNSIGNED_INT(v31 - *(&a2 + 1)) << 32);
          a1->i64[1] = COERCE_UNSIGNED_INT(v30 - *&a3);
          a1[1].i8[0] = 2;
          return *v12.i64;
        }

        v54 = *a1;
        outlined copy of ShaderVectorData.Element(a2, a3, a4);
        v23 = v54.i64[1];
        v22 = v54.i64[0];
        v24 = 2;
      }
    }

    else
    {
      if (!a4)
      {
        v36 = COERCE_FLOAT(*a1);
        outlined consume of ShaderVectorData.Element(v8.i64[0], v8.i64[1], 0);
        *v12.i64 = outlined consume of ShaderVectorData.Element(a2, a3, 0);
        *v12.i32 = v36 - *&a2;
        a1->i64[0] = COERCE_UNSIGNED_INT(v36 - *&a2);
        a1->i64[1] = 0;
        a1[1].i8[0] = 0;
        return *v12.i64;
      }

      v49 = *a1;
      outlined copy of ShaderVectorData.Element(a2, a3, a4);
      v23 = v49.i64[1];
      v22 = v49.i64[0];
      v24 = 0;
    }

    goto LABEL_28;
  }

  if (v9 == 3)
  {
    v50 = *a1;
    if (a4 == 3)
    {
      v25 = vmovn_s64(v8);
      v26.i64[0] = a2;
      v26.i64[1] = a3;
      v48 = v26;
      v27 = vmovn_s64(v26);
      outlined consume of ShaderVectorData.Element(v8.i64[0], v8.i64[1], 3);
      outlined consume of ShaderVectorData.Element(a2, a3, 3);
      v28 = vsub_f32(v25, v27);
      v29.i64[0] = v28.u32[0];
      v29.i64[1] = v28.u32[1];
      v12 = vorrq_s8(vshll_n_s32(vsub_f32(vshrn_n_s64(v50, 0x20uLL), vshrn_n_s64(v48, 0x20uLL)), 0x20uLL), v29);
      *a1 = v12;
      a1[1].i8[0] = 3;
      return *v12.i64;
    }

    outlined copy of ShaderVectorData.Element(a2, a3, a4);
    v23 = v50.i64[1];
    v22 = v50.i64[0];
    v24 = 3;
    goto LABEL_28;
  }

  if (v9 != 4)
  {
    a1->i64[0] = a2;
    a1->i64[1] = a3;
    a1[1].i8[0] = a4;
    v51 = v8;
    outlined copy of ShaderVectorData.Element(a2, a3, a4);
    outlined copy of ShaderVectorData.Element(a2, a3, v4);
    ShaderVectorData.Element.scale(by:)(-1.0);
    v23 = v51.i64[1];
    v22 = v51.i64[0];
    v24 = 5;
LABEL_28:
    outlined consume of ShaderVectorData.Element(v22, v23, v24);
    v33 = a2;
    v34 = a3;
    v35 = v4;
LABEL_29:

    *v12.i64 = outlined consume of ShaderVectorData.Element(v33, v34, v35);
    return *v12.i64;
  }

  v13 = a1->i64[0];
  if (a4 != 4)
  {
    v53 = *a1;
    outlined copy of ShaderVectorData.Element(a2, a3, a4);
    outlined copy of ShaderVectorData.Element(v13, v53.i64[1], 4);
    v22 = v13;
    v23 = v53.i64[1];
    v24 = 4;
    goto LABEL_28;
  }

  v14 = *(v8.i64[0] + 16);
  v15 = a1->i64[1];
  if (v14 != a2[1].i64[0])
  {
    outlined copy of ShaderVectorData.Element(a2, a3, 4);
    outlined copy of ShaderVectorData.Element(v13, v15, 4);
    outlined consume of ShaderVectorData.Element(v13, v15, 4);
    v33 = a2;
    v34 = a3;
    v35 = 4;
    goto LABEL_29;
  }

  outlined copy of ShaderVectorData.Element(v8.i64[0], v8.i64[1], 4);
  outlined copy of ShaderVectorData.Element(a2, a3, 4);
  outlined copy of ShaderVectorData.Element(v13, v15, 4);
  if (v14)
  {
    v16 = v13;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_52;
    }

    while (1)
    {
      v17 = a2 + 2;
      v18 = *(v16 + 2);
      v19 = v14 - 1;
      if (v18 >= v14 - 1)
      {
        v20 = v14 - 1;
      }

      else
      {
        v20 = *(v16 + 2);
      }

      if (v20 >= 8)
      {
        if (v18 < v19)
        {
          v19 = *(v16 + 2);
        }

        v37 = 4 * v19 + 36;
        if (v16 + 32 >= a2 + v37 || v17 >= &v16[v37])
        {
          v39 = v20 + 1;
          v40 = v39 & 7;
          if ((v39 & 7) == 0)
          {
            v40 = 8;
          }

          v21 = v39 - v40;
          v41 = a2 + 3;
          v42 = (v16 + 48);
          v43 = v21;
          do
          {
            v44 = vsubq_f32(*v42, *v41);
            v42[-1] = vsubq_f32(v42[-1], v41[-1]);
            *v42 = v44;
            v41 += 2;
            v42 += 2;
            v43 -= 8;
          }

          while (v43);
        }

        else
        {
          v21 = 0;
        }
      }

      else
      {
        v21 = 0;
      }

      while (v21 < v18)
      {
        v45 = 4 * v21;
        v46 = v17->f32[v21++];
        *&v16[v45 + 32] = *&v16[v45 + 32] - v46;
        if (v14 == v21)
        {
          goto LABEL_48;
        }
      }

      __break(1u);
LABEL_52:
      v16 = specialized _ArrayBuffer._consumeAndCreateNew()(v13);
    }
  }

LABEL_48:
  outlined consume of ShaderVectorData.Element(v13, v15, 4);
  outlined consume of ShaderVectorData.Element(a2, a3, 4);

  return *v12.i64;
}

void specialized static ShaderVectorData.-= infix(_:_:)(char **a1, char **a2)
{
  v3 = *a2;
  v4 = *a1;
  v5 = *(*a1 + 2);
  if (v5 == *(*a2 + 2))
  {
    if (v5)
    {
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v8 = *&v3[v6 + 32];
        v9 = *&v3[v6 + 40];
        v10 = v3[v6 + 48];
        outlined copy of ShaderVectorData.Element(v8, v9, v3[v6 + 48]);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v4 = specialized _ArrayBuffer._consumeAndCreateNew()(v4);
        }

        if (v7 >= *(v4 + 2))
        {
          break;
        }

        ++v7;
        specialized static ShaderVectorData.Element.-= infix(_:_:)(&v4[v6 + 32], v8, v9, v10);
        outlined consume of ShaderVectorData.Element(v8, v9, v10);
        v6 += 24;
        if (v5 == v7)
        {
          *a1 = v4;
          return;
        }
      }

      __break(1u);
    }
  }

  else if (!v5)
  {

    *a1 = v3;

    ShaderVectorData.scale(by:)(-1.0);
  }
}

double outlined consume of ShaderVectorData.Element(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 4)
  {
  }

  return result;
}

uint64_t specialized static Shader.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a2 + 24);
  v6 = *(a2 + 32);
  v7 = *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16);
  if (!v7 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI6ShaderV8ArgumentV_Tt1g5(v3, v5);
  return v8 & (v4 == v6);
}

void specialized static Shader.Argument.Storage.== infix(_:_:)(float *a1, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  if (BYTE4(a3) <= 4u)
  {
    if (BYTE4(a3) >= 4u && BYTE4(a6) == 4)
    {
      v6 = *(a1 + 2);
      if (v6 == *(a4 + 16) && v6 && a1 != a4)
      {
        v7 = a1 + 8;
        v8 = (a4 + 32);
        while (v6)
        {
          v9 = *v7++;
          v10 = v9;
          v11 = *v8++;
          if (v10 != v11 || v6-- == 1)
          {
            return;
          }
        }

        __break(1u);
      }
    }
  }

  else if (BYTE4(a3) > 7u)
  {
    if (BYTE4(a3) == 8)
    {
      if (BYTE4(a6) == 8 && a1 != a4)
      {
        (*(*a1 + 96))(a4, a2, a3);
      }
    }

    else if (BYTE4(a3) == 9 && BYTE4(a6) == 9)
    {

      specialized static Data.== infix(_:_:)(a1, a2, a4, a5);
    }
  }

  else if (BYTE4(a3) == 5)
  {
    if (BYTE4(a6) == 5 && a1 != a4)
    {
      (*(*a1 + 88))(a4, a2, a3);
    }
  }

  else if (BYTE4(a3) == 6 && BYTE4(a6) == 6)
  {

    _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI5ColorV_Tt1g5(a1, a4);
  }
}

void lazy protocol witness table accessor for type Shader.Options and conformance Shader.Options()
{
  if (!lazy protocol witness table cache variable for type Shader.Options and conformance Shader.Options)
  {
    swift_getWitnessTable(protocol conformance descriptor for Shader.Options, &type metadata for Shader.Options, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Shader.Options and conformance Shader.Options);
  }
}

{
  if (!lazy protocol witness table cache variable for type Shader.Options and conformance Shader.Options)
  {
    swift_getWitnessTable(protocol conformance descriptor for Shader.Options, &type metadata for Shader.Options, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Shader.Options and conformance Shader.Options);
  }
}

{
  if (!lazy protocol witness table cache variable for type Shader.Options and conformance Shader.Options)
  {
    swift_getWitnessTable(protocol conformance descriptor for Shader.Options, &type metadata for Shader.Options, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Shader.Options and conformance Shader.Options);
  }
}

{
  if (!lazy protocol witness table cache variable for type Shader.Options and conformance Shader.Options)
  {
    swift_getWitnessTable(protocol conformance descriptor for Shader.Options, &type metadata for Shader.Options, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Shader.Options and conformance Shader.Options);
  }
}

void lazy protocol witness table accessor for type Shader.UsageType and conformance Shader.UsageType()
{
  if (!lazy protocol witness table cache variable for type Shader.UsageType and conformance Shader.UsageType)
  {
    swift_getWitnessTable(protocol conformance descriptor for Shader.UsageType, &type metadata for Shader.UsageType, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Shader.UsageType and conformance Shader.UsageType);
  }
}

void instantiation function for generic protocol witness table for Shader.ResolvedShader(uint64_t a1)
{
  lazy protocol witness table accessor for type Shader.ResolvedShader and conformance Shader.ResolvedShader();
  *(a1 + 8) = v2;
  lazy protocol witness table accessor for type Shader.ResolvedShader and conformance Shader.ResolvedShader();
  *(a1 + 16) = v3;
}

{
  lazy protocol witness table accessor for type Shader.ResolvedShader and conformance Shader.ResolvedShader();
  *(a1 + 8) = v2;
}

void *initializeBufferWithCopyOfBuffer for ShaderFunction(void *a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  *a1 = *a2;
  a1[1] = v4;
  a1[2] = *(a2 + 16);
  v5 = v3;

  return a1;
}

uint64_t assignWithCopy for ShaderFunction(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  return a1;
}

uint64_t assignWithTake for ShaderFunction(uint64_t a1, void *a2)
{
  v4 = *a1;
  *a1 = *a2;

  v5 = a2[2];
  *(a1 + 8) = a2[1];
  *(a1 + 16) = v5;

  return a1;
}

uint64_t initializeWithCopy for Shader(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  v5 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v5;
  *(a1 + 32) = *(a2 + 32);
  v6 = v3;

  return a1;
}

uint64_t assignWithCopy for Shader(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  return a1;
}

uint64_t assignWithTake for Shader(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);

  *(a1 + 32) = *(a2 + 32);
  return a1;
}

uint64_t getEnumTagSinglePayload for Shader(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 36))
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

uint64_t storeEnumTagSinglePayload for Shader(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

__n128 __swift_memcpy21_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 13) = *(a2 + 13);
  *a1 = result;
  return result;
}

uint64_t initializeWithCopy for Shader.ResolvedShader(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  v4 = v3;
  return a1;
}

uint64_t assignWithCopy for Shader.ResolvedShader(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  *a1 = *a2;
  v6 = v5;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  return a1;
}

uint64_t assignWithTake for Shader.ResolvedShader(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  return a1;
}

uint64_t getEnumTagSinglePayload for Shader.ResolvedShader(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 28))
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

uint64_t storeEnumTagSinglePayload for Shader.ResolvedShader(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 28) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 28) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t assignWithCopy for _ShaderFilterEffect(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  return a1;
}

uint64_t assignWithTake for _ShaderFilterEffect(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  return a1;
}

double outlined copy of ShaderVectorData.Element(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 4)
  {
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for ShaderVectorData.Element(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  outlined copy of ShaderVectorData.Element(*a2, v4, v5);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  return a1;
}

uint64_t assignWithCopy for ShaderVectorData.Element(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  outlined copy of ShaderVectorData.Element(*a2, v4, v5);
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v3;
  *(a1 + 8) = v4;
  v8 = *(a1 + 16);
  *(a1 + 16) = v5;
  outlined consume of ShaderVectorData.Element(v6, v7, v8);
  return a1;
}

uint64_t assignWithTake for ShaderVectorData.Element(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *a1;
  v5 = *(a1 + 8);
  *a1 = *a2;
  v6 = *(a1 + 16);
  *(a1 + 16) = v3;
  outlined consume of ShaderVectorData.Element(v4, v5, v6);
  return a1;
}

uint64_t getEnumTagSinglePayload for ShaderVectorData.Element(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 17))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 16);
  if (v3 <= 5)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for ShaderVectorData.Element(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 16) = 0;
    *result = a2 - 251;
    *(result + 8) = 0;
    if (a3 >= 0xFB)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTag for ShaderVectorData.Element(uint64_t a1)
{
  if (*(a1 + 16) <= 4u)
  {
    return *(a1 + 16);
  }

  else
  {
    return (*a1 + 5);
  }
}

uint64_t destructiveInjectEnumTag for ShaderVectorData.Element(uint64_t result, unsigned int a2)
{
  if (a2 >= 5)
  {
    *result = a2 - 5;
    *(result + 8) = 0;
    LOBYTE(a2) = 5;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for Shader.Argument(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 20);
  outlined copy of Shader.Argument.Storage(*a2, v4, v5, v6);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 20) = v6;
  return a1;
}

uint64_t assignWithCopy for Shader.Argument(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 20);
  outlined copy of Shader.Argument.Storage(*a2, v4, v5, v6);
  v7 = *a1;
  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  v10 = *(a1 + 20);
  *(a1 + 20) = v6;
  outlined consume of Shader.Argument.Storage(v7, v8, v9, v10);
  return a1;
}

uint64_t assignWithTake for Shader.Argument(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 20);
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  *a1 = *a2;
  *(a1 + 16) = v3;
  v8 = *(a1 + 20);
  *(a1 + 20) = v4;
  outlined consume of Shader.Argument.Storage(v5, v6, v7, v8);
  return a1;
}

uint64_t getEnumTagSinglePayload for Shader.Argument(uint64_t a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for Shader.Argument(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTag for Shader.Argument.Storage(uint64_t a1)
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

uint64_t destructiveInjectEnumTag for Shader.Argument.Storage(uint64_t result, unsigned int a2)
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

void lazy protocol witness table accessor for type ShaderVectorData.Element and conformance ShaderVectorData.Element()
{
  if (!lazy protocol witness table cache variable for type ShaderVectorData.Element and conformance ShaderVectorData.Element)
  {
    swift_getWitnessTable(protocol conformance descriptor for ShaderVectorData.Element, &type metadata for ShaderVectorData.Element, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type ShaderVectorData.Element and conformance ShaderVectorData.Element);
  }
}

{
  if (!lazy protocol witness table cache variable for type ShaderVectorData.Element and conformance ShaderVectorData.Element)
  {
    swift_getWitnessTable(protocol conformance descriptor for ShaderVectorData.Element, &type metadata for ShaderVectorData.Element, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type ShaderVectorData.Element and conformance ShaderVectorData.Element);
  }
}

uint64_t outlined init with copy of (value: _ShaderFilterEffect, changed: Bool)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for (value: _ShaderFilterEffect, changed: Bool)();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void type metadata accessor for (value: _ShaderFilterEffect, changed: Bool)()
{
  if (!lazy cache variable for type metadata for (value: _ShaderFilterEffect, changed: Bool))
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (value: _ShaderFilterEffect, changed: Bool));
    }
  }
}

void type metadata accessor for CheckedContinuation<(), Error>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for CheckedContinuation<(), Error>)
  {
    type metadata accessor for Error();
    v1 = type metadata accessor for CheckedContinuation();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for CheckedContinuation<(), Error>);
    }
  }
}

uint64_t partial apply for closure #1 in closure #1 in Shader.compile(as:)(void *a1)
{
  type metadata accessor for CheckedContinuation<(), Error>(0);

  return closure #1 in closure #1 in Shader.compile(as:)(a1);
}

void FocusableBorder.bounds.setter(double a1, double a2, double a3, double a4)
{
  *v4 = a1;
  v4[1] = a2;
  v4[2] = a3;
  v4[3] = a4;
}

void FocusableBorder.depth.setter(double a1, double a2, double a3, double a4)
{
  v4[4] = a1;
  v4[5] = a2;
  v4[6] = a3;
  v4[7] = a4;
}

void FocusableBorder.init(bounds:depth:)(double *a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>, double a6@<D4>, double a7@<D5>, double a8@<D6>, double a9@<D7>)
{
  *a1 = a2;
  a1[1] = a3;
  a1[2] = a4;
  a1[3] = a5;
  a1[4] = a6;
  a1[5] = a7;
  a1[6] = a8;
  a1[7] = a9;
}

void FocusableBounds.bounds.setter(double a1, double a2, double a3, double a4)
{
  *v4 = a1;
  v4[1] = a2;
  v4[2] = a3;
  v4[3] = a4;
}

void FocusableFillerBounds.Metrics.init(size:spacing:lowerInset:upperInset:)(double *a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>)
{
  *a1 = a2;
  a1[1] = a3;
  a1[2] = a4;
  a1[3] = a5;
}

void FocusableFillerBounds.bounds.setter(double a1, double a2, double a3, double a4)
{
  *v4 = a1;
  v4[1] = a2;
  v4[2] = a3;
  v4[3] = a4;
}

__n128 FocusableFillerBounds.horizontalMetrics.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 64);
  result = *(v1 + 32);
  v4 = *(v1 + 48);
  *a1 = result;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

__n128 FocusableFillerBounds.horizontalMetrics.setter(uint64_t a1)
{
  v2 = *(a1 + 32);
  result = *a1;
  v4 = *(a1 + 16);
  *(v1 + 32) = *a1;
  *(v1 + 48) = v4;
  *(v1 + 64) = v2;
  return result;
}

__n128 FocusableFillerBounds.verticalMetrics.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 104);
  result = *(v1 + 72);
  v4 = *(v1 + 88);
  *a1 = result;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

__n128 FocusableFillerBounds.verticalMetrics.setter(uint64_t a1)
{
  v2 = *(a1 + 32);
  result = *a1;
  v4 = *(a1 + 16);
  *(v1 + 72) = *a1;
  *(v1 + 88) = v4;
  *(v1 + 104) = v2;
  return result;
}

__n128 FocusableFillerBounds.init(bounds:horizontalMetrics:verticalMetrics:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>, double a7@<D3>)
{
  v7 = *(a1 + 32);
  v11 = *(a2 + 32);
  *a3 = a4;
  *(a3 + 8) = a5;
  *(a3 + 16) = a6;
  *(a3 + 24) = a7;
  v8 = *(a1 + 16);
  *(a3 + 32) = *a1;
  *(a3 + 48) = v8;
  *(a3 + 64) = v7;
  result = *a2;
  v10 = *(a2 + 16);
  *(a3 + 72) = *a2;
  *(a3 + 88) = v10;
  *(a3 + 104) = v11;
  return result;
}

uint64_t FocusableFillerBounds.metrics(in:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = 64;
  if (result)
  {
    v3 = 104;
  }

  v4 = 32;
  if (result)
  {
    v4 = 72;
  }

  v5 = 56;
  if (result)
  {
    v5 = 96;
  }

  v6 = 48;
  if (result)
  {
    v6 = 88;
  }

  v7 = 40;
  if (result)
  {
    v7 = 80;
  }

  v8 = *(v2 + v3);
  v9 = *(v2 + v5);
  v10 = *(v2 + v6);
  v11 = *(v2 + v7);
  *a2 = *(v2 + v4);
  *(a2 + 8) = v11;
  *(a2 + 16) = v10;
  *(a2 + 24) = v9;
  *(a2 + 32) = v8;
  return result;
}

Swift::Void __swiftcall LazyFocusableFillerBoundsProvider.updateValue()()
{
  v1 = v0;
  v92[6] = *MEMORY[0x1E69E9840];
  v2 = *(v0 + 32);
  if (v2 != *AGGraphGetValue() >> 1)
  {
    *(v0 + 32) = *AGGraphGetValue() >> 1;
    *(v0 + 40) = 0;
    *(v0 + 48) = 0;
    *(v0 + 56) = 1;
    v3 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI4AxisO_AC21FocusableFillerBoundsV7MetricsVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);

    *(v1 + 64) = v3;
  }

  Value = AGGraphGetValue();
  v6 = *Value;
  v5 = *(Value + 8);
  v7 = *(Value + 16);
  v8 = *(Value + 24);
  v9 = *(Value + 32);
  v10 = *(Value + 40);
  v92[0] = *Value;
  *&v92[1] = v5;
  type metadata accessor for CGPoint(0);

  v11 = AGGraphGetValue();
  MidX = *v11;
  v13 = *(v11 + 8);
  v14 = v9 - (*v11 - v7);
  v15 = v10 - (v13 - v8);
  *&v92[4] = v14;
  *&v92[5] = v15;
  *&v92[2] = MidX;
  *&v92[3] = v13;
  v78 = 0.0;
  v79 = 0.0;
  v80 = *AGGraphGetValue();
  if (one-time initialization token for content != -1)
  {
    goto LABEL_65;
  }

  while (1)
  {
    *&v82.f64[0] = static ScrollCoordinateSpace.content;
    BYTE8(v84) = 1;
    *&v87.f64[0] = v6;
    v87.f64[1] = v5;
    *&v88 = MidX;
    *(&v88 + 1) = v13;
    *&v89 = v14;
    *(&v89 + 1) = v15;

    CGRect.convert(to:transform:)(&v82, &v87);

    outlined destroy of CoordinateSpace(&v82);
    v16 = MEMORY[0x1E69E62F8];
    _ss23_ContiguousArrayStorageCyypGMaTm_1(0, &lazy cache variable for type metadata for [_LazyLayout_PlacedSubview], &type metadata for _LazyLayout_PlacedSubview, MEMORY[0x1E69E62F8]);
    v17 = AGGraphGetValue();
    v19 = v18;
    v20 = *v17;
    _ss23_ContiguousArrayStorageCyypGMaTm_1(0, &lazy cache variable for type metadata for [FocusableFillerBounds], &type metadata for FocusableFillerBounds, v16);
    if (AGGraphGetOutputValue())
    {
      if ((*(v1 + 56) & 1) == 0 && *(v1 + 40) == *&v80)
      {
        v21 = *(&v80 + 1);
        if (*(v1 + 48) == *(&v80 + 1) && (v19 & 1) == 0)
        {
          v22 = (v1 + 56);
          *(v1 + 40) = v80;
          *(v1 + 48) = v21;
          goto LABEL_59;
        }
      }
    }

    v23 = *MEMORY[0x1E698D3F8];
    v24 = MEMORY[0x1E69E7CC0];
    v25 = MEMORY[0x1E69E7CC0];
    if (*(v1 + 24) != *MEMORY[0x1E698D3F8])
    {
      _ss23_ContiguousArrayStorageCyypGMaTm_1(0, &lazy cache variable for type metadata for [FocusableBounds], &type metadata for FocusableBounds, MEMORY[0x1E69E62F8]);

      v25 = *AGGraphGetValue();
    }

    v26 = *(v25 + 16);
    if (v26)
    {
      v87.f64[0] = v24;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v26, 0);
      v27 = v87.f64[0];
      v28 = (v25 + 56);
      do
      {
        v13 = *(v28 - 3);
        v14 = *(v28 - 2);
        v15 = *(v28 - 1);
        v29 = *v28;
        v93.origin.x = v13;
        v93.origin.y = v14;
        v93.size.width = v15;
        v93.size.height = *v28;
        MidX = CGRectGetMidX(v93);
        v94.origin.x = v13;
        v94.origin.y = v14;
        v94.size.width = v15;
        v94.size.height = v29;
        MidY = CGRectGetMidY(v94);
        v87.f64[0] = v27;
        v32 = *(*&v27 + 16);
        v31 = *(*&v27 + 24);
        if (v32 >= v31 >> 1)
        {
          v13 = MidY;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v31 > 1), v32 + 1, 1);
          MidY = v13;
          v27 = v87.f64[0];
        }

        *(*&v27 + 16) = v32 + 1;
        v33 = *&v27 + 16 * v32;
        *(v33 + 32) = MidX;
        *(v33 + 40) = MidY;
        v28 += 5;
        --v26;
      }

      while (v26);
    }

    else
    {

      v27 = MEMORY[0x1E69E7CC0];
    }

    v5 = MEMORY[0x1E69E7CC0];
    v34 = MEMORY[0x1E69E7CC0];
    if (*(v1 + 28) != v23)
    {
      v34 = *AGGraphGetValue();
    }

    v35 = *(v20 + 16);
    if (v35)
    {
      v74 = v1;
      v77 = v5;

      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v35, 0);
      v5 = v77;
      v36 = v20 + 32;
      for (i = v35 - 1; ; --i)
      {
        v87 = *v36;
        v38 = *(v36 + 16);
        v39 = *(v36 + 32);
        v40 = *(v36 + 64);
        v90 = *(v36 + 48);
        v91 = v40;
        v88 = v38;
        v89 = v39;
        v83 = *(v36 + 16);
        v84 = *(v36 + 32);
        v85 = *(v36 + 48);
        v86 = *(v36 + 64);
        v82 = *v36;
        outlined init with copy of _LazyLayout_PlacedSubview(&v87, v81);
        closure #2 in LazyFocusableFillerBoundsProvider.updateValue()(&v82, v92, v27, v34, &v76);
        v81[2] = v84;
        v81[3] = v85;
        v81[4] = v86;
        v81[0] = v82;
        v81[1] = v83;
        outlined destroy of _LazyLayout_PlacedSubview(v81);
        v41 = v76;
        v77 = v5;
        v43 = *(*&v5 + 16);
        v42 = *(*&v5 + 24);
        if (v43 >= v42 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v42 > 1), v43 + 1, 1);
          v5 = v77;
        }

        *(*&v5 + 16) = v43 + 1;
        *(*&v5 + 8 * v43 + 32) = v41;
        if (!i)
        {
          break;
        }

        v36 += 80;
      }

      swift_bridgeObjectRelease_n();

      v1 = v74;
    }

    else
    {
    }

    v44 = *(*&v5 + 16);
    if (!v44)
    {
      break;
    }

    v45 = 0;
    v6 = MEMORY[0x1E69E7CC0];
    while (v45 < *(*&v5 + 16))
    {
      v46 = *(*&v5 + 32 + 8 * v45);
      v47 = *(v46 + 16);
      v48 = *(v6 + 2);
      v49 = v48 + v47;
      if (__OFADD__(v48, v47))
      {
        goto LABEL_61;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v49 <= *(v6 + 3) >> 1)
      {
        if (*(v46 + 16))
        {
          goto LABEL_43;
        }
      }

      else
      {
        if (v48 <= v49)
        {
          v51 = v48 + v47;
        }

        else
        {
          v51 = v48;
        }

        v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v51, 1, v6);
        if (*(v46 + 16))
        {
LABEL_43:
          v52 = *(v6 + 2);
          if ((*(v6 + 3) >> 1) - v52 < v47)
          {
            goto LABEL_63;
          }

          memcpy(&v6[32 * v52 + 32], (v46 + 32), 32 * v47);

          if (v47)
          {
            v53 = *(v6 + 2);
            v54 = __OFADD__(v53, v47);
            v55 = v53 + v47;
            if (v54)
            {
              goto LABEL_64;
            }

            *(v6 + 2) = v55;
          }

          goto LABEL_32;
        }
      }

      if (v47)
      {
        goto LABEL_62;
      }

LABEL_32:
      if (v44 == ++v45)
      {
        goto LABEL_48;
      }
    }

    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    swift_once();
  }

  v6 = MEMORY[0x1E69E7CC0];
LABEL_48:

  v56 = v78;
  v57 = v79;
  v58 = v80;
  LazyFocusableFillerBoundsProvider.updateMetrics(in:placedBounds:axis:)(v6, 0, v78, v79, *&v80, *(&v80 + 1));
  v59 = 1;
  LazyFocusableFillerBoundsProvider.updateMetrics(in:placedBounds:axis:)(v6, 1, v56, v57, *&v58, *(&v58 + 1));

  _ss23_ContiguousArrayStorageCyypGMaTm_1(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<FocusableFillerBounds>, &type metadata for FocusableFillerBounds, MEMORY[0x1E69E6F90]);
  v60 = swift_allocObject();
  *(v60 + 16) = xmmword_18DDA6EB0;
  v61 = *(v1 + 64);
  if (*(v61 + 16))
  {
    v62 = specialized __RawDictionaryStorage.find<A>(_:)(0);
    v64 = 0uLL;
    v65 = 0uLL;
    v66 = 0uLL;
    if (v63)
    {
      v67 = (*(v61 + 56) + 32 * v62);
      v65 = *v67;
      v66 = v67[1];
    }

    v59 = v63 ^ 1;
    if (*(v61 + 16))
    {
      v73 = v66;
      v75 = v65;
      v68 = 1;
      v69 = specialized __RawDictionaryStorage.find<A>(_:)(1);
      if (v70)
      {
        v68 = 0;
        v71 = (*(v61 + 56) + 32 * v69);
        v64 = *v71;
        v72 = v71[1];
        v65 = v75;
      }

      else
      {
        v72 = 0uLL;
        v65 = v75;
        v64 = 0uLL;
      }

      v66 = v73;
    }

    else
    {
      v68 = 1;
      v72 = 0uLL;
    }
  }

  else
  {
    v65 = 0uLL;
    v68 = 1;
    v66 = 0uLL;
    v64 = 0uLL;
    v72 = 0uLL;
  }

  LOBYTE(v82.f64[0]) = v68;
  *(v60 + 32) = v56;
  *(v60 + 40) = v57;
  *(v60 + 48) = v58;
  *(v60 + 64) = v65;
  *(v60 + 80) = v66;
  *(v60 + 96) = v59 & 1;
  *(v60 + 104) = v64;
  *(v60 + 120) = v72;
  *(v60 + 136) = v68;
  *&v87.f64[0] = v60;
  AGGraphSetOutputValue();

  *(v1 + 40) = v58;
  v22 = (v1 + 56);
LABEL_59:
  *v22 = 0;
}

void closure #2 in LazyFocusableFillerBoundsProvider.updateValue()(__int128 *a1@<X0>, uint64_t a3@<X2>, float64_t a4@<X3>, void *a5@<X4>, uint64_t *a6@<X8>)
{
  v7 = v6;
  v12 = a1[1];
  v76[0] = *a1;
  v76[1] = v12;
  v77 = *(a1 + 4);
  v13 = *(a1 + 5);
  v14 = *(a1 + 6);
  v15 = *(a1 + 7);
  v16 = *(a1 + 8);
  v17 = *(a1 + 9);
  v18 = a1[1];
  v83 = *a1;
  v84 = v18;
  *&v85 = *(a1 + 4);
  *(&v85 + 1) = v13;
  *v86 = v14;
  *&v86[8] = v15;
  *&v86[16] = v16;
  *&v86[24] = v17;
  _LazyLayout_PlacedSubview.size.getter();
  v21 = v15 - v13 * v19;
  v78 = v13;
  v79 = v14;
  v22 = v16 - v14 * v20;
  v80 = v15;
  v81 = v16;
  v82 = v17;
  _LazyLayout_PlacedSubview.size.getter();
  v24 = v23;
  v26 = v25;

  v27 = *AGGraphGetValue();

  v87 = CGRect.roundedCoordinatesToNearestOrUp(toMultipleOf:)(v27, v21, v22, v24, v26);
  v88 = v28;
  v89 = v29;
  v90 = v30;
  if (one-time initialization token for content != -1)
  {
    goto LABEL_47;
  }

LABEL_2:
  *&v76[0] = static ScrollCoordinateSpace.content;
  LOBYTE(v78) = 1;
  v31 = *(a3 + 8);
  v83.f64[0] = *a3;
  v83.f64[1] = v31;
  v32 = *(a3 + 32);
  v84 = *(a3 + 16);
  v85 = v32;

  CGRect.convert(to:transform:)(v76, &v83);

  outlined destroy of CoordinateSpace(v76);
  v33 = v87;
  v34 = v88;
  v35 = v89;
  v36 = v90;
  v37 = (*&a4 + 40);
  v38 = *(*&a4 + 16) + 1;
  do
  {
    if (!--v38)
    {
      *a6 = MEMORY[0x1E69E7CC0];
      return;
    }

    v39 = v37 + 2;
    v92.origin.x = v33;
    v92.origin.y = v34;
    v92.size.width = v35;
    v92.size.height = v36;
    v40 = CGRectContainsPoint(v92, *(v37 - 1));
    v37 = v39;
  }

  while (!v40);
  v75 = a6;
  v91 = v7;
  v41 = a5[2];
  v7 = MEMORY[0x1E69E7CC0];
  if (v41)
  {
    v42 = a5 + 8;
    a5 = MEMORY[0x1E69E7CC0];
    do
    {
      v49 = *(v42 - 4);
      v50 = *(v42 - 3);
      v51 = *(v42 - 2);
      v52 = *(v42 - 1);
      v53 = *(v42 + 3);
      v85 = *(v42 + 2);
      *v86 = v53;
      *&v86[9] = *(v42 + 57);
      v54 = *(v42 + 1);
      v83 = *v42;
      v84 = v54;
      *&v54 = v33;
      *&v53 = v34;
      v55 = v35;
      v56 = v36;
      v94.origin.x = v49;
      v94.origin.y = v50;
      v94.size.width = v51;
      v94.size.height = v52;
      v93 = CGRectIntersection(*(&v53 - 8), v94);
      if (!CGRectIsEmpty(v93))
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v76[0] = a5;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, a5[2] + 1, 1);
          a5 = *&v76[0];
        }

        v44 = a5[2];
        v43 = a5[3];
        if (v44 >= v43 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v43 > 1), v44 + 1, 1);
          a5 = *&v76[0];
        }

        a5[2] = v44 + 1;
        v45 = &a5[14 * v44];
        *(v45 + 4) = v49;
        *(v45 + 5) = v50;
        *(v45 + 6) = v51;
        *(v45 + 7) = v52;
        *(v45 + 4) = v83;
        v46 = v84;
        v47 = v85;
        v48 = *v86;
        *(v45 + 121) = *&v86[9];
        *(v45 + 6) = v47;
        *(v45 + 7) = v48;
        *(v45 + 5) = v46;
      }

      v42 += 14;
      --v41;
    }

    while (v41);
  }

  else
  {
    a5 = MEMORY[0x1E69E7CC0];
  }

  v58 = a5[2];
  if (v58)
  {
    v83.f64[0] = v7;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v58, 0);
    v59 = 32;
    a4 = v83.f64[0];
    do
    {
      FocusableFillerBounds.fillerFrames(in:)(v33, v34, v35, v36);
      v83.f64[0] = a4;
      v62 = *(*&a4 + 16);
      v61 = *(*&a4 + 24);
      if (v62 >= v61 >> 1)
      {
        v63 = v60;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v61 > 1), v62 + 1, 1);
        v60 = v63;
        a4 = v83.f64[0];
      }

      *(*&a4 + 16) = v62 + 1;
      *(*&a4 + 8 * v62 + 32) = v60;
      v59 += 112;
      --v58;
    }

    while (v58);

    a3 = *(*&a4 + 16);
    if (a3)
    {
      v64 = 0;
      a6 = (*&a4 + 32);
      v65 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        if (v64 >= *(*&a4 + 16))
        {
          __break(1u);
LABEL_43:
          __break(1u);
LABEL_44:
          __break(1u);
LABEL_45:
          __break(1u);
LABEL_46:
          __break(1u);
LABEL_47:
          swift_once();
          goto LABEL_2;
        }

        a5 = a6[v64];
        v66 = a5[2];
        v67 = *(v65 + 2);
        *&v7 = v67 + v66;
        if (__OFADD__(v67, v66))
        {
          goto LABEL_43;
        }

        v68 = swift_isUniquelyReferenced_nonNull_native();
        if (v68 && *&v7 <= *(v65 + 3) >> 1)
        {
          if (a5[2])
          {
            goto LABEL_35;
          }
        }

        else
        {
          if (v67 <= *&v7)
          {
            v69 = v67 + v66;
          }

          else
          {
            v69 = v67;
          }

          v65 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v68, v69, 1, v65);
          if (a5[2])
          {
LABEL_35:
            v70 = *(v65 + 2);
            if ((*(v65 + 3) >> 1) - v70 < v66)
            {
              goto LABEL_45;
            }

            memcpy(&v65[32 * v70 + 32], a5 + 4, 32 * v66);

            if (v66)
            {
              v71 = *(v65 + 2);
              v72 = __OFADD__(v71, v66);
              v73 = v71 + v66;
              if (v72)
              {
                goto LABEL_46;
              }

              *(v65 + 2) = v73;
            }

            goto LABEL_24;
          }
        }

        if (v66)
        {
          goto LABEL_44;
        }

LABEL_24:
        if (a3 == ++v64)
        {
          goto LABEL_41;
        }
      }
    }

    v65 = MEMORY[0x1E69E7CC0];
LABEL_41:

    *v75 = v65;
  }

  else
  {

    _ss23_ContiguousArrayStorageCys7CVarArg_pGMaTm_2(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CGRect>, type metadata accessor for CGRect);
    v74 = swift_allocObject();
    *(v74 + 16) = xmmword_18DDA6EB0;
    *(v74 + 32) = v33;
    *(v74 + 40) = v34;
    *(v74 + 48) = v35;
    *(v74 + 56) = v36;
    *a6 = v74;
  }
}

void FocusableFillerBounds.fillerFrames(in:)(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v9 = v4[5];
  v30[4] = v4[4];
  v31[0] = v9;
  *(v31 + 9) = *(v4 + 89);
  v10 = v4[1];
  v30[0] = *v4;
  v30[1] = v10;
  v11 = v4[3];
  v30[2] = v4[2];
  v30[3] = v11;
  ranges #1 (_:) in FocusableFillerBounds.fillerFrames(in:)(0, v30, a1, a2, a3, a4);
  v13 = v12;
  ranges #1 (_:) in FocusableFillerBounds.fillerFrames(in:)(1, v30, a1, a2, a3, a4);
  v15 = *(v13 + 16);
  if (v15)
  {
    v16 = 0;
    v17 = *(v14 + 16);
    v18 = (v14 + 40);
    v19 = MEMORY[0x1E69E7CC0];
    while (v16 < *(v13 + 16))
    {
      if (v17)
      {
        v20 = v13 + 32 + 16 * v16;
        v21 = *v20;
        v22 = *(v20 + 8) - *v20;
        v23 = v18;
        v24 = v17;
        do
        {
          v25 = *(v23 - 1);
          v26 = *v23;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v19 + 2) + 1, 1, v19);
          }

          v28 = *(v19 + 2);
          v27 = *(v19 + 3);
          if (v28 >= v27 >> 1)
          {
            v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v27 > 1), v28 + 1, 1, v19);
          }

          *(v19 + 2) = v28 + 1;
          v29 = &v19[32 * v28];
          v29[4] = v21;
          v29[5] = v25;
          v29[6] = v22;
          v29[7] = v26 - v25;
          v23 += 2;
          --v24;
        }

        while (v24);
      }

      if (++v16 == v15)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_13:
  }
}

void LazyFocusableFillerBoundsProvider.updateMetrics(in:placedBounds:axis:)(uint64_t a1, char a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v7 = v6;
  CGRect.range(in:)(a2 & 1, a3, a4, a5, a6);
  v11 = v10;
  v13 = v12;
  v14 = *(a1 + 16);
  v15 = MEMORY[0x1E69E7CC0];
  if (v14)
  {
    v89 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v14, 0);
    v15 = v89;
    v16 = (a1 + 56);
    do
    {
      CGRect.range(in:)(a2 & 1, *(v16 - 3), *(v16 - 2), *(v16 - 1), *v16);
      v89 = v15;
      v20 = *(v15 + 2);
      v19 = *(v15 + 3);
      if (v20 >= v19 >> 1)
      {
        v22 = v17;
        v23 = v18;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1);
        v18 = v23;
        v17 = v22;
        v15 = v89;
      }

      *(v15 + 2) = v20 + 1;
      v21 = &v15[16 * v20];
      *(v21 + 4) = v17;
      *(v21 + 5) = v18;
      v16 += 4;
      --v14;
    }

    while (v14);
  }

  v89 = v15;

  specialized MutableCollection<>.sort(by:)(&v89);

  v24 = v89;
  v25 = *(v89 + 2);
  if (!v25)
  {
    v30 = MEMORY[0x1E69E7CC0];
LABEL_47:

    v58 = *(v30 + 2);
    if (v58)
    {
      v59 = v58 == 1;
    }

    else
    {
      v59 = 1;
    }

    if (v59)
    {
    }

    else
    {
      v60 = *(v30 + 5);
      v62 = *(v30 + 6);
      v61 = *(v30 + 7);
      if (v61 - v62 >= v60 - *(v30 + 4))
      {
        v63 = v60 - *(v30 + 4);
      }

      else
      {
        v63 = v61 - v62;
      }

      v64 = v62 - v60;
      v65 = v58 - 2;
      if (v65)
      {
        v66 = (v30 + 72);
        do
        {
          v67 = v61 - v62;
          v68 = v62 + v61;
          v69 = *(v66 - 1);
          v70 = *v66;
          v71 = v69 - v61;
          if (*v66 - v69 < v67)
          {
            v67 = *v66 - v69;
          }

          if (v63 + v64 >= (v69 + v70) * 0.5 - v68 * 0.5)
          {
            v63 = v67;
            v64 = v71;
          }

          v66 += 2;
          v61 = v70;
          v62 = v69;
          --v65;
        }

        while (v65);
      }

      v72 = *(v7 + 64);
      if (*(v72 + 16))
      {
        v73 = specialized __RawDictionaryStorage.find<A>(_:)(a2 & 1);
        if (v74)
        {
          v75 = (*(v72 + 56) + 32 * v73);
          v63 = (v63 + *v75) * 0.5;
          v64 = (v64 + v75[1]) * 0.5;
        }
      }

      v76 = *(v30 + 2);
      if (v76)
      {
        v77 = *(v30 + 4);
        v78 = *&v30[16 * v76 + 24];
      }

      else
      {
        v78 = 0.0;
        v77 = 0.0;
      }

      v79 = v77 - (v64 + v63) * floor((v77 - v11) / (v64 + v63)) - v11;
      v80 = v13 - (v64 + v63) * floor((v13 - v78) / (v64 + v63)) - v78;
      v81 = v64 + v63 * 0.25;
      if (v81 >= v79)
      {
        v82 = v79;
      }

      else
      {
        v82 = v79 - v81;
      }

      if (v81 >= v80)
      {
        v83 = v80;
      }

      else
      {
        v83 = v80 - v81;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v89 = *(v7 + 64);
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a2 & 1, isUniquelyReferenced_nonNull_native, v63, v64, v82, v83);
      *(v7 + 64) = v89;
    }

    return;
  }

  v26 = 0;
  v27 = v89 + 32;
  v28 = v25 - 1;
  v29 = 0.0;
  v30 = MEMORY[0x1E69E7CC0];
  do
  {
    v31 = *&v27[16 * v26];
    v32 = *(v30 + 2);
    if (v32)
    {
      v33 = &v30[16 * v32 + 16];
      v35 = *v33;
      v34 = v33[1];
      if (*&v31 == *v33)
      {
        v36 = *&v27[16 * v26 + 8];
        if (v34 < *(&v31 + 1))
        {
          v37 = *(&v31 + 1) - v34;
          goto LABEL_35;
        }

        v87 = *&v27[16 * v26];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v30 = specialized _ArrayBuffer._consumeAndCreateNew()(v30);
        }

        v47 = *(v30 + 2);
        v48 = v87;
        if (!v47)
        {
          goto LABEL_78;
        }

        *(v30 + 2) = v47 - 1;
        v49 = *(v30 + 3);
        if (v47 > v49 >> 1)
        {
          v54 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v49 > 1), v47, 1, v30);
          v48 = v87;
          v30 = v54;
        }

        *(v30 + 2) = v47;
        *&v30[16 * v47 + 16] = v48;
        v29 = v29 + v34 - v36;
      }

      else
      {
        v41 = v29 + v34;
        if (v29 + v34 >= *&v31)
        {
          if (v34 > *&v31)
          {
            v37 = *(&v31 + 1) - v34;
LABEL_35:
            if (v37 > v29)
            {
              v29 = v37;
            }

            goto LABEL_37;
          }

          v88 = *&v27[16 * v26];
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v30 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v32 + 1, 1, v30);
          }

          v51 = *(v30 + 2);
          v50 = *(v30 + 3);
          v52 = v88;
          if (v51 >= v50 >> 1)
          {
            v57 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v50 > 1), v51 + 1, 1, v30);
            v52 = v88;
            v30 = v57;
          }

          *(v30 + 2) = v51 + 1;
          *&v30[16 * v51 + 32] = v52;
          v29 = v41 - *(&v52 + 1);
          if (v41 - *(&v52 + 1) <= 0.0)
          {
            v29 = 0.0;
          }
        }

        else
        {
          v86 = *&v27[16 * v26];
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v30 = specialized _ArrayBuffer._consumeAndCreateNew()(v30);
          }

          v42 = *(v30 + 2);
          v43 = v86;
          if (!v42)
          {
            goto LABEL_79;
          }

          *(v30 + 2) = v42 - 1;
          if (v35 > v41)
          {
            goto LABEL_80;
          }

          v44 = *(v30 + 3);
          if (v42 > v44 >> 1)
          {
            v55 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v44 > 1), v42, 1, v30);
            v43 = v86;
            v30 = v55;
          }

          *(v30 + 2) = v42;
          v45 = &v30[16 * v42 - 16];
          *(v45 + 4) = v35;
          *(v45 + 5) = v41;
          v46 = *(v30 + 3);
          if (v42 >= v46 >> 1)
          {
            v56 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v46 > 1), v42 + 1, 1, v30);
            v43 = v86;
            v30 = v56;
          }

          *(v30 + 2) = v42 + 1;
          *&v30[16 * v42 + 32] = v43;
          v29 = 0.0;
        }
      }
    }

    else
    {
      v85 = *&v27[16 * v26];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v30 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, v30);
      }

      v39 = *(v30 + 2);
      v38 = *(v30 + 3);
      v40 = v85;
      if (v39 >= v38 >> 1)
      {
        v53 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v38 > 1), v39 + 1, 1, v30);
        v40 = v85;
        v30 = v53;
      }

      *(v30 + 2) = v39 + 1;
      *&v30[16 * v39 + 32] = v40;
    }

LABEL_37:
    if (v28 == v26)
    {
      goto LABEL_47;
    }

    ++v26;
  }

  while (v26 < *(v24 + 2));
  __break(1u);
LABEL_78:
  __break(1u);
LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);

  __break(1u);
}

void CGRect.range(in:)(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  if ((*&a2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&a3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (v10 = a1, (COERCE_UNSIGNED_INT64(CGRectGetWidth(*&a2)) & 0x7FFFFFFFFFFFFFFFLL) > 0x7FEFFFFFFFFFFFFFLL) || (v29.origin.x = a2, v29.origin.y = a3, v29.size.width = a4, v29.size.height = a5, (COERCE_UNSIGNED_INT64(CGRectGetHeight(v29)) & 0x7FFFFFFFFFFFFFFFLL) > 0x7FEFFFFFFFFFFFFFLL))
  {
    v5 = static os_log_type_t.fault.getter();
    if (one-time initialization token for internalErrorsLog == -1)
    {
LABEL_6:
      swift_beginAccess();
      v11 = static Log.internalErrorsLog;
      _ss23_ContiguousArrayStorageCys7CVarArg_pGMaTm_2(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_18DDAF080;
      v13 = v11;
      _StringGuts.grow(_:)(37);

      v14 = LoggableRect.description.getter();
      MEMORY[0x193ABEDD0](v14);

      v15 = MEMORY[0x1E69E6158];
      *(v12 + 56) = MEMORY[0x1E69E6158];
      lazy protocol witness table accessor for type String and conformance String();
      v17 = v16;
      *(v12 + 64) = v16;
      *(v12 + 32) = 0xD000000000000023;
      *(v12 + 40) = 0x800000018DD7B900;
      v18 = StaticString.description.getter();
      *(v12 + 96) = v15;
      *(v12 + 104) = v17;
      *(v12 + 72) = v18;
      *(v12 + 80) = v19;
      v20 = dispatch thunk of CustomStringConvertible.description.getter();
      *(v12 + 136) = v15;
      *(v12 + 144) = v17;
      *(v12 + 112) = v20;
      *(v12 + 120) = v21;
      os_log(_:dso:log:_:_:)(v5, &dword_18D018000, v13, "%s %s:%s", v28, 0x6B, *&a3);

      _ss23_ContiguousArrayStorageCyypGMaTm_1(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Any>, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6F90]);
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_18DDA6EB0;
      _StringGuts.grow(_:)(38);

      _StringGuts.grow(_:)(37);

      v23 = LoggableRect.description.getter();
      MEMORY[0x193ABEDD0](v23);

      MEMORY[0x193ABEDD0](2108704, 0xE300000000000000);
      v24 = StaticString.description.getter();
      MEMORY[0x193ABEDD0](v24);

      MEMORY[0x193ABEDD0](58, 0xE100000000000000);
      v25 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x193ABEDD0](v25);

      MEMORY[0x193ABEDD0](0xD00000000000001CLL, 0x800000018DD77470);
      *(v22 + 56) = v15;
      *(v22 + 32) = 0xD000000000000023;
      *(v22 + 40) = 0x800000018DD7B900;
      print(_:separator:terminator:)();

      return;
    }

LABEL_18:
    swift_once();
    goto LABEL_6;
  }

  if (v10)
  {
    v26 = a5;
  }

  else
  {
    v26 = a4;
  }

  if (v10)
  {
    v27 = a3;
  }

  else
  {
    v27 = a2;
  }

  if (v26 <= 0.0)
  {
    v26 = 0.0;
  }

  if (v27 > v27 + v26)
  {
    __break(1u);
    goto LABEL_18;
  }
}

void ranges #1 (_:) in FocusableFillerBounds.fillerFrames(in:)(char a1, CGFloat *a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  CGRect.range(in:)(a1 & 1, *a2, a2[1], a2[2], a2[3]);
  v13 = v12;
  v15 = v14;
  CGRect.range(in:)(a1 & 1, a3, a4, a5, a6);
  if (v13 > v16)
  {
    v18 = v13;
  }

  else
  {
    v18 = v16;
  }

  if (v17 >= v15)
  {
    v19 = v15;
  }

  else
  {
    v19 = v17;
  }

  v20 = v19 - v18;
  if (v19 - v18 > 0.0)
  {
    v21 = 4;
    if (a1)
    {
      v21 = 9;
    }

    v22 = 5;
    if (a1)
    {
      v22 = 10;
    }

    v23 = 8;
    if (a1)
    {
      v23 = 13;
    }

    v24 = a2[v22];
    v25 = 0.0;
    if (LOBYTE(a2[v23]))
    {
      v24 = 0.0;
      v26 = v20;
    }

    else
    {
      v26 = a2[v21];
    }

    v27 = floor((v20 + v24) / (v24 + v26));
    if (v27 > 1.0)
    {
      v25 = (v20 - v26 * v27) / (v27 + -1.0);
    }

    if ((*&v27 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    if (v27 <= -9.22337204e18)
    {
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    if (v27 >= 9.22337204e18)
    {
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    v28 = v27;
    if (v27 < 0)
    {
LABEL_35:
      __break(1u);
      return;
    }

    if (v28)
    {
      v29 = v26 + v25;
      v36 = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v27, 0);
      v30 = 0;
      v31 = v36;
      while (1)
      {
        v32 = v18 + v29 * v30;
        if (v32 > v26 + v32)
        {
          break;
        }

        v37 = v31;
        v34 = *(v31 + 16);
        v33 = *(v31 + 24);
        if (v34 >= v33 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v33 > 1), v34 + 1, 1);
          v31 = v37;
        }

        ++v30;
        *(v31 + 16) = v34 + 1;
        v35 = v31 + 16 * v34;
        *(v35 + 32) = v32;
        *(v35 + 40) = v26 + v32;
        if (v28 == v30)
        {
          return;
        }
      }

      __break(1u);
      goto LABEL_32;
    }
  }
}

void specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(double **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v5 = *a1;
    if (!*a1)
    {
      goto LABEL_128;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_122:
      v8 = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
    }

    v79 = v8 + 16;
    v80 = *(v8 + 2);
    if (v80 >= 2)
    {
      while (*a3)
      {
        v81 = &v8[16 * v80];
        v82 = *v81;
        v83 = &v79[2 * v80];
        v84 = v83[1];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 16 * *v81), (*a3 + 16 * *v83), (*a3 + 16 * v84), v5);
        if (v4)
        {
          goto LABEL_97;
        }

        if (v84 < v82)
        {
          goto LABEL_114;
        }

        if (v80 - 2 >= *v79)
        {
          goto LABEL_115;
        }

        *v81 = v82;
        *(v81 + 1) = v84;
        v85 = *v79 - v80;
        if (*v79 < v80)
        {
          goto LABEL_116;
        }

        v80 = *v79 - 1;
        memmove(v83, v83 + 2, 16 * v85);
        *v79 = v80;
        if (v80 <= 1)
        {
          goto LABEL_97;
        }
      }

      goto LABEL_126;
    }

LABEL_97:

    return;
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  v86 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 16 * v7);
      v11 = 16 * v9;
      v12 = (*a3 + 16 * v9);
      v14 = *v12;
      v13 = v12 + 4;
      v15 = v14;
      v16 = v9 + 2;
      v17 = v10;
      while (v6 != v16)
      {
        v18 = *v13;
        v13 += 2;
        v19 = v18 >= v17;
        ++v16;
        v17 = v18;
        if ((((v10 < v15) ^ v19) & 1) == 0)
        {
          v7 = v16 - 1;
          if (v10 >= v15)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v15)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v20 = 16 * v7 - 16;
        v21 = v7;
        v22 = v9;
        do
        {
          if (v22 != --v21)
          {
            v24 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v23 = *(v24 + v11);
            *(v24 + v11) = *(v24 + v20);
            *(v24 + v20) = v23;
          }

          ++v22;
          v20 -= 16;
          v11 += 16;
        }

        while (v22 < v21);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 2) + 1, 1, v8);
    }

    v5 = *(v8 + 2);
    v33 = *(v8 + 3);
    v34 = v5 + 1;
    if (v5 >= v33 >> 1)
    {
      v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v33 > 1), v5 + 1, 1, v8);
    }

    *(v8 + 2) = v34;
    v35 = v8 + 32;
    v36 = &v8[16 * v5 + 32];
    *v36 = v9;
    *(v36 + 1) = v7;
    v88 = *a1;
    if (!*a1)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v34 - 1;
        if (v34 >= 4)
        {
          break;
        }

        if (v34 == 3)
        {
          v37 = *(v8 + 4);
          v38 = *(v8 + 5);
          v47 = __OFSUB__(v38, v37);
          v39 = v38 - v37;
          v40 = v47;
LABEL_57:
          if (v40)
          {
            goto LABEL_104;
          }

          v53 = &v8[16 * v34];
          v55 = *v53;
          v54 = *(v53 + 1);
          v56 = __OFSUB__(v54, v55);
          v57 = v54 - v55;
          v58 = v56;
          if (v56)
          {
            goto LABEL_106;
          }

          v59 = &v35[16 * v5];
          v61 = *v59;
          v60 = *(v59 + 1);
          v47 = __OFSUB__(v60, v61);
          v62 = v60 - v61;
          if (v47)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v57, v62))
          {
            goto LABEL_111;
          }

          if (v57 + v62 >= v39)
          {
            if (v39 < v62)
            {
              v5 = v34 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v34 < 2)
        {
          goto LABEL_112;
        }

        v63 = &v8[16 * v34];
        v65 = *v63;
        v64 = *(v63 + 1);
        v47 = __OFSUB__(v64, v65);
        v57 = v64 - v65;
        v58 = v47;
LABEL_72:
        if (v58)
        {
          goto LABEL_108;
        }

        v66 = &v35[16 * v5];
        v68 = *v66;
        v67 = *(v66 + 1);
        v47 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v47)
        {
          goto LABEL_110;
        }

        if (v69 < v57)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v34)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v74 = &v35[16 * v5 - 16];
        v75 = *v74;
        v76 = &v35[16 * v5];
        v77 = *(v76 + 1);
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 16 * *v74), (*a3 + 16 * *v76), (*a3 + 16 * v77), v88);
        if (v4)
        {
          goto LABEL_97;
        }

        if (v77 < v75)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 2))
        {
          goto LABEL_100;
        }

        *v74 = v75;
        *(v74 + 1) = v77;
        v78 = *(v8 + 2);
        if (v5 >= v78)
        {
          goto LABEL_101;
        }

        v34 = v78 - 1;
        memmove(&v35[16 * v5], v76 + 16, 16 * (v78 - 1 - v5));
        *(v8 + 2) = v78 - 1;
        if (v78 <= 2)
        {
          goto LABEL_3;
        }
      }

      v41 = &v35[16 * v34];
      v42 = *(v41 - 8);
      v43 = *(v41 - 7);
      v47 = __OFSUB__(v43, v42);
      v44 = v43 - v42;
      if (v47)
      {
        goto LABEL_102;
      }

      v46 = *(v41 - 6);
      v45 = *(v41 - 5);
      v47 = __OFSUB__(v45, v46);
      v39 = v45 - v46;
      v40 = v47;
      if (v47)
      {
        goto LABEL_103;
      }

      v48 = &v8[16 * v34];
      v50 = *v48;
      v49 = *(v48 + 1);
      v47 = __OFSUB__(v49, v50);
      v51 = v49 - v50;
      if (v47)
      {
        goto LABEL_105;
      }

      v47 = __OFADD__(v39, v51);
      v52 = v39 + v51;
      if (v47)
      {
        goto LABEL_107;
      }

      if (v52 >= v44)
      {
        v70 = &v35[16 * v5];
        v72 = *v70;
        v71 = *(v70 + 1);
        v47 = __OFSUB__(v71, v72);
        v73 = v71 - v72;
        if (v47)
        {
          goto LABEL_113;
        }

        if (v39 < v73)
        {
          v5 = v34 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v86;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v25 = *a3;
  v26 = *a3 + 16 * v7 - 16;
  v27 = v9 - v7;
LABEL_30:
  v28 = *(v25 + 16 * v7);
  v29 = v27;
  v30 = v26;
  while (1)
  {
    if (v28 >= *v30)
    {
LABEL_29:
      ++v7;
      v26 += 16;
      --v27;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v25)
    {
      break;
    }

    v31 = *(v30 + 24);
    *(v30 + 16) = *v30;
    *v30 = v28;
    *(v30 + 8) = v31;
    v30 -= 16;
    if (__CFADD__(v29++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(double *__dst, double *__src, double *a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[2 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[2 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      if (*v6 < *v4)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 2;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 2;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 2;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[2 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[2 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 2;
    v5 -= 2;
    v18 = v14;
    do
    {
      v19 = v5 + 2;
      v20 = *(v18 - 2);
      v18 -= 2;
      if (v20 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 2, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 2;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v21 = v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0);
  if (v6 != v4 || v6 >= (v4 + (v21 & 0xFFFFFFFFFFFFFFF0)))
  {
    memmove(v6, v4, 16 * (v21 >> 4));
  }

  return 1;
}

uint64_t specialized static FocusableBorder.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v8 = *(a1 + 32);
  v6 = *(a2 + 32);
  v7 = *(a1 + 48);
  v5 = *(a2 + 48);
  v2 = CGRectEqualToRect(*a1, *a2);
  v3 = vmovn_s32(vuzp1q_s32(vceqq_f64(v8, v6), vceqq_f64(v7, v5)));
  v3.i16[0] = vminv_u16(v3);
  return v2 & v3.i32[0];
}

uint64_t getEnumTagSinglePayload for FocusableBounds(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 33))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t getEnumTagSinglePayload for FocusableFillerBounds(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 105))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for FocusableFillerBounds(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 104) = 0;
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

  *(result + 105) = v3;
  return result;
}

uint64_t assignWithCopy for LazyFocusableFillerBoundsProvider(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 32) = *(a2 + 32);
  v3 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = v3;
  *(a1 + 64) = *(a2 + 64);

  return a1;
}

uint64_t assignWithTake for LazyFocusableFillerBoundsProvider(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v3;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);

  return a1;
}

void *_sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF7SwiftUI5ColorVADE11ResolvedHDRV_sAC_pytTg503_s7c58UI13GraphicsImageV6encode2toyAA15ProtobufEncoderVz_tKFyAA5e6VAAE11F10HDRVKXEfU_AD0nO0VTf1cn_n(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((a3 & 0x100000000) == 0)
  {
    v7[0] = a1;
    v7[1] = a2;
    v5 = a3;
    v8 = a3;
    result = closure #1 in GraphicsImage.encode(to:)(v7, a4);
    if (v4)
    {
      return result;
    }

    a3 = v5;
  }

  return ((a3 & 0x100000000uLL) >> 32);
}

double GraphicsImage.size.getter()
{
  v1 = *(v0 + 16);
  result = 0.0;
  if (v1 != 0.0)
  {
    v3 = *(v0 + 24);
    if (*(v0 + 40) > 3u)
    {
      v3 = *(v0 + 32);
    }

    return 1.0 / v1 * v3;
  }

  return result;
}

void GraphicsImage.styleResolverMode.getter(uint64_t a1@<X8>)
{
  v2 = v1[8];
  if (v2 == 2)
  {
    v3 = *(*v1 + 16);
    v4 = *(*v1 + 32);
    v5 = *(*v1 + 48);
    v7 = v3;
    outlined copy of Image.Location(v4);
    v8 = v5;
    outlined copy of Image.Location(v4);
    v10 = v4;
    _ShapeStyle_ResolverMode.init(rbSymbolStyleMask:location:)([v7 styleMask], &v10, a1);

    outlined consume of Image.Location(v4);
  }

  else
  {
    if (v2 == 255)
    {
      *a1 = 0;
      *(a1 + 8) = 0;
    }

    else
    {
      v9 = (v1[64] & 1) == 0;
      *a1 = 0;
      *(a1 + 8) = v9;
    }

    *(a1 + 10) = 0;
  }
}

BOOL ResolvedVectorGlyph.isClear(styles:)(uint64_t *a1)
{
  v2 = *a1;
  if (([*v1 styleMask] & 0x1200) != 0)
  {
    return 0;
  }

  else
  {
    v6 = v2;
    v5 = 0;
    return _ShapeStyle_Pack.isClear(name:)(&v5);
  }
}

void GraphicsImage.Contents.init(_:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  outlined init with copy of GraphicsImage.WeakContents(a1, v10);
  if (v11)
  {
    if (v11 == 1)
    {
      outlined init with take of WeakBox<VectorImageContents>(v10, v9, &lazy cache variable for type metadata for WeakBox<IOSurfaceRef>, type metadata accessor for IOSurfaceRef);
      Strong = swift_unknownObjectWeakLoadStrong();
      outlined destroy of GraphicsImage.WeakContents(a1);
      outlined destroy of WeakBox<VectorImageContents>(v9, &lazy cache variable for type metadata for WeakBox<IOSurfaceRef>, type metadata accessor for IOSurfaceRef);
      if (Strong)
      {
        v5 = Strong;
        v6 = 1;
LABEL_9:
        outlined consume of GraphicsImage.Contents(v5, v6);
      }
    }

    else
    {
      outlined init with take of WeakBox<VectorImageContents>(v10, v9, &lazy cache variable for type metadata for WeakBox<VectorImageContents>, type metadata accessor for VectorImageContents);
      v8 = swift_weakLoadStrong();
      outlined destroy of GraphicsImage.WeakContents(a1);
      outlined destroy of WeakBox<VectorImageContents>(v9, &lazy cache variable for type metadata for WeakBox<VectorImageContents>, type metadata accessor for VectorImageContents);
      if (v8)
      {
        v5 = swift_allocObject();
        v5[4] = 0;
        v5[5] = 0;
        v5[2] = v8;
        v5[3] = 2;
        v6 = 3;
        goto LABEL_9;
      }
    }
  }

  else
  {
    outlined init with take of WeakBox<VectorImageContents>(v10, v9, &lazy cache variable for type metadata for WeakBox<CGImageRef>, type metadata accessor for CGImageRef);
    v7 = swift_unknownObjectWeakLoadStrong();
    outlined destroy of GraphicsImage.WeakContents(a1);
    outlined destroy of WeakBox<VectorImageContents>(v9, &lazy cache variable for type metadata for WeakBox<CGImageRef>, type metadata accessor for CGImageRef);
    if (v7)
    {
      v5 = v7;
      v6 = 0;
      goto LABEL_9;
    }
  }

  *a2 = 0;
  *(a2 + 8) = -1;
}

void GraphicsImage.WeakContents.init(_:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  if (v4 == 3)
  {
    swift_weakInit();
    swift_weakAssign();
    v5 = 2;
    goto LABEL_7;
  }

  if (v4 == 1)
  {
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakAssign();
    v5 = 1;
    goto LABEL_7;
  }

  if (!*(a1 + 8))
  {
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakAssign();
    v5 = 0;
LABEL_7:
    v6[8] = v5;
    outlined consume of GraphicsImage.Contents(v3, v4);
    outlined init with take of GraphicsImage.WeakContents(v6, a2);
    return;
  }

  outlined consume of GraphicsImage.Contents(*a1, v4);
  *a2 = 0;
  *(a2 + 8) = -1;
}

void GraphicsImage.contents.getter(uint64_t a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  v3 = *(v1 + 8);
  *(a1 + 8) = v3;
  outlined copy of GraphicsImage.Contents?(v2, v3);
}

void GraphicsImage.contents.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  outlined consume of GraphicsImage.Contents?(*v1, *(v1 + 8));
  *v1 = v2;
  *(v1 + 8) = v3;
}

uint64_t GraphicsImage.maskColor.setter(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(v3 + 44) = result;
  *(v3 + 52) = a2;
  *(v3 + 60) = a3;
  *(v3 + 64) = BYTE4(a3) & 1;
  return result;
}

__n128 GraphicsImage.resizingInfo.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 104);
  result = *(v1 + 72);
  v4 = *(v1 + 88);
  *a1 = result;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

__n128 GraphicsImage.resizingInfo.setter(uint64_t a1)
{
  v2 = *(a1 + 32);
  result = *a1;
  v4 = *(a1 + 16);
  *(v1 + 72) = *a1;
  *(v1 + 88) = v4;
  *(v1 + 104) = v2;
  return result;
}

double GraphicsImage.pixelSize.getter()
{
  result = *(v0 + 24);
  if (*(v0 + 40) > 3u)
  {
    return *(v0 + 32);
  }

  return result;
}

void *ResolvedVectorGlyph.styleResolverMode.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 16);
  outlined copy of Image.Location(v4);
  v6 = v4;
  return _ShapeStyle_ResolverMode.init(rbSymbolStyleMask:location:)([v3 styleMask], &v6, a1);
}

float GraphicsImage.headroom.getter()
{
  result = 1.0;
  if (!*(v0 + 8))
  {
    v2 = *v0;
    outlined copy of GraphicsImage.Contents(*v0, 0);
    v3 = CGImageGetColorSpace(v2);
    if (v3)
    {
      v4 = v3;
      if (CGColorSpaceUsesITUR_2100TF(v3))
      {
        if (CGImageGetHeadroom())
        {

          outlined consume of GraphicsImage.Contents?(v2, 0);
          return 0.0;
        }

        else
        {
          IsHLGBased = CGColorSpaceIsHLGBased(v4);
          outlined consume of GraphicsImage.Contents?(v2, 0);

          result = 8.0;
          if (IsHLGBased)
          {
            return 5.0;
          }
        }

        return result;
      }
    }

    outlined consume of GraphicsImage.Contents?(v2, 0);
    return 1.0;
  }

  return result;
}

void GraphicsImage.encode(to:)(uint64_t a1)
{
  v3 = v2;
  v5 = type metadata accessor for NamedImage.Key(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v1;
  v9 = *(v1 + 8);
  v11 = *(v1 + 2);
  v10 = *(v1 + 3);
  v12 = *(v1 + 4);
  v13 = *(v1 + 40);
  v14 = *(v1 + 44);
  v15 = *(v1 + 52);
  v62 = *(v1 + 15);
  v16 = *(v1 + 64);
  v90 = v16;
  v17 = v1[9];
  v18 = v1[10];
  v19 = v1[11];
  v20 = v1[12];
  v21 = *(v1 + 104);
  v22 = *(v1 + 105);
  v89 = v22;
  v23 = *(v1 + 106);
  v24 = *(v1 + 107);
  v57 = v23;
  v56 = v17;
  v55 = v18;
  v54 = v19;
  v53 = v20;
  v58 = v21;
  v60 = v14;
  v59 = v15;
  v61 = v13;
  switch(v9)
  {
    case 3:
      v34 = *(*&v8 + 24);

      outlined copy of Image.Location?(v34);

      specialized ProtobufEncoder.messageField<A>(_:_:)(3);

      outlined consume of Image.Location?(v34);

      if (v3)
      {
        return;
      }

LABEL_30:
      v28 = v62;
LABEL_31:
      if (v11 != 1.0)
      {
        v44 = fabs(v11);
        if (v44 >= 65536.0)
        {
          v45 = 41;
        }

        else
        {
          v45 = 45;
        }

        ProtobufEncoder.encodeVarint(_:)(v45);
        if (v44 < 65536.0)
        {
          v46 = *(a1 + 8);
          isUniquelyReferenced_nonNull_native = v46 + 4;
          if (!__OFADD__(v46, 4))
          {
            *&v11 = v11;
            if (*(a1 + 16) >= isUniquelyReferenced_nonNull_native)
            {
              *(a1 + 8) = isUniquelyReferenced_nonNull_native;
              *(*a1 + v46) = LODWORD(v11);
              goto LABEL_42;
            }

            goto LABEL_79;
          }

          goto LABEL_77;
        }

        v47 = *(a1 + 8);
        isUniquelyReferenced_nonNull_native = v47 + 8;
        if (!__OFADD__(v47, 8))
        {
          if (*(a1 + 16) < isUniquelyReferenced_nonNull_native)
          {
            *ProtobufEncoder.growBufferSlow(to:)(isUniquelyReferenced_nonNull_native) = v11;
          }

          else
          {
            *(a1 + 8) = isUniquelyReferenced_nonNull_native;
            *(*a1 + v47) = v11;
          }

          goto LABEL_42;
        }

        goto LABEL_78;
      }

      while (1)
      {
LABEL_42:
        ProtobufEncoder.encodeVarint(_:)(0x32uLL);
        v25 = *(a1 + 8);
        v26 = *(a1 + 24);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v26 + 2) + 1, 1, v26);
        }

        v49 = *(v26 + 2);
        v48 = *(v26 + 3);
        v7 = (v49 + 1);
        if (v49 >= v48 >> 1)
        {
          v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v48 > 1), v49 + 1, 1, v26);
        }

        *(v26 + 2) = v7;
        *&v26[8 * v49 + 32] = v25;
        *(a1 + 24) = v26;
        if (!__OFADD__(v25, 1))
        {
          break;
        }

        __break(1u);
LABEL_73:
        v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v26 + 2) + 1, 1, v26);
LABEL_10:
        v33 = *(v26 + 2);
        v32 = *(v26 + 3);
        if (v33 >= v32 >> 1)
        {
          v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v32 > 1), v33 + 1, 1, v26);
        }

        *(v26 + 2) = v33 + 1;
        *&v26[8 * v33 + 32] = v25;
        *(a1 + 24) = v26;
        if (!__OFADD__(v25, 1))
        {
          *(a1 + 8) = v25 + 1;
          NamedImage.Key.encode(to:)(a1);
          if (v3)
          {
            outlined destroy of (GraphicsImage.WeakContents, GraphicsImage.WeakContents)(v7, type metadata accessor for NamedImage.Key);
            return;
          }

          ProtobufEncoder.endLengthDelimited()();
          outlined destroy of (GraphicsImage.WeakContents, GraphicsImage.WeakContents)(v7, type metadata accessor for NamedImage.Key);
          goto LABEL_30;
        }

        __break(1u);
LABEL_75:
        isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v26 + 2) + 1, 1, v26);
        v26 = isUniquelyReferenced_nonNull_native;
LABEL_5:
        v28 = v62;
        v30 = *(v26 + 2);
        v29 = *(v26 + 3);
        if (v30 >= v29 >> 1)
        {
          isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v29 > 1), v30 + 1, 1, v26);
          v26 = isUniquelyReferenced_nonNull_native;
        }

        *(v26 + 2) = v30 + 1;
        *&v26[8 * v30 + 32] = v25;
        *(a1 + 24) = v26;
        if (!__OFADD__(v25, 1))
        {
          *(a1 + 8) = v25 + 1;
          Color.ResolvedHDR.encode(to:)(a1);
          ProtobufEncoder.endLengthDelimited()();
          goto LABEL_31;
        }

        __break(1u);
LABEL_77:
        __break(1u);
LABEL_78:
        __break(1u);
LABEL_79:
        *ProtobufEncoder.growBufferSlow(to:)(isUniquelyReferenced_nonNull_native) = LODWORD(v11);
      }

      *(a1 + 8) = v25 + 1;
      CGSize.encode(to:)(a1, v10, v12);
      ProtobufEncoder.endLengthDelimited()();
      if (v61 > 3u)
      {
        if (v61 > 5u)
        {
          if (v61 == 6)
          {
            v50 = 7;
          }

          else
          {
            v50 = 5;
          }
        }

        else if (v61 == 4)
        {
          v50 = 1;
        }

        else
        {
          v50 = 3;
        }
      }

      else if (v61 > 1u)
      {
        if (v61 == 2)
        {
          v50 = 6;
        }

        else
        {
          v50 = 4;
        }
      }

      else
      {
        if (!v61)
        {
          goto LABEL_62;
        }

        v50 = 2;
      }

      ProtobufEncoder.encodeVarint(_:)(0x38uLL);
      ProtobufEncoder.encodeVarint(_:)(v50);
LABEL_62:
      LOBYTE(v63) = v90;
      _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF7SwiftUI5ColorVADE11ResolvedHDRV_sAC_pytTg503_s7c58UI13GraphicsImageV6encode2toyAA15ProtobufEncoderVz_tKFyAA5e6VAAE11F10HDRVKXEfU_AD0nO0VTf1cn_n(v60, v59, v28 | (v90 << 32), a1);
      if (!v3)
      {
        if (v58 != 2)
        {
          v85[0] = v56;
          v85[1] = v55;
          v85[2] = v54;
          v85[3] = v53;
          v86 = v58 & 1;
          ProtobufEncoder.encodeVarint(_:)(0x4AuLL);
          specialized ProtobufEncoder.encodeMessage<A>(_:)(v85);
        }

        if (v89 != 1)
        {
          ProtobufEncoder.encodeVarint(_:)(0x50uLL);
          ProtobufEncoder.encodeVarint(_:)(0);
        }

        v51 = v57;
        if (v57 != 1)
        {
          ProtobufEncoder.encodeVarint(_:)(0x58uLL);
          ProtobufEncoder.encodeVarint(_:)(v51);
        }

        if (v24)
        {
          ProtobufEncoder.encodeVarint(_:)(0x60uLL);
          ProtobufEncoder.encodeVarint(_:)(v24);
        }
      }

      return;
    case 5:
      v31 = swift_projectBox();
      outlined init with copy of NamedImage.Key(v31, v7);
      ProtobufEncoder.encodeVarint(_:)(0x22uLL);
      v25 = *(a1 + 8);
      v26 = *(a1 + 24);
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_10;
      }

      goto LABEL_73;
    case 4:
      v87 = *(*&v8 + 16);
      v88 = *(*&v8 + 32);
      ProtobufEncoder.encodeVarint(_:)(0xAuLL);
      v25 = *(a1 + 8);
      v26 = *(a1 + 24);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_5;
      }

      goto LABEL_75;
  }

  v63 = v8;
  v64 = v9;
  *v65 = *(v1 + 9);
  *&v65[3] = *(v1 + 3);
  v66 = v11;
  v67 = v10;
  v68 = v12;
  v69 = v13;
  v70 = *(v1 + 41);
  v71 = *(v1 + 43);
  v72 = v14;
  v73 = v15;
  v74 = v62;
  v75 = v16;
  v35 = *(v1 + 65);
  *&v76[3] = *(v1 + 17);
  *v76 = v35;
  v77 = v17;
  v78 = v18;
  v79 = v19;
  v80 = v20;
  v81 = v21;
  v36 = 0.0;
  v82 = v22;
  v83 = v23;
  v37 = 0.0;
  v84 = v24;
  if (v11 == 0.0)
  {
    goto LABEL_26;
  }

  v38 = v12;
  v39 = v10;
  if (v13 > 3)
  {
    v38 = v10;
    v39 = v12;
    if (v13 <= 5)
    {
      if (v13 == 4)
      {
        goto LABEL_25;
      }

      goto LABEL_24;
    }

    if (v13 != 6)
    {
LABEL_24:
      v38 = v10;
      v39 = v12;
    }
  }

LABEL_25:
  v36 = 1.0 / v11 * v39;
  v37 = 1.0 / v11 * v38;
LABEL_26:
  v52 = v24;
  v40.value = GraphicsImage.render(at:prefersMask:)(__PAIR128__(*&v37, *&v36), 0).value;
  if (!v40.value)
  {
    v24 = v52;
    goto LABEL_30;
  }

  value = v40.value;
  v63 = v8;
  v64 = v9;
  *v65 = *(v1 + 9);
  *&v65[3] = *(v1 + 3);
  v66 = v11;
  v67 = v10;
  v68 = v12;
  v69 = v61;
  v70 = *(v1 + 41);
  v71 = *(v1 + 43);
  v72 = v60;
  v73 = v59;
  v28 = v62;
  v74 = v62;
  v75 = v16;
  v42 = *(v1 + 65);
  *&v76[3] = *(v1 + 17);
  *v76 = v42;
  v77 = v56;
  v78 = v55;
  v79 = v54;
  v80 = v53;
  v81 = v58;
  v82 = v22;
  v83 = v57;
  v24 = v52;
  v84 = v52;
  v43 = GraphicsImage.bitmapOrientation.getter();
  ProtobufEncoder.encodeVarint(_:)(0x12uLL);
  specialized ProtobufEncoder.encodeMessage<A>(_:)(value);

  if (!v3)
  {
    v61 = v43;
    goto LABEL_31;
  }
}

uint64_t closure #1 in GraphicsImage.encode(to:)(uint64_t a1, uint64_t a2)
{
  ProtobufEncoder.encodeVarint(_:)(0x42uLL);
  v3 = *(a2 + 8);
  v4 = *(a2 + 24);
  result = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + 24) = v4;
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v4 + 16) + 1, 1, v4);
    v4 = result;
    *(a2 + 24) = result;
  }

  v7 = *(v4 + 16);
  v6 = *(v4 + 24);
  if (v7 >= v6 >> 1)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v7 + 1, 1, v4);
    v4 = result;
    *(a2 + 24) = result;
  }

  *(v4 + 16) = v7 + 1;
  *(v4 + 8 * v7 + 32) = v3;
  if (__OFADD__(v3, 1))
  {
    __break(1u);
  }

  else
  {
    *(a2 + 8) = v3 + 1;
    Color.ResolvedHDR.encode(to:)(a2);
    return ProtobufEncoder.endLengthDelimited()();
  }

  return result;
}

id ResolvedVectorGlyph.location.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = v2;
  return outlined copy of Image.Location(v2);
}

uint64_t ResolvedVectorGlyph.init(glyph:value:flipsRightToLeft:in:at:catalog:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v13 = *a5;
  v14 = *(a4 + 16);
  if (v14)
  {
    if ((a2 & 0x100000000) != 0)
    {
      v15 = INFINITY;
    }

    else
    {
      v15 = *&a2;
    }

    v16 = v14;
    v17 = ImageResolutionContext.willUpdateVectorGlyph(to:variableValue:)(a1, v15);
  }

  else
  {
    v16 = [objc_allocWithZone(MEMORY[0x1E69C7108]) init];
    [v16 setAnchorPoint_];
    v17 = 0;
    if ((a2 & 0x100000000) != 0)
    {
      v15 = INFINITY;
    }

    else
    {
      v15 = *&a2;
    }
  }

  [v16 setGlyph_];
  [v16 setVariableValue_];
  [v16 setFlipsRightToLeft_];
  ImageResolutionContext.updateSymbolAnimator(_:)(v16);
  v18 = *a4;
  if (*(a4 + 8))
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesV015LayoutDirectionI0VG_Tt1g5(v18, &v24);

    v19 = v24;
  }

  else
  {
    v20 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesV015LayoutDirectionS0VG_Tt0g5(*a4);
    if (v20)
    {
      v19 = *(v20 + 72);
    }

    else
    {
      v19 = 0;
    }
  }

  v21 = [v16 version];

  v22 = *(a4 + *(type metadata accessor for ImageResolutionContext(0) + 40));
  result = outlined destroy of (GraphicsImage.WeakContents, GraphicsImage.WeakContents)(a4, type metadata accessor for ImageResolutionContext);
  *a7 = v16;
  *(a7 + 8) = v19;
  *(a7 + 16) = v13;
  *(a7 + 24) = v21;
  *(a7 + 28) = v17 & 1;
  *(a7 + 29) = (v22 & 0x10) != 0;
  *(a7 + 32) = a6;
  return result;
}

id ResolvedVectorGlyph.glyph.getter()
{
  v1 = [*v0 glyph];

  return v1;
}

unint64_t ResolvedVectorGlyph.value.getter()
{
  [*v0 variableValue];
  if ((*&v1 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    v3 = 0;
  }

  else
  {
    *&v2 = v1;
    v3 = v2;
  }

  return v3 | (((*&v1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL) << 32);
}

id ResolvedVectorGlyph.renderingMode.getter@<X0>(char *a1@<X8>)
{
  result = [*v1 renderingMode];
  if (result == 130)
  {
    v4 = 7;
  }

  else
  {
    v4 = 8;
  }

  if (result == 129)
  {
    v5 = 6;
  }

  else
  {
    v5 = v4;
  }

  if (result == 128)
  {
    v6 = 5;
  }

  else
  {
    v6 = 8;
  }

  if (result == 4)
  {
    v7 = 3;
  }

  else
  {
    v7 = v6;
  }

  if (result <= 128)
  {
    v5 = v7;
  }

  if (result == 3)
  {
    v8 = 2;
  }

  else
  {
    v8 = 8;
  }

  if (result == 2)
  {
    v9 = 1;
  }

  else
  {
    v9 = v8;
  }

  if (result == 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = 8;
  }

  if (!result)
  {
    v10 = 4;
  }

  if (result > 1)
  {
    v10 = v9;
  }

  if (result > 3)
  {
    v10 = v5;
  }

  *a1 = v10;
  return result;
}

void ResolvedVectorGlyph.resolvedRenderingMode.getter(char *a1@<X8>)
{
  v3 = *v1;
  v4 = [v3 renderingMode];
  v5 = 8;
  if (v4 > 3)
  {
    if (v4 > 128)
    {
      if (v4 == 129)
      {
        v5 = 6;
      }

      else if (v4 == 130)
      {
        v5 = 7;
      }
    }

    else if (v4 == 4)
    {
      v5 = 3;
    }

    else if (v4 == 128)
    {
      v5 = 5;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = 1;
    }

    else
    {
      v5 = 2;
    }
  }

  else if (v4)
  {
    if (v4 == 1)
    {
      v5 = 0;
    }
  }

  else
  {
    v6 = [v3 glyph];
    if (v6)
    {
      v7 = v6;
      v8 = [v6 preferredRenderingMode];

      if (v8 == 2)
      {
        v5 = 1;
      }

      else
      {
        v5 = 8;
      }

      if (v8 == 3)
      {
        v5 = 2;
      }
    }

    else
    {
      v5 = 4;
    }
  }

  *a1 = v5;
}

uint64_t outlined init with take of WeakBox<VectorImageContents>(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  type metadata accessor for WeakBox<VectorImageContents>(0, a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t outlined destroy of WeakBox<VectorImageContents>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  type metadata accessor for WeakBox<VectorImageContents>(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void type metadata accessor for WeakBox<VectorImageContents>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    v5 = a3(255);
    v8 = type metadata accessor for WeakBox(a1, v5, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

BOOL specialized static GraphicsImage.WeakContents.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  outlined init with copy of GraphicsImage.WeakContents(a1, v12);
  outlined init with copy of GraphicsImage.WeakContents(a2, &v14);
  if (v13)
  {
    if (v13 == 1)
    {
      outlined init with copy of GraphicsImage.WeakContents(v12, v11);
      if (v15 == 1)
      {
        outlined init with take of WeakBox<VectorImageContents>(v11, v10, &lazy cache variable for type metadata for WeakBox<IOSurfaceRef>, type metadata accessor for IOSurfaceRef);
        outlined init with take of WeakBox<VectorImageContents>(&v14, &v9, &lazy cache variable for type metadata for WeakBox<IOSurfaceRef>, type metadata accessor for IOSurfaceRef);
        Strong = swift_unknownObjectWeakLoadStrong();
        v4 = swift_unknownObjectWeakLoadStrong();
        outlined destroy of WeakBox<VectorImageContents>(&v9, &lazy cache variable for type metadata for WeakBox<IOSurfaceRef>, type metadata accessor for IOSurfaceRef);
        outlined destroy of WeakBox<VectorImageContents>(v10, &lazy cache variable for type metadata for WeakBox<IOSurfaceRef>, type metadata accessor for IOSurfaceRef);
        if (Strong)
        {
          if (v4)
          {
LABEL_6:

LABEL_13:
            v7 = Strong == v4;
LABEL_26:
            outlined destroy of GraphicsImage.WeakContents(v12);
            return v7;
          }

          goto LABEL_19;
        }

LABEL_20:
        if (v4)
        {

          goto LABEL_25;
        }

LABEL_23:
        v7 = 1;
        goto LABEL_26;
      }

      v5 = &lazy cache variable for type metadata for WeakBox<IOSurfaceRef>;
      v6 = type metadata accessor for IOSurfaceRef;
    }

    else
    {
      outlined init with copy of GraphicsImage.WeakContents(v12, v11);
      if (v15 == 2)
      {
        outlined init with take of WeakBox<VectorImageContents>(v11, v10, &lazy cache variable for type metadata for WeakBox<VectorImageContents>, type metadata accessor for VectorImageContents);
        outlined init with take of WeakBox<VectorImageContents>(&v14, &v9, &lazy cache variable for type metadata for WeakBox<VectorImageContents>, type metadata accessor for VectorImageContents);
        Strong = swift_weakLoadStrong();
        v4 = swift_weakLoadStrong();
        outlined destroy of WeakBox<VectorImageContents>(&v9, &lazy cache variable for type metadata for WeakBox<VectorImageContents>, type metadata accessor for VectorImageContents);
        outlined destroy of WeakBox<VectorImageContents>(v10, &lazy cache variable for type metadata for WeakBox<VectorImageContents>, type metadata accessor for VectorImageContents);
        if (Strong)
        {
          if (v4)
          {

            goto LABEL_13;
          }
        }

        else if (!v4)
        {
          goto LABEL_23;
        }

        goto LABEL_25;
      }

      v5 = &lazy cache variable for type metadata for WeakBox<VectorImageContents>;
      v6 = type metadata accessor for VectorImageContents;
    }
  }

  else
  {
    outlined init with copy of GraphicsImage.WeakContents(v12, v11);
    if (!v15)
    {
      outlined init with take of WeakBox<VectorImageContents>(v11, v10, &lazy cache variable for type metadata for WeakBox<CGImageRef>, type metadata accessor for CGImageRef);
      outlined init with take of WeakBox<VectorImageContents>(&v14, &v9, &lazy cache variable for type metadata for WeakBox<CGImageRef>, type metadata accessor for CGImageRef);
      Strong = swift_unknownObjectWeakLoadStrong();
      v4 = swift_unknownObjectWeakLoadStrong();
      outlined destroy of WeakBox<VectorImageContents>(&v9, &lazy cache variable for type metadata for WeakBox<CGImageRef>, type metadata accessor for CGImageRef);
      outlined destroy of WeakBox<VectorImageContents>(v10, &lazy cache variable for type metadata for WeakBox<CGImageRef>, type metadata accessor for CGImageRef);
      if (Strong)
      {
        if (v4)
        {
          goto LABEL_6;
        }

LABEL_19:

LABEL_25:
        v7 = 0;
        goto LABEL_26;
      }

      goto LABEL_20;
    }

    v5 = &lazy cache variable for type metadata for WeakBox<CGImageRef>;
    v6 = type metadata accessor for CGImageRef;
  }

  outlined destroy of WeakBox<VectorImageContents>(v11, v5, v6);
  outlined destroy of (GraphicsImage.WeakContents, GraphicsImage.WeakContents)(v12, type metadata accessor for (GraphicsImage.WeakContents, GraphicsImage.WeakContents));
  return 0;
}

uint64_t outlined init with copy of NamedImage.Key(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NamedImage.Key(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of (GraphicsImage.WeakContents, GraphicsImage.WeakContents)(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t assignWithCopy for GraphicsImage(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (*(a1 + 8) == 255)
  {
    if (v4 == 255)
    {
      v10 = *a2;
      *(a1 + 8) = *(a2 + 8);
      *a1 = v10;
    }

    else
    {
      v8 = *a2;
      outlined copy of GraphicsImage.Contents(*a2, *(a2 + 8));
      *a1 = v8;
      *(a1 + 8) = v4;
    }
  }

  else if (v4 == 255)
  {
    outlined destroy of GraphicsImage.Contents(a1);
    v9 = *(a2 + 8);
    *a1 = *a2;
    *(a1 + 8) = v9;
  }

  else
  {
    v5 = *a2;
    outlined copy of GraphicsImage.Contents(*a2, *(a2 + 8));
    v6 = *a1;
    *a1 = v5;
    v7 = *(a1 + 8);
    *(a1 + 8) = v4;
    outlined consume of GraphicsImage.Contents(v6, v7);
  }

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  v11 = *(a2 + 44);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 44) = v11;
  v12 = *(a2 + 72);
  v13 = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 88) = v13;
  *(a1 + 72) = v12;
  *(a1 + 105) = *(a2 + 105);
  *(a1 + 106) = *(a2 + 106);
  *(a1 + 107) = *(a2 + 107);
  return a1;
}

__n128 assignWithTake for GraphicsImage(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (v3 == 255)
  {
    *a1 = *a2;
    *(a1 + 8) = *(a2 + 8);
  }

  else
  {
    v4 = *(a2 + 8);
    if (v4 == 255)
    {
      v7 = a1;
      outlined destroy of GraphicsImage.Contents(a1);
      a1 = v7;
      *v7 = *a2;
      *(v7 + 8) = *(a2 + 8);
    }

    else
    {
      v5 = *a1;
      *a1 = *a2;
      *(a1 + 8) = v4;
      v6 = a1;
      outlined consume of GraphicsImage.Contents(v5, v3);
      a1 = v6;
    }
  }

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 72) = *(a2 + 72);
  result = *(a2 + 88);
  *(a1 + 88) = result;
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 105) = *(a2 + 105);
  *(a1 + 106) = *(a2 + 106);
  return result;
}

uint64_t getEnumTagSinglePayload for GraphicsImage(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 108))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 105);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for GraphicsImage(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 104) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 108) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 108) = 0;
    }

    if (a2)
    {
      *(result + 105) = a2 + 1;
    }
  }

  return result;
}

uint64_t assignWithCopy for GraphicsImage.Contents(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  outlined copy of GraphicsImage.Contents(*a2, v4);
  v5 = *a1;
  *a1 = v3;
  v6 = *(a1 + 8);
  *(a1 + 8) = v4;
  outlined consume of GraphicsImage.Contents(v5, v6);
  return a1;
}

uint64_t assignWithTake for GraphicsImage.Contents(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v4 = *a1;
  *a1 = *a2;
  v5 = *(a1 + 8);
  *(a1 + 8) = v3;
  outlined consume of GraphicsImage.Contents(v4, v5);
  return a1;
}

uint64_t getEnumTagSinglePayload for GraphicsImage.Contents(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 9))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 8);
  if (v3 <= 5)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for GraphicsImage.Contents(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 8) = 0;
    *result = a2 - 251;
    if (a3 >= 0xFB)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t destroy for GraphicsImage.WeakContents(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 3)
  {
    v1 = *a1 + 3;
  }

  if (v1 != 2)
  {
    JUMPOUT(0x193AC4950);
  }

  return swift_weakDestroy();
}

uint64_t assignWithCopy for GraphicsImage.WeakContents(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = *(a1 + 8);
    if (v4 >= 3)
    {
      v4 = *a1 + 3;
    }

    if (v4 == 2)
    {
      swift_weakDestroy();
    }

    else
    {
      MEMORY[0x193AC4950](a1);
    }

    v5 = *(a2 + 8);
    if (v5 >= 3)
    {
      v5 = *a2 + 3;
    }

    if (v5 == 2)
    {
      swift_weakCopyInit();
      v6 = 2;
    }

    else if (v5 == 1)
    {
      swift_unknownObjectWeakCopyInit();
      v6 = 1;
    }

    else
    {
      swift_unknownObjectWeakCopyInit();
      v6 = 0;
    }

    *(a1 + 8) = v6;
  }

  return a1;
}

uint64_t initializeWithCopy for GraphicsImage.WeakContents(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t))
{
  v5 = *(a2 + 8);
  if (v5 >= 3)
  {
    v5 = *a2 + 3;
  }

  if (v5 == 2)
  {
    result = a5(a1);
    v7 = 2;
  }

  else if (v5 == 1)
  {
    result = a4(a1);
    v7 = 1;
  }

  else
  {
    result = a4(a1);
    v7 = 0;
  }

  *(result + 8) = v7;
  return result;
}

uint64_t assignWithTake for GraphicsImage.WeakContents(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = *(a1 + 8);
    if (v4 >= 3)
    {
      v4 = *a1 + 3;
    }

    if (v4 == 2)
    {
      swift_weakDestroy();
    }

    else
    {
      MEMORY[0x193AC4950](a1);
    }

    v5 = *(a2 + 8);
    if (v5 >= 3)
    {
      v5 = *a2 + 3;
    }

    if (v5 == 2)
    {
      swift_weakTakeInit();
      v6 = 2;
    }

    else if (v5 == 1)
    {
      swift_unknownObjectWeakTakeInit();
      v6 = 1;
    }

    else
    {
      swift_unknownObjectWeakTakeInit();
      v6 = 0;
    }

    *(a1 + 8) = v6;
  }

  return a1;
}

uint64_t getEnumTagSinglePayload for GraphicsImage.WeakContents(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  if (v3 >= 3)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for GraphicsImage.WeakContents(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTag for GraphicsImage.WeakContents(uint64_t a1)
{
  result = *(a1 + 8);
  if (result >= 3)
  {
    return (*a1 + 3);
  }

  return result;
}

uint64_t destructiveInjectEnumTag for GraphicsImage.WeakContents(uint64_t result, unsigned int a2)
{
  if (a2 > 2)
  {
    *result = 0;
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t assignWithCopy for ResolvedVectorGlyph(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  *(a1 + 8) = *(a2 + 8);
  v7 = *(a1 + 16);
  v8 = *(a2 + 16);
  if (v7 >= 2)
  {
    if (v8 >= 2)
    {
      *(a1 + 16) = v8;
      v10 = v8;

      goto LABEL_8;
    }

    v8 = *(a2 + 16);
    goto LABEL_6;
  }

  if (v8 < 2)
  {
LABEL_6:
    *(a1 + 16) = v8;
    goto LABEL_8;
  }

  *(a1 + 16) = v8;
  v9 = v8;
LABEL_8:
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 29) = *(a2 + 29);
  v11 = *(a2 + 32);
  v12 = *(a1 + 32);
  *(a1 + 32) = v11;
  v13 = v11;

  return a1;
}

uint64_t assignWithTake for ResolvedVectorGlyph(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  v5 = *(a1 + 16);
  v6 = *(a2 + 16);
  if (v5 >= 2)
  {
    if (v6 >= 2)
    {
      *(a1 + 16) = v6;

      goto LABEL_6;
    }
  }

  *(a1 + 16) = v6;
LABEL_6:
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 29) = *(a2 + 29);
  v7 = *(a1 + 32);
  *(a1 + 32) = *(a2 + 32);

  return a1;
}

void type metadata accessor for (GraphicsImage.WeakContents, GraphicsImage.WeakContents)()
{
  if (!lazy cache variable for type metadata for (GraphicsImage.WeakContents, GraphicsImage.WeakContents))
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (GraphicsImage.WeakContents, GraphicsImage.WeakContents));
    }
  }
}

SwiftUI::DiffResult::Move __swiftcall DiffResult.Move.init(remove:insert:)(Swift::Int remove, Swift::Int insert)
{
  *v2 = remove;
  v2[1] = insert;
  result.insert = insert;
  result.remove = remove;
  return result;
}

uint64_t DiffResult.Move.hash(into:)()
{
  v1 = v0[1];
  MEMORY[0x193AC11A0](*v0);
  return MEMORY[0x193AC11A0](v1);
}

Swift::Int DiffResult.Move.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](v1);
  MEMORY[0x193AC11A0](v2);
  return Hasher._finalize()();
}

uint64_t DiffResult.removes.setter(uint64_t a1)
{
  v3 = type metadata accessor for IndexSet();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

double DiffResult.moves.getter()
{
  type metadata accessor for DiffResult(0);

  return result;
}

void DiffResult.moves.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for DiffResult(0) + 20);

  *(v1 + v3) = a1;
}

uint64_t DiffResult.inserts.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for DiffResult(0) + 24);
  v4 = type metadata accessor for IndexSet();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t DiffResult.init(removes:moves:inserts:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for IndexSet();
  v12 = *(*(v8 - 8) + 32);
  (v12)((v8 - 8), a4, a1, v8);
  v9 = type metadata accessor for DiffResult(0);
  *(a4 + *(v9 + 20)) = a2;
  v10 = a4 + *(v9 + 24);

  return v12(v10, a3, v8);
}

uint64_t DiffResult.isEmpty.getter()
{
  if ((IndexSet.isEmpty.getter() & 1) != 0 && !*(*(v0 + *(type metadata accessor for DiffResult(0) + 20)) + 16))
  {
    return IndexSet.isEmpty.getter() & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t static DiffResult.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (MEMORY[0x193ABDD70]())
  {
    v4 = type metadata accessor for DiffResult(0);
    if (_sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI10DiffResultV4MoveV_Tt1g5(*(a1 + *(v4 + 20)), *(a2 + *(v4 + 20))))
    {

      JUMPOUT(0x193ABDD70);
    }
  }

  return 0;
}

uint64_t DiffResult.hash(into:)(uint64_t a1)
{
  type metadata accessor for IndexSet();
  lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type IndexSet and conformance IndexSet, MEMORY[0x1E6969B50], MEMORY[0x1E6969B60]);
  dispatch thunk of Hashable.hash(into:)();
  v2 = *(v1 + *(type metadata accessor for DiffResult(0) + 20));
  MEMORY[0x193AC11A0](*(v2 + 16));
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = (v2 + 40);
    do
    {
      v5 = *v4;
      MEMORY[0x193AC11A0](*(v4 - 1));
      MEMORY[0x193AC11A0](v5);
      v4 += 2;
      --v3;
    }

    while (v3);
  }

  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int DiffResult.hashValue.getter()
{
  Hasher.init(_seed:)();
  type metadata accessor for IndexSet();
  lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type IndexSet and conformance IndexSet, MEMORY[0x1E6969B50], MEMORY[0x1E6969B60]);
  dispatch thunk of Hashable.hash(into:)();
  v1 = *(v0 + *(type metadata accessor for DiffResult(0) + 20));
  MEMORY[0x193AC11A0](*(v1 + 16));
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 40);
    do
    {
      v4 = *v3;
      MEMORY[0x193AC11A0](*(v3 - 1));
      MEMORY[0x193AC11A0](v4);
      v3 += 2;
      --v2;
    }

    while (v2);
  }

  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance DiffResult(uint64_t a1)
{
  Hasher.init(_seed:)();
  DiffResult.hash(into:)(v2);
  return Hasher._finalize()();
}

void lazy protocol witness table accessor for type DiffResult.Move and conformance DiffResult.Move()
{
  if (!lazy protocol witness table cache variable for type DiffResult.Move and conformance DiffResult.Move)
  {
    swift_getWitnessTable(protocol conformance descriptor for DiffResult.Move, &type metadata for DiffResult.Move, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type DiffResult.Move and conformance DiffResult.Move);
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance DiffResult(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (MEMORY[0x193ABDD70]() & 1) != 0 && (_sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI10DiffResultV4MoveV_Tt1g5(*(a1 + *(a3 + 20)), *(a2 + *(a3 + 20))))
  {

    JUMPOUT(0x193ABDD70);
  }

  return 0;
}

char *initializeBufferWithCopyOfBuffer for DiffResult(char *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v11 = *a2;
    *a1 = *a2;
    a1 = (v11 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = type metadata accessor for IndexSet();
    v8 = *(*(v7 - 8) + 16);
    v8(a1, a2, v7);
    v9 = *(a3 + 20);
    v10 = *(a3 + 24);
    *&a1[v9] = *(a2 + v9);

    v8(&a1[v10], (a2 + v10), v7);
  }

  return a1;
}

uint64_t initializeWithCopy for DiffResult(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for IndexSet();
  v7 = *(*(v6 - 8) + 16);
  v7(a1, a2, v6);
  v8 = *(a3 + 20);
  v9 = *(a3 + 24);
  *(a1 + v8) = *(a2 + v8);

  v7(a1 + v9, a2 + v9, v6);
  return a1;
}

uint64_t assignWithCopy for DiffResult(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for IndexSet();
  v7 = *(*(v6 - 8) + 24);
  v7(a1, a2, v6);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));

  v7(a1 + *(a3 + 24), a2 + *(a3 + 24), v6);
  return a1;
}

uint64_t initializeWithTake for DiffResult(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for IndexSet();
  v7 = *(*(v6 - 8) + 32);
  v7(a1, a2, v6);
  v8 = *(a3 + 24);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  v7(a1 + v8, a2 + v8, v6);
  return a1;
}

uint64_t assignWithTake for DiffResult(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for IndexSet();
  v7 = *(*(v6 - 8) + 40);
  v7(a1, a2, v6);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));

  v7(a1 + *(a3 + 24), a2 + *(a3 + 24), v6);
  return a1;
}

uint64_t *initializeBufferWithCopyOfBuffer for IndexSetBuilder(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v11 = *a2;
    *a1 = *a2;
    a1 = (v11 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = type metadata accessor for IndexSet();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
    v8 = *(a3 + 20);
    v9 = a1 + v8;
    v10 = a2 + v8;
    *v9 = *v10;
    v9[16] = v10[16];
  }

  return a1;
}

uint64_t destroy for IndexSetBuilder(uint64_t a1)
{
  v2 = type metadata accessor for IndexSet();
  v3 = *(*(v2 - 8) + 8);

  return v3(a1, v2);
}

uint64_t assignWithCopy for IndexSetBuilder(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for IndexSet();
  (*(*(v6 - 8) + 24))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = a1 + v7;
  v9 = a2 + v7;
  v10 = *(v9 + 16);
  *v8 = *v9;
  *(v8 + 16) = v10;
  return a1;
}

uint64_t initializeWithTake for IndexSetBuilder(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for IndexSet();
  (*(*(v6 - 8) + 32))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = a1 + v7;
  v9 = a2 + v7;
  *v8 = *v9;
  *(v8 + 16) = *(v9 + 16);
  return a1;
}

uint64_t assignWithTake for IndexSetBuilder(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for IndexSet();
  (*(*(v6 - 8) + 40))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = a1 + v7;
  v9 = a2 + v7;
  *v8 = *v9;
  *(v8 + 16) = *(v9 + 16);
  return a1;
}

uint64_t HeterogeneousCollection.differenceWithDuplicates(to:)@<X0>(__int128 *a1@<X0>, char *a2@<X8>)
{
  v81 = a2;
  v92 = type metadata accessor for IndexSetBuilder(0);
  MEMORY[0x1EEE9AC00](v92);
  v84 = &v73 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v78 = &v73 - v6;
  v80 = type metadata accessor for IndexSet();
  v83 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80);
  v79 = &v73 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v87 = &v73 - v9;
  type metadata accessor for CollectionDifference<AnyHashable2>(0, &lazy cache variable for type metadata for CollectionDifference<AnyHashable2>, MEMORY[0x1E69E6EF0]);
  v11 = v10;
  v96 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v73 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v73 - v15;
  v17 = type metadata accessor for DiffResultBuilder(0);
  MEMORY[0x1EEE9AC00](v17);
  v86 = &v73 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v73 - v20;
  v22 = *(a1 + 2);
  v23 = *(a1 + 3);
  v24 = v2[1];
  v99 = *v2;
  v100 = v24;
  HeterogeneousCollection.asAnyHashable2()();
  v26 = v25;
  v99 = *a1;
  *&v100 = v22;
  *(&v100 + 1) = v23;
  HeterogeneousCollection.asAnyHashable2()();
  v28 = v27;
  IndexSet.init()();
  v29 = v92;
  v30 = &v21[*(v92 + 20)];
  *v30 = 0;
  *(v30 + 1) = 0;
  v82 = v30;
  v30[16] = 1;
  v88 = v17;
  v31 = *(v17 + 24);
  v95 = v21;
  v32 = &v21[v31];
  IndexSet.init()();
  v33 = *(v29 + 20);
  v73 = v32;
  v34 = &v32[v33];
  *v34 = 0;
  *(v34 + 1) = 0;
  v74 = v34;
  v94 = 1;
  v34[16] = 1;
  v76 = v28;
  v98 = v26;
  *&v99 = v28;
  v77 = v26;
  type metadata accessor for CollectionDifference<AnyHashable2>(0, &lazy cache variable for type metadata for [AnyHashable2], MEMORY[0x1E69E62F8]);
  lazy protocol witness table accessor for type [AnyHashable2] and conformance [A]();
  lazy protocol witness table accessor for type AnyHashable2 and conformance AnyHashable2();
  BidirectionalCollection<>.difference<A>(from:)();
  lazy protocol witness table accessor for type AnyHashable2 and conformance AnyHashable2();
  CollectionDifference<A>.inferringMoves()();
  v35 = *(v96 + 8);
  v96 += 8;
  v75 = v35;
  v35(v13, v11);
  v89 = v16;
  v90 = v11;
  v36 = CollectionDifference.removals.getter();
  v37 = 0;
  v91 = 0;
  v38 = 0;
  v97 = *(v36 + 16);
  v85 = v36 + 57;
  v39 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v93 = v38;
    if (v37 == v97)
    {
      break;
    }

    v40 = (v85 + 32 * v37);
    while (1)
    {
      if (v37 >= *(v36 + 16))
      {
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
        goto LABEL_49;
      }

      if (*v40 != 1)
      {
        goto LABEL_60;
      }

      v41 = *(v40 - 25);
      if (*(v40 - 1))
      {
        break;
      }

      v42 = *(v40 - 17);
      v43 = *(v40 - 9);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v39 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v39 + 2) + 1, 1, v39);
      }

      v45 = *(v39 + 2);
      v44 = *(v39 + 3);
      if (v45 >= v44 >> 1)
      {
        v39 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v44 > 1), v45 + 1, 1, v39);
      }

      ++v37;
      outlined consume of BodyInputElement(v41, v42);
      *(v39 + 2) = v45 + 1;
      v46 = &v39[16 * v45];
      *(v46 + 4) = v41;
      *(v46 + 5) = v43;
      v40 += 32;
      if (v97 == v37)
      {
        goto LABEL_24;
      }
    }

    if (v94)
    {
      v38 = v41 + 1;
      if (__OFADD__(v41, 1))
      {
        goto LABEL_52;
      }

      if (v38 < v41)
      {
LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
        goto LABEL_55;
      }

LABEL_23:
      v94 = 0;
      ++v37;
      v91 = v41;
      continue;
    }

    if (v93 != v41)
    {
      IndexSet.insert(integersIn:)();
      v38 = v41 + 1;
      if (!__OFADD__(v41, 1))
      {
        if (v38 >= v41)
        {
          goto LABEL_23;
        }

        goto LABEL_57;
      }

LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
      goto LABEL_59;
    }

    v38 = v93 + 1;
    if (__OFADD__(v93, 1))
    {
      goto LABEL_48;
    }

    v94 = 0;
    ++v37;
    if (v38 < v91)
    {
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
      goto LABEL_51;
    }
  }

LABEL_24:

  *&v95[*(v88 + 20)] = v39;
  v47 = v82;
  v48 = v93;
  *v82 = v91;
  v47[1] = v48;
  *(v47 + 16) = v94 & 1;
  v49 = CollectionDifference.insertions.getter();
  v50 = 0;
  v51 = 0;
  v52 = 0;
  v53 = *(v49 + 16);
  v54 = 1;
  v56 = v83;
  v55 = v84;
  v57 = v92;
  while (2)
  {
    while (2)
    {
      v58 = 32 * v50;
      do
      {
        if (v53 == v50)
        {

          v64 = v86;
          outlined init with copy of DiffResultBuilder(v95, v86);
          v65 = v78;
          outlined init with take of IndexSetBuilder(v64, v78);
          if ((*(v65 + *(v57 + 20) + 16) & 1) == 0)
          {
            IndexSet.insert(integersIn:)();
          }

          v66 = *(v56 + 32);
          v67 = v80;
          v66(v87, v65, v80);
          v68 = *(v86 + *(v88 + 20));
          outlined init with take of IndexSetBuilder(v86 + *(v88 + 24), v55);
          if ((*(v55 + *(v57 + 20) + 16) & 1) == 0)
          {
            IndexSet.insert(integersIn:)();
          }

          v75(v89, v90);
          v69 = v79;
          v66(v79, v55, v67);
          v70 = v81;
          v66(v81, v87, v67);
          v71 = type metadata accessor for DiffResult(0);
          *&v70[*(v71 + 20)] = v68;
          v66(&v70[*(v71 + 24)], v69, v67);
          return outlined destroy of DiffResultBuilder(v95);
        }

        if (v50 >= *(v49 + 16))
        {
          goto LABEL_47;
        }

        v59 = v49 + v58;
        if (*(v49 + v58 + 57))
        {
          goto LABEL_60;
        }

        v58 += 32;
        ++v50;
      }

      while ((*(v59 + 56) & 1) == 0);
      v60 = *(v49 + v58);
      if (v54)
      {
        v52 = v60 + 1;
        if (__OFADD__(v60, 1))
        {
          goto LABEL_54;
        }

        if (v52 >= v60)
        {
          goto LABEL_40;
        }

LABEL_55:
        __break(1u);
        goto LABEL_56;
      }

      if (v52 == v60)
      {
        if (__OFADD__(v52++, 1))
        {
          goto LABEL_50;
        }

        if (v52 >= v51)
        {
          v54 = 0;
          v62 = v74;
          *v74 = v51;
          *(v62 + 1) = v52;
          v62[16] = 0;
          continue;
        }

LABEL_51:
        __break(1u);
LABEL_52:
        __break(1u);
        goto LABEL_53;
      }

      break;
    }

    IndexSet.insert(integersIn:)();
    v52 = v60 + 1;
    if (__OFADD__(v60, 1))
    {
      goto LABEL_58;
    }

    if (v52 >= v60)
    {
LABEL_40:
      v54 = 0;
      v63 = v74;
      *v74 = v60;
      *(v63 + 1) = v52;
      v51 = v60;
      v63[16] = 0;
      continue;
    }

    break;
  }

LABEL_59:
  __break(1u);
LABEL_60:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void type metadata accessor for CollectionDifference<AnyHashable2>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, ValueMetadata *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for AnyHashable2);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void lazy protocol witness table accessor for type [AnyHashable2] and conformance [A]()
{
  if (!lazy protocol witness table cache variable for type [AnyHashable2] and conformance [A])
  {
    type metadata accessor for CollectionDifference<AnyHashable2>(255, &lazy cache variable for type metadata for [AnyHashable2], MEMORY[0x1E69E62F8]);
    swift_getWitnessTable(MEMORY[0x1E69E6310], v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type [AnyHashable2] and conformance [A]);
  }
}

uint64_t *initializeBufferWithCopyOfBuffer for DiffResultBuilder(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v19 = *a2;
    *a1 = *a2;
    a1 = (v19 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = type metadata accessor for IndexSet();
    v8 = *(*(v7 - 8) + 16);
    v8(a1, a2, v7);
    v9 = type metadata accessor for IndexSetBuilder(0);
    v10 = *(v9 + 20);
    v11 = a1 + v10;
    v12 = a2 + v10;
    *v11 = *v12;
    v11[16] = v12[16];
    v13 = *(a3 + 24);
    *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
    v14 = a1 + v13;
    v15 = a2 + v13;

    v8(v14, v15, v7);
    v16 = *(v9 + 20);
    v17 = &v14[v16];
    v18 = &v15[v16];
    *v17 = *v18;
    v17[16] = v18[16];
  }

  return a1;
}

uint64_t assignWithCopy for DiffResultBuilder(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for IndexSet();
  v7 = *(*(v6 - 8) + 24);
  v7(a1, a2, v6);
  v8 = type metadata accessor for IndexSetBuilder(0);
  v9 = *(v8 + 20);
  v10 = a1 + v9;
  v11 = a2 + v9;
  v12 = *(v11 + 16);
  *v10 = *v11;
  *(v10 + 16) = v12;
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));

  v13 = *(a3 + 24);
  v14 = a1 + v13;
  v15 = a2 + v13;
  v7(a1 + v13, v15, v6);
  v16 = *(v8 + 20);
  v17 = v14 + v16;
  v18 = v15 + v16;
  v19 = *(v18 + 16);
  *v17 = *v18;
  *(v17 + 16) = v19;
  return a1;
}

uint64_t initializeWithTake for DiffResultBuilder(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for IndexSet();
  v7 = *(*(v6 - 8) + 32);
  v7(a1, a2, v6);
  v8 = type metadata accessor for IndexSetBuilder(0);
  v9 = *(v8 + 20);
  v10 = a1 + v9;
  v11 = a2 + v9;
  *v10 = *v11;
  *(v10 + 16) = *(v11 + 16);
  v12 = *(a3 + 24);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  v13 = a1 + v12;
  v14 = a2 + v12;
  v7(a1 + v12, v14, v6);
  v15 = *(v8 + 20);
  v16 = v13 + v15;
  v17 = v14 + v15;
  *v16 = *v17;
  *(v16 + 16) = *(v17 + 16);
  return a1;
}

uint64_t assignWithTake for DiffResultBuilder(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for IndexSet();
  v7 = *(*(v6 - 8) + 40);
  v7(a1, a2, v6);
  v8 = type metadata accessor for IndexSetBuilder(0);
  v9 = *(v8 + 20);
  v10 = a1 + v9;
  v11 = a2 + v9;
  *v10 = *v11;
  *(v10 + 16) = *(v11 + 16);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));

  v12 = *(a3 + 24);
  v13 = a1 + v12;
  v14 = a2 + v12;
  v7(a1 + v12, v14, v6);
  v15 = *(v8 + 20);
  v16 = v13 + v15;
  v17 = v14 + v15;
  *v16 = *v17;
  *(v16 + 16) = *(v17 + 16);
  return a1;
}

uint64_t __swift_get_extra_inhabitant_indexTm_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v7 = a4(0);
  v8 = *(v7 - 8);
  if (*(v8 + 84) == a2)
  {
    v9 = *(v8 + 48);

    return v9(a1, a2, v7);
  }

  else
  {
    v11 = *(a1 + *(a3 + 20));
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    return (v11 + 1);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm_0(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  v10 = *(result - 8);
  if (*(v10 + 84) == a3)
  {
    v11 = *(v10 + 56);

    return v11(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata completion function for DiffResult(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  result = a4(319, a2, a3);
  if (v5 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t specialized Collection.firstIndex(where:)(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 0;
  }

  v7 = 0;
  v8 = *(type metadata accessor for Date.ComponentsFormatStyle.Field() - 8);
  v9 = a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v10 = *(v8 + 72);
  while (1)
  {
    v11 = a1(v9);
    if (v3 || (v11 & 1) != 0)
    {
      break;
    }

    ++v7;
    v9 += v10;
    if (v4 == v7)
    {
      return 0;
    }
  }

  return v7;
}

void specialized Collection.firstIndex(where:)(uint64_t (*a1)(uint64_t *), uint64_t a2, unint64_t a3)
{
  v5 = a3 & 0xFFFFFFFFFFFFFF8;
  if (a3 >> 62)
  {
LABEL_19:
    v6 = __CocoaSet.count.getter();
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = 0;
  while (v6 != v7)
  {
    if ((a3 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x193AC03C0](v7, a3);
    }

    else
    {
      if (v7 >= *(v5 + 16))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      v8 = *(a3 + 8 * v7 + 32);
    }

    v12 = v8;
    v9 = a1(&v12);

    if (v3 || (v9 & 1) != 0)
    {
      return;
    }

    if (__OFADD__(v7++, 1))
    {
      goto LABEL_18;
    }
  }
}

void Array<A>.synthesizedPlacement(of:in:avoiding:distance:)(unint64_t a1@<X0>, uint64_t a2@<X1>, double (*a3)(uint64_t, double, double, double, double, double, double, double, double)@<X2>, uint64_t a4@<X4>, uint64_t a5@<X8>, double a6@<D0>, double a7@<D1>, double a8@<D2>, double a9@<D3>)
{
  Array<A>.motionVectors(closestTo:in:avoiding:distance:)(a1, a4, a3, a2, &v23, a6, a7, a8, a9);
  if (v26)
  {
    *a5 = 0u;
    *(a5 + 16) = 0u;
    *(a5 + 32) = 0u;
    *(a5 + 48) = 0u;
    *(a5 + 64) = 1;
    return;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (*(a2 + 16) <= a1)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v12 = v24;
  v13 = v25;
  v14 = a2 + 80 * a1;
  *v22 = *(v14 + 49);
  *&v22[3] = *(v14 + 52);
  *v21 = *(v14 + 65);
  *&v21[15] = *(v14 + 80);
  v20 = vaddq_f64(v23, *(v14 + 88));
  _LazyLayout_PlacedSubview.size.getter();
  v17 = v12 * v16;
  v18 = v16 == 0.0;
  v19 = 0.0;
  if (v18)
  {
    v17 = 0.0;
  }

  *a5 = v17;
  if (v15 != 0.0)
  {
    v19 = v13 * v15;
  }

  *(a5 + 8) = 0;
  *(a5 + 9) = *v22;
  *(a5 + 12) = *&v22[3];
  *(a5 + 16) = v19;
  *(a5 + 24) = 0;
  *(a5 + 25) = *v21;
  *(a5 + 40) = *&v21[15];
  *(a5 + 48) = v20;
  *(a5 + 64) = 0;
}

BOOL Array<A>.externalPlacement(of:avoiding:in:)@<W0>(_BOOL8 result@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>, CGFloat a5@<D0>, CGFloat a6@<D1>, CGFloat a7@<D2>, CGFloat a8@<D3>)
{
  if (result < 0)
  {
    __break(1u);
  }

  else if (*(a3 + 16) > result)
  {
    v13 = a3 + 80 * result;
    v14 = *(v13 + 40);
    v15 = *(v13 + 48);
    *v42 = *(v13 + 49);
    *&v42[3] = *(v13 + 52);
    v17 = *(v13 + 56);
    v18 = *(v13 + 64);
    *v41 = *(v13 + 65);
    *&v41[3] = *(v13 + 68);
    v19 = *(v13 + 80);
    v20 = *(v13 + 96);
    v39 = *(v13 + 88);
    v40 = *(v13 + 72);
    v21 = 0.0;
    v22 = 0.0;
    if (!CGRectIsNull(*&a5))
    {
      if (a2)
      {
        v23 = a8;
      }

      else
      {
        v23 = a7;
      }

      if (a2)
      {
        v24 = a6;
      }

      else
      {
        v24 = a5;
      }

      v25 = v24 + v23;
      if (v25 >= v24)
      {
        v26 = v24;
      }

      else
      {
        v26 = v25;
      }

      if (v24 > v25)
      {
        v25 = v24;
      }

      if (v26 <= v25)
      {
        v22 = v25;
      }
    }

    v43.origin.x = a5;
    v43.origin.y = a6;
    v43.size.width = a7;
    v43.size.height = a8;
    result = CGRectIsNull(v43);
    if (!result)
    {
      if (a2)
      {
        v27 = a8;
      }

      else
      {
        v27 = a7;
      }

      if (a2)
      {
        v28 = a6;
      }

      else
      {
        v28 = a5;
      }

      v29 = v28 + v27;
      if (v29 >= v28)
      {
        v30 = v28;
      }

      else
      {
        v30 = v29;
      }

      if (v28 > v29)
      {
        v29 = v28;
      }

      if (v30 > v29)
      {
        v21 = 0.0;
      }

      else
      {
        v21 = v29 - v30;
      }
    }

    if (v15)
    {
      v31 = 10.0;
    }

    else
    {
      v31 = v14;
    }

    if (v18)
    {
      v32 = 10.0;
    }

    else
    {
      v32 = v17;
    }

    v33 = v19 * v32;
    if ((a2 & 1) == 0)
    {
      v33 = v40 * v31;
    }

    v34 = v22 + v21 + v33;
    if (v18)
    {
      v35 = v39;
      if ((a2 & 1) == 0)
      {
        v36 = v39 + v31;
        if (v34 <= v36)
        {
          v34 = v36;
        }

        goto LABEL_57;
      }

      if (v34 <= v20 + 10.0)
      {
        v34 = v20 + 10.0;
      }
    }

    else
    {
      v35 = v39;
      if (a2)
      {
        v37 = v20;
      }

      else
      {
        v37 = v39;
      }

      if (a2)
      {
        v31 = v17;
      }

      v38 = v37 + v31;
      if (v34 <= v38)
      {
        v34 = v38;
      }

      if ((a2 & 1) == 0)
      {
        goto LABEL_57;
      }
    }

    v20 = v34;
    v34 = v35;
LABEL_57:
    *a4 = v14;
    *(a4 + 8) = v15;
    *(a4 + 9) = *v42;
    *(a4 + 12) = *&v42[3];
    *(a4 + 16) = v17;
    *(a4 + 24) = v18;
    *(a4 + 25) = *v41;
    *(a4 + 28) = *&v41[3];
    *(a4 + 32) = v40;
    *(a4 + 40) = v19;
    *(a4 + 48) = v34;
    *(a4 + 56) = v20;
    return result;
  }

  __break(1u);
  return result;
}

SwiftUI::Spacing __swiftcall LazyLayoutComputer.Engine.spacing()()
{
  result.minima._rawValue = AGGraphWithUpdate();
  __break(1u);
  return result;
}

uint64_t closure #1 in LazyLayoutComputer.Engine.spacing()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v24 = a4;
  v22 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v23 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v9 = &v21 - v8;
  v10 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for LazyLayoutComputer.Engine(0, a2, a3, v14);
  v16 = *(v15 + 36);
  v17 = *(v15 + 40);
  v18 = *(a1 + v16);

  LazyLayoutViewCache.subviews(context:)(v18, v26);

  (*(v10 + 16))(v13, a1, a2);
  v25 = *(a1 + v16);
  v19 = *(**(a1 + v17) + 400);

  v19(AssociatedTypeWitness, AssociatedTypeWitness);

  (*(v22 + 56))(v26, &v25, v9, a2);
  (*(v23 + 8))(v9, AssociatedTypeWitness);
  (*(v10 + 8))(v13, a2);
  return outlined destroy of _LazyLayout_Subviews(v26);
}

void PositionState.mainID<A>(subviews:context:layout:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v7 = *(a2 + 104);
  v8 = *(a2 + 136);
  v25 = *(a2 + 120);
  v26 = v8;
  v27 = *(a2 + 152);
  v9 = *(a2 + 72);
  v21 = *(a2 + 56);
  v22 = v9;
  v23 = *(a2 + 88);
  v24 = v7;
  v10 = *(a2 + 200);
  v11 = *(a2 + 208);
  v12 = *(a2 + 280);
  v13 = *(a2 + 288);
  v14 = *(a2 + 296);
  (*(a4 + 32))(v20, a3, a4);
  v15 = v20[0];
  if (v14 == 1)
  {
    ScrollGeometry.outsetForAX(limit:)(__PAIR128__(v13, v12));
  }

  v16 = swift_allocObject();
  v17 = v27;
  *(v16 + 16) = v26;
  *(v16 + 32) = v17;
  if (v15)
  {
    *(v16 + 32) = v11;
  }

  if ((v15 & 2) != 0)
  {
    *(v16 + 40) = v10;
  }

  *&v20[0] = a1;
  _sSay7SwiftUI25_LazyLayout_PlacedSubviewVGMaTm_0(0, &lazy cache variable for type metadata for [_LazyLayout_PlacedSubview], &type metadata for _LazyLayout_PlacedSubview, MEMORY[0x1E69E62F8]);
  lazy protocol witness table accessor for type [_LazyLayout_PlacedSubview] and conformance [A]();
  Sequence.min(by:)();
  v20[2] = v23;
  v20[3] = v24;
  v20[4] = v25;
  v20[0] = v21;
  v20[1] = v22;
  v18 = MEMORY[0x1E69E6720];
  _sSay7SwiftUI25_LazyLayout_PlacedSubviewVGMaTm_0(0, &lazy cache variable for type metadata for _LazyLayout_PlacedSubview?, &type metadata for _LazyLayout_PlacedSubview, MEMORY[0x1E69E6720]);
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(closure #2 in PositionState.mainID<A>(subviews:context:layout:), 0, MEMORY[0x1E69E73E0], &type metadata for _ViewList_ID, v19, a5);
  _s7SwiftUI25_LazyLayout_PlacedSubviewVSgWOhTm_0(&v21, &lazy cache variable for type metadata for _LazyLayout_PlacedSubview?, &type metadata for _LazyLayout_PlacedSubview, v18);
}

void Array<A>.pinSectionHeadersAndFooters(in:headerAxes:footerAxes:)(_OWORD *a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = a3;
  v7 = a1[5];
  v93[4] = a1[4];
  v93[5] = v7;
  v93[6] = a1[6];
  v8 = a1[1];
  v93[0] = *a1;
  v93[1] = v8;
  v9 = a1[3];
  v93[2] = a1[2];
  v93[3] = v9;
  v10 = *v3;
  v11 = *(*v3 + 2);
  if (v11)
  {
    v12 = 0;
    *&v83[8] = 0;
    *v83 = *MEMORY[0x1E698D3F8];
    v13 = v10 + 32;
    v14 = MEMORY[0x1E69E7CC8];
    while (2)
    {
      v15 = &v13[80 * v12];
      v16 = v12;
      while (1)
      {
        if (v16 >= *(v10 + 2))
        {
          goto LABEL_71;
        }

        v88[0] = *v15;
        v17 = *(v15 + 1);
        v18 = *(v15 + 2);
        v19 = *(v15 + 4);
        v88[3] = *(v15 + 3);
        v88[4] = v19;
        v88[1] = v17;
        v88[2] = v18;
        v12 = v16 + 1;
        memmove(&__dst, v15, 0x50uLL);
        v20 = __dst;
        if (*(__dst + 172) != 1)
        {
          break;
        }

        outlined init with copy of _LazyLayout_PlacedSubview(v88, &v84);
        outlined destroy of _LazyLayout_PlacedSubview(&__dst);
        v15 += 80;
        ++v16;
        if (v11 == v12)
        {
          goto LABEL_59;
        }
      }

      v80 = *(__dst + 168);
      v75 = *(__dst + 173);
      v76 = *(__dst + 174);
      v79 = v4;
      v77 = a2;
      v78 = v5;
      if (*(__dst + 44) == *v83)
      {
        outlined init with copy of _LazyLayout_PlacedSubview(v88, &v84);
        Value = &static LayoutComputer.defaultValue;
        if (one-time initialization token for defaultValue != -1)
        {
          swift_once();
          Value = &static LayoutComputer.defaultValue;
        }
      }

      else
      {
        outlined init with copy of _LazyLayout_PlacedSubview(v88, &v84);
        Value = AGGraphGetValue();
      }

      v22 = *Value;
      v23 = v90;
      v81 = *(&v90 + 1);
      v82 = *(&__dst + 1);
      v24 = v91[0];
      v25 = *&v91[8];
      v26 = *&v91[16];
      v27 = *&v91[24];
      v28 = v92;
      v29 = one-time initialization token for lockAssertionsAreEnabled;

      if (v29 != -1)
      {
        swift_once();
      }

      v30 = lockAssertionsAreEnabled;
      if (lockAssertionsAreEnabled)
      {
        if (one-time initialization token for _lock != -1)
        {
          swift_once();
        }

        if (!_MovableLockIsOwner(static Update._lock))
        {
          goto LABEL_74;
        }
      }

      v84 = v82;
      v85 = v23;
      v86 = v81;
      v87 = v24;
      v31 = (*(*v22 + 120))(&v84);
      v33 = v32;

      if (*(v20 + 44) == *v83)
      {
        v34 = &static LayoutComputer.defaultValue;
        if (one-time initialization token for defaultValue != -1)
        {
          swift_once();
          v34 = &static LayoutComputer.defaultValue;
        }
      }

      else
      {
        v34 = AGGraphGetValue();
      }

      v35 = *v34;
      if (v30)
      {
        v36 = one-time initialization token for _lock;

        if (v36 != -1)
        {
          swift_once();
        }

        if (!_MovableLockIsOwner(static Update._lock))
        {
          goto LABEL_74;
        }
      }

      else
      {
      }

      v84 = v82;
      v85 = v23;
      v86 = v81;
      v87 = v24;
      v37 = (*(*v35 + 120))(&v84);
      v39 = v38;

      outlined consume of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(*&v83[4], 0);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v84 = v14;
      v42 = specialized __RawDictionaryStorage.find<A>(_:)(v80);
      v43 = *(v14 + 16);
      v44 = (v41 & 1) == 0;
      v45 = v43 + v44;
      if (__OFADD__(v43, v44))
      {
        goto LABEL_72;
      }

      v46 = v41;
      if (*(v14 + 24) >= v45)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v49 = v42 << 6;
          if (v41)
          {
            goto LABEL_37;
          }
        }

        else
        {
          specialized _NativeDictionary.copy()();
          v14 = v84;
          v49 = v42 << 6;
          if (v46)
          {
            goto LABEL_37;
          }
        }
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v45, isUniquelyReferenced_nonNull_native);
        v14 = v84;
        v47 = specialized __RawDictionaryStorage.find<A>(_:)(v80);
        if ((v46 & 1) != (v48 & 1))
        {
          goto LABEL_75;
        }

        v42 = v47;
        v49 = v47 << 6;
        if (v46)
        {
          goto LABEL_37;
        }
      }

      LOBYTE(v84) = 1;
      v94 = 1;
      *(v14 + 8 * (v42 >> 6) + 64) |= 1 << v42;
      *(*(v14 + 48) + 4 * v42) = v80;
      v50 = *(v14 + 56) + v49;
      *v50 = xmmword_18DDAB4F0;
      *(v50 + 16) = xmmword_18DDAB4F0;
      *(v50 + 32) = 0;
      *(v50 + 40) = 1;
      *(v50 + 48) = 0;
      *(v50 + 56) = 1;
      v51 = *(v14 + 16);
      v52 = __OFADD__(v51, 1);
      v53 = v51 + 1;
      if (v52)
      {
        goto LABEL_73;
      }

      *(v14 + 16) = v53;
LABEL_37:
      v54 = v27 - v25 * v31;
      v55 = v28 - v26 * v33;
      v56 = *(v14 + 56) + v49;
      v4 = v79;
      a2 = v77;
      v5 = v78;
      if (v75)
      {
        v57 = *(v56 + 32);
        if (*(v56 + 40))
        {
          v57 = v16;
        }

        *(v56 + 32) = v57;
        *(v56 + 40) = 0;
        if (!v76)
        {
LABEL_41:
          v58 = *(v56 + 8);
          v95.origin.x = v54;
          v95.origin.y = v55;
          v95.size.width = v37;
          v95.size.height = v39;
          MaxX = CGRectGetMaxX(v95);
          if (v58 > MaxX)
          {
            MaxX = v58;
          }

          *(v56 + 8) = MaxX;
          v60 = *(v56 + 24);
          v96.origin.x = v54;
          v96.origin.y = v55;
          v96.size.width = v37;
          v96.size.height = v39;
          MaxY = CGRectGetMaxY(v96);
          if (v60 > MaxY)
          {
            MaxY = v60;
          }

          *(v56 + 24) = MaxY;
          goto LABEL_54;
        }
      }

      else
      {
        v62 = *v56;
        v97.origin.x = v54;
        v97.origin.y = v55;
        v97.size.width = v37;
        v97.size.height = v39;
        MinX = CGRectGetMinX(v97);
        if (MinX >= v62)
        {
          MinX = v62;
        }

        *v56 = MinX;
        v64 = *(v56 + 16);
        v98.origin.x = v54;
        v98.origin.y = v55;
        v98.size.width = v37;
        v98.size.height = v39;
        MinY = CGRectGetMinY(v98);
        if (MinY >= v64)
        {
          MinY = v64;
        }

        *(v56 + 16) = MinY;
        if (!v76)
        {
          goto LABEL_41;
        }
      }

      v66 = *(v56 + 48);
      if (*(v56 + 56))
      {
        v66 = v16;
      }

      *(v56 + 48) = v66;
      *(v56 + 56) = 0;
LABEL_54:
      outlined destroy of _LazyLayout_PlacedSubview(&__dst);
      *&v83[4] = specialized thunk for @callee_guaranteed () -> (@unowned PinnedSection);
      v13 = v10 + 32;
      if (v11 - 1 != v16)
      {
        continue;
      }

      goto LABEL_59;
    }
  }

  *&v83[4] = 0;
  v14 = MEMORY[0x1E69E7CC8];
LABEL_59:
  v67 = 0;
  v68 = 1 << *(v14 + 32);
  v69 = -1;
  if (v68 < 64)
  {
    v69 = ~(-1 << v68);
  }

  v70 = v69 & *(v14 + 64);
  v71 = (v68 + 63) >> 6;
  while (v70)
  {
    v72 = v67;
LABEL_67:
    v73 = __clz(__rbit64(v70));
    v70 &= v70 - 1;
    v74 = (*(v14 + 56) + ((v72 << 12) | (v73 << 6)));
    __dst = *v74;
    v90 = v74[1];
    *v91 = v74[2];
    *&v91[9] = *(v74 + 41);
    commitSection #1 <A>(_:) in Array<A>.pinSectionHeadersAndFooters(in:headerAxes:footerAxes:)(&__dst, a2, v4, v93, v5);
  }

  while (1)
  {
    v72 = v67 + 1;
    if (__OFADD__(v67, 1))
    {
      break;
    }

    if (v72 >= v71)
    {

      outlined consume of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(*&v83[4], 0);
      return;
    }

    v70 = *(v14 + 64 + 8 * v72);
    ++v67;
    if (v70)
    {
      v67 = v72;
      goto LABEL_67;
    }
  }

  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
LABEL_74:
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
LABEL_75:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

BOOL PositionState.dispatchContainerSizeChange(context:axes:allowedAxes:)(uint64_t a1, _BYTE *a2)
{
  v4 = *(a1 + 12);
  v6 = *(v2 + 104);
  v5 = *(v2 + 112);
  v7 = 0.0;
  v14.origin.x = 0.0;
  v14.origin.y = 0.0;
  v14.size.width = 0.0;
  v14.size.height = 0.0;
  if (CGRectEqualToRect(*(v2 + 72), v14))
  {
    return 0;
  }

  v9 = 0.0;
  if (v4 != *MEMORY[0x1E698D3F8])
  {
    Value = AGGraphGetValue();
    v7 = *Value;
    v9 = Value[1];
  }

  v11 = vabdd_f64(v7, v6);
  if (v11 >= 0.1 && Axis.Set.contains(_:)(SwiftUI_Axis_horizontal))
  {
    *a2 |= 1u;
  }

  v12 = vabdd_f64(v9, v5);
  result = v12 >= 0.1;
  if (v12 >= 0.1)
  {
    v13 = Axis.Set.contains(_:)(SwiftUI_Axis_vertical);
    result = 1;
    if (v13)
    {
      *a2 |= 2u;
    }
  }

  if (v11 >= 0.1)
  {
    return 1;
  }

  return result;
}

BOOL PositionState.dispatchViewSizeChange(context:axes:allowedAxes:)(uint64_t a1, _BYTE *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(v2 + 136);
  v6 = *(v2 + 144);
  if (v5 == 0.0 && v6 == 0.0 || v3 == 0.0 && v4 == 0.0)
  {
    return 0;
  }

  v8 = vabdd_f64(v3, v5);
  if (v8 >= 0.01)
  {
    v9 = a2;
    v10 = Axis.Set.contains(_:)(SwiftUI_Axis_horizontal);
    a2 = v9;
    if (v10)
    {
      *v9 |= 1u;
    }
  }

  v11 = vabdd_f64(v4, v6);
  result = v11 >= 0.01;
  if (v11 >= 0.01)
  {
    v12 = a2;
    v13 = Axis.Set.contains(_:)(SwiftUI_Axis_vertical);
    result = 1;
    if (v13)
    {
      *v12 |= 2u;
    }
  }

  if (v8 >= 0.01)
  {
    return 1;
  }

  return result;
}

void LazySubviewPlacements.placedAnchorTranslation(axes:placementContext:placements:)(unsigned int a1, void *a2, __int128 *a3, uint64_t a4)
{
  v7 = a3[3];
  v85 = a3[2];
  v86 = v7;
  v87 = *(a3 + 64);
  v8 = *a3;
  v84 = a3[1];
  v83 = v8;
  v9 = *(v4 + 12);
  v10 = v4[3];
  v77 = v4[2];
  v78 = v10;
  v11 = v4[5];
  v79 = v4[4];
  v80 = v11;
  v12 = v4[1];
  v75 = *v4;
  v76 = v12;
  v81 = v9;
  memcpy(v82, v4 + 104, sizeof(v82));
  LazySubviewPlacements.placedSubviewAnchor(subviews:frame:)(&v88);
  v13 = v88;
  v96 = v89;
  v97 = v90;
  if (v88 == 0.0)
  {
    return;
  }

  v58 = *(v9 + 16);
  if (!v58)
  {
LABEL_28:
    outlined destroy of Logger?(&v88, &lazy cache variable for type metadata for (_LazyLayout_PlacedSubview, Int)?, type metadata accessor for (_LazyLayout_PlacedSubview, Int));
    return;
  }

  v53 = v4;
  __src = a2;
  v55 = a1;
  v14 = 0;
  v15 = v91;
  v16 = v92;
  v17 = v93;
  v18 = v94;
  v19 = v9 + 32;
  v52 = v95;
  v59 = v88;
  v20 = v9;
  v21 = *(v9 + 16);
  v56 = v9 + 32;
  v57 = v9;
  while (1)
  {
    v22 = (v19 + 80 * v14);
    v74[0] = *v22;
    v23 = v22[1];
    v24 = v22[2];
    v25 = v22[4];
    v74[3] = v22[3];
    v74[4] = v25;
    v74[1] = v23;
    v74[2] = v24;
    if ((*(*&v74[0] + 173) & 1) == 0 && (*(*&v74[0] + 174) & 1) == 0 && *(*&v74[0] + 144) == *(*&v13 + 144) && *(*&v74[0] + 148) == *(*&v13 + 148))
    {
      break;
    }

LABEL_25:
    if (++v14 == v21)
    {
      goto LABEL_28;
    }

    if (v14 >= *(v20 + 16))
    {
      __break(1u);
      goto LABEL_28;
    }
  }

  v26 = *(*&v74[0] + 152);
  v27 = *(*&v13 + 152);
  v28 = *(v26 + 16);
  if (v28 != *(v27 + 16))
  {

LABEL_24:

    v13 = v59;
    goto LABEL_25;
  }

  if (v28)
  {
    v29 = v26 == v27;
  }

  else
  {
    v29 = 1;
  }

  if (v29)
  {

LABEL_31:

    v40 = v53[3];
    v77 = v53[2];
    v78 = v40;
    v41 = v53[5];
    v79 = v53[4];
    v80 = v41;
    v42 = v53[1];
    v75 = *v53;
    v76 = v42;
    v81 = v20;
    memcpy(v82, v53 + 104, sizeof(v82));
    v72[0] = *v22;
    v43 = v22[4];
    v45 = v22[1];
    v44 = v22[2];
    v72[3] = v22[3];
    v72[4] = v43;
    v72[1] = v45;
    v72[2] = v44;
    v46 = v22[3];
    v69 = v22[2];
    v70 = v46;
    v71 = v22[4];
    v47 = v22[1];
    v67 = *v22;
    v68 = v47;
    outlined init with copy of _LazyLayout_PlacedSubview(v72, v73);
    _LazyLayout_PlacedSubview.size.getter();
    *&__dst[1] = v96;
    v50 = v17 - v15 * v48;
    v51 = v18 - v16 * v49;
    __dst[0] = v59;
    *&__dst[3] = v97;
    __dst[5] = v15;
    __dst[6] = v16;
    __dst[7] = v17;
    __dst[8] = v18;
    __dst[9] = v52;
    _LazyLayout_PlacedSubview.size.getter();
    memcpy(__dst, __src, 0x129uLL);
    LazySubviewPlacements.makeAnchorTranslation(oldSubview:oldIndex:newFrame:axes:context:)(v50, v51, &v67, v14, v55, __dst);
    outlined destroy of Logger?(&v88, &lazy cache variable for type metadata for (_LazyLayout_PlacedSubview, Int)?, type metadata accessor for (_LazyLayout_PlacedSubview, Int));
    v73[2] = v69;
    v73[3] = v70;
    v73[4] = v71;
    v73[0] = v67;
    v73[1] = v68;
    outlined destroy of _LazyLayout_PlacedSubview(v73);
  }

  else
  {
    outlined init with copy of _LazyLayout_PlacedSubview(v74, &v75);

    v30 = 0;
    v60 = v26;
    while (v28)
    {
      v32 = *(v26 + v30 + 32);
      v31 = *(v26 + v30 + 40);
      v33 = *(v26 + v30 + 48);
      v34 = *(v26 + v30 + 52);
      v35 = *(v27 + v30 + 40);
      v36 = *(v27 + v30 + 48);
      v37 = *(v27 + v30 + 52);
      if (v32 != *(v27 + v30 + 32) && (v38 = *(*v32 + 112), v64 = v33, v65 = v34, v63 = *(v27 + v30 + 52), v62 = v31, v61 = *(v27 + v30 + 48), , v39 = , LOBYTE(v38) = v38(v39), , , v36 = v61, v31 = v62, v37 = v63, v33 = v64, v34 = v65, (v38 & 1) == 0) || v31 != v35 || v33 != v36 || (v26 = v60, v34 != v37))
      {
        outlined destroy of _LazyLayout_PlacedSubview(v74);

        v20 = v57;
        v21 = v58;
        v19 = v56;
        goto LABEL_24;
      }

      v30 += 24;
      if (!--v28)
      {
        outlined destroy of _LazyLayout_PlacedSubview(v74);

        v20 = v57;
        goto LABEL_31;
      }
    }

    __break(1u);
  }
}

unint64_t (*implicit closure #1 in LazySubviewPlacements.makeAnchorTranslationIfNeeded(placements:context:newSize:reason:)(void *__src, uint64_t a2, uint64_t a3))@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  memcpy(__dst, __src, 0x1D9uLL);
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = a3;
  memcpy(v6 + 4, __src, 0x1D9uLL);
  v8 = type metadata accessor for LazySubviewPlacements(0, a2, a3, v7);
  (*(*(v8 - 8) + 16))(&v10, __dst, v8);
  return partial apply for implicit closure #2 in implicit closure #1 in LazySubviewPlacements.makeAnchorTranslationIfNeeded(placements:context:newSize:reason:);
}