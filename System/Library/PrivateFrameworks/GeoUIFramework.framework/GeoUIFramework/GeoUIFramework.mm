uint64_t sub_24FF70A50()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = type metadata accessor for WhereAmIView(0);
  v7 = *(*(v6 - 1) + 80);
  v8 = (v4 + v5 + v7) & ~v7;
  v9 = *(*(v6 - 1) + 64);
  (*(v2 + 8))(v0 + v4, v1);
  v10 = v0 + v8;

  v11 = v6[6];
  v12 = type metadata accessor for ActionHandler();
  (*(*(v12 - 8) + 8))(v0 + v8 + v11, v12);
  v13 = v6[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOy10Foundation6LocaleV_GMd, &_s7SwiftUI11EnvironmentV7ContentOy10Foundation6LocaleV_GMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = type metadata accessor for Locale();
    (*(*(v14 - 8) + 8))(v10 + v13, v14);
  }

  else
  {
  }

  outlined consume of Environment<VRXIdiom>.Content(*(v10 + v6[9]), *(v10 + v6[9] + 8));

  return MEMORY[0x2821FE8E8](v0, v8 + v9, v3 | v7 | 7);
}

uint64_t sub_24FF70C78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for ActionHandler();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVy10Foundation6LocaleVGMd, &_s7SwiftUI11EnvironmentVy10Foundation6LocaleVGMR);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 32);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_24FF70DA8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for ActionHandler();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVy10Foundation6LocaleVGMd, &_s7SwiftUI11EnvironmentVy10Foundation6LocaleVGMR);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_24FF70F20()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonE0Rd__lFQOy07SnippetB00g9ContainerC0V_AF08RFButtonE0VQo_Md, &_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonE0Rd__lFQOy07SnippetB00g9ContainerC0V_AF08RFButtonE0VQo_MR);
  type metadata accessor for ButtonContainerView();
  type metadata accessor for RFButtonStyle();
  lazy protocol witness table accessor for type ButtonContainerView and conformance ButtonContainerView(&lazy protocol witness table cache variable for type ButtonContainerView and conformance ButtonContainerView, MEMORY[0x277D63D38], MEMORY[0x277D63D20]);
  lazy protocol witness table accessor for type ButtonContainerView and conformance ButtonContainerView(&lazy protocol witness table cache variable for type RFButtonStyle and conformance RFButtonStyle, MEMORY[0x277D63B70], MEMORY[0x277D63B60]);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_24FF71108(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewP08_MapKit_aB0E8mapScopeyQrAA9NamespaceV2IDVFQOyAeAE12onTapGesture5count7performQrSi_yyctFQOy07SnippetB00fE0V_Qo__Qo_AA16_FlexFrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewP08_MapKit_aB0E8mapScopeyQrAA9NamespaceV2IDVFQOyAeAE12onTapGesture5count7performQrSi_yyctFQOy07SnippetB00fE0V_Qo__Qo_AA16_FlexFrameLayoutVGMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24FF71178(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewP08_MapKit_aB0E8mapScopeyQrAA9NamespaceV2IDVFQOyAeAE12onTapGesture5count7performQrSi_yyctFQOy07SnippetB00fE0V_Qo__Qo_AA16_FlexFrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewP08_MapKit_aB0E8mapScopeyQrAA9NamespaceV2IDVFQOyAeAE12onTapGesture5count7performQrSi_yyctFQOy07SnippetB00fE0V_Qo__Qo_AA16_FlexFrameLayoutVGMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24FF711F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 40);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for ActionHandler();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24FF712A4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 40) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for ActionHandler();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24FF71390()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonE0Rd__lFQOy07SnippetB00g9ContainerC0V_AF08RFButtonE0VQo_Md, &_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonE0Rd__lFQOy07SnippetB00g9ContainerC0V_AF08RFButtonE0VQo_MR);
  type metadata accessor for ButtonContainerView();
  type metadata accessor for RFButtonStyle();
  _s9SnippetUI19ButtonContainerViewVAC05SwiftB00E0AAWlTm_0(&lazy protocol witness table cache variable for type ButtonContainerView and conformance ButtonContainerView, MEMORY[0x277D63D38], MEMORY[0x277D63D20]);
  _s9SnippetUI19ButtonContainerViewVAC05SwiftB00E0AAWlTm_0(&lazy protocol witness table cache variable for type RFButtonStyle and conformance RFButtonStyle, MEMORY[0x277D63B70], MEMORY[0x277D63B60]);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_24FF71574(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE12onTapGesture5count7performQrSi_yyctFQOy07SnippetB003MapE0V_Qo_AA16_FlexFrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE12onTapGesture5count7performQrSi_yyctFQOy07SnippetB003MapE0V_Qo_AA16_FlexFrameLayoutVGMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24FF715E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE12onTapGesture5count7performQrSi_yyctFQOy07SnippetB003MapE0V_Qo_AA16_FlexFrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE12onTapGesture5count7performQrSi_yyctFQOy07SnippetB003MapE0V_Qo_AA16_FlexFrameLayoutVGMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24FF71654(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE12onTapGesture5count7performQrSi_yyctFQOy07SnippetB003MapE0V_Qo_AA16_FlexFrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE12onTapGesture5count7performQrSi_yyctFQOy07SnippetB003MapE0V_Qo_AA16_FlexFrameLayoutVGMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24FF716C8()
{
  v1 = (type metadata accessor for ContactDisambiguationView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[9];
  v6 = type metadata accessor for ActionHandler();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_24FF717C8()
{
  v1 = type metadata accessor for PrimaryHeaderRichView();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = v4 + *(v2 + 64);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7ForEachVySay14GeoUIFramework0E7ContactVGAfA4ViewP07SnippetB0E15componentTapped12isNavigation7performQrSb_yyctFQOyAJ014SimpleItemRichH0V_Qo_GMd, &_s7SwiftUI7ForEachVySay14GeoUIFramework0E7ContactVGAfA4ViewP07SnippetB0E15componentTapped12isNavigation7performQrSb_yyctFQOyAJ014SimpleItemRichH0V_Qo_GMR);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v9 + v10, v11 | 7);
}

uint64_t sub_24FF7191C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for ActionHandler();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24FF719C8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for ActionHandler();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24FF71AF4()
{
  v1 = type metadata accessor for PrimaryHeaderRichView();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_24FF71B7C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7ForEachVySay14GeoUIFramework0E7ContactVGAfA4ViewP07SnippetB0E15componentTapped12isNavigation7performQrSb_yyctFQOyAJ014SimpleItemRichH0V_Qo_GMd, &_s7SwiftUI7ForEachVySay14GeoUIFramework0E7ContactVGAfA4ViewP07SnippetB0E15componentTapped12isNavigation7performQrSb_yyctFQOyAJ014SimpleItemRichH0V_Qo_GMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_24FF71C10()
{
  outlined consume of Text.Storage(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_24FF71C54()
{
  v1 = (type metadata accessor for ContactDisambiguationView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = (type metadata accessor for GeoContact(0) - 8);
  v6 = *(*v5 + 80);
  v7 = (v3 + v4 + v6) & ~v6;
  v8 = *(*v5 + 64);
  v9 = v2 | v6;
  v10 = v0 + v3;

  v11 = v1[9];
  v12 = type metadata accessor for ActionHandler();
  (*(*(v12 - 8) + 8))(v10 + v11, v12);

  v13 = v5[12];
  v14 = type metadata accessor for ImageElement.ImageStyle();
  (*(*(v14 - 8) + 8))(v0 + v7 + v13, v14);

  return MEMORY[0x2821FE8E8](v0, v7 + v8, v9 | 7);
}

uint64_t sub_24FF71E1C()
{
  v1 = (type metadata accessor for TrafficDisambiguationView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[9];
  v6 = type metadata accessor for ActionHandler();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  outlined consume of Environment<VRXIdiom>.Content(*(v0 + v3 + v1[11]), *(v0 + v3 + v1[11] + 8));

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_24FF71F44()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7ForEachVySay14GeoUIFramework0E15TrafficIncidentVGAfA4ViewP07SnippetB0E15componentTapped12isNavigation7performQrSb_yyctFQOyAJ014SimpleItemRichI0V_Qo_GMd, &_s7SwiftUI7ForEachVySay14GeoUIFramework0E15TrafficIncidentVGAfA4ViewP07SnippetB0E15componentTapped12isNavigation7performQrSb_yyctFQOyAJ014SimpleItemRichI0V_Qo_GMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_24FF71FE0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for ActionHandler();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24FF7208C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for ActionHandler();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24FF721B8()
{
  v1 = (type metadata accessor for TrafficDisambiguationView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;

  v6 = v1[9];
  v7 = type metadata accessor for ActionHandler();
  (*(*(v7 - 8) + 8))(v5 + v6, v7);

  outlined consume of Environment<VRXIdiom>.Content(*(v5 + v1[11]), *(v5 + v1[11] + 8));

  return MEMORY[0x2821FE8E8](v0, v4 + 48, v2 | 7);
}

uint64_t sub_24FF722F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for ImageElement.ImageStyle();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24FF723A4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 32) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for ImageElement.ImageStyle();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t _s14GeoUIFramework0A10DataModelsO021TrafficDisambiguationC5ModelV10CodingKeys33_882E58619A019CD438BB91EBFDDE66DALLOs0H3KeyAAsAIP11stringValueSSvgTW_0()
{
  if (*v0)
  {
    return 0x74616469646E6163;
  }

  else
  {
    return 0x65546D6574737973;
  }
}

uint64_t WhereAmIView.model.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[3];
  v9 = v1[2];
  v10 = v2;
  v11 = v1[4];
  v3 = v11;
  v4 = v1[1];
  v8[0] = *v1;
  v5 = v8[0];
  v8[1] = v4;
  a1[2] = v9;
  a1[3] = v2;
  a1[4] = v3;
  *a1 = v5;
  a1[1] = v4;
  return outlined init with copy of GeoDataModels.WhereAmIDataModel(v8, &v7);
}

uint64_t WhereAmIView.mapView.getter()
{
  v0 = type metadata accessor for MapAspectRatio();
  MEMORY[0x28223BE20](v0);
  (*(v2 + 104))(&v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D63BC8]);
  return MapView.init(markers:annotations:mapItemIdentifiers:polyline:aspectRatio:cameraDistance:showsUserLocation:)();
}

uint64_t WhereAmIView.shareButton.getter@<X0>(uint64_t a1@<X8>)
{
  v76 = a1;
  v2 = type metadata accessor for SeparatorStyle();
  v77 = *(v2 - 8);
  v78 = v2;
  MEMORY[0x28223BE20](v2);
  v75 = &v59 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = type metadata accessor for RFButtonStyle();
  v70 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v69 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = type metadata accessor for ButtonContainerView();
  v68 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v66 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonE0Rd__lFQOy07SnippetB00g9ContainerC0V_AF08RFButtonE0VQo_Md, &_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonE0Rd__lFQOy07SnippetB00g9ContainerC0V_AF08RFButtonE0VQo_MR);
  v72 = *(v6 - 8);
  v73 = v6;
  MEMORY[0x28223BE20](v6);
  v67 = &v59 - v7;
  v8 = type metadata accessor for WhereAmIView(0);
  v63 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v64 = v9;
  v65 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for CharacterSet();
  v80 = *(v10 - 8);
  v81 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = type metadata accessor for EnvironmentValues();
  v60 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v14 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v59 - v16;
  v18 = type metadata accessor for URL();
  v83 = *(v18 - 8);
  v84 = v18;
  v19 = *(v83 + 64);
  v20 = MEMORY[0x28223BE20](v18);
  v62 = &v59 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v82 = &v59 - v21;
  v22 = v1;
  v23 = *(v1 + 80);
  v24 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_24FF6F000, v23, v24, "RF Share Button", v25, 2u);
    MEMORY[0x25305DF00](v25, -1, -1);
  }

  v26 = *(v22 + 48);
  v27 = *(v22 + 56);
  v79 = *(v22 + 64);
  v28 = v22 + *(v8 + 36);
  v29 = *v28;
  if (*(v28 + 8) == 1)
  {
  }

  else
  {

    outlined copy of Environment<VRXIdiom>.Content(v29, 0);
    static os_log_type_t.fault.getter();
    v30 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined consume of Environment<VRXIdiom>.Content(v29, 0);
    (*(v60 + 8))(v14, v61);
  }

  v85 = v26;
  v86 = v27;
  v87 = v79;
  v31 = VRXIdiom.isWatchOS.getter();
  v85 = StandardMapData.makePunchoutURI(includeLabel:)((v31 & 1) == 0);
  v86 = v32;
  static CharacterSet.urlQueryAllowed.getter();
  lazy protocol witness table accessor for type String and conformance String();
  StringProtocol.addingPercentEncoding(withAllowedCharacters:)();
  v34 = v33;
  (*(v80 + 8))(v12, v81);

  if (v34)
  {
    URL.init(string:)();

    v35 = v83;
    v36 = v84;
  }

  else
  {
    v35 = v83;
    v36 = v84;
    (*(v83 + 56))(v17, 1, 1, v84);
  }

  result = (*(v35 + 48))(v17, 1, v36);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v38 = *(v35 + 32);
    v39 = v82;
    v38(v82, v17, v36);
    v40 = v62;
    (*(v35 + 16))(v62, v39, v36);
    v41 = v22;
    v42 = v65;
    outlined init with copy of WhereAmIView(v41, v65);
    v43 = (*(v35 + 80) + 16) & ~*(v35 + 80);
    v44 = (v19 + *(v63 + 80) + v43) & ~*(v63 + 80);
    v45 = swift_allocObject();
    v46 = v36;
    v47 = v45;
    v38((v45 + v43), v40, v46);
    outlined init with take of WhereAmIView(v42, v47 + v44);
    v48 = v66;
    ButtonContainerView.init(buttons:)();
    v49 = v69;
    static PrimitiveButtonStyle<>.rfButton.getter();
    v50 = lazy protocol witness table accessor for type ButtonContainerView and conformance ButtonContainerView(&lazy protocol witness table cache variable for type ButtonContainerView and conformance ButtonContainerView, MEMORY[0x277D63D38], MEMORY[0x277D63D20]);
    v51 = lazy protocol witness table accessor for type ButtonContainerView and conformance ButtonContainerView(&lazy protocol witness table cache variable for type RFButtonStyle and conformance RFButtonStyle, MEMORY[0x277D63B70], MEMORY[0x277D63B60]);
    v52 = v67;
    v53 = v71;
    v54 = v74;
    View.buttonStyle<A>(_:)();
    (*(v70 + 8))(v49, v54);
    (*(v68 + 8))(v48, v53);
    v56 = v77;
    v55 = v78;
    v57 = v75;
    (*(v77 + 104))(v75, *MEMORY[0x277D62F40], v78);
    v85 = v53;
    v86 = v54;
    *&v87 = v50;
    *(&v87 + 1) = v51;
    swift_getOpaqueTypeConformance2();
    v58 = v73;
    View.separators(_:isOverride:)();
    (*(v56 + 8))(v57, v55);
    (*(v72 + 8))(v52, v58);
    (*(v83 + 8))(v82, v84);
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

uint64_t type metadata accessor for WhereAmIView(uint64_t a1)
{
  result = type metadata singleton initialization cache for WhereAmIView;
  if (!type metadata singleton initialization cache for WhereAmIView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined copy of Environment<VRXIdiom>.Content(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t outlined consume of Environment<VRXIdiom>.Content(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return v2;
}

uint64_t closure #1 in WhereAmIView.shareButton.getter(uint64_t a1, uint64_t a2)
{
  v49 = a2;
  v47 = a1;
  v2 = type metadata accessor for Locale();
  v58 = *(v2 - 8);
  v59 = v2;
  v3 = MEMORY[0x28223BE20](v2);
  v44 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v60 = &v44 - v5;
  v50 = type metadata accessor for ButtonItemButtonStyle.Role();
  v48 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for WhereAmIView(0);
  v45 = *(v8 - 8);
  v9 = *(v45 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9ShareLinkVys15CollectionOfOneVy10Foundation3URLVGs5NeverOAkA07DefaultcD5LabelVGMd, &_s7SwiftUI9ShareLinkVys15CollectionOfOneVy10Foundation3URLVGs5NeverOAkA07DefaultcD5LabelVGMR);
  v14 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v16 = &v44 - v15;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP07SnippetB0E10buttonRoleyQrAD010ButtonItemG5StyleV0F0OFQOyAA9ShareLinkVys15CollectionOfOneVy10Foundation3URLVGs5NeverOAsA07DefaultjK5LabelVG_Qo_Md, &_s7SwiftUI4ViewP07SnippetB0E10buttonRoleyQrAD010ButtonItemG5StyleV0F0OFQOyAA9ShareLinkVys15CollectionOfOneVy10Foundation3URLVGs5NeverOAsA07DefaultjK5LabelVG_Qo_MR);
  v54 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v18 = &v44 - v17;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewP07SnippetB0E10buttonRoleyQrAF010ButtonItemI5StyleV0H0OFQOyAA9ShareLinkVys15CollectionOfOneVy10Foundation3URLVGs5NeverOAuA07DefaultlM5LabelVG_Qo_AA30_EnvironmentKeyWritingModifierVyAP6LocaleVGGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewP07SnippetB0E10buttonRoleyQrAF010ButtonItemI5StyleV0H0OFQOyAA9ShareLinkVys15CollectionOfOneVy10Foundation3URLVGs5NeverOAuA07DefaultlM5LabelVG_Qo_AA30_EnvironmentKeyWritingModifierVyAP6LocaleVGGMR);
  MEMORY[0x28223BE20](v55);
  v20 = &v44 - v19;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE16privacySensitiveyQrSbFQOyAA15ModifiedContentVyAC07SnippetB0E10buttonRoleyQrAG010ButtonItemK5StyleV0J0OFQOyAA9ShareLinkVys15CollectionOfOneVy10Foundation3URLVGs5NeverOAvA07DefaultnO5LabelVG_Qo_AA30_EnvironmentKeyWritingModifierVyAQ6LocaleVGG_Qo_Md, &_s7SwiftUI4ViewPAAE16privacySensitiveyQrSbFQOyAA15ModifiedContentVyAC07SnippetB0E10buttonRoleyQrAG010ButtonItemK5StyleV0J0OFQOyAA9ShareLinkVys15CollectionOfOneVy10Foundation3URLVGs5NeverOAvA07DefaultnO5LabelVG_Qo_AA30_EnvironmentKeyWritingModifierVyAQ6LocaleVGG_Qo_MR);
  v53 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v52 = &v44 - v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy7SwiftUI7AnyViewVGMd, &_ss23_ContiguousArrayStorageCy7SwiftUI7AnyViewVGMR);
  v51 = swift_allocObject();
  *(v51 + 16) = xmmword_24FF88410;
  (*(v11 + 16))(v13, v47, v10);
  outlined init with copy of WhereAmIView(v49, &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = (*(v45 + 80) + 16) & ~*(v45 + 80);
  v23 = swift_allocObject() + v22;
  v24 = v18;
  outlined init with take of WhereAmIView(&v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v23);
  ShareLink<>.init<>(item:subject:message:onPresentationChanged:)();
  v25 = v48;
  v26 = v50;
  (*(v48 + 104))(v7, *MEMORY[0x277D63A98], v50);
  lazy protocol witness table accessor for type TupleView<(ModifiedContent<<<opaque return type of View.mapScope(_:)>>.0, _FlexFrameLayout>, PrimaryHeaderRichView, <<opaque return type of View.separators(_:isOverride:)>>.0)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type ShareLink<CollectionOfOne<URL>, Never, Never, DefaultShareLinkLabel> and conformance ShareLink<A, B, C, D>, &_s7SwiftUI9ShareLinkVys15CollectionOfOneVy10Foundation3URLVGs5NeverOAkA07DefaultcD5LabelVGMd, &_s7SwiftUI9ShareLinkVys15CollectionOfOneVy10Foundation3URLVGs5NeverOAkA07DefaultcD5LabelVGMR, MEMORY[0x277CDF190]);
  v27 = v46;
  View.buttonRole(_:)();
  (*(v25 + 8))(v7, v26);
  (*(v14 + 8))(v16, v27);
  KeyPath = swift_getKeyPath();
  v29 = [objc_opt_self() sharedPreferences];
  v30 = [v29 languageCode];

  if (v30)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v32 = v58;
    v31 = v59;
  }

  else
  {
    v33 = v44;
    static Locale.current.getter();
    Locale.identifier.getter();
    v32 = v58;
    v34 = v33;
    v31 = v59;
    (*(v58 + 8))(v34, v59);
  }

  v35 = v60;
  Locale.init(identifier:)();
  v36 = v55;
  v37 = &v20[*(v55 + 36)];
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVy10Foundation6LocaleVGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy10Foundation6LocaleVGMR);
  (*(v32 + 32))(v37 + *(v38 + 28), v35, v31);
  *v37 = KeyPath;
  (*(v54 + 32))(v20, v24, v57);
  v39 = lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.buttonRole(_:)>>.0, _EnvironmentKeyWritingModifier<Locale>> and conformance <> ModifiedContent<A, B>();
  v40 = v52;
  View.privacySensitive(_:)();
  outlined destroy of StandardActionHandler?(v20, &_s7SwiftUI15ModifiedContentVyAA4ViewP07SnippetB0E10buttonRoleyQrAF010ButtonItemI5StyleV0H0OFQOyAA9ShareLinkVys15CollectionOfOneVy10Foundation3URLVGs5NeverOAuA07DefaultlM5LabelVG_Qo_AA30_EnvironmentKeyWritingModifierVyAP6LocaleVGGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewP07SnippetB0E10buttonRoleyQrAF010ButtonItemI5StyleV0H0OFQOyAA9ShareLinkVys15CollectionOfOneVy10Foundation3URLVGs5NeverOAuA07DefaultlM5LabelVG_Qo_AA30_EnvironmentKeyWritingModifierVyAP6LocaleVGGMR);
  v61 = v36;
  v62 = v39;
  swift_getOpaqueTypeConformance2();
  v41 = v56;
  v42 = View.eraseToAnyView()();
  (*(v53 + 8))(v40, v41);
  result = v51;
  *(v51 + 32) = v42;
  return result;
}

void closure #1 in closure #1 in WhereAmIView.shareButton.getter(char a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_allocWithZone(MEMORY[0x277D47B40]) init];
  UUID.init()();
  v9 = UUID.uuidString.getter();
  v11 = v10;
  (*(v5 + 8))(v7, v4);
  v12 = MEMORY[0x25305D940](v9, v11);

  [v8 setAceId_];

  v13 = *(a2 + *(type metadata accessor for WhereAmIView(0) + 40));
  if (v13)
  {
    v14 = v8;
    v15 = v13;
    dispatch thunk of Context.perform(aceCommand:)();

    v16 = v15;
    if (a1)
    {
      dispatch thunk of Context.willBeginEditing()();
    }

    else
    {
      dispatch thunk of Context.didEndEditing()();
    }
  }

  else
  {
    type metadata accessor for Context();
    lazy protocol witness table accessor for type ButtonContainerView and conformance ButtonContainerView(&lazy protocol witness table cache variable for type Context and conformance Context, MEMORY[0x277D63F68], MEMORY[0x277D63F58]);
    EnvironmentObject.error()();
    __break(1u);
  }
}

uint64_t key path setter for EnvironmentValues.locale : EnvironmentValues(uint64_t a1)
{
  v2 = type metadata accessor for Locale();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return EnvironmentValues.locale.setter();
}

uint64_t WhereAmIView.header.getter()
{

  return PrimaryHeaderRichView.init(text1:text2:text3:text4:thumbnail:addTint:)();
}

uint64_t WhereAmIView.body.getter()
{
  v1 = type metadata accessor for WhereAmIView(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1 - 8);
  outlined init with copy of WhereAmIView(v0, &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = swift_allocObject();
  outlined init with take of WhereAmIView(&v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v5 + v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA0D0P08_MapKit_aB0E8mapScopeyQrAA9NamespaceV2IDVFQOyAgAE12onTapGesture5count7performQrSi_yyctFQOy07SnippetB00gD0V_Qo__Qo_AA16_FlexFrameLayoutVG_AQ017PrimaryHeaderRichD0VAgQE10separators_10isOverrideQr0rH014SeparatorStyleO_SbtFQOyAgQEA__A0_QrA3__SbtFQOyAgAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAQ015ButtonContainerD0V_AQ13RFButtonStyleVQo__Qo__Qo_tGMd, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA0D0P08_MapKit_aB0E8mapScopeyQrAA9NamespaceV2IDVFQOyAgAE12onTapGesture5count7performQrSi_yyctFQOy07SnippetB00gD0V_Qo__Qo_AA16_FlexFrameLayoutVG_AQ017PrimaryHeaderRichD0VAgQE10separators_10isOverrideQr0rH014SeparatorStyleO_SbtFQOyAgQEA__A0_QrA3__SbtFQOyAgAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAQ015ButtonContainerD0V_AQ13RFButtonStyleVQo__Qo__Qo_tGMR);
  lazy protocol witness table accessor for type TupleView<(ModifiedContent<<<opaque return type of View.mapScope(_:)>>.0, _FlexFrameLayout>, PrimaryHeaderRichView, <<opaque return type of View.separators(_:isOverride:)>>.0)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type TupleView<(ModifiedContent<<<opaque return type of View.mapScope(_:)>>.0, _FlexFrameLayout>, PrimaryHeaderRichView, <<opaque return type of View.separators(_:isOverride:)>>.0)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA0D0P08_MapKit_aB0E8mapScopeyQrAA9NamespaceV2IDVFQOyAgAE12onTapGesture5count7performQrSi_yyctFQOy07SnippetB00gD0V_Qo__Qo_AA16_FlexFrameLayoutVG_AQ017PrimaryHeaderRichD0VAgQE10separators_10isOverrideQr0rH014SeparatorStyleO_SbtFQOyAgQEA__A0_QrA3__SbtFQOyAgAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAQ015ButtonContainerD0V_AQ13RFButtonStyleVQo__Qo__Qo_tGMd, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA0D0P08_MapKit_aB0E8mapScopeyQrAA9NamespaceV2IDVFQOyAgAE12onTapGesture5count7performQrSi_yyctFQOy07SnippetB00gD0V_Qo__Qo_AA16_FlexFrameLayoutVG_AQ017PrimaryHeaderRichD0VAgQE10separators_10isOverrideQr0rH014SeparatorStyleO_SbtFQOyAgQEA__A0_QrA3__SbtFQOyAgAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAQ015ButtonContainerD0V_AQ13RFButtonStyleVQo__Qo__Qo_tGMR, MEMORY[0x277CE14C8]);
  return ComponentStack.init(content:)();
}

