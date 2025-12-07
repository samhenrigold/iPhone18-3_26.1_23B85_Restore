void partial apply for closure #5 in DetailsViewController.addTabToViewHierarchy(_:)(__int128 *a1)
{
  v4 = *a1;
  v5 = a1[1];
  v1 = *(a1 + 4);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v6[0] = v4;
    v6[1] = v5;
    v7 = v1;
    (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x250))(v6);
  }
}

uint64_t outlined init with copy of CollectionOfOne<DetailsTab>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss15CollectionOfOneVy20CommunicationDetails0E3TabVGMd, &_ss15CollectionOfOneVy20CommunicationDetails0E3TabVGMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double DetailsTabBarViewRepresentable.init(viewModel:styleGuide:)@<D0>(__int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v9 = a2[2];
  v10 = a2[3];
  v11 = a2[4];
  v12 = a2[5];
  v7 = *a2;
  v8 = a2[1];
  type metadata accessor for HorizontalTabControl.ViewModel(0);
  State.init(wrappedValue:)();
  *a3 = v5;
  *(a3 + 8) = v6;
  *(a3 + 48) = v9;
  *(a3 + 64) = v10;
  *(a3 + 80) = v11;
  *(a3 + 96) = v12;
  result = *&v7;
  *(a3 + 16) = v7;
  *(a3 + 32) = v8;
  return result;
}

void *DetailsTabBarViewRepresentable.makeUIView(context:)()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  type metadata accessor for DetailsTabBarView(0);
  v3 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI26UIViewRepresentableContextVy20CommunicationDetails0g10TabBarViewD0VGMd, &_s7SwiftUI26UIViewRepresentableContextVy20CommunicationDetails0g10TabBarViewD0VGMR);
  UIViewRepresentableContext.coordinator.getter();
  [v3 addTarget:v8[0] action:sel_selectedTabDidChange_ forControlEvents:4096];

  if (v2)
  {
    v4 = 0;
  }

  else
  {
    v4 = v1;
  }

  v8[0] = 0;
  v8[1] = v4;
  v8[2] = 0;
  v8[3] = v4;
  v9 = v2;
  v5 = DetailsTabBarView.Configuration.init(preferredLayoutMargins:)(v8, v7);
  (*((*MEMORY[0x1E69E7D40] & *v3) + 0xF0))(v7, v5);
  return v3;
}

void DetailsTabBarViewRepresentable.updateUIView(_:context:)(void *a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = MEMORY[0x1E69E7D40];
  v6 = *((*((*MEMORY[0x1E69E7D40] & *a1) + 0xD0))() + 16);

  *&v18 = v3;
  *(&v18 + 1) = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy20CommunicationDetails20HorizontalTabControlV9ViewModelCGMd, &_s7SwiftUI5StateVy20CommunicationDetails20HorizontalTabControlV9ViewModelCGMR);
  v7 = State.wrappedValue.getter();
  v8 = (*(*v15 + 136))(v7);

  v9 = *(v8 + 16);

  *&v18 = v3;
  *(&v18 + 1) = v4;
  v10 = State.wrappedValue.getter();
  v11 = (*(*v15 + 136))(v10);

  v12 = (*((*v5 & *a1) + 0xD8))(v11);
  (*((*v5 & *a1) + 0x100))(&v18, v12);
  if (*(&v18 + 1))
  {
    outlined consume of DetailsTab?(v18, *(&v18 + 1), v19, *(&v19 + 1), v20);
    v13 = v6 == v9;
  }

  else
  {
    v13 = 0;
  }

  *&v18 = v3;
  *(&v18 + 1) = v4;
  v14 = State.wrappedValue.getter();
  (*(*v15 + 184))(&v18, v14);

  v15 = v18;
  v16 = v19;
  v17 = v20;
  (*((*v5 & *a1) + 0x1A8))(&v15, v13);
  outlined consume of DetailsTab?(v15, *(&v15 + 1), v16, *(&v16 + 1), v17);
}

double DetailsTabBarViewRepresentable.sizeThatFits(_:uiView:context:)(uint64_t a1, char a2, uint64_t a3, char a4, id a5)
{
  v6 = 10.0;
  if (a2)
  {
    *&a1 = 10.0;
  }

  if ((a4 & 1) == 0)
  {
    v6 = *&a3;
  }

  [a5 sizeThatFits_];
  return result;
}

uint64_t DetailsTabBarViewRepresentable.makeCoordinator()()
{
  v0 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy20CommunicationDetails20HorizontalTabControlV9ViewModelCGMd, &_s7SwiftUI5StateVy20CommunicationDetails20HorizontalTabControlV9ViewModelCGMR);
  State.wrappedValue.getter();
  swift_weakInit();

  type metadata accessor for DetailsTabBarViewRepresentable.Coordinator();
  result = swift_allocObject();
  *(result + 16) = partial apply for closure #1 in DetailsTabBarViewRepresentable.makeCoordinator();
  *(result + 24) = v0;
  return result;
}

double closure #1 in DetailsTabBarViewRepresentable.makeCoordinator()(__int128 *a1, uint64_t a2)
{
  v7 = *a1;
  v8 = a1[1];
  v2 = *(a1 + 4);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = *(Strong + 64);
    v6 = *(Strong + 72);
    outlined copy of (@escaping @callee_guaranteed (@in_guaranteed DetailsTab?) -> ())?(v5, v6);

    if (v5)
    {
      v9[0] = v7;
      v9[1] = v8;
      v10 = v2;
      v5(v9);
      return outlined consume of (@escaping @callee_guaranteed (@in_guaranteed DetailsTab?) -> ())?(v5, v6);
    }
  }

  return result;
}

uint64_t DetailsTabBarViewRepresentable.Coordinator.__allocating_init(onTabChange:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t DetailsTabBarViewRepresentable.Coordinator.onTabChange.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t DetailsTabBarViewRepresentable.Coordinator.init(onTabChange:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

void DetailsTabBarViewRepresentable.Coordinator.selectedTabDidChange(_:)(void *a1)
{
  (*((*MEMORY[0x1E69E7D40] & *a1) + 0x100))(v7);
  v2 = v7[0];
  v3 = v7[1];
  v4 = v7[2];
  v5 = v7[3];
  v6 = v7[4];
  (*(v1 + 16))(v7);

  outlined consume of DetailsTab?(v2, v3, v4, v5, v6);
}

uint64_t DetailsTabBarViewRepresentable.Coordinator.__deallocating_deinit()
{

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t protocol witness for UIViewRepresentable.makeCoordinator() in conformance DetailsTabBarViewRepresentable@<X0>(uint64_t *a1@<X8>)
{
  v2 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy20CommunicationDetails20HorizontalTabControlV9ViewModelCGMd, &_s7SwiftUI5StateVy20CommunicationDetails20HorizontalTabControlV9ViewModelCGMR);
  State.wrappedValue.getter();
  swift_weakInit();

  type metadata accessor for DetailsTabBarViewRepresentable.Coordinator();
  result = swift_allocObject();
  *(result + 16) = closure #1 in DetailsTabBarViewRepresentable.makeCoordinator()partial apply;
  *(result + 24) = v2;
  *a1 = result;
  return result;
}

double protocol witness for UIViewRepresentable.sizeThatFits(_:uiView:context:) in conformance DetailsTabBarViewRepresentable(uint64_t a1, char a2, uint64_t a3, char a4, id a5)
{
  v6 = 10.0;
  if (a2)
  {
    *&a1 = 10.0;
  }

  if ((a4 & 1) == 0)
  {
    v6 = *&a3;
  }

  [a5 sizeThatFits_];
  return result;
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance DetailsTabBarViewRepresentable(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type DetailsTabBarViewRepresentable and conformance DetailsTabBarViewRepresentable(a1, a2, a3);

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance DetailsTabBarViewRepresentable(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type DetailsTabBarViewRepresentable and conformance DetailsTabBarViewRepresentable(a1, a2, a3);

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void protocol witness for View.body.getter in conformance DetailsTabBarViewRepresentable(uint64_t a1, uint64_t a2, uint64_t a3)
{
  lazy protocol witness table accessor for type DetailsTabBarViewRepresentable and conformance DetailsTabBarViewRepresentable(a1, a2, a3);
  UIViewRepresentable.body.getter();
  __break(1u);
}

__n128 __swift_memcpy112_8(uint64_t a1, __int128 *a2)
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

uint64_t getEnumTagSinglePayload for DetailsTabBarViewRepresentable(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
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

uint64_t storeEnumTagSinglePayload for DetailsTabBarViewRepresentable(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t AddParticipantsButton.styleGuide.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[11];
  v3 = v1[13];
  v35 = v1[12];
  v36 = v3;
  v4 = v1[7];
  v5 = v1[9];
  v31 = v1[8];
  v6 = v31;
  v32 = v5;
  v7 = v1[9];
  v8 = v1[11];
  v33 = v1[10];
  v9 = v33;
  v34 = v8;
  v10 = v1[3];
  v11 = v1[5];
  v27 = v1[4];
  v12 = v27;
  v28 = v11;
  v13 = v1[5];
  v14 = v1[7];
  v29 = v1[6];
  v15 = v29;
  v30 = v14;
  v16 = v1[1];
  v24[0] = *v1;
  v24[1] = v16;
  v17 = v1[3];
  v19 = *v1;
  v18 = v1[1];
  v25 = v1[2];
  v20 = v25;
  v26 = v17;
  v21 = v1[13];
  *(a1 + 192) = v35;
  *(a1 + 208) = v21;
  *(a1 + 128) = v6;
  *(a1 + 144) = v7;
  *(a1 + 160) = v9;
  *(a1 + 176) = v2;
  *(a1 + 64) = v12;
  *(a1 + 80) = v13;
  *(a1 + 96) = v15;
  *(a1 + 112) = v4;
  *a1 = v19;
  *(a1 + 16) = v18;
  v37 = *(v1 + 28);
  *(a1 + 224) = *(v1 + 28);
  *(a1 + 32) = v20;
  *(a1 + 48) = v10;
  return outlined init with copy of ParticipantGrid.StyleGuide(v24, v23);
}

uint64_t AddParticipantsButton.addParticipantAction.getter()
{
  v1 = *(v0 + 232);

  return v1;
}

uint64_t AddParticipantsButton.body.getter@<X0>(uint64_t a1@<X8>)
{
  v32 = a1;
  v2 = type metadata accessor for PlainButtonStyle();
  v3 = *(v2 - 8);
  v30 = v2;
  v31 = v3;
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA4ViewP20CommunicationDetailsE22contactCellHoverEffectQryFQOyAA6VStackVyAA05TupleD0VyAA15ModifiedContentVyAMyAMyAA6ZStackVyAKyAA06_ShapeD0VyAA6CircleVAA03AnyP5StyleVG_AMyAMyAMyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAX5ScaleOGGAZyAA4FontVSgGGAZyAA5ColorVSgGGtGGAA18_AspectRatioLayoutVGAA16_FlexFrameLayoutVGAA14_PaddingLayoutVG_AMyAIyAMyAMyAMyAA4TextVAZySiSgGGA6_GA11_GGA22_GtGG_Qo_GMd, &_s7SwiftUI6ButtonVyAA4ViewP20CommunicationDetailsE22contactCellHoverEffectQryFQOyAA6VStackVyAA05TupleD0VyAA15ModifiedContentVyAMyAMyAA6ZStackVyAKyAA06_ShapeD0VyAA6CircleVAA03AnyP5StyleVG_AMyAMyAMyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAX5ScaleOGGAZyAA4FontVSgGGAZyAA5ColorVSgGGtGGAA18_AspectRatioLayoutVGAA16_FlexFrameLayoutVGAA14_PaddingLayoutVG_AMyAIyAMyAMyAMyAA4TextVAZySiSgGGA6_GA11_GGA22_GtGG_Qo_GMR);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v29 - v8;
  v10 = *(v1 + 208);
  v35[12] = *(v1 + 192);
  v35[13] = v10;
  v35[14] = *(v1 + 224);
  v36 = *(v1 + 240);
  v11 = *(v1 + 144);
  v35[8] = *(v1 + 128);
  v35[9] = v11;
  v12 = *(v1 + 176);
  v35[10] = *(v1 + 160);
  v35[11] = v12;
  v13 = *(v1 + 80);
  v35[4] = *(v1 + 64);
  v35[5] = v13;
  v14 = *(v1 + 112);
  v35[6] = *(v1 + 96);
  v35[7] = v14;
  v15 = *(v1 + 16);
  v35[0] = *v1;
  v35[1] = v15;
  v16 = *(v1 + 48);
  v35[2] = *(v1 + 32);
  v35[3] = v16;
  v17 = swift_allocObject();
  v18 = *(v1 + 208);
  *(v17 + 208) = *(v1 + 192);
  *(v17 + 224) = v18;
  *(v17 + 240) = *(v1 + 224);
  *(v17 + 256) = *(v1 + 240);
  v19 = *(v1 + 144);
  *(v17 + 144) = *(v1 + 128);
  *(v17 + 160) = v19;
  v20 = *(v1 + 176);
  *(v17 + 176) = *(v1 + 160);
  *(v17 + 192) = v20;
  v21 = *(v1 + 80);
  *(v17 + 80) = *(v1 + 64);
  *(v17 + 96) = v21;
  v22 = *(v1 + 112);
  *(v17 + 112) = *(v1 + 96);
  *(v17 + 128) = v22;
  v23 = *(v1 + 16);
  *(v17 + 16) = *v1;
  *(v17 + 32) = v23;
  v24 = *(v1 + 48);
  *(v17 + 48) = *(v1 + 32);
  *(v17 + 64) = v24;
  v33 = v35;
  outlined init with copy of AddParticipantsButton(v35, v34);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP20CommunicationDetailsE22contactCellHoverEffectQryFQOyAA6VStackVyAA05TupleC0VyAA15ModifiedContentVyAKyAKyAA6ZStackVyAIyAA06_ShapeC0VyAA6CircleVAA03AnyO5StyleVG_AKyAKyAKyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAV5ScaleOGGAXyAA4FontVSgGGAXyAA5ColorVSgGGtGGAA18_AspectRatioLayoutVGAA16_FlexFrameLayoutVGAA14_PaddingLayoutVG_AKyAGyAKyAKyAKyAA4TextVAXySiSgGGA4_GA9_GGA20_GtGG_Qo_Md, &_s7SwiftUI4ViewP20CommunicationDetailsE22contactCellHoverEffectQryFQOyAA6VStackVyAA05TupleC0VyAA15ModifiedContentVyAKyAKyAA6ZStackVyAIyAA06_ShapeC0VyAA6CircleVAA03AnyO5StyleVG_AKyAKyAKyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAV5ScaleOGGAXyAA4FontVSgGGAXyAA5ColorVSgGGtGGAA18_AspectRatioLayoutVGAA16_FlexFrameLayoutVGAA14_PaddingLayoutVG_AKyAGyAKyAKyAKyAA4TextVAXySiSgGGA4_GA9_GGA20_GtGG_Qo_MR);
  v25 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAA6ZStackVyAEyAA06_ShapeE0VyAA6CircleVAA03AnyI5StyleVG_AGyAGyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAR5ScaleOGGATyAA4FontVSgGGATyAA5ColorVSgGGtGGAA18_AspectRatioLayoutVGAA010_FlexFrameW0VGAA08_PaddingW0VG_AGyACyAGyAGyAGyAA4TextVATySiSgGGA0_GA5_GGA16_GtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAA6ZStackVyAEyAA06_ShapeE0VyAA6CircleVAA03AnyI5StyleVG_AGyAGyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAR5ScaleOGGATyAA4FontVSgGGATyAA5ColorVSgGGtGGAA18_AspectRatioLayoutVGAA010_FlexFrameW0VGAA08_PaddingW0VG_AGyACyAGyAGyAGyAA4TextVATySiSgGGA0_GA5_GGA16_GtGGMR);
  v26 = lazy protocol witness table accessor for type VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ZStack<TupleView<(_ShapeView<Circle, AnyShapeStyle>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>)>>, _AspectRatioLayout>, _FlexFrameLayout>, _PaddingLayout>, ModifiedContent<VStack<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>>, _PaddingLayout>)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ZStack<TupleView<(_ShapeView<Circle, AnyShapeStyle>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>)>>, _AspectRatioLayout>, _FlexFrameLayout>, _PaddingLayout>, ModifiedContent<VStack<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>>, _PaddingLayout>)>> and conformance VStack<A>, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAA6ZStackVyAEyAA06_ShapeE0VyAA6CircleVAA03AnyI5StyleVG_AGyAGyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAR5ScaleOGGATyAA4FontVSgGGATyAA5ColorVSgGGtGGAA18_AspectRatioLayoutVGAA010_FlexFrameW0VGAA08_PaddingW0VG_AGyACyAGyAGyAGyAA4TextVATySiSgGGA0_GA5_GGA16_GtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAA6ZStackVyAEyAA06_ShapeE0VyAA6CircleVAA03AnyI5StyleVG_AGyAGyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAR5ScaleOGGATyAA4FontVSgGGATyAA5ColorVSgGGtGGAA18_AspectRatioLayoutVGAA010_FlexFrameW0VGAA08_PaddingW0VG_AGyACyAGyAGyAGyAA4TextVATySiSgGGA0_GA5_GGA16_GtGGMR, MEMORY[0x1E6981870]);
  v34[0] = v25;
  v34[1] = v26;
  swift_getOpaqueTypeConformance2();
  Button.init(action:label:)();
  PlainButtonStyle.init()();
  lazy protocol witness table accessor for type VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ZStack<TupleView<(_ShapeView<Circle, AnyShapeStyle>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>)>>, _AspectRatioLayout>, _FlexFrameLayout>, _PaddingLayout>, ModifiedContent<VStack<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>>, _PaddingLayout>)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type Button<<<opaque return type of View.contactCellHoverEffect()>>.0> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA4ViewP20CommunicationDetailsE22contactCellHoverEffectQryFQOyAA6VStackVyAA05TupleD0VyAA15ModifiedContentVyAMyAMyAA6ZStackVyAKyAA06_ShapeD0VyAA6CircleVAA03AnyP5StyleVG_AMyAMyAMyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAX5ScaleOGGAZyAA4FontVSgGGAZyAA5ColorVSgGGtGGAA18_AspectRatioLayoutVGAA16_FlexFrameLayoutVGAA14_PaddingLayoutVG_AMyAIyAMyAMyAMyAA4TextVAZySiSgGGA6_GA11_GGA22_GtGG_Qo_GMd, &_s7SwiftUI6ButtonVyAA4ViewP20CommunicationDetailsE22contactCellHoverEffectQryFQOyAA6VStackVyAA05TupleD0VyAA15ModifiedContentVyAMyAMyAA6ZStackVyAKyAA06_ShapeD0VyAA6CircleVAA03AnyP5StyleVG_AMyAMyAMyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAX5ScaleOGGAZyAA4FontVSgGGAZyAA5ColorVSgGGtGGAA18_AspectRatioLayoutVGAA16_FlexFrameLayoutVGAA14_PaddingLayoutVG_AMyAIyAMyAMyAMyAA4TextVAZySiSgGGA6_GA11_GGA22_GtGG_Qo_GMR, MEMORY[0x1E697D680]);
  lazy protocol witness table accessor for type PlainButtonStyle and conformance PlainButtonStyle();
  v27 = v30;
  View.buttonStyle<A>(_:)();
  (*(v31 + 8))(v5, v27);
  return (*(v7 + 8))(v9, v6);
}

double closure #1 in AddParticipantsButton.body.getter(uint64_t a1)
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  (*(a1 + 232))(isCurrentExecutor);

  return result;
}

double closure #2 in AddParticipantsButton.body.getter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAA6ZStackVyAEyAA06_ShapeE0VyAA6CircleVAA03AnyI5StyleVG_AGyAGyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAR5ScaleOGGATyAA4FontVSgGGATyAA5ColorVSgGGtGGAA18_AspectRatioLayoutVGAA010_FlexFrameW0VGAA08_PaddingW0VG_AGyACyAGyAGyAGyAA4TextVATySiSgGGA0_GA5_GGA16_GtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAA6ZStackVyAEyAA06_ShapeE0VyAA6CircleVAA03AnyI5StyleVG_AGyAGyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAR5ScaleOGGATyAA4FontVSgGGATyAA5ColorVSgGGtGGAA18_AspectRatioLayoutVGAA010_FlexFrameW0VGAA08_PaddingW0VG_AGyACyAGyAGyAGyAA4TextVATySiSgGGA0_GA5_GGA16_GtGGMR);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v10 - v3;
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = static HorizontalAlignment.center.getter();
  v6 = *(a1 + 208);
  *v4 = v5;
  *(v4 + 1) = v6;
  v4[16] = 0;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAKyAKyAA6ZStackVyAIyAA06_ShapeD0VyAA6CircleVAA03AnyL5StyleVG_AKyAKyAKyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAV5ScaleOGGAXyAA4FontVSgGGAXyAA5ColorVSgGGtGGAA012_AspectRatioG0VGAA010_FlexFrameG0VGAA08_PaddingG0VG_AKyAA0F0VyAKyAKyAKyAA4TextVAXySiSgGGA4_GA9_GGA20_GtGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAKyAKyAA6ZStackVyAIyAA06_ShapeD0VyAA6CircleVAA03AnyL5StyleVG_AKyAKyAKyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAV5ScaleOGGAXyAA4FontVSgGGAXyAA5ColorVSgGGtGGAA012_AspectRatioG0VGAA010_FlexFrameG0VGAA08_PaddingG0VG_AKyAA0F0VyAKyAKyAKyAA4TextVAXySiSgGGA4_GA9_GGA20_GtGGMR);
  closure #1 in closure #2 in AddParticipantsButton.body.getter(a1, &v4[*(v7 + 44)]);
  v8 = lazy protocol witness table accessor for type VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ZStack<TupleView<(_ShapeView<Circle, AnyShapeStyle>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>)>>, _AspectRatioLayout>, _FlexFrameLayout>, _PaddingLayout>, ModifiedContent<VStack<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>>, _PaddingLayout>)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ZStack<TupleView<(_ShapeView<Circle, AnyShapeStyle>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>)>>, _AspectRatioLayout>, _FlexFrameLayout>, _PaddingLayout>, ModifiedContent<VStack<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>>, _PaddingLayout>)>> and conformance VStack<A>, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAA6ZStackVyAEyAA06_ShapeE0VyAA6CircleVAA03AnyI5StyleVG_AGyAGyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAR5ScaleOGGATyAA4FontVSgGGATyAA5ColorVSgGGtGGAA18_AspectRatioLayoutVGAA010_FlexFrameW0VGAA08_PaddingW0VG_AGyACyAGyAGyAGyAA4TextVATySiSgGGA0_GA5_GGA16_GtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAA6ZStackVyAEyAA06_ShapeE0VyAA6CircleVAA03AnyI5StyleVG_AGyAGyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAR5ScaleOGGATyAA4FontVSgGGATyAA5ColorVSgGGtGGAA18_AspectRatioLayoutVGAA010_FlexFrameW0VGAA08_PaddingW0VG_AGyACyAGyAGyAGyAA4TextVATySiSgGGA0_GA5_GGA16_GtGGMR, MEMORY[0x1E6981870]);
  View.contactCellHoverEffect()(v2, v8);
  outlined destroy of VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ZStack<TupleView<(_ShapeView<Circle, AnyShapeStyle>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>)>>, _AspectRatioLayout>, _FlexFrameLayout>, _PaddingLayout>, ModifiedContent<VStack<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>>, _PaddingLayout>)>>(v4, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAA6ZStackVyAEyAA06_ShapeE0VyAA6CircleVAA03AnyI5StyleVG_AGyAGyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAR5ScaleOGGATyAA4FontVSgGGATyAA5ColorVSgGGtGGAA18_AspectRatioLayoutVGAA010_FlexFrameW0VGAA08_PaddingW0VG_AGyACyAGyAGyAGyAA4TextVATySiSgGGA0_GA5_GGA16_GtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAA6ZStackVyAEyAA06_ShapeE0VyAA6CircleVAA03AnyI5StyleVG_AGyAGyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAR5ScaleOGGATyAA4FontVSgGGATyAA5ColorVSgGGtGGAA18_AspectRatioLayoutVGAA010_FlexFrameW0VGAA08_PaddingW0VG_AGyACyAGyAGyAGyAA4TextVATySiSgGGA0_GA5_GGA16_GtGGMR);

  return result;
}

uint64_t lazy protocol witness table accessor for type VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ZStack<TupleView<(_ShapeView<Circle, AnyShapeStyle>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>)>>, _AspectRatioLayout>, _FlexFrameLayout>, _PaddingLayout>, ModifiedContent<VStack<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>>, _PaddingLayout>)>> and conformance VStack<A>(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

void closure #1 in closure #2 in AddParticipantsButton.body.getter(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v64 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ZStackVyAA9TupleViewVyAA06_ShapeG0VyAA6CircleVAA03AnyH5StyleVG_ACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAP5ScaleOGGARyAA4FontVSgGGARyAA5ColorVSgGGtGGAA18_AspectRatioLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA6ZStackVyAA9TupleViewVyAA06_ShapeG0VyAA6CircleVAA03AnyH5StyleVG_ACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAP5ScaleOGGARyAA4FontVSgGGARyAA5ColorVSgGGtGGAA18_AspectRatioLayoutVGMR);
  MEMORY[0x1EEE9AC00](v3);
  v5 = (&v54 - v4);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6ZStackVyAA9TupleViewVyAA06_ShapeG0VyAA6CircleVAA03AnyH5StyleVG_ACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAP5ScaleOGGARyAA4FontVSgGGARyAA5ColorVSgGGtGGAA18_AspectRatioLayoutVGAA010_FlexFrameV0VGMd, &_s7SwiftUI15ModifiedContentVyACyAA6ZStackVyAA9TupleViewVyAA06_ShapeG0VyAA6CircleVAA03AnyH5StyleVG_ACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAP5ScaleOGGARyAA4FontVSgGGARyAA5ColorVSgGGtGGAA18_AspectRatioLayoutVGAA010_FlexFrameV0VGMR);
  MEMORY[0x1EEE9AC00](v58);
  v7 = &v54 - v6;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA6ZStackVyAA9TupleViewVyAA06_ShapeG0VyAA6CircleVAA03AnyH5StyleVG_ACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAP5ScaleOGGARyAA4FontVSgGGARyAA5ColorVSgGGtGGAA18_AspectRatioLayoutVGAA010_FlexFrameV0VGAA08_PaddingV0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA6ZStackVyAA9TupleViewVyAA06_ShapeG0VyAA6CircleVAA03AnyH5StyleVG_ACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAP5ScaleOGGARyAA4FontVSgGGARyAA5ColorVSgGGtGGAA18_AspectRatioLayoutVGAA010_FlexFrameV0VGAA08_PaddingV0VGMR);
  MEMORY[0x1EEE9AC00](v59);
  v67 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v54 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v66 = &v54 - v13;
  type metadata accessor for MainActor();
  v65 = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *v5 = static Alignment.center.getter();
  v5[1] = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_ZStackLayoutVAA05TupleD0VyAA06_ShapeD0VyAA6CircleVAA03AnyI5StyleVG_AA15ModifiedContentVyARyARyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAT5ScaleOGGAVyAA4FontVSgGGAVyAA5ColorVSgGGtGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_ZStackLayoutVAA05TupleD0VyAA06_ShapeD0VyAA6CircleVAA03AnyI5StyleVG_AA15ModifiedContentVyARyARyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAT5ScaleOGGAVyAA4FontVSgGGAVyAA5ColorVSgGGtGGMR);
  closure #1 in closure #1 in closure #2 in AddParticipantsButton.body.getter(a1, v5 + *(v15 + 44));
  v16 = v5 + *(v3 + 36);
  *v16 = 0x3FF0000000000000;
  *(v16 + 4) = 0;
  v17 = *(a1 + 72);
  v56 = *(a1 + 88);
  v57 = v17;
  v18 = *(a1 + 104);
  v62 = *(a1 + 112);
  v63 = v18;
  v19 = *(a1 + 120);
  v60 = *(a1 + 128);
  v61 = v19;
  v55 = a1;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  outlined init with take of ModifiedContent<ZStack<TupleView<(_ShapeView<Circle, AnyShapeStyle>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>)>>, _AspectRatioLayout>(v5, v7, &_s7SwiftUI15ModifiedContentVyAA6ZStackVyAA9TupleViewVyAA06_ShapeG0VyAA6CircleVAA03AnyH5StyleVG_ACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAP5ScaleOGGARyAA4FontVSgGGARyAA5ColorVSgGGtGGAA18_AspectRatioLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA6ZStackVyAA9TupleViewVyAA06_ShapeG0VyAA6CircleVAA03AnyH5StyleVG_ACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAP5ScaleOGGARyAA4FontVSgGGARyAA5ColorVSgGGtGGAA18_AspectRatioLayoutVGMR);
  v20 = &v7[*(v58 + 36)];
  v21 = v108[5];
  *(v20 + 4) = v108[4];
  *(v20 + 5) = v21;
  *(v20 + 6) = v108[6];
  v22 = v108[1];
  *v20 = v108[0];
  *(v20 + 1) = v22;
  v23 = v108[3];
  *(v20 + 2) = v108[2];
  *(v20 + 3) = v23;
  v24 = static Edge.Set.all.getter();
  outlined init with take of ModifiedContent<ZStack<TupleView<(_ShapeView<Circle, AnyShapeStyle>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>)>>, _AspectRatioLayout>(v7, v11, &_s7SwiftUI15ModifiedContentVyACyAA6ZStackVyAA9TupleViewVyAA06_ShapeG0VyAA6CircleVAA03AnyH5StyleVG_ACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAP5ScaleOGGARyAA4FontVSgGGARyAA5ColorVSgGGtGGAA18_AspectRatioLayoutVGAA010_FlexFrameV0VGMd, &_s7SwiftUI15ModifiedContentVyACyAA6ZStackVyAA9TupleViewVyAA06_ShapeG0VyAA6CircleVAA03AnyH5StyleVG_ACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAP5ScaleOGGARyAA4FontVSgGGARyAA5ColorVSgGGtGGAA18_AspectRatioLayoutVGAA010_FlexFrameV0VGMR);
  v25 = &v11[*(v59 + 36)];
  *v25 = v24;
  v26 = v57;
  *(v25 + 24) = v56;
  *(v25 + 8) = v26;
  v25[40] = 0;
  outlined init with take of ModifiedContent<ZStack<TupleView<(_ShapeView<Circle, AnyShapeStyle>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>)>>, _AspectRatioLayout>(v11, v66, &_s7SwiftUI15ModifiedContentVyACyACyAA6ZStackVyAA9TupleViewVyAA06_ShapeG0VyAA6CircleVAA03AnyH5StyleVG_ACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAP5ScaleOGGARyAA4FontVSgGGARyAA5ColorVSgGGtGGAA18_AspectRatioLayoutVGAA010_FlexFrameV0VGAA08_PaddingV0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA6ZStackVyAA9TupleViewVyAA06_ShapeG0VyAA6CircleVAA03AnyH5StyleVG_ACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAP5ScaleOGGARyAA4FontVSgGGARyAA5ColorVSgGGtGGAA18_AspectRatioLayoutVGAA010_FlexFrameV0VGAA08_PaddingV0VGMR);
  v59 = static HorizontalAlignment.center.getter();
  v70 = 0;
  v58 = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v27._countAndFlagsBits = 6579265;
  v27._object = 0xE300000000000000;
  v94 = LocalizedString(_:)(v27);
  lazy protocol witness table accessor for type String and conformance String(v94._countAndFlagsBits, v94._object, v28);
  v29 = Text.init<A>(_:)();
  v31 = v30;
  v33 = v32;
  v35 = v34;
  KeyPath = swift_getKeyPath();
  v37 = *v55;
  *&v57 = swift_getKeyPath();
  v38 = v33 & 1;
  LOBYTE(v94._countAndFlagsBits) = v33 & 1;
  LOBYTE(v90) = 0;

  *&v56 = static Color.primary.getter();
  v39 = swift_getKeyPath();

  *&v72 = v29;
  *(&v72 + 1) = v31;
  LOBYTE(v73) = v38;
  *(&v73 + 1) = v90;
  DWORD1(v73) = *(&v90 + 3);
  *(&v73 + 1) = v35;
  *&v74 = KeyPath;
  *(&v75 + 1) = *v68;
  DWORD1(v75) = *&v68[3];
  *(&v74 + 1) = 1;
  LOBYTE(v75) = 0;
  *(&v75 + 1) = v57;
  *&v76 = v37;
  *(&v76 + 1) = v39;
  v77 = v56;
  v78[0] = v29;
  v78[1] = v31;
  v79 = v38;
  *&v80[3] = *(&v90 + 3);
  *v80 = v90;
  v81 = v35;
  v82 = KeyPath;
  v83 = 1;
  v84 = 0;
  *v85 = *v68;
  *&v85[3] = *&v68[3];
  v86 = v57;
  v87 = v37;
  v88 = v39;
  v89 = v56;
  outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>(&v72, &v94, &_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAGyAA4FontVSgGGAGyAA5ColorVSgGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAGyAA4FontVSgGGAGyAA5ColorVSgGGMR);
  outlined destroy of VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ZStack<TupleView<(_ShapeView<Circle, AnyShapeStyle>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>)>>, _AspectRatioLayout>, _FlexFrameLayout>, _PaddingLayout>, ModifiedContent<VStack<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>>, _PaddingLayout>)>>(v78, &_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAGyAA4FontVSgGGAGyAA5ColorVSgGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAGyAA4FontVSgGGAGyAA5ColorVSgGGMR);
  *(&v69[2] + 7) = v74;
  *(&v69[3] + 7) = v75;
  *(&v69[4] + 7) = v76;
  *(&v69[5] + 7) = v77;
  *(v69 + 7) = v72;
  *(&v69[1] + 7) = v73;
  LOBYTE(v35) = v70;
  LODWORD(v58) = v70;
  LOBYTE(v29) = static Edge.Set.all.getter();
  v41 = v66;
  v40 = v67;
  outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>(v66, v67, &_s7SwiftUI15ModifiedContentVyACyACyAA6ZStackVyAA9TupleViewVyAA06_ShapeG0VyAA6CircleVAA03AnyH5StyleVG_ACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAP5ScaleOGGARyAA4FontVSgGGARyAA5ColorVSgGGtGGAA18_AspectRatioLayoutVGAA010_FlexFrameV0VGAA08_PaddingV0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA6ZStackVyAA9TupleViewVyAA06_ShapeG0VyAA6CircleVAA03AnyH5StyleVG_ACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAP5ScaleOGGARyAA4FontVSgGGARyAA5ColorVSgGGtGGAA18_AspectRatioLayoutVGAA010_FlexFrameV0VGAA08_PaddingV0VGMR);
  v42 = v40;
  v43 = v64;
  outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>(v42, v64, &_s7SwiftUI15ModifiedContentVyACyACyAA6ZStackVyAA9TupleViewVyAA06_ShapeG0VyAA6CircleVAA03AnyH5StyleVG_ACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAP5ScaleOGGARyAA4FontVSgGGARyAA5ColorVSgGGtGGAA18_AspectRatioLayoutVGAA010_FlexFrameV0VGAA08_PaddingV0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA6ZStackVyAA9TupleViewVyAA06_ShapeG0VyAA6CircleVAA03AnyH5StyleVG_ACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAP5ScaleOGGARyAA4FontVSgGGARyAA5ColorVSgGGtGGAA18_AspectRatioLayoutVGAA010_FlexFrameV0VGAA08_PaddingV0VGMR);
  v44 = (v43 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA6ZStackVyAA9TupleViewVyAA06_ShapeG0VyAA6CircleVAA03AnyH5StyleVG_ACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAP5ScaleOGGARyAA4FontVSgGGARyAA5ColorVSgGGtGGAA18_AspectRatioLayoutVGAA010_FlexFrameV0VGAA08_PaddingV0VG_ACyAA6VStackVyACyACyACyAA4TextVARySiSgGGAZGA3_GGA14_GtMd, &_s7SwiftUI15ModifiedContentVyACyACyAA6ZStackVyAA9TupleViewVyAA06_ShapeG0VyAA6CircleVAA03AnyH5StyleVG_ACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAP5ScaleOGGARyAA4FontVSgGGARyAA5ColorVSgGGtGGAA18_AspectRatioLayoutVGAA010_FlexFrameV0VGAA08_PaddingV0VG_ACyAA6VStackVyACyACyACyAA4TextVARySiSgGGAZGA3_GGA14_GtMR) + 48));
  v45 = v59;
  v90 = v59;
  LOBYTE(v91[0]) = v35;
  *(&v91[2] + 1) = v69[2];
  *(&v91[3] + 1) = v69[3];
  *(&v91[4] + 1) = v69[4];
  v91[5] = *(&v69[4] + 15);
  *(&v91[1] + 1) = v69[1];
  *(v91 + 1) = v69[0];
  LOBYTE(v92) = v29;
  *(&v92 + 1) = *v71;
  DWORD1(v92) = *&v71[3];
  v47 = v62;
  v46 = v63;
  *(&v92 + 1) = v63;
  *&v93[0] = v62;
  v49 = v60;
  v48 = v61;
  *(&v93[0] + 1) = v61;
  *&v93[1] = v60;
  BYTE8(v93[1]) = 0;
  v50 = v91[0];
  *v44 = v59;
  v44[1] = v50;
  v51 = v91[4];
  v44[4] = v91[3];
  v44[5] = v51;
  v52 = v91[2];
  v44[2] = v91[1];
  v44[3] = v52;
  v53 = v92;
  v44[6] = v91[5];
  v44[7] = v53;
  v44[8] = v93[0];
  *(v44 + 137) = *(v93 + 9);
  outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>(&v90, &v94, &_s7SwiftUI15ModifiedContentVyAA6VStackVyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAIyAA4FontVSgGGAIyAA5ColorVSgGGGAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA6VStackVyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAIyAA4FontVSgGGAIyAA5ColorVSgGGGAA14_PaddingLayoutVGMR);
  outlined destroy of VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ZStack<TupleView<(_ShapeView<Circle, AnyShapeStyle>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>)>>, _AspectRatioLayout>, _FlexFrameLayout>, _PaddingLayout>, ModifiedContent<VStack<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>>, _PaddingLayout>)>>(v41, &_s7SwiftUI15ModifiedContentVyACyACyAA6ZStackVyAA9TupleViewVyAA06_ShapeG0VyAA6CircleVAA03AnyH5StyleVG_ACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAP5ScaleOGGARyAA4FontVSgGGARyAA5ColorVSgGGtGGAA18_AspectRatioLayoutVGAA010_FlexFrameV0VGAA08_PaddingV0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA6ZStackVyAA9TupleViewVyAA06_ShapeG0VyAA6CircleVAA03AnyH5StyleVG_ACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAP5ScaleOGGARyAA4FontVSgGGARyAA5ColorVSgGGtGGAA18_AspectRatioLayoutVGAA010_FlexFrameV0VGAA08_PaddingV0VGMR);
  v98 = v69[2];
  v99 = v69[3];
  *v100 = v69[4];
  *&v100[15] = *(&v69[4] + 15);
  v96 = v69[0];
  v94._countAndFlagsBits = v45;
  v94._object = 0;
  v95 = v58;
  v97 = v69[1];
  v101 = v29;
  *&v102[3] = *&v71[3];
  *v102 = *v71;
  v103 = v46;
  v104 = v47;
  v105 = v48;
  v106 = v49;
  v107 = 0;
  outlined destroy of VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ZStack<TupleView<(_ShapeView<Circle, AnyShapeStyle>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>)>>, _AspectRatioLayout>, _FlexFrameLayout>, _PaddingLayout>, ModifiedContent<VStack<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>>, _PaddingLayout>)>>(&v94, &_s7SwiftUI15ModifiedContentVyAA6VStackVyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAIyAA4FontVSgGGAIyAA5ColorVSgGGGAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA6VStackVyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAIyAA4FontVSgGGAIyAA5ColorVSgGGGAA14_PaddingLayoutVGMR);
  outlined destroy of VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ZStack<TupleView<(_ShapeView<Circle, AnyShapeStyle>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>)>>, _AspectRatioLayout>, _FlexFrameLayout>, _PaddingLayout>, ModifiedContent<VStack<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>>, _PaddingLayout>)>>(v67, &_s7SwiftUI15ModifiedContentVyACyACyAA6ZStackVyAA9TupleViewVyAA06_ShapeG0VyAA6CircleVAA03AnyH5StyleVG_ACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAP5ScaleOGGARyAA4FontVSgGGARyAA5ColorVSgGGtGGAA18_AspectRatioLayoutVGAA010_FlexFrameV0VGAA08_PaddingV0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA6ZStackVyAA9TupleViewVyAA06_ShapeG0VyAA6CircleVAA03AnyH5StyleVG_ACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAP5ScaleOGGARyAA4FontVSgGGARyAA5ColorVSgGGtGGAA18_AspectRatioLayoutVGAA010_FlexFrameV0VGAA08_PaddingV0VGMR);
}

