void partial apply for specialized creationWrapper #1 <A>(playbackController:eventData:reversed:startTime:duration:engine:instanceID:targetEntity:) in static ActionHandlerProtocol.__registerCommon(engine:_:)(uint64_t a1@<X0>, __int128 *a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>, double a8@<D0>, double a9@<D1>)
{
  specialized creationWrapper #1 <A>(playbackController:eventData:reversed:startTime:duration:engine:instanceID:targetEntity:) in static ActionHandlerProtocol.__registerCommon(engine:_:)(a1, a2, a3, a4, a5, a6, *(v9 + 16), a7, a8, a9);
}

{
  specialized creationWrapper #1 <A>(playbackController:eventData:reversed:startTime:duration:engine:instanceID:targetEntity:) in static ActionHandlerProtocol.__registerCommon(engine:_:)(a1, a2, a3, a4, a5, a6, *(v9 + 16), a7, a8, a9);
}

{
  specialized creationWrapper #1 <A>(playbackController:eventData:reversed:startTime:duration:engine:instanceID:targetEntity:) in static ActionHandlerProtocol.__registerCommon(engine:_:)(a1, a2, a3, a4, a5, a6, *(v9 + 16), a7, a8, a9);
}

{
  specialized creationWrapper #1 <A>(playbackController:eventData:reversed:startTime:duration:engine:instanceID:targetEntity:) in static ActionHandlerProtocol.__registerCommon(engine:_:)(a1, a2, a3, a4, a5, a6, *(v9 + 16), a7, a8, a9);
}

{
  specialized creationWrapper #1 <A>(playbackController:eventData:reversed:startTime:duration:engine:instanceID:targetEntity:) in static ActionHandlerProtocol.__registerCommon(engine:_:)(a1, a2, a3, a4, a5, a6, *(v9 + 16), a7, a8, a9);
}

{
  specialized creationWrapper #1 <A>(playbackController:eventData:reversed:startTime:duration:engine:instanceID:targetEntity:) in static ActionHandlerProtocol.__registerCommon(engine:_:)(a1, a2, a3, a4, a5, a6, *(v9 + 16), a7, a8, a9);
}

double outlined consume of SetEntityPropertyAction<String>?(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a5)
  {
    outlined consume of ActionEntityResolution(a1, a2, a3 & 1);
  }

  return result;
}

double outlined consume of SetEntityPropertyAction<Bool>?(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  if (a5)
  {
    outlined consume of ActionEntityResolution(a1, a2, a3 & 1);
  }

  return result;
}

double outlined consume of (start: BlendShapeWeights, end: BlendShapeWeights)?(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
  }

  return result;
}

uint64_t partial apply for specialized creationWrapper #1 <A>(playbackController:eventData:reversed:startTime:duration:engine:instanceID:targetEntity:) in static ActionHandlerProtocol.__registerCommon(engine:_:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>, double a8@<D0>, double a9@<D1>)
{
  return specialized creationWrapper #1 <A>(playbackController:eventData:reversed:startTime:duration:engine:instanceID:targetEntity:) in static ActionHandlerProtocol.__registerCommon(engine:_:)(a1, a2, a3, a4, a5, a6, *(v9 + 16), a7, a8, a9);
}

{
  return specialized creationWrapper #1 <A>(playbackController:eventData:reversed:startTime:duration:engine:instanceID:targetEntity:) in static ActionHandlerProtocol.__registerCommon(engine:_:)(a1, a2, a3, a4, a5, a6, *(v9 + 16), a7, a8, a9);
}

{
  return specialized creationWrapper #1 <A>(playbackController:eventData:reversed:startTime:duration:engine:instanceID:targetEntity:) in static ActionHandlerProtocol.__registerCommon(engine:_:)(a1, a2, a3, a4, a5, a6, *(v9 + 16), a7, a8, a9);
}

{
  return specialized creationWrapper #1 <A>(playbackController:eventData:reversed:startTime:duration:engine:instanceID:targetEntity:) in static ActionHandlerProtocol.__registerCommon(engine:_:)(a1, a2, a3, a4, a5, a6, *(v9 + 16), a7, a8, a9);
}

{
  return specialized creationWrapper #1 <A>(playbackController:eventData:reversed:startTime:duration:engine:instanceID:targetEntity:) in static ActionHandlerProtocol.__registerCommon(engine:_:)(a1, a2, a3, a4, a5, a6, *(v9 + 16), a7, a8, a9);
}

uint64_t _s17RealityFoundation14FromToByActionVy0A3Kit9TransformVGSgWOg(uint64_t a1)
{
  v1 = *(a1 + 240);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

double _s17RealityFoundation14FromToByActionVy0A3Kit9TransformVGSgWOi0_(_OWORD *a1)
{
  result = 0.0;
  a1[12] = 0u;
  a1[13] = 0u;
  a1[10] = 0u;
  a1[11] = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  a1[14] = 0u;
  a1[15] = xmmword_1C1887610;
  return result;
}

double simd_matrix4x4(float32x4_t a1)
{
  _S3 = a1.i32[1];
  _S5 = a1.i32[2];
  __asm { FMLS            S2, S5, V0.S[2] }

  _S7 = a1.i32[3];
  __asm { FMLA            S2, S7, V0.S[3] }

  v10 = vmuls_lane_f32(a1.f32[2], a1, 3);
  LODWORD(v11) = _S2;
  *(&v11 + 1) = (v10 + (a1.f32[0] * a1.f32[1])) + (v10 + (a1.f32[0] * a1.f32[1]));
  __asm
  {
    FMLA            S6, S3, V0.S[1]
    FMLA            S6, S7, V0.S[3]
    FMLA            S16, S5, V0.S[1]
    FMLA            S6, S5, V0.S[2]
    FMLS            S5, S3, V0.S[1]
  }

  return v11;
}

uint64_t partial apply for specialized dispatchEvent #1 <A>(sourceObject:payloadRef:) in static EntityAction.__subscribe(to:_:_:)(uint64_t a1, float *a2)
{
  return specialized dispatchEvent #1 <A>(sourceObject:payloadRef:) in static EntityAction.__subscribe(to:_:_:)(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32));
}

{
  return specialized dispatchEvent #1 <A>(sourceObject:payloadRef:) in static EntityAction.__subscribe(to:_:_:)(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), specialized ActionEventData.action<A>(), _s17RealityFoundation14FromToByActionVys5SIMD4VySfGGSgWOg, &_s17RealityFoundation28EntityActionParameterWrapperCyAA08FromToByD0VySo10simd_quatfaGGMd, &_s17RealityFoundation28EntityActionParameterWrapperCyAA08FromToByD0VySo10simd_quatfaGGMR, &_s17RealityFoundation11ActionEventVyAA08FromToByC0VySo10simd_quatfaGGMd, &_s17RealityFoundation11ActionEventVyAA08FromToByC0VySo10simd_quatfaGGMR, &_s17RealityFoundation14FromToByActionVySo10simd_quatfaGSgMd, &_s17RealityFoundation14FromToByActionVySo10simd_quatfaGSgMR);
}

{
  return specialized dispatchEvent #1 <A>(sourceObject:payloadRef:) in static EntityAction.__subscribe(to:_:_:)(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), specialized ActionEventData.action<A>(), _s17RealityFoundation14FromToByActionVys5SIMD4VySfGGSgWOg, &_s17RealityFoundation28EntityActionParameterWrapperCyAA08FromToByD0Vys5SIMD4VySfGGGMd, &_s17RealityFoundation28EntityActionParameterWrapperCyAA08FromToByD0Vys5SIMD4VySfGGGMR, &_s17RealityFoundation11ActionEventVyAA08FromToByC0Vys5SIMD4VySfGGGMd, &_s17RealityFoundation11ActionEventVyAA08FromToByC0Vys5SIMD4VySfGGGMR, &_s17RealityFoundation14FromToByActionVys5SIMD4VySfGGSgMd, &_s17RealityFoundation14FromToByActionVys5SIMD4VySfGGSgMR);
}

{
  return specialized dispatchEvent #1 <A>(sourceObject:payloadRef:) in static EntityAction.__subscribe(to:_:_:)(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), specialized ActionEventData.action<A>(), _s17RealityFoundation14FromToByActionVys5SIMD4VySfGGSgWOg, &_s17RealityFoundation28EntityActionParameterWrapperCyAA08FromToByD0Vys5SIMD3VySfGGGMd, &_s17RealityFoundation28EntityActionParameterWrapperCyAA08FromToByD0Vys5SIMD3VySfGGGMR, &_s17RealityFoundation11ActionEventVyAA08FromToByC0Vys5SIMD3VySfGGGMd, &_s17RealityFoundation11ActionEventVyAA08FromToByC0Vys5SIMD3VySfGGGMR, &_s17RealityFoundation14FromToByActionVys5SIMD3VySfGGSgMd, &_s17RealityFoundation14FromToByActionVys5SIMD3VySfGGSgMR);
}

void simd_slerp(float32x4_t a1, float32x4_t a2, float a3)
{
  v3 = vmulq_f32(a1, a2);
  v4 = vextq_s8(v3, v3, 8uLL);
  *v3.i8 = vadd_f32(*v3.i8, *v4.f32);
  *v3.i32 = vaddv_f32(*v3.i8);
  v4.i64[0] = 0;
  _simd_slerp_internal(a1, vbslq_s8(vdupq_lane_s32(*&vmvnq_s8(vcgeq_f32(v3, v4)), 0), vnegq_f32(a2), a2), a3);
}

unint64_t lazy protocol witness table accessor for type BillboardAction and conformance BillboardAction()
{
  result = lazy protocol witness table cache variable for type BillboardAction and conformance BillboardAction;
  if (!lazy protocol witness table cache variable for type BillboardAction and conformance BillboardAction)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for BillboardAction, &type metadata for BillboardAction, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type BillboardAction and conformance BillboardAction);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type BillboardAction and conformance BillboardAction;
  if (!lazy protocol witness table cache variable for type BillboardAction and conformance BillboardAction)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for BillboardAction, &type metadata for BillboardAction, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type BillboardAction and conformance BillboardAction);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SpinAction and conformance SpinAction()
{
  result = lazy protocol witness table cache variable for type SpinAction and conformance SpinAction;
  if (!lazy protocol witness table cache variable for type SpinAction and conformance SpinAction)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SpinAction, &type metadata for SpinAction, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SpinAction and conformance SpinAction);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SpinAction and conformance SpinAction;
  if (!lazy protocol witness table cache variable for type SpinAction and conformance SpinAction)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SpinAction, &type metadata for SpinAction, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SpinAction and conformance SpinAction);
  }

  return result;
}

double outlined consume of OrbitEntityAction?(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return outlined consume of ActionEntityResolution(a1, a2, a3 & 1);
  }

  return result;
}

uint64_t _s17RealityFoundation24OrbitEntityActionHandlerVSgWOg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

double _s17RealityFoundation24OrbitEntityActionHandlerVSgWOi0_(uint64_t a1)
{
  *a1 = 1;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0;
  return result;
}

unint64_t lazy protocol witness table accessor for type OrbitEntityAction and conformance OrbitEntityAction()
{
  result = lazy protocol witness table cache variable for type OrbitEntityAction and conformance OrbitEntityAction;
  if (!lazy protocol witness table cache variable for type OrbitEntityAction and conformance OrbitEntityAction)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for OrbitEntityAction, &type metadata for OrbitEntityAction, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type OrbitEntityAction and conformance OrbitEntityAction);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OrbitEntityAction and conformance OrbitEntityAction;
  if (!lazy protocol witness table cache variable for type OrbitEntityAction and conformance OrbitEntityAction)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for OrbitEntityAction, &type metadata for OrbitEntityAction, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type OrbitEntityAction and conformance OrbitEntityAction);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ImpulseAction and conformance ImpulseAction()
{
  result = lazy protocol witness table cache variable for type ImpulseAction and conformance ImpulseAction;
  if (!lazy protocol witness table cache variable for type ImpulseAction and conformance ImpulseAction)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ImpulseAction, &type metadata for ImpulseAction, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ImpulseAction and conformance ImpulseAction);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ImpulseAction and conformance ImpulseAction;
  if (!lazy protocol witness table cache variable for type ImpulseAction and conformance ImpulseAction)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ImpulseAction, &type metadata for ImpulseAction, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ImpulseAction and conformance ImpulseAction);
  }

  return result;
}

double outlined consume of SetEntityEnabledAction?(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return outlined consume of ActionEntityResolution(a1, a2, a3 & 1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SetEntityEnabledAction and conformance SetEntityEnabledAction()
{
  result = lazy protocol witness table cache variable for type SetEntityEnabledAction and conformance SetEntityEnabledAction;
  if (!lazy protocol witness table cache variable for type SetEntityEnabledAction and conformance SetEntityEnabledAction)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SetEntityEnabledAction, &type metadata for SetEntityEnabledAction, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SetEntityEnabledAction and conformance SetEntityEnabledAction);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SetEntityEnabledAction and conformance SetEntityEnabledAction;
  if (!lazy protocol witness table cache variable for type SetEntityEnabledAction and conformance SetEntityEnabledAction)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SetEntityEnabledAction, &type metadata for SetEntityEnabledAction, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SetEntityEnabledAction and conformance SetEntityEnabledAction);
  }

  return result;
}

double outlined consume of NotificationAction?(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NotificationAction and conformance NotificationAction()
{
  result = lazy protocol witness table cache variable for type NotificationAction and conformance NotificationAction;
  if (!lazy protocol witness table cache variable for type NotificationAction and conformance NotificationAction)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NotificationAction, &type metadata for NotificationAction, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type NotificationAction and conformance NotificationAction);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NotificationAction and conformance NotificationAction;
  if (!lazy protocol witness table cache variable for type NotificationAction and conformance NotificationAction)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NotificationAction, &type metadata for NotificationAction, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type NotificationAction and conformance NotificationAction);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PlayAnimationAction and conformance PlayAnimationAction()
{
  result = lazy protocol witness table cache variable for type PlayAnimationAction and conformance PlayAnimationAction;
  if (!lazy protocol witness table cache variable for type PlayAnimationAction and conformance PlayAnimationAction)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PlayAnimationAction, &type metadata for PlayAnimationAction, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PlayAnimationAction and conformance PlayAnimationAction);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PlayAnimationAction and conformance PlayAnimationAction;
  if (!lazy protocol witness table cache variable for type PlayAnimationAction and conformance PlayAnimationAction)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PlayAnimationAction, &type metadata for PlayAnimationAction, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PlayAnimationAction and conformance PlayAnimationAction);
  }

  return result;
}

void _simd_slerp_internal(float32x4_t a1, float32x4_t a2, float a3)
{
  v5 = 1.0 - a3;
  v6 = vsubq_f32(a1, a2);
  v7 = vmulq_f32(v6, v6);
  v8 = vaddq_f32(a1, a2);
  v9 = vmulq_f32(v8, v8);
  v10 = atan2f(sqrtf(vaddv_f32(vadd_f32(*v7.i8, *&vextq_s8(v7, v7, 8uLL)))), sqrtf(vaddv_f32(vadd_f32(*v9.i8, *&vextq_s8(v9, v9, 8uLL)))));
  v11 = v10 + v10;
  if ((v10 + v10) != 0.0)
  {
    sinf(v11);
  }

  if ((v5 * v11) != 0.0)
  {
    sinf(v5 * v11);
  }

  v12 = v11 * a3;
  if (v12 != 0.0)
  {
    sinf(v12);
  }
}

__n128 OrbitAnimation.init(name:duration:axis:startTransform:spinClockwise:orientToPath:rotationCount:bindTarget:blendLayer:repeatMode:fillMode:isAdditive:trimStart:trimEnd:trimDuration:offset:delay:speed:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char a4@<W3>, uint64_t *a5@<X4>, int a6@<W5>, char *a7@<X6>, char *a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, __n128 a11@<Q1>, __n128 a12@<Q2>, __n128 a13@<Q3>, __n128 a14@<Q4>, float a15@<S5>, double a16@<D6>, double a17@<D7>, char a18, uint64_t a19, char a20, uint64_t a21, char a22, uint64_t a23, char a24, int a25)
{
  v37 = a5[1];
  v38 = *a5;
  v36 = *(a5 + 16);
  v31 = *a7;
  v39 = *a8;

  outlined consume of BindTarget?(0, 0, 0xFFu);
  type metadata accessor for TimelineDefinition();
  v32 = swift_allocObject();
  *(v32 + 16) = 0;
  *(a9 + 56) = a19;
  *(a9 + 64) = a20 & 1;
  *(a9 + 65) = 0;
  *(a9 + 72) = a21;
  *(a9 + 80) = a22 & 1;
  *(a9 + 81) = 0;
  *(a9 + 88) = a23;
  *(a9 + 96) = a24 & 1;
  *(a9 + 97) = 0;
  *(a9 + 104) = a16;
  *(a9 + 112) = 0;
  *(a9 + 120) = a17;
  *(a9 + 128) = 0;
  *(a9 + 132) = a25;
  *(a9 + 136) = 0;
  *(a9 + 137) = v31;
  *(a9 + 144) = 0;
  *(a9 + 152) = a1;
  *(a9 + 160) = a2;
  *(a9 + 168) = xmmword_1C1898800;
  *(a9 + 184) = 0;
  *(a9 + 188) = 0;
  *(a9 + 192) = 0;
  *(a9 + 194) = 0;
  *(a9 + 200) = v32;
  outlined consume of BindTarget?(0, 0, 0xFFu);
  v33 = swift_allocObject();
  *(v33 + 16) = 0;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = v38;
  *(a9 + 24) = v37;
  *(a9 + 32) = v36;
  *(a9 + 33) = v47;
  *(a9 + 35) = v48;
  *(a9 + 36) = a6;
  *(a9 + 40) = 0;
  *(a9 + 41) = v39;
  *(a9 + 42) = 0;
  *(a9 + 43) = a18;
  *(a9 + 48) = v33;
  *(a9 + 208) = a10;
  *(a9 + 216) = 0;
  *(a9 + 224) = a11;
  *(a9 + 240) = 0;
  *(a9 + 256) = a12;
  *(a9 + 272) = a13;
  result = a14;
  *(a9 + 288) = a14;
  *(a9 + 304) = 0;
  *(a9 + 305) = a3;
  *(a9 + 306) = a4;
  *(a9 + 308) = a15;
  *(a9 + 312) = 0;
  return result;
}

uint64_t OrbitAnimation.name.getter()
{
  if (v0[1])
  {
    v1 = *v0;
  }

  else if (*(v0[6] + 16))
  {
    RETimelineDefinitionGetName();
    v1 = String.init(cString:)();
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

uint64_t key path getter for OrbitAnimation.name : OrbitAnimation@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = a1[1];
  if (v4)
  {
    *a2 = *a1;
    a2[1] = v4;
  }

  else if (*(a1[6] + 16))
  {
    RETimelineDefinitionGetName();
    *a2 = String.init(cString:)();
    a2[1] = v7;
  }

  else
  {
    *a2 = 0;
    a2[1] = 0xE000000000000000;
  }
}

void OrbitAnimation.name.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

void (*OrbitAnimation.name.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = v1[1];
  a1[2] = v1;
  a1[3] = v3;
  if (v3)
  {
    v4 = *v1;
    v5 = v3;
  }

  else
  {
    v4 = *(v1[6] + 16);
    if (v4)
    {
      RETimelineDefinitionGetName();
      v4 = String.init(cString:)();
    }

    else
    {
      v5 = 0xE000000000000000;
    }
  }

  *a1 = v4;
  a1[1] = v5;

  return OrbitAnimation.name.modify;
}

void OrbitAnimation.name.modify(uint64_t *a1, char a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  if (a2)
  {

    *v4 = v3;
    v4[1] = v2;
  }

  else
  {

    *v4 = v3;
    v4[1] = v2;
  }
}

uint64_t OrbitAnimation.blendLayer.getter()
{
  if (*(v0 + 40) != 1)
  {
    return *(v0 + 36);
  }

  result = *(*(v0 + 48) + 16);
  if (result)
  {
    return RETimelineDefinitionGetAnimationLayer();
  }

  return result;
}

uint64_t OrbitAnimation.blendLayer.setter(uint64_t result)
{
  *(v1 + 36) = result;
  *(v1 + 40) = 0;
  return result;
}

uint64_t *(*OrbitAnimation.blendLayer.modify(uint64_t a1))(uint64_t *result)
{
  *a1 = v1;
  if (*(v1 + 40) == 1)
  {
    v2 = *(*(v1 + 48) + 16);
    if (v2)
    {
      v3 = a1;
      LODWORD(v2) = RETimelineDefinitionGetAnimationLayer();
      a1 = v3;
    }
  }

  else
  {
    LODWORD(v2) = *(v1 + 36);
  }

  *(a1 + 8) = v2;
  return BlendTreeAnimation.blendLayer.modify;
}

uint64_t OrbitAnimation.bindTarget.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = v2;
  v6 = v3;
  v7 = *(v1 + 32);
  if (v4 == 255)
  {
    v5 = *(*(v1 + 48) + 16);
    if (v5)
    {
      v8 = *(v1 + 16);
      v9 = a1;
      v10 = v3;
      v11 = v4;
      RETimelineDefinitionGetTargetPath();
      v12 = String.init(cString:)();
      static InternalBindPath.targetFromPath(_:)(v12, v13, v15);

      LOBYTE(v4) = v11;
      v3 = v10;
      a1 = v9;
      v2 = v8;
      v5 = v15[0];
      v6 = v15[1];
      v7 = v16;
    }

    else
    {
      v7 = 0;
      v6 = 0xE000000000000000;
    }
  }

  *a1 = v5;
  *(a1 + 8) = v6;
  *(a1 + 16) = v7;

  return outlined copy of BindTarget?(v2, v3, v4);
}

uint64_t key path setter for OrbitAnimation.bindTarget : OrbitAnimation(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a1 + 16);
  v8 = *(a2 + 32);
  outlined copy of BindTarget(*a1, v4, v7);
  result = outlined consume of BindTarget?(v5, v6, v8);
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  *(a2 + 32) = v7;
  return result;
}

uint64_t OrbitAnimation.bindTarget.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  result = outlined consume of BindTarget?(*(v1 + 16), *(v1 + 24), *(v1 + 32));
  *(v1 + 16) = v2;
  *(v1 + 24) = v3;
  *(v1 + 32) = v4;
  return result;
}

uint64_t (*OrbitAnimation.bindTarget.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = v3;
  v7 = v4;
  v8 = *(v1 + 32);
  if (v5 == 255)
  {
    v6 = *(*(v1 + 48) + 16);
    if (v6)
    {
      v9 = *(v1 + 16);
      v10 = *(v1 + 24);
      v11 = *(v1 + 32);
      RETimelineDefinitionGetTargetPath();
      v12 = String.init(cString:)();
      static InternalBindPath.targetFromPath(_:)(v12, v13, v15);

      LOBYTE(v5) = v11;
      v4 = v10;
      v3 = v9;
      v6 = v15[0];
      v7 = v15[1];
      v8 = v16;
    }

    else
    {
      v8 = 0;
      v7 = 0xE000000000000000;
    }
  }

  *a1 = v6;
  *(a1 + 8) = v7;
  *(a1 + 16) = v8;
  outlined copy of BindTarget?(v3, v4, v5);
  return OrbitAnimation.bindTarget.modify;
}

uint64_t OrbitAnimation.bindTarget.modify(uint64_t a1, char a2)
{
  v2 = *(a1 + 24);
  v4 = *a1;
  v3 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = *(v2 + 32);
  if (a2)
  {
    outlined copy of BindTarget(*a1, v3, v5);
    outlined consume of BindTarget?(v6, v7, v8);
    *(v2 + 16) = v4;
    *(v2 + 24) = v3;
    *(v2 + 32) = v5;

    return outlined consume of BindTarget(v4, v3, v5);
  }

  else
  {
    result = outlined consume of BindTarget?(*(v2 + 16), *(v2 + 24), *(v2 + 32));
    *(v2 + 16) = v4;
    *(v2 + 24) = v3;
    *(v2 + 32) = v5;
  }

  return result;
}

uint64_t OrbitAnimation.fillMode.getter@<X0>(_BYTE *a1@<X8>)
{
  if (*(v1 + 42))
  {
    result = *(*(v1 + 48) + 16);
    if (result)
    {
      v3 = a1;
      result = RETimelineDefinitionGetFillMode();
      a1 = v3;
    }
  }

  else
  {
    result = *(v1 + 41);
  }

  *a1 = result;
  return result;
}

unsigned __int8 *(*OrbitAnimation.fillMode.modify(uint64_t a1))(unsigned __int8 *result)
{
  *a1 = v1;
  if (*(v1 + 42))
  {
    v2 = *(*(v1 + 48) + 16);
    if (v2)
    {
      v3 = a1;
      LOBYTE(v2) = RETimelineDefinitionGetFillMode();
      a1 = v3;
    }
  }

  else
  {
    LOBYTE(v2) = *(v1 + 41);
  }

  *(a1 + 8) = v2;
  return BlendTreeAnimation.fillMode.modify;
}

uint64_t OrbitAnimation.additive.getter()
{
  LODWORD(v1) = *(v0 + 43);
  if (v1 == 2)
  {
    v1 = *(*(v0 + 48) + 16);
    if (v1)
    {
      LOBYTE(v1) = RETimelineDefinitionIsAdditive();
    }
  }

  return v1 & 1;
}

_BYTE *(*OrbitAnimation.additive.modify(uint64_t a1))(_BYTE *result)
{
  *a1 = v1;
  LODWORD(v2) = *(v1 + 43);
  if (v2 == 2)
  {
    v2 = *(*(v1 + 48) + 16);
    if (v2)
    {
      v3 = a1;
      LOBYTE(v2) = RETimelineDefinitionIsAdditive();
      a1 = v3;
    }
  }

  *(a1 + 8) = v2 & 1;
  return BlendTreeAnimation.isAdditive.modify;
}

uint64_t OrbitAnimation.trimStart.getter()
{
  if ((*(v0 + 65) & 1) == 0)
  {
    return *(v0 + 56);
  }

  result = *(*(v0 + 200) + 16);
  if (result)
  {
    result = RETimelineDefinitionGetClipStart();
    if (result)
    {
      return *result;
    }
  }

  return result;
}

uint64_t *key path getter for OrbitAnimation.trimStart : OrbitAnimation@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  if (*(result + 65))
  {
    result = *(result[25] + 16);
    if (result)
    {
      v2 = a2;
      result = RETimelineDefinitionGetClipStart();
      if (result)
      {
        v3 = 0;
        v4 = *result;
      }

      else
      {
        v4 = 0;
        v3 = 1;
      }

      a2 = v2;
    }

    else
    {
      v4 = 0;
      v3 = 1;
    }
  }

  else
  {
    v4 = result[7];
    v3 = *(result + 64);
  }

  *a2 = v4;
  *(a2 + 8) = v3 & 1;
  return result;
}

uint64_t OrbitAnimation.trimStart.setter(uint64_t result, char a2)
{
  *(v2 + 56) = result;
  *(v2 + 64) = a2 & 1;
  *(v2 + 65) = 0;
  return result;
}

uint64_t (*OrbitAnimation.trimStart.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 16) = v1;
  if (*(v1 + 65))
  {
    if (*(*(v1 + 200) + 16) && (ClipStart = RETimelineDefinitionGetClipStart()) != 0)
    {
      v4 = 0;
      v5 = *ClipStart;
    }

    else
    {
      v5 = 0;
      v4 = 1;
    }
  }

  else
  {
    v5 = *(v1 + 56);
    v4 = *(v1 + 64);
  }

  *a1 = v5;
  *(a1 + 8) = v4 & 1;
  return BlendTreeAnimation.trimStart.modify;
}

uint64_t OrbitAnimation.trimEnd.getter()
{
  if ((*(v0 + 81) & 1) == 0)
  {
    return *(v0 + 72);
  }

  result = *(*(v0 + 200) + 16);
  if (result)
  {
    result = RETimelineDefinitionGetClipEnd();
    if (result)
    {
      return *result;
    }
  }

  return result;
}

uint64_t *key path getter for OrbitAnimation.trimEnd : OrbitAnimation@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  if (*(result + 81))
  {
    result = *(result[25] + 16);
    if (result)
    {
      v2 = a2;
      result = RETimelineDefinitionGetClipEnd();
      if (result)
      {
        v3 = 0;
        v4 = *result;
      }

      else
      {
        v4 = 0;
        v3 = 1;
      }

      a2 = v2;
    }

    else
    {
      v4 = 0;
      v3 = 1;
    }
  }

  else
  {
    v4 = result[9];
    v3 = *(result + 80);
  }

  *a2 = v4;
  *(a2 + 8) = v3 & 1;
  return result;
}

uint64_t OrbitAnimation.trimEnd.setter(uint64_t result, char a2)
{
  *(v2 + 72) = result;
  *(v2 + 80) = a2 & 1;
  *(v2 + 81) = 0;
  return result;
}

uint64_t (*OrbitAnimation.trimEnd.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 16) = v1;
  if (*(v1 + 81))
  {
    if (*(*(v1 + 200) + 16) && (ClipEnd = RETimelineDefinitionGetClipEnd()) != 0)
    {
      v4 = 0;
      v5 = *ClipEnd;
    }

    else
    {
      v5 = 0;
      v4 = 1;
    }
  }

  else
  {
    v5 = *(v1 + 72);
    v4 = *(v1 + 80);
  }

  *a1 = v5;
  *(a1 + 8) = v4 & 1;
  return BlendTreeAnimation.trimEnd.modify;
}

uint64_t OrbitAnimation.trimDuration.getter()
{
  if ((*(v0 + 97) & 1) == 0)
  {
    return *(v0 + 88);
  }

  result = *(*(v0 + 200) + 16);
  if (result)
  {
    result = RETimelineDefinitionGetClipDuration();
    if (result)
    {
      return *result;
    }
  }

  return result;
}

uint64_t *key path getter for OrbitAnimation.trimDuration : OrbitAnimation@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  if (*(result + 97))
  {
    result = *(result[25] + 16);
    if (result)
    {
      v2 = a2;
      result = RETimelineDefinitionGetClipDuration();
      if (result)
      {
        v3 = 0;
        v4 = *result;
      }

      else
      {
        v4 = 0;
        v3 = 1;
      }

      a2 = v2;
    }

    else
    {
      v4 = 0;
      v3 = 1;
    }
  }

  else
  {
    v4 = result[11];
    v3 = *(result + 96);
  }

  *a2 = v4;
  *(a2 + 8) = v3 & 1;
  return result;
}

uint64_t OrbitAnimation.trimDuration.setter(uint64_t result, char a2)
{
  *(v2 + 88) = result;
  *(v2 + 96) = a2 & 1;
  *(v2 + 97) = 0;
  return result;
}

uint64_t (*OrbitAnimation.trimDuration.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 16) = v1;
  if (*(v1 + 97))
  {
    if (*(*(v1 + 200) + 16) && (ClipDuration = RETimelineDefinitionGetClipDuration()) != 0)
    {
      v4 = 0;
      v5 = *ClipDuration;
    }

    else
    {
      v5 = 0;
      v4 = 1;
    }
  }

  else
  {
    v5 = *(v1 + 88);
    v4 = *(v1 + 96);
  }

  *a1 = v5;
  *(a1 + 8) = v4 & 1;
  return BlendTreeAnimation.trimDuration.modify;
}

double OrbitAnimation.offset.getter()
{
  if ((*(v0 + 112) & 1) == 0)
  {
    return *(v0 + 104);
  }

  result = 0.0;
  if (*(*(v0 + 200) + 16))
  {
    TimelineType = RETimelineDefinitionGetTimelineType();
    result = 0.0;
    if (TimelineType == 2)
    {

      RETimelineDefinitionGetClipOffset();
    }
  }

  return result;
}