uint64_t closure #1 in WhereAmIView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v69 = a1;
  v88 = a2;
  v81 = type metadata accessor for SeparatorStyle();
  v80 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v79 = &v68 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP07SnippetB0E10separators_10isOverrideQr0D3Kit14SeparatorStyleO_SbtFQOyAcAE06buttonJ0yQrqd__AA015PrimitiveButtonJ0Rd__lFQOyAD0m9ContainerC0V_AD08RFButtonJ0VQo__Qo_Md, &_s7SwiftUI4ViewP07SnippetB0E10separators_10isOverrideQr0D3Kit14SeparatorStyleO_SbtFQOyAcAE06buttonJ0yQrqd__AA015PrimitiveButtonJ0Rd__lFQOyAD0m9ContainerC0V_AD08RFButtonJ0VQo__Qo_MR);
  v86 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v78 = &v68 - v3;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP07SnippetB0E10separators_10isOverrideQr0D3Kit14SeparatorStyleO_SbtFQOyAcDEAE_AFQrAI_SbtFQOyAcAE06buttonJ0yQrqd__AA015PrimitiveButtonJ0Rd__lFQOyAD0m9ContainerC0V_AD08RFButtonJ0VQo__Qo__Qo_Md, &_s7SwiftUI4ViewP07SnippetB0E10separators_10isOverrideQr0D3Kit14SeparatorStyleO_SbtFQOyAcDEAE_AFQrAI_SbtFQOyAcAE06buttonJ0yQrqd__AA015PrimitiveButtonJ0Rd__lFQOyAD0m9ContainerC0V_AD08RFButtonJ0VQo__Qo__Qo_MR);
  v94 = *(v87 - 8);
  v4 = MEMORY[0x28223BE20](v87);
  v84 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v92 = &v68 - v6;
  v83 = type metadata accessor for PrimaryHeaderRichView();
  v93 = *(v83 - 8);
  v7 = MEMORY[0x28223BE20](v83);
  v82 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v91 = &v68 - v9;
  v10 = type metadata accessor for WhereAmIView(0);
  v72 = *(v10 - 8);
  v71 = *(v72 + 64);
  MEMORY[0x28223BE20](v10);
  v12 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for MapAspectRatio();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for MapView();
  v73 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v19 = &v68 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE12onTapGesture5count7performQrSi_yyctFQOy07SnippetB003MapC0V_Qo_Md, &_s7SwiftUI4ViewPAAE12onTapGesture5count7performQrSi_yyctFQOy07SnippetB003MapC0V_Qo_MR);
  v75 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v21 = &v68 - v20;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP08_MapKit_aB0E8mapScopeyQrAA9NamespaceV2IDVFQOyAcAE12onTapGesture5count7performQrSi_yyctFQOy07SnippetB00dC0V_Qo__Qo_Md, &_s7SwiftUI4ViewP08_MapKit_aB0E8mapScopeyQrAA9NamespaceV2IDVFQOyAcAE12onTapGesture5count7performQrSi_yyctFQOy07SnippetB00dC0V_Qo__Qo_MR);
  v76 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v70 = &v68 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewP08_MapKit_aB0E8mapScopeyQrAA9NamespaceV2IDVFQOyAeAE12onTapGesture5count7performQrSi_yyctFQOy07SnippetB00fE0V_Qo__Qo_AA16_FlexFrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewP08_MapKit_aB0E8mapScopeyQrAA9NamespaceV2IDVFQOyAeAE12onTapGesture5count7performQrSi_yyctFQOy07SnippetB00fE0V_Qo__Qo_AA16_FlexFrameLayoutVGMR);
  v24 = v23 - 8;
  v25 = MEMORY[0x28223BE20](v23);
  v90 = &v68 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v29 = &v68 - v28;
  MEMORY[0x28223BE20](v27);
  v89 = &v68 - v30;
  (*(v14 + 104))(v16, *MEMORY[0x277D63BC8], v13);
  MapView.init(markers:annotations:mapItemIdentifiers:polyline:aspectRatio:cameraDistance:showsUserLocation:)();
  outlined init with copy of WhereAmIView(v69, v12);
  v31 = (*(v72 + 80) + 16) & ~*(v72 + 80);
  v32 = swift_allocObject();
  outlined init with take of WhereAmIView(v12, v32 + v31);
  v33 = lazy protocol witness table accessor for type ButtonContainerView and conformance ButtonContainerView(&lazy protocol witness table cache variable for type MapView and conformance MapView, MEMORY[0x277D63F78], MEMORY[0x277D63F70]);
  View.onTapGesture(count:perform:)();

  (*(v73 + 8))(v19, v17);
  Namespace.wrappedValue.getter();
  *&v99 = v17;
  *(&v99 + 1) = v33;
  swift_getOpaqueTypeConformance2();
  v34 = v70;
  v35 = v74;
  View.mapScope(_:)();
  (*(v75 + 8))(v21, v35);
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  (*(v76 + 32))(v29, v34, v77);
  v36 = &v29[*(v24 + 44)];
  v37 = v104;
  *(v36 + 4) = v103;
  *(v36 + 5) = v37;
  *(v36 + 6) = v105;
  v38 = v100;
  *v36 = v99;
  *(v36 + 1) = v38;
  v39 = v102;
  *(v36 + 2) = v101;
  *(v36 + 3) = v39;
  v40 = v29;
  v41 = v89;
  sub_24FF71108(v40, v89);
  v42 = v91;
  WhereAmIView.header.getter();
  v43 = v78;
  WhereAmIView.shareButton.getter(v78);
  v44 = v80;
  v45 = v79;
  v46 = v81;
  (*(v80 + 104))(v79, *MEMORY[0x277D62F40], v81);
  v47 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonE0Rd__lFQOy07SnippetB00g9ContainerC0V_AF08RFButtonE0VQo_Md, &_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonE0Rd__lFQOy07SnippetB00g9ContainerC0V_AF08RFButtonE0VQo_MR);
  v48 = type metadata accessor for ButtonContainerView();
  v49 = type metadata accessor for RFButtonStyle();
  v50 = lazy protocol witness table accessor for type ButtonContainerView and conformance ButtonContainerView(&lazy protocol witness table cache variable for type ButtonContainerView and conformance ButtonContainerView, MEMORY[0x277D63D38], MEMORY[0x277D63D20]);
  v51 = lazy protocol witness table accessor for type ButtonContainerView and conformance ButtonContainerView(&lazy protocol witness table cache variable for type RFButtonStyle and conformance RFButtonStyle, MEMORY[0x277D63B70], MEMORY[0x277D63B60]);
  v95 = v48;
  v96 = v49;
  v97 = v50;
  v98 = v51;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v95 = v47;
  v96 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v53 = v92;
  v54 = v85;
  View.separators(_:isOverride:)();
  (*(v44 + 8))(v45, v46);
  (*(v86 + 8))(v43, v54);
  v55 = v90;
  sub_24FF71178(v41, v90);
  v56 = *(v93 + 16);
  v57 = v82;
  v58 = v83;
  v56(v82, v42, v83);
  v59 = *(v94 + 16);
  v60 = v84;
  v61 = v87;
  v59(v84, v53, v87);
  v62 = v55;
  v63 = v88;
  sub_24FF71178(v62, v88);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewP08_MapKit_aB0E8mapScopeyQrAA9NamespaceV2IDVFQOyAeAE12onTapGesture5count7performQrSi_yyctFQOy07SnippetB00fE0V_Qo__Qo_AA16_FlexFrameLayoutVG_AO017PrimaryHeaderRichE0VAeOE10separators_10isOverrideQr0qG014SeparatorStyleO_SbtFQOyAeOEAY_AZQrA1__SbtFQOyAeAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAO015ButtonContainerE0V_AO13RFButtonStyleVQo__Qo__Qo_tMd, &_s7SwiftUI15ModifiedContentVyAA4ViewP08_MapKit_aB0E8mapScopeyQrAA9NamespaceV2IDVFQOyAeAE12onTapGesture5count7performQrSi_yyctFQOy07SnippetB00fE0V_Qo__Qo_AA16_FlexFrameLayoutVG_AO017PrimaryHeaderRichE0VAeOE10separators_10isOverrideQr0qG014SeparatorStyleO_SbtFQOyAeOEAY_AZQrA1__SbtFQOyAeAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAO015ButtonContainerE0V_AO13RFButtonStyleVQo__Qo__Qo_tMR);
  v56((v63 + *(v64 + 48)), v57, v58);
  v59((v63 + *(v64 + 64)), v60, v61);
  v65 = *(v94 + 8);
  v65(v92, v61);
  v66 = *(v93 + 8);
  v66(v91, v58);
  outlined destroy of StandardActionHandler?(v89, &_s7SwiftUI15ModifiedContentVyAA4ViewP08_MapKit_aB0E8mapScopeyQrAA9NamespaceV2IDVFQOyAeAE12onTapGesture5count7performQrSi_yyctFQOy07SnippetB00fE0V_Qo__Qo_AA16_FlexFrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewP08_MapKit_aB0E8mapScopeyQrAA9NamespaceV2IDVFQOyAeAE12onTapGesture5count7performQrSi_yyctFQOy07SnippetB00fE0V_Qo__Qo_AA16_FlexFrameLayoutVGMR);
  v65(v60, v61);
  v66(v57, v58);
  return outlined destroy of StandardActionHandler?(v90, &_s7SwiftUI15ModifiedContentVyAA4ViewP08_MapKit_aB0E8mapScopeyQrAA9NamespaceV2IDVFQOyAeAE12onTapGesture5count7performQrSi_yyctFQOy07SnippetB00fE0V_Qo__Qo_AA16_FlexFrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewP08_MapKit_aB0E8mapScopeyQrAA9NamespaceV2IDVFQOyAeAE12onTapGesture5count7performQrSi_yyctFQOy07SnippetB00fE0V_Qo__Qo_AA16_FlexFrameLayoutVGMR);
}

uint64_t closure #1 in closure #1 in WhereAmIView.body.getter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SnippetUI15InteractionTypeOSgMd, &_s9SnippetUI15InteractionTypeOSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v32 - v3;
  v5 = type metadata accessor for EnvironmentValues();
  v38 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit14ActionPropertyVSgMd, &_s10SnippetKit14ActionPropertyVSgMR);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v32 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SnippetUI21StandardActionHandlerVSgMd, &_s9SnippetUI21StandardActionHandlerVSgMR);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v32 - v12;
  v14 = type metadata accessor for WhereAmIView(0);
  ActionHandler.wrappedValue.getter();
  v15 = type metadata accessor for StandardActionHandler();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v13, 1, v15) == 1)
  {
    return outlined destroy of StandardActionHandler?(v13, &_s9SnippetUI21StandardActionHandlerVSgMd, &_s9SnippetUI21StandardActionHandlerVSgMR);
  }

  v35 = v5;
  v37 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10SnippetKit24ActionElementConvertible_pGMd, &_ss23_ContiguousArrayStorageCy10SnippetKit24ActionElementConvertible_pGMR);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_24FF88410;
  v19 = type metadata accessor for Command();
  v20 = MEMORY[0x277D63770];
  *(v18 + 56) = v19;
  *(v18 + 64) = v20;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v18 + 32));
  v21 = *(a1 + 48);
  v22 = *(a1 + 56);
  v23 = *(a1 + 64);
  v24 = a1 + *(v14 + 36);
  v25 = *v24;
  if ((*(v24 + 8) & 1) == 0)
  {
    v34 = *(a1 + 64);
    v32 = v22;
    v33 = v21;

    static os_log_type_t.fault.getter();
    v26 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined consume of Environment<VRXIdiom>.Content(v25, 0);
    (*(v38 + 8))(v7, v35);
    v22 = v32;
    v21 = v33;
    v23 = v34;
  }

  v39 = v21;
  v40 = v22;
  v41 = v23;
  v27 = VRXIdiom.isWatchOS.getter();
  StandardMapData.makePunchoutURI(includeLabel:)((v27 & 1) == 0);
  v28 = boxed_opaque_existential_1;
  AppPunchout.init(punchOutUri:bundleId:appDisplayName:)();
  (*(*(v19 - 8) + 104))(v28, *MEMORY[0x277D63738], v19);
  ActionProperty.init(_:)();
  v29 = type metadata accessor for ActionProperty();
  (*(*(v29 - 8) + 56))(v10, 0, 1, v29);
  v30 = type metadata accessor for InteractionType();
  v31 = v37;
  (*(*(v30 - 8) + 56))(v37, 1, 1, v30);
  StandardActionHandler.perform(_:interactionType:)();
  outlined destroy of StandardActionHandler?(v31, &_s9SnippetUI15InteractionTypeOSgMd, &_s9SnippetUI15InteractionTypeOSgMR);
  outlined destroy of StandardActionHandler?(v10, &_s10SnippetKit14ActionPropertyVSgMd, &_s10SnippetKit14ActionPropertyVSgMR);
  return (*(v16 + 8))(v13, v15);
}

uint64_t WhereAmIView.init(model:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  *(a2 + 32) = a1[2];
  *(a2 + 48) = v3;
  *(a2 + 64) = a1[4];
  v4 = a1[1];
  *a2 = *a1;
  *(a2 + 16) = v4;
  type metadata accessor for RFMapMarker(0, &lazy cache variable for type metadata for OS_os_log, 0x277D86200);
  *(a2 + 80) = OS_os_log.init(subsystem:category:)();
  v5 = type metadata accessor for WhereAmIView(0);
  ActionHandler.init()();
  *(a2 + v5[7]) = 0;
  v6 = v5[8];
  *(a2 + v6) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOy10Foundation6LocaleV_GMd, &_s7SwiftUI11EnvironmentV7ContentOy10Foundation6LocaleV_GMR);
  swift_storeEnumTagMultiPayload();
  v7 = a2 + v5[9];
  *v7 = swift_getKeyPath();
  *(v7 + 8) = 0;
  v8 = (a2 + v5[10]);
  type metadata accessor for Context();
  lazy protocol witness table accessor for type ButtonContainerView and conformance ButtonContainerView(&lazy protocol witness table cache variable for type Context and conformance Context, MEMORY[0x277D63F68], MEMORY[0x277D63F58]);
  result = EnvironmentObject.init()();
  *v8 = result;
  v8[1] = v10;
  return result;
}

uint64_t key path getter for EnvironmentValues.currentIdiom : EnvironmentValues@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.currentIdiom.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for View.body.getter in conformance WhereAmIView(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](a1 - 8);
  outlined init with copy of WhereAmIView(v1, &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = swift_allocObject();
  outlined init with take of WhereAmIView(&v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v5 + v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA0D0P08_MapKit_aB0E8mapScopeyQrAA9NamespaceV2IDVFQOyAgAE12onTapGesture5count7performQrSi_yyctFQOy07SnippetB00gD0V_Qo__Qo_AA16_FlexFrameLayoutVG_AQ017PrimaryHeaderRichD0VAgQE10separators_10isOverrideQr0rH014SeparatorStyleO_SbtFQOyAgQEA__A0_QrA3__SbtFQOyAgAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAQ015ButtonContainerD0V_AQ13RFButtonStyleVQo__Qo__Qo_tGMd, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA0D0P08_MapKit_aB0E8mapScopeyQrAA9NamespaceV2IDVFQOyAgAE12onTapGesture5count7performQrSi_yyctFQOy07SnippetB00gD0V_Qo__Qo_AA16_FlexFrameLayoutVG_AQ017PrimaryHeaderRichD0VAgQE10separators_10isOverrideQr0rH014SeparatorStyleO_SbtFQOyAgQEA__A0_QrA3__SbtFQOyAgAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAQ015ButtonContainerD0V_AQ13RFButtonStyleVQo__Qo__Qo_tGMR);
  lazy protocol witness table accessor for type TupleView<(ModifiedContent<<<opaque return type of View.mapScope(_:)>>.0, _FlexFrameLayout>, PrimaryHeaderRichView, <<opaque return type of View.separators(_:isOverride:)>>.0)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type TupleView<(ModifiedContent<<<opaque return type of View.mapScope(_:)>>.0, _FlexFrameLayout>, PrimaryHeaderRichView, <<opaque return type of View.separators(_:isOverride:)>>.0)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA0D0P08_MapKit_aB0E8mapScopeyQrAA9NamespaceV2IDVFQOyAgAE12onTapGesture5count7performQrSi_yyctFQOy07SnippetB00gD0V_Qo__Qo_AA16_FlexFrameLayoutVG_AQ017PrimaryHeaderRichD0VAgQE10separators_10isOverrideQr0rH014SeparatorStyleO_SbtFQOyAgQEA__A0_QrA3__SbtFQOyAgAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAQ015ButtonContainerD0V_AQ13RFButtonStyleVQo__Qo__Qo_tGMd, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA0D0P08_MapKit_aB0E8mapScopeyQrAA9NamespaceV2IDVFQOyAgAE12onTapGesture5count7performQrSi_yyctFQOy07SnippetB00gD0V_Qo__Qo_AA16_FlexFrameLayoutVG_AQ017PrimaryHeaderRichD0VAgQE10separators_10isOverrideQr0rH014SeparatorStyleO_SbtFQOyAgQEA__A0_QrA3__SbtFQOyAgAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAQ015ButtonContainerD0V_AQ13RFButtonStyleVQo__Qo__Qo_tGMR, MEMORY[0x277CE14C8]);
  return ComponentStack.init(content:)();
}

uint64_t static WhereAmIView_Previews.previews.getter()
{
  if (one-time initialization token for myLocation != -1)
  {
    swift_once();
  }

  type metadata accessor for WhereAmIView(0);
  lazy protocol witness table accessor for type GeoDataModels.WhereAmIDataModel and conformance GeoDataModels.WhereAmIDataModel();
  lazy protocol witness table accessor for type ButtonContainerView and conformance ButtonContainerView(&lazy protocol witness table cache variable for type WhereAmIView and conformance WhereAmIView, type metadata accessor for WhereAmIView, &protocol conformance descriptor for WhereAmIView);

  return SnippetPreview.init(snippetModel:content:)();
}

uint64_t implicit closure #1 in static WhereAmIView_Previews.previews.getter@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v15 = a1[2];
  v16 = v3;
  v17 = a1[4];
  v4 = v17;
  v5 = a1[1];
  v14[0] = *a1;
  v6 = v14[0];
  v14[1] = v5;
  *(a2 + 32) = v15;
  *(a2 + 48) = v3;
  *(a2 + 64) = v4;
  *a2 = v6;
  *(a2 + 16) = v5;
  type metadata accessor for RFMapMarker(0, &lazy cache variable for type metadata for OS_os_log, 0x277D86200);
  outlined init with copy of GeoDataModels.WhereAmIDataModel(v14, &v13);
  *(a2 + 80) = OS_os_log.init(subsystem:category:)();
  v7 = type metadata accessor for WhereAmIView(0);
  ActionHandler.init()();
  *(a2 + v7[7]) = 0;
  v8 = v7[8];
  *(a2 + v8) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOy10Foundation6LocaleV_GMd, &_s7SwiftUI11EnvironmentV7ContentOy10Foundation6LocaleV_GMR);
  swift_storeEnumTagMultiPayload();
  v9 = a2 + v7[9];
  *v9 = swift_getKeyPath();
  *(v9 + 8) = 0;
  v10 = (a2 + v7[10]);
  type metadata accessor for Context();
  lazy protocol witness table accessor for type ButtonContainerView and conformance ButtonContainerView(&lazy protocol witness table cache variable for type Context and conformance Context, MEMORY[0x277D63F68], MEMORY[0x277D63F58]);
  result = EnvironmentObject.init()();
  *v10 = result;
  v10[1] = v12;
  return result;
}

uint64_t protocol witness for static _PreviewProvider._previews.getter in conformance WhereAmIView_Previews(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WhereAmIView_Previews and conformance WhereAmIView_Previews();

  return MEMORY[0x28212D8E8](a1, v2);
}

uint64_t protocol witness for static _PreviewProvider._platform.getter in conformance WhereAmIView_Previews(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WhereAmIView_Previews and conformance WhereAmIView_Previews();

  return MEMORY[0x28212D8D8](a1, v2);
}

double one-time initialization function for myLocation()
{
  myLocation.label._countAndFlagsBits = 0xD000000000000010;
  myLocation.label._object = 0x800000024FF8A760;
  result = 37.3349;
  *&myLocation.latitude = xmmword_24FF88420;
  return result;
}

unint64_t lazy protocol witness table accessor for type String and conformance String()
{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String and conformance String);
  }

  return result;
}

uint64_t outlined init with copy of WhereAmIView(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WhereAmIView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of WhereAmIView(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WhereAmIView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in WhereAmIView.shareButton.getter()
{
  v1 = *(type metadata accessor for URL() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for WhereAmIView(0) - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return closure #1 in WhereAmIView.shareButton.getter(v0 + v2, v5);
}

uint64_t serialize(_:at:)(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
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

uint64_t type metadata accessor for RFMapMarker(uint64_t a1, unint64_t *a2, void *a3)
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

unint64_t lazy protocol witness table accessor for type GeoDataModels.WhereAmIDataModel and conformance GeoDataModels.WhereAmIDataModel()
{
  result = lazy protocol witness table cache variable for type GeoDataModels.WhereAmIDataModel and conformance GeoDataModels.WhereAmIDataModel;
  if (!lazy protocol witness table cache variable for type GeoDataModels.WhereAmIDataModel and conformance GeoDataModels.WhereAmIDataModel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoDataModels.WhereAmIDataModel and conformance GeoDataModels.WhereAmIDataModel);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GeoDataModels.WhereAmIDataModel and conformance GeoDataModels.WhereAmIDataModel;
  if (!lazy protocol witness table cache variable for type GeoDataModels.WhereAmIDataModel and conformance GeoDataModels.WhereAmIDataModel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoDataModels.WhereAmIDataModel and conformance GeoDataModels.WhereAmIDataModel);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GeoDataModels.WhereAmIDataModel and conformance GeoDataModels.WhereAmIDataModel;
  if (!lazy protocol witness table cache variable for type GeoDataModels.WhereAmIDataModel and conformance GeoDataModels.WhereAmIDataModel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoDataModels.WhereAmIDataModel and conformance GeoDataModels.WhereAmIDataModel);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type WhereAmIView_Previews and conformance WhereAmIView_Previews()
{
  result = lazy protocol witness table cache variable for type WhereAmIView_Previews and conformance WhereAmIView_Previews;
  if (!lazy protocol witness table cache variable for type WhereAmIView_Previews and conformance WhereAmIView_Previews)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WhereAmIView_Previews and conformance WhereAmIView_Previews);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WhereAmIView_Previews and conformance WhereAmIView_Previews;
  if (!lazy protocol witness table cache variable for type WhereAmIView_Previews and conformance WhereAmIView_Previews)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WhereAmIView_Previews and conformance WhereAmIView_Previews);
  }

  return result;
}

void type metadata completion function for WhereAmIView(uint64_t a1)
{
  type metadata accessor for RFMapMarker(319, &lazy cache variable for type metadata for OS_os_log, 0x277D86200);
  if (v1 <= 0x3F)
  {
    type metadata accessor for ActionHandler();
    if (v2 <= 0x3F)
    {
      type metadata accessor for Environment<Locale>(319, &lazy cache variable for type metadata for Environment<Locale>, MEMORY[0x277CC9788]);
      if (v3 <= 0x3F)
      {
        type metadata accessor for Environment<Locale>(319, &lazy cache variable for type metadata for Environment<VRXIdiom>, type metadata accessor for VRXIdiom);
        if (v4 <= 0x3F)
        {
          type metadata accessor for EnvironmentObject<Context>(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void type metadata accessor for Environment<Locale>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Environment();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void type metadata accessor for VRXIdiom()
{
  if (!lazy cache variable for type metadata for VRXIdiom)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for VRXIdiom);
    }
  }
}

void type metadata accessor for EnvironmentObject<Context>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for EnvironmentObject<Context>)
  {
    type metadata accessor for Context();
    lazy protocol witness table accessor for type ButtonContainerView and conformance ButtonContainerView(&lazy protocol witness table cache variable for type Context and conformance Context, MEMORY[0x277D63F68], MEMORY[0x277D63F58]);
    v1 = type metadata accessor for EnvironmentObject();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for EnvironmentObject<Context>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type ButtonContainerView and conformance ButtonContainerView(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t partial apply for closure #1 in WhereAmIView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WhereAmIView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return closure #1 in WhereAmIView.body.getter(v4, a1);
}

uint64_t partial apply for closure #1 in closure #1 in WhereAmIView.body.getter()
{
  v1 = *(type metadata accessor for WhereAmIView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return closure #1 in closure #1 in WhereAmIView.body.getter(v2);
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

uint64_t outlined destroy of StandardActionHandler?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t objectdestroy_3Tm()
{
  v1 = type metadata accessor for WhereAmIView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;

  v6 = v1[6];
  v7 = type metadata accessor for ActionHandler();
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);
  v8 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOy10Foundation6LocaleV_GMd, &_s7SwiftUI11EnvironmentV7ContentOy10Foundation6LocaleV_GMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = type metadata accessor for Locale();
    (*(*(v9 - 8) + 8))(v5 + v8, v9);
  }

  else
  {
  }

  outlined consume of Environment<VRXIdiom>.Content(*(v5 + v1[9]), *(v5 + v1[9] + 8));

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

void partial apply for closure #1 in closure #1 in WhereAmIView.shareButton.getter(char a1)
{
  v3 = *(type metadata accessor for WhereAmIView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  closure #1 in closure #1 in WhereAmIView.shareButton.getter(a1, v4);
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.buttonRole(_:)>>.0, _EnvironmentKeyWritingModifier<Locale>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.buttonRole(_:)>>.0, _EnvironmentKeyWritingModifier<Locale>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.buttonRole(_:)>>.0, _EnvironmentKeyWritingModifier<Locale>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewP07SnippetB0E10buttonRoleyQrAF010ButtonItemI5StyleV0H0OFQOyAA9ShareLinkVys15CollectionOfOneVy10Foundation3URLVGs5NeverOAuA07DefaultlM5LabelVG_Qo_AA30_EnvironmentKeyWritingModifierVyAP6LocaleVGGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewP07SnippetB0E10buttonRoleyQrAF010ButtonItemI5StyleV0H0OFQOyAA9ShareLinkVys15CollectionOfOneVy10Foundation3URLVGs5NeverOAuA07DefaultlM5LabelVG_Qo_AA30_EnvironmentKeyWritingModifierVyAP6LocaleVGGMR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI9ShareLinkVys15CollectionOfOneVy10Foundation3URLVGs5NeverOAkA07DefaultcD5LabelVGMd, &_s7SwiftUI9ShareLinkVys15CollectionOfOneVy10Foundation3URLVGs5NeverOAkA07DefaultcD5LabelVGMR);
    lazy protocol witness table accessor for type TupleView<(ModifiedContent<<<opaque return type of View.mapScope(_:)>>.0, _FlexFrameLayout>, PrimaryHeaderRichView, <<opaque return type of View.separators(_:isOverride:)>>.0)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type ShareLink<CollectionOfOne<URL>, Never, Never, DefaultShareLinkLabel> and conformance ShareLink<A, B, C, D>, &_s7SwiftUI9ShareLinkVys15CollectionOfOneVy10Foundation3URLVGs5NeverOAkA07DefaultcD5LabelVGMd, &_s7SwiftUI9ShareLinkVys15CollectionOfOneVy10Foundation3URLVGs5NeverOAkA07DefaultcD5LabelVGMR, MEMORY[0x277CDF190]);
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type TupleView<(ModifiedContent<<<opaque return type of View.mapScope(_:)>>.0, _FlexFrameLayout>, PrimaryHeaderRichView, <<opaque return type of View.separators(_:isOverride:)>>.0)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Locale> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy10Foundation6LocaleVGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy10Foundation6LocaleVGMR, MEMORY[0x277CE0870]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.buttonRole(_:)>>.0, _EnvironmentKeyWritingModifier<Locale>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type TupleView<(ModifiedContent<<<opaque return type of View.mapScope(_:)>>.0, _FlexFrameLayout>, PrimaryHeaderRichView, <<opaque return type of View.separators(_:isOverride:)>>.0)> and conformance TupleView<A>(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t ParkingLocationView.model.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[3];
  v9 = v1[2];
  v10 = v2;
  v11 = v1[4];
  v3 = v11;
  v4 = v1[1];
  v8[0] = *v1;
  v5 = v8[0];
  v8[1] = v4;
  a1[2] = v9;
  a1[3] = v2;
  a1[4] = v3;
  *a1 = v5;
  a1[1] = v4;
  return outlined init with copy of GeoDataModels.ParkingLocationDataModel(v8, &v7);
}

id ParkingLocationView.navCommand.getter()
{
  v1 = [objc_allocWithZone(MEMORY[0x277D4C408]) init];
  [v1 setLat_];
  [v1 setLng_];
  v2 = [objc_allocWithZone(MEMORY[0x277D4C1E8]) init];
  [v2 setLocation_];
  v4 = *(v0 + 32);
  v3 = *(v0 + 40);

  v5 = MEMORY[0x25305D940](v4, v3);

  [v2 setName_];

  [v2 setDirectionsMode_];
  return v2;
}

uint64_t ParkingLocationView.parkingPin.getter()
{
  type metadata accessor for RFMapMarker(0, &lazy cache variable for type metadata for RFMapMarker, 0x277D4C018);
  v0 = objc_allocWithZone(MEMORY[0x277D4BF80]);

  [objc_msgSend(v0 init)];
  return RFMapMarker.init(coordinate:title:image:tint:)();
}

uint64_t ParkingLocationView.mapView.getter()
{
  v0 = type metadata accessor for MapAspectRatio();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_24FF88670;
  type metadata accessor for RFMapMarker(0, &lazy cache variable for type metadata for RFMapMarker, 0x277D4C018);
  v5 = objc_allocWithZone(MEMORY[0x277D4BF80]);

  [objc_msgSend(v5 init)];
  *(v4 + 32) = RFMapMarker.init(coordinate:title:image:tint:)();
  (*(v1 + 104))(v3, *MEMORY[0x277D63BC8], v0);
  return MapView.init(markers:annotations:mapItemIdentifiers:polyline:aspectRatio:cameraDistance:showsUserLocation:)();
}

uint64_t ParkingLocationView.directionsButton.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v36 = a1;
  v34 = type metadata accessor for SeparatorStyle();
  v3 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for RFButtonStyle();
  v38 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v32 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for ButtonContainerView();
  v33 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonE0Rd__lFQOy07SnippetB00g9ContainerC0V_AF08RFButtonE0VQo_Md, &_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonE0Rd__lFQOy07SnippetB00g9ContainerC0V_AF08RFButtonE0VQo_MR);
  v39 = *(v9 - 8);
  v40 = v9;
  MEMORY[0x28223BE20](v9);
  v35 = &v32 - v10;
  v11 = type metadata accessor for ParkingLocationView(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = *(v2 + 80);
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = v5;
    v17 = v3;
    v18 = v2;
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_24FF6F000, v14, v15, "RF directions Button", v19, 2u);
    v20 = v19;
    v2 = v18;
    v3 = v17;
    v5 = v16;
    MEMORY[0x25305DF00](v20, -1, -1);
  }

  outlined init with copy of ParkingLocationView(v2, &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v22 = swift_allocObject();
  outlined init with take of ParkingLocationView(&v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v21);
  ButtonContainerView.init(buttons:)();
  v23 = v32;
  static PrimitiveButtonStyle<>.rfButton.getter();
  v24 = _s9SnippetUI19ButtonContainerViewVAC05SwiftB00E0AAWlTm_0(&lazy protocol witness table cache variable for type ButtonContainerView and conformance ButtonContainerView, MEMORY[0x277D63D38], MEMORY[0x277D63D20]);
  v25 = _s9SnippetUI19ButtonContainerViewVAC05SwiftB00E0AAWlTm_0(&lazy protocol witness table cache variable for type RFButtonStyle and conformance RFButtonStyle, MEMORY[0x277D63B70], MEMORY[0x277D63B60]);
  v26 = v35;
  v27 = v37;
  v28 = v41;
  View.buttonStyle<A>(_:)();
  (*(v38 + 8))(v23, v28);
  (*(v33 + 8))(v8, v27);
  v29 = v34;
  (*(v3 + 104))(v5, *MEMORY[0x277D62F40], v34);
  v42 = v27;
  v43 = v28;
  v44 = v24;
  v45 = v25;
  swift_getOpaqueTypeConformance2();
  v30 = v40;
  View.separators(_:isOverride:)();
  (*(v3 + 8))(v5, v29);
  (*(v39 + 8))(v26, v30);
}

uint64_t type metadata accessor for ParkingLocationView(uint64_t a1)
{
  result = type metadata singleton initialization cache for ParkingLocationView;
  if (!type metadata singleton initialization cache for ParkingLocationView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t closure #1 in ParkingLocationView.directionsButton.getter(uint64_t a1)
{
  v2 = type metadata accessor for ButtonItemButtonStyle.Role();
  v32 = *(v2 - 8);
  v33 = v2;
  MEMORY[0x28223BE20](v2);
  v30 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ParkingLocationView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA5LabelVyAEyAA4TextVAA5ImageVGAA9EmptyViewVGGMd, &_s7SwiftUI6ButtonVyAA5LabelVyAEyAA4TextVAA5ImageVGAA9EmptyViewVGGMR);
  v27 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v26 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP07SnippetB0E10buttonRoleyQrAD010ButtonItemG5StyleV0F0OFQOyAA0G0VyAA5LabelVyAMyAA4TextVAA5ImageVGAA05EmptyC0VGG_Qo_Md, &_s7SwiftUI4ViewP07SnippetB0E10buttonRoleyQrAD010ButtonItemG5StyleV0F0OFQOyAA0G0VyAA5LabelVyAMyAA4TextVAA5ImageVGAA05EmptyC0VGG_Qo_MR);
  v29 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v26 - v11;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE16privacySensitiveyQrSbFQOyAC07SnippetB0E10buttonRoleyQrAE010ButtonItemI5StyleV0H0OFQOyAA0I0VyAA5LabelVyANyAA4TextVAA5ImageVGAA05EmptyC0VGG_Qo__Qo_Md, &_s7SwiftUI4ViewPAAE16privacySensitiveyQrSbFQOyAC07SnippetB0E10buttonRoleyQrAE010ButtonItemI5StyleV0H0OFQOyAA0I0VyAA5LabelVyANyAA4TextVAA5ImageVGAA05EmptyC0VGG_Qo__Qo_MR);
  v31 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v14 = &v26 - v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy7SwiftUI7AnyViewVGMd, &_ss23_ContiguousArrayStorageCy7SwiftUI7AnyViewVGMR);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_24FF88410;
  outlined init with copy of ParkingLocationView(a1, &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v17 = swift_allocObject();
  outlined init with take of ParkingLocationView(&v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16);
  v34 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5LabelVyACyAA4TextVAA5ImageVGAA9EmptyViewVGMd, &_s7SwiftUI5LabelVyACyAA4TextVAA5ImageVGAA9EmptyViewVGMR);
  lazy protocol witness table accessor for type TupleView<(ModifiedContent<<<opaque return type of View.mapScope(_:)>>.0, _FlexFrameLayout>, PrimaryHeaderRichView, <<opaque return type of View.separators(_:isOverride:)>>.0)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type Label<Label<Text, Image>, EmptyView> and conformance Label<A, B>, &_s7SwiftUI5LabelVyACyAA4TextVAA5ImageVGAA9EmptyViewVGMd, &_s7SwiftUI5LabelVyACyAA4TextVAA5ImageVGAA9EmptyViewVGMR, MEMORY[0x277CDEFE8]);
  Button.init(action:label:)();
  v19 = v32;
  v18 = v33;
  v20 = v30;
  (*(v32 + 104))(v30, *MEMORY[0x277D63A98], v33);
  v21 = lazy protocol witness table accessor for type TupleView<(ModifiedContent<<<opaque return type of View.mapScope(_:)>>.0, _FlexFrameLayout>, PrimaryHeaderRichView, <<opaque return type of View.separators(_:isOverride:)>>.0)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type Button<Label<Label<Text, Image>, EmptyView>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA5LabelVyAEyAA4TextVAA5ImageVGAA9EmptyViewVGGMd, &_s7SwiftUI6ButtonVyAA5LabelVyAEyAA4TextVAA5ImageVGAA9EmptyViewVGGMR, MEMORY[0x277CDF030]);
  View.buttonRole(_:)();
  (*(v19 + 8))(v20, v18);
  (*(v27 + 8))(v9, v7);
  v35 = v7;
  v36 = v21;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  View.privacySensitive(_:)();
  (*(v29 + 8))(v12, v10);
  v35 = v10;
  v36 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v23 = v28;
  v24 = View.eraseToAnyView()();
  (*(v31 + 8))(v14, v23);
  *(v15 + 32) = v24;
  return v15;
}

