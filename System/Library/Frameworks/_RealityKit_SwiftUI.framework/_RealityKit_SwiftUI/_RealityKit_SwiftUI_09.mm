double protocol witness for Animatable.animatableData.setter in conformance ReticleView.Corner(double *a1)
{
  result = *a1;
  *(v1 + 8) = *a1;
  return result;
}

double (*protocol witness for Animatable.animatableData.modify in conformance ReticleView.Corner(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = *(v1 + 8);
  return protocol witness for Animatable.animatableData.modify in conformance ReticleView.Corner;
}

double protocol witness for Animatable.animatableData.modify in conformance ReticleView.Corner(uint64_t a1)
{
  result = *a1;
  *(*(a1 + 8) + 8) = *a1;
  return result;
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance ReticleView.Corner(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type ReticleView.Corner and conformance ReticleView.Corner(a1, a2, a3);

  return MEMORY[0x282133768](a1, a2, a3, v6);
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance ReticleView.Corner(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type ReticleView.Corner and conformance ReticleView.Corner(a1, a2, a3);

  return MEMORY[0x282133720](a1, a2, a3, v6);
}

uint64_t protocol witness for View.body.getter in conformance ReticleView.Corner(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = lazy protocol witness table accessor for type ReticleView.Corner and conformance ReticleView.Corner(a1, a2, a3);

  return MEMORY[0x282133738](a1, v4);
}

double ReticleView.body.getter@<D0>(uint64_t a2@<X8>, double a5@<D2>)
{
  v7 = static Alignment.center.getter();
  v9 = v8;
  closure #1 in ReticleView.body.getter(__src, a5);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v15, __src, sizeof(v15));
  outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(__dst, v12, &_s7SwiftUI9TupleViewVyAA011StrokeShapeD0Vy012_RealityKit_aB007ReticleD033_E7C53F01232C1BC4E49961BE0A29AB82LLV6CornerVAA5ColorVAA05EmptyD0VG_A3PtGMd, &_s7SwiftUI9TupleViewVyAA011StrokeShapeD0Vy012_RealityKit_aB007ReticleD033_E7C53F01232C1BC4E49961BE0A29AB82LLV6CornerVAA5ColorVAA05EmptyD0VG_A3PtGMR);
  outlined destroy of PerspectiveCameraComponent?(v15, &_s7SwiftUI9TupleViewVyAA011StrokeShapeD0Vy012_RealityKit_aB007ReticleD033_E7C53F01232C1BC4E49961BE0A29AB82LLV6CornerVAA5ColorVAA05EmptyD0VG_A3PtGMd, &_s7SwiftUI9TupleViewVyAA011StrokeShapeD0Vy012_RealityKit_aB007ReticleD033_E7C53F01232C1BC4E49961BE0A29AB82LLV6CornerVAA5ColorVAA05EmptyD0VG_A3PtGMR);
  memcpy(__src, __dst, sizeof(__src));
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *a2 = v7;
  *(a2 + 8) = v9;
  memcpy((a2 + 16), __src, 0x160uLL);
  v10 = v12[1];
  *(a2 + 368) = v12[0];
  *(a2 + 384) = v10;
  result = *v13;
  *(a2 + 400) = v13[0];
  return result;
}

uint64_t closure #1 in ReticleView.body.getter@<X0>(void *a2@<X8>, double a3@<D2>)
{
  v22 = static Color.white.getter();
  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  v21 = static Alignment.center.getter();
  v5 = v4;
  v19 = static Color.white.getter();
  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  v18 = static Alignment.center.getter();
  v7 = v6;
  v16 = static Color.white.getter();
  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  v8 = static Alignment.center.getter();
  v14 = v9;
  v15 = v8;
  v17 = static Color.white.getter();
  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  v10 = static Alignment.center.getter();
  v12 = v11;
  LOBYTE(v40[0]) = 0;
  *(v40 + 1) = a3;
  v40[1] = v33;
  v40[2] = v34;
  *&v41 = v35;
  *(&v41 + 1) = v22;
  LOWORD(v42) = 256;
  *(&v42 + 1) = v21;
  v43 = v5;
  *&__src[5] = v5;
  __src[3] = v41;
  __src[4] = v42;
  __src[0] = v40[0];
  __src[1] = v33;
  __src[2] = v34;
  LOBYTE(v44[0]) = 1;
  *(v44 + 1) = a3;
  v44[1] = v30;
  v44[2] = v31;
  *&v45 = v32;
  *(&v45 + 1) = v19;
  LOWORD(v46) = 256;
  *(&v46 + 1) = v18;
  v47 = v7;
  *(&__src[6] + 8) = v30;
  *(&__src[5] + 8) = v44[0];
  *(&__src[10] + 1) = v7;
  *(&__src[9] + 8) = v46;
  *(&__src[8] + 8) = v45;
  *(&__src[7] + 8) = v31;
  LOBYTE(v48[0]) = 2;
  DWORD1(v48[0]) = *&v36[3];
  *(v48 + 1) = *v36;
  *(v48 + 1) = a3;
  v48[1] = v27;
  v48[2] = v28;
  *&v49 = v29;
  *(&v49 + 1) = v16;
  LOWORD(v50) = 256;
  *(&v50 + 1) = v15;
  v51 = v14;
  __src[11] = v48[0];
  __src[12] = v27;
  __src[14] = v49;
  __src[15] = v50;
  __src[13] = v28;
  LOBYTE(v52[0]) = 3;
  DWORD1(v52[0]) = *&v39[3];
  *(v52 + 1) = *v39;
  *(v52 + 1) = a3;
  v52[2] = v25;
  v52[1] = v24;
  *&v53 = v26;
  *(&v53 + 1) = v17;
  LOWORD(v54) = 256;
  WORD3(v54) = v38;
  *(&v54 + 2) = v37;
  *(&v54 + 1) = v10;
  v55 = v11;
  *(&__src[16] + 8) = v52[0];
  *(&__src[17] + 8) = v24;
  *(&__src[19] + 8) = v53;
  *(&__src[20] + 8) = v54;
  *(&__src[18] + 8) = v25;
  *&__src[16] = v14;
  *(&__src[21] + 1) = v11;
  memcpy(a2, __src, 0x160uLL);
  v56 = 3;
  *v57 = *v39;
  *&v57[3] = *&v39[3];
  v58 = a3;
  v59 = v24;
  v60 = v25;
  v61 = v26;
  v62 = v17;
  v63 = 256;
  v64 = v37;
  v65 = v38;
  v66 = v10;
  v67 = v12;
  outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(v40, v87, &_s7SwiftUI15StrokeShapeViewVy012_RealityKit_aB007ReticleE033_E7C53F01232C1BC4E49961BE0A29AB82LLV6CornerVAA5ColorVAA05EmptyE0VGMd, &_s7SwiftUI15StrokeShapeViewVy012_RealityKit_aB007ReticleE033_E7C53F01232C1BC4E49961BE0A29AB82LLV6CornerVAA5ColorVAA05EmptyE0VGMR);
  outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(v44, v87, &_s7SwiftUI15StrokeShapeViewVy012_RealityKit_aB007ReticleE033_E7C53F01232C1BC4E49961BE0A29AB82LLV6CornerVAA5ColorVAA05EmptyE0VGMd, &_s7SwiftUI15StrokeShapeViewVy012_RealityKit_aB007ReticleE033_E7C53F01232C1BC4E49961BE0A29AB82LLV6CornerVAA5ColorVAA05EmptyE0VGMR);
  outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(v48, v87, &_s7SwiftUI15StrokeShapeViewVy012_RealityKit_aB007ReticleE033_E7C53F01232C1BC4E49961BE0A29AB82LLV6CornerVAA5ColorVAA05EmptyE0VGMd, &_s7SwiftUI15StrokeShapeViewVy012_RealityKit_aB007ReticleE033_E7C53F01232C1BC4E49961BE0A29AB82LLV6CornerVAA5ColorVAA05EmptyE0VGMR);
  outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(v52, v87, &_s7SwiftUI15StrokeShapeViewVy012_RealityKit_aB007ReticleE033_E7C53F01232C1BC4E49961BE0A29AB82LLV6CornerVAA5ColorVAA05EmptyE0VGMd, &_s7SwiftUI15StrokeShapeViewVy012_RealityKit_aB007ReticleE033_E7C53F01232C1BC4E49961BE0A29AB82LLV6CornerVAA5ColorVAA05EmptyE0VGMR);
  outlined destroy of PerspectiveCameraComponent?(&v56, &_s7SwiftUI15StrokeShapeViewVy012_RealityKit_aB007ReticleE033_E7C53F01232C1BC4E49961BE0A29AB82LLV6CornerVAA5ColorVAA05EmptyE0VGMd, &_s7SwiftUI15StrokeShapeViewVy012_RealityKit_aB007ReticleE033_E7C53F01232C1BC4E49961BE0A29AB82LLV6CornerVAA5ColorVAA05EmptyE0VGMR);
  v68 = 2;
  *v69 = *v36;
  *&v69[3] = *&v36[3];
  v70 = a3;
  v71 = v27;
  v72 = v28;
  v73 = v29;
  v74 = v16;
  v75 = 256;
  v76 = v15;
  v77 = v14;
  outlined destroy of PerspectiveCameraComponent?(&v68, &_s7SwiftUI15StrokeShapeViewVy012_RealityKit_aB007ReticleE033_E7C53F01232C1BC4E49961BE0A29AB82LLV6CornerVAA5ColorVAA05EmptyE0VGMd, &_s7SwiftUI15StrokeShapeViewVy012_RealityKit_aB007ReticleE033_E7C53F01232C1BC4E49961BE0A29AB82LLV6CornerVAA5ColorVAA05EmptyE0VGMR);
  v78[0] = 1;
  v79 = a3;
  v80 = v30;
  v81 = v31;
  v82 = v32;
  v83 = v19;
  v84 = 256;
  v85 = v18;
  v86 = v7;
  outlined destroy of PerspectiveCameraComponent?(v78, &_s7SwiftUI15StrokeShapeViewVy012_RealityKit_aB007ReticleE033_E7C53F01232C1BC4E49961BE0A29AB82LLV6CornerVAA5ColorVAA05EmptyE0VGMd, &_s7SwiftUI15StrokeShapeViewVy012_RealityKit_aB007ReticleE033_E7C53F01232C1BC4E49961BE0A29AB82LLV6CornerVAA5ColorVAA05EmptyE0VGMR);
  v87[0] = 0;
  v88 = a3;
  v89 = v33;
  v90 = v34;
  v91 = v35;
  v92 = v22;
  v93 = 256;
  v94 = v21;
  v95 = v5;
  return outlined destroy of PerspectiveCameraComponent?(v87, &_s7SwiftUI15StrokeShapeViewVy012_RealityKit_aB007ReticleE033_E7C53F01232C1BC4E49961BE0A29AB82LLV6CornerVAA5ColorVAA05EmptyE0VGMd, &_s7SwiftUI15StrokeShapeViewVy012_RealityKit_aB007ReticleE033_E7C53F01232C1BC4E49961BE0A29AB82LLV6CornerVAA5ColorVAA05EmptyE0VGMR);
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance ReticleView(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = lazy protocol witness table accessor for type ReticleView and conformance ReticleView(a1, a2, a3);

  return MEMORY[0x282132D20](a1, a2, a3, v8, a4);
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance ReticleView(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = lazy protocol witness table accessor for type ReticleView and conformance ReticleView(a1, a2, a3);

  return MEMORY[0x282132D28](a1, a2, a3, v8, a4);
}

double protocol witness for Animatable.animatableData.getter in conformance ReticleView@<D0>(double *a1@<X8>)
{
  result = *(v1 + 16);
  *a1 = result;
  return result;
}

double protocol witness for Animatable.animatableData.setter in conformance ReticleView(double *a1)
{
  result = *a1;
  *(v1 + 16) = *a1;
  return result;
}

double (*protocol witness for Animatable.animatableData.modify in conformance ReticleView(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = *(v1 + 16);
  return protocol witness for Animatable.animatableData.modify in conformance ReticleView;
}

double protocol witness for Animatable.animatableData.modify in conformance ReticleView(uint64_t a1)
{
  result = *a1;
  *(*(a1 + 8) + 16) = *a1;
  return result;
}

double protocol witness for Animatable.animatableData.getter in conformance ShakeModifier@<D0>(void *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

double protocol witness for Animatable.animatableData.setter in conformance ShakeModifier(double *a1)
{
  result = *a1;
  *v1 = *a1;
  return result;
}

double (*protocol witness for Animatable.animatableData.modify in conformance ShakeModifier(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = *v1;
  return protocol witness for Animatable.animatableData.modify in conformance ShakeModifier;
}

double protocol witness for Animatable.animatableData.modify in conformance ShakeModifier(uint64_t a1)
{
  result = *a1;
  **(a1 + 8) = *a1;
  return result;
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance ShakeModifier(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = lazy protocol witness table accessor for type ShakeModifier and conformance ShakeModifier(a1, a2, a3);

  return MEMORY[0x28212DFC8](a1, a2, a3, a4, a5, v10);
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance ShakeModifier(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = lazy protocol witness table accessor for type ShakeModifier and conformance ShakeModifier(a1, a2, a3);

  return MEMORY[0x28212DFC0](a1, a2, a3, a4, a5, v10);
}

uint64_t protocol witness for ViewModifier.body(content:) in conformance ShakeModifier@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2[1];
  v6 = v5 * sin((*v2 * v2[2] + *v2 * v2[2]) * 3.14159265);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21_ViewModifier_ContentVy012_RealityKit_aB005ShakeD0VGMd, &_s7SwiftUI21_ViewModifier_ContentVy012_RealityKit_aB005ShakeD0VGMR);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy012_RealityKit_aB005ShakeF0VGAA13_OffsetEffectVGMd, &_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy012_RealityKit_aB005ShakeF0VGAA13_OffsetEffectVGMR);
  v9 = a2 + *(result + 36);
  *v9 = v6;
  *(v9 + 8) = 0;
  return result;
}

unint64_t lazy protocol witness table accessor for type CGFloat and conformance CGFloat(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type CGFloat and conformance CGFloat;
  if (!lazy protocol witness table cache variable for type CGFloat and conformance CGFloat)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CGFloat and conformance CGFloat);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ShakeModifier and conformance ShakeModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type ShakeModifier and conformance ShakeModifier;
  if (!lazy protocol witness table cache variable for type ShakeModifier and conformance ShakeModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ShakeModifier and conformance ShakeModifier);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ShakeModifier and conformance ShakeModifier;
  if (!lazy protocol witness table cache variable for type ShakeModifier and conformance ShakeModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ShakeModifier and conformance ShakeModifier);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ShakeModifier and conformance ShakeModifier;
  if (!lazy protocol witness table cache variable for type ShakeModifier and conformance ShakeModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ShakeModifier and conformance ShakeModifier);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<ShakeModifier>, _OffsetEffect> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<ShakeModifier>, _OffsetEffect> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<ShakeModifier>, _OffsetEffect> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy012_RealityKit_aB005ShakeF0VGAA13_OffsetEffectVGMd, &_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy012_RealityKit_aB005ShakeF0VGAA13_OffsetEffectVGMR);
    lazy protocol witness table accessor for type LoadRequest<ModelEntity> and conformance LoadRequest<A>(&lazy protocol witness table cache variable for type _ViewModifier_Content<ShakeModifier> and conformance _ViewModifier_Content<A>, &_s7SwiftUI21_ViewModifier_ContentVy012_RealityKit_aB005ShakeD0VGMd, &_s7SwiftUI21_ViewModifier_ContentVy012_RealityKit_aB005ShakeD0VGMR, MEMORY[0x277CE04B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<ShakeModifier>, _OffsetEffect> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ReticleView and conformance ReticleView(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type ReticleView and conformance ReticleView;
  if (!lazy protocol witness table cache variable for type ReticleView and conformance ReticleView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ReticleView and conformance ReticleView);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ReticleView.Corner(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && a1[16])
  {
    return (*a1 + 253);
  }

  v3 = *a1;
  v4 = v3 >= 4;
  v5 = v3 - 4;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for ReticleView.Corner(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 3;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ZStack<TupleView<(StrokeShapeView<ReticleView.Corner, Color, EmptyView>, StrokeShapeView<ReticleView.Corner, Color, EmptyView>, StrokeShapeView<ReticleView.Corner, Color, EmptyView>, StrokeShapeView<ReticleView.Corner, Color, EmptyView>)>>, _FrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ZStack<TupleView<(StrokeShapeView<ReticleView.Corner, Color, EmptyView>, StrokeShapeView<ReticleView.Corner, Color, EmptyView>, StrokeShapeView<ReticleView.Corner, Color, EmptyView>, StrokeShapeView<ReticleView.Corner, Color, EmptyView>)>>, _FrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ZStack<TupleView<(StrokeShapeView<ReticleView.Corner, Color, EmptyView>, StrokeShapeView<ReticleView.Corner, Color, EmptyView>, StrokeShapeView<ReticleView.Corner, Color, EmptyView>, StrokeShapeView<ReticleView.Corner, Color, EmptyView>)>>, _FrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6ZStackVyAA9TupleViewVyAA011StrokeShapeG0Vy012_RealityKit_aB007ReticleG033_E7C53F01232C1BC4E49961BE0A29AB82LLV6CornerVAA5ColorVAA05EmptyG0VG_A3TtGGAA12_FrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA6ZStackVyAA9TupleViewVyAA011StrokeShapeG0Vy012_RealityKit_aB007ReticleG033_E7C53F01232C1BC4E49961BE0A29AB82LLV6CornerVAA5ColorVAA05EmptyG0VG_A3TtGGAA12_FrameLayoutVGMR);
    lazy protocol witness table accessor for type LoadRequest<ModelEntity> and conformance LoadRequest<A>(&lazy protocol witness table cache variable for type ZStack<TupleView<(StrokeShapeView<ReticleView.Corner, Color, EmptyView>, StrokeShapeView<ReticleView.Corner, Color, EmptyView>, StrokeShapeView<ReticleView.Corner, Color, EmptyView>, StrokeShapeView<ReticleView.Corner, Color, EmptyView>)>> and conformance ZStack<A>, &_s7SwiftUI6ZStackVyAA9TupleViewVyAA011StrokeShapeE0Vy012_RealityKit_aB007ReticleE033_E7C53F01232C1BC4E49961BE0A29AB82LLV6CornerVAA5ColorVAA05EmptyE0VG_A3RtGGMd, &_s7SwiftUI6ZStackVyAA9TupleViewVyAA011StrokeShapeE0Vy012_RealityKit_aB007ReticleE033_E7C53F01232C1BC4E49961BE0A29AB82LLV6CornerVAA5ColorVAA05EmptyE0VG_A3RtGGMR, MEMORY[0x277CE11A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ZStack<TupleView<(StrokeShapeView<ReticleView.Corner, Color, EmptyView>, StrokeShapeView<ReticleView.Corner, Color, EmptyView>, StrokeShapeView<ReticleView.Corner, Color, EmptyView>, StrokeShapeView<ReticleView.Corner, Color, EmptyView>)>>, _FrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ReticleView.Corner and conformance ReticleView.Corner(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type ReticleView.Corner and conformance ReticleView.Corner;
  if (!lazy protocol witness table cache variable for type ReticleView.Corner and conformance ReticleView.Corner)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ReticleView.Corner and conformance ReticleView.Corner);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ReticleView.Corner and conformance ReticleView.Corner;
  if (!lazy protocol witness table cache variable for type ReticleView.Corner and conformance ReticleView.Corner)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ReticleView.Corner and conformance ReticleView.Corner);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ReticleView.Corner and conformance ReticleView.Corner;
  if (!lazy protocol witness table cache variable for type ReticleView.Corner and conformance ReticleView.Corner)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ReticleView.Corner and conformance ReticleView.Corner);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ReticleView.Corner.Placement and conformance ReticleView.Corner.Placement(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type ReticleView.Corner.Placement and conformance ReticleView.Corner.Placement;
  if (!lazy protocol witness table cache variable for type ReticleView.Corner.Placement and conformance ReticleView.Corner.Placement)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ReticleView.Corner.Placement and conformance ReticleView.Corner.Placement);
  }

  return result;
}

id PostProcessRenderManager.mpsGaussianBlur.getter()
{
  v1 = *(v0 + 64);
  if (v1)
  {
    v2 = *(v0 + 64);
  }

  else
  {
    v3 = *(v0 + 16);
    v4 = *(v0 + 40);
    v5 = objc_allocWithZone(MEMORY[0x277CD7520]);
    LODWORD(v6) = v4;
    v7 = [v5 initWithDevice:v3 sigma:v6];
    v8 = *(v0 + 64);
    *(v0 + 64) = v7;
    v2 = v7;

    v1 = 0;
  }

  v9 = v1;
  return v2;
}

id PostProcessRenderManager.mpsAddImages.getter()
{
  v1 = *(v0 + 72);
  if (v1)
  {
    v2 = *(v0 + 72);
  }

  else
  {
    v3 = [objc_allocWithZone(MEMORY[0x277CD74C0]) initWithDevice_];
    v4 = *(v0 + 72);
    *(v0 + 72) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

id PostProcessRenderManager.mpsConverter.getter()
{
  v1 = *(v0 + 80);
  if (v1)
  {
    v2 = *(v0 + 80);
  }

  else
  {
    v3 = [objc_allocWithZone(MEMORY[0x277CD74F8]) initWithDevice_];
    v4 = *(v0 + 80);
    *(v0 + 80) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

id PostProcessRenderManager.frameUniformsBuffer.getter()
{
  if (*(v0 + 88))
  {
    v1 = *(v0 + 88);
LABEL_5:
    swift_unknownObjectRetain();
    return v1;
  }

  result = [*(v0 + 16) newBufferWithLength:160 options:0];
  if (result)
  {
    v1 = result;
    *(v0 + 88) = result;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t PostProcessRenderManager.init(device:)(void *a1)
{
  v3 = v2;
  v4 = v1;
  v29[1] = *MEMORY[0x277D85DE8];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation6AtomicVySo22UIInterfaceOrientationVGMd, &_s17RealityFoundation6AtomicVySo22UIInterfaceOrientationVGMR);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v29 - v8;
  swift_weakInit();
  swift_unknownObjectWeakInit();
  *(v4 + 40) = specialized static ExperimentSettings.loadPostProcessBloomSigma(default:)(9.0);
  *(v4 + 44) = 1;
  *(v4 + 48) = 0u;
  *(v4 + 64) = 0u;
  *(v4 + 80) = 0u;
  *(v4 + 96) = 0u;
  *(v4 + 112) = 0;
  *(v4 + 120) = 0x3F4CCCCD3E4CCCCDLL;
  *(v4 + 128) = specialized static ExperimentSettings.loadDepthHazeFloor(default:)(0.025);
  *(v4 + 132) = 2;
  *(v4 + 136) = 0xFFF0000000000000;
  *(v4 + 144) = 0;
  *(v4 + 152) = 0x3FE0000000000000;
  v10 = OBJC_IVAR____TtC19_RealityKit_SwiftUI24PostProcessRenderManager__uiOrientation;
  v29[0] = 1;
  type metadata accessor for UIInterfaceOrientation(0);
  Atomic.init(wrappedValue:)();
  (*(v7 + 32))(v4 + v10, v9, v6);
  v11 = OBJC_IVAR____TtC19_RealityKit_SwiftUI24PostProcessRenderManager_useDepthHaze;
  *(v4 + v11) = (specialized static ExperimentSettings.loadDepthHazeDisabled(default:)(0) & 1) == 0;
  v12 = OBJC_IVAR____TtC19_RealityKit_SwiftUI24PostProcessRenderManager_useOcclusionHaze;
  *(v4 + v12) = (specialized static ExperimentSettings.loadOcclusionHazeDisabled(default:)(1u) & 1) == 0;
  v13 = (v4 + OBJC_IVAR____TtC19_RealityKit_SwiftUI24PostProcessRenderManager_mpsCopyAllocator);
  *v13 = closure #1 in variable initialization expression of PostProcessRenderManager.mpsCopyAllocator;
  v13[1] = 0;
  *(v4 + 16) = a1;
  v14 = one-time initialization token for bundle;
  swift_unknownObjectRetain();
  if (v14 != -1)
  {
    swift_once();
  }

  v29[0] = 0;
  v15 = [a1 newDefaultLibraryWithBundle:static PostProcessRenderManager.bundle error:v29];
  if (v15)
  {
    v16 = v15;
    v17 = v29[0];
    PostProcessRenderManager.makeCompositingPipeline(library:)(v16);
    if (!v3)
    {
      PostProcessRenderManager.makeOcclusionHazePipeline(library:)(v16);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      return v4;
    }

    swift_unknownObjectRelease();
  }

  else
  {
    v18 = v29[0];
    v19 = _convertNSErrorToError(_:)();

    swift_willThrow();
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    __swift_project_value_buffer(v20, logger);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_23B824000, v21, v22, "Can't get default Metal library for PostProcessRenderManager!", v23, 2u);
      MEMORY[0x23EEB0B70](v23, -1, -1);
    }

    lazy protocol witness table accessor for type PostProcessRenderManager.Error and conformance PostProcessRenderManager.Error(v24, v25, v26);
    swift_allocError();
    *v27 = 2;
    swift_willThrow();
  }

  swift_unknownObjectRelease();

  return v4;
}

uint64_t PostProcessRenderManager.attach(to:frameProcessor:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for OS_dispatch_queue();
  *v7 = static OS_dispatch_queue.main.getter();
  (*(v5 + 104))(v7, *MEMORY[0x277D85200], v4);
  v8 = _dispatchPreconditionTest(_:)();
  result = (*(v5 + 8))(v7, v4);
  if (v8)
  {
    swift_unknownObjectWeakAssign();
    swift_weakAssign();
    *(v3 + 44) = dispatch thunk of ARView.__disableComposition.getter() & 1;
    dispatch thunk of ARView.__disableComposition.setter();
    swift_allocObject();
    swift_weakInit();

    v10 = ARView.renderCallbacks.modify();
    ARView.RenderCallbacks.postProcess.setter();
    v10(v11, 0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t closure #1 in PostProcessRenderManager.attach(to:frameProcessor:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    PostProcessRenderManager.render(context:)(a1);
  }

  return result;
}

Swift::Void __swiftcall PostProcessRenderManager.detach()()
{
  v0 = type metadata accessor for DispatchPredicate();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for OS_dispatch_queue();
  *v3 = static OS_dispatch_queue.main.getter();
  (*(v1 + 104))(v3, *MEMORY[0x277D85200], v0);
  v4 = _dispatchPreconditionTest(_:)();
  (*(v1 + 8))(v3, v0);
  if (v4)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v6 = Strong;
      v7 = ARView.renderCallbacks.modify();
      ARView.RenderCallbacks.postProcess.setter();
      v7(v10, 0);
    }

    v8 = swift_unknownObjectWeakLoadStrong();
    if (v8)
    {
      v9 = v8;
      dispatch thunk of ARView.__disableComposition.setter();
    }

    swift_weakAssign();
    swift_unknownObjectWeakAssign();
  }

  else
  {
    __break(1u);
  }
}

id closure #1 in variable initialization expression of PostProcessRenderManager.mpsCopyAllocator(int a1, id a2, void *a3)
{
  v4 = [a2 device];
  v5 = [a3 width];
  v6 = [a3 height];
  v7 = [a3 pixelFormat];
  v8 = [objc_allocWithZone(MEMORY[0x277CD7058]) init];
  [v8 setPixelFormat_];
  [v8 setWidth_];
  [v8 setHeight_];
  [v8 setUsage_];
  v9 = [v4 newTextureWithDescriptor_];
  swift_unknownObjectRelease();

  if (v9)
  {
    return v9;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t PostProcessRenderManager.updateTempTextures(templateTexture:)(void *a1)
{
  v17 = *(v1 + 16);
  v3 = [a1 width];
  v4 = [a1 height];
  v5 = [a1 pixelFormat];
  swift_beginAccess();
  v6 = *(v1 + 96);
  if (v6 && [*(v1 + 96) width] == v3 && objc_msgSend(v6, sel_height) == v4 && objc_msgSend(v6, sel_pixelFormat) == v5)
  {
    if ([v6 usage] == 7 || !v3 || !v4)
    {
      goto LABEL_14;
    }

LABEL_13:
    v8 = [objc_allocWithZone(MEMORY[0x277CD7058]) init];
    [v8 setPixelFormat_];
    [v8 setWidth_];
    [v8 setHeight_];
    [v8 setUsage_];
    v9 = [v17 newTextureWithDescriptor_];

    *(v1 + 96) = v9;
    swift_unknownObjectRelease();
    goto LABEL_14;
  }

  if (v3)
  {
    v7 = v4 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    goto LABEL_13;
  }

LABEL_14:
  swift_endAccess();
  v10 = [a1 width];
  v11 = [a1 height];
  v12 = [a1 pixelFormat];
  swift_beginAccess();
  v13 = *(v1 + 104);
  if ((!v13 || [*(v1 + 104) width] != v10 || objc_msgSend(v13, sel_height) != v11 || objc_msgSend(v13, sel_pixelFormat) != v12 || objc_msgSend(v13, sel_usage) != 7) && v10 && v11)
  {
    v14 = [objc_allocWithZone(MEMORY[0x277CD7058]) init];
    [v14 setPixelFormat_];
    [v14 setWidth_];
    [v14 setHeight_];
    [v14 setUsage_];
    v15 = [v17 newTextureWithDescriptor_];

    *(v1 + 104) = v15;
    swift_unknownObjectRelease();
  }

  return swift_endAccess();
}

uint64_t PostProcessRenderManager.makeCompositingPipeline(library:)(void *a1)
{
  v18[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x23EEAF480](0xD000000000000021, 0x800000023B9293C0);
  v4 = [a1 newFunctionWithName_];

  if (v4)
  {
    v5 = *(v1 + 16);
    v18[0] = 0;
    v6 = [v5 newComputePipelineStateWithFunction:v4 error:v18];
    v7 = v18[0];
    if (v6)
    {
      swift_unknownObjectRelease();
      *(v1 + 48) = v6;
    }

    else
    {
      v17 = v7;
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }

    return swift_unknownObjectRelease();
  }

  else
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, logger);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_23B824000, v9, v10, "⚠️ Cannot create compositing pipeline ⚠️", v11, 2u);
      MEMORY[0x23EEB0B70](v11, -1, -1);
    }

    lazy protocol witness table accessor for type PostProcessRenderManager.Error and conformance PostProcessRenderManager.Error(v12, v13, v14);
    swift_allocError();
    *v15 = 0;
    return swift_willThrow();
  }
}

uint64_t PostProcessRenderManager.makeOcclusionHazePipeline(library:)(void *a1)
{
  v18[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x23EEAF480](0xD000000000000023, 0x800000023B929390);
  v4 = [a1 newFunctionWithName_];

  if (v4)
  {
    v5 = *(v1 + 16);
    v18[0] = 0;
    v6 = [v5 newComputePipelineStateWithFunction:v4 error:v18];
    v7 = v18[0];
    if (v6)
    {
      swift_unknownObjectRelease();
      *(v1 + 56) = v6;
    }

    else
    {
      v17 = v7;
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }

    return swift_unknownObjectRelease();
  }

  else
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, logger);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_23B824000, v9, v10, "⚠️ Cannot create occlusion haze pipeline ⚠️", v11, 2u);
      MEMORY[0x23EEB0B70](v11, -1, -1);
    }

    lazy protocol witness table accessor for type PostProcessRenderManager.Error and conformance PostProcessRenderManager.Error(v12, v13, v14);
    swift_allocError();
    *v15 = 1;
    return swift_willThrow();
  }
}

void PostProcessRenderManager.render(context:)(uint64_t a1)
{
  v102 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation6AtomicVySo22UIInterfaceOrientationVGMd, &_s17RealityFoundation6AtomicVySo22UIInterfaceOrientationVGMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v99 - v4;
  v6 = type metadata accessor for ARView.PostProcessContext();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v99 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = 0;
  v109 = 0;
  v107 = 0;
  if (!swift_weakLoadStrong())
  {
    v12 = 0;
LABEL_11:
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    __swift_project_value_buffer(v24, logger);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_23B824000, v25, v26, "Can't pop the arFrame and camera frame!", v27, 2u);
      MEMORY[0x23EEB0B70](v27, -1, -1);
    }

    swift_unknownObjectRelease();
    goto LABEL_16;
  }

  v100 = v3;
  v101 = v1;
  v10 = swift_allocObject();
  v11 = swift_weakInit();
  MEMORY[0x28223BE20](v11);
  *(&v99 - 4) = v10;
  *(&v99 - 3) = &v109;
  *(&v99 - 2) = &v107;
  *(&v99 - 1) = &v108;
  OS_dispatch_queue.sync<A>(execute:)();

  v12 = v109;
  if (!v109)
  {
    goto LABEL_11;
  }

  v13 = v107;
  if (!v107)
  {
    goto LABEL_11;
  }

  v14 = v101;
  v15 = *(v101 + 136);
  if (v15 < -INFINITY || v15 > -INFINITY)
  {
    v28 = v109;
    swift_unknownObjectRetain();
    v29 = v102;
    v30 = *(v14 + 132);
    if (!*(v14 + 132))
    {
LABEL_37:
      v97 = [ARView.PostProcessContext.commandBuffer.getter() blitCommandEncoder];
      swift_unknownObjectRelease();
      if (v97)
      {
        swift_unknownObjectRetain();
        v98 = ARView.PostProcessContext.sourceColorTexture.getter();
        [v97 copyFromTexture:v98 toTexture:ARView.PostProcessContext.targetColorTexture.getter()];
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        [swift_unknownObjectRetain() endEncoding];
        swift_unknownObjectRelease_n();
      }

      swift_unknownObjectRelease_n();

      goto LABEL_16;
    }
  }

  else
  {
    v16 = one-time initialization token for logger;
    v17 = v109;
    v99 = v13;
    swift_unknownObjectRetain();
    if (v16 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    __swift_project_value_buffer(v18, logger);
    (*(v7 + 16))(v9, v102, v6);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 134349056;
      ARView.PostProcessContext.time.getter();
      v23 = v22;
      (*(v7 + 8))(v9, v6);
      *(v21 + 4) = v23;
      _os_log_impl(&dword_23B824000, v19, v20, "Got first ARFrame in compositor at time = %{public}f", v21, 0xCu);
      MEMORY[0x23EEB0B70](v21, -1, -1);
    }

    else
    {

      (*(v7 + 8))(v9, v6);
    }

    v29 = v102;
    ARView.PostProcessContext.time.getter();
    v95 = v94;
    v14 = v101;
    *(v101 + 136) = v94;
    type metadata accessor for RampAnimation();
    v96 = swift_allocObject();
    *(v96 + 64) = 0xFFF0000000000000;
    *(v96 + 24) = 0;
    *(v96 + 16) = 0x3FE0000000000000;
    *(v96 + 72) = 0;
    *(v96 + 32) = 0;
    *(v96 + 40) = 0;
    *(v96 + 48) = v95;
    *(v96 + 56) = v95 + 0.5;
    *(v14 + 144) = v96;

    v13 = v99;
    v30 = *(v14 + 132);
    if (!*(v14 + 132))
    {
      goto LABEL_37;
    }
  }

  if (v30 == 1)
  {
    v31 = ARView.PostProcessContext.targetColorTexture.getter();
    ARView.PostProcessContext.projection.getter();
    v32 = OBJC_IVAR____TtC19_RealityKit_SwiftUI24PostProcessRenderManager__uiOrientation;
    swift_beginAccess();
    v33 = v100;
    (*(v100 + 16))(v5, v14 + v32, v2);
    Atomic.wrappedValue.getter();
    (*(v33 + 8))(v5, v2);
    a = v111.a;
    v35 = PostProcessRenderManager.frameUniformsBuffer.getter();
    v36 = [v35 contents];
    v37 = v35;
    v38 = [v31 width];
    v39 = [v31 height];
    ARView.PostProcessContext.time.getter();
    *(v36 + 28) = PostProcessRenderManager.getCameraFeedGain(at:)(v40);
    v41 = a;
    v42 = v101;
    [v12 displayTransformForOrientation:*&v41 viewportSize:{v38, v39}];
    v110 = v111;
    CGAffineTransformInvert(&v111, &v110);
    specialized simd_float3x3.init(cgTransform:vectorType:)(&v111, 0, &v110);
    *v36 = v110;
    ARView.PostProcessContext.projection.getter();
    *(v36 + 3) = v43;
    *(v36 + 4) = v44;
    *(v36 + 5) = v45;
    *(v36 + 6) = v46;
    v47 = *(v42 + OBJC_IVAR____TtC19_RealityKit_SwiftUI24PostProcessRenderManager_useDepthHaze);
    v48 = *(v42 + OBJC_IVAR____TtC19_RealityKit_SwiftUI24PostProcessRenderManager_useOcclusionHaze);
    LODWORD(v43) = *(v42 + 128);
    *&v44 = *(v42 + 120);
    *(v36 + 116) = xmmword_23B9227C0;
    *(v36 + 33) = v43;
    *(v36 + 17) = v44;
    v36[144] = v48;
    v36[145] = 1;
    *(v36 + 73) = v47;
    swift_unknownObjectRelease();
    v49 = ARView.PostProcessContext.sourceColorTexture.getter();
    v50 = ARView.PostProcessContext.targetColorTexture.getter();
    v51 = [ARView.PostProcessContext.commandBuffer.getter() computeCommandEncoder];
    swift_unknownObjectRelease();
    if (v51)
    {
      v52 = *(v42 + 48);
      if (!v52)
      {
LABEL_40:
        swift_unknownObjectRelease();
        goto LABEL_43;
      }

      swift_unknownObjectRetain();
      [v51 setComputePipelineState_];
      [v51 setBuffer:*(v42 + 88) offset:0 atIndex:0];
      [v51 setTexture:v49 atIndex:0];
      [v51 setTexture:v13 atIndex:1];
      [v51 setTexture:v50 atIndex:2];
      v53 = [ARView.PostProcessContext.sourceColorTexture.getter() width];
      swift_unknownObjectRelease();
      v54 = [ARView.PostProcessContext.sourceColorTexture.getter() height];
      swift_unknownObjectRelease();
      v55 = [v52 threadExecutionWidth];
      v56 = [v52 maxTotalThreadsPerThreadgroup];
      if (v55)
      {
        if (v56 != 0x8000000000000000 || v55 != -1)
        {
          MTLSizeMake(v55, v56 / v55, &v105);
          v57 = v106;
          v58 = v105;
          *&v105 = v53;
          *(&v105 + 1) = v54;
          v106 = 1;
          v103 = v58;
          v104 = v57;
          [v51 dispatchThreads:&v105 threadsPerThreadgroup:&v103];
          [v51 endEncoding];
          swift_unknownObjectRelease();
          goto LABEL_40;
        }

        goto LABEL_46;
      }

      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
      goto LABEL_48;
    }

    goto LABEL_43;
  }

  v59 = ARView.PostProcessContext.targetColorTexture.getter();
  ARView.PostProcessContext.projection.getter();
  v60 = OBJC_IVAR____TtC19_RealityKit_SwiftUI24PostProcessRenderManager__uiOrientation;
  swift_beginAccess();
  v61 = v100;
  (*(v100 + 16))(v5, v14 + v60, v2);
  Atomic.wrappedValue.getter();
  (*(v61 + 8))(v5, v2);
  v62 = v14;
  v63 = v111.a;
  v64 = PostProcessRenderManager.frameUniformsBuffer.getter();
  v65 = [v64 contents];
  v66 = v64;
  v67 = [v59 width];
  v68 = [v59 height];
  ARView.PostProcessContext.time.getter();
  *(v65 + 28) = PostProcessRenderManager.getCameraFeedGain(at:)(v69);
  [v12 displayTransformForOrientation:*&v63 viewportSize:{v67, v68}];
  v110 = v111;
  CGAffineTransformInvert(&v111, &v110);
  specialized simd_float3x3.init(cgTransform:vectorType:)(&v111, 0, &v110);
  *v65 = v110;
  ARView.PostProcessContext.projection.getter();
  *(v65 + 3) = v70;
  *(v65 + 4) = v71;
  *(v65 + 5) = v72;
  *(v65 + 6) = v73;
  v74 = *(v62 + OBJC_IVAR____TtC19_RealityKit_SwiftUI24PostProcessRenderManager_useDepthHaze);
  v75 = *(v62 + OBJC_IVAR____TtC19_RealityKit_SwiftUI24PostProcessRenderManager_useOcclusionHaze);
  LODWORD(v70) = *(v62 + 128);
  *&v71 = *(v62 + 120);
  *(v65 + 116) = xmmword_23B9227C0;
  *(v65 + 33) = v70;
  *(v65 + 17) = v71;
  v65[144] = v75;
  v65[145] = 1;
  *(v65 + 73) = v74;
  swift_unknownObjectRelease();
  v76 = ARView.PostProcessContext.targetColorTexture.getter();
  PostProcessRenderManager.updateTempTextures(templateTexture:)(v76);
  swift_unknownObjectRelease();
  v77 = v108;
  v78 = ARView.PostProcessContext.sourceColorTexture.getter();
  swift_beginAccess();
  if (!*(v62 + 104))
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  PostProcessRenderManager.executeOcclusionHaze(context:arDepthTexture:sourceTexture:destinationTexture:)(v79, v29, v77, v78, (v62 + 104));
  swift_endAccess();
  swift_unknownObjectRelease();
  v80 = ARView.PostProcessContext.commandBuffer.getter();
  v81 = *(v62 + 104);
  if (!v81)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v82 = v80;
  swift_beginAccess();
  if (!*(v62 + 96))
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  swift_unknownObjectRetain();
  PostProcessRenderManager.executeBloom(commandBuffer:sourceTexture:destinationTexture:)(v82, v81, (v62 + 96));
  swift_endAccess();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v83 = *(v62 + 96);
  if (v83)
  {
    v84 = v62;
    swift_unknownObjectRetain();
    v85 = ARView.PostProcessContext.targetColorTexture.getter();
    v86 = [ARView.PostProcessContext.commandBuffer.getter() computeCommandEncoder];
    swift_unknownObjectRelease();
    if (v86)
    {
      v87 = *(v84 + 48);
      if (v87)
      {
        swift_unknownObjectRetain();
        [v86 setComputePipelineState_];
        [v86 setBuffer:*(v84 + 88) offset:0 atIndex:0];
        [v86 setTexture:v83 atIndex:0];
        [v86 setTexture:v13 atIndex:1];
        [v86 setTexture:v85 atIndex:2];
        v88 = [ARView.PostProcessContext.sourceColorTexture.getter() width];
        swift_unknownObjectRelease();
        v89 = [ARView.PostProcessContext.sourceColorTexture.getter() height];
        swift_unknownObjectRelease();
        v90 = [v87 threadExecutionWidth];
        v91 = [v87 maxTotalThreadsPerThreadgroup];
        if (!v90)
        {
          goto LABEL_45;
        }

        if (v91 == 0x8000000000000000 && v90 == -1)
        {
          goto LABEL_47;
        }

        MTLSizeMake(v90, v91 / v90, &v105);
        v92 = v106;
        v93 = v105;
        *&v105 = v88;
        *(&v105 + 1) = v89;
        v106 = 1;
        v103 = v93;
        v104 = v92;
        [v86 dispatchThreads:&v105 threadsPerThreadgroup:&v103];
        [v86 endEncoding];
        swift_unknownObjectRelease();
      }

      swift_unknownObjectRelease();
    }

LABEL_43:
    swift_unknownObjectRelease_n();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

LABEL_16:
    swift_unknownObjectRelease();
    return;
  }

LABEL_51:
  __break(1u);
}

float PostProcessRenderManager.getCameraFeedGain(at:)(Swift::Double a1)
{
  v2 = 0.0;
  if (*(v1 + 136) != -INFINITY)
  {
    v3 = *(v1 + 144);
    if (v3)
    {

      v2 = RampAnimation.update(time:)(a1);
      v6 = *(v3 + 56);
      v5 = *(v3 + 64);

      if (v6 < v5)
      {
        *(v1 + 144) = 0;
      }
    }

    else
    {
      return 1.0;
    }
  }

  return v2;
}

void PostProcessRenderManager.executeBloom(commandBuffer:sourceTexture:destinationTexture:)(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = PostProcessRenderManager.mpsGaussianBlur.getter();
  [v7 encodeToCommandBuffer:a1 sourceTexture:a2 destinationTexture:*a3];

  v8 = PostProcessRenderManager.mpsAddImages.getter();
  v9 = *(v3 + OBJC_IVAR____TtC19_RealityKit_SwiftUI24PostProcessRenderManager_mpsCopyAllocator);
  v10 = *(v3 + OBJC_IVAR____TtC19_RealityKit_SwiftUI24PostProcessRenderManager_mpsCopyAllocator + 8);
  v12[4] = v9;
  v12[5] = v10;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = thunk for @escaping @callee_guaranteed (@guaranteed MPSKernel, @guaranteed MTLCommandBuffer, @guaranteed MTLTexture) -> (@owned MTLTexture);
  v12[3] = &block_descriptor_9;
  v11 = _Block_copy(v12);

  [v8 encodeToCommandBuffer:a1 primaryTexture:a2 inPlaceSecondaryTexture:a3 fallbackCopyAllocator:v11];
  _Block_release(v11);
}

uint64_t thunk for @escaping @callee_guaranteed (@guaranteed MPSKernel, @guaranteed MTLCommandBuffer, @guaranteed MTLTexture) -> (@owned MTLTexture)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 32);

  v8 = a2;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v9 = v7(v8, a3, a4);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v9;
}