void key path getter for OrbitAnimation.offset : OrbitAnimation(uint64_t a1@<X0>, double *a2@<X8>)
{
  if (*(a1 + 112))
  {
    v4 = 0;
    if (*(*(a1 + 200) + 16) && RETimelineDefinitionGetTimelineType() == 2)
    {
      RETimelineDefinitionGetClipOffset();
      v4 = v5;
    }
  }

  else
  {
    v4 = *(a1 + 104);
  }

  *a2 = v4;
}

uint64_t (*OrbitAnimation.offset.modify(double *a1, double a2))()
{
  *(a1 + 1) = v2;
  if (*(v2 + 112))
  {
    v4 = 0;
    if (*(*(v2 + 200) + 16) && RETimelineDefinitionGetTimelineType() == 2)
    {
      RETimelineDefinitionGetClipOffset();
      v4 = v5;
    }
  }

  else
  {
    v4 = *(v2 + 104);
  }

  *a1 = v4;
  return OrbitAnimation.offset.modify;
}

void *OrbitAnimation.offset.modify(void *result)
{
  v1 = result[1];
  *(v1 + 104) = *result;
  *(v1 + 112) = 0;
  return result;
}

double OrbitAnimation.delay.getter()
{
  if ((*(v0 + 128) & 1) == 0)
  {
    return *(v0 + 120);
  }

  result = 0.0;
  if (*(*(v0 + 200) + 16))
  {
    TimelineType = RETimelineDefinitionGetTimelineType();
    result = 0.0;
    if (TimelineType == 2)
    {

      RETimelineDefinitionGetClipDelay();
    }
  }

  return result;
}

void key path getter for OrbitAnimation.delay : OrbitAnimation(uint64_t a1@<X0>, double *a2@<X8>)
{
  if (*(a1 + 128))
  {
    v4 = 0;
    if (*(*(a1 + 200) + 16) && RETimelineDefinitionGetTimelineType() == 2)
    {
      RETimelineDefinitionGetClipDelay();
      v4 = v5;
    }
  }

  else
  {
    v4 = *(a1 + 120);
  }

  *a2 = v4;
}

uint64_t (*OrbitAnimation.delay.modify(double *a1, double a2))()
{
  *(a1 + 1) = v2;
  if (*(v2 + 128))
  {
    v4 = 0;
    if (*(*(v2 + 200) + 16) && RETimelineDefinitionGetTimelineType() == 2)
    {
      RETimelineDefinitionGetClipDelay();
      v4 = v5;
    }
  }

  else
  {
    v4 = *(v2 + 120);
  }

  *a1 = v4;
  return OrbitAnimation.delay.modify;
}

void *OrbitAnimation.delay.modify(void *result)
{
  v1 = result[1];
  *(v1 + 120) = *result;
  *(v1 + 128) = 0;
  return result;
}

float OrbitAnimation.speed.getter(__n128 a1)
{
  if ((*(v1 + 136) & 1) == 0)
  {
    return *(v1 + 132);
  }

  result = 1.0;
  if (*(*(v1 + 200) + 16))
  {
    TimelineType = RETimelineDefinitionGetTimelineType();
    result = 1.0;
    if (TimelineType == 2)
    {

      RETimelineDefinitionGetClipSpeed();
    }
  }

  return result;
}

uint64_t key path getter for OrbitAnimation.speed : OrbitAnimation@<X0>(uint64_t result@<X0>, float *a2@<X8>)
{
  if (*(result + 136))
  {
    v4 = 1.0;
    if (*(*(result + 200) + 16))
    {
      result = RETimelineDefinitionGetTimelineType();
      if (result == 2)
      {
        result = RETimelineDefinitionGetClipSpeed();
        v4 = v5;
      }
    }
  }

  else
  {
    v4 = *(result + 132);
  }

  *a2 = v4;
  return result;
}

uint64_t *(*OrbitAnimation.speed.modify(uint64_t a1, double a2))(uint64_t *result)
{
  *a1 = v2;
  if (*(v2 + 136))
  {
    v4 = 1.0;
    if (*(*(v2 + 200) + 16) && RETimelineDefinitionGetTimelineType() == 2)
    {
      RETimelineDefinitionGetClipSpeed();
      v4 = v5;
    }
  }

  else
  {
    v4 = *(v2 + 132);
  }

  *(a1 + 8) = v4;
  return OrbitAnimation.speed.modify;
}

uint64_t *OrbitAnimation.speed.modify(uint64_t *result)
{
  v1 = *result;
  *(v1 + 132) = *(result + 2);
  *(v1 + 136) = 0;
  return result;
}

uint64_t OrbitAnimation.repeatMode.getter@<X0>(_BYTE *a1@<X8>)
{
  result = *(v2 + 137);
  if (result == 4)
  {
    if (!*(*(v2 + 200) + 16))
    {
LABEL_6:
      result = 0;
      goto LABEL_8;
    }

    v4 = a1;
    if (RETimelineDefinitionGetTimelineType() != 2)
    {
      result = 0;
      a1 = v4;
      goto LABEL_8;
    }

    result = RETimelineDefinitionGetClipLoopBehavior();
    a1 = v4;
    if (result >= 4)
    {
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      goto LABEL_6;
    }
  }

LABEL_8:
  *a1 = result;
  return result;
}

_BYTE *(*OrbitAnimation.repeatMode.modify(uint64_t a1, double a2))(_BYTE *result)
{
  *a1 = v2;
  v3 = *(v2 + 137);
  if (v3 == 4)
  {
    if (*(*(v2 + 200) + 16))
    {
      v4 = a1;
      if (RETimelineDefinitionGetTimelineType() != 2)
      {
        LOBYTE(v3) = 0;
        a1 = v4;
        goto LABEL_9;
      }

      ClipLoopBehavior = RETimelineDefinitionGetClipLoopBehavior();
      LOBYTE(v3) = ClipLoopBehavior;
      v6 = ClipLoopBehavior >= 4;
      a1 = v4;
      if (!v6)
      {
        goto LABEL_9;
      }

      a1 = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    LOBYTE(v3) = 0;
  }

LABEL_9:
  *(a1 + 8) = v3;
  return BlendTreeAnimation.repeatMode.modify;
}

double OrbitAnimation.duration.getter()
{
  if ((*(v0 + 216) & 1) == 0)
  {
    return *(v0 + 208);
  }

  if (!*(*(v0 + 48) + 16))
  {
    return 0.0;
  }

  RETimelineDefinitionGetDuration();
  return result;
}

uint64_t (*OrbitAnimation.duration.modify(void *a1))()
{
  a1[1] = v1;
  if (*(v1 + 216))
  {
    if (*(*(v1 + 48) + 16))
    {
      RETimelineDefinitionGetDuration();
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = *(v1 + 208);
  }

  *a1 = v3;
  return OrbitAnimation.duration.modify;
}

void *OrbitAnimation.duration.modify(void *result)
{
  v1 = result[1];
  *(v1 + 208) = *result;
  *(v1 + 216) = 0;
  return result;
}

double OrbitAnimation.axis.getter()
{
  if ((*(v0 + 240) & 1) == 0)
  {
    return *(v0 + 224);
  }

  if (!*(*(v0 + 48) + 16))
  {
    return 0.0078125;
  }

  RETimelineDefinitionGetAxis();
  return result;
}

uint64_t (*OrbitAnimation.axis.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x18uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  if (*(v1 + 240))
  {
    if (*(*(v1 + 48) + 16))
    {
      RETimelineDefinitionGetAxis();
    }

    else
    {
      v5 = *&zmmword_1C1887630[16];
    }
  }

  else
  {
    v5 = *(v1 + 224);
  }

  *v4 = v5;
  return OrbitAnimation.axis.modify;
}

void OrbitAnimation.axis.modify(void **a1)
{
  v1 = *a1;
  v3 = v1[1];
  v2 = v1[2];
  *(v2 + 224) = *v1;
  *(v2 + 232) = v3;
  *(v2 + 240) = 0;
  free(v1);
}

double OrbitAnimation.startTransform.getter()
{
  if ((*(v0 + 304) & 1) == 0)
  {
    return *(v0 + 256);
  }

  if (*(*(v0 + 48) + 16))
  {
    RETimelineDefinitionGetStartTransform();
    if (one-time initialization token for identity != -1)
    {
      v2 = result;
      swift_once();
      return v2;
    }
  }

  else
  {
    if (one-time initialization token for identity != -1)
    {
      swift_once();
    }

    return 0.00781250185;
  }

  return result;
}

void OrbitAnimation.startTransform.setter(__n128 a1, __n128 a2, __n128 a3)
{
  v3[16] = a1;
  v3[17] = a2;
  v3[18] = a3;
  v3[19].n128_u8[0] = 0;
}

void (*OrbitAnimation.startTransform.modify(__int128 **a1))(void **a1)
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
  if (*(v1 + 304))
  {
    if (*(*(v1 + 48) + 16))
    {
      RETimelineDefinitionGetStartTransform();
      if (one-time initialization token for identity != -1)
      {
        v10 = v6;
        v11 = v5;
        v9 = v7;
        swift_once();
        v7 = v9;
        v6 = v10;
        v5 = v11;
      }
    }

    else
    {
      if (one-time initialization token for identity != -1)
      {
        swift_once();
      }

      v5 = xmmword_1C1887620;
      v6 = static simd_quatf.identity;
      v7 = 0uLL;
    }
  }

  else
  {
    v5 = *(v1 + 256);
    v6 = *(v1 + 272);
    v7 = *(v1 + 288);
  }

  *v4 = v5;
  v4[1] = v6;
  v4[2] = v7;
  return OrbitAnimation.startTransform.modify;
}

void OrbitAnimation.startTransform.modify(void **a1)
{
  v1 = *a1;
  v3 = v1[5];
  v2 = v1[6];
  v4 = *(v1 + 1);
  v5 = v1[4];
  *(v2 + 256) = *v1;
  *(v2 + 272) = v4;
  *(v2 + 288) = v5;
  *(v2 + 296) = v3;
  *(v2 + 304) = 0;
  free(v1);
}

uint64_t OrbitAnimation.spinClockwise.getter()
{
  v1 = *(v0 + 305);
  if (v1 == 2)
  {
    if (*(*(v0 + 48) + 16))
    {
      LOBYTE(v1) = RETimelineDefinitionGetSpinClockwise();
    }

    else
    {
      LOBYTE(v1) = 1;
    }
  }

  return v1 & 1;
}

uint64_t (*OrbitAnimation.spinClockwise.modify(uint64_t a1))()
{
  *a1 = v1;
  v2 = *(v1 + 305);
  if (v2 == 2)
  {
    if (*(*(v1 + 48) + 16))
    {
      v3 = a1;
      LOBYTE(v2) = RETimelineDefinitionGetSpinClockwise();
      a1 = v3;
    }

    else
    {
      LOBYTE(v2) = 1;
    }
  }

  *(a1 + 8) = v2 & 1;
  return OrbitAnimation.spinClockwise.modify;
}

uint64_t OrbitAnimation.orientToPath.getter()
{
  LODWORD(v1) = *(v0 + 306);
  if (v1 == 2)
  {
    v1 = *(*(v0 + 48) + 16);
    if (v1)
    {
      LOBYTE(v1) = RETimelineDefinitionGetOrientToPath();
    }
  }

  return v1 & 1;
}

uint64_t (*OrbitAnimation.orientToPath.modify(uint64_t a1))()
{
  *a1 = v1;
  LODWORD(v2) = *(v1 + 306);
  if (v2 == 2)
  {
    v2 = *(*(v1 + 48) + 16);
    if (v2)
    {
      v3 = a1;
      LOBYTE(v2) = RETimelineDefinitionGetOrientToPath();
      a1 = v3;
    }
  }

  *(a1 + 8) = v2 & 1;
  return OrbitAnimation.orientToPath.modify;
}

float OrbitAnimation.rotationCount.getter()
{
  if ((*(v0 + 312) & 1) == 0)
  {
    return *(v0 + 308);
  }

  if (!*(*(v0 + 48) + 16))
  {
    return 1.0;
  }

  RETimelineDefinitionGetRotationCount();
  return result;
}

uint64_t *(*OrbitAnimation.rotationCount.modify(uint64_t a1))(uint64_t *result)
{
  *a1 = v1;
  if (*(v1 + 312))
  {
    if (*(*(v1 + 48) + 16))
    {
      v2 = a1;
      RETimelineDefinitionGetRotationCount();
      a1 = v2;
    }

    else
    {
      v3 = 1.0;
    }
  }

  else
  {
    v3 = *(v1 + 308);
  }

  *(a1 + 8) = v3;
  return OrbitAnimation.rotationCount.modify;
}

uint64_t *OrbitAnimation.rotationCount.modify(uint64_t *result)
{
  v1 = *result;
  *(v1 + 308) = *(result + 2);
  *(v1 + 312) = 0;
  return result;
}

uint64_t OrbitAnimation.init(_:)@<X0>(uint64_t a2@<X8>)
{
  type metadata accessor for TimelineDefinition();
  v3 = swift_allocObject();
  swift_retain_n();
  v4 = REAssetHandleAssetType();
  if (v4 == 11)
  {
    RootTimeline = REAnimationSceneAssetGetRootTimeline();

    if (RootTimeline)
    {
LABEL_5:
      v7 = RETimelineDefinitionCreateFromTimeline();

      *(v3 + 16) = v7;
      if (v7)
      {
        if (RETimelineDefinitionGetTimelineType() == 2)
        {
          v8 = 1;

          if (*(v3 + 16) && (ClipSourceRef = RETimelineDefinitionCreateClipSourceRef()) != 0)
          {
            v10 = ClipSourceRef;
            v11 = swift_allocObject();
            *(v11 + 16) = v10;
            RERetain();
            RERelease();
            v17 = 0;
            v18 = 0;
            v12 = 0;
          }

          else
          {
            v11 = swift_allocObject();
            v17 = 0;
            v18 = 0;
            v12 = 0;
            *(v11 + 16) = 0;
          }

          v16 = 2;
          v15 = v3;
          v14 = 1;
          goto LABEL_17;
        }

        v7 = *(v3 + 16);
      }

      if (v7)
      {
        RETimelineDefinitionGetName();
        v17 = String.init(cString:)();
        v18 = v13;
      }

      else
      {
        v17 = 0;
        v18 = 0xE000000000000000;
      }

      outlined consume of BindTarget?(0, 0, 0xFFu);
      v16 = 0;
      v15 = swift_allocObject();
      *(v15 + 16) = 0;
      v8 = 0;
      v14 = 0;
      v12 = v3;
      v11 = v3;
LABEL_17:

      *a2 = 0u;
      *(a2 + 16) = 0u;
      *(a2 + 32) = -1;
      *(a2 + 36) = 0x201000100000000;
      *(a2 + 48) = v11;
      *(a2 + 56) = 0;
      *(a2 + 64) = 0;
      *(a2 + 65) = 1;
      *(a2 + 72) = 0;
      *(a2 + 80) = 0;
      *(a2 + 81) = 1;
      *(a2 + 88) = 0;
      *(a2 + 96) = 0;
      *(a2 + 97) = 1;
      *(a2 + 104) = 0;
      *(a2 + 112) = 1;
      *(a2 + 120) = 0;
      *(a2 + 128) = 1;
      *(a2 + 132) = 0;
      *(a2 + 136) = 1;
      *(a2 + 137) = 4;
      *(a2 + 144) = v12;
      *(a2 + 152) = v17;
      *(a2 + 168) = 0;
      *(a2 + 176) = 0;
      *(a2 + 160) = v18;
      *(a2 + 184) = -1;
      *(a2 + 188) = 0;
      *(a2 + 192) = v14;
      *(a2 + 193) = 0;
      *(a2 + 194) = v8;
      *(a2 + 195) = v16;
      *(a2 + 200) = v15;
      *(a2 + 208) = 0;
      *(a2 + 216) = 1;
      *(a2 + 224) = 0;
      *(a2 + 232) = 0;
      *(a2 + 240) = 1;
      *(a2 + 272) = 0u;
      *(a2 + 288) = 0u;
      *(a2 + 256) = 0u;
      *(a2 + 304) = 1;
      *(a2 + 305) = 514;
      *(a2 + 308) = 0;
      *(a2 + 312) = 1;
      return result;
    }
  }

  else
  {
    if (v4 == 5)
    {

      goto LABEL_5;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void *OrbitAnimation.createResource()()
{
  v1 = *(v0 + 48);
  v11 = *(v0 + 240);
  v12 = *(v0 + 216);
  v10 = *(v0 + 304);
  v2 = *(v0 + 305);
  v3 = *(v0 + 306);
  v4 = *(v0 + 312);
  if (!*(v0 + 8))
  {
    if (*(v0 + 32) == 255 && (*(v0 + 40) & 1) != 0 && (*(v0 + 42) & 1) != 0 && *(v0 + 43) == 2 && (*(v0 + 216) & 1) != 0 && (*(v0 + 240) & 1) != 0 && (*(v0 + 304) & 1) != 0 && v2 == 2 && v3 == 2 && (*(v0 + 312) & 1) != 0)
    {
      v6._rawValue = 0;
      return OrbitAnimation.createResource(timelineDefinition:)(v6);
    }

    if (*(v1 + 16))
    {
      RETimelineDefinitionGetName();
      String.init(cString:)();
    }
  }

  String.utf8CString.getter();

  OrbitAnimation = RETimelineDefinitionCreateOrbitAnimation();

  if ((v12 & 1) != 0 && *(v1 + 16))
  {
    RETimelineDefinitionGetDuration();
  }

  RETimelineDefinitionSetDuration();
  if ((v11 & 1) != 0 && *(v1 + 16))
  {
    RETimelineDefinitionGetAxis();
  }

  RETimelineDefinitionSetAxis();
  if (v10)
  {
    if (*(v1 + 16))
    {
      RETimelineDefinitionGetStartTransform();
      if (one-time initialization token for identity == -1)
      {
        goto LABEL_28;
      }

      goto LABEL_25;
    }

    if (one-time initialization token for identity != -1)
    {
LABEL_25:
      swift_once();
    }
  }

LABEL_28:
  RETimelineDefinitionSetStartTransform();
  if (v2 == 2 && *(v1 + 16))
  {
    RETimelineDefinitionGetSpinClockwise();
  }

  RETimelineDefinitionSetSpinClockwise();
  if (v3 == 2 && *(v1 + 16))
  {
    RETimelineDefinitionGetOrientToPath();
  }

  RETimelineDefinitionSetOrientToPath();
  if ((v4 & 1) != 0 && *(v1 + 16))
  {
    RETimelineDefinitionGetRotationCount();
  }

  RETimelineDefinitionSetRotationCount();
  v8._rawValue = OrbitAnimation;
  v7 = OrbitAnimation.createResource(timelineDefinition:)(v8);
  RERelease();
  return v7;
}

void *OrbitAnimation.createResource(timelineDefinition:)(Swift::OpaquePointer a1)
{
  v2 = *(v1 + 16);
  v57[0] = *v1;
  v57[1] = v2;
  v57[2] = *(v1 + 32);
  v58 = *(v1 + 48);
  v3 = *(v1 + 168);
  v65 = *(v1 + 152);
  v66 = v3;
  v67 = *(v1 + 184);
  v68 = *(v1 + 200);
  v4 = *(v1 + 104);
  v61 = *(v1 + 88);
  v62 = v4;
  v5 = *(v1 + 136);
  v63 = *(v1 + 120);
  v64 = v5;
  v6 = *(v1 + 72);
  v59 = *(v1 + 56);
  v60 = v6;
  if (!a1._rawValue)
  {
    v11 = *(v1 + 168);
    v53 = *(v1 + 152);
    v54 = v11;
    v55 = *(v1 + 184);
    v56 = *(v1 + 200);
    v12 = *(v1 + 104);
    v49 = *(v1 + 88);
    v50 = v12;
    v13 = *(v1 + 136);
    v51 = *(v1 + 120);
    v52 = v13;
    v14 = *(v1 + 72);
    v47 = *(v1 + 56);
    v48 = v14;
    if (!TimelineClipProperties.isClipped.getter(v47))
    {
      if (!*(v58 + 16))
      {
        return 0;
      }

      v16 = specialized static __ServiceLocator.shared.getter();
      swift_beginAccess();
      outlined init with copy of __REAssetService(v16 + 120, &v47);
      v17 = *(&v48 + 1);
      v18 = v49;
      __swift_project_boxed_opaque_existential_1(&v47, *(&v48 + 1));
      (*(v18 + 32))(v17, v18);
      __swift_destroy_boxed_opaque_existential_1(&v47);
      TimelineAsset = RETimelineDefinitionCreateTimelineAsset();
      if (!TimelineAsset)
      {
        return 0;
      }

      v20 = TimelineAsset;
      RETimelineDefinitionGetName();
      v21 = String.init(cString:)();
      v23 = v22;
      type metadata accessor for AnimationResource();
      v10 = swift_allocObject();
      v10[2] = v20;
      v10[3] = v21;
      v10[4] = v23;
      RERetain();
      REAssetSetSwiftObject();
      RERelease();
      return v10;
    }

    v53 = v65;
    v54 = v66;
    v55 = v67;
    v56 = v68;
    v49 = v61;
    v50 = v62;
    v51 = v63;
    v52 = v64;
    v47 = v59;
    v48 = v60;
    if ((TimelineClipProperties.isModified.getter() & 1) == 0)
    {
      return TimelineDefinition.resource.getter();
    }

    v43 = v65;
    v44 = v66;
    v45 = v67;
    v46 = v68;
    v39 = v61;
    v40 = v62;
    v41 = v63;
    v42 = v64;
    v37 = v59;
    v38 = v60;
    outlined init with copy of TimelineClipProperties(&v59, &v47);
    v10 = TimelineClipProperties.createClip()();
    v53 = v43;
    v54 = v44;
    v55 = v45;
    v56 = v46;
    v49 = v39;
    v50 = v40;
    v51 = v41;
    v52 = v42;
    v47 = v37;
    v48 = v38;
    v15 = &v47;
    goto LABEL_14;
  }

  v8 = *(v1 + 16);
  v47 = *v1;
  v48 = v8;
  v49 = *(v1 + 32);
  *&v50 = *(v1 + 48);
  outlined init with copy of TimelineBaseProperties(v57, &v37);
  TimelineBaseProperties.writeProperties(_:)(a1);
  v35[0] = v47;
  v35[1] = v48;
  v35[2] = v49;
  v36 = v50;
  outlined destroy of TimelineBaseProperties(v35);
  v53 = v65;
  v54 = v66;
  v55 = v67;
  v56 = v68;
  v49 = v61;
  v50 = v62;
  v51 = v63;
  v52 = v64;
  v47 = v59;
  v48 = v60;
  if (TimelineClipProperties.isClipped.getter(v59))
  {
    v31 = v61;
    v32 = v62;
    v33 = v63;
    v34 = v64;
    v29 = v59;
    v30 = v60;
    v28 = v68;
    v26 = v66;
    v27 = v67;
    v25 = v65;
    type metadata accessor for TimelineDefinition();
    v9 = swift_allocObject();
    v9[2]._rawValue = a1._rawValue;
    outlined init with copy of TimelineClipProperties(&v59, &v47);
    RERetain();

    v49 = v31;
    v50 = v32;
    v51 = v33;
    v47 = v29;
    v48 = v30;
    *&v52 = v34;
    *(&v52 + 1) = v9;
    v53 = v25;
    v54 = v26;
    v55 = v27;
    v56 = v28;
    outlined init with copy of TimelineClipProperties(&v47, &v37);
    if (v9[2]._rawValue)
    {

      closure #1 in TimelineClipProperties.createClip()(&v47, &v37);

      outlined destroy of TimelineClipProperties(&v47);
      v10 = v37.n128_u64[0];
    }

    else
    {
      outlined destroy of TimelineClipProperties(&v47);
      v10 = 0;
    }

    v39 = v31;
    v40 = v32;
    v41 = v33;
    v37 = v29;
    v38 = v30;
    *&v42 = v34;
    *(&v42 + 1) = v9;
    v46 = v28;
    v44 = v26;
    v45 = v27;
    v43 = v25;
    v15 = &v37;
LABEL_14:
    outlined destroy of TimelineClipProperties(v15);
    return v10;
  }

  type metadata accessor for TimelineDefinition();
  *(swift_allocObject() + 16) = a1;
  RERetain();
  v10 = TimelineDefinition.resource.getter();
  swift_setDeallocating();
  RERelease();
  swift_deallocClassInstance();
  return v10;
}

uint64_t protocol witness for AnimationDefinition.name.getter in conformance OrbitAnimation()
{
  if (v0[1])
  {
    v1 = *v0;
  }

  else if (*(v0[6] + 16))
  {
    RETimelineDefinitionGetName();
    v1 = String.init(cString:)();
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

uint64_t (*protocol witness for AnimationDefinition.name.modify in conformance OrbitAnimation(uint64_t **a1))()
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
  v2[4] = OrbitAnimation.name.modify(v2);
  return protocol witness for AnimationDefinition.name.modify in conformance FromToByAnimation<A>;
}

uint64_t protocol witness for AnimationDefinition.blendLayer.getter in conformance OrbitAnimation()
{
  if (*(v0 + 40) != 1)
  {
    return *(v0 + 36);
  }

  result = *(*(v0 + 48) + 16);
  if (result)
  {
    return RETimelineDefinitionGetAnimationLayer();
  }

  return result;
}

uint64_t protocol witness for AnimationDefinition.blendLayer.setter in conformance OrbitAnimation(uint64_t result)
{
  *(v1 + 36) = result;
  *(v1 + 40) = 0;
  return result;
}

uint64_t (*protocol witness for AnimationDefinition.blendLayer.modify in conformance OrbitAnimation(uint64_t *a1))()
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
  *(v2 + 32) = OrbitAnimation.blendLayer.modify(v2);
  return protocol witness for AnimationDefinition.name.modify in conformance FromToByAnimation<A>;
}

uint64_t protocol witness for AnimationDefinition.fillMode.getter in conformance OrbitAnimation@<X0>(_BYTE *a1@<X8>)
{
  if (*(v1 + 42))
  {
    result = *(*(v1 + 48) + 16);
    if (result)
    {
      v3 = a1;
      result = RETimelineDefinitionGetFillMode();
      a1 = v3;
    }
  }

  else
  {
    result = *(v1 + 41);
  }

  *a1 = result;
  return result;
}

uint64_t (*protocol witness for AnimationDefinition.fillMode.modify in conformance OrbitAnimation(uint64_t *a1))()
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
  *(v2 + 32) = OrbitAnimation.fillMode.modify(v2);
  return protocol witness for AnimationDefinition.name.modify in conformance FromToByAnimation<A>;
}

uint64_t protocol witness for AnimationDefinition.bindTarget.setter in conformance OrbitAnimation(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  result = outlined consume of BindTarget?(*(v1 + 16), *(v1 + 24), *(v1 + 32));
  *(v1 + 16) = v2;
  *(v1 + 24) = v3;
  *(v1 + 32) = v4;
  return result;
}

uint64_t (*protocol witness for AnimationDefinition.bindTarget.modify in conformance OrbitAnimation(uint64_t *a1))()
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
  *(v2 + 32) = OrbitAnimation.bindTarget.modify(v2);
  return protocol witness for AnimationDefinition.bindTarget.modify in conformance FromToByAnimation<A>;
}

uint64_t protocol witness for AnimationDefinition.trimStart.getter in conformance OrbitAnimation()
{
  if ((*(v0 + 65) & 1) == 0)
  {
    return *(v0 + 56);
  }

  result = *(*(v0 + 200) + 16);
  if (result)
  {
    result = RETimelineDefinitionGetClipStart();
    if (result)
    {
      return *result;
    }
  }

  return result;
}

uint64_t protocol witness for AnimationDefinition.trimStart.setter in conformance OrbitAnimation(uint64_t result, char a2)
{
  *(v2 + 56) = result;
  *(v2 + 64) = a2 & 1;
  *(v2 + 65) = 0;
  return result;
}

uint64_t (*protocol witness for AnimationDefinition.trimStart.modify in conformance OrbitAnimation(uint64_t *a1))()
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
  *(v2 + 32) = OrbitAnimation.trimStart.modify(v2);
  return protocol witness for AnimationDefinition.name.modify in conformance FromToByAnimation<A>;
}

uint64_t protocol witness for AnimationDefinition.trimEnd.getter in conformance OrbitAnimation()
{
  if ((*(v0 + 81) & 1) == 0)
  {
    return *(v0 + 72);
  }

  result = *(*(v0 + 200) + 16);
  if (result)
  {
    result = RETimelineDefinitionGetClipEnd();
    if (result)
    {
      return *result;
    }
  }

  return result;
}

uint64_t protocol witness for AnimationDefinition.trimEnd.setter in conformance OrbitAnimation(uint64_t result, char a2)
{
  *(v2 + 72) = result;
  *(v2 + 80) = a2 & 1;
  *(v2 + 81) = 0;
  return result;
}

uint64_t (*protocol witness for AnimationDefinition.trimEnd.modify in conformance OrbitAnimation(uint64_t *a1))()
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
  *(v2 + 32) = OrbitAnimation.trimEnd.modify(v2);
  return protocol witness for AnimationDefinition.name.modify in conformance FromToByAnimation<A>;
}

uint64_t protocol witness for AnimationDefinition.trimDuration.getter in conformance OrbitAnimation()
{
  if ((*(v0 + 97) & 1) == 0)
  {
    return *(v0 + 88);
  }

  result = *(*(v0 + 200) + 16);
  if (result)
  {
    result = RETimelineDefinitionGetClipDuration();
    if (result)
    {
      return *result;
    }
  }

  return result;
}

uint64_t protocol witness for AnimationDefinition.trimDuration.setter in conformance OrbitAnimation(uint64_t result, char a2)
{
  *(v2 + 88) = result;
  *(v2 + 96) = a2 & 1;
  *(v2 + 97) = 0;
  return result;
}

uint64_t (*protocol witness for AnimationDefinition.trimDuration.modify in conformance OrbitAnimation(uint64_t *a1))()
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
  *(v2 + 32) = OrbitAnimation.trimDuration.modify(v2);
  return protocol witness for AnimationDefinition.name.modify in conformance FromToByAnimation<A>;
}

double protocol witness for AnimationDefinition.offset.getter in conformance OrbitAnimation()
{
  if ((*(v0 + 112) & 1) == 0)
  {
    return *(v0 + 104);
  }

  result = 0.0;
  if (*(*(v0 + 200) + 16))
  {
    TimelineType = RETimelineDefinitionGetTimelineType();
    result = 0.0;
    if (TimelineType == 2)
    {

      RETimelineDefinitionGetClipOffset();
    }
  }

  return result;
}

uint64_t (*protocol witness for AnimationDefinition.offset.modify in conformance OrbitAnimation(double **a1))()
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
  *(v2 + 32) = OrbitAnimation.offset.modify(v2, v3);
  return protocol witness for AnimationDefinition.name.modify in conformance FromToByAnimation<A>;
}

double protocol witness for AnimationDefinition.delay.getter in conformance OrbitAnimation()
{
  if ((*(v0 + 128) & 1) == 0)
  {
    return *(v0 + 120);
  }

  result = 0.0;
  if (*(*(v0 + 200) + 16))
  {
    TimelineType = RETimelineDefinitionGetTimelineType();
    result = 0.0;
    if (TimelineType == 2)
    {

      RETimelineDefinitionGetClipDelay();
    }
  }

  return result;
}

