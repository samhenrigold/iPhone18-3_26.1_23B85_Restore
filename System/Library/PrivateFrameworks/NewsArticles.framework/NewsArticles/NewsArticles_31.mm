uint64_t sub_1D7CA8338(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArticleViewerBlueprintRouteArticle(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D7CA83E4()
{
  result = qword_1EE0C7510[0];
  if (!qword_1EE0C7510[0])
  {
    type metadata accessor for ArticleViewerBlueprint(255);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE0C7510);
  }

  return result;
}

uint64_t AudioMediaServicesResetHandler.__allocating_init<A>(player:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_allocObject();
  v6 = sub_1D79A608C(a1, a2, a3);
  (*(*(a2 - 8) + 8))(a1, a2);
  return v6;
}

uint64_t AudioMediaServicesResetHandler.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

unint64_t sub_1D7CA8738(uint64_t a1, uint64_t a2)
{
  result = qword_1EC9E8118;
  if (!qword_1EC9E8118)
  {
    sub_1D7D2802C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E8118);
  }

  return result;
}

id static UIButton.rightArrowButton.getter()
{
  v0 = [objc_opt_self() buttonWithType_];
  v1 = [objc_opt_self() configurationWithPointSize:5 weight:3 scale:17.0];
  if (qword_1EE0C06C0 != -1)
  {
    swift_once();
  }

  v2 = qword_1EE0C06C8[0];
  v3 = [qword_1EE0C06C8[0] imageByApplyingSymbolConfiguration_];
  v4 = v3;
  if (!v3)
  {
    v4 = v2;
  }

  v5 = v3;
  [v0 setImage:v4 forState:0];

  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = objc_opt_self();
  v8 = v0;
  v9 = [v7 bundleForClass_];
  sub_1D7D2811C();

  v10 = sub_1D7D3031C();

  [v8 setAccessibilityLabel_];

  return v8;
}

id static UIButton.leftArrowButton.getter()
{
  v0 = [objc_opt_self() buttonWithType_];
  v1 = [objc_opt_self() configurationWithPointSize:5 weight:3 scale:17.0];
  if (qword_1EE0C0628 != -1)
  {
    swift_once();
  }

  v2 = qword_1EE0C0630;
  v3 = [qword_1EE0C0630 imageByApplyingSymbolConfiguration_];
  v4 = v3;
  if (!v3)
  {
    v4 = v2;
  }

  v5 = v3;
  [v0 setImage:v4 forState:0];

  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = objc_opt_self();
  v8 = v0;
  v9 = [v7 bundleForClass_];
  sub_1D7D2811C();

  v10 = sub_1D7D3031C();

  [v8 setAccessibilityLabel_];

  return v8;
}

id static UIButton.shareButton(tintColor:buttonBackgroundColor:)(void *a1, void *a2)
{
  sub_1D7D29DAC();
  v4 = [swift_getObjCClassFromMetadata() buttonWithType_];
  v5 = objc_opt_self();
  v6 = [v5 configurationWithPointSize:5 weight:3 scale:22.0];
  sub_1D79EB1FC();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1D7D41F60;
  *(v7 + 32) = a1;
  *(v7 + 40) = a2;
  sub_1D79F85FC();
  v8 = v6;
  v9 = a1;
  v10 = a2;
  v11 = sub_1D7D3062C();

  v12 = [v5 configurationWithPaletteColors_];

  v13 = [v8 configurationByApplyingConfiguration_];
  v14 = qword_1EC9E0060;
  v15 = v13;
  if (v14 != -1)
  {
    swift_once();
  }

  v16 = qword_1EC9E92D8;
  v17 = [qword_1EC9E92D8 imageByApplyingSymbolConfiguration_];

  v18 = v17;
  if (!v17)
  {
    v18 = v16;
  }

  v19 = v17;
  [v4 setImage:v18 forState:0];

  v20 = v4;
  [v20 setShowsLargeContentViewer_];
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v22 = [objc_opt_self() bundleForClass_];
  sub_1D7D2811C();

  v23 = sub_1D7D3031C();

  [v20 setLargeContentTitle_];

  return v20;
}

id static UIButton.moreActionsButton.getter()
{
  sub_1D7D29DAC();
  v0 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v1 = [objc_opt_self() configurationWithPointSize:5 weight:3 scale:17.0];
  if (qword_1EE0C06A8 != -1)
  {
    swift_once();
  }

  v2 = qword_1EE0C06B0;
  v3 = [qword_1EE0C06B0 imageByApplyingSymbolConfiguration_];
  v4 = v3;
  if (!v3)
  {
    v4 = v2;
  }

  v5 = v3;
  [v0 setImage:v4 forState:0];

  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = objc_opt_self();
  v8 = v0;
  v9 = [v7 bundleForClass_];
  sub_1D7D2811C();

  v10 = sub_1D7D3031C();

  [v8 setAccessibilityLabel_];

  v11 = v8;
  [v11 setShowsLargeContentViewer_];
  v12 = [v7 bundleForClass_];
  sub_1D7D2811C();

  v13 = sub_1D7D3031C();

  [v11 setLargeContentTitle_];

  return v11;
}

id static UIButton.likeButton(selected:)(char a1)
{
  if (a1 == 2)
  {
    return 0;
  }

  v3 = [objc_opt_self() buttonWithType_];
  v4 = [objc_opt_self() configurationWithPointSize:5 weight:3 scale:17.0];
  sub_1D7D301EC();
  if (a1)
  {
    v5 = sub_1D7D301AC();
  }

  else
  {
    v5 = sub_1D7D3016C();
  }

  v6 = v5;
  v7 = [v5 imageByApplyingSymbolConfiguration_];
  v8 = v7;
  if (!v7)
  {
    v8 = v6;
  }

  v9 = v7;
  [v3 setImage:v8 forState:0];

  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v11 = objc_opt_self();
  v12 = v3;
  v13 = [v11 bundleForClass_];
  sub_1D7D2811C();

  v14 = sub_1D7D3031C();

  [v12 setAccessibilityLabel_];

  return v12;
}

id static UIButton.dislikeButton.getter()
{
  v0 = [objc_opt_self() buttonWithType_];
  v1 = [objc_opt_self() configurationWithPointSize:5 weight:3 scale:17.0];
  sub_1D7D301EC();
  v2 = sub_1D7D3015C();
  v3 = [v2 imageByApplyingSymbolConfiguration_];

  v4 = v3;
  if (!v3)
  {
    v4 = sub_1D7D3015C();
  }

  v5 = v3;
  [v0 setImage:v4 forState:0];

  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = objc_opt_self();
  v8 = v0;
  v9 = [v7 bundleForClass_];
  sub_1D7D2811C();

  v10 = sub_1D7D3031C();

  [v8 setAccessibilityLabel_];

  return v8;
}

id _sSo8UIButtonC12NewsArticlesE15textSizerButton9tintColor016buttonBackgroundH05TeaUI06ActionF0CSo7UIColorC_AKtFZ_0(void *a1, void *a2)
{
  sub_1D7D29DAC();
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v5 = objc_opt_self();
  v6 = [v5 configurationWithPointSize:5 weight:3 scale:22.0];
  sub_1D79EB1FC();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1D7D41F60;
  *(v7 + 32) = a1;
  *(v7 + 40) = a2;
  sub_1D79F85FC();
  v8 = v6;
  v9 = a1;
  v10 = a2;
  v11 = sub_1D7D3062C();

  v12 = [v5 configurationWithPaletteColors_];

  v13 = [v8 configurationByApplyingConfiguration_];
  v14 = qword_1EC9E0050;
  v15 = v13;
  if (v14 != -1)
  {
    swift_once();
  }

  v16 = qword_1EC9E92C8;
  v17 = [qword_1EC9E92C8 imageByApplyingSymbolConfiguration_];

  v18 = v17;
  if (!v17)
  {
    v18 = v16;
  }

  v19 = v17;
  [v4 setImage:v18 forState:0];

  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v21 = objc_opt_self();
  v22 = v4;
  v23 = [v21 bundleForClass_];
  sub_1D7D2811C();

  v24 = sub_1D7D3031C();

  [v22 setAccessibilityLabel_];

  v25 = v22;
  [v25 setShowsLargeContentViewer_];
  v26 = [v25 accessibilityLabel];

  [v25 setLargeContentTitle_];
  return v25;
}

id _sSo8UIButtonC12NewsArticlesE17placeholderButton5TeaUI06ActionE0CvgZ_0()
{
  sub_1D7D29DAC();
  v0 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v1 = [objc_opt_self() configurationWithPointSize:5 weight:3 scale:22.0];
  if (qword_1EE0C0650 != -1)
  {
    swift_once();
  }

  v2 = qword_1EE0C0658;
  v3 = [qword_1EE0C0658 imageByApplyingSymbolConfiguration_];
  if (!v3)
  {
    v3 = v2;
  }

  [v0 setImage:v3 forState:0];

  return v0;
}

id _sSo8UIButtonC12NewsArticlesE20moreCircleFillButton9tintColor016buttonBackgroundI05TeaUI06ActionG0CSo7UIColorC_AKtFZ_0(void *a1, void *a2)
{
  sub_1D7D29DAC();
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v5 = objc_opt_self();
  v6 = [v5 configurationWithPointSize:5 weight:3 scale:22.0];
  sub_1D79EB1FC();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1D7D41F60;
  *(v7 + 32) = a1;
  *(v7 + 40) = a2;
  sub_1D79F85FC();
  v8 = v6;
  v9 = a1;
  v10 = a2;
  v11 = sub_1D7D3062C();

  v12 = [v5 configurationWithPaletteColors_];

  v13 = [v8 configurationByApplyingConfiguration_];
  v14 = qword_1EC9E0040;
  v15 = v13;
  if (v14 != -1)
  {
    swift_once();
  }

  v16 = qword_1EC9E92C0;
  v17 = [qword_1EC9E92C0 imageByApplyingSymbolConfiguration_];

  v18 = v17;
  if (!v17)
  {
    v18 = v16;
  }

  v19 = v17;
  [v4 setImage:v18 forState:0];

  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v21 = objc_opt_self();
  v22 = v4;
  v23 = [v21 bundleForClass_];
  sub_1D7D2811C();

  v24 = sub_1D7D3031C();

  [v22 setAccessibilityLabel_];

  v25 = v22;
  [v25 setShowsLargeContentViewer_];
  v26 = [v21 bundleForClass_];
  sub_1D7D2811C();

  v27 = sub_1D7D3031C();

  [v25 setLargeContentTitle_];

  return v25;
}

double sub_1D7CA9CF8@<D0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v5 = sub_1D7D2E3FC();
  v24 = *(v5 - 8);
  v6 = v24;
  v25 = v5;
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for EndOfRecipeFeedContentConfig(0);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *v2;
  sub_1D7CAA094(a1, v13, type metadata accessor for EndOfRecipeFeedContentConfig);
  v14 = type metadata accessor for EndOfRecipeFeedServiceConfig(0);
  v15 = *(v2 + v14[6]);
  v16 = *(v6 + 16);
  v17 = v25;
  v16(v9, v2 + v14[7], v25);
  sub_1D799CC84(v2 + v14[9], &a2[v14[9]]);
  v18 = v23;
  *a2 = v23;
  sub_1D7CAA094(v13, &a2[v14[5]], type metadata accessor for EndOfRecipeFeedContentConfig);
  *&a2[v14[6]] = v15;
  v16(&a2[v14[7]], v9, v17);
  v19 = v18;
  v20 = [swift_unknownObjectRetain() autoRefreshMinimumInterval];
  (*(v24 + 8))(v9, v17);
  sub_1D7CAA0FC(v13);
  result = v20;
  *&a2[v14[8]] = v20;
  return result;
}

id sub_1D7CA9EFC@<X0>(void **a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  return v2;
}

