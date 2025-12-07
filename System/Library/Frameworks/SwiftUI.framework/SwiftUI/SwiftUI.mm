uint64_t type metadata accessor for UIViewPlatformViewDefinition(uint64_t a1)
{
  result = type metadata singleton initialization cache for UIViewPlatformViewDefinition;
  if (!type metadata singleton initialization cache for UIViewPlatformViewDefinition)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for SortableTableHeaderButton(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata accessor for CommandOperation?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void _s7SwiftUI16CommandOperationVSgMaTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void _s7SwiftUI16CommandOperationVSgMaTm_1(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void _s7SwiftUI16CommandOperationVSgMaTm_2(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void _s7SwiftUI16CommandOperationVSgMaTm_3(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void *_sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_7SwiftUI12PropertyListVTt0g5Tf4g_n(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  type metadata accessor for _DictionaryStorage<ObjectIdentifier, PropertyList>();
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v4 = a1[4];
  v5 = a1[5];
  v6 = specialized __RawDictionaryStorage.find<A>(_:)(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = a1 + 7;
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + 8 * v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 1);
    v15 = *v10;

    v8 = specialized __RawDictionaryStorage.find<A>(_:)(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t initializeWithCopy for FocusedValues(uint64_t a1, uint64_t *a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 1);

  return a1;
}

void *initializeBufferWithCopyOfBuffer for FocusStore(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  a1[2] = a2[2];

  return a1;
}

void one-time initialization function for configuredForPlatform()
{
  type metadata accessor for ViewGraphHost();
  static ViewGraphHost.defaultEnvironment.getter();
  EnvironmentValues._configureForPlatform(traitCollection:)(0);
}

double UIUserInterfaceIdiom.idiom.getter@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (a1 > 2)
  {
    if (a1 <= 6)
    {
      goto LABEL_6;
    }

LABEL_5:
    *a2 = 0;
    a2[1] = 0;
    return result;
  }

  if (a1 > 2)
  {
    goto LABEL_5;
  }

LABEL_6:
  AnyInterfaceIdiom.init<A>(_:)();
  result = *&v4;
  *a2 = v4;
  return result;
}

void EnvironmentValues._configureForPlatform(traitCollection:)(void *a1)
{
  v3 = type metadata accessor for DesignIdiom();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v16[-v8];
  type metadata accessor for SwiftUIPlatformProvidersDefinition(0);
  EnvironmentValues.platformProvidersDefinition.setter();
  EnvironmentValues.hasSystemOpenURLAction.setter();
  v10 = v1[1];
  *&v21[0] = *v1;
  *(&v21[0] + 1) = v10;

  static OpenURLAction.updateDefaultActions(env:)(v21);

  v11 = [objc_opt_self() mainScreen];
  if (a1)
  {
    v12 = [a1 userInterfaceIdiom];
  }

  else
  {
    v13 = [objc_opt_self() currentDevice];
    v12 = [v13 userInterfaceIdiom];
  }

  v14.n128_f64[0] = UIUserInterfaceIdiom.idiom.getter(v12, v21);
  if (*&v21[0])
  {
    v17 = v21[0];
    AnyInterfaceIdiom.interfaceIdiom.getter();
    EnvironmentValues.viewGraphIdiom.setter();
  }

  if (v12 > 6)
  {
    v15 = MEMORY[0x1E6999C38];
  }

  else
  {
    v15 = qword_1E7237918[v12];
  }

  (*(v4 + 104))(v6, *v15, v3, v14);
  (*(v4 + 32))(v9, v6, v3);
  EnvironmentValues.designIdiom.setter();
  [v11 _referenceBounds];
  [v11 _pointsPerInch];
  ViewGraphHost.AssetCatalogConfiguration.init(referenceBounds:pointsPerInch:preferredArtworkSubtype:)();
  v17 = v21[0];
  v18 = v21[1];
  v19 = v22;
  v20 = v23;
  EnvironmentValues.viewGraphAssetCatalogConfiguration.setter();
}

uint64_t type metadata accessor for SwiftUIPlatformProvidersDefinition(uint64_t a1)
{
  result = type metadata singleton initialization cache for SwiftUIPlatformProvidersDefinition;
  if (!type metadata singleton initialization cache for SwiftUIPlatformProvidersDefinition)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t static OpenURLAction.updateDefaultActions(env:)(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  static OpenURLAction.defaultAction.getter();
  if (v9 == -1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v5 = partial apply for closure #1 in static OpenURLAction._defaultAction(env:);
    v6 = v3;
    v7 = 0;
    v8 = 0;
    v9 = 0;

    static OpenURLAction.defaultAction.setter();
  }

  else
  {
    outlined consume of OpenURLAction?(v5, v6, v7, v8, v9);
  }

  static OpenURLAction.defaultSensitiveAction.getter();
  return outlined consume of OpenURLAction?(v5, v6, v7, v8, v9);
}

uint64_t sub_18BD4D1B8()
{

  return swift_deallocObject();
}

void type metadata accessor for AnyAccessibilityValue?(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void type metadata accessor for SceneList.Item?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void type metadata accessor for Any?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void type metadata accessor for PPTTestCase?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void _sypSgMaTm_0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void type metadata accessor for ViewTransform?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void _sypSgMaTm_1(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void _sypSgMaTm_2(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void _sypSgMaTm_3(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void _sypSgMaTm_4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void _sypSgMaTm_5(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void _sypSgMaTm_6(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void _sypSgMaTm_7(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void _sypSgMaTm_8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

id @objc SwiftUIGlue2.init()(void *a1)
{
  v2.receiver = a1;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

void SwiftUIGlue2.configureEmptyEnvironment(_:)(uint64_t *a1)
{
  v1 = *a1;
  if (one-time initialization token for configuredForPlatform != -1)
  {
    swift_once();
  }

  if (v1)
  {
    if (static EnvironmentValues.configuredForPlatform)
    {
      v2 = v1 == static EnvironmentValues.configuredForPlatform;
    }

    else
    {
      v2 = 0;
    }

    if (!v2)
    {
      EnvironmentValues._configureForPlatform(traitCollection:)(0);
    }
  }

  else if (static EnvironmentValues.configuredForPlatform)
  {

    EnvironmentValues.plist.setter();
  }
}

void type metadata completion function for SwiftUISearchController(uint64_t a1)
{
  _s7SwiftUI14ToolbarStorageV10SearchItemVSgMaTm_0(319, &lazy cache variable for type metadata for ToolbarStorage.SearchItem?, type metadata accessor for ToolbarStorage.SearchItem, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    _s7SwiftUI14ToolbarStorageV10SearchItemVSgMaTm_0(319, &lazy cache variable for type metadata for SearchFieldConfiguration?, type metadata accessor for SearchFieldConfiguration, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void type metadata completion function for SearchFieldConfiguration(uint64_t a1)
{
  _s7SwiftUI7BindingVyAA16SearchFieldStateVGMaTm_5(319, &lazy cache variable for type metadata for Binding<SearchFieldState>, type metadata accessor for SearchFieldState, MEMORY[0x1E6981948]);
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

void type metadata accessor for ToolbarStorage.SearchItem?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void _s7SwiftUI14ToolbarStorageV10SearchItemVSgMaTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void _s7SwiftUI14ToolbarStorageV10SearchItemVSgMaTm_1(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void type metadata completion function for ToolbarStorage.SearchItem(uint64_t a1)
{
  _s7SwiftUI16CommandOperationVSgMaTm_2(319, &lazy cache variable for type metadata for Binding<SearchFieldState>, type metadata accessor for SearchFieldState, MEMORY[0x1E6981948]);
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

uint64_t type metadata completion function for SearchFieldState(uint64_t a1)
{
  result = type metadata accessor for AttributedString();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void type metadata accessor for Binding<SearchFieldState>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void _s7SwiftUI7BindingVyAA16SearchFieldStateVGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void _s7SwiftUI7BindingVyAA16SearchFieldStateVGMaTm_1(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void _s7SwiftUI7BindingVyAA16SearchFieldStateVGMaTm_2(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void _s7SwiftUI7BindingVyAA16SearchFieldStateVGMaTm_3(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void _s7SwiftUI7BindingVyAA16SearchFieldStateVGMaTm_4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void _s7SwiftUI7BindingVyAA16SearchFieldStateVGMaTm_5(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void *_UIHostingView.init(rootView:)(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = *MEMORY[0x1E69E7D40];
  v6 = specialized _UIHostingView.init(rootView:)(a1, a2);
  (*(*(*((v5 & v4) + 0x50) - 8) + 8))(a1);
  return v6;
}

void static UIViewPlatformViewDefinition.makePlatformView(view:kind:)(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *a2;
  objc_opt_self();
  v3 = swift_dynamicCastObjCClassUnconditional();
  v4 = v2;
  specialized static UIViewPlatformViewDefinition.initView(_:kind:)(v3, &v4);
}

id static UIViewPlatformViewDefinition.makeLayerView(type:kind:)(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *a2;
  if (v2 > 0x12)
  {
    goto LABEL_7;
  }

  if (((1 << v2) & 0x57C21) == 0)
  {
    if (v2 == 3)
    {
      type metadata accessor for _UIShapeHitTestingView();
      goto LABEL_4;
    }

LABEL_7:
    type metadata accessor for _UIGraphicsView();
    goto LABEL_4;
  }

  type metadata accessor for _UIInheritedView();
LABEL_4:
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v5 = _UIKitCreateCustomView(ObjCClassFromMetadata, v4);

  v7 = v2;
  specialized static UIViewPlatformViewDefinition.initView(_:kind:)(v5, &v7);
  return v5;
}

id _UIKitCreateCustomView(objc_class *a1, void *a2)
{
  v3 = a2;
  v4 = [[a1 alloc] _initWithLayer:v3];

  return v4;
}

void specialized static UIViewPlatformViewDefinition.initView(_:kind:)(id a1, unsigned __int8 *a2)
{
  v3 = *a2;
  if (v3 - 15 >= 2)
  {
    [a1 setAutoresizesSubviews_];
    if (v3 > 0x12 || ((1 << v3) & 0x47C21) == 0)
    {
      [a1 _setFocusInteractionEnabled_];
    }
  }

  v5 = [a1 layer];
  [v5 setAnchorPoint_];

  if (v3 <= 0x12)
  {
    if (((1 << v3) & 0x47801) != 0)
    {
      v6 = [a1 layer];
      [v6 setAllowsGroupOpacity_];
      [v6 setAllowsGroupBlending_];
    }

    else
    {
      if (((1 << v3) & 0xE) == 0)
      {
        return;
      }

      v6 = [a1 layer];
      [v6 setAllowsEdgeAntialiasing_];
    }
  }
}

id static UIViewPlatformViewDefinition.makeView(kind:)(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 > 0x12)
  {
    goto LABEL_9;
  }

  if (((1 << v1) & 0x53C21) != 0)
  {
    type metadata accessor for _UIInheritedView();
LABEL_4:
    v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
LABEL_5:
    v13 = v1;
    specialized static UIViewPlatformViewDefinition.initView(_:kind:)(v2, &v13);

    return v2;
  }

  if (v1 != 14)
  {
LABEL_9:
    type metadata accessor for _UIGraphicsView();
    goto LABEL_4;
  }

  type metadata accessor for _UIInheritedView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v6 = objc_allocWithZone(ObjCClassFromMetadata);
  v7 = v5;
  v8 = [v6 init];
  [v7 setMaskView_];

  v9 = v7;
  result = [v7 maskView];
  if (result)
  {
    v10 = result;
    [result setAutoresizesSubviews_];
    v11 = [v10 layer];
    [v11 setAnchorPoint_];

    v12 = [v10 layer];
    [v12 setAllowsGroupOpacity_];
    [v12 setAllowsGroupBlending_];

    v2 = v9;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t type metadata completion function for _UIHostingView(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    return swift_initClassMetadata2();
  }

  return result;
}

uint64_t type metadata completion function for DeprecatedAlertBridge(uint64_t a1)
{
  result = type metadata accessor for Optional();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

id EditMenuBridge.init()(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  *&v2[OBJC_IVAR____TtC7SwiftUI14EditMenuBridge_host + 8] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *&v2[OBJC_IVAR____TtC7SwiftUI14EditMenuBridge_interaction] = 0;
  *&v2[OBJC_IVAR____TtC7SwiftUI14EditMenuBridge_editMenuPresentationSeed] = 0;
  v4 = &v2[OBJC_IVAR____TtC7SwiftUI14EditMenuBridge_lastEditMenuPresentation];
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 2) = 0u;
  v5 = &v2[OBJC_IVAR____TtC7SwiftUI14EditMenuBridge_presentedMenu];
  *(v5 + 4) = 0;
  *v5 = 0u;
  *(v5 + 1) = 0u;
  *(v5 + 40) = xmmword_18CD6A6D0;
  v7.receiver = v2;
  v7.super_class = ObjectType;
  return objc_msgSendSuper2(&v7, sel_init);
}

void *specialized _UIHostingView.init(rootView:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v200 = a1;
  v221 = *MEMORY[0x1E69E9840];
  ObjectType = swift_getObjectType();
  v5 = MEMORY[0x1E69E7D40];
  v6 = *v2;
  v7 = *MEMORY[0x1E69E7D40] & *v2;
  v194 = *MEMORY[0x1E69E7D40];
  v8 = v194;
  v192 = v7;
  v197 = type metadata accessor for UIHostingViewBase.Options();
  v199 = *(v197 - 8);
  MEMORY[0x1EEE9AC00](v197);
  v193 = &v186 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v188 = &v186 - v11;
  v198 = type metadata accessor for UIHostingViewBase.Configuration();
  v196 = *(v198 - 8);
  MEMORY[0x1EEE9AC00](v198);
  v190 = &v186 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v195 = &v186 - v14;
  *(v3 + *((v8 & v6) + 0x70)) = 0;
  v15 = *((*v5 & *v3) + 0x78);
  type metadata accessor for EventBindingManager();
  v16 = EventBindingManager.__allocating_init()();
  v191 = v15;
  *(v3 + v15) = v16;
  *(v3 + *((*v5 & *v3) + 0x80)) = 0;
  *(v3 + *((*v5 & *v3) + 0x88)) = 0;
  *(v3 + *((*v5 & *v3) + 0x90)) = 1;
  *(v3 + *((*v5 & *v3) + 0x98)) = 0;
  *(v3 + *((*v5 & *v3) + 0xA0)) = 0;
  v17 = v3 + *((*v5 & *v3) + 0xA8);
  *v17 = 0u;
  *(v17 + 1) = 0u;
  v17[32] = 1;
  v18 = v3 + *((*v5 & *v3) + 0xB0);
  *v18 = 0u;
  *(v18 + 1) = 0u;
  v18[32] = 1;
  *(v3 + *((*v5 & *v3) + 0xB8)) = 0;
  *(v3 + *((*v5 & *v3) + 0xC0)) = 0;
  *(v3 + *((*v5 & *v3) + 0xC8)) = 0;
  swift_unknownObjectWeakInit();
  *(v3 + *((*v5 & *v3) + 0xD8)) = 0;
  v19 = v3 + *((*v5 & *v3) + 0xE8);
  *v19 = 0;
  v19[8] = 1;
  *(v3 + *((*v5 & *v3) + 0xF0)) = 0;
  *(v3 + *((*v5 & *v3) + 0xF8)) = 2;
  v20 = *((*v5 & *v3) + 0x100);
  _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v3VGMaTm_1(0, &lazy cache variable for type metadata for DeprecatedAlertBridge<Alert.Presentation>, &type metadata for Alert.Presentation, &protocol witness table for Alert.Presentation, type metadata accessor for DeprecatedAlertBridge);
  v22 = v21;
  v23 = objc_allocWithZone(v21);
  *(v23 + *((*v5 & *v23) + 0x60) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v23 + *((*v5 & *v23) + 0x68)) = 0;
  *(v23 + *((*v5 & *v23) + 0x70)) = 0;
  *(v23 + *((*v5 & *v23) + 0x78)) = 0;
  EnvironmentValues.init()();
  v24 = v23 + *((*v5 & *v23) + 0x88);
  *v24 = 0u;
  *(v24 + 1) = 0u;
  *(v24 + 2) = 0u;
  *(v24 + 3) = 0u;
  *(v24 + 4) = 0u;
  *(v24 + 5) = 0u;
  *(v24 + 6) = 0u;
  *(v24 + 7) = 0u;
  *(v24 + 8) = 0u;
  *(v24 + 9) = 0u;
  *(v24 + 10) = 0u;
  *(v24 + 11) = 0u;
  *(v24 + 12) = 0u;
  *(v24 + 13) = 0u;
  *(v24 + 14) = 0u;
  *(v24 + 15) = 0u;
  *(v24 + 16) = 0u;
  *(v24 + 34) = 0;
  *(v23 + *((*v5 & *v23) + 0x90)) = 0;
  *(v23 + *((*v5 & *v23) + 0x98)) = 1;
  v205.receiver = v23;
  v205.super_class = v22;
  *(v3 + v20) = objc_msgSendSuper2(&v205, sel_init);
  v25 = *((*v5 & *v3) + 0x108);
  _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v3VGMaTm_1(0, &lazy cache variable for type metadata for DeprecatedAlertBridge<ActionSheet.Presentation>, &type metadata for ActionSheet.Presentation, &protocol witness table for ActionSheet.Presentation, type metadata accessor for DeprecatedAlertBridge);
  v27 = v26;
  v28 = objc_allocWithZone(v26);
  *(v28 + *((*v5 & *v28) + 0x60) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v28 + *((*v5 & *v28) + 0x68)) = 0;
  *(v28 + *((*v5 & *v28) + 0x70)) = 0;
  *(v28 + *((*v5 & *v28) + 0x78)) = 0;
  EnvironmentValues.init()();
  v29 = v28 + *((*v5 & *v28) + 0x88);
  *v29 = 0u;
  *(v29 + 1) = 0u;
  *(v29 + 2) = 0u;
  *(v29 + 3) = 0u;
  *(v29 + 4) = 0u;
  *(v29 + 5) = 0u;
  *(v29 + 6) = 0u;
  *(v29 + 7) = 0u;
  *(v29 + 8) = 0u;
  *(v29 + 9) = 0u;
  *(v29 + 20) = 0;
  *(v28 + *((*v5 & *v28) + 0x90)) = 0;
  *(v28 + *((*v5 & *v28) + 0x98)) = 0;
  v204.receiver = v28;
  v204.super_class = v27;
  *(v3 + v25) = objc_msgSendSuper2(&v204, sel_init);
  *(v3 + *((*v5 & *v3) + 0x110)) = 1;
  v30 = *((*v5 & *v3) + 0x118);
  type metadata accessor for FocusBridge();
  v31 = swift_allocObject();
  *(v31 + 16) = 0;
  *(v31 + 32) = 0;
  *(v31 + 40) = 0;
  swift_unknownObjectWeakInit();
  v32 = MEMORY[0x1E69E7CC0];
  v33 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_7SwiftUI12PropertyListVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(v31 + 48) = 0;
  *(v31 + 56) = v32;
  *(v31 + 64) = v33;
  EnvironmentValues.init()();
  *(v31 + 120) = 0u;
  *(v31 + 104) = 0u;
  *(v31 + 88) = 0u;
  v186 = xmmword_18CD6A6D0;
  *(v31 + 136) = xmmword_18CD6A6D0;
  swift_weakInit();
  *(v31 + 160) = 0;
  *(v31 + 168) = 0;
  *(v31 + 176) = 1;
  *(v3 + v30) = v31;
  v34 = *((*v5 & *v3) + 0x120);
  *(v3 + v34) = [objc_allocWithZone(type metadata accessor for DragAndDropBridge()) init];
  *(v3 + *((*v5 & *v3) + 0x128)) = 0;
  v35 = *((*v5 & *v3) + 0x130);
  *(v3 + v35) = [objc_allocWithZone(type metadata accessor for TooltipBridge()) init];
  v36 = *((*v5 & *v3) + 0x138);
  *(v3 + v36) = [objc_allocWithZone(type metadata accessor for EditMenuBridge()) init];
  *(v3 + *((*v5 & *v3) + 0x140)) = 0;
  *(v3 + *((*v5 & *v3) + 0x148)) = 0;
  v37 = *((*v5 & *v3) + 0x150);
  type metadata accessor for UIKitStatusBarBridge();
  v38 = swift_allocObject();
  *(v38 + 16) = 514;
  *(v38 + 24) = v32;
  *(v38 + 40) = 0;
  swift_unknownObjectWeakInit();
  *(v3 + v37) = v38;
  swift_weakInit();
  *(v3 + *((*v5 & *v3) + 0x160)) = 0;
  v39 = *((*v5 & *v3) + 0x168);
  *(v3 + v39) = [objc_allocWithZone(type metadata accessor for AVKitCaptureButtonBridge()) init];
  v40 = *((*v5 & *v3) + 0x170);
  *(v3 + v40) = [objc_allocWithZone(type metadata accessor for PencilEventsBridge()) init];
  *(v3 + *((*v5 & *v3) + 0x178)) = 0;
  *(v3 + *((*v5 & *v3) + 0x180)) = 0;
  v41 = *((*v5 & *v3) + 0x188);
  *(v3 + v41) = [objc_allocWithZone(type metadata accessor for ContextMenuBridge()) init];
  v42 = *((*v5 & *v3) + 0x190);
  type metadata accessor for InteractiveResizeBridge();
  v43 = swift_allocObject();
  *(v43 + 16) = 0;
  *(v43 + 20) = 0;
  *(v43 + 24) = 0;
  v187 = v42;
  *(v3 + v42) = v43;
  *(v3 + *((*v5 & *v3) + 0x198)) = 0;
  v44 = *((*v5 & *v3) + 0x1A0);
  *(v3 + v44) = [objc_allocWithZone(type metadata accessor for UILargeContentViewerInteractionBridge()) init];
  *(v3 + *((*v5 & *v3) + 0x1A8)) = 0;
  *(v3 + *((*v5 & *v3) + 0x1B0)) = 0;
  *(v3 + *((*v5 & *v3) + 0x1B8)) = 0;
  *(v3 + *((*v5 & *v3) + 0x1C0) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v3 + *((*v5 & *v3) + 0x1C8)) = 0;
  v45 = v3 + *((*v5 & *v3) + 0x1D0);
  *v45 = 0;
  v45[8] = 0;
  *(v45 + 1) = xmmword_18CD76350;
  swift_unknownObjectWeakInit();
  *(v3 + *((*v5 & *v3) + 0x1E0)) = 0;
  *(v3 + *((*v5 & *v3) + 0x1E8)) = 0;
  *(v3 + *((*v5 & *v3) + 0x1F0)) = 0;
  *(v3 + *((*v5 & *v3) + 0x1F8)) = 0;
  *(v3 + *((*v5 & *v3) + 0x200)) = 0;
  v46 = *((v194 & v6) + 0x50);
  v47 = (*(*(v46 - 8) + 16))(v3 + *((*v5 & *v3) + 0x60), v200, v46);
  MEMORY[0x18D00ABE0](v47);
  type metadata accessor for PlatformColorDefinition();
  type metadata accessor for UIKitPlatformColorDefinition(0);
  static PlatformSystemDefinition.uiKit.getter();
  static PlatformColorDefinition.setInternalDefinition(_:system:)();
  type metadata accessor for PlatformScrollEdgeEffectTagDefinition();
  type metadata accessor for ScrollEdgeEffectTagModifierDefinition(0);
  static PlatformScrollEdgeEffectTagDefinition.setDefinition(_:)();
  type metadata accessor for PlatformItemsDefinition();
  type metadata accessor for UIKitPlatformItemsDefinition(0);
  static PlatformSystemDefinition.uiKit.getter();
  v48 = static PlatformItemsDefinition.setDefinition(_:system:)();
  v49 = *(ObjectType + 1384);
  v189 = ObjectType;
  v49(&v208, v48);
  type metadata accessor for PlatformViewDefinition();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIView, 0x1E69DD250);
  if (!static PlatformViewDefinition.for (_:)())
  {
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  type metadata accessor for ViewGraphHost();
  v50 = *(v192 + 88);
  swift_allocObject();
  v192 = v46;
  v194 = v50;
  v51 = ViewGraphHost.init<A>(rootViewType:outputs:viewDefinition:)();
  v200 = *(v51 + 88);

  v52 = v195;
  v53 = UIHostingViewBase.Configuration.init()();
  v54 = v193;
  MEMORY[0x18D001BC0](v53);
  v55 = UIHostingViewBase.Configuration.options.modify();
  v56 = v188;
  specialized OptionSet<>.insert(_:)(v188, v54);
  v57 = (v199 + 8);
  v58 = *(v199 + 1);
  v59 = v197;
  v58(v54, v197);
  v199 = v57;
  v58(v56, v59);
  v60 = v55(&v208, 0);
  v61 = v52;
  if (((*(v189 + 1408))(v60) & 1) == 0)
  {
    v62 = v193;
    static UIHostingViewBase.Options.allowUnregisteredGeometryChanges.getter();
    v189 = UIHostingViewBase.Configuration.options.modify();
    specialized OptionSet<>.insert(_:)(v56, v62);
    v63 = v197;
    v58(v62, v197);
    v64 = v63;
    v61 = v52;
    v58(v56, v64);
    (v189)(&v208, 0);
  }

  (*(v196 + 16))(v190, v61, v198);
  v65 = objc_allocWithZone(type metadata accessor for UIHostingViewBase());

  v189 = v51;
  v66 = UIHostingViewBase.init(viewGraph:configuration:)();
  v67 = MEMORY[0x1E69E7D40];
  *(v3 + *((*MEMORY[0x1E69E7D40] & *v3) + 0x68)) = v66;
  v68 = v200;

  *&v208 = specialized FocusViewGraph.init(graph:)(v69);
  *(&v208 + 1) = v70;
  LOWORD(v209) = v71 & 0x101;
  BYTE2(v209) = v72 & 1;
  lazy protocol witness table accessor for type FocusViewGraph and conformance FocusViewGraph();
  ViewGraph.append<A>(feature:)();
  lazy protocol witness table accessor for type PlatformItemListViewGraph and conformance PlatformItemListViewGraph();
  *&v208 = 0;
  WORD4(v208) = 0;
  ViewGraph.append<A>(feature:)();
  lazy protocol witness table accessor for type ViewGraphBridgePropertiesAreInput and conformance ViewGraphBridgePropertiesAreInput();
  if (static UserDefaultKeyedFeature.isEnabled.getter())
  {
    v73 = *MEMORY[0x1E698D3F8];
    v206 = 0uLL;
    *v207 = v73;
    memset(&v207[8], 0, 64);
    *&v207[72] = v186;
    lazy protocol witness table accessor for type ViewGraphBridgePropertiesFeature and conformance ViewGraphBridgePropertiesFeature();
    ViewGraph.append<A>(feature:)();
    v211 = *&v207[32];
    v212 = *&v207[48];
    v213 = *&v207[64];
    v214 = *&v207[80];
    v208 = v206;
    v209 = *v207;
    v210 = *&v207[16];
    outlined destroy of ViewGraphBridgePropertiesFeature(&v208);
  }

  v74 = _UIUpdateAdaptiveRateNeeded();
  v75 = v192;
  if (v74)
  {
    v76 = v194;
    destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation();
    v78 = type metadata accessor for _UIHostingView.EnableVFDFeature(0, v75, v76, v77);
    swift_getWitnessTable(protocol conformance descriptor for _UIHostingView<A>.EnableVFDFeature, v78);
    ViewGraph.append<A>(feature:)();
  }

  AccessibilityViewGraph.init(graph:)(v79, &v206);
  aBlock = v206;
  v218 = *v207;
  v219 = *&v207[16];
  v220 = *&v207[32];
  lazy protocol witness table accessor for type AccessibilityViewGraph and conformance AccessibilityViewGraph();
  ViewGraph.append<A>(feature:)();
  v208 = aBlock;
  v209 = v218;
  v210 = v219;
  *&v211 = v220;
  outlined destroy of AccessibilityViewGraph(&v208);
  v80 = *(v3 + v187);
  v81 = AGSubgraphGetCurrent();
  swift_beginAccess();

  AGSubgraphSetCurrent();
  LOBYTE(aBlock) = 0;
  v82 = Attribute.init<A>(body:value:flags:update:)();
  AGSubgraphSetCurrent();

  *&aBlock = v80;
  DWORD2(aBlock) = v82;
  lazy protocol witness table accessor for type InteractiveResizeChangeViewGraphFeature and conformance InteractiveResizeChangeViewGraphFeature();
  ViewGraph.append<A>(feature:)();

  v83 = MEMORY[0x1E69E7CC0];
  v84 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI7EventIDV_AC0E7BindingVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(&v218 + 1) = &type metadata for HoverEventDispatcher;
  *&v219 = lazy protocol witness table accessor for type HoverEventDispatcher and conformance HoverEventDispatcher();
  *&aBlock = v84;

  EventBindingManager.addForwardedEventDispatcher(_:)();

  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  *(&v218 + 1) = &type metadata for PencilDoubleTapEventDispatcher;
  *&v219 = lazy protocol witness table accessor for type PencilDoubleTapEventDispatcher and conformance PencilDoubleTapEventDispatcher();

  EventBindingManager.addForwardedEventDispatcher(_:)();

  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  *(&v218 + 1) = &type metadata for PencilSqueezeEventDispatcher;
  *&v219 = lazy protocol witness table accessor for type PencilSqueezeEventDispatcher and conformance PencilSqueezeEventDispatcher();

  EventBindingManager.addForwardedEventDispatcher(_:)();

  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  v85 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI7EventIDV_SayAC8KeyPressV7HandlerVGTt0g5Tf4g_n(v83);
  *(&v218 + 1) = &type metadata for KeyEventDispatcher;
  *&v219 = lazy protocol witness table accessor for type KeyEventDispatcher and conformance KeyEventDispatcher();
  *&aBlock = v85;

  EventBindingManager.addForwardedEventDispatcher(_:)();

  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  type metadata accessor for UIKitEventBindingBridge(0);
  swift_allocObject();

  *(v3 + *((*v67 & *v3) + 0xE0)) = UIKitEventBindingBridge.init(eventBindingManager:)(v86);
  v87 = v194;
  v89 = type metadata accessor for _UIHostingView(0, v75, v194, v88);
  v203.receiver = v3;
  v203.super_class = v89;
  v199 = v89;
  v90 = objc_msgSendSuper2(&v203, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v91 = v90;
  swift_unknownObjectWeakInit();

  v93 = type metadata accessor for _UIHostingView.HostViewGraph(0, v75, v87, v92);
  swift_getWitnessTable(protocol conformance descriptor for _UIHostingView<A>.HostViewGraph, v93);
  ViewGraph.append<A>(feature:)();
  v94 = (*(*(v93 - 8) + 8))(&aBlock, v93);
  (*((*v67 & *v91) + 0x5C0))(v94);
  v95 = _UIHostingView.base.getter();
  UIHostingViewBase.setUp()();

  static RepresentableContextValues.current.getter();
  v96 = aBlock;
  if (aBlock != 1)
  {
    v97 = *(&aBlock + 1);
    v98 = v218;
    v99 = v219;
    if (aBlock)
    {

      v100 = v199;
      WitnessTable = swift_getWitnessTable(protocol conformance descriptor for _UIHostingView<A>, v199);
      ViewRendererHost.setPreferenceBridge(_:)(v96, v100, WitnessTable);
    }

    *&aBlock = v96;
    *(&aBlock + 1) = v97;
    v218 = v98;
    LOBYTE(v219) = v99 & 1;
    RepresentableContextValues.environment.getter();
    v216 = v215;
    UIHostingViewBase.initialInheritedEnvironment.setter();
    outlined consume of RepresentableContextValues?(v96, v97, v98, *(&v98 + 1), v99);
    v68 = v200;
  }

  specialized _UIHostingView.feedbackCache.getter();
  swift_unknownObjectWeakAssign();
  v102 = v91;

  v103 = *(v102 + *((*v67 & *v102) + 0x150));
  v104 = swift_getWitnessTable(protocol conformance descriptor for _UIHostingView<A>, v199);
  *(v103 + 40) = v104;
  swift_unknownObjectWeakAssign();

  UIKitStatusBarBridge.addPreferences(to:)();

  v193 = *((*v67 & *v102) + 0x188);
  *(*&v193[v102] + OBJC_IVAR____TtC7SwiftUI17ContextMenuBridge_host + 8) = v104;
  swift_unknownObjectWeakAssign();
  v105 = *(v102 + *((*v67 & *v102) + 0x100));
  *(v105 + *((*v105 & *v67) + 0x60) + 8) = v104;
  swift_unknownObjectWeakAssign();

  GraphHost.addPreference<A>(_:)();
  v106 = *(v102 + *((*v67 & *v102) + 0x108));
  *(v106 + *((*v106 & *v67) + 0x60) + 8) = v104;
  swift_unknownObjectWeakAssign();

  v107 = GraphHost.addPreference<A>(_:)();
  v109 = _UIHostingView.sheetBridge.getter(v107, v108);
  if (v109)
  {
    *&v109[direct field offset for SheetBridge.host + 8] = v104;
    v110 = v109;
    swift_unknownObjectWeakAssign();
  }

  v111 = *v67 & *v102;
  v112 = *(v102 + *(v111 + 0x110));
  if (v112)
  {
    v113 = *((*v112 & *v67) + 0x210);
    v114 = v112;
    v113(v68);
    outlined consume of SheetBridge<SheetPreference.Key>??(v112);
    v111 = *v67 & *v102;
  }

  v115 = *(v102 + *(v111 + 280));
  v116 = swift_getWitnessTable(protocol conformance descriptor for _UIHostingView<A>, v199);
  *(v115 + 32) = &protocol witness table for _UIHostingView<A>;
  *(v115 + 40) = v116;
  swift_unknownObjectWeakAssign();

  v117 = FocusBridge.host.getter();
  if (v117)
  {
    v119 = v117;
    v120 = v118;
    v121 = swift_getObjectType();
    (*(*(*(v120 + 8) + 8) + 8))(v121);

    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
  }

  v122 = *((*v67 & *v102) + 0x120);
  *(*(v102 + v122) + OBJC_IVAR____TtC7SwiftUI17DragAndDropBridge_host + 8) = v104;
  swift_unknownObjectWeakAssign();
  v123 = *(v102 + v122);
  v124 = &v123[OBJC_IVAR____TtC7SwiftUI17DragAndDropBridge_host];
  if (!swift_unknownObjectWeakLoadStrong())
  {
    goto LABEL_39;
  }

  v125 = *(v124 + 1);
  v126 = swift_getObjectType();
  v127 = *(*(v125 + 16) + 8);
  v128 = v123;
  LOBYTE(v126) = ViewGraphDelegate.shouldCreateUIInteractions.getter(v126, v127);
  swift_unknownObjectRelease();
  if (v126)
  {
    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
  }

  GraphHost.addPreference<A>(_:)();
  *(*(v102 + *((*v67 & *v102) + 0x130)) + OBJC_IVAR____TtC7SwiftUI13TooltipBridge_host + 8) = v104;
  swift_unknownObjectWeakAssign();
  v129 = v102;
  GraphHost.addPreference<A>(_:)();
  *(*(v129 + *((*v67 & *v129) + 0x138)) + OBJC_IVAR____TtC7SwiftUI14EditMenuBridge_host + 8) = v104;
  swift_unknownObjectWeakAssign();
  GraphHost.addPreference<A>(_:)();
  GraphHost.addPreference<A>(_:)();
  *(*(v129 + *((*v67 & *v129) + 0x170)) + OBJC_IVAR____TtC7SwiftUI18PencilEventsBridge_host + 8) = v104;
  swift_unknownObjectWeakAssign();
  GraphHost.addPreference<A>(_:)();
  v130 = *v67 & *v129;
  v197 = v90;
  v131 = *(v130 + 360);
  *(*(v129 + v131) + OBJC_IVAR____TtC7SwiftUI24AVKitCaptureButtonBridge_host + 8) = v104;
  swift_unknownObjectWeakAssign();

  v132 = *(v129 + v131);
  v133 = &v132[OBJC_IVAR____TtC7SwiftUI24AVKitCaptureButtonBridge_host];
  if (!swift_unknownObjectWeakLoadStrong())
  {
    goto LABEL_40;
  }

  v134 = *(v133 + 1);
  v135 = swift_getObjectType();
  v136 = *(v134 + 8);
  v137 = *(v136 + 8);
  v138 = v132;
  v137(v135, v136);
  swift_unknownObjectRelease();
  GraphHost.addPreference<A>(_:)();

  v139 = [v129 traitCollection];

  v140 = [v139 userInterfaceIdiom];
  if (v140 == 1 || (v141 = [v129 traitCollection], v142 = objc_msgSend(v141, sel_userInterfaceIdiom), v141, v142 == 6))
  {
    v143 = [objc_allocWithZone(type metadata accessor for PointerBridge()) init];
    *&v143[OBJC_IVAR____TtC7SwiftUI13PointerBridge_host + 8] = v104;
    swift_unknownObjectWeakAssign();
    GraphHost.addPreference<A>(_:)();
    v144 = *((*MEMORY[0x1E69E7D40] & *v129) + 0x178);
    v145 = *(v129 + v144);
    *(v129 + v144) = v143;
  }

  v146 = *&v193[v102];
  v147 = &v146[OBJC_IVAR____TtC7SwiftUI17ContextMenuBridge_host];
  Strong = swift_unknownObjectWeakLoadStrong();
  v149 = v198;
  if (!Strong)
  {
LABEL_41:
    __break(1u);
  }

  v150 = *(v147 + 1);
  v151 = swift_getObjectType();
  v152 = *(*(v150 + 16) + 8);
  v153 = v146;
  LOBYTE(v151) = ViewGraphDelegate.shouldCreateUIInteractions.getter(v151, v152);
  swift_unknownObjectRelease();
  v154 = v200;
  if (v151)
  {
    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
  }

  v155 = MEMORY[0x1E69E7D40];
  v156 = *((*MEMORY[0x1E69E7D40] & *v129) + 0x1A0);
  *(*(v129 + v156) + OBJC_IVAR____TtC7SwiftUI37UILargeContentViewerInteractionBridge_host + 8) = v104;
  v157 = swift_unknownObjectWeakAssign();
  v158 = *(v129 + v156);
  MEMORY[0x1EEE9AC00](v157);
  *(&v186 - 2) = v158;
  *(&v186 - 1) = v154;
  v159 = v129;
  v160 = v158;
  static Update.ensure<A>(_:)();

  v161 = *((*v155 & *v159) + 0x78);
  v162 = *(v159 + v161);
  v163 = swift_getWitnessTable(protocol conformance descriptor for _UIHostingView<A>, v199);
  swift_beginAccess();
  *(v162 + 24) = v163;
  swift_unknownObjectWeakAssign();

  v164 = *(v159 + v161);
  v165 = *((*v155 & *v159) + 0xE0);
  swift_beginAccess();
  *(v164 + 40) = MEMORY[0x1E697F3C8];
  swift_unknownObjectWeakAssign();
  v166 = *(v159 + v165);
  v167 = *(v166 + 32);

  if (v167)
  {
    [v159 addGestureRecognizer_];
  }

  [v159 addGestureRecognizer_];

  _UIHostingView.legacySetupKeyboardAvoidanceNotifications()();
  if (isAppleInternalBuild()() && (_UIHostingView.isWindowRoot.getter() & 1) != 0)
  {
    v202[0] = 0;
    v168 = getpid();
    LODWORD(v199) = v168;
    *&aBlock = 0;
    *(&aBlock + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(16);

    strcpy(&aBlock, "NameLayerTree-");
    HIBYTE(aBlock) = -18;
    v201 = v168;
    v169 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x18D00C9B0](v169);

    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
    v170 = static OS_dispatch_queue.main.getter();
    v171 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v172 = swift_allocObject();
    v173 = v194;
    v172[2] = v192;
    v172[3] = v173;
    v172[4] = v171;
    *&v219 = partial apply for closure #1 in _UIHostingView.init(rootView:);
    *(&v219 + 1) = v172;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    *&v218 = thunk for @escaping @callee_guaranteed (@unowned Int32) -> ();
    *(&v218 + 1) = &block_descriptor_115_1;
    v174 = _Block_copy(&aBlock);

    v175 = String.utf8CString.getter();

    notify_register_dispatch((v175 + 32), v202 + 1, v170, v174);

    _Block_release(v174);

    v176 = static OS_dispatch_queue.main.getter();
    v177 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v178 = swift_allocObject();
    *(v178 + 16) = v192;
    *(v178 + 24) = v173;
    v149 = v198;
    *(v178 + 32) = v199;
    *(v178 + 40) = v177;
    *&v219 = partial apply for closure #2 in _UIHostingView.init(rootView:);
    *(&v219 + 1) = v178;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    *&v218 = thunk for @escaping @callee_guaranteed (@unowned Int32) -> ();
    *(&v218 + 1) = &block_descriptor_122;
    v179 = _Block_copy(&aBlock);

    notify_register_dispatch("NameLayerTree", v202, v176, v179);
    _Block_release(v179);

    v180 = v159 + *((*MEMORY[0x1E69E7D40] & *v159) + 0xE8);
    *v180 = HIDWORD(v202[0]) | (LODWORD(v202[0]) << 32);
    v180[8] = 0;
  }

  v181 = [objc_opt_self() defaultCenter];
  [v181 addObserver:v159 selector:sel_accessibilityFocusedElementDidChange_ name:*MEMORY[0x1E69DD8C0] object:0];
  v182 = one-time initialization token for didUpdateListLayout;
  v183 = v159;
  if (v182 != -1)
  {
    swift_once();
  }

  [v181 addObserver:v183 selector:sel_clarityUISettingDidChange_ name:static ClarityUI.didUpdateListLayout object:0];

  _UIHostingView.addToHostingViewRegistry()();
  v184 = v195;
  if ((static Spacing.hasSetupDefaultValue & 1) == 0)
  {
    static Spacing.hasSetupDefaultValue = 1;
  }

  (*(v196 + 8))(v184, v149);
  static Update.end()();
  return v183;
}

{
  v3 = v2;
  v213 = *MEMORY[0x1E69E9840];
  ObjectType = swift_getObjectType();
  v190 = type metadata accessor for UIHostingViewBase.Options();
  v182 = *(v190 - 8);
  MEMORY[0x1EEE9AC00](v190);
  v184 = &v177 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v189 = &v177 - v8;
  v9 = type metadata accessor for UIHostingViewBase.Configuration();
  v186 = *(v9 - 8);
  v187 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v181 = &v177 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v188 = &v177 - v12;
  v13 = MEMORY[0x1E69E7D40];
  *(v2 + *((*MEMORY[0x1E69E7D40] & *v2) + 0x70)) = 0;
  v14 = *((*v13 & *v2) + 0x78);
  type metadata accessor for EventBindingManager();
  v15 = EventBindingManager.__allocating_init()();
  v183 = v14;
  *(v2 + v14) = v15;
  *(v2 + *((*v13 & *v2) + 0x80)) = 0;
  *(v2 + *((*v13 & *v2) + 0x88)) = 0;
  *(v2 + *((*v13 & *v2) + 0x90)) = 1;
  *(v2 + *((*v13 & *v2) + 0x98)) = 0;
  *(v2 + *((*v13 & *v2) + 0xA0)) = 0;
  v16 = v3 + *((*v13 & *v3) + 0xA8);
  *v16 = 0u;
  *(v16 + 1) = 0u;
  v16[32] = 1;
  v17 = v3 + *((*v13 & *v3) + 0xB0);
  *v17 = 0u;
  *(v17 + 1) = 0u;
  v17[32] = 1;
  *(v2 + *((*v13 & *v2) + 0xB8)) = 0;
  *(v2 + *((*v13 & *v2) + 0xC0)) = 0;
  *(v2 + *((*v13 & *v2) + 0xC8)) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + *((*v13 & *v2) + 0xD8)) = 0;
  v18 = v3 + *((*v13 & *v3) + 0xE8);
  *v18 = 0;
  v18[8] = 1;
  *(v2 + *((*v13 & *v2) + 0xF0)) = 0;
  *(v2 + *((*v13 & *v2) + 0xF8)) = 2;
  v19 = *((*v13 & *v2) + 0x100);
  type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(0, &lazy cache variable for type metadata for DeprecatedAlertBridge<Alert.Presentation>, &type metadata for Alert.Presentation, &protocol witness table for Alert.Presentation, type metadata accessor for DeprecatedAlertBridge);
  v21 = v20;
  v22 = objc_allocWithZone(v20);
  *(v22 + *((*v13 & *v22) + 0x60) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v22 + *((*v13 & *v22) + 0x68)) = 0;
  *(v22 + *((*v13 & *v22) + 0x70)) = 0;
  *(v22 + *((*v13 & *v22) + 0x78)) = 0;
  EnvironmentValues.init()();
  v23 = v22 + *((*v13 & *v22) + 0x88);
  *v23 = 0u;
  *(v23 + 1) = 0u;
  *(v23 + 2) = 0u;
  *(v23 + 3) = 0u;
  *(v23 + 4) = 0u;
  *(v23 + 5) = 0u;
  *(v23 + 6) = 0u;
  *(v23 + 7) = 0u;
  *(v23 + 8) = 0u;
  *(v23 + 9) = 0u;
  *(v23 + 10) = 0u;
  *(v23 + 11) = 0u;
  *(v23 + 12) = 0u;
  *(v23 + 13) = 0u;
  *(v23 + 14) = 0u;
  *(v23 + 15) = 0u;
  *(v23 + 16) = 0u;
  *(v23 + 34) = 0;
  *(v22 + *((*v13 & *v22) + 0x90)) = 0;
  *(v22 + *((*v13 & *v22) + 0x98)) = 1;
  v195.receiver = v22;
  v195.super_class = v21;
  *(v2 + v19) = objc_msgSendSuper2(&v195, sel_init);
  v24 = *((*v13 & *v2) + 0x108);
  type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(0, &lazy cache variable for type metadata for DeprecatedAlertBridge<ActionSheet.Presentation>, &type metadata for ActionSheet.Presentation, &protocol witness table for ActionSheet.Presentation, type metadata accessor for DeprecatedAlertBridge);
  v26 = v25;
  v27 = objc_allocWithZone(v25);
  *(v27 + *((*v13 & *v27) + 0x60) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v27 + *((*v13 & *v27) + 0x68)) = 0;
  *(v27 + *((*v13 & *v27) + 0x70)) = 0;
  *(v27 + *((*v13 & *v27) + 0x78)) = 0;
  EnvironmentValues.init()();
  v28 = v27 + *((*v13 & *v27) + 0x88);
  *v28 = 0u;
  *(v28 + 1) = 0u;
  *(v28 + 2) = 0u;
  *(v28 + 3) = 0u;
  *(v28 + 4) = 0u;
  *(v28 + 5) = 0u;
  *(v28 + 6) = 0u;
  *(v28 + 7) = 0u;
  *(v28 + 8) = 0u;
  *(v28 + 9) = 0u;
  *(v28 + 20) = 0;
  *(v27 + *((*v13 & *v27) + 0x90)) = 0;
  *(v27 + *((*v13 & *v27) + 0x98)) = 0;
  v194.receiver = v27;
  v194.super_class = v26;
  *(v3 + v24) = objc_msgSendSuper2(&v194, sel_init);
  *(v3 + *((*v13 & *v3) + 0x110)) = 1;
  v29 = *((*v13 & *v3) + 0x118);
  type metadata accessor for FocusBridge();
  v30 = swift_allocObject();
  *(v30 + 16) = 0;
  *(v30 + 32) = 0;
  *(v30 + 40) = 0;
  swift_unknownObjectWeakInit();
  v31 = MEMORY[0x1E69E7CC0];
  v32 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_7SwiftUI12PropertyListVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(v30 + 48) = 0;
  *(v30 + 56) = v31;
  *(v30 + 64) = v32;
  EnvironmentValues.init()();
  *(v30 + 120) = 0u;
  *(v30 + 104) = 0u;
  *(v30 + 88) = 0u;
  v177 = xmmword_18CD6A6D0;
  *(v30 + 136) = xmmword_18CD6A6D0;
  swift_weakInit();
  *(v30 + 160) = 0;
  *(v30 + 168) = 0;
  *(v30 + 176) = 1;
  *(v3 + v29) = v30;
  v33 = *((*v13 & *v3) + 0x120);
  *(v3 + v33) = [objc_allocWithZone(type metadata accessor for DragAndDropBridge()) init];
  *(v3 + *((*v13 & *v3) + 0x128)) = 0;
  v34 = *((*v13 & *v3) + 0x130);
  *(v3 + v34) = [objc_allocWithZone(type metadata accessor for TooltipBridge()) init];
  v35 = *((*v13 & *v3) + 0x138);
  *(v3 + v35) = [objc_allocWithZone(type metadata accessor for EditMenuBridge()) init];
  *(v3 + *((*v13 & *v3) + 0x140)) = 0;
  *(v3 + *((*v13 & *v3) + 0x148)) = 0;
  v36 = *((*v13 & *v3) + 0x150);
  type metadata accessor for UIKitStatusBarBridge();
  v37 = swift_allocObject();
  *(v37 + 16) = 514;
  *(v37 + 24) = v31;
  *(v37 + 40) = 0;
  swift_unknownObjectWeakInit();
  *(v3 + v36) = v37;
  swift_weakInit();
  *(v3 + *((*v13 & *v3) + 0x160)) = 0;
  v38 = *((*v13 & *v3) + 0x168);
  *(v3 + v38) = [objc_allocWithZone(type metadata accessor for AVKitCaptureButtonBridge()) init];
  v39 = *((*v13 & *v3) + 0x170);
  *(v3 + v39) = [objc_allocWithZone(type metadata accessor for PencilEventsBridge()) init];
  *(v3 + *((*v13 & *v3) + 0x178)) = 0;
  *(v3 + *((*v13 & *v3) + 0x180)) = 0;
  v40 = *((*v13 & *v3) + 0x188);
  *(v3 + v40) = [objc_allocWithZone(type metadata accessor for ContextMenuBridge()) init];
  v41 = *((*v13 & *v3) + 0x190);
  type metadata accessor for InteractiveResizeBridge();
  v42 = swift_allocObject();
  *(v42 + 16) = 0;
  *(v42 + 20) = 0;
  *(v42 + 24) = 0;
  v179 = v41;
  *(v3 + v41) = v42;
  *(v3 + *((*v13 & *v3) + 0x198)) = 0;
  v43 = *((*v13 & *v3) + 0x1A0);
  *(v3 + v43) = [objc_allocWithZone(type metadata accessor for UILargeContentViewerInteractionBridge()) init];
  *(v3 + *((*v13 & *v3) + 0x1A8)) = 0;
  *(v3 + *((*v13 & *v3) + 0x1B0)) = 0;
  *(v3 + *((*v13 & *v3) + 0x1B8)) = 0;
  *(v3 + *((*v13 & *v3) + 0x1C0) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v3 + *((*v13 & *v3) + 0x1C8)) = 0;
  v44 = v3 + *((*v13 & *v3) + 0x1D0);
  *v44 = 0;
  v44[8] = 0;
  *(v44 + 1) = xmmword_18CD76350;
  swift_unknownObjectWeakInit();
  *(v3 + *((*v13 & *v3) + 0x1E0)) = 0;
  *(v3 + *((*v13 & *v3) + 0x1E8)) = 0;
  *(v3 + *((*v13 & *v3) + 0x1F0)) = 0;
  *(v3 + *((*v13 & *v3) + 0x1F8)) = 0;
  *(v3 + *((*v13 & *v3) + 0x200)) = 0;
  v45 = v3 + *((*v13 & *v3) + 0x60);
  v178 = a1;
  v46 = outlined init with copy of ModifiedContent<TableRowView, CollectionViewCellModifier>(a1, v45, &lazy cache variable for type metadata for ModifiedContent<AnyView, RootModifier>, MEMORY[0x1E6981910], &type metadata for RootModifier);
  MEMORY[0x18D00ABE0](v46);
  type metadata accessor for PlatformColorDefinition();
  type metadata accessor for UIKitPlatformColorDefinition(0);
  static PlatformSystemDefinition.uiKit.getter();
  static PlatformColorDefinition.setInternalDefinition(_:system:)();
  type metadata accessor for PlatformScrollEdgeEffectTagDefinition();
  type metadata accessor for ScrollEdgeEffectTagModifierDefinition(0);
  static PlatformScrollEdgeEffectTagDefinition.setDefinition(_:)();
  type metadata accessor for PlatformItemsDefinition();
  type metadata accessor for UIKitPlatformItemsDefinition(0);
  static PlatformSystemDefinition.uiKit.getter();
  v47 = static PlatformItemsDefinition.setDefinition(_:system:)();
  v48 = *(ObjectType + 1384);
  v180 = ObjectType;
  v48(&v198, v47);
  v49 = v198;
  type metadata accessor for PlatformViewDefinition();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIView, 0x1E69DD250);
  if (!static PlatformViewDefinition.for (_:)())
  {
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(0, &lazy cache variable for type metadata for ModifiedContent<AnyView, RootModifier>, MEMORY[0x1E6981910], &type metadata for RootModifier, MEMORY[0x1E697E830]);
  LOBYTE(v196) = v49;
  type metadata accessor for ViewGraphHost();
  swift_allocObject();
  lazy protocol witness table accessor for type ModifiedContent<AnyView, DocumentSceneRootBoxModifier> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<AnyView, RootModifier> and conformance <> ModifiedContent<A, B>, &lazy cache variable for type metadata for ModifiedContent<AnyView, RootModifier>, &type metadata for RootModifier, lazy protocol witness table accessor for type RootModifier and conformance RootModifier);
  v185 = ViewGraphHost.init<A>(rootViewType:outputs:viewDefinition:)();
  v50 = *(v185 + 88);

  v51 = v188;
  v52 = UIHostingViewBase.Configuration.init()();
  v53 = v184;
  MEMORY[0x18D001BC0](v52);
  v54 = UIHostingViewBase.Configuration.options.modify();
  v55 = v189;
  specialized OptionSet<>.insert(_:)(v189, v53);
  v56 = *(v182 + 8);
  v57 = v190;
  v56(v53, v190);
  v56(v55, v57);
  v58 = v54(&v198, 0);
  v59 = v51;
  if (((*(v180 + 1408))(v58) & 1) == 0)
  {
    v60 = v184;
    static UIHostingViewBase.Options.allowUnregisteredGeometryChanges.getter();
    v61 = UIHostingViewBase.Configuration.options.modify();
    v62 = v59;
    v63 = v189;
    specialized OptionSet<>.insert(_:)(v189, v60);
    v64 = v190;
    v56(v60, v190);
    v65 = v63;
    v59 = v62;
    v56(v65, v64);
    v61(&v198, 0);
  }

  (*(v186 + 16))(v181, v59, v187);
  v66 = objc_allocWithZone(type metadata accessor for UIHostingViewBase());

  v67 = UIHostingViewBase.init(viewGraph:configuration:)();
  v68 = MEMORY[0x1E69E7D40];
  *(v3 + *((*MEMORY[0x1E69E7D40] & *v3) + 0x68)) = v67;

  *&v198 = specialized FocusViewGraph.init(graph:)(v69);
  *(&v198 + 1) = v70;
  LOWORD(v199) = v71 & 0x101;
  BYTE2(v199) = v72 & 1;
  lazy protocol witness table accessor for type FocusViewGraph and conformance FocusViewGraph();
  ViewGraph.append<A>(feature:)();
  lazy protocol witness table accessor for type PlatformItemListViewGraph and conformance PlatformItemListViewGraph();
  *&v198 = 0;
  WORD4(v198) = 0;
  ViewGraph.append<A>(feature:)();
  lazy protocol witness table accessor for type ViewGraphBridgePropertiesAreInput and conformance ViewGraphBridgePropertiesAreInput();
  if (static UserDefaultKeyedFeature.isEnabled.getter())
  {
    v73 = *MEMORY[0x1E698D3F8];
    v196 = 0uLL;
    *v197 = v73;
    memset(&v197[8], 0, 64);
    *&v197[72] = v177;
    lazy protocol witness table accessor for type ViewGraphBridgePropertiesFeature and conformance ViewGraphBridgePropertiesFeature();
    ViewGraph.append<A>(feature:)();
    v201 = *&v197[32];
    v202 = *&v197[48];
    v203 = *&v197[64];
    v204 = *&v197[80];
    v198 = v196;
    v199 = *v197;
    v200 = *&v197[16];
    outlined destroy of ViewGraphBridgePropertiesFeature(&v198);
  }

  if (_UIUpdateAdaptiveRateNeeded())
  {
    type metadata accessor for _UIHostingView<ModifiedContent<AnyView, RootModifier>>.EnableVFDFeature(0);
    lazy protocol witness table accessor for type _UIHostingView<ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>> and conformance _UIHostingView<A>(&lazy protocol witness table cache variable for type _UIHostingView<ModifiedContent<AnyView, RootModifier>>.EnableVFDFeature and conformance _UIHostingView<A>.EnableVFDFeature, type metadata accessor for _UIHostingView<ModifiedContent<AnyView, RootModifier>>.EnableVFDFeature, protocol conformance descriptor for _UIHostingView<A>.EnableVFDFeature);
    ViewGraph.append<A>(feature:)();
  }

  AccessibilityViewGraph.init(graph:)(v74, &v196);
  aBlock = v196;
  v210 = *v197;
  v211 = *&v197[16];
  v212 = *&v197[32];
  lazy protocol witness table accessor for type AccessibilityViewGraph and conformance AccessibilityViewGraph();
  ViewGraph.append<A>(feature:)();
  v198 = aBlock;
  v199 = v210;
  v200 = v211;
  *&v201 = v212;
  outlined destroy of AccessibilityViewGraph(&v198);
  v75 = *(v3 + v179);
  v76 = AGSubgraphGetCurrent();
  swift_beginAccess();

  AGSubgraphSetCurrent();
  LOBYTE(aBlock) = 0;
  v77 = Attribute.init<A>(body:value:flags:update:)();
  AGSubgraphSetCurrent();

  *&aBlock = v75;
  DWORD2(aBlock) = v77;
  lazy protocol witness table accessor for type InteractiveResizeChangeViewGraphFeature and conformance InteractiveResizeChangeViewGraphFeature();
  ViewGraph.append<A>(feature:)();

  v78 = MEMORY[0x1E69E7CC0];
  v79 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI7EventIDV_AC0E7BindingVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(&v210 + 1) = &type metadata for HoverEventDispatcher;
  *&v211 = lazy protocol witness table accessor for type HoverEventDispatcher and conformance HoverEventDispatcher();
  *&aBlock = v79;

  EventBindingManager.addForwardedEventDispatcher(_:)();

  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  *(&v210 + 1) = &type metadata for PencilDoubleTapEventDispatcher;
  *&v211 = lazy protocol witness table accessor for type PencilDoubleTapEventDispatcher and conformance PencilDoubleTapEventDispatcher();

  EventBindingManager.addForwardedEventDispatcher(_:)();

  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  *(&v210 + 1) = &type metadata for PencilSqueezeEventDispatcher;
  *&v211 = lazy protocol witness table accessor for type PencilSqueezeEventDispatcher and conformance PencilSqueezeEventDispatcher();

  EventBindingManager.addForwardedEventDispatcher(_:)();

  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  v80 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI7EventIDV_SayAC8KeyPressV7HandlerVGTt0g5Tf4g_n(v78);
  *(&v210 + 1) = &type metadata for KeyEventDispatcher;
  *&v211 = lazy protocol witness table accessor for type KeyEventDispatcher and conformance KeyEventDispatcher();
  *&aBlock = v80;

  EventBindingManager.addForwardedEventDispatcher(_:)();

  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  type metadata accessor for UIKitEventBindingBridge(0);
  swift_allocObject();

  *(v3 + *((*v68 & *v3) + 0xE0)) = UIKitEventBindingBridge.init(eventBindingManager:)(v81);
  type metadata accessor for _UIHostingView<ModifiedContent<AnyView, RootModifier>>(0);
  v193.receiver = v3;
  v193.super_class = v82;
  v83 = objc_msgSendSuper2(&v193, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  swift_unknownObjectWeakInit();
  type metadata accessor for _UIHostingView<ModifiedContent<AnyView, RootModifier>>.HostViewGraph(0);
  lazy protocol witness table accessor for type _UIHostingView<ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>> and conformance _UIHostingView<A>(&lazy protocol witness table cache variable for type _UIHostingView<ModifiedContent<AnyView, RootModifier>>.HostViewGraph and conformance _UIHostingView<A>.HostViewGraph, type metadata accessor for _UIHostingView<ModifiedContent<AnyView, RootModifier>>.HostViewGraph, protocol conformance descriptor for _UIHostingView<A>.HostViewGraph);
  v84 = v83;
  ViewGraph.append<A>(feature:)();
  v85 = outlined destroy of _UIHostingView<ModifiedContent<AnyView, EmptyModifier>>.HostViewGraph(&aBlock, type metadata accessor for _UIHostingView<ModifiedContent<AnyView, RootModifier>>.HostViewGraph);
  (*((*v68 & *v84) + 0x5C0))(v85);
  v86 = specialized _UIHostingView.base.getter();
  UIHostingViewBase.setUp()();

  static RepresentableContextValues.current.getter();
  v87 = aBlock;
  v189 = v50;
  v190 = v83;
  if (aBlock != 1)
  {
    v88 = *(&aBlock + 1);
    v89 = v210;
    v90 = v211;
    if (aBlock)
    {

      specialized ViewRendererHost.setPreferenceBridge(_:)(v91);
    }

    *&aBlock = v87;
    *(&aBlock + 1) = v88;
    v210 = v89;
    LOBYTE(v211) = v90 & 1;
    RepresentableContextValues.environment.getter();
    v207 = v208;
    UIHostingViewBase.initialInheritedEnvironment.setter();
    outlined consume of RepresentableContextValues?(v87, v88, v89, *(&v89 + 1), v90);
    v50 = v189;
  }

  specialized _UIHostingView.feedbackCache.getter();
  swift_unknownObjectWeakAssign();
  v92 = v84;

  v93 = *(v92 + *((*v68 & *v92) + 0x150));
  v94 = lazy protocol witness table accessor for type _UIHostingView<ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>> and conformance _UIHostingView<A>(&lazy protocol witness table cache variable for type _UIHostingView<ModifiedContent<AnyView, RootModifier>> and conformance _UIHostingView<A>, type metadata accessor for _UIHostingView<ModifiedContent<AnyView, RootModifier>>, protocol conformance descriptor for _UIHostingView<A>);
  *(v93 + 40) = v94;
  swift_unknownObjectWeakAssign();

  UIKitStatusBarBridge.addPreferences(to:)();

  v184 = *((*v68 & *v92) + 0x188);
  *(*&v184[v92] + OBJC_IVAR____TtC7SwiftUI17ContextMenuBridge_host + 8) = v94;
  swift_unknownObjectWeakAssign();
  v95 = *(v92 + *((*v68 & *v92) + 0x100));
  *(v95 + *((*v95 & *v68) + 0x60) + 8) = v94;
  swift_unknownObjectWeakAssign();

  GraphHost.addPreference<A>(_:)();
  v96 = *(v92 + *((*v68 & *v92) + 0x108));
  *(v96 + *((*v96 & *v68) + 0x60) + 8) = v94;
  swift_unknownObjectWeakAssign();

  v97 = GraphHost.addPreference<A>(_:)();
  v99 = specialized _UIHostingView.sheetBridge.getter(v97, v98);
  if (v99)
  {
    *&v99[direct field offset for SheetBridge.host + 8] = v94;
    v100 = v99;
    swift_unknownObjectWeakAssign();
  }

  v101 = *v68 & *v92;
  v102 = *(v92 + *(v101 + 0x110));
  if (v102)
  {
    v103 = *((*v102 & *v68) + 0x210);
    v104 = v102;
    v103(v50);
    outlined consume of SheetBridge<SheetPreference.Key>??(v102);
    v101 = *v68 & *v92;
  }

  v105 = *(v92 + *(v101 + 280));
  v106 = lazy protocol witness table accessor for type _UIHostingView<ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>> and conformance _UIHostingView<A>(&lazy protocol witness table cache variable for type _UIHostingView<ModifiedContent<AnyView, RootModifier>> and conformance _UIHostingView<A>, type metadata accessor for _UIHostingView<ModifiedContent<AnyView, RootModifier>>, protocol conformance descriptor for _UIHostingView<A>);
  *(v105 + 32) = &protocol witness table for _UIHostingView<A>;
  *(v105 + 40) = v106;
  swift_unknownObjectWeakAssign();

  v107 = FocusBridge.host.getter();
  if (v107)
  {
    v109 = v107;
    v110 = v108;
    v111 = swift_getObjectType();
    (*(*(*(v110 + 8) + 8) + 8))(v111);

    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
  }

  v112 = *((*v68 & *v92) + 0x120);
  *(*(v92 + v112) + OBJC_IVAR____TtC7SwiftUI17DragAndDropBridge_host + 8) = v94;
  swift_unknownObjectWeakAssign();
  v113 = *(v92 + v112);
  v114 = &v113[OBJC_IVAR____TtC7SwiftUI17DragAndDropBridge_host];
  if (!swift_unknownObjectWeakLoadStrong())
  {
    goto LABEL_45;
  }

  v115 = *(v114 + 1);
  v116 = swift_getObjectType();
  v117 = *(*(v115 + 16) + 8);
  v118 = v113;
  LOBYTE(v116) = ViewGraphDelegate.shouldCreateUIInteractions.getter(v116, v117);
  swift_unknownObjectRelease();
  if (v116)
  {
    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
  }

  GraphHost.addPreference<A>(_:)();
  *(*(v92 + *((*v68 & *v92) + 0x130)) + OBJC_IVAR____TtC7SwiftUI13TooltipBridge_host + 8) = v94;
  swift_unknownObjectWeakAssign();
  v119 = v92;
  GraphHost.addPreference<A>(_:)();
  *(*(v119 + *((*v68 & *v119) + 0x138)) + OBJC_IVAR____TtC7SwiftUI14EditMenuBridge_host + 8) = v94;
  swift_unknownObjectWeakAssign();
  GraphHost.addPreference<A>(_:)();
  GraphHost.addPreference<A>(_:)();
  *(*(v119 + *((*v68 & *v119) + 0x170)) + OBJC_IVAR____TtC7SwiftUI18PencilEventsBridge_host + 8) = v94;
  swift_unknownObjectWeakAssign();
  GraphHost.addPreference<A>(_:)();
  v120 = *((*v68 & *v119) + 0x168);
  *(*(v119 + v120) + OBJC_IVAR____TtC7SwiftUI24AVKitCaptureButtonBridge_host + 8) = v94;
  swift_unknownObjectWeakAssign();

  v121 = *(v119 + v120);
  v122 = &v121[OBJC_IVAR____TtC7SwiftUI24AVKitCaptureButtonBridge_host];
  if (!swift_unknownObjectWeakLoadStrong())
  {
    goto LABEL_46;
  }

  v123 = *(v122 + 1);
  v124 = swift_getObjectType();
  v125 = *(v123 + 8);
  v126 = *(v125 + 8);
  v127 = v121;
  v126(v124, v125);
  swift_unknownObjectRelease();
  GraphHost.addPreference<A>(_:)();

  v128 = [v119 traitCollection];

  v129 = [v128 userInterfaceIdiom];
  v130 = MEMORY[0x1E69E7D40];
  if (v129 == 1 || (v131 = [v119 traitCollection], v132 = objc_msgSend(v131, sel_userInterfaceIdiom), v131, v132 == 6))
  {
    v133 = [objc_allocWithZone(type metadata accessor for PointerBridge()) init];
    *&v133[OBJC_IVAR____TtC7SwiftUI13PointerBridge_host + 8] = v94;
    swift_unknownObjectWeakAssign();
    GraphHost.addPreference<A>(_:)();
    v134 = *((*v130 & *v119) + 0x178);
    v135 = *(v119 + v134);
    *(v119 + v134) = v133;
  }

  v136 = *&v184[v92];
  v137 = &v136[OBJC_IVAR____TtC7SwiftUI17ContextMenuBridge_host];
  Strong = swift_unknownObjectWeakLoadStrong();
  v139 = v188;
  if (!Strong)
  {
LABEL_47:
    __break(1u);
  }

  v140 = *(v137 + 1);
  v141 = swift_getObjectType();
  v142 = *(*(v140 + 16) + 8);
  v143 = v136;
  LOBYTE(v141) = ViewGraphDelegate.shouldCreateUIInteractions.getter(v141, v142);
  swift_unknownObjectRelease();
  v144 = v189;
  if (v141)
  {
    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
  }

  v145 = *((*v130 & *v119) + 0x1A0);
  *(*(v119 + v145) + OBJC_IVAR____TtC7SwiftUI37UILargeContentViewerInteractionBridge_host + 8) = v94;
  v146 = swift_unknownObjectWeakAssign();
  v147 = *(v119 + v145);
  MEMORY[0x1EEE9AC00](v146);
  *(&v177 - 2) = v147;
  *(&v177 - 1) = v144;
  v148 = v119;
  v149 = v147;
  static Update.ensure<A>(_:)();

  v150 = *((*v130 & *v148) + 0x78);
  v151 = *(v148 + v150);
  v152 = lazy protocol witness table accessor for type _UIHostingView<ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>> and conformance _UIHostingView<A>(&lazy protocol witness table cache variable for type _UIHostingView<ModifiedContent<AnyView, RootModifier>> and conformance _UIHostingView<A>, type metadata accessor for _UIHostingView<ModifiedContent<AnyView, RootModifier>>, protocol conformance descriptor for _UIHostingView<A>);
  swift_beginAccess();
  *(v151 + 24) = v152;
  swift_unknownObjectWeakAssign();

  v153 = *(v148 + v150);
  v154 = *((*v130 & *v148) + 0xE0);
  swift_beginAccess();
  *(v153 + 40) = MEMORY[0x1E697F3C8];
  swift_unknownObjectWeakAssign();
  v155 = *(v148 + v154);
  v156 = *(v155 + 32);

  if (v156)
  {
    [v148 addGestureRecognizer_];
  }

  [v148 addGestureRecognizer_];

  specialized _UIHostingView.legacySetupKeyboardAvoidanceNotifications()();
  if (isAppleInternalBuild()())
  {
    v157 = [v148 window];
    if (v157)
    {
      v158 = v157;
      v159 = [v157 rootViewController];

      if (v159)
      {
        v160 = [v159 viewIfLoaded];

        if (v160)
        {

          if (v160 == v148)
          {
            v205 = 0;
            v192[0] = 0;
            v161 = getpid();
            LODWORD(v184) = v161;
            *&aBlock = 0;
            *(&aBlock + 1) = 0xE000000000000000;
            _StringGuts.grow(_:)(16);

            strcpy(&aBlock, "NameLayerTree-");
            HIBYTE(aBlock) = -18;
            v191 = v161;
            v162 = dispatch thunk of CustomStringConvertible.description.getter();
            MEMORY[0x18D00C9B0](v162);

            type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
            v163 = static OS_dispatch_queue.main.getter();
            v164 = swift_allocObject();
            swift_unknownObjectWeakInit();
            *&v211 = partial apply for specialized closure #1 in _UIHostingView.init(rootView:);
            *(&v211 + 1) = v164;
            *&aBlock = MEMORY[0x1E69E9820];
            *(&aBlock + 1) = 1107296256;
            *&v210 = thunk for @escaping @callee_guaranteed (@unowned Int32) -> ();
            *(&v210 + 1) = &block_descriptor_197;
            v165 = _Block_copy(&aBlock);

            v166 = String.utf8CString.getter();

            notify_register_dispatch((v166 + 32), &v205, v163, v165);

            _Block_release(v165);

            v167 = static OS_dispatch_queue.main.getter();
            v168 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v169 = swift_allocObject();
            *(v169 + 16) = v184;
            *(v169 + 24) = v168;
            *&v211 = partial apply for specialized closure #2 in _UIHostingView.init(rootView:);
            *(&v211 + 1) = v169;
            *&aBlock = MEMORY[0x1E69E9820];
            *(&aBlock + 1) = 1107296256;
            *&v210 = thunk for @escaping @callee_guaranteed (@unowned Int32) -> ();
            *(&v210 + 1) = &block_descriptor_204;
            v170 = _Block_copy(&aBlock);

            notify_register_dispatch("NameLayerTree", v192, v167, v170);
            _Block_release(v170);

            v171 = v148 + *((*v130 & *v148) + 0xE8);
            *v171 = v205 | (v192[0] << 32);
            v171[8] = 0;
          }
        }
      }
    }
  }

  v172 = [objc_opt_self() defaultCenter];
  [v172 addObserver:v148 selector:sel_accessibilityFocusedElementDidChange_ name:*MEMORY[0x1E69DD8C0] object:0];
  v173 = one-time initialization token for didUpdateListLayout;
  v174 = v148;
  if (v173 != -1)
  {
    swift_once();
  }

  [v172 addObserver:v174 selector:sel_clarityUISettingDidChange_ name:static ClarityUI.didUpdateListLayout object:0];

  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v206 = 0;
  swift_beginAccess();
  specialized Dictionary.subscript.setter(&v205, v174);
  swift_endAccess();
  if (static Spacing.hasSetupDefaultValue == 1)
  {
    (*(v186 + 8))(v139, v187);
  }

  else
  {
    static Spacing.hasSetupDefaultValue = 1;

    (*(v186 + 8))(v139, v187);
  }

  v175 = v178;
  static Update.end()();
  outlined destroy of ModifiedContent<AnyView, RootModifier>(v175);
  return v174;
}

uint64_t sub_18BD50DF8()
{

  return swift_deallocObject();
}

id DragAndDropBridge.init()(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  *&v2[OBJC_IVAR____TtC7SwiftUI17DragAndDropBridge_host + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v2[OBJC_IVAR____TtC7SwiftUI17DragAndDropBridge_hasDragItemsSeed] = 0;
  *&v2[OBJC_IVAR____TtC7SwiftUI17DragAndDropBridge_dragTimingsSeed] = 0;
  *&v2[OBJC_IVAR____TtC7SwiftUI17DragAndDropBridge_dragInteraction] = 0;
  *&v2[OBJC_IVAR____TtC7SwiftUI17DragAndDropBridge_canDropSeed] = 0;
  *&v2[OBJC_IVAR____TtC7SwiftUI17DragAndDropBridge_dropInteraction] = 0;
  *&v2[OBJC_IVAR____TtC7SwiftUI17DragAndDropBridge_canSpringLoadSeed] = 0;
  *&v2[OBJC_IVAR____TtC7SwiftUI17DragAndDropBridge_springLoadedInteraction] = 0;
  *&v2[OBJC_IVAR____TtC7SwiftUI17DragAndDropBridge_activeSpringLoadedResponder] = 0;
  v4 = &v2[OBJC_IVAR____TtC7SwiftUI17DragAndDropBridge_activeDrop];
  *v4 = xmmword_18CD633F0;
  *(v4 + 1) = 0u;
  *(v4 + 2) = 0u;
  *(v4 + 3) = 0u;
  *(v4 + 57) = 0u;
  v5 = &v2[OBJC_IVAR____TtC7SwiftUI17DragAndDropBridge_onSessionBegan];
  *v5 = 0;
  *(v5 + 1) = 0;
  v6 = &v2[OBJC_IVAR____TtC7SwiftUI17DragAndDropBridge_onSessionEnded];
  *v6 = 0;
  *(v6 + 1) = 0;
  v8.receiver = v2;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, sel_init);
}

id ContextMenuBridge.init()(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  *&v2[OBJC_IVAR____TtC7SwiftUI17ContextMenuBridge_host + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v2[OBJC_IVAR____TtC7SwiftUI17ContextMenuBridge_interaction] = 0;
  v2[OBJC_IVAR____TtC7SwiftUI17ContextMenuBridge_menuOrder] = 0;
  *&v2[OBJC_IVAR____TtC7SwiftUI17ContextMenuBridge_hasContextMenuSeed] = 0;
  *&v2[OBJC_IVAR____TtC7SwiftUI17ContextMenuBridge_menuOrderSeed] = 0;
  *&v2[OBJC_IVAR____TtC7SwiftUI17ContextMenuBridge_popoverBridgeToken] = 0;
  v4 = &v2[OBJC_IVAR____TtC7SwiftUI17ContextMenuBridge_presentedMenu];
  *v4 = 0;
  v4[4] = 0;
  v6.receiver = v2;
  v6.super_class = ObjectType;
  return objc_msgSendSuper2(&v6, sel_init);
}

void type metadata completion function for FileImportOperation(uint64_t a1)
{
  _s10Foundation3URLVSgMaTm_7(319, &lazy cache variable for type metadata for URL?, MEMORY[0x1E6968FB0]);
  if (v1 <= 0x3F)
  {
    _s10Foundation3URLVSgMaTm_7(319, &lazy cache variable for type metadata for Predicate<Pack{URL}>?, type metadata accessor for Predicate<Pack{URL}>);
    if (v2 <= 0x3F)
    {
      swift_initStructMetadata();
    }
  }
}

uint64_t ContainerBackgroundBridge.init()()
{
  swift_unknownObjectWeakInit();
  *(v0 + 32) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + 40) = 0;
  *(v0 + 48) = 0;
  *(v0 + 52) = 1;
  *(v0 + 64) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + 72) = 0;
  *(v0 + 80) = 0;
  *(v0 + 88) = 0;
  *(v0 + 96) = 1;
  *(v0 + 112) = 0;
  *(v0 + 120) = 0;
  *(v0 + 104) = 0;
  *(v0 + 125) = 0;
  *(v0 + 133) = 1;
  *(v0 + 136) = 0;
  *(v0 + 144) = 1280;
  return v0;
}

uint64_t type metadata accessor for UIKitPlatformColorDefinition(uint64_t a1)
{
  result = type metadata singleton initialization cache for UIKitPlatformColorDefinition;
  if (!type metadata singleton initialization cache for UIKitPlatformColorDefinition)
  {
    return swift_getSingletonMetadata();
  }

  return result;
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

void type metadata completion function for FileExportOperation(uint64_t a1)
{
  type metadata accessor for FileExportOperation.Mode(319);
  if (v1 <= 0x3F)
  {
    _s10Foundation3URLVSgMaTm_3(319, &lazy cache variable for type metadata for URL?, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      _s10Foundation3URLVSgMaTm_3(319, &lazy cache variable for type metadata for Predicate<Pack{URL}>?, type metadata accessor for Predicate<Pack{URL}>, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        swift_initStructMetadata();
      }
    }
  }
}

uint64_t type metadata completion function for FileExportOperation.Mode(uint64_t a1)
{
  result = type metadata accessor for FileExportOperation.Move(319);
  if (v2 <= 0x3F)
  {
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

uint64_t type metadata completion function for FileExportOperation.Move(uint64_t a1)
{
  result = type metadata accessor for URL();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

id specialized UIHostingController.init(rootView:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = *MEMORY[0x1E69E7D40];
  *(v1 + direct field offset for UIHostingController.allowedBehaviors) = 0;
  *(v1 + direct field offset for UIHostingController.requiredBridges) = 0;
  v6 = v1 + direct field offset for UIHostingController.overrides;
  *v6 = xmmword_18CD874C0;
  *(v6 + 2) = 0;
  v6[24] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v6[48] = 2;
  *&v2[direct field offset for UIHostingController.customTabItem] = 0;
  swift_unknownObjectWeakInit();
  *&v2[direct field offset for UIHostingController.toolbarBridge] = 0;
  *&v2[direct field offset for UIHostingController.inspectorBridgeV5] = 0;
  *&v2[direct field offset for UIHostingController.barAppearanceBridge] = 0;
  v7 = direct field offset for UIHostingController.dialogBridge;
  type metadata accessor for UIKitDialogBridge(0);
  swift_allocObject();
  *&v2[v7] = UIKitDialogBridge.init()();
  *&v2[direct field offset for UIHostingController.testBridge] = 0;
  *&v2[direct field offset for UIHostingController.contentScrollViewBridge] = 0;
  v8 = direct field offset for UIHostingController.modernNavigationBridge;
  type metadata accessor for ModernNavigationBridge();
  v9 = swift_allocObject();
  *(v9 + 16) = -1;
  *&v2[v8] = v9;
  *&v2[direct field offset for UIHostingController.alwaysOnBridge] = 0;
  v10 = direct field offset for UIHostingController.fileImportExportBridge;
  *&v2[v10] = [objc_allocWithZone(type metadata accessor for FileImportExportBridge(0)) init];
  *&v2[direct field offset for UIHostingController.deferredEdges] = 256;
  v11 = MEMORY[0x1E69E7CC0];
  *&v2[direct field offset for UIHostingController.screenEdgesSystemGestureSeedTracker] = MEMORY[0x1E69E7CC0];
  v2[direct field offset for UIHostingController.shouldDeferScreenEdgesSystemGestureToChildViewController] = 0;
  v12 = &v2[direct field offset for UIHostingController.persistentSystemOverlays];
  *v12 = 512;
  v12[2] = 3;
  *&v2[direct field offset for UIHostingController.persistentSystemOverlaysSeedTracker] = v11;
  v2[direct field offset for UIHostingController.shouldDeferPersistentSystemOverlaysToChildViewController] = 0;
  v13 = direct field offset for UIHostingController.backgroundBridge;
  type metadata accessor for ContainerBackgroundBridge();
  swift_allocObject();
  *&v2[v13] = ContainerBackgroundBridge.init()();
  *&v2[direct field offset for UIHostingController.navigationBridge] = 0;
  *&v2[direct field offset for UIHostingController.keyboardShortcutBridge] = 0;
  *&v2[direct field offset for UIHostingController.sizingOptions] = 0;
  v14 = *((v5 & v4) + 0x50);
  v15 = *((v5 & v4) + 0x58);
  type metadata accessor for _UIHostingView(0, v14, v15, v16);
  *&v2[direct field offset for UIHostingController.host] = specialized _UIHostingView.__allocating_init(rootView:)(a1, v17, v18, v19);
  v23.receiver = v2;
  v23.super_class = type metadata accessor for UIHostingController(0, v14, v15, v20);
  v21 = objc_msgSendSuper2(&v23, sel_initWithNibName_bundle_, 0, 0);
  UIHostingController._commonInit()();

  return v21;
}

{
  v2 = v1;
  *&v1[direct field offset for UIHostingController.allowedBehaviors] = 0;
  *&v1[direct field offset for UIHostingController.requiredBridges] = 0;
  v4 = &v1[direct field offset for UIHostingController.overrides];
  *v4 = xmmword_18CD874C0;
  *(v4 + 2) = 0;
  v4[24] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v4[48] = 2;
  *&v2[direct field offset for UIHostingController.customTabItem] = 0;
  swift_unknownObjectWeakInit();
  *&v2[direct field offset for UIHostingController.toolbarBridge] = 0;
  *&v2[direct field offset for UIHostingController.inspectorBridgeV5] = 0;
  *&v2[direct field offset for UIHostingController.barAppearanceBridge] = 0;
  v5 = direct field offset for UIHostingController.dialogBridge;
  type metadata accessor for UIKitDialogBridge(0);
  swift_allocObject();
  *&v2[v5] = UIKitDialogBridge.init()();
  *&v2[direct field offset for UIHostingController.testBridge] = 0;
  *&v2[direct field offset for UIHostingController.contentScrollViewBridge] = 0;
  v6 = direct field offset for UIHostingController.modernNavigationBridge;
  type metadata accessor for ModernNavigationBridge();
  v7 = swift_allocObject();
  *(v7 + 16) = -1;
  *&v2[v6] = v7;
  *&v2[direct field offset for UIHostingController.alwaysOnBridge] = 0;
  v8 = direct field offset for UIHostingController.fileImportExportBridge;
  *&v2[v8] = [objc_allocWithZone(type metadata accessor for FileImportExportBridge(0)) init];
  *&v2[direct field offset for UIHostingController.deferredEdges] = 256;
  v9 = MEMORY[0x1E69E7CC0];
  *&v2[direct field offset for UIHostingController.screenEdgesSystemGestureSeedTracker] = MEMORY[0x1E69E7CC0];
  v2[direct field offset for UIHostingController.shouldDeferScreenEdgesSystemGestureToChildViewController] = 0;
  v10 = &v2[direct field offset for UIHostingController.persistentSystemOverlays];
  *v10 = 512;
  v10[2] = 3;
  *&v2[direct field offset for UIHostingController.persistentSystemOverlaysSeedTracker] = v9;
  v2[direct field offset for UIHostingController.shouldDeferPersistentSystemOverlaysToChildViewController] = 0;
  v11 = direct field offset for UIHostingController.backgroundBridge;
  type metadata accessor for ContainerBackgroundBridge();
  swift_allocObject();
  *&v2[v11] = ContainerBackgroundBridge.init()();
  *&v2[direct field offset for UIHostingController.navigationBridge] = 0;
  *&v2[direct field offset for UIHostingController.keyboardShortcutBridge] = 0;
  *&v2[direct field offset for UIHostingController.sizingOptions] = 0;
  outlined init with copy of ModifiedContent<AnyView, RootModifier>(a1, v19);
  _s7SwiftUI19UIHostingControllerCyAA15ModifiedContentVyAA7AnyViewVAA12RootModifierVGGMaTm_0(0, &lazy cache variable for type metadata for _UIHostingView<ModifiedContent<AnyView, RootModifier>>, type metadata accessor for _UIHostingView);
  v13 = objc_allocWithZone(v12);
  *&v2[direct field offset for UIHostingController.host] = specialized _UIHostingView.init(rootView:)(v19, v14);
  _s7SwiftUI19UIHostingControllerCyAA15ModifiedContentVyAA7AnyViewVAA12RootModifierVGGMaTm_0(0, &lazy cache variable for type metadata for UIHostingController<ModifiedContent<AnyView, RootModifier>>, type metadata accessor for UIHostingController);
  v18.receiver = v2;
  v18.super_class = v15;
  v16 = objc_msgSendSuper2(&v18, sel_initWithNibName_bundle_, 0, 0);
  specialized UIHostingController._commonInit()(&lazy cache variable for type metadata for _UIHostingView<ModifiedContent<AnyView, RootModifier>>, type metadata accessor for _UIHostingView, _s7SwiftUI19UIHostingControllerCyAA15ModifiedContentVyAA7AnyViewVAA12RootModifierVGGMaTm_0, &lazy protocol witness table cache variable for type _UIHostingView<ModifiedContent<AnyView, RootModifier>> and conformance _UIHostingView<A>, _s7SwiftUI19UIHostingControllerCyAA15ModifiedContentVyAA7AnyViewVAA12RootModifierVGGMaTm_0);

  outlined destroy of ModifiedContent<AnyView, RootModifier>(a1);
  return v16;
}

{
  v2 = v1;
  v4 = MEMORY[0x1E6981D28];
  type metadata accessor for TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0>(0, &lazy cache variable for type metadata for TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0>, &lazy cache variable for type metadata for <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0, MEMORY[0x1E6981D28]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v21 - v6;
  *&v1[direct field offset for UIHostingController.allowedBehaviors] = 0;
  *&v1[direct field offset for UIHostingController.requiredBridges] = 0;
  v8 = direct field offset for UIHostingController.overrides;
  v22 = xmmword_18CD874C0;
  v23 = 0;
  v24 = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v25 = 2;
  outlined init with take of HostingControllerOverrides(&v22, &v2[v8]);
  *&v2[direct field offset for UIHostingController.customTabItem] = 0;
  swift_unknownObjectWeakInit();
  *&v2[direct field offset for UIHostingController.toolbarBridge] = 0;
  *&v2[direct field offset for UIHostingController.inspectorBridgeV5] = 0;
  *&v2[direct field offset for UIHostingController.barAppearanceBridge] = 0;
  v9 = direct field offset for UIHostingController.dialogBridge;
  type metadata accessor for UIKitDialogBridge(0);
  swift_allocObject();
  *&v2[v9] = UIKitDialogBridge.init()();
  *&v2[direct field offset for UIHostingController.testBridge] = 0;
  *&v2[direct field offset for UIHostingController.contentScrollViewBridge] = 0;
  v10 = direct field offset for UIHostingController.modernNavigationBridge;
  type metadata accessor for ModernNavigationBridge();
  v11 = swift_allocObject();
  *(v11 + 16) = -1;
  *&v2[v10] = v11;
  *&v2[direct field offset for UIHostingController.alwaysOnBridge] = 0;
  v12 = direct field offset for UIHostingController.fileImportExportBridge;
  *&v2[v12] = [objc_allocWithZone(type metadata accessor for FileImportExportBridge(0)) init];
  *&v2[direct field offset for UIHostingController.deferredEdges] = 256;
  v13 = MEMORY[0x1E69E7CC0];
  *&v2[direct field offset for UIHostingController.screenEdgesSystemGestureSeedTracker] = MEMORY[0x1E69E7CC0];
  v2[direct field offset for UIHostingController.shouldDeferScreenEdgesSystemGestureToChildViewController] = 0;
  v14 = &v2[direct field offset for UIHostingController.persistentSystemOverlays];
  *v14 = 512;
  v14[2] = 3;
  *&v2[direct field offset for UIHostingController.persistentSystemOverlaysSeedTracker] = v13;
  v2[direct field offset for UIHostingController.shouldDeferPersistentSystemOverlaysToChildViewController] = 0;
  v15 = direct field offset for UIHostingController.backgroundBridge;
  type metadata accessor for ContainerBackgroundBridge();
  swift_allocObject();
  *&v2[v15] = ContainerBackgroundBridge.init()();
  *&v2[direct field offset for UIHostingController.navigationBridge] = 0;
  *&v2[direct field offset for UIHostingController.keyboardShortcutBridge] = 0;
  *&v2[direct field offset for UIHostingController.sizingOptions] = 0;
  outlined init with copy of TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>(a1, v7, &lazy cache variable for type metadata for TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0>, &lazy cache variable for type metadata for <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0, v4);
  type metadata accessor for _UIHostingView<TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0>>(0, &lazy cache variable for type metadata for _UIHostingView<TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0>>, type metadata accessor for _UIHostingView);
  v17 = objc_allocWithZone(v16);
  *&v2[direct field offset for UIHostingController.host] = specialized _UIHostingView.init(rootView:)(v7);
  type metadata accessor for _UIHostingView<TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0>>(0, &lazy cache variable for type metadata for UIHostingController<TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0>>, type metadata accessor for UIHostingController);
  v21.receiver = v2;
  v21.super_class = v18;
  v19 = objc_msgSendSuper2(&v21, sel_initWithNibName_bundle_, 0, 0);
  specialized UIHostingController._commonInit()(&lazy cache variable for type metadata for _UIHostingView<TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0>>, type metadata accessor for _UIHostingView, type metadata accessor for _UIHostingView<TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0>>, &lazy protocol witness table cache variable for type _UIHostingView<TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0>> and conformance _UIHostingView<A>, type metadata accessor for _UIHostingView<TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0>>);

  outlined destroy of TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>(a1, &lazy cache variable for type metadata for TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0>, &lazy cache variable for type metadata for <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0, v4);
  return v19;
}

{
  v2 = v1;
  type metadata accessor for TestIDView<<<opaque return type of View.truePreference<A>(_:)>>.0, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v1[direct field offset for UIHostingController.allowedBehaviors] = 0;
  *&v1[direct field offset for UIHostingController.requiredBridges] = 0;
  v7 = direct field offset for UIHostingController.overrides;
  v21 = xmmword_18CD874C0;
  v22 = 0;
  v23 = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v24 = 2;
  outlined init with take of HostingControllerOverrides(&v21, &v2[v7]);
  *&v2[direct field offset for UIHostingController.customTabItem] = 0;
  swift_unknownObjectWeakInit();
  *&v2[direct field offset for UIHostingController.toolbarBridge] = 0;
  *&v2[direct field offset for UIHostingController.inspectorBridgeV5] = 0;
  *&v2[direct field offset for UIHostingController.barAppearanceBridge] = 0;
  v8 = direct field offset for UIHostingController.dialogBridge;
  type metadata accessor for UIKitDialogBridge(0);
  swift_allocObject();
  *&v2[v8] = UIKitDialogBridge.init()();
  *&v2[direct field offset for UIHostingController.testBridge] = 0;
  *&v2[direct field offset for UIHostingController.contentScrollViewBridge] = 0;
  v9 = direct field offset for UIHostingController.modernNavigationBridge;
  type metadata accessor for ModernNavigationBridge();
  v10 = swift_allocObject();
  *(v10 + 16) = -1;
  *&v2[v9] = v10;
  *&v2[direct field offset for UIHostingController.alwaysOnBridge] = 0;
  v11 = direct field offset for UIHostingController.fileImportExportBridge;
  *&v2[v11] = [objc_allocWithZone(type metadata accessor for FileImportExportBridge(0)) init];
  *&v2[direct field offset for UIHostingController.deferredEdges] = 256;
  v12 = MEMORY[0x1E69E7CC0];
  *&v2[direct field offset for UIHostingController.screenEdgesSystemGestureSeedTracker] = MEMORY[0x1E69E7CC0];
  v2[direct field offset for UIHostingController.shouldDeferScreenEdgesSystemGestureToChildViewController] = 0;
  v13 = &v2[direct field offset for UIHostingController.persistentSystemOverlays];
  *v13 = 512;
  v13[2] = 3;
  *&v2[direct field offset for UIHostingController.persistentSystemOverlaysSeedTracker] = v12;
  v2[direct field offset for UIHostingController.shouldDeferPersistentSystemOverlaysToChildViewController] = 0;
  v14 = direct field offset for UIHostingController.backgroundBridge;
  type metadata accessor for ContainerBackgroundBridge();
  swift_allocObject();
  *&v2[v14] = ContainerBackgroundBridge.init()();
  *&v2[direct field offset for UIHostingController.navigationBridge] = 0;
  *&v2[direct field offset for UIHostingController.keyboardShortcutBridge] = 0;
  *&v2[direct field offset for UIHostingController.sizingOptions] = 0;
  sub_18C0A9F94(a1, v6);
  type metadata accessor for _UIHostingView<TestIDView<<<opaque return type of View.truePreference<A>(_:)>>.0, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>>(0);
  v16 = objc_allocWithZone(v15);
  *&v2[direct field offset for UIHostingController.host] = specialized _UIHostingView.init(rootView:)(v6);
  _s7SwiftUI19UIHostingControllerCyAA10TestIDViewVyAA4ViewPAAE14truePreferenceyQrqd__mAA0I3KeyRd__Sb5ValueRtd__lFQOyAA01_E3AppV04RootG0V_AA030HostingGestureOverlayAuthorityJ0VQo_AM04rootG10IdentifierQrvpZQOy_Qo_GGMaTm_0(0, &lazy cache variable for type metadata for UIHostingController<TestIDView<<<opaque return type of View.truePreference<A>(_:)>>.0, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>>, type metadata accessor for UIHostingController);
  v20.receiver = v2;
  v20.super_class = v17;
  v18 = objc_msgSendSuper2(&v20, sel_initWithNibName_bundle_, 0, 0);
  specialized UIHostingController._commonInit()(specialized _UIHostingView.updateBackgroundColor(), lazy protocol witness table accessor for type _UIHostingView<TestIDView<<<opaque return type of View.truePreference<A>(_:)>>.0, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>> and conformance _UIHostingView<A>);

  sub_18C104F3C(a1);
  return v18;
}

{
  v2 = v1;
  v4 = MEMORY[0x1E6981D20];
  type metadata accessor for TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0>(0, &lazy cache variable for type metadata for TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>, &lazy cache variable for type metadata for <<opaque return type of static _TestApp.rootViewIdentifier>>.0, MEMORY[0x1E6981D20]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v21 - v6;
  *&v1[direct field offset for UIHostingController.allowedBehaviors] = 0;
  *&v1[direct field offset for UIHostingController.requiredBridges] = 0;
  v8 = &v1[direct field offset for UIHostingController.overrides];
  *v8 = xmmword_18CD874C0;
  *(v8 + 2) = 0;
  v8[24] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v8[48] = 2;
  *&v2[direct field offset for UIHostingController.customTabItem] = 0;
  swift_unknownObjectWeakInit();
  *&v2[direct field offset for UIHostingController.toolbarBridge] = 0;
  *&v2[direct field offset for UIHostingController.inspectorBridgeV5] = 0;
  *&v2[direct field offset for UIHostingController.barAppearanceBridge] = 0;
  v9 = direct field offset for UIHostingController.dialogBridge;
  type metadata accessor for UIKitDialogBridge(0);
  swift_allocObject();
  *&v2[v9] = UIKitDialogBridge.init()();
  *&v2[direct field offset for UIHostingController.testBridge] = 0;
  *&v2[direct field offset for UIHostingController.contentScrollViewBridge] = 0;
  v10 = direct field offset for UIHostingController.modernNavigationBridge;
  type metadata accessor for ModernNavigationBridge();
  v11 = swift_allocObject();
  *(v11 + 16) = -1;
  *&v2[v10] = v11;
  *&v2[direct field offset for UIHostingController.alwaysOnBridge] = 0;
  v12 = direct field offset for UIHostingController.fileImportExportBridge;
  *&v2[v12] = [objc_allocWithZone(type metadata accessor for FileImportExportBridge(0)) init];
  *&v2[direct field offset for UIHostingController.deferredEdges] = 256;
  v13 = MEMORY[0x1E69E7CC0];
  *&v2[direct field offset for UIHostingController.screenEdgesSystemGestureSeedTracker] = MEMORY[0x1E69E7CC0];
  v2[direct field offset for UIHostingController.shouldDeferScreenEdgesSystemGestureToChildViewController] = 0;
  v14 = &v2[direct field offset for UIHostingController.persistentSystemOverlays];
  *v14 = 512;
  v14[2] = 3;
  *&v2[direct field offset for UIHostingController.persistentSystemOverlaysSeedTracker] = v13;
  v2[direct field offset for UIHostingController.shouldDeferPersistentSystemOverlaysToChildViewController] = 0;
  v15 = direct field offset for UIHostingController.backgroundBridge;
  type metadata accessor for ContainerBackgroundBridge();
  swift_allocObject();
  *&v2[v15] = ContainerBackgroundBridge.init()();
  *&v2[direct field offset for UIHostingController.navigationBridge] = 0;
  *&v2[direct field offset for UIHostingController.keyboardShortcutBridge] = 0;
  *&v2[direct field offset for UIHostingController.sizingOptions] = 0;
  outlined init with copy of TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>(a1, v7, &lazy cache variable for type metadata for TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>, &lazy cache variable for type metadata for <<opaque return type of static _TestApp.rootViewIdentifier>>.0, v4);
  _s7SwiftUI14_UIHostingViewCyAA10TestIDViewVyAA01_E3AppV04RootD0VAG04rootD10IdentifierQrvpZQOy_Qo_GGMaTm_0(0, &lazy cache variable for type metadata for _UIHostingView<TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>>, type metadata accessor for _UIHostingView);
  v17 = objc_allocWithZone(v16);
  *&v2[direct field offset for UIHostingController.host] = specialized _UIHostingView.init(rootView:)(v7);
  _s7SwiftUI14_UIHostingViewCyAA10TestIDViewVyAA01_E3AppV04RootD0VAG04rootD10IdentifierQrvpZQOy_Qo_GGMaTm_0(0, &lazy cache variable for type metadata for UIHostingController<TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>>, type metadata accessor for UIHostingController);
  v21.receiver = v2;
  v21.super_class = v18;
  v19 = objc_msgSendSuper2(&v21, sel_initWithNibName_bundle_, 0, 0);
  specialized UIHostingController._commonInit()(&lazy cache variable for type metadata for _UIHostingView<TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>>, type metadata accessor for _UIHostingView, _s7SwiftUI14_UIHostingViewCyAA10TestIDViewVyAA01_E3AppV04RootD0VAG04rootD10IdentifierQrvpZQOy_Qo_GGMaTm_0, &lazy protocol witness table cache variable for type _UIHostingView<TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>> and conformance _UIHostingView<A>, _s7SwiftUI14_UIHostingViewCyAA10TestIDViewVyAA01_E3AppV04RootD0VAG04rootD10IdentifierQrvpZQOy_Qo_GGMaTm_0);

  outlined destroy of TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>(a1, &lazy cache variable for type metadata for TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>, &lazy cache variable for type metadata for <<opaque return type of static _TestApp.rootViewIdentifier>>.0, v4);
  return v19;
}

{
  v2 = v1;
  *&v1[direct field offset for UIHostingController.allowedBehaviors] = 0;
  *&v1[direct field offset for UIHostingController.requiredBridges] = 0;
  v4 = &v1[direct field offset for UIHostingController.overrides];
  *v4 = xmmword_18CD874C0;
  *(v4 + 2) = 0;
  v4[24] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v4[48] = 2;
  *&v2[direct field offset for UIHostingController.customTabItem] = 0;
  swift_unknownObjectWeakInit();
  *&v2[direct field offset for UIHostingController.toolbarBridge] = 0;
  *&v2[direct field offset for UIHostingController.inspectorBridgeV5] = 0;
  *&v2[direct field offset for UIHostingController.barAppearanceBridge] = 0;
  v5 = direct field offset for UIHostingController.dialogBridge;
  type metadata accessor for UIKitDialogBridge(0);
  swift_allocObject();
  *&v2[v5] = UIKitDialogBridge.init()();
  *&v2[direct field offset for UIHostingController.testBridge] = 0;
  *&v2[direct field offset for UIHostingController.contentScrollViewBridge] = 0;
  v6 = direct field offset for UIHostingController.modernNavigationBridge;
  type metadata accessor for ModernNavigationBridge();
  v7 = swift_allocObject();
  *(v7 + 16) = -1;
  *&v2[v6] = v7;
  *&v2[direct field offset for UIHostingController.alwaysOnBridge] = 0;
  v8 = direct field offset for UIHostingController.fileImportExportBridge;
  *&v2[v8] = [objc_allocWithZone(type metadata accessor for FileImportExportBridge(0)) init];
  *&v2[direct field offset for UIHostingController.deferredEdges] = 256;
  v9 = MEMORY[0x1E69E7CC0];
  *&v2[direct field offset for UIHostingController.screenEdgesSystemGestureSeedTracker] = MEMORY[0x1E69E7CC0];
  v2[direct field offset for UIHostingController.shouldDeferScreenEdgesSystemGestureToChildViewController] = 0;
  v10 = &v2[direct field offset for UIHostingController.persistentSystemOverlays];
  *v10 = 512;
  v10[2] = 3;
  *&v2[direct field offset for UIHostingController.persistentSystemOverlaysSeedTracker] = v9;
  v2[direct field offset for UIHostingController.shouldDeferPersistentSystemOverlaysToChildViewController] = 0;
  v11 = direct field offset for UIHostingController.backgroundBridge;
  type metadata accessor for ContainerBackgroundBridge();
  swift_allocObject();
  *&v2[v11] = ContainerBackgroundBridge.init()();
  *&v2[direct field offset for UIHostingController.navigationBridge] = 0;
  *&v2[direct field offset for UIHostingController.keyboardShortcutBridge] = 0;
  *&v2[direct field offset for UIHostingController.sizingOptions] = 0;
  type metadata accessor for UIHostingController<AnyView>(0, &lazy cache variable for type metadata for _UIHostingView<BoundInputsView>, &type metadata for BoundInputsView, &protocol witness table for BoundInputsView, type metadata accessor for _UIHostingView);
  v13 = objc_allocWithZone(v12);
  *&v2[direct field offset for UIHostingController.host] = specialized _UIHostingView.init(rootView:)(a1);
  type metadata accessor for UIHostingController<AnyView>(0, &lazy cache variable for type metadata for UIHostingController<BoundInputsView>, &type metadata for BoundInputsView, &protocol witness table for BoundInputsView, type metadata accessor for UIHostingController);
  v17.receiver = v2;
  v17.super_class = v14;
  v15 = objc_msgSendSuper2(&v17, sel_initWithNibName_bundle_, 0, 0);
  specialized UIHostingController._commonInit()(specialized _UIHostingView.updateBackgroundColor(), lazy protocol witness table accessor for type _UIHostingView<BoundInputsView> and conformance _UIHostingView<A>);

  return v15;
}

{
  v2 = v1;
  *&v1[direct field offset for UIHostingController.allowedBehaviors] = 0;
  *&v1[direct field offset for UIHostingController.requiredBridges] = 0;
  v4 = &v1[direct field offset for UIHostingController.overrides];
  *v4 = xmmword_18CD874C0;
  *(v4 + 2) = 0;
  v4[24] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v4[48] = 2;
  *&v2[direct field offset for UIHostingController.customTabItem] = 0;
  swift_unknownObjectWeakInit();
  *&v2[direct field offset for UIHostingController.toolbarBridge] = 0;
  *&v2[direct field offset for UIHostingController.inspectorBridgeV5] = 0;
  *&v2[direct field offset for UIHostingController.barAppearanceBridge] = 0;
  v5 = direct field offset for UIHostingController.dialogBridge;
  type metadata accessor for UIKitDialogBridge(0);
  swift_allocObject();
  *&v2[v5] = UIKitDialogBridge.init()();
  *&v2[direct field offset for UIHostingController.testBridge] = 0;
  *&v2[direct field offset for UIHostingController.contentScrollViewBridge] = 0;
  v6 = direct field offset for UIHostingController.modernNavigationBridge;
  type metadata accessor for ModernNavigationBridge();
  v7 = swift_allocObject();
  *(v7 + 16) = -1;
  *&v2[v6] = v7;
  *&v2[direct field offset for UIHostingController.alwaysOnBridge] = 0;
  v8 = direct field offset for UIHostingController.fileImportExportBridge;
  *&v2[v8] = [objc_allocWithZone(type metadata accessor for FileImportExportBridge(0)) init];
  *&v2[direct field offset for UIHostingController.deferredEdges] = 256;
  v9 = MEMORY[0x1E69E7CC0];
  *&v2[direct field offset for UIHostingController.screenEdgesSystemGestureSeedTracker] = MEMORY[0x1E69E7CC0];
  v2[direct field offset for UIHostingController.shouldDeferScreenEdgesSystemGestureToChildViewController] = 0;
  v10 = &v2[direct field offset for UIHostingController.persistentSystemOverlays];
  *v10 = 512;
  v10[2] = 3;
  *&v2[direct field offset for UIHostingController.persistentSystemOverlaysSeedTracker] = v9;
  v2[direct field offset for UIHostingController.shouldDeferPersistentSystemOverlaysToChildViewController] = 0;
  v11 = direct field offset for UIHostingController.backgroundBridge;
  type metadata accessor for ContainerBackgroundBridge();
  swift_allocObject();
  *&v2[v11] = ContainerBackgroundBridge.init()();
  *&v2[direct field offset for UIHostingController.navigationBridge] = 0;
  *&v2[direct field offset for UIHostingController.keyboardShortcutBridge] = 0;
  *&v2[direct field offset for UIHostingController.sizingOptions] = 0;
  outlined init with copy of DocumentGroupsIntroRootView(a1, v18);
  type metadata accessor for _UIHostingView<BridgedPresentation.RootView>(0, &lazy cache variable for type metadata for _UIHostingView<DocumentGroupsIntroRootView>, lazy protocol witness table accessor for type DocumentGroupsIntroRootView and conformance DocumentGroupsIntroRootView, &type metadata for DocumentGroupsIntroRootView, type metadata accessor for _UIHostingView);
  v13 = objc_allocWithZone(v12);
  *&v2[direct field offset for UIHostingController.host] = specialized _UIHostingView.init(rootView:)(v18);
  type metadata accessor for _UIHostingView<BridgedPresentation.RootView>(0, &lazy cache variable for type metadata for UIHostingController<DocumentGroupsIntroRootView>, lazy protocol witness table accessor for type DocumentGroupsIntroRootView and conformance DocumentGroupsIntroRootView, &type metadata for DocumentGroupsIntroRootView, type metadata accessor for UIHostingController);
  v17.receiver = v2;
  v17.super_class = v14;
  v15 = objc_msgSendSuper2(&v17, sel_initWithNibName_bundle_, 0, 0);
  specialized UIHostingController._commonInit()(&lazy cache variable for type metadata for _UIHostingView<DocumentGroupsIntroRootView>, lazy protocol witness table accessor for type DocumentGroupsIntroRootView and conformance DocumentGroupsIntroRootView, &type metadata for DocumentGroupsIntroRootView, lazy protocol witness table accessor for type _UIHostingView<DocumentGroupsIntroRootView> and conformance _UIHostingView<A>);

  outlined destroy of DocumentGroupsIntroRootView(a1);
  return v15;
}

{
  v2 = v1;
  type metadata accessor for ModifiedContent<ModifiedContent<AnyView, DocumentSceneRootBoxModifier>, DocumentBaseModifier>(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v1[direct field offset for UIHostingController.allowedBehaviors] = 0;
  *&v1[direct field offset for UIHostingController.requiredBridges] = 0;
  v7 = &v1[direct field offset for UIHostingController.overrides];
  *v7 = xmmword_18CD874C0;
  *(v7 + 2) = 0;
  v7[24] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v7[48] = 2;
  *&v2[direct field offset for UIHostingController.customTabItem] = 0;
  swift_unknownObjectWeakInit();
  *&v2[direct field offset for UIHostingController.toolbarBridge] = 0;
  *&v2[direct field offset for UIHostingController.inspectorBridgeV5] = 0;
  *&v2[direct field offset for UIHostingController.barAppearanceBridge] = 0;
  v8 = direct field offset for UIHostingController.dialogBridge;
  type metadata accessor for UIKitDialogBridge(0);
  swift_allocObject();
  *&v2[v8] = UIKitDialogBridge.init()();
  *&v2[direct field offset for UIHostingController.testBridge] = 0;
  *&v2[direct field offset for UIHostingController.contentScrollViewBridge] = 0;
  v9 = direct field offset for UIHostingController.modernNavigationBridge;
  type metadata accessor for ModernNavigationBridge();
  v10 = swift_allocObject();
  *(v10 + 16) = -1;
  *&v2[v9] = v10;
  *&v2[direct field offset for UIHostingController.alwaysOnBridge] = 0;
  v11 = direct field offset for UIHostingController.fileImportExportBridge;
  *&v2[v11] = [objc_allocWithZone(type metadata accessor for FileImportExportBridge(0)) init];
  *&v2[direct field offset for UIHostingController.deferredEdges] = 256;
  v12 = MEMORY[0x1E69E7CC0];
  *&v2[direct field offset for UIHostingController.screenEdgesSystemGestureSeedTracker] = MEMORY[0x1E69E7CC0];
  v2[direct field offset for UIHostingController.shouldDeferScreenEdgesSystemGestureToChildViewController] = 0;
  v13 = &v2[direct field offset for UIHostingController.persistentSystemOverlays];
  *v13 = 512;
  v13[2] = 3;
  *&v2[direct field offset for UIHostingController.persistentSystemOverlaysSeedTracker] = v12;
  v2[direct field offset for UIHostingController.shouldDeferPersistentSystemOverlaysToChildViewController] = 0;
  v14 = direct field offset for UIHostingController.backgroundBridge;
  type metadata accessor for ContainerBackgroundBridge();
  swift_allocObject();
  *&v2[v14] = ContainerBackgroundBridge.init()();
  *&v2[direct field offset for UIHostingController.navigationBridge] = 0;
  *&v2[direct field offset for UIHostingController.keyboardShortcutBridge] = 0;
  *&v2[direct field offset for UIHostingController.sizingOptions] = 0;
  outlined init with copy of ModifiedContent<AnyView, DocumentBaseModifier>(a1, v6, type metadata accessor for ModifiedContent<ModifiedContent<AnyView, DocumentSceneRootBoxModifier>, DocumentBaseModifier>);
  type metadata accessor for _UIHostingView<ModifiedContent<ModifiedContent<AnyView, DocumentSceneRootBoxModifier>, DocumentBaseModifier>>(0);
  v16 = objc_allocWithZone(v15);
  *&v2[direct field offset for UIHostingController.host] = specialized _UIHostingView.init(rootView:)(v6);
  _s7SwiftUI14_UIHostingViewCyAA15ModifiedContentVyAA03AnyD0VAA20DocumentBaseModifierVGGMaTm_0(0, &lazy cache variable for type metadata for UIHostingController<ModifiedContent<ModifiedContent<AnyView, DocumentSceneRootBoxModifier>, DocumentBaseModifier>>, type metadata accessor for ModifiedContent<ModifiedContent<AnyView, DocumentSceneRootBoxModifier>, DocumentBaseModifier>, lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<AnyView, DocumentSceneRootBoxModifier>, DocumentBaseModifier> and conformance <> ModifiedContent<A, B>, type metadata accessor for UIHostingController);
  v20.receiver = v2;
  v20.super_class = v17;
  v18 = objc_msgSendSuper2(&v20, sel_initWithNibName_bundle_, 0, 0);
  specialized UIHostingController._commonInit()(specialized _UIHostingView.updateBackgroundColor(), lazy protocol witness table accessor for type _UIHostingView<ModifiedContent<ModifiedContent<AnyView, DocumentSceneRootBoxModifier>, DocumentBaseModifier>> and conformance _UIHostingView<A>);

  outlined destroy of ModifiedContent<AnyView, DocumentBaseModifier>(a1, type metadata accessor for ModifiedContent<ModifiedContent<AnyView, DocumentSceneRootBoxModifier>, DocumentBaseModifier>);
  return v18;
}

{
  v2 = v1;
  type metadata accessor for ModifiedContent<AnyView, DocumentBaseModifier>(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v1[direct field offset for UIHostingController.allowedBehaviors] = 0;
  *&v1[direct field offset for UIHostingController.requiredBridges] = 0;
  v7 = &v1[direct field offset for UIHostingController.overrides];
  *v7 = xmmword_18CD874C0;
  *(v7 + 2) = 0;
  v7[24] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v7[48] = 2;
  *&v2[direct field offset for UIHostingController.customTabItem] = 0;
  swift_unknownObjectWeakInit();
  *&v2[direct field offset for UIHostingController.toolbarBridge] = 0;
  *&v2[direct field offset for UIHostingController.inspectorBridgeV5] = 0;
  *&v2[direct field offset for UIHostingController.barAppearanceBridge] = 0;
  v8 = direct field offset for UIHostingController.dialogBridge;
  type metadata accessor for UIKitDialogBridge(0);
  swift_allocObject();
  *&v2[v8] = UIKitDialogBridge.init()();
  *&v2[direct field offset for UIHostingController.testBridge] = 0;
  *&v2[direct field offset for UIHostingController.contentScrollViewBridge] = 0;
  v9 = direct field offset for UIHostingController.modernNavigationBridge;
  type metadata accessor for ModernNavigationBridge();
  v10 = swift_allocObject();
  *(v10 + 16) = -1;
  *&v2[v9] = v10;
  *&v2[direct field offset for UIHostingController.alwaysOnBridge] = 0;
  v11 = direct field offset for UIHostingController.fileImportExportBridge;
  *&v2[v11] = [objc_allocWithZone(type metadata accessor for FileImportExportBridge(0)) init];
  *&v2[direct field offset for UIHostingController.deferredEdges] = 256;
  v12 = MEMORY[0x1E69E7CC0];
  *&v2[direct field offset for UIHostingController.screenEdgesSystemGestureSeedTracker] = MEMORY[0x1E69E7CC0];
  v2[direct field offset for UIHostingController.shouldDeferScreenEdgesSystemGestureToChildViewController] = 0;
  v13 = &v2[direct field offset for UIHostingController.persistentSystemOverlays];
  *v13 = 512;
  v13[2] = 3;
  *&v2[direct field offset for UIHostingController.persistentSystemOverlaysSeedTracker] = v12;
  v2[direct field offset for UIHostingController.shouldDeferPersistentSystemOverlaysToChildViewController] = 0;
  v14 = direct field offset for UIHostingController.backgroundBridge;
  type metadata accessor for ContainerBackgroundBridge();
  swift_allocObject();
  *&v2[v14] = ContainerBackgroundBridge.init()();
  *&v2[direct field offset for UIHostingController.navigationBridge] = 0;
  *&v2[direct field offset for UIHostingController.keyboardShortcutBridge] = 0;
  *&v2[direct field offset for UIHostingController.sizingOptions] = 0;
  outlined init with copy of ModifiedContent<AnyView, DocumentBaseModifier>(a1, v6, type metadata accessor for ModifiedContent<AnyView, DocumentBaseModifier>);
  type metadata accessor for _UIHostingView<ModifiedContent<AnyView, DocumentBaseModifier>>(0);
  v16 = objc_allocWithZone(v15);
  *&v2[direct field offset for UIHostingController.host] = specialized _UIHostingView.init(rootView:)(v6);
  _s7SwiftUI14_UIHostingViewCyAA15ModifiedContentVyAA03AnyD0VAA20DocumentBaseModifierVGGMaTm_0(0, &lazy cache variable for type metadata for UIHostingController<ModifiedContent<AnyView, DocumentBaseModifier>>, type metadata accessor for ModifiedContent<AnyView, DocumentBaseModifier>, lazy protocol witness table accessor for type ModifiedContent<AnyView, DocumentBaseModifier> and conformance <> ModifiedContent<A, B>, type metadata accessor for UIHostingController);
  v20.receiver = v2;
  v20.super_class = v17;
  v18 = objc_msgSendSuper2(&v20, sel_initWithNibName_bundle_, 0, 0);
  specialized UIHostingController._commonInit()(specialized _UIHostingView.updateBackgroundColor(), lazy protocol witness table accessor for type _UIHostingView<ModifiedContent<AnyView, DocumentBaseModifier>> and conformance _UIHostingView<A>);

  outlined destroy of ModifiedContent<AnyView, DocumentBaseModifier>(a1, type metadata accessor for ModifiedContent<AnyView, DocumentBaseModifier>);
  return v18;
}

{
  v2 = v1;
  *&v1[direct field offset for UIHostingController.allowedBehaviors] = 0;
  *&v1[direct field offset for UIHostingController.requiredBridges] = 0;
  v4 = &v1[direct field offset for UIHostingController.overrides];
  *v4 = xmmword_18CD874C0;
  *(v4 + 2) = 0;
  v4[24] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v4[48] = 2;
  *&v2[direct field offset for UIHostingController.customTabItem] = 0;
  swift_unknownObjectWeakInit();
  *&v2[direct field offset for UIHostingController.toolbarBridge] = 0;
  *&v2[direct field offset for UIHostingController.inspectorBridgeV5] = 0;
  *&v2[direct field offset for UIHostingController.barAppearanceBridge] = 0;
  v5 = direct field offset for UIHostingController.dialogBridge;
  type metadata accessor for UIKitDialogBridge(0);
  swift_allocObject();
  *&v2[v5] = UIKitDialogBridge.init()();
  *&v2[direct field offset for UIHostingController.testBridge] = 0;
  *&v2[direct field offset for UIHostingController.contentScrollViewBridge] = 0;
  v6 = direct field offset for UIHostingController.modernNavigationBridge;
  type metadata accessor for ModernNavigationBridge();
  v7 = swift_allocObject();
  *(v7 + 16) = -1;
  *&v2[v6] = v7;
  *&v2[direct field offset for UIHostingController.alwaysOnBridge] = 0;
  v8 = direct field offset for UIHostingController.fileImportExportBridge;
  *&v2[v8] = [objc_allocWithZone(type metadata accessor for FileImportExportBridge(0)) init];
  *&v2[direct field offset for UIHostingController.deferredEdges] = 256;
  v9 = MEMORY[0x1E69E7CC0];
  *&v2[direct field offset for UIHostingController.screenEdgesSystemGestureSeedTracker] = MEMORY[0x1E69E7CC0];
  v2[direct field offset for UIHostingController.shouldDeferScreenEdgesSystemGestureToChildViewController] = 0;
  v10 = &v2[direct field offset for UIHostingController.persistentSystemOverlays];
  *v10 = 512;
  v10[2] = 3;
  *&v2[direct field offset for UIHostingController.persistentSystemOverlaysSeedTracker] = v9;
  v2[direct field offset for UIHostingController.shouldDeferPersistentSystemOverlaysToChildViewController] = 0;
  v11 = direct field offset for UIHostingController.backgroundBridge;
  type metadata accessor for ContainerBackgroundBridge();
  swift_allocObject();
  *&v2[v11] = ContainerBackgroundBridge.init()();
  *&v2[direct field offset for UIHostingController.navigationBridge] = 0;
  *&v2[direct field offset for UIHostingController.keyboardShortcutBridge] = 0;
  *&v2[direct field offset for UIHostingController.sizingOptions] = 0;
  outlined init with copy of BridgedNavigationView.RootView(a1, v18);
  type metadata accessor for _UIHostingView<BridgedPresentation.RootView>(0, &lazy cache variable for type metadata for _UIHostingView<BridgedNavigationView.RootView>, lazy protocol witness table accessor for type BridgedNavigationView.RootView and conformance BridgedNavigationView.RootView, &type metadata for BridgedNavigationView.RootView, type metadata accessor for _UIHostingView);
  v13 = objc_allocWithZone(v12);
  *&v2[direct field offset for UIHostingController.host] = specialized _UIHostingView.init(rootView:)(v18);
  type metadata accessor for _UIHostingView<BridgedPresentation.RootView>(0, &lazy cache variable for type metadata for UIHostingController<BridgedNavigationView.RootView>, lazy protocol witness table accessor for type BridgedNavigationView.RootView and conformance BridgedNavigationView.RootView, &type metadata for BridgedNavigationView.RootView, type metadata accessor for UIHostingController);
  v17.receiver = v2;
  v17.super_class = v14;
  v15 = objc_msgSendSuper2(&v17, sel_initWithNibName_bundle_, 0, 0);
  specialized UIHostingController._commonInit()(&lazy cache variable for type metadata for _UIHostingView<BridgedNavigationView.RootView>, lazy protocol witness table accessor for type BridgedNavigationView.RootView and conformance BridgedNavigationView.RootView, &type metadata for BridgedNavigationView.RootView, lazy protocol witness table accessor for type _UIHostingView<BridgedNavigationView.RootView> and conformance _UIHostingView<A>);

  outlined destroy of BridgedNavigationView.RootView(a1);
  return v15;
}

{
  v2 = v1;
  *&v1[direct field offset for UIHostingController.allowedBehaviors] = 0;
  *&v1[direct field offset for UIHostingController.requiredBridges] = 0;
  v4 = &v1[direct field offset for UIHostingController.overrides];
  *v4 = xmmword_18CD874C0;
  *(v4 + 2) = 0;
  v4[24] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v4[48] = 2;
  *&v2[direct field offset for UIHostingController.customTabItem] = 0;
  swift_unknownObjectWeakInit();
  *&v2[direct field offset for UIHostingController.toolbarBridge] = 0;
  *&v2[direct field offset for UIHostingController.inspectorBridgeV5] = 0;
  *&v2[direct field offset for UIHostingController.barAppearanceBridge] = 0;
  v5 = direct field offset for UIHostingController.dialogBridge;
  type metadata accessor for UIKitDialogBridge(0);
  swift_allocObject();
  *&v2[v5] = UIKitDialogBridge.init()();
  *&v2[direct field offset for UIHostingController.testBridge] = 0;
  *&v2[direct field offset for UIHostingController.contentScrollViewBridge] = 0;
  v6 = direct field offset for UIHostingController.modernNavigationBridge;
  type metadata accessor for ModernNavigationBridge();
  v7 = swift_allocObject();
  *(v7 + 16) = -1;
  *&v2[v6] = v7;
  *&v2[direct field offset for UIHostingController.alwaysOnBridge] = 0;
  v8 = direct field offset for UIHostingController.fileImportExportBridge;
  *&v2[v8] = [objc_allocWithZone(type metadata accessor for FileImportExportBridge(0)) init];
  *&v2[direct field offset for UIHostingController.deferredEdges] = 256;
  v9 = MEMORY[0x1E69E7CC0];
  *&v2[direct field offset for UIHostingController.screenEdgesSystemGestureSeedTracker] = MEMORY[0x1E69E7CC0];
  v2[direct field offset for UIHostingController.shouldDeferScreenEdgesSystemGestureToChildViewController] = 0;
  v10 = &v2[direct field offset for UIHostingController.persistentSystemOverlays];
  *v10 = 512;
  v10[2] = 3;
  *&v2[direct field offset for UIHostingController.persistentSystemOverlaysSeedTracker] = v9;
  v2[direct field offset for UIHostingController.shouldDeferPersistentSystemOverlaysToChildViewController] = 0;
  v11 = direct field offset for UIHostingController.backgroundBridge;
  type metadata accessor for ContainerBackgroundBridge();
  swift_allocObject();
  *&v2[v11] = ContainerBackgroundBridge.init()();
  *&v2[direct field offset for UIHostingController.navigationBridge] = 0;
  *&v2[direct field offset for UIHostingController.keyboardShortcutBridge] = 0;
  *&v2[direct field offset for UIHostingController.sizingOptions] = 0;
  type metadata accessor for _UIHostingView<BridgedPresentation.RootView>(0, &lazy cache variable for type metadata for _UIHostingView<PreparedCompactColumn>, lazy protocol witness table accessor for type PreparedCompactColumn and conformance PreparedCompactColumn, &type metadata for PreparedCompactColumn, type metadata accessor for _UIHostingView);
  v13 = objc_allocWithZone(v12);
  *&v2[direct field offset for UIHostingController.host] = specialized _UIHostingView.init(rootView:)(a1);
  type metadata accessor for _UIHostingView<BridgedPresentation.RootView>(0, &lazy cache variable for type metadata for UIHostingController<PreparedCompactColumn>, lazy protocol witness table accessor for type PreparedCompactColumn and conformance PreparedCompactColumn, &type metadata for PreparedCompactColumn, type metadata accessor for UIHostingController);
  v17.receiver = v2;
  v17.super_class = v14;
  v15 = objc_msgSendSuper2(&v17, sel_initWithNibName_bundle_, 0, 0);
  specialized UIHostingController._commonInit()(&lazy cache variable for type metadata for _UIHostingView<PreparedCompactColumn>, lazy protocol witness table accessor for type PreparedCompactColumn and conformance PreparedCompactColumn, &type metadata for PreparedCompactColumn, lazy protocol witness table accessor for type _UIHostingView<PreparedCompactColumn> and conformance _UIHostingView<A>);

  return v15;
}

{
  v2 = v1;
  *&v1[direct field offset for UIHostingController.allowedBehaviors] = 0;
  *&v1[direct field offset for UIHostingController.requiredBridges] = 0;
  v4 = &v1[direct field offset for UIHostingController.overrides];
  *v4 = xmmword_18CD874C0;
  *(v4 + 2) = 0;
  v4[24] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v4[48] = 2;
  *&v2[direct field offset for UIHostingController.customTabItem] = 0;
  swift_unknownObjectWeakInit();
  *&v2[direct field offset for UIHostingController.toolbarBridge] = 0;
  *&v2[direct field offset for UIHostingController.inspectorBridgeV5] = 0;
  *&v2[direct field offset for UIHostingController.barAppearanceBridge] = 0;
  v5 = direct field offset for UIHostingController.dialogBridge;
  type metadata accessor for UIKitDialogBridge(0);
  swift_allocObject();
  *&v2[v5] = UIKitDialogBridge.init()();
  *&v2[direct field offset for UIHostingController.testBridge] = 0;
  *&v2[direct field offset for UIHostingController.contentScrollViewBridge] = 0;
  v6 = direct field offset for UIHostingController.modernNavigationBridge;
  type metadata accessor for ModernNavigationBridge();
  v7 = swift_allocObject();
  *(v7 + 16) = -1;
  *&v2[v6] = v7;
  *&v2[direct field offset for UIHostingController.alwaysOnBridge] = 0;
  v8 = direct field offset for UIHostingController.fileImportExportBridge;
  *&v2[v8] = [objc_allocWithZone(type metadata accessor for FileImportExportBridge(0)) init];
  *&v2[direct field offset for UIHostingController.deferredEdges] = 256;
  v9 = MEMORY[0x1E69E7CC0];
  *&v2[direct field offset for UIHostingController.screenEdgesSystemGestureSeedTracker] = MEMORY[0x1E69E7CC0];
  v2[direct field offset for UIHostingController.shouldDeferScreenEdgesSystemGestureToChildViewController] = 0;
  v10 = &v2[direct field offset for UIHostingController.persistentSystemOverlays];
  *v10 = 512;
  v10[2] = 3;
  *&v2[direct field offset for UIHostingController.persistentSystemOverlaysSeedTracker] = v9;
  v2[direct field offset for UIHostingController.shouldDeferPersistentSystemOverlaysToChildViewController] = 0;
  v11 = direct field offset for UIHostingController.backgroundBridge;
  type metadata accessor for ContainerBackgroundBridge();
  swift_allocObject();
  *&v2[v11] = ContainerBackgroundBridge.init()();
  *&v2[direct field offset for UIHostingController.navigationBridge] = 0;
  *&v2[direct field offset for UIHostingController.keyboardShortcutBridge] = 0;
  *&v2[direct field offset for UIHostingController.sizingOptions] = 0;
  type metadata accessor for _UIHostingView<BridgedPresentation.RootView>(0, &lazy cache variable for type metadata for _UIHostingView<MainContentView>, lazy protocol witness table accessor for type MainContentView and conformance MainContentView, &type metadata for MainContentView, type metadata accessor for _UIHostingView);
  v13 = objc_allocWithZone(v12);
  *&v2[direct field offset for UIHostingController.host] = specialized _UIHostingView.init(rootView:)(a1);
  type metadata accessor for _UIHostingView<BridgedPresentation.RootView>(0, &lazy cache variable for type metadata for UIHostingController<MainContentView>, lazy protocol witness table accessor for type MainContentView and conformance MainContentView, &type metadata for MainContentView, type metadata accessor for UIHostingController);
  v17.receiver = v2;
  v17.super_class = v14;
  v15 = objc_msgSendSuper2(&v17, sel_initWithNibName_bundle_, 0, 0);
  specialized UIHostingController._commonInit()(&lazy cache variable for type metadata for _UIHostingView<MainContentView>, lazy protocol witness table accessor for type MainContentView and conformance MainContentView, &type metadata for MainContentView, lazy protocol witness table accessor for type _UIHostingView<MainContentView> and conformance _UIHostingView<A>);

  return v15;
}

{
  v2 = v1;
  *&v1[direct field offset for UIHostingController.allowedBehaviors] = 0;
  *&v1[direct field offset for UIHostingController.requiredBridges] = 0;
  v4 = &v1[direct field offset for UIHostingController.overrides];
  *v4 = xmmword_18CD874C0;
  *(v4 + 2) = 0;
  v4[24] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v4[48] = 2;
  *&v2[direct field offset for UIHostingController.customTabItem] = 0;
  swift_unknownObjectWeakInit();
  *&v2[direct field offset for UIHostingController.toolbarBridge] = 0;
  *&v2[direct field offset for UIHostingController.inspectorBridgeV5] = 0;
  *&v2[direct field offset for UIHostingController.barAppearanceBridge] = 0;
  v5 = direct field offset for UIHostingController.dialogBridge;
  type metadata accessor for UIKitDialogBridge(0);
  swift_allocObject();
  *&v2[v5] = UIKitDialogBridge.init()();
  *&v2[direct field offset for UIHostingController.testBridge] = 0;
  *&v2[direct field offset for UIHostingController.contentScrollViewBridge] = 0;
  v6 = direct field offset for UIHostingController.modernNavigationBridge;
  type metadata accessor for ModernNavigationBridge();
  v7 = swift_allocObject();
  *(v7 + 16) = -1;
  *&v2[v6] = v7;
  *&v2[direct field offset for UIHostingController.alwaysOnBridge] = 0;
  v8 = direct field offset for UIHostingController.fileImportExportBridge;
  *&v2[v8] = [objc_allocWithZone(type metadata accessor for FileImportExportBridge(0)) init];
  *&v2[direct field offset for UIHostingController.deferredEdges] = 256;
  v9 = MEMORY[0x1E69E7CC0];
  *&v2[direct field offset for UIHostingController.screenEdgesSystemGestureSeedTracker] = MEMORY[0x1E69E7CC0];
  v2[direct field offset for UIHostingController.shouldDeferScreenEdgesSystemGestureToChildViewController] = 0;
  v10 = &v2[direct field offset for UIHostingController.persistentSystemOverlays];
  *v10 = 512;
  v10[2] = 3;
  *&v2[direct field offset for UIHostingController.persistentSystemOverlaysSeedTracker] = v9;
  v2[direct field offset for UIHostingController.shouldDeferPersistentSystemOverlaysToChildViewController] = 0;
  v11 = direct field offset for UIHostingController.backgroundBridge;
  type metadata accessor for ContainerBackgroundBridge();
  swift_allocObject();
  *&v2[v11] = ContainerBackgroundBridge.init()();
  *&v2[direct field offset for UIHostingController.navigationBridge] = 0;
  *&v2[direct field offset for UIHostingController.keyboardShortcutBridge] = 0;
  *&v2[direct field offset for UIHostingController.sizingOptions] = 0;
  v12 = MEMORY[0x1E6981910];
  v13 = MEMORY[0x1E6981900];
  type metadata accessor for UIHostingController<AnyView>(0, &lazy cache variable for type metadata for _UIHostingView<AnyView>, MEMORY[0x1E6981910], MEMORY[0x1E6981900], type metadata accessor for _UIHostingView);
  v15 = objc_allocWithZone(v14);
  *&v2[direct field offset for UIHostingController.host] = specialized _UIHostingView.init(rootView:)(a1);
  type metadata accessor for UIHostingController<AnyView>(0, &lazy cache variable for type metadata for UIHostingController<AnyView>, v12, v13, type metadata accessor for UIHostingController);
  v19.receiver = v2;
  v19.super_class = v16;
  v17 = objc_msgSendSuper2(&v19, sel_initWithNibName_bundle_, 0, 0);
  specialized UIHostingController._commonInit()(specialized _UIHostingView.updateBackgroundColor(), lazy protocol witness table accessor for type _UIHostingView<AnyView> and conformance _UIHostingView<A>);

  return v17;
}

id UIHostingController.init(rootView:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *MEMORY[0x1E69E7D40];
  v5 = specialized UIHostingController.init(rootView:)(a1);
  (*(*(*((v4 & v3) + 0x50) - 8) + 8))(a1);
  return v5;
}

uint64_t type metadata accessor for UIKitDialogBridge(uint64_t a1)
{
  result = type metadata singleton initialization cache for UIKitDialogBridge;
  if (!type metadata singleton initialization cache for UIKitDialogBridge)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for UIKitDialogBridge(uint64_t a1)
{
  type metadata accessor for DialogActionContext?(319, &lazy cache variable for type metadata for DialogActionContext?, type metadata accessor for DialogActionContext);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for DialogActionContext?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void type metadata completion function for DialogActionContext(uint64_t a1)
{
  _s7SwiftUI16CommandOperationVSgMaTm_1(319, &lazy cache variable for type metadata for DialogActionContext.CancelType?, type metadata accessor for DialogActionContext.CancelType);
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

void type metadata completion function for DialogActionContext.CancelType(uint64_t a1)
{
  _s7SwiftUI16CommandOperationVSgMaTm_1(319, &lazy cache variable for type metadata for PlatformItemList.Item?, type metadata accessor for PlatformItemList.Item);
  if (v1 <= 0x3F)
  {
    type metadata accessor for PlatformItemList.Item(319);
    if (v2 <= 0x3F)
    {
      swift_initEnumMetadataMultiPayload();
    }
  }
}

uint64_t type metadata accessor for PlatformItemList.Item(uint64_t a1)
{
  result = type metadata singleton initialization cache for PlatformItemList.Item;
  if (!type metadata singleton initialization cache for PlatformItemList.Item)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for PlatformItemList.Item(uint64_t a1)
{
  _s7SwiftUI16CommandOperationVSgMaTm_0(319, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

void *sub_18BD5241C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    _s7SwiftUI16CommandOperationVSgMaTm_1(0, &lazy cache variable for type metadata for DialogActionContext.CancelType?, type metadata accessor for DialogActionContext.CancelType);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 24);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t type metadata accessor for CommandOperation(uint64_t a1)
{
  result = type metadata singleton initialization cache for CommandOperation;
  if (!type metadata singleton initialization cache for CommandOperation)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for CommandOperation(uint64_t a1)
{
  result = type metadata accessor for CommandGroupPlacement(319);
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t type metadata completion function for CommandGroupPlacement(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t UIKitDialogBridge.init()()
{
  swift_unknownObjectWeakInit();
  *(v0 + 32) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + 40) = 0;
  *(v0 + 44) = 2;
  *(v0 + 48) = 0;
  *(v0 + 56) = 0;
  *(v0 + 64) = 0;
  *(v0 + 72) = 0;
  *(v0 + 80) = 0;
  *(v0 + 88) = 0;
  EnvironmentValues.init()();
  v1 = OBJC_IVAR____TtC7SwiftUI17UIKitDialogBridge_lastActionContext;
  v2 = type metadata accessor for DialogActionContext(0);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtC7SwiftUI17UIKitDialogBridge_lastPlatformItemList) = 0;
  *(v0 + OBJC_IVAR____TtC7SwiftUI17UIKitDialogBridge_actionsChangeDetector) = 0;
  return v0;
}

uint64_t type metadata completion function for FileImportExportBridge(uint64_t a1)
{
  result = type metadata accessor for FileImportExportBridge.PresentationState(319);
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

void type metadata accessor for URL?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void _s10Foundation3URLVSgMaTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void _s10Foundation3URLVSgMaTm_1(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void _s10Foundation3URLVSgMaTm_2(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void _s10Foundation3URLVSgMaTm_3(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void _s10Foundation3URLVSgMaTm_4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void _s10Foundation3URLVSgMaTm_5(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void _s10Foundation3URLVSgMaTm_6(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void _s10Foundation3URLVSgMaTm_7(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void type metadata completion function for FileImportExportBridge.PresentationState(uint64_t a1)
{
  type metadata accessor for FileImportExportBridge.Presentation?(319);
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

uint64_t type metadata completion function for FileImportExportBridge.Presentation(uint64_t a1)
{
  result = type metadata accessor for FileImportOperation(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for FileExportOperation(319);
    if (v3 <= 0x3F)
    {
      swift_initEnumMetadataMultiPayload();
      return 0;
    }
  }

  return result;
}

void type metadata accessor for Predicate<Pack{URL}>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Predicate<Pack{URL}>)
  {
    type metadata accessor for URL();
    v1 = type metadata accessor for Predicate();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Predicate<Pack{URL}>);
    }
  }
}

id UILargeContentViewerInteractionBridge.init()(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  *&v2[OBJC_IVAR____TtC7SwiftUI37UILargeContentViewerInteractionBridge_host + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v2[OBJC_IVAR____TtC7SwiftUI37UILargeContentViewerInteractionBridge_interaction] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *&v2[OBJC_IVAR____TtC7SwiftUI37UILargeContentViewerInteractionBridge_simultaneousGesture] = 0;
  v4 = &v2[OBJC_IVAR____TtC7SwiftUI37UILargeContentViewerInteractionBridge_activeItem];
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 4) = 0;
  *&v2[OBJC_IVAR____TtC7SwiftUI37UILargeContentViewerInteractionBridge_largeContentViewTreeSeed] = 0;
  v5 = &v2[OBJC_IVAR____TtC7SwiftUI37UILargeContentViewerInteractionBridge_largeContentViewTree];
  _s7SwiftUI33AccessibilityLargeContentViewTreeOWOi1_(v20);
  v6 = v20[13];
  *(v5 + 12) = v20[12];
  *(v5 + 13) = v6;
  *(v5 + 14) = v20[14];
  *(v5 + 120) = v21;
  v7 = v20[9];
  *(v5 + 8) = v20[8];
  *(v5 + 9) = v7;
  v8 = v20[11];
  *(v5 + 10) = v20[10];
  *(v5 + 11) = v8;
  v9 = v20[5];
  *(v5 + 4) = v20[4];
  *(v5 + 5) = v9;
  v10 = v20[7];
  *(v5 + 6) = v20[6];
  *(v5 + 7) = v10;
  v11 = v20[1];
  *v5 = v20[0];
  *(v5 + 1) = v11;
  v12 = v20[3];
  *(v5 + 2) = v20[2];
  *(v5 + 3) = v12;
  v13 = OBJC_IVAR____TtC7SwiftUI37UILargeContentViewerInteractionBridge_showLargeContentViewer;
  v2[v13] = [objc_opt_self() isEnabled];
  v19.receiver = v2;
  v19.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v19, sel_init);
  v15 = objc_opt_self();
  v16 = v14;
  v17 = [v15 defaultCenter];
  [v17 addObserver:v16 selector:sel_enabledStatusDidChange name:*MEMORY[0x1E69DE088] object:0];

  return v16;
}

double _s7SwiftUI33AccessibilityLargeContentViewTreeOWOi1_(uint64_t a1)
{
  result = 0.0;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 240) = 0x8000;
  return result;
}

void type metadata accessor for FocusItem?()
{
  if (!lazy cache variable for type metadata for FocusItem?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for FocusItem?);
    }
  }
}

uint64_t outlined destroy of FocusItem?(uint64_t a1)
{
  type metadata accessor for AnyAccessibilityValue?(0, &lazy cache variable for type metadata for FocusItem?, &type metadata for FocusItem);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t getEnumTagSinglePayload for FocusItem(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  if ((*(a1 + 48) & 0xF000000000000007) != 0)
  {
    v2 = *(a1 + 40) & 0x7FFFFFFF;
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

void type metadata accessor for (inserted: Bool, memberAfterInsert: UIHostingViewBase.Options)(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t specialized OptionSet<>.insert(_:)(uint64_t a1, uint64_t a2)
{
  v32 = a1;
  type metadata accessor for (inserted: Bool, memberAfterInsert: UIHostingViewBase.Options)(0, &lazy cache variable for type metadata for (inserted: Bool, memberAfterInsert: UIHostingViewBase.Options), MEMORY[0x1E69DC028]);
  v30 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v31 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v27 - v7;
  v9 = type metadata accessor for UIHostingViewBase.Options();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v27 - v15;
  v17 = *(v10 + 16);
  v29 = v2;
  v17(v12, v2, v9, v14);
  v18 = MEMORY[0x1E69DC028];
  v27 = lazy protocol witness table accessor for type GlassMaterialProvider.Options and conformance GlassMaterialProvider.Options(&lazy protocol witness table cache variable for type UIHostingViewBase.Options and conformance UIHostingViewBase.Options, MEMORY[0x1E69DC028], MEMORY[0x1E69DC038]);
  dispatch thunk of SetAlgebra.intersection(_:)();
  v19 = v18;
  v20 = v30;
  lazy protocol witness table accessor for type GlassMaterialProvider.Options and conformance GlassMaterialProvider.Options(&lazy protocol witness table cache variable for type UIHostingViewBase.Options and conformance UIHostingViewBase.Options, v19, MEMORY[0x1E69DC030]);
  v28 = a2;
  v21 = dispatch thunk of static Equatable.== infix(_:_:)();
  v22 = *(v20 + 48);
  *v8 = (v21 & 1) == 0;
  if (v21)
  {
    (*(v10 + 32))(&v8[v22], v16, v9);
  }

  else
  {
    (*(v10 + 8))(v16, v9);
    v23 = v28;
    (v17)(&v8[v22], v28, v9);
    (v17)(v12, v23, v9);
    dispatch thunk of SetAlgebra.formUnion(_:)();
  }

  v24 = v31;
  outlined init with take of (inserted: Bool, memberAfterInsert: UIHostingViewBase.Options)(v8, v31, &lazy cache variable for type metadata for (inserted: Bool, memberAfterInsert: UIHostingViewBase.Options), MEMORY[0x1E69DC028]);
  v25 = *v24;
  (*(v10 + 32))(v32, &v24[*(v20 + 48)], v9);
  return v25;
}

{
  v32 = a1;
  type metadata accessor for (inserted: Bool, memberAfterInsert: UIHostingViewBase.Options)(0, &lazy cache variable for type metadata for (inserted: Bool, memberAfterInsert: GlassMaterialProvider.Options), MEMORY[0x1E6999DB8]);
  v30 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v31 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v27 - v7;
  v9 = type metadata accessor for GlassMaterialProvider.Options();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v27 - v15;
  v17 = *(v10 + 16);
  v29 = v2;
  v17(v12, v2, v9, v14);
  v18 = MEMORY[0x1E6999DB8];
  v27 = lazy protocol witness table accessor for type GlassMaterialProvider.Options and conformance GlassMaterialProvider.Options(&lazy protocol witness table cache variable for type GlassMaterialProvider.Options and conformance GlassMaterialProvider.Options, MEMORY[0x1E6999DB8], MEMORY[0x1E6999DC8]);
  dispatch thunk of SetAlgebra.intersection(_:)();
  v19 = v18;
  v20 = v30;
  lazy protocol witness table accessor for type GlassMaterialProvider.Options and conformance GlassMaterialProvider.Options(&lazy protocol witness table cache variable for type GlassMaterialProvider.Options and conformance GlassMaterialProvider.Options, v19, MEMORY[0x1E6999DC0]);
  v28 = a2;
  v21 = dispatch thunk of static Equatable.== infix(_:_:)();
  v22 = *(v20 + 48);
  *v8 = (v21 & 1) == 0;
  if (v21)
  {
    (*(v10 + 32))(&v8[v22], v16, v9);
  }

  else
  {
    (*(v10 + 8))(v16, v9);
    v23 = v28;
    (v17)(&v8[v22], v28, v9);
    (v17)(v12, v23, v9);
    dispatch thunk of SetAlgebra.formUnion(_:)();
  }

  v24 = v31;
  outlined init with take of (inserted: Bool, memberAfterInsert: UIHostingViewBase.Options)(v8, v31, &lazy cache variable for type metadata for (inserted: Bool, memberAfterInsert: GlassMaterialProvider.Options), MEMORY[0x1E6999DB8]);
  v25 = *v24;
  (*(v10 + 32))(v32, &v24[*(v20 + 48)], v9);
  return v25;
}

uint64_t outlined init with take of (inserted: Bool, memberAfterInsert: UIHostingViewBase.Options)(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  type metadata accessor for (inserted: Bool, memberAfterInsert: UIHostingViewBase.Options)(0, a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t specialized FocusViewGraph.init(graph:)(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = AGSubgraphGetCurrent();
  swift_beginAccess();
  AGSubgraphSetCurrent();
  swift_beginAccess();
  if ((*(a1 + 361) & 0x20) != 0)
  {
    v8 = 0u;
    v9 = 0u;
    v10 = 0u;
    v11 = xmmword_18CD6A6D0;
    type metadata accessor for FocusItem?();
    Attribute.init<A>(body:value:flags:update:)();
    outlined destroy of FocusItem?(&v8);
    v4 = static CustomEventTrace.recordNamedProperty<A>(_:_:)();
    *&v8 = 0;
    BYTE8(v8) = 0;
    v9 = xmmword_18CD76350;
    Attribute.init<A>(body:value:flags:update:)();
    v3 = v4 | (static CustomEventTrace.recordNamedProperty<A>(_:_:)() << 32);
    v5 = MEMORY[0x1E69E7CC0];
    v6 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_7SwiftUI12PropertyListVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    *&v8 = 0;
    *(&v8 + 1) = v5;
    *&v9 = v6;
    Attribute.init<A>(body:value:flags:update:)();

    static CustomEventTrace.recordNamedProperty<A>(_:_:)();
    static CoreTesting.isRunning.getter();
    LOBYTE(v8) = 0;
    Attribute.init<A>(body:value:flags:update:)();
  }

  else
  {
    v3 = *MEMORY[0x1E698D3F8] | (*MEMORY[0x1E698D3F8] << 32);
  }

  AGSubgraphSetCurrent();

  return v3;
}

unint64_t lazy protocol witness table accessor for type FocusViewGraph and conformance FocusViewGraph()
{
  result = lazy protocol witness table cache variable for type FocusViewGraph and conformance FocusViewGraph;
  if (!lazy protocol witness table cache variable for type FocusViewGraph and conformance FocusViewGraph)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for FocusViewGraph, &type metadata for FocusViewGraph, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type FocusViewGraph and conformance FocusViewGraph);
  }

  return result;
}

__n128 __swift_memcpy19_4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 15) = *(a2 + 15);
  *a1 = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type PlatformItemListViewGraph and conformance PlatformItemListViewGraph()
{
  result = lazy protocol witness table cache variable for type PlatformItemListViewGraph and conformance PlatformItemListViewGraph;
  if (!lazy protocol witness table cache variable for type PlatformItemListViewGraph and conformance PlatformItemListViewGraph)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PlatformItemListViewGraph, &type metadata for PlatformItemListViewGraph, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PlatformItemListViewGraph and conformance PlatformItemListViewGraph);
  }

  return result;
}

uint64_t __swift_memcpy10_4(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t AccessibilityViewGraph.init(graph:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = AGSubgraphGetCurrent();
  swift_beginAccess();
  AGSubgraphSetCurrent();
  swift_beginAccess();
  if ((*(a1 + 361) & 0x20) != 0)
  {
    v7 = MEMORY[0x1E69E7CC0];
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI30AccessibilityEnabledTechnologyO_SDyAC0E5FocusV5MatchOShyAC8UniqueIDVGGTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    v5 = Attribute.init<A>(body:value:flags:update:)();

    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI30AccessibilityEnabledTechnologyO_AC0E5FocusV6TargetVTt0g5Tf4g_n(v7);

    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI30AccessibilityEnabledTechnologyO_AC0E5FocusV6TargetVTt0g5Tf4g_n(v7);
    v6 = Attribute.init<A>(body:value:flags:update:)();
  }

  else
  {
    v5 = *MEMORY[0x1E698D3F8];
    v6 = *MEMORY[0x1E698D3F8];
  }

  AGSubgraphSetCurrent();

  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 24) = 0;
  *(a2 + 16) = 0;
  *(a2 + 28) = 0;
  *(a2 + 32) = 0;
  *(a2 + 36) = v5;
  *(a2 + 40) = v6;
  *(a2 + 44) = 1;
  *(a2 + 48) = 0;
  return result;
}

unint64_t lazy protocol witness table accessor for type AccessibilityViewGraph and conformance AccessibilityViewGraph()
{
  result = lazy protocol witness table cache variable for type AccessibilityViewGraph and conformance AccessibilityViewGraph;
  if (!lazy protocol witness table cache variable for type AccessibilityViewGraph and conformance AccessibilityViewGraph)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AccessibilityViewGraph, &type metadata for AccessibilityViewGraph, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityViewGraph and conformance AccessibilityViewGraph);
  }

  return result;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t initializeWithCopy for AccessibilityViewGraph(uint64_t a1, uint64_t *a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 1);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 44) = *(a2 + 22);
  *(a1 + 48) = a2[6];

  return a1;
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

unint64_t lazy protocol witness table accessor for type HoverEventDispatcher and conformance HoverEventDispatcher()
{
  result = lazy protocol witness table cache variable for type HoverEventDispatcher and conformance HoverEventDispatcher;
  if (!lazy protocol witness table cache variable for type HoverEventDispatcher and conformance HoverEventDispatcher)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for HoverEventDispatcher, &type metadata for HoverEventDispatcher, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type HoverEventDispatcher and conformance HoverEventDispatcher);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type HoverEvent and conformance HoverEvent()
{
  result = lazy protocol witness table cache variable for type HoverEvent and conformance HoverEvent;
  if (!lazy protocol witness table cache variable for type HoverEvent and conformance HoverEvent)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for HoverEvent, &type metadata for HoverEvent, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type HoverEvent and conformance HoverEvent);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PencilDoubleTapEventDispatcher and conformance PencilDoubleTapEventDispatcher()
{
  result = lazy protocol witness table cache variable for type PencilDoubleTapEventDispatcher and conformance PencilDoubleTapEventDispatcher;
  if (!lazy protocol witness table cache variable for type PencilDoubleTapEventDispatcher and conformance PencilDoubleTapEventDispatcher)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PencilDoubleTapEventDispatcher, &type metadata for PencilDoubleTapEventDispatcher, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PencilDoubleTapEventDispatcher and conformance PencilDoubleTapEventDispatcher);
  }

  return result;
}

void *_sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI7EventIDV_AC0E7BindingVTt0g5Tf4g_n(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  type metadata accessor for _DictionaryStorage<Edge, Bool>(0, &lazy cache variable for type metadata for _DictionaryStorage<EventID, EventBinding>, lazy protocol witness table accessor for type EventID and conformance EventID, MEMORY[0x1E69819B0], MEMORY[0x1E697DE50]);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = specialized __RawDictionaryStorage.find<A>(_:)(v4, v5);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v9 = v7;
  result = v6;
  v11 = a1 + 9;
  while (1)
  {
    *(v3 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    v12 = (v3[6] + 16 * v9);
    *v12 = v4;
    v12[1] = v5;
    *(v3[7] + 8 * v9) = result;
    v13 = v3[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v3[2] = v15;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v16 = v11 + 3;
    v4 = *(v11 - 2);
    v5 = *(v11 - 1);
    v17 = *v11;

    v9 = specialized __RawDictionaryStorage.find<A>(_:)(v4, v5);
    v11 = v16;
    result = v17;
    if (v18)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type PencilDoubleTapEvent and conformance PencilDoubleTapEvent()
{
  result = lazy protocol witness table cache variable for type PencilDoubleTapEvent and conformance PencilDoubleTapEvent;
  if (!lazy protocol witness table cache variable for type PencilDoubleTapEvent and conformance PencilDoubleTapEvent)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PencilDoubleTapEvent, &type metadata for PencilDoubleTapEvent, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PencilDoubleTapEvent and conformance PencilDoubleTapEvent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PencilDoubleTapEvent and conformance PencilDoubleTapEvent;
  if (!lazy protocol witness table cache variable for type PencilDoubleTapEvent and conformance PencilDoubleTapEvent)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PencilDoubleTapEvent, &type metadata for PencilDoubleTapEvent, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PencilDoubleTapEvent and conformance PencilDoubleTapEvent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PencilDoubleTapEvent and conformance PencilDoubleTapEvent;
  if (!lazy protocol witness table cache variable for type PencilDoubleTapEvent and conformance PencilDoubleTapEvent)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PencilDoubleTapEvent, &type metadata for PencilDoubleTapEvent, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PencilDoubleTapEvent and conformance PencilDoubleTapEvent);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PencilSqueezeEventDispatcher and conformance PencilSqueezeEventDispatcher()
{
  result = lazy protocol witness table cache variable for type PencilSqueezeEventDispatcher and conformance PencilSqueezeEventDispatcher;
  if (!lazy protocol witness table cache variable for type PencilSqueezeEventDispatcher and conformance PencilSqueezeEventDispatcher)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PencilSqueezeEventDispatcher, &type metadata for PencilSqueezeEventDispatcher, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PencilSqueezeEventDispatcher and conformance PencilSqueezeEventDispatcher);
  }

  return result;
}

uint64_t UIKitEventBindingBridge.init(eventBindingManager:)(uint64_t a1)
{
  v1[4] = 0;
  v1[6] = 0;
  if ((MEMORY[0x18D008800]() & 1) == 0)
  {
    v2 = [objc_allocWithZone(type metadata accessor for UIKitGestureRecognizer()) init];
    v3 = v1[4];
    v1[4] = v2;
  }

  v1[5] = [objc_allocWithZone(type metadata accessor for UIKitHoverGestureRecognizer()) init];

  v4 = EventBindingBridge.init(eventBindingManager:)();
  v5 = *(v4 + 32);
  if (v5)
  {
    swift_weakAssign();
    Strong = swift_weakLoadStrong();
    v7 = *((*MEMORY[0x1E69E7D40] & *v5) + 0xF0);

    v8 = v5;
    v7(Strong);
  }

  else
  {
  }

  swift_weakAssign();

  return v4;
}

unint64_t lazy protocol witness table accessor for type PencilSqueezeEvent and conformance PencilSqueezeEvent()
{
  result = lazy protocol witness table cache variable for type PencilSqueezeEvent and conformance PencilSqueezeEvent;
  if (!lazy protocol witness table cache variable for type PencilSqueezeEvent and conformance PencilSqueezeEvent)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PencilSqueezeEvent, &type metadata for PencilSqueezeEvent, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PencilSqueezeEvent and conformance PencilSqueezeEvent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PencilSqueezeEvent and conformance PencilSqueezeEvent;
  if (!lazy protocol witness table cache variable for type PencilSqueezeEvent and conformance PencilSqueezeEvent)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PencilSqueezeEvent, &type metadata for PencilSqueezeEvent, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PencilSqueezeEvent and conformance PencilSqueezeEvent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PencilSqueezeEvent and conformance PencilSqueezeEvent;
  if (!lazy protocol witness table cache variable for type PencilSqueezeEvent and conformance PencilSqueezeEvent)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PencilSqueezeEvent, &type metadata for PencilSqueezeEvent, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PencilSqueezeEvent and conformance PencilSqueezeEvent);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type KeyEventDispatcher and conformance KeyEventDispatcher()
{
  result = lazy protocol witness table cache variable for type KeyEventDispatcher and conformance KeyEventDispatcher;
  if (!lazy protocol witness table cache variable for type KeyEventDispatcher and conformance KeyEventDispatcher)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for KeyEventDispatcher, &type metadata for KeyEventDispatcher, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type KeyEventDispatcher and conformance KeyEventDispatcher);
  }

  return result;
}

void *_sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI7EventIDV_SayAC8KeyPressV7HandlerVGTt0g5Tf4g_n(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  type metadata accessor for _DictionaryStorage<NavigationState.ListKey, [Binding<Bool>]>(0, &lazy cache variable for type metadata for _DictionaryStorage<EventID, [KeyPress.Handler]>, type metadata accessor for [KeyPress.Handler], lazy protocol witness table accessor for type EventID and conformance EventID, MEMORY[0x1E69819B0]);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = specialized __RawDictionaryStorage.find<A>(_:)(v4, v5);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v9 = v7;
  result = v6;
  v11 = a1 + 9;
  while (1)
  {
    *(v3 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    v12 = (v3[6] + 16 * v9);
    *v12 = v4;
    v12[1] = v5;
    *(v3[7] + 8 * v9) = result;
    v13 = v3[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v3[2] = v15;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v16 = v11 + 3;
    v4 = *(v11 - 2);
    v5 = *(v11 - 1);
    v17 = *v11;

    v9 = specialized __RawDictionaryStorage.find<A>(_:)(v4, v5);
    v11 = v16;
    result = v17;
    if (v18)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type KeyEvent and conformance KeyEvent()
{
  result = lazy protocol witness table cache variable for type KeyEvent and conformance KeyEvent;
  if (!lazy protocol witness table cache variable for type KeyEvent and conformance KeyEvent)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for KeyEvent, &type metadata for KeyEvent, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type KeyEvent and conformance KeyEvent);
  }

  return result;
}

uint64_t type metadata accessor for UIKitEventBindingBridge(uint64_t a1)
{
  result = type metadata singleton initialization cache for UIKitEventBindingBridge;
  if (!type metadata singleton initialization cache for UIKitEventBindingBridge)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

_UNKNOWN **_UIHostingView.as<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v58 = a3;
  v53 = *MEMORY[0x1E69E7D40] & *v3;
  v56 = type metadata accessor for Optional();
  v6 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v57 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v50 - v9;
  v11 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v52 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v50 - v15;
  UIHostingViewBase._as<A>(_:)();
  v17 = *(v11 + 48);
  if (v17(v10, 1, a2) != 1)
  {
    v30 = *(v11 + 32);
    v30(v16, v10, a2);
    v29 = v58;
    v30(v58, v16, a2);
    v31 = 0;
    v24 = a2;
    return (*(v11 + 56))(v29, v31, 1, v24);
  }

  v54 = v11;
  v51 = a2;
  v18 = *(v6 + 8);
  v19 = v56;
  v18(v10, v56);
  v50 = v3;
  v20 = _UIHostingView.viewController.getter();
  if (v20)
  {
    v21 = v20;
    v22 = v57;
    v23 = a1;
    v24 = v51;
    UIHostingController._as<A>(_:)(a1, v51, v57);

    v25 = v22;
    if (v17(v22, 1, v24) != 1)
    {
      v11 = v54;
      v26 = v25;
      v27 = *(v54 + 32);
      v28 = v52;
      v27(v52, v26, v24);
      v29 = v58;
      v27(v58, v28, v24);
LABEL_61:
      v31 = 0;
      return (*(v11 + 56))(v29, v31, 1, v24);
    }
  }

  else
  {
    v25 = v57;
    v24 = v51;
    (*(v54 + 56))(v57, 1, 1, v51);
    v23 = a1;
  }

  v18(v25, v19);
  if (type metadata accessor for DropDelegate(0, &lazy cache variable for type metadata for FocusHost, &protocol descriptor for FocusHost, 0) == v23)
  {
    v41 = type metadata accessor for _UIHostingView(255, *(v53 + 80), *(v53 + 88), v32);
    result = swift_getWitnessTable(protocol conformance descriptor for _UIHostingView<A>, v41);
    v59 = v50;
    v60 = result;
    v11 = v54;
    if (v55 == 16)
    {
      v29 = v58;
      (*(v54 + 16))(v58, &v59, v24);
      goto LABEL_61;
    }

    __break(1u);
    goto LABEL_64;
  }

  v33 = type metadata accessor for DropDelegate(0, &lazy cache variable for type metadata for PlatformItemListHost, &protocol descriptor for PlatformItemListHost, 0);
  v11 = v54;
  if (v33 == v23)
  {
    v59 = v50;
    v60 = &protocol witness table for _UIHostingView<A>;
    v29 = v58;
    if (v55 == 16)
    {
      goto LABEL_60;
    }

    __break(1u);
    goto LABEL_31;
  }

  v35 = type metadata accessor for DropDelegate(0, &lazy cache variable for type metadata for AccessibilityHost, &protocol descriptor for AccessibilityHost, 0);
  v29 = v58;
  if (v35 == v23)
  {
LABEL_31:
    v59 = v50;
    v60 = &protocol witness table for _UIHostingView<A>;
    if (v55 == 16)
    {
      goto LABEL_60;
    }

    __break(1u);
    goto LABEL_33;
  }

  if (type metadata accessor for DropDelegate(0, &lazy cache variable for type metadata for UICoreViewControllerProvider, MEMORY[0x1E69DC170], 0) == v23)
  {
LABEL_33:
    v42 = type metadata accessor for _UIHostingView(255, *(v53 + 80), *(v53 + 88), v34);
    WitnessTable = swift_getWitnessTable(protocol conformance descriptor for _UIHostingView<A>, v42);
    v59 = v50;
    v60 = WitnessTable;
    if (v55 == 16)
    {
      goto LABEL_60;
    }

    __break(1u);
    goto LABEL_35;
  }

  if (type metadata accessor for DropDelegate(0, &lazy cache variable for type metadata for EventGraphHost, MEMORY[0x1E697E358], 0) == v23)
  {
LABEL_35:
    v44 = type metadata accessor for _UIHostingView(255, *(v53 + 80), *(v53 + 88), v36);
    v45 = swift_getWitnessTable(protocol conformance descriptor for _UIHostingView<A>, v44);
    v59 = v50;
    v60 = v45;
    if (v55 == 16)
    {
      goto LABEL_60;
    }

    __break(1u);
    goto LABEL_37;
  }

  if (type metadata accessor for DropDelegate(0, &lazy cache variable for type metadata for PointerHost, &protocol descriptor for PointerHost, 0) == v23)
  {
LABEL_37:
    v59 = v50;
    v60 = &protocol witness table for _UIHostingView<A>;
    if (v55 == 16)
    {
      goto LABEL_60;
    }

    __break(1u);
    goto LABEL_39;
  }

  if (type metadata accessor for DropDelegate(0, &lazy cache variable for type metadata for WindowLayoutHost, &protocol descriptor for WindowLayoutHost, 0) == v23)
  {
LABEL_39:
    v59 = v50;
    v60 = &protocol witness table for _UIHostingView<A>;
    if (v55 == 16)
    {
      goto LABEL_60;
    }

    __break(1u);
    goto LABEL_41;
  }

  if (type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIView, 0x1E69DD250) == v23)
  {
LABEL_41:
    v59 = v50;
    if (v55 == 8)
    {
      goto LABEL_60;
    }

    __break(1u);
    goto LABEL_43;
  }

  if (type metadata accessor for DropDelegate(0, &lazy cache variable for type metadata for CurrentEventProvider, &protocol descriptor for CurrentEventProvider, 0) == v23)
  {
LABEL_43:
    v59 = v50;
    v60 = &protocol witness table for _UIHostingView<A>;
    if (v55 == 16)
    {
      goto LABEL_60;
    }

    __break(1u);
    goto LABEL_45;
  }

  if (type metadata accessor for DropDelegate(0, &lazy cache variable for type metadata for FallbackResponderProvider, &protocol descriptor for FallbackResponderProvider, 0) == v23)
  {
LABEL_45:
    v59 = v50;
    v60 = &protocol witness table for _UIHostingView<A>;
    if (v55 == 16)
    {
      goto LABEL_60;
    }

    __break(1u);
    goto LABEL_47;
  }

  if (type metadata accessor for DropDelegate(0, &lazy cache variable for type metadata for ContainerBackgroundHost, &protocol descriptor for ContainerBackgroundHost, 0) == v23)
  {
LABEL_47:
    v59 = v50;
    v60 = &protocol witness table for _UIHostingView<A>;
    if (v55 == 16)
    {
      goto LABEL_60;
    }

    __break(1u);
LABEL_49:
    v61 = type metadata accessor for _UIHostingView(0, *(v53 + 80), *(v53 + 88), v37);
    result = swift_getWitnessTable(protocol conformance descriptor for _UIHostingView<A>, v61);
    v62 = result;
    v46 = v50;
    v59 = v50;
    if (v55 != 40)
    {
      __break(1u);
      goto LABEL_69;
    }

    goto LABEL_50;
  }

  if (type metadata accessor for DropDelegate(0, &lazy cache variable for type metadata for RootTransformAdjuster, MEMORY[0x1E697FCE0], 1) == v23)
  {
    goto LABEL_49;
  }

  if (type metadata accessor for DropDelegate(0, &lazy cache variable for type metadata for RootTransformUpdater, &protocol descriptor for RootTransformUpdater, 0) == v23)
  {
    v59 = v50;
    v60 = &protocol witness table for _UIHostingView<A>;
    if (v55 == 16)
    {
      goto LABEL_60;
    }

    __break(1u);
    goto LABEL_53;
  }

  if (type metadata accessor for DropDelegate(0, &lazy cache variable for type metadata for ViewRendererHost, MEMORY[0x1E697EB90], 0) == v23)
  {
LABEL_53:
    v48 = type metadata accessor for _UIHostingView(255, *(v53 + 80), *(v53 + 88), v38);
    v49 = swift_getWitnessTable(protocol conformance descriptor for _UIHostingView<A>, v48);
    v59 = v50;
    v60 = v49;
    if (v55 == 16)
    {
      goto LABEL_60;
    }

    __break(1u);
    goto LABEL_55;
  }

  if (type metadata accessor for DropDelegate(0, &lazy cache variable for type metadata for UIHostingViewProvider, &protocol descriptor for UIHostingViewProvider, 0) == v23)
  {
LABEL_55:
    v59 = v50;
    v60 = &protocol witness table for _UIHostingView<A>;
    if (v55 != 16)
    {
      __break(1u);
LABEL_57:
      v61 = type metadata accessor for _UIHostingView(0, *(v53 + 80), *(v53 + 88), v39);
      result = swift_getWitnessTable(protocol conformance descriptor for _UIHostingView<A>, v61);
      v62 = result;
      v46 = v50;
      v59 = v50;
      if (v55 != 40)
      {
        __break(1u);
LABEL_59:
        v59 = v50;
        v60 = &protocol witness table for _UIHostingView<A>;
        if (v55 == 16)
        {
          goto LABEL_60;
        }

LABEL_69:
        __break(1u);
        goto LABEL_70;
      }

LABEL_50:
      (*(v11 + 16))(v29, &v59, v24);
      v47 = v46;
      __swift_destroy_boxed_opaque_existential_1(&v59);
      goto LABEL_61;
    }

LABEL_60:
    (*(v11 + 16))(v29, &v59, v24);
    goto LABEL_61;
  }

  if (type metadata accessor for DropDelegate(0, &lazy cache variable for type metadata for ViewGraphRenderObserver, MEMORY[0x1E69802B8], 1) == v23)
  {
    goto LABEL_57;
  }

  result = type metadata accessor for DropDelegate(0, &lazy cache variable for type metadata for ToolbarInputFeatureDelegate, &protocol descriptor for ToolbarInputFeatureDelegate, 0);
  if (result == v23)
  {
    goto LABEL_59;
  }

  result = type metadata accessor for DropDelegate(0, &lazy cache variable for type metadata for ViewGraphBridgePropertiesDelegate, &protocol descriptor for ViewGraphBridgePropertiesDelegate, 0);
  if (result == v23)
  {
LABEL_64:
    v59 = v50;
    v60 = &protocol witness table for _UIHostingView<A>;
    if (v55 == 16)
    {
LABEL_67:
      v11 = v54;
      v29 = v58;
      v24 = v51;
      (*(v54 + 16))(v58, &v59, v51);
      goto LABEL_61;
    }

    __break(1u);
    goto LABEL_66;
  }

  result = type metadata accessor for DropDelegate(0, &lazy cache variable for type metadata for SensoryFeedbackCacheHost, &protocol descriptor for SensoryFeedbackCacheHost, 0);
  if (result != v23)
  {
    v31 = 1;
    v24 = v51;
    v29 = v58;
    v11 = v54;
    return (*(v11 + 56))(v29, v31, 1, v24);
  }

LABEL_66:
  v59 = v50;
  v60 = &protocol witness table for _UIHostingView<A>;
  if (v55 == 16)
  {
    goto LABEL_67;
  }

LABEL_70:
  __break(1u);
  return result;
}

void _UIHostingView.frame.setter(SEL *a1, SEL *a2, double a3, double a4, double a5, double a6)
{
  v7 = (*MEMORY[0x1E69E7D40] & *v6);
  if (*(v6 + v7[18]) == 1)
  {
    [v6 *a1];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = type metadata accessor for _UIHostingView(0, v7[10], v7[11], v21);
    v24.receiver = v6;
    v24.super_class = v22;
    objc_msgSendSuper2(&v24, *a2, a3, a4, a5, a6);
    v23 = _UIHostingView.base.getter();
    v25.origin.x = v14;
    v25.origin.y = v16;
    v25.size.width = v18;
    v25.size.height = v20;
    UIHostingViewBase.frameDidChange(oldValue:)(v25);
  }
}

double @objc _UIHostingView.frame.getter(void *a1, uint64_t a2, SEL *a3)
{
  v4 = a1;
  _UIHostingView.frame.getter(a3, v5, v6, v7);
  v9 = v8;

  return v9;
}

id _UIHostingView.frame.getter(SEL *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for _UIHostingView(0, *((*MEMORY[0x1E69E7D40] & *v4) + 0x50), *((*MEMORY[0x1E69E7D40] & *v4) + 0x58), a4);
  v8.receiver = v4;
  v8.super_class = v6;
  return objc_msgSendSuper2(&v8, *a1);
}

void @objc _UIHostingView.frame.setter(void *a1, double a2, double a3, double a4, double a5)
{
  v9 = a1;
  _UIHostingView.frame.setter(&selRef_frame, &selRef_setFrame_, a2, a3, a4, a5);
}

void *_UIHostingView.base.getter()
{
  v1 = MEMORY[0x1E69E7D40];
  v2 = (*MEMORY[0x1E69E7D40] & *v0);
  v3 = v2[14];
  v4 = *(v0 + v2[13]);
  if (*(v0 + v3))
  {
    *(v0 + v3) = 1;
    v5 = v4;
    return v4;
  }

  v6 = v4;
  v7 = UIHostingViewBase.uiView.getter();
  if (v7)
  {

    if (UIHostingViewBase.delegate.getter())
    {
      goto LABEL_5;
    }

LABEL_8:
    v11 = type metadata accessor for _UIHostingView(255, v2[10], v2[11], v8);
    swift_getWitnessTable(protocol conformance descriptor for _UIHostingView<A>, v11);
    swift_unknownObjectRetain();
    UIHostingViewBase.delegate.setter();
    if (UIHostingViewBase.updateDelegate.getter())
    {
      goto LABEL_6;
    }

LABEL_9:
    v12 = type metadata accessor for _UIHostingView(255, v2[10], v2[11], v9);
    swift_getWitnessTable(protocol conformance descriptor for _UIHostingView<A>, v12);
    swift_unknownObjectRetain();
    UIHostingViewBase.updateDelegate.setter();
    goto LABEL_10;
  }

  v10 = v0;
  UIHostingViewBase.uiView.setter();
  if (!UIHostingViewBase.delegate.getter())
  {
    goto LABEL_8;
  }

LABEL_5:
  swift_unknownObjectRelease();
  if (!UIHostingViewBase.updateDelegate.getter())
  {
    goto LABEL_9;
  }

LABEL_6:
  swift_unknownObjectRelease();
LABEL_10:
  UIHostingViewBase.viewGraph.getter();

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  if (Strong)
  {
    swift_unknownObjectRelease();
  }

  else
  {
    UIHostingViewBase.viewGraph.getter();

    v15 = type metadata accessor for _UIHostingView(255, v2[10], v2[11], v14);
    swift_getWitnessTable(protocol conformance descriptor for _UIHostingView<A>, v15);
    swift_unknownObjectRetain();
    DisplayList.ViewRenderer.host.setter();
  }

  *(v0 + *((*v1 & *v0) + 0x70)) = 1;
  return v4;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI15SensoryFeedbackV0F4TypeO_So19UIFeedbackGeneratorCTt0g5Tf4g_n(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  type metadata accessor for _DictionaryStorage<SensoryFeedback.FeedbackType, UIFeedbackGenerator>(0);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  result = specialized __RawDictionaryStorage.find<A>(_:)(v4, v5);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    v18 = v6;
    return v3;
  }

  v9 = (a1 + 9);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    v10 = (v3[6] + 16 * result);
    *v10 = v4;
    v10[1] = v5;
    *(v3[7] + 8 * result) = v6;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v9 + 3;
    v4 = *(v9 - 2);
    v5 = *(v9 - 1);
    v15 = *v9;
    v16 = v6;
    result = specialized __RawDictionaryStorage.find<A>(_:)(v4, v5);
    v9 = v14;
    v6 = v15;
    if (v17)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t specialized _UIHostingView.feedbackCache.getter()
{
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x180);
  if (*(v0 + v1))
  {
    v2 = *(v0 + v1);
  }

  else
  {
    type metadata accessor for UIKitSensoryFeedbackCache();
    v2 = swift_allocObject();
    swift_unknownObjectWeakInit();
    *(v2 + 24) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI15SensoryFeedbackV0F4TypeO_So19UIFeedbackGeneratorCTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t UIKitStatusBarBridge.addPreferences(to:)()
{
  v1 = v0;
  GraphHost.addPreference<A>(_:)();
  swift_beginAccess();
  v2 = *(v0 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + 24) = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v2 + 2) + 1, 1, v2);
    *(v1 + 24) = v2;
  }

  v5 = *(v2 + 2);
  v4 = *(v2 + 3);
  if (v5 >= v4 >> 1)
  {
    v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v4 > 1), v5 + 1, 1, v2);
  }

  *(v2 + 2) = v5 + 1;
  v6 = &v2[24 * v5];
  *(v6 + 4) = &type metadata for StatusBarKey;
  *(v6 + 5) = &protocol witness table for StatusBarKey;
  *(v6 + 12) = -1;
  *(v1 + 24) = v2;
  swift_endAccess();
  static Semantics.v7.getter();
  if ((isLinkedOnOrAfter(_:)() & 1) == 0)
  {
    swift_beginAccess();
    v7 = *(v1 + 24);
    v8 = swift_isUniquelyReferenced_nonNull_native();
    *(v1 + 24) = v7;
    if ((v8 & 1) == 0)
    {
      v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v7 + 2) + 1, 1, v7);
      *(v1 + 24) = v7;
    }

    v10 = *(v7 + 2);
    v9 = *(v7 + 3);
    if (v10 >= v9 >> 1)
    {
      v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1, v7);
    }

    *(v7 + 2) = v10 + 1;
    v11 = &v7[24 * v10];
    *(v11 + 4) = &type metadata for HostingGestureOverlayAuthorityKey;
    *(v11 + 5) = &protocol witness table for HostingGestureOverlayAuthorityKey;
    *(v11 + 12) = -1;
    *(v1 + 24) = v7;
    swift_endAccess();
  }

  swift_beginAccess();
  VersionSeedSetTracker.updateSeedsToEmpty()();
  return swift_endAccess();
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4, unint64_t *a5, uint64_t a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    type metadata accessor for Binding<Bool>(0, a5, a6, MEMORY[0x1E69E6F90]);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size_0(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * ((v13 - 32) / 24);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  v16 = 24 * v10;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[v16])
    {
      memmove(v14, v15, v16);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, v16);
  }

  return v12;
}

{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    type metadata accessor for Binding<Bool>(0, a5, a6, MEMORY[0x1E69E6F90]);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size_0(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 17;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 4);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[16 * v10])
    {
      memmove(v15, v16, 16 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v12;
}

{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    type metadata accessor for Binding<Bool>(0, a5, a6, MEMORY[0x1E69E6F90]);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size_0(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * ((v13 - 32) / 48);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[48 * v10])
    {
      memmove(v14, v15, 48 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v12;
}

{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    type metadata accessor for Binding<Bool>(0, a5, a6, MEMORY[0x1E69E6F90]);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size_0(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 25;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 3);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[8 * v10])
    {
      memmove(v15, v16, 8 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 8 * v10);
  }

  return v12;
}

{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    type metadata accessor for Binding<Bool>(0, a5, a6, MEMORY[0x1E69E6F90]);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size_0(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * ((v13 - 32) / 120);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[120 * v10])
    {
      memmove(v14, v15, 120 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v12;
}

{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    type metadata accessor for Binding<Bool>(0, a5, a6, MEMORY[0x1E69E6F90]);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size_0(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 + 31;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 6);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[64 * v10])
    {
      memmove(v15, v16, v10 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v12;
}

{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    type metadata accessor for Binding<Bool>(0, a5, a6, MEMORY[0x1E69E6F90]);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size_0(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * ((v13 - 32) / 24);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[24 * v10])
    {
      memmove(v14, v15, 24 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v12;
}

{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    type metadata accessor for Binding<Bool>(0, a5, a6, MEMORY[0x1E69E6F90]);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size_0(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * ((v13 - 32) / 40);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[40 * v10])
    {
      memmove(v14, v15, 40 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v12;
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *a1, int64_t a2, char a3, char *a4)
{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<VersionSeedSetTracker.Value>, &type metadata for VersionSeedSetTracker.Value);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<_CommandsOutputs>, &type metadata for _CommandsOutputs);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<_SceneOutputs>, &type metadata for _SceneOutputs);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<GridMetadata>, &type metadata for GridMetadata);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<ToolbarItemPlacement.Role>, &type metadata for ToolbarItemPlacement.Role);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<ObjectIdentifier>, MEMORY[0x1E69E5FE0]);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<_TableColumnOutputs>, &type metadata for _TableColumnOutputs);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<_TableRowOutputs>, &type metadata for _TableRowOutputs);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<TableRowID>, &type metadata for TableRowID);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<NavigationDestinationOutputs>, &type metadata for NavigationDestinationOutputs);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<ResponderBasedHitTestTracing>, &type metadata for ResponderBasedHitTestTracing);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, type metadata accessor for _ContiguousArrayStorage<(Int, Int)>);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<_SymbolEffect.Identified>, MEMORY[0x1E697E2A8]);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<UINavigationItemAdaptorStorage.Adaptor>, &type metadata for UINavigationItemAdaptorStorage.Adaptor);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<UISceneConnectionOptionDefinition.Type>, &lazy cache variable for type metadata for UISceneConnectionOptionDefinition.Type, &lazy cache variable for type metadata for UISceneConnectionOptionDefinition, MEMORY[0x1E69DC1E0]);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<_WidgetOutputs>, &type metadata for _WidgetOutputs);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<AccessibilityListRotorEntry>, &type metadata for AccessibilityListRotorEntry);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<_SymbolEffect>, MEMORY[0x1E697E2D0]);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<Namespace.ID>, MEMORY[0x1E6981EA0], MEMORY[0x1E69E6F90], type metadata accessor for Binding<Bool>);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<JindoTripleVStack.MajorAxisGroup.Group>, &type metadata for JindoTripleVStack.MajorAxisGroup.Group);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<AccessibilityRole>, &type metadata for AccessibilityRole);
}

Swift::Void __swiftcall VersionSeedSetTracker.updateSeedsToEmpty()()
{
  v1 = *v0;
  v2 = *(*v0 + 2);
  if (v2)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v1 = specialized _ArrayBuffer._consumeAndCreateNew()(v1);
    }

    if (v2 > *(v1 + 2))
    {
      __break(1u);
      return;
    }

    if (v2 == 1)
    {
      v3 = 0;
    }

    else
    {
      v3 = v2 & 0x7FFFFFFFFFFFFFFELL;
      v4 = v1 + 72;
      v5 = v2 & 0x7FFFFFFFFFFFFFFELL;
      do
      {
        *(v4 - 6) = 0;
        *v4 = 0;
        v4 += 12;
        v5 -= 2;
      }

      while (v5);
      if (v2 == v3)
      {
        goto LABEL_12;
      }
    }

    v6 = v2 - v3;
    v7 = &v1[24 * v3 + 48];
    do
    {
      *v7 = 0;
      v7 += 24;
      --v6;
    }

    while (v6);
LABEL_12:
    *v0 = v1;
  }
}

id outlined copy of SheetBridge<SheetPreference.Key>??(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

uint64_t ViewGraphDelegate.shouldCreateUIInteractions.getter(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContainerBackgroundHost(0, &lazy cache variable for type metadata for UIHostingViewProvider, &protocol descriptor for UIHostingViewProvider);
  (*(a2 + 16))(v9, v4, v4, a1, a2);
  if (v9[0])
  {
    v5 = v9[1];
    ObjectType = swift_getObjectType();
    v7 = (*(v5 + 40))(ObjectType, v5);
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

void type metadata accessor for Binding<Bool>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void type metadata accessor for Binding<Int>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void _s7SwiftUI7BindingVySbGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void _s7SwiftUI7BindingVySbGMaTm_1(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void _s7SwiftUI7BindingVySbGMaTm_2(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void _s7SwiftUI7BindingVySbGMaTm_3(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void _s7SwiftUI7BindingVySbGMaTm_4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void _s7SwiftUI7BindingVySbGMaTm_5(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void _s7SwiftUI7BindingVySbGMaTm_6(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void _s7SwiftUI7BindingVySbGMaTm_7(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void _s7SwiftUI7BindingVySbGMaTm_8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void _s7SwiftUI7BindingVySbGMaTm_9(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void _s7SwiftUI7BindingVySbGMaTm_10(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void _s7SwiftUI7BindingVySbGMaTm_11(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1)
{
  v3 = MEMORY[0x18D00F6C0](*(v1 + 40), a1);

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v3);
}

{
  Hasher.init(_seed:)();
  MEMORY[0x18D00F6F0](*(a1 + 8));
  v2 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v2);
}

{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v4);
}

{
  v1 = a1;
  Hasher.init(_seed:)();
  MEMORY[0x18D00F6F0](v1);
  v2 = Hasher._finalize()();
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(v1, v2);
}

{
  Hasher.init(_seed:)();
  MEMORY[0x18D00F6F0](a1);
  v2 = Hasher._finalize()();
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v2);
}

{
  v1 = a1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  v2 = Hasher._finalize()();
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(v1, v2);
}

{
  Hasher.init(_seed:)();
  MEMORY[0x18D00F6F0](a1);
  v2 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v2);
}

{
  Hasher.init(_seed:)();
  AnyHashable.hash(into:)();
  _sypSgWOcTm_0(a1 + 40, &v6, &lazy cache variable for type metadata for ToolbarItemPlacement.Role?, &type metadata for ToolbarItemPlacement.Role);
  if (v7[24] == 255)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v4 = v6;
    v5[0] = *v7;
    *(v5 + 9) = *&v7[9];
    Hasher._combine(_:)(1u);
    ToolbarItemPlacement.Role.hash(into:)(v8);
    outlined destroy of ToolbarItemPlacement.Role(&v4);
  }

  v2 = Hasher._finalize()();
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v2);
}

{
  v2 = v1;
  v4 = NSObject._rawHashValue(seed:)(*(v2 + 40));
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v4, &lazy cache variable for type metadata for UINavigationController, 0x1E69DCCD8);
}

{
  type metadata accessor for UUID();
  v2 = MEMORY[0x1E69695A8];
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  v3 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v3, MEMORY[0x1E69695A8], &lazy protocol witness table cache variable for type UUID and conformance UUID, v2, MEMORY[0x1E69695C8]);
}

{
  type metadata accessor for CodingUserInfoKey();
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v2);
}

{
  v1 = a1;
  Hasher.init(_seed:)();
  if ((v1 - 2) >= 3u)
  {
    MEMORY[0x18D00F6F0](0);
    v2 = v1 & 1;
  }

  else
  {
    v2 = v1 - 1;
  }

  MEMORY[0x18D00F6F0](v2);
  v3 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(v1, v3);
}

{
  Hasher.init(_seed:)();
  AnyHashable.hash(into:)();
  MEMORY[0x18D00F6F0](*(a1 + 40));
  v2 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v2);
}

{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v2);
}

{
  v2 = v1;
  v4 = NSObject._rawHashValue(seed:)(*(v2 + 40));
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v4, &lazy cache variable for type metadata for UIDragItem, 0x1E69DC990);
}

{
  Hasher.init(_seed:)();
  type metadata accessor for CommandGroupPlacement(0);
  UUID.hash(into:)();
  v2 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v2);
}

{
  v2 = v1;
  v4 = NSObject._rawHashValue(seed:)(*(v2 + 40));
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v4, &lazy cache variable for type metadata for UIMenuElement, 0x1E69DCC78);
}

{
  Hasher.init(_seed:)();
  Selector.hash(into:)();
  v2 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v2);
}

{
  Hasher.init(_seed:)();
  v2 = *(a1 + 112);
  if (*(a1 + 120))
  {
    MEMORY[0x18D00F6F0](*(a1 + 104));
    Hasher._combine(_:)(v2);
  }

  else
  {
    String.hash(into:)();
  }

  v3 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v3);
}

{
  type metadata accessor for PartialKeyPath<UISplitViewController>(0, &lazy cache variable for type metadata for PartialKeyPath<UISplitViewController>, &lazy cache variable for type metadata for UISplitViewController, 0x1E69DCF78, MEMORY[0x1E69E6B88]);
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v2);
}

{
  type metadata accessor for IntelligenceDataSourceItem();
  v2 = MEMORY[0x1E69DBC58];
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type IntelligenceDataSourceItem and conformance IntelligenceDataSourceItem, MEMORY[0x1E69DBC58], MEMORY[0x1E69DBC60]);
  v3 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v3, MEMORY[0x1E69DBC58], &lazy protocol witness table cache variable for type IntelligenceDataSourceItem and conformance IntelligenceDataSourceItem, v2, MEMORY[0x1E69DBC68]);
}

{
  v2 = v1;
  v4 = NSObject._rawHashValue(seed:)(*(v2 + 40));
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v4, &lazy cache variable for type metadata for NSFileWrapper, 0x1E696AC38);
}

{
  Hasher.init(_seed:)();
  outlined init with copy of TableRowID(a1, v7);
  if (v9)
  {
    v5[0] = v7[0];
    v5[1] = v7[1];
    v6 = v8;
    MEMORY[0x18D00F6F0](1);
    AnyHashable.hash(into:)();
    outlined destroy of AnyHashable(v5);
  }

  else
  {
    v2 = *&v7[0];
    MEMORY[0x18D00F6F0](0);
    MEMORY[0x18D00F6F0](v2);
  }

  v3 = Hasher._finalize()();
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v3);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      outlined init with copy of HashableWeakBox<UIViewController>(*(v2 + 48) + 16 * v4, v9);
      v7 = v9[1];
      outlined destroy of HashableWeakBox<UIViewController>(v9);
      if (v7 == *(a1 + 8))
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      outlined init with copy of ToolbarPlacement.Role(*(v2 + 48) + 40 * v4, v17);
      outlined init with copy of ToolbarPlacement.Role(v17, v12);
      outlined init with copy of ToolbarPlacement.Role(a1, &v14);
      if (v13 <= 2)
      {
        switch(v13)
        {
          case 0:
            outlined destroy of ToolbarPlacement.Role(v17);
            if (!*(&v15 + 1))
            {
              goto LABEL_32;
            }

            goto LABEL_26;
          case 1:
            outlined destroy of ToolbarPlacement.Role(v17);
            if (*(&v15 + 1) == 1)
            {
              goto LABEL_32;
            }

            goto LABEL_26;
          case 2:
            outlined destroy of ToolbarPlacement.Role(v17);
            if (*(&v15 + 1) == 2)
            {
              goto LABEL_32;
            }

            goto LABEL_26;
        }
      }

      else
      {
        if (v13 <= 4)
        {
          if (v13 == 3)
          {
            outlined destroy of ToolbarPlacement.Role(v17);
            if (*(&v15 + 1) == 3)
            {
              goto LABEL_32;
            }
          }

          else
          {
            outlined destroy of ToolbarPlacement.Role(v17);
            if (*(&v15 + 1) == 4)
            {
              goto LABEL_32;
            }
          }

          goto LABEL_26;
        }

        if (v13 == 5)
        {
          outlined destroy of ToolbarPlacement.Role(v17);
          if (*(&v15 + 1) == 5)
          {
            goto LABEL_32;
          }

          goto LABEL_26;
        }

        if (v13 == 6)
        {
          outlined destroy of ToolbarPlacement.Role(v17);
          if (*(&v15 + 1) == 6)
          {
            goto LABEL_32;
          }

          goto LABEL_26;
        }
      }

      outlined init with copy of ToolbarPlacement.Role(v12, v11);
      if (*(&v15 + 1) < 7uLL)
      {
        outlined destroy of ToolbarPlacement.Role(v17);
        outlined destroy of AnyHashable(v11);
LABEL_26:
        outlined destroy of (AccessibilityAttachment.Tree, AccessibilityAttachment.Tree)(v12, &lazy cache variable for type metadata for (ToolbarPlacement.Role, ToolbarPlacement.Role), &type metadata for ToolbarPlacement.Role);
        goto LABEL_27;
      }

      v9[0] = v14;
      v9[1] = v15;
      v10 = v16;
      v7 = MEMORY[0x18D00E7E0](v11, v9);
      outlined destroy of AnyHashable(v9);
      outlined destroy of ToolbarPlacement.Role(v17);
      outlined destroy of AnyHashable(v11);
      if (v7)
      {
LABEL_32:
        outlined destroy of ToolbarPlacement.Role(v12);
        return v4;
      }

      outlined destroy of ToolbarPlacement.Role(v12);
LABEL_27:
      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      outlined init with copy of AnyHashable(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x18D00E7E0](v9, a1);
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

{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      outlined init with copy of Toolbar.BarLocation(*(v2 + 48) + 40 * v4, v9);
      v7 = specialized static Toolbar.BarLocation.== infix(_:_:)(v9, a1);
      outlined destroy of Toolbar.BarLocation(v9);
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

{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      outlined init with copy of ToolbarStorage.Entry.ID(*(v2 + 48) + 88 * v4, v15);
      if (MEMORY[0x18D00E7E0](v15, a1))
      {
        _sypSgWOcTm_0(&v16, v12, &lazy cache variable for type metadata for ToolbarItemPlacement.Role?, &type metadata for ToolbarItemPlacement.Role);
        _sypSgWOcTm_0(a1 + 40, &v13, &lazy cache variable for type metadata for ToolbarItemPlacement.Role?, &type metadata for ToolbarItemPlacement.Role);
        if (v12[40] == 255)
        {
          outlined destroy of ToolbarStorage.Entry.ID(v15);
          if (v14[24] == 255)
          {
            _sypSgWOhTm_0(v12, &lazy cache variable for type metadata for ToolbarItemPlacement.Role?, &type metadata for ToolbarItemPlacement.Role);
            return v4;
          }

          goto LABEL_13;
        }

        _sypSgWOcTm_0(v12, v11, &lazy cache variable for type metadata for ToolbarItemPlacement.Role?, &type metadata for ToolbarItemPlacement.Role);
        if (v14[24] == 255)
        {
          outlined destroy of ToolbarStorage.Entry.ID(v15);
          outlined destroy of ToolbarItemPlacement.Role(v11);
LABEL_13:
          outlined destroy of (AnyNavigationLinkPresentedValue?, AnyNavigationLinkPresentedValue?)(v12, &lazy cache variable for type metadata for (ToolbarItemPlacement.Role?, ToolbarItemPlacement.Role?), &lazy cache variable for type metadata for ToolbarItemPlacement.Role?, &type metadata for ToolbarItemPlacement.Role);
          goto LABEL_4;
        }

        v9 = v13;
        v10[0] = *v14;
        *(v10 + 9) = *&v14[9];
        v7 = specialized static ToolbarItemPlacement.Role.== infix(_:_:)(v11, &v9);
        outlined destroy of ToolbarItemPlacement.Role(&v9);
        outlined destroy of ToolbarStorage.Entry.ID(v15);
        outlined destroy of ToolbarItemPlacement.Role(v11);
        _sypSgWOhTm_0(v12, &lazy cache variable for type metadata for ToolbarItemPlacement.Role?, &type metadata for ToolbarItemPlacement.Role);
        if (v7)
        {
          return v4;
        }
      }

      else
      {
        outlined destroy of ToolbarStorage.Entry.ID(v15);
      }

LABEL_4:
      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      v7 = *(v2 + 48) + 48 * result;
      if (*v7 == *a1)
      {
        v8 = *(v7 + 8) == *(a1 + 8) && *(v7 + 16) == *(a1 + 16);
        v9 = v8 && *(v7 + 24) == *(a1 + 24);
        if (v9 && *(v7 + 32) == *(a1 + 32) && *(v7 + 40) == (*(a1 + 40) & 1))
        {
          break;
        }
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      v7 = (*(v2 + 48) + 8 * result);
      v9 = *v7;
      v8 = v7[1];
      if (v9 == a1 && v8 == HIDWORD(a1))
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

{
  v22 = a1;
  v4 = type metadata accessor for CodingUserInfoKey();
  v6.n128_f64[0] = MEMORY[0x1EEE9AC00](v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v21 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v12 = v5 + 16;
    v13 = v14;
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    do
    {
      v17 = v12;
      v13(v8, *(v23 + 48) + v15 * v10, v4, v6);
      v18 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*v16)(v8, v4);
      if (v18)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      v12 = v17;
    }

    while (((*(v21 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      outlined init with copy of AccessibilityRelationshipScope.Key(*(v2 + 48) + 48 * v4, v9);
      if (MEMORY[0x18D00E7E0](v9, a1))
      {
        v7 = v9[5];
        outlined destroy of AccessibilityRelationshipScope.Key(v9);
        if (v7 == *(a1 + 40))
        {
          return v4;
        }
      }

      else
      {
        outlined destroy of AccessibilityRelationshipScope.Key(v9);
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

{
  v4 = type metadata accessor for HashableCommandGroupPlacementWrapper(0) - 8;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v11 = *(v5 + 72);
    do
    {
      outlined init with copy of UUID?(*(v2 + 48) + v11 * v9, v7, type metadata accessor for HashableCommandGroupPlacementWrapper);
      type metadata accessor for CommandGroupPlacement(0);
      v12 = static UUID.== infix(_:_:)();
      outlined destroy of DisplayList.HostedViewState.Key(v7, type metadata accessor for HashableCommandGroupPlacementWrapper);
      if (v12)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      if (static Selector.== infix(_:_:)())
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

{
  v3 = v2 + 64;
  v4 = -1 << *(v2 + 32);
  v5 = a2 & ~v4;
  if (((*(v2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) == 0)
  {
    return v5;
  }

  v6 = v2;
  v7 = ~v4;
  v8 = *(a1 + 104);
  v9 = *(a1 + 112);
  v10 = *(a1 + 120);
  v23 = v8;
  while (1)
  {
    outlined init with copy of IdentifiedDocumentGroupConfiguration(*(v6 + 48) + (v5 << 7), v28);
    v16 = v29;
    v13 = v30;
    if ((v31 & 1) == 0)
    {
      break;
    }

    v17 = v30;
    if ((v10 & 1) == 0)
    {
      v24 = _typeName(_:qualified:)();
      v26 = v11;
      MEMORY[0x18D00C9B0](45, 0xE100000000000000);
      v12 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x18D00C9B0](v12);

      v13 = v26;

      v14 = v9;
      if (v24 != v8)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }

    if (v29 == v8)
    {
      outlined destroy of IdentifiedDocumentGroupConfiguration(v28);
      if (v17 == v9)
      {
        return v5;
      }
    }

    else
    {
      outlined destroy of IdentifiedDocumentGroupConfiguration(v28);
    }

LABEL_6:
    v5 = (v5 + 1) & v7;
    if (((*(v3 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) == 0)
    {
      return v5;
    }
  }

  if ((v10 & 1) == 0)
  {
    if (v29 == v8 && v30 == v9)
    {
      goto LABEL_24;
    }

    v21 = _stringCompareWithSmolCheck(_:_:expecting:)();
    outlined destroy of IdentifiedDocumentGroupConfiguration(v28);
    if (v21)
    {
      return v5;
    }

    goto LABEL_6;
  }

  outlined copy of SceneID(v29, v30, 0);
  v25 = _typeName(_:qualified:)();
  v27 = v18;
  MEMORY[0x18D00C9B0](45, 0xE100000000000000);
  v19 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x18D00C9B0](v19);
  v8 = v23;

  v14 = v27;
  if (v16 != v25)
  {
LABEL_5:
    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

    outlined destroy of IdentifiedDocumentGroupConfiguration(v28);
    if (v15)
    {
      return v5;
    }

    goto LABEL_6;
  }

LABEL_4:
  if (v13 != v14)
  {
    goto LABEL_5;
  }

LABEL_24:
  outlined destroy of IdentifiedDocumentGroupConfiguration(v28);
  return v5;
}

{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for PartialKeyPath<UISplitViewController>(0, &lazy cache variable for type metadata for PartialKeyPath<UISplitViewController>, &lazy cache variable for type metadata for UISplitViewController, 0x1E69DCF78, MEMORY[0x1E69E6B88]);
    do
    {
      if (dispatch thunk of static Equatable.== infix(_:_:)())
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = v7;
      if (v6 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v8 == v9)
      {
        break;
      }

      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    v7 = &type metadata for TableRowID;
    v8 = &lazy cache variable for type metadata for (TableRowID, TableRowID);
    do
    {
      outlined init with copy of TableRowID(*(v2 + 48) + 48 * v4, v26);
      outlined init with copy of TableRowID(v26, v22);
      outlined init with copy of TableRowID(a1, v23);
      if (v22[40])
      {
        outlined init with copy of TableRowID(v22, v20);
        if ((v25 & 1) == 0)
        {
          outlined destroy of TableRowID(v26);
          outlined destroy of AnyHashable(v20);
LABEL_4:
          outlined destroy of (AccessibilityAttachment.Tree, AccessibilityAttachment.Tree)(v22, v8, v7);
          goto LABEL_5;
        }

        v18[0] = v20[0];
        v18[1] = v20[1];
        v19 = v21;
        v16[0] = v23[0];
        v16[1] = v23[1];
        v17 = v24;
        v9 = MEMORY[0x18D00E7E0](v18, v16);
        outlined destroy of AnyHashable(v16);
        outlined destroy of AnyHashable(v18);
        outlined destroy of TableRowID(v26);
        outlined destroy of TableRowID(v22);
        if (v9)
        {
          return v4;
        }
      }

      else
      {
        outlined destroy of TableRowID(v26);
        outlined init with copy of TableRowID(v22, v20);
        if (v25)
        {
          goto LABEL_4;
        }

        v10 = *&v20[0];
        v11 = v8;
        v12 = v7;
        v13 = *&v23[0];
        outlined destroy of TableRowID(v22);
        v14 = v10 == v13;
        v7 = v12;
        v8 = v11;
        if (v14)
        {
          return v4;
        }
      }

LABEL_5:
      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

void type metadata accessor for WeakBox<UIFocusItem>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = a4(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

id _UIHostingView.sheetBridge.getter(uint64_t a1, uint64_t a2)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x110);
  v4 = *(v2 + v3);
  v5 = v4;
  if (v4 == 1)
  {
    ObjectType = swift_getObjectType();
    v5 = closure #1 in _UIHostingView.sheetBridge.getter(ObjectType);
    v7 = *(v2 + v3);
    *(v2 + v3) = v5;
    v8 = v5;
    outlined consume of SheetBridge<SheetPreference.Key>??(v7);
  }

  outlined copy of SheetBridge<SheetPreference.Key>??(v4);
  return v5;
}

void outlined consume of SheetBridge<SheetPreference.Key>??(id a1)
{
  if (a1 != 1)
  {
  }
}

uint64_t _UIHostingView.viewGraph.getter(uint64_t a1)
{
  v1 = *(UIHostingViewBase.viewGraph.getter() + 88);

  return v1;
}

uint64_t FocusBridge.host.getter()
{
  type metadata accessor for WeakBox<UIFocusItem>(0, &lazy cache variable for type metadata for Logger?, 255, MEMORY[0x1E69E9420], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v17 - v2;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
  }

  else
  {
    static Log.focus.getter();
    if ((*(v5 + 48))(v3, 1, v4) == 1)
    {
      outlined destroy of WeakBox<FocusBridge>(v3, &lazy cache variable for type metadata for Logger?, 255, MEMORY[0x1E69E9420], MEMORY[0x1E69E6720]);
    }

    else
    {
      (*(v5 + 32))(v7, v3, v4);
      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v17 = v0;
        v18 = v12;
        *v11 = 136315138;
        v13 = String.init<A>(describing:)();
        v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v18);

        *(v11 + 4) = v15;
        _os_log_impl(&dword_18BD4A000, v9, v10, "Focus bridge %s has no host.", v11, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v12);
        MEMORY[0x18D0110E0](v12, -1, -1);
        MEMORY[0x18D0110E0](v11, -1, -1);
      }

      (*(v5 + 8))(v7, v4);
    }
  }

  return swift_unknownObjectWeakLoadStrong();
}

uint64_t type metadata accessor for ContainerBackgroundHost(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

id _UIHostingView.isWindowRoot.getter()
{
  result = [v0 window];
  if (result)
  {
    v2 = result;
    v3 = [result rootViewController];

    if (v3 && (v4 = [v3 viewIfLoaded], v3, v4))
    {

      return (v4 == v0);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

id closure #1 in _UIHostingView.sheetBridge.getter(uint64_t a1)
{
  if ((*(a1 + 1392))())
  {
    return 0;
  }

  _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v3VGMaTm_1(0, &lazy cache variable for type metadata for SheetBridge<SheetPreference.Key>, &type metadata for SheetPreference.Key, &protocol witness table for SheetPreference.Key, type metadata accessor for SheetBridge);
  return [objc_allocWithZone(v2) init];
}

Swift::Void __swiftcall _UIHostingView.addToHostingViewRegistry()()
{
  v2 = v1;
  v3 = *MEMORY[0x1E69E7D40] & *v1;
  if (one-time initialization token for shared != -1)
  {
    v4 = *MEMORY[0x1E69E7D40] & *v1;
    swift_once();
    v3 = v4;
  }

  type metadata accessor for _UIHostingView(0, *(v3 + 80), *(v3 + 88), v0);
  HostingViewRegistry.add<A>(_:)(v2);
}

uint64_t HostingViewRegistry.add<A>(_:)(uint64_t a1)
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v3[8] = 0;
  swift_beginAccess();
  specialized Dictionary.subscript.setter(v3, a1);
  return swift_endAccess();
}

uint64_t type metadata accessor for DropDelegate(uint64_t a1, unint64_t *a2, uint64_t a3, char a4)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void type metadata accessor for _DUIPreviewMode(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t outlined init with take of WeakBox<Swift.AnyObject>(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Binding<Bool>(0, &lazy cache variable for type metadata for WeakBox<Swift.AnyObject>, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E6981A78]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t specialized Dictionary.subscript.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (*(a1 + 8))
  {
    outlined destroy of WeakBox<Swift.AnyObject>?(a1, type metadata accessor for WeakBox<Swift.AnyObject>?);
    v5 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    v7 = v6;
    if (v6)
    {
      v8 = v5;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v10 = *v2;
      v13 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        specialized _NativeDictionary.copy()();
        v10 = v13;
      }

      outlined init with take of WeakBox<Swift.AnyObject>(*(v10 + 56) + 8 * v8, &v15);
      specialized _NativeDictionary._delete(at:)(v8, v10);
      *v3 = v10;
    }

    else
    {
      v15 = 0;
    }

    v16 = (v7 & 1) == 0;
    return outlined destroy of WeakBox<Swift.AnyObject>?(&v15, type metadata accessor for WeakBox<Swift.AnyObject>?);
  }

  else
  {
    outlined init with take of WeakBox<Swift.AnyObject>(a1, &v15);
    v11 = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v2;
    result = specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v15, a2, v11);
    *v2 = v14;
  }

  return result;
}

{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    result = specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
  }

  else
  {
    result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if (v8)
    {
      v9 = result;
      v10 = swift_isUniquelyReferenced_nonNull_native();
      v11 = *v2;
      v13 = *v3;
      if (!v10)
      {
        specialized _NativeDictionary.copy()();
        v11 = v13;
      }

      result = specialized _NativeDictionary._delete(at:)(v9, v11);
      *v3 = v11;
    }
  }

  return result;
}

{
  v3 = v2;
  if (*(a1 + 16))
  {
    outlined init with take of ConfirmationDialog(a1, v14);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    result = specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v14, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
  }

  else
  {
    outlined destroy of TabEntry?(a1, &lazy cache variable for type metadata for ConfirmationDialog?, &type metadata for ConfirmationDialog, MEMORY[0x1E69E6720]);
    v7 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if (v8)
    {
      v9 = v7;
      v10 = swift_isUniquelyReferenced_nonNull_native();
      v11 = *v2;
      v13 = *v3;
      if (!v10)
      {
        specialized _NativeDictionary.copy()();
        v11 = v13;
      }

      outlined init with take of ConfirmationDialog(*(v11 + 56) + 184 * v9, v14);
      specialized _NativeDictionary._delete(at:)(v9, v11);
      *v3 = v11;
    }

    else
    {
      v15 = 0;
      memset(v14, 0, sizeof(v14));
    }

    return outlined destroy of TabEntry?(v14, &lazy cache variable for type metadata for ConfirmationDialog?, &type metadata for ConfirmationDialog, MEMORY[0x1E69E6720]);
  }

  return result;
}

{
  if (*(a1 + 24))
  {
    outlined init with take of Any(a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v2;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v9, a2, isUniquelyReferenced_nonNull_native);
    result = outlined destroy of AnyHashable(a2);
    *v2 = v8;
  }

  else
  {
    v6 = MEMORY[0x1E69E7CA0];
    v7 = MEMORY[0x1E69E6720];
    outlined destroy of TabEntry?(a1, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720]);
    specialized Dictionary._Variant.removeValue(forKey:)(a2, v9);
    outlined destroy of AnyHashable(a2);
    return outlined destroy of TabEntry?(v9, &lazy cache variable for type metadata for Any?, v6 + 8, v7);
  }

  return result;
}

{
  if (*(a1 + 24))
  {
    outlined init with take of Any(a1, v11);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v2;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v11, a2, isUniquelyReferenced_nonNull_native);
    v5 = type metadata accessor for CodingUserInfoKey();
    result = (*(*(v5 - 8) + 8))(a2, v5);
    *v2 = v10;
  }

  else
  {
    v7 = MEMORY[0x1E69E7CA0];
    v8 = MEMORY[0x1E69E6720];
    outlined destroy of TabEntry?(a1, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720]);
    specialized Dictionary._Variant.removeValue(forKey:)(a2, v11);
    v9 = type metadata accessor for CodingUserInfoKey();
    (*(*(v9 - 8) + 8))(a2, v9);
    return outlined destroy of TabEntry?(v11, &lazy cache variable for type metadata for Any?, v7 + 8, v8);
  }

  return result;
}

{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    result = specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
  }

  else
  {
    result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if (v8)
    {
      v9 = result;
      v10 = swift_isUniquelyReferenced_nonNull_native();
      v11 = *v2;
      v13 = *v3;
      if (!v10)
      {
        specialized _NativeDictionary.copy()();
        v11 = v13;
      }

      result = specialized _NativeDictionary._delete(at:)(v9, v11);
      *v3 = v11;
    }
  }

  return result;
}

{
  v3 = v2;
  if (*(a1 + 8))
  {
    outlined destroy of [UTType](a1, &lazy cache variable for type metadata for WeakBox<EntityGestureResponder>?, type metadata accessor for WeakBox<EntityGestureResponder>, MEMORY[0x1E69E6720]);
    v5 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    v7 = v6;
    if (v6)
    {
      v8 = v5;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v10 = *v2;
      v13 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        specialized _NativeDictionary.copy()();
        v10 = v13;
      }

      outlined init with take of WeakBox<EntityGestureResponder>(*(v10 + 56) + 8 * v8, &v15, type metadata accessor for WeakBox<EntityGestureResponder>);
      specialized _NativeDictionary._delete(at:)(v8, v10);
      *v3 = v10;
    }

    else
    {
      v15 = 0;
    }

    v16 = (v7 & 1) == 0;
    return outlined destroy of [UTType](&v15, &lazy cache variable for type metadata for WeakBox<EntityGestureResponder>?, type metadata accessor for WeakBox<EntityGestureResponder>, MEMORY[0x1E69E6720]);
  }

  else
  {
    outlined init with take of WeakBox<EntityGestureResponder>(a1, &v15, type metadata accessor for WeakBox<EntityGestureResponder>);
    v11 = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v2;
    result = specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v15, a2, v11);
    *v2 = v14;
  }

  return result;
}

{
  if (*(a1 + 24))
  {
    outlined init with take of Any(a1, v10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v10, a2, isUniquelyReferenced_nonNull_native);
    v5 = type metadata accessor for CodingUserInfoKey();
    result = (*(*(v5 - 8) + 8))(a2, v5);
    *v2 = v9;
  }

  else
  {
    v7 = MEMORY[0x1E69E6720];
    outlined destroy of [UTType](a1, &lazy cache variable for type metadata for Sendable?, type metadata accessor for Sendable, MEMORY[0x1E69E6720]);
    specialized Dictionary._Variant.removeValue(forKey:)(a2, v10);
    v8 = type metadata accessor for CodingUserInfoKey();
    (*(*(v8 - 8) + 8))(a2, v8);
    return outlined destroy of [UTType](v10, &lazy cache variable for type metadata for Sendable?, type metadata accessor for Sendable, v7);
  }

  return result;
}

{
  v3 = v2;
  if (*(a1 + 24))
  {
    outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(a1, v14);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    result = specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v14, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
  }

  else
  {
    outlined destroy of DropDelegate?(a1, &lazy cache variable for type metadata for CommandAction?, &lazy cache variable for type metadata for CommandAction, &protocol descriptor for CommandAction);
    v7 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if (v8)
    {
      v9 = v7;
      v10 = swift_isUniquelyReferenced_nonNull_native();
      v11 = *v2;
      v13 = *v3;
      if (!v10)
      {
        specialized _NativeDictionary.copy()();
        v11 = v13;
      }

      outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>((*(v11 + 56) + 40 * v9), v14);
      specialized _NativeDictionary._delete(at:)(v9, v11);
      *v3 = v11;
    }

    else
    {
      v15 = 0;
      memset(v14, 0, sizeof(v14));
    }

    return outlined destroy of DropDelegate?(v14, &lazy cache variable for type metadata for CommandAction?, &lazy cache variable for type metadata for CommandAction, &protocol descriptor for CommandAction);
  }

  return result;
}

{
  if (*(a1 + 8))
  {
    v4 = MEMORY[0x1E69E6720];
    outlined destroy of [UTType](a1, &lazy cache variable for type metadata for WeakBox<PlatformDocument>?, type metadata accessor for WeakBox<PlatformDocument>, MEMORY[0x1E69E6720]);
    specialized Dictionary._Variant.removeValue(forKey:)(a2, v8);
    outlined destroy of IdentifiedDocumentGroupConfiguration(a2);
    return outlined destroy of [UTType](v8, &lazy cache variable for type metadata for WeakBox<PlatformDocument>?, type metadata accessor for WeakBox<PlatformDocument>, v4);
  }

  else
  {
    outlined init with take of WeakBox<EntityGestureResponder>(a1, v8, type metadata accessor for WeakBox<PlatformDocument>);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *v2;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v8, a2, isUniquelyReferenced_nonNull_native);
    result = outlined destroy of IdentifiedDocumentGroupConfiguration(a2);
    *v2 = v7;
  }

  return result;
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      specialized _NativeDictionary.copy()();
      v9 = v17;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v14, a3 & 1);
    v9 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    v20 = v19[7] + 8 * v9;

    return outlined assign with take of WeakBox<Swift.AnyObject>(a1, v20);
  }

  else
  {

    return specialized _NativeDictionary._insert(at:key:value:)(v9, a2, a1, v19);
  }
}

{
  return specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, specialized _NativeDictionary.copy(), specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:), specialized _NativeDictionary._insert(at:key:value:));
}

{
  v4 = v3;
  v8 = *v3;
  v9 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      specialized _NativeDictionary.copy()();
      v9 = v17;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v14, a3 & 1);
    v9 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    *(*(v19 + 56) + 8 * v9) = a1;
  }

  else
  {

    return specialized _NativeDictionary._insert(at:key:value:)(v9, a2, a1, v19);
  }
}

{
  v4 = v3;
  v8 = *v3;
  v9 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      specialized _NativeDictionary.copy()();
      v9 = v17;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v14, a3 & 1);
    v9 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    *(*(v19 + 56) + 8 * v9) = a1;
  }

  else
  {

    return specialized _NativeDictionary._insert(at:key:value:)(v9, a2, a1, v19);
  }
}

{
  v4 = v3;
  v8 = *v3;
  result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = result;
      specialized _NativeDictionary.copy()();
      result = v17;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v14, a3 & 1);
    result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_14:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    *(*(v19 + 56) + 8 * result) = a1;
  }

  else
  {

    return specialized _NativeDictionary._insert(at:key:value:)(result, a2, a1, v19);
  }

  return result;
}

{
  return specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, specialized _NativeDictionary.copy(), specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:), specialized _NativeDictionary._insert(at:key:value:));
}