uint64_t PostProcessRenderManager.executeOcclusionHaze(context:arDepthTexture:sourceTexture:destinationTexture:)(__n128 a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v6 = v5;
  v7 = a5;
  v8 = a4;
  if (!a3)
  {
    goto LABEL_17;
  }

  v11 = *(v5 + 16);
  v12 = [swift_unknownObjectRetain() width];
  v13 = [a3 height];
  swift_beginAccess();
  v14 = *(v6 + 112);
  if (v14 && [*(v6 + 112) width] == v12 && objc_msgSend(v14, sel_height) == v13 && objc_msgSend(v14, sel_pixelFormat) == 25)
  {
    if ([v14 usage] == 3 || !v12 || !v13)
    {
      goto LABEL_15;
    }
  }

  else
  {
    if (v12)
    {
      v15 = v13 == 0;
    }

    else
    {
      v15 = 1;
    }

    if (v15)
    {
      goto LABEL_15;
    }
  }

  v16 = [objc_allocWithZone(MEMORY[0x277CD7058]) init];
  [v16 setPixelFormat_];
  [v16 setWidth_];
  [v16 setHeight_];
  [v16 setUsage_];
  v17 = [v11 newTextureWithDescriptor_];

  *(v6 + 112) = v17;
  swift_unknownObjectRelease();
LABEL_15:
  swift_endAccess();
  result = ARView.PostProcessContext.commandBuffer.getter();
  v19 = *(v6 + 112);
  if (!v19)
  {
    goto LABEL_27;
  }

  v20 = result;
  swift_unknownObjectRetain();
  v21 = PostProcessRenderManager.mpsConverter.getter();
  [v21 encodeToCommandBuffer:v20 sourceTexture:a3 destinationTexture:v19];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  v7 = a5;
  v8 = a4;
LABEL_17:
  v22 = [ARView.PostProcessContext.commandBuffer.getter() computeCommandEncoder];
  result = swift_unknownObjectRelease();
  if (!v22)
  {
    return result;
  }

  v23 = *(v6 + 56);
  if (v23)
  {
    swift_unknownObjectRetain();
    [v22 setComputePipelineState_];
    [v22 setBuffer:PostProcessRenderManager.frameUniformsBuffer.getter() offset:0 atIndex:0];
    swift_unknownObjectRelease();
    [v22 setTexture:v8 atIndex:0];
    [v22 setTexture:ARView.PostProcessContext.sourceDepthTexture.getter() atIndex:1];
    swift_unknownObjectRelease();
    swift_beginAccess();
    [v22 setTexture:*(v6 + 112) atIndex:2];
    v24 = *v7;
    [v22 setTexture:*v7 atIndex:3];
    v25 = [v24 width];
    v26 = [v24 height];
    v27 = [v23 threadExecutionWidth];
    result = [v23 maxTotalThreadsPerThreadgroup];
    if (v27)
    {
      if (result != 0x8000000000000000 || v27 != -1)
      {
        MTLSizeMake(v27, result / v27, &v33);
        v28 = v34;
        v29 = v33;
        *&v33 = v25;
        *(&v33 + 1) = v26;
        v34 = 1;
        v31 = v29;
        v32 = v28;
        [v22 dispatchThreads:&v33 threadsPerThreadgroup:&v31];
        [v22 endEncoding];
        swift_unknownObjectRelease();
        return swift_unknownObjectRelease();
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_27:
    __break(1u);
    return result;
  }

  return swift_unknownObjectRelease();
}

id *PostProcessRenderManager.deinit()
{
  swift_unknownObjectRelease();
  swift_weakDestroy();
  MEMORY[0x23EEB0C40](v0 + 4);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  v1 = OBJC_IVAR____TtC19_RealityKit_SwiftUI24PostProcessRenderManager__uiOrientation;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation6AtomicVySo22UIInterfaceOrientationVGMd, &_s17RealityFoundation6AtomicVySo22UIInterfaceOrientationVGMR);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t PostProcessRenderManager.__deallocating_deinit()
{
  PostProcessRenderManager.deinit();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PostProcessRenderManager(uint64_t a1)
{
  result = type metadata singleton initialization cache for PostProcessRenderManager;
  if (!type metadata singleton initialization cache for PostProcessRenderManager)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for PostProcessRenderManager(uint64_t a1)
{
  type metadata accessor for Atomic<UIInterfaceOrientation>(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for Atomic<UIInterfaceOrientation>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Atomic<UIInterfaceOrientation>)
  {
    type metadata accessor for UIInterfaceOrientation(255);
    v1 = type metadata accessor for Atomic();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Atomic<UIInterfaceOrientation>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type PostProcessRenderManager.Technique and conformance PostProcessRenderManager.Technique(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type PostProcessRenderManager.Technique and conformance PostProcessRenderManager.Technique;
  if (!lazy protocol witness table cache variable for type PostProcessRenderManager.Technique and conformance PostProcessRenderManager.Technique)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PostProcessRenderManager.Technique and conformance PostProcessRenderManager.Technique);
  }

  return result;
}

uint64_t MTLSizeMake@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  a3[2] = 1;
  return result;
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t lazy protocol witness table accessor for type PostProcessRenderManager.Error and conformance PostProcessRenderManager.Error(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type PostProcessRenderManager.Error and conformance PostProcessRenderManager.Error;
  if (!lazy protocol witness table cache variable for type PostProcessRenderManager.Error and conformance PostProcessRenderManager.Error)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PostProcessRenderManager.Error and conformance PostProcessRenderManager.Error);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PostProcessRenderManager.Error and conformance PostProcessRenderManager.Error;
  if (!lazy protocol witness table cache variable for type PostProcessRenderManager.Error and conformance PostProcessRenderManager.Error)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PostProcessRenderManager.Error and conformance PostProcessRenderManager.Error);
  }

  return result;
}

void CameraFrustumRenderer.setup(device:pixelFormat:cameraFrustumMeshDescriptor:)(_OWORD *a1, uint64_t a2, __int128 *a3)
{
  v5 = v4;
  v6 = v3;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, logger);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_23B824000, v11, v12, "Setting up CameraFrustumRenderer!", v13, 2u);
    MEMORY[0x23EEB0B70](v13, -1, -1);
  }

  v6[2] = a1;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  type metadata accessor for CameraFrustumMesh();
  v14 = swift_allocObject();
  *(v14 + 16) = 0u;
  *(v14 + 32) = 0u;
  v15 = a3[4];
  v16 = a3[5];
  *(v14 + 112) = a3[3];
  *(v14 + 128) = v15;
  *(v14 + 144) = v16;
  *(v14 + 160) = *(a3 + 24);
  v17 = *a3;
  v18 = a3[1];
  *(v14 + 48) = 0u;
  *(v14 + 64) = v17;
  v19 = a3[2];
  *(v14 + 80) = v18;
  *(v14 + 96) = v19;
  v20 = *(a3 + 11);
  v21 = *(a3 + 12);
  v22 = *(a3 + 7);
  v23 = swift_unknownObjectRetain();
  CameraFrustumMesh.setConeMTLBuffer(device:coneHeight:coneBaseRadius:coneBaseSegments:)(v23, v22, v20, v21);
  CameraFrustumMesh.setHollowCylinderMTLBuffer(device:zOffset:innerRadius:outerRadius:height:circleSegments:)(a1, *(a3 + 11), -v20, *(a3 + 18), *(a3 + 19), *(a3 + 20));
  CameraFrustumMesh.setSphereMTLBuffer(device:radius:radialSegments:verticalSegments:)(a1, *(a3 + 3), *(a3 + 4), *(a3 + 4));
  swift_unknownObjectRelease();
  v6[5] = v14;

  CameraFrustumRenderer.initRenderPipeline(pixelFormat:)(a2);
  if (!v5)
  {
    v24 = [objc_allocWithZone(MEMORY[0x277CD6D60]) init];
    [v24 setDepthCompareFunction_];
    [v24 setDepthWriteEnabled_];
    v25 = [a1 newDepthStencilStateWithDescriptor_];

    if (v25)
    {
      v6[4] = v25;
      swift_unknownObjectRelease();
    }

    else
    {
      __break(1u);
    }
  }
}

void CameraFrustumRenderer.initRenderPipeline(pixelFormat:)(uint64_t a1)
{
  v41[1] = *MEMORY[0x277D85DE8];
  v2 = *(v1 + 16);
  if (!v2)
  {
    __break(1u);
  }

  v4 = one-time initialization token for bundle;
  swift_unknownObjectRetain();
  if (v4 != -1)
  {
    swift_once();
  }

  v41[0] = 0;
  v5 = [v2 newDefaultLibraryWithBundle:static BaseRenderer.bundle error:v41];
  swift_unknownObjectRelease();
  if (!v5)
  {
    v31 = v41[0];
    v32 = _convertNSErrorToError(_:)();

    swift_willThrow();
    lazy protocol witness table accessor for type CameraFrustumRenderer.Error and conformance CameraFrustumRenderer.Error(v33, v34, v35);
    swift_allocError();
    swift_willThrow();
    return;
  }

  v6 = v41[0];
  v7 = MEMORY[0x23EEAF480](0xD000000000000028, 0x800000023B9295A0);
  v8 = [v5 newFunctionWithName_];

  v9 = MEMORY[0x23EEAF480](0xD000000000000026, 0x800000023B9295D0);
  v10 = [v5 newFunctionWithName_];

  v11 = [objc_allocWithZone(MEMORY[0x277CD6F78]) init];
  [v11 setVertexFunction_];
  [v11 setFragmentFunction_];
  [v11 setDepthAttachmentPixelFormat_];
  v12 = [v11 colorAttachments];
  v13 = [v12 objectAtIndexedSubscript_];

  if (!v13)
  {
    __break(1u);
    goto LABEL_20;
  }

  [v13 setPixelFormat_];

  v14 = [v11 colorAttachments];
  v15 = [v14 objectAtIndexedSubscript_];

  if (!v15)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  [v15 setBlendingEnabled_];

  v16 = [v11 colorAttachments];
  v17 = [v16 objectAtIndexedSubscript_];

  if (!v17)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  [v17 setRgbBlendOperation_];

  v18 = [v11 colorAttachments];
  v19 = [v18 objectAtIndexedSubscript_];

  if (!v19)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  [v19 setAlphaBlendOperation_];

  v20 = [v11 colorAttachments];
  v21 = [v20 objectAtIndexedSubscript_];

  if (!v21)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  [v21 setSourceRGBBlendFactor_];

  v22 = [v11 colorAttachments];
  v23 = [v22 objectAtIndexedSubscript_];

  if (!v23)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  [v23 setSourceAlphaBlendFactor_];

  v24 = [v11 colorAttachments];
  v25 = [v24 objectAtIndexedSubscript_];

  if (!v25)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  [v25 setDestinationRGBBlendFactor_];

  v26 = [v11 colorAttachments];
  v27 = [v26 objectAtIndexedSubscript_];

  if (!v27)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  [v27 setDestinationAlphaBlendFactor_];

  v28 = *(v1 + 16);
  if (!v28)
  {
LABEL_27:
    __break(1u);
    return;
  }

  v41[0] = 0;
  v29 = [v28 newRenderPipelineStateWithDescriptor:v11 error:v41];
  v30 = v41[0];
  if (v29)
  {
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    *(v1 + 24) = v29;
    swift_unknownObjectRelease();
  }

  else
  {
    v36 = v30;
    v37 = _convertNSErrorToError(_:)();

    v38 = swift_willThrow();
    lazy protocol witness table accessor for type CameraFrustumRenderer.Error and conformance CameraFrustumRenderer.Error(v38, v39, v40);
    swift_allocError();
    swift_willThrow();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }
}

id CameraFrustumRenderer.renderCone(into:desc:cameraPosesMTLBuffer:numCameraPoses:)(id result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 40);
  if (!v5 || !*(v5 + 24))
  {
    return result;
  }

  v9 = result;

  result = [v9 renderCommandEncoderWithDescriptor_];
  if (!result)
  {
    __break(1u);
    goto LABEL_13;
  }

  v10 = result;
  result = [result setCullMode_];
  if (!*(v4 + 24))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  [v10 setRenderPipelineState_];
  [v10 setDepthStencilState_];
  result = [v10 setVertexBuffer:a3 offset:0 atIndex:0];
  if (!*(v4 + 16))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  result = [swift_unknownObjectRetain() newBufferWithLength:144 options:1];
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v11 = result;
  swift_unknownObjectRelease();
  v12 = [swift_unknownObjectRetain() contents];
  v13 = v11;
  v14 = *(v4 + 64);
  v15 = *(v4 + 80);
  v16 = *(v4 + 96);
  *v12 = *(v4 + 48);
  v12[1] = v14;
  v12[2] = v15;
  v12[3] = v16;
  v17 = *(v4 + 128);
  v18 = *(v4 + 144);
  v19 = *(v4 + 160);
  v12[4] = *(v4 + 112);
  v12[5] = v17;
  v12[6] = v18;
  v12[7] = v19;
  *(v12 + 32) = *(v4 + 176);
  result = [v10 setVertexBuffer:v11 offset:0 atIndex:1];
  v20 = *(v5 + 16);
  if (!v20)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  [v10 setVertexBuffer:v20 offset:0 atIndex:2];
  [v10 drawPrimitives:3 vertexStart:0 vertexCount:*(v5 + 24) instanceCount:a4];
  [v10 endEncoding];

  swift_unknownObjectRelease();

  return swift_unknownObjectRelease();
}

