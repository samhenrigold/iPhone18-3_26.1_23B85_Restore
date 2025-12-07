unint64_t lazy protocol witness table accessor for type HashableWeakBox<Swift.AnyObject> and conformance HashableWeakBox<A>()
{
  result = lazy protocol witness table cache variable for type HashableWeakBox<Swift.AnyObject> and conformance HashableWeakBox<A>;
  if (!lazy protocol witness table cache variable for type HashableWeakBox<Swift.AnyObject> and conformance HashableWeakBox<A>)
  {
    type metadata accessor for _ContiguousArrayStorage<ToolbarPlacement.Role>(255, &lazy cache variable for type metadata for HashableWeakBox<Swift.AnyObject>, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E697E7A8]);
    result = swift_getWitnessTable(MEMORY[0x1E697E7B0], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type HashableWeakBox<Swift.AnyObject> and conformance HashableWeakBox<A>);
  }

  return result;
}

uint64_t outlined init with take of HashableWeakBox<Swift.AnyObject>(uint64_t a1, uint64_t a2)
{
  type metadata accessor for _ContiguousArrayStorage<ToolbarPlacement.Role>(0, &lazy cache variable for type metadata for HashableWeakBox<Swift.AnyObject>, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E697E7A8]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of HashableWeakBox<Swift.AnyObject>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  type metadata accessor for _ContiguousArrayStorage<AppPreview>(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

void type metadata accessor for _ContiguousArrayStorage<AppPreview>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void AppSceneDelegate.sceneDidBecomeActive(_:)(uint64_t a1, char a2, SEL *a3)
{
  v6 = OBJC_IVAR____TtC7SwiftUI16AppSceneDelegate_scenePhase;
  *(v3 + OBJC_IVAR____TtC7SwiftUI16AppSceneDelegate_scenePhase) = a2;
  v7 = *(v3 + OBJC_IVAR____TtC7SwiftUI16AppSceneDelegate_window);
  if (v7)
  {
    v8 = [v7 rootViewController];
    if (v8)
    {
      v9 = v8;
      v10 = (v3 + OBJC_IVAR____TtC7SwiftUI16AppSceneDelegate_sceneItemID);
      v11 = *(v3 + OBJC_IVAR____TtC7SwiftUI16AppSceneDelegate_sceneItemID + 16);
      if (v11 == 255)
      {
      }

      else
      {
        v12 = *v10;
        v13 = v10[1];
        outlined copy of SceneID(*v10, v13, v11 & 1);
        AppSceneDelegate.scenesDidChange(phaseChanged:)(1);
        if (one-time initialization token for shared != -1)
        {
          swift_once();
        }

        v20 = *(v3 + v6);

        PlatformSceneCache.setPhase(_:id:host:)(&v20, v12, v13, v11 & 1, v9);

        outlined consume of SceneID?(v12, v13, v11);
      }
    }
  }

  v14 = *(v3 + OBJC_IVAR____TtC7SwiftUI16AppSceneDelegate_sceneDelegateBox);
  if (v14)
  {
    v15 = *(*v14 + 80);

    v17 = v15(v16);

    if (v17)
    {
      v21 = &unk_1F00661F8;
      v18 = swift_dynamicCastObjCProtocolConditional();
      if (v18)
      {
        v19 = v18;
        if ([v18 respondsToSelector_])
        {
          [v19 *a3];
        }
      }
    }
  }
}

Swift::Void __swiftcall AppSceneDelegate.scenesDidChange(phaseChanged:)(Swift::Bool phaseChanged)
{
  v3 = v1;
  type metadata accessor for WeakBox<UISceneConnectionOptions>?(0, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v167 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v167 - v10;
  MEMORY[0x18D00ABE0](v9);
  AppSceneDelegate.sceneItem()(v191);
  v12 = &lazy cache variable for type metadata for _UISceneBSActionHandler;
  if (!phaseChanged && *(v1 + OBJC_IVAR____TtC7SwiftUI16AppSceneDelegate_lastVersion) == v192)
  {
    outlined destroy of SceneList.Item(v191);
LABEL_119:
    static Update.end()();
    return;
  }

  v13 = v172;
  outlined init with copy of SceneList.Item.Value(v191, &v183);
  v14 = &lazy cache variable for type metadata for _UISceneBSActionHandler;
  if (v190 > 4u)
  {
    if (v190 == 5)
    {
      v66 = v183;
      v67 = v184;
      v68 = *(&v184 + 1);
      v69 = v185;
      v70 = *(v3 + OBJC_IVAR____TtC7SwiftUI16AppSceneDelegate_window);
      if (!v70 || (v71 = [v70 rootViewController]) == 0)
      {
        outlined consume of SceneID(v66, *(&v66 + 1), v67);
        outlined consume of UISceneAdaptorConfiguration.Kind(v68, v69);

        goto LABEL_116;
      }

      v72 = v71;
      type metadata accessor for UIHostingController<ModifiedContent<AnyView, RootModifier>>(0, &lazy cache variable for type metadata for UIHostingController<ModifiedContent<AnyView, RootModifier>>, type metadata accessor for UIHostingController);
      v73 = swift_dynamicCastClass();
      if (!v73)
      {

        outlined consume of SceneID(v66, *(&v66 + 1), v67);
        outlined consume of UISceneAdaptorConfiguration.Kind(v68, v69);

        v14 = &lazy cache variable for type metadata for _UISceneBSActionHandler;
        goto LABEL_116;
      }

      v74 = v73;
      v169 = *(&v66 + 1);
      v171 = v68;
      LODWORD(v170) = v67;
      if (v69 == 1)
      {
        *&v175[0] = *(&v69 + 1);
        type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.DocumentCommandsKey>(0, &lazy cache variable for type metadata for ModifiedContent<AnyView, ClarityUIInterfaceIdiomModifier>, MEMORY[0x1E6981910], &type metadata for ClarityUIInterfaceIdiomModifier, MEMORY[0x1E697E830]);
        lazy protocol witness table accessor for type ModifiedContent<AnyView, ClarityUIInterfaceIdiomModifier> and conformance <> ModifiedContent<A, B>();

        AnyView.init<A>(_:)();
      }

      else
      {
      }

      AppSceneDelegate.makeRootView(_:)(*(&v66 + 1), v175);

      v167 = direct field offset for UIHostingController.host;
      v168 = v74;
      v116 = *(&v74->isa + direct field offset for UIHostingController.host);
      outlined init with copy of ModifiedContent<AnyView, RootModifier>(v175, v174);
      outlined init with copy of ModifiedContent<AnyView, RootModifier>(v174, v172);
      v117 = *((*MEMORY[0x1E69E7D40] & *v116) + 0x60);
      swift_beginAccess();
      v118 = v116;
      outlined assign with take of ModifiedContent<AnyView, RootModifier>(v172, v116 + v117);
      swift_endAccess();
      type metadata accessor for UIHostingController<ModifiedContent<AnyView, RootModifier>>(0, &lazy cache variable for type metadata for _UIHostingView<ModifiedContent<AnyView, RootModifier>>, type metadata accessor for _UIHostingView);
      lazy protocol witness table accessor for type _UIHostingView<ModifiedContent<AnyView, RootModifier>> and conformance _UIHostingView<A>(&lazy protocol witness table cache variable for type _UIHostingView<ModifiedContent<AnyView, RootModifier>> and conformance _UIHostingView<A>, protocol conformance descriptor for _UIHostingView<A>);
      ViewGraphRootValueUpdater.invalidateProperties(_:mayDeferUpdate:)();

      v119 = MEMORY[0x1E6981910];
      v120 = v3;
      v121 = MEMORY[0x1E697E830];
      outlined destroy of WindowSceneConfiguration<WindowGroupConfigurationAttributes>(v174, &lazy cache variable for type metadata for ModifiedContent<AnyView, RootModifier>, MEMORY[0x1E6981910], &type metadata for RootModifier, MEMORY[0x1E697E830]);
      v122 = v121;
      v3 = v120;
      outlined destroy of WindowSceneConfiguration<WindowGroupConfigurationAttributes>(v175, &lazy cache variable for type metadata for ModifiedContent<AnyView, RootModifier>, v119, &type metadata for RootModifier, v122);
      v123 = *(&v168->isa + v167);
      v175[0] = v193;

      v124 = v123;

      UIHostingViewBase.inheritedEnvironment.setter();

      outlined consume of SceneID(v66, v169, v170);
      outlined consume of UISceneAdaptorConfiguration.Kind(v171, v69);

LABEL_75:
      v12 = &lazy cache variable for type metadata for _UISceneBSActionHandler;
      v14 = &lazy cache variable for type metadata for _UISceneBSActionHandler;
      goto LABEL_116;
    }

    if (v190 == 6)
    {
      v176 = v183;
      v177 = v184;
      v178 = v185;
      v179 = v186;
      v15 = OBJC_IVAR____TtC7SwiftUI16AppSceneDelegate_window;
      v16 = *(v1 + OBJC_IVAR____TtC7SwiftUI16AppSceneDelegate_window);
      if (!v16)
      {
        goto LABEL_15;
      }

      v17 = [v16 rootViewController];
      if (!v17)
      {
        goto LABEL_15;
      }

      v18 = v17;
      type metadata accessor for UIHostingController<ModifiedContent<AnyView, RootModifier>>(0, &lazy cache variable for type metadata for UIHostingController<ModifiedContent<AnyView, RootModifier>>, type metadata accessor for UIHostingController);
      v19 = swift_dynamicCastClass();
      if (!v19)
      {
LABEL_14:

LABEL_15:
        v39 = &lazy cache variable for type metadata for WindowSceneConfiguration<SingleWindowConfigurationAttributes>;
        v40 = &type metadata for SingleWindowConfigurationAttributes;
        v41 = &protocol witness table for SingleWindowConfigurationAttributes;
LABEL_26:
        outlined destroy of WindowSceneConfiguration<WindowGroupConfigurationAttributes>(&v176, v39, v40, v41, type metadata accessor for WindowSceneConfiguration);
LABEL_116:
        v157 = *(v3 + v14[252]);
        if (v157)
        {
          v158 = v157;
          UIWindow.applyAccessibilityProperties(from:)(&v194);
        }

        v159 = v192;
        outlined destroy of SceneList.Item(v191);
        *(v3 + v12[255]) = v159;
        goto LABEL_119;
      }

      v20 = v19;
      AppSceneDelegate.makeRootView(_:)(v176, v175);
      v21 = direct field offset for UIHostingController.host;
      v22 = *(v20 + direct field offset for UIHostingController.host);
      outlined init with copy of ModifiedContent<AnyView, RootModifier>(v175, v174);
      outlined init with copy of ModifiedContent<AnyView, RootModifier>(v174, v172);
      v23 = *((*MEMORY[0x1E69E7D40] & *v22) + 0x60);
      swift_beginAccess();
      v24 = v22;
      outlined assign with take of ModifiedContent<AnyView, RootModifier>(v172, v22 + v23);
      swift_endAccess();
      type metadata accessor for UIHostingController<ModifiedContent<AnyView, RootModifier>>(0, &lazy cache variable for type metadata for _UIHostingView<ModifiedContent<AnyView, RootModifier>>, type metadata accessor for _UIHostingView);
      lazy protocol witness table accessor for type _UIHostingView<ModifiedContent<AnyView, RootModifier>> and conformance _UIHostingView<A>(&lazy protocol witness table cache variable for type _UIHostingView<ModifiedContent<AnyView, RootModifier>> and conformance _UIHostingView<A>, protocol conformance descriptor for _UIHostingView<A>);
      ViewGraphRootValueUpdater.invalidateProperties(_:mayDeferUpdate:)();

      v25 = MEMORY[0x1E6981910];
      v26 = v3;
      v27 = MEMORY[0x1E697E830];
      outlined destroy of WindowSceneConfiguration<WindowGroupConfigurationAttributes>(v174, &lazy cache variable for type metadata for ModifiedContent<AnyView, RootModifier>, MEMORY[0x1E6981910], &type metadata for RootModifier, MEMORY[0x1E697E830]);
      v28 = v27;
      v3 = v26;
      v29 = MEMORY[0x1E69E7D40];
      outlined destroy of WindowSceneConfiguration<WindowGroupConfigurationAttributes>(v175, &lazy cache variable for type metadata for ModifiedContent<AnyView, RootModifier>, v25, &type metadata for RootModifier, v28);
      v30 = *(v20 + v21);
      v175[0] = v193;

      v31 = v30;

      UIHostingViewBase.inheritedEnvironment.setter();

      v32 = *(v3 + v15);
      if (v32)
      {
        v33 = [v32 windowScene];
        v12 = &lazy cache variable for type metadata for _UISceneBSActionHandler;
        v14 = &lazy cache variable for type metadata for _UISceneBSActionHandler;
        if (v33)
        {
          v34 = v33;
          v35 = [v33 sizeRestrictions];

          if (v35)
          {

            v36 = qword_18CD77EC8[v195];
            v37 = direct field offset for UIHostingController.sizingOptions;
            swift_beginAccess();
            v38 = *(v20 + v37);
            *(v20 + v37) = v36;
            *v174 = v38;
            (*((*v29 & *v20) + 0x3D8))(v174);
          }
        }

        goto LABEL_14;
      }

      v141 = &lazy cache variable for type metadata for WindowSceneConfiguration<SingleWindowConfigurationAttributes>;
      v142 = &type metadata for SingleWindowConfigurationAttributes;
      v143 = &protocol witness table for SingleWindowConfigurationAttributes;
      goto LABEL_74;
    }

    if (v190 != 7)
    {
      goto LABEL_150;
    }

    v175[4] = v187;
    v175[5] = v188;
    v175[6] = v189[0];
    v175[7] = v189[1];
    v175[0] = v183;
    v175[1] = v184;
    v175[2] = v185;
    v175[3] = v186;
    v13 = OBJC_IVAR____TtC7SwiftUI16AppSceneDelegate_window;
    v75 = *(v1 + OBJC_IVAR____TtC7SwiftUI16AppSceneDelegate_window);
    if (!v75)
    {
      goto LABEL_115;
    }

    v76 = [v75 rootViewController];
    if (!v76)
    {
      goto LABEL_115;
    }

    v77 = v76;
    v78 = [v76 _appearState];

    if (v78 != 2)
    {
      goto LABEL_115;
    }

    static Log.documents.getter();
    v79 = type metadata accessor for Logger();
    v80 = *(v79 - 8);
    if ((*(v80 + 48))(v11, 1, v79) == 1)
    {
      outlined destroy of PPTTestHost?(v11, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420], MEMORY[0x1E69E6720], type metadata accessor for WeakBox<UISceneConnectionOptions>?);
    }

    else
    {
      v125 = Logger.logObject.getter();
      v2 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v125, v2))
      {
        v126 = swift_slowAlloc();
        v169 = v126;
        v170 = swift_slowAlloc();
        *v174 = v170;
        *v126 = 136315138;
        v127 = [objc_opt_self() _printHierarchy];
        LODWORD(v168) = v2;
        v128 = v127;
        v129 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v171 = v3;
        v131 = v130;

        v132 = v129;
        v14 = &lazy cache variable for type metadata for _UISceneBSActionHandler;
        v133 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v132, v131, v174);
        v3 = v171;

        v134 = v169;
        *(v169 + 1) = v133;
        v2 = v134;
        _os_log_impl(&dword_18BD4A000, v125, v168, "DocumentGroupIntroduction: scened did change. VC hierarchy:\n%s", v134, 0xCu);
        v168 = v125;
        v135 = v170;
        __swift_destroy_boxed_opaque_existential_1(v170);
        MEMORY[0x18D0110E0](v135, -1, -1);
        MEMORY[0x18D0110E0](v2, -1, -1);
      }

      else
      {
      }

      (*(v80 + 8))(v11, v79);
    }

    v144 = *(v13 + v3);
    v12 = &lazy cache variable for type metadata for _UISceneBSActionHandler;
    if (!v144)
    {
      goto LABEL_115;
    }

    v145 = [v144 rootViewController];
    if (!v145)
    {
      goto LABEL_115;
    }

    v105 = v145;
    type metadata accessor for UIKitNavigationController();
    v146 = swift_dynamicCastClass();
    if (!v146)
    {

      goto LABEL_115;
    }

    v106 = [v146 viewControllers];
    v107 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIViewController, 0x1E69DD258);
    v108 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v108 >> 62)
    {
      if (__CocoaSet.count.getter())
      {
        goto LABEL_84;
      }
    }

    else if (*((v108 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_84:
      if ((v108 & 0xC000000000000001) != 0)
      {
        v147 = MEMORY[0x18D00E9C0](0, v108);
        goto LABEL_87;
      }

      if (*((v108 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v147 = *(v108 + 32);
LABEL_87:
        v148 = v147;

        v108 = [v148 childViewControllers];
        v149 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        if (v149 >> 62)
        {
          if (__CocoaSet.count.getter())
          {
            goto LABEL_89;
          }
        }

        else if (*((v149 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_89:
          if ((v149 & 0xC000000000000001) != 0)
          {
LABEL_142:
            v150 = MEMORY[0x18D00E9C0](0, v149);
            goto LABEL_92;
          }

          if (*((v149 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v150 = *(v149 + 32);
LABEL_92:
            v151 = v150;

            type metadata accessor for CustomizableDocumentViewController(0);
            if (swift_dynamicCastClass())
            {
              *v174 = v193;

              v152 = v151;

              CustomizableDocumentViewController.update(with:in:)(v175, v174);

              AppSceneDelegate.rootModifier.getter(v174);
              v153 = v152;
              DocumentViewController.rootModifier.setter(v174);
            }

            else
            {
            }

            outlined destroy of DocumentIntroductionConfiguration(v175);
            v12 = &lazy cache variable for type metadata for _UISceneBSActionHandler;
            goto LABEL_116;
          }

          __break(1u);
          goto LABEL_144;
        }

LABEL_115:
        outlined destroy of DocumentIntroductionConfiguration(v175);
        goto LABEL_116;
      }

      __break(1u);
      goto LABEL_121;
    }

    outlined destroy of DocumentIntroductionConfiguration(v175);

    goto LABEL_116;
  }

  if (!v190)
  {
    v176 = v183;
    v177 = v184;
    v178 = v185;
    v179 = v186;
    v42 = OBJC_IVAR____TtC7SwiftUI16AppSceneDelegate_window;
    v43 = *(v1 + OBJC_IVAR____TtC7SwiftUI16AppSceneDelegate_window);
    if (v43)
    {
      v44 = [v43 rootViewController];
      if (v44)
      {
        v45 = v44;
        type metadata accessor for UIHostingController<ModifiedContent<AnyView, RootModifier>>(0, &lazy cache variable for type metadata for UIHostingController<ModifiedContent<AnyView, RootModifier>>, type metadata accessor for UIHostingController);
        v46 = swift_dynamicCastClass();
        if (v46)
        {
          v47 = v46;
          AppSceneDelegate.makeRootView(_:)(v176, v175);
          v48 = direct field offset for UIHostingController.host;
          v49 = *(v47 + direct field offset for UIHostingController.host);
          outlined init with copy of ModifiedContent<AnyView, RootModifier>(v175, v174);
          outlined init with copy of ModifiedContent<AnyView, RootModifier>(v174, v172);
          v50 = *((*MEMORY[0x1E69E7D40] & *v49) + 0x60);
          swift_beginAccess();
          v51 = v49;
          outlined assign with take of ModifiedContent<AnyView, RootModifier>(v172, v49 + v50);
          swift_endAccess();
          type metadata accessor for UIHostingController<ModifiedContent<AnyView, RootModifier>>(0, &lazy cache variable for type metadata for _UIHostingView<ModifiedContent<AnyView, RootModifier>>, type metadata accessor for _UIHostingView);
          lazy protocol witness table accessor for type _UIHostingView<ModifiedContent<AnyView, RootModifier>> and conformance _UIHostingView<A>(&lazy protocol witness table cache variable for type _UIHostingView<ModifiedContent<AnyView, RootModifier>> and conformance _UIHostingView<A>, protocol conformance descriptor for _UIHostingView<A>);
          ViewGraphRootValueUpdater.invalidateProperties(_:mayDeferUpdate:)();

          v52 = MEMORY[0x1E6981910];
          v53 = v3;
          v54 = MEMORY[0x1E697E830];
          outlined destroy of WindowSceneConfiguration<WindowGroupConfigurationAttributes>(v174, &lazy cache variable for type metadata for ModifiedContent<AnyView, RootModifier>, MEMORY[0x1E6981910], &type metadata for RootModifier, MEMORY[0x1E697E830]);
          v55 = v54;
          v3 = v53;
          v56 = MEMORY[0x1E69E7D40];
          outlined destroy of WindowSceneConfiguration<WindowGroupConfigurationAttributes>(v175, &lazy cache variable for type metadata for ModifiedContent<AnyView, RootModifier>, v52, &type metadata for RootModifier, v55);
          v57 = *(v47 + v48);
          v175[0] = v193;

          v58 = v57;

          UIHostingViewBase.inheritedEnvironment.setter();

          v59 = *(v3 + v42);
          if (!v59)
          {

            v141 = &lazy cache variable for type metadata for WindowSceneConfiguration<WindowGroupConfigurationAttributes>;
            v142 = &type metadata for WindowGroupConfigurationAttributes;
            v143 = &protocol witness table for WindowGroupConfigurationAttributes;
LABEL_74:
            outlined destroy of WindowSceneConfiguration<WindowGroupConfigurationAttributes>(&v176, v141, v142, v143, type metadata accessor for WindowSceneConfiguration);
            goto LABEL_75;
          }

          v60 = [v59 windowScene];
          v12 = &lazy cache variable for type metadata for _UISceneBSActionHandler;
          v14 = &lazy cache variable for type metadata for _UISceneBSActionHandler;
          if (v60)
          {
            v61 = v60;
            v62 = [v60 sizeRestrictions];

            if (v62)
            {

              v63 = qword_18CD77EC8[v195];
              v64 = direct field offset for UIHostingController.sizingOptions;
              swift_beginAccess();
              v65 = *(v47 + v64);
              *(v47 + v64) = v63;
              *v174 = v65;
              (*((*v56 & *v47) + 0x3D8))(v174);
            }
          }
        }
      }
    }

    v39 = &lazy cache variable for type metadata for WindowSceneConfiguration<WindowGroupConfigurationAttributes>;
    v40 = &type metadata for WindowGroupConfigurationAttributes;
    v41 = &protocol witness table for WindowGroupConfigurationAttributes;
    goto LABEL_26;
  }

  if (v190 != 2)
  {
    goto LABEL_150;
  }

  v180 = v187;
  v181 = v188;
  v182[0] = v189[0];
  *(v182 + 9) = *(v189 + 9);
  v176 = v183;
  v177 = v184;
  v178 = v185;
  v179 = v186;
  static Log.documents.getter();
  v81 = type metadata accessor for Logger();
  v82 = *(v81 - 8);
  if ((*(v82 + 48))(v7, 1, v81) == 1)
  {
    outlined destroy of PPTTestHost?(v7, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420], MEMORY[0x1E69E6720], type metadata accessor for WeakBox<UISceneConnectionOptions>?);
  }

  else
  {
    v83 = Logger.logObject.getter();
    v2 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v83, v2))
    {
      v84 = swift_slowAlloc();
      v170 = v84;
      v171 = swift_slowAlloc();
      *&v175[0] = v171;
      *v84 = 136315138;
      v85 = [objc_opt_self() _printHierarchy];
      LODWORD(v169) = v2;
      v86 = v85;
      v87 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v88 = v3;
      v90 = v89;

      v91 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v87, v90, v175);
      v3 = v88;
      v12 = &lazy cache variable for type metadata for _UISceneBSActionHandler;

      v92 = v170;
      *(v170 + 4) = v91;
      v2 = v92;
      _os_log_impl(&dword_18BD4A000, v83, v169, "DocumentGroup: scened did change. VC hierarchy:\n%s", v92, 0xCu);
      v93 = v171;
      __swift_destroy_boxed_opaque_existential_1(v171);
      v94 = v93;
      v14 = &lazy cache variable for type metadata for _UISceneBSActionHandler;
      MEMORY[0x18D0110E0](v94, -1, -1);
      MEMORY[0x18D0110E0](v2, -1, -1);
    }

    (*(v82 + 8))(v7, v81);
  }

  v95 = OBJC_IVAR____TtC7SwiftUI16AppSceneDelegate_window;
  v96 = *(v3 + OBJC_IVAR____TtC7SwiftUI16AppSceneDelegate_window);
  if (!v96 || (v97 = [v96 rootViewController]) == 0 || (v98 = v97, v99 = objc_msgSend(v97, sel__appearState), v98, v99 != 2))
  {
LABEL_97:
    outlined destroy of IdentifiedDocumentGroupConfiguration(&v176);
    goto LABEL_116;
  }

  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.DocumentCommandsKey>(0, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v6>, MEMORY[0x1E697DF60], MEMORY[0x1E697DF58], MEMORY[0x1E697EC20]);
  lazy protocol witness table accessor for type _SemanticFeature<Semantics_v6> and conformance _SemanticFeature<A>();
  v100 = static SemanticFeature.isEnabled.getter();
  v101 = *(v3 + v95);
  if ((v100 & 1) == 0)
  {
    if (v101)
    {
      v136 = [v101 rootViewController];
      if (v136)
      {
        v137 = v136;
        type metadata accessor for DocumentBrowserViewController();
        v138 = swift_dynamicCastClass();
        if (v138)
        {
          v139 = v138;
          AppSceneDelegate.rootModifier.getter(v175);
          v140 = OBJC_IVAR____TtC7SwiftUI29DocumentBrowserViewController_rootModifier;
          swift_beginAccess();
          outlined assign with copy of RootModifier(v175, v139 + v140);
          swift_endAccess();
          DocumentBrowserViewController.updateHosts()();

          outlined destroy of RootModifier(v175);
        }

        else
        {
        }
      }
    }

    goto LABEL_97;
  }

  if (!v101 || (v102 = [v101 rootViewController]) == 0)
  {
    v111 = 0;
    v2 = 0;
    v105 = 0;
    goto LABEL_124;
  }

  v103 = v102;
  type metadata accessor for UIKitNavigationController();
  v104 = swift_dynamicCastClass();
  v105 = v104;
  if (!v104)
  {

LABEL_123:
    v111 = 0;
    v2 = 0;
    goto LABEL_124;
  }

  v106 = [v104 viewControllers];
  v107 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIViewController, 0x1E69DD258);
  v108 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v108 >> 62)
  {
LABEL_121:
    if (!__CocoaSet.count.getter())
    {
      goto LABEL_122;
    }

    goto LABEL_54;
  }

  if (!*((v108 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_122:

    goto LABEL_123;
  }

LABEL_54:
  if ((v108 & 0xC000000000000001) != 0)
  {
LABEL_144:
    v106 = v3;
    v109 = MEMORY[0x18D00E9C0](0, v108);
    goto LABEL_57;
  }

  if (!*((v108 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_146;
  }

  v106 = v3;
  v109 = *(v108 + 32);
LABEL_57:
  v2 = v109;

  type metadata accessor for DocumentViewController(0);
  v110 = swift_dynamicCastClass();
  if (v110)
  {
    v111 = v110;
    v112 = v2;
    goto LABEL_59;
  }

  v154 = [v2 childViewControllers];
  v107 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v107 >> 62)
  {
LABEL_146:
    v3 = v106;
    if (__CocoaSet.count.getter())
    {
      goto LABEL_102;
    }

    goto LABEL_147;
  }

  v3 = v106;
  if (!*((v107 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_147:

    v111 = 0;
LABEL_124:
    if (!static AppGraph.shared)
    {

LABEL_134:
      outlined destroy of IdentifiedDocumentGroupConfiguration(&v176);
      v12 = &lazy cache variable for type metadata for _UISceneBSActionHandler;
      goto LABEL_116;
    }

    v171 = v2;
    v148 = v3;
    v160 = v3 + OBJC_IVAR____TtC7SwiftUI16AppSceneDelegate_sceneNamespace;
    v161 = *(v3 + OBJC_IVAR____TtC7SwiftUI16AppSceneDelegate_sceneNamespace);
    v162 = *(v3 + OBJC_IVAR____TtC7SwiftUI16AppSceneDelegate_sceneNamespace + 8);
    v163 = v160[16];

    outlined copy of SceneList.Namespace(v161, v162, v163);
    AppGraph.sceneList(namespace:)(v161, v162, v163, v175);
    outlined consume of SceneList.Namespace(v161, v162, v163);

    v164 = *&v175[0];

    if (v111)
    {
      type metadata accessor for CustomizableDocumentViewController(0);
      v165 = swift_dynamicCastClass();
      if (v165)
      {
        v166 = *(v164 + 16);
        if (v166)
        {
          v149 = v165;
          v14 = 0;
          v3 = (v164 + 32);
          while (1)
          {
            if (v14 >= *(v164 + 16))
            {
              __break(1u);
              goto LABEL_142;
            }

            outlined init with copy of SceneList.Item(v3, v174);
            outlined init with copy of SceneList.Item.Value(v174, v172);
            if (v173 == 7)
            {
              break;
            }

            v14 = (v14 + 1);
            outlined destroy of SceneList.Item(v174);
            outlined destroy of SceneList.Item.Value(v172);
            v3 += 71;
            if (v166 == v14)
            {
              goto LABEL_132;
            }
          }

          outlined destroy of SceneList.Item.Value(v172);
          memcpy(v175, v174, 0x231uLL);
          outlined init with copy of SceneList.Item.Value(v175, v174);
          v3 = v148;
          v14 = &lazy cache variable for type metadata for _UISceneBSActionHandler;
          if (v174[128] == 7)
          {
            v172[4] = *&v174[64];
            v172[5] = *&v174[80];
            v172[6] = *&v174[96];
            v13[7] = *&v174[112];
            v172[0] = *v174;
            v172[1] = *&v174[16];
            v172[2] = *&v174[32];
            v172[3] = *&v174[48];
            *v174 = *(&v175[10] + 1);
            *&v174[8] = *&v175[11];

            CustomizableDocumentViewController.update(with:in:)(v172, v174);

            outlined destroy of DocumentIntroductionConfiguration(v172);

            outlined destroy of SceneList.Item(v175);
            goto LABEL_134;
          }

          outlined destroy of SceneList.Item(v175);
          outlined destroy of IdentifiedDocumentGroupConfiguration(&v176);
          outlined destroy of SceneList.Item.Value(v174);
          v12 = &lazy cache variable for type metadata for _UISceneBSActionHandler;
          goto LABEL_116;
        }

LABEL_132:
        outlined destroy of IdentifiedDocumentGroupConfiguration(&v176);

        v3 = v148;
        goto LABEL_75;
      }

      outlined destroy of IdentifiedDocumentGroupConfiguration(&v176);
    }

    else
    {
      outlined destroy of IdentifiedDocumentGroupConfiguration(&v176);
    }

    v3 = v148;
    v12 = &lazy cache variable for type metadata for _UISceneBSActionHandler;
    goto LABEL_116;
  }

LABEL_102:
  if ((v107 & 0xC000000000000001) != 0)
  {
    v106 = v3;
    v155 = MEMORY[0x18D00E9C0](0, v107);
LABEL_105:
    v156 = v155;

    v111 = swift_dynamicCastClass();
    if (!v111)
    {

LABEL_109:
      v3 = v106;
      goto LABEL_124;
    }

LABEL_59:
    v175[0] = v193;

    DocumentViewController.updateInheritedEnvironment(with:)(v175);

    v3 = v106;
    AppSceneDelegate.rootModifier.getter(v175);
    DocumentViewController.rootModifier.setter(v175);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      goto LABEL_124;
    }

    v114 = Strong;
    type metadata accessor for DocumentHostingController(0);
    if (!swift_dynamicCastClass())
    {

      goto LABEL_124;
    }

    v115 = OBJC_IVAR____TtC7SwiftUI22DocumentViewController_rootModifier;
    swift_beginAccess();
    _ss11AnyHashableVSgWOcTm_2(v111 + v115, v174, &lazy cache variable for type metadata for RootModifier?, &type metadata for RootModifier);
    if (*&v174[48] == 1)
    {

      outlined destroy of RootEnvironmentModifier?(v174, &lazy cache variable for type metadata for RootModifier?, &type metadata for RootModifier);
    }

    else
    {
      outlined init with take of RootModifier(v174, v175);
      DocumentHostingController.updateRootView(with:rootModifier:)(&v176, v175);

      outlined destroy of RootModifier(v175);
    }

    goto LABEL_109;
  }

  if (*((v107 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v106 = v3;
    v155 = *(v107 + 32);
    goto LABEL_105;
  }

  __break(1u);
LABEL_150:
  _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
}

uint64_t outlined assign with take of ModifiedContent<AnyView, RootModifier>(uint64_t a1, uint64_t a2)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.DocumentCommandsKey>(0, &lazy cache variable for type metadata for ModifiedContent<AnyView, RootModifier>, MEMORY[0x1E6981910], &type metadata for RootModifier, MEMORY[0x1E697E830]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t assignWithTake for RootModifier(uint64_t a1, uint64_t a2)
{
  swift_weakTakeAssign();
  swift_weakTakeAssign();
  swift_weakTakeAssign();
  if (*(a1 + 48))
  {
    if (*(a2 + 48))
    {
      __swift_destroy_boxed_opaque_existential_1((a1 + 24));
    }

    else
    {
      outlined destroy of AnyHashable(a1 + 24);
    }
  }

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  v4 = *(a1 + 88);
  if (v4 == 255)
  {
    goto LABEL_9;
  }

  v5 = *(a2 + 88);
  if (v5 == 255)
  {
    outlined destroy of SceneID(a1 + 72);
LABEL_9:
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 88) = *(a2 + 88);
    goto LABEL_10;
  }

  v6 = *(a1 + 72);
  v7 = *(a1 + 80);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = v5 & 1;
  outlined consume of SceneID(v6, v7, v4 & 1);
LABEL_10:
  v8 = *(a1 + 96);
  *(a1 + 96) = *(a2 + 96);

  *(a1 + 104) = *(a2 + 104);
  return a1;
}

double PlatformSceneCache.setPhase(_:id:host:)(unsigned __int8 *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v6 = v5;
  v11 = *a1;
  swift_beginAccess();
  v12 = *(v5 + 16);
  if (*(v12 + 16) && (v13 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3, a4 & 1), (v14 & 1) != 0))
  {
    v15 = *(*(v12 + 56) + 8 * v13);
    swift_endAccess();
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakAssign();
    v22 = a5;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v11, v21, isUniquelyReferenced_nonNull_native);
    outlined destroy of HashableWeakBox<UIViewController>(v21);
    swift_beginAccess();

    outlined copy of SceneID(a2, a3, a4 & 1);
    v17 = swift_isUniquelyReferenced_nonNull_native();
    v20 = *(v6 + 16);
    *(v6 + 16) = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v15, a2, a3, a4 & 1, v17);
    outlined consume of SceneID(a2, a3, a4 & 1);
    *(v6 + 16) = v20;
    v18 = swift_endAccess();
    if (static AppGraph.shared)
    {
      MEMORY[0x1EEE9AC00](v18);

      static Update.ensure<A>(_:)();
    }
  }

  else
  {
    swift_endAccess();
  }

  return result;
}

void specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v7 = a1;
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
LABEL_8:
      *(v16[7] + v10) = v7;
      return;
    }

    goto LABEL_11;
  }

  if (v15 >= v13 && (a3 & 1) == 0)
  {
    specialized _NativeDictionary.copy()();
    goto LABEL_7;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v13, a3 & 1);
  v17 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  if ((v14 & 1) != (v18 & 1))
  {
LABEL_14:
    _s7SwiftUI15HashableWeakBoxVySo16UIViewControllerCGMaTm_0(0, &lazy cache variable for type metadata for HashableWeakBox<UIViewController>, &lazy cache variable for type metadata for UIViewController, 0x1E69DD258, MEMORY[0x1E697E7A8]);
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v10 = v17;
  v16 = *v4;
  if (v14)
  {
    goto LABEL_8;
  }

LABEL_11:
  outlined init with copy of HashableWeakBox<UIViewController>(a2, v19);
  specialized _NativeDictionary._insert(at:key:value:)(v10, v19, v7, v16);
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
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    *(v19[7] + 8 * v9) = a1;
  }

  else
  {

    specialized _NativeDictionary._insert(at:key:value:)(v9, a2, a1, v19);
  }
}