{
  return specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, specialized _NativeDictionary.copy(), specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:), specialized _NativeDictionary._insert(at:key:value:));
}

{
  v4 = v3;
  v8 = *v3;
  v9 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      specialized _NativeDictionary.copy()();
      v9 = v17;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v14, a3 & 1);
    v9 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    v20 = v19[7] + 184 * v9;

    return outlined assign with take of ConfirmationDialog(a1, v20);
  }

  else
  {

    return specialized _NativeDictionary._insert(at:key:value:)(v9, a2, a1, v19);
  }
}

{
  return specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, specialized _NativeDictionary.copy(), specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:), outlined init with take of Any, specialized _NativeDictionary._insert(at:key:value:));
}

{
  return specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, specialized _NativeDictionary.copy(), specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:), specialized _NativeDictionary._insert(at:key:value:));
}

{
  return specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, specialized _NativeDictionary.copy(), specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:), specialized _NativeDictionary._insert(at:key:value:));
}

{
  return specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, specialized _NativeDictionary.copy(), specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:), specialized _NativeDictionary._insert(at:key:value:));
}

{
  v4 = v3;
  v8 = *v3;
  result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = result;
      specialized _NativeDictionary.copy()();
      result = v17;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v14, a3 & 1);
    result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_14:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    *(*(v19 + 56) + 8 * result) = a1;
  }

  else
  {

    return specialized _NativeDictionary._insert(at:key:value:)(result, a2, a1, v19);
  }

  return result;
}

