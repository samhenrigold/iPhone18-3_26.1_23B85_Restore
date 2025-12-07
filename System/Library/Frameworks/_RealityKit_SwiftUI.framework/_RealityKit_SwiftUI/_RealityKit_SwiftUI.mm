uint64_t sub_23B826280(uint64_t *a1)
{
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    type metadata accessor for _TaskModifier2();
  }

  else
  {
    type metadata accessor for _TaskModifier();
  }

  return type metadata accessor for ModifiedContent();
}

uint64_t sub_23B8262E8(uint64_t *a1)
{
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    type metadata accessor for _TaskModifier2();
    type metadata accessor for ModifiedContent();
    lazy protocol witness table accessor for type _TaskModifier2 and conformance _TaskModifier2();
  }

  else
  {
    type metadata accessor for _TaskModifier();
    type metadata accessor for ModifiedContent();
    lazy protocol witness table accessor for type _TaskModifier and conformance _TaskModifier(&lazy protocol witness table cache variable for type _TaskModifier and conformance _TaskModifier, MEMORY[0x277CDD8B0], MEMORY[0x277CDD8A0]);
  }

  return swift_getWitnessTable();
}

uint64_t getEnumTagSinglePayload for Segment(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t getEnumTagSinglePayload for PlatterAnimVar(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t getEnumTagSinglePayload for TubeGenerator.CurvePoint(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 64))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for TubeGenerator.CurvePoint(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 64) = v3;
  return result;
}

void *protocol witness for RawRepresentable.init(rawValue:) in conformance DeviceMotionEstimator.ActiveComponents@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t _sSo18CHHapticPatternKeyaSYSCSY8rawValue03RawE0QzvgTW_0@<X0>(uint64_t *a1@<X8>)
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_23B8264FC()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

void *sub_23B826534@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  lazy protocol witness table accessor for type EnvironmentValues.RealityViewLayoutOptionKey and conformance EnvironmentValues.RealityViewLayoutOptionKey(a2, a3, a4);
  result = EnvironmentValues.subscript.getter();
  *a1 = v6;
  return result;
}

uint64_t sub_23B8265D0(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVy012_RealityKit_aB00G16ViewLayoutOptionVGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy012_RealityKit_aB00G16ViewLayoutOptionVGMR);
  type metadata accessor for ModifiedContent();
  lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<RealityViewLayoutOption> and conformance _EnvironmentKeyWritingModifier<A>();
  return swift_getWitnessTable();
}

uint64_t sub_23B826654@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for Entity();
  result = HasHierarchy.parent.getter();
  *a1 = result;
  return result;
}

uint64_t sub_23B826690()
{
  outlined consume of Path.Storage(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));

  return MEMORY[0x2821FE8E8](v0, 49, 7);
}

double sub_23B8266D0@<D0>(int8x16_t *a1@<X8>)
{
  MeshResource.ShapeExtrusionOptions.chamferProfile.getter(v4);
  result = *v4[0].i64;
  v3 = v4[1];
  *a1 = v4[0];
  a1[1] = v3;
  a1[2].i8[0] = v5;
  return result;
}

uint64_t sub_23B826744(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = (type metadata accessor for ObjectCaptureView(0, v5, *(v4 + 24), a4) - 8);
  v7 = *(*v6 + 80);
  v8 = (v7 + 32) & ~v7;
  v9 = *(*v6 + 64) + v8;
  v10 = v4 + v8;

  (*(*(v5 - 8) + 8))(v10 + v6[11], v5);

  return MEMORY[0x2821FE8E8](v4, v9 + 1, v7 | 7);
}

uint64_t sub_23B826830(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for InternalCaptureView(255, *a1, a1[1], a4);

  return swift_getWitnessTable();
}

uint64_t sub_23B826880@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.foregroundColor.getter();
  *a1 = result;
  return result;
}

uint64_t sub_23B8268E8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ARViewContainer(255, *a1, a1[1], a4);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVy012_RealityKit_aB021ARObjectCapturingViewVAD010ARFreeformhI0VGMd, &_s7SwiftUI19_ConditionalContentVy012_RealityKit_aB021ARObjectCapturingViewVAD010ARFreeformhI0VGMR);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA4TextV_AA6SpacerVtGGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGSgMd, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA4TextV_AA6SpacerVtGGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGSgMR);
  swift_getTupleTypeMetadata3();
  type metadata accessor for TupleView();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4TextVAA23_SafeAreaIgnoringLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA4TextVAA23_SafeAreaIgnoringLayoutVGMR);
  type metadata accessor for _ConditionalContent();
  swift_getWitnessTable();
  lazy protocol witness table accessor for type ModifiedContent<Text, _SafeAreaIgnoringLayout> and conformance <> ModifiedContent<A, B>();
  swift_getWitnessTable();
  type metadata accessor for ZStack();
  return swift_getWitnessTable();
}

void sub_23B826A1C(id *a1)
{
  v1 = *a1;
  outlined copy of ObjectCaptureSession.CaptureState(v1);
  ObjectCaptureSession.state.setter(&v1);
}

uint64_t sub_23B826C44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_23B826D1C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_23B826DFC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23B826E34()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23B826E6C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23B826EF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6CoreOC20ObjectCaptureSessionC4MeshV6AnchorVSgMd, &_s6CoreOC20ObjectCaptureSessionC4MeshV6AnchorVSgMR);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_23B826FC8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6CoreOC20ObjectCaptureSessionC4MeshV6AnchorVSgMd, &_s6CoreOC20ObjectCaptureSessionC4MeshV6AnchorVSgMR);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28)) = a2 + 1;
  }

  return result;
}

uint64_t sub_23B8270F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVy17RealityFoundation14CameraControlsVGMd, &_s7SwiftUI11EnvironmentVy17RealityFoundation14CameraControlsVGMR);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_23B8271C8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVy17RealityFoundation14CameraControlsVGMd, &_s7SwiftUI11EnvironmentVy17RealityFoundation14CameraControlsVGMR);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

void *sub_23B82728C@<X0>(void *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  lazy protocol witness table accessor for type CameraControlsPublisher.Key and conformance CameraControlsPublisher.Key(a2, a3, a4);
  result = EnvironmentValues.subscript.getter();
  *a1 = v6;
  return result;
}

uint64_t sub_23B8272E4()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy012_RealityKit_aB0014CameraControlsF0VGAA022_EnvironmentKeyWritingF0VyAF0iJ9PublisherVGGMd, &_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy012_RealityKit_aB0014CameraControlsF0VGAA022_EnvironmentKeyWritingF0VyAF0iJ9PublisherVGGMR);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19SimultaneousGestureVyAA06_EndedD0VyAA08_ChangedD0VyAA07MagnifyD0VGGAEyAGyAA04DragD0VGGGMd, &_s7SwiftUI19SimultaneousGestureVyAA06_EndedD0VyAA08_ChangedD0VyAA07MagnifyD0VGGAEyAGyAA04DragD0VGGGMR);
  lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<CameraControlsModifier>, _EnvironmentKeyWritingModifier<CameraControlsPublisher>> and conformance <> ModifiedContent<A, B>();
  lazy protocol witness table accessor for type LoadRequest<ModelEntity> and conformance LoadRequest<A>(&lazy protocol witness table cache variable for type SimultaneousGesture<_EndedGesture<_ChangedGesture<MagnifyGesture>>, _EndedGesture<_ChangedGesture<DragGesture>>> and conformance SimultaneousGesture<A, B>, &_s7SwiftUI19SimultaneousGestureVyAA06_EndedD0VyAA08_ChangedD0VyAA07MagnifyD0VGGAEyAGyAA04DragD0VGGGMd, &_s7SwiftUI19SimultaneousGestureVyAA06_EndedD0VyAA08_ChangedD0VyAA07MagnifyD0VGGAEyAGyAA04DragD0VGGGMR, MEMORY[0x277CE02F8]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_23B8273B4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23B82740C()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t _s19_RealityKit_SwiftUI28RaycastMeshTrackingComponentV17ReticleDescriptorV10CodingKeys09_91E6A1C2M22C8457E7BFC2D745D2CAA14LLOs0K3KeyAAsAIP11stringValuexSgSS_tcfCTW_0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized RaycastMeshTrackingComponent.ReticleDescriptor.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for TurnTableCameraControl.SphericalCoordinates(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 28))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for TurnTableCameraControl.SphericalCoordinates(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
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

  *(result + 28) = v3;
  return result;
}

uint64_t sub_23B8275E4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_23B827638()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23B827678()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23B82773C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6CoreOC20ObjectCaptureSessionC5FrameV10PointCloudVSgMd, &_s6CoreOC20ObjectCaptureSessionC5FrameV10PointCloudVSgMR);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6CoreOC20ObjectCaptureSessionC5FrameV0C0VSgMd, &_s6CoreOC20ObjectCaptureSessionC5FrameV0C0VSgMR);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_23B827844(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6CoreOC20ObjectCaptureSessionC5FrameV10PointCloudVSgMd, &_s6CoreOC20ObjectCaptureSessionC5FrameV10PointCloudVSgMR);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6CoreOC20ObjectCaptureSessionC5FrameV0C0VSgMd, &_s6CoreOC20ObjectCaptureSessionC5FrameV0C0VSgMR);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_23B827958@<X0>(uint64_t *a1@<X8>)
{
  result = Entity.gestureResponder.getter();
  *a1 = result;
  return result;
}

uint64_t sub_23B827984(void *a1)
{
  v1 = swift_unknownObjectRetain();
  specialized Entity.gestureResponder.setter(v1);

  return swift_unknownObjectRelease();
}

uint64_t sub_23B8279CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA11ColorSchemeOGMd, &_s7SwiftUI11EnvironmentVyAA11ColorSchemeOGMR);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_23B827A88(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA11ColorSchemeOGMd, &_s7SwiftUI11EnvironmentVyAA11ColorSchemeOGMR);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_23B827B44(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6CoreOC20ObjectCaptureSessionC5FrameV10PointCloudVSgMd, &_s6CoreOC20ObjectCaptureSessionC5FrameV10PointCloudVSgMR);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

void *sub_23B827C0C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6CoreOC20ObjectCaptureSessionC5FrameV10PointCloudVSgMd, &_s6CoreOC20ObjectCaptureSessionC5FrameV10PointCloudVSgMR);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_23B827CBC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23B827D18(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DataModel.Error(0);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 9)
  {
    return v5 - 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23B827D84(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 8);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for DataModel.Error(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_23B827EB0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23B827EF0()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23B827F28()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23B82825C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23B82829C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23B8282D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v7 = *(a3 + 24);
  v8 = type metadata accessor for ComponentAnimatableData();
  v10 = *(v8 - 8);
  if (*(v10 + 84) == a2)
  {
    v11 = v8;
    v12 = *(v10 + 48);
    v13 = a1;
LABEL_3:

    return v12(v13, a2, v11);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v15 = *(a1 + *(a3 + 40));
    if (v15 >= 0xFFFFFFFF)
    {
      LODWORD(v15) = -1;
    }

    return (v15 + 1);
  }

  else
  {
    v16 = type metadata accessor for ImplicitAnimationState.State(0, v6, v7, v9);
    v17 = *(v16 - 8);
    if (*(v17 + 84) == a2)
    {
      v11 = v16;
      v12 = *(v17 + 48);
      v13 = a1 + *(a3 + 48);
      goto LABEL_3;
    }

    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI16AnimationContextVySfGMd, &_s7SwiftUI16AnimationContextVySfGMR);
    v19 = *(*(v18 - 8) + 48);
    v20 = a1 + *(a3 + 52);

    return v19(v20, a2, v18);
  }
}

uint64_t sub_23B828478(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  v9 = *(a4 + 24);
  result = type metadata accessor for ComponentAnimatableData();
  v12 = *(result - 8);
  if (*(v12 + 84) == a3)
  {
    v13 = result;
    v14 = *(v12 + 56);
    v15 = a1;
LABEL_3:

    return v14(v15, a2, a2, v13);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 40)) = (a2 - 1);
    return result;
  }

  v16 = type metadata accessor for ImplicitAnimationState.State(0, v8, v9, v11);
  v17 = *(v16 - 8);
  if (*(v17 + 84) == a3)
  {
    v13 = v16;
    v14 = *(v17 + 56);
    v15 = a1 + *(a4 + 48);
    goto LABEL_3;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI16AnimationContextVySfGMd, &_s7SwiftUI16AnimationContextVySfGMR);
  v19 = *(*(v18 - 8) + 56);
  v20 = a1 + *(a4 + 52);

  return v19(v20, a2, a2, v18);
}

uint64_t sub_23B82861C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 3)
  {
    return v5 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23B828688(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for Date();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_23B82870C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23B828758()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 56));

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_23B828798(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6CoreOC20ObjectCaptureSessionC5FrameV10PointCloudVSgMd, &_s6CoreOC20ObjectCaptureSessionC5FrameV10PointCloudVSgMR);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

void *sub_23B828860(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6CoreOC20ObjectCaptureSessionC5FrameV10PointCloudVSgMd, &_s6CoreOC20ObjectCaptureSessionC5FrameV10PointCloudVSgMR);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_23B828910()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23B82894C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA11ColorSchemeOGMd, &_s7SwiftUI11EnvironmentVyAA11ColorSchemeOGMR);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_23B828A08(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA11ColorSchemeOGMd, &_s7SwiftUI11EnvironmentVyAA11ColorSchemeOGMR);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_23B828BC4(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for HashableMetatype();
  v4 = *(*(v3 - 8) + 8);

  return v4(a1, v3);
}

__n128 sub_23B828C30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for HashableMetatype();
  v6 = *(v5 - 8) + 16;
  (*v6)(a2, a1, v5);
  v7 = (*(v6 + 48) + 7) & 0xFFFFFFFFFFFFFFF8;
  result = *(a1 + v7);
  *(a2 + v7) = result;
  return result;
}

__n128 sub_23B828CBC(__n128 *a1, uint64_t a2)
{
  v4 = type metadata accessor for HashableMetatype();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  (*(v5 + 32))(a2, a1 + ((*(v5 + 80) + 16) & ~*(v5 + 80)), v4);
  result = *a1;
  *(a2 + ((v6 + 7) & 0xFFFFFFFFFFFFFFF8)) = *a1;
  return result;
}

uint64_t sub_23B828DFC(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for HashableMetatype();
  v4 = *(*(v3 - 8) + 8);

  return v4(a1, v3);
}

__n128 sub_23B828E6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for HashableMetatype();
  v6 = *(v5 - 8) + 16;
  (*v6)(a2, a1, v5);
  v7 = (*(v6 + 48) + 7) & 0xFFFFFFFFFFFFFFF8;
  result = *(a1 + v7);
  *(a2 + v7) = result;
  return result;
}

__n128 sub_23B828EFC(__n128 *a1, uint64_t a2)
{
  v4 = type metadata accessor for HashableMetatype();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  (*(v5 + 32))(a2, a1 + ((*(v5 + 80) + 16) & ~*(v5 + 80)), v4);
  result = *a1;
  *(a2 + ((v6 + 7) & 0xFFFFFFFFFFFFFFF8)) = *a1;
  return result;
}

uint64_t sub_23B828F90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = type metadata accessor for RealityViewCameraContent.Body(0, v5, *(v4 + 24), a4);
  v7 = *(*(v6 - 8) + 80);
  v8 = (v7 + 32) & ~v7;
  v9 = *(*(v6 - 8) + 64);
  v10 = v4 + v8;

  if (*(v4 + v8 + 16))
  {
  }

  (*(*(v5 - 8) + 8))(v10 + *(v6 + 40), v5);
  outlined consume of StateObject<_RealityViewCameraModel>.Storage(*(v10 + *(v6 + 44)), *(v10 + *(v6 + 44) + 8));

  return MEMORY[0x2821FE8E8](v4, v8 + v9, v7 | 7);
}

uint64_t sub_23B82918C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = *(a1 + *(type metadata accessor for RealityViewCameraContent(0) + 44));
}

uint64_t sub_23B829200@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = *(a1 + *(type metadata accessor for RealityViewCameraContent(0) + 48));
}

uint64_t sub_23B82924C@<X0>(uint64_t *a1@<X8>)
{
  result = dispatch thunk of ARView.audioListener.getter();
  *a1 = result;
  return result;
}

uint64_t sub_23B829410@<X0>(uint64_t *a1@<X8>)
{
  result = ARView.physicsOrigin.getter();
  *a1 = result;
  return result;
}

uint64_t sub_23B82951C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = type metadata accessor for RealityViewCameraContent(0);
  *a2 = *(*(a1 + *(result + 56)) + OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_displayTargetCube);
  return result;
}

uint64_t sub_23B829564(char *a1, uint64_t a2)
{
  v3 = *a1;
  result = type metadata accessor for RealityViewCameraContent(0);
  *(*(a2 + *(result + 56)) + OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_displayTargetCube) = v3;
  return result;
}

uint64_t sub_23B8295A8(char *a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13GeometryProxyVSgMd, &_s7SwiftUI13GeometryProxyVSgMR);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(&a1[v11], a2, v9);
  }

  v12 = type metadata accessor for RealityViewCamera(0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[10];
    goto LABEL_9;
  }

  v14 = type metadata accessor for RealityViewRenderingEffects(0);
  v15 = *(*(v14 - 8) + 48);
  v16 = &a1[a3[13]];

  return v15(v16, a2, v14);
}

char *sub_23B829720(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13GeometryProxyVSgMd, &_s7SwiftUI13GeometryProxyVSgMR);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(&v5[v11], a2, a2, v9);
  }

  v12 = type metadata accessor for RealityViewCamera(0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[10];
    goto LABEL_7;
  }

  v14 = type metadata accessor for RealityViewRenderingEffects(0);
  v15 = *(*(v14 - 8) + 56);
  v16 = &v5[a4[13]];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_23B829898(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = type metadata accessor for CameraControls();
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

void *sub_23B829950(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = type metadata accessor for CameraControls();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_23B8299F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AntialiasingMode();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 36));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    v13 = v12 - 1;
    if (v13 < 0)
    {
      v13 = -1;
    }

    return (v13 + 1);
  }
}

uint64_t sub_23B829AC0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for AntialiasingMode();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 28);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 36)) = a2;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_So9MTLDevice_pIegg_Sg_0(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_23B829B94(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for _RealityViewImpl(255, *a1, a1[1], a4);
  swift_getWitnessTable();
  type metadata accessor for GeometryReader();
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_23B829C58(uint64_t *a1)
{
  type metadata accessor for CameraControlsModifier(255);
  type metadata accessor for ModifiedContent();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVy17RealityFoundation14CameraControlsVGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy17RealityFoundation14CameraControlsVGMR);
  type metadata accessor for ModifiedContent();
  _s19_RealityKit_SwiftUI0C19UIImplicitAnimationCAC0A10Foundation20EntityChangeModifierAAWlTm_0(&lazy protocol witness table cache variable for type CameraControlsModifier and conformance CameraControlsModifier, type metadata accessor for CameraControlsModifier, &protocol conformance descriptor for CameraControlsModifier);
  swift_getWitnessTable();
  lazy protocol witness table accessor for type LoadRequest<ModelEntity> and conformance LoadRequest<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<CameraControls> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy17RealityFoundation14CameraControlsVGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy17RealityFoundation14CameraControlsVGMR, MEMORY[0x277CE0868]);
  return swift_getWitnessTable();
}

uint64_t sub_23B829D78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 32);
  v6 = type metadata accessor for _RealityViewImpl(0, v5, *(v4 + 40), a4);
  v7 = *(*(v6 - 1) + 80);
  v8 = (v7 + 56) & ~v7;
  v9 = *(*(v6 - 1) + 64);
  swift_unknownObjectRelease();

  v10 = v4 + v8;

  (*(*(v5 - 8) + 8))(v4 + v8 + v6[10], v5);
  v11 = v6[11];
  v12 = type metadata accessor for GeometryProxy();
  (*(*(v12 - 8) + 8))(v4 + v8 + v11, v12);
  swift_weakDestroy();
  v13 = v6[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOy17RealityFoundation14CameraControlsV_GMd, &_s7SwiftUI11EnvironmentV7ContentOy17RealityFoundation14CameraControlsV_GMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = type metadata accessor for CameraControls();
    (*(*(v14 - 8) + 8))(v10 + v13, v14);
  }

  else
  {
  }

  protocol witness for System.init(scene:) in conformance _RealityViewCameraControllerSystem(*(v10 + v6[14]));
  outlined consume of Environment<UIScene?>.Content(*(v10 + v6[15]), *(v10 + v6[15] + 8));
  v15 = v6[16];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA5ImageV12DynamicRangeVSg_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA5ImageV12DynamicRangeVSg_GMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = type metadata accessor for Image.DynamicRange();
    v17 = *(v16 - 8);
    if (!(*(v17 + 48))(v10 + v15, 1, v16))
    {
      (*(v17 + 8))(v10 + v15, v16);
    }
  }

  else
  {
  }

  protocol witness for System.init(scene:) in conformance _RealityViewCameraControllerSystem(*(v10 + v6[17]));
  outlined consume of Environment<RealityViewLayoutOption>.Content(*(v10 + v6[18]), *(v10 + v6[18] + 8));

  return MEMORY[0x2821FE8E8](v4, v8 + v9, v7 | 7);
}

uint64_t sub_23B82A054(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = type metadata accessor for _RealityViewImpl(0, v5, *(v4 + 24), a4);
  v7 = *(*(v6 - 1) + 80);
  v8 = (v7 + 40) & ~v7;
  v9 = *(*(v6 - 1) + 64);

  v10 = v4 + v8;

  (*(*(v5 - 8) + 8))(v4 + v8 + v6[10], v5);
  v11 = v6[11];
  v12 = type metadata accessor for GeometryProxy();
  (*(*(v12 - 8) + 8))(v4 + v8 + v11, v12);
  swift_weakDestroy();
  v13 = v6[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOy17RealityFoundation14CameraControlsV_GMd, &_s7SwiftUI11EnvironmentV7ContentOy17RealityFoundation14CameraControlsV_GMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = type metadata accessor for CameraControls();
    (*(*(v14 - 8) + 8))(v10 + v13, v14);
  }

  else
  {
  }

  protocol witness for System.init(scene:) in conformance _RealityViewCameraControllerSystem(*(v10 + v6[14]));
  outlined consume of Environment<UIScene?>.Content(*(v10 + v6[15]), *(v10 + v6[15] + 8));
  v15 = v6[16];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA5ImageV12DynamicRangeVSg_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA5ImageV12DynamicRangeVSg_GMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = type metadata accessor for Image.DynamicRange();
    v17 = *(v16 - 8);
    if (!(*(v17 + 48))(v10 + v15, 1, v16))
    {
      (*(v17 + 8))(v10 + v15, v16);
    }
  }

  else
  {
  }

  protocol witness for System.init(scene:) in conformance _RealityViewCameraControllerSystem(*(v10 + v6[17]));
  outlined consume of Environment<RealityViewLayoutOption>.Content(*(v10 + v6[18]), *(v10 + v6[18] + 8));

  return MEMORY[0x2821FE8E8](v4, v8 + v9, v7 | 7);
}

uint64_t sub_23B82A32C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23B82A368()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23B82A3A8@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.sceneSession.getter();
  *a1 = result;
  return result;
}

id sub_23B82A404@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 scene];
  *a2 = result;
  return result;
}

uint64_t sub_23B82A440@<X0>(uint64_t *a1@<X8>)
{
  result = MEMORY[0x23EEAEB10]();
  *a1 = result;
  return result;
}

uint64_t sub_23B82A4C8(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for GeometryProxy();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_23B82A574(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for GeometryProxy();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_23B82A618(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13GeometryProxyVSgMd, &_s7SwiftUI13GeometryProxyVSgMR);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_23B82A690(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13GeometryProxyVSgMd, &_s7SwiftUI13GeometryProxyVSgMR);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_23B82A798(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI16SubscriptionViewVy012_RealityKit_aB023CameraControlsPublisherVAA15ModifiedContentVyAA0D0PAAE17onContinuousHover15coordinateSpace7performQrqd___yAA0N5PhaseOctAA010CoordinateP8ProtocolRd__lFQOyAHyAHyAjDE40rootEntityGestureResponderBackDeployableQryFQOyAD0D7AdaptorVy0eF06ARViewCG_Qo_AA34_InsettableBackgroundShapeModifierVyAA15BackgroundStyleVAA9RectangleVGGAA35_EnvironmentBackgroundStyleModifierVyAA13AnyShapeStyleVGG_AA05LocalsP0VQo_AA26_PreferenceWritingModifierVyAD0edG14ConvertibleKeyVGGGMd, &_s7SwiftUI16SubscriptionViewVy012_RealityKit_aB023CameraControlsPublisherVAA15ModifiedContentVyAA0D0PAAE17onContinuousHover15coordinateSpace7performQrqd___yAA0N5PhaseOctAA010CoordinateP8ProtocolRd__lFQOyAHyAHyAjDE40rootEntityGestureResponderBackDeployableQryFQOyAD0D7AdaptorVy0eF06ARViewCG_Qo_AA34_InsettableBackgroundShapeModifierVyAA15BackgroundStyleVAA9RectangleVGGAA35_EnvironmentBackgroundStyleModifierVyAA13AnyShapeStyleVGG_AA05LocalsP0VQo_AA26_PreferenceWritingModifierVyAD0edG14ConvertibleKeyVGGGMR);
  type metadata accessor for _ConditionalContent();
  type metadata accessor for Group();
  lazy protocol witness table accessor for type LoadRequest<ModelEntity> and conformance LoadRequest<A>(&lazy protocol witness table cache variable for type SubscriptionView<CameraControlsPublisher, ModifiedContent<<<opaque return type of View.onContinuousHover<A>(coordinateSpace:perform:)>>.0, _PreferenceWritingModifier<RealityViewCameraConvertibleKey>>> and conformance SubscriptionView<A, B>, &_s7SwiftUI16SubscriptionViewVy012_RealityKit_aB023CameraControlsPublisherVAA15ModifiedContentVyAA0D0PAAE17onContinuousHover15coordinateSpace7performQrqd___yAA0N5PhaseOctAA010CoordinateP8ProtocolRd__lFQOyAHyAHyAjDE40rootEntityGestureResponderBackDeployableQryFQOyAD0D7AdaptorVy0eF06ARViewCG_Qo_AA34_InsettableBackgroundShapeModifierVyAA15BackgroundStyleVAA9RectangleVGGAA35_EnvironmentBackgroundStyleModifierVyAA13AnyShapeStyleVGG_AA05LocalsP0VQo_AA26_PreferenceWritingModifierVyAD0edG14ConvertibleKeyVGGGMd, &_s7SwiftUI16SubscriptionViewVy012_RealityKit_aB023CameraControlsPublisherVAA15ModifiedContentVyAA0D0PAAE17onContinuousHover15coordinateSpace7performQrqd___yAA0N5PhaseOctAA010CoordinateP8ProtocolRd__lFQOyAHyAHyAjDE40rootEntityGestureResponderBackDeployableQryFQOyAD0D7AdaptorVy0eF06ARViewCG_Qo_AA34_InsettableBackgroundShapeModifierVyAA15BackgroundStyleVAA9RectangleVGGAA35_EnvironmentBackgroundStyleModifierVyAA13AnyShapeStyleVGG_AA05LocalsP0VQo_AA26_PreferenceWritingModifierVyAD0edG14ConvertibleKeyVGGGMR, MEMORY[0x277CDDB50]);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for Optional();
  swift_getOpaqueTypeConformance2();
  return swift_getWitnessTable();
}

uint64_t sub_23B82A984()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23B82A9DC()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_23B82AA14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Model3DLocation(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 40));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_23B82AAD0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Model3DLocation(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 40)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_23B82AC2C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ARViewContainer.ARViewContainer(255, *a1, a1[1], a4);
  type metadata accessor for UUID();
  swift_getWitnessTable();
  _s19_RealityKit_SwiftUI9DataModelCAC7Combine16ObservableObjectAAWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  type metadata accessor for IDView();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ScenePhase();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  _s19_RealityKit_SwiftUI9DataModelCAC7Combine16ObservableObjectAAWlTm_1(&lazy protocol witness table cache variable for type ScenePhase and conformance ScenePhase, MEMORY[0x277CDD6C8], MEMORY[0x277CDD6D0]);
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4TextVAA23_SafeAreaIgnoringLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA4TextVAA23_SafeAreaIgnoringLayoutVGMR);
  type metadata accessor for _ConditionalContent();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for ZStack();
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_23B82AF24()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23B82AF5C()
{

  return MEMORY[0x2821FE8E8](v0, 28, 7);
}