{
  v4 = v3;
  v7 = a1;
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
LABEL_8:
      *(v16[7] + 2 * v10) = v7;
      return;
    }

    goto LABEL_11;
  }

  if (v15 >= v13 && (a3 & 1) == 0)
  {
    specialized _NativeDictionary.copy()();
    goto LABEL_7;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v13, a3 & 1);
  v17 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  if ((v14 & 1) != (v18 & 1))
  {
LABEL_14:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v10 = v17;
  v16 = *v4;
  if (v14)
  {
    goto LABEL_8;
  }

LABEL_11:
  outlined init with copy of ToolbarPlacement.Role(a2, v19);
  specialized _NativeDictionary._insert(at:key:value:)(v10, v19, v7, v16);
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
LABEL_8:
      *(v16[7] + 8 * v10) = a1;
      return;
    }

    goto LABEL_11;
  }

  if (v15 >= v13 && (a3 & 1) == 0)
  {
    specialized _NativeDictionary.copy()();
    goto LABEL_7;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v13, a3 & 1);
  v17 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  if ((v14 & 1) != (v18 & 1))
  {
LABEL_14:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v10 = v17;
  v16 = *v4;
  if (v14)
  {
    goto LABEL_8;
  }

LABEL_11:
  outlined init with copy of AnyHashable(a2, v19);
  specialized _NativeDictionary._insert(at:key:value:)(v10, v19, a1, v16);
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
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    *(v19[7] + 8 * v9) = a1;
  }

  else
  {

    specialized _NativeDictionary._insert(at:key:value:)(v9, a2, a1, v19);
  }
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
    goto LABEL_15;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      specialized _NativeDictionary.copy()();
      goto LABEL_7;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v13, a3 & 1);
    v17 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v14 & 1) == (v18 & 1))
    {
      v10 = v17;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      outlined init with copy of ToolbarPlacement.Role(a2, v19);
      specialized _NativeDictionary._insert(at:key:value:)(v10, v19, a1, v16);
      return;
    }

LABEL_15:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v16[7] + 8 * v10) = a1;
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
    goto LABEL_15;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      specialized _NativeDictionary.copy()();
      goto LABEL_7;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v13, a3 & 1);
    v17 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v14 & 1) == (v18 & 1))
    {
      v10 = v17;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      outlined init with copy of AnyHashable(a2, v19);
      specialized _NativeDictionary._insert(at:key:value:)(v10, v19, a1, v16);
      return;
    }

LABEL_15:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v16[7] + 8 * v10) = a1;
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
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    *(v19[7] + 8 * v9) = a1;
  }

  else
  {

    specialized _NativeDictionary._insert(at:key:value:)(v9, a2, a1, v19);
  }
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
LABEL_8:
      v17 = v16[7] + 40 * v10;
      v18 = *(a1 + 16);
      *v17 = *a1;
      *(v17 + 16) = v18;
      *(v17 + 32) = *(a1 + 32);
      return;
    }

    goto LABEL_11;
  }

  if (v15 >= v13 && (a3 & 1) == 0)
  {
    specialized _NativeDictionary.copy()();
    goto LABEL_7;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v13, a3 & 1);
  v19 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  if ((v14 & 1) != (v20 & 1))
  {
LABEL_14:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v10 = v19;
  v16 = *v4;
  if (v14)
  {
    goto LABEL_8;
  }

LABEL_11:
  outlined init with copy of AnyHashable(a2, v21);
  specialized _NativeDictionary._insert(at:key:value:)(v10, v21, a1, v16);
}

void closure #1 in PlatformSceneCache.setPhase(_:id:host:)(uint64_t a1, uint64_t a2)
{
  v24[3] = *MEMORY[0x1E69E9840];
  AppGraph.sceneList(namespace:)(0, 0, 2, v24);
  v3 = v24[0];

  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = v3 + 32;
    v6 = MEMORY[0x1E69E7CC0];
    do
    {
      outlined init with copy of SceneList.Item(v5, v20);
      v7 = v21;
      v8 = v22;
      v9 = v23;
      swift_beginAccess();
      v10 = *(a2 + 16);
      if (*(v10 + 16) && (v11 = specialized __RawDictionaryStorage.find<A>(_:)(v7, v8, v9), (v12 & 1) != 0))
      {
        v13 = *(*(v10 + 56) + 8 * v11);
        swift_endAccess();

        static Semantics.v6.getter();
        if (isLinkedOnOrAfter(_:)())
        {
          specialized Sequence<>.max()(v13, v19);
        }

        else
        {
          specialized Sequence<>.min()(v13, v19);
        }

        outlined destroy of SceneList.Item(v20);
        if (v19[0] == 3)
        {
          v14 = 0;
        }

        else
        {
          v14 = v19[0];
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v6 + 2) + 1, 1, v6);
        }

        v16 = *(v6 + 2);
        v15 = *(v6 + 3);
        if (v16 >= v15 >> 1)
        {
          v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1, v6);
        }

        *(v6 + 2) = v16 + 1;
        v6[v16 + 32] = v14;
      }

      else
      {
        swift_endAccess();
        outlined destroy of SceneList.Item(v20);
      }

      v5 += 568;
      --v4;
    }

    while (v4);
  }

  else
  {

    v6 = MEMORY[0x1E69E7CC0];
  }

  static Semantics.v6.getter();
  if (isLinkedOnOrAfter(_:)())
  {
    specialized Sequence<>.max()(v6, v20, v17);
  }

  else
  {
    specialized Sequence<>.min()(v6, v20, v17);
  }

  v18 = v20[0];
  if (v20[0] == 3)
  {
    v18 = 0;
  }

  v20[0] = v18;
  if (AGGraphSetValue())
  {
    AppGraph.graphDidChange()();
  }
}

uint64_t assignWithCopy for RootModifier(uint64_t a1, uint64_t a2)
{
  swift_weakCopyAssign();
  swift_weakCopyAssign();
  swift_weakCopyAssign();
  v4 = *(a2 + 48);
  if (*(a1 + 48))
  {
    v5 = (a1 + 24);
    if (v4)
    {
      __swift_assign_boxed_opaque_existential_1(v5, (a2 + 24));
    }

    else
    {
      outlined destroy of AnyHashable(v5);
      v6 = *(a2 + 56);
      v7 = *(a2 + 40);
      *(a1 + 24) = *(a2 + 24);
      *(a1 + 40) = v7;
      *(a1 + 56) = v6;
    }
  }

  else if (v4)
  {
    *(a1 + 48) = v4;
    *(a1 + 56) = *(a2 + 56);
    (**(v4 - 8))(a1 + 24, a2 + 24);
  }

  else
  {
    v8 = *(a2 + 24);
    v9 = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 40) = v9;
    *(a1 + 24) = v8;
  }

  *(a1 + 64) = *(a2 + 64);
  v10 = *(a2 + 88);
  if (*(a1 + 88) == 255)
  {
    if (v10 == 255)
    {
      v21 = *(a2 + 72);
      *(a1 + 88) = *(a2 + 88);
      *(a1 + 72) = v21;
    }

    else
    {
      v17 = *(a2 + 72);
      v18 = *(a2 + 80);
      v19 = v10 & 1;
      outlined copy of SceneID(v17, v18, v10 & 1);
      *(a1 + 72) = v17;
      *(a1 + 80) = v18;
      *(a1 + 88) = v19;
    }
  }

  else if (v10 == 255)
  {
    outlined destroy of SceneID(a1 + 72);
    v20 = *(a2 + 88);
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 88) = v20;
  }

  else
  {
    v11 = *(a2 + 72);
    v12 = *(a2 + 80);
    v13 = v10 & 1;
    outlined copy of SceneID(v11, v12, v10 & 1);
    v14 = *(a1 + 72);
    v15 = *(a1 + 80);
    v16 = *(a1 + 88);
    *(a1 + 72) = v11;
    *(a1 + 80) = v12;
    *(a1 + 88) = v13;
    outlined consume of SceneID(v14, v15, v16);
  }

  v22 = *(a1 + 96);
  v23 = *(a2 + 96);
  *(a1 + 96) = v23;
  v24 = v23;

  *(a1 + 104) = *(a2 + 104);
  return a1;
}

uint64_t specialized Sequence<>.max()@<X0>(uint64_t result@<X0>, unsigned __int8 *a2@<X8>)
{
  v2 = 1 << *(result + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(result + 64);
  if (v4)
  {
    v5 = 0;
    v6 = __clz(__rbit64(v4));
    v7 = (v4 - 1) & v4;
    v8 = (v2 + 63) >> 6;
LABEL_9:
    v12 = *(result + 56);
    v13 = *(v12 + v6);
    if (!v7)
    {
      goto LABEL_11;
    }

    do
    {
      v14 = v5;
LABEL_15:
      v15 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v16 = *(v12 + (v15 | (v14 << 6)));
      if (v13 <= v16)
      {
        v13 = v16;
      }
    }

    while (v7);
LABEL_11:
    while (1)
    {
      v14 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v14 >= v8)
      {
        goto LABEL_20;
      }

      v7 = *(result + 64 + 8 * v14);
      ++v5;
      if (v7)
      {
        v5 = v14;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v9 = 0;
    v10 = 0;
    v8 = (v2 + 63) >> 6;
    while (v8 - 1 != v10)
    {
      v5 = v10 + 1;
      v11 = *(result + 72 + 8 * v10);
      v9 -= 64;
      ++v10;
      if (v11)
      {
        v7 = (v11 - 1) & v11;
        v6 = __clz(__rbit64(v11)) - v9;
        goto LABEL_9;
      }
    }

    v13 = 3;
LABEL_20:
    *a2 = v13;
  }

  return result;
}

uint64_t specialized Sequence<>.max()@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>, uint8x16_t a3@<Q1>)
{
  v3 = *(result + 16);
  if (!v3)
  {
    *a2 = 3;
    return result;
  }

  v4 = *(result + 32);
  v5 = v3 - 1;
  if (v3 != 1)
  {
    if (v3 < 5)
    {
      v6 = 1;
      goto LABEL_17;
    }

    if (v3 >= 0x21)
    {
      v7 = v5 & 0xFFFFFFFFFFFFFFE0;
      v8 = vdupq_n_s8(v4);
      v9 = (result + 49);
      v10 = v5 & 0xFFFFFFFFFFFFFFE0;
      a3 = v8;
      do
      {
        v8 = vmaxq_u8(v8, v9[-1]);
        a3 = vmaxq_u8(a3, *v9);
        v9 += 2;
        v10 -= 32;
      }

      while (v10);
      v11 = vmaxq_u8(v8, a3);
      v11.i8[0] = vmaxvq_u8(v11);
      v4 = v11.i32[0];
      if (v5 == v7)
      {
        goto LABEL_15;
      }

      if ((v5 & 0x1C) == 0)
      {
        v6 = v7 | 1;
        goto LABEL_17;
      }
    }

    else
    {
      v7 = 0;
    }

    v6 = v5 & 0xFFFFFFFFFFFFFFFCLL | 1;
    v12 = vdup_n_s16(v4);
    v13 = (v7 + result + 33);
    v14 = v7 - (v5 & 0xFFFFFFFFFFFFFFFCLL);
    do
    {
      v15 = *v13++;
      a3.i32[0] = v15;
      a3.i64[0] = vmovl_u8(*a3.i8).u64[0];
      v12 = vmax_u16((*&v12 & 0xFF00FF00FF00FFLL), *a3.i8);
      v14 += 4;
    }

    while (v14);
    LOBYTE(v4) = vmaxv_u16(v12);
    if (v5 == (v5 & 0xFFFFFFFFFFFFFFFCLL))
    {
      goto LABEL_15;
    }

LABEL_17:
    v16 = v3 - v6;
    v17 = (v6 + result + 32);
    do
    {
      v19 = *v17++;
      v18 = v19;
      if (v4 <= v19)
      {
        LOBYTE(v4) = v18;
      }

      --v16;
    }

    while (v16);
  }

LABEL_15:
  *a2 = v4;
  return result;
}

Swift::Void __swiftcall AppGraph.graphDidChange()()
{
  swift_beginAccess();
  v1 = *(v0 + 64);
  v2 = *(v0 + 96);
  v30 = *(v0 + 80);
  v31 = v2;
  v3 = *(v0 + 32);
  v27[0] = *(v0 + 16);
  v27[1] = v3;
  v4 = *(v0 + 64);
  v6 = *(v0 + 16);
  v5 = *(v0 + 32);
  v28 = *(v0 + 48);
  v29 = v4;
  v25[3] = v1;
  v25[4] = v30;
  v25[5] = *(v0 + 96);
  v25[0] = v6;
  v32 = *(v0 + 112);
  v26 = *(v0 + 112);
  v25[1] = v5;
  v25[2] = v28;
  outlined init with copy of GraphHost.Data(v27, v24);
  v7 = GraphHost.Data.updateSeed.modify();
  ++*v8;
  v7(v24, 0);
  outlined destroy of GraphHost.Data(v27);
  GraphHost.runTransaction()();
  AGGraphGetValue();
  v10 = v9;
  v11 = 0;
  if (*(v0 + 236) != *MEMORY[0x1E698D3F8])
  {
    AGGraphGetValue();
    v11 = v12 & 1;
  }

  swift_beginAccess();
  v13 = *(v0 + 192);
  v14 = 1 << *(v13 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(v13 + 56);
  v17 = (v14 + 63) >> 6;

  v18 = 0;
  while (v16)
  {
LABEL_13:
    outlined init with copy of HashableWeakBox<Swift.AnyObject>(*(v13 + 48) + ((v18 << 10) | (16 * __clz(__rbit64(v16)))), v24);
    outlined init with take of HashableWeakBox<Swift.AnyObject>(v24, v23);
    if (swift_unknownObjectWeakLoadStrong())
    {
      ObjectType = swift_getObjectType();
      v21 = swift_conformsToProtocol2();
      if (v21)
      {
        v22 = v21;
        (*(v21 + 8))(v10 & 1, ObjectType, v21);
        if (v11)
        {
          (*(v22 + 16))(ObjectType, v22);
        }
      }

      swift_unknownObjectRelease();
    }

    v16 &= v16 - 1;
    outlined destroy of HashableWeakBox<Swift.AnyObject>(v23);
  }

  while (1)
  {
    v19 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v19 >= v17)
    {

      return;
    }

    v16 = *(v13 + 56 + 8 * v19);
    ++v18;
    if (v16)
    {
      v18 = v19;
      goto LABEL_13;
    }
  }

  __break(1u);
}

uint64_t outlined destroy of HashableWeakBox<Swift.AnyObject>(uint64_t a1)
{
  type metadata accessor for _ContiguousArrayStorage<ToolbarPlacement.Role>(0, &lazy cache variable for type metadata for HashableWeakBox<Swift.AnyObject>, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E697E7A8]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t assignWithCopy for RootEnvironmentModifier(uint64_t a1, uint64_t a2)
{
  swift_weakCopyAssign();
  swift_weakCopyAssign();
  swift_weakCopyAssign();
  *(a1 + 24) = *(a2 + 24);
  v4 = *(a2 + 48);
  if (*(a1 + 48) == 255)
  {
    if (v4 == 255)
    {
      v15 = *(a2 + 32);
      *(a1 + 48) = *(a2 + 48);
      *(a1 + 32) = v15;
    }

    else
    {
      v11 = *(a2 + 32);
      v12 = *(a2 + 40);
      v13 = v4 & 1;
      outlined copy of SceneID(v11, v12, v4 & 1);
      *(a1 + 32) = v11;
      *(a1 + 40) = v12;
      *(a1 + 48) = v13;
    }
  }

  else if (v4 == 255)
  {
    outlined destroy of SceneID(a1 + 32);
    v14 = *(a2 + 48);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 48) = v14;
  }

  else
  {
    v5 = *(a2 + 32);
    v6 = *(a2 + 40);
    v7 = v4 & 1;
    outlined copy of SceneID(v5, v6, v4 & 1);
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v10 = *(a1 + 48);
    *(a1 + 32) = v5;
    *(a1 + 40) = v6;
    *(a1 + 48) = v7;
    outlined consume of SceneID(v8, v9, v10);
  }

  v16 = *(a1 + 56);
  v17 = *(a2 + 56);
  *(a1 + 56) = v17;
  v18 = v17;

  return a1;
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance CoreSheetPresentationModifier<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for CoreSheetPresentationModifier<A>, a5);

  return MEMORY[0x1EEDE1620](a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t protocol witness for Rule.value.getter in conformance CommandsModifier<A>.UpdateList@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  updated = CommandsModifier.UpdateList.value.getter(*v2, *(a1 + 16), *(a1 + 24));
  v6 = v5;
  result = swift_allocObject();
  *(result + 16) = updated;
  *(result + 24) = v6;
  *a2 = partial apply for thunk for @escaping @callee_guaranteed (@inout AccessibilityLargeContentViewTree) -> ();
  a2[1] = result;
  return result;
}

uint64_t sub_18BE84B28()
{

  return swift_deallocObject();
}

uint64_t (*CommandsModifier.UpdateList.value.getter(int a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  *(v6 + 32) = a1;
  return partial apply for closure #1 in CommandsModifier.UpdateList.value.getter;
}

uint64_t closure #1 in CommandsModifier.UpdateList.value.getter(uint64_t a1, uint64_t a2)
{
  AGGraphGetValue();

  return specialized Array.append<A>(contentsOf:)(v2);
}

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t result, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v4 = *(result + 16);
  v5 = *v3;
  v6 = *(*v3 + 16);
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = result;
  if (swift_isUniquelyReferenced_nonNull_native() && v6 + v4 <= *(v5 + 24) >> 1)
  {
    if (*(v9 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  v5 = a2();
  if (!*(v9 + 16))
  {
LABEL_10:

    if (!v4)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  v10 = (*(v5 + 24) >> 1) - *(v5 + 16);
  result = a3(0);
  if (v10 < v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  swift_arrayInitWithCopy();

  if (!v4)
  {
LABEL_11:
    *v3 = v5;
    return result;
  }

  v11 = *(v5 + 16);
  v12 = __OFADD__(v11, v4);
  v13 = v11 + v4;
  if (!v12)
  {
    *(v5 + 16) = v13;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

{
  v4 = *(result + 16);
  v5 = *v3;
  v6 = *(*v3 + 16);
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v6 + v4 <= *(v5 + 24) >> 1)
  {
    if (*(v9 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  result = a2();
  v5 = result;
  if (!*(v9 + 16))
  {
LABEL_10:

    if (!v4)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  if ((*(v5 + 24) >> 1) - *(v5 + 16) < v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  a3(0);
  swift_arrayInitWithCopy();

  if (!v4)
  {
LABEL_11:
    *v3 = v5;
    return result;
  }

  v10 = *(v5 + 16);
  v11 = __OFADD__(v10, v4);
  v12 = v10 + v4;
  if (!v11)
  {
    *(v5 + 16) = v12;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t type metadata completion function for CommandsList.Item(uint64_t a1)
{
  result = type metadata accessor for CommandsList.Item.Value(319);
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t type metadata completion function for CommandsList.Item.Value(uint64_t a1)
{
  result = type metadata accessor for CommandOperation(319);
  if (v2 <= 0x3F)
  {
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

__n128 assignWithCopy for FocusGroupModifier(__n128 *a1, __n128 *a2)
{
  v2 = a2[1].n128_u64[1];
  if (a1[1].n128_u64[1])
  {
    if (v2)
    {
      result.n128_f64[0] = __swift_assign_boxed_opaque_existential_1(a1, a2);
    }

    else
    {
      outlined destroy of AnyHashable(a1);
      v6 = a2[2].n128_u64[0];
      result = a2[1];
      *a1 = *a2;
      a1[1] = result;
      a1[2].n128_u64[0] = v6;
    }
  }

  else if (v2)
  {
    a1[1].n128_u64[1] = v2;
    a1[2].n128_u64[0] = a2[2].n128_u64[0];
    (**(v2 - 8))();
  }

  else
  {
    result = *a2;
    v7 = a2[1];
    a1[2].n128_u64[0] = a2[2].n128_u64[0];
    *a1 = result;
    a1[1] = v7;
  }

  return result;
}

double destroy for UIViewControllerRepresentableContext(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(a1, AssociatedTypeWitness);

  return result;
}

id protocol witness for static CoreViewRepresentable.platformView(for:) in conformance PlatformViewControllerRepresentableAdaptor<A>(void **a1, uint64_t a2)
{
  v2 = *a1;
  swift_getWitnessTable(protocol conformance descriptor for PlatformViewControllerRepresentableAdaptor<A>, a2);
  return static PlatformViewRepresentable<>.platformView(for:)(v2);
}

id static PlatformViewRepresentable<>.platformView(for:)(void *a1)
{
  result = [a1 view];
  if (!result)
  {
    __break(1u);
  }

  return result;
}

uint64_t PlatformViewControllerRepresentableAdaptor.updateViewProvider(_:context:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19 = a1;
  swift_getWitnessTable(protocol conformance descriptor for PlatformViewControllerRepresentableAdaptor<A>, a3);
  v5 = type metadata accessor for PlatformViewRepresentableContext();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19 - v7;
  v9 = *(a3 + 16);
  v10 = *(a3 + 24);
  v12 = type metadata accessor for UIViewControllerRepresentableContext(0, v9, v10, v11);
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v19 - v15;
  (*(v6 + 16))(v8, a2, v5, v14);
  swift_getWitnessTable(protocol conformance descriptor for PlatformViewControllerRepresentableAdaptor<A>, a3);
  v17 = UIViewControllerRepresentableContext.init<A>(_:)(v8, v9, v10, v16);
  (*(v10 + 40))(v19, v16, v9, v10, v17);
  return (*(v13 + 8))(v16, v12);
}

void type metadata accessor for [ToolbarStorage.Entry](uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void _sSay7SwiftUI14ToolbarStorageV5EntryVGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t type metadata completion function for ToolbarButtonStyle.ResolvedBody(uint64_t a1)
{
  result = type metadata accessor for PrimitiveButtonStyleConfiguration(319);
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void type metadata accessor for ModifiedContent<_ViewModifier_Content<AllowsToolbarItemBridgingModifier>, _PreferenceTransformModifier<ToolbarItemBridgingPreferenceKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<AllowsToolbarItemBridgingModifier>, _PreferenceTransformModifier<ToolbarItemBridgingPreferenceKey>>)
  {
    _s7SwiftUI26InvertedViewInputPredicateVyAA027CreatesToolbarSafeAreaInsetF0VGMaTm_0(255, &lazy cache variable for type metadata for _ViewModifier_Content<AllowsToolbarItemBridgingModifier>, lazy protocol witness table accessor for type AllowsToolbarItemBridgingModifier and conformance AllowsToolbarItemBridgingModifier, &type metadata for AllowsToolbarItemBridgingModifier, MEMORY[0x1E697FDE8]);
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_toolbarItemPlatterVisibility>(255, &lazy cache variable for type metadata for _PreferenceTransformModifier<ToolbarItemBridgingPreferenceKey>, &type metadata for ToolbarItemBridgingPreferenceKey, &protocol witness table for ToolbarItemBridgingPreferenceKey, MEMORY[0x1E6980910]);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<AllowsToolbarItemBridgingModifier>, _PreferenceTransformModifier<ToolbarItemBridgingPreferenceKey>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type _ViewModifier_Content<AllowsToolbarItemBridgingModifier> and conformance _ViewModifier_Content<A>()
{
  result = lazy protocol witness table cache variable for type _ViewModifier_Content<AllowsToolbarItemBridgingModifier> and conformance _ViewModifier_Content<A>;
  if (!lazy protocol witness table cache variable for type _ViewModifier_Content<AllowsToolbarItemBridgingModifier> and conformance _ViewModifier_Content<A>)
  {
    _s7SwiftUI26InvertedViewInputPredicateVyAA027CreatesToolbarSafeAreaInsetF0VGMaTm_0(255, &lazy cache variable for type metadata for _ViewModifier_Content<AllowsToolbarItemBridgingModifier>, lazy protocol witness table accessor for type AllowsToolbarItemBridgingModifier and conformance AllowsToolbarItemBridgingModifier, &type metadata for AllowsToolbarItemBridgingModifier, MEMORY[0x1E697FDE8]);
    result = swift_getWitnessTable(MEMORY[0x1E697FDF8], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _ViewModifier_Content<AllowsToolbarItemBridgingModifier> and conformance _ViewModifier_Content<A>);
  }

  return result;
}

uint64_t type metadata completion function for UIKitSystemButtonConfigurationModifier(uint64_t a1)
{
  result = type metadata accessor for UIButton.Configuration();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t static SubscriptionView._makeViewList(view:inputs:)(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v29 = *MEMORY[0x1E69E9840];
  v10 = *a1;
  v25 = a3;
  v26 = a4;
  v27 = a5;
  v28 = a6;
  type metadata accessor for SubscriptionView(255, &v25);
  type metadata accessor for _GraphValue();
  v11 = _GraphValue.value.getter();
  type metadata accessor for SubscriptionLifetime();
  v15 = v11;
  v16 = SubscriptionLifetime.__allocating_init()();
  v17 = default argument 2 of SubscriptionView.Subscriber.init(view:subscriptionLifetime:actionBox:)(a3, a4, a5, a6);
  v25 = a3;
  v26 = a4;
  v27 = a5;
  v28 = a6;
  v23 = type metadata accessor for SubscriptionView.Subscriber(0, &v25);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for SubscriptionView<A, B>.Subscriber, v23);
  type metadata accessor for Attribute<()>();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v15, closure #1 in Attribute.init<A>(_:)partial apply, v22, v23, MEMORY[0x1E69E73E0], v12, MEMORY[0x1E69E7410], v13);

  AGGraphSetFlags();
  v18 = a3;
  v19 = a4;
  v20 = a5;
  v21 = a6;
  LODWORD(v25) = v10;
  _GraphValue.subscript.getter();
  return static View.makeDebuggableViewList(view:inputs:)();
}

void type metadata accessor for Attribute<NavigationState.StackContent.Key?>(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    type metadata accessor for Binding<AnyNavigationPath>(255, a3, a4, MEMORY[0x1E69E6720]);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t initializeWithCopy for NavigationStackReader.ChildEnvironment(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 32) = *(a2 + 32);
  if (*(a2 + 48) == 1)
  {
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
  }

  else
  {
    swift_weakCopyInit();
    v4 = *(a2 + 48);
    v5 = *(a2 + 56);
    *(a1 + 48) = v4;
    *(a1 + 56) = v5;
  }

  return a1;
}

uint64_t View.toolbar<A>(content:)(void (*a1)(double), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = type metadata accessor for ToolbarModifier(0, MEMORY[0x1E69E7CA8] + 8, a4, a6);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = (&v17 - v12);
  v15 = (&v17 + *(v14 + 48) - v12);
  *v15 = 0;
  v15[1] = 0;
  v15[2] = 0;
  *v13 = 0;
  v13[1] = 0;
  a1(v11);
  MEMORY[0x18D00A570](v13, a3, v9, a5);
  return (*(v10 + 8))(v13, v9);
}

uint64_t static ToolbarItemPlacement.automatic.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  v5 = a4;
  if (*a1 != -1)
  {
    swift_once();
    v5 = a4;
  }

  return outlined init with copy of ToolbarItemPlacement(a2, v5);
}

uint64_t static ToolbarContentBuilder.buildBlock<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = MEMORY[0x1EEE9AC00](a1);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, v5);
  return TupleToolbarContent.init(_:)(v7, a2, a3);
}

void *initializeWithCopy for ToolbarModifier(void *a1, void *a2, uint64_t a3)
{
  v4 = a2[1];
  *a1 = *a2;
  a1[1] = v4;
  v5 = *(a3 + 24);
  v6 = *(*(v5 - 8) + 16);
  v7 = *(v5 - 8) + 16;
  v8 = *(*(v5 - 8) + 80);
  v9 = (a1 + v8 + 16) & ~v8;
  v10 = (a2 + v8 + 16) & ~v8;

  v6(v9, v10, v5);
  v11 = *(v7 + 48) + 7;
  v12 = (v11 + v9) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v11 + v10) & 0xFFFFFFFFFFFFFFF8;
  if (*(v13 + 8) < 0xFFFFFFFFuLL)
  {
    v14 = *v13;
    *(v12 + 16) = *(v13 + 16);
    *v12 = v14;
  }

  else
  {
    *v12 = *v13;
    *(v12 + 8) = *(v13 + 8);
    *(v12 + 16) = *(v13 + 16);
  }

  return a1;
}

double destroy for ToolbarModifier(uint64_t a1, uint64_t a2)
{

  v4 = *(*(a2 + 24) - 8);
  v5 = v4 + 8;
  v6 = (a1 + *(v4 + 80) + 16) & ~*(v4 + 80);
  (*(v4 + 8))(v6);
  if (*(((*(v5 + 56) + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8) >= 0xFFFFFFFFuLL)
  {
  }

  return result;
}

uint64_t ToolbarItem<>.init(placement:content:)@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t a4@<X3>, uint64_t a5@<X4>, _OWORD *x8_0@<X8>)
{
  MEMORY[0x1EEE9AC00](a1);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = outlined init with copy of ToolbarItemPlacement(v13, v16);
  a2(v14);
  outlined destroy of ToolbarItemPlacement(a1);
  return ToolbarItem<>.init(placement:content:)(v16, v12, a4, a5, x8_0);
}

uint64_t ToolbarItem<>.init(placement:content:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  v9 = type metadata accessor for ToolbarItem(0, MEMORY[0x1E69E7CA8] + 8, a3, a4);
  *(a5 + v9[15]) = 5;
  v10 = a1[1];
  *a5 = *a1;
  a5[1] = v10;
  *(a5 + 25) = *(a1 + 25);
  *(a5 + v9[13]) = 1;
  *(a5 + v9[14]) = 0;
  v11 = *(*(a3 - 8) + 32);
  v12 = a5 + v9[12];

  return v11(v12, a2, a3);
}

uint64_t initializeWithCopy for ToolbarItem(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 16;
  (*v6)();
  v7 = *(v6 + 48) + 7;
  v8 = (v7 + a1) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v7 + a2) & 0xFFFFFFFFFFFFFFF8;
  if (*(v9 + 40) == 1)
  {
    v10 = *(v9 + 24);
    *(v8 + 24) = v10;
    *(v8 + 32) = *(v9 + 32);
    (**(v10 - 8))(v8, v9);
    *(v8 + 40) = 1;
  }

  else
  {
    v11 = *v9;
    v12 = *(v9 + 16);
    *(v8 + 25) = *(v9 + 25);
    *v8 = v11;
    *(v8 + 16) = v12;
  }

  v13 = *(*(a3 + 24) - 8);
  v14 = v13 + 16;
  v15 = *(v13 + 80);
  v16 = (v8 + v15 + 41) & ~v15;
  v17 = (v9 + v15 + 41) & ~v15;
  (*(v13 + 16))(v16, v17);
  v18 = *(v14 + 48);
  v19 = (v16 + v18);
  v20 = (v17 + v18);
  *v19 = *v20;
  v19[1] = v20[1];
  v19[2] = v20[2];
  return a1;
}

uint64_t destroy for ToolbarItem(uint64_t a1, uint64_t a2)
{
  v4 = *(*(a2 + 16) - 8) + 8;
  (*v4)();
  v5 = (a1 + *(v4 + 56) + 7) & 0xFFFFFFFFFFFFFFF8;
  if (*(v5 + 40) == 1)
  {
    __swift_destroy_boxed_opaque_existential_1(v5);
  }

  v6 = *(*(a2 + 24) - 8);
  v7 = *(v6 + 8);
  v8 = (v5 + *(v6 + 80) + 41) & ~*(v6 + 80);

  return v7(v8);
}

uint64_t NavigationStack.init<>(root:)@<X0>(void (*a1)(void)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v6 = type metadata accessor for NavigationStack(0, &type metadata for NavigationPath, a2, a3);
  *(a4 + v6[11]) = 0;
  v7 = a4 + v6[13];
  *v7 = implicit closure #2 in implicit closure #1 in variable initialization expression of NavigationSplitReader._stateHost;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  a1();
  type metadata accessor for AnyNavigationPath.HeterogeneousBoxBase();
  result = swift_allocObject();
  v9 = MEMORY[0x1E69E7CC0];
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 16) = v9;
  *(result + 40) = 0;
  *(result + 48) = v9;
  *(result + 56) = 0;
  v10 = a4 + v6[12];
  *(v10 + 8) = 0;
  *(v10 + 16) = 0;
  *v10 = result;
  *(v10 + 24) = 0;
  return result;
}

__n128 __swift_memcpy28_4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 12) = *(a2 + 12);
  *a1 = result;
  return result;
}

uint64_t static NavigationStackReader._makeView(view:inputs:)@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v7 = a6;
  v8 = a5;
  v70 = a7;
  v156 = *MEMORY[0x1E69E9840];
  v11 = *a1;
  v12 = *(a2 + 48);
  v144 = *(a2 + 32);
  v145 = v12;
  v146 = *(a2 + 64);
  v147 = *(a2 + 80);
  v13 = *(a2 + 16);
  v142 = *a2;
  v143 = v13;
  v102 = a3;
  v103 = a4;
  v104 = a5;
  v105 = a6;
  *&v148 = a3;
  *(&v148 + 1) = a4;
  *&v149 = a5;
  *(&v149 + 1) = a6;
  type metadata accessor for NavigationStackReader(255, &v148);
  type metadata accessor for _GraphValue();
  _GraphValue.subscript.getter();
  v72 = v148;
  v98 = a3;
  v99 = a4;
  v100 = v8;
  v101 = v7;
  LODWORD(v148) = v11;
  type metadata accessor for Binding<AnyNavigationPath>(0, &lazy cache variable for type metadata for Binding<AnyNavigationPath>, &type metadata for AnyNavigationPath, MEMORY[0x1E6981948]);
  _GraphValue.subscript.getter();
  LODWORD(v74) = v11;
  v94 = a3;
  v95 = a4;
  v96 = v8;
  v97 = v7;
  LODWORD(v148) = v11;
  _GraphValue.subscript.getter();
  type metadata accessor for _GraphValue();
  v76 = _GraphValue.value.getter();
  v90 = a3;
  v91 = a4;
  v92 = v8;
  v93 = v7;
  LODWORD(v148) = v11;
  _GraphValue.subscript.getter();
  LODWORD(v65) = v11;
  v86 = a3;
  v87 = a4;
  v88 = v8;
  v89 = v7;
  LODWORD(v148) = v11;
  type metadata accessor for NavigationStateHost();
  _GraphValue.subscript.getter();
  v75 = v11;
  v82 = a3;
  v83 = a4;
  v84 = v8;
  v85 = v7;
  v77 = v7;
  *&v148 = a3;
  *(&v148 + 1) = a4;
  *&v149 = v8;
  *(&v149 + 1) = v7;
  type metadata accessor for NavigationStackReader.TransformBox(0, &v148);
  _GraphValue.subscript.getter();
  type metadata accessor for _GraphValue();
  v61 = _GraphValue.value.getter();
  lazy protocol witness table accessor for type IsExtractingNavigationDestinations and conformance IsExtractingNavigationDestinations();
  PropertyList.subscript.getter();
  LODWORD(v73) = v148;
  v64 = lazy protocol witness table accessor for type NavigationAuthority.StackKeyViewInputKey and conformance NavigationAuthority.StackKeyViewInputKey();
  v63 = v142;
  PropertyList.subscript.getter();
  v14 = v148;
  LOBYTE(v148) = 3;
  LODWORD(v7) = Attribute.init<A>(body:value:flags:update:)();
  *&v148 = 1;
  *&v135 = v14;
  *(&v135 + 1) = __PAIR64__(v7, v72);
  LODWORD(v136) = Attribute.init<A>(body:value:flags:update:)();
  *&v148 = a3;
  *(&v148 + 1) = a4;
  *&v149 = v8;
  *(&v149 + 1) = v77;
  v80 = type metadata accessor for NavigationStackReader.StackKey(0, &v148);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for NavigationStackReader<A, B>.StackKey, v80);
  type metadata accessor for Attribute<NavigationState.StackContent.Key?>(0, &lazy cache variable for type metadata for Attribute<NavigationState.StackContent.Key?>, &lazy cache variable for type metadata for NavigationState.StackContent.Key?, &type metadata for NavigationState.StackContent.Key, MEMORY[0x1E698D388]);
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v135, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TA_27, &v79, v80, MEMORY[0x1E69E73E0], v15, MEMORY[0x1E69E7410], v16);
  v17 = v148;
  v62 = lazy protocol witness table accessor for type NavigationAuthority.ViewInputKey and conformance NavigationAuthority.ViewInputKey();
  PropertyList.subscript.getter();
  v18 = v148;
  v19 = v143;
  swift_beginAccess();
  v20 = *(v19 + 16);
  v135 = xmmword_18CD633F0;
  *&v136 = 0;
  *(&v148 + 4) = v18;
  LODWORD(v148) = v76;
  HIDWORD(v148) = v20;
  *&v149 = __PAIR64__(v17, v11);
  *(&v149 + 1) = __PAIR64__(v76, v11);
  LOBYTE(v150) = v73;
  outlined init with take of NavigationAuthority?(&v135, &v150 + 8);
  v67 = a3;
  v68 = v8;
  *&v135 = a3;
  *(&v135 + 1) = a4;
  v69 = a4;
  *&v136 = v8;
  *(&v136 + 1) = v77;
  v21 = type metadata accessor for NavigationStackReader.ChildEnvironment(0, &v135);
  v78[2] = v21;
  v78[3] = swift_getWitnessTable(protocol conformance descriptor for NavigationStackReader<A, B>.ChildEnvironment, v21);
  type metadata accessor for Attribute<(authority: NavigationAuthority?, computedEnvironment: EnvironmentValues)>(0);
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v148, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_19, v78, v21, MEMORY[0x1E69E73E0], v22, MEMORY[0x1E69E7410], v23);
  v60[9] = 0;
  (*(*(v21 - 8) + 8))(&v148, v21);
  v72 = v135;
  v66 = v17;
  v24 = AGCreateWeakAttribute();
  AGGraphCreateOffsetAttribute2();
  v25 = AGCreateWeakAttribute();
  v60[8] = v19;
  LODWORD(v8) = *(v19 + 16);
  type metadata accessor for BoundNavigationPathDetector.PathObservation(0);
  v26 = swift_allocObject();
  v27 = OBJC_IVAR____TtCV7SwiftUI27BoundNavigationPathDetector15PathObservation_tracking;
  v28 = type metadata accessor for ObservationTracking();
  v29 = *(*(v28 - 8) + 56);
  *&v30 = *(&v143 + 1);
  v71 = v30;
  v29(v26 + v27, 1, 1, v28);
  *(v26 + OBJC_IVAR____TtCV7SwiftUI27BoundNavigationPathDetector15PathObservation_updateObserved) = 0;
  v60[7] = type metadata accessor for GraphHost();
  v31 = MEMORY[0x18D00B7D0]();
  swift_beginAccess();
  LODWORD(v19) = *(v31 + 64);

  *&v148 = v24;
  *(&v148 + 1) = __PAIR64__(v65, v74);
  *&v149 = v25;
  v65 = HIDWORD(v25);
  DWORD2(v149) = v8;
  BYTE12(v149) = v73;
  *(&v149 + 13) = v123;
  HIBYTE(v149) = BYTE2(v123);
  *&v150 = v71;
  *(&v150 + 1) = v26;
  LODWORD(v151) = v19;
  *(&v151 + 4) = 0xFFFFFFFFLL;
  BYTE12(v151) = 0;
  HIBYTE(v151) = BYTE2(v117);
  *(&v151 + 13) = v117;
  LODWORD(v152) = 0;
  v153 = 0;
  *&v154 = 0;
  BYTE8(v154) = 2;
  *(&v154 + 9) = v129;
  HIDWORD(v154) = *(&v129 + 3);
  v155 = 0;
  v139 = v152;
  v140 = v154;
  v141 = 0;
  v135 = v148;
  v136 = v149;
  v137 = v150;
  v138 = v151;
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  lazy protocol witness table accessor for type BoundNavigationPathDetector and conformance BoundNavigationPathDetector();
  Attribute.init<A>(body:value:flags:update:)();
  outlined destroy of BoundNavigationPathDetector(&v148);
  AGGraphSetFlags();
  v137 = v144;
  v138 = v145;
  v139 = v146;
  LODWORD(v140) = v147;
  v135 = v142;
  v136 = v143;
  outlined init with copy of _ViewInputs(&v142, &v129);
  AGGraphCreateOffsetAttribute2();
  _GraphInputs.environment.setter();
  _ViewInputs.disableNavigationDestination.setter();
  LOBYTE(v129) = 1;
  v73 = lazy protocol witness table accessor for type IsInNavigationV4Context and conformance IsInNavigationV4Context();
  PropertyList.subscript.setter();
  *&v129 = v24;
  PropertyList.subscript.setter();
  v74 = v25;
  *&v129 = v25;
  PropertyList.subscript.setter();
  PreferenceKeys.add(_:)();
  lazy protocol witness table accessor for type NavigationAuthority.SeedInputs and conformance NavigationAuthority.SeedInputs();
  PropertyList.subscript.getter();
  v32 = v129;
  KeyPath = swift_getKeyPath();
  LODWORD(v129) = v75;
  *(&v129 + 1) = _s14AttributeGraph0A0V13dynamicMemberACyqd__Gs7KeyPathCyxqd__G_tcluigqd__xcfU_7SwiftUI19NavigationStateHostC_AI0i4SeedK0CTG5TA_0;
  *&v130 = KeyPath;
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  type metadata accessor for NavigationSeedHost(0);
  type metadata accessor for Map<NavigationStateHost, NavigationSeedHost>(0);
  lazy protocol witness table accessor for type Map<NavigationStateHost, NavigationSeedHost> and conformance Map<A, B>(&lazy protocol witness table cache variable for type Map<NavigationStateHost, NavigationSeedHost> and conformance Map<A, B>, type metadata accessor for Map<NavigationStateHost, NavigationSeedHost>, MEMORY[0x1E698D3A0]);

  Attribute.init<A>(body:value:flags:update:)();

  v34 = AGCreateWeakAttribute();
  *&v129 = v32;
  *(&v129 + 1) = v34;
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  lazy protocol witness table accessor for type EnsureNavigationStateSeeds and conformance EnsureNavigationStateSeeds();
  Attribute.init<A>(body:value:flags:update:)();
  *&v129 = AGCreateWeakAttribute();
  PropertyList.subscript.setter();
  PropertyList.subscript.getter();
  if (v129)
  {
    *&v129 = 0;
    LODWORD(v129) = Attribute.init<A>(body:value:flags:update:)();
    lazy protocol witness table accessor for type NavigationAuthority.DepthKey and conformance NavigationAuthority.DepthKey();
    lazy protocol witness table accessor for type Attribute<Int> and conformance Attribute<A>();
    v35 = _GraphInputs.subscript.setter();
    *&v123 = __PAIR64__(v66, v76);
    *(&v123 + 1) = __PAIR64__(v65, v74);
    MEMORY[0x1EEE9AC00](v35);
    *&v129 = v67;
    *(&v129 + 1) = v69;
    v36 = v77;
    *&v130 = v68;
    *(&v130 + 1) = v77;
    v37 = type metadata accessor for NavigationStackReader.ExtractedRoot(255, &v129);
    type metadata accessor for ReadDestinationsModifier(255, v37, &protocol witness table for NavigationStackReader<A, B>.ExtractedRoot, v38);
    v39 = type metadata accessor for ModifiedContent();
    type metadata accessor for _PreferenceTransformModifier<InspectorStorageV5.PreferenceKey>(255, &lazy cache variable for type metadata for _PreferenceTransformModifier<NavigationDestinationKey>, &type metadata for NavigationDestinationKey, &protocol witness table for NavigationDestinationKey, MEMORY[0x1E6980910]);
    v40 = type metadata accessor for ModifiedContent();
    type metadata accessor for PositionedNavigationDestinationProcessor(255, v37, &protocol witness table for NavigationStackReader<A, B>.ExtractedRoot, v41);
    v42 = type metadata accessor for ModifiedContent();
    v60[2] = v42;
    v60[3] = v37;
    v60[4] = swift_getWitnessTable(protocol conformance descriptor for NavigationStackReader<A, B>.ExtractedRoot, v37);
    v43 = type metadata accessor for Attribute();
    _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v123, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TA_3, v60, v37, MEMORY[0x1E69E73E0], v43, MEMORY[0x1E69E7410], v44);
    _GraphValue.init(_:)();
    v119 = v137;
    v120 = v138;
    v121 = v139;
    v122 = v140;
    v117 = v135;
    v118 = v136;
    v113 = v137;
    v114 = v138;
    v115 = v139;
    v116 = v140;
    v111 = v135;
    v112 = v136;
    outlined init with copy of _ViewInputs(&v117, &v129);
    v108[0] = v36;
    v108[1] = &protocol witness table for ReadDestinationsModifier<A>;
    v45 = MEMORY[0x1E697E858];
    v46 = swift_getWitnessTable(MEMORY[0x1E697E858], v39, v108);
    v47 = lazy protocol witness table accessor for type _PreferenceTransformModifier<InspectorStorageV5.PreferenceKey> and conformance _PreferenceTransformModifier<A>(&lazy protocol witness table cache variable for type _PreferenceTransformModifier<NavigationDestinationKey> and conformance _PreferenceTransformModifier<A>, &lazy cache variable for type metadata for _PreferenceTransformModifier<NavigationDestinationKey>, &type metadata for NavigationDestinationKey, &protocol witness table for NavigationDestinationKey);
    v107[0] = v46;
    v107[1] = v47;
    v106[0] = swift_getWitnessTable(v45, v40, v107);
    v106[1] = &protocol witness table for PositionedNavigationDestinationProcessor<A>;
    swift_getWitnessTable(v45, v42, v106);
    static View.makeDebuggableView(view:inputs:)();
    v125 = v113;
    v126 = v114;
    v127 = v115;
    v128 = v116;
    v123 = v111;
    v124 = v112;
    outlined destroy of _ViewInputs(&v123);
    v131 = v137;
    v132 = v138;
    v133 = v139;
    v134 = v140;
    v129 = v135;
    v130 = v136;
  }

  else
  {
    outlined init with copy of _GraphInputs(&v142, &v129);
    if (one-time initialization token for navigationEventHandlers != -1)
    {
      swift_once();
    }

    *&v123 = static CachedEnvironment.ID.navigationEventHandlers;
    swift_beginAccess();
    v48 = CachedEnvironment.attribute<A>(id:_:)();
    swift_endAccess();
    outlined destroy of _GraphInputs(&v142);
    OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
    v50 = MEMORY[0x18D00B7D0]();
    swift_beginAccess();
    v51 = *(v50 + 64);

    *&v129 = __PAIR64__(OffsetAttribute2, v48);
    *(&v129 + 1) = __PAIR64__(v51, v71);
    *&v130 = 0xFFFFFFFFLL;
    BYTE8(v130) = 0;
    HIDWORD(v130) = 0;
    protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
    lazy protocol witness table accessor for type UpdateNavigationEventHandlers and conformance UpdateNavigationEventHandlers();
    Attribute.init<A>(body:value:flags:update:)();
    AGGraphSetFlags();
    *&v129 = v67;
    *(&v129 + 1) = v69;
    *&v130 = v68;
    *(&v130 + 1) = v77;
    v52 = type metadata accessor for NavigationStackReader.AppliedBody(255, &v129);
    type metadata accessor for PositionedNavigationDestinationProcessor(255, v52, &protocol witness table for NavigationStackReader<A, B>.AppliedBody, v53);
    v54 = type metadata accessor for ModifiedContent();
    type metadata accessor for _PreferenceTransformModifier<InspectorStorageV5.PreferenceKey>(255, &lazy cache variable for type metadata for _PreferenceTransformModifier<InspectorStorageV5.PreferenceKey>, &type metadata for InspectorStorageV5.PreferenceKey, &protocol witness table for InspectorStorageV5.PreferenceKey, MEMORY[0x1E6980910]);
    v55 = type metadata accessor for ModifiedContent();
    *&v129 = __PAIR64__(v61, v66);
    *(&v129 + 1) = __PAIR64__(v74, v76);
    LODWORD(v130) = v65;
    swift_getWitnessTable(protocol conformance descriptor for NavigationStackReader<A, B>.AppliedBody, v52);
    _GraphValue.init<A>(_:)();
    v119 = v137;
    v120 = v138;
    v121 = v139;
    v122 = v140;
    v117 = v135;
    v118 = v136;
    v113 = v137;
    v114 = v138;
    v115 = v139;
    v116 = v140;
    v111 = v135;
    v112 = v136;
    outlined init with copy of _ViewInputs(&v117, &v129);
    v110[0] = v68;
    v110[1] = &protocol witness table for PositionedNavigationDestinationProcessor<A>;
    v56 = MEMORY[0x1E697E858];
    v57 = swift_getWitnessTable(MEMORY[0x1E697E858], v54, v110);
    v58 = lazy protocol witness table accessor for type _PreferenceTransformModifier<InspectorStorageV5.PreferenceKey> and conformance _PreferenceTransformModifier<A>(&lazy protocol witness table cache variable for type _PreferenceTransformModifier<InspectorStorageV5.PreferenceKey> and conformance _PreferenceTransformModifier<A>, &lazy cache variable for type metadata for _PreferenceTransformModifier<InspectorStorageV5.PreferenceKey>, &type metadata for InspectorStorageV5.PreferenceKey, &protocol witness table for InspectorStorageV5.PreferenceKey);
    v109[0] = v57;
    v109[1] = v58;
    swift_getWitnessTable(v56, v55, v109);
    static View.makeDebuggableView(view:inputs:)();
    v125 = v113;
    v126 = v114;
    v127 = v115;
    v128 = v116;
    v123 = v111;
    v124 = v112;
    outlined destroy of _ViewInputs(&v123);
    v131 = v137;
    v132 = v138;
    v133 = v139;
    v134 = v140;
    v129 = v135;
    v130 = v136;
  }

  return outlined destroy of _ViewInputs(&v129);
}

double sub_18BE873DC@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = *(*a1 + 192);

  return result;
}

double sub_18BE873EC(uint64_t *a1, uint64_t a2)
{
  *(*a2 + 192) = *a1;

  return result;
}

void type metadata accessor for Attribute<(authority: NavigationAuthority?, computedEnvironment: EnvironmentValues)>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Attribute<(authority: NavigationAuthority?, computedEnvironment: EnvironmentValues)>)
  {
    type metadata accessor for (authority: NavigationAuthority?, computedEnvironment: EnvironmentValues)(255);
    v1 = type metadata accessor for Attribute();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Attribute<(authority: NavigationAuthority?, computedEnvironment: EnvironmentValues)>);
    }
  }
}

double destroy for NavigationStackReader.ChildEnvironment(uint64_t a1)
{
  if (*(a1 + 48) != 1)
  {
    swift_weakDestroy();
  }

  return result;
}

void type metadata accessor for ObservationTracking?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

void type metadata completion function for BoundNavigationPathDetector.PathObservation(uint64_t a1)
{
  type metadata accessor for ObservationTracking?(319, &lazy cache variable for type metadata for ObservationTracking?, MEMORY[0x1E69E81D8]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

unint64_t lazy protocol witness table accessor for type BoundNavigationPathDetector and conformance BoundNavigationPathDetector()
{
  result = lazy protocol witness table cache variable for type BoundNavigationPathDetector and conformance BoundNavigationPathDetector;
  if (!lazy protocol witness table cache variable for type BoundNavigationPathDetector and conformance BoundNavigationPathDetector)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for BoundNavigationPathDetector, &type metadata for BoundNavigationPathDetector, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type BoundNavigationPathDetector and conformance BoundNavigationPathDetector);
  }

  return result;
}

uint64_t initializeWithCopy for BoundNavigationPathDetector(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 32) = *(a2 + 32);
  v3 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v3;
  *(a1 + 53) = *(a2 + 53);
  *(a1 + 64) = *(a2 + 64);
  v4 = *(a2 + 80);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = v4;
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);

  return a1;
}