{
  v4 = v3;
  v8 = *v3;
  v9 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      specialized _NativeDictionary.copy()();
      v9 = v17;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v14, a3 & 1);
    v9 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_16:
      v9 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return MEMORY[0x1EEE66BB8](v9, v21);
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    v20 = *(v19 + 56);
    v21 = *(v20 + 8 * v9);
    *(v20 + 8 * v9) = a1;

    return MEMORY[0x1EEE66BB8](v9, v21);
  }

  return specialized _NativeDictionary._insert(at:key:value:)(v9, a2, a1, v19);
}

{
  v4 = v3;
  v8 = *v3;
  result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = result;
      specialized _NativeDictionary.copy()();
      result = v17;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v14, a3 & 1);
    result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_14:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    v20 = v19[7] + 40 * result;
    v21 = *(a1 + 16);
    *v20 = *a1;
    *(v20 + 16) = v21;
    *(v20 + 32) = *(a1 + 32);
  }

  else
  {

    return specialized _NativeDictionary._insert(at:key:value:)(result, a2, a1, v19);
  }

  return result;
}

{
  v4 = v3;
  v6 = a2;
  v8 = *v3;
  v9 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      specialized _NativeDictionary.copy()();
      v9 = v17;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v14, a3 & 1);
    v9 = specialized __RawDictionaryStorage.find<A>(_:)(v6);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  if (v15)
  {
    *(*(*v4 + 56) + 8 * v9) = a1;
  }

  else
  {

    return specialized _NativeDictionary._insert(at:key:value:)();
  }
}