uint64_t outlined init with copy of ParkingLocationView(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ParkingLocationView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of ParkingLocationView(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ParkingLocationView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in ParkingLocationView.directionsButton.getter()
{
  v1 = *(type metadata accessor for ParkingLocationView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return closure #1 in ParkingLocationView.directionsButton.getter(v2);
}

uint64_t closure #1 in closure #1 in ParkingLocationView.directionsButton.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SnippetUI15InteractionTypeOSgMd, &_s9SnippetUI15InteractionTypeOSgMR);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v18 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit14ActionPropertyVSgMd, &_s10SnippetKit14ActionPropertyVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v18 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SnippetUI21StandardActionHandlerVSgMd, &_s9SnippetUI21StandardActionHandlerVSgMR);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v18 - v7;
  type metadata accessor for ParkingLocationView(0);
  ActionHandler.wrappedValue.getter();
  v9 = type metadata accessor for StandardActionHandler();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of StandardActionHandler?(v8, &_s9SnippetUI21StandardActionHandlerVSgMd, &_s9SnippetUI21StandardActionHandlerVSgMR);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10SnippetKit24ActionElementConvertible_pGMd, &_ss23_ContiguousArrayStorageCy10SnippetKit24ActionElementConvertible_pGMR);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_24FF88410;
  v13 = type metadata accessor for Command();
  v14 = MEMORY[0x277D63770];
  *(v12 + 56) = v13;
  *(v12 + 64) = v14;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v12 + 32));
  *boxed_opaque_existential_1 = ParkingLocationView.navCommand.getter();
  *(boxed_opaque_existential_1 + 8) = 0;
  (*(*(v13 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D63710], v13);
  ActionProperty.init(_:)();
  v16 = type metadata accessor for ActionProperty();
  (*(*(v16 - 8) + 56))(v5, 0, 1, v16);
  v17 = type metadata accessor for InteractionType();
  (*(*(v17 - 8) + 56))(v2, 1, 1, v17);
  StandardActionHandler.perform(_:interactionType:)();
  outlined destroy of StandardActionHandler?(v2, &_s9SnippetUI15InteractionTypeOSgMd, &_s9SnippetUI15InteractionTypeOSgMR);
  outlined destroy of StandardActionHandler?(v5, &_s10SnippetKit14ActionPropertyVSgMd, &_s10SnippetKit14ActionPropertyVSgMR);
  return (*(v10 + 8))(v8, v9);
}

uint64_t closure #2 in closure #1 in ParkingLocationView.directionsButton.getter(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5LabelVyAA4TextVAA5ImageVGMd, &_s7SwiftUI5LabelVyAA4TextVAA5ImageVGMR);
  lazy protocol witness table accessor for type TupleView<(ModifiedContent<<<opaque return type of View.mapScope(_:)>>.0, _FlexFrameLayout>, PrimaryHeaderRichView, <<opaque return type of View.separators(_:isOverride:)>>.0)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type Label<Text, Image> and conformance Label<A, B>, &_s7SwiftUI5LabelVyAA4TextVAA5ImageVGMd, &_s7SwiftUI5LabelVyAA4TextVAA5ImageVGMR, MEMORY[0x277CDEFE8]);
  return Label.init(title:icon:)();
}

uint64_t closure #1 in closure #2 in closure #1 in ParkingLocationView.directionsButton.getter(uint64_t a1)
{
  lazy protocol witness table accessor for type String and conformance String();

  return Label<>.init<A>(_:systemImage:)();
}

uint64_t ParkingLocationView.header.getter()
{

  return PrimaryHeaderRichView.init(text1:text2:text3:text4:thumbnail:addTint:)();
}

uint64_t ParkingLocationView.body.getter()
{
  v1 = type metadata accessor for ParkingLocationView(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1 - 8);
  outlined init with copy of ParkingLocationView(v0, &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = swift_allocObject();
  outlined init with take of ParkingLocationView(&v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v5 + v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA0D0PAAE12onTapGesture5count7performQrSi_yyctFQOy07SnippetB003MapD0V_Qo_AA16_FlexFrameLayoutVG_AK017PrimaryHeaderRichD0VAgKE10separators_10isOverrideQr0L3Kit14SeparatorStyleO_SbtFQOyAgKEAT_AUQrAX_SbtFQOyAgAE06buttonY0yQrqd__AA015PrimitiveButtonY0Rd__lFQOyAK015ButtonContainerD0V_AK08RFButtonY0VQo__Qo__Qo_tGMd, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA0D0PAAE12onTapGesture5count7performQrSi_yyctFQOy07SnippetB003MapD0V_Qo_AA16_FlexFrameLayoutVG_AK017PrimaryHeaderRichD0VAgKE10separators_10isOverrideQr0L3Kit14SeparatorStyleO_SbtFQOyAgKEAT_AUQrAX_SbtFQOyAgAE06buttonY0yQrqd__AA015PrimitiveButtonY0Rd__lFQOyAK015ButtonContainerD0V_AK08RFButtonY0VQo__Qo__Qo_tGMR);
  lazy protocol witness table accessor for type TupleView<(ModifiedContent<<<opaque return type of View.mapScope(_:)>>.0, _FlexFrameLayout>, PrimaryHeaderRichView, <<opaque return type of View.separators(_:isOverride:)>>.0)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type TupleView<(ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _FlexFrameLayout>, PrimaryHeaderRichView, <<opaque return type of View.separators(_:isOverride:)>>.0)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA0D0PAAE12onTapGesture5count7performQrSi_yyctFQOy07SnippetB003MapD0V_Qo_AA16_FlexFrameLayoutVG_AK017PrimaryHeaderRichD0VAgKE10separators_10isOverrideQr0L3Kit14SeparatorStyleO_SbtFQOyAgKEAT_AUQrAX_SbtFQOyAgAE06buttonY0yQrqd__AA015PrimitiveButtonY0Rd__lFQOyAK015ButtonContainerD0V_AK08RFButtonY0VQo__Qo__Qo_tGMd, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA0D0PAAE12onTapGesture5count7performQrSi_yyctFQOy07SnippetB003MapD0V_Qo_AA16_FlexFrameLayoutVG_AK017PrimaryHeaderRichD0VAgKE10separators_10isOverrideQr0L3Kit14SeparatorStyleO_SbtFQOyAgKEAT_AUQrAX_SbtFQOyAgAE06buttonY0yQrqd__AA015PrimitiveButtonY0Rd__lFQOyAK015ButtonContainerD0V_AK08RFButtonY0VQo__Qo__Qo_tGMR, MEMORY[0x277CE14C8]);
  return ComponentStack.init(content:)();
}

uint64_t closure #1 in ParkingLocationView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v58[1] = a1;
  v69 = a2;
  v62 = type metadata accessor for SeparatorStyle();
  v61 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v60 = v58 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP07SnippetB0E10separators_10isOverrideQr0D3Kit14SeparatorStyleO_SbtFQOyAcAE06buttonJ0yQrqd__AA015PrimitiveButtonJ0Rd__lFQOyAD0m9ContainerC0V_AD08RFButtonJ0VQo__Qo_Md, &_s7SwiftUI4ViewP07SnippetB0E10separators_10isOverrideQr0D3Kit14SeparatorStyleO_SbtFQOyAcAE06buttonJ0yQrqd__AA015PrimitiveButtonJ0Rd__lFQOyAD0m9ContainerC0V_AD08RFButtonJ0VQo__Qo_MR);
  v67 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v59 = v58 - v3;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP07SnippetB0E10separators_10isOverrideQr0D3Kit14SeparatorStyleO_SbtFQOyAcDEAE_AFQrAI_SbtFQOyAcAE06buttonJ0yQrqd__AA015PrimitiveButtonJ0Rd__lFQOyAD0m9ContainerC0V_AD08RFButtonJ0VQo__Qo__Qo_Md, &_s7SwiftUI4ViewP07SnippetB0E10separators_10isOverrideQr0D3Kit14SeparatorStyleO_SbtFQOyAcDEAE_AFQrAI_SbtFQOyAcAE06buttonJ0yQrqd__AA015PrimitiveButtonJ0Rd__lFQOyAD0m9ContainerC0V_AD08RFButtonJ0VQo__Qo__Qo_MR);
  v75 = *(v68 - 8);
  v4 = MEMORY[0x28223BE20](v68);
  v65 = v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v73 = v58 - v6;
  v64 = type metadata accessor for PrimaryHeaderRichView();
  v74 = *(v64 - 8);
  v7 = MEMORY[0x28223BE20](v64);
  v63 = v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v71 = v58 - v9;
  v10 = type metadata accessor for MapView();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE12onTapGesture5count7performQrSi_yyctFQOy07SnippetB003MapC0V_Qo_Md, &_s7SwiftUI4ViewPAAE12onTapGesture5count7performQrSi_yyctFQOy07SnippetB003MapC0V_Qo_MR);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = v58 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE12onTapGesture5count7performQrSi_yyctFQOy07SnippetB003MapE0V_Qo_AA16_FlexFrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE12onTapGesture5count7performQrSi_yyctFQOy07SnippetB003MapE0V_Qo_AA16_FlexFrameLayoutVGMR);
  v19 = v18 - 8;
  v20 = MEMORY[0x28223BE20](v18);
  v72 = v58 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = v58 - v23;
  MEMORY[0x28223BE20](v22);
  v70 = v58 - v25;
  ParkingLocationView.mapView.getter();
  _s9SnippetUI19ButtonContainerViewVAC05SwiftB00E0AAWlTm_0(&lazy protocol witness table cache variable for type MapView and conformance MapView, MEMORY[0x277D63F78], MEMORY[0x277D63F70]);
  View.onTapGesture(count:perform:)();
  (*(v11 + 8))(v13, v10);
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  (*(v15 + 32))(v24, v17, v14);
  v26 = &v24[*(v19 + 44)];
  v27 = v85;
  *(v26 + 4) = v84;
  *(v26 + 5) = v27;
  *(v26 + 6) = v86;
  v28 = v81;
  *v26 = v80;
  *(v26 + 1) = v28;
  v29 = v83;
  *(v26 + 2) = v82;
  *(v26 + 3) = v29;
  v30 = v70;
  sub_24FF71574(v24, v70);
  v31 = v71;
  ParkingLocationView.header.getter();
  v32 = v59;
  ParkingLocationView.directionsButton.getter(v59);
  v33 = v61;
  v34 = v60;
  v35 = v62;
  (*(v61 + 104))(v60, *MEMORY[0x277D62F40], v62);
  v36 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonE0Rd__lFQOy07SnippetB00g9ContainerC0V_AF08RFButtonE0VQo_Md, &_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonE0Rd__lFQOy07SnippetB00g9ContainerC0V_AF08RFButtonE0VQo_MR);
  v37 = type metadata accessor for ButtonContainerView();
  v38 = type metadata accessor for RFButtonStyle();
  v39 = _s9SnippetUI19ButtonContainerViewVAC05SwiftB00E0AAWlTm_0(&lazy protocol witness table cache variable for type ButtonContainerView and conformance ButtonContainerView, MEMORY[0x277D63D38], MEMORY[0x277D63D20]);
  v40 = _s9SnippetUI19ButtonContainerViewVAC05SwiftB00E0AAWlTm_0(&lazy protocol witness table cache variable for type RFButtonStyle and conformance RFButtonStyle, MEMORY[0x277D63B70], MEMORY[0x277D63B60]);
  v76 = v37;
  v77 = v38;
  v78 = v39;
  v79 = v40;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v76 = v36;
  v77 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v42 = v73;
  v43 = v66;
  View.separators(_:isOverride:)();
  (*(v33 + 8))(v34, v35);
  (*(v67 + 8))(v32, v43);
  v44 = v72;
  sub_24FF715E4(v30, v72);
  v45 = *(v74 + 16);
  v46 = v63;
  v47 = v31;
  v48 = v64;
  v45(v63, v47, v64);
  v49 = *(v75 + 16);
  v50 = v65;
  v51 = v68;
  v49(v65, v42, v68);
  v52 = v44;
  v53 = v69;
  sub_24FF715E4(v52, v69);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE12onTapGesture5count7performQrSi_yyctFQOy07SnippetB003MapE0V_Qo_AA16_FlexFrameLayoutVG_AI017PrimaryHeaderRichE0VAeIE10separators_10isOverrideQr0K3Kit14SeparatorStyleO_SbtFQOyAeIEAR_ASQrAV_SbtFQOyAeAE06buttonX0yQrqd__AA015PrimitiveButtonX0Rd__lFQOyAI015ButtonContainerE0V_AI08RFButtonX0VQo__Qo__Qo_tMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE12onTapGesture5count7performQrSi_yyctFQOy07SnippetB003MapE0V_Qo_AA16_FlexFrameLayoutVG_AI017PrimaryHeaderRichE0VAeIE10separators_10isOverrideQr0K3Kit14SeparatorStyleO_SbtFQOyAeIEAR_ASQrAV_SbtFQOyAeAE06buttonX0yQrqd__AA015PrimitiveButtonX0Rd__lFQOyAI015ButtonContainerE0V_AI08RFButtonX0VQo__Qo__Qo_tMR);
  v45((v53 + *(v54 + 48)), v46, v48);
  v49((v53 + *(v54 + 64)), v50, v51);
  v55 = *(v75 + 8);
  v55(v73, v51);
  v56 = *(v74 + 8);
  v56(v71, v48);
  sub_24FF71654(v70);
  v55(v50, v51);
  v56(v46, v48);
  return sub_24FF71654(v72);
}

void closure #1 in closure #1 in ParkingLocationView.body.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v11 - v1;
  v3 = [objc_opt_self() defaultWorkspace];
  if (v3)
  {
    v4 = v3;
    URL.init(string:)();
    v5 = type metadata accessor for URL();
    v6 = *(v5 - 8);
    v8 = 0;
    if ((*(v6 + 48))(v2, 1, v5) != 1)
    {
      URL._bridgeToObjectiveC()(v7);
      v8 = v9;
      (*(v6 + 8))(v2, v5);
    }

    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v4 openSensitiveURL:v8 withOptions:isa];
  }

  else
  {
    __break(1u);
  }
}

uint64_t ParkingLocationView.init(model:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  *(a2 + 32) = a1[2];
  *(a2 + 48) = v3;
  *(a2 + 64) = a1[4];
  v4 = a1[1];
  *a2 = *a1;
  *(a2 + 16) = v4;
  type metadata accessor for RFMapMarker(0, &lazy cache variable for type metadata for OS_os_log, 0x277D86200);
  *(a2 + 80) = OS_os_log.init(subsystem:category:)();
  type metadata accessor for ParkingLocationView(0);
  return ActionHandler.init()();
}

uint64_t protocol witness for View.body.getter in conformance ParkingLocationView(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](a1 - 8);
  outlined init with copy of ParkingLocationView(v1, &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = swift_allocObject();
  outlined init with take of ParkingLocationView(&v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v5 + v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA0D0PAAE12onTapGesture5count7performQrSi_yyctFQOy07SnippetB003MapD0V_Qo_AA16_FlexFrameLayoutVG_AK017PrimaryHeaderRichD0VAgKE10separators_10isOverrideQr0L3Kit14SeparatorStyleO_SbtFQOyAgKEAT_AUQrAX_SbtFQOyAgAE06buttonY0yQrqd__AA015PrimitiveButtonY0Rd__lFQOyAK015ButtonContainerD0V_AK08RFButtonY0VQo__Qo__Qo_tGMd, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA0D0PAAE12onTapGesture5count7performQrSi_yyctFQOy07SnippetB003MapD0V_Qo_AA16_FlexFrameLayoutVG_AK017PrimaryHeaderRichD0VAgKE10separators_10isOverrideQr0L3Kit14SeparatorStyleO_SbtFQOyAgKEAT_AUQrAX_SbtFQOyAgAE06buttonY0yQrqd__AA015PrimitiveButtonY0Rd__lFQOyAK015ButtonContainerD0V_AK08RFButtonY0VQo__Qo__Qo_tGMR);
  lazy protocol witness table accessor for type TupleView<(ModifiedContent<<<opaque return type of View.mapScope(_:)>>.0, _FlexFrameLayout>, PrimaryHeaderRichView, <<opaque return type of View.separators(_:isOverride:)>>.0)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type TupleView<(ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _FlexFrameLayout>, PrimaryHeaderRichView, <<opaque return type of View.separators(_:isOverride:)>>.0)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA0D0PAAE12onTapGesture5count7performQrSi_yyctFQOy07SnippetB003MapD0V_Qo_AA16_FlexFrameLayoutVG_AK017PrimaryHeaderRichD0VAgKE10separators_10isOverrideQr0L3Kit14SeparatorStyleO_SbtFQOyAgKEAT_AUQrAX_SbtFQOyAgAE06buttonY0yQrqd__AA015PrimitiveButtonY0Rd__lFQOyAK015ButtonContainerD0V_AK08RFButtonY0VQo__Qo__Qo_tGMd, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA0D0PAAE12onTapGesture5count7performQrSi_yyctFQOy07SnippetB003MapD0V_Qo_AA16_FlexFrameLayoutVG_AK017PrimaryHeaderRichD0VAgKE10separators_10isOverrideQr0L3Kit14SeparatorStyleO_SbtFQOyAgKEAT_AUQrAX_SbtFQOyAgAE06buttonY0yQrqd__AA015PrimitiveButtonY0Rd__lFQOyAK015ButtonContainerD0V_AK08RFButtonY0VQo__Qo__Qo_tGMR, MEMORY[0x277CE14C8]);
  return ComponentStack.init(content:)();
}

uint64_t static ParkingLocationView_Previews.previews.getter()
{
  if (one-time initialization token for pickupTruck != -1)
  {
    swift_once();
  }

  v0 = *(pickupTruck.note.value._countAndFlagsBits + 48);
  v2 = *pickupTruck.note.value._countAndFlagsBits;
  v1 = *(pickupTruck.note.value._countAndFlagsBits + 16);
  v9[2] = *(pickupTruck.note.value._countAndFlagsBits + 32);
  v9[3] = v0;
  v9[0] = v2;
  v9[1] = v1;
  v3 = *(pickupTruck.note.value._countAndFlagsBits + 16);
  v10 = *pickupTruck.note.value._countAndFlagsBits;
  v11 = v3;
  v4 = *(pickupTruck.note.value._countAndFlagsBits + 48);
  v12 = *(pickupTruck.note.value._countAndFlagsBits + 32);
  v13 = v4;
  v6[4] = v10;
  v6[5] = v11;
  v6[6] = v12;
  v6[7] = v4;
  v7 = 0x6F69746365726944;
  v8 = 0xEA0000000000736ELL;
  outlined init with copy of GeoParkedCar(v9, v6);
  type metadata accessor for ParkingLocationView(0);
  lazy protocol witness table accessor for type GeoDataModels.ParkingLocationDataModel and conformance GeoDataModels.ParkingLocationDataModel();
  _s9SnippetUI19ButtonContainerViewVAC05SwiftB00E0AAWlTm_0(&lazy protocol witness table cache variable for type ParkingLocationView and conformance ParkingLocationView, type metadata accessor for ParkingLocationView, &protocol conformance descriptor for ParkingLocationView);
  return SnippetPreview.init(snippetModel:content:)();
}

uint64_t pickupTruck.unsafeMutableAddressor()
{
  if (one-time initialization token for pickupTruck != -1)
  {
    swift_once();
  }

  return pickupTruck.note.value._countAndFlagsBits;
}

uint64_t implicit closure #1 in static ParkingLocationView_Previews.previews.getter@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v10 = a1[2];
  v11 = v3;
  v12 = a1[4];
  v4 = v12;
  v5 = a1[1];
  v9[0] = *a1;
  v6 = v9[0];
  v9[1] = v5;
  *(a2 + 32) = v10;
  *(a2 + 48) = v3;
  *(a2 + 64) = v4;
  *a2 = v6;
  *(a2 + 16) = v5;
  type metadata accessor for RFMapMarker(0, &lazy cache variable for type metadata for OS_os_log, 0x277D86200);
  outlined init with copy of GeoDataModels.ParkingLocationDataModel(v9, &v8);
  *(a2 + 80) = OS_os_log.init(subsystem:category:)();
  type metadata accessor for ParkingLocationView(0);
  return ActionHandler.init()();
}

uint64_t protocol witness for static PreviewProvider.previews.getter in conformance ParkingLocationView_Previews()
{
  if (one-time initialization token for pickupTruck != -1)
  {
    swift_once();
  }

  v0 = *(pickupTruck.note.value._countAndFlagsBits + 48);
  v2 = *pickupTruck.note.value._countAndFlagsBits;
  v1 = *(pickupTruck.note.value._countAndFlagsBits + 16);
  v9[2] = *(pickupTruck.note.value._countAndFlagsBits + 32);
  v9[3] = v0;
  v9[0] = v2;
  v9[1] = v1;
  v3 = *(pickupTruck.note.value._countAndFlagsBits + 16);
  v10 = *pickupTruck.note.value._countAndFlagsBits;
  v11 = v3;
  v4 = *(pickupTruck.note.value._countAndFlagsBits + 48);
  v12 = *(pickupTruck.note.value._countAndFlagsBits + 32);
  v13 = v4;
  v6[4] = v10;
  v6[5] = v11;
  v6[6] = v12;
  v6[7] = v4;
  v7 = 0x6F69746365726944;
  v8 = 0xEA0000000000736ELL;
  outlined init with copy of GeoParkedCar(v9, v6);
  type metadata accessor for ParkingLocationView(0);
  lazy protocol witness table accessor for type GeoDataModels.ParkingLocationDataModel and conformance GeoDataModels.ParkingLocationDataModel();
  _s9SnippetUI19ButtonContainerViewVAC05SwiftB00E0AAWlTm_0(&lazy protocol witness table cache variable for type ParkingLocationView and conformance ParkingLocationView, type metadata accessor for ParkingLocationView, &protocol conformance descriptor for ParkingLocationView);
  return SnippetPreview.init(snippetModel:content:)();
}

uint64_t protocol witness for static _PreviewProvider._previews.getter in conformance ParkingLocationView_Previews(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ParkingLocationView_Previews and conformance ParkingLocationView_Previews();

  return MEMORY[0x28212D8E8](a1, v2);
}

uint64_t protocol witness for static _PreviewProvider._platform.getter in conformance ParkingLocationView_Previews(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ParkingLocationView_Previews and conformance ParkingLocationView_Previews();

  return MEMORY[0x28212D8D8](a1, v2);
}

double one-time initialization function for pickupTruck()
{
  v0 = swift_slowAlloc();
  pickupTruck.note.value._countAndFlagsBits = v0;
  *v0 = 0;
  *(v0 + 8) = 0;
  *(v0 + 16) = 0xD000000000000024;
  *(v0 + 24) = 0x800000024FF8A730;
  *(v0 + 32) = 0x432064656B726150;
  *(v0 + 40) = 0xEA00000000007261;
  result = 37.3349;
  *(v0 + 48) = xmmword_24FF88420;
  return result;
}

