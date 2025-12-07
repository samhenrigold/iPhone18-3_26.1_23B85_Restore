uint64_t outlined destroy of ToolbarStorage.GroupItem.GroupSubItem(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance CoordinateSpaceNameModifier(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = lazy protocol witness table accessor for type CoordinateSpaceNameModifier and conformance CoordinateSpaceNameModifier();

  return MEMORY[0x1EEDE0CC8](a1, a2, a3, a4, a5, v10);
}

unint64_t lazy protocol witness table accessor for type CoordinateSpaceNameModifier and conformance CoordinateSpaceNameModifier()
{
  result = lazy protocol witness table cache variable for type CoordinateSpaceNameModifier and conformance CoordinateSpaceNameModifier;
  if (!lazy protocol witness table cache variable for type CoordinateSpaceNameModifier and conformance CoordinateSpaceNameModifier)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for CoordinateSpaceNameModifier, &type metadata for CoordinateSpaceNameModifier, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type CoordinateSpaceNameModifier and conformance CoordinateSpaceNameModifier);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NavigationStackViewPosition(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 41))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 40);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for NavigationStackViewPosition(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = a2 + 1;
    }
  }

  return result;
}

unint64_t getEnumTag for ScrollTransitionConfiguration.Mode(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 >= 0)
  {
    return v1 >> 62;
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t ToolbarMakeEntries.resolvedDefaultVisibility.getter()
{
  v1 = *MEMORY[0x1E698D3F8];
  if (v0[12] == *MEMORY[0x1E698D3F8])
  {
    return 1;
  }

  v2 = v0[6];
  v3 = v0[9];
  v4 = v0[10];
  Value = AGGraphGetValue();
  if (v2 == v1)
  {
    return 1;
  }

  v6 = *Value;
  type metadata accessor for AnyAccessibilityValue?(0, &lazy cache variable for type metadata for String?, MEMORY[0x1E69E6158]);
  AGGraphGetValue();
  if (v4 != v1)
  {
    if (*AGGraphGetValue())
    {
      return 1;
    }
  }

  result = v6;
  if (v3 != v1)
  {
    if (*AGGraphGetValue())
    {
      return v6;
    }

    else
    {
      return 2;
    }
  }

  return result;
}

void specialized NavigationStackCoordinator.updateNavigationController(_:environment:transaction:seeds:transparentBackground:strategy:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14)
{
  LODWORD(v110) = a6;
  v112 = a5;
  v113 = a1;
  v109 = a4;
  type metadata accessor for UINavigationPresentationAdaptor?(0, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420]);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v104 = &v100 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v108 = &v100 - v22;
  v23 = *((*MEMORY[0x1E69E7D40] & *v14) + 0x70);
  v111 = v14;
  v24 = (v14 + v23);
  swift_beginAccess();
  v25 = *v24;
  v26 = v24[1];
  v27 = v24[2];

  outlined consume of NavigationStrategy_Phone?(v25, v26, v27);
  *v24 = a7;
  v24[1] = a8;
  v24[2] = a9;
  v107 = a9;
  if (!a9)
  {
    goto LABEL_57;
  }

  *v24 = a2;
  v24[1] = a3;

  swift_endAccess();
  v106 = a8;

  v105 = a7;

  v28 = [v113 viewControllers];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIViewController, 0x1E69DD258);
  v29 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v29 >> 62)
  {
    v30 = __CocoaSet.count.getter();
  }

  else
  {
    v30 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v31 = MEMORY[0x1E69E7D40];
  v32 = v111;
  if (v30 < 1)
  {

    goto LABEL_18;
  }

  if ((v29 & 0xC000000000000001) != 0)
  {
    v33 = MEMORY[0x18D00E9C0](0, v29);
    goto LABEL_8;
  }

  if (!*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
LABEL_57:
    __break(1u);
    return;
  }

  v33 = *(v29 + 32);
LABEL_8:
  v34 = v33;

  _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v6VGMaTm_0(0, &lazy cache variable for type metadata for UIHostingController<AnyView>, MEMORY[0x1E6981910], MEMORY[0x1E6981900], type metadata accessor for UIHostingController);
  v35 = swift_dynamicCastClass();
  if (v35)
  {
    v36 = v35;
    v37 = direct field offset for UIHostingController.host;
    v38 = *(v35 + direct field offset for UIHostingController.host);
    v39 = objc_opt_self();
    v40 = v38;
    v41 = [v39 currentDevice];
    v42 = [v41 userInterfaceIdiom];

    if (v42 == 5)
    {
      v31 = MEMORY[0x1E69E7D40];
      v43 = *(v32 + *((*MEMORY[0x1E69E7D40] & *v32) + 0x60) + 8) == 0;
    }

    else
    {
      v43 = 0;
      v31 = MEMORY[0x1E69E7D40];
    }

    specialized _UIHostingView.setWantsTransparentBackground(for:_:)(2, v43);

    v44 = *(v36 + v37);
    specialized _UIHostingView.setWantsTransparentBackground(for:_:)(1, v110 & 1);

    *&v118[0] = a2;
    *(&v118[0] + 1) = a3;
    v45 = EnvironmentValues.presentationNeedsPreferredContentSize.getter();
    v46 = direct field offset for UIHostingController.sizingOptions;
    if (v45)
    {
      swift_beginAccess();
      v47 = *(v36 + v46);
      v48 = v47 | 1;
    }

    else
    {
      swift_beginAccess();
      v47 = *(v36 + v46);
      v48 = v47 & 0xFFFFFFFFFFFFFFFELL;
    }

    *(v36 + v46) = v48;
    *&v118[0] = v47;
    (*((*v31 & *v36) + 0x3D8))(v118);
  }

LABEL_18:
  v49 = v112;
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v51 = Strong;
    swift_beginAccess();
    v52 = v51[8];
    v126 = v51[7];
    v127 = v52;
    v128[0] = v51[9];
    *(v128 + 10) = *(v51 + 154);
    v53 = v51[4];
    v122 = v51[3];
    v123 = v53;
    v54 = v51[6];
    v124 = v51[5];
    v125 = v54;
    v55 = v51[2];
    v120 = v51[1];
    v121 = v55;
    outlined init with copy of NavigationState.StackContent?(&v120, v118, &lazy cache variable for type metadata for NavigationState?, &type metadata for NavigationState);

    v135 = v126;
    v136 = v127;
    v137[0] = v128[0];
    *(v137 + 10) = *(v128 + 10);
    v131 = v122;
    v132 = v123;
    v133 = v124;
    v134 = v125;
    v129 = v120;
    v130 = v121;
    if (getEnumTag for AccessibilityActionCategory.Category(&v129) != 1)
    {
      v103 = a10;
      v56 = HIDWORD(v49);
      v57 = *v31 & *v32;
      v58 = (v32 + *(v57 + 0xA8));
      if (*v58 == v49)
      {
        memset(v118, 0, sizeof(v118));
        v119 = -1;
LABEL_29:
        v110 = a12;
        v68 = v108;
        static Log.navigation.getter();
        v69 = type metadata accessor for Logger();
        v70 = *(v69 - 8);
        if ((*(v70 + 48))(v68, 1, v69) == 1)
        {
          outlined destroy of UINavigationPresentationAdaptor?(v68, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420]);
        }

        else
        {
          v71 = Logger.logObject.getter();
          v72 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v71, v72))
          {
            v73 = swift_slowAlloc();
            *v73 = 0;
            _os_log_impl(&dword_18BD4A000, v71, v72, "Enqueuing: Updating stack views in place", v73, 2u);
            v74 = v73;
            v31 = MEMORY[0x1E69E7D40];
            MEMORY[0x18D0110E0](v74, -1, -1);
          }

          (*(v70 + 8))(v108, v69);
        }

        v116 = 17;
        v75 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v76 = *((*v31 & *v32) + 0xB0);
        swift_beginAccess();
        outlined init with copy of NavigationState.StackContent?(v32 + v76, v115, &lazy cache variable for type metadata for NavigationState.StackContent?, &type metadata for NavigationState.StackContent);
        if (LOBYTE(v115[112]) == 255)
        {
          outlined destroy of PPTTestCase?(v115, &lazy cache variable for type metadata for NavigationState.StackContent?, &type metadata for NavigationState.StackContent);
          v77 = v32 + *((*v31 & *v32) + 0x60);
          v78 = *v77;
          v79 = v77[8];
          v80 = *(v77 + 2);
          if (v79 == 4)
          {
            LOBYTE(v79) = 0;
          }

          *&v117[0] = v78;
          BYTE8(v117[0]) = v79;
          *&v117[1] = v80;
          LOBYTE(v117[28]) = 0;
        }

        else
        {
          memcpy(v117, v115, 0x1C1uLL);
        }

        outlined init with copy of NavigationState.StackContent?(v118, v115, &lazy cache variable for type metadata for NavigationState.StackContent?, &type metadata for NavigationState.StackContent);
        outlined init with copy of NavigationState.StackContent(v117, v114);
        v81 = swift_allocObject();
        v81[2] = v75;
        memcpy(v81 + 3, v115, 0x1C1uLL);
        memcpy(v81 + 60, v114, 0x1C1uLL);
        v82 = v106;
        v81[117] = v105;
        v81[118] = v82;
        v81[119] = v107;
        v83 = v113;
        v81[120] = v113;
        v81[121] = v109;

        v84 = v83;
        static Update.enqueueAction(reason:_:)();

        outlined destroy of NavigationState.StackContent(v117);

        v32 = v111;
        v85 = v112;
LABEL_52:
        specialized $defer #2 <A>() in NavigationStackCoordinator.updateNavigationController(_:environment:transaction:seeds:transparentBackground:strategy:)(v118, v32);
        outlined destroy of PPTTestCase?(&v120, &lazy cache variable for type metadata for NavigationState?, &type metadata for NavigationState);
        outlined destroy of PPTTestCase?(v118, &lazy cache variable for type metadata for NavigationState.StackContent?, &type metadata for NavigationState.StackContent);
        *v58 = v85;
        v58[1] = v56;
        return;
      }

      v101 = (v32 + *((*v31 & *v32) + 0xA8));
      v102 = HIDWORD(v49);
      v59 = v32 + *(v57 + 96);
      v60 = *v59;
      v61 = *(v59 + 2);
      v62 = v59[8];
      v117[6] = v135;
      v117[7] = v136;
      v117[8] = v137[0];
      *(&v117[8] + 10) = *(v137 + 10);
      v117[2] = v131;
      v117[3] = v132;
      v117[4] = v133;
      v117[5] = v134;
      v117[0] = v129;
      v117[1] = v130;
      NavigationState.stackContent(for:)(v60, v62, v61, v118);
      v63 = v119;
      if (v119 == 255)
      {
        v63 = 0;
        v64 = *v59;
        v66 = *(v59 + 2);
        if (v59[8] == 4)
        {
          v65 = 0;
        }

        else
        {
          v65 = v59[8];
        }
      }

      else
      {
        v64 = *&v118[0];
        v65 = BYTE8(v118[0]);
        v115[0] = *(v118 + 9);
        *(v115 + 3) = HIDWORD(v118[0]);
        v66 = *&v118[1];
        memcpy(v117, &v118[1] + 8, 0x1A8uLL);
      }

      *&v118[0] = v64;
      BYTE8(v118[0]) = v65;
      *(v118 + 9) = v115[0];
      HIDWORD(v118[0]) = *(v115 + 3);
      *&v118[1] = v66;
      memcpy(&v118[1] + 8, v117, 0x1A8uLL);
      v119 = v63;
      outlined init with copy of NavigationState.StackContent?(v118, v117, &lazy cache variable for type metadata for NavigationState.StackContent?, &type metadata for NavigationState.StackContent);
      if (LOBYTE(v117[28]) == 255)
      {
        v31 = MEMORY[0x1E69E7D40];
        v58 = v101;
      }

      else
      {
        memcpy(v115, v117, 0x1C1uLL);
        v67 = specialized closure #1 in NavigationStackCoordinator.updateNavigationController(_:environment:transaction:seeds:transparentBackground:strategy:)(v115, v32);
        outlined destroy of NavigationState.StackContent(v115);
        v31 = MEMORY[0x1E69E7D40];
        v58 = v101;
        LODWORD(v56) = v102;
        if (v67)
        {
          goto LABEL_29;
        }
      }

      v86 = v104;
      static Log.navigation.getter();
      v87 = type metadata accessor for Logger();
      v88 = *(v87 - 8);
      if ((*(v88 + 48))(v86, 1, v87) == 1)
      {
        outlined destroy of UINavigationPresentationAdaptor?(v86, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420]);
      }

      else
      {
        v111 = a13;
        v89 = Logger.logObject.getter();
        v90 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v89, v90))
        {
          v91 = swift_slowAlloc();
          *v91 = 0;
          _os_log_impl(&dword_18BD4A000, v89, v90, "Enqueuing: Updating stack views with new content", v91, 2u);
          v92 = v91;
          v31 = MEMORY[0x1E69E7D40];
          MEMORY[0x18D0110E0](v92, -1, -1);
        }

        (*(v88 + 8))(v104, v87);
      }

      v116 = 17;
      v93 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v94 = *((*v31 & *v32) + 0xB0);
      swift_beginAccess();
      outlined init with copy of NavigationState.StackContent?(v32 + v94, v115, &lazy cache variable for type metadata for NavigationState.StackContent?, &type metadata for NavigationState.StackContent);
      if (LOBYTE(v115[112]) == 255)
      {
        outlined destroy of PPTTestCase?(v115, &lazy cache variable for type metadata for NavigationState.StackContent?, &type metadata for NavigationState.StackContent);
        v95 = v59[8];
        v96 = *(v59 + 2);
        if (v95 == 4)
        {
          LOBYTE(v95) = 0;
        }

        *&v117[0] = *v59;
        BYTE8(v117[0]) = v95;
        *&v117[1] = v96;
        LOBYTE(v117[28]) = 0;
      }

      else
      {
        memcpy(v117, v115, 0x1C1uLL);
      }

      outlined init with copy of NavigationState.StackContent?(v118, v115, &lazy cache variable for type metadata for NavigationState.StackContent?, &type metadata for NavigationState.StackContent);
      outlined init with copy of NavigationState.StackContent(v117, v114);
      v97 = swift_allocObject();
      memcpy((v97 + 16), v115, 0x1C1uLL);
      *(v97 + 472) = v93;
      memcpy((v97 + 480), v114, 0x1C1uLL);
      v98 = v113;
      *(v97 + 936) = v113;
      *(v97 + 944) = v109;
      *(v97 + 952) = v110 & 1;

      v99 = v98;
      static Update.enqueueAction(reason:_:)();

      outlined destroy of NavigationState.StackContent(v117);

      v85 = v112;
      LODWORD(v56) = v102;
      goto LABEL_52;
    }
  }
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  v5 = a1[3];
  v6 = a1[4];
  v7 = *(a1 + 40);
  Hasher.init(_seed:)();
  MEMORY[0x18D00F6F0](v2);
  MEMORY[0x18D00F6F0](v3);
  MEMORY[0x18D00F6F0](v4);
  MEMORY[0x18D00F6F0](v5);
  MEMORY[0x18D00F6F0](v6);
  Hasher._combine(_:)(v7 & 1);
  v8 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v8);
}

{
  v3 = *a1;
  v2 = a1[1];
  v4 = *(a1 + 16);
  v5 = a1[3];
  Hasher.init(_seed:)();
  MEMORY[0x18D00F6F0](v3);
  if (v4 == 6)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x18D00F6F0](v2);
    MEMORY[0x18D00F6F0](v4);
    MEMORY[0x18D00F6F0](v5);
  }

  Hasher._combine(_:)(a1[4] & 1);
  v6 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v6);
}

{
  v2 = *(a1 + 32);
  Hasher.init(_seed:)();
  if (v2)
  {
    MEMORY[0x18D00F6F0](1);
    String.hash(into:)();
  }

  else
  {
    MEMORY[0x18D00F6F0](0);
  }

  String.hash(into:)();
  v3 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v3);
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.ToolbarForegroundStyleKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.ToolbarForegroundStyleKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.ToolbarForegroundStyleKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for ModifiedContent<Divider, OpacityRendererEffect>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ToolbarForegroundStyleKey>, &type metadata for EnvironmentValues.ToolbarForegroundStyleKey, &protocol witness table for EnvironmentValues.ToolbarForegroundStyleKey, MEMORY[0x1E697FE38]);
    result = swift_getWitnessTable(MEMORY[0x1E697FE40], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.ToolbarForegroundStyleKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

void *partial apply for specialized closure #2 in NavigationStackCoordinator.updateNavigationController(_:environment:transaction:seeds:transparentBackground:strategy:)()
{
  return partial apply for specialized closure #2 in NavigationStackCoordinator.updateNavigationController(_:environment:transaction:seeds:transparentBackground:strategy:)(&unk_1F0002398, implicit closure #2 in implicit closure #1 in NavigationState.StackContent.Views.sequence<A, B>(using:)specialized partial apply, partial apply for specialized closure #1 in NavigationStackCoordinator.updateExtantViews<A>(navigationController:views:transaction:));
}

{
  return partial apply for specialized closure #2 in NavigationStackCoordinator.updateNavigationController(_:environment:transaction:seeds:transparentBackground:strategy:)(&unk_1F0002820, implicit closure #2 in implicit closure #1 in NavigationState.StackContent.Views.sequence<A, B>(using:)specialized partial apply, partial apply for specialized closure #1 in NavigationStackCoordinator.updateExtantViews<A>(navigationController:views:transaction:));
}

{
  return partial apply for specialized closure #2 in NavigationStackCoordinator.updateNavigationController(_:environment:transaction:seeds:transparentBackground:strategy:)(&unk_1F0002A50, implicit closure #2 in implicit closure #1 in NavigationState.StackContent.Views.sequence<A, B>(using:)specialized partial apply, partial apply for specialized closure #1 in NavigationStackCoordinator.updateExtantViews<A>(navigationController:views:transaction:));
}

uint64_t getEnumTag for ScrollTransitionConfiguration.Threshold.Storage(void *a1)
{
  v1 = *a1 >> 62;
  if (v1 == 3)
  {
    return (*a1 >> 3) + 3;
  }

  else
  {
    return v1;
  }
}

uint64_t getEnumTagSinglePayload for ScrollView(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
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

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 120;
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
      if (v14)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (v14)
      {
        goto LABEL_24;
      }
    }

LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))(a1);
    }

    v17 = (a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
    v18 = *(v17 + 72);
    v19 = *(v17 + 64) & 0x7FFFFFFF;
    if ((v18 & 0xF000000000000007) != 0)
    {
      return (v19 + 1);
    }

    else
    {
      return 0;
    }
  }

  if (!v13)
  {
    goto LABEL_28;
  }

  v14 = *(a1 + v8);
  if (!v14)
  {
    goto LABEL_28;
  }

LABEL_24:
  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

void ToolbarStorage.merge(_:options:)(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for ToolbarStorage.Entry(0);
  v57 = *(v6 - 8);
  v58 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v51 - v10;
  v12 = v2[1];
  if (v12)
  {
    v13 = *v2;
  }

  else
  {
    v13 = *a1;
  }

  *v2 = v13;
  v2[1] = v12;
  v14 = v2[3];
  if (v14)
  {
    v15 = v3[2];
    v16 = v3[4];
  }

  else
  {
    v15 = a1[2];
    v14 = a1[3];
    v16 = a1[4];
    outlined copy of Binding<Int>?(v15, v14);
  }

  v3[2] = v15;
  v3[3] = v14;
  v3[4] = v16;
  if (v3[5])
  {
    v17 = 1;
  }

  else
  {
    v17 = *(a1 + 40);
  }

  *(v3 + 40) = v17;
  v64 = MEMORY[0x1E69E7CC0];
  v18 = a1[6];
  v53 = a1;
  if ((a2 & 7) == 0)
  {

    if ((a2 & 4) != 0)
    {
      goto LABEL_26;
    }

LABEL_22:
    v29 = v3[6];
    if ((a2 & 8) != 0)
    {
LABEL_51:
      v63[0] = v28;
      goto LABEL_52;
    }

LABEL_23:
    v63[0] = v29;
    v29 = v28;
LABEL_52:
    specialized Array.append<A>(contentsOf:)(v29);
    v3[6] = v63[0];

    specialized Set.formUnion<A>(_:)(v50);

    return;
  }

  v19 = a2;
  v20 = *(v18 + 16);
  v21 = v18;

  if (v20)
  {
    v22 = *(v57 + 72);
    v62 = (*(v57 + 80) + 32) & ~*(v57 + 80);
    v23 = v21 + v62;
    v24 = MEMORY[0x1E69E7CC0];
    do
    {
      outlined init with copy of ToolbarStorage.Entry(v23, v11, type metadata accessor for ToolbarStorage.Entry);
      if (specialized isPlacementValid #1 (_:) in ToolbarStorage.merge(_:options:)(v11, v19, &v64))
      {
        _s7SwiftUI14ToolbarStorageV9GroupItemVWObTm_0(v11, v8, type metadata accessor for ToolbarStorage.Entry);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v63[0] = v24;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v24 + 16) + 1, 1);
          v24 = v63[0];
        }

        v27 = *(v24 + 16);
        v26 = *(v24 + 24);
        if (v27 >= v26 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v27 + 1, 1);
          v24 = v63[0];
        }

        *(v24 + 16) = v27 + 1;
        _s7SwiftUI14ToolbarStorageV9GroupItemVWObTm_0(v8, v24 + v62 + v27 * v22, type metadata accessor for ToolbarStorage.Entry);
      }

      else
      {
        outlined destroy of ToolbarStorage.GroupItem.CollapsedContent.Value(v11, type metadata accessor for ToolbarStorage.Entry);
      }

      v23 += v22;
      --v20;
    }

    while (v20);
  }

  else
  {
    v24 = MEMORY[0x1E69E7CC0];
  }

  v28 = v24;
  a2 = v19;
  if ((v19 & 4) == 0)
  {
    goto LABEL_22;
  }

LABEL_26:
  v54 = v28;
  v52 = a2;
  swift_beginAccess();
  v30 = *(v64 + 2);
  v56 = v64;

  v55 = v30;
  if (!v30)
  {
LABEL_50:

    v28 = v54;
    v29 = v3[6];
    if ((v52 & 8) != 0)
    {
      goto LABEL_51;
    }

    goto LABEL_23;
  }

  v31 = 0;
  v32 = (v56 + 32);
  while (v31 < *(v56 + 2))
  {
    v33 = outlined init with copy of ToolbarItemPlacement.Role(v32, v63);
    MEMORY[0x1EEE9AC00](v33);
    *(&v51 - 2) = v63;
    v34 = specialized MutableCollection._halfStablePartition(isSuffixElement:)(partial apply for closure #1 in ToolbarStorage.merge(_:options:), (&v51 - 4));
    v35 = v3;
    v36 = v3[6];
    v37 = v36[2];
    v38 = v37 - v34;
    if (v37 < v34)
    {
      goto LABEL_54;
    }

    v39 = v34;
    if (v34 < 0)
    {
      goto LABEL_55;
    }

    v40 = v34;
    if (__OFADD__(v37, v34 - v37))
    {
      goto LABEL_56;
    }

    v59 = v34 - v37;
    v41 = swift_isUniquelyReferenced_nonNull_native();
    v61 = v31;
    v62 = v32;
    v60 = &v51;
    if (!v41 || v40 > v36[3] >> 1)
    {
      if (v37 <= v40)
      {
        v42 = v37 - v38;
      }

      else
      {
        v42 = v37;
      }

      v36 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v41, v42, 1, v36);
    }

    v43 = v36 + ((*(v57 + 80) + 32) & ~*(v57 + 80));
    v44 = *(v57 + 72);
    v45 = v44 * v39;
    swift_arrayDestroy();
    v3 = v35;
    if (v37 != v39)
    {
      if (v45 < v44 * v37 || &v43[v44 * v39] >= &v43[v44 * v37 + (v36[2] - v37) * v44])
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (v45 != v44 * v37)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v47 = v36[2];
      v48 = __OFADD__(v47, v59);
      v49 = v47 + v59;
      if (v48)
      {
        goto LABEL_57;
      }

      v36[2] = v49;
    }

    v31 = v61 + 1;
    v35[6] = v36;
    outlined destroy of ToolbarItemPlacement.Role(v63);
    v32 = v62 + 48;
    if (v55 == v31)
    {
      goto LABEL_50;
    }
  }

  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
}