double destroy for BoundNavigationPathDetector(void *a1)
{

  return result;
}

uint64_t lazy protocol witness table accessor for type Map<NavigationStateHost, NavigationSeedHost> and conformance Map<A, B>(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

void type metadata accessor for _PreferenceTransformModifier<InspectorStorageV5.PreferenceKey>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

uint64_t lazy protocol witness table accessor for type _PreferenceTransformModifier<InspectorStorageV5.PreferenceKey> and conformance _PreferenceTransformModifier<A>(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for _PreferenceTransformModifier<InspectorStorageV5.PreferenceKey>(255, a2, a3, a4, MEMORY[0x1E6980910]);
    result = swift_getWitnessTable(MEMORY[0x1E6980918], v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static NavigationStackStyledCore._makeView(view:inputs:)@<X0>(int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v30 = a5;
  v40 = *MEMORY[0x1E69E9840];
  v7 = *a1;
  v8 = *a2;
  v9 = *(a2 + 40);
  v37 = *(a2 + 24);
  v38 = v9;
  v39[0] = *(a2 + 56);
  *(v39 + 12) = *(a2 + 68);
  v36 = *(a2 + 8);
  LODWORD(v33) = v7;
  type metadata accessor for NavigationStackStyledCore(255, a3, a4, a4);
  type metadata accessor for _GraphValue();
  _GraphValue.value.getter();
  if (*(*(a3 - 8) + 64))
  {
    closure #1 in static NavigationStackStyledCore._makeView(view:inputs:)(1, a3, a4, v10);
  }

  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  LODWORD(v33) = v7;
  _GraphValue.value.getter();
  closure #2 in static NavigationStackStyledCore._makeView(view:inputs:)(1, a3, a4, v12);
  v13 = AGGraphCreateOffsetAttribute2();
  lazy protocol witness table accessor for type NavigationAuthority.ViewInputKey and conformance NavigationAuthority.ViewInputKey();
  PropertyList.subscript.getter();
  lazy protocol witness table accessor for type NavigationAuthority.SeedInputs and conformance NavigationAuthority.SeedInputs();
  v14 = v33;
  v15 = PropertyList.subscript.getter();
  MEMORY[0x1EEE9AC00](v15);
  v28 = type metadata accessor for NavigationStackStyledCore.NavigationStateStructureSeed(0, a3, a4, v16);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for NavigationStackStyledCore<A>.NavigationStateStructureSeed, v28);
  type metadata accessor for Attribute<UInt32?>(0, &lazy cache variable for type metadata for Attribute<UInt32?>, &lazy cache variable for type metadata for UInt32?, MEMORY[0x1E69E7668], MEMORY[0x1E698D388]);
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v33, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TA_29, &v27, v28, MEMORY[0x1E69E73E0], v17, MEMORY[0x1E69E7410], v18);
  v19 = v31;
  v21 = type metadata accessor for NavigationStackStyledCore.NavigationStackRepresentableRoot(0, a3, a4, v20);
  v33 = __PAIR64__(v13, OffsetAttribute2);
  LODWORD(v34[0]) = v19;
  *(v34 + 4) = v14;
  *(v34 + 12) = 0;
  BYTE4(v34[1]) = 1;
  v23 = type metadata accessor for NavigationStackStyledCore.Child(0, a3, a4, v22);
  swift_getWitnessTable(protocol conformance descriptor for NavigationStackStyledCore<A>.Child, v23);
  _GraphValue.init<A>(_:)();
  v33 = v8;
  v34[1] = v37;
  v34[2] = v38;
  v35[0] = v39[0];
  *(v35 + 12) = *(v39 + 12);
  v34[0] = v36;
  swift_getWitnessTable(protocol conformance descriptor for NavigationStackStyledCore<A>.NavigationStackRepresentableRoot, v21);
  result = static View.makeDebuggableView(view:inputs:)();
  v25 = v32;
  v26 = v30;
  *v30 = v31;
  v26[1] = v25;
  return result;
}

uint64_t closure #1 in static NavigationStackStyledCore._makeView(view:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[2] = type metadata accessor for NavigationStackStyledCore(0, a2, a3, a4);
  v9[3] = a2;
  v6 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, partial apply for closure #1 in static PointerOffset.of(_:), v9, a2, MEMORY[0x1E69E73E0], v6, MEMORY[0x1E69E7410], v7);
  return v9[5];
}

uint64_t closure #2 in static NavigationStackStyledCore._makeView(view:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for NavigationStackStyledCore(0, a2, a3, a4);
  v6 = *(v5 + 36);
  v10[2] = v5;
  v7 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + v6, _s14AttributeGraph13PointerOffsetV2ofyACyxq_Gq_zFZAESPyq_GXEfU_TA_16, v10, &type metadata for NavigationStackContext, MEMORY[0x1E69E73E0], v7, MEMORY[0x1E69E7410], v8);
  return v10[5];
}

void type metadata accessor for Attribute<UInt32?>(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    type metadata accessor for UInt32?(255, a3, a4, MEMORY[0x1E69E6720]);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void type metadata accessor for UInt32?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t type metadata completion function for NavigationStackStyledCore.NavigationStackRepresentableRoot(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for _NavigationStackStyleConfiguration.Root(uint64_t a1)
{
  result = lazy protocol witness table accessor for type _NavigationStackStyleConfiguration.Root and conformance _NavigationStackStyleConfiguration.Root();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type _NavigationStackStyleConfiguration.Root and conformance _NavigationStackStyleConfiguration.Root()
{
  result = lazy protocol witness table cache variable for type _NavigationStackStyleConfiguration.Root and conformance _NavigationStackStyleConfiguration.Root;
  if (!lazy protocol witness table cache variable for type _NavigationStackStyleConfiguration.Root and conformance _NavigationStackStyleConfiguration.Root)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for _NavigationStackStyleConfiguration.Root, &type metadata for _NavigationStackStyleConfiguration.Root, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _NavigationStackStyleConfiguration.Root and conformance _NavigationStackStyleConfiguration.Root);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _NavigationStackStyleConfiguration.Root and conformance _NavigationStackStyleConfiguration.Root;
  if (!lazy protocol witness table cache variable for type _NavigationStackStyleConfiguration.Root and conformance _NavigationStackStyleConfiguration.Root)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for _NavigationStackStyleConfiguration.Root, &type metadata for _NavigationStackStyleConfiguration.Root, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _NavigationStackStyleConfiguration.Root and conformance _NavigationStackStyleConfiguration.Root);
  }

  return result;
}

uint64_t sub_18BE88098(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v9[0] = &type metadata for _NavigationStackStyleConfiguration.Root;
  v9[1] = v1;
  v9[2] = lazy protocol witness table accessor for type _NavigationStackStyleConfiguration.Root and conformance _NavigationStackStyleConfiguration.Root();
  v9[3] = v2;
  type metadata accessor for StaticSourceWriter(255, v9);
  v3 = type metadata accessor for ModifiedContent();
  type metadata accessor for _PreferenceWritingModifier<HasSwiftUINavigationKey>();
  v4 = type metadata accessor for ModifiedContent();
  v8[0] = lazy protocol witness table accessor for type ResolvedNavigationStackStyle and conformance ResolvedNavigationStackStyle();
  v8[1] = &protocol witness table for StaticSourceWriter<A, B>;
  v5 = MEMORY[0x1E697E858];
  v7[0] = swift_getWitnessTable(MEMORY[0x1E697E858], v3, v8);
  v7[1] = _s7SwiftUI19NavigationStateHostCAC7Combine16ObservableObjectAAWlTm_1(&lazy protocol witness table cache variable for type _PreferenceWritingModifier<HasSwiftUINavigationKey> and conformance _PreferenceWritingModifier<A>, type metadata accessor for _PreferenceWritingModifier<HasSwiftUINavigationKey>, MEMORY[0x1E6980758]);
  return swift_getWitnessTable(v5, v4, v7);
}

void type metadata accessor for _PreferenceWritingModifier<HasSwiftUINavigationKey>()
{
  if (!lazy cache variable for type metadata for _PreferenceWritingModifier<HasSwiftUINavigationKey>)
  {
    v0 = type metadata accessor for _PreferenceWritingModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _PreferenceWritingModifier<HasSwiftUINavigationKey>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ResolvedNavigationStackStyle and conformance ResolvedNavigationStackStyle()
{
  result = lazy protocol witness table cache variable for type ResolvedNavigationStackStyle and conformance ResolvedNavigationStackStyle;
  if (!lazy protocol witness table cache variable for type ResolvedNavigationStackStyle and conformance ResolvedNavigationStackStyle)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ResolvedNavigationStackStyle, &type metadata for ResolvedNavigationStackStyle, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ResolvedNavigationStackStyle and conformance ResolvedNavigationStackStyle);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ResolvedNavigationStackStyle and conformance ResolvedNavigationStackStyle;
  if (!lazy protocol witness table cache variable for type ResolvedNavigationStackStyle and conformance ResolvedNavigationStackStyle)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ResolvedNavigationStackStyle, &type metadata for ResolvedNavigationStackStyle, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ResolvedNavigationStackStyle and conformance ResolvedNavigationStackStyle);
  }

  return result;
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance ResolvedNavigationStackStyle(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type ResolvedNavigationStackStyle and conformance ResolvedNavigationStackStyle();

  return MEMORY[0x1EEDDE4C0](a1, a2, a3, v6);
}

unint64_t lazy protocol witness table accessor for type NavigationStackStyleModifier<_AutomaticNavigationStackStyle> and conformance NavigationStackStyleModifier<A>()
{
  result = lazy protocol witness table cache variable for type NavigationStackStyleModifier<_AutomaticNavigationStackStyle> and conformance NavigationStackStyleModifier<A>;
  if (!lazy protocol witness table cache variable for type NavigationStackStyleModifier<_AutomaticNavigationStackStyle> and conformance NavigationStackStyleModifier<A>)
  {
    type metadata accessor for NavigationStackStyleModifier<_AutomaticNavigationStackStyle>(255);
    result = swift_getWitnessTable(protocol conformance descriptor for NavigationStackStyleModifier<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type NavigationStackStyleModifier<_AutomaticNavigationStackStyle> and conformance NavigationStackStyleModifier<A>);
  }

  return result;
}

void type metadata accessor for NavigationStackStyleModifier<_AutomaticNavigationStackStyle>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for NavigationStackStyleModifier<_AutomaticNavigationStackStyle>)
  {
    v2 = lazy protocol witness table accessor for type _AutomaticNavigationStackStyle and conformance _AutomaticNavigationStackStyle();
    v4 = type metadata accessor for NavigationStackStyleModifier(a1, &type metadata for _AutomaticNavigationStackStyle, v2, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for NavigationStackStyleModifier<_AutomaticNavigationStackStyle>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type _AutomaticNavigationStackStyle and conformance _AutomaticNavigationStackStyle()
{
  result = lazy protocol witness table cache variable for type _AutomaticNavigationStackStyle and conformance _AutomaticNavigationStackStyle;
  if (!lazy protocol witness table cache variable for type _AutomaticNavigationStackStyle and conformance _AutomaticNavigationStackStyle)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for _AutomaticNavigationStackStyle, &type metadata for _AutomaticNavigationStackStyle, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _AutomaticNavigationStackStyle and conformance _AutomaticNavigationStackStyle);
  }

  return result;
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance NavigationStackStyleModifier<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for NavigationStackStyleModifier<A>, a5);

  return MEMORY[0x1EEDDE4B8](a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t type metadata completion function for NavigationStackCore(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t sub_18BE88664(void *a1)
{
  swift_getAssociatedTypeWitness();

  return swift_getAssociatedConformanceWitness();
}

double static NavigationStackCore._makeView(view:inputs:)@<D0>(int *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v7 = *a1;
  v8 = *a2;
  v9 = *(a2 + 3);
  v10 = *(a2 + 7);
  v36 = *(a2 + 5);
  v37[0] = v10;
  *(v37 + 12) = *(a2 + 68);
  v34 = *(a2 + 1);
  v35 = v9;
  PropertyList.subscript.getter();
  v11 = *v29;
  *v29 = v7;
  type metadata accessor for NavigationStackCore(255, a3, a4, v12);
  type metadata accessor for _GraphValue();
  _GraphValue.value.getter();
  if (*(*(a3 - 8) + 64))
  {
    closure #1 in static NavigationStackCore._makeView(view:inputs:)(1, a3, a4, v13);
  }

  AGGraphCreateOffsetAttribute2();
  *v29 = v7;
  _GraphValue.value.getter();
  closure #2 in static NavigationStackCore._makeView(view:inputs:)(1, a3, a4, v14);
  AGGraphCreateOffsetAttribute2();
  lazy protocol witness table accessor for type NavigationAuthority.ViewInputKey and conformance NavigationAuthority.ViewInputKey();
  PropertyList.subscript.getter();
  AnyInterfaceIdiom.init<A>(_:)();
  if (v11)
  {
    v33 = v11;
    if (*v29 && (static AnyInterfaceIdiom.== infix(_:_:)() & 1) != 0)
    {
      goto LABEL_6;
    }

LABEL_8:
    lazy protocol witness table accessor for type NavigationAuthority.SeedInputs and conformance NavigationAuthority.SeedInputs();
    PropertyList.subscript.getter();
    lazy protocol witness table accessor for type _GraphInputs.NavigationPresentationAdaptorKey and conformance _GraphInputs.NavigationPresentationAdaptorKey();
    PropertyList.subscript.getter();
    v21 = type metadata accessor for NavigationStackCore.NavigationStackRepresentableRoot(255, a3, a4, v20);
    v22 = type metadata accessor for _VariadicView.Tree();
    v24 = type metadata accessor for NavigationStackCore.NavigationStackRepresentableChild(0, a3, a4, v23);
    swift_getWitnessTable(protocol conformance descriptor for NavigationStackCore<A>.NavigationStackRepresentableChild, v24);
    _GraphValue.init<A>(_:)();
    *v29 = v8;
    v30 = v35;
    v31 = v36;
    v32[0] = v37[0];
    *(v32 + 12) = *(v37 + 12);
    *&v29[8] = v34;
    v28[0] = swift_getWitnessTable(protocol conformance descriptor for NavigationStackCore<A>.NavigationStackRepresentableRoot, v21);
    v28[1] = a4;
    swift_getWitnessTable(MEMORY[0x1E697E308], v22, v28);
    goto LABEL_9;
  }

  if (*v29)
  {
    goto LABEL_8;
  }

LABEL_6:
  lazy protocol witness table accessor for type NavigationAuthority.SeedInputs and conformance NavigationAuthority.SeedInputs();
  PropertyList.subscript.getter();
  v16 = type metadata accessor for NavigationStackCore.MultimodalNavigationStackRoot(255, a3, a4, v15);
  v17 = type metadata accessor for _VariadicView.Tree();
  v19 = type metadata accessor for NavigationStackCore.MultimodalNavigationStackChild(0, a3, a4, v18);
  swift_getWitnessTable(protocol conformance descriptor for NavigationStackCore<A>.MultimodalNavigationStackChild, v19);
  _GraphValue.init<A>(_:)();
  *v29 = v8;
  v30 = v35;
  v31 = v36;
  v32[0] = v37[0];
  *(v32 + 12) = *(v37 + 12);
  *&v29[8] = v34;
  v27[0] = swift_getWitnessTable(protocol conformance descriptor for NavigationStackCore<A>.MultimodalNavigationStackRoot, v16);
  v27[1] = a4;
  swift_getWitnessTable(MEMORY[0x1E697E308], v17, v27);
LABEL_9:
  static View.makeDebuggableView(view:inputs:)();
  result = *(&v33 + 1);
  *a5 = v33;
  *(a5 + 8) = result;
  return result;
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance _NavigationStackStyleConfiguration.Root(int *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  outlined init with copy of _ViewListInputs(a2, v17);
  v5 = _s7SwiftUI12_GraphInputsV7popLastyq_SgxmAA0C5InputRzAA5StackOyq_G5ValueRtzr0_lFAA06SourceG033_D9F7AF928092578A4B8FA861B49E2161LLVyAA16ListStyleContentVG_AA03AnyJ0AMLLVTt0g5Tm(&lazy cache variable for type metadata for SourceInput<_NavigationStackStyleConfiguration.Root>, lazy protocol witness table accessor for type _NavigationStackStyleConfiguration.Root and conformance _NavigationStackStyleConfiguration.Root, &type metadata for _NavigationStackStyleConfiguration.Root, &lazy protocol witness table cache variable for type SourceInput<_NavigationStackStyleConfiguration.Root> and conformance SourceInput<A>);
  if (v5)
  {
    v9 = v5;
    v10 = v6;
    v11 = v7;
    v12 = v8;
    _GraphInputs.resetCurrentStyleableView()();
    v16 = v4;
    v13 = *(v10 + 16);
    v14 = lazy protocol witness table accessor for type _NavigationStackStyleConfiguration.Root and conformance _NavigationStackStyleConfiguration.Root();
    v13(&v16, v9, v10, v11, v12 | ((HIDWORD(v12) & 1) << 32), v17, a3, v14, v9, v10);
  }

  else
  {
    static _ViewListOutputs.emptyViewList(inputs:)();
  }

  return outlined destroy of _ViewListInputs(v17);
}

uint64_t closure #1 in static NavigationStackReader._makeView(view:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11[0] = a2;
  v11[1] = a3;
  v11[2] = a4;
  v11[3] = a5;
  v10[2] = type metadata accessor for NavigationStackReader(0, v11);
  v6 = MEMORY[0x1E6981EA0];
  v7 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, closure #1 in static PointerOffset.of(_:)partial apply, v10, v6, MEMORY[0x1E69E73E0], v7, MEMORY[0x1E69E7410], v8);
  return v11[0];
}

void type metadata accessor for Binding<AnyNavigationPath>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t closure #2 in static NavigationStackReader._makeView(view:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12[0] = a2;
  v12[1] = a3;
  v12[2] = a4;
  v12[3] = a5;
  v11[2] = type metadata accessor for NavigationStackReader(0, v12);
  type metadata accessor for Binding<AnyNavigationPath>(0, &lazy cache variable for type metadata for Binding<AnyNavigationPath>, &type metadata for AnyNavigationPath, MEMORY[0x1E6981948]);
  v7 = v6;
  v8 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + 8, closure #1 in static PointerOffset.of(_:)partial apply, v11, v7, MEMORY[0x1E69E73E0], v8, MEMORY[0x1E69E7410], v9);
  return v12[0];
}

uint64_t closure #3 in static NavigationStackReader._makeView(view:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13[0] = a2;
  v13[1] = a3;
  v13[2] = a4;
  v13[3] = a5;
  v7 = type metadata accessor for NavigationStackReader(0, v13);
  v8 = *(v7 + 56);
  v12[2] = v7;
  v12[3] = a3;
  v9 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + v8, closure #1 in static PointerOffset.of(_:)partial apply, v12, a3, MEMORY[0x1E69E73E0], v9, MEMORY[0x1E69E7410], v10);
  return v13[0];
}