unint64_t lazy protocol witness table accessor for type GeoDataModels.ParkingLocationDataModel and conformance GeoDataModels.ParkingLocationDataModel()
{
  result = lazy protocol witness table cache variable for type GeoDataModels.ParkingLocationDataModel and conformance GeoDataModels.ParkingLocationDataModel;
  if (!lazy protocol witness table cache variable for type GeoDataModels.ParkingLocationDataModel and conformance GeoDataModels.ParkingLocationDataModel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoDataModels.ParkingLocationDataModel and conformance GeoDataModels.ParkingLocationDataModel);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GeoDataModels.ParkingLocationDataModel and conformance GeoDataModels.ParkingLocationDataModel;
  if (!lazy protocol witness table cache variable for type GeoDataModels.ParkingLocationDataModel and conformance GeoDataModels.ParkingLocationDataModel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoDataModels.ParkingLocationDataModel and conformance GeoDataModels.ParkingLocationDataModel);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GeoDataModels.ParkingLocationDataModel and conformance GeoDataModels.ParkingLocationDataModel;
  if (!lazy protocol witness table cache variable for type GeoDataModels.ParkingLocationDataModel and conformance GeoDataModels.ParkingLocationDataModel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoDataModels.ParkingLocationDataModel and conformance GeoDataModels.ParkingLocationDataModel);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ParkingLocationView_Previews and conformance ParkingLocationView_Previews()
{
  result = lazy protocol witness table cache variable for type ParkingLocationView_Previews and conformance ParkingLocationView_Previews;
  if (!lazy protocol witness table cache variable for type ParkingLocationView_Previews and conformance ParkingLocationView_Previews)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParkingLocationView_Previews and conformance ParkingLocationView_Previews);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ParkingLocationView_Previews and conformance ParkingLocationView_Previews;
  if (!lazy protocol witness table cache variable for type ParkingLocationView_Previews and conformance ParkingLocationView_Previews)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParkingLocationView_Previews and conformance ParkingLocationView_Previews);
  }

  return result;
}

uint64_t type metadata completion function for ParkingLocationView(uint64_t a1)
{
  result = type metadata accessor for RFMapMarker(319, &lazy cache variable for type metadata for OS_os_log, 0x277D86200);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for ActionHandler();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t _s9SnippetUI19ButtonContainerViewVAC05SwiftB00E0AAWlTm_0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t partial apply for closure #1 in ParkingLocationView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ParkingLocationView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return closure #1 in ParkingLocationView.body.getter(v4, a1);
}

uint64_t objectdestroyTm()
{
  v1 = (type metadata accessor for ParkingLocationView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[8];
  v6 = type metadata accessor for ActionHandler();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t partial apply for closure #1 in closure #1 in ParkingLocationView.directionsButton.getter()
{
  type metadata accessor for ParkingLocationView(0);

  return closure #1 in closure #1 in ParkingLocationView.directionsButton.getter();
}

uint64_t GeoParkedCar.label.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

void __swiftcall GeoParkedCar.init(note:localizedAddress:locationInfo:)(GeoUIFramework::GeoParkedCar *__return_ptr retstr, Swift::String_optional note, Swift::String_optional localizedAddress, GeoUIFramework::StandardMapData locationInfo)
{
  v4 = *locationInfo.label._countAndFlagsBits;
  v5 = *(locationInfo.label._countAndFlagsBits + 8);
  retstr->note = note;
  retstr->localizedAddress = localizedAddress;
  retstr->locationInfo.label._countAndFlagsBits = v4;
  retstr->locationInfo.label._object = v5;
  *&retstr->locationInfo.latitude = *(locationInfo.label._countAndFlagsBits + 16);
}

uint64_t GeoParkedCar.note.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t GeoParkedCar.localizedAddress.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t GeoParkedCar.locationInfo.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  *a1 = *(v1 + 32);
  *(a1 + 8) = v2;
  *(a1 + 16) = *(v1 + 48);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance GeoParkedCar.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x25305DBD0](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance GeoParkedCar.CodingKeys(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  MEMORY[0x25305DBD0](v2);
  return Hasher._finalize()();
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance GeoParkedCar.CodingKeys()
{
  v1 = 0xD000000000000010;
  if (*v0 != 1)
  {
    v1 = 0x6E6F697461636F6CLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1702129518;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance GeoParkedCar.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized GeoParkedCar.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance GeoParkedCar.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type GeoParkedCar.CodingKeys and conformance GeoParkedCar.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance GeoParkedCar.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type GeoParkedCar.CodingKeys and conformance GeoParkedCar.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t GeoParkedCar.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14GeoUIFramework0D9ParkedCarV10CodingKeys33_D00CE07CA4CDF230011B65C15BB39B08LLOGMd, &_ss22KeyedEncodingContainerVy14GeoUIFramework0D9ParkedCarV10CodingKeys33_D00CE07CA4CDF230011B65C15BB39B08LLOGMR);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v15 - v5;
  v7 = v1[2];
  v18 = v1[3];
  v19 = v7;
  v8 = v1[4];
  v16 = v1[5];
  v17 = v8;
  v9 = v1[6];
  v10 = v1[7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type GeoParkedCar.CodingKeys and conformance GeoParkedCar.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v21) = 0;
  v11 = v20;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v11)
  {
    v13 = v16;
    v14 = v17;
    LOBYTE(v21) = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v21 = v14;
    v22 = v13;
    v23 = v9;
    v24 = v10;
    v25 = 2;
    lazy protocol witness table accessor for type StandardMapData and conformance StandardMapData();

    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v4 + 8))(v6, v3);
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type GeoParkedCar.CodingKeys and conformance GeoParkedCar.CodingKeys()
{
  result = lazy protocol witness table cache variable for type GeoParkedCar.CodingKeys and conformance GeoParkedCar.CodingKeys;
  if (!lazy protocol witness table cache variable for type GeoParkedCar.CodingKeys and conformance GeoParkedCar.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoParkedCar.CodingKeys and conformance GeoParkedCar.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GeoParkedCar.CodingKeys and conformance GeoParkedCar.CodingKeys;
  if (!lazy protocol witness table cache variable for type GeoParkedCar.CodingKeys and conformance GeoParkedCar.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoParkedCar.CodingKeys and conformance GeoParkedCar.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GeoParkedCar.CodingKeys and conformance GeoParkedCar.CodingKeys;
  if (!lazy protocol witness table cache variable for type GeoParkedCar.CodingKeys and conformance GeoParkedCar.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoParkedCar.CodingKeys and conformance GeoParkedCar.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GeoParkedCar.CodingKeys and conformance GeoParkedCar.CodingKeys;
  if (!lazy protocol witness table cache variable for type GeoParkedCar.CodingKeys and conformance GeoParkedCar.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoParkedCar.CodingKeys and conformance GeoParkedCar.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StandardMapData and conformance StandardMapData()
{
  result = lazy protocol witness table cache variable for type StandardMapData and conformance StandardMapData;
  if (!lazy protocol witness table cache variable for type StandardMapData and conformance StandardMapData)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StandardMapData and conformance StandardMapData);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StandardMapData and conformance StandardMapData;
  if (!lazy protocol witness table cache variable for type StandardMapData and conformance StandardMapData)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StandardMapData and conformance StandardMapData);
  }

  return result;
}

uint64_t GeoParkedCar.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy14GeoUIFramework0D9ParkedCarV10CodingKeys33_D00CE07CA4CDF230011B65C15BB39B08LLOGMd, &_ss22KeyedDecodingContainerVy14GeoUIFramework0D9ParkedCarV10CodingKeys33_D00CE07CA4CDF230011B65C15BB39B08LLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v22 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type GeoParkedCar.CodingKeys and conformance GeoParkedCar.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v29[0]) = 0;
  v9 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v11 = v10;
  v24 = v9;
  LOBYTE(v29[0]) = 1;
  v12 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v14 = v13;
  v23 = v12;
  v34 = 2;
  lazy protocol witness table accessor for type StandardMapData and conformance StandardMapData();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v6 + 8))(v8, v5);
  v15 = v32;
  v16 = v33;
  v17 = v24;
  *&v25 = v24;
  v18 = v23;
  *(&v25 + 1) = v11;
  *&v26 = v23;
  *(&v26 + 1) = v14;
  v27 = v32;
  v28 = v33;
  v19 = v26;
  *a2 = v25;
  a2[1] = v19;
  v20 = v28;
  a2[2] = v27;
  a2[3] = v20;
  outlined init with copy of GeoParkedCar(&v25, v29);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v29[0] = v17;
  v29[1] = v11;
  v29[2] = v18;
  v29[3] = v14;
  v30 = v15;
  v31 = v16;
  return outlined destroy of GeoParkedCar(v29);
}

uint64_t __swift_destroy_boxed_opaque_existential_1(void *a1)
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

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
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

uint64_t getEnumTagSinglePayload for GeoParkedCar(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for GeoParkedCar(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for GeoParkedCar.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for GeoParkedCar.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t specialized GeoParkedCar.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1702129518 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x800000024FF8A7E0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6F697461636F6CLL && a2 == 0xEC0000006F666E49)
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

uint64_t ContactDisambiguationView.model.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  *a1 = *v1;
  a1[1] = v2;
  a1[2] = v3;
}

uint64_t ContactDisambiguationView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v41 = a1;
  v2 = type metadata accessor for ContactDisambiguationView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7ForEachVySay14GeoUIFramework0E7ContactVGAfA4ViewP07SnippetB0E15componentTapped12isNavigation7performQrSb_yyctFQOyAJ014SimpleItemRichH0V_Qo_GMd, &_s7SwiftUI7ForEachVySay14GeoUIFramework0E7ContactVGAfA4ViewP07SnippetB0E15componentTapped12isNavigation7performQrSb_yyctFQOyAJ014SimpleItemRichH0V_Qo_GMR);
  v5 = *(v40 - 8);
  v39 = *(v5 + 64);
  v6 = MEMORY[0x28223BE20](v40);
  v38 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v32 - v8;
  v37 = type metadata accessor for PrimaryHeaderRichView();
  v10 = *(v37 - 8);
  v36 = *(v10 + 64);
  v11 = MEMORY[0x28223BE20](v37);
  v35 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v32 - v13;
  v16 = *v1;
  v15 = v1[1];
  v56 = MEMORY[0x277D837D0];
  v57 = MEMORY[0x277D63F88];
  v54 = v16;
  v55 = v15;
  v53 = 0;
  v51 = 0u;
  v52 = 0u;
  v50 = 0;
  v48 = 0u;
  v49 = 0u;
  v47 = 0;
  v46 = 0u;
  v45 = 0u;
  v44 = 0;
  v43 = 0u;
  v42 = 0u;

  v33 = v14;
  PrimaryHeaderRichView.init(text1:text2:text3:text4:thumbnail:addTint:)();
  *&v51 = v1[2];
  KeyPath = swift_getKeyPath();
  outlined init with copy of ContactDisambiguationView(v1, &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ContactDisambiguationView);
  v17 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v18 = swift_allocObject();
  outlined init with take of ContactDisambiguationView(&v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17, type metadata accessor for ContactDisambiguationView);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay14GeoUIFramework0A7ContactVGMd, &_sSay14GeoUIFramework0A7ContactVGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP07SnippetB0E15componentTapped12isNavigation7performQrSb_yyctFQOyAD014SimpleItemRichC0V_Qo_Md, &_s7SwiftUI4ViewP07SnippetB0E15componentTapped12isNavigation7performQrSb_yyctFQOyAD014SimpleItemRichC0V_Qo_MR);
  lazy protocol witness table accessor for type TupleView<(ModifiedContent<<<opaque return type of View.mapScope(_:)>>.0, _FlexFrameLayout>, PrimaryHeaderRichView, <<opaque return type of View.separators(_:isOverride:)>>.0)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type [GeoContact] and conformance [A], &_sSay14GeoUIFramework0A7ContactVGMd, &_sSay14GeoUIFramework0A7ContactVGMR, MEMORY[0x277D83980]);
  lazy protocol witness table accessor for type GeoContact and conformance GeoContact(&lazy protocol witness table cache variable for type GeoContact and conformance GeoContact, type metadata accessor for GeoContact, &protocol conformance descriptor for GeoContact);
  v19 = type metadata accessor for SimpleItemRichView();
  v20 = lazy protocol witness table accessor for type GeoContact and conformance GeoContact(&lazy protocol witness table cache variable for type SimpleItemRichView and conformance SimpleItemRichView, MEMORY[0x277D63D00], MEMORY[0x277D63CF8]);
  v54 = v19;
  v55 = v20;
  swift_getOpaqueTypeConformance2();
  v21 = v9;
  ForEach<>.init(_:id:content:)();
  v22 = v35;
  v23 = v37;
  (*(v10 + 16))(v35, v14, v37);
  v24 = v38;
  v25 = v21;
  v26 = v21;
  v27 = v40;
  (*(v5 + 16))(v38, v25, v40);
  v28 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v29 = (v36 + *(v5 + 80) + v28) & ~*(v5 + 80);
  v30 = swift_allocObject();
  (*(v10 + 32))(v30 + v28, v22, v23);
  (*(v5 + 32))(v30 + v29, v24, v27);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SnippetUI26DisambiguationStandardViewVyAA017PrimaryHeaderRichE0V05SwiftB07ForEachVySay14GeoUIFramework0L7ContactVGAkF0E0PAAE15componentTapped12isNavigation7performQrSb_yyctFQOyAA010SimpleItemhE0V_Qo_GGMd, &_s9SnippetUI26DisambiguationStandardViewVyAA017PrimaryHeaderRichE0V05SwiftB07ForEachVySay14GeoUIFramework0L7ContactVGAkF0E0PAAE15componentTapped12isNavigation7performQrSb_yyctFQOyAA010SimpleItemhE0V_Qo_GGMR);
  lazy protocol witness table accessor for type TupleView<(ModifiedContent<<<opaque return type of View.mapScope(_:)>>.0, _FlexFrameLayout>, PrimaryHeaderRichView, <<opaque return type of View.separators(_:isOverride:)>>.0)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type DisambiguationStandardView<PrimaryHeaderRichView, ForEach<[GeoContact], GeoContact, <<opaque return type of View.componentTapped(isNavigation:perform:)>>.0>> and conformance DisambiguationStandardView<A, B>, &_s9SnippetUI26DisambiguationStandardViewVyAA017PrimaryHeaderRichE0V05SwiftB07ForEachVySay14GeoUIFramework0L7ContactVGAkF0E0PAAE15componentTapped12isNavigation7performQrSb_yyctFQOyAA010SimpleItemhE0V_Qo_GGMd, &_s9SnippetUI26DisambiguationStandardViewVyAA017PrimaryHeaderRichE0V05SwiftB07ForEachVySay14GeoUIFramework0L7ContactVGAkF0E0PAAE15componentTapped12isNavigation7performQrSb_yyctFQOyAA010SimpleItemhE0V_Qo_GGMR, MEMORY[0x277D63EB8]);
  ComponentStack.init(content:)();
  (*(v5 + 8))(v26, v27);
  return (*(v10 + 8))(v33, v23);
}

uint64_t type metadata accessor for ContactDisambiguationView(uint64_t a1)
{
  result = type metadata singleton initialization cache for ContactDisambiguationView;
  if (!type metadata singleton initialization cache for ContactDisambiguationView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t closure #1 in ContactDisambiguationView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v71 = a2;
  v78 = a3;
  v4 = type metadata accessor for GeoContact(0);
  v72 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v74 = v5;
  v75 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ContactDisambiguationView(0);
  v68 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v69 = v7;
  v70 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SimpleItemRichView();
  v76 = *(v8 - 8);
  v77 = v8;
  MEMORY[0x28223BE20](v8);
  v73 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = type metadata accessor for ImageElement.ImageStyle();
  v66 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v65 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ImageElement.SourceType();
  v62 = *(v11 - 8);
  v12 = v62;
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v61 - v16;
  v18 = type metadata accessor for ImageElement();
  MEMORY[0x28223BE20](v18 - 8);
  v63 = &v61 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = type metadata accessor for RFImageView();
  v67 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v21 = &v61 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = a1;
  GeoContact.image.getter();
  v22 = *(v12 + 104);
  v22(v17, *MEMORY[0x277D62C90], v11);
  v64 = *(a1 + 72) & 0xFFFFFFFFFFFFFFFELL;
  v61 = 0x800000024FF8A620;
  if (v64 == 2)
  {
    v23 = 0xD000000000000013;
  }

  else
  {
    v23 = 0x6C7070612E6D6F63;
  }

  if (v64 == 2)
  {
    v24 = 0x800000024FF8A620;
  }

  else
  {
    v24 = 0xEE007370614D2E65;
  }

  (*(v66 + 104))(v65, *MEMORY[0x277D62B78], v79);
  v66 = v23;
  ImageElement.AppIcon.init(_:imageStyle:)();
  v22(v15, *MEMORY[0x277D62C88], v11);
  static ImageElement.badgedImage(image:badge:)();
  v25 = *(v62 + 8);
  v25(v15, v11);
  v25(v17, v11);
  v26 = v24;
  v27 = v61;
  v79 = v21;
  RFImageView.init(_:)();
  v28 = 5459283;
  v107 = MEMORY[0x277D837D0];
  v108 = MEMORY[0x277D63F88];
  v29 = *(v81 + 32);
  v105 = *(v81 + 24);
  v106 = v29;
  v104 = 0;
  v102 = 0u;
  v103 = 0u;
  v101 = 0;
  v99 = 0u;
  v100 = 0u;
  if (v64 == 2 && v27 == v26)
  {

    v30 = 0xE300000000000000;
  }

  else
  {
    v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v31 & 1) == 0)
    {
      v28 = 0;
    }

    v30 = 0xE000000000000000;
    if (v31)
    {
      v30 = 0xE300000000000000;
    }
  }

  v95 = v28;
  v96 = v30;
  lazy protocol witness table accessor for type String and conformance String();
  v32 = Text.init<A>(_:)();
  v34 = v33;
  v36 = v35;
  static Color.green.getter();
  v37 = Text.foregroundColor(_:)();
  v39 = v38;
  v41 = v40;

  outlined consume of Text.Storage(v32, v34, v36 & 1);

  static Font.title2.getter();
  v42 = Text.font(_:)();
  v44 = v43;
  v46 = v45;
  v48 = v47;

  outlined consume of Text.Storage(v37, v39, v41 & 1);

  v97 = MEMORY[0x277CE0BD0];
  v98 = MEMORY[0x277D638F0];
  v49 = swift_allocObject();
  v95 = v49;
  *(v49 + 16) = v42;
  *(v49 + 24) = v44;
  *(v49 + 32) = v46 & 1;
  *(v49 + 40) = v48;
  v94 = 0;
  v92 = 0u;
  v93 = 0u;
  v91 = 0;
  v89 = 0u;
  v90 = 0u;
  v88 = 0;
  v86 = 0u;
  v87 = 0u;
  v85 = 0;
  v83 = 0u;
  v84 = 0u;
  v50 = v80;
  v82[3] = v80;
  v82[4] = MEMORY[0x277D63B18];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v82);
  v52 = v67;
  (*(v67 + 16))(boxed_opaque_existential_1, v79, v50);
  v53 = v73;
  SimpleItemRichView.init(text1:text2:text3:text4:text5:text6:text7:text8:thumbnail:)();
  v54 = v70;
  outlined init with copy of ContactDisambiguationView(v71, v70, type metadata accessor for ContactDisambiguationView);
  v55 = v75;
  outlined init with copy of ContactDisambiguationView(v81, v75, type metadata accessor for GeoContact);
  v56 = (*(v68 + 80) + 16) & ~*(v68 + 80);
  v57 = (v69 + *(v72 + 80) + v56) & ~*(v72 + 80);
  v58 = swift_allocObject();
  outlined init with take of ContactDisambiguationView(v54, v58 + v56, type metadata accessor for ContactDisambiguationView);
  outlined init with take of ContactDisambiguationView(v55, v58 + v57, type metadata accessor for GeoContact);
  lazy protocol witness table accessor for type GeoContact and conformance GeoContact(&lazy protocol witness table cache variable for type SimpleItemRichView and conformance SimpleItemRichView, MEMORY[0x277D63D00], MEMORY[0x277D63CF8]);
  v59 = v77;
  View.componentTapped(isNavigation:perform:)();

  (*(v76 + 8))(v53, v59);
  return (*(v52 + 8))(v79, v80);
}

uint64_t partial apply for closure #1 in ContactDisambiguationView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for ContactDisambiguationView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return closure #1 in ContactDisambiguationView.body.getter(a1, v6, a2);
}

uint64_t closure #1 in closure #1 in ContactDisambiguationView.body.getter(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SnippetUI15InteractionTypeOSgMd, &_s9SnippetUI15InteractionTypeOSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v28 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit14ActionPropertyVSgMd, &_s10SnippetKit14ActionPropertyVSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v28 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SnippetUI21StandardActionHandlerVSgMd, &_s9SnippetUI21StandardActionHandlerVSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v28 - v11;
  v13 = a1[3];
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_24FF6F000, v13, v14, "component tapped", v15, 2u);
    MEMORY[0x25305DF00](v15, -1, -1);
  }

  type metadata accessor for ContactDisambiguationView(0);
  ActionHandler.wrappedValue.getter();
  v16 = type metadata accessor for StandardActionHandler();
  v17 = *(v16 - 8);
  if ((*(v17 + 48))(v12, 1, v16) == 1)
  {
    return outlined destroy of StandardActionHandler?(v12, &_s9SnippetUI21StandardActionHandlerVSgMd, &_s9SnippetUI21StandardActionHandlerVSgMR);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10SnippetKit24ActionElementConvertible_pGMd, &_ss23_ContiguousArrayStorageCy10SnippetKit24ActionElementConvertible_pGMR);
  v19 = swift_allocObject();
  v28 = xmmword_24FF88410;
  *(v19 + 16) = xmmword_24FF88410;
  v29 = a1[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys11AnyHashableV_yptGMd, &_ss23_ContiguousArrayStorageCys11AnyHashableV_yptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = v28;
  v30 = 0x6E65697069636552;
  v31 = 0xE900000000000074;
  v21 = MEMORY[0x277D837D0];
  AnyHashable.init<A>(_:)();
  v23 = *(a2 + 56);
  v22 = *(a2 + 64);
  *(inited + 96) = v21;
  *(inited + 72) = v23;
  *(inited + 80) = v22;

  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of StandardActionHandler?(inited + 32, &_ss11AnyHashableV_yptMd, &_ss11AnyHashableV_yptMR);
  v24 = type metadata accessor for Command();
  v25 = MEMORY[0x277D63770];
  *(v19 + 56) = v24;
  *(v19 + 64) = v25;
  __swift_allocate_boxed_opaque_existential_1((v19 + 32));
  static Command.directInvocation(identifier:payload:isNavigation:)();

  ActionProperty.init(_:)();
  v26 = type metadata accessor for ActionProperty();
  (*(*(v26 - 8) + 56))(v9, 0, 1, v26);
  v27 = type metadata accessor for InteractionType();
  (*(*(v27 - 8) + 56))(v6, 1, 1, v27);
  StandardActionHandler.perform(_:interactionType:)();
  outlined destroy of StandardActionHandler?(v6, &_s9SnippetUI15InteractionTypeOSgMd, &_s9SnippetUI15InteractionTypeOSgMR);
  outlined destroy of StandardActionHandler?(v9, &_s10SnippetKit14ActionPropertyVSgMd, &_s10SnippetKit14ActionPropertyVSgMR);
  return (*(v17 + 8))(v12, v16);
}

uint64_t closure #2 in ContactDisambiguationView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v16[0] = a2;
  v16[1] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7ForEachVySay14GeoUIFramework0E7ContactVGAfA4ViewP07SnippetB0E15componentTapped12isNavigation7performQrSb_yyctFQOyAJ014SimpleItemRichH0V_Qo_GMd, &_s7SwiftUI7ForEachVySay14GeoUIFramework0E7ContactVGAfA4ViewP07SnippetB0E15componentTapped12isNavigation7performQrSb_yyctFQOyAJ014SimpleItemRichH0V_Qo_GMR);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v16 - v6;
  v8 = type metadata accessor for PrimaryHeaderRichView();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  (*(v9 + 16))(v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v8);
  v11 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v12 = swift_allocObject();
  (*(v9 + 32))(v12 + v11, v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
  (*(v5 + 16))(v7, v16[0], v4);
  v13 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v14 = swift_allocObject();
  (*(v5 + 32))(v14 + v13, v7, v4);
  lazy protocol witness table accessor for type GeoContact and conformance GeoContact(&lazy protocol witness table cache variable for type PrimaryHeaderRichView and conformance PrimaryHeaderRichView, MEMORY[0x277D63DC0], MEMORY[0x277D63DB0]);
  lazy protocol witness table accessor for type ForEach<[GeoContact], GeoContact, <<opaque return type of View.componentTapped(isNavigation:perform:)>>.0> and conformance <> ForEach<A, B, C>();
  return DisambiguationStandardView.init(header:content:)();
}

uint64_t partial apply for closure #2 in ContactDisambiguationView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PrimaryHeaderRichView() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7ForEachVySay14GeoUIFramework0E7ContactVGAfA4ViewP07SnippetB0E15componentTapped12isNavigation7performQrSb_yyctFQOyAJ014SimpleItemRichH0V_Qo_GMd, &_s7SwiftUI7ForEachVySay14GeoUIFramework0E7ContactVGAfA4ViewP07SnippetB0E15componentTapped12isNavigation7performQrSb_yyctFQOyAJ014SimpleItemRichH0V_Qo_GMR) - 8);
  v7 = v1 + ((v5 + *(v6 + 80)) & ~*(v6 + 80));

  return closure #2 in ContactDisambiguationView.body.getter(v1 + v4, v7, a1);
}

uint64_t ContactDisambiguationView.init(model:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = *a1;
  *(a2 + 8) = *(a1 + 8);
  type metadata accessor for OS_os_log();
  *(a2 + 24) = OS_os_log.init(subsystem:category:)();
  *(a2 + 32) = 0xD00000000000002CLL;
  *(a2 + 40) = 0x800000024FF8A800;
  type metadata accessor for ContactDisambiguationView(0);
  return ActionHandler.init()();
}

unint64_t type metadata accessor for OS_os_log()
{
  result = lazy cache variable for type metadata for OS_os_log;
  if (!lazy cache variable for type metadata for OS_os_log)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for OS_os_log);
  }

  return result;
}

uint64_t static SampleView_Previews.previews.getter()
{
  if (one-time initialization token for testView1 != -1)
  {
    swift_once();
  }

  type metadata accessor for ContactDisambiguationView(0);
  lazy protocol witness table accessor for type GeoDataModels.ContactDisambiguationDataModel and conformance GeoDataModels.ContactDisambiguationDataModel();
  lazy protocol witness table accessor for type GeoContact and conformance GeoContact(&lazy protocol witness table cache variable for type ContactDisambiguationView and conformance ContactDisambiguationView, type metadata accessor for ContactDisambiguationView, &protocol conformance descriptor for ContactDisambiguationView);

  return SnippetPreview.init(snippetModel:content:)();
}

uint64_t implicit closure #1 in static SampleView_Previews.previews.getter@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = a1[1];
  v4 = a1[2];
  *a2 = *a1;
  a2[1] = v3;
  a2[2] = v4;
  type metadata accessor for OS_os_log();

  a2[3] = OS_os_log.init(subsystem:category:)();
  a2[4] = 0xD00000000000002CLL;
  a2[5] = 0x800000024FF8A800;
  type metadata accessor for ContactDisambiguationView(0);
  return ActionHandler.init()();
}

uint64_t protocol witness for static PreviewProvider.previews.getter in conformance SampleView_Previews()
{
  if (one-time initialization token for testView1 != -1)
  {
    swift_once();
  }

  type metadata accessor for ContactDisambiguationView(0);
  lazy protocol witness table accessor for type GeoDataModels.ContactDisambiguationDataModel and conformance GeoDataModels.ContactDisambiguationDataModel();
  lazy protocol witness table accessor for type GeoContact and conformance GeoContact(&lazy protocol witness table cache variable for type ContactDisambiguationView and conformance ContactDisambiguationView, type metadata accessor for ContactDisambiguationView, &protocol conformance descriptor for ContactDisambiguationView);

  return SnippetPreview.init(snippetModel:content:)();
}

uint64_t protocol witness for static _PreviewProvider._previews.getter in conformance SampleView_Previews(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SampleView_Previews and conformance SampleView_Previews();

  return MEMORY[0x28212D8E8](a1, v2);
}

uint64_t protocol witness for static _PreviewProvider._platform.getter in conformance SampleView_Previews(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SampleView_Previews and conformance SampleView_Previews();

  return MEMORY[0x28212D8D8](a1, v2);
}