char *initializeWithCopy for ToolbarStorage.Entry.Kind(char *a1, char *a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 2:
      *a1 = *a2;
      v15 = a1 + 8;
      if (a2[48] == 1)
      {
        v16 = *(a2 + 2);
        *(a1 + 2) = v16;
        (**(v16 - 8))(v15, a2 + 8);
        a1[48] = 1;
      }

      else
      {
        v19 = *(a2 + 24);
        *v15 = *(a2 + 8);
        *(a1 + 24) = v19;
        *(a1 + 33) = *(a2 + 33);
      }

      a1[49] = a2[49];
      *(a1 + 7) = *(a2 + 7);
      *(a1 + 32) = *(a2 + 32);
      *(a1 + 9) = *(a2 + 9);

      goto LABEL_145;
    case 1:
      v11 = *(a2 + 1);
      *a1 = *a2;
      *(a1 + 1) = v11;
      v12 = *(a2 + 3);
      *(a1 + 2) = *(a2 + 2);
      *(a1 + 3) = v12;
      v13 = *(a2 + 7);

      if (v13)
      {
        v14 = *(a2 + 8);
        *(a1 + 7) = v13;
        *(a1 + 8) = v14;
        (**(v13 - 8))(a1 + 32, a2 + 32, v13);
        *(a1 + 9) = *(a2 + 9);
      }

      else
      {
        v20 = *(a2 + 3);
        *(a1 + 2) = *(a2 + 2);
        *(a1 + 3) = v20;
        *(a1 + 4) = *(a2 + 4);
      }

      if (a2[120] == 1)
      {
        v21 = *(a2 + 104);
        *(a1 + 104) = v21;
        (**(v21 - 8))(a1 + 80, a2 + 80);
        a1[120] = 1;
      }

      else
      {
        v22 = *(a2 + 6);
        *(a1 + 5) = *(a2 + 5);
        *(a1 + 6) = v22;
        *(a1 + 105) = *(a2 + 105);
      }

      a1[121] = a2[121];
      *(a1 + 16) = *(a2 + 16);
      a1[136] = a2[136];
      *(a1 + 137) = *(a2 + 137);
      v23 = *(a2 + 19);
      *(a1 + 18) = *(a2 + 18);
      *(a1 + 19) = v23;
      v24 = *(type metadata accessor for ToolbarStorage.GroupItem(0) + 60);
      v25 = &a1[v24];
      v26 = &a2[v24];
      v27 = type metadata accessor for ToolbarStorage.GroupItem.CollapsedContent(0);
      v28 = *(v27 - 8);
      v29 = *(v28 + 48);

      if (v29(v26, 1, v27))
      {
        _s7SwiftUI16CommandOperationVSgMaTm_2(0, &lazy cache variable for type metadata for ToolbarStorage.GroupItem.CollapsedContent?, type metadata accessor for ToolbarStorage.GroupItem.CollapsedContent, MEMORY[0x1E69E6720]);
        memcpy(v25, v26, *(*(v30 - 8) + 64));
LABEL_145:
        swift_storeEnumTagMultiPayload();
        return a1;
      }

      v261 = a1;
      type metadata accessor for ToolbarStorage.GroupItem.CollapsedContent.Value(0);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        v77 = *(v26 + 24);
        *(v25 + 24) = v77;
        (**(v77 - 8))(v25, v26);
        v78 = *(v26 + 6);
        *(v25 + 5) = *(v26 + 5);
        *(v25 + 6) = v78;
        *(v25 + 7) = *(v26 + 7);
        *(v25 + 8) = *(v26 + 8);
        *(v25 + 72) = *(v26 + 72);
        v79 = *(v26 + 11);
        *(v25 + 11) = v79;

        v80 = v79;
LABEL_144:
        swift_storeEnumTagMultiPayload();
        v236 = *(v27 + 20);
        v237 = *&v26[v236];
        *&v25[v236] = v237;
        v238 = *(v28 + 56);
        v239 = v237;
        v238(v25, 0, 1, v27);
        a1 = v261;
        goto LABEL_145;
      }

      v31 = *v26;
      v32 = *(v26 + 1);
      *v25 = *v26;
      *(v25 + 1) = v32;
      v33 = *(v26 + 3);
      *(v25 + 2) = *(v26 + 2);
      *(v25 + 3) = v33;
      v25[32] = v26[32];
      v34 = *(v26 + 6);
      *(v25 + 5) = *(v26 + 5);
      *(v25 + 6) = v34;
      v25[56] = v26[56];
      v35 = *(v26 + 24);
      v36 = v31;
      v37 = v32;

      v263 = v28;
      if (v35 >> 1 == 4294967294)
      {
        v38 = *(v26 + 13);
        *(v25 + 12) = *(v26 + 12);
        *(v25 + 13) = v38;
        *(v25 + 14) = *(v26 + 14);
        *(v25 + 235) = *(v26 + 235);
        v39 = *(v26 + 9);
        *(v25 + 8) = *(v26 + 8);
        *(v25 + 9) = v39;
        v40 = *(v26 + 11);
        *(v25 + 10) = *(v26 + 10);
        *(v25 + 11) = v40;
        v41 = *(v26 + 5);
        *(v25 + 4) = *(v26 + 4);
        *(v25 + 5) = v41;
        v42 = *(v26 + 7);
        *(v25 + 6) = *(v26 + 6);
        *(v25 + 7) = v42;
      }

      else
      {
        v83 = v26[72];
        if (v83 == 255)
        {
          *(v25 + 8) = *(v26 + 8);
          v25[72] = v26[72];
        }

        else
        {
          v84 = *(v26 + 8);
          outlined copy of GraphicsImage.Contents(v84, v26[72]);
          *(v25 + 8) = v84;
          v25[72] = v83;
          v35 = *(v26 + 24);
        }

        *(v25 + 10) = *(v26 + 10);
        *(v25 + 88) = *(v26 + 88);
        v25[104] = v26[104];
        *(v25 + 108) = *(v26 + 108);
        *(v25 + 121) = *(v26 + 121);
        *(v25 + 136) = *(v26 + 136);
        *(v25 + 152) = *(v26 + 152);
        *(v25 + 84) = *(v26 + 84);
        v25[170] = v26[170];
        v25[171] = v26[171];
        if (v35 >> 1 == 0xFFFFFFFF)
        {
          v160 = *(v26 + 12);
          *(v25 + 11) = *(v26 + 11);
          *(v25 + 12) = v160;
        }

        else
        {
          v161 = *(v26 + 22);
          v162 = *(v26 + 23);
          v163 = *(v26 + 25);
          outlined copy of AccessibilityImageLabel(v161, v162, v35, v163);
          *(v25 + 22) = v161;
          *(v25 + 23) = v162;
          *(v25 + 24) = v35;
          *(v25 + 25) = v163;
        }

        v164 = *(v26 + 27);
        *(v25 + 26) = *(v26 + 26);
        *(v25 + 27) = v164;
        *(v25 + 112) = *(v26 + 112);
        *(v25 + 57) = *(v26 + 57);
        v25[232] = v26[232];
        v165 = *(v26 + 30);
        *(v25 + 30) = v165;
        *(v25 + 124) = *(v26 + 124);
        v25[250] = v26[250];
        swift_unknownObjectRetain();

        v166 = v165;
      }

      v167 = *(v26 + 33);
      if (v167)
      {
        *(v25 + 32) = *(v26 + 32);
        *(v25 + 33) = v167;
        v168 = *(v26 + 34);

        if (v168 >= 2)
        {
          v169 = v168;
        }

        *(v25 + 34) = v168;
        *(v25 + 70) = *(v26 + 70);
        v25[284] = v26[284];
        *(v25 + 285) = *(v26 + 285);
        v170 = *(v26 + 37);
        *(v25 + 36) = *(v26 + 36);
        *(v25 + 37) = v170;
      }

      else
      {
        v171 = *(v26 + 17);
        *(v25 + 16) = *(v26 + 16);
        *(v25 + 17) = v171;
        *(v25 + 18) = *(v26 + 18);
      }

      v172 = *(v26 + 42);
      v266 = v27;
      if (v172 >> 2 == 0xFFFFFFFF)
      {
        v173 = *(v26 + 24);
        *(v25 + 23) = *(v26 + 23);
        *(v25 + 24) = v173;
        *(v25 + 50) = *(v26 + 50);
        v174 = *(v26 + 20);
        *(v25 + 19) = *(v26 + 19);
        *(v25 + 20) = v174;
        v175 = *(v26 + 22);
        *(v25 + 21) = *(v26 + 21);
        *(v25 + 22) = v175;
      }

      else
      {
        v176 = *(v26 + 38);
        v177 = *(v26 + 39);
        v178 = *(v26 + 40);
        v179 = *(v26 + 41);
        v181 = *(v26 + 43);
        v180 = *(v26 + 44);
        v182 = *(v26 + 45);
        v242 = *(v26 + 46);
        v247 = *(v26 + 47);
        __dstc = *(v26 + 48);
        v255 = *(v26 + 49);
        v258 = *(v26 + 50);
        outlined copy of PlatformItemList.Item.SystemItem(v176, v177, v178, v179, v172, v181, v180, v182, v242, v247, __dstc, v255, v258);
        *(v25 + 38) = v176;
        *(v25 + 39) = v177;
        *(v25 + 40) = v178;
        *(v25 + 41) = v179;
        *(v25 + 42) = v172;
        *(v25 + 43) = v181;
        *(v25 + 44) = v180;
        *(v25 + 45) = v182;
        *(v25 + 46) = v242;
        *(v25 + 47) = v247;
        *(v25 + 48) = __dstc;
        *(v25 + 49) = v255;
        *(v25 + 50) = v258;
      }

      v183 = *(v26 + 52);
      if (v183 == 1)
      {
        v184 = *(v26 + 456);
        *(v25 + 440) = *(v26 + 440);
        *(v25 + 456) = v184;
        v25[472] = v26[472];
        v185 = *(v26 + 424);
        *(v25 + 408) = *(v26 + 408);
        *(v25 + 424) = v185;
      }

      else
      {
        *(v25 + 102) = *(v26 + 102);
        v25[412] = v26[412];
        if (v183)
        {
          v186 = *(v26 + 53);
          *(v25 + 52) = v183;
          *(v25 + 53) = v186;
        }

        else
        {
          *(v25 + 26) = *(v26 + 26);
        }

        v187 = *(v26 + 54);
        if (v187)
        {
          v188 = *(v26 + 55);
          *(v25 + 54) = v187;
          *(v25 + 55) = v188;
        }

        else
        {
          *(v25 + 27) = *(v26 + 27);
        }

        v189 = *(v26 + 56);
        if (v189)
        {
          v190 = *(v26 + 57);
          *(v25 + 56) = v189;
          *(v25 + 57) = v190;
        }

        else
        {
          *(v25 + 28) = *(v26 + 28);
        }

        *(v25 + 58) = *(v26 + 58);
        v25[472] = v26[472];
      }

      v191 = *(v26 + 61);
      *(v25 + 60) = *(v26 + 60);
      *(v25 + 61) = v191;
      *(v25 + 62) = *(v26 + 62);
      v25[504] = v26[504];
      v192 = *(v26 + 64);

      if (v192)
      {
        v193 = *(v26 + 65);
        *(v25 + 64) = v192;
        *(v25 + 65) = v193;
      }

      else
      {
        *(v25 + 32) = *(v26 + 32);
      }

      v25[528] = v26[528];
      if (!*(v26 + 102))
      {
        memcpy(v25 + 536, v26 + 536, 0x130uLL);
        goto LABEL_129;
      }

      *(v25 + 67) = *(v26 + 67);
      *(v25 + 68) = *(v26 + 68);
      v25[552] = v26[552];
      *(v25 + 70) = *(v26 + 70);
      v25[568] = v26[568];
      *(v25 + 36) = *(v26 + 36);
      v25[592] = v26[592];
      v194 = v25 + 600;
      v195 = v26 + 600;
      v196 = *(v26 + 78);

      if (v196)
      {
        if (v196 == 1)
        {
          v197 = *(v26 + 616);
          *v194 = *v195;
          *(v25 + 616) = v197;
          *(v25 + 632) = *(v26 + 632);
LABEL_125:
          *(v25 + 81) = *(v26 + 81);
          v25[656] = v26[656];
          v199 = v25 + 664;
          v200 = v26 + 664;
          v201 = *(v26 + 97);
          if (v201 == 1)
          {
            v202 = *(v26 + 776);
            *(v25 + 760) = *(v26 + 760);
            *(v25 + 776) = v202;
            *(v25 + 792) = *(v26 + 792);
            v25[808] = v26[808];
            v203 = *(v26 + 712);
            *(v25 + 696) = *(v26 + 696);
            *(v25 + 712) = v203;
            v204 = *(v26 + 744);
            *(v25 + 728) = *(v26 + 728);
            *(v25 + 744) = v204;
            v205 = *(v26 + 680);
            *v199 = *v200;
            *(v25 + 680) = v205;
          }

          else
          {
            *v199 = *v200;
            v25[672] = v26[672];
            *(v25 + 85) = *(v26 + 85);
            v25[688] = v26[688];
            *(v25 + 689) = *(v26 + 689);
            v25[691] = v26[691];
            v25[692] = v26[692];
            *(v25 + 87) = *(v26 + 87);
            v206 = *(v26 + 45);
            *(v25 + 44) = *(v26 + 44);
            *(v25 + 45) = v206;
            *(v25 + 92) = *(v26 + 92);
            *(v25 + 372) = *(v26 + 372);
            *(v25 + 47) = *(v26 + 47);
            v25[768] = v26[768];
            *(v25 + 97) = v201;
            *(v25 + 49) = *(v26 + 49);
            *(v25 + 100) = *(v26 + 100);
            v25[808] = v26[808];
          }

          *(v25 + 102) = *(v26 + 102);
          *(v25 + 103) = *(v26 + 103);
          *(v25 + 104) = *(v26 + 104);

LABEL_129:
          v207 = v25 + 840;
          v208 = v26 + 840;
          v209 = *(v26 + 108);
          if (v209)
          {
            if (v209 == 1)
            {
              v210 = *(v26 + 856);
              *v207 = *v208;
              *(v25 + 856) = v210;
              *(v25 + 872) = *(v26 + 872);
              *(v25 + 111) = *(v26 + 111);
LABEL_137:
              v214 = *(v26 + 112);
              *(v25 + 112) = v214;
              *(v25 + 113) = *(v26 + 113);
              *(v25 + 114) = *(v26 + 114);
              *(v25 + 115) = *(v26 + 115);
              *(v25 + 116) = *(v26 + 116);
              *(v25 + 117) = *(v26 + 117);
              *(v25 + 118) = *(v26 + 118);
              *(v25 + 476) = *(v26 + 476);
              v25[954] = v26[954];
              v215 = type metadata accessor for PlatformItemList.Item(0);
              v216 = *(v215 + 112);
              v256 = v215;
              v259 = &v25[v216];
              v217 = &v26[v216];
              v218 = type metadata accessor for CommandOperation(0);
              v219 = *(v218 - 8);
              v248 = v219[6];
              v220 = v214;

              if (v248(v217, 1, v218))
              {
                _s7SwiftUI16CommandOperationVSgMaTm_2(0, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation, MEMORY[0x1E69E6720]);
                memcpy(v259, v217, *(*(v221 - 8) + 64));
                v28 = v263;
                v27 = v266;
              }

              else
              {
                __dsta = v219;
                *v259 = *v217;
                v222 = *(v218 + 20);
                v223 = v217;
                v243 = v217;
                v224 = &v259[v222];
                v225 = &v223[v222];
                v226 = v218;
                v227 = *&v223[v222];
                v228 = *&v223[v222 + 8];
                v229 = v223[v222 + 16];
                outlined copy of Text.Storage(v227, v228, v229);
                *v224 = v227;
                *(v224 + 1) = v228;
                v224[16] = v229;
                *(v224 + 3) = *(v225 + 3);
                v230 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
                v231 = type metadata accessor for UUID();
                v249 = *(*(v231 - 8) + 16);

                v249(&v224[v230], &v225[v230], v231);
                v232 = *(v226 + 24);
                v233 = &v259[v232];
                v234 = &v243[v232];
                if (*v234)
                {
                  v235 = *(v234 + 1);
                  *v233 = *v234;
                  *(v233 + 1) = v235;
                }

                else
                {
                  *v233 = *v234;
                }

                v28 = v263;
                v27 = v266;
                __dsta[7](v259, 0, 1, v226);
              }

              v25[v256[29]] = v26[v256[29]];
              v25[v256[30]] = v26[v256[30]];
              v25[v256[31]] = v26[v256[31]];
              v25[v256[32]] = v26[v256[32]];
              v25[v256[33]] = v26[v256[33]];
              *&v25[v256[34]] = *&v26[v256[34]];

              goto LABEL_144;
            }

            *(v25 + 108) = v209;
            *(v25 + 109) = *(v26 + 109);
            (**(v209 - 8))(v207, v208);
          }

          else
          {
            v211 = *(v26 + 856);
            *v207 = *v208;
            *(v25 + 856) = v211;
            *(v25 + 109) = *(v26 + 109);
          }

          v212 = *(v26 + 110);
          if (v212)
          {
            v213 = *(v26 + 111);
            *(v25 + 110) = v212;
            *(v25 + 111) = v213;
          }

          else
          {
            *(v25 + 55) = *(v26 + 55);
          }

          goto LABEL_137;
        }

        *(v25 + 78) = v196;
        *(v25 + 79) = *(v26 + 79);
        (**(v196 - 8))((v25 + 600), (v26 + 600), v196);
      }

      else
      {
        v198 = *(v26 + 616);
        *v194 = *v195;
        *(v25 + 616) = v198;
        *(v25 + 79) = *(v26 + 79);
      }

      *(v25 + 80) = *(v26 + 80);

      goto LABEL_125;
    case 0:
      *a1 = *a2;
      *(a1 + 1) = *(a2 + 1);
      *(a1 + 1) = *(a2 + 1);
      v7 = *(a2 + 5);
      *(a1 + 4) = *(a2 + 4);
      *(a1 + 5) = v7;
      v8 = *(a2 + 7);
      *(a1 + 6) = *(a2 + 6);
      *(a1 + 7) = v8;
      v9 = *(a2 + 11);

      if (v9)
      {
        v10 = *(a2 + 12);
        *(a1 + 11) = v9;
        *(a1 + 12) = v10;
        (**(v9 - 8))(a1 + 64, a2 + 64, v9);
        *(a1 + 13) = *(a2 + 13);
      }

      else
      {
        v43 = *(a2 + 5);
        *(a1 + 4) = *(a2 + 4);
        *(a1 + 5) = v43;
        *(a1 + 6) = *(a2 + 6);
      }

      if (a2[152] == 1)
      {
        v44 = *(a2 + 136);
        *(a1 + 136) = v44;
        (**(v44 - 8))(a1 + 112, a2 + 112);
        a1[152] = 1;
      }

      else
      {
        v45 = *(a2 + 8);
        *(a1 + 7) = *(a2 + 7);
        *(a1 + 8) = v45;
        *(a1 + 137) = *(a2 + 137);
      }

      *(a1 + 153) = *(a2 + 153);
      *(a1 + 20) = *(a2 + 20);
      a1[168] = a2[168];
      *(a1 + 169) = *(a2 + 169);
      *(a1 + 22) = *(a2 + 22);
      v46 = *(a2 + 13);
      *(a1 + 13) = v46;
      v47 = v46;
      v48 = **(v46 - 8);

      v48(a1 + 184, a2 + 184, v47);
      v49 = *(a2 + 29);
      *(a1 + 28) = *(a2 + 28);
      *(a1 + 29) = v49;
      *(a1 + 30) = *(a2 + 30);
      *(a1 + 31) = *(a2 + 31);
      *(a1 + 16) = *(a2 + 16);
      v50 = *(a2 + 34);
      v51 = *(a2 + 35);
      *(a1 + 34) = v50;
      *(a1 + 35) = v51;
      v260 = type metadata accessor for ToolbarStorage.Item(0);
      v52 = v260[17];
      v262 = a1;
      v264 = &a1[v52];
      v265 = &a2[v52];
      v53 = type metadata accessor for PlatformItemList.Item(0);
      v54 = *(v53 - 8);
      v55 = *(v54 + 48);

      v56 = v50;
      v57 = v51;
      v58 = v265;
      if (v55(v265, 1, v53))
      {
        _s7SwiftUI16CommandOperationVSgMaTm_2(0, &lazy cache variable for type metadata for PlatformItemList.Item?, type metadata accessor for PlatformItemList.Item, MEMORY[0x1E69E6720]);
        memcpy(v264, v265, *(*(v59 - 8) + 64));
LABEL_88:
        swift_weakCopyInit();
        a1[v260[19]] = a2[v260[19]];
        a1[v260[20]] = a2[v260[20]];
        a1[v260[21]] = a2[v260[21]];
        goto LABEL_145;
      }

      v254 = v54;
      v257 = v53;
      v60 = *v265;
      v61 = v265[1];
      v62 = v264;
      *v264 = *v265;
      *(v264 + 1) = v61;
      v63 = v265[3];
      *(v264 + 2) = v265[2];
      *(v264 + 3) = v63;
      v264[32] = *(v265 + 32);
      v64 = v265[6];
      *(v264 + 5) = v265[5];
      *(v264 + 6) = v64;
      v264[56] = *(v265 + 56);
      v65 = v265[24];
      v66 = v60;
      v67 = v61;

      if (v65 >> 1 == 4294967294)
      {
        v68 = *(v265 + 13);
        *(v264 + 12) = *(v265 + 12);
        *(v264 + 13) = v68;
        *(v264 + 14) = *(v265 + 14);
        *(v264 + 235) = *(v265 + 235);
        v69 = *(v265 + 9);
        *(v264 + 8) = *(v265 + 8);
        *(v264 + 9) = v69;
        v70 = *(v265 + 11);
        *(v264 + 10) = *(v265 + 10);
        *(v264 + 11) = v70;
        v71 = *(v265 + 5);
        *(v264 + 4) = *(v265 + 4);
        *(v264 + 5) = v71;
        v72 = *(v265 + 7);
        *(v264 + 6) = *(v265 + 6);
        *(v264 + 7) = v72;
        v73 = v265[33];
        if (v73)
        {
LABEL_32:
          *(v264 + 32) = v265[32];
          *(v264 + 33) = v73;
          v74 = v265[34];

          if (v74 >= 2)
          {
            v75 = v74;
          }

          *(v264 + 34) = v74;
          *(v264 + 70) = *(v265 + 70);
          v264[284] = *(v265 + 284);
          *(v264 + 285) = *(v265 + 285);
          v76 = v265[37];
          *(v264 + 36) = v265[36];
          *(v264 + 37) = v76;

LABEL_46:
          v93 = v265[42];
          if (v93 >> 2 == 0xFFFFFFFF)
          {
            v94 = *(v265 + 24);
            *(v264 + 23) = *(v265 + 23);
            *(v264 + 24) = v94;
            *(v264 + 50) = v265[50];
            v95 = *(v265 + 20);
            *(v264 + 19) = *(v265 + 19);
            *(v264 + 20) = v95;
            v96 = *(v265 + 22);
            *(v264 + 21) = *(v265 + 21);
            *(v264 + 22) = v96;
          }

          else
          {
            v97 = v265[38];
            v98 = v265[39];
            v99 = v265[40];
            v100 = v265[41];
            v101 = v265[43];
            v102 = v265[44];
            v103 = v265[45];
            v104 = v265[46];
            v240 = v265[47];
            v241 = v265[48];
            v244 = v265[49];
            __dstb = v265[50];
            outlined copy of PlatformItemList.Item.SystemItem(v97, v98, v99, v100, v93, v101, v102, v103, v104, v240, v241, v244, __dstb);
            *(v264 + 38) = v97;
            *(v264 + 39) = v98;
            *(v264 + 40) = v99;
            *(v264 + 41) = v100;
            v58 = v265;
            *(v264 + 42) = v93;
            *(v264 + 43) = v101;
            v62 = v264;
            *(v264 + 44) = v102;
            *(v264 + 45) = v103;
            *(v264 + 46) = v104;
            *(v264 + 47) = v240;
            *(v264 + 48) = v241;
            *(v264 + 49) = v244;
            *(v264 + 50) = __dstb;
          }

          v105 = v58[52];
          if (v105 == 1)
          {
            v106 = *(v58 + 57);
            *(v62 + 440) = *(v58 + 55);
            *(v62 + 456) = v106;
            v62[472] = *(v58 + 472);
            v107 = *(v58 + 53);
            *(v62 + 408) = *(v58 + 51);
            *(v62 + 424) = v107;
            goto LABEL_59;
          }

          *(v62 + 102) = *(v58 + 102);
          v62[412] = *(v58 + 412);
          if (v105)
          {
            v108 = v58[53];
            *(v62 + 52) = v105;
            *(v62 + 53) = v108;

            v109 = v58[54];
            if (v109)
            {
              goto LABEL_53;
            }
          }

          else
          {
            *(v62 + 26) = *(v58 + 26);
            v109 = v58[54];
            if (v109)
            {
LABEL_53:
              v110 = v58[55];
              *(v62 + 54) = v109;
              *(v62 + 55) = v110;

              v111 = v58[56];
              if (v111)
              {
LABEL_54:
                v112 = v58[57];
                *(v62 + 56) = v111;
                *(v62 + 57) = v112;

LABEL_58:
                *(v62 + 58) = v58[58];
                v62[472] = *(v58 + 472);
LABEL_59:
                v113 = v58[61];
                *(v62 + 60) = v58[60];
                *(v62 + 61) = v113;
                *(v62 + 62) = v58[62];
                v62[504] = *(v58 + 504);
                v114 = v58[64];

                if (v114)
                {
                  v115 = v58[65];
                  *(v62 + 64) = v114;
                  *(v62 + 65) = v115;
                }

                else
                {
                  *(v62 + 32) = *(v58 + 32);
                }

                v62[528] = *(v58 + 528);
                if (!v58[102])
                {
                  memcpy(v62 + 536, v58 + 67, 0x130uLL);
                  goto LABEL_74;
                }

                *(v62 + 67) = v58[67];
                *(v62 + 68) = v58[68];
                v62[552] = *(v58 + 552);
                *(v62 + 70) = v58[70];
                v62[568] = *(v58 + 568);
                *(v62 + 36) = *(v58 + 36);
                v62[592] = *(v58 + 592);
                v116 = v62 + 600;
                v117 = v58 + 75;
                v118 = v58[78];

                if (v118)
                {
                  if (v118 == 1)
                  {
                    v119 = *(v58 + 77);
                    *v116 = *v117;
                    *(v62 + 616) = v119;
                    *(v62 + 632) = *(v58 + 79);
LABEL_70:
                    *(v62 + 81) = v58[81];
                    v62[656] = *(v58 + 656);
                    v121 = v62 + 664;
                    v122 = v58 + 83;
                    v123 = v58[97];
                    if (v123 == 1)
                    {
                      v124 = *(v58 + 97);
                      *(v62 + 760) = *(v58 + 95);
                      *(v62 + 776) = v124;
                      *(v62 + 792) = *(v58 + 99);
                      v62[808] = *(v58 + 808);
                      v125 = *(v58 + 89);
                      *(v62 + 696) = *(v58 + 87);
                      *(v62 + 712) = v125;
                      v126 = *(v58 + 93);
                      *(v62 + 728) = *(v58 + 91);
                      *(v62 + 744) = v126;
                      v127 = *(v58 + 85);
                      *v121 = *v122;
                      *(v62 + 680) = v127;
                    }

                    else
                    {
                      *v121 = *v122;
                      v62[672] = *(v58 + 672);
                      *(v62 + 85) = v58[85];
                      v62[688] = *(v58 + 688);
                      *(v62 + 689) = *(v58 + 689);
                      v62[691] = *(v58 + 691);
                      v62[692] = *(v58 + 692);
                      *(v62 + 87) = v58[87];
                      v128 = *(v58 + 45);
                      *(v62 + 44) = *(v58 + 44);
                      *(v62 + 45) = v128;
                      *(v62 + 92) = v58[92];
                      *(v62 + 372) = *(v58 + 372);
                      *(v62 + 47) = *(v58 + 47);
                      v62[768] = *(v58 + 768);
                      *(v62 + 97) = v123;
                      *(v62 + 49) = *(v58 + 49);
                      *(v62 + 100) = v58[100];
                      v62[808] = *(v58 + 808);
                    }

                    *(v62 + 102) = v58[102];
                    *(v62 + 103) = v58[103];
                    *(v62 + 104) = v265[104];

                    v58 = v265;

LABEL_74:
                    v129 = v62 + 840;
                    v130 = v58 + 105;
                    v131 = v58[108];
                    if (v131)
                    {
                      if (v131 == 1)
                      {
                        v132 = *(v58 + 107);
                        *v129 = *v130;
                        *(v62 + 856) = v132;
                        *(v62 + 872) = *(v58 + 109);
                        *(v62 + 111) = v58[111];
LABEL_81:
                        v136 = v58[112];
                        *(v62 + 112) = v136;
                        *(v62 + 113) = v58[113];
                        *(v62 + 114) = v58[114];
                        *(v62 + 115) = v58[115];
                        *(v62 + 116) = v58[116];
                        *(v62 + 117) = v58[117];
                        *(v62 + 118) = v58[118];
                        *(v62 + 476) = *(v58 + 476);
                        v62[954] = *(v58 + 954);
                        v137 = v257[28];
                        __dst = &v62[v137];
                        v138 = v58 + v137;
                        v139 = type metadata accessor for CommandOperation(0);
                        v140 = *(v139 - 8);
                        v245 = *(v140 + 48);
                        v141 = v136;

                        if (v245(v138, 1, v139))
                        {
                          _s7SwiftUI16CommandOperationVSgMaTm_2(0, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation, MEMORY[0x1E69E6720]);
                          memcpy(__dst, v138, *(*(v142 - 8) + 64));
                          a1 = v262;
                          v144 = v254;
                          v143 = v257;
                          v145 = v265;
                        }

                        else
                        {
                          v246 = v139;
                          *__dst = *v138;
                          v146 = *(v139 + 20);
                          v147 = &__dst[v146];
                          v148 = &v138[v146];
                          v149 = *&v138[v146];
                          v150 = *&v138[v146 + 8];
                          v151 = v138[v146 + 16];
                          outlined copy of Text.Storage(v149, v150, v151);
                          *v147 = v149;
                          *(v147 + 1) = v150;
                          v147[16] = v151;
                          *(v147 + 3) = *(v148 + 3);
                          v152 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
                          v153 = type metadata accessor for UUID();
                          v154 = *(*(v153 - 8) + 16);

                          v154(&v147[v152], &v148[v152], v153);
                          v155 = *(v246 + 24);
                          v156 = &__dst[v155];
                          v157 = &v138[v155];
                          if (*v157)
                          {
                            v158 = v157[1];
                            *v156 = *v157;
                            *(v156 + 1) = v158;
                          }

                          else
                          {
                            *v156 = *v157;
                          }

                          a1 = v262;
                          v144 = v254;
                          v143 = v257;
                          v145 = v265;
                          (*(v140 + 56))(__dst, 0, 1, v246);
                        }

                        v264[v143[29]] = *(v145 + v143[29]);
                        v264[v143[30]] = *(v145 + v143[30]);
                        v264[v143[31]] = *(v145 + v143[31]);
                        v264[v143[32]] = *(v145 + v143[32]);
                        v264[v143[33]] = *(v145 + v143[33]);
                        *&v264[v143[34]] = *(v145 + v143[34]);
                        v159 = *(v144 + 56);

                        v159(v264, 0, 1, v143);
                        goto LABEL_88;
                      }

                      *(v62 + 108) = v131;
                      *(v62 + 109) = v58[109];
                      (**(v131 - 1))(v129, v130);
                      v134 = v58[110];
                      if (!v134)
                      {
LABEL_80:
                        *(v62 + 55) = *(v58 + 55);
                        goto LABEL_81;
                      }
                    }

                    else
                    {
                      v133 = *(v58 + 107);
                      *v129 = *v130;
                      *(v62 + 856) = v133;
                      *(v62 + 109) = v58[109];
                      v134 = v58[110];
                      if (!v134)
                      {
                        goto LABEL_80;
                      }
                    }

                    v135 = v58[111];
                    *(v62 + 110) = v134;
                    *(v62 + 111) = v135;

                    goto LABEL_81;
                  }

                  *(v62 + 78) = v118;
                  *(v62 + 79) = v58[79];
                  (**(v118 - 1))((v62 + 600), (v58 + 75), v118);
                }

                else
                {
                  v120 = *(v58 + 77);
                  *v116 = *v117;
                  *(v62 + 616) = v120;
                  *(v62 + 79) = v58[79];
                }

                *(v62 + 80) = v58[80];

                goto LABEL_70;
              }

LABEL_57:
              *(v62 + 28) = *(v58 + 28);
              goto LABEL_58;
            }
          }

          *(v62 + 27) = *(v58 + 27);
          v111 = v58[56];
          if (v111)
          {
            goto LABEL_54;
          }

          goto LABEL_57;
        }
      }

      else
      {
        v81 = *(v265 + 72);
        if (v81 == 255)
        {
          *(v264 + 8) = v265[8];
          v264[72] = *(v265 + 72);
        }

        else
        {
          v82 = v265[8];
          outlined copy of GraphicsImage.Contents(v82, *(v265 + 72));
          *(v264 + 8) = v82;
          v264[72] = v81;
          v65 = v265[24];
        }

        *(v264 + 10) = v265[10];
        *(v264 + 88) = *(v265 + 11);
        v264[104] = *(v265 + 104);
        *(v264 + 108) = *(v265 + 108);
        *(v264 + 121) = *(v265 + 121);
        *(v264 + 136) = *(v265 + 17);
        *(v264 + 152) = *(v265 + 19);
        *(v264 + 84) = *(v265 + 84);
        v264[170] = *(v265 + 170);
        v264[171] = *(v265 + 171);
        if (v65 >> 1 == 0xFFFFFFFF)
        {
          v85 = *(v265 + 12);
          *(v264 + 11) = *(v265 + 11);
          *(v264 + 12) = v85;
        }

        else
        {
          v86 = v265[22];
          v87 = v265[23];
          v88 = v265[25];
          outlined copy of AccessibilityImageLabel(v86, v87, v65, v88);
          *(v264 + 22) = v86;
          *(v264 + 23) = v87;
          *(v264 + 24) = v65;
          *(v264 + 25) = v88;
        }

        v89 = v265[27];
        *(v264 + 26) = v265[26];
        *(v264 + 27) = v89;
        *(v264 + 112) = *(v265 + 112);
        *(v264 + 57) = *(v265 + 57);
        v264[232] = *(v265 + 232);
        v90 = v265[30];
        *(v264 + 30) = v90;
        *(v264 + 124) = *(v265 + 124);
        v264[250] = *(v265 + 250);
        swift_unknownObjectRetain();

        v91 = v90;
        v73 = v265[33];
        if (v73)
        {
          goto LABEL_32;
        }
      }

      v92 = *(v265 + 17);
      *(v264 + 16) = *(v265 + 16);
      *(v264 + 17) = v92;
      *(v264 + 18) = *(v265 + 18);
      goto LABEL_46;
  }

  v17 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v17);
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t *a2, char a3)
{
  v4 = v3;
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
    *(v19[7] + 4 * result) = v7;
  }

  else
  {

    return specialized _NativeDictionary._insert(at:key:value:)(result, a2, v7, v19);
  }

  return result;
}

uint64_t ToolbarPlacementEnvironment.barConfiguration(in:)(uint64_t *a1)
{
  if (a1[1])
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_toolbarItemPlatterVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_barConfiguration>, &type metadata for EnvironmentValues.__Key_barConfiguration, &protocol witness table for EnvironmentValues.__Key_barConfiguration, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_barConfiguration> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();

    v1 = v22;
    if (v22)
    {
      goto LABEL_3;
    }

    return 0;
  }

  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_toolbarItemPlatterVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_barConfiguration>, &type metadata for EnvironmentValues.__Key_barConfiguration, &protocol witness table for EnvironmentValues.__Key_barConfiguration, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_barConfiguration> and conformance EnvironmentPropertyKey<A>();
  PropertyList.subscript.getter();
  v1 = v22;
  if (!v22)
  {
    return 0;
  }

LABEL_3:
  Value = AGGraphGetValue();
  outlined init with copy of ToolbarItemPlacement(Value, &v22);
  outlined init with copy of ToolbarItemPlacement.Role(&v22, &v18);
  if (v21 == 2 && (v18 != 13 ? (v3 = v18 == 4) : (v3 = 1), v3 && (v4 = vorrq_s8(v19, v20), !*&vorr_s8(*v4.i8, *&vextq_s8(v4, v4, 8uLL)))) || (outlined destroy of ToolbarItemPlacement.Role(&v18), outlined init with copy of ToolbarItemPlacement.Role(&v22, &v18), v21 == 2) && v18 == 8 && (v5 = vorrq_s8(v19, v20), !*&vorr_s8(*v5.i8, *&vextq_s8(v5, v5, 8uLL))))
  {
    outlined destroy of ToolbarItemPlacement.Role(&v22);
    v6 = AGGraphGetValue();
    outlined init with copy of ToolbarItemPlacement(v6, &v22);
    outlined init with copy of ToolbarItemPlacement.Role(&v22, &v18);
    if (v21 == 2 && (v18 == 13 || v18 == 4))
    {
      v8 = vorrq_s8(v19, v20);
      if (!*&vorr_s8(*v8.i8, *&vextq_s8(v8, v8, 8uLL)))
      {
        result = outlined destroy of ToolbarItemPlacement.Role(&v22);
        v10 = *(v1 + 16);
        if (!v10)
        {
          goto LABEL_21;
        }

        goto LABEL_26;
      }
    }

    outlined destroy of ToolbarItemPlacement.Role(&v18);
    outlined destroy of ToolbarItemPlacement.Role(&v22);

    return 0;
  }

  outlined destroy of ToolbarItemPlacement.Role(&v18);
  result = outlined destroy of ToolbarItemPlacement.Role(&v22);
  v10 = *(v1 + 16);
  if (!v10)
  {
LABEL_21:
    v11 = MEMORY[0x1E69E7CC0];
LABEL_22:

    return v11;
  }

LABEL_26:
  v12 = 0;
  v13 = v1 + 32;
  v11 = MEMORY[0x1E69E7CC0];
  while (v12 < *(v1 + 16))
  {
    outlined init with copy of ContentScrollViewBox(v13, &v22);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong && (Strong, (v23 & 2) != 0))
    {
      outlined init with take of ContentScrollViewBox(&v22, &v18);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v24 = v11;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v11 + 16) + 1, 1);
        v11 = v24;
      }

      v17 = *(v11 + 16);
      v16 = *(v11 + 24);
      if (v17 >= v16 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1);
        v11 = v24;
      }

      *(v11 + 16) = v17 + 1;
      result = outlined init with take of ContentScrollViewBox(&v18, v11 + 48 * v17 + 32);
    }

    else
    {
      result = outlined destroy of ContentScrollViewBox(&v22);
    }

    ++v12;
    v13 += 48;
    if (v10 == v12)
    {
      goto LABEL_22;
    }
  }

  __break(1u);
  return result;
}

uint64_t assignWithCopy for ScrollViewLayoutComputer.Engine(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);

  *(a1 + 48) = *(a2 + 48);
  v4 = *(a2 + 56);
  v5 = *(a2 + 72);
  v6 = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 88) = v6;
  *(a1 + 72) = v5;
  *(a1 + 56) = v4;
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  v9 = *(a2 + 144);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 112) = v7;
  v10 = *(a2 + 168);
  v11 = *(a2 + 184);
  v12 = *(a2 + 200);
  *(a1 + 216) = *(a2 + 216);
  *(a1 + 200) = v12;
  *(a1 + 184) = v11;
  *(a1 + 168) = v10;
  return a1;
}

uint64_t _sSo22UINavigationControllerC7SwiftUIE16visitDescendents12matchingType7visitorSbxm_SbxXEtlFAC022NavigationStackHostingB0CyAC7AnyViewVG_Ttg5(uint64_t (*a1)(uint64_t *), uint64_t a2)
{
  v5 = [v2 viewControllers];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIViewController, 0x1E69DD258);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v6 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v8 = 0;
    while (1)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x18D00E9C0](v8, v6);
      }

      else
      {
        if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v11 = *(v6 + 8 * v8 + 32);
      }

      v12 = v11;
      v13 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v6VGMaTm_0(0, &lazy cache variable for type metadata for NavigationStackHostingController<AnyView>, MEMORY[0x1E6981910], MEMORY[0x1E6981900], type metadata accessor for NavigationStackHostingController);
      v14 = swift_dynamicCastClass();
      if (v14)
      {
        v17 = v14;
        v9 = v12;
        v10 = a1(&v17);

        if ((v10 & 1) == 0)
        {
          goto LABEL_18;
        }
      }

      else
      {
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          v15 = _sSo22UINavigationControllerC7SwiftUIE16visitDescendents12matchingType7visitorSbxm_SbxXEtlFAC022NavigationStackHostingB0CyAC7AnyViewVG_Ttg5(a1, a2);

          if ((v15 & 1) == 0)
          {
LABEL_18:

            return 0;
          }
        }

        else
        {
        }
      }

      ++v8;
      if (v13 == i)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }

LABEL_17:

  return 1;
}

uint64_t closure #2 in TransformScrollStorageEnvironment.updateValue()(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (result)
  {
    outlined init with copy of ScrollEnvironmentProperties(a2, v10);
    ScrollEnvironmentStorage.baseProperties.setter(v10);
    v10[3] = a4;
    v10[4] = a5;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v10);
    (*(*(a4 - 8) + 16))(boxed_opaque_existential_1, a3, a4);
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type ScrollEnvironmentStorage and conformance ScrollEnvironmentStorage, type metadata accessor for ScrollEnvironmentStorage, protocol conformance descriptor for ScrollEnvironmentStorage);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    return outlined destroy of (ResolvedScrollBehavior?, ResolvedScrollBehavior?)(v10, type metadata accessor for ScrollEnvironmentTransform?);
  }

  else
  {
    __break(1u);
  }

  return result;
}