uint64_t sub_23B82AF94()
{

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_23B82AFCC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23B82B020(void *a1)
{
  type metadata accessor for ModifiedContent();
  v1 = type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  WitnessTable = swift_getWitnessTable();
  type metadata accessor for BottomCenterView(255, v1, WitnessTable, v3);
  type metadata accessor for TopCenterView(255, v1, WitnessTable, v4);
  type metadata accessor for _ConditionalContent();
  type metadata accessor for LeftCenterView(255, v1, WitnessTable, v5);
  type metadata accessor for RightCenterView(255, v1, WitnessTable, v6);
  type metadata accessor for _ConditionalContent();
  type metadata accessor for _ConditionalContent();
  type metadata accessor for _ConditionalContent();
  type metadata accessor for Group();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_23B82B2A4(void *a1)
{
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata3();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for HStack();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for VStack();

  return swift_getWitnessTable();
}

uint64_t sub_23B82B3C0(void *a1)
{
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata3();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for HStack();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for VStack();

  return swift_getWitnessTable();
}

uint64_t sub_23B82B4DC(void *a1)
{
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for HStack();
  swift_getTupleTypeMetadata3();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for VStack();

  return swift_getWitnessTable();
}

uint64_t sub_23B82B5F8(void *a1)
{
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for HStack();
  swift_getTupleTypeMetadata3();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for VStack();

  return swift_getWitnessTable();
}

uint64_t sub_23B82B724(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TargetingEntityGesture(255, *a1, a1[1], a4);

  return swift_getWitnessTable();
}

__n128 sub_23B82B7E8(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

__n128 sub_23B82B7F4@<Q0>(uint64_t a1@<X8>)
{
  TargetingEntityGesture.EntityTargetState.defaultPlane.getter(v4);
  v2 = v4[3];
  *(a1 + 32) = v4[2];
  *(a1 + 48) = v2;
  *(a1 + 64) = v5;
  result = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_23B82B840(uint64_t a1)
{
  v1 = *(a1 + 48);
  v4[2] = *(a1 + 32);
  v4[3] = v1;
  v5 = *(a1 + 64);
  v2 = *(a1 + 16);
  v4[0] = *a1;
  v4[1] = v2;
  return TargetingEntityGesture.EntityTargetState.defaultPlane.setter(v4);
}

uint64_t sub_23B82B894@<X0>(uint64_t *a1@<X8>)
{
  result = TargetingEntityGesture.EntityTargetState.view.getter();
  *a1 = result;
  return result;
}

void sub_23B82B8C0(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  TargetingEntityGesture.EntityTargetState.view.setter(v1);
}

uint64_t sub_23B82B8FC@<X0>(uint64_t *a1@<X8>)
{
  result = TargetingEntityGesture.EntityTargetState.entity.getter();
  *a1 = result;
  return result;
}

uint64_t sub_23B82B960(void *a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for EntityTargetValue(255, AssociatedTypeWitness, v2, v3);
  type metadata accessor for AnyGesture();

  return swift_getWitnessTable();
}

uint64_t _s19_RealityKit_SwiftUI11ViewAdaptorVMi_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_23B82BA28(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ViewAdaptor.Representation(255, *a1, a3, a4);

  return swift_getWitnessTable();
}

uint64_t storeEnumTagSinglePayload for CircleCompletionAnimationData(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 16) = v3;
  return result;
}

uint64_t storeEnumTagSinglePayload for MTLClearColor(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
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

  *(result + 32) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for ObjectCapturePoint(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t getEnumTagSinglePayload for BinRegionsIndexMap(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for BinRegionsIndexMap(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 24) = v3;
  return result;
}

uint64_t outlined consume of (@escaping @callee_guaranteed (@in_guaranteed ObjectCaptureSession.Frame.Feedback, @in_guaranteed ARCamera.TrackingState) -> ())?(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t outlined consume of PlatterRenderer??(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FreeformScanModeManager.Descriptor(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for FreeformScanModeManager.Descriptor(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

uint64_t outlined copy of (@escaping @callee_guaranteed () -> ())?(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t outlined copy of PlatterRenderer??(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _TaskModifier2 and conformance _TaskModifier2()
{
  result = lazy protocol witness table cache variable for type _TaskModifier2 and conformance _TaskModifier2;
  if (!lazy protocol witness table cache variable for type _TaskModifier2 and conformance _TaskModifier2)
  {
    type metadata accessor for _TaskModifier2();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _TaskModifier2 and conformance _TaskModifier2);
  }

  return result;
}

uint64_t _s7SwiftUI4ViewPAAE4task4name8priority4file4line6actionQrSSSg_ScPSSSiyyYaYAcntF@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v34 = a5;
  v35 = a6;
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    v36 = a8;
    v37 = a3;
    v38 = a7;
    v39 = a9;
    v40 = a10;
    v41 = a11;
    v18 = type metadata accessor for _TaskModifier2();
    v19 = *(v18 - 8);
    MEMORY[0x28223BE20](v18);
    v21 = &v33 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (!a2)
    {
      v43[0] = 0;
      v43[1] = 0xE000000000000000;
      v33 = v11;
      _StringGuts.grow(_:)(17);

      strcpy(v43, "View.task @ ");
      BYTE5(v43[1]) = 0;
      HIWORD(v43[1]) = -5120;
      MEMORY[0x23EEAF590](a4, v34);
      MEMORY[0x23EEAF590](58, 0xE100000000000000);
      v42 = v35;
      v29 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x23EEAF590](v29);
    }

    v30 = type metadata accessor for TaskPriority();
    MEMORY[0x28223BE20](v30);
    (*(v32 + 16))(&v33 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0), v37);

    _s7SwiftUI14_TaskModifier2V4name18executorPreference8priority6actionACSS_Sch_pSgScPyyYaYAcntcfC();
    MEMORY[0x23EEAEFD0](v21, v40, v18, v41);

    return (*(v19 + 8))(v21, v18);
  }

  else
  {
    v22 = type metadata accessor for _TaskModifier();
    v23 = MEMORY[0x28223BE20](v22);
    v25 = &v33 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
    v26 = *(v23 + 20);
    v27 = type metadata accessor for TaskPriority();
    (*(*(v27 - 8) + 16))(&v25[v26], a3, v27);
    *v25 = a7;
    *(v25 + 1) = a8;
    MEMORY[0x23EEAEFD0](v25, a10, v22, a11);
    return outlined destroy of _TaskModifier(v25);
  }
}

uint64_t outlined destroy of _TaskModifier(uint64_t a1)
{
  v2 = type metadata accessor for _TaskModifier();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 __swift_memcpy24_4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

__n128 __swift_memcpy16_4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

__n128 __swift_memcpy16_16(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

__n128 __swift_memcpy64_16(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._forceBridgeFromObjectiveC(_:result:) in conformance CHHapticPatternKey(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._conditionallyBridgeFromObjectiveC(_:result:) in conformance CHHapticPatternKey(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._unconditionallyBridgeFromObjectiveC(_:) in conformance CHHapticPatternKey@<X0>(uint64_t *a2@<X8>)
{
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = MEMORY[0x23EEAF480](v3);

  *a2 = v4;
  return result;
}

__n128 __swift_memcpy48_16(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t storeEnumTagSinglePayload for ObjectCapturePoint(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 48) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for os_unfair_lock_s(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for os_unfair_lock_s(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 4) = v3;
  return result;
}

__n128 __swift_memcpy32_16(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance CHHapticPatternKey(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type _TaskModifier and conformance _TaskModifier(&lazy protocol witness table cache variable for type CHHapticPatternKey and conformance CHHapticPatternKey, type metadata accessor for CHHapticPatternKey, &protocol conformance descriptor for CHHapticPatternKey);
  v3 = lazy protocol witness table accessor for type _TaskModifier and conformance _TaskModifier(&lazy protocol witness table cache variable for type CHHapticPatternKey and conformance CHHapticPatternKey, type metadata accessor for CHHapticPatternKey, &protocol conformance descriptor for CHHapticPatternKey);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t lazy protocol witness table accessor for type _TaskModifier and conformance _TaskModifier(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance CHHapticPatternKey@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = MEMORY[0x23EEAF480](*a1, a1[1]);

  *a2 = v3;
  return result;
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance CHHapticEventType(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type _TaskModifier and conformance _TaskModifier(&lazy protocol witness table cache variable for type CHHapticEventType and conformance CHHapticEventType, type metadata accessor for CHHapticEventType, &protocol conformance descriptor for CHHapticEventType);
  v3 = lazy protocol witness table accessor for type _TaskModifier and conformance _TaskModifier(&lazy protocol witness table cache variable for type CHHapticEventType and conformance CHHapticEventType, type metadata accessor for CHHapticEventType, &protocol conformance descriptor for CHHapticEventType);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t protocol witness for Hashable.hashValue.getter in conformance CHHapticPatternKey()
{
  v0 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v1 = MEMORY[0x23EEAF5D0](v0);

  return v1;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CHHapticPatternKey(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CHHapticPatternKey(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v1 = Hasher._finalize()();

  return v1;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance CHHapticPatternKey(void *a1, uint64_t *a2)
{
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  if (v2 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v7 & 1;
}

void type metadata accessor for BinRegionsIndexMap(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t one-time initialization function for logger()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, logger);
  __swift_project_value_buffer(v0, logger);
  return Logger.init(subsystem:category:)();
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, logger);
  __swift_project_value_buffer(v0, logger);
  return Logger.init(subsystem:category:)();
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, logger);
  __swift_project_value_buffer(v0, logger);
  return Logger.init(subsystem:category:)();
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, logger);
  __swift_project_value_buffer(v0, logger);
  return Logger.init(subsystem:category:)();
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, logger);
  __swift_project_value_buffer(v0, logger);
  return Logger.init(subsystem:category:)();
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, logger);
  __swift_project_value_buffer(v0, logger);
  return Logger.init(subsystem:category:)();
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, logger);
  __swift_project_value_buffer(v0, logger);
  return Logger.init(subsystem:category:)();
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, logger);
  __swift_project_value_buffer(v0, logger);
  return Logger.init(subsystem:category:)();
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, logger);
  __swift_project_value_buffer(v0, logger);
  return Logger.init(subsystem:category:)();
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, logger);
  __swift_project_value_buffer(v0, logger);
  return Logger.init(subsystem:category:)();
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, logger);
  __swift_project_value_buffer(v0, logger);
  return Logger.init(subsystem:category:)();
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, logger);
  __swift_project_value_buffer(v0, logger);
  return Logger.init(subsystem:category:)();
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, logger);
  __swift_project_value_buffer(v0, logger);
  return Logger.init(subsystem:category:)();
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, logger);
  __swift_project_value_buffer(v0, logger);
  return Logger.init(subsystem:category:)();
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, logger);
  __swift_project_value_buffer(v0, logger);
  return Logger.init(subsystem:category:)();
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, logger);
  __swift_project_value_buffer(v0, logger);
  return Logger.init(subsystem:category:)();
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, logger);
  __swift_project_value_buffer(v0, logger);
  return Logger.init(subsystem:category:)();
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, logger);
  __swift_project_value_buffer(v0, logger);
  return Logger.init(subsystem:category:)();
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, logger);
  __swift_project_value_buffer(v0, logger);
  return Logger.init(subsystem:category:)();
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, logger);
  __swift_project_value_buffer(v0, logger);
  return Logger.init(subsystem:category:)();
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, logger);
  __swift_project_value_buffer(v0, logger);
  return Logger.init(subsystem:category:)();
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, logger);
  __swift_project_value_buffer(v0, logger);
  return Logger.init(subsystem:category:)();
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, logger);
  __swift_project_value_buffer(v0, logger);
  return Logger.init(subsystem:category:)();
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, logger);
  __swift_project_value_buffer(v0, logger);
  return Logger.init(subsystem:category:)();
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, logger);
  __swift_project_value_buffer(v0, logger);
  return Logger.init(subsystem:category:)();
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, logger);
  __swift_project_value_buffer(v0, logger);
  return Logger.init(subsystem:category:)();
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, logger);
  __swift_project_value_buffer(v0, logger);
  return Logger.init(subsystem:category:)();
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, logger);
  __swift_project_value_buffer(v0, logger);
  return Logger.init(subsystem:category:)();
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, logger);
  __swift_project_value_buffer(v0, logger);
  return Logger.init(subsystem:category:)();
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, logger);
  __swift_project_value_buffer(v0, logger);
  return Logger.init(subsystem:category:)();
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, logger);
  __swift_project_value_buffer(v0, logger);
  return Logger.init(subsystem:category:)();
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, logger);
  __swift_project_value_buffer(v0, logger);
  return Logger.init(subsystem:category:)();
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, logger);
  __swift_project_value_buffer(v0, logger);
  return Logger.init(subsystem:category:)();
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, logger);
  __swift_project_value_buffer(v0, logger);
  return Logger.init(subsystem:category:)();
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, logger);
  __swift_project_value_buffer(v0, logger);
  return Logger.init(subsystem:category:)();
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, logger);
  __swift_project_value_buffer(v0, logger);
  return Logger.init(subsystem:category:)();
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, logger);
  __swift_project_value_buffer(v0, logger);
  return Logger.init(subsystem:category:)();
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, logger);
  __swift_project_value_buffer(v0, logger);
  return Logger.init(subsystem:category:)();
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, logger);
  __swift_project_value_buffer(v0, logger);
  return Logger.init(subsystem:category:)();
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, logger);
  __swift_project_value_buffer(v0, logger);
  return Logger.init(subsystem:category:)();
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, logger);
  __swift_project_value_buffer(v0, logger);
  return Logger.init(subsystem:category:)();
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, logger);
  __swift_project_value_buffer(v0, logger);
  return Logger.init(subsystem:category:)();
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, logger);
  __swift_project_value_buffer(v0, logger);
  return Logger.init(subsystem:category:)();
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, logger);
  __swift_project_value_buffer(v0, logger);
  return Logger.init(subsystem:category:)();
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, logger);
  __swift_project_value_buffer(v0, logger);
  return Logger.init(subsystem:category:)();
}

id BoundingBoxRotateManipulator.panGesture.getter()
{
  v1 = *(v0 + 72);
  if (v1)
  {
    v2 = *(v0 + 72);
  }

  else
  {
    v3 = swift_allocObject();
    swift_weakInit();
    objc_allocWithZone(type metadata accessor for DragFromPointGestureRecognizer());

    v5 = v3;
    v6 = v0;
    v7 = DragFromPointGestureRecognizer.init(manipulator:onPan:)(v4, partial apply for closure #1 in BoundingBoxRotateManipulator.panGesture.getter, v5);
    v8 = *(v0 + 72);
    *(v6 + 72) = v7;
    v2 = v7;

    v1 = 0;
  }

  v9 = v1;
  return v2;
}

uint64_t closure #1 in BoundingBoxRotateManipulator.panGesture.getter(uint64_t a1, double a2, double a3, double a4, double a5)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    specialized BoundingBoxRotateManipulator.duringDragGesture(startPoint:currentPoint:)(a4, a5);
  }

  return result;
}

float BoundingBoxRotateManipulator.compositeScale.getter()
{
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = *(*(Strong + 240) + 48);
    v3 = *(v2 + 28);
    v4 = *(v2 + 24) * 17.5;

    if (v4 > v3)
    {
      v5 = v4;
    }

    else
    {
      v5 = v3;
    }
  }

  else
  {
    v5 = 17.5;
  }

  return *(v0 + 248) * v5;
}

void BoundingBoxRotateManipulator.showFrontFaceIndicator.willset(char a1)
{
  if ((a1 & 1) == 0 && *(v1 + 256) == 1)
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, logger);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_23B824000, v3, v4, "Removing the front face indicator from scene.", v5, 2u);
      MEMORY[0x23EEB0B70](v5, -1, -1);
    }

    type metadata accessor for Entity();
    HasHierarchy.removeFromParent(preservingWorldTransform:)(0);
  }
}

uint64_t BoundingBoxRotateManipulator.showFrontFaceIndicator.didset(char a1)
{
  v3 = type metadata accessor for __EntityRef();
  v4 = *(v3 - 8);
  result = MEMORY[0x28223BE20](v3);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 1) == 0 && *(v1 + 256) == 1)
  {
    v8 = result;
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, logger);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_23B824000, v10, v11, "Adding the front face indicator to the scene.", v12, 2u);
      MEMORY[0x23EEB0B70](v12, -1, -1);
    }

    type metadata accessor for Entity();
    HasHierarchy.addChild(_:preservingWorldTransform:)();
    dispatch thunk of Entity.__coreEntity.getter();
    MEMORY[0x23EEAC640](&v15, MEMORY[0x277D841D8], MEMORY[0x277D841D8]);
    (*(v4 + 8))(v7, v8);
    REHierarchicalFadeComponentGetComponentType();
    v13 = REEntityGetOrAddComponentByClass();
    REHierarchicalFadeComponentSetOpacity();
    return MEMORY[0x23EEB00C0](v13);
  }

  return result;
}

uint64_t BoundingBoxRotateManipulator.attach(model:)(uint64_t a1)
{
  v2 = type metadata accessor for __EntityRef();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v28[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Scene.AnchorCollection();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v28[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_weakAssign();
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, logger);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v27 = v6;
    v14 = v3;
    v15 = v7;
    v16 = v2;
    v17 = v13;
    *v13 = 0;
    _os_log_impl(&dword_23B824000, v11, v12, "Attaching the box rotation widget to the detection box...", v13, 2u);
    v18 = v17;
    v2 = v16;
    v7 = v15;
    v3 = v14;
    v6 = v27;
    MEMORY[0x23EEB0B70](v18, -1, -1);
  }

  v19 = *(a1 + 16);
  if (v19)
  {
    v20 = v19;
    dispatch thunk of ARView.scene.getter();

    dispatch thunk of Scene.anchors.getter();

    lazy protocol witness table accessor for type Scene.AnchorCollection and conformance Scene.AnchorCollection();
    dispatch thunk of Collection.startIndex.getter();
    dispatch thunk of Collection.endIndex.getter();
    if (v28[4] == v28[0])
    {
      (*(v7 + 8))(v9, v6);
    }

    else
    {
      v21 = dispatch thunk of Collection.subscript.read();

      v21(v28, 0);
      (*(v7 + 8))(v9, v6);
      HasHierarchy.addChild(_:preservingWorldTransform:)();
    }
  }

  BoundingBoxRotateManipulator.attachGestures()();

  dispatch thunk of Entity.__coreEntity.getter();
  v22 = MEMORY[0x277D841D8];
  MEMORY[0x23EEAC640](v28, MEMORY[0x277D841D8], MEMORY[0x277D841D8]);
  v23 = *(v3 + 8);
  v23(v5, v2);
  REHierarchicalFadeComponentGetComponentType();
  v24 = REEntityGetOrAddComponentByClass();
  REHierarchicalFadeComponentSetOpacity();
  MEMORY[0x23EEB00C0](v24);

  dispatch thunk of Entity.__coreEntity.getter();
  MEMORY[0x23EEAC640](v28, v22, v22);
  v23(v5, v2);
  REHierarchicalFadeComponentGetComponentType();
  v25 = REEntityGetOrAddComponentByClass();
  REHierarchicalFadeComponentSetOpacity();
  return MEMORY[0x23EEB00C0](v25);
}

Swift::Void __swiftcall BoundingBoxRotateManipulator.detach()()
{
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, logger);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_23B824000, v1, v2, "Detaching the box rotation widget from the detection box...", v3, 2u);
    MEMORY[0x23EEB0B70](v3, -1, -1);
  }

  type metadata accessor for Entity();
  HasHierarchy.removeFromParent(preservingWorldTransform:)(0);

  BoundingBoxRotateManipulator.detachGestures()();
}

Swift::Void __swiftcall BoundingBoxRotateManipulator.update(time:box:)(Swift::Double time, simd_float4x4 *box)
{
  v33 = v2;
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    Transform.init(matrix:)();
    v35 = v6;
    v31 = v7;
    _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #0 of BoundingBoxRotateManipulator.update(time:box:));
    v29 = v8;
    v9 = *(*(v5 + 240) + 48);
    swift_beginAccess();
    v10 = *(v9 + 40);
    if ((v10 & 0xC000000000000001) != 0)
    {

      v11 = MEMORY[0x23EEAFC40](4, v10);
    }

    else
    {
      if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) < 5uLL)
      {
        goto LABEL_15;
      }

      v11 = *(v10 + 64);
    }

    BoundingBoxScaleManipulator.FaceHandle.faceCenterPosLocal(extents:)();
    v27 = v12;
    v10 = *(v11 + 16);
    if (one-time initialization token for normals != -1)
    {
      swift_once();
    }

    if (*(static BoundingBoxScaleManipulator.Face.normals + 2) > v10)
    {
      v33 = *(static BoundingBoxScaleManipulator.Face.normals + v10 + 2);
      v13 = *(*(v5 + 240) + 48);
      swift_beginAccess();
      v10 = *(v13 + 40);
      if ((v10 & 0xC000000000000001) == 0)
      {
        if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
        {
          __break(1u);
          return;
        }

        goto LABEL_11;
      }

LABEL_16:

      MEMORY[0x23EEAFC40](1, v10);

LABEL_11:
      BoundingBoxScaleManipulator.FaceHandle.faceCenterPosLocal(extents:)();
      v39 = v14;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySfGMd, &_ss23_ContiguousArrayStorageCySfGMR);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_23B91A6D0;
      *(inited + 32) = __PAIR64__(v39, v27);
      *(inited + 40) = DWORD2(v27);
      _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(inited);
      v36 = v16;
      swift_setDeallocating();
      *v17.i64 = specialized simd_float4x4.init(translation:rotation:scale:)(v31, v35, v29);
      v26 = v17;
      v28 = v18;
      v30 = v19;
      v32 = v20;
      v21 = swift_initStackObject();
      *(v21 + 16) = xmmword_23B91A6E0;
      *(v21 + 32) = vadd_f32(vmul_f32(*v33.f32, vdup_n_s32(0x3CA3D70Au)), *&v36);
      *(v21 + 40) = vmuls_lane_f32(0.02, v33, 2) + *(&v36 + 2);
      *(v21 + 44) = 1065353216;
      _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD4VySfG_SaySfGTt1g5Tf4g_n(v21);
      v37 = v22;
      swift_setDeallocating();
      v23 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v26, v37.f32[0]), v28, *v37.f32, 1), v30, v37, 2), v32, v37, 3);
      v23.i32[3] = 0;
      v38 = v23;
      BoundingBoxRotateManipulator.updateAnimationIfNeeded(time:)(time);
      Transform.init()();
      v34 = BoundingBoxRotateManipulator.compositeScale.getter();
      _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #1 of BoundingBoxRotateManipulator.update(time:box:));
      v25.n128_u64[0] = vmulq_n_f32(v24, v34).u64[0];
      v25.n128_u64[1] = COERCE_UNSIGNED_INT(vmuls_lane_f32(v34, v24, 2));
      specialized simd_float4x4.init(translation:rotation:scale:)(v38, v35, v25);
      type metadata accessor for Entity();
      HasTransform.setTransformMatrix(_:relativeTo:)();

      return;
    }

    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }
}

uint64_t BoundingBoxRotateManipulator.updateAnimationIfNeeded(time:)(Swift::Double a1)
{
  v2 = v1;
  swift_beginAccess();
  outlined init with copy of Animation?(v1 + 200, &v20);
  if (!*(&v21 + 1))
  {
    return outlined destroy of Animation?(&v20);
  }

  outlined init with take of Animation(&v20, v23);
  v4 = __swift_project_boxed_opaque_existential_1(v23, v24);
  if (*(*v4 + 48) > *(*v4 + 64))
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, logger);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_23B824000, v6, v7, "Starting the rotate widget scale animation.", v8, 2u);
      MEMORY[0x23EEB0B70](v8, -1, -1);
    }

    v9 = __swift_project_boxed_opaque_existential_1(v23, v24);
    v10 = *v9;
    v11 = *(*v9 + 16) + a1;
    *(v10 + 48) = a1;
    *(v10 + 56) = v11;
  }

  __swift_project_boxed_opaque_existential_1(v23, v24);
  v12 = RampAnimation.update(time:)(a1);
  if (v12 <= 1.0)
  {
    v13 = v12;
  }

  else
  {
    v13 = 1.0;
  }

  if (v12 <= 0.0)
  {
    v13 = 0.0;
  }

  *(v2 + 248) = ((v13 * v13) / ((((v13 * v13) - v12) + ((v13 * v13) - v12)) + 1.0)) + 1.0;
  v14 = __swift_project_boxed_opaque_existential_1(v23, v24);
  if (*(*v14 + 56) < *(*v14 + 64))
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    __swift_project_value_buffer(v15, logger);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_23B824000, v16, v17, "Clearing the rotate widget scale animation.", v18, 2u);
      MEMORY[0x23EEB0B70](v18, -1, -1);
    }

    v22 = 0;
    v20 = 0u;
    v21 = 0u;
    swift_beginAccess();
    outlined assign with take of Animation?(&v20, v2 + 200);
    swift_endAccess();
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v23);
}

void BoundingBoxRotateManipulator.attachGestures()()
{
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, logger);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_23B824000, v3, v4, "Rotate widget: Adding pan gesture...", v5, 2u);
      MEMORY[0x23EEB0B70](v5, -1, -1);
    }

    v6 = *(v1 + 16);
    if (v6)
    {
      v7 = v6;
      v8 = BoundingBoxRotateManipulator.panGesture.getter();
      [v7 addGestureRecognizer_];
    }

    else
    {
      __break(1u);
    }
  }
}

void BoundingBoxRotateManipulator.detachGestures()()
{
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, logger);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_23B824000, v1, v2, "Rotate widget: Removing pan gesture...", v3, 2u);
    MEMORY[0x23EEB0B70](v3, -1, -1);
  }

  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = *(Strong + 16);
    v6 = v5;

    if (v5)
    {
      v7 = BoundingBoxRotateManipulator.panGesture.getter();
      [v6 removeGestureRecognizer_];
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t BoundingBoxRotateManipulator.hitTestWidget(at:)(double a1, double a2)
{
  v3 = v2;
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v5 = *(result + 16);
  v6 = v5;

  if (!v5)
  {
    return 0;
  }

  v7 = ARView.entities(at:)();
  v8 = v7;
  if (!(v7 >> 62))
  {
    v9 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9)
    {
      goto LABEL_5;
    }

    goto LABEL_25;
  }

LABEL_24:
  v9 = __CocoaSet.count.getter();
  if (!v9)
  {
LABEL_25:

LABEL_26:

    return 0;
  }

LABEL_5:
  v29 = v6;
  v6 = type metadata accessor for Entity();
  v10 = 0;
  v34 = v8 & 0xC000000000000001;
  v30 = v8 & 0xFFFFFFFFFFFFFF8;
  v11 = 0x27E189000uLL;
  v12 = logger;
  v31 = v9;
  v32 = v8;
  while (1)
  {
    if (v34)
    {
      MEMORY[0x23EEAFC40](v10, v8);
      v13 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        goto LABEL_22;
      }
    }

    else
    {
      if (v10 >= *(v30 + 16))
      {
        goto LABEL_23;
      }

      v13 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
LABEL_22:
        __break(1u);
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }
    }

    v35 = v13;
    if (*(v11 + 1664) != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, v12);

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v36 = v33;
      *v17 = 136315138;

      v18 = String.init<A>(describing:)();
      v20 = v12;
      v21 = v11;
      v22 = v3;
      v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, &v36);

      *(v17 + 4) = v23;
      v3 = v22;
      v11 = v21;
      v12 = v20;
      _os_log_impl(&dword_23B824000, v15, v16, "Checking hitTest on Entity: %s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v33);
      v8 = v32;
      MEMORY[0x23EEB0B70](v33, -1, -1);
      v24 = v17;
      v9 = v31;
      MEMORY[0x23EEB0B70](v24, -1, -1);
    }

    v25 = static Entity.== infix(_:_:)();

    if (v25)
    {
      break;
    }

    ++v10;
    if (v35 == v9)
    {

      goto LABEL_26;
    }
  }

  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&dword_23B824000, v26, v27, "Found the rotate widget collision Entity at the hit point!", v28, 2u);
    MEMORY[0x23EEB0B70](v28, -1, -1);
  }

  return 1;
}