uint64_t closure #4 in static NavigationStackReader._makeView(view:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13[0] = a2;
  v13[1] = a3;
  v13[2] = a4;
  v13[3] = a5;
  v6 = type metadata accessor for NavigationStackReader(0, v13);
  v7 = *(v6 + 60);
  v12[2] = v6;
  v8 = MEMORY[0x1E69E6370];
  v9 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + v7, _s14AttributeGraph13PointerOffsetV2ofyACyxq_Gq_zFZAESPyq_GXEfU_TA_1, v12, v8, MEMORY[0x1E69E73E0], v9, MEMORY[0x1E69E7410], v10);
  return v13[0];
}

uint64_t closure #5 in static NavigationStackReader._makeView(view:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13[0] = a2;
  v13[1] = a3;
  v13[2] = a4;
  v13[3] = a5;
  v6 = type metadata accessor for NavigationStackReader(0, v13);
  v7 = *(v6 + 64);
  v12[2] = v6;
  v8 = type metadata accessor for NavigationStateHost();
  v9 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + v7, _s14AttributeGraph13PointerOffsetV2ofyACyxq_Gq_zFZAESPyq_GXEfU_TA_8, v12, v8, MEMORY[0x1E69E73E0], v9, MEMORY[0x1E69E7410], v10);
  return v13[0];
}

uint64_t closure #6 in static NavigationStackReader._makeView(view:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v17 = a2;
  v18 = a3;
  v19 = a4;
  v20 = a5;
  v10 = type metadata accessor for NavigationStackReader(0, &v17);
  v11 = *(v10 + 68);
  v15[2] = v10;
  v17 = a2;
  v18 = a3;
  v19 = a4;
  v20 = a5;
  v16 = type metadata accessor for NavigationStackReader.TransformBox(0, &v17);
  v12 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + v11, partial apply for closure #1 in static PointerOffset.of(_:), v15, v16, MEMORY[0x1E69E73E0], v12, MEMORY[0x1E69E7410], v13);
  return v17;
}

uint64_t type metadata accessor for BoundNavigationPathDetector.PathObservation(uint64_t a1)
{
  result = type metadata singleton initialization cache for BoundNavigationPathDetector.PathObservation;
  if (!type metadata singleton initialization cache for BoundNavigationPathDetector.PathObservation)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t closure #2 in static NavigationStackCore._makeView(view:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for NavigationStackCore(0, a2, a3, a4);
  v6 = *(v5 + 36);
  v10[2] = v5;
  v7 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + v6, _s14AttributeGraph13PointerOffsetV2ofyACyxq_Gq_zFZAESPyq_GXEfU_TA_16, v10, &type metadata for NavigationStackContext, MEMORY[0x1E69E73E0], v7, MEMORY[0x1E69E7410], v8);
  return v10[5];
}

unint64_t lazy protocol witness table accessor for type IsInSecureDrawingHierarchy and conformance IsInSecureDrawingHierarchy()
{
  result = lazy protocol witness table cache variable for type IsInSecureDrawingHierarchy and conformance IsInSecureDrawingHierarchy;
  if (!lazy protocol witness table cache variable for type IsInSecureDrawingHierarchy and conformance IsInSecureDrawingHierarchy)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for IsInSecureDrawingHierarchy, &type metadata for IsInSecureDrawingHierarchy, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type IsInSecureDrawingHierarchy and conformance IsInSecureDrawingHierarchy);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IsInSecureDrawingHierarchy and conformance IsInSecureDrawingHierarchy;
  if (!lazy protocol witness table cache variable for type IsInSecureDrawingHierarchy and conformance IsInSecureDrawingHierarchy)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for IsInSecureDrawingHierarchy, &type metadata for IsInSecureDrawingHierarchy, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type IsInSecureDrawingHierarchy and conformance IsInSecureDrawingHierarchy);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IsInSecureDrawingHierarchy and conformance IsInSecureDrawingHierarchy;
  if (!lazy protocol witness table cache variable for type IsInSecureDrawingHierarchy and conformance IsInSecureDrawingHierarchy)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for IsInSecureDrawingHierarchy, &type metadata for IsInSecureDrawingHierarchy, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type IsInSecureDrawingHierarchy and conformance IsInSecureDrawingHierarchy);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IsInSecureDrawingHierarchy and conformance IsInSecureDrawingHierarchy;
  if (!lazy protocol witness table cache variable for type IsInSecureDrawingHierarchy and conformance IsInSecureDrawingHierarchy)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for IsInSecureDrawingHierarchy, &type metadata for IsInSecureDrawingHierarchy, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type IsInSecureDrawingHierarchy and conformance IsInSecureDrawingHierarchy);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IsInSecureDrawingHierarchy and conformance IsInSecureDrawingHierarchy;
  if (!lazy protocol witness table cache variable for type IsInSecureDrawingHierarchy and conformance IsInSecureDrawingHierarchy)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for IsInSecureDrawingHierarchy, &type metadata for IsInSecureDrawingHierarchy, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type IsInSecureDrawingHierarchy and conformance IsInSecureDrawingHierarchy);
  }

  return result;
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance StackDepthModifier(unsigned int *a1, uint64_t a2, void (*a3)(uint64_t, _BYTE *), uint64_t a4, uint64_t a5)
{
  v6 = *a1;
  outlined init with copy of _ViewListInputs(a2, v10);
  v9 = v6;
  v7 = protocol witness for static _GraphInputsModifier._makeInputs(modifier:inputs:) in conformance StackDepthModifier(&v9);
  a3(v7, v10);
  return outlined destroy of _ViewListInputs(v10);
}

uint64_t protocol witness for static _GraphInputsModifier._makeInputs(modifier:inputs:) in conformance StackDepthModifier(unsigned int *a1)
{
  AGGraphCreateOffsetAttribute2();
  lazy protocol witness table accessor for type NavigationAuthority.DepthKey and conformance NavigationAuthority.DepthKey();
  lazy protocol witness table accessor for type Attribute<Int> and conformance Attribute<A>();
  return _GraphInputs.subscript.setter();
}

void type metadata accessor for ModifiedContent<StaticIf<IsInSecureDrawingHierarchy, NavigationStackRepresentable, NavigationStackRepresentable>, _SafeAreaRegionsIgnoringLayout>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<StaticIf<IsInSecureDrawingHierarchy, NavigationStackRepresentable, NavigationStackRepresentable>, _SafeAreaRegionsIgnoringLayout>)
  {
    type metadata accessor for StaticIf<IsInSecureDrawingHierarchy, NavigationStackRepresentable, NavigationStackRepresentable>();
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<StaticIf<IsInSecureDrawingHierarchy, NavigationStackRepresentable, NavigationStackRepresentable>, _SafeAreaRegionsIgnoringLayout>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<StaticIf<IsInSecureDrawingHierarchy, NavigationStackRepresentable, NavigationStackRepresentable>, _SafeAreaRegionsIgnoringLayout> and conformance <> ModifiedContent<A, B>(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    v8 = a2(255);
    v9[0] = a3();
    v9[1] = a4;
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v8, v9);
    atomic_store(result, a1);
  }

  return result;
}

void type metadata accessor for StaticIf<IsInSecureDrawingHierarchy, NavigationStackRepresentable, NavigationStackRepresentable>()
{
  if (!lazy cache variable for type metadata for StaticIf<IsInSecureDrawingHierarchy, NavigationStackRepresentable, NavigationStackRepresentable>)
  {
    v0 = type metadata accessor for StaticIf();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticIf<IsInSecureDrawingHierarchy, NavigationStackRepresentable, NavigationStackRepresentable>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type StaticIf<IsInSecureDrawingHierarchy, NavigationStackRepresentable, NavigationStackRepresentable> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<IsInSecureDrawingHierarchy, NavigationStackRepresentable, NavigationStackRepresentable> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<IsInSecureDrawingHierarchy, NavigationStackRepresentable, NavigationStackRepresentable> and conformance <> StaticIf<A, B, C>)
  {
    v5[5] = v0;
    v5[6] = v1;
    type metadata accessor for StaticIf<IsInSecureDrawingHierarchy, NavigationStackRepresentable, NavigationStackRepresentable>();
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type IsInSecureDrawingHierarchy and conformance IsInSecureDrawingHierarchy();
    v5[1] = &protocol witness table for NavigationStackRepresentable;
    v5[2] = &protocol witness table for NavigationStackRepresentable;
    result = swift_getWitnessTable(MEMORY[0x1E6981CE8], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<IsInSecureDrawingHierarchy, NavigationStackRepresentable, NavigationStackRepresentable> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

uint64_t protocol witness for static ViewInputPredicate.evaluate(inputs:) in conformance IsInSecureDrawingHierarchy(uint64_t *a1, uint64_t a2)
{
  lazy protocol witness table accessor for type IsInSecureDrawingHierarchy and conformance IsInSecureDrawingHierarchy();
  PropertyList.subscript.getter();
  return v3;
}

uint64_t _s7SwiftUI29UIViewControllerRepresentablePAAE9_makeView4view6inputsAA01_G7OutputsVAA11_GraphValueVyxG_AA01_G6InputsVtFZAA015NavigationStackE033_97044434BF355299D05CCAF67303A1CBLLV_Tt2B5@<X0>(uint64_t *a2@<X1>, void *a3@<X8>)
{
  v28 = *MEMORY[0x1E69E9840];
  lazy protocol witness table accessor for type IsInHostingConfiguration and conformance IsInHostingConfiguration();
  PropertyList.subscript.getter();
  if (v22 == 1)
  {
    *&v22 = 0;
    *(&v22 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(119);
    MEMORY[0x18D00C9B0](0xD000000000000043, 0x800000018CD4E500);
    MEMORY[0x18D00C9B0](0xD000000000000075, 0x800000018CD4E1C0);
    MEMORY[0x18D009810](0, 0xE000000000000000);

    _ViewOutputs.init()();
    *&v22 = a2[6];
    DWORD2(v22) = *(a2 + 14);
    result = PreferencesInputs.contains<A>(_:includeHostPreferences:)();
    if (result)
    {
      _DisplayList_Identity.init()();
      v6 = v22;
      v7 = *(a2 + 3);
      v24 = *(a2 + 2);
      v25 = v7;
      v26 = *(a2 + 4);
      v27 = *(a2 + 20);
      v8 = *(a2 + 1);
      v22 = *a2;
      v23 = v8;
      LODWORD(v20) = v6;
      _ViewInputs.pushIdentity(_:)();
      v9 = *(a2 + 3);
      v24 = *(a2 + 2);
      v25 = v9;
      v26 = *(a2 + 4);
      v27 = *(a2 + 20);
      v10 = *(a2 + 1);
      v22 = *a2;
      v23 = v10;
      v11 = _ViewInputs.animatedPosition()();
      v12 = *(a2 + 3);
      v24 = *(a2 + 2);
      v25 = v12;
      v26 = *(a2 + 4);
      v27 = *(a2 + 20);
      v13 = *(a2 + 1);
      v22 = *a2;
      v23 = v13;
      swift_beginAccess();
      v14 = CachedEnvironment.animatedSize(for:)();
      swift_endAccess();
      v15 = *(a2 + 3);
      v24 = *(a2 + 2);
      v25 = v15;
      v26 = *(a2 + 4);
      v27 = *(a2 + 20);
      v23 = *(a2 + 1);
      *&v22 = __PAIR64__(v11, v6);
      DWORD2(v22) = v14;
      HIDWORD(v22) = _ViewInputs.containerPosition.getter();
      protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
      lazy protocol witness table accessor for type UnsupportedDisplayList and conformance UnsupportedDisplayList();
      Attribute.init<A>(body:value:flags:update:)();
      LOBYTE(v22) = 0;
      result = PreferencesOutputs.subscript.setter();
    }

    *a3 = v19[0];
    a3[1] = v19[1];
  }

  else
  {
    static Semantics.v4.getter();
    if ((isLinkedOnOrAfter(_:)() & 1) != 0 && (AGTypeID.isValueType.getter() & 1) == 0)
    {
      _StringGuts.grow(_:)(54);
      MEMORY[0x18D00C9B0](0xD000000000000034, 0x800000018CD4E180);
      MEMORY[0x18D00C9B0](0xD000000000000043, 0x800000018CD4E500);
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    else
    {
      _s7SwiftUI29_TraitWritingTableRowModifierVyAA08DropOntoC3KeyVGMaTm_0(0, &lazy cache variable for type metadata for PlatformViewControllerRepresentableAdaptor<NavigationStackRepresentable>, &type metadata for NavigationStackRepresentable, &protocol witness table for NavigationStackRepresentable, type metadata accessor for PlatformViewControllerRepresentableAdaptor);
      LODWORD(v20) = Attribute.unsafeBitCast<A>(to:)();
      v16 = *(a2 + 3);
      v24 = *(a2 + 2);
      v25 = v16;
      v26 = *(a2 + 4);
      v27 = *(a2 + 20);
      v17 = *(a2 + 1);
      v22 = *a2;
      v23 = v17;
      v18 = static View.makeDebuggableView(view:inputs:)();
      *&v22 = a2[6];
      DWORD2(v22) = *(a2 + 14);
      v20 = a2[6];
      v21 = *(a2 + 14);
      MEMORY[0x1EEE9AC00](v18);
      outlined init with copy of PreferencesInputs(&v22, v19);
      PreferencesOutputs.makePreferenceWriter<A>(inputs:key:value:)();
    }
  }

  return result;
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance NavigationStackRepresentable@<X0>(uint64_t a2@<X1>, void *a3@<X8>)
{
  v3 = *(a2 + 48);
  v6[2] = *(a2 + 32);
  v6[3] = v3;
  v6[4] = *(a2 + 64);
  v7 = *(a2 + 80);
  v4 = *(a2 + 16);
  v6[0] = *a2;
  v6[1] = v4;
  return _s7SwiftUI29UIViewControllerRepresentablePAAE9_makeView4view6inputsAA01_G7OutputsVAA11_GraphValueVyxG_AA01_G6InputsVtFZAA015NavigationStackE033_97044434BF355299D05CCAF67303A1CBLLV_Tt2B5(v6, a3);
}

uint64_t implicit closure #2 in implicit closure #1 in variable initialization expression of NavigationSplitReader._stateHost()
{
  type metadata accessor for NavigationStateHost();
  swift_allocObject();
  return NavigationStateHost.init()();
}

uint64_t NavigationStateHost.init()()
{
  _s7SwiftUI15NavigationStateVSgWOi0_(v8);
  v1 = v8[7];
  *(v0 + 112) = v8[6];
  *(v0 + 128) = v1;
  *(v0 + 144) = v9[0];
  *(v0 + 154) = *(v9 + 10);
  v2 = v8[3];
  *(v0 + 48) = v8[2];
  *(v0 + 64) = v2;
  v3 = v8[5];
  *(v0 + 80) = v8[4];
  *(v0 + 96) = v3;
  v4 = v8[1];
  *(v0 + 16) = v8[0];
  *(v0 + 32) = v4;
  *(v0 + 176) = 0;
  type metadata accessor for NavigationSelectionHost(0);
  v5 = swift_allocObject();
  *(v5 + 16) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI15NavigationStateV12StackContentV3KeyV_AE13SelectionSeedVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  ObservationRegistrar.init()();
  *(v0 + 184) = v5;
  type metadata accessor for NavigationSeedHost(0);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  ObservationRegistrar.init()();
  *(v0 + 192) = v6;
  *(v0 + 200) = 0;
  *(v0 + 208) = 0;
  return v0;
}

double _s7SwiftUI15NavigationStateVSgWOi0_(_OWORD *a1)
{
  result = 0.0;
  *(a1 + 138) = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI15NavigationStateV12StackContentV3KeyV_AE13SelectionSeedVTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    type metadata accessor for _DictionaryStorage<Edge, Bool>(0, &lazy cache variable for type metadata for _DictionaryStorage<NavigationState.StackContent.Key, NavigationState.SelectionSeed>, lazy protocol witness table accessor for type NavigationState.StackContent.Key and conformance NavigationState.StackContent.Key, &type metadata for NavigationState.StackContent.Key, &type metadata for NavigationState.SelectionSeed);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    for (i = (a1 + 56); ; i += 8)
    {
      v5 = *(i - 3);
      v6 = *(i - 16);
      v7 = *(i - 1);
      v8 = *i;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6, v7);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = v3[6] + 24 * result;
      *v11 = v5;
      *(v11 + 8) = v6;
      *(v11 + 16) = v7;
      *(v3[7] + 4 * result) = v8;
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

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance NavigationStateHost@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for NavigationStateHost();
  result = ObservableObject<>.objectWillChange.getter();
  *a2 = result;
  return result;
}

void type metadata accessor for _ContiguousArrayStorage<ToolbarPlacement.Role>()
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<ToolbarPlacement.Role>)
  {
    v0 = type metadata accessor for _ContiguousArrayStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ContiguousArrayStorage<ToolbarPlacement.Role>);
    }
  }
}

uint64_t outlined assign with take of NavigationAuthority?(uint64_t a1, uint64_t a2)
{
  _s7SwiftUI7BindingVyAA28AnyNavigationSplitVisibilityVGMaTm_0(0, &lazy cache variable for type metadata for NavigationAuthority?, &type metadata for NavigationAuthority, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t storeEnumTagSinglePayload for ScrollTargetBehaviorDecelerationContext(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

__n128 initializeWithTake for NavigationAuthority(uint64_t a1, uint64_t a2)
{
  v3 = swift_weakTakeInit();
  result = *(a2 + 8);
  *(v3 + 8) = result;
  return result;
}

void NavigationStateHost.createState(environment:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  swift_beginAccess();
  v4 = MEMORY[0x1E69E7CC0];
  *(v1 + 176) = MEMORY[0x1E69E7CC0];

  *&v10 = v2;
  *(&v10 + 1) = v3;
  *&v11 = 0;
  *(&v11 + 1) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI15NavigationStateV12StackContentV3KeyV_AC0e6ColumnF0VTt0g5Tf4g_n(v4);
  LODWORD(v12) = 0;
  *&v13 = 0;
  *(&v13 + 1) = 1;
  memset(v14, 0, 18);
  destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation();
  swift_beginAccess();
  v5 = *(v1 + 128);
  v15[6] = *(v1 + 112);
  v15[7] = v5;
  v16[0] = *(v1 + 144);
  *(v16 + 10) = *(v1 + 154);
  v6 = *(v1 + 64);
  v15[2] = *(v1 + 48);
  v15[3] = v6;
  v7 = *(v1 + 96);
  v15[4] = *(v1 + 80);
  v15[5] = v7;
  v8 = *(v1 + 32);
  v15[0] = *(v1 + 16);
  v15[1] = v8;
  *(v1 + 112) = v13;
  *(v1 + 128) = 0u;
  *(v1 + 144) = v14[0];
  *(v1 + 154) = 0u;
  *(v1 + 48) = 0u;
  *(v1 + 64) = 0u;
  *(v1 + 80) = 0u;
  *(v1 + 96) = v12;
  *(v1 + 16) = v10;
  *(v1 + 32) = v11;

  outlined destroy of NavigationState?(v15);
  type metadata accessor for NavigationHostingControllerCache_UIKit();
  v9 = swift_allocObject();
  *(v9 + 16) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI33NavigationContentAbstractPositionV_AC0E22StackHostingControllerCyAC7AnyViewVGTt0g5Tf4g_n(v4);
  *(v9 + 24) = 0;
  *(v1 + 200) = v9;

  *(v1 + 208) = 1;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI15NavigationStateV12StackContentV3KeyV_AC0e6ColumnF0VTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    type metadata accessor for _DictionaryStorage<Edge, Bool>(0, &lazy cache variable for type metadata for _DictionaryStorage<NavigationState.StackContent.Key, NavigationColumnState>, lazy protocol witness table accessor for type NavigationState.StackContent.Key and conformance NavigationState.StackContent.Key, &type metadata for NavigationState.StackContent.Key, &type metadata for NavigationColumnState);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    for (i = a1 + 32; ; i += 384)
    {
      outlined init with copy of (String, TabEntry)(i, &v14, &lazy cache variable for type metadata for (NavigationState.StackContent.Key, NavigationColumnState), &type metadata for NavigationState.StackContent.Key, &type metadata for NavigationColumnState, type metadata accessor for (Badge, Spacer));
      v5 = v14;
      v6 = v15;
      v7 = v16;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v14, v15, v16);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = v3[6] + 24 * result;
      *v10 = v5;
      *(v10 + 8) = v6;
      *(v10 + 16) = v7;
      result = memcpy((v3[7] + 360 * result), v17, 0x163uLL);
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

uint64_t outlined destroy of NavigationState?(uint64_t a1)
{
  type metadata accessor for NavigationState?();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata accessor for NavigationState?()
{
  if (!lazy cache variable for type metadata for NavigationState?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for NavigationState?);
    }
  }
}

uint64_t getEnumTagSinglePayload for NavigationState(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 154))
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI33NavigationContentAbstractPositionV_AC0E22StackHostingControllerCyAC7AnyViewVGTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  type metadata accessor for _DictionaryStorage<NavigationContentAbstractPosition, NavigationStackHostingController<AnyView>>(0);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  result = specialized __RawDictionaryStorage.find<A>(_:)(v4, v5);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    v18 = v6;
    return v3;
  }

  v9 = (a1 + 72);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    v10 = v3[6] + 16 * result;
    *v10 = v4;
    *(v10 + 8) = v5;
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
    v4 = *(v9 - 16);
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

uint64_t initializeWithCopy for NavigationAuthority(uint64_t a1, uint64_t a2)
{
  swift_weakCopyInit();
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;

  return a1;
}

void NavigationAuthority.enqueueRequest(_:)(uint64_t a1)
{
  v2 = v1;
  type metadata accessor for Logger?(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    if ((*(Strong + 208) & 1) == 0)
    {
      v9 = *(v1 + 16);
      *&v41[0] = *(v1 + 8);
      *(&v41[0] + 1) = v9;

      NavigationStateHost.createState(environment:)(v41);
    }

    static Log.navigation.getter();
    v10 = type metadata accessor for Logger();
    v11 = *(v10 - 8);
    if ((*(v11 + 48))(v6, 1, v10) == 1)
    {
      _s2os6LoggerVSgWOhTm_2(v6, type metadata accessor for Logger?);
    }

    else
    {
      outlined init with copy of NavigationRequest(a1, v41);
      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v39 = v1;
        v15 = v14;
        v16 = swift_slowAlloc();
        v43[0] = v16;
        *v15 = 141558275;
        *(v15 + 4) = 1752392040;
        *(v15 + 12) = 2081;
        v17 = NavigationRequest.description.getter();
        v38 = a1;
        v19 = v18;
        outlined destroy of NavigationRequest(v41);
        v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v19, v43);
        a1 = v38;

        *(v15 + 14) = v20;
        _os_log_impl(&dword_18BD4A000, v12, v13, "%{private,mask.hash}s", v15, 0x16u);
        __swift_destroy_boxed_opaque_existential_1(v16);
        MEMORY[0x18D0110E0](v16, -1, -1);
        v21 = v15;
        v2 = v39;
        MEMORY[0x18D0110E0](v21, -1, -1);
      }

      else
      {

        outlined destroy of NavigationRequest(v41);
      }

      (*(v11 + 8))(v6, v10);
    }

    swift_beginAccess();
    v22 = *(v8 + 176);
    if (v22)
    {
      v23 = *(v22 + 16);
      outlined init with copy of NavigationRequest(a1, v41);
      swift_beginAccess();
      v24 = *(v8 + 176);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v8 + 176) = v24;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v24 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v24 + 2) + 1, 1, v24);
        *(v8 + 176) = v24;
      }

      v27 = *(v24 + 2);
      v26 = *(v24 + 3);
      if (v27 >= v26 >> 1)
      {
        v24 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v27 + 1, 1, v24);
      }

      *(v24 + 2) = v27 + 1;
      v28 = &v24[168 * v27];
      v29 = v41[0];
      v30 = v41[2];
      *(v28 + 3) = v41[1];
      *(v28 + 4) = v30;
      *(v28 + 2) = v29;
      v31 = v41[3];
      v32 = v41[4];
      v33 = v41[6];
      *(v28 + 7) = v41[5];
      *(v28 + 8) = v33;
      *(v28 + 5) = v31;
      *(v28 + 6) = v32;
      v34 = v41[7];
      v35 = v41[8];
      v36 = v41[9];
      *(v28 + 24) = v42;
      *(v28 + 10) = v35;
      *(v28 + 11) = v36;
      *(v28 + 9) = v34;
      *(v8 + 176) = v24;
      swift_endAccess();
      if (!v23)
      {
        v40 = 17;
        outlined init with copy of NavigationAuthority(v2, v41);
        v37 = swift_allocObject();
        outlined init with take of NavigationAuthority(v41, v37 + 16);
        static Update.enqueueAction(reason:_:)();
      }
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_18BE8AAA4()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t initializeWithCopy for NavigationRequest(uint64_t a1, uint64_t *a2)
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

  return a1;
}

double destroy for NavigationRequest(void *a1)
{
  switch(*(a1 + 96))
  {
    case 0:
      goto LABEL_29;
    case 1:

      goto LABEL_29;
    case 2:

      __swift_destroy_boxed_opaque_existential_1(a1 + 2);
      break;
    case 3:

      break;
    case 4:
    case 5:

      goto LABEL_29;
    case 6:

      goto LABEL_29;
    case 0xA:
    case 0x11:
      __swift_destroy_boxed_opaque_existential_1(a1);

      goto LABEL_29;
    case 0xB:
      __swift_destroy_boxed_opaque_existential_1(a1);
      break;
    case 0xC:
    case 0xD:

      if (a1[4])
      {
        __swift_destroy_boxed_opaque_existential_1(a1 + 1);
      }

      if (a1[7] != 1)
      {
      }

      goto LABEL_29;
    case 0xE:

      if (a1[4])
      {
        __swift_destroy_boxed_opaque_existential_1(a1 + 1);
      }

      v2 = a1[7];
      goto LABEL_24;
    case 0x12:

      if (a1[5])
      {
        __swift_destroy_boxed_opaque_existential_1(a1 + 2);
      }

      if (a1[8] != 1)
      {
      }

      goto LABEL_29;
    case 0x13:
      if (a1[3])
      {
        __swift_destroy_boxed_opaque_existential_1(a1);
      }

      v2 = a1[6];
LABEL_24:
      if (v2 == 1)
      {
        break;
      }

      goto LABEL_29;
    case 0x15:
      if (*a1)
      {
      }

      if (a1[2])
      {
LABEL_29:
      }

      break;
    default:
      break;
  }

  return result;
}

double destroy for NavigationAuthority(uint64_t a1)
{
  swift_weakDestroy();

  return result;
}

void closure #1 in EnsureNavigationStateSeeds.value.getter(uint64_t *a3@<X8>)
{
  WeakValue = AGGraphGetWeakValue();
  if (WeakValue)
  {
    v5 = *WeakValue;
  }

  else
  {
    type metadata accessor for NavigationSeedHost(0);
    v6 = AGGraphGetWeakValue();
    if (v6)
    {
      v7 = *v6;
      swift_getKeyPath();
      lazy protocol witness table accessor for type NavigationSeedHost and conformance NavigationSeedHost();

      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v8 = *(v7 + 16);

      v5 = v8;
    }

    else
    {
      v5 = -1;
    }
  }

  *a3 = v5;
}

void *_s14AttributeGraph0A0V13dynamicMemberACyqd__Gs7KeyPathCyxqd__G_tcluigqd__xcfU_7SwiftUI19NavigationStateHostC_AI0i4SeedK0CTG5TA_0@<X0>(void *a2@<X8>)
{
  result = swift_getAtKeyPath();
  *a2 = v4;
  return result;
}

unint64_t lazy protocol witness table accessor for type NavigationSeedHost and conformance NavigationSeedHost()
{
  result = lazy protocol witness table cache variable for type NavigationSeedHost and conformance NavigationSeedHost;
  if (!lazy protocol witness table cache variable for type NavigationSeedHost and conformance NavigationSeedHost)
  {
    v3 = type metadata accessor for NavigationSeedHost(255);
    result = swift_getWitnessTable(protocol conformance descriptor for NavigationSeedHost, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type NavigationSeedHost and conformance NavigationSeedHost);
  }

  return result;
}

uint64_t initializeWithCopy for NavigationState(uint64_t a1, uint64_t *a2)
{
  v4 = a2[1];
  *a1 = *a2;
  *(a1 + 8) = v4;
  v5 = a2[3];
  *(a1 + 16) = a2[2];
  *(a1 + 24) = v5;
  v6 = a2[5];

  if (v6)
  {
    *(a1 + 32) = *(a2 + 8);
    v7 = a2[6];
    v8 = a2[7];
    *(a1 + 40) = v6;
    *(a1 + 48) = v7;
    v9 = a2[8];
    v10 = a2[9];
    *(a1 + 56) = v8;
    *(a1 + 64) = v9;
    *(a1 + 72) = v10;
    *(a1 + 80) = *(a2 + 20);
  }

  else
  {
    v11 = *(a2 + 3);
    *(a1 + 32) = *(a2 + 2);
    *(a1 + 48) = v11;
    *(a1 + 64) = *(a2 + 4);
    *(a1 + 80) = *(a2 + 20);
  }

  v12 = a2[13];
  if (v12 != 1)
  {
    *(a1 + 88) = a2[11];
    if (v12)
    {
      *(a1 + 96) = a2[12];
      *(a1 + 104) = v12;
      *(a1 + 112) = *(a2 + 112);
    }

    else
    {
      *(a1 + 96) = *(a2 + 6);
      *(a1 + 112) = *(a2 + 112);
    }

    v13 = a2[15];
    *(a1 + 113) = *(a2 + 113);
    if (v13)
    {
      v14 = a2[16];
      *(a1 + 120) = v13;
      *(a1 + 128) = v14;

      v15 = a2[18];
      if (v15)
      {
LABEL_11:
        *(a1 + 136) = a2[17];
        *(a1 + 144) = v15;
        *(a1 + 152) = *(a2 + 152);

LABEL_14:
        *(a1 + 153) = *(a2 + 153);
        return a1;
      }
    }

    else
    {
      *(a1 + 120) = *(a2 + 15);
      v15 = a2[18];
      if (v15)
      {
        goto LABEL_11;
      }
    }

    *(a1 + 136) = *(a2 + 17);
    *(a1 + 152) = *(a2 + 152);
    goto LABEL_14;
  }

  *(a1 + 104) = *(a2 + 13);
  *(a1 + 120) = *(a2 + 15);
  *(a1 + 136) = *(a2 + 17);
  *(a1 + 152) = *(a2 + 76);
  *(a1 + 88) = *(a2 + 11);
  return a1;
}

uint64_t storeEnumTagSinglePayload for NavigationState(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 152) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 154) = 1;
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

    *(result + 154) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTag for AccessibilityActionCategory.Category(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

double destroy for NavigationState(void *a1)
{

  if (a1[5])
  {
  }

  v3 = a1[13];
  if (v3)
  {
    if (v3 == 1)
    {
      return result;
    }
  }

  if (a1[15])
  {
  }

  if (a1[18])
  {
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NavigationState.StackContent.Key and conformance NavigationState.StackContent.Key()
{
  result = lazy protocol witness table cache variable for type NavigationState.StackContent.Key and conformance NavigationState.StackContent.Key;
  if (!lazy protocol witness table cache variable for type NavigationState.StackContent.Key and conformance NavigationState.StackContent.Key)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NavigationState.StackContent.Key, &type metadata for NavigationState.StackContent.Key, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type NavigationState.StackContent.Key and conformance NavigationState.StackContent.Key);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NavigationState.StackContent.Key and conformance NavigationState.StackContent.Key;
  if (!lazy protocol witness table cache variable for type NavigationState.StackContent.Key and conformance NavigationState.StackContent.Key)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NavigationState.StackContent.Key, &type metadata for NavigationState.StackContent.Key, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type NavigationState.StackContent.Key and conformance NavigationState.StackContent.Key);
  }

  return result;
}