uint64_t sub_1D7CA9F54@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E69B5E98];
  v3 = sub_1D7D2EB7C();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_1D7CAA094(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D7CAA0FC(uint64_t a1)
{
  v2 = type metadata accessor for EndOfRecipeFeedContentConfig(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_1D7CAA158(void *a1)
{
  v31 = a1;
  v2 = sub_1D7D2836C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v32[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v1[2];
  sub_1D799CC84((v1 + 3), v34);
  v8 = v1[13];
  sub_1D799CC84((v1 + 8), v33);
  v9 = v1[14];
  v10 = __swift_mutable_project_boxed_opaque_existential_1(v34, v34[3]);
  v11 = MEMORY[0x1EEE9AC00](v10, v10);
  v13 = (&v32[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v14 + 16))(v13, v11);
  v15 = *v13;
  v16 = type metadata accessor for ArticleBannerAdFactory();
  v32[3] = v16;
  v32[4] = &off_1F52B4328;
  v32[0] = v15;
  type metadata accessor for ArticleBannerAdRequester();
  v17 = swift_allocObject();
  v18 = __swift_mutable_project_boxed_opaque_existential_1(v32, v16);
  v19 = MEMORY[0x1EEE9AC00](v18, v18);
  v21 = (&v32[-1] - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v22 + 16))(v21, v19);
  v23 = *v21;
  v17[6] = v16;
  v17[7] = &off_1F52B4328;
  v17[3] = v23;
  type metadata accessor for ArticleBannerAdPlacementFactory();
  v24 = swift_allocObject();

  swift_unknownObjectRetain();
  sub_1D7D2835C();
  v25 = sub_1D7D2834C();
  v27 = v26;
  (*(v3 + 8))(v6, v2);
  *(v24 + 16) = v25;
  *(v24 + 24) = v27;
  v17[16] = v24;
  v17[2] = v7;
  v17[13] = v8;
  sub_1D799D69C(v33, (v17 + 8));
  v28 = v31;
  v17[14] = v9;
  v17[15] = v28;
  v29 = v28;
  __swift_destroy_boxed_opaque_existential_1(v32);
  __swift_destroy_boxed_opaque_existential_1(v34);
  return v17;
}

uint64_t sub_1D7CAA448()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));
  __swift_destroy_boxed_opaque_existential_1((v0 + 64));

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PDFReplicaViewerRoute(uint64_t a1)
{
  result = qword_1EC9E8140;
  if (!qword_1EC9E8140)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D7CAA510(uint64_t a1)
{
  sub_1D7CAA598(319);
  if (v1 <= 0x3F)
  {
    sub_1D7CAA60C();
    if (v2 <= 0x3F)
    {
      sub_1D7A8CA84();
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_1D7CAA598(uint64_t a1)
{
  if (!qword_1EC9E8150)
  {
    sub_1D7D2F09C();
    sub_1D7AA16D0();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC9E8150);
    }
  }
}

void sub_1D7CAA60C()
{
  if (!qword_1EC9E8160)
  {
    sub_1D7992238();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC9E8160);
    }
  }
}

NewsArticles::ArticleViewerToolbarFeatureRegistrations __swiftcall ArticleViewerToolbarFeatureRegistrations.init()()
{
  v1 = v0;
  result.providers._rawValue = sub_1D7A51764(MEMORY[0x1E69E7CC0]);
  v1->providers._rawValue = result.providers._rawValue;
  return result;
}

uint64_t ArticleViewerToolbarFeatureRegistrations.register(provider:for:)(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  ObjectType = swift_getObjectType();

  return sub_1D7CAD654(a1, a3, v3, ObjectType, a2);
}

uint64_t ToolbarSlot.hashValue.getter()
{
  v1 = *v0;
  sub_1D7D31A8C();
  MEMORY[0x1DA70F500](v1);
  return sub_1D7D31ABC();
}

uint64_t sub_1D7CAA780(uint64_t a1, void *a2, uint64_t a3, int a4)
{
  v234 = a2;
  v225 = a4;
  v240 = type metadata accessor for ToolbarFeatureContext(0);
  MEMORY[0x1EEE9AC00](v240, v6);
  v241 = &v224[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D7AEC644(0);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v224[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v224[-v14];
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v224[-v18];
  v20 = type metadata accessor for ArticleViewerPage(0);
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20, v22);
  v226 = &v224[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v224[-v26];
  sub_1D7CADA3C(a1, v19, sub_1D7AEC644);
  v28 = *(v21 + 48);
  if (v28(v19, 1, v20) == 1)
  {
    sub_1D7CADAAC(v19, sub_1D7AEC644);
    v29 = v235;
    p_info = (&OBJC_METACLASS____TtC12NewsArticles35AudioArticleViewerFeatureDescriptor + 32);
  }

  else
  {
    sub_1D7C4F400(v19, v27);
    sub_1D7C4F400(v27, v15);
    (*(v21 + 56))(v15, 0, 1, v20);
    v31 = OBJC_IVAR____TtC12NewsArticles34ArticleViewerToolbarFeatureManager_currentPage;
    v29 = v235;
    swift_beginAccess();
    sub_1D7B98D9C(v15, v29 + v31);
    swift_endAccess();
    p_info = &OBJC_METACLASS____TtC12NewsArticles35AudioArticleViewerFeatureDescriptor.info;
  }

  v32 = p_info[205];
  swift_beginAccess();
  sub_1D7CADA3C(v32 + v29, v11, sub_1D7AEC644);
  if (v28(v11, 1, v20) == 1)
  {
    sub_1D7CADAAC(v11, sub_1D7AEC644);
    v33 = OBJC_IVAR____TtC12NewsArticles34ArticleViewerToolbarFeatureManager_slots;
    swift_beginAccess();
    v34 = *(*(v29 + v33) + 16);

    sub_1D7CABDD4(v35);
LABEL_105:

    return v34 != 0;
  }

  else
  {
    v36 = v226;
    sub_1D7C4F400(v11, v226);
    v37 = v241;
    sub_1D7CADA3C(v36, v241, type metadata accessor for ArticleViewerPage);
    v259 = *(a3 + 88);
    v260 = *(a3 + 104);
    v261 = *(a3 + 120);
    v262 = *(a3 + 136);
    v257 = *(a3 + 56);
    v258 = *(a3 + 72);
    LOBYTE(v36) = *(a3 + 152);
    v38 = swift_allocObject();
    swift_weakInit();
    v39 = v240;
    v40 = &v37[*(v240 + 20)];
    v41 = v260;
    *(v40 + 2) = v259;
    *(v40 + 3) = v41;
    *(v40 + 4) = v261;
    *(v40 + 10) = v262;
    v42 = v258;
    *v40 = v257;
    *(v40 + 1) = v42;
    v37[*(v39 + 24)] = v36;
    v43 = &v37[*(v39 + 28)];
    *v43 = sub_1D7CADAA4;
    v43[1] = v38;
    v236 = OBJC_IVAR____TtC12NewsArticles34ArticleViewerToolbarFeatureManager_providers;
    sub_1D7A66F20(&v257, &v251);
    v44 = 0;
    v45 = MEMORY[0x1E69E7CC8];
    v233 = MEMORY[0x1E69E7CC8];
    while (1)
    {
      v238 = v44;
      v47 = *(&unk_1F529B028 + v44 + 32);
      v48 = v236;
      swift_beginAccess();
      v49 = *(v29 + v48);
      v50 = *(v49 + 16);
      v239 = v45;
      LODWORD(v237) = v47;
      if (v50 && (v51 = sub_1D7A5B954(v47), (v52 & 1) != 0))
      {
        v53 = *(*(v49 + 56) + 8 * v51);
      }

      else
      {
        v53 = MEMORY[0x1E69E7CC0];
      }

      swift_endAccess();
      v240 = *(v53 + 16);
      if (v240)
      {
        break;
      }

LABEL_7:

      v45 = v239;
LABEL_8:
      v44 = v238 + 1;
      v46 = v234;
      v29 = v235;
      if (v238 == 2)
      {
        v62 = 0;
        v250 = MEMORY[0x1E69E7CC8];
        v248 = MEMORY[0x1E69E7CC0];
        v249 = MEMORY[0x1E69E7CC0];
        v230 = OBJC_IVAR____TtC12NewsArticles34ArticleViewerToolbarFeatureManager_slots;
        v239 = v45;
        do
        {
          v63 = byte_1F529B050[v62 + 32];
          if (*(v45 + 16) && (v64 = sub_1D7A5B954(byte_1F529B050[v62 + 32]), (v65 & 1) != 0))
          {
            v66 = (*(v45 + 56) + 16 * v64);
            v67 = *v66;
            v237 = v66[1];
            swift_unknownObjectRetain();
          }

          else
          {
            v67 = 0;
            v237 = 0;
          }

          v68 = v230;
          swift_beginAccess();
          v69 = *(v29 + v68);
          v70 = *(v69 + 16);
          LODWORD(v238) = v63;
          if (v70 && (v71 = sub_1D7A5B954(v63), (v72 & 1) != 0))
          {
            v73 = (*(v69 + 56) + 32 * v71);
            v75 = *v73;
            v74 = v73[1];
            v76 = v67;
            v77 = v62;
            v78 = v45;
            v79 = v29;
            v80 = v46;
            v82 = v73[2];
            v81 = v73[3];

            v236 = v82;
            v46 = v80;
            v29 = v79;
            v45 = v78;
            v62 = v77;
            v67 = v76;
            v63 = v238;
            swift_unknownObjectRetain();
          }

          else
          {
            v75 = 0;
            v74 = 0;
            v236 = 0;
            v81 = 0;
          }

          swift_endAccess();
          if (v67)
          {
            if (v75)
            {
              ObjectType = swift_getObjectType();
              v84 = v236;
              v85 = swift_getObjectType();
              v86 = v85;
              v240 = v74;
              v232 = v75;
              v228 = ObjectType;
              if (v67 == v84)
              {
                v229 = v85;
                v231 = v62;
                v87 = swift_allocObject();
                *(v87 + 16) = 0;
                v246 = v75;
                v247 = v74;
                v88 = v237;
                v233 = *(v237 + 40);

                v227 = v87;
                (v233)(&v246, v241, sub_1D7CADB74, v87, ObjectType, v88);
                swift_beginAccess();
                v89 = v246;
                if (*(v87 + 16) == 1)
                {

                  v244 = v75;
                  v245 = v74;
                  v90 = *(v81 + 8);

                  v91 = v229;
                  v229 = v81;
                  v90(v243, v91, v81);
                  v242[0] = v243[0];
                  swift_beginAccess();
                  sub_1D7CABF08(&v244, v242);
                  swift_endAccess();

                  (*(v88 + 32))(&v251, v241, v228, v88);
                  v92 = v251;
                  v93 = v252;
                  swift_beginAccess();

                  v94 = v67;
                  swift_unknownObjectRetain();
                  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                  v96 = v250;
                  v244 = v250;
                  v97 = sub_1D7A5B954(v238);
                  v99 = *(v96 + 16);
                  v100 = (v98 & 1) == 0;
                  v101 = __OFADD__(v99, v100);
                  v102 = v99 + v100;
                  if (v101)
                  {
                    goto LABEL_110;
                  }

                  v103 = v98;
                  if (*(v96 + 24) >= v102)
                  {
                    v46 = v234;
                    v29 = v235;
                    v45 = v239;
                    v62 = v231;
                    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                    {
                      v202 = v97;
                      sub_1D7B98174();
                      v97 = v202;
                      v45 = v239;
                    }
                  }

                  else
                  {
                    sub_1D7B936A0(v102, isUniquelyReferenced_nonNull_native);
                    v97 = sub_1D7A5B954(v238);
                    v46 = v234;
                    v29 = v235;
                    v45 = v239;
                    v62 = v231;
                    if ((v103 & 1) != (v104 & 1))
                    {
                      goto LABEL_115;
                    }
                  }

                  v186 = v94;
                  v233 = v244;
                  v187 = v238;
                  v188 = v237;
                  if (v103)
                  {
                    v189 = (*(v244 + 56) + 32 * v97);
                    *v189 = v92;
                    v189[1] = v93;
                    v189[2] = v186;
                    v189[3] = v188;
                    swift_unknownObjectRelease();

                    v190 = v233;
                  }

                  else
                  {
                    *(v244 + 8 * (v97 >> 6) + 64) |= 1 << v97;
                    v190 = v233;
                    *(*(v233 + 48) + v97) = v187;
                    v194 = (*(v190 + 56) + 32 * v97);
                    *v194 = v92;
                    v194[1] = v93;
                    v194[2] = v186;
                    v194[3] = v188;
                    v195 = *(v190 + 16);
                    v101 = __OFADD__(v195, 1);
                    v196 = v195 + 1;
                    if (v101)
                    {
                      goto LABEL_114;
                    }

                    *(v190 + 16) = v196;
                  }

                  v250 = v190;
                  swift_endAccess();
                  v244 = v92;
                  v245 = v93;
                  (*(v188 + 8))(v243, v228, v188);
                  v242[0] = v243[0];
                  swift_beginAccess();
                  sub_1D7CABF08(&v244, v242);
                  swift_endAccess();
                  swift_unknownObjectRelease();
                  sub_1D7CADB34(v232, v240, v186);
                }

                else
                {
                  v165 = v247;
                  swift_beginAccess();
                  swift_unknownObjectRetain();
                  v166 = swift_isUniquelyReferenced_nonNull_native();
                  v167 = v250;
                  v244 = v250;
                  v168 = sub_1D7A5B954(v238);
                  v170 = *(v167 + 16);
                  v171 = (v169 & 1) == 0;
                  v101 = __OFADD__(v170, v171);
                  v172 = v170 + v171;
                  v46 = v234;
                  v29 = v235;
                  if (v101)
                  {
                    goto LABEL_111;
                  }

                  v173 = v169;
                  v236 = v89;
                  if (*(v167 + 24) >= v172)
                  {
                    v45 = v239;
                    v62 = v231;
                    if ((v166 & 1) == 0)
                    {
                      v203 = v168;
                      sub_1D7B98174();
                      v168 = v203;
                      v45 = v239;
                    }
                  }

                  else
                  {
                    sub_1D7B936A0(v172, v166);
                    v168 = sub_1D7A5B954(v238);
                    v45 = v239;
                    v62 = v231;
                    if ((v173 & 1) != (v174 & 1))
                    {
                      goto LABEL_115;
                    }
                  }

                  v233 = v244;
                  if (v173)
                  {
                    v191 = (*(v244 + 56) + 32 * v168);
                    v192 = v237;
                    *v191 = v236;
                    v191[1] = v165;
                    v191[2] = v67;
                    v191[3] = v192;
                    swift_unknownObjectRelease();

                    v193 = v233;
                  }

                  else
                  {
                    *(v244 + 8 * (v168 >> 6) + 64) |= 1 << v168;
                    v193 = v233;
                    *(*(v233 + 48) + v168) = v238;
                    v197 = (*(v193 + 56) + 32 * v168);
                    v198 = v237;
                    *v197 = v236;
                    v197[1] = v165;
                    v197[2] = v67;
                    v197[3] = v198;
                    v199 = *(v193 + 16);
                    v101 = __OFADD__(v199, 1);
                    v200 = v199 + 1;
                    if (v101)
                    {
                      goto LABEL_113;
                    }

                    *(v193 + 16) = v200;
                  }

                  v250 = v193;
                  swift_endAccess();
                  sub_1D7CADB34(v232, v240, v67);

                  swift_unknownObjectRelease();
                }
              }

              else
              {
                v246 = v75;
                v247 = v74;
                v132 = *(v81 + 8);

                v229 = v81;
                v132(&v244, v86, v81);
                LOBYTE(v243[0]) = v244;
                swift_beginAccess();
                sub_1D7CABF08(&v246, v243);
                swift_endAccess();

                v133 = v228;
                (*(v237 + 32))(&v251, v241);
                v134 = v251;
                v135 = v252;
                swift_beginAccess();
                v136 = v67;
                swift_unknownObjectRetain();

                v137 = swift_isUniquelyReferenced_nonNull_native();
                v138 = v250;
                v246 = v250;
                v140 = sub_1D7A5B954(v238);
                v141 = *(v138 + 16);
                v142 = (v139 & 1) == 0;
                v143 = v141 + v142;
                if (__OFADD__(v141, v142))
                {
                  goto LABEL_108;
                }

                v144 = v139;
                if (*(v138 + 24) >= v143)
                {
                  v45 = v239;
                  if ((v137 & 1) == 0)
                  {
                    sub_1D7B98174();
                  }

                  v145 = v238;
                }

                else
                {
                  sub_1D7B936A0(v143, v137);
                  v145 = v238;
                  v146 = sub_1D7A5B954(v238);
                  v45 = v239;
                  if ((v144 & 1) != (v147 & 1))
                  {
                    goto LABEL_115;
                  }

                  v140 = v146;
                }

                v233 = v246;
                if (v144)
                {
                  v175 = (*(v246 + 56) + 32 * v140);
                  *v175 = v134;
                  v175[1] = v135;
                  v176 = v237;
                  v175[2] = v136;
                  v175[3] = v176;
                  swift_unknownObjectRelease();

                  v177 = v233;
                }

                else
                {
                  *(v246 + 8 * (v140 >> 6) + 64) |= 1 << v140;
                  v177 = v233;
                  *(*(v233 + 48) + v140) = v145;
                  v178 = (*(v177 + 56) + 32 * v140);
                  *v178 = v134;
                  v178[1] = v135;
                  v176 = v237;
                  v178[2] = v136;
                  v178[3] = v176;
                  v179 = *(v177 + 16);
                  v101 = __OFADD__(v179, 1);
                  v180 = v179 + 1;
                  if (v101)
                  {
                    goto LABEL_112;
                  }

                  *(v177 + 16) = v180;
                }

                v250 = v177;
                swift_endAccess();
                v246 = v134;
                v247 = v135;
                (*(v176 + 8))(&v244, v133, v176);
                LOBYTE(v243[0]) = v244;
                swift_beginAccess();
                sub_1D7CABF08(&v246, v243);
                swift_endAccess();
                swift_unknownObjectRelease();
                sub_1D7CADB34(v232, v240, v236);

                v46 = v234;
                v29 = v235;
              }
            }

            else
            {
              v118 = swift_getObjectType();
              (*(v237 + 32))(&v251, v241, v118);
              v119 = v63;
              v120 = v251;
              v121 = v252;
              swift_beginAccess();
              v240 = v67;
              swift_unknownObjectRetain();

              v122 = swift_isUniquelyReferenced_nonNull_native();
              v123 = v250;
              v246 = v250;
              v124 = v119;
              v125 = sub_1D7A5B954(v119);
              v127 = *(v123 + 16);
              v128 = (v126 & 1) == 0;
              v101 = __OFADD__(v127, v128);
              v129 = v127 + v128;
              if (v101)
              {
                goto LABEL_107;
              }

              v130 = v126;
              if (*(v123 + 24) >= v129)
              {
                if ((v122 & 1) == 0)
                {
                  v201 = v125;
                  sub_1D7B98174();
                  v125 = v201;
                }
              }

              else
              {
                sub_1D7B936A0(v129, v122);
                v125 = sub_1D7A5B954(v124);
                if ((v130 & 1) != (v131 & 1))
                {
                  goto LABEL_115;
                }
              }

              v148 = v240;
              v233 = v246;
              if (v130)
              {
                v149 = (*(v246 + 56) + 32 * v125);
                *v149 = v120;
                v149[1] = v121;
                v150 = v237;
                v149[2] = v148;
                v149[3] = v150;
                swift_unknownObjectRelease();

                v151 = v233;
              }

              else
              {
                *(v246 + 8 * (v125 >> 6) + 64) |= 1 << v125;
                v151 = v233;
                *(*(v233 + 48) + v125) = v124;
                v152 = (*(v151 + 56) + 32 * v125);
                *v152 = v120;
                v152[1] = v121;
                v150 = v237;
                v152[2] = v148;
                v152[3] = v150;
                v153 = *(v151 + 16);
                v101 = __OFADD__(v153, 1);
                v154 = v153 + 1;
                if (v101)
                {
                  goto LABEL_109;
                }

                *(v151 + 16) = v154;
              }

              v250 = v151;
              swift_endAccess();
              (*(v150 + 8))(&v244, v118, v150);
              v155 = v244;
              swift_beginAccess();
              v156 = *(v120 + 16);
              if (v156)
              {
                v231 = v62;
                v246 = MEMORY[0x1E69E7CC0];
                sub_1D7A5C778(0, v156, 0);
                v157 = v246;
                v238 = v120;
                v158 = (v120 + 40);
                do
                {
                  v159 = *(v158 - 1);
                  v160 = *v158;
                  v246 = v157;
                  v162 = *(v157 + 16);
                  v161 = *(v157 + 24);
                  v163 = v159;

                  if (v162 >= v161 >> 1)
                  {
                    sub_1D7A5C778((v161 > 1), v162 + 1, 1);
                    v157 = v246;
                  }

                  v158 += 2;
                  *(v157 + 16) = v162 + 1;
                  v164 = v157 + 32 * v162;
                  *(v164 + 32) = v163;
                  *(v164 + 40) = v160;
                  *(v164 + 48) = v155;
                  *(v164 + 56) = v121;
                  --v156;
                }

                while (v156);
                v46 = v234;
                v29 = v235;
                v62 = v231;
              }

              else
              {
                v157 = MEMORY[0x1E69E7CC0];
              }

              sub_1D79E315C(v157);
              swift_endAccess();

              swift_unknownObjectRelease();
              v45 = v239;
            }
          }

          else if (v75)
          {
            v240 = v74;
            v231 = v62;
            v105 = swift_getObjectType();
            v106 = v75;
            v107 = *(v81 + 8);

            v107(&v244, v105, v81);
            v108 = v244;
            swift_beginAccess();
            v109 = *(v106 + 16);
            v232 = v106;
            if (v109)
            {
              v229 = v81;
              v246 = MEMORY[0x1E69E7CC0];
              sub_1D7A5C778(0, v109, 0);
              v110 = v246;
              v111 = (v106 + 40);
              do
              {
                v112 = *(v111 - 1);
                v113 = *v111;
                v246 = v110;
                v115 = *(v110 + 16);
                v114 = *(v110 + 24);
                v116 = v112;

                if (v115 >= v114 >> 1)
                {
                  sub_1D7A5C778((v114 > 1), v115 + 1, 1);
                  v110 = v246;
                }

                v111 += 2;
                *(v110 + 16) = v115 + 1;
                v117 = v110 + 32 * v115;
                *(v117 + 32) = v116;
                *(v117 + 40) = v113;
                *(v117 + 48) = v108;
                *(v117 + 56) = v240;
                --v109;
              }

              while (v109);
              v46 = v234;
              v29 = v235;
            }

            else
            {
              v110 = MEMORY[0x1E69E7CC0];
            }

            sub_1D79E315C(v110);
            swift_endAccess();

            swift_beginAccess();
            v181 = sub_1D7A5B954(v238);
            v45 = v239;
            v62 = v231;
            if (v182)
            {
              v183 = v181;
              v184 = swift_isUniquelyReferenced_nonNull_native();
              v185 = v250;
              v246 = v250;
              if (!v184)
              {
                sub_1D7B98174();
                v185 = v246;
              }

              swift_unknownObjectRelease();

              sub_1D7B95504(v183, v185);
              v233 = v185;
              v250 = v185;
            }

            swift_endAccess();
            sub_1D7CADB34(v232, v240, v236);
          }

          ++v62;
        }

        while (v62 != 3);
        v204 = v230;
        swift_beginAccess();
        *(v29 + v204) = v233;

        if (v225)
        {
          v205 = v257;
          v206 = v258;
          swift_beginAccess();
          v207 = v249;
          swift_beginAccess();
          v208 = v248;
          v263.origin = v205;
          v263.size = v206;
          Height = CGRectGetHeight(v263);
          v210 = swift_allocObject();
          *(v210 + 2) = v29;
          *(v210 + 3) = v46;
          *(v210 + 4) = v207;
          v210[5] = Height;
          if (*(v208 + 16))
          {
            v211 = objc_opt_self();

            v212 = v46;

            [v211 begin];
            [v211 setAnimationDuration_];
            v213 = objc_allocWithZone(MEMORY[0x1E69793D0]);
            LODWORD(v214) = 1036831949;
            LODWORD(v215) = 0.25;
            LODWORD(v216) = 0.75;
            LODWORD(v217) = 1.0;
            v218 = [v213 initWithControlPoints__:v215 :{v214, v216, v217}];
            [v211 setAnimationTimingFunction_];

            v255 = sub_1D7CADB0C;
            v256 = v210;
            v251 = MEMORY[0x1E69E9820];
            v252 = 1107296256;
            v253 = sub_1D79FE25C;
            v254 = &block_descriptor_39;
            v219 = _Block_copy(&v251);

            [v211 setCompletionBlock_];
            _Block_release(v219);
            sub_1D7CACFE8(v208, Height);
            [v211 commit];
          }

          else
          {

            v220 = v46;

            sub_1D7CACB4C(Height, v221, v220, v207);
          }
        }

        else
        {
          sub_1D7CAC018(v46);
        }

        v222 = v241;
        v34 = *(v233 + 16);
        sub_1D7CABDD4(v233);
        sub_1D7CADAAC(v222, type metadata accessor for ToolbarFeatureContext);
        sub_1D7CADAAC(v226, type metadata accessor for ArticleViewerPage);

        goto LABEL_105;
      }
    }

    v54 = 0;
    v55 = (v53 + 40);
    while (v54 < *(v53 + 16))
    {
      v56 = *(v55 - 1);
      v57 = *v55;
      v58 = swift_getObjectType();
      v59 = *(v57 + 24);
      swift_unknownObjectRetain();
      if (v59(v241, v58, v57))
      {

        v60 = v239;
        v61 = swift_isUniquelyReferenced_nonNull_native();
        v251 = v60;
        sub_1D7B963F0(v56, v57, v237, v61);
        v45 = v251;
        goto LABEL_8;
      }

      swift_unknownObjectRelease();
      ++v54;
      v55 += 2;
      if (v240 == v54)
      {
        goto LABEL_7;
      }
    }

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
    result = sub_1D7D31A2C();
    __break(1u);
  }

  return result;
}

uint64_t sub_1D7CABDD4(uint64_t result)
{
  v1 = 0;
  v2 = 1 << *(result + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(result + 64);
  v5 = (v2 + 63) >> 6;
  v6 = 0.0;
  while (v4)
  {
    v7 = v1;
LABEL_9:
    v8 = __clz(__rbit64(v4));
    v4 &= v4 - 1;
    v9 = *(result + 56) + ((v7 << 11) | (32 * v8));
    if (v6 <= *(v9 + 8))
    {
      v6 = *(v9 + 8);
    }
  }

  while (1)
  {
    v7 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      break;
    }

    if (v7 >= v5)
    {
      return result;
    }

    v4 = *(result + 64 + 8 * v7);
    ++v1;
    if (v4)
    {
      v1 = v7;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

double sub_1D7CABE74(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_1D7C18E30(a1);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1D7CABF08(void *a1, char *a2)
{
  v2 = *a1;
  v3 = *(*a1 + 16);
  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v5 = a1[1];
    v6 = *a2;
    v14 = MEMORY[0x1E69E7CC0];
    sub_1D7A5C778(0, v3, 0);
    v4 = v14;
    v7 = (v2 + 40);
    do
    {
      v8 = *v7;
      v10 = *(v14 + 16);
      v9 = *(v14 + 24);
      v11 = *(v7 - 1);

      if (v10 >= v9 >> 1)
      {
        sub_1D7A5C778((v9 > 1), v10 + 1, 1);
      }

      v7 += 2;
      *(v14 + 16) = v10 + 1;
      v12 = v14 + 32 * v10;
      *(v12 + 32) = v11;
      *(v12 + 40) = v8;
      *(v12 + 48) = v6;
      *(v12 + 56) = v5;
      --v3;
    }

    while (v3);
  }

  return sub_1D79E315C(v4);
}

void sub_1D7CAC018(void *a1)
{
  v2 = v1;
  v3 = 0;
  v133 = MEMORY[0x1E69E7CC0];
  v134 = MEMORY[0x1E69E7CC0];
  v4 = OBJC_IVAR____TtC12NewsArticles34ArticleViewerToolbarFeatureManager_slots;
  v5 = 3;
  do
  {
    v6 = byte_1F529AFD8[v3 + 32];
    swift_beginAccess();
    v7 = *(v2 + v4);
    if (!*(v7 + 16) || (v8 = sub_1D7A5B954(v6), (v9 & 1) == 0))
    {
      v19 = 0;
      v20 = 0;
LABEL_16:
      sub_1D7CADB34(0, v20, v19);
      swift_endAccess();
      goto LABEL_3;
    }

    v10 = (*(v7 + 56) + 32 * v8);
    v12 = *v10;
    v11 = v10[1];
    v13 = v10[2];

    swift_unknownObjectRetain();
    if (!v12)
    {
      v19 = v13;
      v20 = v11;
      v2 = v130;
      goto LABEL_16;
    }

    swift_endAccess();
    sub_1D7CADB34(v12, v11, v13);
    v14 = MEMORY[0x1E69E7CC0];
    if (v6)
    {
      [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:5 target:0 action:0];
      MEMORY[0x1DA70E080]();
      if (*((v134 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v134 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D7D306DC();
      }

      sub_1D7D3072C();
    }

    v15 = *(v12 + 16);
    if (v15)
    {
      v132[0] = v14;

      sub_1D7D3156C();
      v16 = 32;
      do
      {
        v17 = *(v12 + v16);
        sub_1D7D3153C();
        sub_1D7D3157C();
        sub_1D7D3158C();
        sub_1D7D3154C();
        v16 += 16;
        --v15;
      }

      while (v15);

      v18 = v132[0];
      v14 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v18 = v14;
    }

    sub_1D79E2C7C(v18);
    v21 = 0;
    v132[0] = v14;
    v22 = *(v12 + 16);
    v23 = v14;
LABEL_20:
    v24 = 16 * v21 + 40;
    while (v22 != v21)
    {
      if (v21 >= *(v12 + 16))
      {
        __break(1u);
LABEL_90:
        __break(1u);
LABEL_91:
        __break(1u);
LABEL_92:
        v118 = sub_1D7D3167C();
        if (!v118)
        {
LABEL_86:

          goto LABEL_88;
        }

LABEL_83:
        if (v118 >= 1)
        {
          v119 = 32;
          do
          {

            sub_1D7D2A65C();

            v119 += 8;
            --v118;
          }

          while (v118);
          goto LABEL_86;
        }

        __break(1u);
LABEL_95:
        __break(1u);
        goto LABEL_96;
      }

      v25 = *(v12 + v24);
      v24 += 16;
      ++v21;
      if (v25)
      {

        MEMORY[0x1DA70E080](v26);
        if (*((v132[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v132[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1D7D306DC();
        }

        sub_1D7D3072C();
        v23 = v132[0];
        goto LABEL_20;
      }
    }

    sub_1D79E3250(v23);
    v5 = v6;
    v2 = v130;
LABEL_3:
    ++v3;
  }

  while (v3 != 3);
  if (v5 <= 1u)
  {
    [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:5 target:0 action:0];
    MEMORY[0x1DA70E080]();
    if (*((v134 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v134 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1D7D306DC();
    }

    sub_1D7D3072C();
  }

  v27 = [a1 navigationController];
  if (v27)
  {
    v28 = v27;
    v29 = [v27 toolbar];

    if (v29)
    {
      sub_1D7D2B12C();
      if (swift_dynamicCastClass())
      {

        v31 = sub_1D7CAD438(v30);

        if (v31)
        {
          v32 = [objc_opt_self() currentDevice];
          [v32 userInterfaceIdiom];

          v2 = v130;
        }

        sub_1D7D2B11C();
      }
    }
  }

  sub_1D7992EFC(0, &qword_1EE0BF050, 0x1E69DC708);
  v33 = sub_1D7D3062C();
  [a1 setToolbarItems_];

  v34 = [a1 navigationController];
  if (v34)
  {
    v35 = v34;
    v36 = [v34 toolbar];
    if (!v36)
    {
      goto LABEL_95;
    }

    v37 = v36;
    [v36 layoutIfNeeded];

    v122 = v35;
    v38 = [v35 toolbar];
    if (v38)
    {
      v39 = v38;
      [v38 frame];
      v120 = v41;
      v121 = v40;

      v42 = 0;
      v43 = *MEMORY[0x1E695F050];
      v44 = *(MEMORY[0x1E695F050] + 8);
      v45 = MEMORY[0x1E69E7CC8];
      v46 = *(MEMORY[0x1E695F050] + 16);
      v47 = *(MEMORY[0x1E695F050] + 24);
      while (1)
      {
        v50 = byte_1F529B000[v42 + 32];
        swift_beginAccess();
        v51 = *(v2 + v4);
        if (!*(v51 + 16))
        {
          break;
        }

        v52 = sub_1D7A5B954(v50);
        if ((v53 & 1) == 0)
        {
          break;
        }

        v54 = (*(v51 + 56) + 32 * v52);
        v56 = *v54;
        v55 = v54[1];
        v57 = v54[2];

        swift_unknownObjectRetain();
        if (!v56)
        {
          v48 = v57;
          v49 = v55;
          v2 = v130;
          goto LABEL_43;
        }

        v124 = v50;
        v128 = v45;

        swift_endAccess();
        sub_1D7CADB34(v56, v55, v57);
        v58 = *(v56 + 16);
        if (v58)
        {
          v59 = 0;
          v60 = v56 + 40;
          v61 = MEMORY[0x1E69E7CC0];
LABEL_50:
          v125 = v61;
          v62 = v60 + 16 * v59;
          v63 = v59;
          while (v63 < *(v56 + 16))
          {
            v59 = v63 + 1;
            v64 = *(v62 - 8);

            v65 = v64;
            v66 = [v65 ts_barButtonItemView];
            if (v66)
            {
              v67 = v66;
              [v66 bounds];
              v69 = v68;
              v71 = v70;
              v73 = v72;
              v75 = v74;
              v76 = [v122 toolbar];
              [v67 convertRect:v76 toView:{v69, v71, v73, v75}];
              v78 = v77;
              v80 = v79;
              v82 = v81;
              v84 = v83;

              v85 = v125;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v85 = sub_1D79E5998(0, *(v125 + 2) + 1, 1, v125);
              }

              v86 = v85;
              v87 = *(v85 + 2);
              v88 = v86;
              v89 = *(v86 + 3);
              if (v87 >= v89 >> 1)
              {
                v88 = sub_1D79E5998((v89 > 1), v87 + 1, 1, v88);
              }

              *(v88 + 2) = v87 + 1;
              v90 = &v88[32 * v87];
              v61 = v88;
              *(v90 + 4) = v78;
              *(v90 + 5) = v80;
              *(v90 + 6) = v82;
              *(v90 + 7) = v84;
              v60 = v56 + 40;
              if (v58 - 1 != v63)
              {
                goto LABEL_50;
              }

              goto LABEL_63;
            }

            v62 += 16;
            ++v63;
            if (v58 == v59)
            {
              v61 = v125;
              goto LABEL_63;
            }
          }

          goto LABEL_90;
        }

        v61 = MEMORY[0x1E69E7CC0];
LABEL_63:

        v91 = *(v61 + 2);
        v92 = v43;
        v93 = v44;
        v94 = v46;
        v95 = v47;
        if (v91)
        {
          v96 = v61 + 56;
          v92 = v43;
          v93 = v44;
          v94 = v46;
          v95 = v47;
          do
          {
            *&v92 = CGRectUnion(*&v92, *(v96 - 24));
            v96 += 32;
            --v91;
          }

          while (v91);
        }

        v97 = v92;
        v98 = v93;
        v99 = v95;
        v100 = v94;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v132[0] = v128;
        sub_1D7B962A4(v124, isUniquelyReferenced_nonNull_native, v97, v98, v100, v99);
        v45 = v128;
        v2 = v130;
LABEL_44:
        if (++v42 == 3)
        {
          v102 = *(v2 + v4);
          v103 = v102 + 64;
          v104 = 1 << *(v102 + 32);
          v105 = -1;
          if (v104 < 64)
          {
            v105 = ~(-1 << v104);
          }

          v106 = v105 & *(v102 + 64);
          v107 = (v104 + 63) >> 6;

          v108 = 0;
          v129 = v45;
          v123 = v102;
          while (v106)
          {
LABEL_77:
            v112 = (*(v102 + 56) + ((v108 << 11) | (32 * __clz(__rbit64(v106)))));
            v113 = *v112;
            v126 = v112[3];
            v132[0] = v121;
            v132[1] = v120;
            v132[2] = v45;
            v114 = *(v113 + 16);
            if (v114)
            {
              v131 = MEMORY[0x1E69E7CC0];

              swift_unknownObjectRetain_n();

              sub_1D7D3156C();
              v115 = (v113 + 32);
              do
              {
                v116 = *v115;
                v115 += 2;
                v117 = v116;
                sub_1D7D3153C();
                sub_1D7D3157C();
                sub_1D7D3158C();
                sub_1D7D3154C();
                --v114;
              }

              while (v114);
              v109 = v131;
              v45 = v129;
              v102 = v123;
            }

            else
            {

              swift_unknownObjectRetain_n();

              v109 = MEMORY[0x1E69E7CC0];
            }

            v106 &= v106 - 1;
            ObjectType = swift_getObjectType();
            (*(v126 + 48))(v132, v109, ObjectType);

            swift_unknownObjectRelease_n();
          }

          while (1)
          {
            v111 = v108 + 1;
            if (__OFADD__(v108, 1))
            {
              goto LABEL_91;
            }

            if (v111 >= v107)
            {

              if (v133 >> 62)
              {
                goto LABEL_92;
              }

              v118 = *((v133 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (!v118)
              {
                goto LABEL_86;
              }

              goto LABEL_83;
            }

            v106 = *(v103 + 8 * v111);
            ++v108;
            if (v106)
            {
              v108 = v111;
              goto LABEL_77;
            }
          }
        }
      }

      v48 = 0;
      v49 = 0;
LABEL_43:
      sub_1D7CADB34(0, v49, v48);
      swift_endAccess();
      goto LABEL_44;
    }

LABEL_96:
    __break(1u);
  }

  else
  {

LABEL_88:
  }
}

void sub_1D7CACB4C(double a1, uint64_t a2, void *a3, uint64_t a4)
{
  sub_1D7CAC018(a3);
  if (*(a4 + 16))
  {
    v7 = objc_opt_self();
    [v7 begin];
    [v7 setAnimationDuration_];
    v8 = objc_allocWithZone(MEMORY[0x1E69793D0]);
    LODWORD(v9) = 1036831949;
    LODWORD(v10) = 0.25;
    LODWORD(v11) = 0.75;
    LODWORD(v12) = 1.0;
    v13 = [v8 initWithControlPoints__:v10 :{v9, v11, v12}];
    [v7 setAnimationTimingFunction_];

    [v7 setCompletionBlock_];
    sub_1D7CACC68(a4, a3, a1);

    [v7 commit];
  }
}

void sub_1D7CACC68(uint64_t a1, void *a2, double a3)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return;
  }

  v27 = *MEMORY[0x1E69797E8];
  for (i = (a1 + 56); ; i += 4)
  {
    v7 = *(i - 8);
    v8 = *i;
    v9 = *(i - 3);

    v10 = v9;
    v11 = [v10 ts_barButtonItemView];
    if (v11)
    {
      break;
    }

LABEL_4:
    if (!--v3)
    {
      return;
    }
  }

  v12 = v11;
  if ((v7 & 1) == 0)
  {
    v17 = sub_1D7D3031C();
    v18 = [objc_opt_self() animationWithKeyPath_];

    [v18 setFillMode_];
    v19 = sub_1D7D28A4C();
    [v18 setFromValue_];

    v20 = sub_1D7D28A4C();
    [v18 setToValue_];

    v21 = [v12 layer];
    v22 = sub_1D7D3031C();
    [v21 addAnimation:v18 forKey:v22];

    goto LABEL_4;
  }

  v13 = [a2 navigationController];
  if (v13)
  {
    v14 = v13;
    v15 = [v13 toolbar];

    if (!v15)
    {
      goto LABEL_24;
    }

    [v15 transform];
    ty = v28.ty;

    if (ty == 0.0)
    {
      sub_1D7A7AE48(1, v8 + a3);
LABEL_18:

      goto LABEL_4;
    }
  }

  v23 = [v12 subviews];
  sub_1D7992EFC(0, &unk_1EE0BED20, 0x1E69DD250);
  v24 = sub_1D7D3063C();

  if (v24 >> 62)
  {
    if (!sub_1D7D3167C())
    {
LABEL_20:

      goto LABEL_4;
    }
  }

  else if (!*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_20;
  }

  if ((v24 & 0xC000000000000001) != 0)
  {
    v25 = MEMORY[0x1DA70EF00](0, v24);
    goto LABEL_17;
  }

  if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v25 = *(v24 + 32);
LABEL_17:
    v26 = v25;

    CGAffineTransformMakeTranslation(&v28, 0.0, v8 + a3);
    [v26 setTransform_];

    goto LABEL_18;
  }

  __break(1u);
LABEL_24:
  __break(1u);
}

void sub_1D7CACFE8(uint64_t a1, double a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v27 = *MEMORY[0x1E69797E8];
    v3 = a1 + 56;
    do
    {
      v4 = *(v3 - 24);
      v5 = *(v3 - 8);

      v6 = v4;
      v7 = [v6 ts_barButtonItemView];
      if (v7)
      {
        v8 = v7;
        if (v5)
        {
          v9 = [v7 layer];
          v10 = sub_1D7D3031C();
          v11 = [v9 animationForKey_];

          if (v11)
          {
          }

          else
          {
            v19 = sub_1D7D3031C();
            v20 = [objc_opt_self() animationWithKeyPath_];

            [v20 setDamping_];
            [v20 setStiffness_];
            [v20 setMass_];
            [v20 setInitialVelocity_];
            v21 = [v8 layer];
            [v21 setAnchorPointWithoutChangingPositionWithNewAnchorPoint_];

            v11 = v20;
            v22 = sub_1D7D309DC();
            [v11 setFromValue_];

            v23 = sub_1D7D28A4C();
            [v11 setToValue_];

            v24 = [v8 layer];
            v25 = sub_1D7D3031C();
            [v24 addAnimation:v11 forKey:v25];

            v26 = [v8 layer];
            [v26 position];
            [v26 setPosition_];
          }

          v6 = v11;
        }

        else
        {
          v12 = sub_1D7D3031C();
          v13 = [objc_opt_self() animationWithKeyPath_];

          v14 = v13;
          [v14 setFillMode_];
          v15 = sub_1D7D28A4C();
          [v14 setFromValue_];

          v16 = sub_1D7D28A4C();
          [v14 setToValue_];

          [v14 setRemovedOnCompletion_];
          v17 = [v8 layer];
          v18 = sub_1D7D3031C();
          [v17 addAnimation:v14 forKey:v18];

          v6 = v18;
        }
      }

      else
      {
      }

      v3 += 32;
      --v2;
    }

    while (v2);
  }
}

uint64_t sub_1D7CAD438(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v1 = a1 + 64;
    v2 = 1 << *(a1 + 32);
    v3 = -1;
    if (v2 < 64)
    {
      v3 = ~(-1 << v2);
    }

    v4 = v3 & *(a1 + 64);
    v5 = (v2 + 63) >> 6;
    result = swift_bridgeObjectRetain_n();
    v7 = 0;
    while (v4)
    {
      v8 = v7;
LABEL_11:
      v9 = __clz(__rbit64(v4));
      v4 &= v4 - 1;
      v10 = *(*(a1 + 56) + ((v8 << 11) | (32 * v9)) + 24);
      ObjectType = swift_getObjectType();
      v12 = *(v10 + 16);

      swift_unknownObjectRetain();
      LOBYTE(v10) = v12(ObjectType, v10);
      swift_unknownObjectRelease();

      if ((v10 & 1) == 0)
      {
        v13 = 0;
LABEL_14:

        return v13;
      }
    }

    while (1)
    {
      v8 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      if (v8 >= v5)
      {
        v13 = 1;
        goto LABEL_14;
      }

      v4 = *(v1 + 8 * v8);
      ++v7;
      if (v4)
      {
        v7 = v8;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
    return 0;
  }

  return result;
}

uint64_t sub_1D7CAD59C()
{
  sub_1D7CADAAC(v0 + OBJC_IVAR____TtC12NewsArticles34ArticleViewerToolbarFeatureManager_currentPage, sub_1D7AEC644);

  sub_1D79C92AC(v0 + OBJC_IVAR____TtC12NewsArticles34ArticleViewerToolbarFeatureManager_delegate);

  return swift_deallocClassInstance();
}

uint64_t sub_1D7CAD654(uint64_t a1, unsigned __int8 *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v8 = *a2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *a3;
  v24 = *a3;
  *a3 = 0x8000000000000000;
  v12 = sub_1D7A5B954(v8);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
LABEL_16:
    v10 = sub_1D79E569C(0, v10[2] + 1, 1, v10);
    a3[v12] = v10;
    goto LABEL_10;
  }

  v16 = v11;
  if (v10[3] >= v15)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1D7B97FE8();
      v10 = v24;
    }
  }

  else
  {
    sub_1D7B93400(v15, isUniquelyReferenced_nonNull_native);
    v10 = v24;
    v17 = sub_1D7A5B954(v8);
    if ((v16 & 1) != (v18 & 1))
    {
      result = sub_1D7D31A2C();
      __break(1u);
      return result;
    }

    v12 = v17;
  }

  *a3 = v10;
  if ((v16 & 1) == 0)
  {
    sub_1D7B9695C(v12, v8, MEMORY[0x1E69E7CC0], v10);
  }

  a3 = v10[7];
  v10 = a3[v12];
  v19 = swift_isUniquelyReferenced_nonNull_native();
  a3[v12] = v10;
  if ((v19 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_10:
  v21 = v10[2];
  v20 = v10[3];
  if (v21 >= v20 >> 1)
  {
    v10 = sub_1D79E569C((v20 > 1), v21 + 1, 1, v10);
    a3[v12] = v10;
  }

  v10[2] = v21 + 1;
  v22 = &v10[2 * v21];
  v22[4] = a1;
  v22[5] = a5;

  return swift_unknownObjectRetain();
}

unint64_t sub_1D7CAD800()
{
  result = qword_1EE0BDCE0;
  if (!qword_1EE0BDCE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0BDCE0);
  }

  return result;
}

unint64_t sub_1D7CAD858()
{
  result = qword_1EC9E8168;
  if (!qword_1EC9E8168)
  {
    sub_1D7CAD8B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E8168);
  }

  return result;
}

void sub_1D7CAD8B0()
{
  if (!qword_1EC9E8170)
  {
    v0 = sub_1D7D307BC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC9E8170);
    }
  }
}

uint64_t type metadata accessor for ArticleViewerToolbarFeatureManager(uint64_t a1)
{
  result = qword_1EE0C2648;
  if (!qword_1EE0C2648)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D7CAD974(uint64_t a1)
{
  sub_1D7AEC644(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1D7CADA3C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D7CADAAC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

double block_copy_helper_39(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

double sub_1D7CADB34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {

    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t type metadata accessor for RecommendedEndOfArticleFeedGroup(uint64_t a1)
{
  result = qword_1EE0C30C8;
  if (!qword_1EE0C30C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t static RecommendedEndOfArticleFeedGroup.== infix(_:_:)(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1D7D3197C();
  }
}

uint64_t RecommendedEndOfArticleFeedGroup.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t RecommendedEndOfArticleFeedGroup.formatGroup.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RecommendedEndOfArticleFeedGroup(0) + 20);
  v4 = sub_1D7D2DE2C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RecommendedEndOfArticleFeedGroup.nativeAdInsertionLocation.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RecommendedEndOfArticleFeedGroup(0) + 24);
  v4 = sub_1D7D2EA6C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_1D7CADE64(uint64_t a1)
{
  v2 = sub_1D7CADFCC(&qword_1EC9E8188, &protocol conformance descriptor for RecommendedEndOfArticleFeedGroup);

  return MEMORY[0x1EEE21E00](a1, v2);
}

uint64_t sub_1D7CADFCC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for RecommendedEndOfArticleFeedGroup(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t EndOfArticleModel.headline.getter()
{
  v1 = sub_1D7D2D5CC();
  v32 = *(v1 - 8);
  v33 = v1;
  MEMORY[0x1EEE9AC00](v1, v2);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7A57AE8(0);
  v6 = v5;
  v31 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D7D2ED3C();
  v29 = *(v10 - 8);
  v30 = v10;
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7A57998(0);
  v15 = v14;
  v16 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v17);
  v19 = &v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for EndOfArticleModel(0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v28 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7CAE3D8(v0, v23);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D7A57A74(0);
    v19 = &v23[*(v24 + 48)];
    v25 = v31;
    (*(v31 + 32))(v9, v23, v6);
    sub_1D7D2EBCC();
    v26 = sub_1D7D2D5BC();
    (*(v32 + 8))(v4, v33);
    (*(v25 + 8))(v9, v6);
  }

  else
  {
    (*(v16 + 32))(v19, v23, v15);
    sub_1D7D2EBCC();
    v26 = sub_1D7D2ED1C();
    (*(v29 + 8))(v13, v30);
  }

  (*(v16 + 8))(v19, v15);
  return v26;
}

uint64_t type metadata accessor for EndOfArticleModel(uint64_t a1)
{
  result = qword_1EE0C97C8;
  if (!qword_1EE0C97C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D7CAE3D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EndOfArticleModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t EndOfArticleModel.hashValue.getter()
{
  sub_1D7D31A8C();
  type metadata accessor for EndOfArticleModel(0);
  sub_1D7CB2B90(&qword_1EE0C97E8, type metadata accessor for EndOfArticleModel, &protocol conformance descriptor for EndOfArticleModel);
  sub_1D7D302CC();
  return sub_1D7D31ABC();
}

uint64_t EndOfArticleModel.identifier.getter()
{
  v1 = v0;
  sub_1D7A57AE8(0);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7A57998(0);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for EndOfArticleModel(0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7CAE3D8(v1, v17);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D7A57A74(0);
    v13 = &v17[*(v18 + 48)];
    (*(v4 + 32))(v7, v17, v3);
    v19 = sub_1D7D2EBAC();
    (*(v4 + 8))(v7, v3);
  }

  else
  {
    (*(v10 + 32))(v13, v17, v9);
    v19 = sub_1D7D2EBAC();
  }

  (*(v10 + 8))(v13, v9);
  return v19;
}

uint64_t sub_1D7CAE718(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D7CB2B90(&unk_1EE0C9808, type metadata accessor for EndOfArticleModel, &protocol conformance descriptor for EndOfArticleModel);

  return MEMORY[0x1EEE45140](a1, a2, v4);
}

NewsArticles::EndOfArticleModel::Features __swiftcall EndOfArticleModel.Features.init(allowFollowing:userHasAccess:)(Swift::Bool allowFollowing, Swift::Bool userHasAccess)
{
  *v2 = allowFollowing;
  v2[1] = userHasAccess;
  result.allowFollowing = allowFollowing;
  return result;
}

uint64_t EndOfArticleModel.dragItem.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1D7D2C5EC();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t EndOfArticleModel.keyCommands.getter()
{
  sub_1D7A57AE8(0);
  v83 = v1;
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v80 = v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D7D2F73C();
  v6 = *(v5 - 8);
  v84 = v5;
  v85 = v6;
  MEMORY[0x1EEE9AC00](v5, v7);
  v81 = v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v78 = v69 - v11;
  v12 = sub_1D7D2ED3C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7A57998(0);
  v18 = v17;
  v19 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v20);
  v79 = v69 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = v69 - v24;
  v26 = type metadata accessor for EndOfArticleModel(0);
  MEMORY[0x1EEE9AC00](v26, v27);
  v77 = v69 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29, v30);
  v32 = v69 - v31;
  MEMORY[0x1EEE9AC00](v33, v34);
  v36 = v69 - v35;
  v82 = v0;
  v37 = v0;
  v39 = v38;
  sub_1D7CAE3D8(v37, v69 - v35);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D7A57A74(0);
    (*(v19 + 8))(&v36[*(v40 + 48)], v18);
    (*(v2 + 8))(v36, v83);
    return MEMORY[0x1E69E7CC0];
  }

  else
  {
    v75 = v2;
    v42 = *(v19 + 32);
    v69[1] = v19 + 32;
    v70 = v42;
    v42(v25, v36, v18);
    sub_1D7D2EBCC();
    sub_1D7D2ED1C();
    (*(v13 + 8))(v16, v12);
    sub_1D7CB29C4(0, &qword_1EC9E8190, MEMORY[0x1E69D77E0], MEMORY[0x1E69E6F90]);
    v43 = *(sub_1D7D2A11C() - 8);
    v44 = (*(v43 + 80) + 32) & ~*(v43 + 80);
    v71 = *(v43 + 72);
    v45 = swift_allocObject();
    *(v45 + 16) = xmmword_1D7D3C680;
    v72 = v45;
    v76 = v45 + v44;
    sub_1D7CAE3D8(v82, v32);
    v73 = v39;
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v47 = v19;
    v74 = v25;
    if (EnumCaseMultiPayload == 1)
    {
      sub_1D7A57A74(0);
      v49 = &v32[*(v48 + 48)];
      v50 = v75;
      v51 = v80;
      v52 = v83;
      (*(v75 + 32))(v80, v32, v83);
      sub_1D7D2EBAC();
      v53 = v51;
      v47 = v19;
      (*(v50 + 8))(v53, v52);
      v54 = v84;
      v55 = v18;
      v56 = v79;
    }

    else
    {
      v56 = v79;
      v70(v79, v32, v18);
      sub_1D7D2EBAC();
      v49 = v56;
      v54 = v84;
      v55 = v18;
    }

    v57 = *(v47 + 8);
    v79 = (v47 + 8);
    v57(v49, v55);
    swift_unknownObjectRetain();
    v58 = v78;
    sub_1D7D2F72C();
    sub_1D7D2A0CC();
    v59 = *(v85 + 8);
    v85 += 8;
    v59(v58, v54);
    v60 = v77;
    sub_1D7CAE3D8(v82, v77);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1D7A57A74(0);
      v62 = v60 + *(v61 + 48);
      v63 = v55;
      v64 = v75;
      v65 = v80;
      v66 = v83;
      (*(v75 + 32))(v80, v60, v83);
      sub_1D7D2EBAC();
      (*(v64 + 8))(v65, v66);
      v55 = v63;
      v56 = v62;
    }

    else
    {
      v70(v56, v60, v55);
      sub_1D7D2EBAC();
    }

    v67 = v74;
    v57(v56, v55);
    swift_unknownObjectRetain();
    v68 = v81;
    sub_1D7D2F72C();
    sub_1D7D2A0FC();
    v59(v68, v84);
    sub_1D7D2A0EC();
    swift_unknownObjectRelease();
    v57(v67, v55);
    return v72;
  }
}

uint64_t sub_1D7CAF01C@<X0>(unsigned int *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = v3;
  v8 = type metadata accessor for EndOfArticleModel(0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7CAE3D8(v6, v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D7A57A74(0);
    v13 = *(v12 + 48);
    sub_1D7A57998(0);
    (*(*(v14 - 8) + 8))(&v11[v13], v14);
    sub_1D7A57AE8(0);
    (*(*(v15 - 8) + 8))(v11, v15);
  }

  else
  {
    sub_1D7CB2948(v11);
  }

  v16 = *a1;
  v17 = a2(0);
  return (*(*(v17 - 8) + 104))(a3, v16, v17);
}

uint64_t sub_1D7CAF1B4@<X0>(uint64_t a2@<X1>, unsigned int *a3@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t a5@<X8>)
{
  MEMORY[0x1EEE9AC00](v5, a2);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7CAE3D8(v11, v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D7A57A74(0);
    v13 = *(v12 + 48);
    sub_1D7A57998(0);
    (*(*(v14 - 8) + 8))(&v10[v13], v14);
    sub_1D7A57AE8(0);
    (*(*(v15 - 8) + 8))(v10, v15);
  }

  else
  {
    sub_1D7CB2948(v10);
  }

  v16 = *a3;
  v17 = a4(0);
  return (*(*(v17 - 8) + 104))(a5, v16, v17);
}

uint64_t EndOfArticleModel.feedItem.getter@<X0>(uint64_t a1@<X8>)
{
  v71 = a1;
  v1 = sub_1D7D2ECFC();
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v66 = v59 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_1D7D2EB4C();
  v63 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65, v4);
  v64 = v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1E69E6720];
  sub_1D7CB29C4(0, &unk_1EE0BF9F8, MEMORY[0x1E69B58F8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v62 = v59 - v9;
  sub_1D7CB29C4(0, &unk_1EE0BF9D0, MEMORY[0x1E69B59B8], v6);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v61 = v59 - v12;
  sub_1D7CB29C4(0, &qword_1EE0BFC08, MEMORY[0x1E69B3E58], v6);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v70 = v59 - v15;
  v60 = sub_1D7D2D5CC();
  v16 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60, v17);
  v19 = v59 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = v59 - v22;
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = v59 - v26;
  sub_1D7A57AE8(0);
  v29 = v28;
  v67 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28, v30);
  v32 = v59 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7A57998(0);
  v69 = v33;
  v34 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33, v35);
  v37 = v59 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for EndOfArticleModel(0);
  MEMORY[0x1EEE9AC00](v38, v39);
  v41 = v59 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7CAE3D8(v68, v41);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D7A57A74(0);
    v68 = *(v42 + 48);
    (*(v67 + 32))(v32, v41, v29);
    v43 = sub_1D7D2EBCC();
    v44 = MEMORY[0x1DA70B000](v43);
    v59[2] = v45;
    v59[3] = v44;
    v46 = *(v16 + 8);
    v47 = v27;
    v48 = v60;
    v46(v47, v60);
    sub_1D7D2EBCC();
    v59[1] = sub_1D7D2D5BC();
    v46(v23, v48);
    sub_1D7D2EBCC();
    sub_1D7D2D5AC();
    v46(v19, v48);
    v49 = sub_1D7D2E11C();
    (*(*(v49 - 8) + 56))(v61, 1, 1, v49);
    v50 = sub_1D7D2DEAC();
    (*(*(v50 - 8) + 56))(v62, 1, 1, v50);
    (*(v63 + 104))(v64, *MEMORY[0x1E69B5E08], v65);
    sub_1D7D2ECEC();
    v51 = v71;
    sub_1D7D2ECAC();
    (*(v67 + 8))(v32, v29);
    v52 = *MEMORY[0x1E69B5E70];
    v53 = sub_1D7D2EB6C();
    (*(*(v53 - 8) + 104))(v51, v52, v53);
    return (*(v34 + 8))(&v41[v68], v69);
  }

  else
  {
    v55 = v69;
    (*(v34 + 32))(v37, v41, v69);
    v56 = v71;
    sub_1D7D2EBCC();
    (*(v34 + 8))(v37, v55);
    v57 = *MEMORY[0x1E69B5E70];
    v58 = sub_1D7D2EB6C();
    return (*(*(v58 - 8) + 104))(v56, v57, v58);
  }
}

uint64_t EndOfArticleModel.feedContextIdentifier.getter()
{
  v1 = sub_1D7D2EB6C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for EndOfArticleModel(0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7CAE3D8(v0, v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D7A57A74(0);
    v11 = *(v10 + 48);
    sub_1D7A57998(0);
    (*(*(v12 - 8) + 8))(&v9[v11], v12);
    sub_1D7A57AE8(0);
    (*(*(v13 - 8) + 8))(v9, v13);
  }

  else
  {
    sub_1D7CB2948(v9);
  }

  EndOfArticleModel.feedItem.getter(v5);
  v14 = sub_1D7D2EB5C();
  (*(v2 + 8))(v5, v1);
  return v14;
}

uint64_t sub_1D7CAFC20(uint64_t a1)
{
  v2 = sub_1D7D2EB6C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7CAE3D8(v1, v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D7A57A74(0);
    v12 = *(v11 + 48);
    sub_1D7A57998(0);
    (*(*(v13 - 8) + 8))(&v10[v12], v13);
    sub_1D7A57AE8(0);
    (*(*(v14 - 8) + 8))(v10, v14);
  }

  else
  {
    sub_1D7CB2948(v10);
  }

  EndOfArticleModel.feedItem.getter(v6);
  v15 = sub_1D7D2EB5C();
  (*(v3 + 8))(v6, v2);
  return v15;
}

uint64_t EndOfArticleModel.contextMenu.getter(double a1)
{
  v1 = sub_1D7D29C6C();
  v81 = *(v1 - 8);
  v82 = v1;
  MEMORY[0x1EEE9AC00](v1, v2);
  v4 = (&v68 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_1D7D29C7C();
  v73 = *(v5 - 8);
  v74 = v5;
  MEMORY[0x1EEE9AC00](v5, v6);
  v72 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v71 = &v68 - v10;
  v11 = sub_1D7D2D5CC();
  v76 = *(v11 - 8);
  v77 = v11;
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7A57AE8(0);
  v16 = v15;
  v80 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = &v68 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1D7D2ED3C();
  v68 = *(v20 - 8);
  v69 = v20;
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v68 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7A57998(0);
  v25 = v24;
  v75 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24, v26);
  v28 = &v68 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for EndOfArticleModel(0);
  MEMORY[0x1EEE9AC00](v29, v30);
  v32 = &v68 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33, v34);
  v36 = &v68 - v35;
  sub_1D7CAE3D8(v83, &v68 - v35);
  v78 = v29;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v70 = v16;
  v79 = v19;
  if (EnumCaseMultiPayload == 1)
  {
    sub_1D7A57A74(0);
    v69 = *(v38 + 48);
    v39 = v80;
    (*(v80 + 32))(v19, v36, v16);
    sub_1D7D2EBCC();
    v40 = v16;
    v41 = sub_1D7D2D5BC();
    v76[1](v14, v77);
    (*(v39 + 8))(v19, v40);
    v42 = v75;
    v43 = *(v75 + 8);
    swift_unknownObjectRetain();
    v44 = &v36[v69];
    v69 = v25;
    v76 = v43;
    (v43)(v44, v25);
    v86 = MEMORY[0x1E69E7CD0];
    LODWORD(v77) = 1;
LABEL_5:
    v46 = v72;
    v45 = v73;
    v47 = v74;
    (*(v73 + 104))(v72, *MEMORY[0x1E69B5780], v74);
    v48 = v71;
    sub_1D7B3DEA4(v71, v46);
    (*(v45 + 8))(v48, v47);
    v49 = 1;
    v25 = v69;
    goto LABEL_7;
  }

  v42 = v75;
  (*(v75 + 32))(v28, v36, v25);
  sub_1D7D2EBCC();
  v41 = sub_1D7D2ED1C();
  (*(v68 + 8))(v23, v69);
  swift_unknownObjectRetain();
  sub_1D7D2EBEC();
  v76 = *(v42 + 8);
  (v76)(v28, v25);
  LODWORD(v77) = v84;
  v86 = MEMORY[0x1E69E7CD0];
  if (v85 == 1)
  {
    v69 = v25;
    goto LABEL_5;
  }

  v49 = 0;
LABEL_7:
  sub_1D7CAE3D8(v83, v32);
  v50 = swift_getEnumCaseMultiPayload();
  v51 = v79;
  if (v50 == 1)
  {
    sub_1D7A57A74(0);
    v28 = &v32[*(v52 + 48)];
    v53 = v80;
    v54 = v32;
    v55 = v70;
    (*(v80 + 32))(v51, v54, v70);
    v56 = sub_1D7D2EBAC();
    v57 = v53;
    v58 = v56;
    v60 = v59;
    (*(v57 + 8))(v51, v55);
  }

  else
  {
    (*(v42 + 32))(v28, v32, v25);
    v58 = sub_1D7D2EBAC();
    v60 = v61;
  }

  (v76)(v28, v25);
  sub_1D7D29C8C();
  *v4 = v41;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = v58;
  v4[4] = v60;
  v63 = v81;
  v62 = v82;
  (*(v81 + 104))(v4, *MEMORY[0x1E69B5728], v82);
  v64 = v86;
  swift_unknownObjectRetain();
  MEMORY[0x1DA7076C0](v4, v64);

  (*(v63 + 8))(v4, v62);
  v65 = swift_allocObject();
  *(v65 + 16) = v41;
  *(v65 + 24) = v77;
  *(v65 + 25) = v49;
  swift_allocObject();
  v66 = sub_1D7D29C3C();
  swift_unknownObjectRelease();
  return v66;
}

uint64_t sub_1D7CB056C(uint64_t a1, unsigned int a2, double a3)
{
  sub_1D7D2FF3C();
  swift_unknownObjectRetain();
  return sub_1D7D2FF2C();
}

uint64_t EndOfArticleModel.debugContextMenuWithContext<A, B, C, D>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *&v77 = a8;
  v74 = a5;
  v73 = a4;
  v72 = a1;
  v86 = a2;
  v87 = a3;
  v75 = a6;
  v76 = a7;
  v88 = a6;
  v89 = a7;
  v11 = sub_1D7D2C80C();
  v82 = *(v11 - 8);
  v83 = v11;
  MEMORY[0x1EEE9AC00](v11, v12);
  v81 = &v69 - v13;
  v71 = sub_1D7D2CADC();
  v70 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71, v14);
  v69 = &v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1D7D2CDAC();
  v79 = *(v16 - 8);
  v80 = v16;
  MEMORY[0x1EEE9AC00](v16, v17);
  v78 = &v69 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1D7D2D5CC();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v21);
  v23 = &v69 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v69 - v26;
  sub_1D7A57AE8(0);
  v29 = v28;
  v85 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28, v30);
  v32 = &v69 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for EndOfArticleModel(0);
  MEMORY[0x1EEE9AC00](v33, v34);
  v36 = &v69 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7CAE3D8(v84, v36);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D7A57A74(0);
    v38 = *(v37 + 48);
    (*(v85 + 32))(v32, v36, v29);
    sub_1D7D2EBCC();
    if ((*(v20 + 88))(v27, v19) == *MEMORY[0x1E69B43F8])
    {
      (*(v20 + 96))(v27, v19);
      v84 = v38;
      (*(v79 + 32))(v78, v27, v80);
      v83 = sub_1D7D29C8C();
      sub_1D7CB29C4(0, &qword_1EE0BAE40, sub_1D7A52854, MEMORY[0x1E69E6F90]);
      v82 = swift_allocObject();
      v77 = xmmword_1D7D3B4D0;
      *(v82 + 16) = xmmword_1D7D3B4D0;
      v81 = sub_1D7D2A53C();
      v39 = v36;
      v40 = swift_allocObject();
      *(v40 + 16) = v77;
      *&v77 = sub_1D7D2A36C();
      sub_1D7D2CD9C();
      v41 = sub_1D7D2EBCC();
      MEMORY[0x1DA70B000](v41);
      (*(v20 + 8))(v23, v19);
      v42 = v69;
      sub_1D7D2D49C();

      v43 = v77;
      v44 = sub_1D7D2A24C();
      (*(v70 + 8))(v42, v71);
      v45 = MEMORY[0x1E69D7890];
      *(v40 + 56) = v43;
      *(v40 + 64) = v45;
      *(v40 + 32) = v44;
      sub_1D7D2A52C();

      v46 = sub_1D7D29C4C();
      (*(v79 + 8))(v78, v80);
      (*(v85 + 8))(v32, v29);
      sub_1D7A57998(0);
      (*(*(v47 - 8) + 8))(&v39[v84], v47);
    }

    else
    {
      (*(v85 + 8))(v32, v29);
      (*(v20 + 8))(v27, v19);
      sub_1D7A57998(0);
      (*(*(v58 - 8) + 8))(&v36[v38], v58);
      return 0;
    }
  }

  else
  {
    v80 = v36;
    sub_1D7CB29C4(0, &qword_1EE0BAE40, sub_1D7A52854, MEMORY[0x1E69E6F90]);
    v79 = swift_allocObject();
    *(v79 + 16) = xmmword_1D7D3B4D0;
    v48 = swift_allocObject();
    *(v48 + 16) = xmmword_1D7D3C680;
    v49 = sub_1D7D2A36C();
    v84 = a2;
    v85 = a3;
    v50 = v73;
    v51 = v74;
    v53 = v75;
    v52 = v76;
    v54 = v77;
    v55 = sub_1D7D2A2AC();
    if (v55)
    {
      v56 = MEMORY[0x1E69D7890];
      v57 = v49;
    }

    else
    {
      v57 = 0;
      v56 = 0;
      *(v48 + 40) = 0;
      *(v48 + 48) = 0;
    }

    *(v48 + 32) = v55;
    *(v48 + 56) = v57;
    *(v48 + 64) = v56;
    v59 = sub_1D7D2A29C();
    if (v59)
    {
      v60 = MEMORY[0x1E69D7890];
      v61 = v49;
    }

    else
    {
      v61 = 0;
      v60 = 0;
      *(v48 + 80) = 0;
      *(v48 + 88) = 0;
    }

    *(v48 + 72) = v59;
    *(v48 + 96) = v61;
    *(v48 + 104) = v60;
    v86 = v84;
    v87 = v85;
    v88 = v50;
    v89 = v51;
    v90 = v53;
    v91 = v52;
    v92 = v54;
    v93 = a9;
    sub_1D7D29B5C();
    v62 = v81;
    sub_1D7D29B4C();
    type metadata accessor for EndOfArticleFeedServiceConfig(0);
    sub_1D7CB2B90(&qword_1EE0CD120, type metadata accessor for EndOfArticleFeedServiceConfig, &unk_1D7D47AC0);
    v63 = v83;
    v64 = sub_1D7D2C7CC();
    (*(v82 + 8))(v62, v63);
    sub_1D7D29B2C();
    v65 = sub_1D7D2A28C();

    sub_1D7AAF6F4(v64);
    if (v65)
    {
      v66 = MEMORY[0x1E69D7890];
    }

    else
    {
      v49 = 0;
      v66 = 0;
      *(v48 + 120) = 0;
      *(v48 + 128) = 0;
    }

    v67 = v80;
    *(v48 + 112) = v65;
    *(v48 + 136) = v49;
    *(v48 + 144) = v66;
    sub_1D7D29C8C();
    sub_1D7D2A53C();
    sub_1D7D2A51C();

    v46 = sub_1D7D29C4C();
    sub_1D7CB2948(v67);
  }

  return v46;
}

uint64_t EndOfArticleModel.nativeAdSwapIdentifier.getter()
{
  v1 = sub_1D7D2D5CC();
  v35 = *(v1 - 8);
  v36 = v1;
  MEMORY[0x1EEE9AC00](v1, v2);
  v4 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7A57AE8(0);
  v37 = *(v5 - 8);
  v38 = v5;
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D7D2ED3C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7A57998(0);
  v39 = v14;
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for EndOfArticleModel(0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7CAE3D8(v0, v22);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D7A57A74(0);
    v18 = &v22[*(v23 + 48)];
    v25 = v37;
    v24 = v38;
    (*(v37 + 32))(v8, v22, v38);
    sub_1D7D2EBCC();
    v26 = sub_1D7D2D5BC();
    (*(v35 + 8))(v4, v36);
    v27 = [v26 identifier];
    swift_unknownObjectRelease();
    v28 = sub_1D7D3034C();

    (*(v25 + 8))(v8, v24);
    v29 = v39;
  }

  else
  {
    v30 = v39;
    (*(v15 + 32))(v18, v22, v39);
    sub_1D7D2EBCC();
    v31 = sub_1D7D2ED1C();
    (*(v10 + 8))(v13, v9);
    v32 = [v31 identifier];
    swift_unknownObjectRelease();
    v28 = sub_1D7D3034C();

    v29 = v30;
  }

  (*(v15 + 8))(v18, v29);
  return v28;
}

uint64_t static EndOfArticleModel.createNativeAdItem(for:feedContext:replacing:)@<X0>(void (*a1)(char *, char *, uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v125 = a1;
  v126 = a3;
  v121 = a2;
  v127 = a4;
  v108 = sub_1D7D2CB1C();
  v107 = *(v108 - 8);
  MEMORY[0x1EEE9AC00](v108, v4);
  v106 = &v101 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = sub_1D7D2ED3C();
  v104 = *(v111 - 8);
  MEMORY[0x1EEE9AC00](v111, v6);
  v109 = &v101 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v110 = &v101 - v10;
  v11 = sub_1D7D2CB2C();
  v117 = *(v11 - 8);
  v118 = v11;
  MEMORY[0x1EEE9AC00](v11, v12);
  v103 = &v101 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v114 = &v101 - v16;
  v17 = sub_1D7D2CAFC();
  v115 = *(v17 - 8);
  v116 = v17;
  MEMORY[0x1EEE9AC00](v17, v18);
  v113 = &v101 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1D7D2EC6C();
  v119 = *(v20 - 8);
  v120 = v20;
  MEMORY[0x1EEE9AC00](v20, v21);
  v122 = &v101 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for EndOfArticleModel(0);
  MEMORY[0x1EEE9AC00](v23, v24);
  v102 = &v101 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26, v27);
  v29 = &v101 - v28;
  MEMORY[0x1EEE9AC00](v30, v31);
  v33 = &v101 - v32;
  sub_1D7A57998(0);
  v123 = *(v34 - 8);
  v124 = v34;
  MEMORY[0x1EEE9AC00](v34, v35);
  v105 = &v101 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37, v38);
  v112 = &v101 - v39;
  v40 = sub_1D7D2D5CC();
  v41 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40, v42);
  v44 = &v101 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v45, v46);
  v48 = &v101 - v47;
  v49 = sub_1D7D2D5DC();
  v50 = *(v49 - 8);
  v52 = MEMORY[0x1EEE9AC00](v49, v51);
  v54 = &v101 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v50 + 16))(v54, v125, v49, v52);
  v55 = (*(v50 + 88))(v54, v49);
  if (v55 == *MEMORY[0x1E69B4410])
  {
    (*(v50 + 96))(v54, v49);
    (*(v41 + 32))(v48, v54, v40);
    v56 = v126;
    sub_1D7CAE3D8(v126, v33);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      (*(v41 + 8))(v48, v40);
      sub_1D7CB2948(v33);
      return sub_1D7CAE3D8(v56, v127);
    }

    v68 = v124;
    v125 = *(v123 + 32);
    v126 = v23;
    v69 = v112;
    v125(v112, v33, v124);
    sub_1D7A57A74(0);
    v123 = *(v70 + 48);
    (*(v41 + 16))(v44, v48, v40);
    (*(v119 + 16))(v122, v121, v120);
    v128 = 257;
    v71 = MEMORY[0x1E69B4400];
    sub_1D7CB2B90(&qword_1EE0BFA68, MEMORY[0x1E69B4400], MEMORY[0x1E69B4408]);
    sub_1D7CB2B90(&unk_1EE0BFA70, v71, MEMORY[0x1E69B43E8]);
    sub_1D7A57C0C();
    v72 = v127;
    sub_1D7D2EBFC();
    (*(v41 + 8))(v48, v40);
    v125((v72 + v123), v69, v68);
  }

  else
  {
    v58 = v126;
    if (v55 == *MEMORY[0x1E69B4418])
    {
      (*(v50 + 96))(v54, v49);
      v59 = v115;
      v60 = v113;
      v61 = v54;
      v62 = v116;
      (*(v115 + 32))(v113, v61, v116);
      v63 = v114;
      sub_1D7D2CAEC();
      v64 = v58;
      sub_1D7CAE3D8(v58, v29);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        (*(v117 + 8))(v63, v118);
        (*(v59 + 8))(v60, v62);
        sub_1D7A57A74(0);
        v66 = *(v65 + 48);
        sub_1D7CAE3D8(v64, v127);
        (*(v123 + 8))(&v29[v66], v124);
        sub_1D7A57AE8(0);
        return (*(*(v67 - 8) + 8))(v29, v67);
      }

      v84 = v123;
      v83 = v124;
      v85 = v105;
      (*(v123 + 32))(v105, v29, v124);
      v86 = v109;
      sub_1D7D2EBCC();
      v87 = v110;
      sub_1D7D2ECDC();
      v88 = v104;
      v125 = *(v104 + 8);
      v89 = v111;
      (v125)(v86, v111);
      (*(v88 + 16))(v86, v87, v89);
      v90 = *(v119 + 16);
      v126 = v23;
      v90(v122, v121, v120);
      sub_1D7D2EBEC();
      v129 = v131;
      v130 = v132;
      v91 = MEMORY[0x1E69B5FD0];
      sub_1D7CB2B90(&unk_1EE0BF770, MEMORY[0x1E69B5FD0], MEMORY[0x1E69B5FD8]);
      sub_1D7CB2B90(&qword_1EE0BF780, v91, MEMORY[0x1E69B5FC8]);
      sub_1D7A57C0C();
      sub_1D7D2EBFC();
      (v125)(v87, v89);
      (*(v84 + 8))(v85, v83);
      (*(v117 + 8))(v114, v118);
      (*(v115 + 8))(v113, v116);
    }

    else
    {
      if (v55 != *MEMORY[0x1E69B4420])
      {
        sub_1D7CAE3D8(v126, v127);
        return (*(v50 + 8))(v54, v49);
      }

      (*(v50 + 96))(v54, v49);
      v73 = v107;
      v74 = v106;
      v75 = v54;
      v76 = v108;
      (*(v107 + 32))(v106, v75, v108);
      v77 = v103;
      sub_1D7D2CB0C();
      v78 = v58;
      v79 = v102;
      sub_1D7CAE3D8(v58, v102);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        (*(v117 + 8))(v77, v118);
        (*(v73 + 8))(v74, v76);
        sub_1D7A57A74(0);
        v81 = *(v80 + 48);
        sub_1D7CAE3D8(v78, v127);
        (*(v123 + 8))(v79 + v81, v124);
        sub_1D7A57AE8(0);
        return (*(*(v82 - 8) + 8))(v79, v82);
      }

      v93 = v123;
      v92 = v124;
      v94 = v105;
      (*(v123 + 32))(v105, v79, v124);
      v95 = v109;
      sub_1D7D2EBCC();
      v96 = v110;
      sub_1D7D2ECDC();
      v97 = v104;
      v125 = *(v104 + 8);
      v98 = v111;
      (v125)(v95, v111);
      (*(v97 + 16))(v95, v96, v98);
      v99 = *(v119 + 16);
      v126 = v23;
      v99(v122, v121, v120);
      sub_1D7D2EBEC();
      v133 = v135;
      v134 = v136;
      v100 = MEMORY[0x1E69B5FD0];
      sub_1D7CB2B90(&unk_1EE0BF770, MEMORY[0x1E69B5FD0], MEMORY[0x1E69B5FD8]);
      sub_1D7CB2B90(&qword_1EE0BF780, v100, MEMORY[0x1E69B5FC8]);
      sub_1D7A57C0C();
      sub_1D7D2EBFC();
      (v125)(v96, v98);
      (*(v93 + 8))(v94, v92);
      (*(v117 + 8))(v103, v118);
      (*(v107 + 8))(v106, v108);
    }
  }

  return swift_storeEnumTagMultiPayload();
}