uint64_t (*protocol witness for AnimationDefinition.delay.modify in conformance OrbitAnimation(double **a1))()
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
  *(v2 + 32) = OrbitAnimation.delay.modify(v2, v3);
  return protocol witness for AnimationDefinition.name.modify in conformance FromToByAnimation<A>;
}

float protocol witness for AnimationDefinition.speed.getter in conformance OrbitAnimation(__n128 a1)
{
  if ((*(v1 + 136) & 1) == 0)
  {
    return *(v1 + 132);
  }

  result = 1.0;
  if (*(*(v1 + 200) + 16))
  {
    TimelineType = RETimelineDefinitionGetTimelineType();
    result = 1.0;
    if (TimelineType == 2)
    {

      RETimelineDefinitionGetClipSpeed();
    }
  }

  return result;
}

uint64_t (*protocol witness for AnimationDefinition.speed.modify in conformance OrbitAnimation(uint64_t *a1))()
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
  *(v2 + 32) = OrbitAnimation.speed.modify(v2, v3);
  return protocol witness for AnimationDefinition.name.modify in conformance FromToByAnimation<A>;
}

uint64_t (*protocol witness for AnimationDefinition.repeatMode.modify in conformance OrbitAnimation(uint64_t *a1))()
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
  *(v2 + 32) = OrbitAnimation.repeatMode.modify(v2, v3);
  return protocol witness for AnimationDefinition.name.modify in conformance FromToByAnimation<A>;
}

double protocol witness for AnimationDefinition.duration.getter in conformance OrbitAnimation()
{
  if ((*(v0 + 216) & 1) == 0)
  {
    return *(v0 + 208);
  }

  if (!*(*(v0 + 48) + 16))
  {
    return 0.0;
  }

  RETimelineDefinitionGetDuration();
  return result;
}

void *protocol witness for AnimationDefinitionInternal.generate() in conformance OrbitAnimation()
{
  result = OrbitAnimation.createResource()();
  if (!result)
  {
    lazy protocol witness table accessor for type AnimationError and conformance AnimationError();
    swift_allocError();
    *v1 = 0xD00000000000001CLL;
    *(v1 + 8) = 0x80000001C18DE2F0;
    *(v1 + 16) = 0;
    return swift_willThrow();
  }

  return result;
}

uint64_t getEnumTagSinglePayload for OrbitAnimation(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 313))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for OrbitAnimation(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 312) = 0;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 313) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 313) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

Swift::Int TweenMode.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1C68F4C10](v1);
  return Hasher._finalize()();
}

uint64_t SampledAnimation.name.getter()
{
  if (v0[1])
  {
    v1 = *v0;
  }

  else if (*(v0[6] + 16))
  {
    RETimelineDefinitionGetName();
    v1 = String.init(cString:)();
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

void key path setter for SampledAnimation.name : <A>SampledAnimation<A>(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  SampledAnimation.name.setter(v1, v2);
}

void SampledAnimation.name.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

void (*SampledAnimation.name.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  memcpy(v5, v1, sizeof(v5));
  *a1 = SampledAnimation.name.getter();
  a1[1] = v3;
  return BlendTreeAnimation.name.modify;
}

uint64_t SampledAnimation.blendLayer.getter()
{
  if (*(v0 + 40) != 1)
  {
    return *(v0 + 36);
  }

  result = *(*(v0 + 48) + 16);
  if (result)
  {
    return RETimelineDefinitionGetAnimationLayer();
  }

  return result;
}

uint64_t SampledAnimation.blendLayer.setter(uint64_t result)
{
  *(v1 + 36) = result;
  *(v1 + 40) = 0;
  return result;
}

uint64_t *(*SampledAnimation.blendLayer.modify(uint64_t a1))(uint64_t *result)
{
  *a1 = v1;
  if (*(v1 + 40))
  {
    v2 = *(*(v1 + 48) + 16);
    if (v2)
    {
      v3 = a1;
      LODWORD(v2) = RETimelineDefinitionGetAnimationLayer();
      a1 = v3;
    }
  }

  else
  {
    LODWORD(v2) = *(v1 + 36);
  }

  *(a1 + 8) = v2;
  return BlendTreeAnimation.blendLayer.modify;
}

uint64_t SampledAnimation.bindTarget.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = v2;
  v6 = v3;
  v7 = *(v1 + 32);
  if (v4 == 255)
  {
    v5 = *(*(v1 + 48) + 16);
    if (v5)
    {
      v8 = *(v1 + 16);
      v9 = a1;
      v10 = v3;
      v11 = v4;
      RETimelineDefinitionGetTargetPath();
      v12 = String.init(cString:)();
      static InternalBindPath.targetFromPath(_:)(v12, v13, v15);

      LOBYTE(v4) = v11;
      v3 = v10;
      a1 = v9;
      v2 = v8;
      v5 = v15[0];
      v6 = v15[1];
      v7 = v16;
    }

    else
    {
      v7 = 0;
      v6 = 0xE000000000000000;
    }
  }

  *a1 = v5;
  *(a1 + 8) = v6;
  *(a1 + 16) = v7;

  return outlined copy of BindTarget?(v2, v3, v4);
}

double key path getter for SampledAnimation.bindTarget : <A>SampledAnimation<A>@<D0>(uint64_t a1@<X8>)
{
  SampledAnimation.bindTarget.getter(&v4);
  v2 = v5;
  result = *&v4;
  *a1 = v4;
  *(a1 + 16) = v2;
  return result;
}

uint64_t key path setter for SampledAnimation.bindTarget : <A>SampledAnimation<A>(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4[0] = *a1;
  v4[1] = v1;
  v5 = v2;
  outlined copy of BindTarget(v4[0], v1, v2);
  return SampledAnimation.bindTarget.setter(v4);
}

uint64_t SampledAnimation.bindTarget.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  result = outlined consume of BindTarget?(*(v1 + 16), *(v1 + 24), *(v1 + 32));
  *(v1 + 16) = v2;
  *(v1 + 24) = v3;
  *(v1 + 32) = v4;
  return result;
}

uint64_t (*SampledAnimation.bindTarget.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  memcpy(v4, v1, sizeof(v4));
  SampledAnimation.bindTarget.getter(a1);
  return BlendTreeAnimation.bindTarget.modify;
}

uint64_t SampledAnimation.fillMode.getter@<X0>(_BYTE *a1@<X8>)
{
  if (*(v1 + 42))
  {
    result = *(*(v1 + 48) + 16);
    if (result)
    {
      v3 = a1;
      result = RETimelineDefinitionGetFillMode();
      a1 = v3;
    }
  }

  else
  {
    result = *(v1 + 41);
  }

  *a1 = result;
  return result;
}

unsigned __int8 *(*SampledAnimation.fillMode.modify(uint64_t a1))(unsigned __int8 *result)
{
  *a1 = v1;
  if (*(v1 + 42))
  {
    v2 = *(*(v1 + 48) + 16);
    if (v2)
    {
      v3 = a1;
      LOBYTE(v2) = RETimelineDefinitionGetFillMode();
      a1 = v3;
    }
  }

  else
  {
    LOBYTE(v2) = *(v1 + 41);
  }

  *(a1 + 8) = v2;
  return BlendTreeAnimation.fillMode.modify;
}

uint64_t SampledAnimation.additive.getter()
{
  LODWORD(v1) = *(v0 + 43);
  if (v1 == 2)
  {
    v1 = *(*(v0 + 48) + 16);
    if (v1)
    {
      LOBYTE(v1) = RETimelineDefinitionIsAdditive();
    }
  }

  return v1 & 1;
}

_BYTE *(*SampledAnimation.additive.modify(uint64_t a1))(_BYTE *result)
{
  *a1 = v1;
  LODWORD(v2) = *(v1 + 43);
  if (v2 == 2)
  {
    v2 = *(*(v1 + 48) + 16);
    if (v2)
    {
      v3 = a1;
      LOBYTE(v2) = RETimelineDefinitionIsAdditive();
      a1 = v3;
    }
  }

  *(a1 + 8) = v2 & 1;
  return BlendTreeAnimation.isAdditive.modify;
}

uint64_t SampledAnimation.trimStart.getter()
{
  if ((*(v0 + 65) & 1) == 0)
  {
    return *(v0 + 56);
  }

  result = *(*(v0 + 200) + 16);
  if (result)
  {
    result = RETimelineDefinitionGetClipStart();
    if (result)
    {
      return *result;
    }
  }

  return result;
}

uint64_t SampledAnimation.trimStart.setter(uint64_t result, char a2)
{
  *(v2 + 56) = result;
  *(v2 + 64) = a2 & 1;
  *(v2 + 65) = 0;
  return result;
}

uint64_t (*SampledAnimation.trimStart.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 16) = v1;
  if (*(v1 + 65))
  {
    if (*(*(v1 + 200) + 16) && (ClipStart = RETimelineDefinitionGetClipStart()) != 0)
    {
      v4 = 0;
      v5 = *ClipStart;
    }

    else
    {
      v5 = 0;
      v4 = 1;
    }
  }

  else
  {
    v5 = *(v1 + 56);
    v4 = *(v1 + 64);
  }

  *a1 = v5;
  *(a1 + 8) = v4 & 1;
  return BlendTreeAnimation.trimStart.modify;
}

uint64_t SampledAnimation.trimEnd.getter()
{
  if ((*(v0 + 81) & 1) == 0)
  {
    return *(v0 + 72);
  }

  result = *(*(v0 + 200) + 16);
  if (result)
  {
    result = RETimelineDefinitionGetClipEnd();
    if (result)
    {
      return *result;
    }
  }

  return result;
}

uint64_t SampledAnimation.trimEnd.setter(uint64_t result, char a2)
{
  *(v2 + 72) = result;
  *(v2 + 80) = a2 & 1;
  *(v2 + 81) = 0;
  return result;
}

uint64_t (*SampledAnimation.trimEnd.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 16) = v1;
  if (*(v1 + 81))
  {
    if (*(*(v1 + 200) + 16) && (ClipEnd = RETimelineDefinitionGetClipEnd()) != 0)
    {
      v4 = 0;
      v5 = *ClipEnd;
    }

    else
    {
      v5 = 0;
      v4 = 1;
    }
  }

  else
  {
    v5 = *(v1 + 72);
    v4 = *(v1 + 80);
  }

  *a1 = v5;
  *(a1 + 8) = v4 & 1;
  return BlendTreeAnimation.trimEnd.modify;
}

uint64_t SampledAnimation.trimDuration.getter()
{
  if ((*(v0 + 97) & 1) == 0)
  {
    return *(v0 + 88);
  }

  result = *(*(v0 + 200) + 16);
  if (result)
  {
    result = RETimelineDefinitionGetClipDuration();
    if (result)
    {
      return *result;
    }
  }

  return result;
}

uint64_t SampledAnimation.trimDuration.setter(uint64_t result, char a2)
{
  *(v2 + 88) = result;
  *(v2 + 96) = a2 & 1;
  *(v2 + 97) = 0;
  return result;
}

uint64_t (*SampledAnimation.trimDuration.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 16) = v1;
  if (*(v1 + 97))
  {
    if (*(*(v1 + 200) + 16) && (ClipDuration = RETimelineDefinitionGetClipDuration()) != 0)
    {
      v4 = 0;
      v5 = *ClipDuration;
    }

    else
    {
      v5 = 0;
      v4 = 1;
    }
  }

  else
  {
    v5 = *(v1 + 88);
    v4 = *(v1 + 96);
  }

  *a1 = v5;
  *(a1 + 8) = v4 & 1;
  return BlendTreeAnimation.trimDuration.modify;
}

double SampledAnimation.offset.getter()
{
  if ((*(v0 + 112) & 1) == 0)
  {
    return *(v0 + 104);
  }

  result = 0.0;
  if (*(*(v0 + 200) + 16))
  {
    TimelineType = RETimelineDefinitionGetTimelineType();
    result = 0.0;
    if (TimelineType == 2)
    {

      RETimelineDefinitionGetClipOffset();
    }
  }

  return result;
}

double (*SampledAnimation.offset.modify(uint64_t a1))(uint64_t a1)
{
  *(a1 + 8) = v1;
  memcpy(v4, v1, sizeof(v4));
  *a1 = SampledAnimation.offset.getter();
  return BlendTreeAnimation.offset.modify;
}

double SampledAnimation.delay.getter()
{
  if ((*(v0 + 128) & 1) == 0)
  {
    return *(v0 + 120);
  }

  result = 0.0;
  if (*(*(v0 + 200) + 16))
  {
    TimelineType = RETimelineDefinitionGetTimelineType();
    result = 0.0;
    if (TimelineType == 2)
    {

      RETimelineDefinitionGetClipDelay();
    }
  }

  return result;
}

double (*SampledAnimation.delay.modify(uint64_t a1))(uint64_t a1)
{
  *(a1 + 8) = v1;
  memcpy(v4, v1, sizeof(v4));
  *a1 = SampledAnimation.delay.getter();
  return BlendTreeAnimation.delay.modify;
}

float SampledAnimation.speed.getter(__n128 a1)
{
  if ((*(v1 + 136) & 1) == 0)
  {
    return *(v1 + 132);
  }

  result = 1.0;
  if (*(*(v1 + 200) + 16))
  {
    TimelineType = RETimelineDefinitionGetTimelineType();
    result = 1.0;
    if (TimelineType == 2)
    {

      RETimelineDefinitionGetClipSpeed();
    }
  }

  return result;
}

float (*SampledAnimation.speed.modify(uint64_t a1))(float *a1)
{
  *a1 = v1;
  memcpy(v5, v1, sizeof(v5));
  *(a1 + 8) = SampledAnimation.speed.getter(v3);
  return BlendTreeAnimation.speed.modify;
}

uint64_t SampledAnimation.repeatMode.getter@<X0>(_BYTE *a1@<X8>)
{
  result = *(v2 + 137);
  if (result == 4)
  {
    if (!*(*(v2 + 200) + 16))
    {
LABEL_6:
      result = 0;
      goto LABEL_8;
    }

    v4 = a1;
    if (RETimelineDefinitionGetTimelineType() != 2)
    {
      result = 0;
      a1 = v4;
      goto LABEL_8;
    }

    result = RETimelineDefinitionGetClipLoopBehavior();
    a1 = v4;
    if (result >= 4)
    {
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      goto LABEL_6;
    }
  }

LABEL_8:
  *a1 = result;
  return result;
}

_BYTE *(*SampledAnimation.repeatMode.modify(void *a1))(_BYTE *result)
{
  *a1 = v1;
  v2 = a1 + 1;
  memcpy(v4, v1, sizeof(v4));
  SampledAnimation.repeatMode.getter(v2);
  return BlendTreeAnimation.repeatMode.modify;
}

uint64_t SampledAnimation.tweenMode.getter@<X0>(_BYTE *a1@<X8>)
{
  v2 = *(v1 + 208);
  if (v2 == 2)
  {
    if (*(*(v1 + 48) + 16))
    {
      v3 = a1;
      result = RETimelineDefinitionGetInterpolationEnabled();
      a1 = v3;
    }

    else
    {
      result = 1;
    }
  }

  else
  {
    result = v2 & 1;
  }

  *a1 = result;
  return result;
}

uint64_t (*SampledAnimation.tweenMode.modify(uint64_t a1))()
{
  *a1 = v1;
  v2 = *(v1 + 208);
  if (v2 == 2)
  {
    if (*(*(v1 + 48) + 16))
    {
      v3 = a1;
      InterpolationEnabled = RETimelineDefinitionGetInterpolationEnabled();
      a1 = v3;
    }

    else
    {
      InterpolationEnabled = 1;
    }
  }

  else
  {
    InterpolationEnabled = v2 & 1;
  }

  *(a1 + 8) = InterpolationEnabled;
  return SampledAnimation.tweenMode.modify;
}

float SampledAnimation.frameInterval.getter()
{
  if ((*(v0 + 216) & 1) == 0)
  {
    return *(v0 + 212);
  }

  if (!*(*(v0 + 48) + 16))
  {
    return 0.033333;
  }

  RETimelineDefinitionGetFrameInterval();
  return result;
}

float (*SampledAnimation.frameInterval.modify(uint64_t a1))(float *a1)
{
  *a1 = v1;
  if (*(v1 + 216))
  {
    if (*(*(v1 + 48) + 16))
    {
      v2 = a1;
      RETimelineDefinitionGetFrameInterval();
      a1 = v2;
    }

    else
    {
      v3 = 1023969417;
    }
  }

  else
  {
    v3 = *(v1 + 212);
  }

  *(a1 + 8) = v3;
  return SampledAnimation.frameInterval.modify;
}

float SampledAnimation.frameInterval.modify(float *a1)
{
  v1 = *a1;
  result = a1[2];
  *(v1 + 212) = result;
  *(v1 + 216) = 0;
  return result;
}

double SampledAnimation.start.getter()
{
  if ((*(v0 + 240) & 1) == 0)
  {
    return *(v0 + 232);
  }

  if (!*(*(v0 + 48) + 16))
  {
    return 0.0;
  }

  RETimelineDefinitionGetStartTime();
  return v1;
}

double (*SampledAnimation.start.modify(uint64_t a1))(uint64_t a1)
{
  *(a1 + 8) = v1;
  if (*(v1 + 240))
  {
    if (*(*(v1 + 48) + 16))
    {
      RETimelineDefinitionGetStartTime();
      v4 = v3;
    }

    else
    {
      v4 = 0.0;
    }
  }

  else
  {
    v4 = *(v1 + 232);
  }

  *a1 = v4;
  return SampledAnimation.start.modify;
}

double SampledAnimation.start.modify(uint64_t a1)
{
  v1 = *(a1 + 8);
  result = *a1;
  *(v1 + 232) = *a1;
  *(v1 + 240) = 0;
  return result;
}

double specialized SampledAnimation.end.getter()
{
  if ((*(v0 + 256) & 1) == 0)
  {
    return *(v0 + 248);
  }

  if (*(*(v0 + 48) + 16))
  {
    RETimelineDefinitionGetEndTime();
    return v1;
  }

  else
  {
    v3 = *(v0 + 224);
    if (v3)
    {
      v4 = *(v3 + 16);
    }

    else
    {
      v4 = 0.0;
    }

    v5 = *(v0 + 212);
    if (*(v0 + 216))
    {
      v5 = 0.0333333351;
    }

    return v4 * v5;
  }
}

void SampledAnimation.end.getter(uint64_t a1)
{
  if (*(v1 + 256))
  {
    v2 = *(v1 + 48);
    if (*(v2 + 16))
    {
      RETimelineDefinitionGetEndTime();
      return;
    }

    v3 = *(v1 + 216);
    if (*(v1 + 224))
    {
      MEMORY[0x1C68F3740](*(v1 + 224), *(a1 + 16));
      if ((v3 & 1) == 0)
      {
        return;
      }
    }

    else if ((*(v1 + 216) & 1) == 0)
    {
      return;
    }

    if (*(v2 + 16))
    {
      RETimelineDefinitionGetFrameInterval();
    }
  }
}

double (*SampledAnimation.end.modify(void *a1, uint64_t a2))(uint64_t a1)
{
  a1[1] = v2;
  memcpy(v7, v2, sizeof(v7));
  SampledAnimation.end.getter(a2);
  *a1 = v5;
  return SampledAnimation.end.modify;
}

double SampledAnimation.end.modify(uint64_t a1)
{
  v1 = *(a1 + 8);
  result = *a1;
  *(v1 + 248) = *a1;
  *(v1 + 256) = 0;
  return result;
}

double (*SampledAnimation.duration.modify(void *a1, uint64_t a2))(uint64_t a1)
{
  a1[1] = v2;
  memcpy(v7, v2, sizeof(v7));
  SampledAnimation.end.getter(a2);
  *a1 = v5;
  return SampledAnimation.duration.modify;
}

uint64_t SampledAnimation.init(frames:name:tweenMode:frameInterval:isAdditive:bindTarget:blendLayer:repeatMode:fillMode:trimStart:trimEnd:trimDuration:offset:delay:speed:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, char a5@<W4>, uint64_t *a6@<X5>, int a7@<W6>, char *a8@<X7>, uint64_t a9@<X8>, float a10@<S0>, double a11@<D1>, double a12@<D2>, float a13@<S3>, char *a14, uint64_t a15, char a16, uint64_t a17, char a18, uint64_t a19, char a20)
{
  v31 = a6[1];
  v32 = *a6;
  v30 = *(a6 + 16);
  v26 = *a8;
  v33 = *a14;
  v34 = *a4;
  *(a9 + 208) = 2;
  *(a9 + 232) = 0;
  *(a9 + 240) = 1;
  *(a9 + 248) = 0;
  *(a9 + 256) = 1;
  *(a9 + 264) = 0;
  *(a9 + 272) = 514;
  *(a9 + 274) = 2;
  *(a9 + 280) = 0;

  outlined consume of BindTarget?(0, 0, 0xFFu);
  type metadata accessor for TimelineDefinition();
  v27 = swift_allocObject();
  *(v27 + 16) = 0;
  *(a9 + 56) = a15;
  *(a9 + 64) = a16 & 1;
  *(a9 + 65) = 0;
  *(a9 + 72) = a17;
  *(a9 + 80) = a18 & 1;
  *(a9 + 81) = 0;
  *(a9 + 88) = a19;
  *(a9 + 96) = a20 & 1;
  *(a9 + 97) = 0;
  *(a9 + 104) = a11;
  *(a9 + 112) = 0;
  *(a9 + 120) = a12;
  *(a9 + 128) = 0;
  *(a9 + 132) = a13;
  *(a9 + 136) = 0;
  *(a9 + 137) = v26;
  *(a9 + 144) = 0;
  *(a9 + 152) = a2;
  *(a9 + 160) = a3;
  *(a9 + 168) = xmmword_1C1898800;
  *(a9 + 184) = 0;
  *(a9 + 188) = 0;
  *(a9 + 192) = 0;
  *(a9 + 194) = 0;
  *(a9 + 200) = v27;
  outlined consume of BindTarget?(0, 0, 0xFFu);
  result = swift_allocObject();
  *(result + 16) = 0;
  *a9 = a2;
  *(a9 + 8) = a3;
  *(a9 + 16) = v32;
  *(a9 + 24) = v31;
  *(a9 + 32) = v30;
  *(a9 + 33) = v38;
  *(a9 + 35) = v39;
  *(a9 + 36) = a7;
  *(a9 + 40) = 0;
  *(a9 + 41) = v33;
  *(a9 + 42) = 0;
  *(a9 + 43) = a5;
  *(a9 + 48) = result;
  *(a9 + 224) = a1;
  *(a9 + 212) = a10;
  *(a9 + 216) = 0;
  *(a9 + 208) = v34;
  return result;
}

void *SampledAnimation.createResource()(uint64_t a1)
{
  memcpy(__dst, v1, sizeof(__dst));
  memcpy(v18, v1, sizeof(v18));
  v3 = *(*(a1 - 8) + 16);
  v3(v16, __dst, a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation16SampledAnimationVySfGMd, &_s17RealityFoundation16SampledAnimationVySfGMR);
  if (swift_dynamicCast())
  {
    memcpy(v15, __src, sizeof(v15));
    v4 = &_s17RealityFoundation16SampledAnimationVySfGMd;
    v5 = &_s17RealityFoundation16SampledAnimationVySfGMR;
    outlined destroy of BodyTrackingComponent?(v15, &_s17RealityFoundation16SampledAnimationVySfGMd, &_s17RealityFoundation16SampledAnimationVySfGMR);
    memcpy(v14, __dst, sizeof(v14));
    v3(v16, __dst, a1);
    swift_dynamicCast();
    memcpy(v12, v13, sizeof(v12));
    v6 = MEMORY[0x1E6998CA0];
    v7 = SampledAnimation<>.frames.getter;
    v8 = MEMORY[0x1E6998D98];
LABEL_13:
    v9 = SampledAnimation<>.createResource()(v6, v7, v8);
    goto LABEL_14;
  }

  memcpy(v18, __dst, sizeof(v18));
  v3(v16, __dst, a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation16SampledAnimationVySdGMd, &_s17RealityFoundation16SampledAnimationVySdGMR);
  if (swift_dynamicCast())
  {
    memcpy(v15, __src, sizeof(v15));
    v4 = &_s17RealityFoundation16SampledAnimationVySdGMd;
    v5 = &_s17RealityFoundation16SampledAnimationVySdGMR;
    outlined destroy of BodyTrackingComponent?(v15, &_s17RealityFoundation16SampledAnimationVySdGMd, &_s17RealityFoundation16SampledAnimationVySdGMR);
    memcpy(v14, __dst, sizeof(v14));
    v3(v16, __dst, a1);
    swift_dynamicCast();
    memcpy(v12, v13, sizeof(v12));
    v6 = MEMORY[0x1E6998C80];
    v7 = SampledAnimation<>.frames.getter;
    v8 = MEMORY[0x1E6998D78];
    goto LABEL_13;
  }

  memcpy(v18, __dst, sizeof(v18));
  v3(v16, __dst, a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation16SampledAnimationVys5SIMD2VySfGGMd, &_s17RealityFoundation16SampledAnimationVys5SIMD2VySfGGMR);
  if (swift_dynamicCast())
  {
    memcpy(v15, __src, sizeof(v15));
    v4 = &_s17RealityFoundation16SampledAnimationVys5SIMD2VySfGGMd;
    v5 = &_s17RealityFoundation16SampledAnimationVys5SIMD2VySfGGMR;
    outlined destroy of BodyTrackingComponent?(v15, &_s17RealityFoundation16SampledAnimationVys5SIMD2VySfGGMd, &_s17RealityFoundation16SampledAnimationVys5SIMD2VySfGGMR);
    memcpy(v14, __dst, sizeof(v14));
    v3(v16, __dst, a1);
    swift_dynamicCast();
    memcpy(v12, v13, sizeof(v12));
    v6 = MEMORY[0x1E6998C88];
    v7 = SampledAnimation<>.frames.getter;
    v8 = MEMORY[0x1E6998D80];
    goto LABEL_13;
  }

  memcpy(v18, __dst, sizeof(v18));
  v3(v16, __dst, a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation16SampledAnimationVys5SIMD3VySfGGMd, &_s17RealityFoundation16SampledAnimationVys5SIMD3VySfGGMR);
  if (swift_dynamicCast())
  {
    memcpy(v15, __src, sizeof(v15));
    v4 = &_s17RealityFoundation16SampledAnimationVys5SIMD3VySfGGMd;
    v5 = &_s17RealityFoundation16SampledAnimationVys5SIMD3VySfGGMR;
    outlined destroy of BodyTrackingComponent?(v15, &_s17RealityFoundation16SampledAnimationVys5SIMD3VySfGGMd, &_s17RealityFoundation16SampledAnimationVys5SIMD3VySfGGMR);
    memcpy(v14, __dst, sizeof(v14));
    v3(v16, __dst, a1);
    swift_dynamicCast();
    memcpy(v12, v13, sizeof(v12));
    v6 = MEMORY[0x1E6998C90];
    v7 = SampledAnimation<>.frames.getter;
    v8 = MEMORY[0x1E6998D88];
    goto LABEL_13;
  }

  memcpy(v18, __dst, sizeof(v18));
  v3(v16, __dst, a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation16SampledAnimationVys5SIMD4VySfGGMd, &_s17RealityFoundation16SampledAnimationVys5SIMD4VySfGGMR);
  if (swift_dynamicCast())
  {
    memcpy(v15, __src, sizeof(v15));
    v4 = &_s17RealityFoundation16SampledAnimationVys5SIMD4VySfGGMd;
    v5 = &_s17RealityFoundation16SampledAnimationVys5SIMD4VySfGGMR;
    outlined destroy of BodyTrackingComponent?(v15, &_s17RealityFoundation16SampledAnimationVys5SIMD4VySfGGMd, &_s17RealityFoundation16SampledAnimationVys5SIMD4VySfGGMR);
    memcpy(v14, __dst, sizeof(v14));
    v3(v16, __dst, a1);
    swift_dynamicCast();
    memcpy(v12, v13, sizeof(v12));
    v6 = MEMORY[0x1E6998C98];
    v7 = SampledAnimation<>.frames.getter;
    v8 = MEMORY[0x1E6998D90];
    goto LABEL_13;
  }

  memcpy(v18, __dst, sizeof(v18));
  v3(v16, __dst, a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation16SampledAnimationVySo10simd_quatfaGMd, &_s17RealityFoundation16SampledAnimationVySo10simd_quatfaGMR);
  if (swift_dynamicCast())
  {
    memcpy(v15, __src, sizeof(v15));
    v4 = &_s17RealityFoundation16SampledAnimationVySo10simd_quatfaGMd;
    v5 = &_s17RealityFoundation16SampledAnimationVySo10simd_quatfaGMR;
    outlined destroy of BodyTrackingComponent?(v15, &_s17RealityFoundation16SampledAnimationVySo10simd_quatfaGMd, &_s17RealityFoundation16SampledAnimationVySo10simd_quatfaGMR);
    memcpy(v14, __dst, sizeof(v14));
    v3(v16, __dst, a1);
    swift_dynamicCast();
    memcpy(v12, v13, sizeof(v12));
    v6 = MEMORY[0x1E6998CA8];
    v7 = SampledAnimation<>.frames.getter;
    v8 = MEMORY[0x1E6998DA0];
    goto LABEL_13;
  }

  memcpy(v18, __dst, sizeof(v18));
  v3(v16, __dst, a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation16SampledAnimationVy0A3Kit9TransformVGMd, &_s17RealityFoundation16SampledAnimationVy0A3Kit9TransformVGMR);
  if (swift_dynamicCast())
  {
    memcpy(v15, __src, sizeof(v15));
    v4 = &_s17RealityFoundation16SampledAnimationVy0A3Kit9TransformVGMd;
    v5 = &_s17RealityFoundation16SampledAnimationVy0A3Kit9TransformVGMR;
    outlined destroy of BodyTrackingComponent?(v15, &_s17RealityFoundation16SampledAnimationVy0A3Kit9TransformVGMd, &_s17RealityFoundation16SampledAnimationVy0A3Kit9TransformVGMR);
    memcpy(v14, __dst, sizeof(v14));
    v3(v16, __dst, a1);
    swift_dynamicCast();
    memcpy(v12, v13, sizeof(v12));
    v9 = SampledAnimation<>.createResource()();
  }

  else
  {
    memcpy(v18, __dst, sizeof(v18));
    v3(v16, __dst, a1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation16SampledAnimationVyAA15JointTransformsVGMd, &_s17RealityFoundation16SampledAnimationVyAA15JointTransformsVGMR);
    if (swift_dynamicCast())
    {
      memcpy(v15, __src, sizeof(v15));
      v4 = &_s17RealityFoundation16SampledAnimationVyAA15JointTransformsVGMd;
      v5 = &_s17RealityFoundation16SampledAnimationVyAA15JointTransformsVGMR;
      outlined destroy of BodyTrackingComponent?(v15, &_s17RealityFoundation16SampledAnimationVyAA15JointTransformsVGMd, &_s17RealityFoundation16SampledAnimationVyAA15JointTransformsVGMR);
      memcpy(v14, __dst, sizeof(v14));
      v3(v16, __dst, a1);
      swift_dynamicCast();
      memcpy(v12, v13, sizeof(v12));
      v9 = SampledAnimation<>.createResource()();
    }

    else
    {
      memcpy(v18, __dst, sizeof(v18));
      v3(v16, __dst, a1);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation16SampledAnimationVyAA17BlendShapeWeightsVGMd, &_s17RealityFoundation16SampledAnimationVyAA17BlendShapeWeightsVGMR);
      if ((swift_dynamicCast() & 1) == 0)
      {
        return 0;
      }

      memcpy(v15, __src, sizeof(v15));
      v4 = &_s17RealityFoundation16SampledAnimationVyAA17BlendShapeWeightsVGMd;
      v5 = &_s17RealityFoundation16SampledAnimationVyAA17BlendShapeWeightsVGMR;
      outlined destroy of BodyTrackingComponent?(v15, &_s17RealityFoundation16SampledAnimationVyAA17BlendShapeWeightsVGMd, &_s17RealityFoundation16SampledAnimationVyAA17BlendShapeWeightsVGMR);
      memcpy(v14, __dst, sizeof(v14));
      v3(v16, __dst, a1);
      swift_dynamicCast();
      memcpy(v12, v13, sizeof(v12));
      v9 = SampledAnimation<>.createResource()();
    }
  }