uint64_t initializeWithCopy for PositionedNavigationDestinationProcessor(uint64_t result, uint64_t a2)
{
  if (*(a2 + 8) == 1)
  {
    *result = *a2;
    *(result + 16) = *(a2 + 16);
  }

  else
  {
    v2 = result;
    swift_weakCopyInit();
    v4 = *(a2 + 8);
    v5 = *(a2 + 16);
    *(v2 + 8) = v4;
    *(v2 + 16) = v5;

    return v2;
  }

  return result;
}

double destroy for PositionedNavigationDestinationProcessor(uint64_t a1)
{
  if (*(a1 + 8) != 1)
  {
    swift_weakDestroy();
  }

  return result;
}

unint64_t type metadata accessor for UINavigationPresentationAdaptor()
{
  result = lazy cache variable for type metadata for UINavigationPresentationAdaptor;
  if (!lazy cache variable for type metadata for UINavigationPresentationAdaptor)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for UINavigationPresentationAdaptor);
  }

  return result;
}

uint64_t sub_18BE8BEA4@<X0>(uint64_t a2@<X8>)
{
  *a2 = xmmword_18CD6C650;
  *(a2 + 16) = 0;
  return EnvironmentValues.init()();
}

uint64_t initializeWithCopy for ContainerBackgroundValue(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = a2[1];
  outlined copy of ContainerBackgroundValue.Content(*a2, v5);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = *(a2 + 16);
  v6 = a2[3];
  v7 = a2[4];
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;

  return a1;
}

double destroy for ContainerBackgroundValue(uint64_t *a1)
{
  outlined consume of ContainerBackgroundValue.Content(*a1, a1[1]);

  return result;
}

double outlined copy of ContainerBackgroundValue.Content(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    if (a2 >> 62 != 1)
    {
      return result;
    }
  }

  return result;
}

double outlined consume of ContainerBackgroundValue.Content(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    if (a2 >> 62 != 1)
    {
      return result;
    }
  }

  return result;
}

uint64_t RootViewDelegate.hostingView<A>(_:didMoveTo:)(void *a1, uint64_t a2)
{
  v5 = *MEMORY[0x1E69E7D40] & *a1;
  _UIHostingView.viewGraph.getter(a1);
  if (a2)
  {
    GraphHost.addPreference<A>(_:)();
  }

  else
  {
    GraphHost.removePreference<A>(_:)();
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = *(v2 + 32);
    ObjectType = swift_getObjectType();
    (*(v7 + 8))(a1, a2, *(v5 + 80), *(v5 + 88), ObjectType, v7);

    return swift_unknownObjectRelease();
  }

  return result;
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

{
  a5[(result >> 6) + 8] |= 1 << result;
  *(a5[6] + 8 * result) = a2;
  v5 = (a5[7] + 16 * result);
  *v5 = a3;
  v5[1] = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Namespace.ID and conformance Namespace.ID()
{
  result = lazy protocol witness table cache variable for type Namespace.ID and conformance Namespace.ID;
  if (!lazy protocol witness table cache variable for type Namespace.ID and conformance Namespace.ID)
  {
    result = swift_getWitnessTable(MEMORY[0x1E6981EA8], MEMORY[0x1E6981EA0], v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type Namespace.ID and conformance Namespace.ID);
  }

  return result;
}

void type metadata accessor for _ContiguousArrayStorage<(Namespace.ID, Transaction)>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<(Namespace.ID, Transaction)>)
  {
    type metadata accessor for (Namespace.ID, Transaction)();
    v1 = type metadata accessor for _ContiguousArrayStorage();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _ContiguousArrayStorage<(Namespace.ID, Transaction)>);
    }
  }
}

void type metadata accessor for (Namespace.ID, Transaction)()
{
  if (!lazy cache variable for type metadata for (Namespace.ID, Transaction))
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (Namespace.ID, Transaction));
    }
  }
}

void *_sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI9NamespaceV2IDV_AC11TransactionVTt0g5Tf4g_n(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  type metadata accessor for _DictionaryStorage<Edge, Bool>(0, &lazy cache variable for type metadata for _DictionaryStorage<Namespace.ID, Transaction>, lazy protocol witness table accessor for type Namespace.ID and conformance Namespace.ID, MEMORY[0x1E6981EA0], MEMORY[0x1E697DD78]);
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

void type metadata accessor for SheetPreference?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t outlined destroy of (Namespace.ID, Transaction)(uint64_t a1)
{
  type metadata accessor for (Namespace.ID, Transaction)();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata completion function for AccessibilityFocusStore.Entry(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t type metadata completion function for NavigationStackCoordinator(uint64_t a1)
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

uint64_t outlined init with take of NavigationAuthority?(uint64_t a1, uint64_t a2)
{
  _s7SwiftUI7BindingVyAA28AnyNavigationSplitVisibilityVGMaTm_0(0, &lazy cache variable for type metadata for NavigationAuthority?, &type metadata for NavigationAuthority, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t getEnumTagSinglePayload for ScrollTargetBehaviorDecelerationContext(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
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

double MakeConfirmationDialog.environment.getter@<D0>(void *a1@<X8>)
{
  Value = AGGraphGetValue();
  v4 = *Value;
  v3 = Value[1];
  *a1 = v4;
  a1[1] = v3;

  return result;
}

double protocol witness for static EnvironmentKey.defaultValue.getter in conformance DialogSuppressionConfiguration.Key@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 48) = 0;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

double ScrollBehaviorModifier.ChildEnvironment.environment.getter@<D0>(void *a2@<X8>)
{
  Value = AGGraphGetValue();
  v5 = *Value;
  v4 = Value[1];
  *a2 = v5;
  a2[1] = v4;

  return result;
}

void closure #1 in View.navigationTitlePreferenceTransform(adding:)(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v6 = *(a1 + 24);
  if (v6)
  {
    if (v6 == 1)
    {
      v7 = a3[1];
      v18 = *a3;
      v19 = v7;
      v20[0] = a3[2];
      *(v20 + 9) = *(a3 + 41);
      v8 = *(a1 + 16);
      v21[0] = *a1;
      v21[1] = v8;
      v22[0] = *(a1 + 32);
      *(v22 + 9) = *(a1 + 41);
      outlined init with copy of NavigationTitleStorage(a3, &v17);
      outlined destroy of NavigationTitleStorage?(v21);
      v9 = v19;
      *a1 = v18;
      *(a1 + 16) = v9;
      *(a1 + 32) = v20[0];
      *(a1 + 41) = *(v20 + 9);
      if (*(a1 + 24) == 1)
      {
        return;
      }

LABEL_16:
      v16 = *(a1 + 32);

      outlined consume of ListItemTint?(v16);
      *(a1 + 32) = a2;
      return;
    }

    v13 = *(a1 + 40);
    if (v13 == 5)
    {
      goto LABEL_8;
    }

    if (*(a1 + 48))
    {
      goto LABEL_16;
    }
  }

  else
  {
    v10 = *a3;
    v11 = *(a3 + 1);
    v12 = *(a3 + 2);
    v6 = *(a3 + 3);
    outlined copy of Text?(*a3, v11, v12, v6);
    v13 = *(a1 + 40);
    *a1 = v10;
    *(a1 + 8) = v11;
    *(a1 + 16) = v12;
    *(a1 + 24) = v6;
    if (v13 == 5)
    {
LABEL_8:
      LOBYTE(v13) = *(a3 + 40);
    }
  }

  *(a1 + 40) = v13;
  v14 = *(a1 + 48);
  if (!v14)
  {
  }

  *(a1 + 48) = v14;
  v15 = *(a1 + 56);
  if (v15 == 3)
  {
    LOBYTE(v15) = *(a3 + 56);
  }

  *(a1 + 56) = v15;
  if (v6 != 1)
  {
    goto LABEL_16;
  }
}

void type metadata accessor for _GraphValue<ToolbarRemovingModifier>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t outlined destroy of NavigationTitleStorage?(uint64_t a1)
{
  type metadata accessor for PredicateExpressions.Variable<String>(0, &lazy cache variable for type metadata for NavigationTitleStorage?, &type metadata for NavigationTitleStorage, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static TrueAllowsSecureDrawingModifier._makeView(modifier:inputs:body:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, __int128 *))
{
  v4 = *(a2 + 48);
  v5 = *(a2 + 16);
  v17 = *(a2 + 32);
  v18 = v4;
  v6 = *(a2 + 48);
  v19 = *(a2 + 64);
  v7 = *(a2 + 16);
  v16[0] = *a2;
  v16[1] = v7;
  v12 = v17;
  v13 = v6;
  v14 = *(a2 + 64);
  v20 = *(a2 + 80);
  v15 = *(a2 + 80);
  v10 = v16[0];
  v11 = v5;
  LOBYTE(v25[0]) = 1;
  outlined init with copy of _ViewInputs(v16, &v27);
  lazy protocol witness table accessor for type IsInSecureDrawingHierarchy and conformance IsInSecureDrawingHierarchy();
  PropertyList.subscript.setter();
  v23[2] = v12;
  v23[3] = v13;
  v23[4] = v14;
  v24 = v15;
  v23[0] = v10;
  v23[1] = v11;
  v29 = v12;
  v30 = v13;
  v31 = v14;
  v32 = v15;
  v27 = v10;
  v28 = v11;
  v8 = outlined init with copy of _ViewInputs(v23, v25);
  a3(v8, &v27);
  v25[2] = v29;
  v25[3] = v30;
  v25[4] = v31;
  v26 = v32;
  v25[0] = v27;
  v25[1] = v28;
  outlined destroy of _ViewInputs(v25);
  v21 = v18;
  v22 = DWORD2(v18);
  outlined init with copy of PreferencesInputs(&v21, &v27);
  PreferencesOutputs.makePreferenceWriter<A>(inputs:key:value:)();

  v29 = v12;
  v30 = v13;
  v31 = v14;
  v32 = v15;
  v27 = v10;
  v28 = v11;
  return outlined destroy of _ViewInputs(&v27);
}

void type metadata accessor for _PreferenceTransformModifier<PresentationOptionsPreferenceKey>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

double one-time initialization function for navigationBarLeading()
{
  static ToolbarItemPlacement.navigationBarLeading = 9;
  result = 0.0;
  *algn_1EAA0AC60 = 0u;
  *&algn_1EAA0AC60[16] = 0u;
  byte_1EAA0AC80 = 2;
  return result;
}

double Button.init(role:action:label:)@<D0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(uint64_t)@<X3>, uint64_t a5@<X5>, uint64_t a6@<X6>, _BYTE *a7@<X8>)
{
  *a7 = *a1;
  v10 = &a7[*(type metadata accessor for Button(0, a5, a6, a4) + 36)];
  *v10 = a2;
  v10[1] = a3;
  type metadata accessor for ButtonAction(0);
  swift_storeEnumTagMultiPayload();

  a4(v11);

  return result;
}

uint64_t AlertModifier.AlertEnvironment.value.getter@<X0>(void *a2@<X8>)
{
  ScrollBehaviorModifier.ChildEnvironment.environment.getter(a2);
  EnvironmentValues.textCase.setter();
  static Text.Sizing.standard.getter();
  return EnvironmentValues.textSizing.setter();
}

uint64_t View.onTest(_:handler:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *a1;
  v7 = a1[1];
  v10[0] = v8;
  v10[1] = v7;
  v10[2] = a2;
  v10[3] = a3;

  MEMORY[0x18D00A570](v10, a4, &unk_1EFFA84B0, a5);
}

void MakeAlertStorage.updateValue()(void *a1)
{
  v2 = v1;
  v3 = a1;
  v251 = *MEMORY[0x1E69E9840];
  v4 = a1[2];
  v5 = a1[4];
  v6 = a1[5];
  v157 = a1[3];
  v158 = v4;
  *&v242 = v4;
  *(&v242 + 1) = v157;
  v155 = v6;
  v156 = v5;
  *&v243 = v5;
  *(&v243 + 1) = v6;
  v7 = type metadata accessor for AlertModifier(0, &v242);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v162 = &v139 - v9;
  v154 = type metadata accessor for (_:)();
  OutputValue = AGGraphGetOutputValue();
  v167 = v3;
  v164 = v7;
  v160 = v8;
  if (!OutputValue)
  {
    v165 = 0;
    v166 = 0;
    v149 = 0;
    v150 = 0;
    v147 = 0;
    v148 = 0;
    v146 = 0;
    v151 = 0;
    v145 = 0;
    v153 = 0;
    v12 = 0;
    v13 = 0;
    goto LABEL_5;
  }

  LODWORD(v242) = *v1;
  v11 = AGGraphAnyInputsChanged();
  *v1 = v242;
  if (v11)
  {
    v151 = 0;
    v152 = 1;
    v165 = 0;
    v166 = 0;
    v149 = 0;
    v150 = 0;
    v147 = 0;
    v148 = 0;
    v146 = 0;
    v145 = 0;
    v153 = 0;
    v12 = 0;
    v13 = 0;
    goto LABEL_6;
  }

  v17 = *(v1 + 112);
  v248 = *(v1 + 96);
  v249 = v17;
  v250[0] = *(v1 + 128);
  *(v250 + 9) = *(v1 + 137);
  v18 = *(v1 + 48);
  v244 = *(v1 + 32);
  v245 = v18;
  v19 = *(v1 + 80);
  v246 = *(v1 + 64);
  v247 = v19;
  v20 = *(v1 + 16);
  v242 = *v1;
  v243 = v20;
  MakeConfirmationDialog.environment.getter(&v233);

  v21 = PropertyList.Tracker.hasDifferentUsedValues(_:)();

  if ((v21 & 1) == 0)
  {
    return;
  }

  v22 = *(v2 + 112);
  v23 = *(v2 + 80);
  v239 = *(v2 + 96);
  v240 = v22;
  v24 = *(v2 + 112);
  v241[0] = *(v2 + 128);
  *(v241 + 9) = *(v2 + 137);
  v25 = *(v2 + 48);
  v26 = *(v2 + 16);
  v235 = *(v2 + 32);
  v236 = v25;
  v27 = *(v2 + 48);
  v28 = *(v2 + 80);
  v237 = *(v2 + 64);
  v238 = v28;
  v29 = *(v2 + 16);
  v233 = *v2;
  v234 = v29;
  v230 = v239;
  v231 = v24;
  v232[0] = *(v2 + 128);
  *(v232 + 9) = *(v2 + 137);
  v226 = v235;
  v227 = v27;
  v228 = v237;
  v229 = v23;
  v30 = v167;
  v224 = v233;
  v225 = v26;
  v31 = *(v167 - 1);
  v165 = *(v31 + 16);
  v166 = v31 + 16;
  v165(&v215, &v233, v167);
  Alert = MakeAlertStorage.resolveTitle()(v30);
  v159 = v32;
  v248 = v230;
  v249 = v231;
  v250[0] = v232[0];
  *(v250 + 9) = *(v232 + 9);
  v244 = v226;
  v245 = v227;
  v246 = v228;
  v247 = v229;
  v242 = v224;
  v243 = v225;
  v33 = *(v31 + 8);
  *&v161 = v31 + 8;
  v151 = v33;
  v33(&v242, v30);
  v34 = *(v2 + 112);
  v230 = *(v2 + 96);
  v231 = v34;
  v232[0] = *(v2 + 128);
  *(v232 + 9) = *(v2 + 137);
  v35 = *(v2 + 48);
  v226 = *(v2 + 32);
  v227 = v35;
  v36 = *(v2 + 80);
  v228 = *(v2 + 64);
  v229 = v36;
  v37 = *(v2 + 16);
  v224 = *v2;
  v225 = v37;
  MakeConfirmationDialog.environment.getter(&v213);
  if (v214)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DialogColorSchemeKey>, &type metadata for DialogColorSchemeKey, &protocol witness table for DialogColorSchemeKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<DialogColorSchemeKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<DialogColorSchemeKey>, &type metadata for DialogColorSchemeKey, &protocol witness table for DialogColorSchemeKey);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DialogColorSchemeKey>, &type metadata for DialogColorSchemeKey, &protocol witness table for DialogColorSchemeKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<DialogColorSchemeKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<DialogColorSchemeKey>, &type metadata for DialogColorSchemeKey, &protocol witness table for DialogColorSchemeKey);
    PropertyList.subscript.getter();
  }

  if (v169 == 2)
  {
    v107 = *(v2 + 112);
    v221 = *(v2 + 96);
    v222 = v107;
    v223[0] = *(v2 + 128);
    *(v223 + 9) = *(v2 + 137);
    v108 = *(v2 + 48);
    v217 = *(v2 + 32);
    v218 = v108;
    v109 = *(v2 + 80);
    v219 = *(v2 + 64);
    v220 = v109;
    v110 = *(v2 + 16);
    v215 = *v2;
    v216 = v110;
    MakeConfirmationDialog.environment.getter(v208);
    EnvironmentValues.explicitPreferredColorScheme.getter();

    v143 = v170;
  }

  else
  {
    v143 = v169;
    v170 = v169;
  }

  v111 = *(v2 + 112);
  v221 = *(v2 + 96);
  v222 = v111;
  v223[0] = *(v2 + 128);
  *(v223 + 9) = *(v2 + 137);
  v112 = *(v2 + 48);
  v217 = *(v2 + 32);
  v218 = v112;
  v113 = *(v2 + 80);
  v219 = *(v2 + 64);
  v220 = v113;
  v114 = *(v2 + 16);
  v215 = *v2;
  v216 = v114;
  MakeConfirmationDialog.environment.getter(&v211);
  if (v212)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DialogIconKey>, &type metadata for DialogIconKey, &protocol witness table for DialogIconKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<DialogIconKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<DialogIconKey>, &type metadata for DialogIconKey, &protocol witness table for DialogIconKey);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DialogIconKey>, &type metadata for DialogIconKey, &protocol witness table for DialogIconKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<DialogIconKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<DialogIconKey>, &type metadata for DialogIconKey, &protocol witness table for DialogIconKey);
    PropertyList.subscript.getter();
  }

  v153 = v210;

  v115 = *(v2 + 112);
  v116 = *(v2 + 80);
  v205 = *(v2 + 96);
  v206 = v115;
  v117 = *(v2 + 112);
  v207[0] = *(v2 + 128);
  *(v207 + 9) = *(v2 + 137);
  v118 = *(v2 + 48);
  v119 = *(v2 + 16);
  v201 = *(v2 + 32);
  v202 = v118;
  v120 = *(v2 + 48);
  v121 = *(v2 + 80);
  v203 = *(v2 + 64);
  v204 = v121;
  v122 = *(v2 + 16);
  v199 = *v2;
  v200 = v122;
  v196 = v205;
  v197 = v117;
  v198[0] = *(v2 + 128);
  *(v198 + 9) = *(v2 + 137);
  v192 = v201;
  v193 = v120;
  v194 = v203;
  v195 = v116;
  v190 = v199;
  v191 = v119;
  v123 = v167;
  v165(v180, &v199, v167);
  v124 = MakeAlertStorage.resolveTintColor()(v123);
  v165 = v125;
  v166 = v124;
  v152 = v126;
  v208[6] = v196;
  v208[7] = v197;
  v209[0] = v198[0];
  *(v209 + 9) = *(v198 + 9);
  v208[2] = v192;
  v208[3] = v193;
  v208[4] = v194;
  v208[5] = v195;
  v208[0] = v190;
  v208[1] = v191;
  v151(v208, v123);
  v127 = *(v2 + 112);
  v196 = *(v2 + 96);
  v197 = v127;
  v198[0] = *(v2 + 128);
  *(v198 + 9) = *(v2 + 137);
  v128 = *(v2 + 48);
  v192 = *(v2 + 32);
  v193 = v128;
  v129 = *(v2 + 80);
  v194 = *(v2 + 64);
  v195 = v129;
  v130 = *(v2 + 16);
  v190 = *v2;
  v191 = v130;
  MakeConfirmationDialog.environment.getter(v179);
  if (v179[1])
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.DialogSeverityKey>, &type metadata for EnvironmentValues.DialogSeverityKey, &protocol witness table for EnvironmentValues.DialogSeverityKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.DialogSeverityKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.DialogSeverityKey>, &type metadata for EnvironmentValues.DialogSeverityKey, &protocol witness table for EnvironmentValues.DialogSeverityKey);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.DialogSeverityKey>, &type metadata for EnvironmentValues.DialogSeverityKey, &protocol witness table for EnvironmentValues.DialogSeverityKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.DialogSeverityKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.DialogSeverityKey>, &type metadata for EnvironmentValues.DialogSeverityKey, &protocol witness table for EnvironmentValues.DialogSeverityKey);
    PropertyList.subscript.getter();
  }

  v140 = v168;
  v131 = *(v2 + 16);
  v180[0] = *v2;
  v180[1] = v131;
  v180[2] = *(v2 + 32);
  v132 = *(v2 + 48);
  v133 = *(v2 + 72);
  v134 = *(v2 + 96);
  v184 = *(v2 + 80);
  v185 = v134;
  v135 = *(v2 + 128);
  v186 = *(v2 + 112);
  v187 = v135;
  v136 = *(v2 + 144);
  v137 = *(v2 + 152);
  v144 = v132;
  v181 = v132;
  v161 = *(v2 + 56);
  v182 = v161;
  v141 = v133;
  v183 = v133;
  v139 = v136;
  v188 = v136;
  v189 = v137;
  MakeConfirmationDialog.environment.getter(v178);
  if (v178[1])
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DialogSuppressionConfiguration.Key>, &type metadata for DialogSuppressionConfiguration.Key, &protocol witness table for DialogSuppressionConfiguration.Key);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<DialogSuppressionConfiguration.Key> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<DialogSuppressionConfiguration.Key>, &type metadata for DialogSuppressionConfiguration.Key, &protocol witness table for DialogSuppressionConfiguration.Key);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DialogSuppressionConfiguration.Key>, &type metadata for DialogSuppressionConfiguration.Key, &protocol witness table for DialogSuppressionConfiguration.Key);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<DialogSuppressionConfiguration.Key> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<DialogSuppressionConfiguration.Key>, &type metadata for DialogSuppressionConfiguration.Key, &protocol witness table for DialogSuppressionConfiguration.Key);
    PropertyList.subscript.getter();
  }

  v149 = v172;
  v150 = v171;
  v147 = v174;
  v148 = v173;
  v146 = v175;
  v151 = v176;
  v145 = v177;

  v12 = Alert;
  v7 = v164;
  v13 = v159;
  v8 = v160;
  if (!v161)
  {
    v3 = v167;
    goto LABEL_6;
  }

  v3 = v167;
  if (Alert == v144 && v161 == v159 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v138 = *(v2 + 64);
    if (v143 == 2)
    {
      if (v138 != 2)
      {
        goto LABEL_6;
      }
    }

    else if (v138 == 2 || ((v138 ^ v143) & 1) != 0)
    {
      goto LABEL_6;
    }

    if (v153)
    {
      if (!v141)
      {
        goto LABEL_6;
      }

      LODWORD(v161) = static Image.== infix(_:_:)();

      if ((v161 & 1) == 0)
      {
        goto LABEL_6;
      }
    }

    else if (v141)
    {
      v153 = 0;
      goto LABEL_6;
    }

    if ((v152 & 1) == 0)
    {
      if ((v205 & 1) != 0 || *&v166 != *&v204 || *(&v166 + 1) != *(&v204 + 1) || *&v165 != *(&v204 + 2) || *(&v165 + 1) != *(&v204 + 3))
      {
        v152 = 0;
        goto LABEL_6;
      }

LABEL_66:
      if (v140 == BYTE1(v205) && !v151)
      {
        if (!v139)
        {

          return;
        }

        v151 = 0;
      }

      goto LABEL_6;
    }

    if (v205)
    {
      goto LABEL_66;
    }

LABEL_5:
    v152 = 1;
  }

LABEL_6:
  Value = AGGraphGetValue();
  v16 = v15;
  (*(v8 + 16))(v162, Value, v7);
  if (v13)
  {
    v159 = v13;
  }

  else if (!*(v2 + 56) || (v16 & 1) != 0)
  {
    v38 = *(v2 + 112);
    v39 = *(v2 + 80);
    v239 = *(v2 + 96);
    v240 = v38;
    v40 = *(v2 + 112);
    v241[0] = *(v2 + 128);
    *(v241 + 9) = *(v2 + 137);
    v41 = *(v2 + 48);
    v42 = *(v2 + 16);
    v235 = *(v2 + 32);
    v236 = v41;
    v43 = *(v2 + 48);
    v44 = *(v2 + 80);
    v237 = *(v2 + 64);
    v238 = v44;
    v45 = *(v2 + 16);
    v233 = *v2;
    v234 = v45;
    v230 = v239;
    v231 = v40;
    v232[0] = *(v2 + 128);
    *(v232 + 9) = *(v2 + 137);
    v226 = v235;
    v227 = v43;
    v228 = v237;
    v229 = v39;
    v224 = v233;
    v225 = v42;
    v46 = *(v3 - 1);
    (*(v46 + 16))(&v242, &v233, v3);
    v12 = MakeAlertStorage.resolveTitle()(v3);
    v159 = v47;
    v248 = v230;
    v249 = v231;
    v250[0] = v232[0];
    *(v250 + 9) = *(v232 + 9);
    v244 = v226;
    v245 = v227;
    v246 = v228;
    v247 = v229;
    v242 = v224;
    v243 = v225;
    (*(v46 + 8))(&v242, v3);
  }

  else
  {
    v12 = *(v2 + 48);
    v159 = *(v2 + 56);
  }

  Alert = v12;
  v48 = *(v2 + 112);
  v248 = *(v2 + 96);
  v249 = v48;
  v250[0] = *(v2 + 128);
  *(v250 + 9) = *(v2 + 137);
  v49 = *(v2 + 48);
  v244 = *(v2 + 32);
  v245 = v49;
  v50 = *(v2 + 80);
  v246 = *(v2 + 64);
  v247 = v50;
  v51 = *(v2 + 16);
  v242 = *v2;
  v243 = v51;
  MakeConfirmationDialog.environment.getter(v180);
  if (*(&v180[0] + 1))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DialogColorSchemeKey>, &type metadata for DialogColorSchemeKey, &protocol witness table for DialogColorSchemeKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<DialogColorSchemeKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<DialogColorSchemeKey>, &type metadata for DialogColorSchemeKey, &protocol witness table for DialogColorSchemeKey);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DialogColorSchemeKey>, &type metadata for DialogColorSchemeKey, &protocol witness table for DialogColorSchemeKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<DialogColorSchemeKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<DialogColorSchemeKey>, &type metadata for DialogColorSchemeKey, &protocol witness table for DialogColorSchemeKey);
    PropertyList.subscript.getter();
  }

  if (LOBYTE(v178[0]) == 2)
  {
    v52 = *(v2 + 112);
    v239 = *(v2 + 96);
    v240 = v52;
    v241[0] = *(v2 + 128);
    *(v241 + 9) = *(v2 + 137);
    v53 = *(v2 + 48);
    v235 = *(v2 + 32);
    v236 = v53;
    v54 = *(v2 + 80);
    v237 = *(v2 + 64);
    v238 = v54;
    v55 = *(v2 + 16);
    v233 = *v2;
    v234 = v55;
    MakeConfirmationDialog.environment.getter(&v224);
    EnvironmentValues.explicitPreferredColorScheme.getter();

    LODWORD(v161) = LOBYTE(v179[0]);
  }

  else
  {
    LODWORD(v161) = LOBYTE(v178[0]);
    LOBYTE(v179[0]) = v178[0];
  }

  v56 = *(v2 + 112);
  v239 = *(v2 + 96);
  v240 = v56;
  v241[0] = *(v2 + 128);
  *(v241 + 9) = *(v2 + 137);
  v57 = *(v2 + 48);
  v235 = *(v2 + 32);
  v236 = v57;
  v58 = *(v2 + 80);
  v237 = *(v2 + 64);
  v238 = v58;
  v59 = *(v2 + 16);
  v233 = *v2;
  v234 = v59;
  MakeConfirmationDialog.environment.getter(&v224);
  if (*(&v224 + 1))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DialogIconKey>, &type metadata for DialogIconKey, &protocol witness table for DialogIconKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<DialogIconKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<DialogIconKey>, &type metadata for DialogIconKey, &protocol witness table for DialogIconKey);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DialogIconKey>, &type metadata for DialogIconKey, &protocol witness table for DialogIconKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<DialogIconKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<DialogIconKey>, &type metadata for DialogIconKey, &protocol witness table for DialogIconKey);
    PropertyList.subscript.getter();
  }

  v144 = v215;

  v60 = v167;
  if (v152)
  {
    v61 = *(v2 + 112);
    v62 = *(v2 + 80);
    v230 = *(v2 + 96);
    v231 = v61;
    v63 = *(v2 + 112);
    v232[0] = *(v2 + 128);
    *(v232 + 9) = *(v2 + 137);
    v64 = *(v2 + 48);
    v65 = *(v2 + 16);
    v226 = *(v2 + 32);
    v227 = v64;
    v66 = *(v2 + 48);
    v67 = *(v2 + 80);
    v228 = *(v2 + 64);
    v229 = v67;
    v68 = *(v2 + 16);
    v224 = *v2;
    v225 = v68;
    v221 = v230;
    v222 = v63;
    v223[0] = *(v2 + 128);
    *(v223 + 9) = *(v2 + 137);
    v217 = v226;
    v218 = v66;
    v219 = v228;
    v220 = v62;
    v215 = v224;
    v216 = v65;
    v69 = *(v167 - 1);
    (*(v69 + 16))(&v233, &v224, v167);
    v70 = MakeAlertStorage.resolveTintColor()(v60);
    v165 = v71;
    v166 = v70;
    LODWORD(v152) = v72;
    v239 = v221;
    v240 = v222;
    v241[0] = v223[0];
    *(v241 + 9) = *(v223 + 9);
    v235 = v217;
    v236 = v218;
    v237 = v219;
    v238 = v220;
    v233 = v215;
    v234 = v216;
    (*(v69 + 8))(&v233, v60);
  }

  else
  {
    LODWORD(v152) = 0;
  }

  v73 = *(v2 + 112);
  v239 = *(v2 + 96);
  v240 = v73;
  v241[0] = *(v2 + 128);
  *(v241 + 9) = *(v2 + 137);
  v74 = *(v2 + 48);
  v235 = *(v2 + 32);
  v236 = v74;
  v75 = *(v2 + 80);
  v237 = *(v2 + 64);
  v238 = v75;
  v76 = *(v2 + 16);
  v233 = *v2;
  v234 = v76;
  MakeConfirmationDialog.environment.getter(&v171);
  if (v172)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.DialogSeverityKey>, &type metadata for EnvironmentValues.DialogSeverityKey, &protocol witness table for EnvironmentValues.DialogSeverityKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.DialogSeverityKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.DialogSeverityKey>, &type metadata for EnvironmentValues.DialogSeverityKey, &protocol witness table for EnvironmentValues.DialogSeverityKey);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.DialogSeverityKey>, &type metadata for EnvironmentValues.DialogSeverityKey, &protocol witness table for EnvironmentValues.DialogSeverityKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.DialogSeverityKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.DialogSeverityKey>, &type metadata for EnvironmentValues.DialogSeverityKey, &protocol witness table for EnvironmentValues.DialogSeverityKey);
    PropertyList.subscript.getter();
  }

  v143 = v210;
  v77 = *(v2 + 112);
  v230 = *(v2 + 96);
  v231 = v77;
  v232[0] = *(v2 + 128);
  *(v232 + 9) = *(v2 + 137);
  v78 = *(v2 + 48);
  v226 = *(v2 + 32);
  v227 = v78;
  v79 = *(v2 + 80);
  v228 = *(v2 + 64);
  v229 = v79;
  v80 = *(v2 + 16);
  v224 = *v2;
  v225 = v80;
  MakeConfirmationDialog.environment.getter(&v213);
  if (v214)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DialogSuppressionConfiguration.Key>, &type metadata for DialogSuppressionConfiguration.Key, &protocol witness table for DialogSuppressionConfiguration.Key);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<DialogSuppressionConfiguration.Key> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<DialogSuppressionConfiguration.Key>, &type metadata for DialogSuppressionConfiguration.Key, &protocol witness table for DialogSuppressionConfiguration.Key);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DialogSuppressionConfiguration.Key>, &type metadata for DialogSuppressionConfiguration.Key, &protocol witness table for DialogSuppressionConfiguration.Key);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<DialogSuppressionConfiguration.Key> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<DialogSuppressionConfiguration.Key>, &type metadata for DialogSuppressionConfiguration.Key, &protocol witness table for DialogSuppressionConfiguration.Key);
    PropertyList.subscript.getter();
  }

  v199 = v190;
  v200 = v191;
  v201 = v192;
  LOBYTE(v202) = v193;

  v81 = v164;
  v82 = v162;
  v83 = &v162[*(v164 + 68)];
  v84 = *(v83 + 3);
  v217 = *(v83 + 2);
  v218 = v84;
  v219 = *(v83 + 4);
  *&v220 = *(v83 + 10);
  v85 = *(v83 + 1);
  v215 = *v83;
  v216 = v85;
  v86 = *(v2 + 8);
  v87 = *(v2 + 16);
  LODWORD(v211) = *AGGraphGetValue();
  ViewIdentity.Tracker.update(for:)();
  v88 = *v82;
  v89 = v2;
  v142 = v2;
  v91 = *(v82 + 1);
  v90 = *(v82 + 2);
  v92 = v82[24];
  v93 = *(v89 + 28);
  v94 = v82[*(v81 + 72)];
  v95 = swift_allocObject();
  *(v95 + 16) = v93;
  *(v95 + 20) = v88;
  *(v95 + 24) = v91;
  *(v95 + 32) = v90;
  *(v95 + 40) = v92;
  *(v95 + 44) = v86;
  *(v95 + 52) = v87;
  v96 = v159;
  *(v95 + 64) = Alert;
  *(v95 + 72) = v96;
  *(v95 + 80) = v94;
  *(v95 + 81) = v161;
  v97 = v144;
  v98 = v165;
  v99 = v166;
  *(v95 + 88) = v144;
  *(v95 + 96) = v99;
  *(v95 + 104) = v98;
  v100 = v152 & 1;
  *(v95 + 112) = v152 & 1;
  v101 = v143;
  *(v95 + 113) = v143;
  v102 = v199;
  v103 = v200;
  v104 = v201;
  *(v95 + 168) = v202;
  *(v95 + 152) = v104;
  *(v95 + 136) = v103;
  *(v95 + 120) = v102;
  v105 = v218;
  *(v95 + 208) = v217;
  *(v95 + 224) = v105;
  *(v95 + 240) = v219;
  *(v95 + 256) = v220;
  v106 = v216;
  *(v95 + 176) = v215;
  *(v95 + 192) = v106;
  v211 = partial apply for closure #2 in MakeAlertStorage.updateValue();
  v212 = v95;

  outlined init with copy of DialogSuppressionConfiguration?(&v199, v208, &lazy cache variable for type metadata for DialogSuppressionConfiguration?, &type metadata for DialogSuppressionConfiguration);
  outlined init with copy of DialogSuppressionConfiguration?(&v215, v208, &lazy cache variable for type metadata for BoundInputsView?, &type metadata for BoundInputsView);
  AGGraphSetOutputValue();

  $defer #1 <A, B>() in MakeAlertStorage.updateValue()(v142, Alert, v96, v161, v97, v166, v165, v100, v101);
  outlined consume of DialogSuppressionConfiguration?(v150, v149, v148, v147, v146, v151);

  outlined destroy of BoundInputsView?(&v199, &lazy cache variable for type metadata for DialogSuppressionConfiguration?, &type metadata for DialogSuppressionConfiguration);

  (*(v160 + 8))(v82, v164);
}