double closure #1 in closure #1 in closure #2 in AddParticipantsButton.body.getter@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAGyAA4FontVSgGGAGyAA5ColorVSgGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAGyAA4FontVSgGGAGyAA5ColorVSgGGMR);
  MEMORY[0x1EEE9AC00](v23[0]);
  v5 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (v23 - v7);
  type metadata accessor for MainActor();
  v23[1] = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v9 = a1[20];
  v10 = a1[21];
  v11 = a1[22];

  v12 = Image.init(systemName:)();
  v13 = (v8 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGMd, &_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGMR) + 36));
  v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGMR) + 28);
  v15 = *MEMORY[0x1E69816C0];
  v16 = type metadata accessor for Image.Scale();
  (*(*(v16 - 8) + 104))(v13 + v14, v15, v16);
  *v13 = swift_getKeyPath();
  *v8 = v12;
  KeyPath = swift_getKeyPath();
  v18 = (v8 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAGyAA4FontVSgGGMd, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAGyAA4FontVSgGGMR) + 36));
  *v18 = KeyPath;
  v18[1] = v10;
  v19 = swift_getKeyPath();
  v20 = (v8 + *(v23[0] + 36));
  *v20 = v19;
  v20[1] = v11;
  outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>(v8, v5, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAGyAA4FontVSgGGAGyAA5ColorVSgGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAGyAA4FontVSgGGAGyAA5ColorVSgGGMR);
  *a2 = v9;
  *(a2 + 8) = 256;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI10_ShapeViewVyAA6CircleVAA03AnyC5StyleVG_AA15ModifiedContentVyAJyAJyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAL5ScaleOGGANyAA4FontVSgGGANyAA5ColorVSgGGtMd, &_s7SwiftUI10_ShapeViewVyAA6CircleVAA03AnyC5StyleVG_AA15ModifiedContentVyAJyAJyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAL5ScaleOGGANyAA4FontVSgGGANyAA5ColorVSgGGtMR);
  outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>(v5, a2 + *(v21 + 48), &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAGyAA4FontVSgGGAGyAA5ColorVSgGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAGyAA4FontVSgGGAGyAA5ColorVSgGGMR);

  outlined destroy of VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ZStack<TupleView<(_ShapeView<Circle, AnyShapeStyle>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>)>>, _AspectRatioLayout>, _FlexFrameLayout>, _PaddingLayout>, ModifiedContent<VStack<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>>, _PaddingLayout>)>>(v8, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAGyAA4FontVSgGGAGyAA5ColorVSgGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAGyAA4FontVSgGGAGyAA5ColorVSgGGMR);
  outlined destroy of VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ZStack<TupleView<(_ShapeView<Circle, AnyShapeStyle>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>)>>, _AspectRatioLayout>, _FlexFrameLayout>, _PaddingLayout>, ModifiedContent<VStack<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>>, _PaddingLayout>)>>(v5, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAGyAA4FontVSgGGAGyAA5ColorVSgGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAGyAA4FontVSgGGAGyAA5ColorVSgGGMR);

  return result;
}

__n128 AddParticipantsButton.init(styleGuide:addParticipantAction:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *(a1 + 208);
  *(a4 + 192) = *(a1 + 192);
  *(a4 + 208) = v4;
  v5 = *(a1 + 224);
  v6 = *(a1 + 144);
  *(a4 + 128) = *(a1 + 128);
  *(a4 + 144) = v6;
  v7 = *(a1 + 176);
  *(a4 + 160) = *(a1 + 160);
  *(a4 + 176) = v7;
  v8 = *(a1 + 80);
  *(a4 + 64) = *(a1 + 64);
  *(a4 + 80) = v8;
  v9 = *(a1 + 112);
  *(a4 + 96) = *(a1 + 96);
  *(a4 + 112) = v9;
  v10 = *(a1 + 16);
  *a4 = *a1;
  *(a4 + 16) = v10;
  result = *(a1 + 48);
  *(a4 + 32) = *(a1 + 32);
  *(a4 + 48) = result;
  *(a4 + 224) = v5;
  *(a4 + 232) = a2;
  *(a4 + 240) = a3;
  return result;
}

uint64_t protocol witness for View.body.getter in conformance AddParticipantsButton@<X0>(uint64_t a1@<X8>)
{
  v32 = a1;
  v2 = type metadata accessor for PlainButtonStyle();
  v3 = *(v2 - 8);
  v30 = v2;
  v31 = v3;
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA4ViewP20CommunicationDetailsE22contactCellHoverEffectQryFQOyAA6VStackVyAA05TupleD0VyAA15ModifiedContentVyAMyAMyAA6ZStackVyAKyAA06_ShapeD0VyAA6CircleVAA03AnyP5StyleVG_AMyAMyAMyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAX5ScaleOGGAZyAA4FontVSgGGAZyAA5ColorVSgGGtGGAA18_AspectRatioLayoutVGAA16_FlexFrameLayoutVGAA14_PaddingLayoutVG_AMyAIyAMyAMyAMyAA4TextVAZySiSgGGA6_GA11_GGA22_GtGG_Qo_GMd, &_s7SwiftUI6ButtonVyAA4ViewP20CommunicationDetailsE22contactCellHoverEffectQryFQOyAA6VStackVyAA05TupleD0VyAA15ModifiedContentVyAMyAMyAA6ZStackVyAKyAA06_ShapeD0VyAA6CircleVAA03AnyP5StyleVG_AMyAMyAMyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAX5ScaleOGGAZyAA4FontVSgGGAZyAA5ColorVSgGGtGGAA18_AspectRatioLayoutVGAA16_FlexFrameLayoutVGAA14_PaddingLayoutVG_AMyAIyAMyAMyAMyAA4TextVAZySiSgGGA6_GA11_GGA22_GtGG_Qo_GMR);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v29 - v8;
  v10 = *(v1 + 208);
  v35[12] = *(v1 + 192);
  v35[13] = v10;
  v35[14] = *(v1 + 224);
  v36 = *(v1 + 240);
  v11 = *(v1 + 144);
  v35[8] = *(v1 + 128);
  v35[9] = v11;
  v12 = *(v1 + 176);
  v35[10] = *(v1 + 160);
  v35[11] = v12;
  v13 = *(v1 + 80);
  v35[4] = *(v1 + 64);
  v35[5] = v13;
  v14 = *(v1 + 112);
  v35[6] = *(v1 + 96);
  v35[7] = v14;
  v15 = *(v1 + 16);
  v35[0] = *v1;
  v35[1] = v15;
  v16 = *(v1 + 48);
  v35[2] = *(v1 + 32);
  v35[3] = v16;
  v17 = swift_allocObject();
  v18 = *(v1 + 208);
  *(v17 + 208) = *(v1 + 192);
  *(v17 + 224) = v18;
  *(v17 + 240) = *(v1 + 224);
  *(v17 + 256) = *(v1 + 240);
  v19 = *(v1 + 144);
  *(v17 + 144) = *(v1 + 128);
  *(v17 + 160) = v19;
  v20 = *(v1 + 176);
  *(v17 + 176) = *(v1 + 160);
  *(v17 + 192) = v20;
  v21 = *(v1 + 80);
  *(v17 + 80) = *(v1 + 64);
  *(v17 + 96) = v21;
  v22 = *(v1 + 112);
  *(v17 + 112) = *(v1 + 96);
  *(v17 + 128) = v22;
  v23 = *(v1 + 16);
  *(v17 + 16) = *v1;
  *(v17 + 32) = v23;
  v24 = *(v1 + 48);
  *(v17 + 48) = *(v1 + 32);
  *(v17 + 64) = v24;
  v33 = v35;
  outlined init with copy of AddParticipantsButton(v35, v34);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP20CommunicationDetailsE22contactCellHoverEffectQryFQOyAA6VStackVyAA05TupleC0VyAA15ModifiedContentVyAKyAKyAA6ZStackVyAIyAA06_ShapeC0VyAA6CircleVAA03AnyO5StyleVG_AKyAKyAKyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAV5ScaleOGGAXyAA4FontVSgGGAXyAA5ColorVSgGGtGGAA18_AspectRatioLayoutVGAA16_FlexFrameLayoutVGAA14_PaddingLayoutVG_AKyAGyAKyAKyAKyAA4TextVAXySiSgGGA4_GA9_GGA20_GtGG_Qo_Md, &_s7SwiftUI4ViewP20CommunicationDetailsE22contactCellHoverEffectQryFQOyAA6VStackVyAA05TupleC0VyAA15ModifiedContentVyAKyAKyAA6ZStackVyAIyAA06_ShapeC0VyAA6CircleVAA03AnyO5StyleVG_AKyAKyAKyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAV5ScaleOGGAXyAA4FontVSgGGAXyAA5ColorVSgGGtGGAA18_AspectRatioLayoutVGAA16_FlexFrameLayoutVGAA14_PaddingLayoutVG_AKyAGyAKyAKyAKyAA4TextVAXySiSgGGA4_GA9_GGA20_GtGG_Qo_MR);
  v25 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAA6ZStackVyAEyAA06_ShapeE0VyAA6CircleVAA03AnyI5StyleVG_AGyAGyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAR5ScaleOGGATyAA4FontVSgGGATyAA5ColorVSgGGtGGAA18_AspectRatioLayoutVGAA010_FlexFrameW0VGAA08_PaddingW0VG_AGyACyAGyAGyAGyAA4TextVATySiSgGGA0_GA5_GGA16_GtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAA6ZStackVyAEyAA06_ShapeE0VyAA6CircleVAA03AnyI5StyleVG_AGyAGyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAR5ScaleOGGATyAA4FontVSgGGATyAA5ColorVSgGGtGGAA18_AspectRatioLayoutVGAA010_FlexFrameW0VGAA08_PaddingW0VG_AGyACyAGyAGyAGyAA4TextVATySiSgGGA0_GA5_GGA16_GtGGMR);
  v26 = lazy protocol witness table accessor for type VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ZStack<TupleView<(_ShapeView<Circle, AnyShapeStyle>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>)>>, _AspectRatioLayout>, _FlexFrameLayout>, _PaddingLayout>, ModifiedContent<VStack<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>>, _PaddingLayout>)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ZStack<TupleView<(_ShapeView<Circle, AnyShapeStyle>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>)>>, _AspectRatioLayout>, _FlexFrameLayout>, _PaddingLayout>, ModifiedContent<VStack<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>>, _PaddingLayout>)>> and conformance VStack<A>, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAA6ZStackVyAEyAA06_ShapeE0VyAA6CircleVAA03AnyI5StyleVG_AGyAGyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAR5ScaleOGGATyAA4FontVSgGGATyAA5ColorVSgGGtGGAA18_AspectRatioLayoutVGAA010_FlexFrameW0VGAA08_PaddingW0VG_AGyACyAGyAGyAGyAA4TextVATySiSgGGA0_GA5_GGA16_GtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAA6ZStackVyAEyAA06_ShapeE0VyAA6CircleVAA03AnyI5StyleVG_AGyAGyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAR5ScaleOGGATyAA4FontVSgGGATyAA5ColorVSgGGtGGAA18_AspectRatioLayoutVGAA010_FlexFrameW0VGAA08_PaddingW0VG_AGyACyAGyAGyAGyAA4TextVATySiSgGGA0_GA5_GGA16_GtGGMR, MEMORY[0x1E6981870]);
  v34[0] = v25;
  v34[1] = v26;
  swift_getOpaqueTypeConformance2();
  Button.init(action:label:)();
  PlainButtonStyle.init()();
  lazy protocol witness table accessor for type VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ZStack<TupleView<(_ShapeView<Circle, AnyShapeStyle>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>)>>, _AspectRatioLayout>, _FlexFrameLayout>, _PaddingLayout>, ModifiedContent<VStack<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>>, _PaddingLayout>)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type Button<<<opaque return type of View.contactCellHoverEffect()>>.0> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA4ViewP20CommunicationDetailsE22contactCellHoverEffectQryFQOyAA6VStackVyAA05TupleD0VyAA15ModifiedContentVyAMyAMyAA6ZStackVyAKyAA06_ShapeD0VyAA6CircleVAA03AnyP5StyleVG_AMyAMyAMyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAX5ScaleOGGAZyAA4FontVSgGGAZyAA5ColorVSgGGtGGAA18_AspectRatioLayoutVGAA16_FlexFrameLayoutVGAA14_PaddingLayoutVG_AMyAIyAMyAMyAMyAA4TextVAZySiSgGGA6_GA11_GGA22_GtGG_Qo_GMd, &_s7SwiftUI6ButtonVyAA4ViewP20CommunicationDetailsE22contactCellHoverEffectQryFQOyAA6VStackVyAA05TupleD0VyAA15ModifiedContentVyAMyAMyAA6ZStackVyAKyAA06_ShapeD0VyAA6CircleVAA03AnyP5StyleVG_AMyAMyAMyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAX5ScaleOGGAZyAA4FontVSgGGAZyAA5ColorVSgGGtGGAA18_AspectRatioLayoutVGAA16_FlexFrameLayoutVGAA14_PaddingLayoutVG_AMyAIyAMyAMyAMyAA4TextVAZySiSgGGA6_GA11_GGA22_GtGG_Qo_GMR, MEMORY[0x1E697D680]);
  lazy protocol witness table accessor for type PlainButtonStyle and conformance PlainButtonStyle();
  v27 = v30;
  View.buttonStyle<A>(_:)();
  (*(v31 + 8))(v5, v27);
  return (*(v7 + 8))(v9, v6);
}

__n128 __swift_memcpy248_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  v8 = a2[8];
  v9 = a2[9];
  v10 = a2[11];
  *(a1 + 160) = a2[10];
  *(a1 + 176) = v10;
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  result = a2[12];
  v12 = a2[13];
  v13 = a2[14];
  *(a1 + 240) = *(a2 + 30);
  *(a1 + 208) = v12;
  *(a1 + 224) = v13;
  *(a1 + 192) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for AddParticipantsButton(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 248))
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

uint64_t storeEnumTagSinglePayload for AddParticipantsButton(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 248) = 1;
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

    *(result + 248) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t objectdestroyTm_3()
{

  return MEMORY[0x1EEE6BDD0](v0, 264, 7);
}

uint64_t outlined init with take of ModifiedContent<ZStack<TupleView<(_ShapeView<Circle, AnyShapeStyle>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>)>>, _AspectRatioLayout>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t key path getter for EnvironmentValues.foregroundColor : EnvironmentValues, serialized@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.foregroundColor.getter();
  *a1 = result;
  return result;
}

uint64_t key path getter for EnvironmentValues.lineLimit : EnvironmentValues, serialized@<X0>(uint64_t a1@<X8>)
{
  result = EnvironmentValues.lineLimit.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t key path getter for EnvironmentValues.tintColor : EnvironmentValues, serialized@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.tintColor.getter();
  *a1 = result;
  return result;
}

uint64_t outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t outlined destroy of VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ZStack<TupleView<(_ShapeView<Circle, AnyShapeStyle>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>)>>, _AspectRatioLayout>, _FlexFrameLayout>, _PaddingLayout>, ModifiedContent<VStack<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>>, _PaddingLayout>)>>(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void PhotosGridViewController.presentQuickLook(for:dataSource:from:)(void *a1, void *a2, void *a3)
{
  v4 = v3;
  v38 = a2;
  v39 = a3;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = Logger.detailsPhotos.unsafeMutableAddressor();
  (*(v7 + 16))(v9, v10, v6);
  v11 = a1;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v40[0] = v36;
    *v14 = 136315138;
    v15 = v11;
    v16 = [objc_msgSend(v11 asset)];
    swift_unknownObjectRelease();
    v37 = v15;

    if (!v16)
    {
      __break(1u);
      return;
    }

    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v19, v40);

    *(v14 + 4) = v20;
    _os_log_impl(&dword_190119000, v12, v13, "Presenting Quick Look for media %s", v14, 0xCu);
    v21 = v36;
    __swift_destroy_boxed_opaque_existential_0(v36);
    MEMORY[0x193AEBB30](v21, -1, -1);
    MEMORY[0x193AEBB30](v14, -1, -1);

    (*(v7 + 8))(v9, v6);
    v11 = v37;
  }

  else
  {

    (*(v7 + 8))(v9, v6);
  }

  type metadata accessor for PhotosGridQuickLookDataSource();
  v22 = MEMORY[0x1E69E7D40];
  v23 = *((*MEMORY[0x1E69E7D40] & *v4) + 0x2B8);
  v24 = v11;
  v25 = v38;
  v26 = v23();
  v27 = *(v4 + OBJC_IVAR____TtC20CommunicationDetails24PhotosGridViewController_quickLookCache);

  v28 = PhotosGridQuickLookDataSource.__allocating_init(assetsDataSource:assetReference:mediaProvider:previewsCache:)(v25, v24, v26, v27);
  (*((*v22 & *v4) + 0x178))(v28);
  v29 = [objc_allocWithZone(MEMORY[0x1E697A0C8]) init];
  [v29 setPresentationStyle_];
  v30 = (*((*v22 & *v4) + 0x170))([v29 setDelegate_]);
  [v29 setDataSource_];

  [v29 reloadData];
  [v24 indexPath];
  [v29 setCurrentPreviewItemIndex_];
  [v29 refreshCurrentPreviewItem];
  v31 = v39;
  v32 = v39;
  if (!v39)
  {
    v32 = v4;
  }

  v33 = v31;
  [v32 presentViewController:v29 animated:1 completion:0];
  v34 = *((*v22 & *v4) + 0x160);
  v35 = v29;
  v34(v29);
}

uint64_t specialized PhotosGridViewController.previewControllerDidDismiss(_:)()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = Logger.detailsPhotos.unsafeMutableAddressor();
  (*(v3 + 16))(v5, v6, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_190119000, v7, v8, "Dismissed Quick Look media", v9, 2u);
    MEMORY[0x193AEBB30](v9, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  v10 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x160))(0);
  return (*((*v10 & *v1) + 0x178))(0);
}