{
  v4 = v3;
  v8 = *v3;
  v9 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      specialized _NativeDictionary.copy()();
      v9 = v17;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v14, a3 & 1);
    v9 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  if (v15)
  {
    *(*(*v4 + 56) + 8 * v9) = a1;
  }

  else
  {

    return specialized _NativeDictionary._insert(at:key:value:)();
  }
}

{
  v4 = v3;
  v6 = a2;
  v7 = a1;
  v8 = *v3;
  result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = result;
      specialized _NativeDictionary.copy()();
      result = v17;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v14, a3 & 1);
    result = specialized __RawDictionaryStorage.find<A>(_:)(v6);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_14:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    *(v19[7] + result) = v7;
  }

  else
  {

    return specialized _NativeDictionary._insert(at:key:value:)(result, v6, v7, v19);
  }

  return result;
}

{
  v4 = v3;
  v8 = *v3;
  v9 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      specialized _NativeDictionary.copy()();
      v9 = v17;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v14, a3 & 1);
    v9 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    v20 = v19[7] + 8 * v9;

    return outlined assign with take of WeakBox<EntityGestureResponder>(a1, v20);
  }

  else
  {

    return specialized _NativeDictionary._insert(at:key:value:)(v9, a2, a1, v19);
  }
}

{
  return specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, specialized _NativeDictionary.copy(), specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:), specialized _NativeDictionary._insert(at:key:value:));
}