uint64_t sub_18BE8E6F4()
{

  if (*(v0 + 160))
  {
    if (*(v0 + 144))
    {
      outlined consume of Text.Storage(*(v0 + 120), *(v0 + 128), *(v0 + 136));
    }
  }

  if (*(v0 + 176))
  {
  }

  return swift_deallocObject();
}

uint64_t MakeAlertStorage.resolveTitle()(uint64_t a1)
{
  v3 = *(a1 + 32);
  v38 = *(a1 + 16);
  v39 = v3;
  v27 = type metadata accessor for AlertModifier(0, &v38);
  v4 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v6 = &v27 - v5;
  v7 = *(v1 + 5);
  v30 = *(v1 + 4);
  v8 = v1[1];
  v28 = *v1;
  v29 = v8;
  v9 = v1[7];
  v37[0] = v1[8];
  *(v37 + 9) = *(v1 + 137);
  v10 = v1[4];
  v32 = v1[3];
  v33 = v10;
  v11 = v1[5];
  v35 = v1[6];
  v36 = v9;
  v34 = v11;

  PropertyList.Tracker.reset()();
  v12 = v1[1];
  v38 = *v1;
  v39 = v12;
  v13 = v1[7];
  v14 = v1[8];
  v15 = v1[5];
  v45 = v1[6];
  v46 = v13;
  v47[0] = v14;
  *(v47 + 9) = *(v1 + 137);
  v16 = v1[4];
  v42 = v1[3];
  v43 = v16;
  v40 = *(v1 + 4);
  v41 = v7;
  v44 = v15;
  MakeConfirmationDialog.environment.getter(&v48);

  EnvironmentValues.init(_:tracker:)();
  v18 = v49;
  v17 = v50;
  v31 = v7;
  MakeAlertStorage.modifier.getter(a1, v6);
  v19 = *(v6 + 4);
  v20 = *(v6 + 5);
  v21 = v6[48];
  outlined copy of Text.Storage(v19, v20, v21);
  v22 = *(v4 + 8);

  v22(v6, v27);
  *&v38 = v18;
  *(&v38 + 1) = v17;
  static Semantics.v7.getter();
  v23 = isLinkedOnOrAfter(_:)();
  v24 = 256;
  if ((v23 & 1) == 0)
  {
    v24 = 0;
  }

  v48 = v24;
  v49 = 0;
  v50 = 0;
  v25 = Text.resolveString(in:with:idiom:)();
  outlined consume of Text.Storage(v19, v20, v21);

  return v25;
}

uint64_t MakeAlertStorage.modifier.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 32);
  v7[0] = *(a1 + 16);
  v7[1] = v3;
  v4 = type metadata accessor for AlertModifier(0, v7);
  Value = AGGraphGetValue();
  return (*(*(v4 - 8) + 16))(a2, Value, v4);
}

unint64_t MakeAlertStorage.resolveTintColor()(uint64_t a1)
{
  v2 = *(v1 + 5);
  v41 = *(v1 + 4);
  v3 = v1[1];
  v39 = *v1;
  v40 = v3;
  v4 = v1[8];
  v37 = v1[7];
  v38[0] = v4;
  *(v38 + 9) = *(v1 + 137);
  v5 = v1[4];
  v33 = v1[3];
  v34 = v5;
  v6 = v1[6];
  v35 = v1[5];
  v36 = v6;
  static Semantics.v6_4.getter();
  if (isLinkedOnOrAfter(_:)())
  {
    v7 = v1[1];
    v22 = *v1;
    v23 = v7;
    v24 = *(v1 + 4);
    v25 = v2;
    v8 = v1[8];
    v30 = v1[7];
    v31[0] = v8;
    *(v31 + 9) = *(v1 + 137);
    v9 = v1[4];
    v26 = v1[3];
    v27 = v9;
    v10 = v1[6];
    v28 = v1[5];
    v29 = v10;
    MakeConfirmationDialog.environment.getter(&v32);
    v11 = EnvironmentValues.tintColor.getter();
  }

  else
  {
    v11 = 0;
  }

  v12 = v1[1];
  v22 = *v1;
  v23 = v12;
  v24 = *(v1 + 4);
  v25 = v2;
  v13 = v1[8];
  v30 = v1[7];
  v31[0] = v13;
  *(v31 + 9) = *(v1 + 137);
  v14 = v1[4];
  v26 = v1[3];
  v27 = v14;
  v15 = v1[6];
  v28 = v1[5];
  v29 = v15;
  MakeConfirmationDialog.environment.getter(&v32);
  if (*(&v32 + 1))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DialogTintColorKey>, &type metadata for DialogTintColorKey, &protocol witness table for DialogTintColorKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<DialogTintColorKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<DialogTintColorKey>, &type metadata for DialogTintColorKey, &protocol witness table for DialogTintColorKey);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DialogTintColorKey>, &type metadata for DialogTintColorKey, &protocol witness table for DialogTintColorKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<DialogTintColorKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<DialogTintColorKey>, &type metadata for DialogTintColorKey, &protocol witness table for DialogTintColorKey);
    PropertyList.subscript.getter();
  }

  if (v21)
  {
    goto LABEL_10;
  }

  if (v11)
  {

LABEL_10:

    PropertyList.Tracker.reset()();
    v22 = v39;
    v23 = v40;
    v24 = v41;
    v25 = v2;
    v30 = v37;
    v31[0] = v38[0];
    *(v31 + 9) = *(v38 + 9);
    v26 = v33;
    v27 = v34;
    v28 = v35;
    v29 = v36;
    MakeConfirmationDialog.environment.getter(&v21);

    EnvironmentValues.init(_:tracker:)();
    v22 = v32;
    dispatch thunk of AnyColorBox.resolve(in:)();
    v17 = v16;
    v19 = v18;

    return v17 | (v19 << 32);
  }

  return 0;
}

uint64_t outlined init with copy of DialogSuppressionConfiguration?(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  _s14AttributeGraph0A0Vy7SwiftUI17EnvironmentValuesVGMaTm_0(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t getEnumTagSinglePayload for DialogSuppressionConfiguration(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
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

void $defer #1 <A, B>() in MakeAlertStorage.updateValue()(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, char a9)
{
  *(a1 + 48) = a2;
  *(a1 + 56) = a3;

  *(a1 + 64) = a4;
  *(a1 + 72) = a5;

  *(a1 + 80) = a6;
  *(a1 + 88) = a7;
  *(a1 + 96) = a8 & 1;
  *(a1 + 97) = a9;
}

double outlined consume of DialogSuppressionConfiguration?(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a6)
  {
    outlined consume of Text?(a1, a2, a3, a4);
  }

  return result;
}

uint64_t closure #2 in MakeAlertStorage.updateValue()(void *a1, unsigned int a2, char a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, char a17, uint64_t a18, uint64_t *a19)
{
  if (*(*a1 + 16))
  {
    v21 = a6;
    specialized __RawDictionaryStorage.find<A>(_:)(a2);
    a6 = v21;
    if (v22)
    {
      MEMORY[0x18D009810](0xD00000000000007DLL, 0x800000018CD510F0);
      a6 = v21;
    }
  }

  *&v42[6] = *a18;
  v39 = a6 & 1;
  *&v42[22] = *(a18 + 16);
  *&v42[38] = *(a18 + 32);
  v42[54] = *(a18 + 48);
  memset(v43, 0, sizeof(v43));
  v44 = 0;

  outlined init with copy of DialogSuppressionConfiguration?(a18, v72, &lazy cache variable for type metadata for DialogSuppressionConfiguration?, &type metadata for DialogSuppressionConfiguration);
  outlined init with copy of DialogSuppressionConfiguration?(a19, v72, &lazy cache variable for type metadata for BoundInputsView?, &type metadata for BoundInputsView);
  outlined destroy of BoundInputsView?(v43, &lazy cache variable for type metadata for BoundInputsView?, &type metadata for BoundInputsView);
  *&v89[15] = *&v42[47];
  *v89 = *&v42[32];
  v88 = *&v42[16];
  v34 = a19[1];
  v35 = *a19;
  v32 = a19[3];
  v33 = a19[2];
  v30 = a19[5];
  v31 = a19[4];
  v28 = a19[7];
  v29 = a19[6];
  v26 = a19[9];
  v27 = a19[8];
  v25 = a19[10];
  v72[0] = a3 & 1;
  v73 = a4;
  v74 = a5;
  v75 = v39;
  v76 = a7;
  v77 = a8;
  v78 = a9;
  v79 = a10;
  v80 = a11 & 1;
  v81 = a12;
  v82 = a13;
  v83 = a14;
  v84 = a15;
  v85 = a16 & 1;
  v86 = a17;
  v87 = *v42;
  v90 = v35;
  v91 = v34;
  v92 = v33;
  v93 = v32;
  v94 = v31;
  v95 = v30;
  v96 = v29;
  v97 = v28;
  v98 = v27;
  v99 = v26;
  v100 = v25;
  outlined init with copy of AlertStorage(v72, v45);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v45[0] = *a1;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v72, a2, isUniquelyReferenced_nonNull_native);
  *&v60[15] = *&v42[47];
  *v60 = *&v42[32];
  v59 = *&v42[16];
  *a1 = v45[0];
  LOBYTE(v45[0]) = a3 & 1;
  v45[1] = a4;
  v45[2] = a5;
  v46 = v39;
  v47 = a7;
  v48 = a8;
  v49 = a9;
  v50 = a10;
  v51 = a11 & 1;
  v52 = a12;
  v53 = a13;
  v54 = a14;
  v55 = a15;
  v56 = a16 & 1;
  v57 = a17;
  v58 = *v42;
  v61 = v35;
  v62 = v34;
  v63 = v33;
  v64 = v32;
  v65 = v31;
  v66 = v30;
  v67 = v29;
  v68 = v28;
  v69 = v27;
  v70 = v26;
  v71 = v25;
  return outlined destroy of AlertStorage(v45);
}

uint64_t initializeWithCopy for AlertStorage(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v4;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  v5 = *(a2 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = v5;
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 96) = *(a2 + 96);
  v6 = *(a2 + 144);

  if (v6)
  {
    v7 = *(a2 + 128);
    if (v7)
    {
      v8 = *(a2 + 104);
      v9 = *(a2 + 112);
      v10 = *(a2 + 120);
      outlined copy of Text.Storage(v8, v9, v10);
      *(a1 + 104) = v8;
      *(a1 + 112) = v9;
      *(a1 + 120) = v10;
      *(a1 + 128) = v7;
    }

    else
    {
      *(a1 + 104) = *(a2 + 104);
      *(a1 + 120) = *(a2 + 120);
    }

    *(a1 + 136) = *(a2 + 136);
    *(a1 + 144) = v6;
    *(a1 + 152) = *(a2 + 152);
  }

  else
  {
    *(a1 + 104) = *(a2 + 104);
    *(a1 + 120) = *(a2 + 120);
    *(a1 + 136) = *(a2 + 136);
    *(a1 + 152) = *(a2 + 152);
  }

  v11 = *(a2 + 160);
  if (v11)
  {
    v12 = *(a2 + 168);
    *(a1 + 160) = v11;
    *(a1 + 168) = v12;
    *(a1 + 176) = *(a2 + 176);
    v13 = *(a2 + 192);
    *(a1 + 184) = *(a2 + 184);
    *(a1 + 192) = v13;
    *(a1 + 200) = *(a2 + 200);
    *(a1 + 208) = *(a2 + 208);
    *(a1 + 216) = *(a2 + 216);
    *(a1 + 224) = *(a2 + 224);
    *(a1 + 240) = *(a2 + 240);
    v14 = v13;
  }

  else
  {
    v15 = *(a2 + 208);
    *(a1 + 192) = *(a2 + 192);
    *(a1 + 208) = v15;
    *(a1 + 224) = *(a2 + 224);
    *(a1 + 240) = *(a2 + 240);
    v16 = *(a2 + 176);
    *(a1 + 160) = *(a2 + 160);
    *(a1 + 176) = v16;
  }

  return a1;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 4 * result) == a1)
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
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (((*(*(v2 + 48) + result) ^ a1) & 1) == 0)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

void destroy for AlertStorage(uint64_t a1)
{

  if (*(a1 + 144))
  {
    if (*(a1 + 128))
    {
      outlined consume of Text.Storage(*(a1 + 104), *(a1 + 112), *(a1 + 120));
    }
  }

  if (*(a1 + 160))
  {
  }
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, int a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 4 * result) = a2;
  v4 = a4[7] + 248 * result;
  v5 = *(a3 + 208);
  *(v4 + 192) = *(a3 + 192);
  *(v4 + 208) = v5;
  *(v4 + 224) = *(a3 + 224);
  *(v4 + 240) = *(a3 + 240);
  v6 = *(a3 + 144);
  *(v4 + 128) = *(a3 + 128);
  *(v4 + 144) = v6;
  v7 = *(a3 + 176);
  *(v4 + 160) = *(a3 + 160);
  *(v4 + 176) = v7;
  v8 = *(a3 + 80);
  *(v4 + 64) = *(a3 + 64);
  *(v4 + 80) = v8;
  v9 = *(a3 + 112);
  *(v4 + 96) = *(a3 + 96);
  *(v4 + 112) = v9;
  v10 = *(a3 + 16);
  *v4 = *a3;
  *(v4 + 16) = v10;
  v11 = *(a3 + 48);
  *(v4 + 32) = *(a3 + 32);
  *(v4 + 48) = v11;
  v12 = a4[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v14;
  }

  return result;
}

{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 4 * result) = a2;
  v4 = a4[7] + 120 * result;
  v5 = *(a3 + 16);
  *v4 = *a3;
  *(v4 + 16) = v5;
  v6 = *(a3 + 48);
  *(v4 + 32) = *(a3 + 32);
  *(v4 + 48) = v6;
  *(v4 + 112) = *(a3 + 112);
  v7 = *(a3 + 96);
  *(v4 + 80) = *(a3 + 80);
  *(v4 + 96) = v7;
  *(v4 + 64) = *(a3 + 64);
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

uint64_t NavigationStackCore.NavigationStackRepresentableChild.value.getter@<X0>(uint64_t a1@<X0>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v29 = a7;
  v10 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v27 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  Value = AGGraphGetValue();
  v13 = *Value;
  v26 = *(Value + 8);
  v25 = *(Value + 16);
  NavigationStackCore.NavigationStackRepresentableChild.ensuredAuthority.getter(v30);
  WeakValue = AGGraphGetWeakValue();
  if (WeakValue)
  {
    v15 = *WeakValue;
  }

  else
  {
    v15 = -1;
  }

  v28 = a6;
  NavigationStackCore.NavigationStackRepresentableChild.navigationPresentationAdaptor.getter(a4, &v31);
  v16 = v34[0];
  if (v34[0] == 1)
  {
    v17 = 0;
    v16 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
  }

  else
  {
    v20 = v31;
    v19 = v32;
    v18 = v33;
    v17 = v34[1];
  }

  v31 = v13;
  LOBYTE(v32) = v26;
  v33 = v25;
  outlined init with take of NavigationAuthority(v30, v34);
  v34[3] = v15;
  v34[4] = v20;
  v34[5] = v19;
  v34[6] = v18;
  v34[7] = v16;
  v34[8] = v17;
  v21 = AGGraphGetValue();
  (*(v10 + 16))(v27, v21, a5);
  type metadata accessor for NavigationStackCore.NavigationStackRepresentableRoot(0, a5, v28, v22);
  return _VariadicView.Tree.init(root:content:)();
}

uint64_t *NavigationStackReader.AppliedBody.value.getter@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v43 = a3;
  v42 = a2;
  v49 = a8;
  v13 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for ModifiedContent();
  v38 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v17 = &v34 - v16;
  v47 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v36 = &v34 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v55 = a4;
  *(&v55 + 1) = a5;
  v56 = a6;
  v57 = a7;
  v40 = type metadata accessor for NavigationStackReader.AppliedBody(255, &v55);
  type metadata accessor for PositionedNavigationDestinationProcessor(255, v40, &protocol witness table for NavigationStackReader<A, B>.AppliedBody, v20);
  v48 = type metadata accessor for ModifiedContent();
  v46 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v44 = &v34 - v21;
  v37 = a4;
  *&v55 = a4;
  *(&v55 + 1) = a5;
  v45 = a6;
  v56 = a6;
  v57 = a7;
  v22 = a7;
  type metadata accessor for NavigationStackReader.TransformBox(0, &v55);
  v35 = *AGGraphGetValue();
  type metadata accessor for Binding<AnyNavigationPath>(0, &lazy cache variable for type metadata for NavigationState.StackContent.Key?, &type metadata for NavigationState.StackContent.Key, MEMORY[0x1E69E6720]);

  v41 = a1;
  result = AGGraphGetValue();
  v24 = *(result + 8);
  if (v24 == 6)
  {
    __break(1u);
  }

  else
  {
    v25 = result[2];
    v26 = *result;
    Value = AGGraphGetValue();
    v28 = (*(v13 + 16))(v15, Value, a5);
    MEMORY[0x18D00A570](v28, a5, &type metadata for NavigationStackRootDecoratingModifier, v22);
    (*(v13 + 8))(v15, a5);
    v29 = v36;
    v35(v26, v24, v25, v17);

    (*(v38 + 8))(v17, v39);
    v30 = v37;
    v31 = v45;
    NavigationStackReader.AppliedBody.authority.getter(v53);
    if (v54 == 2)
    {
      outlined destroy of NavigationAuthority??(v53);
      v55 = xmmword_18CD633F0;
      v56 = 0;
    }

    else
    {
      outlined init with copy of NavigationAuthority?(v53, v50);
      if (v51 == 1)
      {
        v55 = xmmword_18CD633F0;
        v56 = 0;
      }

      else
      {
        outlined init with take of NavigationAuthority(v50, &v55);
      }

      outlined destroy of NavigationAuthority?(v53);
    }

    v32 = v44;
    View.processNavigationDestinations<A>(authority:processor:)(&v55, v40, v30, v40, v31, &protocol witness table for NavigationStackReader<A, B>.AppliedBody);
    outlined destroy of NavigationAuthority?(&v55);
    (*(v47 + 8))(v29, v30);
    v52[0] = v31;
    v52[1] = &protocol witness table for PositionedNavigationDestinationProcessor<A>;
    v33 = v48;
    swift_getWitnessTable(MEMORY[0x1E697E858], v48, v52);
    View.transformPreference<A>(_:_:)();
    return (*(v46 + 8))(v32, v33);
  }

  return result;
}

void *initializeWithCopy for NavigationStackReader(void *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *a2;
  v4 = a2 + 15;
  *a1 = v5;
  v6 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v6 = *(v4 & 0xFFFFFFFFFFFFFFF8);
  v6[1] = *((v4 & 0xFFFFFFFFFFFFFFF8) + 8);
  v6[2] = *((v4 & 0xFFFFFFFFFFFFFFF8) + 16);
  v7 = *(a3 + 24);
  v8 = *(*(v7 - 8) + 16);
  v9 = *(v7 - 8) + 16;
  v10 = *(*(v7 - 8) + 80);
  v11 = (v6 + v10 + 24) & ~v10;
  v12 = (v10 + 24 + (v4 & 0xFFFFFFFFFFFFFFF8)) & ~v10;

  v8(v11, v12, v7);
  v13 = *(v9 + 48);
  v14 = v13 + v11;
  v15 = v13 + v12;
  *v14 = *v15;
  v14 &= 0xFFFFFFFFFFFFFFF8;
  v15 &= 0xFFFFFFFFFFFFFFF8;
  *(v14 + 8) = *(v15 + 8);
  v16 = ((v14 + 23) & 0xFFFFFFFFFFFFFFF8);
  v17 = ((v15 + 23) & 0xFFFFFFFFFFFFFFF8);
  v18 = v17[1];
  *v16 = *v17;
  v16[1] = v18;

  return a1;
}

double destroy for NavigationStackReader(uint64_t a1, uint64_t a2)
{
  v3 = (a1 + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(*(*(a2 + 24) - 8) + 8))((v3 + *(*(*(a2 + 24) - 8) + 80) + 24) & ~*(*(*(a2 + 24) - 8) + 80));

  return result;
}

uint64_t NavigationStackReader.ChildEnvironment.updateValue()(void *a1)
{
  v2 = v1;
  v65 = *MEMORY[0x1E69E9840];
  v4 = a1[3];
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  NavigationStackReader.ChildEnvironment.environment.getter(&v63);
  NavigationStackReader.ChildEnvironment.inheritedAuthority.getter(&v61);
  v43 = v7;
  v44 = v5;
  if (v62 == 1)
  {
    outlined destroy of NavigationAuthority?(&v61);
  }

  else
  {
    if (v62 != 2)
    {
      goto LABEL_8;
    }

    outlined destroy of NavigationAuthority??(&v61);
  }

  outlined init with copy of NavigationAuthority?(v1 + 40, &v61);
  if (v62 == 1)
  {
    outlined destroy of NavigationAuthority?(&v61);
    type metadata accessor for NavigationStateHost();
    AGGraphGetValue();

    NavigationStackReader.ChildEnvironment.environment.getter(&v61);
    v8 = v61;
    v9 = v62;
    swift_weakInit();
    swift_weakAssign();

    v47 = v8;
    v48 = v9;
    outlined assign with take of NavigationAuthority?(&v46, v2 + 40);
    outlined init with copy of NavigationAuthority?(v2 + 40, &v46);
    if (v47 != 1)
    {
      goto LABEL_9;
    }

    __break(1u);
  }

LABEL_8:
  outlined init with take of NavigationAuthority(&v61, &v46);
LABEL_9:
  outlined init with take of NavigationAuthority(&v46, &v61);
  v10 = *(a1 - 1);
  v11 = (*(v10 + 16))(&v46, v2, a1);
  v12 = MEMORY[0x1EEE9AC00](v11);
  *(&v41 - 6) = a1[2];
  *(&v41 - 5) = v4;
  v13 = a1[5];
  *(&v41 - 4) = a1[4];
  *(&v41 - 3) = v13;
  v41 = v13;
  v42 = v4;
  *(&v41 - 2) = &v61;
  *(&v41 - 1) = v2;
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for NavigationStackReader<A, B>.ChildEnvironment, a1, v12);
  MEMORY[0x18D000B40](a1, &type metadata for NavigationState.SelectionSeed, WitnessTable);
  StatefulRule.withObservation<A>(observationCenter:do:)();

  (*(v10 + 8))(&v46, a1);
  LODWORD(v46) = v60[0];
  type metadata accessor for _PreferenceTransformModifier<InspectorStorageV5.PreferenceKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<NavigationStateSelectionSeed>, &type metadata for NavigationStateSelectionSeed, &protocol witness table for NavigationStateSelectionSeed, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<ContainerBackgroundKeys.HasContainerBackgroundPlacementKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<NavigationStateSelectionSeed> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<NavigationStateSelectionSeed>, &type metadata for NavigationStateSelectionSeed, &protocol witness table for NavigationStateSelectionSeed);

  PropertyList.subscript.setter();
  v15 = v64;
  if (v64)
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  type metadata accessor for (authority: NavigationAuthority?, computedEnvironment: EnvironmentValues)(0);
  v17 = v16;
  if (AGGraphGetOutputValue())
  {
    goto LABEL_19;
  }

  v46 = NavigationStackReader.ChildEnvironment.path.getter();
  v47 = v18;
  v48 = v19;
  type metadata accessor for Binding<AnyNavigationPath>(0, &lazy cache variable for type metadata for Binding<AnyNavigationPath>, &type metadata for AnyNavigationPath, MEMORY[0x1E6981948]);
  MEMORY[0x18D00ACC0](v60);
  v20 = v60[0];

  v22 = (*(*v20 + 80))(v21);

  if ((v22 & 1) == 0)
  {
    outlined init with copy of NavigationAuthority(&v61, v60);
    v23 = v42;
    Value = AGGraphGetValue();
    v26 = v43;
    v25 = v44;
    (*(v44 + 16))(v43, Value, v23);
    result = NavigationStackReader.ChildEnvironment.key.getter();
    if (v28 == 6)
    {
LABEL_25:
      __break(1u);
      return result;
    }

    static NavigationRequest.setInitialPossibilities<A>(_:stack:)(v26, result, v28, v29, v23, v41, &v46);
    (*(v25 + 8))(v26, v23);
    NavigationAuthority.enqueueRequest(_:)(&v46);
    outlined destroy of NavigationRequest(&v46);
    outlined destroy of NavigationAuthority(v60);
  }

  v44 = v17;
  outlined init with copy of NavigationAuthority(&v61, v60);
  v30 = NavigationStackReader.ChildEnvironment.path.getter();
  v32 = v31;
  v34 = v33;
  result = NavigationStackReader.ChildEnvironment.key.getter();
  v42 = result;
  v43 = v35;
  v41 = v36;
  if (v36 == 6)
  {
    __break(1u);
    goto LABEL_25;
  }

  NavigationStackReader.ChildEnvironment.environment.getter(v45);
  v46 = v30;
  v47 = v32;
  v48 = v34;
  v49 = v45[0];
  v50 = v45[1];
  v51 = 1;

  v37 = Transaction.disablesAnimations.getter();
  v38 = Transaction.animation.getter();

  v52 = v42;
  v53 = v41;
  v54 = v43;
  v55 = 0;
  v56 = 0;
  v57 = 0;
  v58 = v37 & 1;
  v59 = v38;
  if ((*(v2 + 32) & 1) == 0)
  {
    NavigationAuthority.enqueueRequest(_:)(&v46);
  }

  outlined destroy of NavigationRequest(&v46);
  outlined destroy of NavigationAuthority(v60);
LABEL_19:
  LOBYTE(v46) = 1;
  type metadata accessor for _PreferenceTransformModifier<InspectorStorageV5.PreferenceKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<InternalNavigationEnabledKey>, &type metadata for InternalNavigationEnabledKey, &protocol witness table for InternalNavigationEnabledKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<ContainerBackgroundKeys.HasContainerBackgroundPlacementKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<InternalNavigationEnabledKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<InternalNavigationEnabledKey>, &type metadata for InternalNavigationEnabledKey, &protocol witness table for InternalNavigationEnabledKey);

  PropertyList.subscript.setter();
  if (v15)
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  LOBYTE(v46) = 0;
  type metadata accessor for _PreferenceTransformModifier<InspectorStorageV5.PreferenceKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ContainerBackgroundKeys.HasContainerBackgroundPlacementKey>, &type metadata for ContainerBackgroundKeys.HasContainerBackgroundPlacementKey, &protocol witness table for ContainerBackgroundKeys.HasContainerBackgroundPlacementKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<ContainerBackgroundKeys.HasContainerBackgroundPlacementKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<ContainerBackgroundKeys.HasContainerBackgroundPlacementKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<ContainerBackgroundKeys.HasContainerBackgroundPlacementKey>, &type metadata for ContainerBackgroundKeys.HasContainerBackgroundPlacementKey, &protocol witness table for ContainerBackgroundKeys.HasContainerBackgroundPlacementKey);

  PropertyList.subscript.setter();
  if (v15)
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  outlined init with copy of NavigationAuthority(&v61, v60);
  v39 = v63;
  v40 = v64;
  outlined init with take of NavigationAuthority?(v60, &v46);
  v49 = v39;
  v50 = v40;

  AGGraphSetOutputValue();
  outlined destroy of (authority: NavigationAuthority?, computedEnvironment: EnvironmentValues)(&v46);

  return outlined destroy of NavigationAuthority(&v61);
}

double NavigationStackReader.ChildEnvironment.environment.getter@<D0>(void *a1@<X8>)
{
  Value = AGGraphGetValue();
  v4 = *Value;
  v3 = Value[1];
  *a1 = v4;
  a1[1] = v3;

  return result;
}