uint64_t type metadata accessor for AttachmentResults.StyleGuide(uint64_t a1)
{
  result = type metadata singleton initialization cache for AttachmentResults.StyleGuide;
  if (!type metadata singleton initialization cache for AttachmentResults.StyleGuide)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AttachmentResults.StyleGuide.init(titleFont:titleColor:dateFont:dateColor:imageSize:imageBottomPadding:badgePadding:cellCornerRadius:cellTextCornerRadius:cellTextPadding:vStackSpacing:cellPadding:gridVerticalSpacing:gridHorizontalSpacing:horizontalGridMargins:cellSelectionMaterial:defaultThumbnailCornerRadius:missingThumbnailCornerRadius:selectedTabThumbnailCornerRadius:ignoredSafeAreaScrollViewEdges:attachmentSelectionBackgroundColor:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X8>, double a9@<D0>, double a10@<D1>, double a11@<D2>, double a12@<D3>, double a13@<D4>, double a14@<D5>, double a15@<D6>, double a16@<D7>, __int128 a17, __int128 a18, __int128 a19, __int128 a20, uint64_t a21, __int128 a22, uint64_t a23)
{
  *a8 = a1;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4;
  *(a8 + 32) = a9;
  *(a8 + 40) = a10;
  *(a8 + 48) = a11;
  *(a8 + 56) = a12;
  *(a8 + 64) = a13;
  *(a8 + 72) = a14;
  *(a8 + 80) = a15;
  *(a8 + 88) = a16;
  *(a8 + 96) = a17;
  *(a8 + 112) = a18;
  *(a8 + 128) = a19;
  *(a8 + 144) = a20;
  *(a8 + 160) = a21;
  *(a8 + 168) = a5;
  *(a8 + 176) = a22;
  *(a8 + 192) = a23;
  *(a8 + 200) = a6;
  v24 = a8 + *(type metadata accessor for AttachmentResults.StyleGuide(0) + 96);

  return outlined init with take of BlendedColor(a7, v24);
}

uint64_t one-time initialization function for default()
{
  v0 = type metadata accessor for BlendedColor(0);
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v29 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for AttachmentResults.StyleGuide(0);
  __swift_allocate_value_buffer(v3, static AttachmentResults.StyleGuide.default);
  v4 = __swift_project_value_buffer(v3, static AttachmentResults.StyleGuide.default);
  v5 = MEMORY[0x1E6980F50];
  cdValue<A>(_:default:iOS:macOS:watchOS:visionOS:tvOS:)(implicit closure #1 in variable initialization expression of static AttachmentResults.StyleGuide.default, 0, specialized thunk for @callee_guaranteed () -> (@owned Font?), &v51, 0, implicit closure #5 in variable initialization expression of static AttachmentResults.StyleGuide.default, 0, specialized thunk for @callee_guaranteed () -> (@owned Font?), 0, MEMORY[0x1E6980F50]);
  v6 = v51;
  v7 = static Color.primary.getter();
  cdValue<A>(_:default:iOS:macOS:watchOS:visionOS:tvOS:)(implicit closure #7 in variable initialization expression of static AttachmentResults.StyleGuide.default, 0, specialized thunk for @callee_guaranteed () -> (@owned Font?), &v50, 0, implicit closure #11 in variable initialization expression of static AttachmentResults.StyleGuide.default, 0, specialized thunk for @callee_guaranteed () -> (@owned Font?), 0, v5);
  v8 = v50;
  v9 = static Color.secondary.getter();
  v10 = MEMORY[0x1E69E7DE0];
  cdValue<A>(_:default:iOS:macOS:watchOS:visionOS:tvOS:)(implicit closure #13 in variable initialization expression of static AttachmentResults.StyleGuide.default, 0, specialized thunk for @callee_guaranteed () -> (@unowned CGFloat?), &v49, 0, implicit closure #17 in variable initialization expression of static AttachmentResults.StyleGuide.default, 0, specialized thunk for @callee_guaranteed () -> (@unowned CGFloat?), 0, MEMORY[0x1E69E7DE0]);
  v32 = v49;
  cdValue<A>(_:default:iOS:macOS:watchOS:visionOS:tvOS:)(implicit closure #19 in variable initialization expression of static AttachmentResults.StyleGuide.default, 0, specialized thunk for @callee_guaranteed () -> (@unowned CGFloat?), &v48, 0, implicit closure #23 in variable initialization expression of static AttachmentResults.StyleGuide.default, 0, specialized thunk for @callee_guaranteed () -> (@unowned CGFloat?), 0, v10);
  v31 = v48;
  cdValue<A>(_:default:iOS:macOS:watchOS:visionOS:tvOS:)(implicit closure #25 in variable initialization expression of static AttachmentResults.StyleGuide.default, 0, specialized thunk for @callee_guaranteed () -> (@unowned CGFloat?), &v47, 0, implicit closure #29 in variable initialization expression of static AttachmentResults.StyleGuide.default, 0, specialized thunk for @callee_guaranteed () -> (@unowned CGFloat?), 0, v10);
  v30 = v47;
  cdValue<A>(_:default:iOS:macOS:watchOS:visionOS:tvOS:)(implicit closure #31 in variable initialization expression of static AttachmentResults.StyleGuide.default, 0, specialized thunk for @callee_guaranteed () -> (@unowned CGFloat?), &v46, 0, implicit closure #35 in variable initialization expression of static AttachmentResults.StyleGuide.default, 0, specialized thunk for @callee_guaranteed () -> (@unowned CGFloat?), 0, v10);
  v11 = v46;
  cdValue<A>(_:default:iOS:macOS:watchOS:visionOS:tvOS:)(implicit closure #37 in variable initialization expression of static AttachmentResults.StyleGuide.default, 0, specialized thunk for @callee_guaranteed () -> (@unowned CGFloat?), &v45, 0, implicit closure #41 in variable initialization expression of static AttachmentResults.StyleGuide.default, 0, specialized thunk for @callee_guaranteed () -> (@unowned CGFloat?), 0, v10);
  *&v12 = v45;
  v33 = v12;
  cdValue<A>(_:default:iOS:macOS:watchOS:visionOS:tvOS:)(implicit closure #43 in variable initialization expression of static AttachmentResults.StyleGuide.default, 0, specialized thunk for @callee_guaranteed () -> (@unowned EdgeInsets?), &v42, 0, implicit closure #47 in variable initialization expression of static AttachmentResults.StyleGuide.default, 0, specialized thunk for @callee_guaranteed () -> (@unowned EdgeInsets?), 0, MEMORY[0x1E697DA60]);
  *&v13 = v33;
  *(&v13 + 1) = v42;
  v33 = v13;
  v14 = v44;
  v29 = v43;
  cdValue<A>(_:default:iOS:macOS:watchOS:visionOS:tvOS:)(implicit closure #49 in variable initialization expression of static AttachmentResults.StyleGuide.default, 0, specialized thunk for @callee_guaranteed () -> (@unowned CGFloat?), &v41, 0, implicit closure #53 in variable initialization expression of static AttachmentResults.StyleGuide.default, 0, specialized thunk for @callee_guaranteed () -> (@unowned CGFloat?), 0, v10);
  v15 = v41;
  cdValue<A>(_:default:iOS:macOS:watchOS:visionOS:tvOS:)(implicit closure #55 in variable initialization expression of static AttachmentResults.StyleGuide.default, 0, specialized thunk for @callee_guaranteed () -> (@unowned CGFloat?), &v40, 0, implicit closure #59 in variable initialization expression of static AttachmentResults.StyleGuide.default, 0, specialized thunk for @callee_guaranteed () -> (@unowned CGFloat?), 0, v10);
  v16 = v40;
  cdValue<A>(_:default:iOS:macOS:watchOS:visionOS:tvOS:)(implicit closure #61 in variable initialization expression of static AttachmentResults.StyleGuide.default, 0, specialized thunk for @callee_guaranteed () -> (@unowned CGFloat?), &v39, 0, implicit closure #65 in variable initialization expression of static AttachmentResults.StyleGuide.default, 0, specialized thunk for @callee_guaranteed () -> (@unowned CGFloat?), 0, v10);
  v17 = v39;
  cdValue<A>(_:default:iOS:macOS:watchOS:visionOS:tvOS:)(implicit closure #67 in variable initialization expression of static AttachmentResults.StyleGuide.default, 0, specialized thunk for @callee_guaranteed () -> (@owned AnyShapeStyle?), &v38, 0, implicit closure #71 in variable initialization expression of static AttachmentResults.StyleGuide.default, 0, specialized thunk for @callee_guaranteed () -> (@owned AnyShapeStyle?), 0, MEMORY[0x1E697E0B8]);
  v18 = v38;
  cdValue<A>(_:default:iOS:macOS:watchOS:visionOS:tvOS:)(implicit closure #73 in variable initialization expression of static AttachmentResults.StyleGuide.default, 0, specialized thunk for @callee_guaranteed () -> (@unowned CGFloat?), &v37, 0, implicit closure #77 in variable initialization expression of static AttachmentResults.StyleGuide.default, 0, specialized thunk for @callee_guaranteed () -> (@unowned CGFloat?), 0, v10);
  v19 = v37;
  cdValue<A>(_:default:iOS:macOS:watchOS:visionOS:tvOS:)(implicit closure #79 in variable initialization expression of static AttachmentResults.StyleGuide.default, 0, specialized thunk for @callee_guaranteed () -> (@unowned CGFloat?), &v36, 0, implicit closure #83 in variable initialization expression of static AttachmentResults.StyleGuide.default, 0, specialized thunk for @callee_guaranteed () -> (@unowned CGFloat?), 0, v10);
  v20 = v36;
  cdValue<A>(_:default:iOS:macOS:watchOS:visionOS:tvOS:)(implicit closure #85 in variable initialization expression of static AttachmentResults.StyleGuide.default, 0, specialized thunk for @callee_guaranteed () -> (@unowned CGFloat?), &v35, 0, specialized thunk for @callee_guaranteed () -> (@unowned CGFloat?), 0, specialized thunk for @callee_guaranteed () -> (@unowned CGFloat?), 0, v10);
  v21 = v35;
  cdValue<A>(_:default:iOS:macOS:watchOS:visionOS:tvOS:)(implicit closure #91 in variable initialization expression of static AttachmentResults.StyleGuide.default, 0, specialized thunk for @callee_guaranteed () -> (@unowned Edge.Set?), &v34, 0, implicit closure #95 in variable initialization expression of static AttachmentResults.StyleGuide.default, 0, specialized thunk for @callee_guaranteed () -> (@unowned Edge.Set?), 0, MEMORY[0x1E6980D50]);
  LOBYTE(v10) = v34;
  cdValue<A>(_:default:iOS:macOS:watchOS:visionOS:tvOS:)(implicit closure #97 in variable initialization expression of static AttachmentResults.StyleGuide.default, 0, implicit closure #98 in variable initialization expression of static AttachmentResults.StyleGuide.default, v2, 0, implicit closure #101 in variable initialization expression of static AttachmentResults.StyleGuide.default, 0, implicit closure #102 in variable initialization expression of static AttachmentResults.StyleGuide.default, 0, v0);
  *v4 = v6;
  *(v4 + 8) = v7;
  *(v4 + 16) = v8;
  *(v4 + 24) = v9;
  v22 = v31;
  *(v4 + 32) = v32;
  *(v4 + 40) = v22;
  *(v4 + 48) = 0x4008000000000000;
  *(v4 + 56) = v30;
  *(v4 + 64) = v11;
  __asm { FMOV            V0.2D, #2.0 }

  *(v4 + 72) = _Q0;
  *(v4 + 88) = _Q0;
  *(v4 + 120) = v29;
  *(v4 + 104) = v33;
  *(v4 + 136) = v14;
  *(v4 + 144) = v15;
  *(v4 + 152) = v16;
  *(v4 + 160) = v17;
  *(v4 + 168) = v18;
  *(v4 + 176) = v19;
  *(v4 + 184) = v20;
  *(v4 + 192) = v21;
  *(v4 + 200) = v10;
  return outlined init with take of BlendedColor(v2, v4 + *(v3 + 96));
}

{
  v0 = type metadata accessor for AttachmentResults.StyleGuide(0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v49 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for InfoTab.StyleGuide(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Header.StyleGuide(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DetailsStyleGuide(0);
  __swift_allocate_value_buffer(v9, static DetailsStyleGuide.default);
  v10 = __swift_project_value_buffer(v9, static DetailsStyleGuide.default);
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v53 = xmmword_1EAD3FB70;
  v54 = unk_1EAD3FB80;
  v55 = xmmword_1EAD3FB90;
  v56 = *&qword_1EAD3FBA0;
  v51 = static DetailsStyleGuide.TabBarConfiguration.default;
  v52 = unk_1EAD3FB60;
  outlined init with copy of DetailsStyleGuide.TabBarConfiguration(&v51, &v57);
  v11 = Header.StyleGuide.default.unsafeMutableAddressor();
  outlined init with copy of Header.StyleGuide(v11, v8, type metadata accessor for Header.StyleGuide);
  v12 = ParticipantGrid.StyleGuide.default.unsafeMutableAddressor();
  v14 = v12[1];
  v13 = v12[2];
  v57 = *v12;
  v58 = v14;
  v59 = v13;
  v15 = v12[6];
  v17 = v12[3];
  v16 = v12[4];
  v62 = v12[5];
  v63 = v15;
  v60 = v17;
  v61 = v16;
  v18 = v12[10];
  v20 = v12[7];
  v19 = v12[8];
  v66 = v12[9];
  v67 = v18;
  v64 = v20;
  v65 = v19;
  v22 = v12[12];
  v21 = v12[13];
  v23 = v12[11];
  v71 = *(v12 + 28);
  v69 = v22;
  v70 = v21;
  v68 = v23;
  outlined init with copy of ParticipantGrid.StyleGuide(&v57, &v50);
  v24 = InfoTab.StyleGuide.default.unsafeMutableAddressor();
  swift_beginAccess();
  outlined init with copy of Header.StyleGuide(v24, v5, type metadata accessor for InfoTab.StyleGuide);
  v25 = AttachmentResults.StyleGuide.default.unsafeMutableAddressor();
  outlined init with copy of Header.StyleGuide(v25, v2, type metadata accessor for AttachmentResults.StyleGuide);
  v26 = DetailsViewController.StyleGuide.default.unsafeMutableAddressor();
  v28 = *v26;
  v27 = v26[1];
  v29 = v26[2];
  _s20CommunicationDetails6HeaderV10StyleGuideVWObTm_0(v8, v10, type metadata accessor for Header.StyleGuide);
  v30 = (v10 + v9[5]);
  v31 = v52;
  *v30 = v51;
  v30[1] = v31;
  v32 = v53;
  v33 = v54;
  v34 = v56;
  v30[4] = v55;
  v30[5] = v34;
  v30[2] = v32;
  v30[3] = v33;
  v35 = v10 + v9[6];
  v36 = v68;
  v37 = v69;
  v38 = v70;
  *(v35 + 224) = v71;
  *(v35 + 192) = v37;
  *(v35 + 208) = v38;
  *(v35 + 176) = v36;
  v39 = v64;
  v40 = v65;
  v41 = v67;
  *(v35 + 144) = v66;
  *(v35 + 160) = v41;
  *(v35 + 112) = v39;
  *(v35 + 128) = v40;
  v42 = v60;
  v43 = v61;
  v44 = v63;
  *(v35 + 80) = v62;
  *(v35 + 96) = v44;
  *(v35 + 48) = v42;
  *(v35 + 64) = v43;
  v46 = v58;
  v45 = v59;
  *v35 = v57;
  *(v35 + 16) = v46;
  *(v35 + 32) = v45;
  _s20CommunicationDetails6HeaderV10StyleGuideVWObTm_0(v5, v10 + v9[9], type metadata accessor for InfoTab.StyleGuide);
  _s20CommunicationDetails6HeaderV10StyleGuideVWObTm_0(v2, v10 + v9[8], type metadata accessor for AttachmentResults.StyleGuide);
  v47 = (v10 + v9[7]);
  *v47 = v28;
  v47[1] = v27;
  v47[2] = v29;
}

{
  v0 = HorizontalTabControl.StyleGuide.default.unsafeMutableAddressor();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[5];
  v8 = v0[4];
  v9 = v3;
  v4 = v0[1];
  v7[0] = *v0;
  v7[1] = v4;
  v7[2] = v1;
  v7[3] = v2;
  static DetailsStyleGuide.TabBarConfiguration.default = v7[0];
  unk_1EAD3FB60 = v4;
  xmmword_1EAD3FB70 = v1;
  unk_1EAD3FB80 = v2;
  *&xmmword_1EAD3FB90 = v8 & 1;
  *(&xmmword_1EAD3FB90 + 1) = *(&v8 + 1);
  qword_1EAD3FBA0 = v9 & 1;
  unk_1EAD3FBA8 = *(&v9 + 1);
  return outlined init with copy of HorizontalTabControl.StyleGuide(v7, &v6);
}

void implicit closure #5 in variable initialization expression of static AttachmentResults.StyleGuide.default(uint64_t *a1@<X8>)
{
  static Font.callout.getter();
  static Font.Weight.semibold.getter();
  v2 = Font.weight(_:)();

  *a1 = v2;
}

uint64_t implicit closure #1 in variable initialization expression of static AttachmentResults.StyleGuide.default@<X0>(uint64_t (*a1)(__n128)@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for Font.Leading();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  a1(v6);
  (*(v5 + 104))(v8, *MEMORY[0x1E6980EA8], v4);
  v9 = Font.leading(_:)();

  result = (*(v5 + 8))(v8, v4);
  *a2 = v9;
  return result;
}

uint64_t implicit closure #11 in variable initialization expression of static AttachmentResults.StyleGuide.default@<X0>(uint64_t *a2@<X8>)
{
  result = static Font.footnote.getter();
  *a2 = result;
  return result;
}

double implicit closure #43 in variable initialization expression of static AttachmentResults.StyleGuide.default@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

double implicit closure #47 in variable initialization expression of static AttachmentResults.StyleGuide.default@<D0>(uint64_t a1@<X8>)
{
  result = 16.0;
  *a1 = xmmword_1901E9970;
  *(a1 + 16) = xmmword_1901E9980;
  *(a1 + 32) = 0;
  return result;
}

uint64_t implicit closure #67 in variable initialization expression of static AttachmentResults.StyleGuide.default@<X0>(uint64_t *a2@<X8>)
{
  static Color.clear.getter();
  result = AnyShapeStyle.init<A>(_:)();
  *a2 = result;
  return result;
}

uint64_t implicit closure #71 in variable initialization expression of static AttachmentResults.StyleGuide.default@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for Material();
  MEMORY[0x1EEE9AC00](v2);
  static Material.ultraThin.getter();
  result = AnyShapeStyle.init<A>(_:)();
  *a1 = result;
  return result;
}

uint64_t implicit closure #91 in variable initialization expression of static AttachmentResults.StyleGuide.default@<X0>(_BYTE *a1@<X8>)
{
  result = static Edge.Set.top.getter();
  *a1 = result;
  return result;
}

uint64_t implicit closure #95 in variable initialization expression of static AttachmentResults.StyleGuide.default@<X0>(_BYTE *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy7SwiftUI4EdgeO3SetVGMd, "DY");
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1901E6240;
  v3 = static Edge.Set.top.getter();
  *(inited + 32) = v3;
  v4 = static Edge.Set.bottom.getter();
  *(inited + 33) = v4;
  v5 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v3)
  {
    v5 = Edge.Set.init(rawValue:)();
  }

  Edge.Set.init(rawValue:)();
  result = Edge.Set.init(rawValue:)();
  if (result != v4)
  {
    result = Edge.Set.init(rawValue:)();
    v5 = result;
  }

  *a1 = v5;
  a1[1] = 0;
  return result;
}

uint64_t implicit closure #97 in variable initialization expression of static AttachmentResults.StyleGuide.default@<X0>(void *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9BlendModeOSgMd, &_s7SwiftUI9BlendModeOSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v9 - v3;
  v5 = [objc_opt_self() tertiarySystemFillColor];
  v6 = Color.init(uiColor:)();
  v7 = type metadata accessor for BlendMode();
  (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
  return BlendedColor.init(color:blendMode:)(v6, v4, a1);
}

uint64_t implicit closure #99 in variable initialization expression of static AttachmentResults.StyleGuide.default@<X0>(void *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9BlendModeOSgMd, &_s7SwiftUI9BlendModeOSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v17 - v6;
  v8 = [objc_opt_self() tertiarySystemFillColor];
  v9 = Color.init(uiColor:)();
  v10 = *MEMORY[0x1E6981DA0];
  v11 = type metadata accessor for BlendMode();
  v12 = *(v11 - 8);
  v13 = *(v12 + 104);
  v13(v7, v10, v11);
  v14 = *(v12 + 56);
  v14(v7, 0, 1, v11);
  v13(v4, *MEMORY[0x1E6981DB8], v11);
  v14(v4, 0, 1, v11);
  BlendedColor.init(color:lightSchemeBlendMode:darkSchemeBlendMode:)(v9, v7, v4, a1);
  v15 = type metadata accessor for BlendedColor(0);
  return (*(*(v15 - 8) + 56))(a1, 0, 1, v15);
}

uint64_t implicit closure #98 in variable initialization expression of static AttachmentResults.StyleGuide.default@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for BlendedColor(0);
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t AttachmentResults.StyleGuide.default.unsafeMutableAddressor()
{
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for AttachmentResults.StyleGuide(0);

  return __swift_project_value_buffer(v0, static AttachmentResults.StyleGuide.default);
}

uint64_t static AttachmentResults.StyleGuide.default.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for AttachmentResults.StyleGuide(0);
  v3 = __swift_project_value_buffer(v2, static AttachmentResults.StyleGuide.default);
  return _s20CommunicationDetails12BlendedColorVWOcTm_0(v3, a1, type metadata accessor for AttachmentResults.StyleGuide);
}

uint64_t _s20CommunicationDetails12BlendedColorVWOcTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t getEnumTagSinglePayload for AttachmentResults(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for AttachmentResults(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
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
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t type metadata completion function for AttachmentResults.StyleGuide(uint64_t a1)
{
  result = type metadata accessor for BlendedColor(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t key path getter for DetailsViewController.tabs : DetailsViewController@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xD8))();
  *a2 = result;
  return result;
}

uint64_t key path setter for DetailsViewController.tabs : DetailsViewController(void *a1, void **a2)
{
  v2 = *((*MEMORY[0x1E69E7D40] & **a2) + 0xE0);

  return v2(v3);
}

double key path getter for DetailsViewController.selectedTab : DetailsViewController@<D0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  (*((*MEMORY[0x1E69E7D40] & **a1) + 0xF0))(v6);
  v3 = v7;
  result = *v6;
  v5 = v6[1];
  *a2 = v6[0];
  *(a2 + 16) = v5;
  *(a2 + 32) = v3;
  return result;
}

uint64_t key path setter for DetailsViewController.selectedTab : DetailsViewController(uint64_t *a1, void **a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  v6 = *a2;
  v10[0] = *a1;
  v10[1] = v2;
  v10[2] = v3;
  v10[3] = v4;
  v10[4] = v5;
  v7 = *((*MEMORY[0x1E69E7D40] & *v6) + 0xF8);
  v8 = outlined copy of DetailsTab?(v10[0], v2, v3, v4, v5);
  return v7(v10, v8);
}

double DetailsViewController.selectedTab.getter@<D0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC20CommunicationDetails21DetailsViewController_selectedTab);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v8;
  return outlined copy of DetailsTab?(v4, v5, v6, v7, v8);
}

__n128 DetailsViewController.selectedTab.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = (v1 + OBJC_IVAR____TtC20CommunicationDetails21DetailsViewController_selectedTab);
  swift_beginAccess();
  v5 = *v4;
  v6 = v4[1];
  v7 = v4[2];
  v8 = v4[3];
  v9 = v4[4];
  v10 = *(a1 + 16);
  *v4 = *a1;
  *(v4 + 1) = v10;
  v4[4] = v3;
  outlined consume of DetailsTab?(v5, v6, v7, v8, v9);
  return result;
}

uint64_t key path getter for DetailsViewController.pendingTabs : DetailsViewController@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x108))();
  *a2 = result;
  return result;
}

uint64_t key path setter for DetailsViewController.pendingTabs : DetailsViewController(void *a1, void **a2)
{
  v2 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x110);

  return v2(v3);
}

uint64_t key path getter for DetailsViewController.didLoadView : DetailsViewController@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x120))();
  *a2 = result & 1;
  return result;
}

uint64_t DetailsViewController.didLoadView.getter()
{
  v1 = OBJC_IVAR____TtC20CommunicationDetails21DetailsViewController_didLoadView;
  swift_beginAccess();
  return *(v0 + v1);
}

void DetailsViewController.didLoadView.setter(char a1)
{
  v3 = OBJC_IVAR____TtC20CommunicationDetails21DetailsViewController_didLoadView;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t key path getter for DetailsViewController.contentOffsets : DetailsViewController@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x138))();
  *a2 = result;
  return result;
}

uint64_t key path setter for DetailsViewController.contentOffsets : DetailsViewController(void *a1, void **a2)
{
  v2 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x140);

  return v2(v3);
}

uint64_t key path getter for DetailsViewController.proxies : DetailsViewController@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x150))();
  *a2 = result;
  return result;
}

uint64_t key path setter for DetailsViewController.proxies : DetailsViewController(void *a1, void **a2)
{
  v2 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x158);

  return v2(v3);
}

uint64_t DetailsViewController.tabs.setter(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  *(v2 + v4) = a1;
}

uint64_t key path getter for DetailsViewController.posterScrollGeometry : DetailsViewController@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x180))();
  *a2 = result;
  return result;
}

uint64_t key path setter for DetailsViewController.posterScrollGeometry : DetailsViewController(void *a1, void **a2)
{
  v2 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x188);

  return v2(v3);
}

id DetailsViewController.posterScrollGeometry.getter()
{
  v1 = type metadata accessor for ContactPosterScrollGeometry();
  *&v2 = MEMORY[0x1EEE9AC00](v1 - 8).n128_u64[0];
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC20CommunicationDetails21DetailsViewController____lazy_storage___posterScrollGeometry;
  if (*&v0[OBJC_IVAR____TtC20CommunicationDetails21DetailsViewController____lazy_storage___posterScrollGeometry])
  {
    v6 = *&v0[OBJC_IVAR____TtC20CommunicationDetails21DetailsViewController____lazy_storage___posterScrollGeometry];
LABEL_5:

    return v6;
  }

  v7 = v0;
  result = [v0 view];
  if (result)
  {
    v9 = result;
    type metadata accessor for PosterScrollGeometryTracker(0);
    [v9 frame];

    ContactPosterScrollGeometry.init(contentOffset:contentInsets:containerSize:)();
    v6 = PosterScrollGeometryTracker.__allocating_init(scrollGeometry:)(v4);
    *&v7[v5] = v6;

    goto LABEL_5;
  }

  __break(1u);
  return result;
}

double DetailsViewController.posterScrollGeometry.setter(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC20CommunicationDetails21DetailsViewController____lazy_storage___posterScrollGeometry) = a1;

  return result;
}

double (*DetailsViewController.posterScrollGeometry.modify(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = DetailsViewController.posterScrollGeometry.getter();
  return DetailsViewController.posterScrollGeometry.modify;
}

double DetailsViewController.posterScrollGeometry.modify(uint64_t *a1)
{
  *(a1[1] + OBJC_IVAR____TtC20CommunicationDetails21DetailsViewController____lazy_storage___posterScrollGeometry) = *a1;

  return result;
}

uint64_t key path getter for DetailsViewController.presentationProxy : DetailsViewController@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x198))();
  *a2 = result;
  return result;
}

uint64_t key path setter for DetailsViewController.presentationProxy : DetailsViewController(void *a1, void **a2)
{
  v2 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x1A0);

  return v2(v3);
}

double DetailsViewController.presentationProxy.getter()
{
  swift_beginAccess();

  return result;
}

double DetailsViewController.presentationProxy.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC20CommunicationDetails21DetailsViewController_presentationProxy;
  swift_beginAccess();
  *(v1 + v3) = a1;

  return result;
}

uint64_t key path getter for DetailsViewController.detailsPageViewController : DetailsViewController@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x1B0))();
  *a2 = result;
  return result;
}

uint64_t key path setter for DetailsViewController.detailsPageViewController : DetailsViewController(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x1B8);
  v4 = *a1;
  return v3(v2);
}

void *DetailsViewController.detailsPageViewController.getter()
{
  v1 = OBJC_IVAR____TtC20CommunicationDetails21DetailsViewController_detailsPageViewController;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void DetailsViewController.detailsPageViewController.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC20CommunicationDetails21DetailsViewController_detailsPageViewController;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t key path getter for DetailsViewController.headerView : DetailsViewController@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x1C8))();
  *a2 = result;
  return result;
}

uint64_t key path setter for DetailsViewController.headerView : DetailsViewController(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x1D0);
  v4 = *a1;
  return v3(v2);
}

void *DetailsViewController.headerView.getter()
{
  v1 = OBJC_IVAR____TtC20CommunicationDetails21DetailsViewController_headerView;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void DetailsViewController.headerView.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC20CommunicationDetails21DetailsViewController_headerView;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t key path getter for DetailsViewController.posterViewController : DetailsViewController@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x1E0))();
  *a2 = result;
  return result;
}

uint64_t key path setter for DetailsViewController.posterViewController : DetailsViewController(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x1E8);
  v4 = *a1;
  return v3(v2);
}

void *DetailsViewController.posterViewController.getter()
{
  v1 = OBJC_IVAR____TtC20CommunicationDetails21DetailsViewController_posterViewController;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void DetailsViewController.posterViewController.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC20CommunicationDetails21DetailsViewController_posterViewController;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t key path getter for DetailsViewController.delegate : DetailsViewController@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x210))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t key path setter for DetailsViewController.delegate : DetailsViewController(uint64_t a1, void **a2)
{
  v2 = *(a1 + 8);
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x218);
  v4 = swift_unknownObjectRetain();
  return v3(v4, v2);
}

uint64_t DetailsViewController.delegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC20CommunicationDetails21DetailsViewController_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*DetailsViewController.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC20CommunicationDetails21DetailsViewController_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return DetailsViewController.delegate.modify;
}

void DetailsViewController.delegate.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

void *DetailsViewController.shouldInjectHeaderViewIntoContent.getter()
{
  v1 = MEMORY[0x1E69E7D40];
  if (*(v0 + OBJC_IVAR____TtC20CommunicationDetails21DetailsViewController_styleGuide + 8))
  {
    v2 = v0;
    result = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x1C8))();
    if (!result)
    {
      goto LABEL_11;
    }

    v4 = result;
    v5 = (*((*v1 & *result) + 0x1F8))();

    if (v5)
    {
      v6 = 0;
      return (v6 & 1);
    }

    v0 = v2;
  }

  result = (*((*v1 & *v0) + 0x1B0))();
  if (result)
  {
    v7 = result;
    v8 = (*((*v1 & *result) + 0xC8))();

    v6 = v8 ^ 1;
    return (v6 & 1);
  }

  __break(1u);
LABEL_11:
  __break(1u);
  return result;
}

uint64_t DetailsViewController.__allocating_init(configuration:styleGuide:_:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(__n128))
{
  v4 = v3;
  v8 = type metadata accessor for DetailsStyleGuide(0);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a3(v9);
  outlined init with copy of DetailsStyleGuide(a2, v11, type metadata accessor for DetailsStyleGuide);
  v13 = (*(v4 + 560))(v12, a1, v11);
  outlined destroy of DetailsStyleGuide(a2);
  return v13;
}

uint64_t outlined destroy of DetailsStyleGuide(uint64_t a1)
{
  v2 = type metadata accessor for DetailsStyleGuide(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *DetailsViewController.__allocating_init(tabs:configuration:styleGuide:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = specialized DetailsViewController.init(tabs:configuration:styleGuide:)(a1, a2, a3);

  return v8;
}

void *DetailsViewController.init(tabs:configuration:styleGuide:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = specialized DetailsViewController.init(tabs:configuration:styleGuide:)(a1, a2, a3);

  return v3;
}

id DetailsViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

Swift::Void __swiftcall DetailsViewController.viewDidLoad()()
{
  v1 = v0;
  v92.receiver = v0;
  v92.super_class = type metadata accessor for DetailsViewController(0);
  objc_msgSendSuper2(&v92, sel_viewDidLoad);
  DetailsViewController.configureNavigationBar()();
  v80 = *(v0 + OBJC_IVAR____TtC20CommunicationDetails21DetailsViewController_configuration);
  v78 = *(*v80 + 584);
  v2 = v78(&v85);
  v91 = v85;
  v90 = 0;
  lazy protocol witness table accessor for type DetailsViewController.HeaderStyle and conformance DetailsViewController.HeaderStyle(v2, v3, v4);
  if (dispatch thunk of static Equatable.== infix(_:_:)())
  {
    DetailsViewController.setUpBlurredBackgroundViews()();
  }

  v5 = [v0 view];
  if (!v5)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v6 = v5;
  v7 = MEMORY[0x1E69E7D40];
  v79 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x1C8);
  v8 = v79();
  if (!v8)
  {
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v9 = v8;
  [v6 addSubview_];

  type metadata accessor for DetailsPresentationProxy();
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = DetailsPresentationProxy.__allocating_init(presentationPerformer:presentingViewControllerProvider:)(partial apply for closure #1 in DetailsViewController.viewDidLoad(), v10, partial apply for closure #2 in DetailsViewController.viewDidLoad(), v11);
  v13 = (*((*v7 & *v1) + 0x1A0))(v12);
  v83 = v1;
  v76 = *((*v7 & *v1) + 0xD8);
  v14 = (v76)(v13);
  v15 = v14;
  v81 = *(v14 + 16);
  if (v81)
  {
    v16 = 0;
    v17 = v14 + 64;
    v84 = MEMORY[0x1E69E7CC0];
    while (v16 < *(v15 + 16))
    {
      v18 = *(v17 - 8);
      v19 = *((*MEMORY[0x1E69E7D40] & *v83) + 0x150);

      v21 = v19(v20);
      if ((v21 & 0xC000000000000001) != 0)
      {
        v22 = MEMORY[0x193AEB000](v16, v21);
      }

      else
      {
        if (v16 >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_42;
        }

        v22 = *(v21 + 8 * v16 + 32);
      }

      v24 = (*((*MEMORY[0x1E69E7D40] & *v83) + 0x198))(v23);
      v25 = v18(v22, v24);
      v27 = v26;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v84 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v84[2] + 1, 1, v84);
      }

      v29 = v84[2];
      v28 = v84[3];
      if (v29 >= v28 >> 1)
      {
        v84 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v29 + 1, 1, v84);
      }

      ++v16;

      v84[2] = v29 + 1;
      v30 = &v84[2 * v29];
      v30[4] = v25;
      v30[5] = v27;
      v17 += 40;
      if (v81 == v16)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v84 = MEMORY[0x1E69E7CC0];
LABEL_19:

  type metadata accessor for DetailsPageViewController();

  v31 = v83;
  v32 = DetailsPageViewController.__allocating_init(pages:pageSelectionDelegate:)(v84, v83, &protocol witness table for DetailsViewController);
  v33 = MEMORY[0x1E69E7D40];
  v34 = (*((*MEMORY[0x1E69E7D40] & *v31) + 0x1B8))(v32);
  v35 = (*((*v33 & *v31) + 0xF0))(&v85, v34);
  v36 = v86;
  if (v86)
  {
    v37 = v85;
    v82 = v87;
    v77 = v88;
    v38 = v89;
  }

  else
  {
    v39 = (v76)(v35);
    if (v39[2])
    {
      v37 = v39[4];
      v36 = v39[5];
      v40 = v39[6];
      v77 = v39[7];
      v38 = v39[8];

      v82 = v40;
    }

    else
    {

      v37 = 0;
      v36 = 0;
      v82 = 0;
      v77 = 0;
      v38 = 0;
    }
  }

  v41 = (v79)(v35);
  if (!v41)
  {
    goto LABEL_45;
  }

  v42 = v41;
  v43 = v76();
  v44 = v37;
  v85 = v37;
  v86 = v36;
  v87 = v82;
  v88 = v77;
  v89 = v38;
  v45 = swift_allocObject();
  swift_unknownObjectWeakInit();

  Header.HeaderView.configureHeaderTabs(for:selectedTab:onTabChange:)(v43, &v85, partial apply for closure #3 in DetailsViewController.viewDidLoad(), v45);

  v47 = *((*MEMORY[0x1E69E7D40] & *v31) + 0x1B0);
  v48 = (v47)(v46);
  if (!v48)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v49 = v48;
  [v31 addChildViewController_];

  v50 = [v31 view];
  if (!v50)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v51 = v50;
  v52 = v47();
  if (!v52)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v53 = v52;
  v54 = [v52 view];

  if (!v54)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  [v51 addSubview_];

  v55 = v47();
  if (!v55)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v56 = v55;
  [v55 didMoveToParentViewController_];

  v57 = v47();
  if (!v57)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v58 = v57;
  v59 = [v57 view];

  if (!v59)
  {
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  [v59 setTranslatesAutoresizingMaskIntoConstraints_];

  v78(&v85);
  v91 = v85;
  v90 = 1;
  if (dispatch thunk of static Equatable.== infix(_:_:)())
  {
    DetailsViewController.setUpViewsForPosterStyle()();
  }

  v60 = objc_opt_self();
  DetailsViewController.viewConstraints.getter();
  type metadata accessor for NSLayoutConstraint(0, &lazy cache variable for type metadata for NSLayoutConstraint, 0x1E696ACD8);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v60 activateConstraints_];

  v62 = [v31 view];
  if (!v62)
  {
    goto LABEL_53;
  }

  v63 = v62;
  v64 = v79();
  if (!v64)
  {
LABEL_54:
    __break(1u);
    return;
  }

  v65 = v64;

  [v63 bringSubviewToFront_];

  v78(&v85);
  v91 = v85;
  v90 = 0;
  if (dispatch thunk of static Equatable.== infix(_:_:)())
  {
    v66 = [v31 navigationController];
    if (v66)
    {
      v67 = v66;
      [v66 setToolbarHidden:0 animated:1];
    }

    DetailsViewController.updateToolbarForCurrentTab()();
  }

  DetailsViewController.updateAvatarView()();
  DetailsViewController.setUpHeaderPocketInteractionIfNeeded()();
  v68 = (*(*v80 + 296))();
  v70 = v69;
  v71 = default argument 1 of DetailsViewController.setSelectedTab(_:animated:)() & 1;
  v72.value._countAndFlagsBits = v68;
  v72.value._object = v70;
  DetailsViewController.setSelectedTab(_:animated:)(v72, v71);

  v73 = MEMORY[0x1E69E7D40];
  v74 = (*((*MEMORY[0x1E69E7D40] & *v31) + 0x128))(1);
  v75._rawValue = (*((*v73 & *v31) + 0x108))(v74);
  DetailsViewController.addTabsToViewHierarchy(_:)(v75);

  (*((*v73 & *v31) + 0x110))(MEMORY[0x1E69E7CC0]);
  outlined consume of DetailsTab?(v44, v36, v82, v77, v38);
}

Swift::Void __swiftcall DetailsViewController.viewDidAppear(_:)(Swift::Bool a1)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DetailsViewController(0);
  v21.receiver = v1;
  v21.super_class = v7;
  objc_msgSendSuper2(&v21, sel_viewDidAppear_, a1);
  v8 = Logger.detailsViewController.unsafeMutableAddressor();
  (*(v4 + 16))(v6, v8, v3);
  v9 = v1;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v20 = v13;
    *v12 = 136315138;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1901E6CD0;
    *(v14 + 56) = v7;
    *(v14 + 64) = lazy protocol witness table accessor for type DetailsViewController and conformance NSObject();
    *(v14 + 32) = v9;
    v15 = v9;
    v16 = String.init(format:_:)();
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, &v20);

    *(v12 + 4) = v18;
    _os_log_impl(&dword_190119000, v10, v11, "<DetailsViewController %s> did appear.", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x193AEBB30](v13, -1, -1);
    MEMORY[0x193AEBB30](v12, -1, -1);
  }

  (*(v4 + 8))(v6, v3);
}

Swift::Void __swiftcall DetailsViewController.viewDidDisappear(_:)(Swift::Bool a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v39 - v9;
  v11 = type metadata accessor for DetailsViewController(0);
  v41.receiver = v2;
  v41.super_class = v11;
  objc_msgSendSuper2(&v41, sel_viewDidDisappear_, a1);
  v12 = [v2 presentedViewController];
  if (v12)
  {

    v13 = Logger.detailsViewController.unsafeMutableAddressor();
    (*(v5 + 16))(v10, v13, v4);
    v14 = v2;
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v40 = v18;
      *v17 = 136315138;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_1901E6CD0;
      *(v19 + 56) = v11;
      *(v19 + 64) = lazy protocol witness table accessor for type DetailsViewController and conformance NSObject();
      *(v19 + 32) = v14;
      v20 = v14;
      v21 = String.init(format:_:)();
      v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, &v40);

      *(v17 + 4) = v23;
      _os_log_impl(&dword_190119000, v15, v16, "<DetailsViewController %s> did disappear for modal presentation", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v18);
      MEMORY[0x193AEBB30](v18, -1, -1);
      MEMORY[0x193AEBB30](v17, -1, -1);
    }

    (*(v5 + 8))(v10, v4);
  }

  else
  {
    v24 = Logger.detailsViewController.unsafeMutableAddressor();
    (*(v5 + 16))(v7, v24, v4);
    v25 = v2;
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v40 = v29;
      *v28 = 136315138;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v30 = swift_allocObject();
      *(v30 + 16) = xmmword_1901E6CD0;
      *(v30 + 56) = v11;
      *(v30 + 64) = lazy protocol witness table accessor for type DetailsViewController and conformance NSObject();
      *(v30 + 32) = v25;
      v31 = v25;
      v32 = String.init(format:_:)();
      v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v33, &v40);

      *(v28 + 4) = v34;
      _os_log_impl(&dword_190119000, v26, v27, "<DetailsViewController %s> did disappear for dismissal", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v29);
      MEMORY[0x193AEBB30](v29, -1, -1);
      MEMORY[0x193AEBB30](v28, -1, -1);
    }

    v35 = (*(v5 + 8))(v7, v4);
    if ((*((*MEMORY[0x1E69E7D40] & *v25) + 0x210))(v35))
    {
      v37 = v36;
      ObjectType = swift_getObjectType();
      (*(v37 + 48))(v25, ObjectType, v37);
      swift_unknownObjectRelease();
    }
  }
}

void @objc DetailsViewController.viewDidAppear(_:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t))
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8 = a1;
  a5(a3);
}

Swift::Void __swiftcall DetailsViewController.viewDidLayoutSubviews()()
{
  v1 = v0;
  v20.receiver = v0;
  v20.super_class = type metadata accessor for DetailsViewController(0);
  objc_msgSendSuper2(&v20, sel_viewDidLayoutSubviews);
  v2 = [v0 view];
  if (v2)
  {
    v3 = v2;
    [v2 bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;

    v12 = *(v1 + OBJC_IVAR____TtC20CommunicationDetails21DetailsViewController_backgroundVisualEffectView);
    v21.origin.x = v5;
    v21.origin.y = v7;
    v21.size.width = v9;
    v21.size.height = v11;
    Width = CGRectGetWidth(v21);
    v22.origin.x = v5;
    v22.origin.y = v7;
    v22.size.width = v9;
    v22.size.height = v11;
    [v12 setFrame_];
    DetailsViewController.updateHeaderView()();
    v14 = MEMORY[0x1E69E7D40];
    v15 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x1C8))();
    if (v15)
    {
      v16 = v15;
      Header.HeaderView.rawSizeThatFits(_:strategy:)(0, v9, v11);
      v18 = v17;

      v19 = (*((*v14 & *v1) + 0x150))();
      Array<A>.updateTopInset(_:)(v19, v18);

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void @objc DetailsViewController.viewDidLoad()(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = a1;
  a4();
}

Swift::Void __swiftcall DetailsViewController.toggleEditing()()
{
  v1 = [v0 isEditing];
  v3 = 0;
  memset(v2, 0, sizeof(v2));
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0x240))(v1 ^ 1, v2);
}