id CameraFrustumRenderer.renderHollowCylinder(into:desc:cameraPosesMTLBuffer:numCameraPoses:)(id result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 40);
  if (!v5 || !*(v5 + 40))
  {
    return result;
  }

  v9 = result;

  result = [v9 renderCommandEncoderWithDescriptor_];
  if (!result)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (!*(v4 + 24))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v10 = result;
  [result setRenderPipelineState_];
  [v10 setDepthStencilState_];
  result = [v10 setVertexBuffer:a3 offset:0 atIndex:0];
  if (!*(v4 + 16))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  result = [swift_unknownObjectRetain() newBufferWithLength:144 options:1];
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v11 = result;
  swift_unknownObjectRelease();
  v12 = [swift_unknownObjectRetain() contents];
  v13 = v11;
  v14 = *(v4 + 64);
  v15 = *(v4 + 80);
  v16 = *(v4 + 96);
  *v12 = *(v4 + 48);
  v12[1] = v14;
  v12[2] = v15;
  v12[3] = v16;
  v17 = *(v4 + 128);
  v18 = *(v4 + 144);
  v19 = *(v4 + 160);
  v12[4] = *(v4 + 112);
  v12[5] = v17;
  v12[6] = v18;
  v12[7] = v19;
  *(v12 + 32) = *(v4 + 176);
  result = [v10 setVertexBuffer:v11 offset:0 atIndex:1];
  v20 = *(v5 + 32);
  if (!v20)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  [v10 setVertexBuffer:v20 offset:0 atIndex:2];
  [v10 drawPrimitives:3 vertexStart:0 vertexCount:*(v5 + 40) instanceCount:a4];
  [v10 endEncoding];

  swift_unknownObjectRelease();

  return swift_unknownObjectRelease();
}

id CameraFrustumRenderer.renderSphere(into:desc:cameraPosesMTLBuffer:numCameraPoses:)(id result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 40);
  if (!v5 || !*(v5 + 56))
  {
    return result;
  }

  v9 = result;

  result = [v9 renderCommandEncoderWithDescriptor_];
  if (!result)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (!*(v4 + 24))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v10 = result;
  [result setRenderPipelineState_];
  [v10 setDepthStencilState_];
  result = [v10 setVertexBuffer:a3 offset:0 atIndex:0];
  if (!*(v4 + 16))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  result = [swift_unknownObjectRetain() newBufferWithLength:144 options:1];
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v11 = result;
  swift_unknownObjectRelease();
  v12 = [swift_unknownObjectRetain() contents];
  v13 = v11;
  v14 = *(v4 + 64);
  v15 = *(v4 + 80);
  v16 = *(v4 + 96);
  *v12 = *(v4 + 48);
  v12[1] = v14;
  v12[2] = v15;
  v12[3] = v16;
  v17 = *(v4 + 128);
  v18 = *(v4 + 144);
  v19 = *(v4 + 160);
  v12[4] = *(v4 + 112);
  v12[5] = v17;
  v12[6] = v18;
  v12[7] = v19;
  *(v12 + 32) = *(v4 + 176);
  result = [v10 setVertexBuffer:v11 offset:0 atIndex:1];
  v20 = *(v5 + 48);
  if (!v20)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  [v10 setVertexBuffer:v20 offset:0 atIndex:2];
  [v10 drawPrimitives:3 vertexStart:0 vertexCount:*(v5 + 56) instanceCount:a4];
  [v10 endEncoding];

  swift_unknownObjectRelease();

  return swift_unknownObjectRelease();
}

uint64_t CameraFrustumRenderer.__deallocating_deinit()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void CameraFrustumMesh.setConeMTLBuffer(device:coneHeight:coneBaseRadius:coneBaseSegments:)(_OWORD *a1, void *a2, float a3, float a4)
{
  v5 = v4;
  if (one-time initialization token for logger != -1)
  {
    goto LABEL_20;
  }

  while (1)
  {
    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, logger);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_23B824000, v11, v12, "Creating MTLBuffer for the cone!", v13, 2u);
      MEMORY[0x23EEB0B70](v13, -1, -1);
    }

    _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #0 of CameraFrustumMesh.setConeMTLBuffer(device:coneHeight:coneBaseRadius:coneBaseSegments:));
    v30 = v14;
    v15 = specialized CameraFrustumMesh.createCircleVertices(zOffset:radius:circleSegments:)(a2, -a3, a4);
    v16 = *(v15 + 16);
    v17 = 3 * v16;
    if ((v16 * 3) >> 64 != (3 * v16) >> 63)
    {
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
      return;
    }

    *(v5 + 24) = v17;
    if ((v17 - 0x400000000000000) >> 59 != 31)
    {
      goto LABEL_22;
    }

    v18 = v15;
    v19 = [a1 newBufferWithLength:96 * v16 options:1];
    if (!v19)
    {
      goto LABEL_23;
    }

    *(v5 + 16) = v19;
    a2 = v19;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    a1 = [a2 contents];
    v20 = a2;
    if (!v16)
    {
      break;
    }

    v22 = *(v5 + 64);
    HIDWORD(v22) = 0;
    v21 = v22;
    HIDWORD(v21) = *(v5 + 128);
    HIDWORD(v22) = *(v5 + 132);
    v23 = *(v18 + 16);
    v24 = a1 + 3;
    v25 = 0x2AAAAAAAAAAAAAAALL;
    v26 = 1;
    v27 = (v18 + 32);
    while (1)
    {
      *(v24 - 3) = v30;
      *(v24 - 2) = v21;
      v28 = --v16 ? v26 : 0;
      if (v28 >= v23)
      {
        break;
      }

      *(v24 - 1) = *(v18 + 32 + 16 * v28);
      *v24 = v22;
      if (!v25)
      {
        goto LABEL_19;
      }

      v29 = *v27++;
      v24[1] = v29;
      v24[2] = v22;
      ++v26;
      --v25;
      v24 += 6;
      if (!v16)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    swift_once();
  }

LABEL_15:
}

void CameraFrustumMesh.setHollowCylinderMTLBuffer(device:zOffset:innerRadius:outerRadius:height:circleSegments:)(_OWORD *a1, uint64_t a2, float a3, float a4, float a5, float a6)
{
  v7 = v6;
  if (one-time initialization token for logger != -1)
  {
    goto LABEL_40;
  }

  while (1)
  {
    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, logger);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_23B824000, v15, v16, "Creating MTLBuffer for the concentric circles!", v17, 2u);
      MEMORY[0x23EEB0B70](v17, -1, -1);
    }

    v18 = specialized CameraFrustumMesh.createCircleVertices(zOffset:radius:circleSegments:)(a2, a3, a4);
    v19 = specialized CameraFrustumMesh.createCircleVertices(zOffset:radius:circleSegments:)(a2, a3, a5);
    a6 = a3 + a6;
    v20 = specialized CameraFrustumMesh.createCircleVertices(zOffset:radius:circleSegments:)(a2, a6, a4);
    v21 = specialized CameraFrustumMesh.createCircleVertices(zOffset:radius:circleSegments:)(a2, a6, a5);
    v22 = *(v18 + 16);
    if ((v22 * 6) >> 64 != (6 * v22) >> 63)
    {
      __break(1u);
LABEL_42:
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
      __break(1u);
      return;
    }

    v23 = 18 * v22;
    if (((6 * v22) * 3) >> 64 != (18 * v22) >> 63)
    {
      goto LABEL_42;
    }

    *(v7 + 40) = v23;
    if ((v23 - 0x400000000000000) >> 59 != 31)
    {
      goto LABEL_43;
    }

    a2 = v21;
    v24 = [a1 newBufferWithLength:576 * v22 options:1];
    if (!v24)
    {
      goto LABEL_47;
    }

    *(v7 + 32) = v24;
    v25 = v24;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    a1 = [v25 contents];
    v26 = v25;
    if (!v22)
    {
      break;
    }

    v27 = *(v19 + 16);
    if (v22 > v27)
    {
      goto LABEL_44;
    }

    v28 = *(a2 + 16);
    if (v22 > v28)
    {
      goto LABEL_45;
    }

    v29 = *(v20 + 16);
    if (v22 > v29)
    {
      goto LABEL_46;
    }

    v30 = 0;
    v31 = *(v7 + 64);
    HIDWORD(v31) = *(v7 + 160);
    v32 = v18 + 32;
    v33 = v19 + 32;
    v34 = v20 + 32;
    v35 = a2 + 32;
    v36 = *(v18 + 16);
    v37 = a1 + 9;
    v38 = 8;
    while (1)
    {
      v39 = v22 - 1 == v30 ? 0 : v30 + 1;
      if (v39 >= v36)
      {
        break;
      }

      *(v37 - 9) = *(v32 + 16 * v39);
      *(v37 - 8) = v31;
      if (v39 >= v27)
      {
        goto LABEL_31;
      }

      *(v37 - 7) = *(v33 + 16 * v39);
      *(v37 - 6) = v31;
      *(v37 - 5) = *(v33 + 16 * v30);
      *(v37 - 4) = v31;
      *(v37 - 3) = *(v32 + 16 * v39);
      *(v37 - 2) = v31;
      *(v37 - 1) = *(v33 + 16 * v30);
      *v37 = v31;
      v37[1] = *(v32 + 16 * v30);
      v37[2] = v31;
      if (v39 >= v29)
      {
        goto LABEL_32;
      }

      v37[3] = *(v34 + 16 * v39);
      v37[4] = v31;
      if (v39 >= v28)
      {
        goto LABEL_33;
      }

      v37[5] = *(v35 + 16 * v39);
      v37[6] = v31;
      if (v30 == 0x71C71C71C71C71CLL)
      {
        goto LABEL_34;
      }

      v37[7] = *(v35 + 16 * v30);
      v37[8] = v31;
      if (__OFADD__(v38, 1))
      {
        goto LABEL_35;
      }

      v40 = &a1[2 * v38 + 2];
      *v40 = *(v34 + 16 * v39);
      v40[1] = v31;
      v41 = &a1[2 * v38 + 4];
      *v41 = *(v35 + 16 * v30);
      v41[1] = v31;
      if (__OFADD__(v38 + 2, 1))
      {
        goto LABEL_36;
      }

      v42 = &a1[2 * v38 + 6];
      *v42 = *(v34 + 16 * v30);
      v42[1] = v31;
      v43 = &a1[2 * v38 + 8];
      *v43 = *(v35 + 16 * v39);
      v43[1] = v31;
      if (__OFADD__(v38 + 4, 1))
      {
        goto LABEL_37;
      }

      v44 = &a1[2 * v38 + 10];
      *v44 = *(v33 + 16 * v39);
      v44[1] = v31;
      v45 = &a1[2 * v38 + 12];
      *v45 = *(v33 + 16 * v30);
      v45[1] = v31;
      if (__OFADD__(v38 + 6, 1))
      {
        goto LABEL_38;
      }

      v46 = *(v35 + 16 * v39);
      v47 = &a1[2 * v38 + 14];
      *v47 = v46;
      v47[1] = v31;
      v48 = &a1[2 * v38 + 16];
      *v48 = *(v33 + 16 * v30);
      v48[1] = v31;
      if (__OFADD__(v38 + 8, 1))
      {
        goto LABEL_39;
      }

      v49 = *(v35 + 16 * v30);
      v50 = v30 + 1;
      v51 = &a1[2 * v38 + 18];
      *v51 = v49;
      v51[1] = v31;
      v38 += 18;
      v37 += 36;
      v30 = v50;
      if (v22 == v50)
      {
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    swift_once();
  }

LABEL_27:
}

void CameraFrustumMesh.setSphereMTLBuffer(device:radius:radialSegments:verticalSegments:)(_OWORD *a1, uint64_t a2, uint64_t a3, float a4)
{
  v5 = v4;
  if (one-time initialization token for logger != -1)
  {
    goto LABEL_63;
  }

  while (1)
  {
    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, logger);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_23B824000, v11, v12, "Creating MTLBuffer for the sphere!", v13, 2u);
      MEMORY[0x23EEB0B70](v13, -1, -1);
    }

    _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #0 of CameraFrustumMesh.setSphereMTLBuffer(device:radius:radialSegments:verticalSegments:));
    v15 = Sphere.createSurfaceSamples(radialSegments:verticalSegments:)(a2, a3, v14, a4);
    if (a3 < 0)
    {
      __break(1u);
      goto LABEL_65;
    }

    v43 = v5;
    v44 = a1;
    v42 = v15;
    if (!a3)
    {
      break;
    }

    v47 = a2 + 1;
    if (__OFADD__(a2, 1))
    {
      goto LABEL_66;
    }

    if (a2 < 0)
    {
      goto LABEL_67;
    }

    v16 = 0;
    a1 = (a3 - 1);
    v17 = MEMORY[0x277D84F90];
    v45 = a2;
    v46 = a3;
    while (1)
    {
      v18 = v16 * v47;
      if ((v16 * v47) >> 64 != (v16 * v47) >> 63)
      {
        goto LABEL_60;
      }

      v19 = v18 + a2;
      if (__OFADD__(v18, a2))
      {
        break;
      }

      v5 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        goto LABEL_62;
      }

      for (; a2; --a2)
      {
        if (v16)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v17 + 2) + 1, 1, v17);
          }

          v21 = *(v17 + 2);
          v20 = *(v17 + 3);
          v22 = v21 + 1;
          if (v21 >= v20 >> 1)
          {
            v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1, v17);
          }

          *(v17 + 2) = v22;
          *&v17[8 * v21 + 32] = v18;
          a3 = v18 + 1;
          if (__OFADD__(v18, 1))
          {
            goto LABEL_56;
          }

          v23 = *(v17 + 3);
          v24 = v21 + 2;
          if ((v21 + 2) > (v23 >> 1))
          {
            v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v21 + 2, 1, v17);
          }

          *(v17 + 2) = v24;
          *&v17[8 * v22 + 32] = a3;
          v25 = *(v17 + 3);
          if ((v21 + 3) > (v25 >> 1))
          {
            v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), v21 + 3, 1, v17);
          }

          *(v17 + 2) = v21 + 3;
          *&v17[8 * v24 + 32] = v5;
        }

        if (v16 == a1)
        {
          v26 = __OFADD__(v18++, 1);
          if (v26)
          {
            __break(1u);
LABEL_55:
            __break(1u);
LABEL_56:
            __break(1u);
LABEL_57:
            __break(1u);
LABEL_58:
            __break(1u);
LABEL_59:
            __break(1u);
LABEL_60:
            __break(1u);
            goto LABEL_61;
          }

          v26 = __OFADD__(v5++, 1);
          if (v26)
          {
            goto LABEL_55;
          }
        }

        else
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v17 + 2) + 1, 1, v17);
          }

          v28 = *(v17 + 2);
          v27 = *(v17 + 3);
          v29 = v28 + 1;
          if (v28 >= v27 >> 1)
          {
            v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v27 > 1), v28 + 1, 1, v17);
          }

          *(v17 + 2) = v29;
          *&v17[8 * v28 + 32] = v5;
          v26 = __OFADD__(v18++, 1);
          if (v26)
          {
            goto LABEL_57;
          }

          v30 = *(v17 + 3);
          v31 = v28 + 2;
          if ((v28 + 2) > (v30 >> 1))
          {
            v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v30 > 1), v28 + 2, 1, v17);
          }

          *(v17 + 2) = v31;
          *&v17[8 * v29 + 32] = v18;
          a3 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
            goto LABEL_58;
          }

          v32 = *(v17 + 3);
          if ((v28 + 3) > (v32 >> 1))
          {
            v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v32 > 1), v28 + 3, 1, v17);
          }

          *(v17 + 2) = v28 + 3;
          *&v17[8 * v31 + 32] = a3;
          v26 = __OFADD__(v5++, 1);
          if (v26)
          {
            goto LABEL_55;
          }
        }
      }

      ++v16;
      a2 = v45;
      a3 = v46;
      if (v16 == v46)
      {
        goto LABEL_44;
      }
    }

LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    swift_once();
  }

  v17 = MEMORY[0x277D84F90];
LABEL_44:
  v5 = *(v17 + 2);
  if (v5 >> 58)
  {
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
    return;
  }

  v33 = [v44 newBufferWithLength:32 * v5 options:1];
  if (!v33)
  {
    goto LABEL_69;
  }

  *(v43 + 48) = v33;
  a3 = v33;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  a1 = [a3 contents];
  v34 = a3;
  if (v5)
  {
    if (v5 <= *(v17 + 2))
    {
      v35 = *(v43 + 64);
      HIDWORD(v35) = *(v43 + 104);
      v36 = (v17 + 32);
      v37 = *(v42 + 16);
      v38 = a1 + 1;
      v39 = v5;
      while (1)
      {
        v41 = *v36++;
        v40 = v41;
        if (v41 >= v37)
        {
          goto LABEL_59;
        }

        *(v38 - 1) = *(v42 + 32 + 16 * v40);
        *v38 = v35;
        v38 += 2;
        if (!--v39)
        {
          goto LABEL_51;
        }
      }
    }

    goto LABEL_68;
  }

LABEL_51:

  *(v43 + 56) = v5;
}

uint64_t CameraFrustumMesh.__deallocating_deinit()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

__n128 __swift_memcpy100_16(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 24);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for CameraFrustumMesh.Descriptor(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 100))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CameraFrustumMesh.Descriptor(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
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

  *(result + 100) = v3;
  return result;
}

uint64_t specialized CameraFrustumMesh.createCircleVertices(zOffset:radius:circleSegments:)(uint64_t result, float a2, float a3)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    if (!result)
    {
      return MEMORY[0x277D84F90];
    }

    v5 = 0;
    v6 = MEMORY[0x277D84F90];
    do
    {
      v7 = __sincosf_stret((6.2832 / v3) * v5);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v6 + 2) + 1, 1, v6);
      }

      v9 = *(v6 + 2);
      v8 = *(v6 + 3);
      if (v9 >= v8 >> 1)
      {
        v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v9 + 1, 1, v6);
      }

      ++v5;
      *&v10 = v7.__cosval * a3;
      *(&v10 + 1) = v7.__sinval * a3;
      *(&v10 + 1) = LODWORD(a2);
      *(v6 + 2) = v9 + 1;
      *&v6[16 * v9 + 32] = v10;
    }

    while (v3 != v5);
    return v6;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CameraFrustumRenderer.Error and conformance CameraFrustumRenderer.Error(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type CameraFrustumRenderer.Error and conformance CameraFrustumRenderer.Error;
  if (!lazy protocol witness table cache variable for type CameraFrustumRenderer.Error and conformance CameraFrustumRenderer.Error)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CameraFrustumRenderer.Error and conformance CameraFrustumRenderer.Error);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CameraFrustumRenderer.Error and conformance CameraFrustumRenderer.Error;
  if (!lazy protocol witness table cache variable for type CameraFrustumRenderer.Error and conformance CameraFrustumRenderer.Error)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CameraFrustumRenderer.Error and conformance CameraFrustumRenderer.Error);
  }

  return result;
}

void specialized SIMD.subscript.getter(__n128 a1, double a2)
{
  v2 = a1.n128_u8[0] & 3;
  if (a1.n128_i64[0] <= 0)
  {
    v2 = -(-a1.n128_u64[0] & 3);
  }

  v3 = a1.n128_u8[8] & 3;
  if (a1.n128_i64[1] <= 0)
  {
    v3 = -(-a1.n128_u64[1] & 3);
  }

  v4 = LOBYTE(a2) & 3;
  if (*&a2 <= 0)
  {
    v4 = -(-*&a2 & 3);
  }

  if (((v2 | v4 | v3) & 0x8000000000000000) != 0)
  {
    __break(1u);
  }
}

void *specialized static Ray3D.screenPointToPlane(within:screenPoint:plane:)(double a1, double a2, double a3, float32x4_t a4)
{
  v4 = 0xD00000000000002ALL;
  result = ARView.ray(through:)();
  if (v19)
  {
    v8 = "ragShaderCameraFrustum";
    v4 = 0xD000000000000031;
  }

  else
  {
    v9 = vmulq_f32(v18, v18);
    v10 = vaddv_f32(*v9.f32);
    *v9.f32 = vrsqrte_f32(COERCE_UNSIGNED_INT(v9.f32[2] + v10));
    *v9.f32 = vmul_f32(*v9.f32, vrsqrts_f32(COERCE_UNSIGNED_INT(v9.f32[2] + v10), vmul_f32(*v9.f32, *v9.f32)));
    v11 = vmulq_f32(a4, a4);
    v12 = vaddv_f32(*v11.f32);
    v13 = vmulq_n_f32(v18, vmul_f32(*v9.f32, vrsqrts_f32(COERCE_UNSIGNED_INT(v9.f32[2] + v10), vmul_f32(*v9.f32, *v9.f32))).f32[0]);
    *v9.f32 = vrsqrte_f32(COERCE_UNSIGNED_INT(v11.f32[2] + v12));
    *v9.f32 = vmul_f32(*v9.f32, vrsqrts_f32(COERCE_UNSIGNED_INT(v11.f32[2] + v12), vmul_f32(*v9.f32, *v9.f32)));
    v14 = vmulq_n_f32(a4, vmul_f32(*v9.f32, vrsqrts_f32(COERCE_UNSIGNED_INT(v11.f32[2] + v12), vmul_f32(*v9.f32, *v9.f32))).f32[0]);
    if (fabsf(vmuls_lane_f32(v13.f32[2], v14, 2) + vaddv_f32(vmul_f32(*v13.f32, *v14.f32))) >= 0.001)
    {
      return result;
    }

    v8 = "int in this view!";
  }

  v15 = v8 | 0x8000000000000000;
  lazy protocol witness table accessor for type Ray3D.Error and conformance Ray3D.Error(result, v6, v7);
  swift_allocError();
  *v16 = v4;
  v16[1] = v15;
  return swift_willThrow();
}

double specialized static Ray3D.unproject(clipSpace:using:aspectRatio:)(uint64_t a1, double a2, float a3)
{
  Entity.coreEntity.getter();
  REPerspectiveCameraComponentGetComponentType();
  if (REEntityGetComponentByClass())
  {
    REPerspectiveCameraComponentCalculateProjectionWithAspectRatio();
    REPerspectiveCameraComponentAdjustProjectionAspect();
    REProjectionClipSpaceNearZ();
    v5 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySfGMd, &_ss23_ContiguousArrayStorageCySfGMR);
LABEL_5:
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_23B91A6D0;
    *(inited + 32) = a2;
    *(inited + 40) = v5;
    _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(inited);
    swift_setDeallocating();
    REConvertProjectionToMatrix4x4();
    REProjectionUnprojectPoint();
    return result;
  }

  Entity.coreEntity.getter();
  RECustomMatrixCameraComponentGetComponentType();
  if (REEntityGetComponentByClass())
  {
    RECustomMatrixCameraComponentCalculateProjection();
    RECustomMatrixCameraComponentAdjustProjectionAspect();
    REProjectionClipSpaceNearZ();
    v5 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySfGMd, &_ss23_ContiguousArrayStorageCySfGMR);
    goto LABEL_5;
  }

  return 0.0;
}

void specialized static Ray3D.worldRay(through:using:)(uint64_t a1@<X0>, float32x4_t *a2@<X8>, double a3@<D0>)
{
  specialized static Ray3D.unproject(clipSpace:using:aspectRatio:)(a1, a3, 1.0);
  v4 = 0uLL;
  if (v5)
  {
    v6 = 1;
    v7 = 0uLL;
  }

  else
  {
    Entity.coreEntity.getter();
    RETransformComponentGetComponentType();
    if (REEntityGetComponentByClass())
    {
      RETransformComponentGetWorldMatrix4x4F();
      v13 = v8;
      simd_float4x4.transform(position:)();
      v4 = v13;
      v6 = 0;
      v10 = vsubq_f32(v9, v13);
      v4.i32[3] = 0;
      v11 = vmulq_f32(v10, v10);
      *&v12 = v11.f32[2] + vaddv_f32(*v11.f32);
      *v11.f32 = vrsqrte_f32(v12);
      *v11.f32 = vmul_f32(*v11.f32, vrsqrts_f32(v12, vmul_f32(*v11.f32, *v11.f32)));
      v7 = vmulq_n_f32(v10, vmul_f32(*v11.f32, vrsqrts_f32(v12, vmul_f32(*v11.f32, *v11.f32))).f32[0]);
    }

    else
    {
      v6 = 1;
      v7 = 0uLL;
      v4 = 0uLL;
    }
  }

  *a2 = v4;
  a2[1] = v7;
  a2[2].i8[0] = v6;
}

uint64_t specialized static Ray3D.closestPointParameter(to:along:)(uint64_t result, double a2, float32x4_t a3, double a4, float32x4_t a5, uint64_t a6, uint64_t a7)
{
  v7 = vmulq_f32(a3, a3);
  v8 = vmulq_f32(a5, a5);
  v9 = vmulq_f32(a3, a5);
  *v7.i8 = vadd_f32(vzip1_s32(*&vextq_s8(v7, v7, 8uLL), *&vextq_s8(v9, v9, 8uLL)), vadd_f32(vzip1_s32(*v7.i8, *v9.i8), vzip2_s32(*v7.i8, *v9.i8)));
  v9.i32[1] = v7.i32[1];
  *v9.i32 = v8.f32[2] + vaddv_f32(*v8.f32);
  *v8.f32 = vmul_f32(*v7.i8, *v9.i8);
  if (vsub_f32(*v8.f32, vdup_lane_s32(*v8.f32, 1)).f32[0] <= 0.001)
  {
    lazy protocol witness table accessor for type Ray3D.Error and conformance Ray3D.Error(result, a6, a7);
    swift_allocError();
    *v10 = 0;
    v10[1] = 0;
    return swift_willThrow();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Ray3D.Error and conformance Ray3D.Error(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type Ray3D.Error and conformance Ray3D.Error;
  if (!lazy protocol witness table cache variable for type Ray3D.Error and conformance Ray3D.Error)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Ray3D.Error and conformance Ray3D.Error);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Ray3D.Error(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for Ray3D.Error(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t getEnumTag for Ray3D.Error(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *static ViewBuilder.buildEither<A, B>(second:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = type metadata accessor for _ConditionalContent.Storage();
  MEMORY[0x28223BE20](v8);
  (*(*(a3 - 8) + 16))(&v11 - v9, a1, a3);
  swift_storeEnumTagMultiPayload();
  return _ConditionalContent<>.init(storage:)();
}

void *static ViewBuilder.buildEither<A, B>(first:)(uint64_t a1, uint64_t a2)
{
  v8 = type metadata accessor for _ConditionalContent.Storage();
  MEMORY[0x28223BE20](v8);
  (*(*(a2 - 8) + 16))(&v11 - v9, a1, a2);
  swift_storeEnumTagMultiPayload();
  return _ConditionalContent<>.init(storage:)();
}

uint64_t key path getter for Model3DAsset.location : Model3DAsset@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type Model3DAsset and conformance Model3DAsset();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC19_RealityKit_SwiftUI12Model3DAsset__location;
  swift_beginAccess();
  return outlined init with copy of Model3DLocation(v3 + v4, a2);
}

uint64_t key path setter for Model3DAsset.location : Model3DAsset(uint64_t a1)
{
  v2 = type metadata accessor for Model3DLocation(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Model3DLocation(a1, v4);
  return Model3DAsset.location.setter(v4);
}

void Model3DPhase.model.getter(uint64_t a1@<X8>)
{
  v3 = *(v1 + 64);
  if (v3 > 0x3F)
  {
    v7 = 0;
    v5 = 0;
    v6 = 0;
    v10 = 0;
    *(a1 + 56) = 0;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
  }

  else
  {
    v4 = *(v1 + 2);
    v5 = v1[1];
    v6 = v1[2];
    v7 = *v1;
    v8 = v1[6];
    v9 = v1[7];
    v10 = v3 & 1;
    *(a1 + 32) = v4;
    *(a1 + 48) = v8;
    *(a1 + 56) = v9;
  }

  *a1 = v7;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 64) = v10;
}

id Model3DPhase.error.getter()
{
  if ((*(v0 + 64) & 0xC0) != 0x40)
  {
    return 0;
  }

  v1 = *v0;
  v2 = *v0;
  return v1;
}

uint64_t Model3D.init<>(url:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19_RealityKit_SwiftUI7Model3DVyAA08ResolvedE1DVGMd, &_s19_RealityKit_SwiftUI7Model3DVyAA08ResolvedE1DVGMR);
  v5 = *(v4 + 36);
  v6 = type metadata accessor for URL();
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  type metadata accessor for Model3DLocation(0);
  result = swift_storeEnumTagMultiPayload();
  *(a2 + v5) = 0;
  v8 = (a2 + *(v4 + 40));
  *v8 = closure #1 in Model3D.init<>(named:bundle:);
  v8[1] = 0;
  return result;
}

uint64_t Model3D.init(url:transaction:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v12 = type metadata accessor for Model3D(0, a5, a6, a4);
  v13 = *(v12 + 36);
  v14 = type metadata accessor for URL();
  (*(*(v14 - 8) + 32))(a7, a1, v14);
  type metadata accessor for Model3DLocation(0);
  result = swift_storeEnumTagMultiPayload();
  *(a7 + v13) = a2;
  v16 = (a7 + *(v12 + 40));
  *v16 = a3;
  v16[1] = a4;
  return result;
}

uint64_t Model3D.init<A, B>(url:content:placeholder:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v27 = a4;
  v28 = a5;
  v26 = a3;
  v29 = a9;
  v15 = type metadata accessor for URL();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v18, a1, v15);
  v19 = swift_allocObject();
  v19[2] = a6;
  v19[3] = a7;
  v19[4] = a8;
  v19[5] = a10;
  v20 = v26;
  v21 = v27;
  v19[6] = a2;
  v19[7] = v20;
  v22 = v28;
  v19[8] = v21;
  v19[9] = v22;
  v30[0] = a6;
  v30[1] = a7;
  v30[2] = a8;
  v30[3] = a10;
  v23 = type metadata accessor for Model3DPlaceholderContent(0, v30);
  WitnessTable = swift_getWitnessTable();
  Model3D.init(url:transaction:content:)(v18, 0, partial apply for closure #1 in Model3D.init<A, B>(url:content:placeholder:), v19, v23, WitnessTable, v29);
  return (*(v16 + 8))(a1, v15);
}

uint64_t Model3D.init<>(named:bundle:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19_RealityKit_SwiftUI7Model3DVyAA08ResolvedE1DVGMd, &_s19_RealityKit_SwiftUI7Model3DVyAA08ResolvedE1DVGMR);
  v9 = *(v8 + 36);
  *a4 = a1;
  a4[1] = a2;
  a4[2] = a3;
  type metadata accessor for Model3DLocation(0);
  result = swift_storeEnumTagMultiPayload();
  *(a4 + v9) = 0;
  v11 = (a4 + *(v8 + 40));
  *v11 = closure #1 in Model3D.init<>(named:bundle:);
  v11[1] = 0;
  return result;
}

uint64_t closure #1 in Model3D.init<>(url:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 64);
  if (v3 > 0x3F)
  {
    result = BoundingBox.init()();
    LOBYTE(v3) = 0;
    v4 = 0;
    v6 = 0;
    v5 = 0xE000000000000000;
  }

  else
  {
    v5 = a1[1];
    v4 = a1[2];
    v6 = *a1;
    v11 = *(a1 + 2);
    v10 = *(a1 + 3);

    v9 = v10;
    v8 = v11;
  }

  *a2 = v6;
  *(a2 + 8) = v5;
  *(a2 + 16) = v4;
  *(a2 + 32) = v8;
  *(a2 + 48) = v9;
  *(a2 + 64) = v3 & 1;
  return result;
}

uint64_t Model3D.init(named:bundle:transaction:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  v16 = type metadata accessor for Model3D(0, a7, a8, a4);
  v17 = *(v16 + 36);
  *a9 = a1;
  a9[1] = a2;
  a9[2] = a3;
  type metadata accessor for Model3DLocation(0);
  result = swift_storeEnumTagMultiPayload();
  *(a9 + v17) = a4;
  v19 = (a9 + *(v16 + 40));
  *v19 = a5;
  v19[1] = a6;
  return result;
}

uint64_t Model3D.init<A, B>(named:bundle:content:placeholder:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v18 = swift_allocObject();
  v18[2] = a8;
  v18[3] = a10;
  v18[4] = a11;
  v18[5] = a12;
  v18[6] = a4;
  v18[7] = a5;
  v18[8] = a6;
  v18[9] = a7;
  v25[0] = a8;
  v25[1] = a10;
  v25[2] = a11;
  v25[3] = a12;
  v19 = type metadata accessor for Model3DPlaceholderContent(0, v25);
  WitnessTable = swift_getWitnessTable();
  return Model3D.init(named:bundle:transaction:content:)(a1, a2, a3, 0, partial apply for closure #1 in Model3D.init<A, B>(named:bundle:content:placeholder:), v18, v19, WitnessTable, a9);
}

uint64_t closure #1 in Model3D.init<A, B>(url:content:placeholder:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v12 = a3;
  v14 = *(a1 + 64);
  if (v14 > 0x3F)
  {
    v22 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v20 = 0uLL;
    v21 = 0uLL;
  }

  else
  {
    v15 = a1[1];
    v28 = *a1;
    v16 = a1[2];
    v17 = v14 & 1;
    v26 = *(a1 + 3);
    v27 = *(a1 + 2);
    v19 = a8;

    v21 = v26;
    v20 = v27;
    v22 = v28;
    a8 = v19;
    v12 = a3;
  }

  *&v39 = v22;
  *(&v39 + 1) = v15;
  v40 = v16;
  v41 = v20;
  v42 = v21;
  LOBYTE(v43) = v17;
  *(&v43 + 1) = a2;
  *&v44 = v12;
  *(&v44 + 1) = a4;
  v45 = a5;
  *&v46 = a6;
  *(&v46 + 1) = a7;
  *&v47 = a8;
  *(&v47 + 1) = a9;
  v23 = type metadata accessor for Model3DPlaceholderContent(0, &v46);
  swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)();
  v37[4] = v43;
  v37[5] = v44;
  v38 = a5;
  v37[0] = v39;
  v37[1] = v16;
  v37[2] = v41;
  v37[3] = v42;
  v24 = *(*(v23 - 8) + 8);

  v24(v37, v23);
  v34 = v50;
  v35 = v51;
  v36 = v52;
  v30 = v46;
  v31 = v47;
  v32 = v48;
  v33 = v49;
  static ViewBuilder.buildExpression<A>(_:)();
  v43 = v34;
  v44 = v35;
  v45 = v36;
  v39 = v30;
  v40 = v31;
  v41 = v32;
  v42 = v33;
  return v24(&v39, v23);
}