uint64_t static EndOfArticleModel.removeNativeAd(from:feedContext:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for EndOfArticleModel(0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7CAE3D8(a1, v7);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D7A57A74(0);
    v9 = *(v8 + 48);
    sub_1D7A57998(0);
    (*(*(v10 - 8) + 32))(a2, &v7[v9], v10);
    swift_storeEnumTagMultiPayload();
    sub_1D7A57AE8(0);
    return (*(*(v11 - 8) + 8))(v7, v11);
  }

  else
  {
    sub_1D7CAE3D8(a1, a2);
    return sub_1D7CB2948(v7);
  }
}

uint64_t sub_1D7CB2250@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  MEMORY[0x1EEE9AC00](a1, a2);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7CAE3D8(v8, v7);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D7A57A74(0);
    v10 = *(v9 + 48);
    sub_1D7A57998(0);
    (*(*(v11 - 8) + 32))(a4, &v7[v10], v11);
    swift_storeEnumTagMultiPayload();
    sub_1D7A57AE8(0);
    return (*(*(v12 - 8) + 8))(v7, v12);
  }

  else
  {
    sub_1D7CAE3D8(a1, a4);
    return sub_1D7CB2948(v7);
  }
}

uint64_t _s12NewsArticles17EndOfArticleModelO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  sub_1D7A57AE8(0);
  v5 = v4;
  v52 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v50 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v51 = &v49 - v10;
  sub_1D7A57998(0);
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v14);
  v49 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v49 - v18;
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v49 - v22;
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v49 - v26;
  sub_1D7CB2DBC(0);
  MEMORY[0x1EEE9AC00](v28 - 8, v29);
  v31 = &v49 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = &v31[*(v32 + 56)];
  sub_1D7CAE3D8(a1, v31);
  sub_1D7CAE3D8(a2, v33);
  type metadata accessor for EndOfArticleModel(0);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v43 = *(v13 + 32);
      v43(v27, v31, v12);
      v43(v23, v33, v12);
      sub_1D7D2ED3C();
      v44 = MEMORY[0x1E69B5FD0];
      sub_1D7CB2B90(&unk_1EE0BF770, MEMORY[0x1E69B5FD0], MEMORY[0x1E69B5FD8]);
      sub_1D7CB2B90(&qword_1EE0BF780, v44, MEMORY[0x1E69B5FC8]);
      v42 = sub_1D7D2EBBC();
      v45 = *(v13 + 8);
      v45(v23, v12);
      v45(v27, v12);
      return v42 & 1;
    }

    v5 = v12;
    goto LABEL_8;
  }

  sub_1D7A57A74(0);
  v35 = *(v34 + 48);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v13 + 8))(&v31[v35], v12);
    v13 = v52;