{
  return specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, specialized _NativeDictionary.copy(), specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:), specialized _NativeDictionary._insert(at:key:value:));
}

{
  return specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, specialized _NativeDictionary.copy(), specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:), outlined init with take of Sendable, specialized _NativeDictionary._insert(at:key:value:));
}

{
  v4 = v3;
  v6 = a2;
  v7 = a1;
  v8 = *v3;
  result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = result;
      specialized _NativeDictionary.copy()();
      result = v17;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v14, a3 & 1);
    result = specialized __RawDictionaryStorage.find<A>(_:)(v6);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_14:
      type metadata accessor for AGAttribute(0);
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    *(v19[7] + 4 * result) = v7;
  }

  else
  {

    return specialized _NativeDictionary._insert(at:key:value:)(result, v6, v7, v19);
  }

  return result;
}

{
  v4 = v3;
  v8 = *v3;
  v10 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_14;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 >= v13 && (a3 & 1) != 0)
  {
LABEL_7:
    v16 = *v4;
    if (v14)
    {
      return outlined assign with take of Predicate<Pack{String}>?(a1, v16[7] + 8 * v10, type metadata accessor for WeakBox<PlatformDocument>);
    }

    goto LABEL_11;
  }

  if (v15 >= v13 && (a3 & 1) == 0)
  {
    specialized _NativeDictionary.copy()();
    goto LABEL_7;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v13, a3 & 1);
  v18 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  if ((v14 & 1) != (v19 & 1))
  {
LABEL_14:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v10 = v18;
  v16 = *v4;
  if (v14)
  {
    return outlined assign with take of Predicate<Pack{String}>?(a1, v16[7] + 8 * v10, type metadata accessor for WeakBox<PlatformDocument>);
  }

LABEL_11:
  outlined init with copy of IdentifiedDocumentGroupConfiguration(a2, v20);
  return specialized _NativeDictionary._insert(at:key:value:)(v10, v20, a1, v16);
}