uint64_t Model3D.init<>(from:configurations:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19_RealityKit_SwiftUI7Model3DVyAA08ResolvedE1DVGMd, &_s19_RealityKit_SwiftUI7Model3DVyAA08ResolvedE1DVGMR);
  *(a3 + *(v6 + 36)) = 0;
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit6EntityC0A10FoundationE20ConfigurationCatalogV_SDyS2SGSg14configurationstMd, &_s10RealityKit6EntityC0A10FoundationE20ConfigurationCatalogV_SDyS2SGSg14configurationstMR) + 48);
  v8 = type metadata accessor for Entity.ConfigurationCatalog();
  (*(*(v8 - 8) + 32))(a3, a1, v8);
  *(a3 + v7) = a2;
  type metadata accessor for Model3DLocation(0);
  result = swift_storeEnumTagMultiPayload();
  v10 = (a3 + *(v6 + 40));
  *v10 = closure #1 in Model3D.init<>(asset:);
  v10[1] = 0;
  return result;
}

uint64_t (*Model3D.init<A, B>(from:configurations:content:placeholder:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11))@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v28[0] = a7;
  v28[1] = a8;
  v28[2] = a10;
  v28[3] = a11;
  v17 = type metadata accessor for Model3DPlaceholderContent(255, v28);
  WitnessTable = swift_getWitnessTable();
  v20 = type metadata accessor for Model3D(0, v17, WitnessTable, v19);
  *(a9 + *(v20 + 36)) = 0;
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit6EntityC0A10FoundationE20ConfigurationCatalogV_SDyS2SGSg14configurationstMd, &_s10RealityKit6EntityC0A10FoundationE20ConfigurationCatalogV_SDyS2SGSg14configurationstMR) + 48);
  v22 = type metadata accessor for Entity.ConfigurationCatalog();
  (*(*(v22 - 8) + 32))(a9, a1, v22);
  *(a9 + v21) = a2;
  type metadata accessor for Model3DLocation(0);
  swift_storeEnumTagMultiPayload();
  result = swift_allocObject();
  *(result + 2) = a7;
  *(result + 3) = a8;
  *(result + 4) = a10;
  *(result + 5) = a11;
  *(result + 6) = a3;
  *(result + 7) = a4;
  *(result + 8) = a5;
  *(result + 9) = a6;
  v24 = (a9 + *(v20 + 40));
  *v24 = partial apply for closure #1 in Model3D.init<A, B>(from:configurations:content:placeholder:);
  v24[1] = result;
  return result;
}

uint64_t closure #1 in Model3D.init<A, B>(from:configurations:content:placeholder:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v11 = *(a1 + 64);
  if (v11 > 0x3F)
  {
    v16 = 0;
    v15 = 0;
    v14 = 0;
    v17 = 0;
    v18 = 0uLL;
    v19 = 0uLL;
  }

  else
  {
    v13 = *(a1 + 2);
    v12 = *(a1 + 3);
    v15 = a1[1];
    v14 = a1[2];
    v16 = *a1;
    v17 = v11 & 1;
    *(&v13 + 1) = a1[5];
    *(&v12 + 1) = a1[7];
    v21 = v12;
    v22 = v13;

    v19 = v21;
    v18 = v22;
  }

  *a6 = v16;
  *(a6 + 8) = v15;
  *(a6 + 16) = v14;
  *(a6 + 24) = 0;
  *(a6 + 32) = v18;
  *(a6 + 48) = v19;
  *(a6 + 64) = v17;
  *(a6 + 72) = a2;
  *(a6 + 80) = a3;
  *(a6 + 88) = a4;
  *(a6 + 96) = a5;
}

uint64_t objectdestroyTm_6()
{

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t Model3D.init(from:configurations:transaction:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v14 = type metadata accessor for Model3D(0, a6, a7, a4);
  v15 = *(v14 + 36);
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit6EntityC0A10FoundationE20ConfigurationCatalogV_SDyS2SGSg14configurationstMd, &_s10RealityKit6EntityC0A10FoundationE20ConfigurationCatalogV_SDyS2SGSg14configurationstMR) + 48);
  v17 = type metadata accessor for Entity.ConfigurationCatalog();
  (*(*(v17 - 8) + 32))(a8, a1, v17);
  *(a8 + v16) = a2;
  type metadata accessor for Model3DLocation(0);
  result = swift_storeEnumTagMultiPayload();
  *(a8 + v15) = a3;
  v19 = (a8 + *(v14 + 40));
  *v19 = a4;
  v19[1] = a5;
  return result;
}

uint64_t Model3DPlaceholderContent.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v4 = *(a1[3] - 8);
  v5 = MEMORY[0x28223BE20](a1);
  v7 = &v36[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v36[-v9];
  v11 = *(v8 + 16);
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v8);
  v15 = &v36[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v13);
  v17 = &v36[-v16];
  v44 = v18;
  v19 = type metadata accessor for _ConditionalContent();
  v46 = *(v19 - 8);
  v47 = v19;
  v20 = MEMORY[0x28223BE20](v19);
  v45 = &v36[-v21];
  v22 = *(v2 + 8);
  if (v22)
  {
    v23 = *(v2 + 72);
    v37 = *(v2 + 64);
    v24 = *(v2 + 16);
    v43 = *(v2 + 24);
    v25 = *(v2 + 32);
    v26 = *(v2 + 40);
    v40 = *v2;
    v41 = v25;
    v38 = v26;
    v27 = *(v2 + 56);
    v39 = *(v2 + 48);
    v42 = v27;
    v49[0] = v40;
    v49[1] = v22;
    v49[2] = v24;
    v49[4] = v25;
    v49[5] = v26;
    v49[6] = v39;
    v49[7] = v27;
    v50 = v37 & 1;

    v23(v49);
    v28 = a1[4];
    static ViewBuilder.buildExpression<A>(_:)();
    v29 = *(v12 + 8);
    v29(v15, v11);
    static ViewBuilder.buildExpression<A>(_:)();
    v30 = a1[5];
    v31 = v45;
    static ViewBuilder.buildEither<A, B>(first:)(v15, v11);
    outlined consume of ResolvedModel3D?(v40, v22);
    v29(v15, v11);
    v29(v17, v11);
  }

  else
  {
    (*(v2 + 88))(v20);
    v30 = a1[5];
    v32 = v44;
    static ViewBuilder.buildExpression<A>(_:)();
    v33 = *(v4 + 8);
    v33(v7, v32);
    static ViewBuilder.buildExpression<A>(_:)();
    v28 = a1[4];
    v31 = v45;
    static ViewBuilder.buildEither<A, B>(second:)(v7, v11, v32);
    v33(v7, v32);
    v33(v10, v32);
  }

  v51 = v28;
  v52 = v30;
  v34 = v47;
  swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)();
  return (*(v46 + 8))(v31, v34);
}

uint64_t outlined consume of ResolvedModel3D?(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t (*Model3D.init<A>(asset:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>))@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v19[0] = a4;
  v19[1] = MEMORY[0x277CE1428];
  v19[2] = a5;
  v19[3] = MEMORY[0x277CE1410];
  v12 = type metadata accessor for Model3DPlaceholderContent(255, v19);
  WitnessTable = swift_getWitnessTable();
  v15 = type metadata accessor for Model3D(0, v12, WitnessTable, v14);
  *(a6 + *(v15 + 36)) = 0;
  swift_getKeyPath();
  v19[0] = a1;
  lazy protocol witness table accessor for type Model3DAsset and conformance Model3DAsset();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v16 = OBJC_IVAR____TtC19_RealityKit_SwiftUI12Model3DAsset__location;
  swift_beginAccess();
  outlined init with copy of Model3DLocation(a1 + v16, a6);

  result = swift_allocObject();
  *(result + 2) = a4;
  *(result + 3) = a5;
  *(result + 4) = a2;
  *(result + 5) = a3;
  v18 = (a6 + *(v15 + 40));
  *v18 = partial apply for closure #1 in Model3D.init<A>(asset:content:);
  v18[1] = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type Model3DAsset and conformance Model3DAsset()
{
  result = lazy protocol witness table cache variable for type Model3DAsset and conformance Model3DAsset;
  if (!lazy protocol witness table cache variable for type Model3DAsset and conformance Model3DAsset)
  {
    type metadata accessor for Model3DAsset(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Model3DAsset and conformance Model3DAsset);
  }

  return result;
}

uint64_t closure #1 in Model3D.init<A>(asset:content:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *(a1 + 64);
  if (v7 > 0x3F)
  {
    v12 = 0;
    v11 = 0;
    v10 = 0;
    v13 = 0;
    v14 = 0uLL;
    v15 = 0uLL;
  }

  else
  {
    v9 = *(a1 + 2);
    v8 = *(a1 + 3);
    v11 = a1[1];
    v10 = a1[2];
    v12 = *a1;
    v13 = v7 & 1;
    *(&v9 + 1) = a1[5];
    *(&v8 + 1) = a1[7];
    v17 = v8;
    v18 = v9;

    v15 = v17;
    v14 = v18;
  }

  *a4 = v12;
  *(a4 + 8) = v11;
  *(a4 + 16) = v10;
  *(a4 + 24) = 0;
  *(a4 + 32) = v14;
  *(a4 + 48) = v15;
  *(a4 + 64) = v13;
  *(a4 + 72) = a2;
  *(a4 + 80) = a3;
  *(a4 + 88) = closure #1 in BoundingBoxRotateManipulator.requestAsyncModelLoad();
  *(a4 + 96) = 0;
}

uint64_t Model3D.init<>(asset:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19_RealityKit_SwiftUI7Model3DVyAA08ResolvedE1DVGMd, &_s19_RealityKit_SwiftUI7Model3DVyAA08ResolvedE1DVGMR);
  *(a2 + *(v4 + 36)) = 0;
  swift_getKeyPath();
  lazy protocol witness table accessor for type Model3DAsset and conformance Model3DAsset();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5 = OBJC_IVAR____TtC19_RealityKit_SwiftUI12Model3DAsset__location;
  swift_beginAccess();
  outlined init with copy of Model3DLocation(a1 + v5, a2);

  v7 = (a2 + *(v4 + 40));
  *v7 = closure #1 in Model3D.init<>(asset:);
  v7[1] = 0;
  return result;
}

void closure #1 in Model3D.init<>(from:configurations:)(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 64);
  if (v3 > 0x3F)
  {
    BoundingBox.init()();
    v6 = 0;
    v4 = 0;
    v7 = 0;
    v5 = 0xE000000000000000;
  }

  else
  {
    v5 = a1[1];
    v4 = a1[2];
    v6 = *a1;
    v11 = *(a1 + 2);
    v7 = v3 & 1;
    v10 = *(a1 + 3);

    v9 = v10;
    v8 = v11;
  }

  *a2 = v6;
  *(a2 + 8) = v5;
  *(a2 + 16) = v4;
  *(a2 + 32) = v8;
  *(a2 + 48) = v9;
  *(a2 + 64) = v7;
}

uint64_t get_enum_tag_for_layout_string_19_RealityKit_SwiftUI12Model3DPhaseO(uint64_t a1)
{
  v1 = *(a1 + 64);
  v2 = v1;
  v3 = v1 >> 6;
  if (v2 >= 0)
  {
    return v3;
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t getEnumTagSinglePayload for Model3DPhase(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double storeEnumTagSinglePayload for Model3DPhase(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 56) = 0;
    result = 0.0;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 64) = 0;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 65) = 1;
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
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      *(a1 + 24) = -a2;
      result = 0.0;
      *(a1 + 32) = 0u;
      *(a1 + 48) = 0u;
      *(a1 + 64) = 0;
      return result;
    }

    *(a1 + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t destructiveInjectEnumTag for Model3DPhase(uint64_t result, unsigned int a2)
{
  if (a2 < 2)
  {
    v2 = *(result + 64) & 1 | (a2 << 6);
    *(result + 24) = 0;
    *(result + 64) = v2;
  }

  else
  {
    *result = a2 - 2;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    *(result + 56) = 0;
    *(result + 64) = 0x80;
  }

  return result;
}

unint64_t type metadata completion function for Model3D(uint64_t a1)
{
  result = type metadata accessor for Model3DLocation(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for ()();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t type metadata instantiation function for Model3DPlaceholderContent(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_19_RealityKit_SwiftUI15ResolvedModel3DVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy104_16(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for Model3DPlaceholderContent(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 72);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for Model3DPlaceholderContent(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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
      *(result + 72) = (a2 - 1);
      return result;
    }

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t CameraFrustumRendererForLiveCamera.showCameraLocation.didset(uint64_t result)
{
  if (*(v1 + 16) == (result & 1))
  {
    return result;
  }

  v2 = v1;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, logger);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (!os_log_type_enabled(v4, v5))
  {

    if ((*(v2 + 16) & 1) == 0)
    {
      goto LABEL_6;
    }

LABEL_8:
    v7 = 1;
    goto LABEL_9;
  }

  v6 = swift_slowAlloc();
  *v6 = 67109120;
  *(v6 + 4) = *(v2 + 16);

  _os_log_impl(&dword_23B824000, v4, v5, "Set showCameraLocation to %{BOOL}d", v6, 8u);
  MEMORY[0x23EEB0B70](v6, -1, -1);

  if (*(v2 + 16))
  {
    goto LABEL_8;
  }

LABEL_6:
  *(v2 + 112) = 0;
  swift_unknownObjectRelease();
  v7 = *(v2 + 16);
LABEL_9:
  swift_beginAccess();
  outlined init with copy of Animation?(v2 + 128, v18);
  v8 = v19;
  if (v19)
  {
    outlined init with copy of Cancellable(v18, v16);
    outlined destroy of Animation?(v18);
    __swift_project_boxed_opaque_existential_1(v16, v17);
    v9 = RampAnimation.update(time:)(*(v2 + 120));
    __swift_destroy_boxed_opaque_existential_0Tm(v16);
  }

  else
  {
    outlined destroy of Animation?(v18);
    v9 = 0.0;
  }

  v10 = type metadata accessor for RampAnimation();
  result = swift_allocObject();
  *(result + 48) = 0;
  *(result + 56) = 0;
  *(result + 64) = 0xFFF0000000000000;
  *(result + 24) = v7 ^ 1;
  *(result + 16) = 0x3FE0000000000000;
  v11 = 0.0;
  if (!v7)
  {
    v11 = 1.0;
  }

  if (v8)
  {
    v11 = v9;
  }

  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 72) = v11;
  if (v11 < 0.0 || v11 > 1.0)
  {
    __break(1u);
  }

  else
  {
    v19 = v10;
    v20 = &protocol witness table for RampAnimation;
    v18[0] = result;
    swift_beginAccess();
    outlined assign with take of Animation?(v18, v2 + 128);
    swift_endAccess();
    outlined init with copy of Animation?(v2 + 128, v18);
    if (v19)
    {
      outlined init with copy of Cancellable(v18, v16);
      outlined destroy of Animation?(v18);
      v12 = __swift_project_boxed_opaque_existential_1(v16, v17);
      v13 = *(v2 + 120);
      v14 = *v12;
      v15 = v13 + *(*v12 + 16);
      *(v14 + 48) = v13;
      *(v14 + 56) = v15;
      return __swift_destroy_boxed_opaque_existential_0Tm(v16);
    }

    else
    {
      return outlined destroy of Animation?(v18);
    }
  }

  return result;
}

float CameraFrustumRendererForLiveCamera.setup(device:pixelFormat:cameraFrustumMeshDescriptor:)(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, logger);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_23B824000, v10, v11, "Setting up CameraFrustumRendererForLiveCamera!", v12, 2u);
    MEMORY[0x23EEB0B70](v12, -1, -1);
  }

  *(v5 + 32) = a1;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();

  CameraFrustumRenderer.setup(device:pixelFormat:cameraFrustumMeshDescriptor:)(a1, a2, a3);

  if (!v4)
  {
    result = COERCE_FLOAT(*(a3 + 44)) / sqrtf(vaddv_f32(vmul_f32(*(a3 + 44), *(a3 + 44))));
    *(v5 + 20) = result;
  }

  return result;
}

void CameraFrustumRendererForLiveCamera.render(into:desc:)(void *a1, void *a2)
{
  if (*(v2 + 24) > 0.0)
  {
    CameraFrustumRendererForLiveCamera.updatePoseMTLBuffer()();
    v5 = *(v2 + 112);
    if (v5)
    {
      v6 = *(v2 + 40);
      if (*(v6 + 176) > 0.001)
      {
        if (*(v6 + 24))
        {

          swift_unknownObjectRetain();
          v7 = [a2 colorAttachments];
          v8 = [v7 objectAtIndexedSubscript_];

          if (v8)
          {
            [v8 setLoadAction_];

            CameraFrustumRenderer.renderCone(into:desc:cameraPosesMTLBuffer:numCameraPoses:)(a1, a2, v5, 1);
            CameraFrustumRenderer.renderHollowCylinder(into:desc:cameraPosesMTLBuffer:numCameraPoses:)(a1, a2, v5, 1);
            CameraFrustumRenderer.renderSphere(into:desc:cameraPosesMTLBuffer:numCameraPoses:)(a1, a2, v5, 1);

            swift_unknownObjectRelease();
          }

          else
          {
            __break(1u);
          }
        }
      }
    }
  }
}

Swift::Void __swiftcall CameraFrustumRendererForLiveCamera.update(time:worldToView:viewToClip:cameraPose:)(Swift::Double time, simd_float4x4 *worldToView, simd_float4x4 *viewToClip, simd_float4x4 *cameraPose)
{
  v22 = v10;
  v23 = v11;
  v20 = v8;
  v21 = v9;
  v18 = v6;
  v19 = v7;
  v17 = v5;
  *(v4 + 120) = time;
  *(v4 + 48) = v30;
  *(v4 + 64) = v31;
  *(v4 + 80) = v32;
  *(v4 + 96) = v33;
  swift_beginAccess();
  outlined init with copy of Animation?(v4 + 128, &v24);
  if (*(&v25 + 1))
  {
    outlined init with take of Animation(&v24, v27);
    v13 = __swift_project_boxed_opaque_existential_1(v27, v28);
    if (*(*v13 + 56) >= *(*v13 + 64))
    {
      __swift_project_boxed_opaque_existential_1(v27, v28);
      v14 = RampAnimation.update(time:)(time);
    }

    else
    {
      v26 = 0;
      v24 = 0u;
      v25 = 0u;
      swift_beginAccess();
      outlined assign with take of Animation?(&v24, v4 + 128);
      swift_endAccess();
      v14 = 0.0;
      if (*(v4 + 16))
      {
        v14 = 1.0;
      }
    }

    *(v4 + 24) = v14;
    __swift_destroy_boxed_opaque_existential_0Tm(v27);
  }

  else
  {
    outlined destroy of Animation?(&v24);
  }

  v15 = *(v4 + 40);
  v16 = *(v4 + 24);
  *(v15 + 48) = v17;
  *(v15 + 64) = v18;
  *(v15 + 80) = v19;
  *(v15 + 96) = v20;
  *(v15 + 112) = v21;
  *(v15 + 128) = v22;
  *(v15 + 144) = v23;
  *(v15 + 160) = v29;
  *(v15 + 176) = v16;
}

void CameraFrustumRendererForLiveCamera.updatePoseMTLBuffer()()
{
  v1 = v0;
  v2 = *(v0 + 112);
  if (!v2)
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, logger);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_23B824000, v4, v5, "Creating MTLBuffer for the live camera...", v6, 2u);
      MEMORY[0x23EEB0B70](v6, -1, -1);
    }

    if (*(v1 + 32))
    {
      v7 = [swift_unknownObjectRetain() newBufferWithLength:64 options:1];
      if (v7)
      {
        v8 = v7;
        swift_unknownObjectRelease();
        *(v1 + 112) = v8;
        swift_unknownObjectRelease();
        v2 = *(v1 + 112);
        if (!v2)
        {
          return;
        }

        goto LABEL_9;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return;
  }

LABEL_9:
  v9 = [swift_unknownObjectRetain_n() contents];
  v10 = v2;
  v11 = *(v1 + 64);
  v12 = *(v1 + 80);
  v13 = *(v1 + 96);
  *v9 = *(v1 + 48);
  v9[1] = v11;
  v9[2] = v12;
  v9[3] = v13;

  swift_unknownObjectRelease();
}

uint64_t CameraFrustumRendererForLiveCamera.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  outlined destroy of Animation?(v0 + 128);

  return swift_deallocClassInstance();
}

uint64_t CameraFrustumRendererForLiveCamera.init()()
{
  *(v0 + 16) = 0;
  *(v0 + 20) = 1063105496;
  *(v0 + 32) = 0;
  type metadata accessor for CameraFrustumRenderer();
  v1 = swift_allocObject();
  v2 = MEMORY[0x277D860B8];
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0u;
  v3 = *v2;
  v4 = v2[1];
  v5 = v2[2];
  v6 = v2[3];
  *(v1 + 48) = *v2;
  *(v1 + 64) = v4;
  *(v1 + 80) = v5;
  *(v1 + 96) = v6;
  *(v1 + 112) = v3;
  *(v1 + 128) = v4;
  *(v1 + 144) = v5;
  *(v1 + 160) = v6;
  *(v1 + 176) = 0;
  *(v0 + 40) = v1;
  *(v0 + 48) = v3;
  *(v0 + 64) = v4;
  *(v0 + 80) = v5;
  *(v0 + 96) = v6;
  *(v0 + 112) = 0u;
  *(v0 + 128) = 0u;
  *(v0 + 144) = 0u;
  *(v0 + 160) = 0;
  return v0;
}

void specialized simd_float3x3.init(cgTransform:vectorType:)(float64x2_t *a1@<X0>, char a2@<W1>, int32x4_t *a3@<X8>)
{
  v4 = vcvt_f32_f64(*a1);
  v5 = vcvt_f32_f64(a1[1]);
  v6 = vcvt_f32_f64(a1[2]);
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5SIMD3VySfGGMd, &_ss23_ContiguousArrayStorageCys5SIMD3VySfGGMR);
    v7 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySfGMd, &_ss23_ContiguousArrayStorageCySfGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_23B91A6D0;
    *(inited + 32) = v4;
    *(inited + 40) = 0;
    _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(inited);
    v29 = v9;
    swift_setDeallocating();
    v7[2] = v29;
    v10 = swift_initStackObject();
    *(v10 + 16) = xmmword_23B91A6D0;
    *(v10 + 32) = v5;
    *(v10 + 40) = 0;
    _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(v10);
    v27 = v11;
    swift_setDeallocating();
    v7[3] = v27;
    v12 = swift_initStackObject();
    *(v12 + 16) = xmmword_23B91A6D0;
    *(v12 + 32) = v6;
    *(v12 + 40) = 1065353216;
    _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(v12);
    v25 = v13;
    swift_setDeallocating();
    v7[4] = v25;
    swift_setDeallocating();
    swift_deallocClassInstance();
    v14 = vzip1q_s32(v29, v25);
    v15 = vzip1q_s32(v27, 0);
    v16 = vzip1q_s32(v14, v15);
    v17 = vzip2q_s32(v14, v15);
    v18 = vzip2q_s32(v29, v27);
    v16.i32[2] = vdupq_lane_s32(*&v25, 0).i32[2];
    v17.i32[2] = vdupq_lane_s32(*&v25, 1).i32[2];
    v18.i32[2] = v25.i32[2];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySfGMd, &_ss23_ContiguousArrayStorageCySfGMR);
    v19 = swift_initStackObject();
    *(v19 + 16) = xmmword_23B91A6D0;
    *(v19 + 32) = v4;
    *(v19 + 40) = 0;
    _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(v19);
    v28 = v20;
    swift_setDeallocating();
    v21 = swift_initStackObject();
    *(v21 + 16) = xmmword_23B91A6D0;
    *(v21 + 32) = v5;
    *(v21 + 40) = 0;
    _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(v21);
    v26 = v22;
    swift_setDeallocating();
    v23 = swift_initStackObject();
    *(v23 + 16) = xmmword_23B91A6D0;
    *(v23 + 32) = v6;
    *(v23 + 40) = 1065353216;
    _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(v23);
    v30 = v24;
    swift_setDeallocating();
    v16 = v28;
    v18 = v30;
    v17 = v26;
  }

  *a3 = v16;
  a3[1] = v17;
  a3[2] = v18;
}

uint64_t ARViewContainer.init(model:cameraFeedOverlay:)@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  type metadata accessor for DataModel(0);
  _s19_RealityKit_SwiftUI9DataModelCAC7Combine16ObservableObjectAAWlTm_1(&lazy protocol witness table cache variable for type DataModel and conformance DataModel, type metadata accessor for DataModel, &protocol conformance descriptor for DataModel);
  *a5 = ObservedObject.init(wrappedValue:)();
  a5[1] = v9;
  v11 = type metadata accessor for ARViewContainer(0, a3, a4, v10);
  v12 = *(v11 + 36);
  *(a5 + v12) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA10ScenePhaseO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA10ScenePhaseO_GMR);
  swift_storeEnumTagMultiPayload();
  v13 = *(*(a3 - 8) + 32);
  v14 = a5 + *(v11 + 40);

  return v13(v14, a2, a3);
}