LABEL_8:
    (*(v13 + 8))(v31, v5);
    sub_1D7CB2948(v33);
    v42 = 0;
    return v42 & 1;
  }

  v36 = *(v52 + 32);
  v36(v51, v31, v5);
  v36(v50, v33, v5);
  v37 = *(v13 + 32);
  v37(v19, &v31[v35], v12);
  v38 = (v33 + v35);
  v39 = v49;
  v37(v49, v38, v12);
  sub_1D7D2D5CC();
  v40 = MEMORY[0x1E69B4400];
  sub_1D7CB2B90(&qword_1EE0BFA68, MEMORY[0x1E69B4400], MEMORY[0x1E69B4408]);
  sub_1D7CB2B90(&unk_1EE0BFA70, v40, MEMORY[0x1E69B43E8]);
  if (sub_1D7D2EBBC())
  {
    sub_1D7D2ED3C();
    v41 = MEMORY[0x1E69B5FD0];
    sub_1D7CB2B90(&unk_1EE0BF770, MEMORY[0x1E69B5FD0], MEMORY[0x1E69B5FD8]);
    sub_1D7CB2B90(&qword_1EE0BF780, v41, MEMORY[0x1E69B5FC8]);
    v42 = sub_1D7D2EBBC();
  }

  else
  {
    v42 = 0;
  }

  v46 = *(v13 + 8);
  v46(v39, v12);
  v46(v19, v12);
  v47 = *(v52 + 8);
  v47(v50, v5);
  v47(v51, v5);
  return v42 & 1;
}