LABEL_14:
  v10 = v9;
  memcpy(v16, v12, sizeof(v16));
  outlined destroy of BodyTrackingComponent?(v16, v4, v5);
  return v10;
}

void *SampledAnimation<>.createResource()(uint64_t (*a1)(uint64_t), uint64_t (*a2)(uint64_t), void (*a3)(uint64_t, uint64_t, void))
{
  memcpy(v17, v3, sizeof(v17));
  if (!v17[1])
  {
    if (LOBYTE(v17[4]) == 255 && (v17[5] & 1) != 0 && (v17[5] & 0x10000) != 0 && BYTE3(v17[5]) == 2 && LOBYTE(v17[26]) == 2 && (v17[27] & 1) != 0 && !v17[28] && (v17[30] & 1) != 0 && (v17[32] & 1) != 0 && !v17[33] && LOBYTE(v17[34]) == 2 && BYTE1(v17[34]) == 2 && BYTE2(v17[34]) == 2 && !v17[35])
    {
      v7._rawValue = 0;
      return specialized SampledAnimation.createResource(timelineDefinition:)(v7);
    }

    if (*(v17[6] + 16))
    {
      RETimelineDefinitionGetName();
      String.init(cString:)();
    }
  }

  v9 = String.utf8CString.getter();

  v10 = a1(v9 + 32);

  v12 = *(a2(v11) + 16);

  if (v12)
  {
    v14 = a2(v13);
    a3(v10, v14 + 32, *(v14 + 16));

    v15._rawValue = v10;
    v8 = specialized SampledAnimation.createResource(timelineDefinition:)(v15);
    RERelease();
  }

  else
  {
    RERelease();
    return 0;
  }

  return v8;
}

void *SampledAnimation<>.createResource()()
{
  memcpy(__dst, v0, sizeof(__dst));
  if (!__dst[1])
  {
    if (LOBYTE(__dst[4]) == 255 && (__dst[5] & 1) != 0 && (__dst[5] & 0x10000) != 0 && BYTE3(__dst[5]) == 2 && LOBYTE(__dst[26]) == 2 && (__dst[27] & 1) != 0 && !__dst[28] && (__dst[30] & 1) != 0 && (__dst[32] & 1) != 0 && !__dst[33] && LOBYTE(__dst[34]) == 2 && BYTE1(__dst[34]) == 2 && BYTE2(__dst[34]) == 2 && !__dst[35])
    {
      v1._rawValue = 0;
      return specialized SampledAnimation.createResource(timelineDefinition:)(v1);
    }

    if (*(__dst[6] + 16))
    {
      RETimelineDefinitionGetName();
      String.init(cString:)();
    }
  }

  String.utf8CString.getter();

  SampledSRTAnimation = RETimelineDefinitionCreateSampledSRTAnimation();

  v4 = SampledAnimation<>.frames.getter();
  v2 = *(v4 + 2);
  if (v2)
  {
    v5 = v4;
    v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0, MEMORY[0x1E69E7CC0]);
    v7 = *(v6 + 2);
    v8 = 48 * v7;
    v9 = (v5 + 64);
    do
    {
      v10 = *(v9 - 2);
      v11 = *(v9 - 1);
      v12 = *v9;
      v13 = *(v6 + 3);
      v14 = v7 + 1;
      if (v7 >= v13 >> 1)
      {
        v20 = *(v9 - 1);
        v21 = *(v9 - 2);
        v19 = *v9;
        v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v7 + 1, 1, v6);
        v12 = v19;
        v11 = v20;
        v10 = v21;
        v6 = v16;
      }

      *(v6 + 2) = v14;
      v15 = &v6[v8];
      *(v15 + 2) = v10;
      *(v15 + 3) = v11;
      *(v15 + 4) = v12;
      v8 += 48;
      v9 += 3;
      v7 = v14;
      v2 = (v2 - 1);
    }

    while (v2);

    RETimelineDefinitionSetSRTValues();

    v17._rawValue = SampledSRTAnimation;
    v2 = specialized SampledAnimation.createResource(timelineDefinition:)(v17);
  }

  else
  {
  }

  RERelease();
  return v2;
}

{
  memcpy(v14, v0, sizeof(v14));
  v1 = v14[1];
  v2 = v14[6];
  if (!v14[1] && LOBYTE(v14[4]) == 255 && (v14[5] & 1) != 0 && (v14[5] & 0x10000) != 0 && BYTE3(v14[5]) == 2 && LOBYTE(v14[26]) == 2 && (v14[27] & 1) != 0 && !v14[28] && (v14[30] & 1) != 0 && (v14[32] & 1) != 0 && !v14[33] && LOBYTE(v14[34]) == 2 && BYTE1(v14[34]) == 2 && BYTE2(v14[34]) == 2 && !v14[35])
  {
    v3._rawValue = 0;
    return specialized SampledAnimation.createResource(timelineDefinition:)(v3);
  }

  else
  {
    v5 = SampledAnimation<>.jointNames.getter();
    v6 = *(v5 + 2);
    if (v6)
    {
      if (!v1 && *(v2 + 16))
      {
        RETimelineDefinitionGetName();
        String.init(cString:)();
      }

      String.utf8CString.getter();

      SampledSkeletalPoseAnimation = RETimelineDefinitionCreateSampledSkeletalPoseAnimation();

      RETimelineDefinitionSetSkeletalJointCount();
      v8 = 0;
      v9 = v5 + 40;
      do
      {
        String.utf8CString.getter();
        RETimelineDefinitionSetSkeletalJointName();

        v9 += 16;
        ++v8;
      }

      while (v6 != v8);

      v10 = *(SampledAnimation<>.frames.getter() + 2);
      RETimelineDefinitionSetSkeletalPosePoseCount();
      if (v10)
      {
        for (i = 0; i != v10; ++i)
        {

          RETimelineDefinitionSetSkeletalPoseIndexValues();
        }
      }

      if (LOBYTE(v14[34]) == 2 && *(v2 + 16))
      {
        RETimelineDefinitionGetSkeletalPoseScaleChannelMask();
      }

      RETimelineDefinitionSetSkeletalPoseScaleChannelMask();
      if (BYTE1(v14[34]) == 2 && *(v2 + 16))
      {
        RETimelineDefinitionGetSkeletalPoseRotationChannelMask();
      }

      RETimelineDefinitionSetSkeletalPoseRotationChannelMask();
      if (BYTE2(v14[34]) == 2 && *(v2 + 16))
      {
        RETimelineDefinitionGetSkeletalPoseTranslationChannelMask();
      }

      RETimelineDefinitionSetSkeletalPoseTranslationChannelMask();
      v12._rawValue = SampledSkeletalPoseAnimation;
      v4 = specialized SampledAnimation.createResource(timelineDefinition:)(v12);
      RERelease();
    }

    else
    {

      return 0;
    }
  }

  return v4;
}

{
  memcpy(v14, v0, sizeof(v14));
  v1 = v14[1];
  v2 = v14[6];
  if (!v14[1] && LOBYTE(v14[4]) == 255 && (v14[5] & 1) != 0 && (v14[5] & 0x10000) != 0 && BYTE3(v14[5]) == 2 && LOBYTE(v14[26]) == 2 && (v14[27] & 1) != 0 && !v14[28] && (v14[30] & 1) != 0 && (v14[32] & 1) != 0 && !v14[33] && LOBYTE(v14[34]) == 2 && BYTE1(v14[34]) == 2 && BYTE2(v14[34]) == 2 && !v14[35])
  {
    v3._rawValue = 0;
    return specialized SampledAnimation.createResource(timelineDefinition:)(v3);
  }

  else
  {
    v5 = SampledAnimation<>.weightNames.getter();
    v6 = *(v5 + 2);
    if (v6)
    {
      if (!v1 && *(v2 + 16))
      {
        RETimelineDefinitionGetName();
        String.init(cString:)();
      }

      String.utf8CString.getter();

      SampledBlendShapeWeightsAnimation = RETimelineDefinitionCreateSampledBlendShapeWeightsAnimation();

      RETimelineDefinitionSetBlendShapeWeightsWeightsCount();
      v8 = 0;
      v9 = v5 + 40;
      do
      {
        String.utf8CString.getter();
        RETimelineDefinitionSetBlendShapeWeightsWeightName();

        v9 += 16;
        ++v8;
      }

      while (v6 != v8);

      v10 = *(SampledAnimation<>.frames.getter() + 2);
      RETimelineDefinitionSetBlendShapeWeightsSampleCount();
      if (v10)
      {
        for (i = 0; i != v10; ++i)
        {

          RETimelineDefinitionSetBlendShapeWeightsIndexValues();
        }
      }

      v12._rawValue = SampledBlendShapeWeightsAnimation;
      v4 = specialized SampledAnimation.createResource(timelineDefinition:)(v12);
      RERelease();
    }

    else
    {

      return 0;
    }
  }

  return v4;
}

void *specialized SampledAnimation.createResource(timelineDefinition:)(Swift::OpaquePointer a1)
{
  if (a1._rawValue)
  {
    v3 = v1[1];
    v68[0] = *v1;
    v68[1] = v3;
    v5 = *v1;
    v4 = v1[1];
    v68[2] = v1[2];
    v69 = *(v1 + 6);
    v70 = v5;
    v71 = v4;
    v72 = v1[2];
    *&v73 = *(v1 + 6);
    outlined init with copy of TimelineBaseProperties(v68, &v57);
    TimelineBaseProperties.writeProperties(_:)(a1);
    v45[0] = v70;
    v45[1] = v71;
    v45[2] = v72;
    v46 = v73;
    outlined destroy of TimelineBaseProperties(v45);
    if (*(v1 + 208) == 2 && *(v69 + 16))
    {
      RETimelineDefinitionGetInterpolationEnabled();
    }

    RETimelineDefinitionSetInterpolationEnabled();
    if ((*(v1 + 216) & 1) != 0 && *(v69 + 16))
    {
      RETimelineDefinitionGetFrameInterval();
    }

    RETimelineDefinitionSetFrameInterval();
    if ((v1[15] & 1) != 0 && *(v69 + 16))
    {
      RETimelineDefinitionGetStartTime();
    }

    RETimelineDefinitionSetStartTime();
    specialized SampledAnimation.end.getter();
    RETimelineDefinitionSetEndTime();
    v24 = *(v1 + 168);
    v63 = *(v1 + 152);
    v64 = v24;
    v65 = *(v1 + 184);
    v66 = *(v1 + 25);
    v25 = *(v1 + 104);
    v59 = *(v1 + 88);
    v60 = v25;
    v26 = *(v1 + 136);
    v61 = *(v1 + 120);
    v62 = v26;
    v27 = *(v1 + 72);
    v57 = *(v1 + 56);
    v58 = v27;
    v28 = *(v1 + 168);
    v76 = *(v1 + 152);
    v77 = v28;
    v78 = *(v1 + 184);
    v79 = *(v1 + 25);
    v29 = *(v1 + 104);
    v72 = *(v1 + 88);
    v73 = v29;
    v30 = *(v1 + 136);
    v74 = *(v1 + 120);
    v75 = v30;
    v31 = *(v1 + 72);
    v70 = *(v1 + 56);
    v71 = v31;
    outlined init with copy of TimelineClipProperties(&v57, &v47);
    if (TimelineClipProperties.isClipped.getter(v32))
    {
      v67 = *(&v62 + 1);
      v41 = v59;
      v42 = v60;
      v43 = v61;
      v44 = v62;
      v39 = v57;
      v40 = v58;
      v38 = v66;
      v36 = v64;
      v37 = v65;
      v35 = v63;
      type metadata accessor for TimelineDefinition();
      v33 = swift_allocObject();
      v33[2]._rawValue = a1._rawValue;
      RERetain();
      outlined destroy of BodyTrackingComponent?(&v67, &_s17RealityFoundation18TimelineDefinitionCSgMd, &_s17RealityFoundation18TimelineDefinitionCSgMR);
      v72 = v41;
      v73 = v42;
      v74 = v43;
      v70 = v39;
      v71 = v40;
      *&v75 = v44;
      *(&v75 + 1) = v33;
      v79 = v38;
      v77 = v36;
      v78 = v37;
      v76 = v35;
      outlined init with copy of TimelineClipProperties(&v70, &v47);
      if (v33[2]._rawValue)
      {

        closure #1 in TimelineClipProperties.createClip()(&v70, &v47);

        outlined destroy of TimelineClipProperties(&v70);
        v15 = v47;
      }

      else
      {
        outlined destroy of TimelineClipProperties(&v70);
        v15 = 0;
      }

      v49 = v41;
      v50 = v42;
      v51 = v43;
      v47 = v39;
      v48 = v40;
      *&v52 = v44;
      *(&v52 + 1) = v33;
      v56 = v38;
      v54 = v36;
      v55 = v37;
      v53 = v35;
      outlined destroy of TimelineClipProperties(&v47);
    }

    else
    {
      outlined destroy of TimelineClipProperties(&v57);
      type metadata accessor for TimelineDefinition();
      *(swift_allocObject() + 16) = a1;
      RERetain();
      v15 = TimelineDefinition.resource.getter();
      swift_setDeallocating();
      RERelease();
      swift_deallocClassInstance();
    }
  }

  else
  {
    v6 = *(v1 + 168);
    v76 = *(v1 + 152);
    v77 = v6;
    v78 = *(v1 + 184);
    v79 = *(v1 + 25);
    v7 = *(v1 + 104);
    v72 = *(v1 + 88);
    v73 = v7;
    v8 = *(v1 + 136);
    v74 = *(v1 + 120);
    v75 = v8;
    v9 = *(v1 + 72);
    v70 = *(v1 + 56);
    v71 = v9;
    v10 = *(v1 + 168);
    v63 = *(v1 + 152);
    v64 = v10;
    v65 = *(v1 + 184);
    v66 = *(v1 + 25);
    v11 = *(v1 + 104);
    v59 = *(v1 + 88);
    v60 = v11;
    v12 = *(v1 + 136);
    v61 = *(v1 + 120);
    v62 = v12;
    v13 = *(v1 + 72);
    v57 = *(v1 + 56);
    v58 = v13;
    outlined init with copy of TimelineClipProperties(&v70, &v47);
    if (TimelineClipProperties.isClipped.getter(v14))
    {
      v63 = v76;
      v64 = v77;
      v65 = v78;
      v66 = v79;
      v59 = v72;
      v60 = v73;
      v61 = v74;
      v62 = v75;
      v57 = v70;
      v58 = v71;
      if (TimelineClipProperties.isModified.getter())
      {
        v53 = v76;
        v54 = v77;
        v55 = v78;
        v56 = v79;
        v49 = v72;
        v50 = v73;
        v51 = v74;
        v52 = v75;
        v47 = v70;
        v48 = v71;
        v15 = TimelineClipProperties.createClip()();
        v63 = v53;
        v64 = v54;
        v65 = v55;
        v66 = v56;
        v59 = v49;
        v60 = v50;
        v61 = v51;
        v62 = v52;
        v57 = v47;
        v58 = v48;
        outlined destroy of TimelineClipProperties(&v57);
      }

      else
      {
        outlined destroy of TimelineClipProperties(&v70);
        return TimelineDefinition.resource.getter();
      }
    }

    else
    {
      outlined destroy of TimelineClipProperties(&v70);
      if (*(*(v1 + 6) + 16) && (v16 = specialized static __ServiceLocator.shared.getter(), swift_beginAccess(), outlined init with copy of __REAssetService(v16 + 120, &v57), v17 = *(&v58 + 1), v18 = v59, __swift_project_boxed_opaque_existential_1(&v57, *(&v58 + 1)), (*(v18 + 32))(v17, v18), __swift_destroy_boxed_opaque_existential_1(&v57), (TimelineAsset = RETimelineDefinitionCreateTimelineAsset()) != 0))
      {
        v20 = TimelineAsset;
        RETimelineDefinitionGetName();
        v21 = String.init(cString:)();
        v23 = v22;
        type metadata accessor for AnimationResource();
        v15 = swift_allocObject();
        v15[2] = v20;
        v15[3] = v21;
        v15[4] = v23;
        RERetain();
        REAssetSetSwiftObject();
        RERelease();
      }

      else
      {
        return 0;
      }
    }
  }

  return v15;
}

void *SampledAnimation.generate()(uint64_t a1)
{
  result = SampledAnimation.createResource()(a1);
  if (!result)
  {
    lazy protocol witness table accessor for type AnimationError and conformance AnimationError();
    swift_allocError();
    *v2 = 0xD00000000000001CLL;
    *(v2 + 8) = 0x80000001C18DE2F0;
    *(v2 + 16) = 0;
    return swift_willThrow();
  }

  return result;
}

uint64_t (*protocol witness for AnimationDefinition.name.modify in conformance SampledAnimation<A>(uint64_t **a1))()
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
  v2[4] = SampledAnimation.name.modify(v2);
  return protocol witness for AnimationDefinition.name.modify in conformance FromToByAnimation<A>;
}

uint64_t (*protocol witness for AnimationDefinition.blendLayer.modify in conformance SampledAnimation<A>(uint64_t *a1))()
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
  *(v2 + 32) = SampledAnimation.blendLayer.modify(v2);
  return protocol witness for AnimationDefinition.name.modify in conformance FromToByAnimation<A>;
}

uint64_t (*protocol witness for AnimationDefinition.fillMode.modify in conformance SampledAnimation<A>(uint64_t *a1))()
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
  *(v2 + 32) = SampledAnimation.fillMode.modify(v2);
  return protocol witness for AnimationDefinition.name.modify in conformance FromToByAnimation<A>;
}

uint64_t (*protocol witness for AnimationDefinition.bindTarget.modify in conformance SampledAnimation<A>(uint64_t *a1))()
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
  *(v2 + 32) = SampledAnimation.bindTarget.modify(v2);
  return protocol witness for AnimationDefinition.bindTarget.modify in conformance FromToByAnimation<A>;
}

uint64_t (*protocol witness for AnimationDefinition.trimStart.modify in conformance SampledAnimation<A>(uint64_t *a1))()
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
  *(v2 + 32) = SampledAnimation.trimStart.modify(v2);
  return protocol witness for AnimationDefinition.name.modify in conformance FromToByAnimation<A>;
}

uint64_t (*protocol witness for AnimationDefinition.trimEnd.modify in conformance SampledAnimation<A>(uint64_t *a1))()
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
  *(v2 + 32) = SampledAnimation.trimEnd.modify(v2);
  return protocol witness for AnimationDefinition.name.modify in conformance FromToByAnimation<A>;
}

uint64_t (*protocol witness for AnimationDefinition.trimDuration.modify in conformance SampledAnimation<A>(uint64_t *a1))()
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
  *(v2 + 32) = SampledAnimation.trimDuration.modify(v2);
  return protocol witness for AnimationDefinition.name.modify in conformance FromToByAnimation<A>;
}

uint64_t (*protocol witness for AnimationDefinition.offset.modify in conformance SampledAnimation<A>(uint64_t *a1))()
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
  *(v2 + 32) = SampledAnimation.offset.modify(v2);
  return protocol witness for AnimationDefinition.name.modify in conformance FromToByAnimation<A>;
}

uint64_t (*protocol witness for AnimationDefinition.delay.modify in conformance SampledAnimation<A>(uint64_t *a1))()
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
  *(v2 + 32) = SampledAnimation.delay.modify(v2);
  return protocol witness for AnimationDefinition.name.modify in conformance FromToByAnimation<A>;
}

uint64_t (*protocol witness for AnimationDefinition.speed.modify in conformance SampledAnimation<A>(uint64_t *a1))()
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
  *(v2 + 32) = SampledAnimation.speed.modify(v2);
  return protocol witness for AnimationDefinition.name.modify in conformance FromToByAnimation<A>;
}

uint64_t (*protocol witness for AnimationDefinition.repeatMode.modify in conformance SampledAnimation<A>(void *a1))()
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
  v2[4] = SampledAnimation.repeatMode.modify(v2);
  return protocol witness for AnimationDefinition.name.modify in conformance FromToByAnimation<A>;
}

uint64_t SampledAnimation<>.frames.getter()
{
  return SampledAnimation<>.frames.getter(MEMORY[0x1E6998D50], _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSf_Tt1g5, specialized UnsafeBufferPointer._copyContents(initializing:));
}

{
  return SampledAnimation<>.frames.getter(MEMORY[0x1E6998CE8], _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSd_Tt1g5, specialized UnsafeBufferPointer._copyContents(initializing:));
}

{
  return SampledAnimation<>.frames.getter(MEMORY[0x1E6998D08], _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5SIMD2VySfG_Tt1g5, specialized UnsafeBufferPointer._copyContents(initializing:));
}

{
  return SampledAnimation<>.frames.getter(MEMORY[0x1E6998D28], _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5SIMD3VySfG_Tt1g5, specialized UnsafeBufferPointer._copyContents(initializing:));
}

{
  return SampledAnimation<>.frames.getter(MEMORY[0x1E6998D48], _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5SIMD4VySfG_Tt1g5, specialized UnsafeBufferPointer._copyContents(initializing:));
}

{
  return SampledAnimation<>.frames.getter(MEMORY[0x1E6998D70], _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSo10simd_quatfa_Tt1g5, specialized UnsafeBufferPointer._copyContents(initializing:));
}

uint64_t (*SampledAnimation<>.frames.modify(uint64_t *a1))()
{
  v3 = *(v1 + 224);
  a1[1] = v1;
  a1[2] = v3;
  if (v3)
  {
    v4 = v3;
LABEL_3:
    *a1 = v4;

    return SampledAnimation<>.frames.modify;
  }

  if (!*(*(v1 + 48) + 16))
  {
    v4 = MEMORY[0x1E69E7CC0];
    goto LABEL_3;
  }

  ValueCount = RETimelineDefinitionGetValueCount();
  FloatValues = RETimelineDefinitionGetFloatValues();
  if (FloatValues)
  {
    v8 = ValueCount == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    v4 = MEMORY[0x1E69E7CC0];
    goto LABEL_3;
  }

  v9 = FloatValues;
  v4 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSf_Tt1g5(ValueCount, 0);
  specialized UnsafeBufferPointer._copyContents(initializing:)(v4 + 4, ValueCount, v9, ValueCount);
  result = 0;
  if (v10 == ValueCount)
  {
    goto LABEL_3;
  }

  __break(1u);
  return result;
}

{
  v3 = *(v1 + 224);
  a1[1] = v1;
  a1[2] = v3;
  if (v3)
  {
    v4 = v3;
LABEL_3:
    *a1 = v4;

    return SampledAnimation<>.frames.modify;
  }

  if (!*(*(v1 + 48) + 16))
  {
    v4 = MEMORY[0x1E69E7CC0];
    goto LABEL_3;
  }

  ValueCount = RETimelineDefinitionGetValueCount();
  DoubleValues = RETimelineDefinitionGetDoubleValues();
  if (DoubleValues)
  {
    v8 = ValueCount == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    v4 = MEMORY[0x1E69E7CC0];
    goto LABEL_3;
  }

  v9 = DoubleValues;
  v4 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSd_Tt1g5(ValueCount, 0);
  specialized UnsafeBufferPointer._copyContents(initializing:)(v4 + 4, ValueCount, v9, ValueCount);
  result = 0;
  if (v10 == ValueCount)
  {
    goto LABEL_3;
  }

  __break(1u);
  return result;
}

{
  v3 = *(v1 + 224);
  a1[1] = v1;
  a1[2] = v3;
  if (v3)
  {
    v4 = v3;
LABEL_3:
    *a1 = v4;

    return SampledAnimation<>.frames.modify;
  }

  if (!*(*(v1 + 48) + 16))
  {
    v4 = MEMORY[0x1E69E7CC0];
    goto LABEL_3;
  }

  ValueCount = RETimelineDefinitionGetValueCount();
  Float2Values = RETimelineDefinitionGetFloat2Values();
  if (Float2Values)
  {
    v8 = ValueCount == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    v4 = MEMORY[0x1E69E7CC0];
    goto LABEL_3;
  }

  v9 = Float2Values;
  v4 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5SIMD2VySfG_Tt1g5(ValueCount, 0);
  specialized UnsafeBufferPointer._copyContents(initializing:)(v4 + 4, ValueCount, v9, ValueCount);
  result = 0;
  if (v10 == ValueCount)
  {
    goto LABEL_3;
  }

  __break(1u);
  return result;
}

{
  v3 = *(v1 + 224);
  a1[1] = v1;
  a1[2] = v3;
  if (v3)
  {
    v4 = v3;
LABEL_3:
    *a1 = v4;

    return SampledAnimation<>.frames.modify;
  }

  if (!*(*(v1 + 48) + 16))
  {
    v4 = MEMORY[0x1E69E7CC0];
    goto LABEL_3;
  }

  ValueCount = RETimelineDefinitionGetValueCount();
  Float3Values = RETimelineDefinitionGetFloat3Values();
  if (Float3Values)
  {
    v8 = ValueCount == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    v4 = MEMORY[0x1E69E7CC0];
    goto LABEL_3;
  }

  v9 = Float3Values;
  v4 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5SIMD3VySfG_Tt1g5(ValueCount, 0);
  specialized UnsafeBufferPointer._copyContents(initializing:)(v4 + 32, ValueCount, v9);
  result = 0;
  if (v10 == ValueCount)
  {
    goto LABEL_3;
  }

  __break(1u);
  return result;
}

{
  v3 = *(v1 + 224);
  a1[1] = v1;
  a1[2] = v3;
  if (v3)
  {
    v4 = v3;
LABEL_3:
    *a1 = v4;

    return SampledAnimation<>.frames.modify;
  }

  if (!*(*(v1 + 48) + 16))
  {
    v4 = MEMORY[0x1E69E7CC0];
    goto LABEL_3;
  }

  ValueCount = RETimelineDefinitionGetValueCount();
  Float4Values = RETimelineDefinitionGetFloat4Values();
  if (Float4Values)
  {
    v8 = ValueCount == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    v4 = MEMORY[0x1E69E7CC0];
    goto LABEL_3;
  }

  v9 = Float4Values;
  v4 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5SIMD4VySfG_Tt1g5(ValueCount, 0);
  specialized UnsafeBufferPointer._copyContents(initializing:)(v4 + 32, ValueCount, v9);
  result = 0;
  if (v10 == ValueCount)
  {
    goto LABEL_3;
  }

  __break(1u);
  return result;
}

{
  v3 = *(v1 + 224);
  a1[1] = v1;
  a1[2] = v3;
  if (v3)
  {
    v4 = v3;
LABEL_3:
    *a1 = v4;

    return SampledAnimation<>.frames.modify;
  }

  if (!*(*(v1 + 48) + 16))
  {
    v4 = MEMORY[0x1E69E7CC0];
    goto LABEL_3;
  }

  ValueCount = RETimelineDefinitionGetValueCount();
  QuaternionValues = RETimelineDefinitionGetQuaternionValues();
  if (QuaternionValues)
  {
    v8 = ValueCount == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    v4 = MEMORY[0x1E69E7CC0];
    goto LABEL_3;
  }

  v9 = QuaternionValues;
  v4 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSo10simd_quatfa_Tt1g5(ValueCount, 0);
  specialized UnsafeBufferPointer._copyContents(initializing:)(v4 + 4, ValueCount, v9, ValueCount);
  result = 0;
  if (v10 == ValueCount)
  {
    goto LABEL_3;
  }

  __break(1u);
  return result;
}

uint64_t SampledAnimation<>.frames.getter(uint64_t (*a1)(uint64_t), uint64_t (*a2)(uint64_t, void), void (*a3)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (*(v3 + 224))
  {
    v5 = *(v3 + 224);
LABEL_3:

    return v5;
  }

  v7 = *(*(v3 + 48) + 16);
  if (!v7)
  {
    v5 = MEMORY[0x1E69E7CC0];
    goto LABEL_3;
  }

  v10 = *(v3 + 224);
  ValueCount = RETimelineDefinitionGetValueCount();
  v12 = a1(v7);
  if (v12)
  {
    v13 = ValueCount == 0;
  }

  else
  {
    v13 = 1;
  }

  if (v13)
  {
    v5 = MEMORY[0x1E69E7CC0];
    goto LABEL_3;
  }

  v14 = v12;
  v5 = a2(ValueCount, 0);
  a3(v5 + 32, ValueCount, v14, ValueCount);
  result = v10;
  if (v15 == ValueCount)
  {
    goto LABEL_3;
  }

  __break(1u);
  return result;
}

void SampledAnimation<>.frames.modify(void *a1, char a2)
{
  v2 = a1[1];
  v3 = *a1;
  if (a2)
  {

    *(v2 + 224) = v3;
  }

  else
  {

    *(v2 + 224) = v3;
  }
}

char *SampledAnimation<>.frames.getter()
{
  v1 = *(v0 + 224);
  if (v1)
  {

    return v1;
  }

  if (!*(*(v0 + 48) + 16))
  {
    return MEMORY[0x1E69E7CC0];
  }

  ValueCount = RETimelineDefinitionGetValueCount();
  SRTValues = RETimelineDefinitionGetSRTValues();
  if (!SRTValues || ValueCount < 1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v5 = SRTValues;
  v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, ValueCount, 0, MEMORY[0x1E69E7CC0]);
  v6 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSo5RESRTa_Tt1g5(ValueCount, 0);
  v7 = memcpy(v6 + 32, v5, 48 * ValueCount);
  if (ValueCount > *(v6 + 2))
  {
    __break(1u);
  }

  else
  {
    v7 = v6;
    if (one-time initialization token for identity == -1)
    {
      goto LABEL_12;
    }
  }

  v20 = v7;
  swift_once();
  v7 = v20;
LABEL_12:
  v8 = *(v1 + 2);
  v9 = 48 * v8;
  v10 = (v7 + 64);
  do
  {
    v11 = *(v10 - 2);
    v12 = *(v10 - 1);
    v13 = *v10;
    v14 = *(v1 + 3);
    v15 = v8 + 1;
    if (v8 >= v14 >> 1)
    {
      v17 = v7;
      v22 = *(v10 - 1);
      v23 = *(v10 - 2);
      v21 = *v10;
      v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15, 1, v1);
      v13 = v21;
      v12 = v22;
      v11 = v23;
      v1 = v18;
      v7 = v17;
    }

    *(v1 + 2) = v15;
    v16 = &v1[v9];
    *(v16 + 2) = v11;
    *(v16 + 3) = v12;
    *(v16 + 4) = v13;
    v9 += 48;
    v10 += 3;
    v8 = v15;
    --ValueCount;
  }

  while (ValueCount);

  return v1;
}