uint64_t one-time initialization function for BrandonBacon()
{
  v0 = type metadata accessor for GeoContact(0);
  __swift_allocate_value_buffer(v0, BrandonBacon);
  v1 = __swift_project_value_buffer(v0, BrandonBacon);
  v2 = *(v0 + 40);
  v3 = *MEMORY[0x277D62AA0];
  v4 = type metadata accessor for ImageElement.ImageStyle();
  result = (*(*(v4 - 8) + 104))(v1 + v2, v3, v4);
  *v1 = 0;
  *(v1 + 8) = 0;
  *(v1 + 16) = 0;
  strcpy((v1 + 24), "Brandon Bacon");
  *(v1 + 38) = -4864;
  *(v1 + 40) = 16962;
  *(v1 + 48) = 0xE200000000000000;
  *(v1 + 56) = 0xD0000000000000FCLL;
  *(v1 + 64) = 0x800000024FF8A960;
  *(v1 + 72) = 1;
  return result;
}

uint64_t one-time initialization function for TimBacon()
{
  v0 = type metadata accessor for GeoContact(0);
  __swift_allocate_value_buffer(v0, TimBacon);
  v1 = __swift_project_value_buffer(v0, TimBacon);
  v2 = *(v0 + 40);
  v3 = *MEMORY[0x277D62AA0];
  v4 = type metadata accessor for ImageElement.ImageStyle();
  result = (*(*(v4 - 8) + 104))(&v1[v2], v3, v4);
  *v1 = 1;
  *(v1 + 1) = 0;
  *(v1 + 2) = 0;
  *(v1 + 3) = 0x6F636142206D6954;
  *(v1 + 4) = 0xE90000000000006ELL;
  *(v1 + 5) = 16980;
  *(v1 + 6) = 0xE200000000000000;
  *(v1 + 7) = 0xD0000000000000FCLL;
  *(v1 + 8) = 0x800000024FF8A860;
  *(v1 + 9) = 2;
  return result;
}

uint64_t one-time initialization function for testView1()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy14GeoUIFramework0D7ContactVGMd, &_ss23_ContiguousArrayStorageCy14GeoUIFramework0D7ContactVGMR);
  v0 = type metadata accessor for GeoContact(0);
  v1 = *(*(v0 - 8) + 72);
  v2 = (*(*(v0 - 8) + 80) + 32) & ~*(*(v0 - 8) + 80);
  v3 = swift_allocObject();
  v3[1] = xmmword_24FF88A30;
  v4 = v3 + v2;
  if (one-time initialization token for BrandonBacon != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, BrandonBacon);
  outlined init with copy of ContactDisambiguationView(v5, v4, type metadata accessor for GeoContact);
  if (one-time initialization token for TimBacon != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v0, TimBacon);
  result = outlined init with copy of ContactDisambiguationView(v6, v4 + v1, type metadata accessor for GeoContact);
  testView1._rawValue = v3;
  return result;
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy14GeoUIFramework0D15TrafficIncidentVGMd, &_ss23_ContiguousArrayStorageCy14GeoUIFramework0D15TrafficIncidentVGMR);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_24FF88EB0;
  if (one-time initialization token for crash != -1)
  {
    swift_once();
  }

  v2 = *(pickupTruck.localizedAddress.value._object + 4);
  v1 = *(pickupTruck.localizedAddress.value._object + 5);
  v3 = *(pickupTruck.localizedAddress.value._object + 1);
  *(v0 + 32) = *pickupTruck.localizedAddress.value._object;
  *(v0 + 48) = v3;
  *(v0 + 64) = v2;
  *(v0 + 72) = v1;
  v4 = one-time initialization token for hazard;

  if (v4 != -1)
  {
    swift_once();
  }

  v6 = *(*&pickupTruck.locationInfo.latitude + 32);
  v5 = *(*&pickupTruck.locationInfo.latitude + 40);
  v7 = *(*&pickupTruck.locationInfo.latitude + 16);
  *(v0 + 80) = **&pickupTruck.locationInfo.latitude;
  *(v0 + 96) = v7;
  *(v0 + 112) = v6;
  *(v0 + 120) = v5;
  v8 = one-time initialization token for sc;

  if (v8 != -1)
  {
    swift_once();
  }

  v10 = *(sc.index + 32);
  v9 = *(sc.index + 40);
  v11 = *(sc.index + 16);
  *(v0 + 128) = *sc.index;
  *(v0 + 144) = v11;
  *(v0 + 160) = v10;
  *(v0 + 168) = v9;
  testView1._rawValue = v0;
}

unint64_t lazy protocol witness table accessor for type GeoDataModels.ContactDisambiguationDataModel and conformance GeoDataModels.ContactDisambiguationDataModel()
{
  result = lazy protocol witness table cache variable for type GeoDataModels.ContactDisambiguationDataModel and conformance GeoDataModels.ContactDisambiguationDataModel;
  if (!lazy protocol witness table cache variable for type GeoDataModels.ContactDisambiguationDataModel and conformance GeoDataModels.ContactDisambiguationDataModel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoDataModels.ContactDisambiguationDataModel and conformance GeoDataModels.ContactDisambiguationDataModel);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GeoDataModels.ContactDisambiguationDataModel and conformance GeoDataModels.ContactDisambiguationDataModel;
  if (!lazy protocol witness table cache variable for type GeoDataModels.ContactDisambiguationDataModel and conformance GeoDataModels.ContactDisambiguationDataModel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoDataModels.ContactDisambiguationDataModel and conformance GeoDataModels.ContactDisambiguationDataModel);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GeoDataModels.ContactDisambiguationDataModel and conformance GeoDataModels.ContactDisambiguationDataModel;
  if (!lazy protocol witness table cache variable for type GeoDataModels.ContactDisambiguationDataModel and conformance GeoDataModels.ContactDisambiguationDataModel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoDataModels.ContactDisambiguationDataModel and conformance GeoDataModels.ContactDisambiguationDataModel);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SampleView_Previews and conformance SampleView_Previews()
{
  result = lazy protocol witness table cache variable for type SampleView_Previews and conformance SampleView_Previews;
  if (!lazy protocol witness table cache variable for type SampleView_Previews and conformance SampleView_Previews)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SampleView_Previews and conformance SampleView_Previews);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SampleView_Previews and conformance SampleView_Previews;
  if (!lazy protocol witness table cache variable for type SampleView_Previews and conformance SampleView_Previews)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SampleView_Previews and conformance SampleView_Previews);
  }

  return result;
}

unint64_t type metadata completion function for ContactDisambiguationView(uint64_t a1)
{
  result = type metadata accessor for OS_os_log();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for ActionHandler();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

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

uint64_t outlined init with copy of ContactDisambiguationView(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
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

uint64_t partial apply for closure #1 in closure #2 in ContactDisambiguationView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for PrimaryHeaderRichView();
  v4 = *(v3 - 8);
  v5 = *(v4 + 16);
  v6 = v1 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return v5(a1, v6, v3);
}

uint64_t partial apply for closure #2 in closure #2 in ContactDisambiguationView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7ForEachVySay14GeoUIFramework0E7ContactVGAfA4ViewP07SnippetB0E15componentTapped12isNavigation7performQrSb_yyctFQOyAJ014SimpleItemRichH0V_Qo_GMd, &_s7SwiftUI7ForEachVySay14GeoUIFramework0E7ContactVGAfA4ViewP07SnippetB0E15componentTapped12isNavigation7performQrSb_yyctFQOyAJ014SimpleItemRichH0V_Qo_GMR);
  v4 = *(v3 - 8);
  v5 = *(v4 + 16);
  v6 = v1 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return v5(a1, v6, v3);
}

uint64_t lazy protocol witness table accessor for type GeoContact and conformance GeoContact(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t lazy protocol witness table accessor for type ForEach<[GeoContact], GeoContact, <<opaque return type of View.componentTapped(isNavigation:perform:)>>.0> and conformance <> ForEach<A, B, C>()
{
  result = lazy protocol witness table cache variable for type ForEach<[GeoContact], GeoContact, <<opaque return type of View.componentTapped(isNavigation:perform:)>>.0> and conformance <> ForEach<A, B, C>;
  if (!lazy protocol witness table cache variable for type ForEach<[GeoContact], GeoContact, <<opaque return type of View.componentTapped(isNavigation:perform:)>>.0> and conformance <> ForEach<A, B, C>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI7ForEachVySay14GeoUIFramework0E7ContactVGAfA4ViewP07SnippetB0E15componentTapped12isNavigation7performQrSb_yyctFQOyAJ014SimpleItemRichH0V_Qo_GMd, &_s7SwiftUI7ForEachVySay14GeoUIFramework0E7ContactVGAfA4ViewP07SnippetB0E15componentTapped12isNavigation7performQrSb_yyctFQOyAJ014SimpleItemRichH0V_Qo_GMR);
    type metadata accessor for SimpleItemRichView();
    lazy protocol witness table accessor for type GeoContact and conformance GeoContact(&lazy protocol witness table cache variable for type SimpleItemRichView and conformance SimpleItemRichView, MEMORY[0x277D63D00], MEMORY[0x277D63CF8]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ForEach<[GeoContact], GeoContact, <<opaque return type of View.componentTapped(isNavigation:perform:)>>.0> and conformance <> ForEach<A, B, C>);
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

uint64_t outlined init with take of ContactDisambiguationView(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t partial apply for closure #1 in closure #1 in ContactDisambiguationView.body.getter()
{
  v1 = *(type metadata accessor for ContactDisambiguationView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for GeoContact(0) - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return closure #1 in closure #1 in ContactDisambiguationView.body.getter((v0 + v2), v5);
}

uint64_t GeoTrafficIncident.id.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t GeoTrafficIncident.displayName.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance GeoTrafficIncident.CodingKeys()
{
  v1 = 0x7865646E69;
  v2 = 0x4E79616C70736964;
  if (*v0 != 2)
  {
    v2 = 0x6F6C796150697264;
  }

  if (*v0)
  {
    v1 = 25705;
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

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance GeoTrafficIncident.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized GeoTrafficIncident.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance GeoTrafficIncident.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type GeoTrafficIncident.CodingKeys and conformance GeoTrafficIncident.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance GeoTrafficIncident.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type GeoTrafficIncident.CodingKeys and conformance GeoTrafficIncident.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t GeoTrafficIncident.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14GeoUIFramework0D15TrafficIncidentV10CodingKeys33_B0A83B677A66C3649B8950C2007DD83CLLOGMd, &_ss22KeyedEncodingContainerVy14GeoUIFramework0D15TrafficIncidentV10CodingKeys33_B0A83B677A66C3649B8950C2007DD83CLLOGMR);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v12 - v6;
  v8 = v1[1];
  v9 = v1[3];
  v12[4] = v1[2];
  v12[5] = v8;
  v10 = v1[5];
  v12[2] = v1[4];
  v12[3] = v9;
  v12[1] = v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type GeoTrafficIncident.CodingKeys and conformance GeoTrafficIncident.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v16 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v2)
  {
    return (*(v5 + 8))(v7, v4);
  }

  v15 = 1;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v14 = 2;
  KeyedEncodingContainer.encode(_:forKey:)();
  v13 = 3;
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v5 + 8))(v7, v4);
}

uint64_t GeoTrafficIncident.hash(into:)(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[5];
  MEMORY[0x25305DBD0](*v1);
  if (v2)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  String.hash(into:)();
  return MEMORY[0x25305DBD0](v3);
}

Swift::Int GeoTrafficIncident.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[2];
  v3 = v0[5];
  Hasher.init(_seed:)();
  MEMORY[0x25305DBD0](v1);
  if (v2)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  String.hash(into:)();
  MEMORY[0x25305DBD0](v3);
  return Hasher._finalize()();
}

uint64_t GeoTrafficIncident.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy14GeoUIFramework0D15TrafficIncidentV10CodingKeys33_B0A83B677A66C3649B8950C2007DD83CLLOGMd, &_ss22KeyedDecodingContainerVy14GeoUIFramework0D15TrafficIncidentV10CodingKeys33_B0A83B677A66C3649B8950C2007DD83CLLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type GeoTrafficIncident.CodingKeys and conformance GeoTrafficIncident.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v26 = 0;
  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  v25 = 1;
  v10 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v12 = v11;
  v22 = v10;
  v24 = 2;
  v20 = KeyedDecodingContainer.decode(_:forKey:)();
  v21 = v13;
  v23 = 3;
  v14 = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v6 + 8))(v8, v5);
  v16 = v21;
  v15 = v22;
  *a2 = v9;
  a2[1] = v15;
  v17 = v20;
  a2[2] = v12;
  a2[3] = v17;
  a2[4] = v16;
  a2[5] = v14;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

void __swiftcall GeoTrafficIncident.init(index:id:displayName:driPayload:)(GeoUIFramework::GeoTrafficIncident *__return_ptr retstr, Swift::Int index, Swift::String_optional id, Swift::String displayName, Swift::Int driPayload)
{
  retstr->index = index;
  retstr->id = id;
  retstr->displayName = displayName;
  retstr->driPayload = driPayload;
}

uint64_t protocol witness for Identifiable.id.getter in conformance GeoTrafficIncident@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *(v1 + 8);
  a1[1] = v2;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance GeoTrafficIncident(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[5];
  MEMORY[0x25305DBD0](*v1);
  if (v2)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  String.hash(into:)();
  return MEMORY[0x25305DBD0](v3);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance GeoTrafficIncident(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[2];
  v4 = v1[5];
  Hasher.init(_seed:)();
  MEMORY[0x25305DBD0](v2);
  if (v3)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  String.hash(into:)();
  MEMORY[0x25305DBD0](v4);
  return Hasher._finalize()();
}

BOOL specialized static GeoTrafficIncident.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  v6 = a1[5];
  v7 = a2[2];
  v8 = a2[3];
  v9 = a2[4];
  v10 = a2[5];
  if (v3)
  {
    if (!v7 || (a1[1] != a2[1] || v3 != v7) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  if (v4 == v8 && v5 == v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    return v6 == v10;
  }

  return 0;
}

unint64_t lazy protocol witness table accessor for type GeoTrafficIncident.CodingKeys and conformance GeoTrafficIncident.CodingKeys()
{
  result = lazy protocol witness table cache variable for type GeoTrafficIncident.CodingKeys and conformance GeoTrafficIncident.CodingKeys;
  if (!lazy protocol witness table cache variable for type GeoTrafficIncident.CodingKeys and conformance GeoTrafficIncident.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoTrafficIncident.CodingKeys and conformance GeoTrafficIncident.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GeoTrafficIncident.CodingKeys and conformance GeoTrafficIncident.CodingKeys;
  if (!lazy protocol witness table cache variable for type GeoTrafficIncident.CodingKeys and conformance GeoTrafficIncident.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoTrafficIncident.CodingKeys and conformance GeoTrafficIncident.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GeoTrafficIncident.CodingKeys and conformance GeoTrafficIncident.CodingKeys;
  if (!lazy protocol witness table cache variable for type GeoTrafficIncident.CodingKeys and conformance GeoTrafficIncident.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoTrafficIncident.CodingKeys and conformance GeoTrafficIncident.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GeoTrafficIncident.CodingKeys and conformance GeoTrafficIncident.CodingKeys;
  if (!lazy protocol witness table cache variable for type GeoTrafficIncident.CodingKeys and conformance GeoTrafficIncident.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoTrafficIncident.CodingKeys and conformance GeoTrafficIncident.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type String? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type String? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type String? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSSSgMd, &_sSSSgMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String? and conformance <A> A?);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type GeoTrafficIncident and conformance GeoTrafficIncident()
{
  result = lazy protocol witness table cache variable for type GeoTrafficIncident and conformance GeoTrafficIncident;
  if (!lazy protocol witness table cache variable for type GeoTrafficIncident and conformance GeoTrafficIncident)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoTrafficIncident and conformance GeoTrafficIncident);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GeoTrafficIncident and conformance GeoTrafficIncident;
  if (!lazy protocol witness table cache variable for type GeoTrafficIncident and conformance GeoTrafficIncident)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoTrafficIncident and conformance GeoTrafficIncident);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GeoTrafficIncident and conformance GeoTrafficIncident;
  if (!lazy protocol witness table cache variable for type GeoTrafficIncident and conformance GeoTrafficIncident)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoTrafficIncident and conformance GeoTrafficIncident);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GeoTrafficIncident and conformance GeoTrafficIncident;
  if (!lazy protocol witness table cache variable for type GeoTrafficIncident and conformance GeoTrafficIncident)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoTrafficIncident and conformance GeoTrafficIncident);
  }

  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for GeoTrafficIncident(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for GeoTrafficIncident(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for GeoTrafficIncident.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for GeoTrafficIncident.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t specialized GeoTrafficIncident.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7865646E69 && a2 == 0xE500000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 25705 && a2 == 0xE200000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4E79616C70736964 && a2 == 0xEB00000000656D61 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F6C796150697264 && a2 == 0xEA00000000006461)
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

uint64_t TrafficDisambiguationView.model.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  *a1 = *v1;
  a1[1] = v2;
  a1[2] = v3;
}

uint64_t TrafficDisambiguationView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v35 = a1;
  v3 = type metadata accessor for TrafficDisambiguationView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7ForEachVySay14GeoUIFramework0E15TrafficIncidentVGAfA4ViewP07SnippetB0E15componentTapped12isNavigation7performQrSb_yyctFQOyAJ014SimpleItemRichI0V_Qo_GMd, &_s7SwiftUI7ForEachVySay14GeoUIFramework0E15TrafficIncidentVGAfA4ViewP07SnippetB0E15componentTapped12isNavigation7performQrSb_yyctFQOyAJ014SimpleItemRichI0V_Qo_GMR);
  v7 = *(v6 - 8);
  v34 = *(v7 + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v33 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = v29 - v10;
  v12 = type metadata accessor for DisambiguationTitle();
  v31 = *(v12 - 8);
  v32 = v12;
  v13 = MEMORY[0x28223BE20](v12);
  v30 = v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = v29 - v15;
  v18 = *v2;
  v17 = v2[1];
  v41 = MEMORY[0x277D837D0];
  v42 = MEMORY[0x277D63F88];
  v39 = v18;
  v40 = v17;
  v38 = 0;
  v36 = 0u;
  v37 = 0u;

  DisambiguationTitle.init(text1:thumbnail:)();
  *&v36 = v2[2];
  v29[1] = swift_getKeyPath();
  outlined init with copy of TrafficDisambiguationView(v2, v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v20 = swift_allocObject();
  outlined init with take of TrafficDisambiguationView(v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay14GeoUIFramework0A15TrafficIncidentVGMd, &_sSay14GeoUIFramework0A15TrafficIncidentVGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP07SnippetB0E15componentTapped12isNavigation7performQrSb_yyctFQOyAD014SimpleItemRichC0V_Qo_Md, &_s7SwiftUI4ViewP07SnippetB0E15componentTapped12isNavigation7performQrSb_yyctFQOyAD014SimpleItemRichC0V_Qo_MR);
  lazy protocol witness table accessor for type TupleView<(ModifiedContent<<<opaque return type of View.mapScope(_:)>>.0, _FlexFrameLayout>, PrimaryHeaderRichView, <<opaque return type of View.separators(_:isOverride:)>>.0)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type [GeoTrafficIncident] and conformance [A], &_sSay14GeoUIFramework0A15TrafficIncidentVGMd, &_sSay14GeoUIFramework0A15TrafficIncidentVGMR, MEMORY[0x277D83980]);
  lazy protocol witness table accessor for type GeoTrafficIncident and conformance GeoTrafficIncident();
  v21 = type metadata accessor for SimpleItemRichView();
  v22 = lazy protocol witness table accessor for type SimpleItemRichView and conformance SimpleItemRichView(&lazy protocol witness table cache variable for type SimpleItemRichView and conformance SimpleItemRichView, MEMORY[0x277D63D00], MEMORY[0x277D63CF8]);
  v39 = v21;
  v40 = v22;
  swift_getOpaqueTypeConformance2();
  ForEach<>.init(_:id:content:)();
  v23 = v31;
  v24 = v32;
  (*(v31 + 16))(v30, v16, v32);
  v25 = v33;
  (*(v7 + 16))(v33, v11, v6);
  v26 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v27 = swift_allocObject();
  (*(v7 + 32))(v27 + v26, v25, v6);
  lazy protocol witness table accessor for type ForEach<[GeoTrafficIncident], GeoTrafficIncident, <<opaque return type of View.componentTapped(isNavigation:perform:)>>.0> and conformance <> ForEach<A, B, C>();
  DisambiguationView.init(title:content:)();
  (*(v7 + 8))(v11, v6);
  return (*(v23 + 8))(v16, v24);
}

uint64_t type metadata accessor for TrafficDisambiguationView(uint64_t a1)
{
  result = type metadata singleton initialization cache for TrafficDisambiguationView;
  if (!type metadata singleton initialization cache for TrafficDisambiguationView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t closure #1 in TrafficDisambiguationView.body.getter(__int128 *a1, uint64_t a2)
{
  v4 = type metadata accessor for TrafficDisambiguationView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = type metadata accessor for SimpleItemRichView();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a1[2];
  v43 = a1[1];
  v44 = v11;
  v42 = *a1;
  v17[3] = MEMORY[0x277D837D0];
  v17[4] = MEMORY[0x277D63F88];
  v17[0] = *(&v43 + 1);
  v17[1] = v11;
  v41 = 0;
  v39 = 0u;
  v40 = 0u;
  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  v35 = 0;
  v33 = 0u;
  v34 = 0u;
  v32 = 0;
  v30 = 0u;
  v31 = 0u;
  v29 = 0;
  v27 = 0u;
  v28 = 0u;
  v26 = 0;
  v24 = 0u;
  v25 = 0u;
  v23 = 0;
  v21 = 0u;
  v22 = 0u;
  v20 = 0;
  v18 = 0u;
  v19 = 0u;

  SimpleItemRichView.init(text1:text2:text3:text4:text5:text6:text7:text8:thumbnail:)();
  outlined init with copy of TrafficDisambiguationView(a2, v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v13 = swift_allocObject();
  outlined init with take of TrafficDisambiguationView(v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12);
  v14 = (v13 + ((v6 + v12 + 7) & 0xFFFFFFFFFFFFFFF8));
  v15 = v43;
  *v14 = v42;
  v14[1] = v15;
  v14[2] = v44;
  outlined init with copy of GeoTrafficIncident(&v42, v17);
  lazy protocol witness table accessor for type SimpleItemRichView and conformance SimpleItemRichView(&lazy protocol witness table cache variable for type SimpleItemRichView and conformance SimpleItemRichView, MEMORY[0x277D63D00], MEMORY[0x277D63CF8]);
  View.componentTapped(isNavigation:perform:)();

  return (*(v8 + 8))(v10, v7);
}

uint64_t outlined init with copy of TrafficDisambiguationView(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TrafficDisambiguationView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of TrafficDisambiguationView(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TrafficDisambiguationView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in TrafficDisambiguationView.body.getter(__int128 *a1)
{
  v3 = *(type metadata accessor for TrafficDisambiguationView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return closure #1 in TrafficDisambiguationView.body.getter(a1, v4);
}

uint64_t closure #1 in closure #1 in TrafficDisambiguationView.body.getter(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SnippetUI15InteractionTypeOSgMd, &_s9SnippetUI15InteractionTypeOSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v23[-4] - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit14ActionPropertyVSgMd, &_s10SnippetKit14ActionPropertyVSgMR);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v23[-4] - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SnippetUI21StandardActionHandlerVSgMd, &_s9SnippetUI21StandardActionHandlerVSgMR);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v23[-4] - v10;
  type metadata accessor for TrafficDisambiguationView(0);
  ActionHandler.wrappedValue.getter();
  v12 = type metadata accessor for StandardActionHandler();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    return outlined destroy of StandardActionHandler?(v11, &_s9SnippetUI21StandardActionHandlerVSgMd, &_s9SnippetUI21StandardActionHandlerVSgMR);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10SnippetKit24ActionElementConvertible_pGMd, &_ss23_ContiguousArrayStorageCy10SnippetKit24ActionElementConvertible_pGMR);
  v15 = swift_allocObject();
  v22 = xmmword_24FF88410;
  *(v15 + 16) = xmmword_24FF88410;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys11AnyHashableV_yptGMd, &_ss23_ContiguousArrayStorageCys11AnyHashableV_yptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = v22;
  strcpy(v23, "IncidentType");
  HIBYTE(v23[6]) = 0;
  v23[7] = -5120;
  AnyHashable.init<A>(_:)();
  v17 = *(a2 + 40);
  *(inited + 96) = MEMORY[0x277D83B88];
  *(inited + 72) = v17;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of StandardActionHandler?(inited + 32, &_ss11AnyHashableV_yptMd, &_ss11AnyHashableV_yptMR);
  v18 = type metadata accessor for Command();
  v19 = MEMORY[0x277D63770];
  *(v15 + 56) = v18;
  *(v15 + 64) = v19;
  __swift_allocate_boxed_opaque_existential_1((v15 + 32));
  static Command.directInvocation(identifier:payload:isNavigation:)();

  ActionProperty.init(_:)();
  v20 = type metadata accessor for ActionProperty();
  (*(*(v20 - 8) + 56))(v8, 0, 1, v20);
  v21 = type metadata accessor for InteractionType();
  (*(*(v21 - 8) + 56))(v5, 1, 1, v21);
  StandardActionHandler.perform(_:interactionType:)();
  outlined destroy of StandardActionHandler?(v5, &_s9SnippetUI15InteractionTypeOSgMd, &_s9SnippetUI15InteractionTypeOSgMR);
  outlined destroy of StandardActionHandler?(v8, &_s10SnippetKit14ActionPropertyVSgMd, &_s10SnippetKit14ActionPropertyVSgMR);
  return (*(v13 + 8))(v11, v12);
}

uint64_t partial apply for closure #2 in TrafficDisambiguationView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7ForEachVySay14GeoUIFramework0E15TrafficIncidentVGAfA4ViewP07SnippetB0E15componentTapped12isNavigation7performQrSb_yyctFQOyAJ014SimpleItemRichI0V_Qo_GMd, &_s7SwiftUI7ForEachVySay14GeoUIFramework0E15TrafficIncidentVGAfA4ViewP07SnippetB0E15componentTapped12isNavigation7performQrSb_yyctFQOyAJ014SimpleItemRichI0V_Qo_GMR);
  v4 = *(v3 - 8);
  v5 = *(v4 + 16);
  v6 = v1 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return v5(a1, v6, v3);
}

unint64_t lazy protocol witness table accessor for type ForEach<[GeoTrafficIncident], GeoTrafficIncident, <<opaque return type of View.componentTapped(isNavigation:perform:)>>.0> and conformance <> ForEach<A, B, C>()
{
  result = lazy protocol witness table cache variable for type ForEach<[GeoTrafficIncident], GeoTrafficIncident, <<opaque return type of View.componentTapped(isNavigation:perform:)>>.0> and conformance <> ForEach<A, B, C>;
  if (!lazy protocol witness table cache variable for type ForEach<[GeoTrafficIncident], GeoTrafficIncident, <<opaque return type of View.componentTapped(isNavigation:perform:)>>.0> and conformance <> ForEach<A, B, C>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI7ForEachVySay14GeoUIFramework0E15TrafficIncidentVGAfA4ViewP07SnippetB0E15componentTapped12isNavigation7performQrSb_yyctFQOyAJ014SimpleItemRichI0V_Qo_GMd, &_s7SwiftUI7ForEachVySay14GeoUIFramework0E15TrafficIncidentVGAfA4ViewP07SnippetB0E15componentTapped12isNavigation7performQrSb_yyctFQOyAJ014SimpleItemRichI0V_Qo_GMR);
    type metadata accessor for SimpleItemRichView();
    lazy protocol witness table accessor for type SimpleItemRichView and conformance SimpleItemRichView(&lazy protocol witness table cache variable for type SimpleItemRichView and conformance SimpleItemRichView, MEMORY[0x277D63D00], MEMORY[0x277D63CF8]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ForEach<[GeoTrafficIncident], GeoTrafficIncident, <<opaque return type of View.componentTapped(isNavigation:perform:)>>.0> and conformance <> ForEach<A, B, C>);
  }

  return result;
}

uint64_t TrafficDisambiguationView.init(model:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = *a1;
  *(a2 + 8) = *(a1 + 8);
  type metadata accessor for OS_os_log();
  *(a2 + 24) = OS_os_log.init(subsystem:category:)();
  *(a2 + 32) = 0xD000000000000033;
  *(a2 + 40) = 0x800000024FF8AA60;
  v3 = type metadata accessor for TrafficDisambiguationView(0);
  ActionHandler.init()();
  v4 = (a2 + *(v3 + 32));
  type metadata accessor for Context();
  lazy protocol witness table accessor for type SimpleItemRichView and conformance SimpleItemRichView(&lazy protocol witness table cache variable for type Context and conformance Context, MEMORY[0x277D63F68], MEMORY[0x277D63F58]);
  *v4 = EnvironmentObject.init()();
  v4[1] = v5;
  v6 = a2 + *(v3 + 36);
  result = swift_getKeyPath();
  *v6 = result;
  *(v6 + 8) = 0;
  return result;
}

uint64_t static TrafficIncidentView_Previews.previews.getter()
{
  if (one-time initialization token for testView1 != -1)
  {
    swift_once();
  }

  type metadata accessor for TrafficDisambiguationView(0);
  lazy protocol witness table accessor for type GeoDataModels.TrafficDisambiguationDataModel and conformance GeoDataModels.TrafficDisambiguationDataModel();
  lazy protocol witness table accessor for type SimpleItemRichView and conformance SimpleItemRichView(&lazy protocol witness table cache variable for type TrafficDisambiguationView and conformance TrafficDisambiguationView, type metadata accessor for TrafficDisambiguationView, &protocol conformance descriptor for TrafficDisambiguationView);

  return SnippetPreview.init(snippetModel:content:)();
}

uint64_t implicit closure #1 in static TrafficIncidentView_Previews.previews.getter@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = a1[1];
  v4 = a1[2];
  *a2 = *a1;
  a2[1] = v3;
  a2[2] = v4;
  type metadata accessor for OS_os_log();

  a2[3] = OS_os_log.init(subsystem:category:)();
  a2[4] = 0xD000000000000033;
  a2[5] = 0x800000024FF8AA60;
  v5 = type metadata accessor for TrafficDisambiguationView(0);
  ActionHandler.init()();
  v6 = (a2 + *(v5 + 32));
  type metadata accessor for Context();
  lazy protocol witness table accessor for type SimpleItemRichView and conformance SimpleItemRichView(&lazy protocol witness table cache variable for type Context and conformance Context, MEMORY[0x277D63F68], MEMORY[0x277D63F58]);
  *v6 = EnvironmentObject.init()();
  v6[1] = v7;
  v8 = a2 + *(v5 + 36);
  result = swift_getKeyPath();
  *v8 = result;
  v8[8] = 0;
  return result;
}

uint64_t protocol witness for static PreviewProvider.previews.getter in conformance TrafficIncidentView_Previews()
{
  if (one-time initialization token for testView1 != -1)
  {
    swift_once();
  }

  type metadata accessor for TrafficDisambiguationView(0);
  lazy protocol witness table accessor for type GeoDataModels.TrafficDisambiguationDataModel and conformance GeoDataModels.TrafficDisambiguationDataModel();
  lazy protocol witness table accessor for type SimpleItemRichView and conformance SimpleItemRichView(&lazy protocol witness table cache variable for type TrafficDisambiguationView and conformance TrafficDisambiguationView, type metadata accessor for TrafficDisambiguationView, &protocol conformance descriptor for TrafficDisambiguationView);

  return SnippetPreview.init(snippetModel:content:)();
}

uint64_t protocol witness for static _PreviewProvider._previews.getter in conformance TrafficIncidentView_Previews(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TrafficIncidentView_Previews and conformance TrafficIncidentView_Previews();

  return MEMORY[0x28212D8E8](a1, v2);
}

uint64_t protocol witness for static _PreviewProvider._platform.getter in conformance TrafficIncidentView_Previews(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TrafficIncidentView_Previews and conformance TrafficIncidentView_Previews();

  return MEMORY[0x28212D8D8](a1, v2);
}

double one-time initialization function for crash()
{
  v0 = swift_slowAlloc();
  pickupTruck.localizedAddress.value._object = v0;
  result = 0.0;
  *v0 = xmmword_24FF88E50;
  v0[1] = xmmword_24FF88E60;
  *(v0 + 4) = 0xE500000000000000;
  *(v0 + 5) = 2;
  return result;
}

double one-time initialization function for hazard()
{
  v0 = swift_slowAlloc();
  *&pickupTruck.locationInfo.latitude = v0;
  *&result = 1;
  *v0 = xmmword_24FF88E70;
  *(v0 + 16) = xmmword_24FF88E80;
  *(v0 + 32) = 0xE600000000000000;
  *(v0 + 40) = 1;
  return result;
}

double one-time initialization function for sc()
{
  v0 = swift_slowAlloc();
  sc.index = v0;
  *&result = 2;
  *v0 = xmmword_24FF88E90;
  *(v0 + 16) = xmmword_24FF88EA0;
  *(v0 + 32) = 0xEB000000006B6365;
  *(v0 + 40) = 3;
  return result;
}

uint64_t crash.unsafeMutableAddressor(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 == -1)
  {
    return *a2;
  }

  swift_once();
  return *a2;
}

unint64_t lazy protocol witness table accessor for type GeoDataModels.TrafficDisambiguationDataModel and conformance GeoDataModels.TrafficDisambiguationDataModel()
{
  result = lazy protocol witness table cache variable for type GeoDataModels.TrafficDisambiguationDataModel and conformance GeoDataModels.TrafficDisambiguationDataModel;
  if (!lazy protocol witness table cache variable for type GeoDataModels.TrafficDisambiguationDataModel and conformance GeoDataModels.TrafficDisambiguationDataModel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoDataModels.TrafficDisambiguationDataModel and conformance GeoDataModels.TrafficDisambiguationDataModel);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GeoDataModels.TrafficDisambiguationDataModel and conformance GeoDataModels.TrafficDisambiguationDataModel;
  if (!lazy protocol witness table cache variable for type GeoDataModels.TrafficDisambiguationDataModel and conformance GeoDataModels.TrafficDisambiguationDataModel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoDataModels.TrafficDisambiguationDataModel and conformance GeoDataModels.TrafficDisambiguationDataModel);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GeoDataModels.TrafficDisambiguationDataModel and conformance GeoDataModels.TrafficDisambiguationDataModel;
  if (!lazy protocol witness table cache variable for type GeoDataModels.TrafficDisambiguationDataModel and conformance GeoDataModels.TrafficDisambiguationDataModel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoDataModels.TrafficDisambiguationDataModel and conformance GeoDataModels.TrafficDisambiguationDataModel);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type SimpleItemRichView and conformance SimpleItemRichView(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t lazy protocol witness table accessor for type TrafficIncidentView_Previews and conformance TrafficIncidentView_Previews()
{
  result = lazy protocol witness table cache variable for type TrafficIncidentView_Previews and conformance TrafficIncidentView_Previews;
  if (!lazy protocol witness table cache variable for type TrafficIncidentView_Previews and conformance TrafficIncidentView_Previews)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TrafficIncidentView_Previews and conformance TrafficIncidentView_Previews);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TrafficIncidentView_Previews and conformance TrafficIncidentView_Previews;
  if (!lazy protocol witness table cache variable for type TrafficIncidentView_Previews and conformance TrafficIncidentView_Previews)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TrafficIncidentView_Previews and conformance TrafficIncidentView_Previews);
  }

  return result;
}