void DetailsViewController.setSelectModeEnabled(_:forTab:)(char a1, uint64_t *a2)
{
  v5 = *a2;
  v4 = a2[1];
  v7 = a2[2];
  v6 = a2[3];
  v8 = a2[4];
  v9 = [v2 setEditing_];
  if (v4)
  {
    *&v25 = v5;
    v26 = v7;
    v27 = v6;
    v10 = v4;
    v28 = v8;
LABEL_3:
    v11 = v5;
    v12 = a1;
    v13 = v27;
    v14 = v28;
    v15 = v8;
    v16 = v26;
    v17 = v25;
    v18 = v6;
    v19 = *(*v26 + 152);
    v20 = outlined copy of DetailsTab?(v11, v4, v7, v18, v15);
    v19(v12 & 1, v20);
    *&v25 = v17;
    *(&v25 + 1) = v10;
    v26 = v16;
    v27 = v13;
    v28 = v14;
    DetailsViewController.updateToolbar(for:)(&v25);
    *&v25 = v17;
    *(&v25 + 1) = v10;
    v26 = v16;
    v27 = v13;
    v28 = v14;
    DetailsViewController.updateEditMenuButton(for:)(&v25);

    outlined consume of DetailsTab?(v17, v10, v16, v13, v14);
    return;
  }

  v21 = MEMORY[0x1E69E7D40];
  v22 = (*((*MEMORY[0x1E69E7D40] & *v2) + 0x1C8))(v9);
  if (!v22)
  {
    __break(1u);
    return;
  }

  v23 = v22;
  v24 = (*((*v21 & *v22) + 0x148))();

  if (v24)
  {
    (*(*v24 + 184))(&v25);

    v10 = *(&v25 + 1);
    if (*(&v25 + 1))
    {
      goto LABEL_3;
    }
  }

  outlined copy of DetailsTab?(v5, v4, v7, v6, v8);
}

void DetailsViewController.zoomTransitionAlignmentRect.getter(uint64_t a1@<X8>)
{
  v3 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x1C8))();
  if (v3)
  {
    v4 = v3;
    v5 = *(v3 + OBJC_IVAR____TtCV20CommunicationDetails6Header10HeaderView_avatarView);

    [v5 frame];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;

    v14.origin.x = v7;
    v14.origin.y = v9;
    v14.size.width = v11;
    v14.size.height = v13;
    *a1 = CGRectInset(v14, -64.0, -64.0);
    *(a1 + 32) = 0;
  }

  else
  {
    __break(1u);
  }
}

void DetailsViewController.handleUpdates(for:)(uint64_t *a1)
{
  v2 = a1[1];
  if (v2)
  {
    v3 = v1;
    v4 = *a1;
    v6 = a1[2];
    v5 = a1[3];
    v7 = a1[4];
    *&v27 = *a1;
    *(&v27 + 1) = v2;
    *&v28 = v6;
    *(&v28 + 1) = v5;
    v29 = v7;
    v8 = MEMORY[0x1E69E7D40];
    v9 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xD8);

    v11 = v9(v10);
    v13 = specialized Collection<>.firstIndex(of:)(&v27, v11, v12);
    v15 = v14;

    if (v15)
    {
      goto LABEL_7;
    }

    v17 = (*((*v8 & *v1) + 0x1B0))(v16);
    if (!v17)
    {
      __break(1u);
      return;
    }

    v18 = v17;
    v19 = default argument 1 of DetailsPageViewController.navigate(to:animated:)();
    (*((*v8 & *v18) + 0x128))(v13, v19 & 1);

    v24 = v27;
    v25 = v28;
    v26 = v29;
    DetailsViewController.updateToolbar(for:)(&v24);
    v24 = v27;
    v25 = v28;
    v26 = v29;
    v20 = DetailsViewController.updateEditMenuButton(for:)(&v24);
    if (!(*((*v8 & *v3) + 0x210))(v20))
    {
LABEL_7:

      outlined consume of DetailsTab?(v4, v2, v6, v5, v7);
    }

    else
    {
      v22 = v21;
      ObjectType = swift_getObjectType();
      v24 = v27;
      v25 = v28;
      v26 = v29;
      (*(v22 + 8))(v3, &v24, ObjectType, v22);
      swift_unknownObjectRelease();
      outlined consume of DetailsTab?(v4, v2, v6, v5, v7);
    }
  }
}

void DetailsViewController.setUpBlurredBackgroundViews()()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC20CommunicationDetails21DetailsViewController_configuration];
  v3 = (*(*v2 + 584))(&v17 + 7);
  BYTE6(v17) = HIBYTE(v17);
  BYTE5(v17) = 1;
  lazy protocol witness table accessor for type DetailsViewController.HeaderStyle and conformance DetailsViewController.HeaderStyle(v3, v4, v5);
  if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    v16 = *(v2 + 56);
    LOBYTE(v17) = *(v2 + 64);
    if (DetailsViewController.PresentationMode.wantsExplicitBackground.getter())
    {
      v6 = *&v0[OBJC_IVAR____TtC20CommunicationDetails21DetailsViewController_backgroundVisualEffectView];
      [*&v1[OBJC_IVAR____TtC20CommunicationDetails21DetailsViewController_backgroundVisualEffectView] setUserInteractionEnabled_];
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_1901E8240;
      v8 = [objc_opt_self() effectWithBlurRadius_];
      if (v8)
      {
        *(v7 + 32) = v8;
        v9 = [objc_opt_self() systemBackgroundColor];
        v10 = objc_opt_self();
        v11 = [v10 effectCompositingColor:v9 withMode:0 alpha:0.6];

        if (v11)
        {
          *(v7 + 40) = v11;
          type metadata accessor for NSLayoutConstraint(0, &lazy cache variable for type metadata for UIVisualEffect, 0x1E69DD290);
          isa = Array._bridgeToObjectiveC()().super.isa;

          v13 = [v10 effectCombiningEffects_];

          [v6 setEffect_];
          v14 = [v1 view];
          if (v14)
          {
            v15 = v14;
            [v14 addSubview_];

            return;
          }

LABEL_10:
          __break(1u);
          return;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      goto LABEL_10;
    }
  }
}

void DetailsViewController.setUpHeaderPocketInteractionIfNeeded()()
{
  if (*(v0 + OBJC_IVAR____TtC20CommunicationDetails21DetailsViewController_styleGuide + 8) != 1)
  {
    return;
  }

  v1 = [objc_allocWithZone(MEMORY[0x1E69DD6B8]) init];
  v2 = MEMORY[0x1E69E7D40];
  v3 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x1B0))();
  if (!v3)
  {
    __break(1u);
    goto LABEL_10;
  }

  v4 = v3;
  v5 = [v3 view];

  if (!v5)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  [v5 addInteraction_];

  v6 = [objc_allocWithZone(MEMORY[0x1E69DD6C8]) initWithStyle_];
  [v6 _setEdge_];
  v7 = v1;
  [v6 _setCollectorInteraction_];
  v8 = [objc_allocWithZone(MEMORY[0x1E69DD6C0]) initWithScrollView:0 edge:1];
  [v8 _setCollectorInteraction_];

  v9 = (*((*v2 & *v0) + 0x1C8))();
  if (!v9)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v10 = v9;
  v11 = v6;
  v12 = v8;
  Header.HeaderView.updateScrollPocketInteractions(basePocketInteraction:pocketContainerInteraction:)(v6, v8);
}

void *DetailsViewController.setUpHeader()()
{
  v1 = v0;
  swift_getObjectType();
  v2 = type metadata accessor for DetailsStyleGuide(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Header.StyleGuide(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Header.ViewModel(0);
  v8 = OBJC_IVAR____TtC20CommunicationDetails21DetailsViewController_styleGuide;
  outlined init with copy of DetailsStyleGuide(v1 + OBJC_IVAR____TtC20CommunicationDetails21DetailsViewController_styleGuide, v7, type metadata accessor for Header.StyleGuide);

  v10 = Header.ViewModel.__allocating_init(configuration:headerStyleGuide:)(v9, v7);
  type metadata accessor for Header.HeaderView(0);
  outlined init with copy of DetailsStyleGuide(v1 + v8, v4, type metadata accessor for DetailsStyleGuide);
  type metadata accessor for QuickActionsContainerDelegateWrapper(0);

  v11 = v1;
  v12 = QuickActionsContainerDelegateWrapper.__allocating_init(delegate:)(v1, &protocol witness table for DetailsViewController);
  swift_unknownObjectRetain();
  v13 = Header.HeaderView.__allocating_init(viewModel:styleGuide:headerDelegate:quickActionsDelegate:)(v10, v4, v1, &protocol witness table for DetailsViewController, v12);
  v14 = MEMORY[0x1E69E7D40];
  v15 = (*((*MEMORY[0x1E69E7D40] & *v11) + 0x1D0))(v13);
  v16 = *((*v14 & *v11) + 0x1C8);
  result = v16(v15);
  if (result)
  {
    v18 = result;
    v19 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v20 = *((*v14 & *v18) + 0x1D0);

    v20(partial apply for closure #1 in DetailsViewController.setUpHeader(), v19);

    *(v11 + OBJC_IVAR____TtC20CommunicationDetails21DetailsViewController_headerViewModel) = v10;

    result = v16(v21);
    if (result)
    {
      v22 = result;
      (*((*v14 & *result) + 0x238))([v11 traitCollection]);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy5UIKit17UITraitDefinition_pXpGMd, &_ss23_ContiguousArrayStorageCy5UIKit17UITraitDefinition_pXpGMR);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_1901E6CD0;
      v24 = type metadata accessor for UITraitUserInterfaceStyle();
      v25 = MEMORY[0x1E69DC0F8];
      *(v23 + 32) = v24;
      *(v23 + 40) = v25;
      UIViewController.registerForTraitChanges<A>(_:handler:)();

      swift_unknownObjectRelease();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void DetailsViewController.performPresentation(_:style:animated:)(id a1, _BYTE *a2, char a3)
{
  if (*a2)
  {
    v9 = [v3 navigationController];
    [v9 pushViewController:a1 animated:a3 & 1];
LABEL_3:

    return;
  }

  if ([a1 modalPresentationStyle] == 7)
  {
    v9 = [a1 presentationController];
    if (!v9)
    {
      return;
    }

    objc_opt_self();
    v6 = swift_dynamicCastObjCClass();
    if (!v6)
    {
      goto LABEL_3;
    }

    v7 = v6;
    v8 = [v3 view];
    [v7 setSourceView_];
  }

  [v3 presentViewController:a1 animated:a3 & 1 completion:0];
}

id DetailsViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = MEMORY[0x193AEA8E0](a1);
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id DetailsViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DetailsViewController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t DetailsViewController.contentOffset(for:)(unint64_t a1)
{
  result = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x138))();
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(result + 16) > a1)
  {
  }

  __break(1u);
  return result;
}

void DetailsViewController.updateContentOffset(for:newValue:tabId:)(unint64_t a1, uint64_t *a2, unint64_t a3, double a4)
{
  v6 = v4;
  v11 = MEMORY[0x1E69E7D40];
  v12 = *((*MEMORY[0x1E69E7D40] & *v4) + 0x138);
  v13 = v12();
  if ((a1 & 0x8000000000000000) != 0)
  {
    goto LABEL_33;
  }

  if (*(v13 + 16) <= a1)
  {
    goto LABEL_34;
  }

  v14 = *(v13 + 8 * a1 + 32);

  v16 = vabdd_f64(v14, a4);
  v5 = 0.01;
  if (v16 >= 0.01)
  {
    v38 = *((*v11 & *v4) + 0x150);
    v17 = v38(v15);
    v11 = v17;
    if ((v17 & 0xC000000000000001) != 0)
    {
      goto LABEL_35;
    }

    if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a1)
    {
      __break(1u);
    }

    else
    {
      v18 = *(v17 + 8 * a1 + 32);

      while (1)
      {

        v20 = MEMORY[0x1EEE9AC00](v19);
        v11 = 0;
        (*(*v18 + 448))(partial apply for closure #1 in DetailsViewController.updateContentOffset(for:newValue:tabId:), v20);

        DetailsViewController.updatePosterScrollGeometry(for:animated:)(a1, 0);
        DetailsViewController.updateHeaderState(for:tabId:)(a2, a3, a4);
        a1 = *(v12() + 16);

        if (!a1)
        {
          break;
        }

        v37 = OBJC_IVAR____TtC20CommunicationDetails21DetailsViewController_maxScrollOffsetForScrollSync;
        for (i = 4; ; ++i)
        {
          a3 = i - 4;
          v26 = *((v12)(v21) + 16);

          if (i - 4 >= v26)
          {
            break;
          }

          v28 = v38(v27);
          if ((v28 & 0xC000000000000001) != 0)
          {
            a2 = MEMORY[0x193AEB000](i - 4, v28);
          }

          else
          {
            if (a3 >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_29;
            }

            a2 = *(v28 + 8 * i);
          }

          v30 = (*(*a2 + 536))(v29);

          if (v30)
          {
            v31 = *(v6 + v37);
            v32 = a4;
            if (v31 <= a4)
            {
              v33 = (v12)(v21);
              if (a3 >= *(v33 + 16))
              {
                goto LABEL_31;
              }

              v32 = *(v33 + 8 * i);

              if (v31 > v32)
              {
                v32 = v31;
              }
            }

            v39 = v32;
            v34 = (v12)(v21);
            if (a3 >= *(v34 + 16))
            {
              goto LABEL_30;
            }

            v35 = *(v34 + 8 * i);

            if (vabdd_f64(v32, v35) > v5)
            {
              v36 = v38(v21);
              a2 = v36;
              if ((v36 & 0xC000000000000001) != 0)
              {
                v23 = MEMORY[0x193AEB000](i - 4, v36);
              }

              else
              {
                if (a3 >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_32;
                }

                v23 = *(v36 + 8 * i);
              }

              a2 = &v37;
              v25 = MEMORY[0x1EEE9AC00](v24);
              (*(*v23 + 448))(partial apply for closure #2 in DetailsViewController.updateContentOffset(for:newValue:tabId:), v25);
            }
          }

          if (!--a1)
          {
            return;
          }
        }

        __break(1u);
LABEL_29:
        __break(1u);
LABEL_30:
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
        v18 = MEMORY[0x193AEB000](a1, v11);
      }
    }
  }
}

unint64_t DetailsViewController.setMaxScrollOffsetForScrollSync(_:)(double a1)
{
  *(v1 + OBJC_IVAR____TtC20CommunicationDetails21DetailsViewController_maxScrollOffsetForScrollSync) = a1;
  result = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x150))();
  v4 = result;
  if (result >> 62)
  {
    if ((result & 0x8000000000000000) == 0)
    {
      result &= 0xFFFFFFFFFFFFFF8uLL;
    }

    result = MEMORY[0x193AEB0F0](result);
    v5 = result;
    if (!result)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v5 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      goto LABEL_12;
    }
  }

  if (v5 < 1)
  {
    __break(1u);
    return result;
  }

  for (i = 0; i != v5; ++i)
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x193AEB000](i, v4);
    }

    else
    {
      v7 = *(v4 + 8 * i + 32);
    }

    (*(*v7 + 568))(a1);
  }

LABEL_12:
}

void specialized closure #2 in DetailsViewController.setUpHeader()(void *a1)
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  v3 = MEMORY[0x1E69E7D40];
  v4 = (*((*MEMORY[0x1E69E7D40] & *a1) + 0x1C8))(isCurrentExecutor);
  if (v4)
  {
    (*((*v3 & *v4) + 0x238))([a1 traitCollection]);
  }

  else
  {
    __break(1u);
  }
}