double outlined copy of ResolvedNavigationDestinations.ChangeRequest(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3)
  {
  }

  return result;
}

uint64_t AnyNavigationPath.HeterogeneousBoxBase.copy()()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v6 = *(v0 + 48);
  v5 = *(v0 + 56);
  v7 = swift_allocObject();
  *(v7 + 16) = v1;
  *(v7 + 24) = v2;
  *(v7 + 32) = v3;
  *(v7 + 40) = v4;
  *(v7 + 48) = v6;
  *(v7 + 56) = v5;
  outlined copy of NavigationPath.Representation(v1, v2, v3, v4);

  return v7;
}

void ResolvedNavigationDestinations.ejectDestinations(at:)(uint64_t a1)
{
  v2 = v1;
  v3 = v1[2];
  if (*(v3 + 16))
  {
    v5 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
    if (v6)
    {
      v7 = *(*(v3 + 56) + 8 * v5);
      swift_bridgeObjectRetain_n();
      specialized Dictionary._Variant.removeValue(forKey:)(a1);

      v47 = *(v7 + 16);
      if (v47)
      {
        v8 = 0;
        v9 = v7 + 32;
        while (v8 < *(v7 + 16))
        {
          v10 = *(v9 + 8 * v8);
          if (a1 == -1)
          {
            v24 = v2[1];
            if (*(v24 + 16))
            {
              v25 = specialized __RawDictionaryStorage.find<A>(_:)(*(v9 + 8 * v8));
              if (v26)
              {
                v27 = *(**(*(v24 + 56) + 8 * v25) + 96);

                v29 = v27(v28);
                v31 = v30;
                v9 = v7 + 32;

                if (v31)
                {
                  v32 = specialized __RawDictionaryStorage.find<A>(_:)(v29, v31);
                  if (v33)
                  {
                    v34 = v32;
                    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                    v36 = v2[4];
                    if (!isUniquelyReferenced_nonNull_native)
                    {
                      specialized _NativeDictionary.copy()();
                    }

                    specialized _NativeDictionary._delete(at:)(v34, v36);

                    v2[4] = v36;
                  }

                  else
                  {
                  }

                  v9 = v7 + 32;
                }
              }
            }

            v42 = specialized __RawDictionaryStorage.find<A>(_:)(v10);
            if (v43)
            {
              v44 = v42;
              v45 = swift_isUniquelyReferenced_nonNull_native();
              v46 = v2[1];
              if (!v45)
              {
                specialized _NativeDictionary.copy()();
              }

              specialized _NativeDictionary._delete(at:)(v44, v46);

              v2[1] = v46;
            }
          }

          else
          {
            v11 = *v2;
            if (*(*v2 + 16))
            {
              v12 = specialized __RawDictionaryStorage.find<A>(_:)(*(v9 + 8 * v8));
              if (v13)
              {
                v14 = *(**(*(v11 + 56) + 8 * v12) + 96);

                v16 = v14(v15);
                v18 = v17;
                v9 = v7 + 32;

                if (v18)
                {
                  v19 = specialized __RawDictionaryStorage.find<A>(_:)(v16, v18);
                  if (v20)
                  {
                    v21 = v19;
                    v22 = swift_isUniquelyReferenced_nonNull_native();
                    v23 = v2[4];
                    if (!v22)
                    {
                      specialized _NativeDictionary.copy()();
                    }

                    specialized _NativeDictionary._delete(at:)(v21, v23);

                    v2[4] = v23;
                  }

                  else
                  {
                  }

                  v9 = v7 + 32;
                }
              }
            }

            v37 = specialized __RawDictionaryStorage.find<A>(_:)(v10);
            if (v38)
            {
              v39 = v37;
              v40 = swift_isUniquelyReferenced_nonNull_native();
              v41 = *v2;
              v48 = *v2;
              if (!v40)
              {
                specialized _NativeDictionary.copy()();
                v41 = v48;
              }

              specialized _NativeDictionary._delete(at:)(v39, v41);

              *v2 = v41;
            }
          }

          if (v47 == ++v8)
          {
            goto LABEL_35;
          }
        }

        __break(1u);
      }

      else
      {
LABEL_35:
      }
    }
  }
}

void type metadata accessor for _DictionaryStorage<Int, [ObjectIdentifier]>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<Int, [ObjectIdentifier]>)
  {
    type metadata accessor for PredicateExpressions.Variable<String>(255, &lazy cache variable for type metadata for [ObjectIdentifier], MEMORY[0x1E69E5FE0], MEMORY[0x1E69E62F8]);
    v1 = type metadata accessor for _DictionaryStorage();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _DictionaryStorage<Int, [ObjectIdentifier]>);
    }
  }
}

void destroy for NavigationRequest.ListRequest(void *a1)
{
  v1 = a1;
  switch(*(a1 + 96))
  {
    case 0:
      goto LABEL_31;
    case 1:

      goto LABEL_31;
    case 2:

      a1 = v1 + 2;
      goto LABEL_35;
    case 3:

      return;
    case 4:
    case 5:

      goto LABEL_31;
    case 6:

      goto LABEL_31;
    case 0xA:
    case 0x11:
      __swift_destroy_boxed_opaque_existential_1(a1);

      goto LABEL_31;
    case 0xB:
LABEL_35:

      __swift_destroy_boxed_opaque_existential_1(a1);
      return;
    case 0xC:
    case 0xD:

      if (v1[4])
      {
        __swift_destroy_boxed_opaque_existential_1(v1 + 1);
      }

      if (v1[7] != 1)
      {
      }

      goto LABEL_31;
    case 0xE:

      if (v1[4])
      {
        __swift_destroy_boxed_opaque_existential_1(v1 + 1);
      }

      if (v1[7] == 1)
      {
        return;
      }

      goto LABEL_31;
    case 0x12:

      if (v1[5])
      {
        __swift_destroy_boxed_opaque_existential_1(v1 + 2);
      }

      if (v1[8] != 1)
      {
      }

      goto LABEL_31;
    case 0x13:
      if (a1[3])
      {
        __swift_destroy_boxed_opaque_existential_1(a1);
      }

      if (v1[6] == 1)
      {
        return;
      }

      goto LABEL_31;
    case 0x15:
      if (*a1)
      {
      }

      if (v1[2])
      {
LABEL_31:
      }

      break;
    default:
      return;
  }
}

uint64_t _s7SwiftUI30ResolvedNavigationDestinationsV16prepareToPresent4view2at012shouldUpdateE08applyingAA7AnyViewVx_AA0d5StackO8PositionVSbq_ALXEtAA0O0RzAA0O8ModifierR_r0_lFZAA09_VariadicO0O4TreeVy_AA13_VStackLayoutVAA01_dP18StyleConfigurationV4RootVG_AA05EmptyR0VTt3B5Tf4nndn_n(uint64_t a1, uint64_t a2, char a3, uint64_t *a4, void (*a5)(uint64_t *))
{
  *(&v14 + 1) = a2;
  v6 = *a4;
  v7 = a4[1];
  v13 = *(a4 + 16);
  *&v14 = a1;
  v8 = a4[3];
  v9 = a4[4];
  v10 = a4[5] & 1;
  LOBYTE(v29) = a3 & 1;
  v11 = swift_allocObject();
  *(v11 + 16) = 1;
  a5(a4);
  v23 = v14;
  LOBYTE(v24) = v29;
  *(&v24 + 1) = v6;
  *&v25 = v7;
  *(&v25 + 1) = v13;
  *&v26 = v8;
  *(&v26 + 1) = v9;
  LOBYTE(v27) = v10;
  BYTE1(v27) = 1;
  *(&v27 + 1) = partial apply for closure #1 in View.readNavigationDestinations<A>(position:isActive:reader:);
  v28 = v11;
  v22 = v11;
  v20 = v26;
  v21 = v27;
  v17 = v14;
  v18 = v24;
  v19 = v25;
  v29 = v14;
  v30 = v24;
  v31 = v6;
  v32 = v7;
  v33 = v13;
  v34 = v8;
  v35 = v9;
  v36 = v10;
  v37 = 1;
  v38 = partial apply for closure #1 in View.readNavigationDestinations<A>(position:isActive:reader:);
  v39 = v11;
  outlined init with copy of ModifiedContent<ModifiedContent<_VariadicView.Tree<_VStackLayout, _NavigationStackStyleConfiguration.Root>, ReadDestinationsModifier<ResolvedNavigationDestinations>>, _PreferenceTransformModifier<NavigationDestinationKey>>(&v23, v16);
  outlined destroy of ModifiedContent<ModifiedContent<_VariadicView.Tree<_VStackLayout, _NavigationStackStyleConfiguration.Root>, ReadDestinationsModifier<ResolvedNavigationDestinations>>, _PreferenceTransformModifier<NavigationDestinationKey>>(&v29);
  type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<_VariadicView.Tree<_VStackLayout, _NavigationStackStyleConfiguration.Root>, ReadDestinationsModifier<ResolvedNavigationDestinations>>, _PreferenceTransformModifier<NavigationDestinationKey>>, EmptyModifier>(0);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<_VariadicView.Tree<_VStackLayout, _NavigationStackStyleConfiguration.Root>, ReadDestinationsModifier<ResolvedNavigationDestinations>>, _PreferenceTransformModifier<NavigationDestinationKey>>, EmptyModifier> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<_VariadicView.Tree<_VStackLayout, _NavigationStackStyleConfiguration.Root>, ReadDestinationsModifier<ResolvedNavigationDestinations>>, _PreferenceTransformModifier<NavigationDestinationKey>>, EmptyModifier> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<_VariadicView.Tree<_VStackLayout, _NavigationStackStyleConfiguration.Root>, ReadDestinationsModifier<ResolvedNavigationDestinations>>, _PreferenceTransformModifier<NavigationDestinationKey>>, EmptyModifier>, lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_VariadicView.Tree<_VStackLayout, _NavigationStackStyleConfiguration.Root>, ReadDestinationsModifier<ResolvedNavigationDestinations>>, _PreferenceTransformModifier<NavigationDestinationKey>> and conformance <> ModifiedContent<A, B>, MEMORY[0x1E697E100]);
  return AnyView.init<A>(_:)();
}

void specialized _UIHostingView.containerBackgroundColor.setter(void *a1)
{
  v2 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x1F0);
  v3 = *(v1 + v2);
  *(v1 + v2) = a1;
  v4 = a1;

  _UIHostingView.updateBackgroundColor()();
}

double @objc _UIHostingView.transform3D.getter@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = a1;
  _UIHostingView.transform3D.getter(v4, v13);

  result = *v13;
  v6 = v13[1];
  v7 = v13[2];
  v8 = v13[3];
  v9 = v13[4];
  v10 = v13[5];
  v11 = v13[6];
  v12 = v13[7];
  *a2 = v13[0];
  a2[1] = v6;
  a2[2] = v7;
  a2[3] = v8;
  a2[4] = v9;
  a2[5] = v10;
  a2[6] = v11;
  a2[7] = v12;
  return result;
}

void PlatformBarUpdater.callAsFunction(configurations:context:)(uint64_t a1, void *a2, void *a3)
{
  v4 = v3;
  v7 = v4[7];
  v8 = v4[8];
  v9 = v4 + 7;
  v4[7] = a2;
  v4[8] = a3;
  v10 = a2;
  v11 = a3;

  if (a1)
  {
    swift_beginAccess();
    v4[3] = a1;

    swift_beginAccess();

    specialized Set.formUnion<A>(_:)(v12);
    swift_endAccess();
  }

  swift_beginAccess();
  v13 = v4[3];
  v14 = 1 << *(v13 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(v13 + 64);

  swift_beginAccess();
  v17 = 0;
  v18 = (v14 + 63) >> 6;
  while (v16)
  {
    v19 = v17;
LABEL_12:
    v20 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
    outlined init with copy of ToolbarPlacement.Role(*(v13 + 48) + 40 * (v20 | (v19 << 6)), v28);
    v26[0] = v28[0];
    v26[1] = v28[1];
    v27 = v29;
    v21 = v4[6];

    v22 = specialized Set.contains(_:)(v26, v21);

    if (v22 & 1) != 0 && (PlatformBarUpdater.updateIfNeeded(role:)(v26))
    {
      swift_beginAccess();
      specialized Set._Variant.remove(_:)(v26, v25);
      swift_endAccess();
      _s7SwiftUI22NavigationTitleStorageVSgWOhTm_0(v25, &lazy cache variable for type metadata for ToolbarPlacement.Role?, &type metadata for ToolbarPlacement.Role);
    }

    outlined destroy of ToolbarPlacement.Role(v26);
    v17 = v19;
  }

  while (1)
  {
    v19 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v19 >= v18)
    {

      v23 = v4[7];
      v24 = v4[8];
      *v9 = 0;
      v9[1] = 0;

      return;
    }

    v16 = *(v13 + 64 + 8 * v19);
    ++v17;
    if (v16)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

Swift::Void __swiftcall NavigationStackCoordinator.navigationController(_:willShow:animated:)(UINavigationController *_, UIViewController *willShow, Swift::Bool animated)
{
  v4 = MEMORY[0x1E69E7D40];
  v5 = *MEMORY[0x1E69E7D40] & *v3;
  if (!animated || (v7 = *MEMORY[0x1E69E7D40] & *v3, v9 = [(UINavigationController *)_ transitionCoordinator], v5 = *v4 & *v3, !v9))
  {
    *(v3 + *(v5 + 144)) = 0;
    return;
  }

  v10 = v9;
  v11 = *((*v4 & *v3) + 0x90);
  *(v3 + v11) = 1;
  v12 = swift_allocObject();
  v48 = v3;
  swift_unknownObjectWeakInit();
  v13 = swift_allocObject();
  v14 = *(v7 + 80);
  v13[2] = v14;
  v15 = *(v7 + 88);
  v13[3] = v15;
  v13[4] = v12;
  v65 = partial apply for closure #1 in NavigationStackCoordinator.navigationController(_:willShow:animated:);
  v66 = v13;
  aBlock = MEMORY[0x1E69E9820];
  v62 = 1107296256;
  v63 = thunk for @escaping @callee_guaranteed (@guaranteed UIViewControllerTransitionCoordinatorContext) -> ();
  v64 = &block_descriptor_78;
  v16 = _Block_copy(&aBlock);

  [v10 animateAlongsideTransition:0 completion:v16];
  _Block_release(v16);
  _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v6VGMaTm_0(0, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v6>, MEMORY[0x1E697DF60], MEMORY[0x1E697DF58], MEMORY[0x1E697EC20]);
  lazy protocol witness table accessor for type _SemanticFeature<Semantics_v6> and conformance _SemanticFeature<A>();
  if ((static SemanticFeature.isEnabled.getter() & 1) == 0)
  {
    goto LABEL_21;
  }

  if ([(UINavigationController *)_ lastOperation]== 1)
  {
    v17 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v18 = swift_allocObject();
    v18[2] = v14;
    v18[3] = v15;
    v18[4] = v17;
    v18[5] = _;
    v65 = partial apply for closure #2 in NavigationStackCoordinator.navigationController(_:willShow:animated:);
    v66 = v18;
    aBlock = MEMORY[0x1E69E9820];
    v62 = 1107296256;
    v19 = &block_descriptor_25_0;
LABEL_6:
    v63 = thunk for @escaping @callee_guaranteed (@guaranteed UIViewControllerTransitionCoordinatorContext) -> ();
    v64 = v19;
    v20 = _Block_copy(&aBlock);
    v21 = _;

    [v10 notifyWhenInteractionChangesUsingBlock_];
    _Block_release(v20);
LABEL_21:
    swift_unknownObjectRelease();
    return;
  }

  v22 = *(v48 + *((*v4 & *v48) + 0x88));
  if (v22)
  {
    v23 = v22 == willShow;
  }

  else
  {
    v23 = 1;
  }

  v24 = v23;
  v47 = v24;
  v25 = [(UINavigationController *)_ viewControllers];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIViewController, 0x1E69DD258);
  v26 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v26 >> 62)
  {
    v27 = __CocoaSet.count.getter();
  }

  else
  {
    v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  NavigationStackCoordinator.previousContent.getter(&aBlock);
  v28 = NavigationState.Base.count.getter();
  outlined destroy of NavigationState.StackContent(&aBlock);
  if (v27 >= v28 || *(v48 + *((*v4 & *v48) + 0x80)) == 1 || (v47 & 1) == 0)
  {
    goto LABEL_21;
  }

  if ([v10 isInteractive])
  {
    v29 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v30 = swift_allocObject();
    v30[2] = v14;
    v30[3] = v15;
    v30[4] = v29;
    v30[5] = _;
    v65 = partial apply for closure #3 in NavigationStackCoordinator.navigationController(_:willShow:animated:);
    v66 = v30;
    aBlock = MEMORY[0x1E69E9820];
    v62 = 1107296256;
    v19 = &block_descriptor_18_1;
    goto LABEL_6;
  }

  v31 = [(UINavigationController *)_ viewControllers];
  v32 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v32 >> 62)
  {
    v33 = __CocoaSet.count.getter();
  }

  else
  {
    v33 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  NavigationStackCoordinator.previousContent.getter(&aBlock);
  v34 = NavigationState.Base.count.getter();
  outlined destroy of NavigationState.StackContent(&aBlock);
  *(v48 + v11) = 0;
  if (one-time initialization token for deselectionIsAtEndOfAnimatedTransitions != -1)
  {
    swift_once();
  }

  v35 = deselectionIsAtEndOfAnimatedTransitions;
  if (deselectionIsAtEndOfAnimatedTransitions)
  {
    v36 = 257;
  }

  else
  {
    v36 = 1;
  }

  *(v48 + *((*v4 & *v48) + 0x78)) = v36;
  outlined init with copy of NavigationAuthority(v48 + *((*v4 & *v48) + 0x68), v60);
  v37 = v34 - v33;
  if (__OFSUB__(v34, v33))
  {
    __break(1u);
  }

  else
  {
    NavigationStackCoordinator.previousContent.getter(&aBlock);
    NavigationState.StackContent.topKey.getter();
    v39 = v38;
    v41 = v40;
    v43 = v42;
    outlined destroy of NavigationState.StackContent(&aBlock);
    static Transaction.current.getter();
    static Transaction.current.getter();
    v44 = Transaction.disablesAnimations.getter();

    if (v44)
    {
      v45 = 1;
    }

    else
    {
      v45 = Transaction.disablesAnimations.getter();
    }

    static Transaction.current.getter();
    v46 = Transaction.animation.getter();

    if (!v46)
    {
      v46 = Transaction.animation.getter();
    }

    v49 = v37;
    v50 = v35;
    v51 = 9;
    v52 = v39;
    v53 = v41;
    v54 = v43;
    v55 = 0;
    v56 = 0;
    v57 = 0;
    v58 = v45 & 1;
    v59 = v46;
    NavigationAuthority.enqueueRequest(_:)(&v49);
    swift_unknownObjectRelease();
    outlined destroy of NavigationRequest(&v49);
    outlined destroy of NavigationAuthority(v60);
  }
}

uint64_t sub_18BF1F894()
{

  return swift_deallocObject();
}

uint64_t NavigationStackCoordinator.environment.getter()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  v3 = *MEMORY[0x1E69E7D40] & *v0;
  v4 = *(v3 + 0x70);
  swift_beginAccess();
  v5 = *((v2 & v1) + 0x50);
  result = (*(*(v5 - 8) + 48))(&v0[v4], 1, v5);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(*(v3 + 88) + 24))(v5);
    return swift_endAccess();
  }

  return result;
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance ScrollTransitionModifier<A>.StageProgress(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ScrollTransitionModifier<A>.StageProgress, a1);

  return MEMORY[0x1EEDDE9B8](a1, WitnessTable);
}

uint64_t closure #2 in static ScrollTransitionModifier._makeView(modifier:inputs:body:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8[2] = type metadata accessor for ScrollTransitionModifier(0, a2, a3, a4);
  v5 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + 16, _s14AttributeGraph13PointerOffsetV2ofyACyxq_Gq_zFZAESPyq_GXEfU_TA_9, v8, &type metadata for ScrollTransitionConfiguration, MEMORY[0x1E69E73E0], v5, MEMORY[0x1E69E7410], v6);
  return v8[5];
}

unint64_t lazy protocol witness table accessor for type NavigationDestinationScopeModifier and conformance NavigationDestinationScopeModifier()
{
  result = lazy protocol witness table cache variable for type NavigationDestinationScopeModifier and conformance NavigationDestinationScopeModifier;
  if (!lazy protocol witness table cache variable for type NavigationDestinationScopeModifier and conformance NavigationDestinationScopeModifier)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NavigationDestinationScopeModifier, &unk_1EFF97640, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type NavigationDestinationScopeModifier and conformance NavigationDestinationScopeModifier);
  }

  return result;
}

uint64_t protocol witness for static EnvironmentKey._valuesEqual(_:_:) in conformance FormInsetsKey(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v8[0] = a1[2];
  *(v8 + 9) = *(a1 + 41);
  v3 = a2[1];
  v5[0] = *a2;
  v5[1] = v3;
  v6[0] = a2[2];
  *(v6 + 9) = *(a2 + 41);
  return MEMORY[0x18D006FC0](v7, v5) & 1;
}

uint64_t EnvironmentValues.accessibilitySwitchControlEnabled.getter()
{
  v3 = *v0;
  EnvironmentValues.accessibilityEnabledTechnologies.getter(&v2);
  return (v2 >> 1) & 1;
}

void *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4, unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  type metadata accessor for _ContiguousArrayStorage<AccessibilityNodeAttachment>(0, a5, a6, MEMORY[0x1E69E6F90]);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size_1(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    type metadata accessor for _ContiguousArrayStorage<AccessibilityNodeAttachment>(0, a5, a6, MEMORY[0x1E69E6F90]);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size_1(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 17;
    }

    v14[2] = v12;
    v14[3] = 2 * (v16 >> 4);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[2 * v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 16 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    a7(0);
    swift_arrayInitWithCopy();
  }

  return v14;
}

{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    type metadata accessor for _ContiguousArrayStorage<AccessibilityNodeAttachment>(0, a5, a6, MEMORY[0x1E69E6F90]);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size_1(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 17;
    }

    v14[2] = v12;
    v14[3] = 2 * (v16 >> 4);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[2 * v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 16 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    a7(0);
    swift_arrayInitWithCopy();
  }

  return v14;
}

{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    type metadata accessor for _ContiguousArrayStorage<AccessibilityNodeAttachment>(0, a5, a6, MEMORY[0x1E69E6F90]);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size_1(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 25;
    }

    v14[2] = v12;
    v14[3] = 2 * (v16 >> 3);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 8 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    a7(0);
    swift_arrayInitWithCopy();
  }

  return v14;
}

void type metadata accessor for EnvironmentPropertyKey<ButtonOutsetKey>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

uint64_t outlined init with take of (key: NavigationLinkSelectionIdentifier, value: UpdateViewDestinationRequest)?(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4, uint64_t a5, uint64_t a6)
{
  type metadata accessor for (key: ViewIdentity, value: ConfirmationDialog)?(0, a3, a4, a5, a6);
  (*(*(v8 - 8) + 32))(a2, a1, v8);
  return a2;
}

void type metadata accessor for (key: ViewIdentity, value: ConfirmationDialog)?(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t a5)
{
  if (!*a2)
  {
    type metadata accessor for (key: ViewIdentity, value: InspectorStorage)(255, a3, a4, a5);
    v6 = type metadata accessor for Optional();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t EnvironmentValues.isScrollViewTransformClippingEnabled.getter()
{
  v1 = *(v0 + 8);
  type metadata accessor for _SemanticFeature<Semantics_v5>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>, &type metadata for EnvironmentValues.ScrollEnvironmentKey, &protocol witness table for EnvironmentValues.ScrollEnvironmentKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey> and conformance EnvironmentPropertyKey<A>();
  if (v1)
  {

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    PropertyList.subscript.getter();
  }

  v2 = v20[0];
  swift_getKeyPath();
  lazy protocol witness table accessor for type CGSize and conformance CGSize(&lazy protocol witness table cache variable for type ScrollEnvironmentStorage and conformance ScrollEnvironmentStorage, type metadata accessor for ScrollEnvironmentStorage, protocol conformance descriptor for ScrollEnvironmentStorage);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  outlined init with copy of ScrollEnvironmentProperties(v20[0] + 16, v20);
  swift_getKeyPath();
  *&v18 = v2;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  outlined init with copy of ScrollEnvironmentTransform?(v2 + 280, &v18, type metadata accessor for ScrollEnvironmentTransform?);
  if (v19)
  {
    outlined init with take of ScrollEnvironmentTransform(&v18, &v15);
    v3 = v16;
    v4 = v17;
    __swift_project_boxed_opaque_existential_1(&v15, v16);
    (*(v4 + 8))(v20, v3, v4);
    __swift_destroy_boxed_opaque_existential_1(&v15);
  }

  v5 = BYTE1(v20[0]);
  outlined destroy of ScrollEnvironmentProperties(v20);
  if (v5)
  {
    v6 = 1;
  }

  else
  {
    type metadata accessor for _SemanticFeature<Semantics_v5>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>, &type metadata for EnvironmentValues.ScrollEnvironmentKey, &protocol witness table for EnvironmentValues.ScrollEnvironmentKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey> and conformance EnvironmentPropertyKey<A>();
    if (v1)
    {

      PropertyList.Tracker.value<A>(_:for:)();
    }

    else
    {
      PropertyList.subscript.getter();
    }

    v7 = v18;
    swift_getKeyPath();
    *&v18 = v7;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_beginAccess();
    outlined init with copy of ScrollEnvironmentProperties(v7 + 16, &v18);
    swift_getKeyPath();
    *&v15 = v7;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_beginAccess();
    outlined init with copy of ScrollEnvironmentTransform?(v7 + 280, &v15, type metadata accessor for ScrollEnvironmentTransform?);
    if (v16)
    {
      outlined init with take of ScrollEnvironmentTransform(&v15, v12);
      v8 = v13;
      v9 = v14;
      __swift_project_boxed_opaque_existential_1(v12, v13);
      (*(v9 + 8))(&v18, v8, v9);
      __swift_destroy_boxed_opaque_existential_1(v12);
    }

    v10 = BYTE2(v18);
    outlined destroy of ScrollEnvironmentProperties(&v18);
    v6 = v10 ^ 1;
  }

  return v6 & 1;
}

void *destructiveInjectEnumTag for ScrollTransitionConfiguration.Mode(void *result, uint64_t a2)
{
  if (a2 < 2)
  {
    result[4] = result[4] & 1 | (a2 << 62);
  }

  else
  {
    *result = (a2 - 2);
    result[1] = 0;
    result[2] = 0;
    result[3] = 0;
    *(result + 2) = xmmword_18CD68310;
  }

  return result;
}

uint64_t sub_18BF203DC(uint64_t a1, uint64_t *a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  return a1;
}

uint64_t View.defaultToolbarBarPocket()(uint64_t a1, uint64_t a2)
{
  v6[0] = swift_getKeyPath();
  v7 = 0;
  KeyPath = swift_getKeyPath();
  v9 = 0;
  type metadata accessor for StaticIf<Solarium, DefaultToolbarBarPocketModifier, EmptyModifier>();
  MEMORY[0x18D00A570](v6, a1, v4, a2);
  return _s7SwiftUI16CommandOperationVWOhTm_3(v6, type metadata accessor for StaticIf<Solarium, DefaultToolbarBarPocketModifier, EmptyModifier>);
}

uint64_t outlined init with copy of ToolbarStorage.GroupItem(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t destroy for ToolbarStorage.Item(uint64_t a1, uint64_t a2)
{

  if (*(a1 + 88))
  {
    __swift_destroy_boxed_opaque_existential_1((a1 + 64));
  }

  if (*(a1 + 152) == 1)
  {
    __swift_destroy_boxed_opaque_existential_1((a1 + 112));
  }

  __swift_destroy_boxed_opaque_existential_1((a1 + 184));

  v4 = a1 + *(a2 + 68);
  v5 = type metadata accessor for PlatformItemList.Item(0);
  if (!(*(*(v5 - 8) + 48))(v4, 1, v5))
  {

    v6 = *(v4 + 192);
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) != 0x1FFFFFFFCLL)
    {
      v8 = *(v4 + 72);
      if (v8 != 255)
      {
        outlined consume of GraphicsImage.Contents(*(v4 + 64), v8);
        v6 = *(v4 + 192);
        v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      }

      if (v7 != 0x1FFFFFFFELL)
      {
        outlined consume of AccessibilityImageLabel(*(v4 + 176), *(v4 + 184), v6, *(v4 + 200));
      }

      swift_unknownObjectRelease();
    }

    if (*(v4 + 264))
    {

      v9 = *(v4 + 272);
      if (v9 >= 2)
      {
      }
    }

    v10 = *(v4 + 336);
    if (v10 >> 2 != 0xFFFFFFFF)
    {
      outlined consume of PlatformItemList.Item.SystemItem(*(v4 + 304), *(v4 + 312), *(v4 + 320), *(v4 + 328), v10, *(v4 + 344), *(v4 + 352), *(v4 + 360), *(v4 + 368), *(v4 + 376), *(v4 + 384), *(v4 + 392), *(v4 + 400));
    }

    v11 = *(v4 + 416);
    if (v11)
    {
      if (v11 == 1)
      {
        goto LABEL_25;
      }
    }

    if (*(v4 + 432))
    {
    }

    if (*(v4 + 448))
    {
    }

LABEL_25:

    if (*(v4 + 512))
    {
    }

    if (!*(v4 + 816))
    {
LABEL_35:
      v13 = *(v4 + 864);
      if (v13)
      {
        if (v13 == 1)
        {
LABEL_40:

          v14 = v4 + *(v5 + 112);
          v15 = type metadata accessor for CommandOperation(0);
          if (!(*(*(v15 - 8) + 48))(v14, 1, v15))
          {
            v16 = v14 + *(v15 + 20);
            outlined consume of Text.Storage(*v16, *(v16 + 8), *(v16 + 16));

            v17 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
            v18 = type metadata accessor for UUID();
            (*(*(v18 - 8) + 8))(v16 + v17, v18);
            if (*(v14 + *(v15 + 24)))
            {
            }
          }

          goto LABEL_44;
        }

        __swift_destroy_boxed_opaque_existential_1((v4 + 840));
      }

      if (*(v4 + 880))
      {
      }

      goto LABEL_40;
    }

    v12 = *(v4 + 624);
    if (v12)
    {
      if (v12 == 1)
      {
LABEL_32:
        if (*(v4 + 776) != 1)
        {
        }

        goto LABEL_35;
      }

      __swift_destroy_boxed_opaque_existential_1((v4 + 600));
    }

    goto LABEL_32;
  }

LABEL_44:

  return swift_weakDestroy();
}

void type metadata accessor for (Int, ToolbarStorage.Item)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (Int, ToolbarStorage.Item))
  {
    type metadata accessor for ToolbarStorage.Item(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (Int, ToolbarStorage.Item));
    }
  }
}