uint64_t outlined init with take of WeakBox<Swift.AnyObject>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 32))(a2, a1, v8);
  return a2;
}

uint64_t _s7SwiftUI7WeakBoxVyyXlGWObTm_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 32))(a2, a1, v8);
  return a2;
}

id SheetBridge.init()()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  *(v0 + direct field offset for SheetBridge.host + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + direct field offset for SheetBridge.seed) = 0;
  *(v0 + direct field offset for SheetBridge.presentationOptionsTracker) = 0;
  *(v0 + direct field offset for SheetBridge.backgroundTracker) = 0;
  *(v0 + direct field offset for SheetBridge.interactiveDismissTracker) = 0;
  *(v0 + direct field offset for SheetBridge.remotePresentationDelayTracker) = 0;
  *(v0 + direct field offset for SheetBridge.interactiveDismissHandlerSeed) = -1;
  v3 = (v0 + direct field offset for SheetBridge.interactiveDismissHandler);
  *v3 = 0;
  v3[1] = 0;
  *(v0 + direct field offset for SheetBridge.hasWindow) = 0;
  v4 = v0 + direct field offset for SheetBridge.presentationState;
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 2) = 0u;
  *(v4 + 3) = 0u;
  *(v4 + 4) = 0u;
  *(v4 + 5) = 0u;
  *(v4 + 6) = 0u;
  *(v4 + 7) = 0u;
  *(v4 + 8) = 0u;
  *(v4 + 9) = 0u;
  *(v4 + 10) = 0u;
  *(v4 + 11) = 0u;
  *(v4 + 12) = 0u;
  *(v4 + 13) = 0u;
  *(v4 + 218) = 0u;
  v4[234] = 12;
  swift_unknownObjectWeakInit();
  EnvironmentValues.init()();
  v5 = direct field offset for SheetBridge.clientNeedsOutOfWindowPresentationSuppression;
  *(v0 + v5) = closure #1 in variable initialization expression of SheetBridge.clientNeedsOutOfWindowPresentationSuppression() & 1;
  v7 = type metadata accessor for SheetBridge(0, *((v2 & v1) + 0x50), *((v2 & v1) + 0x58), v6);
  v9.receiver = v0;
  v9.super_class = v7;
  return objc_msgSendSuper2(&v9, sel_init);
}