uint64_t ARViewContainer.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3@<X3>)
{
  v25 = a2;
  v3 = *(a1 + 16);
  v23 = *(a1 + 24);
  type metadata accessor for ARViewContainer.ARViewContainer(255, v3, v23, a3);
  type metadata accessor for UUID();
  swift_getWitnessTable();
  _s19_RealityKit_SwiftUI9DataModelCAC7Combine16ObservableObjectAAWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  type metadata accessor for IDView();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  v4 = type metadata accessor for ModifiedContent();
  v5 = type metadata accessor for ScenePhase();
  WitnessTable = swift_getWitnessTable();
  v36 = MEMORY[0x277CE06C0];
  v22 = MEMORY[0x277CDFAD8];
  v6 = swift_getWitnessTable();
  v7 = MEMORY[0x277CE0790];
  v33 = v6;
  v34 = MEMORY[0x277CE0790];
  v31 = swift_getWitnessTable();
  v32 = v7;
  v37 = v4;
  v38 = v5;
  v39 = swift_getWitnessTable();
  v40 = _s19_RealityKit_SwiftUI9DataModelCAC7Combine16ObservableObjectAAWlTm_1(&lazy protocol witness table cache variable for type ScenePhase and conformance ScenePhase, MEMORY[0x277CDD6C8], MEMORY[0x277CDD6D0]);
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4TextVAA23_SafeAreaIgnoringLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA4TextVAA23_SafeAreaIgnoringLayoutVGMR);
  type metadata accessor for _ConditionalContent();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  v8 = type metadata accessor for ZStack();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v22 - v10;
  v12 = type metadata accessor for ModifiedContent();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v22 - v17;
  v26 = v3;
  v27 = v23;
  v28 = v24;
  static Alignment.center.getter();
  ZStack.init(alignment:content:)();
  static Edge.Set.all.getter();
  v19 = swift_getWitnessTable();
  View.edgesIgnoringSafeArea(_:)();
  (*(v9 + 8))(v11, v8);
  v29 = v19;
  v30 = MEMORY[0x277CE06C0];
  swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)();
  v20 = *(v13 + 8);
  v20(v16, v12);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v20)(v18, v12);
}

uint64_t closure #1 in ARViewContainer.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v129 = a4;
  v130 = type metadata accessor for ModifiedContent();
  v126 = *(v130 - 8);
  v7 = MEMORY[0x28223BE20](v130);
  v128 = &v100 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v127 = &v100 - v9;
  v10 = type metadata accessor for ScenePhase();
  v119 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v118 = (&v100 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v140 = type metadata accessor for ARViewContainer(0, a2, a3, v12);
  v111 = *(v140 - 8);
  v133 = *(v111 + 64);
  MEMORY[0x28223BE20](v140);
  v131 = &v100 - v13;
  v14 = type metadata accessor for UUID();
  v121 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = (&v100 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v138 = a2;
  v139 = a3;
  v18 = type metadata accessor for ARViewContainer.ARViewContainer(255, a2, a3, v17);
  WitnessTable = swift_getWitnessTable();
  v20 = _s19_RealityKit_SwiftUI9DataModelCAC7Combine16ObservableObjectAAWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  v110 = v18;
  v149 = v18;
  v150 = v14;
  v120 = v14;
  v109 = WitnessTable;
  v151 = WitnessTable;
  v152 = v20;
  v106 = v20;
  v21 = type metadata accessor for IDView();
  v108 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v107 = &v100 - v22;
  v23 = type metadata accessor for ModifiedContent();
  v113 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v25 = &v100 - v24;
  v26 = type metadata accessor for ModifiedContent();
  v115 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v112 = &v100 - v27;
  v28 = type metadata accessor for ModifiedContent();
  v117 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v132 = &v100 - v29;
  v103 = swift_getWitnessTable();
  v158 = v103;
  v159 = MEMORY[0x277CE06C0];
  v114 = v23;
  v30 = swift_getWitnessTable();
  v31 = MEMORY[0x277CE0790];
  v104 = v30;
  v156 = v30;
  v157 = MEMORY[0x277CE0790];
  v116 = v26;
  v105 = swift_getWitnessTable();
  v154 = v105;
  v155 = v31;
  v32 = swift_getWitnessTable();
  v33 = _s19_RealityKit_SwiftUI9DataModelCAC7Combine16ObservableObjectAAWlTm_1(&lazy protocol witness table cache variable for type ScenePhase and conformance ScenePhase, MEMORY[0x277CDD6C8], MEMORY[0x277CDD6D0]);
  v136 = v28;
  v149 = v28;
  v150 = v10;
  v137 = v10;
  v135 = v32;
  v151 = v32;
  v152 = v33;
  v134 = v33;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v35 = *(OpaqueTypeMetadata2 - 8);
  v36 = MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v38 = &v100 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v40 = &v100 - v39;
  v122 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4TextVAA23_SafeAreaIgnoringLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA4TextVAA23_SafeAreaIgnoringLayoutVGMR);
  v125 = type metadata accessor for _ConditionalContent();
  v124 = *(v125 - 8);
  v41 = MEMORY[0x28223BE20](v125);
  v123 = &v100 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41);
  v141 = &v100 - v43;
  if (*(*(a1 + 8) + 16))
  {
    type metadata accessor for DataModel(0);
    v102 = v40;
    _s19_RealityKit_SwiftUI9DataModelCAC7Combine16ObservableObjectAAWlTm_1(&lazy protocol witness table cache variable for type DataModel and conformance DataModel, type metadata accessor for DataModel, &protocol conformance descriptor for DataModel);
    v101 = v38;

    v149 = ObservedObject.init(wrappedValue:)();
    v150 = v44;
    swift_getKeyPath();
    swift_getKeyPath();
    v100 = a1;

    static Published.subscript.getter(v16);

    v45 = v107;
    v110 = v35;
    v46 = v120;
    View.id<A>(_:)();
    (*(v121 + 8))(v16, v46);

    static Edge.Set.all.getter();
    View.edgesIgnoringSafeArea(_:)();
    (*(v108 + 8))(v45, v21);
    v47 = v111;
    v121 = *(v111 + 16);
    v48 = v131;
    v49 = v140;
    (v121)(v131, a1, v140);
    v50 = (*(v47 + 80) + 32) & ~*(v47 + 80);
    v109 = OpaqueTypeMetadata2;
    v51 = swift_allocObject();
    v52 = v139;
    *(v51 + 16) = v138;
    *(v51 + 24) = v52;
    v120 = *(v47 + 32);
    v120(v51 + v50, v48, v49);
    v53 = v112;
    v54 = v114;
    View.onAppear(perform:)();

    (*(v113 + 8))(v25, v54);
    v55 = v48;
    v56 = v48;
    v57 = v100;
    v58 = v140;
    (v121)(v56, v100, v140);
    v59 = swift_allocObject();
    v60 = v139;
    *(v59 + 16) = v138;
    *(v59 + 24) = v60;
    v120(v59 + v50, v55, v58);
    v61 = v116;
    View.onDisappear(perform:)();

    v62 = v53;
    v63 = v57;
    (*(v115 + 8))(v62, v61);
    v64 = v140;
    v65 = v118;
    specialized Environment.wrappedValue.getter(v118);
    v66 = v131;
    (v121)(v131, v63, v64);
    v67 = swift_allocObject();
    *(v67 + 16) = v138;
    *(v67 + 24) = v60;
    v120(v67 + v50, v66, v64);
    v68 = v101;
    v69 = v136;
    v70 = v137;
    v71 = v135;
    v72 = v134;
    v73 = v132;
    View.onChange<A>(of:initial:_:)();

    (*(v119 + 8))(v65, v70);
    (*(v117 + 8))(v73, v69);
    v149 = v69;
    v150 = v70;
    v151 = v71;
    v152 = v72;
    swift_getOpaqueTypeConformance2();
    v74 = v102;
    v75 = v68;
    v76 = v109;
    static ViewBuilder.buildExpression<A>(_:)();
    v77 = *(v110 + 8);
    v77(v75, v76);
    static ViewBuilder.buildExpression<A>(_:)();
    lazy protocol witness table accessor for type ModifiedContent<Text, _SafeAreaIgnoringLayout> and conformance <> ModifiedContent<A, B>();
    static ViewBuilder.buildEither<A, B>(first:)(v75, v76);
    v77(v75, v76);
    v77(v74, v76);
  }

  else
  {
    LocalizedStringKey.init(stringLiteral:)();
    v79 = Text.init(_:tableName:bundle:comment:)();
    v81 = v80;
    v83 = v82;
    v85 = v84;
    v86 = static Edge.Set.all.getter();
    v149 = v79;
    v150 = v81;
    v83 &= 1u;
    LOBYTE(v151) = v83;
    v152 = v85;
    v153 = v86;
    v145 = v136;
    v146 = v137;
    v147 = v135;
    v148 = v134;
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type ModifiedContent<Text, _SafeAreaIgnoringLayout> and conformance <> ModifiedContent<A, B>();
    static ViewBuilder.buildEither<A, B>(second:)(&v149, OpaqueTypeMetadata2, v122);
    outlined consume of Text.Storage(v79, v81, v83);
  }

  v78 = v139;
  v87 = v128;
  View.allowsHitTesting(_:)();
  v144[2] = v78;
  v144[3] = MEMORY[0x277CE0770];
  v88 = v130;
  v89 = swift_getWitnessTable();
  v90 = v127;
  static ViewBuilder.buildExpression<A>(_:)();
  v91 = v126;
  v92 = *(v126 + 8);
  v92(v87, v88);
  v93 = v124;
  v94 = v123;
  v95 = v125;
  (*(v124 + 16))(v123, v141, v125);
  v145 = v94;
  (*(v91 + 16))(v87, v90, v88);
  v146 = v87;
  v144[0] = v95;
  v144[1] = v88;
  v149 = v136;
  v150 = v137;
  v151 = v135;
  v152 = v134;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v97 = lazy protocol witness table accessor for type ModifiedContent<Text, _SafeAreaIgnoringLayout> and conformance <> ModifiedContent<A, B>();
  v142 = OpaqueTypeConformance2;
  v143 = v97;
  v149 = swift_getWitnessTable();
  v150 = v89;
  static ViewBuilder.buildBlock<each A>(_:)(&v145, 2uLL, v144);
  v92(v90, v88);
  v98 = *(v93 + 8);
  v98(v141, v95);
  v92(v87, v88);
  return (v98)(v94, v95);
}

uint64_t closure #1 in closure #1 in ARViewContainer.body.getter(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4, void (*a5)(uint64_t))
{
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, logger);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_23B824000, v8, v9, a4, v10, 2u);
    MEMORY[0x23EEB0B70](v10, -1, -1);
  }

  a5(v11);
}

uint64_t closure #3 in closure #1 in ARViewContainer.body.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26 = a3;
  v3 = type metadata accessor for ScenePhase();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v4 + 104);
  HIDWORD(v25) = *MEMORY[0x277CDD6B8];
  v7(v6);
  v8 = static ScenePhase.== infix(_:_:)();
  v9 = *(v4 + 8);
  v9(v6, v3);
  v10 = *MEMORY[0x277CDD6C0];
  if (v8)
  {
    (v7)(v6, *MEMORY[0x277CDD6C0], v3);
    v11 = static ScenePhase.== infix(_:_:)();
    v9(v6, v3);
    if (v11 & 1) != 0 || ((v7)(v6, *MEMORY[0x277CDD6B0], v3), v12 = static ScenePhase.== infix(_:_:)(), v9(v6, v3), (v12))
    {
      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      v13 = type metadata accessor for Logger();
      __swift_project_value_buffer(v13, logger);
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&dword_23B824000, v14, v15, "App changing to a background state... notifying the session to pause capture!", v16, 2u);
        MEMORY[0x23EEB0B70](v16, -1, -1);
      }

      DataModel.prepareForBackground()();
    }
  }

  (v7)(v6, v10, v3);
  v17 = static ScenePhase.== infix(_:_:)();
  v9(v6, v3);
  if (v17 & 1) != 0 || ((v7)(v6, *MEMORY[0x277CDD6B0], v3), v18 = static ScenePhase.== infix(_:_:)(), result = (v9)(v6, v3), (v18))
  {
    (v7)(v6, HIDWORD(v25), v3);
    v20 = static ScenePhase.== infix(_:_:)();
    result = (v9)(v6, v3);
    if (v20)
    {
      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      v21 = type metadata accessor for Logger();
      __swift_project_value_buffer(v21, logger);
      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&dword_23B824000, v22, v23, "App returning from a background state... notifying the session to resume capture!", v24, 2u);
        MEMORY[0x23EEB0B70](v24, -1, -1);
      }

      DataModel.resumeFromBackground()();
    }
  }

  return result;
}

uint64_t ARViewContainer.ARViewContainer.ensureWorldAnchorExists()(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Scene.AnchorCollection();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v19[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v5);
  v10 = &v19[-1] - v9;
  v11 = *(a2 + 16);
  if (!v11)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    return result;
  }

  v12 = v11;
  dispatch thunk of ARView.scene.getter();

  dispatch thunk of Scene.anchors.getter();

  _s19_RealityKit_SwiftUI9DataModelCAC7Combine16ObservableObjectAAWlTm_1(&lazy protocol witness table cache variable for type Scene.AnchorCollection and conformance Scene.AnchorCollection, MEMORY[0x277CDB0C0], MEMORY[0x277CDB0D0]);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  if (v19[4] == v19[0])
  {
    v13 = *(v4 + 8);
    v13(v10, v3);
    type metadata accessor for AnchorEntity();
    v14 = _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #0 of ARViewContainer.ARViewContainer.ensureWorldAnchorExists());
    MEMORY[0x23EEAC670](v14);
    v15 = *(a2 + 16);
    v16 = v15;

    if (v15)
    {
      dispatch thunk of ARView.scene.getter();

      dispatch thunk of Scene.anchors.getter();

      Scene.AnchorCollection.append(_:)();

      return (v13)(v7, v3);
    }

    goto LABEL_8;
  }

  v17 = dispatch thunk of Collection.subscript.read();

  v17(v19, 0);
  (*(v4 + 8))(v10, v3);
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance ARViewContainer<A>.ARViewContainer(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28212E3C8](a1, a2, a3, WitnessTable);
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance ARViewContainer<A>.ARViewContainer(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28212E358](a1, a2, a3, WitnessTable);
}

void protocol witness for View.body.getter in conformance ARViewContainer<A>.ARViewContainer(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getWitnessTable();
  UIViewRepresentable.body.getter();
  __break(1u);
}

uint64_t key path setter for EnvironmentValues.scenePhase : EnvironmentValues(uint64_t a1)
{
  v2 = type metadata accessor for ScenePhase();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return EnvironmentValues.scenePhase.setter();
}

void type metadata completion function for ARViewContainer(uint64_t a1)
{
  type metadata accessor for ObservedObject<DataModel>(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Environment<ScenePhase>(319);
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

uint64_t getEnumTagSinglePayload for ARViewContainer(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(type metadata accessor for ScenePhase() - 8);
  if (*(v6 + 64) <= 8uLL)
  {
    v7 = 8;
  }

  else
  {
    v7 = *(v6 + 64);
  }

  v8 = *(*(a3 + 16) - 8);
  v9 = *(v8 + 84);
  v10 = *(v6 + 80);
  v11 = *(v8 + 80);
  if (v9 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  else
  {
    v12 = *(v8 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v13 = v10 & 0xF8;
  v14 = v13 | 7;
  v15 = v7 + v11 + 1;
  if (a2 <= v12)
  {
    goto LABEL_31;
  }

  v16 = ((v15 + ((v13 + 23) & ~v14)) & ~v11) + *(v8 + 64);
  v17 = 8 * v16;
  if (v16 <= 3)
  {
    v20 = ((a2 - v12 + ~(-1 << v17)) >> v17) + 1;
    if (HIWORD(v20))
    {
      v18 = *(a1 + v16);
      if (!v18)
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v20 > 0xFF)
    {
      v18 = *(a1 + v16);
      if (!*(a1 + v16))
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v20 < 2)
    {
LABEL_31:
      if ((v9 & 0x80000000) != 0)
      {
        v25 = *(v8 + 48);

        return v25((v15 + ((a1 + v14 + 16) & ~v14)) & ~v11);
      }

      else
      {
        v24 = *(a1 + 1);
        if (v24 >= 0xFFFFFFFF)
        {
          LODWORD(v24) = -1;
        }

        return (v24 + 1);
      }
    }
  }

  v18 = *(a1 + v16);
  if (!*(a1 + v16))
  {
    goto LABEL_31;
  }

LABEL_18:
  v21 = (v18 - 1) << v17;
  if (v16 > 3)
  {
    v21 = 0;
  }

  if (v16)
  {
    if (v16 <= 3)
    {
      v22 = v16;
    }

    else
    {
      v22 = 4;
    }

    if (v22 > 2)
    {
      if (v22 == 3)
      {
        v23 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v23 = *a1;
      }
    }

    else if (v22 == 1)
    {
      v23 = *a1;
    }

    else
    {
      v23 = *a1;
    }
  }

  else
  {
    v23 = 0;
  }

  return v12 + (v23 | v21) + 1;
}

void storeEnumTagSinglePayload for ARViewContainer(_WORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(type metadata accessor for ScenePhase() - 8);
  v9 = 8;
  if (*(v8 + 64) > 8uLL)
  {
    v9 = *(v8 + 64);
  }

  v10 = *(*(a4 + 16) - 8);
  v11 = *(v10 + 84);
  v12 = *(v8 + 80);
  v13 = *(v10 + 80);
  if (v11 <= 0x7FFFFFFF)
  {
    v14 = 0x7FFFFFFF;
  }

  else
  {
    v14 = *(v10 + 84);
  }

  v15 = v12 & 0xF8;
  v16 = v15 | 7;
  v17 = v9 + v13 + 1;
  v18 = ((v17 + ((v15 + 23) & ~(v15 | 7))) & ~v13) + *(v10 + 64);
  if (a3 <= v14)
  {
    v19 = 0;
  }

  else if (v18 <= 3)
  {
    v22 = ((a3 - v14 + ~(-1 << (8 * v18))) >> (8 * v18)) + 1;
    if (HIWORD(v22))
    {
      v19 = 4;
    }

    else
    {
      if (v22 < 0x100)
      {
        v23 = 1;
      }

      else
      {
        v23 = 2;
      }

      if (v22 >= 2)
      {
        v19 = v23;
      }

      else
      {
        v19 = 0;
      }
    }
  }

  else
  {
    v19 = 1;
  }

  if (v14 < a2)
  {
    v20 = ~v14 + a2;
    if (v18 < 4)
    {
      v21 = (v20 >> (8 * v18)) + 1;
      if (v18)
      {
        v24 = v20 & ~(-1 << (8 * v18));
        bzero(a1, v18);
        if (v18 != 3)
        {
          if (v18 == 2)
          {
            *a1 = v24;
            if (v19 > 1)
            {
LABEL_48:
              if (v19 == 2)
              {
                *(a1 + v18) = v21;
              }

              else
              {
                *(a1 + v18) = v21;
              }

              return;
            }
          }

          else
          {
            *a1 = v20;
            if (v19 > 1)
            {
              goto LABEL_48;
            }
          }

          goto LABEL_45;
        }

        *a1 = v24;
        *(a1 + 2) = BYTE2(v24);
      }

      if (v19 > 1)
      {
        goto LABEL_48;
      }
    }

    else
    {
      bzero(a1, v18);
      *a1 = v20;
      v21 = 1;
      if (v19 > 1)
      {
        goto LABEL_48;
      }
    }

LABEL_45:
    if (v19)
    {
      *(a1 + v18) = v21;
    }

    return;
  }

  if (v19 > 1)
  {
    if (v19 != 2)
    {
      *(a1 + v18) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_33;
    }

    *(a1 + v18) = 0;
  }

  else if (v19)
  {
    *(a1 + v18) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_33;
  }

  if (!a2)
  {
    return;
  }

LABEL_33:
  if ((v11 & 0x80000000) != 0)
  {
    v25 = *(v10 + 56);

    v25((v17 + ((a1 + v16 + 16) & ~v16)) & ~v13, a2);
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *a1 = a2 & 0x7FFFFFFF;
    *(a1 + 1) = 0;
  }

  else
  {
    *(a1 + 1) = (a2 - 1);
  }
}

void type metadata accessor for Environment<ScenePhase>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Environment<ScenePhase>)
  {
    type metadata accessor for ScenePhase();
    v1 = type metadata accessor for Environment();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Environment<ScenePhase>);
    }
  }
}

uint64_t partial apply for closure #1 in closure #1 in ARViewContainer.body.getter(const char *a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4)
{
  v7 = *(v4 + 16);
  v8 = *(v4 + 24);
  v9 = *(type metadata accessor for ARViewContainer(0, v7, v8, a4) - 8);
  return closure #1 in closure #1 in ARViewContainer.body.getter(v4 + ((*(v9 + 80) + 32) & ~*(v9 + 80)), v7, v8, a1, a2);
}

uint64_t objectdestroyTm_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = type metadata accessor for ARViewContainer(0, v5, *(v4 + 24), a4);
  v7 = *(*(v6 - 8) + 80);
  v8 = (v7 + 32) & ~v7;
  v9 = *(*(v6 - 8) + 64);
  v10 = v4 + v8;

  v11 = *(v6 + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA10ScenePhaseO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA10ScenePhaseO_GMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = type metadata accessor for ScenePhase();
    (*(*(v12 - 8) + 8))(v10 + v11, v12);
  }

  else
  {
  }

  (*(*(v5 - 8) + 8))(v10 + *(v6 + 40), v5);

  return MEMORY[0x2821FE8E8](v4, v8 + v9, v7 | 7);
}

uint64_t partial apply for closure #3 in closure #1 in ARViewContainer.body.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(type metadata accessor for ARViewContainer(0, *(v4 + 16), *(v4 + 24), a4) - 8);
  v8 = v4 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  return closure #3 in closure #1 in ARViewContainer.body.getter(a1, a2, v8);
}

uint64_t type metadata instantiation function for ARViewContainer.ARViewContainer(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

id specialized ARViewContainer.ARViewContainer.makeUIView(context:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    if (one-time initialization token for logger != -1)
    {
      goto LABEL_11;
    }

    while (1)
    {
      v20 = type metadata accessor for Logger();
      __swift_project_value_buffer(v20, logger);
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&dword_23B824000, v21, v22, "Trying to make an ARViewContainer for a deinitialized ObjectCaptureSession!", v23, 2u);
        MEMORY[0x23EEB0B70](v23, -1, -1);
      }

      __break(1u);
LABEL_11:
      swift_once();
    }
  }

  v3 = a2;
  v5 = one-time initialization token for logger;
  v6 = v2;
  if (v5 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, logger);
  v8 = v6;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v27 = v24;
    *v11 = 136315138;
    v12 = v8;
    v25 = v8;
    v13 = [v12 description];
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = a1;
    v15 = v3;
    v17 = v16;

    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v17, &v27);
    v3 = v15;
    a1 = v26;

    *(v11 + 4) = v18;
    v8 = v25;
    _os_log_impl(&dword_23B824000, v9, v10, "Got arView: %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v24);
    MEMORY[0x23EEB0B70](v24, -1, -1);
    MEMORY[0x23EEB0B70](v11, -1, -1);
  }

  ARViewContainer.ARViewContainer.ensureWorldAnchorExists()(a1, v3);
  return v8;
}

uint64_t _s19_RealityKit_SwiftUI9DataModelCAC7Combine16ObservableObjectAAWlTm_1(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void one-time initialization function for captureSoundModuleType()
{
  v0 = specialized static ExperimentSettings.loadCaptureSoundModuleType(default:)(0x6B6143726579616CLL, 0xE900000000000065);
  v2 = v1;
  v3._countAndFlagsBits = v0;
  v3._object = v2;
  v4 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of CaptureSoundModuleType.init(rawValue:), v3);

  captureSoundModuleType = v4 != 0;
}

uint64_t createCaptureSoundModule()@<X0>(uint64_t *a1@<X8>)
{
  if (one-time initialization token for captureSoundModuleType != -1)
  {
    swift_once();
  }

  if (captureSoundModuleType)
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, logger);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_23B824000, v3, v4, "Using layered sound module.", v5, 2u);
      MEMORY[0x23EEB0B70](v5, -1, -1);
    }

    v6 = type metadata accessor for LayerCakeCaptureSoundModule();
    result = swift_allocObject();
    v8 = MEMORY[0x277D84F90];
    *(result + 16) = 0;
    *(result + 24) = v8;
    *(result + 32) = v8;
    *(result + 40) = 0u;
    *(result + 56) = 0u;
    *(result + 72) = v8;
    *(result + 80) = 1048576000;
    *(result + 88) = 0x3FD3333333333333;
    *(result + 96) = &outlined read-only object #0 of LayerCakeCaptureSoundModule.init();
    *(result + 104) = 0xFFF0000000000000;
    v9 = &protocol witness table for LayerCakeCaptureSoundModule;
  }

  else
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, logger);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_23B824000, v11, v12, "Using filter stack sound module.", v13, 2u);
      MEMORY[0x23EEB0B70](v13, -1, -1);
    }

    v6 = type metadata accessor for FilterPipeCaptureSoundModule();
    result = swift_allocObject();
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *(result + 48) = 0;
    *(result + 56) = 5;
    *(result + 64) = 16843009;
    *(result + 68) = xmmword_23B923160;
    *(result + 84) = 1150681088;
    *(result + 88) = 0u;
    *(result + 104) = 0u;
    *(result + 120) = 1048576000;
    v9 = &protocol witness table for FilterPipeCaptureSoundModule;
  }

  a1[3] = v6;
  a1[4] = v9;
  *a1 = result;
  return result;
}

uint64_t one-time initialization function for isSoundEnabled()
{
  result = specialized static ExperimentSettings.loadIsSoundEnabled(default:)(1u);
  static SoundManager.isSoundEnabled = result & 1;
  return result;
}

void *one-time initialization function for instance()
{
  createCaptureSoundModule()(v1);
  type metadata accessor for SoundManager();
  swift_allocObject();
  result = SoundManager.init(module:)(v1);
  static SoundManager.instance = result;
  return result;
}

void *SoundManager.init(module:)(void *a1)
{
  v17 = a1;
  v16 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v3 = v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OS_dispatch_queue.Attributes();
  MEMORY[0x28223BE20](v4);
  v5 = type metadata accessor for DispatchQoS();
  MEMORY[0x28223BE20](v5 - 8);
  v15[1] = type metadata accessor for OS_dispatch_queue();
  v18 = 0xD000000000000022;
  v19 = 0x800000023B924740;
  MEMORY[0x23EEAF590](0xD000000000000018, 0x800000023B929B90);
  v15[0] = v19;
  static DispatchQoS.userInteractive.getter();
  v18 = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  v6 = v15[2];
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v1 + 104))(v3, *MEMORY[0x277D85260], v16);
  *(v6 + 16) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v6 + 24) = 0;
  *(v6 + 72) = 0;
  *(v6 + 80) = 0;
  if (one-time initialization token for isSoundEnabled != -1)
  {
    swift_once();
  }

  if (static SoundManager.isSoundEnabled != 1)
  {
    v7 = v17;
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, logger);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_23B824000, v11, v12, "Sound is not enabled...  not creating the SoundManager singleton!", v13, 2u);
      MEMORY[0x23EEB0B70](v13, -1, -1);
    }

    type metadata accessor for SoundManager();
    swift_deallocPartialClassInstance();
    v6 = 0;
    goto LABEL_12;
  }

  v7 = v17;
  outlined init with copy of Cancellable(v17, v6 + 32);
  v8 = v7[3];
  v9 = v7[4];
  __swift_project_boxed_opaque_existential_1(v7, v8);
  (*(v9 + 8))(v8, v9);
  SoundManager.initializeAudioEngine()();
  result = *(v6 + 72);
  if (result)
  {
    [result prepare];
    *(v6 + 24) = 4;
LABEL_12:
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    return v6;
  }

  __break(1u);
  return result;
}

void SoundManager.initializeAudioEngine()()
{
  v1 = v0;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, logger);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_23B824000, v3, v4, "Initializing audio engine...", v5, 2u);
    MEMORY[0x23EEB0B70](v5, -1, -1);
  }

  v6 = [objc_allocWithZone(MEMORY[0x277CB8388]) init];
  v7 = *(v1 + 72);
  *(v1 + 72) = v6;
  v8 = v6;

  if (!v8)
  {
    __break(1u);
    goto LABEL_10;
  }

  v9 = [v8 mainMixerNode];

  v10 = *(v1 + 80);
  *(v1 + 80) = v9;

  outlined init with copy of Cancellable(v1 + 32, v16);
  v11 = v16[4];
  __swift_project_boxed_opaque_existential_1(v16, v16[3]);
  v12 = *(v1 + 72);
  if (!v12)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v13 = *(v11 + 16);
  v14 = v12;
  v13();

  __swift_destroy_boxed_opaque_existential_0Tm(v16);
  v15 = *(v1 + 72);
  if (v15)
  {
    [v15 setAutoShutdownEnabled_];
    return;
  }

LABEL_11:
  __break(1u);
}

uint64_t SoundManager.__deallocating_deinit()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver_];

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 32));

  return swift_deallocClassInstance();
}