uint64_t outlined init with copy of ToolbarStorage.Item(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t initializeWithTake for ToolbarStorage.Item(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v6;
  v7 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v7;
  v8 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v8;
  v9 = *(a2 + 96);
  v10 = *(a2 + 112);
  *(a1 + 137) = *(a2 + 137);
  v11 = *(a2 + 128);
  *(a1 + 112) = v10;
  *(a1 + 128) = v11;
  *(a1 + 96) = v9;
  *(a1 + 153) = *(a2 + 153);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 169) = *(a2 + 169);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 264) = *(a2 + 264);
  *(a1 + 248) = *(a2 + 248);
  *(a1 + 232) = *(a2 + 232);
  *(a1 + 216) = *(a2 + 216);
  *(a1 + 184) = *(a2 + 184);
  v12 = *(a2 + 200);
  *(a1 + 280) = *(a2 + 280);
  v13 = a3[17];
  v14 = (a1 + v13);
  v15 = (a2 + v13);
  *(a1 + 200) = v12;
  v16 = type metadata accessor for PlatformItemList.Item(0);
  v17 = *(v16 - 1);
  if ((*(v17 + 48))(v15, 1, v16))
  {
    _s7SwiftUI16CommandOperationVSgMaTm_2(0, &lazy cache variable for type metadata for PlatformItemList.Item?, type metadata accessor for PlatformItemList.Item, MEMORY[0x1E69E6720]);
    memcpy(v14, v15, *(*(v18 - 8) + 64));
  }

  else
  {
    v19 = v15[1];
    *v14 = *v15;
    v14[1] = v19;
    *(v14 + 32) = *(v15 + 32);
    *(v14 + 40) = *(v15 + 40);
    *(v14 + 56) = *(v15 + 56);
    v20 = v15[13];
    v14[12] = v15[12];
    v14[13] = v20;
    v14[14] = v15[14];
    *(v14 + 235) = *(v15 + 235);
    v21 = v15[9];
    v14[8] = v15[8];
    v14[9] = v21;
    v22 = v15[11];
    v14[10] = v15[10];
    v14[11] = v22;
    v23 = v15[5];
    v14[4] = v15[4];
    v14[5] = v23;
    v24 = v15[7];
    v14[6] = v15[6];
    v14[7] = v24;
    v25 = v15[17];
    v14[16] = v15[16];
    v14[17] = v25;
    v26 = v15[23];
    v14[22] = v15[22];
    v14[23] = v26;
    v14[24] = v15[24];
    *(v14 + 50) = *(v15 + 50);
    v27 = v15[19];
    v14[18] = v15[18];
    v14[19] = v27;
    v28 = v15[21];
    v14[20] = v15[20];
    v14[21] = v28;
    v29 = *(v15 + 456);
    *(v14 + 440) = *(v15 + 440);
    *(v14 + 456) = v29;
    *(v14 + 472) = *(v15 + 472);
    v30 = *(v15 + 424);
    *(v14 + 408) = *(v15 + 408);
    *(v14 + 424) = v30;
    v14[30] = v15[30];
    *(v14 + 489) = *(v15 + 489);
    v14[32] = v15[32];
    *(v14 + 528) = *(v15 + 528);
    memcpy(v14 + 536, v15 + 536, 0x130uLL);
    v31 = *(v15 + 856);
    *(v14 + 840) = *(v15 + 840);
    *(v14 + 856) = v31;
    *(v14 + 872) = *(v15 + 872);
    *(v14 + 111) = *(v15 + 111);
    *(v14 + 112) = *(v15 + 112);
    *(v14 + 904) = *(v15 + 904);
    *(v14 + 920) = *(v15 + 920);
    *(v14 + 117) = *(v15 + 117);
    *(v14 + 118) = *(v15 + 118);
    *(v14 + 952) = *(v15 + 952);
    *(v14 + 953) = *(v15 + 953);
    v32 = v16[28];
    __dst = v14 + v32;
    v33 = v15 + v32;
    v34 = type metadata accessor for CommandOperation(0);
    v35 = *(v34 - 8);
    if ((*(v35 + 48))(v33, 1, v34))
    {
      _s7SwiftUI16CommandOperationVSgMaTm_2(0, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation, MEMORY[0x1E69E6720]);
      memcpy(__dst, v33, *(*(v36 - 8) + 64));
    }

    else
    {
      *__dst = *v33;
      v37 = *(v34 + 20);
      v46 = v17;
      v38 = &__dst[v37];
      v45 = &v33[v37];
      v39 = *&v33[v37 + 16];
      *v38 = *&v33[v37];
      v38[1] = v39;
      v44 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
      v40 = type metadata accessor for UUID();
      v41 = v38 + v44;
      v17 = v46;
      (*(*(v40 - 8) + 32))(v41, &v45[v44], v40);
      *&__dst[*(v34 + 24)] = *&v33[*(v34 + 24)];
      (*(v35 + 56))();
    }

    *(v14 + v16[29]) = *(v15 + v16[29]);
    *(v14 + v16[30]) = *(v15 + v16[30]);
    *(v14 + v16[31]) = *(v15 + v16[31]);
    *(v14 + v16[32]) = *(v15 + v16[32]);
    *(v14 + v16[33]) = *(v15 + v16[33]);
    *(v14 + v16[34]) = *(v15 + v16[34]);
    (*(v17 + 56))(v14, 0, 1, v16);
  }

  swift_weakTakeInit();
  v42 = a3[20];
  *(a1 + a3[19]) = *(a2 + a3[19]);
  *(a1 + v42) = *(a2 + v42);
  *(a1 + a3[21]) = *(a2 + a3[21]);
  return a1;
}

uint64_t outlined destroy of ToolbarViewListVisitor(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t getEnumTagSinglePayload for NavigationSplitViewState(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 66))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

BOOL specialized closure #1 in NavigationStackCoordinator.updateNavigationController(_:environment:transaction:seeds:transparentBackground:strategy:)(uint64_t a1, void *a2)
{
  NavigationState.StackContent.structuralSeed.getter(&v15);
  v3 = v15;
  v4 = MEMORY[0x1E69E7D40];
  v5 = *((*MEMORY[0x1E69E7D40] & *a2) + 0xB0);
  swift_beginAccess();
  outlined init with copy of NavigationState.StackContent?(a2 + v5, __src, &lazy cache variable for type metadata for NavigationState.StackContent?, &type metadata for NavigationState.StackContent);
  if (LOBYTE(__src[112]) == 255)
  {
    outlined destroy of PPTTestCase?(__src, &lazy cache variable for type metadata for NavigationState.StackContent?, &type metadata for NavigationState.StackContent);
    v6 = a2 + *((*v4 & *a2) + 0x60);
    v7 = *v6;
    v8 = v6[8];
    v9 = *(v6 + 2);
    if (v8 == 4)
    {
      LOBYTE(v8) = 0;
    }

    *__dst = v7;
    __dst[8] = v8;
    *&__dst[16] = v9;
    __dst[448] = 0;
  }

  else
  {
    memcpy(__dst, __src, sizeof(__dst));
  }

  NavigationState.StackContent.structuralSeed.getter(__src);
  outlined destroy of NavigationState.StackContent(__dst);
  return v3 != -1 && __src[0] != -1 && v3 == __src[0];
}