void BoundingBoxRotateManipulator.beginDragGesture(at:)(double a1, double a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = (&v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (*(v2 + 192))
  {
    Strong = swift_weakLoadStrong();
    if (!Strong)
    {
      return;
    }

    v11 = Strong;
    if (!swift_weakLoadStrong() || (DetectModeBoxModel.currentCaptureBox.getter(&v72), , (v73 & 1) != 0))
    {

      return;
    }

    v12.n128_f64[0] = Transform.init(matrix:)();
    v53 = v13;
    v54 = v14;
    v55 = v12;
    *v15.i64 = specialized simd_float4x4.init(translation:rotation:scale:)(v13, v14, v12);
    v57 = v15;
    v58 = v16;
    v59 = v17;
    v60 = v18;
    _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD4VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #0 of BoundingBoxRotateManipulator.beginDragGesture(at:));
    v56 = v19;
    _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #1 of BoundingBoxRotateManipulator.beginDragGesture(at:));
    v61 = v20;
    v21 = *(v11 + 16);
    if (v21)
    {
      v22 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v57, v56.f32[0]), v58, *v56.f32, 1), v59, v56, 2), v60, v56, 3);
      v22.i32[3] = 0;
      v60 = v22;
      v23 = v21;
      specialized static Ray3D.screenPointToPlane(within:screenPoint:plane:)(a1, a2, *v60.i64, v61);
      v59 = v28;

      v29 = *(v11 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_detectBoxModel);
      if (!v29 || *(v29 + 24) != 2)
      {
        goto LABEL_23;
      }

      v30 = one-time initialization token for logger;

      if (v30 != -1)
      {
        swift_once();
      }

      v31 = type metadata accessor for Logger();
      __swift_project_value_buffer(v31, logger);
      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        *v34 = 0;
        _os_log_impl(&dword_23B824000, v32, v33, "Box rotation widget grabbed... switching to manual update mode.", v34, 2u);
        MEMORY[0x23EEB0B70](v34, -1, -1);
      }

      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
      *v9 = static OS_dispatch_queue.main.getter();
      (*(v7 + 104))(v9, *MEMORY[0x277D85200], v6);
      v35 = _dispatchPreconditionTest(_:)();
      (*(v7 + 8))(v9, v6);
      if (v35)
      {
        DetectModeBoxModel.performSwitchStateTransitions(from:to:)(*(v29 + 24), 3u);
        *(v29 + 24) = 3;

LABEL_23:
        v71 = 0;
        v36 = v54;
        *(v3 + 80) = v55;
        *(v3 + 96) = v36;
        v37 = v59;
        *(v3 + 112) = v53;
        *(v3 + 128) = v37;
        v38 = v60;
        *(v3 + 144) = v60;
        *(v3 + 160) = v38;
        *(v3 + 176) = v61;
        *(v3 + 192) = 0;
        v39 = type metadata accessor for RampAnimation();
        v40 = swift_allocObject();
        *(v40 + 48) = 0;
        *(v40 + 56) = 0;
        *(v40 + 64) = 0xFFF0000000000000;
        *(v40 + 24) = 0;
        *(v40 + 16) = 0x3FA999999999999ALL;
        *(v40 + 72) = 0;
        *(v40 + 32) = 0;
        *(v40 + 40) = 0;
        *&v64 = &protocol witness table for RampAnimation;
        *(&v63 + 1) = v39;
        *&v62 = v40;
        swift_beginAccess();
        outlined assign with take of Animation?(&v62, v3 + 200);
        swift_endAccess();
        if (one-time initialization token for logger != -1)
        {
          swift_once();
        }

        v41 = type metadata accessor for Logger();
        __swift_project_value_buffer(v41, logger);

        v42 = Logger.logObject.getter();
        v43 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v42, v43))
        {
          v44 = swift_slowAlloc();
          v45 = swift_slowAlloc();
          v70 = v45;
          *v44 = 136446210;
          v46 = *(v3 + 160);
          v66 = *(v3 + 144);
          v47 = *(v3 + 176);
          v67 = v46;
          v68 = v47;
          v69 = *(v3 + 192);
          v48 = *(v3 + 96);
          v62 = *(v3 + 80);
          v63 = v48;
          v49 = *(v3 + 128);
          v64 = *(v3 + 112);
          v65 = v49;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s19_RealityKit_SwiftUI28BoundingBoxRotateManipulatorC9DragState33_775A7FE6C6FA1F309878473FBDD25374LLVSgMd, &_s19_RealityKit_SwiftUI28BoundingBoxRotateManipulatorC9DragState33_775A7FE6C6FA1F309878473FBDD25374LLVSgMR);
          v50 = String.init<A>(describing:)();
          v52 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v50, v51, &v70);

          *(v44 + 4) = v52;
          _os_log_impl(&dword_23B824000, v42, v43, "Beginning drag on the rotate widget with dragState=%{public}s", v44, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v45);
          MEMORY[0x23EEB0B70](v45, -1, -1);
          MEMORY[0x23EEB0B70](v44, -1, -1);
        }

        return;
      }

      __break(1u);
    }

    __break(1u);
    return;
  }

  __break(1u);
  swift_once();
  v24 = type metadata accessor for Logger();
  __swift_project_value_buffer(v24, logger);
  v61.i64[0] = Logger.logObject.getter();
  v25 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v61.i64[0], v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&dword_23B824000, v61.i64[0], v25, "Can't project the start drag point onto the ground plane!", v26, 2u);
    MEMORY[0x23EEB0B70](v26, -1, -1);
  }

  v27 = v61.i64[0];
}

void BoundingBoxRotateManipulator.endDragGesture()()
{
  if (*(v0 + 192))
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    __swift_project_value_buffer(v1, logger);
    oslog = Logger.logObject.getter();
    v2 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(oslog, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&dword_23B824000, oslog, v2, "Box rotation widget endDragGesture() called, but not dragging.  Ignoring...", v3, 2u);
      MEMORY[0x23EEB0B70](v3, -1, -1);
    }
  }

  else
  {
    v4 = v0;
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, logger);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_23B824000, v6, v7, "Ending drag gesture on the rotate widget.", v8, 2u);
      MEMORY[0x23EEB0B70](v8, -1, -1);
    }

    v13 = 1;
    *(v4 + 80) = 0u;
    *(v4 + 96) = 0u;
    *(v4 + 112) = 0u;
    *(v4 + 128) = 0u;
    *(v4 + 144) = 0u;
    *(v4 + 160) = 0u;
    *(v4 + 176) = 0u;
    *(v4 + 192) = 1;
    v9 = type metadata accessor for RampAnimation();
    v10 = swift_allocObject();
    *(v10 + 48) = 0;
    *(v10 + 56) = 0;
    *(v10 + 64) = 0xFFF0000000000000;
    *(v10 + 24) = 1;
    *(v10 + 16) = 0x3FA999999999999ALL;
    *(v10 + 32) = 0;
    *(v10 + 40) = 0;
    *(v10 + 72) = 1065353216;
    v12[3] = v9;
    v12[4] = &protocol witness table for RampAnimation;
    v12[0] = v10;
    swift_beginAccess();
    outlined assign with take of Animation?(v12, v4 + 200);
    swift_endAccess();
  }
}

uint64_t BoundingBoxRotateManipulator.requestAsyncModelLoad()()
{
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, logger);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_23B824000, v1, v2, "Async loading rotate grabber...", v3, 2u);
    MEMORY[0x23EEB0B70](v3, -1, -1);
  }

  type metadata accessor for Entity();
  if (one-time initialization token for bundle != -1)
  {
    swift_once();
  }

  v4 = static BoundingBoxHelpers.bundle;
  MEMORY[0x23EEAD3D0](0x7247657461746F52, 0xED00007265626261, static BoundingBoxHelpers.bundle);
  swift_allocObject();
  swift_weakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit11LoadRequestCyAA11ModelEntityCGMd, &_s10RealityKit11LoadRequestCyAA11ModelEntityCGMR);
  lazy protocol witness table accessor for type LoadRequest<ModelEntity> and conformance LoadRequest<A>(&lazy protocol witness table cache variable for type LoadRequest<ModelEntity> and conformance LoadRequest<A>, &_s10RealityKit11LoadRequestCyAA11ModelEntityCGMd, &_s10RealityKit11LoadRequestCyAA11ModelEntityCGMR, MEMORY[0x277CDABA0]);
  Publisher.sink(receiveCompletion:receiveValue:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_23B824000, v5, v6, "Async loading front face indicator...", v7, 2u);
    MEMORY[0x23EEB0B70](v7, -1, -1);
  }

  MEMORY[0x23EEAD3D0](0xD000000000000012, 0x800000023B9247D0, v4);
  swift_allocObject();
  swift_weakInit();
  Publisher.sink(receiveCompletion:receiveValue:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();
}

uint64_t closure #2 in BoundingBoxRotateManipulator.requestAsyncModelLoad()(uint64_t *a1, uint64_t a2)
{
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, logger);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_23B824000, v3, v4, "... done loading rotate grabber.", v5, 2u);
    MEMORY[0x23EEB0B70](v5, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10RealityKit8Material_pGMd, &_ss23_ContiguousArrayStorageCy10RealityKit8Material_pGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_23B91A6F0;
  [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:1.0 green:0.0 blue:0.0 alpha:1.0];
  v7 = type metadata accessor for UnlitMaterial();
  v8 = MEMORY[0x277CDAC30];
  *(v6 + 56) = v7;
  *(v6 + 64) = v8;
  __swift_allocate_boxed_opaque_existential_1((v6 + 32));
  UnlitMaterial.init(color:)();
  type metadata accessor for ModelEntity();
  v9 = HasModel.model.modify();
  v11 = v10;
  v12 = type metadata accessor for ModelComponent();
  result = (*(*(v12 - 8) + 48))(v11, 1, v12);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    ModelComponent.materials.setter();
    v9(v14, 0);
    type metadata accessor for Entity();
    swift_allocObject();
    Entity.init()();
    HasHierarchy.addChild(_:preservingWorldTransform:)();
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {

      HasHierarchy.addChild(_:preservingWorldTransform:)();
    }

    _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #0 of closure #2 in BoundingBoxRotateManipulator.requestAsyncModelLoad());
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
    }

    HasTransform.setScale(_:relativeTo:)();

    _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #1 of closure #2 in BoundingBoxRotateManipulator.requestAsyncModelLoad());
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
    }

    HasTransform.setPosition(_:relativeTo:)();
  }

  return result;
}

uint64_t closure #4 in BoundingBoxRotateManipulator.requestAsyncModelLoad()(uint64_t *a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, logger);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_23B824000, v4, v5, "... done loading front face indicator.", v6, 2u);
      MEMORY[0x23EEB0B70](v6, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10RealityKit8Material_pGMd, &_ss23_ContiguousArrayStorageCy10RealityKit8Material_pGMR);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_23B91A6F0;
    type metadata accessor for BoundingBoxHelpers();
    static BoundingBoxHelpers.makeBoxMaterial()((v7 + 32));
    type metadata accessor for ModelEntity();
    v8 = HasModel.model.modify();
    v10 = v9;
    v11 = type metadata accessor for ModelComponent();
    result = (*(*(v11 - 8) + 48))(v10, 1, v11);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      ModelComponent.materials.setter();
      v8(v15, 0);
      type metadata accessor for Entity();

      HasHierarchy.addChild(_:preservingWorldTransform:)();

      _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #0 of closure #4 in BoundingBoxRotateManipulator.requestAsyncModelLoad());

      HasTransform.setScale(_:relativeTo:)();

      _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #1 of closure #4 in BoundingBoxRotateManipulator.requestAsyncModelLoad());
      v14 = v12;
      _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #2 of closure #4 in BoundingBoxRotateManipulator.requestAsyncModelLoad());
      simd_quaternion(v14, v13);

      HasTransform.setOrientation(_:relativeTo:)();

      _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #3 of closure #4 in BoundingBoxRotateManipulator.requestAsyncModelLoad());

      HasTransform.setPosition(_:relativeTo:)();
    }
  }

  return result;
}

uint64_t BoundingBoxRotateManipulator.deinit()
{

  swift_weakDestroy();
  swift_weakDestroy();

  outlined destroy of Animation?(v0 + 200);

  return v0;
}

uint64_t BoundingBoxRotateManipulator.__deallocating_deinit()
{
  BoundingBoxRotateManipulator.deinit();

  return swift_deallocClassInstance();
}

id DragFromPointGestureRecognizer.init(manipulator:onPan:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_weakInit();
  v6 = &v3[OBJC_IVAR____TtC19_RealityKit_SwiftUIP33_775A7FE6C6FA1F309878473FBDD2537430DragFromPointGestureRecognizer_startPoint];
  *v6 = 0;
  *(v6 + 1) = 0;
  v6[16] = 1;
  swift_weakAssign();
  v7 = &v3[OBJC_IVAR____TtC19_RealityKit_SwiftUIP33_775A7FE6C6FA1F309878473FBDD2537430DragFromPointGestureRecognizer_onPan];
  *v7 = a2;
  *(v7 + 1) = a3;
  v10.receiver = v3;
  v10.super_class = type metadata accessor for DragFromPointGestureRecognizer();

  v8 = objc_msgSendSuper2(&v10, sel_initWithTarget_action_, 0, 0);
  [v8 addTarget:v8 action:{sel_onPanInternal_, v10.receiver, v10.super_class}];
  [v8 setMaximumNumberOfTouches_];
  [v8 setDelegate_];

  return v8;
}

{
  swift_weakInit();
  v6 = &v3[OBJC_IVAR____TtC19_RealityKit_SwiftUIP33_4ABB148B5599ED86F84C6943D86F570D30DragFromPointGestureRecognizer_startPoint];
  *v6 = 0;
  *(v6 + 1) = 0;
  v6[16] = 1;
  swift_weakAssign();
  v7 = &v3[OBJC_IVAR____TtC19_RealityKit_SwiftUIP33_4ABB148B5599ED86F84C6943D86F570D30DragFromPointGestureRecognizer_onPan];
  *v7 = a2;
  *(v7 + 1) = a3;
  v10.receiver = v3;
  v10.super_class = type metadata accessor for DragFromPointGestureRecognizer();

  v8 = objc_msgSendSuper2(&v10, sel_initWithTarget_action_, 0, 0);
  [v8 addTarget:v8 action:{sel_onPanInternal_, v10.receiver, v10.super_class}];
  [v8 setMaximumNumberOfTouches_];
  [v8 setDelegate_];

  return v8;
}

void DragFromPointGestureRecognizer.touchesBegan(_:with:)(uint64_t a1, uint64_t a2)
{
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    if (*(Strong + 192))
    {
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UITouch, 0x277D75C68);
      lazy protocol witness table accessor for type UITouch and conformance NSObject();
      isa = Set._bridgeToObjectiveC()().super.isa;
      v45.receiver = v2;
      v45.super_class = type metadata accessor for DragFromPointGestureRecognizer();
      objc_msgSendSuper2(&v45, sel_touchesBegan_withEvent_, isa, a2);

      if ([v2 state] == 5)
      {
        if (one-time initialization token for logger != -1)
        {
          swift_once();
        }

        v7 = type metadata accessor for Logger();
        __swift_project_value_buffer(v7, logger);
        v8 = Logger.logObject.getter();
        v9 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v8, v9))
        {
          v10 = swift_slowAlloc();
          *v10 = 0;
          _os_log_impl(&dword_23B824000, v8, v9, "Rotation widget: touchesBegan called when the gesture was failed!!", v10, 2u);
          MEMORY[0x23EEB0B70](v10, -1, -1);
        }

        return;
      }

      if ((a1 & 0xC000000000000001) != 0)
      {
        if (__CocoaSet.count.getter() == 1)
        {
          goto LABEL_23;
        }
      }

      else if (*(a1 + 16) == 1)
      {
LABEL_23:
        v17 = specialized Collection.first.getter(a1);
        if (v17)
        {
          v18 = v17;
          v19 = [v2 view];
          [v18 locationInView_];
          v21 = v20;
          v23 = v22;

          v24 = v2;
          v25 = &v2[OBJC_IVAR____TtC19_RealityKit_SwiftUIP33_775A7FE6C6FA1F309878473FBDD2537430DragFromPointGestureRecognizer_startPoint];
          *v25 = v21;
          v25[1] = v23;
          *(v25 + 16) = 0;
          if (BoundingBoxRotateManipulator.hitTestWidget(at:)(v21, v23))
          {
            if (one-time initialization token for logger != -1)
            {
              swift_once();
            }

            v26 = type metadata accessor for Logger();
            __swift_project_value_buffer(v26, logger);
            v27 = v2;
            v28 = Logger.logObject.getter();
            v29 = static os_log_type_t.info.getter();

            if (os_log_type_enabled(v28, v29))
            {
              v30 = swift_slowAlloc();
              v31 = swift_slowAlloc();
              v44 = v31;
              *v30 = 136446210;
              __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7CGPointVSgMd, &_sSo7CGPointVSgMR);
              v32 = String.init<A>(describing:)();
              v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v33, &v44);

              *(v30 + 4) = v34;
              _os_log_impl(&dword_23B824000, v28, v29, "Begin drag gesture on rotation widget. startPoint=%{public}s", v30, 0xCu);
              __swift_destroy_boxed_opaque_existential_0Tm(v31);
              MEMORY[0x23EEB0B70](v31, -1, -1);
              MEMORY[0x23EEB0B70](v30, -1, -1);
            }

            if (v25[2])
            {
              __break(1u);
              return;
            }

            BoundingBoxRotateManipulator.beginDragGesture(at:)(*v25, v25[1]);
            [v27 setState_];
LABEL_46:

            return;
          }

          if (one-time initialization token for logger != -1)
          {
            swift_once();
          }

          v42 = type metadata accessor for Logger();
          __swift_project_value_buffer(v42, logger);
          v36 = Logger.logObject.getter();
          v37 = static os_log_type_t.error.getter();
          if (!os_log_type_enabled(v36, v37))
          {
LABEL_45:

            [v24 setState_];
            goto LABEL_46;
          }

          v38 = swift_slowAlloc();
          *v38 = 0;
          v39 = "Rotation widget: grabbed was nil!";
        }

        else
        {
          v24 = v2;
          v40 = &v2[OBJC_IVAR____TtC19_RealityKit_SwiftUIP33_775A7FE6C6FA1F309878473FBDD2537430DragFromPointGestureRecognizer_startPoint];
          *v40 = 0;
          *(v40 + 1) = 0;
          v40[16] = 1;
          if (one-time initialization token for logger != -1)
          {
            swift_once();
          }

          v41 = type metadata accessor for Logger();
          __swift_project_value_buffer(v41, logger);
          v36 = Logger.logObject.getter();
          v37 = static os_log_type_t.error.getter();
          if (!os_log_type_enabled(v36, v37))
          {
            goto LABEL_45;
          }

          v38 = swift_slowAlloc();
          *v38 = 0;
          v39 = "Rotation widget: The startPoint on grab was nil!";
        }

LABEL_44:
        _os_log_impl(&dword_23B824000, v36, v37, v39, v38, 2u);
        MEMORY[0x23EEB0B70](v38, -1, -1);
        goto LABEL_45;
      }

      v24 = v2;
      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      v35 = type metadata accessor for Logger();
      __swift_project_value_buffer(v35, logger);
      v36 = Logger.logObject.getter();
      v37 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v36, v37))
      {
        goto LABEL_45;
      }

      v38 = swift_slowAlloc();
      *v38 = 0;
      v39 = "Rotation widget: got more than 1 touch!";
      goto LABEL_44;
    }

    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, logger);
    oslog = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_23B824000, oslog, v15, "Rotation widget: One face handle is already grabbed!", v16, 2u);
      MEMORY[0x23EEB0B70](v16, -1, -1);
    }
  }

  else
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, logger);
    oslog = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_23B824000, oslog, v12, "Manipulator has been destroyed, exiting gesture callbacks...", v13, 2u);
      MEMORY[0x23EEB0B70](v13, -1, -1);
    }
  }
}

{
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, logger);
    oslog = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_23B824000, oslog, v10, "Manipulator has been destroyed, exiting gesture callbacks...", v11, 2u);
      MEMORY[0x23EEB0B70](v11, -1, -1);
    }

    goto LABEL_12;
  }

  if (*(*(Strong + 48) + 32))
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, logger);
    oslog = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_23B824000, oslog, v7, "One face handle is already grabbed!", v8, 2u);
      MEMORY[0x23EEB0B70](v8, -1, -1);
    }

LABEL_12:

    return;
  }

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UITouch, 0x277D75C68);
  lazy protocol witness table accessor for type UITouch and conformance NSObject();
  isa = Set._bridgeToObjectiveC()().super.isa;
  v54.receiver = v2;
  v54.super_class = type metadata accessor for DragFromPointGestureRecognizer();
  objc_msgSendSuper2(&v54, sel_touchesBegan_withEvent_, isa, a2);

  if ([v2 state] != 5)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      if (__CocoaSet.count.getter() == 1)
      {
LABEL_23:
        v17 = specialized Collection.first.getter(a1);
        if (v17)
        {
          v18 = v17;
          v19 = [v2 view];
          [v18 locationInView_];
          v21 = v20;
          v23 = v22;

          v24 = &v2[OBJC_IVAR____TtC19_RealityKit_SwiftUIP33_4ABB148B5599ED86F84C6943D86F570D30DragFromPointGestureRecognizer_startPoint];
          *v24 = v21;
          v24[1] = v23;
          *(v24 + 16) = 0;
          v25 = v2;
          DragFromPointGestureRecognizer.findFaceHandle(at:)(v21, v23);
          if (v26)
          {
            if (one-time initialization token for logger != -1)
            {
              swift_once();
            }

            v27 = type metadata accessor for Logger();
            __swift_project_value_buffer(v27, logger);

            v28 = v2;
            v29 = Logger.logObject.getter();
            v30 = static os_log_type_t.info.getter();

            if (os_log_type_enabled(v29, v30))
            {
              v31 = swift_slowAlloc();
              v32 = swift_slowAlloc();
              v53 = v32;
              *v31 = 136446466;

              __swift_instantiateConcreteTypeFromMangledNameV2(&_s19_RealityKit_SwiftUI27BoundingBoxScaleManipulatorC10FaceHandleCSgMd, &_s19_RealityKit_SwiftUI27BoundingBoxScaleManipulatorC10FaceHandleCSgMR);
              v33 = String.init<A>(describing:)();
              v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v34, &v53);

              *(v31 + 4) = v35;
              *(v31 + 12) = 2082;
              __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7CGPointVSgMd, &_sSo7CGPointVSgMR);
              v36 = String.init<A>(describing:)();
              v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v37, &v53);

              *(v31 + 14) = v38;
              _os_log_impl(&dword_23B824000, v29, v30, "Begin drag gesture handle=%{public}s startPoint=%{public}s", v31, 0x16u);
              swift_arrayDestroy();
              MEMORY[0x23EEB0B70](v32, -1, -1);
              MEMORY[0x23EEB0B70](v31, -1, -1);
            }

            BoundingBoxScaleManipulator.beginDragGesture(handle:)(v39);

            [v28 setState_];
          }

          else
          {
            if (one-time initialization token for logger != -1)
            {
              swift_once();
            }

            v48 = type metadata accessor for Logger();
            __swift_project_value_buffer(v48, logger);
            v49 = Logger.logObject.getter();
            v50 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v49, v50))
            {
              v51 = swift_slowAlloc();
              *v51 = 0;
              _os_log_impl(&dword_23B824000, v49, v50, "Scale widget: The face handle on grab was nil!", v51, 2u);
              MEMORY[0x23EEB0B70](v51, -1, -1);
            }

            [v25 setState_];
          }

          goto LABEL_41;
        }

        v40 = v2;
        v46 = &v2[OBJC_IVAR____TtC19_RealityKit_SwiftUIP33_4ABB148B5599ED86F84C6943D86F570D30DragFromPointGestureRecognizer_startPoint];
        *v46 = 0;
        *(v46 + 1) = 0;
        v46[16] = 1;
        if (one-time initialization token for logger != -1)
        {
          swift_once();
        }

        v47 = type metadata accessor for Logger();
        __swift_project_value_buffer(v47, logger);
        v42 = Logger.logObject.getter();
        v43 = static os_log_type_t.error.getter();
        if (!os_log_type_enabled(v42, v43))
        {
LABEL_40:

          [v40 setState_];
LABEL_41:

          return;
        }

        v44 = swift_slowAlloc();
        *v44 = 0;
        v45 = "Scale widget: The startPoint on grab was nil!";
LABEL_39:
        _os_log_impl(&dword_23B824000, v42, v43, v45, v44, 2u);
        MEMORY[0x23EEB0B70](v44, -1, -1);
        goto LABEL_40;
      }
    }

    else if (*(a1 + 16) == 1)
    {
      goto LABEL_23;
    }

    v40 = v2;
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v41 = type metadata accessor for Logger();
    __swift_project_value_buffer(v41, logger);
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v42, v43))
    {
      goto LABEL_40;
    }

    v44 = swift_slowAlloc();
    *v44 = 0;
    v45 = "Scale widget: got more than 1 touch!";
    goto LABEL_39;
  }

  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  __swift_project_value_buffer(v13, logger);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_23B824000, v14, v15, "Scale widget: touchesBegan called when the gesture was failed!", v16, 2u);
    MEMORY[0x23EEB0B70](v16, -1, -1);
  }
}

void DragFromPointGestureRecognizer.touchesMoved(_:with:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UITouch, 0x277D75C68);
  lazy protocol witness table accessor for type UITouch and conformance NSObject();
  isa = Set._bridgeToObjectiveC()().super.isa;
  v16.receiver = v2;
  v16.super_class = type metadata accessor for DragFromPointGestureRecognizer();
  objc_msgSendSuper2(&v16, sel_touchesMoved_withEvent_, isa, a2);

  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    if ((*(Strong + 192) & 1) == 0)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        if (__CocoaSet.count.getter() < 2)
        {
          goto LABEL_17;
        }

LABEL_12:
        v11 = v2;
        if (one-time initialization token for logger != -1)
        {
          swift_once();
        }

        v12 = type metadata accessor for Logger();
        __swift_project_value_buffer(v12, logger);
        v13 = Logger.logObject.getter();
        v14 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v13, v14))
        {
          v15 = swift_slowAlloc();
          *v15 = 0;
          _os_log_impl(&dword_23B824000, v13, v14, "Box rotate widget: Drag got an extra touch!  failing!", v15, 2u);
          MEMORY[0x23EEB0B70](v15, -1, -1);
        }

        [v11 setState_];
        goto LABEL_17;
      }

      if (*(a1 + 16) >= 2)
      {
        goto LABEL_12;
      }
    }

LABEL_17:

    return;
  }

  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, logger);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_23B824000, v8, v9, "Manipulator has been destroyed, exiting gesture callbacks...", v10, 2u);
    MEMORY[0x23EEB0B70](v10, -1, -1);
  }
}

uint64_t @objc DragFromPointGestureRecognizer.touchesBegan(_:with:)(void *a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(uint64_t, id))
{
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UITouch, 0x277D75C68);
  lazy protocol witness table accessor for type UITouch and conformance NSObject();
  v8 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = a4;
  v10 = a1;
  a5(v8, v9);
}

{
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UITouch, 0x277D75C68);
  lazy protocol witness table accessor for type UITouch and conformance NSObject();
  v8 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = a4;
  v10 = a1;
  a5(v8, v9);
}

