uint64_t AlwaysOnBridge.preferencesDidChange(_:)(uint64_t *a1)
{
  PreferenceValues.subscript.getter();
  if (v5 == -1 || v5 != *(v1 + 44))
  {
    *(v1 + 44) = v5;
    v2 = *(v1 + 48);
    *(v1 + 48) = v4;
    AlwaysOnBridge.timelineRegistrations.didset(v2);
  }
}

uint64_t protocol witness for static PreferenceKey.defaultValue.getter in conformance AlwaysOnTimelinesKey@<X0>(void *a1@<X8>)
{
  if (one-time initialization token for defaultValue != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = static AlwaysOnTimelinesKey.defaultValue;
}

void *ContainerBackgroundBridge.preferencesDidChange(_:)(uint64_t *a1)
{
  v2 = *a1;
  v27[0] = *a1;
  result = PreferenceValues.seed.getter();
  if (v24 && *(v1 + 145) != 5)
  {
    v4 = *(v1 + 40);
    if (v4)
    {
      v27[0] = v2;
      v5 = swift_allocObject();
      swift_weakInit();
      v6 = *(*v4 + 80);

      v6(v27, partial apply for closure #1 in ContainerBackgroundBridge.preferencesDidChange(_:), v5);
    }

    v8 = ContainerBackgroundBridge.transparentBackgroundSeedTracker.modify(v27);
    if (*(v7 + 4))
    {
      return (v8)(v27, 0);
    }

    else
    {
      v9 = v7;
      swift_weakInit();
      v24 = v2;
      PreferenceValues.subscript.getter();
      if (*v9 == -1 || v26 == -1 || *v9 != v26)
      {
        *v9 = v26;
        v10 = v25;
        swift_beginAccess();
        Strong = swift_weakLoadStrong();
        if (Strong)
        {
          v12 = Strong;
          v13 = swift_unknownObjectWeakLoadStrong();
          if (v13 && (v14 = v13, v15 = *(v12 + 64), v16 = swift_getObjectType(), v17 = type metadata accessor for ContainerBackgroundHost(), (*(*(*(v15 + 16) + 8) + 16))(v23, v17, v17, v16), v14, v23[0]))
          {
            v18 = v23[1];
            ObjectType = swift_getObjectType();
            v20 = (*(v18 + 24))(ObjectType, v18);
            if (v10 == 1)
            {
              v21 = 0;
            }

            else
            {
              v21 = v20;
            }

            if (v10)
            {
              v22 = v21;
            }

            else
            {
              v22 = 1;
            }

            (*(v18 + 8))(16, v22 & 1, ObjectType, v18);

            swift_unknownObjectRelease();
          }

          else
          {
          }
        }
      }

      (v8)(v27, 0);
      return swift_weakDestroy();
    }
  }

  return result;
}

uint64_t sub_18BE0437C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t protocol witness for static PreferenceKey.defaultValue.getter in conformance PopoverPresentation.Key@<X0>(void *a1@<X8>)
{
  if (one-time initialization token for defaultValue != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = static PopoverPresentation.Key.defaultValue;
}

uint64_t outlined destroy of PopoverPresentation?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  type metadata accessor for PopoverPresentation?(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t storeEnumTagSinglePayload for AnyShareConfiguration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 104) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 104) = 0;
    }

    if (a2)
    {
      *(result + 64) = a2;
    }
  }

  return result;
}

void ShareConfigurationBridge.shareConfigurationDidChange(_:)(__int128 *a1)
{
  v2 = a1[5];
  v47 = a1[4];
  v48 = v2;
  v49 = *(a1 + 12);
  v3 = a1[1];
  v43 = *a1;
  v44 = v3;
  v4 = a1[3];
  v45 = a1[2];
  v46 = v4;
  v5 = *(a1 + 8);
  if (v5 == 1)
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      v6 = *(v1 + 24);
      ObjectType = swift_getObjectType();
      v24 = ViewGraphDelegate.uiViewController.getter(ObjectType, *(*(v6 + 16) + 8));
      swift_unknownObjectRelease();
      if (v24)
      {
        [v24 setActivityItemsConfiguration_];
      }
    }
  }

  else
  {
    v9 = *a1;
    v10 = *(a1 + 1);
    v11 = *(a1 + 2);
    v12 = *(a1 + 3);
    v13 = *(a1 + 32);
    v38[0] = *(a1 + 33);
    *(v38 + 15) = a1[3];
    v14 = *(a1 + 88);
    v36 = *(a1 + 72);
    v37 = v14;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v15 = *(v1 + 24);
      v16 = swift_getObjectType();
      v34[4] = v47;
      v34[5] = v48;
      v35 = v49;
      v34[0] = v43;
      v34[1] = v44;
      v34[2] = v45;
      v34[3] = v46;
      outlined init with copy of AnyShareConfiguration(v34, &v39);
      v23 = v16;
      v25 = v15;
      v17 = ViewGraphDelegate.uiViewController.getter(v16, *(v15[2] + 8));
      if (v17)
      {
        v18 = v17;
        if (v13)
        {
          if (v13 == 1)
          {
            outlined init with copy of AnyShareConfiguration?(a1, &v39);
            v19 = outlined copy of AppIntentExecutor?(v11, v12);
            v20 = v9(v19);
            outlined consume of AnyShareConfiguration.Storage(v9, v10, v11, v12, 1);
            v21 = 2;
            v9 = v20;
            v10 = v11;
            v11 = v12;
            v12 = 0;
          }

          else
          {
            *v42 = v47;
            *&v42[16] = v48;
            *&v42[32] = v49;
            v39 = v43;
            v40 = v44;
            *v41 = v45;
            *&v41[16] = v46;
            outlined init with copy of AnyShareConfiguration(&v39, v28);
            v21 = 2;
          }
        }

        else
        {
          *v42 = v47;
          *&v42[16] = v48;
          *&v42[32] = v49;
          v39 = v43;
          v40 = v44;
          *v41 = v45;
          *&v41[16] = v46;
          outlined init with copy of AnyShareConfiguration(&v39, v28);
          v21 = 0;
        }

        type metadata accessor for UIActivityItemsConfiguration();
        *&v41[1] = v38[0];
        *&v41[16] = *(v38 + 15);
        *&v42[8] = v36;
        *&v42[24] = v37;
        *v30 = v38[0];
        *&v30[15] = *(v38 + 15);
        v32 = v36;
        *&v39 = v9;
        *(&v39 + 1) = v10;
        *&v40 = v11;
        *(&v40 + 1) = v12;
        v41[0] = v21;
        *v42 = v5;
        v28[0] = v9;
        v28[1] = v10;
        v28[2] = v11;
        v28[3] = v12;
        v29 = v21;
        v31 = v5;
        v33 = v37;
        outlined init with copy of AnyShareConfiguration(&v39, v27);
        outlined destroy of AnyShareConfiguration(v28);
        (*(v25[1] + 8))(v23);
        GraphHost.environment.getter();

        v26 = v27[0];
        v22 = UIActivityItemsConfiguration.init(configuration:env:)(&v39, &v26);
        [v18 setActivityItemsConfiguration_];
        outlined destroy of AnyShareConfiguration?(a1);
      }

      else
      {
        outlined destroy of AnyShareConfiguration?(a1);
      }

      swift_unknownObjectRelease();
    }
  }
}

uint64_t AttributedString.transformingUIKitAttributedForSwiftUI()@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v3 = v2;
  type metadata accessor for AttributedString.AdaptiveImageGlyph?(0, a2);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v264 = &v256 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v263 = &v256 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v275 = &v256 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v308 = &v256 - v12;
  v318 = type metadata accessor for AttributedString.AdaptiveImageGlyph();
  v332 = *(v318 - 8);
  MEMORY[0x1EEE9AC00](v318);
  v314 = &v256 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Range<AttributedString.Index>(0);
  v320 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v319 = &v256 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ScopedAttributeContainer<AttributeScopes.SwiftUIAttributes>(0);
  v325 = v16;
  v329 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v274 = &v256 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v273 = &v256 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v272 = &v256 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v316 = &v256 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v281 = &v256 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v280 = &v256 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v279 = &v256 - v29;
  type metadata accessor for ScopedAttributeContainer<AttributeScopes.UIKitAttributes>(0);
  v330 = *(v30 - 8);
  v331 = v30;
  MEMORY[0x1EEE9AC00](v30);
  v307 = &v256 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v262 = &v256 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v306 = &v256 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v261 = &v256 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v305 = &v256 - v39;
  MEMORY[0x1EEE9AC00](v40);
  v304 = &v256 - v41;
  MEMORY[0x1EEE9AC00](v42);
  v303 = &v256 - v43;
  MEMORY[0x1EEE9AC00](v44);
  v302 = &v256 - v45;
  MEMORY[0x1EEE9AC00](v46);
  v301 = &v256 - v47;
  MEMORY[0x1EEE9AC00](v48);
  v300 = &v256 - v49;
  MEMORY[0x1EEE9AC00](v50);
  v299 = &v256 - v51;
  v323 = type metadata accessor for AttributeContainer();
  v328 = *(v323 - 8);
  MEMORY[0x1EEE9AC00](v323);
  v271 = &v256 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v53);
  v298 = &v256 - v54;
  MEMORY[0x1EEE9AC00](v55);
  v260 = &v256 - v56;
  MEMORY[0x1EEE9AC00](v57);
  v270 = &v256 - v58;
  MEMORY[0x1EEE9AC00](v59);
  v297 = &v256 - v60;
  MEMORY[0x1EEE9AC00](v61);
  v259 = &v256 - v62;
  MEMORY[0x1EEE9AC00](v63);
  v269 = &v256 - v64;
  MEMORY[0x1EEE9AC00](v65);
  v296 = &v256 - v66;
  MEMORY[0x1EEE9AC00](v67);
  v295 = &v256 - v68;
  MEMORY[0x1EEE9AC00](v69);
  v294 = &v256 - v70;
  MEMORY[0x1EEE9AC00](v71);
  v315 = &v256 - v72;
  MEMORY[0x1EEE9AC00](v73);
  v293 = &v256 - v74;
  MEMORY[0x1EEE9AC00](v75);
  v278 = &v256 - v76;
  MEMORY[0x1EEE9AC00](v77);
  v292 = &v256 - v78;
  MEMORY[0x1EEE9AC00](v79);
  v277 = &v256 - v80;
  MEMORY[0x1EEE9AC00](v81);
  v291 = &v256 - v82;
  MEMORY[0x1EEE9AC00](v83);
  v276 = &v256 - v84;
  MEMORY[0x1EEE9AC00](v85);
  v290 = &v256 - v86;
  v312 = type metadata accessor for AttributedString.Runs.Index();
  v327 = *(v312 - 8);
  MEMORY[0x1EEE9AC00](v312);
  v311 = &v256 - ((v87 + 15) & 0xFFFFFFFFFFFFFFF0);
  v317 = type metadata accessor for AttributedString.Runs.Run();
  v88 = *(v317 - 8);
  MEMORY[0x1EEE9AC00](v317);
  v90 = &v256 - ((v89 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v91);
  v289 = &v256 - v92;
  v93 = type metadata accessor for AttributedString.Runs();
  v94 = *(v93 - 8);
  v95 = MEMORY[0x1EEE9AC00](v93);
  v97 = &v256 - ((v96 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for IndexingIterator<AttributedString.Runs>(0, v95);
  v99 = v98 - 8;
  MEMORY[0x1EEE9AC00](v98);
  v101 = &v256 - ((v100 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = type metadata accessor for AttributedString();
  (*(*(v102 - 8) + 16))(a1, v3, v102);
  v321 = a1;
  AttributedString.runs.getter();
  (*(v94 + 16))(v101, v97, v93);
  v103 = *(v99 + 44);
  v104 = v90;
  v105 = lazy protocol witness table accessor for type AttributedString.Index and conformance AttributedString.Index(&lazy protocol witness table cache variable for type AttributedString.Runs and conformance AttributedString.Runs, MEMORY[0x1E69687C8], MEMORY[0x1E69687E0]);
  v310 = v101;
  dispatch thunk of Collection.startIndex.getter();
  (*(v94 + 8))(v97, v93);
  v309 = (v327 + 8);
  v285 = (v88 + 16);
  v284 = (v88 + 32);
  v326 = (v328 + 8);
  ++v330;
  v324 = (v329 + 8);
  v283 = (v332 + 48);
  v268 = (v332 + 32);
  v267 = (v332 + 8);
  v282 = (v88 + 8);
  v258 = (v332 + 16);
  v257 = (v332 + 56);
  v322 = v104;
  v287 = v103;
  v288 = v93;
  v286 = v105;
  while (1)
  {
    v111 = v311;
    v112 = v310;
    dispatch thunk of Collection.endIndex.getter();
    lazy protocol witness table accessor for type AttributedString.Index and conformance AttributedString.Index(&lazy protocol witness table cache variable for type AttributedString.Runs.Index and conformance AttributedString.Runs.Index, MEMORY[0x1E69687B0], MEMORY[0x1E69687C0]);
    v113 = v312;
    v114 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*v309)(v111, v113);
    if (v114)
    {
      break;
    }

    v115 = dispatch thunk of Collection.subscript.read();
    v116 = v289;
    v117 = v317;
    (*v285)(v289);
    v115(&v335, 0);
    dispatch thunk of Collection.formIndex(after:)();
    (*v284)(v104, v116, v117);
    v118 = v290;
    AttributedString.Runs.Run.attributes.getter();
    swift_getKeyPath();
    v119 = type metadata accessor for AttributeScopes.UIKitAttributes();
    v120 = lazy protocol witness table accessor for type AttributedString.Index and conformance AttributedString.Index(&lazy protocol witness table cache variable for type AttributeScopes.UIKitAttributes and conformance AttributeScopes.UIKitAttributes, MEMORY[0x1E69DBE88], MEMORY[0x1E69DBE80]);
    v121 = v299;
    v328 = v120;
    v329 = v119;
    AttributeContainer.subscript.getter();

    v122 = *v326;
    v123 = v323;
    (*v326)(v118, v323);
    swift_getKeyPath();
    v124 = lazy protocol witness table accessor for type AttributeScopes.UIKitAttributes.BackgroundColorAttribute and conformance AttributeScopes.UIKitAttributes.BackgroundColorAttribute();
    v125 = v331;
    v313 = v124;
    ScopedAttributeContainer.subscript.getter();

    v327 = *v330;
    (v327)(v121, v125);
    v126 = v335;
    v332 = v122;
    if (v335)
    {
      v127 = v104;
      v128 = v276;
      AttributedString.Runs.Run.attributes.getter();
      swift_getKeyPath();
      type metadata accessor for AttributeScopes.SwiftUIAttributes();
      lazy protocol witness table accessor for type AttributedString.Index and conformance AttributedString.Index(&lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes and conformance AttributeScopes.SwiftUIAttributes, MEMORY[0x1E697D930], MEMORY[0x1E697D928]);
      v129 = v279;
      AttributeContainer.subscript.getter();

      (v122)(v128, v123);
      swift_getKeyPath();
      lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.BackgroundColorAttribute and conformance AttributeScopes.SwiftUIAttributes.BackgroundColorAttribute();
      v130 = v325;
      ScopedAttributeContainer.subscript.getter();

      (*v324)(v129, v130);
      if (v335)
      {
      }

      else
      {
        v131 = v319;
        AttributedString.Runs.Run.range.getter();
        type metadata accessor for UIKitPlatformColorDefinition(0);
        v132 = v126;
        v133 = Color.init(_platformColor:definition:)();
        lazy protocol witness table accessor for type AttributedString.Index and conformance AttributedString.Index(&lazy protocol witness table cache variable for type Range<AttributedString.Index> and conformance Range<A>, type metadata accessor for Range<AttributedString.Index>, MEMORY[0x1E69E66D8]);
        v134 = AttributedString.subscript.modify();
        v333 = v133;
        AttributedSubstring.subscript.setter();
        v134(&v335, 0);
        outlined destroy of AttributedString.AdaptiveImageGlyph?(v131, type metadata accessor for Range<AttributedString.Index>);
        AttributedString.Runs.Run.range.getter();
        v333 = 0;
        v135 = AttributedString.subscript.modify();
        AttributedSubstring.subscript.setter();
        v135(&v335, 0);

        outlined destroy of AttributedString.AdaptiveImageGlyph?(v131, type metadata accessor for Range<AttributedString.Index>);
      }

      v123 = v323;
      v104 = v127;
    }

    v136 = v291;
    AttributedString.Runs.Run.attributes.getter();
    swift_getKeyPath();
    v137 = v300;
    AttributeContainer.subscript.getter();

    v138 = v332;
    (v332)(v136, v123);
    swift_getKeyPath();
    v139 = lazy protocol witness table accessor for type AttributeScopes.UIKitAttributes.ForegroundColorAttribute and conformance AttributeScopes.UIKitAttributes.ForegroundColorAttribute();
    v140 = v331;
    v313 = v139;
    ScopedAttributeContainer.subscript.getter();

    (v327)(v137, v140);
    v141 = v335;
    if (v335)
    {
      v142 = v104;
      v143 = v277;
      AttributedString.Runs.Run.attributes.getter();
      swift_getKeyPath();
      type metadata accessor for AttributeScopes.SwiftUIAttributes();
      lazy protocol witness table accessor for type AttributedString.Index and conformance AttributedString.Index(&lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes and conformance AttributeScopes.SwiftUIAttributes, MEMORY[0x1E697D930], MEMORY[0x1E697D928]);
      v144 = v280;
      AttributeContainer.subscript.getter();

      v138(v143, v123);
      swift_getKeyPath();
      lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.ForegroundColorAttribute and conformance AttributeScopes.SwiftUIAttributes.ForegroundColorAttribute();
      v145 = v325;
      ScopedAttributeContainer.subscript.getter();

      (*v324)(v144, v145);
      if (v335)
      {
      }

      else
      {
        v146 = v319;
        AttributedString.Runs.Run.range.getter();
        type metadata accessor for UIKitPlatformColorDefinition(0);
        v147 = v141;
        v148 = Color.init(_platformColor:definition:)();
        lazy protocol witness table accessor for type AttributedString.Index and conformance AttributedString.Index(&lazy protocol witness table cache variable for type Range<AttributedString.Index> and conformance Range<A>, type metadata accessor for Range<AttributedString.Index>, MEMORY[0x1E69E66D8]);
        v149 = AttributedString.subscript.modify();
        v333 = v148;
        AttributedSubstring.subscript.setter();
        v149(&v335, 0);
        outlined destroy of AttributedString.AdaptiveImageGlyph?(v146, type metadata accessor for Range<AttributedString.Index>);
        AttributedString.Runs.Run.range.getter();
        v333 = 0;
        v150 = AttributedString.subscript.modify();
        AttributedSubstring.subscript.setter();
        v150(&v335, 0);

        outlined destroy of AttributedString.AdaptiveImageGlyph?(v146, type metadata accessor for Range<AttributedString.Index>);
      }

      v123 = v323;
      v104 = v142;
    }

    v151 = v292;
    AttributedString.Runs.Run.attributes.getter();
    swift_getKeyPath();
    v152 = v301;
    AttributeContainer.subscript.getter();

    v153 = v332;
    (v332)(v151, v123);
    swift_getKeyPath();
    v154 = lazy protocol witness table accessor for type AttributeScopes.UIKitAttributes.FontAttribute and conformance AttributeScopes.UIKitAttributes.FontAttribute();
    v155 = v331;
    v313 = v154;
    ScopedAttributeContainer.subscript.getter();

    (v327)(v152, v155);
    v156 = v335;
    if (v335)
    {
      v157 = v104;
      v158 = v278;
      AttributedString.Runs.Run.attributes.getter();
      swift_getKeyPath();
      type metadata accessor for AttributeScopes.SwiftUIAttributes();
      lazy protocol witness table accessor for type AttributedString.Index and conformance AttributedString.Index(&lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes and conformance AttributeScopes.SwiftUIAttributes, MEMORY[0x1E697D930], MEMORY[0x1E697D928]);
      v159 = v281;
      AttributeContainer.subscript.getter();

      v153(v158, v123);
      swift_getKeyPath();
      lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.FontAttribute and conformance AttributeScopes.SwiftUIAttributes.FontAttribute();
      v160 = v325;
      ScopedAttributeContainer.subscript.getter();

      (*v324)(v159, v160);
      if (v335)
      {
      }

      else
      {
        v161 = v319;
        AttributedString.Runs.Run.range.getter();
        v162 = v156;
        v163 = Font.init(_:)();
        lazy protocol witness table accessor for type AttributedString.Index and conformance AttributedString.Index(&lazy protocol witness table cache variable for type Range<AttributedString.Index> and conformance Range<A>, type metadata accessor for Range<AttributedString.Index>, MEMORY[0x1E69E66D8]);
        v164 = AttributedString.subscript.modify();
        v333 = v163;
        AttributedSubstring.subscript.setter();
        v164(&v335, 0);
        outlined destroy of AttributedString.AdaptiveImageGlyph?(v161, type metadata accessor for Range<AttributedString.Index>);
        AttributedString.Runs.Run.range.getter();
        v333 = 0;
        v165 = AttributedString.subscript.modify();
        AttributedSubstring.subscript.setter();
        v165(&v335, 0);

        outlined destroy of AttributedString.AdaptiveImageGlyph?(v161, type metadata accessor for Range<AttributedString.Index>);
      }

      v123 = v323;
      v104 = v157;
    }

    v166 = v293;
    AttributedString.Runs.Run.attributes.getter();
    swift_getKeyPath();
    v167 = v302;
    AttributeContainer.subscript.getter();

    (v332)(v166, v123);
    swift_getKeyPath();
    lazy protocol witness table accessor for type AttributeScopes.UIKitAttributes.KernAttribute and conformance AttributeScopes.UIKitAttributes.KernAttribute();
    v168 = v331;
    ScopedAttributeContainer.subscript.getter();

    (v327)(v167, v168);
    if ((v336 & 1) == 0)
    {
      v313 = v335;
      v169 = v315;
      AttributedString.Runs.Run.attributes.getter();
      swift_getKeyPath();
      type metadata accessor for AttributeScopes.SwiftUIAttributes();
      lazy protocol witness table accessor for type AttributedString.Index and conformance AttributedString.Index(&lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes and conformance AttributeScopes.SwiftUIAttributes, MEMORY[0x1E697D930], MEMORY[0x1E697D928]);
      v170 = v316;
      AttributeContainer.subscript.getter();

      (v332)(v169, v123);
      swift_getKeyPath();
      lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.KerningAttribute and conformance AttributeScopes.SwiftUIAttributes.KerningAttribute();
      v171 = v325;
      ScopedAttributeContainer.subscript.getter();

      (*v324)(v170, v171);
      if (v336 == 1)
      {
        v172 = v335;
        v173 = v319;
        AttributedString.Runs.Run.range.getter();
        lazy protocol witness table accessor for type AttributedString.Index and conformance AttributedString.Index(&lazy protocol witness table cache variable for type Range<AttributedString.Index> and conformance Range<A>, type metadata accessor for Range<AttributedString.Index>, MEMORY[0x1E69E66D8]);
        v174 = AttributedString.subscript.modify();
        v333 = v313;
        LOBYTE(v334) = 0;
        AttributedSubstring.subscript.setter();
        v174(&v335, 0);
        v123 = v323;
        outlined destroy of AttributedString.AdaptiveImageGlyph?(v173, type metadata accessor for Range<AttributedString.Index>);
        AttributedString.Runs.Run.range.getter();
        v333 = v172;
        LOBYTE(v334) = 1;
        v175 = AttributedString.subscript.modify();
        AttributedSubstring.subscript.setter();
        v175(&v335, 0);
        outlined destroy of AttributedString.AdaptiveImageGlyph?(v173, type metadata accessor for Range<AttributedString.Index>);
      }
    }

    v176 = v294;
    AttributedString.Runs.Run.attributes.getter();
    swift_getKeyPath();
    v177 = v303;
    AttributeContainer.subscript.getter();

    (v332)(v176, v123);
    swift_getKeyPath();
    lazy protocol witness table accessor for type AttributeScopes.UIKitAttributes.TrackingAttribute and conformance AttributeScopes.UIKitAttributes.TrackingAttribute();
    v178 = v331;
    ScopedAttributeContainer.subscript.getter();

    (v327)(v177, v178);
    if ((v336 & 1) == 0)
    {
      v313 = v335;
      v179 = v315;
      AttributedString.Runs.Run.attributes.getter();
      swift_getKeyPath();
      type metadata accessor for AttributeScopes.SwiftUIAttributes();
      lazy protocol witness table accessor for type AttributedString.Index and conformance AttributedString.Index(&lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes and conformance AttributeScopes.SwiftUIAttributes, MEMORY[0x1E697D930], MEMORY[0x1E697D928]);
      v180 = v316;
      AttributeContainer.subscript.getter();

      (v332)(v179, v123);
      swift_getKeyPath();
      lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.TrackingAttribute and conformance AttributeScopes.SwiftUIAttributes.TrackingAttribute();
      v181 = v325;
      ScopedAttributeContainer.subscript.getter();

      (*v324)(v180, v181);
      if (v336 == 1)
      {
        v182 = v335;
        v183 = v319;
        AttributedString.Runs.Run.range.getter();
        lazy protocol witness table accessor for type AttributedString.Index and conformance AttributedString.Index(&lazy protocol witness table cache variable for type Range<AttributedString.Index> and conformance Range<A>, type metadata accessor for Range<AttributedString.Index>, MEMORY[0x1E69E66D8]);
        v184 = AttributedString.subscript.modify();
        v333 = v313;
        LOBYTE(v334) = 0;
        AttributedSubstring.subscript.setter();
        v184(&v335, 0);
        v123 = v323;
        outlined destroy of AttributedString.AdaptiveImageGlyph?(v183, type metadata accessor for Range<AttributedString.Index>);
        AttributedString.Runs.Run.range.getter();
        v333 = v182;
        LOBYTE(v334) = 1;
        v185 = AttributedString.subscript.modify();
        AttributedSubstring.subscript.setter();
        v185(&v335, 0);
        outlined destroy of AttributedString.AdaptiveImageGlyph?(v183, type metadata accessor for Range<AttributedString.Index>);
      }
    }

    v186 = v295;
    AttributedString.Runs.Run.attributes.getter();
    swift_getKeyPath();
    v187 = v304;
    AttributeContainer.subscript.getter();

    (v332)(v186, v123);
    swift_getKeyPath();
    lazy protocol witness table accessor for type AttributeScopes.UIKitAttributes.BaselineOffsetAttribute and conformance AttributeScopes.UIKitAttributes.BaselineOffsetAttribute();
    v188 = v331;
    ScopedAttributeContainer.subscript.getter();

    (v327)(v187, v188);
    if ((v336 & 1) == 0)
    {
      v313 = v335;
      v189 = v315;
      AttributedString.Runs.Run.attributes.getter();
      swift_getKeyPath();
      type metadata accessor for AttributeScopes.SwiftUIAttributes();
      lazy protocol witness table accessor for type AttributedString.Index and conformance AttributedString.Index(&lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes and conformance AttributeScopes.SwiftUIAttributes, MEMORY[0x1E697D930], MEMORY[0x1E697D928]);
      v190 = v316;
      AttributeContainer.subscript.getter();

      (v332)(v189, v123);
      swift_getKeyPath();
      lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.BaselineOffsetAttribute and conformance AttributeScopes.SwiftUIAttributes.BaselineOffsetAttribute();
      v191 = v325;
      ScopedAttributeContainer.subscript.getter();

      (*v324)(v190, v191);
      if (v336 == 1)
      {
        v192 = v335;
        v193 = v319;
        AttributedString.Runs.Run.range.getter();
        lazy protocol witness table accessor for type AttributedString.Index and conformance AttributedString.Index(&lazy protocol witness table cache variable for type Range<AttributedString.Index> and conformance Range<A>, type metadata accessor for Range<AttributedString.Index>, MEMORY[0x1E69E66D8]);
        v194 = AttributedString.subscript.modify();
        v333 = v313;
        LOBYTE(v334) = 0;
        AttributedSubstring.subscript.setter();
        v194(&v335, 0);
        v123 = v323;
        outlined destroy of AttributedString.AdaptiveImageGlyph?(v193, type metadata accessor for Range<AttributedString.Index>);
        AttributedString.Runs.Run.range.getter();
        v333 = v192;
        LOBYTE(v334) = 1;
        v195 = AttributedString.subscript.modify();
        AttributedSubstring.subscript.setter();
        v195(&v335, 0);
        outlined destroy of AttributedString.AdaptiveImageGlyph?(v193, type metadata accessor for Range<AttributedString.Index>);
      }
    }

    v196 = v296;
    AttributedString.Runs.Run.attributes.getter();
    swift_getKeyPath();
    v197 = v305;
    AttributeContainer.subscript.getter();

    (v332)(v196, v123);
    swift_getKeyPath();
    v198 = lazy protocol witness table accessor for type AttributeScopes.UIKitAttributes.StrikethroughStyleAttribute and conformance AttributeScopes.UIKitAttributes.StrikethroughStyleAttribute();
    v199 = v331;
    ScopedAttributeContainer.subscript.getter();

    (v327)(v197, v199);
    if ((v336 & 1) == 0)
    {
      v313 = v198;
      v200 = v335;
      v201 = v104;
      v202 = v269;
      AttributedString.Runs.Run.attributes.getter();
      swift_getKeyPath();
      type metadata accessor for AttributeScopes.SwiftUIAttributes();
      lazy protocol witness table accessor for type AttributedString.Index and conformance AttributedString.Index(&lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes and conformance AttributeScopes.SwiftUIAttributes, MEMORY[0x1E697D930], MEMORY[0x1E697D928]);
      v203 = v272;
      AttributeContainer.subscript.getter();

      (v332)(v202, v123);
      swift_getKeyPath();
      lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.StrikethroughStyleAttribute and conformance AttributeScopes.SwiftUIAttributes.StrikethroughStyleAttribute();
      v204 = v123;
      v205 = v325;
      ScopedAttributeContainer.subscript.getter();

      (*v324)(v203, v205);
      if (v336 == 1)
      {
        v206 = (~v200 & 9) == 0 || v200 == 0;
        v207 = (v200 >> 1) & 1;
        if (v206)
        {
          LODWORD(v207) = 1;
        }

        v208 = v207 | (v200 >> 15) & 1;
        if (v208)
        {
          v209 = 0;
        }

        else
        {
          v209 = v200;
        }

        v210 = v259;
        AttributedString.Runs.Run.attributes.getter();
        swift_getKeyPath();
        v211 = v261;
        AttributeContainer.subscript.getter();

        (v332)(v210, v204);
        swift_getKeyPath();
        v212 = lazy protocol witness table accessor for type AttributeScopes.UIKitAttributes.StrikethroughColorAttribute and conformance AttributeScopes.UIKitAttributes.StrikethroughColorAttribute();
        v213 = v331;
        v266 = v212;
        ScopedAttributeContainer.subscript.getter();

        (v327)(v211, v213);
        if (v335)
        {
          if (v208)
          {

            v208 = 1;
          }

          else
          {
            type metadata accessor for UIKitPlatformColorDefinition(0);
            v208 = Color.init(_platformColor:definition:)();
          }
        }

        v214 = v319;
        AttributedString.Runs.Run.range.getter();
        outlined copy of Text.LineStyle?(v209, v208);
        lazy protocol witness table accessor for type AttributedString.Index and conformance AttributedString.Index(&lazy protocol witness table cache variable for type Range<AttributedString.Index> and conformance Range<A>, type metadata accessor for Range<AttributedString.Index>, MEMORY[0x1E69E66D8]);
        v313 = v208;
        v215 = AttributedString.subscript.modify();
        v333 = v209;
        v334 = v208;
        AttributedSubstring.subscript.setter();
        v215(&v335, 0);
        outlined destroy of AttributedString.AdaptiveImageGlyph?(v214, type metadata accessor for Range<AttributedString.Index>);
        AttributedString.Runs.Run.range.getter();
        v333 = 0;
        LOBYTE(v334) = 1;
        v216 = AttributedString.subscript.modify();
        AttributedSubstring.subscript.setter();
        v216(&v335, 0);
        outlined destroy of AttributedString.AdaptiveImageGlyph?(v214, type metadata accessor for Range<AttributedString.Index>);
        AttributedString.Runs.Run.range.getter();
        v333 = 0;
        v104 = v322;
        v217 = AttributedString.subscript.modify();
        AttributedSubstring.subscript.setter();
        v217(&v335, 0);
        outlined destroy of AttributedString.AdaptiveImageGlyph?(v214, type metadata accessor for Range<AttributedString.Index>);
        outlined consume of Text.LineStyle?(v209, v313);
        v123 = v323;
      }

      else
      {
        outlined consume of Text.LineStyle?(v335, v336);
        v104 = v201;
      }
    }

    v218 = v297;
    AttributedString.Runs.Run.attributes.getter();
    swift_getKeyPath();
    v219 = v306;
    AttributeContainer.subscript.getter();

    (v332)(v218, v123);
    swift_getKeyPath();
    v220 = lazy protocol witness table accessor for type AttributeScopes.UIKitAttributes.UnderlineStyleAttribute and conformance AttributeScopes.UIKitAttributes.UnderlineStyleAttribute();
    v221 = v331;
    ScopedAttributeContainer.subscript.getter();

    (v327)(v219, v221);
    if ((v336 & 1) == 0)
    {
      v313 = v220;
      v222 = v335;
      v223 = v270;
      AttributedString.Runs.Run.attributes.getter();
      swift_getKeyPath();
      type metadata accessor for AttributeScopes.SwiftUIAttributes();
      lazy protocol witness table accessor for type AttributedString.Index and conformance AttributedString.Index(&lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes and conformance AttributeScopes.SwiftUIAttributes, MEMORY[0x1E697D930], MEMORY[0x1E697D928]);
      v224 = v273;
      AttributeContainer.subscript.getter();

      (v332)(v223, v123);
      swift_getKeyPath();
      v225 = lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.UnderlineStyleAttribute and conformance AttributeScopes.SwiftUIAttributes.UnderlineStyleAttribute();
      v226 = v325;
      ScopedAttributeContainer.subscript.getter();

      (*v324)(v224, v226);
      if (v336 == 1)
      {
        v266 = v225;
        v227 = (~v222 & 9) == 0 || v222 == 0;
        v228 = (v222 >> 1) & 1;
        if (v227)
        {
          LODWORD(v228) = 1;
        }

        v229 = v228 | (v222 >> 15) & 1;
        if (v229)
        {
          v230 = 0;
        }

        else
        {
          v230 = v222;
        }

        v231 = v260;
        AttributedString.Runs.Run.attributes.getter();
        swift_getKeyPath();
        v232 = v262;
        AttributeContainer.subscript.getter();

        (v332)(v231, v123);
        swift_getKeyPath();
        v233 = lazy protocol witness table accessor for type AttributeScopes.UIKitAttributes.UnderlineColorAttribute and conformance AttributeScopes.UIKitAttributes.UnderlineColorAttribute();
        v234 = v331;
        v265 = v233;
        ScopedAttributeContainer.subscript.getter();

        (v327)(v232, v234);
        if (v335)
        {
          if (v229)
          {

            v229 = 1;
          }

          else
          {
            type metadata accessor for UIKitPlatformColorDefinition(0);
            v229 = Color.init(_platformColor:definition:)();
          }
        }

        v235 = v319;
        AttributedString.Runs.Run.range.getter();
        outlined copy of Text.LineStyle?(v230, v229);
        lazy protocol witness table accessor for type AttributedString.Index and conformance AttributedString.Index(&lazy protocol witness table cache variable for type Range<AttributedString.Index> and conformance Range<A>, type metadata accessor for Range<AttributedString.Index>, MEMORY[0x1E69E66D8]);
        v236 = AttributedString.subscript.modify();
        v333 = v230;
        v334 = v229;
        AttributedSubstring.subscript.setter();
        v236(&v335, 0);
        outlined destroy of AttributedString.AdaptiveImageGlyph?(v235, type metadata accessor for Range<AttributedString.Index>);
        AttributedString.Runs.Run.range.getter();
        v333 = 0;
        LOBYTE(v334) = 1;
        v237 = AttributedString.subscript.modify();
        AttributedSubstring.subscript.setter();
        v237(&v335, 0);
        outlined destroy of AttributedString.AdaptiveImageGlyph?(v235, type metadata accessor for Range<AttributedString.Index>);
        AttributedString.Runs.Run.range.getter();
        v333 = 0;
        v104 = v322;
        v238 = AttributedString.subscript.modify();
        AttributedSubstring.subscript.setter();
        v238(&v335, 0);
        outlined destroy of AttributedString.AdaptiveImageGlyph?(v235, type metadata accessor for Range<AttributedString.Index>);
        outlined consume of Text.LineStyle?(v230, v229);
        v123 = v323;
      }

      else
      {
        outlined consume of Text.LineStyle?(v335, v336);
        v104 = v322;
      }
    }

    v239 = v298;
    AttributedString.Runs.Run.attributes.getter();
    swift_getKeyPath();
    v240 = v307;
    AttributeContainer.subscript.getter();

    v241 = v332;
    (v332)(v239, v123);
    swift_getKeyPath();
    v242 = lazy protocol witness table accessor for type AttributeScopes.UIKitAttributes.AdaptiveImageGlyphAttribute and conformance AttributeScopes.UIKitAttributes.AdaptiveImageGlyphAttribute();
    v243 = v308;
    v244 = v331;
    v329 = v242;
    ScopedAttributeContainer.subscript.getter();
    v245 = v243;

    (v327)(v240, v244);
    v246 = v123;
    v247 = *v283;
    v248 = v318;
    if ((*v283)(v245, 1, v318) == 1)
    {
      (*v282)(v104, v317);
      outlined destroy of AttributedString.AdaptiveImageGlyph?(v245, type metadata accessor for AttributedString.AdaptiveImageGlyph?);
    }

    else
    {
      (*v268)(v314, v245, v248);
      v249 = v271;
      AttributedString.Runs.Run.attributes.getter();
      swift_getKeyPath();
      type metadata accessor for AttributeScopes.SwiftUIAttributes();
      lazy protocol witness table accessor for type AttributedString.Index and conformance AttributedString.Index(&lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes and conformance AttributeScopes.SwiftUIAttributes, MEMORY[0x1E697D930], MEMORY[0x1E697D928]);
      v250 = v274;
      AttributeContainer.subscript.getter();

      v241(v249, v246);
      swift_getKeyPath();
      lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.AdaptiveImageGlyphAttribute and conformance AttributeScopes.SwiftUIAttributes.AdaptiveImageGlyphAttribute();
      v251 = v275;
      v252 = v325;
      ScopedAttributeContainer.subscript.getter();
      v253 = v318;

      (*v324)(v250, v252);
      v254 = v247(v251, 1, v253);
      outlined destroy of AttributedString.AdaptiveImageGlyph?(v251, type metadata accessor for AttributedString.AdaptiveImageGlyph?);
      if (v254 == 1)
      {
        v106 = v319;
        AttributedString.Runs.Run.range.getter();
        v107 = v263;
        (*v258)(v263, v314, v253);
        v332 = *v257;
        (v332)(v107, 0, 1, v253);
        lazy protocol witness table accessor for type AttributedString.Index and conformance AttributedString.Index(&lazy protocol witness table cache variable for type Range<AttributedString.Index> and conformance Range<A>, type metadata accessor for Range<AttributedString.Index>, MEMORY[0x1E69E66D8]);
        v108 = AttributedString.subscript.modify();
        outlined init with copy of AttributedString.AdaptiveImageGlyph?(v107, v264, v109);
        v104 = v322;
        AttributedSubstring.subscript.setter();
        outlined destroy of AttributedString.AdaptiveImageGlyph?(v107, type metadata accessor for AttributedString.AdaptiveImageGlyph?);
        v108(&v335, 0);
        outlined destroy of AttributedString.AdaptiveImageGlyph?(v106, type metadata accessor for Range<AttributedString.Index>);
        AttributedString.Runs.Run.range.getter();
        (v332)(v107, 1, 1, v318);
        v110 = AttributedString.subscript.modify();
        AttributedSubstring.subscript.setter();
        v110(&v335, 0);
        v253 = v318;
        outlined destroy of AttributedString.AdaptiveImageGlyph?(v106, type metadata accessor for Range<AttributedString.Index>);
      }

      (*v267)(v314, v253);
      (*v282)(v104, v317);
    }
  }

  return outlined destroy of AttributedString.AdaptiveImageGlyph?(v112, type metadata accessor for IndexingIterator<AttributedString.Runs>);
}

uint64_t sub_18BE078A4@<X0>(uint64_t *a1@<X8>)
{
  AttributeScopes.uiKit.getter();
  result = type metadata accessor for AttributeScopes.UIKitAttributes();
  *a1 = result;
  return result;
}

uint64_t sub_18BE079D0@<X0>(uint64_t *a1@<X8>)
{
  AttributeScopes.swiftUI.getter();
  result = type metadata accessor for AttributeScopes.SwiftUIAttributes();
  *a1 = result;
  return result;
}

void type metadata accessor for AttributedString.AdaptiveImageGlyph?(uint64_t a1, double a2)
{
  if (!lazy cache variable for type metadata for AttributedString.AdaptiveImageGlyph?)
  {
    type metadata accessor for AttributedString.AdaptiveImageGlyph();
    v2 = type metadata accessor for Optional();
    if (!v3)
    {
      atomic_store(v2, &lazy cache variable for type metadata for AttributedString.AdaptiveImageGlyph?);
    }
  }
}

void type metadata accessor for Range<AttributedString.Index>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Range<AttributedString.Index>)
  {
    type metadata accessor for AttributedString.Index();
    lazy protocol witness table accessor for type AttributedString.Index and conformance AttributedString.Index(&lazy protocol witness table cache variable for type AttributedString.Index and conformance AttributedString.Index, MEMORY[0x1E69687E8], MEMORY[0x1E69687F0]);
    v1 = type metadata accessor for Range();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Range<AttributedString.Index>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type AttributedString.Index and conformance AttributedString.Index(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t _s10Foundation16AttributedStringV5IndexVAESLAAWlTm_0(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t _s10Foundation16AttributedStringV5IndexVAESLAAWlTm_1(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t _s10Foundation16AttributedStringV5IndexVAESLAAWlTm_2(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t _s10Foundation16AttributedStringV5IndexVAESLAAWlTm_3(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t _s10Foundation16AttributedStringV5IndexVAESLAAWlTm_4(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t _s10Foundation16AttributedStringV5IndexVAESLAAWlTm_5(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t _s10Foundation16AttributedStringV5IndexVAESLAAWlTm_6(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t _s10Foundation16AttributedStringV5IndexVAESLAAWlTm_7(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

void type metadata accessor for ScopedAttributeContainer<AttributeScopes.SwiftUIAttributes>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ScopedAttributeContainer<AttributeScopes.SwiftUIAttributes>)
  {
    type metadata accessor for AttributeScopes.SwiftUIAttributes();
    lazy protocol witness table accessor for type AttributedString.Index and conformance AttributedString.Index(&lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes and conformance AttributeScopes.SwiftUIAttributes, MEMORY[0x1E697D930], MEMORY[0x1E697D928]);
    v1 = type metadata accessor for ScopedAttributeContainer();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ScopedAttributeContainer<AttributeScopes.SwiftUIAttributes>);
    }
  }
}

void type metadata accessor for ScopedAttributeContainer<AttributeScopes.UIKitAttributes>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ScopedAttributeContainer<AttributeScopes.UIKitAttributes>)
  {
    type metadata accessor for AttributeScopes.UIKitAttributes();
    lazy protocol witness table accessor for type AttributedString.Index and conformance AttributedString.Index(&lazy protocol witness table cache variable for type AttributeScopes.UIKitAttributes and conformance AttributeScopes.UIKitAttributes, MEMORY[0x1E69DBE88], MEMORY[0x1E69DBE80]);
    v1 = type metadata accessor for ScopedAttributeContainer();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ScopedAttributeContainer<AttributeScopes.UIKitAttributes>);
    }
  }
}

void type metadata accessor for IndexingIterator<AttributedString.Runs>(uint64_t a1, double a2)
{
  if (!lazy cache variable for type metadata for IndexingIterator<AttributedString.Runs>)
  {
    type metadata accessor for AttributedString.Runs();
    lazy protocol witness table accessor for type AttributedString.Index and conformance AttributedString.Index(&lazy protocol witness table cache variable for type AttributedString.Runs and conformance AttributedString.Runs, MEMORY[0x1E69687C8], MEMORY[0x1E69687E0]);
    v2 = type metadata accessor for IndexingIterator();
    if (!v3)
    {
      atomic_store(v2, &lazy cache variable for type metadata for IndexingIterator<AttributedString.Runs>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type AttributeScopes.UIKitAttributes.BackgroundColorAttribute and conformance AttributeScopes.UIKitAttributes.BackgroundColorAttribute()
{
  result = lazy protocol witness table cache variable for type AttributeScopes.UIKitAttributes.BackgroundColorAttribute and conformance AttributeScopes.UIKitAttributes.BackgroundColorAttribute;
  if (!lazy protocol witness table cache variable for type AttributeScopes.UIKitAttributes.BackgroundColorAttribute and conformance AttributeScopes.UIKitAttributes.BackgroundColorAttribute)
  {
    result = swift_getWitnessTable(MEMORY[0x1E69DBD98], MEMORY[0x1E69DBDA0], v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AttributeScopes.UIKitAttributes.BackgroundColorAttribute and conformance AttributeScopes.UIKitAttributes.BackgroundColorAttribute);
  }

  return result;
}

uint64_t outlined destroy of AttributedString.AdaptiveImageGlyph?(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s10Foundation16AttributedStringV8CoreTextE18AdaptiveImageGlyphVSgWOhTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  _ss23_ContiguousArrayStorageCy10Foundation19AttributedStringKey_pXpGMaTm_0(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t lazy protocol witness table accessor for type AttributeScopes.UIKitAttributes.BaselineOffsetAttribute and conformance AttributeScopes.UIKitAttributes.BaselineOffsetAttribute()
{
  result = lazy protocol witness table cache variable for type AttributeScopes.UIKitAttributes.BaselineOffsetAttribute and conformance AttributeScopes.UIKitAttributes.BaselineOffsetAttribute;
  if (!lazy protocol witness table cache variable for type AttributeScopes.UIKitAttributes.BaselineOffsetAttribute and conformance AttributeScopes.UIKitAttributes.BaselineOffsetAttribute)
  {
    result = swift_getWitnessTable(MEMORY[0x1E69DBD58], MEMORY[0x1E69DBD60], v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AttributeScopes.UIKitAttributes.BaselineOffsetAttribute and conformance AttributeScopes.UIKitAttributes.BaselineOffsetAttribute);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AttributeScopes.UIKitAttributes.AdaptiveImageGlyphAttribute and conformance AttributeScopes.UIKitAttributes.AdaptiveImageGlyphAttribute()
{
  result = lazy protocol witness table cache variable for type AttributeScopes.UIKitAttributes.AdaptiveImageGlyphAttribute and conformance AttributeScopes.UIKitAttributes.AdaptiveImageGlyphAttribute;
  if (!lazy protocol witness table cache variable for type AttributeScopes.UIKitAttributes.AdaptiveImageGlyphAttribute and conformance AttributeScopes.UIKitAttributes.AdaptiveImageGlyphAttribute)
  {
    result = swift_getWitnessTable(MEMORY[0x1E69DBDB8], MEMORY[0x1E69DBDC0], v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AttributeScopes.UIKitAttributes.AdaptiveImageGlyphAttribute and conformance AttributeScopes.UIKitAttributes.AdaptiveImageGlyphAttribute);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AttributeScopes.UIKitAttributes.TrackingAttribute and conformance AttributeScopes.UIKitAttributes.TrackingAttribute()
{
  result = lazy protocol witness table cache variable for type AttributeScopes.UIKitAttributes.TrackingAttribute and conformance AttributeScopes.UIKitAttributes.TrackingAttribute;
  if (!lazy protocol witness table cache variable for type AttributeScopes.UIKitAttributes.TrackingAttribute and conformance AttributeScopes.UIKitAttributes.TrackingAttribute)
  {
    result = swift_getWitnessTable(MEMORY[0x1E69DBE08], MEMORY[0x1E69DBE10], v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AttributeScopes.UIKitAttributes.TrackingAttribute and conformance AttributeScopes.UIKitAttributes.TrackingAttribute);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AttributeScopes.UIKitAttributes.FontAttribute and conformance AttributeScopes.UIKitAttributes.FontAttribute()
{
  result = lazy protocol witness table cache variable for type AttributeScopes.UIKitAttributes.FontAttribute and conformance AttributeScopes.UIKitAttributes.FontAttribute;
  if (!lazy protocol witness table cache variable for type AttributeScopes.UIKitAttributes.FontAttribute and conformance AttributeScopes.UIKitAttributes.FontAttribute)
  {
    result = swift_getWitnessTable(MEMORY[0x1E69DBDE8], MEMORY[0x1E69DBDF0], v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AttributeScopes.UIKitAttributes.FontAttribute and conformance AttributeScopes.UIKitAttributes.FontAttribute);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AttributeScopes.UIKitAttributes.KernAttribute and conformance AttributeScopes.UIKitAttributes.KernAttribute()
{
  result = lazy protocol witness table cache variable for type AttributeScopes.UIKitAttributes.KernAttribute and conformance AttributeScopes.UIKitAttributes.KernAttribute;
  if (!lazy protocol witness table cache variable for type AttributeScopes.UIKitAttributes.KernAttribute and conformance AttributeScopes.UIKitAttributes.KernAttribute)
  {
    result = swift_getWitnessTable(MEMORY[0x1E69DBDF8], MEMORY[0x1E69DBE00], v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AttributeScopes.UIKitAttributes.KernAttribute and conformance AttributeScopes.UIKitAttributes.KernAttribute);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AttributeScopes.UIKitAttributes.ForegroundColorAttribute and conformance AttributeScopes.UIKitAttributes.ForegroundColorAttribute()
{
  result = lazy protocol witness table cache variable for type AttributeScopes.UIKitAttributes.ForegroundColorAttribute and conformance AttributeScopes.UIKitAttributes.ForegroundColorAttribute;
  if (!lazy protocol witness table cache variable for type AttributeScopes.UIKitAttributes.ForegroundColorAttribute and conformance AttributeScopes.UIKitAttributes.ForegroundColorAttribute)
  {
    result = swift_getWitnessTable(MEMORY[0x1E69DBDA8], MEMORY[0x1E69DBDB0], v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AttributeScopes.UIKitAttributes.ForegroundColorAttribute and conformance AttributeScopes.UIKitAttributes.ForegroundColorAttribute);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AttributeScopes.UIKitAttributes.StrikethroughStyleAttribute and conformance AttributeScopes.UIKitAttributes.StrikethroughStyleAttribute()
{
  result = lazy protocol witness table cache variable for type AttributeScopes.UIKitAttributes.StrikethroughStyleAttribute and conformance AttributeScopes.UIKitAttributes.StrikethroughStyleAttribute;
  if (!lazy protocol witness table cache variable for type AttributeScopes.UIKitAttributes.StrikethroughStyleAttribute and conformance AttributeScopes.UIKitAttributes.StrikethroughStyleAttribute)
  {
    result = swift_getWitnessTable(MEMORY[0x1E69DBDD8], MEMORY[0x1E69DBDE0], v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AttributeScopes.UIKitAttributes.StrikethroughStyleAttribute and conformance AttributeScopes.UIKitAttributes.StrikethroughStyleAttribute);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AttributeScopes.UIKitAttributes.UnderlineStyleAttribute and conformance AttributeScopes.UIKitAttributes.UnderlineStyleAttribute()
{
  result = lazy protocol witness table cache variable for type AttributeScopes.UIKitAttributes.UnderlineStyleAttribute and conformance AttributeScopes.UIKitAttributes.UnderlineStyleAttribute;
  if (!lazy protocol witness table cache variable for type AttributeScopes.UIKitAttributes.UnderlineStyleAttribute and conformance AttributeScopes.UIKitAttributes.UnderlineStyleAttribute)
  {
    result = swift_getWitnessTable(MEMORY[0x1E69DBD88], MEMORY[0x1E69DBD90], v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AttributeScopes.UIKitAttributes.UnderlineStyleAttribute and conformance AttributeScopes.UIKitAttributes.UnderlineStyleAttribute);
  }

  return result;
}

uint64_t get_witness_table_7SwiftUI4ViewRzAaBRd__r__lAA15ModifiedContentVyxAA35AccessibilityRepresentationModifier33_AAF5C5EDB558810623EAFD84FD4E7390LLVyqd__GGAaBHPxAaBHD1__AhA0cH0HPyHCHCTm(void *a1, double (*a2)(uint64_t, void, void), uint64_t a3)
{
  v4 = a1[2];
  a2(255, a1[1], a1[3]);
  v5 = type metadata accessor for ModifiedContent();
  v7[0] = v4;
  v7[1] = a3;
  return swift_getWitnessTable(MEMORY[0x1E697E858], v5, v7);
}

void static AccessibilityRepresentationModifier._makeView(modifier:inputs:body:)(int *a1@<X0>, __int128 *a2@<X1>, void (*a3)(uint64_t *__return_ptr)@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, void *a6@<X8>)
{
  v64 = a5;
  v120 = *MEMORY[0x1E69E9840];
  v8 = a2[3];
  v9 = a2[1];
  v116 = a2[2];
  v117 = v8;
  v10 = a2[3];
  v118 = a2[4];
  v11 = a2[1];
  v114 = *a2;
  v115 = v11;
  v84 = v116;
  v85 = v10;
  v86 = a2[4];
  v12 = *a1;
  v119 = *(a2 + 20);
  LODWORD(v87) = *(a2 + 20);
  v82 = v114;
  v83 = v9;
  a3(&v68);
  v13 = v117;
  v14 = DWORD2(v117);
  *&v82 = v117;
  DWORD2(v82) = DWORD2(v117);
  if ((PreferencesInputs.contains<A>(_:includeHostPreferences:)() & 1) == 0)
  {
    *a6 = v68;
    a6[1] = v69;
    return;
  }

  LODWORD(v61) = v12;
  v15 = BYTE4(v116);
  v16 = MEMORY[0x1E698D3F8];
  v59 = a6;
  v62 = a4;
  v60 = v14;
  if ((BYTE4(v116) & 0x20) == 0)
  {
    v57 = 0;
    v58 = 0;
    v55 = 0;
    v56 = 0;
    v112 = 0u;
    v113 = 0u;
    v110 = 0u;
    v111 = 0u;
    goto LABEL_16;
  }

  lazy protocol witness table accessor for type AccessibilityCapturesViewResponders and conformance AccessibilityCapturesViewResponders();
  PropertyList.subscript.getter();
  if (v82 == 1)
  {
    *&v82 = v68;
    DWORD2(v82) = v69;
    v17 = PreferencesOutputs.subscript.getter();
    v18 = AGSubgraphGetCurrent();
    if (!v18)
    {
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    v19 = v18;
    v20 = *v16;
    if ((v17 & 0x100000000) != 0)
    {
      v21 = v20;
    }

    else
    {
      v21 = v17;
    }

    LOBYTE(v82) = 1;
    v57 = 1;
    v58 = v21 | (v20 << 32);
    v56 = 255;
    if ((v15 & 0x40) != 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v57 = 0;
    v58 = 0;
    v56 = 0;
    v19 = 0;
    if ((v15 & 0x40) != 0)
    {
LABEL_11:
      v84 = v116;
      v85 = v117;
      v86 = v118;
      LODWORD(v87) = v119;
      v82 = v114;
      v83 = v115;
      v22 = _ViewInputs.position.getter();
      UniqueID.init()();
      v23 = v70;
      v24 = AGSubgraphGetCurrent();
      if (!v24)
      {
LABEL_32:
        __break(1u);
        return;
      }

      v25 = *v16;
      LOBYTE(v101) = 1;
      v26 = 1;
      v27 = DWORD2(v118) | (v22 << 32);
      v28 = HIDWORD(v117) | (v25 << 32);
      v29 = 255;
      goto LABEL_15;
    }
  }

  v23 = 0;
  v24 = 0;
  v26 = 0;
  v29 = 0;
  v27 = 0;
  v28 = 0;
LABEL_15:
  v55 = v19;
  *&v110 = v27;
  *(&v110 + 1) = v28;
  *&v111 = 0;
  *(&v111 + 1) = v29;
  v112 = v23;
  *&v113 = v26;
  *(&v113 + 1) = v24;
LABEL_16:
  v30 = v68;
  v31 = v69;
  *&v82 = v68;
  DWORD2(v82) = v69;
  v54 = PreferencesOutputs.subscript.getter();
  *&v82 = v30;
  DWORD2(v82) = v31;
  v63 = PreferencesOutputs.subscript.getter();
  v82 = MEMORY[0x1E69E7CC0];
  type metadata accessor for GraphHost();
  MEMORY[0x18D00B7D0]();
  LOBYTE(v70) = 0;
  GraphHost.intern<A>(_:for:id:)();

  IndirectAttribute2 = AGGraphCreateIndirectAttribute2();
  LOBYTE(v82) = 0;
  PreferencesOutputs.subscript.setter();
  *&v82 = v13;
  DWORD2(v82) = v60;
  v34 = PreferencesInputs.contains<A>(_:includeHostPreferences:)();
  v35 = 0;
  v36 = v64;
  v37 = v62;
  if (v34)
  {
    if ((v63 & 0x100000000) != 0)
    {
      v38 = PreferenceValues.init()();
      *&v70 = v82;
      MEMORY[0x18D00B7D0](v38);
      LOBYTE(v101) = 0;
      GraphHost.intern<A>(_:for:id:)();
    }

    v35 = AGGraphCreateIndirectAttribute2();
    LOBYTE(v82) = 0;
    PreferencesOutputs.subscript.setter();
  }

  v67 = v61;
  type metadata accessor for AccessibilityRepresentationModifier(255, v62, v64, v33);
  type metadata accessor for _GraphValue();
  _GraphValue.value.getter();
  if (*(*(v62 - 8) + 64))
  {
    closure #1 in static AccessibilityRepresentationModifier._makeView(modifier:inputs:body:)(1, v62, v64, v39);
  }

  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  v107 = v114;
  v108 = v115;
  v109 = v116;
  v41 = _GraphInputs.accessibilityEnabled.getter();
  v103 = v116;
  v104 = v117;
  v105 = v118;
  v106 = v119;
  v101 = v114;
  v102 = v115;
  v97 = v110;
  v98 = v111;
  v99 = v112;
  v100 = v113;
  v42 = AGSubgraphGetCurrent();
  if (!v42)
  {
    __break(1u);
    goto LABEL_31;
  }

  v61 = &v54;
  v43 = *MEMORY[0x1E698D3F8];
  v44 = v34 ^ 1;
  v45 = v54;
  if ((v54 & 0x100000000) != 0)
  {
    v45 = *MEMORY[0x1E698D3F8];
  }

  if ((v63 & 0x100000000) == 0)
  {
    v43 = v63;
  }

  v73 = v103;
  v74 = v104;
  v75 = v105;
  v71 = v101;
  v72 = v102;
  v66 = 0;
  v65 = v44 & 1;
  *(&v81[3] + 8) = v100;
  *(&v81[2] + 8) = v99;
  *(&v81[1] + 8) = v98;
  *(v81 + 8) = v97;
  *&v70 = __PAIR64__(v41, OffsetAttribute2);
  *(&v70 + 1) = __PAIR64__(v45, v43);
  *&v76 = __PAIR64__(IndirectAttribute2, v106);
  BYTE8(v76) = 0;
  HIDWORD(v76) = v35;
  LOBYTE(v77) = v44 & 1;
  *(&v77 + 1) = v42;
  v78 = v58;
  v79 = v56;
  *&v80 = 0;
  LODWORD(v63) = v35;
  v46 = v55;
  *(&v80 + 1) = v57;
  *&v81[0] = v55;
  BYTE8(v81[4]) = 0;
  MEMORY[0x1EEE9AC00](v42);
  v48 = type metadata accessor for AccessibilityProxyTransform(0, v37, v36, v47);
  v53[2] = v48;
  v53[3] = swift_getWitnessTable(protocol conformance descriptor for AccessibilityProxyTransform<A>, v48);
  outlined init with copy of _ViewInputs(&v114, &v82);
  v49 = v46;
  _s7SwiftUI28AccessibilityGeometryUpdaterVSgWOcTm_0(&v110, &v82, &lazy cache variable for type metadata for AccessibilityGeometryUpdater?, &type metadata for AccessibilityGeometryUpdater);
  _s7SwiftUI7BindingVySbGMaTm_11(0, &lazy cache variable for type metadata for Attribute<()>, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E698D388]);
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v70, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_7, v53, v48, MEMORY[0x1E69E73E0], v50, MEMORY[0x1E69E7410], v51);
  v94 = v81[1];
  v95 = v81[2];
  v96[0] = v81[3];
  *(v96 + 9) = *(&v81[3] + 9);
  v90 = v78;
  v91 = v79;
  v92 = v80;
  v93 = v81[0];
  v86 = v74;
  v87 = v75;
  v88 = v76;
  v89 = v77;
  v82 = v70;
  v83 = v71;
  v84 = v72;
  v85 = v73;
  (*(*(v48 - 8) + 8))(&v82, v48);
  AGGraphSetIndirectDependency();
  if (v34)
  {
    AGGraphSetIndirectDependency();
  }

  _s7SwiftUI28AccessibilityGeometryUpdaterVSgWOhTm_0(&v110, &lazy cache variable for type metadata for AccessibilityGeometryUpdater?, &type metadata for AccessibilityGeometryUpdater);

  v52 = v59;
  *v59 = v68;
  v52[1] = v69;
}

uint64_t closure #1 in static AccessibilityRepresentationModifier._makeView(modifier:inputs:body:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[2] = type metadata accessor for AccessibilityRepresentationModifier(0, a2, a3, a4);
  v9[3] = a2;
  v6 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, partial apply for closure #1 in static PointerOffset.of(_:), v9, a2, MEMORY[0x1E69E73E0], v6, MEMORY[0x1E69E7410], v7);
  return v9[5];
}

uint64_t outlined init with copy of AccessibilityGeometryUpdater?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

uint64_t _s7SwiftUI28AccessibilityGeometryUpdaterVSgWOcTm_0(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  _s7SwiftUI7BindingVySbGMaTm_11(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t initializeWithCopy for AccessibilityProxyTransform(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  v3 = *(a2 + 64);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = v3;
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 100) = *(a2 + 100);
  *(a1 + 105) = *(a2 + 105);
  v4 = *(a2 + 120);
  *(a1 + 120) = v4;
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 168) = *(a2 + 168);
  v5 = *(a2 + 160);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 160) = v5;
  v6 = *(a2 + 176);
  *(a1 + 176) = v6;
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 200) = *(a2 + 200);
  *(a1 + 232) = *(a2 + 232);
  v7 = *(a2 + 224);
  *(a1 + 216) = *(a2 + 216);
  *(a1 + 224) = v7;
  v8 = *(a2 + 240);
  *(a1 + 240) = v8;
  *(a1 + 248) = *(a2 + 248);

  v9 = v4;
  v10 = v6;
  v11 = v8;
  return a1;
}

void destroy for AccessibilityProxyTransform(uint64_t a1)
{

  v2 = *(a1 + 240);
}

unint64_t lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.FontAttribute and conformance AttributeScopes.SwiftUIAttributes.FontAttribute()
{
  result = lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes.FontAttribute and conformance AttributeScopes.SwiftUIAttributes.FontAttribute;
  if (!lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes.FontAttribute and conformance AttributeScopes.SwiftUIAttributes.FontAttribute)
  {
    result = swift_getWitnessTable(MEMORY[0x1E697D880], MEMORY[0x1E697D898], v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes.FontAttribute and conformance AttributeScopes.SwiftUIAttributes.FontAttribute);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.ForegroundColorAttribute and conformance AttributeScopes.SwiftUIAttributes.ForegroundColorAttribute()
{
  result = lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes.ForegroundColorAttribute and conformance AttributeScopes.SwiftUIAttributes.ForegroundColorAttribute;
  if (!lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes.ForegroundColorAttribute and conformance AttributeScopes.SwiftUIAttributes.ForegroundColorAttribute)
  {
    result = swift_getWitnessTable(MEMORY[0x1E697D840], MEMORY[0x1E697D848], v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes.ForegroundColorAttribute and conformance AttributeScopes.SwiftUIAttributes.ForegroundColorAttribute);
  }

  return result;
}

uint64_t ForEach.makeID(index:offset:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);

  ForEach.data.getter();
  v9 = v4;
  v10 = *(a3 + 24);
  v11 = *(a3 + 40);
  type metadata accessor for ForEach.IDGenerator();
  ForEach.IDGenerator.makeID(data:index:offset:)();
  (*(v5 + 8))(v7, v4);
}

uint64_t static AccessibilityChildrenModifier._makeView(modifier:inputs:body:)@<X0>(int *a1@<X0>, __int128 *a2@<X1>, void (*a3)(uint64_t *__return_ptr)@<X2>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v51 = *MEMORY[0x1E69E9840];
  v11 = a2[3];
  v12 = a2[1];
  v47 = a2[2];
  v48 = v11;
  v13 = a2[3];
  v49 = a2[4];
  v14 = a2[1];
  v45 = *a2;
  v46 = v14;
  v41 = v47;
  v42 = v13;
  v43 = a2[4];
  v15 = *a1;
  v50 = *(a2 + 20);
  v44 = *(a2 + 20);
  v39 = v45;
  v40 = v12;
  a3(&v34);
  v37 = *(a2 + 6);
  v38 = *(a2 + 14);
  *&v39 = *(a2 + 6);
  DWORD2(v39) = *(a2 + 14);
  result = PreferencesInputs.contains<A>(_:includeHostPreferences:)();
  v17 = v35;
  if (result)
  {
    *&v39 = v34;
    DWORD2(v39) = v35;
    v18 = PreferencesOutputs.subscript.getter();

    LODWORD(v39) = v15;
    type metadata accessor for AccessibilityChildrenModifier(255, a5, a6, v19);
    type metadata accessor for _GraphValue();
    _GraphValue.value.getter();
    if (*(*(type metadata accessor for AccessibilityRepresentationModifier(0, a5, a6, v20) - 8) + 64))
    {
      closure #1 in static AccessibilityChildrenModifier._makeView(modifier:inputs:body:)(1, a5, a6, v21);
    }

    AGGraphCreateOffsetAttribute2();
    _GraphValue.init(_:)();
    v41 = v47;
    v42 = v48;
    v43 = v49;
    v44 = v50;
    v39 = v45;
    v40 = v46;
    static ViewModifier.makeDebuggableView(modifier:inputs:body:)();
    *a7 = v31;
    *(a7 + 8) = v32;
    *(a7 + 12) = v33;
    if (one-time initialization token for contain != -1)
    {
      swift_once();
    }

    *&v39 = static AccessibilityChildBehavior.contain;

    v23 = Attribute.init<A>(body:value:flags:update:)();

    *&v39 = v37;
    DWORD2(v39) = v38;
    v24 = PreferencesInputs.contains<A>(_:includeHostPreferences:)();
    if (v24)
    {
      _s7SwiftUI25AccessibilityViewModifierPAAE23makePropertiesTransform33_71F62EDC1DAE3BBC7A74521E45BA5A668modifier6inputs7outputs15includeGeometry010resolvableE012scrapeableID14AttributeGraph0Y0VyAA0C8NodeListVGSo11AGAttributea_AA01_D6InputsVAA01_D7OutputsVSbAA010ResolvableE0AELLVSgAA010ScrapeableX0VtFZAA0c9ContainerE0V_Tt5B5(v23, &v45, v31, v32 | (v33 << 32), 1, 0, 0, 0, 0, 0);
    }

    LOBYTE(v39) = (v24 & 1) == 0;
    PreferencesOutputs.subscript.setter();
    v25 = *(a7 + 8);
    *&v39 = *a7;
    DWORD2(v39) = v25;
    v26 = PreferencesOutputs.subscript.getter();
    v28 = *MEMORY[0x1E698D3F8];
    if ((v26 & 0x100000000) != 0)
    {
      v29 = *MEMORY[0x1E698D3F8];
    }

    else
    {
      v29 = v26;
    }

    if ((v18 & 0x100000000) == 0)
    {
      v28 = v18;
    }

    *&v39 = __PAIR64__(v28, v29);
    v30 = type metadata accessor for AccessibilityChildrenModifier.BridgedAttachment(0, a5, a6, v27);
    swift_getWitnessTable(protocol conformance descriptor for AccessibilityChildrenModifier<A>.BridgedAttachment, v30);
    _GraphValue.init<A>(_:)();
    _s7SwiftUI25AccessibilityViewModifierPAAE04makeC19PropertiesTransform8modifier6inputs7outputs14AttributeGraph0L0VyAA0C8NodeListVGSgAA01_M5ValueVyxG_AA01_D6InputsVAA01_D7OutputsVtFZAA0c10AttachmentE0V_Tt2B5(v31, &v45, *a7, *(a7 + 8));
    return PreferencesOutputs.subscript.setter();
  }

  else
  {
    v22 = v36;
    *a7 = v34;
    *(a7 + 8) = v17;
    *(a7 + 12) = v22;
  }

  return result;
}

uint64_t static ForEach.makeWithKeyPath(_:id:content:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = MEMORY[0x1EEE9AC00](a1);
  (*(v11 + 16))(v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
  v13[1] = a2;

  return ForEach.init(_:idGenerator:content:)();
}

uint64_t View.accessibilityChildren<A>(children:)(void (*a1)(double), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v19 = a5;
  v8 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for AccessibilityChildrenModifier(0, v11, v12, v11);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v19 - v16;
  a1(v15);
  (*(v8 + 32))(v17, v10, a4);
  MEMORY[0x18D00A570](v17, a3, v13, v19);
  return (*(v14 + 8))(v17, v13);
}

id protocol witness for static UITraitBridgedEnvironmentKey.read(from:) in conformance EnvironmentValues.MaxAllowedDynamicRangeKey@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  result = [a1 _headroomUsage];
  if (result)
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance AccessibilityChildrenModifier<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for AccessibilityChildrenModifier<A>, a5);

  return MEMORY[0x1EEDE0720](a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t closure #1 in static AccessibilityChildrenModifier._makeView(modifier:inputs:body:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[2] = type metadata accessor for AccessibilityChildrenModifier(0, a2, a3, a4);
  v12 = type metadata accessor for AccessibilityRepresentationModifier(0, a2, a3, v7);
  v8 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, closure #1 in static PointerOffset.of(_:)partial apply, v11, v12, MEMORY[0x1E69E73E0], v8, MEMORY[0x1E69E7410], v9);
  return v13;
}

uint64_t ImageRenderer._uiImage.getter()
{
  ImageRenderer.accessSeed()();

  v0 = ImageRendererHost.platformImage.getter();

  return v0;
}

uint64_t ImageRendererHost.platformImage.getter()
{
  v1 = ImageRendererHost.cgImage.getter();
  swift_beginAccess();
  if (!*(v0 + 144))
  {
    if (v1)
    {
      ImageRendererHost.cgImageScale.getter();
      v3 = [objc_allocWithZone(MEMORY[0x1E69DCAB8]) initWithCGImage:v1 scale:0 orientation:v2];
    }

    else
    {
      v3 = 0;
    }

    swift_beginAccess();
    *(v0 + 144) = v3;
    swift_unknownObjectRelease();
  }

  swift_beginAccess();
  v4 = *(v0 + 144);
  swift_unknownObjectRetain();

  if (v4)
  {
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (result)
    {
      return result;
    }

    swift_unknownObjectRelease();
  }

  return 0;
}

uint64_t UIHostingController.rootView.setter(uint64_t a1)
{
  v3 = *v1;
  v4 = *MEMORY[0x1E69E7D40];
  specialized UIHostingController.rootView.setter(a1);
  v5 = *(*(*((v4 & v3) + 0x50) - 8) + 8);

  return v5(a1);
}

void specialized UIHostingController.rootView.setter(uint64_t a1)
{
  v3 = *(v1 + direct field offset for UIHostingController.host);
  specialized _UIHostingView.rootView.setter(a1);
}

uint64_t _UIHostingView.rootView.setter(uint64_t a1)
{
  v3 = *v1;
  v4 = *MEMORY[0x1E69E7D40];
  specialized _UIHostingView.rootView.setter(a1);
  v5 = *(*(*((v4 & v3) + 0x50) - 8) + 8);

  return v5(a1);
}

void AccessibilityProxyTransform.updateValue()(uint64_t a1)
{
  v3 = *(v1 + 120);
  v4 = *(v1 + 248);
  if (*AGGraphGetValue() == 1 && (v4 & 1) == 0)
  {
    *(v1 + 248) = 1;
    v8 = v3;
    AGGraphClearUpdate();
    v5 = AGSubgraphGetCurrent();
    AGSubgraphSetCurrent();
    v7 = type metadata accessor for AccessibilityProxyTransform(0, *(a1 + 16), *(a1 + 24), v6);
    AccessibilityProxyTransform.makeOutputs()(v7);
    AGSubgraphSetCurrent();

    AGGraphSetUpdate();
  }
}

unint64_t _s7SwiftUI25AccessibilityViewModifierPAAE04makeC19PropertiesTransform8modifier6inputs7outputs14AttributeGraph0L0VyAA0C8NodeListVGSgAA01_M5ValueVyxG_AA01_D6InputsVAA01_D7OutputsVtFZAA0c10AttachmentE0V_Tt2B5(unsigned int a1, __int128 *a2, uint64_t a3, int a4)
{

  return _s7SwiftUI25AccessibilityViewModifierPAAE04makeC9Transform8modifier6inputs7outputs14AttributeGraph0K0VyAA0C8NodeListVGSgAA01_L5ValueVyxG_AA01_D6InputsVAA01_D7OutputsVtFZAA0c10ScrollableE0V_Tt2B5Tm(a1, a2, a3, a4, &lazy cache variable for type metadata for AccessibilityViewModifierAccessor<AccessibilityAttachmentModifier>, lazy protocol witness table accessor for type AccessibilityAttachmentModifier and conformance AccessibilityAttachmentModifier, &type metadata for AccessibilityAttachmentModifier);
}

void @objc UIHostingBackgroundView.frame.setter(void *a1, double a2, double a3, double a4, double a5)
{
  v10 = a1;
  UIHostingBackgroundView.frame.setter(a2, a3, a4, a5, v10, v9);
}

void UIHostingBackgroundView.frame.setter(double a1, double a2, double a3, double a4, uint64_t a5, uint64_t a6)
{
  ObjectType = swift_getObjectType();
  v22.receiver = v6;
  v22.super_class = ObjectType;
  objc_msgSendSuper2(&v22, sel_bounds);
  v13 = v12;
  v15 = v14;
  v21.receiver = v6;
  v21.super_class = ObjectType;
  objc_msgSendSuper2(&v21, sel_setFrame_, a1, a2, a3, a4);
  v16 = swift_getObjectType();
  v22.receiver = v6;
  v22.super_class = v16;
  objc_msgSendSuper2(&v22, sel_bounds);
  if (v13 != v18 || v15 != v17)
  {
    v20 = _UIHostingView.base.getter();
    UIHostingViewBase.allowUIKitAnimationsForNextUpdate.setter();
  }
}

id UIHostingBackgroundView.frame.getter(SEL *a1, uint64_t a2)
{
  v5.receiver = v2;
  v5.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v5, *a1);
}

void *UIHostingContentView.makeBackgroundHost()()
{
  v1 = *MEMORY[0x1E69E7D40] & *v0;
  v2 = *(v1 + 0x718);
  v19 = *(v1 + 0x700);
  v18 = *(v1 + 1800);
  v20 = v18;
  v21 = v2;
  v3 = type metadata accessor for UIHostingConfiguration(0, &v19);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v18 - v5;
  v7 = v18;
  v8 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v18 - v10;
  UIHostingContentView._configuration.getter(v6);
  (*(v8 + 16))(v11, &v6[*(v3 + 52)], v7);
  (*(v4 + 8))(v6, v3);
  v13 = objc_allocWithZone(type metadata accessor for UIHostingBackgroundView(0, v7, v2, v12));
  v15 = specialized _UIHostingView.init(rootView:)(v11, v14);
  LODWORD(v3) = _UIHostingView.isHiddenForReuse.getter() & 1;
  if (v3 != (_UIHostingView.isHiddenForReuse.getter() & 1))
  {
    v16 = _UIHostingView.isHiddenForReuse.getter();
    _UIHostingView.isHiddenForReuse.setter(v16 & 1);
  }

  (*(v8 + 8))(v11, v7);
  return v15;
}

uint64_t ContextMenuModifier.body(content:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v3 = v2;
  v72 = a2;
  swift_getWitnessTable(protocol conformance descriptor for ContextMenuModifier<A>);
  v5 = type metadata accessor for _ViewModifier_Content();
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v9 = type metadata accessor for ContextMenuModifierCore(255, v6, v7, v8);
  v59 = v5;
  v10 = type metadata accessor for ModifiedContent();
  type metadata accessor for _EnvironmentKeyWritingModifier<Bool>(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6980A08]);
  v11 = type metadata accessor for ModifiedContent();
  v12 = type metadata accessor for ModifiedContent();
  type metadata accessor for StaticIf<_SemanticFeature<Semantics_v5>, PortalGroupRendererEffect, EmptyModifier>(255);
  v61 = v12;
  v63 = type metadata accessor for ModifiedContent();
  v13 = type metadata accessor for StaticIf();
  v66 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v64 = &v58 - v14;
  type metadata accessor for StaticIf<InvertedViewInputPredicate<IsSharingPickerHost>, SharingPickerHostModifier, EmptyModifier>(255);
  v68 = v13;
  v15 = type metadata accessor for ModifiedContent();
  v69 = *(v15 - 8);
  v70 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v65 = &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v67 = &v58 - v18;
  v58 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v58 - v20;
  v71 = v11;
  v62 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v73 = &v58 - v23;
  v24 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v58 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = v9;
  v60 = *(v9 - 8);
  v29 = MEMORY[0x1EEE9AC00](v28);
  v31 = &v58 - v30;
  (*(v24 + 16))(v27, v3 + *(a1 + 44), v6, v29);
  v32 = *v3;
  if (*v3)
  {
    specialized Environment.wrappedValue.getter(*(v3 + 3), *(v3 + 32), v81);
    v33 = v81[0];
    (*(v24 + 32))(v31, v27, v6);
    v35 = type metadata accessor for ContextMenuModifierCore(0, v6, v7, v34);
    *&v31[*(v35 + 36)] = v32;
    v31[*(v35 + 40)] = v33;
    v36 = v59;
    WitnessTable = swift_getWitnessTable(MEMORY[0x1E697FDF8], v59);
    MEMORY[0x18D00A570](v31, v36, v74, WitnessTable);
    swift_getKeyPath();
    specialized Environment.wrappedValue.getter(*(v3 + 1), *(v3 + 16), v81);
    LOBYTE(v81[0]) = LODWORD(v81[0]) == v32;
    v80[0] = WitnessTable;
    v80[1] = &protocol witness table for ContextMenuModifierCore<A>;
    v38 = MEMORY[0x1E697E858];
    v39 = swift_getWitnessTable(MEMORY[0x1E697E858], v10, v80);
    View.environment<A>(_:_:)();

    v40 = (*(v58 + 8))(v21, v10);
    v59 = &v58;
    MEMORY[0x1EEE9AC00](v40);
    MEMORY[0x1EEE9AC00](v41);
    v42 = lazy protocol witness table accessor for type ProvidesContextMenuInteraction and conformance ProvidesContextMenuInteraction();
    v43 = lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<Bool> and conformance _EnvironmentKeyWritingModifier<A>();
    v79[0] = v39;
    v79[1] = v43;
    v44 = v71;
    v45 = swift_getWitnessTable(v38, v71, v79);
    v78[0] = v45;
    v78[1] = MEMORY[0x1E697FC98];
    v46 = swift_getWitnessTable(v38, v61, v78);
    v47 = lazy protocol witness table accessor for type StaticIf<_SemanticFeature<Semantics_v5>, PortalGroupRendererEffect, EmptyModifier> and conformance <> StaticIf<A, B, C>();
    v77[0] = v46;
    v77[1] = v47;
    v57 = swift_getWitnessTable(v38, v63, v77);
    v48 = v64;
    StaticIf<>.init(_:then:else:)();
    v76[0] = v42;
    v76[1] = v45;
    v76[2] = v57;
    v49 = v68;
    v50 = swift_getWitnessTable(MEMORY[0x1E6981CE8], v68, v76);
    v51 = v65;
    View.sharingPickerHost()(v49, v50);
    (*(v66 + 8))(v48, v49);
    (*(v60 + 8))(v31, v74);
    IsSharingPicker = lazy protocol witness table accessor for type StaticIf<InvertedViewInputPredicate<IsSharingPickerHost>, SharingPickerHostModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>();
    v75[0] = v50;
    v75[1] = IsSharingPicker;
    v53 = v70;
    swift_getWitnessTable(v38, v70, v75);
    v54 = v67;
    static ViewBuilder.buildExpression<A>(_:)();
    v55 = *(v69 + 8);
    v55(v51, v53);
    static ViewBuilder.buildExpression<A>(_:)();
    v55(v54, v53);
    return (*(v62 + 8))(v73, v44);
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_18BE0AB3C@<X0>(_BYTE *a3@<X8>)
{
  result = EnvironmentValues.isPresentingContextMenu.getter();
  *a3 = result & 1;
  return result;
}

uint64_t initializeWithCopy for ContextMenuModifierCore(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  v6 = *(v5 + 48) + 3;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFFCLL;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFFCLL;
  *v7 = *v8;
  *(v7 + 4) = *(v8 + 4);
  return a1;
}

uint64_t View.portalGroup(kind:id:)(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  v6 = *a2;
  v9 = a1;
  v10 = v6;
  type metadata accessor for StaticIf<_SemanticFeature<Semantics_v5>, PortalTargetRendererEffect, EmptyModifier>(0, &lazy cache variable for type metadata for StaticIf<_SemanticFeature<Semantics_v5>, PortalGroupRendererEffect, EmptyModifier>, &type metadata for PortalGroupRendererEffect);
  return MEMORY[0x18D00A570](&v9, a3, v7, a4);
}

uint64_t closure #1 in ContextMenuModifier.body(content:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for ContextMenuModifier(255, a2, a3, a4);
  swift_getWitnessTable(protocol conformance descriptor for ContextMenuModifier<A>, v6);
  v7 = type metadata accessor for _ViewModifier_Content();
  type metadata accessor for ContextMenuModifierCore(255, a2, a3, v8);
  v9 = type metadata accessor for ModifiedContent();
  type metadata accessor for _EnvironmentKeyWritingModifier<Bool>(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6980A08]);
  v10 = type metadata accessor for ModifiedContent();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = v19 - v13;
  v20[0] = swift_getWitnessTable(MEMORY[0x1E697FDF8], v7, v12);
  v20[1] = &protocol witness table for ContextMenuModifierCore<A>;
  v15 = MEMORY[0x1E697E858];
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E697E858], v9, v20);
  v17 = lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<Bool> and conformance _EnvironmentKeyWritingModifier<A>();
  v19[0] = WitnessTable;
  v19[1] = v17;
  swift_getWitnessTable(v15, v10, v19);
  static ViewBuilder.buildExpression<A>(_:)();
  static ViewBuilder.buildExpression<A>(_:)();
  return (*(v11 + 8))(v14, v10);
}

uint64_t closure #1 in static ContextMenuModifierCore._makeView(modifier:inputs:body:)(__int128 *a1, char a2, uint64_t a3, void (*a4)(uint64_t, __int128 *))
{
  v37 = *MEMORY[0x1E69E9840];
  v8 = a1[3];
  v33 = a1[2];
  v34 = v8;
  v35 = a1[4];
  v36 = *(a1 + 20);
  v9 = a1[1];
  v31 = *a1;
  v32 = v9;
  LOBYTE(v23[0]) = 1;
  outlined init with copy of _ViewInputs(a1, &v25);
  lazy protocol witness table accessor for type HasContextMenuInteractionKey and conformance HasContextMenuInteractionKey();
  PropertyList.subscript.setter();
  if (a2)
  {
    v10 = *(a1 + 15);
    v11 = a1[3];
    v27 = a1[2];
    v28 = v11;
    v29 = a1[4];
    v30 = *(a1 + 20);
    v12 = a1[1];
    v25 = *a1;
    v26 = v12;
    *&v25 = __PAIR64__(_ViewInputs.position.getter(), v10);
    *(&v25 + 1) = a3;
    protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
    lazy protocol witness table accessor for type UIViewSnapshotResponder.Transform and conformance UIViewSnapshotResponder.Transform();
    Attribute.init<A>(body:value:flags:update:)();
    _ViewInputs.transform.setter();
  }

  v21[2] = v33;
  v21[3] = v34;
  v21[4] = v35;
  v22 = v36;
  v21[0] = v31;
  v21[1] = v32;
  v17 = v33;
  v18 = v34;
  v19 = v35;
  v20 = v36;
  v15 = v31;
  v16 = v32;
  v13 = outlined init with copy of _ViewInputs(v21, &v25);
  a4(v13, &v15);
  v23[2] = v17;
  v23[3] = v18;
  v23[4] = v19;
  v24 = v20;
  v23[0] = v15;
  v23[1] = v16;
  outlined destroy of _ViewInputs(v23);
  v27 = v33;
  v28 = v34;
  v29 = v35;
  v30 = v36;
  v25 = v31;
  v26 = v32;
  return outlined destroy of _ViewInputs(&v25);
}

uint64_t closure #2 in implicit closure #3 in static ContextMenuModifierCore._makeView(modifier:inputs:body:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for ContextMenuModifierCore(0, a2, a3, a4);
  v6 = *(v5 + 40);
  v10[2] = v5;
  v7 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + v6, _s14AttributeGraph13PointerOffsetV2ofyACyxq_Gq_zFZAESPyq_GXEfU_TA_0, v10, &type metadata for MenuOrder, MEMORY[0x1E69E73E0], v7, MEMORY[0x1E69E7410], v8);
  return v10[5];
}

uint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<MenuOrderKey> and conformance EnvironmentPropertyKey<A>(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t implicit closure #3 in static ContextMenuModifierCore._makeView(modifier:inputs:body:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ContextMenuModifierCore(255, a2, a3, a4);
  type metadata accessor for _GraphValue();
  _GraphValue.value.getter();
  closure #2 in implicit closure #3 in static ContextMenuModifierCore._makeView(modifier:inputs:body:)(1, a2, a3, v6);

  return AGGraphCreateOffsetAttribute2();
}

uint64_t closure #1 in ContextMenuResponderFilter.init<A>(modifier:inputs:outputs:responder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for ContextMenuModifierCore(0, a2, a3, a4);
  v6 = *(v5 + 36);
  v11[2] = v5;
  v7 = MEMORY[0x1E697DFC0];
  v8 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + v6, closure #1 in static PointerOffset.of(_:)partial apply, v11, v7, MEMORY[0x1E69E73E0], v8, MEMORY[0x1E69E7410], v9);
  return v11[5];
}

uint64_t ContextMenuResponderFilter.init<A>(modifier:inputs:outputs:responder:)@<X0>(__int128 *a2@<X1>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, uint64_t x5_0@<X5>)
{
  v9 = a2[2];
  v10 = a2[4];
  v21 = a2[3];
  v22 = v10;
  v11 = a2[1];
  v20[0] = *a2;
  v23 = *(a2 + 20);
  v20[1] = v11;
  v20[2] = v9;
  closure #1 in ContextMenuResponderFilter.init<A>(modifier:inputs:outputs:responder:)(1, a5, x5_0, a4);
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  v13 = _ViewOutputs.viewResponders()();

  v14 = _ViewInputs.animatedPosition()();
  v15 = HIDWORD(v21);
  swift_beginAccess();
  v16 = CachedEnvironment.animatedSize(for:)();
  swift_endAccess();
  v17 = _ViewInputs.containerPosition.getter();
  v18 = _ViewInputs.isEnabled.getter();
  result = outlined destroy of _ViewInputs(v20);
  *a6 = OffsetAttribute2;
  *(a6 + 4) = v13;
  *(a6 + 8) = v14;
  *(a6 + 12) = v15;
  *(a6 + 16) = v16;
  *(a6 + 20) = v17;
  *(a6 + 24) = v18;
  *(a6 + 32) = a4;
  return result;
}

uint64_t UIViewSnapshotResponder.init(inputs:space:displayList:)(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a2;
  *(v3 + 224) = 0u;
  *(v3 + 240) = 0u;
  *(v3 + 256) = 0;
  *(v3 + 264) = 1;
  *(v3 + 272) = 0;
  *(v3 + 268) = 0;
  *(v3 + 280) = 0;
  *(v3 + 288) = 0;
  *(v3 + 216) = v4;
  *(v3 + 268) = AGCreateWeakAttribute();
  return DefaultLayoutViewResponder.init(inputs:)();
}

uint64_t specialized Environment.wrappedValue.getter@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  if (a2)
  {
    *a3 = result;
    *(a3 + 4) = BYTE4(result) & 1;
  }

  else
  {
    v10[8] = v3;
    v10[9] = v4;
    v5 = result;
    outlined copy of Environment<Selector?>.Content(result, 0);
    v6 = static os_log_type_t.fault.getter();
    v7 = static Log.runtimeIssuesLog.getter();
    if (os_log_type_enabled(v7, v6))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v10[0] = v9;
      *v8 = 136315138;
      *(v8 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000011, 0x800000018CD3F3A0, v10);
      _os_log_impl(&dword_18BD4A000, v7, v6, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v9);
      MEMORY[0x18D0110E0](v9, -1, -1);
      MEMORY[0x18D0110E0](v8, -1, -1);
    }

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined consume of Environment<Selector?>.Content(v5, 0);
  }

  return result;
}

void type metadata accessor for EnvironmentPropertyKey<MenuOrderKey>()
{
  if (!lazy cache variable for type metadata for EnvironmentPropertyKey<MenuOrderKey>)
  {
    v0 = type metadata accessor for EnvironmentPropertyKey();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for EnvironmentPropertyKey<MenuOrderKey>);
    }
  }
}

uint64_t getEnumTagSinglePayload for ActiveContextMenu(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 5))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 4);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t specialized Environment.wrappedValue.getter@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t (*a3)(uint64_t, void)@<X2>, uint64_t a4@<X3>, void (*a5)(uint64_t, void)@<X5>, void *a6@<X8>, unint64_t a7@<X4>)
{
  if (a2)
  {
    *a6 = result;
  }

  else
  {
    v17[12] = v7;
    v17[13] = v8;
    v12 = result;
    a3(result, 0);
    v13 = static os_log_type_t.fault.getter();
    v14 = static Log.runtimeIssuesLog.getter();
    if (os_log_type_enabled(v14, v13))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v17[0] = v16;
      *v15 = 136315138;
      *(v15 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a4, a7, v17);
      _os_log_impl(&dword_18BD4A000, v14, v13, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v16);
      MEMORY[0x18D0110E0](v16, -1, -1);
      MEMORY[0x18D0110E0](v15, -1, -1);
    }

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    a5(v12, 0);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ContextMenuResponderFilter and conformance ContextMenuResponderFilter()
{
  result = lazy protocol witness table cache variable for type ContextMenuResponderFilter and conformance ContextMenuResponderFilter;
  if (!lazy protocol witness table cache variable for type ContextMenuResponderFilter and conformance ContextMenuResponderFilter)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ContextMenuResponderFilter, &unk_1EFF93C30, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ContextMenuResponderFilter and conformance ContextMenuResponderFilter);
  }

  return result;
}

uint64_t initializeWithCopy for ContextMenuResponderFilter(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);

  return a1;
}

void type metadata accessor for ModifiedContent<Spacer, _FrameLayout>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

uint64_t type metadata accessor for UIViewSnapshotResponder(uint64_t a1)
{
  result = type metadata singleton initialization cache for UIViewSnapshotResponder;
  if (!type metadata singleton initialization cache for UIViewSnapshotResponder)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t closure #2 in ContextMenuModifier.body(content:)@<X0>(uint64_t a1@<X0>, int *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, uint64_t a5@<X3>)
{
  v40 = a1;
  v41 = a4;
  v8 = type metadata accessor for ContextMenuModifier(255, a3, a5, a5);
  swift_getWitnessTable(protocol conformance descriptor for ContextMenuModifier<A>, v8);
  v9 = type metadata accessor for _ViewModifier_Content();
  type metadata accessor for ContextMenuModifierCore(255, a3, a5, v10);
  v36 = v9;
  v11 = type metadata accessor for ModifiedContent();
  type metadata accessor for _EnvironmentKeyWritingModifier<Bool>(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6980A08]);
  v37 = v11;
  v12 = type metadata accessor for ModifiedContent();
  v13 = type metadata accessor for ModifiedContent();
  v38 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v35 - v14;
  type metadata accessor for StaticIf<_SemanticFeature<Semantics_v5>, PortalGroupRendererEffect, EmptyModifier>(255);
  v16 = type metadata accessor for ModifiedContent();
  v39 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v35 - v20;
  v22 = *a2;
  if (!*a2)
  {
    goto LABEL_7;
  }

  v23 = *(a2 + 1);
  v24 = *(a2 + 16);
  specialized Environment.wrappedValue.getter(v23, v24, &v46);
  if (v22 != LODWORD(v46) || (specialized Environment.wrappedValue.getter(v23, v24, &v46), v25 = 0.0, BYTE4(v46) == 1))
  {
    v25 = 1.0;
  }

  v46 = v25;
  v45[0] = swift_getWitnessTable(MEMORY[0x1E697FDF8], v36);
  v45[1] = &protocol witness table for ContextMenuModifierCore<A>;
  v26 = MEMORY[0x1E697E858];
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E697E858], v37, v45);
  v28 = lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<Bool> and conformance _EnvironmentKeyWritingModifier<A>();
  v44[0] = WitnessTable;
  v44[1] = v28;
  v29 = swift_getWitnessTable(v26, v12, v44);
  MEMORY[0x18D00A570](&v46, v12, MEMORY[0x1E697FCA0], v29);
  if (*a2)
  {
    LODWORD(v46) = *a2;
    v43[0] = v29;
    v43[1] = MEMORY[0x1E697FC98];
    v30 = MEMORY[0x1E697E858];
    v31 = swift_getWitnessTable(MEMORY[0x1E697E858], v13, v43);
    View.portalGroup(kind:id:)(1, &v46, v13, v31);
    (*(v38 + 8))(v15, v13);
    v32 = lazy protocol witness table accessor for type StaticIf<_SemanticFeature<Semantics_v5>, PortalGroupRendererEffect, EmptyModifier> and conformance <> StaticIf<A, B, C>();
    v42[0] = v31;
    v42[1] = v32;
    swift_getWitnessTable(v30, v16, v42);
    static ViewBuilder.buildExpression<A>(_:)();
    v33 = *(v39 + 8);
    v33(v18, v16);
    static ViewBuilder.buildExpression<A>(_:)();
    return (v33)(v21, v16);
  }

  else
  {
LABEL_7:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

double static ContextMenuModifierCore._makeView(modifier:inputs:body:)@<D0>(int *a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t, __int128 *)@<X2>, uint64_t a4@<X4>, uint64_t *a5@<X8>, uint64_t a6@<X5>)
{
  v74 = *MEMORY[0x1E69E9840];
  v41 = *a1;
  v10 = *(a2 + 48);
  v70 = *(a2 + 32);
  v71 = v10;
  v72 = *(a2 + 64);
  v73 = *(a2 + 80);
  v11 = *(a2 + 16);
  v68 = *a2;
  v69 = v11;
  v49 = *(a2 + 56);
  v48 = *(a2 + 48);
  v12 = PreferencesInputs.contains<A>(_:includeHostPreferences:)();
  *&v62 = v48;
  DWORD2(v62) = v49;
  v13 = PreferencesInputs.contains<A>(_:includeHostPreferences:)();
  if (v12 & 1) != 0 || (v13)
  {
    v40 = a5;
    lazy protocol witness table accessor for type ProvidesContextMenuInteraction and conformance ProvidesContextMenuInteraction();
    v38 = v68;
    PropertyList.subscript.getter();
    v37 = v62;
    UniqueID.init()();
    v36 = v62;
    closure #1 in static ContextMenuModifierCore._makeView(modifier:inputs:body:)(&v68, v12 & 1, v62, a3);
    LODWORD(v50) = v41;
    type metadata accessor for ContextMenuModifierCore(255, a4, a6, v15);
    type metadata accessor for _GraphValue();
    _GraphValue.value.getter();
    OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
    v64 = v70;
    v65 = v71;
    v66 = v72;
    LODWORD(v67[0]) = v73;
    v62 = v68;
    v63 = v69;
    v17 = PlatformItemListGenerator<>.init(content:inputs:inputsIncludeGeometry:)(OffsetAttribute2, &v62, 1, &v56);
    MEMORY[0x1EEE9AC00](v17);
    *&v62 = &type metadata for AllPlatformItemListFlags;
    *(&v62 + 1) = a4;
    *&v63 = &protocol witness table for AllPlatformItemListFlags;
    *(&v63 + 1) = v18;
    v39 = v18;
    v19 = type metadata accessor for PlatformItemListGenerator(0, &v62);
    v34 = v19;
    WitnessTable = swift_getWitnessTable(protocol conformance descriptor for PlatformItemListGenerator<A, B>, v19);
    outlined init with copy of _ViewInputs(&v68, &v62);
    type metadata accessor for _EnvironmentKeyWritingModifier<Bool>(0, &lazy cache variable for type metadata for Attribute<PlatformItemList>, &type metadata for PlatformItemList, MEMORY[0x1E698D388]);
    _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v56, closure #1 in Attribute.init<A>(_:)partial apply, &v32, v19, MEMORY[0x1E69E73E0], v20, MEMORY[0x1E69E7410], v21);
    v65 = v59;
    v66 = v60;
    v67[0] = v61[0];
    *(v67 + 12) = *(v61 + 12);
    v62 = v56;
    v63 = v57;
    v64 = v58;
    (*(*(v19 - 8) + 8))(&v62, v19);
    v22 = v50;
    if (v12)
    {
      *&v56 = v46;
      DWORD2(v56) = LODWORD(v47);
      v23 = PreferencesOutputs.subscript.getter();
      if ((v23 & 0x100000000) == 0)
      {
        v24 = v23;
        v45 = v41;
        _GraphValue.value.getter();
        v58 = v70;
        v59 = v71;
        v60 = v72;
        LODWORD(v61[0]) = v73;
        v56 = v68;
        v57 = v69;
        v44[0] = v46;
        *&v44[1] = v47;
        type metadata accessor for ContextMenuResponder(0);
        v25 = swift_allocObject();
        *(v25 + 308) = 0;
        *(v25 + 316) = 1;
        *(v25 + 320) = 0;
        *(v25 + 296) = 0;
        *(v25 + 304) = 0;
        outlined init with copy of _ViewInputs(&v68, &v50);
        outlined init with copy of _ViewInputs(&v68, &v50);

        *(v25 + 296) = AGCreateWeakAttribute();
        v52 = v70;
        v53 = v71;
        v54 = v72;
        v55 = v73;
        v50 = v68;
        v51 = v69;
        v42 = 0;
        v43 = v36;
        v26 = UIViewSnapshotResponder.init(inputs:space:displayList:)(&v50, &v43, v24);
        ContextMenuResponderFilter.init<A>(modifier:inputs:outputs:responder:)(&v56, v26, a4, &v50, v39);
        v56 = v50;
        v57 = v51;
        *&v58 = v52;
        protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
        type metadata accessor for [ViewResponder](0, &lazy cache variable for type metadata for [ViewResponder], MEMORY[0x1E697E210], MEMORY[0x1E69E62F8]);
        lazy protocol witness table accessor for type ContextMenuResponderFilter and conformance ContextMenuResponderFilter();
        Attribute.init<A>(body:value:flags:update:)();
        outlined destroy of ContextMenuResponderFilter(&v50);
        LOBYTE(v56) = 0;
        v27 = PreferencesOutputs.subscript.setter();
        if ((v37 & 1) == 0)
        {
          *&v56 = v48;
          DWORD2(v56) = v49;
          MEMORY[0x1EEE9AC00](v27);
          v34 = &v68;
          outlined init with copy of PreferencesInputs(&v48, v44);
          PreferencesOutputs.makePreferenceWriter<A>(inputs:key:value:)();
        }

        *&v56 = v48;
        DWORD2(v56) = v49;
        MEMORY[0x1EEE9AC00](v27);
        v32 = a4;
        v33 = v39;
        LODWORD(v34) = v41;
        outlined init with copy of PreferencesInputs(&v48, v44);
        PreferencesOutputs.makePreferenceWriter<A>(inputs:key:value:)();
      }
    }

    static Semantics.v3.getter();
    if ((isLinkedOnOrAfter(_:)() & 1) == 0)
    {
      lazy protocol witness table accessor for type PlatformItemListFlagsInput and conformance PlatformItemListFlagsInput();
      v28 = PropertyList.subscript.getter();
      MEMORY[0x1EEE9AC00](v28);
      v32 = a4;
      v33 = v39;
      v34 = __PAIR64__(v29, v22);
      *&v56 = v48;
      DWORD2(v56) = v49;
      MEMORY[0x1EEE9AC00](v30);
      outlined init with copy of PreferencesInputs(&v48, v44);
      PreferencesOutputs.makePreferenceTransformer<A>(inputs:key:transform:)();
    }

    v31 = v40;
    *v40 = v46;
    result = v47;
    *(v31 + 1) = v47;
  }

  else
  {
    v64 = v70;
    v65 = v71;
    v66 = v72;
    LODWORD(v67[0]) = v73;
    v62 = v68;
    v63 = v69;
    (a3)();
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for ActiveContextMenu(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 4) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 5) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 5) = 0;
    }

    if (a2)
    {
      *(result + 4) = a2 + 1;
    }
  }

  return result;
}

void type metadata accessor for StyleContextWriter<MenuStyleContext>()
{
  if (!lazy cache variable for type metadata for StyleContextWriter<MenuStyleContext>)
  {
    v0 = type metadata accessor for StyleContextWriter();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StyleContextWriter<MenuStyleContext>);
    }
  }
}

_DWORD *initializeWithCopy for ContextMenuModifier(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  v5 = a2 + 27;
  *a1 = *a2;
  v6 = a1 + 27;
  v7 = (a1 + 11) & 0xFFFFFFFFFFFFFFF8;
  v8 = (a2 + 11) & 0xFFFFFFFFFFFFFFF8;
  v9 = *v8;
  v10 = *(v8 + 8);
  outlined copy of Environment<Selector?>.Content(*v8, v10);
  *v7 = v9;
  *(v7 + 8) = v10;
  v11 = v6 & 0xFFFFFFFFFFFFFFF8;
  v12 = v5 & 0xFFFFFFFFFFFFFFF8;
  v13 = *(v5 & 0xFFFFFFFFFFFFFFF8);
  LOBYTE(v9) = *(v12 + 8);
  outlined copy of Environment<Selector?>.Content(v13, v9);
  *v11 = v13;
  *(v11 + 8) = v9;
  v14 = *(*(a3 + 16) - 8);
  (*(v14 + 16))((*(v14 + 80) + 9 + v11) & ~*(v14 + 80), (*(v14 + 80) + 9 + v12) & ~*(v14 + 80));
  return a1;
}

uint64_t ContextMenuModifier.init(menuView:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, uint64_t a4@<X2>)
{
  *a3 = 0;
  *(a3 + 8) = swift_getKeyPath();
  *(a3 + 16) = 0;
  *(a3 + 24) = swift_getKeyPath();
  *(a3 + 32) = 0;
  v9 = type metadata accessor for ContextMenuModifier(0, a2, a4, v8);
  v10 = *(*(a2 - 8) + 32);
  v11 = a3 + *(v9 + 44);

  return v10(v11, a1, a2);
}

uint64_t destroy for ContextMenuModifier(uint64_t a1, uint64_t a2)
{
  outlined consume of Environment<Selector?>.Content(*((a1 + 11) & 0xFFFFFFFFFFFFFFF8), *(((a1 + 11) & 0xFFFFFFFFFFFFFFF8) + 8));
  v4 = (a1 + 27) & 0xFFFFFFFFFFFFFFF8;
  outlined consume of Environment<Selector?>.Content(*v4, *(v4 + 8));
  v5 = *(*(a2 + 16) - 8);
  v6 = *(v5 + 8);
  v7 = (v4 + *(v5 + 80) + 9) & ~*(v5 + 80);

  return v6(v7);
}

uint64_t lazy protocol witness table accessor for type StyleContextWriter<MenuStyleContext> and conformance StyleContextWriter<A>(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t _s7SwiftUI18StyleContextWriterVyAA04MenucD0VGACyxGAA12ViewModifierAAWlTm_0(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t _s7SwiftUI18StyleContextWriterVyAA04MenucD0VGACyxGAA12ViewModifierAAWlTm_1(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t _s7SwiftUI18StyleContextWriterVyAA04MenucD0VGACyxGAA12ViewModifierAAWlTm_2(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t View.contextMenu<A>(menuItems:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v27 = a7;
  v23 = a6;
  v24 = a1;
  v25 = a5;
  v26 = a2;
  type metadata accessor for StyleContextWriter<MenuStyleContext>();
  v10 = type metadata accessor for ModifiedContent();
  v34[0] = a6;
  v34[1] = lazy protocol witness table accessor for type StyleContextWriter<MenuStyleContext> and conformance StyleContextWriter<A>(&lazy protocol witness table cache variable for type StyleContextWriter<MenuStyleContext> and conformance StyleContextWriter<A>, type metadata accessor for StyleContextWriter<MenuStyleContext>, MEMORY[0x1E697F4D0]);
  swift_getWitnessTable(MEMORY[0x1E697E858], v10, v34);
  v11 = type metadata accessor for ZStack();
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v23 - v13;
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E6981880], v11, v12);
  v17 = type metadata accessor for ContextMenuModifier(0, v11, WitnessTable, v16);
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v23 - v19;
  v28 = a3;
  v29 = a4;
  v21 = v25;
  v30 = v25;
  v31 = v23;
  v32 = v24;
  v33 = v26;
  static Alignment.center.getter();
  ZStack.init(alignment:content:)();
  ContextMenuModifier.init(menuView:)(v14, v11, v20, WitnessTable);
  MEMORY[0x18D00A570](v20, a3, v17, v21);
  return (*(v18 + 8))(v20, v17);
}

uint64_t closure #1 in View.contextMenu<A>(menuItems:)@<X0>(uint64_t (*a1)(double)@<X0>, uint64_t a2@<X3>, uint64_t a3@<X5>, uint64_t a4@<X8>)
{
  v21[1] = a4;
  v7 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for StyleContextWriter<MenuStyleContext>();
  v10 = type metadata accessor for ModifiedContent();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = v21 - v16;
  a1(v15);
  View.styleContext<A>(_:)();
  (*(v7 + 8))(v9, a2);
  v18 = lazy protocol witness table accessor for type StyleContextWriter<MenuStyleContext> and conformance StyleContextWriter<A>(&lazy protocol witness table cache variable for type StyleContextWriter<MenuStyleContext> and conformance StyleContextWriter<A>, type metadata accessor for StyleContextWriter<MenuStyleContext>, MEMORY[0x1E697F4D0]);
  v22[0] = a3;
  v22[1] = v18;
  swift_getWitnessTable(MEMORY[0x1E697E858], v10, v22);
  static ViewBuilder.buildExpression<A>(_:)();
  v19 = *(v11 + 8);
  v19(v13, v10);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v19)(v17, v10);
}

_DWORD *assignWithCopy for ContextMenuModifier(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  v5 = a2 + 27;
  *a1 = *a2;
  v6 = a1 + 27;
  v7 = (a1 + 11) & 0xFFFFFFFFFFFFFFF8;
  v8 = (a2 + 11) & 0xFFFFFFFFFFFFFFF8;
  v9 = *v8;
  v10 = *(v8 + 8);
  outlined copy of Environment<Selector?>.Content(*v8, v10);
  v11 = *v7;
  v12 = *(v7 + 8);
  *v7 = v9;
  *(v7 + 8) = v10;
  outlined consume of Environment<Selector?>.Content(v11, v12);
  v13 = v6 & 0xFFFFFFFFFFFFFFF8;
  v14 = v5 & 0xFFFFFFFFFFFFFFF8;
  v15 = *(v5 & 0xFFFFFFFFFFFFFFF8);
  LOBYTE(v9) = *(v14 + 8);
  outlined copy of Environment<Selector?>.Content(v15, v9);
  v16 = *v13;
  v17 = *(v13 + 8);
  *v13 = v15;
  *(v13 + 8) = v9;
  outlined consume of Environment<Selector?>.Content(v16, v17);
  v18 = *(*(a3 + 16) - 8);
  (*(v18 + 24))((*(v18 + 80) + 9 + v13) & ~*(v18 + 80), (*(v18 + 80) + 9 + v14) & ~*(v18 + 80));
  return a1;
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance ContextMenuModifier<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ContextMenuModifier<A>, a5);

  return MEMORY[0x1EEDE0720](a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t protocol witness for static ViewInputPredicate.evaluate(inputs:) in conformance ProvidesContextMenuInteraction(uint64_t *a1, uint64_t a2)
{
  lazy protocol witness table accessor for type ProvidesContextMenuInteraction and conformance ProvidesContextMenuInteraction();
  PropertyList.subscript.getter();
  return v3;
}

unint64_t lazy protocol witness table accessor for type PortalGroupRendererEffect and conformance PortalGroupRendererEffect()
{
  result = lazy protocol witness table cache variable for type PortalGroupRendererEffect and conformance PortalGroupRendererEffect;
  if (!lazy protocol witness table cache variable for type PortalGroupRendererEffect and conformance PortalGroupRendererEffect)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PortalGroupRendererEffect, &type metadata for PortalGroupRendererEffect, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PortalGroupRendererEffect and conformance PortalGroupRendererEffect);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PortalGroupRendererEffect and conformance PortalGroupRendererEffect;
  if (!lazy protocol witness table cache variable for type PortalGroupRendererEffect and conformance PortalGroupRendererEffect)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PortalGroupRendererEffect, &type metadata for PortalGroupRendererEffect, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PortalGroupRendererEffect and conformance PortalGroupRendererEffect);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PortalGroupRendererEffect and conformance PortalGroupRendererEffect;
  if (!lazy protocol witness table cache variable for type PortalGroupRendererEffect and conformance PortalGroupRendererEffect)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PortalGroupRendererEffect, &type metadata for PortalGroupRendererEffect, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PortalGroupRendererEffect and conformance PortalGroupRendererEffect);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PortalGroupRendererEffect and conformance PortalGroupRendererEffect;
  if (!lazy protocol witness table cache variable for type PortalGroupRendererEffect and conformance PortalGroupRendererEffect)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PortalGroupRendererEffect, &type metadata for PortalGroupRendererEffect, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PortalGroupRendererEffect and conformance PortalGroupRendererEffect);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PortalGroupRendererEffect and conformance PortalGroupRendererEffect;
  if (!lazy protocol witness table cache variable for type PortalGroupRendererEffect and conformance PortalGroupRendererEffect)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PortalGroupRendererEffect, &type metadata for PortalGroupRendererEffect, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PortalGroupRendererEffect and conformance PortalGroupRendererEffect);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PortalGroupRendererEffect and conformance PortalGroupRendererEffect;
  if (!lazy protocol witness table cache variable for type PortalGroupRendererEffect and conformance PortalGroupRendererEffect)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PortalGroupRendererEffect, &type metadata for PortalGroupRendererEffect, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PortalGroupRendererEffect and conformance PortalGroupRendererEffect);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PortalGroupRendererEffect and conformance PortalGroupRendererEffect;
  if (!lazy protocol witness table cache variable for type PortalGroupRendererEffect and conformance PortalGroupRendererEffect)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PortalGroupRendererEffect, &type metadata for PortalGroupRendererEffect, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PortalGroupRendererEffect and conformance PortalGroupRendererEffect);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type HasContextMenuInteractionKey and conformance HasContextMenuInteractionKey()
{
  result = lazy protocol witness table cache variable for type HasContextMenuInteractionKey and conformance HasContextMenuInteractionKey;
  if (!lazy protocol witness table cache variable for type HasContextMenuInteractionKey and conformance HasContextMenuInteractionKey)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for HasContextMenuInteractionKey, &unk_1EFF93B60, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type HasContextMenuInteractionKey and conformance HasContextMenuInteractionKey);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HasContextMenuInteractionKey and conformance HasContextMenuInteractionKey;
  if (!lazy protocol witness table cache variable for type HasContextMenuInteractionKey and conformance HasContextMenuInteractionKey)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for HasContextMenuInteractionKey, &unk_1EFF93B60, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type HasContextMenuInteractionKey and conformance HasContextMenuInteractionKey);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HasContextMenuInteractionKey and conformance HasContextMenuInteractionKey;
  if (!lazy protocol witness table cache variable for type HasContextMenuInteractionKey and conformance HasContextMenuInteractionKey)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for HasContextMenuInteractionKey, &unk_1EFF93B60, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type HasContextMenuInteractionKey and conformance HasContextMenuInteractionKey);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HasContextMenuInteractionKey and conformance HasContextMenuInteractionKey;
  if (!lazy protocol witness table cache variable for type HasContextMenuInteractionKey and conformance HasContextMenuInteractionKey)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for HasContextMenuInteractionKey, &unk_1EFF93B60, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type HasContextMenuInteractionKey and conformance HasContextMenuInteractionKey);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HasContextMenuInteractionKey and conformance HasContextMenuInteractionKey;
  if (!lazy protocol witness table cache variable for type HasContextMenuInteractionKey and conformance HasContextMenuInteractionKey)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for HasContextMenuInteractionKey, &unk_1EFF93B60, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type HasContextMenuInteractionKey and conformance HasContextMenuInteractionKey);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UIViewSnapshotResponder.Transform and conformance UIViewSnapshotResponder.Transform()
{
  result = lazy protocol witness table cache variable for type UIViewSnapshotResponder.Transform and conformance UIViewSnapshotResponder.Transform;
  if (!lazy protocol witness table cache variable for type UIViewSnapshotResponder.Transform and conformance UIViewSnapshotResponder.Transform)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for UIViewSnapshotResponder.Transform, &type metadata for UIViewSnapshotResponder.Transform, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type UIViewSnapshotResponder.Transform and conformance UIViewSnapshotResponder.Transform);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UIHostingControllerSizingOptions and conformance UIHostingControllerSizingOptions()
{
  result = lazy protocol witness table cache variable for type UIHostingControllerSizingOptions and conformance UIHostingControllerSizingOptions;
  if (!lazy protocol witness table cache variable for type UIHostingControllerSizingOptions and conformance UIHostingControllerSizingOptions)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for UIHostingControllerSizingOptions, &type metadata for UIHostingControllerSizingOptions, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type UIHostingControllerSizingOptions and conformance UIHostingControllerSizingOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UIHostingControllerSizingOptions and conformance UIHostingControllerSizingOptions;
  if (!lazy protocol witness table cache variable for type UIHostingControllerSizingOptions and conformance UIHostingControllerSizingOptions)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for UIHostingControllerSizingOptions, &type metadata for UIHostingControllerSizingOptions, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type UIHostingControllerSizingOptions and conformance UIHostingControllerSizingOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UIHostingControllerSizingOptions and conformance UIHostingControllerSizingOptions;
  if (!lazy protocol witness table cache variable for type UIHostingControllerSizingOptions and conformance UIHostingControllerSizingOptions)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for UIHostingControllerSizingOptions, &type metadata for UIHostingControllerSizingOptions, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type UIHostingControllerSizingOptions and conformance UIHostingControllerSizingOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UIHostingControllerSizingOptions and conformance UIHostingControllerSizingOptions;
  if (!lazy protocol witness table cache variable for type UIHostingControllerSizingOptions and conformance UIHostingControllerSizingOptions)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for UIHostingControllerSizingOptions, &type metadata for UIHostingControllerSizingOptions, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type UIHostingControllerSizingOptions and conformance UIHostingControllerSizingOptions);
  }

  return result;
}

BOOL protocol witness for SetAlgebra.insert(_:) in conformance MainMenuItem.Template.Options(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

double static Divider._makeView(view:inputs:)@<D0>(__int128 *a1@<X1>, double *a2@<X8>)
{
  v38 = *MEMORY[0x1E69E9840];
  v3 = a1[3];
  v4 = a1[1];
  v34 = a1[2];
  v35 = v3;
  v5 = a1[3];
  v36 = a1[4];
  v6 = a1[1];
  v32 = *a1;
  v33 = v6;
  v28 = v34;
  v29 = v5;
  v30 = a1[4];
  v37 = *(a1 + 20);
  v31 = *(a1 + 20);
  v26 = v32;
  v27 = v4;
  *&v22[0] = v3;
  DWORD2(v22[0]) = DWORD2(v3);
  outlined init with copy of _ViewInputs(&v32, v24);
  if (PreferencesInputs.contains<A>(_:includeHostPreferences:)())
  {
    PreferenceKeys.remove(_:)();
    _ViewInputs.requestedTextRepresentation.setter();
  }

  if ((BYTE4(v34) & 4) != 0)
  {
    v8 = (BYTE4(v34) & 8) == 0;
    v7 = *MEMORY[0x1E698D3F8];
  }

  else
  {
    PropertyList.subscript.getter();
    v7 = v24[0];
    v8 = 2;
  }

  LOBYTE(v24[0]) = v8;
  DWORD1(v24[0]) = v7;
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  lazy protocol witness table accessor for type Divider.Child and conformance Divider.Child();
  LODWORD(v14[0]) = Attribute.init<A>(body:value:flags:update:)();
  v22[2] = v28;
  v22[3] = v29;
  v22[4] = v30;
  v23 = v31;
  v22[0] = v26;
  v22[1] = v27;
  v18 = v28;
  v19 = v29;
  v20 = v30;
  v21 = v31;
  v16 = v26;
  v17 = v27;
  outlined init with copy of _ViewInputs(v22, v24);
  lazy protocol witness table accessor for type ResolvedDivider and conformance ResolvedDivider();
  static View.makeDebuggableView(view:inputs:)();
  v24[2] = v18;
  v24[3] = v19;
  v24[4] = v20;
  v25 = v21;
  v24[0] = v16;
  v24[1] = v17;
  outlined destroy of _ViewInputs(v24);
  lazy protocol witness table accessor for type _GraphInputs.DividerRepresentationKey and conformance _GraphInputs.DividerRepresentationKey();
  PropertyList.subscript.getter();
  v9 = v16;
  if (v16)
  {
    v10 = *(&v16 + 1);
    v18 = v34;
    v19 = v35;
    v20 = v36;
    v21 = v37;
    v16 = v32;
    v17 = v33;
    if ((*(v10 + 8))(&v16, v9, v10))
    {
      v14[2] = v34;
      v14[3] = v35;
      v14[4] = v36;
      v15 = v37;
      v14[0] = v32;
      v14[1] = v33;
      (*(v10 + 16))(v14, &v12, v9, v10);
    }
  }

  v18 = v28;
  v19 = v29;
  v20 = v30;
  v21 = v31;
  v16 = v26;
  v17 = v27;
  outlined destroy of _ViewInputs(&v16);
  *a2 = v12;
  result = v13;
  a2[1] = v13;
  return result;
}

unint64_t lazy protocol witness table accessor for type Divider.Child and conformance Divider.Child()
{
  result = lazy protocol witness table cache variable for type Divider.Child and conformance Divider.Child;
  if (!lazy protocol witness table cache variable for type Divider.Child and conformance Divider.Child)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Divider.Child, &unk_1EFFC26D8, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type Divider.Child and conformance Divider.Child);
  }

  return result;
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance ResolvedDivider(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type ResolvedDivider and conformance ResolvedDivider();

  return MEMORY[0x1EEDDE4C0](a1, a2, a3, v6);
}

unint64_t lazy protocol witness table accessor for type ResolvedDivider and conformance ResolvedDivider()
{
  result = lazy protocol witness table cache variable for type ResolvedDivider and conformance ResolvedDivider;
  if (!lazy protocol witness table cache variable for type ResolvedDivider and conformance ResolvedDivider)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ResolvedDivider, &type metadata for ResolvedDivider, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ResolvedDivider and conformance ResolvedDivider);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ResolvedDivider and conformance ResolvedDivider;
  if (!lazy protocol witness table cache variable for type ResolvedDivider and conformance ResolvedDivider)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ResolvedDivider, &type metadata for ResolvedDivider, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ResolvedDivider and conformance ResolvedDivider);
  }

  return result;
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance DividerStyleModifier<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for DividerStyleModifier<A>, a5);

  return MEMORY[0x1EEDDE4B8](a1, a2, a3, a4, a5, WitnessTable);
}

void type metadata accessor for DividerStyleModifier<DefaultDividerStyle>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for DividerStyleModifier<DefaultDividerStyle>)
  {
    v2 = lazy protocol witness table accessor for type DefaultDividerStyle and conformance DefaultDividerStyle();
    v4 = type metadata accessor for DividerStyleModifier(a1, &type metadata for DefaultDividerStyle, v2, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for DividerStyleModifier<DefaultDividerStyle>);
    }
  }
}

void type metadata accessor for ModifiedContent<Divider, DividerStyleModifier<PlainDividerStyle>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<Divider, DividerStyleModifier<PlainDividerStyle>>)
  {
    type metadata accessor for DividerStyleModifier<PlainDividerStyle>(255);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<Divider, DividerStyleModifier<PlainDividerStyle>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Divider, DividerStyleModifier<PlainDividerStyle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Divider, DividerStyleModifier<PlainDividerStyle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Divider, DividerStyleModifier<PlainDividerStyle>> and conformance <> ModifiedContent<A, B>)
  {
    v4[2] = v0;
    v4[3] = v1;
    type metadata accessor for ModifiedContent<Divider, DividerStyleModifier<PlainDividerStyle>>(255);
    v4[0] = &protocol witness table for Divider;
    v4[1] = &protocol witness table for DividerStyleModifier<A>;
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v3, v4);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Divider, DividerStyleModifier<PlainDividerStyle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t UIHostingController.sizingOptions.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = direct field offset for UIHostingController.sizingOptions;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = v2;
  v6 = v4;
  return (*((*MEMORY[0x1E69E7D40] & *v1) + 0x3D8))(&v6);
}

uint64_t sub_18BE0DD1C(void *a1)
{
  swift_getAssociatedTypeWitness();

  return swift_getAssociatedConformanceWitness();
}

unint64_t lazy protocol witness table accessor for type DividerStyleModifier<DefaultDividerStyle> and conformance DividerStyleModifier<A>()
{
  result = lazy protocol witness table cache variable for type DividerStyleModifier<DefaultDividerStyle> and conformance DividerStyleModifier<A>;
  if (!lazy protocol witness table cache variable for type DividerStyleModifier<DefaultDividerStyle> and conformance DividerStyleModifier<A>)
  {
    type metadata accessor for DividerStyleModifier<DefaultDividerStyle>(255);
    result = swift_getWitnessTable(protocol conformance descriptor for DividerStyleModifier<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type DividerStyleModifier<DefaultDividerStyle> and conformance DividerStyleModifier<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DefaultDividerStyle and conformance DefaultDividerStyle()
{
  result = lazy protocol witness table cache variable for type DefaultDividerStyle and conformance DefaultDividerStyle;
  if (!lazy protocol witness table cache variable for type DefaultDividerStyle and conformance DefaultDividerStyle)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DefaultDividerStyle, &type metadata for DefaultDividerStyle, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type DefaultDividerStyle and conformance DefaultDividerStyle);
  }

  return result;
}

void type metadata accessor for DividerStyleModifier<PlainDividerStyle>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for DividerStyleModifier<PlainDividerStyle>)
  {
    v2 = lazy protocol witness table accessor for type PlainDividerStyle and conformance PlainDividerStyle();
    v4 = type metadata accessor for DividerStyleModifier(a1, &type metadata for PlainDividerStyle, v2, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for DividerStyleModifier<PlainDividerStyle>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type PlainDividerStyle and conformance PlainDividerStyle()
{
  result = lazy protocol witness table cache variable for type PlainDividerStyle and conformance PlainDividerStyle;
  if (!lazy protocol witness table cache variable for type PlainDividerStyle and conformance PlainDividerStyle)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PlainDividerStyle, &type metadata for PlainDividerStyle, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PlainDividerStyle and conformance PlainDividerStyle);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for DividerShape<A>(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = swift_getWitnessTable(protocol conformance descriptor for DividerShape<A>);
  result = swift_getWitnessTable(protocol conformance descriptor for DividerShape<A>, a2);
  *(a1 + 16) = result;
  return result;
}

void type metadata accessor for ModifiedContent<_ShapeView<DividerShape<Rectangle>, PlainDividerShapeStyle>, _FrameLayout>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<_ShapeView<DividerShape<Rectangle>, PlainDividerShapeStyle>, _FrameLayout>)
  {
    type metadata accessor for _ShapeView<DividerShape<Rectangle>, PlainDividerShapeStyle>(255);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<_ShapeView<DividerShape<Rectangle>, PlainDividerShapeStyle>, _FrameLayout>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_ShapeView<DividerShape<Rectangle>, PlainDividerShapeStyle>, _FrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_ShapeView<DividerShape<Rectangle>, PlainDividerShapeStyle>, _FrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ShapeView<DividerShape<Rectangle>, PlainDividerShapeStyle>, _FrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<_ShapeView<DividerShape<Rectangle>, PlainDividerShapeStyle>, _FrameLayout>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type DividerShape<Rectangle> and conformance DividerShape<A>(&lazy protocol witness table cache variable for type _ShapeView<DividerShape<Rectangle>, PlainDividerShapeStyle> and conformance _ShapeView<A, B>, type metadata accessor for _ShapeView<DividerShape<Rectangle>, PlainDividerShapeStyle>, MEMORY[0x1E697DB78]);
    v5[1] = MEMORY[0x1E697E040];
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_ShapeView<DividerShape<Rectangle>, PlainDividerShapeStyle>, _FrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for _ShapeView<DividerShape<Rectangle>, PlainDividerShapeStyle>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _ShapeView<DividerShape<Rectangle>, PlainDividerShapeStyle>)
  {
    type metadata accessor for DividerShape<Rectangle>(255);
    lazy protocol witness table accessor for type DividerShape<Rectangle> and conformance DividerShape<A>(&lazy protocol witness table cache variable for type DividerShape<Rectangle> and conformance DividerShape<A>, type metadata accessor for DividerShape<Rectangle>, protocol conformance descriptor for DividerShape<A>);
    v1 = type metadata accessor for _ShapeView();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _ShapeView<DividerShape<Rectangle>, PlainDividerShapeStyle>);
    }
  }
}

void type metadata accessor for DividerShape<Rectangle>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for DividerShape<Rectangle>)
  {
    v2 = lazy protocol witness table accessor for type Rectangle and conformance Rectangle();
    v4 = type metadata accessor for DividerShape(a1, MEMORY[0x1E6981EF8], v2, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for DividerShape<Rectangle>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type DividerShape<Rectangle> and conformance DividerShape<A>(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

void *type metadata accessor for ResolvedBorderedButton()
{
  return &unk_1EFFABCF8;
}

{
  return &unk_1EFFDE848;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ResolvedBorderedButton, _EnvironmentKeyWritingModifier<Image.Scale>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ResolvedBorderedButton, _EnvironmentKeyWritingModifier<Image.Scale>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ResolvedBorderedButton, _EnvironmentKeyWritingModifier<Image.Scale>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<ResolvedBorderedButton, _EnvironmentKeyWritingModifier<Image.Scale>>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ResolvedBorderedButton and conformance ResolvedBorderedButton();
    v5[1] = lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<Image.Scale> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Image.Scale> and conformance _EnvironmentKeyWritingModifier<A>, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Image.Scale>, MEMORY[0x1E69816F0]);
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ResolvedBorderedButton, _EnvironmentKeyWritingModifier<Image.Scale>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for ModifiedContent<ResolvedBorderedButton, _EnvironmentKeyWritingModifier<Image.Scale>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ResolvedBorderedButton, _EnvironmentKeyWritingModifier<Image.Scale>>)
  {
    _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGMaTm_0(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Image.Scale>, MEMORY[0x1E69816F0], MEMORY[0x1E6980A08]);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ResolvedBorderedButton, _EnvironmentKeyWritingModifier<Image.Scale>>);
    }
  }
}

void type metadata accessor for _EnvironmentKeyWritingModifier<Image.Scale>(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = type metadata accessor for _EnvironmentKeyWritingModifier();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t lazy protocol witness table accessor for type ResolvedBorderedButton and conformance ResolvedBorderedButton()
{
  result = lazy protocol witness table cache variable for type ResolvedBorderedButton and conformance ResolvedBorderedButton;
  if (!lazy protocol witness table cache variable for type ResolvedBorderedButton and conformance ResolvedBorderedButton)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ResolvedBorderedButton, &unk_1EFFABCF8, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ResolvedBorderedButton and conformance ResolvedBorderedButton);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ResolvedBorderedButton and conformance ResolvedBorderedButton;
  if (!lazy protocol witness table cache variable for type ResolvedBorderedButton and conformance ResolvedBorderedButton)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ResolvedBorderedButton, &unk_1EFFDE848, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ResolvedBorderedButton and conformance ResolvedBorderedButton);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for ButtonBorderShape(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4(a1, a2, a3);
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type ResolvedBorderShape and conformance ResolvedBorderShape()
{
  result = lazy protocol witness table cache variable for type ResolvedBorderShape and conformance ResolvedBorderShape;
  if (!lazy protocol witness table cache variable for type ResolvedBorderShape and conformance ResolvedBorderShape)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ResolvedBorderShape, &type metadata for ResolvedBorderShape, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ResolvedBorderShape and conformance ResolvedBorderShape);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ResolvedBorderShape and conformance ResolvedBorderShape;
  if (!lazy protocol witness table cache variable for type ResolvedBorderShape and conformance ResolvedBorderShape)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ResolvedBorderShape, &type metadata for ResolvedBorderShape, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ResolvedBorderShape and conformance ResolvedBorderShape);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ResolvedBorderShape and conformance ResolvedBorderShape;
  if (!lazy protocol witness table cache variable for type ResolvedBorderShape and conformance ResolvedBorderShape)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ResolvedBorderShape, &type metadata for ResolvedBorderShape, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ResolvedBorderShape and conformance ResolvedBorderShape);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ResolvedBorderShape and conformance ResolvedBorderShape;
  if (!lazy protocol witness table cache variable for type ResolvedBorderShape and conformance ResolvedBorderShape)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ResolvedBorderShape, &type metadata for ResolvedBorderShape, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ResolvedBorderShape and conformance ResolvedBorderShape);
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for PlatformAccessibilityTransform(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
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

  *(result + 9) = v3;
  return result;
}

unint64_t lazy protocol witness table accessor for type Rectangle and conformance Rectangle()
{
  result = lazy protocol witness table cache variable for type Rectangle and conformance Rectangle;
  if (!lazy protocol witness table cache variable for type Rectangle and conformance Rectangle)
  {
    result = swift_getWitnessTable(MEMORY[0x1E6981EE8], MEMORY[0x1E6981EF8], v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type Rectangle and conformance Rectangle);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _GraphInputs.DividerRepresentationKey and conformance _GraphInputs.DividerRepresentationKey()
{
  result = lazy protocol witness table cache variable for type _GraphInputs.DividerRepresentationKey and conformance _GraphInputs.DividerRepresentationKey;
  if (!lazy protocol witness table cache variable for type _GraphInputs.DividerRepresentationKey and conformance _GraphInputs.DividerRepresentationKey)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for _GraphInputs.DividerRepresentationKey, &type metadata for _GraphInputs.DividerRepresentationKey, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _GraphInputs.DividerRepresentationKey and conformance _GraphInputs.DividerRepresentationKey);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HandGestureShortcutInteractiveControl.BorderShape(uint64_t a1, int a2)
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

uint64_t AccessibilityChildBehaviorBox.isEqual(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AccessibilityChildBehaviorBox(0, *(*v4 + 136), *(*v4 + 144), a4);
  result = swift_dynamicCastClass();
  if (result)
  {

    v6 = dispatch thunk of static Equatable.== infix(_:_:)();

    return v6 & 1;
  }

  return result;
}

uint64_t static ViewBuilder.buildEither<A, B>(first:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = type metadata accessor for _ConditionalContent.Storage();
  v8 = MEMORY[0x1EEE9AC00](v7);
  (*(*(a2 - 8) + 16))(&v11 - v9, a1, a2, v8);
  swift_storeEnumTagMultiPayload();
  return _ConditionalContent<>.init(storage:)();
}

uint64_t Optional<A>.ChildTableColumn.content.getter@<X0>(uint64_t a3@<X8>)
{
  v4 = type metadata accessor for Optional();
  Value = AGGraphGetValue();
  v6 = *(*(v4 - 8) + 16);

  return v6(a3, Value, v4);
}

uint64_t type metadata completion function for PagingScrollView(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t get_witness_table_7SwiftUI4ViewRzlAA15ModifiedContentVyxAA30TransformScrollStorageModifierVyAA0fG10Indicators33_333E2209AFE841F0F3215E9AA4F7EA22LLVGGAaBHPxAaBHD1__AjA0cI0HPyHCHCTm(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 8);
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>(255, a2, a3, a4, type metadata accessor for TransformScrollStorageModifier);
  v5 = type metadata accessor for ModifiedContent();
  v7[0] = v4;
  v7[1] = &protocol witness table for TransformScrollStorageModifier<A>;
  return swift_getWitnessTable(MEMORY[0x1E697E858], v5, v7);
}

uint64_t type metadata completion function for ContextMenuModifier(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

char *storeEnumTagSinglePayload for AccessibilityLargeContentViewModifier(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(a4 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(v5 + 64);
  v11 = *(v8 + 80);
  if (v9 <= v6)
  {
    v12 = *(v5 + 84);
  }

  else
  {
    v12 = *(v8 + 84);
  }

  v13 = ((v10 + v11) & ~v11) + *(*(v7 - 8) + 64);
  v14 = a3 >= v12;
  v15 = a3 - v12;
  if (v15 != 0 && v14)
  {
    if (v13 <= 3)
    {
      v20 = ((v15 + ~(-1 << (8 * v13))) >> (8 * v13)) + 1;
      if (HIWORD(v20))
      {
        v16 = 4;
      }

      else
      {
        if (v20 < 0x100)
        {
          v21 = 1;
        }

        else
        {
          v21 = 2;
        }

        if (v20 >= 2)
        {
          v16 = v21;
        }

        else
        {
          v16 = 0;
        }
      }
    }

    else
    {
      v16 = 1;
    }
  }

  else
  {
    v16 = 0;
  }

  if (v12 < a2)
  {
    v17 = ~v12 + a2;
    if (v13 < 4)
    {
      v19 = (v17 >> (8 * v13)) + 1;
      if (v13)
      {
        v22 = v17 & ~(-1 << (8 * v13));
        v23 = result;
        bzero(result, v13);
        result = v23;
        if (v13 != 3)
        {
          if (v13 == 2)
          {
            *v23 = v22;
            if (v16 > 1)
            {
LABEL_46:
              if (v16 == 2)
              {
                *&result[v13] = v19;
              }

              else
              {
                *&result[v13] = v19;
              }

              return result;
            }
          }

          else
          {
            *v23 = v17;
            if (v16 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *v23 = v22;
        v23[2] = BYTE2(v22);
      }

      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v18 = result;
      bzero(result, v13);
      result = v18;
      *v18 = v17;
      v19 = 1;
      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v16)
    {
      result[v13] = v19;
    }

    return result;
  }

  if (v16 > 1)
  {
    if (v16 != 2)
    {
      *&result[v13] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_31;
    }

    *&result[v13] = 0;
  }

  else if (v16)
  {
    result[v13] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return result;
  }

LABEL_31:
  if (v6 >= v9)
  {
    v26 = *(v5 + 56);

    return v26();
  }

  else
  {
    v24 = *(v8 + 56);
    v25 = &result[v10 + v11] & ~v11;

    return v24(v25);
  }
}

uint64_t View.appIntentIntelligenceProvider<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8[2] = a2;
  v8[3] = a3;
  v8[4] = a4;
  v8[5] = a5;
  v8[6] = a6;
  type metadata accessor for Optional();
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #1 in View.appIntentIntelligenceProvider<A>(_:), v8, MEMORY[0x1E69E73E0], MEMORY[0x1E697F288], v6, &v10);
  v9 = v10;
  View.scrapeableAttachment(_:)();
  return outlined consume of ScrapeableContent.Content?(v9);
}

uint64_t partial apply for closure #1 in View.appIntentIntelligenceProvider<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(v2 + 24);
  v6 = swift_allocObject();
  *(v6 + 40) = v5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v6 + 16));
  result = (*(*(v5 - 8) + 16))(boxed_opaque_existential_1, a1, v5);
  *a2 = v6 | 0x4000000000000000;
  return result;
}

uint64_t sub_18BE0F168()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocObject();
}

uint64_t outlined consume of ScrapeableContent.Content?(uint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
    return outlined consume of ScrapeableContent.Content(result);
  }

  return result;
}

unint64_t outlined consume of ScrapeableContent.Content(unint64_t result)
{
  v1 = result >> 60;
  if ((result >> 60) <= 3)
  {
    if (v1 <= 1)
    {
      if (v1 >= 2)
      {
        return result;
      }
    }

    if (v1 == 2 || v1 == 3)
    {
    }
  }

  else
  {
    if (v1 > 5)
    {
      if (v1 != 6 && v1 != 7 && v1 != 8)
      {
        return result;
      }
    }

    if (v1 == 4 || v1 == 5)
    {
    }
  }

  return result;
}

uint64_t outlined copy of AccessibilityActionKind.ActionKind(uint64_t result, uint64_t a2, char a3, unint64_t a4)
{
  if (a4 >= 5)
  {
    outlined copy of Text.Storage(result, a2, a3 & 1);
  }

  return result;
}

uint64_t View.accessibilityAction<A>(_:label:image:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t x8_0@<X8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v18 = swift_allocObject();
  v18[2] = a9;
  v18[3] = a10;
  v18[4] = a11;
  v18[5] = a12;
  v18[6] = a7;
  v18[7] = a8;

  View.accessibilityAction<A>(_:label:image:_:)(a1, a2, a3, a4, a5, a6, partial apply for closure #1 in View.accessibilityAction<A>(_:label:image:_:), v18, x8_0, a9, a10, a11, a12);
}

uint64_t sub_18BE0F35C()
{

  return swift_deallocObject();
}

uint64_t View.accessibilityAction<A>(_:label:image:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v28 = a7;
  v29 = a9;
  v25 = a1;
  v30 = a10;
  v19 = *(a11 - 8);
  v26 = a13;
  v27 = a12;
  MEMORY[0x1EEE9AC00](a1);
  v21 = &v25 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s7SwiftUI23AccessibilityAttachmentVSgMaTm_1(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<AnyAccessibilityAction>, &type metadata for AnyAccessibilityAction, MEMORY[0x1E69E6F90]);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_18CD63400;
  (*(v19 + 16))(v21, v25, a11);
  outlined copy of Text?(a2, a3, a4, a5);

  AnyAccessibilityAction.init<A>(action:label:image:handler:bridged:)(v21, a2, a3, a4, a5, a6, v28, a8, v22 + 32, 0, a11, v26);
  v31 = v22;
  v23 = lazy protocol witness table accessor for type AccessibilityProperties.ActionsKey and conformance AccessibilityProperties.ActionsKey();
  View.accessibility<A>(_:_:isEnabled:)(&type metadata for AccessibilityProperties.ActionsKey, &v31, 1, v30, &type metadata for AccessibilityProperties.ActionsKey, v27, v23);
}

_OWORD *initializeWithCopy for AccessibilityActionKind(_OWORD *result, uint64_t a2)
{
  v2 = *(a2 + 24);
  if (v2 >= 5)
  {
    v4 = *a2;
    v5 = *(a2 + 8);
    v6 = *(a2 + 16);
    v7 = result;
    outlined copy of Text.Storage(*a2, v5, v6);
    *v7 = v4;
    *(v7 + 1) = v5;
    *(v7 + 16) = v6;
    *(v7 + 3) = v2;

    return v7;
  }

  else
  {
    v3 = *(a2 + 16);
    *result = *a2;
    result[1] = v3;
  }

  return result;
}

uint64_t AccessibilityActionStorage.init(action:category:label:image:handler:)@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v28 = *(a11 - 8);
  (*(v28 + 16))(a9, a1, a11);
  v20 = type metadata accessor for AccessibilityActionStorage(0, a11, a12, v19);
  v21 = (a9 + v20[9]);
  v22 = a2[1];
  *v21 = *a2;
  v21[1] = v22;
  v23 = (a9 + v20[10]);
  *v23 = a3;
  v23[1] = a4;
  v23[2] = a5;
  v23[3] = a6;
  *(a9 + v20[11]) = a7;
  v24 = (a9 + v20[12]);
  *v24 = a8;
  v24[1] = a10;
  v25 = AccessibilityActionHandlerSeed;
  *(a9 + v20[13]) = AccessibilityActionHandlerSeed;
  AccessibilityActionHandlerSeed = v25 + 1;
  v26 = *(v28 + 8);

  return v26(a1, a11);
}

uint64_t destroy for AccessibilityActionKind(uint64_t result)
{
  if (*(result + 24) >= 5uLL)
  {
    outlined consume of Text.Storage(*result, *(result + 8), *(result + 16));
  }

  return result;
}

uint64_t outlined consume of AccessibilityActionKind.ActionKind(uint64_t result, uint64_t a2, char a3, unint64_t a4)
{
  if (a4 >= 5)
  {
    outlined consume of Text.Storage(result, a2, a3 & 1);
  }

  return result;
}

uint64_t View.accessibilityAction(_:_:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(uint64_t *, void, void, void, void, void, uint64_t, uint64_t, uint64_t, ValueMetadata *, uint64_t, unint64_t))
{
  v13 = a1[1];
  v14 = a1[2];
  v15 = a1[3];
  v21 = *a1;
  v12 = v21;
  v22 = v13;
  v23 = v14;
  v24 = v15;
  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  *(v16 + 24) = a3;
  outlined copy of AccessibilityActionKind.ActionKind(v12, v13, v14, v15);
  v17 = lazy protocol witness table accessor for type AccessibilityVoidAction and conformance AccessibilityVoidAction();

  a8(&v21, 0, 0, 0, 0, 0, a7, v16, a4, &type metadata for AccessibilityVoidAction, a5, v17);

  return outlined consume of AccessibilityActionKind.ActionKind(v21, v22, v23, v24);
}

uint64_t destroy for AccessibilityActionStorage(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a2 + 16) - 8) + 8;
  (*v3)();
  v4 = (a1 + *(v3 + 56) + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v4 + 24);
  LODWORD(v6) = -1;
  if (v5 < 0xFFFFFFFF)
  {
    v6 = *(v4 + 24);
  }

  if (v5 >= 2 && v6 - 2 < 0)
  {
    outlined consume of Text.Storage(*v4, *(v4 + 8), *(v4 + 16));
  }

  v7 = (v4 + 39) & 0xFFFFFFFFFFFFFFF8;
  if (*(v7 + 24) >= 0xFFFFFFFFuLL)
  {
    outlined consume of Text.Storage(*v7, *(v7 + 8), *(v7 + 16));
  }
}

void type metadata accessor for StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>)
  {
    type metadata accessor for StyleContextAcceptsPredicate<GroupedFormStyleContext>(255, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<MenuStyleContext>, MEMORY[0x1E697EA18]);
    type metadata accessor for ContainerContextPredicate<ListContainerContext>(255, &lazy cache variable for type metadata for PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, lazy protocol witness table accessor for type PlatformItemListButtonStyle and conformance PlatformItemListButtonStyle, &type metadata for PlatformItemListButtonStyle, type metadata accessor for PrimitiveButtonStyleContainerModifier);
    v1 = type metadata accessor for StaticIf();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>);
    }
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance SceneList.Namespace(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = a2[1];
  v6 = *(a2 + 16);
  if (*(a1 + 16))
  {
    if (*(a1 + 16) == 1)
    {
      if (v6 == 1)
      {
        return v3 == v4;
      }

      return 0;
    }

    if (v6 != 2 || (v5 | v4) != 0)
    {
      return 0;
    }
  }

  else
  {
    if (*(a2 + 16))
    {
      return 0;
    }

    if (v3 != v4 || a1[1] != v5)
    {
      return _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  return 1;
}

void type metadata accessor for Binding<TabViewCustomization>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

BOOL static UIKitPresentationModeLocation.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v3 = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (v3)
    {
      v4 = v3;

      return Strong == v4;
    }

    return 0;
  }

  if (v3)
  {

    return 0;
  }

  return 1;
}

uint64_t outlined init with copy of MatchedTransitionSourceModifier(uint64_t a1, uint64_t a2)
{
  initializeWithCopy for MatchedTransitionSourceModifier(a2, a1);
  return a2;
}

{
  (off_1EFFEA108->initializeWithCopy)(a2, a1);
  return a2;
}

unint64_t lazy protocol witness table accessor for type MatchedTransitionSourceSourceMarkingEffect and conformance MatchedTransitionSourceSourceMarkingEffect()
{
  result = lazy protocol witness table cache variable for type MatchedTransitionSourceSourceMarkingEffect and conformance MatchedTransitionSourceSourceMarkingEffect;
  if (!lazy protocol witness table cache variable for type MatchedTransitionSourceSourceMarkingEffect and conformance MatchedTransitionSourceSourceMarkingEffect)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for MatchedTransitionSourceSourceMarkingEffect, &type metadata for MatchedTransitionSourceSourceMarkingEffect, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type MatchedTransitionSourceSourceMarkingEffect and conformance MatchedTransitionSourceSourceMarkingEffect);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MatchedTransitionSourceSourceMarkingEffect and conformance MatchedTransitionSourceSourceMarkingEffect;
  if (!lazy protocol witness table cache variable for type MatchedTransitionSourceSourceMarkingEffect and conformance MatchedTransitionSourceSourceMarkingEffect)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for MatchedTransitionSourceSourceMarkingEffect, &type metadata for MatchedTransitionSourceSourceMarkingEffect, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type MatchedTransitionSourceSourceMarkingEffect and conformance MatchedTransitionSourceSourceMarkingEffect);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MatchedTransitionSourceSourceMarkingEffect and conformance MatchedTransitionSourceSourceMarkingEffect;
  if (!lazy protocol witness table cache variable for type MatchedTransitionSourceSourceMarkingEffect and conformance MatchedTransitionSourceSourceMarkingEffect)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for MatchedTransitionSourceSourceMarkingEffect, &type metadata for MatchedTransitionSourceSourceMarkingEffect, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type MatchedTransitionSourceSourceMarkingEffect and conformance MatchedTransitionSourceSourceMarkingEffect);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MatchedTransitionSourceSourceMarkingEffect and conformance MatchedTransitionSourceSourceMarkingEffect;
  if (!lazy protocol witness table cache variable for type MatchedTransitionSourceSourceMarkingEffect and conformance MatchedTransitionSourceSourceMarkingEffect)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for MatchedTransitionSourceSourceMarkingEffect, &type metadata for MatchedTransitionSourceSourceMarkingEffect, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type MatchedTransitionSourceSourceMarkingEffect and conformance MatchedTransitionSourceSourceMarkingEffect);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MatchedTransitionSourceSourceMarkingEffect and conformance MatchedTransitionSourceSourceMarkingEffect;
  if (!lazy protocol witness table cache variable for type MatchedTransitionSourceSourceMarkingEffect and conformance MatchedTransitionSourceSourceMarkingEffect)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for MatchedTransitionSourceSourceMarkingEffect, &type metadata for MatchedTransitionSourceSourceMarkingEffect, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type MatchedTransitionSourceSourceMarkingEffect and conformance MatchedTransitionSourceSourceMarkingEffect);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MatchedTransitionSourceSourceMarkingEffect and conformance MatchedTransitionSourceSourceMarkingEffect;
  if (!lazy protocol witness table cache variable for type MatchedTransitionSourceSourceMarkingEffect and conformance MatchedTransitionSourceSourceMarkingEffect)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for MatchedTransitionSourceSourceMarkingEffect, &type metadata for MatchedTransitionSourceSourceMarkingEffect, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type MatchedTransitionSourceSourceMarkingEffect and conformance MatchedTransitionSourceSourceMarkingEffect);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MatchedTransitionSourceSourceMarkingEffect and conformance MatchedTransitionSourceSourceMarkingEffect;
  if (!lazy protocol witness table cache variable for type MatchedTransitionSourceSourceMarkingEffect and conformance MatchedTransitionSourceSourceMarkingEffect)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for MatchedTransitionSourceSourceMarkingEffect, &type metadata for MatchedTransitionSourceSourceMarkingEffect, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type MatchedTransitionSourceSourceMarkingEffect and conformance MatchedTransitionSourceSourceMarkingEffect);
  }

  return result;
}

char *protocol witness for PlatformGroupFactory.makePlatformGroup() in conformance MatchedTransitionSourceSourceMarkingEffect()
{
  outlined init with copy of MatchedTransitionSourceSourceMarkingEffect(v0, v4);
  v1 = objc_allocWithZone(type metadata accessor for MatchedTransitionSourceMarkingView());
  return MatchedTransitionSourceMarkingView.init(effect:)(v4, v2);
}

double FlipForRTLFrame.value.getter@<D0>(_OWORD *a4@<X8>)
{
  type metadata accessor for CGPoint(0);
  AGGraphGetValue();
  AGGraphGetValue();
  ViewFrame.init(origin:size:)();
  v5 = *AGGraphGetValue();
  if (v5 != 2 && *AGGraphGetValue() == (v5 & 1))
  {
    Value = AGGraphGetValue();
    MEMORY[0x18D00BD30](*Value);
    ViewFrame.origin.setter();
  }

  *a4 = v8;
  a4[1] = v9;
  result = *&v10;
  a4[2] = v10;
  return result;
}

_BYTE *FlipForRTLDisplayList.value.getter@<X0>(uint64_t a1@<X8>)
{
  if (*(v1 + 24) == *MEMORY[0x1E698D3F8])
  {
    DisplayList.init()();
    v3 = v12;
    v4 = v13;
    v5 = v14;
    if (*(v12 + 16))
    {
LABEL_3:
      result = AGGraphGetValue();
      v7 = *result;
      if (v7 != 2 && (result = AGGraphGetValue(), *result == (v7 & 1)))
      {
        AGGraphGetValue();
        ViewSize.width.getter();
        v10 = v9;
        type metadata accessor for CGPoint(0);
        AGGraphGetValue();
        AGGraphGetValue();
        v11 = swift_allocObject();
        *(v11 + 16) = 0xBFF0000000000000;
        *(v11 + 24) = 0;
        *(v11 + 32) = 0;
        *(v11 + 40) = 0x3FF0000000000000;
        *(v11 + 48) = v10;
        *(v11 + 56) = 0;
        *(v11 + 88) = 0;
        AGGraphGetValue();
        MEMORY[0x18D00B390]();
        DisplayList.Version.init(forUpdate:)();
        DisplayList.Item.init(_:frame:identity:version:)();
        return DisplayList.init(_:)();
      }

      else
      {
        *a1 = v3;
        *(a1 + 8) = v4;
        *(a1 + 12) = v5;
      }

      return result;
    }
  }

  else
  {
    Value = AGGraphGetValue();
    v3 = *Value;
    v4 = *(Value + 8);
    v5 = *(Value + 12);

    if (*(v3 + 16))
    {
      goto LABEL_3;
    }
  }

  return DisplayList.init()();
}

uint64_t type metadata completion function for ProgressView(uint64_t a1)
{
  v1 = *(a1 + 32);
  v4[0] = *(a1 + 16);
  v4[1] = v1;
  result = type metadata accessor for ProgressView.Base(319, v4);
  if (v3 <= 0x3F)
  {
    *&v4[0] = *(result - 8) + 64;
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t type metadata completion function for ProgressView.Base(uint64_t a1)
{
  v1 = *(a1 + 32);
  v4[0] = *(a1 + 16);
  v4[1] = v1;
  result = type metadata accessor for CustomProgressView(319, v4);
  if (v3 <= 0x3F)
  {
    v5 = *(result - 8) + 64;
    v6 = "@";
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

uint64_t type metadata completion function for CustomProgressView(uint64_t a1)
{
  result = type metadata accessor for ProgressViewValue(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Optional();
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for Optional();
      if (v4 <= 0x3F)
      {
        swift_initStructMetadata();
        return 0;
      }
    }
  }

  return result;
}

uint64_t ProgressView.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  *&v36 = a1[2];
  v2 = v36;
  *(&v36 + 1) = v3;
  *&v37 = v4;
  *(&v37 + 1) = v5;
  v6 = type metadata accessor for CustomProgressView(0, &v36);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v28 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = v28 - v14;
  *&v36 = v2;
  *(&v36 + 1) = v3;
  *&v37 = v4;
  *(&v37 + 1) = v5;
  v16 = type metadata accessor for ProgressView.Base(0, &v36);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = (v28 - v18);
  v20 = type metadata accessor for _ConditionalContent();
  v29 = *(v20 - 8);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = v28 - v22;
  (*(v17 + 16))(v19, v28[1], v16, v21);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v24 = v19[1];
    v32 = *v19;
    v33 = v24;
    v25 = v19[3];
    v34 = v19[2];
    v35 = v25;
    static ViewBuilder.buildEither<A, B>(second:)(&v32, v6, &type metadata for FoundationProgressView, &protocol witness table for CustomProgressView<A, B>, &protocol witness table for FoundationProgressView);
    v36 = v32;
    v37 = v33;
    v38 = v34;
    v39 = v35;
    outlined destroy of FoundationProgressView(&v36);
  }

  else
  {
    (*(v7 + 32))(v15, v19, v6);
    static ViewBuilder.buildExpression<A>(_:)();
    static ViewBuilder.buildExpression<A>(_:)();
    static ViewBuilder.buildEither<A, B>(first:)(v9, v6, &type metadata for FoundationProgressView, &protocol witness table for CustomProgressView<A, B>, &protocol witness table for FoundationProgressView);
    v26 = *(v7 + 8);
    v26(v9, v6);
    v26(v12, v6);
    v26(v15, v6);
  }

  v31[0] = &protocol witness table for CustomProgressView<A, B>;
  v31[1] = &protocol witness table for FoundationProgressView;
  swift_getWitnessTable(MEMORY[0x1E697F968], v20, v31);
  static ViewBuilder.buildExpression<A>(_:)();
  return (*(v29 + 8))(v23, v20);
}

uint64_t destroy for CustomProgressView(unsigned __int16 *a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = *(v5 + 80);
  v8 = v6 + v7;
  v9 = v6 + ((v6 + v7) & ~v7);
  if ((v9 + 1) > 0xA)
  {
    v10 = v9 + 1;
  }

  else
  {
    v10 = 10;
  }

  v11 = *(a1 + v10);
  v12 = v11 - 2;
  if (v11 < 2)
  {
LABEL_18:
    if (v11 != 1)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  if (v10 <= 3)
  {
    v13 = v10;
  }

  else
  {
    v13 = 4;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *a1;
      if (v10 < 4)
      {
        goto LABEL_30;
      }
    }

    else if (v13 == 3)
    {
      v14 = *a1 | (*(a1 + 2) << 16);
      if (v10 < 4)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v14 = *a1;
      if (v10 < 4)
      {
        goto LABEL_30;
      }
    }

LABEL_17:
    v11 = v14 + 2;
    goto LABEL_18;
  }

  if (!v13)
  {
    goto LABEL_18;
  }

  v14 = *a1;
  if (v10 >= 4)
  {
    goto LABEL_17;
  }

LABEL_30:
  if ((v14 | (v12 << (8 * v10))) == 0xFFFFFFFF)
  {
LABEL_19:
    v15 = ~v7;
    v16 = *(v5 + 8);
    v16(a1, v4);
    v16(((a1 + v8) & v15), v4);
  }

LABEL_20:
  v17 = *(a2 + 16);
  v18 = *(v17 - 8);
  v19 = (a1 + v10 + *(v18 + 80) + 1) & ~*(v18 + 80);
  if (!(*(v18 + 48))(v19, 1, v17))
  {
    (*(v18 + 8))(v19, v17);
  }

  v20 = *(a2 + 24);
  v21 = *(v20 - 8);
  v22 = *(v18 + 64) + v19;
  if (!*(v18 + 84))
  {
    ++v22;
  }

  v23 = (v22 + *(v21 + 80)) & ~*(v21 + 80);
  if (!(*(*(v20 - 8) + 48))(v23, 1, v20))
  {
    (*(v21 + 8))(v23, v20);
  }
}

uint64_t closure #3 in static CustomProgressView._makeView(view:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13[0] = a2;
  v13[1] = a3;
  v13[2] = a4;
  v13[3] = a5;
  v6 = type metadata accessor for CustomProgressView(0, v13);
  v7 = *(v6 + 56);
  v11[2] = v6;
  v12 = type metadata accessor for Optional();
  v8 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + v7, closure #1 in static PointerOffset.of(_:), v11, v12, MEMORY[0x1E69E73E0], v8, MEMORY[0x1E69E7410], v9);
  return v13[0];
}

uint64_t closure #4 in static CustomProgressView._makeView(view:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14[0] = a2;
  v14[1] = a3;
  v14[2] = a4;
  v14[3] = a5;
  v6 = type metadata accessor for CustomProgressView(0, v14);
  v7 = *(v6 + 60);
  v13[2] = v6;
  type metadata accessor for AnyAccessibilityValue?(0, &lazy cache variable for type metadata for AnyView?, MEMORY[0x1E6981910]);
  v9 = v8;
  v10 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + v7, _s14AttributeGraph13PointerOffsetV2ofyACyxq_Gq_zFZAESPyq_GXEfU_TA_7, v13, v9, MEMORY[0x1E69E73E0], v10, MEMORY[0x1E69E7410], v11);
  return v14[0];
}

void type metadata accessor for ModifiedContent<ResolvedProgressView, OptionalSourceWriter<ProgressViewStyleConfiguration.Actions, AnyView>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ResolvedProgressView, OptionalSourceWriter<ProgressViewStyleConfiguration.Actions, AnyView>>)
  {
    type metadata accessor for ResolvedProgressView(255);
    type metadata accessor for OptionalSourceWriter<ProgressViewStyleConfiguration.Actions, AnyView>(255);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ResolvedProgressView, OptionalSourceWriter<ProgressViewStyleConfiguration.Actions, AnyView>>);
    }
  }
}

uint64_t type metadata completion function for OptionalSourceWriter(uint64_t a1)
{
  result = type metadata accessor for Optional();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t sub_18BE10E84(_OWORD *a1)
{
  v1 = a1[1];
  v5[0] = *a1;
  v5[1] = v1;
  type metadata accessor for CustomProgressView(255, v5);
  v2 = type metadata accessor for _ConditionalContent();
  v4[0] = &protocol witness table for CustomProgressView<A, B>;
  v4[1] = &protocol witness table for FoundationProgressView;
  return swift_getWitnessTable(MEMORY[0x1E697F968], v2, v4);
}

uint64_t initializeWithCopy for ProgressView(uint64_t a1, unsigned __int16 *a2, uint64_t a3)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = *(v7 + 80);
  v10 = v8 + v9;
  v11 = ((v8 + v9) & ~v9) + v8;
  if ((v11 + 1) > 0xA)
  {
    v12 = v11 + 1;
  }

  else
  {
    v12 = 10;
  }

  v13 = *(a3 + 16);
  v14 = *(a3 + 24);
  v15 = *(v13 - 8);
  v16 = *(v15 + 80);
  v17 = v12 + v16 + 1;
  if (*(v15 + 84))
  {
    v18 = *(v15 + 64);
  }

  else
  {
    v18 = *(v15 + 64) + 1;
  }

  v19 = *(v14 - 8);
  v20 = *(v19 + 80);
  v21 = (v18 + v20 + (v17 & ~v16)) & ~v20;
  if (*(v19 + 84))
  {
    v22 = *(*(v14 - 8) + 64);
  }

  else
  {
    v22 = *(*(v14 - 8) + 64) + 1;
  }

  if (((v22 + 7 + v21) & 0xFFFFFFFFFFFFFFF8) + 8 <= 0x40)
  {
    v23 = 64;
  }

  else
  {
    v23 = ((v22 + 7 + v21) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  v24 = *(a2 + v23);
  if (v24 >= 2 && v23 != 0)
  {
    v24 = *a2 + 2;
  }

  if (v24 == 1)
  {
    v26 = *a2;
    *a1 = *a2;
    v27 = *(a2 + 4);
    v28 = v26;
    if (v27)
    {
      *(a1 + 8) = *(a2 + 1);
      *(a1 + 16) = *(a2 + 16);
      *(a1 + 24) = *(a2 + 3);
      *(a1 + 32) = v27;
      v29 = *(a2 + 6);
      *(a1 + 40) = *(a2 + 5);
      *(a1 + 48) = v29;
    }

    else
    {
      v34 = *(a2 + 12);
      *(a1 + 8) = *(a2 + 4);
      *(a1 + 24) = v34;
      *(a1 + 40) = *(a2 + 20);
    }

    v35 = (a1 + 56);
    v36 = a2 + 28;
    v37 = 1;
    goto LABEL_49;
  }

  v30 = *(a2 + v12);
  v31 = v30 - 2;
  if (v30 >= 2)
  {
    if (v12 <= 3)
    {
      v32 = v12;
    }

    else
    {
      v32 = 4;
    }

    if (v32 > 1)
    {
      if (v32 == 2)
      {
        v33 = *a2;
        if (v12 < 4)
        {
          goto LABEL_38;
        }
      }

      else
      {
        if (v32 == 3)
        {
          v33 = *a2 | (*(a2 + 2) << 16);
          if (v12 < 4)
          {
            goto LABEL_38;
          }

          goto LABEL_36;
        }

        v33 = *a2;
        if (v12 < 4)
        {
LABEL_38:
          v30 = (v33 | (v31 << (8 * v12))) + 2;
          goto LABEL_39;
        }
      }

LABEL_36:
      v30 = v33 + 2;
      goto LABEL_39;
    }

    if (v32)
    {
      v33 = *a2;
      if (v12 < 4)
      {
        goto LABEL_38;
      }

      goto LABEL_36;
    }
  }

LABEL_39:
  __n = v18;
  v60 = v13;
  v38 = ~v16;
  v61 = *(v14 - 8);
  v62 = v22 + 7;
  v58 = v22;
  if (v30 == 1)
  {
    v57 = v23;
    v39 = ~v9;
    v40 = *(v7 + 16);
    v41 = v6;
    v55 = *(v13 - 8);
    v56 = v12 + v16 + 1;
    v42 = v11;
    v54 = v12;
    v40(a1, a2, v6);
    v43 = (v10 + a1) & v39;
    v44 = (a2 + v10) & v39;
    v23 = v57;
    v40(v43, v44, v41);
    v17 = v56;
    *(v42 + a1) = *(a2 + v42);
    v12 = v54;
    v15 = v55;
    v45 = 1;
  }

  else
  {
    v45 = 0;
    *a1 = *a2;
    *(a1 + 8) = a2[4];
  }

  v46 = ~v20;
  *(a1 + v12) = v45;
  v47 = ((v17 + a1) & v38);
  v48 = ((a2 + v17) & v38);
  if ((*(v15 + 48))(v48, 1, v60))
  {
    v49 = __n;
    memcpy(v47, v48, __n);
  }

  else
  {
    (*(v15 + 16))(v47, v48, v60);
    (*(v15 + 56))(v47, 0, 1, v60);
    v49 = __n;
  }

  v50 = &v48[v49];
  v51 = ((v47 + v49 + v20) & v46);
  v52 = (&v50[v20] & v46);
  if ((*(v61 + 48))(v52, 1, v14))
  {
    memcpy(v51, v52, v58);
  }

  else
  {
    (*(v61 + 16))(v51, v52, v14);
    (*(v61 + 56))(v51, 0, 1, v14);
  }

  v37 = 0;
  v35 = ((v51 + v62) & 0xFFFFFFFFFFFFFFF8);
  v36 = ((v52 + v62) & 0xFFFFFFFFFFFFFFF8);
LABEL_49:
  *v35 = *v36;
  *(a1 + v23) = v37;

  return a1;
}

uint64_t destroy for ProgressView(unsigned __int16 *a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = *(v5 + 80);
  v8 = v6 + v7;
  v9 = v6 + ((v6 + v7) & ~v7);
  if ((v9 + 1) > 0xA)
  {
    v10 = v9 + 1;
  }

  else
  {
    v10 = 10;
  }

  v12 = *(a2 + 16);
  v11 = *(a2 + 24);
  v13 = *(v12 - 8);
  v14 = *(v13 + 80);
  v15 = v10 + v14 + 1;
  if (*(v13 + 84))
  {
    v16 = *(v13 + 64);
  }

  else
  {
    v16 = *(v13 + 64) + 1;
  }

  v17 = *(v11 - 8);
  v18 = *(v17 + 80);
  v19 = *(v17 + 64);
  if (!*(v17 + 84))
  {
    ++v19;
  }

  v20 = ((v19 + 7 + ((v16 + v18 + (v15 & ~v14)) & ~v18)) & 0xFFFFFFFFFFFFFFF8) + 8;
  v21 = 64;
  if (v20 > 0x40)
  {
    v21 = v20;
  }

  v22 = *(a1 + v21);
  if (v22 >= 2 && v21 != 0)
  {
    v22 = *a1 + 2;
  }

  if (v22 == 1)
  {

    if (*(a1 + 4))
    {
    }

    goto LABEL_42;
  }

  v24 = *(a1 + v10);
  v25 = v24 - 2;
  if (v24 >= 2)
  {
    if (v10 <= 3)
    {
      v26 = v10;
    }

    else
    {
      v26 = 4;
    }

    if (v26 > 1)
    {
      if (v26 == 2)
      {
        v27 = *a1;
        if (v10 < 4)
        {
          goto LABEL_35;
        }
      }

      else
      {
        if (v26 == 3)
        {
          v27 = *a1 | (*(a1 + 2) << 16);
          if (v10 < 4)
          {
            goto LABEL_35;
          }

          goto LABEL_33;
        }

        v27 = *a1;
        if (v10 < 4)
        {
LABEL_35:
          v24 = (v27 | (v25 << (8 * v10))) + 2;
          goto LABEL_36;
        }
      }

LABEL_33:
      v24 = v27 + 2;
      goto LABEL_36;
    }

    if (v26)
    {
      v27 = *a1;
      if (v10 < 4)
      {
        goto LABEL_35;
      }

      goto LABEL_33;
    }
  }

LABEL_36:
  v38 = v16;
  v28 = ~v14;
  if (v24 == 1)
  {
    v37 = v12;
    v29 = ~v7;
    v30 = *(v5 + 8);
    v31 = v4;
    v36 = v10 + v14 + 1;
    v30(a1, v4);
    v32 = (a1 + v8) & v29;
    v12 = v37;
    v30(v32, v31);
    v15 = v36;
  }

  v33 = (a1 + v15) & v28;
  if (!(*(v13 + 48))(v33, 1, v12))
  {
    (*(v13 + 8))(v33, v12);
  }

  v34 = (v33 + v38 + v18) & ~v18;
  if (!(*(v17 + 48))(v34, 1, v11))
  {
    (*(v17 + 8))(v34, v11);
  }

LABEL_42:
}

uint64_t initializeWithCopy for CustomProgressView(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = *(v7 + 80);
  v10 = v8 + v9;
  v11 = ((v8 + v9) & ~v9) + v8;
  if ((v11 + 1) > 0xA)
  {
    v12 = v11 + 1;
  }

  else
  {
    v12 = 10;
  }

  v13 = a2[v12];
  v14 = v13 - 2;
  if (v13 >= 2)
  {
    if (v12 <= 3)
    {
      v15 = v12;
    }

    else
    {
      v15 = 4;
    }

    if (v15 <= 1)
    {
      if (!v15)
      {
        goto LABEL_18;
      }

      v16 = *a2;
      if (v12 < 4)
      {
LABEL_21:
        if ((v16 | (v14 << (8 * v12))) != 0xFFFFFFFF)
        {
          goto LABEL_22;
        }

LABEL_19:
        v17 = ~v9;
        v18 = *(v7 + 16);
        v18(a1, a2, v6);
        v18((v10 + a1) & v17, (&a2[v10] & v17), v6);
        *(v11 + a1) = a2[v11];
        v19 = 1;
        goto LABEL_23;
      }
    }

    else if (v15 == 2)
    {
      v16 = *a2;
      if (v12 < 4)
      {
        goto LABEL_21;
      }
    }

    else if (v15 == 3)
    {
      v16 = *a2 | (a2[2] << 16);
      if (v12 < 4)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v16 = *a2;
      if (v12 < 4)
      {
        goto LABEL_21;
      }
    }

    v13 = v16 + 2;
  }

LABEL_18:
  if (v13 == 1)
  {
    goto LABEL_19;
  }

LABEL_22:
  v19 = 0;
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 4);
LABEL_23:
  *(a1 + v12) = v19;
  v20 = *(a3 + 16);
  v21 = *(v20 - 8);
  v22 = *(v21 + 80);
  v23 = v12 + v22 + 1;
  v24 = ((v23 + a1) & ~v22);
  v25 = (&a2[v23] & ~v22);
  if ((*(v21 + 48))(v25, 1, v20))
  {
    v26 = *(v21 + 84);
    v27 = *(v21 + 64);
    if (v26)
    {
      v28 = *(v21 + 64);
    }

    else
    {
      v28 = v27 + 1;
    }

    memcpy(v24, v25, v28);
  }

  else
  {
    (*(v21 + 16))(v24, v25, v20);
    v30 = *(v21 + 56);
    v29 = v21 + 56;
    v30(v24, 0, 1, v20);
    v26 = *(v29 + 28);
    v27 = *(v29 + 8);
  }

  if (v26)
  {
    v31 = v27;
  }

  else
  {
    v31 = v27 + 1;
  }

  v32 = *(a3 + 24);
  v33 = *(v32 - 8);
  v34 = *(v33 + 80);
  v35 = v31 + v34;
  v36 = ((v24 + v35) & ~v34);
  v37 = ((v25 + v35) & ~v34);
  if ((*(v33 + 48))(v37, 1, v32))
  {
    v38 = *(v33 + 84);
    v39 = *(v33 + 64);
    if (v38)
    {
      v40 = *(v33 + 64);
    }

    else
    {
      v40 = v39 + 1;
    }

    memcpy(v36, v37, v40);
  }

  else
  {
    (*(v33 + 16))(v36, v37, v32);
    v42 = *(v33 + 56);
    v41 = v33 + 56;
    v42(v36, 0, 1, v32);
    v38 = *(v41 + 28);
    v39 = *(v41 + 8);
  }

  if (v38)
  {
    v43 = v39;
  }

  else
  {
    v43 = v39 + 1;
  }

  *((v36 + v43 + 7) & 0xFFFFFFFFFFFFFFF8) = *((v37 + v43 + 7) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance CustomProgressView<A, B>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getWitnessTable(protocol conformance descriptor for CustomProgressView<A, B>, a3);

  return static UnaryView._makeViewList(view:inputs:)();
}

uint64_t closure #1 in static CustomProgressView._makeView(view:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11[0] = a2;
  v11[1] = a3;
  v11[2] = a4;
  v11[3] = a5;
  v10[2] = type metadata accessor for CustomProgressView(0, v11);
  v6 = type metadata accessor for ProgressViewValue(0);
  v7 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, closure #1 in static PointerOffset.of(_:)partial apply, v10, v6, MEMORY[0x1E69E73E0], v7, MEMORY[0x1E69E7410], v8);
  return v11[0];
}

uint64_t closure #2 in static CustomProgressView._makeView(view:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13[0] = a2;
  v13[1] = a3;
  v13[2] = a4;
  v13[3] = a5;
  v6 = type metadata accessor for CustomProgressView(0, v13);
  v7 = *(v6 + 52);
  v11[2] = v6;
  v12 = type metadata accessor for Optional();
  v8 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + v7, closure #1 in static PointerOffset.of(_:)partial apply, v11, v12, MEMORY[0x1E69E73E0], v8, MEMORY[0x1E69E7410], v9);
  return v13[0];
}

unint64_t instantiation function for generic protocol witness table for ProgressViewStyleConfiguration.Actions(uint64_t a1)
{
  result = lazy protocol witness table accessor for type ProgressViewStyleConfiguration.Actions and conformance ProgressViewStyleConfiguration.Actions();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type ProgressViewStyleConfiguration.CurrentValueLabel and conformance ProgressViewStyleConfiguration.CurrentValueLabel()
{
  result = lazy protocol witness table cache variable for type ProgressViewStyleConfiguration.CurrentValueLabel and conformance ProgressViewStyleConfiguration.CurrentValueLabel;
  if (!lazy protocol witness table cache variable for type ProgressViewStyleConfiguration.CurrentValueLabel and conformance ProgressViewStyleConfiguration.CurrentValueLabel)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ProgressViewStyleConfiguration.CurrentValueLabel, &type metadata for ProgressViewStyleConfiguration.CurrentValueLabel, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ProgressViewStyleConfiguration.CurrentValueLabel and conformance ProgressViewStyleConfiguration.CurrentValueLabel);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ProgressViewStyleConfiguration.CurrentValueLabel and conformance ProgressViewStyleConfiguration.CurrentValueLabel;
  if (!lazy protocol witness table cache variable for type ProgressViewStyleConfiguration.CurrentValueLabel and conformance ProgressViewStyleConfiguration.CurrentValueLabel)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ProgressViewStyleConfiguration.CurrentValueLabel, &type metadata for ProgressViewStyleConfiguration.CurrentValueLabel, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ProgressViewStyleConfiguration.CurrentValueLabel and conformance ProgressViewStyleConfiguration.CurrentValueLabel);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ProgressViewStyleConfiguration.Label and conformance ProgressViewStyleConfiguration.Label()
{
  result = lazy protocol witness table cache variable for type ProgressViewStyleConfiguration.Label and conformance ProgressViewStyleConfiguration.Label;
  if (!lazy protocol witness table cache variable for type ProgressViewStyleConfiguration.Label and conformance ProgressViewStyleConfiguration.Label)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ProgressViewStyleConfiguration.Label, &type metadata for ProgressViewStyleConfiguration.Label, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ProgressViewStyleConfiguration.Label and conformance ProgressViewStyleConfiguration.Label);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ProgressViewStyleConfiguration.Label and conformance ProgressViewStyleConfiguration.Label;
  if (!lazy protocol witness table cache variable for type ProgressViewStyleConfiguration.Label and conformance ProgressViewStyleConfiguration.Label)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ProgressViewStyleConfiguration.Label, &type metadata for ProgressViewStyleConfiguration.Label, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ProgressViewStyleConfiguration.Label and conformance ProgressViewStyleConfiguration.Label);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for ProgressViewStyleConfiguration.Label(uint64_t a1)
{
  result = lazy protocol witness table accessor for type ProgressViewStyleConfiguration.Label and conformance ProgressViewStyleConfiguration.Label();
  *(a1 + 8) = result;
  return result;
}

uint64_t closure #1 in static OptionalSourceWriter._makeInputs(modifier:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11[0] = a2;
  v11[1] = a3;
  v11[2] = a4;
  v11[3] = a5;
  v9[2] = type metadata accessor for OptionalSourceWriter(0, v11);
  v10 = type metadata accessor for Optional();
  v6 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, partial apply for closure #1 in static PointerOffset.of(_:), v9, v10, MEMORY[0x1E69E73E0], v6, MEMORY[0x1E69E7410], v7);
  return v11[0];
}

uint64_t AnySource.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v19[1] = *MEMORY[0x1E69E9840];
  v6 = type metadata accessor for Optional();
  v19[0] = a3;
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E6982090], v6, v19);
  v9 = type metadata accessor for SourceFormula(0, v6, WitnessTable, v8);
  AGCreateWeakAttribute();
  v15 = v5;
  IsNil = type metadata accessor for AnySource.IsNil(0, a2, v10, v11);
  v18 = swift_getWitnessTable(protocol conformance descriptor for AnySource.IsNil<A>, IsNil);
  type metadata accessor for Stack<AnySource>(0, &lazy cache variable for type metadata for Attribute<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E698D388]);
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v15, closure #1 in Attribute.init<A>(_:)partial apply, v16, IsNil, MEMORY[0x1E69E73E0], v12, MEMORY[0x1E69E7410], v13);
  return v9;
}

double static CustomProgressView._makeView(view:inputs:)@<D0>(int *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, double *a7@<X8>)
{
  v11 = *a1;
  v12 = a2[3];
  v43 = a2[2];
  v44 = v12;
  v45 = a2[4];
  v46 = *(a2 + 20);
  v13 = a2[1];
  v41 = *a2;
  v42 = v13;
  LODWORD(v39) = v11;
  *&v33 = a3;
  *(&v33 + 1) = a4;
  *&v34 = a5;
  *(&v34 + 1) = a6;
  type metadata accessor for CustomProgressView(255, &v33);
  type metadata accessor for _GraphValue();
  _GraphValue.value.getter();
  if (*(*(type metadata accessor for ProgressViewValue(0) - 8) + 64))
  {
    closure #1 in static CustomProgressView._makeView(view:inputs:)(1, a3, a4, a5, a6);
  }

  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  LODWORD(v33) = v11;
  _GraphValue.value.getter();
  if (*(*(type metadata accessor for Optional() - 8) + 64))
  {
    closure #2 in static CustomProgressView._makeView(view:inputs:)(1, a3, a4, a5, a6);
  }

  HIDWORD(v27) = AGGraphCreateOffsetAttribute2();
  LODWORD(v33) = v11;
  _GraphValue.value.getter();
  LODWORD(v27) = OffsetAttribute2;
  if (*(*(type metadata accessor for Optional() - 8) + 64))
  {
    closure #3 in static CustomProgressView._makeView(view:inputs:)(1, a3, a4, a5, a6);
  }

  v15 = a3;
  v16 = AGGraphCreateOffsetAttribute2();
  LODWORD(v33) = v11;
  _GraphValue.value.getter();
  closure #4 in static CustomProgressView._makeView(view:inputs:)(1, v15, a4, a5, a6);
  v17 = AGGraphCreateOffsetAttribute2();
  type metadata accessor for ModifiedContent<ResolvedProgressView, OptionalSourceWriter<ProgressViewStyleConfiguration.Actions, AnyView>>(255);
  v18 = lazy protocol witness table accessor for type ProgressViewStyleConfiguration.CurrentValueLabel and conformance ProgressViewStyleConfiguration.CurrentValueLabel();
  *&v33 = &type metadata for ProgressViewStyleConfiguration.CurrentValueLabel;
  *(&v33 + 1) = a4;
  *&v34 = v18;
  *(&v34 + 1) = a6;
  type metadata accessor for OptionalSourceWriter(255, &v33);
  v19 = type metadata accessor for ModifiedContent();
  v20 = lazy protocol witness table accessor for type ProgressViewStyleConfiguration.Label and conformance ProgressViewStyleConfiguration.Label();
  *&v33 = &type metadata for ProgressViewStyleConfiguration.Label;
  *(&v33 + 1) = v15;
  *&v34 = v20;
  *(&v34 + 1) = a5;
  type metadata accessor for OptionalSourceWriter(255, &v33);
  v21 = type metadata accessor for ModifiedContent();
  v39 = v27;
  v40 = COERCE_DOUBLE(__PAIR64__(v17, v16));
  *&v33 = v15;
  *(&v33 + 1) = a4;
  *&v34 = a5;
  *(&v34 + 1) = a6;
  v22 = type metadata accessor for CustomProgressView.Child(0, &v33);
  swift_getWitnessTable(protocol conformance descriptor for CustomProgressView<A, B>.Child, v22);
  _GraphValue.init<A>(_:)();
  v35 = v43;
  v36 = v44;
  v37 = v45;
  v38 = v46;
  v33 = v41;
  v34 = v42;
  v32[0] = lazy protocol witness table accessor for type ModifiedContent<ResolvedProgressView, OptionalSourceWriter<ProgressViewStyleConfiguration.Actions, AnyView>> and conformance <> ModifiedContent<A, B>();
  v32[1] = &protocol witness table for OptionalSourceWriter<A, B>;
  v23 = MEMORY[0x1E697E858];
  v31[0] = swift_getWitnessTable(MEMORY[0x1E697E858], v19, v32);
  v31[1] = &protocol witness table for OptionalSourceWriter<A, B>;
  swift_getWitnessTable(v23, v21, v31);
  static View.makeDebuggableView(view:inputs:)();
  *&v33 = v44;
  DWORD2(v33) = DWORD2(v44);
  v29 = v44;
  v30 = DWORD2(v44);
  if (PreferencesInputs.contains<A>(_:includeHostPreferences:)())
  {
    v24 = PreferencesOutputs.subscript.setter();
    v29 = v33;
    v30 = DWORD2(v33);
    MEMORY[0x1EEE9AC00](v24);
    outlined init with copy of PreferencesInputs(&v33, &v28);
    PreferencesOutputs.makePreferenceWriter<A>(inputs:key:value:)();
  }

  *a7 = v39;
  result = v40;
  a7[1] = v40;
  return result;
}

uint64_t type metadata completion function for ResolvedProgressView(uint64_t a1)
{
  result = type metadata accessor for ProgressViewValue(319);
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void type metadata accessor for OptionalSourceWriter<ProgressViewStyleConfiguration.Actions, AnyView>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for OptionalSourceWriter<ProgressViewStyleConfiguration.Actions, AnyView>)
  {
    v2 = lazy protocol witness table accessor for type ProgressViewStyleConfiguration.Actions and conformance ProgressViewStyleConfiguration.Actions();
    v5[0] = &type metadata for ProgressViewStyleConfiguration.Actions;
    v5[1] = MEMORY[0x1E6981910];
    v5[2] = v2;
    v5[3] = MEMORY[0x1E6981900];
    v3 = type metadata accessor for OptionalSourceWriter(a1, v5);
    if (!v4)
    {
      atomic_store(v3, &lazy cache variable for type metadata for OptionalSourceWriter<ProgressViewStyleConfiguration.Actions, AnyView>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ProgressViewStyleConfiguration.Actions and conformance ProgressViewStyleConfiguration.Actions()
{
  result = lazy protocol witness table cache variable for type ProgressViewStyleConfiguration.Actions and conformance ProgressViewStyleConfiguration.Actions;
  if (!lazy protocol witness table cache variable for type ProgressViewStyleConfiguration.Actions and conformance ProgressViewStyleConfiguration.Actions)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ProgressViewStyleConfiguration.Actions, &type metadata for ProgressViewStyleConfiguration.Actions, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ProgressViewStyleConfiguration.Actions and conformance ProgressViewStyleConfiguration.Actions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ProgressViewStyleConfiguration.Actions and conformance ProgressViewStyleConfiguration.Actions;
  if (!lazy protocol witness table cache variable for type ProgressViewStyleConfiguration.Actions and conformance ProgressViewStyleConfiguration.Actions)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ProgressViewStyleConfiguration.Actions, &type metadata for ProgressViewStyleConfiguration.Actions, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ProgressViewStyleConfiguration.Actions and conformance ProgressViewStyleConfiguration.Actions);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for ProgressViewStyleConfiguration.CurrentValueLabel(uint64_t a1)
{
  result = lazy protocol witness table accessor for type ProgressViewStyleConfiguration.CurrentValueLabel and conformance ProgressViewStyleConfiguration.CurrentValueLabel();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ResolvedProgressView, OptionalSourceWriter<ProgressViewStyleConfiguration.Actions, AnyView>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ResolvedProgressView, OptionalSourceWriter<ProgressViewStyleConfiguration.Actions, AnyView>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ResolvedProgressView, OptionalSourceWriter<ProgressViewStyleConfiguration.Actions, AnyView>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<ResolvedProgressView, OptionalSourceWriter<ProgressViewStyleConfiguration.Actions, AnyView>>(255);
    v4 = v3;
    v5[0] = _s10Foundation4DateVACSLAAWlTm_1(&lazy protocol witness table cache variable for type ResolvedProgressView and conformance ResolvedProgressView, type metadata accessor for ResolvedProgressView, protocol conformance descriptor for ResolvedProgressView);
    v5[1] = &protocol witness table for OptionalSourceWriter<A, B>;
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ResolvedProgressView, OptionalSourceWriter<ProgressViewStyleConfiguration.Actions, AnyView>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t static OptionalSourceWriter._makeInputs(modifier:inputs:)(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v20 = *a1;
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  type metadata accessor for OptionalSourceWriter(255, &v16);
  type metadata accessor for _GraphValue();
  _GraphValue.value.getter();
  if (*(*(type metadata accessor for Optional() - 8) + 64))
  {
    closure #1 in static OptionalSourceWriter._makeInputs(modifier:inputs:)(1, a3, a4, a5, a6);
  }

  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  v16 = AnySource.init<A>(_:)(OffsetAttribute2, a4, a6);
  v17 = v11;
  v18 = v12;
  LODWORD(v19) = v13;
  BYTE4(v19) = BYTE4(v13) & 1;
  v14 = type metadata accessor for SourceInput(0, a3, a5, v13);
  swift_getWitnessTable(protocol conformance descriptor for SourceInput<A>, v14);
  lazy protocol witness table accessor for type AnySource and conformance AnySource();
  return _GraphInputs.append<A, B>(_:to:)();
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance AnySource.IsNil<A>(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for AnySource.IsNil<A>, a1);

  return MEMORY[0x1EEDDE9B8](a1, WitnessTable);
}

uint64_t type metadata completion function for ResolvedProgressViewStyle(uint64_t a1)
{
  result = type metadata accessor for ProgressViewStyleConfiguration(319);
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t type metadata completion function for ProgressViewStyleConfiguration(uint64_t a1)
{
  result = type metadata accessor for ProgressViewValue(319);
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance ResolvedProgressViewStyle(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = _s10Foundation4DateVACSLAAWlTm_2(&lazy protocol witness table cache variable for type ResolvedProgressViewStyle and conformance ResolvedProgressViewStyle, type metadata accessor for ResolvedProgressViewStyle, protocol conformance descriptor for ResolvedProgressViewStyle);

  return MEMORY[0x1EEDDE4C0](a1, a2, a3, v6);
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, IgnoreViewRespondersModifier>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(void), uint64_t a4)
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

void type metadata accessor for ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, IgnoreViewRespondersModifier>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, IgnoreViewRespondersModifier>)
  {
    type metadata accessor for ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>(255, &lazy cache variable for type metadata for ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, type metadata accessor for ProgressView);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, IgnoreViewRespondersModifier>);
    }
  }
}

void type metadata accessor for ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void *))
{
  if (!*a2)
  {
    v8[6] = v3;
    v8[7] = v4;
    v8[0] = &type metadata for ProgressViewStyleConfiguration.Label;
    v8[1] = &type metadata for ProgressViewStyleConfiguration.CurrentValueLabel;
    v8[2] = &protocol witness table for ProgressViewStyleConfiguration.Label;
    v8[3] = &protocol witness table for ProgressViewStyleConfiguration.CurrentValueLabel;
    v6 = a3(0, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void _s7SwiftUI12ProgressViewVyAA0cD18StyleConfigurationV5LabelVAE012CurrentValueG0VGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void *))
{
  if (!*a2)
  {
    v8[6] = v3;
    v8[7] = v4;
    v8[0] = &type metadata for ProgressViewStyleConfiguration.Label;
    v8[1] = &type metadata for ProgressViewStyleConfiguration.CurrentValueLabel;
    v8[2] = &protocol witness table for ProgressViewStyleConfiguration.Label;
    v8[3] = &protocol witness table for ProgressViewStyleConfiguration.CurrentValueLabel;
    v6 = a3(0, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel> and conformance ProgressView<A, B>()
{
  result = lazy protocol witness table cache variable for type ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel> and conformance ProgressView<A, B>;
  if (!lazy protocol witness table cache variable for type ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel> and conformance ProgressView<A, B>)
  {
    type metadata accessor for ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>(255, &lazy cache variable for type metadata for ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, type metadata accessor for ProgressView);
    result = swift_getWitnessTable(protocol conformance descriptor for ProgressView<A, B>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel> and conformance ProgressView<A, B>);
  }

  return result;
}

unsigned __int16 *assignWithCopy for CustomProgressView(unsigned __int16 *a1, unsigned __int16 *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v6 = type metadata accessor for Date();
    v7 = *(v6 - 8);
    v8 = *(v7 + 64);
    v9 = *(v7 + 80);
    v55 = v8 + v9;
    v10 = ((v8 + v9) & ~v9) + v8;
    if ((v10 + 1) > 0xA)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 10;
    }

    v12 = *(a1 + v11);
    v13 = v12 - 2;
    if (v12 < 2)
    {
LABEL_21:
      v16 = ~v9;
      if (v12 == 1)
      {
        v17 = *(v7 + 8);
        v17(a1, v6);
        v17(((a1 + v55) & v16), v6);
      }

      v18 = *(a2 + v11);
      v19 = v18 - 2;
      if (v18 >= 2)
      {
        if (v11 <= 3)
        {
          v20 = v11;
        }

        else
        {
          v20 = 4;
        }

        if (v20 <= 1)
        {
          if (!v20)
          {
            goto LABEL_37;
          }

          v21 = *a2;
          if (v11 < 4)
          {
LABEL_40:
            if ((v21 | (v19 << (8 * v11))) != 0xFFFFFFFF)
            {
              goto LABEL_41;
            }

            goto LABEL_38;
          }
        }

        else if (v20 == 2)
        {
          v21 = *a2;
          if (v11 < 4)
          {
            goto LABEL_40;
          }
        }

        else if (v20 == 3)
        {
          v21 = *a2 | (*(a2 + 2) << 16);
          if (v11 < 4)
          {
            goto LABEL_40;
          }
        }

        else
        {
          v21 = *a2;
          if (v11 < 4)
          {
            goto LABEL_40;
          }
        }

        v18 = v21 + 2;
      }

LABEL_37:
      if (v18 != 1)
      {
LABEL_41:
        v23 = 0;
        v24 = *a2;
        a1[4] = a2[4];
        *a1 = v24;
        goto LABEL_42;
      }

LABEL_38:
      v22 = *(v7 + 16);
      v22(a1, a2, v6);
      v22(((a1 + v55) & v16), ((a2 + v55) & v16), v6);
      *(a1 + v10) = *(a2 + v10);
      v23 = 1;
LABEL_42:
      *(a1 + v11) = v23;
      goto LABEL_43;
    }

    if (v11 <= 3)
    {
      v14 = v11;
    }

    else
    {
      v14 = 4;
    }

    if (v14 > 1)
    {
      if (v14 == 2)
      {
        v15 = *a1;
        if (v11 >= 4)
        {
          goto LABEL_18;
        }
      }

      else
      {
        if (v14 == 3)
        {
          v15 = *a1 | (*(a1 + 2) << 16);
          if (v11 < 4)
          {
            goto LABEL_20;
          }

LABEL_18:
          v12 = v15 + 2;
          goto LABEL_21;
        }

        v15 = *a1;
        if (v11 >= 4)
        {
          goto LABEL_18;
        }
      }

LABEL_20:
      v12 = (v15 | (v13 << (8 * v11))) + 2;
      goto LABEL_21;
    }

    if (!v14)
    {
      goto LABEL_21;
    }

    v15 = *a1;
    if (v11 < 4)
    {
      goto LABEL_20;
    }

    goto LABEL_18;
  }

LABEL_43:
  v25 = *(type metadata accessor for Date() - 8);
  v26 = *(v25 + 64) + ((*(v25 + 64) + *(v25 + 80)) & ~*(v25 + 80));
  v27 = 10;
  if (v26 + 1 > 0xA)
  {
    v27 = v26 + 1;
  }

  v28 = *(a3 + 16);
  v29 = *(v28 - 8);
  v30 = *(v29 + 80);
  v31 = v27 + v30 + 1;
  v32 = ((a1 + v31) & ~v30);
  v33 = ((a2 + v31) & ~v30);
  v34 = *(v29 + 48);
  v35 = v34(v32, 1, v28);
  v36 = v34(v33, 1, v28);
  if (v35)
  {
    if (!v36)
    {
      (*(v29 + 16))(v32, v33, v28);
      (*(v29 + 56))(v32, 0, 1, v28);
      goto LABEL_56;
    }

    v37 = *(v29 + 84);
    v38 = *(v29 + 64);
  }

  else
  {
    if (!v36)
    {
      (*(v29 + 24))(v32, v33, v28);
      goto LABEL_56;
    }

    (*(v29 + 8))(v32, v28);
    v37 = *(v29 + 84);
    v38 = *(v29 + 64);
  }

  if (v37)
  {
    v39 = v38;
  }

  else
  {
    v39 = v38 + 1;
  }

  memcpy(v32, v33, v39);
LABEL_56:
  v40 = *(v29 + 64);
  if (!*(v29 + 84))
  {
    ++v40;
  }

  v41 = *(a3 + 24);
  v42 = *(v41 - 8);
  v43 = *(v42 + 80);
  v44 = v40 + v43;
  v45 = ((v32 + v44) & ~v43);
  v46 = ((v33 + v44) & ~v43);
  v47 = *(v42 + 48);
  v48 = v47(v45, 1, v41);
  v49 = v47(v46, 1, v41);
  if (v48)
  {
    if (!v49)
    {
      (*(v42 + 16))(v45, v46, v41);
      (*(v42 + 56))(v45, 0, 1, v41);
      goto LABEL_69;
    }

    v50 = *(v42 + 84);
    v51 = *(v42 + 64);
  }

  else
  {
    if (!v49)
    {
      (*(v42 + 24))(v45, v46, v41);
      goto LABEL_69;
    }

    (*(v42 + 8))(v45, v41);
    v50 = *(v42 + 84);
    v51 = *(v42 + 64);
  }

  if (v50)
  {
    v52 = v51;
  }

  else
  {
    v52 = v51 + 1;
  }

  memcpy(v45, v46, v52);
LABEL_69:
  if (*(v42 + 84))
  {
    v53 = *(v42 + 64);
  }

  else
  {
    v53 = *(v42 + 64) + 1;
  }

  *((v45 + v53 + 7) & 0xFFFFFFFFFFFFFFF8) = *((v46 + v53 + 7) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t outlined init with copy of ProgressViewValue(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _s7SwiftUI17ProgressViewValueOWOcTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _s7SwiftUI17ProgressViewValueOWOcTm_1(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t View.optionalViewAlias<A, B>(_:_:)(uint64_t a1, void (*a2)(double), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v25 = a7;
  v24 = a4;
  v13 = type metadata accessor for Optional();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v23 - v15;
  v26[0] = a5;
  v26[1] = a6;
  v26[2] = a8;
  v26[3] = a9;
  v17 = type metadata accessor for OptionalSourceWriter(0, v26);
  v18 = *(v17 - 8);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v23 - v20;
  a2(v19);
  (*(v14 + 32))(v21, v16, v13);
  MEMORY[0x18D00A570](v21, v24, v17, v25);
  return (*(v18 + 8))(v21, v17);
}

uint64_t partial apply for closure #2 in CustomProgressView.Child.value.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Optional();
  Value = AGGraphGetValue();
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, Value, v2);
}

uint64_t outlined destroy of ClosedRange<Date>(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _sSNy10Foundation4DateVGWOhTm_0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _sSNy10Foundation4DateVGWOhTm_1(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _sSNy10Foundation4DateVGWOhTm_2(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _sSNy10Foundation4DateVGWOhTm_3(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _sSNy10Foundation4DateVGWOhTm_4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  type metadata accessor for ClosedRange<Date>(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

BOOL protocol witness for Rule.value.getter in conformance AnySource.IsNil<A>@<W0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = AnySource.IsNil.value.getter(*v2, *(a1 + 16));
  *a2 = result;
  return result;
}

BOOL AnySource.IsNil.value.getter(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Optional();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - v5;
  Optional<A>.ChildTableColumn.content.getter(&v9 - v5);
  v7 = (*(*(a2 - 8) + 48))(v6, 1, a2) == 1;
  (*(v4 + 8))(v6, v3);
  return v7;
}

uint64_t ResolvedProgressView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for ProgressViewValue(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v22 - v8;
  v10 = type metadata accessor for ProgressViewStyleConfiguration(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of ProgressViewValue(v2, v9, type metadata accessor for ProgressViewValue);
  v13 = type metadata accessor for ResolvedProgressView(0);
  v14 = *(v2 + v13[5]);
  v15 = *(v2 + v13[6]);
  v16 = *(v2 + v13[7]);
  outlined init with copy of ProgressViewValue(v9, v6, type metadata accessor for ProgressViewValue);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    _sSNy10Foundation4DateVGWOhTm_1(v6, type metadata accessor for ClosedRange<Date>);
    v17 = 0;
    v18 = 0;
    v19 = 1;
  }

  else
  {
    v18 = *v6;
    v19 = v6[8];
    v17 = v6[9];
  }

  _sSNy10Foundation4DateVGWObTm_0(v9, v12, type metadata accessor for ProgressViewValue);
  v20 = &v12[v10[5]];
  *v20 = v18;
  v20[8] = v19;
  v12[v10[6]] = v17;
  v12[v10[7]] = v14 ^ 1;
  v12[v10[8]] = v15 ^ 1;
  v12[v10[9]] = v16 ^ 1;
  return _sSNy10Foundation4DateVGWObTm_0(v12, a1, type metadata accessor for ProgressViewStyleConfiguration);
}

uint64_t ResolvedProgressViewStyle.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for ProgressViewStyleConfiguration(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v24 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v24 - v10;
  type metadata accessor for ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>(0, &lazy cache variable for type metadata for ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, type metadata accessor for ProgressView);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v24 - v13;
  _s7SwiftUI17ProgressViewValueOWOcTm_0(v1, v11, type metadata accessor for ProgressViewStyleConfiguration);
  _s7SwiftUI17ProgressViewValueOWOcTm_0(v11, v8, type metadata accessor for ProgressViewStyleConfiguration);
  type metadata accessor for ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>(0, &lazy cache variable for type metadata for CustomProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, type metadata accessor for CustomProgressView);
  v16 = v15;
  v17 = *(v15 + 52);
  v14[v17] = 1;
  v18 = *(v15 + 56);
  v14[v18] = 1;
  _s7SwiftUI17ProgressViewValueOWOcTm_0(v8, v14, type metadata accessor for ProgressViewValue);
  v14[v17] = v8[v3[7]];
  v14[v18] = v8[v3[8]];
  if (v8[v3[9]])
  {
    _sSNy10Foundation4DateVGWOhTm_2(v8, type metadata accessor for ProgressViewStyleConfiguration);
    v19 = 0;
  }

  else
  {
    v19 = AnyView.init<A>(_:)();
    _sSNy10Foundation4DateVGWOhTm_2(v8, type metadata accessor for ProgressViewStyleConfiguration);
  }

  *&v14[*(v16 + 60)] = v19;
  _sSNy10Foundation4DateVGWOhTm_2(v11, type metadata accessor for ProgressViewStyleConfiguration);
  type metadata accessor for ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>(0, &lazy cache variable for type metadata for ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>.Base, type metadata accessor for ProgressView.Base);
  swift_storeEnumTagMultiPayload();
  _s7SwiftUI17ProgressViewValueOWOcTm_0(v1, v5, type metadata accessor for ProgressViewStyleConfiguration);
  v20 = &v5[v3[5]];
  v21 = *v20;
  v22 = v20[8];
  _sSNy10Foundation4DateVGWOhTm_2(v5, type metadata accessor for ProgressViewStyleConfiguration);
  specialized AccessibilityProgressViewModifier.body(content:)(v14, v21, v22, a1);
  return outlined destroy of ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>(v14);
}

uint64_t specialized AccessibilityProgressViewModifier.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  type metadata accessor for ModifiedContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, IgnoreViewRespondersModifier>, AccessibilityAttachmentModifier>(0);
  v9 = v8 - 8;
  MEMORY[0x1EEE9AC00](v8);
  v11 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, IgnoreViewRespondersModifier>(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>(a1, v14);
  type metadata accessor for ProgressViewStyleModifier<DefaultProgressViewStyle>(0, &lazy cache variable for type metadata for AccessibilityChildBehaviorBox<AccessibilityChildBehavior.Combine>, lazy protocol witness table accessor for type AccessibilityChildBehavior.Combine and conformance AccessibilityChildBehavior.Combine, &type metadata for AccessibilityChildBehavior.Combine, type metadata accessor for AccessibilityChildBehaviorBox);
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  AccessibilityProperties.init(reserving:)();
  static AccessibilityAttachment.properties(_:)();
  outlined destroy of AccessibilityProperties(&v25);
  _s7SwiftUI10MutableBoxCyAA23AccessibilityAttachmentVGMaTm_1(0, &lazy cache variable for type metadata for MutableBox<AccessibilityAttachment>, MEMORY[0x1E697FFF0], MEMORY[0x1E697DAC0]);
  v16 = swift_allocObject();
  memcpy((v16 + 16), v24, 0x128uLL);
  _s7SwiftUI17ProgressViewValueOWOcTm_0(v14, v11, type metadata accessor for ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, IgnoreViewRespondersModifier>);
  v17 = &v11[*(v9 + 44)];
  *v17 = v16;
  v17[1] = v15;
  AccessibilityTraitSet.init(traits:)();
  v18 = v23[14];
  swift_beginAccess();
  closure #1 in ModifiedContent<>.accessibilityTraits(_:)(v16 + 16, 0, v18);
  outlined init with take of ProgressViewValue(v11, a4, type metadata accessor for ModifiedContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, IgnoreViewRespondersModifier>, AccessibilityAttachmentModifier>);
  v19 = (a4 + *(v9 + 44));
  v20 = *v19;
  swift_beginAccess();
  closure #1 in ModifiedContent<>.accessibilityVisibility(_:)(v20 + 16, 0x4000000040uLL);
  _sSNy10Foundation4DateVGWOhTm_2(v14, type metadata accessor for ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, IgnoreViewRespondersModifier>);
  closure #1 in ModifiedContent<>.accessibilityTraits(_:)(v20 + 16, 1024, 1024);
  v25 = a2;
  v26 = a3 & 1;
  v27 = 0;
  lazy protocol witness table accessor for type AccessibilityProgressValue and conformance AccessibilityProgressValue();
  lazy protocol witness table accessor for type AccessibilityProgressValue and conformance AccessibilityProgressValue();
  lazy protocol witness table accessor for type AccessibilityProgressValue and conformance AccessibilityProgressValue();
  AccessibilityValueStorage.init<A>(_:description:)();
  v21 = *v19;
  swift_beginAccess();
  outlined init with copy of AccessibilityValueStorage(v24, &v25);

  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF7SwiftUI25AccessibilityValueStorageV_s5NeverOSbTg503_s7c25UI15ModifiedContentVA2A31e59AttachmentModifierVRs_rlE18accessibilityValueyACyxAEGAA0eI7G35VFyAA0E10PropertiesVzXEfU_SbAIXEfU_AFTf1cn_n(v21 + 80, &v25);
  outlined destroy of AccessibilityValueStorage?(v21 + 80);
  outlined init with copy of AccessibilityValueStorage(&v25, v21 + 80);
  outlined destroy of AccessibilityValueStorage(&v25);
  swift_endAccess();
  outlined destroy of AccessibilityValueStorage(v24);
}

uint64_t _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF7SwiftUI25AccessibilityValueStorageV_s5NeverOSbTg503_s7c25UI15ModifiedContentVA2A31e59AttachmentModifierVRs_rlE18accessibilityValueyACyxAEGAA0eI7G35VFyAA0E10PropertiesVzXEfU_SbAIXEfU_AFTf1cn_n(uint64_t a1, uint64_t a2)
{
  outlined init with copy of AccessibilityValueStorage?(a1, &v6);
  if (*(&v7 + 1) == 1)
  {
    return 2;
  }

  v5[0] = v6;
  v5[1] = v7;
  v5[2] = v8;
  closure #1 in closure #1 in ModifiedContent<>.accessibilityValue(_:)(v5, a2, &v9);
  if (v2)
  {
    result = outlined destroy of AccessibilityValueStorage(v5);
    __break(1u);
  }

  else
  {
    outlined destroy of AccessibilityValueStorage(v5);
    return v9;
  }

  return result;
}

uint64_t outlined init with copy of AccessibilityValueStorage?(uint64_t a1, uint64_t a2)
{
  _s7SwiftUI7BindingVySbGMaTm_1(0, &lazy cache variable for type metadata for AccessibilityValueStorage?, MEMORY[0x1E69804E0], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>(uint64_t a1)
{
  type metadata accessor for ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>(0, &lazy cache variable for type metadata for ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, type metadata accessor for ProgressView);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type ProgressViewStyleModifier<DefaultProgressViewStyle> and conformance ProgressViewStyleModifier<A>()
{
  result = lazy protocol witness table cache variable for type ProgressViewStyleModifier<DefaultProgressViewStyle> and conformance ProgressViewStyleModifier<A>;
  if (!lazy protocol witness table cache variable for type ProgressViewStyleModifier<DefaultProgressViewStyle> and conformance ProgressViewStyleModifier<A>)
  {
    type metadata accessor for ProgressViewStyleModifier<DefaultProgressViewStyle>(255, &lazy cache variable for type metadata for ProgressViewStyleModifier<DefaultProgressViewStyle>, lazy protocol witness table accessor for type DefaultProgressViewStyle and conformance DefaultProgressViewStyle, &type metadata for DefaultProgressViewStyle, type metadata accessor for ProgressViewStyleModifier);
    result = swift_getWitnessTable(protocol conformance descriptor for ProgressViewStyleModifier<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ProgressViewStyleModifier<DefaultProgressViewStyle> and conformance ProgressViewStyleModifier<A>);
  }

  return result;
}

void type metadata accessor for ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<LinearProgressViewStyle>>(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(void), uint64_t a5)
{
  if (!*a2)
  {
    _s7SwiftUI12ProgressViewVyAA0cD18StyleConfigurationV5LabelVAE012CurrentValueG0VGMaTm_0(255, &lazy cache variable for type metadata for ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, type metadata accessor for ProgressView);
    type metadata accessor for ProgressViewStyleModifier<CircularProgressViewStyle>(255, a3, a4, a5);
    v9 = type metadata accessor for ModifiedContent();
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void type metadata accessor for _ConditionalContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<CircularProgressViewStyle>>, _ConditionalContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<LinearProgressViewStyle>>, _ConditionalContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<LinearProgressViewStyle>>, ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<CircularProgressViewStyle>>>>>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    type metadata accessor for ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<LinearProgressViewStyle>>(255, &lazy cache variable for type metadata for ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<CircularProgressViewStyle>>, &lazy cache variable for type metadata for ProgressViewStyleModifier<CircularProgressViewStyle>, lazy protocol witness table accessor for type CircularProgressViewStyle and conformance CircularProgressViewStyle, &type metadata for CircularProgressViewStyle);
    v7 = v6;
    type metadata accessor for _ConditionalContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<LinearProgressViewStyle>>, _ConditionalContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<LinearProgressViewStyle>>, ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<CircularProgressViewStyle>>>>.Storage(255, &lazy cache variable for type metadata for _ConditionalContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<LinearProgressViewStyle>>, _ConditionalContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<LinearProgressViewStyle>>, ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<CircularProgressViewStyle>>>>, MEMORY[0x1E697F960]);
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void type metadata accessor for Group<_ConditionalContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<CircularProgressViewStyle>>, _ConditionalContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<LinearProgressViewStyle>>, _ConditionalContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<LinearProgressViewStyle>>, ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<CircularProgressViewStyle>>>>>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Group<_ConditionalContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<CircularProgressViewStyle>>, _ConditionalContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<LinearProgressViewStyle>>, _ConditionalContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<LinearProgressViewStyle>>, ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<CircularProgressViewStyle>>>>>>)
  {
    type metadata accessor for _ConditionalContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<CircularProgressViewStyle>>, _ConditionalContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<LinearProgressViewStyle>>, _ConditionalContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<LinearProgressViewStyle>>, ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<CircularProgressViewStyle>>>>>(255, &lazy cache variable for type metadata for _ConditionalContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<CircularProgressViewStyle>>, _ConditionalContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<LinearProgressViewStyle>>, _ConditionalContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<LinearProgressViewStyle>>, ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<CircularProgressViewStyle>>>>>, MEMORY[0x1E697F960]);
    v1 = type metadata accessor for Group();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Group<_ConditionalContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<CircularProgressViewStyle>>, _ConditionalContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<LinearProgressViewStyle>>, _ConditionalContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<LinearProgressViewStyle>>, ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<CircularProgressViewStyle>>>>>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type Group<_ConditionalContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<CircularProgressViewStyle>>, _ConditionalContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<LinearProgressViewStyle>>, _ConditionalContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<LinearProgressViewStyle>>, ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<CircularProgressViewStyle>>>>>> and conformance <A> Group<A>()
{
  result = lazy protocol witness table cache variable for type Group<_ConditionalContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<CircularProgressViewStyle>>, _ConditionalContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<LinearProgressViewStyle>>, _ConditionalContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<LinearProgressViewStyle>>, ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<CircularProgressViewStyle>>>>>> and conformance <A> Group<A>;
  if (!lazy protocol witness table cache variable for type Group<_ConditionalContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<CircularProgressViewStyle>>, _ConditionalContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<LinearProgressViewStyle>>, _ConditionalContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<LinearProgressViewStyle>>, ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<CircularProgressViewStyle>>>>>> and conformance <A> Group<A>)
  {
    v5[3] = v0;
    v5[4] = v1;
    type metadata accessor for Group<_ConditionalContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<CircularProgressViewStyle>>, _ConditionalContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<LinearProgressViewStyle>>, _ConditionalContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<LinearProgressViewStyle>>, ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<CircularProgressViewStyle>>>>>>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<CircularProgressViewStyle>>, _ConditionalContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<LinearProgressViewStyle>>, _ConditionalContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<LinearProgressViewStyle>>, ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<CircularProgressViewStyle>>>>> and conformance <> _ConditionalContent<A, B>();
    result = swift_getWitnessTable(MEMORY[0x1E6981600], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type Group<_ConditionalContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<CircularProgressViewStyle>>, _ConditionalContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<LinearProgressViewStyle>>, _ConditionalContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<LinearProgressViewStyle>>, ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<CircularProgressViewStyle>>>>>> and conformance <A> Group<A>);
  }

  return result;
}

void type metadata accessor for ProgressViewStyleModifier<CircularProgressViewStyle>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  if (!*a2)
  {
    v7 = a3();
    v9 = type metadata accessor for ProgressViewStyleModifier(a1, a4, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type CircularProgressViewStyle and conformance CircularProgressViewStyle()
{
  result = lazy protocol witness table cache variable for type CircularProgressViewStyle and conformance CircularProgressViewStyle;
  if (!lazy protocol witness table cache variable for type CircularProgressViewStyle and conformance CircularProgressViewStyle)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for CircularProgressViewStyle, &type metadata for CircularProgressViewStyle, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type CircularProgressViewStyle and conformance CircularProgressViewStyle);
  }

  return result;
}

void type metadata accessor for _ConditionalContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<LinearProgressViewStyle>>, _ConditionalContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<LinearProgressViewStyle>>, ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<CircularProgressViewStyle>>>>.Storage(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    type metadata accessor for ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<LinearProgressViewStyle>>(255, &lazy cache variable for type metadata for ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<LinearProgressViewStyle>>, &lazy cache variable for type metadata for ProgressViewStyleModifier<LinearProgressViewStyle>, lazy protocol witness table accessor for type LinearProgressViewStyle and conformance LinearProgressViewStyle, &type metadata for LinearProgressViewStyle);
    v7 = v6;
    type metadata accessor for _ConditionalContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<LinearProgressViewStyle>>, ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<CircularProgressViewStyle>>>(255, &lazy cache variable for type metadata for _ConditionalContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<LinearProgressViewStyle>>, ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<CircularProgressViewStyle>>>, MEMORY[0x1E697F960]);
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type LinearProgressViewStyle and conformance LinearProgressViewStyle()
{
  result = lazy protocol witness table cache variable for type LinearProgressViewStyle and conformance LinearProgressViewStyle;
  if (!lazy protocol witness table cache variable for type LinearProgressViewStyle and conformance LinearProgressViewStyle)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for LinearProgressViewStyle, &type metadata for LinearProgressViewStyle, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type LinearProgressViewStyle and conformance LinearProgressViewStyle);
  }

  return result;
}

void type metadata accessor for _ConditionalContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<LinearProgressViewStyle>>, ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<CircularProgressViewStyle>>>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    type metadata accessor for ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<LinearProgressViewStyle>>(255, &lazy cache variable for type metadata for ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<LinearProgressViewStyle>>, &lazy cache variable for type metadata for ProgressViewStyleModifier<LinearProgressViewStyle>, lazy protocol witness table accessor for type LinearProgressViewStyle and conformance LinearProgressViewStyle, &type metadata for LinearProgressViewStyle);
    v7 = v6;
    type metadata accessor for ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<LinearProgressViewStyle>>(255, &lazy cache variable for type metadata for ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<CircularProgressViewStyle>>, &lazy cache variable for type metadata for ProgressViewStyleModifier<CircularProgressViewStyle>, lazy protocol witness table accessor for type CircularProgressViewStyle and conformance CircularProgressViewStyle, &type metadata for CircularProgressViewStyle);
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<CircularProgressViewStyle>>, _ConditionalContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<LinearProgressViewStyle>>, _ConditionalContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<LinearProgressViewStyle>>, ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<CircularProgressViewStyle>>>>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<CircularProgressViewStyle>>, _ConditionalContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<LinearProgressViewStyle>>, _ConditionalContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<LinearProgressViewStyle>>, ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<CircularProgressViewStyle>>>>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<CircularProgressViewStyle>>, _ConditionalContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<LinearProgressViewStyle>>, _ConditionalContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<LinearProgressViewStyle>>, ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<CircularProgressViewStyle>>>>> and conformance <> _ConditionalContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for _ConditionalContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<CircularProgressViewStyle>>, _ConditionalContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<LinearProgressViewStyle>>, _ConditionalContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<LinearProgressViewStyle>>, ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<CircularProgressViewStyle>>>>>(255, &lazy cache variable for type metadata for _ConditionalContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<CircularProgressViewStyle>>, _ConditionalContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<LinearProgressViewStyle>>, _ConditionalContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<LinearProgressViewStyle>>, ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<CircularProgressViewStyle>>>>>, MEMORY[0x1E697F960]);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<CircularProgressViewStyle>> and conformance <> ModifiedContent<A, B>();
    v5[1] = lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<LinearProgressViewStyle>>, _ConditionalContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<LinearProgressViewStyle>>, ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<CircularProgressViewStyle>>>> and conformance <> _ConditionalContent<A, B>();
    result = swift_getWitnessTable(MEMORY[0x1E697F968], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<CircularProgressViewStyle>>, _ConditionalContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<LinearProgressViewStyle>>, _ConditionalContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<LinearProgressViewStyle>>, ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<CircularProgressViewStyle>>>>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<CircularProgressViewStyle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<CircularProgressViewStyle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<CircularProgressViewStyle>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<LinearProgressViewStyle>>(255, &lazy cache variable for type metadata for ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<CircularProgressViewStyle>>, &lazy cache variable for type metadata for ProgressViewStyleModifier<CircularProgressViewStyle>, lazy protocol witness table accessor for type CircularProgressViewStyle and conformance CircularProgressViewStyle, &type metadata for CircularProgressViewStyle);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel> and conformance ProgressView<A, B>();
    v5[1] = &protocol witness table for ProgressViewStyleModifier<A>;
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<CircularProgressViewStyle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<LinearProgressViewStyle>>, ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<CircularProgressViewStyle>>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<LinearProgressViewStyle>>, ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<CircularProgressViewStyle>>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<LinearProgressViewStyle>>, ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<CircularProgressViewStyle>>> and conformance <> _ConditionalContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for _ConditionalContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<LinearProgressViewStyle>>, ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<CircularProgressViewStyle>>>(255, &lazy cache variable for type metadata for _ConditionalContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<LinearProgressViewStyle>>, ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<CircularProgressViewStyle>>>, MEMORY[0x1E697F960]);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<LinearProgressViewStyle>> and conformance <> ModifiedContent<A, B>();
    v5[1] = lazy protocol witness table accessor for type ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<CircularProgressViewStyle>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable(MEMORY[0x1E697F968], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<LinearProgressViewStyle>>, ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<CircularProgressViewStyle>>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

uint64_t ProgressViewStyleModifier.styleBody(configuration:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v3 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v15 - v11;
  (*(v3 + 24))(a1, v4, v3, v10);
  swift_getAssociatedConformanceWitness();
  static ViewBuilder.buildExpression<A>(_:)();
  v13 = *(v6 + 8);
  v13(v8, AssociatedTypeWitness);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v13)(v12, AssociatedTypeWitness);
}

uint64_t destroy for LinearProgressViewStyle(uint64_t a1)
{
  outlined consume of Environment<Color?>.Content(*a1);
  outlined consume of Environment<Bool>.Content(*(a1 + 16), *(a1 + 24));
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance ProgressViewStyleModifier<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ProgressViewStyleModifier<A>, a5);

  return MEMORY[0x1EEDDE4A8](a1, a2, a3, a4, a5, WitnessTable);
}

unsigned __int16 *assignWithCopy for ProgressView(unsigned __int16 *a1, unsigned __int16 *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v61 = type metadata accessor for Date();
    v6 = *(*(v61 - 8) + 64);
    v60 = *(v61 - 8);
    v7 = *(v60 + 80);
    v59 = v6 + v7;
    v8 = ((v6 + v7) & ~v7) + v6;
    v57 = v8;
    if ((v8 + 1) > 0xA)
    {
      v9 = v8 + 1;
    }

    else
    {
      v9 = 10;
    }

    v10 = *(a3 + 16);
    v11 = *(a3 + 24);
    v12 = *(v10 - 8);
    v13 = *(v12 + 80);
    v65 = v9 + v13 + 1;
    if (*(v12 + 84))
    {
      v14 = *(v12 + 64);
    }

    else
    {
      v14 = *(v12 + 64) + 1;
    }

    v15 = *(v11 - 8);
    v16 = *(v15 + 80);
    __n = v14;
    v17 = (v14 + v16 + (v65 & ~v13)) & ~v16;
    v68 = v15;
    if (*(v15 + 84))
    {
      v18 = *(*(v11 - 8) + 64);
    }

    else
    {
      v18 = *(*(v11 - 8) + 64) + 1;
    }

    v66 = v18 + 7;
    v19 = 64;
    if (((v18 + 7 + v17) & 0xFFFFFFFFFFFFFFF8) + 8 > 0x40)
    {
      v19 = ((v18 + 7 + v17) & 0xFFFFFFFFFFFFFFF8) + 8;
    }

    v20 = *(a1 + v19);
    v69 = v19;
    v21 = v19;
    if (v20 >= 2 && v19 != 0)
    {
      v20 = *a1 + 2;
    }

    v58 = ~v7;
    v64 = ~v13;
    v63 = ~v16;
    if (v20 == 1)
    {
      v23 = *(a3 + 16);

      if (*(a1 + 4))
      {
      }

      goto LABEL_45;
    }

    v24 = *(a1 + v9);
    v25 = v24 - 2;
    if (v24 >= 2)
    {
      if (v9 <= 3)
      {
        v26 = v9;
      }

      else
      {
        v26 = 4;
      }

      if (v26 > 1)
      {
        if (v26 == 2)
        {
          v27 = *a1;
          if (v9 < 4)
          {
            goto LABEL_37;
          }
        }

        else
        {
          if (v26 == 3)
          {
            v27 = *a1 | (*(a1 + 2) << 16);
            if (v9 < 4)
            {
              goto LABEL_37;
            }

            goto LABEL_35;
          }

          v27 = *a1;
          if (v9 < 4)
          {
LABEL_37:
            v24 = (v27 | (v25 << (8 * v9))) + 2;
            goto LABEL_38;
          }
        }

LABEL_35:
        v24 = v27 + 2;
        goto LABEL_38;
      }

      if (v26)
      {
        v27 = *a1;
        if (v9 < 4)
        {
          goto LABEL_37;
        }

        goto LABEL_35;
      }
    }

LABEL_38:
    v62 = v18;
    if (v24 == 1)
    {
      v28 = *(a3 + 16);
      v29 = v11;
      v30 = *(v60 + 8);
      v30(a1, v61);
      v30(((a1 + v59) & v58), v61);
      v11 = v29;
      v10 = v28;
    }

    v31 = (a1 + v65) & v64;
    v23 = v10;
    if (!(*(v12 + 48))(v31, 1, v10))
    {
      (*(v12 + 8))(v31, v23);
    }

    v32 = (v31 + __n + v16) & v63;
    if (!(*(v68 + 48))(v32, 1, v11))
    {
      (*(v68 + 8))(v32, v11);
    }

    v18 = v62;
LABEL_45:

    v33 = *(a2 + v69);
    if (v21)
    {
      v34 = v33 >= 2;
    }

    else
    {
      v34 = 0;
    }

    if (v34)
    {
      v33 = *a2 + 2;
    }

    if (v33 == 1)
    {
      v35 = *a2;
      *a1 = *a2;
      v36 = *(a2 + 4);
      v37 = v35;
      if (v36)
      {
        *(a1 + 1) = *(a2 + 1);
        *(a1 + 16) = *(a2 + 16);
        *(a1 + 3) = *(a2 + 3);
        *(a1 + 4) = *(a2 + 4);
        *(a1 + 5) = *(a2 + 5);
        *(a1 + 6) = *(a2 + 6);
      }

      else
      {
        v42 = *(a2 + 4);
        v43 = *(a2 + 20);
        *(a1 + 12) = *(a2 + 12);
        *(a1 + 20) = v43;
        *(a1 + 4) = v42;
      }

      v44 = a1 + 28;
      v45 = a2 + 28;
      v46 = 1;
LABEL_82:
      *v44 = *v45;
      *(a1 + v69) = v46;

      return a1;
    }

    v38 = *(a2 + v9);
    v39 = v38 - 2;
    if (v38 >= 2)
    {
      if (v9 <= 3)
      {
        v40 = v9;
      }

      else
      {
        v40 = 4;
      }

      if (v40 > 1)
      {
        if (v40 == 2)
        {
          v41 = *a2;
          if (v9 < 4)
          {
            goto LABEL_71;
          }
        }

        else
        {
          if (v40 == 3)
          {
            v41 = *a2 | (*(a2 + 2) << 16);
            if (v9 < 4)
            {
              goto LABEL_71;
            }

            goto LABEL_69;
          }

          v41 = *a2;
          if (v9 < 4)
          {
LABEL_71:
            v38 = (v41 | (v39 << (8 * v9))) + 2;
            goto LABEL_72;
          }
        }

LABEL_69:
        v38 = v41 + 2;
        goto LABEL_72;
      }

      if (v40)
      {
        v41 = *a2;
        if (v9 < 4)
        {
          goto LABEL_71;
        }

        goto LABEL_69;
      }
    }

LABEL_72:
    v56 = v11;
    if (v38 == 1)
    {
      v47 = *(v60 + 16);
      v47(a1, a2, v61);
      v47(((a1 + v59) & v58), ((a2 + v59) & v58), v61);
      *(a1 + v57) = *(a2 + v57);
      v48 = 1;
    }

    else
    {
      v48 = 0;
      v49 = *a2;
      a1[4] = a2[4];
      *a1 = v49;
    }

    *(a1 + v9) = v48;
    v50 = ((a1 + v65) & v64);
    v51 = ((a2 + v65) & v64);
    if ((*(v12 + 48))(v51, 1, v23))
    {
      memcpy(v50, v51, __n);
    }

    else
    {
      (*(v12 + 16))(v50, v51, v23);
      (*(v12 + 56))(v50, 0, 1, v23);
    }

    v52 = &v51[__n];
    v53 = ((v50 + __n + v16) & v63);
    v54 = (&v52[v16] & v63);
    if ((*(v68 + 48))(v54, 1, v56))
    {
      memcpy(v53, v54, v18);
    }

    else
    {
      (*(v68 + 16))(v53, v54, v56);
      (*(v68 + 56))(v53, 0, 1, v56);
    }

    v46 = 0;
    v44 = ((v53 + v66) & 0xFFFFFFFFFFFFFFF8);
    v45 = ((v54 + v66) & 0xFFFFFFFFFFFFFFF8);
    goto LABEL_82;
  }

  return a1;
}

uint64_t assignWithCopy for LinearProgressViewStyle(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  outlined copy of Environment<Color?>.Content(*a2);
  v6 = *a1;
  *a1 = v4;
  *(a1 + 8) = v5;
  outlined consume of Environment<Color?>.Content(v6);
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  outlined copy of Environment<Bool>.Content();
  v9 = *(a1 + 16);
  v10 = *(a1 + 24);
  *(a1 + 16) = v7;
  *(a1 + 24) = v8;
  outlined consume of Environment<Bool>.Content(v9, v10);
  *(a1 + 32) = *(a2 + 32);

  return a1;
}

void type metadata accessor for VStack<TupleView<(StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ArchivableCircularProgressView, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, CircularUIKitProgressView, CircularUIKitProgressView>>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ModifiedContent<VStack<TupleView<(HStack<ProgressViewStyleConfiguration.Label?>, ModifiedContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, _EnvironmentKeyWritingModifier<Font?>>)>>, _EnvironmentKeyWritingModifier<Color?>>??, ModifiedContent<VStack<TupleView<(HStack<ProgressViewStyleConfiguration.Label?>, ModifiedContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, _EnvironmentKeyWritingModifier<Font?>>)>>, _EnvironmentKeyWritingModifier<Color?>>?>)>>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    lazy protocol witness table accessor for type TupleView<(HStack<ProgressViewStyleConfiguration.Label?>, ModifiedContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, _EnvironmentKeyWritingModifier<Font?>>)> and conformance TupleView<A>(a4, a5, MEMORY[0x1E6981F48]);
    v8 = type metadata accessor for VStack();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void type metadata accessor for ModifiedContent<VStack<TupleView<(HStack<ProgressViewStyleConfiguration.Label?>, ModifiedContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, _EnvironmentKeyWritingModifier<Font?>>)>>, _EnvironmentKeyWritingModifier<Color?>>??(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

void type metadata accessor for HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>)
  {
    type metadata accessor for AnyAccessibilityValue?(255, &lazy cache variable for type metadata for ProgressViewStyleConfiguration.CurrentValueLabel?, &type metadata for ProgressViewStyleConfiguration.CurrentValueLabel);
    lazy protocol witness table accessor for type EnvironmentValues.SearchCustomAccessory? and conformance <A> A?(&lazy protocol witness table cache variable for type ProgressViewStyleConfiguration.CurrentValueLabel? and conformance <A> A?, &lazy cache variable for type metadata for ProgressViewStyleConfiguration.CurrentValueLabel?, &type metadata for ProgressViewStyleConfiguration.CurrentValueLabel, &protocol witness table for ProgressViewStyleConfiguration.CurrentValueLabel);
    v1 = type metadata accessor for HStack();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>);
    }
  }
}

void type metadata accessor for ModifiedContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, _EnvironmentKeyWritingModifier<Font?>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, _EnvironmentKeyWritingModifier<Font?>>)
  {
    type metadata accessor for HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>(255);
    type metadata accessor for _EnvironmentKeyWritingModifier<ColorScheme?>(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Font?>, &lazy cache variable for type metadata for Font?, MEMORY[0x1E6980F50]);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, _EnvironmentKeyWritingModifier<Font?>>);
    }
  }
}

void type metadata accessor for _EnvironmentKeyWritingModifier<ColorScheme?>(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    type metadata accessor for AnyAccessibilityValue?(255, a3, a4);
    v5 = type metadata accessor for _EnvironmentKeyWritingModifier();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t lazy protocol witness table accessor for type TupleView<(HStack<ProgressViewStyleConfiguration.Label?>, ModifiedContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, _EnvironmentKeyWritingModifier<Font?>>)> and conformance TupleView<A>(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

void type metadata accessor for _VariadicView.Tree<_VStackLayout, TupleView<(StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ArchivableCircularProgressView, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, CircularUIKitProgressView, CircularUIKitProgressView>>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ModifiedContent<VStack<TupleView<(HStack<ProgressViewStyleConfiguration.Label?>, ModifiedContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, _EnvironmentKeyWritingModifier<Font?>>)>>, _EnvironmentKeyWritingModifier<Color?>>??, ModifiedContent<VStack<TupleView<(HStack<ProgressViewStyleConfiguration.Label?>, ModifiedContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, _EnvironmentKeyWritingModifier<Font?>>)>>, _EnvironmentKeyWritingModifier<Color?>>?>)>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _VariadicView.Tree<_VStackLayout, TupleView<(StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ArchivableCircularProgressView, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, CircularUIKitProgressView, CircularUIKitProgressView>>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ModifiedContent<VStack<TupleView<(HStack<ProgressViewStyleConfiguration.Label?>, ModifiedContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, _EnvironmentKeyWritingModifier<Font?>>)>>, _EnvironmentKeyWritingModifier<Color?>>??, ModifiedContent<VStack<TupleView<(HStack<ProgressViewStyleConfiguration.Label?>, ModifiedContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, _EnvironmentKeyWritingModifier<Font?>>)>>, _EnvironmentKeyWritingModifier<Color?>>?>)>>)
  {
    type metadata accessor for TupleView<(StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ArchivableCircularProgressView, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, CircularUIKitProgressView, CircularUIKitProgressView>>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ModifiedContent<VStack<TupleView<(HStack<ProgressViewStyleConfiguration.Label?>, ModifiedContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, _EnvironmentKeyWritingModifier<Font?>>)>>, _EnvironmentKeyWritingModifier<Color?>>??, ModifiedContent<VStack<TupleView<(HStack<ProgressViewStyleConfiguration.Label?>, ModifiedContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, _EnvironmentKeyWritingModifier<Font?>>)>>, _EnvironmentKeyWritingModifier<Color?>>?>)>(255);
    v1 = type metadata accessor for _VariadicView.Tree();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _VariadicView.Tree<_VStackLayout, TupleView<(StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ArchivableCircularProgressView, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, CircularUIKitProgressView, CircularUIKitProgressView>>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ModifiedContent<VStack<TupleView<(HStack<ProgressViewStyleConfiguration.Label?>, ModifiedContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, _EnvironmentKeyWritingModifier<Font?>>)>>, _EnvironmentKeyWritingModifier<Color?>>??, ModifiedContent<VStack<TupleView<(HStack<ProgressViewStyleConfiguration.Label?>, ModifiedContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, _EnvironmentKeyWritingModifier<Font?>>)>>, _EnvironmentKeyWritingModifier<Color?>>?>)>>);
    }
  }
}

uint64_t closure #1 in CircularProgressViewStyle.makeBody(configuration:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  type metadata accessor for StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ArchivableCircularProgressView, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, CircularUIKitProgressView, CircularUIKitProgressView>>(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v26 - v8;
  CircularProgressViewStyle.fractionCompletedView(configuration:)(a1, &v26 - v8);
  if (*(a1 + *(type metadata accessor for ProgressViewStyleConfiguration(0) + 24)) == 1)
  {
    CircularProgressViewStyle.labels(configuration:)(a1, &v52);
    v10 = v53;
    v11 = v54;
    v12 = v55;
    v29 = v56;
    v30 = v52;
    v28 = v57;
    v36 = v59;
    v37 = v58;
    v34 = v62;
    v35 = v60;
    v32 = v61;
    v33 = v63;
    v31 = v64;
  }

  else
  {
    v29 = 0;
    v30 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v28 = 0;
    v36 = 0;
    v37 = 0;
    v34 = 0;
    v35 = 0;
    v31 = 0;
    v32 = 1;
    v33 = 0;
  }

  CircularProgressViewStyle.labels(configuration:)(a1, &v38);
  outlined init with copy of StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ArchivableCircularProgressView, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, CircularUIKitProgressView, CircularUIKitProgressView>>(v9, v6, type metadata accessor for StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ArchivableCircularProgressView, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, CircularUIKitProgressView, CircularUIKitProgressView>>);
  outlined init with copy of StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ArchivableCircularProgressView, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, CircularUIKitProgressView, CircularUIKitProgressView>>(v6, a2, type metadata accessor for StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ArchivableCircularProgressView, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, CircularUIKitProgressView, CircularUIKitProgressView>>);
  type metadata accessor for (StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ArchivableCircularProgressView, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, CircularUIKitProgressView, CircularUIKitProgressView>>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ModifiedContent<VStack<TupleView<(HStack<ProgressViewStyleConfiguration.Label?>, ModifiedContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, _EnvironmentKeyWritingModifier<Font?>>)>>, _EnvironmentKeyWritingModifier<Color?>>??, ModifiedContent<VStack<TupleView<(HStack<ProgressViewStyleConfiguration.Label?>, ModifiedContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, _EnvironmentKeyWritingModifier<Font?>>)>>, _EnvironmentKeyWritingModifier<Color?>>?>)(0, &lazy cache variable for type metadata for (StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ArchivableCircularProgressView, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, CircularUIKitProgressView, CircularUIKitProgressView>>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ModifiedContent<VStack<TupleView<(HStack<ProgressViewStyleConfiguration.Label?>, ModifiedContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, _EnvironmentKeyWritingModifier<Font?>>)>>, _EnvironmentKeyWritingModifier<Color?>>??, ModifiedContent<VStack<TupleView<(HStack<ProgressViewStyleConfiguration.Label?>, ModifiedContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, _EnvironmentKeyWritingModifier<Font?>>)>>, _EnvironmentKeyWritingModifier<Color?>>?>), type metadata accessor for StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ArchivableCircularProgressView, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, CircularUIKitProgressView, CircularUIKitProgressView>>, type metadata accessor for StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ModifiedContent<VStack<TupleView<(HStack<ProgressViewStyleConfiguration.Label?>, ModifiedContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, _EnvironmentKeyWritingModifier<Font?>>)>>, _EnvironmentKeyWritingModifier<Color?>>??, ModifiedContent<VStack<TupleView<(HStack<ProgressViewStyleConfiguration.Label?>, ModifiedContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, _EnvironmentKeyWritingModifier<Font?>>)>>, _EnvironmentKeyWritingModifier<Color?>>?>);
  v14 = *(v13 + 48);
  *(v51 + 8) = v38;
  *(&v51[3] + 8) = v41;
  *(&v51[4] + 8) = v42;
  *(&v51[5] + 8) = v43;
  v15 = (a2 + v14);
  v17 = v29;
  v16 = v30;
  *&v45 = v30;
  *(&v45 + 1) = v10;
  *&v46 = v11;
  *(&v46 + 1) = v12;
  v27 = v6;
  v18 = v28;
  *&v47 = v29;
  *(&v47 + 1) = v28;
  *&v48 = v37;
  *(&v48 + 1) = v36;
  *&v49 = v35;
  *(&v49 + 1) = v32;
  *&v50 = v34;
  *(&v50 + 1) = v33;
  *&v51[0] = v31;
  *(&v51[6] + 1) = v44;
  *(&v51[1] + 8) = v39;
  *(&v51[2] + 8) = v40;
  v19 = v50;
  v15[4] = v49;
  v15[5] = v19;
  v20 = v48;
  v15[2] = v47;
  v15[3] = v20;
  v21 = v46;
  *v15 = v45;
  v15[1] = v21;
  v22 = v51[6];
  v15[11] = v51[5];
  v15[12] = v22;
  v23 = v51[4];
  v15[9] = v51[3];
  v15[10] = v23;
  v24 = v51[2];
  v15[7] = v51[1];
  v15[8] = v24;
  v15[6] = v51[0];
  outlined init with copy of StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ArchivableCircularProgressView, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, CircularUIKitProgressView, CircularUIKitProgressView>>(&v45, &v52, type metadata accessor for StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ModifiedContent<VStack<TupleView<(HStack<ProgressViewStyleConfiguration.Label?>, ModifiedContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, _EnvironmentKeyWritingModifier<Font?>>)>>, _EnvironmentKeyWritingModifier<Color?>>??, ModifiedContent<VStack<TupleView<(HStack<ProgressViewStyleConfiguration.Label?>, ModifiedContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, _EnvironmentKeyWritingModifier<Font?>>)>>, _EnvironmentKeyWritingModifier<Color?>>?>);
  outlined destroy of VStack<TupleView<(StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ArchivableCircularProgressView, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, CircularUIKitProgressView, CircularUIKitProgressView>>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ModifiedContent<VStack<TupleView<(HStack<ProgressViewStyleConfiguration.Label?>, ModifiedContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, _EnvironmentKeyWritingModifier<Font?>>)>>, _EnvironmentKeyWritingModifier<Color?>>??, ModifiedContent<VStack<TupleView<(HStack<ProgressViewStyleConfiguration.Label?>, ModifiedContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, _EnvironmentKeyWritingModifier<Font?>>)>>, _EnvironmentKeyWritingModifier<Color?>>?>)>>(v9, type metadata accessor for StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ArchivableCircularProgressView, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, CircularUIKitProgressView, CircularUIKitProgressView>>);
  v68 = v41;
  v69 = v42;
  v70 = v43;
  v65 = v38;
  v66 = v39;
  v52 = v16;
  v53 = v10;
  v54 = v11;
  v55 = v12;
  v56 = v17;
  v57 = v18;
  v58 = v37;
  v59 = v36;
  v60 = v35;
  v61 = v32;
  v62 = v34;
  v63 = v33;
  v64 = v31;
  v71 = v44;
  v67 = v40;
  outlined destroy of VStack<TupleView<(StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ArchivableCircularProgressView, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, CircularUIKitProgressView, CircularUIKitProgressView>>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ModifiedContent<VStack<TupleView<(HStack<ProgressViewStyleConfiguration.Label?>, ModifiedContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, _EnvironmentKeyWritingModifier<Font?>>)>>, _EnvironmentKeyWritingModifier<Color?>>??, ModifiedContent<VStack<TupleView<(HStack<ProgressViewStyleConfiguration.Label?>, ModifiedContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, _EnvironmentKeyWritingModifier<Font?>>)>>, _EnvironmentKeyWritingModifier<Color?>>?>)>>(&v52, type metadata accessor for StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ModifiedContent<VStack<TupleView<(HStack<ProgressViewStyleConfiguration.Label?>, ModifiedContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, _EnvironmentKeyWritingModifier<Font?>>)>>, _EnvironmentKeyWritingModifier<Color?>>??, ModifiedContent<VStack<TupleView<(HStack<ProgressViewStyleConfiguration.Label?>, ModifiedContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, _EnvironmentKeyWritingModifier<Font?>>)>>, _EnvironmentKeyWritingModifier<Color?>>?>);
  return outlined destroy of VStack<TupleView<(StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ArchivableCircularProgressView, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, CircularUIKitProgressView, CircularUIKitProgressView>>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ModifiedContent<VStack<TupleView<(HStack<ProgressViewStyleConfiguration.Label?>, ModifiedContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, _EnvironmentKeyWritingModifier<Font?>>)>>, _EnvironmentKeyWritingModifier<Color?>>??, ModifiedContent<VStack<TupleView<(HStack<ProgressViewStyleConfiguration.Label?>, ModifiedContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, _EnvironmentKeyWritingModifier<Font?>>)>>, _EnvironmentKeyWritingModifier<Color?>>?>)>>(v27, type metadata accessor for StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ArchivableCircularProgressView, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, CircularUIKitProgressView, CircularUIKitProgressView>>);
}

double CircularProgressViewStyle.fractionCompletedView(configuration:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for ProgressViewStyleConfiguration(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v61[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for ArchivableCircularProgressView(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v61[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v61[-v12];
  v14 = *v2;
  v15 = *(v2 + 8);
  v16 = *(v2 + 32);
  outlined init with copy of StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ArchivableCircularProgressView, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, CircularUIKitProgressView, CircularUIKitProgressView>>(a1, v7, type metadata accessor for ProgressViewStyleConfiguration);
  v17 = v16;
  if (!v16)
  {
    v17 = specialized Environment.wrappedValue.getter(v14, v15);
  }

  *v10 = xmmword_18CD8A050;
  _s7SwiftUI30ProgressViewStyleConfigurationVWObTm_0(v7, v10 + *(v8 + 24), type metadata accessor for ProgressViewStyleConfiguration);
  *(v10 + *(v8 + 28)) = v17;
  _s7SwiftUI30ProgressViewStyleConfigurationVWObTm_0(v10, v13, type metadata accessor for ArchivableCircularProgressView);
  _s7SwiftUI30ProgressViewStyleConfigurationVWObTm_0(v13, a2, type metadata accessor for ArchivableCircularProgressView);
  v18 = v16;
  if (!v16)
  {
    v18 = specialized Environment.wrappedValue.getter(v14, v15);
  }

  v65 = v18;
  v62 = v15;
  v63 = v14;
  type metadata accessor for StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ArchivableCircularProgressView, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, CircularUIKitProgressView, CircularUIKitProgressView>>(0);
  v20 = a2 + *(v19 + 44);
  KeyPath = swift_getKeyPath();
  v84 = 0;
  v71 = 0x4034000000000000;
  lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
  swift_retain_n();
  ScaledMetric.init(wrappedValue:)();
  v21 = v72;
  v22 = v74;
  v23 = v76;
  v24 = v77;
  v83 = v73;
  v82 = v75;
  v71 = 0x402C000000000000;
  ScaledMetric.init(wrappedValue:)();
  v25 = v72;
  v26 = v74;
  v27 = v76;
  v28 = v77;
  v81 = v73;
  v80 = v75;
  v71 = 0x4042800000000000;
  ScaledMetric.init(wrappedValue:)();
  v29 = v72;
  v30 = v73;
  v31 = v74;
  v32 = v75;
  v33 = v76;
  v34 = v77;
  v79 = v73;
  v78 = v75;
  v35 = v84;
  v36 = v83;
  v37 = v82;
  v38 = v81;
  v39 = v80;
  *v20 = KeyPath;
  *(v20 + 8) = v35;
  *(v20 + 16) = v21;
  *(v20 + 24) = v36;
  *(v20 + 32) = v22;
  *(v20 + 40) = v37;
  *(v20 + 48) = v23;
  *(v20 + 56) = v24;
  *(v20 + 64) = v25;
  *(v20 + 72) = v38;
  *(v20 + 80) = v26;
  *(v20 + 88) = v39;
  *(v20 + 96) = v27;
  *(v20 + 104) = v28;
  *(v20 + 112) = v29;
  *(v20 + 120) = v30;
  *(v20 + 128) = v31;
  *(v20 + 136) = v32;
  *(v20 + 144) = v33;
  *(v20 + 152) = v34;
  *(v20 + 160) = v65;
  v40 = v16;
  *(v20 + 168) = 0;
  if (!v16)
  {
    v40 = specialized Environment.wrappedValue.getter(v63, v62);
  }

  v65 = v40;
  v41 = swift_getKeyPath();
  v70 = 0;
  v71 = 0x4034000000000000;

  ScaledMetric.init(wrappedValue:)();
  v42 = v72;
  v43 = v74;
  v44 = v76;
  v45 = v77;
  v69 = v73;
  v68 = v75;
  v71 = 0x402C000000000000;
  ScaledMetric.init(wrappedValue:)();
  v46 = v72;
  v47 = v74;
  v48 = v76;
  v49 = v77;
  v67 = v73;
  v66 = v75;
  v71 = 0x4042800000000000;
  ScaledMetric.init(wrappedValue:)();
  v50 = v72;
  v51 = v73;
  v52 = v74;
  v53 = v75;
  result = v76;
  v55 = v77;
  v56 = v70;
  v57 = v69;
  v58 = v68;
  v59 = v67;
  v60 = v66;
  *(v20 + 176) = v41;
  *(v20 + 184) = v56;
  *(v20 + 192) = v42;
  *(v20 + 200) = v57;
  *(v20 + 208) = v43;
  *(v20 + 216) = v58;
  *(v20 + 224) = v44;
  *(v20 + 232) = v45;
  *(v20 + 240) = v46;
  *(v20 + 248) = v59;
  *(v20 + 256) = v47;
  *(v20 + 264) = v60;
  *(v20 + 272) = v48;
  *(v20 + 280) = v49;
  *(v20 + 288) = v50;
  *(v20 + 296) = v51;
  *(v20 + 304) = v52;
  *(v20 + 312) = v53;
  *(v20 + 320) = result;
  *(v20 + 328) = v55;
  *(v20 + 336) = v65;
  *(v20 + 344) = 1;
  return result;
}

double specialized Environment.wrappedValue.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  return specialized Environment.wrappedValue.getter(a1, a2, outlined copy of Environment<Bool>.Content, 0x536C6F72746E6F43, outlined consume of Environment<Bool>.Content, a3, 0xEB00000000657A69);
}

{
  return specialized Environment.wrappedValue.getter(a1, a2, outlined copy of Environment<Bool>.Content, 0x686353726F6C6F43, outlined consume of Environment<Bool>.Content, a3, 0xEB00000000656D65);
}

double CircularUIKitProgressView.resolvedWidth.getter()
{
  specialized Environment.wrappedValue.getter(*v0, *(v0 + 8), &v3);
  _s7SwiftUI12ScaledMetricVy12CoreGraphics7CGFloatVGMaTm_1(0, &lazy cache variable for type metadata for ScaledMetric<CGFloat>, lazy protocol witness table accessor for type CGFloat and conformance CGFloat, MEMORY[0x1E69E7DE0], MEMORY[0x1E697DF08]);
  ScaledMetric.wrappedValue.getter();
  return v2;
}

unint64_t type metadata accessor for UIColor()
{
  result = lazy cache variable for type metadata for UIColor;
  if (!lazy cache variable for type metadata for UIColor)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for UIColor);
  }

  return result;
}

double static _LayoutDirectionBehaviorEffect._makeView(modifier:inputs:body:)@<D0>(unsigned int *a1@<X0>, __int128 *a2@<X1>, void (*a3)(uint64_t *__return_ptr, uint64_t, __int128 *)@<X2>, double *a4@<X8>)
{
  v61 = *MEMORY[0x1E69E9840];
  v6 = a2[3];
  v7 = a2[1];
  v45 = a2[2];
  v46 = v6;
  v8 = a2[3];
  v47 = a2[4];
  v9 = a2[1];
  v43 = *a2;
  v44 = v9;
  v57 = v45;
  v58 = v8;
  v59 = a2[4];
  v10 = *a1;
  v48 = *(a2 + 20);
  v60 = *(a2 + 20);
  v55 = v43;
  v56 = v7;
  v11 = _ViewInputs.layoutDirection.getter();
  v39 = v45;
  v40 = v46;
  v41 = v47;
  v42 = v48;
  v37 = v43;
  v38 = v44;
  swift_beginAccess();
  *&v49 = __PAIR64__(*(v44 + 16), v10);
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  outlined init with copy of _ViewInputs(&v43, &v55);
  lazy protocol witness table accessor for type FlipForRTLEnvironment and conformance FlipForRTLEnvironment();
  Attribute.init<A>(body:value:flags:update:)();
  _GraphInputs.environment.setter();
  v57 = v45;
  v58 = v46;
  v59 = v47;
  v60 = v48;
  v55 = v43;
  v56 = v44;
  swift_beginAccess();
  v12 = CachedEnvironment.animatedSize(for:)();
  swift_endAccess();
  v57 = v45;
  v58 = v46;
  v59 = v47;
  v60 = v48;
  v55 = v43;
  v56 = v44;
  v13 = _ViewInputs.animatedPosition()();
  *&v55 = __PAIR64__(v12, v10);
  *(&v55 + 1) = __PAIR64__(HIDWORD(v46), v13);
  LODWORD(v56) = v11;
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  lazy protocol witness table accessor for type FlipForRTLTransform and conformance FlipForRTLTransform();
  Attribute.init<A>(body:value:flags:update:)();
  _ViewInputs.transform.setter();
  v57 = v45;
  v58 = v46;
  v59 = v47;
  v60 = v48;
  v55 = v43;
  v56 = v44;
  v14 = _ViewInputs.position.getter();
  v15 = DWORD2(v47);
  v49 = v43;
  v50 = v44;
  v51 = v45;
  v16 = _GraphInputs.pixelLength.getter();
  *&v55 = __PAIR64__(v14, v10);
  *(&v55 + 1) = __PAIR64__(v11, v15);
  LODWORD(v56) = v16;
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  lazy protocol witness table accessor for type FlipForRTLFrame and conformance FlipForRTLFrame();
  Attribute.init<A>(body:value:flags:update:)();
  v17 = ViewFrame.origin.modify();
  v17(&v55, 0);
  AGGraphCreateOffsetAttribute2();
  _ViewInputs.position.setter();
  AGGraphCreateOffsetAttribute2();
  _ViewInputs.size.setter();
  v57 = v45;
  v58 = v46;
  v59 = v47;
  v60 = v48;
  v55 = v43;
  v56 = v44;
  *&v55 = __PAIR64__(_ViewInputs.containerPosition.getter(), v10);
  DWORD2(v55) = v11;
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  type metadata accessor for CGPoint(0);
  lazy protocol witness table accessor for type FlipForRTLContainerPosition and conformance FlipForRTLContainerPosition();
  Attribute.init<A>(body:value:flags:update:)();
  _ViewInputs.containerPosition.setter();
  v51 = v39;
  v52 = v40;
  v53 = v41;
  v54 = v42;
  v49 = v37;
  v50 = v38;
  v33 = v39;
  v34 = v40;
  v35 = v41;
  v36 = v42;
  v31 = v37;
  v32 = v38;
  v18 = outlined init with copy of _ViewInputs(&v49, &v55);
  a3(&v27, v18, &v31);
  v57 = v33;
  v58 = v34;
  v59 = v35;
  v60 = v36;
  v55 = v31;
  v56 = v32;
  outlined destroy of _ViewInputs(&v55);
  *&v31 = v46;
  DWORD2(v31) = DWORD2(v46);
  if (PreferencesInputs.contains<A>(_:includeHostPreferences:)())
  {
    _DisplayList_Identity.init()();
    v19 = v31;
    v33 = v45;
    v34 = v46;
    v35 = v47;
    v36 = v48;
    v31 = v43;
    v32 = v44;
    LODWORD(v29) = v19;
    _ViewInputs.pushIdentity(_:)();
    v33 = v45;
    v34 = v46;
    v35 = v47;
    v36 = v48;
    v31 = v43;
    v32 = v44;
    v20 = _ViewInputs.animatedPosition()();
    v33 = v45;
    v34 = v46;
    v35 = v47;
    v36 = v48;
    v31 = v43;
    v32 = v44;
    swift_beginAccess();
    v21 = CachedEnvironment.animatedSize(for:)();
    swift_endAccess();
    v33 = v45;
    v34 = v46;
    v35 = v47;
    v36 = v48;
    v31 = v43;
    v32 = v44;
    v22 = a4;
    v23 = _ViewInputs.containerPosition.getter();
    v29 = v27;
    v30 = LODWORD(v28);
    v24 = PreferencesOutputs.subscript.getter();
    v25 = *MEMORY[0x1E698D3F8];
    if ((v24 & 0x100000000) == 0)
    {
      v25 = v24;
    }

    *&v31 = __PAIR64__(v10, v19);
    *(&v31 + 1) = __PAIR64__(v21, v20);
    *&v32 = __PAIR64__(v23, v11);
    a4 = v22;
    DWORD2(v32) = v25;
    protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
    lazy protocol witness table accessor for type FlipForRTLDisplayList and conformance FlipForRTLDisplayList();
    Attribute.init<A>(body:value:flags:update:)();
    LOBYTE(v31) = 0;
    PreferencesOutputs.subscript.setter();
  }

  v33 = v39;
  v34 = v40;
  v35 = v41;
  v36 = v42;
  v31 = v37;
  v32 = v38;
  outlined destroy of _ViewInputs(&v31);
  *a4 = v27;
  result = v28;
  a4[1] = v28;
  return result;
}

unint64_t lazy protocol witness table accessor for type FlipForRTLEnvironment and conformance FlipForRTLEnvironment()
{
  result = lazy protocol witness table cache variable for type FlipForRTLEnvironment and conformance FlipForRTLEnvironment;
  if (!lazy protocol witness table cache variable for type FlipForRTLEnvironment and conformance FlipForRTLEnvironment)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for FlipForRTLEnvironment, &unk_1EFFAEF68, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type FlipForRTLEnvironment and conformance FlipForRTLEnvironment);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type FlipForRTLFrame and conformance FlipForRTLFrame()
{
  result = lazy protocol witness table cache variable for type FlipForRTLFrame and conformance FlipForRTLFrame;
  if (!lazy protocol witness table cache variable for type FlipForRTLFrame and conformance FlipForRTLFrame)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for FlipForRTLFrame, &unk_1EFFAEE48, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type FlipForRTLFrame and conformance FlipForRTLFrame);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type FlipForRTLContainerPosition and conformance FlipForRTLContainerPosition()
{
  result = lazy protocol witness table cache variable for type FlipForRTLContainerPosition and conformance FlipForRTLContainerPosition;
  if (!lazy protocol witness table cache variable for type FlipForRTLContainerPosition and conformance FlipForRTLContainerPosition)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for FlipForRTLContainerPosition, &unk_1EFFAEDC0, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type FlipForRTLContainerPosition and conformance FlipForRTLContainerPosition);
  }

  return result;
}

void type metadata accessor for ModifiedContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, IgnoreViewRespondersModifier>, AccessibilityAttachmentModifier>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, IgnoreViewRespondersModifier>, AccessibilityAttachmentModifier>)
  {
    type metadata accessor for ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, IgnoreViewRespondersModifier>(255);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, IgnoreViewRespondersModifier>, AccessibilityAttachmentModifier>);
    }
  }
}

uint64_t destroy for OptionalSourceWriter(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  v6 = *(v3 - 8);
  result = (*(v6 + 48))(a1, 1, v3);
  if (!result)
  {
    v5 = *(v6 + 8);

    return v5(a1, v3);
  }

  return result;
}

uint64_t partial apply for closure #3 in CustomProgressView.Child.value.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Optional();
  Value = AGGraphGetValue();
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, Value, v2);
}

uint64_t outlined init with take of ProgressViewValue(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t _s7SwiftUI17ProgressViewValueOWObTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t _s7SwiftUI17ProgressViewValueOWObTm_1(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t lazy protocol witness table accessor for type AccessibilityProgressValue and conformance AccessibilityProgressValue()
{
  result = lazy protocol witness table cache variable for type AccessibilityProgressValue and conformance AccessibilityProgressValue;
  if (!lazy protocol witness table cache variable for type AccessibilityProgressValue and conformance AccessibilityProgressValue)
  {
    result = swift_getWitnessTable(MEMORY[0x1E6980660], MEMORY[0x1E6980650], v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityProgressValue and conformance AccessibilityProgressValue);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityProgressValue and conformance AccessibilityProgressValue;
  if (!lazy protocol witness table cache variable for type AccessibilityProgressValue and conformance AccessibilityProgressValue)
  {
    result = swift_getWitnessTable(MEMORY[0x1E6980658], MEMORY[0x1E6980650], v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityProgressValue and conformance AccessibilityProgressValue);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityProgressValue and conformance AccessibilityProgressValue;
  if (!lazy protocol witness table cache variable for type AccessibilityProgressValue and conformance AccessibilityProgressValue)
  {
    result = swift_getWitnessTable(MEMORY[0x1E6980648], MEMORY[0x1E6980650], v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityProgressValue and conformance AccessibilityProgressValue);
  }

  return result;
}

uint64_t outlined destroy of AccessibilityValueStorage?(uint64_t a1)
{
  type metadata accessor for State<Bool>(0, &lazy cache variable for type metadata for AccessibilityValueStorage?, MEMORY[0x1E69804E0], MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type DefaultProgressViewStyle and conformance DefaultProgressViewStyle()
{
  result = lazy protocol witness table cache variable for type DefaultProgressViewStyle and conformance DefaultProgressViewStyle;
  if (!lazy protocol witness table cache variable for type DefaultProgressViewStyle and conformance DefaultProgressViewStyle)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DefaultProgressViewStyle, &type metadata for DefaultProgressViewStyle, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type DefaultProgressViewStyle and conformance DefaultProgressViewStyle);
  }

  return result;
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance ProgressViewStyleModifier<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ProgressViewStyleModifier<A>, a5);

  return MEMORY[0x1EEDDE4B8](a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t sub_18BE174BC(void *a1)
{
  swift_getAssociatedTypeWitness();

  return swift_getAssociatedConformanceWitness();
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<LinearProgressViewStyle>>, _ConditionalContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<LinearProgressViewStyle>>, ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<CircularProgressViewStyle>>>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<LinearProgressViewStyle>>, _ConditionalContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<LinearProgressViewStyle>>, ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<CircularProgressViewStyle>>>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<LinearProgressViewStyle>>, _ConditionalContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<LinearProgressViewStyle>>, ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<CircularProgressViewStyle>>>> and conformance <> _ConditionalContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for _ConditionalContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<LinearProgressViewStyle>>, _ConditionalContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<LinearProgressViewStyle>>, ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<CircularProgressViewStyle>>>>.Storage(255, &lazy cache variable for type metadata for _ConditionalContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<LinearProgressViewStyle>>, _ConditionalContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<LinearProgressViewStyle>>, ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<CircularProgressViewStyle>>>>, MEMORY[0x1E697F960]);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<LinearProgressViewStyle>> and conformance <> ModifiedContent<A, B>();
    v5[1] = lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<LinearProgressViewStyle>>, ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<CircularProgressViewStyle>>> and conformance <> _ConditionalContent<A, B>();
    result = swift_getWitnessTable(MEMORY[0x1E697F968], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<LinearProgressViewStyle>>, _ConditionalContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<LinearProgressViewStyle>>, ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<CircularProgressViewStyle>>>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<LinearProgressViewStyle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<LinearProgressViewStyle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<LinearProgressViewStyle>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<LinearProgressViewStyle>>(255, &lazy cache variable for type metadata for ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<LinearProgressViewStyle>>, &lazy cache variable for type metadata for ProgressViewStyleModifier<LinearProgressViewStyle>, lazy protocol witness table accessor for type LinearProgressViewStyle and conformance LinearProgressViewStyle, &type metadata for LinearProgressViewStyle);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel> and conformance ProgressView<A, B>();
    v5[1] = &protocol witness table for ProgressViewStyleModifier<A>;
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<LinearProgressViewStyle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t closure #1 in DefaultProgressViewStyle.makeBody(configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v95 = a2;
  type metadata accessor for ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<LinearProgressViewStyle>>(0, &lazy cache variable for type metadata for ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<LinearProgressViewStyle>>, &lazy cache variable for type metadata for ProgressViewStyleModifier<LinearProgressViewStyle>, lazy protocol witness table accessor for type LinearProgressViewStyle and conformance LinearProgressViewStyle, &type metadata for LinearProgressViewStyle);
  v92 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v89 = &v86 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v90 = &v86 - v6;
  type metadata accessor for _ConditionalContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<LinearProgressViewStyle>>, ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<CircularProgressViewStyle>>>(0, &lazy cache variable for type metadata for _ConditionalContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<LinearProgressViewStyle>>, ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<CircularProgressViewStyle>>>, MEMORY[0x1E697F960]);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v91 = &v86 - v8;
  v9 = type metadata accessor for ProgressViewValue(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v86 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for _ConditionalContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<LinearProgressViewStyle>>, _ConditionalContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<LinearProgressViewStyle>>, ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<CircularProgressViewStyle>>>>.Storage(0, &lazy cache variable for type metadata for _ConditionalContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<LinearProgressViewStyle>>, _ConditionalContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<LinearProgressViewStyle>>, ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<CircularProgressViewStyle>>>>, MEMORY[0x1E697F960]);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v93 = &v86 - v13;
  v14 = type metadata accessor for ProgressViewStyleConfiguration(0);
  MEMORY[0x1EEE9AC00](v14);
  v86 = &v86 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v88 = &v86 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v86 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v87 = &v86 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v86 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v86 - v27;
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v86 - v30;
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v86 - v33;
  type metadata accessor for ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<LinearProgressViewStyle>>(0, &lazy cache variable for type metadata for ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<CircularProgressViewStyle>>, &lazy cache variable for type metadata for ProgressViewStyleModifier<CircularProgressViewStyle>, lazy protocol witness table accessor for type CircularProgressViewStyle and conformance CircularProgressViewStyle, &type metadata for CircularProgressViewStyle);
  v94 = v35;
  MEMORY[0x1EEE9AC00](a1);
  v37 = &v86 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v41 = &v86 - v40;
  if (*(v39 + v14[6]) == 1)
  {
    _s7SwiftUI17ProgressViewValueOWOcTm_1(v39, v34, type metadata accessor for ProgressViewStyleConfiguration);
    _s7SwiftUI17ProgressViewValueOWOcTm_1(v34, v31, type metadata accessor for ProgressViewStyleConfiguration);
    _s7SwiftUI12ProgressViewVyAA0cD18StyleConfigurationV5LabelVAE012CurrentValueG0VGMaTm_0(0, &lazy cache variable for type metadata for CustomProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, type metadata accessor for CustomProgressView);
    v43 = v42;
    v44 = *(v42 + 52);
    v41[v44] = 1;
    v45 = *(v42 + 56);
    v41[v45] = 1;
    _s7SwiftUI17ProgressViewValueOWOcTm_1(v31, v41, type metadata accessor for ProgressViewValue);
    v41[v44] = v31[v14[7]];
    v41[v45] = v31[v14[8]];
    if (v31[v14[9]])
    {
      outlined destroy of ProgressViewValue(v31, type metadata accessor for ProgressViewStyleConfiguration);
      v46 = 0;
    }

    else
    {
      v46 = AnyView.init<A>(_:)();
      outlined destroy of ProgressViewValue(v31, type metadata accessor for ProgressViewStyleConfiguration);
    }

    *&v41[*(v43 + 60)] = v46;
    outlined destroy of ProgressViewValue(v34, type metadata accessor for ProgressViewStyleConfiguration);
    _s7SwiftUI12ProgressViewVyAA0cD18StyleConfigurationV5LabelVAE012CurrentValueG0VGMaTm_0(0, &lazy cache variable for type metadata for ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>.Base, type metadata accessor for ProgressView.Base);
    swift_storeEnumTagMultiPayload();
    KeyPath = swift_getKeyPath();
    v55 = swift_getKeyPath();
    v56 = v95;
    v57 = &v41[*(v94 + 36)];
    *v57 = KeyPath;
    v57[8] = 0;
    *(v57 + 2) = v55;
    v57[24] = 0;
    *(v57 + 4) = 0;
    outlined init with take of ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<CircularProgressViewStyle>>(v41, v56, &lazy cache variable for type metadata for ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<CircularProgressViewStyle>>, &lazy cache variable for type metadata for ProgressViewStyleModifier<CircularProgressViewStyle>, lazy protocol witness table accessor for type CircularProgressViewStyle and conformance CircularProgressViewStyle, &type metadata for CircularProgressViewStyle);
  }

  else
  {
    v47 = v39;
    _s7SwiftUI17ProgressViewValueOWOcTm_1(v39, v11, type metadata accessor for ProgressViewValue);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      outlined destroy of ProgressViewValue(v11, type metadata accessor for ClosedRange<Date>);
      _s7SwiftUI17ProgressViewValueOWOcTm_1(v47, v28, type metadata accessor for ProgressViewStyleConfiguration);
      _s7SwiftUI17ProgressViewValueOWOcTm_1(v28, v25, type metadata accessor for ProgressViewStyleConfiguration);
      _s7SwiftUI12ProgressViewVyAA0cD18StyleConfigurationV5LabelVAE012CurrentValueG0VGMaTm_0(0, &lazy cache variable for type metadata for CustomProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, type metadata accessor for CustomProgressView);
      v49 = v48;
      v50 = *(v48 + 52);
      v51 = v90;
      v90[v50] = 1;
      v52 = *(v48 + 56);
      *(v51 + v52) = 1;
      _s7SwiftUI17ProgressViewValueOWOcTm_1(v25, v51, type metadata accessor for ProgressViewValue);
      *(v51 + v50) = v25[v14[7]];
      *(v51 + v52) = v25[v14[8]];
      if (v25[v14[9]])
      {
        outlined destroy of ProgressViewValue(v25, type metadata accessor for ProgressViewStyleConfiguration);
        v53 = 0;
      }

      else
      {
        v53 = AnyView.init<A>(_:)();
        outlined destroy of ProgressViewValue(v25, type metadata accessor for ProgressViewStyleConfiguration);
      }

      v65 = v93;
      *(v51 + *(v49 + 60)) = v53;
      outlined destroy of ProgressViewValue(v28, type metadata accessor for ProgressViewStyleConfiguration);
      _s7SwiftUI12ProgressViewVyAA0cD18StyleConfigurationV5LabelVAE012CurrentValueG0VGMaTm_0(0, &lazy cache variable for type metadata for ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>.Base, type metadata accessor for ProgressView.Base);
      swift_storeEnumTagMultiPayload();
      v66 = swift_getKeyPath();
      v67 = swift_getKeyPath();
      v68 = v51 + *(v92 + 36);
      *v68 = v66;
      *(v68 + 8) = 0;
      *(v68 + 16) = v67;
      *(v68 + 24) = 0;
      *(v68 + 32) = 0;
      outlined init with take of ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<CircularProgressViewStyle>>(v51, v65, &lazy cache variable for type metadata for ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<LinearProgressViewStyle>>, &lazy cache variable for type metadata for ProgressViewStyleModifier<LinearProgressViewStyle>, lazy protocol witness table accessor for type LinearProgressViewStyle and conformance LinearProgressViewStyle, &type metadata for LinearProgressViewStyle);
    }

    else
    {
      outlined destroy of ProgressViewValue(v11, type metadata accessor for ProgressViewValue);
      if (*(v47 + v14[5] + 8))
      {
        v58 = v88;
        _s7SwiftUI17ProgressViewValueOWOcTm_1(v47, v88, type metadata accessor for ProgressViewStyleConfiguration);
        v59 = v86;
        _s7SwiftUI17ProgressViewValueOWOcTm_1(v58, v86, type metadata accessor for ProgressViewStyleConfiguration);
        _s7SwiftUI12ProgressViewVyAA0cD18StyleConfigurationV5LabelVAE012CurrentValueG0VGMaTm_0(0, &lazy cache variable for type metadata for CustomProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, type metadata accessor for CustomProgressView);
        v61 = v60;
        v62 = *(v60 + 52);
        v37[v62] = 1;
        v63 = *(v60 + 56);
        v37[v63] = 1;
        _s7SwiftUI17ProgressViewValueOWOcTm_1(v59, v37, type metadata accessor for ProgressViewValue);
        v37[v62] = *(v59 + v14[7]);
        v37[v63] = *(v59 + v14[8]);
        if (*(v59 + v14[9]))
        {
          outlined destroy of ProgressViewValue(v59, type metadata accessor for ProgressViewStyleConfiguration);
          v64 = 0;
        }

        else
        {
          v64 = AnyView.init<A>(_:)();
          outlined destroy of ProgressViewValue(v59, type metadata accessor for ProgressViewStyleConfiguration);
        }

        *&v37[*(v61 + 60)] = v64;
        outlined destroy of ProgressViewValue(v58, type metadata accessor for ProgressViewStyleConfiguration);
        _s7SwiftUI12ProgressViewVyAA0cD18StyleConfigurationV5LabelVAE012CurrentValueG0VGMaTm_0(0, &lazy cache variable for type metadata for ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>.Base, type metadata accessor for ProgressView.Base);
        swift_storeEnumTagMultiPayload();
        v76 = swift_getKeyPath();
        v77 = swift_getKeyPath();
        v78 = &v37[*(v94 + 36)];
        *v78 = v76;
        v78[8] = 0;
        *(v78 + 2) = v77;
        v78[24] = 0;
        *(v78 + 4) = 0;
        v79 = v37;
        v80 = v91;
        outlined init with take of ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<CircularProgressViewStyle>>(v79, v91, &lazy cache variable for type metadata for ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<CircularProgressViewStyle>>, &lazy cache variable for type metadata for ProgressViewStyleModifier<CircularProgressViewStyle>, lazy protocol witness table accessor for type CircularProgressViewStyle and conformance CircularProgressViewStyle, &type metadata for CircularProgressViewStyle);
      }

      else
      {
        v69 = v87;
        _s7SwiftUI17ProgressViewValueOWOcTm_1(v47, v87, type metadata accessor for ProgressViewStyleConfiguration);
        _s7SwiftUI17ProgressViewValueOWOcTm_1(v69, v20, type metadata accessor for ProgressViewStyleConfiguration);
        _s7SwiftUI12ProgressViewVyAA0cD18StyleConfigurationV5LabelVAE012CurrentValueG0VGMaTm_0(0, &lazy cache variable for type metadata for CustomProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, type metadata accessor for CustomProgressView);
        v71 = v70;
        v72 = *(v70 + 52);
        v73 = v89;
        v89[v72] = 1;
        v74 = *(v70 + 56);
        *(v73 + v74) = 1;
        _s7SwiftUI17ProgressViewValueOWOcTm_1(v20, v73, type metadata accessor for ProgressViewValue);
        *(v73 + v72) = v20[v14[7]];
        *(v73 + v74) = v20[v14[8]];
        if (v20[v14[9]])
        {
          outlined destroy of ProgressViewValue(v20, type metadata accessor for ProgressViewStyleConfiguration);
          v75 = 0;
        }

        else
        {
          v75 = AnyView.init<A>(_:)();
          outlined destroy of ProgressViewValue(v20, type metadata accessor for ProgressViewStyleConfiguration);
        }

        *(v73 + *(v71 + 60)) = v75;
        outlined destroy of ProgressViewValue(v69, type metadata accessor for ProgressViewStyleConfiguration);
        _s7SwiftUI12ProgressViewVyAA0cD18StyleConfigurationV5LabelVAE012CurrentValueG0VGMaTm_0(0, &lazy cache variable for type metadata for ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>.Base, type metadata accessor for ProgressView.Base);
        swift_storeEnumTagMultiPayload();
        v81 = swift_getKeyPath();
        v82 = swift_getKeyPath();
        v80 = v91;
        v83 = v73 + *(v92 + 36);
        *v83 = v81;
        *(v83 + 8) = 0;
        *(v83 + 16) = v82;
        *(v83 + 24) = 0;
        *(v83 + 32) = 0;
        outlined init with take of ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<CircularProgressViewStyle>>(v73, v80, &lazy cache variable for type metadata for ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<LinearProgressViewStyle>>, &lazy cache variable for type metadata for ProgressViewStyleModifier<LinearProgressViewStyle>, lazy protocol witness table accessor for type LinearProgressViewStyle and conformance LinearProgressViewStyle, &type metadata for LinearProgressViewStyle);
      }

      v65 = v93;
      type metadata accessor for _ConditionalContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<LinearProgressViewStyle>>, ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<CircularProgressViewStyle>>>(0, &lazy cache variable for type metadata for _ConditionalContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<LinearProgressViewStyle>>, ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<CircularProgressViewStyle>>>.Storage, MEMORY[0x1E697F948]);
      swift_storeEnumTagMultiPayload();
      outlined init with take of _ConditionalContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<LinearProgressViewStyle>>, ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<CircularProgressViewStyle>>>(v80, v65, &lazy cache variable for type metadata for _ConditionalContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<LinearProgressViewStyle>>, ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<CircularProgressViewStyle>>>, MEMORY[0x1E697F960], type metadata accessor for _ConditionalContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<LinearProgressViewStyle>>, ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<CircularProgressViewStyle>>>);
    }

    v84 = v95;
    type metadata accessor for _ConditionalContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<LinearProgressViewStyle>>, _ConditionalContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<LinearProgressViewStyle>>, ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<CircularProgressViewStyle>>>>.Storage(0, &lazy cache variable for type metadata for _ConditionalContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<LinearProgressViewStyle>>, _ConditionalContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<LinearProgressViewStyle>>, ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<CircularProgressViewStyle>>>>.Storage, MEMORY[0x1E697F948]);
    swift_storeEnumTagMultiPayload();
    outlined init with take of _ConditionalContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<LinearProgressViewStyle>>, ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<CircularProgressViewStyle>>>(v65, v84, &lazy cache variable for type metadata for _ConditionalContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<LinearProgressViewStyle>>, _ConditionalContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<LinearProgressViewStyle>>, ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<CircularProgressViewStyle>>>>, MEMORY[0x1E697F960], type metadata accessor for _ConditionalContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<LinearProgressViewStyle>>, _ConditionalContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<LinearProgressViewStyle>>, ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<CircularProgressViewStyle>>>>.Storage);
  }

  type metadata accessor for _ConditionalContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<CircularProgressViewStyle>>, _ConditionalContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<LinearProgressViewStyle>>, _ConditionalContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<LinearProgressViewStyle>>, ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<CircularProgressViewStyle>>>>>(0, &lazy cache variable for type metadata for _ConditionalContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<CircularProgressViewStyle>>, _ConditionalContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<LinearProgressViewStyle>>, _ConditionalContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<LinearProgressViewStyle>>, ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<CircularProgressViewStyle>>>>>.Storage, MEMORY[0x1E697F948]);
  return swift_storeEnumTagMultiPayload();
}

uint64_t outlined destroy of ProgressViewValue(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s7SwiftUI17ProgressViewValueOWOhTm_0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with take of ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<CircularProgressViewStyle>>(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4, uint64_t (*a5)(void), uint64_t a6)
{
  type metadata accessor for ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<LinearProgressViewStyle>>(0, a3, a4, a5, a6);
  (*(*(v8 - 8) + 32))(a2, a1, v8);
  return a2;
}

uint64_t initializeWithCopy for LinearProgressViewStyle(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  outlined copy of Environment<Color?>.Content(*a2);
  *a1 = v4;
  *(a1 + 8) = v5;
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  outlined copy of Environment<Bool>.Content();
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = *(a2 + 32);

  return a1;
}

uint64_t type metadata completion function for ArchivableCircularProgressView(uint64_t a1)
{
  result = type metadata accessor for ProgressViewStyleConfiguration(319);
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t sub_18BE18664()
{
  type metadata accessor for VStack<TupleView<(StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ArchivableCircularProgressView, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, CircularUIKitProgressView, CircularUIKitProgressView>>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ModifiedContent<VStack<TupleView<(HStack<ProgressViewStyleConfiguration.Label?>, ModifiedContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, _EnvironmentKeyWritingModifier<Font?>>)>>, _EnvironmentKeyWritingModifier<Color?>>??, ModifiedContent<VStack<TupleView<(HStack<ProgressViewStyleConfiguration.Label?>, ModifiedContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, _EnvironmentKeyWritingModifier<Font?>>)>>, _EnvironmentKeyWritingModifier<Color?>>?>)>>(255);
  lazy protocol witness table accessor for type TupleView<(HStack<ProgressViewStyleConfiguration.Label?>, ModifiedContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, _EnvironmentKeyWritingModifier<Font?>>)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type VStack<TupleView<(StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ArchivableCircularProgressView, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, CircularUIKitProgressView, CircularUIKitProgressView>>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ModifiedContent<VStack<TupleView<(HStack<ProgressViewStyleConfiguration.Label?>, ModifiedContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, _EnvironmentKeyWritingModifier<Font?>>)>>, _EnvironmentKeyWritingModifier<Color?>>??, ModifiedContent<VStack<TupleView<(HStack<ProgressViewStyleConfiguration.Label?>, ModifiedContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, _EnvironmentKeyWritingModifier<Font?>>)>>, _EnvironmentKeyWritingModifier<Color?>>?>)>> and conformance VStack<A>, type metadata accessor for VStack<TupleView<(StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ArchivableCircularProgressView, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, CircularUIKitProgressView, CircularUIKitProgressView>>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ModifiedContent<VStack<TupleView<(HStack<ProgressViewStyleConfiguration.Label?>, ModifiedContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, _EnvironmentKeyWritingModifier<Font?>>)>>, _EnvironmentKeyWritingModifier<Color?>>??, ModifiedContent<VStack<TupleView<(HStack<ProgressViewStyleConfiguration.Label?>, ModifiedContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, _EnvironmentKeyWritingModifier<Font?>>)>>, _EnvironmentKeyWritingModifier<Color?>>?>)>>, MEMORY[0x1E6981870]);
  return swift_getOpaqueTypeConformance2();
}

void type metadata accessor for StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ArchivableCircularProgressView, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, CircularUIKitProgressView, CircularUIKitProgressView>>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    _s7SwiftUI23InterfaceIdiomPredicateVyAA06WidgetcD0VGMaTm_0(255, &lazy cache variable for type metadata for InterfaceIdiomPredicate<WidgetInterfaceIdiom>, MEMORY[0x1E697FAD8], MEMORY[0x1E697FAD0]);
    a3(255);
    a4(255);
    v7 = type metadata accessor for StaticIf();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void type metadata accessor for (StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ArchivableCircularProgressView, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, CircularUIKitProgressView, CircularUIKitProgressView>>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ModifiedContent<VStack<TupleView<(HStack<ProgressViewStyleConfiguration.Label?>, ModifiedContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, _EnvironmentKeyWritingModifier<Font?>>)>>, _EnvironmentKeyWritingModifier<Color?>>??, ModifiedContent<VStack<TupleView<(HStack<ProgressViewStyleConfiguration.Label?>, ModifiedContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, _EnvironmentKeyWritingModifier<Font?>>)>>, _EnvironmentKeyWritingModifier<Color?>>?>)(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void type metadata accessor for TupleView<(StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ArchivableCircularProgressView, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, CircularUIKitProgressView, CircularUIKitProgressView>>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ModifiedContent<VStack<TupleView<(HStack<ProgressViewStyleConfiguration.Label?>, ModifiedContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, _EnvironmentKeyWritingModifier<Font?>>)>>, _EnvironmentKeyWritingModifier<Color?>>??, ModifiedContent<VStack<TupleView<(HStack<ProgressViewStyleConfiguration.Label?>, ModifiedContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, _EnvironmentKeyWritingModifier<Font?>>)>>, _EnvironmentKeyWritingModifier<Color?>>?>)>(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t))
{
  if (!*a2)
  {
    type metadata accessor for (StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ArchivableCircularProgressView, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, CircularUIKitProgressView, CircularUIKitProgressView>>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ModifiedContent<VStack<TupleView<(HStack<ProgressViewStyleConfiguration.Label?>, ModifiedContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, _EnvironmentKeyWritingModifier<Font?>>)>>, _EnvironmentKeyWritingModifier<Color?>>??, ModifiedContent<VStack<TupleView<(HStack<ProgressViewStyleConfiguration.Label?>, ModifiedContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, _EnvironmentKeyWritingModifier<Font?>>)>>, _EnvironmentKeyWritingModifier<Color?>>?>)(255, a3, a4, a5);
    v6 = type metadata accessor for TupleView();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void type metadata accessor for StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, CircularUIKitProgressView, CircularUIKitProgressView>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, CircularUIKitProgressView, CircularUIKitProgressView>)
  {
    _s7SwiftUI23InterfaceIdiomPredicateVyAA06WidgetcD0VGMaTm_0(255, &lazy cache variable for type metadata for InterfaceIdiomPredicate<MacInterfaceIdiom>, MEMORY[0x1E697F248], MEMORY[0x1E697F240]);
    v1 = type metadata accessor for StaticIf();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, CircularUIKitProgressView, CircularUIKitProgressView>);
    }
  }
}

void type metadata accessor for ModifiedContent<VStack<TupleView<(HStack<ProgressViewStyleConfiguration.Label?>, ModifiedContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, _EnvironmentKeyWritingModifier<Font?>>)>>, _EnvironmentKeyWritingModifier<Color?>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<VStack<TupleView<(HStack<ProgressViewStyleConfiguration.Label?>, ModifiedContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, _EnvironmentKeyWritingModifier<Font?>>)>>, _EnvironmentKeyWritingModifier<Color?>>)
  {
    type metadata accessor for VStack<TupleView<(HStack<ProgressViewStyleConfiguration.Label?>, ModifiedContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, _EnvironmentKeyWritingModifier<Font?>>)>>(255);
    type metadata accessor for _EnvironmentKeyWritingModifier<ColorScheme?>(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Color?>, &lazy cache variable for type metadata for Color?, MEMORY[0x1E69815C0]);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<VStack<TupleView<(HStack<ProgressViewStyleConfiguration.Label?>, ModifiedContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, _EnvironmentKeyWritingModifier<Font?>>)>>, _EnvironmentKeyWritingModifier<Color?>>);
    }
  }
}

void type metadata accessor for HStack<ProgressViewStyleConfiguration.Label?>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for HStack<ProgressViewStyleConfiguration.Label?>)
  {
    type metadata accessor for AnyAccessibilityValue?(255, &lazy cache variable for type metadata for ProgressViewStyleConfiguration.Label?, &type metadata for ProgressViewStyleConfiguration.Label);
    lazy protocol witness table accessor for type EnvironmentValues.SearchCustomAccessory? and conformance <A> A?(&lazy protocol witness table cache variable for type ProgressViewStyleConfiguration.Label? and conformance <A> A?, &lazy cache variable for type metadata for ProgressViewStyleConfiguration.Label?, &type metadata for ProgressViewStyleConfiguration.Label, &protocol witness table for ProgressViewStyleConfiguration.Label);
    v1 = type metadata accessor for HStack();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for HStack<ProgressViewStyleConfiguration.Label?>);
    }
  }
}

uint64_t assignWithTake for LinearProgressViewStyle(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  v5 = *a1;
  *a1 = *a2;
  *(a1 + 8) = v4;
  outlined consume of Environment<Color?>.Content(v5);
  v6 = *(a2 + 24);
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v6;
  outlined consume of Environment<Bool>.Content(v7, v8);
  *(a1 + 32) = *(a2 + 32);

  return a1;
}

uint64_t protocol witness for ProgressViewStyle.makeBody(configuration:) in conformance CircularProgressViewStyle(uint64_t a1)
{
  type metadata accessor for VStack<TupleView<(StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ArchivableCircularProgressView, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, CircularUIKitProgressView, CircularUIKitProgressView>>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ModifiedContent<VStack<TupleView<(HStack<ProgressViewStyleConfiguration.Label?>, ModifiedContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, _EnvironmentKeyWritingModifier<Font?>>)>>, _EnvironmentKeyWritingModifier<Color?>>??, ModifiedContent<VStack<TupleView<(HStack<ProgressViewStyleConfiguration.Label?>, ModifiedContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, _EnvironmentKeyWritingModifier<Font?>>)>>, _EnvironmentKeyWritingModifier<Color?>>?>)>>(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v1 + 16);
  v9[1] = *v1;
  v9[2] = v6;
  v10 = *(v1 + 32);
  *v5 = static HorizontalAlignment.center.getter();
  *(v5 + 1) = 0;
  v5[16] = 1;
  type metadata accessor for _VariadicView.Tree<_VStackLayout, TupleView<(StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ArchivableCircularProgressView, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, CircularUIKitProgressView, CircularUIKitProgressView>>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ModifiedContent<VStack<TupleView<(HStack<ProgressViewStyleConfiguration.Label?>, ModifiedContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, _EnvironmentKeyWritingModifier<Font?>>)>>, _EnvironmentKeyWritingModifier<Color?>>??, ModifiedContent<VStack<TupleView<(HStack<ProgressViewStyleConfiguration.Label?>, ModifiedContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, _EnvironmentKeyWritingModifier<Font?>>)>>, _EnvironmentKeyWritingModifier<Color?>>?>)>>(0);
  closure #1 in CircularProgressViewStyle.makeBody(configuration:)(a1, &v5[*(v7 + 44)]);
  Spacing.init()();
  lazy protocol witness table accessor for type TupleView<(HStack<ProgressViewStyleConfiguration.Label?>, ModifiedContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, _EnvironmentKeyWritingModifier<Font?>>)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type VStack<TupleView<(StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ArchivableCircularProgressView, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, CircularUIKitProgressView, CircularUIKitProgressView>>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ModifiedContent<VStack<TupleView<(HStack<ProgressViewStyleConfiguration.Label?>, ModifiedContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, _EnvironmentKeyWritingModifier<Font?>>)>>, _EnvironmentKeyWritingModifier<Color?>>??, ModifiedContent<VStack<TupleView<(HStack<ProgressViewStyleConfiguration.Label?>, ModifiedContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, _EnvironmentKeyWritingModifier<Font?>>)>>, _EnvironmentKeyWritingModifier<Color?>>?>)>> and conformance VStack<A>, type metadata accessor for VStack<TupleView<(StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ArchivableCircularProgressView, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, CircularUIKitProgressView, CircularUIKitProgressView>>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ModifiedContent<VStack<TupleView<(HStack<ProgressViewStyleConfiguration.Label?>, ModifiedContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, _EnvironmentKeyWritingModifier<Font?>>)>>, _EnvironmentKeyWritingModifier<Color?>>??, ModifiedContent<VStack<TupleView<(HStack<ProgressViewStyleConfiguration.Label?>, ModifiedContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, _EnvironmentKeyWritingModifier<Font?>>)>>, _EnvironmentKeyWritingModifier<Color?>>?>)>>, MEMORY[0x1E6981870]);
  View.spacing(_:)();

  return outlined destroy of VStack<TupleView<(StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ArchivableCircularProgressView, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, CircularUIKitProgressView, CircularUIKitProgressView>>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ModifiedContent<VStack<TupleView<(HStack<ProgressViewStyleConfiguration.Label?>, ModifiedContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, _EnvironmentKeyWritingModifier<Font?>>)>>, _EnvironmentKeyWritingModifier<Color?>>??, ModifiedContent<VStack<TupleView<(HStack<ProgressViewStyleConfiguration.Label?>, ModifiedContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, _EnvironmentKeyWritingModifier<Font?>>)>>, _EnvironmentKeyWritingModifier<Color?>>?>)>>(v5, type metadata accessor for VStack<TupleView<(StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ArchivableCircularProgressView, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, CircularUIKitProgressView, CircularUIKitProgressView>>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ModifiedContent<VStack<TupleView<(HStack<ProgressViewStyleConfiguration.Label?>, ModifiedContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, _EnvironmentKeyWritingModifier<Font?>>)>>, _EnvironmentKeyWritingModifier<Color?>>??, ModifiedContent<VStack<TupleView<(HStack<ProgressViewStyleConfiguration.Label?>, ModifiedContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, _EnvironmentKeyWritingModifier<Font?>>)>>, _EnvironmentKeyWritingModifier<Color?>>?>)>>);
}

uint64_t outlined init with copy of StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ArchivableCircularProgressView, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, CircularUIKitProgressView, CircularUIKitProgressView>>(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t CircularProgressViewStyle.labels(configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  static Semantics.v5.getter();
  if ((isLinkedOnOrAfter(_:)() & 1) != 0 && (result = specialized Environment.wrappedValue.getter(v5, v6), result == 2))
  {
    v8 = 0;
    v9 = 0uLL;
    v10 = 0uLL;
    v11 = 0uLL;
    v12 = 0uLL;
    v13 = 0uLL;
    v14 = 0uLL;
  }

  else
  {
    v15 = static HorizontalAlignment.center.getter();
    closure #1 in CircularProgressViewStyle.labels(configuration:)(a1, &v18);
    v25 = v18;
    v26 = v19;
    v27 = v20;
    v28 = v21;
    v29[0] = v18;
    v29[1] = v19;
    v29[2] = v20;
    v29[3] = v21;
    outlined init with copy of StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ArchivableCircularProgressView, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, CircularUIKitProgressView, CircularUIKitProgressView>>(&v25, v30, type metadata accessor for TupleView<(HStack<ProgressViewStyleConfiguration.Label?>, ModifiedContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, _EnvironmentKeyWritingModifier<Font?>>)>);
    outlined destroy of VStack<TupleView<(StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ArchivableCircularProgressView, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, CircularUIKitProgressView, CircularUIKitProgressView>>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ModifiedContent<VStack<TupleView<(HStack<ProgressViewStyleConfiguration.Label?>, ModifiedContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, _EnvironmentKeyWritingModifier<Font?>>)>>, _EnvironmentKeyWritingModifier<Color?>>??, ModifiedContent<VStack<TupleView<(HStack<ProgressViewStyleConfiguration.Label?>, ModifiedContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, _EnvironmentKeyWritingModifier<Font?>>)>>, _EnvironmentKeyWritingModifier<Color?>>?>)>>(v29, type metadata accessor for TupleView<(HStack<ProgressViewStyleConfiguration.Label?>, ModifiedContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, _EnvironmentKeyWritingModifier<Font?>>)>);
    *&v17[55] = v28;
    *&v17[39] = v27;
    *&v17[23] = v26;
    *&v17[7] = v25;
    *&v16[17] = *&v17[16];
    *&v16[33] = *&v17[32];
    *&v16[49] = *&v17[48];
    v16[0] = 1;
    *&v16[64] = *(&v28 + 1);
    *&v16[1] = *v17;
    static Color.secondary.getter();
    type metadata accessor for VStack<TupleView<(HStack<ProgressViewStyleConfiguration.Label?>, ModifiedContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, _EnvironmentKeyWritingModifier<Font?>>)>>(0);
    lazy protocol witness table accessor for type TupleView<(HStack<ProgressViewStyleConfiguration.Label?>, ModifiedContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, _EnvironmentKeyWritingModifier<Font?>>)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type VStack<TupleView<(HStack<ProgressViewStyleConfiguration.Label?>, ModifiedContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, _EnvironmentKeyWritingModifier<Font?>>)>> and conformance VStack<A>, type metadata accessor for VStack<TupleView<(HStack<ProgressViewStyleConfiguration.Label?>, ModifiedContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, _EnvironmentKeyWritingModifier<Font?>>)>>, MEMORY[0x1E6981870]);
    View.defaultForegroundColor(_:)();

    v30[2] = *&v16[16];
    v30[3] = *&v16[32];
    v30[4] = *&v16[48];
    v31 = *&v16[64];
    v30[0] = v15;
    v30[1] = *v16;
    result = outlined destroy of VStack<TupleView<(StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ArchivableCircularProgressView, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, CircularUIKitProgressView, CircularUIKitProgressView>>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ModifiedContent<VStack<TupleView<(HStack<ProgressViewStyleConfiguration.Label?>, ModifiedContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, _EnvironmentKeyWritingModifier<Font?>>)>>, _EnvironmentKeyWritingModifier<Color?>>??, ModifiedContent<VStack<TupleView<(HStack<ProgressViewStyleConfiguration.Label?>, ModifiedContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, _EnvironmentKeyWritingModifier<Font?>>)>>, _EnvironmentKeyWritingModifier<Color?>>?>)>>(v30, type metadata accessor for VStack<TupleView<(HStack<ProgressViewStyleConfiguration.Label?>, ModifiedContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, _EnvironmentKeyWritingModifier<Font?>>)>>);
    v9 = v18;
    v10 = v19;
    v11 = v20;
    v12 = v21;
    v13 = v22;
    v14 = v23;
    v8 = v24;
  }

  *a2 = v9;
  *(a2 + 16) = v10;
  *(a2 + 32) = v11;
  *(a2 + 48) = v12;
  *(a2 + 64) = v13;
  *(a2 + 80) = v14;
  *(a2 + 96) = v8;
  return result;
}

uint64_t closure #1 in CircularProgressViewStyle.labels(configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = static VerticalAlignment.center.getter();
  v5 = type metadata accessor for ProgressViewStyleConfiguration(0);
  v6 = *(a1 + *(v5 + 28));
  v7 = static VerticalAlignment.center.getter();
  LOBYTE(v5) = *(a1 + *(v5 + 32));
  v8 = static Font.caption.getter();
  result = swift_getKeyPath();
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 17) = v6;
  *(a2 + 24) = v7;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  *(a2 + 41) = v5;
  *(a2 + 48) = result;
  *(a2 + 56) = v8;
  return result;
}

uint64_t outlined destroy of VStack<TupleView<(StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ArchivableCircularProgressView, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, CircularUIKitProgressView, CircularUIKitProgressView>>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ModifiedContent<VStack<TupleView<(HStack<ProgressViewStyleConfiguration.Label?>, ModifiedContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, _EnvironmentKeyWritingModifier<Font?>>)>>, _EnvironmentKeyWritingModifier<Color?>>??, ModifiedContent<VStack<TupleView<(HStack<ProgressViewStyleConfiguration.Label?>, ModifiedContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, _EnvironmentKeyWritingModifier<Font?>>)>>, _EnvironmentKeyWritingModifier<Color?>>?>)>>(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

_OWORD *initializeWithCopy for ArchivableCircularProgressView(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v6 = *(a3 + 24);
  v7 = a1 + v6;
  v8 = a2 + v6;
  v9 = type metadata accessor for ProgressViewValue(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = type metadata accessor for Date();
    v11 = *(*(v10 - 8) + 16);
    v11(v7, v8, v10);
    type metadata accessor for ClosedRange<Date>(0);
    v11(&v7[*(v12 + 36)], &v8[*(v12 + 36)], v10);
    type metadata accessor for (interval: ClosedRange<Date>, countdown: Bool)(0);
    v7[*(v13 + 48)] = v8[*(v13 + 48)];
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(v7, v8, *(*(v9 - 8) + 64));
  }

  v14 = type metadata accessor for ProgressViewStyleConfiguration(0);
  v15 = v14[5];
  v16 = &v7[v15];
  v17 = &v8[v15];
  *v16 = *v17;
  v16[8] = v17[8];
  v7[v14[6]] = v8[v14[6]];
  v7[v14[7]] = v8[v14[7]];
  v7[v14[8]] = v8[v14[8]];
  v7[v14[9]] = v8[v14[9]];
  *(a1 + *(a3 + 28)) = *(a2 + *(a3 + 28));

  return a1;
}

uint64_t destroy for ArchivableCircularProgressView(uint64_t a1, uint64_t a2)
{
  v2 = a1 + *(a2 + 24);
  type metadata accessor for ProgressViewValue(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = type metadata accessor for Date();
    v4 = *(*(v3 - 8) + 8);
    v4(v2, v3);
    type metadata accessor for ClosedRange<Date>(0);
    v4(v2 + *(v5 + 36), v3);
  }
}

uint64_t destroy for CircularUIKitProgressView(uint64_t a1)
{
  outlined consume of Environment<Selector?>.Content(*a1, *(a1 + 8));
  outlined consume of Environment<Selector?>.Content(*(a1 + 16), *(a1 + 24));
  outlined consume of Environment<Selector?>.Content(*(a1 + 32), *(a1 + 40));
  outlined consume of Environment<Selector?>.Content(*(a1 + 64), *(a1 + 72));
  outlined consume of Environment<Selector?>.Content(*(a1 + 80), *(a1 + 88));
  outlined consume of Environment<Selector?>.Content(*(a1 + 112), *(a1 + 120));
  outlined consume of Environment<Selector?>.Content(*(a1 + 128), *(a1 + 136));
}

double CircularUIKitProgressView.updateUIView(_:context:)(void *a1, __int128 *a2)
{
  v4 = a2[1];
  v5 = *(a2 + 32);
  v6 = *(v2 + 160);
  if (*(v2 + 168))
  {
    v12 = a2[1];
    v13 = *a2;
    v20 = *(v2 + 96);
    v21 = *(v2 + 112);
    v22 = *(v2 + 128);
    v23 = *(v2 + 144);
    v16 = *(v2 + 32);
    v17 = *(v2 + 48);
    v18 = *(v2 + 64);
    v19 = *(v2 + 80);
    v24 = *(v2 + 160);
    LOBYTE(v25) = *(v2 + 168);
    [a1 _setCustomWidth_];
    v4 = v12;
    if (!v6)
    {
      static Color.secondary.getter();

      v4 = v12;
    }

    goto LABEL_5;
  }

  if (v6)
  {
LABEL_5:
    v15 = v4;
    LOBYTE(v16) = v5;
    swift_retain_n();
    RepresentableContextValues.environment.getter();
    v14 = v26;
    dispatch thunk of AnyColorBox.resolve(in:)();

    Color.Resolved.kitColor.getter();
    objc_opt_self();
    v6 = swift_dynamicCastObjCClassUnconditional();
  }

  v7 = [a1 color];
  if (v7)
  {
    v8 = v7;
    if (v6)
    {
      type metadata accessor for UIColor();
      v9 = v6;
      v10 = static NSObject.== infix(_:_:)();

      if (v10)
      {
        goto LABEL_14;
      }
    }

    else
    {
    }

LABEL_13:
    [a1 setColor_];
    v9 = v6;
LABEL_14:

    goto LABEL_15;
  }

  if (v6)
  {
    goto LABEL_13;
  }

LABEL_15:

  return result;
}

void type metadata accessor for ScaledMetric<CGFloat>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void _s7SwiftUI12ScaledMetricVy12CoreGraphics7CGFloatVGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void _s7SwiftUI12ScaledMetricVy12CoreGraphics7CGFloatVGMaTm_1(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void _s7SwiftUI12ScaledMetricVy12CoreGraphics7CGFloatVGMaTm_2(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t lazy protocol witness table accessor for type Child and conformance Child()
{
  result = lazy protocol witness table cache variable for type Child and conformance Child;
  if (!lazy protocol witness table cache variable for type Child and conformance Child)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Child, &unk_1EFFA3BD0, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type Child and conformance Child);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type FlipForRTLTransform and conformance FlipForRTLTransform()
{
  result = lazy protocol witness table cache variable for type FlipForRTLTransform and conformance FlipForRTLTransform;
  if (!lazy protocol witness table cache variable for type FlipForRTLTransform and conformance FlipForRTLTransform)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for FlipForRTLTransform, &unk_1EFFAEED8, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type FlipForRTLTransform and conformance FlipForRTLTransform);
  }

  return result;
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance IgnoreViewRespondersModifier(unsigned int *a1, uint64_t a2, void (*a3)(uint64_t, __int128 *))
{
  v3 = *a1;
  v4 = *(a2 + 48);
  v7[2] = *(a2 + 32);
  v7[3] = v4;
  v7[4] = *(a2 + 64);
  v8 = *(a2 + 80);
  v5 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v5;
  return specialized static ViewModifier<>._makeView(modifier:inputs:body:)(v3, v7, a3);
}

void *initializeWithCopy for OptionalSourceWriter(void *a1, const void *a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(a2, 1, v5))
  {
    if (*(v6 + 84))
    {
      v7 = *(v6 + 64);
    }

    else
    {
      v7 = *(v6 + 64) + 1;
    }

    return memcpy(a1, a2, v7);
  }

  else
  {
    (*(v6 + 16))(a1, a2, v5);
    (*(v6 + 56))(a1, 0, 1, v5);
    return a1;
  }
}

uint64_t outlined init with take of ClosedRange<Date>(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t _sSNy10Foundation4DateVGWObTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t _sSNy10Foundation4DateVGWObTm_1(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with copy of ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>(0, &lazy cache variable for type metadata for ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, type metadata accessor for ProgressView);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void type metadata accessor for ProgressViewStyleModifier<DefaultProgressViewStyle>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t lazy protocol witness table accessor for type EnvironmentValues.SearchCustomAccessory? and conformance <A> A?(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AnyAccessibilityValue?(255, a2, a3);
    v8 = a4;
    result = swift_getWitnessTable(MEMORY[0x1E6982090], v7, &v8);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined init with take of ProgressViewStyleConfiguration(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t _s7SwiftUI30ProgressViewStyleConfigurationVWObTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t initializeWithCopy for CircularUIKitProgressView(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  outlined copy of Environment<Selector?>.Content(*a2, v5);
  *a1 = v4;
  *(a1 + 8) = v5;
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  outlined copy of Environment<Selector?>.Content(v6, v7);
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  v8 = *(a2 + 32);
  v9 = *(a2 + 40);
  outlined copy of Environment<Selector?>.Content(v8, v9);
  *(a1 + 32) = v8;
  *(a1 + 40) = v9;
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  v10 = *(a2 + 64);
  v11 = *(a2 + 72);
  outlined copy of Environment<Selector?>.Content(v10, v11);
  *(a1 + 64) = v10;
  *(a1 + 72) = v11;
  v12 = *(a2 + 80);
  v13 = *(a2 + 88);
  outlined copy of Environment<Selector?>.Content(v12, v13);
  *(a1 + 80) = v12;
  *(a1 + 88) = v13;
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = *(a2 + 104);
  v14 = *(a2 + 112);
  v15 = *(a2 + 120);
  outlined copy of Environment<Selector?>.Content(v14, v15);
  *(a1 + 112) = v14;
  *(a1 + 120) = v15;
  v16 = *(a2 + 128);
  v17 = *(a2 + 136);
  outlined copy of Environment<Selector?>.Content(v16, v17);
  *(a1 + 128) = v16;
  *(a1 + 136) = v17;
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 168) = *(a2 + 168);

  return a1;
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance CircularUIKitProgressView(unsigned int *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 48);
  v6[2] = *(a2 + 32);
  v6[3] = v3;
  v6[4] = *(a2 + 64);
  v7 = *(a2 + 80);
  v4 = *(a2 + 16);
  v6[0] = *a2;
  v6[1] = v4;
  return _s7SwiftUI19UIViewRepresentablePAAE9_makeView4view6inputsAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsVtFZAA021CircularUIKitProgressF0V_Tt2B5(v2, v6);
}

uint64_t _s7SwiftUI19UIViewRepresentablePAAE9_makeView4view6inputsAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsVtFZAA021CircularUIKitProgressF0V_Tt2B5(uint64_t a1, uint64_t a2)
{
  static Semantics.v4.getter();
  if ((isLinkedOnOrAfter(_:)() & 1) != 0 && (AGTypeID.isValueType.getter() & 1) == 0)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    type metadata accessor for PlatformViewRepresentableAdaptor<UIKitPasteControl>(0, &lazy cache variable for type metadata for PlatformViewRepresentableAdaptor<CircularUIKitProgressView>, &type metadata for CircularUIKitProgressView, &protocol witness table for CircularUIKitProgressView);
    Attribute.unsafeBitCast<A>(to:)();
    return static View.makeDebuggableView(view:inputs:)();
  }

  return result;
}

void type metadata accessor for PlatformViewRepresentableAdaptor<UIKitPasteControl>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (!*a2)
  {
    v5 = type metadata accessor for PlatformViewRepresentableAdaptor(0, a3, a4, a4);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void type metadata accessor for MutableBox<AccessibilityAttachment>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void _s7SwiftUI10MutableBoxCyAA23AccessibilityAttachmentVGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void _s7SwiftUI10MutableBoxCyAA23AccessibilityAttachmentVGMaTm_1(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void _s7SwiftUI10MutableBoxCyAA23AccessibilityAttachmentVGMaTm_2(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void _s7SwiftUI10MutableBoxCyAA23AccessibilityAttachmentVGMaTm_3(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void _s7SwiftUI10MutableBoxCyAA23AccessibilityAttachmentVGMaTm_4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void _s7SwiftUI10MutableBoxCyAA23AccessibilityAttachmentVGMaTm_5(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void _s7SwiftUI10MutableBoxCyAA23AccessibilityAttachmentVGMaTm_6(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void type metadata accessor for EnvironmentPropertyKey<LabelsVisibilityKey>()
{
  if (!lazy cache variable for type metadata for EnvironmentPropertyKey<LabelsVisibilityKey>)
  {
    v0 = type metadata accessor for EnvironmentPropertyKey();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for EnvironmentPropertyKey<LabelsVisibilityKey>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<LabelsVisibilityKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<LabelsVisibilityKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<LabelsVisibilityKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<LabelsVisibilityKey>();
    result = swift_getWitnessTable(MEMORY[0x1E697FE40], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<LabelsVisibilityKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CGFloat and conformance CGFloat()
{
  result = lazy protocol witness table cache variable for type CGFloat and conformance CGFloat;
  if (!lazy protocol witness table cache variable for type CGFloat and conformance CGFloat)
  {
    result = swift_getWitnessTable(MEMORY[0x1E69E7DF0], MEMORY[0x1E69E7DE0], v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type CGFloat and conformance CGFloat);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CGFloat and conformance CGFloat;
  if (!lazy protocol witness table cache variable for type CGFloat and conformance CGFloat)
  {
    result = swift_getWitnessTable(MEMORY[0x1E69E7E10], MEMORY[0x1E69E7DE0], v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type CGFloat and conformance CGFloat);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CGFloat and conformance CGFloat;
  if (!lazy protocol witness table cache variable for type CGFloat and conformance CGFloat)
  {
    result = swift_getWitnessTable(MEMORY[0x1E69E7E18], MEMORY[0x1E69E7DE0], v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type CGFloat and conformance CGFloat);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CGFloat and conformance CGFloat;
  if (!lazy protocol witness table cache variable for type CGFloat and conformance CGFloat)
  {
    result = swift_getWitnessTable(MEMORY[0x1E69E7DF8], MEMORY[0x1E69E7DE0], v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type CGFloat and conformance CGFloat);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CGFloat and conformance CGFloat;
  if (!lazy protocol witness table cache variable for type CGFloat and conformance CGFloat)
  {
    result = swift_getWitnessTable(MEMORY[0x1E69E7E08], MEMORY[0x1E69E7DE0], v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type CGFloat and conformance CGFloat);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CGFloat and conformance CGFloat;
  if (!lazy protocol witness table cache variable for type CGFloat and conformance CGFloat)
  {
    result = swift_getWitnessTable(MEMORY[0x1E697D960], MEMORY[0x1E69E7DE0], v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type CGFloat and conformance CGFloat);
  }

  return result;
}

uint64_t specialized Environment.wrappedValue.getter(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
    v2 = result;

    v3 = static os_log_type_t.fault.getter();
    v4 = static Log.runtimeIssuesLog.getter();
    if (os_log_type_enabled(v4, v3))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v7 = v6;
      *v5 = 136315138;
      *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x696C696269736956, 0xEA00000000007974, &v7);
      _os_log_impl(&dword_18BD4A000, v4, v3, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v6);
      MEMORY[0x18D0110E0](v6, -1, -1);
      MEMORY[0x18D0110E0](v5, -1, -1);
    }

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined consume of Environment<Selector?>.Content(v2, 0);

    return v8;
  }

  return result;
}

{
  if ((a2 & 1) == 0)
  {
    v2 = result;

    v3 = static os_log_type_t.fault.getter();
    v4 = static Log.runtimeIssuesLog.getter();
    if (os_log_type_enabled(v4, v3))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v7 = v6;
      *v5 = 136315138;
      *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000011, 0x800000018CD3F8A0, &v7);
      _os_log_impl(&dword_18BD4A000, v4, v3, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v6);
      MEMORY[0x18D0110E0](v6, -1, -1);
      MEMORY[0x18D0110E0](v5, -1, -1);
    }

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined consume of Environment<Selector?>.Content(v2, 0);

    return v8;
  }

  return result;
}

{
  if ((a2 & 1) == 0)
  {
    v2 = result;

    v3 = static os_log_type_t.fault.getter();
    v4 = static Log.runtimeIssuesLog.getter();
    if (os_log_type_enabled(v4, v3))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v7 = v6;
      *v5 = 136315138;
      *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001ELL, 0x800000018CD3F860, &v7);
      _os_log_impl(&dword_18BD4A000, v4, v3, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v6);
      MEMORY[0x18D0110E0](v6, -1, -1);
      MEMORY[0x18D0110E0](v5, -1, -1);
    }

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined consume of Environment<Selector?>.Content(v2, 0);

    return v8;
  }

  return result;
}

{
  if ((a2 & 1) == 0)
  {
    v2 = result;

    v3 = static os_log_type_t.fault.getter();
    v4 = static Log.runtimeIssuesLog.getter();
    if (os_log_type_enabled(v4, v3))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v7 = v6;
      *v5 = 136315138;
      *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000014, 0x800000018CD3F1A0, &v7);
      _os_log_impl(&dword_18BD4A000, v4, v3, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v6);
      MEMORY[0x18D0110E0](v6, -1, -1);
      MEMORY[0x18D0110E0](v5, -1, -1);
    }

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined consume of Environment<Selector?>.Content(v2, 0);

    return v8;
  }

  return result;
}

{
  if ((a2 & 1) == 0)
  {
    v2 = result;

    v3 = static os_log_type_t.fault.getter();
    v4 = static Log.runtimeIssuesLog.getter();
    if (os_log_type_enabled(v4, v3))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v7 = v6;
      *v5 = 136315138;
      *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000014, 0x800000018CD3F530, &v7);
      _os_log_impl(&dword_18BD4A000, v4, v3, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v6);
      MEMORY[0x18D0110E0](v6, -1, -1);
      MEMORY[0x18D0110E0](v5, -1, -1);
    }

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined consume of Environment<Selector?>.Content(v2, 0);

    return v8;
  }

  return result;
}

{
  if ((a2 & 1) == 0)
  {
    v2 = result;

    v3 = static os_log_type_t.fault.getter();
    v4 = static Log.runtimeIssuesLog.getter();
    if (os_log_type_enabled(v4, v3))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v7[0] = v6;
      *v5 = 136315138;
      *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000012, 0x800000018CD3F5C0, v7);
      _os_log_impl(&dword_18BD4A000, v4, v3, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v6);
      MEMORY[0x18D0110E0](v6, -1, -1);
      MEMORY[0x18D0110E0](v5, -1, -1);
    }

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined consume of Environment<Selector?>.Content(v2, 0);

    return v7[2];
  }

  return result;
}

double specialized Environment.wrappedValue.getter@<D0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(uint64_t, void)@<X2>, uint64_t a4@<X3>, void (*a5)(uint64_t, void)@<X5>, void *a6@<X8>, unint64_t a7@<X4>)
{
  if (a2)
  {
    *a6 = a1;
  }

  else
  {
    v18[12] = v7;
    v18[13] = v8;
    a3(a1, 0);
    v13 = static os_log_type_t.fault.getter();
    v14 = static Log.runtimeIssuesLog.getter();
    if (os_log_type_enabled(v14, v13))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v18[0] = v16;
      *v15 = 136315138;
      *(v15 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a4, a7, v18);
      _os_log_impl(&dword_18BD4A000, v14, v13, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v16);
      MEMORY[0x18D0110E0](v16, -1, -1);
      MEMORY[0x18D0110E0](v15, -1, -1);
    }

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    a5(a1, 0);
  }

  return result;
}

{
  if (a2)
  {
    *a6 = a1 & 1;
  }

  else
  {
    v18[12] = v7;
    v18[13] = v8;
    a3(a1, 0);
    v13 = static os_log_type_t.fault.getter();
    v14 = static Log.runtimeIssuesLog.getter();
    if (os_log_type_enabled(v14, v13))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v18[0] = v16;
      *v15 = 136315138;
      *(v15 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a4, a7, v18);
      _os_log_impl(&dword_18BD4A000, v14, v13, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v16);
      MEMORY[0x18D0110E0](v16, -1, -1);
      MEMORY[0x18D0110E0](v15, -1, -1);
    }

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    a5(a1, 0);
  }

  return result;
}

uint64_t CustomProgressView.Child.value.getter@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v35 = a2;
  v11 = a1;
  v34 = a7;
  v31 = HIDWORD(a1);
  v12 = HIDWORD(a2);
  type metadata accessor for ModifiedContent<ResolvedProgressView, OptionalSourceWriter<ProgressViewStyleConfiguration.Actions, AnyView>>(0);
  v14 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = lazy protocol witness table accessor for type ProgressViewStyleConfiguration.CurrentValueLabel and conformance ProgressViewStyleConfiguration.CurrentValueLabel();
  v55[0] = &type metadata for ProgressViewStyleConfiguration.CurrentValueLabel;
  v55[1] = a4;
  v55[2] = v30;
  v55[3] = a6;
  type metadata accessor for OptionalSourceWriter(255, v55);
  v32 = type metadata accessor for ModifiedContent();
  v33 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v29 = &v26 - v17;
  type metadata accessor for ProgressViewValue(0);
  v28 = v11;
  Value = AGGraphGetValue();
  outlined init with copy of ProgressViewValue(Value, v16, type metadata accessor for ProgressViewValue);
  v19 = type metadata accessor for ResolvedProgressView(0);
  v16[v19[5]] = 0;
  v16[v19[6]] = 0;
  v16[v19[7]] = 0;
  type metadata accessor for AnyAccessibilityValue?(0, &lazy cache variable for type metadata for AnyView?, MEMORY[0x1E6981910]);
  v27 = v12;
  *&v16[*(v14 + 36)] = *AGGraphGetValue();
  v46 = a3;
  v47 = a4;
  v48 = a5;
  v49 = a6;
  v50 = v11;
  LODWORD(v11) = v31;
  v51 = v31;
  v52 = v35;
  v53 = v12;
  v20 = lazy protocol witness table accessor for type ModifiedContent<ResolvedProgressView, OptionalSourceWriter<ProgressViewStyleConfiguration.Actions, AnyView>> and conformance <> ModifiedContent<A, B>();

  v21 = v29;
  View.optionalViewAlias<A, B>(_:_:)(&type metadata for ProgressViewStyleConfiguration.CurrentValueLabel, partial apply for closure #2 in CustomProgressView.Child.value.getter, v45, v14, &type metadata for ProgressViewStyleConfiguration.CurrentValueLabel, a4, v20, v30, a6);
  _sSNy10Foundation4DateVGWOhTm_1(v16, type metadata accessor for ModifiedContent<ResolvedProgressView, OptionalSourceWriter<ProgressViewStyleConfiguration.Actions, AnyView>>);
  v37 = a3;
  v38 = a4;
  v39 = a5;
  v40 = a6;
  v41 = v28;
  v42 = v11;
  v43 = v35;
  v44 = v27;
  v54[0] = v20;
  v54[1] = &protocol witness table for OptionalSourceWriter<A, B>;
  v22 = v32;
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E697E858], v32, v54);
  v24 = lazy protocol witness table accessor for type ProgressViewStyleConfiguration.Label and conformance ProgressViewStyleConfiguration.Label();
  View.optionalViewAlias<A, B>(_:_:)(&type metadata for ProgressViewStyleConfiguration.Label, partial apply for closure #3 in CustomProgressView.Child.value.getter, v36, v22, &type metadata for ProgressViewStyleConfiguration.Label, a3, WitnessTable, v24, a5);
  return (*(v33 + 8))(v21, v22);
}

uint64_t View.accessibility(removeTraits:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  v5[2] = 0;
  v5[3] = v3;
  return View.accessibility(isEnabled:body:)(1, partial apply for closure #1 in View.accessibilityTraits(_:), v5, a2, a3);
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance _FlipForRTLEffect(int *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  lazy protocol witness table accessor for type Child and conformance Child();
  Attribute.init<A>(body:value:flags:update:)();
  return static ViewModifier.makeDebuggableView(modifier:inputs:body:)();
}

unint64_t lazy protocol witness table accessor for type FlipForRTLDisplayList and conformance FlipForRTLDisplayList()
{
  result = lazy protocol witness table cache variable for type FlipForRTLDisplayList and conformance FlipForRTLDisplayList;
  if (!lazy protocol witness table cache variable for type FlipForRTLDisplayList and conformance FlipForRTLDisplayList)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for FlipForRTLDisplayList, &unk_1EFF8A180, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type FlipForRTLDisplayList and conformance FlipForRTLDisplayList);
  }

  return result;
}

uint64_t sub_18BE1AACC(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  outlined copy of Environment<Bool>.Content();
  *a1 = v3;
  *(a1 + 8) = v4;
  return a1;
}

uint64_t assignWithCopy for HostingContentViewRootModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);

  *(a1 + 48) = *(a2 + 48);

  v6 = (a1 + 72);
  v7 = *(a1 + 72);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  v9 = (a2 + 72);
  v8 = *(a2 + 72);
  if (v7 == 1)
  {
    if (v8 == 1)
    {
      v10 = *v9;
      *(a1 + 80) = *(a2 + 80);
      *v6 = v10;
    }

    else
    {
      *(a1 + 72) = v8;
      *(a1 + 80) = *(a2 + 80);
    }
  }

  else if (v8 == 1)
  {
    outlined destroy of ListItemTint(a1 + 72);
    v11 = *(a2 + 80);
    *v6 = *v9;
    *(a1 + 80) = v11;
  }

  else
  {
    *(a1 + 72) = v8;

    *(a1 + 80) = *(a2 + 80);
  }

  v12 = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 88) = v12;
  v13 = *(a2 + 104);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 104) = v13;
  v14 = *(a2 + 120);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 120) = v14;
  v15 = *(a2 + 136);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 136) = v15;
  v16 = *(a2 + 152);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 152) = v16;
  v17 = *(a2 + 168);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 168) = v17;
  *(a1 + 184) = *(a2 + 184);
  v18 = *(a3 + 32);
  v19 = type metadata accessor for UICellConfigurationState();
  v20 = *(v19 - 8);
  v21 = *(v20 + 48);
  v22 = v21(a1 + v18, 1, v19);
  v23 = v21(a2 + v18, 1, v19);
  if (!v22)
  {
    if (!v23)
    {
      (*(v20 + 24))(a1 + v18, a2 + v18, v19);
      return a1;
    }

    (*(v20 + 8))(a1 + v18, v19);
    goto LABEL_13;
  }

  if (v23)
  {
LABEL_13:
    type metadata accessor for UICellConfigurationState?(0);
    memcpy((a1 + v18), (a2 + v18), *(*(v24 - 8) + 64));
    return a1;
  }

  (*(v20 + 16))(a1 + v18, a2 + v18, v19);
  (*(v20 + 56))(a1 + v18, 0, 1, v19);
  return a1;
}

uint64_t assignWithCopy for ContentConfigurationBasedRootEnvironment(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);

  *(a1 + 48) = *(a2 + 48);

  v6 = (a1 + 72);
  v7 = *(a1 + 72);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  v9 = (a2 + 72);
  v8 = *(a2 + 72);
  if (v7 == 1)
  {
    if (v8 == 1)
    {
      v10 = *v9;
      *(a1 + 80) = *(a2 + 80);
      *v6 = v10;
    }

    else
    {
      *(a1 + 72) = v8;
      *(a1 + 80) = *(a2 + 80);
    }
  }

  else if (v8 == 1)
  {
    outlined destroy of ListItemTint(a1 + 72);
    v11 = *(a2 + 80);
    *v6 = *v9;
    *(a1 + 80) = v11;
  }

  else
  {
    *(a1 + 72) = v8;

    *(a1 + 80) = *(a2 + 80);
  }

  *(a1 + 81) = *(a2 + 81);
  v12 = *(a3 + 24);
  v13 = type metadata accessor for UICellConfigurationState();
  v14 = *(v13 - 8);
  v15 = *(v14 + 48);
  v16 = v15(a1 + v12, 1, v13);
  v17 = v15(a2 + v12, 1, v13);
  if (!v16)
  {
    if (!v17)
    {
      (*(v14 + 24))(a1 + v12, a2 + v12, v13);
      return a1;
    }

    (*(v14 + 8))(a1 + v12, v13);
    goto LABEL_13;
  }

  if (v17)
  {
LABEL_13:
    type metadata accessor for UICellConfigurationState?(0);
    memcpy((a1 + v12), (a2 + v12), *(*(v18 - 8) + 64));
    return a1;
  }

  (*(v14 + 16))(a1 + v12, a2 + v12, v13);
  (*(v14 + 56))(a1 + v12, 0, 1, v13);
  return a1;
}

double static AccessibilityActionKind.default.getter@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

void type metadata accessor for ListItemTint?()
{
  if (!lazy cache variable for type metadata for ListItemTint?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ListItemTint?);
    }
  }
}

uint64_t storeEnumTagSinglePayload for BorderedButtonStyle_CarCatalyst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}