void type metadata completion function for TrafficDisambiguationView(uint64_t a1)
{
  type metadata accessor for OS_os_log();
  if (v1 <= 0x3F)
  {
    type metadata accessor for ActionHandler();
    if (v2 <= 0x3F)
    {
      type metadata accessor for EnvironmentObject<Context>(319);
      if (v3 <= 0x3F)
      {
        type metadata accessor for Environment<VRXIdiom>(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void type metadata accessor for Environment<VRXIdiom>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Environment<VRXIdiom>)
  {
    type metadata accessor for VRXIdiom();
    v1 = type metadata accessor for Environment();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Environment<VRXIdiom>);
    }
  }
}

uint64_t partial apply for closure #1 in closure #1 in TrafficDisambiguationView.body.getter()
{
  v1 = *(type metadata accessor for TrafficDisambiguationView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8);

  return closure #1 in closure #1 in TrafficDisambiguationView.body.getter(v0 + v2, v3);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, v4);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v4);
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

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      outlined init with copy of AnyHashable(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x25305DA50](v9, a1);
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd, &_ss18_DictionaryStorageCySSypGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of (AnyHashable, Any)(v4, &v13, &_sSS_yptMd, &_sSS_yptMR);
      v5 = v13;
      v6 = v14;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = outlined init with take of Any(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys11AnyHashableVypGMd, &_ss18_DictionaryStorageCys11AnyHashableVypGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of (AnyHashable, Any)(v4, v13, &_ss11AnyHashableV_yptMd, &_ss11AnyHashableV_yptMR);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = outlined init with take of Any(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

_OWORD *outlined init with take of Any(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t outlined init with copy of (AnyHashable, Any)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t GeoContact.image.getter()
{
  v1 = type metadata accessor for ImageElement.ImageStyle();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v17 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ImageElement.Contact.Content();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v0 + 2);
  if (v8)
  {
    v9 = *(v0 + 1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_24FF88410;
    *(v10 + 32) = v9;
    *(v10 + 40) = v8;

    ImageElement.Contact.Avatar.init(contactIds:)();
    v11 = MEMORY[0x277D62D88];
  }

  else
  {
    v12 = *(v0 + 6);
    v13 = HIBYTE(v12) & 0xF;
    if ((v12 & 0x2000000000000000) == 0)
    {
      v13 = *(v0 + 5) & 0xFFFFFFFFFFFFLL;
    }

    if (v13)
    {

      ImageElement.Contact.Monogram.init(letters:)();
      v11 = MEMORY[0x277D62D98];
    }

    else
    {
      ImageElement.Contact.Avatar.init(contactIds:)();
      v11 = MEMORY[0x277D62D88];
    }
  }

  (*(v5 + 104))(v7, *v11, v4);
  v14 = type metadata accessor for GeoContact(0);
  (*(v2 + 16))(v17, &v0[*(v14 + 40)], v1);
  return ImageElement.Contact.init(_:imageStyle:)();
}

uint64_t type metadata accessor for GeoContact(uint64_t a1)
{
  result = type metadata singleton initialization cache for GeoContact;
  if (!type metadata singleton initialization cache for GeoContact)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t GeoContact.app.getter()
{
  if ((*(v0 + 72) & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    return 0xD000000000000013;
  }

  else
  {
    return 0x6C7070612E6D6F63;
  }
}

uint64_t GeoContact.supplamentalText.getter()
{
  v1 = 5459283;
  v2 = *(v0 + 72) & 0xFFFFFFFFFFFFFFFELL;
  if (v2 == 2)
  {
    v3 = 0x800000024FF8A620;
  }

  else
  {
    v3 = 0xEE007370614D2E65;
  }

  if (v2 == 2 && 0x800000024FF8A620 == v3)
  {
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v5 & 1) == 0)
    {
      return 0;
    }
  }

  return v1;
}

uint64_t GeoContact.init(index:id:displayName:initials:encodeBase64:shareLevel:imageStyle:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  *a9 = a1;
  *(a9 + 1) = a2;
  *(a9 + 2) = a3;
  *(a9 + 3) = a4;
  *(a9 + 4) = a5;
  *(a9 + 5) = a6;
  *(a9 + 6) = a7;
  *(a9 + 7) = a8;
  *(a9 + 8) = a10;
  *(a9 + 9) = a11;
  v13 = *(type metadata accessor for GeoContact(0) + 40);
  v14 = type metadata accessor for ImageElement.ImageStyle();
  v15 = *(*(v14 - 8) + 32);

  return v15(&a9[v13], a12, v14);
}

uint64_t GeoContact.id.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t GeoContact.displayName.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t GeoContact.initials.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t GeoContact.encodeBase64.getter()
{
  v1 = *(v0 + 56);

  return v1;
}

uint64_t GeoContact.imageStyle.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for GeoContact(0) + 40);
  v4 = type metadata accessor for ImageElement.ImageStyle();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t GeoContact.imageStyle.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for GeoContact(0) + 40);
  v4 = type metadata accessor for ImageElement.ImageStyle();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AppID.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0xD000000000000013;
  }

  else
  {
    return 0x6C7070612E6D6F63;
  }
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance GeoContact.CodingKeys()
{
  v1 = *v0;
  v2 = 0x7865646E69;
  v3 = 0x76654C6572616873;
  if (v1 != 5)
  {
    v3 = 0x7974536567616D69;
  }

  v4 = 0x736C616974696E69;
  if (v1 != 3)
  {
    v4 = 0x614265646F636E65;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 25705;
  if (v1 != 1)
  {
    v5 = 0x4E79616C70736964;
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

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance GeoContact.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized GeoContact.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance GeoContact.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type GeoContact.CodingKeys and conformance GeoContact.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance GeoContact.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type GeoContact.CodingKeys and conformance GeoContact.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t GeoContact.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14GeoUIFramework0D7ContactV10CodingKeys33_7AA47EFC1FAFF6C5CB67338E8D06FEBCLLOGMd, &_ss22KeyedEncodingContainerVy14GeoUIFramework0D7ContactV10CodingKeys33_7AA47EFC1FAFF6C5CB67338E8D06FEBCLLOGMR);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type GeoContact.CodingKeys and conformance GeoContact.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v1)
  {
    v8[14] = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v8[13] = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v8[12] = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    v8[11] = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    v8[10] = 5;
    KeyedEncodingContainer.encode(_:forKey:)();
    type metadata accessor for GeoContact(0);
    v8[9] = 6;
    type metadata accessor for ImageElement.ImageStyle();
    lazy protocol witness table accessor for type ImageElement.ImageStyle and conformance ImageElement.ImageStyle(&lazy protocol witness table cache variable for type ImageElement.ImageStyle and conformance ImageElement.ImageStyle, MEMORY[0x277D62C08], MEMORY[0x277D62C18]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t GeoContact.hash(into:)(uint64_t a1)
{
  MEMORY[0x25305DBD0](*v1);
  if (v1[2])
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  String.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  MEMORY[0x25305DBD0](v1[9]);
  type metadata accessor for GeoContact(0);
  type metadata accessor for ImageElement.ImageStyle();
  lazy protocol witness table accessor for type ImageElement.ImageStyle and conformance ImageElement.ImageStyle(&lazy protocol witness table cache variable for type ImageElement.ImageStyle and conformance ImageElement.ImageStyle, MEMORY[0x277D62C08], MEMORY[0x277D62C28]);
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int GeoContact.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x25305DBD0](*v0);
  if (v0[2])
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  String.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  MEMORY[0x25305DBD0](v0[9]);
  type metadata accessor for GeoContact(0);
  type metadata accessor for ImageElement.ImageStyle();
  lazy protocol witness table accessor for type ImageElement.ImageStyle and conformance ImageElement.ImageStyle(&lazy protocol witness table cache variable for type ImageElement.ImageStyle and conformance ImageElement.ImageStyle, MEMORY[0x277D62C08], MEMORY[0x277D62C28]);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t GeoContact.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v4 = type metadata accessor for ImageElement.ImageStyle();
  v26 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy14GeoUIFramework0D7ContactV10CodingKeys33_7AA47EFC1FAFF6C5CB67338E8D06FEBCLLOGMd, &_ss22KeyedDecodingContainerVy14GeoUIFramework0D7ContactV10CodingKeys33_7AA47EFC1FAFF6C5CB67338E8D06FEBCLLOGMR);
  v27 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v8 = v24 - v7;
  v9 = type metadata accessor for GeoContact(0);
  MEMORY[0x28223BE20](v9);
  v11 = (v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = a1[3];
  v31 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  lazy protocol witness table accessor for type GeoContact.CodingKeys and conformance GeoContact.CodingKeys();
  v30 = v8;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v31);
  }

  v13 = v6;
  v15 = v27;
  v14 = v28;
  v38 = 0;
  v16 = v29;
  *v11 = KeyedDecodingContainer.decode(_:forKey:)();
  v37 = 1;
  v11[1] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v11[2] = v17;
  v25 = v17;
  v36 = 2;
  v11[3] = KeyedDecodingContainer.decode(_:forKey:)();
  v11[4] = v18;
  v24[1] = v18;
  v35 = 3;
  v19 = KeyedDecodingContainer.decode(_:forKey:)();
  v24[0] = 0;
  v11[5] = v19;
  v11[6] = v20;
  v24[2] = v20;
  v34 = 4;
  v11[7] = KeyedDecodingContainer.decode(_:forKey:)();
  v11[8] = v21;
  v33 = 5;
  v11[9] = KeyedDecodingContainer.decode(_:forKey:)();
  v32 = 6;
  lazy protocol witness table accessor for type ImageElement.ImageStyle and conformance ImageElement.ImageStyle(&lazy protocol witness table cache variable for type ImageElement.ImageStyle and conformance ImageElement.ImageStyle, MEMORY[0x277D62C08], MEMORY[0x277D62C38]);
  v25 = v13;
  v22 = v30;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v15 + 8))(v22, v16);
  (*(v26 + 32))(v11 + *(v9 + 40), v25, v4);
  outlined init with copy of GeoContact(v11, v14);
  __swift_destroy_boxed_opaque_existential_1(v31);
  return outlined destroy of GeoContact(v11);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance GeoContact(uint64_t a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x25305DBD0](*v1);
  if (v1[2])
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  String.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  MEMORY[0x25305DBD0](v1[9]);
  type metadata accessor for ImageElement.ImageStyle();
  lazy protocol witness table accessor for type ImageElement.ImageStyle and conformance ImageElement.ImageStyle(&lazy protocol witness table cache variable for type ImageElement.ImageStyle and conformance ImageElement.ImageStyle, MEMORY[0x277D62C08], MEMORY[0x277D62C28]);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

GeoUIFramework::AppID_optional __swiftcall AppID.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of AppID.init(rawValue:), v2);

  if (v3 == 1)
  {
    v4.value = GeoUIFramework_AppID_messages;
  }

  else
  {
    v4.value = GeoUIFramework_AppID_unknownDefault;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance AppID(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000013;
  }

  else
  {
    v3 = 0x6C7070612E6D6F63;
  }

  if (v2)
  {
    v4 = 0xEE007370614D2E65;
  }

  else
  {
    v4 = 0x800000024FF8A620;
  }

  if (*a2)
  {
    v5 = 0xD000000000000013;
  }

  else
  {
    v5 = 0x6C7070612E6D6F63;
  }

  if (*a2)
  {
    v6 = 0x800000024FF8A620;
  }

  else
  {
    v6 = 0xEE007370614D2E65;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance AppID()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AppID(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AppID(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance AppID@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of AppID.init(rawValue:), *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance AppID(unint64_t *a1@<X8>)
{
  v2 = 0x800000024FF8A620;
  v3 = 0x6C7070612E6D6F63;
  if (*v1)
  {
    v3 = 0xD000000000000013;
  }

  else
  {
    v2 = 0xEE007370614D2E65;
  }

  *a1 = v3;
  a1[1] = v2;
}

Swift::String __swiftcall INPerson.getContactInitials()()
{
  v1 = v0;
  v2 = type metadata accessor for PersonNameComponents();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v41 - v7;
  v9 = [objc_allocWithZone(MEMORY[0x277CCAC08]) init];
  [v9 setStyle_];
  v10 = [v1 nameComponents];
  if (v10)
  {
    v11 = v10;
    static PersonNameComponents._unconditionallyBridgeFromObjectiveC(_:)();

    isa = PersonNameComponents._bridgeToObjectiveC()().super.isa;
    v13 = [v9 stringFromPersonNameComponents_];

    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    (*(v3 + 8))(v8, v2);
    goto LABEL_22;
  }

  v17 = [v1 displayName];
  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;

  v21 = HIBYTE(v20) & 0xF;
  if ((v20 & 0x2000000000000000) == 0)
  {
    v21 = v18 & 0xFFFFFFFFFFFFLL;
  }

  v16 = 0xE000000000000000;
  if (v21)
  {
    v22 = [v1 displayName];
    if (!v22)
    {
      v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v22 = MEMORY[0x25305D940](v23);
    }

    v24 = [v9 personNameComponentsFromString_];

    if (v24)
    {
      static PersonNameComponents._unconditionallyBridgeFromObjectiveC(_:)();

      v25 = PersonNameComponents._bridgeToObjectiveC()().super.isa;
      v26 = [v9 stringFromPersonNameComponents_];

      v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v16 = v27;

      (*(v3 + 8))(v6, v2);
LABEL_22:
      v34 = v14;
      v35 = v16;
      goto LABEL_24;
    }

    v30 = [v1 displayName];
    v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v29 = v31;
  }

  else
  {
    v28 = 0;
    v29 = 0xE000000000000000;
  }

  v41 = v28;
  v42 = v29;
  v32 = lazy protocol witness table accessor for type String and conformance String();
  v33 = MEMORY[0x25305DA30](32, 0xE100000000000000, 0x7FFFFFFFFFFFFFFFLL, 1, MEMORY[0x277D837D0], v32);

  v41 = 0;
  v42 = 0xE000000000000000;
  v36 = *(v33 + 16);
  if (!v36)
  {
    v14 = 0;
LABEL_21:

    goto LABEL_22;
  }

  v37 = 0;
  v38 = v33 + 56;
  while (v37 < *(v33 + 16))
  {
    if ((*(v38 - 16) ^ *(v38 - 24)) >= 0x4000)
    {

      v39 = Substring.subscript.getter();
      MEMORY[0x25305D980](v39);
    }

    ++v37;
    v38 += 32;
    if (v36 == v37)
    {
      v14 = v41;
      v16 = v42;
      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_24:
  result._object = v35;
  result._countAndFlagsBits = v34;
  return result;
}

uint64_t specialized static GeoContact.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = a1[2];
  v5 = a2[2];
  if (!v4)
  {
    if (!v5)
    {
      goto LABEL_11;
    }

    return 0;
  }

  if (!v5)
  {
    return 0;
  }

  v6 = a1[1] == a2[1] && v4 == v5;
  if (!v6 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

LABEL_11:
  v7 = a1[3] == a2[3] && a1[4] == a2[4];
  if (!v7 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (a1[5] != a2[5] || a1[6] != a2[6]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (a1[7] != a2[7] || a1[8] != a2[8]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || a1[9] != a2[9])
  {
    return 0;
  }

  v8 = *(type metadata accessor for GeoContact(0) + 40);

  return MEMORY[0x2821C9788](a1 + v8, a2 + v8);
}

unint64_t lazy protocol witness table accessor for type GeoContact.CodingKeys and conformance GeoContact.CodingKeys()
{
  result = lazy protocol witness table cache variable for type GeoContact.CodingKeys and conformance GeoContact.CodingKeys;
  if (!lazy protocol witness table cache variable for type GeoContact.CodingKeys and conformance GeoContact.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoContact.CodingKeys and conformance GeoContact.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GeoContact.CodingKeys and conformance GeoContact.CodingKeys;
  if (!lazy protocol witness table cache variable for type GeoContact.CodingKeys and conformance GeoContact.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoContact.CodingKeys and conformance GeoContact.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GeoContact.CodingKeys and conformance GeoContact.CodingKeys;
  if (!lazy protocol witness table cache variable for type GeoContact.CodingKeys and conformance GeoContact.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoContact.CodingKeys and conformance GeoContact.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GeoContact.CodingKeys and conformance GeoContact.CodingKeys;
  if (!lazy protocol witness table cache variable for type GeoContact.CodingKeys and conformance GeoContact.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoContact.CodingKeys and conformance GeoContact.CodingKeys);
  }

  return result;
}

uint64_t outlined init with copy of GeoContact(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GeoContact(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of GeoContact(uint64_t a1)
{
  v2 = type metadata accessor for GeoContact(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t lazy protocol witness table accessor for type ImageElement.ImageStyle and conformance ImageElement.ImageStyle(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t lazy protocol witness table accessor for type AppID and conformance AppID()
{
  result = lazy protocol witness table cache variable for type AppID and conformance AppID;
  if (!lazy protocol witness table cache variable for type AppID and conformance AppID)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppID and conformance AppID);
  }

  return result;
}

void type metadata completion function for GeoContact(uint64_t a1)
{
  type metadata accessor for String?();
  if (v1 <= 0x3F)
  {
    type metadata accessor for ImageElement.ImageStyle();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for String?()
{
  if (!lazy cache variable for type metadata for String?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for String?);
    }
  }
}

uint64_t getEnumTagSinglePayload for AppID(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AppID(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for GeoContact.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for GeoContact.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t specialized GeoContact.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7865646E69 && a2 == 0xE500000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 25705 && a2 == 0xE200000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4E79616C70736964 && a2 == 0xEB00000000656D61 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x736C616974696E69 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x614265646F636E65 && a2 == 0xEC00000034366573 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x76654C6572616873 && a2 == 0xEA00000000006C65 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x7974536567616D69 && a2 == 0xEA0000000000656CLL)
  {

    return 6;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t StandardMapData.makePunchoutURL(idiom:)@<X0>(uint64_t a2@<X8>)
{
  v4 = type metadata accessor for CharacterSet();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v2 + 8);
  v15 = *v2;
  v16 = v8;
  v17 = *(v2 + 16);
  v9 = VRXIdiom.isWatchOS.getter();
  v15 = StandardMapData.makePunchoutURI(includeLabel:)((v9 & 1) == 0);
  v16 = v10;
  static CharacterSet.urlQueryAllowed.getter();
  lazy protocol witness table accessor for type String and conformance String();
  StringProtocol.addingPercentEncoding(withAllowedCharacters:)();
  v12 = v11;
  (*(v5 + 8))(v7, v4);

  if (v12)
  {
    URL.init(string:)();
  }

  else
  {
    v14 = type metadata accessor for URL();
    return (*(*(v14 - 8) + 56))(a2, 1, 1, v14);
  }
}

uint64_t StandardMapData.makeAppPunchout(idiom:)(uint64_t a1)
{
  v1 = VRXIdiom.isWatchOS.getter();
  StandardMapData.makePunchoutURI(includeLabel:)((v1 & 1) == 0);

  return AppPunchout.init(punchOutUri:bundleId:appDisplayName:)();
}

GeoUIFramework::StandardMapData __swiftcall StandardMapData.init(label:latitude:longitude:)(Swift::String label, Swift::Double latitude, Swift::Double longitude)
{
  *v3 = label;
  *(v3 + 16) = latitude;
  *(v3 + 24) = longitude;
  result.label = label;
  result.longitude = longitude;
  result.latitude = latitude;
  return result;
}

id static StandardMapData.blueTint.getter()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D4BF80]) init];
  [v0 setName_];
  return v0;
}

uint64_t StandardMapData.label.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance StandardMapData.CodingKeys()
{
  v1 = 0x656475746974616CLL;
  if (*v0 != 1)
  {
    v1 = 0x64757469676E6F6CLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6C6562616CLL;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance StandardMapData.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized StandardMapData.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance StandardMapData.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type StandardMapData.CodingKeys and conformance StandardMapData.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance StandardMapData.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type StandardMapData.CodingKeys and conformance StandardMapData.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t StandardMapData.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14GeoUIFramework15StandardMapDataV10CodingKeys33_BAB33760CABF8DBFCB3BEFF0C744961BLLOGMd, &_ss22KeyedEncodingContainerVy14GeoUIFramework15StandardMapDataV10CodingKeys33_BAB33760CABF8DBFCB3BEFF0C744961BLLOGMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v8 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type StandardMapData.CodingKeys and conformance StandardMapData.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = 0;
  v6 = v8[1];
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v6)
  {
    v10 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v9 = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v3 + 8))(v5, v2);
}

uint64_t StandardMapData.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy14GeoUIFramework15StandardMapDataV10CodingKeys33_BAB33760CABF8DBFCB3BEFF0C744961BLLOGMd, &_ss22KeyedDecodingContainerVy14GeoUIFramework15StandardMapDataV10CodingKeys33_BAB33760CABF8DBFCB3BEFF0C744961BLLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type StandardMapData.CodingKeys and conformance StandardMapData.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v21 = 0;
  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  v11 = v10;
  v12 = v9;
  v20 = 1;
  KeyedDecodingContainer.decode(_:forKey:)();
  v14 = v13;
  v19 = 2;
  KeyedDecodingContainer.decode(_:forKey:)();
  v17 = v16;
  (*(v6 + 8))(v8, v5);
  *a2 = v12;
  a2[1] = v11;
  a2[2] = v14;
  a2[3] = v17;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t StandardMapData.makePunchoutURI(includeLabel:)(char a1)
{
  v4 = *v1;
  v3 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v7 = swift_allocObject();
  v8 = MEMORY[0x277D839F8];
  *(v7 + 16) = xmmword_24FF88410;
  v9 = MEMORY[0x277D83A80];
  *(v7 + 56) = v8;
  *(v7 + 64) = v9;
  *(v7 + 32) = v6;
  v10 = String.init(format:_:)();
  MEMORY[0x25305D990](v10);

  MEMORY[0x25305D990](44, 0xE100000000000000);

  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_24FF88410;
  *(v11 + 56) = v8;
  *(v11 + 64) = v9;
  *(v11 + 32) = v5;
  v12 = String.init(format:_:)();
  v14 = v13;

  MEMORY[0x25305D990](v12, v14);

  if ((a1 & 1) != 0 && (v4 || v3 != 0xE000000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    lazy protocol witness table accessor for type String and conformance String();
    v16 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
    MEMORY[0x25305D990](v16);

    MEMORY[0x25305D990](15729, 0xE200000000000000);

    MEMORY[0x25305D990](1030515750, 0xE400000000000000);
  }

  else
  {
    MEMORY[0x25305D990](1030515750, 0xE400000000000000);
  }

  return 0xD000000000000017;
}

unint64_t lazy protocol witness table accessor for type StandardMapData.CodingKeys and conformance StandardMapData.CodingKeys()
{
  result = lazy protocol witness table cache variable for type StandardMapData.CodingKeys and conformance StandardMapData.CodingKeys;
  if (!lazy protocol witness table cache variable for type StandardMapData.CodingKeys and conformance StandardMapData.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StandardMapData.CodingKeys and conformance StandardMapData.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StandardMapData.CodingKeys and conformance StandardMapData.CodingKeys;
  if (!lazy protocol witness table cache variable for type StandardMapData.CodingKeys and conformance StandardMapData.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StandardMapData.CodingKeys and conformance StandardMapData.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StandardMapData.CodingKeys and conformance StandardMapData.CodingKeys;
  if (!lazy protocol witness table cache variable for type StandardMapData.CodingKeys and conformance StandardMapData.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StandardMapData.CodingKeys and conformance StandardMapData.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StandardMapData.CodingKeys and conformance StandardMapData.CodingKeys;
  if (!lazy protocol witness table cache variable for type StandardMapData.CodingKeys and conformance StandardMapData.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StandardMapData.CodingKeys and conformance StandardMapData.CodingKeys);
  }

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

uint64_t getEnumTagSinglePayload for StandardMapData(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t storeEnumTagSinglePayload for StandardMapData(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t specialized StandardMapData.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C6562616CLL && a2 == 0xE500000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656475746974616CLL && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x64757469676E6F6CLL && a2 == 0xE900000000000065)
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

uint64_t static MapsAppProperties.getBundleID(idiom:)(uint64_t a1)
{
  if (a1 == 6)
  {
    return 0xD000000000000012;
  }

  else
  {
    return 0x6C7070612E6D6F63;
  }
}

uint64_t protocol witness for SnippetProviding.init() in conformance GeoUIPluginProviding@<X0>(uint64_t *a1@<X8>)
{
  result = swift_allocObject();
  *a1 = result;
  return result;
}

uint64_t specialized GeoUIPluginProviding.snippet(for:mode:idiom:)(uint64_t *a1)
{
  v30 = type metadata accessor for WhereAmIView(0);
  MEMORY[0x28223BE20](v30);
  v3 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for TrafficDisambiguationView(0);
  MEMORY[0x28223BE20](v29);
  v5 = (&v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = type metadata accessor for ParkingLocationView(0);
  MEMORY[0x28223BE20](v28);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ContactDisambiguationView(0);
  MEMORY[0x28223BE20](v8);
  v10 = (&v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *a1;
  v11 = a1[1];
  v13 = a1[2];
  if (*(a1 + 80) > 1u)
  {
    if (*(a1 + 80) == 2)
    {
      *v5 = v12;
      v5[1] = v11;
      v5[2] = v13;
      type metadata accessor for OS_os_log();

      v5[3] = OS_os_log.init(subsystem:category:)();
      v5[4] = 0xD000000000000033;
      v5[5] = 0x800000024FF8AA60;
      v17 = v29;
      ActionHandler.init()();
      v18 = (v5 + *(v17 + 32));
      type metadata accessor for Context();
      lazy protocol witness table accessor for type Context and conformance Context(&lazy protocol witness table cache variable for type Context and conformance Context, MEMORY[0x277D63F68], MEMORY[0x277D63F58]);
      *v18 = EnvironmentObject.init()();
      v18[1] = v19;
      v20 = v5 + *(v17 + 36);
      *v20 = swift_getKeyPath();
      v20[8] = 0;
      lazy protocol witness table accessor for type Context and conformance Context(&lazy protocol witness table cache variable for type TrafficDisambiguationView and conformance TrafficDisambiguationView, type metadata accessor for TrafficDisambiguationView, &protocol conformance descriptor for TrafficDisambiguationView);
      v14 = View.eraseToAnyView()();
      v15 = type metadata accessor for TrafficDisambiguationView;
      v16 = v5;
    }

    else
    {
      *v3 = v12;
      *(v3 + 1) = v11;
      *(v3 + 2) = v13;
      *(v3 + 24) = *(a1 + 3);
      *(v3 + 40) = *(a1 + 5);
      *(v3 + 56) = *(a1 + 7);
      *(v3 + 9) = a1[9];
      type metadata accessor for OS_os_log();
      v32 = v12;
      v33 = v11;
      v34 = v13;
      v35 = *(a1 + 3);
      v36 = *(a1 + 5);
      v37 = *(a1 + 7);
      v38 = a1[9];
      v39 = 3;
      outlined init with copy of GeoDataModels.WhereAmIDataModel(&v32, v31);
      *(v3 + 10) = OS_os_log.init(subsystem:category:)();
      v21 = v30;
      ActionHandler.init()();
      *&v3[v21[7]] = 0;
      v22 = v21[8];
      *&v3[v22] = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOy10Foundation6LocaleV_GMd, &_s7SwiftUI11EnvironmentV7ContentOy10Foundation6LocaleV_GMR);
      swift_storeEnumTagMultiPayload();
      v23 = &v3[v21[9]];
      *v23 = swift_getKeyPath();
      v23[8] = 0;
      v24 = &v3[v21[10]];
      type metadata accessor for Context();
      lazy protocol witness table accessor for type Context and conformance Context(&lazy protocol witness table cache variable for type Context and conformance Context, MEMORY[0x277D63F68], MEMORY[0x277D63F58]);
      *v24 = EnvironmentObject.init()();
      v24[1] = v25;
      lazy protocol witness table accessor for type Context and conformance Context(&lazy protocol witness table cache variable for type WhereAmIView and conformance WhereAmIView, type metadata accessor for WhereAmIView, &protocol conformance descriptor for WhereAmIView);
      v14 = View.eraseToAnyView()();
      v15 = type metadata accessor for WhereAmIView;
      v16 = v3;
    }
  }

  else if (*(a1 + 80))
  {
    *v7 = v12;
    *(v7 + 1) = v11;
    *(v7 + 2) = v13;
    *(v7 + 24) = *(a1 + 3);
    *(v7 + 40) = *(a1 + 5);
    *(v7 + 56) = *(a1 + 7);
    *(v7 + 9) = a1[9];
    type metadata accessor for OS_os_log();
    v32 = v12;
    v33 = v11;
    v34 = v13;
    v35 = *(a1 + 3);
    v36 = *(a1 + 5);
    v37 = *(a1 + 7);
    v38 = a1[9];
    v39 = 1;
    outlined init with copy of GeoDataModels.ParkingLocationDataModel(&v32, v31);
    *(v7 + 10) = OS_os_log.init(subsystem:category:)();
    ActionHandler.init()();
    lazy protocol witness table accessor for type Context and conformance Context(&lazy protocol witness table cache variable for type ParkingLocationView and conformance ParkingLocationView, type metadata accessor for ParkingLocationView, &protocol conformance descriptor for ParkingLocationView);
    v14 = View.eraseToAnyView()();
    v15 = type metadata accessor for ParkingLocationView;
    v16 = v7;
  }

  else
  {
    *v10 = v12;
    v10[1] = v11;
    v10[2] = v13;
    type metadata accessor for OS_os_log();

    v10[3] = OS_os_log.init(subsystem:category:)();
    v10[4] = 0xD00000000000002CLL;
    v10[5] = 0x800000024FF8A800;
    ActionHandler.init()();
    lazy protocol witness table accessor for type Context and conformance Context(&lazy protocol witness table cache variable for type ContactDisambiguationView and conformance ContactDisambiguationView, type metadata accessor for ContactDisambiguationView, &protocol conformance descriptor for ContactDisambiguationView);
    v14 = View.eraseToAnyView()();
    v15 = type metadata accessor for ContactDisambiguationView;
    v16 = v10;
  }

  outlined destroy of WhereAmIView(v16, v15);
  return v14;
}

unint64_t lazy protocol witness table accessor for type GeoDataModels and conformance GeoDataModels()
{
  result = lazy protocol witness table cache variable for type GeoDataModels and conformance GeoDataModels;
  if (!lazy protocol witness table cache variable for type GeoDataModels and conformance GeoDataModels)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoDataModels and conformance GeoDataModels);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GeoDataModels and conformance GeoDataModels;
  if (!lazy protocol witness table cache variable for type GeoDataModels and conformance GeoDataModels)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoDataModels and conformance GeoDataModels);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GeoDataModels and conformance GeoDataModels;
  if (!lazy protocol witness table cache variable for type GeoDataModels and conformance GeoDataModels)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoDataModels and conformance GeoDataModels);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Context and conformance Context(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t outlined destroy of WhereAmIView(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void __swiftcall GeoDataModels.WhereAmIDataModel.init(meID:buttonLabel:localizedAddress:currentLocation:)(GeoUIFramework::GeoDataModels::WhereAmIDataModel *__return_ptr retstr, Swift::String_optional meID, Swift::String buttonLabel, Swift::String_optional localizedAddress, GeoUIFramework::StandardMapData currentLocation)
{
  v5 = *currentLocation.label._countAndFlagsBits;
  v6 = *(currentLocation.label._countAndFlagsBits + 8);
  retstr->meID = meID;
  retstr->buttonLabel = buttonLabel;
  retstr->localizedAddress = localizedAddress;
  retstr->currentLocation.label._countAndFlagsBits = v5;
  retstr->currentLocation.label._object = v6;
  *&retstr->currentLocation.latitude = *(currentLocation.label._countAndFlagsBits + 16);
}

void __swiftcall GeoDataModels.ParkingLocationDataModel.init(parkedCar:buttonLabel:)(GeoUIFramework::GeoDataModels::ParkingLocationDataModel *__return_ptr retstr, GeoUIFramework::GeoParkedCar *parkedCar, Swift::String buttonLabel)
{
  localizedAddress = parkedCar->localizedAddress;
  retstr->parkedCar.note = parkedCar->note;
  retstr->parkedCar.localizedAddress = localizedAddress;
  v4 = *&parkedCar->locationInfo.latitude;
  retstr->parkedCar.locationInfo.label = parkedCar->locationInfo.label;
  *&retstr->parkedCar.locationInfo.latitude = v4;
  retstr->buttonLabel = buttonLabel;
}

GeoUIFramework::GeoDataModels::ContactDisambiguationDataModel __swiftcall GeoDataModels.ContactDisambiguationDataModel.init(systemText:candidates:)(Swift::String systemText, Swift::OpaquePointer candidates)
{
  *v2 = systemText;
  *(v2 + 16) = candidates;
  result.systemText = systemText;
  result.candidates = candidates;
  return result;
}

uint64_t GeoDataModels.ContactDisambiguationDataModel.systemText.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t GeoDataModels.ContactDisambiguationDataModel.systemText.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t GeoDataModels.ContactDisambiguationDataModel.candidates.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance GeoDataModels.ContactDisambiguationDataModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type GeoDataModels.ContactDisambiguationDataModel.CodingKeys and conformance GeoDataModels.ContactDisambiguationDataModel.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance GeoDataModels.ContactDisambiguationDataModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type GeoDataModels.ContactDisambiguationDataModel.CodingKeys and conformance GeoDataModels.ContactDisambiguationDataModel.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t GeoDataModels.ContactDisambiguationDataModel.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14GeoUIFramework0D10DataModelsO021ContactDisambiguationF5ModelV10CodingKeys33_882E58619A019CD438BB91EBFDDE66DALLOGMd, &_ss22KeyedEncodingContainerVy14GeoUIFramework0D10DataModelsO021ContactDisambiguationF5ModelV10CodingKeys33_882E58619A019CD438BB91EBFDDE66DALLOGMR);
  v10 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v8 - v5;
  v9 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type GeoDataModels.ContactDisambiguationDataModel.CodingKeys and conformance GeoDataModels.ContactDisambiguationDataModel.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v13 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v11 = v9;
    v12 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay14GeoUIFramework0A7ContactVGMd, &_sSay14GeoUIFramework0A7ContactVGMR);
    lazy protocol witness table accessor for type [GeoContact] and conformance <A> [A](&lazy protocol witness table cache variable for type [GeoContact] and conformance <A> [A], &lazy protocol witness table cache variable for type GeoContact and conformance GeoContact, &protocol conformance descriptor for GeoContact, MEMORY[0x277D83948]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v10 + 8))(v6, v4);
}

unint64_t lazy protocol witness table accessor for type GeoDataModels.ContactDisambiguationDataModel.CodingKeys and conformance GeoDataModels.ContactDisambiguationDataModel.CodingKeys()
{
  result = lazy protocol witness table cache variable for type GeoDataModels.ContactDisambiguationDataModel.CodingKeys and conformance GeoDataModels.ContactDisambiguationDataModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type GeoDataModels.ContactDisambiguationDataModel.CodingKeys and conformance GeoDataModels.ContactDisambiguationDataModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoDataModels.ContactDisambiguationDataModel.CodingKeys and conformance GeoDataModels.ContactDisambiguationDataModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GeoDataModels.ContactDisambiguationDataModel.CodingKeys and conformance GeoDataModels.ContactDisambiguationDataModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type GeoDataModels.ContactDisambiguationDataModel.CodingKeys and conformance GeoDataModels.ContactDisambiguationDataModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoDataModels.ContactDisambiguationDataModel.CodingKeys and conformance GeoDataModels.ContactDisambiguationDataModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GeoDataModels.ContactDisambiguationDataModel.CodingKeys and conformance GeoDataModels.ContactDisambiguationDataModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type GeoDataModels.ContactDisambiguationDataModel.CodingKeys and conformance GeoDataModels.ContactDisambiguationDataModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoDataModels.ContactDisambiguationDataModel.CodingKeys and conformance GeoDataModels.ContactDisambiguationDataModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GeoDataModels.ContactDisambiguationDataModel.CodingKeys and conformance GeoDataModels.ContactDisambiguationDataModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type GeoDataModels.ContactDisambiguationDataModel.CodingKeys and conformance GeoDataModels.ContactDisambiguationDataModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoDataModels.ContactDisambiguationDataModel.CodingKeys and conformance GeoDataModels.ContactDisambiguationDataModel.CodingKeys);
  }

  return result;
}

uint64_t GeoDataModels.ContactDisambiguationDataModel.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy14GeoUIFramework0D10DataModelsO021ContactDisambiguationF5ModelV10CodingKeys33_882E58619A019CD438BB91EBFDDE66DALLOGMd, &_ss22KeyedDecodingContainerVy14GeoUIFramework0D10DataModelsO021ContactDisambiguationF5ModelV10CodingKeys33_882E58619A019CD438BB91EBFDDE66DALLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type GeoDataModels.ContactDisambiguationDataModel.CodingKeys and conformance GeoDataModels.ContactDisambiguationDataModel.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v17 = 0;
  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  v11 = v10;
  v12 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay14GeoUIFramework0A7ContactVGMd, &_sSay14GeoUIFramework0A7ContactVGMR);
  v16 = 1;
  lazy protocol witness table accessor for type [GeoContact] and conformance <A> [A](&lazy protocol witness table cache variable for type [GeoContact] and conformance <A> [A], &lazy protocol witness table cache variable for type GeoContact and conformance GeoContact, &protocol conformance descriptor for GeoContact, MEMORY[0x277D83978]);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v6 + 8))(v8, v5);
  v13 = v15[1];
  *a2 = v12;
  a2[1] = v11;
  a2[2] = v13;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t lazy protocol witness table accessor for type [GeoContact] and conformance <A> [A](unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay14GeoUIFramework0A7ContactVGMd, &_sSay14GeoUIFramework0A7ContactVGMR);
    lazy protocol witness table accessor for type GeoContact and conformance GeoContact(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type GeoContact and conformance GeoContact(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for GeoContact(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t GeoDataModels.ParkingLocationDataModel.parkedCar.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[1];
  v7[0] = *v1;
  v7[1] = v2;
  v4 = v1[3];
  v8 = v1[2];
  v3 = v8;
  v9 = v4;
  *a1 = v7[0];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  return outlined init with copy of GeoParkedCar(v7, &v6);
}

uint64_t GeoDataModels.ParkingLocationDataModel.buttonLabel.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance GeoDataModels.ParkingLocationDataModel.CodingKeys()
{
  if (*v0)
  {
    return 0x614C6E6F74747562;
  }

  else
  {
    return 0x614364656B726170;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance GeoDataModels.ParkingLocationDataModel.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x614364656B726170 && a2 == 0xE900000000000072;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x614C6E6F74747562 && a2 == 0xEB000000006C6562)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance GeoDataModels.ParkingLocationDataModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type GeoDataModels.ParkingLocationDataModel.CodingKeys and conformance GeoDataModels.ParkingLocationDataModel.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance GeoDataModels.ParkingLocationDataModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type GeoDataModels.ParkingLocationDataModel.CodingKeys and conformance GeoDataModels.ParkingLocationDataModel.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t GeoDataModels.ParkingLocationDataModel.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14GeoUIFramework0D10DataModelsO015ParkingLocationF5ModelV10CodingKeys33_882E58619A019CD438BB91EBFDDE66DALLOGMd, &_ss22KeyedEncodingContainerVy14GeoUIFramework0D10DataModelsO015ParkingLocationF5ModelV10CodingKeys33_882E58619A019CD438BB91EBFDDE66DALLOGMR);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - v6;
  v8 = v1[1];
  v20 = *v1;
  v21 = v8;
  v9 = v1[3];
  v22 = v1[2];
  v23 = v9;
  v10 = *(v1 + 9);
  v24 = *(v1 + 8);
  v12 = v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  outlined init with copy of GeoParkedCar(&v20, &v16);
  lazy protocol witness table accessor for type GeoDataModels.ParkingLocationDataModel.CodingKeys and conformance GeoDataModels.ParkingLocationDataModel.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v16 = v20;
  v17 = v21;
  v18 = v22;
  v19 = v23;
  v15 = 0;
  lazy protocol witness table accessor for type GeoParkedCar and conformance GeoParkedCar();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  v14[0] = v16;
  v14[1] = v17;
  v14[2] = v18;
  v14[3] = v19;
  outlined destroy of GeoParkedCar(v14);
  if (!v2)
  {
    v13 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t lazy protocol witness table accessor for type GeoDataModels.ParkingLocationDataModel.CodingKeys and conformance GeoDataModels.ParkingLocationDataModel.CodingKeys()
{
  result = lazy protocol witness table cache variable for type GeoDataModels.ParkingLocationDataModel.CodingKeys and conformance GeoDataModels.ParkingLocationDataModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type GeoDataModels.ParkingLocationDataModel.CodingKeys and conformance GeoDataModels.ParkingLocationDataModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoDataModels.ParkingLocationDataModel.CodingKeys and conformance GeoDataModels.ParkingLocationDataModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GeoDataModels.ParkingLocationDataModel.CodingKeys and conformance GeoDataModels.ParkingLocationDataModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type GeoDataModels.ParkingLocationDataModel.CodingKeys and conformance GeoDataModels.ParkingLocationDataModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoDataModels.ParkingLocationDataModel.CodingKeys and conformance GeoDataModels.ParkingLocationDataModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GeoDataModels.ParkingLocationDataModel.CodingKeys and conformance GeoDataModels.ParkingLocationDataModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type GeoDataModels.ParkingLocationDataModel.CodingKeys and conformance GeoDataModels.ParkingLocationDataModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoDataModels.ParkingLocationDataModel.CodingKeys and conformance GeoDataModels.ParkingLocationDataModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GeoDataModels.ParkingLocationDataModel.CodingKeys and conformance GeoDataModels.ParkingLocationDataModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type GeoDataModels.ParkingLocationDataModel.CodingKeys and conformance GeoDataModels.ParkingLocationDataModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoDataModels.ParkingLocationDataModel.CodingKeys and conformance GeoDataModels.ParkingLocationDataModel.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type GeoParkedCar and conformance GeoParkedCar()
{
  result = lazy protocol witness table cache variable for type GeoParkedCar and conformance GeoParkedCar;
  if (!lazy protocol witness table cache variable for type GeoParkedCar and conformance GeoParkedCar)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoParkedCar and conformance GeoParkedCar);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GeoParkedCar and conformance GeoParkedCar;
  if (!lazy protocol witness table cache variable for type GeoParkedCar and conformance GeoParkedCar)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoParkedCar and conformance GeoParkedCar);
  }

  return result;
}

uint64_t GeoDataModels.ParkingLocationDataModel.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v18 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy14GeoUIFramework0D10DataModelsO015ParkingLocationF5ModelV10CodingKeys33_882E58619A019CD438BB91EBFDDE66DALLOGMd, &_ss22KeyedDecodingContainerVy14GeoUIFramework0D10DataModelsO015ParkingLocationF5ModelV10CodingKeys33_882E58619A019CD438BB91EBFDDE66DALLOGMR);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type GeoDataModels.ParkingLocationDataModel.CodingKeys and conformance GeoDataModels.ParkingLocationDataModel.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v8 = v5;
  v9 = v18;
  v33 = 0;
  lazy protocol witness table accessor for type GeoParkedCar and conformance GeoParkedCar();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v28 = v24;
  v29 = v25;
  v30 = v26;
  v31 = v27;
  v32 = 1;
  v10 = KeyedDecodingContainer.decode(_:forKey:)();
  v12 = v11;
  (*(v8 + 8))(v7, v4);
  v13 = v28;
  v14 = v29;
  v19[0] = v28;
  v19[1] = v29;
  v15 = v31;
  v19[2] = v30;
  v19[3] = v31;
  *&v20 = v10;
  *(&v20 + 1) = v12;
  v9[2] = v30;
  v9[3] = v15;
  *v9 = v13;
  v9[1] = v14;
  v9[4] = v20;
  outlined init with copy of GeoDataModels.ParkingLocationDataModel(v19, v21);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v21[0] = v28;
  v21[1] = v29;
  v21[2] = v30;
  v21[3] = v31;
  v22 = v10;
  v23 = v12;
  return outlined destroy of GeoDataModels.ParkingLocationDataModel(v21);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance GeoDataModels.ContactDisambiguationDataModel.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0x65546D6574737973 && a2 == 0xEA00000000007478 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x74616469646E6163 && a2 == 0xEA00000000007365)
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
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance GeoDataModels.TrafficDisambiguationDataModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type GeoDataModels.TrafficDisambiguationDataModel.CodingKeys and conformance GeoDataModels.TrafficDisambiguationDataModel.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance GeoDataModels.TrafficDisambiguationDataModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type GeoDataModels.TrafficDisambiguationDataModel.CodingKeys and conformance GeoDataModels.TrafficDisambiguationDataModel.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t GeoDataModels.TrafficDisambiguationDataModel.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14GeoUIFramework0D10DataModelsO021TrafficDisambiguationF5ModelV10CodingKeys33_882E58619A019CD438BB91EBFDDE66DALLOGMd, &_ss22KeyedEncodingContainerVy14GeoUIFramework0D10DataModelsO021TrafficDisambiguationF5ModelV10CodingKeys33_882E58619A019CD438BB91EBFDDE66DALLOGMR);
  v10 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v8 - v5;
  v9 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type GeoDataModels.TrafficDisambiguationDataModel.CodingKeys and conformance GeoDataModels.TrafficDisambiguationDataModel.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v13 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v11 = v9;
    v12 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay14GeoUIFramework0A15TrafficIncidentVGMd, &_sSay14GeoUIFramework0A15TrafficIncidentVGMR);
    lazy protocol witness table accessor for type [GeoTrafficIncident] and conformance <A> [A](&lazy protocol witness table cache variable for type [GeoTrafficIncident] and conformance <A> [A], lazy protocol witness table accessor for type GeoTrafficIncident and conformance GeoTrafficIncident, MEMORY[0x277D83948]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v10 + 8))(v6, v4);
}

unint64_t lazy protocol witness table accessor for type GeoDataModels.TrafficDisambiguationDataModel.CodingKeys and conformance GeoDataModels.TrafficDisambiguationDataModel.CodingKeys()
{
  result = lazy protocol witness table cache variable for type GeoDataModels.TrafficDisambiguationDataModel.CodingKeys and conformance GeoDataModels.TrafficDisambiguationDataModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type GeoDataModels.TrafficDisambiguationDataModel.CodingKeys and conformance GeoDataModels.TrafficDisambiguationDataModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoDataModels.TrafficDisambiguationDataModel.CodingKeys and conformance GeoDataModels.TrafficDisambiguationDataModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GeoDataModels.TrafficDisambiguationDataModel.CodingKeys and conformance GeoDataModels.TrafficDisambiguationDataModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type GeoDataModels.TrafficDisambiguationDataModel.CodingKeys and conformance GeoDataModels.TrafficDisambiguationDataModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoDataModels.TrafficDisambiguationDataModel.CodingKeys and conformance GeoDataModels.TrafficDisambiguationDataModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GeoDataModels.TrafficDisambiguationDataModel.CodingKeys and conformance GeoDataModels.TrafficDisambiguationDataModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type GeoDataModels.TrafficDisambiguationDataModel.CodingKeys and conformance GeoDataModels.TrafficDisambiguationDataModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoDataModels.TrafficDisambiguationDataModel.CodingKeys and conformance GeoDataModels.TrafficDisambiguationDataModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GeoDataModels.TrafficDisambiguationDataModel.CodingKeys and conformance GeoDataModels.TrafficDisambiguationDataModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type GeoDataModels.TrafficDisambiguationDataModel.CodingKeys and conformance GeoDataModels.TrafficDisambiguationDataModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoDataModels.TrafficDisambiguationDataModel.CodingKeys and conformance GeoDataModels.TrafficDisambiguationDataModel.CodingKeys);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [GeoTrafficIncident] and conformance <A> [A](unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay14GeoUIFramework0A15TrafficIncidentVGMd, &_sSay14GeoUIFramework0A15TrafficIncidentVGMR);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t GeoDataModels.TrafficDisambiguationDataModel.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy14GeoUIFramework0D10DataModelsO021TrafficDisambiguationF5ModelV10CodingKeys33_882E58619A019CD438BB91EBFDDE66DALLOGMd, &_ss22KeyedDecodingContainerVy14GeoUIFramework0D10DataModelsO021TrafficDisambiguationF5ModelV10CodingKeys33_882E58619A019CD438BB91EBFDDE66DALLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type GeoDataModels.TrafficDisambiguationDataModel.CodingKeys and conformance GeoDataModels.TrafficDisambiguationDataModel.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v17 = 0;
  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  v11 = v10;
  v12 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay14GeoUIFramework0A15TrafficIncidentVGMd, &_sSay14GeoUIFramework0A15TrafficIncidentVGMR);
  v16 = 1;
  lazy protocol witness table accessor for type [GeoTrafficIncident] and conformance <A> [A](&lazy protocol witness table cache variable for type [GeoTrafficIncident] and conformance <A> [A], lazy protocol witness table accessor for type GeoTrafficIncident and conformance GeoTrafficIncident, MEMORY[0x277D83978]);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v6 + 8))(v8, v5);
  v13 = v15[1];
  *a2 = v12;
  a2[1] = v11;
  a2[2] = v13;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t GeoDataModels.WhereAmIDataModel.meID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t GeoDataModels.WhereAmIDataModel.buttonLabel.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t GeoDataModels.WhereAmIDataModel.localizedAddress.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t GeoDataModels.WhereAmIDataModel.currentLocation.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 56);
  *a1 = *(v1 + 48);
  *(a1 + 8) = v2;
  *(a1 + 16) = *(v1 + 64);
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance GeoDataModels.WhereAmIDataModel.CodingKeys()
{
  v1 = 1145660781;
  v2 = 0xD000000000000010;
  if (*v0 != 2)
  {
    v2 = 0x4C746E6572727563;
  }

  if (*v0)
  {
    v1 = 0x614C6E6F74747562;
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

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance GeoDataModels.WhereAmIDataModel.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized GeoDataModels.WhereAmIDataModel.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance GeoDataModels.WhereAmIDataModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type GeoDataModels.WhereAmIDataModel.CodingKeys and conformance GeoDataModels.WhereAmIDataModel.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance GeoDataModels.WhereAmIDataModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type GeoDataModels.WhereAmIDataModel.CodingKeys and conformance GeoDataModels.WhereAmIDataModel.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t GeoDataModels.WhereAmIDataModel.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14GeoUIFramework0D10DataModelsO17WhereAmIDataModelV10CodingKeys33_882E58619A019CD438BB91EBFDDE66DALLOGMd, &_ss22KeyedEncodingContainerVy14GeoUIFramework0D10DataModelsO17WhereAmIDataModelV10CodingKeys33_882E58619A019CD438BB91EBFDDE66DALLOGMR);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v16 - v5;
  v7 = v1[2];
  v21 = v1[3];
  v22 = v7;
  v8 = v1[4];
  v19 = v1[5];
  v20 = v8;
  v9 = v1[6];
  v17 = v1[7];
  v18 = v9;
  v10 = v1[8];
  v11 = v1[9];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type GeoDataModels.WhereAmIDataModel.CodingKeys and conformance GeoDataModels.WhereAmIDataModel.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v24) = 0;
  v12 = v23;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v12)
  {
    v13 = v17;
    v14 = v18;
    LOBYTE(v24) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v24) = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v24 = v14;
    v25 = v13;
    v26 = v10;
    v27 = v11;
    v28 = 3;
    lazy protocol witness table accessor for type StandardMapData and conformance StandardMapData();

    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t lazy protocol witness table accessor for type GeoDataModels.WhereAmIDataModel.CodingKeys and conformance GeoDataModels.WhereAmIDataModel.CodingKeys()
{
  result = lazy protocol witness table cache variable for type GeoDataModels.WhereAmIDataModel.CodingKeys and conformance GeoDataModels.WhereAmIDataModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type GeoDataModels.WhereAmIDataModel.CodingKeys and conformance GeoDataModels.WhereAmIDataModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoDataModels.WhereAmIDataModel.CodingKeys and conformance GeoDataModels.WhereAmIDataModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GeoDataModels.WhereAmIDataModel.CodingKeys and conformance GeoDataModels.WhereAmIDataModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type GeoDataModels.WhereAmIDataModel.CodingKeys and conformance GeoDataModels.WhereAmIDataModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoDataModels.WhereAmIDataModel.CodingKeys and conformance GeoDataModels.WhereAmIDataModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GeoDataModels.WhereAmIDataModel.CodingKeys and conformance GeoDataModels.WhereAmIDataModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type GeoDataModels.WhereAmIDataModel.CodingKeys and conformance GeoDataModels.WhereAmIDataModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoDataModels.WhereAmIDataModel.CodingKeys and conformance GeoDataModels.WhereAmIDataModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GeoDataModels.WhereAmIDataModel.CodingKeys and conformance GeoDataModels.WhereAmIDataModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type GeoDataModels.WhereAmIDataModel.CodingKeys and conformance GeoDataModels.WhereAmIDataModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoDataModels.WhereAmIDataModel.CodingKeys and conformance GeoDataModels.WhereAmIDataModel.CodingKeys);
  }

  return result;
}