void SoundManager.startEngineIfNeeded()()
{
  v1 = v0;
  v31[2] = *MEMORY[0x277D85DE8];
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v31[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v1 + 16);
  *v5 = v6;
  (*(v3 + 104))(v5, *MEMORY[0x277D85200], v2);
  v7 = v6;
  LOBYTE(v6) = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v5, v2);
  if ((v6 & 1) == 0)
  {
    __break(1u);
LABEL_17:
    swift_once();
    goto LABEL_5;
  }

  v8 = *(v1 + 72);
  if (!v8)
  {
    __break(1u);
  }

  if ([v8 isRunning])
  {
    return;
  }

  if (one-time initialization token for logger != -1)
  {
    goto LABEL_17;
  }

LABEL_5:
  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, logger);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_23B824000, v10, v11, "Starting audio engine...", v12, 2u);
    MEMORY[0x23EEB0B70](v12, -1, -1);
  }

  specialized SoundManager.setupAudioCategory()();
  v13 = *(v1 + 72);
  if (v13)
  {
    v31[0] = 0;
    v14 = [v13 startAndReturnError_];
    v15 = v31[0];
    if (v14)
    {
      *(v1 + 24) = 1;
      v16 = objc_opt_self();
      v17 = v15;
      v18 = [v16 defaultCenter];
      [v18 addObserver:v1 selector:sel_handleEngineConfigChange_ name:*MEMORY[0x277CB8008] object:0];

      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&dword_23B824000, v19, v20, "... done starting audio engine.", v21, 2u);
        MEMORY[0x23EEB0B70](v21, -1, -1);
      }

      goto LABEL_13;
    }

    v22 = v31[0];
    v23 = _convertNSErrorToError(_:)();

    swift_willThrow();
    v24 = v23;
    v19 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v19, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *v26 = 138543362;
      v28 = v23;
      v29 = _swift_stdlib_bridgeErrorToNSError();
      *(v26 + 4) = v29;
      *v27 = v29;
      _os_log_impl(&dword_23B824000, v19, v25, "Can't start audio engine!  error=%{public}@", v26, 0xCu);
      outlined destroy of NSObject?(v27);
      MEMORY[0x23EEB0B70](v27, -1, -1);
      MEMORY[0x23EEB0B70](v26, -1, -1);

LABEL_13:
      return;
    }
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall SoundManager.start()()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v11 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v4 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v0 + 16);
  v7 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = partial apply for closure #1 in SoundManager.start();
  aBlock[5] = v7;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_165;
  v8 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v12 = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x23EEAF960](0, v6, v3, v8);
  _Block_release(v8);
  (*(v11 + 8))(v3, v1);
  (*(v4 + 8))(v6, v10);
}

uint64_t closure #1 in SoundManager.start()(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    SoundManager.startEngineIfNeeded()();
  }

  return result;
}

id SoundManager.pauseEngine()()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = (&v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = *(v0 + 16);
  *v4 = v5;
  (*(v2 + 104))(v4, *MEMORY[0x277D85200], v1);
  v6 = v5;
  LOBYTE(v5) = _dispatchPreconditionTest(_:)();
  result = (*(v2 + 8))(v4, v1);
  if ((v5 & 1) == 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  result = *(v0 + 72);
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  result = [result isRunning];
  if (!result)
  {
LABEL_6:
    *(v0 + 24) = 3;
    return result;
  }

  result = *(v0 + 72);
  if (result)
  {
    result = [result pause];
    goto LABEL_6;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t closure #1 in SoundManager.requestStandby(after:)(uint64_t a1, double a2)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v34 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for DispatchTime();
  v9 = *(v33 - 8);
  v10 = MEMORY[0x28223BE20](v33);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v26 - v13;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v16 = result;
    v29 = v6;
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v28 = v8;
    v30 = v5;
    v31 = v3;
    v32 = v2;
    v17 = type metadata accessor for Logger();
    __swift_project_value_buffer(v17, logger);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_23B824000, v18, v19, "requestStop()...", v20, 2u);
      MEMORY[0x23EEB0B70](v20, -1, -1);
    }

    *(v16 + 24) = 2;
    v26 = *(v16 + 16);
    static DispatchTime.now()();
    + infix(_:_:)();
    v27 = *(v9 + 8);
    v21 = v33;
    v27(v12, v33);
    aBlock[4] = partial apply for closure #1 in closure #1 in SoundManager.requestStandby(after:);
    aBlock[5] = v16;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    aBlock[3] = &block_descriptor_161;
    v22 = _Block_copy(aBlock);

    v23 = v28;
    static DispatchQoS.unspecified.getter();
    v35 = MEMORY[0x277D84F90];
    lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    v24 = v34;
    v25 = v32;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x23EEAF910](v14, v23, v24, v22);
    _Block_release(v22);
    (*(v31 + 8))(v24, v25);
    (*(v29 + 8))(v23, v30);
    v27(v14, v21);
  }

  return result;
}

void closure #1 in closure #1 in SoundManager.requestStandby(after:)(uint64_t a1)
{
  if (*(a1 + 24) == 2)
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    __swift_project_value_buffer(v1, logger);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_23B824000, v2, v3, "... requested standby reached, entering standby.", v4, 2u);
      MEMORY[0x23EEB0B70](v4, -1, -1);
    }

    SoundManager.pauseEngine()();
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
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_23B824000, oslog, v6, "... the requested standby was ignored since the request was overridden.", v7, 2u);
      MEMORY[0x23EEB0B70](v7, -1, -1);
    }
  }
}

uint64_t SoundManager.requestStandby(after:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v20 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DispatchQoS();
  v11 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v4 + 16);
  v14 = swift_allocObject();
  swift_weakInit();
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  *(v15 + 24) = a4;
  aBlock[4] = a2;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = a3;
  v16 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v21 = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x23EEAF960](0, v13, v10, v16);
  _Block_release(v16);
  (*(v20 + 8))(v10, v8);
  (*(v11 + 8))(v13, v19);
}

uint64_t closure #1 in SoundManager.update(t:)(uint64_t a1, double a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    outlined init with copy of Cancellable(result + 32, v6);

    v4 = v7;
    v5 = v8;
    __swift_project_boxed_opaque_existential_1(v6, v7);
    (*(v5 + 64))(v4, v5, a2);
    return __swift_destroy_boxed_opaque_existential_0Tm(v6);
  }

  return result;
}

void closure #1 in SoundManager.startLoop(playStartSound:)(uint64_t a1, char a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, logger);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 67240192;
      *(v8 + 4) = a2 & 1;
      _os_log_impl(&dword_23B824000, v6, v7, "Starting the loop sound...  playStartSound=%{BOOL,public}d", v8, 8u);
      MEMORY[0x23EEB0B70](v8, -1, -1);
    }

    SoundManager.startEngineIfNeeded()();
    v9 = v4[9];
    if (v9)
    {
      if ([v9 isRunning])
      {
        v10 = v4[7];
        v11 = v4[8];
        __swift_project_boxed_opaque_existential_1(v4 + 4, v10);
        (*(v11 + 24))(a2 & 1, v10, v11);
      }

      else
      {
        v12 = Logger.logObject.getter();
        v13 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v12, v13))
        {
          v14 = swift_slowAlloc();
          *v14 = 0;
          _os_log_impl(&dword_23B824000, v12, v13, "Audio engine not running, not playing sound!", v14, 2u);
          MEMORY[0x23EEB0B70](v14, -1, -1);
        }
      }
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t SoundManager.startLoop(playStartSound:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v20 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DispatchQoS();
  v11 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v4 + 16);
  v14 = swift_allocObject();
  swift_weakInit();
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  *(v15 + 24) = a1;
  aBlock[4] = a3;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = a4;
  v16 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v21 = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x23EEAF960](0, v13, v10, v16);
  _Block_release(v16);
  (*(v20 + 8))(v10, v8);
  (*(v11 + 8))(v13, v19);
}

void closure #1 in SoundManager.stopLoop(playEndSound:)(uint64_t a1, char a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    SoundManager.startEngineIfNeeded()();
    v5 = v4[9];
    if (v5)
    {
      if ([v5 isRunning])
      {
        v6 = v4[7];
        v7 = v4[8];
        __swift_project_boxed_opaque_existential_1(v4 + 4, v6);
        (*(v7 + 32))(a2 & 1, v6, v7);
      }

      else
      {
        if (one-time initialization token for logger != -1)
        {
          swift_once();
        }

        v8 = type metadata accessor for Logger();
        __swift_project_value_buffer(v8, logger);
        v9 = Logger.logObject.getter();
        v10 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v9, v10))
        {
          v11 = swift_slowAlloc();
          *v11 = 0;
          _os_log_impl(&dword_23B824000, v9, v10, "Audio engine not running, not playing sound!", v11, 2u);
          MEMORY[0x23EEB0B70](v11, -1, -1);
        }
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void closure #1 in SoundManager.playShutterSound(volume:)(uint64_t a1, float a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    SoundManager.startEngineIfNeeded()();
    v5 = v4[9];
    if (v5)
    {
      if ([v5 isRunning])
      {
        v6 = v4[7];
        v7 = v4[8];
        __swift_project_boxed_opaque_existential_1(v4 + 4, v6);
        (*(v7 + 40))(v6, v7, a2);
      }

      else
      {
        if (one-time initialization token for logger != -1)
        {
          swift_once();
        }

        v8 = type metadata accessor for Logger();
        __swift_project_value_buffer(v8, logger);
        v9 = Logger.logObject.getter();
        v10 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v9, v10))
        {
          v11 = swift_slowAlloc();
          *v11 = 0;
          _os_log_impl(&dword_23B824000, v9, v10, "Audio engine not running, not playing sound!", v11, 2u);
          MEMORY[0x23EEB0B70](v11, -1, -1);
        }
      }
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t SoundManager.playShutterSound(volume:)(uint64_t a1, uint64_t a2, uint64_t a3, float a4)
{
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v20 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DispatchQoS();
  v11 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v4 + 16);
  v14 = swift_allocObject();
  swift_weakInit();
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  *(v15 + 24) = a4;
  aBlock[4] = a2;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = a3;
  v16 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v21 = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x23EEAF960](0, v13, v10, v16);
  _Block_release(v16);
  (*(v20 + 8))(v10, v8);
  (*(v11 + 8))(v13, v19);
}

void closure #1 in SoundManager.playCompletionSound(volume:)(uint64_t a1, float a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    SoundManager.startEngineIfNeeded()();
    v5 = v4[9];
    if (v5)
    {
      if ([v5 isRunning])
      {
        v6 = v4[7];
        v7 = v4[8];
        __swift_project_boxed_opaque_existential_1(v4 + 4, v6);
        (*(v7 + 48))(v6, v7, a2);
      }

      else
      {
        if (one-time initialization token for logger != -1)
        {
          swift_once();
        }

        v8 = type metadata accessor for Logger();
        __swift_project_value_buffer(v8, logger);
        v9 = Logger.logObject.getter();
        v10 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v9, v10))
        {
          v11 = swift_slowAlloc();
          *v11 = 0;
          _os_log_impl(&dword_23B824000, v9, v10, "Audio engine not running, not playing sound!", v11, 2u);
          MEMORY[0x23EEB0B70](v11, -1, -1);
        }
      }
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t closure #1 in SoundManager.updateGoodnessScore(_:)(uint64_t a1, float a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    outlined init with copy of Cancellable(result + 32, v6);

    v4 = v7;
    v5 = v8;
    __swift_project_boxed_opaque_existential_1(v6, v7);
    (*(v5 + 56))(v4, v5, a2);
    return __swift_destroy_boxed_opaque_existential_0Tm(v6);
  }

  return result;
}

void FilterPipeCaptureSoundModule.loadSamples()()
{
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, logger);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_23B824000, v3, v4, "Loading capture sound samples...", v5, 2u);
    MEMORY[0x23EEB0B70](v5, -1, -1);
  }

  v6 = specialized static SoundManager.loadAudioFileFromBundle(named:)(0x6C5F6E6163735F31, 0xEB00000000706F6FLL);
  if (!v1)
  {
    v7 = v0[12];
    v0[12] = v6;

    v8 = specialized static SoundManager.loadAudioFileFromBundle(named:)(0x6163735F6E65706FLL, 0xE90000000000006ELL);
    v9 = v0[11];
    v0[11] = v8;

    v10 = specialized static SoundManager.loadAudioFileFromBundle(named:)(0x6D6F635F6E616373, 0xED00006574656C70);
    v11 = v0[13];
    v0[13] = v10;

    v12 = specialized static SoundManager.loadAudioFileFromBundle(named:)(0x65736C7570, 0xE500000000000000);
    v13 = v0[14];
    v0[14] = v12;

    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_23B824000, v14, v15, "... done loading capture sound samples.", v16, 2u);
      MEMORY[0x23EEB0B70](v16, -1, -1);
    }
  }
}

void FilterPipeCaptureSoundModule.connectGraph(engine:)(void *a1)
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
    _os_log_impl(&dword_23B824000, v4, v5, "Creating loop playback node...", v6, 2u);
    MEMORY[0x23EEB0B70](v6, -1, -1);
  }

  v7 = [objc_allocWithZone(MEMORY[0x277CB83E0]) init];
  v8 = v1[2];
  v1[2] = v7;
  v9 = v7;

  if (!v9)
  {
    __break(1u);
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  [a1 attachNode_];

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_23B824000, v10, v11, "Creating an audio distortion node...", v12, 2u);
    MEMORY[0x23EEB0B70](v12, -1, -1);
  }

  v13 = [objc_allocWithZone(MEMORY[0x277CB8448]) init];
  v14 = v1[3];
  v1[3] = v13;
  v15 = v13;

  if (!v15)
  {
    goto LABEL_48;
  }

  [v15 loadFactoryPreset_];

  if (!v1[3])
  {
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  [a1 attachNode_];
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_23B824000, v16, v17, "Creating a pitchshifter node...", v18, 2u);
    MEMORY[0x23EEB0B70](v18, -1, -1);
  }

  v19 = [objc_allocWithZone(MEMORY[0x277CB8468]) init];
  v20 = v1[4];
  v1[4] = v19;
  v21 = v19;

  if (!v21)
  {
    goto LABEL_50;
  }

  [a1 attachNode_];

  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&dword_23B824000, v22, v23, "Creating a varispeed node...", v24, 2u);
    MEMORY[0x23EEB0B70](v24, -1, -1);
  }

  v25 = [objc_allocWithZone(MEMORY[0x277CB8470]) init];
  v26 = v1[5];
  v1[5] = v25;
  v27 = v25;

  if (!v27)
  {
    goto LABEL_51;
  }

  [a1 attachNode_];

  v28 = [a1 mainMixerNode];
  v29 = v1[2];
  if (!v29)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v30 = v1[5];
  if (!v30)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v31 = v1[12];
  if (!v31)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v32 = v28;
  v33 = v30;
  v34 = v29;
  v35 = [v31 format];
  [a1 connect:v34 to:v33 format:v35];

  v36 = v1[5];
  if (!v36)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v37 = v1[3];
  if (!v37)
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  v38 = v1[12];
  if (!v38)
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  v39 = v37;
  v40 = v36;
  v41 = [v38 format];
  [a1 connect:v40 to:v39 format:v41];

  v42 = v1[3];
  if (!v42)
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  v43 = v1[4];
  if (!v43)
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  v44 = v1[12];
  if (!v44)
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  v45 = v43;
  v46 = v42;
  v47 = [v44 format];
  [a1 connect:v46 to:v45 format:v47];

  v48 = v1[4];
  if (!v48)
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  v49 = v1[12];
  if (!v49)
  {
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  v50 = v48;
  v51 = [v49 format];
  [a1 connect:v50 to:v32 format:v51];

  v52 = Logger.logObject.getter();
  v53 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    *v54 = 0;
    _os_log_impl(&dword_23B824000, v52, v53, "... playback node connected.", v54, 2u);
    MEMORY[0x23EEB0B70](v54, -1, -1);
  }

  v55 = Logger.logObject.getter();
  v56 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    *v57 = 0;
    _os_log_impl(&dword_23B824000, v55, v56, "... speed node connected.", v57, 2u);
    MEMORY[0x23EEB0B70](v57, -1, -1);
  }

  v58 = Logger.logObject.getter();
  v59 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v58, v59))
  {
    v60 = swift_slowAlloc();
    *v60 = 0;
    _os_log_impl(&dword_23B824000, v58, v59, "... distortion node connected.", v60, 2u);
    MEMORY[0x23EEB0B70](v60, -1, -1);
  }

  v61 = Logger.logObject.getter();
  v62 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v61, v62))
  {
    v63 = swift_slowAlloc();
    *v63 = 0;
    _os_log_impl(&dword_23B824000, v61, v62, "... pitchshifter node connected.", v63, 2u);
    MEMORY[0x23EEB0B70](v63, -1, -1);
  }

  v64 = Logger.logObject.getter();
  v65 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v64, v65))
  {
    v66 = swift_slowAlloc();
    *v66 = 0;
    _os_log_impl(&dword_23B824000, v64, v65, "... done audio engine initializing.", v66, 2u);
    MEMORY[0x23EEB0B70](v66, -1, -1);
  }

  v67 = Logger.logObject.getter();
  v68 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v67, v68))
  {
    v69 = swift_slowAlloc();
    *v69 = 0;
    _os_log_impl(&dword_23B824000, v67, v68, "Creating the shutter playback node...", v69, 2u);
    MEMORY[0x23EEB0B70](v69, -1, -1);
  }

  v70 = [objc_allocWithZone(MEMORY[0x277CB83E0]) init];
  v71 = v1[6];
  v1[6] = v70;
  v72 = v70;

  if (!v72)
  {
    goto LABEL_63;
  }

  [a1 attachNode_];

  v73 = v1[6];
  if (!v73)
  {
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  v74 = v1[14];
  if (!v74)
  {
LABEL_65:
    __break(1u);
    return;
  }

  v75 = v73;
  v76 = [v74 format];
  [a1 connect:v75 to:v32 format:v76];

  oslog = Logger.logObject.getter();
  v77 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(oslog, v77))
  {
    v78 = swift_slowAlloc();
    *v78 = 0;
    _os_log_impl(&dword_23B824000, oslog, v77, "... connected shutter playback node.", v78, 2u);
    MEMORY[0x23EEB0B70](v78, -1, -1);
  }
}

id FilterPipeCaptureSoundModule.stopLoop(playEndSound:)(char a1)
{
  if (a1)
  {
    result = *(v1 + 16);
    if (!result)
    {
LABEL_10:
      __break(1u);
      goto LABEL_11;
    }

    v3 = *(v1 + 104);
    if (!v3)
    {
LABEL_11:
      __break(1u);
      return result;
    }

    [result scheduleBuffer:v3 atTime:0 options:2 completionHandler:0];
  }

  result = *(v1 + 16);
  if (!result)
  {
    __break(1u);
    goto LABEL_10;
  }

  return [result stop];
}

id FilterPipeCaptureSoundModule.playShutterSound(volume:)(float a1)
{
  result = *(v1 + 48);
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  v3 = *(v1 + 112);
  if (!v3)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  [result scheduleBuffer:v3 atTime:0 options:0 completionHandler:0];
  result = *(v1 + 48);
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  *&v5 = a1;
  [result setVolume_];
  result = *(v1 + 48);
  if (!result)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  return [result play];
}

id FilterPipeCaptureSoundModule.playCompletionSound(volume:)(float a1)
{
  result = *(v1 + 48);
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  v3 = *(v1 + 104);
  if (!v3)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  [result scheduleBuffer:v3 atTime:0 options:0 completionHandler:0];
  result = *(v1 + 48);
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  *&v5 = a1;
  [result setVolume_];
  result = *(v1 + 48);
  if (!result)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  return [result play];
}