{
  v1 = *(v0 + 224);
  if (v1)
  {

    return v1;
  }

  if (!*(*(v0 + 48) + 16))
  {
    return MEMORY[0x1E69E7CC0];
  }

  ValueCount = RETimelineDefinitionGetValueCount();
  SkeletalJointCount = RETimelineDefinitionGetSkeletalJointCount();
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, ValueCount & ~(ValueCount >> 63), 0, MEMORY[0x1E69E7CC0]);
  if (ValueCount < 0)
  {
    __break(1u);
  }

  else
  {
    v1 = result;
    if (!ValueCount)
    {
      return v1;
    }

    if ((SkeletalJointCount & 0x8000000000000000) == 0)
    {
      for (i = 0; i != ValueCount; ++i)
      {
        v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, SkeletalJointCount, 0, MEMORY[0x1E69E7CC0]);
        if (SkeletalJointCount)
        {
          v7 = 0;
          v8 = HIDWORD(v21);
          v9 = HIDWORD(v23);
          do
          {
            v25 = v9;
            v26 = v8;
            RETimelineDefinitionGetSkeletalPoseIndexJointValue();
            v13 = v11;
            v15 = *(v6 + 2);
            v14 = *(v6 + 3);
            if (v15 >= v14 >> 1)
            {
              v22 = v12;
              v24 = v10;
              v20 = v11;
              v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1, v6);
              v13 = v20;
              v12 = v22;
              v10 = v24;
              v6 = v17;
            }

            ++v7;
            HIDWORD(v10) = v25;
            HIDWORD(v12) = v26;
            *(v6 + 2) = v15 + 1;
            v16 = &v6[48 * v15];
            *(v16 + 2) = v10;
            *(v16 + 3) = v13;
            *(v16 + 4) = v12;
            v8 = v26;
            v9 = v25;
          }

          while (SkeletalJointCount != v7);
        }

        else
        {
          v12 = v21;
          v10 = v23;
        }

        v21 = v12;
        v23 = v10;
        v19 = *(v1 + 2);
        v18 = *(v1 + 3);
        if (v19 >= v18 >> 1)
        {
          v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1, v1);
        }

        *(v1 + 2) = v19 + 1;
        *&v1[8 * v19 + 32] = v6;
      }

      return v1;
    }
  }

  __break(1u);
  return result;
}

{
  v1 = *(v0 + 224);
  if (v1)
  {

    return v1;
  }

  if (!*(*(v0 + 48) + 16))
  {
    return MEMORY[0x1E69E7CC0];
  }

  ValueCount = RETimelineDefinitionGetValueCount();
  BlendShapeWeightsWeightsCount = RETimelineDefinitionGetBlendShapeWeightsWeightsCount();
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, ValueCount & ~(ValueCount >> 63), 0, MEMORY[0x1E69E7CC0]);
  if (ValueCount < 0)
  {
    __break(1u);
  }

  else
  {
    v1 = result;
    if (!ValueCount)
    {
      return v1;
    }

    if ((BlendShapeWeightsWeightsCount & 0x8000000000000000) == 0)
    {
      v5 = 0;
      v6 = MEMORY[0x1E69E7CC0];
      do
      {
        v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, BlendShapeWeightsWeightsCount, 0, v6);
        if (BlendShapeWeightsWeightsCount)
        {
          for (i = 0; i != BlendShapeWeightsWeightsCount; ++i)
          {
            RETimelineDefinitionGetBlendShapeWeightsIndexWeightValue();
            v11 = *(v7 + 2);
            v10 = *(v7 + 3);
            if (v11 >= v10 >> 1)
            {
              v12 = v9;
              v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1, v7);
              v9 = v12;
              v7 = v13;
            }

            *(v7 + 2) = v11 + 1;
            *&v7[4 * v11 + 32] = v9;
          }
        }

        v15 = *(v1 + 2);
        v14 = *(v1 + 3);
        if (v15 >= v14 >> 1)
        {
          v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1, v1);
        }

        ++v5;
        *(v1 + 2) = v15 + 1;
        *&v1[8 * v15 + 32] = v7;
      }

      while (v5 != ValueCount);
      return v1;
    }
  }

  __break(1u);
  return result;
}

uint64_t (*SampledAnimation<>.frames.modify(char **a1))()
{
  v2 = *(v1 + 224);
  a1[1] = v1;
  a1[2] = v2;
  *a1 = SampledAnimation<>.frames.getter();
  return SampledAnimation<>.frames.modify;
}

{
  v2 = *(v1 + 224);
  a1[1] = v1;
  a1[2] = v2;
  *a1 = SampledAnimation<>.frames.getter();
  return SampledAnimation<>.frames.modify;
}

{
  v2 = *(v1 + 224);
  a1[1] = v1;
  a1[2] = v2;
  *a1 = SampledAnimation<>.frames.getter();
  return SampledAnimation<>.frames.modify;
}

uint64_t SampledAnimation<>.init(jointNames:frames:name:tweenMode:frameInterval:isAdditive:isScaleAnimated:isRotationAnimated:isTranslationAnimated:bindTarget:blendLayer:repeatMode:fillMode:trimStart:trimEnd:trimDuration:offset:delay:speed:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, char a6@<W5>, char a7@<W6>, char a8@<W7>, uint64_t a9@<X8>, float a10@<S0>, double a11@<D1>, double a12@<D2>, float a13@<S3>, char a14, uint64_t *a15, int a16, char *a17, char *a18, uint64_t a19, char a20, uint64_t a21, char a22, uint64_t a23, char a24)
{
  v38 = *a5;
  v36 = *a15;
  v35 = a15[1];
  v34 = *(a15 + 16);
  v30 = *a17;
  v37 = *a18;
  *(a9 + 208) = 2;
  *(a9 + 232) = 0;
  *(a9 + 240) = 1;
  *(a9 + 248) = 0;
  *(a9 + 256) = 1;
  *(a9 + 280) = 0;

  outlined consume of BindTarget?(0, 0, 0xFFu);
  type metadata accessor for TimelineDefinition();
  v31 = swift_allocObject();
  *(v31 + 16) = 0;
  *(a9 + 56) = a19;
  *(a9 + 64) = a20 & 1;
  *(a9 + 65) = 0;
  *(a9 + 72) = a21;
  *(a9 + 80) = a22 & 1;
  *(a9 + 81) = 0;
  *(a9 + 88) = a23;
  *(a9 + 96) = a24 & 1;
  *(a9 + 97) = 0;
  *(a9 + 104) = a11;
  *(a9 + 112) = 0;
  *(a9 + 120) = a12;
  *(a9 + 128) = 0;
  *(a9 + 132) = a13;
  *(a9 + 136) = 0;
  *(a9 + 137) = v30;
  *(a9 + 144) = 0;
  *(a9 + 152) = a3;
  *(a9 + 160) = a4;
  *(a9 + 168) = xmmword_1C1898800;
  *(a9 + 184) = 0;
  *(a9 + 188) = 0;
  *(a9 + 192) = 0;
  *(a9 + 194) = 0;
  *(a9 + 200) = v31;
  outlined consume of BindTarget?(0, 0, 0xFFu);
  result = swift_allocObject();
  *(result + 16) = 0;
  *a9 = a3;
  *(a9 + 8) = a4;
  *(a9 + 16) = v36;
  *(a9 + 24) = v35;
  *(a9 + 32) = v34;
  *(a9 + 33) = v44;
  *(a9 + 35) = v45;
  *(a9 + 36) = a16;
  *(a9 + 40) = 0;
  *(a9 + 41) = v37;
  *(a9 + 42) = 0;
  *(a9 + 43) = a6;
  *(a9 + 48) = result;
  *(a9 + 264) = a1;
  *(a9 + 224) = a2;
  *(a9 + 272) = a7;
  *(a9 + 273) = a8;
  *(a9 + 274) = a14;
  *(a9 + 212) = a10;
  *(a9 + 216) = 0;
  *(a9 + 208) = v38;
  return result;
}

uint64_t SampledAnimation<>.isScaleAnimated.getter()
{
  v1 = *(v0 + 272);
  if (v1 == 2)
  {
    if (*(*(v0 + 48) + 16))
    {
      LOBYTE(v1) = RETimelineDefinitionGetSkeletalPoseScaleChannelMask();
    }

    else
    {
      LOBYTE(v1) = 1;
    }
  }

  return v1 & 1;
}

uint64_t (*SampledAnimation<>.isScaleAnimated.modify(uint64_t a1))()
{
  *a1 = v1;
  v2 = *(v1 + 272);
  if (v2 == 2)
  {
    if (*(*(v1 + 48) + 16))
    {
      v3 = a1;
      LOBYTE(v2) = RETimelineDefinitionGetSkeletalPoseScaleChannelMask();
      a1 = v3;
    }

    else
    {
      LOBYTE(v2) = 1;
    }
  }

  *(a1 + 8) = v2 & 1;
  return SampledAnimation<>.isScaleAnimated.modify;
}

uint64_t SampledAnimation<>.isRotationAnimated.getter()
{
  v1 = *(v0 + 273);
  if (v1 == 2)
  {
    if (*(*(v0 + 48) + 16))
    {
      LOBYTE(v1) = RETimelineDefinitionGetSkeletalPoseRotationChannelMask();
    }

    else
    {
      LOBYTE(v1) = 1;
    }
  }

  return v1 & 1;
}

uint64_t (*SampledAnimation<>.isRotationAnimated.modify(uint64_t a1))()
{
  *a1 = v1;
  v2 = *(v1 + 273);
  if (v2 == 2)
  {
    if (*(*(v1 + 48) + 16))
    {
      v3 = a1;
      LOBYTE(v2) = RETimelineDefinitionGetSkeletalPoseRotationChannelMask();
      a1 = v3;
    }

    else
    {
      LOBYTE(v2) = 1;
    }
  }

  *(a1 + 8) = v2 & 1;
  return SampledAnimation<>.isRotationAnimated.modify;
}

uint64_t SampledAnimation<>.isTranslationAnimated.getter()
{
  v1 = *(v0 + 274);
  if (v1 == 2)
  {
    if (*(*(v0 + 48) + 16))
    {
      LOBYTE(v1) = RETimelineDefinitionGetSkeletalPoseTranslationChannelMask();
    }

    else
    {
      LOBYTE(v1) = 1;
    }
  }

  return v1 & 1;
}

uint64_t (*SampledAnimation<>.isTranslationAnimated.modify(uint64_t a1))()
{
  *a1 = v1;
  v2 = *(v1 + 274);
  if (v2 == 2)
  {
    if (*(*(v1 + 48) + 16))
    {
      v3 = a1;
      LOBYTE(v2) = RETimelineDefinitionGetSkeletalPoseTranslationChannelMask();
      a1 = v3;
    }

    else
    {
      LOBYTE(v2) = 1;
    }
  }

  *(a1 + 8) = v2 & 1;
  return SampledAnimation<>.isTranslationAnimated.modify;
}

char *SampledAnimation<>.jointNames.getter()
{
  v1 = *(v0 + 264);
  if (v1)
  {

    return v1;
  }

  if (!*(*(v0 + 48) + 16))
  {
    return MEMORY[0x1E69E7CC0];
  }

  SkeletalJointCount = RETimelineDefinitionGetSkeletalJointCount();
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, SkeletalJointCount & ~(SkeletalJointCount >> 63), 0, MEMORY[0x1E69E7CC0]);
  if ((SkeletalJointCount & 0x8000000000000000) == 0)
  {
    v1 = result;
    if (!SkeletalJointCount)
    {
      return v1;
    }

    v4 = 0;
    while (1)
    {
      SkeletalJointName = RETimelineDefinitionGetSkeletalJointName();
      if (SkeletalJointName)
      {
        SkeletalJointName = String.init(cString:)();
        v6 = *(v1 + 2);
        v5 = *(v1 + 3);
        v7 = v6 + 1;
        if (v6 >= v5 >> 1)
        {
          v11 = v8;
LABEL_14:
          v12 = SkeletalJointName;
          v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v5 > 1), v7, 1, v1);
          SkeletalJointName = v12;
          v8 = v11;
        }
      }

      else
      {
        v6 = *(v1 + 2);
        v5 = *(v1 + 3);
        v7 = v6 + 1;
        v8 = 0xE000000000000000;
        if (v6 >= v5 >> 1)
        {
          v11 = 0xE000000000000000;
          goto LABEL_14;
        }
      }

      ++v4;
      *(v1 + 2) = v7;
      v9 = &v1[16 * v6];
      *(v9 + 4) = SkeletalJointName;
      *(v9 + 5) = v8;
      if (SkeletalJointCount == v4)
      {
        return v1;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t (*SampledAnimation<>.jointNames.modify(char **a1))()
{
  a1[1] = v1;
  memcpy(v5, v1, sizeof(v5));
  v3 = *(v1 + 264);
  a1[2] = v3;
  v7 = *(v1 + 272);
  v6 = v3;
  *a1 = SampledAnimation<>.jointNames.getter();
  return SampledAnimation<>.jointNames.modify;
}

void SampledAnimation<>.jointNames.modify(void *a1, char a2)
{
  v2 = a1[1];
  v3 = *a1;
  if (a2)
  {

    *(v2 + 264) = v3;
  }

  else
  {

    *(v2 + 264) = v3;
  }
}

uint64_t SampledAnimation<>.init(weightNames:frames:name:tweenMode:frameInterval:isAdditive:bindTarget:blendLayer:repeatMode:fillMode:trimStart:trimEnd:trimDuration:offset:delay:speed:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, char a6@<W5>, uint64_t *a7@<X6>, int a8@<W7>, uint64_t a9@<X8>, float a10@<S0>, double a11@<D1>, double a12@<D2>, float a13@<S3>, char *a14, char *a15, uint64_t a16, char a17, uint64_t a18, char a19, uint64_t a20, char a21)
{
  v33 = *a7;
  v32 = a7[1];
  v31 = *(a7 + 16);
  v27 = *a14;
  v34 = *a15;
  v35 = *a5;
  *(a9 + 208) = 2;
  *(a9 + 232) = 0;
  *(a9 + 240) = 1;
  *(a9 + 248) = 0;
  *(a9 + 256) = 1;
  *(a9 + 264) = 0;
  *(a9 + 272) = 514;
  *(a9 + 274) = 2;

  outlined consume of BindTarget?(0, 0, 0xFFu);
  type metadata accessor for TimelineDefinition();
  v28 = swift_allocObject();
  *(v28 + 16) = 0;
  *(a9 + 56) = a16;
  *(a9 + 64) = a17 & 1;
  *(a9 + 65) = 0;
  *(a9 + 72) = a18;
  *(a9 + 80) = a19 & 1;
  *(a9 + 81) = 0;
  *(a9 + 88) = a20;
  *(a9 + 96) = a21 & 1;
  *(a9 + 97) = 0;
  *(a9 + 104) = a11;
  *(a9 + 112) = 0;
  *(a9 + 120) = a12;
  *(a9 + 128) = 0;
  *(a9 + 132) = a13;
  *(a9 + 136) = 0;
  *(a9 + 137) = v27;
  *(a9 + 144) = 0;
  *(a9 + 152) = a3;
  *(a9 + 160) = a4;
  *(a9 + 168) = xmmword_1C1898800;
  *(a9 + 184) = 0;
  *(a9 + 188) = 0;
  *(a9 + 192) = 0;
  *(a9 + 194) = 0;
  *(a9 + 200) = v28;
  outlined consume of BindTarget?(0, 0, 0xFFu);
  result = swift_allocObject();
  *(result + 16) = 0;
  *a9 = a3;
  *(a9 + 8) = a4;
  *(a9 + 16) = v33;
  *(a9 + 24) = v32;
  *(a9 + 32) = v31;
  *(a9 + 33) = v40;
  *(a9 + 35) = v41;
  *(a9 + 36) = a8;
  *(a9 + 40) = 0;
  *(a9 + 41) = v34;
  *(a9 + 42) = 0;
  *(a9 + 43) = a6;
  *(a9 + 48) = result;
  *(a9 + 280) = a1;
  *(a9 + 224) = a2;
  *(a9 + 212) = a10;
  *(a9 + 216) = 0;
  *(a9 + 208) = v35;
  return result;
}

char *SampledAnimation<>.weightNames.getter()
{
  v1 = *(v0 + 280);
  if (v1)
  {

    return v1;
  }

  if (!*(*(v0 + 48) + 16))
  {
    return MEMORY[0x1E69E7CC0];
  }

  BlendShapeWeightsWeightsCount = RETimelineDefinitionGetBlendShapeWeightsWeightsCount();
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, BlendShapeWeightsWeightsCount & ~(BlendShapeWeightsWeightsCount >> 63), 0, MEMORY[0x1E69E7CC0]);
  if ((BlendShapeWeightsWeightsCount & 0x8000000000000000) == 0)
  {
    v1 = result;
    if (!BlendShapeWeightsWeightsCount)
    {
      return v1;
    }

    v4 = 0;
    while (1)
    {
      BlendShapeWeightsWeightName = RETimelineDefinitionGetBlendShapeWeightsWeightName();
      if (BlendShapeWeightsWeightName)
      {
        BlendShapeWeightsWeightName = String.init(cString:)();
        v6 = *(v1 + 2);
        v5 = *(v1 + 3);
        v7 = v6 + 1;
        if (v6 >= v5 >> 1)
        {
          v11 = v8;
LABEL_14:
          v12 = BlendShapeWeightsWeightName;
          v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v5 > 1), v7, 1, v1);
          BlendShapeWeightsWeightName = v12;
          v8 = v11;
        }
      }

      else
      {
        v6 = *(v1 + 2);
        v5 = *(v1 + 3);
        v7 = v6 + 1;
        v8 = 0xE000000000000000;
        if (v6 >= v5 >> 1)
        {
          v11 = 0xE000000000000000;
          goto LABEL_14;
        }
      }

      ++v4;
      *(v1 + 2) = v7;
      v9 = &v1[16 * v6];
      *(v9 + 4) = BlendShapeWeightsWeightName;
      *(v9 + 5) = v8;
      if (BlendShapeWeightsWeightsCount == v4)
      {
        return v1;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t (*SampledAnimation<>.weightNames.modify(char **a1))(void *a1, char a2)
{
  a1[1] = v1;
  memcpy(v5, v1, sizeof(v5));
  v3 = *(v1 + 280);
  a1[2] = v3;
  v6 = v3;
  *a1 = SampledAnimation<>.weightNames.getter();
  return FromToByAnimation<>.jointNames.modify;
}

unint64_t lazy protocol witness table accessor for type TweenMode and conformance TweenMode()
{
  result = lazy protocol witness table cache variable for type TweenMode and conformance TweenMode;
  if (!lazy protocol witness table cache variable for type TweenMode and conformance TweenMode)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TweenMode, &type metadata for TweenMode, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TweenMode and conformance TweenMode);
  }

  return result;
}

void keypath_set_75Tm(void *a1, uint64_t a2)
{
  v3 = *a1;

  *(a2 + 224) = v3;
}

uint64_t type metadata instantiation function for SampledAnimation(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t getEnumTagSinglePayload for SampledAnimation(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 288))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for SampledAnimation(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 280) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 288) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 288) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t specialized Set.contains(_:)(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) && (v3 = a1, Hasher.init(_seed:)(), specialized RawRepresentable<>.hash(into:)(v31, v3), v4 = Hasher._finalize()(), v5 = -1 << *(a2 + 32), v6 = v4 & ~v5, ((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0))
  {
    v30 = ~v5;
    v7 = 0xEB00000000746E65;
    v8 = 0xE90000000000006ELL;
    v9 = 0x6D6E6F7269766E65;
    while (1)
    {
      v10 = *(*(a2 + 48) + v6);
      if (v10 > 4)
      {
        if (*(*(a2 + 48) + v6) <= 6u)
        {
          if (v10 == 5)
          {
            v16 = 0xE400000000000000;
            v15 = 1752393069;
          }

          else
          {
            v16 = 0xE700000000000000;
            v15 = 0x73636973796870;
          }
        }

        else if (v10 == 7)
        {
          v16 = 0xE700000000000000;
          v15 = 0x65727574786574;
        }

        else if (v10 == 8)
        {
          v15 = 0x6F4C797469746E65;
          v16 = 0xEA00000000006461;
        }

        else
        {
          v16 = 0xE500000000000000;
          v15 = 0x6F65646976;
        }
      }

      else
      {
        if (v10 == 3)
        {
          v11 = 0x4D6E49746C697562;
        }

        else
        {
          v11 = 0xD000000000000013;
        }

        if (v10 == 3)
        {
          v12 = 0xEF6C616972657461;
        }

        else
        {
          v12 = 0x80000001C18DDAF0;
        }

        if (v10 == 2)
        {
          v11 = v9;
          v12 = v7;
        }

        v13 = *(*(a2 + 48) + v6) ? 0x6F69647561 : 0x6F6974616D696E61;
        v14 = *(*(a2 + 48) + v6) ? 0xE500000000000000 : 0xE90000000000006ELL;
        v15 = *(*(a2 + 48) + v6) <= 1u ? v13 : v11;
        v16 = *(*(a2 + 48) + v6) <= 1u ? v14 : v12;
      }

      v17 = 0x6F4C797469746E65;
      if (v3 != 8)
      {
        v17 = 0x6F65646976;
      }

      v18 = 0xEA00000000006461;
      if (v3 != 8)
      {
        v18 = 0xE500000000000000;
      }

      if (v3 == 7)
      {
        v17 = 0x65727574786574;
        v18 = 0xE700000000000000;
      }

      v19 = 0x73636973796870;
      if (v3 == 5)
      {
        v19 = 1752393069;
      }

      v20 = 0xE400000000000000;
      if (v3 != 5)
      {
        v20 = 0xE700000000000000;
      }

      if (v3 <= 6u)
      {
        v17 = v19;
        v18 = v20;
      }

      if (v3 == 3)
      {
        v21 = 0x4D6E49746C697562;
      }

      else
      {
        v21 = 0xD000000000000013;
      }

      if (v3 == 3)
      {
        v22 = 0xEF6C616972657461;
      }

      else
      {
        v22 = 0x80000001C18DDAF0;
      }

      if (v3 == 2)
      {
        v21 = v9;
        v22 = v7;
      }

      if (v3)
      {
        v23 = 0x6F69647561;
      }

      else
      {
        v23 = 0x6F6974616D696E61;
      }

      if (v3)
      {
        v8 = 0xE500000000000000;
      }

      if (v3 <= 1u)
      {
        v21 = v23;
        v22 = v8;
      }

      v24 = v3 <= 4u ? v21 : v17;
      v25 = v3 <= 4u ? v22 : v18;
      if (v15 == v24 && v16 == v25)
      {
        break;
      }

      v26 = v9;
      v27 = v7;
      v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v28 & 1) == 0)
      {
        v6 = (v6 + 1) & v30;
        v7 = v27;
        v8 = 0xE90000000000006ELL;
        v9 = v26;
        if ((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
        {
          continue;
        }
      }

      return v28 & 1;
    }

    v28 = 1;
  }

  else
  {
    v28 = 0;
  }

  return v28 & 1;
}

BOOL specialized Set.contains(_:)(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {

    v2 = __CocoaSet.contains(_:)();

    return v2 & 1;
  }

  else if (*(a2 + 16) && (Hasher.init(_seed:)(), v6 = *(a1 + 16), MEMORY[0x1C68F4C10](v6), v7 = Hasher._finalize()(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v10 = ~v8;
    do
    {
      v11 = *(*(*(a2 + 48) + 8 * v9) + 16);
      result = v11 == v6;
      if (v11 == v6)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    return 0;
  }

  return result;
}

{
  if (!*(a2 + 16))
  {
    return 0;
  }

  Hasher.init(_seed:)();
  MEMORY[0x1C68F4C10](a1);
  v4 = Hasher._finalize()();
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  do
  {
    v8 = *(*(a2 + 48) + 8 * v6);
    result = v8 == a1;
    if (v8 == a1)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
  }

  while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  return result;
}

{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v4 = MEMORY[0x1C68F4BF0](*(a2 + 40), a1);
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  do
  {
    v8 = *(*(a2 + 48) + 8 * v6);
    result = v8 == a1;
    if (v8 == a1)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
  }

  while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  return result;
}

uint64_t specialized Set.contains(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t specialized Set.contains(_:)(char a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    Hasher.init(_seed:)();
    MEMORY[0x1C68F4C10](a1 & 1);
    v5 = Hasher._finalize()();
    v6 = -1 << *(a2 + 32);
    v7 = v5 & ~v6;
    if ((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
    {
      v8 = ~v6;
      do
      {
        v9 = *(*(a2 + 48) + v7) ^ a1;
        if ((v9 & 1) == 0)
        {
          break;
        }

        v7 = (v7 + 1) & v8;
      }

      while (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
      LOBYTE(v2) = v9 ^ 1;
    }

    else
    {
      LOBYTE(v2) = 0;
    }
  }

  return v2 & 1;
}

BOOL specialized Set.contains(_:)(unsigned int a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v4 = MEMORY[0x1C68F4BD0](*(a2 + 40), a1, 4);
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  do
  {
    v8 = *(*(a2 + 48) + 4 * v6);
    result = v8 == a1;
    if (v8 == a1)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
  }

  while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  return result;
}

void StateMachineGraph.init(initialState:states:transitions:)(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t (*a4)(void)@<X4>, void *a5@<X8>)
{
  v9 = a3();
  v10 = a4();
  if (!a1 && a2 == 0xE000000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    if (v9[2])
    {
      a1 = v9[4];
      a2 = v9[5];
    }

    else
    {
      a1 = 0;
      a2 = 0xE000000000000000;
    }
  }

  *a5 = a1;
  a5[1] = a2;
  a5[2] = v9;
  a5[3] = v10;
}

uint64_t StateMachineGraph.initialState.getter()
{
  v1 = *v0;

  return v1;
}

void StateMachineGraph.initialState.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

void StateMachineGraph.checkIntegrity()(uint64_t a1@<X8>)
{
  v3 = v1[2];
  v4 = *(v3 + 16);
  if (!v4)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 5;
    return;
  }

  v5 = 0;
  v6 = v1[1];
  v73 = v1[3];
  v74 = *v1;
  v7 = MEMORY[0x1E69E7CD0];
  v87 = MEMORY[0x1E69E7CD0];
  v8 = v3 + 56;
  do
  {
    if (v5 >= *(v3 + 16))
    {
      __break(1u);
LABEL_48:

      v60 = a1;
      *a1 = v2;
      *(a1 + 8) = v8;
      v61 = 1;
LABEL_39:
      *(v60 + 16) = v61;
      return;
    }

    v9 = *(v8 - 24);
    v2 = *(v8 - 16);
    swift_bridgeObjectRetain_n();

    v10 = specialized Set._Variant.insert(_:)(&v83, v9, v2);

    if ((v10 & 1) == 0)
    {

      *a1 = v9;
      *(a1 + 8) = v2;
      *(a1 + 16) = 0;
      return;
    }

    ++v5;
    v8 += 32;
  }

  while (v4 != v5);
  v11 = v87;
  if ((specialized Set.contains(_:)(v74, v6, v87) & 1) == 0)
  {

    *a1 = v74;
    *(a1 + 8) = v6;
    *(a1 + 16) = 3;

    return;
  }

  v86 = v7;
  v12 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_17RealityFoundation29StateMachineParameterProtocol_pTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v13 = v73;
  v67 = *(v73 + 16);
  if (!v67)
  {
LABEL_38:

    v60 = a1;
    *a1 = 0;
    *(a1 + 8) = 0;
    v61 = -1;
    goto LABEL_39;
  }

  v14 = 0;
  v15 = v73 + 32;
  while (1)
  {
    if (v14 >= *(v13 + 16))
    {
      goto LABEL_55;
    }

    v68 = v14;
    v16 = (v15 + 72 * v14);
    v2 = *v16;
    v8 = v16[1];
    v18 = v16[2];
    v17 = v16[3];
    v20 = v16[4];
    v19 = v16[5];
    v21 = v16[8];
    swift_bridgeObjectRetain_n();

    v22 = specialized Set._Variant.insert(_:)(&v83, v2, v8);

    if ((v22 & 1) == 0)
    {
      goto LABEL_48;
    }

    v23 = specialized Set.contains(_:)(v18, v17, v11);

    if ((v23 & 1) == 0)
    {

      v60 = a1;
      *a1 = v18;
      *(a1 + 8) = v17;
      v61 = 2;
      goto LABEL_39;
    }

    v24 = specialized Set.contains(_:)(v20, v19, v11);

    if ((v24 & 1) == 0)
    {

      v60 = a1;
      *a1 = v20;
      *(a1 + 8) = v19;
      v61 = 2;
      goto LABEL_39;
    }

    v69 = *(v21 + 16);
    if (v69)
    {
      break;
    }

LABEL_37:

    v14 = v68 + 1;
    v13 = v73;
    v15 = v73 + 32;
    if (v68 + 1 == v67)
    {
      goto LABEL_38;
    }
  }

  v25 = 0;
  v71 = v11;
  v72 = v21 + 32;
  v70 = v21;
  while (1)
  {
    if (v25 >= *(v21 + 16))
    {
      goto LABEL_54;
    }

    v75 = v25;
    outlined init with copy of __REAssetService(v72 + 40 * v25, &v83);
    v26 = v84;
    v27 = v85;
    __swift_project_boxed_opaque_existential_1(&v83, v84);
    v28 = (*(v27 + 8))(v26, v27);
    __swift_destroy_boxed_opaque_existential_1(&v83);
    v29 = *(v28 + 16);
    if (v29)
    {
      break;
    }

LABEL_15:
    v25 = v75 + 1;

    v21 = v70;
    v11 = v71;
    if (v75 + 1 == v69)
    {
      goto LABEL_37;
    }
  }

  v30 = 0;
  v31 = v28 + 32;
  while (2)
  {
    if (v30 < *(v28 + 16))
    {
      outlined init with copy of __REAssetService(v31, v80);
      v34 = v81;
      v35 = v82;
      __swift_project_boxed_opaque_existential_1(v80, v81);
      v36 = (*(v35 + 8))(v34, v35);
      if (v12[2])
      {
        v38 = specialized __RawDictionaryStorage.find<A>(_:)(v36, v37);
        v40 = v39;

        if (v40)
        {
          outlined init with copy of __REAssetService(v12[7] + 40 * v38, v77);
          outlined init with take of ForceEffectBase(v77, &v78);
          __swift_project_boxed_opaque_existential_1(v80, v81);
          DynamicType = swift_getDynamicType();
          __swift_project_boxed_opaque_existential_1(&v78, v79);
          if (DynamicType != swift_getDynamicType())
          {

            v62 = v81;
            v63 = v82;
            __swift_project_boxed_opaque_existential_1(v80, v81);
            v64 = (*(v63 + 8))(v62, v63);
            v66 = v65;
            __swift_destroy_boxed_opaque_existential_1(&v78);
            *a1 = v64;
            *(a1 + 8) = v66;
            *(a1 + 16) = 4;
            __swift_destroy_boxed_opaque_existential_1(v80);

            return;
          }

          __swift_destroy_boxed_opaque_existential_1(&v78);
          goto LABEL_20;
        }
      }

      else
      {
      }

      v42 = v81;
      v43 = v82;
      __swift_project_boxed_opaque_existential_1(v80, v81);
      v44 = (*(v43 + 8))(v42, v43);
      v46 = v45;
      outlined init with copy of __REAssetService(v80, &v78);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v77[0] = v12;
      v48 = specialized __RawDictionaryStorage.find<A>(_:)(v44, v46);
      v50 = v12[2];
      v51 = (v49 & 1) == 0;
      v52 = __OFADD__(v50, v51);
      v53 = v50 + v51;
      if (v52)
      {
        goto LABEL_52;
      }

      v54 = v49;
      if (v12[3] >= v53)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_32;
        }

        v59 = v48;
        specialized _NativeDictionary.copy()();
        v48 = v59;
        if ((v54 & 1) == 0)
        {
LABEL_33:
          v12 = *&v77[0];
          *(*&v77[0] + 8 * (v48 >> 6) + 64) |= 1 << v48;
          v56 = (v12[6] + 16 * v48);
          *v56 = v44;
          v56[1] = v46;
          outlined init with take of ForceEffectBase(&v78, v12[7] + 40 * v48);
          v57 = v12[2];
          v52 = __OFADD__(v57, 1);
          v58 = v57 + 1;
          if (v52)
          {
            goto LABEL_53;
          }

          v12[2] = v58;
          goto LABEL_20;
        }
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v53, isUniquelyReferenced_nonNull_native);
        v48 = specialized __RawDictionaryStorage.find<A>(_:)(v44, v46);
        if ((v54 & 1) != (v55 & 1))
        {
          goto LABEL_56;
        }

LABEL_32:
        if ((v54 & 1) == 0)
        {
          goto LABEL_33;
        }
      }

      v32 = v48;

      v12 = *&v77[0];
      v33 = (*(*&v77[0] + 56) + 40 * v32);
      __swift_destroy_boxed_opaque_existential_1(v33);
      outlined init with take of ForceEffectBase(&v78, v33);
LABEL_20:
      ++v30;
      __swift_destroy_boxed_opaque_existential_1(v80);
      v31 += 40;
      if (v29 == v30)
      {
        goto LABEL_15;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

uint64_t get_enum_tag_for_layout_string_17RealityFoundation17StateMachineErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 7u) <= 4)
  {
    return *(a1 + 16) & 7;
  }

  else
  {
    return (*a1 + 5);
  }
}

uint64_t destructiveInjectEnumTag for StateMachineError(uint64_t result, unsigned int a2)
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

RealityFoundation::VFXComponent::SimulationState_optional __swiftcall VFXComponent.SimulationState.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 4;
  if (rawValue < 4)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t VFXComponent.effect.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

unsigned __int8 *VFXComponent.simulationState.setter(unsigned __int8 *result)
{
  v2 = *result;
  if (*(v1 + 16) == 1 && v2 == 3)
  {
    LOBYTE(v2) = 2;
  }

  *(v1 + 16) = v2;
  return result;
}

unsigned __int8 *(*VFXComponent.simulationState.modify(uint64_t a1))(unsigned __int8 *result)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 16);
  return VFXComponent.simulationState.modify;
}

unsigned __int8 *VFXComponent.simulationState.modify(unsigned __int8 *result)
{
  v1 = result[8];
  if (*(*result + 16) == 1 && v1 == 3)
  {
    LOBYTE(v1) = 2;
  }

  *(*result + 16) = v1;
  return result;
}

char *VFXComponent.startObserving(parameter:)(void *a1)
{
  v2 = v1;
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = (*(v4 + 8))(v3, v4);
  v7 = v6;
  v8 = *(v2 + 24);
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 2) + 1, 1, v8);
    v8 = result;
  }

  v11 = *(v8 + 2);
  v10 = *(v8 + 3);
  if (v11 >= v10 >> 1)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1, v8);
    v8 = result;
  }

  *(v8 + 2) = v11 + 1;
  v12 = &v8[16 * v11];
  *(v12 + 4) = v5;
  *(v12 + 5) = v7;
  *(v2 + 24) = v8;
  return result;
}