void *specialized DetailsViewController.init(tabs:configuration:styleGuide:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v71 = a3;
  v7 = type metadata accessor for AttachmentResults.StyleGuide(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for InfoTab.StyleGuide(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Header.StyleGuide(0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v71 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DetailsStyleGuide(0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v71 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = &v4[OBJC_IVAR____TtC20CommunicationDetails21DetailsViewController_selectedTab];
  *v19 = 0u;
  *(v19 + 1) = 0u;
  *(v19 + 4) = 0;
  v20 = MEMORY[0x1E69E7CC0];
  *&v4[OBJC_IVAR____TtC20CommunicationDetails21DetailsViewController_pendingTabs] = MEMORY[0x1E69E7CC0];
  v4[OBJC_IVAR____TtC20CommunicationDetails21DetailsViewController_didLoadView] = 0;
  *&v4[OBJC_IVAR____TtC20CommunicationDetails21DetailsViewController_proxies] = v20;
  *&v4[OBJC_IVAR____TtC20CommunicationDetails21DetailsViewController_maxScrollOffsetForScrollSync] = 0;
  *&v4[OBJC_IVAR____TtC20CommunicationDetails21DetailsViewController____lazy_storage___posterScrollGeometry] = 0;
  *&v4[OBJC_IVAR____TtC20CommunicationDetails21DetailsViewController_presentationProxy] = 0;
  *&v4[OBJC_IVAR____TtC20CommunicationDetails21DetailsViewController_detailsPageViewController] = 0;
  v21 = OBJC_IVAR____TtC20CommunicationDetails21DetailsViewController_backgroundVisualEffectView;
  *&v4[v21] = [objc_allocWithZone(MEMORY[0x1E69DD298]) init];
  *&v4[OBJC_IVAR____TtC20CommunicationDetails21DetailsViewController_headerView] = 0;
  *&v4[OBJC_IVAR____TtC20CommunicationDetails21DetailsViewController_posterViewController] = 0;
  *&v4[OBJC_IVAR____TtC20CommunicationDetails21DetailsViewController_headerViewModel] = 0;
  *&v4[OBJC_IVAR____TtC20CommunicationDetails21DetailsViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC20CommunicationDetails21DetailsViewController_tabs] = a1;
  v22 = *(a1 + 16);
  if (v22)
  {
    v23 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    *(v23 + 16) = v22;
    bzero((v23 + 32), 8 * v22);
  }

  else
  {
    v23 = v20;
  }

  *&v4[OBJC_IVAR____TtC20CommunicationDetails21DetailsViewController_contentOffsets] = v23;
  *&v4[OBJC_IVAR____TtC20CommunicationDetails21DetailsViewController_configuration] = a2;
  v24 = *(*a2 + 584);

  v26 = v24(v82, v25);
  LOBYTE(v84[0]) = v82[0];
  LOBYTE(v83[0]) = 1;
  lazy protocol witness table accessor for type DetailsViewController.HeaderStyle and conformance DetailsViewController.HeaderStyle(v26, v27, v28);
  if (dispatch thunk of static Equatable.== infix(_:_:)())
  {
    v29 = Header.StyleGuide.poster.unsafeMutableAddressor();
    outlined init with copy of DetailsStyleGuide(v29, v15, type metadata accessor for Header.StyleGuide);
    v30 = DetailsStyleGuide.TabBarConfiguration.poster.unsafeMutableAddressor();
    v31 = v30[1];
    v84[0] = *v30;
    v84[1] = v31;
    v32 = v30[5];
    v34 = v30[2];
    v33 = v30[3];
    v84[4] = v30[4];
    v84[5] = v32;
    v84[2] = v34;
    v84[3] = v33;
    v83[2] = v30[2];
    v83[3] = v30[3];
    v83[4] = v30[4];
    v83[5] = v30[5];
    v83[0] = *v30;
    v83[1] = v30[1];
    outlined init with copy of DetailsStyleGuide.TabBarConfiguration(v84, v82);
    default argument 2 of DetailsStyleGuide.init(headerStyleGuide:horizontalTabBarConfiguration:participantGridStyleGuide:infoTabStyleGuide:attachmentResultsStyleGuide:detailsViewControllerStyleGuide:)(v82);
    default argument 3 of DetailsStyleGuide.init(headerStyleGuide:horizontalTabBarConfiguration:participantGridStyleGuide:infoTabStyleGuide:attachmentResultsStyleGuide:detailsViewControllerStyleGuide:)(v12);
    default argument 4 of DetailsStyleGuide.init(headerStyleGuide:horizontalTabBarConfiguration:participantGridStyleGuide:infoTabStyleGuide:attachmentResultsStyleGuide:detailsViewControllerStyleGuide:)(v9);
    default argument 5 of DetailsStyleGuide.init(headerStyleGuide:horizontalTabBarConfiguration:participantGridStyleGuide:infoTabStyleGuide:attachmentResultsStyleGuide:detailsViewControllerStyleGuide:)(&v80);
    v78 = v80;
    v79 = v81;
    DetailsStyleGuide.init(headerStyleGuide:horizontalTabBarConfiguration:participantGridStyleGuide:infoTabStyleGuide:attachmentResultsStyleGuide:detailsViewControllerStyleGuide:)(v15, v83, v82, v12, v9, &v78, v18);
    outlined init with take of DetailsStyleGuide(v18, &v4[OBJC_IVAR____TtC20CommunicationDetails21DetailsViewController_styleGuide]);
  }

  else
  {
    outlined init with copy of DetailsStyleGuide(v71, &v4[OBJC_IVAR____TtC20CommunicationDetails21DetailsViewController_styleGuide], type metadata accessor for DetailsStyleGuide);
  }

  v35 = type metadata accessor for DetailsViewController(0);
  v85.receiver = v4;
  v85.super_class = v35;
  v36 = objc_msgSendSuper2(&v85, sel_initWithNibName_bundle_, 0, 0);
  DetailsViewController.setUpHeader()();
  v37 = OBJC_IVAR____TtC20CommunicationDetails21DetailsViewController_configuration;
  v38 = *(v36 + OBJC_IVAR____TtC20CommunicationDetails21DetailsViewController_configuration);
  v39 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v40 = *(*v38 + 448);

  v40(partial apply for closure #1 in DetailsViewController.init(tabs:configuration:styleGuide:), v39);

  v41 = *(v36 + v37);
  v42 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v43 = *(*v41 + 496);

  v43(partial apply for closure #2 in DetailsViewController.init(tabs:configuration:styleGuide:), v42);

  v44 = *(v36 + v37);
  v45 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v46 = *(*v44 + 544);

  v46(partial apply for closure #3 in DetailsViewController.init(tabs:configuration:styleGuide:), v45);

  *&v84[0] = v20;
  v48 = MEMORY[0x1E69E7D40];
  v49 = *((*MEMORY[0x1E69E7D40] & *v36) + 0xD8);
  v73 = v36;
  result = v49(v47);
  v51 = result[2];
  if (v51)
  {
    v52 = 0;
    v53 = result + 8;
    v72 = result;
    while (v52 < v51)
    {
      v55 = *(v53 - 3);
      v54 = *(v53 - 2);
      v56 = *v53;
      v74 = *(v53 - 4);
      v75 = type metadata accessor for DetailsContentOffsetProxy(0);
      v57 = swift_allocObject();
      swift_unknownObjectWeakInit();
      type metadata accessor for MainActor();
      swift_bridgeObjectRetain_n();
      v76 = v54;

      v77 = v56;

      v58 = static MainActor.shared.getter();
      v59 = swift_allocObject();
      v59[2] = v58;
      v60 = MEMORY[0x1E69E85E0];
      v59[3] = MEMORY[0x1E69E85E0];
      v59[4] = v57;
      v59[5] = v52;

      v61 = swift_allocObject();
      swift_unknownObjectWeakInit();

      v62 = static MainActor.shared.getter();
      v63 = swift_allocObject();
      v63[2] = v62;
      v63[3] = v60;
      v63[4] = v61;
      v63[5] = v52;
      v63[6] = v74;
      v63[7] = v55;

      Binding.init(get:set:)();
      v64 = v82[0];
      v65 = v82[1];
      v66 = *&v82[2];
      v67 = default argument 1 of DetailsContentOffsetProxy.init(tabIndex:topInset:bottomInsetDisregardingSafeAreaInset:contentOffset:)();
      v68 = default argument 2 of DetailsContentOffsetProxy.init(tabIndex:topInset:bottomInsetDisregardingSafeAreaInset:contentOffset:)();
      DetailsContentOffsetProxy.__allocating_init(tabIndex:topInset:bottomInsetDisregardingSafeAreaInset:contentOffset:)(v52, v64, v65, v67, v68, v66);

      MEMORY[0x193AEA9A0](v69);
      if (*((*&v84[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v84[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      ++v52;
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      result = v72;
      v51 = *(v72 + 16);
      v53 += 5;
      if (v52 == v51)
      {
        v20 = *&v84[0];
        v48 = MEMORY[0x1E69E7D40];
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_14:

    v70 = v73;
    (*((*v48 & *v73) + 0x158))(v20);

    outlined destroy of DetailsStyleGuide(v71);
    return v70;
  }

  return result;
}

void specialized DetailsViewController.init(coder:)()
{
  v1 = v0 + OBJC_IVAR____TtC20CommunicationDetails21DetailsViewController_selectedTab;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0;
  v2 = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtC20CommunicationDetails21DetailsViewController_pendingTabs) = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtC20CommunicationDetails21DetailsViewController_didLoadView) = 0;
  *(v0 + OBJC_IVAR____TtC20CommunicationDetails21DetailsViewController_proxies) = v2;
  *(v0 + OBJC_IVAR____TtC20CommunicationDetails21DetailsViewController_maxScrollOffsetForScrollSync) = 0;
  *(v0 + OBJC_IVAR____TtC20CommunicationDetails21DetailsViewController____lazy_storage___posterScrollGeometry) = 0;
  *(v0 + OBJC_IVAR____TtC20CommunicationDetails21DetailsViewController_presentationProxy) = 0;
  *(v0 + OBJC_IVAR____TtC20CommunicationDetails21DetailsViewController_detailsPageViewController) = 0;
  v3 = OBJC_IVAR____TtC20CommunicationDetails21DetailsViewController_backgroundVisualEffectView;
  *(v0 + v3) = [objc_allocWithZone(MEMORY[0x1E69DD298]) init];
  *(v0 + OBJC_IVAR____TtC20CommunicationDetails21DetailsViewController_headerView) = 0;
  *(v0 + OBJC_IVAR____TtC20CommunicationDetails21DetailsViewController_posterViewController) = 0;
  *(v0 + OBJC_IVAR____TtC20CommunicationDetails21DetailsViewController_headerViewModel) = 0;
  *(v0 + OBJC_IVAR____TtC20CommunicationDetails21DetailsViewController_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t type metadata accessor for DetailsViewController(uint64_t a1)
{
  result = type metadata singleton initialization cache for DetailsViewController;
  if (!type metadata singleton initialization cache for DetailsViewController)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void partial apply for closure #1 in DetailsViewController.viewDidLoad()(void *a1, char *a2, char a3)
{
  v5 = *a2;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = v5;
    DetailsViewController.performPresentation(_:style:animated:)(a1, &v8, a3 & 1);
  }
}

void partial apply for closure #3 in DetailsViewController.viewDidLoad()(__int128 *a1)
{
  v4 = *a1;
  v5 = a1[1];
  v1 = *(a1 + 4);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v6[0] = v4;
    v6[1] = v5;
    v7 = v1;
    (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x250))(v6);
  }
}

unint64_t lazy protocol witness table accessor for type DetailsViewController and conformance NSObject()
{
  result = lazy protocol witness table cache variable for type DetailsViewController and conformance NSObject;
  if (!lazy protocol witness table cache variable for type DetailsViewController and conformance NSObject)
  {
    type metadata accessor for DetailsViewController(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DetailsViewController and conformance NSObject);
  }

  return result;
}

uint64_t partial apply for closure #1 in DetailsViewController.updateContentOffset(for:newValue:tabId:)()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = (*((*MEMORY[0x1E69E7D40] & **(v0 + 16)) + 0x148))(v8);
  v5 = v4;
  v6 = *v4;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v5 = v6;
  if (result)
  {
    if ((v1 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew()(v6);
  v6 = result;
  *v5 = result;
  if ((v1 & 0x8000000000000000) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (*(v6 + 16) > v1)
  {
    *(v6 + 8 * v1 + 32) = v2;
    return v3(v8, 0);
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t partial apply for closure #2 in DetailsViewController.updateContentOffset(for:newValue:tabId:)()
{
  v1 = *(v0 + 24);
  v2 = **(v0 + 32);
  v3 = (*((*MEMORY[0x1E69E7D40] & **(v0 + 16)) + 0x148))(v8);
  v5 = v4;
  v6 = *v4;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v5 = v6;
  if (result)
  {
    if ((v1 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew()(v6);
  v6 = result;
  *v5 = result;
  if ((v1 & 0x8000000000000000) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (*(v6 + 16) > v1)
  {
    *(v6 + 8 * v1 + 32) = v2;
    return v3(v8, 0);
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t type metadata completion function for DetailsViewController(uint64_t a1)
{
  result = type metadata accessor for DetailsStyleGuide(319);
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t outlined init with copy of DetailsStyleGuide(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

double partial apply for closure #1 in DetailsViewController.setUpHeader()()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0.0;
  }

  v1 = Strong;
  v2 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x180))();
  v3 = (*(*v2 + 176))(v2);

  return v3;
}

uint64_t type metadata accessor for NSLayoutConstraint(uint64_t a1, unint64_t *a2, void *a3)
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

void partial apply for closure #1 in DetailsViewController.init(tabs:configuration:styleGuide:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    DetailsViewController.updateAvatarView()();
  }
}

void partial apply for closure #2 in DetailsViewController.init(tabs:configuration:styleGuide:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    DetailsViewController.updateAvatarView()();
  }

  swift_beginAccess();
  v2 = swift_unknownObjectWeakLoadStrong();
  if (v2)
  {
    v3 = v2;
    DetailsViewController.configureNavigationBar()();
  }
}

void partial apply for closure #3 in DetailsViewController.init(tabs:configuration:styleGuide:)(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  lazy protocol witness table accessor for type DetailsViewController.ObservableConfiguration.ConfigurationCapabilities and conformance DetailsViewController.ObservableConfiguration.ConfigurationCapabilities(a1, a2, a3);
  if (dispatch thunk of static Equatable.== infix(_:_:)())
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v4 = Strong;
      DetailsViewController.configureNavigationBar()();
    }
  }
}

uint64_t outlined init with take of DetailsStyleGuide(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DetailsStyleGuide(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void partial apply for closure #1 in DetailsViewController.createProxies()(void *a1@<X8>)
{
  v3 = *(v1 + 40);
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    v7 = 0;
    goto LABEL_8;
  }

  v5 = Strong;
  v6 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x138))();
  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(v6 + 16) > v3)
  {
    v7 = *(v6 + 8 * v3 + 32);

LABEL_8:

    *a1 = v7;
    return;
  }

  __break(1u);
}

void partial apply for closure #2 in DetailsViewController.createProxies()(double *a1)
{
  v2 = v1[5];
  v3 = v1[6];
  v4 = v1[7];
  v5 = *a1;
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    DetailsViewController.updateContentOffset(for:newValue:tabId:)(v2, v3, v4, v5);
  }
}

CommunicationDetails::TabToolbarConfiguration __swiftcall TabToolbarConfiguration.init(leadingActions:trailingActions:)(Swift::OpaquePointer leadingActions, Swift::OpaquePointer trailingActions)
{
  v2->_rawValue = leadingActions._rawValue;
  v2[1]._rawValue = trailingActions._rawValue;
  result.trailingActions = trailingActions;
  result.leadingActions = leadingActions;
  return result;
}

uint64_t TabToolbarConfiguration.barButtonItems.getter()
{
  type metadata accessor for MainActor();
  v2[1] = *v0;
  return specialized static MainActor.assumeIsolated<A>(_:file:line:)(partial apply for closure #1 in TabToolbarConfiguration.barButtonItems.getter, v2, "CommunicationDetails/TabToolbarConfiguration.swift", 50, 2, 29);
}

void partial apply for closure #1 in TabToolbarConfiguration.barButtonItems.getter(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v29 = MEMORY[0x1E69E7CC0];
  if (v2 >> 62)
  {
    if (v2 < 0)
    {
      v23 = v2;
    }

    else
    {
      v23 = v2 & 0xFFFFFFFFFFFFFF8;
    }

    v4 = MEMORY[0x193AEB0F0](v23);
  }

  else
  {
    v4 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = MEMORY[0x1E69E7CC0];
  v26 = v3;
  if (v4)
  {
    v27 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray.reserveCapacity(_:)();
    if (v4 < 0)
    {
      __break(1u);
      goto LABEL_39;
    }

    type metadata accessor for UIBarButtonItem();
    v6 = 0;
    v7 = v2;
    v8 = v2 & 0xC000000000000001;
    v9 = v2;
    do
    {
      if (v8)
      {
        v12 = MEMORY[0x193AEB000](v6, v7);
      }

      else
      {
        v12 = *(v7 + 8 * v6 + 32);
      }

      v13 = v12;
      static MainActor.shared.getter();
      dispatch thunk of Actor.unownedExecutor.getter();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      ++v6;
      v10 = v13;
      v30.value.super.isa = 0;
      v30.is_nil = v13;
      -[objc_class setEnabled:](UIBarButtonItem.init(title:image:primaryAction:menu:)(0, v30, 0, v11).super.super.isa, sel_setEnabled_, ([v10 attributes] & 1) == 0);

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v7 = v9;
    }

    while (v4 != v6);
    v5 = v27;
  }

  specialized Array.append<A>(contentsOf:)(v5);
  [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:5 target:0 action:0];
  MEMORY[0x193AEA9A0]();
  if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  if (v3 >> 62)
  {
    if (v3 < 0)
    {
      v24 = v3;
    }

    else
    {
      v24 = v3 & 0xFFFFFFFFFFFFFF8;
    }

    v14 = MEMORY[0x193AEB0F0](v24);
  }

  else
  {
    v14 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v15 = MEMORY[0x1E69E7CC0];
  if (!v14)
  {
    goto LABEL_29;
  }

  v28 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray.reserveCapacity(_:)();
  if ((v14 & 0x8000000000000000) == 0)
  {
    type metadata accessor for UIBarButtonItem();
    v16 = 0;
    v17 = v3;
    v18 = v3 & 0xC000000000000001;
    do
    {
      if (v18)
      {
        v21 = MEMORY[0x193AEB000](v16, v17);
      }

      else
      {
        v21 = *(v17 + 8 * v16 + 32);
      }

      v22 = v21;
      static MainActor.shared.getter();
      dispatch thunk of Actor.unownedExecutor.getter();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      ++v16;
      v19 = v22;
      v31.value.super.isa = 0;
      v31.is_nil = v22;
      -[objc_class setEnabled:](UIBarButtonItem.init(title:image:primaryAction:menu:)(0, v31, 0, v20).super.super.isa, sel_setEnabled_, ([v19 attributes] & 1) == 0);

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v17 = v26;
    }

    while (v14 != v16);
    v15 = v28;
LABEL_29:
    specialized Array.append<A>(contentsOf:)(v15);

    *a1 = v29;
    return;
  }

LABEL_39:
  __break(1u);
}

uint64_t specialized Array.append<A>(contentsOf:)(unint64_t a1)
{
  v2 = a1;
  if (a1 >> 62)
  {
    if ((a1 & 0x8000000000000000) == 0)
    {
      a1 &= 0xFFFFFFFFFFFFFF8uLL;
    }

    v3 = MEMORY[0x193AEB0F0](a1);
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = *v1;
  if (!(*v1 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v6 = __OFADD__(v5, v3);
    result = v5 + v3;
    if (!v6)
    {
      goto LABEL_5;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v4 < 0)
  {
    v14 = *v1;
  }

  else
  {
    v14 = v4 & 0xFFFFFFFFFFFFFF8;
  }

  v15 = MEMORY[0x193AEB0F0](v14);
  v6 = __OFADD__(v15, v3);
  result = v15 + v3;
  if (v6)
  {
    goto LABEL_18;
  }

LABEL_5:
  specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(result, 1);
  v8 = *v1;
  v9 = *v1 & 0xFFFFFFFFFFFFFF8;
  specialized Array._copyContents(initializing:)(v9 + 8 * *(v9 + 0x10) + 32, (*(v9 + 0x18) >> 1) - *(v9 + 0x10), v2);
  v11 = v10;

  if (v11 < v3)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v11 < 1)
  {
LABEL_9:
    *v1 = v8;
    return result;
  }

  v12 = *(v9 + 16);
  v6 = __OFADD__(v12, v11);
  v13 = v12 + v11;
  if (!v6)
  {
    *(v9 + 16) = v13;
    goto LABEL_9;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t specialized static MainActor.assumeIsolated<A>(_:file:line:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  static MainActor.shared.getter();

  swift_task_getMainExecutor();
  if (swift_task_isCurrentExecutor())
  {
    v10 = swift_allocObject();
    *(v10 + 16) = a1;
    *(v10 + 24) = a2;
    partial apply for specialized thunk for @callee_guaranteed () -> (@out A, @error @owned Error)(v15);
    if (v6)
    {
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        return a4;
      }

      __break(1u);
    }

    a4 = v15[0];
    v12 = swift_isEscapingClosureAtFileLocation();

    if ((v12 & 1) == 0)
    {
      return a4;
    }

    __break(1u);
  }

  v15[0] = 0;
  v15[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(66);
  MEMORY[0x193AEA970](0xD00000000000003FLL, 0x80000001901FEE20);
  v14 = _typeName(_:qualified:)();
  MEMORY[0x193AEA970](v14);

  MEMORY[0x193AEA970](46, 0xE100000000000000);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t getEnumTagSinglePayload for TabToolbarConfiguration(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t storeEnumTagSinglePayload for TabToolbarConfiguration(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *partial apply for specialized thunk for @callee_guaranteed () -> (@out A, @error @owned Error)@<X0>(void *a1@<X8>)
{
  result = (*(v1 + 16))(&v5);
  if (!v2)
  {
    *a1 = v5;
  }

  return result;
}

unint64_t type metadata accessor for UIBarButtonItem()
{
  result = lazy cache variable for type metadata for UIBarButtonItem;
  if (!lazy cache variable for type metadata for UIBarButtonItem)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for UIBarButtonItem);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [UIBarButtonItem] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [UIBarButtonItem] and conformance [A];
  if (!lazy protocol witness table cache variable for type [UIBarButtonItem] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo15UIBarButtonItemCGMd, &_sSaySo15UIBarButtonItemCGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [UIBarButtonItem] and conformance [A]);
  }

  return result;
}

void (*QuickActionsContainerDelegateWrapper._delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return QuickActionsContainerDelegateWrapper._delegate.modify;
}

void QuickActionsContainerDelegateWrapper._delegate.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 24) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t key path getter for QuickActionsContainerDelegateWrapper.delegate : QuickActionsContainerDelegateWrapper@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 120))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t key path setter for QuickActionsContainerDelegateWrapper.delegate : QuickActionsContainerDelegateWrapper(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(**a2 + 128);
  v4 = swift_unknownObjectRetain();
  return v3(v4, v2);
}

uint64_t QuickActionsContainerDelegateWrapper.delegate.getter()
{
  swift_getKeyPath();
  (*(*v0 + 152))();

  swift_beginAccess();
  return swift_unknownObjectWeakLoadStrong();
}

uint64_t QuickActionsContainerDelegateWrapper.delegate.setter(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  v6 = v2;
  v7 = a1;
  v8 = a2;
  (*(*v2 + 160))();

  return swift_unknownObjectRelease();
}

uint64_t partial apply for closure #1 in QuickActionsContainerDelegateWrapper.delegate.setter()
{
  return partial apply for closure #1 in QuickActionsContainerDelegateWrapper.delegate.setter();
}

{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  swift_beginAccess();
  *(v1 + 24) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t (*QuickActionsContainerDelegateWrapper.delegate.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  (*(*v1 + 152))();

  v4[5] = OBJC_IVAR____TtC20CommunicationDetails36QuickActionsContainerDelegateWrapper___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = lazy protocol witness table accessor for type QuickActionsContainerDelegateWrapper and conformance QuickActionsContainerDelegateWrapper(&lazy protocol witness table cache variable for type QuickActionsContainerDelegateWrapper and conformance QuickActionsContainerDelegateWrapper, type metadata accessor for QuickActionsContainerDelegateWrapper, &protocol conformance descriptor for QuickActionsContainerDelegateWrapper);
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = QuickActionsContainerDelegateWrapper._delegate.modify(v4);
  return QuickActionsContainerDelegateWrapper.delegate.modify;
}

void QuickActionsContainerDelegateWrapper.delegate.modify(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v1 = v1[4];
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  free(v1);
}

uint64_t QuickActionsContainerDelegateWrapper.__allocating_init(delegate:)(uint64_t a1, uint64_t a2)
{
  v2 = swift_allocObject();
  *(v2 + 24) = 0;
  swift_unknownObjectWeakInit();
  ObservationRegistrar.init()();
  swift_getKeyPath();
  lazy protocol witness table accessor for type QuickActionsContainerDelegateWrapper and conformance QuickActionsContainerDelegateWrapper(&lazy protocol witness table cache variable for type QuickActionsContainerDelegateWrapper and conformance QuickActionsContainerDelegateWrapper, type metadata accessor for QuickActionsContainerDelegateWrapper, &protocol conformance descriptor for QuickActionsContainerDelegateWrapper);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  swift_unknownObjectRelease();
  return v2;
}

void *QuickActionsContainerDelegateWrapper.init(delegate:)(uint64_t a1, uint64_t a2)
{
  v2[3] = 0;
  swift_unknownObjectWeakInit();
  ObservationRegistrar.init()();
  swift_getKeyPath();
  v6 = v2;
  v7 = a1;
  v8 = a2;
  (*(*v2 + 160))();

  swift_unknownObjectRelease();
  return v2;
}

uint64_t QuickActionsContainerDelegateWrapper.deinit()
{
  outlined destroy of weak QuickActionsContainerDelegate?(v0 + 16);
  v1 = OBJC_IVAR____TtC20CommunicationDetails36QuickActionsContainerDelegateWrapper___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t QuickActionsContainerDelegateWrapper.__deallocating_deinit()
{
  outlined destroy of weak QuickActionsContainerDelegate?(v0 + 16);
  v1 = OBJC_IVAR____TtC20CommunicationDetails36QuickActionsContainerDelegateWrapper___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

uint64_t key path getter for QuickActionsContainer.Pool.pool : QuickActionsContainer.Pool@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 88))();
  *a2 = result;
  return result;
}

uint64_t key path setter for QuickActionsContainer.Pool.pool : QuickActionsContainer.Pool(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 96);

  return v2(v3);
}

uint64_t QuickActionsContainer.Pool.pool.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 16) = a1;
}

unint64_t QuickActionsContainer.Pool.take()()
{
  v1 = (*(*v0 + 88))();
  if (v1 >> 62)
  {
    v13 = v1 & 0xFFFFFFFFFFFFFF8;
    if (v1 < 0)
    {
      v13 = v1;
    }

    v14 = MEMORY[0x193AEB0F0](v13);

    if (v14)
    {
LABEL_3:
      v4 = (*(*v0 + 104))(v18);
      v5 = v3;
      v6 = *v3;
      if (*v3 >> 62)
      {
        if (v6 < 0)
        {
          v15 = *v3;
        }

        else
        {
          v15 = v6 & 0xFFFFFFFFFFFFFF8;
        }

        if (MEMORY[0x193AEB0F0](v15))
        {
LABEL_5:
          v8 = specialized Array._customRemoveLast()();
          if (v8)
          {
LABEL_9:
            v12 = v8;
            v4(v18, 0);
            return v12;
          }

          v7 = *v5;
          if (!(*v5 >> 62))
          {
            v9 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
            v10 = __OFSUB__(v9, 1);
            result = v9 - 1;
            if (!v10)
            {
LABEL_8:
              v8 = specialized Array.remove(at:)(result);
              goto LABEL_9;
            }

            goto LABEL_25;
          }

LABEL_20:
          if (v7 < 0)
          {
            v16 = v7;
          }

          else
          {
            v16 = v7 & 0xFFFFFFFFFFFFFF8;
          }

          v17 = MEMORY[0x193AEB0F0](v16);
          v10 = __OFSUB__(v17, 1);
          result = v17 - 1;
          if (!v10)
          {
            goto LABEL_8;
          }

LABEL_25:
          __break(1u);
          return result;
        }
      }

      else
      {
        v7 = v6 & 0xFFFFFFFFFFFFFF8;
        if (*(v7 + 16))
        {
          goto LABEL_5;
        }
      }

      __break(1u);
      goto LABEL_20;
    }
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v2)
    {
      goto LABEL_3;
    }
  }

  return 0;
}

uint64_t QuickActionsContainer.Pool.give(_:)(void *a1)
{
  v3 = (*(*v1 + 104))(v8);
  v5 = v4;
  v6 = a1;
  MEMORY[0x193AEA9A0]();
  if (*((*v5 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  return v3(v8, 0);
}

uint64_t QuickActionsContainer.Pool.__deallocating_deinit()
{

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t QuickActionsContainer.Pool.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = MEMORY[0x1E69E7CC0];
  return result;
}

uint64_t QuickActionsContainer.Pool.init()()
{
  result = v0;
  *(v0 + 16) = MEMORY[0x1E69E7CC0];
  return result;
}

uint64_t QuickActionsContainer.styleGuide.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for QuickActionsContainer(0) + 24);

  return outlined init with copy of Header.StyleGuide(v3, a1);
}

double QuickActionsContainer.delegate.getter()
{
  type metadata accessor for QuickActionsContainer(0);

  return result;
}

void QuickActionsContainer.pool.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for QuickActionsContainer(0) + 32);

  *(v1 + v3) = a1;
}

char *QuickActionsContainer.makeUIView(context:)()
{
  v1 = v0;
  v2 = type metadata accessor for Header.StyleGuide(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for QuickActionsContainer(0);
  v6 = (*(**(v0 + v5[8]) + 112))();
  if (v6)
  {
    v7 = *&v6[OBJC_IVAR____TtC20CommunicationDetails25QuickActionsContainerView_requestedQuickActions];
    v8 = v6;

    v12 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC20CommunicationDetails15QuickActionViewC10ButtonTypeO_SayAHGTt0g5Tf4g_n(v9, v10, v11);

    LOBYTE(v7) = _sSh2eeoiySbShyxG_ABtFZ20CommunicationDetails15QuickActionViewC10ButtonTypeO_Tt1g5(v7, v12, v13);

    if (v7)
    {
      return v8;
    }
  }

  type metadata accessor for QuickActionsContainerView(0);
  v15 = *v1;
  v16 = v1[1];
  outlined init with copy of Header.StyleGuide(v1 + v5[6], v4);
  v17 = *(v1 + v5[7]);

  return QuickActionsContainerView.__allocating_init(contacts:requestedQuickActions:styleGuide:delegate:)(v15, v16, v4, v17);
}

double QuickActionsContainer.pool.getter()
{
  type metadata accessor for QuickActionsContainer(0);

  return result;
}

uint64_t QuickActionsContainer.init(contacts:requestedQuickActions:styleGuide:delegate:pool:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = a1;
  a6[1] = a2;
  v10 = type metadata accessor for QuickActionsContainer(0);
  result = outlined init with take of Header.StyleGuide(a3, a6 + v10[6]);
  *(a6 + v10[7]) = a4;
  *(a6 + v10[8]) = a5;
  return result;
}

double protocol witness for UIViewRepresentable.makeCoordinator() in conformance QuickActionsContainer@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = *(v2 + *(a1 + 32));

  return result;
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance QuickActionsContainer(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type QuickActionsContainerDelegateWrapper and conformance QuickActionsContainerDelegateWrapper(&lazy protocol witness table cache variable for type QuickActionsContainer and conformance QuickActionsContainer, type metadata accessor for QuickActionsContainer, &protocol conformance descriptor for QuickActionsContainer);

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance QuickActionsContainer(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type QuickActionsContainerDelegateWrapper and conformance QuickActionsContainerDelegateWrapper(&lazy protocol witness table cache variable for type QuickActionsContainer and conformance QuickActionsContainer, type metadata accessor for QuickActionsContainer, &protocol conformance descriptor for QuickActionsContainer);

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void protocol witness for View.body.getter in conformance QuickActionsContainer(uint64_t a1)
{
  lazy protocol witness table accessor for type QuickActionsContainerDelegateWrapper and conformance QuickActionsContainerDelegateWrapper(&lazy protocol witness table cache variable for type QuickActionsContainer and conformance QuickActionsContainer, type metadata accessor for QuickActionsContainer, &protocol conformance descriptor for QuickActionsContainer);
  UIViewRepresentable.body.getter();
  __break(1u);
}

uint64_t _sSh2eeoiySbShyxG_ABtFZ20CommunicationDetails15QuickActionViewC10ButtonTypeO_Tt1g5(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = result + 56;
  v6 = 1 << *(result + 32);
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & *(result + 56);
  v9 = (v6 + 63) >> 6;
  v10 = a2 + 56;
  v19 = result;
  if (v8)
  {
    do
    {
      v20 = (v8 - 1) & v8;
LABEL_13:
      lazy protocol witness table accessor for type QuickActionView.ButtonType and conformance QuickActionView.ButtonType(result, a2, a3);
      v13 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v16 = -1 << *(a2 + 32);
      v17 = v13 & ~v16;
      if (((*(v10 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
      {
        return 0;
      }

      v18 = ~v16;
      lazy protocol witness table accessor for type QuickActionView.ButtonType and conformance QuickActionView.ButtonType(v13, v14, v15);
      while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
      {
        v17 = (v17 + 1) & v18;
        if (((*(v10 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
        {
          return 0;
        }
      }

      result = v19;
      v8 = v20;
    }

    while (v20);
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      return 1;
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v20 = (v12 - 1) & v12;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t specialized Set._Variant.insert(_:)(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v6 = *v3;
  lazy protocol witness table accessor for type QuickActionView.ButtonType and conformance QuickActionView.ButtonType(a1, a2, a3);
  v7 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v10 = -1 << *(v6 + 32);
  v11 = v7 & ~v10;
  if ((*(v6 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    lazy protocol witness table accessor for type QuickActionView.ButtonType and conformance QuickActionView.ButtonType(v7, v8, v9);
    while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
    {
      v11 = (v11 + 1) & v12;
      if (((*(v6 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
    LOBYTE(v4) = *(*(v6 + 48) + v11);
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    specialized _NativeSet.insertNew(_:at:isUnique:)(v4, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v15;
    result = 1;
  }

  *a1 = v4;
  return result;
}

void specialized _NativeSet.insertNew(_:at:isUnique:)(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      specialized _NativeSet.copy()();
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v6 + 1);
  }

  v11 = *v3;
  lazy protocol witness table accessor for type QuickActionView.ButtonType and conformance QuickActionView.ButtonType(v8, v9, v10);
  v12 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v15 = -1 << *(v11 + 32);
  a2 = v12 & ~v15;
  if ((*(v11 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    lazy protocol witness table accessor for type QuickActionView.ButtonType and conformance QuickActionView.ButtonType(v12, v13, v14);
    while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
    {
      a2 = (a2 + 1) & v16;
      if (((*(v11 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v17 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v17 + 48) + a2) = v5;
  v18 = *(v17 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v17 + 16) = v20;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

unint64_t specialized Array.remove(at:)(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || (v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
    v3 = result;
  }

  v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
    memmove(((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 32), ((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 40), 8 * (v5 - 1 - a1));
    *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) = v6;
    *v1 = v3;
    return v7;
  }

  return result;
}

unint64_t specialized Array._customRemoveLast()()
{
  v1 = *v0;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || (v1 & 0x8000000000000000) != 0 || (v1 & 0x4000000000000000) != 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v1);
    v1 = result;
  }

  v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v3)
  {
    v4 = v3 - 1;
    result = *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v4 + 0x20);
    *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10) = v4;
    *v0 = v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t type metadata accessor for QuickActionsContainerDelegateWrapper(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC20CommunicationDetails15QuickActionViewC10ButtonTypeO_SayAHGTt0g5Tf4g_n(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 16);
  v5 = lazy protocol witness table accessor for type QuickActionView.ButtonType and conformance QuickActionView.ButtonType(a1, a2, a3);
  result = MEMORY[0x193AEAB50](v4, &type metadata for QuickActionView.ButtonType, v5);
  v11 = result;
  if (v4)
  {
    v8 = (a1 + 32);
    do
    {
      v9 = *v8++;
      specialized Set._Variant.insert(_:)(&v10, v9, v7);
      --v4;
    }

    while (v4);
    return v11;
  }

  return result;
}

uint64_t outlined init with take of Header.StyleGuide(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Header.StyleGuide(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t lazy protocol witness table accessor for type QuickActionsContainerDelegateWrapper and conformance QuickActionsContainerDelegateWrapper(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t dispatch thunk of QuickActionsContainerDelegate.isCustomQuickActionButtonEnabled(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 16) + **(a3 + 16));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = dispatch thunk of QuickActionsContainerDelegate.isCustomQuickActionButtonEnabled(for:);

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of QuickActionsContainerDelegate.isCustomQuickActionButtonEnabled(for:)(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t type metadata completion function for QuickActionsContainerDelegateWrapper(uint64_t a1)
{
  result = type metadata accessor for ObservationRegistrar();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void type metadata completion function for QuickActionsContainer(uint64_t a1)
{
  type metadata accessor for [CNContact](319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for [QuickActionView.ButtonType]();
    if (v2 <= 0x3F)
    {
      type metadata accessor for Header.StyleGuide(319);
      if (v3 <= 0x3F)
      {
        type metadata accessor for QuickActionsContainerDelegateWrapper(319);
        if (v4 <= 0x3F)
        {
          type metadata accessor for QuickActionsContainer.Pool();
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void type metadata accessor for [CNContact](uint64_t a1)
{
  if (!lazy cache variable for type metadata for [CNContact])
  {
    type metadata accessor for CNContact();
    v1 = type metadata accessor for Array();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for [CNContact]);
    }
  }
}

void type metadata accessor for [QuickActionView.ButtonType]()
{
  if (!lazy cache variable for type metadata for [QuickActionView.ButtonType])
  {
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for [QuickActionView.ButtonType]);
    }
  }
}

uint64_t closure #1 in QuickActionsContainerDelegateWrapper.delegate.setterpartial apply()
{
  return partial apply for closure #1 in QuickActionsContainerDelegateWrapper.delegate.setter();
}

{
  return partial apply for closure #1 in QuickActionsContainerDelegateWrapper.delegate.setter();
}

uint64_t DetailsView.tabs.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySay20CommunicationDetails0E3TabVGGMd, &_s7SwiftUI5StateVySay20CommunicationDetails0E3TabVGGMR);
  State.wrappedValue.getter();
  return v1;
}

void *key path getter for DetailsView.tabs : DetailsView@<X0>(void *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySay20CommunicationDetails0E3TabVGGMd, &_s7SwiftUI5StateVySay20CommunicationDetails0E3TabVGGMR);
  result = State.wrappedValue.getter();
  *a2 = v4;
  return result;
}

uint64_t key path setter for DetailsView.tabs : DetailsView(uint64_t *a1, void *a2)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySay20CommunicationDetails0E3TabVGGMd, &_s7SwiftUI5StateVySay20CommunicationDetails0E3TabVGGMR);
  return State.wrappedValue.setter();
}

void (*DetailsView.tabs.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  v6 = *v1;
  v5 = v1[1];
  v4[6] = *v1;
  v4[7] = v5;
  *v4 = v6;
  v4[1] = v5;

  v4[8] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySay20CommunicationDetails0E3TabVGGMd, &_s7SwiftUI5StateVySay20CommunicationDetails0E3TabVGGMR);
  State.wrappedValue.getter();
  return DetailsView.tabs.modify;
}

void DetailsView.tabs.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 56);
  v2[2] = *(*a1 + 48);
  v2[5] = v2[4];
  v2[3] = v3;
  if (a2)
  {

    State.wrappedValue.setter();
  }

  else
  {
    State.wrappedValue.setter();
  }

  free(v2);
}

uint64_t DetailsView.$tabs.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySay20CommunicationDetails0E3TabVGGMd, &_s7SwiftUI5StateVySay20CommunicationDetails0E3TabVGGMR);
  State.projectedValue.getter();
  return v1;
}

uint64_t DetailsView.init(tabs:configuration:styleGuide:)@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v7 = type metadata accessor for DetailsView(0);
  v8 = (a4 + *(v7 + 28));
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s20CommunicationDetails0B3TabVSgMd, &_s20CommunicationDetails0B3TabVSgMR);
  State.init(wrappedValue:)();
  *v8 = v10;
  v8[1] = v11;
  v8[2] = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay20CommunicationDetails0B3TabVGMd, &_sSay20CommunicationDetails0B3TabVGMR);
  State.init(wrappedValue:)();
  *a4 = v10;
  a4[2] = a2;
  return outlined init with take of DetailsStyleGuide(a3, a4 + *(v7 + 24));
}

uint64_t type metadata accessor for DetailsView(uint64_t a1)
{
  result = type metadata singleton initialization cache for DetailsView;
  if (!type metadata singleton initialization cache for DetailsView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t DetailsView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v18[1] = a1;
  v2 = type metadata accessor for DetailsStyleGuide(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DetailsViewControllerRepresentable(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = v1[1];
  *&v20 = *v1;
  *(&v20 + 1) = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySay20CommunicationDetails0E3TabVGGMd, &_s7SwiftUI5StateVySay20CommunicationDetails0E3TabVGGMR);
  State.projectedValue.getter();
  v9 = v24;
  v10 = v25;
  v11 = v1[2];
  v12 = type metadata accessor for DetailsView(0);
  v13 = (v1 + *(v12 + 28));
  v14 = v13[1];
  v20 = *v13;
  v21 = v14;
  v22 = v13[2];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy20CommunicationDetails0E3TabVSgGMd, &_s7SwiftUI5StateVy20CommunicationDetails0E3TabVSgGMR);
  State.projectedValue.getter();
  v20 = v24;
  v21 = v25;
  v22 = v26;
  v23 = v27;
  outlined init with copy of DetailsStyleGuide(v1 + *(v12 + 24), v4);
  DetailsViewControllerRepresentable.init(tabs:configuration:selectedTab:styleGuide:)(v9, *(&v9 + 1), v10, v11, &v20, v4, v7);
  v19 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21ToolbarContentBuilderV10buildBlockyQrxAA0cD0RzlFZQOy_AA0C4ItemVyyt20CommunicationDetails04EditcH0VGQo_Md, &_s7SwiftUI21ToolbarContentBuilderV10buildBlockyQrxAA0cD0RzlFZQOy_AA0C4ItemVyyt20CommunicationDetails04EditcH0VGQo_MR);
  lazy protocol witness table accessor for type DetailsViewControllerRepresentable and conformance DetailsViewControllerRepresentable();
  v15 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI11ToolbarItemVyyt20CommunicationDetails04EditcD0VGMd, &_s7SwiftUI11ToolbarItemVyyt20CommunicationDetails04EditcD0VGMR);
  v16 = lazy protocol witness table accessor for type ToolbarItem<(), EditToolbarItem> and conformance ToolbarItem<A, B>();
  *&v24 = v15;
  *(&v24 + 1) = v16;
  swift_getOpaqueTypeConformance2();
  View.toolbar<A>(content:)();
  return outlined destroy of DetailsViewControllerRepresentable(v7);
}

uint64_t outlined init with copy of DetailsStyleGuide(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DetailsStyleGuide(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double closure #1 in DetailsView.body.getter(uint64_t a1)
{
  v2 = type metadata accessor for ToolbarItemPlacement();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11ToolbarItemVyyt20CommunicationDetails04EditcD0VGMd, &_s7SwiftUI11ToolbarItemVyyt20CommunicationDetails04EditcD0VGMR);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13 - v5;
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  MEMORY[0x1EEE9AC00](isCurrentExecutor);
  *(&v13 - 2) = a1;
  v8 = static ToolbarItemPlacement.automatic.getter();
  lazy protocol witness table accessor for type EditToolbarItem and conformance EditToolbarItem(v8, v9, v10);
  ToolbarItem<>.init(placement:content:)();
  v11 = lazy protocol witness table accessor for type ToolbarItem<(), EditToolbarItem> and conformance ToolbarItem<A, B>();
  MEMORY[0x193AE9D80](v6, v3, v11);
  (*(v4 + 8))(v6, v3);

  return result;
}

unint64_t lazy protocol witness table accessor for type DetailsViewControllerRepresentable and conformance DetailsViewControllerRepresentable()
{
  result = lazy protocol witness table cache variable for type DetailsViewControllerRepresentable and conformance DetailsViewControllerRepresentable;
  if (!lazy protocol witness table cache variable for type DetailsViewControllerRepresentable and conformance DetailsViewControllerRepresentable)
  {
    type metadata accessor for DetailsViewControllerRepresentable(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DetailsViewControllerRepresentable and conformance DetailsViewControllerRepresentable);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ToolbarItem<(), EditToolbarItem> and conformance ToolbarItem<A, B>()
{
  result = lazy protocol witness table cache variable for type ToolbarItem<(), EditToolbarItem> and conformance ToolbarItem<A, B>;
  if (!lazy protocol witness table cache variable for type ToolbarItem<(), EditToolbarItem> and conformance ToolbarItem<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI11ToolbarItemVyyt20CommunicationDetails04EditcD0VGMd, &_s7SwiftUI11ToolbarItemVyyt20CommunicationDetails04EditcD0VGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ToolbarItem<(), EditToolbarItem> and conformance ToolbarItem<A, B>);
  }

  return result;
}

uint64_t outlined destroy of DetailsViewControllerRepresentable(uint64_t a1)
{
  v2 = type metadata accessor for DetailsViewControllerRepresentable(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata completion function for DetailsView(uint64_t a1)
{
  type metadata accessor for State<[DetailsTab]>(319, &lazy cache variable for type metadata for State<[DetailsTab]>, &_sSay20CommunicationDetails0B3TabVGMd, &_sSay20CommunicationDetails0B3TabVGMR);
  if (v1 <= 0x3F)
  {
    type metadata accessor for DetailsViewController.ObservableConfiguration(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for DetailsStyleGuide(319);
      if (v3 <= 0x3F)
      {
        type metadata accessor for State<[DetailsTab]>(319, &lazy cache variable for type metadata for State<DetailsTab?>, &_s20CommunicationDetails0B3TabVSgMd, &_s20CommunicationDetails0B3TabVSgMR);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void type metadata accessor for State<[DetailsTab]>(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = type metadata accessor for State();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

double partial apply for closure #1 in closure #1 in DetailsView.body.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for DetailsView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy20CommunicationDetails0E3TabVSgGMd, &_s7SwiftUI5StateVy20CommunicationDetails0E3TabVSgGMR);
  v4 = State.projectedValue.getter();
  v7[0] = v9;
  v7[1] = v10;
  v7[2] = v11;
  v8 = v12;
  v5 = (*(**(v3 + 16) + 344))(v4);
  EditToolbarItem.init(selectedTab:defaultEditActions:handler:)(v7, v5, 0, a1);

  return result;
}

unint64_t lazy protocol witness table accessor for type EditToolbarItem and conformance EditToolbarItem(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type EditToolbarItem and conformance EditToolbarItem;
  if (!lazy protocol witness table cache variable for type EditToolbarItem and conformance EditToolbarItem)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EditToolbarItem and conformance EditToolbarItem);
  }

  return result;
}

uint64_t one-time initialization function for cachesDirectoryURL()
{
  v0 = type metadata accessor for URL.DirectoryHint();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_allocate_value_buffer(v8, static PhotosGridQuickLookDataSource.PreviewsCache.cachesDirectoryURL);
  __swift_project_value_buffer(v4, static PhotosGridQuickLookDataSource.PreviewsCache.cachesDirectoryURL);
  static URL.cachesDirectory.getter();
  v13[0] = 0x6F6F4C6B63697551;
  v13[1] = 0xE90000000000006BLL;
  v9 = (*(v1 + 104))(v3, *MEMORY[0x1E6968F58], v0);
  lazy protocol witness table accessor for type String and conformance String(v9, v10, v11);
  URL.appending<A>(path:directoryHint:)();
  (*(v1 + 8))(v3, v0);
  return (*(v5 + 8))(v7, v4);
}

Swift::Void __swiftcall PhotosGridQuickLookDataSource.PreviewsCache.reset()()
{
  v1 = *v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v8 - v3;
  v5 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_20CommunicationDetails29PhotosGridQuickLookDataSourceC16MediaPreviewItemCTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  swift_beginAccess();
  v0[2] = v5;

  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v1;
  _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v4, &async function pointer to partial apply for closure #1 in PhotosGridQuickLookDataSource.PreviewsCache.reset(), v7);

  outlined destroy of TaskPriority?(v4, &_sScPSgMd, &_sScPSgMR);
}

uint64_t closure #1 in PhotosGridQuickLookDataSource.PreviewsCache.reset()()
{
  v1 = type metadata accessor for Logger();
  v0[3] = v1;
  v0[4] = *(v1 - 8);
  v0[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in PhotosGridQuickLookDataSource.PreviewsCache.reset(), 0, 0);
}

{
  v1 = objc_opt_self();
  v2 = [v1 defaultManager];
  if (one-time initialization token for cachesDirectoryURL != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for URL();
  __swift_project_value_buffer(v3, static PhotosGridQuickLookDataSource.PreviewsCache.cachesDirectoryURL);
  countAndFlagsBits = URL.path(percentEncoded:)(0)._countAndFlagsBits;
  v5 = MEMORY[0x193AEA8E0](countAndFlagsBits);

  v6 = [v2 fileExistsAtPath_];

  if (v6)
  {
    v7 = [v1 defaultManager];
    URL._bridgeToObjectiveC()(v8);
    v10 = v9;
    v0[2] = 0;
    v11 = [v7 removeItemAtURL:v9 error:v0 + 2];

    v12 = v0[2];
    if (v11)
    {
      v13 = v12;
    }

    else
    {
      v15 = v0[4];
      v14 = v0[5];
      v16 = v0[3];
      v17 = v12;
      v18 = _convertNSErrorToError(_:)();

      swift_willThrow();
      v19 = Logger.detailsPhotos.unsafeMutableAddressor();
      (*(v15 + 16))(v14, v19, v16);
      v20 = v18;
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        *v23 = 138412290;
        v25 = v18;
        v26 = _swift_stdlib_bridgeErrorToNSError();
        *(v23 + 4) = v26;
        *v24 = v26;
        _os_log_impl(&dword_190119000, v21, v22, "Could not clean cached previews: %@", v23, 0xCu);
        outlined destroy of TaskPriority?(v24, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x193AEBB30](v24, -1, -1);
        MEMORY[0x193AEBB30](v23, -1, -1);
      }

      else
      {
      }

      (*(v0[4] + 8))(v0[5], v0[3]);
    }
  }

  v27 = v0[1];

  return v27();
}

uint64_t PhotosGridQuickLookDataSource.PreviewsCache.__deallocating_deinit()
{

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t PhotosGridQuickLookDataSource.PreviewsCache.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = MEMORY[0x1E69E7CC8];
  return result;
}

uint64_t PhotosGridQuickLookDataSource.PreviewsCache.init()()
{
  result = v0;
  *(v0 + 16) = MEMORY[0x1E69E7CC8];
  return result;
}

uint64_t PhotosGridQuickLookDataSource.MediaPreviewItem.mediaItemURL.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCC20CommunicationDetails29PhotosGridQuickLookDataSource16MediaPreviewItem_mediaItemURL;
  swift_beginAccess();
  outlined assign with take of URL?(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t PhotosGridQuickLookDataSource.MediaPreviewItem.hasFetchingStarted.getter()
{
  v1 = OBJC_IVAR____TtCC20CommunicationDetails29PhotosGridQuickLookDataSource16MediaPreviewItem_hasFetchingStarted;
  swift_beginAccess();
  return *(v0 + v1);
}

void PhotosGridQuickLookDataSource.MediaPreviewItem.hasFetchingStarted.setter(char a1)
{
  v3 = OBJC_IVAR____TtCC20CommunicationDetails29PhotosGridQuickLookDataSource16MediaPreviewItem_hasFetchingStarted;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t PhotosGridQuickLookDataSource.MediaPreviewItem.mediaItemURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtCC20CommunicationDetails29PhotosGridQuickLookDataSource16MediaPreviewItem_mediaItemURL;
  swift_beginAccess();
  return outlined init with copy of URL?(v1 + v3, a1, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
}

id PhotosGridQuickLookDataSource.MediaPreviewItem.init(asset:index:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v6 = type metadata accessor for UTType();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtCC20CommunicationDetails29PhotosGridQuickLookDataSource16MediaPreviewItem_itemProvider;
  v11 = [objc_allocWithZone(MEMORY[0x1E696ACA0]) init];
  v44 = v10;
  *&v3[v10] = v11;
  v12 = OBJC_IVAR____TtCC20CommunicationDetails29PhotosGridQuickLookDataSource16MediaPreviewItem_mediaItemURL;
  v13 = type metadata accessor for URL();
  (*(*(v13 - 8) + 56))(&v3[v12], 1, 1, v13);
  v3[OBJC_IVAR____TtCC20CommunicationDetails29PhotosGridQuickLookDataSource16MediaPreviewItem_hasFetchingStarted] = 0;
  *&v3[OBJC_IVAR____TtCC20CommunicationDetails29PhotosGridQuickLookDataSource16MediaPreviewItem_asset] = a1;
  *&v3[OBJC_IVAR____TtCC20CommunicationDetails29PhotosGridQuickLookDataSource16MediaPreviewItem_index] = a2;
  objc_opt_self();
  v14 = swift_dynamicCastObjCClass();
  swift_unknownObjectRetain();
  if (!v14)
  {
    v18 = v6;
    v19._countAndFlagsBits = 0x4E555F414944454DLL;
    v19._object = 0xED00004E574F4E4BLL;
    v20 = LocalizedString(_:)(v19);
    countAndFlagsBits = v20._countAndFlagsBits;
    object = v20._object;
    goto LABEL_13;
  }

  swift_unknownObjectRetain();
  v15 = [v14 playbackStyle];
  if ((v15 - 1) < 3)
  {
    v16 = 0x48505F414944454DLL;
    v17 = 0xEB000000004F544FLL;
LABEL_7:
    v23 = LocalizedString(_:)(*&v16);
    countAndFlagsBits = v23._countAndFlagsBits;
    object = v23._object;
    swift_unknownObjectRetain();
    goto LABEL_8;
  }

  if ((v15 - 4) < 2)
  {
    v16 = 0x49565F414944454DLL;
    v17 = 0xEB000000004F4544;
    goto LABEL_7;
  }

  v41._countAndFlagsBits = 0x4E555F414944454DLL;
  v41._object = 0xED00004E574F4E4BLL;
  v42 = LocalizedString(_:)(v41);
  countAndFlagsBits = v42._countAndFlagsBits;
  object = v42._object;
  v43 = v14;
LABEL_8:
  v24 = [v14 playbackStyle];

  if (v24 != 3)
  {
    v29 = [v14 uniformTypeIdentifier];
    if (v29)
    {
      v30 = v29;
      v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v28 = v31;

      goto LABEL_14;
    }

    v18 = v6;
LABEL_13:
    static UTType.image.getter();
    v25 = UTType.identifier.getter();
    v28 = v32;
    (*(v7 + 8))(v9, v18);
    goto LABEL_14;
  }

  static UTType.livePhoto.getter();
  v25 = UTType.identifier.getter();
  v26 = v6;
  v28 = v27;
  (*(v7 + 8))(v9, v26);
LABEL_14:
  v33 = &v3[OBJC_IVAR____TtCC20CommunicationDetails29PhotosGridQuickLookDataSource16MediaPreviewItem_mediaType];
  *v33 = v25;
  v33[1] = v28;
  v34 = *&v3[v44];

  v35 = v34;
  v36 = MEMORY[0x193AEA8E0](v25, v28);

  v37 = MEMORY[0x193AEA8E0](countAndFlagsBits, object);

  type metadata accessor for NSNumber(0, &lazy cache variable for type metadata for NSNumber, 0x1E696AD98);
  isa = NSNumber.init(integerLiteral:)(0).super.super.isa;
  v46.receiver = v3;
  v46.super_class = ObjectType;
  v39 = objc_msgSendSuper2(&v46, sel_initWithPreviewItemProvider_contentType_previewTitle_fileSize_, v35, v36, v37, isa);

  swift_unknownObjectRelease();
  return v39;
}

void PhotosGridQuickLookDataSource.MediaPreviewItem.setFetchHandler(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *&v2[OBJC_IVAR____TtCC20CommunicationDetails29PhotosGridQuickLookDataSource16MediaPreviewItem_itemProvider];
  v6 = MEMORY[0x193AEA8E0](*&v2[OBJC_IVAR____TtCC20CommunicationDetails29PhotosGridQuickLookDataSource16MediaPreviewItem_mediaType], *&v2[OBJC_IVAR____TtCC20CommunicationDetails29PhotosGridQuickLookDataSource16MediaPreviewItem_mediaType + 8]);
  v7 = swift_allocObject();
  v7[2] = v2;
  v7[3] = a1;
  v7[4] = a2;
  v10[4] = partial apply for closure #1 in PhotosGridQuickLookDataSource.MediaPreviewItem.setFetchHandler(_:);
  v10[5] = v7;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed (@escaping @callee_guaranteed @Sendable (@guaranteed NSSecureCoding?, @guaranteed Error?) -> ())?, @unowned @thick Swift.AnyObject.Type?, @guaranteed [AnyHashable : Any]?) -> ();
  v10[3] = &block_descriptor_5;
  v8 = _Block_copy(v10);
  v9 = v2;

  [v5 registerItemForTypeIdentifier:v6 loadHandler:v8];
  _Block_release(v8);
}

uint64_t closure #1 in PhotosGridQuickLookDataSource.MediaPreviewItem.setFetchHandler(_:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v17 - v11;
  static TaskPriority.userInitiated.getter();
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v12, 0, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = a3;
  v14[5] = a1;
  v14[6] = a2;
  v14[7] = a4;
  v14[8] = a5;
  v15 = a3;
  outlined copy of (@escaping @callee_guaranteed @Sendable (@guaranteed NSSecureCoding?, @guaranteed Error?) -> ())?(a1, a2);

  _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0xD000000000000020, 0x80000001901FF530, v12, &async function pointer to partial apply for closure #1 in closure #1 in PhotosGridQuickLookDataSource.MediaPreviewItem.setFetchHandler(_:), v14);

  return outlined destroy of TaskPriority?(v12, &_sScPSgMd, &_sScPSgMR);
}

uint64_t closure #1 in closure #1 in PhotosGridQuickLookDataSource.MediaPreviewItem.setFetchHandler(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a7;
  v8[9] = a8;
  v8[6] = a5;
  v8[7] = a6;
  v8[5] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v8[10] = swift_task_alloc();
  v8[11] = swift_task_alloc();
  v9 = type metadata accessor for URL();
  v8[12] = v9;
  v8[13] = *(v9 - 8);
  v8[14] = swift_task_alloc();
  v8[15] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in PhotosGridQuickLookDataSource.MediaPreviewItem.setFetchHandler(_:), 0, 0);
}

uint64_t closure #1 in closure #1 in PhotosGridQuickLookDataSource.MediaPreviewItem.setFetchHandler(_:)()
{
  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[11];
  v4 = v0[5];
  v5 = OBJC_IVAR____TtCC20CommunicationDetails29PhotosGridQuickLookDataSource16MediaPreviewItem_mediaItemURL;
  swift_beginAccess();
  outlined init with copy of URL?(v4 + v5, v3, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v6 = *(v2 + 48);
  v0[16] = v6;
  v0[17] = (v2 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v6(v3, 1, v1) == 1)
  {
    v7 = v0[8];
    outlined destroy of TaskPriority?(v0[11], &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v17 = (v7 + *v7);
    v8 = swift_task_alloc();
    v0[18] = v8;
    *v8 = v0;
    v8[1] = closure #1 in closure #1 in PhotosGridQuickLookDataSource.MediaPreviewItem.setFetchHandler(_:);
    v9 = v0[10];

    return v17(v9);
  }

  else
  {
    v11 = v0[6];
    (*(v0[13] + 32))(v0[15], v0[11], v0[12]);
    if (v11)
    {
      v13 = v0[6];
      URL._bridgeToObjectiveC()(v12);
      v15 = v14;
      v13();
    }

    (*(v0[13] + 8))(v0[15], v0[12]);

    v16 = v0[1];

    return v16();
  }
}

{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = closure #1 in closure #1 in PhotosGridQuickLookDataSource.MediaPreviewItem.setFetchHandler(_:);
  }

  else
  {
    v2 = closure #1 in closure #1 in PhotosGridQuickLookDataSource.MediaPreviewItem.setFetchHandler(_:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  v1 = *(v0 + 96);
  v2 = *(v0 + 80);
  if ((*(v0 + 128))(v2, 1, v1) == 1)
  {
    outlined destroy of TaskPriority?(v2, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  }

  else
  {
    v3 = *(v0 + 48);
    (*(*(v0 + 104) + 32))(*(v0 + 112), v2, v1);
    if (v3)
    {
      v5 = *(v0 + 48);
      URL._bridgeToObjectiveC()(v4);
      v7 = v6;
      v5();
    }

    (*(*(v0 + 104) + 8))(*(v0 + 112), *(v0 + 96));
  }

  v8 = *(v0 + 8);

  return v8();
}

{
  v1 = v0[6];
  v2 = v0[19];
  if (v1)
  {
    v3 = v2;
    v1(0, v2);
  }

  v4 = v0[1];

  return v4();
}

void thunk for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSSecureCoding?, @unowned NSError?) -> ()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = _convertErrorToNSError(_:)();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

id PhotosGridQuickLookDataSource.MediaPreviewItem.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void PhotosGridQuickLookDataSource.MediaPreviewItem.init(coder:)()
{
  v1 = OBJC_IVAR____TtCC20CommunicationDetails29PhotosGridQuickLookDataSource16MediaPreviewItem_itemProvider;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x1E696ACA0]) init];
  v2 = OBJC_IVAR____TtCC20CommunicationDetails29PhotosGridQuickLookDataSource16MediaPreviewItem_mediaItemURL;
  v3 = type metadata accessor for URL();
  (*(*(v3 - 8) + 56))(v0 + v2, 1, 1, v3);
  *(v0 + OBJC_IVAR____TtCC20CommunicationDetails29PhotosGridQuickLookDataSource16MediaPreviewItem_hasFetchingStarted) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id PhotosGridQuickLookDataSource.MediaPreviewItem.__allocating_init(url:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  URL._bridgeToObjectiveC()(v4);
  v6 = v5;
  v7 = [v3 initWithURL_];

  v8 = type metadata accessor for URL();
  (*(*(v8 - 8) + 8))(a1, v8);
  return v7;
}

id PhotosGridQuickLookDataSource.MediaPreviewItem.__allocating_init(url:previewTitle:editingMode:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, NSURL *a5@<X8>)
{
  v6 = v5;
  URL._bridgeToObjectiveC()(a5);
  v12 = v11;
  if (a3)
  {
    v13 = MEMORY[0x193AEA8E0](a2, a3);
  }

  else
  {
    v13 = 0;
  }

  v14 = [objc_allocWithZone(v6) initWithURL:v12 previewTitle:v13 editingMode:a4];

  v15 = type metadata accessor for URL();
  (*(*(v15 - 8) + 8))(a1, v15);
  return v14;
}

id PhotosGridQuickLookDataSource.MediaPreviewItem.__allocating_init(urlSandboxWrapper:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithURLSandboxWrapper_];

  return v3;
}

id PhotosGridQuickLookDataSource.MediaPreviewItem.__allocating_init(urlSandboxWrapper:previewTitle:editingMode:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a3)
  {
    v8 = MEMORY[0x193AEA8E0](a2, a3);
  }

  else
  {
    v8 = 0;
  }

  v9 = [objc_allocWithZone(v5) initWithURLSandboxWrapper:a1 previewTitle:v8 editingMode:a4];

  return v9;
}

id PhotosGridQuickLookDataSource.MediaPreviewItem.__allocating_init(fpItem:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithFPItem_];

  return v3;
}

id PhotosGridQuickLookDataSource.MediaPreviewItem.__allocating_init(url:mimeType:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  URL._bridgeToObjectiveC()(v8);
  v10 = v9;
  v11 = MEMORY[0x193AEA8E0](a2, a3);

  v12 = [v7 initWithURL:v10 MIMEType:v11];

  v13 = type metadata accessor for URL();
  (*(*(v13 - 8) + 8))(a1, v13);
  return v12;
}

id PhotosGridQuickLookDataSource.MediaPreviewItem.__allocating_init(data:contentType:previewTitle:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = objc_allocWithZone(v6);
  isa = Data._bridgeToObjectiveC()().super.isa;
  v15 = MEMORY[0x193AEA8E0](a3, a4);

  v16 = MEMORY[0x193AEA8E0](a5, a6);

  v17 = [v13 initWithData:isa contentType:v15 previewTitle:v16];

  outlined consume of Data._Representation(a1, a2);
  return v17;
}

id PhotosGridQuickLookDataSource.MediaPreviewItem.__allocating_init(dataProvider:contentType:previewTitle:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = objc_allocWithZone(v5);
  v12 = MEMORY[0x193AEA8E0](a2, a3);

  v13 = MEMORY[0x193AEA8E0](a4, a5);

  v14 = [v11 initWithDataProvider:a1 contentType:v12 previewTitle:v13];
  swift_unknownObjectRelease();

  return v14;
}

id PhotosGridQuickLookDataSource.MediaPreviewItem.__allocating_init(previewItemProvider:contentType:previewTitle:fileSize:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v13 = objc_allocWithZone(v6);
  v14 = MEMORY[0x193AEA8E0](a2, a3);

  v15 = MEMORY[0x193AEA8E0](a4, a5);

  v16 = [v13 initWithPreviewItemProvider:a1 contentType:v14 previewTitle:v15 fileSize:a6];

  return v16;
}

id PhotosGridQuickLookDataSource.MediaPreviewItem.__allocating_init(searchableItemUniqueIdentifier:queryString:applicationBundleIdentifier:previewTitle:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = MEMORY[0x193AEA8E0](a1);

  if (a4)
  {
    v16 = MEMORY[0x193AEA8E0](a3, a4);
  }

  else
  {
    v16 = 0;
  }

  v17 = MEMORY[0x193AEA8E0](a5, a6);

  if (a8)
  {
    v18 = MEMORY[0x193AEA8E0](a7, a8);
  }

  else
  {
    v18 = 0;
  }

  v19 = [objc_allocWithZone(v8) initWithSearchableItemUniqueIdentifier:v15 queryString:v16 applicationBundleIdentifier:v17 previewTitle:v18];

  return v19;
}

id PhotosGridQuickLookDataSource.MediaPreviewItem.__allocating_init(searchableItemUniqueIdentifier:applicationBundleIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = objc_allocWithZone(v4);
  v10 = MEMORY[0x193AEA8E0](a1, a2);

  v11 = MEMORY[0x193AEA8E0](a3, a4);

  v12 = [v9 initWithSearchableItemUniqueIdentifier:v10 applicationBundleIdentifier:v11];

  return v12;
}

id PhotosGridQuickLookDataSource.MediaPreviewItem.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PhotosGridQuickLookDataSource.MediaPreviewItem.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id PhotosGridQuickLookDataSource.__allocating_init(assetsDataSource:assetReference:mediaProvider:previewsCache:)(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = objc_allocWithZone(v4);
  *&v9[OBJC_IVAR____TtC20CommunicationDetails29PhotosGridQuickLookDataSource_assetsDataSource] = a1;
  v10 = a1;
  [a2 simpleIndexPath];
  *&v9[OBJC_IVAR____TtC20CommunicationDetails29PhotosGridQuickLookDataSource_referenceSection] = v14;
  *&v9[OBJC_IVAR____TtC20CommunicationDetails29PhotosGridQuickLookDataSource_mediaProvider] = a3;
  *&v9[OBJC_IVAR____TtC20CommunicationDetails29PhotosGridQuickLookDataSource_previewsCache] = a4;
  v13.receiver = v9;
  v13.super_class = v4;
  v11 = objc_msgSendSuper2(&v13, sel_init);

  return v11;
}

id PhotosGridQuickLookDataSource.init(assetsDataSource:assetReference:mediaProvider:previewsCache:)(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  *&v4[OBJC_IVAR____TtC20CommunicationDetails29PhotosGridQuickLookDataSource_assetsDataSource] = a1;
  v8 = a1;
  [a2 simpleIndexPath];
  *&v4[OBJC_IVAR____TtC20CommunicationDetails29PhotosGridQuickLookDataSource_referenceSection] = v12;
  *&v4[OBJC_IVAR____TtC20CommunicationDetails29PhotosGridQuickLookDataSource_mediaProvider] = a3;
  *&v4[OBJC_IVAR____TtC20CommunicationDetails29PhotosGridQuickLookDataSource_previewsCache] = a4;
  v11.receiver = v4;
  v11.super_class = type metadata accessor for PhotosGridQuickLookDataSource();
  v9 = objc_msgSendSuper2(&v11, sel_init);

  return v9;
}

char *PhotosGridQuickLookDataSource.item(at:)(double (*a1)(uint64_t a1, void *aBlock, uint64_t ObjCClassMetadata, uint64_t a4))
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v57 - v3;
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v57 - v10;
  v12 = Logger.detailsPhotos.unsafeMutableAddressor();
  v59 = *(v6 + 16);
  v60 = v12;
  v59(v11);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = v4;
    v16 = v6;
    v17 = v8;
    v18 = v5;
    v19 = swift_slowAlloc();
    *v19 = 134217984;
    *(v19 + 4) = a1;
    _os_log_impl(&dword_190119000, v13, v14, "Item at index [%ld] requested for Quick Look preview", v19, 0xCu);
    v20 = v19;
    v5 = v18;
    v8 = v17;
    v6 = v16;
    v4 = v15;
    MEMORY[0x193AEBB30](v20, -1, -1);
  }

  v21 = *(v6 + 8);
  v21(v11, v5);
  v22 = v61;
  v23 = *&v61[OBJC_IVAR____TtC20CommunicationDetails29PhotosGridQuickLookDataSource_assetsDataSource];
  v24 = [v23 identifier];
  v25 = *&v22[OBJC_IVAR____TtC20CommunicationDetails29PhotosGridQuickLookDataSource_referenceSection];
  aBlock = v24;
  v64 = v25;
  v65 = a1;
  v66 = 0x7FFFFFFFFFFFFFFFLL;
  v26 = [v23 assetAtItemIndexPath_];
  v27 = PhotosGridQuickLookDataSource.getCachedPreviewItem(for:)(v26);
  if (v27)
  {
    v28 = v27;
    v61 = v21;
    v29 = a1;
    (v59)(v8, v60, v5);
    v30 = v28;
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v31, v32))
    {
      v58 = v32;
      v59 = v8;
      v60 = v5;
      v33 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v62 = v57;
      *v33 = 134218242;
      *(v33 + 4) = v29;
      *(v33 + 12) = 2080;
      v34 = OBJC_IVAR____TtCC20CommunicationDetails29PhotosGridQuickLookDataSource16MediaPreviewItem_mediaItemURL;
      swift_beginAccess();
      outlined init with copy of URL?(&v30[v34], v4, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      v35 = type metadata accessor for URL();
      v36 = *(v35 - 8);
      if ((*(v36 + 48))(v4, 1, v35) == 1)
      {
        outlined destroy of TaskPriority?(v4, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
        object = 0xE300000000000000;
        countAndFlagsBits = 7104878;
      }

      else
      {
        v53 = URL.path(percentEncoded:)(1);
        countAndFlagsBits = v53._countAndFlagsBits;
        object = v53._object;
        (*(v36 + 8))(v4, v35);
      }

      v54 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(countAndFlagsBits, object, &v62);

      *(v33 + 14) = v54;
      _os_log_impl(&dword_190119000, v31, v58, "Returning cached item [%ld] for Quick Look with URL: %s", v33, 0x16u);
      v55 = v57;
      __swift_destroy_boxed_opaque_existential_0(v57);
      MEMORY[0x193AEBB30](v55, -1, -1);
      MEMORY[0x193AEBB30](v33, -1, -1);
      swift_unknownObjectRelease();

      v51 = v59;
      v52 = v60;
    }

    else
    {

      swift_unknownObjectRelease();
      v51 = v8;
      v52 = v5;
    }

    (v61)(v51, v52);
  }

  else
  {
    v39 = objc_allocWithZone(type metadata accessor for PhotosGridQuickLookDataSource.MediaPreviewItem(0));
    v40 = swift_unknownObjectRetain();
    v41 = PhotosGridQuickLookDataSource.MediaPreviewItem.init(asset:index:)(v40, a1);
    PhotosGridQuickLookDataSource.cachePreviewItem(_:for:)(v41, v26);
    v42 = swift_allocObject();
    v42[2] = a1;
    v42[3] = v22;
    v42[4] = v26;
    v42[5] = v41;
    v43 = *&v41[OBJC_IVAR____TtCC20CommunicationDetails29PhotosGridQuickLookDataSource16MediaPreviewItem_itemProvider];
    v44 = *&v41[OBJC_IVAR____TtCC20CommunicationDetails29PhotosGridQuickLookDataSource16MediaPreviewItem_mediaType];
    v45 = *&v41[OBJC_IVAR____TtCC20CommunicationDetails29PhotosGridQuickLookDataSource16MediaPreviewItem_mediaType + 8];
    swift_unknownObjectRetain();
    v46 = v22;
    v47 = v41;
    v48 = MEMORY[0x193AEA8E0](v44, v45);
    v49 = swift_allocObject();
    v49[2] = v47;
    v49[3] = &async function pointer to partial apply for closure #1 in PhotosGridQuickLookDataSource.item(at:);
    v49[4] = v42;
    v67 = closure #1 in PhotosGridQuickLookDataSource.MediaPreviewItem.setFetchHandler(_:)partial apply;
    v68 = v49;
    aBlock = MEMORY[0x1E69E9820];
    v64 = 1107296256;
    v65 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed (@escaping @callee_guaranteed @Sendable (@guaranteed NSSecureCoding?, @guaranteed Error?) -> ())?, @unowned @thick Swift.AnyObject.Type?, @guaranteed [AnyHashable : Any]?) -> ();
    v66 = &block_descriptor_73;
    v50 = _Block_copy(&aBlock);
    v30 = v47;

    [v43 registerItemForTypeIdentifier:v48 loadHandler:v50];
    _Block_release(v50);
    swift_unknownObjectRelease();
  }

  return v30;
}

uint64_t closure #1 in PhotosGridQuickLookDataSource.item(at:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[17] = a4;
  v5[18] = a5;
  v5[15] = a2;
  v5[16] = a3;
  v5[14] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v5[19] = swift_task_alloc();
  v5[20] = swift_task_alloc();
  v6 = type metadata accessor for URL();
  v5[21] = v6;
  v5[22] = *(v6 - 8);
  v5[23] = swift_task_alloc();
  v5[24] = swift_task_alloc();
  v5[25] = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  v5[26] = v7;
  v5[27] = *(v7 - 8);
  v5[28] = swift_task_alloc();
  v5[29] = swift_task_alloc();
  v5[30] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in PhotosGridQuickLookDataSource.item(at:), 0, 0);
}

uint64_t closure #1 in PhotosGridQuickLookDataSource.item(at:)()
{
  v1 = v0[30];
  v2 = v0[26];
  v3 = v0[27];
  v4 = Logger.detailsPhotos.unsafeMutableAddressor();
  v0[31] = v4;
  v5 = *(v3 + 16);
  v0[32] = v5;
  v0[33] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v2);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[15];
    v9 = swift_slowAlloc();
    *v9 = 134217984;
    *(v9 + 4) = v8;
    _os_log_impl(&dword_190119000, v6, v7, "Registering item provider at index [%ld] for Quick Look preview", v9, 0xCu);
    MEMORY[0x193AEBB30](v9, -1, -1);
  }

  v10 = v0[30];
  v11 = v0[26];
  v12 = v0[27];

  v13 = *(v12 + 8);
  v0[34] = v13;
  v0[35] = (v12 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v13(v10, v11);
  type metadata accessor for MainActor();
  v0[36] = static MainActor.shared.getter();
  v15 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in PhotosGridQuickLookDataSource.item(at:), v15, v14);
}

{
  v1 = *(v0 + 136);

  *(v0 + 296) = PhotosGridQuickLookDataSource.getCachedPreviewItem(for:)(v1);

  return MEMORY[0x1EEE6DFA0](closure #1 in PhotosGridQuickLookDataSource.item(at:), 0, 0);
}

{
  v1 = *(v0 + 296);
  if (v1)
  {
    v2 = *(v0 + 168);
    v3 = *(v0 + 176);
    v4 = *(v0 + 160);
    v5 = OBJC_IVAR____TtCC20CommunicationDetails29PhotosGridQuickLookDataSource16MediaPreviewItem_mediaItemURL;
    swift_beginAccess();
    outlined init with copy of URL?(v1 + v5, v4, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    if ((*(v3 + 48))(v4, 1, v2) != 1)
    {
      v22 = *(v0 + 200);
      v23 = *(v0 + 168);
      v7 = *(v0 + 176);
      v24 = *(v0 + 160);
      v25 = *(v0 + 112);

      v26 = *(v7 + 32);
      v26(v22, v24, v23);
      v26(v25, v22, v23);
      v8 = 0;
      goto LABEL_10;
    }

    outlined destroy of TaskPriority?(*(v0 + 160), &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v6 = OBJC_IVAR____TtCC20CommunicationDetails29PhotosGridQuickLookDataSource16MediaPreviewItem_hasFetchingStarted;
    swift_beginAccess();
    LOBYTE(v6) = *(v1 + v6);

    if (v6)
    {
      v7 = *(v0 + 176);
      v8 = 1;
LABEL_10:
      (*(v7 + 56))(*(v0 + 112), v8, 1, *(v0 + 168));

      v27 = *(v0 + 8);
LABEL_14:

      return v27();
    }
  }

  objc_opt_self();
  v9 = swift_dynamicCastObjCClass();
  if (!v9)
  {
    (*(v0 + 256))(*(v0 + 224), *(v0 + 248), *(v0 + 208));
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = *(v0 + 120);
      v31 = swift_slowAlloc();
      *v31 = 134217984;
      *(v31 + 4) = v30;
      _os_log_impl(&dword_190119000, v28, v29, "Item at index [%ld] not available for Quick Look preview", v31, 0xCu);
      MEMORY[0x193AEBB30](v31, -1, -1);
    }

    v32 = *(v0 + 272);
    v33 = *(v0 + 224);
    v34 = *(v0 + 208);

    v35 = v32(v33, v34);
    lazy protocol witness table accessor for type PhotosGridQuickLookDataSource.MediaPreviewItemFetcher.FetchError and conformance PhotosGridQuickLookDataSource.MediaPreviewItemFetcher.FetchError(v35, v36, v37);
    swift_allocError();
    *v38 = 1;
    *(v38 + 8) = 1;
    swift_willThrow();

    v27 = *(v0 + 8);
    goto LABEL_14;
  }

  v10 = v9;
  v11 = *(v0 + 144);
  v12 = *(v0 + 120);
  v13 = *(*(v0 + 128) + OBJC_IVAR____TtC20CommunicationDetails29PhotosGridQuickLookDataSource_mediaProvider);
  v14 = swift_allocObject();
  *(v14 + 16) = v11;
  type metadata accessor for PhotosGridQuickLookDataSource.MediaPreviewItemFetcher();
  v15 = swift_allocObject();
  *(v0 + 304) = v15;
  swift_unknownObjectRetain_n();
  v16 = v13;
  v17 = v11;
  swift_defaultActor_initialize();
  v15[14] = v10;
  v15[15] = v16;
  v15[16] = v12;
  v15[17] = partial apply for closure #1 in closure #1 in PhotosGridQuickLookDataSource.item(at:);
  v15[18] = v14;
  v18 = OBJC_IVAR____TtCC20CommunicationDetails29PhotosGridQuickLookDataSource16MediaPreviewItem_hasFetchingStarted;
  swift_beginAccess();
  v17[v18] = 1;
  v19 = swift_task_alloc();
  *(v0 + 312) = v19;
  *v19 = v0;
  v19[1] = closure #1 in PhotosGridQuickLookDataSource.item(at:);
  v20 = *(v0 + 192);

  return PhotosGridQuickLookDataSource.MediaPreviewItemFetcher.fetchURL()(v20);
}

{
  *(*v1 + 320) = v0;

  if (v0)
  {
    v2 = closure #1 in PhotosGridQuickLookDataSource.item(at:);
  }

  else
  {
    v2 = closure #1 in PhotosGridQuickLookDataSource.item(at:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  v36 = v0;
  v32 = v0[32];
  v1 = v0[29];
  v2 = v0[26];
  v3 = v0[24];
  v29 = v0[31];
  v30 = v0[23];
  v5 = v0[21];
  v4 = v0[22];
  v7 = v0[18];
  v6 = v0[19];
  v8 = *(v4 + 16);
  v8(v6, v3, v5);
  v34 = *(v4 + 56);
  v34(v6, 0, 1, v5);
  v9 = OBJC_IVAR____TtCC20CommunicationDetails29PhotosGridQuickLookDataSource16MediaPreviewItem_mediaItemURL;
  swift_beginAccess();
  outlined assign with take of URL?(v6, v7 + v9);
  swift_endAccess();
  v32(v1, v29, v2);
  v8(v30, v3, v5);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  v12 = os_log_type_enabled(v10, v11);
  v13 = v0[34];
  v14 = v0[29];
  v15 = v0[26];
  v17 = v0[22];
  v16 = v0[23];
  v18 = v0[21];
  if (v12)
  {
    v33 = v0[34];
    v19 = v0[15];
    v31 = v0[26];
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v35 = v21;
    *v20 = 134218242;
    *(v20 + 4) = v19;
    *(v20 + 12) = 2080;
    lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
    v22 = dispatch thunk of CustomStringConvertible.description.getter();
    v28 = v14;
    v24 = v23;
    (*(v17 + 8))(v16, v18);
    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v24, &v35);

    *(v20 + 14) = v25;
    _os_log_impl(&dword_190119000, v10, v11, "Returning URL for Quick Look item at index [%ld]: %s", v20, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v21);
    MEMORY[0x193AEBB30](v21, -1, -1);
    MEMORY[0x193AEBB30](v20, -1, -1);

    swift_unknownObjectRelease();
    v33(v28, v31);
  }

  else
  {

    swift_unknownObjectRelease();
    (*(v17 + 8))(v16, v18);
    v13(v14, v15);
  }

  (*(v0[22] + 32))(v0[14], v0[24], v0[21]);
  v34(v0[14], 0, 1, v0[21]);

  v26 = v0[1];

  return v26();
}

{
  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

double closure #1 in closure #1 in PhotosGridQuickLookDataSource.item(at:)(void *a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v14 - v5;
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  type metadata accessor for MainActor();
  v8 = a2;
  v9 = a1;
  v10 = static MainActor.shared.getter();
  v11 = swift_allocObject();
  v12 = MEMORY[0x1E69E85E0];
  v11[2] = v10;
  v11[3] = v12;
  v11[4] = v8;
  v11[5] = v9;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v6, &async function pointer to partial apply for closure #1 in closure #1 in closure #1 in PhotosGridQuickLookDataSource.item(at:), v11);

  return result;
}

uint64_t closure #1 in closure #1 in closure #1 in PhotosGridQuickLookDataSource.item(at:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  type metadata accessor for MainActor();
  v5[4] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in closure #1 in PhotosGridQuickLookDataSource.item(at:), v7, v6);
}

uint64_t closure #1 in closure #1 in closure #1 in PhotosGridQuickLookDataSource.item(at:)()
{
  v1 = v0[3];
  v2 = v0[2];

  [v2 setPreviewItemProviderProgress_];
  v3 = v0[1];

  return v3();
}

id PhotosGridQuickLookDataSource.getCachedPreviewItem(for:)(uint64_t a1)
{
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    v3 = result;
    v4 = *(v1 + OBJC_IVAR____TtC20CommunicationDetails29PhotosGridQuickLookDataSource_previewsCache);
    swift_unknownObjectRetain();
    v5 = [v3 localIdentifier];
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;

    swift_beginAccess();
    v9 = *(v4 + 16);
    if (*(v9 + 16) && (, v10 = specialized __RawDictionaryStorage.find<A>(_:)(v6, v8), v12 = v11, , (v12 & 1) != 0))
    {
      v13 = *(*(v9 + 56) + 8 * v10);

      swift_unknownObjectRelease();
      return v13;
    }

    else
    {
      swift_unknownObjectRelease();

      return 0;
    }
  }

  return result;
}

id PhotosGridQuickLookDataSource.cachePreviewItem(_:for:)(void *a1, void *a2)
{
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (v5)
  {
    v6 = [v5 localIdentifier];
  }

  else
  {
    result = [a2 uuid];
    v6 = result;
    if (!result)
    {
      return result;
    }
  }

  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  v11 = *(v2 + OBJC_IVAR____TtC20CommunicationDetails29PhotosGridQuickLookDataSource_previewsCache);
  swift_beginAccess();
  v12 = a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *(v11 + 16);
  *(v11 + 16) = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v12, v8, v10, isUniquelyReferenced_nonNull_native);

  *(v11 + 16) = v14;
  return swift_endAccess();
}

id PhotosGridQuickLookDataSource.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for PhotosGridQuickLookDataSource();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t PhotosGridQuickLookDataSource.MediaPreviewItemFetcher.fetchURL()(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for URL();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = type metadata accessor for Logger();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](PhotosGridQuickLookDataSource.MediaPreviewItemFetcher.fetchURL(), v1, 0);
}

uint64_t PhotosGridQuickLookDataSource.MediaPreviewItemFetcher.fetchURL()()
{
  v80 = v0;
  v1 = v0[10];
  v3 = v0[7];
  v2 = v0[8];
  v4 = v0[3];
  v5 = *(v4 + 136);
  v0[11] = v5;
  v0[12] = *(v4 + 144);
  v6 = 0x1E696A000uLL;
  v7 = &off_1E72E3000;
  v8 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  v77 = v5;
  v5();

  v9 = Logger.detailsPhotos.unsafeMutableAddressor();
  v0[13] = v9;
  v10 = *(v2 + 16);
  v0[14] = v10;
  v0[15] = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v10(v1, v9, v3);
  swift_retain_n();
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  v13 = os_log_type_enabled(v11, v12);
  v14 = v0[10];
  v16 = v0[7];
  v15 = v0[8];
  v17 = v0[3];
  if (v13)
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v79[0] = v19;
    *v18 = 136315394;
    v20 = [*(v17 + 112) localIdentifier];
    v73 = v16;
    v74 = v14;
    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;

    v7 = &off_1E72E3000;
    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v23, v79);

    *(v18 + 4) = v24;
    *(v18 + 12) = 2048;
    v25 = *(v17 + 128);

    *(v18 + 14) = v25;

    __swift_destroy_boxed_opaque_existential_0(v19);
    v26 = v19;
    v6 = 0x1E696A000;
    MEMORY[0x193AEBB30](v26, -1, -1);
    MEMORY[0x193AEBB30](v18, -1, -1);

    v27 = *(v15 + 8);
    v27(v74, v73);
  }

  else
  {

    v27 = *(v15 + 8);
    v27(v14, v16);
  }

  v0[16] = v27;
  v28 = v0[3];
  v29 = [objc_allocWithZone(*(v6 + 3480)) v7[129]];
  v77();

  v30 = *(v28 + 112);
  v0[17] = v30;
  v31 = [v30 playbackStyle];
  if ((v31 - 1) < 2)
  {
    v37 = swift_task_alloc();
    v0[18] = v37;
    *v37 = v0;
    v37[1] = PhotosGridQuickLookDataSource.MediaPreviewItemFetcher.fetchURL();
    v38 = v0[6];

    return PhotosGridQuickLookDataSource.MediaPreviewItemFetcher.getImageURL()(v38);
  }

  else if ((v31 - 4) >= 2)
  {
    if (v31 == 3)
    {
      v39 = swift_task_alloc();
      v0[20] = v39;
      *v39 = v0;
      v39[1] = PhotosGridQuickLookDataSource.MediaPreviewItemFetcher.fetchURL();
      v40 = v0[6];

      return PhotosGridQuickLookDataSource.MediaPreviewItemFetcher.exportAsset()(v40);
    }

    else
    {
      lazy protocol witness table accessor for type PhotosGridQuickLookDataSource.MediaPreviewItemFetcher.FetchError and conformance PhotosGridQuickLookDataSource.MediaPreviewItemFetcher.FetchError(v31, v32, v33);
      v41 = swift_allocError();
      *v42 = 0;
      *(v42 + 8) = 1;
      swift_willThrow();
      v43 = v7;
      v44 = v0[13];
      v45 = v0[14];
      v46 = v0[11];
      v47 = v0[9];
      v48 = v0[7];
      v49 = [objc_allocWithZone(*(v6 + 3480)) v43 + 3507];
      v46();

      v50 = v41;
      v45(v47, v44, v48);
      swift_retain_n();
      v51 = v41;
      v52 = Logger.logObject.getter();
      v53 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v52, v53))
      {
        v54 = v0[17];
        v76 = v0[9];
        v78 = v0[16];
        v75 = v0[7];
        v55 = v0[3];
        v56 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        v72 = swift_slowAlloc();
        v79[0] = v72;
        *v56 = 136315650;
        v58 = [v54 localIdentifier];
        v59 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v60 = v50;
        v62 = v61;

        v63 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v59, v62, v79);
        v64 = v60;

        *(v56 + 4) = v63;
        *(v56 + 12) = 2048;
        v65 = *(v55 + 128);

        *(v56 + 14) = v65;

        *(v56 + 22) = 2112;
        v66 = v64;
        v67 = _swift_stdlib_bridgeErrorToNSError();
        *(v56 + 24) = v67;
        *v57 = v67;
        outlined destroy of TaskPriority?(v57, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x193AEBB30](v57, -1, -1);
        __swift_destroy_boxed_opaque_existential_0(v72);
        MEMORY[0x193AEBB30](v72, -1, -1);
        MEMORY[0x193AEBB30](v56, -1, -1);

        v78(v76, v75);
      }

      else
      {
        v68 = v0[16];
        v69 = v0[9];
        v70 = v0[7];

        v68(v69, v70);
      }

      swift_willThrow();

      v71 = v0[1];

      return v71();
    }
  }

  else
  {
    v34 = swift_task_alloc();
    v0[22] = v34;
    *v34 = v0;
    v34[1] = PhotosGridQuickLookDataSource.MediaPreviewItemFetcher.fetchURL();
    v35 = v0[6];

    return PhotosGridQuickLookDataSource.MediaPreviewItemFetcher.getVideoURL()(v35);
  }
}

{
  v2 = *v1;
  *(*v1 + 152) = v0;

  v3 = *(v2 + 24);
  if (v0)
  {
    v4 = PhotosGridQuickLookDataSource.MediaPreviewItemFetcher.fetchURL();
  }

  else
  {
    v4 = PhotosGridQuickLookDataSource.MediaPreviewItemFetcher.fetchURL();
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

{
  v1 = v0[11];
  (*(v0[5] + 32))(v0[2], v0[6], v0[4]);
  v2 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  v1();

  v3 = v0[1];

  return v3();
}

{
  v2 = *v1;
  *(*v1 + 168) = v0;

  v3 = *(v2 + 24);
  if (v0)
  {
    v4 = PhotosGridQuickLookDataSource.MediaPreviewItemFetcher.fetchURL();
  }

  else
  {
    v4 = PhotosGridQuickLookDataSource.MediaPreviewItemFetcher.fetchURL();
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

{
  v2 = *v1;
  *(*v1 + 184) = v0;

  v3 = *(v2 + 24);
  if (v0)
  {
    v4 = PhotosGridQuickLookDataSource.MediaPreviewItemFetcher.fetchURL();
  }

  else
  {
    v4 = PhotosGridQuickLookDataSource.MediaPreviewItemFetcher.fetchURL();
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

{
  v36 = v0;
  v1 = v0[21];
  v2 = v0[14];
  v3 = v0[13];
  v4 = v0[11];
  v5 = v0[9];
  v6 = v0[7];
  v7 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  v4();

  v8 = v1;
  v2(v5, v3, v6);
  swift_retain_n();
  v9 = v1;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = v0[17];
    v33 = v0[9];
    v34 = v0[16];
    v32 = v0[7];
    v13 = v0[3];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v35 = v31;
    *v14 = 136315650;
    v16 = [v12 localIdentifier];
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v8;
    v20 = v19;

    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v20, &v35);
    v22 = v18;

    *(v14 + 4) = v21;
    *(v14 + 12) = 2048;
    v23 = *(v13 + 128);

    *(v14 + 14) = v23;

    *(v14 + 22) = 2112;
    v24 = v22;
    v25 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 24) = v25;
    *v15 = v25;
    outlined destroy of TaskPriority?(v15, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x193AEBB30](v15, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v31);
    MEMORY[0x193AEBB30](v31, -1, -1);
    MEMORY[0x193AEBB30](v14, -1, -1);

    v34(v33, v32);
  }

  else
  {
    v26 = v0[16];
    v27 = v0[9];
    v28 = v0[7];

    v26(v27, v28);
  }

  swift_willThrow();

  v29 = v0[1];

  return v29();
}

{
  v36 = v0;
  v1 = v0[19];
  v2 = v0[14];
  v3 = v0[13];
  v4 = v0[11];
  v5 = v0[9];
  v6 = v0[7];
  v7 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  v4();

  v8 = v1;
  v2(v5, v3, v6);
  swift_retain_n();
  v9 = v1;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = v0[17];
    v33 = v0[9];
    v34 = v0[16];
    v32 = v0[7];
    v13 = v0[3];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v35 = v31;
    *v14 = 136315650;
    v16 = [v12 localIdentifier];
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v8;
    v20 = v19;

    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v20, &v35);
    v22 = v18;

    *(v14 + 4) = v21;
    *(v14 + 12) = 2048;
    v23 = *(v13 + 128);

    *(v14 + 14) = v23;

    *(v14 + 22) = 2112;
    v24 = v22;
    v25 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 24) = v25;
    *v15 = v25;
    outlined destroy of TaskPriority?(v15, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x193AEBB30](v15, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v31);
    MEMORY[0x193AEBB30](v31, -1, -1);
    MEMORY[0x193AEBB30](v14, -1, -1);

    v34(v33, v32);
  }

  else
  {
    v26 = v0[16];
    v27 = v0[9];
    v28 = v0[7];

    v26(v27, v28);
  }

  swift_willThrow();

  v29 = v0[1];

  return v29();
}

{
  v36 = v0;
  v1 = v0[23];
  v2 = v0[14];
  v3 = v0[13];
  v4 = v0[11];
  v5 = v0[9];
  v6 = v0[7];
  v7 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  v4();

  v8 = v1;
  v2(v5, v3, v6);
  swift_retain_n();
  v9 = v1;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = v0[17];
    v33 = v0[9];
    v34 = v0[16];
    v32 = v0[7];
    v13 = v0[3];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v35 = v31;
    *v14 = 136315650;
    v16 = [v12 localIdentifier];
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v8;
    v20 = v19;

    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v20, &v35);
    v22 = v18;

    *(v14 + 4) = v21;
    *(v14 + 12) = 2048;
    v23 = *(v13 + 128);

    *(v14 + 14) = v23;

    *(v14 + 22) = 2112;
    v24 = v22;
    v25 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 24) = v25;
    *v15 = v25;
    outlined destroy of TaskPriority?(v15, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x193AEBB30](v15, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v31);
    MEMORY[0x193AEBB30](v31, -1, -1);
    MEMORY[0x193AEBB30](v14, -1, -1);

    v34(v33, v32);
  }

  else
  {
    v26 = v0[16];
    v27 = v0[9];
    v28 = v0[7];

    v26(v27, v28);
  }

  swift_willThrow();

  v29 = v0[1];

  return v29();
}

uint64_t PhotosGridQuickLookDataSource.MediaPreviewItemFetcher.getImageURL()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](PhotosGridQuickLookDataSource.MediaPreviewItemFetcher.getImageURL(), v1, 0);
}

uint64_t PhotosGridQuickLookDataSource.MediaPreviewItemFetcher.getImageURL()()
{
  v1 = v0[3];
  v2 = *(v1 + 136);
  v3 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  v2();

  v4 = [objc_allocWithZone(MEMORY[0x1E69C4518]) init];
  v0[4] = v4;
  [v4 setVersion_];
  [v4 setDownloadIntent_];
  [v4 setNetworkAccessAllowed_];
  type metadata accessor for NSNumber(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  v5 = static OS_dispatch_queue.main.getter();
  [v4 setResultHandlerQueue_];

  v6 = lazy protocol witness table accessor for type PhotosGridQuickLookDataSource.MediaPreviewItemFetcher and conformance PhotosGridQuickLookDataSource.MediaPreviewItemFetcher();
  v7 = swift_task_alloc();
  v0[5] = v7;
  *(v7 + 16) = v1;
  *(v7 + 24) = v4;
  v8 = swift_task_alloc();
  v0[6] = v8;
  v9 = type metadata accessor for URL();
  *v8 = v0;
  v8[1] = PhotosGridQuickLookDataSource.MediaPreviewItemFetcher.getImageURL();
  v10 = v0[2];

  return MEMORY[0x1EEE6DE38](v10, v1, v6, 0x6567616D49746567, 0xED000029284C5255, partial apply for closure #1 in PhotosGridQuickLookDataSource.MediaPreviewItemFetcher.getImageURL(), v7, v9);
}

{
  v2 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v3 = *(v2 + 24);
    v4 = PhotosGridQuickLookDataSource.MediaPreviewItemFetcher.getImageURL();
  }

  else
  {
    v5 = *(v2 + 24);

    v4 = PhotosGridQuickLookDataSource.MediaPreviewItemFetcher.getImageURL();
    v3 = v5;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{

  v1 = *(v0 + 8);

  return v1();
}

void closure #1 in PhotosGridQuickLookDataSource.MediaPreviewItemFetcher.getImageURL()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy10Foundation3URLVs5Error_pGMd, &_sScCy10Foundation3URLVs5Error_pGMR);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v44 = &v37 - v9;
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v14 = Logger.detailsPhotos.unsafeMutableAddressor();
  (*(v11 + 16))(v13, v14, v10);
  swift_retain_n();
  v15 = Logger.logObject.getter();
  v43 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v43))
  {
    v16 = swift_slowAlloc();
    v42 = v7;
    v17 = v16;
    v40 = swift_slowAlloc();
    aBlock[0] = v40;
    *v17 = 136315394;
    v18 = [*(a2 + 112) localIdentifier];
    v41 = a1;
    v19 = v18;
    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v38 = v11;
    v39 = v10;
    v21 = v20;
    v22 = v8;
    v23 = v6;
    v24 = a3;
    v26 = v25;

    v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v26, aBlock);
    a3 = v24;
    v6 = v23;
    v8 = v22;

    *(v17 + 4) = v27;
    *(v17 + 12) = 2048;
    v28 = *(a2 + 128);

    *(v17 + 14) = v28;
    a1 = v41;

    v29 = v40;
    __swift_destroy_boxed_opaque_existential_0(v40);
    MEMORY[0x193AEBB30](v29, -1, -1);
    v30 = v17;
    v7 = v42;
    MEMORY[0x193AEBB30](v30, -1, -1);

    (*(v38 + 8))(v13, v39);
  }

  else
  {

    (*(v11 + 8))(v13, v10);
  }

  v31 = *(a2 + 112);
  v32 = *(a2 + 120);
  v33 = v44;
  (*(v7 + 16))(v44, a1, v6);
  v34 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v35 = swift_allocObject();
  (*(v7 + 32))(v35 + v34, v33, v6);
  *(v35 + ((v8 + v34 + 7) & 0xFFFFFFFFFFFFFFF8)) = a2;
  aBlock[4] = partial apply for closure #1 in closure #1 in PhotosGridQuickLookDataSource.MediaPreviewItemFetcher.getImageURL();
  aBlock[5] = v35;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@in_guaranteed URL?, @guaranteed [AnyHashable : Any]?) -> ();
  aBlock[3] = &block_descriptor_54;
  v36 = _Block_copy(aBlock);

  [v32 requestImageURLForAsset:v31 options:a3 resultHandler:v36];
  _Block_release(v36);
}

uint64_t closure #1 in closure #1 in closure #1 in PhotosGridQuickLookDataSource.MediaPreviewItemFetcher.getImageURL()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[3] = a4;
  v7 = type metadata accessor for Logger();
  v6[6] = v7;
  v6[7] = *(v7 - 8);
  v6[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v6[9] = swift_task_alloc();
  v8 = type metadata accessor for URL();
  v6[10] = v8;
  v6[11] = *(v8 - 8);
  v6[12] = swift_task_alloc();
  v6[13] = swift_task_alloc();
  type metadata accessor for MainActor();
  v6[14] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in closure #1 in PhotosGridQuickLookDataSource.MediaPreviewItemFetcher.getImageURL(), v10, v9);
}

uint64_t closure #1 in closure #1 in closure #1 in PhotosGridQuickLookDataSource.MediaPreviewItemFetcher.getImageURL()()
{
  v37 = v0;
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[9];
  v4 = v0[3];

  outlined init with copy of URL?(v4, v3, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v5 = outlined destroy of TaskPriority?(v0[9], &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    lazy protocol witness table accessor for type PhotosGridQuickLookDataSource.MediaPreviewItemFetcher.FetchError and conformance PhotosGridQuickLookDataSource.MediaPreviewItemFetcher.FetchError(v5, v6, v7);
    v8 = swift_allocError();
    *v9 = 2;
    *(v9 + 8) = 1;
    v0[2] = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy10Foundation3URLVs5Error_pGMd, &_sScCy10Foundation3URLVs5Error_pGMR);
    CheckedContinuation.resume(throwing:)();
  }

  else
  {
    v10 = v0[8];
    v11 = v0[6];
    v12 = v0[7];
    (*(v0[11] + 32))(v0[13], v0[9], v0[10]);
    v13 = Logger.detailsPhotos.unsafeMutableAddressor();
    (*(v12 + 16))(v10, v13, v11);
    swift_retain_n();
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    v16 = os_log_type_enabled(v14, v15);
    v18 = v0[7];
    v17 = v0[8];
    v20 = v0[5];
    v19 = v0[6];
    if (v16)
    {
      v35 = v0[6];
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v36 = v22;
      *v21 = 136315394;
      v23 = [*(v20 + 112) localIdentifier];
      v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v34 = v17;
      v26 = v25;

      v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v26, &v36);

      *(v21 + 4) = v27;
      *(v21 + 12) = 2048;
      v28 = *(v20 + 128);

      *(v21 + 14) = v28;

      __swift_destroy_boxed_opaque_existential_0(v22);
      MEMORY[0x193AEBB30](v22, -1, -1);
      MEMORY[0x193AEBB30](v21, -1, -1);

      (*(v18 + 8))(v34, v35);
    }

    else
    {

      (*(v18 + 8))(v17, v19);
    }

    v29 = v0[13];
    v30 = v0[10];
    v31 = v0[11];
    (*(v31 + 16))(v0[12], v29, v30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy10Foundation3URLVs5Error_pGMd, &_sScCy10Foundation3URLVs5Error_pGMR);
    CheckedContinuation.resume(returning:)();
    (*(v31 + 8))(v29, v30);
  }

  v32 = v0[1];

  return v32();
}

uint64_t PhotosGridQuickLookDataSource.MediaPreviewItemFetcher.getVideoURL()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](PhotosGridQuickLookDataSource.MediaPreviewItemFetcher.getVideoURL(), v1, 0);
}

uint64_t PhotosGridQuickLookDataSource.MediaPreviewItemFetcher.getVideoURL()()
{
  v1 = v0[3];
  v2 = *(v1 + 136);
  v3 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  v2();

  v4 = [objc_allocWithZone(MEMORY[0x1E69C3C60]) init];
  v0[4] = v4;
  [v4 setVersion_];
  [v4 setDownloadIntent_];
  [v4 setNetworkAccessAllowed_];
  type metadata accessor for NSNumber(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  v5 = static OS_dispatch_queue.main.getter();
  [v4 setResultHandlerQueue_];

  v6 = lazy protocol witness table accessor for type PhotosGridQuickLookDataSource.MediaPreviewItemFetcher and conformance PhotosGridQuickLookDataSource.MediaPreviewItemFetcher();
  v7 = swift_task_alloc();
  v0[5] = v7;
  *(v7 + 16) = v1;
  *(v7 + 24) = v4;
  v8 = swift_task_alloc();
  v0[6] = v8;
  v9 = type metadata accessor for URL();
  *v8 = v0;
  v8[1] = PhotosGridQuickLookDataSource.MediaPreviewItemFetcher.getVideoURL();
  v10 = v0[2];

  return MEMORY[0x1EEE6DE38](v10, v1, v6, 0x6F65646956746567, 0xED000029284C5255, partial apply for closure #1 in PhotosGridQuickLookDataSource.MediaPreviewItemFetcher.getVideoURL(), v7, v9);
}

{
  v2 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v3 = *(v2 + 24);
    v4 = PhotosGridQuickLookDataSource.MediaPreviewItemFetcher.getVideoURL();
  }

  else
  {
    v5 = *(v2 + 24);

    v4 = PhotosGridQuickLookDataSource.MediaPreviewItemFetcher.getVideoURL();
    v3 = v5;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

void closure #1 in PhotosGridQuickLookDataSource.MediaPreviewItemFetcher.getVideoURL()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy10Foundation3URLVs5Error_pGMd, &_sScCy10Foundation3URLVs5Error_pGMR);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v44 = &v37 - v9;
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v14 = Logger.detailsPhotos.unsafeMutableAddressor();
  (*(v11 + 16))(v13, v14, v10);
  swift_retain_n();
  v15 = Logger.logObject.getter();
  v43 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v43))
  {
    v16 = swift_slowAlloc();
    v42 = v7;
    v17 = v16;
    v40 = swift_slowAlloc();
    aBlock[0] = v40;
    *v17 = 136315394;
    v18 = [*(a2 + 112) localIdentifier];
    v41 = a1;
    v19 = v18;
    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v38 = v11;
    v39 = v10;
    v21 = v20;
    v22 = v8;
    v23 = v6;
    v24 = a3;
    v26 = v25;

    v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v26, aBlock);
    a3 = v24;
    v6 = v23;
    v8 = v22;

    *(v17 + 4) = v27;
    *(v17 + 12) = 2048;
    v28 = *(a2 + 128);

    *(v17 + 14) = v28;
    a1 = v41;

    v29 = v40;
    __swift_destroy_boxed_opaque_existential_0(v40);
    MEMORY[0x193AEBB30](v29, -1, -1);
    v30 = v17;
    v7 = v42;
    MEMORY[0x193AEBB30](v30, -1, -1);

    (*(v38 + 8))(v13, v39);
  }

  else
  {

    (*(v11 + 8))(v13, v10);
  }

  v31 = *(a2 + 112);
  v32 = *(a2 + 120);
  v33 = v44;
  (*(v7 + 16))(v44, a1, v6);
  v34 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v35 = swift_allocObject();
  (*(v7 + 32))(v35 + v34, v33, v6);
  *(v35 + ((v8 + v34 + 7) & 0xFFFFFFFFFFFFFFF8)) = a2;
  aBlock[4] = partial apply for closure #1 in closure #1 in PhotosGridQuickLookDataSource.MediaPreviewItemFetcher.getVideoURL();
  aBlock[5] = v35;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@in_guaranteed URL?, @guaranteed [AnyHashable : Any]?) -> ();
  aBlock[3] = &block_descriptor_32_0;
  v36 = _Block_copy(aBlock);

  [v32 requestURLForVideo:v31 options:a3 resultHandler:v36];
  _Block_release(v36);
}