uint64_t GeoDataModels.WhereAmIDataModel.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy14GeoUIFramework0D10DataModelsO17WhereAmIDataModelV10CodingKeys33_882E58619A019CD438BB91EBFDDE66DALLOGMd, &_ss22KeyedDecodingContainerVy14GeoUIFramework0D10DataModelsO17WhereAmIDataModelV10CodingKeys33_882E58619A019CD438BB91EBFDDE66DALLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v25 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type GeoDataModels.WhereAmIDataModel.CodingKeys and conformance GeoDataModels.WhereAmIDataModel.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v37[0]) = 0;
  v9 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v31 = v10;
  LOBYTE(v37[0]) = 1;
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  v30 = v12;
  v28 = v11;
  LOBYTE(v37[0]) = 2;
  v27 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v29 = v13;
  v41 = 3;
  lazy protocol witness table accessor for type StandardMapData and conformance StandardMapData();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v6 + 8))(v8, v5);
  v25 = *(&v39 + 1);
  v26 = v39;
  v14 = v40;
  *&v32 = v9;
  v15 = v31;
  *(&v32 + 1) = v31;
  v16 = v28;
  *&v33 = v28;
  v17 = v30;
  *(&v33 + 1) = v30;
  v18 = v27;
  *&v34 = v27;
  v19 = v29;
  *(&v34 + 1) = v29;
  v35 = v39;
  v36 = v40;
  v20 = v32;
  v21 = v33;
  v22 = v40;
  v23 = v34;
  a2[3] = v39;
  a2[4] = v22;
  a2[1] = v21;
  a2[2] = v23;
  *a2 = v20;
  outlined init with copy of GeoDataModels.WhereAmIDataModel(&v32, v37);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v37[0] = v9;
  v37[1] = v15;
  v37[2] = v16;
  v37[3] = v17;
  v37[4] = v18;
  v37[5] = v19;
  v37[6] = v26;
  v37[7] = v25;
  v38 = v14;
  return outlined destroy of GeoDataModels.WhereAmIDataModel(v37);
}