void DragFromPointGestureRecognizer.touchesEnded(_:with:)(uint64_t a1, uint64_t a2, SEL *a3, const char *a4)
{
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UITouch, 0x277D75C68);
  lazy protocol witness table accessor for type UITouch and conformance NSObject();
  isa = Set._bridgeToObjectiveC()().super.isa;
  v19.receiver = v4;
  v19.super_class = type metadata accessor for DragFromPointGestureRecognizer();
  objc_msgSendSuper2(&v19, *a3, isa, a2);

  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    if ([v4 state] == 1 && (*(v10 + 192) & 1) == 0)
    {
      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      v11 = type metadata accessor for Logger();
      __swift_project_value_buffer(v11, logger);
      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&dword_23B824000, v12, v13, a4, v14, 2u);
        MEMORY[0x23EEB0B70](v14, -1, -1);
      }

      BoundingBoxRotateManipulator.endDragGesture()();
    }
  }

  else
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    __swift_project_value_buffer(v15, logger);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_23B824000, v16, v17, "Manipulator has been destroyed, exiting gesture callbacks...", v18, 2u);
      MEMORY[0x23EEB0B70](v18, -1, -1);
    }
  }
}

uint64_t @objc DragFromPointGestureRecognizer.touchesEnded(_:with:)(void *a1, uint64_t a2, uint64_t a3, void *a4, SEL *a5, const char *a6)
{
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UITouch, 0x277D75C68);
  lazy protocol witness table accessor for type UITouch and conformance NSObject();
  v10 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = a4;
  v12 = a1;
  DragFromPointGestureRecognizer.touchesEnded(_:with:)(v10, v11, a5, a6);
}

void DragFromPointGestureRecognizer.reset()()
{
  if (swift_weakLoadStrong())
  {
    BoundingBoxRotateManipulator.endDragGesture()();
    v5.receiver = v0;
    v5.super_class = type metadata accessor for DragFromPointGestureRecognizer();
    objc_msgSendSuper2(&v5, sel_reset);
  }

  else
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    __swift_project_value_buffer(v1, logger);
    oslog = Logger.logObject.getter();
    v2 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&dword_23B824000, oslog, v2, "Manipulator has been destroyed, exiting gesture callbacks...", v3, 2u);
      MEMORY[0x23EEB0B70](v3, -1, -1);
    }
  }
}

{
  v1 = v0;
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = *(Strong + 48);
    v4 = Strong;
    BoundingBoxScaleManipulator.FaceHandleContainer.updateGrabbedHandleState(_:)(0);
    *(v3 + 32) = 0;

    *(v4 + 176) = 0u;
    *(v4 + 192) = 0u;
    *(v4 + 160) = 0u;
    *(v4 + 208) = 1;
    v9.receiver = v1;
    v9.super_class = type metadata accessor for DragFromPointGestureRecognizer();
    objc_msgSendSuper2(&v9, sel_reset);
  }

  else
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, logger);
    oslog = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_23B824000, oslog, v6, "Manipulator has been destroyed, exiting gesture callbacks...", v7, 2u);
      MEMORY[0x23EEB0B70](v7, -1, -1);
    }
  }
}

uint64_t DragFromPointGestureRecognizer.gestureRecognizerShouldBegin(_:)(void *a1)
{
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSObject, 0x277D82BB8);
  if ((static NSObject.== infix(_:_:)() & 1) == 0)
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, logger);
    v8 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v8, v13))
    {
      goto LABEL_23;
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = "delegate got a gestureRecognizer that wasn't self!";
LABEL_17:
    _os_log_impl(&dword_23B824000, v8, v13, v15, v14, 2u);
    MEMORY[0x23EEB0B70](v14, -1, -1);
LABEL_23:
    v11 = 0;
    goto LABEL_24;
  }

  if (!swift_weakLoadStrong())
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    __swift_project_value_buffer(v16, logger);
    v8 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v8, v13))
    {
      goto LABEL_23;
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = "Manipulator has been destroyed, exiting gesture callbacks...";
    goto LABEL_17;
  }

  v2 = [a1 view];
  [a1 locationInView_];
  v4 = v3;
  v6 = v5;

  if ((BoundingBoxRotateManipulator.hitTestWidget(at:)(v4, v6) & 1) == 0)
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    __swift_project_value_buffer(v17, logger);
    v8 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_23B824000, v8, v18, "Hit test missed the widget. we should not begin the drag.", v19, 2u);
      MEMORY[0x23EEB0B70](v19, -1, -1);
    }

    goto LABEL_23;
  }

  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, logger);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_23B824000, v8, v9, "Hit test hit the widget. we should begin the drag.", v10, 2u);
    MEMORY[0x23EEB0B70](v10, -1, -1);
  }

  v11 = 1;
LABEL_24:

  return v11;
}

id DragFromPointGestureRecognizer.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DragFromPointGestureRecognizer();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DragFromPointGestureRecognizer();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for DragFromPointGestureRecognizer()
{
  return objc_opt_self();
}

{
  return objc_opt_self();
}

__n128 __swift_memcpy112_16(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t getEnumTagSinglePayload for BoundingBoxRotateManipulator.DragState(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 112))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for BoundingBoxRotateManipulator.DragState(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 112) = v3;
  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

unint64_t lazy protocol witness table accessor for type UITouch and conformance NSObject()
{
  result = lazy protocol witness table cache variable for type UITouch and conformance NSObject;
  if (!lazy protocol witness table cache variable for type UITouch and conformance NSObject)
  {
    type metadata accessor for NSObject(255, &lazy cache variable for type metadata for UITouch, 0x277D75C68);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UITouch and conformance NSObject);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

void specialized BoundingBoxRotateManipulator.duringDragGesture(startPoint:currentPoint:)(double a1, double a2)
{
  if (*(v2 + 192))
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, logger);
    oslog = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_23B824000, oslog, v4, "Box rotation widget duringDragGesture() called, but isGrabbed is false!", v5, 2u);
      MEMORY[0x23EEB0B70](v5, -1, -1);
    }
  }

  else
  {
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      if (*(v2 + 192))
      {
      }

      else
      {
        v9 = *(Strong + 16);
        if (v9)
        {
          v10 = *(v2 + 128);
          v41 = *(v2 + 80);
          v40 = *(v2 + 96);
          v39 = *(v2 + 112);
          v11.i64[0] = v10;
          v11.i64[1] = *(v2 + 136);
          v44 = v11;
          v12 = *(v2 + 144);
          v11.i64[0] = v12;
          v11.i64[1] = *(v2 + 152);
          v42 = v11;
          *oslogc = *(v2 + 176);
          v46 = *(v2 + 160);
          v13 = v9;
          specialized static Ray3D.screenPointToPlane(within:screenPoint:plane:)(a1, a2, v46, *oslogc);
          *osloga = v14;

          v15.i64[0] = __PAIR64__(v44.u32[1], v10);
          v16.i64[0] = __PAIR64__(v42.u32[1], v12);
          v16.i64[1] = vextq_s8(v42, v42, 8uLL).u64[0];
          v15.i64[1] = vextq_s8(v44, v44, 8uLL).u64[0];
          v17 = vsubq_f32(v15, v16);
          v18 = vmulq_f32(v17, v17);
          v15.f32[0] = vaddv_f32(*v18.f32);
          *v18.f32 = vrsqrte_f32(COERCE_UNSIGNED_INT(v18.f32[2] + v15.f32[0]));
          *v18.f32 = vmul_f32(*v18.f32, vrsqrts_f32(COERCE_UNSIGNED_INT(v18.f32[2] + v15.f32[0]), vmul_f32(*v18.f32, *v18.f32)));
          LODWORD(v19) = vmul_f32(*v18.f32, vrsqrts_f32(COERCE_UNSIGNED_INT(v18.f32[2] + v15.f32[0]), vmul_f32(*v18.f32, *v18.f32))).u32[0];
          v20 = vsubq_f32(*osloga, v16);
          v21 = vmulq_f32(v20, v20);
          v15.f32[0] = v21.f32[2] + vaddv_f32(*v21.f32);
          *v21.f32 = vrsqrte_f32(v15.u32[0]);
          *v21.f32 = vmul_f32(*v21.f32, vrsqrts_f32(v15.u32[0], vmul_f32(*v21.f32, *v21.f32)));
          LODWORD(v22) = vmul_f32(*v21.f32, vrsqrts_f32(v15.u32[0], vmul_f32(*v21.f32, *v21.f32))).u32[0];
          if (one-time initialization token for logger != -1)
          {
            v48 = v19;
            *oslogd = v17;
            v43 = v22;
            v45 = v20;
            swift_once();
            v22 = v43;
            v20 = v45;
            v19 = v48;
            v17 = *oslogd;
          }

          v47 = vmulq_n_f32(v20, v22);
          oslogb = vmulq_n_f32(v17, v19);
          v23 = type metadata accessor for Logger();
          __swift_project_value_buffer(v23, logger);
          v24 = Logger.logObject.getter();
          v25 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v24, v25))
          {
            v26 = swift_slowAlloc();
            v27 = swift_slowAlloc();
            v54[0] = v27;
            *v26 = 136446466;
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD3VySfGMd, &_ss5SIMD3VySfGMR);
            lazy protocol witness table accessor for type LoadRequest<ModelEntity> and conformance LoadRequest<A>(&lazy protocol witness table cache variable for type SIMD3<Float> and conformance SIMD3<A>, &_ss5SIMD3VySfGMd, &_ss5SIMD3VySfGMR, MEMORY[0x277D84B08]);
            v28 = SIMD.description.getter();
            v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v29, v54);

            *(v26 + 4) = v30;
            *(v26 + 12) = 2082;
            v31 = SIMD.description.getter();
            v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v32, v54);

            *(v26 + 14) = v33;
            _os_log_impl(&dword_23B824000, v24, v25, "startUnit = %{public}s  currentUnit: %{public}s", v26, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x23EEB0B70](v27, -1, -1);
            MEMORY[0x23EEB0B70](v26, -1, -1);
          }

          if (swift_weakLoadStrong())
          {
            *v34.i64 = simd_quaternion(oslogb, v47);
            v35 = vnegq_f32(v34);
            v36 = vtrn2q_s32(v34, vtrn1q_s32(v34, v35));
            v37 = vrev64q_s32(v34);
            v37.i32[0] = v35.i32[1];
            v37.i32[3] = v35.i32[2];
            specialized simd_float4x4.init(translation:rotation:scale:)(v39, vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v34, v40, 3), v37, v40, 2), vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v34, v35, 8uLL), *v40.f32, 1), vextq_s8(v36, v36, 8uLL), v40.f32[0])), v41);
            DetectModeBoxModel.setBoundingBoxMatrix(box:)(v38);
          }
        }

        else
        {
          __break(1u);
        }
      }
    }
  }
}

uint64_t specialized BoundingBoxRotateManipulator.init(parent:)(uint64_t a1)
{
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit18CollisionComponentVSgMd, &_s10RealityKit18CollisionComponentVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v24 - v4;
  v6 = type metadata accessor for CollisionFilter();
  MEMORY[0x28223BE20](v6 - 8);
  v27 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CollisionComponent.Mode();
  v25 = *(v8 - 8);
  v26 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for CollisionComponent();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Entity();
  swift_allocObject();
  *(v1 + 16) = Entity.init()();
  swift_allocObject();
  v15 = Entity.init()();
  v16 = MEMORY[0x277D84FA0];
  *(v1 + 32) = v15;
  *(v1 + 40) = v16;
  swift_weakInit();
  swift_weakInit();
  *(v1 + 64) = 0x3E8000003F800000;
  *(v1 + 72) = 0;
  v28[32] = 1;
  *(v1 + 80) = 0u;
  *(v1 + 96) = 0u;
  *(v1 + 112) = 0u;
  *(v1 + 128) = 0u;
  *(v1 + 144) = 0u;
  *(v1 + 160) = 0u;
  *(v1 + 176) = 0u;
  *(v1 + 192) = 1;
  *(v1 + 200) = 0u;
  *(v1 + 216) = 0u;
  *(v1 + 232) = 0;
  *(v1 + 240) = 0x3FA999999999999ALL;
  *(v1 + 248) = 0x418C00003F800000;
  *(v1 + 256) = 0;
  *(v1 + 264) = 0;
  *(v1 + 272) = 0;
  *(v1 + 280) = 0;
  swift_weakAssign();
  swift_allocObject();
  *(v1 + 24) = Entity.init()();
  BoundingBoxRotateManipulator.requestAsyncModelLoad()();
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  __swift_project_value_buffer(v17, logger);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_23B824000, v18, v19, "Setting up a hittable sphere for the rotate widget...", v20, 2u);
    MEMORY[0x23EEB0B70](v20, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_23B91A700;
  type metadata accessor for ShapeResource();
  *(v21 + 32) = MEMORY[0x23EEAC950](0.028571);
  (*(v25 + 104))(v10, *MEMORY[0x277CDADC0], v26);
  static CollisionFilter.default.getter();
  CollisionComponent.init(shapes:mode:filter:)();
  (*(v12 + 16))(v5, v14, v11);
  (*(v12 + 56))(v5, 0, 1, v11);

  v22 = dispatch thunk of Entity.components.modify();
  Entity.ComponentSet.subscript.setter();
  v22(v28, 0);

  HasHierarchy.addChild(_:preservingWorldTransform:)();

  (*(v12 + 8))(v14, v11);
  return v2;
}

double simd_quaternion(float32x4_t a1, float32x4_t a2)
{
  v2 = vmulq_f32(a1, a2);
  if ((v2.f32[2] + vaddv_f32(*v2.f32)) >= 0.0)
  {
    v34 = vaddq_f32(a1, a2);
    v35 = vmulq_f32(v34, v34);
    *&v36 = v35.f32[2] + vaddv_f32(*v35.f32);
    *v35.f32 = vrsqrte_f32(v36);
    *v35.f32 = vmul_f32(*v35.f32, vrsqrts_f32(v36, vmul_f32(*v35.f32, *v35.f32)));
    v37 = vmulq_n_f32(v34, vmul_f32(*v35.f32, vrsqrts_f32(v36, vmul_f32(*v35.f32, *v35.f32))).f32[0]);
    v38 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v37, v37), v37, 0xCuLL), vnegq_f32(a1)), v37, vextq_s8(vuzp1q_s32(a1, a1), a1, 0xCuLL));
    v33 = vextq_s8(vuzp1q_s32(v38, v38), v38, 0xCuLL).u64[0];
  }

  else
  {
    v4 = vmulq_f32(a1, a1);
    v3 = vaddv_f32(*v4.f32);
    v4.i32[1] = 0;
    *&v5 = v4.f32[2] + v3;
    v6 = vrsqrte_f32(COERCE_UNSIGNED_INT(v4.f32[2] + v3));
    v7 = vmul_f32(v6, vrsqrts_f32(v5, vmul_f32(v6, v6)));
    v8 = vmulq_n_f32(a1, vmul_f32(v7, vrsqrts_f32(v5, vmul_f32(v7, v7))).f32[0]);
    v9 = vmulq_f32(a2, a2);
    *&v10 = v9.f32[2] + vaddv_f32(*v9.f32);
    *v9.f32 = vrsqrte_f32(v10);
    *v9.f32 = vmul_f32(*v9.f32, vrsqrts_f32(v10, vmul_f32(*v9.f32, *v9.f32)));
    v11 = vaddq_f32(v8, vmulq_n_f32(a2, vmul_f32(*v9.f32, vrsqrts_f32(v10, vmul_f32(*v9.f32, *v9.f32))).f32[0]));
    v12 = vmulq_f32(v11, v11);
    v13 = v12.f32[2] + vaddv_f32(*v12.f32);
    if (v13 <= 1.4211e-14)
    {
      v39 = vabsq_f32(a1);
      v40 = v39.f32[1];
      v41 = v39.f32[2];
      if (v39.f32[0] > v39.f32[1] || v39.f32[0] > v39.f32[2])
      {
        v42 = vextq_s8(vuzp1q_s32(a1, a1), a1, 0xCuLL);
        if (v40 <= v41)
        {
          v43 = vmulq_f32(a1, xmmword_23B91A730);
          v44 = xmmword_23B91A740;
        }

        else
        {
          v43 = vmulq_f32(a1, xmmword_23B91A750);
          v44 = xmmword_23B91A760;
        }
      }

      else
      {
        v42 = vextq_s8(vuzp1q_s32(a1, a1), a1, 0xCuLL);
        v43 = vmulq_f32(a1, xmmword_23B91A710);
        v44 = xmmword_23B91A720;
      }

      v45 = vmlaq_f32(v43, v44, v42);
      v46 = vextq_s8(vuzp1q_s32(v45, v45), v45, 0xCuLL);
      v47 = vmulq_f32(v45, v45);
      *&v48 = v47.f32[1] + (v47.f32[2] + v47.f32[0]);
      *v47.f32 = vrsqrte_f32(v48);
      *v47.f32 = vmul_f32(*v47.f32, vrsqrts_f32(v48, vmul_f32(*v47.f32, *v47.f32)));
      v33 = vmulq_n_f32(v46, vmul_f32(*v47.f32, vrsqrts_f32(v48, vmul_f32(*v47.f32, *v47.f32))).f32[0]).u64[0];
    }

    else
    {
      v14 = v13;
      v15 = vrsqrte_f32(LODWORD(v13));
      v16 = vmul_f32(v15, vrsqrts_f32(LODWORD(v14), vmul_f32(v15, v15)));
      v17 = vmulq_n_f32(v11, vmul_f32(v16, vrsqrts_f32(LODWORD(v14), vmul_f32(v16, v16))).f32[0]);
      v18 = vaddq_f32(a1, v17);
      v19 = vmulq_f32(v18, v18);
      *&v20 = v19.f32[2] + vaddv_f32(*v19.f32);
      *v19.f32 = vrsqrte_f32(v20);
      *v19.f32 = vmul_f32(*v19.f32, vrsqrts_f32(v20, vmul_f32(*v19.f32, *v19.f32)));
      v21 = vmulq_n_f32(v18, vmul_f32(*v19.f32, vrsqrts_f32(v20, vmul_f32(*v19.f32, *v19.f32))).f32[0]);
      v22 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v21, v21), v21, 0xCuLL), vnegq_f32(a1)), v21, vextq_s8(vuzp1q_s32(a1, a1), a1, 0xCuLL));
      v23 = vmulq_f32(v21, a1);
      v24 = vaddq_f32(a2, v17);
      v25 = vmulq_f32(v24, v24);
      v4.f32[0] = v25.f32[2] + vaddv_f32(*v25.f32);
      *v25.f32 = vrsqrte_f32(*v4.f32);
      *v25.f32 = vmul_f32(*v25.f32, vrsqrts_f32(*v4.f32, vmul_f32(*v25.f32, *v25.f32)));
      v26 = vmulq_n_f32(v24, vmul_f32(*v25.f32, vrsqrts_f32(*v4.f32, vmul_f32(*v25.f32, *v25.f32))).f32[0]);
      v27 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v26, v26), v26, 0xCuLL), vnegq_f32(v17)), v26, vextq_s8(vuzp1q_s32(v17, v17), v17, 0xCuLL));
      v28 = vextq_s8(vuzp1q_s32(v27, v27), v27, 0xCuLL);
      v29 = vmulq_f32(v17, v26);
      v28.f32[3] = v29.f32[2] + vaddv_f32(*v29.f32);
      v30 = vnegq_f32(v28);
      v31 = vtrn2q_s32(v28, vtrn1q_s32(v28, v30));
      v32 = vrev64q_s32(v28);
      v32.i32[0] = v30.i32[1];
      v32.i32[3] = v30.i32[2];
      v33 = vaddq_f32(vmlaq_lane_f32(vmulq_n_f32(v28, v23.f32[2] + vaddv_f32(*v23.f32)), v32, *v22.f32, 1), vmlaq_laneq_f32(vmulq_n_f32(vextq_s8(v28, v30, 8uLL), v22.f32[0]), vextq_s8(v31, v31, 8uLL), v22, 2)).u64[0];
    }
  }

  return *&v33;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t outlined assign with take of Animation?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19_RealityKit_SwiftUI9Animation_pSgMd, &_s19_RealityKit_SwiftUI9Animation_pSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for NSObject(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t outlined init with copy of Animation?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19_RealityKit_SwiftUI9Animation_pSgMd, &_s19_RealityKit_SwiftUI9Animation_pSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of Animation?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19_RealityKit_SwiftUI9Animation_pSgMd, &_s19_RealityKit_SwiftUI9Animation_pSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with take of Animation(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0Tm(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

unint64_t lazy protocol witness table accessor for type Scene.AnchorCollection and conformance Scene.AnchorCollection()
{
  result = lazy protocol witness table cache variable for type Scene.AnchorCollection and conformance Scene.AnchorCollection;
  if (!lazy protocol witness table cache variable for type Scene.AnchorCollection and conformance Scene.AnchorCollection)
  {
    type metadata accessor for Scene.AnchorCollection();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Scene.AnchorCollection and conformance Scene.AnchorCollection);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type LoadRequest<ModelEntity> and conformance LoadRequest<A>(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t Sphere.createSurfaceSamples(radialSegments:verticalSegments:)(uint64_t result, uint64_t a2, __n128 a3, float a4)
{
  v4 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v4 < 0)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (a2 != -1)
  {
    v5 = result + 1;
    if (__OFADD__(result, 1))
    {
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    if (v5 < 0)
    {
LABEL_23:
      __break(1u);
      return result;
    }

    v7 = 0;
    v8 = 6.2832 / result;
    v9 = MEMORY[0x277D84F90];
    v10 = 3.1416 / a2;
    while (1)
    {
      v11 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      if (v5)
      {
        v12 = __sincosf_stret(1.5708 - (v10 * v7));
        v13 = 0;
        do
        {
          v14 = __sincosf_stret(v8 * v13);
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v9 + 16) + 1, 1, v9);
            v9 = result;
          }

          v16 = *(v9 + 16);
          v15 = *(v9 + 24);
          if (v16 >= v15 >> 1)
          {
            result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1, v9);
            v9 = result;
          }

          ++v13;
          *&v17 = vadd_f32(a3.n128_u64[0], vmul_n_f32(__PAIR64__(LODWORD(v14.__sinval), LODWORD(v14.__cosval)), v12.__cosval * a4));
          *(&v17 + 1) = COERCE_UNSIGNED_INT(a3.n128_f32[2] + (v12.__sinval * a4));
          *(v9 + 16) = v16 + 1;
          *(v9 + 16 * v16 + 32) = v17;
        }

        while (v5 != v13);
      }

      v7 = v11;
      if (v11 == v4)
      {
        return v9;
      }
    }

    __break(1u);
    goto LABEL_20;
  }

  return MEMORY[0x277D84F90];
}

__n128 __swift_memcpy20_16(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u32[0] = a2[1].n128_u32[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for Sphere(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 20))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for Sphere(uint64_t result, int a2, int a3)
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

  *(result + 20) = v3;
  return result;
}

uint64_t View.realityViewLayoutBehavior(_:)(char *a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  View.environment<A>(_:_:)();
}

void *EnvironmentValues.realityViewLayoutOption.getter(uint64_t x0_0, uint64_t a2, uint64_t a3)
{
  lazy protocol witness table accessor for type EnvironmentValues.RealityViewLayoutOptionKey and conformance EnvironmentValues.RealityViewLayoutOptionKey(x0_0, a2, a3);

  return EnvironmentValues.subscript.getter();
}

void *key path getter for EnvironmentValues.realityViewLayoutOption : EnvironmentValues@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  lazy protocol witness table accessor for type EnvironmentValues.RealityViewLayoutOptionKey and conformance EnvironmentValues.RealityViewLayoutOptionKey(a2, a3, a4);
  result = EnvironmentValues.subscript.getter();
  *a1 = v6;
  return result;
}

uint64_t getEnumTagSinglePayload for RealityViewLayoutOption(unsigned __int8 *a1, int a2)
{
  if (a2)
  {
    if ((a2 + 255) >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 255) >> 8 < 0xFF)
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
        return (*a1 | (v4 << 8)) - 255;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (*(a1 + 1))
      {
        return (*a1 | (v4 << 8)) - 255;
      }
    }

    else
    {
      v4 = a1[1];
      if (a1[1])
      {
        return (*a1 | (v4 << 8)) - 255;
      }
    }
  }

  return 0;
}

uint64_t storeEnumTagSinglePayload for RealityViewLayoutOption(uint64_t result, int a2, int a3)
{
  if ((a3 + 255) >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 255) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    v5 = ((a2 - 1) >> 8) + 1;
    *result = a2 - 1;
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
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *(result + 1) = 0;
    }

    else
    {
      *(result + 1) = 0;
    }
  }

  else if (v4)
  {
    *(result + 1) = 0;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<RealityViewLayoutOption> and conformance _EnvironmentKeyWritingModifier<A>()
{
  result = lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<RealityViewLayoutOption> and conformance _EnvironmentKeyWritingModifier<A>;
  if (!lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<RealityViewLayoutOption> and conformance _EnvironmentKeyWritingModifier<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVy012_RealityKit_aB00G16ViewLayoutOptionVGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy012_RealityKit_aB00G16ViewLayoutOptionVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<RealityViewLayoutOption> and conformance _EnvironmentKeyWritingModifier<A>);
  }

  return result;
}

uint64_t protocol witness for static EnvironmentKey._valuesEqual(_:_:) in conformance EnvironmentValues.RealityViewLayoutOptionKey(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = lazy protocol witness table accessor for type RealityViewLayoutOption and conformance RealityViewLayoutOption(a1, a2, a3);

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

Swift::Void __swiftcall _RealityViewImpl.setIdealSize()()
{
  v1 = v0;
  v2 = type metadata accessor for ARView.CameraMode();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = v53 - v7;
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v11 = (Strong + OBJC_IVAR____TtC19_RealityKit_SwiftUI23_RealityViewCameraModel_content);
    swift_beginAccess();
    v12 = *v11;
    ARView.cameraMode.getter();

    (*(v3 + 104))(v6, *MEMORY[0x277CDB590], v2);
    LOBYTE(v12) = static ARView.CameraMode.== infix(_:_:)();
    v13 = *(v3 + 8);
    v13(v6, v2);
    v13(v8, v2);
    if (v12)
    {
      goto LABEL_20;
    }

    _RealityViewImpl.layoutOption.getter(v1, v57);
    if (!LOBYTE(v57[0]))
    {
      goto LABEL_20;
    }

    v14 = *v11;
    dispatch thunk of ARView.scene.getter();

    active = dispatch thunk of Scene.internalActiveCamera.getter();

    if (!active)
    {
      goto LABEL_20;
    }

    _RealityViewImpl.layoutOption.getter(v1, v57);
    if (LOBYTE(v57[0]) == 1 || (_RealityViewImpl.layoutOption.getter(v1, v57), LOBYTE(v57[0]) == 2))
    {
      type metadata accessor for Entity();
      HasTransform.transformMatrix(relativeTo:)();
      v56 = v16;
      v55 = v17;
      v54 = v18;
      v53[1] = v19;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySfGMd, &_ss23_ContiguousArrayStorageCySfGMR);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_23B91A6D0;
      *(inited + 32) = 0;
      *(inited + 40) = -1073741824;
      _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(inited);
      v53[0] = v21;
      swift_setDeallocating();
      simd_float4x4.transform(position:)();
      v54 = v22;
      type metadata accessor for AnchorEntity();

      HasTransform.visualBounds(recursive:relativeTo:excludeInactive:)();
      v56 = v23;
      v55 = v24;

      if (BoundingBox.isEmpty.getter())
      {
LABEL_12:

LABEL_20:

        return;
      }

      BoundingBox.center.getter();
      v56 = vsubq_f32(v25, v54);
      v26 = HasTransform.position.modify();
      v28 = vaddq_f32(v56, *v27);
      v28.i32[3] = 0;
      *v27 = v28;
      v26(v57, 0);
    }

    _RealityViewImpl.layoutOption.getter(v1, v57);
    if (LOBYTE(v57[0]) == 2)
    {
      [*v11 frame];
      v30 = v29;
      v32 = v31;
      v34 = v33;
      v36 = v35;
      v37 = *v11;
      GeometryProxy.size.getter();
      [v37 frame];
      [v37 setFrame_];

      v38 = specialized _RealityViewImpl.computeExtents2D(_:)(v1);
      if (v40)
      {

        v41 = v10 + OBJC_IVAR____TtC19_RealityKit_SwiftUI23_RealityViewCameraModel_idealSize;
        *v41 = 0;
        *(v41 + 8) = 0;
        *(v41 + 16) = 1;
      }

      else
      {
        v42 = v38;
        v43 = v39;
        v44 = *&v38;
        v45 = v39.f32[0];
        v46 = _RealityViewImpl.getMaxViewSize()();
        v47 = vabds_f32(v45, v44);
        if (v46.width >= v47)
        {
          width = v47;
        }

        else
        {
          width = v46.width;
        }

        v49 = fabsf(COERCE_FLOAT(vsub_f32(v43, v42).i32[1]));
        if (v46.height >= v49)
        {
          height = v49;
        }

        else
        {
          height = v46.height;
        }

        _RealityViewImpl.centerCamera(on:from:)(v1, v42, v43, 2.0);
        _RealityViewImpl.resizeContent(within:from:)(v1, width, height, 2.0);
        v51 = *v11;
        [v51 setFrame_];

        v52 = v10 + OBJC_IVAR____TtC19_RealityKit_SwiftUI23_RealityViewCameraModel_idealSize;
        *v52 = width;
        *(v52 + 8) = height;
        *(v52 + 16) = 0;
      }

      goto LABEL_20;
    }

    goto LABEL_12;
  }
}