char *VFXComponent.stopObserving(parameter:)(void *a1)
{
  v2 = v1;
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = (*(v4 + 8))(v3, v4);
  v7 = v6;
  v8 = *(v2 + 32);
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 2) + 1, 1, v8);
    v8 = result;
  }

  v11 = *(v8 + 2);
  v10 = *(v8 + 3);
  if (v11 >= v10 >> 1)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1, v8);
    v8 = result;
  }

  *(v8 + 2) = v11 + 1;
  v12 = &v8[16 * v11];
  *(v12 + 4) = v5;
  *(v12 + 5) = v7;
  *(v2 + 32) = v8;
  return result;
}

void VFXComponent.setTexture(_:on:)(uint64_t a1, void *a2)
{
  v5 = a2[3];
  v6 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v5);
  (*(v6 + 40))(&v14, v5, v6);
  if (v14 == 7)
  {
    v7 = a2[3];
    v8 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v7);
    v9 = (*(v8 + 8))(v7, v8);
    v11 = v10;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *(v2 + 64);
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, v9, v11, isUniquelyReferenced_nonNull_native);

    *(v2 + 64) = v13;
  }
}

uint64_t VFXComponent.restrictCrossingToMesh(ofPortal:withPadding:)(uint64_t a1, uint64_t a2, char a3)
{

  *(v3 + 40) = a1;
  *(v3 + 48) = a2;
  *(v3 + 56) = a3 & 1;
  return result;
}

unint64_t VFXComponent.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 8) = 1065353216;
  *(a2 + 16) = 0;
  v4 = MEMORY[0x1E69E7CC0];
  *(a2 + 24) = MEMORY[0x1E69E7CC0];
  *(a2 + 32) = v4;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 1;
  result = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_10RealityKit15TextureResourceCSgTt0g5Tf4g_n(v4);
  *(a2 + 64) = result;
  *a2 = a1;
  return result;
}

void static VFXComponent.__fromCore(_:)(uint64_t a2@<X8>)
{
  Asset = REVFXSceneComponentGetAsset();
  if (!Asset)
  {
    goto LABEL_8;
  }

  v4 = Asset;
  type metadata accessor for VFXResource();
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  RERetain();
  REAssetSetSwiftObject();
  v6 = MEMORY[0x1E69E7CC0];
  v7 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_10RealityKit15TextureResourceCSgTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  REVFXSceneComponentGetSimulationRate();
  v9 = v8;
  SimulationState = REVFXSceneComponentGetSimulationState();
  if ((SimulationState & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_8:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  if (SimulationState >= 4)
  {
    v11 = 0;
  }

  else
  {
    v11 = SimulationState;
  }

  REVFXSceneComponentGetSimulationTime();
  *a2 = v5;
  *(a2 + 8) = v9;
  *(a2 + 12) = v12;
  *(a2 + 16) = v11;
  *(a2 + 24) = v6;
  *(a2 + 32) = v6;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 1;
  *(a2 + 64) = v7;
}

void VFXComponent.__toCore(_:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + 16);
  v5 = *(v1 + 24);
  v4 = *(v1 + 32);
  v6 = *(v1 + 40);
  v7 = *(v1 + 57);
  v8 = *(v1 + 64);
  REVFXSceneComponentSetAsset();
  REVFXSceneComponentSetSimulationRate();
  REVFXSceneComponentSetSimulationTime();
  v32 = v7;
  if (v3 >= 2)
  {
    REVFXSceneComponentResetSimulation();
  }

  REVFXSceneComponentSetSimulationState();
  v9 = *(v5 + 16);
  if (v9)
  {
    v10 = 0;
    v11 = (v5 + 40);
    while (v10 < *(v5 + 16))
    {
      ++v10;
      v13 = *(v11 - 1);
      v12 = *v11;

      v14 = MEMORY[0x1C68F3280](v13, v12);
      MEMORY[0x1C6901460](v2, v14);

      v11 += 2;
      if (v9 == v10)
      {
        goto LABEL_7;
      }
    }

LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

LABEL_7:
  v15 = *(v4 + 16);
  if (v15)
  {
    v16 = 0;
    v17 = (v4 + 40);
    while (v16 < *(v4 + 16))
    {
      ++v16;
      v19 = *(v17 - 1);
      v18 = *v17;

      v20 = MEMORY[0x1C68F3280](v19, v18);
      MEMORY[0x1C6901480](v2, v20);

      v17 += 2;
      if (v15 == v16)
      {
        goto LABEL_11;
      }
    }

LABEL_32:
    __break(1u);
    return;
  }

LABEL_11:
  v21 = 1 << *(v8 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & *(v8 + 64);
  v24 = (v21 + 63) >> 6;

  v25 = 0;
  while (v23)
  {
LABEL_21:
    v28 = __clz(__rbit64(v23)) | (v25 << 6);
    v29 = (*(v8 + 48) + 16 * v28);
    v31 = *v29;
    v30 = v29[1];
    if (*(*(v8 + 56) + 8 * v28))
    {

      v26 = MEMORY[0x1C68F3280](v31, v30);
      REVFXSceneComponentSetClientTexture();
    }

    else
    {

      v26 = MEMORY[0x1C68F3280](v31, v30);
      REVFXSceneComponentResetClientTexture();
    }

    v23 &= v23 - 1;
  }

  while (1)
  {
    v27 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      __break(1u);
      goto LABEL_31;
    }

    if (v27 >= v24)
    {
      break;
    }

    v23 = *(v8 + 64 + 8 * v27);
    ++v25;
    if (v23)
    {
      v25 = v27;
      goto LABEL_21;
    }
  }

  if (v32)
  {
    REVFXSceneComponentStopCollidingOutsidePortal();
  }

  if (v6)
  {

    REVFXSceneComponentStartCollidingOutsidePortal();
    REVFXSceneComponentSetPortalPaddingForCollisions();
  }

  RENetworkMarkComponentDirty();
}

uint64_t HasVFX.vfxComponent.getter@<X0>(uint64_t a1@<X8>)
{
  (*(*v1 + 96))(&v4);
  _s10RealityKit6EntityC12ComponentSetV5doGet_21borrowStrongReferencexSgxm_SbtAA0D0RzlF0A10Foundation12VFXComponentV_Tt0B5(a1);
}

uint64_t HasVFX.vfxComponent.setter(uint64_t a1)
{
  v2 = *(a1 + 48);
  v8[2] = *(a1 + 32);
  v8[3] = v2;
  v9 = *(a1 + 64);
  v3 = *(a1 + 16);
  v8[0] = *a1;
  v8[1] = v3;
  v4 = (*(*v1 + 112))(v7);
  _s10RealityKit6EntityC12ComponentSetV02doE0_8newValue21returnStrongReferenceyxm_xSgSbtAA0D0RzlF0A10Foundation12VFXComponentV_TtB5(v8, 0, *v5);
  outlined destroy of VFXComponent?(v8);
  return v4(v7, 0);
}

void (*HasVFX.vfxComponent.modify(void *a1, uint64_t a2, uint64_t a3))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x138uLL);
  }

  *a1 = v7;
  v7[37] = a3;
  v7[38] = v3;
  v7[36] = a2;
  HasVFX.vfxComponent.getter(v7);
  return HasVFX.vfxComponent.modify;
}

void HasVFX.vfxComponent.modify(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2[1];
    v5 = v2[2];
    v4 = v2[3];
    v2[11] = v5;
    v2[12] = v4;
    v6 = v2[1];
    v7 = *v2;
    v2[9] = *v2;
    v2[10] = v6;
    v8 = v2[3];
    v15 = v5;
    v16 = v8;
    *(v2 + 26) = *(v2 + 8);
    v17 = *(v2 + 8);
    v13 = v7;
    v14 = v3;
    outlined init with copy of VFXComponent?((v2 + 9), v2 + 216);
    HasVFX.vfxComponent.setter(&v13);
    v9 = *v2;
    *(v2 + 88) = v2[1];
    v10 = v2[3];
    *(v2 + 104) = v2[2];
    *(v2 + 120) = v10;
    *(v2 + 17) = *(v2 + 8);
    *(v2 + 72) = v9;
    outlined destroy of VFXComponent?(v2 + 72);
  }

  else
  {
    v11 = v2[3];
    v15 = v2[2];
    v16 = v11;
    v17 = *(v2 + 8);
    v12 = v2[1];
    v13 = *v2;
    v14 = v12;
    HasVFX.vfxComponent.setter(&v13);
  }

  free(v2);
}

void HasVFX.setVFXValue(_:of:)(void *a1, void *a2)
{
  REVFXSceneComponentGetComponentType();
  if (REEntityGetComponentByClass())
  {
    v4 = a2[3];
    v5 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v4);
    (*(v5 + 32))(&v101, v4, v5);
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    DynamicType = swift_getDynamicType();
    if (VFXParameterType.isMatching(type:)(DynamicType))
    {
      v7 = a2[3];
      v8 = a2[4];
      __swift_project_boxed_opaque_existential_1(a2, v7);
      (*(v8 + 32))(&v104, v7, v8);
      switch(v104)
      {
        case 0:
          v72 = a2[3];
          v73 = a2[4];
          __swift_project_boxed_opaque_existential_1(a2, v72);
          v74 = (*(v73 + 8))(v72, v73);
          v75 = MEMORY[0x1C68F3280](v74);

          outlined init with copy of Any(a1, &v101);
          swift_dynamicCast();
          v76 = MEMORY[0x1C68F3280](v105.n128_u64[0], v105.n128_u64[1]);

          REVFXSceneComponentSetParameterString();

          break;
        case 1:
          v81 = a2[3];
          v82 = a2[4];
          __swift_project_boxed_opaque_existential_1(a2, v81);
          v83 = (*(v82 + 8))(v81, v82);
          v84 = MEMORY[0x1C68F3280](v83);

          outlined init with copy of Any(a1, &v101);
          swift_dynamicCast();
          REVFXSceneComponentSetParameterBool();

          break;
        case 2:
          v60 = a2[3];
          v61 = a2[4];
          __swift_project_boxed_opaque_existential_1(a2, v60);
          v62 = (*(v61 + 8))(v60, v61);
          v63 = MEMORY[0x1C68F3280](v62);

          outlined init with copy of Any(a1, &v101);
          swift_dynamicCast();
          REVFXSceneComponentSetParameterUInt8();

          break;
        case 3:
          v77 = a2[3];
          v78 = a2[4];
          __swift_project_boxed_opaque_existential_1(a2, v77);
          v79 = (*(v78 + 8))(v77, v78);
          v80 = MEMORY[0x1C68F3280](v79);

          outlined init with copy of Any(a1, &v101);
          swift_dynamicCast();
          REVFXSceneComponentSetParameterUInt16();

          break;
        case 4:
          v64 = a2[3];
          v65 = a2[4];
          __swift_project_boxed_opaque_existential_1(a2, v64);
          v66 = (*(v65 + 8))(v64, v65);
          v67 = MEMORY[0x1C68F3280](v66);

          outlined init with copy of Any(a1, &v101);
          swift_dynamicCast();
          REVFXSceneComponentSetParameterUInt32();

          break;
        case 5:
          v68 = a2[3];
          v69 = a2[4];
          __swift_project_boxed_opaque_existential_1(a2, v68);
          v70 = (*(v69 + 8))(v68, v69);
          v71 = MEMORY[0x1C68F3280](v70);

          outlined init with copy of Any(a1, &v101);
          swift_dynamicCast();
          REVFXSceneComponentSetParameterUInt64();

          break;
        case 6:
          v85 = a2[3];
          v86 = a2[4];
          __swift_project_boxed_opaque_existential_1(a2, v85);
          v87 = (*(v86 + 8))(v85, v86);
          v88 = MEMORY[0x1C68F3280](v87);

          outlined init with copy of Any(a1, &v101);
          swift_dynamicCast();
          REVFXSceneComponentSetParameterInt();

          break;
        case 7:
          v89 = a2[3];
          v90 = a2[4];
          __swift_project_boxed_opaque_existential_1(a2, v89);
          v91 = (*(v90 + 8))(v89, v90);
          v92 = MEMORY[0x1C68F3280](v91);

          outlined init with copy of Any(a1, &v101);
          swift_dynamicCast();
          REVFXSceneComponentSetParameterInt8();

          break;
        case 8:
          v97 = a2[3];
          v98 = a2[4];
          __swift_project_boxed_opaque_existential_1(a2, v97);
          v99 = (*(v98 + 8))(v97, v98);
          v100 = MEMORY[0x1C68F3280](v99);

          outlined init with copy of Any(a1, &v101);
          swift_dynamicCast();
          REVFXSceneComponentSetParameterInt16();

          break;
        case 9:
          v93 = a2[3];
          v94 = a2[4];
          __swift_project_boxed_opaque_existential_1(a2, v93);
          v95 = (*(v94 + 8))(v93, v94);
          v96 = MEMORY[0x1C68F3280](v95);

          outlined init with copy of Any(a1, &v101);
          swift_dynamicCast();
          REVFXSceneComponentSetParameterInt32();

          break;
        case 10:
          v56 = a2[3];
          v57 = a2[4];
          __swift_project_boxed_opaque_existential_1(a2, v56);
          v58 = (*(v57 + 8))(v56, v57);
          v59 = MEMORY[0x1C68F3280](v58);

          outlined init with copy of Any(a1, &v101);
          swift_dynamicCast();
          REVFXSceneComponentSetParameterInt64();

          break;
        case 11:
        case 12:
          v9 = a2[3];
          v10 = a2[4];
          __swift_project_boxed_opaque_existential_1(a2, v9);
          v11 = (*(v10 + 8))(v9, v10);
          v12 = MEMORY[0x1C68F3280](v11);

          outlined init with copy of Any(a1, &v101);
          swift_dynamicCast();
          REVFXSceneComponentSetParameterFloat();

          break;
        case 13:
        case 18:
          v52 = a2[3];
          v53 = a2[4];
          __swift_project_boxed_opaque_existential_1(a2, v52);
          v54 = (*(v53 + 8))(v52, v53);
          v55 = MEMORY[0x1C68F3280](v54);

          outlined init with copy of Any(a1, &v101);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD2VySfGMd, &_ss5SIMD2VySfGMR);
          swift_dynamicCast();
          REVFXSceneComponentSetParameterFloat2();

          break;
        case 14:
        case 19:
          v29 = a2[3];
          v30 = a2[4];
          __swift_project_boxed_opaque_existential_1(a2, v29);
          v31 = (*(v30 + 8))(v29, v30);
          v32 = MEMORY[0x1C68F3280](v31);

          outlined init with copy of Any(a1, &v101);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD3VySfGMd, &_ss5SIMD3VySfGMR);
          swift_dynamicCast();
          REVFXSceneComponentSetParameterFloat3();

          break;
        case 15:
        case 20:
          v48 = a2[3];
          v49 = a2[4];
          __swift_project_boxed_opaque_existential_1(a2, v48);
          v50 = (*(v49 + 8))(v48, v49);
          v51 = MEMORY[0x1C68F3280](v50);

          outlined init with copy of Any(a1, &v101);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD4VySfGMd, &_ss5SIMD4VySfGMR);
          swift_dynamicCast();
          REVFXSceneComponentSetParameterFloat4();

          break;
        case 16:
        case 21:
          v33 = a2[3];
          v34 = a2[4];
          __swift_project_boxed_opaque_existential_1(a2, v33);
          v35 = (*(v34 + 8))(v33, v34);
          v36 = MEMORY[0x1C68F3280](v35);

          outlined init with copy of Any(a1, &v105);
          type metadata accessor for simd_float3x3(0);
          swift_dynamicCast();
          REVFXSceneComponentSetParameterFloat3x3();

          break;
        case 17:
        case 22:
          v37 = a2[3];
          v38 = a2[4];
          __swift_project_boxed_opaque_existential_1(a2, v37);
          v39 = (*(v38 + 8))(v37, v38);
          v40 = MEMORY[0x1C68F3280](v39);

          outlined init with copy of Any(a1, &v105);
          type metadata accessor for simd_float4x4(0);
          swift_dynamicCast();
          REVFXSceneComponentSetParameterFloat4x4();

          break;
        case 24:
        case 25:
          v41 = a2[3];
          v42 = a2[4];
          __swift_project_boxed_opaque_existential_1(a2, v41);
          v43 = (*(v42 + 8))(v41, v42);
          v44 = MEMORY[0x1C68F3280](v43);

          v45 = a2[3];
          v46 = a2[4];
          __swift_project_boxed_opaque_existential_1(a2, v45);
          (*(v46 + 32))(&v104, v45, v46);
          outlined init with copy of Any(a1, &v101);
          type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for CAKeyframeAnimation, 0x1E6979390);
          swift_dynamicCast();
          v47 = v105.n128_u64[0];
          REVFXSceneComponentSetParameterKeyframeAnimation();

          break;
        default:
          return;
      }
    }

    else
    {
      v13 = static os_log_type_t.error.getter();
      outlined init with copy of __REAssetService(a2, &v101);
      outlined init with copy of __REAssetService(a2, &v105);
      type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, 0x1E69E9BF8);
      v14 = static OS_os_log.default.getter();
      if (os_log_type_enabled(v14, v13))
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v104 = v16;
        *v15 = 136315394;
        v17 = v102;
        v18 = v103;
        __swift_project_boxed_opaque_existential_1(&v101, v102);
        v19 = (*(v18 + 16))(v17, v18);
        v21 = v20;
        __swift_destroy_boxed_opaque_existential_1(&v101);
        v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v21, &v104);

        *(v15 + 4) = v22;
        *(v15 + 12) = 2080;
        v23 = v106;
        v24 = v107;
        __swift_project_boxed_opaque_existential_1(&v105, v106);
        v25 = (*(v24 + 24))(v23, v24);
        v27 = v26;
        __swift_destroy_boxed_opaque_existential_1(&v105);
        v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v27, &v104);

        *(v15 + 14) = v28;
        _os_log_impl(&dword_1C1358000, v14, v13, "[VFX] Missmatch between setValue value type and parameter type of %s.%s", v15, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1C6902A30](v16, -1, -1);
        MEMORY[0x1C6902A30](v15, -1, -1);
      }

      else
      {

        __swift_destroy_boxed_opaque_existential_1(&v101);
        __swift_destroy_boxed_opaque_existential_1(&v105);
      }
    }
  }
}

void HasVFX.vfxValue(of:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  REVFXSceneComponentGetComponentType();
  if (REEntityGetComponentByClass())
  {
    v4 = a1[3];
    v5 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v4);
    v6 = *(v5 + 32);
    v6((&v121 + 1), v4, v5);
    switch(BYTE1(v121))
    {
      case 0:
        v78 = a1[3];
        v79 = a1[4];
        __swift_project_boxed_opaque_existential_1(a1, v78);
        v80 = (*(v79 + 8))(v78, v79);
        v81 = MEMORY[0x1C68F3280](v80);

        v82 = REVFXSceneComponentGetParameterString();

        v83 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v85 = v84;

        *(a2 + 24) = MEMORY[0x1E69E6158];
        *a2 = v83;
        *(a2 + 8) = v85;
        return;
      case 1:
        v92 = a1[3];
        v93 = a1[4];
        __swift_project_boxed_opaque_existential_1(a1, v92);
        v94 = (*(v93 + 8))(v92, v93);
        v95 = MEMORY[0x1C68F3280](v94);

        ParameterBool = REVFXSceneComponentGetParameterBool();

        v67 = MEMORY[0x1E69E6370];
        goto LABEL_23;
      case 2:
        v62 = a1[3];
        v63 = a1[4];
        __swift_project_boxed_opaque_existential_1(a1, v62);
        v64 = (*(v63 + 8))(v62, v63);
        v65 = MEMORY[0x1C68F3280](v64);

        ParameterBool = REVFXSceneComponentGetParameterUInt8();

        v67 = MEMORY[0x1E69E7508];
        goto LABEL_23;
      case 3:
        v86 = a1[3];
        v87 = a1[4];
        __swift_project_boxed_opaque_existential_1(a1, v86);
        v88 = (*(v87 + 8))(v86, v87);
        v89 = MEMORY[0x1C68F3280](v88);

        ParameterUInt16 = REVFXSceneComponentGetParameterUInt16();

        v91 = MEMORY[0x1E69E75F8];
        goto LABEL_27;
      case 4:
        v68 = a1[3];
        v69 = a1[4];
        __swift_project_boxed_opaque_existential_1(a1, v68);
        v70 = (*(v69 + 8))(v68, v69);
        v71 = MEMORY[0x1C68F3280](v70);

        ParameterUInt32 = REVFXSceneComponentGetParameterUInt32();

        v73 = MEMORY[0x1E69E7668];
        goto LABEL_25;
      case 5:
        v74 = a1[3];
        v75 = a1[4];
        __swift_project_boxed_opaque_existential_1(a1, v74);
        v76 = (*(v75 + 8))(v74, v75);
        v77 = MEMORY[0x1C68F3280](v76);

        ParameterUInt64 = REVFXSceneComponentGetParameterUInt64();

        v61 = MEMORY[0x1E69E76D8];
        goto LABEL_21;
      case 6:
        v96 = a1[3];
        v97 = a1[4];
        __swift_project_boxed_opaque_existential_1(a1, v96);
        v98 = (*(v97 + 8))(v96, v97);
        v99 = MEMORY[0x1C68F3280](v98);

        ParameterUInt64 = REVFXSceneComponentGetParameterInt();

        v61 = MEMORY[0x1E69E6530];
        goto LABEL_21;
      case 7:
        v100 = a1[3];
        v101 = a1[4];
        __swift_project_boxed_opaque_existential_1(a1, v100);
        v102 = (*(v101 + 8))(v100, v101);
        v103 = MEMORY[0x1C68F3280](v102);

        ParameterBool = REVFXSceneComponentGetParameterInt8();

        v67 = MEMORY[0x1E69E7230];
LABEL_23:
        *(a2 + 24) = v67;
        *a2 = ParameterBool;
        return;
      case 8:
        v108 = a1[3];
        v109 = a1[4];
        __swift_project_boxed_opaque_existential_1(a1, v108);
        v110 = (*(v109 + 8))(v108, v109);
        v111 = MEMORY[0x1C68F3280](v110);

        ParameterUInt16 = REVFXSceneComponentGetParameterInt16();

        v91 = MEMORY[0x1E69E7290];
LABEL_27:
        *(a2 + 24) = v91;
        *a2 = ParameterUInt16;
        return;
      case 9:
        v104 = a1[3];
        v105 = a1[4];
        __swift_project_boxed_opaque_existential_1(a1, v104);
        v106 = (*(v105 + 8))(v104, v105);
        v107 = MEMORY[0x1C68F3280](v106);

        ParameterUInt32 = REVFXSceneComponentGetParameterInt32();

        v73 = MEMORY[0x1E69E72F0];
LABEL_25:
        *(a2 + 24) = v73;
        *a2 = ParameterUInt32;
        return;
      case 0xA:
        v56 = a1[3];
        v57 = a1[4];
        __swift_project_boxed_opaque_existential_1(a1, v56);
        v58 = (*(v57 + 8))(v56, v57);
        v59 = MEMORY[0x1C68F3280](v58);

        ParameterUInt64 = REVFXSceneComponentGetParameterInt64();

        v61 = MEMORY[0x1E69E7360];
LABEL_21:
        *(a2 + 24) = v61;
        *a2 = ParameterUInt64;
        return;
      case 0xB:
      case 0xC:
        v7 = a1[3];
        v8 = a1[4];
        __swift_project_boxed_opaque_existential_1(a1, v7);
        v9 = (*(v8 + 8))(v7, v8);
        v10 = MEMORY[0x1C68F3280](v9);

        REVFXSceneComponentGetParameterFloat();
        v12 = v11;

        *(a2 + 24) = MEMORY[0x1E69E6448];
        *a2 = v12;
        return;
      case 0xD:
      case 0x12:
        v50 = a1[3];
        v51 = a1[4];
        __swift_project_boxed_opaque_existential_1(a1, v50);
        v52 = (*(v51 + 8))(v50, v51);
        v53 = MEMORY[0x1C68F3280](v52);

        REVFXSceneComponentGetParameterFloat2();
        v55 = v54;

        *(a2 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD2VySfGMd, &_ss5SIMD2VySfGMR);
        *a2 = v55;
        return;
      case 0xE:
      case 0x13:
        v13 = a1[3];
        v14 = a1[4];
        __swift_project_boxed_opaque_existential_1(a1, v13);
        v15 = (*(v14 + 8))(v13, v14);
        v16 = MEMORY[0x1C68F3280](v15);

        REVFXSceneComponentGetParameterFloat3();
        v117 = v17;

        v18 = &_ss5SIMD3VySfGMd;
        v19 = &_ss5SIMD3VySfGMR;
        goto LABEL_11;
      case 0xF:
      case 0x14:
        v44 = a1[3];
        v45 = a1[4];
        __swift_project_boxed_opaque_existential_1(a1, v44);
        v46 = (*(v45 + 8))(v44, v45);
        v47 = MEMORY[0x1C68F3280](v46);

        REVFXSceneComponentGetParameterFloat4();
        v117 = v48;

        v18 = &_ss5SIMD4VySfGMd;
        v19 = &_ss5SIMD4VySfGMR;
LABEL_11:
        *(a2 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(v18, v19);
        v49 = swift_allocObject();
        *a2 = v49;
        *(v49 + 16) = v117;
        break;
      case 0x10:
      case 0x15:
        v20 = a1[3];
        v21 = a1[4];
        __swift_project_boxed_opaque_existential_1(a1, v20);
        v22 = (*(v21 + 8))(v20, v21);
        v23 = MEMORY[0x1C68F3280](v22);

        REVFXSceneComponentGetParameterFloat3x3();
        v115 = v25;
        v118 = v24;
        v113 = v26;

        type metadata accessor for simd_float3x3(0);
        *(a2 + 24) = v27;
        v28 = swift_allocObject();
        *a2 = v28;
        v28[1] = v118;
        v28[2] = v115;
        v28[3] = v113;
        break;
      case 0x11:
      case 0x16:
        v29 = a1[3];
        v30 = a1[4];
        __swift_project_boxed_opaque_existential_1(a1, v29);
        v31 = (*(v30 + 8))(v29, v30);
        v32 = MEMORY[0x1C68F3280](v31);

        REVFXSceneComponentGetParameterFloat4x4();
        v116 = v34;
        v119 = v33;
        v112 = v36;
        v114 = v35;

        type metadata accessor for simd_float4x4(0);
        *(a2 + 24) = v37;
        v38 = swift_allocObject();
        *a2 = v38;
        v38[1] = v119;
        v38[2] = v116;
        v38[3] = v114;
        v38[4] = v112;
        break;
      case 0x18:
      case 0x19:
        v120 = a2;
        v39 = a1[3];
        v40 = a1[4];
        __swift_project_boxed_opaque_existential_1(a1, v39);
        v41 = (*(v40 + 8))(v39, v40);
        v42 = MEMORY[0x1C68F3280](v41);

        v6(&v121, v4, v5);
        v43 = REVFXSceneComponentGetParameterKeyframeAnimation();

        v120[3] = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for CAKeyframeAnimation, 0x1E6979390);
        *v120 = v43;
        break;
      default:
        goto LABEL_4;
    }
  }

  else
  {
LABEL_4:
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }
}

uint64_t outlined destroy of VFXComponent?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation12VFXComponentVSgMd, &_s17RealityFoundation12VFXComponentVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with copy of VFXComponent?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation12VFXComponentVSgMd, &_s17RealityFoundation12VFXComponentVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type VFXComponent.SimulationState and conformance VFXComponent.SimulationState()
{
  result = lazy protocol witness table cache variable for type VFXComponent.SimulationState and conformance VFXComponent.SimulationState;
  if (!lazy protocol witness table cache variable for type VFXComponent.SimulationState and conformance VFXComponent.SimulationState)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for VFXComponent.SimulationState, &type metadata for VFXComponent.SimulationState, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type VFXComponent.SimulationState and conformance VFXComponent.SimulationState);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VFXComponent.SimulationState and conformance VFXComponent.SimulationState;
  if (!lazy protocol witness table cache variable for type VFXComponent.SimulationState and conformance VFXComponent.SimulationState)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for VFXComponent.SimulationState, &type metadata for VFXComponent.SimulationState, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type VFXComponent.SimulationState and conformance VFXComponent.SimulationState);
  }

  return result;
}