uint64_t sub_1D7CB2948(uint64_t a1)
{
  v2 = type metadata accessor for EndOfArticleModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D7CB29A4(double a1)
{
  if (*(v1 + 25))
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return sub_1D7CB056C(*(v1 + 16), v2 | *(v1 + 24), a1);
}

void sub_1D7CB29C4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D7CB2B90(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1D7CB2BD8(uint64_t a1)
{
  sub_1D7A57998(319);
  if (v1 <= 0x3F)
  {
    sub_1D7A57A74(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

uint64_t getEnumTagSinglePayload for EndOfArticleModel.Features(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

_WORD *storeEnumTagSinglePayload for PDFReplicaViewerOptions(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
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
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
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

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
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

void sub_1D7CB2DBC(uint64_t a1)
{
  if (!qword_1EE0C9700[0])
  {
    type metadata accessor for EndOfArticleModel(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, qword_1EE0C9700);
    }
  }
}

uint64_t sub_1D7CB2E20(uint64_t a1)
{
  v2 = type metadata accessor for ArticleViewerPage(0);
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ArticleViewerArticlePage(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = (&v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = [objc_opt_self() mainBundle];
  v11 = [v10 bundleIdentifier];

  if (!v11)
  {
    goto LABEL_7;
  }

  v12 = sub_1D7D3034C();
  v14 = v13;

  if (v12 == 0x6C7070612E6D6F63 && v14 == 0xEE007377656E2E65)
  {

LABEL_9:
    sub_1D79F93E8(a1, v5);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 1)
    {
      if (!EnumCaseMultiPayload)
      {
        goto LABEL_16;
      }
    }

    else if (EnumCaseMultiPayload != 2)
    {
      if (EnumCaseMultiPayload == 3)
      {
        sub_1D79F94F0(v5, type metadata accessor for ArticleViewerPage);
        v17 = 1;
        return v17 & 1;
      }

      sub_1D799A6BC(0);
      sub_1D79DA510(*&v5[*(v19 + 48)], *&v5[*(v19 + 48) + 8], *&v5[*(v19 + 48) + 16], *&v5[*(v19 + 48) + 24]);
LABEL_16:
      sub_1D7A74E98(v5, v9);
      v17 = sub_1D7CB3084(v9[2], v9);
      sub_1D79F94F0(v9, type metadata accessor for ArticleViewerArticlePage);
      return v17 & 1;
    }

    sub_1D79F94F0(v5, type metadata accessor for ArticleViewerPage);
    v17 = 0;
    return v17 & 1;
  }

  v16 = sub_1D7D3197C();

  if (v16)
  {
    goto LABEL_9;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_1D7CB3084(void *a1, uint64_t a2)
{
  v30 = sub_1D7D29A8C();
  v5 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30, v6);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D7D295CC();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a2 + *(type metadata accessor for ArticleViewerArticlePage(0) + 32));
  if (v14 >= 2)
  {
    v28 = v10;
    v29 = v9;
    v17 = v14;
  }

  else
  {
    v15 = *(a2 + 16);
    if (([v15 respondsToSelector_] & 1) == 0)
    {
      return 0;
    }

    result = [v15 parentIssue];
    if (!result)
    {
      return result;
    }

    v17 = result;
    v28 = v10;
    v29 = v9;
    if (!v14 && [result isDraft] && (objc_msgSend(a1, sel_isDraft) & 1) == 0)
    {

      return 0;
    }
  }

  v18 = [a1 identifier];
  sub_1D7D3034C();

  sub_1D7D2964C();

  __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC12NewsArticles53TableOfContentsArticleViewerFeatureVisibilityProvider_paywallFactory), *(v2 + OBJC_IVAR____TtC12NewsArticles53TableOfContentsArticleViewerFeatureVisibilityProvider_paywallFactory + 24));
  sub_1D7D2970C();
  if (sub_1D7D29A4C())
  {

    (*(v5 + 8))(v8, v30);
    (*(v28 + 8))(v13, v29);
    return 0;
  }

  v19 = [v17 coverArticleID];
  v20 = sub_1D7D3034C();
  v22 = v21;

  v23 = HIBYTE(v22) & 0xF;
  if ((v22 & 0x2000000000000000) == 0)
  {
    v23 = v20 & 0xFFFFFFFFFFFFLL;
  }

  v25 = v28;
  v24 = v29;
  if (!v23)
  {

    (*(v5 + 8))(v8, v30);
    (*(v25 + 8))(v13, v24);
    return 0;
  }

  if ([a1 respondsToSelector_])
  {
    v26 = [a1 role];

    (*(v5 + 8))(v8, v30);
    (*(v25 + 8))(v13, v24);
    return v26 != 2;
  }

  else
  {

    (*(v5 + 8))(v8, v30);
    (*(v25 + 8))(v13, v24);
    return 1;
  }
}

uint64_t sub_1D7CB344C()
{
  v1 = OBJC_IVAR____TtC12NewsArticles53TableOfContentsArticleViewerFeatureVisibilityProvider_articleAccessMap;
  v2 = sub_1D7D2966C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC12NewsArticles53TableOfContentsArticleViewerFeatureVisibilityProvider_paywallFactory));

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TableOfContentsArticleViewerFeatureVisibilityProvider(uint64_t a1)
{
  result = qword_1EE0C0778;
  if (!qword_1EE0C0778)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D7CB354C(uint64_t a1)
{
  result = sub_1D7D2966C();
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

BOOL static PDFReplicaPageLink.== infix(_:_:)(double *a1, double *a2)
{
  v4 = *a1;
  v5 = *(a1 + 1);
  v6 = a1[2];
  v7 = a1[3];
  v8 = a1[4];
  v9 = a1[5];
  v10 = *a2;
  v11 = *(a2 + 1);
  v12 = a2[2];
  v13 = a2[3];
  v14 = a2[4];
  v15 = a2[5];
  v16 = *(a2 + 48);
  if (a1[6])
  {
    if ((v16 & 1) == 0)
    {
      return 0;
    }

    if (v4 == v10 && v5 == v11)
    {
      goto LABEL_10;
    }
  }

  else
  {
    if (v16)
    {
      return 0;
    }

    if (v4 == v10 && v5 == v11)
    {
      goto LABEL_10;
    }
  }

  if (sub_1D7D3197C())
  {
LABEL_10:
    v18.origin.x = v6;
    v18.origin.y = v7;
    v18.size.width = v8;
    v18.size.height = v9;
    v19.origin.x = v12;
    v19.origin.y = v13;
    v19.size.width = v14;
    v19.size.height = v15;
    return CGRectEqualToRect(v18, v19);
  }

  return 0;
}

BOOL sub_1D7CB36AC(double *a1, double *a2)
{
  v4 = *a1;
  v5 = *(a1 + 1);
  v6 = a1[2];
  v7 = a1[3];
  v8 = a1[4];
  v9 = a1[5];
  v10 = *a2;
  v11 = *(a2 + 1);
  v12 = a2[2];
  v13 = a2[3];
  v14 = a2[4];
  v15 = a2[5];
  v16 = *(a2 + 48);
  if (a1[6])
  {
    if ((v16 & 1) == 0)
    {
      return 0;
    }

    if (v4 == v10 && v5 == v11)
    {
      goto LABEL_10;
    }
  }

  else
  {
    if (v16)
    {
      return 0;
    }

    if (v4 == v10 && v5 == v11)
    {
      goto LABEL_10;
    }
  }

  if (sub_1D7D3197C())
  {
LABEL_10:
    v18.origin.x = v6;
    v18.origin.y = v7;
    v18.size.width = v8;
    v18.size.height = v9;
    v19.origin.x = v12;
    v19.origin.y = v13;
    v19.size.width = v14;
    v19.size.height = v15;
    return CGRectEqualToRect(v18, v19);
  }

  return 0;
}

uint64_t PDFReplicaPageLink.encode(to:)(void *a1)
{
  sub_1D7CB4F70(0, &qword_1EC9E8198, sub_1D7CB3A08, &type metadata for PDFReplicaPageLink.LinkKeys, MEMORY[0x1E69E6F58]);
  v4 = *(v3 - 8);
  v23 = v3;
  v24 = v4;
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = v21 - v6;
  v8 = *v1;
  *v21 = v1[1];
  *&v21[1] = v8;
  v9 = v1[2];
  v10 = v1[3];
  v12 = v1[4];
  v11 = v1[5];
  v13 = *(v1 + 48);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7CB3A08();
  sub_1D7D31B1C();
  if (v13)
  {
    LOBYTE(v25) = 1;
    v29 = 0;
    sub_1D7CB3A5C();
    v15 = v22;
    v14 = v23;
    sub_1D7D318BC();
    if (v15)
    {
      return (*(v24 + 8))(v7, v14);
    }

    v16 = 2;
  }

  else
  {
    LOBYTE(v25) = 0;
    v29 = 0;
    sub_1D7CB3A5C();
    v17 = v22;
    v14 = v23;
    sub_1D7D318BC();
    if (v17)
    {
      return (*(v24 + 8))(v7, v14);
    }

    v16 = 1;
  }

  LOBYTE(v25) = v16;
  sub_1D7D3188C();
  v30.origin.x = v9;
  v30.origin.y = v10;
  v30.size.width = v12;
  v30.size.height = v11;
  Width = CGRectGetWidth(v30);
  v31.origin.x = v9;
  v31.origin.y = v10;
  v31.size.width = v12;
  v31.size.height = v11;
  v19 = CGRectGetWidth(v31);
  v25 = v9;
  v26 = v10;
  v27 = v19;
  v28 = Width;
  v29 = 3;
  sub_1D7CB3AB0();
  sub_1D7D318BC();
  return (*(v24 + 8))(v7, v14);
}

unint64_t sub_1D7CB3A08()
{
  result = qword_1EC9E81A0;
  if (!qword_1EC9E81A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E81A0);
  }

  return result;
}

unint64_t sub_1D7CB3A5C()
{
  result = qword_1EC9E81A8;
  if (!qword_1EC9E81A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E81A8);
  }

  return result;
}

unint64_t sub_1D7CB3AB0()
{
  result = qword_1EC9E81B0;
  if (!qword_1EC9E81B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E81B0);
  }

  return result;
}

uint64_t PDFReplicaPageLink.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  sub_1D7CB4F70(0, &qword_1EC9E81B8, sub_1D7CB3A08, &type metadata for PDFReplicaPageLink.LinkKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v19.i8[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7CB3A08();
  sub_1D7D31AFC();
  if (!v2)
  {
    v10 = v6;
    v11 = v21;
    v24 = 0;
    sub_1D7CB3D74();
    sub_1D7D317DC();
    v12 = v22;
    v24 = 3;
    sub_1D7CB3DC8();
    sub_1D7D317DC();
    v19 = v23;
    v20 = v22;
    if (v12)
    {
      v13 = 2;
    }

    else
    {
      v13 = 1;
    }

    LOBYTE(v22) = v13;
    v15 = sub_1D7D317AC();
    v17 = v16;
    (*(v10 + 8))(v9, v5);
    *v11 = v15;
    *(v11 + 8) = v17;
    v18 = vextq_s8(v19, v19, 8uLL);
    *(v11 + 16) = v20;
    *(v11 + 32) = v18;
    *(v11 + 48) = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1D7CB3D74()
{
  result = qword_1EC9E81C0;
  if (!qword_1EC9E81C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E81C0);
  }

  return result;
}

unint64_t sub_1D7CB3DC8()
{
  result = qword_1EC9E81C8;
  if (!qword_1EC9E81C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E81C8);
  }

  return result;
}

uint64_t sub_1D7CB3E1C(void *a1, double a2, double a3, double a4, double a5)
{
  sub_1D7CB4F70(0, &qword_1EC9E81F8, sub_1D7CB4AE4, &type metadata for PDFReplicaPageLink.TapRectangle.CodingKeys, MEMORY[0x1E69E6F58]);
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v14);
  v16 = &v18 - v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7CB4AE4();
  sub_1D7D31B1C();
  v19 = a2;
  HIBYTE(v18) = 0;
  sub_1D7CB4B38();
  sub_1D7D318BC();
  if (!v5)
  {
    v19 = a3;
    HIBYTE(v18) = 1;
    sub_1D7D318BC();
    v19 = a4;
    HIBYTE(v18) = 2;
    sub_1D7D318BC();
    v19 = a5;
    HIBYTE(v18) = 3;
    sub_1D7D318BC();
  }

  return (*(v13 + 8))(v16, v12);
}

uint64_t sub_1D7CB40B8()
{
  sub_1D7D31A8C();
  sub_1D7D303FC();

  return sub_1D7D31ABC();
}

uint64_t sub_1D7CB4170(uint64_t a1)
{
  sub_1D7D303FC();
}

uint64_t sub_1D7CB4214(uint64_t a1)
{
  sub_1D7D31A8C();
  sub_1D7D303FC();

  return sub_1D7D31ABC();
}

unint64_t sub_1D7CB42C8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D7CB4A44(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1D7CB42F8(uint64_t *a1@<X8>)
{
  v2 = 0xE400000000000000;
  v3 = 1701869940;
  v4 = 0xE300000000000000;
  v5 = 5001813;
  if (*v1 != 2)
  {
    v5 = 1952671090;
    v4 = 0xE400000000000000;
  }

  if (*v1)
  {
    v3 = 0x6E65644965676170;
    v2 = 0xEE00726569666974;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_1D7CB436C()
{
  v1 = 1701869940;
  v2 = 5001813;
  if (*v0 != 2)
  {
    v2 = 1952671090;
  }

  if (*v0)
  {
    v1 = 0x6E65644965676170;
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

unint64_t sub_1D7CB43DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D7CB4A44(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D7CB4404(uint64_t a1)
{
  v2 = sub_1D7CB3A08();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D7CB4440(uint64_t a1)
{
  v2 = sub_1D7CB3A08();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1D7CB4480()
{
  result = qword_1EC9E81D0;
  if (!qword_1EC9E81D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E81D0);
  }

  return result;
}

uint64_t sub_1D7CB44D4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 5001813;
  }

  else
  {
    v3 = 1701273968;
  }

  if (v2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE300000000000000;
  }

  if (*a2)
  {
    v5 = 5001813;
  }

  else
  {
    v5 = 1701273968;
  }

  if (*a2)
  {
    v6 = 0xE300000000000000;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1D7D3197C();
  }

  return v8 & 1;
}

uint64_t sub_1D7CB456C()
{
  sub_1D7D31A8C();
  sub_1D7D303FC();

  return sub_1D7D31ABC();
}

uint64_t sub_1D7CB45E0(uint64_t a1)
{
  sub_1D7D303FC();
}

uint64_t sub_1D7CB4640(uint64_t a1)
{
  sub_1D7D31A8C();
  sub_1D7D303FC();

  return sub_1D7D31ABC();
}

uint64_t sub_1D7CB46B0@<X0>(char *a2@<X8>)
{
  v3 = sub_1D7D316EC();

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

void sub_1D7CB4710(uint64_t *a1@<X8>)
{
  v2 = 1701273968;
  if (*v1)
  {
    v2 = 5001813;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xE300000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

unint64_t sub_1D7CB4744()
{
  result = qword_1EC9E81D8;
  if (!qword_1EC9E81D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E81D8);
  }

  return result;
}

uint64_t sub_1D7CB4848()
{
  v1 = 120;
  v2 = 0x746867696568;
  if (*v0 != 2)
  {
    v2 = 0x6874646977;
  }

  if (*v0)
  {
    v1 = 121;
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

uint64_t sub_1D7CB48A4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D7CB4B8C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D7CB48CC(uint64_t a1)
{
  v2 = sub_1D7CB4AE4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D7CB4908(uint64_t a1)
{
  v2 = sub_1D7CB4AE4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1D7CB4944(double *a1@<X8>, void *a2@<X0>)
{
  v4 = sub_1D7CB4CD4(a2);
  if (!v2)
  {
    *a1 = v4;
    *(a1 + 1) = v5;
    *(a1 + 2) = v6;
    *(a1 + 3) = v7;
  }
}

unint64_t sub_1D7CB4998()
{
  result = qword_1EC9E81E0;
  if (!qword_1EC9E81E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E81E0);
  }

  return result;
}

unint64_t sub_1D7CB49F0()
{
  result = qword_1EC9E81E8;
  if (!qword_1EC9E81E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E81E8);
  }

  return result;
}

unint64_t sub_1D7CB4A44(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D7D316EC();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1D7CB4A90()
{
  result = qword_1EC9E81F0;
  if (!qword_1EC9E81F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E81F0);
  }

  return result;
}

unint64_t sub_1D7CB4AE4()
{
  result = qword_1EC9E8200;
  if (!qword_1EC9E8200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E8200);
  }

  return result;
}

unint64_t sub_1D7CB4B38()
{
  result = qword_1EC9E8208;
  if (!qword_1EC9E8208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E8208);
  }

  return result;
}

uint64_t sub_1D7CB4B8C(uint64_t a1, uint64_t a2)
{
  if (a1 == 120 && a2 == 0xE100000000000000 || (sub_1D7D3197C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 121 && a2 == 0xE100000000000000 || (sub_1D7D3197C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746867696568 && a2 == 0xE600000000000000 || (sub_1D7D3197C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6874646977 && a2 == 0xE500000000000000)
  {

    return 3;
  }

  else
  {
    v5 = sub_1D7D3197C();

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

double sub_1D7CB4CD4(void *a1)
{
  sub_1D7CB4F70(0, &qword_1EC9E8210, sub_1D7CB4AE4, &type metadata for PDFReplicaPageLink.TapRectangle.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7CB4AE4();
  sub_1D7D31AFC();
  if (!v1)
  {
    v12 = 0;
    sub_1D7CB4FD8();
    sub_1D7D317DC();
    v2 = v13;
    v12 = 1;
    sub_1D7D317DC();
    v12 = 2;
    sub_1D7D317DC();
    v12 = 3;
    sub_1D7D317DC();
    (*(v6 + 8))(v9, v5);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v2;
}

void sub_1D7CB4F70(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_1D7CB4FD8()
{
  result = qword_1EC9E8218;
  if (!qword_1EC9E8218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E8218);
  }

  return result;
}

unint64_t sub_1D7CB5040()
{
  result = qword_1EC9E8220;
  if (!qword_1EC9E8220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E8220);
  }

  return result;
}

unint64_t sub_1D7CB5098()
{
  result = qword_1EC9E8228;
  if (!qword_1EC9E8228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E8228);
  }

  return result;
}

unint64_t sub_1D7CB50F0()
{
  result = qword_1EC9E8230;
  if (!qword_1EC9E8230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E8230);
  }

  return result;
}

uint64_t sub_1D7CB514C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = *a1 == 0xD000000000000023 && 0x80000001D7D715C0 == v3;
  if (v5 || (sub_1D7D3197C() & 1) != 0)
  {
    v6 = MEMORY[0x1E69B6088];
LABEL_7:

    goto LABEL_8;
  }

  if (v4 == 0xD000000000000015 && 0x80000001D7D715F0 == v3 || (sub_1D7D3197C() & 1) != 0)
  {
    v6 = MEMORY[0x1E69B6070];
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000027 && 0x80000001D7D71590 == v3 || (sub_1D7D3197C() & 1) != 0)
  {
    v6 = MEMORY[0x1E69B6068];
    goto LABEL_7;
  }

  v6 = MEMORY[0x1E69B6080];
  if (v4 == 0xD000000000000010 && 0x80000001D7D71570 == v3)
  {
    goto LABEL_7;
  }

  v11 = sub_1D7D3197C();

  if ((v11 & 1) == 0)
  {
    v6 = MEMORY[0x1E69B6078];
  }

LABEL_8:
  v7 = *v6;
  v8 = sub_1D7D2EEFC();
  v9 = *(*(v8 - 8) + 104);

  return v9(a2, v7, v8);
}

uint64_t ConcernModel.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ConcernModel.identifier.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ConcernModel.hashValue.getter()
{
  sub_1D7D31A8C();
  sub_1D7CB5698();
  sub_1D7D302CC();
  return sub_1D7D31ABC();
}

uint64_t sub_1D7CB543C(uint64_t a1, uint64_t a2)
{
  sub_1D7D31A8C();
  sub_1D7D302CC();
  return sub_1D7D31ABC();
}

uint64_t sub_1D7CB54B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D7CB56F0();

  return MEMORY[0x1EEE45140](a1, a2, v4);
}

uint64_t sub_1D7CB5504(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D7D31A8C();
  sub_1D7D302CC();
  return sub_1D7D31ABC();
}

uint64_t _s12NewsArticles12ConcernModelV2eeoiySbAC_ACtFZ_0(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = a2[2];
  v8 = a2[3];
  v10 = a2[4];
  v9 = a2[5];
  v11 = a2[6];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_1D7D3197C() & 1) == 0 || (v2 != v7 || v4 != v8) && (sub_1D7D3197C() & 1) == 0 || (sub_1D7A5AA10(v3, v10) & 1) == 0)
  {
    return 0;
  }

  if (v5 == v9 && v6 == v11)
  {
    return 1;
  }

  return sub_1D7D3197C();
}

unint64_t sub_1D7CB5698()
{
  result = qword_1EC9E8238;
  if (!qword_1EC9E8238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E8238);
  }

  return result;
}

unint64_t sub_1D7CB56F0()
{
  result = qword_1EC9E8240;
  if (!qword_1EC9E8240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E8240);
  }

  return result;
}

unint64_t sub_1D7CB5748()
{
  result = qword_1EC9E8248;
  if (!qword_1EC9E8248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E8248);
  }

  return result;
}

unint64_t sub_1D7CB57A4()
{
  result = qword_1EC9E8250;
  if (!qword_1EC9E8250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E8250);
  }

  return result;
}

unint64_t sub_1D7CB57FC()
{
  result = qword_1EC9E8258;
  if (!qword_1EC9E8258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E8258);
  }

  return result;
}

uint64_t PDFReplicaViewerFeatureAction.hashValue.getter()
{
  sub_1D7D31A8C();
  MEMORY[0x1DA70F500](0);
  return sub_1D7D31ABC();
}

unint64_t sub_1D7CB58D8()
{
  result = qword_1EC9E8260;
  if (!qword_1EC9E8260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E8260);
  }

  return result;
}

uint64_t type metadata accessor for EndOfRecipeRouteModel(uint64_t a1)
{
  result = qword_1EC9E8268;
  if (!qword_1EC9E8268)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D7CB599C(uint64_t a1)
{
  sub_1D7B5A7C0(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for RecipeBlueprintRouteModel(319);
    if (v2 <= 0x3F)
    {
      sub_1D7CB5A24();
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_1D7CB5A24()
{
  if (!qword_1EC9E8278)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC9E8278);
    }
  }
}

uint64_t sub_1D7CB5D6C(uint64_t a1)
{
  sub_1D7D294BC();
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  *(v3 + 24) = v1;

  v4 = sub_1D7D2934C();
  sub_1D7D2F05C();
  sub_1D7D293BC();

  v5 = sub_1D7D2934C();
  sub_1D7A18F80(0);
  sub_1D7D293BC();

  v6 = sub_1D7D2934C();
  v7 = sub_1D7D2943C();

  return v7;
}

uint64_t sub_1D7CB5F1C()
{
  v1 = v0;
  v2 = type metadata accessor for EndOfArticleFeedServiceConfig(0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = (&v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D7D2E5FC();
  v6 = *v5;
  swift_unknownObjectRetain();
  sub_1D7CB8FDC(v5, type metadata accessor for EndOfArticleFeedServiceConfig);
  if (([v6 respondsToSelector_] & 1) != 0 && (v7 = objc_msgSend(v6, sel_parentIssue)) != 0)
  {
    v8 = v7;
    v9 = (v1 + OBJC_IVAR____TtC12NewsArticles41MoreFromIssueEndOfArticleFeedGroupEmitter_issueManager);
    v10 = *(v1 + OBJC_IVAR____TtC12NewsArticles41MoreFromIssueEndOfArticleFeedGroupEmitter_issueManager + 24);
    v11 = v9[4];
    __swift_project_boxed_opaque_existential_1(v9, v10);
    v12 = v8;
    v13 = [v12 identifier];
    v14 = sub_1D7D3034C();
    v16 = v15;

    v17 = (*(v11 + 16))(v14, v16, v10, v11);
    swift_unknownObjectRelease();
  }

  else
  {
    v17 = sub_1D7D2E4EC();
    sub_1D7CB8F2C(&qword_1EE0BF940, MEMORY[0x1E69B5AE8], MEMORY[0x1E69B5AF0]);
    swift_allocError();
    (*(*(v17 - 8) + 104))(v18, *MEMORY[0x1E69B5AD8], v17);
    swift_willThrow();
    swift_unknownObjectRelease();
  }

  return v17;
}

int64_t sub_1D7CB6154(__int128 *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v139 = a4;
  v152 = a2;
  v6 = MEMORY[0x1E69E6720];
  sub_1D7CB8A64(0, &unk_1EE0BF640, MEMORY[0x1E69B6380], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v148 = &v129 - v9;
  sub_1D7CB8A64(0, &qword_1EE0BF5C0, MEMORY[0x1E69B6570], v6);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v142 = &v129 - v12;
  sub_1D7CB8A64(0, &qword_1EE0BF988, sub_1D7990AB0, v6);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v138 = &v129 - v15;
  v16 = sub_1D7D2F6AC();
  v146 = *(v16 - 8);
  v147 = v16;
  MEMORY[0x1EEE9AC00](v16, v17);
  v145 = &v129 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7CB8A64(0, &unk_1EE0BF530, sub_1D7A78030, v6);
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v137 = &v129 - v21;
  v22 = type metadata accessor for MoreFromIssueEndOfArticleFeedGroupConfigData(0);
  MEMORY[0x1EEE9AC00](v22 - 8, v23);
  v136 = &v129 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = sub_1D7D2F06C();
  v165 = *(v144 - 1);
  MEMORY[0x1EEE9AC00](v144, v25);
  v143 = &v129 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7CB8A64(0, &unk_1EE0BFB00, MEMORY[0x1E69B40B8], v6);
  MEMORY[0x1EEE9AC00](v27 - 8, v28);
  v149 = &v129 - v29;
  v141 = sub_1D7D2F31C();
  v140 = *(v141 - 8);
  MEMORY[0x1EEE9AC00](v141, v30);
  v150 = &v129 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = sub_1D7D2FC7C();
  v154 = *(v135 - 8);
  MEMORY[0x1EEE9AC00](v135, v32);
  v34 = &v129 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_1D7D2FD3C();
  v155 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35, v36);
  v38 = &v129 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_1D7D2EC6C();
  v151 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39, v40);
  v42 = &v129 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = type metadata accessor for EndOfArticleFeedServiceConfig(0);
  MEMORY[0x1EEE9AC00](v43 - 8, v44);
  v46 = (&v129 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v47, v48);
  v50 = (&v129 - v49);
  v51 = *(a1 + 16);
  v163 = *a1;
  v164 = v51;
  v52 = v162;
  v53 = sub_1D7CB754C(&v163);
  if (!v52)
  {
    v161 = v50;
    v132 = v42;
    v134 = v39;
    v133 = v46;
    v130 = v34;
    v131 = 0;
    v162 = v38;
    v153 = v35;
    *&v163 = MEMORY[0x1E69E7CC0];
    v159 = v53;
    if (v53 >> 62)
    {
      goto LABEL_77;
    }

    v54 = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (1)
    {
      v55 = v165;
      v56 = v162;
      v57 = v151;
      v58 = v134;
      v160 = a3;
      if (v54)
      {
        v59 = 0;
        v157 = (v53 & 0xFFFFFFFFFFFFFF8);
        v158 = v53 & 0xC000000000000001;
        v60 = v161;
        v156 = v54;
        while (1)
        {
          if (v158)
          {
            v61 = MEMORY[0x1DA70EF00](v59, v53);
            v62 = v59 + 1;
            if (__OFADD__(v59, 1))
            {
LABEL_18:
              __break(1u);
LABEL_19:
              v73 = v163;
              v57 = v151;
              v58 = v134;
              goto LABEL_21;
            }
          }

          else
          {
            if (v59 >= v157[2])
            {
              __break(1u);
              goto LABEL_76;
            }

            v61 = *(v53 + 8 * v59 + 32);
            swift_unknownObjectRetain();
            v62 = v59 + 1;
            if (__OFADD__(v59, 1))
            {
              goto LABEL_18;
            }
          }

          v63 = [v61 identifier];
          v64 = sub_1D7D3034C();
          v66 = v65;

          sub_1D7D2E5FC();
          v67 = *v60;
          swift_unknownObjectRetain();
          sub_1D7CB8FDC(v60, type metadata accessor for EndOfArticleFeedServiceConfig);
          v68 = [v67 &off_1E84EC678];
          swift_unknownObjectRelease();
          v69 = sub_1D7D3034C();
          v71 = v70;

          if (v64 == v69 && v66 == v71)
          {
            swift_unknownObjectRelease();
          }

          else
          {
            v72 = sub_1D7D3197C();

            if (v72)
            {
              swift_unknownObjectRelease();
            }

            else
            {
              sub_1D7D3153C();
              sub_1D7D3157C();
              sub_1D7D3158C();
              sub_1D7D3154C();
            }
          }

          a3 = v160;
          v60 = v161;
          v56 = v162;
          ++v59;
          v55 = v165;
          v53 = v159;
          if (v62 == v156)
          {
            goto LABEL_19;
          }
        }
      }

      v73 = MEMORY[0x1E69E7CC0];
LABEL_21:

      type metadata accessor for MoreFromIssueEndOfArticleFeedGroupKnobs(0);

      v74 = v132;
      sub_1D7D2E61C();
      sub_1D7D2E70C();
      (*(v57 + 8))(v74, v58);
      v75 = v163;
      v76 = v73 < 0 || (v73 & 0x4000000000000000) != 0;
      if (v76)
      {
        v42 = sub_1D7D3167C();
      }

      else
      {
        v42 = *(v73 + 16);
      }

      v77 = v133;
      if (v42 < v75 || (sub_1D7D2E5FC(), v78 = *v77, swift_unknownObjectRetain(), sub_1D7CB8FDC(v77, type metadata accessor for EndOfArticleFeedServiceConfig), v79 = [v78 sourceChannel], swift_unknownObjectRelease(), (v157 = v79) == 0))
      {

        v84 = sub_1D7D2E4EC();
        sub_1D7CB8F2C(&qword_1EE0BF940, MEMORY[0x1E69B5AE8], MEMORY[0x1E69B5AF0]);
        swift_allocError();
        *v85 = v75;
        v85[1] = v42;
        (*(*(v84 - 8) + 104))(v85, *MEMORY[0x1E69B5AE0], v84);
        swift_willThrow();
        return v42;
      }

      if (v75 < 0)
      {
        break;
      }

      if (v76)
      {
        v80 = sub_1D7D3167C();
        result = sub_1D7D3167C();
        if (result < 0)
        {
          goto LABEL_84;
        }

        if (v80 >= v75)
        {
          v82 = v75;
        }

        else
        {
          v82 = v80;
        }

        if (v80 < 0)
        {
          v82 = v75;
        }

        if (v75)
        {
          v42 = v82;
        }

        else
        {
          v42 = 0;
        }

        v83 = sub_1D7D3167C();
      }

      else
      {
        v83 = *(v73 + 16);
        if (v83 >= v75)
        {
          v86 = v75;
        }

        else
        {
          v86 = *(v73 + 16);
        }

        if (v75)
        {
          v42 = v86;
        }

        else
        {
          v42 = 0;
        }
      }

      if (v83 < v42)
      {
        goto LABEL_80;
      }

      if ((v73 & 0xC000000000000001) != 0 && v42)
      {
        sub_1D799621C();

        v87 = 0;
        do
        {
          v88 = v87 + 1;
          sub_1D7D3147C();
          v87 = v88;
        }

        while (v42 != v88);
      }

      else
      {
      }

      v156 = v73;
      if (v76)
      {
        v89 = sub_1D7D3168C();
        v75 = v90;
        v92 = v91;
        v94 = v93;

        v42 = (v94 >> 1);
      }

      else
      {
        v92 = 0;
        v75 = v73 + 32;
        v89 = v73;
      }

      v95 = v154;
      v73 = &v42[-v92];
      if (__OFSUB__(v42, v92))
      {
        goto LABEL_81;
      }

      if (!v73)
      {
        swift_unknownObjectRelease();
        v103 = v153;
        v104 = v155;
LABEL_70:
        v105 = MEMORY[0x1E69E7CC0];
        sub_1D7A1912C(MEMORY[0x1E69E7CC0]);
        sub_1D7A19144(v105);
        sub_1D7A1915C(v105);
        sub_1D7D2FD2C();
        sub_1D7A782C0(0, &qword_1EE0BE7F0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
        v106 = swift_allocObject();
        v161 = v106;
        *(v106 + 16) = xmmword_1D7D3C670;
        *(v106 + 32) = v157;
        sub_1D7CB8A64(0, &qword_1EE0BE8A0, MEMORY[0x1E69B66E0], MEMORY[0x1E69E6F90]);
        v107 = (*(v104 + 80) + 32) & ~*(v104 + 80);
        v108 = swift_allocObject();
        *(v108 + 16) = xmmword_1D7D3B4D0;
        (*(v104 + 16))(v108 + v107, v56, v103);
        v158 = sub_1D7D2CE6C();
        v109 = *(v158 - 8);
        v154 = *(v109 + 56);
        v165 = v109 + 56;
        (v154)(v149, 1, 1, v158);
        swift_unknownObjectRetain();
        v159 = sub_1D7A191A4(v105);
        sub_1D7A191A4(v105);
        sub_1D7A191BC(v105);
        sub_1D7A191D4(v105);
        sub_1D7A192E8(v105);
        sub_1D7A19300(v105);
        sub_1D7A19414(v105);
        sub_1D7D2F30C();
        v42 = *(v152 + OBJC_IVAR____TtC12NewsArticles41MoreFromIssueEndOfArticleFeedGroupEmitter_formatService + 24);
        v161 = *(v152 + OBJC_IVAR____TtC12NewsArticles41MoreFromIssueEndOfArticleFeedGroupEmitter_formatService + 32);
        v159 = __swift_project_boxed_opaque_existential_1((v152 + OBJC_IVAR____TtC12NewsArticles41MoreFromIssueEndOfArticleFeedGroupEmitter_formatService), v42);
        sub_1D798F8C0(0);
        v110 = v136;
        sub_1D7D2DF2C();
        v111 = [v157 identifier];
        sub_1D7D3034C();

        v112 = v149;
        (v154)(v149, 1, 1, v158);
        sub_1D7A78030(0);
        v114 = v137;
        (*(*(v113 - 8) + 56))(v137, 1, 1, v113);
        v75 = v143;
        sub_1D7D2F01C();

        sub_1D7CB8EBC(v114, &unk_1EE0BF530, sub_1D7A78030);
        sub_1D7CB8EBC(v112, &unk_1EE0BFB00, MEMORY[0x1E69B40B8]);
        v73 = *(v55 + 8);
        a3 = v144;
        v165 = v55 + 8;
        (v73)(v110, v144);
        v115 = OBJC_IVAR____TtC12NewsArticles41MoreFromIssueEndOfArticleFeedGroupEmitter_knobs;
        sub_1D7990AB0(0);
        v117 = v116;
        v118 = *(v116 - 8);
        v119 = v138;
        (*(v118 + 16))(v138, v139 + v115, v116);
        (*(v118 + 56))(v119, 0, 1, v117);
        v120 = sub_1D7D2FAFC();
        (*(*(v120 - 8) + 56))(v142, 1, 1, v120);
        LOBYTE(v163) = 4;
        sub_1D798FB8C(0, &unk_1EE0BF580, type metadata accessor for EndOfArticleFeedServiceConfig, sub_1D7990AF8, MEMORY[0x1E69B65B8]);
        swift_allocObject();

        sub_1D7D2FB8C();
        v121 = sub_1D7D2F59C();
        (*(*(v121 - 8) + 56))(v148, 1, 1, v121);
        v122 = qword_1EE0CA130;
        *MEMORY[0x1E69B5080];
        if (v122 == -1)
        {
LABEL_71:
          qword_1EE0CA138;
          v123 = v145;
          sub_1D7D2F69C();
          v124 = v150;
          v125 = v131;
          v126 = sub_1D7D2F36C();
          v127 = v146;
          v128 = v141;
          if (!v125)
          {
            v42 = v126;
          }

          swift_unknownObjectRelease();
          (*(v127 + 8))(v123, v147);
          (v73)(v75, a3);
          (*(v140 + 8))(v124, v128);
          (*(v155 + 8))(v162, v153);
          return v42;
        }

LABEL_82:
        swift_once();
        goto LABEL_71;
      }

      v151 = v89;
      *&v163 = MEMORY[0x1E69E7CC0];
      result = sub_1D7A5BFDC(0, v73 & ~(v73 >> 63), 0);
      if (v73 < 0)
      {
        __break(1u);
LABEL_84:
        __break(1u);
        return result;
      }

      v96 = v163;
      LODWORD(v161) = *MEMORY[0x1E69B6698];
      v158 = v95 + 32;
      v159 = (v95 + 104);
      if (v42 <= v92)
      {
        v97 = v92;
      }

      else
      {
        v97 = v42;
      }

      v98 = &v97[-v92];
      v99 = (v75 + 8 * v92);
      v100 = v135;
      a3 = v130;
      while (v98)
      {
        *a3 = *v99;
        (*v159)(a3, v161, v100);
        *&v163 = v96;
        v102 = *(v96 + 16);
        v101 = *(v96 + 24);
        swift_unknownObjectRetain();
        if (v102 >= v101 >> 1)
        {
          sub_1D7A5BFDC((v101 > 1), v102 + 1, 1);
          v96 = v163;
        }

        *(v96 + 16) = v102 + 1;
        (*(v154 + 32))(v96 + ((*(v154 + 80) + 32) & ~*(v154 + 80)) + *(v154 + 72) * v102, a3, v100);
        --v98;
        ++v99;
        --v73;
        v103 = v153;
        v104 = v155;
        if (!v73)
        {
          swift_unknownObjectRelease();
          v55 = v165;
          v56 = v162;
          goto LABEL_70;
        }
      }

LABEL_76:
      __break(1u);
LABEL_77:
      v54 = sub_1D7D3167C();
      v53 = v159;
    }

    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

  return v42;
}

uint64_t sub_1D7CB754C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v2 = sub_1D7D2E4EC();
    sub_1D7CB8F2C(&qword_1EE0BF940, MEMORY[0x1E69B5AE8], MEMORY[0x1E69B5AF0]);
    swift_allocError();
    *v3 = 0xD000000000000028;
    v3[1] = 0x80000001D7D7E3D0;
    (*(*(v2 - 8) + 104))(v3, *MEMORY[0x1E69B5AC8], v2);
    return swift_willThrow();
  }

  else
  {
    v6 = *a1;
    v5 = *(a1 + 8);
    v13 = MEMORY[0x1E69E7CC0];
    v11 = MEMORY[0x1E69E7CC0];
    v12 = MEMORY[0x1E69E7CC0];

    sub_1D79ECEAC(v6, v5);

    sub_1D7CB8AC8(v7, v1, &v13, &v12, &v11);

    v10 = v12;

    sub_1D79E3420(v8);

    sub_1D79E3420(v9);
    sub_1D79ECEE4(v6, v5);

    return v10;
  }
}

uint64_t sub_1D7CB7714(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D7A18F80(0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for EndOfArticleFeedGroup(0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = (v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = sub_1D7D2F03C();
  if (v13 >> 62)
  {
    v16 = sub_1D7D3167C();

    if (v16)
    {
      goto LABEL_3;
    }

LABEL_5:
    v15 = sub_1D7D2E4EC();
    sub_1D7CB8F2C(&qword_1EE0BF940, MEMORY[0x1E69B5AE8], MEMORY[0x1E69B5AF0]);
    swift_allocError();
    (*(*(v15 - 8) + 104))(v17, *MEMORY[0x1E69B5AD0], v15);
    swift_willThrow();
    return v15;
  }

  v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (!v14)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_1D7CB7994(a1, a3, v12);
  sub_1D7CB8F74(v12, v8, type metadata accessor for EndOfArticleFeedGroup);
  swift_storeEnumTagMultiPayload();
  sub_1D7CB8A64(0, &qword_1EE0C0288, sub_1D7A18F80, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  v15 = sub_1D7D2940C();
  sub_1D7CB8FDC(v12, type metadata accessor for EndOfArticleFeedGroup);
  return v15;
}

uint64_t sub_1D7CB7994@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v68 = a3;
  v69 = a2;
  v4 = sub_1D7D2EC6C();
  v64 = *(v4 - 8);
  v65 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v63 = v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D7D2EA6C();
  v66 = *(v7 - 8);
  v67 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v62 = v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for EndOfArticleFeedServiceConfig(0);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v61 = (v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = sub_1D7D2836C();
  v59 = *(v13 - 8);
  v60 = v13;
  MEMORY[0x1EEE9AC00](v13, v14);
  v58 = v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7CB8A64(0, &qword_1EE0BF9B0, MEMORY[0x1E69B59D8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v19 = v54 - v18;
  v20 = sub_1D7D2E73C();
  MEMORY[0x1EEE9AC00](v20 - 8, v21);
  MEMORY[0x1EEE9AC00](v22, v23);
  v24 = sub_1D7D2F05C();
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24, v26);
  v28 = v54 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_1D7D2DE2C();
  v29 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57, v30);
  v56 = v54 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x1EEE9AC00](v32, v33);
  v55 = v54 - v35;
  (*(v25 + 16))(v28, a1, v24, v34);
  sub_1D798F8C0(0);
  v54[1] = sub_1D7D2DF0C();
  sub_1D7D2DF1C();
  sub_1D7D2DF1C();
  sub_1D7990AB0(0);
  sub_1D7D2E35C();
  sub_1D7D2E34C();
  v36 = sub_1D7D2E1CC();
  (*(*(v36 - 8) + 56))(v19, 1, 1, v36);
  v37 = v55;
  sub_1D7D2DDDC();
  v70 = 0;
  v71 = 0xE000000000000000;
  sub_1D7D3145C();

  v70 = 0x6D6F724665726F4DLL;
  v71 = 0xEF3A3A6575737349;
  v38 = v58;
  sub_1D7D2835C();
  v39 = sub_1D7D2834C();
  v41 = v40;
  (*(v59 + 8))(v38, v60);
  MEMORY[0x1DA70DE90](v39, v41);

  v42 = v71;
  v60 = v70;
  v44 = v56;
  v43 = v57;
  v45 = v37;
  (*(v29 + 16))(v56, v37, v57);
  v46 = v61;
  sub_1D7D2E5FC();
  v47 = *v46;
  swift_unknownObjectRetain();
  sub_1D7CB8FDC(v46, type metadata accessor for EndOfArticleFeedServiceConfig);
  v48 = [v47 sourceChannel];
  swift_unknownObjectRelease();
  type metadata accessor for MoreFromIssueEndOfArticleFeedGroupKnobs(0);
  v49 = v63;
  sub_1D7D2E61C();
  v50 = v62;
  sub_1D7D2E70C();
  (*(v64 + 8))(v49, v65);
  (*(v29 + 8))(v45, v43);
  v51 = v68;
  *v68 = v60;
  v51[1] = v42;
  v52 = type metadata accessor for MoreFromIssueEndOfArticleFeedGroup(0);
  (*(v29 + 32))(v51 + v52[5], v44, v43);
  *(v51 + v52[6]) = v48;
  (*(v66 + 32))(v51 + v52[7], v50, v67);
  type metadata accessor for EndOfArticleFeedGroup(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1D7CB80BC(uint64_t a1)
{
  sub_1D7A18F80(0);
  v13 = v2;
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = (&v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_1EE0CA130 != -1)
  {
    swift_once();
  }

  v6 = qword_1EE0CA138;
  v7 = sub_1D7D30C4C();
  sub_1D79F3AB0(0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1D7D3B4D0;
  v14 = 0;
  v15 = 0xE000000000000000;
  v16 = a1;
  sub_1D798F168(0, &qword_1EE0BE7E0, MEMORY[0x1E69E7280]);
  sub_1D7D315DC();
  v10 = v14;
  v9 = v15;
  *(v8 + 56) = MEMORY[0x1E69E6158];
  *(v8 + 64) = sub_1D79D6AE0();
  *(v8 + 32) = v10;
  *(v8 + 40) = v9;
  sub_1D7D29AAC("Failed to resolve the more to read group, error=%{public}@", 58, 2, &dword_1D7987000, v6, v7, v8, v13);

  v14 = 0;
  v15 = 0xE000000000000000;
  sub_1D7D3145C();
  MEMORY[0x1DA70DE90](0xD00000000000002CLL, 0x80000001D7D6D310);
  v16 = a1;
  sub_1D7D315DC();
  v11 = v15;
  *v5 = v14;
  v5[1] = v11;
  swift_storeEnumTagMultiPayload();
  sub_1D7CB8A64(0, &qword_1EE0C0288, sub_1D7A18F80, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  return sub_1D7D2940C();
}

uint64_t sub_1D7CB8310()
{
  v1 = OBJC_IVAR____TtC12NewsArticles41MoreFromIssueEndOfArticleFeedGroupEmitter_config;
  sub_1D798F8C0(0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1D7CB8FDC(v0 + OBJC_IVAR____TtC12NewsArticles41MoreFromIssueEndOfArticleFeedGroupEmitter_knobs, type metadata accessor for MoreFromIssueEndOfArticleFeedGroupKnobs);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC12NewsArticles41MoreFromIssueEndOfArticleFeedGroupEmitter_formatService));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC12NewsArticles41MoreFromIssueEndOfArticleFeedGroupEmitter_issueManager));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC12NewsArticles41MoreFromIssueEndOfArticleFeedGroupEmitter_historyService));

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for MoreFromIssueEndOfArticleFeedGroupEmitter(uint64_t a1)
{
  result = qword_1EE0BB7E0;
  if (!qword_1EE0BB7E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D7CB8454(uint64_t a1)
{
  sub_1D798F8C0(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for MoreFromIssueEndOfArticleFeedGroupKnobs(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_1D7CB8550@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC12NewsArticles41MoreFromIssueEndOfArticleFeedGroupEmitter_config;
  sub_1D798F8C0(0);
  (*(*(v5 - 8) + 16))(a1, v3 + v4, v5);
  type metadata accessor for EndOfArticleFeedGroupConfig(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1D7CB85E4@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC12NewsArticles41MoreFromIssueEndOfArticleFeedGroupEmitter_knobs;
  a1[3] = type metadata accessor for MoreFromIssueEndOfArticleFeedGroupKnobs(0);
  a1[4] = sub_1D7CB8F2C(&qword_1EE0C12D0, type metadata accessor for MoreFromIssueEndOfArticleFeedGroupKnobs, &unk_1D7D47D50);
  a1[5] = sub_1D7CB8F2C(&qword_1EC9E60E8, type metadata accessor for MoreFromIssueEndOfArticleFeedGroupKnobs, &unk_1D7D47D28);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_1D7CB8F74(v3 + v4, boxed_opaque_existential_1, type metadata accessor for MoreFromIssueEndOfArticleFeedGroupKnobs);
}

uint64_t sub_1D7CB86B0@<X0>(uint64_t *a1@<X8>)
{
  sub_1D7CB8A64(0, &qword_1EE0BE860, sub_1D7A19AB4, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7D3B4D0;
  *(inited + 32) = 0x696669746E656469;
  *(inited + 40) = 0xEA00000000007265;
  sub_1D798F8C0(0);
  v3 = sub_1D7D2DEFC();
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = v3;
  *(inited + 56) = v4;
  sub_1D7A50C38(inited);
  swift_setDeallocating();
  sub_1D7CB8FDC(inited + 32, sub_1D7A19AB4);
  sub_1D7CB8A64(0, &unk_1EE0C03C0, type metadata accessor for MoreFromEndOfArticleFeedGroupEmitter, MEMORY[0x1E69D65D0]);
  a1[3] = v5;
  a1[4] = sub_1D7A89EA0();
  __swift_allocate_boxed_opaque_existential_1(a1);
  type metadata accessor for MoreFromEndOfArticleFeedGroupEmitter(0);
  return sub_1D7D28FEC();
}

uint64_t sub_1D7CB8840(uint64_t a1)
{
  v2 = sub_1D7CB8F2C(&qword_1EE0BB800, type metadata accessor for MoreFromIssueEndOfArticleFeedGroupEmitter, &unk_1D7D5FB88);

  return MEMORY[0x1EEE44678](a1, v2);
}

void sub_1D7CB8A64(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D7CB8AC8(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v30 = a4;
  v5 = *(a1 + 16);
  if (v5)
  {
    v44 = (a2 + OBJC_IVAR____TtC12NewsArticles41MoreFromIssueEndOfArticleFeedGroupEmitter_historyService);
    v6 = (a1 + 32);
    v7 = &selRef_addTarget_action_;
    v8 = &off_1E84EC000;
    do
    {
      v9 = v6[7];
      v10 = v6[5];
      v39 = v6[6];
      v40 = v9;
      v11 = v6[7];
      v41[0] = v6[8];
      *(v41 + 9) = *(v6 + 137);
      v12 = v6[3];
      v13 = v6[1];
      v35 = v6[2];
      v36 = v12;
      v14 = v6[3];
      v15 = v6[5];
      v37 = v6[4];
      v38 = v15;
      v16 = v6[1];
      v34[0] = *v6;
      v34[1] = v16;
      v42[6] = v39;
      v42[7] = v11;
      v43[0] = v6[8];
      *(v43 + 9) = *(v6 + 137);
      v42[2] = v35;
      v42[3] = v14;
      v42[4] = v37;
      v42[5] = v10;
      v42[0] = v34[0];
      v42[1] = v13;
      if (sub_1D7A601B0(v42) == 1)
      {
        nullsub_1();
      }

      else
      {
        nullsub_1();
        v18 = *(v17 + 16);
        if ([v18 v8[329]])
        {
          swift_unknownObjectRetain_n();
          sub_1D7A601B8(v34, v33);
          if (![v18 v7[487]])
          {
            v19 = *(*__swift_project_boxed_opaque_existential_1(v44, v44[3]) + 16);
            v20 = [v18 identifier];
            if (!v20)
            {
              sub_1D7D3034C();
              v20 = sub_1D7D3031C();
            }

            v21 = [v19 hasArticleBeenRead_];

            v22 = [v18 identifier];
            if (!v22)
            {
              sub_1D7D3034C();
              v22 = sub_1D7D3031C();
            }

            [v19 hasArticleBeenSeen_];

            v23 = [v18 identifier];
            if (!v23)
            {
              sub_1D7D3034C();
              v23 = sub_1D7D3031C();
            }

            v24 = [v19 hasArticleBeenVisited_];

            v25 = [v18 &off_1E84EC678];
            if (!v25)
            {
              sub_1D7D3034C();
              v25 = sub_1D7D3031C();
            }

            v26 = [v19 hasArticleBeenConsumed_];

            if ((v26 | v24 | v21))
            {
              v27 = swift_unknownObjectRelease();
              MEMORY[0x1DA70E080](v27);
              v8 = &off_1E84EC000;
              if (*((*a3 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                goto LABEL_26;
              }

              goto LABEL_27;
            }

            v8 = &off_1E84EC000;
            if ([v18 respondsToSelector_])
            {
              v28 = [v18 isFeatured];
              v29 = swift_unknownObjectRelease();
              if (v28)
              {
                MEMORY[0x1DA70E080](v29);
                if (*((*v30 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v30 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
LABEL_26:
                  sub_1D7D306DC();
                }

LABEL_27:
                sub_1D7D3072C();
                sub_1D7A6026C(v34);
                v7 = &selRef_addTarget_action_;
                goto LABEL_4;
              }
            }

            else
            {
              v29 = swift_unknownObjectRelease();
            }

            MEMORY[0x1DA70E080](v29);
            if (*((*a5 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              goto LABEL_26;
            }

            goto LABEL_27;
          }

          swift_unknownObjectRelease_n();
          sub_1D7A6026C(v34);
        }
      }

LABEL_4:
      v6 += 10;
      --v5;
    }

    while (v5);
  }
}

uint64_t sub_1D7CB8EBC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1D7CB8A64(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D7CB8F2C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D7CB8F74(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D7CB8FDC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D7CB903C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v45[1] = a4;
  sub_1D7CB9858(0, a5);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v51 = v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D7D3121C();
  v48 = *(v11 - 8);
  v49 = v11;
  MEMORY[0x1EEE9AC00](v11, v12);
  v47 = v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1D7D2813C();
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v50 = sub_1D7D280EC();
  v46 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50, v16);
  v18 = v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7B29F5C(a1, a2, a3);
  sub_1D7D2812C();
  sub_1D7D280FC();
  v19 = [objc_allocWithZone(MEMORY[0x1E69DCA40]) initForTextStyle_];
  v20 = [objc_opt_self() systemFontOfSize:20.0 weight:*MEMORY[0x1E69DB958]];
  v21 = [v19 scaledFontForFont_];

  aBlock = v21;
  sub_1D7CB98B0();
  sub_1D7D2810C();
  v22 = objc_allocWithZone(MEMORY[0x1E69DC888]);
  v56 = sub_1D7B227F4;
  v57 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v53 = 1107296256;
  v54 = sub_1D7B5C448;
  v55 = &block_descriptor_40;
  v23 = _Block_copy(&aBlock);
  v24 = [v22 initWithDynamicProvider_];
  _Block_release(v23);

  aBlock = v24;
  sub_1D7CB991C();
  sub_1D7D2810C();
  v25 = objc_opt_self();
  v26 = [v25 configurationWithPointSize:6 weight:32.0];
  sub_1D79EB1FC();
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1D7D41F60;
  v28 = objc_allocWithZone(MEMORY[0x1E69DC888]);
  v56 = sub_1D7B227F4;
  v57 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v53 = 1107296256;
  v54 = sub_1D7B5C448;
  v55 = &block_descriptor_6_2;
  v29 = _Block_copy(&aBlock);
  v30 = [v28 initWithDynamicProvider_];
  _Block_release(v29);

  *(v27 + 32) = v30;
  v31 = objc_allocWithZone(MEMORY[0x1E69DC888]);
  v56 = sub_1D7B22708;
  v57 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v53 = 1107296256;
  v54 = sub_1D7B5C448;
  v55 = &block_descriptor_9_1;
  v32 = _Block_copy(&aBlock);
  v33 = [v31 initWithDynamicProvider_];
  _Block_release(v32);

  *(v27 + 40) = v33;
  sub_1D79F85FC();
  v34 = sub_1D7D3062C();

  v35 = [v25 configurationWithPaletteColors_];

  v36 = [v26 configurationByApplyingConfiguration_];
  sub_1D7D3129C();
  sub_1D7D3123C();
  (*(v48 + 104))(v47, *MEMORY[0x1E69DC508], v49);
  sub_1D7D3122C();
  v37 = [objc_opt_self() clearColor];
  v38 = sub_1D7D311FC();
  sub_1D7D2C9BC();
  v38(&aBlock, 0);
  v39 = v46;
  v41 = v50;
  v40 = v51;
  (*(v46 + 16))(v51, v18, v50);
  (*(v39 + 56))(v40, 0, 1, v41);
  sub_1D7D3125C();
  sub_1D7D301EC();
  v42 = sub_1D7D3017C();
  v43 = [v42 imageWithConfiguration_];

  sub_1D7D3128C();
  sub_1D7D3124C();

  return (*(v39 + 8))(v18, v41);
}

void sub_1D7CB970C(void *a1)
{
  v2 = [a1 layer];
  v3 = [objc_opt_self() blackColor];
  v4 = [v3 CGColor];

  [v2 setShadowColor_];
  v5 = [a1 layer];
  [v5 setShadowOffset_];

  v6 = [a1 layer];
  [v6 setShadowRadius_];

  v8 = [a1 layer];
  LODWORD(v7) = 1034147594;
  [v8 setShadowOpacity_];
}

void sub_1D7CB9858(uint64_t a1, double a2)
{
  if (!qword_1EC9E8298)
  {
    sub_1D7D280EC();
    v2 = sub_1D7D3130C();
    if (!v3)
    {
      atomic_store(v2, &qword_1EC9E8298);
    }
  }
}

unint64_t sub_1D7CB98B0()
{
  result = qword_1EC9E82A0;
  if (!qword_1EC9E82A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E82A0);
  }

  return result;
}

double block_copy_helper_40(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

unint64_t sub_1D7CB991C()
{
  result = qword_1EC9E82A8;
  if (!qword_1EC9E82A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E82A8);
  }

  return result;
}

uint64_t EndOfArticleHeadlineModel.identifier.getter()
{
  v1 = [*(v0 + 16) identifier];
  v2 = sub_1D7D3034C();

  return v2;
}

uint64_t sub_1D7CB99FC(uint64_t a1, char a2)
{
  type metadata accessor for EndOfArticleHeadlineModel();
  v5 = swift_allocObject();
  *(v5 + 16) = v2;
  *(v5 + 24) = a1;
  *(v5 + 32) = a2;
  swift_unknownObjectRetain();
  return v5;
}

unint64_t EndOfArticleHeadlineModel.debugDescription.getter()
{
  v1 = 0xE000000000000000;
  sub_1D7D3145C();

  v2 = *(v0 + 16);
  v3 = [v2 identifier];
  v4 = sub_1D7D3034C();
  v6 = v5;

  MEMORY[0x1DA70DE90](v4, v6);

  MEMORY[0x1DA70DE90](0x3A656C74697420, 0xE700000000000000);
  v7 = [v2 title];
  if (v7)
  {
    v8 = v7;
    v9 = sub_1D7D3034C();
    v1 = v10;
  }

  else
  {
    v9 = 0;
  }

  MEMORY[0x1DA70DE90](v9, v1);

  return 0xD00000000000001DLL;
}

uint64_t EndOfArticleHeadlineModel.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t static EndOfArticleHeadlineModel.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 16) identifier];
  v4 = sub_1D7D3034C();
  v6 = v5;

  v7 = [*(a2 + 16) identifier];
  v8 = sub_1D7D3034C();
  v10 = v9;

  if (v4 == v8 && v6 == v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_1D7D3197C();
  }

  return v12 & 1;
}

uint64_t sub_1D7CB9CC8(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = [*(*a1 + 16) identifier];
  v4 = sub_1D7D3034C();
  v6 = v5;

  v7 = [*(v2 + 16) identifier];
  v8 = sub_1D7D3034C();
  v10 = v9;

  if (v4 == v8 && v6 == v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_1D7D3197C();
  }

  return v12 & 1;
}

BOOL sub_1D7CB9D94(uint64_t a1)
{
  v44 = a1;
  sub_1D7A86838(0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v41 - v8;
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v41 - v12;
  v14 = sub_1D7D2833C();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v41 - v21;
  v25 = MEMORY[0x1EEE9AC00](v23, v24);
  v43 = &v41 - v26;
  v27 = *(v1 + 16);
  v28 = [v27 publishDate];
  if (v28)
  {
    v29 = v28;
    sub_1D7D2830C();

    v30 = *(v15 + 32);
    v30(v9, v22, v14);
    v31 = *(v15 + 56);
    v31(v9, 0, 1, v14);
    v30(v13, v9, v14);
    v31(v13, 0, 1, v14);
    v32 = (*(v15 + 48))(v13, 1, v14);
  }

  else
  {
    v33 = 1;
    v42 = *(v15 + 56);
    v42(v9, 1, 1, v14);
    v34 = [v27 lastModifiedDate];
    if (v34)
    {
      v35 = v34;
      sub_1D7D2830C();

      v33 = 0;
    }

    v42(v5, v33, 1, v14);
    sub_1D7B07B18(v5, v13);
    v36 = *(v15 + 48);
    if (v36(v9, 1, v14) != 1)
    {
      sub_1D7AE148C(v9);
    }

    v32 = v36(v13, 1, v14);
  }

  if (v32 == 1)
  {
    sub_1D7AE148C(v13);
    return 1;
  }

  else
  {
    v38 = v43;
    (*(v15 + 32))(v43, v13, v14);
    sub_1D7D2832C();
    sub_1D7D282EC();
    v39 = *(v15 + 8);
    v39(v18, v14);
    v40 = sub_1D7D2831C();
    v39(v22, v14);
    v39(v38, v14);
    return v40 != -1;
  }
}

uint64_t sub_1D7CBA184()
{
  v1 = [*(*v0 + 16) identifier];
  v2 = sub_1D7D3034C();

  return v2;
}

uint64_t sub_1D7CBA1E0()
{
  v1 = [*(*v0 + 16) clusterID];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1D7D3034C();

  return v3;
}

uint64_t EndOfArticleHeadlineModel.description.getter()
{
  v1 = v0;
  sub_1D7D3145C();

  v2 = *(v0 + 16);
  v3 = [v2 identifier];
  v4 = sub_1D7D3034C();
  v6 = v5;

  MEMORY[0x1DA70DE90](v4, v6);

  MEMORY[0x1DA70DE90](0x203A656C74697420, 0xE800000000000000);
  v7 = [v2 title];
  if (v7)
  {
    v8 = v7;
    v9 = sub_1D7D3034C();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  sub_1D7992238();
  v12 = sub_1D7D303AC();
  MEMORY[0x1DA70DE90](v12);

  MEMORY[0x1DA70DE90](0x3A64696150736920, 0xE900000000000020);
  v13 = [v2 isPaid];
  v14 = v13 == 0;
  if (v13)
  {
    v15 = 1702195828;
  }

  else
  {
    v15 = 0x65736C6166;
  }

  if (v14)
  {
    v16 = 0xE500000000000000;
  }

  else
  {
    v16 = 0xE400000000000000;
  }

  MEMORY[0x1DA70DE90](v15, v16);

  MEMORY[0x1DA70DE90](0x7365636341736920, 0xEF203A656C626973);
  if (*(v1 + 32))
  {
    v17 = 1702195828;
  }

  else
  {
    v17 = 0x65736C6166;
  }

  if (*(v1 + 32))
  {
    v18 = 0xE400000000000000;
  }

  else
  {
    v18 = 0xE500000000000000;
  }

  MEMORY[0x1DA70DE90](v17, v18);

  return 540697705;
}

unint64_t sub_1D7CBA4B0()
{
  result = qword_1EC9E82B8;
  if (!qword_1EC9E82B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E82B8);
  }

  return result;
}

uint64_t sub_1D7CBA554()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  return swift_deallocClassInstance();
}

uint64_t sub_1D7CBA650(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D7CBA698@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v124 = a3;
  v125 = a2;
  v133 = a1;
  v132 = a4;
  v128 = sub_1D7D2BE9C();
  v127 = *(v128 - 8);
  MEMORY[0x1EEE9AC00](v128, v5);
  v131 = &v114 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = sub_1D7D288EC();
  v121 = *(v122 - 8);
  MEMORY[0x1EEE9AC00](v122, v7);
  v123 = &v114 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = sub_1D7D2889C();
  v129 = *(v130 - 8);
  MEMORY[0x1EEE9AC00](v130, v9);
  v134 = &v114 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v153 = type metadata accessor for TableOfContentsModel(0);
  MEMORY[0x1EEE9AC00](v153, v11);
  v115 = &v114 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v150 = &v114 - v15;
  MEMORY[0x1EEE9AC00](v16, v17);
  v135 = &v114 - v18;
  MEMORY[0x1EEE9AC00](v19, v20);
  v148 = (&v114 - v21);
  sub_1D7CBC2E0(0, &qword_1EC9E82C0, type metadata accessor for TableOfContentsHeaderViewModel, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v22 - 8, v23);
  v25 = &v114 - v24;
  v26 = type metadata accessor for TableOfContentsHeaderViewModel(0);
  v136 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26, v27);
  v147 = (&v114 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D79ECB58(0);
  v152 = v29;
  v30 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29, v31);
  v149 = &v114 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33, v34);
  v146 = &v114 - v35;
  sub_1D79ECCB8(0);
  v37 = v36;
  v38 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36, v39);
  v41 = &v114 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7CBC160(0);
  v43 = v42;
  MEMORY[0x1EEE9AC00](v42, v44);
  v46 = &v114 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = MEMORY[0x1EEE9AC00](v47, v48);
  v51 = &v114 - v50;
  v52 = *(v38 + 16);
  v120 = v38 + 16;
  v117 = v52;
  (v52)(v41, v133, v37, v49);
  v53 = sub_1D7CBA650(&qword_1EC9E82D0, sub_1D79ECCB8, MEMORY[0x1E69D7998]);
  v119 = v41;
  v116 = v53;
  sub_1D7D304FC();
  v118 = v43;
  v54 = *(v43 + 36);
  sub_1D7CBA650(&qword_1EC9E7F18, sub_1D79ECCB8, MEMORY[0x1E69D79A0]);
  sub_1D7D30A5C();
  if (*&v51[v54] == v154)
  {
    v151 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v57 = v54;
    v140 = (v30 + 16);
    v139 = (v30 + 8);
    v138 = (v136 + 56);
    v137 = (v136 + 48);
    v151 = MEMORY[0x1E69E7CC0];
    v58 = v135;
    v145 = v46;
    v144 = v30;
    v143 = v26;
    v142 = v37;
    v141 = v57;
    do
    {
      v59 = v25;
      v60 = sub_1D7D30AAC();
      v61 = v146;
      v62 = v152;
      (*v140)(v146);
      v60(&v154, 0);
      sub_1D7D30A6C();
      v63 = v148;
      sub_1D7D29EEC();
      (*v139)(v61, v62);
      sub_1D7CBC460(v63, v58, type metadata accessor for TableOfContentsModel);
      v25 = v59;
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v64 = v59;
        v65 = v143;
        (*v138)(v64, 1, 1, v143);
        sub_1D7CBC280(v58, type metadata accessor for TableOfContentsModel);
      }

      else
      {
        sub_1D7CBC460(v58, v59, type metadata accessor for TableOfContentsHeaderViewModel);
        v66 = v59;
        v65 = v143;
        (*v138)(v66, 0, 1, v143);
      }

      v67 = (*v137)(v25, 1, v65);
      v30 = v144;
      if (v67 == 1)
      {
        sub_1D7CBC1F4(v25, v68);
        v37 = v142;
        v46 = v145;
      }

      else
      {
        sub_1D7CBC460(v25, v147, type metadata accessor for TableOfContentsHeaderViewModel);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v37 = v142;
        if (isUniquelyReferenced_nonNull_native)
        {
          v70 = v151;
        }

        else
        {
          v70 = sub_1D79E5F80(0, v151[2] + 1, 1, v151);
        }

        v46 = v145;
        v72 = v70[2];
        v71 = v70[3];
        v73 = v136;
        if (v72 >= v71 >> 1)
        {
          v75 = sub_1D79E5F80((v71 > 1), v72 + 1, 1, v70);
          v73 = v136;
          v70 = v75;
        }

        v70[2] = v72 + 1;
        v74 = (*(v73 + 80) + 32) & ~*(v73 + 80);
        v151 = v70;
        sub_1D7CBC460(v147, v70 + v74 + *(v73 + 72) * v72, type metadata accessor for TableOfContentsHeaderViewModel);
        v58 = v135;
      }

      sub_1D7D30A5C();
    }

    while (*&v51[v141] != v154);
  }

  sub_1D7CBC280(v51, sub_1D7CBC160);
  v117(v119, v133, v37);
  sub_1D7D304FC();
  v55 = *(v118 + 36);
  sub_1D7D30A5C();
  if (*&v46[v55] == v154)
  {
    v56 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v148 = (v30 + 16);
    v147 = (v30 + 8);
    v56 = MEMORY[0x1E69E7CC0];
    do
    {
      v146 = v56;
      v76 = v115;
      while (1)
      {
        v77 = sub_1D7D30AAC();
        v78 = v149;
        v79 = v152;
        (*v148)(v149);
        v77(&v154, 0);
        sub_1D7D30A6C();
        v80 = v150;
        sub_1D7D29EEC();
        (*v147)(v78, v79);
        sub_1D7CBC460(v80, v76, type metadata accessor for TableOfContentsModel);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          break;
        }

        sub_1D7CBC280(v76, type metadata accessor for TableOfContentsModel);
        sub_1D7D30A5C();
        if (*&v46[v55] == v154)
        {
          v56 = v146;
          goto LABEL_28;
        }
      }

      v81 = v76[5];
      v158 = v76[4];
      v159 = v81;
      v160 = v76[6];
      v82 = v76[1];
      v154 = *v76;
      v83 = v76[2];
      v157 = v76[3];
      v155 = v82;
      v156 = v83;
      v56 = v146;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v56 = sub_1D79E5E40(0, *(v56 + 2) + 1, 1, v56);
      }

      v85 = *(v56 + 2);
      v84 = *(v56 + 3);
      if (v85 >= v84 >> 1)
      {
        v56 = sub_1D79E5E40((v84 > 1), v85 + 1, 1, v56);
      }

      *(v56 + 2) = v85 + 1;
      v86 = &v56[112 * v85];
      v87 = v154;
      v88 = v156;
      *(v86 + 3) = v155;
      *(v86 + 4) = v88;
      *(v86 + 2) = v87;
      v89 = v157;
      v90 = v158;
      v91 = v160;
      *(v86 + 7) = v159;
      *(v86 + 8) = v91;
      *(v86 + 5) = v89;
      *(v86 + 6) = v90;
      sub_1D7D30A5C();
    }

    while (*&v46[v55] != v154);
  }

LABEL_28:
  v146 = v56;
  sub_1D7CBC280(v46, sub_1D7CBC160);
  sub_1D7D2AF9C();
  sub_1D7D30FFC();
  v153 = v92;
  v152 = v93;
  sub_1D7D2AF9C();
  v150 = v94;
  v149 = v95;
  sub_1D7D2AFDC();
  v148 = v96;
  v147 = v97;
  sub_1D7D2AF7C();
  v145 = v98;
  v144 = v99;
  sub_1D7D2AFEC();
  v143 = v100;
  v142 = v101;
  sub_1D7D2AFCC();
  sub_1D7D2AF8C();
  sub_1D7D2AFBC();
  sub_1D7D2AFFC();
  sub_1D7D2AFAC();
  (*(v121 + 104))(v123, *MEMORY[0x1E69D7278], v122);
  v102 = v134;
  sub_1D7D2886C();
  v103 = v151;
  v104 = sub_1D7CBB904(v151, v124, v56, v102);
  v106 = v105;
  v107 = sub_1D7D2AFCC();
  v108 = sub_1D7BDBDA0(v107, v104, v106);

  v153 = v108;
  v109 = v126;
  sub_1D7D289AC();
  v152 = v109;
  if (v109)
  {
    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {
    v149 = *(&v156 + 1);
    *&v154 = v103;
    v161 = v156;
    v110 = MEMORY[0x1E69E62F8];
    sub_1D7CBC2E0(0, &qword_1EC9E82D8, type metadata accessor for TableOfContentsHeaderViewModel, MEMORY[0x1E69E62F8]);
    sub_1D7CBC2E0(0, &qword_1EC9E6630, type metadata accessor for TableOfContentsHeaderViewLayout.LayoutAttributes, v110);
    sub_1D79E6DFC(0);
    v148 = v111;
    sub_1D7CBC344(&qword_1EC9E82E0, &qword_1EC9E82D8, type metadata accessor for TableOfContentsHeaderViewModel);
    sub_1D7CBC344(&qword_1EC9E82E8, &qword_1EC9E6630, type metadata accessor for TableOfContentsHeaderViewLayout.LayoutAttributes);

    v150 = sub_1D7D294FC();

    *&v154 = v146;
    v161 = v149;
    sub_1D79AADEC(0, &qword_1EC9E82F0, &type metadata for TableOfContentsPDFCellViewModel);
    sub_1D79AADEC(0, &qword_1EC9E6648, &type metadata for TableOfContentsPDFCellViewLayout.LayoutAttributes);
    sub_1D7CBC3A8(&qword_1EC9E82F8, &qword_1EC9E82F0, &type metadata for TableOfContentsPDFCellViewModel);
    sub_1D7CBC3A8(&qword_1EC9E8300, &qword_1EC9E6648, &type metadata for TableOfContentsPDFCellViewLayout.LayoutAttributes);

    v112 = sub_1D7D294FC();

    swift_bridgeObjectRelease_n();

    (*(v127 + 104))(v131, *MEMORY[0x1E69D8670], v128);
    *&v154 = v150;
    sub_1D79E354C(v112);
    type metadata accessor for TableOfContentsLayoutModel(0);
    sub_1D7AEAFC8();
    sub_1D7CBA650(&qword_1EC9E8760, type metadata accessor for TableOfContentsLayoutModel, &unk_1D7D3E1F4);
    sub_1D7D2B06C();

    return (*(v129 + 8))(v134, v130);
  }

  return result;
}

uint64_t sub_1D7CBB904(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for TableOfContentsHeaderViewLayout.Context(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a1 + 16);
  v16 = MEMORY[0x1E69E7CC0];
  if (v15)
  {
    v23 = a4;
    v24 = a3;
    v27 = MEMORY[0x1E69E7CC0];
    sub_1D7A5C938(0, v15, 0);
    v16 = v27;
    v26 = a2;
    v17 = *(a2 + 96);
    v18 = *(type metadata accessor for TableOfContentsHeaderViewModel(0) - 8);
    v19 = a1 + ((*(v18 + 80) + 32) & ~*(v18 + 80));
    v25 = *(v18 + 72);
    do
    {
      sub_1D7CBC3F8(v19, v14, type metadata accessor for TableOfContentsHeaderViewModel);
      sub_1D799CC84(v26 + 16, &v14[*(v8 + 20)]);
      *&v14[*(v8 + 24)] = v17;
      v27 = v16;
      v21 = *(v16 + 16);
      v20 = *(v16 + 24);

      if (v21 >= v20 >> 1)
      {
        sub_1D7A5C938((v20 > 1), v21 + 1, 1);
        v16 = v27;
      }

      *(v16 + 16) = v21 + 1;
      v11 = sub_1D7CBC460(v14, v16 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v21, type metadata accessor for TableOfContentsHeaderViewLayout.Context);
      v19 += v25;
      --v15;
    }

    while (v15);
    a4 = v23;
    a3 = v24;
    a2 = v26;
  }

  MEMORY[0x1EEE9AC00](v11, v12);
  *(&v23 - 2) = a2;
  *(&v23 - 1) = a4;
  sub_1D7A29208(sub_1D7CBC4C8, (&v23 - 4), a3);
  return v16;
}

uint64_t sub_1D7CBBB84@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v6 = a1[5];
  v20 = a1[4];
  v21 = v6;
  v22 = a1[6];
  v7 = a1[1];
  v16 = *a1;
  v17 = v7;
  v8 = a1[3];
  v18 = a1[2];
  v19 = v8;
  sub_1D799CC84(a2 + 56, (a4 + 112));
  v9 = *(type metadata accessor for TableOfContentsPDFCellViewLayout.Context(0) + 24);
  v10 = sub_1D7D2889C();
  (*(*(v10 - 8) + 16))(&a4[v9], a3, v10);
  v11 = v21;
  *(a4 + 4) = v20;
  *(a4 + 5) = v11;
  *(a4 + 6) = v22;
  v12 = v17;
  *a4 = v16;
  *(a4 + 1) = v12;
  v13 = v19;
  *(a4 + 2) = v18;
  *(a4 + 3) = v13;
  return sub_1D7A2B848(&v16, &v15);
}

uint64_t sub_1D7CBBC68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for TableOfContentsLayoutModel(0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D79FC3CC(0);
  v10 = *(v9 + 48);
  sub_1D7CBC3F8(a2, v8, type metadata accessor for TableOfContentsHeaderViewModel);
  sub_1D7CBC3F8(a3, &v8[v10], type metadata accessor for TableOfContentsHeaderViewLayout.LayoutAttributes);
  swift_storeEnumTagMultiPayload();
  sub_1D7CBA650(&qword_1EC9E1A28, type metadata accessor for TableOfContentsLayoutModel, &unk_1D7D3E1BC);
  return sub_1D7D2ABAC();
}

uint64_t sub_1D7CBBD94(uint64_t a1, _OWORD *a2, __int128 *a3)
{
  v5 = type metadata accessor for TableOfContentsLayoutModel(0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v28[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = a2[3];
  v10 = a2[5];
  v32 = a2[4];
  v33 = v10;
  v11 = a2[5];
  v34 = a2[6];
  v12 = a2[1];
  v29[0] = *a2;
  v29[1] = v12;
  v13 = a2[3];
  v15 = *a2;
  v14 = a2[1];
  v30 = a2[2];
  v31 = v13;
  v16 = a3[5];
  v46 = a3[4];
  v47 = v16;
  v17 = a3[3];
  v44 = a3[2];
  v45 = v17;
  v18 = a3[1];
  v42 = *a3;
  v43 = v18;
  v35 = v15;
  v36 = v14;
  v19 = a2[6];
  v40 = v11;
  v41 = v19;
  v38 = v9;
  v39 = v32;
  v37 = v30;
  v8[2] = v30;
  v8[3] = v9;
  *v8 = v15;
  v8[1] = v14;
  v20 = v39;
  v21 = v40;
  v22 = v42;
  v8[6] = v41;
  v8[7] = v22;
  v8[4] = v20;
  v8[5] = v21;
  v23 = v43;
  v24 = v44;
  v25 = v47;
  v8[11] = v46;
  v8[12] = v25;
  v26 = v45;
  v8[9] = v24;
  v8[10] = v26;
  v8[8] = v23;
  swift_storeEnumTagMultiPayload();
  sub_1D7A2B848(v29, v28);
  sub_1D7CBA650(&qword_1EC9E1A28, type metadata accessor for TableOfContentsLayoutModel, &unk_1D7D3E1BC);
  return sub_1D7D2ABAC();
}

uint64_t sub_1D7CBBF20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[3] = a2;
  v4[4] = a3;
  v4[2] = a1;
  v5 = sub_1D7D2B02C();
  v4[5] = v5;
  v4[6] = *(v5 - 8);
  v6 = swift_task_alloc();
  v7 = *v3;
  v4[7] = v6;
  v4[8] = v7;

  return MEMORY[0x1EEE6DFA0](sub_1D7CBBFE8, 0, 0);
}

uint64_t sub_1D7CBBFE8()
{
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[4];
  v6 = swift_task_alloc();
  *(v6 + 16) = v5;
  *(v6 + 24) = v2;
  sub_1D7A28E70(sub_1D7CBC140, v6);

  (*(v4 + 16))(v1, v5, v3);
  type metadata accessor for TableOfContentsLayoutModel(0);
  sub_1D7A2B73C();
  sub_1D7CBA650(&qword_1EC9E1A28, type metadata accessor for TableOfContentsLayoutModel, &unk_1D7D3E1BC);
  sub_1D7D2A21C();

  v7 = v0[1];

  return v7();
}

void sub_1D7CBC160(uint64_t a1)
{
  if (!qword_1EC9E82C8)
  {
    sub_1D79ECCB8(255);
    sub_1D7CBA650(&qword_1EC9E7F18, sub_1D79ECCB8, MEMORY[0x1E69D79A0]);
    v1 = sub_1D7D315EC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC9E82C8);
    }
  }
}

uint64_t sub_1D7CBC1F4(uint64_t a1, double a2)
{
  sub_1D7CBC2E0(0, &qword_1EC9E82C0, type metadata accessor for TableOfContentsHeaderViewModel, MEMORY[0x1E69E6720]);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D7CBC280(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1D7CBC2E0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D7CBC344(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1D7CBC2E0(255, a2, a3, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D7CBC3A8(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1D79AADEC(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D7CBC3F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D7CBC460(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t type metadata accessor for EndOfRecipeFeedConfigFetchResult(uint64_t a1)
{
  result = qword_1EC9E8308;
  if (!qword_1EC9E8308)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D7CBC55C(uint64_t a1)
{
  result = type metadata accessor for EndOfRecipeFeedContentConfig(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t AlertBlockedStoryBehavior.init(selectionReason:feedKind:)@<X0>(char *a1@<X0>, _BYTE *a2@<X1>, _BYTE *a3@<X8>)
{
  v6 = sub_1D7D2EB7C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v23[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = MEMORY[0x1EEE9AC00](v11, v12);
  v15 = &v23[-v14];
  v16 = *a1;
  v24 = 1;
  if ((*(v7 + 48))(a2, 1, v6, v13) == 1)
  {
    result = sub_1D7CBD6F8(a2, &qword_1EE0BB1B8, MEMORY[0x1E69B5F78]);
LABEL_8:
    v20 = 1;
    goto LABEL_9;
  }

  v18 = *(v7 + 32);
  v18(v15, a2, v6);
  v18(v10, v15, v6);
  result = (*(v7 + 88))(v10, v6);
  if (result == *MEMORY[0x1E69B5F38] || result == *MEMORY[0x1E69B5F00])
  {
    goto LABEL_8;
  }

  if (result == *MEMORY[0x1E69B5F30] || result == *MEMORY[0x1E69B5EE0])
  {
    v20 = 0;
    goto LABEL_9;
  }

  if (result == *MEMORY[0x1E69B5EB0])
  {
    goto LABEL_8;
  }

  if (result == *MEMORY[0x1E69B5E98] || result == *MEMORY[0x1E69B5F40])
  {
    goto LABEL_8;
  }

  v20 = 1;
  if (result != *MEMORY[0x1E69B5F48] && result != *MEMORY[0x1E69B5F08] && result != *MEMORY[0x1E69B5EB8] && result != *MEMORY[0x1E69B5F58] && result != *MEMORY[0x1E69B5F60] && result != *MEMORY[0x1E69B5F68] && result != *MEMORY[0x1E69B5E88] && result != *MEMORY[0x1E69B5EE8])
  {
    v20 = 1;
    if (result != *MEMORY[0x1E69B5F70] && result != *MEMORY[0x1E69B5ED0])
    {
      v20 = 1;
      if (result != *MEMORY[0x1E69B5F10] && result != *MEMORY[0x1E69B5F28] && result != *MEMORY[0x1E69B5E90] && result != *MEMORY[0x1E69B5EF0] && result != *MEMORY[0x1E69B5EF8] && result != *MEMORY[0x1E69B5EC0] && result != *MEMORY[0x1E69B5ED8] && result != *MEMORY[0x1E69B5F18] && result != *MEMORY[0x1E69B5F20] && result != *MEMORY[0x1E69B5F50] && result != *MEMORY[0x1E69B5EA8] && result != *MEMORY[0x1E69B5EC8] && result != *MEMORY[0x1E69B5EA0])
      {
        v24 = 1;
        result = (*(v7 + 8))(v10, v6);
        v20 = v24;
      }
    }
  }

LABEL_9:
  *a3 = v16;
  a3[1] = v20;
  return result;
}

uint64_t AlertOpenBlockedStory.learnMoreURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AlertOpenBlockedStory(0) + 24);

  return sub_1D79A8A20(v3, a1);
}

uint64_t type metadata accessor for AlertOpenBlockedStory(uint64_t a1)
{
  result = qword_1EE0BD578;
  if (!qword_1EE0BD578)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AlertOpenBlockedStory.SelectionReason.hashValue.getter()
{
  v1 = *v0;
  sub_1D7D31A8C();
  MEMORY[0x1DA70F500](v1);
  return sub_1D7D31ABC();
}

uint64_t sub_1D7CBCB08(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE500000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x6575737369;
  if (v2 != 1)
  {
    v5 = 0x657069636572;
    v4 = 0xE600000000000000;
  }

  if (*a1)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0x79726F7473;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  v8 = 0x6575737369;
  if (*a2 != 1)
  {
    v8 = 0x657069636572;
    v3 = 0xE600000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x79726F7473;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D7D3197C();
  }

  return v11 & 1;
}

uint64_t sub_1D7CBCBF4()
{
  sub_1D7D31A8C();
  sub_1D7D303FC();

  return sub_1D7D31ABC();
}

uint64_t sub_1D7CBCC8C(uint64_t a1)
{
  sub_1D7D303FC();
}

uint64_t sub_1D7CBCD10(uint64_t a1)
{
  sub_1D7D31A8C();
  sub_1D7D303FC();

  return sub_1D7D31ABC();
}

unint64_t sub_1D7CBCDA4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D7CBDDDC(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1D7CBCDD4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x6575737369;
  if (v2 != 1)
  {
    v5 = 0x657069636572;
    v4 = 0xE600000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x79726F7473;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t AlertOpenBlockedStory.title.getter()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_1D7D2811C();

  return v2;
}

uint64_t AlertOpenBlockedStory.message.getter()
{
  if (*(v0 + 16) && *(v0 + 16) != 1)
  {
    type metadata accessor for AlertOpenBlockedStory(0);
    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v2 = [objc_opt_self() bundleForClass_];
  }

  else
  {
    type metadata accessor for Localized();
    v1 = swift_getObjCClassFromMetadata();
    v2 = [objc_opt_self() bundleForClass_];
  }

  sub_1D7D2811C();

  sub_1D7CBD1AC(0, &qword_1EE0BE810, sub_1D79D6A7C, MEMORY[0x1E69E6F90]);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D7D3B4D0;
  v6 = *v0;
  v5 = v0[1];
  *(v4 + 56) = MEMORY[0x1E69E6158];
  *(v4 + 64) = sub_1D79D6AE0();
  *(v4 + 32) = v6;
  *(v4 + 40) = v5;

  v7 = sub_1D7D3037C();

  return v7;
}

void sub_1D7CBD1AC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t AlertOpenBlockedStory.acceptButton.getter()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  sub_1D7D2811C();

  sub_1D7CBD1AC(0, &qword_1EE0BE810, sub_1D79D6A7C, MEMORY[0x1E69E6F90]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1D7D3B4D0;
  type metadata accessor for AlertOpenBlockedStory(0);
  sub_1D79EF194();
  v3 = MEMORY[0x1E69E6158];
  v4 = sub_1D7D3133C();
  v6 = v5;
  *(v2 + 56) = v3;
  *(v2 + 64) = sub_1D79D6AE0();
  *(v2 + 32) = v4;
  *(v2 + 40) = v6;

  v7 = sub_1D7D3037C();

  return v7;
}

uint64_t AlertOpenBlockedStory.neutralButton.getter()
{
  v1 = MEMORY[0x1E6968FB0];
  sub_1D7CBD1AC(0, &qword_1EE0CB770, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v19 - v4;
  v6 = type metadata accessor for AlertOpenBlockedStory(0);
  sub_1D79A8A20(v0 + *(v6 + 24), v5);
  v7 = sub_1D7D2824C();
  v8 = (*(*(v7 - 8) + 48))(v5, 1, v7);
  sub_1D7CBD6F8(v5, &qword_1EE0CB770, v1);
  if (v8 == 1)
  {
    if (qword_1EC9DFD60 != -1)
    {
      swift_once();
    }

    v9 = qword_1EC9E3350;
    v10 = sub_1D7D30C4C();
    sub_1D7D29AAC("Not able to layout AlertOpenBlockedStory neutral button when learnMoreURL == nil", 80, 2, &dword_1D7987000, v9, v10, MEMORY[0x1E69E7CC0]);
    return 0;
  }

  else
  {
    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v13 = [objc_opt_self() bundleForClass_];
    sub_1D7D2811C();

    sub_1D7CBD1AC(0, &qword_1EE0BE810, sub_1D79D6A7C, MEMORY[0x1E69E6F90]);
    v14 = swift_allocObject();
    v15 = v14;
    *(v14 + 16) = xmmword_1D7D3B4D0;
    if (*(v0 + *(v6 + 28)))
    {
      if (*(v0 + *(v6 + 28)) == 1)
      {
        v16 = 0xE500000000000000;
        v17 = 0x6575737369;
      }

      else
      {
        v16 = 0xE600000000000000;
        v17 = 0x657069636572;
      }
    }

    else
    {
      v16 = 0xE500000000000000;
      v17 = 0x79726F7473;
    }

    *(v14 + 56) = MEMORY[0x1E69E6158];
    *(v14 + 64) = sub_1D79D6AE0();
    *(v15 + 32) = v17;
    *(v15 + 40) = v16;
    v18 = sub_1D7D3037C();

    return v18;
  }
}

uint64_t sub_1D7CBD6F8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1D7CBD1AC(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t AlertOpenBlockedStory.rejectButton.getter()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass_];
  v3 = 0xE500000000000000;
  sub_1D7D2811C();

  sub_1D7CBD1AC(0, &qword_1EE0BE810, sub_1D79D6A7C, MEMORY[0x1E69E6F90]);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D7D3B4D0;
  v5 = type metadata accessor for AlertOpenBlockedStory(0);
  if (*(v0 + *(v5 + 28)))
  {
    if (*(v0 + *(v5 + 28)) == 1)
    {
      v6 = 0x6575737369;
    }

    else
    {
      v3 = 0xE600000000000000;
      v6 = 0x657069636572;
    }
  }

  else
  {
    v6 = 0x79726F7473;
  }

  *(v4 + 56) = MEMORY[0x1E69E6158];
  *(v4 + 64) = sub_1D79D6AE0();
  *(v4 + 32) = v6;
  *(v4 + 40) = v3;
  v7 = sub_1D7D3037C();

  return v7;
}

void *sub_1D7CBD928(void *a1, void *a2, void *a3)
{
  v6 = a1;
  v7 = a3;
  v8 = a2;
  return a1;
}

uint64_t sub_1D7CBD970()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_1D7D2811C();

  return v2;
}

unint64_t sub_1D7CBDAC8()
{
  result = qword_1EC9E8318;
  if (!qword_1EC9E8318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E8318);
  }

  return result;
}

void sub_1D7CBDB44(uint64_t a1)
{
  sub_1D7CBD1AC(319, &qword_1EE0CB770, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t getEnumTagSinglePayload for AlertBlockedStoryBehavior(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

LABEL_17:
  v6 = *(a1 + 1);
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AlertBlockedStoryBehavior(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
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
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 2) = v5;
      }

      else
      {
        *(result + 2) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 2) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 2) = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *(result + 1) = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1D7CBDD88()
{
  result = qword_1EC9E8320;
  if (!qword_1EC9E8320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E8320);
  }

  return result;
}

unint64_t sub_1D7CBDDDC(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D7D316EC();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

double sub_1D7CBDE2C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v122 = a2;
  v121 = type metadata accessor for LikeDislikeArticleFeatureContext(0);
  v120 = *(v121 - 8);
  MEMORY[0x1EEE9AC00](v121, v5);
  v118 = &v116 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v117 = &v116 - v9;
  v10 = MEMORY[0x1E69E6720];
  sub_1D7CC15A4(0, &qword_1EE0CA948, sub_1D7BD6E0C, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v116 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v116 - v17;
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v116 - v21;
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = &v116 - v25;
  sub_1D7CC15A4(0, qword_1EE0C3208, type metadata accessor for LikeDislikeArticleFeatureContext, v10);
  MEMORY[0x1EEE9AC00](v27 - 8, v28);
  v119 = &v116 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30, v31);
  v33 = &v116 - v32;
  MEMORY[0x1EEE9AC00](v34, v35);
  v37 = &v116 - v36;
  MEMORY[0x1EEE9AC00](v38, v39);
  v41 = &v116 - v40;
  MEMORY[0x1EEE9AC00](v42, v43);
  v45 = &v116 - v44;
  v46 = sub_1D7D2DB0C();
  v123 = a3;
  v125 = a1;
  if (v46)
  {
    sub_1D7CC1668(a1, v26, &qword_1EE0CA948, sub_1D7BD6E0C);
    sub_1D7BD6E0C(0);
    if ((*(*(v47 - 8) + 48))(v26, 1, v47) == 1)
    {
      sub_1D7CC1608(v26, &qword_1EE0CA948, sub_1D7BD6E0C, MEMORY[0x1E69E6720], sub_1D7CC15A4);
      v48 = 1;
    }

    else
    {
      sub_1D7CC174C(v26, v45);
      sub_1D7CC17B0(v26, sub_1D7BD6E0C);
      v48 = 0;
    }

    v53 = v124;
    (*(v120 + 56))(v45, v48, 1, v121);
    v54 = v122;
    sub_1D79DA880(v122, v127);
    v56 = sub_1D7CBED2C(v45, v55);
    v58 = v57;
    LODWORD(v124) = v59;
    v60 = MEMORY[0x1E69E6720];
    sub_1D7CC1608(v127, &qword_1EE0C2DF0, &type metadata for ArticleViewerFeatureUpdateOptions, MEMORY[0x1E69E6720], sub_1D7CC1994);
    sub_1D7CC1608(v45, qword_1EE0C3208, type metadata accessor for LikeDislikeArticleFeatureContext, MEMORY[0x1E69E6720], sub_1D7CC15A4);
    sub_1D7CC15A4(0, &qword_1EE0C1B50, type metadata accessor for LikeDislikeArticleFeatureContext, type metadata accessor for ArticleViewerFeatureAnimationContext);
    v62 = *(v61 + 28);
    sub_1D79DA880(v54, v127);
    v64 = sub_1D7CBED2C(v125 + v62, v63);
    v66 = v65;
    LODWORD(v121) = v67;
    sub_1D7CC1608(v127, &qword_1EE0C2DF0, &type metadata for ArticleViewerFeatureUpdateOptions, v60, sub_1D7CC1994);
    v69 = qword_1EE0C7FF0;
    v68 = off_1EE0C7FF8;
    sub_1D79DA880(v54, v127);
    v125 = *(v53 + 80);
    v70 = v123;
    *(v123 + 24) = &type metadata for BarButtonItemArticleViewerFeatureTransition;
    *(v70 + 32) = &off_1F52A4FC8;
    v71 = swift_allocObject();
    *v70 = v71;
    *(v71 + 16) = v69;
    *(v71 + 24) = v68;
    *(v71 + 32) = v56;
    *(v71 + 40) = v58;
    *(v71 + 48) = v124;
    *(v71 + 56) = v64;
    *(v71 + 64) = v66;
    *(v71 + 72) = v121;
    v72 = v128;

    sub_1D7A1EE44(v56, v58);
    sub_1D7A1EE44(v64, v66);
    *(v71 + 96) = sub_1D7C550C4(v72);
    *(v71 + 104) = v125;
    v73 = v129;

    BarButtonOrder.init(for:)(&v126, v73);
    sub_1D7A1EE84(v64, v66);
    sub_1D7A1EE84(v56, v58);
    sub_1D79DA8DC(v127);
    goto LABEL_28;
  }

  sub_1D7CC1668(a1, v22, &qword_1EE0CA948, sub_1D7BD6E0C);
  sub_1D7BD6E0C(0);
  v50 = v49;
  v51 = *(*(v49 - 8) + 48);
  if (v51(v22, 1, v49) == 1)
  {
    sub_1D7CC1608(v22, &qword_1EE0CA948, sub_1D7BD6E0C, MEMORY[0x1E69E6720], sub_1D7CC15A4);
    v52 = v121;
LABEL_12:
    sub_1D7CC1668(v125, v14, &qword_1EE0CA948, sub_1D7BD6E0C);
    v83 = v51(v14, 1, v50);
    v78 = v124;
    if (v83 == 1)
    {
      sub_1D7CC1608(v14, &qword_1EE0CA948, sub_1D7BD6E0C, MEMORY[0x1E69E6720], sub_1D7CC15A4);
      v84 = 1;
    }

    else
    {
      sub_1D7CC174C(v14, v33);
      sub_1D7CC17B0(v14, sub_1D7BD6E0C);
      v84 = 0;
    }

    v80 = v122;
    v81 = v120;
    v85 = (*(v120 + 56))(v33, v84, 1, v52);
    v86 = sub_1D7CBEF94(v33, v85);
    v88 = v87;
    v90 = v89;
    sub_1D7CC1608(v33, qword_1EE0C3208, type metadata accessor for LikeDislikeArticleFeatureContext, MEMORY[0x1E69E6720], sub_1D7CC15A4);
    goto LABEL_21;
  }

  sub_1D79DA880(&v22[*(v50 + 28)], v127);
  sub_1D7CC17B0(v22, sub_1D7BD6E0C);
  v74 = v128;
  sub_1D79DA8DC(v127);
  v75 = [v74 horizontalSizeClass];

  v76 = v75 == 1;
  v52 = v121;
  if (!v76)
  {
    goto LABEL_12;
  }

  sub_1D7CC1668(v125, v18, &qword_1EE0CA948, sub_1D7BD6E0C);
  v77 = v51(v18, 1, v50);
  v78 = v124;
  if (v77 == 1)
  {
    sub_1D7CC1608(v18, &qword_1EE0CA948, sub_1D7BD6E0C, MEMORY[0x1E69E6720], sub_1D7CC15A4);
    v79 = 1;
    v80 = v122;
    v81 = v120;
    v82 = v41;
  }

  else
  {
    v82 = v41;
    sub_1D7CC174C(v18, v41);
    sub_1D7CC17B0(v18, sub_1D7BD6E0C);
    v79 = 0;
    v80 = v122;
    v81 = v120;
  }

  (*(v81 + 56))(v82, v79, 1, v52);
  sub_1D7CC1668(v82, v37, qword_1EE0C3208, type metadata accessor for LikeDislikeArticleFeatureContext);
  if ((*(v81 + 48))(v37, 1, v52) == 1)
  {
    v91 = MEMORY[0x1E69E6720];
    sub_1D7CC1608(v82, qword_1EE0C3208, type metadata accessor for LikeDislikeArticleFeatureContext, MEMORY[0x1E69E6720], sub_1D7CC15A4);
    v92 = v91;
    v78 = v124;
    sub_1D7CC1608(v37, qword_1EE0C3208, type metadata accessor for LikeDislikeArticleFeatureContext, v92, sub_1D7CC15A4);
    v86 = 0;
    v88 = 0;
  }

  else
  {
    v93 = v117;
    sub_1D7CC16E8(v37, v117);
    v86 = *(v93 + 16);
    sub_1D7CC1994(0, &qword_1EE0BEA00, &type metadata for ArticleViewerBarButtonItem, MEMORY[0x1E69E6F90]);
    v88 = swift_allocObject();
    *(v88 + 16) = xmmword_1D7D3B4D0;
    swift_unknownObjectRetain();
    sub_1D7CC0128(v93, (v88 + 32), v94);
    sub_1D7CC17B0(v93, type metadata accessor for LikeDislikeArticleFeatureContext);
    sub_1D7CC1608(v82, qword_1EE0C3208, type metadata accessor for LikeDislikeArticleFeatureContext, MEMORY[0x1E69E6720], sub_1D7CC15A4);
  }

  v90 = 0;
LABEL_21:
  v95 = *(v80 + 48);
  v96 = v88;
  sub_1D7A1EE44(v86, v88);
  v97 = [v95 horizontalSizeClass];
  sub_1D7CC15A4(0, &qword_1EE0C1B50, type metadata accessor for LikeDislikeArticleFeatureContext, type metadata accessor for ArticleViewerFeatureAnimationContext);
  v100 = *(v99 + 28);
  LODWORD(v124) = v90;
  v101 = v86;
  if (v97 == 1)
  {
    v102 = v119;
    sub_1D7CC1668(v125 + v100, v119, qword_1EE0C3208, type metadata accessor for LikeDislikeArticleFeatureContext);
    if ((*(v81 + 48))(v102, 1, v52) == 1)
    {
      sub_1D7CC1608(v102, qword_1EE0C3208, type metadata accessor for LikeDislikeArticleFeatureContext, MEMORY[0x1E69E6720], sub_1D7CC15A4);
      v125 = 0;
      v103 = 0;
    }

    else
    {
      v107 = v118;
      sub_1D7CC16E8(v102, v118);
      v108 = *(v107 + 16);
      sub_1D7CC1994(0, &qword_1EE0BEA00, &type metadata for ArticleViewerBarButtonItem, MEMORY[0x1E69E6F90]);
      v103 = swift_allocObject();
      *(v103 + 16) = xmmword_1D7D3B4D0;
      v125 = v108;
      swift_unknownObjectRetain();
      sub_1D7CC0128(v107, (v103 + 32), v109);
      sub_1D7CC17B0(v107, type metadata accessor for LikeDislikeArticleFeatureContext);
    }

    v106 = 0;
  }

  else
  {
    v125 = sub_1D7CBEF94(v125 + v100, v98);
    v103 = v104;
    v106 = v105;
  }

  v111 = qword_1EE0C7FF0;
  v110 = off_1EE0C7FF8;
  sub_1D79DA880(v80, v127);
  v122 = *(v78 + 80);
  v70 = v123;
  *(v123 + 24) = &type metadata for BarButtonItemArticleViewerFeatureTransition;
  *(v70 + 32) = &off_1F52A4FC8;
  v71 = swift_allocObject();
  *v70 = v71;
  *(v71 + 16) = v111;
  *(v71 + 24) = v110;
  *(v71 + 32) = v101;
  *(v71 + 40) = v96;
  *(v71 + 48) = v124;
  v112 = v125;
  *(v71 + 56) = v125;
  *(v71 + 64) = v103;
  *(v71 + 72) = v106;
  v113 = v128;
  sub_1D7A1EE44(v112, v103);
  sub_1D7A1EE44(v101, v96);
  sub_1D7A1EE44(v112, v103);

  *(v71 + 96) = sub_1D7C550C4(v113);
  *(v71 + 104) = v122;
  v114 = v129;

  BarButtonOrder.init(for:)(&v126, v114);
  sub_1D7A1EE84(v112, v103);
  sub_1D7A1EE84(v101, v96);
  sub_1D79DA8DC(v127);
  sub_1D7A1EE84(v112, v103);
  sub_1D7A1EE84(v101, v96);
LABEL_28:
  result = *&v126;
  *(v71 + 80) = v126;
  *(v70 + 40) = 0;
  return result;
}

uint64_t sub_1D7CBED2C(uint64_t a1, double a2)
{
  sub_1D7CC15A4(0, qword_1EE0C3208, type metadata accessor for LikeDislikeArticleFeatureContext, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v18 - v5;
  v7 = type metadata accessor for LikeDislikeArticleFeatureContext(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7CC1668(a1, v6, qword_1EE0C3208, type metadata accessor for LikeDislikeArticleFeatureContext);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1D7CC1608(v6, qword_1EE0C3208, type metadata accessor for LikeDislikeArticleFeatureContext, MEMORY[0x1E69E6720], sub_1D7CC15A4);
    return 0;
  }

  else
  {
    sub_1D7CC16E8(v6, v11);
    v12 = *(v11 + 2);
    sub_1D7CC1994(0, &qword_1EE0BEA00, &type metadata for ArticleViewerBarButtonItem, MEMORY[0x1E69E6F90]);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1D7D3C680;
    swift_unknownObjectRetain();
    sub_1D7CBF1F0(v11, (v13 + 32), v14);
    sub_1D7CBF984(v11, (v13 + 48), v15);
    sub_1D7CC0128(v11, (v13 + 64), v16);
    sub_1D7CC17B0(v11, type metadata accessor for LikeDislikeArticleFeatureContext);
  }

  return v12;
}

uint64_t sub_1D7CBEF94(uint64_t a1, double a2)
{
  sub_1D7CC15A4(0, qword_1EE0C3208, type metadata accessor for LikeDislikeArticleFeatureContext, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v17 - v5;
  v7 = type metadata accessor for LikeDislikeArticleFeatureContext(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7CC1668(a1, v6, qword_1EE0C3208, type metadata accessor for LikeDislikeArticleFeatureContext);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1D7CC1608(v6, qword_1EE0C3208, type metadata accessor for LikeDislikeArticleFeatureContext, MEMORY[0x1E69E6720], sub_1D7CC15A4);
    return 0;
  }

  else
  {
    sub_1D7CC16E8(v6, v11);
    v12 = *(v11 + 2);
    sub_1D7CC1994(0, &qword_1EE0BEA00, &type metadata for ArticleViewerBarButtonItem, MEMORY[0x1E69E6F90]);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1D7D3B4E0;
    swift_unknownObjectRetain();
    sub_1D7CBF1F0(v11, (v13 + 32), v14);
    sub_1D7CBF984(v11, (v13 + 48), v15);
    sub_1D7CC17B0(v11, type metadata accessor for LikeDislikeArticleFeatureContext);
  }

  return v12;
}

void sub_1D7CBF1F0(uint64_t a1@<X0>, void *a2@<X8>, double a3@<D0>)
{
  v47 = a2;
  sub_1D7CC1810(0, a3);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v46 = v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7CC18A0(0, &qword_1EE0BFF78, &qword_1EE0BECD8, 0x1E69DCAB8, sub_1D7992EFC);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v45 = v42 - v10;
  sub_1D7CC15A4(0, &unk_1EE0BF620, MEMORY[0x1E69B63C0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = v42 - v13;
  v15 = sub_1D7D2B49C();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_1D7D2DB0C())
  {
    if (qword_1EE0BB4C0 != -1)
    {
      swift_once();
    }

    v20 = &qword_1EE0BB4C8;
  }

  else
  {
    if (qword_1EC9DFFE8 != -1)
    {
      swift_once();
    }

    v20 = &qword_1EC9E9270;
  }

  v21 = *v20;
  if (sub_1D7D2DB0C())
  {
    if (qword_1EE0BB560 != -1)
    {
      swift_once();
    }

    v22 = &qword_1EE0BB568;
  }

  else
  {
    if (qword_1EC9E0010 != -1)
    {
      swift_once();
    }

    v22 = &qword_1EC9E9290;
  }

  v23 = *v22;
  sub_1D7CC190C(0, &qword_1EE0BB260, MEMORY[0x1E69D8190]);
  v42[1] = *(v3 + 64);
  v42[2] = v24;
  (*(v16 + 104))(v19, *MEMORY[0x1E69D7FA8], v15);
  v25 = *(a1 + *(type metadata accessor for LikeDislikeArticleFeatureContext(0) + 20));
  v51 = sub_1D7D28A3C();
  v52 = sub_1D7CC1C94(&qword_1EE0CB3B0, MEMORY[0x1E698AAC8], MEMORY[0x1E69B5708]);
  v49 = v25;
  v53 = 0u;
  v54 = 0u;
  v55 = 1;
  sub_1D7D2B10C();
  swift_allocObject();
  v26 = v23;
  swift_unknownObjectRetain();

  sub_1D7D2B0EC();
  sub_1D7D2C45C();
  swift_unknownObjectRetain();
  sub_1D7D2F72C();
  v27 = sub_1D7D2F73C();
  (*(*(v27 - 8) + 56))(v14, 0, 1, v27);
  v48 = v26;
  v49 = v21;
  sub_1D7992EFC(0, &qword_1EE0BECD8, 0x1E69DCAB8);
  v44 = v21;
  v43 = v26;
  sub_1D7D2A8CC();
  sub_1D7CC09F8();
  sub_1D7CC18A0(0, &qword_1EE0BFF88, &unk_1EE0BFDC8, MEMORY[0x1E69D8188], sub_1D7CC190C);
  (*(*(v28 - 8) + 56))(v46, 1, 1, v28);
  v29 = sub_1D7D2B61C();
  v49 = qword_1EE0C7FF0;
  v50 = off_1EE0C7FF8;
  v30 = v29;

  MEMORY[0x1DA70DE90](0x656B696C3A3ALL, 0xE600000000000000);
  v31 = sub_1D7D3031C();

  [v30 setIdentifier_];

  sub_1D7D2B60C();
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v33 = objc_opt_self();
  v34 = v30;
  v35 = [v33 bundleForClass_];
  sub_1D7D2811C();

  v36 = sub_1D7D3031C();

  [v34 setAccessibilityLabel_];

  if (sub_1D7D2DB0C())
  {
    v37 = v34;
    v38 = [v33 bundleForClass_];
    sub_1D7D2811C();

    v39 = sub_1D7D3031C();

    [v37 setTitle_];

    v40 = v43;
  }

  else
  {
    v37 = v43;
    v40 = v44;
  }

  v41 = v47;
  *v47 = v34;
  v41[1] = 0;
}

void sub_1D7CBF984(uint64_t a1@<X0>, void *a2@<X8>, double a3@<D0>)
{
  v47 = a2;
  sub_1D7CC1810(0, a3);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v46 = v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7CC18A0(0, &qword_1EE0BFF78, &qword_1EE0BECD8, 0x1E69DCAB8, sub_1D7992EFC);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v45 = v42 - v10;
  sub_1D7CC15A4(0, &unk_1EE0BF620, MEMORY[0x1E69B63C0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = v42 - v13;
  v15 = sub_1D7D2B49C();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_1D7D2DB0C())
  {
    if (qword_1EE0BB498 != -1)
    {
      swift_once();
    }

    v20 = &qword_1EE0BB4A0;
  }

  else
  {
    if (qword_1EC9DFFF0 != -1)
    {
      swift_once();
    }

    v20 = &qword_1EC9E9278;
  }

  v21 = *v20;
  if (sub_1D7D2DB0C())
  {
    if (qword_1EE0BB528 != -1)
    {
      swift_once();
    }

    v22 = &qword_1EE0BB530;
  }

  else
  {
    if (qword_1EC9E0018 != -1)
    {
      swift_once();
    }

    v22 = &qword_1EC9E9298;
  }

  v23 = *v22;
  sub_1D7CC190C(0, &qword_1EE0BB260, MEMORY[0x1E69D8190]);
  v42[1] = *(v3 + 64);
  v42[2] = v24;
  (*(v16 + 104))(v19, *MEMORY[0x1E69D7FA8], v15);
  v25 = *(a1 + *(type metadata accessor for LikeDislikeArticleFeatureContext(0) + 20));
  v51 = sub_1D7D28A3C();
  v52 = sub_1D7CC1C94(&qword_1EE0CB3B0, MEMORY[0x1E698AAC8], MEMORY[0x1E69B5708]);
  v49 = v25;
  v53 = 0u;
  v54 = 0u;
  v55 = 1;
  sub_1D7D2B10C();
  swift_allocObject();
  v26 = v23;
  swift_unknownObjectRetain();

  sub_1D7D2B0EC();
  sub_1D7D2C46C();
  swift_unknownObjectRetain();
  sub_1D7D2F72C();
  v27 = sub_1D7D2F73C();
  (*(*(v27 - 8) + 56))(v14, 0, 1, v27);
  v48 = v26;
  v49 = v21;
  sub_1D7992EFC(0, &qword_1EE0BECD8, 0x1E69DCAB8);
  v44 = v21;
  v43 = v26;
  sub_1D7D2A8CC();
  sub_1D7CC09F8();
  sub_1D7CC18A0(0, &qword_1EE0BFF88, &unk_1EE0BFDC8, MEMORY[0x1E69D8188], sub_1D7CC190C);
  (*(*(v28 - 8) + 56))(v46, 1, 1, v28);
  v29 = sub_1D7D2B61C();
  v49 = qword_1EE0C7FF0;
  v50 = off_1EE0C7FF8;
  v30 = v29;

  MEMORY[0x1DA70DE90](0x6B696C7369643A3ALL, 0xE900000000000065);
  v31 = sub_1D7D3031C();

  [v30 setIdentifier_];

  sub_1D7D2B60C();
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v33 = objc_opt_self();
  v34 = v30;
  v35 = [v33 bundleForClass_];
  sub_1D7D2811C();

  v36 = sub_1D7D3031C();

  [v34 setAccessibilityLabel_];

  if (sub_1D7D2DB0C())
  {
    v37 = v34;
    v38 = [v33 bundleForClass_];
    sub_1D7D2811C();

    v39 = sub_1D7D3031C();

    [v37 setTitle_];

    v40 = v43;
  }

  else
  {
    v37 = v43;
    v40 = v44;
  }

  v41 = v47;
  *v47 = v34;
  v41[1] = 0;
}

uint64_t sub_1D7CC0128@<X0>(uint64_t a1@<X0>, void *a2@<X8>, double a3@<D0>)
{
  v4 = v3;
  v71 = a1;
  v76 = a2;
  sub_1D7CC19E4(0, &qword_1EE0BFFB8, &qword_1EE0BFFC0, MEMORY[0x1E69E6370], a3);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v75 = v59 - v8;
  v9 = MEMORY[0x1E69E6158];
  sub_1D7CC19E4(0, &qword_1EE0BFFC8, &unk_1EE0BFFD0, MEMORY[0x1E69E6158], v7);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v74 = v59 - v12;
  sub_1D7CC15A4(0, &unk_1EE0BF620, MEMORY[0x1E69B63C0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v77 = v59 - v15;
  v63 = sub_1D7D2B49C();
  v62 = *(v63 - 8);
  v17 = MEMORY[0x1EEE9AC00](v63, v16);
  v61 = v59 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7CC1A3C(0, &unk_1EE0BFFD0, v9, v17);
  v72 = *(v19 - 8);
  v73 = v19;
  MEMORY[0x1EEE9AC00](v19, v20);
  v60 = v59 - v21;
  v22 = sub_1D7D2FC2C();
  v23 = *(v22 - 8);
  v25 = MEMORY[0x1EEE9AC00](v22, v24);
  v27 = v59 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7CC1AD8(0, v25);
  v79 = *(v28 - 8);
  v80 = v28;
  MEMORY[0x1EEE9AC00](v28, v29);
  v68 = v59 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x1EEE9AC00](v31, v32);
  v78 = v59 - v34;
  v36 = *(v23 + 104);
  v66 = *MEMORY[0x1E69B6618];
  v35 = v66;
  v36(v27, v66, v22, v33);
  v67 = v23 + 104;
  v65 = v36;
  sub_1D7992EFC(0, &qword_1EE0BECD8, 0x1E69DCAB8);
  v37 = sub_1D7CC1C94(&qword_1EE0BF568, MEMORY[0x1E69B6638], MEMORY[0x1E69B6620]);

  v64 = v37;
  sub_1D7D2A8BC();
  (v36)(v27, v35, v22);

  sub_1D7D2A8BC();
  v70 = qword_1EE0C7FF0;
  v59[1] = off_1EE0C7FF8;
  v59[0] = *(v4 + 56);
  v69 = *(v4 + 64);
  (*(v62 + 104))(v61, *MEMORY[0x1E69D7FA8], v63);
  v38 = type metadata accessor for LikeDislikeArticleFeatureContext(0);
  v39 = v71;
  v40 = *(v71 + *(v38 + 20));
  v83 = sub_1D7D28A3C();
  v84 = sub_1D7CC1C94(&qword_1EE0CB3B0, MEMORY[0x1E698AAC8], MEMORY[0x1E69B5708]);
  v81 = v40;
  v85 = 0u;
  v86 = 0u;
  v87 = 1;
  sub_1D7D2B10C();
  swift_allocObject();

  swift_unknownObjectRetain();

  v63 = sub_1D7D2B0EC();
  v62 = sub_1D7D2C44C();
  v41 = *(v39 + 16);
  swift_unknownObjectRetain();
  v42 = v77;
  sub_1D7D2F72C();
  v43 = sub_1D7D2F73C();
  (*(*(v43 - 8) + 56))(v42, 0, 1, v43);
  v61 = _s5TeaUI11ContextMenuC12NewsArticlesE17likeDislikeGroups8headlineSayAA0cD9Groupable_pSgGSo19FCHeadlineProviding_p_tFZ_0(v41);
  (*(v79 + 16))(v68, v78, v80);
  sub_1D7CC09F8();
  v44 = v72;
  v45 = v73;
  v46 = v74;
  v47 = v60;
  (*(v72 + 16))(v74, v60, v73);
  (*(v44 + 56))(v46, 0, 1, v45);
  v65(v27, v66, v22);

  v48 = v75;
  v49 = MEMORY[0x1E69E6370];
  sub_1D7D2A8BC();
  sub_1D7CC1A3C(0, &qword_1EE0BFFC0, v49, v50);
  (*(*(v51 - 8) + 56))(v48, 0, 1, v51);
  sub_1D7CC1BAC(0);
  v53 = objc_allocWithZone(v52);
  v54 = sub_1D7D2A82C();
  v81 = qword_1EE0C7FF0;
  v82 = off_1EE0C7FF8;
  v55 = v54;

  MEMORY[0x1DA70DE90](0x6F626D6F633A3ALL, 0xE700000000000000);
  v56 = sub_1D7D3031C();

  [v55 setIdentifier_];

  (*(v44 + 8))(v47, v45);
  result = (*(v79 + 8))(v78, v80);
  v58 = v76;
  *v76 = v55;
  v58[1] = 0;
  return result;
}

id sub_1D7CC09F8()
{
  v1 = sub_1D7D2AC3C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v22 - v8;
  if ((sub_1D7D2DB0C() & 1) == 0)
  {
    sub_1D7D2AC8C();
    v10 = sub_1D7D2AC2C();
    v11 = *(v2 + 8);
    v11(v9, v1);
    if (v10)
    {
      sub_1D7D2AC8C();
      v12 = sub_1D7D2ABFC();
      v11(v5, v1);
      if (v12)
      {
        v13 = *(v0 + 88);
        sub_1D7CC1994(0, &qword_1EE0BE7F0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
        v14 = swift_allocObject();
        *(v14 + 16) = xmmword_1D7D41F60;
        *(v14 + 32) = v10;
        *(v14 + 40) = v12;
        sub_1D7992EFC(0, &qword_1EE0BECE8, 0x1E69DC888);
        v15 = v10;
        v16 = v12;
        v17 = sub_1D7D3062C();

        v18 = [objc_opt_self() configurationWithPaletteColors_];

        v19 = [v13 configurationByApplyingConfiguration_];
        return v19;
      }
    }
  }

  v21 = *(v0 + 88);

  return v21;
}

id sub_1D7CC0C70@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = sub_1D7D2FC2C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v27 - v12;
  v14 = sub_1D7D2DB0C();
  v15 = (v6 + 88);
  v16 = *(v6 + 16);
  if ((v14 & 1) == 0)
  {
    v16(v9, a1, v5);
    v19 = (*v15)(v9, v5);
    if (v19 == *MEMORY[0x1E69B6628])
    {
      if (qword_1EC9DFFD0 != -1)
      {
        swift_once();
      }

      v18 = qword_1EC9E9258;
      goto LABEL_26;
    }

    if (v19 == *MEMORY[0x1E69B6630])
    {
      if (qword_1EC9DFFD8 != -1)
      {
        swift_once();
      }

      v18 = qword_1EC9E9260;
      goto LABEL_26;
    }

    if (v19 == *MEMORY[0x1E69B6618])
    {
      if (qword_1EC9DFFE0 != -1)
      {
        swift_once();
      }

      v18 = qword_1EC9E9268;
      goto LABEL_26;
    }

    if (qword_1EC9DFFE0 != -1)
    {
      swift_once();
    }

    v25 = qword_1EC9E9268;
    *a2 = qword_1EC9E9268;
    v22 = *(v6 + 8);
    v26 = v25;
    v24 = v9;
    return v22(v24, v5);
  }

  v16(v13, a1, v5);
  v17 = (*v15)(v13, v5);
  if (v17 != *MEMORY[0x1E69B6628])
  {
    if (v17 == *MEMORY[0x1E69B6630])
    {
      if (qword_1EC9E0000 != -1)
      {
        swift_once();
      }

      v18 = qword_1EC9E9288;
      goto LABEL_26;
    }

    if (v17 == *MEMORY[0x1E69B6618])
    {
      if (qword_1EE0BB518 != -1)
      {
        swift_once();
      }

      v18 = qword_1EE0BB520;
      goto LABEL_26;
    }

    if (qword_1EE0BB518 != -1)
    {
      swift_once();
    }

    v21 = qword_1EE0BB520;
    *a2 = qword_1EE0BB520;
    v22 = *(v6 + 8);
    v23 = v21;
    v24 = v13;
    return v22(v24, v5);
  }

  if (qword_1EC9DFFF8 != -1)
  {
    swift_once();
  }

  v18 = qword_1EC9E9280;
LABEL_26:
  *a2 = v18;

  return v18;
}

void sub_1D7CC105C(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1D7D2FC2C();
  v6 = *(v5 - 8);
  v8 = MEMORY[0x1EEE9AC00](v5, v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v10, a1, v5, v8);
  v11 = (*(v6 + 88))(v10, v5);
  if (v11 == *MEMORY[0x1E69B6628] || v11 == *MEMORY[0x1E69B6630])
  {
    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v13 = [objc_opt_self() bundleForClass_];
    v14 = sub_1D7D2811C();
    v16 = v15;

    *a2 = v14;
    a2[1] = v16;
  }

  else
  {
    v17 = *MEMORY[0x1E69B6618];
    v18 = v11;
    type metadata accessor for Localized();
    v19 = swift_getObjCClassFromMetadata();
    v20 = [objc_opt_self() bundleForClass_];
    v21 = sub_1D7D2811C();
    v23 = v22;

    *a2 = v21;
    a2[1] = v23;
    if (v18 != v17)
    {
      (*(v6 + 8))(v10, v5);
    }
  }
}

uint64_t sub_1D7CC1358@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = sub_1D7D2FC2C();
  v6 = *(v5 - 8);
  v8 = MEMORY[0x1EEE9AC00](v5, v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v10, a1, v5, v8);
  result = (*(v6 + 88))(v10, v5);
  if (result == *MEMORY[0x1E69B6628] || result == *MEMORY[0x1E69B6630])
  {
    *a2 = 1;
  }

  else
  {
    v13 = *MEMORY[0x1E69B6618];
    *a2 = 0;
    if (result != v13)
    {
      return (*(v6 + 8))(v10, v5);
    }
  }

  return result;
}

uint64_t sub_1D7CC14A4()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_1D7CC1508(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 153))
  {
    return 0;
  }

  v4 = *v2;
  v5 = *(*v2 + 40);
  v6 = *(*v2 + 48);
  __swift_project_boxed_opaque_existential_1((v4 + 16), v5);
  return (*(v6 + 8))(a1, v5, v6) & 1;
}

void sub_1D7CC15A4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D7CC1608(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = (a5)(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1D7CC1668(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1D7CC15A4(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1D7CC16E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LikeDislikeArticleFeatureContext(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D7CC174C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LikeDislikeArticleFeatureContext(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D7CC17B0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1D7CC1810(uint64_t a1, double a2)
{
  if (!qword_1EE0BFF80)
  {
    sub_1D7CC18A0(255, &qword_1EE0BFF88, &unk_1EE0BFDC8, MEMORY[0x1E69D8188], sub_1D7CC190C);
    v2 = sub_1D7D3130C();
    if (!v3)
    {
      atomic_store(v2, &qword_1EE0BFF80);
    }
  }
}

void sub_1D7CC18A0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    a5(255, a3, a4);
    v6 = sub_1D7D2A8EC();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1D7CC190C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = sub_1D7D2F73C();
    v8[1] = MEMORY[0x1E69E6370];
    v8[2] = MEMORY[0x1E69E6388];
    v8[3] = MEMORY[0x1E69D8888];
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1D7CC1994(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1D7CC19E4(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, double a5)
{
  if (!*a2)
  {
    sub_1D7CC1A3C(255, a3, a4, a5);
    v6 = sub_1D7D3130C();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1D7CC1A3C(uint64_t a1, unint64_t *a2, uint64_t a3, double a4)
{
  if (!*a2)
  {
    sub_1D7D2FC2C();
    sub_1D7CC1C94(&qword_1EE0BF568, MEMORY[0x1E69B6638], MEMORY[0x1E69B6620]);
    v5 = sub_1D7D2A8EC();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1D7CC1AD8(uint64_t a1, double a2)
{
  if (!qword_1EE0BFFB0)
  {
    sub_1D7D2FC2C();
    sub_1D7992EFC(255, &qword_1EE0BECD8, 0x1E69DCAB8);
    sub_1D7CC1C94(&qword_1EE0BF568, MEMORY[0x1E69B6638], MEMORY[0x1E69B6620]);
    v2 = sub_1D7D2A8EC();
    if (!v3)
    {
      atomic_store(v2, &qword_1EE0BFFB0);
    }
  }
}

void sub_1D7CC1BAC(uint64_t a1)
{
  if (!qword_1EE0BB2F8)
  {
    sub_1D7D2F73C();
    sub_1D7D2FC2C();
    v1 = MEMORY[0x1E69B6638];
    sub_1D7CC1C94(&qword_1EE0BB168, MEMORY[0x1E69B6638], MEMORY[0x1E69B6640]);
    sub_1D7CC1C94(&qword_1EE0BF568, v1, MEMORY[0x1E69B6620]);
    v2 = sub_1D7D2A83C();
    if (!v3)
    {
      atomic_store(v2, &qword_1EE0BB2F8);
    }
  }
}

uint64_t sub_1D7CC1C94(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D7CC1CDC()
{
  v1 = v0;
  v2 = type metadata accessor for ArticleViewerArticlePage(0);
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ArticleViewerPage(0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = (&v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D79F93E8(v1, v9);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v11 = v9[9];
      v12 = v9[10];
      v13 = v9[11];
      sub_1D7A1EF2C(v11, v12, v13);

      swift_unknownObjectRelease();

      swift_unknownObjectRelease();

      sub_1D7A1ECE4(v11, v12, v13);
      return v11;
    }

LABEL_7:
    sub_1D7A74E98(v9, v5);
    v15 = &v5[*(v2 + 40)];
    v11 = *v15;
    sub_1D7A1EF2C(*v15, v15[1], v15[2]);
    sub_1D79F94F0(v5, type metadata accessor for ArticleViewerArticlePage);
    return v11;
  }

  if ((EnumCaseMultiPayload - 2) >= 2)
  {
    sub_1D799A6BC(0);
    sub_1D79DA510(*(v9 + *(v14 + 48)), *(v9 + *(v14 + 48) + 8), *(v9 + *(v14 + 48) + 16), *(v9 + *(v14 + 48) + 24));
    goto LABEL_7;
  }

  sub_1D79F94F0(v9, type metadata accessor for ArticleViewerPage);
  return 0;
}

void sub_1D7CC2124()
{
  v1 = OBJC_IVAR____TtC12NewsArticles8BrandBar_iconView;
  type metadata accessor for BrandBarNewsIcon();
  *(v0 + v1) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v2 = OBJC_IVAR____TtC12NewsArticles8BrandBar_ctaButton;
  sub_1D7D29BBC();
  *(v0 + v2) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v3 = OBJC_IVAR____TtC12NewsArticles8BrandBar_titleLabel;
  *(v0 + v3) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v4 = OBJC_IVAR____TtC12NewsArticles8BrandBar_bodyLabel;
  *(v0 + v4) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v5 = OBJC_IVAR____TtC12NewsArticles8BrandBar_backgroundView;
  *(v0 + v5) = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  v6 = OBJC_IVAR____TtC12NewsArticles8BrandBar_pinstripe;
  *(v0 + v6) = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  sub_1D7D3160C();
  __break(1u);
}

uint64_t static ArticleViewerFeatures.bottomPalette.getter()
{
  sub_1D7CC2280(0);

  return swift_initStaticObject();
}

void sub_1D7CC2280(uint64_t a1)
{
  if (!qword_1EE0C88F0)
  {
    v2 = type metadata accessor for BottomPaletteFeatureContext(255);
    v5 = type metadata accessor for ArticleViewerFeature(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_1EE0C88F0);
    }
  }
}

uint64_t sub_1D7CC22FC()
{
  type metadata accessor for BrandBarNavigationAnimation();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 1;
  return result;
}

uint64_t sub_1D7CC2358()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    type metadata accessor for BrandBarToolbarCompressionAnimation();
    result = swift_allocObject();
    *(result + 16) = 1;
    *(result + 24) = 0;
    *(result + 32) = 1;
    *(result + 40) = v1;
  }

  return result;
}

id sub_1D7CC23AC(uint64_t a1)
{
  sub_1D799CC84(a1, v6);
  v1 = type metadata accessor for TextSizeControlModule();
  v2 = objc_allocWithZone(v1);
  sub_1D799CC84(v6, v2 + OBJC_IVAR____TtC12NewsArticles21TextSizeControlModule_resolver);
  v5.receiver = v2;
  v5.super_class = v1;
  v3 = objc_msgSendSuper2(&v5, sel_init);
  __swift_destroy_boxed_opaque_existential_1(v6);
  return v3;
}

uint64_t sub_1D7CC2424@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_1D799CC84(a1, v8);
  v3 = type metadata accessor for TextSizeControlModule();
  v4 = objc_allocWithZone(v3);
  sub_1D799CC84(v8, v4 + OBJC_IVAR____TtC12NewsArticles21TextSizeControlModule_resolver);
  v7.receiver = v4;
  v7.super_class = v3;
  v5 = objc_msgSendSuper2(&v7, sel_init);
  result = __swift_destroy_boxed_opaque_existential_1(v8);
  a2[3] = v3;
  a2[4] = &off_1F52A3930;
  *a2 = v5;
  return result;
}

double sub_1D7CC24B4()
{
  type metadata accessor for TextSizeControlViewController();
  sub_1D7D291DC();

  sub_1D798C468(0, &unk_1EC9E8360, &protocol descriptor for TextSizeControlStylerType, 1);
  sub_1D7D291EC();

  return result;
}

char *sub_1D7CC255C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EE0CBE60, MEMORY[0x1E69D7A90], 0);
  result = sub_1D7D28D2C();
  v3 = v24;
  if (!v24)
  {
    __break(1u);
    goto LABEL_6;
  }

  v4 = v25;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7D28A3C();
  result = sub_1D7D28D1C();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &unk_1EC9E8360, &protocol descriptor for TextSizeControlStylerType, 1);
  result = sub_1D7D28D2C();
  if (v23)
  {
    v6 = __swift_mutable_project_boxed_opaque_existential_1(v22, v23);
    v7 = MEMORY[0x1EEE9AC00](v6, v6);
    v9 = (v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v10 + 16))(v9, v7);
    v11 = *v9;
    v20 = type metadata accessor for TextSizeControlStyler();
    v21 = &off_1F529F3B8;
    v19[0] = v11;
    v12 = objc_allocWithZone(type metadata accessor for TextSizeControlViewController());
    v13 = __swift_mutable_project_boxed_opaque_existential_1(v19, v20);
    v14 = MEMORY[0x1EEE9AC00](v13, v13);
    v16 = (v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v17 + 16))(v16, v14);
    v18 = sub_1D7CC2854(v3, v4, v5, *v16, v12);
    __swift_destroy_boxed_opaque_existential_1(v19);
    __swift_destroy_boxed_opaque_existential_1(v22);
    return v18;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1D7CC280C@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for TextSizeControlStyler();
  result = swift_allocObject();
  a1[3] = v2;
  a1[4] = &off_1F529F3B8;
  *a1 = result;
  return result;
}

char *sub_1D7CC2854(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5)
{
  ObjectType = swift_getObjectType();
  v33[3] = type metadata accessor for TextSizeControlStyler();
  v33[4] = &off_1F529F3B8;
  v33[0] = a4;
  v10 = OBJC_IVAR____TtC12NewsArticles29TextSizeControlViewController_divider;
  *&a5[v10] = [objc_allocWithZone(MEMORY[0x1E69DD250]) initWithFrame_];
  v11 = OBJC_IVAR____TtC12NewsArticles29TextSizeControlViewController_stackView;
  *&a5[v11] = [objc_allocWithZone(MEMORY[0x1E69DCF90]) initWithFrame_];
  v12 = OBJC_IVAR____TtC12NewsArticles29TextSizeControlViewController_increaseButton;
  v13 = objc_opt_self();
  *&a5[v12] = [v13 buttonWithType_];
  v14 = OBJC_IVAR____TtC12NewsArticles29TextSizeControlViewController_increaseAction;
  sub_1D7AF946C();
  v16 = v15;
  *&a5[v14] = [objc_allocWithZone(v15) init];
  v17 = OBJC_IVAR____TtC12NewsArticles29TextSizeControlViewController_decreaseButton;
  *&a5[v17] = [v13 buttonWithType_];
  v18 = OBJC_IVAR____TtC12NewsArticles29TextSizeControlViewController_decreaseAction;
  *&a5[v18] = [objc_allocWithZone(v16) init];
  v19 = &a5[OBJC_IVAR____TtC12NewsArticles29TextSizeControlViewController_commandCenter];
  *v19 = a1;
  *(v19 + 1) = a2;
  *&a5[OBJC_IVAR____TtC12NewsArticles29TextSizeControlViewController_tracker] = a3;
  sub_1D799CC84(v33, &a5[OBJC_IVAR____TtC12NewsArticles29TextSizeControlViewController_styler]);
  v32.receiver = a5;
  v32.super_class = ObjectType;
  swift_unknownObjectRetain();

  v20 = objc_msgSendSuper2(&v32, sel_initWithNibName_bundle_, 0, 0);
  v21 = *&v20[OBJC_IVAR____TtC12NewsArticles29TextSizeControlViewController_increaseAction];
  v22 = *&v20[OBJC_IVAR____TtC12NewsArticles29TextSizeControlViewController_increaseButton];
  v23 = v20;
  v24 = v21;
  v25 = v22;
  sub_1D7D2C1FC();

  v26 = *&v23[OBJC_IVAR____TtC12NewsArticles29TextSizeControlViewController_decreaseButton];
  v27 = *&v23[OBJC_IVAR____TtC12NewsArticles29TextSizeControlViewController_decreaseAction];
  v28 = v26;
  sub_1D7D2C1FC();

  [v23 setModalPresentationStyle_];
  v29 = [v23 popoverPresentationController];

  if (v29)
  {
    [v29 setDelegate_];
    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_1(v33);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v33);
    swift_unknownObjectRelease();
  }

  return v23;
}

uint64_t sub_1D7CC2B2C()
{
  v1 = v0[2];
  v11 = v0[1];
  *v12 = v1;
  v2 = v0[4];
  v13 = v0[3];
  v14 = v2;
  if (!*(&v11 + 1))
  {
    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v4 = [objc_opt_self() bundleForClass_];
    sub_1D7D2811C();

    v5 = sub_1D7D303CC();

    return v5;
  }

  if (([v12[0] respondsToSelector_] & 1) == 0)
  {
    type metadata accessor for Localized();
    v6 = swift_getObjCClassFromMetadata();
    v7 = objc_opt_self();

    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v10 = [v7 bundleForClass_];
    goto LABEL_7;
  }

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  if ([v12[0] role] <= 8)
  {
    type metadata accessor for Localized();
    v9 = swift_getObjCClassFromMetadata();
    v10 = [objc_opt_self() bundleForClass_];
LABEL_7:
    sub_1D7D2811C();

    v5 = sub_1D7D303CC();

    sub_1D7AACF1C(&v11);
    return v5;
  }

  result = sub_1D7D3160C();
  __break(1u);
  return result;
}

uint64_t sub_1D7CC2F30()
{
  sub_1D7C753A4(v0[2], v0[3], v0[4], v0[5]);

  return swift_deallocClassInstance();
}

uint64_t sub_1D7CC2F98@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1D7D2B7FC();
  v3 = sub_1D7D2B7DC();
  v4 = MEMORY[0x1E69D8270];
  a1[3] = v2;
  a1[4] = v4;
  *a1 = v3;
  a1[5] = sub_1D7CC2B2C();
  a1[6] = v5;
  v6 = *MEMORY[0x1E69D8820];
  v7 = sub_1D7D2C83C();
  v8 = *(*(v7 - 8) + 104);

  return v8(a1, v6, v7);
}

uint64_t sub_1D7CC306C@<X0>(void *a2@<X1>, uint64_t a3@<X8>, double d0_0@<D0>)
{
  v44 = a3;
  v45 = a2;
  sub_1D7CC3CD4(0, d0_0);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v42 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7CC3D48(0, &unk_1EC9E8378, MEMORY[0x1E69B3F80]);
  v40 = v8;
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = (&v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v12, v13);
  v41 = &v40 - v14;
  v15 = type metadata accessor for RecipeBannerAd(0);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v18 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1((v4 + 16), *(v4 + 40));
  v19 = sub_1D7D2D16C();
  v21 = v20;
  v22 = off_1F52B1E98;
  type metadata accessor for RecipeBannerAdFactory();
  v43 = v18;
  v22(v19, v21);
  v23 = v45;

  v24 = [v23 articles];
  sub_1D799621C();
  v25 = sub_1D7D3063C();

  if (v25 >> 62)
  {
    result = sub_1D7D3167C();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_10:

    sub_1D7CC408C();
    v36 = swift_allocError();
    sub_1D7CC3D48(0, &qword_1EC9E5F68, MEMORY[0x1E69B4438]);
    v38 = v42;
    (*(*(v37 - 8) + 56))(v42, 1, 1, v37);
    sub_1D7D2D16C();
    sub_1D7D2D4DC();

    sub_1D7CC3EA8(v38, v39);

    return sub_1D7CC3F7C(v43, v44);
  }

  result = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_3:
  if ((v25 & 0xC000000000000001) != 0)
  {
    v28 = MEMORY[0x1DA70EF00](0, v25);
    v27 = v41;
  }

  else
  {
    v27 = v41;
    if (!*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v28 = *(v25 + 32);
    swift_unknownObjectRetain();
  }

  v29 = sub_1D7D2CA5C();
  MEMORY[0x1EEE9AC00](v29, v30);
  *(&v40 - 2) = v28;
  *(&v40 - 1) = v23;
  sub_1D7D2CD4C();

  sub_1D7CC3E28(v27, v11);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1D7CC3F04(v27);
    swift_unknownObjectRelease();
    sub_1D7CC3FE0(0);

    sub_1D7CC3F7C(v43, v44);
    sub_1D7CC3D48(0, &qword_1EC9E5F68, MEMORY[0x1E69B4438]);
    return (*(*(v35 - 8) + 8))(v11, v35);
  }

  v31 = *v11;

  sub_1D7CC3D48(0, &qword_1EC9E5F68, MEMORY[0x1E69B4438]);
  v33 = v42;
  (*(*(v32 - 8) + 56))(v42, 1, 1, v32);
  sub_1D7D2D16C();
  sub_1D7D2D4BC();

  swift_unknownObjectRelease();

  sub_1D7CC3EA8(v33, v34);
  sub_1D7CC3F04(v27);
  return sub_1D7CC3F7C(v43, v44);
}