CGSize __swiftcall _RealityViewImpl.getMaxViewSize()()
{
  v1 = _RealityViewImpl.uiScene.getter(v0);
  if (!v1)
  {
    goto LABEL_5;
  }

  v2 = v1;
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (!v3)
  {

LABEL_5:
    GeometryProxy.size.getter();
    goto LABEL_6;
  }

  v4 = [v3 screen];
  [v4 bounds];
  v6 = v5;
  v8 = v7;

  v9 = v8;
  v10 = v6;
LABEL_6:
  result.height = v9;
  result.width = v10;
  return result;
}

uint64_t _RealityViewImpl.centerCamera(on:from:)(uint64_t a1, float32x2_t a2, float32x2_t a3, float a4)
{
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = result;
    v8 = OBJC_IVAR____TtC19_RealityKit_SwiftUI23_RealityViewCameraModel_content;
    swift_beginAccess();
    v9 = *(v7 + v8);
    dispatch thunk of ARView.scene.getter();

    active = dispatch thunk of Scene.internalActiveCamera.getter();

    if (active)
    {
      type metadata accessor for Entity();
      HasTransform.transformMatrix(relativeTo:)();
      GeometryProxy.size.getter();
      v13 = _RealityViewImpl.computePPM(distance:size:)(a1, a4, v11, v12);
      if ((v13 & 0x100000000) == 0 && *&v13 > 0.0)
      {
        GeometryProxy.size.getter();
        GeometryProxy.size.getter();
        GeometryProxy.size.getter();
        GeometryProxy.size.getter();
        __asm { FMOV            V2.2S, #-1.0 }

        simd_float4x4.transform(position:)();
        v24 = v19;
        simd_float4x4.transform(position:)();
        v25 = vsubq_f32(v24, v20);
        v21 = HasTransform.position.modify();
        v23 = vaddq_f32(v25, *v22);
        v23.i32[3] = 0;
        *v22 = v23;
        v21(v26, 0);
      }
    }
  }

  return result;
}

uint64_t _RealityViewImpl.resizeContent(within:from:)(uint64_t a1, double a2, double a3, float a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation34ProjectiveTransformCameraComponentVSgMd, &_s17RealityFoundation34ProjectiveTransformCameraComponentVSgMR);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v102 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v109 = &v102 - v12;
  v13 = type metadata accessor for ProjectiveTransformCameraComponent();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v102 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation27OrthographicCameraComponentVSgMd, &_s17RealityFoundation27OrthographicCameraComponentVSgMR);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v108 = &v102 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v112 = &v102 - v20;
  v115 = type metadata accessor for OrthographicCameraComponent();
  v114 = *(v115 - 8);
  MEMORY[0x28223BE20](v115);
  v113 = &v102 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for CameraFieldOfViewOrientation();
  v118 = *(v22 - 8);
  v119 = v22;
  v23 = MEMORY[0x28223BE20](v22);
  v116 = &v102 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v117 = &v102 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit26PerspectiveCameraComponentVSgMd, &_s10RealityKit26PerspectiveCameraComponentVSgMR);
  v27 = MEMORY[0x28223BE20](v26 - 8);
  v111 = &v102 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v30 = &v102 - v29;
  v123 = type metadata accessor for Entity.ComponentSet();
  v120 = *(v123 - 8);
  v31 = MEMORY[0x28223BE20](v123);
  v107 = &v102 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x28223BE20](v31);
  v35 = &v102 - v34;
  MEMORY[0x28223BE20](v33);
  v37 = &v102 - v36;
  v38 = type metadata accessor for PerspectiveCameraComponent();
  v121 = *(v38 - 8);
  v122 = v38;
  MEMORY[0x28223BE20](v38);
  v110 = &v102 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_weakLoadStrong();
  if (result)
  {
    v41 = result;
    v104 = v16;
    v103 = v11;
    v105 = v14;
    v106 = v13;
    GeometryProxy.size.getter();
    v43 = v42;
    GeometryProxy.size.getter();
    v45 = v44;
    v46 = OBJC_IVAR____TtC19_RealityKit_SwiftUI23_RealityViewCameraModel_content;
    swift_beginAccess();
    v47 = *(v41 + v46);
    dispatch thunk of ARView.scene.getter();

    active = dispatch thunk of Scene.internalActiveCamera.getter();

    if (!active)
    {
    }

    GeometryProxy.size.getter();
    v51 = _RealityViewImpl.computePPM(distance:size:)(a1, a4, v49, v50);
    if ((v51 & 0x100000000) != 0 || (v52 = *&v51, *&v51 <= 0.0))
    {
LABEL_23:
    }

    v102 = v41;
    v53 = v43 / v45;
    v54 = a3;
    v55 = v54 / *&v51;
    dispatch thunk of Entity.components.getter();
    v56 = v122;
    Entity.ComponentSet.subscript.getter();
    v57 = *(v120 + 8);
    v57(v37, v123);
    v58 = v121;
    if ((*(v121 + 48))(v30, 1, v56) == 1)
    {
      outlined destroy of PerspectiveCameraComponent?(v30, &_s10RealityKit26PerspectiveCameraComponentVSgMd, &_s10RealityKit26PerspectiveCameraComponentVSgMR);
      dispatch thunk of Entity.components.getter();
      v59 = v112;
      v60 = v115;
      Entity.ComponentSet.subscript.getter();
      v61 = v123;
      v57(v35, v123);
      v62 = v114;
      if ((*(v114 + 48))(v59, 1, v60) != 1)
      {
        (*(v62 + 32))(v113, v59, v60);
        v78 = v117;
        OrthographicCameraComponent.scaleDirection.getter();
        v80 = v118;
        v79 = v119;
        v81 = v116;
        (*(v118 + 104))(v116, *MEMORY[0x277CDB558], v119);
        LODWORD(v123) = static CameraFieldOfViewOrientation.== infix(_:_:)();
        v82 = *(v80 + 8);
        v82(v81, v79);
        v82(v78, v79);
        GeometryProxy.size.getter();
        if (v123)
        {
          v85 = a3 / v84;
        }

        else
        {
          v85 = a2 / v83;
        }

        v95 = v85;
        v86 = v113;
        v96 = OrthographicCameraComponent.scale.modify();
        *v97 = *v97 * v95;
        v96(v124, 0);
        v98 = v108;
        (*(v62 + 16))(v108, v86, v60);
        (*(v62 + 56))(v98, 0, 1, v60);
        v99 = dispatch thunk of Entity.components.modify();
        Entity.ComponentSet.subscript.setter();
        v99(v124, 0);
        goto LABEL_20;
      }

      outlined destroy of PerspectiveCameraComponent?(v59, &_s17RealityFoundation27OrthographicCameraComponentVSgMd, &_s17RealityFoundation27OrthographicCameraComponentVSgMR);
      v63 = v107;
      dispatch thunk of Entity.components.getter();
      v64 = v109;
      v60 = v106;
      Entity.ComponentSet.subscript.getter();
      v57(v63, v61);
      v62 = v105;
      if ((*(v105 + 48))(v64, 1, v60) == 1)
      {

        return outlined destroy of PerspectiveCameraComponent?(v64, &_s17RealityFoundation34ProjectiveTransformCameraComponentVSgMd, &_s17RealityFoundation34ProjectiveTransformCameraComponentVSgMR);
      }

      v86 = v104;
      (*(v62 + 32))(v104, v64, v60);
      ProjectiveTransformCameraComponent.transform.getter();
      if (v87 == 0.0)
      {
        v88 = 2.0 / v55;
LABEL_17:
        v89 = ProjectiveTransformCameraComponent.transform.modify();
        *v90 = v88 / v53;
        v89(v124, 0);
        v91 = ProjectiveTransformCameraComponent.transform.modify();
        *(v92 + 20) = v88;
        v91(v124, 0);
        v93 = v103;
        (*(v62 + 16))(v103, v86, v60);
        (*(v62 + 56))(v93, 0, 1, v60);
        v94 = dispatch thunk of Entity.components.modify();
        Entity.ComponentSet.subscript.setter();
        v94(v124, 0);
LABEL_20:

        return (*(v62 + 8))(v86, v60);
      }

      v100 = atanf((v55 * 0.5) / a4);
      v101 = v100 + v100;
      if (v101 != 0.0)
      {
        v88 = 1.0 / tanf(v101 * 0.5);
        goto LABEL_17;
      }

      (*(v62 + 8))(v86, v60);
      goto LABEL_23;
    }

    v65 = a2;
    v66 = v65 / v52;
    v67 = v110;
    (*(v58 + 32))(v110, v30, v56);
    v68 = v56;
    v69 = v117;
    PerspectiveCameraComponent.fieldOfViewOrientation.getter();
    v71 = v118;
    v70 = v119;
    v72 = v116;
    (*(v118 + 104))(v116, *MEMORY[0x277CDB558], v119);
    v73 = static CameraFieldOfViewOrientation.== infix(_:_:)();
    v74 = *(v71 + 8);
    v74(v72, v70);
    v74(v69, v70);
    v75 = (v55 * 0.5) / a4;
    if ((v73 & 1) == 0)
    {
      v75 = (v66 * 0.5) / (v53 * a4);
    }

    atanf(v75);
    PerspectiveCameraComponent.fieldOfViewInDegrees.setter();
    v76 = v111;
    (*(v58 + 16))(v111, v67, v68);
    (*(v58 + 56))(v76, 0, 1, v68);
    v77 = dispatch thunk of Entity.components.modify();
    Entity.ComponentSet.subscript.setter();
    v77(v124, 0);

    return (*(v58 + 8))(v67, v68);
  }

  return result;
}

double _RealityViewImpl.extendChild(_:extents:)(uint64_t a1, uint64_t a2, __n128 a3, __n128 a4)
{
  v189 = a2;
  v214 = a4;
  v213 = a3;
  v5 = type metadata accessor for Entity.ChildCollection();
  MEMORY[0x28223BE20](v5 - 8);
  v173 = &v142 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit6EntityC15ChildCollectionV16IndexingIteratorVy__AEGMd, &_s10RealityKit6EntityC15ChildCollectionV16IndexingIteratorVy__AEGMR);
  v175 = *(v176 - 8);
  MEMORY[0x28223BE20](v176);
  v174 = &v142 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13GeometryProxyVSgMd, &_s7SwiftUI13GeometryProxyVSgMR);
  MEMORY[0x28223BE20](v8 - 8);
  v165 = &v142 - v9;
  v164 = type metadata accessor for GeometryProxy();
  v218.i64[0] = *(v164 - 8);
  MEMORY[0x28223BE20](v164);
  v170 = &v142 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v172 = type metadata accessor for Scene.AnchorCollection();
  v217.i64[0] = *(v172 - 8);
  MEMORY[0x28223BE20](v172);
  v171 = &v142 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v212 = type metadata accessor for CoordinateSpace();
  v216.i64[0] = *(v212 - 8);
  v12 = MEMORY[0x28223BE20](v212);
  v186 = &v142 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v190 = &v142 - v14;
  v194 = type metadata accessor for LocalCoordinateSpace();
  v215.i64[0] = *(v194 - 8);
  MEMORY[0x28223BE20](v194);
  v16 = &v142 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for RealityViewCameraContent(0);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = (&v142 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v193 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGMd, &_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGMR);
  MEMORY[0x28223BE20](v193);
  v192 = &v142 - v20;
  v219 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation10MeshBufferV8IteratorVys5SIMD3VySfG_GMd, &_s17RealityFoundation10MeshBufferV8IteratorVys5SIMD3VySfG_GMR);
  v188.n128_u64[0] = *(v219 - 8);
  MEMORY[0x28223BE20](v219);
  v206 = &v142 - v21;
  v195 = type metadata accessor for MeshResource.Part();
  v187.n128_u64[0] = *(v195 - 8);
  MEMORY[0x28223BE20](v195);
  v205 = &v142 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit12MeshResourceC0A10FoundationE4PartVSgMd, &_s10RealityKit12MeshResourceC0A10FoundationE4PartVSgMR);
  MEMORY[0x28223BE20](v23 - 8);
  v196 = &v142 - v24;
  v25 = type metadata accessor for MeshPartCollection();
  MEMORY[0x28223BE20](v25 - 8);
  v158 = &v142 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v157 = type metadata accessor for MeshPartCollection.Iterator();
  v181 = *(v157 - 8);
  MEMORY[0x28223BE20](v157);
  v197 = &v142 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit12MeshResourceC0A10FoundationE5ModelVSgMd, &_s10RealityKit12MeshResourceC0A10FoundationE5ModelVSgMR);
  MEMORY[0x28223BE20](v28 - 8);
  v159 = &v142 - v29;
  v208 = type metadata accessor for MeshModelCollection();
  v200 = *(v208 - 8);
  MEMORY[0x28223BE20](v208);
  v207 = &v142 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v209 = type metadata accessor for MeshResource.Model();
  v180 = *(v209 - 8);
  MEMORY[0x28223BE20](v209);
  v32 = &v142 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v169 = type metadata accessor for MeshResource.Instance();
  v33 = *(v169 - 8);
  MEMORY[0x28223BE20](v169);
  v168 = &v142 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit12MeshResourceC0A10FoundationE8InstanceVSgMd, &_s10RealityKit12MeshResourceC0A10FoundationE8InstanceVSgMR);
  MEMORY[0x28223BE20](v35 - 8);
  v177 = &v142 - v36;
  v37 = type metadata accessor for MeshInstanceCollection();
  MEMORY[0x28223BE20](v37 - 8);
  v220.i64[0] = &v142 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v163 = type metadata accessor for MeshInstanceCollection.Iterator();
  v162 = *(v163 - 8);
  MEMORY[0x28223BE20](v163);
  v211 = &v142 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v161 = type metadata accessor for MeshResource.Contents();
  v160 = *(v161 - 8);
  MEMORY[0x28223BE20](v161);
  v210 = &v142 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit14ModelComponentVSgMd, &_s10RealityKit14ModelComponentVSgMR);
  MEMORY[0x28223BE20](v41 - 8);
  v43 = &v142 - v42;
  v44 = type metadata accessor for Entity.ComponentSet();
  v45 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v47 = &v142 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v179 = type metadata accessor for ModelComponent();
  v178 = *(v179 - 8);
  MEMORY[0x28223BE20](v179);
  v49 = &v142 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v155 = v49;
    Strong = swift_weakLoadStrong();
    if (Strong)
    {

      v167 = a1;
      dispatch thunk of Entity.components.getter();
      v50 = v179;
      Entity.ComponentSet.subscript.getter();
      (*(v45 + 8))(v47, v44);
      v51 = v178;
      if ((*(v178 + 48))(v43, 1, v50) == 1)
      {
        outlined destroy of PerspectiveCameraComponent?(v43, &_s10RealityKit14ModelComponentVSgMd, &_s10RealityKit14ModelComponentVSgMR);
      }

      else
      {
        (*(v51 + 32))(v155, v43, v50);
        ModelComponent.mesh.getter();
        MeshResource.contents.getter();

        MEMORY[0x23EEAC890](v52);
        MeshPartCollection.makeIterator()();
        v191 = OBJC_IVAR____TtC19_RealityKit_SwiftUI23_RealityViewCameraModel_content;
        v53 = v177;
        MeshInstanceCollection.Iterator.next()();
        v54 = *(v33 + 48);
        v55 = v169;
        v204 = v33 + 48;
        v203 = v54;
        if (v54(v53, 1, v169) == 1)
        {
          v187 = v214;
          v188 = v213;
        }

        else
        {
          v59 = *(v33 + 32);
          v58 = v33 + 32;
          v201 = v59;
          ++v200;
          v199 = (v180 + 48);
          v198 = (v58 - 24);
          v149 = (v180 + 32);
          v185 = (v187.n128_u64[0] + 48);
          v184 = (v187.n128_u64[0] + 32);
          v60 = (v215.i64[0] + 8);
          v154 = *MEMORY[0x277CDF958];
          v153 = (v216.i64[0] + 104);
          v166 = (v216.i64[0] + 8);
          v152 = (v217.i64[0] + 8);
          v150 = (v218.i64[0] + 48);
          v148 = (v218.i64[0] + 32);
          v147 = (v218.i64[0] + 8);
          v183 = (v188.n128_u64[0] + 8);
          v182 = (v187.n128_u64[0] + 8);
          v146 = (v181 + 8);
          v145 = (v180 + 8);
          v61 = v213;
          v56.n128_u64[0] = v213.n128_u64[0];
          v188 = v56;
          v62 = v214;
          v57.n128_u64[0] = v214.n128_u64[0];
          v187 = v57;
          v151 = v32;
          v202 = v58;
          do
          {
            v213 = v61;
            v214 = v62;
            v63 = v159;
            v64 = v168;
            v65 = v177;
            while (1)
            {
              v201(v64, v65, v55);
              v66 = v207;
              MeshResource.Contents.models.getter();
              MeshResource.Instance.model.getter();
              MeshModelCollection.subscript.getter();

              (*v200)(v66, v208);
              if ((*v199)(v63, 1, v209) != 1)
              {
                break;
              }

              (*v198)(v64, v55);
              outlined destroy of PerspectiveCameraComponent?(v63, &_s10RealityKit12MeshResourceC0A10FoundationE5ModelVSgMd, &_s10RealityKit12MeshResourceC0A10FoundationE5ModelVSgMR);
              MeshInstanceCollection.Iterator.next()();
              if (v203(v65, 1, v55) == 1)
              {
                v51 = v178;
                goto LABEL_60;
              }
            }

            (*v149)(v151, v63, v209);
            MeshResource.Instance.transform.getter();
            v217 = v68;
            v218 = v67;
            v216 = v69;
            v220 = v70;
            type metadata accessor for Entity();
            v71 = HasTransform.transformMatrix(relativeTo:)();
            v142 = v72;
            v143 = v73;
            v144 = v74;
            v215 = v75;
            MEMORY[0x23EEAC860](v71);
            MeshPartCollection.makeIterator()();
            v76 = v196;
            MeshPartCollection.Iterator.next()();
            v77 = v195;
            v181 = *v185;
            if ((v181)(v76, 1, v195) == 1)
            {
              v78 = v214.n128_u64[0];
              v79 = v213.n128_u64[0];
            }

            else
            {
              v180 = *v184;
              v218 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v142, v218.f32[0]), v143, *v218.f32, 1), v144, v218, 2), v215, v218, 3);
              v217 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v142, v217.f32[0]), v143, *v217.f32, 1), v144, v217, 2), v215, v217, 3);
              v216 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v142, v216.f32[0]), v143, *v216.f32, 1), v144, v216, 2), v215, v216, 3);
              v215 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v142, v220.f32[0]), v143, *v220.f32, 1), v144, v220, 2), v215, v220, 3);
              v82 = v219;
              v83 = Strong;
              (v180)(v205, v196, v77);
              while (1)
              {
                MeshBufferContainer.positions.getter();
                MeshBuffer.makeIterator()();
                v93 = v191;
                swift_beginAccess();
                MeshBuffer.Iterator.next()();
                if (v222)
                {
                  v84 = v82;
                  v78 = v214.n128_u64[0];
                  v79 = v213.n128_u64[0];
                  v85 = v206;
                  v86 = v205;
                }

                else
                {
                  v94 = v221;
                  v85 = v206;
                  v86 = v205;
                  v95 = v194;
                  do
                  {
                    while (1)
                    {
                      v220 = vaddq_f32(v215, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v218, v94.f32[0]), v217, *v94.f32, 1), v216, v94, 2));
                      outlined init with copy of RealityViewCameraContent(v83 + v93, v19);
                      v96 = v220;
                      v96.i32[3] = 0;
                      v220 = v96;
                      static CoordinateSpaceProtocol<>.local.getter();
                      v97 = *v19;
                      *&v98 = COERCE_DOUBLE(ARView.project(_:)());
                      if (v100)
                      {
                        break;
                      }

                      v101 = *&v98;
                      v102 = v99;
                      v103 = v190;
                      dispatch thunk of CoordinateSpaceProtocol.coordinateSpace.getter();
                      v104 = v103;
                      v105 = v186;
                      (*v153)(v186, v154, v212);
                      lazy protocol witness table accessor for type CoordinateSpace and conformance CoordinateSpace(&lazy protocol witness table cache variable for type CoordinateSpace and conformance CoordinateSpace, MEMORY[0x277CDF970], MEMORY[0x277CDF978]);
                      v220.i64[0] = v97;
                      v106 = v212;
                      v107 = dispatch thunk of static Equatable.== infix(_:_:)();
                      v108 = *v166;
                      (*v166)(v105, v106);
                      if (v107)
                      {

                        v108(v104, v106);
                        v95 = v194;
                        (*v60)(v16, v194);
                        v85 = v206;
                        v93 = v191;
                      }

                      else
                      {
                        v188.n128_u64[0] = v108;
                        v109 = v220.i64[0];
                        dispatch thunk of ARView.scene.getter();
                        v110 = v171;
                        dispatch thunk of Scene.anchors.getter();

                        lazy protocol witness table accessor for type CoordinateSpace and conformance CoordinateSpace(&lazy protocol witness table cache variable for type Scene.AnchorCollection and conformance Scene.AnchorCollection, MEMORY[0x277CDB0C0], MEMORY[0x277CDB0D0]);
                        v111 = v172;
                        dispatch thunk of Collection.startIndex.getter();
                        dispatch thunk of Collection.endIndex.getter();
                        v93 = v191;
                        if (v223 == v221.i64[0])
                        {

                          (*v152)(v110, v111);
                          (v188.n128_u64[0])(v190, v212);
                          v95 = v194;
                          (*v60)(v16, v194);
                        }

                        else
                        {
                          v112 = dispatch thunk of Collection.subscript.read();

                          v112(&v221, 0);
                          (*v152)(v110, v111);

                          v114 = v165;
                          specialized RealityCoordinateSpaceProjecting.getProxy(from:)(v113, v165);
                          v115 = v114;

                          v116 = v114;
                          v117 = v164;
                          v118 = (*v150)(v116, 1, v164);
                          v119 = v190;
                          v95 = v194;
                          if (v118 == 1)
                          {

                            (v188.n128_u64[0])(v119, v212);
                            (*v60)(v16, v95);
                            outlined destroy of PerspectiveCameraComponent?(v115, &_s7SwiftUI13GeometryProxyVSgMd, &_s7SwiftUI13GeometryProxyVSgMR);
                          }

                          else
                          {
                            (*v148)(v170, v115, v117);
                            GeometryProxy.frame(in:)();
                            v121 = v120;
                            v123 = v122;

                            (*v147)(v170, v117);
                            (v188.n128_u64[0])(v119, v212);
                            (*v60)(v16, v95);
                            v101 = v101 - v121;
                            v102 = v102 - v123;
                          }
                        }

                        v85 = v206;
                      }

                      outlined destroy of RealityViewCameraContent(v19);
                      v126 = v101;
                      v84 = v219;
                      v86 = v205;
                      if (v213.n128_f32[0] <= v126)
                      {
                        v124.n128_u32[0] = v213.n128_u32[0];
                      }

                      else
                      {
                        v124.n128_f32[0] = v101;
                        if ((~LODWORD(v126) & 0x7F800000) == 0)
                        {
                          v127 = v101;
                          if ((LODWORD(v127) & 0x7FFFFF) != 0)
                          {
                            v124.n128_f32[0] = v213.n128_f32[0];
                          }

                          else
                          {
                            v124.n128_f32[0] = v101;
                          }
                        }
                      }

                      v128 = v102;
                      if (v213.n128_f32[1] <= v128)
                      {
                        v130 = v213.n128_f32[1];
                      }

                      else
                      {
                        v130 = v102;
                        if ((~LODWORD(v128) & 0x7F800000) == 0)
                        {
                          v129 = v102;
                          if ((LODWORD(v129) & 0x7FFFFF) != 0)
                          {
                            v130 = v213.n128_f32[1];
                          }

                          else
                          {
                            v130 = v102;
                          }
                        }
                      }

                      v125.n128_u32[0] = v214.n128_u32[0];
                      if (v214.n128_f32[0] <= v126)
                      {
                        if ((~LODWORD(v126) & 0x7F800000) != 0)
                        {
                          v125.n128_f32[0] = v101;
                        }

                        else
                        {
                          v131 = v101;
                          if ((LODWORD(v131) & 0x7FFFFF) == 0)
                          {
                            v125.n128_f32[0] = v101;
                          }
                        }
                      }

                      v132 = v214.n128_f32[1];
                      if (v214.n128_f32[1] <= v128)
                      {
                        if ((~LODWORD(v128) & 0x7F800000) != 0)
                        {
                          v132 = v102;
                        }

                        else
                        {
                          v133 = v102;
                          if ((LODWORD(v133) & 0x7FFFFF) == 0)
                          {
                            v132 = v102;
                          }
                        }
                      }

                      v124.n128_f32[1] = v130;
                      v188 = v124;
                      v125.n128_f32[1] = v132;
                      v187 = v125;
                      MeshBuffer.Iterator.next()();
                      v94 = v221;
                      v134.n128_u64[0] = v188.n128_u64[0];
                      v213 = v134;
                      v134.n128_u64[0] = v187.n128_u64[0];
                      v214 = v134;
                      v78 = v187.n128_u64[0];
                      v79 = v188.n128_u64[0];
                      if (v222)
                      {
                        goto LABEL_18;
                      }
                    }

                    (*v60)(v16, v95);
                    outlined destroy of RealityViewCameraContent(v19);
                    v84 = v219;
                    MeshBuffer.Iterator.next()();
                    v94 = v221;
                  }

                  while ((v222 & 1) == 0);
                  v78 = v214.n128_u64[0];
                  v79 = v213.n128_u64[0];
                }

LABEL_18:
                (*v183)(v85, v84);
                v87 = v86;
                v88 = v86;
                v89 = v195;
                (*v182)(v87, v195);
                v90 = v196;
                MeshPartCollection.Iterator.next()();
                v91 = (v181)(v90, 1, v89);
                v91.n128_u64[0] = v79;
                v213 = v91;
                v91.n128_u64[0] = v78;
                v214 = v91;
                v82 = v84;
                if (v92 == 1)
                {
                  break;
                }

                (v180)(v88, v90, v89);
              }
            }

            (*v146)(v197, v157);
            (*v145)(v151, v209);
            v55 = v169;
            (*v198)(v168, v169);
            v80 = v177;
            MeshInstanceCollection.Iterator.next()();
            v81 = v203(v80, 1, v55);
            v61.n128_u64[0] = v79;
            v62.n128_u64[0] = v78;
            v51 = v178;
          }

          while (v81 != 1);
        }