id FilterPipeCaptureSoundModule.updateGoodnessScore(_:)(double a1)
{
  v2 = 0.0;
  if (*&a1 <= 0.0)
  {
    *&a1 = 0.0;
  }

  if (*&a1 > 1.0)
  {
    *&a1 = 1.0;
  }

  v3 = vabds_f32(1.0, *&a1);
  if (v3 > 0.25)
  {
    v2 = ((1.0 - *&a1) + (((1.0 - *&a1) / v3) * -0.25)) / 0.75;
  }

  result = v1[2];
  if (!result)
  {
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (*&a1 <= 0.2)
  {
    *&a1 = 0.2;
  }

  if (*&a1 > 0.8)
  {
    *&a1 = 0.8;
  }

  [result setVolume_];
  result = v1[3];
  if (!result)
  {
    goto LABEL_21;
  }

  *&v5 = v2 * v2;
  if ((v2 * v2) > 0.5)
  {
    *&v5 = 0.5;
  }

  [result setWetDryMix_];
  result = v1[4];
  if (!result)
  {
    goto LABEL_22;
  }

  *&v6 = v2 * -1200.0;
  [result setPitch_];
  result = v1[5];
  if (!result)
  {
LABEL_23:
    __break(1u);
    return result;
  }

  *&v7 = (v2 * -0.5) + 1.0;
  return [result setRate_];
}

uint64_t FilterPipeCaptureSoundModule.__deallocating_deinit()
{
  FilterPipeCaptureSoundModule.deinit();

  return swift_deallocClassInstance();
}

uint64_t Fader.__deallocating_deinit()
{
  MEMORY[0x23EEB0C40](v0 + 16);

  return swift_deallocClassInstance();
}

void LayerCakeCaptureSoundModule.loadSamples()()
{
  v2 = v0;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, logger);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_23B824000, v4, v5, "Loading capture sound samples...", v6, 2u);
    MEMORY[0x23EEB0B70](v6, -1, -1);
  }

  v7 = specialized static SoundManager.loadAudioFileFromBundle(named:)(0x6163735F6E65706FLL, 0xE90000000000006ELL);
  if (!v1)
  {
    v8 = v2[6];
    v2[6] = v7;

    v9 = specialized static SoundManager.loadAudioFileFromBundle(named:)(0x6D6F635F6E616373, 0xED00006574656C70);
    v10 = v2[7];
    v2[7] = v9;

    v11 = specialized static SoundManager.loadAudioFileFromBundle(named:)(0x65736C7570, 0xE500000000000000);
    v12 = v2[8];
    v2[8] = v11;

    specialized static SoundManager.loadAudioFileFromBundle(named:)(0x6C5F6E6163735F31, 0xEB00000000706F6FLL);
    v13 = swift_beginAccess();
    MEMORY[0x23EEAF620](v13);
    if (*((v2[9] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v2[9] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    swift_endAccess();
    specialized static SoundManager.loadAudioFileFromBundle(named:)(0x6C5F6E6163735F32, 0xEB00000000706F6FLL);
    v14 = swift_beginAccess();
    MEMORY[0x23EEAF620](v14);
    if (*((v2[9] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v2[9] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    swift_endAccess();
    specialized static SoundManager.loadAudioFileFromBundle(named:)(0x6C5F6E6163735F33, 0xEB00000000706F6FLL);
    v15 = swift_beginAccess();
    MEMORY[0x23EEAF620](v15);
    if (*((v2[9] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v2[9] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    swift_endAccess();
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_23B824000, v16, v17, "... done loading capture sound samples.", v18, 2u);
      MEMORY[0x23EEB0B70](v18, -1, -1);
    }
  }
}

void LayerCakeCaptureSoundModule.connectGraph(engine:)(void *a1)
{
  v5 = v1;
  swift_beginAccess();
  v7 = v1[3];
  if (!(v7 >> 62))
  {
    if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_45:
    __break(1u);
LABEL_46:
    v43 = v1;

    v13 = MEMORY[0x23EEAFC40](0, v3);

    goto LABEL_8;
  }

LABEL_44:
  if (__CocoaSet.count.getter())
  {
    goto LABEL_45;
  }

LABEL_3:
  v2 = [a1 mainMixerNode];
  v4 = &unk_278B8A000;
  v8 = [objc_allocWithZone(MEMORY[0x277CB83B0]) init];
  v9 = v5[2];
  v5[2] = v8;
  v10 = v8;

  if (!v10)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  [a1 attachNode_];

  v1 = v5[2];
  if (!v1)
  {
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  swift_beginAccess();
  v3 = v5[9];
  if ((v3 & 0xC000000000000001) != 0)
  {
    goto LABEL_46;
  }

  if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
LABEL_49:
    swift_once();
    goto LABEL_33;
  }

  v11 = *(v3 + 32);
  v12 = v1;
  v13 = v11;
LABEL_8:
  v14 = [v13 format];

  [a1 connect:v1 to:v2 format:v14];
  [objc_allocWithZone(MEMORY[0x277CB83E0]) *(v4 + 1488)];
  v15 = swift_beginAccess();
  MEMORY[0x23EEAF620](v15);
  if (*((v5[3] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v5[3] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  [objc_allocWithZone(MEMORY[0x277CB83E0]) *(v4 + 1488)];
  v16 = swift_beginAccess();
  MEMORY[0x23EEAF620](v16);
  if (*((v5[3] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v5[3] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  [objc_allocWithZone(MEMORY[0x277CB83E0]) *(v4 + 1488)];
  v17 = swift_beginAccess();
  MEMORY[0x23EEAF620](v17);
  if (*((v5[3] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v5[3] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  v1 = v5 + 3;
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v18 = v5[3];
  swift_endAccess();
  v44 = v2;
  if (v18 >> 62)
  {
    v2 = __CocoaSet.count.getter();
  }

  else
  {
    v2 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v2)
  {
    v4 = 0;
    v3 = a1;
    while (1)
    {
      if ((v18 & 0xC000000000000001) != 0)
      {
        v19 = MEMORY[0x23EEAFC40](v4, v18);
      }

      else
      {
        if (v4 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_42;
        }

        v19 = *(v18 + 8 * v4 + 32);
      }

      v20 = v19;
      v21 = (v4 + 1);
      if (__OFADD__(v4, 1))
      {
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
        goto LABEL_44;
      }

      [a1 attachNode_];
      v1 = v5[2];
      if (!v1)
      {
        break;
      }

      v22 = v5[9];
      if ((v22 & 0xC000000000000001) != 0)
      {
        v28 = v1;

        v25 = MEMORY[0x23EEAFC40](0, v22);
      }

      else
      {
        if (!*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_43;
        }

        v23 = *(v22 + 32);
        v24 = v1;
        v25 = v23;
      }

      v26 = [v25 format];

      a1 = v3;
      [v3 connect:v20 to:v1 format:v26];

      v27 = swift_beginAccess();
      MEMORY[0x23EEAF620](v27);
      if (*(v5[4] + 16) >= *(v5[4] + 24) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      v1 = v5 + 4;
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      swift_endAccess();

      ++v4;
      if (v21 == v2)
      {
        goto LABEL_32;
      }
    }

    __break(1u);
    goto LABEL_51;
  }

LABEL_32:

  if (one-time initialization token for logger != -1)
  {
    goto LABEL_49;
  }

LABEL_33:
  v29 = type metadata accessor for Logger();
  __swift_project_value_buffer(v29, logger);
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&dword_23B824000, v30, v31, "Creating the shutter playback node...", v32, 2u);
    MEMORY[0x23EEB0B70](v32, -1, -1);
  }

  v33 = [objc_allocWithZone(MEMORY[0x277CB83E0]) init];
  v34 = v5[5];
  v5[5] = v33;
  v35 = v33;

  if (!v35)
  {
    goto LABEL_53;
  }

  [a1 attachNode_];

  v36 = v5[5];
  if (!v36)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v37 = v5[8];
  if (!v37)
  {
LABEL_55:
    __break(1u);
    return;
  }

  v38 = v36;
  v39 = [v37 format];
  [a1 connect:v38 to:v44 format:v39];

  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    *v42 = 0;
    _os_log_impl(&dword_23B824000, v40, v41, "... connected shutter playback node to mainMixer.", v42, 2u);
    MEMORY[0x23EEB0B70](v42, -1, -1);
  }
}

void LayerCakeCaptureSoundModule.startLoop(playStartSound:)(char a1)
{
  if (a1)
  {
    v2 = v1[5];
    if (!v2)
    {
      goto LABEL_27;
    }

    v3 = v1[6];
    if (v3)
    {
      [v2 scheduleBuffer:v3 atTime:0 options:0 completionHandler:0];
      v2 = v1[5];
      if (v2)
      {
        [v2 play];
        goto LABEL_6;
      }
    }

    else
    {
LABEL_28:
      __break(1u);
    }

    __break(1u);
    goto LABEL_30;
  }

LABEL_6:
  swift_beginAccess();
  v4 = v1[9];
  if (v4 >> 62)
  {
    goto LABEL_25;
  }

  v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v5)
  {
    return;
  }

  do
  {
    swift_beginAccess();
    for (i = 4; ; ++i)
    {
      v7 = i - 4;
      v8 = v1[3];
      if ((v8 & 0xC000000000000001) == 0)
      {
        break;
      }

      v9 = MEMORY[0x23EEAFC40](i - 4, v8);

LABEL_12:
      v10 = v1[9];
      if ((v10 & 0xC000000000000001) != 0)
      {

        v11 = MEMORY[0x23EEAFC40](i - 4, v10);
      }

      else
      {
        if (v7 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_24;
        }

        v11 = *(v10 + 8 * i);
      }

      [v9 scheduleBuffer:v11 atTime:0 options:1 completionHandler:0];
      [v9 setVolume_];
      [v9 play];
      swift_beginAccess();
      NewAByxGyF19_RealityKit_SwiftUI13RampAnimationCSg_Tg5_0 = v1[4];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v1[4] = NewAByxGyF19_RealityKit_SwiftUI13RampAnimationCSg_Tg5_0;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        NewAByxGyF19_RealityKit_SwiftUI13RampAnimationCSg_Tg5_0 = _ss12_ArrayBufferV20_consumeAndCreateNewAByxGyF19_RealityKit_SwiftUI13RampAnimationCSg_Tg5_0(NewAByxGyF19_RealityKit_SwiftUI13RampAnimationCSg_Tg5_0);
        v1[4] = NewAByxGyF19_RealityKit_SwiftUI13RampAnimationCSg_Tg5_0;
      }

      if (v7 >= *(NewAByxGyF19_RealityKit_SwiftUI13RampAnimationCSg_Tg5_0 + 16))
      {
        goto LABEL_23;
      }

      *(NewAByxGyF19_RealityKit_SwiftUI13RampAnimationCSg_Tg5_0 + 8 * i) = 0;
      v1[4] = NewAByxGyF19_RealityKit_SwiftUI13RampAnimationCSg_Tg5_0;
      swift_endAccess();

      if (!--v5)
      {
        return;
      }
    }

    if (v7 < *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v9 = *(v8 + 8 * i);
      goto LABEL_12;
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    v2 = __CocoaSet.count.getter();
    if (v2 < 0)
    {
      __break(1u);
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

LABEL_30:
    v5 = v2;
  }

  while (v2);
}

void LayerCakeCaptureSoundModule.stopLoop(playEndSound:)(char a1, __n128 a2)
{
  if (a1)
  {
    v3 = v2[5];
    if (!v3)
    {
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    v4 = v2[7];
    if (!v4)
    {
LABEL_14:
      __break(1u);
      goto LABEL_15;
    }

    [v3 scheduleBuffer:v4 atTime:0 options:0 completionHandler:{0, a2.n128_f64[0]}];
    v3 = v2[5];
    if (!v3)
    {
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    [v3 play];
  }

  swift_beginAccess();
  v5 = v2[9];
  if (!(v5 >> 62))
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return;
    }

    goto LABEL_8;
  }

  v3 = __CocoaSet.count.getter();
  if (v3 < 0)
  {
    __break(1u);
    goto LABEL_13;
  }

LABEL_16:
  v6 = v3;
  if (!v3)
  {
    return;
  }

LABEL_8:
  v7 = 0;
  do
  {
    v8 = v7 + 1;
    LayerCakeCaptureSoundModule.requestStop(layer:)(v7);
    v7 = v8;
  }

  while (v6 != v8);
}

id LayerCakeCaptureSoundModule.playShutterSound(volume:)(float a1)
{
  result = *(v1 + 40);
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  v3 = *(v1 + 64);
  if (!v3)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  [result scheduleBuffer:v3 atTime:0 options:0 completionHandler:0];
  result = *(v1 + 40);
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  *&v5 = a1;
  [result setVolume_];
  result = *(v1 + 40);
  if (!result)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  return [result play];
}

id LayerCakeCaptureSoundModule.playCompletionSound(volume:)(float a1)
{
  result = *(v1 + 40);
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  v3 = *(v1 + 56);
  if (!v3)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  [result scheduleBuffer:v3 atTime:0 options:0 completionHandler:0];
  result = *(v1 + 40);
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  *&v5 = a1;
  [result setVolume_];
  result = *(v1 + 40);
  if (!result)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  return [result play];
}

void LayerCakeCaptureSoundModule.updateGoodnessScore(_:)(float a2)
{
  if (a2 <= 1.0)
  {
    v3 = a2;
  }

  else
  {
    v3 = 1.0;
  }

  if (a2 > 0.0)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0.0;
  }

  if (v4 < 0.0 || v4 > 1.0)
  {
    goto LABEL_34;
  }

  swift_beginAccess();
  v6 = v2[9];
  if (v6 >> 62)
  {
    goto LABEL_35;
  }

  v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v7)
  {
    do
    {
      swift_beginAccess();
      v8 = 0;
      while (1)
      {
        v9 = v2[12];
        v10 = *(v9 + 16);
        if (v8 >= v10)
        {
          break;
        }

        v11 = v8 + 1;
        if (v8 + 1 >= v10)
        {
          goto LABEL_32;
        }

        v12 = (v4 - *(v9 + 4 * v8 + 32)) / (*(v9 + 4 * v8 + 36) - *(v9 + 4 * v8 + 32));
        if (v12 <= 0.0)
        {
          v12 = 0.0;
        }

        if (v12 > 1.0)
        {
          v12 = 1.0;
        }

        if (v12 <= 0.0)
        {
          v12 = 0.0;
        }

        if (v12 <= 0.8)
        {
          v13 = v12;
        }

        else
        {
          v13 = 0.8;
        }

        v14 = v2[3];
        if ((v14 & 0xC000000000000001) != 0)
        {

          v15 = MEMORY[0x23EEAFC40](v8, v14);
        }

        else
        {
          if (v8 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_33;
          }

          v15 = *(v14 + 8 * v8 + 32);
        }

        *&v16 = v13;
        [v15 setVolume_];

        v8 = v11;
        if (v7 == v11)
        {
          return;
        }
      }

      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      v17 = __CocoaSet.count.getter();
      if (v17 < 0)
      {
        __break(1u);
      }

      v7 = v17;
    }

    while (v17);
  }
}

void LayerCakeCaptureSoundModule.requestStop(layer:)(unint64_t a1)
{
  v2 = v1;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, logger);
  v5 = Logger.logObject.getter();
  NewAByxGyF19_RealityKit_SwiftUI13RampAnimationCSg_Tg5_0 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v5, NewAByxGyF19_RealityKit_SwiftUI13RampAnimationCSg_Tg5_0))
  {
    v7 = swift_slowAlloc();
    *v7 = 134349056;
    *(v7 + 4) = a1;
    _os_log_impl(&dword_23B824000, v5, NewAByxGyF19_RealityKit_SwiftUI13RampAnimationCSg_Tg5_0, "Requesting faded stop for layer %{public}ld...", v7, 0xCu);
    MEMORY[0x23EEB0B70](v7, -1, -1);
  }

  swift_beginAccess();
  v8 = v2[3];
  if ((v8 & 0xC000000000000001) != 0)
  {

    v9 = MEMORY[0x23EEAFC40](a1, v8);
  }

  else
  {
    if ((a1 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_15;
    }

    if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a1)
    {
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    v9 = *(v8 + 8 * a1 + 32);
  }

  v10 = v2[13];
  type metadata accessor for Fader();
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v8 + 48) = 0;
  swift_unknownObjectWeakAssign();

  *(v8 + 24) = 1;
  *(v8 + 32) = v10;
  *(v8 + 40) = 0x3FD3333333333333;
  swift_beginAccess();
  NewAByxGyF19_RealityKit_SwiftUI13RampAnimationCSg_Tg5_0 = v2[4];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v2[4] = NewAByxGyF19_RealityKit_SwiftUI13RampAnimationCSg_Tg5_0;
  if (isUniquelyReferenced_nonNull_native)
  {
    if ((a1 & 0x8000000000000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_16;
  }

LABEL_15:
  NewAByxGyF19_RealityKit_SwiftUI13RampAnimationCSg_Tg5_0 = _ss12_ArrayBufferV20_consumeAndCreateNewAByxGyF19_RealityKit_SwiftUI13RampAnimationCSg_Tg5_0(NewAByxGyF19_RealityKit_SwiftUI13RampAnimationCSg_Tg5_0);
  v2[4] = NewAByxGyF19_RealityKit_SwiftUI13RampAnimationCSg_Tg5_0;
  if ((a1 & 0x8000000000000000) != 0)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

LABEL_11:
  if (*(NewAByxGyF19_RealityKit_SwiftUI13RampAnimationCSg_Tg5_0 + 16) > a1)
  {
    *(NewAByxGyF19_RealityKit_SwiftUI13RampAnimationCSg_Tg5_0 + 8 * a1 + 32) = v8;
    v2[4] = NewAByxGyF19_RealityKit_SwiftUI13RampAnimationCSg_Tg5_0;
    swift_endAccess();

    return;
  }

LABEL_18:
  __break(1u);
}

void LayerCakeCaptureSoundModule.updateFaders(at:)(double a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = *(v1 + 72);
  if (v4 >> 62)
  {
    goto LABEL_35;
  }

  v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5)
  {
    do
    {
      swift_beginAccess();
      v6 = 4;
      v7 = 0x27E189000uLL;
      v8 = logger;
      v9 = &unk_278B8A000;
      v31 = v2;
      while (1)
      {
        v10 = v6 - 4;
        v11 = *(v2 + 32);
        if ((v6 - 4) >= *(v11 + 16))
        {
          break;
        }

        v12 = *(v11 + 8 * v6);
        if (v12)
        {
          Strong = swift_unknownObjectWeakLoadStrong();
          if (Strong)
          {
            v14 = Strong;
            v15 = *(v12 + 32);

            if (v15 <= a1)
            {
              if ([v14 isPlaying])
              {
                v16 = (a1 - v15) / 0.3;
                if (v16 <= 1.0)
                {
                  v17 = (a1 - v15) / 0.3;
                }

                else
                {
                  v17 = 1.0;
                }

                if (v16 > 0.0)
                {
                  v18 = v17;
                }

                else
                {
                  v18 = 0.0;
                }

                *&v18 = v18;
                if (*(v12 + 24))
                {
                  *&v18 = 1.0 - *&v18;
                }

                [v14 setVolume_];
              }

              if (v15 + 0.3 < a1)
              {
                *(v12 + 48) = 1;
              }
            }

            else
            {
            }
          }

          else
          {
          }

          if (*(v12 + 48) == 1)
          {
            if (*(v7 + 2136) != -1)
            {
              swift_once();
            }

            v19 = type metadata accessor for Logger();
            __swift_project_value_buffer(v19, v8);
            v20 = Logger.logObject.getter();
            v21 = static os_log_type_t.debug.getter();
            if (os_log_type_enabled(v20, v21))
            {
              v22 = v9;
              v23 = v8;
              v24 = v7;
              v25 = swift_slowAlloc();
              *v25 = 134349056;
              *(v25 + 4) = v10;
              _os_log_impl(&dword_23B824000, v20, v21, "Removing expired fader layer %{public}ld...", v25, 0xCu);
              v26 = v25;
              v7 = v24;
              v8 = v23;
              v9 = v22;
              v2 = v31;
              MEMORY[0x23EEB0B70](v26, -1, -1);
            }

            v27 = swift_unknownObjectWeakLoadStrong();
            [v27 v9[349]];

            swift_beginAccess();
            NewAByxGyF19_RealityKit_SwiftUI13RampAnimationCSg_Tg5_0 = *(v2 + 32);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *(v2 + 32) = NewAByxGyF19_RealityKit_SwiftUI13RampAnimationCSg_Tg5_0;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              NewAByxGyF19_RealityKit_SwiftUI13RampAnimationCSg_Tg5_0 = _ss12_ArrayBufferV20_consumeAndCreateNewAByxGyF19_RealityKit_SwiftUI13RampAnimationCSg_Tg5_0(NewAByxGyF19_RealityKit_SwiftUI13RampAnimationCSg_Tg5_0);
              *(v2 + 32) = NewAByxGyF19_RealityKit_SwiftUI13RampAnimationCSg_Tg5_0;
            }

            if (v10 >= *(NewAByxGyF19_RealityKit_SwiftUI13RampAnimationCSg_Tg5_0 + 16))
            {
              goto LABEL_34;
            }

            *(NewAByxGyF19_RealityKit_SwiftUI13RampAnimationCSg_Tg5_0 + 8 * v6) = 0;
            *(v2 + 32) = NewAByxGyF19_RealityKit_SwiftUI13RampAnimationCSg_Tg5_0;
            swift_endAccess();
          }
        }

        ++v6;
        if (!--v5)
        {
          return;
        }
      }

      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      v30 = __CocoaSet.count.getter();
      if (v30 < 0)
      {
        __break(1u);
      }

      v5 = v30;
    }

    while (v30);
  }
}

id *LayerCakeCaptureSoundModule.deinit()
{

  return v0;
}

uint64_t LayerCakeCaptureSoundModule.__deallocating_deinit()
{
  LayerCakeCaptureSoundModule.deinit();

  return swift_deallocClassInstance();
}

unint64_t lazy protocol witness table accessor for type SoundManager.State and conformance SoundManager.State(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type SoundManager.State and conformance SoundManager.State;
  if (!lazy protocol witness table cache variable for type SoundManager.State and conformance SoundManager.State)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SoundManager.State and conformance SoundManager.State);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Fader.Direction and conformance Fader.Direction(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type Fader.Direction and conformance Fader.Direction;
  if (!lazy protocol witness table cache variable for type Fader.Direction and conformance Fader.Direction)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Fader.Direction and conformance Fader.Direction);
  }

  return result;
}

void protocol witness for CaptureSoundModule.update(t:) in conformance LayerCakeCaptureSoundModule(double a1)
{
  v3 = *v1;
  LayerCakeCaptureSoundModule.updateFaders(at:)(a1);
  *(v3 + 104) = a1;
}

id @nonobjc AVAudioFile.init(forReading:)(uint64_t a1)
{
  v2 = v1;
  v15 = *MEMORY[0x277D85DE8];
  URL._bridgeToObjectiveC()(v15);
  v5 = v4;
  v14 = 0;
  v6 = [v2 initForReading:v4 error:&v14];

  v7 = v14;
  if (v6)
  {
    v8 = type metadata accessor for URL();
    v9 = *(*(v8 - 8) + 8);
    v10 = v7;
    v9(a1, v8);
  }

  else
  {
    v11 = v14;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v12 = type metadata accessor for URL();
    (*(*(v12 - 8) + 8))(a1, v12);
  }

  return v6;
}

void *specialized _ArrayBuffer._consumeAndCreateNew()(void *a1)
{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

void *specialized static SoundManager.loadAudioFileFromBundle(named:)(uint64_t a1, unint64_t a2)
{
  v70[1] = *MEMORY[0x277D85DE8];
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v68 = &v60[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v60[-v9];
  MEMORY[0x28223BE20](v8);
  v12 = &v60[-v11];
  if (one-time initialization token for bundle != -1)
  {
    swift_once();
  }

  v13 = static SoundManager.bundle;
  v14 = MEMORY[0x23EEAF480](a1, a2);
  v15 = MEMORY[0x23EEAF480](7758199, 0xE300000000000000);
  v16 = [v13 URLForResource:v14 withExtension:v15];

  if (!v16)
  {
    lazy protocol witness table accessor for type SoundManager.Error and conformance SoundManager.Error(v17, v18, v19);
    swift_allocError();
    *v36 = a1;
    v36[1] = a2;
    swift_willThrow();

    return v14;
  }

  v65 = a1;
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  v21 = __swift_project_value_buffer(v20, logger);
  v66 = *(v5 + 16);
  v67 = v12;
  v66(v10, v12, v4);

  v63 = v21;
  v22 = a2;
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();

  v25 = os_log_type_enabled(v23, v24);
  v64 = v22;
  if (v25)
  {
    v26 = swift_slowAlloc();
    v61 = v24;
    v27 = v26;
    v62 = swift_slowAlloc();
    v70[0] = v62;
    *v27 = 136315394;
    *(v27 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v65, v22, v70);
    *(v27 + 12) = 2080;
    lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v28 = dispatch thunk of CustomStringConvertible.description.getter();
    v29 = v5;
    v30 = v4;
    v32 = v31;
    v33 = *(v29 + 8);
    v33(v10, v30);
    v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v32, v70);
    v4 = v30;
    v5 = v29;

    *(v27 + 14) = v34;
    _os_log_impl(&dword_23B824000, v23, v61, "Got fileUrl for audio resource %s as %s", v27, 0x16u);
    v35 = v62;
    swift_arrayDestroy();
    MEMORY[0x23EEB0B70](v35, -1, -1);
    MEMORY[0x23EEB0B70](v27, -1, -1);
  }

  else
  {

    v33 = *(v5 + 8);
    v33(v10, v4);
  }

  v37 = v67;
  v14 = v68;
  v66(v68, v67, v4);
  v38 = objc_allocWithZone(MEMORY[0x277CB8398]);
  v39 = v69;
  v40 = @nonobjc AVAudioFile.init(forReading:)(v14);
  if (v39)
  {
    goto LABEL_11;
  }

  v42 = v40;
  v69 = v5;
  v43 = [v40 processingFormat];
  v44 = [v42 length];
  if ((v44 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_23:
    __break(1u);
  }

  v45 = v65;
  if (HIDWORD(v44))
  {
    goto LABEL_23;
  }

  v46 = [objc_allocWithZone(MEMORY[0x277CB83C8]) initWithPCMFormat:v43 frameCapacity:v44];
  if (!v46)
  {
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = v33;
      v52 = v4;
      v53 = swift_slowAlloc();
      *v53 = 0;
      _os_log_impl(&dword_23B824000, v49, v50, "Can't create audio buffer!", v53, 2u);
      v54 = v53;
      v4 = v52;
      v33 = v51;
      MEMORY[0x23EEB0B70](v54, -1, -1);
    }

    lazy protocol witness table accessor for type SoundManager.Error and conformance SoundManager.Error(v55, v56, v57);
    swift_allocError();
    v14 = v64;
    *v58 = v45;
    v58[1] = v14;
    swift_willThrow();

LABEL_11:
    v33(v37, v4);
    return v14;
  }

  v14 = v46;
  v47 = v4;
  v70[0] = 0;
  if ([v42 readIntoBuffer:v46 error:v70])
  {
    v48 = v70[0];
    v33(v37, v4);
  }

  else
  {
    v59 = v70[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v33(v37, v47);
  }

  return v14;
}

void specialized SoundManager.setupAudioCategory()()
{
  v12[1] = *MEMORY[0x277D85DE8];
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, logger);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_23B824000, v1, v2, "Setting the audio session to soloAmbient and active...", v3, 2u);
    MEMORY[0x23EEB0B70](v3, -1, -1);
  }

  v4 = [objc_opt_self() sharedInstance];
  v5 = *MEMORY[0x277CB8048];
  v12[0] = 0;
  v6 = [v4 setCategory:v5 error:v12];
  v7 = v12[0];
  if (v6 && (v12[0] = 0, v8 = v7, v9 = [v4 setActive:1 withOptions:0 error:v12], v7 = v12[0], (v9 & 1) != 0))
  {
    v10 = v12[0];
  }

  else
  {
    v11 = v7;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }
}

void specialized SoundManager.handleEngineConfigChange(_:)(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Notification();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, logger);
  (*(v4 + 16))(v6, a1, v3);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v17 = v11;
    *v10 = 136446210;
    lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type Notification and conformance Notification, MEMORY[0x277CC8900], MEMORY[0x277CC8910]);
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    v14 = v13;
    (*(v4 + 8))(v6, v3);
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v14, &v17);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_23B824000, v8, v9, ">> Received audio engine config change: %{public}s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v11);
    MEMORY[0x23EEB0B70](v11, -1, -1);
    MEMORY[0x23EEB0B70](v10, -1, -1);
  }

  else
  {

    (*(v4 + 8))(v6, v3);
  }
}

id specialized FilterPipeCaptureSoundModule.startLoop(playStartSound:)()
{
  result = v0[2];
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  v2 = v0[11];
  if (!v2)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  [result scheduleBuffer:v2 atTime:0 options:0 completionHandler:0];
  result = v0[2];
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v3 = v0[12];
  if (!v3)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  [result scheduleBuffer:v3 atTime:0 options:1 completionHandler:0];
  result = v0[2];
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  LODWORD(v4) = 1.0;
  [result setVolume_];
  result = v0[2];
  if (!result)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  return [result play];
}

unint64_t lazy protocol witness table accessor for type SoundManager.Error and conformance SoundManager.Error(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type SoundManager.Error and conformance SoundManager.Error;
  if (!lazy protocol witness table cache variable for type SoundManager.Error and conformance SoundManager.Error)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SoundManager.Error and conformance SoundManager.Error);
  }

  return result;
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t lazy protocol witness table accessor for type URL and conformance URL(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

void type metadata completion function for StackableMiniView(uint64_t a1)
{
  type metadata accessor for ObservedObject<DataModel>(319);
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t getEnumTagSinglePayload for StackableMiniView(uint64_t a1, unsigned int a2, uint64_t a3)
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

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((*(*(*(a3 + 16) - 8) + 64) + ((v6 + 24) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v9 = a2 - v7;
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
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if ((v5 & 0x80000000) != 0)
    {
      return (*(v4 + 48))((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v6 + 8) & ~v6);
    }

    v17 = *(a1 + 8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

void *storeEnumTagSinglePayload for StackableMiniView(void *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(v5 + 80);
  v9 = ((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 24) & ~v8) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 24) & ~v8) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
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

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *(result + v9) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *(result + v9) = 0;
      }

      else if (v13)
      {
        *(result + v9) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if ((v6 & 0x80000000) != 0)
      {
        v18 = *(v5 + 56);
        v19 = (((result + 23) & 0xFFFFFFFFFFFFFFF8) + v8 + 8) & ~v8;

        return v18(v19);
      }

      else if ((a2 & 0x80000000) != 0)
      {
        *result = a2 & 0x7FFFFFFF;
        result[1] = 0;
      }

      else
      {
        result[1] = a2 - 1;
      }

      return result;
    }
  }

  if (((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 24) & ~v8) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 24) & ~v8) + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, v9);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *(result + v9) = v15;
    }

    else
    {
      *(result + v9) = v15;
    }
  }

  else if (v13)
  {
    *(result + v9) = v15;
  }

  return result;
}

uint64_t StackableMiniView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v4 = *(a1 + 16);
  v5 = type metadata accessor for ModifiedContent();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v20 - v7;
  v9 = type metadata accessor for ModifiedContent();
  v22 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v20 - v10;
  v21 = v2;
  static Alignment.center.getter();
  v12 = *(a1 + 24);
  View.frame(width:height:alignment:)();
  v31 = v12;
  v32 = MEMORY[0x277CDF678];
  WitnessTable = swift_getWitnessTable();
  View.fixedSize(horizontal:vertical:)();
  (*(v6 + 8))(v8, v5);
  v30 = 0;
  Transaction.disablesAnimations.setter();
  v24 = v4;
  v25 = v12;
  v26 = v21;
  v27 = v11;
  v28 = WitnessTable;
  v29 = MEMORY[0x277CDFC48];
  v14 = swift_getWitnessTable();
  type metadata accessor for BottomCenterView(255, v9, v14, v15);
  type metadata accessor for TopCenterView(255, v9, v14, v16);
  type metadata accessor for _ConditionalContent();
  type metadata accessor for LeftCenterView(255, v9, v14, v17);
  type metadata accessor for RightCenterView(255, v9, v14, v18);
  type metadata accessor for _ConditionalContent();
  type metadata accessor for _ConditionalContent();
  type metadata accessor for _ConditionalContent();
  type metadata accessor for Group();
  withTransaction<A>(_:_:)();

  return (*(v22 + 8))(v11, v9);
}

uint64_t closure #1 in StackableMiniView.body.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ModifiedContent();
  v4 = type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  WitnessTable = swift_getWitnessTable();
  type metadata accessor for BottomCenterView(255, v4, WitnessTable, v6);
  type metadata accessor for TopCenterView(255, v4, WitnessTable, v7);
  type metadata accessor for _ConditionalContent();
  type metadata accessor for LeftCenterView(255, v4, WitnessTable, v8);
  type metadata accessor for RightCenterView(255, v4, WitnessTable, v9);
  type metadata accessor for _ConditionalContent();
  type metadata accessor for _ConditionalContent();
  type metadata accessor for _ConditionalContent();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return Group<A>.init(content:)();
}

void closure #1 in closure #1 in StackableMiniView.body.getter(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *&v144 = a2;
  *&v145 = a3;
  v8 = type metadata accessor for ModifiedContent();
  v9 = type metadata accessor for ModifiedContent();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v14 = &v140 - v13;
  v15 = *(*(a1 + 8) + 16);
  v148 = a5;
  v149 = v8;
  v146 = v11;
  v147 = a4;
  if (!v15)
  {
    goto LABEL_4;
  }

  v16 = a4;
  v17 = v9;
  v18 = v15;
  v19 = dispatch thunk of ARView.__interfaceOrientation.getter();

  if (v19 > 2)
  {
    v9 = v17;
    if (v19 == 3)
    {
      v89 = v145;
      v90 = *(a1 + *(type metadata accessor for StackableMiniView(0, v145, v16, v12) + 44));
      (*(v10 + 16))(v14, v144, v17);
      v91 = (*(v10 + 80) + 32) & ~*(v10 + 80);
      v92 = swift_allocObject();
      *(v92 + 16) = v89;
      *(v92 + 24) = v16;
      (*(v10 + 32))(v92 + v91, v14, v17);
      v193 = v16;
      v194 = MEMORY[0x277CDF678];
      WitnessTable = swift_getWitnessTable();
      v192 = MEMORY[0x277CDFC48];
      v93 = swift_getWitnessTable();
      *&v222 = partial apply for closure #4 in closure #1 in closure #1 in StackableMiniView.body.getter;
      *(&v222 + 1) = v92;
      *&v223 = v90;
      v95 = type metadata accessor for RightCenterView(0, v17, v93, v94);
      v96 = swift_getWitnessTable();
      static ViewBuilder.buildExpression<A>(_:)();

      *&v145 = *(&v195 + 1);
      v222 = v195;
      *&v223 = v196;
      static ViewBuilder.buildExpression<A>(_:)();
      *&v144 = *(&v189 + 1);
      v219 = v189;
      v220 = v190;
      v98 = type metadata accessor for LeftCenterView(0, v17, v93, v97);
      v99 = v17;
      v100 = swift_getWitnessTable();
      static ViewBuilder.buildEither<A, B>(second:)(&v219, v98, v95);
      v143 = *(&v222 + 1);
      v101 = v222;
      LODWORD(v142) = BYTE8(v223);
      v182 = v222;
      v183 = v223;
      LOBYTE(v184) = BYTE8(v223);
      type metadata accessor for BottomCenterView(255, v99, v93, v102);
      type metadata accessor for TopCenterView(255, v99, v93, v103);
      v104 = type metadata accessor for _ConditionalContent();
      v105 = type metadata accessor for _ConditionalContent();
      v106 = swift_getWitnessTable();
      v107 = swift_getWitnessTable();
      v187 = v106;
      v188 = v107;
      v108 = swift_getWitnessTable();
      v185 = v100;
      v186 = v96;
      v141 = v105;
      v109 = swift_getWitnessTable();
      static ViewBuilder.buildEither<A, B>(second:)(&v182, v104, v105);
      outlined consume of StateObject<_RealityViewCameraModel>.Storage(v101, v143);
      v64 = *(&v219 + 1);
      v63 = v219;
      v182 = v219;
      v183 = v220;
      v184 = v221;
      v65 = type metadata accessor for _ConditionalContent();
      v180 = v108;
      v181 = v109;
    }

    else
    {
      a4 = v16;
      if (v19 != 4)
      {
        goto LABEL_14;
      }

      v43 = v145;
      v44 = *(a1 + *(type metadata accessor for StackableMiniView(0, v145, v16, v12) + 44));
      (*(v10 + 16))(v14, v144, v9);
      v45 = (*(v10 + 80) + 32) & ~*(v10 + 80);
      v46 = swift_allocObject();
      *(v46 + 16) = v43;
      *(v46 + 24) = v16;
      (*(v10 + 32))(v46 + v45, v14, v9);
      v178 = v16;
      v179 = MEMORY[0x277CDF678];
      v176 = swift_getWitnessTable();
      v177 = MEMORY[0x277CDFC48];
      v47 = swift_getWitnessTable();
      *&v222 = partial apply for closure #4 in closure #1 in closure #1 in StackableMiniView.body.getter;
      *(&v222 + 1) = v46;
      *&v223 = v44;
      v49 = type metadata accessor for LeftCenterView(0, v9, v47, v48);
      v50 = swift_getWitnessTable();
      static ViewBuilder.buildExpression<A>(_:)();

      *&v145 = *(&v195 + 1);
      v222 = v195;
      *&v223 = v196;
      static ViewBuilder.buildExpression<A>(_:)();
      *&v144 = *(&v189 + 1);
      v219 = v189;
      v220 = v190;
      type metadata accessor for RightCenterView(0, v9, v47, v51);
      v52 = v9;
      v53 = swift_getWitnessTable();
      static ViewBuilder.buildEither<A, B>(first:)(&v219, v49);
      v54 = *(&v222 + 1);
      v142 = v223;
      v143 = v222;
      v182 = v222;
      v183 = v223;
      LOBYTE(v184) = BYTE8(v223);
      type metadata accessor for BottomCenterView(255, v52, v47, v55);
      type metadata accessor for TopCenterView(255, v52, v47, v56);
      v57 = type metadata accessor for _ConditionalContent();
      v58 = type metadata accessor for _ConditionalContent();
      v59 = swift_getWitnessTable();
      v60 = swift_getWitnessTable();
      v174 = v59;
      v175 = v60;
      v61 = swift_getWitnessTable();
      v172 = v50;
      v173 = v53;
      v141 = v58;
      v62 = swift_getWitnessTable();
      static ViewBuilder.buildEither<A, B>(second:)(&v182, v57, v58);
      outlined consume of StateObject<_RealityViewCameraModel>.Storage(v143, v54);
      v64 = *(&v219 + 1);
      v63 = v219;
      v182 = v219;
      v183 = v220;
      v184 = v221;
      v65 = type metadata accessor for _ConditionalContent();
      v170 = v61;
      v171 = v62;
    }

    swift_getWitnessTable();
    static ViewBuilder.buildEither<A, B>(first:)(&v182, v65);
    v41 = v63;
    v42 = v64;
    goto LABEL_12;
  }

  v9 = v17;
  a4 = v16;
  if (v19 >= 2)
  {
    if (v19 == 2)
    {
      v66 = v145;
      v67 = *(a1 + *(type metadata accessor for StackableMiniView(0, v145, v16, v12) + 44));
      (*(v10 + 16))(v14, v144, v9);
      v68 = (*(v10 + 80) + 32) & ~*(v10 + 80);
      v69 = swift_allocObject();
      *(v69 + 16) = v66;
      *(v69 + 24) = v16;
      (*(v10 + 32))(v69 + v68, v14, v9);
      v168 = v16;
      v169 = MEMORY[0x277CDF678];
      v166 = swift_getWitnessTable();
      v167 = MEMORY[0x277CDFC48];
      v70 = swift_getWitnessTable();
      *&v222 = partial apply for closure #2 in closure #1 in closure #1 in StackableMiniView.body.getter;
      *(&v222 + 1) = v69;
      *&v223 = v67;
      v72 = v9;
      v73 = type metadata accessor for TopCenterView(0, v9, v70, v71);
      v74 = swift_getWitnessTable();
      static ViewBuilder.buildExpression<A>(_:)();

      *&v145 = *(&v195 + 1);
      v222 = v195;
      *&v223 = v196;
      static ViewBuilder.buildExpression<A>(_:)();
      *&v144 = *(&v189 + 1);
      v219 = v189;
      v220 = v190;
      v76 = type metadata accessor for BottomCenterView(0, v72, v70, v75);
      v77 = swift_getWitnessTable();
      static ViewBuilder.buildEither<A, B>(second:)(&v219, v76, v73);
      v78 = *(&v222 + 1);
      v142 = v223;
      v143 = v222;
      v182 = v222;
      v183 = v223;
      LOBYTE(v184) = BYTE8(v223);
      v79 = type metadata accessor for _ConditionalContent();
      type metadata accessor for LeftCenterView(255, v72, v70, v80);
      type metadata accessor for RightCenterView(255, v72, v70, v81);
      type metadata accessor for _ConditionalContent();
      v164 = v77;
      v165 = v74;
      v141 = MEMORY[0x277CE0340];
      v82 = v79;
      v83 = swift_getWitnessTable();
      v84 = swift_getWitnessTable();
      v85 = swift_getWitnessTable();
      v162 = v84;
      v163 = v85;
      v86 = swift_getWitnessTable();
      static ViewBuilder.buildEither<A, B>(first:)(&v182, v82);
      outlined consume of StateObject<_RealityViewCameraModel>.Storage(v143, v78);
      v87 = v219;
      v182 = v219;
      v183 = v220;
      v184 = v221;
      v88 = type metadata accessor for _ConditionalContent();
      v160 = v83;
      v161 = v86;
      swift_getWitnessTable();
      static ViewBuilder.buildEither<A, B>(first:)(&v182, v88);
      v42 = v87 >> 64;
      v41 = v87;
      goto LABEL_12;
    }

LABEL_14:
    LocalizedStringKey.init(stringLiteral:)();
    *&v144 = Text.init(_:tableName:bundle:comment:)();
    v124 = v123;
    *&v145 = v125;
    *&v219 = v144;
    *(&v219 + 1) = v123;
    v127 = v126 & 1;
    LOBYTE(v220) = v126 & 1;
    v221 = v125;
    v217 = a4;
    v218 = MEMORY[0x277CDF678];
    v215 = swift_getWitnessTable();
    v216 = MEMORY[0x277CDFC48];
    v128 = swift_getWitnessTable();
    type metadata accessor for BottomCenterView(255, v9, v128, v129);
    type metadata accessor for TopCenterView(255, v9, v128, v130);
    type metadata accessor for _ConditionalContent();
    type metadata accessor for LeftCenterView(255, v9, v128, v131);
    type metadata accessor for RightCenterView(255, v9, v128, v132);
    type metadata accessor for _ConditionalContent();
    v133 = type metadata accessor for _ConditionalContent();
    v134 = swift_getWitnessTable();
    v135 = swift_getWitnessTable();
    v213 = v134;
    v214 = v135;
    v136 = swift_getWitnessTable();
    v137 = swift_getWitnessTable();
    v138 = swift_getWitnessTable();
    v211 = v137;
    v212 = v138;
    v139 = swift_getWitnessTable();
    v209 = v136;
    v210 = v139;
    swift_getWitnessTable();
    static ViewBuilder.buildEither<A, B>(second:)(&v219, v133, MEMORY[0x277CE0BD8]);
    outlined consume of Text.Storage(v144, v124, v127);

    goto LABEL_13;
  }