uint64_t FromToByAction.from.getter@<X0>(uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Optional();
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, v2, v4);
}

uint64_t FromToByAction.to.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  v5 = type metadata accessor for Optional();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t FromToByAction.by.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 40);
  v5 = type metadata accessor for Optional();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

__n128 FromToByAction.timingFunction.getter@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X8>)
{
  v3 = (v2 + *(a1 + 44));
  v4 = v3[1].n128_u32[0];
  v5 = v3[1].n128_u8[4];
  result = *v3;
  *a2 = *v3;
  a2[1].n128_u32[0] = v4;
  a2[1].n128_u8[4] = v5;
  return result;
}

__n128 FromToByAction.timingFunction.setter(__n128 *a1, uint64_t a2)
{
  v3 = a1[1].n128_u32[0];
  v4 = a1[1].n128_u8[4];
  v5 = (v2 + *(a2 + 44));
  result = *a1;
  *v5 = *a1;
  v5[1].n128_u32[0] = v3;
  v5[1].n128_u8[4] = v4;
  return result;
}

void static FromToByAction.TransformMode.default.getter(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = -3;
}

uint64_t static FromToByAction.TransformMode.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *(a1 + 16);
  v6 = *a2;
  v5 = a2[1];
  v7 = *(a2 + 16);
  if (v4 == 253)
  {
    if (v7 == 253)
    {
      outlined consume of FromToByAction<A>.TransformMode<A>(*a1, v2, 0xFDu);
      v8 = v6;
      v9 = v5;
      v10 = -3;
      goto LABEL_10;
    }

    goto LABEL_12;
  }

  if (v4 == 254)
  {
    if (v7 == 254)
    {
      outlined consume of FromToByAction<A>.TransformMode<A>(*a1, v2, 0xFEu);
      v8 = v6;
      v9 = v5;
      v10 = -2;
      goto LABEL_10;
    }

    goto LABEL_12;
  }

  if (v4 != 255)
  {
    if (v7 <= 0xFC)
    {
      v15[0] = *a1;
      v15[1] = v2;
      v16 = v4 & 1;
      v13[0] = v6;
      v13[1] = v5;
      v14 = v7 & 1;
      outlined copy of FromToByAction<A>.TransformMode<A>(v6, v5, v7);
      outlined copy of FromToByAction<A>.TransformMode<A>(v3, v2, v4);
      outlined copy of FromToByAction<A>.TransformMode<A>(v6, v5, v7);
      outlined copy of FromToByAction<A>.TransformMode<A>(v3, v2, v4);
      v11 = specialized static ActionEntityResolution.== infix(_:_:)(v15, v13);
      outlined consume of FromToByAction<A>.TransformMode<A>(v3, v2, v4);
      outlined consume of FromToByAction<A>.TransformMode<A>(v6, v5, v7);
      outlined consume of FromToByAction<A>.TransformMode<A>(v6, v5, v7);
      outlined consume of FromToByAction<A>.TransformMode<A>(v3, v2, v4);
      return v11 & 1;
    }

    goto LABEL_12;
  }

  if (v7 != 255)
  {
LABEL_12:
    outlined copy of FromToByAction<A>.TransformMode<A>(*a2, a2[1], v7);
    outlined copy of FromToByAction<A>.TransformMode<A>(v3, v2, v4);
    outlined consume of FromToByAction<A>.TransformMode<A>(v3, v2, v4);
    outlined consume of FromToByAction<A>.TransformMode<A>(v6, v5, v7);
    v11 = 0;
    return v11 & 1;
  }

  outlined consume of FromToByAction<A>.TransformMode<A>(*a1, v2, 0xFFu);
  v8 = v6;
  v9 = v5;
  v10 = -1;
LABEL_10:
  outlined consume of FromToByAction<A>.TransformMode<A>(v8, v9, v10);
  v11 = 1;
  return v11 & 1;
}

uint64_t outlined copy of FromToByAction<A>.TransformMode<A>(uint64_t result, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 0xFCu)
  {
    return outlined copy of ActionEntityResolution(result, a2, a3 & 1);
  }

  return result;
}

double outlined consume of FromToByAction<A>.TransformMode<A>(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 0xFCu)
  {
    return outlined consume of ActionEntityResolution(a1, a2, a3 & 1);
  }

  return result;
}

uint64_t FromToByAction.TransformMode.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E65726170 && a2 == 0xE600000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C61636F6CLL && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656E656373 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x65766974616C6572 && a2 == 0xE800000000000000)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

Swift::Int FromToByAction.TransformMode.CodingKeys.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x1C68F4C10](a1);
  return Hasher._finalize()();
}

uint64_t FromToByAction.TransformMode.CodingKeys.stringValue.getter(unsigned __int8 a1)
{
  v1 = 0x746E65726170;
  v2 = 0x656E656373;
  if (a1 != 2)
  {
    v2 = 0x65766974616C6572;
  }

  if (a1)
  {
    v1 = 0x6C61636F6CLL;
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

uint64_t FromToByAction.TransformMode.RelativeCodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  if (a1 == 28532 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance FromToByAction<A>.TransformMode.CodingKeys()
{
  Hasher.init(_seed:)();
  FromToByAction.TransformMode.CodingKeys.hash(into:)(v2, *v0);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance FromToByAction<A>.TransformMode.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = FromToByAction.TransformMode.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance FromToByAction<A>.TransformMode.CodingKeys@<X0>(_BYTE *a2@<X8>)
{
  result = specialized FromToByAction.TransformMode.CodingKeys.init(intValue:)();
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance FromToByAction<A>.TransformMode.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for FromToByAction<A>.TransformMode.CodingKeys, a1);

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance FromToByAction<A>.TransformMode.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for FromToByAction<A>.TransformMode.CodingKeys, a1);

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance FromToByAction<A>.TransformMode.LocalCodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = protocol witness for static Equatable.== infix(_:_:) in conformance __RKEntityInteractionsComponent.Registration.RegistrationError();
  *a1 = result & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance FromToByAction<A>.TransformMode.LocalCodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for FromToByAction<A>.TransformMode.LocalCodingKeys, a1);

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance FromToByAction<A>.TransformMode.LocalCodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for FromToByAction<A>.TransformMode.LocalCodingKeys, a1);

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance FromToByAction<A>.TransformMode.ParentCodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for FromToByAction<A>.TransformMode.ParentCodingKeys, a1);

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance FromToByAction<A>.TransformMode.ParentCodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for FromToByAction<A>.TransformMode.ParentCodingKeys, a1);

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance FromToByAction<A>.TransformMode.RelativeCodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = FromToByAction.TransformMode.RelativeCodingKeys.init(stringValue:)(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance FromToByAction<A>.TransformMode.RelativeCodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for FromToByAction<A>.TransformMode.RelativeCodingKeys, a1);

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance FromToByAction<A>.TransformMode.RelativeCodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for FromToByAction<A>.TransformMode.RelativeCodingKeys, a1);

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

void protocol witness for CodingKey.init(stringValue:) in conformance FromToByAction<A>.TransformMode.LocalCodingKeys(uint64_t a2@<X2>, uint64_t (*a3)(void, void)@<X4>, _BYTE *a4@<X8>)
{
  v5 = a3(*(a2 + 16), *(a2 + 24));

  *a4 = v5 & 1;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance FromToByAction<A>.TransformMode.SceneCodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for FromToByAction<A>.TransformMode.SceneCodingKeys, a1);

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance FromToByAction<A>.TransformMode.SceneCodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for FromToByAction<A>.TransformMode.SceneCodingKeys, a1);

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t FromToByAction.TransformMode.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = type metadata accessor for FromToByAction.TransformMode.RelativeCodingKeys(255, v6, v7, a4);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for FromToByAction<A>.TransformMode.RelativeCodingKeys, v8);
  v53 = v8;
  v9 = type metadata accessor for KeyedEncodingContainer();
  v55 = *(v9 - 8);
  v56 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v54 = &v37 - v10;
  v12 = type metadata accessor for FromToByAction.TransformMode.SceneCodingKeys(255, v6, v7, v11);
  v13 = swift_getWitnessTable(protocol conformance descriptor for FromToByAction<A>.TransformMode.SceneCodingKeys, v12);
  v51 = v12;
  v49 = v13;
  v50 = type metadata accessor for KeyedEncodingContainer();
  v48 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v47 = &v37 - v14;
  v16 = type metadata accessor for FromToByAction.TransformMode.LocalCodingKeys(255, v6, v7, v15);
  v17 = swift_getWitnessTable(protocol conformance descriptor for FromToByAction<A>.TransformMode.LocalCodingKeys, v16);
  v46 = v16;
  v44 = v17;
  v45 = type metadata accessor for KeyedEncodingContainer();
  v43 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v42 = &v37 - v18;
  v20 = type metadata accessor for FromToByAction.TransformMode.ParentCodingKeys(255, v6, v7, v19);
  v40 = swift_getWitnessTable(protocol conformance descriptor for FromToByAction<A>.TransformMode.ParentCodingKeys, v20);
  v41 = type metadata accessor for KeyedEncodingContainer();
  v39 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v22 = &v37 - v21;
  v24 = type metadata accessor for FromToByAction.TransformMode.CodingKeys(255, v6, v7, v23);
  swift_getWitnessTable(protocol conformance descriptor for FromToByAction<A>.TransformMode.CodingKeys, v24);
  v25 = type metadata accessor for KeyedEncodingContainer();
  v57 = *(v25 - 8);
  v58 = v25;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v37 - v26;
  v28 = v4[1];
  v38 = *v4;
  v37 = v28;
  v29 = *(v4 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (v29 == 253)
  {
    LOBYTE(v59) = 2;
    v34 = v47;
    v33 = v58;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v48 + 8))(v34, v50);
    return (*(v57 + 8))(v27, v33);
  }

  if (v29 == 254)
  {
    LOBYTE(v59) = 1;
    v32 = v42;
    v33 = v58;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v43 + 8))(v32, v45);
    return (*(v57 + 8))(v27, v33);
  }

  v30 = v58;
  if (v29 == 255)
  {
    LOBYTE(v59) = 0;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v39 + 8))(v22, v41);
  }

  else
  {
    LOBYTE(v59) = 3;
    v35 = v54;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v59 = v38;
    v60 = v37;
    v61 = v29 & 1;
    lazy protocol witness table accessor for type ActionEntityResolution and conformance ActionEntityResolution();
    v36 = v56;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v55 + 8))(v35, v36);
  }

  return (*(v57 + 8))(v27, v30);
}

uint64_t FromToByAction.TransformMode.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, uint64_t a5@<X3>)
{
  v76 = a4;
  v8 = type metadata accessor for FromToByAction.TransformMode.RelativeCodingKeys(255, a2, a3, a5);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for FromToByAction<A>.TransformMode.RelativeCodingKeys, v8);
  v75 = v8;
  v59 = type metadata accessor for KeyedDecodingContainer();
  v66 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v71 = &v55 - v9;
  v11 = type metadata accessor for FromToByAction.TransformMode.SceneCodingKeys(255, a2, a3, v10);
  v72 = swift_getWitnessTable(protocol conformance descriptor for FromToByAction<A>.TransformMode.SceneCodingKeys, v11);
  v73 = v11;
  v65 = type metadata accessor for KeyedDecodingContainer();
  v64 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v78 = &v55 - v12;
  v14 = type metadata accessor for FromToByAction.TransformMode.LocalCodingKeys(255, a2, a3, v13);
  v69 = swift_getWitnessTable(protocol conformance descriptor for FromToByAction<A>.TransformMode.LocalCodingKeys, v14);
  v70 = v14;
  v63 = type metadata accessor for KeyedDecodingContainer();
  v62 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v68 = &v55 - v15;
  v17 = type metadata accessor for FromToByAction.TransformMode.ParentCodingKeys(255, a2, a3, v16);
  v67 = swift_getWitnessTable(protocol conformance descriptor for FromToByAction<A>.TransformMode.ParentCodingKeys, v17);
  v61 = type metadata accessor for KeyedDecodingContainer();
  v60 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v19 = &v55 - v18;
  v21 = type metadata accessor for FromToByAction.TransformMode.CodingKeys(255, a2, a3, v20);
  swift_getWitnessTable(protocol conformance descriptor for FromToByAction<A>.TransformMode.CodingKeys, v21);
  v77 = type metadata accessor for KeyedDecodingContainer();
  v79 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77);
  v23 = &v55 - v22;
  v24 = a1[3];
  v85 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v24);
  v25 = v80;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v25)
  {
    v56 = v19;
    v57 = v17;
    v26 = v78;
    v80 = a2;
    v58 = 0;
    v27 = v77;
    v28 = v23;
    *&v81 = KeyedDecodingContainer.allKeys.getter();
    v29 = type metadata accessor for Array();
    swift_getWitnessTable(MEMORY[0x1E69E6328], v29);
    *&v83 = ArraySlice.init<A>(_:)();
    *(&v83 + 1) = v30;
    *&v84 = v31;
    *(&v84 + 1) = v32;
    v33 = type metadata accessor for ArraySlice();
    swift_getWitnessTable(MEMORY[0x1E69E6978], v33);
    Collection<>.popFirst()();
    v34 = v81;
    v35 = v27;
    if (v81 == 4 || (v55 = v83, v81 = v83, v82 = v84, (Collection.isEmpty.getter() & 1) == 0))
    {
      v41 = type metadata accessor for DecodingError();
      swift_allocError();
      v43 = v42;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR);
      *v43 = type metadata accessor for FromToByAction.TransformMode(0, v80, a3, v44);
      KeyedDecodingContainer.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v41 - 8) + 104))(v43, *MEMORY[0x1E69E6AF8], v41);
      swift_willThrow();
      (*(v79 + 8))(v28, v35);
    }

    else
    {
      if (v34 > 1)
      {
        v46 = v28;
        if (v34 != 2)
        {
          LOBYTE(v81) = 3;
          v51 = v71;
          v52 = v58;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          v40 = v76;
          v53 = v79;
          if (!v52)
          {
            lazy protocol witness table accessor for type ActionEntityResolution and conformance ActionEntityResolution();
            v54 = v59;
            KeyedDecodingContainer.decode<A>(_:forKey:)();
            (*(v66 + 8))(v51, v54);
            (*(v53 + 8))(v46, v27);
            swift_unknownObjectRelease();
            v38 = v81;
            v39 = v82;
            goto LABEL_21;
          }

          (*(v79 + 8))(v28, v27);
          goto LABEL_9;
        }

        LOBYTE(v81) = 2;
        v47 = v58;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v40 = v76;
        v48 = v79;
        if (!v47)
        {
          (*(v64 + 8))(v26, v65);
          (*(v48 + 8))(v28, v35);
          swift_unknownObjectRelease();
          v38 = 0uLL;
          v39 = -3;
          goto LABEL_21;
        }
      }

      else if (v34)
      {
        LOBYTE(v81) = 1;
        v49 = v68;
        v50 = v58;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        if (!v50)
        {
          (*(v62 + 8))(v49, v63);
          (*(v79 + 8))(v28, v35);
          swift_unknownObjectRelease();
          v38 = 0uLL;
          v39 = -2;
          v40 = v76;
          goto LABEL_21;
        }
      }

      else
      {
        LOBYTE(v81) = 0;
        v36 = v56;
        v37 = v58;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        if (!v37)
        {
          (*(v60 + 8))(v36, v61);
          (*(v79 + 8))(v28, v35);
          swift_unknownObjectRelease();
          v38 = 0uLL;
          v39 = -1;
          v40 = v76;
LABEL_21:
          *v40 = v38;
          *(v40 + 16) = v39;
          return __swift_destroy_boxed_opaque_existential_1(v85);
        }
      }

      (*(v79 + 8))(v28, v35);
    }

LABEL_9:
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(v85);
}

uint64_t FromToByAction.init(from:to:timing:isAdditive:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, unsigned int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v27 = a6;
  v26 = a4;
  v25 = a1;
  v11 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v24 - v16;
  v19 = *a3;
  v18 = a3[1];
  v20 = *(a3 + 4);
  LOBYTE(a3) = *(a3 + 20);
  v21 = *(a5 - 8);
  (*(v21 + 32))(&v24 - v16, a2, a5, v15);
  v22 = *(v21 + 56);
  v22(v17, 0, 1, a5);
  v22(v13, 1, 1, a5);
  v31[0] = 0;
  v31[1] = 0;
  v32 = -3;
  v28[0] = v19;
  v28[1] = v18;
  v29 = v20;
  v30 = a3;
  return FromToByAction.init(from:to:by:internalMode:timing:isAdditive:)(v25, v17, v13, v31, v28, v26, a5, v27, a7);
}

uint64_t FromToByAction.init(from:to:by:internalMode:timing:isAdditive:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v15 = *a4;
  v16 = a4[1];
  v27 = a5[1];
  v28 = *a5;
  v26 = *(a5 + 4);
  v24 = *(a4 + 16);
  v25 = *(a5 + 20);
  v17 = type metadata accessor for FromToByAction(0, a7, a8, a4);
  *(a9 + v17[14]) = 1;
  v18 = (a9 + v17[15]);
  *v18 = a7;
  v18[1] = a8;
  v19 = type metadata accessor for Optional();
  v20 = *(*(v19 - 8) + 32);
  v20(a9, a1, v19);
  v20(a9 + v17[9], a2, v19);
  result = (v20)(a9 + v17[10], a3, v19);
  v22 = a9 + v17[12];
  *v22 = v15;
  *(v22 + 8) = v16;
  *(v22 + 16) = v24;
  v23 = a9 + v17[11];
  *v23 = v28;
  *(v23 + 8) = v27;
  *(v23 + 16) = v26;
  *(v23 + 20) = v25;
  *(a9 + v17[13]) = a6;
  return result;
}

uint64_t FromToByAction.init(from:by:timing:isAdditive:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v27 = a6;
  v26 = a4;
  v23 = a2;
  v24 = a7;
  v25 = a1;
  v9 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v22 - v14;
  v17 = *a3;
  v16 = *(a3 + 8);
  v18 = *(a3 + 16);
  LOBYTE(a3) = *(a3 + 20);
  v19 = *(a5 - 8);
  v20 = *(v19 + 56);
  v20(&v22 - v14, 1, 1, a5, v13);
  (*(v19 + 32))(v11, v23, a5);
  (v20)(v11, 0, 1, a5);
  v31[0] = 0;
  v31[1] = 0;
  v32 = -3;
  v28[0] = v17;
  v28[1] = v16;
  v29 = v18;
  v30 = a3;
  return FromToByAction.init(from:to:by:internalMode:timing:isAdditive:)(v25, v15, v11, v31, v28, v26, a5, v27, v24);
}

uint64_t FromToByAction.init(from:timing:isAdditive:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v28 = a5;
  v27 = a3;
  v26 = a6;
  v9 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v25 - v13;
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v25 - v17;
  v20 = *a2;
  v19 = *(a2 + 8);
  v21 = *(a2 + 16);
  LOBYTE(a2) = *(a2 + 20);
  v22 = *(a4 - 8);
  (*(v22 + 32))(&v25 - v17, a1, a4, v16);
  v23 = *(v22 + 56);
  v23(v18, 0, 1, a4);
  v23(v14, 1, 1, a4);
  v23(v11, 1, 1, a4);
  v32[0] = 0;
  v32[1] = 0;
  v33 = -3;
  v29[0] = v20;
  v29[1] = v19;
  v30 = v21;
  v31 = a2;
  return FromToByAction.init(from:to:by:internalMode:timing:isAdditive:)(v18, v14, v11, v32, v29, v27, a4, v28, v26);
}

uint64_t FromToByAction.init(to:by:timing:isAdditive:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v32 = a6;
  v31 = a4;
  v28 = a1;
  v29 = a2;
  v30 = a7;
  v9 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v25 - v13;
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v25 - v17;
  v19 = *a3;
  v26 = *(a3 + 8);
  v27 = v19;
  v20 = *(a3 + 16);
  LOBYTE(a3) = *(a3 + 20);
  v21 = *(a5 - 8);
  v22 = *(v21 + 56);
  v22(&v25 - v17, 1, 1, a5, v16);
  v23 = *(v21 + 32);
  v23(v14, v28, a5);
  (v22)(v14, 0, 1, a5);
  v23(v11, v29, a5);
  (v22)(v11, 0, 1, a5);
  v36[0] = 0;
  v36[1] = 0;
  v37 = -3;
  v33[0] = v27;
  v33[1] = v26;
  v34 = v20;
  v35 = a3;
  return FromToByAction.init(from:to:by:internalMode:timing:isAdditive:)(v18, v14, v11, v36, v33, v31, a5, v32, v30);
}

void FromToByAction.init(from:)(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v45 = a4;
  v49 = type metadata accessor for Optional();
  v47 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v46 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v48 = &v43 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v51 = (&v43 - v11);
  v13 = type metadata accessor for FromToByAction.CodingKeys(255, a2, a3, v12);
  swift_getWitnessTable(protocol conformance descriptor for FromToByAction<A>.CodingKeys, v13);
  v53 = type metadata accessor for KeyedDecodingContainer();
  v50 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v15 = &v43 - v14;
  v17 = type metadata accessor for FromToByAction(0, a2, a3, v16);
  v44 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v43 - v18;
  *(&v43 + *(v20 + 56) - v18) = 1;
  v21 = (&v43 + *(v20 + 60) - v18);
  *v21 = a2;
  v21[1] = a3;
  v52 = a3;
  v22 = a1[3];
  v56 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v22);
  v54 = v15;
  v23 = v55;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v23)
  {
    __swift_destroy_boxed_opaque_existential_1(v56);
  }

  else
  {
    v26 = v50;
    v25 = v51;
    v27 = type metadata accessor for FromToByAction.TransformMode(0, a2, v52, v24);
    v60 = 3;
    swift_getWitnessTable(protocol conformance descriptor for FromToByAction<A>.TransformMode, v27);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v28 = a2;
    v29 = v52;
    v30 = v58;
    v31 = &v19[*(v17 + 48)];
    *v31 = v57;
    v31[16] = v30;
    v60 = 4;
    lazy protocol witness table accessor for type AnimationTimingFunction and conformance AnimationTimingFunction();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v32 = v58;
    v33 = v59;
    v34 = &v19[*(v17 + 44)];
    *v34 = v57;
    *(v34 + 4) = v32;
    v34[20] = v33;
    v55 = v19;
    static FromToByAction.decodeValueIfPresent(from:forKey:)(v54, 0, a2, v29, v25);
    v43 = v17;
    v35 = v49;
    v51 = *(v47 + 32);
    v51(v55, v25, v49);
    v36 = v48;
    static FromToByAction.decodeValueIfPresent(from:forKey:)(v54, 1, v28, v29, v48);
    v37 = v55;
    v51(&v55[v43[9]], v36, v35);
    v38 = v46;
    v52 = 0;
    static FromToByAction.decodeValueIfPresent(from:forKey:)(v54, 2, v28, v29, v46);
    v51(&v37[v43[10]], v38, v35);
    LOBYTE(v57) = 5;
    v39 = v53;
    v40 = KeyedDecodingContainer.decode(_:forKey:)();
    (*(v26 + 8))(v54, v39);
    v42 = v43;
    v41 = v44;
    v37[v43[13]] = v40 & 1;
    (*(v41 + 16))(v45, v37, v42);
    __swift_destroy_boxed_opaque_existential_1(v56);
    (*(v41 + 8))(v37, v42);
  }
}

uint64_t FromToByAction.encode(to:)(void *a1, uint64_t a2)
{
  v66 = a2;
  v3 = *(a2 + 16);
  v5 = type metadata accessor for Optional();
  v6 = *(v5 - 8);
  v60 = v5;
  v61 = v6;
  MEMORY[0x1EEE9AC00](v5);
  v56 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v58 = &v49 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v62 = &v49 - v11;
  v59 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v54 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v55 = &v49 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v57 = &v49 - v17;
  v18 = *(a2 + 24);
  v20 = type metadata accessor for FromToByAction.CodingKeys(255, v3, v18, v19);
  swift_getWitnessTable(protocol conformance descriptor for FromToByAction<A>.CodingKeys, v20);
  v21 = type metadata accessor for KeyedEncodingContainer();
  v64 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v49 - v22;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v24 = v65;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v25 = v24 + v66[12];
  v26 = *(v25 + 8);
  v27 = *(v25 + 16);
  *&v67 = *v25;
  *(&v67 + 1) = v26;
  LOBYTE(v68) = v27;
  v70 = 3;
  outlined copy of FromToByAction<A>.TransformMode<A>(v67, v26, v27);
  v29 = type metadata accessor for FromToByAction.TransformMode(0, v3, v18, v28);
  swift_getWitnessTable(protocol conformance descriptor for FromToByAction<A>.TransformMode, v29);
  v30 = v63;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v30)
  {
    v31.n128_f64[0] = outlined consume of FromToByAction<A>.TransformMode<A>(v67, *(&v67 + 1), v68);
    return (*(v64 + 8))(v23, v21, v31);
  }

  else
  {
    v32 = v62;
    v63 = v18;
    v53 = v3;
    outlined consume of FromToByAction<A>.TransformMode<A>(v67, *(&v67 + 1), v68);
    v33 = (v24 + v66[11]);
    v34 = *(v33 + 4);
    v35 = *(v33 + 20);
    v67 = *v33;
    v68 = v34;
    v69 = v35;
    v70 = 4;
    lazy protocol witness table accessor for type AnimationTimingFunction and conformance AnimationTimingFunction();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v52 = v23;
    v49 = v21;
    v38 = v60;
    v37 = v61;
    v51 = *(v61 + 16);
    v51(v32, v24, v60);
    v39 = v59;
    v40 = v53;
    v50 = *(v59 + 48);
    if (v50(v32, 1, v53) == 1)
    {
      (*(v37 + 8))(v32, v38);
    }

    else
    {
      v41 = v57;
      (*(v39 + 32))(v57, v32, v40);
      static FromToByAction.encodeValue(_:to:forKey:)(v41, v52, 0, v40, v63);
      (*(v39 + 8))(v41, v40);
      v38 = v60;
      v37 = v61;
    }

    v42 = v58;
    v51(v58, v65 + v66[9], v38);
    if (v50(v42, 1, v40) == 1)
    {
      (*(v37 + 8))(v42, v38);
    }

    else
    {
      v43 = v55;
      (*(v39 + 32))(v55, v42, v40);
      static FromToByAction.encodeValue(_:to:forKey:)(v43, v52, 1, v40, v63);
      (*(v39 + 8))(v43, v40);
      v37 = v61;
    }

    v44 = v56;
    v51(v56, v65 + v66[10], v38);
    if (v50(v44, 1, v40) == 1)
    {
      (*(v37 + 8))(v44, v38);
      v45 = v49;
      v46 = v52;
    }

    else
    {
      v47 = v54;
      (*(v39 + 32))(v54, v44, v40);
      v46 = v52;
      static FromToByAction.encodeValue(_:to:forKey:)(v47, v52, 2, v40, v63);
      v45 = v49;
      (*(v39 + 8))(v47, v40);
    }

    LOBYTE(v67) = 5;
    KeyedEncodingContainer.encode(_:forKey:)();
    return (*(v64 + 8))(v46, v45, v48);
  }
}

uint64_t FromToByAction<>.mode.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 216);
  v3 = *(v1 + 224);
  *a1 = v2;
  *(a1 + 8) = v3;
  v4 = *(v1 + 232);
  *(a1 + 16) = v4;
  return outlined copy of FromToByAction<A>.TransformMode<A>(v2, v3, v4);
}

__n128 FromToByAction<>.init(from:to:mode:timing:isAdditive:)@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>, __n128 a6@<Q0>, __n128 a7@<Q1>, __n128 a8@<Q2>)
{
  v8 = a2[1].n128_u8[0];
  v9 = *(a3 + 16);
  v10 = *(a3 + 20);
  v12 = *(a1 + 16);
  v13 = *(a1 + 32);
  LOBYTE(v14) = *(a1 + 48);
  *a5 = *a1;
  *(a5 + 16) = v12;
  *(a5 + 32) = v13;
  *(a5 + 48) = v14;
  *(a5 + 64) = a6;
  *(a5 + 80) = a7;
  *(a5 + 96) = a8;
  *(a5 + 112) = 0;
  *(a5 + 128) = 0u;
  *(a5 + 144) = 0u;
  *(a5 + 160) = 0u;
  *(a5 + 176) = 1;
  *(a5 + 192) = *a3;
  *(a5 + 208) = v9;
  *(a5 + 212) = v10;
  result = *a2;
  *(a5 + 216) = *a2;
  *(a5 + 232) = v8;
  *(a5 + 233) = a4;
  *(a5 + 234) = 1;
  *(a5 + 240) = &type metadata for Transform;
  *(a5 + 248) = &protocol witness table for Transform;
  return result;
}

__n128 FromToByAction<>.init(from:by:mode:timing:isAdditive:)@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>, __n128 a6@<Q0>, __n128 a7@<Q1>, __n128 a8@<Q2>)
{
  *&v12[15] = *a1;
  v8 = a2[1].n128_u8[0];
  v9 = *(a3 + 16);
  v10 = *(a3 + 20);
  *&v12[31] = *(a1 + 16);
  *&v12[47] = *(a1 + 32);
  v12[63] = *(a1 + 48);
  *a5 = a6;
  *(a5 + 16) = a7;
  *(a5 + 32) = a8;
  *(a5 + 48) = 0;
  *(a5 + 64) = 0u;
  *(a5 + 80) = 0u;
  *(a5 + 96) = 0u;
  *(a5 + 112) = 1;
  *(a5 + 113) = *v12;
  *(a5 + 129) = *&v12[16];
  *(a5 + 145) = *&v12[32];
  *(a5 + 161) = *&v12[48];
  *(a5 + 192) = *a3;
  *(a5 + 208) = v9;
  *(a5 + 212) = v10;
  result = *a2;
  *(a5 + 216) = *a2;
  *(a5 + 232) = v8;
  *(a5 + 233) = a4;
  *(a5 + 234) = 1;
  *(a5 + 240) = &type metadata for Transform;
  *(a5 + 248) = &protocol witness table for Transform;
  return result;
}

__n128 FromToByAction<>.init(to:by:mode:timing:isAdditive:)@<Q0>(__n128 *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>, __n128 a5@<Q0>, __n128 a6@<Q1>, __n128 a7@<Q2>, __n128 a8@<Q3>, __n128 a9@<Q4>, __n128 a10@<Q5>)
{
  v10 = a1[1].n128_u8[0];
  v11 = *(a2 + 16);
  v12 = *(a2 + 20);
  *(a4 + 16) = 0u;
  *(a4 + 32) = 0u;
  *a4 = 0u;
  *(a4 + 48) = 1;
  *(a4 + 64) = a5;
  *(a4 + 80) = a6;
  *(a4 + 96) = a7;
  *(a4 + 112) = 0;
  *(a4 + 128) = a8;
  *(a4 + 144) = a9;
  *(a4 + 160) = a10;
  *(a4 + 176) = 0;
  *(a4 + 192) = *a2;
  *(a4 + 208) = v11;
  *(a4 + 212) = v12;
  result = *a1;
  *(a4 + 216) = *a1;
  *(a4 + 232) = v10;
  *(a4 + 233) = a3;
  *(a4 + 234) = 1;
  *(a4 + 240) = &type metadata for Transform;
  *(a4 + 248) = &protocol witness table for Transform;
  return result;
}