LABEL_60:
        (*(v162 + 8))(v211, v163);
        (*(v160 + 8))(v210, v161);
        (*(v51 + 8))(v155, v179);
        v214 = v187;
        v213 = v188;
      }

      type metadata accessor for Entity();
      HasHierarchy.children.getter();
      v135 = v174;
      Entity.ChildCollection.makeIterator()();
      v136 = v176;
      Entity.ChildCollection.IndexingIterator.next()();
      v137 = v189;
      while (v221.i64[0])
      {

        v139.n128_f64[0] = _RealityViewImpl.extendChild(_:extents:)(v138, v137, v213, v214);
        v213 = v139;
        v214 = v140;

        Entity.ChildCollection.IndexingIterator.next()();
      }

      (*(v175 + 8))(v135, v136);
    }
  }

  return v213.n128_f64[0];
}

unint64_t _RealityViewImpl.computePPM(distance:size:)(uint64_t a1, float a2, double a3, double a4)
{
  v7 = type metadata accessor for CoordinateSpace();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for LocalCoordinateSpace();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v79 = &v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v70 - v15;
  v17 = type metadata accessor for RealityViewCameraContent(0);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v20 = (&v70 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v18);
  v22 = (&v70 - v21);
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v24 = Strong;
    v73 = v7;
    v72 = v8;
    v74 = v12;
    v25 = OBJC_IVAR____TtC19_RealityKit_SwiftUI23_RealityViewCameraModel_content;
    swift_beginAccess();
    v26 = *(v24 + v25);
    dispatch thunk of ARView.scene.getter();

    active = dispatch thunk of Scene.internalActiveCamera.getter();

    if (active)
    {
      type metadata accessor for Entity();
      HasTransform.transformMatrix(relativeTo:)();
      v78 = v28;
      v77 = v29;
      v76 = v30;
      v75 = v31;
      [*(v24 + v25) frame];
      v33 = v32;
      v35 = v34;
      v37 = v36;
      v39 = v38;
      [*(v24 + v25) setFrame_];
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySfGMd, &_ss23_ContiguousArrayStorageCySfGMR);
      inited = swift_initStackObject();
      v70 = xmmword_23B91A6D0;
      *(inited + 16) = xmmword_23B91A6D0;
      *(inited + 32) = 0;
      v41 = -a2;
      *(inited + 40) = v41;
      _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(inited);
      v71 = v42;
      swift_setDeallocating();
      simd_float4x4.transform(position:)();
      v71 = v43;
      v44 = swift_initStackObject();
      *(v44 + 16) = v70;
      *(v44 + 32) = 0x3F80000000000000;
      *(v44 + 40) = v41;
      _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(v44);
      v70 = v45;
      swift_setDeallocating();
      simd_float4x4.transform(position:)();
      v78 = v46;
      outlined init with copy of RealityViewCameraContent(v24 + v25, v22);
      static CoordinateSpaceProtocol<>.local.getter();
      v47 = *v22;
      *&v48 = COERCE_DOUBLE(ARView.project(_:)());
      if (v49)
      {

        (*(v74 + 8))(v16, v11);
        v50 = v22;
      }

      else
      {
        *&v77 = active;
        v51 = *&v48;
        dispatch thunk of CoordinateSpaceProtocol.coordinateSpace.getter();
        v52 = specialized RealityCoordinateSpaceProjecting.ensureYAxis(for:on:in:)(v47, v10, v51);
        v54 = v53;
        v72 = *(v72 + 8);
        (v72)(v10, v73);
        v55 = *(v74 + 8);
        *&v76 = v11;
        *&v75 = v55;
        v55(v16, v11);
        outlined destroy of RealityViewCameraContent(v22);
        outlined init with copy of RealityViewCameraContent(v24 + v25, v20);
        v56 = v79;
        static CoordinateSpaceProtocol<>.local.getter();
        v57 = *v20;
        *&v58 = COERCE_DOUBLE(ARView.project(_:)());
        if ((v59 & 1) == 0)
        {
          v63 = *&v58;
          v64 = v76;
          dispatch thunk of CoordinateSpaceProtocol.coordinateSpace.getter();
          v65 = specialized RealityCoordinateSpaceProjecting.ensureYAxis(for:on:in:)(v57, v10, v63);
          v67 = v66;
          (v72)(v10, v73);
          (v75)(v56, v64);
          outlined destroy of RealityViewCameraContent(v20);
          [*(v24 + v25) setFrame_];

          v61 = 0;
          v68 = v52 - v65;
          v69 = v54 - v67;
          v60 = COERCE_UNSIGNED_INT(sqrtf((v68 * v68) + (v69 * v69)));
          goto LABEL_10;
        }

        (v75)(v56, v76);
        v50 = v20;
      }

      outlined destroy of RealityViewCameraContent(v50);
    }

    else
    {
    }
  }

  v60 = 0;
  v61 = 1;
LABEL_10:
  v80 = v61;
  return v60 | (v61 << 32);
}

uint64_t specialized RealityCoordinateSpaceProjecting.getProxy(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19_RealityKit_SwiftUI0A19ViewCameraComponentVSgMd, &_s19_RealityKit_SwiftUI0A19ViewCameraComponentVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v18 - v4;
  v6 = type metadata accessor for Entity.ComponentSet();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for RealityViewCameraComponent(0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v18 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  KeyPath = swift_getKeyPath();
  swift_retain_n();
  dispatch thunk of Entity.components.getter();
  v20 = lazy protocol witness table accessor for type CoordinateSpace and conformance CoordinateSpace(&lazy protocol witness table cache variable for type RealityViewCameraComponent and conformance RealityViewCameraComponent, type metadata accessor for RealityViewCameraComponent, &protocol conformance descriptor for RealityViewCameraComponent);
  Entity.ComponentSet.subscript.getter();

  v13 = *(v7 + 8);
  v13(v9, v6);
  v14 = *(v11 + 48);
  if (v14(v5, 1, v10) == 1)
  {
    while (1)
    {
      outlined destroy of PerspectiveCameraComponent?(v5, &_s19_RealityKit_SwiftUI0A19ViewCameraComponentVSgMd, &_s19_RealityKit_SwiftUI0A19ViewCameraComponentVSgMR);
      v22 = a1;

      swift_getAtKeyPath();

      a1 = v23;

      if (!a1)
      {
        break;
      }

      dispatch thunk of Entity.components.getter();
      Entity.ComponentSet.subscript.getter();

      v13(v9, v6);
      if (v14(v5, 1, v10) != 1)
      {
        goto LABEL_4;
      }
    }

    v17 = type metadata accessor for GeometryProxy();
    return (*(*(v17 - 8) + 56))(v19, 1, 1, v17);
  }

  else
  {
LABEL_4:

    v15 = v18;
    outlined init with take of RealityViewCameraComponent(v5, v18);
    return outlined init with take of GeometryProxy?(v15, v19);
  }
}

uint64_t key path getter for HasHierarchy.parent : Entity@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for Entity();
  result = HasHierarchy.parent.getter();
  *a1 = result;
  return result;
}

uint64_t _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    goto LABEL_6;
  }

  if ((v1 - 1) > 2)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v1 != 3)
  {
LABEL_6:
    __break(1u);
  }

  return result;
}

uint64_t _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD4VySfG_SaySfGTt1g5Tf4g_n(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    goto LABEL_6;
  }

  if ((v1 - 1) > 3)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v1 != 4)
  {
LABEL_6:
    __break(1u);
  }

  return result;
}

uint64_t specialized _RealityViewImpl.computeExtents2D(_:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation27OrthographicCameraComponentVSgMd, &_s17RealityFoundation27OrthographicCameraComponentVSgMR);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v98 = &v89 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v102 = &v89 - v6;
  v7 = type metadata accessor for OrthographicCameraComponent();
  v103 = *(v7 - 8);
  v104 = v7;
  MEMORY[0x28223BE20](v7);
  v101 = &v89 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for CameraFieldOfViewOrientation();
  v106 = *(v9 - 8);
  v10 = MEMORY[0x28223BE20](v9);
  v105 = &v89 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v89 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit26PerspectiveCameraComponentVSgMd, &_s10RealityKit26PerspectiveCameraComponentVSgMR);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v99 = &v89 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v89 - v17;
  v19 = type metadata accessor for Entity.ComponentSet();
  v110 = *(v19 - 8);
  v20 = MEMORY[0x28223BE20](v19);
  v22 = &v89 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v89 - v23;
  v25 = type metadata accessor for PerspectiveCameraComponent();
  v26 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v107 = &v89 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = a1;
  v109 = v1;
  result = swift_weakLoadStrong();
  if (result)
  {
    v96 = v13;
    v100 = v9;
    v29 = (result + OBJC_IVAR____TtC19_RealityKit_SwiftUI23_RealityViewCameraModel_content);
    v30 = result;
    swift_beginAccess();
    v97 = v29;
    v31 = *v29;
    dispatch thunk of ARView.scene.getter();

    active = dispatch thunk of Scene.internalActiveCamera.getter();

    if (!active)
    {
      goto LABEL_19;
    }

    v95 = v30;
    GeometryProxy.size.getter();
    v34 = v33;
    GeometryProxy.size.getter();
    v36 = v35;
    v37 = v34 / v36;
    dispatch thunk of Entity.components.getter();
    Entity.ComponentSet.subscript.getter();
    v38 = *(v110 + 8);
    v110 += 8;
    v38(v24, v19);
    v39 = active;
    if ((*(v26 + 48))(v18, 1, v25) == 1)
    {
      outlined destroy of PerspectiveCameraComponent?(v18, &_s10RealityKit26PerspectiveCameraComponentVSgMd, &_s10RealityKit26PerspectiveCameraComponentVSgMR);
      v40 = v100;
    }

    else
    {
      v94 = active;
      (*(v26 + 32))(v107, v18, v25);
      v93 = v26;
      v41 = v96;
      PerspectiveCameraComponent.fieldOfViewOrientation.getter();
      v43 = v105;
      v42 = v106;
      v44 = *(v106 + 104);
      v91 = *MEMORY[0x277CDB550];
      v40 = v100;
      v92 = v106 + 104;
      v90 = v44;
      v44(v105);
      v45 = static CameraFieldOfViewOrientation.== infix(_:_:)();
      v46 = *(v42 + 8);
      v46(v43, v40);
      v46(v41, v40);
      if (v45)
      {
        v47 = v107;
        PerspectiveCameraComponent.fieldOfViewInDegrees.getter();
        v49 = tanf(((v48 * 3.1416) / 180.0) * 0.5);
        atanf(fabsf(v49) / v37);
        PerspectiveCameraComponent.fieldOfViewInDegrees.setter();
        v50 = v90;
        v90(v41, *MEMORY[0x277CDB558], v40);
        PerspectiveCameraComponent.fieldOfViewOrientation.setter();
        v51 = v93;
        v110 = *(v93 + 16);
        v52 = v99;
        (v110)(v99, v47, v25);
        v106 = *(v51 + 56);
        (v106)(v52, 0, 1, v25);
        v53 = dispatch thunk of Entity.components.modify();
        Entity.ComponentSet.subscript.setter();
        v53(v111, 0);

        v55.n128_u64[0] = vneg_f32(0x7F0000007FLL);
        v56.n128_u64[0] = 0x7F0000007FLL;
        v57 = _RealityViewImpl.extendChild(_:extents:)(v54, v108, v55, v56);
        v59 = v58;

        PerspectiveCameraComponent.fieldOfViewInDegrees.setter();
        v50(v41, v91, v100);
        PerspectiveCameraComponent.fieldOfViewOrientation.setter();
        (v110)(v52, v47, v25);
        (v106)(v52, 0, 1, v25);
        v60 = dispatch thunk of Entity.components.modify();
        Entity.ComponentSet.subscript.setter();
        v60(v111, 0);
        (*(v93 + 8))(v47, v25);
        goto LABEL_15;
      }

      (*(v93 + 8))(v107, v25);
      v39 = v94;
    }

    dispatch thunk of Entity.components.getter();
    v61 = v102;
    v62 = v104;
    Entity.ComponentSet.subscript.getter();
    v38(v22, v19);
    v63 = v103;
    if ((*(v103 + 48))(v61, 1, v62) == 1)
    {
      outlined destroy of PerspectiveCameraComponent?(v61, &_s17RealityFoundation27OrthographicCameraComponentVSgMd, &_s17RealityFoundation27OrthographicCameraComponentVSgMR);
    }

    else
    {
      v94 = v39;
      v64 = v101;
      (*(v63 + 32))(v101, v61, v62);
      v65 = v96;
      OrthographicCameraComponent.scaleDirection.getter();
      v67 = v105;
      v66 = v106;
      v68 = *(v106 + 104);
      LODWORD(v110) = *MEMORY[0x277CDB550];
      v107 = v68;
      (v68)(v105);
      v69 = static CameraFieldOfViewOrientation.== infix(_:_:)();
      v70 = *(v66 + 8);
      v70(v67, v40);
      v70(v65, v40);
      if (v69)
      {
        OrthographicCameraComponent.scale.getter();
        OrthographicCameraComponent.scale.setter();
        v71 = v107;
        (v107)(v65, *MEMORY[0x277CDB558], v40);
        OrthographicCameraComponent.scaleDirection.setter();
        v106 = *(v63 + 16);
        v72 = v98;
        (v106)(v98, v64, v62);
        v105 = *(v63 + 56);
        (v105)(v72, 0, 1, v62);
        v73 = dispatch thunk of Entity.components.modify();
        Entity.ComponentSet.subscript.setter();
        v73(v111, 0);

        v75.n128_u64[0] = vneg_f32(0x7F0000007FLL);
        v76.n128_u64[0] = 0x7F0000007FLL;
        v57 = _RealityViewImpl.extendChild(_:extents:)(v74, v108, v75, v76);
        v59 = v77;

        v78 = v101;
        OrthographicCameraComponent.scale.setter();
        (v71)(v65, v110, v100);
        OrthographicCameraComponent.scaleDirection.setter();
        (v106)(v72, v78, v62);
        (v105)(v72, 0, 1, v62);
        v79 = dispatch thunk of Entity.components.modify();
        Entity.ComponentSet.subscript.setter();
        v79(v111, 0);
        (*(v63 + 8))(v78, v62);
        goto LABEL_15;
      }

      (*(v63 + 8))(v64, v62);
    }

    v81.n128_u64[0] = vneg_f32(0x7F0000007FLL);
    v82.n128_u64[0] = 0x7F0000007FLL;
    v57 = _RealityViewImpl.extendChild(_:extents:)(v80, v108, v81, v82);
    v59 = v83;

LABEL_15:
    v84 = vmvn_s8(vceq_f32(*&v57, *&v57));
    if ((vpmax_u32(v84, v84).u32[0] & 0x80000000) == 0)
    {
      v85 = vmvn_s8(vceq_f32(v59, v59));
      if ((vpmax_u32(v85, v85).u32[0] & 0x80000000) == 0)
      {
        v86 = vneg_f32(0x7F0000007FLL);
        v87 = vcgt_s32(v86, (*&v57 & 0x7FFFFFFF7FFFFFFFLL));
        if ((vpmin_u32(v87, v87).u32[0] & 0x80000000) != 0)
        {

          v88 = vcgt_s32(v86, (*&v59 & 0x7FFFFFFF7FFFFFFFLL));
          if ((vpmin_u32(v88, v88).u32[0] & 0x80000000) != 0)
          {
            return *&v57;
          }

          return 0;
        }
      }
    }

LABEL_19:

    return 0;
  }

  return result;
}

uint64_t outlined init with copy of RealityViewCameraContent(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RealityViewCameraContent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of RealityViewCameraContent(uint64_t a1)
{
  v2 = type metadata accessor for RealityViewCameraContent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t lazy protocol witness table accessor for type CoordinateSpace and conformance CoordinateSpace(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t outlined destroy of PerspectiveCameraComponent?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t outlined init with take of RealityViewCameraComponent(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RealityViewCameraComponent(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of GeometryProxy?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13GeometryProxyVSgMd, &_s7SwiftUI13GeometryProxyVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD2VySfG_SaySfGTt1g5Tf4g_n(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    goto LABEL_6;
  }

  if ((v1 - 1) > 1)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v1 == 1)
  {
LABEL_6:
    __break(1u);
  }

  return result;
}

uint64_t _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySdG_SaySdGTt1g5Tf4g_n(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    goto LABEL_6;
  }

  if ((v1 - 1) > 2)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v1 != 3)
  {
LABEL_6:
    __break(1u);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type EnvironmentValues.RealityViewLayoutOptionKey and conformance EnvironmentValues.RealityViewLayoutOptionKey(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type EnvironmentValues.RealityViewLayoutOptionKey and conformance EnvironmentValues.RealityViewLayoutOptionKey;
  if (!lazy protocol witness table cache variable for type EnvironmentValues.RealityViewLayoutOptionKey and conformance EnvironmentValues.RealityViewLayoutOptionKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentValues.RealityViewLayoutOptionKey and conformance EnvironmentValues.RealityViewLayoutOptionKey);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type RealityViewLayoutOption and conformance RealityViewLayoutOption(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type RealityViewLayoutOption and conformance RealityViewLayoutOption;
  if (!lazy protocol witness table cache variable for type RealityViewLayoutOption and conformance RealityViewLayoutOption)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RealityViewLayoutOption and conformance RealityViewLayoutOption);
  }

  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance FreeformScanModeManager.State()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x23EEAFE40](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance FreeformScanModeManager.State(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  MEMORY[0x23EEAFE40](v2);
  return Hasher._finalize()();
}

void FreeformScanModeManager.state.didset(unsigned __int8 a1)
{
  if (*(v1 + 16) != a1)
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, logger);

    oslog = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v13 = v5;
      *v4 = 136446466;
      v6 = String.init<A>(describing:)();
      v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v7, &v13);

      *(v4 + 4) = v8;
      *(v4 + 12) = 2082;
      v9 = String.init<A>(describing:)();
      v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v13);

      *(v4 + 14) = v11;
      _os_log_impl(&dword_23B824000, oslog, v3, "State changed from %{public}s to %{public}s", v4, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23EEB0B70](v5, -1, -1);
      MEMORY[0x23EEB0B70](v4, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t FreeformScanModeManager.update(cameraPositionWorld:boundingBoxWorld:)(float32x4_t a1, float32x4_t a2, float32x4_t a3, float32x4_t a4, float32x4_t a5)
{
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD4VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #0 of static BoundingBoxHelpers.getBoundingSphere(boxWorld:));
  v21 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a2, v6.f32[0]), a3, *v6.f32, 1), a4, v6, 2), a5, v6, 3);
  *v7.i64 = Transform.init(matrix:)();
  v8 = vmulq_f32(v7, v7);
  v9 = sqrtf(v8.f32[2] + vaddv_f32(*v8.f32)) * 0.5;
  v10 = vsubq_f32(a1, v21);
  v11 = vmulq_f32(v10, v10);
  v12 = sqrtf(v11.f32[2] + vaddv_f32(*v11.f32));
  v13 = v9 * 0.03;
  if ((v9 * 0.03) > 0.1)
  {
    v13 = 0.1;
  }

  v14 = *(v5 + 16);
  if (!*(v5 + 16))
  {
    if (v12 >= v9)
    {
      v15 = 1;
    }

    else
    {
      v15 = 2;
    }

    goto LABEL_12;
  }

  if (v14 == 1)
  {
    if (v12 <= (v9 - v13))
    {
      v15 = 2;
LABEL_12:
      *(v5 + 16) = v15;
      FreeformScanModeManager.state.didset(v14);
    }
  }

  else if ((v9 + v13) <= v12)
  {
    v15 = 1;
    goto LABEL_12;
  }

  return *(v5 + 16);
}

uint64_t getEnumTagSinglePayload for FreeformScanModeManager.State(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FreeformScanModeManager.State(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type FreeformScanModeManager.State and conformance FreeformScanModeManager.State(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type FreeformScanModeManager.State and conformance FreeformScanModeManager.State;
  if (!lazy protocol witness table cache variable for type FreeformScanModeManager.State and conformance FreeformScanModeManager.State)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FreeformScanModeManager.State and conformance FreeformScanModeManager.State);
  }

  return result;
}

uint64_t MeshResource.ShapeExtrusionOptions.chamferProfile.getter@<X0>(int8x16_t *a1@<X8>)
{
  MeshResource.ShapeExtrusionOptions._chamferProfileStorage.getter();
  if (v12)
  {
    outlined init with take of Animation(&v11, v13);
    outlined init with take of Animation(v13, &v11);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation15CGPathProviding_pMd, &_s17RealityFoundation15CGPathProviding_pMR);
    result = swift_dynamicCast();
    v3 = v10;
    if (result)
    {
      v4 = -1;
    }

    else
    {
      v3 = -1;
      v4 = 0;
    }

    v5 = vdupq_n_s64(v4);
    v6 = vandq_s8(v8, v5);
    v7 = vandq_s8(v9, v5);
  }

  else
  {
    result = outlined destroy of CGPathProviding?(&v11);
    v6 = 0uLL;
    v3 = -1;
    v7 = 0uLL;
  }

  *a1 = v6;
  a1[1] = v7;
  a1[2].i8[0] = v3;
  return result;
}

uint64_t outlined destroy of CGPathProviding?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation15CGPathProviding_pSgMd, &_s17RealityFoundation15CGPathProviding_pSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t key path setter for MeshResource.ShapeExtrusionOptions.chamferProfile : MeshResource.ShapeExtrusionOptions(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = *(a1 + 32);
  if (v7 != 255)
  {
    lazy protocol witness table accessor for type Path and conformance Path(a1, a2, a3);
    v8 = swift_allocObject();
    *(v8 + 16) = v3;
    *(v8 + 24) = v4;
    *(v8 + 32) = v5;
    *(v8 + 40) = v6;
    *(v8 + 48) = v7;
  }

  outlined copy of Path?(v3, v4, v5, v6, v7);
  return MeshResource.ShapeExtrusionOptions._chamferProfileStorage.setter();
}

uint64_t MeshResource.ShapeExtrusionOptions.chamferProfile.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (v3 != 255)
  {
    lazy protocol witness table accessor for type Path and conformance Path(a1, a2, a3);
    v5 = swift_allocObject();
    v6 = *(a1 + 16);
    *(v5 + 16) = *a1;
    *(v5 + 32) = v6;
    *(v5 + 48) = v3;
  }

  return MeshResource.ShapeExtrusionOptions._chamferProfileStorage.setter();
}

unint64_t lazy protocol witness table accessor for type Path and conformance Path(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type Path and conformance Path;
  if (!lazy protocol witness table cache variable for type Path and conformance Path)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Path and conformance Path);
  }

  return result;
}

uint64_t outlined consume of Path.Storage(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 - 2 <= 3)
  {
  }

  return v5;
}

void (*MeshResource.ShapeExtrusionOptions.chamferProfile.modify(int8x16_t **a1))(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  *a1 = v3;
  v3[2].i64[1] = v1;
  MeshResource.ShapeExtrusionOptions.chamferProfile.getter(v3);
  return MeshResource.ShapeExtrusionOptions.chamferProfile.modify;
}

void MeshResource.ShapeExtrusionOptions.chamferProfile.modify(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  v5 = **a1;
  v4 = (*a1)[1];
  v7 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = *(*a1 + 32);
  if (a2)
  {
    if (v8 != 255)
    {
      lazy protocol witness table accessor for type Path and conformance Path(a1, a2, a3);
      v9 = swift_allocObject();
      *(v9 + 16) = v5;
      *(v9 + 24) = v4;
      *(v9 + 32) = v7;
      *(v9 + 40) = v6;
      *(v9 + 48) = v8;
    }

    outlined copy of Path?(v5, v4, v7, v6, v8);
    MeshResource.ShapeExtrusionOptions._chamferProfileStorage.setter();
    outlined consume of Path?(*v3, v3[1], v3[2], v3[3], *(v3 + 32));
  }

  else
  {
    if (v8 != 255)
    {
      lazy protocol witness table accessor for type Path and conformance Path(a1, a2, a3);
      v10 = swift_allocObject();
      *(v10 + 16) = v5;
      *(v10 + 24) = v4;
      *(v10 + 32) = v7;
      *(v10 + 40) = v6;
      *(v10 + 48) = v8;
    }

    MeshResource.ShapeExtrusionOptions._chamferProfileStorage.setter();
  }

  free(v3);
}

uint64_t outlined copy of Path?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 != 0xFF)
  {
    return outlined copy of Path.Storage(a1, a2, a3, a4, a5);
  }

  return a1;
}

uint64_t outlined copy of Path.Storage(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 - 2 <= 3)
  {
  }

  return v5;
}

uint64_t outlined consume of Path?(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 != 0xFF)
  {
    return outlined consume of Path.Storage(result, a2, a3, a4, a5);
  }

  return result;
}

uint64_t MeshResource.init(extruding:extrusionOptions:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MeshResource.ShapeExtrusionOptions();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  Path.cgPath.getter();
  (*(v5 + 16))(v7, a2, v4);
  v8 = MeshResource.init(extruding:extrusionOptions:)();
  (*(v5 + 8))(a2, v4);
  outlined destroy of Path(a1);
  return v8;
}

{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for MeshResource.ShapeExtrusionOptions();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](MeshResource.init(extruding:extrusionOptions:), 0, 0);
}

uint64_t MeshResource.init(extruding:extrusionOptions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = v5[6];
  v6 = v5[7];
  v8 = v5[5];
  v9 = v5[3];
  v10 = Path.cgPath.getter();
  (*(v7 + 16))(v6, v9, v8);
  v11 = swift_task_alloc();
  v5[8] = v11;
  *v11 = v5;
  v11[1] = MeshResource.init(extruding:extrusionOptions:);
  v12 = v5[7];

  return MEMORY[0x282128D08](v10, v12);
}

uint64_t MeshResource.init(extruding:extrusionOptions:)(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v5 = MeshResource.init(extruding:extrusionOptions:);
  }

  else
  {
    *(v4 + 80) = a1;
    v5 = MeshResource.init(extruding:extrusionOptions:);
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t MeshResource.init(extruding:extrusionOptions:)()
{
  v1 = v0[6];
  v2 = v0[5];
  v3 = v0[3];
  outlined destroy of Path(v0[2]);
  (*(v1 + 8))(v3, v2);

  v4 = v0[1];
  v5 = v0[10];

  return v4(v5);
}

{
  v1 = v0[6];
  v2 = v0[5];
  v3 = v0[3];
  outlined destroy of Path(v0[2]);
  (*(v1 + 8))(v3, v2);

  v4 = v0[1];

  return v4();
}

{
  return MEMORY[0x282128D00]();
}

uint64_t ObjectCaptureView.init(session:cameraFeedOverlay:)@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, void *a5@<X8>)
{
  *a5 = a1;
  type metadata accessor for ObjectCaptureView(0, a3, a4, a3);

  a2(v6);
}

uint64_t ObjectCaptureView.body.getter@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v22 = a2;
  v4 = *(a1 + 16);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](a1);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(v6 + 24);
  v10 = type metadata accessor for InternalCaptureView(0, v4, v21, v9);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = (&v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v12);
  v16 = &v21 - v15;
  (*(v5 + 16))(v8, v2 + *(a1 + 36), v4);

  InternalCaptureView.init(session:cameraFeedOverlay:)(v17, v8, v4, v21, v14);
  swift_getWitnessTable();
  v18 = *(v11 + 16);
  v18(v16, v14, v10);
  v19 = *(v11 + 8);
  v19(v14, v10);
  v18(v22, v16, v10);
  return (v19)(v16, v10);
}

uint64_t InternalCaptureView.init(session:cameraFeedOverlay:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  a5[2] = a1;
  v8 = *(type metadata accessor for InternalCaptureView(0, a3, a4, a4) + 40);
  v9 = *(a3 - 8);
  (*(v9 + 16))(a5 + v8, a2, a3);
  type metadata accessor for DataModel(0);
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type DataModel and conformance DataModel, type metadata accessor for DataModel, &protocol conformance descriptor for DataModel);

  v10 = ObservedObject.init(wrappedValue:)();
  v12 = v11;
  result = (*(v9 + 8))(a2, a3);
  *a5 = v10;
  a5[1] = v12;
  return result;
}