double closure #1 in closure #1 in PhotosGridQuickLookDataSource.MediaPreviewItemFetcher.getImageURL()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v33 = a4;
  v34 = a5;
  v31 = a2;
  v32 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy10Foundation3URLVs5Error_pGMd, &_sScCy10Foundation3URLVs5Error_pGMR);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v29 - v9;
  v30 = &v29 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v15 = &v29 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v29 - v17;
  v19 = type metadata accessor for TaskPriority();
  (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
  outlined init with copy of URL?(a1, v15, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v20 = v10;
  v21 = v6;
  (*(v7 + 16))(v20, v31, v6);
  type metadata accessor for MainActor();
  v22 = v32;

  v23 = static MainActor.shared.getter();
  v24 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v25 = (v13 + *(v7 + 80) + v24) & ~*(v7 + 80);
  v26 = swift_allocObject();
  v27 = MEMORY[0x1E69E85E0];
  *(v26 + 16) = v23;
  *(v26 + 24) = v27;
  outlined init with take of URL?(v15, v26 + v24);
  (*(v7 + 32))(v26 + v25, v30, v21);
  *(v26 + ((v8 + v25 + 7) & 0xFFFFFFFFFFFFFFF8)) = v22;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v18, v34, v26);

  return result;
}

uint64_t closure #1 in closure #1 in closure #1 in PhotosGridQuickLookDataSource.MediaPreviewItemFetcher.getVideoURL()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[3] = a4;
  v7 = type metadata accessor for Logger();
  v6[6] = v7;
  v6[7] = *(v7 - 8);
  v6[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v6[9] = swift_task_alloc();
  v8 = type metadata accessor for URL();
  v6[10] = v8;
  v6[11] = *(v8 - 8);
  v6[12] = swift_task_alloc();
  v6[13] = swift_task_alloc();
  v6[14] = swift_task_alloc();
  type metadata accessor for MainActor();
  v6[15] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in closure #1 in PhotosGridQuickLookDataSource.MediaPreviewItemFetcher.getVideoURL(), v10, v9);
}