uint64_t outlined destroy of NavigationAuthority??(uint64_t a1)
{
  type metadata accessor for Attribute<NavigationState.ListKey?>(0, &lazy cache variable for type metadata for NavigationAuthority??, &lazy cache variable for type metadata for NavigationAuthority?, &type metadata for NavigationAuthority, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined destroy of NavigationAuthority?(uint64_t a1)
{
  type metadata accessor for NavigationState.StackContent.Key?(0, &lazy cache variable for type metadata for NavigationAuthority?, &type metadata for NavigationAuthority, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t closure #1 in NavigationStackReader.ChildEnvironment.updateValue()@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, _DWORD *a7@<X8>)
{
  result = swift_weakLoadStrong();
  if (!result)
  {
    goto LABEL_7;
  }

  v14 = *(result + 184);

  v25[0] = a3;
  v25[1] = a4;
  v25[2] = a5;
  v25[3] = a6;
  v15 = type metadata accessor for NavigationStackReader.ChildEnvironment(0, v25);
  v16 = *(v15 - 8);
  (*(v16 + 16))(v26, a2, v15);
  type metadata accessor for Binding<AnyNavigationPath>(0, &lazy cache variable for type metadata for NavigationState.StackContent.Key?, &type metadata for NavigationState.StackContent.Key, MEMORY[0x1E69E6720]);
  Value = AGGraphGetValue();
  v18 = *Value;
  v19 = *(Value + 8);
  v20 = *(Value + 16);
  result = (*(v16 + 8))(v26, v15);
  if (v19 != 6)
  {
    swift_getKeyPath();
    v25[0] = v14;
    lazy protocol witness table accessor for type Map<NavigationStateHost, NavigationSeedHost> and conformance Map<A, B>(&lazy protocol witness table cache variable for type NavigationSelectionHost and conformance NavigationSelectionHost, type metadata accessor for NavigationSelectionHost, protocol conformance descriptor for NavigationSelectionHost);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v21 = *(v14 + 16);

    if (*(v21 + 16))
    {
      v22 = specialized __RawDictionaryStorage.find<A>(_:)(v18, v19, v20);
      if (v23)
      {
        v24 = *(*(v21 + 56) + 4 * v22);

LABEL_8:
        *a7 = v24;
        return result;
      }
    }

LABEL_7:
    v24 = 0;
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

uint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<ContainerBackgroundKeys.HasContainerBackgroundPlacementKey> and conformance EnvironmentPropertyKey<A>(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for _PreferenceTransformModifier<InspectorStorageV5.PreferenceKey>(255, a2, a3, a4, MEMORY[0x1E697FE38]);
    result = swift_getWitnessTable(MEMORY[0x1E697FE40], v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t NavigationStackReader.ChildEnvironment.path.getter()
{
  type metadata accessor for Binding<AnyNavigationPath>(0, &lazy cache variable for type metadata for Binding<AnyNavigationPath>, &type metadata for AnyNavigationPath, MEMORY[0x1E6981948]);
  v0 = *AGGraphGetValue();

  return v0;
}

__n128 initializeWithTake for PositionedNavigationDestinationProcessor(__n128 *a1, __n128 *a2)
{
  v2 = &a2->n128_i8[8];
  if (a2->n128_u64[1] == 1)
  {
    result = *a2;
    *a1 = *a2;
    a1[1].n128_u64[0] = a2[1].n128_u64[0];
  }

  else
  {
    v4 = swift_weakTakeInit();
    result = *v2;
    *(v4 + 8) = *v2;
  }

  return result;
}

void NavigationStackStyledCore.Child.ensuredAuthority.getter(uint64_t a1@<X8>)
{
  v3 = *(v1 + 4);
  v4 = *(v1 + 20);
  v5 = *(v1 + 28);
  v9 = *v1;
  v10 = v3;
  v11 = v4;
  v12 = v5;
  NavigationStackStyledCore.Child.authority.getter(v8);
  outlined init with take of NavigationAuthority??(v8, v7);
  if (v7[1] == 2)
  {
    v13 = xmmword_18CD633F0;
    v14 = 0;
  }

  else
  {
    outlined init with take of NavigationAuthority?(v7, &v13);
    if (*(&v13 + 1) != 1)
    {
      outlined init with take of NavigationAuthority(&v13, a1);
      return;
    }
  }

  type metadata accessor for NavigationStateHost();
  swift_allocObject();
  NavigationStateHost.init()();
  EnvironmentValues.init()();
  v6 = v9;
  swift_weakInit();
  swift_weakAssign();

  *(a1 + 8) = v6;
  if (*(&v13 + 1) != 1)
  {
    outlined destroy of NavigationState.StackContent?(&v13, &lazy cache variable for type metadata for NavigationAuthority?, &type metadata for NavigationAuthority);
  }
}

uint64_t outlined init with take of NavigationAuthority??(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Attribute<UInt32?>(0, &lazy cache variable for type metadata for NavigationAuthority??, &lazy cache variable for type metadata for NavigationAuthority?, &type metadata for NavigationAuthority, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t initializeWithCopy for NavigationStackStyledCore.NavigationStackRepresentableRoot(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  v5 = (a2 + 31) & 0xFFFFFFFFFFFFFFF8;
  v6 = swift_weakCopyInit();
  *(v6 + 8) = *(v5 + 8);
  *(v6 + 16) = *(v5 + 16);
  v7 = *(a3 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 16);
  v10 = v8 + 16;
  v11 = *(v8 + 80);
  v12 = (v11 + 24 + v6) & ~v11;
  v13 = (v11 + 24 + v5) & ~v11;

  v9(v12, v13, v7);
  v14 = *(v10 + 48);
  v15 = v14 + v12;
  v16 = v14 + v13;
  v17 = (v15 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  v18 = (v16 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  v19 = *v18;
  *(v17 + 4) = *(v18 + 4);
  *v17 = v19;
  v20 = (v15 + 11) & 0xFFFFFFFFFFFFFFFCLL;
  v21 = (v16 + 11) & 0xFFFFFFFFFFFFFFFCLL;
  v22 = *v21;
  *(v20 + 8) = *(v21 + 8);
  *v20 = v22;
  return a1;
}

uint64_t initializeWithTake for NavigationStackStyledCore.NavigationStackRepresentableRoot(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  v5 = (a2 + 31) & 0xFFFFFFFFFFFFFFF8;
  v6 = swift_weakTakeInit();
  *(v6 + 8) = *(v5 + 8);
  v7 = *(*(a3 + 16) - 8);
  v8 = v7 + 32;
  v9 = *(v7 + 80);
  v10 = (v9 + 24 + v6) & ~v9;
  v11 = (v9 + 24 + v5) & ~v9;
  (*(v7 + 32))(v10, v11);
  v12 = *(v8 + 32);
  v13 = v12 + v10;
  v14 = v12 + v11;
  v15 = (v13 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  v16 = (v14 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  v17 = *v16;
  *(v15 + 4) = *(v16 + 4);
  *v15 = v17;
  v18 = (v13 + 11) & 0xFFFFFFFFFFFFFFFCLL;
  v19 = (v14 + 11) & 0xFFFFFFFFFFFFFFFCLL;
  v20 = *v19;
  *(v18 + 8) = *(v19 + 8);
  *v18 = v20;
  return a1;
}

uint64_t NavigationStackStyledCore.NavigationStackRepresentableRoot.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20[1] = a2;
  v4 = *(a1 + 16);
  v5 = lazy protocol witness table accessor for type _NavigationStackStyleConfiguration.Root and conformance _NavigationStackStyleConfiguration.Root();
  v6 = *(a1 + 24);
  *&v31 = &type metadata for _NavigationStackStyleConfiguration.Root;
  *(&v31 + 1) = v4;
  *&v32 = v5;
  *(&v32 + 1) = v6;
  type metadata accessor for StaticSourceWriter(255, &v31);
  v7 = type metadata accessor for ModifiedContent();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v20 - v9;
  outlined init with copy of NavigationAuthority(v2 + 24, &v31);
  v11 = *v2;
  v12 = *(v2 + 16);
  v13 = (v2 + *(a1 + 44));
  v14 = *v13;
  LOBYTE(v13) = *(v13 + 4);
  v15 = (v2 + *(a1 + 48));
  v16 = *v15;
  LOBYTE(v15) = *(v15 + 8);
  v17 = *(v2 + 8);
  *&v26 = v16;
  BYTE8(v26) = v15;
  LOBYTE(v29[0]) = v13;
  _NavigationStackStyleConfiguration.init(authority:context:structureSeed:previousAnimationSeed:)(&v31, v11, v17, v12, v14 | (v13 << 32), &v26, v29);
  v26 = v29[0];
  v27 = v29[1];
  *v28 = *v30;
  *&v28[14] = *&v30[14];
  v22 = v4;
  v23 = v6;
  v24 = v2;
  outlined init with copy of _NavigationStackStyleConfiguration(v29, &v31);
  v18 = lazy protocol witness table accessor for type ResolvedNavigationStackStyle and conformance ResolvedNavigationStackStyle();
  View.viewAlias<A, B>(_:_:)(&type metadata for _NavigationStackStyleConfiguration.Root, partial apply for closure #1 in NavigationStackStyledCore.NavigationStackRepresentableRoot.body.getter, v21, &type metadata for ResolvedNavigationStackStyle, &type metadata for _NavigationStackStyleConfiguration.Root, v4, v18);
  v31 = v26;
  v32 = v27;
  v33[0] = *v28;
  *(v33 + 14) = *&v28[14];
  outlined destroy of ResolvedNavigationStackStyle(&v31);
  LOBYTE(v26) = 1;
  v25[0] = v18;
  v25[1] = &protocol witness table for StaticSourceWriter<A, B>;
  swift_getWitnessTable(MEMORY[0x1E697E858], v7, v25);
  View.preference<A>(key:value:)();
  outlined destroy of _NavigationStackStyleConfiguration(v29);
  return (*(v8 + 8))(v10, v7);
}

uint64_t outlined init with copy of AnyNavigationLinkPresentedValue?(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(void, uint64_t))
{
  _sypSgMaTm_6(0, a3, a4, a5);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t _s7SwiftUI31AnyNavigationLinkPresentedValueVSgWOcTm_0(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  type metadata accessor for AnyNavigationLinkPresentedValue?(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void type metadata accessor for AnyNavigationLinkPresentedValue?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t outlined destroy of NavigationState?(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  type metadata accessor for AnyNavigationLinkPresentedValue?(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void specialized NavigationState.StackContent.Views.ViewsSequence.index(after:)(unint64_t a1, char a2, uint64_t a3, uint64_t a4, unint64_t *a5, uint64_t a6, uint64_t (*a7)(uint64_t, uint64_t, uint64_t (*)(uint64_t a1, uint64_t a2)))
{
  v11 = a4;
  outlined init with copy of NavigationState.Base(v7, __src);
  if (!v47)
  {
    return;
  }

  if (v47 == 1)
  {
    outlined consume of ResolvedNavigationDestinations?(__src[45], __src[46], __src[47], __src[48], __src[49], __src[50], __src[51], __src[52]);
    memcpy(__dst, __src, 0x163uLL);
    specialized NavigationState.StackContent.Views.ViewsSequence.index(after:for:)(a1, a2 & 1, a3, v11, __dst, a5, a6, a7);
    outlined destroy of NavigationColumnState(__dst);
    return;
  }

  v15 = __src[0];
  v48[2] = *&__src[5];
  v48[3] = *&__src[7];
  v49 = __src[9];
  v48[0] = *&__src[1];
  v48[1] = *&__src[3];
  if (a2)
  {
LABEL_80:
    __break(1u);
    return;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    goto LABEL_75;
  }

  if (*(__src[0] + 16) <= a1)
  {
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

  outlined init with copy of NavigationColumnState(__src[0] + 360 * a1 + 32, __dst);
  specialized NavigationState.StackContent.Views.ViewsSequence.index(after:for:)(a1, 0, a3, v11, __dst, a5, a6, a7);
  v17 = ~v16;
  outlined destroy of NavigationColumnState(__dst);
  if (v17)
  {
    outlined destroy of NavigationState?(v48, &lazy cache variable for type metadata for NavigationSplitViewState?, &type metadata for NavigationSplitViewState);

    return;
  }

  v18 = *(v15 + 16);
  if (v18 <= a1)
  {
    goto LABEL_77;
  }

  if (a1 + 1 != v18)
  {

    v19 = a1 + 6;
    v20 = 360 * a1;
    while (1)
    {
      if ((v19 - 5) >= v18)
      {
        __break(1u);
LABEL_74:
        __break(1u);
LABEL_75:
        __break(1u);
        goto LABEL_76;
      }

      if (v19 - 5 >= *(v15 + 16))
      {
        goto LABEL_74;
      }

      outlined init with copy of NavigationColumnState(v15 + v20 + 392, __dst);
      if (__dst[24] > 2u)
      {
        if (__dst[24] != 5)
        {
          goto LABEL_71;
        }

        goto LABEL_16;
      }

      if (__dst[24] == 1)
      {
        break;
      }

      if (__dst[24] != 2)
      {
        goto LABEL_71;
      }

      specialized hasContent #1 <A>() in static NavigationColumnState.isElidedInCollapsedSplit<A>(column:within:splitViewState:)(v48, __dst, v19 - 5, v15);
      v22 = v21;
      outlined destroy of NavigationColumnState(__dst);
      if (v22)
      {
        goto LABEL_13;
      }

LABEL_17:
      ++v19;
      v20 += 360;
      if (1 - v18 + v19 == 6)
      {
        goto LABEL_13;
      }
    }

    specialized hasContent #1 <A>() in static NavigationColumnState.isElidedInCollapsedSplit<A>(column:within:splitViewState:)(v48, __dst, v19 - 5, v15);
    if (v23)
    {
LABEL_71:
      outlined destroy of NavigationState?(v48, &lazy cache variable for type metadata for NavigationSplitViewState?, &type metadata for NavigationSplitViewState);
      swift_bridgeObjectRelease_n();
      outlined destroy of NavigationColumnState(__dst);
      return;
    }

    if ((v19 - 4) >= v18)
    {
      goto LABEL_16;
    }

    if (v19 - 4 >= *(v15 + 16))
    {
      goto LABEL_78;
    }

    outlined init with copy of NavigationColumnState(v15 + v20 + 752, v43);
    if (v44 > 2u)
    {
      if (v44 != 5)
      {
        goto LABEL_72;
      }

LABEL_53:
      outlined destroy of NavigationColumnState(v43);
LABEL_16:
      outlined destroy of NavigationColumnState(__dst);
      goto LABEL_17;
    }

    if (v44 != 1)
    {
      if (v44 != 2)
      {
        goto LABEL_72;
      }

      specialized hasContent #1 <A>() in static NavigationColumnState.isElidedInCollapsedSplit<A>(column:within:splitViewState:)(v48, v43, v19 - 4, v15);
      v25 = v24 ^ 1;
      goto LABEL_59;
    }

    specialized hasContent #1 <A>() in static NavigationColumnState.isElidedInCollapsedSplit<A>(column:within:splitViewState:)(v48, v43, v19 - 4, v15);
    if (v26)
    {
LABEL_72:
      outlined destroy of NavigationColumnState(v43);
      outlined destroy of NavigationColumnState(__dst);
      goto LABEL_13;
    }

    if (v19 - 3 >= v18)
    {
      goto LABEL_53;
    }

    if (v19 - 3 >= *(v15 + 16))
    {
      goto LABEL_79;
    }

    outlined init with copy of NavigationColumnState(v15 + v20 + 1112, v41);
    if (v42 > 2u)
    {
      if (v42 - 3 >= 2)
      {
LABEL_56:
        v25 = 1;
        goto LABEL_58;
      }
    }

    else if (v42)
    {
      v27 = v19 - 3;
      if (v42 != 1)
      {
        specialized hasContent #1 <A>() in static NavigationColumnState.isElidedInCollapsedSplit<A>(column:within:splitViewState:)(v48, v41, v27, v15);
        v25 = v34 ^ 1;
        goto LABEL_58;
      }

      specialized hasContent #1 <A>() in static NavigationColumnState.isElidedInCollapsedSplit<A>(column:within:splitViewState:)(v48, v41, v27, v15);
      if ((v28 & 1) == 0)
      {
        if (v19 - 2 < *(v15 + 16))
        {
          outlined init with copy of NavigationColumnState(v15 + v20 + 1472, v39);
          if (v40 > 2u)
          {
            if (v40 - 3 >= 2)
            {
LABEL_63:
              v25 = 1;
              goto LABEL_65;
            }
          }

          else if (v40)
          {
            v29 = v19 - 2;
            if (v40 != 1)
            {
              specialized hasContent #1 <A>() in static NavigationColumnState.isElidedInCollapsedSplit<A>(column:within:splitViewState:)(v48, v39, v29, v15);
              v25 = v35 ^ 1;
              goto LABEL_65;
            }

            specialized hasContent #1 <A>() in static NavigationColumnState.isElidedInCollapsedSplit<A>(column:within:splitViewState:)(v48, v39, v29, v15);
            if ((v30 & 1) == 0)
            {
              v31 = *(v15 + 16);
              if (v19 - 1 < v31)
              {
                outlined init with copy of NavigationColumnState(v15 + v20 + 1832, v37);
                if (v38 > 2u)
                {
                  if (v38 - 3 >= 2)
                  {
                    goto LABEL_68;
                  }
                }

                else if (v38)
                {
                  v32 = v19 - 1;
                  if (v38 != 1)
                  {
                    specialized hasContent #1 <A>() in static NavigationColumnState.isElidedInCollapsedSplit<A>(column:within:splitViewState:)(v48, v37, v32, v15);
                    v25 = v36 ^ 1;
                    goto LABEL_70;
                  }

                  specialized hasContent #1 <A>() in static NavigationColumnState.isElidedInCollapsedSplit<A>(column:within:splitViewState:)(v48, v37, v32, v15);
                  if ((v33 & 1) == 0)
                  {
                    if (v19 < v31)
                    {
                      v25 = _s7SwiftUI21NavigationColumnStateV24isElidedInCollapsedSplit6column6within09splitViewE0SbSi_xAA0cjnE0VSgtSkRzAC7ElementRtzSi5IndexRtzlFZSayACG_Tt2B5(v19, v15, v48);
LABEL_70:
                      outlined destroy of NavigationColumnState(v37);
                      goto LABEL_65;
                    }

LABEL_68:
                    v25 = 1;
                    goto LABEL_70;
                  }
                }

                v25 = 0;
                goto LABEL_70;
              }

              goto LABEL_63;
            }
          }

          v25 = 0;
LABEL_65:
          outlined destroy of NavigationColumnState(v39);
          goto LABEL_58;
        }

        goto LABEL_56;
      }
    }

    v25 = 0;
LABEL_58:
    outlined destroy of NavigationColumnState(v41);
LABEL_59:
    outlined destroy of NavigationColumnState(v43);
    outlined destroy of NavigationColumnState(__dst);
    if ((v25 & 1) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_17;
  }

LABEL_13:
  outlined destroy of NavigationState?(v48, &lazy cache variable for type metadata for NavigationSplitViewState?, &type metadata for NavigationSplitViewState);
  swift_bridgeObjectRelease_n();
}

void *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(void *a1, int64_t a2, char a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &lazy cache variable for type metadata for _ContiguousArrayStorage<ToolbarStorage.Entry>, type metadata accessor for ToolbarStorage.Entry, type metadata accessor for ToolbarStorage.Entry);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &lazy cache variable for type metadata for _ContiguousArrayStorage<AccessibilityNodeAttachment>, MEMORY[0x1E6980770], MEMORY[0x1E6980770]);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &lazy cache variable for type metadata for _ContiguousArrayStorage<([Text], [AnyAccessibilityAction])>, type metadata accessor for ([Text], [AnyAccessibilityAction]), type metadata accessor for ([Text], [AnyAccessibilityAction]));
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, type metadata accessor for _ContiguousArrayStorage<[AnyAccessibilityAction]>, &lazy cache variable for type metadata for [AnyAccessibilityAction], &type metadata for AnyAccessibilityAction);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &lazy cache variable for type metadata for _ContiguousArrayStorage<TableCellFormula>, type metadata accessor for TableCellFormula, type metadata accessor for TableCellFormula);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &lazy cache variable for type metadata for _ContiguousArrayStorage<TableColumnCollection.Entry>, type metadata accessor for TableColumnCollection.Entry, type metadata accessor for TableColumnCollection.Entry);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &lazy cache variable for type metadata for _ContiguousArrayStorage<PlatformItemList.Item>, type metadata accessor for PlatformItemList.Item, type metadata accessor for PlatformItemList.Item);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, type metadata accessor for _ContiguousArrayStorage<[Text]>, &lazy cache variable for type metadata for [Text], MEMORY[0x1E6981148]);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &lazy cache variable for type metadata for _ContiguousArrayStorage<MainMenuItem.Template>, type metadata accessor for MainMenuItem.Template, type metadata accessor for MainMenuItem.Template);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &lazy cache variable for type metadata for _ContiguousArrayStorage<URL>, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FB0]);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &lazy cache variable for type metadata for _ContiguousArrayStorage<Predicate<Pack{String}>>, type metadata accessor for Predicate<Pack{String}>, type metadata accessor for Predicate<Pack{String}>);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &lazy cache variable for type metadata for _ContiguousArrayStorage<ToolbarStorage.GroupItem.GroupSubItem>, type metadata accessor for ToolbarStorage.GroupItem.GroupSubItem, type metadata accessor for ToolbarStorage.GroupItem.GroupSubItem);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &lazy cache variable for type metadata for _ContiguousArrayStorage<AttributedString.Index>, MEMORY[0x1E69687E8], MEMORY[0x1E69687E8]);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &lazy cache variable for type metadata for _ContiguousArrayStorage<WidgetAuxiliaryViewMetadata>, type metadata accessor for WidgetAuxiliaryViewMetadata, type metadata accessor for WidgetAuxiliaryViewMetadata);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &lazy cache variable for type metadata for _ContiguousArrayStorage<PlatformTickLabelItem>, type metadata accessor for PlatformTickLabelItem, type metadata accessor for PlatformTickLabelItem);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &lazy cache variable for type metadata for _ContiguousArrayStorage<IndexPath>, MEMORY[0x1E6969C28], MEMORY[0x1E6969C28]);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &lazy cache variable for type metadata for _ContiguousArrayStorage<SystemSegmentItem>, type metadata accessor for SystemSegmentItem, type metadata accessor for SystemSegmentItem);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &lazy cache variable for type metadata for _ContiguousArrayStorage<UpdateCoalescingCollectionView.UpdateInvalidation>, type metadata accessor for UpdateCoalescingCollectionView.UpdateInvalidation, type metadata accessor for UpdateCoalescingCollectionView.UpdateInvalidation);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &lazy cache variable for type metadata for _ContiguousArrayStorage<ScrapedContentTree<ArchivableScrapedItem>>, type metadata accessor for ScrapedContentTree<ArchivableScrapedItem>, type metadata accessor for ScrapedContentTree<ArchivableScrapedItem>);
  *v3 = result;
  return result;
}

uint64_t outlined init with copy of ModifiedContent<ModifiedContent<_VariadicView.Tree<_VStackLayout, _NavigationStackStyleConfiguration.Root>, ReadDestinationsModifier<ResolvedNavigationDestinations>>, _PreferenceTransformModifier<NavigationDestinationKey>>(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ModifiedContent<ModifiedContent<_VariadicView.Tree<_VStackLayout, _NavigationStackStyleConfiguration.Root>, ReadDestinationsModifier<ResolvedNavigationDestinations>>, _PreferenceTransformModifier<NavigationDestinationKey>>(0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<_VariadicView.Tree<_VStackLayout, _NavigationStackStyleConfiguration.Root>, ReadDestinationsModifier<ResolvedNavigationDestinations>>, _PreferenceTransformModifier<NavigationDestinationKey>>, &lazy cache variable for type metadata for ModifiedContent<_VariadicView.Tree<_VStackLayout, _NavigationStackStyleConfiguration.Root>, ReadDestinationsModifier<ResolvedNavigationDestinations>>, &lazy cache variable for type metadata for _VariadicView.Tree<_VStackLayout, _NavigationStackStyleConfiguration.Root>, &type metadata for _NavigationStackStyleConfiguration.Root);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of ModifiedContent<ModifiedContent<_VariadicView.Tree<_VStackLayout, _NavigationStackStyleConfiguration.Root>, ReadDestinationsModifier<ResolvedNavigationDestinations>>, _PreferenceTransformModifier<NavigationDestinationKey>>(uint64_t a1)
{
  type metadata accessor for ModifiedContent<ModifiedContent<_VariadicView.Tree<_VStackLayout, _NavigationStackStyleConfiguration.Root>, ReadDestinationsModifier<ResolvedNavigationDestinations>>, _PreferenceTransformModifier<NavigationDestinationKey>>(0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<_VariadicView.Tree<_VStackLayout, _NavigationStackStyleConfiguration.Root>, ReadDestinationsModifier<ResolvedNavigationDestinations>>, _PreferenceTransformModifier<NavigationDestinationKey>>, &lazy cache variable for type metadata for ModifiedContent<_VariadicView.Tree<_VStackLayout, _NavigationStackStyleConfiguration.Root>, ReadDestinationsModifier<ResolvedNavigationDestinations>>, &lazy cache variable for type metadata for _VariadicView.Tree<_VStackLayout, _NavigationStackStyleConfiguration.Root>, &type metadata for _NavigationStackStyleConfiguration.Root);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<_VariadicView.Tree<_VStackLayout, _NavigationStackStyleConfiguration.Root>, ReadDestinationsModifier<ResolvedNavigationDestinations>>, _PreferenceTransformModifier<NavigationDestinationKey>>, EmptyModifier>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<_VariadicView.Tree<_VStackLayout, _NavigationStackStyleConfiguration.Root>, ReadDestinationsModifier<ResolvedNavigationDestinations>>, _PreferenceTransformModifier<NavigationDestinationKey>>, EmptyModifier>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<_VariadicView.Tree<_VStackLayout, _NavigationStackStyleConfiguration.Root>, ReadDestinationsModifier<ResolvedNavigationDestinations>>, _PreferenceTransformModifier<NavigationDestinationKey>>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<_VariadicView.Tree<_VStackLayout, _NavigationStackStyleConfiguration.Root>, ReadDestinationsModifier<ResolvedNavigationDestinations>>, _PreferenceTransformModifier<NavigationDestinationKey>>, &lazy cache variable for type metadata for ModifiedContent<_VariadicView.Tree<_VStackLayout, _NavigationStackStyleConfiguration.Root>, ReadDestinationsModifier<ResolvedNavigationDestinations>>, &lazy cache variable for type metadata for _VariadicView.Tree<_VStackLayout, _NavigationStackStyleConfiguration.Root>, &type metadata for _NavigationStackStyleConfiguration.Root);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<_VariadicView.Tree<_VStackLayout, _NavigationStackStyleConfiguration.Root>, ReadDestinationsModifier<ResolvedNavigationDestinations>>, _PreferenceTransformModifier<NavigationDestinationKey>>, EmptyModifier>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<_VariadicView.Tree<_VStackLayout, _NavigationStackStyleConfiguration.Root>, ReadDestinationsModifier<ResolvedNavigationDestinations>>, _PreferenceTransformModifier<NavigationDestinationKey>>, EmptyModifier> and conformance <> ModifiedContent<A, B>(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    v8 = a2(255);
    v9[0] = a3();
    v9[1] = a4;
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v8, v9);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_VariadicView.Tree<_VStackLayout, _NavigationStackStyleConfiguration.Root>, ReadDestinationsModifier<ResolvedNavigationDestinations>>, _PreferenceTransformModifier<NavigationDestinationKey>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_VariadicView.Tree<_VStackLayout, _NavigationStackStyleConfiguration.Root>, ReadDestinationsModifier<ResolvedNavigationDestinations>>, _PreferenceTransformModifier<NavigationDestinationKey>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_VariadicView.Tree<_VStackLayout, _NavigationStackStyleConfiguration.Root>, ReadDestinationsModifier<ResolvedNavigationDestinations>>, _PreferenceTransformModifier<NavigationDestinationKey>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<ModifiedContent<_VariadicView.Tree<_VStackLayout, _NavigationStackStyleConfiguration.Root>, ReadDestinationsModifier<ResolvedNavigationDestinations>>, _PreferenceTransformModifier<NavigationDestinationKey>>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<_VariadicView.Tree<_VStackLayout, _NavigationStackStyleConfiguration.Root>, ReadDestinationsModifier<ResolvedNavigationDestinations>>, _PreferenceTransformModifier<NavigationDestinationKey>>, &lazy cache variable for type metadata for ModifiedContent<_VariadicView.Tree<_VStackLayout, _NavigationStackStyleConfiguration.Root>, ReadDestinationsModifier<ResolvedNavigationDestinations>>, &lazy cache variable for type metadata for _VariadicView.Tree<_VStackLayout, _NavigationStackStyleConfiguration.Root>, &type metadata for _NavigationStackStyleConfiguration.Root);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ModifiedContent<_VariadicView.Tree<_VStackLayout, _NavigationStackStyleConfiguration.Root>, ReadDestinationsModifier<ResolvedNavigationDestinations>> and conformance <> ModifiedContent<A, B>();
    v5[1] = lazy protocol witness table accessor for type _PreferenceTransformModifier<NavigationDestinationKey> and conformance _PreferenceTransformModifier<A>();
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_VariadicView.Tree<_VStackLayout, _NavigationStackStyleConfiguration.Root>, ReadDestinationsModifier<ResolvedNavigationDestinations>>, _PreferenceTransformModifier<NavigationDestinationKey>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_VariadicView.Tree<_VStackLayout, _NavigationStackStyleConfiguration.Root>, ReadDestinationsModifier<ResolvedNavigationDestinations>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_VariadicView.Tree<_VStackLayout, _NavigationStackStyleConfiguration.Root>, ReadDestinationsModifier<ResolvedNavigationDestinations>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_VariadicView.Tree<_VStackLayout, _NavigationStackStyleConfiguration.Root>, ReadDestinationsModifier<ResolvedNavigationDestinations>> and conformance <> ModifiedContent<A, B>)
  {
    v5[6] = v0;
    v5[7] = v1;
    type metadata accessor for ModifiedContent<_VariadicView.Tree<_VStackLayout, _VariadicView_Children>, ReadDestinationsModifier<ResolvedNavigationDestinations>>(255, &lazy cache variable for type metadata for ModifiedContent<_VariadicView.Tree<_VStackLayout, _NavigationStackStyleConfiguration.Root>, ReadDestinationsModifier<ResolvedNavigationDestinations>>, &lazy cache variable for type metadata for _VariadicView.Tree<_VStackLayout, _NavigationStackStyleConfiguration.Root>, &type metadata for _NavigationStackStyleConfiguration.Root);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type _VariadicView.Tree<_VStackLayout, _NavigationStackStyleConfiguration.Root> and conformance <> _VariadicView.Tree<A, B>(&lazy protocol witness table cache variable for type _VariadicView.Tree<_VStackLayout, _NavigationStackStyleConfiguration.Root> and conformance <> _VariadicView.Tree<A, B>, &lazy cache variable for type metadata for _VariadicView.Tree<_VStackLayout, _NavigationStackStyleConfiguration.Root>, &type metadata for _NavigationStackStyleConfiguration.Root, &protocol witness table for _NavigationStackStyleConfiguration.Root);
    v5[1] = &protocol witness table for ReadDestinationsModifier<A>;
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_VariadicView.Tree<_VStackLayout, _NavigationStackStyleConfiguration.Root>, ReadDestinationsModifier<ResolvedNavigationDestinations>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t outlined destroy of IndexingIterator<DefaultIndices<NavigationState.StackContent.Views.ViewsSequence<_NavigationStackStyleConfiguration.Root, EmptyModifier>>>(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void type metadata accessor for (offset: Int, element: NavigationState.StackContent.PositionedView)()
{
  if (!lazy cache variable for type metadata for (offset: Int, element: NavigationState.StackContent.PositionedView))
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (offset: Int, element: NavigationState.StackContent.PositionedView));
    }
  }
}

uint64_t initializeWithCopy for NavigationStackViewSource(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 64);
  if (v3 >= 2)
  {
    v3 = *a2 + 2;
  }

  if (v3 == 1)
  {
    v5 = *(a2 + 24);
    if (v5)
    {
      v6 = *(a2 + 32);
      *(a1 + 24) = v5;
      *(a1 + 32) = v6;
      v7 = a2;
      (**(v5 - 8))(a1);
      a2 = v7;
    }

    else
    {
      v10 = *(a2 + 16);
      *a1 = *a2;
      *(a1 + 16) = v10;
      *(a1 + 32) = *(a2 + 32);
    }

    v11 = *(a2 + 48);
    if (v11 == 1)
    {
      *(a1 + 40) = *(a2 + 40);
    }

    else
    {
      *(a1 + 40) = *(a2 + 40);
      *(a1 + 48) = v11;
      v12 = a2;

      a2 = v12;
    }

    *(a1 + 56) = *(a2 + 56);
    *(a1 + 64) = 1;
  }

  else if (v3)
  {
    v8 = *(a2 + 48);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 48) = v8;
    *(a1 + 64) = *(a2 + 64);
    v9 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v9;
  }

  else
  {
    v4 = *(a2 + 24);
    *(a1 + 24) = v4;
    (**(v4 - 8))(a1);
    *(a1 + 64) = 0;
  }

  return a1;
}

uint64_t outlined init with take of _NavigationStackStyleConfiguration.Item(__int128 *a1, uint64_t a2)
{
  v4 = *a1;
  *(a2 + 16) = *(a1 + 2);
  *a2 = v4;
  swift_weakTakeInit();
  *(a2 + 32) = a1[2];
  v6 = a1[7];
  v5 = a1[8];
  v7 = a1[6];
  *(a2 + 144) = *(a1 + 18);
  *(a2 + 112) = v6;
  *(a2 + 128) = v5;
  *(a2 + 96) = v7;
  v8 = a1[3];
  v9 = a1[5];
  *(a2 + 64) = a1[4];
  *(a2 + 80) = v9;
  *(a2 + 48) = v8;
  return a2;
}

void type metadata accessor for DefaultIndices<NavigationState.StackContent.Views.ViewsSequence<_NavigationStackStyleConfiguration.Root, EmptyModifier>>(uint64_t a1, unint64_t *a2, unint64_t *a3, const char *a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    type metadata accessor for NavigationState.StackContent.Views.ViewsSequence<_NavigationStackStyleConfiguration.Root, EmptyModifier>(255, &lazy cache variable for type metadata for NavigationState.StackContent.Views.ViewsSequence<_NavigationStackStyleConfiguration.Root, EmptyModifier>, type metadata accessor for NavigationState.StackContent.Views.ViewsSequence);
    v11 = v10;
    v12 = lazy protocol witness table accessor for type NavigationState.StackContent.Views.ViewsSequence<_NavigationStackStyleConfiguration.Root, EmptyModifier> and conformance NavigationState.StackContent.Views.ViewsSequence<A, B>(a3, a4);
    v13 = a5(a1, v11, v12);
    if (!v14)
    {
      atomic_store(v13, a2);
    }
  }
}

uint64_t outlined destroy of EnumeratedSequence<NavigationState.StackContent.Views.ViewsSequence<_NavigationStackStyleConfiguration.Root, EmptyModifier>>(uint64_t a1)
{
  type metadata accessor for DefaultIndices<NavigationState.StackContent.Views.ViewsSequence<_NavigationStackStyleConfiguration.Root, EmptyModifier>>(0, &lazy cache variable for type metadata for EnumeratedSequence<NavigationState.StackContent.Views.ViewsSequence<_NavigationStackStyleConfiguration.Root, EmptyModifier>>, &lazy protocol witness table cache variable for type NavigationState.StackContent.Views.ViewsSequence<_NavigationStackStyleConfiguration.Root, EmptyModifier> and conformance NavigationState.StackContent.Views.ViewsSequence<A, B>, protocol conformance descriptor for NavigationState.StackContent.Views.ViewsSequence<A, B>, MEMORY[0x1E69E6E48]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata accessor for NavigationState.StackContent.Views.ViewsSequence<_NavigationStackStyleConfiguration.Root, EmptyModifier>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void *))
{
  if (!*a2)
  {
    v8[6] = v3;
    v8[7] = v4;
    v8[0] = &type metadata for _NavigationStackStyleConfiguration.Root;
    v8[1] = MEMORY[0x1E697E108];
    v8[2] = &protocol witness table for _NavigationStackStyleConfiguration.Root;
    v8[3] = MEMORY[0x1E697E100];
    v6 = a3(0, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t lazy protocol witness table accessor for type NavigationState.StackContent.Views.ViewsSequence<_NavigationStackStyleConfiguration.Root, EmptyModifier> and conformance NavigationState.StackContent.Views.ViewsSequence<A, B>(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for NavigationState.StackContent.Views.ViewsSequence<_NavigationStackStyleConfiguration.Root, EmptyModifier>(255, &lazy cache variable for type metadata for NavigationState.StackContent.Views.ViewsSequence<_NavigationStackStyleConfiguration.Root, EmptyModifier>, type metadata accessor for NavigationState.StackContent.Views.ViewsSequence);
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t initializeWithCopy for _NavigationStackStyleConfiguration(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  v3 = *(a2 + 40);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = v3;
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 52) = *(a2 + 52);

  return a1;
}

uint64_t closure #1 in NavigationStackStyledCore.NavigationStackRepresentableRoot.body.getter(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for NavigationStackStyledCore.NavigationStackRepresentableRoot(0, v6, v7, v8);
  static ViewBuilder.buildExpression<A>(_:)();
  static ViewBuilder.buildExpression<A>(_:)();
  return (*(v3 + 8))(v5, a2);
}

void NavigationStackCore.NavigationStackRepresentableChild.ensuredAuthority.getter(uint64_t a1@<X8>)
{
  NavigationStackCore.NavigationStackRepresentableChild.authority.getter(v5);
  outlined init with take of NavigationAuthority??(v5, v4);
  if (v4[1] == 2)
  {
    v6 = xmmword_18CD633F0;
    v7 = 0;
  }

  else
  {
    outlined init with take of NavigationAuthority?(v4, &v6);
    if (*(&v6 + 1) != 1)
    {
      outlined init with take of NavigationAuthority(&v6, a1);
      return;
    }
  }

  type metadata accessor for NavigationStateHost();
  swift_allocObject();
  NavigationStateHost.init()();
  EnvironmentValues.init()();
  v2 = v5[0];
  v3 = v5[1];
  swift_weakInit();
  swift_weakAssign();

  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  if (*(&v6 + 1) != 1)
  {
    outlined destroy of PPTTestCase?(&v6, &lazy cache variable for type metadata for NavigationAuthority?, &type metadata for NavigationAuthority);
  }
}

double NavigationStackCore.NavigationStackRepresentableChild.authority.getter@<D0>(uint64_t a2@<X8>)
{
  _s7SwiftUI11PPTTestCaseVSgMaTm_0(0, &lazy cache variable for type metadata for NavigationAuthority?, &type metadata for NavigationAuthority, MEMORY[0x1E69E6720]);
  WeakValue = AGGraphGetWeakValue();
  if (WeakValue)
  {
    outlined init with copy of NavigationState.StackContent?(WeakValue, a2, &lazy cache variable for type metadata for NavigationAuthority?, &type metadata for NavigationAuthority);
  }

  else
  {
    result = 0.0;
    *a2 = xmmword_18CD874C0;
    *(a2 + 16) = 0;
  }

  return result;
}

void NavigationStackCore.NavigationStackRepresentableChild.navigationPresentationAdaptor.getter(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  if (*MEMORY[0x1E698D3F8] == a1)
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(a2 + 24) = xmmword_18CD6A6D0;
  }

  else
  {
    type metadata accessor for UINavigationPresentationAdaptor?(0, &lazy cache variable for type metadata for UINavigationPresentationAdaptor?, type metadata accessor for UINavigationPresentationAdaptor);
    Value = AGGraphGetValue();
    outlined init with copy of Slice<NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>>?(Value, a2, &lazy cache variable for type metadata for UINavigationPresentationAdaptor?, type metadata accessor for UINavigationPresentationAdaptor);
  }
}

uint64_t initializeWithCopy for NavigationStackCore.NavigationStackRepresentableRoot(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  swift_weakCopyInit();
  v4 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v4;
  *(a1 + 48) = *(a2 + 48);
  v5 = *(a2 + 80);

  if (v5)
  {
    v6 = *(a2 + 88);
    *(a1 + 80) = v5;
    *(a1 + 88) = v6;
    (**(v5 - 8))(a1 + 56, a2 + 56, v5);
  }

  else
  {
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 88) = *(a2 + 88);
  }

  return a1;
}