uint64_t outlined destroy of NavigationAuthority?(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  type metadata accessor for NavigationAuthority?(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t _s7SwiftUI19NavigationAuthorityVSgWOhTm_0(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  type metadata accessor for NavigationLinkPresentedValue?(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t _s7SwiftUI19NavigationAuthorityVSgWOhTm_1(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  _s7SwiftUI19NavigationAuthorityVSgMaTm_0(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t _s7SwiftUI19NavigationAuthorityVSgWOhTm_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = (a5)(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t initializeWithCopy for PositionedNavigationDestination.Storage.SeededRequest(uint64_t a1, uint64_t *a2)
{
  switch(*(a2 + 96))
  {
    case 0:
      v4 = a2[1];
      *a1 = *a2;
      *(a1 + 8) = v4;
      *(a1 + 96) = 0;
      goto LABEL_57;
    case 1:
      v22 = a2[1];
      *a1 = *a2;
      *(a1 + 8) = v22;
      v23 = a2[3];
      *(a1 + 16) = a2[2];
      *(a1 + 24) = v23;
      *(a1 + 32) = a2[4];
      *(a1 + 96) = 1;

      goto LABEL_57;
    case 2:
      v14 = a2[1];
      *a1 = *a2;
      *(a1 + 8) = v14;
      v15 = *(a2 + 5);
      *(a1 + 40) = v15;
      v16 = v15;
      v17 = **(v15 - 8);

      v17(a1 + 16, a2 + 2, v16);
      *(a1 + 56) = *(a2 + 7);
      *(a1 + 96) = 2;
      break;
    case 3:
      *a1 = *a2;
      *(a1 + 8) = *(a2 + 1);
      *(a1 + 24) = a2[3];
      *(a1 + 96) = 3;

      break;
    case 4:
      v30 = a2[1];
      *a1 = *a2;
      *(a1 + 8) = v30;
      *(a1 + 16) = *(a2 + 8);
      v13 = 4;
      goto LABEL_21;
    case 5:
      v18 = a2[1];
      *a1 = *a2;
      *(a1 + 8) = v18;
      *(a1 + 16) = *(a2 + 8);
      v13 = 5;
      goto LABEL_21;
    case 6:
      v24 = a2[1];
      *a1 = *a2;
      *(a1 + 8) = v24;
      *(a1 + 16) = a2[2];
      *(a1 + 96) = 6;

      goto LABEL_57;
    case 0xA:
      v25 = *(a2 + 3);
      *(a1 + 24) = v25;
      (**(v25 - 8))(a1, a2);
      v26 = a2[6];
      *(a1 + 40) = a2[5];
      *(a1 + 48) = v26;
      *(a1 + 56) = *(a2 + 28);
      v13 = 10;
      goto LABEL_21;
    case 0xB:
      v34 = *(a2 + 3);
      *(a1 + 24) = v34;
      (**(v34 - 8))(a1, a2);
      *(a1 + 96) = 11;
      break;
    case 0xC:
      *a1 = *a2;
      v31 = (a1 + 8);
      v32 = a2[4];

      if (v32)
      {
        v33 = a2[5];
        *(a1 + 32) = v32;
        *(a1 + 40) = v33;
        (**(v32 - 8))(a1 + 8, a2 + 1, v32);
      }

      else
      {
        v53 = *(a2 + 3);
        *v31 = *(a2 + 1);
        *(a1 + 24) = v53;
        *(a1 + 40) = a2[5];
      }

      v54 = a2[7];
      if (v54 == 1)
      {
        *(a1 + 48) = *(a2 + 3);
      }

      else
      {
        *(a1 + 48) = a2[6];
        *(a1 + 56) = v54;
      }

      v55 = a2[9];
      v56 = a2[10];
      *(a1 + 64) = a2[8];
      *(a1 + 72) = v55;
      *(a1 + 80) = v56;
      v42 = 12;
      goto LABEL_56;
    case 0xD:
      *a1 = *a2;
      v8 = (a1 + 8);
      v9 = a2[4];

      if (v9)
      {
        v10 = a2[5];
        *(a1 + 32) = v9;
        *(a1 + 40) = v10;
        (**(v9 - 8))(a1 + 8, a2 + 1, v9);
      }

      else
      {
        v43 = *(a2 + 3);
        *v8 = *(a2 + 1);
        *(a1 + 24) = v43;
        *(a1 + 40) = a2[5];
      }

      v44 = a2[7];
      if (v44 == 1)
      {
        *(a1 + 48) = *(a2 + 3);
      }

      else
      {
        *(a1 + 48) = a2[6];
        *(a1 + 56) = v44;
      }

      v45 = a2[9];
      v46 = a2[10];
      *(a1 + 64) = a2[8];
      *(a1 + 72) = v45;
      *(a1 + 80) = v46;
      *(a1 + 88) = *(a2 + 88);
      v42 = 13;
      goto LABEL_56;
    case 0xE:
      *a1 = *a2;
      v19 = (a1 + 8);
      v20 = a2[4];

      if (v20)
      {
        v21 = a2[5];
        *(a1 + 32) = v20;
        *(a1 + 40) = v21;
        (**(v20 - 8))(a1 + 8, a2 + 1, v20);
      }

      else
      {
        v47 = *(a2 + 3);
        *v19 = *(a2 + 1);
        *(a1 + 24) = v47;
        *(a1 + 40) = a2[5];
      }

      v48 = a2[7];
      if (v48 == 1)
      {
        *(a1 + 48) = *(a2 + 3);
      }

      else
      {
        *(a1 + 48) = a2[6];
        *(a1 + 56) = v48;
      }

      *(a1 + 64) = a2[8];
      *(a1 + 72) = *(a2 + 72);
      *(a1 + 96) = 14;
      break;
    case 0x11:
      v11 = *(a2 + 3);
      *(a1 + 24) = v11;
      (**(v11 - 8))(a1, a2);
      *(a1 + 40) = *(a2 + 40);
      v12 = a2[7];
      *(a1 + 48) = a2[6];
      *(a1 + 56) = v12;
      *(a1 + 64) = *(a2 + 32);
      v13 = 17;
LABEL_21:
      *(a1 + 96) = v13;

      goto LABEL_57;
    case 0x12:
      v5 = a2[1];
      *a1 = *a2;
      *(a1 + 8) = v5;
      v6 = a2[5];

      if (v6)
      {
        v7 = a2[6];
        *(a1 + 40) = v6;
        *(a1 + 48) = v7;
        (**(v6 - 8))(a1 + 16, a2 + 2, v6);
      }

      else
      {
        v38 = *(a2 + 2);
        *(a1 + 16) = *(a2 + 1);
        *(a1 + 32) = v38;
        *(a1 + 48) = a2[6];
      }

      v39 = a2[8];
      if (v39 == 1)
      {
        *(a1 + 56) = *(a2 + 7);
      }

      else
      {
        *(a1 + 56) = a2[7];
        *(a1 + 64) = v39;
      }

      v40 = a2[10];
      v41 = a2[11];
      *(a1 + 72) = a2[9];
      *(a1 + 80) = v40;
      *(a1 + 88) = v41;
      v42 = 18;
LABEL_56:
      *(a1 + 96) = v42;
LABEL_57:

      break;
    case 0x13:
      v27 = a2[3];
      if (v27)
      {
        v28 = a2[4];
        *(a1 + 24) = v27;
        *(a1 + 32) = v28;
        (**(v27 - 8))(a1, a2);
      }

      else
      {
        v49 = *(a2 + 1);
        *a1 = *a2;
        *(a1 + 16) = v49;
        *(a1 + 32) = a2[4];
      }

      v50 = a2[6];
      if (v50 == 1)
      {
        *(a1 + 40) = *(a2 + 5);
      }

      else
      {
        *(a1 + 40) = a2[5];
        *(a1 + 48) = v50;
      }

      *(a1 + 56) = a2[7];
      *(a1 + 96) = 19;
      break;
    case 0x15:
      if (*a2)
      {
        v29 = a2[1];
        *a1 = *a2;
        *(a1 + 8) = v29;
      }

      else
      {
        *a1 = *a2;
      }

      v51 = a2[2];
      if (v51)
      {
        v52 = a2[3];
        *(a1 + 16) = v51;
        *(a1 + 24) = v52;
      }

      else
      {
        *(a1 + 16) = *(a2 + 1);
      }

      *(a1 + 96) = 21;
      break;
    default:
      v35 = *(a2 + 5);
      *(a1 + 64) = *(a2 + 4);
      *(a1 + 80) = v35;
      *(a1 + 96) = *(a2 + 96);
      v36 = *(a2 + 1);
      *a1 = *a2;
      *(a1 + 16) = v36;
      v37 = *(a2 + 3);
      *(a1 + 32) = *(a2 + 2);
      *(a1 + 48) = v37;
      break;
  }

  *(a1 + 104) = *(a2 + 13);
  *(a1 + 120) = *(a2 + 15);
  *(a1 + 136) = *(a2 + 17);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 160) = a2[20];
  *(a1 + 168) = *(a2 + 42);

  return a1;
}

uint64_t (*ToolbarModifier.TransformProperties.value.getter(uint64_t a1))(uint64_t a1)
{
  type metadata accessor for ToolbarStorage.NavigationProperties?(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v12 - v6;
  Value = AGGraphGetValue();
  _s7SwiftUI14ToolbarStorageV10SearchItemVSgWOcTm_1(Value, v7, type metadata accessor for ToolbarStorage.NavigationProperties?);
  outlined init with take of ToolbarStorage.SearchItem?(v7, v4, type metadata accessor for ToolbarStorage.NavigationProperties?);
  v9 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v10 = swift_allocObject();
  outlined init with take of ToolbarStorage.SearchItem?(v4, v10 + v9, type metadata accessor for ToolbarStorage.NavigationProperties?);
  return partial apply for closure #1 in ToolbarModifier.TransformProperties.value.getter;
}

uint64_t sub_18BF21B44()
{
  type metadata accessor for ToolbarStorage.NavigationProperties?(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  v3 = type metadata accessor for ToolbarStorage.NavigationProperties(0);
  if (!(*(*(v3 - 8) + 48))(v2, 1, v3))
  {
    v4 = *(v2 + 8);
    if (v4 != 255)
    {
      outlined consume of ResolvableCLKTextProvider.FontStorage(*v2, v4 & 1);
    }

    v5 = *(v2 + 24);
    if (v5 <= 0xFD)
    {
      outlined consume of PlatformItemCollection.Storage(*(v2 + 16), v5 & 1);
    }

    MEMORY[0x18D011290](v2 + 32);

    v6 = v2 + *(v3 + 32);
    v7 = type metadata accessor for PlatformItemList.Item(0);
    if (!(*(*(v7 - 8) + 48))(v6, 1, v7))
    {

      v8 = *(v6 + 192);
      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) != 0x1FFFFFFFCLL)
      {
        v10 = *(v6 + 72);
        if (v10 != 255)
        {
          outlined consume of GraphicsImage.Contents(*(v6 + 64), v10);
          v8 = *(v6 + 192);
          v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
        }

        if (v9 != 0x1FFFFFFFELL)
        {
          outlined consume of AccessibilityImageLabel(*(v6 + 176), *(v6 + 184), v8, *(v6 + 200));
        }

        swift_unknownObjectRelease();
      }

      if (*(v6 + 264))
      {

        v11 = *(v6 + 272);
        if (v11 >= 2)
        {
        }
      }

      v12 = *(v6 + 336);
      if (v12 >> 2 != 0xFFFFFFFF)
      {
        outlined consume of PlatformItemList.Item.SystemItem(*(v6 + 304), *(v6 + 312), *(v6 + 320), *(v6 + 328), v12, *(v6 + 344), *(v6 + 352), *(v6 + 360), *(v6 + 368), *(v6 + 376), *(v6 + 384), *(v6 + 392), *(v6 + 400));
      }

      v13 = *(v6 + 416);
      if (v13)
      {
        if (v13 == 1)
        {
          goto LABEL_26;
        }
      }

      if (*(v6 + 432))
      {
      }

      if (*(v6 + 448))
      {
      }

LABEL_26:

      if (*(v6 + 512))
      {
      }

      if (!*(v6 + 816))
      {
LABEL_36:
        v15 = *(v6 + 864);
        if (v15)
        {
          if (v15 == 1)
          {
LABEL_41:

            v16 = v6 + *(v7 + 112);
            v17 = type metadata accessor for CommandOperation(0);
            if (!(*(*(v17 - 8) + 48))(v16, 1, v17))
            {
              v18 = v16 + *(v17 + 20);
              outlined consume of Text.Storage(*v18, *(v18 + 8), *(v18 + 16));

              v19 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
              v20 = type metadata accessor for UUID();
              (*(*(v20 - 8) + 8))(v18 + v19, v20);
              if (*(v16 + *(v17 + 24)))
              {
              }
            }

            goto LABEL_45;
          }

          __swift_destroy_boxed_opaque_existential_1((v6 + 840));
        }

        if (*(v6 + 880))
        {
        }

        goto LABEL_41;
      }

      v14 = *(v6 + 624);
      if (v14)
      {
        if (v14 == 1)
        {
LABEL_33:
          if (*(v6 + 776) != 1)
          {
          }

          goto LABEL_36;
        }

        __swift_destroy_boxed_opaque_existential_1((v6 + 600));
      }

      goto LABEL_33;
    }
  }

LABEL_45:

  return swift_deallocObject();
}

void NavigationColumnState.setPath(_:environment:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v11 = *a4;
  v32 = a4[1];
  outlined init with copy of NavigationColumnState.ColumnContent(v5 + 120, &v39);
  if (v46)
  {
    outlined destroy of NavigationRequest.Action?(&v39, &lazy cache variable for type metadata for NavigationColumnState.ReplacedRoot?, &type metadata for NavigationColumnState.ReplacedRoot, MEMORY[0x1E69E6720]);
    v12 = *(v5 + 96);
    v13 = *(v6 + 104);
    v30 = v11;
    v14 = *(v6 + 112);

    outlined consume of Binding<AnyNavigationPath>?(v12, v13, v14);
    *(v6 + 96) = a1;
    *(v6 + 104) = a2;
    *(v6 + 112) = a3;
    ++*(v6 + 92);
    *&v39 = a1;
    *(&v39 + 1) = a2;
    *&v40 = a3;
    type metadata accessor for NavigationRequest.Action?(0, &lazy cache variable for type metadata for Binding<AnyNavigationPath>, &type metadata for AnyNavigationPath, MEMORY[0x1E6981948]);
    v16 = v15;
    MEMORY[0x18D00ACC0](&v34);
    v17 = v34;
    v18 = MEMORY[0x1E69E7CC0];
    v19 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI33NavigationLinkSelectionIdentifierV_SiTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    NavigationColumnState.ColumnContent.stack(path:views:)(v17, v18, v19);
    v11 = v30;

    *(v6 + 352) = 0;
    *&v39 = a1;
    *(&v39 + 1) = a2;
    *&v40 = a3;
    v20 = MEMORY[0x18D00ACC0](&v34, v16);
    v21 = (*(*v34 + 80))(v20);

    if (v21)
    {
      v22 = 1;
    }

    else
    {
      v22 = 2;
    }

    *a5 = v22;
    *(a5 + 8) = 0;
    *(a5 + 16) = 2;
    *(a5 + 24) = 0u;
    *(a5 + 40) = 0u;
    *(a5 + 56) = 0u;
    *(a5 + 72) = 0u;
    *(a5 + 88) = 0u;
    *(a5 + 104) = 0u;
    *(a5 + 120) = 0u;
    *(a5 + 136) = 0u;
    *(a5 + 152) = 0;
    *(a5 + 160) = 0x1FFFFFFFCLL;
    *(a5 + 184) = 0u;
    *(a5 + 200) = 0u;
    *(a5 + 216) = 0u;
    *(a5 + 232) = 0u;
    *(a5 + 248) = 0u;
    *(a5 + 168) = 0u;
    *(a5 + 264) = 0u;
    *(a5 + 280) = 0u;
    *(a5 + 296) = 0u;
    *(a5 + 312) = 0u;
    *(a5 + 321) = 0u;
    *(a5 + 340) = (v21 & 1) == 0;
  }

  else
  {

    outlined destroy of NavigationRequest.Action?(&v39, &lazy cache variable for type metadata for NavigationColumnState.ReplacedRoot?, &type metadata for NavigationColumnState.ReplacedRoot, MEMORY[0x1E69E6720]);
    outlined init with copy of NavigationColumnState.ColumnContent(v5 + 120, &v39);
    if (v46)
    {
      outlined destroy of NavigationColumnState.ColumnContent(&v39);
      v23 = 0;
    }

    else
    {
      v23 = v44;

      outlined destroy of NavigationRequest.Action?(&v39, &lazy cache variable for type metadata for NavigationColumnState.ReplacedRoot?, &type metadata for NavigationColumnState.ReplacedRoot, MEMORY[0x1E69E6720]);
    }

    v24 = *(v5 + 96);
    v25 = *(v6 + 104);
    v26 = *(v6 + 112);

    outlined consume of Binding<AnyNavigationPath>?(v24, v25, v26);
    *(v6 + 96) = a1;
    *(v6 + 104) = a2;
    *(v6 + 112) = a3;
    ++*(v6 + 92);
    outlined init with copy of NavigationColumnState.ColumnContent(v6 + 120, &v39);
    if (v46)
    {
      outlined destroy of NavigationColumnState.ColumnContent(&v39);
    }

    else
    {
      outlined destroy of NavigationColumnState.ColumnContent(v6 + 120);
      v36 = v41;
      v37 = v42;
      v38[0] = v43[0];
      *(v38 + 9) = *(v43 + 9);
      v34 = v39;
      v35 = v40;
      v31 = v45;

      *(v6 + 200) = 0;
      *(v6 + 184) = 0u;
      *(v6 + 168) = 0u;
      *(v6 + 152) = 0u;
      *(v6 + 136) = 0u;
      *(v6 + 120) = 0u;
      *(v6 + 208) = -1;
      *(v6 + 240) = 1;
      outlined destroy of NavigationColumnState.ColumnContent(v6 + 120);
      *&v39 = a1;
      *(&v39 + 1) = a2;
      *&v40 = a3;
      type metadata accessor for NavigationRequest.Action?(0, &lazy cache variable for type metadata for Binding<AnyNavigationPath>, &type metadata for AnyNavigationPath, MEMORY[0x1E6981948]);
      MEMORY[0x18D00ACC0](&v33);
      v27 = v37;
      *(v6 + 152) = v36;
      *(v6 + 168) = v27;
      *(v6 + 184) = v38[0];
      *(v6 + 193) = *(v38 + 9);
      v28 = v35;
      *(v6 + 120) = v34;
      v29 = v33;
      *(v6 + 136) = v28;
      *(v6 + 216) = v29;
      *(v6 + 224) = v31;
      *(v6 + 240) = 0;
    }

    NavigationColumnState.reestablishStateAfterPathReplacement(oldShadowPath:)(v23, a5);

    if (*(a5 + 16) != 2)
    {
      goto LABEL_15;
    }
  }

  if (*(a5 + 8) || *a5 != 1)
  {
LABEL_15:

    *(v6 + 288) = v11;
    *(v6 + 296) = v32;
  }
}

BOOL protocol witness for static EnvironmentKey._valuesEqual(_:_:) in conformance AlwaysOnFrameSpecifier(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  result = (*a1 | *a2) == 0;
  if (v2)
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for BLSAlwaysOnFrameSpecifier, 0x1E698E500);
    v6 = v2;
    v7 = v3;
    v8 = static NSObject.== infix(_:_:)();

    return v8 & 1;
  }

  return result;
}

BOOL _s7SwiftUI14EnvironmentKeyPAASQ5ValueRpzrlE12_valuesEqualySbAE_AEtFZAA020AlwaysOnInvalidationD033_ED1CCB5A10919A16BDE683BBA73F40A5LLV_Tt1g5(uint64_t a1, uint64_t a2)
{
  Strong = swift_weakLoadStrong();
  v3 = swift_weakLoadStrong();
  if (Strong)
  {
    if (v3)
    {
      v4 = v3;

      return Strong == v4;
    }
  }

  else if (!v3)
  {
    return 1;
  }

  return 0;
}

uint64_t assignWithCopy for ScrollView(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  v6 = *(v5 + 40) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  *v7 = *v8;
  *(v7 + 1) = *(v8 + 1);
  *(v7 + 8) = *(v8 + 8);
  *(v7 + 16) = *(v8 + 16);
  *(v7 + 24) = *(v8 + 24);
  *(v7 + 32) = *(v8 + 32);
  *(v7 + 40) = *(v8 + 40);
  v9 = (v7 + 48);
  v10 = *(v8 + 48);
  if (*(v7 + 48))
  {
    if (v10)
    {
      v11 = *(v8 + 56);
      *(v7 + 48) = v10;
      *(v7 + 56) = v11;

      goto LABEL_8;
    }

    outlined destroy of ScrollToTopGestureAction(v9);
  }

  else if (v10)
  {
    v12 = *(v8 + 56);
    *(v7 + 48) = v10;
    *(v7 + 56) = v12;

    goto LABEL_8;
  }

  *v9 = *(v8 + 48);
LABEL_8:
  swift_unknownObjectWeakCopyAssign();
  v14 = (v7 + 80);
  v13 = *(v7 + 80);
  *(v7 + 72) = *(v8 + 72);
  v16 = (v8 + 80);
  v15 = *(v8 + 80);
  if (v13)
  {
    if (v15)
    {
      v17 = *(v8 + 88);
      *(v7 + 80) = v15;
      *(v7 + 88) = v17;

      *(v7 + 96) = *(v8 + 96);
    }

    else
    {
      outlined destroy of RefreshAction(v7 + 80);
      v19 = *(v8 + 96);
      *v14 = *v16;
      *(v7 + 96) = v19;
    }
  }

  else if (v15)
  {
    v18 = *(v8 + 88);
    *(v7 + 80) = v15;
    *(v7 + 88) = v18;
    *(v7 + 96) = *(v8 + 96);
  }

  else
  {
    v20 = *v16;
    *(v7 + 96) = *(v8 + 96);
    *v14 = v20;
  }

  *(v7 + 104) = *(v8 + 104);
  *(v7 + 112) = *(v8 + 112);

  return a1;
}

uint64_t assignWithCopy for SystemScrollViewContainer(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  v6 = (a1 + 48);
  v8 = (a2 + 48);
  v7 = *(a2 + 48);
  if (*(a1 + 48))
  {
    if (v7)
    {
      v9 = *(a2 + 56);
      *(a1 + 48) = v7;
      *(a1 + 56) = v9;

      goto LABEL_8;
    }

    outlined destroy of ScrollToTopGestureAction(a1 + 48);
  }

  else if (v7)
  {
    v10 = *(a2 + 56);
    *(a1 + 48) = v7;
    *(a1 + 56) = v10;

    goto LABEL_8;
  }

  *v6 = *v8;
LABEL_8:
  swift_unknownObjectWeakCopyAssign();
  v12 = (a1 + 80);
  v11 = *(a1 + 80);
  *(a1 + 72) = *(a2 + 72);
  v14 = (a2 + 80);
  v13 = *(a2 + 80);
  if (v11)
  {
    if (v13)
    {
      v15 = *(a2 + 88);
      *(a1 + 80) = v13;
      *(a1 + 88) = v15;

      *(a1 + 96) = *(a2 + 96);
    }

    else
    {
      outlined destroy of RefreshAction(a1 + 80);
      v17 = *(a2 + 96);
      *v12 = *v14;
      *(a1 + 96) = v17;
    }
  }

  else if (v13)
  {
    v16 = *(a2 + 88);
    *(a1 + 80) = v13;
    *(a1 + 88) = v16;
    *(a1 + 96) = *(a2 + 96);
  }

  else
  {
    v18 = *v14;
    *(a1 + 96) = *(a2 + 96);
    *v12 = v18;
  }

  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = *(a2 + 112);

  v19 = *(*(a3 + 16) - 8);
  (*(v19 + 24))((*(v19 + 80) + 120 + a1) & ~*(v19 + 80), (*(v19 + 80) + 120 + a2) & ~*(v19 + 80));
  return a1;
}

uint64_t objectdestroy_54Tm()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_54Tm_0()
{

  outlined consume of Text.Suffix.Storage(v0[3], v0[4], v0[5]);

  return swift_deallocObject();
}

uint64_t objectdestroy_54Tm_1()
{

  v1 = *(v0 + 472);
  if (v1 == 2)
  {

    v3 = *(v0 + 48);
    if (v3)
    {
      if (v3 == 1)
      {
        goto LABEL_35;
      }
    }

    if (*(v0 + 64))
    {
    }

    if (*(v0 + 88))
    {

LABEL_34:
    }
  }

  else if (v1 == 1)
  {
    if (*(v0 + 72))
    {
    }

    if (*(v0 + 128))
    {
    }

    v2 = *(v0 + 232);
    if (*(v0 + 264))
    {
      if (v2 != 255)
      {
        if (v2)
        {

          if (*(v0 + 176))
          {
            __swift_destroy_boxed_opaque_existential_1((v0 + 152));
          }

          if (*(v0 + 200) != 1)
          {
          }
        }

        else
        {
          __swift_destroy_boxed_opaque_existential_1((v0 + 144));
        }
      }
    }

    else
    {
      if (v2 != 255)
      {
        if (v2)
        {

          if (*(v0 + 176))
          {
            __swift_destroy_boxed_opaque_existential_1((v0 + 152));
          }

          if (*(v0 + 200) != 1)
          {
          }
        }

        else
        {
          __swift_destroy_boxed_opaque_existential_1((v0 + 144));
        }
      }
    }

    if (*(v0 + 384))
    {

      goto LABEL_34;
    }
  }

LABEL_35:
  v4 = *(v0 + 928);
  if (v4 == 2)
  {

    v6 = *(v0 + 504);
    if (v6)
    {
      if (v6 == 1)
      {
        goto LABEL_69;
      }
    }

    if (*(v0 + 520))
    {
    }

    if (*(v0 + 544))
    {

LABEL_68:
    }
  }

  else if (v4 == 1)
  {
    if (*(v0 + 528))
    {
    }

    if (*(v0 + 584))
    {
    }

    v5 = *(v0 + 688);
    if (*(v0 + 720))
    {
      if (v5 != 255)
      {
        if (v5)
        {

          if (*(v0 + 632))
          {
            __swift_destroy_boxed_opaque_existential_1((v0 + 608));
          }

          if (*(v0 + 656) != 1)
          {
          }
        }

        else
        {
          __swift_destroy_boxed_opaque_existential_1((v0 + 600));
        }
      }
    }

    else
    {
      if (v5 != 255)
      {
        if (v5)
        {

          if (*(v0 + 632))
          {
            __swift_destroy_boxed_opaque_existential_1((v0 + 608));
          }

          if (*(v0 + 656) != 1)
          {
          }
        }

        else
        {
          __swift_destroy_boxed_opaque_existential_1((v0 + 600));
        }
      }
    }

    if (*(v0 + 840))
    {

      goto LABEL_68;
    }
  }

LABEL_69:

  return swift_deallocObject();
}

uint64_t ScrollEnvironmentStorage.baseProperties.setter(unsigned __int8 *a1)
{
  swift_beginAccess();
  outlined init with copy of ScrollEnvironmentProperties(v1 + 16, v6);
  v3 = specialized static ScrollEnvironmentProperties.== infix(_:_:)(v6, a1);
  outlined destroy of ScrollEnvironmentProperties(v6);
  if (v3)
  {
    swift_beginAccess();
    outlined assign with copy of ScrollEnvironmentProperties(a1, v1 + 16);
    swift_endAccess();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v6[0] = v1;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type ScrollEnvironmentStorage and conformance ScrollEnvironmentStorage, type metadata accessor for ScrollEnvironmentStorage, protocol conformance descriptor for ScrollEnvironmentStorage);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return outlined destroy of ScrollEnvironmentProperties(a1);
}

uint64_t ScrollEnvironmentStorage.__deallocating_deinit()
{
  outlined destroy of ScrollEnvironmentProperties(v0 + 16);
  outlined destroy of (ResolvedScrollBehavior?, ResolvedScrollBehavior?)(v0 + 280, type metadata accessor for ScrollEnvironmentTransform?);
  v1 = OBJC_IVAR____TtC7SwiftUI24ScrollEnvironmentStorage___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t specialized NavigationColumnState.ColumnContent.mutatePath<A>(transform:)(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5)
{
  outlined init with copy of NavigationColumnState.ColumnContent(a1, v21);
  if (v26)
  {
    outlined destroy of NavigationColumnState.ColumnContent(v21);
    return 0;
  }

  else
  {
    v20 = a3;
    v32 = a4;
    outlined destroy of NavigationColumnState.ColumnContent(a1);
    v12 = v23;
    v13 = v24;
    v14 = v25;
    v29 = v21[2];
    v30 = v21[3];
    v31[0] = v22[0];
    *(v31 + 9) = *(v22 + 9);
    v27 = v21[0];
    v28 = v21[1];
    *(a1 + 80) = 0;
    *(a1 + 48) = 0u;
    *(a1 + 64) = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *a1 = 0u;
    *(a1 + 88) = -1;
    *(a1 + 120) = 1;
    outlined destroy of NavigationColumnState.ColumnContent(a1);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v15 = v13;
      v16 = v14;
      v17 = (*(*v12 + 104))();

      v12 = v17;
      v14 = v16;
      v13 = v15;
    }

    result = (*(*v12 + 144))(a2, v20, v32, a5 + 248);
    if (v5)
    {
      outlined init with copy of NavigationColumnState.ReplacedRoot?(&v27, a1);
      *(a1 + 96) = v12;
      *(a1 + 104) = v13;
      *(a1 + 112) = v14;
      *(a1 + 120) = 0;
      swift_willThrow();
      return outlined destroy of NavigationColumnState.ReplacedRoot?(&v27, &lazy cache variable for type metadata for NavigationColumnState.ReplacedRoot?, &type metadata for NavigationColumnState.ReplacedRoot, MEMORY[0x1E69E6720]);
    }

    else
    {
      v18 = v30;
      *(a1 + 32) = v29;
      *(a1 + 48) = v18;
      *(a1 + 64) = v31[0];
      *(a1 + 73) = *(v31 + 9);
      v19 = v28;
      *a1 = v27;
      *(a1 + 16) = v19;
      *(a1 + 96) = v12;
      *(a1 + 104) = v13;
      *(a1 + 112) = v14;
      *(a1 + 120) = 0;
    }
  }

  return result;
}

void ResolvedNavigationDestinations.updatePossibilities(for:over:)(unint64_t result, uint64_t a2, char a3, __int128 *a4, __n128 a5)
{
  v7 = v6;
  if (!a3)
  {
    ResolvedNavigationDestinations.ejectDestinations(at:)(a2);
    if (v10)
    {
      v11 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSO_SaySOGTt0g5Tf4g_n(v10);
    }

    else
    {
      v11 = MEMORY[0x1E69E7CD0];
    }

    v27 = ResolvedNavigationDestinations.setPossibilities(_:depth:)(result, a2);
    _sSh2eeoiySbShyxG_ABtFZSO_Tt1g5(v11, v27);

    if (!__OFADD__(a2, 1))
    {
      return;
    }

    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (a3 == 1)
  {
    ResolvedNavigationDestinations.popDestinationStack(_:)(result);
    return;
  }

  if (result | a2)
  {
    if (!(result ^ 1 | a2))
    {
      return;
    }

    v13 = *(v5 + 24);
    v14 = v13 - 1;
    if (!__OFSUB__(v13, 1))
    {
      v15 = *(v5 + 16);

      ResolvedNavigationDestinations.popDestinationStack(_:)(v14);
      v16 = *(a4 + 2);
      v17 = *(a4 + 24);
      v18 = *(a4 + 4);
      v19 = *(a4 + 5);
      v60 = *a4;
      *&v61 = v16;
      BYTE8(v61) = v17;
      *&v62 = v18;
      *(&v62 + 1) = v19;
      v20 = NavigationPath.count.getter();
      if (!__OFADD__(v20, 1))
      {
        *(v5 + 24) = v20 + 1;
        v21 = *(a4 + 1);
        v22 = *(a4 + 2);
        v23 = *(a4 + 24);
        v25 = *(a4 + 4);
        v24 = *(a4 + 5);
        if (*(v5 + 72) <= 1u)
        {
          *&v60 = *a4;
          *(&v60 + 1) = v21;
          *&v61 = v22;
          BYTE8(v61) = v23;
          *&v62 = v25;
          *(&v62 + 1) = v24;
          v26 = NavigationPath.count.getter();
          goto LABEL_24;
        }

        *&v60 = *a4;
        *(&v60 + 1) = v21;
        *&v61 = v22;
        BYTE8(v61) = v23;
        *&v62 = v25;
        *(&v62 + 1) = v24;
        v43 = NavigationPath.count.getter();
        v26 = v43 - 1;
        if (!__OFSUB__(v43, 1))
        {
LABEL_24:
          NavigationPath.updatePossibilities(from:to:into:)(0, v26 & ~(v26 >> 63), v5);
          if (v7)
          {
          }

          else
          {
            v44 = *(v5 + 48);
            v45 = *(v5 + 16);
            v56 = *(v5 + 32);
            v57 = v44;
            v46 = *(v5 + 48);
            v58 = *(v5 + 64);
            v47 = *(v5 + 16);
            v55[0] = *v5;
            v55[1] = v47;
            v51 = v56;
            v52 = v46;
            v53 = *(v5 + 64);
            v59 = *(v5 + 80);
            v54 = *(v5 + 80);
            v49 = v55[0];
            v50 = v45;
            outlined init with copy of ResolvedNavigationDestinations(v55, &v60);
            ResolvedNavigationDestinations.domainDiffers(from:)(v15, v48);

            v62 = v51;
            v63 = v52;
            v64 = v53;
            v65 = v54;
            v60 = v49;
            v61 = v50;
            outlined destroy of ResolvedNavigationDestinations(&v60);
          }

          return;
        }

        goto LABEL_34;
      }

      goto LABEL_32;
    }

LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v28 = *(v5 + 24);
  v29 = __OFADD__(v28, 1);
  v30 = v28 + 1;
  if (v29)
  {
    goto LABEL_30;
  }

  *(v5 + 24) = v30;
  if (*(v5 + 72) > 1u)
  {
    return;
  }

  v31 = *(a4 + 2);
  v32 = *(a4 + 24);
  v33 = *(a4 + 4);
  v34 = *(a4 + 5);
  v60 = *a4;
  *&v61 = v31;
  BYTE8(v61) = v32;
  *&v62 = v33;
  *(&v62 + 1) = v34;
  v35 = NavigationPath.count.getter();
  v36 = v35 - 1;
  if (__OFSUB__(v35, 1))
  {
    goto LABEL_33;
  }

  v37 = *(a4 + 2);
  v38 = *(a4 + 24);
  v39 = *(a4 + 4);
  v40 = *(a4 + 5);
  v60 = *a4;
  *&v61 = v37;
  BYTE8(v61) = v38;
  *&v62 = v39;
  *(&v62 + 1) = v40;
  v41 = NavigationPath.count.getter();
  NavigationPath.updatePossibilities(from:to:into:)(v36, v41, v5);
  if (v6)
  {
    return;
  }

  v42 = *(v5 + 24);
  if (__OFSUB__(v42, 1))
  {
LABEL_35:
    __break(1u);
    return;
  }

  if (*(*(v5 + 16) + 16))
  {
    specialized __RawDictionaryStorage.find<A>(_:)(v42 - 1);
  }
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSO_SaySOGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x18D00D140](v2, MEMORY[0x1E69E5FE0], MEMORY[0x1E69E5FE8]);
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      specialized Set._Variant.insert(_:)(&v6, v5);
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

int32x2_t NavigationSplitViewState.update(for:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  outlined init with copy of NavigationRequest.Action(a1, &v15);
  if (v19 == 21)
  {
    v4 = v15;
    v5 = v16;
    v6 = v17;
    v7 = v18;
    v8 = v2[4];
    v9 = v2[5];
    outlined copy of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(v17, v18);
    outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v8, v9);
    outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v4, v5);
    outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v6, v7);
    v2[4] = v6;
    v2[5] = v7;
    *(a2 + 24) = 0u;
    *(a2 + 40) = 0u;
    *(a2 + 56) = 0u;
    *(a2 + 72) = 0u;
    *(a2 + 88) = 0u;
    *(a2 + 104) = 0u;
    *(a2 + 120) = 0u;
    *(a2 + 136) = 0u;
    *(a2 + 152) = 0;
    *(a2 + 160) = 0x1FFFFFFFCLL;
    *(a2 + 184) = 0u;
    *(a2 + 200) = 0u;
    *(a2 + 216) = 0u;
    *(a2 + 232) = 0u;
    *(a2 + 248) = 0u;
    *(a2 + 168) = 0u;
    *(a2 + 264) = 0u;
    *(a2 + 280) = 0u;
    *(a2 + 296) = 0u;
    *(a2 + 312) = 0u;
    *(a2 + 321) = 0u;
    *a2 = xmmword_18CD6A6D0;
    *(a2 + 16) = 2;
    *(a2 + 340) = 0;
  }

  else
  {
    if (v19 == 5)
    {
      v12 = v15;
      v13 = v16;
      v11 = BYTE1(v17);
      v14 = v17;
      NavigationSplitViewState.updateRequiredCompactColumn(_:newValue:)(&v12, &v11, a2);
    }

    else
    {
      if (v19 != 4)
      {
        *(a2 + 136) = 0u;
        *(a2 + 120) = 0u;
        *(a2 + 104) = 0u;
        *(a2 + 88) = 0u;
        *(a2 + 72) = 0u;
        *(a2 + 56) = 0u;
        *(a2 + 40) = 0u;
        *(a2 + 24) = 0u;
        *(a2 + 152) = 0;
        *(a2 + 160) = 0x1FFFFFFFELL;
        *(a2 + 184) = 0u;
        *(a2 + 200) = 0u;
        *(a2 + 216) = 0u;
        *(a2 + 232) = 0u;
        *(a2 + 248) = 0u;
        *(a2 + 168) = 0u;
        *(a2 + 264) = 0u;
        *(a2 + 280) = 0u;
        *(a2 + 296) = 0u;
        *(a2 + 312) = 0u;
        *(a2 + 321) = 0u;
        *a2 = xmmword_18CD6A6D0;
        *(a2 + 16) = 2;
        *(a2 + 340) = 0;
        outlined destroy of NavigationRequest.Action(&v15);
        goto LABEL_9;
      }

      v12 = v15;
      v13 = v16;
      v11 = BYTE1(v17);
      v14 = v17;
      NavigationSplitViewState.updatePreferredCompactColumn(_:newValue:)(&v12, &v11, a2);
    }
  }

LABEL_9:
  result = vadd_s32(*v2, *(a2 + 340));
  *v2 = result;
  return result;
}

Swift::Int _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC7SwiftUI9NamespaceV2IDV_Tt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    _ss11_SetStorageCy7SwiftUI16ToolbarPlacementV4RoleOGMaTm_0(0, &lazy cache variable for type metadata for _SetStorage<Namespace.ID>, lazy protocol witness table accessor for type Namespace.ID and conformance Namespace.ID, MEMORY[0x1E6981EA0]);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v10 = *(v6 + 8 * v4);
      Hasher.init(_seed:)();
      MEMORY[0x18D00F6F0](v10);
      result = Hasher._finalize()();
      v12 = ~(-1 << *(v3 + 32));
      v13 = result & v12;
      v14 = (result & v12) >> 6;
      v15 = *(v5 + 8 * v14);
      v16 = 1 << (result & v12);
      v17 = *(v3 + 48);
      if ((v16 & v15) != 0)
      {
        while (*(v17 + 8 * v13) != v10)
        {
          v13 = (v13 + 1) & v12;
          v14 = v13 >> 6;
          v15 = *(v5 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v14) = v16 | v15;
        *(v17 + 8 * v13) = v10;
        v7 = *(v3 + 16);
        v8 = __OFADD__(v7, 1);
        v9 = v7 + 1;
        if (v8)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v9;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

BOOL PresentationState.hasIdentityMatching(_:)(uint64_t a1)
{
  PresentationState.Base.lastPresentation.getter(&v15);
  if (v15)
  {
    outlined init with copy of SheetPreference?(&v17, v21, &lazy cache variable for type metadata for AnyHashable?, MEMORY[0x1E69E69B8]);
    outlined destroy of SheetPreference(&v15);
  }

  else
  {
    _ss11AnyHashableVSgWOhTm_3(&v15, &lazy cache variable for type metadata for SheetPreference?, &type metadata for SheetPreference);
    memset(v21, 0, sizeof(v21));
    v22 = 0;
  }

  outlined init with copy of SheetPreference?(a1, &v15, &lazy cache variable for type metadata for SheetPreference?, &type metadata for SheetPreference);
  if (v15)
  {
    outlined init with copy of SheetPreference?(&v17, v13, &lazy cache variable for type metadata for AnyHashable?, MEMORY[0x1E69E69B8]);
    outlined destroy of SheetPreference(&v15);
  }

  else
  {
    _ss11AnyHashableVSgWOhTm_3(&v15, &lazy cache variable for type metadata for SheetPreference?, &type metadata for SheetPreference);
    memset(v13, 0, sizeof(v13));
    v14 = 0;
  }

  v2 = MEMORY[0x1E69E69B8];
  outlined init with copy of SheetPreference?(v21, &v15, &lazy cache variable for type metadata for AnyHashable?, MEMORY[0x1E69E69B8]);
  outlined init with copy of SheetPreference?(v13, &v18, &lazy cache variable for type metadata for AnyHashable?, v2);
  if (!v16)
  {
    _ss11AnyHashableVSgWOhTm_3(v13, &lazy cache variable for type metadata for AnyHashable?, v2);
    _ss11AnyHashableVSgWOhTm_3(v21, &lazy cache variable for type metadata for AnyHashable?, v2);
    if (!*(&v19 + 1))
    {
      _ss11AnyHashableVSgWOhTm_3(&v15, &lazy cache variable for type metadata for AnyHashable?, MEMORY[0x1E69E69B8]);
      goto LABEL_13;
    }

LABEL_17:
    _s2os6LoggerVSgWOhTm_1(&v15, type metadata accessor for (AnyHashable?, AnyHashable?));
    return 0;
  }

  outlined init with copy of SheetPreference?(&v15, v12, &lazy cache variable for type metadata for AnyHashable?, MEMORY[0x1E69E69B8]);
  if (!*(&v19 + 1))
  {
    v7 = MEMORY[0x1E69E69B8];
    _ss11AnyHashableVSgWOhTm_3(v13, &lazy cache variable for type metadata for AnyHashable?, MEMORY[0x1E69E69B8]);
    _ss11AnyHashableVSgWOhTm_3(v21, &lazy cache variable for type metadata for AnyHashable?, v7);
    outlined destroy of AnyHashable(v12);
    goto LABEL_17;
  }

  v10[0] = v18;
  v10[1] = v19;
  v11 = v20;
  v3 = MEMORY[0x18D00E7E0](v12, v10);
  outlined destroy of AnyHashable(v10);
  v4 = MEMORY[0x1E69E69B8];
  _ss11AnyHashableVSgWOhTm_3(v13, &lazy cache variable for type metadata for AnyHashable?, MEMORY[0x1E69E69B8]);
  _ss11AnyHashableVSgWOhTm_3(v21, &lazy cache variable for type metadata for AnyHashable?, v4);
  outlined destroy of AnyHashable(v12);
  _ss11AnyHashableVSgWOhTm_3(&v15, &lazy cache variable for type metadata for AnyHashable?, v4);
  if ((v3 & 1) == 0)
  {
    return 0;
  }

LABEL_13:
  type metadata accessor for _SemanticFeature<Semantics_v6>(0, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v6>, MEMORY[0x1E697DF60], MEMORY[0x1E697DF58], MEMORY[0x1E697EC20]);
  lazy protocol witness table accessor for type _SemanticFeature<Semantics_v6> and conformance _SemanticFeature<A>();
  if ((static SemanticFeature.isEnabled.getter() & 1) == 0)
  {
    return 1;
  }

  PresentationState.Base.lastPresentation.getter(&v15);
  v5 = v15;
  if (v15)
  {
    v6 = v16;
    outlined destroy of SheetPreference(&v15);
  }

  else
  {
    _ss11AnyHashableVSgWOhTm_3(&v15, &lazy cache variable for type metadata for SheetPreference?, &type metadata for SheetPreference);
    v6 = 0;
  }

  outlined init with copy of SheetPreference?(a1, &v15, &lazy cache variable for type metadata for SheetPreference?, &type metadata for SheetPreference);
  if (!v15)
  {
    _ss11AnyHashableVSgWOhTm_3(&v15, &lazy cache variable for type metadata for SheetPreference?, &type metadata for SheetPreference);
    return !v5;
  }

  v9 = v16;
  outlined destroy of SheetPreference(&v15);
  result = 0;
  if (v5 && v6 == v9)
  {
    return 1;
  }

  return result;
}

uint64_t specialized _UIHostingView.didChangeColorScheme(from:)(uint64_t result)
{
  v2 = MEMORY[0x1E69E7D40];
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xF8);
  v4 = *(v1 + v3);
  if (result == 2)
  {
    if (v4 == 2)
    {
      return result;
    }
  }

  else if (v4 != 2 && ((v4 ^ result) & 1) == 0)
  {
    return result;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = *(v1 + v3);
    v7 = 1;
    if (v6)
    {
      v7 = 2;
    }

    if (v6 == 2)
    {
      v8 = 0;
    }

    else
    {
      v8 = v7;
    }

    v9 = Strong;
    [v9 setOverrideUserInterfaceStyle_];
    v10 = *(v1 + *((*v2 & *v1) + 0x150));

    v11 = [v9 isBeingPresented];

    result = swift_unknownObjectWeakLoadStrong();
    if (!result)
    {
      __break(1u);
      return result;
    }

    v12 = *(v10 + 40);
    v13 = swift_allocObject();
    ObjectType = swift_getObjectType();
    v15 = ViewGraphDelegate.uiViewController.getter(ObjectType, *(*(v12 + 16) + 8));
    swift_unknownObjectRelease();
    swift_unknownObjectWeakInit();

    v16 = swift_allocObject();
    *(v16 + 16) = v11;
    *(v16 + 24) = partial apply for closure #1 in UIKitStatusBarBridge.updateStatusBar(isAnimated:shouldDefer:);
    *(v16 + 32) = v13;

    onNextMainRunLoop(do:)();
  }

  type metadata accessor for PresentationHostingController<AnyView>(0, &lazy cache variable for type metadata for _UIHostingView<AnyView>, MEMORY[0x1E6981910], MEMORY[0x1E6981900], type metadata accessor for _UIHostingView);
  lazy protocol witness table accessor for type _UIHostingView<AnyView> and conformance _UIHostingView<A>();

  return ViewGraphRootValueUpdater.invalidateProperties(_:mayDeferUpdate:)();
}

uint64_t sub_18BF23F38()
{
  MEMORY[0x18D011290](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_18BF23F70()
{

  return swift_deallocObject();
}

__n128 assignWithCopy for _NavigationTransitionStyleOutputs(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 32);
  if (*(a1 + 32))
  {
    if (v2)
    {
      *a1 = *a2;
      result.n128_f64[0] = __swift_assign_boxed_opaque_existential_1((a1 + 8), (a2 + 8));
    }

    else
    {
      _s7SwiftUI28_NavigationTransitionOutputsVSgWOhTm_0(a1, type metadata accessor for (namespace: Namespace.ID, sourceID: AnyHashable));
      v7 = *(a2 + 16);
      result = *(a2 + 32);
      *a1 = *a2;
      *(a1 + 16) = v7;
      *(a1 + 32) = result;
    }
  }

  else if (v2)
  {
    *a1 = *a2;
    v5 = *(a2 + 32);
    *(a1 + 32) = v5;
    *(a1 + 40) = *(a2 + 40);
    (**(v5 - 8))(a1 + 8, a2 + 8);
  }

  else
  {
    result = *a2;
    v8 = *(a2 + 32);
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 32) = v8;
    *a1 = result;
  }

  return result;
}

uint64_t assignWithCopy for NavigationStackStyledCore.NavigationStackRepresentableRoot(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  v5 = (a1 + 31) & 0xFFFFFFFFFFFFFFF8;
  v6 = (a2 + 31) & 0xFFFFFFFFFFFFFFF8;
  swift_weakCopyAssign();
  *(v5 + 8) = *(v6 + 8);

  *(v5 + 16) = *(v6 + 16);

  v7 = *(*(a3 + 16) - 8);
  v8 = v7 + 24;
  v9 = *(v7 + 80);
  v10 = (v9 + 24 + v5) & ~v9;
  v11 = (v9 + 24 + v6) & ~v9;
  (*(v7 + 24))(v10, v11);
  v12 = *(v8 + 40);
  v13 = v12 + v10;
  v14 = v12 + v11;
  v15 = (v13 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  v16 = (v14 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  v17 = *v16;
  *(v15 + 4) = *(v16 + 4);
  *v15 = v17;
  v18 = (v13 + 11) & 0xFFFFFFFFFFFFFFFCLL;
  v19 = (v14 + 11) & 0xFFFFFFFFFFFFFFFCLL;
  LOBYTE(v15) = *(v19 + 8);
  *v18 = *v19;
  *(v18 + 8) = v15;
  return a1;
}

void specialized NavigationState.StackContent.Views.ViewsSequence.index(after:for:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, unint64_t *a6, uint64_t a7, uint64_t (*a8)(uint64_t, uint64_t, uint64_t (*)(uint64_t a1, uint64_t a2)))
{
  outlined init with copy of NavigationColumnState.ColumnContent(a5 + 120, v23);
  v24 = a3;
  v25 = a4;
  if (v23[120])
  {
    outlined init with copy of NavigationColumnState.ColumnContent(v23, v20);
    outlined destroy of NavigationState?(v20, &lazy cache variable for type metadata for NavigationColumnState.ReplacedRoot?, &type metadata for NavigationColumnState.ReplacedRoot);
    if (a4 != 2 || a3)
    {
      outlined destroy of (NavigationColumnState.ColumnContent, NavigationState.StackContent.Views.ViewsSequence<ModifiedContent<_VariadicView.Tree<_VStackLayout, _VariadicView_Children>, RootItemModifier>, StackItemModifier>.Index.Kind)(v23, a6, a7, a8);
      return;
    }

    goto LABEL_16;
  }

  outlined init with copy of NavigationColumnState.ColumnContent(v23, v20);
  v13 = v22;
  if (!a4)
  {
    v16 = a3 + 1;
    if (__OFADD__(a3, 1))
    {
      goto LABEL_20;
    }

    v17 = (*(*v21 + 88))();

    if (v16 >= v17)
    {
      goto LABEL_14;
    }

    goto LABEL_17;
  }

  if (a4 != 1)
  {
    v18 = (*(*v21 + 80))();

    if (v18)
    {
LABEL_14:
      v19 = *(v13 + 16);

      if (!v19)
      {
        goto LABEL_15;
      }

LABEL_18:
      outlined destroy of NavigationState?(v20, &lazy cache variable for type metadata for NavigationColumnState.ReplacedRoot?, &type metadata for NavigationColumnState.ReplacedRoot);
      outlined destroy of NavigationColumnState.ColumnContent(v23);
      return;
    }

LABEL_17:

    goto LABEL_18;
  }

  v14 = a3 + 1;
  if (!__OFADD__(a3, 1))
  {
    v15 = *(v13 + 16);

    if (v14 < v15)
    {
      goto LABEL_18;
    }

LABEL_15:
    outlined destroy of NavigationState?(v20, &lazy cache variable for type metadata for NavigationColumnState.ReplacedRoot?, &type metadata for NavigationColumnState.ReplacedRoot);
LABEL_16:
    outlined destroy of NavigationColumnState.ColumnContent(v23);
    return;
  }

  __break(1u);
LABEL_20:
  __break(1u);
}

uint64_t specialized NavigationState.StackContent.Views.ViewsSequence.view(at:state:baseDepth:)@<X0>(unint64_t a1@<X0>, char a2@<W1>, unint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v8 = v7;
  v10 = a5;
  v16 = outlined init with copy of NavigationColumnState.ColumnContent(a5 + 120, &v84[1]);
  if (!a4)
  {
    if ((BYTE8(v84[8]) & 1) == 0)
    {
      v33 = *&v84[7];

      v34 = a3 + 1;
      if (!__OFADD__(a3, 1))
      {
        if (!__OFADD__(a6, v34))
        {
          v35 = *(v10 + 296);
          v36 = *(v10 + 312);
          v37 = *(v10 + 264);
          v87 = *(v10 + 280);
          v88 = v35;
          v38 = *(v10 + 32);
          v39 = *(v10 + 24);
          v40 = *(v10 + 16);
          v41 = *(v8 + 456);
          v42 = *(v8 + 464);
          *&v95 = a3 + 1;
          *(&v95 + 1) = v40;
          LOBYTE(v96) = v39;
          *(&v96 + 1) = v38;
          *&v97 = a6 + v34;
          BYTE8(v97) = 1;
          v89 = v36;
          v90 = *(v10 + 328);
          v85 = *(v10 + 248);
          v86 = v37;
          v43 = (*(*v33 + 152))(&v92, &v85, v41, v42, a3, &v95, MEMORY[0x1E697E108], MEMORY[0x1E697E100]);
          if (v39 >= 3)
          {
            LOBYTE(v39) = 3;
          }

          v44 = __swift_project_boxed_opaque_existential_1(&v92, *(&v93 + 1));
          v45 = MEMORY[0x1EEE9AC00](v44);
          (*(v47 + 16))(&v80 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0), v45);
          AnyHashable.init<A>(_:)();

          *(a7 + 88) = 0;
          *a7 = v43;
          *(a7 + 8) = v39;
          *(a7 + 16) = v34;
          __swift_destroy_boxed_opaque_existential_1(&v92);
          return outlined destroy of NavigationState?(&v84[1], &lazy cache variable for type metadata for NavigationColumnState.ReplacedRoot?, &type metadata for NavigationColumnState.ReplacedRoot);
        }

        goto LABEL_54;
      }

      goto LABEL_52;
    }

LABEL_65:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  if (a4 == 1)
  {
    if ((BYTE8(v84[8]) & 1) == 0)
    {
      v17 = *(&v84[7] + 1);
      v18 = *&v84[8];
      v19 = (*(**&v84[7] + 88))(v16);
      v20 = v19 + 1;
      if (!__OFADD__(v19, 1))
      {
        v21 = v20 + a3;
        if (!__OFADD__(v20, a3))
        {
          if ((a3 & 0x8000000000000000) == 0)
          {
            if (*(v17 + 16) > a3)
            {
              v22 = a6 + v21;
              if (!__OFADD__(a6, v21))
              {
                v82 = v18;
                v83 = a7;
                v23 = *(v10 + 32);
                v24 = *(v10 + 24);
                v25 = *(v10 + 16);
                v80 = v17 + 88 * a3;
                v26 = *(v80 + 32);
                *&v95 = v21;
                *(&v95 + 1) = v25;
                LOBYTE(v96) = v24;
                *(&v96 + 1) = v23;
                *&v97 = v22;
                BYTE8(v97) = 1;
                v27 = *(v8 + 456);
                v28 = *(v8 + 464);
                v29 = *(*v26 + 104);
                v81 = v21;

                v30 = v29(&v95, v27, v28, MEMORY[0x1E697E108], MEMORY[0x1E697E100]);

                if (*(v17 + 16) > a3)
                {
                  if (v24 >= 3)
                  {
                    v31 = 3;
                  }

                  else
                  {
                    v31 = v24;
                  }

                  outlined init with copy of NavigationViewDestinationView(v80 + 32, &v85);

                  v32 = v83;
                  outlined init with copy of NavigationLinkSelectionIdentifier(&v85 + 8, v83 + 24);
                  outlined destroy of NavigationViewDestinationView(&v85);
                  *(v83 + 88) = 1;
                  *v32 = v30;
                  *(v32 + 8) = v31;
                  *(v32 + 16) = v81;
                  return outlined destroy of NavigationState?(&v84[1], &lazy cache variable for type metadata for NavigationColumnState.ReplacedRoot?, &type metadata for NavigationColumnState.ReplacedRoot);
                }

                goto LABEL_58;
              }

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

LABEL_56:
            __break(1u);
            goto LABEL_57;
          }

LABEL_55:
          __break(1u);
          goto LABEL_56;
        }

        goto LABEL_53;
      }

      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
      goto LABEL_55;
    }

    goto LABEL_65;
  }

  if ((BYTE8(v84[8]) & 1) == 0)
  {
    outlined init with copy of NavigationColumnState.ColumnContent(&v84[1], &v85);

    if (v91 != 255)
    {
      if (v91)
      {
        goto LABEL_24;
      }

      goto LABEL_32;
    }

    goto LABEL_44;
  }

  outlined init with copy of NavigationColumnState.ColumnContent(&v84[1], &v85);
  if (v91 != 255)
  {
    if (v91)
    {
LABEL_24:
      v97 = v87;
      v98 = v88;
      v99 = v89;
      v100 = v90;
      v95 = v85;
      v96 = v86;
      outlined destroy of NavigationColumnState.ColumnContent(&v84[1]);
      v49 = v95;
      v50 = *(v10 + 16);
      v51 = *(v10 + 24);
      v52 = *(v10 + 32);
      outlined init with copy of NavigationColumnState.ColumnContent(v10 + 120, v84);
      v53 = BYTE8(v84[7]);
      if ((BYTE8(v84[7]) & 1) == 0)
      {
      }

      outlined destroy of NavigationState?(v84, &lazy cache variable for type metadata for NavigationColumnState.ReplacedRoot?, &type metadata for NavigationColumnState.ReplacedRoot);
      *&v85 = 0;
      *(&v85 + 1) = v50;
      LOBYTE(v86) = v51;
      *(&v86 + 1) = v52;
      *&v87 = a6;
      BYTE8(v87) = v53 ^ 1;
      outlined init with copy of _VariadicView.Tree<_VStackLayout, _VariadicView_Children>(v8, v84, &lazy cache variable for type metadata for NavigationState.StackContent.Views.ViewsSequence<_NavigationStackStyleConfiguration.Root, EmptyModifier>, type metadata accessor for NavigationState.StackContent.Views.ViewsSequence, type metadata accessor for NavigationState.StackContent.Views.ViewsSequence<_NavigationStackStyleConfiguration.Root, EmptyModifier>);
      v54 = swift_allocObject();
      memcpy((v54 + 16), v84, 0x1E0uLL);
      *(v54 + 496) = v50;
      *(v54 + 504) = v51;
      *(v54 + 512) = v52;
      v55 = *(*v49 + 104);
      _s7SwiftUI24ReadDestinationsModifier33_EA42A490FE48784768DCEF705CD04CF4LLVyAA018ResolvedNavigationD0VGMaTm_0(0, &lazy cache variable for type metadata for ModifiedContent<EmptyModifier, ReplacedRootDismissModifier>, MEMORY[0x1E697E108], &type metadata for ReplacedRootDismissModifier, MEMORY[0x1E697E830]);
      v57 = v56;
      v58 = lazy protocol witness table accessor for type ModifiedContent<EmptyModifier, ReplacedRootDismissModifier> and conformance <> ModifiedContent<A, B>();
      v59 = v55(&v85, closure #1 in NavigationState.StackContent.Views.ViewsSequence.replacedRootModifier(key:)specialized partial apply, v54, v57, v58);

      if (v51 >= 3)
      {
        v60 = 3;
      }

      else
      {
        v60 = v51;
      }

      outlined init with copy of NavigationLinkSelectionIdentifier(&v95 + 8, a7 + 24);
      result = outlined destroy of NavigationViewDestinationView(&v95);
      *(a7 + 88) = 1;
      *a7 = v59;
      goto LABEL_39;
    }

LABEL_32:
    v92 = v85;
    v93 = v86;
    v94 = v87;
    outlined destroy of NavigationColumnState.ColumnContent(&v84[1]);
    if (a2)
    {
LABEL_62:
      __break(1u);
      goto LABEL_63;
    }

    specialized NavigationState.StackContent.Views.ViewsSequence.destinations(before:)(a1, &v85);
    v61 = *(v10 + 16);
    v62 = *(v10 + 24);
    v63 = *(v10 + 32);
    outlined init with copy of _VariadicView.Tree<_VStackLayout, _VariadicView_Children>(v8, v84, &lazy cache variable for type metadata for NavigationState.StackContent.Views.ViewsSequence<_NavigationStackStyleConfiguration.Root, EmptyModifier>, type metadata accessor for NavigationState.StackContent.Views.ViewsSequence, type metadata accessor for NavigationState.StackContent.Views.ViewsSequence<_NavigationStackStyleConfiguration.Root, EmptyModifier>);
    v64 = swift_allocObject();
    memcpy((v64 + 16), v84, 0x1E0uLL);
    *(v64 + 496) = v61;
    *(v64 + 504) = v62;
    *(v64 + 512) = v63;
    outlined init with copy of NavigationColumnState.ColumnContent(v10 + 120, v84);
    v65 = BYTE8(v84[7]);
    if ((BYTE8(v84[7]) & 1) == 0)
    {
    }

    outlined destroy of NavigationState?(v84, &lazy cache variable for type metadata for NavigationColumnState.ReplacedRoot?, &type metadata for NavigationColumnState.ReplacedRoot);
    *&v95 = 0;
    *(&v95 + 1) = v61;
    LOBYTE(v96) = v62;
    *(&v96 + 1) = v63;
    *&v97 = a6;
    BYTE8(v97) = v65 ^ 1;
    v66 = *(&v93 + 1);
    v67 = v94;
    __swift_project_boxed_opaque_existential_1(&v92, *(&v93 + 1));
    v84[2] = v87;
    v84[3] = v88;
    v84[4] = v89;
    *&v84[5] = v90;
    v84[0] = v85;
    v84[1] = v86;
    v68 = *(v67 + 104);
    _s7SwiftUI24ReadDestinationsModifier33_EA42A490FE48784768DCEF705CD04CF4LLVyAA018ResolvedNavigationD0VGMaTm_0(0, &lazy cache variable for type metadata for ModifiedContent<EmptyModifier, ReplacedRootDismissModifier>, MEMORY[0x1E697E108], &type metadata for ReplacedRootDismissModifier, MEMORY[0x1E697E830]);
    v70 = v69;
    v71 = lazy protocol witness table accessor for type ModifiedContent<EmptyModifier, ReplacedRootDismissModifier> and conformance <> ModifiedContent<A, B>();
    v72 = v68(v84, partial apply for specialized closure #1 in NavigationState.StackContent.Views.ViewsSequence.replacedRootModifier(key:), v64, &v95, v70, v71, v66, v67);
    outlined destroy of ResolvedNavigationDestinations(&v85);

    if (v62 >= 3)
    {
      v60 = 3;
    }

    else
    {
      v60 = v62;
    }

    v73 = *(&v93 + 1);
    v74 = v94;
    __swift_project_boxed_opaque_existential_1(&v92, *(&v93 + 1));
    (*(v74 + 24))(v73, v74);
    result = outlined destroy of AnyNavigationLinkPresentedValue(&v92);
    *(a7 + 88) = 0;
    *a7 = v72;
LABEL_39:
    *(a7 + 8) = v60;
    *(a7 + 16) = 0;
    return result;
  }

  if (a2)
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  v75 = *(v10 + 16);
  v76 = *(v10 + 24);
  v10 = *(v10 + 32);
  v77 = static HorizontalAlignment.center.getter();
  if ((a1 & 0x8000000000000000) != 0)
  {
    goto LABEL_59;
  }

  if (*(*(v8 + 472) + 16) <= a1)
  {
    __break(1u);
LABEL_44:
    if (a2)
    {
LABEL_64:
      __break(1u);
      goto LABEL_65;
    }

    v75 = *(v10 + 16);
    v76 = *(v10 + 24);
    v10 = *(v10 + 32);
    v77 = static HorizontalAlignment.center.getter();
    if ((a1 & 0x8000000000000000) != 0)
    {
      goto LABEL_60;
    }

    if (*(*(v8 + 472) + 16) <= a1)
    {
LABEL_61:
      __break(1u);
      goto LABEL_62;
    }
  }

  *&v95 = 0;
  *(&v95 + 1) = v75;
  LOBYTE(v96) = v76;
  *(&v96 + 1) = v10;
  *&v97 = a6;
  BYTE8(v97) = v76 == 3;
  if (v76 >= 3)
  {
    v78 = 3;
  }

  else
  {
    v78 = v76;
  }

  updated = _s7SwiftUI30ResolvedNavigationDestinationsV16prepareToPresent4view2at012shouldUpdateE08applyingAA7AnyViewVx_AA0d5StackO8PositionVSbq_ALXEtAA0O0RzAA0O8ModifierR_r0_lFZAA09_VariadicO0O4TreeVy_AA13_VStackLayoutVAA01_dP18StyleConfigurationV4RootVG_AA05EmptyR0VTt3B5Tf4nndn_n(v77, 0, 1, &v95, *(v8 + 456));
  *(a7 + 24) = 0u;
  *(a7 + 40) = 0u;
  *(a7 + 56) = 0u;
  *(a7 + 72) = 0u;
  *(a7 + 88) = 2;
  *a7 = updated;
  *(a7 + 8) = v78;
  *(a7 + 16) = 0;
  return outlined destroy of NavigationColumnState.ColumnContent(&v84[1]);
}

{
  v8 = v7;
  v16 = outlined init with copy of NavigationColumnState.ColumnContent(a5 + 120, v118);
  if (a4)
  {
    if (a4 == 1)
    {
      if ((v122 & 1) == 0)
      {
        v17 = v119;
        v18 = v120;
        v19 = v121;
        v20 = (*(*v119 + 88))(v16);
        v21 = v20 + 1;
        if (!__OFADD__(v20, 1))
        {
          v22 = v21 + a3;
          if (!__OFADD__(v21, a3))
          {
            if ((a3 & 0x8000000000000000) == 0)
            {
              if (*(v18 + 16) > a3)
              {
                v23 = a6 + v22;
                if (!__OFADD__(a6, v22))
                {
                  v99 = v19;
                  v100 = v17;
                  v101 = a7;
                  v24 = *(a5 + 32);
                  v25 = *(a5 + 24);
                  v26 = *(a5 + 16);
                  v97 = v18 + 88 * a3;
                  v27 = *(v97 + 32);
                  *&v110[0] = v22;
                  *(&v110[0] + 1) = v26;
                  LOBYTE(v110[1]) = v25;
                  *(&v110[1] + 1) = v24;
                  *&v110[2] = v23;
                  BYTE8(v110[2]) = 1;
                  v28 = v8[57];
                  v29 = v8[58];
                  v30 = *(*v27 + 104);
                  v98 = v22;
                  v31 = lazy protocol witness table accessor for type StackItemModifier and conformance StackItemModifier();

                  v32 = v30(v110, v28, v29, &type metadata for StackItemModifier, v31);

                  if (*(v18 + 16) > a3)
                  {
                    if (v25 >= 3)
                    {
                      v33 = 3;
                    }

                    else
                    {
                      v33 = v25;
                    }

                    outlined init with copy of NavigationViewDestinationView(v97 + 32, v104);

                    v34 = v101;
                    outlined init with copy of NavigationLinkSelectionIdentifier(v104 + 8, v101 + 24);
                    outlined destroy of NavigationViewDestinationView(v104);
                    *(v101 + 88) = 1;
                    *v34 = v32;
                    *(v34 + 8) = v33;
                    *(v34 + 16) = v98;
                    return outlined destroy of NavigationState?(v118, &lazy cache variable for type metadata for NavigationColumnState.ReplacedRoot?, &type metadata for NavigationColumnState.ReplacedRoot);
                  }

                  goto LABEL_60;
                }

LABEL_59:
                __break(1u);
LABEL_60:
                __break(1u);
LABEL_61:
                __break(1u);
LABEL_62:
                __break(1u);
                goto LABEL_63;
              }

LABEL_58:
              __break(1u);
              goto LABEL_59;
            }

LABEL_57:
            __break(1u);
            goto LABEL_58;
          }

          goto LABEL_55;
        }

        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
        goto LABEL_57;
      }

      goto LABEL_68;
    }

    if (v122)
    {
      outlined init with copy of NavigationColumnState.ColumnContent(v118, &v111);
      if (v117 != 255)
      {
        if (v117)
        {
LABEL_24:
          v110[2] = v113;
          v110[3] = v114;
          v110[4] = v115;
          *&v110[5] = v116;
          v110[0] = v111;
          v110[1] = v112;
          outlined destroy of NavigationColumnState.ColumnContent(v118);
          v55 = *&v110[0];
          v56 = *(a5 + 16);
          v57 = *(a5 + 24);
          v58 = *(a5 + 32);
          outlined init with copy of NavigationColumnState.ColumnContent(a5 + 120, v104);
          v59 = BYTE8(v104[7]);
          if ((BYTE8(v104[7]) & 1) == 0)
          {
          }

          outlined destroy of NavigationState?(v104, &lazy cache variable for type metadata for NavigationColumnState.ReplacedRoot?, &type metadata for NavigationColumnState.ReplacedRoot);
          v109[0] = 0;
          v109[1] = v56;
          LOBYTE(v109[2]) = v57;
          v109[3] = v58;
          v109[4] = a6;
          LOBYTE(v109[5]) = v59 ^ 1;
          outlined init with copy of NavigationState.StackContent.Views.ViewsSequence<ModifiedContent<_VariadicView.Tree<_VStackLayout, _VariadicView_Children>, RootItemModifier>, StackItemModifier>(v8, v104);
          v60 = swift_allocObject();
          memcpy((v60 + 16), v104, 0x1E0uLL);
          *(v60 + 496) = v56;
          *(v60 + 504) = v57;
          *(v60 + 512) = v58;
          v61 = *(*v55 + 104);
          _s7SwiftUI24ReadDestinationsModifier33_EA42A490FE48784768DCEF705CD04CF4LLVyAA018ResolvedNavigationD0VGMaTm_0(0, &lazy cache variable for type metadata for ModifiedContent<StackItemModifier, ReplacedRootDismissModifier>, &type metadata for StackItemModifier, &type metadata for ReplacedRootDismissModifier, MEMORY[0x1E697E830]);
          v63 = v62;
          v64 = lazy protocol witness table accessor for type ModifiedContent<StackItemModifier, ReplacedRootDismissModifier> and conformance <> ModifiedContent<A, B>();
          v65 = v61(v109, closure #1 in NavigationState.StackContent.Views.ViewsSequence.replacedRootModifier(key:)specialized partial apply, v60, v63, v64);

          if (v57 >= 3)
          {
            v66 = 3;
          }

          else
          {
            v66 = v57;
          }

          outlined init with copy of NavigationLinkSelectionIdentifier(v110 + 8, a7 + 24);
          result = outlined destroy of NavigationViewDestinationView(v110);
          *(a7 + 88) = 1;
          *a7 = v65;
          goto LABEL_39;
        }

LABEL_32:
        v103[0] = v111;
        v103[1] = v112;
        *&v103[2] = v113;
        outlined destroy of NavigationColumnState.ColumnContent(v118);
        if (a2)
        {
LABEL_65:
          __break(1u);
          goto LABEL_66;
        }

        specialized NavigationState.StackContent.Views.ViewsSequence.destinations(before:)(a1, v110);
        v67 = *(a5 + 16);
        v68 = *(a5 + 24);
        v69 = *(a5 + 32);
        outlined init with copy of NavigationState.StackContent.Views.ViewsSequence<ModifiedContent<_VariadicView.Tree<_VStackLayout, _VariadicView_Children>, RootItemModifier>, StackItemModifier>(v8, v104);
        v70 = swift_allocObject();
        memcpy((v70 + 16), v104, 0x1E0uLL);
        *(v70 + 496) = v67;
        *(v70 + 504) = v68;
        *(v70 + 512) = v69;
        outlined init with copy of NavigationColumnState.ColumnContent(a5 + 120, v104);
        v71 = BYTE8(v104[7]);
        if ((BYTE8(v104[7]) & 1) == 0)
        {
        }

        outlined destroy of NavigationState?(v104, &lazy cache variable for type metadata for NavigationColumnState.ReplacedRoot?, &type metadata for NavigationColumnState.ReplacedRoot);
        v109[0] = 0;
        v109[1] = v67;
        LOBYTE(v109[2]) = v68;
        v109[3] = v69;
        v109[4] = a6;
        LOBYTE(v109[5]) = v71 ^ 1;
        v72 = *(&v103[1] + 1);
        v73 = *&v103[2];
        __swift_project_boxed_opaque_existential_1(v103, *(&v103[1] + 1));
        v104[2] = v110[2];
        v104[3] = v110[3];
        v104[4] = v110[4];
        *&v104[5] = *&v110[5];
        v104[0] = v110[0];
        v104[1] = v110[1];
        v74 = *(v73 + 104);
        _s7SwiftUI24ReadDestinationsModifier33_EA42A490FE48784768DCEF705CD04CF4LLVyAA018ResolvedNavigationD0VGMaTm_0(0, &lazy cache variable for type metadata for ModifiedContent<StackItemModifier, ReplacedRootDismissModifier>, &type metadata for StackItemModifier, &type metadata for ReplacedRootDismissModifier, MEMORY[0x1E697E830]);
        v76 = v75;
        v77 = lazy protocol witness table accessor for type ModifiedContent<StackItemModifier, ReplacedRootDismissModifier> and conformance <> ModifiedContent<A, B>();
        v78 = v74(v104, partial apply for specialized closure #1 in NavigationState.StackContent.Views.ViewsSequence.replacedRootModifier(key:), v70, v109, v76, v77, v72, v73);
        outlined destroy of ResolvedNavigationDestinations(v110);

        if (v68 >= 3)
        {
          v66 = 3;
        }

        else
        {
          v66 = v68;
        }

        v79 = *(&v103[1] + 1);
        v80 = *&v103[2];
        __swift_project_boxed_opaque_existential_1(v103, *(&v103[1] + 1));
        (*(v80 + 24))(v79, v80);
        result = outlined destroy of AnyNavigationLinkPresentedValue(v103);
        *(a7 + 88) = 0;
        *a7 = v78;
LABEL_39:
        *(a7 + 8) = v66;
        *(a7 + 16) = 0;
        return result;
      }

      if (a2)
      {
LABEL_66:
        __break(1u);
        goto LABEL_67;
      }

      v81 = *(a5 + 16);
      v82 = *(a5 + 24);
      v83 = *(a5 + 32);
      v84 = static HorizontalAlignment.center.getter();
      if ((a1 & 0x8000000000000000) != 0)
      {
        goto LABEL_61;
      }

      v101 = a7;
      v85 = v8[59];
      if (*(v85 + 16) <= a1)
      {
LABEL_63:
        __break(1u);
        goto LABEL_64;
      }

      v86 = v84;
      outlined init with copy of _VariadicView.Tree<_VStackLayout, ModifiedContent<_VariadicView.Tree<_VStackLayout, _VariadicView_Children>, RootItemModifier>>(v85 + 104 * a1 + 32, v108, type metadata accessor for ModifiedContent<_VariadicView.Tree<_VStackLayout, _VariadicView_Children>, RootItemModifier>);
      v87 = v82 == 3;
      v105 = v86;
      v106 = 0;
      v107 = 1;
      v123 = 0;
      v124 = v81;
      v125 = v82;
      v126 = v83;
      v127 = a6;
      v128 = v82 == 3;
      v88 = v8[57];
      if (v82 >= 3)
      {
        v89 = 3;
      }

      else
      {
        v89 = v82;
      }
    }

    else
    {
      outlined init with copy of NavigationColumnState.ColumnContent(v118, &v111);

      if (v117 != 255)
      {
        if (v117)
        {
          goto LABEL_24;
        }

        goto LABEL_32;
      }

      if (a2)
      {
LABEL_67:
        __break(1u);
        goto LABEL_68;
      }

      v81 = *(a5 + 16);
      v82 = *(a5 + 24);
      v83 = *(a5 + 32);
      v90 = static HorizontalAlignment.center.getter();
      if ((a1 & 0x8000000000000000) != 0)
      {
        goto LABEL_62;
      }

      v101 = a7;
      v91 = v8[59];
      if (*(v91 + 16) <= a1)
      {
LABEL_64:
        __break(1u);
        goto LABEL_65;
      }

      v92 = v90;
      outlined init with copy of _VariadicView.Tree<_VStackLayout, ModifiedContent<_VariadicView.Tree<_VStackLayout, _VariadicView_Children>, RootItemModifier>>(v91 + 104 * a1 + 32, v108, type metadata accessor for ModifiedContent<_VariadicView.Tree<_VStackLayout, _VariadicView_Children>, RootItemModifier>);
      v87 = v82 == 3;
      v105 = v92;
      v106 = 0;
      v107 = 1;
      v123 = 0;
      v124 = v81;
      v125 = v82;
      v126 = v83;
      v127 = a6;
      v128 = v82 == 3;
      v88 = v8[57];
      if (v82 >= 3)
      {
        v89 = 3;
      }

      else
      {
        v89 = v82;
      }
    }

    outlined init with copy of _VariadicView.Tree<_VStackLayout, ModifiedContent<_VariadicView.Tree<_VStackLayout, _VariadicView_Children>, RootItemModifier>>(&v105, v104, type metadata accessor for _VariadicView.Tree<_VStackLayout, ModifiedContent<_VariadicView.Tree<_VStackLayout, _VariadicView_Children>, RootItemModifier>>);
    *&v104[8] = 0;
    *(&v104[8] + 1) = v81;
    *&v104[9] = v82;
    *(&v104[9] + 1) = v83;
    *&v104[10] = a6;
    BYTE8(v104[10]) = v87;
    BYTE9(v104[10]) = 1;
    v93 = swift_allocObject();
    *(v93 + 16) = 1;
    *&v104[11] = closure #1 in View.readNavigationDestinations<A>(position:isActive:reader:)partial apply;
    *(&v104[11] + 1) = v93;
    v88(v103, &v123);
    memcpy(v109, v103, sizeof(v109));
    memcpy(&v104[12], v103, 0x130uLL);
    memcpy(v110, v103, sizeof(v110));
    outlined init with copy of StackItemModifier(v109, &v102);
    outlined destroy of StackItemModifier(v110);
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<_VariadicView.Tree<_VStackLayout, ModifiedContent<_VariadicView.Tree<_VStackLayout, _VariadicView_Children>, RootItemModifier>>, ReadDestinationsModifier<ResolvedNavigationDestinations>>, _PreferenceTransformModifier<NavigationDestinationKey>>, StackItemModifier>(0);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_VariadicView.Tree<_VStackLayout, ModifiedContent<_VariadicView.Tree<_VStackLayout, _VariadicView_Children>, RootItemModifier>>, ReadDestinationsModifier<ResolvedNavigationDestinations>>, _PreferenceTransformModifier<NavigationDestinationKey>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<_VariadicView.Tree<_VStackLayout, ModifiedContent<_VariadicView.Tree<_VStackLayout, _VariadicView_Children>, RootItemModifier>>, ReadDestinationsModifier<ResolvedNavigationDestinations>>, _PreferenceTransformModifier<NavigationDestinationKey>>, StackItemModifier> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<_VariadicView.Tree<_VStackLayout, ModifiedContent<_VariadicView.Tree<_VStackLayout, _VariadicView_Children>, RootItemModifier>>, ReadDestinationsModifier<ResolvedNavigationDestinations>>, _PreferenceTransformModifier<NavigationDestinationKey>>, StackItemModifier>, lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_VariadicView.Tree<_VStackLayout, ModifiedContent<_VariadicView.Tree<_VStackLayout, _VariadicView_Children>, RootItemModifier>>, ReadDestinationsModifier<ResolvedNavigationDestinations>>, _PreferenceTransformModifier<NavigationDestinationKey>> and conformance <> ModifiedContent<A, B>, lazy protocol witness table accessor for type StackItemModifier and conformance StackItemModifier);
    v94 = AnyView.init<A>(_:)();
    outlined destroy of IndexingIterator<DefaultIndices<NavigationState.StackContent.Views.ViewsSequence<_NavigationStackStyleConfiguration.Root, EmptyModifier>>>(&v105, type metadata accessor for _VariadicView.Tree<_VStackLayout, ModifiedContent<_VariadicView.Tree<_VStackLayout, _VariadicView_Children>, RootItemModifier>>);
    v95 = v101;
    *(v101 + 72) = 0u;
    *(v95 + 56) = 0u;
    *(v95 + 40) = 0u;
    *(v95 + 24) = 0u;
    *(v95 + 88) = 2;
    *v95 = v94;
    *(v95 + 8) = v89;
    *(v95 + 16) = 0;
    return outlined destroy of NavigationColumnState.ColumnContent(v118);
  }

  if ((v122 & 1) == 0)
  {
    v35 = v119;

    v36 = a3 + 1;
    if (!__OFADD__(a3, 1))
    {
      v37 = a6 + v36;
      if (!__OFADD__(a6, v36))
      {
        v38 = *(a5 + 296);
        v39 = *(a5 + 312);
        v40 = *(a5 + 264);
        v104[2] = *(a5 + 280);
        v104[3] = v38;
        v41 = *(a5 + 32);
        v42 = *(a5 + 24);
        v43 = *(a5 + 16);
        v46 = v8 + 57;
        v45 = v8[57];
        v44 = v46[1];
        *&v110[0] = a3 + 1;
        *(&v110[0] + 1) = v43;
        LOBYTE(v110[1]) = v42;
        *(&v110[1] + 1) = v41;
        *&v110[2] = v37;
        BYTE8(v110[2]) = 1;
        v104[4] = v39;
        *&v104[5] = *(a5 + 328);
        v104[0] = *(a5 + 248);
        v104[1] = v40;
        v47 = *(*v35 + 152);
        v48 = lazy protocol witness table accessor for type StackItemModifier and conformance StackItemModifier();
        v49 = v47(v109, v104, v45, v44, a3, v110, &type metadata for StackItemModifier, v48);
        if (v42 >= 3)
        {
          LOBYTE(v42) = 3;
        }

        v50 = __swift_project_boxed_opaque_existential_1(v109, v109[3]);
        v51 = MEMORY[0x1EEE9AC00](v50);
        (*(v53 + 16))(&v96 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0), v51);
        AnyHashable.init<A>(_:)();

        *(a7 + 88) = 0;
        *a7 = v49;
        *(a7 + 8) = v42;
        *(a7 + 16) = v36;
        __swift_destroy_boxed_opaque_existential_1(v109);
        return outlined destroy of NavigationState?(v118, &lazy cache variable for type metadata for NavigationColumnState.ReplacedRoot?, &type metadata for NavigationColumnState.ReplacedRoot);
      }

      goto LABEL_56;
    }

    goto LABEL_54;
  }

LABEL_68:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

double closure #1 in ContainerBackgroundBridge.preferencesDidChange(_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *(a1 + 24);
  v5 = *(a1 + 32);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v9 = Strong[10];
    v14 = Strong[9];
    v10 = Strong[11];
    v11 = Strong[12];
    v12 = Strong[13];
    Strong[9] = v2;
    Strong[10] = v3;
    Strong[11] = v4;
    Strong[12] = v6;
    Strong[13] = v5;
    outlined copy of ContainerBackgroundValue.Content(v2, v3);

    outlined consume of ContainerBackgroundValue?(v14, v9, v10, v11, v12);
    ContainerBackgroundBridge.lastContainerBackground.didset();
    if (v3 >> 62 == 1)
    {

      v13 = ShapeStyle.fallbackColor(in:level:)();
    }

    else
    {
      v13 = 0;
    }

    ContainerBackgroundBridge.updateBridgedBackgroundColor(_:)(v13);
  }

  return result;
}

void ContainerBackgroundBridge.lastContainerBackground.didset()
{
  if (*(v0 + 96) == 1 || (*(v0 + 80) & 0x8000000000000000) != 0)
  {
    v1 = *(v0 + 136);
    if (v1)
    {
      *(v0 + 136) = 0;
      v2 = *(v0 + 144);
      *(v0 + 144) = 0;
      ContainerBackgroundBridge.background.didset(v1, v2);
    }
  }

  v3 = *(v0 + 80);
  v4 = *(v0 + 96);
  if (v4 != 1 && (v3 & 0xC000000000000000) == 0x4000000000000000)
  {
    v9 = *(v0 + 104);
    v10 = *(v0 + 88);
    v11 = *(v0 + 72);
    outlined copy of ContainerBackgroundValue?(v11, *(v0 + 80), v10, *(v0 + 96), v9);
    outlined copy of ContainerBackgroundValue?(v11, v3, v10, v4, v9);
    outlined copy of ContainerBackgroundValue.Content(v11, v3);

    *&v16 = v4;
    *(&v16 + 1) = v9;

    ContainerBackgroundLuminance.init<A>(_:in:)();
    outlined consume of ContainerBackgroundValue?(v11, v3, v10, v4, v9);
    outlined consume of ContainerBackgroundValue?(v11, v3, v10, v4, v9);

    v7 = v20;
    v6 = v21 | (v22 << 32);
    v8 = v23;
  }

  else
  {
    v6 = 0;
    v7 = 0uLL;
    v8 = 1;
  }

  v12 = *(v0 + 128);
  v13 = *(v0 + 132);
  v14 = *(v0 + 133);
  *(v0 + 128) = v6;
  *(v0 + 132) = BYTE4(v6);
  *(v0 + 133) = v8;
  v15 = *(v0 + 112);
  *(v0 + 112) = v7;
  v16 = v15;
  v18 = v13;
  v17 = v12;
  v19 = v14;
  ContainerBackgroundBridge.lastContainerBackgroundLuminance.didset(&v16);
}

void protocol witness for ContainerBackgroundHost.containerBackgroundColor.setter in conformance _UIHostingView<A>(void *a1)
{
  specialized _UIHostingView.containerBackgroundColor.setter(a1);
}

uint64_t $defer #1 <A>() in NavigationStackCoordinator.navigationController(_:didShow:animated:)(uint64_t a1, void *a2)
{
  NavigationStackCoordinator.environment.getter();
  _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v6VGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<PPTTestCaseEnvironmentKey>, &type metadata for PPTTestCaseEnvironmentKey, &protocol witness table for PPTTestCaseEnvironmentKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<PPTTestCaseEnvironmentKey> and conformance EnvironmentPropertyKey<A>();
  if (v7[6])
  {

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    PropertyList.subscript.getter();
  }

  if (!v7[2])
  {
    return outlined destroy of PPTTestCase?(v7, &lazy cache variable for type metadata for PPTTestCase?, &type metadata for PPTTestCase);
  }

  outlined init with take of PPTTestCase(v7, v8);
  v3 = [a2 viewControllers];
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

  PPTTestCase.navigationComplete(depth:)(v5);
  return outlined destroy of PPTTestCase(v8);
}

double protocol witness for NavigationStrategy.environment.getter in conformance NavigationStrategy_Phone@<D0>(uint64_t *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;

  return result;
}

uint64_t closure #1 in static ScrollTransitionModifier._makeView(modifier:inputs:body:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8[2] = type metadata accessor for ScrollTransitionModifier(0, a2, a3, a4);
  v5 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + 72, closure #1 in static PointerOffset.of(_:)partial apply, v8, &type metadata for ScrollTransitionConfiguration, MEMORY[0x1E69E73E0], v5, MEMORY[0x1E69E7410], v6);
  return v8[5];
}

uint64_t implicit closure #7 in static SystemScrollView._makeView(view:inputs:)(__int128 *a1)
{
  _ViewInputs.position.getter();
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  _s7SwiftUI10MutableBoxCys6UInt32VGMaTm_0(0, &lazy cache variable for type metadata for [FocusableBounds], MEMORY[0x1E697E780], MEMORY[0x1E69E62F8]);
  lazy protocol witness table accessor for type FocusableBoundsTransform and conformance FocusableBoundsTransform();
  return Attribute.init<A>(body:value:flags:update:)();
}

void ScrollTransitionModifier.EffectRule.updateValue()(uint64_t a1)
{
  v19[17] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *AGGraphGetValue();
  v6 = *AGGraphGetValue();
  ScrollTransitionModifier.EffectRule.container.getter(*(v1 + 24), v3, v4, v19);
  v8 = v19[0];
  v7 = v19[1];
  v10 = type metadata accessor for ScrollTransitionModifier(0, v3, v4, v9);
  v11 = *(*(v10 - 8) + 8);

  v11(v19, v10);
  v15[0] = v5;
  v15[1] = v6;
  v15[2] = v8;
  v15[3] = v7;
  v17 = a1;
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ScrollTransitionModifier<A>.EffectRule, a1);
  v13 = type metadata accessor for ScrollTransitionModifier.EffectApplicationModifier(0, v3, v4, v12);
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v15, partial apply for closure #1 in StatefulRule.value.setter, v16, v13, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v14);
}

double ScrollTransitionModifier.StageProgress.progress(for:geometryProxy:)(uint64_t *a1, __int128 *a2, uint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = *a1;
  v24 = *(a1 + 3);
  v25 = *(a1 + 1);
  v13 = a1[5];
  v14 = a2[1];
  v38 = *a2;
  v39 = v14;
  v40 = a2[2];
  v41 = *(a2 + 12);
  ScrollTransitionModifier.StageProgress.container.getter(a6, a7, a8, &v29);
  LODWORD(v15) = v37;
  v42[6] = v35;
  v42[7] = v36;
  v43 = v37;
  v42[2] = v31;
  v42[3] = v32;
  v42[4] = v33;
  v42[5] = v34;
  v42[0] = v29;
  v42[1] = v30;
  v17 = type metadata accessor for ScrollTransitionModifier(0, a7, a8, v16);
  (*(*(v17 - 8) + 8))(v42, v17);
  if (v15 == 2)
  {
    Value = AGGraphGetValue();
    v15 = *Value;
    v19 = Value[1];
    *&v29 = v15;
    *(&v29 + 1) = v19;

    v20 = EnvironmentValues.nearestScrollableAxes.getter();

    LOBYTE(v15) = v20 != 1;
  }

  if (!(v13 >> 62))
  {
    *&v26[0] = v12;
    v29 = v38;
    v30 = v39;
    v31 = v40;
    LODWORD(v32) = v41;

    ScrollTransitionModifier.StageProgress.animatedProgress(threshold:axis:geometryProxy:)(v26, v15 & 1, &v29, a3 & 0xFFFFFFFF00000001, a4);
    v21 = v22;
    goto LABEL_7;
  }

  v21 = 1.0;
  if (v13 >> 62 == 1)
  {
    v28 = v12;
    v26[0] = v25;
    v26[1] = v24;
    v27 = v13 & 1;
    v29 = v38;
    v30 = v39;
    v31 = v40;
    LODWORD(v32) = v41;

    v21 = ScrollTransitionModifier.StageProgress.interactiveProgress(threshold:axis:timingCurve:geometryProxy:)(&v28, v15 & 1, v26, &v29, a3 & 1, a4);
LABEL_7:
  }

  return v21;
}

double ScrollTransitionModifier.StageProgress.interactiveProgress(threshold:axis:timingCurve:geometryProxy:)(unint64_t *a1, char a2, uint64_t *a3, __int128 *a4, char a5, unint64_t a6)
{
  v8 = *a1;
  v10 = *a3;
  v9 = a3[1];
  v12 = a3[2];
  v11 = a3[3];
  v13 = *(a3 + 32);
  v14 = a4[1];
  v38 = *a4;
  v39 = v14;
  v40 = a4[2];
  v41 = *(a4 + 12);
  static CoordinateSpaceProtocol<>.scrollView(axis:)();
  GeometryProxy.bounds(of:)();
  outlined destroy of NamedCoordinateSpace(&v37);
  v15 = 0.0;
  if ((v46 & 1) == 0)
  {
    v17 = v42;
    v16 = v43;
    v18 = v44;
    v19 = v45;
    v20 = v42;
    v21 = v43;
    if (a2)
    {
      Height = CGRectGetHeight(*&v20);
      Value = AGGraphGetValue();
      v24 = Value[1];
      v38 = *Value;
      v39 = v24;
      ViewSize.height.getter();
      v26 = v25;
    }

    else
    {
      Height = CGRectGetWidth(*&v20);
      v27 = AGGraphGetValue();
      v28 = v27[1];
      v38 = *v27;
      v39 = v28;
      ViewSize.width.getter();
      v26 = v29;
      v16 = v17;
    }

    v30 = ScrollTransitionConfiguration.Threshold.Storage.resolve(targetLength:containerLength:)(v8, v26, Height);
    v31 = v26 * 0.5 - Height * 0.5;
    v32 = v30 + v31;
    v33 = v31 - v30;
    if (a5)
    {
      v34 = v33;
    }

    else
    {
      v34 = v26;
    }

    if (a5)
    {
      v32 = -Height;
    }

    if (v32 < v34)
    {
      v35 = 0.0;
      if (v16 >= v32)
      {
        v35 = 1.0;
        if (v16 < v34)
        {
          v35 = (v16 - v32) / (v34 - v32);
        }
      }

      *&v38 = v10;
      *(&v38 + 1) = v9;
      *&v39 = v12;
      *(&v39 + 1) = v11;
      LOBYTE(v40) = v13;
      if ((a5 & 1) == 0)
      {
        v35 = 1.0 - v35;
      }

      return UnitCurve.value(at:)(v35);
    }
  }

  return v15;
}

uint64_t ScrollTransitionModifier.EffectRule.container.getter@<X0>(uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X8>)
{
  v6 = type metadata accessor for ScrollTransitionModifier(0, a3, a4, a2);
  Value = AGGraphGetValue();
  v20[0] = *Value;
  v8 = *(Value + 64);
  v10 = *(Value + 16);
  v9 = *(Value + 32);
  v20[3] = *(Value + 48);
  v20[4] = v8;
  v20[1] = v10;
  v20[2] = v9;
  v12 = *(Value + 96);
  v11 = *(Value + 112);
  v13 = *(Value + 80);
  v21 = *(Value + 128);
  v20[6] = v12;
  v20[7] = v11;
  v20[5] = v13;
  v14 = *(Value + 112);
  *(a5 + 96) = *(Value + 96);
  *(a5 + 112) = v14;
  *(a5 + 128) = *(Value + 128);
  v15 = *(Value + 48);
  *(a5 + 32) = *(Value + 32);
  *(a5 + 48) = v15;
  v16 = *(Value + 80);
  *(a5 + 64) = *(Value + 64);
  *(a5 + 80) = v16;
  v17 = *(Value + 16);
  *a5 = *Value;
  *(a5 + 16) = v17;
  return (*(*(v6 - 8) + 16))(v19, v20, v6);
}

uint64_t ScrollTransitionModifier.EffectApplicationModifier.body(content:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>, double a6@<D0>, double a7@<D1>)
{
  v29 = a1;
  v30 = a2;
  v31 = a5;
  v11 = type metadata accessor for ScrollTransitionModifier.EffectApplicationModifier(255, a3, a4, a3);
  swift_getWitnessTable(protocol conformance descriptor for ScrollTransitionModifier<A>.EffectApplicationModifier, v11);
  v12 = type metadata accessor for _ViewModifier_Content();
  v13 = type metadata accessor for PlaceholderContentView();
  swift_getWitnessTable(MEMORY[0x1E697FEC8], v13);
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E697FDF8], v12, OpaqueTypeMetadata2);
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v38 = v12;
  v39 = OpaqueTypeMetadata2;
  v40 = WitnessTable;
  v41 = OpaqueTypeConformance2;
  v17 = swift_getOpaqueTypeMetadata2();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v28 - v22;
  v32 = a3;
  v33 = a4;
  v34 = a6;
  v35 = a7;
  v36 = v29;
  v37 = v30;
  v24 = swift_checkMetadataState();
  v25 = swift_checkMetadataState();
  View.animation<A>(_:body:)();
  v38 = v24;
  v39 = v25;
  v40 = WitnessTable;
  v41 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  static ViewBuilder.buildExpression<A>(_:)();
  v26 = *(v18 + 8);
  v26(v20, v17);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v26)(v23, v17);
}

BOOL protocol witness for Scrollable.allowsContentOffsetAdjustments.getter in conformance ScrollViewScrollable(uint64_t a1)
{
  AGGraphClearUpdate();
  WeakValue = AGGraphGetWeakValue();
  if (WeakValue)
  {
    v2 = *WeakValue;
    v3 = WeakValue[2];
    v13[1] = WeakValue[1];
    v13[2] = v3;
    v13[0] = v2;
    v4 = WeakValue[3];
    v5 = WeakValue[4];
    v6 = WeakValue[5];
    *&v14[12] = *(WeakValue + 92);
    v13[4] = v5;
    *v14 = v6;
    v13[3] = v4;
    v7 = WeakValue[1];
    v15 = *WeakValue;
    v16 = v7;
    v8 = WeakValue[2];
    v9 = WeakValue[3];
    *(v20 + 12) = *(WeakValue + 92);
    v10 = WeakValue[5];
    v19 = WeakValue[4];
    v20[0] = v10;
    v17 = v8;
    v18 = v9;
    outlined init with copy of SystemScrollLayoutState(v13, v21);
    v21[4] = v19;
    *v22 = v20[0];
    *&v22[12] = *(v20 + 12);
    v21[0] = v15;
    v21[1] = v16;
    v21[2] = v17;
    v21[3] = v18;
    v11 = *(v20 + 12) >> 32;
    AGGraphSetUpdate();
    if (v11 >> 60 == 15)
    {
      return 0;
    }

    else
    {
      outlined destroy of ResolvedScrollBehavior?(v21, &lazy cache variable for type metadata for SystemScrollLayoutState?, &type metadata for SystemScrollLayoutState, MEMORY[0x1E69E6720]);
      return v11 >> 62 != 1;
    }
  }

  else
  {
    AGGraphSetUpdate();
    return 0;
  }
}

uint64_t protocol witness for Rule.value.getter in conformance ScrollTransitionModifier<A>.ConfigurationTransaction@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = ScrollTransitionModifier.ConfigurationTransaction.value.getter(*v2, *(a1 + 16), *(a1 + 24));
  *a2 = result;
  return result;
}

void *assignWithCopy for ScrollTransitionModifier.EffectApplicationModifier(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];
  v3 = a2[3];
  a1[2] = a2[2];
  a1[3] = v3;

  return a1;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance ListStackBehavior(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  if (*(a1 + 9) == 1)
  {
    if (*&v2 | v3)
    {
      if (*&v2 ^ 1 | *(a1 + 8))
      {
        if (*(a2 + 9) && __PAIR128__(v5, *&v4) >= 2)
        {
          return 1;
        }
      }

      else if (*(a2 + 9) && !(*&v4 ^ 1 | v5))
      {
        return 1;
      }
    }

    else
    {
      v6 = *&v4 | v5;
      if (*(a2 + 9))
      {
        v7 = v6 == 0;
      }

      else
      {
        v7 = 0;
      }

      if (v7)
      {
        return 1;
      }
    }
  }

  else if ((*(a2 + 9) & 1) == 0)
  {
    if (v3)
    {
      if (v5)
      {
        return 1;
      }
    }

    else if ((v5 & 1) == 0 && v2 == v4)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t _s7SwiftUI14EnvironmentKeyPAASQ5ValueRpzrlE12_valuesEqualySbAE_AEtFZAA018SearchFocusContextD033_01524358DA8FEB8BCC0A94C08F00494ALLV_Tt1g5(uint64_t a1, uint64_t a2)
{
  outlined init with copy of AnyAccessibilityValue?(a1, v8, &lazy cache variable for type metadata for SearchFocusContext?, &type metadata for SearchFocusContext);
  outlined init with copy of AnyAccessibilityValue?(a2, v10, &lazy cache variable for type metadata for SearchFocusContext?, &type metadata for SearchFocusContext);
  if (!v9)
  {
    if (!v11)
    {
      outlined destroy of AnyAccessibilityValue?(v8, &lazy cache variable for type metadata for SearchFocusContext?, &type metadata for SearchFocusContext);
      v3 = 1;
      return v3 & 1;
    }

LABEL_8:
    outlined destroy of (Toolbar.UpdateContext?, Toolbar.UpdateContext?)(v8, &lazy cache variable for type metadata for (SearchFocusContext?, SearchFocusContext?), &lazy cache variable for type metadata for SearchFocusContext?, &type metadata for SearchFocusContext);
    v3 = 0;
    return v3 & 1;
  }

  outlined init with copy of AnyAccessibilityValue?(v8, &v6, &lazy cache variable for type metadata for SearchFocusContext?, &type metadata for SearchFocusContext);
  if (!v11)
  {
    outlined destroy of SearchFocusContext(&v6);
    goto LABEL_8;
  }

  v5[0] = v10[0];
  v5[1] = v10[1];
  v5[2] = v11;
  v5[3] = v12;
  v5[4] = v13;
  if (v6 == *&v10[0])
  {
    v3 = MEMORY[0x18D00E7E0](&v7, v5 + 8);
  }

  else
  {
    v3 = 0;
  }

  outlined destroy of SearchFocusContext(v5);
  outlined destroy of SearchFocusContext(&v6);
  outlined destroy of AnyAccessibilityValue?(v8, &lazy cache variable for type metadata for SearchFocusContext?, &type metadata for SearchFocusContext);
  return v3 & 1;
}

unint64_t specialized closure #1 in BidirectionalCollection.last(where:)@<X0>(unint64_t *a1@<X0>, uint64_t *a2@<X1>, unint64_t *a3@<X8>)
{
  result = *a1;
  v5 = *a2;
  if ((v5 & 0xC000000000000001) != 0)
  {
    result = MEMORY[0x18D00E9C0](result);
    goto LABEL_5;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    result = *(v5 + 8 * result + 32);
LABEL_5:
    *a3 = result;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t outlined init with copy of ToolbarStorage.Entry(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t lazy protocol witness table accessor for type ToolbarStorage.ID and conformance ToolbarStorage.ID()
{
  result = lazy protocol witness table cache variable for type ToolbarStorage.ID and conformance ToolbarStorage.ID;
  if (!lazy protocol witness table cache variable for type ToolbarStorage.ID and conformance ToolbarStorage.ID)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ToolbarStorage.ID, &type metadata for ToolbarStorage.ID, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ToolbarStorage.ID and conformance ToolbarStorage.ID);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ToolbarStorage.ID and conformance ToolbarStorage.ID;
  if (!lazy protocol witness table cache variable for type ToolbarStorage.ID and conformance ToolbarStorage.ID)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ToolbarStorage.ID, &type metadata for ToolbarStorage.ID, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ToolbarStorage.ID and conformance ToolbarStorage.ID);
  }

  return result;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ToolbarStorage.Entry.ID(uint64_t a1)
{
  Hasher.init(_seed:)();
  AnyHashable.hash(into:)();
  outlined init with copy of ToolbarItemPlacement.Role?(v1 + 40, &v5, &lazy cache variable for type metadata for ToolbarItemPlacement.Role?, &type metadata for ToolbarItemPlacement.Role, MEMORY[0x1E69E6720], _s7SwiftUI7BindingVySiGMaTm_0);
  if (v6[24] == 255)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v3 = v5;
    v4[0] = *v6;
    *(v4 + 9) = *&v6[9];
    Hasher._combine(_:)(1u);
    ToolbarItemPlacement.Role.hash(into:)(v7);
    outlined destroy of ToolbarItemPlacement.Role(&v3);
  }

  return Hasher._finalize()();
}

uint64_t initializeWithCopy for ToolbarStorage.Entry.ID(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  *(a1 + 24) = v4;
  (**(v4 - 8))();
  if (*(a2 + 80) == 1)
  {
    v5 = *(a2 + 64);
    *(a1 + 64) = v5;
    (**(v5 - 8))(a1 + 40, a2 + 40);
    *(a1 + 80) = 1;
  }

  else
  {
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 65) = *(a2 + 65);
  }

  return a1;
}

void specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v74 = type metadata accessor for ToolbarStorage.GroupItem.GroupSubItem(0);
  v73 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v72 = &v68[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11);
  v83 = &v68[-v12];
  v13 = type metadata accessor for ToolbarStorage.GroupItem(0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v84 = &v68[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = type metadata accessor for ToolbarStorage.Item(0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v77 = &v68[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v89 = type metadata accessor for ToolbarStorage.Entry.Kind(0);
  MEMORY[0x1EEE9AC00](v89);
  v18 = &v68[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v88 = type metadata accessor for ToolbarStorage.Entry(0);
  MEMORY[0x1EEE9AC00](v88);
  v87 = &v68[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v20);
  v90 = &v68[-v21];
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v68[-v24];
  v70 = a2;
  if (a3 == a2)
  {
    return;
  }

  v26 = *a4;
  v27 = *(v23 + 72);
  v71 = 0x800000018CD4EDC0;
  v28 = v26 + v27 * (a3 - 1);
  v85 = -v27;
  v29 = a1 - a3;
  v86 = v26;
  v69 = v27;
  v30 = v26 + v27 * a3;
  v76 = "swiftui-fixed-spacer";
  v75 = "@UIActivityViewController8@?0";
LABEL_6:
  v81 = a3;
  v78 = v30;
  v79 = v29;
  v80 = v28;
  while (1)
  {
    outlined init with copy of ToolbarStorage.GroupItem.GroupSubItem(v30, v25, type metadata accessor for ToolbarStorage.Entry);
    outlined init with copy of ToolbarStorage.GroupItem.GroupSubItem(v28, v90, type metadata accessor for ToolbarStorage.Entry);
    outlined init with copy of ToolbarStorage.GroupItem.GroupSubItem(v25, v18, type metadata accessor for ToolbarStorage.Entry.Kind);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 1)
    {
      break;
    }

    if (EnumCaseMultiPayload == 2)
    {
      v39 = v18[1];
      v96 = *v18;
      v40 = v18[2];
      v41 = v18[3];
      v97 = v39;
      v98 = v40;
      v42 = v18[4];
      v99 = v41;
      v100 = v42;
      if (v96)
      {
        v43 = 0xD000000000000017;
      }

      else
      {
        v43 = 0xD000000000000014;
      }

      v44 = v76;
      if (!v96)
      {
        v44 = v75;
      }

      v91 = v43;
      v92 = v44 | 0x8000000000000000;
      AnyHashable.init<A>(_:)();
      outlined init with copy of ToolbarItemPlacement.Role(&v96 + 8, v103);
      outlined destroy of ToolbarStorage.SpacerItem(&v96);
      v101[0] = v93;
      v101[1] = v94;
      v102 = v95;
      if (!*(a5 + 16))
      {
LABEL_4:
        outlined destroy of ToolbarStorage.Entry.ID(v101);
        outlined destroy of ToolbarStorage.GroupItem.GroupSubItem(v90, type metadata accessor for ToolbarStorage.Entry);
        outlined destroy of ToolbarStorage.GroupItem.GroupSubItem(v25, type metadata accessor for ToolbarStorage.Entry);
LABEL_5:
        a3 = v81 + 1;
        v28 = v80 + v69;
        v29 = v79 - 1;
        v30 = v78 + v69;
        if (v81 + 1 == v70)
        {
          return;
        }

        goto LABEL_6;
      }
    }

    else
    {
      if (EnumCaseMultiPayload == 3)
      {
        *&v96 = 0x2D69757466697773;
        v32 = 0xEE00686372616573;
      }

      else
      {
        *&v96 = 0xD000000000000010;
        v32 = v71;
      }

      *(&v96 + 1) = v32;
      AnyHashable.init<A>(_:)();
      v104 = 0;
      memset(v103, 0, sizeof(v103));
      v105 = -1;
      if (!*(a5 + 16))
      {
        goto LABEL_4;
      }
    }

LABEL_34:
    v60 = specialized __RawDictionaryStorage.find<A>(_:)(v101);
    if ((v61 & 1) == 0)
    {
      goto LABEL_4;
    }

    v62 = *(*(a5 + 56) + 8 * v60);
    outlined destroy of ToolbarStorage.Entry.ID(v101);
    ToolbarStorage.Entry.id.getter(v101);
    if (!*(a5 + 16))
    {
      goto LABEL_4;
    }

    v63 = specialized __RawDictionaryStorage.find<A>(_:)(v101);
    if ((v64 & 1) == 0)
    {
      goto LABEL_4;
    }

    v65 = *(*(a5 + 56) + 8 * v63);
    outlined destroy of ToolbarStorage.Entry.ID(v101);
    outlined destroy of ToolbarStorage.GroupItem.GroupSubItem(v90, type metadata accessor for ToolbarStorage.Entry);
    outlined destroy of ToolbarStorage.GroupItem.GroupSubItem(v25, type metadata accessor for ToolbarStorage.Entry);
    if (v62 < v65)
    {
      if (!v86)
      {
        goto LABEL_43;
      }

      v66 = v87;
      outlined init with take of ToolbarStorage.Item(v30, v87, type metadata accessor for ToolbarStorage.Entry);
      swift_arrayInitWithTakeFrontToBack();
      outlined init with take of ToolbarStorage.Item(v66, v28, type metadata accessor for ToolbarStorage.Entry);
      v28 += v85;
      v30 += v85;
      if (!__CFADD__(v29++, 1))
      {
        continue;
      }
    }

    goto LABEL_5;
  }

  if (!EnumCaseMultiPayload)
  {
    v33 = v77;
    outlined init with take of ToolbarStorage.Item(v18, v77, type metadata accessor for ToolbarStorage.Item);
    v34 = *(v33 + 1);
    v35 = *(v33 + 4);
    v36 = *(v33 + 5);
    *&v96 = *v33;
    *(&v96 + 1) = v34;
    v97 = *(v33 + 1);
    *&v98 = v35;
    *(&v98 + 1) = v36;
    lazy protocol witness table accessor for type ToolbarStorage.ID and conformance ToolbarStorage.ID();

    AnyHashable.init<A>(_:)();
    outlined init with copy of ToolbarItemPlacement.Role((v33 + 112), v103);
    v37 = type metadata accessor for ToolbarStorage.Item;
    v38 = v33;
    goto LABEL_33;
  }

  v45 = v84;
  outlined init with take of ToolbarStorage.Item(v18, v84, type metadata accessor for ToolbarStorage.GroupItem);
  v46 = *(v45 + 19);
  if (*(v46 + 16))
  {
    v47 = v83;
    outlined init with copy of ToolbarStorage.GroupItem.GroupSubItem(v46 + ((*(v73 + 80) + 32) & ~*(v73 + 80)), v83, type metadata accessor for ToolbarStorage.GroupItem.GroupSubItem);
    v48 = v72;
    outlined init with copy of ToolbarStorage.GroupItem.GroupSubItem(v47, v72, type metadata accessor for ToolbarStorage.GroupItem.GroupSubItem);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v49 = v48[3];
      v98 = v48[2];
      v99 = v49;
      v100 = v48[4];
      v50 = *v48;
      v97 = v48[1];
      v96 = v50;
      _ViewList_ID.init(implicitID:)();
      v51 = *(&v93 + 1);
      v52 = v93;
      if (v96)
      {
        v53 = 0xD000000000000017;
      }

      else
      {
        v53 = 0xD000000000000014;
      }

      v54 = v76;
      if (!v96)
      {
        v54 = v75;
      }

      v55 = v54 | 0x8000000000000000;
      outlined destroy of ToolbarStorage.SpacerItem(&v96);
      v82 = 0uLL;
    }

    else
    {
      v56 = v77;
      outlined init with take of ToolbarStorage.Item(v48, v77, type metadata accessor for ToolbarStorage.Item);
      v52 = *v56;
      v51 = v56[1];
      *&v82 = v56[2];
      v57 = v56[4];
      *(&v82 + 1) = v56[3];
      v55 = v56[5];

      v58 = v56;
      v53 = v57;
      outlined destroy of ToolbarStorage.GroupItem.GroupSubItem(v58, type metadata accessor for ToolbarStorage.Item);
    }

    outlined destroy of ToolbarStorage.GroupItem.GroupSubItem(v83, type metadata accessor for ToolbarStorage.GroupItem.GroupSubItem);
    *&v96 = v52;
    *(&v96 + 1) = v51;
    v97 = v82;
    *&v98 = v53;
    *(&v98 + 1) = v55;
    lazy protocol witness table accessor for type ToolbarStorage.ID and conformance ToolbarStorage.ID();

    AnyHashable.init<A>(_:)();

    v59 = v84;
    outlined init with copy of ToolbarItemPlacement.Role((v84 + 80), v103);
    v37 = type metadata accessor for ToolbarStorage.GroupItem;
    v38 = v59;
LABEL_33:
    outlined destroy of ToolbarStorage.GroupItem.GroupSubItem(v38, v37);
    if (!*(a5 + 16))
    {
      goto LABEL_4;
    }

    goto LABEL_34;
  }

  __break(1u);
LABEL_43:
  __break(1u);
}

{
  v10 = swift_allocObject();
  v11 = *(a5 + 48);
  *(v10 + 48) = *(a5 + 32);
  *(v10 + 64) = v11;
  *(v10 + 80) = *(a5 + 64);
  v12 = *(a5 + 16);
  *(v10 + 16) = *a5;
  *(v10 + 32) = v12;
  v33 = a2;
  if (a3 == a2)
  {
LABEL_17:

    return;
  }

  v13 = *a4;
  v35 = *(a5 + 56);
  v14 = *(a5 + 64);
  v15 = (v13 + 40 * a3);
  v16 = a1 - a3;
LABEL_4:
  v34 = a3;
  v17 = v13 + 40 * a3;
  v19 = *(v17 + 8);
  v18 = *(v17 + 16);
  v20 = v16;
  v21 = v15;
  while (1)
  {
    v22 = *(v21 - 3);
    v36 = *(v21 - 4);
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    ClosedRange<>.meanBound.getter();
    v24 = vabdd_f64(v23, v35);
    ClosedRange<>.meanBound.getter();
    v26 = v25;
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v27 = vabdd_f64(v26, v35);
    if (v14)
    {
      if (v19 != v36)
      {
        if (v19 >= v36)
        {
          goto LABEL_3;
        }

        goto LABEL_13;
      }

LABEL_10:
      if (v24 >= v27)
      {
        goto LABEL_3;
      }

      goto LABEL_13;
    }

    if (v18 == v22)
    {
      goto LABEL_10;
    }

    if (v22 >= v18)
    {
      goto LABEL_3;
    }

LABEL_13:
    if (!v13)
    {
      break;
    }

    v28 = *v21;
    v19 = v21[1];
    v18 = v21[2];
    v29 = *(v21 + 3);
    v30 = *(v21 + 4);
    v31 = *(v21 - 3);
    *v21 = *(v21 - 5);
    *(v21 + 1) = v31;
    v21[4] = *(v21 - 1);
    *(v21 - 4) = v19;
    *(v21 - 3) = v18;
    *(v21 - 2) = v29;
    *(v21 - 1) = v30;
    *(v21 - 5) = v28;
    v21 -= 5;
    if (__CFADD__(v20++, 1))
    {
LABEL_3:
      ++a3;
      v15 += 5;
      --v16;
      if (v34 + 1 == v33)
      {
        goto LABEL_17;
      }

      goto LABEL_4;
    }
  }

  __break(1u);
}

uint64_t UIKitToolbarStrategy.makeContent(entry:)(uint64_t a1)
{
  v2 = type metadata accessor for ToolbarStorage.GroupItem(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = (v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ToolbarStorage.Item(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ToolbarStorage.Entry.Kind(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = (v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of ToolbarStorage.Entry.Kind(a1, v14, type metadata accessor for ToolbarStorage.Entry.Kind);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 2:
      v17 = v14[1];
      v22[0] = *v14;
      v22[1] = v17;
      v18 = v14[3];
      v22[2] = v14[2];
      v22[3] = v18;
      v22[4] = v14[4];
      if (LOBYTE(v22[0]))
      {
        v16 = 0xD000000000000017;
      }

      else
      {
        v16 = 0xD000000000000014;
      }

      outlined destroy of ToolbarStorage.SpacerItem(v22);
      break;
    case 1:
      outlined init with take of ToolbarStorage.NavigationProperties(v14, v4, type metadata accessor for ToolbarStorage.GroupItem);
      if (v4[1])
      {
        v16 = *v4;
      }

      else
      {
        UUID.init()();
        v16 = UUID.uuidString.getter();
        (*(v6 + 8))(v8, v5);
      }

      v19 = type metadata accessor for ToolbarStorage.GroupItem;
      v20 = v4;
      goto LABEL_17;
    case 0:
      outlined init with take of ToolbarStorage.NavigationProperties(v14, v11, type metadata accessor for ToolbarStorage.Item);
      if (*(v11 + 5))
      {
        v16 = *(v11 + 4);
      }

      else
      {
        UUID.init()();
        v16 = UUID.uuidString.getter();
        (*(v6 + 8))(v8, v5);
      }

      v19 = type metadata accessor for ToolbarStorage.Item;
      v20 = v11;
LABEL_17:
      outlined destroy of ToolbarStorage.NavigationProperties(v20, v19);
      return v16;
    default:
      outlined destroy of ToolbarStorage.NavigationProperties(v14, type metadata accessor for ToolbarStorage.Entry.Kind);
      return 0;
  }

  return v16;
}

uint64_t initializeWithCopy for BarItemView(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  *(a1 + 24) = v4;
  (**(v4 - 8))();
  v5 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v5;
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  v6 = *(a2 + 88);
  *(a1 + 88) = v6;
  *(a1 + 96) = *(a2 + 96);

  v7 = v6;
  swift_unknownObjectWeakCopyInit();
  return a1;
}

void type metadata accessor for UIKitBarItemHost<BarItemView>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, uint64_t))
{
  if (!*a2)
  {
    v6 = lazy protocol witness table accessor for type BarItemView and conformance BarItemView();
    v7 = a3(a1, &type metadata for BarItemView, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void _s7SwiftUI16UIKitBarItemHostCyAA0dE4ViewVGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t lazy protocol witness table accessor for type BarItemViewGraph and conformance BarItemViewGraph()
{
  result = lazy protocol witness table cache variable for type BarItemViewGraph and conformance BarItemViewGraph;
  if (!lazy protocol witness table cache variable for type BarItemViewGraph and conformance BarItemViewGraph)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for BarItemViewGraph, &unk_1EFFFE0A8, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type BarItemViewGraph and conformance BarItemViewGraph);
  }

  return result;
}

void type metadata completion function for UIKitBarButtonItem(uint64_t a1)
{
  type metadata accessor for ToolbarStorage.Item?(319, &lazy cache variable for type metadata for ToolbarStorage.Item?, type metadata accessor for ToolbarStorage.Item, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for ToolbarStorage.Item?(319, &lazy cache variable for type metadata for PlatformItemList.Item?, type metadata accessor for PlatformItemList.Item, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t closure #1 in ViewRendererHost.platformItemList.getter@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  GraphHost.instantiateIfNeeded()();
  lazy protocol witness table accessor for type PlatformItemListViewGraph and conformance PlatformItemListViewGraph();
  if (ViewGraph.subscript.getter())
  {
    result = PlatformItemListViewGraph.readAndUpdate(graph:)(a1);
  }

  else
  {
    result = MEMORY[0x1E69E7CC0];
  }

  *a2 = result;
  return result;
}

double protocol witness for static PreferenceKey.defaultValue.getter in conformance PlatformItemList.Key@<D0>(void *a1@<X8>)
{
  if (one-time initialization token for defaultValue != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = static PlatformItemList.Key.defaultValue;

  return result;
}

double MergePlatformItemsView.Transform.list.getter(unint64_t a1)
{
  if (*MEMORY[0x1E698D3F8] != HIDWORD(a1))
  {
    AGGraphGetValue();
  }

  return result;
}

uint64_t PlatformItemListImageRepresentable.PlatformRepresentation.value.getter(uint64_t a1)
{
  v1 = type metadata accessor for PlatformItemList.Item(0);
  v2 = (v1 - 8);
  v41 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  Value = AGGraphGetValue();
  v6 = Value[3];
  v8 = *Value;
  v7 = Value[1];
  v62 = Value[2];
  v63 = v6;
  v60 = v8;
  v61 = v7;
  v9 = Value[6];
  v11 = Value[4];
  v10 = Value[5];
  v67 = Value[7];
  v66 = v9;
  v64 = v11;
  v65 = v10;
  v13 = Value[9];
  v12 = Value[10];
  v14 = Value[8];
  *(v70 + 11) = *(Value + 171);
  v70[0] = v12;
  v68 = v14;
  v69 = v13;
  memset(v59, 0, sizeof(v59));
  outlined init with copy of Image.Resolved(&v60, v57);
  v15 = *(AGGraphGetValue() + 192);

  v16 = *(AGGraphGetValue() + 200);
  v50 = v68;
  v51 = v69;
  v52[0] = v70[0];
  *(v52 + 11) = *(v70 + 11);
  v46 = v64;
  v47 = v65;
  v48 = v66;
  v49 = v67;
  v42 = v60;
  v43 = v61;
  v44 = v62;
  v45 = v63;
  destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation();
  v4[32] = 0;
  *(v4 + 3) = 0;
  *(v4 + 8) = 0u;
  *(v4 + 5) = -1;
  v4[56] = 1;
  _s7SwiftUI5ImageVAAE8ResolvedVSgWOi0_(v53);
  v17 = v53[9];
  *(v4 + 12) = v53[8];
  *(v4 + 13) = v17;
  *(v4 + 14) = v54[0];
  *(v4 + 235) = *(v54 + 11);
  v18 = v53[5];
  *(v4 + 8) = v53[4];
  *(v4 + 9) = v18;
  v19 = v53[7];
  *(v4 + 10) = v53[6];
  *(v4 + 11) = v19;
  v20 = v53[1];
  *(v4 + 4) = v53[0];
  *(v4 + 5) = v20;
  v21 = v53[3];
  *(v4 + 6) = v53[2];
  *(v4 + 7) = v21;
  *(v4 + 19) = 0u;
  *(v4 + 20) = 0u;
  *(v4 + 17) = 0u;
  *(v4 + 18) = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 42) = 0x3FFFFFFFCLL;
  *(v4 + 344) = 0u;
  *(v4 + 360) = 0u;
  *(v4 + 376) = 0u;
  *(v4 + 392) = 0u;
  *(v4 + 51) = 0;
  *(v4 + 52) = 1;
  *(v4 + 424) = 0u;
  *(v4 + 440) = 0u;
  *(v4 + 456) = 0u;
  v4[472] = 0;
  *(v4 + 60) = 0;
  *(v4 + 488) = 0u;
  v4[504] = 0;
  *(v4 + 32) = 0u;
  v4[528] = 4;
  *(v4 + 536) = 0u;
  *(v4 + 552) = 0u;
  *(v4 + 568) = 0u;
  *(v4 + 584) = 0u;
  *(v4 + 600) = 0u;
  *(v4 + 616) = 0u;
  *(v4 + 632) = 0u;
  *(v4 + 648) = 0u;
  *(v4 + 664) = 0u;
  *(v4 + 680) = 0u;
  *(v4 + 696) = 0u;
  *(v4 + 712) = 0u;
  *(v4 + 728) = 0u;
  *(v4 + 744) = 0u;
  *(v4 + 760) = 0u;
  *(v4 + 776) = 0u;
  *(v4 + 792) = 0u;
  *(v4 + 808) = 0u;
  *(v4 + 824) = 0u;
  *(v4 + 840) = 0u;
  *(v4 + 107) = 0;
  *(v4 + 108) = 1;
  *(v4 + 872) = 0u;
  *(v4 + 888) = 0u;
  *(v4 + 904) = 0u;
  *(v4 + 920) = 0u;
  *(v4 + 936) = 0u;
  *(v4 + 476) = 1283;
  v4[954] = 3;
  v22 = v2[30];
  v23 = type metadata accessor for CommandOperation(0);
  (*(*(v23 - 8) + 56))(&v4[v22], 1, 1, v23);
  v4[v2[31]] = 0;
  v4[v2[32]] = 0;
  v4[v2[33]] = 2;
  v4[v2[34]] = 0;
  v4[v2[35]] = 0;
  v24 = v2[36];
  *v4 = 0;
  v25 = *(v4 + 13);
  v57[8] = *(v4 + 12);
  v57[9] = v25;
  v58[0] = *(v4 + 14);
  *(v58 + 11) = *(v4 + 235);
  v26 = *(v4 + 9);
  v57[4] = *(v4 + 8);
  v57[5] = v26;
  v27 = *(v4 + 11);
  v57[6] = *(v4 + 10);
  v57[7] = v27;
  v28 = *(v4 + 5);
  v57[0] = *(v4 + 4);
  v57[1] = v28;
  v29 = *(v4 + 7);
  v57[2] = *(v4 + 6);
  v57[3] = v29;

  _s7SwiftUI16PlatformItemListV0D0V13AccessibilityVSgWOhTm_0(v57, &lazy cache variable for type metadata for Image.Resolved?, MEMORY[0x1E6981730]);
  v30 = v51;
  *(v4 + 12) = v50;
  *(v4 + 13) = v30;
  *(v4 + 14) = v52[0];
  *(v4 + 235) = *(v52 + 11);
  v31 = v47;
  *(v4 + 8) = v46;
  *(v4 + 9) = v31;
  v32 = v49;
  *(v4 + 10) = v48;
  *(v4 + 11) = v32;
  v33 = v43;
  *(v4 + 4) = v42;
  *(v4 + 5) = v33;
  v34 = v45;
  *(v4 + 6) = v44;
  *(v4 + 7) = v34;
  v35 = *(v4 + 456);
  v55[2] = *(v4 + 440);
  v55[3] = v35;
  v56 = v4[472];
  v36 = *(v4 + 424);
  v55[0] = *(v4 + 408);
  v55[1] = v36;
  _s7SwiftUI16PlatformItemListV0D0V13AccessibilityVSgWOhTm_0(v55, &lazy cache variable for type metadata for PlatformItemList.Item.SelectionBehavior?, &type metadata for PlatformItemList.Item.SelectionBehavior);
  *(v4 + 408) = xmmword_18CD633F0;
  *(v4 + 424) = 0u;
  *(v4 + 440) = 0u;
  *(v4 + 456) = 0u;
  v4[472] = 0;
  outlined assign with take of PlatformItemList.Item.Accessibility?(v59, (v4 + 536), &lazy cache variable for type metadata for PlatformItemList.Item.Accessibility?, &type metadata for PlatformItemList.Item.Accessibility);
  *&v4[v24] = v15;
  *(v4 + 6) = v16;
  _s7SwiftUI16CommandOperationVSgMaTm_0(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<PlatformItemList.Item>, type metadata accessor for PlatformItemList.Item, MEMORY[0x1E69E6F90]);
  v37 = (*(v41 + 80) + 32) & ~*(v41 + 80);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_18CD63400;
  outlined init with take of PlatformItemList.Item(v4, v38 + v37);
  return v38;
}

double _s7SwiftUI5ImageVAAE8ResolvedVSgWOi0_(uint64_t a1)
{
  result = 0.0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 128) = 0x1FFFFFFFCLL;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 183) = 0;
  return result;
}

uint64_t outlined destroy of PlatformItemList.Item.Accessibility?(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s7SwiftUI16PlatformItemListV0D0V13AccessibilityVSgWOhTm_0(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  _s7SwiftUI5ImageVAAE8ResolvedVSgMaTm_0(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void type metadata accessor for Image.Resolved?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void _s7SwiftUI5ImageVAAE8ResolvedVSgMaTm_0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t getEnumTagSinglePayload for PlatformItemList.Item.SelectionBehavior(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 65))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

double closure #1 in PlatformItemListNamedImageRepresentable.NamedResolvedRule.value.getter(uint64_t *a1, uint64_t a2)
{
  _s7SwiftUI16CommandOperationVSgMaTm_0(0, &lazy cache variable for type metadata for Text.Style?, MEMORY[0x1E6981008], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v35 - v4;
  v6 = type metadata accessor for ImageResolutionContext();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  Value = AGGraphGetValue();
  v10 = *(Value + 16);
  __dst = *(Value + 8);
  v45 = v10;
  v11 = type metadata accessor for Text.Style();
  (*(*(v11 - 8) + 56))(v5, 1, 1, v11);

  MEMORY[0x18D008220](v12);
  ImageResolutionContext.init(environment:textStyle:transaction:)();
  AGGraphGetValue();

  Image.resolveNamedImage(in:)();

  v43 = __dst;
  v42 = v45;
  v41 = v46;
  v40 = v47;
  v39 = v48;
  v38 = v49;
  v13 = *a1;
  v14 = *(*a1 + 16);
  if (v14)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v36 = a1;
    v35 = v8;
    if (isUniquelyReferenced_nonNull_native)
    {
      if (v13[2])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v13 = specialized _ArrayBuffer._consumeAndCreateNew()(v13);
      if (v13[2])
      {
LABEL_4:
        v16 = 0;
        v17 = *(type metadata accessor for PlatformItemList.Item(0) - 8);
        v18 = *(v17 + 72);
        v19 = v14 - 1;
        v20 = (v13 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + 296);
        v37 = v19;
        do
        {
          memmove(&__dst, v20 - 29, 0xBBuLL);
          if (_s7SwiftUI5ImageVAAE8ResolvedVSgWOg(&__dst) != 1)
          {
            v22 = *(v20 - 5);
            v21 = *(v20 - 4);
            v23 = *(v20 - 3);
            v24 = *(v20 - 2);
            v25 = *(v20 - 1);
            v26 = *v20;
            v27 = v43;
            v28 = v42;
            *(v20 - 5) = v43;
            *(v20 - 4) = v28;
            v29 = v41;
            v30 = v40;
            *(v20 - 3) = v41;
            *(v20 - 2) = v30;
            v31 = v39;
            v32 = v38;
            *(v20 - 1) = v39;
            *v20 = v32;
            outlined copy of Image.NamedResolved?(v27, v28, v29, v30, v31, v32);
            v33 = v21;
            v19 = v37;
            outlined consume of Image.NamedResolved?(v22, v33, v23, v24, v25, v26);
          }

          if (v19 == v16)
          {
            goto LABEL_10;
          }

          ++v16;
          v20 = (v20 + v18);
        }

        while (v16 < v13[2]);
      }
    }

    __break(1u);
LABEL_10:
    *v36 = v13;
    v8 = v35;
  }

  _s7SwiftUI16CommandOperationVWOhTm_0(v8, MEMORY[0x1E697FE88]);
  return outlined consume of Image.NamedResolved?(v43, v42, v41, v40, v39, v38);
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.ToolbarButtonHoverShapeKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.ToolbarButtonHoverShapeKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.ToolbarButtonHoverShapeKey> and conformance EnvironmentPropertyKey<A>)
  {
    _s7SwiftUI23InterfaceIdiomPredicateVyAA03MaccD0VGMaTm_2(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ToolbarButtonHoverShapeKey>, &type metadata for EnvironmentValues.ToolbarButtonHoverShapeKey, &protocol witness table for EnvironmentValues.ToolbarButtonHoverShapeKey, MEMORY[0x1E697FE38]);
    result = swift_getWitnessTable(MEMORY[0x1E697FE40], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.ToolbarButtonHoverShapeKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

uint64_t outlined init with copy of CustomHoverEffectModifier<HoverEffect>(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ToggleStyleModifier<ButtonToggleStyle>(0, &lazy cache variable for type metadata for CustomHoverEffectModifier<HoverEffect>, lazy protocol witness table accessor for type HoverEffect and conformance HoverEffect, &type metadata for HoverEffect, type metadata accessor for CustomHoverEffectModifier);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of CustomHoverEffectModifier<HoverEffect>(uint64_t a1)
{
  type metadata accessor for ToggleStyleModifier<ButtonToggleStyle>(0, &lazy cache variable for type metadata for CustomHoverEffectModifier<HoverEffect>, lazy protocol witness table accessor for type HoverEffect and conformance HoverEffect, &type metadata for HoverEffect, type metadata accessor for CustomHoverEffectModifier);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t one-time initialization function for automatic()
{
  KeyPath = swift_getKeyPath();
  type metadata accessor for CustomHoverEffectModifier<HoverEffect>(0, &lazy cache variable for type metadata for _InternalHoverEffectBox<AutomaticHoverEffect>, lazy protocol witness table accessor for type AutomaticHoverEffect and conformance AutomaticHoverEffect, &type metadata for AutomaticHoverEffect, type metadata accessor for _InternalHoverEffectBox);
  result = swift_allocObject();
  *(result + 16) = KeyPath;
  *(result + 24) = 0;
  static HoverEffect.automatic = result;
  return result;
}

uint64_t outlined assign with take of ActionSheet.Presentation?(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  _ss11AnyHashableVSgMaTm_2(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t specialized static ToolbarItemPlacement.Role.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  outlined init with copy of ToolbarItemPlacement.Role(a1, &v11);
  outlined init with copy of ToolbarItemPlacement.Role(a2, v17);
  if (!v16)
  {
    outlined init with copy of ToolbarItemPlacement.Role(&v11, v10);
    if (!v18)
    {
      v3 = v10[0] == v17[0];
      goto LABEL_7;
    }

    goto LABEL_172;
  }

  if (v16 != 1)
  {
    if (!(v14 | v15 | v11 | v13 | v12))
    {
      if (v18 != 2)
      {
        goto LABEL_172;
      }

      v5 = vorrq_s8(*&v17[8], *&v17[24]);
      if (*&vorr_s8(*v5.i8, *&vextq_s8(v5, v5, 8uLL)) | *v17)
      {
        goto LABEL_172;
      }

      goto LABEL_171;
    }

    v4 = v14 | v15 | v13 | v12;
    if (v11 != 1 || v4)
    {
      if (v11 != 2 || v4)
      {
        if (v11 != 3 || v4)
        {
          if (v11 != 4 || v4)
          {
            if (v11 != 5 || v4)
            {
              if (v11 != 6 || v4)
              {
                if (v11 != 7 || v4)
                {
                  if (v11 != 8 || v4)
                  {
                    if (v11 != 9 || v4)
                    {
                      if (v11 != 10 || v4)
                      {
                        if (v11 != 11 || v4)
                        {
                          if (v11 != 12 || v4)
                          {
                            if (v11 != 13 || v4)
                            {
                              if (v11 != 14 || v4)
                              {
                                if (v11 != 15 || v4)
                                {
                                  if (v11 != 16 || v4)
                                  {
                                    if (v11 != 17 || v4)
                                    {
                                      if (v11 != 18 || v4)
                                      {
                                        if (v11 != 19 || v4)
                                        {
                                          if (v11 != 20 || v4)
                                          {
                                            if (v11 != 21 || v4)
                                            {
                                              if (v11 != 22 || v4)
                                              {
                                                if (v11 != 23 || v4)
                                                {
                                                  if (v11 != 24 || v4)
                                                  {
                                                    if (v11 != 25 || v4)
                                                    {
                                                      if (v11 != 26 || v4)
                                                      {
                                                        if (v11 != 27 || v4)
                                                        {
                                                          if (v11 != 28 || v4)
                                                          {
                                                            if (v11 != 29 || v4)
                                                            {
                                                              if (v11 != 30 || v4)
                                                              {
                                                                if (v11 != 31 || v4)
                                                                {
                                                                  if (v18 != 2 || *v17 != 32)
                                                                  {
                                                                    goto LABEL_172;
                                                                  }
                                                                }

                                                                else if (v18 != 2 || *v17 != 31)
                                                                {
                                                                  goto LABEL_172;
                                                                }
                                                              }

                                                              else if (v18 != 2 || *v17 != 30)
                                                              {
                                                                goto LABEL_172;
                                                              }
                                                            }

                                                            else if (v18 != 2 || *v17 != 29)
                                                            {
                                                              goto LABEL_172;
                                                            }
                                                          }

                                                          else if (v18 != 2 || *v17 != 28)
                                                          {
                                                            goto LABEL_172;
                                                          }
                                                        }

                                                        else if (v18 != 2 || *v17 != 27)
                                                        {
                                                          goto LABEL_172;
                                                        }
                                                      }

                                                      else if (v18 != 2 || *v17 != 26)
                                                      {
                                                        goto LABEL_172;
                                                      }
                                                    }

                                                    else if (v18 != 2 || *v17 != 25)
                                                    {
                                                      goto LABEL_172;
                                                    }
                                                  }

                                                  else if (v18 != 2 || *v17 != 24)
                                                  {
                                                    goto LABEL_172;
                                                  }
                                                }

                                                else if (v18 != 2 || *v17 != 23)
                                                {
                                                  goto LABEL_172;
                                                }
                                              }

                                              else if (v18 != 2 || *v17 != 22)
                                              {
                                                goto LABEL_172;
                                              }
                                            }

                                            else if (v18 != 2 || *v17 != 21)
                                            {
                                              goto LABEL_172;
                                            }
                                          }

                                          else if (v18 != 2 || *v17 != 20)
                                          {
                                            goto LABEL_172;
                                          }
                                        }

                                        else if (v18 != 2 || *v17 != 19)
                                        {
                                          goto LABEL_172;
                                        }
                                      }

                                      else if (v18 != 2 || *v17 != 18)
                                      {
                                        goto LABEL_172;
                                      }
                                    }

                                    else if (v18 != 2 || *v17 != 17)
                                    {
                                      goto LABEL_172;
                                    }
                                  }

                                  else if (v18 != 2 || *v17 != 16)
                                  {
                                    goto LABEL_172;
                                  }
                                }

                                else if (v18 != 2 || *v17 != 15)
                                {
                                  goto LABEL_172;
                                }
                              }

                              else if (v18 != 2 || *v17 != 14)
                              {
                                goto LABEL_172;
                              }
                            }

                            else if (v18 != 2 || *v17 != 13)
                            {
                              goto LABEL_172;
                            }
                          }

                          else if (v18 != 2 || *v17 != 12)
                          {
                            goto LABEL_172;
                          }
                        }

                        else if (v18 != 2 || *v17 != 11)
                        {
                          goto LABEL_172;
                        }
                      }

                      else if (v18 != 2 || *v17 != 10)
                      {
                        goto LABEL_172;
                      }
                    }

                    else if (v18 != 2 || *v17 != 9)
                    {
                      goto LABEL_172;
                    }
                  }

                  else if (v18 != 2 || *v17 != 8)
                  {
                    goto LABEL_172;
                  }
                }

                else if (v18 != 2 || *v17 != 7)
                {
                  goto LABEL_172;
                }
              }

              else if (v18 != 2 || *v17 != 6)
              {
                goto LABEL_172;
              }
            }

            else if (v18 != 2 || *v17 != 5)
            {
              goto LABEL_172;
            }
          }

          else if (v18 != 2 || *v17 != 4)
          {
            goto LABEL_172;
          }
        }

        else if (v18 != 2 || *v17 != 3)
        {
          goto LABEL_172;
        }
      }

      else if (v18 != 2 || *v17 != 2)
      {
        goto LABEL_172;
      }
    }

    else if (v18 != 2 || *v17 != 1)
    {
      goto LABEL_172;
    }

    v6 = vorrq_s8(*&v17[8], *&v17[24]);
    if (!*&vorr_s8(*v6.i8, *&vextq_s8(v6, v6, 8uLL)))
    {
LABEL_171:
      outlined destroy of ToolbarItemPlacement.Role(&v11);
      v3 = 1;
      return v3 & 1;
    }

LABEL_172:
    outlined destroy of (ToolbarItemPlacement.Role, ToolbarItemPlacement.Role)(&v11);
    v3 = 0;
    return v3 & 1;
  }

  outlined init with copy of ToolbarItemPlacement.Role(&v11, v10);
  if (v18 != 1)
  {
    outlined destroy of AnyHashable(v10);
    goto LABEL_172;
  }

  v8[0] = *v17;
  v8[1] = *&v17[16];
  v9 = *&v17[32];
  v3 = MEMORY[0x18D00E7E0](v10, v8);
  outlined destroy of AnyHashable(v8);
  outlined destroy of AnyHashable(v10);
LABEL_7:
  outlined destroy of ToolbarItemPlacement.Role(&v11);
  return v3 & 1;
}

uint64_t outlined destroy of (ToolbarItemPlacement.Role, ToolbarItemPlacement.Role)(uint64_t a1)
{
  type metadata accessor for (ToolbarItemPlacement.Role, ToolbarItemPlacement.Role)();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata accessor for (ToolbarItemPlacement.Role, ToolbarItemPlacement.Role)()
{
  if (!lazy cache variable for type metadata for (ToolbarItemPlacement.Role, ToolbarItemPlacement.Role))
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (ToolbarItemPlacement.Role, ToolbarItemPlacement.Role));
    }
  }
}

uint64_t outlined destroy of (ResolvedScrollBehavior?, ResolvedScrollBehavior?)(uint64_t a1)
{
  type metadata accessor for (ResolvedScrollBehavior?, ResolvedScrollBehavior?)(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double storeEnumTagSinglePayload for ScrollView(_DWORD *a1, unsigned int a2, unsigned int a3, uint64_t a4)
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

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 120;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFF88)
  {
    v10 = a3 - v7 + 1;
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

  if (v7 < a3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a2 > v7)
  {
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFF88)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFF88)
    {
      v15 = ~v7 + a2;
      v16 = a1;
      bzero(a1, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 120);
      a1 = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(a1 + v9) = v14;
      }

      else
      {
        *(a1 + v9) = v14;
      }
    }

    else if (v13)
    {
      *(a1 + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(a1 + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *(a1 + v9) = 0;
  }

  else if (v13)
  {
    *(a1 + v9) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v6 < 0x7FFFFFFF)
  {
    v19 = (a1 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
    if ((a2 & 0x80000000) != 0)
    {
      result = 0.0;
      *(v19 + 104) = 0u;
      *(v19 + 88) = 0u;
      *(v19 + 72) = 0u;
      *(v19 + 56) = 0u;
      *(v19 + 40) = 0u;
      *(v19 + 24) = 0u;
      *(v19 + 8) = 0u;
      *v19 = a2 & 0x7FFFFFFF;
    }

    else
    {
      *(v19 + 64) = a2 - 1;
      *(v19 + 72) = 1;
    }
  }

  else
  {
    v18 = *(v5 + 56);

    v18();
  }

  return result;
}

void type metadata completion function for ToolbarViewListVisitor(uint64_t a1)
{
  _s7SwiftUI16CommandOperationVSgMaTm_3(319, &lazy cache variable for type metadata for ToolbarStorage.GroupItem.CollapsedContent?, type metadata accessor for ToolbarStorage.GroupItem.CollapsedContent, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

uint64_t closure #1 in PreferenceTransform.value.getter(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16))
  {

    return specialized Array.append<A>(contentsOf:)(v2);
  }

  return result;
}

double AlertTransformModifier.Transform.updateValue()(uint64_t a1)
{
  v2 = v1;
  v31 = *MEMORY[0x1E69E9840];
  LODWORD(v25) = *AGGraphGetValue();
  ViewIdentity.Tracker.update(for:)();
  v4 = *(v1 + 6);
  v25 = *v1;
  *&v26 = *(v1 + 2);
  DWORD2(v26) = v4;
  AlertTransformModifier.Transform.transform.getter(v30);
  type metadata accessor for CGPoint(0);
  Value = AGGraphGetValue();
  ViewTransform.appendPosition(_:)(*Value);
  AGGraphGetValue();
  *&v21 = MEMORY[0x18D00B390]();
  *(&v21 + 1) = v6;
  hostingViewCoordinateSpace.getter();
  v29 = 1;
  v25 = v30[0];
  v26 = v30[1];
  v27 = v30[2];

  CGRect.convert(to:transform:)();

  outlined destroy of CoordinateSpace(v28);
  v7 = *(v1 + 6);
  v25 = *v1;
  *&v26 = *(v1 + 2);
  DWORD2(v26) = v7;
  v11 = specialized AlertTransformModifier.Transform.modifier.getter(a1, v8, v9, v10);
  v13 = v12;
  v14 = *(v2 + 5);
  v15 = swift_allocObject();
  v16 = *(a1 + 24);
  *(v15 + 16) = *(a1 + 16);
  *(v15 + 24) = v16;
  *(v15 + 32) = v11;
  *(v15 + 40) = v13;
  *(v15 + 48) = v14;
  *(v15 + 72) = v21;
  *(v15 + 56) = 0uLL;
  *&v25 = partial apply for specialized closure #1 in AlertTransformModifier.Transform.updateValue();
  *(&v25 + 1) = v15;
  v23 = a1;
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for AlertTransformModifier<A>.Transform, a1);
  swift_retain_n();
  v28[0] = swift_getAssociatedTypeWitness();
  v17 = MEMORY[0x1E69E7CA8];
  FunctionTypeMetadata = swift_getFunctionTypeMetadata();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v25, partial apply for closure #1 in StatefulRule.value.setter, v22, FunctionTypeMetadata, MEMORY[0x1E69E73E0], v17 + 8, MEMORY[0x1E69E7410], v19);

  return result;
}

uint64_t sub_18BF29A10()
{

  return swift_deallocObject();
}

double AlertTransformModifier.Transform.transform.getter@<D0>(uint64_t a1@<X8>)
{
  Value = AGGraphGetValue();
  v3 = *(Value + 8);
  *a1 = *Value;
  *(a1 + 8) = v3;
  v4 = *(Value + 32);
  *(a1 + 16) = *(Value + 16);
  *(a1 + 32) = v4;

  return result;
}

uint64_t getEnumTagSinglePayload for ToolbarItemGroup(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  v7 = *(v4 + 64);
  if (v5 <= 0xFE)
  {
    v8 = 254;
  }

  else
  {
    v8 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v9 = a2 - v8;
  if (a2 <= v8)
  {
    goto LABEL_25;
  }

  v10 = v7 + ((v6 + 41) & ~v6) + 1;
  v11 = 8 * v10;
  if (v10 > 3)
  {
    goto LABEL_7;
  }

  v13 = ((v9 + ~(-1 << v11)) >> v11) + 1;
  if (HIWORD(v13))
  {
    v12 = *(a1 + v10);
    if (v12)
    {
      goto LABEL_14;
    }
  }

  else
  {
    if (v13 <= 0xFF)
    {
      if (v13 < 2)
      {
        goto LABEL_25;
      }

LABEL_7:
      v12 = *(a1 + v10);
      if (!*(a1 + v10))
      {
        goto LABEL_25;
      }

LABEL_14:
      v14 = (v12 - 1) << v11;
      if (v10 > 3)
      {
        v14 = 0;
      }

      if (v10)
      {
        if (v10 > 3)
        {
          LODWORD(v10) = 4;
        }

        if (v10 > 2)
        {
          if (v10 == 3)
          {
            LODWORD(v10) = *a1 | (*(a1 + 2) << 16);
          }

          else
          {
            LODWORD(v10) = *a1;
          }
        }

        else if (v10 == 1)
        {
          LODWORD(v10) = *a1;
        }

        else
        {
          LODWORD(v10) = *a1;
        }
      }

      return v8 + (v10 | v14) + 1;
    }

    v12 = *(a1 + v10);
    if (*(a1 + v10))
    {
      goto LABEL_14;
    }
  }

LABEL_25:
  v15 = (a1 + v6 + 41) & ~v6;
  if (v5 >= 0xFE)
  {
    return (*(v4 + 48))(v15);
  }

  v17 = *(v15 + v7);
  if (v17 < 2)
  {
    return 0;
  }

  return ((v17 + 2147483646) & 0x7FFFFFFF) + 1;
}

uint64_t outlined init with take of ToolbarStorage.SearchItem?(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t _ConditionalContent<>.ToolbarProvider.attachOutputs(to:)(uint64_t *a1)
{

  PreferencesOutputs.attachIndirectOutputs(to:)();
}

uint64_t ToolbarItemGroup.MakeView.value.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  Value = AGGraphGetValue();
  (*(v5 + 16))(v7, Value, a2);
  View.defaultToolbarBarPocket()(a2, a3);
  return (*(v5 + 8))(v7, a2);
}

uint64_t destroy for DefaultToolbarBarPocketModifier(void *a1)
{
  if (*(a1 + 41))
  {
    if (*(a1 + 40) == 1)
    {
      __swift_destroy_boxed_opaque_existential_1(a1);
    }
  }

  else
  {
  }

  v2 = a1[6];
  v3 = *(a1 + 56);

  return outlined consume of Environment<Selector?>.Content(v2, v3);
}

uint64_t outlined init with take of WeakBox<PreferenceBridge>(uint64_t a1, uint64_t a2)
{
  type metadata accessor for [ToolbarStorage.Entry](0, &lazy cache variable for type metadata for WeakBox<PreferenceBridge>, MEMORY[0x1E697EA30], MEMORY[0x1E6981A78]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t ToolbarViewListVisitor.visit(view:traits:)(uint64_t a1, void *a2)
{
  v3 = v2;
  v87 = a1;
  v80 = type metadata accessor for ToolbarStorage.Entry(0);
  v5 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80);
  v81 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = type metadata accessor for ToolbarStorage.Item(0);
  v83 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85);
  v82 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v66 - v9;
  _s7SwiftUI16CommandOperationVSgMaTm_3(0, &lazy cache variable for type metadata for ToolbarStorage.GroupItem.CollapsedContent?, type metadata accessor for ToolbarStorage.GroupItem.CollapsedContent, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v66 - v12;
  *&v90[0] = *a2;
  v14 = *&v90[0];
  v15 = ViewTraitCollection.isSectioned.getter();
  *&v90[0] = v14;
  v16 = ViewTraitCollection.groupDepth.getter();
  *&v90[0] = v14;
  v17 = ViewTraitCollection.isEmptyView.getter();
  if (v16 || (v15 & 1) == 0)
  {
    *&v90[0] = v14;
    if (ViewTraitCollection.isSectionFooter.getter() & v17)
    {
      v21 = *(v3 + 96);
      *(v3 + *(type metadata accessor for ToolbarViewListVisitor(0) + 88)) = v15 & 1;
      v22 = v3[13];
      v23 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        goto LABEL_47;
      }

      v24 = v21 | v15;
      goto LABEL_44;
    }

    if ((v15 & 1) == 0 && *(v3 + *(type metadata accessor for ToolbarViewListVisitor(0) + 88)) == 1)
    {
      ToolbarViewListVisitor.finalizeGroup()();
    }

LABEL_17:
    v29 = *(v87 + 56);
    v30 = *(v87 + 64);
    v76 = *v3;
    v86 = v3[13];
    v31 = type metadata accessor for ToolbarViewListVisitor(0);
    v32 = (v3 + v31[19]);
    v33 = v32[1];
    v75 = *v32;
    *&v90[0] = v14;
    v77 = v33;

    v84 = v30;

    v34 = ViewTraitCollection.isSectionHeader.getter();
    v78 = v15;
    v67 = v5;
    if (v34)
    {
      v74 = 1;
    }

    else
    {
      *&v89[0] = v14;
      v74 = ViewTraitCollection.isSectionFooter.getter();
    }

    *&v90[0] = v14;
    LOBYTE(v88[0]) = 0;
    ViewTraitCollection.value<A>(for:defaultValue:)();
    if (LOBYTE(v89[0]))
    {
      v35 = 3;
    }

    else
    {
      v35 = 5;
    }

    v36 = v31[20];
    v37 = v31[21];
    v79 = v31;
    v38 = (v3 + v36);
    v39 = v38[1];
    v73 = *v38;
    _s7SwiftUI7ToolbarO13UpdateContextVSgWOcTm_0(v3 + v37, v90, &lazy cache variable for type metadata for MatchedTransitionIdentifier?, &type metadata for MatchedTransitionIdentifier, MEMORY[0x1E69E6720], _s7SwiftUI11EnvironmentV7ContentOyAA20ToolbarItemPlacementV4RoleO_GMaTm_0);
    outlined init with copy of ToolbarItemPlacement.Role((v3 + 1), v89);
    if (*(v3 + 49) == 5)
    {
      v40 = v35;
    }

    else
    {
      v40 = *(v3 + 49);
    }

    v41 = *(v3 + 50);
    v42 = v3[7];
    v71 = *(v3 + 64);
    v72 = v41;
    v43 = *(v3 + 65);
    v69 = *(v3 + 66);
    v70 = v43;
    v68 = v3[9];
    outlined init with copy of _ViewList_View(v87, (v10 + 184));
    v44 = v3[11];
    v45 = v85;
    _s7SwiftUI7ToolbarO13UpdateContextVSgWOcTm_0((v3 + 10), &v10[*(v85 + 72)], &lazy cache variable for type metadata for WeakBox<PreferenceBridge>, MEMORY[0x1E697EA30], MEMORY[0x1E6981A78], _s7SwiftUI16CommandOperationVSgMaTm_3);
    v46 = v45[17];
    v47 = type metadata accessor for PlatformItemList.Item(0);
    (*(*(v47 - 8) + 56))(&v10[v46], 1, 1, v47);
    *v10 = v29;
    v48 = v90[1];
    *(v10 + 4) = v90[0];
    *(v10 + 5) = v48;
    v49 = v89[0];
    v50 = v89[1];
    *(v10 + 6) = v90[2];
    *(v10 + 7) = v49;
    v51 = v76;
    v52 = v77;
    *(v10 + 1) = v84;
    *(v10 + 2) = v51;
    v53 = v75;
    *(v10 + 3) = v86;
    *(v10 + 4) = v53;
    v54 = v73;
    *(v10 + 5) = v52;
    *(v10 + 6) = v54;
    v87 = v39;
    *(v10 + 7) = v39;
    *(v10 + 8) = v50;
    *(v10 + 137) = *(&v89[1] + 9);
    v10[153] = v40;
    LOBYTE(v54) = v71;
    v10[154] = v72;
    *(v10 + 20) = v42;
    v10[168] = v54;
    LOBYTE(v54) = v69;
    v10[169] = v70;
    v10[170] = v54;
    *(v10 + 22) = v68;
    *(v10 + 35) = v44;
    v10[v45[19]] = v74 & 1;
    v10[v45[20]] = 0;
    v10[v45[21]] = 0;
    if (v40 == 3)
    {
      outlined init with copy of ToolbarItemPlacement.Role((v3 + 1), v90);
      *&v89[0] = 13;
      *(v89 + 8) = 0u;
      *(&v89[1] + 8) = 0u;
      BYTE8(v89[2]) = 2;

      v55 = v44;

      v56 = specialized static ToolbarItemPlacement.Role.== infix(_:_:)(v90, v89);
      outlined destroy of ToolbarItemPlacement.Role(v89);
      outlined destroy of ToolbarItemPlacement.Role(v90);
      LOBYTE(v17) = v78;
      if (v56)
      {
LABEL_32:
        if (v3[14])
        {
          v13 = v82;
          outlined init with copy of ToolbarStorage.GroupItem(v10, v82, type metadata accessor for ToolbarStorage.Item);

          v21 = v3[14];
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            goto LABEL_34;
          }

          goto LABEL_49;
        }

        v61 = v81;
        outlined init with copy of ToolbarStorage.GroupItem(v10, v81, type metadata accessor for ToolbarStorage.Item);
        type metadata accessor for ToolbarStorage.Entry.Kind(0);
        swift_storeEnumTagMultiPayload();
        *(v61 + *(v80 + 20)) = 2;
        v62 = v79[23];
        v21 = *(v3 + v62);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v21 + 16) + 1, 1, v21);
        }

        v63 = v67;
        v13 = *(v21 + 16);
        v64 = *(v21 + 24);
        if (v13 >= v64 >> 1)
        {
          v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v64 > 1), v13 + 1, 1, v21);
        }

        _s7SwiftUI16CommandOperationVWOhTm_3(v10, type metadata accessor for ToolbarStorage.Item);
        *(v21 + 16) = v13 + 1;
        outlined init with take of (offset: Int, element: ToolbarStorage.Item)(v61, v21 + ((*(v63 + 80) + 32) & ~*(v63 + 80)) + *(v63 + 72) * v13, type metadata accessor for ToolbarStorage.Entry);
        *(v3 + v62) = v21;
        goto LABEL_42;
      }

      _s7SwiftUI16CommandOperationVWOhTm_3(v10, type metadata accessor for ToolbarStorage.Item);

      v57 = *(v3 + 96);
      *(v3 + v79[22]) = v17 & 1;
      v23 = v86 + 1;
      if (!__OFADD__(v86, 1))
      {
LABEL_43:
        v24 = v57 | v17;
LABEL_44:
        v3[13] = v23;
        return v24 & 1;
      }

      __break(1u);
    }

    v58 = v44;

    LOBYTE(v17) = v78;
    goto LABEL_32;
  }

  ToolbarViewListVisitor.finalizeGroup()();

  v3[14] = MEMORY[0x1E69E7CC0];
  *&v89[0] = v14;
  if (one-time initialization token for defaultValue != -1)
  {
    swift_once();
  }

  ViewTraitCollection.value<A>(for:defaultValue:)();
  _s7SwiftUI7ToolbarO13UpdateContextVSgWOcTm_0(v90, v89, &lazy cache variable for type metadata for _ViewList_View?, MEMORY[0x1E697D9F0], MEMORY[0x1E69E6720], _s7SwiftUI11EnvironmentV7ContentOyAA20ToolbarItemPlacementV4RoleO_GMaTm_0);
  if (*(&v89[1] + 1))
  {
    v88[2] = v89[2];
    v88[3] = v89[3];
    v88[4] = v89[4];
    v88[5] = v89[5];
    v88[0] = v89[0];
    v88[1] = v89[1];
    outlined init with copy of _ViewList_View(v88, v13);
    type metadata accessor for ToolbarStorage.GroupItem.CollapsedContent.Value(0);
    swift_storeEnumTagMultiPayload();
    v18 = v3[11];
    v19 = type metadata accessor for ToolbarStorage.GroupItem.CollapsedContent(0);
    *(v13 + *(v19 + 20)) = v18;
    v20 = v18;
    outlined destroy of _ViewList_View(v88);
    (*(*(v19 - 8) + 56))(v13, 0, 1, v19);
  }

  else
  {
    v25 = type metadata accessor for ToolbarStorage.GroupItem.CollapsedContent(0);
    (*(*(v25 - 8) + 56))(v13, 1, 1, v25);
  }

  outlined destroy of _ViewList_View?(v90, &lazy cache variable for type metadata for _ViewList_View?, MEMORY[0x1E697D9F0], MEMORY[0x1E69E6720], _s7SwiftUI11EnvironmentV7ContentOyAA20ToolbarItemPlacementV4RoleO_GMaTm_0);
  v21 = type metadata accessor for ToolbarViewListVisitor(0);
  outlined assign with take of ToolbarStorage.GroupItem.CollapsedContent?(v13, v3 + *(v21 + 72));
  if ((v17 & 1) == 0)
  {
    goto LABEL_17;
  }

  *(v3 + *(v21 + 88)) = 1;
  v26 = v3[13];
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (v27)
  {
    while (1)
    {
      __break(1u);
LABEL_49:
      v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v21 + 16) + 1, 1, v21);
LABEL_34:
      v60 = *(v21 + 16);
      v59 = *(v21 + 24);
      if (v60 >= v59 >> 1)
      {
        v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v59 > 1), v60 + 1, 1, v21);
      }

      _s7SwiftUI16CommandOperationVWOhTm_3(v10, type metadata accessor for ToolbarStorage.Item);
      *(v21 + 16) = v60 + 1;
      outlined init with take of (offset: Int, element: ToolbarStorage.Item)(v13, v21 + ((*(v83 + 80) + 32) & ~*(v83 + 80)) + *(v83 + 72) * v60, type metadata accessor for ToolbarStorage.Item);
      v3[14] = v21;
LABEL_42:
      v57 = *(v3 + 96);
      *(v3 + v79[22]) = v17 & 1;
      v23 = v86 + 1;
      if (!__OFADD__(v86, 1))
      {
        break;
      }

      __break(1u);
LABEL_47:
      __break(1u);
    }

    goto LABEL_43;
  }

  v3[13] = v28;
  v24 = 1;
  return v24 & 1;
}