uint64_t InternalCaptureView.body.getter(uint64_t a1)
{
  Transaction.disablesAnimations.setter();
  type metadata accessor for ARViewContainer(255, *(a1 + 16), *(a1 + 24), v2);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVy012_RealityKit_aB021ARObjectCapturingViewVAD010ARFreeformhI0VGMd, &_s7SwiftUI19_ConditionalContentVy012_RealityKit_aB021ARObjectCapturingViewVAD010ARFreeformhI0VGMR);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA4TextV_AA6SpacerVtGGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGSgMd, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA4TextV_AA6SpacerVtGGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGSgMR);
  swift_getTupleTypeMetadata3();
  type metadata accessor for TupleView();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4TextVAA23_SafeAreaIgnoringLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA4TextVAA23_SafeAreaIgnoringLayoutVGMR);
  type metadata accessor for _ConditionalContent();
  swift_getWitnessTable();
  lazy protocol witness table accessor for type ModifiedContent<Text, _SafeAreaIgnoringLayout> and conformance <> ModifiedContent<A, B>();
  swift_getWitnessTable();
  type metadata accessor for ZStack();
  withTransaction<A>(_:_:)();
}

uint64_t closure #1 in InternalCaptureView.body.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  static Alignment.center.getter();
  type metadata accessor for ARViewContainer(255, a2, a3, v5);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVy012_RealityKit_aB021ARObjectCapturingViewVAD010ARFreeformhI0VGMd, &_s7SwiftUI19_ConditionalContentVy012_RealityKit_aB021ARObjectCapturingViewVAD010ARFreeformhI0VGMR);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA4TextV_AA6SpacerVtGGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGSgMd, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA4TextV_AA6SpacerVtGGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGSgMR);
  swift_getTupleTypeMetadata3();
  type metadata accessor for TupleView();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4TextVAA23_SafeAreaIgnoringLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA4TextVAA23_SafeAreaIgnoringLayoutVGMR);
  type metadata accessor for _ConditionalContent();
  swift_getWitnessTable();
  lazy protocol witness table accessor for type ModifiedContent<Text, _SafeAreaIgnoringLayout> and conformance <> ModifiedContent<A, B>();
  swift_getWitnessTable();
  return ZStack.init(alignment:content:)();
}

uint64_t closure #1 in closure #1 in InternalCaptureView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, uint64_t a5@<X3>)
{
  v82 = a4;
  v75 = a3;
  v7 = type metadata accessor for ARViewContainer(255, a2, a3, a5);
  v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVy012_RealityKit_aB021ARObjectCapturingViewVAD010ARFreeformhI0VGMd, &_s7SwiftUI19_ConditionalContentVy012_RealityKit_aB021ARObjectCapturingViewVAD010ARFreeformhI0VGMR);
  v76 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA4TextV_AA6SpacerVtGGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGSgMd, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA4TextV_AA6SpacerVtGGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGSgMR);
  v77 = v8;
  swift_getTupleTypeMetadata3();
  v9 = type metadata accessor for TupleView();
  v79 = *(v9 - 8);
  v10 = MEMORY[0x28223BE20](v9);
  v78 = v69 - v11;
  v80 = *(a2 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = v7;
  v15 = *(v7 - 8);
  v16 = MEMORY[0x28223BE20](v12);
  v18 = (v69 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v16);
  v20 = v69 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4TextVAA23_SafeAreaIgnoringLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA4TextVAA23_SafeAreaIgnoringLayoutVGMR);
  v84 = v9;
  v81 = type metadata accessor for _ConditionalContent();
  v83 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v24 = v69 - v23;
  v25 = a1;
  v26 = *(a1 + 8);
  if (*(v26 + 16))
  {
    v73 = v21;
    v74 = v69 - v23;
    v27 = v75;
    v28 = type metadata accessor for InternalCaptureView(0, a2, v75, v22);
    (*(v80 + 16))(v14, v25 + *(v28 + 40), a2);

    ARViewContainer.init(model:cameraFeedOverlay:)(v14, a2, v27, v18);
    v29 = v85;
    WitnessTable = swift_getWitnessTable();
    v69[0] = *(v15 + 16);
    v69[1] = v15 + 16;
    (v69[0])(v20, v18, v29);
    v71 = *(v15 + 8);
    v72 = v18;
    v71(v18, v29);
    if (*(v26 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_captureMode) > 1u)
    {
      type metadata accessor for DataModel(0);
      lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type DataModel and conformance DataModel, type metadata accessor for DataModel, &protocol conformance descriptor for DataModel);

      v80 = ObservedObject.init(wrappedValue:)();
      v43 = v42;
      v44 = [objc_opt_self() currentDevice];
      v45 = [v44 userInterfaceIdiom] == 1;

      v46 = qword_23B91AC00[v45];
      LOBYTE(v113) = 0;
      v30 = State.init(wrappedValue:)();
      LOBYTE(v96) = 1;
      *&v113 = v80;
      *(&v113 + 1) = v43;
      *&v114 = v46;
      BYTE8(v114) = v121;
      *&v115 = *(&v121 + 1);
      v120 = 1;
    }

    else
    {

      specialized ARObjectCapturingView.init(model:)(&v113);
      LOBYTE(v96) = 0;
      v120 = 0;
    }

    v47 = lazy protocol witness table accessor for type ARObjectCapturingView and conformance ARObjectCapturingView(v30, v31, v32);
    lazy protocol witness table accessor for type ARFreeformCapturingView and conformance ARFreeformCapturingView(v47, v48, v49);
    _ConditionalContent<>.init(storage:)();
    v80 = v20;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(&v113);

    if (v113 == 1)
    {
      v50 = static HorizontalAlignment.center.getter();
      closure #1 in closure #1 in closure #1 in InternalCaptureView.body.getter(&v113);
      v52 = *(&v113 + 1);
      v51 = v113;
      v53 = v114;
      v54 = *(&v114 + 1);
      v55 = v115;
      v56 = BYTE8(v115);
      LOBYTE(v113) = 1;
      LOBYTE(v96) = v114;
      LOBYTE(v105[0]) = BYTE8(v115);
      v57 = static Color.yellow.getter();
      KeyPath = swift_getKeyPath();
      v107 = v50;
      LOBYTE(v108) = 1;
      *(&v108 + 1) = v51;
      BYTE8(v109) = v53;
      LOBYTE(v111) = v56;
    }

    else
    {
      v52 = 0;
      v54 = 0;
      v55 = 0;
      KeyPath = 0;
      v57 = 0;
      *(&v109 + 1) = 0;
      *&v111 = 0;
      v107 = 0u;
      v108 = 0u;
    }

    v59 = v72;
    *&v109 = v52;
    *&v110 = v54;
    *(&v110 + 1) = v55;
    *(&v111 + 1) = KeyPath;
    v112 = v57;
    v60 = v85;
    (v69[0])(v72, v80, v85);
    v100 = v125;
    v101 = v126;
    v102 = v127;
    v103 = v128;
    v96 = v121;
    v97 = v122;
    v98 = v123;
    v99 = v124;
    v104[0] = v59;
    v104[1] = &v96;
    v92 = v109;
    v93 = v110;
    v94 = v111;
    v95 = v112;
    v90 = v107;
    v91 = v108;
    v104[2] = &v90;
    outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(&v121, &v113, &_s7SwiftUI19_ConditionalContentVy012_RealityKit_aB021ARObjectCapturingViewVAD010ARFreeformhI0VGMd, &_s7SwiftUI19_ConditionalContentVy012_RealityKit_aB021ARObjectCapturingViewVAD010ARFreeformhI0VGMR);
    outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(&v107, &v113, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA4TextV_AA6SpacerVtGGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGSgMd, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA4TextV_AA6SpacerVtGGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGSgMR);
    v89[0] = v60;
    v89[1] = v77;
    v89[2] = v76;
    v86 = WitnessTable;
    v87 = lazy protocol witness table accessor for type _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView> and conformance <> _ConditionalContent<A, B>();
    v88 = lazy protocol witness table accessor for type ModifiedContent<VStack<TupleView<(Text, Spacer)>>, _EnvironmentKeyWritingModifier<Color?>>? and conformance <A> A?();
    v61 = v78;
    static ViewBuilder.buildBlock<each A>(_:)(v104, 3uLL, v89);
    v105[2] = v92;
    v105[3] = v93;
    v105[4] = v94;
    v106 = v95;
    v105[0] = v90;
    v105[1] = v91;
    outlined destroy of PerspectiveCameraComponent?(v105, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA4TextV_AA6SpacerVtGGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGSgMd, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA4TextV_AA6SpacerVtGGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGSgMR);
    v117 = v100;
    v118 = v101;
    v119 = v102;
    v120 = v103;
    v113 = v96;
    v114 = v97;
    v115 = v98;
    v116 = v99;
    outlined destroy of PerspectiveCameraComponent?(&v113, &_s7SwiftUI19_ConditionalContentVy012_RealityKit_aB021ARObjectCapturingViewVAD010ARFreeformhI0VGMd, &_s7SwiftUI19_ConditionalContentVy012_RealityKit_aB021ARObjectCapturingViewVAD010ARFreeformhI0VGMR);
    v62 = v71;
    v71(v59, v60);
    v63 = v84;
    swift_getWitnessTable();
    lazy protocol witness table accessor for type ModifiedContent<Text, _SafeAreaIgnoringLayout> and conformance <> ModifiedContent<A, B>();
    v24 = v74;
    static ViewBuilder.buildEither<A, B>(first:)(v61, v63);
    outlined destroy of PerspectiveCameraComponent?(&v107, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA4TextV_AA6SpacerVtGGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGSgMd, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA4TextV_AA6SpacerVtGGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGSgMR);
    outlined destroy of PerspectiveCameraComponent?(&v121, &_s7SwiftUI19_ConditionalContentVy012_RealityKit_aB021ARObjectCapturingViewVAD010ARFreeformhI0VGMd, &_s7SwiftUI19_ConditionalContentVy012_RealityKit_aB021ARObjectCapturingViewVAD010ARFreeformhI0VGMR);
    (*(v79 + 8))(v61, v63);
    v62(v80, v60);
  }

  else
  {
    LocalizedStringKey.init(stringLiteral:)();
    v33 = Text.init(_:tableName:bundle:comment:)();
    v35 = v34;
    v37 = v36;
    v39 = v38;
    v40 = static Edge.Set.all.getter();
    *&v121 = v33;
    *(&v121 + 1) = v35;
    v37 &= 1u;
    LOBYTE(v122) = v37;
    *(&v122 + 1) = v39;
    LOBYTE(v123) = v40;
    v41 = v84;
    swift_getWitnessTable();
    lazy protocol witness table accessor for type ModifiedContent<Text, _SafeAreaIgnoringLayout> and conformance <> ModifiedContent<A, B>();
    static ViewBuilder.buildEither<A, B>(second:)(&v121, v41, v21);
    outlined consume of Text.Storage(v33, v35, v37);
  }

  v64 = swift_getWitnessTable();
  v65 = lazy protocol witness table accessor for type ModifiedContent<Text, _SafeAreaIgnoringLayout> and conformance <> ModifiedContent<A, B>();
  v129 = v64;
  v130 = v65;
  v66 = v81;
  swift_getWitnessTable();
  v67 = v83;
  (*(v83 + 16))(v82, v24, v66);
  return (*(v67 + 8))(v24, v66);
}

uint64_t closure #1 in closure #1 in closure #1 in InternalCaptureView.body.getter@<X0>(uint64_t a2@<X8>)
{
  v3 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  MEMORY[0x28223BE20](v3 - 8);
  LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v4._countAndFlagsBits = 0x203D204F5349;
  v4._object = 0xE600000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v4);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v13);

  LocalizedStringKey.StringInterpolation.appendInterpolation<A>(_:specifier:)();
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v5);
  LocalizedStringKey.init(stringInterpolation:)();
  v6 = Text.init(_:tableName:bundle:comment:)();
  v8 = v7;
  *a2 = v6;
  *(a2 + 8) = v7;
  v10 = v9 & 1;
  *(a2 + 16) = v9 & 1;
  *(a2 + 24) = v11;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  outlined copy of Text.Storage(v6, v7, v9 & 1);

  outlined consume of Text.Storage(v6, v8, v10);
}

uint64_t static ViewBuilder.buildBlock<each A>(_:)(uint64_t *TupleTypeMetadata, unint64_t a2, uint64_t a3)
{
  v5 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x28223BE20](TupleTypeMetadata);
    v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a2)
    {
      v9 = 0;
      v10 = a3 & 0xFFFFFFFFFFFFFFFELL;
      if (a2 < 4)
      {
        goto LABEL_9;
      }

      if (&v8[-v10] < 0x20)
      {
        goto LABEL_9;
      }

      v9 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      v11 = (v10 + 16);
      v12 = v8 + 16;
      v13 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v14 = *v11;
        *(v12 - 1) = *(v11 - 1);
        *v12 = v14;
        v11 += 2;
        v12 += 2;
        v13 -= 4;
      }

      while (v13);
      if (v9 != a2)
      {
LABEL_9:
        v15 = a2 - v9;
        v16 = 8 * v9;
        v17 = &v8[8 * v9];
        v18 = (v10 + v16);
        do
        {
          v19 = *v18++;
          *v17 = v19;
          v17 += 8;
          --v15;
        }

        while (v15);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = TupleTypeMetadata;
  }

  MEMORY[0x28223BE20](TupleTypeMetadata);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v22 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v23 = (v6 + 32);
    v24 = a2;
    do
    {
      if (a2 == 1)
      {
        v25 = 0;
      }

      else
      {
        v25 = *v23;
      }

      v27 = *v22++;
      v26 = v27;
      v28 = *v5++;
      (*(*(v26 - 8) + 16))(&v21[v25], v28);
      v23 += 4;
      --v24;
    }

    while (v24);
  }

  return TupleView.init(_:)();
}

uint64_t ObjectCaptureView.hideObjectReticle(_:)@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v22 = a1;
  v29 = a3;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v28 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v21[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for DispatchQoS();
  v26 = *(v8 - 8);
  v27 = v8;
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v21[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = *(a2 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  type metadata accessor for OS_dispatch_queue();
  v14 = static OS_dispatch_queue.main.getter();
  v15 = *(v12 + 16);
  v23 = v14;
  v24 = v15;
  v15(&v21[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)], v3, a2);
  v16 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = *(a2 + 16);
  (*(v12 + 32))(v17 + v16, &v21[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)], a2);
  *(v17 + v16 + v13) = v22;
  aBlock[4] = partial apply for closure #1 in ObjectCaptureView.hideObjectReticle(_:);
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor;
  v18 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type LoadRequest<ModelEntity> and conformance LoadRequest<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x277D83970]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v19 = v23;
  MEMORY[0x23EEAF960](0, v11, v7, v18);
  _Block_release(v18);

  (*(v28 + 8))(v7, v5);
  (*(v26 + 8))(v11, v27);
  return v24(v29, v25, a2);
}

unint64_t type metadata accessor for OS_dispatch_queue()
{
  result = lazy cache variable for type metadata for OS_dispatch_queue;
  if (!lazy cache variable for type metadata for OS_dispatch_queue)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for OS_dispatch_queue);
  }

  return result;
}

uint64_t closure #1 in ObjectCaptureView.hideObjectReticle(_:)(void *a1, char a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t partial apply for closure #1 in ObjectCaptureView.hideObjectReticle(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(type metadata accessor for ObjectCaptureView(0, *(v4 + 16), *(v4 + 24), a4) - 8);
  v6 = (v4 + ((*(v5 + 80) + 32) & ~*(v5 + 80)));
  v7 = *(v6 + *(v5 + 64));

  return closure #1 in ObjectCaptureView.hideObjectReticle(_:)(v6, v7);
}

uint64_t thunk for @escaping @callee_guaranteed () -> ()(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

{
  return (*(a1 + 32))();
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t type metadata completion function for ObjectCaptureView(uint64_t a1)
{
  result = type metadata accessor for ObjectCaptureSession(319);
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ObjectCaptureView(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 8) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((a1 + v6 + 8) & ~v6);
      }

      v15 = *a1;
      if (*a1 >= 0xFFFFFFFFuLL)
      {
        LODWORD(v15) = -1;
      }

      return (v15 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void storeEnumTagSinglePayload for ObjectCaptureView(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 8) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_47:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_47;
            }
          }

          goto LABEL_44;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_47;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_47;
      }
    }

LABEL_44:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if ((v7 & 0x80000000) != 0)
  {
    v20 = *(v6 + 56);
    v21 = &a1[v9 + 8] & ~v9;

    v20(v21);
  }

  else
  {
    if ((a2 & 0x80000000) != 0)
    {
      v19 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v19 = a2 - 1;
    }

    *a1 = v19;
  }
}

void type metadata completion function for InternalCaptureView(uint64_t a1)
{
  type metadata accessor for ObservedObject<DataModel>(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for ObjectCaptureSession(319);
    if (v2 <= 0x3F)
    {
      swift_checkMetadataState();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for InternalCaptureView(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 24) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v6 + 8) & ~v6);
      }

      v15 = *(a1 + 1);
      if (v15 >= 0xFFFFFFFF)
      {
        LODWORD(v15) = -1;
      }

      return (v15 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void storeEnumTagSinglePayload for InternalCaptureView(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 24) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_46:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if ((v7 & 0x80000000) != 0)
  {
    v19 = *(v6 + 56);
    v20 = (((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v9 + 8) & ~v9;

    v19(v20);
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *a1 = a2 & 0x7FFFFFFF;
    *(a1 + 1) = 0;
  }

  else
  {
    *(a1 + 1) = a2 - 1;
  }
}

void type metadata accessor for ObservedObject<DataModel>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ObservedObject<DataModel>)
  {
    type metadata accessor for DataModel(255);
    lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type DataModel and conformance DataModel, type metadata accessor for DataModel, &protocol conformance descriptor for DataModel);
    v1 = type metadata accessor for ObservedObject();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ObservedObject<DataModel>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t lazy protocol witness table accessor for type ModifiedContent<Text, _SafeAreaIgnoringLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Text, _SafeAreaIgnoringLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Text, _SafeAreaIgnoringLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4TextVAA23_SafeAreaIgnoringLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA4TextVAA23_SafeAreaIgnoringLayoutVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Text, _SafeAreaIgnoringLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t outlined consume of Text.Storage(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

float key path getter for DataModel.cameraIso : DataModel@<S0>(_DWORD *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v4);

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t key path setter for DataModel.cameraIso : DataModel(int *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t key path getter for DataModel.debuggingMode : DataModel@<X0>(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v4);

  *a2 = v4;
  return result;
}

uint64_t key path setter for DataModel.debuggingMode : DataModel(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

unint64_t lazy protocol witness table accessor for type ARObjectCapturingView and conformance ARObjectCapturingView(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type ARObjectCapturingView and conformance ARObjectCapturingView;
  if (!lazy protocol witness table cache variable for type ARObjectCapturingView and conformance ARObjectCapturingView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ARObjectCapturingView and conformance ARObjectCapturingView);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ARFreeformCapturingView and conformance ARFreeformCapturingView(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type ARFreeformCapturingView and conformance ARFreeformCapturingView;
  if (!lazy protocol witness table cache variable for type ARFreeformCapturingView and conformance ARFreeformCapturingView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ARFreeformCapturingView and conformance ARFreeformCapturingView);
  }

  return result;
}

uint64_t outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView> and conformance <> _ConditionalContent<A, B>)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVy012_RealityKit_aB021ARObjectCapturingViewVAD010ARFreeformhI0VGMd, &_s7SwiftUI19_ConditionalContentVy012_RealityKit_aB021ARObjectCapturingViewVAD010ARFreeformhI0VGMR);
    v6 = lazy protocol witness table accessor for type ARObjectCapturingView and conformance ARObjectCapturingView(v1, v2, v3);
    lazy protocol witness table accessor for type ARFreeformCapturingView and conformance ARFreeformCapturingView(v6, v4, v5);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<VStack<TupleView<(Text, Spacer)>>, _EnvironmentKeyWritingModifier<Color?>>? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(Text, Spacer)>>, _EnvironmentKeyWritingModifier<Color?>>? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(Text, Spacer)>>, _EnvironmentKeyWritingModifier<Color?>>? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA4TextV_AA6SpacerVtGGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGSgMd, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA4TextV_AA6SpacerVtGGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGSgMR);
    lazy protocol witness table accessor for type ModifiedContent<VStack<TupleView<(Text, Spacer)>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(Text, Spacer)>>, _EnvironmentKeyWritingModifier<Color?>>? and conformance <A> A?);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<VStack<TupleView<(Text, Spacer)>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(Text, Spacer)>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(Text, Spacer)>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA4TextV_AA6SpacerVtGGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMd, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA4TextV_AA6SpacerVtGGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMR);
    lazy protocol witness table accessor for type LoadRequest<ModelEntity> and conformance LoadRequest<A>(&lazy protocol witness table cache variable for type VStack<TupleView<(Text, Spacer)>> and conformance VStack<A>, &_s7SwiftUI6VStackVyAA9TupleViewVyAA4TextV_AA6SpacerVtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA4TextV_AA6SpacerVtGGMR, MEMORY[0x277CE1198]);
    lazy protocol witness table accessor for type LoadRequest<ModelEntity> and conformance LoadRequest<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Color?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVSgGMd, _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVSgGMR, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(Text, Spacer)>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t key path getter for EnvironmentValues.foregroundColor : EnvironmentValues, serialized@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.foregroundColor.getter();
  *a1 = result;
  return result;
}

uint64_t outlined copy of Text.Storage(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t ObjectCaptureSession.Updates.Iterator.next()(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = type metadata accessor for AsyncStream.Iterator();
  *v4 = v2;
  v4[1] = ObjectCaptureSession.Updates.Iterator.next();

  return MEMORY[0x2822003F0](a1, v5);
}

uint64_t ObjectCaptureSession.Updates.Iterator.next()()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t protocol witness for AsyncIteratorProtocol.next() in conformance ObjectCaptureSession.Updates<A>.Iterator(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = protocol witness for AsyncIteratorProtocol.next() in conformance ObjectCaptureSession.Updates<A>.Iterator;

  return ObjectCaptureSession.Updates.Iterator.next()(a1, a2);
}

uint64_t protocol witness for AsyncIteratorProtocol.next() in conformance ObjectCaptureSession.Updates<A>.Iterator()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t _s19_RealityKit_SwiftUI20ObjectCaptureSessionC7UpdatesV8IteratorVy_x_GScIAAScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTW(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  *v12 = v6;
  v12[1] = _s19_RealityKit_SwiftUI20ObjectCaptureSessionC7UpdatesV8IteratorVy_x_GScIAAScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTWTQ0_;

  return MEMORY[0x282200320](a1, a2, a3, a5, a6);
}

uint64_t _s19_RealityKit_SwiftUI20ObjectCaptureSessionC7UpdatesV8IteratorVy_x_GScIAAScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTWTQ0_()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t ObjectCaptureSession.Updates.makeAsyncIterator()@<X0>(uint64_t a2@<X8>)
{
  v3 = type metadata accessor for AsyncStream.Iterator();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8 - v5;
  type metadata accessor for AsyncStream();
  AsyncStream.makeAsyncIterator()();
  return (*(v4 + 32))(a2, v6, v3);
}

uint64_t protocol witness for AsyncSequence.makeAsyncIterator() in conformance ObjectCaptureSession.Updates<A>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  ObjectCaptureSession.Updates.makeAsyncIterator()(a2);
  v4 = *(*(a1 - 8) + 8);

  return v4(v2, a1);
}

uint64_t ObjectCaptureSession.Error.localizedDescription.getter()
{
  v1 = type metadata accessor for ObjectCaptureSession.Error(0);
  MEMORY[0x28223BE20](v1);
  outlined init with copy of ObjectCaptureSession.Error(v0, &v4 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ObjectCaptureSession.Error);
  return String.init<A>(describing:)();
}

uint64_t ObjectCaptureSession.__allocating_init()()
{
  v0 = swift_allocObject();
  ObjectCaptureSession.init()();
  return v0;
}

void ObjectCaptureSession.init()()
{
  v1 = v0;
  v2 = MEMORY[0x277D84FA0];
  *(v0 + 16) = 0;
  *(v0 + 24) = v2;
  *(v0 + 32) = 4;
  *(v0 + 40) = 0;
  v3 = v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI20ObjectCaptureSession__configuration;
  v4 = type metadata accessor for URL();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  *(v3 + *(type metadata accessor for ObjectCaptureSession.Configuration(0) + 20)) = 0;
  v5 = OBJC_IVAR____TtC19_RealityKit_SwiftUI20ObjectCaptureSession_tornDown;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19_RealityKit_SwiftUI22UnsafeSendableInstance33_F555F9351C483C251602142343A1B4ACLLCySbGMd, &_s19_RealityKit_SwiftUI22UnsafeSendableInstance33_F555F9351C483C251602142343A1B4ACLLCySbGMR);
  v6 = swift_allocObject();
  swift_beginAccess();
  Atomic.init(wrappedValue:)();
  swift_endAccess();
  *(v1 + v5) = v6;
  *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI20ObjectCaptureSession__subscriptions) = v2;
  v7 = OBJC_IVAR____TtC19_RealityKit_SwiftUI20ObjectCaptureSession_stateUpdater;
  v8 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation26AsyncUpdateStreamContainerCy01_A11Kit_SwiftUI20ObjectCaptureSessionC0K5StateOGMd, &_s17RealityFoundation26AsyncUpdateStreamContainerCy01_A11Kit_SwiftUI20ObjectCaptureSessionC0K5StateOGMR));
  *(v1 + v7) = AsyncUpdateStreamContainer.init(name:)();
  v9 = OBJC_IVAR____TtC19_RealityKit_SwiftUI20ObjectCaptureSession_feedbackUpdater;
  v10 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation26AsyncUpdateStreamContainerCyShy01_A11Kit_SwiftUI20ObjectCaptureSessionC8FeedbackOGGMd, &_s17RealityFoundation26AsyncUpdateStreamContainerCyShy01_A11Kit_SwiftUI20ObjectCaptureSessionC8FeedbackOGGMR));
  *(v1 + v9) = AsyncUpdateStreamContainer.init(name:)();
  v11 = OBJC_IVAR____TtC19_RealityKit_SwiftUI20ObjectCaptureSession_cameraTrackingUpdater;
  v12 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation26AsyncUpdateStreamContainerCy01_A11Kit_SwiftUI20ObjectCaptureSessionC8TrackingOGMd, &_s17RealityFoundation26AsyncUpdateStreamContainerCy01_A11Kit_SwiftUI20ObjectCaptureSessionC8TrackingOGMR));
  *(v1 + v11) = AsyncUpdateStreamContainer.init(name:)();
  v13 = OBJC_IVAR____TtC19_RealityKit_SwiftUI20ObjectCaptureSession_isPausedUpdater;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation26AsyncUpdateStreamContainerCySbGMd, &_s17RealityFoundation26AsyncUpdateStreamContainerCySbGMR);
  v15 = objc_allocWithZone(v14);
  *(v1 + v13) = AsyncUpdateStreamContainer.init(name:)();
  v16 = OBJC_IVAR____TtC19_RealityKit_SwiftUI20ObjectCaptureSession_userCompletedScanPassUpdater;
  v17 = objc_allocWithZone(v14);
  *(v1 + v16) = AsyncUpdateStreamContainer.init(name:)();
  v18 = OBJC_IVAR____TtC19_RealityKit_SwiftUI20ObjectCaptureSession_canRequestImageCaptureUpdater;
  v19 = objc_allocWithZone(v14);
  *(v1 + v18) = AsyncUpdateStreamContainer.init(name:)();
  v20 = OBJC_IVAR____TtC19_RealityKit_SwiftUI20ObjectCaptureSession_numberOfShotsTakenUpdater;
  v21 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation26AsyncUpdateStreamContainerCySiGMd, &_s17RealityFoundation26AsyncUpdateStreamContainerCySiGMR));
  *(v1 + v20) = AsyncUpdateStreamContainer.init(name:)();
  ObservationRegistrar.init()();
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  __swift_project_value_buffer(v22, logger);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_23B824000, v23, v24, "~~~ ObjectCaptureSession init was called! ~~~", v25, 2u);
    MEMORY[0x23EEB0B70](v25, -1, -1);
  }

  type metadata accessor for DataModel(0);
  swift_allocObject();
  *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI20ObjectCaptureSession_unsafeModel) = DataModel.init()();
  v29[0] = 0;
  ObjectCaptureSession.setState(_:)(v29);
  ObjectCaptureSession.setFeedback(_:)(MEMORY[0x277D84FA0]);
  LOBYTE(v29[0]) = 4;
  ObjectCaptureSession.setCameraTracking(_:)(v29);
  ObjectCaptureSession.setIsPaused(_:)(0);
  ObjectCaptureSession.setCanRequestImageCapture(_:)(0);
  ObjectCaptureSession.setNumberOfShotsTaken(_:)(0);
  ObjectCaptureSession.setUserCompletedScanPass(_:)(0);
  type metadata accessor for ObjectCaptureSession();
  if (MEMORY[0x23EEAE1E0]())
  {
    ObjectCaptureSession.subscribeToInternalPublishers()();
    specialized static ObjectCaptureSession.stopResourceLogging()("Starting resource logging...", &unk_284E41270, &async function pointer to partial apply for closure #1 in static ObjectCaptureSession.startResourceLogging());
    ObjectCaptureSession.logAnalyticsEventsOnStartUp()();
  }

  else
  {
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_23B824000, v26, v27, "An ObjectCaptureSession cannot be created on this device since ObjectCaptureSession.isSupported is false", v28, 2u);
      MEMORY[0x23EEB0B70](v28, -1, -1);
    }

    __break(1u);
  }
}