LABEL_4:
  v20 = v145;
  v21 = *(a1 + *(type metadata accessor for StackableMiniView(0, v145, a4, v12) + 44));
  (*(v10 + 16))(v14, v144, v9);
  v22 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = v20;
  *(v23 + 24) = a4;
  (*(v10 + 32))(v23 + v22, v14, v9);
  v158 = a4;
  v159 = MEMORY[0x277CDF678];
  v156 = swift_getWitnessTable();
  v157 = MEMORY[0x277CDFC48];
  v24 = swift_getWitnessTable();
  *&v222 = partial apply for closure #4 in closure #1 in closure #1 in StackableMiniView.body.getter;
  *(&v222 + 1) = v23;
  *&v223 = v21;
  v26 = type metadata accessor for BottomCenterView(0, v9, v24, v25);
  v27 = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)();

  *&v145 = *(&v195 + 1);
  v222 = v195;
  *&v223 = v196;
  static ViewBuilder.buildExpression<A>(_:)();
  *&v144 = *(&v189 + 1);
  v219 = v189;
  v220 = v190;
  type metadata accessor for TopCenterView(0, v9, v24, v28);
  v29 = swift_getWitnessTable();
  static ViewBuilder.buildEither<A, B>(first:)(&v219, v26);
  v30 = v222;
  v143 = v223;
  LODWORD(v142) = BYTE8(v223);
  v182 = v222;
  v183 = v223;
  LOBYTE(v184) = BYTE8(v223);
  v31 = type metadata accessor for _ConditionalContent();
  type metadata accessor for LeftCenterView(255, v9, v24, v32);
  type metadata accessor for RightCenterView(255, v9, v24, v33);
  type metadata accessor for _ConditionalContent();
  v154 = v27;
  v155 = v29;
  v141 = MEMORY[0x277CE0340];
  v34 = v31;
  v35 = swift_getWitnessTable();
  v36 = swift_getWitnessTable();
  v37 = swift_getWitnessTable();
  v152 = v36;
  v153 = v37;
  v38 = swift_getWitnessTable();
  static ViewBuilder.buildEither<A, B>(first:)(&v182, v34);
  outlined consume of StateObject<_RealityViewCameraModel>.Storage(v30, *(&v30 + 1));
  v39 = v219;
  v182 = v219;
  v183 = v220;
  v184 = v221;
  v40 = type metadata accessor for _ConditionalContent();
  v150 = v35;
  v151 = v38;
  swift_getWitnessTable();
  static ViewBuilder.buildEither<A, B>(first:)(&v182, v40);
  v42 = v39 >> 64;
  v41 = v39;
LABEL_12:
  outlined consume of _ConditionalContent<_ConditionalContent<BottomCenterView<ModifiedContent<ModifiedContent<A, _FrameLayout>, _FixedSizeLayout>>, TopCenterView<ModifiedContent<ModifiedContent<A, _FrameLayout>, _FixedSizeLayout>>>, _ConditionalContent<LeftCenterView<ModifiedContent<ModifiedContent<A, _FrameLayout>, _FixedSizeLayout>>, RightCenterView<ModifiedContent<ModifiedContent<A, _FrameLayout>, _FixedSizeLayout>>>>.Storage<A>(v41, v42);

LABEL_13:
  v110 = v224;
  v144 = v222;
  v145 = v223;
  v207 = v147;
  v208 = MEMORY[0x277CDF678];
  v205 = swift_getWitnessTable();
  v206 = MEMORY[0x277CDFC48];
  v111 = v146;
  v112 = swift_getWitnessTable();
  type metadata accessor for BottomCenterView(255, v111, v112, v113);
  type metadata accessor for TopCenterView(255, v111, v112, v114);
  type metadata accessor for _ConditionalContent();
  type metadata accessor for LeftCenterView(255, v111, v112, v115);
  type metadata accessor for RightCenterView(255, v111, v112, v116);
  type metadata accessor for _ConditionalContent();
  type metadata accessor for _ConditionalContent();
  type metadata accessor for _ConditionalContent();
  v117 = swift_getWitnessTable();
  v118 = swift_getWitnessTable();
  v203 = v117;
  v204 = v118;
  v119 = swift_getWitnessTable();
  v120 = swift_getWitnessTable();
  v121 = swift_getWitnessTable();
  v201 = v120;
  v202 = v121;
  v122 = swift_getWitnessTable();
  v199 = v119;
  v200 = v122;
  v197 = swift_getWitnessTable();
  v198 = MEMORY[0x277CE0BC8];
  swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)();
  outlined consume of _ConditionalContent<_ConditionalContent<_ConditionalContent<BottomCenterView<ModifiedContent<ModifiedContent<A, _FrameLayout>, _FixedSizeLayout>>, TopCenterView<ModifiedContent<ModifiedContent<A, _FrameLayout>, _FixedSizeLayout>>>, _ConditionalContent<LeftCenterView<ModifiedContent<ModifiedContent<A, _FrameLayout>, _FixedSizeLayout>>, RightCenterView<ModifiedContent<ModifiedContent<A, _FrameLayout>, _FixedSizeLayout>>>>, Text>.Storage<A>(v144, *(&v144 + 1), v145, *(&v145 + 1), v110);
}

uint64_t closure #2 in closure #1 in closure #1 in StackableMiniView.body.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for ModifiedContent();
  v4 = type metadata accessor for ModifiedContent();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v9 - v6;
  v9[2] = a3;
  v9[3] = MEMORY[0x277CDF678];
  v9[0] = swift_getWitnessTable();
  v9[1] = MEMORY[0x277CDFC48];
  swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)();
  static ViewBuilder.buildExpression<A>(_:)();
  return (*(v5 + 8))(v7, v4);
}

void outlined consume of _ConditionalContent<_ConditionalContent<_ConditionalContent<BottomCenterView<ModifiedContent<ModifiedContent<A, _FrameLayout>, _FixedSizeLayout>>, TopCenterView<ModifiedContent<ModifiedContent<A, _FrameLayout>, _FixedSizeLayout>>>, _ConditionalContent<LeftCenterView<ModifiedContent<ModifiedContent<A, _FrameLayout>, _FixedSizeLayout>>, RightCenterView<ModifiedContent<ModifiedContent<A, _FrameLayout>, _FixedSizeLayout>>>>, Text>.Storage<A>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, char a5)
{
  if (a5)
  {
    outlined consume of Text.Storage(a1, a2, a3 & 1);
  }

  else
  {

    outlined consume of _ConditionalContent<_ConditionalContent<BottomCenterView<ModifiedContent<ModifiedContent<A, _FrameLayout>, _FixedSizeLayout>>, TopCenterView<ModifiedContent<ModifiedContent<A, _FrameLayout>, _FixedSizeLayout>>>, _ConditionalContent<LeftCenterView<ModifiedContent<ModifiedContent<A, _FrameLayout>, _FixedSizeLayout>>, RightCenterView<ModifiedContent<ModifiedContent<A, _FrameLayout>, _FixedSizeLayout>>>>.Storage<A>(a1, a2);
  }
}

uint64_t partial apply for closure #4 in closure #1 in closure #1 in StackableMiniView.body.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  type metadata accessor for ModifiedContent();
  v3 = *(type metadata accessor for ModifiedContent() - 8);
  return closure #2 in closure #1 in closure #1 in StackableMiniView.body.getter(v0 + ((*(v3 + 80) + 32) & ~*(v3 + 80)), v1, v2);
}

uint64_t objectdestroyTm_8()
{
  v1 = *(v0 + 16);
  type metadata accessor for ModifiedContent();
  v2 = *(type metadata accessor for ModifiedContent() - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  (*(*(v1 - 8) + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t RightCenterView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>)
{
  v20[1] = a5;
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for HStack();
  swift_getTupleTypeMetadata3();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  v11 = type metadata accessor for VStack();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = v20 - v16;
  v20[4] = a3;
  v20[5] = a4;
  v20[6] = a1;
  v20[7] = a2;
  *&v20[8] = a6;
  static HorizontalAlignment.center.getter();
  VStack.init(alignment:spacing:content:)();
  swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)();
  v18 = *(v12 + 8);
  v18(v15, v11);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v18)(v17, v11);
}

uint64_t closure #1 in RightCenterView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>)
{
  v21[1] = a5;
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  v11 = type metadata accessor for HStack();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = v21 - v16;
  v21[4] = a3;
  v21[5] = a4;
  v21[6] = a1;
  v21[7] = a2;
  *&v21[8] = a6;
  static VerticalAlignment.center.getter();
  HStack.init(alignment:spacing:content:)();
  WitnessTable = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)();
  v19 = *(v12 + 8);
  v19(v15, v11);
  v25 = 0;
  v26 = 1;
  v27[0] = &v25;
  (*(v12 + 16))(v15, v17, v11);
  v23 = 0;
  v24 = 1;
  v27[1] = v15;
  v27[2] = &v23;
  v22[0] = MEMORY[0x277CE1180];
  v22[1] = v11;
  v22[2] = MEMORY[0x277CE1180];
  v21[10] = MEMORY[0x277CE1170];
  v21[11] = WitnessTable;
  v21[12] = MEMORY[0x277CE1170];
  static ViewBuilder.buildBlock<each A>(_:)(v27, 3uLL, v22);
  v19(v17, v11);
  return (v19)(v15, v11);
}

uint64_t closure #1 in closure #1 in RightCenterView.body.getter@<X0>(uint64_t (*a1)(uint64_t)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v27 = a1;
  v29 = a4;
  v7 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ModifiedContent();
  v28 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v26 - v11;
  v13 = type metadata accessor for ModifiedContent();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v26 = &v26 - v19;
  v27(v18);
  static Edge.Set.trailing.getter();
  View.padding(_:_:)();
  (*(v7 + 8))(v9, a2);
  static Edge.Set.trailing.getter();
  v20 = MEMORY[0x277CDF918];
  v35[4] = a3;
  v35[5] = MEMORY[0x277CDF918];
  WitnessTable = swift_getWitnessTable();
  View.padding(_:_:)();
  (*(v28 + 8))(v12, v10);
  v35[2] = WitnessTable;
  v35[3] = v20;
  v22 = swift_getWitnessTable();
  v23 = v26;
  static ViewBuilder.buildExpression<A>(_:)();
  v24 = *(v14 + 8);
  v24(v17, v13);
  v33 = 0;
  v34 = 1;
  v35[0] = &v33;
  (*(v14 + 16))(v17, v23, v13);
  v35[1] = v17;
  v32[0] = MEMORY[0x277CE1180];
  v32[1] = v13;
  v30 = MEMORY[0x277CE1170];
  v31 = v22;
  static ViewBuilder.buildBlock<each A>(_:)(v35, 2uLL, v32);
  v24(v23, v13);
  return (v24)(v17, v13);
}

uint64_t LeftCenterView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>)
{
  v20[1] = a5;
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for HStack();
  swift_getTupleTypeMetadata3();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  v11 = type metadata accessor for VStack();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = v20 - v16;
  v20[4] = a3;
  v20[5] = a4;
  v20[6] = a1;
  v20[7] = a2;
  *&v20[8] = a6;
  static HorizontalAlignment.center.getter();
  VStack.init(alignment:spacing:content:)();
  swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)();
  v18 = *(v12 + 8);
  v18(v15, v11);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v18)(v17, v11);
}

uint64_t closure #1 in LeftCenterView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>)
{
  v21[1] = a5;
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  v11 = type metadata accessor for HStack();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = v21 - v16;
  v21[4] = a3;
  v21[5] = a4;
  v21[6] = a1;
  v21[7] = a2;
  *&v21[8] = a6;
  static VerticalAlignment.center.getter();
  HStack.init(alignment:spacing:content:)();
  WitnessTable = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)();
  v19 = *(v12 + 8);
  v19(v15, v11);
  v25 = 0;
  v26 = 1;
  v27[0] = &v25;
  (*(v12 + 16))(v15, v17, v11);
  v23 = 0;
  v24 = 1;
  v27[1] = v15;
  v27[2] = &v23;
  v22[0] = MEMORY[0x277CE1180];
  v22[1] = v11;
  v22[2] = MEMORY[0x277CE1180];
  v21[10] = MEMORY[0x277CE1170];
  v21[11] = WitnessTable;
  v21[12] = MEMORY[0x277CE1170];
  static ViewBuilder.buildBlock<each A>(_:)(v27, 3uLL, v22);
  v19(v17, v11);
  return (v19)(v15, v11);
}

uint64_t closure #1 in closure #1 in LeftCenterView.body.getter@<X0>(uint64_t (*a1)(uint64_t)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v27 = a1;
  v29 = a4;
  v7 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ModifiedContent();
  v28 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v26 - v11;
  v13 = type metadata accessor for ModifiedContent();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v26 = &v26 - v19;
  v27(v18);
  static Edge.Set.leading.getter();
  View.padding(_:_:)();
  (*(v7 + 8))(v9, a2);
  static Edge.Set.leading.getter();
  v20 = MEMORY[0x277CDF918];
  v35[4] = a3;
  v35[5] = MEMORY[0x277CDF918];
  WitnessTable = swift_getWitnessTable();
  View.padding(_:_:)();
  (*(v28 + 8))(v12, v10);
  v35[2] = WitnessTable;
  v35[3] = v20;
  v22 = swift_getWitnessTable();
  v23 = v26;
  static ViewBuilder.buildExpression<A>(_:)();
  v24 = *(v14 + 8);
  v24(v17, v13);
  (*(v14 + 16))(v17, v23, v13);
  v33 = 0;
  v34 = 1;
  v35[0] = v17;
  v35[1] = &v33;
  v32[0] = v13;
  v32[1] = MEMORY[0x277CE1180];
  v30 = v22;
  v31 = MEMORY[0x277CE1170];
  static ViewBuilder.buildBlock<each A>(_:)(v35, 2uLL, v32);
  v24(v23, v13);
  return (v24)(v17, v13);
}

uint64_t BottomCenterView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>)
{
  v20[1] = a5;
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata3();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for HStack();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  v11 = type metadata accessor for VStack();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = v20 - v16;
  v20[4] = a3;
  v20[5] = a4;
  v20[6] = a1;
  v20[7] = a2;
  *&v20[8] = a6;
  static HorizontalAlignment.center.getter();
  VStack.init(alignment:spacing:content:)();
  swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)();
  v18 = *(v12 + 8);
  v18(v15, v11);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v18)(v17, v11);
}

uint64_t closure #1 in BottomCenterView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>)
{
  v21[1] = a5;
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata3();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  v11 = type metadata accessor for HStack();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = v21 - v16;
  v21[4] = a3;
  v21[5] = a4;
  v21[6] = a1;
  v21[7] = a2;
  *&v21[8] = a6;
  static VerticalAlignment.center.getter();
  HStack.init(alignment:spacing:content:)();
  WitnessTable = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)();
  v19 = *(v12 + 8);
  v19(v15, v11);
  v23 = 0;
  v24 = 1;
  v25[0] = &v23;
  (*(v12 + 16))(v15, v17, v11);
  v25[1] = v15;
  v22[0] = MEMORY[0x277CE1180];
  v22[1] = v11;
  v21[9] = MEMORY[0x277CE1170];
  v21[10] = WitnessTable;
  static ViewBuilder.buildBlock<each A>(_:)(v25, 2uLL, v22);
  v19(v17, v11);
  return (v19)(v15, v11);
}

uint64_t TopCenterView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>)
{
  v20[1] = a5;
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata3();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for HStack();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  v11 = type metadata accessor for VStack();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = v20 - v16;
  v20[4] = a3;
  v20[5] = a4;
  v20[6] = a1;
  v20[7] = a2;
  *&v20[8] = a6;
  static HorizontalAlignment.center.getter();
  VStack.init(alignment:spacing:content:)();
  swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)();
  v18 = *(v12 + 8);
  v18(v15, v11);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v18)(v17, v11);
}

uint64_t closure #1 in TopCenterView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>)
{
  v21[1] = a5;
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata3();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  v11 = type metadata accessor for HStack();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = v21 - v16;
  v21[4] = a3;
  v21[5] = a4;
  v21[6] = a1;
  v21[7] = a2;
  *&v21[8] = a6;
  static VerticalAlignment.center.getter();
  HStack.init(alignment:spacing:content:)();
  WitnessTable = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)();
  v19 = *(v12 + 8);
  v19(v15, v11);
  (*(v12 + 16))(v15, v17, v11);
  v23 = 0;
  v24 = 1;
  v25[0] = v15;
  v25[1] = &v23;
  v22[0] = v11;
  v22[1] = MEMORY[0x277CE1180];
  v21[9] = WitnessTable;
  v21[10] = MEMORY[0x277CE1170];
  static ViewBuilder.buildBlock<each A>(_:)(v25, 2uLL, v22);
  v19(v17, v11);
  return (v19)(v15, v11);
}

uint64_t closure #1 in closure #1 in BottomCenterView.body.getter@<X0>(uint64_t (*a1)(uint64_t)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t (*a4)(uint64_t)@<X4>, uint64_t a5@<X8>)
{
  v34 = a3;
  v36 = a5;
  v33 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ModifiedContent();
  v35 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v31 - v12;
  v14 = type metadata accessor for ModifiedContent();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v32 = &v31 - v20;
  v21 = a1(v19);
  v22 = a4;
  a4(v21);
  v23 = v34;
  View.padding(_:_:)();
  v24 = (*(v33 + 8))(v10, a2);
  v22(v24);
  v25 = MEMORY[0x277CDF918];
  v45[5] = v23;
  v45[6] = MEMORY[0x277CDF918];
  WitnessTable = swift_getWitnessTable();
  View.padding(_:_:)();
  (*(v35 + 8))(v13, v11);
  v45[3] = WitnessTable;
  v45[4] = v25;
  v27 = swift_getWitnessTable();
  v28 = v32;
  static ViewBuilder.buildExpression<A>(_:)();
  v29 = *(v15 + 8);
  v29(v18, v14);
  v43 = 0;
  v44 = 1;
  v45[0] = &v43;
  (*(v15 + 16))(v18, v28, v14);
  v41 = 0;
  v42 = 1;
  v45[1] = v18;
  v45[2] = &v41;
  v40[0] = MEMORY[0x277CE1180];
  v40[1] = v14;
  v40[2] = MEMORY[0x277CE1180];
  v37 = MEMORY[0x277CE1170];
  v38 = v27;
  v39 = MEMORY[0x277CE1170];
  static ViewBuilder.buildBlock<each A>(_:)(v45, 3uLL, v40);
  v29(v28, v14);
  return (v29)(v18, v14);
}

uint64_t type metadata instantiation function for RightCenterView(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t type metadata instantiation function for LeftCenterView(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t type metadata instantiation function for TopCenterView(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t type metadata instantiation function for BottomCenterView(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t GestureComponent.init<A>(_:)(uint64_t a1, uint64_t a2)
{
  _bridgeAnythingToObjectiveC<A>(_:)();
  GestureComponent.init(object:)();
  v4 = *(*(a2 - 8) + 8);

  return v4(a1, a2);
}

Swift::Void __swiftcall InteractiveCameraTransformManager.onStartDrag(pointView:)(CGPoint_optional pointView)
{
  v2 = v1;
  is_nil = pointView.is_nil;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8Dispatch0A4TimeVSgMd, &_s8Dispatch0A4TimeVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9 - v5;
  if ((*(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI33InteractiveCameraTransformManager_projection + 64) & 1) == 0)
  {
    if (*(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI33InteractiveCameraTransformManager_turnTableCameraControl))
    {

      v10.is_nil = is_nil;
      TurnTableCameraControl.onStartDrag(pointView:)(v10);

      static DispatchTime.now()();
      v7 = type metadata accessor for DispatchTime();
      (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
      v8 = OBJC_IVAR____TtC19_RealityKit_SwiftUI33InteractiveCameraTransformManager_startTime;
      swift_beginAccess();
      outlined assign with take of DispatchTime?(v6, v2 + v8);
      swift_endAccess();
    }

    else
    {
      __break(1u);
    }
  }
}

void InteractiveCameraTransformManager.init(radius:springDelay:springTime:)(uint64_t a1, float a2, double a3, double a4)
{
  *(v4 + OBJC_IVAR____TtC19_RealityKit_SwiftUI33InteractiveCameraTransformManager_time) = 0;
  v8 = (v4 + OBJC_IVAR____TtC19_RealityKit_SwiftUI33InteractiveCameraTransformManager_arCameraTransform);
  Transform.init()();
  *v8 = v9;
  v8[1] = v10;
  v8[2] = v11;
  v12 = (v4 + OBJC_IVAR____TtC19_RealityKit_SwiftUI33InteractiveCameraTransformManager_boundingBoxWorld);
  v13 = *(MEMORY[0x277D860B8] + 16);
  v14 = *(MEMORY[0x277D860B8] + 32);
  v15 = *(MEMORY[0x277D860B8] + 48);
  *v12 = *MEMORY[0x277D860B8];
  v12[1] = v13;
  v12[2] = v14;
  v12[3] = v15;
  v16 = v4 + OBJC_IVAR____TtC19_RealityKit_SwiftUI33InteractiveCameraTransformManager_projection;
  v34 = 1;
  *v16 = 0u;
  *(v16 + 16) = 0u;
  *(v16 + 32) = 0u;
  *(v16 + 48) = 0u;
  *(v16 + 64) = 1;
  *(v4 + OBJC_IVAR____TtC19_RealityKit_SwiftUI33InteractiveCameraTransformManager_turnTableCameraControl) = 0;
  *(v4 + OBJC_IVAR____TtC19_RealityKit_SwiftUI33InteractiveCameraTransformManager_dragGesture) = 0;
  v17 = OBJC_IVAR____TtC19_RealityKit_SwiftUI33InteractiveCameraTransformManager_startTime;
  v18 = type metadata accessor for DispatchTime();
  (*(*(v18 - 8) + 56))(&v17[v4], 1, 1, v18);
  *(v4 + OBJC_IVAR____TtC19_RealityKit_SwiftUI33InteractiveCameraTransformManager_ignoreARCameraTracking) = 0;
  *(v4 + OBJC_IVAR____TtC19_RealityKit_SwiftUI33InteractiveCameraTransformManager_boxProjectionPadding) = 1066192077;
  if (a3 < 0.0)
  {
    __break(1u);
  }

  else
  {
    *(v4 + OBJC_IVAR____TtC19_RealityKit_SwiftUI33InteractiveCameraTransformManager_springDelay) = a3;
    if (a4 > 0.0)
    {
      *(v4 + OBJC_IVAR____TtC19_RealityKit_SwiftUI33InteractiveCameraTransformManager_springTime) = a4;
      v33.receiver = v4;
      v33.super_class = type metadata accessor for InteractiveCameraTransformManager(0);
      v19 = objc_msgSendSuper2(&v33, sel_init);
      v20 = objc_allocWithZone(type metadata accessor for DragGestureRecognizer());
      v17 = v19;
      v21 = specialized DragGestureRecognizer.init(draggable:)(v17, v20);
      v22 = *&v17[OBJC_IVAR____TtC19_RealityKit_SwiftUI33InteractiveCameraTransformManager_dragGesture];
      *&v17[OBJC_IVAR____TtC19_RealityKit_SwiftUI33InteractiveCameraTransformManager_dragGesture] = v21;

      _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #0 of InteractiveCameraTransformManager.init(radius:springDelay:springTime:));
      v32 = v23;
      type metadata accessor for TurnTableCameraControl();
      v4 = swift_allocObject();
      *(v4 + 24) = 0;
      swift_unknownObjectWeakInit();
      _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #1 of InteractiveCameraTransformManager.init(radius:springDelay:springTime:));
      *(v4 + 80) = v24;
      *(v4 + 128) = 0;
      *(v4 + 136) = 0;
      *(v4 + 144) = 1;
      Transform.init()();
      *(v4 + 160) = v25;
      *(v4 + 176) = v26;
      *(v4 + 192) = v27;
      if (one-time initialization token for minElevation == -1)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_13:
  swift_once();
LABEL_4:
  v28 = static TurnTableCameraControl.SphericalCoordinates.minElevation;
  if (*&static TurnTableCameraControl.SphericalCoordinates.minElevation > 1.5608)
  {
    __break(1u);
  }

  else
  {
    v29 = 0.0;
    if (*&static TurnTableCameraControl.SphericalCoordinates.minElevation < 0.0)
    {
      v30 = 0.0;
    }

    else
    {
      v30 = *&static TurnTableCameraControl.SphericalCoordinates.minElevation;
    }

    if (a2 > 0.0)
    {
      v29 = a2;
    }

    *(v4 + 40) = 0;
    *(v4 + 44) = v30;
    *(v4 + 48) = v28;
    *(v4 + 52) = 1070057517;
    *(v4 + 56) = v29;
    *(v4 + 60) = 0x7F80000000000000;
    *(v4 + 80) = v32;
    *(v4 + 32) = vdup_n_s32(0x3C23D70Au);
    *(v4 + 24) = &protocol witness table for InteractiveCameraTransformManager;
    swift_unknownObjectWeakAssign();

    v31 = *(v4 + 64);
    *(v4 + 96) = *(v4 + 40);
    *(v4 + 112) = *(v4 + 56);
    *(v4 + 120) = v31;
    *&v17[OBJC_IVAR____TtC19_RealityKit_SwiftUI33InteractiveCameraTransformManager_turnTableCameraControl] = v4;
  }
}