__n128 FromToByAction<>.init(by:timing:isAdditive:)@<Q0>(__n128 *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>, __n128 a4@<Q0>, __n128 a5@<Q1>, __n128 a6@<Q2>)
{
  v6 = a1[1].n128_u32[0];
  v7 = a1[1].n128_u8[4];
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *a3 = 0u;
  *(a3 + 48) = 1;
  *(a3 + 64) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 96) = 0u;
  *(a3 + 112) = 1;
  *(a3 + 128) = a4;
  *(a3 + 144) = a5;
  *(a3 + 160) = a6;
  *(a3 + 176) = 0;
  result = *a1;
  *(a3 + 192) = *a1;
  *(a3 + 208) = v6;
  *(a3 + 212) = v7;
  *(a3 + 216) = 0;
  *(a3 + 224) = 0;
  *(a3 + 232) = -3;
  *(a3 + 233) = a2;
  *(a3 + 234) = 1;
  *(a3 + 240) = &type metadata for Transform;
  *(a3 + 248) = &protocol witness table for Transform;
  return result;
}

uint64_t FromToByActionHandler.actionUpdated(event:)(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a2 + 16);
  v5 = type metadata accessor for Optional();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v32 - v10;
  v12 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v32 - v17;
  v20 = type metadata accessor for FromToByAction(255, v4, *(v2 + 24), v19);
  result = type metadata accessor for ActionEvent(0, v20, &protocol witness table for FromToByAction<A>, v21);
  v23 = a1 + *(result + 76);
  if ((*(v23 + 8) & 1) == 0)
  {
    v35 = result;
    v24 = *v23;
    v25 = fmin(fabs(*v23 + -1.0), *v23);
    v34 = v25 <= 0.0001;
    if (v25 <= 0.0001)
    {
      v33 = v2;
      v26 = v36;
      (*(v6 + 16))(v11, v36, v5);
      if ((*(v12 + 48))(v11, 1, v4) == 1)
      {
        (*(v6 + 8))(v11, v5);
      }

      else
      {
        (*(v12 + 32))(v18, v11, v4);
        if (vabdd_f64(*(v26 + *(v33 + 36)), v24) <= 0.0001)
        {
          ActionEvent.animationState.getter(v35, v37);
          v30 = v38;
          if (v38)
          {
            v31 = v39;
            __swift_project_boxed_opaque_existential_1(v37, v38);
            (*(v31 + 64))(v18, v4, v30, v31);
            (*(v12 + 8))(v18, v4);
            result = __swift_destroy_boxed_opaque_existential_1(v37);
          }

          else
          {
            (*(v12 + 8))(v18, v4);
            result = outlined destroy of BodyTrackingComponent?(v37, &_s17RealityFoundation22AnimationStateProtocol_pSgMd, &_s17RealityFoundation22AnimationStateProtocol_pSgMR);
          }

          v29 = v36;
          v2 = v33;
          goto LABEL_19;
        }

        (*(v12 + 8))(v18, v4);
      }

      v2 = v33;
    }

    FromToByActionHandler.evaluateResult(_:)(a1, v2, v8);
    if ((*(v12 + 48))(v8, 1, v4) == 1)
    {
      return (*(v6 + 8))(v8, v5);
    }

    v33 = *(v12 + 32);
    (v33)(v15, v8, v4);
    ActionEvent.animationState.getter(v35, v37);
    v27 = v38;
    if (v38)
    {
      v28 = v39;
      __swift_project_boxed_opaque_existential_1(v37, v38);
      (*(v28 + 64))(v15, v4, v27, v28);
      __swift_destroy_boxed_opaque_existential_1(v37);
      if (v34)
      {
LABEL_12:
        v29 = v36;
        (*(v6 + 8))(v36, v5);
        (v33)(v29, v15, v4);
        result = (*(v12 + 56))(v29, 0, 1, v4);
LABEL_19:
        *(v29 + *(v2 + 36)) = v24;
        return result;
      }
    }

    else
    {
      outlined destroy of BodyTrackingComponent?(v37, &_s17RealityFoundation22AnimationStateProtocol_pSgMd, &_s17RealityFoundation22AnimationStateProtocol_pSgMR);
      if (v34)
      {
        goto LABEL_12;
      }
    }

    (*(v12 + 8))(v15, v4);
    v29 = v36;
    (*(v6 + 8))(v36, v5);
    result = (*(v12 + 56))(v29, 1, 1, v4);
    goto LABEL_19;
  }

  return result;
}

uint64_t FromToByActionHandler.evaluateResult(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v96 = a3;
  v5 = *(a2 + 16);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v87 = type metadata accessor for Optional();
  v86 = *(v87 - 8);
  MEMORY[0x1EEE9AC00](v87);
  v93 = &v74 - v7;
  v8 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v85 = &v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v74 - v12;
  v14 = type metadata accessor for Optional();
  v88 = *(v14 - 8);
  v89 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v74 - v15;
  v17 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v74 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v94 = &v74 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v95 = &v74 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v74 - v26;
  v91 = a2;
  v28 = *(a2 + 24);
  v90 = type metadata accessor for FromToByAction(255, v5, v28, v29);
  v31 = type metadata accessor for ActionEvent(0, v90, &protocol witness table for FromToByAction<A>, v30);
  v32 = a1 + *(v31 + 76);
  if (*(v32 + 8) == 1)
  {
    return (*(v17 + 56))(v96, 1, 1, v5);
  }

  v79 = v20;
  v84 = v8;
  v34 = *v32;
  v77 = v31;
  ActionEvent.animationState.getter(v31, v97);
  v35 = v98;
  v81 = v13;
  v83 = a1;
  v78 = v28;
  if (v98)
  {
    v82 = v27;
    v80 = TupleTypeMetadata2;
    v36 = v99;
    __swift_project_boxed_opaque_existential_1(v97, v98);
    v75 = *(v36 + 24);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v38 = type metadata accessor for Optional();
    v76 = &v74;
    v74 = v38;
    v39 = *(v38 - 8);
    v40 = MEMORY[0x1EEE9AC00](v38);
    v42 = &v74 - v41;
    v75(v35, v36, v40);
    v43 = *(AssociatedTypeWitness - 8);
    if ((*(v43 + 48))(v42, 1, AssociatedTypeWitness) == 1)
    {
      (*(v39 + 8))(v42, v74);
      AssociatedConformanceWitness = 0;
      v100 = 0u;
      v101 = 0u;
    }

    else
    {
      *(&v101 + 1) = AssociatedTypeWitness;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v100);
      (*(v43 + 32))(boxed_opaque_existential_1, v42, AssociatedTypeWitness);
    }

    __swift_destroy_boxed_opaque_existential_1(v97);
    v44 = v96;
    TupleTypeMetadata2 = v80;
    v27 = v82;
  }

  else
  {
    outlined destroy of BodyTrackingComponent?(v97, &_s17RealityFoundation22AnimationStateProtocol_pSgMd, &_s17RealityFoundation22AnimationStateProtocol_pSgMR);
    v100 = 0u;
    v101 = 0u;
    AssociatedConformanceWitness = 0;
    v44 = v96;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14AnimatableData_pSgMd, &_s17RealityFoundation14AnimatableData_pSgMR);
  v46 = swift_dynamicCast();
  v47 = *(v17 + 56);
  if (v46)
  {
    v47(v16, 0, 1, v5);
    v48 = *(v17 + 32);
    (v48)(v27, v16, v5);
    v49 = v93;
    FromToByActionHandler.getStartEnd(event:base:)(v83, v27, v91, v93);
    v50 = v84;
    if ((*(v84 + 48))(v49, 1, TupleTypeMetadata2) == 1)
    {
      (*(v17 + 8))(v27, v5);
      (*(v86 + 8))(v49, v87);
      v51 = v96;
      v52 = 1;
    }

    else
    {
      v92 = v17;
      v82 = v27;
      v53 = v49;
      v54 = v81;
      (*(v50 + 32))(v81, v53, TupleTypeMetadata2);
      v55 = v85;
      (*(v50 + 16))(v85, v54, TupleTypeMetadata2);
      v56 = *(TupleTypeMetadata2 + 48);
      (v48)(v95, v55, v5);
      (v48)(v94, &v55[v56], v5);
      v57 = v83 + *(v77 + 36);
      v58 = (v57 + *(v90 + 44));
      v59 = *(v58 + 4);
      v60 = *(v58 + 20);
      v61 = v34;
      v100 = *v58;
      LODWORD(v101) = v59;
      BYTE4(v101) = v60;
      AnimationTimingFunction.coreEasingFunction.getter();
      v63 = *(v62 + 16);
      v88 = v48;
      v89 = v17 + 32;
      if (v63)
      {
        REEasingFunctionEvaluateEx();
        v61 = v64;
      }

      v65 = v79;

      v66 = v78;
      v67 = v65;
      v69 = v94;
      v68 = v95;
      (*(v78 + 40))(v94, v5, v78, v61);
      if (*(v57 + *(v90 + 52)) == 1)
      {
        v70 = v82;
        (*(v66 + 32))(v65, v5, v66);
        v71 = *(v92 + 8);
        v71(v67, v5);
        v71(v69, v5);
        v71(v68, v5);
        (*(v84 + 8))(v81, TupleTypeMetadata2);
        v71(v70, v5);
        v51 = v96;
      }

      else
      {
        v72 = *(v92 + 8);
        v72(v69, v5);
        v72(v68, v5);
        (*(v84 + 8))(v81, TupleTypeMetadata2);
        v72(v82, v5);
        v73 = v96;
        (v88)(v96, v67, v5);
        v51 = v73;
      }

      v52 = 0;
    }

    return v47(v51, v52, 1, v5);
  }

  else
  {
    v47(v16, 1, 1, v5);
    v88[1](v16, v89);
    return v47(v44, 1, 1, v5);
  }
}

uint64_t FromToByActionHandler.getStartEnd(event:base:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v130 = a4;
  v127 = a2;
  v5 = *(a3 + 16);
  v7 = type metadata accessor for Optional();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v112 = &v109 - v8;
  v135 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v111 = &v109 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v126 = &v109 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v109 = &v109 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v116 = &v109 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v137 = &v109 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v122 = &v109 - v20;
  v128 = a3;
  v21 = *(a3 + 24);
  v133 = v5;
  v114 = v21;
  v23 = type metadata accessor for FromToByAction(255, v5, v21, v22);
  v25 = type metadata accessor for ActionEvent(0, v23, &protocol witness table for FromToByAction<A>, v24);
  v117 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v118 = &v109 - v26;
  v27 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v109 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v125 = &v109 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v124 = &v109 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v110 = &v109 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v115 = &v109 - v39;
  MEMORY[0x1EEE9AC00](v40);
  v123 = &v109 - v41;
  MEMORY[0x1EEE9AC00](v42);
  v44 = &v109 - v43;
  MEMORY[0x1EEE9AC00](v45);
  v47 = &v109 - v46;
  v49 = MEMORY[0x1EEE9AC00](v48);
  v119 = v50;
  v120 = a1;
  v51 = a1 + *(v50 + 36);
  v131 = v31;
  v52 = v31[2];
  v134 = &v109 - v53;
  v52(&v109 - v53, v51, v7, v49);
  v54 = v51 + *(v23 + 36);
  v136 = v47;
  (v52)(v47, v54, v7);
  v55 = v51 + *(v23 + 40);
  v132 = v44;
  v56 = v7;
  v57 = v31 + 2;
  v138 = v56;
  (v52)(v44, v55);
  (*(v27 + 16))(v30, v129, v128);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation21FromToByActionHandlerVy0A3Kit9TransformVGMd, &_s17RealityFoundation21FromToByActionHandlerVy0A3Kit9TransformVGMR);
  v58 = swift_dynamicCast();
  v129 = v52;
  if (v58)
  {
    (*(v117 + 16))(v118, v120, v119);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation11ActionEventVyAA08FromToByC0Vy0A3Kit9TransformVGGMd, &_s17RealityFoundation11ActionEventVyAA08FromToByC0Vy0A3Kit9TransformVGGMR);
    swift_dynamicCast();
    memcpy(v142, v143, sizeof(v142));
    v59 = v135;
    (*(v135 + 16))(v122, v127, v133);
    swift_dynamicCast();
    specialized FromToByActionHandler<>.getFromTo(event:base:)(v142, v145, v139, v140, v141);
    memcpy(v144, v142, 0x1D0uLL);
    outlined destroy of BodyTrackingComponent?(v144, &_s17RealityFoundation11ActionEventVyAA08FromToByC0Vy0A3Kit9TransformVGGMd, &_s17RealityFoundation11ActionEventVyAA08FromToByC0Vy0A3Kit9TransformVGGMR);
    v60 = v131;
    v61 = v131[1];
    v62 = v136;
    v63 = v138;
    v61(v136, v138);
    v64 = v134;
    v61(v134, v63);
    if (v151)
    {
      v61(v132, v138);
      v65 = swift_getTupleTypeMetadata2();
      return (*(*(v65 - 8) + 56))(v130, 1, 1, v65);
    }

    v143[0] = v145[0];
    v143[1] = v145[1];
    v143[2] = v145[2];
    LOBYTE(v143[3]) = v146 & 1;
    v143[4] = v147;
    v143[5] = v148;
    v143[6] = v149;
    LOBYTE(v143[7]) = v150 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9TransformVSg4from_AD2totMd, &_s10RealityKit9TransformVSg4from_AD2totMR);
    v67 = v57;
    v69 = v112;
    v68 = TupleTypeMetadata2;
    swift_dynamicCast();
    v128 = *(v68 + 48);
    v70 = v62;
    v71 = v60[4];
    v72 = v138;
    v71(v64, v69, v138);
    v73 = &v69[v128];
    v57 = v67;
    v71(v70, v73, v72);
    v52 = v129;
  }

  else
  {
    v64 = v134;
    v59 = v135;
    v60 = v131;
  }

  v74 = v123;
  (v52)(v123, v64, v138);
  v75 = *(v59 + 48);
  v76 = v133;
  v77 = v75(v74, 1, v133) == 1;
  v121 = v57;
  v128 = v59 + 48;
  if (v77)
  {
    v123 = v60[1];
    (v123)(v74, v138);
    v78 = v115;
    (v52)();
    if (v75(v78, 1, v76) == 1)
    {
      v81 = v75;
    }

    else
    {
      v82 = *(v59 + 32);
      v82(v116, v78, v76);
      v78 = v110;
      (v52)(v110, v132, v138);
      v81 = v75;
      if (v75(v78, 1, v76) != 1)
      {
        v83 = v109;
        v82(v109, v78, v76);
        v84 = v114;
        v85 = v122;
        (*(v114 + 16))(v76, v114);
        v86 = v116;
        (*(v84 + 24))(v85, v76, v84);
        v87 = *(v135 + 8);
        v87(v85, v76);
        v87(v83, v76);
        v87(v86, v76);
        v60 = v131;
        goto LABEL_14;
      }

      v59 = v135;
      (*(v135 + 8))(v116, v76);
      v60 = v131;
    }

    (v123)(v78, v138);
    (*(v59 + 16))(v137, v127, v76);
LABEL_14:
    v80 = v124;
    v79 = v125;
    goto LABEL_15;
  }

  (*(v59 + 32))(v137, v74, v76);
  v80 = v124;
  v79 = v125;
  v81 = v75;
LABEL_15:
  v88 = v136;
  v89 = v129;
  (v129)(v80, v136, v138);
  v90 = v81(v80, 1, v76);
  v91 = v81;
  v92 = v60[1];
  if (v90 == 1)
  {
    v93 = v80;
    v94 = v138;
    v131 = v91;
    v92(v93, v138);
    v95 = v132;
    v89(v79, v132, v94);
    if ((v131)(v79, 1, v76) == 1)
    {
      v96 = v79;
      v97 = v138;
      v92(v95, v138);
      v92(v136, v97);
      v92(v134, v97);
      v92(v96, v97);
      v98 = v135;
      v99 = v126;
      (*(v135 + 16))(v126, v127, v76);
      v100 = *(v98 + 32);
    }

    else
    {
      v102 = v135;
      v100 = *(v135 + 32);
      v103 = v111;
      v100(v111, v79, v76);
      v104 = v126;
      (*(v114 + 24))(v103, v76);
      (*(v102 + 8))(v103, v76);
      v105 = v138;
      v92(v132, v138);
      v92(v136, v105);
      v92(v134, v105);
      v99 = v104;
    }
  }

  else
  {
    v101 = v138;
    v92(v132, v138);
    v92(v88, v101);
    v92(v134, v101);
    v100 = *(v135 + 32);
    v99 = v126;
    v100(v126, v80, v76);
  }

  v106 = swift_getTupleTypeMetadata2();
  v107 = *(v106 + 48);
  v108 = v130;
  v100(v130, v137, v76);
  v100(&v108[v107], v99, v76);
  return (*(*(v106 - 8) + 56))(v108, 0, 1, v106);
}

unint64_t FromToByAction.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of FromToByAction.CodingKeys.init(rawValue:), v2);

  if (v3 >= 6)
  {
    return 6;
  }

  else
  {
    return v3;
  }
}

uint64_t FromToByAction.CodingKeys.rawValue.getter(unsigned __int8 a1)
{
  v1 = 1836020326;
  v2 = 0x726F66736E617274;
  v3 = 0x7546676E696D6974;
  if (a1 != 4)
  {
    v3 = 0x6974696464417369;
  }

  if (a1 != 3)
  {
    v2 = v3;
  }

  v4 = 28532;
  if (a1 != 1)
  {
    v4 = 31074;
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

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance FromToByAction<A>.CodingKeys(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for FromToByAction<A>.CodingKeys, a3);
  v7 = MEMORY[0x1E69E6180];

  return MEMORY[0x1EEE6B350](a1, a2, a3, WitnessTable, v7);
}

uint64_t protocol witness for Hashable.hashValue.getter in conformance FromToByAction<A>.CodingKeys(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for FromToByAction<A>.CodingKeys, a1);
  v5 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69348](a1, a2, WitnessTable, v5);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance FromToByAction<A>.CodingKeys(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for FromToByAction<A>.CodingKeys);
  v7 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69358](a1, a2, a3, WitnessTable, v7);
}

uint64_t protocol witness for Hashable._rawHashValue(seed:) in conformance FromToByAction<A>.CodingKeys(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for FromToByAction<A>.CodingKeys);
  v7 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69350](a1, a2, a3, WitnessTable, v7);
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance FromToByAction<A>.CodingKeys@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = FromToByAction.CodingKeys.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance FromToByAction<A>.CodingKeys@<X0>(uint64_t *a1@<X8>)
{
  result = FromToByAction.CodingKeys.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t protocol witness for CodingKey.init(stringValue:) in conformance FromToByAction<A>.CodingKeys@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = FromToByAction.CodingKeys.init(stringValue:)(a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance FromToByAction<A>.CodingKeys@<X0>(_BYTE *a2@<X8>)
{
  result = specialized FromToByAction.CodingKeys.init(intValue:)();
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance FromToByAction<A>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for FromToByAction<A>.CodingKeys, a1);

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance FromToByAction<A>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for FromToByAction<A>.CodingKeys, a1);

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

Swift::Int FromToByAction.DecodingErrors.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x1C68F4C10](0);
  return Hasher._finalize()();
}

void static FromToByAction.decodeValueIfPresent(from:forKey:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = a2;
  v12 = type metadata accessor for FromToByAction.CodingKeys(255, a3, a4, a4);
  swift_getWitnessTable(protocol conformance descriptor for FromToByAction<A>.CodingKeys, v12);
  type metadata accessor for KeyedDecodingContainer();
  if (KeyedDecodingContainer.contains(_:)())
  {
    static FromToByAction.decodeValue(from:forKey:)(a1, v9, a3, a4);
    if (v6)
    {
      return;
    }

    v13 = 0;
  }

  else
  {
    v13 = 1;
  }

  (*(*(a3 - 8) + 56))(a5, v13, 1, a3);
}

uint64_t static FromToByAction.encodeValue(_:to:forKey:)(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v71 = a5;
  v70 = a3;
  v73 = a2;
  v7 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v65 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v66 = &v63 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v67 = &v63 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v68 = &v63 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v69 = &v63 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v63 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v63 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v63 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v63 - v27;
  v30 = MEMORY[0x1EEE9AC00](v29);
  v32 = &v63 - v31;
  v72 = v7;
  v33 = *(v7 + 16);
  v33(&v63 - v31, a1, v34, v30);
  if (swift_dynamicCast())
  {
    (v33)(v28, a1, a4);
    swift_dynamicCast();
    LOBYTE(v74) = v70;
    v36 = type metadata accessor for FromToByAction.CodingKeys(255, a4, v71, v35);
    swift_getWitnessTable(protocol conformance descriptor for FromToByAction<A>.CodingKeys, v36);
    type metadata accessor for KeyedEncodingContainer();
    KeyedEncodingContainer.encode(_:forKey:)();
    return (*(v72 + 8))(v32, a4);
  }

  v64 = a1;
  v37 = v70;
  if (swift_dynamicCast())
  {
    (v33)(v25, v64, a4);
    swift_dynamicCast();
    LOBYTE(v74) = v37;
    v39 = type metadata accessor for FromToByAction.CodingKeys(255, a4, v71, v38);
    swift_getWitnessTable(protocol conformance descriptor for FromToByAction<A>.CodingKeys, v39);
    type metadata accessor for KeyedEncodingContainer();
    KeyedEncodingContainer.encode(_:forKey:)();
    return (*(v72 + 8))(v32, a4);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD2VySfGMd, &_ss5SIMD2VySfGMR);
  if (swift_dynamicCast())
  {
    (v33)(v22, v64, a4);
    swift_dynamicCast();
    *&v74 = v77;
    v80 = v37;
    v41 = type metadata accessor for FromToByAction.CodingKeys(255, a4, v71, v40);
    swift_getWitnessTable(protocol conformance descriptor for FromToByAction<A>.CodingKeys, v41);
    type metadata accessor for KeyedEncodingContainer();
    lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type SIMD2<Float> and conformance SIMD2<A>, &_ss5SIMD2VySfGMd, &_ss5SIMD2VySfGMR, MEMORY[0x1E69E7430]);
LABEL_11:
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    return (*(v72 + 8))(v32, a4);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD3VySfGMd, &_ss5SIMD3VySfGMR);
  v42 = v33;
  if (swift_dynamicCast())
  {
    (v33)(v19, v64, a4);
    swift_dynamicCast();
    v74 = v77;
    v80 = v37;
    v44 = type metadata accessor for FromToByAction.CodingKeys(255, a4, v71, v43);
    swift_getWitnessTable(protocol conformance descriptor for FromToByAction<A>.CodingKeys, v44);
    type metadata accessor for KeyedEncodingContainer();
    lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type SIMD3<Float> and conformance SIMD3<A>, &_ss5SIMD3VySfGMd, &_ss5SIMD3VySfGMR, MEMORY[0x1E69E7458]);
    goto LABEL_11;
  }

  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD4VySfGMd, &_ss5SIMD4VySfGMR);
  if (swift_dynamicCast())
  {
    v42(v69, v64, a4);
    swift_dynamicCast();
    v74 = v77;
    v80 = v37;
    v47 = type metadata accessor for FromToByAction.CodingKeys(255, a4, v71, v46);
    swift_getWitnessTable(protocol conformance descriptor for FromToByAction<A>.CodingKeys, v47);
    type metadata accessor for KeyedEncodingContainer();
    lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type SIMD4<Float> and conformance SIMD4<A>, &_ss5SIMD4VySfGMd, &_ss5SIMD4VySfGMR, MEMORY[0x1E69E74B0]);
    goto LABEL_11;
  }

  type metadata accessor for simd_quatf(0);
  v49 = swift_dynamicCast();
  v50 = v71;
  v51 = v64;
  if (v49)
  {
    v69 = v45;
    v42(v68, v64, a4);
    swift_dynamicCast();
    v74 = v77;
    v80 = v37;
    v53 = type metadata accessor for FromToByAction.CodingKeys(255, a4, v50, v52);
    swift_getWitnessTable(protocol conformance descriptor for FromToByAction<A>.CodingKeys, v53);
    type metadata accessor for KeyedEncodingContainer();
    lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type SIMD4<Float> and conformance SIMD4<A>, &_ss5SIMD4VySfGMd, &_ss5SIMD4VySfGMR, MEMORY[0x1E69E74B0]);
    goto LABEL_11;
  }

  v54 = v71;
  if (swift_dynamicCast())
  {
    v42(v67, v51, a4);
    swift_dynamicCast();
    v74 = v77;
    v75 = v78;
    v76 = v79;
    v80 = v37;
    v56 = type metadata accessor for FromToByAction.CodingKeys(255, a4, v54, v55);
    swift_getWitnessTable(protocol conformance descriptor for FromToByAction<A>.CodingKeys, v56);
    type metadata accessor for KeyedEncodingContainer();
    lazy protocol witness table accessor for type Transform and conformance Transform();
    goto LABEL_11;
  }

  if (swift_dynamicCast())
  {

    v42(v66, v51, a4);
    swift_dynamicCast();
    *&v74 = v77;
    v80 = v37;
    v58 = type metadata accessor for FromToByAction.CodingKeys(255, a4, v54, v57);
    swift_getWitnessTable(protocol conformance descriptor for FromToByAction<A>.CodingKeys, v58);
    type metadata accessor for KeyedEncodingContainer();
    lazy protocol witness table accessor for type JointTransforms and conformance JointTransforms();
  }

  else
  {
    if (!swift_dynamicCast())
    {
      v62 = type metadata accessor for FromToByAction.DecodingErrors(0, a4, v54, v59);
      swift_getWitnessTable(protocol conformance descriptor for FromToByAction<A>.DecodingErrors, v62);
      swift_allocError();
      swift_willThrow();
      return (*(v72 + 8))(v32, a4);
    }

    v42(v65, v51, a4);
    swift_dynamicCast();
    *&v74 = v77;
    v80 = v37;
    v61 = type metadata accessor for FromToByAction.CodingKeys(255, a4, v54, v60);
    swift_getWitnessTable(protocol conformance descriptor for FromToByAction<A>.CodingKeys, v61);
    type metadata accessor for KeyedEncodingContainer();
    lazy protocol witness table accessor for type BlendShapeWeights and conformance BlendShapeWeights();
  }

  KeyedEncodingContainer.encode<A>(_:forKey:)();

  return (*(v72 + 8))(v32, a4);
}

void static FromToByAction.decodeValue(from:forKey:)(void x0_0, char a1, uint64_t a2, uint64_t a3)
{
  if (swift_dynamicCastMetatype())
  {
    v8 = type metadata accessor for FromToByAction.CodingKeys(255, a2, a3, v7);
    swift_getWitnessTable(protocol conformance descriptor for FromToByAction<A>.CodingKeys, v8);
    type metadata accessor for KeyedDecodingContainer();
    KeyedDecodingContainer.decode(_:forKey:)();
    if (v4)
    {
      return;
    }

    goto LABEL_6;
  }

  if (swift_dynamicCastMetatype())
  {
    v10 = type metadata accessor for FromToByAction.CodingKeys(255, a2, a3, v9);
    swift_getWitnessTable(protocol conformance descriptor for FromToByAction<A>.CodingKeys, v10);
    type metadata accessor for KeyedDecodingContainer();
    KeyedDecodingContainer.decode(_:forKey:)();
    if (v4)
    {
      return;
    }

    goto LABEL_6;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD2VySfGMd, &_ss5SIMD2VySfGMR);
  if (swift_dynamicCastMetatype())
  {
    v12 = type metadata accessor for FromToByAction.CodingKeys(255, a2, a3, v11);
    swift_getWitnessTable(protocol conformance descriptor for FromToByAction<A>.CodingKeys, v12);
    type metadata accessor for KeyedDecodingContainer();
    v13 = &lazy protocol witness table cache variable for type SIMD2<Float> and conformance SIMD2<A>;
    v14 = &_ss5SIMD2VySfGMd;
    v15 = &_ss5SIMD2VySfGMR;
    v16 = MEMORY[0x1E69E7440];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD3VySfGMd, &_ss5SIMD3VySfGMR);
    if (swift_dynamicCastMetatype())
    {
      v18 = type metadata accessor for FromToByAction.CodingKeys(255, a2, a3, v17);
      swift_getWitnessTable(protocol conformance descriptor for FromToByAction<A>.CodingKeys, v18);
      type metadata accessor for KeyedDecodingContainer();
      v13 = &lazy protocol witness table cache variable for type SIMD3<Float> and conformance SIMD3<A>;
      v14 = &_ss5SIMD3VySfGMd;
      v15 = &_ss5SIMD3VySfGMR;
      v16 = MEMORY[0x1E69E7468];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD4VySfGMd, &_ss5SIMD4VySfGMR);
      if (!swift_dynamicCastMetatype())
      {
        type metadata accessor for simd_quatf(0);
        if (swift_dynamicCastMetatype())
        {
          v22 = type metadata accessor for FromToByAction.CodingKeys(255, a2, a3, v21);
          swift_getWitnessTable(protocol conformance descriptor for FromToByAction<A>.CodingKeys, v22);
          type metadata accessor for KeyedDecodingContainer();
          lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type SIMD4<Float> and conformance SIMD4<A>, &_ss5SIMD4VySfGMd, &_ss5SIMD4VySfGMR, MEMORY[0x1E69E74C0]);
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          if (!v4)
          {
            goto LABEL_6;
          }
        }

        else if (swift_dynamicCastMetatype())
        {
          v24 = type metadata accessor for FromToByAction.CodingKeys(255, a2, a3, v23);
          swift_getWitnessTable(protocol conformance descriptor for FromToByAction<A>.CodingKeys, v24);
          type metadata accessor for KeyedDecodingContainer();
          lazy protocol witness table accessor for type Transform and conformance Transform();
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          if (!v4)
          {
            goto LABEL_6;
          }
        }

        else if (swift_dynamicCastMetatype())
        {
          v26 = type metadata accessor for FromToByAction.CodingKeys(255, a2, a3, v25);
          swift_getWitnessTable(protocol conformance descriptor for FromToByAction<A>.CodingKeys, v26);
          type metadata accessor for KeyedDecodingContainer();
          lazy protocol witness table accessor for type JointTransforms and conformance JointTransforms();
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          if (!v4)
          {
            goto LABEL_6;
          }
        }

        else
        {
          if (!swift_dynamicCastMetatype())
          {
            v29 = type metadata accessor for FromToByAction.DecodingErrors(0, a2, a3, v27);
            swift_getWitnessTable(protocol conformance descriptor for FromToByAction<A>.DecodingErrors, v29);
            swift_allocError();
            swift_willThrow();
            return;
          }

          v28 = type metadata accessor for FromToByAction.CodingKeys(255, a2, a3, v27);
          swift_getWitnessTable(protocol conformance descriptor for FromToByAction<A>.CodingKeys, v28);
          type metadata accessor for KeyedDecodingContainer();
          lazy protocol witness table accessor for type BlendShapeWeights and conformance BlendShapeWeights();
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          if (!v4)
          {
            goto LABEL_6;
          }
        }

        return;
      }

      v20 = type metadata accessor for FromToByAction.CodingKeys(255, a2, a3, v19);
      swift_getWitnessTable(protocol conformance descriptor for FromToByAction<A>.CodingKeys, v20);
      type metadata accessor for KeyedDecodingContainer();
      v13 = &lazy protocol witness table cache variable for type SIMD4<Float> and conformance SIMD4<A>;
      v14 = &_ss5SIMD4VySfGMd;
      v15 = &_ss5SIMD4VySfGMR;
      v16 = MEMORY[0x1E69E74C0];
    }
  }

  lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(v13, v14, v15, v16);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  if (!v4)
  {
LABEL_6:
    swift_dynamicCast();
  }
}