uint64_t closure #1 in UILargeContentViewerInteractionBridge.updateRequestedPreferences(for:)(uint64_t a1)
{
  if (*(a1 + OBJC_IVAR____TtC7SwiftUI37UILargeContentViewerInteractionBridge_showLargeContentViewer) == 1)
  {
    return GraphHost.addPreference<A>(_:)();
  }

  else
  {
    return GraphHost.removePreference<A>(_:)();
  }
}

uint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = _s7SwiftUI7WeakBoxVyyXlGWObTm_0(a3, a4[7] + 8 * a1, &lazy cache variable for type metadata for WeakBox<Swift.AnyObject>, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E6981A78], _sypSgMaTm_6);
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

{
  return specialized _NativeDictionary._insert(at:key:value:)(a1, a2, a3, a4, outlined init with take of Any);
}

{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  v7 = a4[7];
  v8 = type metadata accessor for CommandOperation(0);
  result = outlined init with take of HashableCommandGroupPlacementWrapper(a3, v7 + *(*(v8 - 8) + 72) * a1, type metadata accessor for CommandOperation);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = _s7SwiftUI7WeakBoxVyyXlGWObTm_0(a3, a4[7] + 8 * a1, &lazy cache variable for type metadata for WeakBox<EntityGestureResponder>, type metadata accessor for EntityGestureResponder, MEMORY[0x1E6981A78], type metadata accessor for Anchor<CGRect?>);
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

{
  return specialized _NativeDictionary._insert(at:key:value:)(a1, a2, a3, a4, outlined init with take of Sendable);
}

uint64_t SheetBridge.addPreferences(to:)()
{
  GraphHost.addPreference<A>(_:)();
  GraphHost.addPreference<A>(_:)();
  GraphHost.addPreference<A>(_:)();
  GraphHost.addPreference<A>(_:)();
  GraphHost.addPreference<A>(_:)();
  return GraphHost.addPreference<A>(_:)();
}

uint64_t instantiation function for generic protocol witness table for _UIHostingView<A>(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable(protocol conformance descriptor for _UIHostingView<A>, a2);
  *(a1 + 8) = result;
  return result;
}

void type metadata accessor for _ContiguousArrayStorage<(String, Any)>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t one-time initialization function for didUpdateListLayout()
{
  result = MEMORY[0x18D00C850](0xD00000000000001CLL, 0x800000018CD54190);
  static ClarityUI.didUpdateListLayout = result;
  return result;
}

uint64_t one-time initialization function for shared()
{
  type metadata accessor for HostingViewRegistry();
  result = swift_allocObject();
  *(result + 16) = MEMORY[0x1E69E7CC8];
  static HostingViewRegistry.shared = result;
  return result;
}

{
  type metadata accessor for SceneRequestCache();
  result = swift_allocObject();
  *(result + 16) = MEMORY[0x1E69E7CD0];
  static SceneNavigationStrategy_Phone.shared = 0;
  qword_1EAB09798 = result;
  return result;
}

{
  type metadata accessor for PlatformSceneCache();
  result = swift_allocObject();
  *(result + 16) = MEMORY[0x1E69E7CC8];
  static PlatformSceneCache.shared = result;
  return result;
}

uint64_t specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  type metadata accessor for _DictionaryStorage<ObjectIdentifier, WeakBox<Swift.AnyObject>>(0);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v31 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = 8 * (v17 | (v8 << 6));
      v21 = *(v5 + 56);
      v22 = *(*(v5 + 48) + v20);
      if (v4)
      {
        _s7SwiftUI7WeakBoxVyyXlGWObTm_0(v21 + v20, v32, &lazy cache variable for type metadata for WeakBox<Swift.AnyObject>, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E6981A78], _sypSgMaTm_6);
      }

      else
      {
        outlined init with copy of AnyNavigationLinkPresentedValue?(v21 + v20, v32, &lazy cache variable for type metadata for WeakBox<Swift.AnyObject>, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E6981A78]);
      }

      result = MEMORY[0x18D00F6C0](*(v7 + 40), v22);
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 8 * v15;
      *(*(v7 + 48) + v16) = v22;
      result = _s7SwiftUI7WeakBoxVyyXlGWObTm_0(v32, *(v7 + 56) + v16, &lazy cache variable for type metadata for WeakBox<Swift.AnyObject>, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E6981A78], _sypSgMaTm_6);
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v4 & 1) == 0)
    {

      v3 = v31;
      goto LABEL_34;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v31;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, type metadata accessor for _DictionaryStorage<ObjectIdentifier, TupleTypeDescription<CommandsDescriptor>>);
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, type metadata accessor for _DictionaryStorage<ObjectIdentifier, TupleTypeDescription<SceneDescriptor>>);
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, type metadata accessor for _DictionaryStorage<ObjectIdentifier, [String : PassthroughSubject<Any, Never>]>);
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, type metadata accessor for _DictionaryStorage<ObjectIdentifier, TupleTypeDescription<ViewDescriptor>>);
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, type metadata accessor for _DictionaryStorage<ObjectIdentifier, TupleTypeDescription<ToolbarContentDescriptor>>);
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, type metadata accessor for _DictionaryStorage<ObjectIdentifier, TupleTypeDescription<TableColumnDescriptor>>);
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, type metadata accessor for _DictionaryStorage<ObjectIdentifier, TupleTypeDescription<TableRowDescriptor>>);
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, type metadata accessor for _DictionaryStorage<ObjectIdentifier, TupleTypeDescription<NavigationDestinationDescriptor>>);
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, type metadata accessor for _DictionaryStorage<ObjectIdentifier, TupleTypeDescription<AccessibilityRotorContentDescriptor>>);
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, type metadata accessor for _DictionaryStorage<ObjectIdentifier, [AnyConnectionOptionActionBox]>);
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, type metadata accessor for _DictionaryStorage<ObjectIdentifier, TupleTypeDescription<WidgetDescriptor>>);
}