uint64_t GeoDataModels.snippetHidden(for:idiom:)(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for DeviceIdiom();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v2 + 80) | 2) == 2)
  {
    v8 = 0;
  }

  else
  {
    v9 = v5;
    (*(v4 + 104))(v7, *MEMORY[0x277D61BE8], v5);
    v8 = static DeviceIdiom.== infix(_:_:)();
    (*(v4 + 8))(v7, v9);
  }

  return v8 & 1;
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance GeoDataModels.CodingKeys()
{
  v1 = 0x4C676E696B726170;
  v2 = 0xD000000000000015;
  if (*v0 != 2)
  {
    v2 = 0x496D416572656877;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000015;
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

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance GeoDataModels.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized GeoDataModels.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance GeoDataModels.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type GeoDataModels.CodingKeys and conformance GeoDataModels.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance GeoDataModels.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type GeoDataModels.CodingKeys and conformance GeoDataModels.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance GeoDataModels.ContactDisambiguationCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type GeoDataModels.ContactDisambiguationCodingKeys and conformance GeoDataModels.ContactDisambiguationCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance GeoDataModels.ContactDisambiguationCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type GeoDataModels.ContactDisambiguationCodingKeys and conformance GeoDataModels.ContactDisambiguationCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance GeoDataModels.ParkingLocationCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type GeoDataModels.ParkingLocationCodingKeys and conformance GeoDataModels.ParkingLocationCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance GeoDataModels.ParkingLocationCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type GeoDataModels.ParkingLocationCodingKeys and conformance GeoDataModels.ParkingLocationCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance GeoDataModels.TrafficDisambiguationCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type GeoDataModels.TrafficDisambiguationCodingKeys and conformance GeoDataModels.TrafficDisambiguationCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance GeoDataModels.TrafficDisambiguationCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type GeoDataModels.TrafficDisambiguationCodingKeys and conformance GeoDataModels.TrafficDisambiguationCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance GeoDataModels.ContactDisambiguationCodingKeys()
{
  Hasher.init(_seed:)();
  MEMORY[0x25305DBD0](0);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance GeoDataModels.ContactDisambiguationCodingKeys(uint64_t a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x25305DBD0](0);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance GeoDataModels.ContactDisambiguationCodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance GeoDataModels.WhereAmICodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type GeoDataModels.WhereAmICodingKeys and conformance GeoDataModels.WhereAmICodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance GeoDataModels.WhereAmICodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type GeoDataModels.WhereAmICodingKeys and conformance GeoDataModels.WhereAmICodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t GeoDataModels.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14GeoUIFramework0D10DataModelsO18WhereAmICodingKeys33_882E58619A019CD438BB91EBFDDE66DALLOGMd, &_ss22KeyedEncodingContainerVy14GeoUIFramework0D10DataModelsO18WhereAmICodingKeys33_882E58619A019CD438BB91EBFDDE66DALLOGMR);
  v32 = *(v4 - 8);
  v33 = v4;
  MEMORY[0x28223BE20](v4);
  v31 = &v24 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14GeoUIFramework0D10DataModelsO31TrafficDisambiguationCodingKeys33_882E58619A019CD438BB91EBFDDE66DALLOGMd, &_ss22KeyedEncodingContainerVy14GeoUIFramework0D10DataModelsO31TrafficDisambiguationCodingKeys33_882E58619A019CD438BB91EBFDDE66DALLOGMR);
  v29 = *(v6 - 8);
  v30 = v6;
  MEMORY[0x28223BE20](v6);
  v28 = &v24 - v7;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14GeoUIFramework0D10DataModelsO25ParkingLocationCodingKeys33_882E58619A019CD438BB91EBFDDE66DALLOGMd, &_ss22KeyedEncodingContainerVy14GeoUIFramework0D10DataModelsO25ParkingLocationCodingKeys33_882E58619A019CD438BB91EBFDDE66DALLOGMR);
  v26 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v9 = &v24 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14GeoUIFramework0D10DataModelsO31ContactDisambiguationCodingKeys33_882E58619A019CD438BB91EBFDDE66DALLOGMd, &_ss22KeyedEncodingContainerVy14GeoUIFramework0D10DataModelsO31ContactDisambiguationCodingKeys33_882E58619A019CD438BB91EBFDDE66DALLOGMR);
  v25 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14GeoUIFramework0D10DataModelsO10CodingKeys33_882E58619A019CD438BB91EBFDDE66DALLOGMd, &_ss22KeyedEncodingContainerVy14GeoUIFramework0D10DataModelsO10CodingKeys33_882E58619A019CD438BB91EBFDDE66DALLOGMR);
  v37 = *(v13 - 8);
  v38 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = &v24 - v14;
  v16 = v2[1];
  v34 = *v2;
  v35 = v16;
  v36 = v2[2];
  v17 = *(v2 + 80);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type GeoDataModels.CodingKeys and conformance GeoDataModels.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (v17 > 1)
  {
    if (v17 == 2)
    {
      LOBYTE(v39) = 2;
      lazy protocol witness table accessor for type GeoDataModels.TrafficDisambiguationCodingKeys and conformance GeoDataModels.TrafficDisambiguationCodingKeys();
      v9 = v28;
      v18 = v38;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v39 = v34;
      v40 = v35;
      v41 = v36;
      lazy protocol witness table accessor for type GeoDataModels.TrafficDisambiguationDataModel and conformance GeoDataModels.TrafficDisambiguationDataModel();
      v19 = v30;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v20 = v29;
    }

    else
    {
      LOBYTE(v39) = 3;
      lazy protocol witness table accessor for type GeoDataModels.WhereAmICodingKeys and conformance GeoDataModels.WhereAmICodingKeys();
      v9 = v31;
      v18 = v38;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v39 = v34;
      v40 = v35;
      v41 = v36;
      v22 = *(v2 + 5);
      v42 = *(v2 + 3);
      v43 = v22;
      v44 = *(v2 + 7);
      v45 = v2[9];
      lazy protocol witness table accessor for type GeoDataModels.WhereAmIDataModel and conformance GeoDataModels.WhereAmIDataModel();
      v19 = v33;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v20 = v32;
    }

    goto LABEL_8;
  }

  if (v17)
  {
    LOBYTE(v39) = 1;
    lazy protocol witness table accessor for type GeoDataModels.ParkingLocationCodingKeys and conformance GeoDataModels.ParkingLocationCodingKeys();
    v18 = v38;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v39 = v34;
    v40 = v35;
    v41 = v36;
    v21 = *(v2 + 5);
    v42 = *(v2 + 3);
    v43 = v21;
    v44 = *(v2 + 7);
    v45 = v2[9];
    lazy protocol witness table accessor for type GeoDataModels.ParkingLocationDataModel and conformance GeoDataModels.ParkingLocationDataModel();
    v19 = v27;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v20 = v26;
LABEL_8:
    (*(v20 + 8))(v9, v19);
    return (*(v37 + 8))(v15, v18);
  }

  LOBYTE(v39) = 0;
  lazy protocol witness table accessor for type GeoDataModels.ContactDisambiguationCodingKeys and conformance GeoDataModels.ContactDisambiguationCodingKeys();
  v18 = v38;
  KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  v39 = v34;
  v40 = v35;
  v41 = v36;
  lazy protocol witness table accessor for type GeoDataModels.ContactDisambiguationDataModel and conformance GeoDataModels.ContactDisambiguationDataModel();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  (*(v25 + 8))(v12, v10);
  return (*(v37 + 8))(v15, v18);
}

unint64_t lazy protocol witness table accessor for type GeoDataModels.CodingKeys and conformance GeoDataModels.CodingKeys()
{
  result = lazy protocol witness table cache variable for type GeoDataModels.CodingKeys and conformance GeoDataModels.CodingKeys;
  if (!lazy protocol witness table cache variable for type GeoDataModels.CodingKeys and conformance GeoDataModels.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoDataModels.CodingKeys and conformance GeoDataModels.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GeoDataModels.CodingKeys and conformance GeoDataModels.CodingKeys;
  if (!lazy protocol witness table cache variable for type GeoDataModels.CodingKeys and conformance GeoDataModels.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoDataModels.CodingKeys and conformance GeoDataModels.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GeoDataModels.CodingKeys and conformance GeoDataModels.CodingKeys;
  if (!lazy protocol witness table cache variable for type GeoDataModels.CodingKeys and conformance GeoDataModels.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoDataModels.CodingKeys and conformance GeoDataModels.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GeoDataModels.CodingKeys and conformance GeoDataModels.CodingKeys;
  if (!lazy protocol witness table cache variable for type GeoDataModels.CodingKeys and conformance GeoDataModels.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoDataModels.CodingKeys and conformance GeoDataModels.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type GeoDataModels.WhereAmICodingKeys and conformance GeoDataModels.WhereAmICodingKeys()
{
  result = lazy protocol witness table cache variable for type GeoDataModels.WhereAmICodingKeys and conformance GeoDataModels.WhereAmICodingKeys;
  if (!lazy protocol witness table cache variable for type GeoDataModels.WhereAmICodingKeys and conformance GeoDataModels.WhereAmICodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoDataModels.WhereAmICodingKeys and conformance GeoDataModels.WhereAmICodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GeoDataModels.WhereAmICodingKeys and conformance GeoDataModels.WhereAmICodingKeys;
  if (!lazy protocol witness table cache variable for type GeoDataModels.WhereAmICodingKeys and conformance GeoDataModels.WhereAmICodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoDataModels.WhereAmICodingKeys and conformance GeoDataModels.WhereAmICodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GeoDataModels.WhereAmICodingKeys and conformance GeoDataModels.WhereAmICodingKeys;
  if (!lazy protocol witness table cache variable for type GeoDataModels.WhereAmICodingKeys and conformance GeoDataModels.WhereAmICodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoDataModels.WhereAmICodingKeys and conformance GeoDataModels.WhereAmICodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GeoDataModels.WhereAmICodingKeys and conformance GeoDataModels.WhereAmICodingKeys;
  if (!lazy protocol witness table cache variable for type GeoDataModels.WhereAmICodingKeys and conformance GeoDataModels.WhereAmICodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoDataModels.WhereAmICodingKeys and conformance GeoDataModels.WhereAmICodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type GeoDataModels.TrafficDisambiguationCodingKeys and conformance GeoDataModels.TrafficDisambiguationCodingKeys()
{
  result = lazy protocol witness table cache variable for type GeoDataModels.TrafficDisambiguationCodingKeys and conformance GeoDataModels.TrafficDisambiguationCodingKeys;
  if (!lazy protocol witness table cache variable for type GeoDataModels.TrafficDisambiguationCodingKeys and conformance GeoDataModels.TrafficDisambiguationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoDataModels.TrafficDisambiguationCodingKeys and conformance GeoDataModels.TrafficDisambiguationCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GeoDataModels.TrafficDisambiguationCodingKeys and conformance GeoDataModels.TrafficDisambiguationCodingKeys;
  if (!lazy protocol witness table cache variable for type GeoDataModels.TrafficDisambiguationCodingKeys and conformance GeoDataModels.TrafficDisambiguationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoDataModels.TrafficDisambiguationCodingKeys and conformance GeoDataModels.TrafficDisambiguationCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GeoDataModels.TrafficDisambiguationCodingKeys and conformance GeoDataModels.TrafficDisambiguationCodingKeys;
  if (!lazy protocol witness table cache variable for type GeoDataModels.TrafficDisambiguationCodingKeys and conformance GeoDataModels.TrafficDisambiguationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoDataModels.TrafficDisambiguationCodingKeys and conformance GeoDataModels.TrafficDisambiguationCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GeoDataModels.TrafficDisambiguationCodingKeys and conformance GeoDataModels.TrafficDisambiguationCodingKeys;
  if (!lazy protocol witness table cache variable for type GeoDataModels.TrafficDisambiguationCodingKeys and conformance GeoDataModels.TrafficDisambiguationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoDataModels.TrafficDisambiguationCodingKeys and conformance GeoDataModels.TrafficDisambiguationCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type GeoDataModels.ParkingLocationCodingKeys and conformance GeoDataModels.ParkingLocationCodingKeys()
{
  result = lazy protocol witness table cache variable for type GeoDataModels.ParkingLocationCodingKeys and conformance GeoDataModels.ParkingLocationCodingKeys;
  if (!lazy protocol witness table cache variable for type GeoDataModels.ParkingLocationCodingKeys and conformance GeoDataModels.ParkingLocationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoDataModels.ParkingLocationCodingKeys and conformance GeoDataModels.ParkingLocationCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GeoDataModels.ParkingLocationCodingKeys and conformance GeoDataModels.ParkingLocationCodingKeys;
  if (!lazy protocol witness table cache variable for type GeoDataModels.ParkingLocationCodingKeys and conformance GeoDataModels.ParkingLocationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoDataModels.ParkingLocationCodingKeys and conformance GeoDataModels.ParkingLocationCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GeoDataModels.ParkingLocationCodingKeys and conformance GeoDataModels.ParkingLocationCodingKeys;
  if (!lazy protocol witness table cache variable for type GeoDataModels.ParkingLocationCodingKeys and conformance GeoDataModels.ParkingLocationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoDataModels.ParkingLocationCodingKeys and conformance GeoDataModels.ParkingLocationCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GeoDataModels.ParkingLocationCodingKeys and conformance GeoDataModels.ParkingLocationCodingKeys;
  if (!lazy protocol witness table cache variable for type GeoDataModels.ParkingLocationCodingKeys and conformance GeoDataModels.ParkingLocationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoDataModels.ParkingLocationCodingKeys and conformance GeoDataModels.ParkingLocationCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type GeoDataModels.ContactDisambiguationCodingKeys and conformance GeoDataModels.ContactDisambiguationCodingKeys()
{
  result = lazy protocol witness table cache variable for type GeoDataModels.ContactDisambiguationCodingKeys and conformance GeoDataModels.ContactDisambiguationCodingKeys;
  if (!lazy protocol witness table cache variable for type GeoDataModels.ContactDisambiguationCodingKeys and conformance GeoDataModels.ContactDisambiguationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoDataModels.ContactDisambiguationCodingKeys and conformance GeoDataModels.ContactDisambiguationCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GeoDataModels.ContactDisambiguationCodingKeys and conformance GeoDataModels.ContactDisambiguationCodingKeys;
  if (!lazy protocol witness table cache variable for type GeoDataModels.ContactDisambiguationCodingKeys and conformance GeoDataModels.ContactDisambiguationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoDataModels.ContactDisambiguationCodingKeys and conformance GeoDataModels.ContactDisambiguationCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GeoDataModels.ContactDisambiguationCodingKeys and conformance GeoDataModels.ContactDisambiguationCodingKeys;
  if (!lazy protocol witness table cache variable for type GeoDataModels.ContactDisambiguationCodingKeys and conformance GeoDataModels.ContactDisambiguationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoDataModels.ContactDisambiguationCodingKeys and conformance GeoDataModels.ContactDisambiguationCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GeoDataModels.ContactDisambiguationCodingKeys and conformance GeoDataModels.ContactDisambiguationCodingKeys;
  if (!lazy protocol witness table cache variable for type GeoDataModels.ContactDisambiguationCodingKeys and conformance GeoDataModels.ContactDisambiguationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoDataModels.ContactDisambiguationCodingKeys and conformance GeoDataModels.ContactDisambiguationCodingKeys);
  }

  return result;
}

uint64_t GeoDataModels.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v57 = a2;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy14GeoUIFramework0D10DataModelsO18WhereAmICodingKeys33_882E58619A019CD438BB91EBFDDE66DALLOGMd, &_ss22KeyedDecodingContainerVy14GeoUIFramework0D10DataModelsO18WhereAmICodingKeys33_882E58619A019CD438BB91EBFDDE66DALLOGMR);
  v54 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v56 = &v45 - v3;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy14GeoUIFramework0D10DataModelsO31TrafficDisambiguationCodingKeys33_882E58619A019CD438BB91EBFDDE66DALLOGMd, &_ss22KeyedDecodingContainerVy14GeoUIFramework0D10DataModelsO31TrafficDisambiguationCodingKeys33_882E58619A019CD438BB91EBFDDE66DALLOGMR);
  v53 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v55 = &v45 - v4;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy14GeoUIFramework0D10DataModelsO25ParkingLocationCodingKeys33_882E58619A019CD438BB91EBFDDE66DALLOGMd, &_ss22KeyedDecodingContainerVy14GeoUIFramework0D10DataModelsO25ParkingLocationCodingKeys33_882E58619A019CD438BB91EBFDDE66DALLOGMR);
  v51 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v6 = &v45 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy14GeoUIFramework0D10DataModelsO31ContactDisambiguationCodingKeys33_882E58619A019CD438BB91EBFDDE66DALLOGMd, &_ss22KeyedDecodingContainerVy14GeoUIFramework0D10DataModelsO31ContactDisambiguationCodingKeys33_882E58619A019CD438BB91EBFDDE66DALLOGMR);
  v49 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v45 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy14GeoUIFramework0D10DataModelsO10CodingKeys33_882E58619A019CD438BB91EBFDDE66DALLOGMd, &_ss22KeyedDecodingContainerVy14GeoUIFramework0D10DataModelsO10CodingKeys33_882E58619A019CD438BB91EBFDDE66DALLOGMR);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v45 - v12;
  v14 = a1[3];
  v69 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  lazy protocol witness table accessor for type GeoDataModels.CodingKeys and conformance GeoDataModels.CodingKeys();
  v15 = v58;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v15)
  {
    v46 = v7;
    v16 = v55;
    v17 = v56;
    v58 = v11;
    v18 = v57;
    v47 = v10;
    v19 = KeyedDecodingContainer.allKeys.getter();
    v20 = *(v19 + 16);
    if (!v20 || ((v21 = *(v19 + 32), v20 == 1) ? (v22 = v21 == 4) : (v22 = 1), v22))
    {
      v23 = type metadata accessor for DecodingError();
      swift_allocError();
      v25 = v24;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR);
      *v25 = &type metadata for GeoDataModels;
      v26 = v13;
      v27 = v47;
      KeyedDecodingContainer.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v23 - 8) + 104))(v25, *MEMORY[0x277D84160], v23);
      swift_willThrow();
      (*(v58 + 8))(v26, v27);
      swift_unknownObjectRelease();
    }

    else
    {
      v45 = v19;
      if (v21 > 1)
      {
        v51 = v13;
        v38 = v18;
        if (v21 == 2)
        {
          LOBYTE(v59) = 2;
          lazy protocol witness table accessor for type GeoDataModels.TrafficDisambiguationCodingKeys and conformance GeoDataModels.TrafficDisambiguationCodingKeys();
          v30 = v16;
          v31 = v47;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          lazy protocol witness table accessor for type GeoDataModels.TrafficDisambiguationDataModel and conformance GeoDataModels.TrafficDisambiguationDataModel();
          v39 = v50;
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          v40 = (v58 + 8);
          (*(v53 + 8))(v30, v39);
          (*v40)(v51, v31);
          swift_unknownObjectRelease();
          v36 = v59;
          v37 = v60;
        }

        else
        {
          LOBYTE(v59) = 3;
          lazy protocol witness table accessor for type GeoDataModels.WhereAmICodingKeys and conformance GeoDataModels.WhereAmICodingKeys();
          v34 = v47;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          lazy protocol witness table accessor for type GeoDataModels.WhereAmIDataModel and conformance GeoDataModels.WhereAmIDataModel();
          v41 = v52;
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          v42 = v58;
          (*(v54 + 8))(v17, v41);
          (*(v42 + 8))(v51, v34);
          swift_unknownObjectRelease();
          v36 = v59;
          v37 = v60;
          v65 = v61;
          v66 = v62;
          v67 = v63;
          v68 = v64;
        }
      }

      else
      {
        if (v21)
        {
          LOBYTE(v59) = 1;
          lazy protocol witness table accessor for type GeoDataModels.ParkingLocationCodingKeys and conformance GeoDataModels.ParkingLocationCodingKeys();
          v32 = v47;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          lazy protocol witness table accessor for type GeoDataModels.ParkingLocationDataModel and conformance GeoDataModels.ParkingLocationDataModel();
          v33 = v48;
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          (*(v51 + 1))(v6, v33);
          (*(v58 + 8))(v13, v32);
          swift_unknownObjectRelease();
          v36 = v59;
          v37 = v60;
          v65 = v61;
          v66 = v62;
          v67 = v63;
          v68 = v64;
        }

        else
        {
          LOBYTE(v59) = 0;
          lazy protocol witness table accessor for type GeoDataModels.ContactDisambiguationCodingKeys and conformance GeoDataModels.ContactDisambiguationCodingKeys();
          v28 = v9;
          v29 = v47;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          lazy protocol witness table accessor for type GeoDataModels.ContactDisambiguationDataModel and conformance GeoDataModels.ContactDisambiguationDataModel();
          v35 = v46;
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          (*(v49 + 8))(v28, v35);
          (*(v58 + 8))(v13, v29);
          swift_unknownObjectRelease();
          v36 = v59;
          v37 = v60;
        }

        v38 = v18;
      }

      *v38 = v36;
      *(v38 + 8) = v37;
      v44 = v66;
      *(v38 + 24) = v65;
      *(v38 + 40) = v44;
      *(v38 + 56) = v67;
      *(v38 + 72) = v68;
      *(v38 + 80) = v21;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v69);
}

uint64_t protocol witness for SnippetPluginModel.snippetHidden(for:idiom:) in conformance GeoDataModels(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for DeviceIdiom();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v2 + 80) | 2) == 2)
  {
    v8 = 0;
  }

  else
  {
    v9 = v5;
    (*(v4 + 104))(v7, *MEMORY[0x277D61BE8], v5);
    v8 = static DeviceIdiom.== infix(_:_:)();
    (*(v4 + 8))(v7, v9);
  }

  return v8 & 1;
}

__n128 __swift_memcpy81_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for GeoDataModels(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 81))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 80);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for GeoDataModels(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 81) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 81) = 0;
    }

    if (a2)
    {
      *(result + 80) = -a2;
    }
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for GeoDataModels.ParkingLocationDataModel(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for GeoDataModels.ParkingLocationDataModel(uint64_t result, int a2, int a3)
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
      *(result + 40) = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for GeoDataModels.ContactDisambiguationDataModel(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t storeEnumTagSinglePayload for GeoDataModels.ContactDisambiguationDataModel(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for GeoDataModels.WhereAmIDataModel(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t storeEnumTagSinglePayload for GeoDataModels.WhereAmIDataModel(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for GeoDataModels.ContactDisambiguationCodingKeys(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for GeoDataModels.ContactDisambiguationCodingKeys(_WORD *result, int a2, int a3)
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

uint64_t specialized GeoDataModels.WhereAmIDataModel.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1145660781 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x614C6E6F74747562 && a2 == 0xEB000000006C6562 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x800000024FF8A7E0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x4C746E6572727563 && a2 == 0xEF6E6F697461636FLL)
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

uint64_t specialized GeoDataModels.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000015 && 0x800000024FF8ABA0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4C676E696B726170 && a2 == 0xEF6E6F697461636FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000015 && 0x800000024FF8ABC0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x496D416572656877 && a2 == 0xE800000000000000)
  {

    return 3;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

NSPersonNameComponents __swiftcall PersonNameComponents._bridgeToObjectiveC()()
{
  v0 = MEMORY[0x28211C760]();
  result._private = v1;
  result.super.isa = v0;
  return result;
}

Swift::Void __swiftcall String.append(_:)(Swift::String a1)
{
  MEMORY[0x2821FBE48](a1._countAndFlagsBits, a1._object);
}

{
  MEMORY[0x2821FBE50](a1._countAndFlagsBits, a1._object);
}

uint64_t KeyedDecodingContainer.decode(_:forKey:)()
{
  return MEMORY[0x2821FD9F8]();
}

{
  return MEMORY[0x2821FDA08]();
}

{
  return MEMORY[0x2821FDA18]();
}

{
  return MEMORY[0x2821FDA20]();
}

uint64_t KeyedEncodingContainer.encode(_:forKey:)()
{
  return MEMORY[0x2821FDB38]();
}

{
  return MEMORY[0x2821FDB48]();
}

{
  return MEMORY[0x2821FDB58]();
}

{
  return MEMORY[0x2821FDB60]();
}