void ObjectCaptureSession.state.setter(id *a1)
{
  v2 = *a1;
  v3 = *(v1 + 16);
  if (v3 > 2)
  {
    switch(v3)
    {
      case 3:
        if (v2 == 3)
        {
          v3 = 3;
          v4 = 3;
          goto LABEL_22;
        }

        break;
      case 4:
        if (v2 == 4)
        {
          v3 = 4;
          v4 = 4;
          goto LABEL_22;
        }

        break;
      case 5:
        if (v2 == 5)
        {
          v3 = 5;
          v4 = 5;
          goto LABEL_22;
        }

        break;
      default:
LABEL_16:
        if (v2 >= 6)
        {
          outlined copy of ObjectCaptureSession.CaptureState(*a1);
          outlined copy of ObjectCaptureSession.CaptureState(v3);
          v4 = v2;
          goto LABEL_22;
        }

        break;
    }

LABEL_25:
    outlined copy of ObjectCaptureSession.CaptureState(*a1);
    outlined copy of ObjectCaptureSession.CaptureState(v3);
    outlined consume of ObjectCaptureSession.CaptureState(v3);
    outlined consume of ObjectCaptureSession.CaptureState(v2);
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    lazy protocol witness table accessor for type ObjectCaptureSession and conformance ObjectCaptureSession(&lazy protocol witness table cache variable for type ObjectCaptureSession and conformance ObjectCaptureSession, type metadata accessor for ObjectCaptureSession, &protocol conformance descriptor for ObjectCaptureSession);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    outlined consume of ObjectCaptureSession.CaptureState(v2);

    return;
  }

  if (!v3)
  {
    if (!v2)
    {
      v3 = 0;
      v4 = 0;
      goto LABEL_22;
    }

    goto LABEL_25;
  }

  if (v3 == 1)
  {
    if (v2 == 1)
    {
      v3 = 1;
      v4 = 1;
      goto LABEL_22;
    }

    goto LABEL_25;
  }

  if (v3 != 2)
  {
    goto LABEL_16;
  }

  if (v2 != 2)
  {
    goto LABEL_25;
  }

  v3 = 2;
  v4 = 2;
LABEL_22:
  outlined consume of ObjectCaptureSession.CaptureState(v3);
  outlined consume of ObjectCaptureSession.CaptureState(v4);
  v5 = *(v1 + 16);
  *(v1 + 16) = v2;

  outlined consume of ObjectCaptureSession.CaptureState(v5);
}

uint64_t ObjectCaptureSession.feedback.setter(uint64_t a1)
{
  if (_sSh2eeoiySbShyxG_ABtFZ19_RealityKit_SwiftUI20ObjectCaptureSessionC8FeedbackO_Tt1g5(*(v1 + 24), a1))
  {
    *(v1 + 24) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    lazy protocol witness table accessor for type ObjectCaptureSession and conformance ObjectCaptureSession(&lazy protocol witness table cache variable for type ObjectCaptureSession and conformance ObjectCaptureSession, type metadata accessor for ObjectCaptureSession, &protocol conformance descriptor for ObjectCaptureSession);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

unsigned __int8 *ObjectCaptureSession.cameraTracking.setter(unsigned __int8 *result)
{
  v2 = *result;
  v3 = *(v1 + 32);
  if (v3 == 5)
  {
    if (v2 == 5)
    {
      goto LABEL_4;
    }
  }

  else if (v3 == 4)
  {
    if (v2 == 4)
    {
LABEL_4:
      *(v1 + 32) = v2;
      return result;
    }
  }

  else if ((v2 & 0xFE) != 4 && v3 == v2)
  {
    goto LABEL_4;
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  lazy protocol witness table accessor for type ObjectCaptureSession and conformance ObjectCaptureSession(&lazy protocol witness table cache variable for type ObjectCaptureSession and conformance ObjectCaptureSession, type metadata accessor for ObjectCaptureSession, &protocol conformance descriptor for ObjectCaptureSession);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t ObjectCaptureSession.isPaused.setter(uint64_t result)
{
  if (*(v1 + 33) == (result & 1))
  {
    *(v1 + 33) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    lazy protocol witness table accessor for type ObjectCaptureSession and conformance ObjectCaptureSession(&lazy protocol witness table cache variable for type ObjectCaptureSession and conformance ObjectCaptureSession, type metadata accessor for ObjectCaptureSession, &protocol conformance descriptor for ObjectCaptureSession);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t ObjectCaptureSession.userCompletedScanPass.setter(uint64_t result)
{
  if (*(v1 + 34) == (result & 1))
  {
    *(v1 + 34) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    lazy protocol witness table accessor for type ObjectCaptureSession and conformance ObjectCaptureSession(&lazy protocol witness table cache variable for type ObjectCaptureSession and conformance ObjectCaptureSession, type metadata accessor for ObjectCaptureSession, &protocol conformance descriptor for ObjectCaptureSession);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t ObjectCaptureSession.canRequestImageCapture.setter(uint64_t result)
{
  if (*(v1 + 35) == (result & 1))
  {
    *(v1 + 35) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    lazy protocol witness table accessor for type ObjectCaptureSession and conformance ObjectCaptureSession(&lazy protocol witness table cache variable for type ObjectCaptureSession and conformance ObjectCaptureSession, type metadata accessor for ObjectCaptureSession, &protocol conformance descriptor for ObjectCaptureSession);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t ObjectCaptureSession.numberOfShotsTaken.setter(uint64_t result)
{
  if (*(v1 + 40) != result)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    lazy protocol witness table accessor for type ObjectCaptureSession and conformance ObjectCaptureSession(&lazy protocol witness table cache variable for type ObjectCaptureSession and conformance ObjectCaptureSession, type metadata accessor for ObjectCaptureSession, &protocol conformance descriptor for ObjectCaptureSession);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t ObjectCaptureSession.subscriptions.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC19_RealityKit_SwiftUI20ObjectCaptureSession__subscriptions;
  swift_beginAccess();

  v5 = _sSh2eeoiySbShyxG_ABtFZ7Combine14AnyCancellableC_Tt1g5(v4, a1);

  if (v5)
  {
    *(v1 + v3) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    lazy protocol witness table accessor for type ObjectCaptureSession and conformance ObjectCaptureSession(&lazy protocol witness table cache variable for type ObjectCaptureSession and conformance ObjectCaptureSession, type metadata accessor for ObjectCaptureSession, &protocol conformance descriptor for ObjectCaptureSession);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

id key path getter for ObjectCaptureSession.state : ObjectCaptureSession@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type ObjectCaptureSession and conformance ObjectCaptureSession(&lazy protocol witness table cache variable for type ObjectCaptureSession and conformance ObjectCaptureSession, type metadata accessor for ObjectCaptureSession, &protocol conformance descriptor for ObjectCaptureSession);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 16);
  *a2 = v4;
  return outlined copy of ObjectCaptureSession.CaptureState(v4);
}

void key path setter for ObjectCaptureSession.state : ObjectCaptureSession(id *a1)
{
  v1 = *a1;
  outlined copy of ObjectCaptureSession.CaptureState(v1);
  ObjectCaptureSession.state.setter(&v1);
}

id ObjectCaptureSession.state.getter@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type ObjectCaptureSession and conformance ObjectCaptureSession(&lazy protocol witness table cache variable for type ObjectCaptureSession and conformance ObjectCaptureSession, type metadata accessor for ObjectCaptureSession, &protocol conformance descriptor for ObjectCaptureSession);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = *(v1 + 16);
  *a1 = v3;
  return outlined copy of ObjectCaptureSession.CaptureState(v3);
}

uint64_t ObjectCaptureSession.stateUpdates.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy19_RealityKit_SwiftUI20ObjectCaptureSessionC0F5StateOGSgMd, &_sScSy19_RealityKit_SwiftUI20ObjectCaptureSessionC0F5StateOGSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v8 - v3;
  dispatch thunk of AsyncUpdateStreamContainer.makeUpdater()();
  dispatch thunk of AsyncUpdateStream.stream.getter();

  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy19_RealityKit_SwiftUI20ObjectCaptureSessionC0F5StateOGMd, &_sScSy19_RealityKit_SwiftUI20ObjectCaptureSessionC0F5StateOGMR);
  v6 = *(v5 - 8);
  result = (*(v6 + 48))(v4, 1, v5);
  if (result != 1)
  {
    return (*(v6 + 32))(a1, v4, v5);
  }

  __break(1u);
  return result;
}

uint64_t key path getter for ObjectCaptureSession.feedback : ObjectCaptureSession@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type ObjectCaptureSession and conformance ObjectCaptureSession(&lazy protocol witness table cache variable for type ObjectCaptureSession and conformance ObjectCaptureSession, type metadata accessor for ObjectCaptureSession, &protocol conformance descriptor for ObjectCaptureSession);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 24);
}

uint64_t ObjectCaptureSession.feedback.getter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type ObjectCaptureSession and conformance ObjectCaptureSession(&lazy protocol witness table cache variable for type ObjectCaptureSession and conformance ObjectCaptureSession, type metadata accessor for ObjectCaptureSession, &protocol conformance descriptor for ObjectCaptureSession);
  ObservationRegistrar.access<A, B>(_:keyPath:)();
}

uint64_t ObjectCaptureSession.feedbackUpdates.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSyShy19_RealityKit_SwiftUI20ObjectCaptureSessionC8FeedbackOGGSgMd, &_sScSyShy19_RealityKit_SwiftUI20ObjectCaptureSessionC8FeedbackOGGSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v8 - v3;
  dispatch thunk of AsyncUpdateStreamContainer.makeUpdater()();
  dispatch thunk of AsyncUpdateStream.stream.getter();

  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSyShy19_RealityKit_SwiftUI20ObjectCaptureSessionC8FeedbackOGGMd, &_sScSyShy19_RealityKit_SwiftUI20ObjectCaptureSessionC8FeedbackOGGMR);
  v6 = *(v5 - 8);
  result = (*(v6 + 48))(v4, 1, v5);
  if (result != 1)
  {
    return (*(v6 + 32))(a1, v4, v5);
  }

  __break(1u);
  return result;
}

BOOL static ObjectCaptureSession.Tracking.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 5)
  {
    return v3 == 5;
  }

  if (v2 == 4)
  {
    return v3 == 4;
  }

  if ((v3 & 0xFE) == 4)
  {
    return 0;
  }

  return v2 == v3;
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance ObjectCaptureSession.Tracking(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 5)
  {
    return v3 == 5;
  }

  if (v2 == 4)
  {
    return v3 == 4;
  }

  if ((v3 & 0xFE) == 4)
  {
    return 0;
  }

  return v2 == v3;
}

uint64_t key path getter for ObjectCaptureSession.cameraTracking : ObjectCaptureSession@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type ObjectCaptureSession and conformance ObjectCaptureSession(&lazy protocol witness table cache variable for type ObjectCaptureSession and conformance ObjectCaptureSession, type metadata accessor for ObjectCaptureSession, &protocol conformance descriptor for ObjectCaptureSession);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 32);
  return result;
}

uint64_t ObjectCaptureSession.cameraTracking.getter@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type ObjectCaptureSession and conformance ObjectCaptureSession(&lazy protocol witness table cache variable for type ObjectCaptureSession and conformance ObjectCaptureSession, type metadata accessor for ObjectCaptureSession, &protocol conformance descriptor for ObjectCaptureSession);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a1 = *(v1 + 32);
  return result;
}

uint64_t ObjectCaptureSession.cameraTrackingUpdates.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy19_RealityKit_SwiftUI20ObjectCaptureSessionC8TrackingOGSgMd, &_sScSy19_RealityKit_SwiftUI20ObjectCaptureSessionC8TrackingOGSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v8 - v3;
  dispatch thunk of AsyncUpdateStreamContainer.makeUpdater()();
  dispatch thunk of AsyncUpdateStream.stream.getter();

  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy19_RealityKit_SwiftUI20ObjectCaptureSessionC8TrackingOGMd, &_sScSy19_RealityKit_SwiftUI20ObjectCaptureSessionC8TrackingOGMR);
  v6 = *(v5 - 8);
  result = (*(v6 + 48))(v4, 1, v5);
  if (result != 1)
  {
    return (*(v6 + 32))(a1, v4, v5);
  }

  __break(1u);
  return result;
}

uint64_t key path getter for ObjectCaptureSession.isPaused : ObjectCaptureSession@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type ObjectCaptureSession and conformance ObjectCaptureSession(&lazy protocol witness table cache variable for type ObjectCaptureSession and conformance ObjectCaptureSession, type metadata accessor for ObjectCaptureSession, &protocol conformance descriptor for ObjectCaptureSession);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 33);
  return result;
}

uint64_t ObjectCaptureSession.isPaused.getter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type ObjectCaptureSession and conformance ObjectCaptureSession(&lazy protocol witness table cache variable for type ObjectCaptureSession and conformance ObjectCaptureSession, type metadata accessor for ObjectCaptureSession, &protocol conformance descriptor for ObjectCaptureSession);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 33);
}

uint64_t ObjectCaptureSession.isPausedUpdates.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSySbGSgMd, &_sScSySbGSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v8 - v3;
  dispatch thunk of AsyncUpdateStreamContainer.makeUpdater()();
  dispatch thunk of AsyncUpdateStream.stream.getter();

  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSySbGMd, &_sScSySbGMR);
  v6 = *(v5 - 8);
  result = (*(v6 + 48))(v4, 1, v5);
  if (result != 1)
  {
    return (*(v6 + 32))(a1, v4, v5);
  }

  __break(1u);
  return result;
}

uint64_t key path getter for ObjectCaptureSession.userCompletedScanPass : ObjectCaptureSession@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type ObjectCaptureSession and conformance ObjectCaptureSession(&lazy protocol witness table cache variable for type ObjectCaptureSession and conformance ObjectCaptureSession, type metadata accessor for ObjectCaptureSession, &protocol conformance descriptor for ObjectCaptureSession);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 34);
  return result;
}

uint64_t ObjectCaptureSession.userCompletedScanPass.getter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type ObjectCaptureSession and conformance ObjectCaptureSession(&lazy protocol witness table cache variable for type ObjectCaptureSession and conformance ObjectCaptureSession, type metadata accessor for ObjectCaptureSession, &protocol conformance descriptor for ObjectCaptureSession);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 34);
}

uint64_t ObjectCaptureSession.userCompletedScanPassUpdates.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSySbGSgMd, &_sScSySbGSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v8 - v3;
  dispatch thunk of AsyncUpdateStreamContainer.makeUpdater()();
  dispatch thunk of AsyncUpdateStream.stream.getter();

  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSySbGMd, &_sScSySbGMR);
  v6 = *(v5 - 8);
  result = (*(v6 + 48))(v4, 1, v5);
  if (result != 1)
  {
    return (*(v6 + 32))(a1, v4, v5);
  }

  __break(1u);
  return result;
}

uint64_t key path getter for ObjectCaptureSession.canRequestImageCapture : ObjectCaptureSession@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type ObjectCaptureSession and conformance ObjectCaptureSession(&lazy protocol witness table cache variable for type ObjectCaptureSession and conformance ObjectCaptureSession, type metadata accessor for ObjectCaptureSession, &protocol conformance descriptor for ObjectCaptureSession);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 35);
  return result;
}

uint64_t ObjectCaptureSession.canRequestImageCapture.getter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type ObjectCaptureSession and conformance ObjectCaptureSession(&lazy protocol witness table cache variable for type ObjectCaptureSession and conformance ObjectCaptureSession, type metadata accessor for ObjectCaptureSession, &protocol conformance descriptor for ObjectCaptureSession);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 35);
}

uint64_t ObjectCaptureSession.canRequestImageCaptureUpdates.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSySbGSgMd, &_sScSySbGSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v8 - v3;
  dispatch thunk of AsyncUpdateStreamContainer.makeUpdater()();
  dispatch thunk of AsyncUpdateStream.stream.getter();

  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSySbGMd, &_sScSySbGMR);
  v6 = *(v5 - 8);
  result = (*(v6 + 48))(v4, 1, v5);
  if (result != 1)
  {
    return (*(v6 + 32))(a1, v4, v5);
  }

  __break(1u);
  return result;
}

uint64_t key path getter for ObjectCaptureSession.numberOfShotsTaken : ObjectCaptureSession@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type ObjectCaptureSession and conformance ObjectCaptureSession(&lazy protocol witness table cache variable for type ObjectCaptureSession and conformance ObjectCaptureSession, type metadata accessor for ObjectCaptureSession, &protocol conformance descriptor for ObjectCaptureSession);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 40);
  return result;
}

uint64_t ObjectCaptureSession.numberOfShotsTaken.getter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type ObjectCaptureSession and conformance ObjectCaptureSession(&lazy protocol witness table cache variable for type ObjectCaptureSession and conformance ObjectCaptureSession, type metadata accessor for ObjectCaptureSession, &protocol conformance descriptor for ObjectCaptureSession);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 40);
}

uint64_t ObjectCaptureSession.numberOfShotsTakenUpdates.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSySiGSgMd, &_sScSySiGSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v8 - v3;
  dispatch thunk of AsyncUpdateStreamContainer.makeUpdater()();
  dispatch thunk of AsyncUpdateStream.stream.getter();

  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSySiGMd, &_sScSySiGMR);
  v6 = *(v5 - 8);
  result = (*(v6 + 48))(v4, 1, v5);
  if (result != 1)
  {
    return (*(v6 + 32))(a1, v4, v5);
  }

  __break(1u);
  return result;
}

uint64_t ObjectCaptureSession.maximumNumberOfInputImages.getter()
{
  type metadata accessor for ObjectCaptureSession();
  v0 = type metadata accessor for ObjectCaptureSession.HardwareSpecs();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  static ObjectCaptureSession.hardwareSpecs.getter();
  v4 = ObjectCaptureSession.HardwareSpecs.maxNumImages.getter();
  (*(v1 + 8))(v3, v0);
  return v4;
}

uint64_t ObjectCaptureSession.Configuration.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for URL();
  (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
  result = type metadata accessor for ObjectCaptureSession.Configuration(0);
  *(a1 + *(result + 20)) = 0;
  return result;
}

uint64_t ObjectCaptureSession.Configuration.isOverCaptureEnabled.setter(char a1)
{
  result = type metadata accessor for ObjectCaptureSession.Configuration(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t key path getter for ObjectCaptureSession.configuration : ObjectCaptureSession@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type ObjectCaptureSession and conformance ObjectCaptureSession(&lazy protocol witness table cache variable for type ObjectCaptureSession and conformance ObjectCaptureSession, type metadata accessor for ObjectCaptureSession, &protocol conformance descriptor for ObjectCaptureSession);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC19_RealityKit_SwiftUI20ObjectCaptureSession__configuration;
  swift_beginAccess();
  return outlined init with copy of ObjectCaptureSession.Error(v3 + v4, a2, type metadata accessor for ObjectCaptureSession.Configuration);
}

uint64_t key path setter for ObjectCaptureSession.configuration : ObjectCaptureSession(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for ObjectCaptureSession.Configuration(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  outlined init with copy of ObjectCaptureSession.Error(a1, v6, type metadata accessor for ObjectCaptureSession.Configuration);
  v7 = *a2;
  swift_getKeyPath();
  v10 = v7;
  v11 = v6;
  v12 = v7;
  lazy protocol witness table accessor for type ObjectCaptureSession and conformance ObjectCaptureSession(&lazy protocol witness table cache variable for type ObjectCaptureSession and conformance ObjectCaptureSession, type metadata accessor for ObjectCaptureSession, &protocol conformance descriptor for ObjectCaptureSession);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return outlined destroy of ObjectCaptureSession.Configuration(v6, type metadata accessor for ObjectCaptureSession.Configuration);
}

uint64_t ObjectCaptureSession.configuration.getter@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  lazy protocol witness table accessor for type ObjectCaptureSession and conformance ObjectCaptureSession(&lazy protocol witness table cache variable for type ObjectCaptureSession and conformance ObjectCaptureSession, type metadata accessor for ObjectCaptureSession, &protocol conformance descriptor for ObjectCaptureSession);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = OBJC_IVAR____TtC19_RealityKit_SwiftUI20ObjectCaptureSession__configuration;
  swift_beginAccess();
  return outlined init with copy of ObjectCaptureSession.Error(v5 + v3, a1, type metadata accessor for ObjectCaptureSession.Configuration);
}

uint64_t closure #1 in ObjectCaptureSession.configuration.setter(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ObjectCaptureSession.Configuration(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of ObjectCaptureSession.Error(a2, v6, type metadata accessor for ObjectCaptureSession.Configuration);
  v7 = OBJC_IVAR____TtC19_RealityKit_SwiftUI20ObjectCaptureSession__configuration;
  swift_beginAccess();
  outlined assign with take of ObjectCaptureSession.Configuration(v6, a1 + v7);
  return swift_endAccess();
}

void ObjectCaptureSession.start(imagesDirectory:configuration:)(uint64_t a1, uint64_t a2)
{
  v49 = type metadata accessor for DataModel.Error(0);
  MEMORY[0x28223BE20](v49);
  v5 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ObjectCaptureSession.Configuration(0);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v47 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v47 - v13;
  v15 = type metadata accessor for URL();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((URL.isFileURL.getter() & 1) == 0)
  {
    if (one-time initialization token for logger == -1)
    {
      goto LABEL_26;
    }

    goto LABEL_34;
  }

  if (specialized static ObjectCaptureSharedSymbols.isNonExistentOrEmptyDirectory(_:)(a1))
  {
    outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(a2, v14, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    if ((*(v16 + 48))(v14, 1, v15) == 1)
    {
      v48 = v5;
      outlined destroy of PerspectiveCameraComponent?(v14, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
LABEL_15:
      outlined init with copy of ObjectCaptureSession.Error(a2, v11, type metadata accessor for ObjectCaptureSession.Configuration);
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      v26 = v50;
      *(&v47 - 2) = v50;
      *(&v47 - 1) = v11;
      v51 = v26;
      lazy protocol witness table accessor for type ObjectCaptureSession and conformance ObjectCaptureSession(&lazy protocol witness table cache variable for type ObjectCaptureSession and conformance ObjectCaptureSession, type metadata accessor for ObjectCaptureSession, &protocol conformance descriptor for ObjectCaptureSession);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

      outlined destroy of ObjectCaptureSession.Configuration(v11, type metadata accessor for ObjectCaptureSession.Configuration);
      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      v27 = type metadata accessor for Logger();
      __swift_project_value_buffer(v27, logger);
      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        *v30 = 0;
        _os_log_impl(&dword_23B824000, v28, v29, "Starting ObjectCaptureSession with configuration:", v30, 2u);
        MEMORY[0x23EEB0B70](v30, -1, -1);
      }

      specialized ObjectCaptureSession.logConfiguration(_:)(a2);
      v31 = v50;
      swift_getKeyPath();
      v51 = v31;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v32 = OBJC_IVAR____TtC19_RealityKit_SwiftUI20ObjectCaptureSession__configuration;
      swift_beginAccess();
      outlined init with copy of ObjectCaptureSession.Error(v31 + v32, v9, type metadata accessor for ObjectCaptureSession.Configuration);
      DataModel.startSession(imagesURL:configuration:)(a1, v9);
      outlined destroy of ObjectCaptureSession.Configuration(v9, type metadata accessor for ObjectCaptureSession.Configuration);
      return;
    }

    (*(v16 + 32))(v18, v14, v15);
    if ((URL.isFileURL.getter() & 1) == 0)
    {
      while (1)
      {
        if (one-time initialization token for logger != -1)
        {
          swift_once();
        }

        v43 = type metadata accessor for Logger();
        __swift_project_value_buffer(v43, logger);
        v44 = Logger.logObject.getter();
        v45 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v44, v45))
        {
          v46 = swift_slowAlloc();
          *v46 = 0;
          _os_log_impl(&dword_23B824000, v44, v45, "checkpointDirectory must be a file URL but was not!", v46, 2u);
          MEMORY[0x23EEB0B70](v46, -1, -1);
        }

        __break(1u);
LABEL_34:
        swift_once();
LABEL_26:
        v39 = type metadata accessor for Logger();
        __swift_project_value_buffer(v39, logger);
        v40 = Logger.logObject.getter();
        v41 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v40, v41))
        {
          v42 = swift_slowAlloc();
          *v42 = 0;
          _os_log_impl(&dword_23B824000, v40, v41, "imagesDirectory must be a file URL but was not!", v42, 2u);
          MEMORY[0x23EEB0B70](v42, -1, -1);
        }

        __break(1u);
      }
    }

    if (specialized static ObjectCaptureSharedSymbols.isNonExistentOrEmptyDirectory(_:)(v18))
    {
      v48 = v5;
      (*(v16 + 8))(v18, v15);
      goto LABEL_15;
    }

    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    __swift_project_value_buffer(v33, logger);
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_23B824000, v34, v35, "A provided checkpointDirectory must be empty to start a new scan!", v36, 2u);
      MEMORY[0x23EEB0B70](v36, -1, -1);
    }

    type metadata accessor for ObjectCaptureSession.Error(0);
    lazy protocol witness table accessor for type ObjectCaptureSession and conformance ObjectCaptureSession(&lazy protocol witness table cache variable for type ObjectCaptureSession.Error and conformance ObjectCaptureSession.Error, type metadata accessor for ObjectCaptureSession.Error, &protocol conformance descriptor for ObjectCaptureSession.Error);
    v37 = swift_allocError();
    (*(v16 + 16))(v38, v18, v15);
    swift_storeEnumTagMultiPayload();
    ObjectCaptureSession.switchToErrorState(error:)(v37);
    (*(v16 + 8))(v18, v15);
  }

  else
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    __swift_project_value_buffer(v19, logger);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_23B824000, v20, v21, "imagesDirectory must be emoty to start a new scan!", v22, 2u);
      MEMORY[0x23EEB0B70](v22, -1, -1);
    }

    type metadata accessor for ObjectCaptureSession.Error(0);
    lazy protocol witness table accessor for type ObjectCaptureSession and conformance ObjectCaptureSession(&lazy protocol witness table cache variable for type ObjectCaptureSession.Error and conformance ObjectCaptureSession.Error, type metadata accessor for ObjectCaptureSession.Error, &protocol conformance descriptor for ObjectCaptureSession.Error);
    v23 = swift_allocError();
    (*(v16 + 16))(v24, a1, v15);
    swift_storeEnumTagMultiPayload();
    ObjectCaptureSession.switchToErrorState(error:)(v23);
  }
}