uint64_t closure #1 in NavigationStackCore.NavigationStackRepresentableRoot.body(children:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, char a3@<W4>, uint64_t a4@<X8>)
{
  v7 = *a1;
  v8 = *(a1 + 8);
  v9 = a1[2];
  outlined init with copy of _VariadicView_Children(a2, a4 + 24);
  outlined init with copy of NavigationAuthority((a1 + 3), a4 + 88);
  v10 = a1[6];
  outlined init with copy of Slice<NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>>?((a1 + 7), a4 + 128, &lazy cache variable for type metadata for UINavigationPresentationAdaptor?, type metadata accessor for UINavigationPresentationAdaptor);
  *a4 = v7;
  *(a4 + 8) = v8;
  *(a4 + 16) = v9;
  *(a4 + 112) = a3;
  *(a4 + 116) = v10;
  result = swift_getKeyPath();
  *(a4 + 168) = result;
  *(a4 + 176) = 0;
  return result;
}

uint64_t initializeWithTake for NavigationStackRepresentable(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  swift_weakTakeInit();
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 116) = *(a2 + 116);
  v4 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v4;
  v5 = *(a2 + 168);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 168) = v5;
  *(a1 + 176) = *(a2 + 176);
  return a1;
}

uint64_t initializeWithCopy for NavigationStackRepresentable(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 48) = v4;
  (**(v4 - 8))(a1 + 24, a2 + 24);
  v5 = *(a2 + 64);
  v6 = *(a2 + 72);
  *(a1 + 64) = v5;
  *(a1 + 72) = v6;
  *(a1 + 80) = *(a2 + 80);
  v7 = v5;

  swift_weakCopyInit();
  v8 = *(a2 + 104);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = v8;
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 116) = *(a2 + 116);
  v9 = *(a2 + 152);

  if (v9)
  {
    v10 = *(a2 + 160);
    *(a1 + 152) = v9;
    *(a1 + 160) = v10;
    (**(v9 - 8))(a1 + 128, a2 + 128, v9);
  }

  else
  {
    v11 = *(a2 + 144);
    *(a1 + 128) = *(a2 + 128);
    *(a1 + 144) = v11;
    *(a1 + 160) = *(a2 + 160);
  }

  v12 = *(a2 + 168);
  v13 = *(a2 + 176);
  outlined copy of Environment<Bool>.Content();
  *(a1 + 168) = v12;
  *(a1 + 176) = v13;
  return a1;
}

uint64_t destroy for NavigationStackRepresentable(uint64_t a1)
{
  __swift_destroy_boxed_opaque_existential_1((a1 + 24));

  swift_weakDestroy();

  if (*(a1 + 152))
  {
    __swift_destroy_boxed_opaque_existential_1((a1 + 128));
  }

  v2 = *(a1 + 168);
  v3 = *(a1 + 176);

  return outlined consume of Environment<Bool>.Content(v2, v3);
}

void type metadata accessor for NavigationStackCoordinator<NavigationStrategy_Phone>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for NavigationStackCoordinator<NavigationStrategy_Phone>)
  {
    v2 = lazy protocol witness table accessor for type NavigationStrategy_Phone and conformance NavigationStrategy_Phone();
    v4 = type metadata accessor for NavigationStackCoordinator(a1, &type metadata for NavigationStrategy_Phone, v2, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for NavigationStackCoordinator<NavigationStrategy_Phone>);
    }
  }
}

char *partial apply for specialized closure #2 in NavigationStackCoordinator.makeRootHostingController(environment:transparentBackground:strategy:)()
{
  return partial apply for specialized closure #2 in NavigationStackCoordinator.makeRootHostingController(environment:transparentBackground:strategy:)(&unk_1F00025A0, &unk_1F00025F0, partial apply for closure #1 in UIHostingController.initialDataDrivenPresentationMode(canPop:), partial apply for specialized closure #2 in UIHostingController.initialDataDrivenPresentationMode(canPop:));
}

{
  return partial apply for specialized closure #2 in NavigationStackCoordinator.makeRootHostingController(environment:transparentBackground:strategy:)(&unk_1F0002758, &unk_1F0002780, closure #1 in UIHostingController.initialDataDrivenPresentationMode(canPop:)partial apply, closure #2 in UIHostingController.initialDataDrivenPresentationMode(canPop:)specialized partial apply);
}

void type metadata accessor for Spacer?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t protocol witness for static PropertyKey.valuesEqual(_:_:) in conformance NavigationAuthority.StackKeyViewInputKey(uint64_t *a1, uint64_t *a2)
{
  type metadata accessor for _EnvironmentKeyWritingModifier<NavigationEnabled>(0, &lazy cache variable for type metadata for NavigationState.StackContent.Key?, &type metadata for NavigationState.StackContent.Key, MEMORY[0x1E69E6720]);

  return static WeakAttribute.== infix(_:_:)();
}

uint64_t NavigationStack.body.getter(void *a1, double a2)
{
  v4 = a1[3];
  v5 = type metadata accessor for ModifiedContent();
  v22[0] = a1[4];
  v6 = v22[0];
  v22[1] = lazy protocol witness table accessor for type NavigationStackRootDecoratingModifier and conformance NavigationStackRootDecoratingModifier();
  v7 = MEMORY[0x1E697E858];
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E697E858], v5, v22);
  v21[0] = type metadata accessor for NavigationStackStyledCore(255, v5, WitnessTable, v9);
  v21[1] = v4;
  v21[2] = &protocol witness table for NavigationStackStyledCore<A>;
  v21[3] = v6;
  type metadata accessor for NavigationStackReader(255, v21);
  v10 = type metadata accessor for ModifiedContent();
  v20[0] = &protocol witness table for NavigationStackReader<A, B>;
  v20[1] = lazy protocol witness table accessor for type NavigationCommonModifier and conformance NavigationCommonModifier();
  swift_getWitnessTable(v7, v10, v20);
  v11 = type metadata accessor for _UnaryViewAdaptor();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v20 - v16;
  closure #1 in NavigationStack.body.getter(v2, a1[2], v4, v6, v14);
  swift_getWitnessTable(MEMORY[0x1E697F380], v11);
  static ViewBuilder.buildExpression<A>(_:)();
  v18 = *(v12 + 8);
  v18(v14, v11);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v18)(v17, v11);
}

uint64_t NavigationStack.$path.getter(uint64_t a1)
{
  v2 = (v1 + *(a1 + 48));
  v3 = *v2;
  if (v2[3])
  {
  }

  else
  {
    type metadata accessor for UInt32?(0, &lazy cache variable for type metadata for State<AnyNavigationPath>, &type metadata for AnyNavigationPath, MEMORY[0x1E6981790]);
    State.projectedValue.getter();
    return v5;
  }

  return v3;
}

uint64_t NavigationStack.localStateHost.getter(uint64_t a1)
{
  type metadata accessor for NavigationStateHost();
  _s7SwiftUI19NavigationStateHostCAC7Combine16ObservableObjectAAWlTm_1(&lazy protocol witness table cache variable for type NavigationStateHost and conformance NavigationStateHost, type metadata accessor for NavigationStateHost, "=M\tbTv\b");

  return StateObject.wrappedValue.getter();
}

uint64_t NavigationStackReader.StackKey.inheritedStackKey.getter(uint64_t a1)
{
  type metadata accessor for Binding<AnyNavigationPath>(0, &lazy cache variable for type metadata for NavigationState.StackContent.Key?, &type metadata for NavigationState.StackContent.Key, MEMORY[0x1E69E6720]);
  result = AGGraphGetWeakValue();
  if (result)
  {
    return *result;
  }

  return result;
}

uint64_t NavigationStackReader.StackKey.value.getter(uint64_t a1, unint64_t a2, uint64_t a3)
{
  result = NavigationStackReader.StackKey.inheritedStackKey.getter(a1);
  if ((v4 & 0xFE) == 6)
  {
    v5 = *AGGraphGetValue();
    AGGraphGetValue();
    AGGraphGetValue();
    return v5;
  }

  return result;
}

uint64_t protocol witness for Rule.value.getter in conformance NavigationStackReader<A, B>.StackKey@<X0>(uint64_t *a1@<X8>)
{
  result = NavigationStackReader.StackKey.value.getter(*v1, *(v1 + 8), *(v1 + 16));
  *a1 = result;
  a1[1] = v4;
  a1[2] = v5;
  return result;
}

double NavigationStackReader.AppliedBody.authority.getter@<D0>(uint64_t a3@<X8>)
{
  type metadata accessor for Binding<AnyNavigationPath>(0, &lazy cache variable for type metadata for NavigationAuthority?, &type metadata for NavigationAuthority, MEMORY[0x1E69E6720]);
  WeakValue = AGGraphGetWeakValue();
  if (WeakValue)
  {

    outlined init with copy of NavigationAuthority?(WeakValue, a3);
  }

  else
  {
    result = 0.0;
    *a3 = xmmword_18CD874C0;
    *(a3 + 16) = 0;
  }

  return result;
}

double NavigationStackReader.ChildEnvironment.inheritedAuthority.getter@<D0>(uint64_t a1@<X8>)
{
  type metadata accessor for Binding<AnyNavigationPath>(0, &lazy cache variable for type metadata for NavigationAuthority?, &type metadata for NavigationAuthority, MEMORY[0x1E69E6720]);
  WeakValue = AGGraphGetWeakValue();
  if (WeakValue)
  {

    outlined init with copy of NavigationAuthority?(WeakValue, a1);
  }

  else
  {
    result = 0.0;
    *a1 = xmmword_18CD874C0;
    *(a1 + 16) = 0;
  }

  return result;
}

uint64_t outlined destroy of (authority: NavigationAuthority?, computedEnvironment: EnvironmentValues)(uint64_t a1)
{
  type metadata accessor for (authority: NavigationAuthority?, computedEnvironment: EnvironmentValues)(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t View.processNavigationDestinations<A>(authority:processor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  outlined init with copy of NavigationAuthority?(a1, v13);
  outlined init with take of NavigationAuthority?(v13, v14);
  v11 = type metadata accessor for PositionedNavigationDestinationProcessor(0, a4, a6, v10);
  MEMORY[0x18D00A570](v14, a3, v11, a5);
  return (*(*(v11 - 8) + 8))(v14, v11);
}

uint64_t initializeWithCopy for NavigationStackStyledCore(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  v6 = *(v5 + 48) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v8 + 16);
  *v7 = *v8;
  *(v7 + 16) = v9;
  return a1;
}

double NavigationStackStyledCore.Child.authority.getter@<D0>(uint64_t a1@<X8>)
{
  type metadata accessor for UInt32?(0, &lazy cache variable for type metadata for NavigationAuthority?, &type metadata for NavigationAuthority, MEMORY[0x1E69E6720]);
  WeakValue = AGGraphGetWeakValue();
  if (WeakValue)
  {
    _s7SwiftUI15NavigationStateVSgWOcTm_0(WeakValue, a1, &lazy cache variable for type metadata for NavigationAuthority?, &type metadata for NavigationAuthority);
  }

  else
  {
    result = 0.0;
    *a1 = xmmword_18CD874C0;
    *(a1 + 16) = 0;
  }

  return result;
}

unint64_t protocol witness for Rule.value.getter in conformance NavigationStackStyledCore<A>.NavigationStateStructureSeed@<X0>(uint64_t a2@<X8>)
{
  result = NavigationStackStyledCore.NavigationStateStructureSeed.value.getter(*v2);
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  return result;
}

unint64_t NavigationStackStyledCore.NavigationStateStructureSeed.value.getter(uint64_t a1)
{
  WeakValue = AGGraphGetWeakValue();
  if (WeakValue)
  {
    v2 = *WeakValue;
  }

  else
  {
    v2 = 0;
  }

  return v2 | ((WeakValue == 0) << 32);
}

uint64_t destroy for NavigationStackStyledCore.NavigationStackRepresentableRoot(uint64_t a1, uint64_t a2)
{
  v3 = (a1 + 31) & 0xFFFFFFFFFFFFFFF8;
  swift_weakDestroy();

  v4 = *(*(a2 + 16) - 8);
  v5 = *(v4 + 8);
  v6 = (v3 + *(v4 + 80) + 24) & ~*(v4 + 80);

  return v5(v6);
}

double destroy for _NavigationStackStyleConfiguration(uint64_t a1)
{

  return result;
}

uint64_t protocol witness for StyleableView.configuration.getter in conformance ResolvedNavigationStackStyle@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v7[0] = *v1;
  v7[1] = v2;
  v8[0] = *(v1 + 32);
  v3 = v8[0];
  *(v8 + 14) = *(v1 + 46);
  v4 = *(v8 + 14);
  *a1 = v7[0];
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  *(a1 + 46) = v4;
  return outlined init with copy of _NavigationStackStyleConfiguration(v7, v6);
}

uint64_t NavigationStackStyleModifier.styleBody(configuration:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v3 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v15 - v10;
  v12 = *(a1 + 16);
  v15[0] = *a1;
  v15[1] = v12;
  v16[0] = *(a1 + 32);
  *(v16 + 14) = *(a1 + 46);
  (*(v3 + 24))(v15, v4, v3);
  swift_getAssociatedConformanceWitness();
  static ViewBuilder.buildExpression<A>(_:)();
  v13 = *(v6 + 8);
  v13(v8, AssociatedTypeWitness);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v13)(v11, AssociatedTypeWitness);
}

uint64_t protocol witness for _NavigationStackStyle.makeBody(configuration:) in conformance _AutomaticNavigationStackStyle@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 8);
  v3 = *(result + 16);
  *a2 = *result;
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  return result;
}

uint64_t initializeWithTake for NavigationStackCore.NavigationStackRepresentableRoot(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  swift_weakTakeInit();
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  return a1;
}

void destroy for NavigationStackCore.NavigationStackRepresentableRoot(void *a1)
{
  swift_weakDestroy();

  if (a1[10])
  {
    __swift_destroy_boxed_opaque_existential_1(a1 + 7);
  }
}

uint64_t NavigationStackCore.NavigationStackRepresentableRoot.body(children:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  closure #1 in NavigationStackCore.NavigationStackRepresentableRoot.body(children:)(v2, a1, 1, a2);
  closure #1 in NavigationStackCore.NavigationStackRepresentableRoot.body(children:)(v2, a1, 0, a2 + 184);
  result = static Edge.Set.all.getter();
  *(a2 + 368) = -1;
  *(a2 + 376) = result;
  return result;
}

id protocol witness for UIViewControllerRepresentable.makeCoordinator() in conformance NavigationStackRepresentable@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 16);
  v5 = *(v1 + 8);
  outlined init with copy of NavigationAuthority(v1 + 88, v9);
  type metadata accessor for NavigationStackCoordinator<NavigationStrategy_Phone>(0);
  v7 = objc_allocWithZone(v6);
  result = specialized NavigationStackCoordinator.init(context:navigationAuthority:)(v3, v5, v4, v9);
  *a1 = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type NavigationStrategy_Phone and conformance NavigationStrategy_Phone()
{
  result = lazy protocol witness table cache variable for type NavigationStrategy_Phone and conformance NavigationStrategy_Phone;
  if (!lazy protocol witness table cache variable for type NavigationStrategy_Phone and conformance NavigationStrategy_Phone)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NavigationStrategy_Phone, &type metadata for NavigationStrategy_Phone, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type NavigationStrategy_Phone and conformance NavigationStrategy_Phone);
  }

  return result;
}

UINavigationController *NavigationStackRepresentable.makeUIViewController(context:)(uint64_t *a1)
{
  v2 = v1;
  type metadata accessor for UINavigationPresentationAdaptor?(0, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v30 - v5;
  v7 = *a1;
  v8 = a1[2];
  v9 = a1[3];
  static Log.navigation.getter();
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v6, 1, v10) == 1)
  {
    outlined destroy of UINavigationPresentationAdaptor?(v6, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420]);
  }

  else
  {
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_18BD4A000, v12, v13, "Creating stack navigation controller", v14, 2u);
      MEMORY[0x18D0110E0](v14, -1, -1);
    }

    (*(v11 + 8))(v6, v10);
  }

  _s7SwiftUI11PPTTestCaseVSgMaTm_0(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<_VariadicView_Children>, MEMORY[0x1E697FFD0], MEMORY[0x1E69E6F90]);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_18CD63400;
  outlined init with copy of _VariadicView_Children(v2 + 24, v15 + 32);
  v16 = *(v2 + 168);
  v17 = *(v2 + 176);

  v18 = specialized Environment.wrappedValue.getter(v16, v17);
  v19 = specialized NavigationStackCoordinator.makeRootHostingController(environment:transparentBackground:strategy:)(v8, v9, v18 & 1, v8, v9, v15);
  outlined init with copy of NavigationAuthority(v2 + 88, v33);
  v20 = *(v2 + 112);
  v21 = [objc_allocWithZone(type metadata accessor for UIKitNavigationController()) initWithRootViewController_];
  outlined init with copy of NavigationAuthority(v33, &v31);
  v22 = OBJC_IVAR____TtC7SwiftUI25UIKitNavigationController_navigationAuthority;
  swift_beginAccess();
  v23 = v21;
  outlined assign with take of NavigationState.StackContent?(&v31, v21 + v22, &lazy cache variable for type metadata for NavigationAuthority?, &type metadata for NavigationAuthority);
  swift_endAccess();
  v23[OBJC_IVAR____TtC7SwiftUI25UIKitNavigationController_isSecure] = v20;
  *&v31 = v8;
  *(&v31 + 1) = v9;
  UIKitNavigationController.configure(environment:)(&v31);

  outlined destroy of NavigationAuthority(v33);
  outlined init with copy of Slice<NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>>?(v2 + 128, &v31, &lazy cache variable for type metadata for UINavigationPresentationAdaptor?, type metadata accessor for UINavigationPresentationAdaptor);
  if (v32)
  {
    outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v31, v33);
    outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(v33, &v31);
    v24 = OBJC_IVAR____TtC7SwiftUI25UIKitNavigationController_platformNavigationPresentationStrategy;
    swift_beginAccess();
    outlined assign with take of UIKitNavigationController.PlatformNavigationRequestStrategy(&v31, &v23[v24]);
    swift_endAccess();
  }

  else
  {
    outlined destroy of UINavigationPresentationAdaptor?(&v31, &lazy cache variable for type metadata for UINavigationPresentationAdaptor?, type metadata accessor for UINavigationPresentationAdaptor);
  }

  v25 = *(v2 + 8);
  v26 = *(v2 + 16);
  v27 = &v23[OBJC_IVAR____TtC7SwiftUI25UIKitNavigationController_context];
  *v27 = *v2;
  v27[1] = v25;
  v27[2] = v26;
  v28 = v23;
  [(UINavigationController *)v28 setDelegate:v7];
  specialized UIHostingController.prepareNavigationBar(in:navigationController:isRoot:)(v8, v9, v28, 1);

  return v28;
}

BOOL AnyNavigationPath.HeterogeneousBoxBase.isEmpty.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 48);
  if (!NavigationPath.Representation.isEmpty.getter())
  {
    return 0;
  }

  if (v1 >> 62)
  {
    v2 = __CocoaSet.count.getter();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v2 == 0;
}

BOOL NavigationPath.Representation.isEmpty.getter()
{
  v1 = *v0;
  if (v0[3])
  {
    v4 = (v0 + 1);
    v3 = v0[1];
    v2 = v4[1];
    if (v1 >> 62)
    {
      if (__CocoaSet.count.getter())
      {
        return 0;
      }
    }

    else if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return 0;
    }

    if (*(v3 + 16))
    {
      return 0;
    }

    if (!(v2 >> 62))
    {
      v6 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      return v6 == 0;
    }

LABEL_13:
    v6 = __CocoaSet.count.getter();
    return v6 == 0;
  }

  if (v1 >> 62)
  {
    goto LABEL_13;
  }

  v6 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  return v6 == 0;
}

uint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<PresentationModeKey> and conformance EnvironmentPropertyKey<A>(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<NavigationStateSelectionSeed> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<NavigationStateSelectionSeed> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<NavigationStateSelectionSeed> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<NavigationStateSelectionSeed>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<NavigationStateSelectionSeed>, &type metadata for NavigationStateSelectionSeed, &protocol witness table for NavigationStateSelectionSeed, MEMORY[0x1E697FE38]);
    result = swift_getWitnessTable(MEMORY[0x1E697FE40], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<NavigationStateSelectionSeed> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

uint64_t type metadata completion function for ToolbarItemGroup(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t static ToolbarModifier._makeView(modifier:inputs:body:)@<X0>(unsigned int *a1@<X0>, __int128 *a2@<X1>, void (*a3)(uint64_t *__return_ptr, uint64_t, __int128 *)@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, void *a7@<X8>)
{
  v98 = *MEMORY[0x1E69E9840];
  v10 = a2[3];
  v11 = a2[1];
  v89 = a2[2];
  v90 = v10;
  v12 = a2[3];
  v91 = a2[4];
  v13 = a2[1];
  v87 = *a2;
  v88 = v13;
  v84 = v89;
  v85[0] = v12;
  v85[1] = a2[4];
  v38 = *a1;
  v92 = *(a2 + 20);
  v86 = *(a2 + 20);
  v82 = v87;
  v83 = v11;
  outlined init with copy of _ViewInputs(&v87, v96);
  v14 = PreferenceKeys.add(_:)();
  v97 = v86;
  v96[3] = v85[0];
  v96[4] = v85[1];
  v96[1] = v83;
  v96[2] = v84;
  v96[0] = v82;
  a3(&v43, v14, &v82);
  *&v82 = v43;
  DWORD2(v82) = v44;

  v15 = PreferencesOutputs.subscript.getter();

  v93 = v87;
  v94 = v88;
  v95 = v89;
  v79 = v87;
  v80 = v88;
  v81 = v89;
  LOBYTE(v72[0]) = 1;
  outlined init with copy of _GraphInputs(&v93, &v82);
  outlined init with copy of _GraphInputs(&v93, &v82);
  PropertyList.subscript.setter();
  _GraphInputs.pushStyleContext<A>(_:)();
  outlined destroy of _GraphInputs(&v93);
  v16 = v94;
  swift_beginAccess();
  v17 = *MEMORY[0x1E698D3F8];
  if ((v15 & 0x100000000) == 0)
  {
    v17 = v15;
  }

  *&v82 = __PAIR64__(v17, *(v16 + 16));
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  lazy protocol witness table accessor for type ToolbarGraphUtilities.MakeToolbarEnvironment and conformance ToolbarGraphUtilities.MakeToolbarEnvironment();
  Attribute.init<A>(body:value:flags:update:)();
  _GraphInputs.environment.setter();
  static ToolbarGraphUtilities.makePreferenceInputs()();
  v18 = v82;
  v19 = DWORD2(v82);
  type metadata accessor for PreferenceBridge();
  swift_allocObject();
  *&v82 = PreferenceBridge.init()();
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  lazy protocol witness table accessor for type ToolbarGraphUtilities.InvalidateBridge and conformance ToolbarGraphUtilities.InvalidateBridge();
  v20 = Attribute.init<A>(body:value:flags:update:)();
  AGGraphSetFlags();
  *v78 = v18;
  v74[0] = v79;
  v74[1] = v80;
  v74[2] = v81;
  v75 = v79;
  v76 = v80;
  v77 = v81;
  *&v78[8] = v19;
  *&v78[16] = 0;
  *&v78[24] = v20;
  v56 = a4;
  v57 = a5;
  v58 = a6;
  LODWORD(v66) = v38;
  outlined init with copy of _GraphInputs(v74, &v82);
  type metadata accessor for ToolbarModifier(255, a4, a5, a6);
  type metadata accessor for _GraphValue();
  _GraphValue.subscript.getter();
  v84 = v77;
  v85[0] = *v78;
  *(v85 + 12) = *&v78[12];
  v82 = v75;
  v83 = v76;
  (*(a6 + 32))(v72, &v60, &v82, a5, a6);
  v21 = *&v72[0];
  v22 = DWORD2(v72[0]);
  *&v82 = *&v72[0];
  DWORD2(v82) = DWORD2(v72[0]);
  if ((PreferencesOutputs.subscript.getter() & 0x100000000) == 0)
  {
    v23 = swift_allocObject();
    *(v23 + 16) = 0;
    *(v23 + 20) = 1;
    v46 = v90;
    v47 = DWORD2(v90);
    *&v82 = v90;
    DWORD2(v82) = DWORD2(v90);
    MEMORY[0x1EEE9AC00](v23);
    outlined init with copy of PreferencesInputs(&v46, v72);
    PreferencesOutputs.makePreferenceTransformer<A>(inputs:key:transform:)();
  }

  *&v82 = v21;
  DWORD2(v82) = v22;
  v24 = PreferencesOutputs.subscript.getter();
  if ((v24 & 0x100000000) == 0)
  {
    v48 = v90;
    v49 = DWORD2(v90);
    *&v82 = v90;
    DWORD2(v82) = DWORD2(v90);
    MEMORY[0x1EEE9AC00](v24);
    outlined init with copy of PreferencesInputs(&v48, v72);
    PreferencesOutputs.makePreferenceTransformer<A>(inputs:key:transform:)();
  }

  *&v82 = v21;
  DWORD2(v82) = v22;
  v25 = PreferencesOutputs.subscript.getter();
  if ((v25 & 0x100000000) == 0)
  {
    v50 = v90;
    v51 = DWORD2(v90);
    *&v82 = v90;
    DWORD2(v82) = DWORD2(v90);
    MEMORY[0x1EEE9AC00](v25);
    outlined init with copy of PreferencesInputs(&v50, v72);
    PreferencesOutputs.makePreferenceWriter<A>(inputs:key:value:)();
  }

  *&v82 = v21;
  DWORD2(v82) = v22;
  v26 = PreferencesOutputs.subscript.getter();

  if ((v26 & 0x100000000) == 0)
  {
    v52 = v90;
    v53 = DWORD2(v90);
    *&v82 = v90;
    DWORD2(v82) = DWORD2(v90);
    MEMORY[0x1EEE9AC00](v27);
    outlined init with copy of PreferencesInputs(&v52, v72);
    PreferencesOutputs.makePreferenceTransformer<A>(inputs:key:transform:)();
  }

  v68 = v89;
  v69 = v90;
  v70 = v91;
  v71 = v92;
  v66 = v87;
  v67 = v88;
  outlined init with copy of _ViewInputs(&v87, &v82);
  PreferenceKeys.remove(_:)();
  PreferenceKeys.remove(_:)();
  PreferenceKeys.remove(_:)();
  PreferencesOutputs.init()();
  v54 = v90;
  v55 = DWORD2(v90);
  LODWORD(v82) = DWORD2(v90);
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  lazy protocol witness table accessor for type ToolbarGraphUtilities.HostKeys and conformance ToolbarGraphUtilities.HostKeys();
  DWORD2(v69) = Attribute.init<A>(body:value:flags:update:)();
  v72[3] = v69;
  v72[4] = v70;
  v73 = v71;
  v72[0] = v66;
  v72[1] = v67;
  v72[2] = v68;
  v62 = v68;
  v63 = v69;
  v64 = v70;
  v65 = v71;
  v60 = v66;
  v61 = v67;
  outlined init with copy of _ViewInputs(v72, &v82);
  PreferenceBridge.wrapOutputs(_:inputs:)();
  v84 = v62;
  v85[0] = v63;
  v85[1] = v64;
  v86 = v65;
  v82 = v60;
  v83 = v61;
  outlined destroy of _ViewInputs(&v82);
  type metadata accessor for _ContiguousArrayStorage<PreferencesOutputs>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<PreferencesOutputs>, MEMORY[0x1E697F450], MEMORY[0x1E69E6F90]);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_18CD63410;
  v29 = v44;
  *(v28 + 32) = v43;
  *(v28 + 40) = v29;
  *(v28 + 48) = v41;
  *(v28 + 56) = v42;

  PreferencesOutputs.init()();
  v39 = v60;
  v40 = DWORD2(v60);
  v30 = *(v54 + 16);
  if (v30)
  {
    outlined init with copy of PreferencesInputs(&v54, &v60);
    lazy protocol witness table accessor for type PreferenceKeys and conformance PreferenceKeys();
    v31 = -v30;
    v32 = 1;
    do
    {
      v33 = protocol witness for Collection.subscript.read in conformance PreferenceKeys();
      v33(&v60, 0);
      static PreferenceKey.visitKey<A>(_:)();
      ++v32;
    }

    while (v31 + v32 != 1);
    outlined destroy of _ToolbarInputs(&v75);
    outlined destroy of _ViewInputs(v96);
  }

  else
  {
    outlined init with copy of PreferencesInputs(&v54, &v60);
    outlined destroy of _ToolbarInputs(&v75);
    outlined destroy of _ViewInputs(v96);
  }

  v62 = v68;
  v63 = v69;
  v64 = v70;
  v65 = v71;
  v60 = v66;
  v61 = v67;
  outlined destroy of _ViewInputs(&v60);
  v59[0] = v79;
  v59[1] = v80;
  v59[2] = v81;
  outlined destroy of _GraphInputs(v59);

  v35 = v45;
  *a7 = v39;
  *(a7 + 2) = v40;
  *(a7 + 3) = v35;
  return result;
}

unint64_t lazy protocol witness table accessor for type ToolbarGraphUtilities.MakeToolbarEnvironment and conformance ToolbarGraphUtilities.MakeToolbarEnvironment()
{
  result = lazy protocol witness table cache variable for type ToolbarGraphUtilities.MakeToolbarEnvironment and conformance ToolbarGraphUtilities.MakeToolbarEnvironment;
  if (!lazy protocol witness table cache variable for type ToolbarGraphUtilities.MakeToolbarEnvironment and conformance ToolbarGraphUtilities.MakeToolbarEnvironment)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ToolbarGraphUtilities.MakeToolbarEnvironment, &type metadata for ToolbarGraphUtilities.MakeToolbarEnvironment, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ToolbarGraphUtilities.MakeToolbarEnvironment and conformance ToolbarGraphUtilities.MakeToolbarEnvironment);
  }

  return result;
}

uint64_t static ToolbarGraphUtilities.makePreferenceInputs()()
{
  PreferenceKeys.init()();
  Attribute.init<A>(body:value:flags:update:)();

  PreferencesInputs.init(hostKeys:)();
  PreferenceKeys.add(_:)();
  PreferenceKeys.add(_:)();
  PreferenceKeys.add(_:)();
  return PreferenceKeys.add(_:)();
}

unint64_t lazy protocol witness table accessor for type ToolbarGraphUtilities.InvalidateBridge and conformance ToolbarGraphUtilities.InvalidateBridge()
{
  result = lazy protocol witness table cache variable for type ToolbarGraphUtilities.InvalidateBridge and conformance ToolbarGraphUtilities.InvalidateBridge;
  if (!lazy protocol witness table cache variable for type ToolbarGraphUtilities.InvalidateBridge and conformance ToolbarGraphUtilities.InvalidateBridge)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ToolbarGraphUtilities.InvalidateBridge, &type metadata for ToolbarGraphUtilities.InvalidateBridge, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ToolbarGraphUtilities.InvalidateBridge and conformance ToolbarGraphUtilities.InvalidateBridge);
  }

  return result;
}

uint64_t closure #1 in static ToolbarModifier._makeView(modifier:inputs:body:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for ToolbarModifier(0, a2, a3, a4);
  v7 = *(v6 + 44);
  v11[2] = v6;
  v11[3] = a3;
  v8 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + v7, partial apply for closure #1 in static PointerOffset.of(_:), v11, a3, MEMORY[0x1E69E73E0], v8, MEMORY[0x1E69E7410], v9);
  return v11[5];
}

uint64_t static TupleToolbarContent._makeToolbar(content:inputs:)@<X0>(int *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v44 = *MEMORY[0x1E69E9840];
  v5 = a2[2];
  v6 = a2[3];
  v7 = *a2;
  v41 = a2[1];
  v42 = v5;
  v43[0] = v6;
  *(v43 + 12) = *(a2 + 60);
  v8 = *a1;
  v40 = v7;
  _s7SwiftUI15TupleDescriptorPAAE16tupleDescriptionyAA0c4TypeF0VyxGSo07AGTupleG0aFZAA014ToolbarContentD0V_Tt1g5(a3, v38);
  *&v38[8] = v40;
  *&v38[68] = *(v43 + 12);
  *&v38[56] = v43[0];
  *&v38[40] = v42;
  v9 = *v38;
  *&v38[24] = v41;
  *&v38[88] = 0;
  *&v39 = 0;
  *(&v39 + 1) = MEMORY[0x1E69E7CC0];
  *v38 = v8;
  v10 = *(v9 + 16);
  if (v10)
  {
    outlined init with copy of _ToolbarInputs(&v40, v37);
    v11 = (v9 + 40);
    do
    {
      v12 = *v11;
      v11 = (v11 + 24);
      *&v38[88] = AGTupleElementOffset();
      v37[0] = v12;
      v15 = type metadata accessor for TupleToolbarContent.Visitor(0, a3, v13, v14);
      TypeConformance<>.visitType<A>(visitor:)(v38, v15, &protocol witness table for TupleToolbarContent<A>.Visitor);
      --v10;
    }

    while (v10);

    v16 = *(&v39 + 1);
  }

  else
  {
    outlined init with copy of _ToolbarInputs(&v40, v37);

    v16 = MEMORY[0x1E69E7CC0];
  }

  v17 = *(v16 + 16);
  if (v17)
  {
    *&v37[0] = MEMORY[0x1E69E7CC0];

    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v17, 0);
    v18 = *&v37[0];
    v19 = (v16 + 40);
    do
    {
      v20 = *(v19 - 1);
      v21 = *v19;
      *&v37[0] = v18;
      v22 = *(v18 + 16);
      v23 = *(v18 + 24);

      if (v22 >= v23 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v22 + 1, 1);
        v18 = *&v37[0];
      }

      v19 += 6;
      *(v18 + 16) = v22 + 1;
      v24 = v18 + 16 * v22;
      *(v24 + 32) = v20;
      *(v24 + 40) = v21;
      --v17;
    }

    while (v17);
  }

  PreferencesOutputs.init()();
  v35 = *&v37[0];
  v36 = DWORD2(v37[0]);
  v25 = *(*&v43[0] + 16);
  if (v25)
  {
    lazy protocol witness table accessor for type PreferenceKeys and conformance PreferenceKeys();

    v26 = 1;
    do
    {
      v27 = protocol witness for Collection.subscript.read in conformance PreferenceKeys();
      v27(v37, 0);
      static PreferenceKey.visitKey<A>(_:)();
      ++v26;
    }

    while (v26 - v25 != 1);
  }

  else
  {
  }

  v28 = (*(&v39 + 1) + 48);
  if (!*(*(&v39 + 1) + 16))
  {
    v28 = &v43[1];
  }

  v29 = *v28;

  *a4 = v35;
  *(a4 + 8) = v36;
  *(a4 + 16) = v29;
  v37[4] = *&v38[64];
  v37[5] = *&v38[80];
  v37[6] = v39;
  v37[0] = *v38;
  v37[1] = *&v38[16];
  v37[2] = *&v38[32];
  v37[3] = *&v38[48];
  v32 = type metadata accessor for TupleToolbarContent.Visitor(0, a3, v30, v31);
  return (*(*(v32 - 8) + 8))(v37, v32);
}