void type metadata accessor for _DictionaryStorage<ObjectIdentifier, WeakBox<Swift.AnyObject>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<ObjectIdentifier, WeakBox<Swift.AnyObject>>)
  {
    type metadata accessor for [TabCustomizationID](255, &lazy cache variable for type metadata for WeakBox<Swift.AnyObject>, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E6981A78]);
    v1 = type metadata accessor for _DictionaryStorage();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _DictionaryStorage<ObjectIdentifier, WeakBox<Swift.AnyObject>>);
    }
  }
}

void type metadata accessor for [TabCustomizationID](uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void _sSay7SwiftUI18TabCustomizationIDVGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t lazy protocol witness table accessor for type FocusedValuesInputKey and conformance FocusedValuesInputKey()
{
  result = lazy protocol witness table cache variable for type FocusedValuesInputKey and conformance FocusedValuesInputKey;
  if (!lazy protocol witness table cache variable for type FocusedValuesInputKey and conformance FocusedValuesInputKey)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for FocusedValuesInputKey, &type metadata for FocusedValuesInputKey, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type FocusedValuesInputKey and conformance FocusedValuesInputKey);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FocusedValuesInputKey and conformance FocusedValuesInputKey;
  if (!lazy protocol witness table cache variable for type FocusedValuesInputKey and conformance FocusedValuesInputKey)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for FocusedValuesInputKey, &type metadata for FocusedValuesInputKey, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type FocusedValuesInputKey and conformance FocusedValuesInputKey);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type FocusStoreInputKey and conformance FocusStoreInputKey()
{
  result = lazy protocol witness table cache variable for type FocusStoreInputKey and conformance FocusStoreInputKey;
  if (!lazy protocol witness table cache variable for type FocusStoreInputKey and conformance FocusStoreInputKey)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for FocusStoreInputKey, &type metadata for FocusStoreInputKey, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type FocusStoreInputKey and conformance FocusStoreInputKey);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FocusStoreInputKey and conformance FocusStoreInputKey;
  if (!lazy protocol witness table cache variable for type FocusStoreInputKey and conformance FocusStoreInputKey)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for FocusStoreInputKey, &type metadata for FocusStoreInputKey, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type FocusStoreInputKey and conformance FocusStoreInputKey);
  }

  return result;
}

uint64_t _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a5 - 8);
  v12 = MEMORY[0x1EEE9AC00](a1);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = v15(v12);
  if (v8)
  {
    return (*(v11 + 32))(a8, v14, a5);
  }

  return result;
}

uint64_t closure #1 in static PointerOffset.of(_:)partial apply@<X0>(uint64_t a1@<X0>, void *x8_0@<X8>)
{
  return closure #1 in static PointerOffset.of(_:)(a1, x8_0);
}

{
  return closure #1 in static PointerOffset.of(_:)(a1, x8_0);
}

{
  return closure #1 in static PointerOffset.of(_:)(a1, x8_0);
}

{
  return partial apply for closure #1 in static PointerOffset.of(_:)(a1, x8_0);
}

{
  return _s14AttributeGraph13PointerOffsetV2ofyACyxq_Gq_zFZAESPyq_GXEfU_TA_12(a1, x8_0);
}

{
  return _s14AttributeGraph13PointerOffsetV2ofyACyxq_Gq_zFZAESPyq_GXEfU_TA_5(a1, x8_0);
}

{
  return _s14AttributeGraph13PointerOffsetV2ofyACyxq_Gq_zFZAESPyq_GXEfU_TA_1(a1, x8_0);
}

{
  return _s14AttributeGraph13PointerOffsetV2ofyACyxq_Gq_zFZAESPyq_GXEfU_TA_9(a1, x8_0);
}

{
  return _s14AttributeGraph13PointerOffsetV2ofyACyxq_Gq_zFZAESPyq_GXEfU_TA_18(a1, x8_0);
}

{
  return _s14AttributeGraph13PointerOffsetV2ofyACyxq_Gq_zFZAESPyq_GXEfU_TA_19(a1, x8_0);
}

uint64_t type metadata completion function for AccessibilityLargeContentViewBehaviorModifier(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t outlined copy of SceneList.Namespace(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3)
  {
  }

  return result;
}

uint64_t outlined consume of SceneList.Namespace(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3)
  {
  }

  return result;
}

uint64_t _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a5 - 8);
  v12 = MEMORY[0x1EEE9AC00](a1);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = v15(v12);
  if (v8)
  {
    return (*(v11 + 32))(a8, v14, a5);
  }

  return result;
}

void type metadata accessor for EnvironmentPropertyKey<InheritedColorSeedKey>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void _s7SwiftUI22EnvironmentPropertyKeyVyAA018InheritedColorSeedE0VGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t outlined copy of AppIntentExecutor?(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t outlined consume of OpenURLAction?(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 != -1)
  {
    return outlined consume of OpenURLAction.Handler(result, a2, a3, a4, a5 & 1);
  }

  return result;
}

uint64_t outlined consume of OpenURLAction.Handler(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{

  if (a5)
  {

    return outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(a3, a4);
  }

  return result;
}

uint64_t outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

void type metadata accessor for AnyHashable?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void _ss11AnyHashableVSgMaTm_0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void _ss11AnyHashableVSgMaTm_1(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void _ss11AnyHashableVSgMaTm_2(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void _ss11AnyHashableVSgMaTm_3(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t storeEnumTagSinglePayload for AccessibilityLargeContentViewBehavior(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t type metadata completion function for Button(uint64_t a1)
{
  result = type metadata accessor for ButtonAction(319);
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

uint64_t type metadata accessor for ButtonAction(uint64_t a1)
{
  result = type metadata singleton initialization cache for ButtonAction;
  if (!type metadata singleton initialization cache for ButtonAction)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for ButtonAction(uint64_t a1)
{
  result = type metadata accessor for LinkDestination();
  if (v2 <= 0x3F)
  {
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

uint64_t ViewGraph.setFocusStore(_:)(uint64_t *a1)
{
  result = swift_beginAccess();
  if ((*(v1 + 361) & 0x20) != 0)
  {
    lazy protocol witness table accessor for type FocusViewGraph and conformance FocusViewGraph();
    result = ViewGraph.subscript.getter();
    if (result)
    {
      result = *(result + 8);
      if (result != *MEMORY[0x1E698D3F8])
      {
        result = AGGraphSetValue();
        if (result)
        {
          swift_beginAccess();
          result = swift_unknownObjectWeakLoadStrong();
          if (result)
          {
            v3 = *(v1 + 208);
            ObjectType = swift_getObjectType();
            (*(*(v3 + 8) + 16))(ObjectType);
            return swift_unknownObjectRelease();
          }
        }
      }
    }
  }

  return result;
}

Swift::Void __swiftcall _UIHostingView.updateFocusStore()()
{
  v1 = _UIHostingView.viewGraph.getter(v0);
  swift_beginAccess();
  v2 = *(v1 + 361);

  if ((v2 & 0x20) != 0)
  {
    _UIHostingView.viewGraph.getter(v3);
    v4 = specialized _UIHostingView.focusBridge.getter();
    swift_beginAccess();
    v6 = v4[6];
    v5 = v4[7];
    v7 = v4[8];
    v8[0] = v6;
    v8[1] = v5;
    v8[2] = v7;

    ViewGraph.setFocusStore(_:)(v8);
  }
}

Swift::Void __swiftcall _UIHostingView.updateSafeArea()()
{
  v0 = _UIHostingView.base.getter();
  UIHostingViewBase._updateSafeArea(container:keyboardHeight:)();
}

Swift::Void __swiftcall _UIHostingView.updateContainerSize()()
{
  v0 = _UIHostingView.base.getter();
  UIHostingViewBase._updateContainerSize()();
}

Swift::Void __swiftcall _UIHostingView.updateSize()()
{
  v0 = _UIHostingView.base.getter();
  UIHostingViewBase._updateSize()();
}

void protocol witness for GraphDelegate.graphDidChange() in conformance _UIHostingView<A1>(uint64_t a1)
{
  swift_getWitnessTable(protocol conformance descriptor for _UIHostingView<A>, a1);

  ViewGraphRootValueUpdater.graphDidChange()();
}

uint64_t _UIHostingView.focusedItem.getter@<X0>(uint64_t a1@<X8>)
{
  specialized _UIHostingView.focusBridge.getter();

  FocusBridge.focusedItem.getter(a1);
}

uint64_t outlined destroy of WeakBox<FocusBridge>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t))
{
  type metadata accessor for WeakBox<UIFocusItem>(0, a2, a3, a4, a5);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t outlined destroy of WeakBox<FocusBridge>(uint64_t a1)
{
  type metadata accessor for WeakBox<FocusBridge>(0, &lazy cache variable for type metadata for WeakBox<FocusBridge>, type metadata accessor for FocusBridge, MEMORY[0x1E6981A78]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t getEnumTagSinglePayload for ActiveEditMenu(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 56))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 40);
  if (v3 >= 0xFFFFFFFF)
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

Swift::Void __swiftcall _UIHostingView.updateFocusedValues()()
{
  v1 = _UIHostingView.viewGraph.getter(v0);
  swift_beginAccess();
  v2 = *(v1 + 361);

  if ((v2 & 0x20) != 0)
  {
    _UIHostingView.viewGraph.getter(v3);
    _UIHostingView.focusedValues.getter(&v7);
    v4 = v7;
    v5 = v8;
    v6 = v9;
    ViewGraph.setFocusedValues(_:)(&v4);
  }
}

uint64_t outlined init with copy of FocusItem?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for FocusItem?();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t specialized PencilEventsBridge.updateEnvironment(_:)(void *a1)
{
  v2 = objc_opt_self();
  [v2 preferredTapAction];
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_preferredPencilDoubleTapAction>, &type metadata for EnvironmentValues.__Key_preferredPencilDoubleTapAction, &protocol witness table for EnvironmentValues.__Key_preferredPencilDoubleTapAction);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_preferredPencilDoubleTapAction> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_preferredPencilDoubleTapAction>, &type metadata for EnvironmentValues.__Key_preferredPencilDoubleTapAction, &protocol witness table for EnvironmentValues.__Key_preferredPencilDoubleTapAction);

  PropertyList.subscript.setter();
  v3 = a1[1];
  if (v3)
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  [v2 preferredSqueezeAction];
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_preferredPencilSqueezeAction>, &type metadata for EnvironmentValues.__Key_preferredPencilSqueezeAction, &protocol witness table for EnvironmentValues.__Key_preferredPencilSqueezeAction);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_preferredPencilSqueezeAction> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_preferredPencilSqueezeAction>, &type metadata for EnvironmentValues.__Key_preferredPencilSqueezeAction, &protocol witness table for EnvironmentValues.__Key_preferredPencilSqueezeAction);

  PropertyList.subscript.setter();
  if (v3)
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }
}

uint64_t specialized EnvironmentValues.focusBridge.setter(uint64_t a1)
{
  swift_weakInit();
  swift_weakAssign();
  outlined init with copy of WeakBox<FocusBridge>(v4, &v3);
  type metadata accessor for FocusStateBindingModifier<Bool>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<FocusBridgeKey>, &type metadata for FocusBridgeKey, &protocol witness table for FocusBridgeKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<FocusBridgeKey> and conformance EnvironmentPropertyKey<A>();

  PropertyList.subscript.setter();
  if (*(v1 + 8))
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  return outlined destroy of WeakBox<FocusBridge>(v4);
}

uint64_t FocusBridge.isHostContainedInFocusedItem.getter()
{
  v0 = FocusBridge.host.getter();
  if (v0)
  {
    v1 = v0;
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIFocusSystem, 0x1E69DCA38);
    v2 = v1;
    v3 = static UIFocusSystem.focusSystem(for:)();

    if (v3)
    {
      v4 = [v3 focusedItem];

      if (v4)
      {
        swift_getObjectType();
        v5 = v2;
        LOBYTE(v3) = UIFocusEnvironment.contains(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        LOBYTE(v3) = 0;
      }
    }
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  return v3 & 1;
}

void outlined copy of ActiveEditMenu?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7)
{
  if (a6 != 1)
  {

    v8 = a6;
  }
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<FocusBridgeKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<FocusBridgeKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<FocusBridgeKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for FocusStateBindingModifier<Bool>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<FocusBridgeKey>, &type metadata for FocusBridgeKey, &protocol witness table for FocusBridgeKey, MEMORY[0x1E697FE38]);
    result = swift_getWitnessTable(MEMORY[0x1E697FE40], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<FocusBridgeKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

void type metadata accessor for FocusStateBindingModifier<Bool>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void _s7SwiftUI25FocusStateBindingModifier33_274D264A38B51DC68ACC48A91353B7D0LLVySbGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void _s7SwiftUI25FocusStateBindingModifier33_274D264A38B51DC68ACC48A91353B7D0LLVySbGMaTm_1(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t outlined destroy of AnyHashable?(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  type metadata accessor for AnyHashable?(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t _ss11AnyHashableVSgWOhTm_0(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  _ss11AnyHashableVSgMaTm_0(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t _ss11AnyHashableVSgWOhTm_1(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  _ss11AnyHashableVSgMaTm_2(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t _ss11AnyHashableVSgWOhTm_2(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  _s7SwiftUI32_EnvironmentKeyTransformModifierVySbGMaTm_1(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t _ss11AnyHashableVSgWOhTm_3(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  type metadata accessor for SheetPreference?(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t _ss11AnyHashableVSgWOhTm_4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with copy of AnyShareConfiguration?(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  _ss11AnyHashableVSgMaTm_2(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t __swift_memcpy5_4(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for Alert.Presentation(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 280))
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

uint64_t getEnumTagSinglePayload for ActionSheet.Presentation(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 168))
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

uint64_t protocol witness for static EnvironmentKey.defaultValue.getter in conformance FocusBridgeKey()
{
  swift_weakInit();

  return swift_weakAssign();
}

uint64_t specialized DeprecatedAlertBridge.update(environment:)(unint64_t a1, uint64_t a2)
{
  v5 = MEMORY[0x1E69E7D40];
  v6 = (v2 + *((*MEMORY[0x1E69E7D40] & *v2) + 0x80));
  *v6 = a1;
  v6[1] = a2;

  v7 = *((*v5 & *v2) + 0x88);
  swift_beginAccess();
  outlined init with copy of AnyShareConfiguration?(v2 + v7, &v14, &lazy cache variable for type metadata for ActionSheet.Presentation?, &type metadata for ActionSheet.Presentation);
  if (!*(&v15 + 1))
  {
    return _ss11AnyHashableVSgWOhTm_1(&v14, &lazy cache variable for type metadata for ActionSheet.Presentation?, &type metadata for ActionSheet.Presentation, MEMORY[0x1E69E6720]);
  }

  v25[8] = v22;
  v25[9] = v23;
  v26 = v24;
  v25[4] = v18;
  v25[5] = v19;
  v25[6] = v20;
  v25[7] = v21;
  v25[0] = v14;
  v25[1] = v15;
  v8 = *v2;
  v9 = *v5;
  v10 = *v5 & *v2;
  v25[2] = v16;
  v25[3] = v17;
  if ((*(v2 + *((v9 & v8) + 0x90)) & 1) == 0)
  {
    v11 = *(v2 + *(v10 + 120));
    if (v11)
    {
      v12 = v11;
      specialized PlatformAlertController.update<A>(for:with:environmentChanged:)(v25, a1, a2, 1);
    }
  }

  return outlined destroy of ActionSheet.Presentation(v25);
}

uint64_t outlined destroy of WeakBox<UIWindowScene>?(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s7SwiftUI7WeakBoxVySo13UIWindowSceneCGSgWOhTm_0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<ActiveContextMenuKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<ActiveContextMenuKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<ActiveContextMenuKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for _SemanticFeature<Semantics_v5>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<ActiveContextMenuKey>, &type metadata for ActiveContextMenuKey, &protocol witness table for ActiveContextMenuKey, MEMORY[0x1E697FE38]);
    result = swift_getWitnessTable(MEMORY[0x1E697FE40], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<ActiveContextMenuKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

void outlined consume of ActiveEditMenu?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7)
{
  if (a6 != 1)
  {
  }
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_activeEditMenu> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_activeEditMenu> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_activeEditMenu> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<InheritedColorSeedKey>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_activeEditMenu>, &type metadata for EnvironmentValues.__Key_activeEditMenu, &protocol witness table for EnvironmentValues.__Key_activeEditMenu, MEMORY[0x1E697FE38]);
    result = swift_getWitnessTable(MEMORY[0x1E697FE40], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_activeEditMenu> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

uint64_t destroy for DismissWindowAction(uint64_t a1)
{
  outlined consume of SceneList.Namespace(*a1, *(a1 + 8), *(a1 + 16));
  result = *(a1 + 32);
  if (result)
  {
  }

  return result;
}

uint64_t _UIHostingView.scenePresentationModeLocation.getter()
{
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x1B0);
  if (*(v0 + v1))
  {
    v2 = *(v0 + v1);
  }

  else
  {
    v2 = closure #1 in _UIHostingView.presentationModeLocation.getter(v0, type metadata accessor for UIKitScenePresentationModeLocation, protocol conformance descriptor for UIKitScenePresentationModeLocation<A>, UIKitScenePresentationModeLocation.init(host:));
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t protocol witness for static EnvironmentKey.defaultValue.getter in conformance EnvironmentValues.DismissWindowActionKey@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for defaultValue != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v1 = static EnvironmentValues.DismissWindowActionKey.defaultValue;
  v2 = unk_1ED57E960;
  v3 = qword_1ED57E970;
  v4 = unk_1ED57E978;
  *a1 = static EnvironmentValues.DismissWindowActionKey.defaultValue;
  *(a1 + 8) = v2;
  v5 = byte_1ED57E968;
  *(a1 + 16) = byte_1ED57E968;
  *(a1 + 24) = v3;
  *(a1 + 32) = v4;
  *(a1 + 40) = byte_1ED57E980;
  outlined copy of SceneList.Namespace(v1, v2, v5);

  return outlined copy of Binding<Int>?(v3, v4);
}

uint64_t initializeWithCopy for DismissWindowAction(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  outlined copy of SceneList.Namespace(*a2, v5, v6);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  v7 = *(a2 + 32);
  if (v7)
  {
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 32) = v7;
    *(a1 + 40) = *(a2 + 40);
  }

  else
  {
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 40) = *(a2 + 40);
  }

  return a1;
}

uint64_t _UIHostingView.presentationModeLocation.getter()
{
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x1A8);
  if (*(v0 + v1))
  {
    v2 = *(v0 + v1);
  }

  else
  {
    v2 = closure #1 in _UIHostingView.presentationModeLocation.getter(v0, type metadata accessor for UIKitPresentationModeLocation, protocol conformance descriptor for UIKitPresentationModeLocation<A>, UIKitPresentationModeLocation.init(host:));
    *(v0 + v1) = v2;
  }

  return v2;
}

void *destroy for OnDeleteTableRowModifier(void *result)
{
  if (*result)
  {
  }

  return result;
}

uint64_t closure #1 in _UIHostingView.presentationModeLocation.getter(void *a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t), const char *a3, void (*a4)(uint64_t *__return_ptr, void *, uint64_t, uint64_t))
{
  v7 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x50);
  v8 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x58);
  v9 = a2(255, v7, v8);
  swift_getWitnessTable(a3, v9);
  type metadata accessor for LocationBox();
  v10 = a1;
  a4(&v12, a1, v7, v8);
  return LocationBox.__allocating_init(_:)();
}

void UIKitPresentationModeLocation.init(host:)(void *a1)
{
  swift_unknownObjectWeakInit();
}

uint64_t outlined copy of Binding<Int>?(uint64_t result, uint64_t a2)
{
  if (a2)
  {
  }

  return v2;
}

__n128 initializeBufferWithCopyOfBuffer for OnDeleteTableRowModifier(void *a1, void *a2)
{
  if (*a2)
  {
    v2 = a2[1];
    *a1 = *a2;
    a1[1] = v2;
  }

  else
  {
    result = *a2;
    *a1 = *a2;
  }

  return result;
}

uint64_t _UIHostingView.isPresentedInModalViewController.getter()
{
  result = _UIHostingView.viewController.getter();
  if (result)
  {
    v1 = result;
    v2 = [result presentingViewController];

    if (v2)
    {

      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

BOOL _UIHostingView.isPresentedInNavigationController.getter()
{
  v0 = _UIHostingView.viewController.getter();
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  v2 = [v0 navigationController];

  if (!v2)
  {
    return 0;
  }

  v3 = [v2 viewControllers];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIViewController, 0x1E69DD258);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v4 >> 62)
  {
    v5 = __CocoaSet.count.getter();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v5 <= 1)
  {
    goto LABEL_13;
  }

  v6 = [v2 topViewController];
  v7 = _UIHostingView.viewController.getter();

  if (!v6)
  {
    v2 = v7;
    if (!v7)
    {
      return 1;
    }

    goto LABEL_13;
  }

  if (!v7)
  {
    v2 = v6;
LABEL_13:

    return 0;
  }

  return v6 == v7;
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<AccessibilityRequestFocusKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<AccessibilityRequestFocusKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<AccessibilityRequestFocusKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<InheritedColorSeedKey>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<AccessibilityRequestFocusKey>, &type metadata for AccessibilityRequestFocusKey, &protocol witness table for AccessibilityRequestFocusKey, MEMORY[0x1E697FE38]);
    result = swift_getWitnessTable(MEMORY[0x1E697FE40], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<AccessibilityRequestFocusKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<UndoManagerKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<UndoManagerKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<UndoManagerKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<InheritedColorSeedKey>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<UndoManagerKey>, &type metadata for UndoManagerKey, &protocol witness table for UndoManagerKey, MEMORY[0x1E697FE38]);
    result = swift_getWitnessTable(MEMORY[0x1E697FE40], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<UndoManagerKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<PresentationModeKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<PresentationModeKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<PresentationModeKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<PresentationModeKey>();
    result = swift_getWitnessTable(MEMORY[0x1E697FE40], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<PresentationModeKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}