uint64_t closure #1 in closure #1 in closure #1 in PhotosGridQuickLookDataSource.MediaPreviewItemFetcher.getVideoURL()()
{
  v51 = v0;
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[9];
  v4 = v0[3];

  outlined init with copy of URL?(v4, v3, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v5 = outlined destroy of TaskPriority?(v0[9], &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    lazy protocol witness table accessor for type PhotosGridQuickLookDataSource.MediaPreviewItemFetcher.FetchError and conformance PhotosGridQuickLookDataSource.MediaPreviewItemFetcher.FetchError(v5, v6, v7);
    v8 = swift_allocError();
    *v9 = 3;
    *(v9 + 8) = 1;
    v0[2] = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy10Foundation3URLVs5Error_pGMd, &_sScCy10Foundation3URLVs5Error_pGMR);
    CheckedContinuation.resume(throwing:)();
  }

  else
  {
    v10 = v0[13];
    v11 = v0[14];
    v12 = v0[10];
    v13 = v0[11];
    v14 = v0[8];
    v15 = v0[6];
    v16 = v0[7];
    (*(v13 + 32))(v11, v0[9], v12);
    v17 = Logger.detailsPhotos.unsafeMutableAddressor();
    (*(v16 + 16))(v14, v17, v15);
    v49 = *(v13 + 16);
    v49(v10, v11, v12);
    swift_retain_n();
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    v20 = os_log_type_enabled(v18, v19);
    v21 = v0[13];
    v22 = v0[11];
    v48 = v0[10];
    v24 = v0[7];
    v23 = v0[8];
    v26 = v0[5];
    v25 = v0[6];
    if (v20)
    {
      v47 = v0[6];
      v27 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v50 = v45;
      *v27 = 136315650;
      v46 = v23;
      v28 = [*(v26 + 112) localIdentifier];
      log = v18;
      v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v43 = v19;
      v31 = v30;

      v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v31, &v50);

      *(v27 + 4) = v32;
      *(v27 + 12) = 2048;
      v33 = *(v26 + 128);

      *(v27 + 14) = v33;

      *(v27 + 22) = 2080;
      lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
      v34 = dispatch thunk of CustomStringConvertible.description.getter();
      v36 = v35;
      v37 = *(v22 + 8);
      v37(v21, v48);
      v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v36, &v50);

      *(v27 + 24) = v38;
      swift_arrayDestroy();
      MEMORY[0x193AEBB30](v45, -1, -1);
      MEMORY[0x193AEBB30](v27, -1, -1);

      (*(v24 + 8))(v46, v47);
    }

    else
    {

      v37 = *(v22 + 8);
      v37(v21, v48);
      (*(v24 + 8))(v23, v25);
    }

    v39 = v0[14];
    v40 = v0[10];
    v49(v0[12], v39, v40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy10Foundation3URLVs5Error_pGMd, &_sScCy10Foundation3URLVs5Error_pGMR);
    CheckedContinuation.resume(returning:)();
    v37(v39, v40);
  }

  v41 = v0[1];

  return v41();
}

uint64_t PhotosGridQuickLookDataSource.MediaPreviewItemFetcher.exportAsset()(uint64_t a1)
{
  v2[25] = a1;
  v2[26] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySDySo30PHAssetExportRequestFileURLKeya10Foundation3URLVGs5Error_pGMd, &_sScCySDySo30PHAssetExportRequestFileURLKeya10Foundation3URLVGs5Error_pGMR);
  v2[27] = v3;
  v2[28] = *(v3 - 8);
  v2[29] = swift_task_alloc();
  v4 = type metadata accessor for Logger();
  v2[30] = v4;
  v2[31] = *(v4 - 8);
  v2[32] = swift_task_alloc();
  v2[33] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](PhotosGridQuickLookDataSource.MediaPreviewItemFetcher.exportAsset(), v1, 0);
}

{
  swift_willThrow();
  v2 = *(v1 + 304);
  *(v1 + 192) = v2;
  v3 = (v1 + 176);
  v4 = v2;
  v5 = swift_dynamicCast();
  v6 = *(v1 + 272);
  v7 = *(v1 + 280);
  if (v5)
  {

    v8 = *(v1 + 160);
    v9 = *(v1 + 168);
    lazy protocol witness table accessor for type PhotosGridQuickLookDataSource.MediaPreviewItemFetcher.FetchError and conformance PhotosGridQuickLookDataSource.MediaPreviewItemFetcher.FetchError(v10, v11, v12);
    v13 = swift_allocError();
    *v14 = v8;
    *(v14 + 8) = v9;
    swift_willThrow();
  }

  else
  {

    lazy protocol witness table accessor for type PhotosGridQuickLookDataSource.MediaPreviewItemFetcher.FetchError and conformance PhotosGridQuickLookDataSource.MediaPreviewItemFetcher.FetchError(v15, v16, v17);
    v13 = swift_allocError();
    *v18 = 6;
    *(v18 + 8) = 1;
    swift_willThrow();
  }

  *v3 = v13;
  v19 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if (swift_dynamicCast())
  {

    v20 = *(v1 + 144);
    v21 = *(v1 + 152);
    lazy protocol witness table accessor for type PhotosGridQuickLookDataSource.MediaPreviewItemFetcher.FetchError and conformance PhotosGridQuickLookDataSource.MediaPreviewItemFetcher.FetchError(v22, v23, v24);
    swift_allocError();
    *v25 = v20;
    *(v25 + 8) = v21;
    swift_willThrow();
    v26 = *(v1 + 176);
  }

  else
  {

    lazy protocol witness table accessor for type PhotosGridQuickLookDataSource.MediaPreviewItemFetcher.FetchError and conformance PhotosGridQuickLookDataSource.MediaPreviewItemFetcher.FetchError(v27, v28, v29);
    swift_allocError();
    *v30 = 4;
    *(v30 + 8) = 1;
    swift_willThrow();
    v26 = v13;
  }

  v31 = *(v1 + 8);

  return v31();
}

uint64_t PhotosGridQuickLookDataSource.MediaPreviewItemFetcher.exportAsset()()
{
  v59 = v0;
  v1 = v0[33];
  v2 = v0[31];
  v3 = *(v0[26] + 136);
  v4 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  v54 = v3;
  v3();

  v5 = Logger.detailsPhotos.unsafeMutableAddressor();
  v51 = *(v2 + 16);
  v52 = v5;
  v51(v1);
  swift_retain_n();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[33];
  v10 = v0[31];
  v56 = v0[30];
  v11 = v0[26];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v58[0] = v13;
    *v12 = 136315394;
    v14 = [*(v11 + 112) localIdentifier];
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v49 = v9;
    v17 = v16;

    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v17, v58);

    *(v12 + 4) = v18;
    *(v12 + 12) = 2048;
    v19 = *(v11 + 128);

    *(v12 + 14) = v19;

    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x193AEBB30](v13, -1, -1);
    MEMORY[0x193AEBB30](v12, -1, -1);

    v20 = *(v10 + 8);
    v20(v49, v56);
  }

  else
  {

    v20 = *(v10 + 8);
    v20(v9, v56);
  }

  v21 = v0[26];
  type metadata accessor for NSNumber(0, &lazy cache variable for type metadata for PHAssetExportRequest, 0x1E69786A8);
  v22 = *(v21 + 112);
  v23 = specialized @nonobjc PHAssetExportRequest.__allocating_init(for:)(v22);
  v0[34] = v23;
  v57 = v23;

  v24 = PhotosGridQuickLookDataSource.MediaPreviewItemFetcher.assetExportRequestOptions()();
  v0[35] = v24;
  v0[36] = 0;
  v50 = v24;
  v25 = v0[32];
  v26 = v0[30];
  v27 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  v54();

  (v51)(v25, v52, v26);
  swift_retain_n();
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.default.getter();
  v30 = os_log_type_enabled(v28, v29);
  v31 = v0[32];
  v32 = v0[30];
  v33 = v0[26];
  if (v30)
  {
    v34 = swift_slowAlloc();
    v55 = v32;
    v35 = swift_slowAlloc();
    v58[0] = v35;
    *v34 = 136315394;
    v36 = [v22 localIdentifier];
    v53 = v31;
    v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v39 = v38;

    v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v39, v58);

    *(v34 + 4) = v40;
    *(v34 + 12) = 2048;
    v41 = *(v33 + 128);

    *(v34 + 14) = v41;

    __swift_destroy_boxed_opaque_existential_0(v35);
    MEMORY[0x193AEBB30](v35, -1, -1);
    MEMORY[0x193AEBB30](v34, -1, -1);

    v42 = v53;
    v43 = v55;
  }

  else
  {

    v42 = v31;
    v43 = v32;
  }

  v20(v42, v43);
  v44 = v0[28];
  v45 = v0[29];
  v46 = v0[27];
  v0[2] = v0;
  v0[7] = v0 + 23;
  v0[3] = PhotosGridQuickLookDataSource.MediaPreviewItemFetcher.exportAsset();
  swift_continuation_init();
  v0[17] = v46;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySo30PHAssetExportRequestFileURLKeya10Foundation3URLVGMd, &_sSDySo30PHAssetExportRequestFileURLKeya10Foundation3URLVGMR);
  v0[37] = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  CheckedContinuation.init(continuation:function:)();
  (*(v44 + 32))(boxed_opaque_existential_0, v45, v46);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSDictionary?, @unowned NSError?) -> () with result type [PHAssetExportRequestFileURLKey : URL];
  v0[13] = &block_descriptor_23;
  [v57 exportWithOptions:v50 completionHandler:v0 + 10];
  (*(v44 + 8))(boxed_opaque_existential_0, v46);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 304) = v2;
  v3 = *(v1 + 208);
  if (v2)
  {
    v4 = PhotosGridQuickLookDataSource.MediaPreviewItemFetcher.exportAsset();
  }

  else
  {
    v4 = PhotosGridQuickLookDataSource.MediaPreviewItemFetcher.exportAsset();
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

{
  v1 = *(v0 + 288);
  PhotosGridQuickLookDataSource.MediaPreviewItemFetcher.handleExportedFiles(at:)(*(v0 + 184), *(v0 + 200));
  if (v1)
  {

    *(v0 + 192) = v1;
    v2 = v1;
    v3 = swift_dynamicCast();
    v4 = *(v0 + 272);
    v5 = *(v0 + 280);
    if (v3)
    {

      v6 = *(v0 + 160);
      v7 = *(v0 + 168);
      lazy protocol witness table accessor for type PhotosGridQuickLookDataSource.MediaPreviewItemFetcher.FetchError and conformance PhotosGridQuickLookDataSource.MediaPreviewItemFetcher.FetchError(v8, v9, v10);
      v11 = swift_allocError();
      *v12 = v6;
      *(v12 + 8) = v7;
      swift_willThrow();
    }

    else
    {

      lazy protocol witness table accessor for type PhotosGridQuickLookDataSource.MediaPreviewItemFetcher.FetchError and conformance PhotosGridQuickLookDataSource.MediaPreviewItemFetcher.FetchError(v16, v17, v18);
      v11 = swift_allocError();
      *v19 = 6;
      *(v19 + 8) = 1;
      swift_willThrow();
    }

    *(v0 + 176) = v11;
    v20 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    if (swift_dynamicCast())
    {

      v21 = *(v0 + 144);
      v22 = *(v0 + 152);
      lazy protocol witness table accessor for type PhotosGridQuickLookDataSource.MediaPreviewItemFetcher.FetchError and conformance PhotosGridQuickLookDataSource.MediaPreviewItemFetcher.FetchError(v23, v24, v25);
      swift_allocError();
      *v26 = v21;
      *(v26 + 8) = v22;
      swift_willThrow();
      v27 = *(v0 + 176);
    }

    else
    {

      lazy protocol witness table accessor for type PhotosGridQuickLookDataSource.MediaPreviewItemFetcher.FetchError and conformance PhotosGridQuickLookDataSource.MediaPreviewItemFetcher.FetchError(v28, v29, v30);
      swift_allocError();
      *v31 = 4;
      *(v31 + 8) = 1;
      swift_willThrow();
      v27 = v11;
    }

    v15 = *(v0 + 8);
  }

  else
  {
    v14 = *(v0 + 272);
    v13 = *(v0 + 280);

    v15 = *(v0 + 8);
  }

  return v15();
}

uint64_t PhotosGridQuickLookDataSource.MediaPreviewItemFetcher.handleExportedFiles(at:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v42 = a2;
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v2 + 136);
  v10 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  v9();

  v11 = Logger.detailsPhotos.unsafeMutableAddressor();
  v43 = v6;
  (*(v6 + 16))(v8, v11, v5);
  swift_retain_n();
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v41 = a1;
    v15 = v14;
    v40 = swift_slowAlloc();
    v44 = v40;
    *v15 = 136315394;
    v16 = [*(v3 + 112) localIdentifier];
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v39 = v13;
    v18 = v17;
    v20 = v19;

    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v20, &v44);

    *(v15 + 4) = v21;
    *(v15 + 12) = 2048;
    v22 = *(v3 + 128);

    *(v15 + 14) = v22;

    v23 = v40;
    __swift_destroy_boxed_opaque_existential_0(v40);
    MEMORY[0x193AEBB30](v23, -1, -1);
    v24 = v15;
    a1 = v41;
    MEMORY[0x193AEBB30](v24, -1, -1);
  }

  else
  {
  }

  (*(v43 + 8))(v8, v5);
  v25 = *(v3 + 112);
  v26 = [v25 playbackStyle];
  if ((v26 - 1) < 2)
  {
    if (!*(a1 + 16))
    {
      goto LABEL_15;
    }

    v27 = MEMORY[0x1E6978B98];
  }

  else if ((v26 - 4) >= 2)
  {
    if (v26 != 3 || !*(a1 + 16))
    {
      goto LABEL_15;
    }

    v27 = MEMORY[0x1E6978B88];
  }

  else
  {
    if (!*(a1 + 16))
    {
      goto LABEL_15;
    }

    v27 = MEMORY[0x1E6978BA0];
  }

  v28 = specialized __RawDictionaryStorage.find<A>(_:)(*v27);
  if (v29)
  {
    v30 = v28;
    v31 = *(a1 + 56);
    v32 = type metadata accessor for URL();
    return (*(*(v32 - 8) + 16))(v42, v31 + *(*(v32 - 8) + 72) * v30, v32);
  }

LABEL_15:
  v34 = [v25 playbackStyle];
  lazy protocol witness table accessor for type PhotosGridQuickLookDataSource.MediaPreviewItemFetcher.FetchError and conformance PhotosGridQuickLookDataSource.MediaPreviewItemFetcher.FetchError(v34, v35, v36);
  swift_allocError();
  *v37 = v34;
  *(v37 + 8) = 0;
  return swift_willThrow();
}

void *PhotosGridQuickLookDataSource.MediaPreviewItemFetcher.assetExportRequestOptions()()
{
  v1 = v0;
  v134 = *MEMORY[0x1E69E9840];
  v128 = type metadata accessor for URL.DirectoryHint();
  v2 = *(v128 - 8);
  MEMORY[0x1EEE9AC00](v128);
  v127 = &v109 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for URL();
  v130 = *(v4 - 1);
  MEMORY[0x1EEE9AC00](v4);
  v121 = &v109 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v115 = &v109 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v129 = &v109 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v109 - v11;
  v13 = type metadata accessor for Logger();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v123 = &v109 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v109 - v17;
  v19 = Logger.detailsPhotos.unsafeMutableAddressor();
  v20 = *(v14 + 16);
  v118 = v19;
  v119 = v14 + 16;
  v117 = v20;
  (v20)(v18);
  swift_retain_n();
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();
  v23 = os_log_type_enabled(v21, v22);
  v131 = v1;
  v126 = v13;
  v124 = v14;
  if (v23)
  {
    v24 = swift_slowAlloc();
    v125 = swift_slowAlloc();
    v132 = v125;
    *v24 = 136315394;
    v25 = [*(v1 + 112) localIdentifier];
    v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    LODWORD(v122) = v22;
    v27 = v2;
    v28 = v12;
    v29 = v4;
    v31 = v30;

    v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v31, &v132);
    v4 = v29;
    v12 = v28;
    v2 = v27;

    *(v24 + 4) = v32;
    *(v24 + 12) = 2048;
    v33 = *(v131 + 128);

    *(v24 + 14) = v33;
    v1 = v131;

    v34 = v125;
    __swift_destroy_boxed_opaque_existential_0(v125);
    MEMORY[0x193AEBB30](v34, -1, -1);
    MEMORY[0x193AEBB30](v24, -1, -1);

    v120 = *(v124 + 8);
    v120(v18, v126);
  }

  else
  {

    v120 = *(v14 + 8);
    v120(v18, v13);
  }

  if (one-time initialization token for cachesDirectoryURL != -1)
  {
    swift_once();
  }

  v35 = __swift_project_value_buffer(v4, static PhotosGridQuickLookDataSource.PreviewsCache.cachesDirectoryURL);
  v36 = *(v130 + 16);
  v125 = v4;
  v116 = v36;
  v36(v12, v35, v4);
  v122 = *(v1 + 112);
  v37 = [v122 uuid];
  if (!v37)
  {
    __break(1u);
  }

  v38 = v37;
  v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v41 = v40;

  v132 = v39;
  v133 = v41;
  v42 = *(v2 + 104);
  v43 = v127;
  v113 = *MEMORY[0x1E6968F58];
  v44 = v128;
  v112 = v42;
  v45 = v42(v127);
  v111 = lazy protocol witness table accessor for type String and conformance String(v45, v46, v47);
  URL.appending<A>(path:directoryHint:)();
  v48 = *(v2 + 8);
  v114 = v2 + 8;
  v110 = v48;
  v48(v43, v44);

  v49 = objc_opt_self();
  v50 = [v49 defaultManager];
  countAndFlagsBits = URL.path(percentEncoded:)(0)._countAndFlagsBits;
  v52 = MEMORY[0x193AEA8E0](countAndFlagsBits);

  LODWORD(v38) = [v50 fileExistsAtPath_];

  v54 = [v49 defaultManager];
  if (v38)
  {
    URL._bridgeToObjectiveC()(v53);
    v56 = v55;
    v132 = 0;
    v57 = [v54 removeItemAtURL:v55 error:&v132];

    v58 = v132;
    if ((v57 & 1) == 0)
    {
LABEL_9:
      v59 = v58;
      v60 = _convertNSErrorToError(_:)();

      v127 = v60;
      swift_willThrow();
      v61 = v123;
      v62 = v126;
      v117(v123, v118, v126);
      v63 = v121;
      v128 = v12;
      v64 = v125;
      v116(v121, v12, v125);
      v65 = v131;
      swift_retain_n();
      v66 = Logger.logObject.getter();
      v67 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v66, v67))
      {
        v68 = v63;
        v69 = swift_slowAlloc();
        v119 = swift_slowAlloc();
        v132 = v119;
        *v69 = 136315650;
        lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
        v70 = dispatch thunk of CustomStringConvertible.description.getter();
        v72 = v71;
        LODWORD(v118) = v67;
        v73 = *(v130 + 8);
        v73(v68, v64);
        v74 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v70, v72, &v132);

        *(v69 + 4) = v74;
        *(v69 + 12) = 2080;
        v75 = [v122 localIdentifier];
        v76 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v78 = v77;

        v79 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v76, v78, &v132);
        v64 = v125;

        *(v69 + 14) = v79;
        *(v69 + 22) = 2048;
        v80 = *(v65 + 128);

        *(v69 + 24) = v80;

        v81 = v119;
        swift_arrayDestroy();
        MEMORY[0x193AEBB30](v81, -1, -1);
        MEMORY[0x193AEBB30](v69, -1, -1);

        v82 = v123;
        v83 = v126;
      }

      else
      {

        v73 = *(v130 + 8);
        v73(v63, v64);
        v82 = v61;
        v83 = v62;
      }

      v104 = (v120)(v82, v83);
      v105 = v129;
      lazy protocol witness table accessor for type PhotosGridQuickLookDataSource.MediaPreviewItemFetcher.FetchError and conformance PhotosGridQuickLookDataSource.MediaPreviewItemFetcher.FetchError(v104, v106, v107);
      swift_allocError();
      *v108 = 5;
      *(v108 + 8) = 1;
      swift_willThrow();

      v73(v105, v64);
      v73(v128, v64);
      return v64;
    }
  }

  else
  {
    URL._bridgeToObjectiveC()(v53);
    v85 = v84;
    v132 = 0;
    v86 = [v54 createDirectoryAtURL:v84 withIntermediateDirectories:1 attributes:0 error:&v132];

    v58 = v132;
    if (!v86)
    {
      goto LABEL_9;
    }
  }

  v87 = v58;
  v64 = [objc_allocWithZone(MEMORY[0x1E69786B0]) init];
  v88 = v122;
  [v64 setShouldExportUnmodifiedOriginalResources_];
  [v64 setTreatLivePhotoAsStill_];
  [v64 setShouldBundleComplexAssetResources_];
  [v64 setVariant_];
  result = [v88 uuid];
  if (result)
  {
    v90 = result;
    v91 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v93 = v92;

    v132 = v91;
    v133 = v93;
    v95 = v127;
    v94 = v128;
    v112(v127, v113, v128);
    v96 = v115;
    v97 = v129;
    URL.appending<A>(path:directoryHint:)();
    v110(v95, v94);

    URL._bridgeToObjectiveC()(v98);
    v100 = v99;
    v101 = *(v130 + 8);
    v102 = v96;
    v103 = v125;
    v101(v102, v125);
    [v64 setCustomOutputDirectory_];

    [v64 setOverwriteExistingFilesInOutputDirectory_];
    v101(v97, v103);
    v101(v12, v103);
    return v64;
  }

  __break(1u);
  return result;
}

uint64_t PhotosGridQuickLookDataSource.MediaPreviewItemFetcher.__deallocating_deinit()
{

  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t protocol witness for Hashable.hashValue.getter in conformance PHAssetExportRequestFileURLKey()
{
  v0 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v1 = MEMORY[0x193AEA990](v0);

  return v1;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PHAssetExportRequestFileURLKey(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PHAssetExportRequestFileURLKey(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v1 = Hasher._finalize()();

  return v1;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._forceBridgeFromObjectiveC(_:result:) in conformance PHAssetExportRequestFileURLKey(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._conditionallyBridgeFromObjectiveC(_:result:) in conformance PHAssetExportRequestFileURLKey(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._unconditionallyBridgeFromObjectiveC(_:) in conformance PHAssetExportRequestFileURLKey@<X0>(uint64_t *a2@<X8>)
{
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = MEMORY[0x193AEA8E0](v3);

  *a2 = v4;
  return result;
}

void *protocol witness for RawRepresentable.init(rawValue:) in conformance PHAssetPlaybackStyle@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance PHAssetExportRequestFileURLKey(void *a1, uint64_t *a2)
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

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance PHAssetExportRequestFileURLKey@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = MEMORY[0x193AEA8E0](*a1, a1[1]);

  *a2 = v3;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance PHAssetExportRequestFileURLKey@<X0>(uint64_t *a1@<X8>)
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance PHAssetExportRequestFileURLKey(uint64_t a1)
{
  lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type PHAssetExportRequestFileURLKey and conformance PHAssetExportRequestFileURLKey, type metadata accessor for PHAssetExportRequestFileURLKey, &protocol conformance descriptor for PHAssetExportRequestFileURLKey);
  lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type PHAssetExportRequestFileURLKey and conformance PHAssetExportRequestFileURLKey, type metadata accessor for PHAssetExportRequestFileURLKey, &protocol conformance descriptor for PHAssetExportRequestFileURLKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TQ0__2()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a4 & 1);
      v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return MEMORY[0x1EEE66BB8]();
      }
    }

    else
    {
      v19 = v11;
      specialized _NativeDictionary.copy()();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    return MEMORY[0x1EEE66BB8]();
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v22 = (v21[6] + 16 * v11);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v24;
}

{
  v5 = v4;
  v10 = *v4;
  v12 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v14 = v10[2];
  v15 = (v11 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v11;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      specialized _NativeDictionary.copy()(v13);
      goto LABEL_7;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a4 & 1, v13);
    v27 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    if ((v17 & 1) == (v28 & 1))
    {
      v12 = v27;
      v19 = *v5;
      if (v17)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v19 = *v5;
  if (v17)
  {
LABEL_8:
    v20 = v19[7];
    v21 = type metadata accessor for CNContactHeaderQuickActionsGroupAction();
    v22 = *(v21 - 8);
    v23 = *(v22 + 40);
    v24 = v21;
    v25 = v20 + *(v22 + 72) * v12;

    return v23(v25, a1, v24);
  }

LABEL_13:
  specialized _NativeDictionary._insert(at:key:value:)(v12, a2, a3, a1, v19, v13);
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_20CommunicationDetails29PhotosGridQuickLookDataSourceC16MediaPreviewItemCTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS20CommunicationDetails29PhotosGridQuickLookDataSourceC16MediaPreviewItemCGMd, &_ss18_DictionaryStorageCySS20CommunicationDetails29PhotosGridQuickLookDataSourceC16MediaPreviewItemCGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t partial apply for closure #1 in PhotosGridQuickLookDataSource.PreviewsCache.reset()()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = partial apply for closure #1 in PhotosGridQuickLookDataSource.PreviewsCache.reset();

  return closure #1 in PhotosGridQuickLookDataSource.PreviewsCache.reset()();
}

{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t outlined assign with take of URL?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

double block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

double outlined consume of Data._Representation(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }

  return result;
}

uint64_t type metadata accessor for PhotosGridQuickLookDataSource.MediaPreviewItem(uint64_t a1)
{
  result = type metadata singleton initialization cache for PhotosGridQuickLookDataSource.MediaPreviewItem;
  if (!type metadata singleton initialization cache for PhotosGridQuickLookDataSource.MediaPreviewItem)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for PhotosGridQuickLookDataSource.MediaPreviewItem(uint64_t a1)
{
  type metadata accessor for URL?(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for URL?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for URL?)
  {
    type metadata accessor for URL();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for URL?);
    }
  }
}

unint64_t lazy protocol witness table accessor for type PhotosGridQuickLookDataSource.MediaPreviewItemFetcher.FetchError and conformance PhotosGridQuickLookDataSource.MediaPreviewItemFetcher.FetchError(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type PhotosGridQuickLookDataSource.MediaPreviewItemFetcher.FetchError and conformance PhotosGridQuickLookDataSource.MediaPreviewItemFetcher.FetchError;
  if (!lazy protocol witness table cache variable for type PhotosGridQuickLookDataSource.MediaPreviewItemFetcher.FetchError and conformance PhotosGridQuickLookDataSource.MediaPreviewItemFetcher.FetchError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhotosGridQuickLookDataSource.MediaPreviewItemFetcher.FetchError and conformance PhotosGridQuickLookDataSource.MediaPreviewItemFetcher.FetchError);
  }

  return result;
}

id specialized @nonobjc PHAssetExportRequest.__allocating_init(for:)(uint64_t a1)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  v1 = [swift_getObjCClassFromMetadata() exportRequestForAsset:a1 error:v5];
  if (v1)
  {
    v2 = v5[0];
  }

  else
  {
    v3 = v5[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v1;
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
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

uint64_t type metadata accessor for NSNumber(uint64_t a1, unint64_t *a2, void *a3)
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

unint64_t lazy protocol witness table accessor for type PhotosGridQuickLookDataSource.MediaPreviewItemFetcher and conformance PhotosGridQuickLookDataSource.MediaPreviewItemFetcher()
{
  result = lazy protocol witness table cache variable for type PhotosGridQuickLookDataSource.MediaPreviewItemFetcher and conformance PhotosGridQuickLookDataSource.MediaPreviewItemFetcher;
  if (!lazy protocol witness table cache variable for type PhotosGridQuickLookDataSource.MediaPreviewItemFetcher and conformance PhotosGridQuickLookDataSource.MediaPreviewItemFetcher)
  {
    type metadata accessor for PhotosGridQuickLookDataSource.MediaPreviewItemFetcher();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhotosGridQuickLookDataSource.MediaPreviewItemFetcher and conformance PhotosGridQuickLookDataSource.MediaPreviewItemFetcher);
  }

  return result;
}

uint64_t outlined init with take of URL?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in PhotosGridQuickLookDataSource.MediaPreviewItemFetcher.getVideoURL()()
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy10Foundation3URLVs5Error_pGMd, &_sScCy10Foundation3URLVs5Error_pGMR) - 8);
  v6 = (v3 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = *(v0 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = partial apply for closure #1 in closure #1 in closure #1 in PhotosGridQuickLookDataSource.MediaPreviewItemFetcher.getVideoURL();

  return closure #1 in closure #1 in closure #1 in PhotosGridQuickLookDataSource.MediaPreviewItemFetcher.getVideoURL()(v8, v9, v10, v0 + v3, v0 + v6, v7);
}

uint64_t outlined init with copy of URL?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t objectdestroy_28Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy10Foundation3URLVs5Error_pGMd, &_sScCy10Foundation3URLVs5Error_pGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

double partial apply for closure #1 in closure #1 in PhotosGridQuickLookDataSource.MediaPreviewItemFetcher.getVideoURL()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy10Foundation3URLVs5Error_pGMd, &_sScCy10Foundation3URLVs5Error_pGMR) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  return closure #1 in closure #1 in PhotosGridQuickLookDataSource.MediaPreviewItemFetcher.getImageURL()(a1, v4 + v9, *(v4 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8)), a3, a4);
}

uint64_t objectdestroy_34Tm_0()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy10Foundation3URLVs5Error_pGMd, &_sScCy10Foundation3URLVs5Error_pGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = *(v6 + 64);
  swift_unknownObjectRelease();
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v0 + v3, 1, v9))
  {
    (*(v10 + 8))(v0 + v3, v9);
  }

  v11 = (v3 + v4 + v7) & ~v7;
  v12 = (v8 + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v6 + 8))(v0 + v11, v5);

  return MEMORY[0x1EEE6BDD0](v0, v12 + 8, v2 | v7 | 7);
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in PhotosGridQuickLookDataSource.MediaPreviewItemFetcher.getImageURL()()
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy10Foundation3URLVs5Error_pGMd, &_sScCy10Foundation3URLVs5Error_pGMR) - 8);
  v6 = (v3 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = *(v0 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = partial apply for closure #1 in closure #1 in closure #1 in PhotosGridQuickLookDataSource.MediaPreviewItemFetcher.getImageURL();

  return closure #1 in closure #1 in closure #1 in PhotosGridQuickLookDataSource.MediaPreviewItemFetcher.getImageURL()(v8, v9, v10, v0 + v3, v0 + v6, v7);
}

uint64_t outlined destroy of TaskPriority?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t partial apply for closure #1 in PhotosGridQuickLookDataSource.item(at:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in PhotosGridQuickLookDataSource.item(at:);

  return closure #1 in PhotosGridQuickLookDataSource.item(at:)(a1, v4, v5, v7, v6);
}

uint64_t partial apply for closure #1 in PhotosGridQuickLookDataSource.item(at:)()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t objectdestroy_3Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in PhotosGridQuickLookDataSource.item(at:)()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = partial apply for closure #1 in closure #1 in closure #1 in PhotosGridQuickLookDataSource.item(at:);

  return closure #1 in closure #1 in closure #1 in PhotosGridQuickLookDataSource.item(at:)(v4, v5, v6, v2, v3);
}

double outlined consume of (@escaping @callee_guaranteed @Sendable (@guaranteed NSSecureCoding?, @guaranteed Error?) -> ())?(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
  }

  return result;
}

uint64_t partial apply for closure #1 in closure #1 in PhotosGridQuickLookDataSource.MediaPreviewItem.setFetchHandler(_:)()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[8];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = partial apply for closure #1 in closure #1 in PhotosGridQuickLookDataSource.MediaPreviewItem.setFetchHandler(_:);

  return closure #1 in closure #1 in PhotosGridQuickLookDataSource.MediaPreviewItem.setFetchHandler(_:)(v7, v8, v9, v2, v3, v4, v5, v6);
}

double outlined copy of (@escaping @callee_guaranteed @Sendable (@guaranteed NSSecureCoding?, @guaranteed Error?) -> ())?(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PhotosGridQuickLookDataSource.MediaPreviewItemFetcher.FetchError(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for PhotosGridQuickLookDataSource.MediaPreviewItemFetcher.FetchError(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
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

  *(result + 9) = v3;
  return result;
}

uint64_t getEnumTag for PhotosGridQuickLookDataSource.MediaPreviewItemFetcher.FetchError(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t destructiveInjectEnumTag for PhotosGridQuickLookDataSource.MediaPreviewItemFetcher.FetchError(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

void type metadata accessor for PHAssetExportRequestFileURLKey(uint64_t a1, unint64_t *a2, uint64_t a3)
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

double key path getter for EditToolbarItem.selectedTab : EditToolbarItem@<D0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy20CommunicationDetails0E3TabVSgGMd, &_s7SwiftUI7BindingVy20CommunicationDetails0E3TabVSgGMR);
  MEMORY[0x193AEA550](v6, v2);
  v3 = v7;
  result = *v6;
  v5 = v6[1];
  *a1 = v6[0];
  *(a1 + 16) = v5;
  *(a1 + 32) = v3;
  return result;
}

void key path setter for EditToolbarItem.selectedTab : EditToolbarItem(uint64_t *a1, uint64_t *a2)
{
  v2 = a2[2];
  v3 = a2[3];
  v4 = a2[4];
  v5 = a2[5];
  v6 = a2[6];
  outlined copy of DetailsTab?(*a1, a1[1], a1[2], a1[3], a1[4]);

  outlined copy of DetailsTab?(v2, v3, v4, v5, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy20CommunicationDetails0E3TabVSgGMd, &_s7SwiftUI7BindingVy20CommunicationDetails0E3TabVSgGMR);
  Binding.wrappedValue.setter();

  outlined consume of DetailsTab?(v2, v3, v4, v5, v6);
}

void EditToolbarItem.selectedTab.setter(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];

  outlined copy of DetailsTab?(v2, v3, v4, v5, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy20CommunicationDetails0E3TabVSgGMd, &_s7SwiftUI7BindingVy20CommunicationDetails0E3TabVSgGMR);
  Binding.wrappedValue.setter();

  outlined consume of DetailsTab?(v2, v3, v4, v5, v6);
}

void (*EditToolbarItem.selectedTab.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x100uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *v1;
  v6 = v1[1];
  v4[24] = *v1;
  v4[25] = v6;
  v7 = v1[2];
  v8 = v1[3];
  v4[26] = v7;
  v4[27] = v8;
  v9 = v1[4];
  v10 = v1[5];
  v4[28] = v9;
  v4[29] = v10;
  v11 = v1[6];
  v4[30] = v11;
  *v4 = v5;
  v4[1] = v6;
  v4[2] = v7;
  v4[3] = v8;
  v4[4] = v9;
  v4[5] = v10;
  v4[6] = v11;

  outlined copy of DetailsTab?(v7, v8, v9, v10, v11);
  v4[31] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy20CommunicationDetails0E3TabVSgGMd, &_s7SwiftUI7BindingVy20CommunicationDetails0E3TabVSgGMR);
  MEMORY[0x193AEA550]();
  return EditToolbarItem.selectedTab.modify;
}

void EditToolbarItem.selectedTab.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 224);
  *(v3 + 9) = *(*a1 + 208);
  v5 = v3[25];
  v3[7] = v3[24];
  v6 = v3[14];
  v3[19] = v6;
  v7 = v3[15];
  v8 = v3[16];
  v9 = v3[17];
  v10 = v3[18];
  v11 = v3[30];
  v3[8] = v5;
  *(v3 + 11) = v4;
  v3[13] = v11;
  v3[20] = v7;
  v3[21] = v8;
  v3[22] = v9;
  v3[23] = v10;
  if (a2)
  {
    outlined copy of DetailsTab?(v6, v7, v8, v9, v10);
    Binding.wrappedValue.setter();
    v12 = v3[9];
    v13 = v3[10];
    v14 = v3[11];
    v15 = v3[12];
    v16 = v3[13];

    outlined consume of DetailsTab?(v12, v13, v14, v15, v16);
    v17 = v3[14];
    v18 = v3[15];
    v19 = v3[16];
    v20 = v3[17];
    v21 = v3[18];
  }

  else
  {
    Binding.wrappedValue.setter();
    v22 = v3[9];
    v23 = v3[10];
    v24 = v3[11];
    v25 = v3[12];
    v26 = v3[13];

    v17 = v22;
    v18 = v23;
    v19 = v24;
    v20 = v25;
    v21 = v26;
  }

  outlined consume of DetailsTab?(v17, v18, v19, v20, v21);

  free(v3);
}

uint64_t EditToolbarItem.init(selectedTab:defaultEditActions:handler:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *a1;
  v10 = a1[1];
  v11 = a1[6];
  *(a5 + 88) = 0;
  swift_unknownObjectWeakInit();
  *a5 = v9;
  *(a5 + 8) = v10;
  v12 = *(a1 + 2);
  *(a5 + 16) = *(a1 + 1);
  *(a5 + 32) = v12;
  *(a5 + 48) = v11;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay20CommunicationDetails10EditActionOGMd, &_sSay20CommunicationDetails10EditActionOGMR);
  State.init(wrappedValue:)();
  *(a5 + 56) = v14;
  *(a5 + 64) = v15;
  *(a5 + 72) = a2;
  *(a5 + 88) = a4;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t EditToolbarItem.body.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4MenuVyAA4TextVAA7ForEachVySay20CommunicationDetails10EditActionOGAjA6ButtonVyAA5LabelVyAeA5ImageVGGGGMd, &_s7SwiftUI4MenuVyAA4TextVAA7ForEachVySay20CommunicationDetails10EditActionOGAjA6ButtonVyAA5LabelVyAeA5ImageVGGGGMR);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v15[-v3];
  v5._countAndFlagsBits = 1953064005;
  v5._object = 0xE400000000000000;
  v17[0] = LocalizedString(_:)(v5);
  v16 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7ForEachVySay20CommunicationDetails10EditActionOGAfA6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGGMd, &_s7SwiftUI7ForEachVySay20CommunicationDetails10EditActionOGAfA6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGGMR);
  v6 = lazy protocol witness table accessor for type ForEach<[EditAction], EditAction, Button<Label<Text, Image>>> and conformance <> ForEach<A, B, C>();
  lazy protocol witness table accessor for type String and conformance String(v6, v7, v8);
  Menu.init<A>(_:content:)();
  v9 = *(v0 + 8);
  v10 = *(v0 + 48);
  v17[0]._countAndFlagsBits = *v0;
  v17[0]._object = v9;
  v11 = *(v0 + 32);
  v17[1] = *(v0 + 16);
  v17[2] = v11;
  v18 = v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy20CommunicationDetails0E3TabVSgGMd, &_s7SwiftUI7BindingVy20CommunicationDetails0E3TabVSgGMR);
  MEMORY[0x193AEA550](v22, v12);
  v19 = v22[0];
  v20 = v22[1];
  v21 = v23;
  outlined init with copy of EditToolbarItem(v0, v17);
  v13 = swift_allocObject();
  outlined init with take of EditToolbarItem(v17, v13 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s20CommunicationDetails0B3TabVSgMd, &_s20CommunicationDetails0B3TabVSgMR);
  lazy protocol witness table accessor for type Button<Label<Text, Image>> and conformance Button<A>(&lazy protocol witness table cache variable for type Menu<Text, ForEach<[EditAction], EditAction, Button<Label<Text, Image>>>> and conformance Menu<A, B>, &_s7SwiftUI4MenuVyAA4TextVAA7ForEachVySay20CommunicationDetails10EditActionOGAjA6ButtonVyAA5LabelVyAeA5ImageVGGGGMd, &_s7SwiftUI4MenuVyAA4TextVAA7ForEachVySay20CommunicationDetails10EditActionOGAjA6ButtonVyAA5LabelVyAeA5ImageVGGGGMR, MEMORY[0x1E697CD28]);
  lazy protocol witness table accessor for type DetailsTab? and conformance <A> A?();
  View.onChange<A>(of:initial:_:)();

  outlined consume of DetailsTab?(v19, *(&v19 + 1), v20, *(&v20 + 1), v21);
  return (*(v2 + 8))(v4, v1);
}

double partial apply for closure #1 in EditToolbarItem.body.getter()
{
  v1 = *(v0 + 16);
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = *(v1 + 64);
  v8[0] = *(v1 + 56);
  v8[1] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySay20CommunicationDetails10EditActionOGGMd, &_s7SwiftUI5StateVySay20CommunicationDetails10EditActionOGGMR);
  State.wrappedValue.getter();
  swift_getKeyPath();
  outlined init with copy of EditToolbarItem(v1, v8);
  v3 = swift_allocObject();
  outlined init with take of EditToolbarItem(v8, v3 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay20CommunicationDetails10EditActionOGMd, &_sSay20CommunicationDetails10EditActionOGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGMd, &_s7SwiftUI6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGMR);
  v4 = lazy protocol witness table accessor for type Button<Label<Text, Image>> and conformance Button<A>(&lazy protocol witness table cache variable for type [EditAction] and conformance [A], &_sSay20CommunicationDetails10EditActionOGMd, &_sSay20CommunicationDetails10EditActionOGMR, MEMORY[0x1E69E6338]);
  lazy protocol witness table accessor for type EditAction and conformance EditAction(v4, v5, v6);
  lazy protocol witness table accessor for type Button<Label<Text, Image>> and conformance Button<A>(&lazy protocol witness table cache variable for type Button<Label<Text, Image>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGMd, &_s7SwiftUI6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGMR, MEMORY[0x1E697D680]);
  ForEach<>.init(_:id:content:)();

  return result;
}

unint64_t lazy protocol witness table accessor for type ForEach<[EditAction], EditAction, Button<Label<Text, Image>>> and conformance <> ForEach<A, B, C>()
{
  result = lazy protocol witness table cache variable for type ForEach<[EditAction], EditAction, Button<Label<Text, Image>>> and conformance <> ForEach<A, B, C>;
  if (!lazy protocol witness table cache variable for type ForEach<[EditAction], EditAction, Button<Label<Text, Image>>> and conformance <> ForEach<A, B, C>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI7ForEachVySay20CommunicationDetails10EditActionOGAfA6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGGMd, &_s7SwiftUI7ForEachVySay20CommunicationDetails10EditActionOGAfA6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGGMR);
    lazy protocol witness table accessor for type Button<Label<Text, Image>> and conformance Button<A>(&lazy protocol witness table cache variable for type Button<Label<Text, Image>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGMd, &_s7SwiftUI6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGMR, MEMORY[0x1E697D680]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ForEach<[EditAction], EditAction, Button<Label<Text, Image>>> and conformance <> ForEach<A, B, C>);
  }

  return result;
}

uint64_t closure #1 in closure #1 in EditToolbarItem.body.getter(__int128 *a1, uint64_t a2)
{
  v5 = a1[1];
  v21 = *a1;
  v22 = v5;
  v23 = a1[2];
  v24 = *(a1 + 48);
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = a1[1];
  v17 = *a1;
  v18 = v6;
  v19 = a1[2];
  v20 = *(a1 + 48);
  v7 = EditAction.title.getter();
  v9 = v8;
  v15[6] = v21;
  v15[7] = v22;
  v15[8] = v23;
  v16 = v24;
  EditAction.imageName.getter();
  outlined init with copy of EditToolbarItem(a2, v15);
  v10 = swift_allocObject();
  v11 = v22;
  *(v10 + 16) = v21;
  *(v10 + 32) = v11;
  *(v10 + 48) = v23;
  *(v10 + 64) = v24;
  v12 = outlined init with take of EditToolbarItem(v15, v10 + 72);
  v14[7] = v7;
  v14[8] = v9;
  MEMORY[0x1EEE9AC00](v12);
  outlined init with copy of EditAction(&v21, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5LabelVyAA4TextVAA5ImageVGMd, &_s7SwiftUI5LabelVyAA4TextVAA5ImageVGMR);
  lazy protocol witness table accessor for type Button<Label<Text, Image>> and conformance Button<A>(&lazy protocol witness table cache variable for type Label<Text, Image> and conformance Label<A, B>, &_s7SwiftUI5LabelVyAA4TextVAA5ImageVGMd, &_s7SwiftUI5LabelVyAA4TextVAA5ImageVGMR, MEMORY[0x1E697D658]);
  Button.init(action:label:)();
}

double partial apply for closure #2 in EditToolbarItem.body.getter(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  v5 = a2[2];
  v4 = a2[3];
  v6 = a2[4];
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (!v2)
  {
    goto LABEL_7;
  }

  v7 = *(*v5 + 136);

  if ((v7(v8) & 1) == 0)
  {
    outlined consume of DetailsTab?(v3, v2, v5, v4, v6);
LABEL_7:

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySay20CommunicationDetails10EditActionOGGMd, &_s7SwiftUI5StateVySay20CommunicationDetails10EditActionOGGMR);
    State.wrappedValue.setter();
    goto LABEL_8;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy20CommunicationDetails10EditActionOGMd, &_ss23_ContiguousArrayStorageCy20CommunicationDetails10EditActionOGMR);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1901E6CD0;
  *(v9 + 32) = v3;
  *(v9 + 40) = v2;
  *(v9 + 48) = v5;
  *(v9 + 56) = v4;
  *(v9 + 64) = v6;
  *(v9 + 72) = 0;
  *(v9 + 80) = 0;
  outlined copy of DetailsTab?(v3, v2, v5, v4, v6);
  outlined copy of DetailsTab?(v3, v2, v5, v4, v6);

  specialized Array.append<A>(contentsOf:)(v10);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySay20CommunicationDetails10EditActionOGGMd, &_s7SwiftUI5StateVySay20CommunicationDetails10EditActionOGGMR);
  State.wrappedValue.setter();
  outlined consume of DetailsTab?(v3, v2, v5, v4, v6);
  outlined consume of DetailsTab?(v3, v2, v5, v4, v6);

LABEL_8:

  return result;
}

uint64_t getEnumTagSinglePayload for EditToolbarItem(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t storeEnumTagSinglePayload for EditToolbarItem(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

char *specialized Array.append<A>(contentsOf:)(char *result)
{
  v2 = *(result + 2);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 3) >> 1)
  {
    if (*(v6 + 2))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 2))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 3) >> 1) - *(v3 + 2) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 2);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 2) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t objectdestroyTm_4()
{

  if (*(v0 + 40))
  {
  }

  MEMORY[0x193AEBC30](v0 + 96);

  return MEMORY[0x1EEE6BDD0](v0, 112, 7);
}

double partial apply for closure #1 in closure #1 in closure #1 in EditToolbarItem.body.getter()
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  EditAction.execute(with:)(Strong, *(v0 + 160));
  swift_unknownObjectRelease();

  return result;
}

uint64_t lazy protocol witness table accessor for type Button<Label<Text, Image>> and conformance Button<A>(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t key path getter for Header.HeaderView.delegate : Header.HeaderView@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xE8))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t key path setter for Header.HeaderView.delegate : Header.HeaderView(uint64_t a1, void **a2)
{
  v2 = *(a1 + 8);
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0xF0);
  v4 = swift_unknownObjectRetain();
  return v3(v4, v2);
}

uint64_t Header.HeaderView.delegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtCV20CommunicationDetails6Header10HeaderView_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*Header.HeaderView.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtCV20CommunicationDetails6Header10HeaderView_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return Header.HeaderView.delegate.modify;
}

void Header.HeaderView.delegate.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t key path getter for Header.HeaderView.horizontalTabsViewModel : Header.HeaderView@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x148))();
  *a2 = result;
  return result;
}

uint64_t key path setter for Header.HeaderView.horizontalTabsViewModel : Header.HeaderView(void *a1, void **a2)
{
  v2 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x150);

  return v2(v3);
}

double Header.HeaderView.horizontalTabsViewModel.getter()
{
  swift_beginAccess();

  return result;
}

double Header.HeaderView.horizontalTabsViewModel.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCV20CommunicationDetails6Header10HeaderView_horizontalTabsViewModel;
  swift_beginAccess();
  *(v1 + v3) = a1;

  return result;
}